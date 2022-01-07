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
	u16 page_timeout;
	u16 super_timeout;
	u8 io_capabilities: 3;
	u8 authentication_req: 3;
	u8 oob_data: 2;
	void *profile_data;
} edr_init_cfg_t;


/*************************************************************************************************/


typedef struct {
	u8 *buf;
	int p;
	int stack[16];
	int sp;
}SDP_DESC;

void sdp_desc_init(SDP_DESC *sdp, u8 *sdp_buf);
void sdp_seq8 (SDP_DESC *sdp);
void sdp_seq16(SDP_DESC *sdp);
void sdp_end(SDP_DESC *sdp);
void sdp_uint8 (SDP_DESC *sdp,  u8 val);
void sdp_uint16(SDP_DESC *sdp, u16 val);
void sdp_uint32(SDP_DESC *sdp, u32 val);
void sdp_uuid16(SDP_DESC *sdp, u16 val);
void sdp_attr  (SDP_DESC *sdp, u16 val);
void sdp_bool  (SDP_DESC *sdp, int val);
void sdp_binary(SDP_DESC *sdp, int len, char *ptr);
void sdp_string(SDP_DESC *sdp, char *str);



typedef struct {
	void *offset_item;
	u32  service_record_handle;
	u8  *service_record;
} service_record_item_t;


#define SDP_RECORD_HANDLER_REGISTER(handler) \
	const service_record_item_t  handler \
		sec(.sdp_record_item)


/*************************************************************************************************/


typedef struct {
	u32 class_type;
	int has_report_id;
	u8 *report_map;
	int report_size;
}hid_cfg_t;


void edr_hidd_init(hid_cfg_t *cfg);
int edr_hid_send_data(u8 *buf, u32 len);

void user_hidd_set_idle(int param);
int  user_hidd_get_idle(void);
void user_hidd_set_protocol(int param);
int  user_hidd_get_protocol(void);
void user_hidd_set_report(int type, u8 *buf, int len);
int  user_hidd_get_report(int type, u8 *buf, int len);
void user_hidd_send_input(u8 *buf, int len);
void user_hidd_set_output(u8 *buf, int len);

extern u8 *hid_ibuf;


/* DATA & REPORT */
#define REPORT_OTHER     0x00
#define REPORT_INPUT     0x01
#define REPORT_OUTPUT    0x02
#define REPORT_FEATURE   0x03


/*************************************************************************************************/


void bt_wait_connect(u8 enable);
void bt_edr_start(const edr_init_cfg_t *cfg, int param);
void bt_edr_start_post(void);
void bt_edr_exit(int param);

int bt_comm_edr_status_event_handler(struct bt_event *bt);
int bt_comm_edr_hci_event_handler(struct bt_event *bt);


void cfg_file_parse(u8 idx);


#endif

