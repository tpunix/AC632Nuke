/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#if defined(__GNUC__)
#define  __ATTRIBUTELIST__(x) __attribute__(x)
#else
#define  __ATTRIBUTELIST__(x)  
#endif

#ifdef _MSC_VER  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#ifdef _MSC_VER
#define __UNALIGNED_LOAD__(type, align, op) *((type __unaligned*)op)
#else
#define __UNALIGNED_LOAD__(type, align, op) ((struct { type data __attribute__((packed, aligned(align))); }*)op)->data
#endif



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC___INDICATOR;
struct l_struct_struct_OC_hfp_con_core_data_t;
struct l_struct_struct_OC_hfp_con;
struct l_struct_struct_OC___HFP_PARSE_STA;
struct l_struct_struct_OC_hfp_stack_t;
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_hci_cmd_t;
struct l_struct_struct_OC_info;
struct l_struct_struct_OC__stack_config;
struct l_struct_union_OC_anon;
struct l_struct_struct_OC_hfp_ioctrl_str;
struct l_struct_struct_OC_resend_t;

/* Function definitions */
typedef uint32_t l_fptr_2(void);

typedef void l_fptr_5(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_6(uint8_t*, uint32_t);

typedef uint32_t l_fptr_10(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_8(uint32_t);

typedef void l_fptr_3(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_12(uint8_t);

typedef void l_fptr_1(uint8_t*, uint32_t, uint32_t);

typedef uint8_t l_fptr_13(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_7(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_4(int, ...);

typedef void l_fptr_9(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef void l_fptr_11(void);


struct l_struct_struct_OC_hfp_con* __hfp_conn_for_addr(uint8_t*);

struct l_struct_struct_OC_hfp_con* __hfp_conn_for_addr(uint8_t*);

struct l_struct_struct_OC_hfp_con* __hfp_conn_for_addr(uint8_t*);

/* Types Definitions */
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC___INDICATOR {
  uint8_t* field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_array_8_struct_AC_l_struct_struct_OC___INDICATOR {
  struct l_struct_struct_OC___INDICATOR array[8];
};
struct l_struct_struct_OC_hfp_con_core_data_t {
  struct l_array_6_uint8_t field0;
  uint16_t field1;
  uint32_t field2;
  uint16_t field3;
  uint8_t field4;
  uint8_t field5;
  struct l_array_3_uint8_t field6;
  uint8_t field7;
  struct l_array_3_uint8_t field8;
  struct l_array_8_struct_AC_l_struct_struct_OC___INDICATOR field9;
  struct l_array_8_struct_AC_l_struct_struct_OC___INDICATOR field10;
};
struct l_struct_struct_OC_hfp_con {
  struct l_struct_struct_OC_hfp_con_core_data_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC___HFP_PARSE_STA {
  uint8_t field0;
  uint16_t field1;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_array_248_uint8_t {
  uint8_t array[248];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_1_struct_AC_l_struct_struct_OC_hfp_con {
  struct l_struct_struct_OC_hfp_con array[1];
};
struct l_struct_struct_OC_hfp_stack_t {
  uint8_t field0;
  struct l_struct_struct_OC___HFP_PARSE_STA field1;
  struct l_array_248_uint8_t field2;
  struct l_array_24_uint8_t field3;
  struct l_array_1_struct_AC_l_struct_struct_OC_hfp_con field4;
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_4* field0;
  l_fptr_4* field1;
  l_fptr_4* field2;
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_1* field0;
  l_fptr_5* field1;
  l_fptr_6* field2;
  l_fptr_2* field3;
  l_fptr_7* field4;
  l_fptr_3* field5;
  l_fptr_2* field6;
  l_fptr_8* field7;
  l_fptr_9* field8;
  l_fptr_10* field9;
  l_fptr_11* field10;
  l_fptr_12* field11;
  l_fptr_13* field12;
  l_fptr_7* field13;
  l_fptr_2* field14;
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_13_uint8_t {
  uint8_t array[13];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_struct_struct_OC_hci_cmd_t {
  uint16_t field0;
  uint8_t* field1;
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_82_uint8_t {
  uint8_t array[82];
};
struct l_struct_struct_OC_info {
  uint8_t field0;
  uint8_t field1;
};
struct l_array_19_struct_AC_l_struct_struct_OC_info {
  struct l_struct_struct_OC_info array[19];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC__stack_config {
  uint32_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  uint16_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  uint32_t field9;
  uint8_t field10;
  uint8_t field11;
  uint8_t field12;
  uint8_t field13;
  struct l_array_6_uint8_t field14;
  uint8_t field15;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_8_struct_AC_l_array_15_uint8_t {
  struct l_array_15_uint8_t array[8];
};
struct l_array_19_struct_AC_l_array_22_uint8_t {
  struct l_array_22_uint8_t array[19];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_9_struct_AC_l_array_18_uint8_t {
  struct l_array_18_uint8_t array[9];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_9_struct_AC_l_array_28_uint8_t {
  struct l_array_28_uint8_t array[9];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_55_uint8_t {
  uint8_t array[55];
};
struct l_struct_union_OC_anon {
  uint32_t field0;
  struct l_array_28_uint8_t field1;
};
struct l_struct_struct_OC_hfp_ioctrl_str {
  struct l_array_6_uint8_t field0;
  uint32_t field1;
  uint8_t field2;
  struct l_struct_union_OC_anon field3;
};
struct l_struct_struct_OC_resend_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  /* void field2 */};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};

/* External Global Variable Declarations */
extern uint8_t more_hfp_cmd_support;
extern uint8_t user_at_cmd_send_support;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern uint8_t btstack_tws_debug_enable;
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC_hci_cmd_t btstack_update_flags;
extern uint8_t profile_debug_enable;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern struct l_struct_struct_OC_hci_cmd_t btstack_phonenum;
extern struct l_struct_struct_OC_hci_cmd_t btstack_phone_manufacturer;

/* Function Declarations */
uint8_t hfp_check_conn_for_rfcomm_id(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void siri_update_multi_bd_status(uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t update_multi_bd_status(uint8_t*, uint8_t, uint8_t);
void phone_date_and_time_feedback(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void put_buf(uint8_t*, uint32_t);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t at_cmd_analysis_by_user(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void hfp_profile_init(struct l_struct_struct_OC_hfp_stack_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_register_service_internal(uint8_t*, l_fptr_7*, uint8_t, uint16_t);
static void hfp_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t hfp_send_cmd_io_ctrl(struct l_struct_struct_OC_hfp_ioctrl_str*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_hfp_con* __hfp_conn_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
void rfcomm_create_channel_internal(uint8_t*, l_fptr_7*, struct l_array_6_uint8_t*, uint8_t);
static uint32_t send_battery_level(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t hfp_send_bcc_cmd(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hfp_monitor_connect_create(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void hfp_channel_open(uint8_t, uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t hfp_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void hfp_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t hfp_speak_gain_control(uint16_t, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow));
uint8_t check_hfp_resend_data(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
static uint32_t hfp_suspend(void) __ATTRIBUTELIST__((nothrow));
static uint32_t hfp_resume(void) __ATTRIBUTELIST__((nothrow));
static uint32_t hfp_release(void) __ATTRIBUTELIST__((nothrow));
static void __free_hfp_conn(struct l_struct_struct_OC_hfp_con*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t hfp_parse_rfcomm_data(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((noinline, nothrow));
static void hfp_init_process(uint16_t) __ATTRIBUTELIST__((nothrow));
void bt_flip_addr(uint8_t*, uint8_t*);
static struct l_struct_struct_OC_hfp_con* __create_hfp_conn(uint8_t*) __ATTRIBUTELIST__((nothrow));
void rfcomm_accept_connection_internal(uint16_t);
uint8_t hfp_volume_interface(uint8_t*, uint8_t);
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t rfcomm_send_internal(uint16_t, uint8_t*, uint16_t);
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
uint32_t stack_send_infor_2_user(struct l_struct_struct_OC_hci_cmd_t*, ...);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t remote_dev_company_ioctrl(uint8_t*, uint8_t, uint8_t);
uint8_t sco_connection_setup(uint8_t*, uint8_t);
uint32_t ASCII_StrToInt(uint8_t*, uint32_t*, uint32_t);
uint8_t* strcpy(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t atcmd_try_send(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t strlen(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void rfcomm_disconnect_internal(uint16_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t hfp_more_feature_hf_indicators __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t enhanced_voice_recognition_activation __ATTRIBUTE_WEAK__ __HIDDEN__ = 1;
static struct l_struct_struct_OC_hfp_stack_t* hfp_stack;
struct l_struct_struct_OC_bt_sleep bt_suspend_hfp_resumehfp_release __HIDDEN__ = { ((l_fptr_4*)hfp_suspend), ((l_fptr_4*)hfp_resume), ((l_fptr_4*)hfp_release) };
static struct l_array_14_uint8_t _OC_str = { "hfp gain %d\n\n" };
static struct l_array_12_uint8_t _OC_str_OC_1 = { "hfp ir %d\n\n" };
static struct l_array_12_uint8_t _OC_str_OC_2 = { "hfp pl %d\n\n" };
static struct l_array_13_uint8_t _OC_str_OC_3 = { "hfp scl %d\n\n" };
static struct l_array_16_uint8_t _OC_str_OC_4 = { "hfp_release ok\n" };
static struct l_array_30_uint8_t _OC_str_OC_6 = { "<BT-log> :hfp_speak_gain %d\n\n" };
static struct l_array_18_uint8_t _OC_str_OC_7 = { "wait phone setup\n" };
static struct l_array_6_uint8_t _OC_str_OC_8 = { "ERROR" };
static struct l_array_11_uint8_t _OC_str_OC_9 = { "+CME ERROR" };
static struct l_array_19_uint8_t _OC_str_OC_10 = { "try setup by self\n" };
static struct l_array_5_uint8_t _OC_str_OC_11 = { "RING" };
static struct l_array_82_uint8_t _OC_str_OC_12 = { "CIEVVGSVGMBRSFCINDCLCCCLIPCNUMBSIRCME ERRORAPLSIRIXAPLBVRACCLKCCWACHLDCGMIBCSBIND" };
static struct l_array_19_struct_AC_l_struct_struct_OC_info parse_atcmd_cmd_or_rsp_type_OC_infos = { { { 6, 4 }, { 11, 3 }, { 10, 3 }, { 4, 4 }, { 5, 4 }, { 7, 4 }, { 8, 4 }, { 14, 4 }, { 16, 4 }, { 12, 9 }, { 20, 7 }, { 21, 4 }, { 15, 4 }, { 22, 4 }, { 13, 4 }, { 23, 4 }, { 24, 4 }, { 17, 3 }, { 25, 4 } } };
static struct l_array_29_uint8_t _OC_str_OC_13 = { "[pro-info] : AG_FEATURE: %x\n" };
static struct l_array_17_uint8_t _OC_str_OC_14 = { "AG SUPPORT msbc\n" };
static struct l_array_22_uint8_t _OC_str_OC_15 = { "AG not  SUPPORT msbc\n" };
static struct l_array_8_struct_AC_l_array_15_uint8_t hfp_ind_str_buf = { { { "service\x00\x00\x00\x00\x00\x00\x00" }, { "call\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "callsetup\x00\x00\x00\x00\x00" }, { "call_setup\x00\x00\x00\x00" }, { "callheld\x00\x00\x00\x00\x00\x00" }, { "signal\x00\x00\x00\x00\x00\x00\x00\x00" }, { "roam\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "battchg\x00\x00\x00\x00\x00\x00\x00" } } };
static struct l_array_13_uint8_t _OC_str_OC_16 = { "send AT+BCS\n" };
static struct l_array_19_struct_AC_l_array_22_uint8_t hfp_function_cmd = { { { "ATA\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CHUP\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BLDN\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+VGS=10\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+VGM=10\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CLCC\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "ATD\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+IPHONEACCEV=1,1,9\r" }, { "AT+APLSIRI?\r\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BVRA=1\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BVRA=0\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CCLK?\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+VTS=0\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CHLD=2\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BIA=0,1\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CGMI?\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BCS=2\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CNUM\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BCC\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" } } };
static struct l_array_7_uint8_t _OC_str_OC_17 = { "iPhone" };
static struct l_array_27_uint8_t _OC_str_OC_18 = { "CGMI_CMD_DATA_PARSE_ERROE\n" };
static struct l_array_11_uint8_t _OC_str_OC_19 = { "Apple Inc." };
static struct l_array_31_uint8_t _OC_str_OC_20 = { "[pro-info] :is iphone flag %d\n" };
static struct l_array_30_uint8_t _OC_str_OC_21 = { "remote support indication:%d\n" };
static struct l_array_9_struct_AC_l_array_18_uint8_t hfp_SLC_init_cmd = { { { "AT+BRSF=16\r\x00\x00\x00\x00\x00\x00" }, { "AT+BAC=1,2\r\x00\x00\x00\x00\x00\x00" }, { "AT+CIND=?\r\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CIND?\r\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CMER=3,0,0,1\r\x00" }, { "AT+CHLD=?\r\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BIND=2\r\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BIND=?\r\x00\x00\x00\x00\x00\x00\x00" }, { "AT+BIND?\r\x00\x00\x00\x00\x00\x00\x00\x00" } } };
static struct l_array_9_struct_AC_l_array_28_uint8_t hfp_param_set_buf = { { { "AT+CMEE=1\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CLIP=1\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CCWA=1\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+NREC=0\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+CGMI?\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+VGS=07\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+VGM=07\r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" }, { "AT+XAPL=ABCD-1234-0100,10\r\x00" }, { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } } } };
static struct l_array_13_uint8_t _OC_str_OC_23 = { "\nAT+CMEE=1\r\n" };
static struct l_array_40_uint8_t _OC_str_OC_24 = { "<BT-log> :hfp_conn_init speak gain %d\n\n" };
static struct l_array_13_uint8_t _OC_str_OC_26 = { "AT+BRSF=011\r" };
static struct l_array_16_uint8_t _OC_str_OC_27 = { "hfp_send error\n" };
static struct l_array_48_uint8_t _OC_str_OC_28 = { "<BT-log> :HF_INDICATORS send_battery_level:%d\n\n" };
static struct l_array_15_uint8_t _OC_str_OC_29 = { "AT+BIEV=2,75\r\x00" };
static struct l_array_37_uint8_t _OC_str_OC_30 = { "<BT-log> :ip send_battery_level:%d\n\n" };
static struct l_array_28_uint8_t str = { "<BT-log> :\nhfp data err!!!\n" };
static struct l_array_55_uint8_t str_OC_31 = { "support new hfp battery feature,no need follow two cmd" };
static struct l_array_15_uint8_t str_OC_32 = { "jump bind step" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint32_t llvm_select_u32(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
  return r;
}
static __forceinline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
  uint16_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u24(uint32_t a, uint32_t b) {
  uint32_t r = (a + b) & 16777215;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint8_t llvm_udiv_u8(uint8_t a, uint8_t b) {
  uint8_t r = a / b;
  return r;
}
static __forceinline uint32_t llvm_udiv_u32(uint32_t a, uint32_t b) {
  uint32_t r = a / b;
  return r;
}
static __forceinline uint32_t llvm_udiv_u24(uint32_t a, uint32_t b) {
  uint32_t r = (a / b) & 16777215;
  return r;
}
static __forceinline uint8_t llvm_urem_u8(uint8_t a, uint8_t b) {
  uint8_t r = a % b;
  return r;
}
static __forceinline uint32_t llvm_urem_u32(uint32_t a, uint32_t b) {
  uint32_t r = a % b;
  return r;
}
static __forceinline uint32_t llvm_urem_u24(uint32_t a, uint32_t b) {
  uint32_t r = (a % b) & 16777215;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u24(uint32_t a, uint32_t b) {
  uint32_t r = (a >> b) & 16777215;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint8_t llvm_or_u8(uint8_t a, uint8_t b) {
  uint8_t r = a | b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

uint8_t hfp_check_conn_for_rfcomm_id(uint16_t _1) {
  struct l_struct_struct_OC_hfp_stack_t* _2;
  struct l_struct_struct_OC_hfp_con* _3;
  struct l_struct_struct_OC_hfp_con* _4;
  struct l_struct_struct_OC_hfp_con* _5;
  struct l_struct_struct_OC_hfp_con* _5__PHI_TEMPORARY;
  uint16_t _6;
  uint32_t _7;
  struct l_struct_struct_OC_hfp_con* _8;
  uint8_t _9;
  uint8_t _9__PHI_TEMPORARY;

  _2 = hfp_stack;
  _3 = (&_2->field4.array[((int32_t)0)]);
  _4 = (&_2->field4.array[((int32_t)1)]);
  _5__PHI_TEMPORARY = _3;   /* for PHI node */
  goto _10;

  do {     /* Syntactic loop '' to make GCC happy */
_10:
  _5 = _5__PHI_TEMPORARY;
  _6 = *((&_5->field0.field1));
  if ((((_6 == _1)&1))) {
    goto _11;
  } else {
    goto _12;
  }

_11:
  _7 = ((*(((uint32_t*)((&_5->field0.field6)))))&16777215);
  if (((((((_7 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _12;
  } else {
    _9__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _13;
  }

_12:
  _8 = (&_5[((int32_t)1)]);
  if ((((((uint32_t)_8) < ((uint32_t)_4))&1))) {
    _5__PHI_TEMPORARY = _8;   /* for PHI node */
    goto _10;
  } else {
    _9__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _13;
  }

  } while (1); /* end of syntactic loop '' */
_13:
  _9 = _9__PHI_TEMPORARY;
  return _9;
}


void siri_update_multi_bd_status(uint8_t _14, uint8_t* _15) {
  uint32_t _16;
  uint32_t _17;

  if ((((_14 == ((uint8_t)0))&1))) {
    goto _18;
  } else {
    goto _19;
  }

_19:
  _16 =  /*tail*/ update_multi_bd_status(_15, 12, -1);
  goto _20;

_18:
  _17 =  /*tail*/ update_multi_bd_status(_15, 13, -1);
  goto _20;

_20:
  return;
}


void phone_date_and_time_feedback(uint8_t* _21, uint16_t _22) {
  uint32_t _23;

   /*tail*/ put_buf(_21, (((uint32_t)(uint16_t)_22)));
  _23 =  /*tail*/ puts(_21);
}


uint32_t at_cmd_analysis_by_user(uint8_t* _24, uint16_t _25) {
  return 0;
}


void hfp_profile_init(struct l_struct_struct_OC_hfp_stack_t* _26, uint8_t _27) {
  uint8_t* _28;
  uint8_t* _29;
  uint8_t _30;

  hfp_stack = _26;
  _28 = memset(((&_26->field0)), 0, 416);
   /*tail*/ rfcomm_register_service_internal(((uint8_t*)/*NULL*/0), hfp_packet_handler, 4, 512);
  _29 = *((uint8_t**)(&hfp_stack));
  _30 = *_29;
  *_29 = (llvm_or_u8((llvm_and_u8(_30, -32)), (llvm_select_u8((((_27 != ((uint8_t)0))&1)), 18, 16))));
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_29[((int32_t)2)]))))) = 0;
  *((&_29[((int32_t)1)])) = 0;
}


static void hfp_packet_handler(uint8_t _31, uint16_t _32, uint8_t* _33, uint16_t _34) {
  struct l_array_6_uint8_t _35;    /* Address-exposed local */
  uint8_t _36;
  uint8_t* _37;
  struct l_struct_struct_OC_hfp_con* _38;
  struct l_struct_struct_OC_hfp_con* _39;
  struct l_struct_struct_OC_hfp_con* _40;
  struct l_struct_struct_OC_hfp_con* _40__PHI_TEMPORARY;
  uint8_t _41;
  uint8_t _42;
  uint16_t _43;
  uint8_t _44;
  struct l_struct_struct_OC_hfp_stack_t* _45;
  struct l_struct_struct_OC_hfp_con* _46;
  struct l_struct_struct_OC_hfp_con* _47;
  struct l_struct_struct_OC_hfp_con* _48;
  struct l_struct_struct_OC_hfp_con* _48__PHI_TEMPORARY;
  uint16_t _49;
  uint32_t _50;
  struct l_struct_struct_OC_hfp_con* _51;
  struct l_struct_struct_OC_hfp_con* _52;
  struct l_struct_struct_OC_hfp_con* _52__PHI_TEMPORARY;
  struct l_struct_struct_OC_hfp_stack_t* _53;
  struct l_struct_struct_OC_hfp_con* _54;
  struct l_struct_struct_OC_hfp_con* _55;
  struct l_struct_struct_OC_hfp_con* _56;
  struct l_struct_struct_OC_hfp_con* _56__PHI_TEMPORARY;
  uint16_t _57;
  uint32_t _58;
  struct l_struct_struct_OC_hfp_con* _59;
  struct l_struct_struct_OC_btstack_linked_item** _60;
  struct l_struct_struct_OC_btstack_linked_item* _61;
  uint16_t _62;
  uint16_t _63;
  uint32_t _64;
  uint32_t _65;
  uint16_t _66;
  struct l_struct_struct_OC_hfp_stack_t* _67;
  struct l_struct_struct_OC_hfp_con* _68;
  struct l_struct_struct_OC_hfp_con* _69;
  struct l_struct_struct_OC_hfp_con* _70;
  struct l_struct_struct_OC_hfp_con* _70__PHI_TEMPORARY;
  uint16_t _71;
  uint32_t _72;
  struct l_struct_struct_OC_hfp_con* _73;
  uint8_t _74;
  uint32_t _75;
  uint8_t _76;

  switch (_31) {
  default:
    goto _77;
  case ((uint8_t)4):
    goto _78;
  case ((uint8_t)7):
    goto _79;
  }

_78:
  _36 = *_33;
  switch (_36) {
  default:
    goto _77;
  case ((uint8_t)-126):
    goto _80;
  case ((uint8_t)128u):
    goto _81;
  case ((uint8_t)-127):
    goto _82;
  case ((uint8_t)-124):
    goto _83;
  case ((uint8_t)-119):
    goto _84;
  }

_80:
  _37 = (&_35.array[((int32_t)0)]);
  bt_flip_addr(_37, ((&_33[((int32_t)2)])));
  _38 = __hfp_conn_for_addr(_37);
  if ((((_38 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    goto _85;
  } else {
    _40__PHI_TEMPORARY = _38;   /* for PHI node */
    goto _86;
  }

_85:
  _39 = __create_hfp_conn(_37);
  if ((((_39 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    goto _87;
  } else {
    _40__PHI_TEMPORARY = _39;   /* for PHI node */
    goto _86;
  }

_86:
  _40 = _40__PHI_TEMPORARY;
  *((&_40->field0.field3)) = _32;
  _41 = *((&_33[((int32_t)9)]));
  _42 = *((&_33[((int32_t)10)]));
  _43 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_42)), 8)), (((uint16_t)(uint8_t)_41)));
  *((&_40->field0.field1)) = _43;
  rfcomm_accept_connection_internal(_43);
  goto _87;

_87:
  goto _77;

_81:
  _44 = *((&_33[((int32_t)2)]));
   /*tail*/ hfp_channel_open(_44, _32, _33, 1);
  goto _77;

_82:
  _45 = hfp_stack;
  _46 = (&_45->field4.array[((int32_t)0)]);
  _47 = (&_45->field4.array[((int32_t)1)]);
  _48__PHI_TEMPORARY = _46;   /* for PHI node */
  goto _88;

  do {     /* Syntactic loop '' to make GCC happy */
_88:
  _48 = _48__PHI_TEMPORARY;
  _49 = *((&_48->field0.field3));
  if ((((_49 == _32)&1))) {
    goto _89;
  } else {
    goto _90;
  }

_89:
  _50 = ((*(((uint32_t*)((&_48->field0.field6)))))&16777215);
  if (((((((_50 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _90;
  } else {
    _52__PHI_TEMPORARY = _48;   /* for PHI node */
    goto _91;
  }

_90:
  _51 = (&_48[((int32_t)1)]);
  if ((((((uint32_t)_51) < ((uint32_t)_47))&1))) {
    _48__PHI_TEMPORARY = _51;   /* for PHI node */
    goto _88;
  } else {
    _52__PHI_TEMPORARY = ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0);   /* for PHI node */
    goto _91;
  }

  } while (1); /* end of syntactic loop '' */
_91:
  _52 = _52__PHI_TEMPORARY;
   /*tail*/ __free_hfp_conn(_52, 1);
  goto _77;

_83:
  _53 = hfp_stack;
  _54 = (&_53->field4.array[((int32_t)0)]);
  _55 = (&_53->field4.array[((int32_t)1)]);
  _56__PHI_TEMPORARY = _54;   /* for PHI node */
  goto _92;

  do {     /* Syntactic loop '' to make GCC happy */
_92:
  _56 = _56__PHI_TEMPORARY;
  _57 = *((&_56->field0.field3));
  if ((((_57 == _32)&1))) {
    goto _93;
  } else {
    goto _94;
  }

_93:
  _58 = ((*(((uint32_t*)((&_56->field0.field6)))))&16777215);
  if (((((((_58 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _94;
  } else {
    goto _95;
  }

_94:
  _59 = (&_56[((int32_t)1)]);
  if ((((((uint32_t)_59) < ((uint32_t)_55))&1))) {
    _56__PHI_TEMPORARY = _59;   /* for PHI node */
    goto _92;
  } else {
    goto _96;
  }

  } while (1); /* end of syntactic loop '' */
_95:
  _60 = (&_56->field1);
  _61 = *_60;
  if ((((_61 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _97;
  } else {
    goto _98;
  }

_98:
  _62 = *((&_56->field0.field1));
  _63 = *(((uint16_t*)((&_61[((int32_t)1)]))));
  _64 =  /*tail*/ rfcomm_send_internal(_62, ((&(((struct l_struct_struct_OC_resend_t*)_61))->field2)), _63);
  if ((((_64 == 0u)&1))) {
    goto _99;
  } else {
    goto _77;
  }

_99:
  _65 =  /*tail*/ btstack_linked_list_remove(_60, _61);
   /*tail*/ free((((uint8_t*)_61)));
  goto _77;

_97:
  _66 = *((&_56->field0.field1));
  if ((((_66 == ((uint16_t)0))&1))) {
    goto _77;
  } else {
    goto _100;
  }

_100:
  if ((((((((((_58 & 2031616)&16777215)) != ((uint32_t)65536))&1)) & ((((((_58 & 4194304u)&16777215)) == ((uint32_t)0))&1)))&1))) {
    goto _77;
  } else {
    goto _101;
  }

_101:
   /*tail*/ hfp_init_process(_32);
  goto _77;

_84:
   /*tail*/ hfp_monitor_connect_create(_32, _33, /*UNDEF*/0);
  goto _77;

_79:
  _67 = hfp_stack;
  _68 = (&_67->field4.array[((int32_t)0)]);
  _69 = (&_67->field4.array[((int32_t)1)]);
  _70__PHI_TEMPORARY = _68;   /* for PHI node */
  goto _102;

  do {     /* Syntactic loop '' to make GCC happy */
_102:
  _70 = _70__PHI_TEMPORARY;
  _71 = *((&_70->field0.field3));
  if ((((_71 == _32)&1))) {
    goto _103;
  } else {
    goto _104;
  }

_103:
  _72 = ((*(((uint32_t*)((&_70->field0.field6)))))&16777215);
  if (((((((_72 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _104;
  } else {
    goto _105;
  }

_104:
  _73 = (&_70[((int32_t)1)]);
  if ((((((uint32_t)_73) < ((uint32_t)_69))&1))) {
    _70__PHI_TEMPORARY = _73;   /* for PHI node */
    goto _102;
  } else {
    goto _106;
  }

  } while (1); /* end of syntactic loop '' */
_106:
  _74 = l2cap_debug_enable;
  if ((((((int8_t)_74) < ((int8_t)((uint8_t)0)))&1))) {
    goto _107;
  } else {
    goto _108;
  }

_107:
  _75 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _108;

_108:
   /*tail*/ put_buf(_33, (((uint32_t)(uint16_t)_34)));
  goto _77;

_105:
  _76 =  /*tail*/ hfp_parse_rfcomm_data(_32, _33, _34);
  if ((((_76 == ((uint8_t)0))&1))) {
    goto _77;
  } else {
    goto _109;
  }

_109:
   /*tail*/ hfp_init_process(_32);
  goto _77;

_96:
  goto _77;

_77:
  return;
}


uint32_t hfp_send_cmd_io_ctrl(struct l_struct_struct_OC_hfp_ioctrl_str* _110) {
  struct l_array_35_uint8_t _111;    /* Address-exposed local */
  struct l_array_10_uint8_t _112;    /* Address-exposed local */
  struct l_array_15_uint8_t _113;    /* Address-exposed local */
  struct l_array_25_uint8_t _114;    /* Address-exposed local */
  struct l_struct_struct_OC_hfp_stack_t* _115;
  uint8_t* _116;
  uint32_t _117;
  uint8_t* _118;
  uint8_t* _119;
  struct l_struct_struct_OC_hfp_con* _120;
  uint32_t _121;
  uint8_t* _122;
  uint8_t _123;
  uint8_t* _124;
  uint8_t _125;
  uint8_t _126;
  uint32_t _127;
  uint32_t _128;
  uint32_t _128__PHI_TEMPORARY;
  uint8_t* _129;
  uint16_t _130;
  uint32_t _131;
  uint32_t _132;
  uint32_t _133;
  uint32_t _133__PHI_TEMPORARY;
  struct l_struct_struct_OC_hfp_con* _134;
  uint8_t _135;
  uint8_t _136;
  struct l_struct_struct_OC_hfp_con* _137;
  uint16_t _138;
  uint8_t _139;
  uint32_t _140;
  uint8_t* _141;
  struct l_struct_struct_OC_hfp_con* _142;
  uint8_t* _143;
  uint32_t _144;
  uint8_t* _145;
  uint8_t _146;
  uint8_t _146__PHI_TEMPORARY;
  uint16_t _147;
  uint32_t _148;
  uint32_t _149;
  uint32_t _150;
  uint32_t _150__PHI_TEMPORARY;
  uint8_t _151;
  uint8_t _152;
  uint8_t* _153;
  struct l_struct_struct_OC_hfp_con* _154;
  uint8_t* _155;
  uint8_t* _156;
  uint16_t _157;
  uint32_t _158;
  uint32_t _159;
  uint32_t _160;
  uint32_t _160__PHI_TEMPORARY;
  uint8_t* _161;
  uint8_t _162;
  uint8_t* _163;
  struct l_struct_struct_OC_hfp_con* _164;
  uint8_t* _165;
  uint8_t* _166;
  uint32_t _167;
  uint8_t* _168;
  uint16_t _169;
  uint32_t _170;
  uint32_t _171;
  uint32_t _172;
  uint32_t _172__PHI_TEMPORARY;
  struct l_struct_struct_OC_hfp_con* _173;
  uint32_t* _174;
  uint32_t _175;
  uint8_t _176;
  uint8_t _177;
  uint32_t _178;
  uint16_t _179;
  uint32_t _180;
  struct l_struct_struct_OC_user_interface_handler* _181;
  l_fptr_1* _182;
  uint32_t _183;
  struct l_struct_struct_OC_hfp_con* _184;
  uint8_t* _185;
  uint8_t _186;
  uint32_t _187;
  uint8_t _188;
  struct l_struct_struct_OC_hfp_con* _189;
  uint8_t _190;
  uint8_t* _191;
  uint16_t _192;
  uint32_t _193;
  uint32_t _194;
  uint32_t _194__PHI_TEMPORARY;

  _115 = hfp_stack;
  _116 = (&_115->field0);
  if ((((_115 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    _194__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _195;
  } else {
    goto _196;
  }

_196:
  _117 = *((&_110->field1));
  if ((((((uint32_t)_117) < ((uint32_t)16u))&1))) {
    goto _197;
  } else {
    goto _198;
  }

_197:
  _118 = (&_114.array[((int32_t)0)]);
  _119 = memset(_118, 0, 25);
  _120 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_120 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _133__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _199;
  } else {
    goto _200;
  }

_200:
  _121 = ((*(((uint32_t*)((&_120->field0.field6)))))&16777215);
  if ((((((uint32_t)(((_121 & 1835008)&16777215))) < ((uint32_t)((uint32_t)262144)))&1))) {
    _133__PHI_TEMPORARY = -1004;   /* for PHI node */
    goto _199;
  } else {
    goto _201;
  }

_201:
  switch (_117) {
  default:
    _133__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _199;
  case 0u:
    _128__PHI_TEMPORARY = _117;   /* for PHI node */
    goto _202;
  case 1u:
    _128__PHI_TEMPORARY = _117;   /* for PHI node */
    goto _202;
  case 2u:
    _128__PHI_TEMPORARY = _117;   /* for PHI node */
    goto _202;
  case 6u:
    goto _203;
  case 7u:
    goto _204;
  case 8u:
    goto _205;
  case 9u:
    goto _206;
  case 10u:
    goto _207;
  case 13u:
    goto _208;
  case 11u:
    goto _209;
  case 12u:
    goto _210;
  case 14u:
    goto _211;
  }

_203:
  switch ((((((uint8_t)(((llvm_lshr_u24(_121, 8))&16777215))))&15))) {
  default:
    _133__PHI_TEMPORARY = -1004;   /* for PHI node */
    goto _199;
  case ((uint8_t)2):
    _128__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _202;
  case ((uint8_t)3):
    _128__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _202;
  case ((uint8_t)6):
    _128__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _202;
  }

_204:
  _122 = (&_120->field0.field7);
  _123 = *_122;
  _124 = (&_120->field0.field0.array[((int32_t)0)]);
   /*tail*/ siri_update_multi_bd_status((llvm_and_u8(_123, 7)), _124);
  _125 = *_122;
   /*tail*/ bt_event_update_to_user(_124, 1129270784u, 36, (((uint32_t)(uint8_t)(llvm_and_u8(_125, 7)))));
  _126 = *_122;
  _127 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 36, (((uint32_t)(uint8_t)(llvm_and_u8(_126, 7)))), _124);
  _133__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _199;

_205:
  *((&_120->field0.field5)) = 8;
  _128__PHI_TEMPORARY = 9;   /* for PHI node */
  goto _202;

_206:
  *((&_120->field0.field5)) = 9;
  _128__PHI_TEMPORARY = 10;   /* for PHI node */
  goto _202;

_207:
  _128__PHI_TEMPORARY = 11;   /* for PHI node */
  goto _202;

_208:
  _128__PHI_TEMPORARY = 14;   /* for PHI node */
  goto _202;

_209:
  *((&_120->field0.field5)) = 11;
  _128__PHI_TEMPORARY = 15;   /* for PHI node */
  goto _202;

_210:
  _128__PHI_TEMPORARY = 17;   /* for PHI node */
  goto _202;

_211:
  *((&_120->field0.field5)) = 14;
  _128__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _202;

_202:
  _128 = _128__PHI_TEMPORARY;
  _129 = strcpy(_118, ((&hfp_function_cmd.array[((int32_t)_128)].array[((int32_t)0)])));
  _130 = *((&_120->field0.field1));
  _131 = strlen(_118);
  _132 = atcmd_try_send(_130, _118, (((uint16_t)_131)));
  _133__PHI_TEMPORARY = _132;   /* for PHI node */
  goto _199;

_199:
  _133 = _133__PHI_TEMPORARY;
  _194__PHI_TEMPORARY = _133;   /* for PHI node */
  goto _195;

_198:
  switch (_117) {
  default:
    _194__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _195;
  case 22u:
    goto _212;
  case 23u:
    goto _213;
  case 16u:
    goto _214;
  case 17u:
    goto _215;
  case 18u:
    goto _216;
  case 19u:
    goto _217;
  case 20u:
    goto _218;
  case 21u:
    goto _219;
  case 25u:
    goto _220;
  }

_212:
  _134 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_134 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    goto _221;
  } else {
    _194__PHI_TEMPORARY = -1002;   /* for PHI node */
    goto _195;
  }

_221:
  _135 = *((&_110->field2));
   /*tail*/ rfcomm_create_channel_internal(((uint8_t*)/*NULL*/0), hfp_packet_handler, ((&_110->field0)), _135);
  _194__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _195;

_213:
  _136 = more_hfp_cmd_support;
  if ((((_136 == ((uint8_t)0))&1))) {
    _194__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _195;
  } else {
    goto _222;
  }

_222:
  _137 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_137 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _194__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _195;
  } else {
    goto _223;
  }

_223:
  _138 = *((&_137->field0.field1));
   /*tail*/ rfcomm_disconnect_internal(_138);
  _194__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _195;

_214:
  _139 = more_hfp_cmd_support;
  if ((((_139 == ((uint8_t)0))&1))) {
    _194__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _195;
  } else {
    goto _224;
  }

_224:
  _140 = *((&_110->field3.field0));
  _141 = (&_113.array[((int32_t)0)]);
  _142 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_142 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _150__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _225;
  } else {
    goto _226;
  }

_226:
  _143 = memset(_141, 0, 15);
  _144 = *((&_142->field0.field2));
  if (((((_144 & 1) == 0u)&1))) {
    _150__PHI_TEMPORARY = -1003;   /* for PHI node */
    goto _225;
  } else {
    goto _227;
  }

_227:
  _145 = strcpy(_141, ((&hfp_function_cmd.array[((int32_t)13)].array[((int32_t)0)])));
  switch (_140) {
  default:
    goto _228;
  case 0u:
    goto _229;
  case 1u:
    _146__PHI_TEMPORARY = 49;   /* for PHI node */
    goto _230;
  case 2u:
    goto _231;
  case 3u:
    goto _232;
  case 6u:
    goto _233;
  case 5u:
    goto _234;
  }

_229:
  _146__PHI_TEMPORARY = 48;   /* for PHI node */
  goto _230;

_231:
  _146__PHI_TEMPORARY = 48;   /* for PHI node */
  goto _230;

_232:
  _146__PHI_TEMPORARY = 50;   /* for PHI node */
  goto _230;

_234:
  _146__PHI_TEMPORARY = 51;   /* for PHI node */
  goto _230;

_233:
  _146__PHI_TEMPORARY = 52;   /* for PHI node */
  goto _230;

_230:
  _146 = _146__PHI_TEMPORARY;
  *((&_113.array[((int32_t)8)])) = _146;
  goto _228;

_228:
  _147 = *((&_142->field0.field1));
  _148 = strlen(_141);
  _149 = atcmd_try_send(_147, _141, (((uint16_t)_148)));
  _150__PHI_TEMPORARY = _149;   /* for PHI node */
  goto _225;

_225:
  _150 = _150__PHI_TEMPORARY;
  _194__PHI_TEMPORARY = _150;   /* for PHI node */
  goto _195;

_215:
  _151 = more_hfp_cmd_support;
  if ((((_151 == ((uint8_t)0))&1))) {
    _194__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _195;
  } else {
    goto _235;
  }

_235:
  _152 = *((&_110->field2));
  _153 = (&_112.array[((int32_t)0)]);
  _154 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_154 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _160__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _236;
  } else {
    goto _237;
  }

_237:
  _155 = memset(_153, 0, 10);
  _156 = strcpy(_153, ((&hfp_function_cmd.array[((int32_t)12)].array[((int32_t)0)])));
  *((&_112.array[((int32_t)7)])) = _152;
  _157 = *((&_154->field0.field1));
  _158 = strlen(_153);
  _159 = atcmd_try_send(_157, _153, (((uint16_t)_158)));
  _160__PHI_TEMPORARY = _159;   /* for PHI node */
  goto _236;

_236:
  _160 = _160__PHI_TEMPORARY;
  _194__PHI_TEMPORARY = _160;   /* for PHI node */
  goto _195;

_216:
  _161 = ((uint8_t*)((&_110->field3)));
  _162 = *((&_110->field2));
  _163 = (&_111.array[((int32_t)0)]);
  _164 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_164 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _172__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _238;
  } else {
    goto _239;
  }

_239:
  _165 = memset(_163, 0, 35);
  _166 = strcpy(_163, ((&hfp_function_cmd.array[((int32_t)6)].array[((int32_t)0)])));
  _167 = ((uint32_t)(uint8_t)_162);
  if ((((_162 == ((uint8_t)0))&1))) {
    goto _240;
  } else {
    goto _241;
  }

_241:
  _168 = memcpy(((&_111.array[((int32_t)3)])), _161, _167);
  goto _240;

_240:
  *((&_111.array[((int32_t)(llvm_add_u32(_167, 3)))])) = 59;
  *((&_111.array[((int32_t)(llvm_add_u32(_167, 4)))])) = 13;
  _169 = *((&_164->field0.field1));
  _170 = strlen(_163);
  _171 = atcmd_try_send(_169, _163, (((uint16_t)_170)));
  _172__PHI_TEMPORARY = _171;   /* for PHI node */
  goto _238;

_238:
  _172 = _172__PHI_TEMPORARY;
  _194__PHI_TEMPORARY = _172;   /* for PHI node */
  goto _195;

_217:
  _173 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  _174 = ((uint32_t*)((&_173->field0.field6)));
  _175 = ((*_174)&16777215);
  _176 = *_116;
  if ((((((uint32_t)(((uint32_t)(uint32_t)((((((llvm_lshr_u24(_175, 16))&16777215)) & 31)&16777215))))) > ((uint32_t)(((uint32_t)(uint8_t)(llvm_and_u8(_176, 31))))))&1))) {
    goto _242;
  } else {
    _194__PHI_TEMPORARY = -1004;   /* for PHI node */
    goto _195;
  }

_242:
  _177 = *((&_110->field2));
  _178 = *((&_110->field3.field0));
  _179 = *((&_173->field0.field3));
  _180 =  /*tail*/ hfp_speak_gain_control(_179, _178, _177);
  if ((((((int32_t)_180) > ((int32_t)4294967295u))&1))) {
    goto _243;
  } else {
    _194__PHI_TEMPORARY = _180;   /* for PHI node */
    goto _195;
  }

_243:
  _181 = user_interface;
  _182 = *((&_181->field0));
  if ((((_182 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _194__PHI_TEMPORARY = _180;   /* for PHI node */
    goto _195;
  } else {
    goto _244;
  }

_244:
  _183 = ((*_174)&16777215);
   /*tail*/ _182(((&_173->field0.field0.array[((int32_t)0)])), 7, (((uint32_t)(uint32_t)(((_183 & 15)&16777215)))));
  _194__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _195;

_218:
  _184 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_184 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _194__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _195;
  } else {
    goto _245;
  }

_245:
  _185 = (&_184->field0.field7);
  _186 = *_185;
  *_185 = (llvm_and_u8(_186, -8));
  _194__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _195;

_219:
  _187 =  /*tail*/ send_battery_level(((&_110->field0.array[((int32_t)0)])));
  _194__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _195;

_220:
  _188 = user_at_cmd_send_support;
  if ((((_188 == ((uint8_t)0))&1))) {
    _194__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _195;
  } else {
    goto _246;
  }

_246:
  _189 =  /*tail*/ __hfp_conn_for_addr(((&_110->field0.array[((int32_t)0)])));
  if ((((_189 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _194__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _195;
  } else {
    goto _247;
  }

_247:
  _190 = *((&_110->field2));
  _191 = *(((uint8_t**)((&_110->field3))));
  _192 = *((&_189->field0.field1));
  _193 =  /*tail*/ atcmd_try_send(_192, _191, (((uint16_t)(uint8_t)_190)));
  _194__PHI_TEMPORARY = _193;   /* for PHI node */
  goto _195;

_195:
  _194 = _194__PHI_TEMPORARY;
  return _194;
}


static struct l_struct_struct_OC_hfp_con* __hfp_conn_for_addr(uint8_t* _248) {
  struct l_struct_struct_OC_hfp_stack_t* _249;
  struct l_struct_struct_OC_hfp_con* _250;
  struct l_struct_struct_OC_hfp_con* _251;
  struct l_struct_struct_OC_hfp_con* _252;
  struct l_struct_struct_OC_hfp_con* _252__PHI_TEMPORARY;
  uint32_t _253;
  uint32_t _254;
  struct l_struct_struct_OC_hfp_con* _255;
  struct l_struct_struct_OC_hfp_con* _256;
  struct l_struct_struct_OC_hfp_con* _256__PHI_TEMPORARY;

  _249 = hfp_stack;
  _250 = (&_249->field4.array[((int32_t)0)]);
  _251 = (&_249->field4.array[((int32_t)1)]);
  _252__PHI_TEMPORARY = _250;   /* for PHI node */
  goto _257;

  do {     /* Syntactic loop '' to make GCC happy */
_257:
  _252 = _252__PHI_TEMPORARY;
  _253 =  /*tail*/ memcmp(((&_252->field0.field0.array[((int32_t)0)])), _248, 6);
  if ((((_253 == 0u)&1))) {
    goto _258;
  } else {
    goto _259;
  }

_258:
  _254 = ((*(((uint32_t*)((&_252->field0.field6)))))&16777215);
  if (((((((_254 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _259;
  } else {
    _256__PHI_TEMPORARY = _252;   /* for PHI node */
    goto _260;
  }

_259:
  _255 = (&_252[((int32_t)1)]);
  if ((((((uint32_t)_255) < ((uint32_t)_251))&1))) {
    _252__PHI_TEMPORARY = _255;   /* for PHI node */
    goto _257;
  } else {
    _256__PHI_TEMPORARY = ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0);   /* for PHI node */
    goto _260;
  }

  } while (1); /* end of syntactic loop '' */
_260:
  _256 = _256__PHI_TEMPORARY;
  return _256;
}


static uint32_t send_battery_level(uint8_t* _261) {
  struct l_array_25_uint8_t _262;    /* Address-exposed local */
  uint8_t* _263;
  uint8_t* _264;
  struct l_struct_struct_OC_hfp_con* _265;
  uint8_t _266;
  uint8_t _267;
  struct l_struct_struct_OC_user_interface_handler* _268;
  l_fptr_2* _269;
  uint32_t _270;
  uint8_t _271;
  uint8_t _272;
  uint8_t _272__PHI_TEMPORARY;
  uint8_t _273;
  uint32_t _274;
  uint8_t* _275;
  uint8_t _276;
  uint8_t _277;
  uint8_t _277__PHI_TEMPORARY;
  uint32_t _278;
  uint32_t _278__PHI_TEMPORARY;
  uint32_t _279;
  uint32_t _279__PHI_TEMPORARY;
  uint32_t _280;
  uint32_t _280__PHI_TEMPORARY;
  uint8_t _281;
  uint32_t _282;
  uint32_t _282__PHI_TEMPORARY;
  uint8_t _283;
  uint8_t _283__PHI_TEMPORARY;
  uint32_t _284;
  uint32_t _284__PHI_TEMPORARY;
  uint32_t _285;
  uint32_t _285__PHI_TEMPORARY;
  struct l_struct_struct_OC_user_interface_handler* _286;
  l_fptr_2* _287;
  uint32_t _288;
  uint8_t _289;
  uint8_t _290;
  uint8_t _290__PHI_TEMPORARY;
  uint8_t _291;
  uint32_t _292;
  uint8_t* _293;
  uint8_t _294;
  uint8_t _295;
  uint8_t _295__PHI_TEMPORARY;
  uint32_t _296;
  uint32_t _296__PHI_TEMPORARY;
  uint8_t _297;
  uint8_t _297__PHI_TEMPORARY;
  uint8_t _298;
  uint8_t _298__PHI_TEMPORARY;
  uint8_t* _299;
  uint8_t _300;
  uint32_t _301;
  uint8_t* _302;
  uint8_t _303;
  uint16_t _304;
  uint32_t _305;
  uint32_t _306;
  uint32_t _307;
  uint32_t _307__PHI_TEMPORARY;

  _263 = (&_262.array[((int32_t)0)]);
  _264 = memset(_263, 0, 25);
  _265 =  /*tail*/ __hfp_conn_for_addr(_261);
  if ((((_265 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    _307__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _308;
  } else {
    goto _309;
  }

_309:
  _266 = *((&_265->field0.field8.array[((int32_t)2)]));
  if ((((_266 == ((uint8_t)3))&1))) {
    goto _310;
  } else {
    goto _311;
  }

_310:
  _267 = hfp_more_feature_hf_indicators;
  if ((((_267 == ((uint8_t)0))&1))) {
    _298__PHI_TEMPORARY = 100u;   /* for PHI node */
    goto _312;
  } else {
    goto _313;
  }

_313:
  _268 = user_interface;
  _269 = *((&_268->field14));
  if ((((_269 == ((l_fptr_2*)/*NULL*/0))&1))) {
    _272__PHI_TEMPORARY = 100u;   /* for PHI node */
    goto _314;
  } else {
    goto _315;
  }

_315:
  _270 =  /*tail*/ _269();
  _271 = llvm_select_u8((((((uint32_t)(_270 & 255)) > ((uint32_t)100u))&1)), 100u, (((uint8_t)_270)));
  _272__PHI_TEMPORARY = _271;   /* for PHI node */
  goto _314;

_314:
  _272 = _272__PHI_TEMPORARY;
  _273 = l2cap_debug_enable;
  if ((((((int8_t)_273) < ((int8_t)((uint8_t)0)))&1))) {
    goto _316;
  } else {
    goto _317;
  }

_316:
  _274 =  /*tail*/ printf(((&_OC_str_OC_28.array[((int32_t)0)])), (((uint32_t)(uint8_t)_272)));
  goto _317;

_317:
  _275 = memcpy(_263, ((&_OC_str_OC_29.array[((int32_t)0)])), 14);
  if ((((_272 == ((uint8_t)100))&1))) {
    goto _318;
  } else {
    goto _319;
  }

_318:
  *((&_262.array[((int32_t)10)])) = 49;
  *((&_262.array[((int32_t)11)])) = 48;
  _282__PHI_TEMPORARY = 12;   /* for PHI node */
  _283__PHI_TEMPORARY = 48;   /* for PHI node */
  _284__PHI_TEMPORARY = 13;   /* for PHI node */
  _285__PHI_TEMPORARY = 14;   /* for PHI node */
  goto _320;

_319:
  if ((((((uint8_t)_272) < ((uint8_t)((uint8_t)10)))&1))) {
    _277__PHI_TEMPORARY = _272;   /* for PHI node */
    _278__PHI_TEMPORARY = 10;   /* for PHI node */
    _279__PHI_TEMPORARY = 11;   /* for PHI node */
    _280__PHI_TEMPORARY = 12;   /* for PHI node */
    goto _321;
  } else {
    goto _322;
  }

_322:
  *((&_262.array[((int32_t)10)])) = (llvm_add_u8((llvm_udiv_u8(_272, 10)), 48));
  _276 = llvm_urem_u8(_272, 10);
  _277__PHI_TEMPORARY = _276;   /* for PHI node */
  _278__PHI_TEMPORARY = 11;   /* for PHI node */
  _279__PHI_TEMPORARY = 12;   /* for PHI node */
  _280__PHI_TEMPORARY = 13;   /* for PHI node */
  goto _321;

_321:
  _277 = _277__PHI_TEMPORARY;
  _278 = _278__PHI_TEMPORARY;
  _279 = _279__PHI_TEMPORARY;
  _280 = _280__PHI_TEMPORARY;
  _281 = llvm_add_u8(_277, 48);
  _282__PHI_TEMPORARY = _278;   /* for PHI node */
  _283__PHI_TEMPORARY = _281;   /* for PHI node */
  _284__PHI_TEMPORARY = _279;   /* for PHI node */
  _285__PHI_TEMPORARY = _280;   /* for PHI node */
  goto _320;

_320:
  _282 = _282__PHI_TEMPORARY;
  _283 = _283__PHI_TEMPORARY;
  _284 = _284__PHI_TEMPORARY;
  _285 = _285__PHI_TEMPORARY;
  *((&_262.array[((int32_t)_282)])) = _283;
  *((&_262.array[((int32_t)_284)])) = 13;
  _295__PHI_TEMPORARY = _272;   /* for PHI node */
  _296__PHI_TEMPORARY = _285;   /* for PHI node */
  _297__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _323;

_311:
  _286 = user_interface;
  _287 = *((&_286->field3));
  if ((((_287 == ((l_fptr_2*)/*NULL*/0))&1))) {
    _290__PHI_TEMPORARY = 9;   /* for PHI node */
    goto _324;
  } else {
    goto _325;
  }

_325:
  _288 =  /*tail*/ _287();
  _289 = llvm_select_u8((((((uint32_t)(_288 & 254)) > ((uint32_t)9u))&1)), 9, (((uint8_t)_288)));
  _290__PHI_TEMPORARY = _289;   /* for PHI node */
  goto _324;

_324:
  _290 = _290__PHI_TEMPORARY;
  _291 = l2cap_debug_enable;
  if ((((((int8_t)_291) < ((int8_t)((uint8_t)0)))&1))) {
    goto _326;
  } else {
    goto _327;
  }

_326:
  _292 =  /*tail*/ printf(((&_OC_str_OC_30.array[((int32_t)0)])), (((uint32_t)(uint8_t)_290)));
  goto _327;

_327:
  _293 = strcpy(_263, ((&hfp_function_cmd.array[((int32_t)7)].array[((int32_t)0)])));
  _294 = llvm_add_u8(_290, 48);
  _295__PHI_TEMPORARY = _290;   /* for PHI node */
  _296__PHI_TEMPORARY = 19;   /* for PHI node */
  _297__PHI_TEMPORARY = _294;   /* for PHI node */
  goto _323;

_323:
  _295 = _295__PHI_TEMPORARY;
  _296 = _296__PHI_TEMPORARY;
  _297 = _297__PHI_TEMPORARY;
  *((&_262.array[((int32_t)_296)])) = _297;
  _298__PHI_TEMPORARY = _295;   /* for PHI node */
  goto _312;

_312:
  _298 = _298__PHI_TEMPORARY;
  _299 = (&_265->field0.field4);
  _300 = *_299;
  if ((((_300 == ((uint8_t)-1))&1))) {
    _307__PHI_TEMPORARY = -1003;   /* for PHI node */
    goto _308;
  } else {
    goto _328;
  }

_328:
  if ((((_300 == _298)&1))) {
    goto _329;
  } else {
    goto _330;
  }

_329:
  _301 = ((*(((uint32_t*)((&_265->field0.field6)))))&16777215);
  _302 = *((uint8_t**)(&hfp_stack));
  _303 = *_302;
  if ((((((uint32_t)(((uint32_t)(uint32_t)((((((llvm_lshr_u24(_301, 16))&16777215)) & 31)&16777215))))) > ((uint32_t)(((uint32_t)(uint8_t)(llvm_and_u8(_303, 31))))))&1))) {
    _307__PHI_TEMPORARY = -1003;   /* for PHI node */
    goto _308;
  } else {
    goto _330;
  }

_330:
  *_299 = _298;
  _304 = *((&_265->field0.field1));
  _305 = strlen(_263);
  _306 = atcmd_try_send(_304, _263, (((uint16_t)_305)));
  _307__PHI_TEMPORARY = _306;   /* for PHI node */
  goto _308;

_308:
  _307 = _307__PHI_TEMPORARY;
  return _307;
}


uint32_t hfp_send_bcc_cmd(uint8_t* _331) {
  struct l_struct_struct_OC_hfp_ioctrl_str _332;    /* Address-exposed local */
  uint8_t* _333;
  uint32_t _334;

  _333 = memcpy(((&_332.field0.array[((int32_t)0)])), _331, 6);
  *((&_332.field1)) = 14;
  _334 = hfp_send_cmd_io_ctrl((&_332));
  return _334;
}


void hfp_monitor_connect_create(uint16_t _335, uint8_t* _336, uint16_t _337) {
  struct l_struct_struct_OC_hfp_stack_t* _338;
  struct l_struct_struct_OC_hfp_con* _339;
  struct l_struct_struct_OC_hfp_con* _340;
  struct l_struct_struct_OC_hfp_con* _341;
  struct l_struct_struct_OC_hfp_con* _341__PHI_TEMPORARY;
  uint16_t _342;
  uint32_t _343;
  struct l_struct_struct_OC_hfp_con* _344;
  struct l_struct_struct_OC_hfp_con* _345;
  struct l_struct_struct_OC_hfp_con* _345__PHI_TEMPORARY;
  struct l_struct_struct_OC_user_interface_handler* _346;
  l_fptr_3* _347;

   /*tail*/ hfp_channel_open(0, _335, _336, 0);
  _338 = hfp_stack;
  _339 = (&_338->field4.array[((int32_t)0)]);
  _340 = (&_338->field4.array[((int32_t)1)]);
  _341__PHI_TEMPORARY = _339;   /* for PHI node */
  goto _348;

  do {     /* Syntactic loop '' to make GCC happy */
_348:
  _341 = _341__PHI_TEMPORARY;
  _342 = *((&_341->field0.field3));
  if ((((_342 == _335)&1))) {
    goto _349;
  } else {
    goto _350;
  }

_349:
  _343 = ((*(((uint32_t*)((&_341->field0.field6)))))&16777215);
  if (((((((_343 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _350;
  } else {
    _345__PHI_TEMPORARY = _341;   /* for PHI node */
    goto _351;
  }

_350:
  _344 = (&_341[((int32_t)1)]);
  if ((((((uint32_t)_344) < ((uint32_t)_340))&1))) {
    _341__PHI_TEMPORARY = _344;   /* for PHI node */
    goto _348;
  } else {
    _345__PHI_TEMPORARY = ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0);   /* for PHI node */
    goto _351;
  }

  } while (1); /* end of syntactic loop '' */
_351:
  _345 = _345__PHI_TEMPORARY;
  _346 = user_interface;
  _347 = *((&_346->field5));
  if ((((_347 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _352;
  } else {
    goto _353;
  }

_353:
   /*tail*/ _347(((&_345->field0.field0.array[((int32_t)0)])), 1, 2, 0);
  goto _352;

_352:
  return;
}


static void hfp_channel_open(uint8_t _354, uint16_t _355, uint8_t* _356, uint8_t _357) {
  struct l_array_6_uint8_t _358;    /* Address-exposed local */
  uint8_t* _359;
  struct l_struct_struct_OC_hfp_con* _360;
  struct l_struct_struct_OC_hfp_con* _361;
  struct l_struct_struct_OC_hfp_con* _362;
  struct l_struct_struct_OC_hfp_con* _362__PHI_TEMPORARY;
  uint8_t _363;
  uint8_t _364;
  uint32_t* _365;
  uint32_t _366;

  _359 = (&_358.array[((int32_t)0)]);
  bt_flip_addr(_359, ((&_356[((int32_t)3)])));
  _360 = __hfp_conn_for_addr(_359);
  if ((((_360 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    goto _367;
  } else {
    goto _368;
  }

_367:
  if ((((_354 == ((uint8_t)0))&1))) {
    goto _369;
  } else {
    goto _370;
  }

_369:
  _361 = __create_hfp_conn(_359);
  if ((((_361 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    goto _370;
  } else {
    _362__PHI_TEMPORARY = _361;   /* for PHI node */
    goto _371;
  }

_368:
  if ((((_354 == ((uint8_t)0))&1))) {
    _362__PHI_TEMPORARY = _360;   /* for PHI node */
    goto _371;
  } else {
    goto _372;
  }

_372:
  __free_hfp_conn(_360, _357);
  goto _370;

_371:
  _362 = _362__PHI_TEMPORARY;
  *((&_362->field0.field3)) = _355;
  _363 = *((&_356[((int32_t)12)]));
  _364 = *((&_356[((int32_t)13)]));
  *((&_362->field0.field1)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_364)), 8)), (((uint16_t)(uint8_t)_363))));
  _365 = ((uint32_t*)((&_362->field0.field6)));
  _366 = ((*_365)&16777215);
  *_365 = ((((((((_366 & -2031617)&16777215)) | 65536)&16777215))) & 16777215);
  goto _370;

_370:
  return;
}


uint32_t hfp_core_data_for_send(uint8_t* _373, uint16_t _374) {
  struct l_struct_struct_OC_hfp_stack_t* _375;
  struct l_struct_struct_OC_hfp_con* _376;
  struct l_struct_struct_OC_hfp_con* _377;
  struct l_struct_struct_OC_hfp_con* _378;
  struct l_struct_struct_OC_hfp_con* _378__PHI_TEMPORARY;
  uint32_t* _379;
  uint32_t _380;
  struct l_struct_struct_OC_hfp_con* _381;
  uint8_t* _382;
  uint8_t _383;
  uint32_t _384;
  uint32_t _385;
  uint8_t _386;
  uint8_t _387;
  uint8_t _387__PHI_TEMPORARY;
  uint32_t _388;
  uint32_t _389;
  uint8_t _390;
  uint8_t _391;
  uint8_t _391__PHI_TEMPORARY;
  uint32_t _392;
  uint32_t _393;
  uint8_t _394;
  uint8_t _395;
  uint8_t _395__PHI_TEMPORARY;
  uint32_t _396;
  uint32_t _397;
  uint32_t _398;
  uint32_t _398__PHI_TEMPORARY;

  _375 = hfp_stack;
  if ((((_375 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    _398__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _399;
  } else {
    goto _400;
  }

_400:
  _376 = (&_375->field4.array[((int32_t)1)]);
  _377 = (&_375->field4.array[((int32_t)0)]);
  _378__PHI_TEMPORARY = _377;   /* for PHI node */
  goto _401;

  do {     /* Syntactic loop '' to make GCC happy */
_401:
  _378 = _378__PHI_TEMPORARY;
  _379 = ((uint32_t*)((&_378->field0.field6)));
  _380 = ((*_379)&16777215);
  if (((((((_380 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _402;
  } else {
    goto _403;
  }

_402:
  _381 = (&_378[((int32_t)1)]);
  if ((((((uint32_t)_381) < ((uint32_t)_376))&1))) {
    _378__PHI_TEMPORARY = _381;   /* for PHI node */
    goto _401;
  } else {
    goto _404;
  }

  } while (1); /* end of syntactic loop '' */
_403:
  _382 = memcpy(_373, ((&_378->field0.field0.array[((int32_t)0)])), 136);
  _383 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_383, 1)) == ((uint8_t)0))&1))) {
    _387__PHI_TEMPORARY = _383;   /* for PHI node */
    goto _405;
  } else {
    goto _406;
  }

_406:
  _384 = ((*_379)&16777215);
  _385 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint32_t)(((_384 & 15)&16777215)))));
  _386 = btstack_tws_debug_enable;
  _387__PHI_TEMPORARY = _386;   /* for PHI node */
  goto _405;

_405:
  _387 = _387__PHI_TEMPORARY;
  if (((((llvm_and_u8(_387, 1)) == ((uint8_t)0))&1))) {
    _391__PHI_TEMPORARY = _387;   /* for PHI node */
    goto _407;
  } else {
    goto _408;
  }

_408:
  _388 = *((&_378->field0.field2));
  _389 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), ((llvm_lshr_u32(_388, 3)) & 1));
  _390 = btstack_tws_debug_enable;
  _391__PHI_TEMPORARY = _390;   /* for PHI node */
  goto _407;

_407:
  _391 = _391__PHI_TEMPORARY;
  if (((((llvm_and_u8(_391, 1)) == ((uint8_t)0))&1))) {
    _395__PHI_TEMPORARY = _391;   /* for PHI node */
    goto _409;
  } else {
    goto _410;
  }

_410:
  _392 = ((*_379)&16777215);
  _393 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (((uint32_t)(uint32_t)((((((llvm_lshr_u24(_392, 8))&16777215)) & 15)&16777215)))));
  _394 = btstack_tws_debug_enable;
  _395__PHI_TEMPORARY = _394;   /* for PHI node */
  goto _409;

_409:
  _395 = _395__PHI_TEMPORARY;
  if (((((llvm_and_u8(_395, 1)) == ((uint8_t)0))&1))) {
    _398__PHI_TEMPORARY = 136;   /* for PHI node */
    goto _399;
  } else {
    goto _411;
  }

_411:
  _396 = ((*_379)&16777215);
  _397 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((uint32_t)(uint32_t)((((((llvm_lshr_u24(_396, 12))&16777215)) & 15)&16777215)))));
  _398__PHI_TEMPORARY = 136;   /* for PHI node */
  goto _399;

_404:
  _398__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _399;

_399:
  _398 = _398__PHI_TEMPORARY;
  return _398;
}


void hfp_core_data_for_set(uint8_t* _412, uint16_t _413) {
  struct l_struct_struct_OC_hfp_stack_t* _414;
  struct l_struct_struct_OC_hfp_con* _415;
  struct l_struct_struct_OC_hfp_con* _416;
  struct l_struct_struct_OC_hfp_con* _417;
  struct l_struct_struct_OC_hfp_con* _417__PHI_TEMPORARY;
  uint32_t* _418;
  uint32_t _419;
  struct l_struct_struct_OC_hfp_con* _420;
  uint8_t* _421;
  uint8_t* _422;
  uint32_t _423;
  uint32_t _423__PHI_TEMPORARY;
  uint8_t _424;
  uint8_t _425;
  uint32_t _426;
  struct l_struct_struct_OC_user_interface_handler* _427;
  l_fptr_1* _428;
  uint32_t* _429;
  uint32_t _430;
  struct l_struct_struct_OC_user_interface_handler* _431;
  l_fptr_1* _432;
  uint32_t _433;
  uint32_t _434;
  uint32_t _435;
  uint8_t _436;
  struct l_struct_struct_OC_user_interface_handler* _437;
  l_fptr_1* _438;
  uint16_t _439;
  uint32_t _440;
  uint32_t _441;
  uint8_t _442;
  uint8_t _443;
  uint8_t _443__PHI_TEMPORARY;
  uint8_t _444;
  struct l_struct_struct_OC_user_interface_handler* _445;
  l_fptr_1* _446;
  uint8_t _447;
  uint32_t _448;
  uint32_t _449;
  uint8_t _450;
  uint8_t _451;
  uint8_t _451__PHI_TEMPORARY;
  uint32_t _452;
  uint32_t _453;
  uint8_t _454;
  uint8_t _455;
  uint8_t _455__PHI_TEMPORARY;
  uint32_t _456;
  uint32_t _457;
  uint8_t _458;
  uint8_t _459;
  uint8_t _459__PHI_TEMPORARY;
  uint32_t _460;
  uint32_t _461;

  _414 = hfp_stack;
  if ((((_414 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    goto _462;
  } else {
    goto _463;
  }

_463:
  _415 = (&_414->field4.array[((int32_t)1)]);
  _416 = (&_414->field4.array[((int32_t)0)]);
  _417__PHI_TEMPORARY = _416;   /* for PHI node */
  goto _464;

  do {     /* Syntactic loop '' to make GCC happy */
_464:
  _417 = _417__PHI_TEMPORARY;
  _418 = ((uint32_t*)((&_417->field0.field6)));
  _419 = ((*_418)&16777215);
  if (((((((_419 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _465;
  } else {
    goto _466;
  }

_465:
  _420 = (&_417[((int32_t)1)]);
  if ((((((uint32_t)_420) < ((uint32_t)_415))&1))) {
    _417__PHI_TEMPORARY = _420;   /* for PHI node */
    goto _464;
  } else {
    goto _467;
  }

  } while (1); /* end of syntactic loop '' */
_466:
  _421 = (&_417->field0.field0.array[((int32_t)0)]);
  _422 = memcpy(_421, _412, 136);
  _423__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _468;

  do {     /* Syntactic loop '' to make GCC happy */
_468:
  _423 = _423__PHI_TEMPORARY;
  _424 = *((&_417->field0.field9.array[((int32_t)_423)].field1));
  __UNALIGNED_LOAD__(uint8_t*, 1, ((&_417->field0.field9.array[((int32_t)_423)].field0))) = ((&hfp_ind_str_buf.array[((int32_t)(((uint32_t)(uint8_t)_424)))].array[((int32_t)0)]));
  _425 = *((&_417->field0.field10.array[((int32_t)_423)].field1));
  __UNALIGNED_LOAD__(uint8_t*, 1, ((&_417->field0.field10.array[((int32_t)_423)].field0))) = ((&hfp_ind_str_buf.array[((int32_t)(((uint32_t)(uint8_t)_425)))].array[((int32_t)0)]));
  _426 = llvm_add_u32(_423, 1);
  if ((((_426 == 8u)&1))) {
    goto _469;
  } else {
    _423__PHI_TEMPORARY = _426;   /* for PHI node */
    goto _468;
  }

  } while (1); /* end of syntactic loop '' */
_469:
  _427 = user_interface;
  _428 = *((&_427->field0));
  if ((((_428 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _462;
  } else {
    goto _470;
  }

_470:
  _429 = (&_417->field0.field2);
  _430 = *_429;
   /*tail*/ _428(_421, 9, ((llvm_lshr_u32(_430, 3)) & 1));
  _431 = user_interface;
  _432 = *((&_431->field0));
  _433 = ((*_418)&16777215);
   /*tail*/ _432(_421, 7, (((uint32_t)(uint32_t)(((_433 & 15)&16777215)))));
  _434 = ((*_418)&16777215);
  _435 = ((llvm_lshr_u24(_434, 8))&16777215);
  _436 = ((uint8_t)(((llvm_lshr_u24(_434, 12))&16777215)));
  switch ((((((uint8_t)_435))&15))) {
  default:
    goto _471;
  case ((uint8_t)0):
    _443__PHI_TEMPORARY = _436;   /* for PHI node */
    goto _472;
  case ((uint8_t)5):
    _443__PHI_TEMPORARY = _436;   /* for PHI node */
    goto _472;
  }

_471:
  _437 = user_interface;
  _438 = *((&_437->field0));
  _439 = *((&_417->field0.field3));
  _440 =  /*tail*/ hfp_speak_gain_control(_439, 3, 0);
   /*tail*/ _438(_421, (((uint32_t)(uint32_t)(((_435 & 15)&16777215)))), _440);
  _441 = ((*_418)&16777215);
  _442 = ((uint8_t)(((llvm_lshr_u24(_441, 12))&16777215)));
  _443__PHI_TEMPORARY = _442;   /* for PHI node */
  goto _472;

_472:
  _443 = _443__PHI_TEMPORARY;
  _444 = llvm_and_u8(_443, 15);
  if ((((_444 == ((uint8_t)0))&1))) {
    goto _473;
  } else {
    goto _474;
  }

_474:
  _445 = user_interface;
  _446 = *((&_445->field0));
   /*tail*/ _446(_421, 8, (((uint32_t)(uint8_t)_444)));
  goto _473;

_473:
  _447 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_447, 1)) == ((uint8_t)0))&1))) {
    _451__PHI_TEMPORARY = _447;   /* for PHI node */
    goto _475;
  } else {
    goto _476;
  }

_476:
  _448 = ((*_418)&16777215);
  _449 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint32_t)(((_448 & 15)&16777215)))));
  _450 = btstack_tws_debug_enable;
  _451__PHI_TEMPORARY = _450;   /* for PHI node */
  goto _475;

_475:
  _451 = _451__PHI_TEMPORARY;
  if (((((llvm_and_u8(_451, 1)) == ((uint8_t)0))&1))) {
    _455__PHI_TEMPORARY = _451;   /* for PHI node */
    goto _477;
  } else {
    goto _478;
  }

_478:
  _452 = *_429;
  _453 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), ((llvm_lshr_u32(_452, 3)) & 1));
  _454 = btstack_tws_debug_enable;
  _455__PHI_TEMPORARY = _454;   /* for PHI node */
  goto _477;

_477:
  _455 = _455__PHI_TEMPORARY;
  if (((((llvm_and_u8(_455, 1)) == ((uint8_t)0))&1))) {
    _459__PHI_TEMPORARY = _455;   /* for PHI node */
    goto _479;
  } else {
    goto _480;
  }

_480:
  _456 = ((*_418)&16777215);
  _457 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (((uint32_t)(uint32_t)((((((llvm_lshr_u24(_456, 8))&16777215)) & 15)&16777215)))));
  _458 = btstack_tws_debug_enable;
  _459__PHI_TEMPORARY = _458;   /* for PHI node */
  goto _479;

_479:
  _459 = _459__PHI_TEMPORARY;
  if (((((llvm_and_u8(_459, 1)) == ((uint8_t)0))&1))) {
    goto _462;
  } else {
    goto _481;
  }

_481:
  _460 = ((*_418)&16777215);
  _461 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((uint32_t)(uint32_t)((((((llvm_lshr_u24(_460, 12))&16777215)) & 15)&16777215)))));
  goto _462;

_467:
  goto _462;

_462:
  return;
}


static uint32_t hfp_speak_gain_control(uint16_t _482, uint32_t _483, uint8_t _484) {
  struct l_array_25_uint8_t _485;    /* Address-exposed local */
  uint8_t* _486;
  uint8_t* _487;
  struct l_struct_struct_OC_hfp_stack_t* _488;
  struct l_struct_struct_OC_hfp_con* _489;
  struct l_struct_struct_OC_hfp_con* _490;
  struct l_struct_struct_OC_hfp_con* _491;
  struct l_struct_struct_OC_hfp_con* _491__PHI_TEMPORARY;
  uint16_t _492;
  uint32_t* _493;
  uint32_t _494;
  struct l_struct_struct_OC_hfp_con* _495;
  uint8_t _496;
  uint32_t _497;
  uint32_t _498;
  uint8_t _499;
  uint32_t _500;
  uint32_t _501;
  uint32_t _502;
  uint32_t _503;
  uint32_t _504;
  uint32_t _504__PHI_TEMPORARY;
  uint8_t* _505;
  uint32_t _506;
  uint32_t _507;
  uint16_t _508;
  uint32_t _509;
  uint32_t _510;
  uint32_t _511;
  uint32_t _511__PHI_TEMPORARY;

  _486 = (&_485.array[((int32_t)0)]);
  _487 = memset(_486, 0, 25);
  _488 = hfp_stack;
  _489 = (&_488->field4.array[((int32_t)0)]);
  _490 = (&_488->field4.array[((int32_t)1)]);
  _491__PHI_TEMPORARY = _489;   /* for PHI node */
  goto _512;

  do {     /* Syntactic loop '' to make GCC happy */
_512:
  _491 = _491__PHI_TEMPORARY;
  _492 = *((&_491->field0.field3));
  if ((((_492 == _482)&1))) {
    goto _513;
  } else {
    goto _514;
  }

_513:
  _493 = ((uint32_t*)((&_491->field0.field6)));
  _494 = ((*_493)&16777215);
  if (((((((_494 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _514;
  } else {
    goto _515;
  }

_514:
  _495 = (&_491[((int32_t)1)]);
  if ((((((uint32_t)_495) < ((uint32_t)_490))&1))) {
    _491__PHI_TEMPORARY = _495;   /* for PHI node */
    goto _512;
  } else {
    goto _516;
  }

  } while (1); /* end of syntactic loop '' */
_515:
  switch (_483) {
  default:
    _511__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _517;
  case 0u:
    goto _518;
  case 1u:
    goto _519;
  case 2u:
    goto _520;
  case 3u:
    goto _521;
  }

_518:
  _496 = ((uint8_t)_494);
  if (((((llvm_and_u8(_496, 15)) == ((uint8_t)15))&1))) {
    goto _522;
  } else {
    goto _523;
  }

_523:
  _497 = (((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8(_496, 1)), 15))))&16777215)) | (((_494 & -16)&16777215)))&16777215);
  _504__PHI_TEMPORARY = _497;   /* for PHI node */
  goto _524;

_522:
  _498 = ((_494 | 15)&16777215);
  _504__PHI_TEMPORARY = _498;   /* for PHI node */
  goto _524;

_519:
  _499 = ((uint8_t)_494);
  if (((((llvm_and_u8(_499, 15)) == ((uint8_t)0))&1))) {
    goto _525;
  } else {
    goto _526;
  }

_526:
  _500 = (((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8(_499, 15)), 15))))&16777215)) | (((_494 & -16)&16777215)))&16777215);
  _504__PHI_TEMPORARY = _500;   /* for PHI node */
  goto _524;

_520:
  if ((((((uint8_t)_484) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _527;
  } else {
    goto _528;
  }

_527:
  _501 = ((_494 | 15)&16777215);
  _504__PHI_TEMPORARY = _501;   /* for PHI node */
  goto _524;

_528:
  _502 = (((((_494 & -16)&16777215)) | (((((uint32_t)(uint8_t)(llvm_and_u8(_484, 15))))&16777215)))&16777215);
  _504__PHI_TEMPORARY = _502;   /* for PHI node */
  goto _524;

_521:
  _503 = ((uint32_t)(uint32_t)(((_494 & 15)&16777215)));
  _511__PHI_TEMPORARY = _503;   /* for PHI node */
  goto _517;

_524:
  _504 = ((_504__PHI_TEMPORARY)&16777215);
  *_493 = ((_504) & 16777215);
  goto _525;

_525:
  _505 = strcpy(_486, ((&hfp_function_cmd.array[((int32_t)3)].array[((int32_t)0)])));
  _506 = ((*_493)&16777215);
  _507 = ((_506 & 15)&16777215);
  *((&_485.array[((int32_t)7)])) = (llvm_or_u8((((uint8_t)(((llvm_udiv_u24(_507, 10))&16777215)))), 48));
  *((&_485.array[((int32_t)8)])) = (llvm_or_u8((((uint8_t)(((llvm_urem_u24(_507, 10))&16777215)))), 48));
  _508 = *((&_491->field0.field1));
  _509 = strlen(_486);
  _510 = atcmd_try_send(_508, _486, (((uint16_t)_509)));
  _511__PHI_TEMPORARY = _510;   /* for PHI node */
  goto _517;

_516:
  _511__PHI_TEMPORARY = -1000;   /* for PHI node */
  goto _517;

_517:
  _511 = _511__PHI_TEMPORARY;
  return _511;
}


uint8_t check_hfp_resend_data(void) {
  struct l_struct_struct_OC_hfp_stack_t* _529;
  struct l_struct_struct_OC_hfp_con* _530;
  struct l_struct_struct_OC_hfp_con* _531;
  struct l_struct_struct_OC_hfp_con* _532;
  struct l_struct_struct_OC_hfp_con* _532__PHI_TEMPORARY;
  uint32_t _533;
  struct l_struct_struct_OC_btstack_linked_item* _534;
  struct l_struct_struct_OC_hfp_con* _535;
  uint8_t _536;
  uint8_t _536__PHI_TEMPORARY;
  uint8_t _537;
  uint8_t _537__PHI_TEMPORARY;

  _529 = hfp_stack;
  if ((((_529 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    _537__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _538;
  } else {
    goto _539;
  }

_539:
  _530 = (&_529->field4.array[((int32_t)1)]);
  _531 = (&_529->field4.array[((int32_t)0)]);
  _532__PHI_TEMPORARY = _531;   /* for PHI node */
  goto _540;

  do {     /* Syntactic loop '' to make GCC happy */
_540:
  _532 = _532__PHI_TEMPORARY;
  _533 = ((*(((uint32_t*)((&_532->field0.field6)))))&16777215);
  if (((((((_533 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _541;
  } else {
    goto _542;
  }

_542:
  _534 = *((&_532->field1));
  if ((((_534 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _541;
  } else {
    _536__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _543;
  }

_541:
  _535 = (&_532[((int32_t)1)]);
  if ((((((uint32_t)_535) < ((uint32_t)_530))&1))) {
    _532__PHI_TEMPORARY = _535;   /* for PHI node */
    goto _540;
  } else {
    _536__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _543;
  }

  } while (1); /* end of syntactic loop '' */
_543:
  _536 = _536__PHI_TEMPORARY;
  _537__PHI_TEMPORARY = _536;   /* for PHI node */
  goto _538;

_538:
  _537 = _537__PHI_TEMPORARY;
  return _537;
}


static uint32_t hfp_suspend(void) {
  struct l_struct_struct_OC_hfp_stack_t* _544;
  uint8_t* _545;
  uint8_t _546;

  _544 = hfp_stack;
  if ((((_544 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    goto _547;
  } else {
    goto _548;
  }

_548:
  _545 = (&_544->field0);
  _546 = *_545;
  *_545 = (llvm_or_u8(_546, 32));
  goto _547;

_547:
  return 0;
}


static uint32_t hfp_resume(void) {
  struct l_struct_struct_OC_hfp_stack_t* _549;
  uint8_t* _550;
  uint8_t _551;

  _549 = hfp_stack;
  if ((((_549 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    goto _552;
  } else {
    goto _553;
  }

_553:
  _550 = (&_549->field0);
  _551 = *_550;
  *_550 = (llvm_and_u8(_551, -33));
  goto _552;

_552:
  return 0;
}


static uint32_t hfp_release(void) {
  struct l_struct_struct_OC_hfp_stack_t* _554;
  struct l_struct_struct_OC_hfp_con* _555;
  struct l_struct_struct_OC_hfp_con* _556;
  struct l_struct_struct_OC_hfp_con* _557;
  struct l_struct_struct_OC_hfp_con* _557__PHI_TEMPORARY;
  uint32_t _558;
  struct l_struct_struct_OC_hfp_con* _559;
  uint32_t _560;
  uint8_t* _561;
  uint8_t _562;
  uint32_t _563;
  uint32_t _563__PHI_TEMPORARY;

  _554 = hfp_stack;
  if ((((_554 == ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0))&1))) {
    _563__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _564;
  } else {
    goto _565;
  }

_565:
  _555 = (&_554->field4.array[((int32_t)1)]);
  _556 = (&_554->field4.array[((int32_t)0)]);
  _557__PHI_TEMPORARY = _556;   /* for PHI node */
  goto _566;

  do {     /* Syntactic loop '' to make GCC happy */
_566:
  _557 = _557__PHI_TEMPORARY;
  _558 = ((*(((uint32_t*)((&_557->field0.field6)))))&16777215);
  _559 = (&_557[((int32_t)1)]);
  if (((((((_558 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _567;
  } else {
    goto _568;
  }

_567:
  if ((((((uint32_t)_559) < ((uint32_t)_555))&1))) {
    _557__PHI_TEMPORARY = _559;   /* for PHI node */
    goto _566;
  } else {
    goto _569;
  }

  } while (1); /* end of syntactic loop '' */
_569:
  _560 =  /*tail*/ puts(((&_OC_str_OC_4.array[((int32_t)0)])));
  _561 = *((uint8_t**)(&hfp_stack));
  _562 = *_561;
  *_561 = (llvm_and_u8(_562, -33));
  hfp_stack = ((struct l_struct_struct_OC_hfp_stack_t*)/*NULL*/0);
  _563__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _564;

_568:
  _563__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _564;

_564:
  _563 = _563__PHI_TEMPORARY;
  return _563;
}


static void __free_hfp_conn(struct l_struct_struct_OC_hfp_con* _570, uint8_t _571) {
  struct l_struct_struct_OC_user_interface_handler* _572;
  l_fptr_3* _573;
  uint32_t* _574;
  uint32_t _575;
  uint8_t _576;
  uint8_t _577;
  uint32_t _578;
  uint32_t _579;
  uint8_t _580;
  uint8_t _581;
  uint8_t _581__PHI_TEMPORARY;
  uint8_t* _582;
  uint8_t _583;
  uint8_t* _584;
  struct l_struct_struct_OC_btstack_linked_item** _585;
  struct l_struct_struct_OC_btstack_linked_item* _586;
  struct l_struct_struct_OC_btstack_linked_item* _587;
  struct l_struct_struct_OC_btstack_linked_item* _587__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _588;
  uint32_t _589;
  uint32_t _590;
  uint8_t* _591;
  uint8_t _592;
  uint8_t* _593;

  if ((((_570 == ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0))&1))) {
    goto _594;
  } else {
    goto _595;
  }

_595:
  _572 = user_interface;
  _573 = *((&_572->field5));
  if ((((_573 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _596;
  } else {
    goto _597;
  }

_597:
   /*tail*/ _573(((&_570->field0.field0.array[((int32_t)0)])), 0, 2, _571);
  goto _596;

_596:
  _574 = ((uint32_t*)((&_570->field0.field6)));
  _575 = ((*_574)&16777215);
  *_574 = (((((_575 & -2097153)&16777215))) & 16777215);
  _576 = l2cap_debug_enable;
  _577 = ((uint8_t)_575);
  if ((((((int8_t)_576) < ((int8_t)((uint8_t)0)))&1))) {
    goto _598;
  } else {
    _581__PHI_TEMPORARY = _577;   /* for PHI node */
    goto _599;
  }

_598:
  _578 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), (((uint32_t)(uint32_t)(((_575 & 15)&16777215)))));
  _579 = ((*_574)&16777215);
  _580 = ((uint8_t)_579);
  _581__PHI_TEMPORARY = _580;   /* for PHI node */
  goto _599;

_599:
  _581 = _581__PHI_TEMPORARY;
  _582 = (&_570->field0.field0.array[((int32_t)0)]);
  _583 =  /*tail*/ hfp_volume_interface(_582, (llvm_and_u8(_581, 15)));
  _584 = memset(_582, 0, 6);
  _585 = (&_570->field1);
  _586 = *_585;
  if ((((_586 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _600;
  } else {
    goto _601;
  }

_601:
  _587__PHI_TEMPORARY = _586;   /* for PHI node */
  goto _602;

  do {     /* Syntactic loop '' to make GCC happy */
_602:
  _587 = _587__PHI_TEMPORARY;
  _588 = *((&_587->field0));
  _589 =  /*tail*/ btstack_linked_list_remove(_585, _587);
   /*tail*/ free((((uint8_t*)_587)));
  if ((((_588 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _603;
  } else {
    _587__PHI_TEMPORARY = _588;   /* for PHI node */
    goto _602;
  }

  } while (1); /* end of syntactic loop '' */
_603:
  goto _600;

_600:
  _590 = ((*_574)&16777215);
  __UNALIGNED_LOAD__(uint64_t, 2, (((uint64_t*)((&_570->field0.field1))))) = 0;
  *((&_570->field0.field4)) = -1;
  _591 = (&_570->field0.field7);
  _592 = *_591;
  *_591 = (llvm_and_u8(_592, -8));
  *_574 = ((((((((_590 & 10547200u)&16777215)) | 255)&16777215))) & 16777215);
  _593 = memset((((uint8_t*)((&_570->field0.field9.array[((int32_t)0)])))), 252, 112);
  goto _594;

_594:
  return;
}


static uint8_t hfp_parse_rfcomm_data(uint16_t _604, uint8_t* _605, uint16_t _606) {
  struct l_array_25_uint8_t _607;    /* Address-exposed local */
  uint32_t _608;    /* Address-exposed local */
  uint32_t _609;    /* Address-exposed local */
  uint32_t _610;    /* Address-exposed local */
  uint32_t _611;    /* Address-exposed local */
  uint32_t _612;
  struct l_struct_struct_OC_hfp_stack_t* _613;
  uint16_t* _614;
  uint16_t _615;
  uint32_t _616;
  uint8_t* _617;
  uint16_t _618;
  uint8_t _619;
  uint8_t _620;
  uint8_t* _621;
  uint8_t* _622;
  uint8_t _623;
  uint8_t* _624;
  uint8_t* _625;
  uint8_t* _626;
  uint8_t* _627;
  struct l_struct_struct_OC_hfp_stack_t* _628;
  struct l_struct_struct_OC_hfp_stack_t* _628__PHI_TEMPORARY;
  uint32_t _629;
  uint32_t _629__PHI_TEMPORARY;
  uint8_t _630;
  uint8_t _630__PHI_TEMPORARY;
  uint32_t _631;
  uint32_t _631__PHI_TEMPORARY;
  uint8_t* _632;
  uint8_t _633;
  uint32_t _634;
  uint8_t _635;
  uint32_t _636;
  uint32_t _637;
  uint32_t _637__PHI_TEMPORARY;
  uint8_t _638;
  uint32_t _639;
  uint8_t _640;
  uint32_t _641;
  uint8_t _642;
  uint8_t _642__PHI_TEMPORARY;
  struct l_struct_struct_OC_hfp_stack_t* _643;
  uint16_t* _644;
  uint16_t _645;
  struct l_struct_struct_OC_hfp_con* _646;
  struct l_struct_struct_OC_hfp_con* _647;
  struct l_struct_struct_OC_hfp_con* _648;
  struct l_struct_struct_OC_hfp_con* _648__PHI_TEMPORARY;
  uint16_t _649;
  uint32_t* _650;
  uint32_t _651;
  struct l_struct_struct_OC_hfp_con* _652;
  uint8_t* _653;
  uint8_t _654;
  uint8_t _655;
  uint8_t* _656;
  uint8_t _657;
  uint8_t* _658;
  uint8_t _659;
  uint8_t _660;
  uint32_t _661;
  uint8_t _662;
  uint8_t _663;
  uint8_t _663__PHI_TEMPORARY;
  uint8_t* _664;
  uint8_t _665;
  uint8_t* _666;
  uint32_t _667;
  uint8_t _668;
  uint8_t _669;
  uint32_t _670;
  uint8_t _671;
  uint8_t _672;
  uint8_t _672__PHI_TEMPORARY;
  uint8_t* _673;
  uint8_t _674;
  uint8_t* _675;
  uint32_t _676;
  uint8_t _677;
  uint8_t _678;
  uint32_t _679;
  uint32_t _680;
  uint32_t _681;
  uint8_t* _682;
  uint8_t _683;
  uint8_t* _684;
  uint8_t _685;
  uint8_t* _686;
  uint8_t _687;
  uint8_t _688;
  uint8_t _689;
  uint8_t _689__PHI_TEMPORARY;
  uint8_t _690;
  uint32_t _691;
  uint32_t _692;
  uint8_t* _693;
  uint8_t _694;
  uint8_t _695;
  uint32_t _696;
  uint8_t _697;
  uint32_t _698;
  uint8_t _699;
  uint8_t* _700;
  uint8_t _701;
  uint8_t* _702;
  uint32_t _703;
  uint8_t _704;
  uint32_t _705;
  uint32_t _706;
  uint8_t* _707;
  uint8_t* _708;
  uint8_t _709;
  uint32_t _710;
  uint32_t _710__PHI_TEMPORARY;
  uint8_t* _711;
  uint8_t* _711__PHI_TEMPORARY;
  uint8_t _712;
  uint32_t _713;
  uint32_t _714;
  uint8_t _715;
  uint8_t _716;
  uint8_t* _717;
  uint32_t _718;
  uint8_t _719;
  uint8_t _719__PHI_TEMPORARY;
  uint8_t* _720;
  uint8_t _721;
  uint32_t _722;
  uint16_t _723;
  struct l_struct_struct_OC_hfp_con* _724;
  struct l_struct_struct_OC_hfp_con* _724__PHI_TEMPORARY;
  uint16_t* _725;
  uint16_t _726;
  uint32_t* _727;
  uint32_t _728;
  struct l_struct_struct_OC_hfp_con* _729;
  uint8_t _730;
  uint32_t _731;
  uint32_t _732;
  uint32_t _732__PHI_TEMPORARY;
  uint8_t* _733;
  uint8_t _734;
  uint32_t _735;
  uint32_t _736;
  uint32_t _736__PHI_TEMPORARY;
  uint32_t _737;
  uint8_t _738;
  uint32_t _739;
  uint32_t _740;
  uint32_t _740__PHI_TEMPORARY;
  uint32_t _741;
  uint32_t* _742;
  struct l_struct_struct_OC_user_interface_handler* _743;
  l_fptr_1* _744;
  uint8_t _745;
  uint32_t _746;
  uint32_t _747;
  uint32_t _748;
  uint8_t _749;
  uint32_t _750;
  struct l_struct_struct_OC__stack_config* _751;
  uint32_t _752;
  uint32_t _753;
  uint32_t _754;
  uint32_t _755;
  uint8_t _756;
  uint8_t _757;
  uint8_t _757__PHI_TEMPORARY;
  uint32_t _758;
  uint32_t _758__PHI_TEMPORARY;
  uint32_t _759;
  uint8_t _760;
  uint32_t _761;
  uint32_t _762;
  uint32_t _762__PHI_TEMPORARY;
  uint32_t _763;
  uint32_t _763__PHI_TEMPORARY;
  uint32_t _764;
  uint32_t _764__PHI_TEMPORARY;
  uint8_t _765;
  uint32_t _766;
  uint32_t _767;
  uint32_t _767__PHI_TEMPORARY;
  uint8_t _768;
  uint32_t _769;
  uint8_t* _770;
  uint32_t _771;
  uint8_t* _772;
  uint32_t _773;
  uint32_t _774;
  uint32_t _774__PHI_TEMPORARY;
  uint8_t* _775;
  uint32_t _776;
  uint32_t _777;
  uint8_t* _778;
  uint8_t* _778__PHI_TEMPORARY;
  uint32_t _779;
  uint32_t _780;
  uint32_t _781;
  uint32_t _781__PHI_TEMPORARY;
  uint8_t _782;
  uint8_t _782__PHI_TEMPORARY;
  uint8_t _783;
  uint8_t _783__PHI_TEMPORARY;
  uint32_t _784;
  uint32_t _784__PHI_TEMPORARY;
  uint32_t _785;
  uint32_t _785__PHI_TEMPORARY;
  uint8_t _786;
  uint32_t _787;
  uint32_t _788;
  uint32_t _788__PHI_TEMPORARY;
  uint32_t _789;
  uint8_t _790;
  uint32_t _791;
  uint32_t _791__PHI_TEMPORARY;
  uint32_t _792;
  uint32_t _793;
  uint8_t _794;
  uint32_t _795;
  uint32_t _795__PHI_TEMPORARY;
  uint32_t _796;
  uint32_t _797;
  uint8_t _798;
  uint32_t _799;
  uint32_t _799__PHI_TEMPORARY;
  uint32_t _800;
  uint32_t _801;
  uint8_t _802;
  struct l_struct_struct_OC_user_interface_handler* _803;
  l_fptr_1* _804;
  uint32_t _805;
  uint32_t _805__PHI_TEMPORARY;
  uint32_t _806;
  uint32_t _806__PHI_TEMPORARY;
  uint32_t _807;
  uint32_t _807__PHI_TEMPORARY;
  uint32_t _808;
  uint32_t _809;
  uint8_t _810;
  uint32_t _811;
  uint32_t _811__PHI_TEMPORARY;
  uint32_t _812;
  uint32_t _813;
  uint8_t _814;
  uint32_t _815;
  uint32_t _815__PHI_TEMPORARY;
  uint32_t _816;
  uint32_t _817;
  uint8_t _818;
  uint32_t _819;
  uint32_t _819__PHI_TEMPORARY;
  uint32_t _820;
  uint8_t _821;
  uint32_t _822;
  uint8_t _823;
  uint8_t _823__PHI_TEMPORARY;
  uint32_t _824;
  uint32_t _825;
  uint32_t _826;
  uint32_t _826__PHI_TEMPORARY;
  uint32_t _827;
  uint32_t _827__PHI_TEMPORARY;
  uint16_t _828;
  uint32_t _829;
  uint32_t _830;
  uint32_t _830__PHI_TEMPORARY;
  uint32_t _831;
  uint32_t _831__PHI_TEMPORARY;
  uint32_t _832;
  uint32_t _832__PHI_TEMPORARY;
  uint32_t _833;
  uint32_t _833__PHI_TEMPORARY;
  uint32_t _834;
  uint32_t _835;
  uint8_t _836;
  uint32_t _837;
  uint32_t _837__PHI_TEMPORARY;
  uint32_t _838;
  uint32_t _839;
  uint8_t _840;
  uint32_t _841;
  uint32_t _842;
  uint32_t _842__PHI_TEMPORARY;
  uint32_t _843;
  uint32_t _844;
  uint8_t _845;
  uint32_t _846;
  uint32_t _847;
  uint32_t _847__PHI_TEMPORARY;
  uint32_t _848;
  uint32_t _849;
  uint8_t _850;
  uint32_t _851;
  uint32_t _852;
  uint32_t _852__PHI_TEMPORARY;
  uint32_t _853;
  uint32_t _854;
  uint8_t _855;
  uint32_t _856;
  uint32_t _857;
  uint32_t _857__PHI_TEMPORARY;
  uint32_t _858;
  uint32_t _859;
  uint8_t _860;
  uint32_t _861;
  struct l_struct_struct_OC_user_interface_handler* _862;
  l_fptr_1* _863;
  uint32_t _864;
  struct l_struct_struct_OC_user_interface_handler* _865;
  l_fptr_1** _866;
  l_fptr_1* _867;
  uint32_t _868;
  l_fptr_1* _869;
  uint8_t* _870;
  uint32_t _871;
  uint32_t _872;
  uint32_t _872__PHI_TEMPORARY;
  uint8_t _873;
  uint32_t _874;
  uint32_t _875;
  uint32_t _876;
  uint32_t _876__PHI_TEMPORARY;
  uint32_t _877;
  uint8_t _878;
  uint8_t _879;
  uint32_t _880;
  uint32_t _880__PHI_TEMPORARY;
  uint32_t _881;
  uint8_t _882;
  uint32_t _883;
  uint8_t _884;
  uint8_t _884__PHI_TEMPORARY;
  uint32_t _885;
  uint32_t _885__PHI_TEMPORARY;
  uint32_t _886;
  uint8_t _887;
  uint32_t _888;
  uint8_t _889;
  uint8_t _889__PHI_TEMPORARY;
  uint32_t _890;
  uint32_t _890__PHI_TEMPORARY;
  uint32_t _891;
  uint8_t _892;
  uint32_t _893;
  uint8_t _894;
  uint8_t _894__PHI_TEMPORARY;
  uint32_t _895;
  uint32_t _896;
  uint32_t _896__PHI_TEMPORARY;
  uint32_t _897;
  uint8_t _898;
  uint32_t _899;
  uint8_t _900;
  uint8_t _900__PHI_TEMPORARY;
  uint32_t _901;
  uint32_t _902;
  uint8_t* _903;
  uint32_t _904;
  uint32_t _904__PHI_TEMPORARY;
  uint32_t _905;
  uint32_t _906;
  uint8_t _907;
  uint32_t _908;
  uint32_t _908__PHI_TEMPORARY;
  uint32_t _909;
  uint32_t _910;
  uint8_t _911;
  uint32_t _912;
  uint32_t _912__PHI_TEMPORARY;
  uint32_t _913;
  uint32_t _914;
  uint8_t _915;
  uint32_t _916;
  uint32_t _916__PHI_TEMPORARY;
  uint32_t _917;
  uint32_t _918;
  uint8_t _919;
  uint32_t _920;
  uint32_t _921;
  uint32_t _921__PHI_TEMPORARY;
  uint32_t _922;
  uint32_t _923;
  struct l_struct_struct_OC_user_interface_handler* _924;
  l_fptr_1* _925;
  uint32_t _926;
  uint32_t _926__PHI_TEMPORARY;
  uint32_t _927;
  uint32_t _927__PHI_TEMPORARY;
  uint32_t _928;
  uint32_t _928__PHI_TEMPORARY;
  uint32_t _929;
  uint32_t _930;
  uint8_t _931;
  uint32_t _932;
  uint32_t _932__PHI_TEMPORARY;
  uint32_t _933;
  uint32_t _934;
  uint8_t _935;
  uint16_t _936;
  uint32_t _937;
  uint32_t _938;
  uint32_t _938__PHI_TEMPORARY;
  uint32_t _939;
  uint32_t _939__PHI_TEMPORARY;
  uint32_t _940;
  uint32_t _940__PHI_TEMPORARY;
  uint32_t _941;
  uint32_t _941__PHI_TEMPORARY;
  uint32_t _942;
  uint32_t _943;
  uint8_t _944;
  uint32_t _945;
  uint32_t _945__PHI_TEMPORARY;
  uint32_t _946;
  uint32_t _947;
  uint8_t _948;
  uint16_t _949;
  uint32_t _950;
  uint32_t _951;
  uint32_t _951__PHI_TEMPORARY;
  uint32_t _952;
  uint32_t _952__PHI_TEMPORARY;
  uint32_t _953;
  uint32_t _953__PHI_TEMPORARY;
  uint32_t _954;
  uint32_t _954__PHI_TEMPORARY;
  uint32_t _955;
  uint32_t _956;
  uint8_t _957;
  uint32_t _958;
  uint32_t _958__PHI_TEMPORARY;
  uint32_t _959;
  uint8_t _960;
  uint32_t _961;
  uint8_t _962;
  uint8_t _962__PHI_TEMPORARY;
  uint32_t _963;
  uint32_t _964;
  uint32_t _965;
  uint32_t _965__PHI_TEMPORARY;
  uint32_t _966;
  uint32_t _966__PHI_TEMPORARY;
  uint32_t _967;
  uint32_t _967__PHI_TEMPORARY;
  uint32_t _968;
  uint32_t _969;
  uint8_t _970;
  uint32_t _971;
  uint32_t _971__PHI_TEMPORARY;
  uint32_t _972;
  uint8_t _973;
  uint32_t _974;
  uint8_t _975;
  uint8_t _975__PHI_TEMPORARY;
  uint32_t _976;
  uint32_t _977;
  uint32_t _978;
  uint32_t _978__PHI_TEMPORARY;
  uint32_t _979;
  uint32_t _979__PHI_TEMPORARY;
  uint32_t _980;
  uint32_t _980__PHI_TEMPORARY;
  uint32_t _981;
  uint32_t _982;
  uint8_t _983;
  uint32_t _984;
  uint32_t _984__PHI_TEMPORARY;
  uint32_t _985;
  uint8_t _986;
  uint32_t _987;
  uint8_t _988;
  uint8_t _988__PHI_TEMPORARY;
  uint32_t _989;
  uint32_t _989__PHI_TEMPORARY;
  uint32_t _990;
  uint8_t _991;
  uint32_t _992;
  uint8_t _993;
  uint8_t _993__PHI_TEMPORARY;
  uint32_t _994;
  struct l_struct_struct_OC_user_interface_handler* _995;
  l_fptr_1* _996;
  uint32_t _997;
  uint32_t _997__PHI_TEMPORARY;
  uint32_t _998;
  uint32_t _999;
  uint8_t _1000;
  uint32_t _1001;
  uint32_t _1001__PHI_TEMPORARY;
  uint32_t _1002;
  uint32_t _1003;
  uint8_t _1004;
  uint32_t _1005;
  uint32_t _1006;
  uint32_t _1006__PHI_TEMPORARY;
  uint32_t _1007;
  uint32_t _1008;
  uint8_t _1009;
  uint32_t _1010;
  uint32_t _1011;
  uint32_t _1011__PHI_TEMPORARY;
  uint32_t _1012;
  uint32_t _1013;
  uint8_t _1014;
  uint32_t _1015;
  uint32_t _1016;
  uint32_t _1016__PHI_TEMPORARY;
  uint32_t _1017;
  uint32_t _1018;
  uint8_t _1019;
  uint32_t _1020;
  uint32_t _1021;
  uint32_t _1021__PHI_TEMPORARY;
  uint32_t _1022;
  uint32_t _1023;
  uint8_t _1024;
  uint32_t _1025;
  struct l_struct_struct_OC_user_interface_handler* _1026;
  l_fptr_1* _1027;
  uint32_t _1028;
  struct l_struct_struct_OC_user_interface_handler* _1029;
  l_fptr_1** _1030;
  l_fptr_1* _1031;
  uint32_t _1032;
  l_fptr_1* _1033;
  uint8_t* _1034;
  uint32_t _1035;
  uint32_t _1036;
  uint32_t _1036__PHI_TEMPORARY;
  uint8_t* _1037;
  uint8_t _1038;
  uint32_t _1039;
  uint32_t _1040;
  uint32_t _1040__PHI_TEMPORARY;
  uint32_t _1041;
  uint8_t _1042;
  uint32_t _1043;
  uint32_t _1044;
  uint32_t _1044__PHI_TEMPORARY;
  uint32_t _1045;
  uint32_t _1046;
  uint32_t _1047;
  uint32_t _1048;
  uint32_t _1049;
  uint32_t _1050;
  uint32_t _1050__PHI_TEMPORARY;
  uint16_t _1051;
  uint32_t _1052;
  struct l_struct_struct_OC_user_interface_handler* _1053;
  l_fptr_1* _1054;
  uint8_t* _1055;
  uint32_t _1056;
  uint32_t _1057;
  uint32_t _1058;
  uint32_t _1058__PHI_TEMPORARY;
  uint8_t* _1059;
  uint8_t _1060;
  uint32_t _1061;
  uint32_t _1062;
  uint32_t _1062__PHI_TEMPORARY;
  uint32_t _1063;
  uint8_t _1064;
  uint32_t _1065;
  uint32_t _1066;
  uint32_t _1066__PHI_TEMPORARY;
  uint32_t _1067;
  uint32_t _1068;
  uint32_t _1069;
  uint32_t _1070;
  uint32_t _1071;
  uint32_t _1072;
  uint32_t _1072__PHI_TEMPORARY;
  uint32_t _1073;
  uint32_t _1074;
  uint32_t _1074__PHI_TEMPORARY;
  uint8_t* _1075;
  uint8_t _1076;
  uint32_t _1077;
  uint32_t _1078;
  uint32_t _1078__PHI_TEMPORARY;
  uint32_t _1079;
  uint8_t _1080;
  uint32_t _1081;
  uint32_t _1082;
  uint32_t _1082__PHI_TEMPORARY;
  struct l_struct_struct_OC_user_interface_handler* _1083;
  l_fptr_1* _1084;
  uint32_t _1085;
  uint32_t _1086;
  uint32_t _1087;
  uint32_t _1087__PHI_TEMPORARY;
  uint8_t _1088;
  uint32_t _1089;
  uint32_t _1090;
  uint32_t _1090__PHI_TEMPORARY;
  uint8_t* _1091;
  uint8_t _1092;
  uint32_t _1093;
  uint32_t _1094;
  uint32_t _1095;
  uint8_t* _1096;
  uint32_t _1097;
  uint8_t* _1098;
  uint8_t* _1099;
  uint32_t _1100;
  uint8_t _1101;
  uint32_t _1102;
  uint32_t _1103;
  uint32_t _1103__PHI_TEMPORARY;
  uint8_t _1104;
  uint32_t _1105;
  uint32_t _1106;
  uint32_t _1106__PHI_TEMPORARY;
  uint8_t* _1107;
  uint8_t _1108;
  uint32_t _1109;
  uint32_t _1110;
  uint32_t _1111;
  uint8_t* _1112;
  uint32_t _1113;
  uint8_t* _1114;
  uint8_t* _1115;
  uint32_t _1116;
  uint8_t _1117;
  uint8_t* _1118;
  uint8_t _1119;
  uint8_t _1120;
  uint8_t* _1121;
  uint8_t _1122;
  uint8_t _1123;
  uint32_t _1124;
  uint8_t* _1125;
  uint32_t _1126;
  uint32_t _1127;
  uint32_t _1127__PHI_TEMPORARY;
  uint32_t _1128;
  uint8_t _1129;
  uint8_t _1130;
  uint8_t _1130__PHI_TEMPORARY;
  uint8_t _1131;
  uint32_t _1132;
  uint8_t* _1133;
  uint16_t _1134;
  uint32_t _1135;
  uint32_t _1136;
  uint32_t _1137;
  uint32_t _1138;
  uint32_t _1138__PHI_TEMPORARY;
  uint8_t* _1139;
  uint8_t _1140;
  uint32_t _1141;
  uint32_t _1142;
  uint32_t _1143;
  uint32_t _1144;
  uint32_t _1145;
  uint32_t _1145__PHI_TEMPORARY;
  uint8_t _1146;
  uint32_t _1147;
  uint32_t _1148;
  uint32_t _1148__PHI_TEMPORARY;
  uint8_t _1149;
  uint32_t _1150;
  uint8_t* _1151;
  uint32_t _1152;
  uint32_t _1153;
  uint32_t _1154;
  uint32_t _1155;
  uint32_t _1155__PHI_TEMPORARY;
  uint8_t _1156;
  uint32_t _1157;
  uint8_t _1158;
  uint32_t _1159;
  uint8_t* _1160;
  uint8_t _1161;
  uint32_t _1162;
  uint32_t _1162__PHI_TEMPORARY;
  uint8_t* _1163;
  uint8_t _1164;
  uint32_t _1165;
  uint8_t _1166;
  uint8_t* _1167;
  uint32_t _1168;
  uint32_t _1169;
  uint8_t _1170;
  uint32_t _1171;
  uint8_t* _1172;
  uint8_t _1173;
  uint8_t _1174;
  uint32_t _1175;
  uint8_t _1176;
  uint8_t _1177;
  uint32_t _1178;
  uint32_t _1179;
  uint32_t _1179__PHI_TEMPORARY;
  uint8_t _1180;
  uint8_t _1181;
  uint32_t _1182;
  uint32_t _1183;
  uint8_t* _1184;
  uint8_t _1185;
  uint32_t _1186;
  uint8_t _1187;
  uint8_t _1188;
  uint8_t* _1189;
  uint8_t _1190;
  uint32_t _1191;
  uint8_t* _1192;
  uint8_t _1193;
  uint8_t _1193__PHI_TEMPORARY;

  _612 = ((uint32_t)(uint16_t)_606);
  _613 = hfp_stack;
  _614 = (&_613->field1.field1);
  _615 = __UNALIGNED_LOAD__(uint16_t, 1, _614);
  _616 = ((uint32_t)(uint16_t)_615);
  if ((((((uint32_t)(llvm_add_u32(_616, _612))) < ((uint32_t)248u))&1))) {
    goto _1194;
  } else {
    _1193__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1195;
  }

_1194:
  _617 = memcpy(((&_613->field2.array[((int32_t)_616)])), _605, _612);
  _618 = llvm_add_u16(_615, _606);
  __UNALIGNED_LOAD__(uint16_t, 1, _614) = _618;
  _619 = *((&_605[((int32_t)(llvm_add_u32(_612, -2)))]));
  if ((((_619 == ((uint8_t)13))&1))) {
    goto _1196;
  } else {
    _1193__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1195;
  }

_1196:
  _620 = *((&_605[((int32_t)(llvm_add_u32(_612, -1)))]));
  if (((((((((uint16_t)_618) > ((uint16_t)((uint16_t)2)))&1)) & (((_620 == ((uint8_t)10))&1)))&1))) {
    goto _1197;
  } else {
    _1193__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1195;
  }

_1197:
  _621 = ((uint8_t*)(&_611));
  _622 = ((uint8_t*)(&_610));
  _623 = more_hfp_cmd_support;
  _624 = ((uint8_t*)(&_609));
  _625 = ((uint8_t*)(&_608));
  _626 = (&_607.array[((int32_t)0)]);
  _627 = (&_607.array[((int32_t)7)]);
  _628__PHI_TEMPORARY = _613;   /* for PHI node */
  _629__PHI_TEMPORARY = 0;   /* for PHI node */
  _630__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1198;

  do {     /* Syntactic loop '' to make GCC happy */
_1198:
  _628 = _628__PHI_TEMPORARY;
  _629 = _629__PHI_TEMPORARY;
  _630 = _630__PHI_TEMPORARY;
  _631__PHI_TEMPORARY = _629;   /* for PHI node */
  goto _1199;

  do {     /* Syntactic loop '' to make GCC happy */
_1199:
  _631 = _631__PHI_TEMPORARY;
  _632 = (&_628->field2.array[((int32_t)_631)]);
  _633 = *_632;
  _634 = llvm_add_u32(_631, 1);
  if ((((_633 == ((uint8_t)13))&1))) {
    goto _1200;
  } else {
    goto _1201;
  }

_1200:
  _635 = *((&_628->field2.array[((int32_t)_634)]));
  if ((((_635 == ((uint8_t)10))&1))) {
    goto _1202;
  } else {
    goto _1201;
  }

_1201:
  _631__PHI_TEMPORARY = _634;   /* for PHI node */
  goto _1199;

  } while (1); /* end of syntactic loop '' */
_1202:
  _636 = llvm_add_u32(_631, 2);
  _637__PHI_TEMPORARY = _636;   /* for PHI node */
  goto _1203;

  do {     /* Syntactic loop '' to make GCC happy */
_1203:
  _637 = _637__PHI_TEMPORARY;
  _638 = *((&_628->field2.array[((int32_t)_637)]));
  _639 = llvm_add_u32(_637, 1);
  if ((((_638 == ((uint8_t)13))&1))) {
    goto _1204;
  } else {
    goto _1205;
  }

_1204:
  _640 = *((&_628->field2.array[((int32_t)_639)]));
  if ((((_640 == ((uint8_t)10))&1))) {
    goto _1206;
  } else {
    goto _1205;
  }

_1205:
  _637__PHI_TEMPORARY = _639;   /* for PHI node */
  goto _1203;

  } while (1); /* end of syntactic loop '' */
_1206:
  _641 = llvm_add_u32(_637, 2);
  if ((((((uint32_t)_641) > ((uint32_t)_631))&1))) {
    goto _1207;
  } else {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  }

_1207:
  _646 = (&_628->field4.array[((int32_t)0)]);
  _647 = (&_628->field4.array[((int32_t)1)]);
  _648__PHI_TEMPORARY = _646;   /* for PHI node */
  goto _1209;

  do {     /* Syntactic loop '' to make GCC happy */
_1209:
  _648 = _648__PHI_TEMPORARY;
  _649 = *((&_648->field0.field3));
  if ((((_649 == _604)&1))) {
    goto _1210;
  } else {
    goto _1211;
  }

_1210:
  _650 = ((uint32_t*)((&_648->field0.field6)));
  _651 = ((*_650)&16777215);
  if (((((((_651 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _1211;
  } else {
    goto _1212;
  }

_1211:
  _652 = (&_648[((int32_t)1)]);
  if ((((((uint32_t)_652) < ((uint32_t)_647))&1))) {
    _648__PHI_TEMPORARY = _652;   /* for PHI node */
    goto _1209;
  } else {
    goto _1213;
  }

  } while (1); /* end of syntactic loop '' */
_1212:
  _653 = (&_632[((int32_t)2)]);
  _654 = *_653;
  if ((((_654 == ((uint8_t)79))&1))) {
    goto _1214;
  } else {
    goto _1215;
  }

_1214:
  _655 = *((&_632[((int32_t)3)]));
  if ((((_655 == ((uint8_t)75))&1))) {
    goto _1216;
  } else {
    goto _1215;
  }

_1215:
  _680 = memcmp(_653, ((&_OC_str_OC_8.array[((int32_t)0)])), 5);
  if ((((_680 == 0u)&1))) {
    goto _1217;
  } else {
    goto _1218;
  }

_1218:
  _681 = memcmp(_653, ((&_OC_str_OC_9.array[((int32_t)0)])), 10);
  if ((((_681 == 0u)&1))) {
    goto _1217;
  } else {
    goto _1219;
  }

_1219:
  _706 = memcmp(_653, ((&_OC_str_OC_11.array[((int32_t)0)])), 4);
  if ((((_706 == 0u)&1))) {
    goto _1220;
  } else {
    goto _1221;
  }

_1221:
  _707 = (&_632[((int32_t)3)]);
  _710__PHI_TEMPORARY = 0;   /* for PHI node */
  _711__PHI_TEMPORARY = ((&_OC_str_OC_12.array[((int32_t)0)]));   /* for PHI node */
  goto _1222;

  do {     /* Syntactic loop '' to make GCC happy */
_1222:
  _710 = _710__PHI_TEMPORARY;
  _711 = _711__PHI_TEMPORARY;
  _712 = *((&parse_atcmd_cmd_or_rsp_type_OC_infos.array[((int32_t)_710)].field1));
  _713 = ((uint32_t)(uint8_t)_712);
  _714 = memcmp(_707, _711, _713);
  if ((((_714 == 0u)&1))) {
    goto _1223;
  } else {
    goto _1224;
  }

_1224:
  _717 = (&_711[((int32_t)_713)]);
  _718 = llvm_add_u32(_710, 1);
  if ((((((uint32_t)_718) < ((uint32_t)19u))&1))) {
    _710__PHI_TEMPORARY = _718;   /* for PHI node */
    _711__PHI_TEMPORARY = _717;   /* for PHI node */
    goto _1222;
  } else {
    goto _1225;
  }

  } while (1); /* end of syntactic loop '' */
_1225:
  _719__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1226;

_1223:
  _715 = *((&parse_atcmd_cmd_or_rsp_type_OC_infos.array[((int32_t)_710)].field0));
  _716 = llvm_and_u8(_715, 127u);
  _719__PHI_TEMPORARY = _716;   /* for PHI node */
  goto _1226;

_1226:
  _719 = _719__PHI_TEMPORARY;
  _720 = (&_628->field1.field0);
  _721 = *_720;
  *_720 = (llvm_or_u8((llvm_and_u8(_721, 128u)), _719));
  goto _1227;

_1220:
  _708 = (&_628->field1.field0);
  _709 = *_708;
  *_708 = (llvm_or_u8((llvm_and_u8(_709, 128u)), 3));
  _642__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1208;

_1217:
  _682 = (&_628->field1.field0);
  _683 = *_682;
  *_682 = (llvm_or_u8((llvm_and_u8(_683, 128u)), 2));
  _684 = (&_648->field0.field5);
  _685 = *_684;
  if ((((_685 == ((uint8_t)11))&1))) {
    goto _1228;
  } else {
    _689__PHI_TEMPORARY = _685;   /* for PHI node */
    goto _1229;
  }

_1228:
  *_684 = 0;
  _686 = (&_648->field0.field0.array[((int32_t)0)]);
  _687 = remote_dev_company_ioctrl(_686, 1, 1);
  bt_event_update_to_user(_686, 1129270784u, 13, 0);
  _688 = *_684;
  _689__PHI_TEMPORARY = _688;   /* for PHI node */
  goto _1229;

_1229:
  _689 = _689__PHI_TEMPORARY;
  if ((((_689 == ((uint8_t)14))&1))) {
    goto _1230;
  } else {
    goto _1231;
  }

_1230:
  *_684 = 0;
  _690 = l2cap_debug_enable;
  if (((((llvm_and_u8(_690, 32)) == ((uint8_t)0))&1))) {
    goto _1232;
  } else {
    goto _1233;
  }

_1233:
  _691 = puts(((&_OC_str_OC_10.array[((int32_t)0)])));
  goto _1232;

_1232:
  _692 = *((&_648->field0.field2));
  _693 = (&_648->field0.field0.array[((int32_t)0)]);
  if (((((_692 & 512) == 0u)&1))) {
    goto _1234;
  } else {
    goto _1235;
  }

_1235:
  _694 = sco_connection_setup(_693, 1);
  goto _1231;

_1234:
  _695 = sco_connection_setup(_693, 0);
  goto _1231;

_1231:
  _696 = ((*_650)&16777215);
  _697 = ((uint8_t)(((llvm_lshr_u24(_696, 16))&16777215)));
  if (((((llvm_and_u8(_697, 31)) == ((uint8_t)18))&1))) {
    goto _1236;
  } else {
    goto _1237;
  }

_1236:
  *_650 = (((((((((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8(_697, 1)), 31))))&16777215)) << 16)&16777215)) | (((_696 & -2031617)&16777215)))&16777215))) & 16777215);
  _698 = send_battery_level(((&_648->field0.field0.array[((int32_t)0)])));
  goto _1237;

_1237:
  _699 = *_684;
  if (((((llvm_and_u8(_699, -2)) == ((uint8_t)8))&1))) {
    goto _1238;
  } else {
    _642__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1208;
  }

_1238:
  *_684 = 0;
  _700 = (&_648->field0.field7);
  _701 = *_700;
  *_700 = (llvm_and_u8(_701, -8));
  _702 = (&_648->field0.field0.array[((int32_t)0)]);
  _703 = update_multi_bd_status(_702, 13, -1);
  bt_event_update_to_user(_702, 1129270784u, 36, 3);
  _704 = *_700;
  _705 = stack_send_infor_2_user((&btstack_update_flags), 36, (((uint32_t)(uint8_t)(llvm_and_u8(_704, 7)))), _702);
  _642__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1208;

_1216:
  _656 = (&_628->field1.field0);
  _657 = *_656;
  *_656 = (llvm_or_u8((llvm_and_u8(_657, 128u)), 1));
  _658 = (&_648->field0.field5);
  _659 = *_658;
  if ((((_659 == ((uint8_t)14))&1))) {
    goto _1239;
  } else {
    _663__PHI_TEMPORARY = _659;   /* for PHI node */
    goto _1240;
  }

_1239:
  _660 = l2cap_debug_enable;
  if (((((llvm_and_u8(_660, 32)) == ((uint8_t)0))&1))) {
    _642__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1208;
  } else {
    goto _1241;
  }

_1241:
  _661 = puts(((&_OC_str_OC_7.array[((int32_t)0)])));
  _662 = *_658;
  _663__PHI_TEMPORARY = _662;   /* for PHI node */
  goto _1240;

_1240:
  _663 = _663__PHI_TEMPORARY;
  if ((((_663 == ((uint8_t)8))&1))) {
    goto _1242;
  } else {
    _672__PHI_TEMPORARY = _663;   /* for PHI node */
    goto _1243;
  }

_1242:
  *_658 = 0;
  _664 = (&_648->field0.field7);
  _665 = *_664;
  *_664 = (llvm_or_u8((llvm_and_u8(_665, -8)), 2));
  _666 = (&_648->field0.field0.array[((int32_t)0)]);
  _667 = update_multi_bd_status(_666, 12, -1);
  _668 = *_664;
  bt_event_update_to_user(_666, 1129270784u, 36, (((uint32_t)(uint8_t)(llvm_and_u8(_668, 7)))));
  _669 = *_664;
  _670 = stack_send_infor_2_user((&btstack_update_flags), 36, (((uint32_t)(uint8_t)(llvm_and_u8(_669, 7)))), _666);
  _671 = *_658;
  _672__PHI_TEMPORARY = _671;   /* for PHI node */
  goto _1243;

_1243:
  _672 = _672__PHI_TEMPORARY;
  if ((((_672 == ((uint8_t)9))&1))) {
    goto _1244;
  } else {
    _642__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1208;
  }

_1244:
  *_658 = 0;
  _673 = (&_648->field0.field7);
  _674 = *_673;
  *_673 = (llvm_and_u8(_674, -8));
  _675 = (&_648->field0.field0.array[((int32_t)0)]);
  _676 = update_multi_bd_status(_675, 13, -1);
  _677 = *_673;
  bt_event_update_to_user(_675, 1129270784u, 36, (((uint32_t)(uint8_t)(llvm_and_u8(_677, 7)))));
  _678 = *_673;
  _679 = stack_send_infor_2_user((&btstack_update_flags), 36, (((uint32_t)(uint8_t)(llvm_and_u8(_678, 7)))), _675);
  _642__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1208;

_1213:
  goto _1227;

_1227:
  _722 = llvm_sub_u32(_641, _631);
  _723 = ((uint16_t)_722);
  _724__PHI_TEMPORARY = _646;   /* for PHI node */
  goto _1245;

  do {     /* Syntactic loop '' to make GCC happy */
_1245:
  _724 = _724__PHI_TEMPORARY;
  _725 = (&_724->field0.field3);
  _726 = *_725;
  if ((((_726 == _604)&1))) {
    goto _1246;
  } else {
    goto _1247;
  }

_1246:
  _727 = ((uint32_t*)((&_724->field0.field6)));
  _728 = ((*_727)&16777215);
  if (((((((_728 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _1247;
  } else {
    goto _1248;
  }

_1247:
  _729 = (&_724[((int32_t)1)]);
  if ((((((uint32_t)_729) < ((uint32_t)_647))&1))) {
    _724__PHI_TEMPORARY = _729;   /* for PHI node */
    goto _1245;
  } else {
    goto _1249;
  }

  } while (1); /* end of syntactic loop '' */
_1248:
  _730 = *((&_628->field1.field0));
  switch ((((((uint8_t)_730))&127))) {
  default:
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  case ((uint8_t)4):
    goto _1250;
  case ((uint8_t)5):
    goto _1251;
  case ((uint8_t)6):
    goto _1252;
  case ((uint8_t)11):
    goto _1253;
  case ((uint8_t)10):
    goto _1254;
  case ((uint8_t)0):
    goto _1255;
  case ((uint8_t)16):
    goto _1256;
  case ((uint8_t)8):
    goto _1257;
  case ((uint8_t)7):
    goto _1257;
  case ((uint8_t)25):
    goto _1258;
  case ((uint8_t)24):
    goto _1259;
  case ((uint8_t)14):
    goto _1260;
  case ((uint8_t)22):
    goto _1261;
  case ((uint8_t)13):
    goto _1262;
  case ((uint8_t)21):
    goto _1263;
  case ((uint8_t)15):
    goto _1264;
  case ((uint8_t)17):
    goto _1265;
  }

_1265:
  _1125 = memset(_626, 0, 25);
  _1126 = _722 & 65535;
  _1127__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _1266;

  do {     /* Syntactic loop '' to make GCC happy */
_1266:
  _1127 = _1127__PHI_TEMPORARY;
  _1128 = llvm_add_u32(_1127, 1);
  if ((((((uint32_t)_1127) < ((uint32_t)_1126))&1))) {
    goto _1267;
  } else {
    _1130__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1268;
  }

_1267:
  _1129 = *((&_632[((int32_t)_1128)]));
  if ((((((uint8_t)(llvm_add_u8(_1129, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    _1130__PHI_TEMPORARY = _1129;   /* for PHI node */
    goto _1268;
  } else {
    _1127__PHI_TEMPORARY = _1128;   /* for PHI node */
    goto _1266;
  }

  } while (1); /* end of syntactic loop '' */
_1268:
  _1130 = _1130__PHI_TEMPORARY;
  _1131 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1131, 32)) == ((uint8_t)0))&1))) {
    goto _1269;
  } else {
    goto _1270;
  }

_1270:
  _1132 = puts(((&_OC_str_OC_16.array[((int32_t)0)])));
  goto _1269;

_1269:
  _1133 = strcpy(_626, ((&hfp_function_cmd.array[((int32_t)16)].array[((int32_t)0)])));
  if ((((((uint8_t)(llvm_add_u8(_1130, -49))) < ((uint8_t)((uint8_t)2)))&1))) {
    goto _1271;
  } else {
    goto _1272;
  }

_1271:
  *_627 = _1130;
  goto _1272;

_1272:
  _1134 = *((&_724->field0.field1));
  _1135 = strlen(_626);
  _1136 = atcmd_try_send(_1134, _626, (((uint16_t)_1135)));
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1264:
  _1117 = *((&_632[((int32_t)9)]));
  _1118 = (&_724->field0.field7);
  _1119 = *_1118;
  _1120 = llvm_and_u8(_1117, 7);
  *_1118 = (llvm_or_u8((llvm_and_u8(_1119, -8)), _1120));
  _1121 = (&_724->field0.field0.array[((int32_t)0)]);
  siri_update_multi_bd_status(_1120, _1121);
  _1122 = *_1118;
  bt_event_update_to_user(_1121, 1129270784u, 36, (((uint32_t)(uint8_t)(llvm_and_u8(_1122, 7)))));
  _1123 = *_1118;
  _1124 = stack_send_infor_2_user((&btstack_update_flags), 36, (((uint32_t)(uint8_t)(llvm_and_u8(_1123, 7)))), _1121);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1263:
  _1137 = _722 & 65535;
  _1138__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1273;

  do {     /* Syntactic loop '' to make GCC happy */
_1273:
  _1138 = _1138__PHI_TEMPORARY;
  _1139 = (&_632[((int32_t)_1138)]);
  _1140 = *_1139;
  if ((((_1140 == ((uint8_t)105))&1))) {
    goto _1274;
  } else {
    goto _1275;
  }

_1275:
  _1141 = llvm_add_u32(_1138, 1);
  if ((((((uint32_t)_1138) > ((uint32_t)_1137))&1))) {
    goto _1276;
  } else {
    _1138__PHI_TEMPORARY = _1141;   /* for PHI node */
    goto _1273;
  }

  } while (1); /* end of syntactic loop '' */
_1276:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1274:
  _1142 = memcmp(_1139, ((&_OC_str_OC_17.array[((int32_t)0)])), 6);
  if ((((_1142 == 0u)&1))) {
    goto _1277;
  } else {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  }

_1277:
  _1143 = send_battery_level(((&_724->field0.field0.array[((int32_t)0)])));
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1262:
  _1102 = _722 & 65535;
  _1103__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1278;

  do {     /* Syntactic loop '' to make GCC happy */
_1278:
  _1103 = _1103__PHI_TEMPORARY;
  _1104 = *((&_632[((int32_t)_1103)]));
  _1105 = llvm_add_u32(_1103, 1);
  if ((((_1104 == ((uint8_t)34))&1))) {
    goto _1279;
  } else {
    goto _1280;
  }

_1280:
  if ((((((uint32_t)_1103) > ((uint32_t)_1102))&1))) {
    goto _1281;
  } else {
    _1103__PHI_TEMPORARY = _1105;   /* for PHI node */
    goto _1278;
  }

  } while (1); /* end of syntactic loop '' */
_1281:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1279:
  _1106__PHI_TEMPORARY = _1105;   /* for PHI node */
  goto _1282;

  do {     /* Syntactic loop '' to make GCC happy */
_1282:
  _1106 = _1106__PHI_TEMPORARY;
  _1107 = (&_632[((int32_t)_1106)]);
  _1108 = *_1107;
  if ((((_1108 == ((uint8_t)34))&1))) {
    goto _1283;
  } else {
    goto _1284;
  }

_1284:
  _1109 = llvm_add_u32(_1106, 1);
  if ((((((uint32_t)_1106) > ((uint32_t)_1102))&1))) {
    goto _1285;
  } else {
    _1106__PHI_TEMPORARY = _1109;   /* for PHI node */
    goto _1282;
  }

  } while (1); /* end of syntactic loop '' */
_1285:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1283:
  _1110 = llvm_sub_u32(_1106, _1105);
  _1111 = _1110 & 255;
  if ((((((uint32_t)(llvm_add_u32(_1111, -1))) < ((uint32_t)22u))&1))) {
    goto _1286;
  } else {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  }

_1286:
  *_1107 = 0;
  _1112 = (&_632[((int32_t)_1105)]);
  _1113 = llvm_add_u32(_1111, 1);
  _1114 = memset(((&_628->field3.array[((int32_t)_1113)])), 0, (llvm_select_u32((((((uint32_t)_1113) > ((uint32_t)23u))&1)), 0, (llvm_sub_u32(23, _1111)))));
  _1115 = memcpy(((&_628->field3.array[((int32_t)0)])), _1112, _1113);
  bt_event_update_to_user(((&_724->field0.field0.array[((int32_t)0)])), 1129270784u, 12, (((uint32_t)(uintptr_t)((&_628->field3)))));
  _1116 = stack_send_infor_2_user((&btstack_phonenum), 12, 1, _1110, _1112);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1261:
  if ((((_623 == ((uint8_t)0))&1))) {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  } else {
    goto _1287;
  }

_1287:
  _1144 = _722 & 65535;
  _1145__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1288;

  do {     /* Syntactic loop '' to make GCC happy */
_1288:
  _1145 = _1145__PHI_TEMPORARY;
  _1146 = *((&_632[((int32_t)_1145)]));
  _1147 = llvm_add_u32(_1145, 1);
  if ((((_1146 == ((uint8_t)34))&1))) {
    goto _1289;
  } else {
    goto _1290;
  }

_1290:
  if ((((((uint32_t)_1145) > ((uint32_t)_1144))&1))) {
    goto _1291;
  } else {
    _1145__PHI_TEMPORARY = _1147;   /* for PHI node */
    goto _1288;
  }

  } while (1); /* end of syntactic loop '' */
_1291:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1289:
  _1148__PHI_TEMPORARY = _1147;   /* for PHI node */
  goto _1292;

  do {     /* Syntactic loop '' to make GCC happy */
_1292:
  _1148 = _1148__PHI_TEMPORARY;
  _1149 = *((&_632[((int32_t)_1148)]));
  _1150 = llvm_add_u32(_1148, 1);
  if ((((_1149 == ((uint8_t)34))&1))) {
    goto _1293;
  } else {
    goto _1294;
  }

_1294:
  if ((((((uint32_t)_1148) > ((uint32_t)_1144))&1))) {
    goto _1295;
  } else {
    _1148__PHI_TEMPORARY = _1150;   /* for PHI node */
    goto _1292;
  }

  } while (1); /* end of syntactic loop '' */
_1295:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1293:
  *((&_632[((int32_t)_1150)])) = 0;
  _1151 = (&_632[((int32_t)_1147)]);
  _1152 = llvm_sub_u32(_1148, _1147);
  phone_date_and_time_feedback(_1151, (((uint16_t)_1152)));
  _1153 = stack_send_infor_2_user((&btstack_phonenum), 34, 1, _1152, _1151);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1260:
  _1101 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1101, 64u)) == ((uint8_t)0))&1))) {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  } else {
    goto _1296;
  }

_1296:
  put_buf(_632, (_722 & 65535));
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1259:
  _1154 = _722 & 65535;
  _1155__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1297;

  do {     /* Syntactic loop '' to make GCC happy */
_1297:
  _1155 = _1155__PHI_TEMPORARY;
  _1156 = *((&_632[((int32_t)_1155)]));
  _1157 = llvm_add_u32(_1155, 1);
  if ((((_1156 == ((uint8_t)34))&1))) {
    goto _1298;
  } else {
    goto _1299;
  }

_1299:
  if ((((((uint32_t)_1155) > ((uint32_t)_1154))&1))) {
    goto _1300;
  } else {
    _1155__PHI_TEMPORARY = _1157;   /* for PHI node */
    goto _1297;
  }

  } while (1); /* end of syntactic loop '' */
_1300:
  _1158 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1158, 32)) == ((uint8_t)0))&1))) {
    goto _1301;
  } else {
    goto _1302;
  }

_1302:
  _1159 = puts(((&_OC_str_OC_18.array[((int32_t)0)])));
  goto _1301;

_1301:
  _1160 = (&_724->field0.field0.array[((int32_t)0)]);
  _1161 = remote_dev_company_ioctrl(_1160, 1, 1);
  bt_event_update_to_user(_1160, 1129270784u, 13, 0);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1298:
  _1162__PHI_TEMPORARY = _1157;   /* for PHI node */
  goto _1303;

  do {     /* Syntactic loop '' to make GCC happy */
_1303:
  _1162 = _1162__PHI_TEMPORARY;
  _1163 = (&_632[((int32_t)_1162)]);
  _1164 = *_1163;
  if ((((_1164 == ((uint8_t)34))&1))) {
    goto _1304;
  } else {
    goto _1305;
  }

_1305:
  _1165 = llvm_add_u32(_1162, 1);
  if ((((((uint32_t)_1162) > ((uint32_t)_1154))&1))) {
    goto _1306;
  } else {
    _1162__PHI_TEMPORARY = _1165;   /* for PHI node */
    goto _1303;
  }

  } while (1); /* end of syntactic loop '' */
_1306:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1304:
  *_1163 = 0;
  _1166 = l2cap_debug_enable;
  _1167 = (&_632[((int32_t)_1157)]);
  if (((((llvm_and_u8(_1166, 32)) == ((uint8_t)0))&1))) {
    goto _1307;
  } else {
    goto _1308;
  }

_1308:
  _1168 = puts(_1167);
  goto _1307;

_1307:
  _1169 = memcmp(((&_OC_str_OC_19.array[((int32_t)0)])), _1167, 10);
  _1170 = profile_debug_enable;
  if (((((llvm_and_u8(_1170, 1)) == ((uint8_t)0))&1))) {
    goto _1309;
  } else {
    goto _1310;
  }

_1310:
  _1171 = printf(((&_OC_str_OC_20.array[((int32_t)0)])), (((uint32_t)(bool)(((_1169 == 0u)&1)))));
  goto _1309;

_1309:
  _1172 = (&_724->field0.field0.array[((int32_t)0)]);
  if ((((_1169 == 0u)&1))) {
    goto _1311;
  } else {
    goto _1312;
  }

_1312:
  _1174 = remote_dev_company_ioctrl(_1172, 1, 1);
  goto _1313;

_1311:
  _1173 = remote_dev_company_ioctrl(_1172, 1, 2);
  goto _1313;

_1313:
  bt_event_update_to_user(_1172, 1129270784u, 13, (((uint32_t)(bool)(((_1169 == 0u)&1)))));
  _1175 = stack_send_infor_2_user((&btstack_phone_manufacturer), 13, _1172, _1167);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1258:
  _1176 = hfp_more_feature_hf_indicators;
  if ((((_1176 == ((uint8_t)0))&1))) {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  } else {
    goto _1314;
  }

_1314:
  _1177 = *((&_632[((int32_t)9)]));
  if ((((_1177 == ((uint8_t)40))&1))) {
    goto _1315;
  } else {
    goto _1316;
  }

_1316:
  _1187 = llvm_add_u8(_1177, -48);
  if ((((((uint8_t)_1187) < ((uint8_t)((uint8_t)3)))&1))) {
    goto _1317;
  } else {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  }

_1317:
  _1188 = *((&_632[((int32_t)11)]));
  _1189 = (&_724->field0.field8.array[((int32_t)(((uint32_t)(uint8_t)_1187)))]);
  _1190 = *_1189;
  *_1189 = (llvm_select_u8((((_1188 != ((uint8_t)48))&1)), (llvm_or_u8(_1190, 2)), (llvm_and_u8(_1190, -3))));
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1315:
  _1178 = _722 & 65535;
  _1179__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1318;

  do {     /* Syntactic loop '' to make GCC happy */
_1318:
  _1179 = _1179__PHI_TEMPORARY;
  _1180 = *((&_632[((int32_t)_1179)]));
  if ((((_1180 == ((uint8_t)41))&1))) {
    goto _1319;
  } else {
    goto _1320;
  }

_1320:
  _1181 = llvm_add_u8(_1180, -48);
  if ((((((uint8_t)_1181) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1321;
  } else {
    goto _1322;
  }

_1321:
  _1182 = ((uint32_t)(uint8_t)_1181);
  _1183 = printf(((&_OC_str_OC_21.array[((int32_t)0)])), _1182);
  if ((((((uint8_t)_1181) < ((uint8_t)((uint8_t)3)))&1))) {
    goto _1323;
  } else {
    goto _1322;
  }

_1323:
  _1184 = (&_724->field0.field8.array[((int32_t)_1182)]);
  _1185 = *_1184;
  *_1184 = (llvm_or_u8(_1185, 1));
  goto _1322;

_1322:
  _1186 = llvm_add_u32(_1179, 1);
  if ((((((uint32_t)_1179) > ((uint32_t)_1178))&1))) {
    goto _1319;
  } else {
    _1179__PHI_TEMPORARY = _1186;   /* for PHI node */
    goto _1318;
  }

  } while (1); /* end of syntactic loop '' */
_1319:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1257:
  _1086 = _722 & 65535;
  _1087__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1324;

  do {     /* Syntactic loop '' to make GCC happy */
_1324:
  _1087 = _1087__PHI_TEMPORARY;
  _1088 = *((&_632[((int32_t)_1087)]));
  _1089 = llvm_add_u32(_1087, 1);
  if ((((_1088 == ((uint8_t)34))&1))) {
    goto _1325;
  } else {
    goto _1326;
  }

_1326:
  if ((((((uint32_t)_1087) > ((uint32_t)_1086))&1))) {
    goto _1327;
  } else {
    _1087__PHI_TEMPORARY = _1089;   /* for PHI node */
    goto _1324;
  }

  } while (1); /* end of syntactic loop '' */
_1327:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1325:
  _1090__PHI_TEMPORARY = _1089;   /* for PHI node */
  goto _1328;

  do {     /* Syntactic loop '' to make GCC happy */
_1328:
  _1090 = _1090__PHI_TEMPORARY;
  _1091 = (&_632[((int32_t)_1090)]);
  _1092 = *_1091;
  if ((((_1092 == ((uint8_t)34))&1))) {
    goto _1329;
  } else {
    goto _1330;
  }

_1330:
  _1093 = llvm_add_u32(_1090, 1);
  if ((((((uint32_t)_1090) > ((uint32_t)_1086))&1))) {
    goto _1331;
  } else {
    _1090__PHI_TEMPORARY = _1093;   /* for PHI node */
    goto _1328;
  }

  } while (1); /* end of syntactic loop '' */
_1331:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1329:
  _1094 = llvm_sub_u32(_1090, _1089);
  _1095 = _1094 & 255;
  if ((((((uint32_t)(llvm_add_u32(_1095, -1))) < ((uint32_t)22u))&1))) {
    goto _1332;
  } else {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  }

_1332:
  *_1091 = 0;
  _1096 = (&_632[((int32_t)_1089)]);
  _1097 = llvm_add_u32(_1095, 1);
  _1098 = memset(((&_628->field3.array[((int32_t)_1097)])), 0, (llvm_select_u32((((((uint32_t)_1097) > ((uint32_t)23u))&1)), 0, (llvm_sub_u32(23, _1095)))));
  _1099 = memcpy(((&_628->field3.array[((int32_t)0)])), _1096, _1097);
  bt_event_update_to_user(((&_724->field0.field0.array[((int32_t)0)])), 1129270784u, 12, (((uint32_t)(uintptr_t)((&_628->field3)))));
  _1100 = stack_send_infor_2_user((&btstack_phonenum), 12, 1, _1094, _1096);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1256:
  _608 = 0;
  _1073 = _722 & 65535;
  _1074__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1333;

  do {     /* Syntactic loop '' to make GCC happy */
_1333:
  _1074 = _1074__PHI_TEMPORARY;
  _1075 = (&_632[((int32_t)_1074)]);
  _1076 = *_1075;
  if ((((((uint8_t)(llvm_add_u8(_1076, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1334;
  } else {
    goto _1335;
  }

_1335:
  _1077 = llvm_add_u32(_1074, 1);
  if ((((((uint32_t)_1074) > ((uint32_t)_1073))&1))) {
    goto _1336;
  } else {
    _1074__PHI_TEMPORARY = _1077;   /* for PHI node */
    goto _1333;
  }

  } while (1); /* end of syntactic loop '' */
_1336:
  goto _1337;

_1334:
  _1078__PHI_TEMPORARY = _1074;   /* for PHI node */
  goto _1338;

  do {     /* Syntactic loop '' to make GCC happy */
_1338:
  _1078 = _1078__PHI_TEMPORARY;
  _1079 = llvm_add_u32(_1078, 1);
  if ((((((uint32_t)_1078) > ((uint32_t)_1073))&1))) {
    goto _1339;
  } else {
    goto _1340;
  }

_1340:
  _1080 = *((&_632[((int32_t)_1079)]));
  if ((((_1080 == ((uint8_t)13))&1))) {
    goto _1341;
  } else {
    _1078__PHI_TEMPORARY = _1079;   /* for PHI node */
    goto _1338;
  }

  } while (1); /* end of syntactic loop '' */
_1341:
  if ((((((uint32_t)_1079) > ((uint32_t)_1074))&1))) {
    goto _1342;
  } else {
    _1082__PHI_TEMPORARY = _1079;   /* for PHI node */
    goto _1343;
  }

_1342:
  _1081 = ASCII_StrToInt(_1075, (&_608), (llvm_sub_u32(_1079, _1074)));
  _1082__PHI_TEMPORARY = _1081;   /* for PHI node */
  goto _1343;

_1343:
  _1082 = _1082__PHI_TEMPORARY;
  if ((((_1082 == 0u)&1))) {
    goto _1344;
  } else {
    goto _1337;
  }

_1344:
  _1083 = user_interface;
  _1084 = *((&_1083->field0));
  if ((((_1084 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1337;
  } else {
    goto _1345;
  }

_1345:
  _1085 = _608;
  _1084(((&_724->field0.field0.array[((int32_t)0)])), 9, _1085);
  goto _1337;

_1339:
  goto _1337;

_1337:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1255:
  _1191 = at_cmd_analysis_by_user(_632, _723);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1254:
  if ((((_623 == ((uint8_t)0))&1))) {
    _642__PHI_TEMPORARY = _630;   /* for PHI node */
    goto _1208;
  } else {
    goto _1346;
  }

_1346:
  _609 = 0;
  _1057 = _722 & 65535;
  _1058__PHI_TEMPORARY = 7;   /* for PHI node */
  goto _1347;

  do {     /* Syntactic loop '' to make GCC happy */
_1347:
  _1058 = _1058__PHI_TEMPORARY;
  _1059 = (&_632[((int32_t)_1058)]);
  _1060 = *_1059;
  if ((((((uint8_t)(llvm_add_u8(_1060, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1348;
  } else {
    goto _1349;
  }

_1349:
  _1061 = llvm_add_u32(_1058, 1);
  if ((((((uint32_t)_1058) > ((uint32_t)_1057))&1))) {
    goto _1350;
  } else {
    _1058__PHI_TEMPORARY = _1061;   /* for PHI node */
    goto _1347;
  }

  } while (1); /* end of syntactic loop '' */
_1350:
  goto _1351;

_1348:
  _1062__PHI_TEMPORARY = _1058;   /* for PHI node */
  goto _1352;

  do {     /* Syntactic loop '' to make GCC happy */
_1352:
  _1062 = _1062__PHI_TEMPORARY;
  _1063 = llvm_add_u32(_1062, 1);
  if ((((((uint32_t)_1062) > ((uint32_t)_1057))&1))) {
    goto _1353;
  } else {
    goto _1354;
  }

_1354:
  _1064 = *((&_632[((int32_t)_1063)]));
  if ((((_1064 == ((uint8_t)13))&1))) {
    goto _1355;
  } else {
    _1062__PHI_TEMPORARY = _1063;   /* for PHI node */
    goto _1352;
  }

  } while (1); /* end of syntactic loop '' */
_1355:
  if ((((((uint32_t)_1063) > ((uint32_t)_1058))&1))) {
    goto _1356;
  } else {
    _1066__PHI_TEMPORARY = _1063;   /* for PHI node */
    goto _1357;
  }

_1356:
  _1065 = ASCII_StrToInt(_1059, (&_609), (llvm_sub_u32(_1063, _1058)));
  _1066__PHI_TEMPORARY = _1065;   /* for PHI node */
  goto _1357;

_1357:
  _1066 = _1066__PHI_TEMPORARY;
  if ((((_1066 == 0u)&1))) {
    goto _1358;
  } else {
    goto _1351;
  }

_1358:
  _1067 = _609;
  if ((((((uint32_t)_1067) > ((uint32_t)15u))&1))) {
    goto _1359;
  } else {
    goto _1360;
  }

_1360:
  _1070 = ((*_727)&16777215);
  _1071 = (((((_1070 & -241)&16777215)) | (((((((((((uint32_t)_1067))&16777215)) << 4)&16777215)) & 240)&16777215)))&16777215);
  _1072__PHI_TEMPORARY = _1071;   /* for PHI node */
  goto _1361;

_1359:
  _1068 = ((*_727)&16777215);
  _1069 = ((_1068 | 240)&16777215);
  _1072__PHI_TEMPORARY = _1069;   /* for PHI node */
  goto _1361;

_1361:
  _1072 = ((_1072__PHI_TEMPORARY)&16777215);
  *_727 = ((_1072) & 16777215);
  goto _1351;

_1353:
  goto _1351;

_1351:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1253:
  _610 = 0;
  _1035 = _722 & 65535;
  _1036__PHI_TEMPORARY = 7;   /* for PHI node */
  goto _1362;

  do {     /* Syntactic loop '' to make GCC happy */
_1362:
  _1036 = _1036__PHI_TEMPORARY;
  _1037 = (&_632[((int32_t)_1036)]);
  _1038 = *_1037;
  if ((((((uint8_t)(llvm_add_u8(_1038, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1363;
  } else {
    goto _1364;
  }

_1364:
  _1039 = llvm_add_u32(_1036, 1);
  if ((((((uint32_t)_1036) > ((uint32_t)_1035))&1))) {
    goto _1365;
  } else {
    _1036__PHI_TEMPORARY = _1039;   /* for PHI node */
    goto _1362;
  }

  } while (1); /* end of syntactic loop '' */
_1365:
  goto _1366;

_1363:
  _1040__PHI_TEMPORARY = _1036;   /* for PHI node */
  goto _1367;

  do {     /* Syntactic loop '' to make GCC happy */
_1367:
  _1040 = _1040__PHI_TEMPORARY;
  _1041 = llvm_add_u32(_1040, 1);
  if ((((((uint32_t)_1040) > ((uint32_t)_1035))&1))) {
    goto _1368;
  } else {
    goto _1369;
  }

_1369:
  _1042 = *((&_632[((int32_t)_1041)]));
  if ((((_1042 == ((uint8_t)13))&1))) {
    goto _1370;
  } else {
    _1040__PHI_TEMPORARY = _1041;   /* for PHI node */
    goto _1367;
  }

  } while (1); /* end of syntactic loop '' */
_1370:
  if ((((((uint32_t)_1041) > ((uint32_t)_1036))&1))) {
    goto _1371;
  } else {
    _1044__PHI_TEMPORARY = _1041;   /* for PHI node */
    goto _1372;
  }

_1371:
  _1043 = ASCII_StrToInt(_1037, (&_610), (llvm_sub_u32(_1041, _1036)));
  _1044__PHI_TEMPORARY = _1043;   /* for PHI node */
  goto _1372;

_1372:
  _1044 = _1044__PHI_TEMPORARY;
  if ((((_1044 == 0u)&1))) {
    goto _1373;
  } else {
    goto _1366;
  }

_1373:
  _1045 = _610;
  if ((((((uint32_t)_1045) > ((uint32_t)15u))&1))) {
    goto _1374;
  } else {
    goto _1375;
  }

_1375:
  _1048 = ((*_727)&16777215);
  _1049 = (((((_1048 & -16)&16777215)) | ((((((((uint32_t)_1045))&16777215)) & 15)&16777215)))&16777215);
  _1050__PHI_TEMPORARY = _1049;   /* for PHI node */
  goto _1376;

_1374:
  _1046 = ((*_727)&16777215);
  _1047 = ((_1046 | 15)&16777215);
  _1050__PHI_TEMPORARY = _1047;   /* for PHI node */
  goto _1376;

_1376:
  _1050 = ((_1050__PHI_TEMPORARY)&16777215);
  *_727 = ((_1050) & 16777215);
  _1051 = *_725;
  _1052 = hfp_speak_gain_control(_1051, 3, 0);
  _1053 = user_interface;
  _1054 = *((&_1053->field0));
  _1055 = (&_724->field0.field0.array[((int32_t)0)]);
  if ((((_1054 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1377;
  } else {
    goto _1378;
  }

_1378:
  _1054(_1055, 7, _1052);
  goto _1377;

_1377:
  _1056 = stack_send_infor_2_user((&btstack_update_flags), 24, _1052, _1055);
  goto _1366;

_1368:
  goto _1366;

_1366:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1252:
  _871 = _722 & 65535;
  _872__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1379;

  do {     /* Syntactic loop '' to make GCC happy */
_1379:
  _872 = _872__PHI_TEMPORARY;
  _873 = *((&_632[((int32_t)_872)]));
  if ((((((uint8_t)(llvm_add_u8(_873, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1380;
  } else {
    goto _1381;
  }

_1381:
  _874 = llvm_add_u32(_872, 1);
  if ((((((uint32_t)_872) > ((uint32_t)_871))&1))) {
    goto _1382;
  } else {
    _872__PHI_TEMPORARY = _874;   /* for PHI node */
    goto _1379;
  }

  } while (1); /* end of syntactic loop '' */
_1382:
  goto _1383;

_1380:
  _875 = ((int32_t)(int8_t)_873);
  _876__PHI_TEMPORARY = _872;   /* for PHI node */
  goto _1384;

  do {     /* Syntactic loop '' to make GCC happy */
_1384:
  _876 = _876__PHI_TEMPORARY;
  _877 = llvm_add_u32(_876, 1);
  _878 = *((&_632[((int32_t)_877)]));
  _879 = llvm_add_u8(_878, -48);
  if ((((((uint8_t)_879) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1385;
  } else {
    goto _1386;
  }

_1386:
  if ((((((uint32_t)_877) > ((uint32_t)_871))&1))) {
    goto _1387;
  } else {
    _876__PHI_TEMPORARY = _877;   /* for PHI node */
    goto _1384;
  }

  } while (1); /* end of syntactic loop '' */
_1387:
  goto _1383;

_1385:
  *((&_724->field0.field9.array[((int32_t)(llvm_add_u32(_875, -49)))].field3)) = _879;
  goto _1383;

_1383:
  _880__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1388;

  do {     /* Syntactic loop '' to make GCC happy */
_1388:
  _880 = _880__PHI_TEMPORARY;
  _881 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_880)])))));
  if ((((_881 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)7)]))))&1))) {
    goto _1389;
  } else {
    goto _1390;
  }

_1390:
  _883 = llvm_add_u32(_880, 1);
  if ((((((uint32_t)_883) < ((uint32_t)8u))&1))) {
    _880__PHI_TEMPORARY = _883;   /* for PHI node */
    goto _1388;
  } else {
    goto _1391;
  }

  } while (1); /* end of syntactic loop '' */
_1391:
  _884__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1392;

_1389:
  _882 = *((&_724->field0.field9.array[((int32_t)_880)].field3));
  _884__PHI_TEMPORARY = _882;   /* for PHI node */
  goto _1392;

_1392:
  _884 = _884__PHI_TEMPORARY;
  _885__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1393;

  do {     /* Syntactic loop '' to make GCC happy */
_1393:
  _885 = _885__PHI_TEMPORARY;
  _886 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_885)])))));
  if ((((_886 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)7)]))))&1))) {
    goto _1394;
  } else {
    goto _1395;
  }

_1395:
  _888 = llvm_add_u32(_885, 1);
  if ((((((uint32_t)_888) < ((uint32_t)8u))&1))) {
    _885__PHI_TEMPORARY = _888;   /* for PHI node */
    goto _1393;
  } else {
    goto _1396;
  }

  } while (1); /* end of syntactic loop '' */
_1396:
  _889__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1397;

_1394:
  _887 = *((&_724->field0.field10.array[((int32_t)_885)].field3));
  _889__PHI_TEMPORARY = _887;   /* for PHI node */
  goto _1397;

_1397:
  _889 = _889__PHI_TEMPORARY;
  if ((((_889 == _884)&1))) {
    goto _1398;
  } else {
    goto _1399;
  }

_1399:
  _902 = stack_send_infor_2_user((&btstack_update_flags), 27, (((uint32_t)(uint8_t)_884)), ((&_724->field0.field0.array[((int32_t)0)])));
  goto _1400;

_1398:
  _890__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1401;

  do {     /* Syntactic loop '' to make GCC happy */
_1401:
  _890 = _890__PHI_TEMPORARY;
  _891 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_890)])))));
  if ((((_891 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)5)]))))&1))) {
    goto _1402;
  } else {
    goto _1403;
  }

_1403:
  _893 = llvm_add_u32(_890, 1);
  if ((((((uint32_t)_893) < ((uint32_t)8u))&1))) {
    _890__PHI_TEMPORARY = _893;   /* for PHI node */
    goto _1401;
  } else {
    goto _1404;
  }

  } while (1); /* end of syntactic loop '' */
_1404:
  _894__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1405;

_1402:
  _892 = *((&_724->field0.field9.array[((int32_t)_890)].field3));
  _894__PHI_TEMPORARY = _892;   /* for PHI node */
  goto _1405;

_1405:
  _894 = _894__PHI_TEMPORARY;
  _895 = ((uint32_t)(uint8_t)_894);
  _896__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1406;

  do {     /* Syntactic loop '' to make GCC happy */
_1406:
  _896 = _896__PHI_TEMPORARY;
  _897 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_896)])))));
  if ((((_897 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)5)]))))&1))) {
    goto _1407;
  } else {
    goto _1408;
  }

_1408:
  _899 = llvm_add_u32(_896, 1);
  if ((((((uint32_t)_899) < ((uint32_t)8u))&1))) {
    _896__PHI_TEMPORARY = _899;   /* for PHI node */
    goto _1406;
  } else {
    goto _1409;
  }

  } while (1); /* end of syntactic loop '' */
_1409:
  _900__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1410;

_1407:
  _898 = *((&_724->field0.field10.array[((int32_t)_896)].field3));
  _900__PHI_TEMPORARY = _898;   /* for PHI node */
  goto _1410;

_1410:
  _900 = _900__PHI_TEMPORARY;
  _901 = llvm_select_u32((((_900 == _894)&1)), 255, 1);
  if ((((_900 == _894)&1))) {
    goto _1411;
  } else {
    goto _1400;
  }

_1400:
  _903 = memcpy((((uint8_t*)((&_724->field0.field10)))), (((uint8_t*)((&_724->field0.field9)))), 56);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1411:
  _904__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1412;

  do {     /* Syntactic loop '' to make GCC happy */
_1412:
  _904 = _904__PHI_TEMPORARY;
  _905 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_904)])))));
  if ((((_905 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1413;
  } else {
    goto _1414;
  }

_1414:
  _906 = llvm_add_u32(_904, 1);
  if ((((((uint32_t)_906) < ((uint32_t)8u))&1))) {
    _904__PHI_TEMPORARY = _906;   /* for PHI node */
    goto _1412;
  } else {
    goto _1415;
  }

  } while (1); /* end of syntactic loop '' */
_1415:
  _926__PHI_TEMPORARY = _901;   /* for PHI node */
  _927__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1416;

_1413:
  _907 = *((&_724->field0.field9.array[((int32_t)_904)].field3));
  if ((((_907 == ((uint8_t)0))&1))) {
    goto _1417;
  } else {
    _926__PHI_TEMPORARY = _901;   /* for PHI node */
    _927__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1416;
  }

_1417:
  _908__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1418;

  do {     /* Syntactic loop '' to make GCC happy */
_1418:
  _908 = _908__PHI_TEMPORARY;
  _909 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_908)])))));
  if ((((_909 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1419;
  } else {
    goto _1420;
  }

_1420:
  _910 = llvm_add_u32(_908, 1);
  if ((((((uint32_t)_910) < ((uint32_t)8u))&1))) {
    _908__PHI_TEMPORARY = _910;   /* for PHI node */
    goto _1418;
  } else {
    goto _1421;
  }

  } while (1); /* end of syntactic loop '' */
_1421:
  goto _1422;

_1419:
  _911 = *((&_724->field0.field10.array[((int32_t)_908)].field3));
  if ((((_911 == ((uint8_t)0))&1))) {
    goto _1423;
  } else {
    goto _1422;
  }

_1423:
  _912__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1424;

  do {     /* Syntactic loop '' to make GCC happy */
_1424:
  _912 = _912__PHI_TEMPORARY;
  _913 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_912)])))));
  if ((((_913 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1425;
  } else {
    goto _1426;
  }

_1426:
  _914 = llvm_add_u32(_912, 1);
  if ((((((uint32_t)_914) < ((uint32_t)8u))&1))) {
    _912__PHI_TEMPORARY = _914;   /* for PHI node */
    goto _1424;
  } else {
    goto _1427;
  }

  } while (1); /* end of syntactic loop '' */
_1427:
  goto _1428;

_1425:
  _915 = *((&_724->field0.field10.array[((int32_t)_912)].field3));
  if ((((_915 == ((uint8_t)0))&1))) {
    _926__PHI_TEMPORARY = _901;   /* for PHI node */
    _927__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1416;
  } else {
    goto _1428;
  }

_1428:
  _916__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1429;

  do {     /* Syntactic loop '' to make GCC happy */
_1429:
  _916 = _916__PHI_TEMPORARY;
  _917 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_916)])))));
  if ((((_917 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1430;
  } else {
    goto _1431;
  }

_1431:
  _918 = llvm_add_u32(_916, 1);
  if ((((((uint32_t)_918) < ((uint32_t)8u))&1))) {
    _916__PHI_TEMPORARY = _918;   /* for PHI node */
    goto _1429;
  } else {
    goto _1432;
  }

  } while (1); /* end of syntactic loop '' */
_1432:
  _926__PHI_TEMPORARY = _901;   /* for PHI node */
  _927__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1416;

_1430:
  _919 = *((&_724->field0.field9.array[((int32_t)_916)].field3));
  if ((((_919 == ((uint8_t)0))&1))) {
    goto _1422;
  } else {
    _926__PHI_TEMPORARY = _901;   /* for PHI node */
    _927__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1416;
  }

_1422:
  _920 = ((*_727)&16777215);
  if (((((((_920 & 61440)&16777215)) == ((uint32_t)0))&1))) {
    goto _1433;
  } else {
    goto _1434;
  }

_1434:
  *_727 = (((((_920 & -61441)&16777215))) & 16777215);
  _924 = user_interface;
  _925 = *((&_924->field0));
  if ((((_925 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _926__PHI_TEMPORARY = 5;   /* for PHI node */
    _927__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1416;
  } else {
    goto _1435;
  }

_1435:
  _925(((&_724->field0.field0.array[((int32_t)0)])), 8, 0);
  _926__PHI_TEMPORARY = 5;   /* for PHI node */
  _927__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1416;

_1433:
  _921__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1436;

  do {     /* Syntactic loop '' to make GCC happy */
_1436:
  _921 = _921__PHI_TEMPORARY;
  _922 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_921)])))));
  if ((((_922 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1437;
  } else {
    goto _1438;
  }

_1437:
  *((&_724->field0.field9.array[((int32_t)_921)].field3)) = 0;
  goto _1438;

_1438:
  _923 = llvm_add_u32(_921, 1);
  if ((((_923 == 8u)&1))) {
    goto _1439;
  } else {
    _921__PHI_TEMPORARY = _923;   /* for PHI node */
    goto _1436;
  }

  } while (1); /* end of syntactic loop '' */
_1439:
  _926__PHI_TEMPORARY = 5;   /* for PHI node */
  _927__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1416;

_1416:
  _926 = _926__PHI_TEMPORARY;
  _927 = _927__PHI_TEMPORARY;
  _928__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1440;

  do {     /* Syntactic loop '' to make GCC happy */
_1440:
  _928 = _928__PHI_TEMPORARY;
  _929 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_928)])))));
  if ((((_929 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1441;
  } else {
    goto _1442;
  }

_1442:
  _930 = llvm_add_u32(_928, 1);
  if ((((((uint32_t)_930) < ((uint32_t)8u))&1))) {
    _928__PHI_TEMPORARY = _930;   /* for PHI node */
    goto _1440;
  } else {
    goto _1443;
  }

  } while (1); /* end of syntactic loop '' */
_1443:
  _938__PHI_TEMPORARY = _926;   /* for PHI node */
  _939__PHI_TEMPORARY = _927;   /* for PHI node */
  _940__PHI_TEMPORARY = _895;   /* for PHI node */
  goto _1444;

_1441:
  _931 = *((&_724->field0.field9.array[((int32_t)_928)].field3));
  if ((((_931 == ((uint8_t)0))&1))) {
    goto _1445;
  } else {
    _938__PHI_TEMPORARY = _926;   /* for PHI node */
    _939__PHI_TEMPORARY = _927;   /* for PHI node */
    _940__PHI_TEMPORARY = _895;   /* for PHI node */
    goto _1444;
  }

_1445:
  _932__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1446;

  do {     /* Syntactic loop '' to make GCC happy */
_1446:
  _932 = _932__PHI_TEMPORARY;
  _933 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_932)])))));
  if ((((_933 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1447;
  } else {
    goto _1448;
  }

_1448:
  _934 = llvm_add_u32(_932, 1);
  if ((((((uint32_t)_934) < ((uint32_t)8u))&1))) {
    _932__PHI_TEMPORARY = _934;   /* for PHI node */
    goto _1446;
  } else {
    goto _1449;
  }

  } while (1); /* end of syntactic loop '' */
_1449:
  _938__PHI_TEMPORARY = _926;   /* for PHI node */
  _939__PHI_TEMPORARY = _927;   /* for PHI node */
  _940__PHI_TEMPORARY = _895;   /* for PHI node */
  goto _1444;

_1447:
  _935 = *((&_724->field0.field9.array[((int32_t)_932)].field3));
  if ((((_935 == ((uint8_t)1))&1))) {
    goto _1450;
  } else {
    _938__PHI_TEMPORARY = _926;   /* for PHI node */
    _939__PHI_TEMPORARY = _927;   /* for PHI node */
    _940__PHI_TEMPORARY = _895;   /* for PHI node */
    goto _1444;
  }

_1450:
  _936 = *_725;
  _937 = hfp_speak_gain_control(_936, 3, 0);
  _938__PHI_TEMPORARY = 2;   /* for PHI node */
  _939__PHI_TEMPORARY = 1;   /* for PHI node */
  _940__PHI_TEMPORARY = _937;   /* for PHI node */
  goto _1444;

_1444:
  _938 = _938__PHI_TEMPORARY;
  _939 = _939__PHI_TEMPORARY;
  _940 = _940__PHI_TEMPORARY;
  _941__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1451;

  do {     /* Syntactic loop '' to make GCC happy */
_1451:
  _941 = _941__PHI_TEMPORARY;
  _942 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_941)])))));
  if ((((_942 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1452;
  } else {
    goto _1453;
  }

_1453:
  _943 = llvm_add_u32(_941, 1);
  if ((((((uint32_t)_943) < ((uint32_t)8u))&1))) {
    _941__PHI_TEMPORARY = _943;   /* for PHI node */
    goto _1451;
  } else {
    goto _1454;
  }

  } while (1); /* end of syntactic loop '' */
_1454:
  _951__PHI_TEMPORARY = _938;   /* for PHI node */
  _952__PHI_TEMPORARY = _939;   /* for PHI node */
  _953__PHI_TEMPORARY = _940;   /* for PHI node */
  goto _1455;

_1452:
  _944 = *((&_724->field0.field9.array[((int32_t)_941)].field3));
  if ((((_944 == ((uint8_t)0))&1))) {
    goto _1456;
  } else {
    _951__PHI_TEMPORARY = _938;   /* for PHI node */
    _952__PHI_TEMPORARY = _939;   /* for PHI node */
    _953__PHI_TEMPORARY = _940;   /* for PHI node */
    goto _1455;
  }

_1456:
  _945__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1457;

  do {     /* Syntactic loop '' to make GCC happy */
_1457:
  _945 = _945__PHI_TEMPORARY;
  _946 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_945)])))));
  if ((((_946 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1458;
  } else {
    goto _1459;
  }

_1459:
  _947 = llvm_add_u32(_945, 1);
  if ((((((uint32_t)_947) < ((uint32_t)8u))&1))) {
    _945__PHI_TEMPORARY = _947;   /* for PHI node */
    goto _1457;
  } else {
    goto _1460;
  }

  } while (1); /* end of syntactic loop '' */
_1460:
  _951__PHI_TEMPORARY = _938;   /* for PHI node */
  _952__PHI_TEMPORARY = _939;   /* for PHI node */
  _953__PHI_TEMPORARY = _940;   /* for PHI node */
  goto _1455;

_1458:
  _948 = *((&_724->field0.field9.array[((int32_t)_945)].field3));
  if ((((_948 == ((uint8_t)2))&1))) {
    goto _1461;
  } else {
    _951__PHI_TEMPORARY = _938;   /* for PHI node */
    _952__PHI_TEMPORARY = _939;   /* for PHI node */
    _953__PHI_TEMPORARY = _940;   /* for PHI node */
    goto _1455;
  }

_1461:
  _949 = *_725;
  _950 = hfp_speak_gain_control(_949, 3, 0);
  _951__PHI_TEMPORARY = 3;   /* for PHI node */
  _952__PHI_TEMPORARY = 1;   /* for PHI node */
  _953__PHI_TEMPORARY = _950;   /* for PHI node */
  goto _1455;

_1455:
  _951 = _951__PHI_TEMPORARY;
  _952 = _952__PHI_TEMPORARY;
  _953 = _953__PHI_TEMPORARY;
  _954__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1462;

  do {     /* Syntactic loop '' to make GCC happy */
_1462:
  _954 = _954__PHI_TEMPORARY;
  _955 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_954)])))));
  if ((((_955 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1463;
  } else {
    goto _1464;
  }

_1464:
  _956 = llvm_add_u32(_954, 1);
  if ((((((uint32_t)_956) < ((uint32_t)8u))&1))) {
    _954__PHI_TEMPORARY = _956;   /* for PHI node */
    goto _1462;
  } else {
    goto _1465;
  }

  } while (1); /* end of syntactic loop '' */
_1465:
  _965__PHI_TEMPORARY = _951;   /* for PHI node */
  _966__PHI_TEMPORARY = _952;   /* for PHI node */
  goto _1466;

_1463:
  _957 = *((&_724->field0.field9.array[((int32_t)_954)].field3));
  if ((((_957 == ((uint8_t)0))&1))) {
    goto _1467;
  } else {
    _965__PHI_TEMPORARY = _951;   /* for PHI node */
    _966__PHI_TEMPORARY = _952;   /* for PHI node */
    goto _1466;
  }

_1467:
  _958__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1468;

  do {     /* Syntactic loop '' to make GCC happy */
_1468:
  _958 = _958__PHI_TEMPORARY;
  _959 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_958)])))));
  if ((((_959 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1469;
  } else {
    goto _1470;
  }

_1470:
  _961 = llvm_add_u32(_958, 1);
  if ((((((uint32_t)_961) < ((uint32_t)8u))&1))) {
    _958__PHI_TEMPORARY = _961;   /* for PHI node */
    goto _1468;
  } else {
    goto _1471;
  }

  } while (1); /* end of syntactic loop '' */
_1471:
  _962__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1472;

_1469:
  _960 = *((&_724->field0.field9.array[((int32_t)_958)].field3));
  _962__PHI_TEMPORARY = _960;   /* for PHI node */
  goto _1472;

_1472:
  _962 = _962__PHI_TEMPORARY;
  _963 = llvm_select_u32((((_962 == ((uint8_t)3))&1)), 6, _951);
  _964 = llvm_select_u32((((_962 == ((uint8_t)3))&1)), 1, _952);
  _965__PHI_TEMPORARY = _963;   /* for PHI node */
  _966__PHI_TEMPORARY = _964;   /* for PHI node */
  goto _1466;

_1466:
  _965 = _965__PHI_TEMPORARY;
  _966 = _966__PHI_TEMPORARY;
  _967__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1473;

  do {     /* Syntactic loop '' to make GCC happy */
_1473:
  _967 = _967__PHI_TEMPORARY;
  _968 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_967)])))));
  if ((((_968 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1474;
  } else {
    goto _1475;
  }

_1475:
  _969 = llvm_add_u32(_967, 1);
  if ((((((uint32_t)_969) < ((uint32_t)8u))&1))) {
    _967__PHI_TEMPORARY = _969;   /* for PHI node */
    goto _1473;
  } else {
    goto _1476;
  }

  } while (1); /* end of syntactic loop '' */
_1476:
  _978__PHI_TEMPORARY = _965;   /* for PHI node */
  _979__PHI_TEMPORARY = _966;   /* for PHI node */
  goto _1477;

_1474:
  _970 = *((&_724->field0.field9.array[((int32_t)_967)].field3));
  if ((((_970 == ((uint8_t)1))&1))) {
    goto _1478;
  } else {
    _978__PHI_TEMPORARY = _965;   /* for PHI node */
    _979__PHI_TEMPORARY = _966;   /* for PHI node */
    goto _1477;
  }

_1478:
  _971__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1479;

  do {     /* Syntactic loop '' to make GCC happy */
_1479:
  _971 = _971__PHI_TEMPORARY;
  _972 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_971)])))));
  if ((((_972 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1480;
  } else {
    goto _1481;
  }

_1481:
  _974 = llvm_add_u32(_971, 1);
  if ((((((uint32_t)_974) < ((uint32_t)8u))&1))) {
    _971__PHI_TEMPORARY = _974;   /* for PHI node */
    goto _1479;
  } else {
    goto _1482;
  }

  } while (1); /* end of syntactic loop '' */
_1482:
  _975__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1483;

_1480:
  _973 = *((&_724->field0.field10.array[((int32_t)_971)].field3));
  _975__PHI_TEMPORARY = _973;   /* for PHI node */
  goto _1483;

_1483:
  _975 = _975__PHI_TEMPORARY;
  _976 = llvm_select_u32((((_975 == ((uint8_t)0))&1)), 4, _965);
  _977 = llvm_select_u32((((_975 == ((uint8_t)0))&1)), 1, _966);
  _978__PHI_TEMPORARY = _976;   /* for PHI node */
  _979__PHI_TEMPORARY = _977;   /* for PHI node */
  goto _1477;

_1477:
  _978 = _978__PHI_TEMPORARY;
  _979 = _979__PHI_TEMPORARY;
  _980__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1484;

  do {     /* Syntactic loop '' to make GCC happy */
_1484:
  _980 = _980__PHI_TEMPORARY;
  _981 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_980)])))));
  if ((((_981 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1485;
  } else {
    goto _1486;
  }

_1486:
  _982 = llvm_add_u32(_980, 1);
  if ((((((uint32_t)_982) < ((uint32_t)8u))&1))) {
    _980__PHI_TEMPORARY = _982;   /* for PHI node */
    goto _1484;
  } else {
    goto _1487;
  }

  } while (1); /* end of syntactic loop '' */
_1487:
  goto _1488;

_1485:
  _983 = *((&_724->field0.field9.array[((int32_t)_980)].field3));
  if ((((_983 == ((uint8_t)1))&1))) {
    goto _1489;
  } else {
    goto _1488;
  }

_1489:
  _984__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1490;

  do {     /* Syntactic loop '' to make GCC happy */
_1490:
  _984 = _984__PHI_TEMPORARY;
  _985 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_984)])))));
  if ((((_985 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1491;
  } else {
    goto _1492;
  }

_1492:
  _987 = llvm_add_u32(_984, 1);
  if ((((((uint32_t)_987) < ((uint32_t)8u))&1))) {
    _984__PHI_TEMPORARY = _987;   /* for PHI node */
    goto _1490;
  } else {
    goto _1493;
  }

  } while (1); /* end of syntactic loop '' */
_1493:
  _988__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1494;

_1491:
  _986 = *((&_724->field0.field10.array[((int32_t)_984)].field3));
  _988__PHI_TEMPORARY = _986;   /* for PHI node */
  goto _1494;

_1494:
  _988 = _988__PHI_TEMPORARY;
  _989__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1495;

  do {     /* Syntactic loop '' to make GCC happy */
_1495:
  _989 = _989__PHI_TEMPORARY;
  _990 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_989)])))));
  if ((((_990 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1496;
  } else {
    goto _1497;
  }

_1497:
  _992 = llvm_add_u32(_989, 1);
  if ((((((uint32_t)_992) < ((uint32_t)8u))&1))) {
    _989__PHI_TEMPORARY = _992;   /* for PHI node */
    goto _1495;
  } else {
    goto _1498;
  }

  } while (1); /* end of syntactic loop '' */
_1498:
  _993__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1499;

_1496:
  _991 = *((&_724->field0.field9.array[((int32_t)_989)].field3));
  _993__PHI_TEMPORARY = _991;   /* for PHI node */
  goto _1499;

_1499:
  _993 = _993__PHI_TEMPORARY;
  _994 = ((uint32_t)(uint8_t)_993);
  if ((((_988 == _993)&1))) {
    goto _1488;
  } else {
    goto _1500;
  }

_1500:
  _995 = user_interface;
  _996 = *((&_995->field0));
  if ((((_996 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1488;
  } else {
    goto _1501;
  }

_1501:
  _996(((&_724->field0.field0.array[((int32_t)0)])), 11, _994);
  goto _1488;

_1488:
  _997__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1502;

  do {     /* Syntactic loop '' to make GCC happy */
_1502:
  _997 = _997__PHI_TEMPORARY;
  _998 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_997)])))));
  if ((((_998 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1503;
  } else {
    goto _1504;
  }

_1504:
  _999 = llvm_add_u32(_997, 1);
  if ((((((uint32_t)_999) < ((uint32_t)8u))&1))) {
    _997__PHI_TEMPORARY = _999;   /* for PHI node */
    goto _1502;
  } else {
    goto _1505;
  }

  } while (1); /* end of syntactic loop '' */
_1505:
  goto _1506;

_1503:
  _1000 = *((&_724->field0.field9.array[((int32_t)_997)].field3));
  if ((((_1000 == ((uint8_t)1))&1))) {
    goto _1507;
  } else {
    goto _1506;
  }

_1507:
  _1001__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1508;

  do {     /* Syntactic loop '' to make GCC happy */
_1508:
  _1001 = _1001__PHI_TEMPORARY;
  _1002 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_1001)])))));
  if ((((_1002 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1509;
  } else {
    goto _1510;
  }

_1510:
  _1003 = llvm_add_u32(_1001, 1);
  if ((((((uint32_t)_1003) < ((uint32_t)8u))&1))) {
    _1001__PHI_TEMPORARY = _1003;   /* for PHI node */
    goto _1508;
  } else {
    goto _1511;
  }

  } while (1); /* end of syntactic loop '' */
_1511:
  goto _1512;

_1509:
  _1004 = *((&_724->field0.field9.array[((int32_t)_1001)].field3));
  if ((((_1004 == ((uint8_t)2))&1))) {
    goto _1513;
  } else {
    goto _1512;
  }

_1513:
  _1005 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u24(_1005, 12))&16777215)))), 11)), 4))))&16777215)) << 12)&16777215)) | (((_1005 & -61441)&16777215)))&16777215))) & 16777215);
  goto _1512;

_1512:
  _1006__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1514;

  do {     /* Syntactic loop '' to make GCC happy */
_1514:
  _1006 = _1006__PHI_TEMPORARY;
  _1007 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_1006)])))));
  if ((((_1007 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1515;
  } else {
    goto _1516;
  }

_1516:
  _1008 = llvm_add_u32(_1006, 1);
  if ((((((uint32_t)_1008) < ((uint32_t)8u))&1))) {
    _1006__PHI_TEMPORARY = _1008;   /* for PHI node */
    goto _1514;
  } else {
    goto _1517;
  }

  } while (1); /* end of syntactic loop '' */
_1517:
  goto _1518;

_1515:
  _1009 = *((&_724->field0.field9.array[((int32_t)_1006)].field3));
  if ((((_1009 == ((uint8_t)1))&1))) {
    goto _1519;
  } else {
    goto _1518;
  }

_1519:
  _1010 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u24(_1010, 12))&16777215)))), 13)), 2))))&16777215)) << 12)&16777215)) | (((_1010 & -61441)&16777215)))&16777215))) & 16777215);
  goto _1518;

_1518:
  _1011__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1520;

  do {     /* Syntactic loop '' to make GCC happy */
_1520:
  _1011 = _1011__PHI_TEMPORARY;
  _1012 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_1011)])))));
  if ((((_1012 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1521;
  } else {
    goto _1522;
  }

_1522:
  _1013 = llvm_add_u32(_1011, 1);
  if ((((((uint32_t)_1013) < ((uint32_t)8u))&1))) {
    _1011__PHI_TEMPORARY = _1013;   /* for PHI node */
    goto _1520;
  } else {
    goto _1523;
  }

  } while (1); /* end of syntactic loop '' */
_1523:
  goto _1524;

_1521:
  _1014 = *((&_724->field0.field9.array[((int32_t)_1011)].field3));
  if ((((_1014 == ((uint8_t)0))&1))) {
    goto _1525;
  } else {
    goto _1524;
  }

_1525:
  _1015 = ((*_727)&16777215);
  *_727 = (((((_1015 & -32769)&16777215))) & 16777215);
  goto _1524;

_1524:
  _1016__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1526;

  do {     /* Syntactic loop '' to make GCC happy */
_1526:
  _1016 = _1016__PHI_TEMPORARY;
  _1017 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_1016)])))));
  if ((((_1017 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1527;
  } else {
    goto _1528;
  }

_1528:
  _1018 = llvm_add_u32(_1016, 1);
  if ((((((uint32_t)_1018) < ((uint32_t)8u))&1))) {
    _1016__PHI_TEMPORARY = _1018;   /* for PHI node */
    goto _1526;
  } else {
    goto _1529;
  }

  } while (1); /* end of syntactic loop '' */
_1529:
  goto _1530;

_1527:
  _1019 = *((&_724->field0.field9.array[((int32_t)_1016)].field3));
  if ((((_1019 == ((uint8_t)0))&1))) {
    goto _1531;
  } else {
    goto _1530;
  }

_1530:
  _1020 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u24(_1020, 12))&16777215)))), 7)), 8))))&16777215)) << 12)&16777215)) | (((_1020 & -61441)&16777215)))&16777215))) & 16777215);
  goto _1531;

_1531:
  _1021__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1532;

  do {     /* Syntactic loop '' to make GCC happy */
_1532:
  _1021 = _1021__PHI_TEMPORARY;
  _1022 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_1021)])))));
  if ((((_1022 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1533;
  } else {
    goto _1534;
  }

_1534:
  _1023 = llvm_add_u32(_1021, 1);
  if ((((((uint32_t)_1023) < ((uint32_t)8u))&1))) {
    _1021__PHI_TEMPORARY = _1023;   /* for PHI node */
    goto _1532;
  } else {
    goto _1535;
  }

  } while (1); /* end of syntactic loop '' */
_1535:
  goto _1536;

_1533:
  _1024 = *((&_724->field0.field9.array[((int32_t)_1021)].field3));
  if ((((_1024 == ((uint8_t)0))&1))) {
    goto _1537;
  } else {
    goto _1536;
  }

_1537:
  _1025 = ((*_727)&16777215);
  *_727 = (((((_1025 & -24577)&16777215))) & 16777215);
  goto _1536;

_1536:
  _1026 = user_interface;
  _1027 = *((&_1026->field0));
  if ((((_1027 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1506;
  } else {
    goto _1538;
  }

_1538:
  _1028 = ((*_727)&16777215);
  _1027(((&_724->field0.field0.array[((int32_t)0)])), 8, (((uint32_t)(uint32_t)((((((llvm_lshr_u24(_1028, 12))&16777215)) & 15)&16777215)))));
  goto _1506;

_1506:
  if ((((_979 == 0u)&1))) {
    goto _1539;
  } else {
    goto _1540;
  }

_1540:
  _1029 = user_interface;
  _1030 = (&_1029->field0);
  _1031 = *_1030;
  if ((((_1031 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1539;
  } else {
    goto _1541;
  }

_1541:
  _1032 = ((*_727)&16777215);
  *_727 = ((((((((_1032 & -3841)&16777215)) | (((((((((((uint32_t)_978))&16777215)) << 8)&16777215)) & 3840)&16777215)))&16777215))) & 16777215);
  _1033 = *_1030;
  _1033(((&_724->field0.field0.array[((int32_t)0)])), _978, _953);
  goto _1539;

_1539:
  _1034 = memcpy((((uint8_t*)((&_724->field0.field10)))), (((uint8_t*)((&_724->field0.field9)))), 56);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1251:
  _756 = *((&_632[((int32_t)8)]));
  if ((((((uint8_t)(llvm_add_u8(_756, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    _781__PHI_TEMPORARY = 8;   /* for PHI node */
    _782__PHI_TEMPORARY = _756;   /* for PHI node */
    goto _1542;
  } else {
    goto _1543;
  }

_1543:
  _757__PHI_TEMPORARY = _756;   /* for PHI node */
  _758__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1544;

  do {     /* Syntactic loop '' to make GCC happy */
_1544:
  _757 = _757__PHI_TEMPORARY;
  _758 = _758__PHI_TEMPORARY;
  switch (_757) {
  default:
    goto _1545;
  case ((uint8_t)40):
    goto _1546;
  case ((uint8_t)13):
    goto _1547;
  }

_1545:
  _759 = llvm_add_u32(_758, 1);
  _760 = *((&_632[((int32_t)_759)]));
  if ((((((uint8_t)(llvm_add_u8(_760, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1548;
  } else {
    _757__PHI_TEMPORARY = _760;   /* for PHI node */
    _758__PHI_TEMPORARY = _759;   /* for PHI node */
    goto _1544;
  }

  } while (1); /* end of syntactic loop '' */
_1547:
  goto _1549;

_1546:
  _761 = _722 & 65535;
  if ((((((uint32_t)_758) < ((uint32_t)_761))&1))) {
    goto _1550;
  } else {
    goto _1549;
  }

_1550:
  _762__PHI_TEMPORARY = _758;   /* for PHI node */
  _763__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1551;

  do {     /* Syntactic loop '' to make GCC happy */
_1551:
  _762 = _762__PHI_TEMPORARY;
  _763 = _763__PHI_TEMPORARY;
  _764__PHI_TEMPORARY = _762;   /* for PHI node */
  goto _1552;

  do {     /* Syntactic loop '' to make GCC happy */
_1552:
  _764 = _764__PHI_TEMPORARY;
  _765 = *((&_632[((int32_t)_764)]));
  _766 = llvm_add_u32(_764, 1);
  if ((((_765 == ((uint8_t)34))&1))) {
    goto _1553;
  } else {
    goto _1554;
  }

_1554:
  if ((((((uint32_t)_764) > ((uint32_t)_761))&1))) {
    goto _1555;
  } else {
    _764__PHI_TEMPORARY = _766;   /* for PHI node */
    goto _1552;
  }

  } while (1); /* end of syntactic loop '' */
_1553:
  _767__PHI_TEMPORARY = _766;   /* for PHI node */
  goto _1556;

  do {     /* Syntactic loop '' to make GCC happy */
_1556:
  _767 = _767__PHI_TEMPORARY;
  _768 = *((&_632[((int32_t)_767)]));
  if ((((_768 == ((uint8_t)34))&1))) {
    goto _1557;
  } else {
    goto _1558;
  }

_1558:
  _769 = llvm_add_u32(_767, 1);
  if ((((((uint32_t)_767) > ((uint32_t)_761))&1))) {
    goto _1559;
  } else {
    _767__PHI_TEMPORARY = _769;   /* for PHI node */
    goto _1556;
  }

  } while (1); /* end of syntactic loop '' */
_1557:
  _770 = (&_632[((int32_t)_766)]);
  _771 = llvm_sub_u32(_767, _766);
  _772 = (&_724->field0.field9.array[((int32_t)_763)].field1);
  _773 = _771 & 65535;
  _774__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1560;

  do {     /* Syntactic loop '' to make GCC happy */
_1560:
  _774 = _774__PHI_TEMPORARY;
  _775 = (&hfp_ind_str_buf.array[((int32_t)_774)].array[((int32_t)0)]);
  _776 = memcmp(_770, _775, _773);
  if ((((_776 == 0u)&1))) {
    goto _1561;
  } else {
    goto _1562;
  }

_1562:
  _777 = llvm_add_u32(_774, 1);
  if ((((((uint32_t)_777) < ((uint32_t)8u))&1))) {
    _774__PHI_TEMPORARY = _777;   /* for PHI node */
    goto _1560;
  } else {
    goto _1563;
  }

  } while (1); /* end of syntactic loop '' */
_1563:
  _778__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _1564;

_1561:
  *_772 = (((uint8_t)_774));
  _778__PHI_TEMPORARY = _775;   /* for PHI node */
  goto _1564;

_1564:
  _778 = _778__PHI_TEMPORARY;
  __UNALIGNED_LOAD__(uint8_t*, 1, ((&_724->field0.field9.array[((int32_t)_763)].field0))) = _778;
  *((&_724->field0.field9.array[((int32_t)_763)].field2)) = (((uint8_t)_771));
  _779 = llvm_add_u32(_763, 1);
  _780 = llvm_add_u32(_771, _767);
  if ((((((uint32_t)_780) < ((uint32_t)_761))&1))) {
    _762__PHI_TEMPORARY = _780;   /* for PHI node */
    _763__PHI_TEMPORARY = _779;   /* for PHI node */
    goto _1551;
  } else {
    goto _1565;
  }

  } while (1); /* end of syntactic loop '' */
_1555:
  goto _1549;

_1559:
  goto _1549;

_1565:
  goto _1549;

_1548:
  _781__PHI_TEMPORARY = _759;   /* for PHI node */
  _782__PHI_TEMPORARY = _760;   /* for PHI node */
  goto _1542;

_1542:
  _781 = _781__PHI_TEMPORARY;
  _782 = _782__PHI_TEMPORARY;
  if ((((((uint8_t)(llvm_add_u8(_782, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1566;
  } else {
    goto _1549;
  }

_1566:
  _783__PHI_TEMPORARY = _782;   /* for PHI node */
  _784__PHI_TEMPORARY = _781;   /* for PHI node */
  _785__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1567;

  do {     /* Syntactic loop '' to make GCC happy */
_1567:
  _783 = _783__PHI_TEMPORARY;
  _784 = _784__PHI_TEMPORARY;
  _785 = _785__PHI_TEMPORARY;
  _786 = llvm_add_u8(_783, -48);
  if ((((((uint8_t)_786) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1568;
  } else {
    _788__PHI_TEMPORARY = _785;   /* for PHI node */
    goto _1569;
  }

_1568:
  *((&_724->field0.field9.array[((int32_t)_785)].field3)) = _786;
  _787 = llvm_add_u32(_785, 1);
  _788__PHI_TEMPORARY = _787;   /* for PHI node */
  goto _1569;

_1569:
  _788 = _788__PHI_TEMPORARY;
  _789 = llvm_add_u32(_784, 1);
  _790 = *((&_632[((int32_t)_789)]));
  if ((((_790 == ((uint8_t)13))&1))) {
    goto _1570;
  } else {
    _783__PHI_TEMPORARY = _790;   /* for PHI node */
    _784__PHI_TEMPORARY = _789;   /* for PHI node */
    _785__PHI_TEMPORARY = _788;   /* for PHI node */
    goto _1567;
  }

  } while (1); /* end of syntactic loop '' */
_1570:
  goto _1549;

_1549:
  _791__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1571;

  do {     /* Syntactic loop '' to make GCC happy */
_1571:
  _791 = _791__PHI_TEMPORARY;
  _792 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_791)])))));
  if ((((_792 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1572;
  } else {
    goto _1573;
  }

_1573:
  _793 = llvm_add_u32(_791, 1);
  if ((((((uint32_t)_793) < ((uint32_t)8u))&1))) {
    _791__PHI_TEMPORARY = _793;   /* for PHI node */
    goto _1571;
  } else {
    goto _1574;
  }

  } while (1); /* end of syntactic loop '' */
_1574:
  _805__PHI_TEMPORARY = 0;   /* for PHI node */
  _806__PHI_TEMPORARY = 255;   /* for PHI node */
  goto _1575;

_1572:
  _794 = *((&_724->field0.field10.array[((int32_t)_791)].field3));
  if ((((_794 == ((uint8_t)-4))&1))) {
    goto _1576;
  } else {
    _805__PHI_TEMPORARY = 0;   /* for PHI node */
    _806__PHI_TEMPORARY = 255;   /* for PHI node */
    goto _1575;
  }

_1576:
  _795__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1577;

  do {     /* Syntactic loop '' to make GCC happy */
_1577:
  _795 = _795__PHI_TEMPORARY;
  _796 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_795)])))));
  if ((((_796 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1578;
  } else {
    goto _1579;
  }

_1579:
  _797 = llvm_add_u32(_795, 1);
  if ((((((uint32_t)_797) < ((uint32_t)8u))&1))) {
    _795__PHI_TEMPORARY = _797;   /* for PHI node */
    goto _1577;
  } else {
    goto _1580;
  }

  } while (1); /* end of syntactic loop '' */
_1580:
  _805__PHI_TEMPORARY = 0;   /* for PHI node */
  _806__PHI_TEMPORARY = 255;   /* for PHI node */
  goto _1575;

_1578:
  _798 = *((&_724->field0.field9.array[((int32_t)_795)].field3));
  if ((((_798 == ((uint8_t)1))&1))) {
    goto _1581;
  } else {
    _805__PHI_TEMPORARY = 0;   /* for PHI node */
    _806__PHI_TEMPORARY = 255;   /* for PHI node */
    goto _1575;
  }

_1581:
  _799__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1582;

  do {     /* Syntactic loop '' to make GCC happy */
_1582:
  _799 = _799__PHI_TEMPORARY;
  _800 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_799)])))));
  if ((((_800 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1583;
  } else {
    goto _1584;
  }

_1584:
  _801 = llvm_add_u32(_799, 1);
  if ((((((uint32_t)_801) < ((uint32_t)8u))&1))) {
    _799__PHI_TEMPORARY = _801;   /* for PHI node */
    goto _1582;
  } else {
    goto _1585;
  }

  } while (1); /* end of syntactic loop '' */
_1585:
  _805__PHI_TEMPORARY = 1;   /* for PHI node */
  _806__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _1575;

_1583:
  _802 = *((&_724->field0.field9.array[((int32_t)_799)].field3));
  if ((((_802 == ((uint8_t)2))&1))) {
    goto _1586;
  } else {
    _805__PHI_TEMPORARY = 1;   /* for PHI node */
    _806__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _1575;
  }

_1586:
  _803 = user_interface;
  _804 = *((&_803->field0));
  if ((((_804 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _805__PHI_TEMPORARY = 1;   /* for PHI node */
    _806__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _1575;
  } else {
    goto _1587;
  }

_1587:
  _804(((&_724->field0.field0.array[((int32_t)0)])), 11, 2);
  _805__PHI_TEMPORARY = 1;   /* for PHI node */
  _806__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _1575;

_1575:
  _805 = _805__PHI_TEMPORARY;
  _806 = _806__PHI_TEMPORARY;
  _807__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1588;

  do {     /* Syntactic loop '' to make GCC happy */
_1588:
  _807 = _807__PHI_TEMPORARY;
  _808 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field10.array[((int32_t)_807)])))));
  if ((((_808 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1589;
  } else {
    goto _1590;
  }

_1590:
  _809 = llvm_add_u32(_807, 1);
  if ((((((uint32_t)_809) < ((uint32_t)8u))&1))) {
    _807__PHI_TEMPORARY = _809;   /* for PHI node */
    goto _1588;
  } else {
    goto _1591;
  }

  } while (1); /* end of syntactic loop '' */
_1591:
  _830__PHI_TEMPORARY = _805;   /* for PHI node */
  _831__PHI_TEMPORARY = _806;   /* for PHI node */
  _832__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1592;

_1589:
  _810 = *((&_724->field0.field10.array[((int32_t)_807)].field3));
  if (((((((_806 == 255u)&1)) & (((_810 == ((uint8_t)-4))&1)))&1))) {
    goto _1593;
  } else {
    _830__PHI_TEMPORARY = _805;   /* for PHI node */
    _831__PHI_TEMPORARY = _806;   /* for PHI node */
    _832__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1592;
  }

_1593:
  _811__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1594;

  do {     /* Syntactic loop '' to make GCC happy */
_1594:
  _811 = _811__PHI_TEMPORARY;
  _812 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_811)])))));
  if ((((_812 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1595;
  } else {
    goto _1596;
  }

_1596:
  _813 = llvm_add_u32(_811, 1);
  if ((((((uint32_t)_813) < ((uint32_t)8u))&1))) {
    _811__PHI_TEMPORARY = _813;   /* for PHI node */
    goto _1594;
  } else {
    goto _1597;
  }

  } while (1); /* end of syntactic loop '' */
_1597:
  goto _1598;

_1595:
  _814 = *((&_724->field0.field9.array[((int32_t)_811)].field3));
  if ((((_814 == ((uint8_t)1))&1))) {
    _826__PHI_TEMPORARY = 1;   /* for PHI node */
    _827__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _1599;
  } else {
    goto _1598;
  }

_1598:
  _815__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1600;

  do {     /* Syntactic loop '' to make GCC happy */
_1600:
  _815 = _815__PHI_TEMPORARY;
  _816 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_815)])))));
  if ((((_816 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1601;
  } else {
    goto _1602;
  }

_1602:
  _817 = llvm_add_u32(_815, 1);
  if ((((((uint32_t)_817) < ((uint32_t)8u))&1))) {
    _815__PHI_TEMPORARY = _817;   /* for PHI node */
    goto _1600;
  } else {
    goto _1603;
  }

  } while (1); /* end of syntactic loop '' */
_1603:
  goto _1604;

_1601:
  _818 = *((&_724->field0.field9.array[((int32_t)_815)].field3));
  if ((((_818 == ((uint8_t)2))&1))) {
    _826__PHI_TEMPORARY = 1;   /* for PHI node */
    _827__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _1599;
  } else {
    goto _1604;
  }

_1604:
  _819__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1605;

  do {     /* Syntactic loop '' to make GCC happy */
_1605:
  _819 = _819__PHI_TEMPORARY;
  _820 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_819)])))));
  if ((((_820 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1606;
  } else {
    goto _1607;
  }

_1607:
  _822 = llvm_add_u32(_819, 1);
  if ((((((uint32_t)_822) < ((uint32_t)8u))&1))) {
    _819__PHI_TEMPORARY = _822;   /* for PHI node */
    goto _1605;
  } else {
    goto _1608;
  }

  } while (1); /* end of syntactic loop '' */
_1608:
  _823__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _1609;

_1606:
  _821 = *((&_724->field0.field9.array[((int32_t)_819)].field3));
  _823__PHI_TEMPORARY = _821;   /* for PHI node */
  goto _1609;

_1609:
  _823 = _823__PHI_TEMPORARY;
  _824 = llvm_select_u32((((_823 == ((uint8_t)3))&1)), 1, _805);
  _825 = llvm_select_u32((((_823 == ((uint8_t)3))&1)), 3, 255);
  _826__PHI_TEMPORARY = _824;   /* for PHI node */
  _827__PHI_TEMPORARY = _825;   /* for PHI node */
  goto _1599;

_1599:
  _826 = _826__PHI_TEMPORARY;
  _827 = _827__PHI_TEMPORARY;
  _828 = *_725;
  _829 = hfp_speak_gain_control(_828, 3, 0);
  _830__PHI_TEMPORARY = _826;   /* for PHI node */
  _831__PHI_TEMPORARY = _827;   /* for PHI node */
  _832__PHI_TEMPORARY = _829;   /* for PHI node */
  goto _1592;

_1592:
  _830 = _830__PHI_TEMPORARY;
  _831 = _831__PHI_TEMPORARY;
  _832 = _832__PHI_TEMPORARY;
  _833__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1610;

  do {     /* Syntactic loop '' to make GCC happy */
_1610:
  _833 = _833__PHI_TEMPORARY;
  _834 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_833)])))));
  if ((((_834 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)1)]))))&1))) {
    goto _1611;
  } else {
    goto _1612;
  }

_1612:
  _835 = llvm_add_u32(_833, 1);
  if ((((((uint32_t)_835) < ((uint32_t)8u))&1))) {
    _833__PHI_TEMPORARY = _835;   /* for PHI node */
    goto _1610;
  } else {
    goto _1613;
  }

  } while (1); /* end of syntactic loop '' */
_1613:
  goto _1614;

_1611:
  _836 = *((&_724->field0.field9.array[((int32_t)_833)].field3));
  if ((((_836 == ((uint8_t)1))&1))) {
    goto _1615;
  } else {
    goto _1614;
  }

_1615:
  _837__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1616;

  do {     /* Syntactic loop '' to make GCC happy */
_1616:
  _837 = _837__PHI_TEMPORARY;
  _838 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_837)])))));
  if ((((_838 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1617;
  } else {
    goto _1618;
  }

_1618:
  _839 = llvm_add_u32(_837, 1);
  if ((((((uint32_t)_839) < ((uint32_t)8u))&1))) {
    _837__PHI_TEMPORARY = _839;   /* for PHI node */
    goto _1616;
  } else {
    goto _1619;
  }

  } while (1); /* end of syntactic loop '' */
_1619:
  goto _1620;

_1617:
  _840 = *((&_724->field0.field9.array[((int32_t)_837)].field3));
  if ((((_840 == ((uint8_t)2))&1))) {
    goto _1621;
  } else {
    goto _1620;
  }

_1621:
  _841 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u24(_841, 12))&16777215)))), 11)), 4))))&16777215)) << 12)&16777215)) | (((_841 & -61441)&16777215)))&16777215))) & 16777215);
  goto _1620;

_1620:
  _842__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1622;

  do {     /* Syntactic loop '' to make GCC happy */
_1622:
  _842 = _842__PHI_TEMPORARY;
  _843 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_842)])))));
  if ((((_843 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1623;
  } else {
    goto _1624;
  }

_1624:
  _844 = llvm_add_u32(_842, 1);
  if ((((((uint32_t)_844) < ((uint32_t)8u))&1))) {
    _842__PHI_TEMPORARY = _844;   /* for PHI node */
    goto _1622;
  } else {
    goto _1625;
  }

  } while (1); /* end of syntactic loop '' */
_1625:
  goto _1626;

_1623:
  _845 = *((&_724->field0.field9.array[((int32_t)_842)].field3));
  if ((((_845 == ((uint8_t)1))&1))) {
    goto _1627;
  } else {
    goto _1626;
  }

_1627:
  _846 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u24(_846, 12))&16777215)))), 13)), 2))))&16777215)) << 12)&16777215)) | (((_846 & -61441)&16777215)))&16777215))) & 16777215);
  goto _1626;

_1626:
  _847__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1628;

  do {     /* Syntactic loop '' to make GCC happy */
_1628:
  _847 = _847__PHI_TEMPORARY;
  _848 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_847)])))));
  if ((((_848 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1629;
  } else {
    goto _1630;
  }

_1630:
  _849 = llvm_add_u32(_847, 1);
  if ((((((uint32_t)_849) < ((uint32_t)8u))&1))) {
    _847__PHI_TEMPORARY = _849;   /* for PHI node */
    goto _1628;
  } else {
    goto _1631;
  }

  } while (1); /* end of syntactic loop '' */
_1631:
  goto _1632;

_1629:
  _850 = *((&_724->field0.field9.array[((int32_t)_847)].field3));
  if ((((_850 == ((uint8_t)0))&1))) {
    goto _1633;
  } else {
    goto _1632;
  }

_1633:
  _851 = ((*_727)&16777215);
  *_727 = (((((_851 & -32769)&16777215))) & 16777215);
  goto _1632;

_1632:
  _852__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1634;

  do {     /* Syntactic loop '' to make GCC happy */
_1634:
  _852 = _852__PHI_TEMPORARY;
  _853 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_852)])))));
  if ((((_853 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)4)]))))&1))) {
    goto _1635;
  } else {
    goto _1636;
  }

_1636:
  _854 = llvm_add_u32(_852, 1);
  if ((((((uint32_t)_854) < ((uint32_t)8u))&1))) {
    _852__PHI_TEMPORARY = _854;   /* for PHI node */
    goto _1634;
  } else {
    goto _1637;
  }

  } while (1); /* end of syntactic loop '' */
_1637:
  goto _1638;

_1635:
  _855 = *((&_724->field0.field9.array[((int32_t)_852)].field3));
  if ((((_855 == ((uint8_t)0))&1))) {
    goto _1639;
  } else {
    goto _1638;
  }

_1638:
  _856 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u24(_856, 12))&16777215)))), 7)), 8))))&16777215)) << 12)&16777215)) | (((_856 & -61441)&16777215)))&16777215))) & 16777215);
  goto _1639;

_1639:
  _857__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1640;

  do {     /* Syntactic loop '' to make GCC happy */
_1640:
  _857 = _857__PHI_TEMPORARY;
  _858 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_724->field0.field9.array[((int32_t)_857)])))));
  if ((((_858 == ((uint32_t)(uintptr_t)((&hfp_ind_str_buf.array[((int32_t)2)]))))&1))) {
    goto _1641;
  } else {
    goto _1642;
  }

_1642:
  _859 = llvm_add_u32(_857, 1);
  if ((((((uint32_t)_859) < ((uint32_t)8u))&1))) {
    _857__PHI_TEMPORARY = _859;   /* for PHI node */
    goto _1640;
  } else {
    goto _1643;
  }

  } while (1); /* end of syntactic loop '' */
_1643:
  goto _1644;

_1641:
  _860 = *((&_724->field0.field9.array[((int32_t)_857)].field3));
  if ((((_860 == ((uint8_t)0))&1))) {
    goto _1645;
  } else {
    goto _1644;
  }

_1645:
  _861 = ((*_727)&16777215);
  *_727 = (((((_861 & -24577)&16777215))) & 16777215);
  goto _1644;

_1644:
  _862 = user_interface;
  _863 = *((&_862->field0));
  if ((((_863 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1614;
  } else {
    goto _1646;
  }

_1646:
  _864 = ((*_727)&16777215);
  _863(((&_724->field0.field0.array[((int32_t)0)])), 8, (((uint32_t)(uint32_t)((((((llvm_lshr_u24(_864, 12))&16777215)) & 15)&16777215)))));
  goto _1614;

_1614:
  if ((((_830 == 0u)&1))) {
    goto _1647;
  } else {
    goto _1648;
  }

_1648:
  _865 = user_interface;
  _866 = (&_865->field0);
  _867 = *_866;
  if ((((_867 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1647;
  } else {
    goto _1649;
  }

_1649:
  _868 = ((*_727)&16777215);
  *_727 = ((((((((_868 & -3841)&16777215)) | (((((((((((uint32_t)_831))&16777215)) << 8)&16777215)) & 3840)&16777215)))&16777215))) & 16777215);
  _869 = *_866;
  _869(((&_724->field0.field0.array[((int32_t)0)])), _831, _832);
  goto _1647;

_1647:
  _870 = memcpy((((uint8_t*)((&_724->field0.field10)))), (((uint8_t*)((&_724->field0.field9)))), 56);
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1250:
  _611 = 0;
  _731 = _722 & 65535;
  _732__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1650;

  do {     /* Syntactic loop '' to make GCC happy */
_1650:
  _732 = _732__PHI_TEMPORARY;
  _733 = (&_632[((int32_t)_732)]);
  _734 = *_733;
  if ((((((uint8_t)(llvm_add_u8(_734, -48))) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _1651;
  } else {
    goto _1652;
  }

_1652:
  _735 = llvm_add_u32(_732, 1);
  if ((((((uint32_t)_732) > ((uint32_t)_731))&1))) {
    goto _1653;
  } else {
    _732__PHI_TEMPORARY = _735;   /* for PHI node */
    goto _1650;
  }

  } while (1); /* end of syntactic loop '' */
_1653:
  goto _1654;

_1651:
  _736__PHI_TEMPORARY = _732;   /* for PHI node */
  goto _1655;

  do {     /* Syntactic loop '' to make GCC happy */
_1655:
  _736 = _736__PHI_TEMPORARY;
  _737 = llvm_add_u32(_736, 1);
  if ((((((uint32_t)_736) > ((uint32_t)_731))&1))) {
    goto _1656;
  } else {
    goto _1657;
  }

_1657:
  _738 = *((&_632[((int32_t)_737)]));
  if ((((_738 == ((uint8_t)13))&1))) {
    goto _1658;
  } else {
    _736__PHI_TEMPORARY = _737;   /* for PHI node */
    goto _1655;
  }

  } while (1); /* end of syntactic loop '' */
_1658:
  if ((((((uint32_t)_737) > ((uint32_t)_732))&1))) {
    goto _1659;
  } else {
    _740__PHI_TEMPORARY = _737;   /* for PHI node */
    goto _1660;
  }

_1659:
  _739 = ASCII_StrToInt(_733, (&_611), (llvm_sub_u32(_737, _732)));
  _740__PHI_TEMPORARY = _739;   /* for PHI node */
  goto _1660;

_1660:
  _740 = _740__PHI_TEMPORARY;
  if ((((_740 == 0u)&1))) {
    goto _1661;
  } else {
    goto _1654;
  }

_1661:
  _741 = _611;
  _742 = (&_724->field0.field2);
  *_742 = _741;
  _743 = user_interface;
  _744 = *((&_743->field0));
  if ((((_744 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1662;
  } else {
    goto _1663;
  }

_1663:
  _744(((&_724->field0.field0.array[((int32_t)0)])), 9, ((llvm_lshr_u32(_741, 3)) & 1));
  goto _1662;

_1662:
  _745 = profile_debug_enable;
  if (((((llvm_and_u8(_745, 1)) == ((uint8_t)0))&1))) {
    goto _1664;
  } else {
    goto _1665;
  }

_1665:
  _746 = *_742;
  _747 = printf(((&_OC_str_OC_13.array[((int32_t)0)])), _746);
  goto _1664;

_1664:
  _748 = *_742;
  _749 = l2cap_debug_enable;
  if (((((_748 & 512) == 0u)&1))) {
    goto _1666;
  } else {
    goto _1667;
  }

_1667:
  if (((((llvm_and_u8(_749, 32)) != ((uint8_t)0))&1))) {
    goto _1668;
  } else {
    goto _1669;
  }

_1668:
  _750 = puts(((&_OC_str_OC_14.array[((int32_t)0)])));
  goto _1669;

_1669:
  _751 = user_stack_configs;
  _752 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_751->field9)));
  if (((((_752 & 2048) == 0u)&1))) {
    goto _1670;
  } else {
    goto _1654;
  }

_1670:
  _753 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8((((uint8_t)(((llvm_lshr_u24(_753, 16))&16777215)))), 1)), 31))))&16777215)) << 16)&16777215)) | (((_753 & -2031617)&16777215)))&16777215))) & 16777215);
  goto _1654;

_1666:
  if (((((llvm_and_u8(_749, 32)) != ((uint8_t)0))&1))) {
    goto _1671;
  } else {
    goto _1672;
  }

_1671:
  _754 = puts(((&_OC_str_OC_15.array[((int32_t)0)])));
  goto _1672;

_1672:
  _755 = ((*_727)&16777215);
  *_727 = (((((((((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8((((uint8_t)(((llvm_lshr_u24(_755, 16))&16777215)))), 1)), 31))))&16777215)) << 16)&16777215)) | (((_755 & -2031617)&16777215)))&16777215))) & 16777215);
  goto _1654;

_1656:
  goto _1654;

_1654:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1249:
  _642__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _1208;

_1208:
  _642 = _642__PHI_TEMPORARY;
  _643 = hfp_stack;
  _644 = (&_643->field1.field1);
  _645 = __UNALIGNED_LOAD__(uint16_t, 1, _644);
  if ((((((uint32_t)_641) < ((uint32_t)(((uint32_t)(uint16_t)_645))))&1))) {
    _628__PHI_TEMPORARY = _643;   /* for PHI node */
    _629__PHI_TEMPORARY = _641;   /* for PHI node */
    _630__PHI_TEMPORARY = _642;   /* for PHI node */
    goto _1198;
  } else {
    goto _1673;
  }

  } while (1); /* end of syntactic loop '' */
_1673:
  __UNALIGNED_LOAD__(uint16_t, 1, _644) = 0;
  _1192 = memset(((&_643->field2.array[((int32_t)0)])), 0, 248);
  _1193__PHI_TEMPORARY = _642;   /* for PHI node */
  goto _1195;

_1195:
  _1193 = _1193__PHI_TEMPORARY;
  return _1193;
}


static void hfp_init_process(uint16_t _1674) {
  struct l_array_35_uint8_t _1675;    /* Address-exposed local */
  uint8_t* _1676;
  struct l_struct_struct_OC_hfp_stack_t* _1677;
  struct l_struct_struct_OC_hfp_con* _1678;
  struct l_struct_struct_OC_hfp_con* _1679;
  uint8_t* _1680;
  struct l_struct_struct_OC_hfp_con* _1681;
  struct l_struct_struct_OC_hfp_con* _1681__PHI_TEMPORARY;
  uint16_t _1682;
  uint32_t* _1683;
  uint32_t _1684;
  struct l_struct_struct_OC_hfp_con* _1685;
  uint8_t _1686;
  uint8_t* _1687;
  uint32_t _1688;
  uint32_t _1689;
  uint32_t _1690;
  uint32_t _1691;
  uint32_t _1692;
  uint8_t* _1693;
  uint32_t _1694;
  uint8_t* _1695;
  uint32_t _1696;
  struct l_struct_struct_OC__stack_config* _1697;
  uint32_t _1698;
  uint32_t _1699;
  uint8_t _1700;
  uint32_t _1701;
  uint8_t* _1702;
  uint8_t _1703;
  uint32_t _1704;
  uint32_t _1705;
  uint8_t* _1706;
  uint32_t _1707;
  uint8_t* _1708;
  uint32_t _1709;
  struct l_struct_struct_OC_user_interface_handler* _1710;
  l_fptr_1* _1711;
  uint8_t _1712;
  uint32_t _1713;
  uint32_t _1714;
  struct l_struct_struct_OC_user_interface_handler* _1715;
  l_fptr_1* _1716;
  l_fptr_1* _1717;
  l_fptr_1* _1717__PHI_TEMPORARY;
  uint32_t _1718;
  uint32_t _1719;
  uint32_t _1720;
  uint32_t _1721;
  uint32_t _1722;
  struct l_struct_struct_OC_user_interface_handler* _1723;
  l_fptr_3* _1724;
  uint8_t _1725;
  uint32_t _1726;
  uint32_t _1727;
  uint32_t _1728;
  uint32_t _1729;
  uint32_t _1730;
  uint16_t _1731;
  uint32_t _1732;
  uint16_t _1733;
  struct l_struct_struct_OC_hfp_stack_t* _1734;
  struct l_struct_struct_OC_hfp_con* _1735;
  struct l_struct_struct_OC_hfp_con* _1736;
  struct l_struct_struct_OC_hfp_con* _1737;
  struct l_struct_struct_OC_hfp_con* _1737__PHI_TEMPORARY;
  uint16_t _1738;
  uint32_t* _1739;
  uint32_t _1740;
  struct l_struct_struct_OC_hfp_con* _1741;
  uint32_t _1742;
  uint32_t _1743;
  uint8_t _1744;
  uint32_t _1745;
  uint8_t* _1746;
  uint8_t _1747;
  uint32_t _1748;
  uint8_t _1749;
  uint32_t _1750;
  uint32_t _1751;
  uint32_t _1752;
  uint32_t _1753;
  uint32_t _1753__PHI_TEMPORARY;

  _1676 = (&_1675.array[((int32_t)0)]);
  _1677 = hfp_stack;
  _1678 = (&_1677->field4.array[((int32_t)0)]);
  _1679 = (&_1677->field4.array[((int32_t)1)]);
  _1680 = (&_1677->field0);
  _1681__PHI_TEMPORARY = _1678;   /* for PHI node */
  goto _1754;

  do {     /* Syntactic loop '' to make GCC happy */
_1754:
  _1681 = _1681__PHI_TEMPORARY;
  _1682 = *((&_1681->field0.field3));
  if ((((_1682 == _1674)&1))) {
    goto _1755;
  } else {
    goto _1756;
  }

_1755:
  _1683 = ((uint32_t*)((&_1681->field0.field6)));
  _1684 = ((*_1683)&16777215);
  if (((((((_1684 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _1756;
  } else {
    goto _1757;
  }

_1756:
  _1685 = (&_1681[((int32_t)1)]);
  if ((((((uint32_t)_1685) < ((uint32_t)_1679))&1))) {
    _1681__PHI_TEMPORARY = _1685;   /* for PHI node */
    goto _1754;
  } else {
    goto _1758;
  }

  } while (1); /* end of syntactic loop '' */
_1757:
  _1686 = *_1680;
  if ((((((uint32_t)(((uint32_t)(uint32_t)((((((llvm_lshr_u24(_1684, 16))&16777215)) & 31)&16777215))))) > ((uint32_t)(((uint32_t)(uint8_t)(llvm_and_u8(_1686, 31))))))&1))) {
    goto _1759;
  } else {
    goto _1760;
  }

_1760:
  _1687 = memset(_1676, 0, 35);
  _1688 = ((*_1683)&16777215);
  _1689 = ((llvm_lshr_u24(_1688, 16))&16777215);
  _1690 = ((_1689 & 31)&16777215);
  _1691 = ((uint32_t)(uint32_t)_1690);
  if ((((((uint32_t)_1690) < ((uint32_t)((uint32_t)10)))&1))) {
    goto _1761;
  } else {
    goto _1762;
  }

_1761:
  _1692 = llvm_add_u32(_1691, -1);
  _1693 = (&hfp_SLC_init_cmd.array[((int32_t)_1692)].array[((int32_t)0)]);
  _1694 =  /*tail*/ strlen(_1693);
  _1695 = memcpy(_1676, _1693, _1694);
  _1696 = puts(_1676);
  if ((((_1692 == 0u)&1))) {
    goto _1763;
  } else {
    goto _1764;
  }

_1763:
  _1697 = user_stack_configs;
  _1698 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_1697->field9)));
  _1699 = llvm_select_u32(((((_1698 & 2048) == 0u)&1)), 31, 671);
  _1700 = hfp_more_feature_hf_indicators;
  _1701 = llvm_select_u32((((_1700 == ((uint8_t)0))&1)), _1699, (_1699 | 256));
  _1702 = memcpy(_1676, ((&_OC_str_OC_26.array[((int32_t)0)])), 13);
  *((&_1675.array[((int32_t)8)])) = (llvm_or_u8((((uint8_t)(llvm_udiv_u32(_1701, 100)))), 48));
  *((&_1675.array[((int32_t)9)])) = (llvm_or_u8((((uint8_t)(llvm_urem_u32((llvm_udiv_u32(_1701, 10)), 10)))), 48));
  *((&_1675.array[((int32_t)10)])) = (llvm_or_u8((((uint8_t)(llvm_urem_u32(_1701, 10)))), 48));
  goto _1765;

_1764:
  _1703 = hfp_more_feature_hf_indicators;
  if (((((((_1692 == 5u)&1)) & (((_1703 == ((uint8_t)0))&1)))&1))) {
    goto _1766;
  } else {
    goto _1765;
  }

_1766:
  _1704 =  /*tail*/ puts(((&str_OC_32.array[((int32_t)0)])));
  _1705 = ((*_1683)&16777215);
  *_1683 = ((((((((_1705 & -2031617)&16777215)) | 589824)&16777215))) & 16777215);
  goto _1765;

_1762:
  _1706 = (&hfp_param_set_buf.array[((int32_t)(llvm_add_u32(_1691, -10)))].array[((int32_t)0)]);
  _1707 =  /*tail*/ strlen(_1706);
  _1708 = memcpy(_1676, _1706, _1707);
  switch ((((((uint8_t)_1689))&31))) {
  default:
    goto _1759;
  case ((uint8_t)10):
    goto _1767;
  case ((uint8_t)11):
    goto _1765;
  case ((uint8_t)12):
    goto _1765;
  case ((uint8_t)13):
    goto _1765;
  case ((uint8_t)14):
    goto _1768;
  case ((uint8_t)15):
    goto _1769;
  case ((uint8_t)16u):
    goto _1770;
  case ((uint8_t)-15):
    goto _1771;
  case ((uint8_t)-14):
    goto _1772;
  }

_1767:
  _1709 =  /*tail*/ puts(((&_OC_str_OC_23.array[((int32_t)0)])));
  goto _1765;

_1768:
  *((&_1681->field0.field5)) = 11;
  goto _1765;

_1769:
  _1710 = user_interface;
  _1711 = *((&_1710->field0));
  if ((((_1711 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1773;
  } else {
    goto _1774;
  }

_1774:
  _1712 = l2cap_debug_enable;
  if ((((((int8_t)_1712) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1775;
  } else {
    _1717__PHI_TEMPORARY = _1711;   /* for PHI node */
    goto _1776;
  }

_1775:
  _1713 = ((*_1683)&16777215);
  _1714 =  /*tail*/ printf(((&_OC_str_OC_24.array[((int32_t)0)])), (((uint32_t)(uint32_t)(((_1713 & 15)&16777215)))));
  _1715 = user_interface;
  _1716 = *((&_1715->field0));
  _1717__PHI_TEMPORARY = _1716;   /* for PHI node */
  goto _1776;

_1776:
  _1717 = _1717__PHI_TEMPORARY;
  _1718 = ((*_1683)&16777215);
   /*tail*/ _1717(((&_1681->field0.field0.array[((int32_t)0)])), 7, (((uint32_t)(uint32_t)(((_1718 & 15)&16777215)))));
  goto _1773;

_1773:
  _1719 = ((*_1683)&16777215);
  _1720 = ((_1719 & 15)&16777215);
  *((&_1675.array[((int32_t)7)])) = (llvm_or_u8((((uint8_t)(((llvm_udiv_u24(_1720, 10))&16777215)))), 48));
  *((&_1675.array[((int32_t)8)])) = (llvm_or_u8((((uint8_t)(((llvm_urem_u24(_1720, 10))&16777215)))), 48));
  goto _1765;

_1770:
  _1721 = ((*_1683)&16777215);
  _1722 = (((((llvm_lshr_u24(_1721, 4))&16777215)) & 15)&16777215);
  *((&_1675.array[((int32_t)7)])) = (llvm_or_u8((((uint8_t)(((llvm_udiv_u24(_1722, 10))&16777215)))), 48));
  *((&_1675.array[((int32_t)8)])) = (llvm_or_u8((((uint8_t)(((llvm_urem_u24(_1722, 10))&16777215)))), 48));
  _1723 = user_interface;
  _1724 = *((&_1723->field5));
  if ((((_1724 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _1765;
  } else {
    goto _1777;
  }

_1777:
   /*tail*/ _1724(((&_1681->field0.field0.array[((int32_t)0)])), 1, 2, 1);
  goto _1765;

_1771:
  *((&_1681->field0.field4)) = -2;
  _1725 = *((&_1681->field0.field8.array[((int32_t)2)]));
  if ((((_1725 == ((uint8_t)3))&1))) {
    goto _1778;
  } else {
    goto _1765;
  }

_1778:
  _1726 =  /*tail*/ puts(((&str_OC_31.array[((int32_t)0)])));
  _1727 = ((*_1683)&16777215);
  *_1683 = (((((((((((llvm_add_u24(_1727, 131072))&16777215)) & 2031616)&16777215)) | (((_1727 & -2031617)&16777215)))&16777215))) & 16777215);
  _1728 =  /*tail*/ send_battery_level(((&_1681->field0.field0.array[((int32_t)0)])));
  goto _1759;

_1772:
  _1729 = ((*_1683)&16777215);
  *_1683 = (((((((((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8((((uint8_t)(((llvm_lshr_u24(_1729, 16))&16777215)))), 1)), 31))))&16777215)) << 16)&16777215)) | (((_1729 & -2031617)&16777215)))&16777215))) & 16777215);
  _1730 =  /*tail*/ send_battery_level(((&_1681->field0.field0.array[((int32_t)0)])));
  goto _1759;

_1765:
  _1731 = *((&_1681->field0.field1));
  _1732 = strlen(_1676);
  _1733 = ((uint16_t)_1732);
  _1734 = hfp_stack;
  _1735 = (&_1734->field4.array[((int32_t)0)]);
  _1736 = (&_1734->field4.array[((int32_t)1)]);
  _1737__PHI_TEMPORARY = _1735;   /* for PHI node */
  goto _1779;

  do {     /* Syntactic loop '' to make GCC happy */
_1779:
  _1737 = _1737__PHI_TEMPORARY;
  _1738 = *((&_1737->field0.field1));
  if ((((_1738 == _1731)&1))) {
    goto _1780;
  } else {
    goto _1781;
  }

_1780:
  _1739 = ((uint32_t*)((&_1737->field0.field6)));
  _1740 = ((*_1739)&16777215);
  if (((((((_1740 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _1781;
  } else {
    goto _1782;
  }

_1781:
  _1741 = (&_1737[((int32_t)1)]);
  if ((((((uint32_t)_1741) < ((uint32_t)_1736))&1))) {
    _1737__PHI_TEMPORARY = _1741;   /* for PHI node */
    goto _1779;
  } else {
    goto _1783;
  }

  } while (1); /* end of syntactic loop '' */
_1782:
  _1742 = rfcomm_send_internal(_1731, _1676, _1733);
  if ((((_1742 == 0u)&1))) {
    goto _1784;
  } else {
    goto _1785;
  }

_1784:
  _1743 = ((*_1739)&16777215);
  _1744 = llvm_and_u8((llvm_add_u8((((uint8_t)(((llvm_lshr_u24(_1743, 16))&16777215)))), 1)), 31);
  _1745 = ((_1743 & -2031617)&16777215);
  *_1739 = (((((((((((((uint32_t)(uint8_t)_1744))&16777215)) << 16)&16777215)) | _1745)&16777215))) & 16777215);
  _1746 = *((uint8_t**)(&hfp_stack));
  _1747 = *_1746;
  if ((((((uint8_t)_1744) > ((uint8_t)(llvm_and_u8(_1747, 31))))&1))) {
    goto _1786;
  } else {
    goto _1759;
  }

_1786:
  _1748 = ((((((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_add_u8(_1747, 1)), 31))))&16777215)) << 16)&16777215)) | _1745)&16777215);
  _1753__PHI_TEMPORARY = _1748;   /* for PHI node */
  goto _1787;

_1785:
  _1749 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1749, 32)) == ((uint8_t)0))&1))) {
    goto _1788;
  } else {
    goto _1789;
  }

_1789:
  _1750 = puts(((&_OC_str_OC_27.array[((int32_t)0)])));
  goto _1788;

_1788:
  _1751 = ((*_1739)&16777215);
  _1752 = ((_1751 | 4194304u)&16777215);
  _1753__PHI_TEMPORARY = _1752;   /* for PHI node */
  goto _1787;

_1787:
  _1753 = ((_1753__PHI_TEMPORARY)&16777215);
  *_1739 = ((_1753) & 16777215);
  goto _1759;

_1783:
  goto _1759;

_1758:
  goto _1759;

_1759:
  return;
}


static struct l_struct_struct_OC_hfp_con* __create_hfp_conn(uint8_t* _1790) {
  struct l_struct_struct_OC_hfp_stack_t* _1791;
  struct l_struct_struct_OC_hfp_con* _1792;
  struct l_struct_struct_OC_hfp_con* _1793;
  struct l_struct_struct_OC_hfp_con* _1794;
  struct l_struct_struct_OC_hfp_con* _1794__PHI_TEMPORARY;
  uint32_t* _1795;
  uint32_t _1796;
  uint32_t _1797;
  uint8_t* _1798;
  uint8_t* _1799;
  uint8_t* _1800;
  uint8_t _1801;
  uint8_t* _1802;
  uint8_t _1803;
  uint32_t _1804;
  struct l_struct_struct_OC_hfp_con* _1805;
  struct l_struct_struct_OC_hfp_con* _1806;
  struct l_struct_struct_OC_hfp_con* _1806__PHI_TEMPORARY;

  _1791 = hfp_stack;
  _1792 = (&_1791->field4.array[((int32_t)0)]);
  _1793 = (&_1791->field4.array[((int32_t)1)]);
  _1794__PHI_TEMPORARY = _1792;   /* for PHI node */
  goto _1807;

  do {     /* Syntactic loop '' to make GCC happy */
_1807:
  _1794 = _1794__PHI_TEMPORARY;
  _1795 = ((uint32_t*)((&_1794->field0.field6)));
  _1796 = ((*_1795)&16777215);
  if (((((((_1796 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _1808;
  } else {
    goto _1809;
  }

_1809:
  _1805 = (&_1794[((int32_t)1)]);
  if ((((((uint32_t)_1805) < ((uint32_t)_1793))&1))) {
    _1794__PHI_TEMPORARY = _1805;   /* for PHI node */
    goto _1807;
  } else {
    goto _1810;
  }

  } while (1); /* end of syntactic loop '' */
_1808:
  _1797 = ((_1796 | 2097152)&16777215);
  *_1795 = ((_1797) & 16777215);
  _1798 = (&_1794->field0.field0.array[((int32_t)0)]);
  _1799 = memcpy(_1798, _1790, 6);
  __UNALIGNED_LOAD__(uint64_t, 2, (((uint64_t*)((&_1794->field0.field1))))) = 0;
  *((&_1794->field0.field4)) = -1;
  _1800 = (&_1794->field0.field7);
  _1801 = *_1800;
  *_1800 = (llvm_and_u8(_1801, -8));
  *_1795 = ((((((((_1797 & 10547200u)&16777215)) | 255)&16777215))) & 16777215);
  _1802 = memset((((uint8_t*)((&_1794->field0.field9.array[((int32_t)0)])))), 252, 112);
  _1803 =  /*tail*/ hfp_volume_interface(_1798, -1);
  _1804 = ((*_1795)&16777215);
  *_1795 = ((((((((_1804 & -16)&16777215)) | (((((uint32_t)(uint8_t)(llvm_and_u8(_1803, 15))))&16777215)))&16777215))) & 16777215);
  _1806__PHI_TEMPORARY = _1794;   /* for PHI node */
  goto _1811;

_1810:
  _1806__PHI_TEMPORARY = ((struct l_struct_struct_OC_hfp_con*)/*NULL*/0);   /* for PHI node */
  goto _1811;

_1811:
  _1806 = _1806__PHI_TEMPORARY;
  return _1806;
}


static uint32_t atcmd_try_send(uint16_t _1812, uint8_t* _1813, uint16_t _1814) {
  struct l_struct_struct_OC_hfp_stack_t* _1815;
  struct l_struct_struct_OC_hfp_con* _1816;
  struct l_struct_struct_OC_hfp_con* _1817;
  struct l_struct_struct_OC_hfp_con* _1818;
  struct l_struct_struct_OC_hfp_con* _1818__PHI_TEMPORARY;
  uint16_t _1819;
  uint32_t* _1820;
  uint32_t _1821;
  struct l_struct_struct_OC_hfp_con* _1822;
  uint32_t _1823;
  uint32_t _1824;
  uint32_t _1825;
  uint8_t* _1826;
  uint8_t* _1827;
  uint8_t* _1828;
  uint32_t _1829;
  uint32_t _1830;
  uint32_t _1830__PHI_TEMPORARY;

  _1815 = hfp_stack;
  _1816 = (&_1815->field4.array[((int32_t)0)]);
  _1817 = (&_1815->field4.array[((int32_t)1)]);
  _1818__PHI_TEMPORARY = _1816;   /* for PHI node */
  goto _1831;

  do {     /* Syntactic loop '' to make GCC happy */
_1831:
  _1818 = _1818__PHI_TEMPORARY;
  _1819 = *((&_1818->field0.field1));
  if ((((_1819 == _1812)&1))) {
    goto _1832;
  } else {
    goto _1833;
  }

_1832:
  _1820 = ((uint32_t*)((&_1818->field0.field6)));
  _1821 = ((*_1820)&16777215);
  if (((((((_1821 & 2097152)&16777215)) == ((uint32_t)0))&1))) {
    goto _1833;
  } else {
    goto _1834;
  }

_1833:
  _1822 = (&_1818[((int32_t)1)]);
  if ((((((uint32_t)_1822) < ((uint32_t)_1817))&1))) {
    _1818__PHI_TEMPORARY = _1822;   /* for PHI node */
    goto _1831;
  } else {
    goto _1835;
  }

  } while (1); /* end of syntactic loop '' */
_1834:
  _1823 =  /*tail*/ rfcomm_send_internal(_1812, _1813, _1814);
  if ((((_1823 == 0u)&1))) {
    goto _1836;
  } else {
    goto _1837;
  }

_1837:
  _1824 = ((uint32_t)(uint16_t)_1814);
  _1825 = llvm_add_u32(_1824, 8);
  _1826 =  /*tail*/ malloc(_1825);
  _1827 = memset(_1826, 0, _1825);
  *(((uint16_t*)((&_1826[((int32_t)4)])))) = _1814;
  _1828 = memcpy(((&_1826[((int32_t)6)])), _1813, _1824);
   /*tail*/ btstack_linked_list_add_tail(((&_1818->field1)), (((struct l_struct_struct_OC_btstack_linked_item*)_1826)));
  _1830__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1838;

_1836:
  _1829 = ((*_1820)&16777215);
  *_1820 = (((((_1829 & 12582911u)&16777215))) & 16777215);
  _1830__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1838;

_1835:
  _1830__PHI_TEMPORARY = -1000;   /* for PHI node */
  goto _1838;

_1838:
  _1830 = _1830__PHI_TEMPORARY;
  return _1830;
}

