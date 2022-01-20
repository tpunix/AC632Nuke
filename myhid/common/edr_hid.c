
#include "system/app_core.h"
#include "system/includes.h"
#include "server/server_core.h"
#include "app_config.h"

#include "btcontroller_config.h"
#include "btstack/bluetooth.h"
#include "btstack/avctp_user.h"
#include "btstack/btstack_task.h"

#include "bt_common.h"


/*************************************************************************************************/

                                  /* Sent By */
#define HID_HANDSHAKE    0x00     /* Device */
#define HID_CONTROL      0x10     /* Device&Host */
#define HID_GET_REPORT   0x40     /* Host */
#define HID_SET_REPORT   0x50     /* Host */
#define HID_GET_PROTOCOL 0x60     /* Host */
#define HID_SET_PROTOCOL 0x70     /* Host */
#define HID_GET_IDLE     0x80     /* Host */
#define HID_SET_IDLE     0x90     /* Host */
#define HID_DATA         0xA0     /* Device&Host*/
#define HID_DATC         0xB0     /* Device&Host*/


/* HANDSHAKE */
#define HS_OK            0x00
#define HS_NO_TREADY     0x01
#define HS_INV_ID        0x02
#define HS_INV_REQ       0x03
#define HS_INV_PARAM     0x00
#define HS_UNKNOW        0x0e
#define HS_FATAL         0x0f



void hid_diy_regiest_callback(void *cb, void *interrupt_cb);
void hid_sdp_init(const u8 *hid_descriptor, u16 size);

static hid_cfg_t *hid_cfg;

static int hid_data_ch = 0;
static int hid_ctrl_ch = 0;


/*************************************************************************************************/


static u8 hid_cbuf[72];
static u8 hid_dbuf[72];
u8 *hid_ibuf = hid_dbuf+1;

static int hid_idle;
static int hid_protocol;


static int edr_hid_send_msg(int channel, u8 *buf, int len)
{
	int retv;
	hid_s_param_t s_par;

	if (channel==0) {
		return -1;
	}
	//printf("user_send_cmd_prepare: ch=%02x msg=%02x len=%d\n", channel, buf[0], len);

	s_par.chl_id = channel;
	s_par.data_len = len;
	s_par.data_ptr = buf;
	retv = user_send_cmd_prepare(USER_CTRL_HID_SEND_DATA, sizeof(hid_s_param_t), (u8 *)&s_par);
	if (retv) {
		printf("########  hid send fail!!! %d\n", retv);
	}

	return retv;
}


static void edr_hid_handshake(int code)
{
	hid_cbuf[0] = code | HID_HANDSHAKE;
	edr_hid_send_msg(hid_ctrl_ch, hid_cbuf, 1);
}


void __attribute__((weak)) user_hidd_set_idle(int param)
{
	hid_idle = param;
}


int __attribute__((weak)) user_hidd_get_idle(void)
{
	return hid_idle;
}


void __attribute__((weak)) user_hidd_set_protocol(int param)
{
	hid_protocol = param;
}


int __attribute__((weak)) user_hidd_get_protocol(void)
{
	return hid_protocol;
}


void __attribute__((weak)) user_hidd_set_report(int type, u8 *buf, int len)
{
}


int __attribute__((weak)) user_hidd_get_report(int type, u8 *buf, int len)
{
	return 0;
}


void __attribute__((weak)) user_hidd_set_output(u8 *buf, int len)
{
	printf("user_hidd_set_output! len=%d\n", len);
}


void user_hidd_send_input(u8 *buf, int len)
{
	hid_dbuf[0] = HID_DATA|REPORT_INPUT;
	if(buf!=hid_ibuf){
		memcpy(hid_dbuf+1, buf, len);
	}
	edr_hid_send_msg(hid_data_ch, hid_dbuf, len+1);
}


/*************************************************************************************************/


static void edr_hidd_msg_handler(u32 msg, u8 *packet, u32 packet_size)
{
	switch (msg) {
	case 1:
		hid_ctrl_ch = *(u16*)(packet+0);
		hid_data_ch = *(u16*)(packet+2);
		printf("########  hid connect! ctrl_ch:%02x data_ch:%02x\n", hid_ctrl_ch, hid_data_ch);
		break;
	case 2:
		printf("########  hid disconnect!\n");
		hid_ctrl_ch = 0;
		hid_data_ch = 0;
		break;
	case 3:
		int ch = *(u16*)(packet+0);
		printf("######## hid send ok! ch=%02x\n", ch);
		break;
	default:
		break;
	}
}


static void edr_hidd_output_handler(u8 *packet, u16 size, u16 channel)
{
	int msg, type;

	msg  = packet[0]&0xf0;
	type = packet[0]&0x03;

	if(channel==hid_data_ch){
		user_hidd_set_output(packet+1, size-1);
	}else if(channel==hid_ctrl_ch){
		if(msg==HID_SET_IDLE){
			user_hidd_set_idle(packet[1]);
			edr_hid_handshake(HS_OK);
			printf("**** HID_SET_IDLE %d\n", packet[1]);
		}else if(msg==HID_SET_PROTOCOL){
			user_hidd_set_protocol(packet[1]);
			edr_hid_handshake(HS_OK);
			printf("**** HID_SET_PROTOCOL %d\n", packet[1]);
		}else if(msg==HID_SET_REPORT){
			user_hidd_set_report(type, packet+1, size-1);
			edr_hid_handshake(HS_OK);
			printf("**** HID_SET_REPORT %d %02x\n", type, packet[1]);
		}else if(msg==HID_GET_IDLE){
			hid_cbuf[0] = HID_DATA;
			hid_cbuf[1] = user_hidd_get_idle();
			edr_hid_send_msg(hid_ctrl_ch, hid_cbuf, 2);
			printf("**** HID_GET_IDLE %d\n", hid_cbuf[1]);
		}else if(msg==HID_GET_PROTOCOL){
			hid_cbuf[0] = HID_DATA;
			hid_cbuf[1] = user_hidd_get_protocol();
			edr_hid_send_msg(hid_ctrl_ch, hid_cbuf, 2);
			printf("**** HID_GET_PROCOTOL %d\n", hid_cbuf[1]);
		}else if(msg==HID_GET_REPORT){

			u8 *p = packet+1;
			int report_id = 0;
			int buffer_size = sizeof(hid_cbuf)-1;

			if(hid_cfg->has_report_id){
				report_id = *p++;
			}
			if(packet[0]&0x08){
				buffer_size = *(u16*)p;
			}
			printf("**** HID_GET_REPORT %d %02x\n", type, report_id);

			hid_cbuf[1] = report_id;
			int len = user_hidd_get_report(type, hid_cbuf+1, buffer_size);
			if(len){
				hid_cbuf[0] = HID_DATA | type;
				edr_hid_send_msg(hid_ctrl_ch, hid_cbuf, len+1);
			}else{
				edr_hid_handshake(HS_INV_ID);
			}
		}else{
			edr_hid_handshake(HS_INV_REQ);
		}
	}else{
		printf("######## edr_hid_output_handler: unknow channel %02x\n", channel);
	}
}


/*************************************************************************************************/

u8 l2cap_debug_enable = 0xf0;
u8 profile_debug_enable = 0xff;

u8 hid_profile_support = 1;
u8 hid_conn_depend_on_dev_company = 2; // 注意: 置2之后，默认不断开HID连接



#define  PNP_VID_SOURCE   0x02
#define  PNP_VID          0x054c
#define  PNP_PID          0x022C
#define  PNP_PID_VERSION  0x011b //1.1.11

static u8 sdp_pnp_service_data_hid[0x100];
SDP_RECORD_HANDLER_REGISTER(pnp_sdp_record_item) = {
    .service_record = (u8 *)sdp_pnp_service_data_hid,
    .service_record_handle = 0x10001,
};


static u8 hid_service_data[0x200];
SDP_RECORD_HANDLER_REGISTER(hid_sdp_record_item) = {
    .service_record = (u8 *)hid_service_data,
    .service_record_handle = 0x00010006,
};


static int make_hid_pnp_service(u8 *buf)
{
	SDP_DESC sdp;

	sdp_desc_init(&sdp, buf);

	sdp_seq16(&sdp);

	sdp_attr(&sdp, 0x0000); sdp_uint32(&sdp, 0x00010001);

	sdp_attr(&sdp, 0x0001);	sdp_seq8(&sdp);
		sdp_uuid16(&sdp, 0x1200);
	sdp_end(&sdp);

	sdp_attr(&sdp, 0x0004);	sdp_seq8(&sdp);
		sdp_seq8(&sdp);
			sdp_uuid16(&sdp, 0x0100);
			sdp_uint16(&sdp, 0x0001);
		sdp_end(&sdp);
		sdp_seq8(&sdp);
			sdp_uuid16(&sdp, 0x0001);
		sdp_end(&sdp);
	sdp_end(&sdp);
	sdp_attr(&sdp, 0x0006);	sdp_seq8(&sdp);
		sdp_uint16(&sdp, 0x656e);
		sdp_uint16(&sdp, 0x006a);
		sdp_uint16(&sdp, 0x0100);
	sdp_end(&sdp);
	sdp_attr(&sdp, 0x0009);	sdp_seq8(&sdp);
		sdp_seq8(&sdp);
			sdp_uuid16(&sdp, 0x1200);
			sdp_uint16(&sdp, 0x0100);
		sdp_end(&sdp);
	sdp_end(&sdp);

	sdp_attr(&sdp, 0x0100);	sdp_string(&sdp, "TPUHID Pnp Server");
	sdp_attr(&sdp, 0x0101);	sdp_string(&sdp, "Keyboard");

	sdp_attr(&sdp, 0x0200); sdp_uint16(&sdp, 0x0103);
	sdp_attr(&sdp, 0x0201); sdp_uint16(&sdp, PNP_VID);
	sdp_attr(&sdp, 0x0202); sdp_uint16(&sdp, PNP_PID);
	sdp_attr(&sdp, 0x0203); sdp_uint16(&sdp, PNP_PID_VERSION);
	sdp_attr(&sdp, 0x0204); sdp_bool(&sdp, 1);
	sdp_attr(&sdp, 0x0205); sdp_uint16(&sdp, PNP_VID_SOURCE);

	sdp_end(&sdp);

	return sdp.p;
}


static int make_hid_service(u8 *buf, int hid_desc_len, u8 *hid_desc)
{
	SDP_DESC sdp;

	sdp_desc_init(&sdp, buf);

	sdp_seq16(&sdp);

	sdp_attr(&sdp, 0x0000); sdp_uint32(&sdp, 0x00010006);

	sdp_attr(&sdp, 0x0001);	sdp_seq8(&sdp);
		sdp_uuid16(&sdp, 0x1124);
	sdp_end(&sdp);

	sdp_attr(&sdp, 0x0004);	sdp_seq8(&sdp);
		sdp_seq8(&sdp);
			sdp_uuid16(&sdp, 0x0100);
			sdp_uint16(&sdp, 0x0011);
		sdp_end(&sdp);
		sdp_seq8(&sdp);
			sdp_uuid16(&sdp, 0x0011);
		sdp_end(&sdp);
	sdp_end(&sdp);
	sdp_attr(&sdp, 0x0009);	sdp_seq8(&sdp);
		sdp_seq8(&sdp);
			sdp_uuid16(&sdp, 0x1124);
			sdp_uint16(&sdp, 0x0100);
		sdp_end(&sdp);
	sdp_end(&sdp);
	sdp_attr(&sdp, 0x000d);	sdp_seq8(&sdp);
		sdp_seq8(&sdp);
			sdp_seq8(&sdp);
				sdp_uuid16(&sdp, 0x0100);
				sdp_uint16(&sdp, 0x0013);
			sdp_end(&sdp);
			sdp_seq8(&sdp);
				sdp_uuid16(&sdp, 0x0011);
			sdp_end(&sdp);
		sdp_end(&sdp);
	sdp_end(&sdp);

	sdp_attr(&sdp, 0x0100);	sdp_string(&sdp, "TPUHID");
	sdp_attr(&sdp, 0x0101);	sdp_string(&sdp, "Keyboard");
	sdp_attr(&sdp, 0x0102);	sdp_string(&sdp, "TPU");

	sdp_attr(&sdp, 0x0201); sdp_uint16(&sdp, 0x0111);
	sdp_attr(&sdp, 0x0202); sdp_uint8 (&sdp, 0x80);
	sdp_attr(&sdp, 0x0203); sdp_uint8 (&sdp, 0x21);
	sdp_attr(&sdp, 0x0204); sdp_bool(&sdp, 1);
	sdp_attr(&sdp, 0x0205); sdp_bool(&sdp, 1);
	sdp_attr(&sdp, 0x0206); sdp_seq16(&sdp);
		sdp_seq16(&sdp);
			sdp_uint8 (&sdp, 0x22);
			sdp_binary(&sdp, hid_desc_len, hid_desc);
		sdp_end(&sdp);
	sdp_end(&sdp);

	sdp_attr(&sdp, 0x0207); sdp_seq8(&sdp);
		sdp_seq8(&sdp);
			sdp_uint16(&sdp, 0x0409);
			sdp_uint16(&sdp, 0x0100);
		sdp_end(&sdp);
	sdp_end(&sdp);
	sdp_attr(&sdp, 0x0208); sdp_bool(&sdp, 0);
	sdp_attr(&sdp, 0x0209); sdp_bool(&sdp, 1);
	sdp_attr(&sdp, 0x020a); sdp_bool(&sdp, 1);
	sdp_attr(&sdp, 0x020b); sdp_uint16(&sdp, 0x0100);
	sdp_attr(&sdp, 0x020c); sdp_uint16(&sdp, 0x1f40);
	sdp_attr(&sdp, 0x020d); sdp_bool(&sdp, 1);
	sdp_attr(&sdp, 0x020e); sdp_bool(&sdp, 0);

	sdp_end(&sdp);

	return sdp.p;
}


void hid_sdp_init(const u8 *hid_descriptor, u16 size)
{
    int real_size;

	make_hid_pnp_service(sdp_pnp_service_data_hid);
	real_size = make_hid_service(hid_service_data, size, hid_descriptor);
	printf("dy_hid_service: %d\n", real_size);
}


/*************************************************************************************************/

void edr_hidd_init(hid_cfg_t *cfg)
{
	printf("edr_hidd_start ...\n");

	hid_cfg = cfg;

	__change_hci_class_type(cfg->class_type);//default icon
	hid_diy_regiest_callback(edr_hidd_msg_handler, edr_hidd_output_handler);
	hid_sdp_init(cfg->report_map, cfg->report_size);
}


void edr_hidh_init(hid_cfg_t *cfg)
{
	printf("edr_hidh_start ...\n");

	hid_cfg = cfg;

	__change_hci_class_type(0);
	hid_diy_regiest_callback(edr_hidd_msg_handler, edr_hidd_output_handler);
}


