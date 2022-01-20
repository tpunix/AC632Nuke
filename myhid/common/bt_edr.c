
#include "system/app_core.h"
#include "system/includes.h"
#include "server/server_core.h"
#include "app_config.h"

#include "btcontroller_config.h"
#include "btstack/bluetooth.h"
#include "btstack/avctp_user.h"
#include "btstack/btstack_task.h"

#include "bt_common.h"




u8 connect_last_device_from_vm(void);

static u8 edr_remote_address[6];
static edr_init_cfg_t *gcfg;

/*************************************************************************************************/


void bt_wait_connect(u8 enable)
{
    if (enable) {
        user_send_cmd_prepare(USER_CTRL_WRITE_SCAN_ENABLE, 0, NULL);
        user_send_cmd_prepare(USER_CTRL_WRITE_CONN_ENABLE, 0, NULL);
    } else {
        user_send_cmd_prepare(USER_CTRL_WRITE_SCAN_DISABLE, 0, NULL);
        user_send_cmd_prepare(USER_CTRL_WRITE_CONN_DISABLE, 0, NULL);
    }
}


/*************************************************************************************************/


//define to Device ID SPEC
#define BT_SDP_DID_VendorID                 0x0201
#define BT_SDP_DID_ProductID                0x0202
#define BT_SDP_DID_Version                  0x0203
#define BT_SDP_DID_VendorIDSource           0x0205

//define to hid server
#define BT_SDP_HID_DescriptorList           0x0206

#define BT_PNP_INFO_ID         0x1200
#define BT_UUID_HID_DE         0x1124


void sdp_decode_response_info_output(u16 service_uuid, u16 attribute_id, const u8 *packet, int size)
{
	printf("sdp_output:service_uuid= %04x,attribute_id= %04x,size= %d", service_uuid, attribute_id, size);
	/* put_buf(packet,size); */

	switch (service_uuid) {
	case BT_PNP_INFO_ID: {
		switch (attribute_id) {
		case BT_SDP_DID_VendorID:
		case BT_SDP_DID_ProductID:
		case BT_SDP_DID_Version:
		case BT_SDP_DID_VendorIDSource:
			printf("PNP_INFO,data_type= %d:", packet[0]);
			put_buf(packet + 1, size - 1);
			break;
		}
	}
	break;
	case BT_UUID_HID_DE:
		if (BT_SDP_HID_DescriptorList == attribute_id) {
			printf("REPORT_MAP:");
			put_buf(packet, size);
		}
		break;
	}
}


static void __bt_search_device(void)
{
	user_send_cmd_prepare(USER_CTRL_WRITE_SCAN_DISABLE, 0, NULL);
	user_send_cmd_prepare(USER_CTRL_WRITE_CONN_DISABLE, 0, NULL);

	printf("bt_search_start >>>>>>>>>\n");
	u8 inquiry_length = 20; // 20*1.28s
	user_send_cmd_prepare(USER_CTRL_SEARCH_DEVICE, 1, &inquiry_length);
}



// 蓝牙设备搜索结果，可以做名字/地址过滤，也可以保存搜到的所有设备， 再选择一个进行连接，获取其他你想要的操作。
// 返回TRUE，表示搜到指定的想要的设备，搜索结束，直接连接当前设备
// 返回FALSE，则继续搜索，直到搜索完成或者超时
static u8 bt_emitter_search_result(char *name, u8 name_len, u8 *addr, u32 dev_class, char rssi)
{
	printf("BT: addr:[%02x-%02x-%02x-%02x-%02x-%02x] name:{%s} class:%08x rssi:%d\n",
			addr[0], addr[1], addr[2], addr[3], addr[4], addr[5], name, dev_class, rssi);

	if(dev_class==0x2540 || dev_class==0x2508){
		user_send_cmd_prepare(USER_CTRL_START_CONNEC_VIA_ADDR, 6, addr);
	}

	return FALSE;
}


static void bt_emitter_search_noname(u8 status, u8 *addr, u8 *name)
{
	printf("search_noname: %d addr:[%02x-%02x-%02x-%02x-%02x-%02x] name:{%s}\n",
			status, addr[0], addr[1], addr[2], addr[3], addr[4], addr[5], name);

}


void bt_emitter_role_set(void)
{
	while (hci_standard_connect_check() == 0x80) {
		//wait profile connect ok;
		printf("cur_ch:0x%x", get_emitter_curr_channel_state());
		if (get_emitter_curr_channel_state()) {
			break;
		}
		os_time_dly(10);
	}

    ////断开链接
    if ((get_curr_channel_state() != 0) || (get_emitter_curr_channel_state() != 0)) {
        user_send_cmd_prepare(USER_CTRL_POWER_OFF, 0, NULL);
    } else {
        if (hci_standard_connect_check()) {
            user_send_cmd_prepare(USER_CTRL_PAGE_CANCEL, 0, NULL);
            user_send_cmd_prepare(USER_CTRL_CONNECTION_CANCEL, 0, NULL);
        }
    }
    /* if there are some connected channel ,then disconnect*/
    while (hci_standard_connect_check() != 0) {
        //wait disconnect;
        os_time_dly(10);
    }

	bredr_bulk_change(0);
	////切换样机状态
	__set_emitter_enable_flag(1);

	////开启搜索设备
	__bt_search_device();
}

/*************************************************************************************************/


void bt_edr_start(const edr_init_cfg_t *cfg, int param)
{
	printf("bt_edr_start ...\n");

	gcfg = cfg;

    __set_user_ctrl_conn_num(2);
    __bt_set_update_battery_time(0);
    /*回连搜索时间长度设置,可使用该函数注册使用，ms单位,u16*/
    __set_page_timeout_value(cfg->page_timeout);
    /*回连时超时参数设置。ms单位。做主机有效*/
    __set_super_timeout_value(cfg->super_timeout);


	// profile init
	if(gcfg->host_mode){
		edr_hidh_init((hid_cfg_t*)cfg->profile_data);
	}else{
		edr_hidd_init((hid_cfg_t*)cfg->profile_data);
	}

    //io_capabilities ; /*0: Display only 1: Display YesNo 2: KeyboardOnly 3: NoInputNoOutput*/
    //authentication_requirements: 0:not protect  1 :protect
    __set_simple_pair_param(cfg->io_capabilities, cfg->oob_data, cfg->authentication_req);

	printf("btstack_init ...\n");
	btstack_init();
	printf("bt_edr_start done.\n");
}


void bt_edr_start_post(void)
{
	if(gcfg->host_mode){
		read_remote_name_handle_register(bt_emitter_search_noname);
		inquiry_result_handle_register(bt_emitter_search_result);
		lmp_set_sniff_establish_by_remote(1);
		bt_emitter_role_set();
	}else{
		printf("Try to connect last device ...\n");
		if(connect_last_device_from_vm()){
			printf("Connect to last device.\n");
			return;
		}
		bt_wait_connect(1);
	}
}


void bt_edr_exit(int param)
{
    bt_wait_connect(0);

    printf("===btstack_exit\n");
    btstack_exit();
}


/*************************************************************************************************/


// 5  BT_STATUS_START_CONNECTED
// 8  BT_STATUS_ENCRY_COMPLETE
// 29 BT_STATUS_RECONN_OR_CONN
//
//
//
int bt_comm_edr_status_event_handler(struct bt_event *bt)
{
    printf("--------%s: %d", __FUNCTION__, bt->event);

    switch (bt->event) {
    case BT_STATUS_INIT_OK:
        printf("STATUS_INIT_OK\n");
		bt_edr_start_post();
        break;

    case BT_STATUS_SECOND_CONNECTED:
    case BT_STATUS_FIRST_CONNECTED:
        printf("BT_STATUS_CONNECTED\n");
        put_buf(bt->args, 6);
        memcpy(edr_remote_address, bt->args, 6);
        printf("edr remote rssi= %d\n", bredr_get_rssi_for_address(edr_remote_address));
        break;

    case BT_STATUS_FIRST_DISCONNECT:
    case BT_STATUS_SECOND_DISCONNECT:
        printf("BT_STATUS_DISCONNECT\n");
        break;

    case BT_STATUS_BEGIN_AUTO_CON:
        printf("BT_STATUS_BEGIN_AUTO_CON\n");
        break;

    case BT_STATUS_SNIFF_STATE_UPDATE:
        printf("BT_STATUS_SNIFF_STATE_UPDATE %d\n", bt->value);    //0退出SNIFF
        break;

    case  BT_STATUS_TRIM_OVER:
        printf("BT STATUS TRIM OVER\n");
        break;

    default:
        printf("BT STATUS DEFAULT\n");
        break;
    }
    return 0;
}


/*************************************************************************************************/
/*!
 *  \brief      配置是否接受配对
 *
 *  \param      [in]
 *
 *  \return
 *
 *  \note
 */
/*************************************************************************************************/
static void bt_send_pair(u8 en)
{
    user_send_cmd_prepare(USER_CTRL_PAIR, 1, &en);
}

//已连接
static void bt_hci_event_connection(struct bt_event *bt)
{
    bt_wait_connect(0);
}

//已断开
static void bt_hci_event_disconnect(struct bt_event *bt)
{
    bt_wait_connect(1);
}

//link key  丢失
static void bt_hci_event_linkkey_missing(struct bt_event *bt)
{
    bt_wait_connect(1);
}

//回连超时
static void bt_hci_event_page_timeout(struct bt_event *bt)
{
    bt_wait_connect(1);
}

//连接超时
static void bt_hci_event_connection_timeout(struct bt_event *bt)
{
    bt_wait_connect(1);
}

//连接退出
static void bt_hci_event_connection_exist(struct bt_event *bt)
{
    bt_wait_connect(1);
}


static void bt_hci_event_inquiry(struct bt_event *bt)
{
	user_send_cmd_prepare(USER_CTRL_PAGE_CANCEL, 0, NULL);
	user_send_cmd_prepare(USER_CTRL_WRITE_SCAN_DISABLE, 0, NULL);
	user_send_cmd_prepare(USER_CTRL_WRITE_CONN_ENABLE, 0, NULL);
}


/*************************************************************************************************/
/*!
 *  \brief      处理协议栈hci事件
 *
 *  \param      [in]
 *
 *  \return
 *
 *  \note
 */
/*************************************************************************************************/
int bt_comm_edr_hci_event_handler(struct bt_event *bt)
{
    //对应原来的蓝牙连接上断开处理函数  ,bt->value=reason
    printf("--------%s reason %x %x", __FUNCTION__, bt->event, bt->value);

    switch (bt->event) {
    case HCI_EVENT_INQUIRY_COMPLETE:
        printf(" HCI_EVENT_INQUIRY_COMPLETE \n");
		bt_hci_event_inquiry(bt);
        break;
    case HCI_EVENT_USER_CONFIRMATION_REQUEST:
        printf(" HCI_EVENT_USER_CONFIRMATION_REQUEST \n");
        ///<可通过按键来确认是否配对 1：配对   0：取消
        bt_send_pair(1);
        break;
    case HCI_EVENT_USER_PASSKEY_REQUEST:
        printf(" HCI_EVENT_USER_PASSKEY_REQUEST \n");
        ///<可以开始输入6位passkey
        break;
    case HCI_EVENT_USER_PRESSKEY_NOTIFICATION:
        printf(" HCI_EVENT_USER_PRESSKEY_NOTIFICATION %x\n", bt->value);
        ///<可用于显示输入passkey位置 value 0:start  1:enrer  2:earse   3:clear  4:complete
        break;
    case HCI_EVENT_PIN_CODE_REQUEST :
        printf("HCI_EVENT_PIN_CODE_REQUEST  \n");
        bt_send_pair(1);
        break;

    case HCI_EVENT_VENDOR_NO_RECONN_ADDR :
        printf("HCI_EVENT_VENDOR_NO_RECONN_ADDR \n");
        bt_hci_event_disconnect(bt) ;
        break;

    case HCI_EVENT_DISCONNECTION_COMPLETE :
        printf("HCI_EVENT_DISCONNECTION_COMPLETE \n");
        bt_hci_event_disconnect(bt) ;
        break;

    case BTSTACK_EVENT_HCI_CONNECTIONS_DELETE:
        printf(" BTSTACK_EVENT_HCI_CONNECTIONS_DELETE \n");
		goto _event_case;
    case HCI_EVENT_CONNECTION_COMPLETE:
        printf(" HCI_EVENT_CONNECTION_COMPLETE \n");
_event_case:
        switch (bt->value) {
        case ERROR_CODE_SUCCESS :
            printf(" ERROR_CODE_SUCCESS  \n");
            bt_hci_event_connection(bt);
            break;

		case ERROR_CODE_PIN_OR_KEY_MISSING:
            printf(" ERROR_CODE_PIN_OR_KEY_MISSING \n");
            bt_hci_event_linkkey_missing(bt);
			break;

		case ERROR_CODE_SYNCHRONOUS_CONNECTION_LIMIT_TO_A_DEVICE_EXCEEDED :
        case ERROR_CODE_CONNECTION_REJECTED_DUE_TO_LIMITED_RESOURCES:
        case ERROR_CODE_CONNECTION_REJECTED_DUE_TO_UNACCEPTABLE_BD_ADDR:
        case ERROR_CODE_CONNECTION_ACCEPT_TIMEOUT_EXCEEDED  :
        case ERROR_CODE_REMOTE_USER_TERMINATED_CONNECTION   : // 0x13
        case ERROR_CODE_CONNECTION_TERMINATED_BY_LOCAL_HOST :
        case ERROR_CODE_AUTHENTICATION_FAILURE :
        case CUSTOM_BB_AUTO_CANCEL_PAGE:
			printf(" ERROR_CODE_xxx %08x\n", bt->value);
            bt_hci_event_disconnect(bt) ;
            break;

        case ERROR_CODE_PAGE_TIMEOUT:
            printf(" ERROR_CODE_PAGE_TIMEOUT \n");
            bt_hci_event_page_timeout(bt);
            break;

        case ERROR_CODE_CONNECTION_TIMEOUT:
            printf(" ERROR_CODE_CONNECTION_TIMEOUT \n");
            bt_hci_event_connection_timeout(bt);
            break;

        case ERROR_CODE_ACL_CONNECTION_ALREADY_EXISTS  :
            printf(" ERROR_CODE_ACL_CONNECTION_ALREADY_EXISTS   \n");
            bt_hci_event_connection_exist(bt);
            break;
        default:
			printf(" ERROR_CODE_unknow %08x\n", bt->value);
            break;

        }
        break;
    default:
        printf(" HCI_EVENT_unknow! %08x\n", bt->event);
        break;

    }

    return 0;
}

// 0x31:  HCI_EVENT_IO_CAPABILITY_REQUEST

/*************************************************************************************************/


void sdp_desc_init(SDP_DESC *sdp, u8 *sdp_buf)
{
	sdp->buf = sdp_buf;
	sdp->p = 0;
	sdp->sp = 0;
}


static void sdp_put_u8(SDP_DESC *sdp, u8 val)
{
	if(sdp->buf){
		sdp->buf[sdp->p] = val;
	}
	sdp->p += 1;
}


static void sdp_put_u16(SDP_DESC *sdp, u16 val)
{
	if(sdp->buf){
		sdp->buf[sdp->p+0] = (val>>8)&0xff;
		sdp->buf[sdp->p+1] = (val&0xff);
	}
	sdp->p += 2;
}


static void sdp_put_u32(SDP_DESC *sdp, u32 val)
{
	if(sdp->buf){
		sdp->buf[sdp->p+0] = (val>>24)&0xff;
		sdp->buf[sdp->p+1] = (val>>16)&0xff;
		sdp->buf[sdp->p+2] = (val>>8)&0xff;
		sdp->buf[sdp->p+3] = (val&0xff);
	}
	sdp->p += 4;
}


static void sdp_seq(SDP_DESC *sdp, int type)
{
	int size = type&0x07;

	sdp->stack[sdp->sp] = sdp->p;
	sdp->sp += 1;

	sdp_put_u8(sdp, type);
	if(size==5)
		sdp->p += 1;
	else if(size==6)
		sdp->p += 2;
	else if(size==7)
		sdp->p += 4;
}


void sdp_seq8 (SDP_DESC *sdp){sdp_seq(sdp, 0x35);}
void sdp_seq16(SDP_DESC *sdp){sdp_seq(sdp, 0x36);}


void sdp_end(SDP_DESC *sdp)
{
	int save_p = sdp->p;
	int p;

	sdp->sp -= 1;
	p = sdp->stack[sdp->sp];
	sdp->p = p+1;
	if(sdp->buf){
		if(sdp->buf[p]==0x35){
			sdp_put_u8(sdp, save_p-p-2);
		}else if(sdp->buf[p]==0x36){
			sdp_put_u16(sdp, save_p-p-3);
		}
	}

	sdp->p = save_p;
}


static void sdp_data(SDP_DESC *sdp, int type, int val)
{
	int size = type&0x07;

	sdp_put_u8(sdp, type);
	if(size==0){
		sdp_put_u8(sdp, val);
	}else if(size==1){
		sdp_put_u16(sdp, val);
	}else if(size==2){
		sdp_put_u32(sdp, val);
	}
}


void sdp_uint8 (SDP_DESC *sdp,  u8 val){sdp_data(sdp, 0x08, val);}
void sdp_uint16(SDP_DESC *sdp, u16 val){sdp_data(sdp, 0x09, val);}
void sdp_uint32(SDP_DESC *sdp, u32 val){sdp_data(sdp, 0x0a, val);}
void sdp_uuid16(SDP_DESC *sdp, u16 val){sdp_data(sdp, 0x19, val);}
void sdp_attr  (SDP_DESC *sdp, u16 val){sdp_data(sdp, 0x09, val);}
void sdp_bool  (SDP_DESC *sdp, int val){sdp_data(sdp, 0x28, val);}


void sdp_binary(SDP_DESC *sdp, int len, char *ptr)
{
	if(len<256){
		sdp_put_u8(sdp, 0x25);
		sdp_put_u8(sdp, len);
		memcpy(sdp->buf+sdp->p, ptr, len);
		sdp->p += len;
	}else{
		sdp_put_u8(sdp, 0x26);
		sdp_put_u16(sdp, len);
		memcpy(sdp->buf+sdp->p, ptr, len);
		sdp->p += len;
	}
}


void sdp_string(SDP_DESC *sdp, char *str)
{
	sdp_binary(sdp, strlen(str), str);
}


/*************************************************************************************************/


