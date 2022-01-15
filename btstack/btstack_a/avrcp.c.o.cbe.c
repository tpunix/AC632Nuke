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
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_avrcp_header;
struct l_struct_struct_OC_control_pdu_handler;
struct l_struct_struct_OC_respone_pdu_handler;
struct l_struct_struct_OC_avrcp_event_info;
struct l_struct_struct_OC_avrcp_core_data_t;
struct l_struct_struct_OC_avctp;

/* Function definitions */
typedef void l_fptr_13(uint8_t);

typedef void l_fptr_10(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_4(uint8_t*, uint32_t, uint32_t);

typedef uint32_t l_fptr_1(void);

typedef void l_fptr_8(uint8_t*, uint32_t);

typedef uint8_t l_fptr_14(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint32_t l_fptr_11(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_9(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_7(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_12(void);

typedef uint8_t l_fptr_2(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t);

typedef void l_fptr_5(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint8_t l_fptr_3(struct l_struct_struct_OC_avctp*, struct l_struct_struct_OC_avrcp_header*, uint8_t);

typedef void l_fptr_6(uint32_t);


/* Types Definitions */
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_4* field0;
  l_fptr_7* field1;
  l_fptr_8* field2;
  l_fptr_1* field3;
  l_fptr_9* field4;
  l_fptr_10* field5;
  l_fptr_1* field6;
  l_fptr_6* field7;
  l_fptr_5* field8;
  l_fptr_11* field9;
  l_fptr_12* field10;
  l_fptr_13* field11;
  l_fptr_14* field12;
  l_fptr_9* field13;
  l_fptr_1* field14;
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_46_uint8_t {
  uint8_t array[46];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC_avrcp_header {
  struct l_array_3_uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  uint16_t field3;
  /* void field4 */} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_struct_OC_control_pdu_handler {
  uint8_t field0;
  uint8_t field1;
  l_fptr_3* field2;
};
struct l_struct_struct_OC_respone_pdu_handler {
  uint8_t field0;
  uint8_t field1;
  l_fptr_2* field2;
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};
struct l_struct_struct_OC_avrcp_event_info {
  uint8_t field0;
};
struct l_array_14_struct_AC_l_struct_struct_OC_avrcp_event_info {
  struct l_struct_struct_OC_avrcp_event_info array[14];
};
struct l_struct_struct_OC_avrcp_core_data_t {
  uint32_t field0;
  uint8_t field1;
  uint8_t field2;
  struct l_array_5_uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  struct l_array_3_uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  struct l_array_9_uint8_t field9;
  struct l_array_14_struct_AC_l_struct_struct_OC_avrcp_event_info field10;
};
struct l_struct_struct_OC_avctp {
  struct l_array_6_uint8_t field0;
  uint16_t field1;
  uint8_t field2;
  struct l_struct_struct_OC_control_pdu_handler* field3;
  struct l_struct_struct_OC_respone_pdu_handler* field4;
  struct l_struct_struct_OC_avrcp_core_data_t field5;
};
struct l_array_8_struct_AC_l_struct_struct_OC_respone_pdu_handler {
  struct l_struct_struct_OC_respone_pdu_handler array[8];
};
struct l_array_7_struct_AC_l_struct_struct_OC_control_pdu_handler {
  struct l_struct_struct_OC_control_pdu_handler array[7];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern uint8_t l2cap_debug_enable;
extern uint8_t more_avctp_cmd_support;

/* Function Declarations */
uint32_t avrcp_player_event(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint32_t avctp_send_vendordep(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t, uint8_t*, uint32_t);
uint32_t avrcp_register_notification(struct l_struct_struct_OC_avctp*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_32(uint8_t*, uint16_t, uint32_t);
uint32_t avctp_send_vendordep_req(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t);
uint32_t avrcp_get_capabilities(struct l_struct_struct_OC_avctp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avrcp_list_player_attributes(struct l_struct_struct_OC_avctp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t avrcp_set_player_value(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avrcp_send_absolute_volume_cmd(struct l_struct_struct_OC_avctp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
void emitter_rx_vol_change(uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void avrcp_element_attr_rsp_ext_process(uint8_t, uint32_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t bt_music_total_time(uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t avrcp_get_play_status(struct l_struct_struct_OC_avctp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avrcp_get_element_attributes(struct l_struct_struct_OC_avctp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_respone_pdu_handler* get_arp_deal_respone_handlers(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t handle_vendordep_pdu_res(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t*, uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_control_pdu_handler* get_arp_control_pdu_handlers(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t handle_vendordep_pdu(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t*, uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint8_t avrcp_get_capabilities_resp(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_handle_event(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_list_player_attributes_rsp(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_player_value_rsp(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_get_play_status_rsp(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_get_element_attributes_rsp(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
void set_cmd_pending_bit(struct l_struct_struct_OC_avctp*, uint32_t);
static uint8_t set_remote_player_value(struct l_struct_struct_OC_avctp*, struct l_struct_struct_OC_avrcp_header*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_handle_get_capabilities(struct l_struct_struct_OC_avctp*, struct l_struct_struct_OC_avrcp_header*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_handle_register_notification(struct l_struct_struct_OC_avctp*, struct l_struct_struct_OC_avrcp_header*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t avrcp_handle_set_absolute_volume(struct l_struct_struct_OC_avctp*, struct l_struct_struct_OC_avrcp_header*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_28_uint8_t _OC_str = { "<BT-log> :Unknown event %u\n" };
static struct l_array_46_uint8_t _OC_str_OC_1 = { "<BT-log> :avrcp_register_notification %d %d\n\n" };
static struct l_array_32_uint8_t _OC_str_OC_2 = { "avrcp_send_absolute_volume_cmd\n" };
static struct l_array_22_uint8_t _OC_str_OC_3 = { "avrcp_get_attributes\n" };
static struct l_array_8_struct_AC_l_struct_struct_OC_respone_pdu_handler arp_deal_respone_handlers = { { { 16, 0, avrcp_get_capabilities_resp }, { 49, 0, avrcp_handle_event }, { 17, 0, avrcp_list_player_attributes_rsp }, { 19, 0, avrcp_player_value_rsp }, { 48, 0, avrcp_get_play_status_rsp }, { 32, 0, avrcp_get_element_attributes_rsp }, { 20, 0, ((l_fptr_2*)/*NULL*/0) }, { 0, 0, ((l_fptr_2*)/*NULL*/0) } } };
static struct l_array_7_struct_AC_l_struct_struct_OC_control_pdu_handler arp_control_handlers = { { { 16, 1, avrcp_handle_get_capabilities }, { 24, 1, ((l_fptr_3*)/*NULL*/0) }, { 49, 3, avrcp_handle_register_notification }, { 80u, 0, avrcp_handle_set_absolute_volume }, { 64u, 0, ((l_fptr_3*)/*NULL*/0) }, { 65u, 0, ((l_fptr_3*)/*NULL*/0) }, { 0, 0, ((l_fptr_3*)/*NULL*/0) } } };
static struct l_array_23_uint8_t _OC_str_OC_4 = { "<BT-log> :get_vol %d\n\n" };
static struct l_array_31_uint8_t _OC_str_OC_5 = { "<BT-log> :res key %d, value%d\n" };
static struct l_array_23_uint8_t _OC_str_OC_6 = { "<BT-log> :len %d %d->\n" };
static struct l_array_22_uint8_t _OC_str_OC_7 = { "<BT-log> :pos %d %d\n\n" };
static struct l_array_36_uint8_t _OC_str_OC_8 = { "<BT-log> :MY event %d  support %d\n\n" };
static struct l_array_32_uint8_t _OC_str_OC_9 = { "<BT-log> :update avrcp vol %d\n\n" };
static struct l_array_29_uint8_t _OC_str_OC_10 = { "<BT-log> :get phone vol %d\n\n" };


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
static __forceinline uint32_t llvm_select_u24(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_udiv_u32(uint32_t a, uint32_t b) {
  uint32_t r = a / b;
  return r;
}
static __forceinline uint8_t llvm_shl_u8(uint8_t a, uint8_t b) {
  uint8_t r = a << b;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_lshr_u8(uint8_t a, uint8_t b) {
  uint8_t r = a >> b;
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
static __forceinline uint16_t llvm_OC_bswap_OC_i16(uint16_t a) {
  uint16_t r;
  LLVMFlipAllBits(8 * sizeof(a), &a, &r);
  return r;
}


/* Function Bodies */

uint32_t avrcp_player_event(struct l_struct_struct_OC_avctp* _1, uint8_t _2, uint8_t* _3) {
  struct l_array_16_uint8_t _4;    /* Address-exposed local */
  uint8_t* _5;
  uint32_t _6;
  uint8_t* _7;
  uint8_t _8;
  uint8_t* _9;
  uint8_t* _10;
  struct l_struct_struct_OC_user_interface_handler* _11;
  l_fptr_1* _12;
  uint32_t _13;
  uint8_t _14;
  uint8_t _15;
  uint8_t _15__PHI_TEMPORARY;
  uint8_t _16;
  uint32_t _17;
  uint8_t _18;
  uint8_t _19;
  uint32_t _20;
  uint32_t _21;
  uint32_t _21__PHI_TEMPORARY;

#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 159 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _5 = (&_4.array[((int32_t)0)]);
  ;
#line 162 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_1 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _21__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _22;
  } else {
    goto _23;
  }

_23:
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _6 = ((uint32_t)(uint8_t)_2);
  _7 = (&_1->field5.field10.array[((int32_t)_6)].field0);
  _8 = *_7;
  if (((((llvm_and_u8(_8, 2)) == ((uint8_t)0))&1))) {
    _21__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _22;
  } else {
    goto _24;
  }

_24:
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _9 = memset(_5, 0, 16);
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_4.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_4.array[((int32_t)2)])) = 88u;
#line 175 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_4.array[((int32_t)3)])) = 49;
#line 176 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_4.array[((int32_t)7)])) = _2;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_2 == ((uint8_t)13))&1))) {
    goto _25;
  } else {
    goto _26;
  }

_25:
#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 190 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _10 = (&_4.array[((int32_t)8)]);
  *_10 = 100u;
#line 191 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _11 = user_interface;
  _12 = *((&_11->field6));
  if ((((_12 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _15__PHI_TEMPORARY = 100u;   /* for PHI node */
    goto _27;
  } else {
    goto _28;
  }

_28:
#line 192 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _13 =  /*tail*/ _12();
  _14 = ((uint8_t)_13);
  *_10 = _14;
  _15__PHI_TEMPORARY = _14;   /* for PHI node */
  goto _27;

_27:
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _15 = _15__PHI_TEMPORARY;
  *((&_1->field5.field7)) = _15;
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_4.array[((int32_t)5)]))))) = 512;
#line 203 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _16 = *_7;
#line 202 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _17 = avctp_send_vendordep(_1, (llvm_lshr_u8(_16, 4)), 13, 9, _5, 9);
#line 162 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 210 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _18 = *_7;
  *_7 = (llvm_and_u8(_18, -3));
  _21__PHI_TEMPORARY = _17;   /* for PHI node */
  goto _22;

_26:
#line 198 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _19 = l2cap_debug_enable;
  if ((((((int8_t)_19) < ((int8_t)((uint8_t)0)))&1))) {
    goto _29;
  } else {
    _21__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _22;
  }

_29:
  _20 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), _6);
  _21__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _22;

_22:
  _21 = _21__PHI_TEMPORARY;
  return _21;
}


uint32_t avrcp_register_notification(struct l_struct_struct_OC_avctp* _30, uint8_t _31) {
  struct l_array_12_uint8_t _32;    /* Address-exposed local */
  uint8_t* _33;
  uint8_t* _34;
  uint8_t* _35;
  uint32_t _36;
  uint16_t* _37;
  uint8_t _38;
  uint32_t _39;
  uint16_t _40;
  uint32_t _41;
  uint32_t _42;
  uint32_t _42__PHI_TEMPORARY;
  uint8_t* _43;
  uint8_t _44;
  uint32_t _45;

#line 216 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 218 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _33 = (&_32.array[((int32_t)0)]);
  ;
#line 220 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _34 = memset(_33, 0, 12);
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_32.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_32.array[((int32_t)2)])) = 88u;
#line 225 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_32.array[((int32_t)3)])) = 49;
#line 226 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_32.array[((int32_t)4)])) = 0;
#line 227 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _35 = (&_32.array[((int32_t)7)]);
  *_35 = _31;
#line 228 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_32.array[((int32_t)8)])) = 0;
#line 234 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _36 = ((uint32_t)(uint8_t)_31);
  if ((((_31 == ((uint8_t)5))&1))) {
    goto _46;
  } else {
    goto _47;
  }

_46:
#line 235 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  net_store_32(_35, 1, 1);
  goto _47;

_47:
#line 241 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _37 = ((uint16_t*)((&_32.array[((int32_t)5)])));
  __UNALIGNED_LOAD__(uint16_t, 1, _37) = 1280;
#line 242 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _38 = l2cap_debug_enable;
  if ((((((int8_t)_38) < ((int8_t)((uint8_t)0)))&1))) {
    goto _48;
  } else {
    _42__PHI_TEMPORARY = 12;   /* for PHI node */
    goto _49;
  }

_48:
  _39 = printf(((&_OC_str_OC_1.array[((int32_t)0)])), _36, 0);
  _40 = __UNALIGNED_LOAD__(uint16_t, 1, _37);
  _41 = (llvm_add_u32((llvm_lshr_u32((((uint32_t)(uint16_t)_40)), 8)), 7)) & 255;
  _42__PHI_TEMPORARY = _41;   /* for PHI node */
  goto _49;

_49:
  _42 = _42__PHI_TEMPORARY;
#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _43 = (&_30->field5.field10.array[((int32_t)_36)].field0);
  _44 = *_43;
  *_43 = (llvm_or_u8(_44, 8));
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _45 = avctp_send_vendordep_req(_30, 3, 9, _33, _42);
  return _45;
}


uint32_t avrcp_get_capabilities(struct l_struct_struct_OC_avctp* _50) {
  uint64_t _51;    /* Address-exposed local */
  uint8_t* _52;
  struct l_struct_struct_OC_avrcp_header* _53;
  uint32_t _54;

#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 252 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _52 = ((uint8_t*)(&_51));
#line 253 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _53 = ((struct l_struct_struct_OC_avrcp_header*)(&_51));
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_52 = 0;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_52[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_52[((int32_t)2)])) = 88u;
#line 259 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_53->field1)) = 16;
#line 260 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_53->field2)) = 0;
#line 261 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_53->field4)) = 3;
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, ((&_53->field3))) = 256;
#line 254 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 266 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _54 = avctp_send_vendordep_req(_50, 1, 9, _52, 8);
  return _54;
}


uint32_t avrcp_list_player_attributes(struct l_struct_struct_OC_avctp* _55) {
  struct l_array_7_uint8_t _56;    /* Address-exposed local */
  uint8_t* _57;
  uint8_t* _58;
  uint32_t _59;

#line 271 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _57 = (&_56.array[((int32_t)0)]);
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _58 = memset(_57, 0, 7);
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_56.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_56.array[((int32_t)2)])) = 88u;
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_56.array[((int32_t)3)])) = 17;
#line 280 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_56.array[((int32_t)4)])) = 0;
#line 282 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _59 = avctp_send_vendordep_req(_55, 1, 9, _57, 7);
  return _59;
}


uint8_t avrcp_set_player_value(struct l_struct_struct_OC_avctp* _60, uint8_t _61, uint8_t _62) {
  struct l_array_10_uint8_t _63;    /* Address-exposed local */
  uint32_t _64;

#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
  ;
#line 289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)0)])) = 0;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)2)])) = 88u;
#line 296 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)3)])) = 20;
#line 297 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)4)])) = 0;
#line 298 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)7)])) = 1;
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)8)])) = _61;
#line 300 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_63.array[((int32_t)9)])) = _62;
#line 301 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_63.array[((int32_t)5)]))))) = 768;
#line 291 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 304 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _64 = avctp_send_vendordep_req(_60, 0, 9, ((&_63.array[((int32_t)0)])), 10);
  return (((uint8_t)_64));
}


uint32_t avrcp_send_absolute_volume_cmd(struct l_struct_struct_OC_avctp* _65) {
  uint64_t _66;    /* Address-exposed local */
  uint8_t* _67;
  struct l_struct_struct_OC_avrcp_header* _68;
  uint8_t _69;
  uint32_t _70;
  uint8_t* _71;
  struct l_struct_struct_OC_user_interface_handler* _72;
  l_fptr_1* _73;
  uint32_t _74;
  uint32_t _75;

#line 309 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 312 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _67 = ((uint8_t*)(&_66));
#line 313 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _68 = ((struct l_struct_struct_OC_avrcp_header*)(&_66));
  ;
#line 316 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _66 = 0;
#line 317 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _69 = l2cap_debug_enable;
  if (((((llvm_and_u8(_69, 32)) == ((uint8_t)0))&1))) {
    goto _76;
  } else {
    goto _77;
  }

_77:
  _70 =  /*tail*/ puts(((&_OC_str_OC_2.array[((int32_t)0)])));
  goto _76;

_76:
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_67 = 0;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_67[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_67[((int32_t)2)])) = 88u;
#line 319 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_68->field1)) = 80u;
#line 320 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_68->field2)) = 0;
#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _71 = (&_68->field4);
  *_71 = 100u;
#line 322 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _72 = user_interface;
  _73 = *((&_72->field6));
  if ((((_73 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _78;
  } else {
    goto _79;
  }

_79:
#line 323 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _74 =  /*tail*/ _73();
  *_71 = (((uint8_t)_74));
  goto _78;

_78:
#line 325 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, ((&_68->field3))) = 256;
#line 314 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 329 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _75 = avctp_send_vendordep_req(_65, 0, 9, _67, 8);
  return _75;
}


void emitter_rx_vol_change(uint8_t _80) {
#line 336 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
}


void avrcp_element_attr_rsp_ext_process(uint8_t _81, uint32_t _82, uint8_t* _83, uint16_t _84) {
#line 436 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
  ;
  ;
}


uint8_t bt_music_total_time(uint32_t _85) {
#line 498 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  return 0;
}


uint32_t avrcp_get_play_status(struct l_struct_struct_OC_avctp* _86) {
  struct l_array_7_uint8_t _87;    /* Address-exposed local */
  uint8_t* _88;
  uint8_t* _89;
  uint32_t _90;

#line 566 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 568 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _88 = (&_87.array[((int32_t)0)]);
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _89 = memset(_88, 0, 7);
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_87.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_87.array[((int32_t)2)])) = 88u;
#line 575 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_87.array[((int32_t)3)])) = 48;
#line 576 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_87.array[((int32_t)4)])) = 0;
#line 579 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _90 = avctp_send_vendordep_req(_86, 1, 9, _88, 7);
  return _90;
}


uint32_t avrcp_get_element_attributes(struct l_struct_struct_OC_avctp* _91) {
  struct l_array_44_uint8_t _92;    /* Address-exposed local */
  uint8_t* _93;
  uint8_t* _94;
  uint8_t _95;
  uint32_t _96;
  uint32_t _97;

#line 587 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 589 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _93 = (&_92.array[((int32_t)0)]);
  ;
#line 593 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _94 = memset(_93, 0, 44);
#line 594 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _95 = l2cap_debug_enable;
  if (((((llvm_and_u8(_95, 32)) == ((uint8_t)0))&1))) {
    goto _98;
  } else {
    goto _99;
  }

_99:
  _96 =  /*tail*/ puts(((&_OC_str_OC_3.array[((int32_t)0)])));
  goto _98;

_98:
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_93 = 0;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_92.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_92.array[((int32_t)2)])) = 88u;
#line 596 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_92.array[((int32_t)3)])) = 32;
#line 597 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_92.array[((int32_t)4)])) = 0;
#line 598 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_92.array[((int32_t)5)]))))) = 2304;
#line 600 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_92.array[((int32_t)15)])) = 0;
#line 591 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 602 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _97 = avctp_send_vendordep_req(_91, 1, 9, _93, 16);
  return _97;
}


struct l_struct_struct_OC_respone_pdu_handler* get_arp_deal_respone_handlers(void) {
  return ((&arp_deal_respone_handlers.array[((int32_t)0)]));
}


uint32_t handle_vendordep_pdu_res(struct l_struct_struct_OC_avctp* _100, uint8_t _101, uint8_t* _102, uint8_t* _103, uint8_t* _104, uint32_t _105) {
  uint8_t _106;
  uint8_t _107;
  uint8_t _108;
  uint8_t _109;
  struct l_struct_struct_OC_respone_pdu_handler* _110;
  uint8_t _111;
  uint8_t _112;
  uint8_t _113;
  uint8_t _113__PHI_TEMPORARY;
  struct l_struct_struct_OC_respone_pdu_handler* _114;
  struct l_struct_struct_OC_respone_pdu_handler* _114__PHI_TEMPORARY;
  struct l_struct_struct_OC_respone_pdu_handler* _115;
  uint8_t _116;
  struct l_struct_struct_OC_respone_pdu_handler* _117;
  struct l_struct_struct_OC_respone_pdu_handler* _117__PHI_TEMPORARY;
  struct l_struct_struct_OC_respone_pdu_handler* _118;
  struct l_struct_struct_OC_respone_pdu_handler* _118__PHI_TEMPORARY;
  l_fptr_2* _119;
  uint8_t _120;
  uint8_t _121;
  uint32_t _122;
  uint32_t _123;
  uint32_t _123__PHI_TEMPORARY;

#line 817 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 818 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 819 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 821 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 136 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 823 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 825 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _106 = *_102;
  if ((((_106 == ((uint8_t)9))&1))) {
    _123__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _124;
  } else {
    goto _125;
  }

_125:
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _107 = *((&_104[((int32_t)1)]));
  _108 = *_104;
  _109 = *((&_104[((int32_t)2)]));
#line 826 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 830 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 826 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((((int32_t)_105) < ((int32_t)7u))&1)) | ((((((_106 == ((uint8_t)10))&1)) | (((((((((uint32_t)(uint8_t)_108)) << 16) | ((((uint32_t)(uint8_t)_107)) << 8)) | (((uint32_t)(uint8_t)_109))) != 6488u)&1)))&1)))&1))) {
    _123__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _124;
  } else {
    goto _126;
  }

_126:
#line 833 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _110 = *((&_100->field4));
#line 821 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 833 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _111 = *((&_110->field0));
  if ((((_111 == ((uint8_t)0))&1))) {
    _117__PHI_TEMPORARY = _110;   /* for PHI node */
    goto _127;
  } else {
    goto _128;
  }

_128:
  _112 = *((&_104[((int32_t)3)]));
  _113__PHI_TEMPORARY = _111;   /* for PHI node */
  _114__PHI_TEMPORARY = _110;   /* for PHI node */
  goto _129;

  do {     /* Syntactic loop '' to make GCC happy */
_129:
  _113 = _113__PHI_TEMPORARY;
  _114 = _114__PHI_TEMPORARY;
#line 834 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_113 == _112)&1))) {
    goto _130;
  } else {
    goto _131;
  }

_131:
#line 836 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_113 == ((uint8_t)20))&1))) {
    goto _132;
  } else {
    goto _133;
  }

_133:
#line 833 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _115 = (&_114[((int32_t)1)]);
#line 821 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 833 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _116 = *((&_115->field0));
  if ((((_116 == ((uint8_t)0))&1))) {
    goto _134;
  } else {
    _113__PHI_TEMPORARY = _116;   /* for PHI node */
    _114__PHI_TEMPORARY = _115;   /* for PHI node */
    goto _129;
  }

  } while (1); /* end of syntactic loop '' */
_130:
  _117__PHI_TEMPORARY = _114;   /* for PHI node */
  goto _127;

_127:
  _117 = _117__PHI_TEMPORARY;
#line 841 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_117 == ((struct l_struct_struct_OC_respone_pdu_handler*)/*NULL*/0))&1))) {
    _123__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _124;
  } else {
    _118__PHI_TEMPORARY = _117;   /* for PHI node */
    goto _135;
  }

_134:
  _118__PHI_TEMPORARY = _115;   /* for PHI node */
  goto _135;

_135:
  _118 = _118__PHI_TEMPORARY;
#line 846 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _119 = *((&_118->field2));
  _120 = *_103;
  _121 =  /*tail*/ _119(_100, _106, _120, _104, _105);
  _122 = ((uint32_t)(uint8_t)_121);
  _123__PHI_TEMPORARY = _122;   /* for PHI node */
  goto _124;

_132:
  _123__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _124;

_124:
  _123 = _123__PHI_TEMPORARY;
  return _123;
}


struct l_struct_struct_OC_control_pdu_handler* get_arp_control_pdu_handlers(void) {
  return ((&arp_control_handlers.array[((int32_t)0)]));
}


uint32_t handle_vendordep_pdu(struct l_struct_struct_OC_avctp* _136, uint8_t _137, uint8_t* _138, uint8_t* _139, uint8_t* _140, uint32_t _141) {
  struct l_struct_struct_OC_avrcp_header* _142;
  uint8_t _143;
  uint8_t _144;
  uint8_t _145;
  struct l_struct_struct_OC_control_pdu_handler* _146;
  uint8_t _147;
  uint8_t _148;
  uint8_t _149;
  uint8_t _149__PHI_TEMPORARY;
  struct l_struct_struct_OC_control_pdu_handler* _150;
  struct l_struct_struct_OC_control_pdu_handler* _150__PHI_TEMPORARY;
  struct l_struct_struct_OC_control_pdu_handler* _151;
  uint8_t _152;
  struct l_struct_struct_OC_control_pdu_handler* _153;
  struct l_struct_struct_OC_control_pdu_handler* _153__PHI_TEMPORARY;
  struct l_struct_struct_OC_control_pdu_handler* _154;
  struct l_struct_struct_OC_control_pdu_handler* _154__PHI_TEMPORARY;
  uint8_t _155;
  uint8_t _156;
  l_fptr_3* _157;
  uint8_t _158;
  uint16_t _159;
  uint32_t _160;
  uint32_t _161;
  uint8_t _162;
  uint8_t _162__PHI_TEMPORARY;
  uint32_t _163;
  uint32_t _163__PHI_TEMPORARY;

#line 1125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 1126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 1127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 1131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _142 = ((struct l_struct_struct_OC_avrcp_header*)_140);
  ;
#line 136 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _143 = *_140;
  _144 = *((&_140[((int32_t)1)]));
  _145 = *((&_140[((int32_t)2)]));
#line 1132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 1133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((((((((uint32_t)(uint8_t)_144)) << 8) | ((((uint32_t)(uint8_t)_143)) << 16)) | (((uint32_t)(uint8_t)_145))) == 6488u)&1))) {
    goto _164;
  } else {
    goto _165;
  }

_165:
#line 1134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_138 = 8;
  _163__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _166;

_164:
#line 1141 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 1142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_140[((int32_t)4)])) = 0;
#line 1144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((((int32_t)_141) < ((int32_t)7u))&1))) {
    _162__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _167;
  } else {
    goto _168;
  }

_168:
#line 1149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _146 = *((&_136->field3));
#line 1130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 1149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _147 = *((&_146->field0));
  if ((((_147 == ((uint8_t)0))&1))) {
    _153__PHI_TEMPORARY = _146;   /* for PHI node */
    goto _169;
  } else {
    goto _170;
  }

_170:
#line 1150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _148 = *((&_140[((int32_t)3)]));
  _149__PHI_TEMPORARY = _147;   /* for PHI node */
  _150__PHI_TEMPORARY = _146;   /* for PHI node */
  goto _171;

  do {     /* Syntactic loop '' to make GCC happy */
_171:
  _149 = _149__PHI_TEMPORARY;
  _150 = _150__PHI_TEMPORARY;
  if ((((_149 == _148)&1))) {
    goto _172;
  } else {
    goto _173;
  }

_173:
#line 1149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _151 = (&_150[((int32_t)1)]);
#line 1130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 1149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _152 = *((&_151->field0));
  if ((((_152 == ((uint8_t)0))&1))) {
    goto _174;
  } else {
    _149__PHI_TEMPORARY = _152;   /* for PHI node */
    _150__PHI_TEMPORARY = _151;   /* for PHI node */
    goto _171;
  }

  } while (1); /* end of syntactic loop '' */
_172:
  _153__PHI_TEMPORARY = _150;   /* for PHI node */
  goto _169;

_169:
  _153 = _153__PHI_TEMPORARY;
#line 1157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_153 == ((struct l_struct_struct_OC_control_pdu_handler*)/*NULL*/0))&1))) {
    _162__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _167;
  } else {
    _154__PHI_TEMPORARY = _153;   /* for PHI node */
    goto _175;
  }

_174:
  _154__PHI_TEMPORARY = _151;   /* for PHI node */
  goto _175;

_175:
  _154 = _154__PHI_TEMPORARY;
  _155 = *((&_154->field1));
  _156 = *_138;
  if ((((_155 == _156)&1))) {
    goto _176;
  } else {
    _162__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _167;
  }

_176:
#line 1163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _157 = *((&_154->field2));
  if ((((_157 == ((l_fptr_3*)/*NULL*/0))&1))) {
    _162__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _167;
  } else {
    goto _177;
  }

_177:
#line 1169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _158 =  /*tail*/ _157(_136, _142, _137);
  *_138 = _158;
#line 1180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _159 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_140[((int32_t)5)])))));
  _160 = ((uint32_t)(uint16_t)_159);
  _161 = llvm_add_u32((((_160 << 8) & 65280) | (llvm_lshr_u32(_160, 8))), 7);
  _163__PHI_TEMPORARY = _161;   /* for PHI node */
  goto _166;

_167:
  _162 = _162__PHI_TEMPORARY;
  *((&_140[((int32_t)7)])) = _162;
#line 1183 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_140[((int32_t)5)]))))) = 256;
#line 1184 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_138 = 10;
  _163__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _166;

_166:
  _163 = _163__PHI_TEMPORARY;
  return _163;
}


static uint8_t avrcp_get_capabilities_resp(struct l_struct_struct_OC_avctp* _178, uint8_t _179, uint8_t _180, uint8_t* _181, uint32_t _182) {
  uint8_t* _183;
  uint8_t _184;
  uint8_t _185;
  uint8_t _186;
  uint32_t _187;
  uint32_t _188;
  uint32_t _188__PHI_TEMPORARY;
  uint8_t _189;
  uint8_t* _190;
  uint8_t _191;
  uint32_t _192;

#line 633 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 634 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 635 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 638 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 641 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_181 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _193;
  } else {
    goto _194;
  }

_194:
  _183 = (&_181[((int32_t)7)]);
  _184 = *_183;
  if ((((_184 == ((uint8_t)3))&1))) {
    goto _195;
  } else {
    goto _193;
  }

_195:
#line 645 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_178, 14);
#line 653 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _185 = *((&_181[((int32_t)8)]));
#line 639 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 655 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_185 == ((uint8_t)0))&1))) {
    goto _193;
  } else {
    goto _196;
  }

_196:
  _186 = more_avctp_cmd_support;
  _187 = ((uint32_t)(uint8_t)_185);
  _188__PHI_TEMPORARY = _187;   /* for PHI node */
  goto _197;

  do {     /* Syntactic loop '' to make GCC happy */
_197:
  _188 = _188__PHI_TEMPORARY;
#line 656 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _189 = *((&_183[((int32_t)(llvm_add_u32(_188, 1)))]));
  ;
#line 658 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 659 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _190 = (&_178->field5.field10.array[((int32_t)(((uint32_t)(uint8_t)_189)))].field0);
  _191 = *_190;
  *_190 = (llvm_or_u8(_191, 4));
  switch (_189) {
  default:
    goto _198;
  case ((uint8_t)1):
    goto _199;
  case ((uint8_t)2):
    goto _200;
  case ((uint8_t)8):
    goto _201;
  case ((uint8_t)13):
    goto _202;
  }

_202:
  if ((((_186 == ((uint8_t)0))&1))) {
    goto _198;
  } else {
    goto _203;
  }

_203:
#line 685 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_178, 13);
  goto _198;

_201:
  if ((((_186 == ((uint8_t)0))&1))) {
    goto _198;
  } else {
    goto _204;
  }

_204:
#line 672 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_178, 3);
  goto _198;

_200:
  if ((((_186 == ((uint8_t)0))&1))) {
    goto _198;
  } else {
    goto _205;
  }

_205:
#line 667 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_178, 2);
  goto _198;

_199:
#line 663 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_178, 1);
  goto _198;

_198:
#line 655 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _192 = llvm_add_u32(_188, -1);
  if (((((((uint8_t)_188)) == ((uint8_t)1))&1))) {
    goto _206;
  } else {
    _188__PHI_TEMPORARY = _192;   /* for PHI node */
    goto _197;
  }

  } while (1); /* end of syntactic loop '' */
_206:
  goto _193;

_193:
  return 0;
}


static uint8_t avrcp_handle_event(struct l_struct_struct_OC_avctp* _207, uint8_t _208, uint8_t _209, uint8_t* _210, uint32_t _211) {
  struct l_struct_struct_OC_avrcp_header* _212;
  uint8_t _213;
  uint8_t* _214;
  uint8_t _215;
  uint8_t _216;
  uint8_t _217;
  uint8_t _218;
  uint8_t _219;
  uint8_t _220;
  uint8_t _221;
  uint8_t _222;
  uint32_t _223;
  uint8_t _224;
  uint32_t _225;
  uint32_t* _226;
  uint32_t _227;
  uint32_t _228;
  struct l_struct_struct_OC_user_interface_handler* _229;
  l_fptr_4* _230;
  uint32_t _231;
  uint32_t _232;
  uint32_t _232__PHI_TEMPORARY;
  uint8_t _233;
  uint32_t _234;
  uint8_t _235;
  uint8_t _236;
  uint8_t _237;
  uint8_t _237__PHI_TEMPORARY;

#line 701 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 702 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 703 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 705 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _212 = ((struct l_struct_struct_OC_avrcp_header*)_210);
  ;
#line 708 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_208 == ((uint8_t)15))&1))) {
    goto _238;
  } else {
    goto _239;
  }

_239:
#line 709 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 708 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_208 != ((uint8_t)13))&1)) | (((_210 == ((uint8_t*)/*NULL*/0))&1)))&1))) {
    _237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _240;
  } else {
    goto _241;
  }

_238:
#line 709 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_210 == ((uint8_t*)/*NULL*/0))&1))) {
    _237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _240;
  } else {
    goto _242;
  }

_241:
#line 713 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _213 = *((&_210[((int32_t)7)]));
#line 706 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 718 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _214 = (&_207->field5.field10.array[((int32_t)(((uint32_t)(uint8_t)_213)))].field0);
  _215 = *_214;
  *_214 = (llvm_and_u8(_215, -9));
  switch (_213) {
  default:
    _237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _240;
  case ((uint8_t)1):
    goto _243;
  case ((uint8_t)8):
    goto _244;
  case ((uint8_t)2):
    goto _245;
  case ((uint8_t)13):
    goto _246;
  case ((uint8_t)5):
    goto _247;
  }

_243:
#line 721 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_207, 1);
  _237__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _240;

_244:
#line 724 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _216 = more_avctp_cmd_support;
  if ((((_216 == ((uint8_t)0))&1))) {
    _237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _240;
  } else {
    goto _248;
  }

_248:
#line 725 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_207, 3);
  _237__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _240;

_245:
#line 729 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _217 = more_avctp_cmd_support;
  if ((((_217 == ((uint8_t)0))&1))) {
    _237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _240;
  } else {
    goto _249;
  }

_249:
#line 730 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_207, 2);
  _237__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _240;

_246:
#line 734 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_207, 13);
  _237__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _240;

_247:
#line 737 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _218 = more_avctp_cmd_support;
  if ((((_218 == ((uint8_t)0))&1))) {
    _237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _240;
  } else {
    goto _250;
  }

_250:
#line 738 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ set_cmd_pending_bit(_207, 9);
  _237__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _240;

_242:
#line 713 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _219 = *((&_210[((int32_t)7)]));
#line 706 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  switch (_219) {
  default:
    _237__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _240;
  case ((uint8_t)13):
    goto _251;
  case ((uint8_t)1):
    goto _252;
  case ((uint8_t)2):
    goto _253;
  case ((uint8_t)8):
    goto _254;
  }

_251:
#line 341 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 345 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _220 = *((&_210[((int32_t)8)]));
  _221 = llvm_and_u8(_220, 127u);
#line 344 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _222 = l2cap_debug_enable;
  if ((((((int8_t)_222) < ((int8_t)((uint8_t)0)))&1))) {
    goto _255;
  } else {
    goto _256;
  }

_255:
  _223 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint8_t)_221)));
  goto _256;

_256:
#line 347 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ emitter_rx_vol_change(_221);
  _237__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _240;

_252:
#line 351 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 352 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 355 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 358 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _224 = *((&_210[((int32_t)8)]));
#line 359 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _225 = llvm_select_u32((((_224 == ((uint8_t)0))&1)), 0, (llvm_select_u32((((_224 == ((uint8_t)1))&1)), 1, 2)));
#line 355 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 381 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _226 = ((uint32_t*)((&_207->field5.field6)));
  _227 = ((__UNALIGNED_LOAD__(uint32_t, 1, _226))&16777215);
  if (((((((uint32_t)(uint32_t)((((((llvm_lshr_u24(_227, 8))&16777215)) & 7)&16777215)))) == _225)&1))) {
    _237__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _240;
  } else {
    goto _257;
  }

_257:
#line 382 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _228 = ((((((((((uint32_t)_225))&16777215)) << 8)&16777215)) | (((_227 & -1793)&16777215)))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _226) = ((_228) & 16777215);
#line 383 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _229 = user_interface;
  _230 = *((&_229->field0));
  if ((((_230 == ((l_fptr_4*)/*NULL*/0))&1))) {
    _232__PHI_TEMPORARY = _228;   /* for PHI node */
    goto _258;
  } else {
    goto _259;
  }

_259:
#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ _230(((&_207->field0.array[((int32_t)0)])), 16, _225);
  _231 = ((__UNALIGNED_LOAD__(uint32_t, 1, _226))&16777215);
  _232__PHI_TEMPORARY = _231;   /* for PHI node */
  goto _258;

_258:
  _232 = ((_232__PHI_TEMPORARY)&16777215);
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint32_t, 1, _226) = (((((llvm_select_u24((((_225 == 1u)&1)), (((_232 | 16384)&16777215)), (((_232 & -16385)&16777215))))&16777215))) & 16777215);
  _237__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _240;

_253:
#line 754 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _233 = more_avctp_cmd_support;
  if ((((_233 == ((uint8_t)0))&1))) {
    _237__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _240;
  } else {
    goto _260;
  }

_260:
#line 755 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _234 =  /*tail*/ avrcp_get_element_attributes(_207);
  _237__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _240;

_254:
#line 759 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _235 = more_avctp_cmd_support;
  if ((((_235 == ((uint8_t)0))&1))) {
    _237__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _240;
  } else {
    goto _261;
  }

_261:
#line 760 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _236 =  /*tail*/ set_remote_player_value(_207, _212, 1);
  _237__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _240;

_240:
  _237 = _237__PHI_TEMPORARY;
  return _237;
}


static uint8_t avrcp_list_player_attributes_rsp(struct l_struct_struct_OC_avctp* _262, uint8_t _263, uint8_t _264, uint8_t* _265, uint32_t _266) {
  struct l_array_12_uint8_t _267;    /* Address-exposed local */
  uint8_t _268;
  uint8_t _269;
  uint16_t _270;
  uint32_t _271;
  uint32_t _272;
  uint8_t* _273;
  uint8_t* _274;
  uint32_t _275;
  uint8_t* _276;
  uint32_t _277;

#line 546 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 606 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 607 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 608 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 612 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _268 = more_avctp_cmd_support;
#line 615 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 612 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_263 == ((uint8_t)10))&1)) | (((_268 == ((uint8_t)0))&1)))&1))) {
    goto _278;
  } else {
    goto _279;
  }

_279:
#line 619 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _269 = *((&_265[((int32_t)7)]));
#line 611 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 621 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _270 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_265[((int32_t)5)])))));
  _271 = ((uint32_t)(uint16_t)_270);
  _272 = ((uint32_t)(uint8_t)_269);
  if ((((((uint32_t)(((_271 << 8) & 65280) | (llvm_lshr_u32(_271, 8)))) < ((uint32_t)_272))&1))) {
    goto _278;
  } else {
    goto _280;
  }

_280:
#line 543 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 544 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 546 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _273 = (&_267.array[((int32_t)0)]);
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _274 = memset(_273, 0, 12);
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_267.array[((int32_t)1)])) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_267.array[((int32_t)2)])) = 88u;
#line 553 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_267.array[((int32_t)3)])) = 19;
#line 554 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_267.array[((int32_t)4)])) = 0;
#line 555 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _275 = llvm_add_u32(_272, 1);
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_267.array[((int32_t)5)]))))) = (((uint16_t)((_275 << 8) | (llvm_lshr_u32(_275, 8)))));
#line 556 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_267.array[((int32_t)7)])) = _269;
#line 548 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 544 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 558 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_269 == ((uint8_t)0))&1))) {
    goto _281;
  } else {
    goto _282;
  }

_282:
#line 626 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 559 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _276 = memcpy(((&_267.array[((int32_t)8)])), ((&_265[((int32_t)8)])), (llvm_add_u32((((uint32_t)(uint8_t)(llvm_add_u8(_269, -1)))), 1)));
  goto _281;

_281:
#line 562 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _277 = avctp_send_vendordep_req(_262, 1, 9, _273, 12);
  goto _278;

_278:
  return 0;
}


static uint8_t avrcp_player_value_rsp(struct l_struct_struct_OC_avctp* _283, uint8_t _284, uint8_t _285, uint8_t* _286, uint32_t _287) {
  uint8_t _288;
  uint8_t _289;
  uint8_t _290;
  uint8_t _290__PHI_TEMPORARY;

#line 415 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 416 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 417 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 421 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _288 = more_avctp_cmd_support;
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 421 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 428 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 421 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_284 == ((uint8_t)10))&1)) | ((((((_286 == ((uint8_t*)/*NULL*/0))&1)) | (((_288 == ((uint8_t)0))&1)))&1)))&1))) {
    _290__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _291;
  } else {
    goto _292;
  }

_292:
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _289 =  /*tail*/ set_remote_player_value(_283, (((struct l_struct_struct_OC_avrcp_header*)_286)), 0);
  _290__PHI_TEMPORARY = _289;   /* for PHI node */
  goto _291;

_291:
  _290 = _290__PHI_TEMPORARY;
  return _290;
}


static uint8_t avrcp_get_play_status_rsp(struct l_struct_struct_OC_avctp* _293, uint8_t _294, uint8_t _295, uint8_t* _296, uint32_t _297) {
  uint8_t _298;
  uint8_t _299;
  uint8_t _300;
  uint8_t _301;
  uint8_t _302;
  uint32_t _303;
  uint8_t _304;
  uint8_t _305;
  uint8_t _306;
  uint8_t _307;
  uint32_t _308;
  struct l_struct_struct_OC_user_interface_handler* _309;
  l_fptr_5* _310;
  uint8_t _311;
  struct l_struct_struct_OC_user_interface_handler* _312;
  l_fptr_5* _313;
  struct l_struct_struct_OC_user_interface_handler* _314;
  l_fptr_5* _315;
  uint32_t _316;
  uint8_t _317;
  uint32_t _318;
  uint8_t _319;
  uint32_t _320;
  uint32_t _321;

#line 504 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 505 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 506 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 510 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 513 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _298 = more_avctp_cmd_support;
#line 516 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 513 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 513 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_294 == ((uint8_t)10))&1)) | ((((((_296 == ((uint8_t*)/*NULL*/0))&1)) | (((_298 == ((uint8_t)0))&1)))&1)))&1))) {
    goto _322;
  } else {
    goto _323;
  }

_323:
#line 525 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _299 = *((&_296[((int32_t)10)]));
  _300 = *((&_296[((int32_t)9)]));
  _301 = *((&_296[((int32_t)8)]));
  _302 = *((&_296[((int32_t)7)]));
  _303 = ((((((uint32_t)(uint8_t)_300)) << 8) | (((uint32_t)(uint8_t)_299))) | ((((uint32_t)(uint8_t)_301)) << 16)) | ((((uint32_t)(uint8_t)_302)) << 24);
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 526 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _304 = *((&_296[((int32_t)14)]));
  _305 = *((&_296[((int32_t)13)]));
  _306 = *((&_296[((int32_t)12)]));
  _307 = *((&_296[((int32_t)11)]));
  _308 = ((((((uint32_t)(uint8_t)_305)) << 8) | (((uint32_t)(uint8_t)_304))) | ((((uint32_t)(uint8_t)_306)) << 16)) | ((((uint32_t)(uint8_t)_307)) << 24);
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 528 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _309 = user_interface;
  _310 = *((&_309->field8));
  if ((((_310 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _324;
  } else {
    goto _325;
  }

_325:
#line 529 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _311 =  /*tail*/ bt_music_total_time(_303);
#line 530 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _312 = user_interface;
  _313 = *((&_312->field8));
   /*tail*/ _313(0, _303, ((uint8_t*)/*NULL*/0), 0);
#line 531 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _314 = user_interface;
  _315 = *((&_314->field8));
   /*tail*/ _315(0, _308, ((uint8_t*)/*NULL*/0), 0);
  goto _322;

_324:
#line 533 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 534 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _316 = (llvm_udiv_u32(_303, 60000)) & 255;
#line 535 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _317 = l2cap_debug_enable;
  if ((((((int8_t)_317) < ((int8_t)((uint8_t)0)))&1))) {
    goto _326;
  } else {
    goto _322;
  }

_326:
#line 533 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 534 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 535 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _318 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), _316, ((llvm_add_u32((llvm_mul_u32(_316, -60)), (llvm_udiv_u32(_303, 1000)))) & 255));
#line 538 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _319 = l2cap_debug_enable;
#line 536 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 537 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _320 = (llvm_udiv_u32(_308, 60000)) & 255;
#line 538 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((((int8_t)_319) < ((int8_t)((uint8_t)0)))&1))) {
    goto _327;
  } else {
    goto _322;
  }

_327:
#line 536 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 537 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 538 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _321 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), _320, ((llvm_add_u32((llvm_mul_u32(_320, -60)), (llvm_udiv_u32(_308, 1000)))) & 255));
  goto _322;

_322:
  return 0;
}


static uint8_t avrcp_get_element_attributes_rsp(struct l_struct_struct_OC_avctp* _328, uint8_t _329, uint8_t _330, uint8_t* _331, uint32_t _332) {
  uint8_t _333;
  uint8_t _334;
  uint8_t _335;
  uint32_t _336;
  uint8_t _337;
  uint32_t _338;
  uint32_t _338__PHI_TEMPORARY;
  uint8_t _339;
  uint8_t _339__PHI_TEMPORARY;
  uint32_t _340;
  uint8_t _341;
  uint32_t _342;
  uint8_t _343;
  uint8_t _344;
  uint16_t _345;
  uint32_t _346;
  uint32_t _347;
  struct l_struct_struct_OC_user_interface_handler* _348;
  l_fptr_5* _349;
  uint32_t _350;
  uint32_t _351;
  uint8_t _352;

#line 442 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 443 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 444 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 453 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _333 = more_avctp_cmd_support;
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 453 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 453 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_329 == ((uint8_t)10))&1)) | ((((((_331 == ((uint8_t*)/*NULL*/0))&1)) | (((_333 == ((uint8_t)0))&1)))&1)))&1))) {
    goto _353;
  } else {
    goto _354;
  }

_354:
#line 466 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _334 = *((&_331[((int32_t)6)]));
  _335 = *((&_331[((int32_t)5)]));
  _336 = ((((uint32_t)(uint8_t)_335)) << 8) | (((uint32_t)(uint8_t)_334));
#line 467 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _337 = *((&_331[((int32_t)7)]));
#line 452 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 448 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  _338__PHI_TEMPORARY = 8;   /* for PHI node */
  _339__PHI_TEMPORARY = _337;   /* for PHI node */
  goto _355;

  do {     /* Syntactic loop '' to make GCC happy */
_355:
  _338 = _338__PHI_TEMPORARY;
  _339 = _339__PHI_TEMPORARY;
#line 452 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 470 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _340 = _338 & 65535;
  if ((((((uint32_t)_340) < ((uint32_t)_336))&1))) {
    goto _356;
  } else {
    goto _357;
  }

_356:
#line 471 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _341 = *((&_331[((int32_t)(llvm_add_u32(_340, 3)))]));
#line 474 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 475 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _342 = (llvm_add_u32(_338, 6)) & 65535;
  _343 = *((&_331[((int32_t)(llvm_add_u32(_342, 1)))]));
  _344 = *((&_331[((int32_t)_342)]));
  _345 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_344)), 8)), (((uint16_t)(uint8_t)_343)));
#line 451 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 476 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _346 = llvm_add_u32(_338, 8);
#line 480 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _347 = ((uint32_t)(uint16_t)_345);
  if ((((_345 == ((uint16_t)0))&1))) {
    goto _358;
  } else {
    goto _359;
  }

_359:
#line 481 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _348 = user_interface;
  _349 = *((&_348->field8));
  if ((((_349 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _358;
  } else {
    goto _360;
  }

_360:
#line 482 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
   /*tail*/ _349(_341, 0, ((&_331[((int32_t)(_346 & 65535))])), _345);
  goto _358;

_358:
#line 487 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _350 = _346 & 65535;
   /*tail*/ avrcp_element_attr_rsp_ext_process(_341, 0, ((&_331[((int32_t)_350)])), _345);
#line 488 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _351 = llvm_add_u32(_347, _350);
#line 489 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _352 = llvm_add_u8(_339, -1);
#line 452 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 490 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_352 == ((uint8_t)0))&1))) {
    goto _357;
  } else {
    _338__PHI_TEMPORARY = _351;   /* for PHI node */
    _339__PHI_TEMPORARY = _352;   /* for PHI node */
    goto _355;
  }

  } while (1); /* end of syntactic loop '' */
_357:
  goto _353;

_353:
  return 0;
}


static uint8_t set_remote_player_value(struct l_struct_struct_OC_avctp* _361, struct l_struct_struct_OC_avrcp_header* _362, uint8_t _363) {
  uint32_t _364;
  uint8_t _365;
  uint8_t _366;
  uint8_t* _367;
  uint16_t _368;
  uint32_t _369;
  uint32_t _370;
  uint32_t _370__PHI_TEMPORARY;
  uint8_t _371;
  uint8_t _371__PHI_TEMPORARY;
  uint8_t _372;
  uint8_t* _373;
  uint8_t* _374;
  uint8_t _375;
  uint8_t* _376;
  uint8_t _377;
  uint32_t _378;
  uint8_t* _379;
  uint8_t* _379__PHI_TEMPORARY;
  uint8_t _380;
  uint8_t _381;
  uint8_t _382;
  uint8_t _383;
  uint8_t _384;
  uint32_t _385;
  uint8_t _386;
  uint8_t _386__PHI_TEMPORARY;

#line 394 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
  ;
#line 398 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _364 = ((uint32_t)(uint8_t)_363);
  _365 = *((&_362->field4 + (((int32_t)_364))));
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 399 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _366 = *((&_362->field4));
  *((&_361->field5.field4)) = _366;
#line 400 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _367 = (&_361->field5.field5);
  *_367 = 0;
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _368 = __UNALIGNED_LOAD__(uint16_t, 1, ((&_362->field3)));
  if ((((((uint32_t)(((uint32_t)(uint16_t)_368))) < ((uint32_t)((((uint32_t)(uint8_t)_365)) << 1)))&1))) {
    _386__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _387;
  } else {
    goto _388;
  }

_388:
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_365 == ((uint8_t)0))&1))) {
    _386__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _387;
  } else {
    goto _389;
  }

_389:
  _369 = llvm_add_u32(_364, 1);
  _370__PHI_TEMPORARY = _369;   /* for PHI node */
  _371__PHI_TEMPORARY = _365;   /* for PHI node */
  goto _390;

  do {     /* Syntactic loop '' to make GCC happy */
_390:
  _370 = _370__PHI_TEMPORARY;
  _371 = _371__PHI_TEMPORARY;
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _372 = l2cap_debug_enable;
  _373 = (&_362->field4 + (((int32_t)_370)));
  if ((((((int8_t)_372) < ((int8_t)((uint8_t)0)))&1))) {
    goto _391;
  } else {
    goto _392;
  }

_392:
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _374 = (&_362->field4 + (((int32_t)(llvm_add_u32(_370, 1)))));
  _379__PHI_TEMPORARY = _374;   /* for PHI node */
  goto _393;

_391:
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _375 = *_373;
  _376 = (&_362->field4 + (((int32_t)(llvm_add_u32(_370, 1)))));
  _377 = *_376;
  _378 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint8_t)_375)), (((uint32_t)(uint8_t)_377)));
  _379__PHI_TEMPORARY = _376;   /* for PHI node */
  goto _393;

_393:
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _379 = _379__PHI_TEMPORARY;
#line 409 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _380 = *_373;
  _381 = *_367;
  *_367 = (((uint8_t)((((uint32_t)(uint8_t)_381)) | (1 << (((uint32_t)(uint8_t)_380))))));
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _382 = *_379;
  _383 = *_373;
  *((&_361->field5.field3.array[((int32_t)(((uint32_t)(uint8_t)_383)))])) = _382;
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _384 = llvm_add_u8(_371, -1);
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _385 = llvm_add_u32(_370, 2);
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_384 == ((uint8_t)0))&1))) {
    goto _394;
  } else {
    _370__PHI_TEMPORARY = _385;   /* for PHI node */
    _371__PHI_TEMPORARY = _384;   /* for PHI node */
    goto _390;
  }

  } while (1); /* end of syntactic loop '' */
_394:
  _386__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _387;

_387:
  _386 = _386__PHI_TEMPORARY;
  return _386;
}


static uint8_t avrcp_handle_get_capabilities(struct l_struct_struct_OC_avctp* _395, struct l_struct_struct_OC_avrcp_header* _396, uint8_t _397) {
  uint16_t* _398;
  uint16_t _399;
  uint32_t _400;
  uint8_t* _401;
  uint8_t* _402;
  uint8_t* _403;
  uint8_t _404;
  uint32_t _405;
  uint32_t _405__PHI_TEMPORARY;
  uint8_t _406;
  uint8_t _407;
  uint8_t _408;
  uint8_t _409;
  uint8_t _410;
  uint32_t _411;
  uint8_t _412;
  uint32_t _413;
  uint32_t _414;
  uint8_t _415;
  uint32_t _416;
  uint8_t* _417;
  uint8_t* _417__PHI_TEMPORARY;
  uint8_t _418;
  uint8_t _418__PHI_TEMPORARY;

#line 960 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 961 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 962 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 964 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _398 = (&_396->field3);
  _399 = __UNALIGNED_LOAD__(uint16_t, 1, _398);
  _400 = ((uint32_t)(uint16_t)_399);
#line 966 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_400 << 8) & 65280) | (llvm_lshr_u32(_400, 8))) == 1u)&1))) {
    goto _419;
  } else {
    goto _420;
  }

_420:
#line 995 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _401 = (&_396->field4);
  _417__PHI_TEMPORARY = _401;   /* for PHI node */
  goto _421;

_419:
#line 970 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _402 = (&_396->field4 + (((int32_t)1)));
  *_402 = 0;
#line 971 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _403 = (&_396->field4);
  _404 = *_403;
  switch (_404) {
  default:
    _417__PHI_TEMPORARY = _403;   /* for PHI node */
    goto _421;
  case ((uint8_t)2):
    goto _422;
  case ((uint8_t)3):
    goto _423;
  }

_423:
  _405__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _424;

_422:
#line 965 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 974 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_396->field4 + (((int32_t)2)))) = 0;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_396->field4 + (((int32_t)3)))) = 25;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_396->field4 + (((int32_t)4)))) = 88u;
#line 965 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 977 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, _398) = 1280;
#line 978 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_402 = 1;
  _418__PHI_TEMPORARY = 12;   /* for PHI node */
  goto _425;

  do {     /* Syntactic loop '' to make GCC happy */
_424:
  _405 = _405__PHI_TEMPORARY;
#line 982 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _406 = *((&_395->field5.field10.array[((int32_t)_405)].field0));
  if (((((llvm_and_u8(_406, 1)) == ((uint8_t)0))&1))) {
    goto _426;
  } else {
    goto _427;
  }

_427:
#line 983 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _407 = *_402;
  _408 = llvm_add_u8(_407, 1);
  *_402 = _408;
#line 984 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_396->field4 + (((int32_t)(llvm_add_u32((((uint32_t)(uint8_t)_408)), 1)))))) = (((uint8_t)_405));
#line 985 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _409 = l2cap_debug_enable;
  if ((((((int8_t)_409) < ((int8_t)((uint8_t)0)))&1))) {
    goto _428;
  } else {
    goto _426;
  }

_428:
  _410 = *_402;
  _411 = ((uint32_t)(uint8_t)_410);
  _412 = *((&_396->field4 + (((int32_t)(llvm_add_u32(_411, 1))))));
  _413 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), _411, (((uint32_t)(uint8_t)_412)));
  goto _426;

_426:
#line 981 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _414 = llvm_add_u32(_405, 1);
#line 965 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  ;
#line 981 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_414 == 14u)&1))) {
    goto _429;
  } else {
    _405__PHI_TEMPORARY = _414;   /* for PHI node */
    goto _424;
  }

  } while (1); /* end of syntactic loop '' */
_429:
#line 988 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _415 = *_402;
  _416 = llvm_add_u32((((uint32_t)(uint8_t)_415)), 2);
  __UNALIGNED_LOAD__(uint16_t, 1, _398) = (((uint16_t)((_416 << 8) | (llvm_lshr_u32(_416, 8)))));
  _418__PHI_TEMPORARY = 12;   /* for PHI node */
  goto _425;

_421:
#line 995 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _417 = _417__PHI_TEMPORARY;
#line 994 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, _398) = 256;
#line 995 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_417 = 1;
  _418__PHI_TEMPORARY = 10;   /* for PHI node */
  goto _425;

_425:
  _418 = _418__PHI_TEMPORARY;
  return _418;
}


static uint8_t avrcp_handle_register_notification(struct l_struct_struct_OC_avctp* _430, struct l_struct_struct_OC_avrcp_header* _431, uint8_t _432) {
  uint16_t* _433;
  uint16_t _434;
  uint32_t _435;
  uint32_t _436;
  uint8_t* _437;
  uint8_t _438;
  uint8_t _439;
  uint8_t* _440;
  uint8_t _441;
  uint8_t* _442;
  struct l_struct_struct_OC_user_interface_handler* _443;
  l_fptr_1* _444;
  uint32_t _445;
  uint8_t _446;
  uint8_t _447;
  uint32_t _448;
  uint8_t _449;
  uint8_t _450;
  uint8_t _450__PHI_TEMPORARY;
  uint32_t _451;
  uint32_t _451__PHI_TEMPORARY;
  uint8_t _452;
  uint8_t* _453;
  uint8_t _454;
  uint8_t _455;
  uint8_t* _456;
  uint8_t _457;
  uint16_t _458;
  uint8_t _459;
  uint8_t _459__PHI_TEMPORARY;

#line 876 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 877 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 878 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 880 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _433 = (&_431->field3);
  _434 = __UNALIGNED_LOAD__(uint16_t, 1, _433);
  _435 = ((uint32_t)(uint16_t)_434);
  _436 = (_435 << 8) | (llvm_lshr_u32(_435, 8));
#line 888 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _437 = (&_431->field4);
  if (((((_436 & 65535) == 5u)&1))) {
    goto _460;
  } else {
    goto _461;
  }

_460:
#line 893 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _438 = *_437;
  _439 = *((&_430->field5.field10.array[((int32_t)(((uint32_t)(uint8_t)_438)))].field0));
  if (((((llvm_and_u8(_439, 1)) == ((uint8_t)0))&1))) {
    goto _461;
  } else {
    goto _462;
  }

_462:
  switch (_438) {
  default:
    goto _461;
  case ((uint8_t)2):
    _451__PHI_TEMPORARY = _436;   /* for PHI node */
    goto _463;
  case ((uint8_t)3):
    _451__PHI_TEMPORARY = _436;   /* for PHI node */
    goto _463;
  case ((uint8_t)4):
    _451__PHI_TEMPORARY = _436;   /* for PHI node */
    goto _463;
  case ((uint8_t)8):
    goto _464;
  case ((uint8_t)13):
    goto _465;
  }

_464:
#line 911 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_431->field4 + (((int32_t)1)))) = 0;
#line 880 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
  _451__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _463;

_465:
#line 920 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _440 = (&_430->field5.field7);
  _441 = *_440;
  _442 = (&_431->field4 + (((int32_t)1)));
  *_442 = _441;
#line 921 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if ((((_441 == ((uint8_t)-1))&1))) {
    goto _466;
  } else {
    _450__PHI_TEMPORARY = _441;   /* for PHI node */
    goto _467;
  }

_466:
  _443 = user_interface;
  _444 = *((&_443->field6));
  if ((((_444 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _468;
  } else {
    goto _469;
  }

_469:
#line 922 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _445 =  /*tail*/ _444();
#line 924 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _446 = llvm_select_u8((((((uint32_t)(_445 & 255)) > ((uint32_t)120u))&1)), 96u, (((uint8_t)_445)));
#line 922 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_442 = _446;
#line 927 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_440 = _446;
#line 928 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _447 = l2cap_debug_enable;
  if ((((((int8_t)_447) < ((int8_t)((uint8_t)0)))&1))) {
    goto _470;
  } else {
    goto _468;
  }

_470:
  _448 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])), (((uint32_t)(uint8_t)_446)));
  goto _468;

_468:
#line 930 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _449 = *_442;
  _450__PHI_TEMPORARY = _449;   /* for PHI node */
  goto _467;

_467:
  _450 = _450__PHI_TEMPORARY;
  if ((((((int8_t)_450) < ((int8_t)((uint8_t)0)))&1))) {
    goto _471;
  } else {
    _451__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _463;
  }

_471:
#line 931 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_442 = 127u;
  _451__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _463;

_463:
  _451 = _451__PHI_TEMPORARY;
#line 942 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _452 = *_437;
  _453 = (&_430->field5.field10.array[((int32_t)(((uint32_t)(uint8_t)_452)))].field0);
  _454 = *_453;
  *_453 = (llvm_or_u8(_454, 2));
#line 943 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _455 = *_437;
  _456 = (&_430->field5.field10.array[((int32_t)(((uint32_t)(uint8_t)_455)))].field0);
  _457 = *_456;
  *_456 = (llvm_or_u8((llvm_and_u8(_457, 15)), (llvm_shl_u8(_432, 4))));
  _458 =  /*tail*/ llvm_OC_bswap_OC_i16((((uint16_t)_451)));
#line 944 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, _433) = _458;
  _459__PHI_TEMPORARY = 15;   /* for PHI node */
  goto _472;

_461:
#line 950 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, _433) = 256;
#line 951 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *_437 = 1;
  _459__PHI_TEMPORARY = 10;   /* for PHI node */
  goto _472;

_472:
  _459 = _459__PHI_TEMPORARY;
  return _459;
}


static uint8_t avrcp_handle_set_absolute_volume(struct l_struct_struct_OC_avctp* _473, struct l_struct_struct_OC_avrcp_header* _474, uint8_t _475) {
  uint16_t* _476;
  uint16_t _477;
  uint32_t _478;
  uint8_t _479;
  uint8_t _480;
  struct l_struct_struct_OC_user_interface_handler* _481;
  l_fptr_6* _482;
  uint32_t _483;
  uint8_t _484;
  uint32_t _485;
  struct l_struct_struct_OC_user_interface_handler* _486;
  l_fptr_6* _487;
  l_fptr_6* _488;
  l_fptr_6* _488__PHI_TEMPORARY;
  uint8_t _489;
  uint8_t _489__PHI_TEMPORARY;

#line 1001 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 1002 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 1003 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 1006 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _476 = (&_474->field3);
  _477 = __UNALIGNED_LOAD__(uint16_t, 1, _476);
  _478 = ((uint32_t)(uint16_t)_477);
#line 1009 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  if (((((((_478 << 8) & 65280) | (llvm_lshr_u32(_478, 8))) == 1u)&1))) {
    goto _490;
  } else {
    goto _491;
  }

_490:
#line 1013 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _479 = *((&_474->field4));
  _480 = llvm_and_u8(_479, 127u);
#line 1007 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  ;
#line 1016 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _481 = user_interface;
  _482 = *((&_481->field7));
  if ((((_482 == ((l_fptr_6*)/*NULL*/0))&1))) {
    _489__PHI_TEMPORARY = 9;   /* for PHI node */
    goto _492;
  } else {
    goto _493;
  }

_493:
#line 1019 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _483 = ((uint32_t)(uint8_t)_480);
#line 1025 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_473->field5.field7)) = _480;
#line 1028 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _484 = l2cap_debug_enable;
  if ((((((int8_t)_484) < ((int8_t)((uint8_t)0)))&1))) {
    goto _494;
  } else {
    _488__PHI_TEMPORARY = _482;   /* for PHI node */
    goto _495;
  }

_494:
  _485 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), _483);
  _486 = user_interface;
  _487 = *((&_486->field7));
  _488__PHI_TEMPORARY = _487;   /* for PHI node */
  goto _495;

_495:
#line 1038 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  _488 = _488__PHI_TEMPORARY;
   /*tail*/ _488(_483);
  _489__PHI_TEMPORARY = 9;   /* for PHI node */
  goto _492;

_491:
#line 1045 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  __UNALIGNED_LOAD__(uint16_t, 1, _476) = 256;
#line 1046 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
  *((&_474->field4)) = 1;
  _489__PHI_TEMPORARY = 10;   /* for PHI node */
  goto _492;

_492:
  _489 = _489__PHI_TEMPORARY;
  return _489;
}

