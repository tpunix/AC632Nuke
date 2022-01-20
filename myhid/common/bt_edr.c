
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
static edr_init_cfg_t *global_cfg;

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


void bt_edr_start(const edr_init_cfg_t *cfg, int param)
{
	printf("bt_edr_start ...\n");

	global_cfg = cfg;

    __set_user_ctrl_conn_num(1);
    __bt_set_update_battery_time(0);
    /*回连搜索时间长度设置,可使用该函数注册使用，ms单位,u16*/
    __set_page_timeout_value(cfg->page_timeout);
    /*回连时超时参数设置。ms单位。做主机有效*/
    __set_super_timeout_value(cfg->super_timeout);


	// profile init
	edr_hidd_init((hid_cfg_t*)cfg->profile_data);

    //io_capabilities ; /*0: Display only 1: Display YesNo 2: KeyboardOnly 3: NoInputNoOutput*/
    //authentication_requirements: 0:not protect  1 :protect
    __set_simple_pair_param(cfg->io_capabilities, cfg->oob_data, cfg->authentication_req);

	printf("btstack_init ...\n");
	btstack_init();
	printf("bt_edr_start done.\n");
}


void bt_edr_start_post(void)
{
	printf("Try to connect last device ...\n");
	if(connect_last_device_from_vm()){
		printf("Connect to last device.\n");
		return;
	}

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
int bt_comm_edr_hci_event_handler(struct bt_event *bt)
{
    //对应原来的蓝牙连接上断开处理函数  ,bt->value=reason
    printf("--------%s reason %x %x", __FUNCTION__, bt->event, bt->value);

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
			break;

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


