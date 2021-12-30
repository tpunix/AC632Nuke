
#include "system/app_core.h"
#include "system/includes.h"
#include "server/server_core.h"
#include "app_config.h"

#include "btcontroller_config.h"
#include "btstack/bluetooth.h"
#include "btstack/avctp_user.h"
#include "btstack/btstack_task.h"

#include "bt_edr_common.h"






static u8 edr_remote_address[6];


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


#define HID_DATA         0xA0     /*Device&host*/
#define HID_DATC         0xB0     /*Device&host  DEPRECATED*/

/*DATA*/
#define DATA_OTHER       0x00
#define DATA_INPUT       0x01
#define DATA_OUTPUT      0x02
#define DATA_FEATURE     0x03


void hid_diy_regiest_callback(void *cb, void *interrupt_cb);
void hid_sdp_init(const u8 *hid_descriptor, u16 size);


static u8 kbd_report_map[] = {
    0x05, 0x0C,        // Usage Page (Consumer)
    0x09, 0x01,        // Usage (Consumer Control)
    0xA1, 0x01,        // Collection (Application)
    0x85, 0x01,        //   Report ID (1)
    0x09, 0xE9,        //   Usage (Volume Increment)
    0x09, 0xEA,        //   Usage (Volume Decrement)
    0x09, 0xCD,        //   Usage (Play/Pause)
    0x09, 0xE2,        //   Usage (Mute)
    0x09, 0xB6,        //   Usage (Scan Previous Track)
    0x09, 0xB5,        //   Usage (Scan Next Track)
    0x09, 0xB3,        //   Usage (Fast Forward)
    0x09, 0xB4,        //   Usage (Rewind)
    0x15, 0x00,        //   Logical Minimum (0)
    0x25, 0x01,        //   Logical Maximum (1)
    0x75, 0x01,        //   Report Size (1)
    0x95, 0x10,        //   Report Count (16)
    0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
    0xC0,              // End Collection
    // 35 bytes
};


static int hid_data_ch = 0;
static int hid_ctrl_ch = 0;
static u8  hid_tbuf[64];

int user_hid_send_data(u8 *buf, u32 len)
{
	int ret;
	hid_s_param_t s_par;

	if (hid_data_ch==0) {
		return -1;
	}

	hid_tbuf[0] = HID_DATA | DATA_INPUT;
	hid_tbuf[1] = 1; // report_id
	memcpy(hid_tbuf+2, buf, len);

	s_par.chl_id = hid_data_ch;
	s_par.data_len = len+2;
	s_par.data_ptr = hid_tbuf;
	ret = user_send_cmd_prepare(USER_CTRL_HID_SEND_DATA, sizeof(hid_s_param_t), (u8 *)&s_par);
	if (ret) {
		printf("########  hid send fail!!! %d\n", ret);
	}

	return ret;
}


static void user_hid_msg_handler(u32 msg, u8 *packet, u32 packet_size)
{
	switch (msg) {
	case 1:
		printf("########  hid connect! ctrl_ch:%d data_ch:%d\n", hid_ctrl_ch, hid_data_ch);
		hid_ctrl_ch = *(u16*)(packet+0);
		hid_data_ch = *(u16*)(packet+2);
		break;
	case 2:
		printf("########  hid disconnect!\n");
		hid_ctrl_ch = 0;
		hid_data_ch = 0;
		break;
	case 3:
		int ch = *(u16*)(packet+0);
		if(ch == hid_data_ch){
			printf("######## hid send ok!\n");
		}
		break;
	default:
		printf("hid unknow: %08x\n", msg);
		break;
	}
}


void user_hid_output_handler(u8 *packet, u16 size, u16 channel)
{
	printf("user_hid_output_handler ... size=%d ch=%d\n", size, channel);
	if(size)
		printf("  %02x %02x\n", packet[0], packet[1]);
}


/*************************************************************************************************/




void bt_edr_start(const edr_init_cfg_t *cfg, int param)
{
	printf("bt_edr_start ...\n");

    __set_user_ctrl_conn_num(1);
    __bt_set_update_battery_time(0);

    /*回连搜索时间长度设置,可使用该函数注册使用，ms单位,u16*/
    __set_page_timeout_value(cfg->page_timeout);
    /*回连时超时参数设置。ms单位。做主机有效*/
    __set_super_timeout_value(cfg->super_timeout);

	// HID profile
    __change_hci_class_type(cfg->class_type);//default icon
	hid_diy_regiest_callback(user_hid_msg_handler, user_hid_output_handler);
	hid_sdp_init(kbd_report_map, sizeof(kbd_report_map));

    //io_capabilities ; /*0: Display only 1: Display YesNo 2: KeyboardOnly 3: NoInputNoOutput*/
    //authentication_requirements: 0:not protect  1 :protect
    __set_simple_pair_param(cfg->io_capabilities, cfg->oob_data, cfg->authentication_req);

	printf("btstack_init ...\n");
	btstack_init();
	printf("bt_edr_start done.\n");
}

void bt_edr_start_post(void)
{
	bt_wait_connect(1);
}


void bt_edr_exit(int param)
{
    bt_wait_connect(0);

    printf("===btstack_exit\n");
    btstack_exit();
}


/*************************************************************************************************/


int bt_comm_edr_status_event_handler(struct bt_event *bt)
{
    printf("--------%s: %d", __FUNCTION__, bt->event);

    switch (bt->event) {
    case BT_STATUS_INIT_OK:
        printf("STATUS_INIT_OK\n");
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

    case BT_STATUS_PHONE_INCOME:
        printf("BT_STATUS_PHONE_INCOME\n");
        break;

    case BT_STATUS_PHONE_OUT:
        printf("BT_STATUS_PHONE_OUT\n");
        break;

    case BT_STATUS_PHONE_ACTIVE:
        printf("BT_STATUS_PHONE_ACTIVE\n");
        break;

    case BT_STATUS_PHONE_HANGUP:
        printf("BT_STATUS_PHONE_HANGUP\n");
        break;

    case BT_STATUS_PHONE_NUMBER:
        printf("BT_STATUS_PHONE_NUMBER\n");
        break;

    case BT_STATUS_INBAND_RINGTONE:
        printf("BT_STATUS_INBAND_RINGTONE\n");
        break;

    case BT_STATUS_BEGIN_AUTO_CON:
        printf("BT_STATUS_BEGIN_AUTO_CON\n");
        break;

    case BT_STATUS_A2DP_MEDIA_START:
        printf(" BT_STATUS_A2DP_MEDIA_START");
        break;

    case BT_STATUS_SNIFF_STATE_UPDATE:
        printf(" BT_STATUS_SNIFF_STATE_UPDATE %d\n", bt->value);    //0退出SNIFF
        break;

    case  BT_STATUS_TRIM_OVER:
        printf("BT STATUS TRIM OVER\n");
        break;

    default:
        printf(" BT STATUS DEFAULT\n");
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
extern void set_remote_test_flag(u8 own_remote_test);
int bt_comm_edr_hci_event_handler(struct bt_event *bt)
{
    //对应原来的蓝牙连接上断开处理函数  ,bt->value=reason
    printf("--------%s reason %x %x", __FUNCTION__, bt->event, bt->value);

    if (bt->event == HCI_EVENT_VENDOR_REMOTE_TEST) {
        printf("TEST_BOX:%d", bt->value);
        switch (bt->value) {
        case VENDOR_TEST_DISCONNECTED:
            set_remote_test_flag(0);
            printf("clear_test_box_flag");
            cpu_reset();
            return 0;
            break;

        case VENDOR_TEST_LEGACY_CONNECTED_BY_BT_CLASSIC:
            break;

        default:
            break;
        }
        return 0;
    }

    switch (bt->event) {
    case HCI_EVENT_INQUIRY_COMPLETE:
        printf(" HCI_EVENT_INQUIRY_COMPLETE \n");
        /* bt_hci_event_inquiry(bt); */
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
    case HCI_EVENT_CONNECTION_COMPLETE:
        printf(" HCI_EVENT_CONNECTION_COMPLETE \n");
        switch (bt->value) {
        case ERROR_CODE_SUCCESS :
            printf(" ERROR_CODE_SUCCESS  \n");
            bt_hci_event_connection(bt);
            break;
        case ERROR_CODE_PIN_OR_KEY_MISSING:
            printf(" ERROR_CODE_PIN_OR_KEY_MISSING \n");
            bt_hci_event_linkkey_missing(bt);

        case ERROR_CODE_SYNCHRONOUS_CONNECTION_LIMIT_TO_A_DEVICE_EXCEEDED :
        case ERROR_CODE_CONNECTION_REJECTED_DUE_TO_LIMITED_RESOURCES:
        case ERROR_CODE_CONNECTION_REJECTED_DUE_TO_UNACCEPTABLE_BD_ADDR:
        case ERROR_CODE_CONNECTION_ACCEPT_TIMEOUT_EXCEEDED  :
        case ERROR_CODE_REMOTE_USER_TERMINATED_CONNECTION   :
        case ERROR_CODE_CONNECTION_TERMINATED_BY_LOCAL_HOST :
        case ERROR_CODE_AUTHENTICATION_FAILURE :
        case CUSTOM_BB_AUTO_CANCEL_PAGE:
			printf(" ERROR_CODE_xxx \n");
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
            break;

        }
        break;
    default:
        break;

    }
    return 0;
}


