#ifndef BT_EDR_COMMON_H
#define BT_EDR_COMMON_H


/*************************************************************************************************/


#define ERROR_CODE_SUCCESS                                    0x00
#define ERROR_CODE_PAGE_TIMEOUT                               0x04
#define ERROR_CODE_AUTHENTICATION_FAILURE                     0x05
#define ERROR_CODE_PIN_OR_KEY_MISSING                         0x06
#define ERROR_CODE_CONNECTION_TIMEOUT                         0x08
#define ERROR_CODE_SYNCHRONOUS_CONNECTION_LIMIT_TO_A_DEVICE_EXCEEDED  0x0A
#define ERROR_CODE_ACL_CONNECTION_ALREADY_EXISTS                      0x0B
#define ERROR_CODE_CONNECTION_REJECTED_DUE_TO_LIMITED_RESOURCES       0x0D
#define ERROR_CODE_CONNECTION_REJECTED_DUE_TO_UNACCEPTABLE_BD_ADDR    0x0F
#define ERROR_CODE_CONNECTION_ACCEPT_TIMEOUT_EXCEEDED         0x10
#define ERROR_CODE_REMOTE_USER_TERMINATED_CONNECTION          0x13
#define ERROR_CODE_CONNECTION_TERMINATED_BY_LOCAL_HOST        0x16
#define CUSTOM_BB_AUTO_CANCEL_PAGE                            0xFD  //// app cancle page



typedef struct {
	u32 class_type;
	u16 page_timeout;
	u16 super_timeout;
	u8 io_capabilities: 3;
	u8 authentication_req: 3;
	u8 oob_data: 2;
} edr_init_cfg_t;


/*************************************************************************************************/


void bt_wait_connect(u8 enable);
void bt_edr_start(const edr_init_cfg_t *cfg, int param);
void bt_edr_start_post(void);
void bt_edr_exit(int param);

int bt_comm_edr_status_event_handler(struct bt_event *bt);
int bt_comm_edr_hci_event_handler(struct bt_event *bt);

int user_hid_send_data(u8 *buf, u32 len);


#endif

