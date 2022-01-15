#include <stdint.h>


#define MAX_HID_DEVS 1

struct hid_conn {
	uint8_t cmd_buf[10];
	uint8_t bd_addr[6];
	uint8_t send_step;
	uint8_t send_continue;

	uint8_t inused :1;
	uint8_t connect_inter_channel :1
	uint8_t hid_background :1
	uint8_t income_con_flag :2
	uint8_t cmdbuf_len :3

	uint16_t ctrl_ch;
	uint16_t data_ch;
	uint16_t pend_ch;
};

struct hid_keyboard_cmd {
	uint8_t HIDP_Hdr;
	uint8_t report_id;
	uint16_t key_cmd1;
	uint16_t key_cmd2;
};

struct _HID_AC_CMD {
	uint8_t HIDP_Hdr;
	uint8_t report_id:8;
	uint32_t data:24;
} __attribute__ ((packed));


struct hid_core_data_t {
	struct hid_conn conns[MAX_HID_DEVS];
	struct hid_keyboard_cmd kbd_cmd;
	struct _HID_AC_CMD ac_cmd;
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

struct bt_sleep {
  uint32_t (*suspend)(void);
  uint32_t (*resume)(void);
  uint32_t (*release)(void);
};

struct bt_sleep bt_suspend_hid_resumehid_release = {
	hid_suspend,
	hid_resume,
	hid_release
};


#define PROFILE_CMD_OK                     0
#define PROFILE_CMD_DEVICE_NO_FOUND        -1000
#define PROFILE_CMD_NO_FOUND               -1001
#define PROFILE_CMD_SEND_ERROR             -1002
#define PROFILE_CMD_REMOTE_NOT_SUPPORT     -1003
#define PROFILE_CMD_TRY_AGAIN_LATER        =1004
#define PROFILE_CMD_DATA_PARSE_ERROE       -1005
#define PROFILE_CMD_PROFILE_NOT_SUPPORT    -1006


static struct hid_handl *hid;
static int hid_run_loop_busy;


/******************************************************************************/


void hid_init(struct hid_handl* handle, uint8_t* var)
{
	hid = handle;
	memset(hid, 0, sizeof(*hid));

	hid_run_loop_busy = 0;

	l2cap_register_service_internal(NULL, __hid_ctrl_packet_handler, 0x11, -1);
	l2cap_register_service_internal(NULL, __hid_interrupt_packet_handler, 0x13, -1);
	stack_run_loop_register(&hid->runloop, __hid_run_loop, var);
}


void hid_diy_regiest_callback(void *msg_cb, void *out_cb)
{
	hid_msg_callback = msg_cb;
	hid_out_callback = intr_cb;
}


static struct hid_conn* __hid_conn_for_addr(uint8_t* bd_addr)
{
	struct hid_conn *conn;
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(conn->inused && memcmp(conn->bd_addr, bd_addr)==0)
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


static void __hid_ctrl_packet_handler(uint8_t type, uint16_t channel, uint8_t *buf, uint16_t len)
{

	if(type==4){
		switch(buf[0]){
		case 0x74:
			hid_ctrl_try_send(channel);
			break;
		case 0x72:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl INCOMING_CONNECTION \n");
			}
			hid_incoming_connection(channel, buf, 1);
			break;
		case 0x70:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl CONNECTION open %x\n\n", buf[2]);
			}
			hid_connection_open(channel, buf, 1);
			break;
		case 0x79:
			hid_monitor_connection_open(channel, buf, 1);
			break;
		case 0x71:
			if(l2cap_debug_enable){
				printf("<BT-log> :hid ctrl CONNECTION close \n\n");
			}
			hid_connection_close(channel, 1);
			break;
		default:
			return;
		}
	}else if(type==6){
		if(hid_out_callback){
			hid_out_callback(buf, len, channel);
		}

		struct hid_conn *conn =__hid_conn_for_channel(channel, 1);
		if(conn==NULL)
			return;

		switch(buf[0]>>4){
		case 0x01:  // HID_CONTROL
			if((buf[0]&0x0f)==5){
				conn->cmd_buf[0] = 0x21;
				conn->cmdbuf_len = 1;
				hid_ctrl_try_send(channel);
			}
			break;
		case 0x06:  // HID_GET_IDLE
		case 0x07:  // HID_SET_IDLE
		case 0x08:  // HID_GET_PROTOCOL
		case 0x09:  // HID_SET_PROTOCOL
			conn->cmd_buf[0] = 0;
			conn->cmdbuf_len = 1;
			hid_ctrl_try_send(channel);
		case 0x0a:  // HID_DATA
		case 0x0b:  // HID_DATC
			if(profile_debug_enable){
				printf("[pro-info] :get hid data\n");
			}
			break;
		default:
			conn->cmd_buf[0] = 3;
			conn->cmdbuf_len = 1;
			hid_ctrl_try_send(channel);
			break;
		}
	}

	return;
}


static void __hid_interrupt_packet_handler(uint8_t type, uint16_t channel, uint8_t *buf, uint16_t len)
{

	if(type==4){
		switch(buf[0]){
		case 0x72: //114
			if(l2cap_debug_enable){
				printf("<BT-log> :hid inter INCOMING_CONNECTION \n");
			}
			hid_incoming_connection(channel, buf, 2);
			break;
		case 0x70: //112
			if(l2cap_debug_enable){
				printf("<BT-log> :hid int CONNECTION open %x\n\n", buf[2]);
			}
			hid_connection_open(channel, buf, 2);
			break;
		case 0x79: //121
			hid_monitor_connection_open(channel, buf, 2);
			break;
		case 0x71: //113
			if(l2cap_debug_enable){
				printf("<BT-log> :hid int CONNECTION close \n\n");
			}
			hid_connection_close(channel, 2);
			break;
		default:
			return;
		}
	}else if(type==6){
		if(hid_out_callback){
			hid_out_callback(buf, len, channel);
		}
	}

	return;
}


static void hid_ctrl_try_send(uint16_t channel)
{
	struct hid_conn *conn = __hid_conn_for_channel(channel, 1);
	if(conn==NULL)
		return;

	int len = conn->cmdbuf_len;
	if(len==0)
		return;

	int retv = l2cap_send_internal(channel, conn->cmd_buf, len, 0);
	if(retv)
		return;

	conn->cmdbuf_len = 0;
	if(hid_msg_callback){
		hid_msg_callback(3, &conn->ctrl_ch, 2);
	}

}


static void hid_inter_try_send(uint16_t channel)
{
	if(diy_data_len==0)
		return;

	int retv = l2cap_send_internal(channel, diy_data_buf, diy_data_len, 0);
	if(retv)
		return;

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
		if(len>30){
			if(l2cap_debug_enable){
				printf("<BT-log> :over hid data_buf!!!\n");
			}
			ret_code = 3;
			goto _ret;
		}
		if(diy_data_len){
			if(l2cap_debug_enable){
				printf("<BT-log> :hid data_buf busy!!!\n");
			}
			ret_code = 4;
			goto _ret;
		}
		memcpy(diy_data_buf, buf, len);
		diy_data_len = len;
		ret_code = 0;
		goto _ret;
	}else{
		if(len>10){
			if(l2cap_debug_enable){
				printf("<BT-log> :over hid cmd_buf!!!\n");
			}
			ret_code = 20;
			goto _ret;
		}
		if(conn->cmdbuf_len){
			if(l2cap_debug_enable){
				printf("<BT-log> :hid cmd_buf busy!!!\n");
			}
			ret_code = 21;
			goto _ret;
		}
		memcpy(conn->cmd_buf, buf, len);
		conn->cmdbuf_len = len;
		ret_code = 0;
		goto _ret;
	}

_ret:
	local_irq_enable();
	return ret_code;
}


static void __hid_run_loop(struct run_loop* loop)
{
	u8 *ptr;
	int len;

	if(hid==NULL)
		return 0;

	local_irq_disable();
	hid_run_loop_busy = 1;
	local_irq_enable();

	struct hid_conn *conn = &hid->core->conns[0];
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core->conns[0];
		if(conn->inused==0 || conn->data_ch==0)
			continue;

		switch(conn->send_step){
		case 1:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x0028;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
			break;
		case 4:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x0029;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
			break;
		case 7:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x0050;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
			break;
		case 10:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x004f;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
			break;
		case 16:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x00e9;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
			break;
		case 19:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x00ea;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
		case 2:
		case 5:
		case 8:
		case 11:
		case 17:
		case 20:
			hid->core.kbd_cmd.HIDP_Hdr = 0xa1;
			hid->core.kbd_cmd.report_id = 0x02;
			hid->core.kbd_cmd.key_cmd1 = 0x0000;
			hid->core.kbd_cmd.key_cmd2 = 0x0000;
			ptr = (u8*)&hid->core.kbd_cmd;
			len = 6;
			break;
		case 65:
			hid->core.ac_cmd.HIDP_Hdr = 0xa1;
			hid->core.ac_cmd.report_id = 0x03;
			hid->core.ac_cmd.data = 0x000001;
			ptr = (u8*)&hid->core.ac_cmd;
			len = 5;
			break;
		case 66:
			hid->core.ac_cmd.HIDP_Hdr = 0xa1;
			hid->core.ac_cmd.report_id = 0x03;
			hid->core.ac_cmd.data = 0x000000;
			ptr = (u8*)&hid->core.ac_cmd;
			len = 5;
			break;
		case 0x81:
			ptr = (u8*)&ios_key_down;  // { 0xa1, 3, 0, 2, 0 }
			len = 5;
			break;
		case 0x82:
			ptr = (u8*)&ios_key_up;    // { 0xa1, 3, 0, 0, 0 }
			len = 5;
			break;
		default:
			conn->send_step = 0;
			hid_inter_try_send(conn->data_ch);
			goto _ret;
		}

		retv = l2cap_send_internal(conn->data_ch, ptr, len, 0);
		if(retv){
			goto _ret;
		}

		if(profile_debug_enable){
			printf("[pro-info] :hid_send_succ\n");
		}

		conn->send_step += 1;
		stack_run_loop_resume();

		if(conn->send_continue==0x55){
			if(conn->send_step==3){
				conn->send_continue = 0;
				conn->send_step = 0x81;
			}
		}

	}

_ret:
	hid_run_loop_busy = 0;
}


uint32_t hid_send_cmd_ioctrl(uint8_t *bd_addr, uint32_t op_type)
{
	struct hid_conn *conn;

	if(hid==NULL)
		return -1000;

	switch(op_type){
	case 1:
		hid_android_shutter(bd_addr);
		break;
	case 2:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn && conn->send_step==0){
			conn->send_step = 0x81;
		}
		break;
	case 3:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn && conn->send_continue==0){
			if(conn->send_step==0){
				conn->send_continue = 0x55;
				hid_android_shutter(bd_addr);
			}
		}
		break;
	case 4:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn && conn->send_step==0){
			conn->send_step = 0x41;
		}
		break;
	case 5:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn && conn->send_step==0){
			conn->send_step = 0x04;
		}
		break;
	case 10:
		hid_vol_ctrl(bd_addr, 1);
		break;
	case 11:
		hid_vol_ctrl(bd_addr, 0);
		break;
	case 6:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn && conn->send_step==0){
			conn->send_step = 0x07;
		}
		break;
	case 7:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn && conn->send_step==0){
			conn->send_step = 0x0a;
		}
		break;
	case 9:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn){
			if(conn->data_ch || conn->ctrl_ch){
				l2cap_disconnect_internal(conn->data_ch, 0x13);
				l2cap_disconnect_internal(conn->ctrl_ch, 0x13);
			}
		}
		break;
	case 8:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn==NULL){
			conn = __create_hid_conn(bd_addr);
		}else{
			if(conn->ctrl_ch)
				return 0;
			if(conn->connect_inter_channel)
				return 0;
		}

		conn->connect_inter_channels = 1;
		memcpy(conn->bd_addr, bd_addr, 6);
		conn->income_con_flag = 1;
		l2cap_create_channel_internal(NULL, __hid_ctrl_packet_handler, conn->bd_addr, 0x11, -1);
		break;
	case 12:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn){
			if(conn->data_ch)
				hid_inter_try_send(conn->data_ch);
			if(conn->ctrl_ch)
				hid_ctrl_try_send(conn->ctrl_ch);
		}
		break;
	default:
		return -1001;
	}

	stack_run_loop_resume();
	return 0;
}


static void hid_android_shutter(uint8_t *bd_addr)
{
	struct hid_conn *conn;

	if(hid==NULL)
		return;

	conn = __hid_conn_for_addr(bd_addr);
	if(conn==NULL)
		return;

	if(conn->send_step==0){
		conn->send_step = 0x01;
	}

}


static void hid_vol_ctrl(uint8_t *bd_addr, uint8_t val)
{
	struct hid_conn *conn;

	if(hid==NULL)
		return;

	conn = __hid_conn_for_addr(bd_addr);
	if(conn==NULL)
		return;

	if(conn->send_step==0){
		conn->send_step = (val)? 0x10 : 0x13;
	}

}


uint32_t hid_core_data_for_send(uint8_t *buf, uint16_t len)
{
	if(hid==NULL)
		return 0;

	memcpy(buf, &hid->core, sizeof(hid->core));
	return sizeof(hid->core);
}


void hid_core_data_for_set(uint8_t *buf, uint16_t len)
{
	if(hid)
		memcpy((uint8_t*)&hid->core, buf, sizeof(hid->core));
}


uint8_t hid_send_step_state(void)
{
	struct hid_conn *conn;
	int i;

	if(hid==NULL)
		return 0;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(conn->inused && conn->data_ch && conn->send_step)
			return 1;
	}

	return 0;
}


static uint32_t hid_suspend(void)
{
	return 0;
}


static uint32_t hid_resume(void)
{
	return 0;
}



static uint32_t hid_release(void)
{
	struct hid_conn *conn;
	int i;

	if(hid==NULL)
		return 0;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = &hid->core.conns[i];
		if(inused)
			return 1;
		if(hid_run_loop_busy)
			return 1;
	}

	stack_run_loop_remove(&hid->runloop);
	hid = NULL;
	hid_run_loop_busy = 0;

	return 0;
}


static void hid_diy_state_sync(uint32_t _390, uint8_t *bd_addr, uint16_t channel)
{
	uint16_t buf[2];
	struct hid_conn *conn;

	if(hid_msg_callback==NULL)
		return 0;

	switch(_390){
	case 1:
		conn = __hid_conn_for_addr(bd_addr);
		if(conn==NULL || conn->data_ch==0 || conn->ctrl_ch==0)
			return 0;
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
		printf("<BT-log> :hid_channel_open %d,%x,%x\n\n", channel, buf[2], type);
	}

	bt_flip_addr(f_addr, buf+3);
	conn = __hid_conn_for_addr(f_addr);

	if(type==1){
		if(buf[2]==0x00){
			if(conn==NULL)
				conn = __create_hid_conn(f_addr);
			if(conn==NULL){
				if(config_asser){
					printf("file:%s, line:%d", __FILE__, __LINE__);
					printf("ASSERT-FAILD: conn != NULL ");
					cpu_assert_debug();
				}else{
					cpu_reset();
				}
			}
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
		if(buf[2]==0){
			conn->connect_inter_channel = 0;
			conn->income_con_flag = 0;
			conn->data_ch = channel;
			if(user_interface->field5){
				user_interface->field5(conn->bd_addr, 1, 16, 1);
			}
			if(conn->pend_ch){
				if(l2cap_debug_enable){
					printf("<BT-log> :refuse pending channel  %x\n\n", conn->pend_ch);
				}
				l2cap_decline_connection_internal(conn->pend_ch);
				conn->pend_ch = 0;
			}
			hid_diy_state_sync(1, f_addr, channel);
		}else{
			conn->data_ch = 0;
			conn->income_con_flag = 0;
			if(conn->pend_ch==0)
				return;
			if(l2cap_debug_enable){
				printf("<BT-log> :get other refuse----accept pending channel  %x\n\n", conn->pend_ch);
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
		conn = hid->core.conns[i];
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
			if(conn==NULL){
				if(config_asser){
					printf("file:%s, line:%d", __FILE__, __LINE__);
					printf("ASSERT-FAILD: conn != NULL ");
					cpu_assert_debug();
				}else{
					cpu_reset();
				}
			}
		}

		conn->ctrl_ch = channel;
	}else if(type==2){
		if(conn==NULL){
			conn = __create_hid_conn(f_addr);
			if(conn==NULL){
				if(config_asser){
					printf("file:%s, line:%d", __FILE__, __LINE__);
					printf("ASSERT-FAILD: conn != NULL ");
					cpu_assert_debug();
				}else{
					cpu_reset();
				}
			}
		}

		if(buf[2]==0){
			conn->data_ch = channel;
			if(user_interface->field5){
				user_interface->field5(conn->bd_addr, 1, 16, 0);
		}else{
			conn->data_ch = 0;
			conn->income_con_flag = 0
			}
		}
	}

}


static struct hid_conn* __create_hid_conn(uint8_t* bd_addr)
{
	struct hid_conn *conn;
	int i;

	for(i=0; i<MAX_HID_DEVS; i++){
		conn = hid->core.conns
		if(conn->inused==0)
			break;
	}
	if(i==MAX_HID_DEVS)
		return NULL;

	conn->ctrl_ch = 0;
	conn->data_ch = 0;
	conn->pend_ch = 0;
	conn->send_step = 0;
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


static void cpu_reset(void)
{
	p33_soft_reset();
}

