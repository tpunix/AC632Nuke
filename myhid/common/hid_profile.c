

#include "system/includes.h"


#define PROFILE_CMD_OK                     0
#define PROFILE_CMD_DEVICE_NO_FOUND        -1000
#define PROFILE_CMD_NO_FOUND               -1001
#define PROFILE_CMD_SEND_ERROR             -1002
#define PROFILE_CMD_REMOTE_NOT_SUPPORT     -1003
#define PROFILE_CMD_TRY_AGAIN_LATER        -1004
#define PROFILE_CMD_DATA_PARSE_ERROE       -1005
#define PROFILE_CMD_PROFILE_NOT_SUPPORT    -1006


#define HCI_COMMAND_DATA_PACKET 0x01
#define HCI_ACL_DATA_PACKET     0x02
#define HCI_SCO_DATA_PACKET     0x03
#define HCI_EVENT_PACKET        0x04
#define L2CAP_DATA_PACKET       0x06

enum {
	HID_CMD_ANDROID_SHUTTER = 1,
	HID_CMD_IOS_SHUTTER     = 2,
	HID_CMD_BOTH_SHUTTER    = 3,
	HID_CMD_HOME_KEY        = 4,
	HID_CMD_RETURN_KEY      = 5,
	HID_CMD_LEFTARROW_KEY   = 6,
	HID_CMD_RIGHTARROW_KEY  = 7,
	HID_CMD_CONNECT         = 8,
	HID_CMD_DISCONNECT      = 9,
	HID_CMD_INCREASE_VOL    = 10,
	HID_CMD_DECREASE_VOL    = 11,
	HID_CMD_DIY_RESUME_SEND = 12,
};


#define MAX_HID_DEVS 2

struct hid_conn {
	uint8_t *cmdbuf;
	uint8_t *datbuf;
	uint16_t cmdbuf_len;
	uint16_t datbuf_len;

	uint8_t bd_addr[6];

	uint16_t pend_ch;
	uint16_t ctrl_ch;
	uint16_t data_ch;

	uint8_t inused :1;
	uint8_t connect_inter_channel :1;
	uint8_t income_con_flag :2;
};


struct hid_core_data_t {
	struct hid_conn conns[MAX_HID_DEVS];
};


struct btstack_linked_item {
	struct btstack_linked_item* next;
};


struct run_loop {
	struct btstack_linked_item entry;
	void (*run)(struct run_loop*);
	uint8_t *var;
};


struct hid_handl {
	struct hid_core_data_t core;
	struct run_loop loop;
};


struct user_interface_handler {
	void (*field0)(void);
	void (*field1)(void);
	void (*field2)(void);
	void (*field3)(void);
	void (*field4)(void);
	void (*field5)(u8 *addr, int, int, int);
	void (*field6)(void);
	void (*field7)(void);
	void (*field8)(void);
	void (*field9)(void);
	void (*field10)(void);
	void (*field11)(void);
	void (*field12)(void);
	void (*field13)(void);
	void (*field14)(void);
};


static struct hid_handl hid_handle;
static struct hid_handl *hid;

static void (*hid_msg_callback)(int msg, u8 *buf, int len);
static void (*hid_out_callback)(u8 *buf, int len, int channel);


extern struct user_interface_handler *user_interface;
extern int l2cap_debug_enable;
extern int profile_debug_enable;


void l2cap_register_service_internal(u8*, void(*)(u8, u16, u8*, u16), int, int);
int  l2cap_send_internal(int, u8*, int, int);
void l2cap_decline_connection_internal(int, int);
void l2cap_accept_connection_internal(int);
int  lmp_private_get_tx_remain_buffer(void);
void stack_run_loop_register(struct run_loop*, void (*)(struct run_loop*), u8*);
void bt_flip_addr(u8 *bd_addr, u8 *src);



static void __hid_interrupt_packet_handler(uint8_t type, uint16_t channel, uint8_t *buf, uint16_t len);


/******************************************************************************/



static struct hid_conn* __hid_conn_for_addr(uint8_t* bd_addr)
{
	struct hid_conn *conn;
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(conn->inused && memcmp(conn->bd_addr, bd_addr, 6)==0)
			return conn;
	}

	return NULL;
}


static struct hid_conn* __hid_conn_for_channel(uint16_t channel, int type)
{
	struct hid_conn *conn;
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(conn->inused==0)
		   continue;
		if(type&1 && conn->ctrl_ch==channel)
			return conn;
		if(type&2 && conn->data_ch==channel)
			return conn;
	}

	return NULL;
}


static struct hid_conn* __create_hid_conn(uint8_t* bd_addr)
{
	struct hid_conn *conn;
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(conn->inused==0)
			break;
	}
	if(i==MAX_HID_DEVS)
		return NULL;

	conn->ctrl_ch = 0;
	conn->data_ch = 0;
	conn->pend_ch = 0;
	conn->connect_inter_channel = 0;
	conn->inused = 1;
	memcpy(conn->bd_addr, bd_addr, 6);

	return conn;
}


static void __free_hid_conn(struct hid_conn* conn)
{
	if(conn==NULL)
		return;

	conn->inused = 0;
	conn->ctrl_ch = 0;
	conn->data_ch = 0;
	memset(conn->bd_addr, 0, 6);

	if(hid_msg_callback){
		hid_msg_callback(2, NULL, 0);
	}
}


/******************************************************************************/


static void hid_ctrl_try_send(uint16_t channel)
{
	struct hid_conn *conn = __hid_conn_for_channel(channel, 1);
	if(conn==NULL)
		return;

	if(conn->cmdbuf_len==0)
		return;

	int retv = l2cap_send_internal(channel, conn->cmdbuf, conn->cmdbuf_len, 0);
	if(retv)
		return;

	conn->cmdbuf_len = 0;
	if(hid_msg_callback){
		hid_msg_callback(3, &conn->ctrl_ch, 2);
	}

}


static void hid_inter_try_send(uint16_t channel)
{
	struct hid_conn *conn = __hid_conn_for_channel(channel, 2);
	if(conn==NULL)
		return;

	if(conn->datbuf_len==0)
		return;

	int retv = l2cap_send_internal(channel, conn->datbuf, conn->datbuf_len, 0);
	if(retv)
		return;

	conn->datbuf_len = 0;
	if(hid_msg_callback){
		hid_msg_callback(3, &channel, 2);
	}

}


uint32_t hid_diy_data_try_send(uint16_t channel, uint8_t *buf, uint16_t len)
{
	int ret_code = 0;

	local_irq_disable();

	if(hid==NULL){
		ret_code = 1;
		goto _ret;
	}


	struct hid_conn *conn = __hid_conn_for_channel(channel, 3);
	if(conn==NULL){
		ret_code = 2;
		goto _ret;
	}

	if(lmp_private_get_tx_remain_buffer()<256){
		ret_code = 30;
		goto _ret;
	}

	if(conn->data_ch == channel){
		if(conn->datbuf_len){
			if(l2cap_debug_enable){
				printf("<BT-log> :hid datbuf busy!!!\n");
			}
			ret_code = 4;
			goto _ret;
		}
		conn->datbuf = buf;
		conn->datbuf_len = len;
		ret_code = 0;
		goto _ret;
	}else{
		if(conn->cmdbuf_len){
			if(l2cap_debug_enable){
				printf("<BT-log> :hid cmdbuf busy!!!\n");
			}
			ret_code = 21;
			goto _ret;
		}
		conn->cmdbuf = buf;
		conn->cmdbuf_len = len;
		ret_code = 0;
		goto _ret;
	}

_ret:
	local_irq_enable();
	return ret_code;
}


/******************************************************************************/


static void hid_diy_state_sync(uint32_t _390, uint8_t *bd_addr, uint16_t channel)
{
	uint16_t buf[2];
	struct hid_conn *conn;

	if(hid_msg_callback==NULL)
		return;

	switch(_390){
	case 1:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn==NULL || conn->data_ch==0 || conn->ctrl_ch==0)
			return;
		buf[0] = conn->ctrl_ch;
		buf[1] = conn->data_ch;
		hid_msg_callback(1, buf, 4);
		break;
	case 2:
		hid_msg_callback(2, NULL, 0);
		break;
	case 3:
		hid_msg_callback(3, &channel, 2);
		break;
	defaut:
		break;
	}
}


static void hid_incoming_connection(uint16_t channel, uint8_t *buf, uint8_t type)
{
	struct hid_conn *conn;
	uint8_t f_addr[6];

	bt_flip_addr(f_addr, buf+2);
	conn = __hid_conn_for_addr(f_addr);
	if(conn==NULL){
		conn = __create_hid_conn(f_addr);
	}

	if(type==1){
		if(conn==NULL){
			l2cap_decline_connection_internal(channel, 4);
			return;
		}
		conn->ctrl_ch = channel;
		l2cap_accept_connection_internal(channel);
	}else if(type==2){
		if(conn==NULL || conn->connect_inter_channel){
			if(l2cap_debug_enable){
				printf("<BT-log> :INTERRUPT_TYPE income  2222  %x\n\n", channel);
			}
			if(conn)
				conn->pend_ch = channel;
			l2cap_decline_connection_internal(channel, 1);
			return;
		}
		if(l2cap_debug_enable){
			printf("<BT-log> :INTERRUPT_TYPE income  1111  %x\n\n", channel);
		}

		conn->data_ch = channel;
		l2cap_accept_connection_internal(channel);
		conn->income_con_flag = 2;
	}

}


static void hid_connection_open(uint16_t channel, uint8_t* buf, uint8_t type)
{
	struct hid_conn *conn;
	uint8_t f_addr[6];

	if(l2cap_debug_enable){
		printf("<BT-log> :hid_channel_open %02x,%d,%d\n\n", channel, buf[2], type);
	}

	bt_flip_addr(f_addr, buf+3);
	conn = __hid_conn_for_addr(f_addr);

	if(type==1){
		if(buf[2]==0x00){ // status
			if(conn==NULL)
				conn = __create_hid_conn(f_addr);
			ASSERT(conn!=NULL);
			conn->ctrl_ch = channel;
			if(conn->connect_inter_channel){
				l2cap_create_channel_internal(NULL, __hid_interrupt_packet_handler, conn->bd_addr, 0x13, -1);
			}
			hid_diy_state_sync(1, f_addr, channel);
		}else{
			if(buf[2]==0x65){
				if(user_interface->field5){
					user_interface->field5(f_addr, 2, 16, 1);
				}
			}
			if(conn)
				__free_hid_conn(conn);
			return;
		}
	}else if(type==2){
		if(conn==NULL){
			l2cap_disconnect_internal(channel);
			return;
		}
		if(buf[2]==0){ // status
			conn->connect_inter_channel = 0;
			conn->income_con_flag = 0;
			conn->data_ch = channel;
			if(user_interface->field5){
				user_interface->field5(conn->bd_addr, 1, 16, 1);
			}
			if(conn->pend_ch){
				if(l2cap_debug_enable){
					printf("<BT-log> :refuse pending channel  %02x\n\n", conn->pend_ch);
				}
				l2cap_decline_connection_internal(conn->pend_ch, 4);
				conn->pend_ch = 0;
			}
			hid_diy_state_sync(1, f_addr, channel);
		}else{
			conn->data_ch = 0;
			conn->income_con_flag = 0;
			if(conn->pend_ch==0)
				return;
			if(l2cap_debug_enable){
				printf("<BT-log> :get other refuse----accept pending channel  %02x\n\n", conn->pend_ch);
			}
			conn->data_ch = conn->pend_ch;
			l2cap_accept_connection_internal(conn->pend_ch);
			conn->income_con_flag = 2;
			return;
		}
	}

}


static void hid_connection_close(uint16_t channel, uint8_t type)
{
	struct hid_conn *conn;
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(conn->inused==0)
			continue;
		if((type==1) && (conn->ctrl_ch==channel)){
			conn->ctrl_ch = 0;
			break;
		}
		if((type==2) && (conn->data_ch==channel)){
			conn->data_ch = 0;
			conn->income_con_flag = 0;
			break;
		}
	}

	if(i<MAX_HID_DEVS){
		if(conn->ctrl_ch==0 && conn->data_ch==0){
			if(user_interface->field5){
				user_interface->field5(conn->bd_addr, 0, 16, 0);
			}
			__free_hid_conn(conn);
		}
	}

}


static void hid_monitor_connection_open(uint16_t channel, uint8_t* buf, uint8_t type)
{
	struct hid_conn *conn;
	uint8_t f_addr[6];

	bt_flip_addr(f_addr, buf+3);
	conn = __hid_conn_for_addr(f_addr);

	if(type==1){
		if(conn==NULL){
			if(buf[2])
				return;
			conn = __create_hid_conn(f_addr);
			ASSERT(conn!=NULL);
		}

		conn->ctrl_ch = channel;
	}else if(type==2){
		if(conn==NULL){
			conn = __create_hid_conn(f_addr);
			ASSERT(conn!=NULL);
		}

		if(buf[2]==0){
			conn->data_ch = channel;
			if(user_interface->field5){
				user_interface->field5(conn->bd_addr, 1, 16, 0);
			}
		}else{
			conn->data_ch = 0;
			conn->income_con_flag = 0;
		}
	}

}


/******************************************************************************/


#define L2CAP_EVENT_CHANNEL_OPENED                         0x70
#define L2CAP_EVENT_CHANNEL_CLOSED                         0x71
#define L2CAP_EVENT_INCOMING_CONNECTION                    0x72
#define L2CAP_EVENT_TIMEOUT_CHECK                          0x73

#define DAEMON_EVENT_L2CAP_CREDITS                         0x74 // ??
#define L2CAP_EVENT_CAN_SEND_NOW                           0x79 // ??


static void __hid_ctrl_packet_handler(uint8_t type, uint16_t channel, uint8_t *buf, uint16_t len)
{
	printf("__hid_ctrl_packet_handler: type=%d channel=%02x len=%d", type, channel, len);
	put_buf(buf, len);

	if(type==HCI_EVENT_PACKET){
		switch(buf[0]){
		case 0x74:
			// 每次l2cap_send_internal之后, 都会有这个事件.
			// buf: 74 03 41 00 01
			// 无论控制还是数据, buf内容都是一样的.
			//printf("<BT-log> :hid ctrl 0x74 ??? \n");
			hid_ctrl_try_send(channel);
			break;
		case L2CAP_EVENT_INCOMING_CONNECTION:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl INCOMING_CONNECTION \n");
			}
			hid_incoming_connection(channel, buf, 1);
			break;
		case L2CAP_EVENT_CHANNEL_OPENED:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl CONNECTION open\n\n");
			}
			hid_connection_open(channel, buf, 1);
			break;
		case 0x79:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl MONITOR CONNECTION open\n\n");
			}
			hid_monitor_connection_open(channel, buf, 1);
			break;
		case L2CAP_EVENT_CHANNEL_CLOSED:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl CONNECTION close \n\n");
			}
			hid_connection_close(channel, 1);
			break;
		default:
			return;
		}
	}else if(type==L2CAP_DATA_PACKET){
		if(hid_out_callback){
			hid_out_callback(buf, len, channel);
		}
	}

	return;
}


static void __hid_interrupt_packet_handler(uint8_t type, uint16_t channel, uint8_t *buf, uint16_t len)
{

	if(type==HCI_EVENT_PACKET){
		switch(buf[0]){
		case L2CAP_EVENT_INCOMING_CONNECTION:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid intr INCOMING_CONNECTION \n");
			}
			hid_incoming_connection(channel, buf, 2);
			break;
		case L2CAP_EVENT_CHANNEL_OPENED:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid intr CONNECTION open\n\n");
			}
			hid_connection_open(channel, buf, 2);
			break;
		case 0x79:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid intr MONITOR CONNECTION open\n\n");
			}
			hid_monitor_connection_open(channel, buf, 2);
			break;
		case L2CAP_EVENT_CHANNEL_CLOSED:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid intr CONNECTION close \n\n");
			}
			hid_connection_close(channel, 2);
			break;
		default:
			return;
		}
	}else if(type==L2CAP_DATA_PACKET){
		if(hid_out_callback){
			hid_out_callback(buf, len, channel);
		}
	}

	return;
}


/******************************************************************************/


static void __hid_run_loop(struct run_loop* loop)
{
	struct hid_conn *conn;
	int i;

	if(hid==NULL)
		return;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[0];
		if(conn->inused==0 || conn->data_ch==0)
			continue;

		//printf("__hid_run_loop: hid_inter_try_send!\n");
		hid_inter_try_send(conn->data_ch);
	}

}


//
// 调用user_send_cmd_prepare(USER_CTRL_HID_SEND_DATA, ...)后,
// 会触发hid_send_cmd_ioctrl(HID_CMD_DIY_RESUME_SEND)进行实际发送.
//
// 设备主动连接主机, 会触发HID_CMD_CONNECT.
//
uint32_t hid_send_cmd_ioctrl(uint8_t *bd_addr, uint32_t op_type)
{
	struct hid_conn *conn;

	printf("<BT-log> :hid_send_cmd_ioctrl op_type=%d\n", op_type);

	if(hid==NULL)
		return PROFILE_CMD_DEVICE_NO_FOUND;

	switch(op_type){
	case HID_CMD_CONNECT:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn==NULL){
			conn = __create_hid_conn(bd_addr);
		}else{
			if(conn->ctrl_ch)
				return 0;
			if(conn->connect_inter_channel)
				return 0;
		}

		conn->connect_inter_channel = 1;
		memcpy(conn->bd_addr, bd_addr, 6);
		conn->income_con_flag = 1;
		l2cap_create_channel_internal(NULL, __hid_ctrl_packet_handler, conn->bd_addr, 0x11, -1);
		break;

	case HID_CMD_DISCONNECT:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn){
			if(conn->data_ch || conn->ctrl_ch){
				l2cap_disconnect_internal(conn->data_ch, 0x13);
				l2cap_disconnect_internal(conn->ctrl_ch, 0x13);
			}
		}
		break;

	case HID_CMD_DIY_RESUME_SEND:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn){
			if(conn->data_ch)
				hid_inter_try_send(conn->data_ch);
			if(conn->ctrl_ch)
				hid_ctrl_try_send(conn->ctrl_ch);
		}
		break;
	default:
		return PROFILE_CMD_NO_FOUND;
	}

	return PROFILE_CMD_OK;
}


/******************************************************************************/


void hid_init(struct hid_handl* handle, uint8_t* var)
{
	hid = &hid_handle;
	memset(hid, 0, sizeof(hid_handle));

	l2cap_register_service_internal(NULL, __hid_ctrl_packet_handler, 0x11, -1);
	l2cap_register_service_internal(NULL, __hid_interrupt_packet_handler, 0x13, -1);
	stack_run_loop_register(&hid->loop, __hid_run_loop, var);
}


void hid_diy_regiest_callback(void *msg_cb, void *out_cb)
{
	hid_msg_callback = msg_cb;
	hid_out_callback = out_cb;
}


