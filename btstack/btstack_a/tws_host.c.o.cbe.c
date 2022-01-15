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
struct l_struct_struct_OC_search_tws_reasult_t;

/* Function definitions */
typedef uint32_t l_fptr_2(void);

typedef void l_fptr_1(void);


/* Types Definitions */
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_search_tws_reasult_t {
  uint8_t field0;
  struct l_array_6_uint8_t field1;
  struct l_array_6_uint8_t field2;
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_13_uint8_t {
  uint8_t array[13];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern uint8_t btstack_tws_debug_enable;

/* Function Declarations */
uint8_t get_tws_reomot_reasult(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_tws_wait_phone_con_reasult(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_get_tws_device_indicate(uint8_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void hci_event_extended_inquiry_result(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint16_t CRC16(uint8_t*, uint32_t);
void lmp_hci_cancel_inquiry(int, ...);
uint32_t btstack_api_connect_completed(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void tws_host_acl_handler(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t tws_profile_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void tws_task_init(int, ...);
uint32_t tws_profile_exit(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void tws_task_exit(int, ...);
uint8_t cheack_tws_connect_state(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_conn_channel_for_tws(void);
uint8_t check_user_cmd_for_tws(void);
uint8_t check_sdp_master_channel_state(void);
uint8_t avctp_cmd_send_state(void);
uint8_t hid_send_step_state(void);
uint8_t check_hfp_resend_data(void);
uint8_t check_l2cap_send_state(void);
uint32_t tws_api_get_tws_state(int, ...);
uint32_t tws_hci_connected_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t lmp_get_tws_phone_addr(uint8_t*, uint32_t);
void tws_hci_connected_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_l2cap_connected_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_core_data_for_send(uint8_t*, uint16_t);
void tws_l2cap_connected_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_l2cap_channel_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_channel_core_data_for_send(uint8_t*, uint16_t);
void tws_l2cap_channel_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_channel_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_avdtp_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avdtp_core_data_for_send(uint8_t*, uint16_t);
void tws_avdtp_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_a2dp_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t a2dp_core_data_for_send(uint8_t*, uint16_t);
void tws_a2dp_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void a2dp_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_avctp_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avctp_core_data_for_send(uint8_t*, uint16_t);
void tws_avctp_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avctp_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_sdp_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sdp_core_data_for_send(uint8_t*, uint16_t);
void tws_sdp_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sdp_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_rfc_channel_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t rfc_channel_core_data_for_send(uint8_t*, uint16_t);
void tws_rfc_channel_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfc_channel_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_rfc_multiplexer_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t rfc_multiplexer_core_data_for_send(uint8_t*, uint16_t);
void tws_rfc_multiplexer_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfc_multiplexer_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_hfp_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hfp_core_data_for_send(uint8_t*, uint16_t);
void tws_hfp_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hfp_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_user_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t user_core_data_for_send(uint8_t*, uint16_t);
void tws_user_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void user_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_hid_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hid_core_data_for_send(uint8_t*, uint16_t);
void tws_hid_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hid_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_spp_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t spp_core_data_for_send(uint8_t*, uint16_t);
void tws_spp_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void spp_core_data_for_set(uint8_t*, uint16_t);
uint32_t tws_iap_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t iap_core_data_for_send(uint8_t*, uint16_t);
void tws_iap_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void iap_core_data_for_set(uint8_t*, uint16_t);
uint32_t app_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void app_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t tws_app_info_for_send(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void tws_app_info_for_set(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t tws_host_get_core_data(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t tws_host_set_core_data(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_search_tws_reasult_t search_tws_reasult __HIDDEN__;
static struct l_array_23_uint8_t _OC_str_OC_1 = { "priv_version_lenok=%d\n" };
static struct l_array_5_uint8_t _OC_str_OC_2 = { "ETWS" };
static struct l_array_20_uint8_t _OC_str_OC_3 = { "br22_tws_device_ok\n" };
static struct l_array_16_uint8_t _OC_str_OC_4 = { "crc_version_ok\n" };
static struct l_array_21_uint8_t _OC_str_OC_5 = { "tws_dev_indicate ok\n" };
static struct l_array_24_uint8_t _OC_str_OC_6 = { "TWS_STA_ESCO_OPEN_LINK\n" };
static struct l_array_23_uint8_t _OC_str_OC_21 = { "for app send size %d\n\n" };
static struct l_array_31_uint8_t _OC_str_OC_23 = { "<<<<<<<<<<<<tws host size %d\n\n" };
static struct l_array_32_uint8_t _OC_str_OC_24 = { ">>>>>>>>>>>>>.tws host len %d\n\n" };
static struct l_array_13_uint8_t tws_host_set_core_data_OC_hci_connect_complete = { "\x03\v\x00\xDD\x00\xEE\xEE\xEE\xEE\xEE\xEE\x01" };
static struct l_array_20_uint8_t str = { "<BT-log> :inquiry :" };
static struct l_array_14_uint8_t str_OC_34 = { "tws hci data\n" };
static struct l_array_17_uint8_t str_OC_35 = { "l2cap conn data\n" };
static struct l_array_10_uint8_t str_OC_43 = { "hfp data\n" };
static struct l_array_11_uint8_t str_OC_44 = { "user data\n" };
static struct l_array_10_uint8_t str_OC_45 = { "hid data\n" };
static struct l_array_10_uint8_t str_OC_46 = { "spp data\n" };
static struct l_array_10_uint8_t str_OC_47 = { "iap data\n" };
static struct l_array_10_uint8_t str_OC_48 = { "app data\n" };
static struct l_array_21_uint8_t str_OC_49 = { "IAP connection data\n" };
static struct l_array_21_uint8_t str_OC_50 = { "spp connection data\n" };
static struct l_array_21_uint8_t str_OC_51 = { "hid connection data\n" };
static struct l_array_21_uint8_t str_OC_52 = { "app connection data\n" };
static struct l_array_22_uint8_t str_OC_53 = { "user connection data\n" };
static struct l_array_21_uint8_t str_OC_54 = { "hfp connection data\n" };
static struct l_array_18_uint8_t str_OC_55 = { "rfc channel data\n" };
static struct l_array_22_uint8_t str_OC_56 = { "rfc multiplexer data\n" };
static struct l_array_10_uint8_t str_OC_57 = { "sdp data\n" };
static struct l_array_12_uint8_t str_OC_58 = { "avctp data\n" };
static struct l_array_11_uint8_t str_OC_59 = { "a2dp data\n" };
static struct l_array_12_uint8_t str_OC_60 = { "avdtp data\n" };
static struct l_array_20_uint8_t str_OC_61 = { "l2cap channel data\n" };
static struct l_array_20_uint8_t str_OC_62 = { "l2cap connect data\n" };
static struct l_array_23_uint8_t str_OC_63 = { "hci connect complete \n" };
static struct l_array_34_uint8_t str_OC_64 = { "\n\n\nl2cap_tws_acl deal err !!!!\n\n\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
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


/* Function Bodies */

uint8_t get_tws_reomot_reasult(uint8_t* _1) {
  uint8_t _2;
  uint8_t* _3;
  uint8_t* _4;
  uint8_t _5;
  uint8_t _5__PHI_TEMPORARY;

#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 42 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _2 = *((&search_tws_reasult.field0));
  if ((((_2 == ((uint8_t)-86))&1))) {
    goto _6;
  } else {
    _5__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _7;
  }

_6:
#line 43 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _3 = memcpy(_1, ((&search_tws_reasult.field1.array[((int32_t)0)])), 6);
#line 44 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _4 = memset(((&search_tws_reasult.field1.array[((int32_t)0)])), 0, 6);
#line 45 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&search_tws_reasult.field0)) = 85u;
  _5__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _7;

_7:
  _5 = _5__PHI_TEMPORARY;
  return _5;
}


uint8_t get_tws_wait_phone_con_reasult(uint8_t* _8) {
  uint8_t _9;
  uint8_t* _10;
  uint8_t _11;
  uint8_t _11__PHI_TEMPORARY;

#line 51 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 53 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _9 = *((&search_tws_reasult.field0));
  if ((((_9 == ((uint8_t)85))&1))) {
    goto _12;
  } else {
    _11__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _13;
  }

_12:
#line 54 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _10 = memcpy(_8, ((&search_tws_reasult.field2.array[((int32_t)0)])), 6);
  _11__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _13;

_13:
  _11 = _11__PHI_TEMPORARY;
  return _11;
}


void bt_get_tws_device_indicate(uint8_t* _14) {
#line 59 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 61 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
}


void hci_event_extended_inquiry_result(uint8_t* _15, uint16_t _16) {
  uint16_t _17;    /* Address-exposed local */
  struct l_array_2_uint8_t _18;    /* Address-exposed local */
  struct l_array_6_uint8_t _19;    /* Address-exposed local */
  struct l_array_20_uint8_t _20;    /* Address-exposed local */
  uint8_t* _21;
  uint8_t* _22;
  uint8_t* _23;
  uint8_t* _24;
  uint8_t _25;
  uint8_t _26;
  uint8_t* _27;
  uint8_t _28;
  uint32_t _29;
  uint8_t _30;
  uint8_t _31;
  uint8_t _31__PHI_TEMPORARY;
  uint8_t* _32;
  uint8_t* _33;
  uint32_t _34;
  uint32_t _34__PHI_TEMPORARY;
  uint8_t* _35;
  uint8_t* _35__PHI_TEMPORARY;
  uint8_t _36;
  uint8_t _36__PHI_TEMPORARY;
  uint8_t _37;
  uint8_t _38;
  uint32_t _39;
  uint8_t _40;
  uint32_t _41;
  uint8_t* _42;
  uint8_t _43;
  uint8_t _44;
  uint8_t _44__PHI_TEMPORARY;
  uint8_t _45;
  uint8_t _45__PHI_TEMPORARY;
  uint32_t _46;
  uint8_t* _47;
  uint32_t _48;
  uint8_t _49;
  uint8_t _49__PHI_TEMPORARY;
  uint32_t _50;
  uint32_t _51;
  uint16_t _52;
  uint32_t _53;
  uint32_t _54;
  uint32_t _55;
  uint32_t _56;
  uint8_t* _57;
  uint8_t* _58;

#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _21 = ((uint8_t*)(&_17));
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _22 = (&_18.array[((int32_t)0)]);
  ;
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _23 = (&_19.array[((int32_t)0)]);
  ;
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 72 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _24 = (&_20.array[((int32_t)0)]);
  ;
#line 74 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _25 = *((&_15[((int32_t)14)]));
  _26 = *((&_15[((int32_t)15)]));
  _27 = ((uint8_t*)(uintptr_t)(((((uint32_t)(uint8_t)_26)) << 8) | (((uint32_t)(uint8_t)_25))));
  ;
#line 75 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 77 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _28 = l2cap_debug_enable;
  if ((((((int8_t)_28) < ((int8_t)((uint8_t)0)))&1))) {
    goto _59;
  } else {
    _31__PHI_TEMPORARY = _28;   /* for PHI node */
    goto _60;
  }

_59:
  _29 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _30 = l2cap_debug_enable;
  _31__PHI_TEMPORARY = _30;   /* for PHI node */
  goto _60;

_60:
#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _31 = _31__PHI_TEMPORARY;
#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _32 = memcpy(_23, ((&_15[((int32_t)1)])), 6);
#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  if (((((llvm_and_u8(_31, 64u)) == ((uint8_t)0))&1))) {
    goto _61;
  } else {
    goto _62;
  }

_62:
  put_buf(_23, 6);
  goto _61;

_61:
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _33 = memset(_24, 0, 20);
#line 74 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  _34__PHI_TEMPORARY = 240;   /* for PHI node */
  _35__PHI_TEMPORARY = _27;   /* for PHI node */
  _36__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _63;

  do {     /* Syntactic loop '' to make GCC happy */
_63:
  _34 = _34__PHI_TEMPORARY;
  _35 = _35__PHI_TEMPORARY;
  _36 = _36__PHI_TEMPORARY;
#line 94 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _37 = *_35;
  if ((((_37 == ((uint8_t)0))&1))) {
    _49__PHI_TEMPORARY = _36;   /* for PHI node */
    goto _64;
  } else {
    goto _65;
  }

_65:
#line 101 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 109 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _38 = *((&_35[((int32_t)1)]));
  if ((((_38 == ((uint8_t)-1))&1))) {
    goto _66;
  } else {
    _44__PHI_TEMPORARY = _37;   /* for PHI node */
    _45__PHI_TEMPORARY = _36;   /* for PHI node */
    goto _67;
  }

_66:
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 111 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _39 = printf(((&_OC_str_OC_1.array[((int32_t)0)])), (((uint32_t)(uint8_t)_37)));
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _40 = llvm_select_u8((((((uint8_t)_37) < ((uint8_t)((uint8_t)20)))&1)), _37, 20);
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _41 = ((uint32_t)(uint8_t)_40);
  _42 = memcpy(_24, ((&_35[((int32_t)2)])), _41);
#line 116 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  put_buf(_24, _41);
  _43 = *_35;
  _44__PHI_TEMPORARY = _43;   /* for PHI node */
  _45__PHI_TEMPORARY = _40;   /* for PHI node */
  goto _67;

_67:
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _44 = _44__PHI_TEMPORARY;
  _45 = _45__PHI_TEMPORARY;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _46 = llvm_add_u32((((uint32_t)(uint8_t)_44)), 1);
#line 119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _47 = (&_35[((int32_t)_46)]);
#line 74 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _48 = (llvm_sub_u32(_34, _46)) & 65535;
  if ((((_48 == 0u)&1))) {
    _49__PHI_TEMPORARY = _45;   /* for PHI node */
    goto _64;
  } else {
    _34__PHI_TEMPORARY = _48;   /* for PHI node */
    _35__PHI_TEMPORARY = _47;   /* for PHI node */
    _36__PHI_TEMPORARY = _45;   /* for PHI node */
    goto _63;
  }

  } while (1); /* end of syntactic loop '' */
_64:
  _49 = _49__PHI_TEMPORARY;
#line 121 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  if ((((_49 == ((uint8_t)0))&1))) {
    goto _68;
  } else {
    goto _69;
  }

_69:
  _50 = memcmp(_24, ((&_OC_str_OC_2.array[((int32_t)0)])), 4);
  if ((((_50 == 0u)&1))) {
    goto _70;
  } else {
    goto _68;
  }

_70:
#line 123 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _51 = puts(((&_OC_str_OC_3.array[((int32_t)0)])));
#line 124 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  bt_get_tws_device_indicate(_22);
#line 125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  put_buf(_22, 2);
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _52 = CRC16(_24, 12);
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _17 = _52;
#line 128 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _53 = memcmp(((&_20.array[((int32_t)12)])), _21, 2);
  if ((((_53 == 0u)&1))) {
    goto _71;
  } else {
    goto _68;
  }

_71:
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _54 = puts(((&_OC_str_OC_4.array[((int32_t)0)])));
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _55 = memcmp(((&_20.array[((int32_t)4)])), _22, 2);
  if ((((_55 == 0u)&1))) {
    goto _72;
  } else {
    goto _68;
  }

_72:
#line 131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _56 = puts(((&_OC_str_OC_5.array[((int32_t)0)])));
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _57 = memcpy(((&search_tws_reasult.field2.array[((int32_t)0)])), _23, 6);
#line 133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _58 = memcpy(((&search_tws_reasult.field1.array[((int32_t)0)])), ((&_20.array[((int32_t)6)])), 6);
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&search_tws_reasult.field0)) = 170u;
#line 135 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ((l_fptr_1*)(void*)lmp_hci_cancel_inquiry)();
  goto _68;

_68:
  return;
}


uint32_t btstack_api_connect_completed(void) {
  return 0;
}


void tws_host_acl_handler(uint8_t* _73) {
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
}


uint32_t tws_profile_init(void) {
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ ((l_fptr_1*)(void*)tws_task_init)();
  return 0;
}


uint32_t tws_profile_exit(void) {
#line 204 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ ((l_fptr_1*)(void*)tws_task_exit)();
  return 0;
}


uint8_t cheack_tws_connect_state(void) {
  uint8_t _74;
  uint8_t _75;
  uint8_t _76;
  uint8_t _77;
  uint8_t _78;
  uint8_t _79;
  uint8_t _80;
  uint32_t _81;
  uint32_t _82;
  uint8_t _83;
  uint8_t _83__PHI_TEMPORARY;

#line 257 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _74 =  /*tail*/ check_conn_channel_for_tws();
  ;
#line 258 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _75 =  /*tail*/ check_user_cmd_for_tws();
  ;
#line 259 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _76 =  /*tail*/ check_sdp_master_channel_state();
  ;
#line 260 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _77 =  /*tail*/ avctp_cmd_send_state();
  ;
#line 261 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _78 =  /*tail*/ hid_send_step_state();
  ;
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _79 =  /*tail*/ check_hfp_resend_data();
  ;
#line 263 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _80 =  /*tail*/ check_l2cap_send_state();
  ;
#line 264 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  if (((((llvm_or_u8((llvm_or_u8((llvm_or_u8((llvm_or_u8((llvm_or_u8((llvm_or_u8(_75, _74)), _76)), _77)), _78)), _79)), _80)) == ((uint8_t)0))&1))) {
    _83__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _84;
  } else {
    goto _85;
  }

_85:
#line 267 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _81 =  /*tail*/ ((l_fptr_2*)(void*)tws_api_get_tws_state)();
  ;
#line 268 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  if (((((_81 & 256) == 0u)&1))) {
    _83__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _84;
  } else {
    goto _86;
  }

_86:
#line 269 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _82 =  /*tail*/ puts(((&_OC_str_OC_6.array[((int32_t)0)])));
  _83__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _84;

_84:
  _83 = _83__PHI_TEMPORARY;
  return _83;
}


uint32_t tws_hci_connected_info_for_send(uint8_t* _87, uint32_t _88) {
  uint8_t _89;
  uint8_t _90;
  uint32_t _91;
  uint8_t _92;
  uint8_t _93;
  uint8_t _93__PHI_TEMPORARY;
  uint32_t _94;
  uint32_t _94__PHI_TEMPORARY;

#line 277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_87 = 161u;
#line 280 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_87[((int32_t)1)])) = 11;
#line 281 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_87[((int32_t)2)])) = 0;
#line 283 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _89 =  /*tail*/ lmp_get_tws_phone_addr(((&_87[((int32_t)3)])), 1);
  if ((((_89 == ((uint8_t)0))&1))) {
    _94__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _95;
  } else {
    goto _96;
  }

_96:
#line 284 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _90 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_90, 1)) == ((uint8_t)0))&1))) {
    _93__PHI_TEMPORARY = _90;   /* for PHI node */
    goto _97;
  } else {
    goto _98;
  }

_98:
  _91 =  /*tail*/ puts(((&str_OC_34.array[((int32_t)0)])));
  _92 = btstack_tws_debug_enable;
  _93__PHI_TEMPORARY = _92;   /* for PHI node */
  goto _97;

_97:
#line 285 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _93 = _93__PHI_TEMPORARY;
  if (((((llvm_and_u8(_93, 2)) == ((uint8_t)0))&1))) {
    _94__PHI_TEMPORARY = 11;   /* for PHI node */
    goto _95;
  } else {
    goto _99;
  }

_99:
   /*tail*/ put_buf(_87, 11);
  _94__PHI_TEMPORARY = 11;   /* for PHI node */
  goto _95;

_95:
  _94 = _94__PHI_TEMPORARY;
  return _94;
}


void tws_hci_connected_info_for_set(uint8_t* _100, uint32_t _101) {
#line 292 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 294 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ hci_core_data_for_set(_100, (((uint16_t)_101)));
}


uint32_t tws_l2cap_connected_info_for_send(uint8_t* _102, uint32_t _103) {
  uint32_t _104;
  uint32_t _105;
  uint8_t _106;
  uint32_t _107;
  uint8_t _108;
  uint8_t _109;
  uint8_t _109__PHI_TEMPORARY;

#line 297 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 300 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_102 = 162u;
#line 301 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _104 =  /*tail*/ l2cap_core_data_for_send(((&_102[((int32_t)3)])), (((uint16_t)_103)));
  _105 = llvm_add_u32(_104, 3);
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 302 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_102[((int32_t)1)])) = (((uint8_t)_105));
#line 303 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_102[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_105, 8))));
#line 305 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _106 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_106, 1)) == ((uint8_t)0))&1))) {
    _109__PHI_TEMPORARY = _106;   /* for PHI node */
    goto _110;
  } else {
    goto _111;
  }

_111:
  _107 =  /*tail*/ puts(((&str_OC_35.array[((int32_t)0)])));
  _108 = btstack_tws_debug_enable;
  _109__PHI_TEMPORARY = _108;   /* for PHI node */
  goto _110;

_110:
#line 306 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _109 = _109__PHI_TEMPORARY;
  if (((((llvm_and_u8(_109, 2)) == ((uint8_t)0))&1))) {
    goto _112;
  } else {
    goto _113;
  }

_113:
   /*tail*/ put_buf(_102, _105);
  goto _112;

_112:
  return _105;
}


void tws_l2cap_connected_info_for_set(uint8_t* _114, uint32_t _115) {
#line 310 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 312 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ l2cap_core_data_for_set(_114, (((uint16_t)_115)));
}


uint32_t tws_l2cap_channel_info_for_send(uint8_t* _116, uint32_t _117) {
  uint32_t _118;
  uint32_t _119;
  uint8_t _120;
  uint32_t _121;
  uint8_t _122;
  uint8_t _123;
  uint8_t _123__PHI_TEMPORARY;

#line 315 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 317 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 318 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_116 = 163u;
#line 319 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _118 =  /*tail*/ l2cap_channel_core_data_for_send(((&_116[((int32_t)3)])), (((uint16_t)_117)));
  _119 = llvm_add_u32(_118, 3);
#line 317 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 320 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_116[((int32_t)1)])) = (((uint8_t)_119));
#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_116[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_119, 8))));
#line 323 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _120 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_120, 1)) == ((uint8_t)0))&1))) {
    _123__PHI_TEMPORARY = _120;   /* for PHI node */
    goto _124;
  } else {
    goto _125;
  }

_125:
  _121 =  /*tail*/ puts(((&str_OC_61.array[((int32_t)0)])));
  _122 = btstack_tws_debug_enable;
  _123__PHI_TEMPORARY = _122;   /* for PHI node */
  goto _124;

_124:
#line 324 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _123 = _123__PHI_TEMPORARY;
  if (((((llvm_and_u8(_123, 2)) == ((uint8_t)0))&1))) {
    goto _126;
  } else {
    goto _127;
  }

_127:
   /*tail*/ put_buf(_116, _119);
  goto _126;

_126:
  return _119;
}


void tws_l2cap_channel_info_for_set(uint8_t* _128, uint32_t _129) {
#line 328 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 330 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ l2cap_channel_core_data_for_set(_128, (((uint16_t)_129)));
}


uint32_t tws_avdtp_info_for_send(uint8_t* _130, uint32_t _131) {
  uint32_t _132;
  uint32_t _133;
  uint8_t _134;
  uint32_t _135;
  uint8_t _136;
  uint8_t _137;
  uint8_t _137__PHI_TEMPORARY;

#line 333 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 335 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 336 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_130 = 164u;
#line 337 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _132 =  /*tail*/ avdtp_core_data_for_send(((&_130[((int32_t)3)])), (((uint16_t)_131)));
  _133 = llvm_add_u32(_132, 3);
#line 335 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 338 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_130[((int32_t)1)])) = (((uint8_t)_133));
#line 339 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_130[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_133, 8))));
#line 341 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _134 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_134, 1)) == ((uint8_t)0))&1))) {
    _137__PHI_TEMPORARY = _134;   /* for PHI node */
    goto _138;
  } else {
    goto _139;
  }

_139:
  _135 =  /*tail*/ puts(((&str_OC_60.array[((int32_t)0)])));
  _136 = btstack_tws_debug_enable;
  _137__PHI_TEMPORARY = _136;   /* for PHI node */
  goto _138;

_138:
#line 342 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _137 = _137__PHI_TEMPORARY;
  if (((((llvm_and_u8(_137, 2)) == ((uint8_t)0))&1))) {
    goto _140;
  } else {
    goto _141;
  }

_141:
   /*tail*/ put_buf(_130, _133);
  goto _140;

_140:
  return _133;
}


void tws_avdtp_info_for_set(uint8_t* _142, uint32_t _143) {
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 348 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ avdtp_core_data_for_set(_142, (((uint16_t)_143)));
}


uint32_t tws_a2dp_info_for_send(uint8_t* _144, uint32_t _145) {
  uint32_t _146;
  uint32_t _147;
  uint8_t _148;
  uint32_t _149;
  uint8_t _150;
  uint8_t _151;
  uint8_t _151__PHI_TEMPORARY;

#line 351 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 354 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_144 = 165u;
#line 355 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _146 =  /*tail*/ a2dp_core_data_for_send(((&_144[((int32_t)3)])), (((uint16_t)_145)));
  _147 = llvm_add_u32(_146, 3);
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 356 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_144[((int32_t)1)])) = (((uint8_t)_147));
#line 357 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_144[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_147, 8))));
#line 359 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _148 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_148, 1)) == ((uint8_t)0))&1))) {
    _151__PHI_TEMPORARY = _148;   /* for PHI node */
    goto _152;
  } else {
    goto _153;
  }

_153:
  _149 =  /*tail*/ puts(((&str_OC_59.array[((int32_t)0)])));
  _150 = btstack_tws_debug_enable;
  _151__PHI_TEMPORARY = _150;   /* for PHI node */
  goto _152;

_152:
#line 360 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _151 = _151__PHI_TEMPORARY;
  if (((((llvm_and_u8(_151, 2)) == ((uint8_t)0))&1))) {
    goto _154;
  } else {
    goto _155;
  }

_155:
   /*tail*/ put_buf(_144, _147);
  goto _154;

_154:
  return _147;
}


void tws_a2dp_info_for_set(uint8_t* _156, uint32_t _157) {
#line 364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 366 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ a2dp_core_data_for_set(_156, (((uint16_t)_157)));
}


uint32_t tws_avctp_info_for_send(uint8_t* _158, uint32_t _159) {
  uint32_t _160;
  uint32_t _161;
  uint8_t _162;
  uint32_t _163;
  uint8_t _164;
  uint8_t _165;
  uint8_t _165__PHI_TEMPORARY;

#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 372 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 373 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_158 = 166u;
#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _160 =  /*tail*/ avctp_core_data_for_send(((&_158[((int32_t)3)])), (((uint16_t)_159)));
  _161 = llvm_add_u32(_160, 3);
#line 372 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 375 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_158[((int32_t)1)])) = (((uint8_t)_161));
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_158[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_161, 8))));
#line 378 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _162 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_162, 1)) == ((uint8_t)0))&1))) {
    _165__PHI_TEMPORARY = _162;   /* for PHI node */
    goto _166;
  } else {
    goto _167;
  }

_167:
  _163 =  /*tail*/ puts(((&str_OC_58.array[((int32_t)0)])));
  _164 = btstack_tws_debug_enable;
  _165__PHI_TEMPORARY = _164;   /* for PHI node */
  goto _166;

_166:
#line 379 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _165 = _165__PHI_TEMPORARY;
  if (((((llvm_and_u8(_165, 2)) == ((uint8_t)0))&1))) {
    goto _168;
  } else {
    goto _169;
  }

_169:
   /*tail*/ put_buf(_158, _161);
  goto _168;

_168:
  return _161;
}


void tws_avctp_info_for_set(uint8_t* _170, uint32_t _171) {
#line 383 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ avctp_core_data_for_set(_170, (((uint16_t)_171)));
}


uint32_t tws_sdp_info_for_send(uint8_t* _172, uint32_t _173) {
  uint32_t _174;
  uint32_t _175;
  uint8_t _176;
  uint32_t _177;
  uint8_t _178;
  uint8_t _179;
  uint8_t _179__PHI_TEMPORARY;

#line 388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 390 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 391 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_172 = 167u;
#line 392 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _174 =  /*tail*/ sdp_core_data_for_send(((&_172[((int32_t)3)])), (((uint16_t)_173)));
  _175 = llvm_add_u32(_174, 3);
#line 390 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 393 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_172[((int32_t)1)])) = (((uint8_t)_175));
#line 394 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_172[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_175, 8))));
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _176 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_176, 1)) == ((uint8_t)0))&1))) {
    _179__PHI_TEMPORARY = _176;   /* for PHI node */
    goto _180;
  } else {
    goto _181;
  }

_181:
  _177 =  /*tail*/ puts(((&str_OC_57.array[((int32_t)0)])));
  _178 = btstack_tws_debug_enable;
  _179__PHI_TEMPORARY = _178;   /* for PHI node */
  goto _180;

_180:
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _179 = _179__PHI_TEMPORARY;
  if (((((llvm_and_u8(_179, 2)) == ((uint8_t)0))&1))) {
    goto _182;
  } else {
    goto _183;
  }

_183:
   /*tail*/ put_buf(_172, _175);
  goto _182;

_182:
  return _175;
}


void tws_sdp_info_for_set(uint8_t* _184, uint32_t _185) {
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 403 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ sdp_core_data_for_set(_184, (((uint16_t)_185)));
}


uint32_t tws_rfc_channel_info_for_send(uint8_t* _186, uint32_t _187) {
  uint32_t _188;
  uint32_t _189;
  uint8_t _190;
  uint32_t _191;
  uint8_t _192;
  uint8_t _193;
  uint8_t _193__PHI_TEMPORARY;

#line 406 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 409 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_186 = 168u;
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _188 =  /*tail*/ rfc_channel_core_data_for_send(((&_186[((int32_t)3)])), (((uint16_t)_187)));
  _189 = llvm_add_u32(_188, 3);
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 411 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_186[((int32_t)1)])) = (((uint8_t)_189));
#line 412 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_186[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_189, 8))));
#line 414 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _190 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_190, 1)) == ((uint8_t)0))&1))) {
    _193__PHI_TEMPORARY = _190;   /* for PHI node */
    goto _194;
  } else {
    goto _195;
  }

_195:
  _191 =  /*tail*/ puts(((&str_OC_55.array[((int32_t)0)])));
  _192 = btstack_tws_debug_enable;
  _193__PHI_TEMPORARY = _192;   /* for PHI node */
  goto _194;

_194:
#line 415 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _193 = _193__PHI_TEMPORARY;
  if (((((llvm_and_u8(_193, 2)) == ((uint8_t)0))&1))) {
    goto _196;
  } else {
    goto _197;
  }

_197:
   /*tail*/ put_buf(_186, _189);
  goto _196;

_196:
  return _189;
}


void tws_rfc_channel_info_for_set(uint8_t* _198, uint32_t _199) {
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 421 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ rfc_channel_core_data_for_set(_198, (((uint16_t)_199)));
}


uint32_t tws_rfc_multiplexer_info_for_send(uint8_t* _200, uint32_t _201) {
  uint32_t _202;
  uint32_t _203;
  uint8_t _204;
  uint32_t _205;
  uint8_t _206;
  uint8_t _207;
  uint8_t _207__PHI_TEMPORARY;

#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 426 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 427 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_200 = 169u;
#line 428 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _202 =  /*tail*/ rfc_multiplexer_core_data_for_send(((&_200[((int32_t)3)])), (((uint16_t)_201)));
  _203 = llvm_add_u32(_202, 3);
#line 426 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 429 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_200[((int32_t)1)])) = (((uint8_t)_203));
#line 430 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_200[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_203, 8))));
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _204 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_204, 1)) == ((uint8_t)0))&1))) {
    _207__PHI_TEMPORARY = _204;   /* for PHI node */
    goto _208;
  } else {
    goto _209;
  }

_209:
  _205 =  /*tail*/ puts(((&str_OC_56.array[((int32_t)0)])));
  _206 = btstack_tws_debug_enable;
  _207__PHI_TEMPORARY = _206;   /* for PHI node */
  goto _208;

_208:
#line 433 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _207 = _207__PHI_TEMPORARY;
  if (((((llvm_and_u8(_207, 2)) == ((uint8_t)0))&1))) {
    goto _210;
  } else {
    goto _211;
  }

_211:
   /*tail*/ put_buf(_200, _203);
  goto _210;

_210:
  return _203;
}


void tws_rfc_multiplexer_info_for_set(uint8_t* _212, uint32_t _213) {
#line 437 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 439 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ rfc_multiplexer_core_data_for_set(_212, (((uint16_t)_213)));
}


uint32_t tws_hfp_info_for_send(uint8_t* _214, uint32_t _215) {
  uint32_t _216;
  uint32_t _217;
  uint8_t _218;
  uint32_t _219;
  uint8_t _220;
  uint8_t _221;
  uint8_t _221__PHI_TEMPORARY;

#line 442 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 444 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 445 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_214 = 170u;
#line 446 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _216 =  /*tail*/ hfp_core_data_for_send(((&_214[((int32_t)3)])), (((uint16_t)_215)));
  _217 = llvm_add_u32(_216, 3);
#line 444 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 447 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_214[((int32_t)1)])) = (((uint8_t)_217));
#line 448 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_214[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_217, 8))));
#line 450 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _218 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_218, 1)) == ((uint8_t)0))&1))) {
    _221__PHI_TEMPORARY = _218;   /* for PHI node */
    goto _222;
  } else {
    goto _223;
  }

_223:
  _219 =  /*tail*/ puts(((&str_OC_43.array[((int32_t)0)])));
  _220 = btstack_tws_debug_enable;
  _221__PHI_TEMPORARY = _220;   /* for PHI node */
  goto _222;

_222:
#line 451 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _221 = _221__PHI_TEMPORARY;
  if (((((llvm_and_u8(_221, 2)) == ((uint8_t)0))&1))) {
    goto _224;
  } else {
    goto _225;
  }

_225:
   /*tail*/ put_buf(_214, _217);
  goto _224;

_224:
  return _217;
}


void tws_hfp_info_for_set(uint8_t* _226, uint32_t _227) {
#line 455 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 457 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ hfp_core_data_for_set(_226, (((uint16_t)_227)));
}


uint32_t tws_user_info_for_send(uint8_t* _228, uint32_t _229) {
  uint32_t _230;
  uint32_t _231;
  uint8_t _232;
  uint32_t _233;
  uint8_t _234;
  uint8_t _235;
  uint8_t _235__PHI_TEMPORARY;

#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 462 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 463 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_228 = 171u;
#line 464 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _230 =  /*tail*/ user_core_data_for_send(((&_228[((int32_t)3)])), (((uint16_t)_229)));
  _231 = llvm_add_u32(_230, 3);
#line 462 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 465 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_228[((int32_t)1)])) = (((uint8_t)_231));
#line 466 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_228[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_231, 8))));
#line 468 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _232 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_232, 1)) == ((uint8_t)0))&1))) {
    _235__PHI_TEMPORARY = _232;   /* for PHI node */
    goto _236;
  } else {
    goto _237;
  }

_237:
  _233 =  /*tail*/ puts(((&str_OC_44.array[((int32_t)0)])));
  _234 = btstack_tws_debug_enable;
  _235__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _236;

_236:
#line 469 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _235 = _235__PHI_TEMPORARY;
  if (((((llvm_and_u8(_235, 2)) == ((uint8_t)0))&1))) {
    goto _238;
  } else {
    goto _239;
  }

_239:
   /*tail*/ put_buf(_228, _231);
  goto _238;

_238:
  return _231;
}


void tws_user_info_for_set(uint8_t* _240, uint32_t _241) {
#line 473 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 475 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ user_core_data_for_set(_240, (((uint16_t)_241)));
}


uint32_t tws_hid_info_for_send(uint8_t* _242, uint32_t _243) {
  uint32_t _244;
  uint32_t _245;
  uint8_t _246;
  uint32_t _247;
  uint8_t _248;
  uint8_t _249;
  uint8_t _249__PHI_TEMPORARY;

#line 478 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 480 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 481 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_242 = 173u;
#line 482 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _244 =  /*tail*/ hid_core_data_for_send(((&_242[((int32_t)3)])), (((uint16_t)_243)));
  _245 = llvm_add_u32(_244, 3);
#line 480 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 483 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_242[((int32_t)1)])) = (((uint8_t)_245));
#line 484 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_242[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_245, 8))));
#line 486 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _246 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_246, 1)) == ((uint8_t)0))&1))) {
    _249__PHI_TEMPORARY = _246;   /* for PHI node */
    goto _250;
  } else {
    goto _251;
  }

_251:
  _247 =  /*tail*/ puts(((&str_OC_45.array[((int32_t)0)])));
  _248 = btstack_tws_debug_enable;
  _249__PHI_TEMPORARY = _248;   /* for PHI node */
  goto _250;

_250:
#line 487 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _249 = _249__PHI_TEMPORARY;
  if (((((llvm_and_u8(_249, 2)) == ((uint8_t)0))&1))) {
    goto _252;
  } else {
    goto _253;
  }

_253:
   /*tail*/ put_buf(_242, _245);
  goto _252;

_252:
  return _245;
}


void tws_hid_info_for_set(uint8_t* _254, uint32_t _255) {
#line 491 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 493 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ hid_core_data_for_set(_254, (((uint16_t)_255)));
}


uint32_t tws_spp_info_for_send(uint8_t* _256, uint32_t _257) {
  uint32_t _258;
  uint32_t _259;
  uint8_t _260;
  uint32_t _261;
  uint8_t _262;
  uint8_t _263;
  uint8_t _263__PHI_TEMPORARY;

#line 496 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 498 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_256 = 174u;
#line 500 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _258 =  /*tail*/ spp_core_data_for_send(((&_256[((int32_t)3)])), (((uint16_t)_257)));
  _259 = llvm_add_u32(_258, 3);
#line 498 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 501 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_256[((int32_t)1)])) = (((uint8_t)_259));
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_256[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_259, 8))));
#line 504 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _260 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_260, 1)) == ((uint8_t)0))&1))) {
    _263__PHI_TEMPORARY = _260;   /* for PHI node */
    goto _264;
  } else {
    goto _265;
  }

_265:
  _261 =  /*tail*/ puts(((&str_OC_46.array[((int32_t)0)])));
  _262 = btstack_tws_debug_enable;
  _263__PHI_TEMPORARY = _262;   /* for PHI node */
  goto _264;

_264:
#line 505 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _263 = _263__PHI_TEMPORARY;
  if (((((llvm_and_u8(_263, 2)) == ((uint8_t)0))&1))) {
    goto _266;
  } else {
    goto _267;
  }

_267:
   /*tail*/ put_buf(_256, _259);
  goto _266;

_266:
  return _259;
}


void tws_spp_info_for_set(uint8_t* _268, uint32_t _269) {
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 511 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ spp_core_data_for_set(_268, (((uint16_t)_269)));
}


uint32_t tws_iap_info_for_send(uint8_t* _270, uint32_t _271) {
  uint32_t _272;
  uint32_t _273;
  uint8_t _274;
  uint32_t _275;
  uint8_t _276;
  uint8_t _277;
  uint8_t _277__PHI_TEMPORARY;

#line 514 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 516 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 517 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_270 = 175u;
#line 518 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _272 =  /*tail*/ iap_core_data_for_send(((&_270[((int32_t)3)])), (((uint16_t)_271)));
  _273 = llvm_add_u32(_272, 3);
#line 516 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 519 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_270[((int32_t)1)])) = (((uint8_t)_273));
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_270[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_273, 8))));
#line 522 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _274 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_274, 1)) == ((uint8_t)0))&1))) {
    _277__PHI_TEMPORARY = _274;   /* for PHI node */
    goto _278;
  } else {
    goto _279;
  }

_279:
  _275 =  /*tail*/ puts(((&str_OC_47.array[((int32_t)0)])));
  _276 = btstack_tws_debug_enable;
  _277__PHI_TEMPORARY = _276;   /* for PHI node */
  goto _278;

_278:
#line 523 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _277 = _277__PHI_TEMPORARY;
  if (((((llvm_and_u8(_277, 2)) == ((uint8_t)0))&1))) {
    goto _280;
  } else {
    goto _281;
  }

_281:
   /*tail*/ put_buf(_270, _273);
  goto _280;

_280:
  return _273;
}


void tws_iap_info_for_set(uint8_t* _282, uint32_t _283) {
#line 527 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 529 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ iap_core_data_for_set(_282, (((uint16_t)_283)));
}


uint32_t app_core_data_for_send(uint8_t* _284, uint16_t _285) {
  uint8_t _286;
  uint32_t _287;

#line 532 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 534 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _286 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_286, 1)) == ((uint8_t)0))&1))) {
    goto _288;
  } else {
    goto _289;
  }

_289:
  _287 =  /*tail*/ printf(((&_OC_str_OC_21.array[((int32_t)0)])), (((uint32_t)(uint16_t)_285)));
  goto _288;

_288:
  return 0;
}


void app_core_data_for_set(uint8_t* _290, uint16_t _291) {
#line 539 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
}


uint32_t tws_app_info_for_send(uint8_t* _292, uint32_t _293) {
  uint32_t _294;
  uint32_t _295;
  uint8_t _296;
  uint32_t _297;
  uint8_t _298;
  uint8_t _299;
  uint8_t _299__PHI_TEMPORARY;

#line 544 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 546 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 547 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *_292 = 172u;
#line 548 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _294 =  /*tail*/ app_core_data_for_send(((&_292[((int32_t)3)])), (((uint16_t)_293)));
  _295 = llvm_add_u32(_294, 3);
#line 546 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 549 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_292[((int32_t)1)])) = (((uint8_t)_295));
#line 550 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  *((&_292[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_295, 8))));
#line 552 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _296 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_296, 1)) == ((uint8_t)0))&1))) {
    _299__PHI_TEMPORARY = _296;   /* for PHI node */
    goto _300;
  } else {
    goto _301;
  }

_301:
  _297 =  /*tail*/ puts(((&str_OC_48.array[((int32_t)0)])));
  _298 = btstack_tws_debug_enable;
  _299__PHI_TEMPORARY = _298;   /* for PHI node */
  goto _300;

_300:
#line 553 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _299 = _299__PHI_TEMPORARY;
  if (((((llvm_and_u8(_299, 2)) == ((uint8_t)0))&1))) {
    goto _302;
  } else {
    goto _303;
  }

_303:
   /*tail*/ put_buf(_292, _295);
  goto _302;

_302:
  return _295;
}


void tws_app_info_for_set(uint8_t* _304, uint32_t _305) {
#line 557 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 559 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
   /*tail*/ app_core_data_for_set(_304, (((uint16_t)_305)));
}


uint32_t tws_host_get_core_data(uint8_t* _306, uint32_t _307) {
  uint8_t _308;
  uint32_t _309;
  uint32_t _310;
  uint32_t _311;
  uint32_t _312;
  uint32_t _313;
  uint32_t _314;
  uint32_t _315;
  uint32_t _316;
  uint32_t _317;
  uint32_t _318;
  uint32_t _319;
  uint32_t _320;
  uint32_t _321;
  uint32_t _322;
  uint32_t _323;
  uint32_t _324;
  uint32_t _325;
  uint32_t _326;
  uint32_t _327;
  uint32_t _328;
  uint32_t _329;
  uint32_t _330;
  uint32_t _331;
  uint32_t _332;
  uint32_t _333;
  uint32_t _334;
  uint32_t _335;
  uint32_t _336;
  uint32_t _337;
  uint32_t _338;
  uint8_t _339;
  uint32_t _340;

#line 562 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 566 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _308 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_308, 1)) == ((uint8_t)0))&1))) {
    goto _341;
  } else {
    goto _342;
  }

_342:
  _309 =  /*tail*/ printf(((&_OC_str_OC_23.array[((int32_t)0)])), _307);
  goto _341;

_341:
#line 568 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _310 =  /*tail*/ tws_hci_connected_info_for_send(_306, /*UNDEF*/0);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 569 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _311 =  /*tail*/ tws_l2cap_connected_info_for_send(((&_306[((int32_t)_310)])), (llvm_sub_u32(_307, _310)));
  _312 = llvm_add_u32(_311, _310);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 570 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _313 =  /*tail*/ tws_l2cap_channel_info_for_send(((&_306[((int32_t)_312)])), (llvm_sub_u32(_307, _312)));
  _314 = llvm_add_u32(_312, _313);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 571 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _315 =  /*tail*/ tws_avdtp_info_for_send(((&_306[((int32_t)_314)])), (llvm_sub_u32(_307, _314)));
  _316 = llvm_add_u32(_314, _315);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 572 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _317 =  /*tail*/ tws_a2dp_info_for_send(((&_306[((int32_t)_316)])), (llvm_sub_u32(_307, _316)));
  _318 = llvm_add_u32(_316, _317);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 573 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _319 =  /*tail*/ tws_avctp_info_for_send(((&_306[((int32_t)_318)])), (llvm_sub_u32(_307, _318)));
  _320 = llvm_add_u32(_318, _319);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 574 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _321 =  /*tail*/ tws_sdp_info_for_send(((&_306[((int32_t)_320)])), (llvm_sub_u32(_307, _320)));
  _322 = llvm_add_u32(_320, _321);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 575 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _323 =  /*tail*/ tws_rfc_multiplexer_info_for_send(((&_306[((int32_t)_322)])), (llvm_sub_u32(_307, _322)));
  _324 = llvm_add_u32(_322, _323);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 576 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _325 =  /*tail*/ tws_rfc_channel_info_for_send(((&_306[((int32_t)_324)])), (llvm_sub_u32(_307, _324)));
  _326 = llvm_add_u32(_324, _325);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 577 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _327 =  /*tail*/ tws_hfp_info_for_send(((&_306[((int32_t)_326)])), (llvm_sub_u32(_307, _326)));
  _328 = llvm_add_u32(_326, _327);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 578 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _329 =  /*tail*/ tws_user_info_for_send(((&_306[((int32_t)_328)])), (llvm_sub_u32(_307, _328)));
  _330 = llvm_add_u32(_328, _329);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 579 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _331 =  /*tail*/ tws_app_info_for_send(((&_306[((int32_t)_330)])), (llvm_sub_u32(_307, _330)));
  _332 = llvm_add_u32(_330, _331);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 580 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _333 =  /*tail*/ tws_hid_info_for_send(((&_306[((int32_t)_332)])), (llvm_sub_u32(_307, _332)));
  _334 = llvm_add_u32(_332, _333);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 581 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _335 =  /*tail*/ tws_spp_info_for_send(((&_306[((int32_t)_334)])), (llvm_sub_u32(_307, _334)));
  _336 = llvm_add_u32(_334, _335);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 582 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _337 =  /*tail*/ tws_iap_info_for_send(((&_306[((int32_t)_336)])), (llvm_sub_u32(_307, _336)));
  _338 = llvm_add_u32(_336, _337);
#line 564 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 584 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _339 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_339, 1)) == ((uint8_t)0))&1))) {
    goto _343;
  } else {
    goto _344;
  }

_344:
  _340 =  /*tail*/ printf(((&_OC_str_OC_24.array[((int32_t)0)])), _338);
  goto _343;

_343:
  return _338;
}


uint32_t tws_host_set_core_data(uint8_t* _345, uint32_t _346) {
  struct l_array_13_uint8_t _347;    /* Address-exposed local */
  uint8_t* _348;
  uint8_t* _349;
  uint64_t* _350;
  uint64_t* _351;
  uint32_t _352;
  uint32_t _352__PHI_TEMPORARY;
  uint8_t* _353;
  uint8_t* _353__PHI_TEMPORARY;
  uint8_t _354;
  uint8_t _355;
  uint32_t _356;
  uint32_t _357;
  uint8_t _358;
  uint64_t _359;
  uint8_t _360;
  uint32_t _361;
  uint8_t _362;
  uint8_t _363;
  uint8_t _363__PHI_TEMPORARY;
  uint8_t _364;
  uint32_t _365;
  uint8_t _366;
  uint8_t _367;
  uint8_t _367__PHI_TEMPORARY;
  uint8_t _368;
  uint32_t _369;
  uint8_t _370;
  uint8_t _371;
  uint8_t _371__PHI_TEMPORARY;
  uint8_t _372;
  uint32_t _373;
  uint8_t _374;
  uint8_t _375;
  uint8_t _375__PHI_TEMPORARY;
  uint8_t _376;
  uint32_t _377;
  uint8_t _378;
  uint8_t _379;
  uint8_t _379__PHI_TEMPORARY;
  uint8_t _380;
  uint32_t _381;
  uint8_t _382;
  uint8_t _383;
  uint8_t _383__PHI_TEMPORARY;
  uint8_t _384;
  uint32_t _385;
  uint8_t _386;
  uint8_t _387;
  uint8_t _387__PHI_TEMPORARY;
  uint8_t _388;
  uint32_t _389;
  uint8_t _390;
  uint8_t _391;
  uint8_t _391__PHI_TEMPORARY;
  uint8_t _392;
  uint32_t _393;
  uint8_t _394;
  uint8_t _395;
  uint8_t _395__PHI_TEMPORARY;
  uint8_t _396;
  uint32_t _397;
  uint8_t _398;
  uint8_t _399;
  uint8_t _399__PHI_TEMPORARY;
  uint8_t _400;
  uint32_t _401;
  uint8_t _402;
  uint8_t _403;
  uint8_t _403__PHI_TEMPORARY;
  uint8_t _404;
  uint32_t _405;
  uint8_t _406;
  uint8_t _407;
  uint8_t _407__PHI_TEMPORARY;
  uint8_t _408;
  uint32_t _409;
  uint8_t _410;
  uint8_t _411;
  uint8_t _411__PHI_TEMPORARY;
  uint8_t _412;
  uint32_t _413;
  uint8_t _414;
  uint8_t _415;
  uint8_t _415__PHI_TEMPORARY;
  uint8_t _416;
  uint32_t _417;
  uint8_t _418;
  uint8_t _419;
  uint8_t _419__PHI_TEMPORARY;
  uint8_t _420;
  uint32_t _421;
  uint8_t* _422;
  uint32_t _423;

#line 588 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 590 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 591 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 592 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
#line 593 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _348 = (&_347.array[((int32_t)0)]);
  ;
  _349 = memcpy(_348, ((&tws_host_set_core_data_OC_hci_connect_complete.array[((int32_t)0)])), 13);
#line 600 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 590 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  if ((((((int32_t)_346) > ((int32_t)0u))&1))) {
    goto _424;
  } else {
    goto _425;
  }

_424:
  _350 = ((uint64_t*)((&_345[((int32_t)3)])));
  _351 = ((uint64_t*)((&_347.array[((int32_t)3)])));
  _352__PHI_TEMPORARY = 0;   /* for PHI node */
  _353__PHI_TEMPORARY = _345;   /* for PHI node */
  goto _426;

  do {     /* Syntactic loop '' to make GCC happy */
_426:
  _352 = _352__PHI_TEMPORARY;
  _353 = _353__PHI_TEMPORARY;
#line 602 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _354 = *((&_353[((int32_t)1)]));
  _355 = *((&_353[((int32_t)2)]));
  _356 = ((((uint32_t)(uint8_t)_355)) << 8) | (((uint32_t)(uint8_t)_354));
#line 603 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _357 = llvm_add_u32(_356, _352);
#line 605 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _358 = *_353;
  switch (_358) {
  default:
    goto _427;
  case ((uint8_t)-95):
    goto _428;
  case ((uint8_t)-94):
    goto _429;
  case ((uint8_t)-93):
    goto _430;
  case ((uint8_t)-92):
    goto _431;
  case ((uint8_t)-91):
    goto _432;
  case ((uint8_t)-90):
    goto _433;
  case ((uint8_t)-89):
    goto _434;
  case ((uint8_t)-87):
    goto _435;
  case ((uint8_t)-88):
    goto _436;
  case ((uint8_t)-86):
    goto _437;
  case ((uint8_t)-85):
    goto _438;
  case ((uint8_t)-84):
    goto _439;
  case ((uint8_t)-83):
    goto _440;
  case ((uint8_t)-82):
    goto _441;
  case ((uint8_t)-81):
    goto _442;
  }

_442:
#line 692 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _416 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_416, 1)) == ((uint8_t)0))&1))) {
    _419__PHI_TEMPORARY = _416;   /* for PHI node */
    goto _443;
  } else {
    goto _444;
  }

_444:
  _417 = puts(((&str_OC_49.array[((int32_t)0)])));
  _418 = btstack_tws_debug_enable;
  _419__PHI_TEMPORARY = _418;   /* for PHI node */
  goto _443;

_443:
#line 693 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _419 = _419__PHI_TEMPORARY;
  if (((((llvm_and_u8(_419, 2)) == ((uint8_t)0))&1))) {
    goto _445;
  } else {
    goto _446;
  }

_446:
  put_buf(_353, _356);
  goto _445;

_445:
#line 694 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 527 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 529 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  iap_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_441:
#line 687 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _412 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_412, 1)) == ((uint8_t)0))&1))) {
    _415__PHI_TEMPORARY = _412;   /* for PHI node */
    goto _448;
  } else {
    goto _449;
  }

_449:
  _413 = puts(((&str_OC_50.array[((int32_t)0)])));
  _414 = btstack_tws_debug_enable;
  _415__PHI_TEMPORARY = _414;   /* for PHI node */
  goto _448;

_448:
#line 688 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _415 = _415__PHI_TEMPORARY;
  if (((((llvm_and_u8(_415, 2)) == ((uint8_t)0))&1))) {
    goto _450;
  } else {
    goto _451;
  }

_451:
  put_buf(_353, _356);
  goto _450;

_450:
#line 689 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 511 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  spp_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_440:
#line 681 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _408 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_408, 1)) == ((uint8_t)0))&1))) {
    _411__PHI_TEMPORARY = _408;   /* for PHI node */
    goto _452;
  } else {
    goto _453;
  }

_453:
  _409 = puts(((&str_OC_51.array[((int32_t)0)])));
  _410 = btstack_tws_debug_enable;
  _411__PHI_TEMPORARY = _410;   /* for PHI node */
  goto _452;

_452:
#line 682 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _411 = _411__PHI_TEMPORARY;
  if (((((llvm_and_u8(_411, 2)) == ((uint8_t)0))&1))) {
    goto _454;
  } else {
    goto _455;
  }

_455:
  put_buf(_353, _356);
  goto _454;

_454:
#line 683 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 491 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 493 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  hid_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_439:
#line 675 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _404 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_404, 1)) == ((uint8_t)0))&1))) {
    _407__PHI_TEMPORARY = _404;   /* for PHI node */
    goto _456;
  } else {
    goto _457;
  }

_457:
  _405 = puts(((&str_OC_52.array[((int32_t)0)])));
  _406 = btstack_tws_debug_enable;
  _407__PHI_TEMPORARY = _406;   /* for PHI node */
  goto _456;

_456:
#line 676 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _407 = _407__PHI_TEMPORARY;
  if (((((llvm_and_u8(_407, 2)) == ((uint8_t)0))&1))) {
    goto _458;
  } else {
    goto _459;
  }

_459:
  put_buf(_353, _356);
  goto _458;

_458:
#line 677 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 557 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 559 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  app_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_438:
#line 669 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _400 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_400, 1)) == ((uint8_t)0))&1))) {
    _403__PHI_TEMPORARY = _400;   /* for PHI node */
    goto _460;
  } else {
    goto _461;
  }

_461:
  _401 = puts(((&str_OC_53.array[((int32_t)0)])));
  _402 = btstack_tws_debug_enable;
  _403__PHI_TEMPORARY = _402;   /* for PHI node */
  goto _460;

_460:
#line 670 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _403 = _403__PHI_TEMPORARY;
  if (((((llvm_and_u8(_403, 2)) == ((uint8_t)0))&1))) {
    goto _462;
  } else {
    goto _463;
  }

_463:
  put_buf(_353, _356);
  goto _462;

_462:
#line 671 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 473 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 475 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  user_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_437:
#line 663 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _396 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_396, 1)) == ((uint8_t)0))&1))) {
    _399__PHI_TEMPORARY = _396;   /* for PHI node */
    goto _464;
  } else {
    goto _465;
  }

_465:
  _397 = puts(((&str_OC_54.array[((int32_t)0)])));
  _398 = btstack_tws_debug_enable;
  _399__PHI_TEMPORARY = _398;   /* for PHI node */
  goto _464;

_464:
#line 664 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _399 = _399__PHI_TEMPORARY;
  if (((((llvm_and_u8(_399, 2)) == ((uint8_t)0))&1))) {
    goto _466;
  } else {
    goto _467;
  }

_467:
  put_buf(_353, _356);
  goto _466;

_466:
#line 665 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 455 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 457 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  hfp_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_436:
#line 657 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _392 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_392, 1)) == ((uint8_t)0))&1))) {
    _395__PHI_TEMPORARY = _392;   /* for PHI node */
    goto _468;
  } else {
    goto _469;
  }

_469:
  _393 = puts(((&str_OC_55.array[((int32_t)0)])));
  _394 = btstack_tws_debug_enable;
  _395__PHI_TEMPORARY = _394;   /* for PHI node */
  goto _468;

_468:
#line 658 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _395 = _395__PHI_TEMPORARY;
  if (((((llvm_and_u8(_395, 2)) == ((uint8_t)0))&1))) {
    goto _470;
  } else {
    goto _471;
  }

_471:
  put_buf(_353, _356);
  goto _470;

_470:
#line 659 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 421 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  rfc_channel_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_435:
#line 651 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _388 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_388, 1)) == ((uint8_t)0))&1))) {
    _391__PHI_TEMPORARY = _388;   /* for PHI node */
    goto _472;
  } else {
    goto _473;
  }

_473:
  _389 = puts(((&str_OC_56.array[((int32_t)0)])));
  _390 = btstack_tws_debug_enable;
  _391__PHI_TEMPORARY = _390;   /* for PHI node */
  goto _472;

_472:
#line 652 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _391 = _391__PHI_TEMPORARY;
  if (((((llvm_and_u8(_391, 2)) == ((uint8_t)0))&1))) {
    goto _474;
  } else {
    goto _475;
  }

_475:
  put_buf(_353, _356);
  goto _474;

_474:
#line 653 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 437 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 439 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  rfc_multiplexer_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_434:
#line 645 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _384 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_384, 1)) == ((uint8_t)0))&1))) {
    _387__PHI_TEMPORARY = _384;   /* for PHI node */
    goto _476;
  } else {
    goto _477;
  }

_477:
  _385 = puts(((&str_OC_57.array[((int32_t)0)])));
  _386 = btstack_tws_debug_enable;
  _387__PHI_TEMPORARY = _386;   /* for PHI node */
  goto _476;

_476:
#line 646 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _387 = _387__PHI_TEMPORARY;
  if (((((llvm_and_u8(_387, 2)) == ((uint8_t)0))&1))) {
    goto _478;
  } else {
    goto _479;
  }

_479:
  put_buf(_353, _356);
  goto _478;

_478:
#line 647 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 403 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  sdp_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_433:
#line 639 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _380 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_380, 1)) == ((uint8_t)0))&1))) {
    _383__PHI_TEMPORARY = _380;   /* for PHI node */
    goto _480;
  } else {
    goto _481;
  }

_481:
  _381 = puts(((&str_OC_58.array[((int32_t)0)])));
  _382 = btstack_tws_debug_enable;
  _383__PHI_TEMPORARY = _382;   /* for PHI node */
  goto _480;

_480:
#line 640 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _383 = _383__PHI_TEMPORARY;
  if (((((llvm_and_u8(_383, 2)) == ((uint8_t)0))&1))) {
    goto _482;
  } else {
    goto _483;
  }

_483:
  put_buf(_353, _356);
  goto _482;

_482:
#line 641 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 383 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  avctp_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_432:
#line 633 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _376 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_376, 1)) == ((uint8_t)0))&1))) {
    _379__PHI_TEMPORARY = _376;   /* for PHI node */
    goto _484;
  } else {
    goto _485;
  }

_485:
  _377 = puts(((&str_OC_59.array[((int32_t)0)])));
  _378 = btstack_tws_debug_enable;
  _379__PHI_TEMPORARY = _378;   /* for PHI node */
  goto _484;

_484:
#line 634 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _379 = _379__PHI_TEMPORARY;
  if (((((llvm_and_u8(_379, 2)) == ((uint8_t)0))&1))) {
    goto _486;
  } else {
    goto _487;
  }

_487:
  put_buf(_353, _356);
  goto _486;

_486:
#line 635 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 366 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  a2dp_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_431:
#line 627 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _372 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_372, 1)) == ((uint8_t)0))&1))) {
    _375__PHI_TEMPORARY = _372;   /* for PHI node */
    goto _488;
  } else {
    goto _489;
  }

_489:
  _373 = puts(((&str_OC_60.array[((int32_t)0)])));
  _374 = btstack_tws_debug_enable;
  _375__PHI_TEMPORARY = _374;   /* for PHI node */
  goto _488;

_488:
#line 628 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _375 = _375__PHI_TEMPORARY;
  if (((((llvm_and_u8(_375, 2)) == ((uint8_t)0))&1))) {
    goto _490;
  } else {
    goto _491;
  }

_491:
  put_buf(_353, _356);
  goto _490;

_490:
#line 629 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 348 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  avdtp_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_430:
#line 621 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _368 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_368, 1)) == ((uint8_t)0))&1))) {
    _371__PHI_TEMPORARY = _368;   /* for PHI node */
    goto _492;
  } else {
    goto _493;
  }

_493:
  _369 = puts(((&str_OC_61.array[((int32_t)0)])));
  _370 = btstack_tws_debug_enable;
  _371__PHI_TEMPORARY = _370;   /* for PHI node */
  goto _492;

_492:
#line 622 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _371 = _371__PHI_TEMPORARY;
  if (((((llvm_and_u8(_371, 2)) == ((uint8_t)0))&1))) {
    goto _494;
  } else {
    goto _495;
  }

_495:
  put_buf(_353, _356);
  goto _494;

_494:
#line 623 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 328 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 330 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  l2cap_channel_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_429:
#line 615 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _364 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_364, 1)) == ((uint8_t)0))&1))) {
    _367__PHI_TEMPORARY = _364;   /* for PHI node */
    goto _496;
  } else {
    goto _497;
  }

_497:
  _365 = puts(((&str_OC_62.array[((int32_t)0)])));
  _366 = btstack_tws_debug_enable;
  _367__PHI_TEMPORARY = _366;   /* for PHI node */
  goto _496;

_496:
#line 616 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _367 = _367__PHI_TEMPORARY;
  if (((((llvm_and_u8(_367, 2)) == ((uint8_t)0))&1))) {
    goto _498;
  } else {
    goto _499;
  }

_499:
  put_buf(_353, _356);
  goto _498;

_498:
#line 617 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
#line 310 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 312 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  l2cap_core_data_for_set(((&_353[((int32_t)3)])), (((uint16_t)(llvm_add_u32(_356, 65533)))));
  goto _447;

_428:
#line 607 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _359 = __UNALIGNED_LOAD__(uint64_t, 1, _350);
  __UNALIGNED_LOAD__(uint64_t, 1, _351) = _359;
#line 609 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _360 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_360, 1)) == ((uint8_t)0))&1))) {
    _363__PHI_TEMPORARY = _360;   /* for PHI node */
    goto _500;
  } else {
    goto _501;
  }

_501:
  _361 = puts(((&str_OC_63.array[((int32_t)0)])));
  _362 = btstack_tws_debug_enable;
  _363__PHI_TEMPORARY = _362;   /* for PHI node */
  goto _500;

_500:
#line 610 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _363 = _363__PHI_TEMPORARY;
  if (((((llvm_and_u8(_363, 2)) == ((uint8_t)0))&1))) {
    goto _502;
  } else {
    goto _503;
  }

_503:
  put_buf(_348, 13);
  goto _502;

_502:
#line 292 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 294 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  hci_core_data_for_set(_348, 13);
  goto _447;

_427:
#line 698 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _420 = btstack_tws_debug_enable;
  if (((((llvm_and_u8(_420, 1)) == ((uint8_t)0))&1))) {
    goto _447;
  } else {
    goto _504;
  }

_504:
  _421 = puts(((&str_OC_64.array[((int32_t)0)])));
  goto _447;

_447:
#line 701 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _422 = (&_353[((int32_t)_356)]);
#line 590 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  ;
  ;
#line 600 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
  _423 = _357 & 65535;
  if ((((((int32_t)_423) < ((int32_t)_346))&1))) {
    _352__PHI_TEMPORARY = _423;   /* for PHI node */
    _353__PHI_TEMPORARY = _422;   /* for PHI node */
    goto _426;
  } else {
    goto _505;
  }

  } while (1); /* end of syntactic loop '' */
_505:
  goto _425;

_425:
  return 0;
}

