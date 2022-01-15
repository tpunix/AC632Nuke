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

#ifdef _MSC_VER
#define __MSALIGN__(X) __declspec(align(X))
#else
#define __MSALIGN__(X)
#endif



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC_opp_channel_info;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_profile_cmd_handle;

/* Function definitions */
typedef void l_fptr_1(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_5(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_14(uint8_t);

typedef uint32_t l_fptr_17(uint8_t*, uint32_t);

typedef uint8_t l_fptr_15(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint32_t l_fptr_16(uint8_t*);

typedef uint32_t l_fptr_8(void);

typedef uint32_t l_fptr_18(uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef uint32_t l_fptr_4(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_9(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_2(void);

typedef void l_fptr_7(uint8_t*, uint32_t);

typedef uint32_t l_fptr_12(uint8_t*, uint8_t, uint8_t);

typedef uint32_t l_fptr_3(uint8_t*, uint8_t*);

typedef void l_fptr_13(void);

typedef void l_fptr_6(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_10(uint32_t);

typedef void l_fptr_11(uint8_t, uint32_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_16_uint16_t {
  uint16_t array[16];
};
struct l_struct_struct_OC_opp_channel_info {
  uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint16_t field4;
  uint16_t field5;
  uint16_t field6;
  uint16_t field7;
  uint16_t field8;
  uint32_t field9;
  uint32_t field10;
  uint32_t field11;
  struct l_array_16_uint16_t field12;
  struct l_array_6_uint8_t field13;
  uint8_t* field14;
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
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
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_112_uint8_t {
  uint8_t array[112];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_5* field0;
  l_fptr_6* field1;
  l_fptr_7* field2;
  l_fptr_8* field3;
  l_fptr_9* field4;
  l_fptr_1* field5;
  l_fptr_8* field6;
  l_fptr_10* field7;
  l_fptr_11* field8;
  l_fptr_12* field9;
  l_fptr_13* field10;
  l_fptr_14* field11;
  l_fptr_15* field12;
  l_fptr_9* field13;
  l_fptr_8* field14;
};
struct l_struct_struct_OC_profile_cmd_handle {
  l_fptr_16* field0;
  l_fptr_17* field1;
  l_fptr_16* field2;
  l_fptr_16* field3;
  l_fptr_4* field4;
  l_fptr_17* field5;
  l_fptr_16* field6;
  l_fptr_4* field7;
  l_fptr_4* field8;
  l_fptr_18* field9;
  l_fptr_16* field10;
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_100_uint8_t {
  uint8_t array[100];
};
struct l_array_110_uint8_t {
  uint8_t array[110];
};
struct l_array_60_uint8_t {
  uint8_t array[60];
};

/* External Global Variable Declarations */
extern uint8_t profile_debug_enable;
extern __MSALIGN__(4) struct l_struct_struct_OC__stack_config stack_configs_app __attribute__((aligned(4)));
extern uint8_t l2cap_debug_enable;
extern uint32_t config_asser;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern struct l_struct_struct_OC_profile_cmd_handle profile_cmd_hdl_str;

/* Function Declarations */
void pbap_init(struct l_struct_struct_OC_opp_channel_info*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_register_service_internal(uint8_t*, l_fptr_9*, uint8_t, uint16_t);
static void obex_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void pbap_get_last_phone_card(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void pbap_get_next_phone_card(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void pbap_get_phone_card(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void ASCII_IntToStr(uint8_t*, uint32_t, uint32_t, uint32_t);
uint32_t strlen(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
void pull_vCard_entry(uint16_t, uint32_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t pbap_check_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t pbap_get_rfcomm_cid(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void pbap_set_rfcomm_cid(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void pbap_connect(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t obex_connection_req(uint16_t, uint8_t*, uint8_t);
void pbap_disconnect(uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_32(uint8_t*, uint16_t, uint32_t);
uint32_t rfcomm_send_internal(uint16_t, uint8_t*, uint16_t);
uint16_t fill_Pb_name(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_unicode_name(uint8_t*, uint16_t, uint8_t*, uint8_t);
uint16_t fill_SIMPb_name(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_ich_name(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_mch_name(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_och_name(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_Pb_type(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_type(uint8_t*, uint16_t, uint8_t*, uint8_t);
uint16_t fill_listing_type(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_vCard_type(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_app_parameters(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_16(uint8_t*, uint16_t, uint16_t);
uint16_t fill_listing_app_param(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t fill_singal_app_param(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_cur_number_type(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void pull_phone_book(uint16_t, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void set_phone_book(uint16_t, uint32_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void pull_vCard_listing(uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_empty_name(uint8_t*, uint16_t);
void obex_parse_header_foreach(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void put_buf(uint8_t*, uint32_t);
void list_all_phone_books(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void pbap_mutex_malloc(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void cpu_assert_debug(int, ...);
void vcard_buffer_init(uint8_t*, uint32_t);
uint8_t* vcard_malloc(uint32_t);
void pbap_mutex_free(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void vcard_free(uint8_t*);
void opp_parse_raw_data(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t prase_put_packet(uint8_t*, uint16_t, uint8_t);
uint8_t send_accept_opp_connection(uint16_t);
void send_accept_disconnection(uint16_t);
void send_accept_opp_put_cmd(uint16_t);
void send_success_ending(uint16_t);
void rfcomm_disconnect_internal(uint16_t);
uint32_t contacts_svc_vcard_foreach(uint8_t*, uint32_t, l_fptr_3*, uint8_t);
void send_continue_respone(uint16_t, uint32_t);
uint32_t opp_cmd_io_ctrl(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void rfcomm_create_channel_internal(uint8_t*, l_fptr_9*, struct l_array_6_uint8_t*, uint8_t);
static void pbap_close(void) __ATTRIBUTELIST__((nothrow));
void send_abort_cmd(uint16_t);
uint32_t is_rfcomm_other_conn(uint16_t);
void p33_soft_reset(void);
void rfcomm_accept_connection_internal(uint16_t);
void bt_flip_addr(uint8_t*, uint8_t*);
void pbap_close_status_update_to_user(int, ...);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_opp_channel_info* opp_info;
static struct l_array_2_uint8_t pbap_connect_OC_type_head = { "F" };
static struct l_array_15_uint8_t _OC_str_OC_2 = { "telecom/pb.vcf" };
static struct l_array_20_uint8_t _OC_str_OC_3 = { "SIM1/telecom/pb.vcf" };
static struct l_array_16_uint8_t _OC_str_OC_4 = { "telecom/ich.vcf" };
static struct l_array_16_uint8_t _OC_str_OC_5 = { "telecom/mch.vcf" };
static struct l_array_16_uint8_t _OC_str_OC_6 = { "telecom/och.vcf" };
static struct l_array_15_uint8_t _OC_str_OC_7 = { "x-bt/phonebook" };
static struct l_array_19_uint8_t _OC_str_OC_8 = { "x-bt/vcard-listing" };
static struct l_array_11_uint8_t _OC_str_OC_9 = { "x-bt/vcard" };
static struct l_array_25_uint8_t fill_app_parameters_OC_parameters = { "\x06\x08\x00\x00\x00\x00\x00\x00\x00\x87\a\x01\x00\x04\x02\x03\xE7\x05\x02\x00\x00\x00\x00\x00" };
static struct l_array_20_uint8_t fill_listing_app_param_OC_parameters = { "\x01\x01\x00\x02\x00\x03\x01\x01\x04\x02\xFF\xFE\x05\x02\x00\x00\x00\x00\x00" };
static struct l_array_15_uint8_t fill_singal_app_param_OC_parameters = { "\x06\x08\x00\x00\x00\x00\x00\x00\x00\x87\a\x01\x00\x00" };
uint8_t number_type __HIDDEN__;
static struct l_array_37_uint8_t _OC_str_OC_10 = { "[pro-info] :\ngetting phone book%d \n\n" };
static struct l_array_39_uint8_t _OC_str_OC_11 = { "[pro-info] :\nHEADER_CONNECTION_ID:%d\n\n" };
static struct l_array_29_uint8_t _OC_str_OC_14 = { "[pro-info] :pbap_status %d\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_16 = { "file:%s, line:%d" };
static struct l_array_112_uint8_t _OC_str_OC_17 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c" };
static struct l_array_35_uint8_t _OC_str_OC_18 = { "ASSERT-FAILD: opp_buf.ptr != NULL " };
static struct l_array_50_uint8_t _OC_str_OC_19 = { "ASSERT-FAILD: opp_info->temp_data_buffer != NULL " };
static struct l_array_35_uint8_t _OC_str_OC_20 = { "[pro-info] :\npacket_total_len:%d\n\n" };
static struct l_array_26_uint8_t _OC_str_OC_24 = { "[pro-info] :FINAL_get:%d\n" };
static struct l_array_26_uint8_t _OC_str_OC_29 = { "[pro-info] :card_len:%d\n\n" };
static struct l_array_33_uint8_t _OC_str_OC_31 = { "[pro-info] :opp_cmd_io_ctrl:%d\n\n" };
static struct l_array_31_uint8_t _OC_str_OC_32 = { "ASSERT-FAILD: opp_ptr != NULL " };
static uint32_t* opp_buf_OC_0;
static uint32_t opp_buf_OC_1;
static struct l_array_47_uint8_t str = { "[pro-info] :****opp RFCOMM_CHANNEL_CLOSED****\n" };
static struct l_array_47_uint8_t str_OC_39 = { "[pro-info] :opp RFCOMM channel open succeeded\n" };
static struct l_array_48_uint8_t str_OC_40 = { "[pro-info] :pbap RFCOMM channel open succeeded\n" };
static struct l_array_37_uint8_t str_OC_41 = { "[pro-info] :opp channel open failed\n" };
static struct l_array_47_uint8_t str_OC_42 = { "[pro-info] :\n\n****opp_INCOMING_CONNECTION****\n" };
static struct l_array_22_uint8_t str_OC_43 = { "[pro-info] :get next\n" };
static struct l_array_22_uint8_t str_OC_44 = { "[pro-info] :send_err\n" };
static struct l_array_17_uint8_t str_OC_45 = { "[pro-info] :WHO\n" };
static struct l_array_32_uint8_t str_OC_46 = { "[pro-info] :unkonw head return\n" };
static struct l_array_30_uint8_t str_OC_47 = { "[pro-info] :\n get_all_vcard \n" };
static struct l_array_23_uint8_t str_OC_48 = { "[pro-info] :\nNOT__ACC\n" };
static struct l_array_39_uint8_t str_OC_49 = { "[pro-info] :\nPBAP_WAIT_VCARD_RESPONSE\n" };
static struct l_array_40_uint8_t str_OC_50 = { "[pro-info] :PBAP_WILL_SENT_SETROOTPATH\n" };
static struct l_array_50_uint8_t str_OC_51 = { "[pro-info] :Operation is understood but refused!\n" };
static struct l_array_25_uint8_t str_OC_52 = { "[pro-info] :bad request!" };
static struct l_array_26_uint8_t str_OC_53 = { "[pro-info] :obex disconn\n" };
static struct l_array_23_uint8_t str_OC_54 = { "[pro-info] :obex conn\n" };
static struct l_array_23_uint8_t str_OC_55 = { "[pro-info] :copy over\n" };
static struct l_array_25_uint8_t str_OC_56 = { "[pro-info] :pbap useing\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_select_u16(bool condition, uint16_t iftrue, uint16_t ifnot) {
  uint16_t r;
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
static __forceinline uint16_t llvm_sub_u16(uint16_t a, uint16_t b) {
  uint16_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

void pbap_init(struct l_struct_struct_OC_opp_channel_info* _1, uint8_t* _2, uint32_t _3) {
  struct l_struct_struct_OC_opp_channel_info* _4;
  struct l_struct_struct_OC_opp_channel_info* _5;
  struct l_struct_struct_OC_opp_channel_info* _5__PHI_TEMPORARY;
  uint8_t* _6;

#line 52 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
#line 55 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((_1 == ((struct l_struct_struct_OC_opp_channel_info*)/*NULL*/0))&1))) {
    goto _7;
  } else {
    goto _8;
  }

_7:
  _4 = opp_info;
  _5__PHI_TEMPORARY = _4;   /* for PHI node */
  goto _9;

_8:
#line 56 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  opp_info = _1;
  _5__PHI_TEMPORARY = _1;   /* for PHI node */
  goto _9;

_9:
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _5 = _5__PHI_TEMPORARY;
#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field0)) = 0;
#line 61 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field1)) = 0;
#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field11)) = 0;
#line 63 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field7)) = 0;
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field6)) = 0;
#line 65 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field10)) = 0;
#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((uint8_t**)(&opp_buf_OC_0)) = _2;
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  opp_buf_OC_1 = _3;
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field5)) = 0;
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_5->field14)) = ((uint8_t*)/*NULL*/0);
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _6 = memset(((&_5->field13.array[((int32_t)0)])), 0, 6);
#line 73 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ rfcomm_register_service_internal(((uint8_t*)/*NULL*/0), obex_packet_handler, 7, 512);
}


static void obex_packet_handler(uint8_t _10, uint16_t _11, uint8_t* _12, uint16_t _13) {
  struct l_array_6_uint8_t _14;    /* Address-exposed local */
  uint8_t* _15;
  uint8_t _16;
  uint8_t _17;
  uint32_t _18;
  uint8_t _19;
  uint8_t _20;
  uint16_t _21;
  struct l_struct_struct_OC_opp_channel_info* _22;
  uint8_t _23;
  uint8_t _24;
  uint32_t _25;
  struct l_struct_struct_OC_opp_channel_info* _26;
  uint32_t _27;
  uint8_t _28;
  uint8_t _29;
  struct l_struct_struct_OC_opp_channel_info* _30;
  struct l_struct_struct_OC_user_interface_handler* _31;
  l_fptr_1* _32;
  struct l_struct_struct_OC_opp_channel_info* _33;
  uint8_t _34;
  uint32_t _35;
  uint8_t _36;
  uint8_t _37;
  uint8_t _38;
  uint32_t _39;
  uint8_t _40;
  uint32_t _41;
  struct l_struct_struct_OC_opp_channel_info* _42;
  uint8_t* _43;
  uint8_t* _44;
  uint8_t* _45;
  struct l_struct_struct_OC_user_interface_handler* _46;
  l_fptr_1* _47;
  uint8_t* _48;

#line 771 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
  ;
#line 773 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _15 = (&_14.array[((int32_t)0)]);
  ;
  switch (_10) {
  default:
    goto _49;
  case ((uint8_t)4):
    goto _50;
  case ((uint8_t)7):
    goto _51;
  }

_50:
#line 776 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _16 = *_12;
  switch (_16) {
  default:
    goto _49;
  case ((uint8_t)-126):
    goto _52;
  case ((uint8_t)128u):
    goto _53;
  case ((uint8_t)-127):
    goto _54;
  case ((uint8_t)-124):
    goto _55;
  }

_52:
#line 778 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _17 = profile_debug_enable;
  if (((((llvm_and_u8(_17, 1)) == ((uint8_t)0))&1))) {
    goto _56;
  } else {
    goto _57;
  }

_57:
  _18 =  /*tail*/ puts(((&str_OC_42.array[((int32_t)0)])));
  goto _56;

_56:
#line 780 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _19 = *((&_12[((int32_t)9)]));
  _20 = *((&_12[((int32_t)10)]));
  _21 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_20)), 8)), (((uint16_t)(uint8_t)_19)));
  _22 = opp_info;
  *((&_22->field7)) = _21;
#line 781 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ rfcomm_accept_connection_internal(_21);
  goto _49;

_53:
#line 786 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _23 = *((&_12[((int32_t)2)]));
  if ((((_23 == ((uint8_t)0))&1))) {
    goto _58;
  } else {
    goto _59;
  }

_59:
#line 787 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _24 = profile_debug_enable;
  if (((((llvm_and_u8(_24, 1)) == ((uint8_t)0))&1))) {
    goto _49;
  } else {
    goto _60;
  }

_60:
  _25 =  /*tail*/ puts(((&str_OC_41.array[((int32_t)0)])));
  goto _49;

_58:
#line 789 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _26 = opp_info;
  _27 = *((&_26->field11));
  if ((((_27 == 2u)&1))) {
    goto _61;
  } else {
    goto _62;
  }

_61:
#line 790 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ bt_flip_addr(((&_26->field13.array[((int32_t)0)])), ((&_12[((int32_t)3)])));
#line 791 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _28 = *((&_12[((int32_t)12)]));
  _29 = *((&_12[((int32_t)13)]));
#line 247 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 249 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _30 = opp_info;
  *((&_30->field7)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_29)), 8)), (((uint16_t)(uint8_t)_28))));
#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_30->field11)) = 3;
#line 792 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_connect();
#line 793 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _31 = user_interface;
  _32 = *((&_31->field5));
  _33 = opp_info;
   /*tail*/ _32(((&_33->field13.array[((int32_t)0)])), 1, 64, 1);
#line 794 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _34 = profile_debug_enable;
  if (((((llvm_and_u8(_34, 1)) == ((uint8_t)0))&1))) {
    goto _49;
  } else {
    goto _63;
  }

_63:
  _35 =  /*tail*/ puts(((&str_OC_40.array[((int32_t)0)])));
  goto _49;

_62:
#line 796 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_26->field10)) = 0;
#line 797 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_26->field8)) = 0;
#line 798 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _36 = *((&_12[((int32_t)12)]));
  _37 = *((&_12[((int32_t)13)]));
  *((&_26->field7)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_37)), 8)), (((uint16_t)(uint8_t)_36))));
#line 799 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _38 = profile_debug_enable;
  if (((((llvm_and_u8(_38, 1)) == ((uint8_t)0))&1))) {
    goto _49;
  } else {
    goto _64;
  }

_64:
  _39 =  /*tail*/ puts(((&str_OC_39.array[((int32_t)0)])));
  goto _49;

_54:
#line 806 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _40 = profile_debug_enable;
  if (((((llvm_and_u8(_40, 1)) == ((uint8_t)0))&1))) {
    goto _65;
  } else {
    goto _66;
  }

_66:
  _41 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _65;

_65:
#line 807 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _42 = opp_info;
  _43 = (&_42->field13.array[((int32_t)0)]);
  _44 = memcpy(_15, _43, 6);
#line 77 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_42->field0)) = 0;
#line 78 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_42->field1)) = 0;
#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_42->field7)) = 0;
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_42->field6)) = 0;
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 83 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _45 = memset(_43, 0, 6);
#line 810 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_42->field8)) = 0;
#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *(((uint64_t*)((&_42->field10)))) = 0;
#line 811 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ ((l_fptr_2*)(void*)pbap_close_status_update_to_user)();
#line 812 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_mutex_free();
#line 814 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _46 = user_interface;
  _47 = *((&_46->field5));
  _47(_15, 0, 64, 1);
#line 816 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _48 = *((uint8_t**)(&opp_info));
  free(_48);
#line 817 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  opp_info = ((struct l_struct_struct_OC_opp_channel_info*)/*NULL*/0);
  goto _49;

_55:
#line 822 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_connect();
  goto _49;

_51:
#line 830 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ opp_parse_raw_data(_12, _13);
  goto _49;

_49:
  return;
}


void pbap_get_last_phone_card(void) {
  struct l_struct_struct_OC_opp_channel_info* _67;
  uint16_t* _68;
  uint16_t _69;
  uint16_t _70;
  uint16_t _71;
  uint16_t _71__PHI_TEMPORARY;
  uint8_t* _72;
  uint8_t _73;
  uint8_t _74;

#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _67 = opp_info;
  _68 = (&_67->field6);
  _69 = *_68;
  if ((((((uint16_t)_69) > ((uint16_t)((uint16_t)1)))&1))) {
    goto _75;
  } else {
    _71__PHI_TEMPORARY = _69;   /* for PHI node */
    goto _76;
  }

_75:
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _70 = llvm_add_u16(_69, -1);
  *_68 = _70;
  _71__PHI_TEMPORARY = _70;   /* for PHI node */
  goto _76;

_76:
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _71 = _71__PHI_TEMPORARY;
  _72 = (&_67->field1);
  _73 = *_72;
  _74 = llvm_add_u8(_73, 1);
  *_72 = _74;
  *((&_67->field12.array[((int32_t)(((uint32_t)(uint8_t)_73)))])) = _71;
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((((uint8_t)_74) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _77;
  } else {
    goto _78;
  }

_77:
#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_72 = 0;
  goto _78;

_78:
  return;
}


void pbap_get_next_phone_card(void) {
  uint8_t _79;
  uint32_t _80;
  struct l_struct_struct_OC_opp_channel_info* _81;
  uint16_t* _82;
  uint16_t _83;
  uint16_t _84;
  uint8_t* _85;
  uint8_t _86;
  uint8_t _87;

#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _79 = profile_debug_enable;
  if (((((llvm_and_u8(_79, 1)) == ((uint8_t)0))&1))) {
    goto _88;
  } else {
    goto _89;
  }

_89:
  _80 =  /*tail*/ puts(((&str_OC_43.array[((int32_t)0)])));
  goto _88;

_88:
#line 173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _81 = opp_info;
  _82 = (&_81->field6);
  _83 = *_82;
  _84 = llvm_add_u16(_83, 1);
  *_82 = _84;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _85 = (&_81->field1);
  _86 = *_85;
  _87 = llvm_add_u8(_86, 1);
  *_85 = _87;
  *((&_81->field12.array[((int32_t)(((uint32_t)(uint8_t)_86)))])) = _84;
#line 175 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((((uint8_t)_87) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _90;
  } else {
    goto _91;
  }

_90:
#line 176 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_85 = 0;
  goto _91;

_91:
  return;
}


void pbap_get_phone_card(uint32_t _92) {
  struct l_array_10_uint8_t _93;    /* Address-exposed local */
  uint8_t* _94;
  uint8_t* _95;
  uint32_t _96;
  uint32_t _97;
  struct l_struct_struct_OC_opp_channel_info* _98;
  uint16_t _99;
  uint32_t _100;

#line 205 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 207 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _94 = (&_93.array[((int32_t)0)]);
  ;
  _95 = memset(_94, 0, 10);
#line 208 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 205 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _96 = llvm_select_u32((((((uint32_t)(llvm_add_u32(_92, -1))) > ((uint32_t)998u))&1)), 1, _92);
#line 205 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 212 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((((uint32_t)_96) < ((uint32_t)10u))&1))) {
    goto _101;
  } else {
    goto _102;
  }

_101:
#line 213 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ASCII_IntToStr(_94, _96, 1, 10);
  goto _103;

_102:
#line 214 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((((uint32_t)_96) < ((uint32_t)99u))&1))) {
    goto _104;
  } else {
    goto _105;
  }

_104:
#line 215 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ASCII_IntToStr(_94, _96, 2, 10);
  goto _103;

_105:
#line 216 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((((uint32_t)_96) < ((uint32_t)999u))&1))) {
    goto _106;
  } else {
    goto _103;
  }

_106:
#line 217 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ASCII_IntToStr(_94, _96, 3, 10);
  goto _103;

_103:
#line 219 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _97 = strlen(_94);
#line 208 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 220 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_93.array[((int32_t)(_97 & 255))])) = 46;
#line 221 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_93.array[((int32_t)((llvm_add_u32(_97, 1)) & 255))])) = 118u;
#line 222 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_93.array[((int32_t)((llvm_add_u32(_97, 2)) & 255))])) = 99u;
#line 223 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 208 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 223 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_93.array[((int32_t)((llvm_add_u32(_97, 3)) & 255))])) = 102u;
#line 225 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _98 = opp_info;
  *((&_98->field11)) = 9;
#line 226 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _99 = *((&_98->field7));
  _100 = *((&_98->field9));
  pull_vCard_entry(_99, _100, _94, (llvm_add_u8((((uint8_t)_97)), 4)));
}


void pull_vCard_entry(uint16_t _107, uint32_t _108, uint8_t* _109, uint8_t _110) {
  struct l_array_100_uint8_t _111;    /* Address-exposed local */
  uint8_t* _112;
  uint8_t* _113;
  uint32_t _114;
  uint32_t _115;
  uint8_t* _116;
  uint16_t _117;
  uint32_t _118;

#line 517 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
  ;
#line 519 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _112 = (&_111.array[((int32_t)0)]);
  ;
  _113 = memset(((&_111.array[((int32_t)4)])), 0, 96);
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 521 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_112 = 131u;
#line 522 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)1)])) = 0;
#line 523 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)2)])) = 0;
#line 524 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)3)])) = -53;
#line 525 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_32(_112, 4, _108);
#line 526 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _114 = fill_unicode_name(_112, 8, _109, _110);
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 344 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _115 = fill_type(_112, (((uint16_t)_114)), ((&_OC_str_OC_9.array[((int32_t)0)])), 10);
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 398 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)(_115 & 65535))])) = 76u;
#line 402 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)((llvm_add_u32(_115, 1)) & 65535))])) = 0;
#line 403 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)((llvm_add_u32(_115, 2)) & 65535))])) = 16;
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 404 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _116 = memcpy(((&_111.array[((int32_t)((llvm_add_u32(_115, 3)) & 65535))])), ((&fill_singal_app_param_OC_parameters.array[((int32_t)0)])), 13);
#line 407 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _117 = llvm_add_u16((((uint16_t)_115)), 16);
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 530 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_111.array[((int32_t)(((uint32_t)(uint16_t)_117)))])) = 0;
#line 531 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_16(_112, 1, _117);
#line 532 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _118 = rfcomm_send_internal(_107, _112, _117);
}


uint8_t pbap_check_status(void) {
  struct l_struct_struct_OC_opp_channel_info* _119;
  uint32_t _120;

#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _119 = opp_info;
  _120 = *((&_119->field11));
  return (((uint8_t)_120));
}


uint16_t pbap_get_rfcomm_cid(void) {
  struct l_struct_struct_OC_opp_channel_info* _121;
  uint16_t _122;

#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _121 = opp_info;
  _122 = *((&_121->field7));
  return _122;
}


void pbap_set_rfcomm_cid(uint16_t _123) {
  struct l_struct_struct_OC_opp_channel_info* _124;

#line 247 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 249 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _124 = opp_info;
  *((&_124->field7)) = _123;
#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_124->field11)) = 3;
}


void pbap_connect(void) {
  struct l_struct_struct_OC_opp_channel_info* _125;
  uint16_t _126;
  uint32_t _127;
  uint8_t _128;
  uint8_t _129;
  uint32_t _130;
  struct l_struct_struct_OC_opp_channel_info* _131;

#line 260 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _125 = opp_info;
  _126 = *((&_125->field7));
  if ((((_126 == ((uint16_t)0))&1))) {
    goto _132;
  } else {
    goto _133;
  }

_133:
  _127 = *((&_125->field11));
  if ((((_127 == 3u)&1))) {
    goto _134;
  } else {
    goto _132;
  }

_134:
#line 261 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _128 =  /*tail*/ obex_connection_req(_126, ((&pbap_connect_OC_type_head.array[((int32_t)0)])), 1);
  if ((((_128 == ((uint8_t)0))&1))) {
    goto _135;
  } else {
    goto _136;
  }

_136:
#line 263 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _129 = profile_debug_enable;
  if (((((llvm_and_u8(_129, 1)) == ((uint8_t)0))&1))) {
    goto _132;
  } else {
    goto _137;
  }

_137:
  _130 =  /*tail*/ puts(((&str_OC_44.array[((int32_t)0)])));
  goto _132;

_135:
#line 265 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _131 = opp_info;
  *((&_131->field11)) = 5;
  goto _132;

_132:
  return;
}


void pbap_disconnect(uint16_t _138, uint32_t _139) {
  struct l_array_10_uint8_t _140;    /* Address-exposed local */
  uint8_t* _141;
  uint8_t* _142;
  struct l_struct_struct_OC_opp_channel_info* _143;
  uint32_t _144;

#line 270 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 272 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _141 = (&_140.array[((int32_t)0)]);
  ;
  _142 = memset(((&_140.array[((int32_t)4)])), 0, 6);
#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_141 = 129u;
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_140.array[((int32_t)1)])) = 0;
#line 275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_140.array[((int32_t)2)])) = 8;
#line 276 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_140.array[((int32_t)3)])) = -53;
#line 277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_32(_141, 4, _139);
#line 278 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _143 = opp_info;
  *((&_143->field11)) = 0;
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _144 = rfcomm_send_internal(_138, _141, 8);
}


uint16_t fill_Pb_name(uint8_t* _145, uint16_t _146) {
  uint32_t _147;

#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _147 =  /*tail*/ fill_unicode_name(_145, _146, ((&_OC_str_OC_2.array[((int32_t)0)])), 14);
  return (((uint16_t)_147));
}


uint16_t fill_SIMPb_name(uint8_t* _148, uint16_t _149) {
  uint32_t _150;

#line 295 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 297 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _150 =  /*tail*/ fill_unicode_name(_148, _149, ((&_OC_str_OC_3.array[((int32_t)0)])), 19);
  return (((uint16_t)_150));
}


uint16_t fill_ich_name(uint8_t* _151, uint16_t _152) {
  uint32_t _153;

#line 303 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 305 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _153 =  /*tail*/ fill_unicode_name(_151, _152, ((&_OC_str_OC_4.array[((int32_t)0)])), 15);
  return (((uint16_t)_153));
}


uint16_t fill_mch_name(uint8_t* _154, uint16_t _155) {
  uint32_t _156;

#line 311 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 313 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _156 =  /*tail*/ fill_unicode_name(_154, _155, ((&_OC_str_OC_5.array[((int32_t)0)])), 15);
  return (((uint16_t)_156));
}


uint16_t fill_och_name(uint8_t* _157, uint16_t _158) {
  uint32_t _159;

#line 319 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _159 =  /*tail*/ fill_unicode_name(_157, _158, ((&_OC_str_OC_6.array[((int32_t)0)])), 15);
  return (((uint16_t)_159));
}


uint16_t fill_Pb_type(uint8_t* _160, uint16_t _161) {
  uint32_t _162;

#line 327 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 329 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _162 =  /*tail*/ fill_type(_160, _161, ((&_OC_str_OC_7.array[((int32_t)0)])), 14);
  return (((uint16_t)_162));
}


uint16_t fill_listing_type(uint8_t* _163, uint16_t _164) {
  uint32_t _165;

#line 336 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 338 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _165 =  /*tail*/ fill_type(_163, _164, ((&_OC_str_OC_8.array[((int32_t)0)])), 18);
  return (((uint16_t)_165));
}


uint16_t fill_vCard_type(uint8_t* _166, uint16_t _167) {
  uint32_t _168;

#line 344 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _168 =  /*tail*/ fill_type(_166, _167, ((&_OC_str_OC_9.array[((int32_t)0)])), 10);
  return (((uint16_t)_168));
}


uint16_t fill_app_parameters(uint8_t* _169, uint16_t _170, uint16_t _171) {
  struct l_array_25_uint8_t _172;    /* Address-exposed local */
  uint8_t* _173;
  uint8_t* _174;
  uint8_t* _175;

#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
#line 355 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 356 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _173 = (&_172.array[((int32_t)0)]);
  ;
  _174 = memcpy(_173, ((&fill_app_parameters_OC_parameters.array[((int32_t)0)])), 25);
#line 361 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 361 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_169[((int32_t)(((uint32_t)(uint16_t)_170)))])) = 76u;
#line 362 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 362 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_169[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_170, 1)))))])) = 0;
#line 363 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 363 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_169[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_170, 2)))))])) = 24;
#line 364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_16(_173, 15, _171);
#line 355 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 366 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _175 = memcpy(((&_169[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_170, 3)))))])), ((&_172.array[((int32_t)0)])), 21);
#line 368 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  return (llvm_add_u16(_170, 24));
}


uint16_t fill_listing_app_param(uint8_t* _176, uint16_t _177) {
  uint8_t* _178;

#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 377 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 383 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 383 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_176[((int32_t)(((uint32_t)(uint16_t)_177)))])) = 76u;
#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_176[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_177, 1)))))])) = 0;
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_176[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_177, 2)))))])) = 16;
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _178 = memcpy(((&_176[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_177, 3)))))])), ((&fill_listing_app_param_OC_parameters.array[((int32_t)0)])), 16);
#line 389 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  return (llvm_add_u16(_177, 19));
}


uint16_t fill_singal_app_param(uint8_t* _179, uint16_t _180) {
  uint8_t* _181;

#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 398 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_179[((int32_t)(((uint32_t)(uint16_t)_180)))])) = 76u;
#line 402 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 402 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_179[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_180, 1)))))])) = 0;
#line 403 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 403 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_179[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_180, 2)))))])) = 16;
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 404 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _181 = memcpy(((&_179[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_180, 3)))))])), ((&fill_singal_app_param_OC_parameters.array[((int32_t)0)])), 13);
#line 407 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  return (llvm_add_u16(_180, 16));
}


uint8_t check_cur_number_type(void) {
  uint8_t _182;

#line 417 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _182 = number_type;
  return _182;
}


void pull_phone_book(uint16_t _183, uint32_t _184, uint8_t _185) {
  struct l_array_110_uint8_t _186;    /* Address-exposed local */
  uint8_t* _187;
  uint8_t* _188;
  uint32_t _189;
  uint32_t _190;
  uint32_t _191;
  uint32_t _192;
  uint32_t _193;
  uint32_t _194;
  uint32_t _195;
  uint32_t _196;
  uint32_t _196__PHI_TEMPORARY;
  uint16_t _197;
  uint8_t _198;
  uint16_t _199;
  uint8_t _200;
  uint32_t _201;
  uint32_t _202;
  uint16_t _203;
  uint32_t _204;

#line 420 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
#line 422 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _187 = (&_186.array[((int32_t)0)]);
  ;
  _188 = memset(((&_186.array[((int32_t)4)])), 0, 106);
#line 423 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 425 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_187 = 131u;
#line 426 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_186.array[((int32_t)1)])) = 0;
#line 427 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_186.array[((int32_t)2)])) = 0;
#line 428 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_186.array[((int32_t)3)])) = -53;
#line 429 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_32(_187, 4, _184);
#line 430 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _189 = ((uint32_t)(uint8_t)_185);
  switch (_185) {
  default:
    goto _205;
  case ((uint8_t)0):
    goto _206;
  case ((uint8_t)1):
    goto _207;
  case ((uint8_t)3):
    goto _208;
  case ((uint8_t)2):
    goto _209;
  case ((uint8_t)4):
    goto _210;
  }

_206:
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  number_type = 0;
#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _190 = fill_unicode_name(_187, 8, ((&_OC_str_OC_2.array[((int32_t)0)])), 14);
  _196__PHI_TEMPORARY = _190;   /* for PHI node */
  goto _211;

_207:
#line 436 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  number_type = 0;
#line 295 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 297 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _191 = fill_unicode_name(_187, 8, ((&_OC_str_OC_3.array[((int32_t)0)])), 19);
  _196__PHI_TEMPORARY = _191;   /* for PHI node */
  goto _211;

_208:
#line 440 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  number_type = 2;
#line 303 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 305 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _192 = fill_unicode_name(_187, 8, ((&_OC_str_OC_4.array[((int32_t)0)])), 15);
  _196__PHI_TEMPORARY = _192;   /* for PHI node */
  goto _211;

_209:
#line 444 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  number_type = 1;
#line 319 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _193 = fill_unicode_name(_187, 8, ((&_OC_str_OC_6.array[((int32_t)0)])), 15);
  _196__PHI_TEMPORARY = _193;   /* for PHI node */
  goto _211;

_210:
#line 448 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  number_type = 3;
#line 311 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 313 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _194 = fill_unicode_name(_187, 8, ((&_OC_str_OC_5.array[((int32_t)0)])), 15);
  _196__PHI_TEMPORARY = _194;   /* for PHI node */
  goto _211;

_205:
#line 452 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  number_type = 0;
#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _195 = fill_unicode_name(_187, 8, ((&_OC_str_OC_2.array[((int32_t)0)])), 14);
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  _196__PHI_TEMPORARY = _195;   /* for PHI node */
  goto _211;

_211:
  _196 = _196__PHI_TEMPORARY;
  _197 = ((uint16_t)_196);
  ;
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _198 = *((&stack_configs_app.field13));
#line 423 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _199 = llvm_select_u16((((((uint8_t)_185) < ((uint8_t)((uint8_t)2)))&1)), 999, (((uint16_t)(uint8_t)_198)));
#line 423 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 462 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _200 = profile_debug_enable;
  if (((((llvm_and_u8(_200, 1)) == ((uint8_t)0))&1))) {
    goto _212;
  } else {
    goto _213;
  }

_213:
  _201 = printf(((&_OC_str_OC_10.array[((int32_t)0)])), _189);
  goto _212;

_212:
#line 327 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 329 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _202 = fill_type(_187, _197, ((&_OC_str_OC_7.array[((int32_t)0)])), 14);
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 464 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _203 = fill_app_parameters(_187, (((uint16_t)_202)), _199);
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 465 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_186.array[((int32_t)(((uint32_t)(uint16_t)_203)))])) = 0;
#line 466 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_16(_187, 1, _203);
#line 467 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _204 = rfcomm_send_internal(_183, _187, _203);
}


void set_phone_book(uint16_t _214, uint32_t _215, uint8_t* _216, uint8_t _217) {
  struct l_array_60_uint8_t _218;    /* Address-exposed local */
  uint8_t* _219;
  uint8_t* _220;
  uint32_t _221;
  uint16_t _222;
  uint32_t _223;

#line 474 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
  ;
#line 476 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _219 = (&_218.array[((int32_t)0)]);
  ;
  _220 = memset(((&_218.array[((int32_t)6)])), 0, 54);
#line 477 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 478 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_219 = 133u;
#line 479 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 483 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 480 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_218.array[((int32_t)1)]))))) = 0;
#line 483 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_218.array[((int32_t)5)])) = -53;
#line 484 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_32(_219, 6, _215);
#line 485 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _221 = fill_unicode_name(_219, 10, _216, _217);
  _222 = ((uint16_t)_221);
#line 477 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 486 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_218.array[((int32_t)(_221 & 65535))])) = 0;
#line 487 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_16(_219, 1, _222);
#line 488 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _223 = rfcomm_send_internal(_214, _219, _222);
}


void pull_vCard_listing(uint16_t _224, uint32_t _225) {
  struct l_array_100_uint8_t _226;    /* Address-exposed local */
  uint8_t* _227;
  uint8_t* _228;
  uint32_t _229;
  uint32_t _230;
  uint8_t* _231;
  uint16_t _232;
  uint32_t _233;

#line 496 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 498 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _227 = (&_226.array[((int32_t)0)]);
  ;
  _228 = memset(((&_226.array[((int32_t)4)])), 0, 96);
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 500 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_227 = 131u;
#line 501 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)1)])) = 0;
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)2)])) = 0;
#line 503 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)3)])) = -53;
#line 504 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_32(_227, 4, _225);
#line 336 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 338 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _229 = fill_type(_227, 0, ((&_OC_str_OC_8.array[((int32_t)0)])), 18);
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 506 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _230 = fill_empty_name(_227, (((uint16_t)_229)));
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 377 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 383 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)(_230 & 65535))])) = 76u;
#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)((llvm_add_u32(_230, 1)) & 65535))])) = 0;
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)((llvm_add_u32(_230, 2)) & 65535))])) = 16;
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _231 = memcpy(((&_226.array[((int32_t)((llvm_add_u32(_230, 3)) & 65535))])), ((&fill_listing_app_param_OC_parameters.array[((int32_t)0)])), 16);
#line 389 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _232 = llvm_add_u16((((uint16_t)_230)), 19);
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 508 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_226.array[((int32_t)(((uint32_t)(uint16_t)_232)))])) = 0;
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  net_store_16(_227, 1, _232);
#line 510 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _233 = rfcomm_send_internal(_224, _227, _232);
}


void obex_parse_header_foreach(uint8_t* _234, uint16_t _235) {
  uint8_t _236;
  uint32_t _237;
  uint32_t _238;
  uint8_t* _239;
  uint8_t* _239__PHI_TEMPORARY;
  uint8_t _240;
  uint8_t _241;
  uint8_t _241__PHI_TEMPORARY;
  uint8_t _242;
  uint8_t* _243;
  uint8_t* _244;
  uint8_t* _245;
  uint8_t* _246;
  uint8_t _247;
  uint8_t* _248;
  uint8_t _249;
  uint8_t* _250;
  uint8_t _251;
  uint8_t* _252;
  uint8_t _253;
  uint32_t _254;
  uint8_t* _255;
  uint8_t* _255__PHI_TEMPORARY;
  uint8_t* _256;
  uint8_t* _256__PHI_TEMPORARY;
  uint8_t* _257;
  uint8_t* _257__PHI_TEMPORARY;
  uint8_t _258;
  uint8_t _259;
  uint8_t _260;
  uint8_t _261;
  struct l_struct_struct_OC_opp_channel_info* _262;
  uint8_t _263;
  uint32_t _264;
  uint32_t _265;
  uint32_t _265__PHI_TEMPORARY;
  uint8_t* _266;
  uint8_t _267;
  uint32_t _268;

#line 536 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 538 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 541 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _236 = l2cap_debug_enable;
  _237 = ((uint32_t)(uint16_t)_235);
  if (((((llvm_and_u8(_236, 64u)) == ((uint8_t)0))&1))) {
    goto _269;
  } else {
    goto _270;
  }

_270:
   /*tail*/ put_buf(_234, _237);
  goto _269;

_269:
  _238 = ((uint32_t)(uintptr_t)_234);
  if ((((_235 == ((uint16_t)0))&1))) {
    goto _271;
  } else {
    goto _272;
  }

_272:
  _239__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _273;

  do {     /* Syntactic loop '' to make GCC happy */
_273:
  _239 = _239__PHI_TEMPORARY;
  _240 = *_239;
  _241__PHI_TEMPORARY = _240;   /* for PHI node */
  goto _274;

  do {     /* Syntactic loop '' to make GCC happy */
_274:
#line 543 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _241 = _241__PHI_TEMPORARY;
#line 538 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  switch (_241) {
  default:
    goto _275;
  case ((uint8_t)-53):
    goto _276;
  case ((uint8_t)74):
    goto _277;
  case ((uint8_t)70):
    _241__PHI_TEMPORARY = 70u;   /* for PHI node */
    goto _274;
  }

  } while (1); /* end of syntactic loop '' */
_277:
#line 551 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _263 = profile_debug_enable;
  if (((((llvm_and_u8(_263, 1)) == ((uint8_t)0))&1))) {
    _265__PHI_TEMPORARY = 19;   /* for PHI node */
    goto _278;
  } else {
    goto _279;
  }

_279:
  _264 =  /*tail*/ puts(((&str_OC_45.array[((int32_t)0)])));
  _265__PHI_TEMPORARY = 19;   /* for PHI node */
  goto _278;

_276:
#line 546 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _242 = profile_debug_enable;
  _243 = (&_239[((int32_t)4)]);
  if (((((llvm_and_u8(_242, 1)) == ((uint8_t)0))&1))) {
    goto _280;
  } else {
    goto _281;
  }

_281:
  _247 = *_243;
  _248 = (&_239[((int32_t)3)]);
  _249 = *_248;
  _250 = (&_239[((int32_t)2)]);
  _251 = *_250;
  _252 = (&_239[((int32_t)1)]);
  _253 = *_252;
  _254 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), (((((((uint32_t)(uint8_t)_249)) << 8) | (((uint32_t)(uint8_t)_247))) | ((((uint32_t)(uint8_t)_251)) << 16)) | ((((uint32_t)(uint8_t)_253)) << 24)));
  _255__PHI_TEMPORARY = _252;   /* for PHI node */
  _256__PHI_TEMPORARY = _250;   /* for PHI node */
  _257__PHI_TEMPORARY = _248;   /* for PHI node */
  goto _282;

_280:
#line 547 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _244 = (&_239[((int32_t)3)]);
  _245 = (&_239[((int32_t)2)]);
  _246 = (&_239[((int32_t)1)]);
  _255__PHI_TEMPORARY = _246;   /* for PHI node */
  _256__PHI_TEMPORARY = _245;   /* for PHI node */
  _257__PHI_TEMPORARY = _244;   /* for PHI node */
  goto _282;

_282:
  _255 = _255__PHI_TEMPORARY;
  _256 = _256__PHI_TEMPORARY;
  _257 = _257__PHI_TEMPORARY;
  _258 = *_243;
  _259 = *_257;
  _260 = *_256;
  _261 = *_255;
  _262 = opp_info;
  *((&_262->field9)) = (((((((uint32_t)(uint8_t)_259)) << 8) | (((uint32_t)(uint8_t)_258))) | ((((uint32_t)(uint8_t)_260)) << 16)) | ((((uint32_t)(uint8_t)_261)) << 24));
  _265__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _278;

_278:
  _265 = _265__PHI_TEMPORARY;
  _266 = (&_239[((int32_t)_265)]);
  if ((((((int32_t)(llvm_sub_u32((((uint32_t)(uintptr_t)_266)), _238))) < ((int32_t)_237))&1))) {
    _239__PHI_TEMPORARY = _266;   /* for PHI node */
    goto _273;
  } else {
    goto _283;
  }

  } while (1); /* end of syntactic loop '' */
_275:
#line 557 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _267 = profile_debug_enable;
  if (((((llvm_and_u8(_267, 1)) == ((uint8_t)0))&1))) {
    goto _271;
  } else {
    goto _284;
  }

_284:
  _268 =  /*tail*/ puts(((&str_OC_46.array[((int32_t)0)])));
  goto _271;

_283:
  goto _271;

_271:
  return;
}


void list_all_phone_books(void) {
  uint8_t _285;
  struct l_struct_struct_OC_opp_channel_info* _286;
  uint32_t _287;
  uint32_t _288;
  struct l_struct_struct_OC_opp_channel_info* _289;
  uint32_t* _290;
  uint32_t _291;
  uint8_t _292;
  uint32_t _293;
  uint8_t _294;
  uint8_t _294__PHI_TEMPORARY;
  uint32_t _295;
  uint32_t _295__PHI_TEMPORARY;
  uint16_t _296;
  uint32_t _297;

#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 565 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _285 = profile_debug_enable;
  if (((((llvm_and_u8(_285, 1)) == ((uint8_t)0))&1))) {
    goto _298;
  } else {
    goto _299;
  }

_299:
  _286 = opp_info;
  _287 = *((&_286->field11));
  _288 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])), _287);
  goto _298;

_298:
#line 566 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _289 = opp_info;
  _290 = (&_289->field11);
  _291 = *_290;
  switch (_291) {
  default:
    goto _300;
  case 5u:
    _294__PHI_TEMPORARY = 0;   /* for PHI node */
    _295__PHI_TEMPORARY = 10;   /* for PHI node */
    goto _301;
  case 10u:
    goto _302;
  case 11u:
    goto _303;
  case 13u:
    goto _304;
  case 12u:
    goto _305;
  }

_302:
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  _294__PHI_TEMPORARY = 1;   /* for PHI node */
  _295__PHI_TEMPORARY = 11;   /* for PHI node */
  goto _301;

_303:
  ;
  _294__PHI_TEMPORARY = 2;   /* for PHI node */
  _295__PHI_TEMPORARY = 13;   /* for PHI node */
  goto _301;

_304:
  ;
  _294__PHI_TEMPORARY = 3;   /* for PHI node */
  _295__PHI_TEMPORARY = 12;   /* for PHI node */
  goto _301;

_305:
  ;
  _294__PHI_TEMPORARY = 4;   /* for PHI node */
  _295__PHI_TEMPORARY = 14;   /* for PHI node */
  goto _301;

_300:
#line 588 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_290 = 8;
#line 589 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _292 = profile_debug_enable;
  if (((((llvm_and_u8(_292, 1)) == ((uint8_t)0))&1))) {
    goto _306;
  } else {
    goto _307;
  }

_307:
  _293 =  /*tail*/ puts(((&str_OC_47.array[((int32_t)0)])));
  goto _306;

_306:
#line 590 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_close();
  goto _308;

_301:
  _294 = _294__PHI_TEMPORARY;
  _295 = _295__PHI_TEMPORARY;
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  *_290 = _295;
#line 593 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _296 = *((&_289->field7));
  _297 = *((&_289->field9));
   /*tail*/ pull_phone_book(_296, _297, _294);
  goto _308;

_308:
  return;
}


void pbap_mutex_malloc(void) {
  uint32_t _309;
  uint32_t* _310;
  uint32_t _311;
  uint32_t _312;
  uint8_t* _313;
  uint32_t _314;
  struct l_struct_struct_OC_opp_channel_info* _315;
  uint8_t* _316;
  uint8_t* _317;
  struct l_struct_struct_OC_opp_channel_info* _318;
  uint32_t _319;
  uint32_t _320;

#line 597 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _309 = config_asser;
  _310 = opp_buf_OC_0;
  if ((((_309 == 0u)&1))) {
    goto _321;
  } else {
    goto _322;
  }

_322:
  if ((((_310 != ((uint32_t*)/*NULL*/0))&1))) {
    goto _323;
  } else {
    goto _324;
  }

_324:
  _311 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), ((&_OC_str_OC_17.array[((int32_t)0)])), 597);
  _312 =  /*tail*/ printf(((&_OC_str_OC_18.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_2*)(void*)cpu_assert_debug)();
  goto _323;

_321:
  if ((((_310 != ((uint32_t*)/*NULL*/0))&1))) {
    goto _323;
  } else {
    goto _325;
  }

_325:
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
  goto _323;

_323:
#line 598 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _313 = *((uint8_t**)(&opp_buf_OC_0));
  _314 = opp_buf_OC_1;
   /*tail*/ vcard_buffer_init(_313, _314);
#line 599 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _315 = opp_info;
  _316 = *((&_315->field14));
  if ((((_316 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _326;
  } else {
    goto _327;
  }

_326:
#line 600 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _317 =  /*tail*/ vcard_malloc(1024);
  _318 = opp_info;
  *((&_318->field14)) = _317;
#line 601 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_318->field5)) = 1024;
  if ((((_309 == 0u)&1))) {
    goto _328;
  } else {
    goto _329;
  }

_329:
  if ((((_317 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _327;
  } else {
    goto _330;
  }

_330:
#line 602 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _319 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), ((&_OC_str_OC_17.array[((int32_t)0)])), 602);
  _320 =  /*tail*/ printf(((&_OC_str_OC_19.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_2*)(void*)cpu_assert_debug)();
  goto _327;

_328:
  if ((((_317 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _327;
  } else {
    goto _331;
  }

_331:
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
  goto _327;

_327:
#line 604 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ list_all_phone_books();
}


void pbap_mutex_free(void) {
  struct l_struct_struct_OC_opp_channel_info* _332;
  uint8_t* _333;
  struct l_struct_struct_OC_opp_channel_info* _334;

#line 608 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _332 = opp_info;
  _333 = *((&_332->field14));
  if ((((_333 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _335;
  } else {
    goto _336;
  }

_336:
#line 609 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ vcard_free(_333);
#line 610 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _334 = opp_info;
  *((&_334->field14)) = ((uint8_t*)/*NULL*/0);
  goto _335;

_335:
  return;
}


void opp_parse_raw_data(uint8_t* _337, uint16_t _338) {
  struct l_struct_struct_OC_opp_channel_info* _339;
  uint16_t* _340;
  uint16_t _341;
  uint32_t _342;
  struct l_struct_struct_OC_opp_channel_info* _343;
  uint32_t _344;
  uint32_t _345;
  uint16_t _346;
  uint8_t _347;
  uint32_t _348;
  struct l_struct_struct_OC_opp_channel_info* _349;
  uint16_t _350;
  uint16_t _351;
  uint16_t _351__PHI_TEMPORARY;
  struct l_struct_struct_OC_opp_channel_info* _352;
  struct l_struct_struct_OC_opp_channel_info* _352__PHI_TEMPORARY;
  uint8_t* _353;
  uint8_t* _354;
  uint8_t* _355;
  uint16_t* _356;
  uint16_t _357;
  uint8_t* _358;
  uint16_t _359;
  uint16_t _360;
  uint8_t _361;
  uint32_t _362;
  struct l_struct_struct_OC_opp_channel_info* _363;
  struct l_struct_struct_OC_opp_channel_info* _364;
  struct l_struct_struct_OC_opp_channel_info* _364__PHI_TEMPORARY;
  uint8_t* _365;
  struct l_struct_struct_OC_opp_channel_info* _366;
  struct l_struct_struct_OC_opp_channel_info* _366__PHI_TEMPORARY;
  uint8_t* _367;
  uint8_t* _367__PHI_TEMPORARY;
  uint16_t _368;
  uint8_t _369;
  uint8_t _370;
  uint32_t _371;
  struct l_struct_struct_OC_opp_channel_info* _372;
  struct l_struct_struct_OC_opp_channel_info* _373;
  struct l_struct_struct_OC_opp_channel_info* _373__PHI_TEMPORARY;
  uint16_t _374;
  uint8_t _375;
  uint8_t _376;
  uint32_t _377;
  struct l_struct_struct_OC_opp_channel_info* _378;
  struct l_struct_struct_OC_opp_channel_info* _379;
  struct l_struct_struct_OC_opp_channel_info* _379__PHI_TEMPORARY;
  uint16_t _380;
  uint32_t _381;
  uint8_t _382;
  struct l_struct_struct_OC_opp_channel_info* _383;
  uint8_t _384;
  uint8_t _385;
  struct l_struct_struct_OC_opp_channel_info* _386;
  uint32_t* _387;
  uint32_t _388;
  struct l_struct_struct_OC_opp_channel_info* _389;
  struct l_struct_struct_OC_opp_channel_info* _389__PHI_TEMPORARY;
  uint16_t _390;
  uint32_t _391;
  uint8_t _392;
  struct l_struct_struct_OC_opp_channel_info* _393;
  uint8_t _394;
  uint8_t _395;
  struct l_struct_struct_OC_opp_channel_info* _396;
  uint32_t* _397;
  uint32_t _398;
  struct l_struct_struct_OC_opp_channel_info* _399;
  struct l_struct_struct_OC_opp_channel_info* _399__PHI_TEMPORARY;
  uint16_t _400;
  uint8_t _401;
  struct l_struct_struct_OC_opp_channel_info* _402;
  uint32_t _403;
  uint32_t _404;
  struct l_struct_struct_OC_opp_channel_info* _405;
  uint8_t _406;
  uint32_t _407;
  uint8_t _408;
  uint32_t _409;
  uint32_t _410;
  uint16_t _411;
  uint8_t _412;
  uint32_t _413;
  struct l_struct_struct_OC_opp_channel_info* _414;
  uint8_t _415;
  uint8_t _416;
  uint32_t _417;
  uint32_t _418;
  uint32_t _419;
  uint32_t _420;
  uint16_t _421;
  uint8_t _422;
  uint32_t _423;
  uint32_t _424;
  uint32_t _425;
  uint32_t _426;
  struct l_struct_struct_OC_opp_channel_info* _427;
  uint32_t _428;
  uint16_t _429;
  uint32_t _430;
  uint8_t _431;
  uint32_t _432;

#line 617 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 620 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 621 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _339 = opp_info;
  _340 = (&_339->field8);
  _341 = *_340;
  if ((((_341 == ((uint16_t)0))&1))) {
    goto _433;
  } else {
    goto _434;
  }

_433:
#line 622 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _342 =  /*tail*/ prase_put_packet(_337, _338, 0);
  _343 = opp_info;
#line 627 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _344 = ((uint32_t)(uint16_t)_338);
  _345 = llvm_sub_u32(_342, _344);
  _346 = ((uint16_t)_345);
  *((&_343->field8)) = _346;
#line 628 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _347 = profile_debug_enable;
  if (((((llvm_and_u8(_347, 1)) == ((uint8_t)0))&1))) {
    _351__PHI_TEMPORARY = _346;   /* for PHI node */
    _352__PHI_TEMPORARY = _343;   /* for PHI node */
    goto _435;
  } else {
    goto _436;
  }

_436:
  _348 =  /*tail*/ printf(((&_OC_str_OC_20.array[((int32_t)0)])), (_345 & 65535));
  _349 = opp_info;
  _350 = *((&_349->field8));
  _351__PHI_TEMPORARY = _350;   /* for PHI node */
  _352__PHI_TEMPORARY = _349;   /* for PHI node */
  goto _435;

_435:
#line 630 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _351 = _351__PHI_TEMPORARY;
#line 629 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _352 = _352__PHI_TEMPORARY;
  *((&_352->field4)) = _338;
#line 630 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((_351 == ((uint16_t)0))&1))) {
    _366__PHI_TEMPORARY = _352;   /* for PHI node */
    _367__PHI_TEMPORARY = _337;   /* for PHI node */
    goto _437;
  } else {
    goto _438;
  }

_438:
#line 631 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _353 = *((&_352->field14));
  if ((((_353 == ((uint8_t*)/*NULL*/0))&1))) {
    _366__PHI_TEMPORARY = _352;   /* for PHI node */
    _367__PHI_TEMPORARY = _337;   /* for PHI node */
    goto _437;
  } else {
    goto _439;
  }

_439:
#line 632 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _354 = memcpy(_353, _337, _344);
  goto _440;

_434:
#line 638 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_340 = (llvm_sub_u16(_341, _338));
#line 639 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _355 = *((&_339->field14));
  if ((((_355 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _440;
  } else {
    goto _441;
  }

_441:
#line 638 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
#line 640 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _356 = (&_339->field4);
  _357 = *_356;
  _358 = memcpy(((&_355[((int32_t)(((uint32_t)(uint16_t)_357)))])), _337, (((uint32_t)(uint16_t)_338)));
#line 645 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _359 = *_356;
  *_356 = (llvm_add_u16(_359, _338));
#line 646 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _360 = *_340;
  if ((((_360 == ((uint16_t)0))&1))) {
    goto _442;
  } else {
    goto _440;
  }

_442:
#line 647 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _361 = profile_debug_enable;
  if (((((llvm_and_u8(_361, 1)) == ((uint8_t)0))&1))) {
    _364__PHI_TEMPORARY = _339;   /* for PHI node */
    goto _443;
  } else {
    goto _444;
  }

_444:
  _362 =  /*tail*/ puts(((&str_OC_55.array[((int32_t)0)])));
  _363 = opp_info;
  _364__PHI_TEMPORARY = _363;   /* for PHI node */
  goto _443;

_443:
#line 648 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _364 = _364__PHI_TEMPORARY;
  _365 = *((&_364->field14));
#line 620 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  _366__PHI_TEMPORARY = _364;   /* for PHI node */
  _367__PHI_TEMPORARY = _365;   /* for PHI node */
  goto _437;

_437:
#line 658 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _366 = _366__PHI_TEMPORARY;
  _367 = _367__PHI_TEMPORARY;
#line 620 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 655 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if ((((_367 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _440;
  } else {
    goto _445;
  }

_445:
#line 658 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _368 = *((&_366->field4));
#line 617 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 659 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _369 = *_367;
  switch (_369) {
  default:
    goto _440;
  case ((uint8_t)128u):
    goto _446;
  case ((uint8_t)-127):
    goto _447;
  case ((uint8_t)2):
    goto _448;
  case ((uint8_t)-126):
    goto _449;
  case ((uint8_t)-64):
    goto _450;
  case ((uint8_t)-61):
    goto _451;
  case ((uint8_t)-96):
    goto _452;
  case ((uint8_t)-112):
    goto _453;
  case ((uint8_t)-60):
    goto _454;
  case ((uint8_t)-48):
    goto _454;
  case ((uint8_t)-58):
    goto _454;
  }

_446:
#line 661 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_366->field10)) = 0;
#line 662 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _370 = profile_debug_enable;
  if (((((llvm_and_u8(_370, 1)) == ((uint8_t)0))&1))) {
    _373__PHI_TEMPORARY = _366;   /* for PHI node */
    goto _455;
  } else {
    goto _456;
  }

_456:
  _371 =  /*tail*/ puts(((&str_OC_54.array[((int32_t)0)])));
  _372 = opp_info;
  _373__PHI_TEMPORARY = _372;   /* for PHI node */
  goto _455;

_455:
#line 663 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _373 = _373__PHI_TEMPORARY;
  _374 = *((&_373->field7));
  _375 =  /*tail*/ send_accept_opp_connection(_374);
  goto _440;

_447:
#line 667 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _376 = profile_debug_enable;
  if (((((llvm_and_u8(_376, 1)) == ((uint8_t)0))&1))) {
    _379__PHI_TEMPORARY = _366;   /* for PHI node */
    goto _457;
  } else {
    goto _458;
  }

_458:
  _377 =  /*tail*/ puts(((&str_OC_53.array[((int32_t)0)])));
  _378 = opp_info;
  _379__PHI_TEMPORARY = _378;   /* for PHI node */
  goto _457;

_457:
#line 668 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _379 = _379__PHI_TEMPORARY;
  _380 = *((&_379->field7));
   /*tail*/ send_accept_disconnection(_380);
  goto _440;

_448:
#line 671 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _381 =  /*tail*/ prase_put_packet(_367, _368, 72u);
#line 619 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 672 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _382 = *((&_367[((int32_t)_381)]));
  if ((((_382 == ((uint8_t)72))&1))) {
    goto _459;
  } else {
    goto _460;
  }

_460:
  _383 = opp_info;
  _389__PHI_TEMPORARY = _383;   /* for PHI node */
  goto _461;

_459:
#line 673 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _384 = *((&_367[((int32_t)(llvm_add_u32(_381, 2)))]));
  _385 = *((&_367[((int32_t)(llvm_add_u32(_381, 1)))]));
  _386 = opp_info;
  _387 = (&_386->field10);
  _388 = *_387;
  *_387 = (llvm_add_u32((llvm_add_u32(_388, -3)), (((((uint32_t)(uint8_t)_385)) << 8) | (((uint32_t)(uint8_t)_384)))));
  _389__PHI_TEMPORARY = _386;   /* for PHI node */
  goto _461;

_461:
#line 675 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _389 = _389__PHI_TEMPORARY;
  _390 = *((&_389->field7));
   /*tail*/ send_accept_opp_put_cmd(_390);
  goto _440;

_449:
#line 678 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _391 =  /*tail*/ prase_put_packet(_367, _368, 73u);
#line 619 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 679 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _392 = *((&_367[((int32_t)_391)]));
  if ((((_392 == ((uint8_t)73))&1))) {
    goto _462;
  } else {
    goto _463;
  }

_463:
  _393 = opp_info;
  _399__PHI_TEMPORARY = _393;   /* for PHI node */
  goto _464;

_462:
#line 680 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _394 = *((&_367[((int32_t)(llvm_add_u32(_391, 2)))]));
  _395 = *((&_367[((int32_t)(llvm_add_u32(_391, 1)))]));
  _396 = opp_info;
  _397 = (&_396->field10);
  _398 = *_397;
  *_397 = (llvm_add_u32((llvm_add_u32(_398, -3)), (((((uint32_t)(uint8_t)_395)) << 8) | (((uint32_t)(uint8_t)_394)))));
  _399__PHI_TEMPORARY = _396;   /* for PHI node */
  goto _464;

_464:
#line 682 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _399 = _399__PHI_TEMPORARY;
  _400 = *((&_399->field7));
   /*tail*/ send_success_ending(_400);
#line 683 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _401 = profile_debug_enable;
  if (((((llvm_and_u8(_401, 1)) == ((uint8_t)0))&1))) {
    goto _465;
  } else {
    goto _466;
  }

_466:
  _402 = opp_info;
  _403 = *((&_402->field10));
  _404 =  /*tail*/ printf(((&_OC_str_OC_24.array[((int32_t)0)])), _403);
  goto _465;

_465:
#line 684 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _405 = opp_info;
  *((&_405->field10)) = 0;
  goto _440;

_450:
#line 687 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _406 = profile_debug_enable;
  if (((((llvm_and_u8(_406, 1)) == ((uint8_t)0))&1))) {
    goto _440;
  } else {
    goto _467;
  }

_467:
  _407 =  /*tail*/ puts(((&str_OC_52.array[((int32_t)0)])));
  goto _440;

_451:
#line 690 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _408 = profile_debug_enable;
  if (((((llvm_and_u8(_408, 1)) == ((uint8_t)0))&1))) {
    goto _440;
  } else {
    goto _468;
  }

_468:
  _409 =  /*tail*/ puts(((&str_OC_51.array[((int32_t)0)])));
  goto _440;

_452:
#line 693 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _410 = *((&_366->field11));
  switch (_410) {
  default:
    goto _440;
  case 0u:
    goto _469;
  case 15u:
    goto _470;
  case 14u:
    goto _471;
  case 5u:
    goto _472;
  case 12u:
    goto _471;
  case 9u:
    goto _471;
  case 10u:
    goto _471;
  case 11u:
    goto _471;
  case 13u:
    goto _471;
  }

_469:
#line 695 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _411 = *((&_366->field7));
   /*tail*/ rfcomm_disconnect_internal(_411);
  goto _440;

_472:
#line 704 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _412 = profile_debug_enable;
  if (((((llvm_and_u8(_412, 1)) == ((uint8_t)0))&1))) {
    goto _473;
  } else {
    goto _474;
  }

_474:
  _413 =  /*tail*/ puts(((&str_OC_50.array[((int32_t)0)])));
  goto _473;

_473:
#line 706 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ obex_parse_header_foreach(((&_367[((int32_t)7)])), (llvm_add_u16(_368, -7)));
#line 707 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _414 = opp_info;
  _415 = *((&_414->field2));
  if ((((_415 == ((uint8_t)2))&1))) {
    goto _475;
  } else {
    goto _476;
  }

_475:
#line 708 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_414->field11)) = 11;
  goto _476;

_476:
#line 710 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_mutex_malloc();
  goto _440;

_471:
#line 727 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _416 = profile_debug_enable;
  if (((((llvm_and_u8(_416, 1)) == ((uint8_t)0))&1))) {
    goto _477;
  } else {
    goto _478;
  }

_478:
  _417 =  /*tail*/ puts(((&str_OC_49.array[((int32_t)0)])));
  goto _477;

_477:
#line 729 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _418 =  /*tail*/ prase_put_packet(_367, _368, 73u);
#line 728 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 730 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if (((((((uint16_t)_418)) == ((uint16_t)0))&1))) {
    goto _479;
  } else {
    goto _480;
  }

_480:
#line 731 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _419 = _418 & 65535;
  _420 =  /*tail*/ contacts_svc_vcard_foreach(((&((&_367[((int32_t)_419)]))[((int32_t)3)])), (llvm_sub_u32((llvm_add_u32((((uint32_t)(uint16_t)_368)), -3)), _419)), ((l_fptr_3*)/*NULL*/0), 1);
  goto _479;

_479:
#line 735 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ list_all_phone_books();
  goto _440;

_470:
#line 739 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _421 = *((&_366->field7));
   /*tail*/ rfcomm_disconnect_internal(_421);
  goto _440;

_453:
#line 748 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _422 = profile_debug_enable;
  if (((((llvm_and_u8(_422, 1)) == ((uint8_t)0))&1))) {
    goto _481;
  } else {
    goto _482;
  }

_482:
  _423 =  /*tail*/ printf(((&_OC_str_OC_29.array[((int32_t)0)])), (((uint32_t)(uint16_t)_368)));
  goto _481;

_481:
#line 750 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _424 =  /*tail*/ prase_put_packet(_367, _368, 72u);
#line 749 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 751 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  if (((((((uint16_t)_424)) == ((uint16_t)0))&1))) {
    goto _483;
  } else {
    goto _484;
  }

_484:
#line 752 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _425 = _424 & 65535;
  _426 =  /*tail*/ contacts_svc_vcard_foreach(((&((&_367[((int32_t)_425)]))[((int32_t)3)])), (llvm_sub_u32((llvm_add_u32((((uint32_t)(uint16_t)_368)), -3)), _425)), ((l_fptr_3*)/*NULL*/0), 0);
  goto _483;

_483:
#line 755 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _427 = opp_info;
  _428 = *((&_427->field11));
  if ((((_428 == 0u)&1))) {
    goto _440;
  } else {
    goto _485;
  }

_485:
#line 756 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _429 = *((&_427->field7));
  _430 = *((&_427->field9));
   /*tail*/ send_continue_respone(_429, _430);
  goto _440;

_454:
#line 763 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _431 = profile_debug_enable;
  if (((((llvm_and_u8(_431, 1)) == ((uint8_t)0))&1))) {
    goto _486;
  } else {
    goto _487;
  }

_487:
  _432 =  /*tail*/ puts(((&str_OC_48.array[((int32_t)0)])));
  goto _486;

_486:
#line 764 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ list_all_phone_books();
  goto _440;

_440:
  return;
}


uint32_t opp_cmd_io_ctrl(uint8_t* _488, uint32_t _489, uint32_t _490) {
  uint8_t _491;
  uint32_t _492;
  struct l_struct_struct_OC_opp_channel_info* _493;
  uint8_t* _494;
  uint32_t _495;
  uint32_t _496;
  uint32_t _497;
  uint8_t* _498;
  uint8_t _499;
  struct l_struct_struct_OC_opp_channel_info* _500;
  uint32_t* _501;
  uint32_t _502;
  uint16_t _503;
  l_fptr_4* _504;
  uint32_t _505;
  uint8_t _506;
  uint32_t _507;
  uint32_t _508;
  uint32_t _508__PHI_TEMPORARY;

#line 837 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
  ;
#line 839 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _491 = profile_debug_enable;
  if (((((llvm_and_u8(_491, 1)) == ((uint8_t)0))&1))) {
    goto _509;
  } else {
    goto _510;
  }

_510:
  _492 =  /*tail*/ printf(((&_OC_str_OC_31.array[((int32_t)0)])), _489);
  goto _509;

_509:
#line 842 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _493 = opp_info;
  if ((((_493 == ((struct l_struct_struct_OC_opp_channel_info*)/*NULL*/0))&1))) {
    goto _511;
  } else {
    goto _512;
  }

_511:
#line 843 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 844 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 845 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _494 =  /*tail*/ malloc(4172);
#line 843 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
#line 846 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _495 = config_asser;
  if ((((_495 == 0u)&1))) {
    goto _513;
  } else {
    goto _514;
  }

_514:
  if ((((_494 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _515;
  } else {
    goto _516;
  }

_516:
  _496 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), ((&_OC_str_OC_17.array[((int32_t)0)])), 846);
  _497 =  /*tail*/ printf(((&_OC_str_OC_32.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_2*)(void*)cpu_assert_debug)();
  goto _515;

_513:
  if ((((_494 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _515;
  } else {
    goto _517;
  }

_517:
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
  goto _515;

_515:
#line 847 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _498 = memset(_494, 0, 4172);
#line 848 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_init((((struct l_struct_struct_OC_opp_channel_info*)_494)), ((&_494[((int32_t)76)])), 4096);
  goto _512;

_512:
  switch (_489) {
  default:
    _508__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _518;
  case 1u:
    goto _519;
  case 2u:
    goto _520;
  case 3u:
    goto _521;
  case 4u:
    goto _521;
  case 5u:
    goto _522;
  }

_520:
#line 855 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ rfcomm_create_channel_internal(((uint8_t*)/*NULL*/0), obex_packet_handler, (((struct l_array_6_uint8_t*)_488)), (((uint8_t)_490)));
  goto _519;

_521:
#line 859 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _499 = ((uint8_t)_490);
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  ;
  ;
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _500 = opp_info;
  _501 = (&_500->field11);
  _502 = *_501;
  if ((((_502 == 0u)&1))) {
    goto _523;
  } else {
    goto _524;
  }

_523:
  _503 = *((&_500->field7));
  if ((((_503 == ((uint16_t)0))&1))) {
    goto _525;
  } else {
    goto _524;
  }

_525:
#line 101 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *_501 = 2;
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_500->field2)) = _499;
#line 103 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _504 = *((&profile_cmd_hdl_str.field8));
  if ((((_504 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _519;
  } else {
    goto _526;
  }

_526:
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _505 =  /*tail*/ _504(_488, 0, 4399);
  goto _519;

_524:
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _506 = profile_debug_enable;
  if (((((llvm_and_u8(_506, 1)) == ((uint8_t)0))&1))) {
    goto _519;
  } else {
    goto _527;
  }

_527:
  _507 =  /*tail*/ puts(((&str_OC_56.array[((int32_t)0)])));
  goto _519;

_522:
#line 862 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ pbap_close();
  goto _519;

_519:
  _508__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _518;

_518:
  _508 = _508__PHI_TEMPORARY;
  return _508;
}


static void pbap_close(void) {
  struct l_struct_struct_OC_opp_channel_info* _528;
  uint32_t _529;
  uint16_t _530;
  struct l_struct_struct_OC_opp_channel_info* _531;
  uint16_t _532;
  uint32_t _533;
  struct l_struct_struct_OC_opp_channel_info* _534;
  uint16_t _535;
  uint32_t _536;
  uint16_t _537;
  uint32_t _538;

#line 123 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _528 = opp_info;
  _529 = *((&_528->field11));
  switch (_529) {
  default:
    goto _539;
  case 0u:
    goto _540;
  case 15u:
    goto _540;
  }

_539:
#line 125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _530 = *((&_528->field7));
  if ((((_530 == ((uint16_t)0))&1))) {
    goto _540;
  } else {
    goto _541;
  }

_541:
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
   /*tail*/ send_abort_cmd(_530);
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _531 = opp_info;
  _532 = *((&_531->field7));
  _533 =  /*tail*/ is_rfcomm_other_conn(_532);
  _534 = opp_info;
  if ((((_533 == 0u)&1))) {
    goto _542;
  } else {
    goto _543;
  }

_543:
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _535 = *((&_534->field7));
  _536 = *((&_534->field9));
   /*tail*/ pbap_disconnect(_535, _536);
  goto _540;

_542:
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  *((&_534->field11)) = 15;
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
  _537 = *((&_534->field7));
  _538 = *((&_534->field9));
   /*tail*/ pbap_disconnect(_537, _538);
  goto _540;

_540:
  return;
}

