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



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_rfcomm_stack_t;
struct l_struct_struct_OC_multiplexer_core_data_t;
struct l_struct_struct_OC_rfcomm_multiplexer_t;
struct l_struct_struct_OC_rfcomm_rpn_data;
struct l_struct_struct_OC_rfc_channel_core_data_t;
struct l_struct_struct_OC_rfcomm_service_t;
struct l_struct_struct_OC_rfcomm_channel_t;
struct l_struct_struct_OC_rfcomm_channel_event;
struct l_struct_struct_OC_rfcomm_channel_event_pn;
struct l_struct_struct_OC_rfcomm_channel_event_rpn;

/* Function definitions */
typedef void l_fptr_3(void);

typedef void l_fptr_2(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_1(void);

typedef void l_fptr_4(uint8_t*, uint8_t, uint16_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_rfcomm_stack_t {
  l_fptr_4* field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
  struct l_struct_struct_OC_btstack_linked_item* field3;
  uint16_t field4;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_116_uint8_t {
  uint8_t array[116];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_52_uint8_t {
  uint8_t array[52];
};
struct l_array_55_uint8_t {
  uint8_t array[55];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_51_uint8_t {
  uint8_t array[51];
};
struct l_array_72_uint8_t {
  uint8_t array[72];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_multiplexer_core_data_t {
  struct l_array_6_uint8_t field0;
  uint16_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint16_t field6;
};
struct l_struct_struct_OC_rfcomm_multiplexer_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  struct l_struct_struct_OC_multiplexer_core_data_t field2;
};
struct l_struct_struct_OC_rfcomm_rpn_data {
  uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
};
struct l_struct_struct_OC_rfc_channel_core_data_t {
  uint8_t field0;
  struct l_array_6_uint8_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  uint8_t field9;
  uint8_t field10;
  uint8_t field11;
  uint16_t field12;
  struct l_struct_struct_OC_rfcomm_rpn_data field13;
};
struct l_struct_struct_OC_rfcomm_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint16_t field4;
  uint8_t* field5;
  l_fptr_2* field6;
};
struct l_struct_struct_OC_rfcomm_channel_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* field1;
  struct l_struct_struct_OC_rfc_channel_core_data_t field2;
  uint16_t field3;
  struct l_struct_struct_OC_rfcomm_service_t* field4;
  l_fptr_2* field5;
  uint8_t* field6;
};
struct l_struct_struct_OC_rfcomm_channel_event {
  uint32_t field0;
};
struct l_struct_struct_OC_rfcomm_channel_event_pn {
  struct l_struct_struct_OC_rfcomm_channel_event field0;
  uint16_t field1;
  uint8_t field2;
  uint8_t field3;
};
struct l_struct_struct_OC_rfcomm_channel_event_rpn {
  struct l_struct_struct_OC_rfcomm_channel_event field0;
  struct l_struct_struct_OC_rfcomm_rpn_data field1;
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_1_uint8_t {
  uint8_t array[1];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};

/* External Global Variable Declarations */
extern uint32_t config_asser;
extern uint8_t rfcomm_debug_enable;

/* Function Declarations */
void rfcomm_change_credits_setting(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_rfcomm_channel_t* rfcomm_channel_for_rfcomm_cid(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void rfcomm_init(struct l_struct_struct_OC_rfcomm_stack_t*) __ATTRIBUTELIST__((always_inline, nothrow)) __HIDDEN__;
static void app_rfcomm_packet_handler(uint8_t*, uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, const));
void rfcomm_release(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t rfcomm_send_cretits_by_profile(uint16_t, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t stack_handout_credit(int, ...);
uint32_t rfcomm_send_internal(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_create_channel2(uint8_t*, l_fptr_2*, struct l_array_6_uint8_t*, uint8_t, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_rfcomm_multiplexer_t* rfcomm_multiplexer_for_addr(struct l_array_6_uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static struct l_struct_struct_OC_rfcomm_multiplexer_t* rfcomm_multiplexer_create_for_addr(struct l_array_6_uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
static struct l_struct_struct_OC_rfcomm_channel_t* rfcomm_channel_create(struct l_struct_struct_OC_rfcomm_multiplexer_t*, struct l_struct_struct_OC_rfcomm_service_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_2*, uint8_t*, uint16_t, uint16_t);
static void rfcomm_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint16_t l2cap_max_mtu(void);
static void rfcomm_run(void) __ATTRIBUTELIST__((nothrow));
void rfcomm_create_channel_internal(uint8_t*, l_fptr_2*, struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_disconnect_internal(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_register_service2(uint8_t*, l_fptr_2*, uint8_t, uint16_t, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_rfcomm_service_get(void);
uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item**);
void l2cap_register_service_internal(uint8_t*, l_fptr_2*, uint16_t, uint16_t);
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void rfcomm_register_service_internal(uint8_t*, l_fptr_2*, uint8_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_accept_connection_internal(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t is_rfcomm_other_conn(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void l2cap_disconnect_rfcomm(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_get_local_cid_via_psm(uint16_t);
void l2cap_disconnect_internal(uint16_t, uint8_t);
void BQB_send_rfcomm_disc(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void BQB_close_rfcomm_session(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void rfcomm_send_disc(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
void l2cap_send_rfcomm_data(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t);
uint32_t rfc_channel_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hfp_check_conn_for_rfcomm_id(uint16_t);
uint8_t spp_check_conn_for_rfcomm_id(uint16_t);
uint8_t iap_check_conn_for_rfcomm_id(uint16_t);
void rfc_channel_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint32_t rfc_multiplexer_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfc_multiplexer_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t rfcomm_send_packet_for_multiplexer(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t, uint8_t, uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t l2cap_can_send_packet_now(uint16_t);
uint8_t* hci_get_outgoing_acl_packet_buffer(uint16_t);
uint8_t crc8_calc(uint8_t*, uint16_t);
uint32_t l2cap_send_prepared(uint8_t*, uint16_t, uint16_t, uint8_t);
uint8_t* btstack_memory_rfcomm_multiplexer_get(void);
void p33_soft_reset(void);
uint8_t* btstack_memory_rfcomm_channel_get(void);
void bt_flip_addr(uint8_t*, uint8_t*);
void l2cap_decline_connection_internal(uint16_t, uint8_t);
void l2cap_accept_connection_internal(uint16_t);
static void rfcomm_emit_channel_opened(struct l_struct_struct_OC_rfcomm_channel_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
void btstack_memory_rfcomm_channel_free(uint8_t*);
static void rfcomm_multiplexer_free(struct l_struct_struct_OC_rfcomm_multiplexer_t*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_hand_out_credits(void) __ATTRIBUTELIST__((nothrow));
static void rfcomm_multiplexer_finalize(struct l_struct_struct_OC_rfcomm_multiplexer_t*) __ATTRIBUTELIST__((nothrow));
void bt_store_16(uint8_t*, uint16_t, uint16_t);
static void rfcomm_channel_dispatch(struct l_struct_struct_OC_rfcomm_channel_t*, uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void btstack_memory_rfcomm_multiplexer_free(uint8_t*);
static void rfcomm_emit_channel_closed(struct l_struct_struct_OC_rfcomm_channel_t*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_multiplexer_opened(struct l_struct_struct_OC_rfcomm_multiplexer_t*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_channel_state_machine(struct l_struct_struct_OC_rfcomm_channel_t*, struct l_struct_struct_OC_rfcomm_channel_event*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_channel_finalize(struct l_struct_struct_OC_rfcomm_channel_t*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_emit_connection_request(struct l_struct_struct_OC_rfcomm_channel_t*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_channel_accept_pn(struct l_struct_struct_OC_rfcomm_channel_t*, struct l_struct_struct_OC_rfcomm_channel_event_pn*) __ATTRIBUTELIST__((nothrow));
static void rfcomm_send_ua(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void rfcomm_send_uih_msc_rsp(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void rfcomm_channel_send_credits(struct l_struct_struct_OC_rfcomm_channel_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void rfcomm_send_dm_pf(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static struct l_struct_struct_OC_rfcomm_channel_t* rfcomm_channel_for_multiplexer_and_dlci(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t) __ATTRIBUTELIST__((nothrow, pure));
static void rfcomm_channel_state_machine_2(struct l_struct_struct_OC_rfcomm_multiplexer_t*, uint8_t, struct l_struct_struct_OC_rfcomm_channel_event*) __ATTRIBUTELIST__((nothrow));
void btstack_memory_rfcomm_service_free(uint8_t*);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static uint16_t rfcomm_init_credits = 48;
static uint8_t rfcomm_credits_base = 5;
static struct l_struct_struct_OC_rfcomm_stack_t* rfcomm_stack;
static struct l_array_17_uint8_t _OC_str = { "file:%s, line:%d" };
static struct l_array_116_uint8_t _OC_str_OC_1 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/rfcomm.c" };
static struct l_array_27_uint8_t _OC_str_OC_2 = { "ASSERT-FAILD: multiplexer " };
static struct l_array_23_uint8_t _OC_str_OC_3 = { "ASSERT-FAILD: channel " };
static struct l_array_5_uint8_t _OC_str_OC_7 = { "1234" };
static struct l_array_52_uint8_t _OC_str_OC_8 = { "[RFC-info] :rfcomm L2CAP_EVENT_CHANNEL_CLOSED  %u\n\n" };
static struct l_array_55_uint8_t _OC_str_OC_12 = { "<RFC-error> : rfcomm_service_for_channel get error %u\n" };
static struct l_array_37_uint8_t _OC_str_OC_15 = { "[RFC-info] :rfc channel size %d,%d\n\n" };
static struct l_array_47_uint8_t str = { "[RFC-info] :-----rfcomm_register_service  2222" };
static struct l_array_48_uint8_t str_OC_17 = { "[RFC-info] :-----rfcomm_register_service  11111" };
static struct l_array_41_uint8_t str_OC_18 = { "[RFC-info] :-----rfcomm_register_service" };
static struct l_array_38_uint8_t str_OC_19 = { "<RFC-error> :\n -------rfc create err\n" };
static struct l_array_35_uint8_t str_OC_20 = { "[RFC-info] :\nrfc hfp conn open!!!\n" };
static struct l_array_51_uint8_t str_OC_21 = { "<RFC-error> : rfcomm_channel_for_channel get error" };
static struct l_array_72_uint8_t str_OC_22 = { "<RFC-error> :rfcomm MONITOR_CHANNEL_CREATE but no multiplexer prepared\n" };
static struct l_array_35_uint8_t str_OC_23 = { "[RFC-info] :rfcomm channel create\n" };
static struct l_array_40_uint8_t str_OC_24 = { "[RFC-info] :Multiplexer up and running\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint16_t llvm_select_u16(bool condition, uint16_t iftrue, uint16_t ifnot) {
  uint16_t r;
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
static __forceinline uint8_t llvm_sub_u8(uint8_t a, uint8_t b) {
  uint8_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
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
static __forceinline uint16_t llvm_lshr_u16(uint16_t a, uint16_t b) {
  uint16_t r = a >> b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
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
static __forceinline uint8_t llvm_xor_u8(uint8_t a, uint8_t b) {
  uint8_t r = a ^ b;
  return r;
}


/* Function Bodies */

void rfcomm_change_credits_setting(uint16_t _1, uint8_t _2) {
  rfcomm_init_credits = _1;
  rfcomm_credits_base = _2;
}


struct l_struct_struct_OC_rfcomm_channel_t* rfcomm_channel_for_rfcomm_cid(uint16_t _3) {
  struct l_struct_struct_OC_rfcomm_stack_t* _4;
  struct l_struct_struct_OC_btstack_linked_item* _5;
  struct l_struct_struct_OC_btstack_linked_item* _6;
  struct l_struct_struct_OC_btstack_linked_item* _7;
  struct l_struct_struct_OC_btstack_linked_item* _7__PHI_TEMPORARY;
  uint16_t _8;
  struct l_struct_struct_OC_rfcomm_channel_t* _9;
  struct l_struct_struct_OC_rfcomm_channel_t* _10;
  struct l_struct_struct_OC_rfcomm_channel_t* _10__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_channel_t* _11;
  struct l_struct_struct_OC_rfcomm_channel_t* _11__PHI_TEMPORARY;

  _4 = rfcomm_stack;
  _5 = *((&_4->field2));
  if ((((_5 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _11__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _12;
  } else {
    goto _13;
  }

_13:
  _7__PHI_TEMPORARY = _5;   /* for PHI node */
  goto _14;

  do {     /* Syntactic loop '' to make GCC happy */
_14:
  _7 = _7__PHI_TEMPORARY;
  _8 = *(((uint16_t*)((&_7[((int32_t)4)]))));
  _9 = ((struct l_struct_struct_OC_rfcomm_channel_t*)_7);
  if ((((_8 == _3)&1))) {
    _10__PHI_TEMPORARY = _9;   /* for PHI node */
    goto _15;
  } else {
    goto _16;
  }

_16:
  _6 = *((&_7->field0));
  if ((((_6 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _10__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _15;
  } else {
    _7__PHI_TEMPORARY = _6;   /* for PHI node */
    goto _14;
  }

  } while (1); /* end of syntactic loop '' */
_15:
  _10 = _10__PHI_TEMPORARY;
  _11__PHI_TEMPORARY = _10;   /* for PHI node */
  goto _12;

_12:
  _11 = _11__PHI_TEMPORARY;
  return _11;
}


void rfcomm_init(struct l_struct_struct_OC_rfcomm_stack_t* _17) {
  uint8_t* _18;

  rfcomm_stack = _17;
  _18 = memset((((uint8_t*)((&_17->field1)))), 0, 14);
  *((&_17->field0)) = app_rfcomm_packet_handler;
}


static void app_rfcomm_packet_handler(uint8_t* _19, uint8_t _20, uint16_t _21, uint8_t* _22, uint16_t _23) {
  return;
}


void rfcomm_release(void) {
  return;
}


uint32_t rfcomm_send_cretits_by_profile(uint16_t _24, uint16_t _25, uint8_t _26) {
  struct l_struct_struct_OC_rfcomm_stack_t* _27;
  struct l_struct_struct_OC_btstack_linked_item* _28;
  struct l_struct_struct_OC_btstack_linked_item* _29;
  struct l_struct_struct_OC_btstack_linked_item* _30;
  struct l_struct_struct_OC_btstack_linked_item* _30__PHI_TEMPORARY;
  uint16_t _31;
  uint32_t _32;
  uint32_t _33;
  uint32_t _33__PHI_TEMPORARY;

  _27 = rfcomm_stack;
  _28 = *((&_27->field2));
  if ((((_28 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _33__PHI_TEMPORARY = 115;   /* for PHI node */
    goto _34;
  } else {
    goto _35;
  }

_35:
  _30__PHI_TEMPORARY = _28;   /* for PHI node */
  goto _36;

  do {     /* Syntactic loop '' to make GCC happy */
_36:
  _30 = _30__PHI_TEMPORARY;
  _31 = *(((uint16_t*)((&_30[((int32_t)4)]))));
  if ((((_31 == _24)&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
  _29 = *((&_30->field0));
  if ((((_29 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _39;
  } else {
    _30__PHI_TEMPORARY = _29;   /* for PHI node */
    goto _36;
  }

  } while (1); /* end of syntactic loop '' */
_37:
  *(((uint8_t*)((&_30[((int32_t)6)])))) = (((uint8_t)(bool)(((_26 == ((uint8_t)0))&1))));
  *((&(((struct l_struct_struct_OC_rfcomm_channel_t*)_30))->field2.field7)) = (((uint8_t)_25));
  _32 =  /*tail*/ ((l_fptr_1*)(void*)stack_handout_credit)();
  _33__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _34;

_39:
  _33__PHI_TEMPORARY = 115;   /* for PHI node */
  goto _34;

_34:
  _33 = _33__PHI_TEMPORARY;
  return _33;
}


uint32_t rfcomm_send_internal(uint16_t _40, uint8_t* _41, uint16_t _42) {
  struct l_struct_struct_OC_rfcomm_stack_t* _43;
  struct l_struct_struct_OC_btstack_linked_item* _44;
  struct l_struct_struct_OC_btstack_linked_item* _45;
  struct l_struct_struct_OC_btstack_linked_item* _46;
  struct l_struct_struct_OC_btstack_linked_item* _46__PHI_TEMPORARY;
  uint16_t _47;
  struct l_struct_struct_OC_rfcomm_channel_t* _48;
  uint8_t* _49;
  uint8_t _50;
  uint8_t* _51;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _52;
  uint8_t _53;
  uint8_t _54;
  uint32_t _55;
  uint8_t _56;
  uint8_t _57;
  uint32_t _58;
  uint32_t _58__PHI_TEMPORARY;

  _43 = rfcomm_stack;
  _44 = *((&_43->field2));
  if ((((_44 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _58__PHI_TEMPORARY = 115;   /* for PHI node */
    goto _59;
  } else {
    goto _60;
  }

_60:
  _46__PHI_TEMPORARY = _44;   /* for PHI node */
  goto _61;

  do {     /* Syntactic loop '' to make GCC happy */
_61:
  _46 = _46__PHI_TEMPORARY;
  _47 = *(((uint16_t*)((&_46[((int32_t)4)]))));
  if ((((_47 == _40)&1))) {
    goto _62;
  } else {
    goto _63;
  }

_63:
  _45 = *((&_46->field0));
  if ((((_45 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _64;
  } else {
    _46__PHI_TEMPORARY = _45;   /* for PHI node */
    goto _61;
  }

  } while (1); /* end of syntactic loop '' */
_62:
  _48 = ((struct l_struct_struct_OC_rfcomm_channel_t*)_46);
  _49 = (&_48->field2.field6);
  _50 = *_49;
  if ((((_50 == ((uint8_t)0))&1))) {
    _58__PHI_TEMPORARY = 114;   /* for PHI node */
    goto _59;
  } else {
    goto _65;
  }

_65:
  _51 = ((uint8_t*)((&_46[((int32_t)5)])));
  *_49 = (llvm_add_u8(_50, -1));
  *_51 = 15;
  _52 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_46[((int32_t)1)]))));
  _53 = *((&_48->field2.field4));
  _54 = *((&_52->field2.field3));
  _55 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_52, (llvm_or_u8((llvm_or_u8((llvm_shl_u8(_53, 2)), (llvm_shl_u8(_54, 1)))), 1)), -17, 0, _41, _42);
  if ((((_55 == 0u)&1))) {
    _58__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _59;
  } else {
    goto _66;
  }

_66:
  _56 = *_49;
  *_49 = (llvm_add_u8(_56, 1));
  _57 = *_51;
  *_51 = (llvm_add_u8(_57, 1));
  _58__PHI_TEMPORARY = _55;   /* for PHI node */
  goto _59;

_64:
  _58__PHI_TEMPORARY = 115;   /* for PHI node */
  goto _59;

_59:
  _58 = _58__PHI_TEMPORARY;
  return _58;
}


void rfcomm_create_channel2(uint8_t* _67, l_fptr_2* _68, struct l_array_6_uint8_t* _69, uint8_t _70, uint8_t _71, uint8_t _72) {
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _73;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _74;
  uint32_t _75;
  uint32_t _76;
  uint32_t _77;
  uint8_t* _78;
  uint8_t _79;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _80;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _80__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_channel_t* _81;
  uint32_t _82;
  uint32_t _83;
  uint32_t _84;
  uint8_t* _85;
  uint8_t _86;
  uint8_t* _87;
  uint8_t _88;
  uint16_t _89;
  uint8_t _90;

  _73 =  /*tail*/ rfcomm_multiplexer_for_addr(_69);
  if ((((_73 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _91;
  } else {
    _80__PHI_TEMPORARY = _73;   /* for PHI node */
    goto _92;
  }

_91:
  _74 =  /*tail*/ rfcomm_multiplexer_create_for_addr(_69);
  if ((((_74 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _93;
  } else {
    goto _94;
  }

_93:
  _75 = config_asser;
  if ((((_75 == 0u)&1))) {
    goto _95;
  } else {
    goto _96;
  }

_96:
  _76 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 2046);
  _77 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _97;

_95:
   /*tail*/ cpu_reset();
  goto _97;

_94:
  *((&_74->field2.field3)) = 1;
  _78 = (&_74->field2.field2);
  _79 = *_78;
  *_78 = (llvm_or_u8((llvm_and_u8(_79, -16)), 2));
  _80__PHI_TEMPORARY = _74;   /* for PHI node */
  goto _92;

_92:
  _80 = _80__PHI_TEMPORARY;
  _81 =  /*tail*/ rfcomm_channel_create(_80, ((struct l_struct_struct_OC_rfcomm_service_t*)/*NULL*/0), _70);
  if ((((_81 == ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0))&1))) {
    goto _98;
  } else {
    goto _99;
  }

_98:
  _82 = config_asser;
  if ((((_82 == 0u)&1))) {
    goto _100;
  } else {
    goto _101;
  }

_101:
  _83 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 2056);
  _84 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _97;

_100:
   /*tail*/ cpu_reset();
  goto _97;

_99:
  *((&_81->field6)) = _67;
  *((&_81->field2.field9)) = _71;
  *((&_81->field2.field7)) = _72;
  *((&_81->field5)) = _68;
  _85 = (&_80->field2.field2);
  _86 = *_85;
  _87 = (&_81->field2.field10);
  if (((((llvm_and_u8(_86, 15)) == ((uint8_t)7))&1))) {
    goto _102;
  } else {
    goto _103;
  }

_103:
  *_87 = 2;
  _88 = *_85;
  if (((((llvm_and_u8(_88, 15)) == ((uint8_t)2))&1))) {
    goto _104;
  } else {
    goto _97;
  }

_104:
  _89 =  /*tail*/ l2cap_max_mtu();
  _90 =  /*tail*/ l2cap_create_channel_internal(_67, rfcomm_packet_handler, ((&(*_69).array[((int32_t)0)])), 3, _89);
  goto _97;

_102:
  *_87 = 3;
   /*tail*/ rfcomm_run();
  goto _97;

_97:
  return;
}


static struct l_struct_struct_OC_rfcomm_multiplexer_t* rfcomm_multiplexer_for_addr(struct l_array_6_uint8_t* _105) {
  struct l_struct_struct_OC_rfcomm_stack_t* _106;
  struct l_struct_struct_OC_btstack_linked_item* _107;
  uint8_t* _108;
  struct l_struct_struct_OC_btstack_linked_item* _109;
  struct l_struct_struct_OC_btstack_linked_item* _110;
  struct l_struct_struct_OC_btstack_linked_item* _110__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _111;
  uint32_t _112;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _113;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _113__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _114;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _114__PHI_TEMPORARY;

  _106 = rfcomm_stack;
  _107 = *((&_106->field1));
  if ((((_107 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _114__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0);   /* for PHI node */
    goto _115;
  } else {
    goto _116;
  }

_116:
  _108 = (&(*_105).array[((int32_t)0)]);
  _110__PHI_TEMPORARY = _107;   /* for PHI node */
  goto _117;

  do {     /* Syntactic loop '' to make GCC happy */
_117:
  _110 = _110__PHI_TEMPORARY;
  _111 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_110);
  _112 =  /*tail*/ memcmp(_108, ((&_111->field2.field0.array[((int32_t)0)])), 6);
  if ((((_112 == 0u)&1))) {
    _113__PHI_TEMPORARY = _111;   /* for PHI node */
    goto _118;
  } else {
    goto _119;
  }

_119:
  _109 = *((&_110->field0));
  if ((((_109 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _113__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0);   /* for PHI node */
    goto _118;
  } else {
    _110__PHI_TEMPORARY = _109;   /* for PHI node */
    goto _117;
  }

  } while (1); /* end of syntactic loop '' */
_118:
  _113 = _113__PHI_TEMPORARY;
  _114__PHI_TEMPORARY = _113;   /* for PHI node */
  goto _115;

_115:
  _114 = _114__PHI_TEMPORARY;
  return _114;
}


static struct l_struct_struct_OC_rfcomm_multiplexer_t* rfcomm_multiplexer_create_for_addr(struct l_array_6_uint8_t* _120) {
  uint8_t* _121;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _122;
  uint8_t* _123;
  uint16_t _124;
  uint16_t _125;
  uint8_t* _126;
  struct l_struct_struct_OC_rfcomm_stack_t* _127;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _128;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _128__PHI_TEMPORARY;

  _121 =  /*tail*/ btstack_memory_rfcomm_multiplexer_get();
  if ((((_121 == ((uint8_t*)/*NULL*/0))&1))) {
    _128__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0);   /* for PHI node */
    goto _129;
  } else {
    goto _130;
  }

_130:
  _122 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_121);
  _123 = memset(_121, 0, 20);
  *((&_121[((int32_t)14)])) = 1;
  *((&_121[((int32_t)17)])) = 0;
  _124 =  /*tail*/ l2cap_max_mtu();
  _125 = llvm_add_u16(_124, -5);
  *(((uint16_t*)((&_121[((int32_t)4)])))) = (llvm_select_u16((((((uint16_t)_125) > ((uint16_t)((uint16_t)127)))&1)), (llvm_add_u16(_124, -6)), _125));
  _126 = memcpy(((&_121[((int32_t)6)])), ((&(*_120).array[((int32_t)0)])), 6);
  _127 = rfcomm_stack;
   /*tail*/ btstack_linked_list_add(((&_127->field1)), (((struct l_struct_struct_OC_btstack_linked_item*)_121)));
  _128__PHI_TEMPORARY = _122;   /* for PHI node */
  goto _129;

_129:
  _128 = _128__PHI_TEMPORARY;
  return _128;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


static struct l_struct_struct_OC_rfcomm_channel_t* rfcomm_channel_create(struct l_struct_struct_OC_rfcomm_multiplexer_t* _131, struct l_struct_struct_OC_rfcomm_service_t* _132, uint8_t _133) {
  uint8_t* _134;
  struct l_struct_struct_OC_rfcomm_channel_t* _135;
  struct l_struct_struct_OC_rfcomm_stack_t* _136;
  uint16_t* _137;
  uint16_t _138;
  uint8_t* _139;
  uint16_t _140;
  uint16_t _141;
  uint16_t* _142;
  uint16_t _143;
  uint8_t* _144;
  uint8_t* _145;
  uint32_t _146;
  uint8_t _147;
  uint16_t _148;
  uint8_t _149;
  uint8_t _150;
  uint8_t _151;
  struct l_struct_struct_OC_rfcomm_channel_t* _152;
  struct l_struct_struct_OC_rfcomm_channel_t* _152__PHI_TEMPORARY;

  _134 =  /*tail*/ btstack_memory_rfcomm_channel_get();
  _135 = ((struct l_struct_struct_OC_rfcomm_channel_t*)_134);
  if ((((_134 == ((uint8_t*)/*NULL*/0))&1))) {
    _152__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _153;
  } else {
    goto _154;
  }

_154:
  _136 = rfcomm_stack;
  _137 = (&_136->field4);
  _138 = *_137;
  if ((((_138 == ((uint16_t)0))&1))) {
    goto _155;
  } else {
    goto _156;
  }

_155:
  *_137 = 1;
  goto _156;

_156:
  _139 = memset(_134, 0, 52);
  *((&_134[((int32_t)25)])) = 1;
  *(((uint16_t*)((&_134[((int32_t)28)])))) = 0;
  *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_134[((int32_t)4)])))) = _131;
  *(((struct l_struct_struct_OC_rfcomm_service_t**)((&_134[((int32_t)40)])))) = _132;
  _140 = *_137;
  *_137 = (llvm_add_u16(_140, 1));
  *(((uint16_t*)((&_134[((int32_t)16)])))) = _140;
  _141 = *((&_131->field1));
  _142 = ((uint16_t*)((&_134[((int32_t)38)])));
  *_142 = _141;
  *((&_134[((int32_t)23)])) = 0;
  *((&_134[((int32_t)21)])) = 0;
  *((&_134[((int32_t)20)])) = 0;
  _143 = rfcomm_init_credits;
  _144 = (&_134[((int32_t)22)]);
  *_144 = (((uint8_t)_143));
  _145 = (&_134[((int32_t)24)]);
  *_145 = 0;
  if ((((_132 == ((struct l_struct_struct_OC_rfcomm_service_t*)/*NULL*/0))&1))) {
    goto _157;
  } else {
    goto _158;
  }

_158:
  _146 = *(((uint32_t*)((&_132->field6))));
  *(((uint32_t*)((&_134[((int32_t)44)])))) = _146;
  *((&_134[((int32_t)18)])) = 0;
  _147 = *((&_131->field2.field3));
  *((&_134[((int32_t)19)])) = (llvm_or_u8(_147, (llvm_shl_u8(_133, 1))));
  _148 = *((&_132->field4));
  if ((((((uint16_t)_141) > ((uint16_t)_148))&1))) {
    goto _159;
  } else {
    goto _160;
  }

_159:
  *_142 = _148;
  goto _160;

_160:
  _149 = *((&_132->field2));
  *_145 = _149;
  _150 = *((&_132->field3));
  *_144 = _150;
  goto _161;

_157:
  *((&_134[((int32_t)18)])) = 1;
  _151 = *((&_131->field2.field3));
  *((&_134[((int32_t)19)])) = (llvm_xor_u8((llvm_or_u8(_151, (llvm_shl_u8(_133, 1)))), 1));
  goto _161;

_161:
   /*tail*/ btstack_linked_list_add(((&_136->field2)), (((struct l_struct_struct_OC_btstack_linked_item*)_134)));
  _152__PHI_TEMPORARY = _135;   /* for PHI node */
  goto _153;

_153:
  _152 = _152__PHI_TEMPORARY;
  return _152;
}


static void rfcomm_packet_handler(uint8_t _162, uint16_t _163, uint8_t* _164, uint16_t _165) {
  struct l_struct_struct_OC_rfcomm_channel_event _166;    /* Address-exposed local */
  struct l_struct_struct_OC_rfcomm_channel_event_pn _167;    /* Address-exposed local */
  struct l_struct_struct_OC_rfcomm_channel_event_rpn _168;    /* Address-exposed local */
  struct l_struct_struct_OC_rfcomm_channel_event _169;    /* Address-exposed local */
  struct l_array_6_uint8_t _170;    /* Address-exposed local */
  uint8_t* _171;
  uint8_t _172;
  uint8_t _173;
  uint8_t _174;
  uint16_t _175;
  uint8_t _176;
  uint8_t _177;
  uint8_t _178;
  uint8_t _179;
  uint16_t _180;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _181;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _182;
  uint8_t* _183;
  uint8_t _184;
  uint8_t _185;
  uint8_t _186;
  uint8_t _187;
  uint8_t _188;
  uint8_t _189;
  uint16_t _190;
  uint8_t _191;
  uint8_t _192;
  uint16_t _193;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _194;
  struct l_struct_struct_OC_rfcomm_stack_t* _195;
  struct l_struct_struct_OC_btstack_linked_item** _196;
  struct l_struct_struct_OC_btstack_linked_item* _197;
  struct l_struct_struct_OC_btstack_linked_item* _198;
  struct l_struct_struct_OC_btstack_linked_item** _199;
  struct l_struct_struct_OC_btstack_linked_item* _200;
  struct l_struct_struct_OC_btstack_linked_item* _201;
  struct l_struct_struct_OC_btstack_linked_item* _201__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _202;
  struct l_struct_struct_OC_btstack_linked_item** _202__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _203;
  struct l_struct_struct_OC_btstack_linked_item* _203__PHI_TEMPORARY;
  uint32_t** _204;
  uint32_t* _205;
  struct l_struct_struct_OC_btstack_linked_item* _206;
  struct l_struct_struct_OC_btstack_linked_item* _206__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _207;
  uint32_t* _208;
  uint32_t _209;
  struct l_struct_struct_OC_btstack_linked_item* _210;
  uint8_t* _211;
  uint8_t _212;
  uint32_t _213;
  uint8_t _214;
  uint8_t _215;
  uint16_t _216;
  uint16_t _217;
  uint8_t _218;
  uint8_t _219;
  uint16_t _220;
  struct l_struct_struct_OC_rfcomm_stack_t* _221;
  struct l_struct_struct_OC_btstack_linked_item* _222;
  struct l_struct_struct_OC_btstack_linked_item* _223;
  struct l_struct_struct_OC_btstack_linked_item* _224;
  struct l_struct_struct_OC_btstack_linked_item* _224__PHI_TEMPORARY;
  uint16_t _225;
  uint8_t _226;
  uint8_t* _227;
  uint8_t _228;
  uint8_t _229;
  uint8_t _230;
  uint8_t _231;
  uint8_t _232;
  uint16_t _233;
  struct l_struct_struct_OC_rfcomm_stack_t* _234;
  struct l_struct_struct_OC_btstack_linked_item* _235;
  struct l_struct_struct_OC_btstack_linked_item* _236;
  struct l_struct_struct_OC_btstack_linked_item* _237;
  struct l_struct_struct_OC_btstack_linked_item* _237__PHI_TEMPORARY;
  uint16_t _238;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _239;
  uint8_t _240;
  uint8_t _241;
  uint32_t _242;
  uint8_t _243;
  uint32_t _244;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _245;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _246;
  uint8_t _247;
  uint32_t _248;
  struct l_struct_struct_OC_rfcomm_stack_t* _249;
  struct l_struct_struct_OC_btstack_linked_item* _250;
  struct l_struct_struct_OC_btstack_linked_item* _251;
  struct l_struct_struct_OC_btstack_linked_item* _252;
  struct l_struct_struct_OC_btstack_linked_item* _252__PHI_TEMPORARY;
  uint16_t _253;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _254;
  uint8_t _255;
  uint8_t _256;
  uint8_t* _257;
  uint8_t _258;
  uint8_t _259;
  uint8_t* _260;
  uint8_t _261;
  uint8_t _262;
  uint8_t _263;
  struct l_struct_struct_OC_rfcomm_stack_t* _264;
  l_fptr_4* _265;
  struct l_struct_struct_OC_rfcomm_stack_t* _266;
  struct l_struct_struct_OC_btstack_linked_item* _267;
  struct l_struct_struct_OC_btstack_linked_item* _268;
  struct l_struct_struct_OC_btstack_linked_item* _269;
  struct l_struct_struct_OC_btstack_linked_item* _269__PHI_TEMPORARY;
  uint16_t _270;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _271;
  uint8_t _272;
  struct l_struct_struct_OC_rfcomm_stack_t* _273;
  struct l_struct_struct_OC_rfcomm_stack_t* _273__PHI_TEMPORARY;
  l_fptr_4* _274;
  uint8_t _275;
  uint8_t _276;
  uint8_t _277;
  uint8_t _278;
  uint32_t _279;
  uint8_t _280;
  struct l_struct_struct_OC_rfcomm_channel_t* _281;
  uint8_t _282;
  uint8_t* _283;
  uint8_t* _284;
  uint8_t _285;
  uint32_t _286;
  uint32_t _287;
  uint8_t* _288;
  uint8_t _289;
  uint8_t _290;
  uint8_t _291;
  uint8_t _292;
  uint16_t _293;
  uint8_t _294;
  uint8_t _295;
  uint8_t* _296;
  uint8_t* _297;
  uint8_t* _298;
  uint32_t _299;
  uint8_t _300;
  uint8_t _301;
  uint8_t _302;
  uint8_t _303;
  uint8_t _304;
  uint8_t _305;
  uint8_t _306;
  uint8_t _307;
  uint8_t _308;
  uint8_t _309;
  uint8_t _310;
  uint8_t _311;
  uint8_t _312;
  uint8_t _313;
  uint8_t _314;
  uint8_t _315;
  uint8_t _316;
  uint8_t _317;
  uint8_t _318;
  uint8_t _319;
  uint8_t _320;
  uint8_t _321;
  uint8_t _322;

  switch (_162) {
  default:
    goto _323;
  case ((uint8_t)4):
    goto _324;
  case ((uint8_t)6):
    goto _325;
  }

_324:
  _171 = (&_170.array[((int32_t)0)]);
  _172 = *_164;
  switch (_172) {
  default:
    goto _326;
  case ((uint8_t)114):
    goto _327;
  case ((uint8_t)112):
    goto _328;
  case ((uint8_t)116):
    goto _329;
  case ((uint8_t)108):
    goto _330;
  case ((uint8_t)113):
    goto _331;
  case ((uint8_t)121):
    goto _332;
  }

_327:
  bt_flip_addr(_171, ((&_164[((int32_t)2)])));
  _173 = *((&_164[((int32_t)8)]));
  _174 = *((&_164[((int32_t)9)]));
  _175 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_174)), 8)), (((uint16_t)(uint8_t)_173)));
  _176 = *((&_164[((int32_t)10)]));
  _177 = *((&_164[((int32_t)11)]));
  _178 = *((&_164[((int32_t)12)]));
  _179 = *((&_164[((int32_t)13)]));
  _180 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_179)), 8)), (((uint16_t)(uint8_t)_178)));
  if (((((((((uint32_t)(uint8_t)_177)) << 8) | (((uint32_t)(uint8_t)_176))) == 3u)&1))) {
    goto _333;
  } else {
    goto _326;
  }

_333:
  _181 = rfcomm_multiplexer_for_addr((&_170));
  if ((((_181 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _334;
  } else {
    goto _335;
  }

_335:
  l2cap_decline_connection_internal(_180, 4);
  goto _336;

_334:
  _182 = rfcomm_multiplexer_create_for_addr((&_170));
  if ((((_182 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _337;
  } else {
    goto _338;
  }

_337:
  l2cap_decline_connection_internal(_180, 4);
  goto _336;

_338:
  *((&_182->field2.field6)) = _175;
  *((&_182->field2.field1)) = _180;
  _183 = (&_182->field2.field2);
  _184 = *_183;
  *_183 = (llvm_or_u8((llvm_and_u8(_184, -16)), 5));
  l2cap_accept_connection_internal(_180);
  goto _336;

_328:
  _185 = *((&_164[((int32_t)11)]));
  _186 = *((&_164[((int32_t)12)]));
  if (((((((((uint32_t)(uint8_t)_186)) << 8) | (((uint32_t)(uint8_t)_185))) == 3u)&1))) {
    goto _339;
  } else {
    goto _326;
  }

_339:
  _187 = *((&_164[((int32_t)2)]));
  _188 = *((&_164[((int32_t)9)]));
  _189 = *((&_164[((int32_t)10)]));
  _190 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_189)), 8)), (((uint16_t)(uint8_t)_188)));
  _191 = *((&_164[((int32_t)13)]));
  _192 = *((&_164[((int32_t)14)]));
  _193 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_192)), 8)), (((uint16_t)(uint8_t)_191)));
  bt_flip_addr(_171, ((&_164[((int32_t)3)])));
  _194 = rfcomm_multiplexer_for_addr((&_170));
  if ((((_194 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _336;
  } else {
    goto _340;
  }

_340:
  if ((((_187 == ((uint8_t)0))&1))) {
    goto _341;
  } else {
    goto _342;
  }

_342:
  _195 = rfcomm_stack;
  _196 = (&_195->field2);
  _197 = *_196;
  if ((((_197 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _343;
  } else {
    goto _344;
  }

_344:
  _198 = ((struct l_struct_struct_OC_btstack_linked_item*)_196);
  _201__PHI_TEMPORARY = _197;   /* for PHI node */
  _202__PHI_TEMPORARY = _196;   /* for PHI node */
  _203__PHI_TEMPORARY = _198;   /* for PHI node */
  goto _345;

  do {     /* Syntactic loop '' to make GCC happy */
_345:
  _201 = _201__PHI_TEMPORARY;
  _202 = _202__PHI_TEMPORARY;
  _203 = _203__PHI_TEMPORARY;
  _204 = ((uint32_t**)_203);
  _205 = ((uint32_t*)_203);
  _206__PHI_TEMPORARY = _201;   /* for PHI node */
  goto _346;

  do {     /* Syntactic loop '' to make GCC happy */
_346:
  _206 = _206__PHI_TEMPORARY;
  _207 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_206[((int32_t)1)]))));
  if ((((_207 == _194)&1))) {
    goto _347;
  } else {
    goto _348;
  }

_347:
  rfcomm_emit_channel_opened((((struct l_struct_struct_OC_rfcomm_channel_t*)_206)), _187);
  _208 = *_204;
  _209 = *_208;
  *_205 = _209;
  btstack_memory_rfcomm_channel_free((((uint8_t*)_206)));
  _210 = *_202;
  if ((((_210 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _349;
  } else {
    _206__PHI_TEMPORARY = _210;   /* for PHI node */
    goto _346;
  }

  } while (1); /* end of syntactic loop '' */
_348:
  _199 = (&_206->field0);
  _200 = *_199;
  if ((((_200 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _350;
  } else {
    _201__PHI_TEMPORARY = _200;   /* for PHI node */
    _202__PHI_TEMPORARY = _199;   /* for PHI node */
    _203__PHI_TEMPORARY = _206;   /* for PHI node */
    goto _345;
  }

  } while (1); /* end of syntactic loop '' */
_349:
  goto _343;

_350:
  goto _343;

_343:
  rfcomm_multiplexer_free(_194);
  goto _336;

_341:
  _211 = (&_194->field2.field2);
  _212 = *_211;
  if (((((llvm_and_u8(_212, 15)) == ((uint8_t)2))&1))) {
    goto _351;
  } else {
    goto _352;
  }

_351:
  _213 = memcmp(_171, ((&_194->field2.field0.array[((int32_t)0)])), 6);
  if ((((_213 == 0u)&1))) {
    goto _353;
  } else {
    goto _326;
  }

_353:
  *((&_194->field2.field1)) = _193;
  *((&_194->field2.field6)) = _190;
  *_211 = (llvm_or_u8((llvm_and_u8(_212, -16)), 3));
  goto _336;

_352:
  _214 = *((&_164[((int32_t)17)]));
  _215 = *((&_164[((int32_t)18)]));
  _216 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_215)), 8)), (((uint16_t)(uint8_t)_214)));
  _217 = llvm_add_u16(_216, -5);
  *((&_194->field1)) = (llvm_select_u16((((((uint16_t)_217) > ((uint16_t)((uint16_t)127)))&1)), (llvm_add_u16(_216, -6)), _217));
  goto _336;

_329:
  _218 = *((&_164[((int32_t)2)]));
  _219 = *((&_164[((int32_t)3)]));
  _220 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_219)), 8)), (((uint16_t)(uint8_t)_218)));
  _221 = rfcomm_stack;
  _222 = *((&_221->field1));
  if ((((_222 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _326;
  } else {
    goto _354;
  }

_354:
  _224__PHI_TEMPORARY = _222;   /* for PHI node */
  goto _355;

  do {     /* Syntactic loop '' to make GCC happy */
_355:
  _224 = _224__PHI_TEMPORARY;
  _225 = *(((uint16_t*)((&_224[((int32_t)3)]))));
  if ((((_225 == _220)&1))) {
    goto _356;
  } else {
    goto _357;
  }

_357:
  _223 = *((&_224->field0));
  if ((((_223 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _358;
  } else {
    _224__PHI_TEMPORARY = _223;   /* for PHI node */
    goto _355;
  }

  } while (1); /* end of syntactic loop '' */
_356:
  _226 = *((&_164[((int32_t)4)]));
  _227 = (&(((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_224))->field2.field2);
  _228 = *_227;
  if (((((((_226 == ((uint8_t)0))&1)) & (((((uint8_t)_228) < ((uint8_t)((uint8_t)16)))&1)))&1))) {
    goto _336;
  } else {
    goto _359;
  }

_359:
  _229 = llvm_add_u8((llvm_lshr_u8(_228, 4)), _226);
  *_227 = (llvm_or_u8((llvm_select_u8((((((uint8_t)(llvm_and_u8(_229, 15))) > ((uint8_t)((uint8_t)12)))&1)), -64, (llvm_shl_u8(_229, 4)))), (llvm_and_u8(_228, 15))));
   /*tail*/ rfcomm_run();
  _230 = *_227;
  if (((((llvm_and_u8(_230, 15)) == ((uint8_t)7))&1))) {
    goto _360;
  } else {
    goto _326;
  }

_360:
   /*tail*/ rfcomm_hand_out_credits();
  goto _336;

_330:
   /*tail*/ rfcomm_run();
  goto _326;

_331:
  _231 = *((&_164[((int32_t)2)]));
  _232 = *((&_164[((int32_t)3)]));
  _233 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_232)), 8)), (((uint16_t)(uint8_t)_231)));
  _234 = rfcomm_stack;
  _235 = *((&_234->field1));
  if ((((_235 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _326;
  } else {
    goto _361;
  }

_361:
  _237__PHI_TEMPORARY = _235;   /* for PHI node */
  goto _362;

  do {     /* Syntactic loop '' to make GCC happy */
_362:
  _237 = _237__PHI_TEMPORARY;
  _238 = *(((uint16_t*)((&_237[((int32_t)3)]))));
  if ((((_238 == _233)&1))) {
    goto _363;
  } else {
    goto _364;
  }

_364:
  _236 = *((&_237->field0));
  if ((((_236 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _365;
  } else {
    _237__PHI_TEMPORARY = _236;   /* for PHI node */
    goto _362;
  }

  } while (1); /* end of syntactic loop '' */
_363:
  _239 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_237);
  _240 = *((&_239->field2.field2));
  switch ((((((uint8_t)_240))&15))) {
  default:
    goto _326;
  case ((uint8_t)5):
    goto _366;
  case ((uint8_t)4):
    goto _366;
  case ((uint8_t)7):
    goto _366;
  }

_366:
  _241 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_241, 1)) == ((uint8_t)0))&1))) {
    goto _367;
  } else {
    goto _368;
  }

_368:
  _242 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint16_t)_233)));
  goto _367;

_367:
   /*tail*/ rfcomm_multiplexer_finalize(_239);
  goto _336;

_332:
  _243 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_243, 1)) == ((uint8_t)0))&1))) {
    goto _369;
  } else {
    goto _370;
  }

_370:
  _244 =  /*tail*/ puts(((&str_OC_23.array[((int32_t)0)])));
  goto _369;

_369:
  bt_flip_addr(_171, ((&_164[((int32_t)3)])));
  _245 = rfcomm_multiplexer_for_addr((&_170));
  if ((((_245 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _371;
  } else {
    goto _336;
  }

_371:
  _246 = rfcomm_multiplexer_create_for_addr((&_170));
  if ((((_246 == ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)/*NULL*/0))&1))) {
    goto _372;
  } else {
    goto _336;
  }

_372:
  _247 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_247, 4)) == ((uint8_t)0))&1))) {
    goto _336;
  } else {
    goto _373;
  }

_373:
  _248 = puts(((&str_OC_22.array[((int32_t)0)])));
  goto _336;

_325:
  _249 = rfcomm_stack;
  _250 = *((&_249->field1));
  if ((((_250 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _273__PHI_TEMPORARY = _249;   /* for PHI node */
    goto _374;
  } else {
    goto _375;
  }

_375:
  _252__PHI_TEMPORARY = _250;   /* for PHI node */
  goto _376;

  do {     /* Syntactic loop '' to make GCC happy */
_376:
  _252 = _252__PHI_TEMPORARY;
  _253 = *(((uint16_t*)((&_252[((int32_t)3)]))));
  if ((((_253 == _163)&1))) {
    goto _377;
  } else {
    goto _378;
  }

_378:
  _251 = *((&_252->field0));
  if ((((_251 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _379;
  } else {
    _252__PHI_TEMPORARY = _251;   /* for PHI node */
    goto _376;
  }

  } while (1); /* end of syntactic loop '' */
_377:
  _254 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_252);
  _255 = *_164;
  if ((((((uint8_t)_255) > ((uint8_t)((uint8_t)3)))&1))) {
    goto _380;
  } else {
    goto _381;
  }

_381:
  _256 = *((&_164[((int32_t)1)]));
  switch (_256) {
  default:
    goto _380;
  case ((uint8_t)63):
    goto _382;
  case ((uint8_t)115):
    goto _383;
  case ((uint8_t)83):
    goto _384;
  case ((uint8_t)15):
    goto _385;
  case ((uint8_t)-17):
    goto _386;
  }

_382:
  _257 = (&_254->field2.field2);
  _258 = *_257;
  if (((((llvm_and_u8(_258, 15)) == ((uint8_t)5))&1))) {
    goto _387;
  } else {
    goto _380;
  }

_387:
  *((&_254->field2.field3)) = 0;
  *_257 = (llvm_or_u8((llvm_and_u8(_258, -16)), 6));
  goto _388;

_383:
  _259 = *((&_254->field2.field2));
  if (((((llvm_and_u8(_259, 15)) == ((uint8_t)4))&1))) {
    goto _389;
  } else {
    goto _380;
  }

_389:
   /*tail*/ rfcomm_multiplexer_opened(_254);
  goto _388;

_384:
  _260 = (&_254->field2.field2);
  _261 = *_260;
  *_260 = (llvm_or_u8((llvm_and_u8(_261, -16)), 8));
  goto _388;

_385:
   /*tail*/ rfcomm_multiplexer_finalize(_254);
  goto _388;

_386:
  _262 = *((&_164[((int32_t)2)]));
  _263 = *((&_164[((int32_t)(((uint32_t)(uint8_t)(llvm_sub_u8(4, (llvm_and_u8(_262, 1)))))))]));
  if ((((_263 == ((uint8_t)-61))&1))) {
    goto _390;
  } else {
    goto _380;
  }

_390:
   /*tail*/ rfcomm_multiplexer_finalize(_254);
  goto _388;

_336:
  goto _388;

_358:
  goto _326;

_365:
  goto _326;

_326:
  goto _380;

_388:
  rfcomm_run();
  goto _391;

_379:
  goto _380;

_380:
  if ((((_162 == ((uint8_t)6))&1))) {
    goto _392;
  } else {
    goto _323;
  }

_323:
  _264 = rfcomm_stack;
  _265 = *((&_264->field0));
  _265(((uint8_t*)/*NULL*/0), _162, _163, _164, _165);
  goto _391;

_392:
  _266 = rfcomm_stack;
  _267 = *((&_266->field1));
  if ((((_267 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _273__PHI_TEMPORARY = _266;   /* for PHI node */
    goto _374;
  } else {
    goto _393;
  }

_393:
  _269__PHI_TEMPORARY = _267;   /* for PHI node */
  goto _394;

  do {     /* Syntactic loop '' to make GCC happy */
_394:
  _269 = _269__PHI_TEMPORARY;
  _270 = *(((uint16_t*)((&_269[((int32_t)3)]))));
  if ((((_270 == _163)&1))) {
    goto _395;
  } else {
    goto _396;
  }

_396:
  _268 = *((&_269->field0));
  if ((((_268 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _397;
  } else {
    _269__PHI_TEMPORARY = _268;   /* for PHI node */
    goto _394;
  }

  } while (1); /* end of syntactic loop '' */
_395:
  _271 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_269);
  _272 = *((&_271->field2.field2));
  if (((((llvm_and_u8(_272, 15)) == ((uint8_t)7))&1))) {
    goto _398;
  } else {
    _273__PHI_TEMPORARY = _266;   /* for PHI node */
    goto _374;
  }

_397:
  _273__PHI_TEMPORARY = _266;   /* for PHI node */
  goto _374;

_374:
  _273 = _273__PHI_TEMPORARY;
  _274 = *((&_273->field0));
  _274(((uint8_t*)/*NULL*/0), _162, _163, _164, _165);
  goto _391;

_398:
  _275 = *_164;
  _276 = *((&_164[((int32_t)1)]));
  if ((((((uint8_t)_275) > ((uint8_t)((uint8_t)3)))&1))) {
    goto _399;
  } else {
    goto _400;
  }

_399:
  switch (_276) {
  default:
    goto _400;
  case ((uint8_t)-17):
    goto _401;
  case ((uint8_t)-1):
    goto _401;
  }

_401:
  _277 = *((&_164[((int32_t)2)]));
  _278 = llvm_sub_u8(4, (llvm_and_u8(_277, 1)));
  _279 = ((uint32_t)(uint8_t)_278);
  _280 = llvm_add_u8(_278, (((uint8_t)(bool)(((_276 == ((uint8_t)-1))&1)))));
  _281 = rfcomm_channel_for_multiplexer_and_dlci(_271, (llvm_lshr_u8(_275, 2)));
  if ((((_281 == ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0))&1))) {
    goto _402;
  } else {
    goto _403;
  }

_403:
  if ((((_276 == ((uint8_t)-1))&1))) {
    goto _404;
  } else {
    goto _405;
  }

_404:
  _282 = *((&_164[((int32_t)_279)]));
  _283 = ((uint8_t*)(&_169));
  *((&_169.field0)) = 11;
  _284 = (&_281->field2.field6);
  _285 = *_284;
  *_284 = (llvm_add_u8(_285, _282));
  rfcomm_channel_state_machine(_281, (&_169));
  goto _405;

_405:
  _286 = ((uint32_t)(uint16_t)_165);
  _287 = ((uint32_t)(uint8_t)_280);
  if ((((((int32_t)(llvm_add_u32(_286, -1))) > ((int32_t)_287))&1))) {
    goto _406;
  } else {
    goto _407;
  }

_406:
  _288 = (&_281->field2.field8);
  _289 = *_288;
  if ((((_289 == ((uint8_t)0))&1))) {
    goto _408;
  } else {
    goto _409;
  }

_409:
  *_288 = (llvm_add_u8(_289, -1));
  goto _408;

_408:
  rfcomm_channel_dispatch(_281, 7, ((&_164[((int32_t)_287)])), (((uint16_t)(llvm_sub_u32((llvm_add_u32(_286, 65535)), _287)))));
  goto _407;

_407:
  _290 = *((&_281->field2.field9));
  if ((((_290 == ((uint8_t)0))&1))) {
    goto _410;
  } else {
    goto _411;
  }

_410:
  _291 = *((&_281->field2.field8));
  _292 = rfcomm_credits_base;
  if ((((((uint8_t)_291) < ((uint8_t)_292))&1))) {
    goto _412;
  } else {
    goto _411;
  }

_412:
  _293 = rfcomm_init_credits;
  *((&_281->field2.field7)) = (((uint8_t)_293));
  goto _411;

_411:
  rfcomm_hand_out_credits();
  goto _402;

_402:
  rfcomm_run();
  goto _391;

_400:
  _294 = llvm_lshr_u8(_275, 2);
  _295 = *((&_164[((int32_t)2)]));
  _296 = ((uint8_t*)(&_166));
  _297 = ((uint8_t*)(&_167));
  _298 = ((uint8_t*)(&_168));
  switch (_276) {
  default:
    goto _413;
  case ((uint8_t)63):
    goto _414;
  case ((uint8_t)115):
    goto _415;
  case ((uint8_t)83):
    goto _416;
  case ((uint8_t)15):
    goto _417;
  case ((uint8_t)31):
    goto _417;
  case ((uint8_t)-1):
    goto _418;
  case ((uint8_t)-17):
    goto _418;
  }

_414:
  *((&_166.field0)) = 1;
  rfcomm_channel_state_machine_2(_271, _294, (&_166));
  goto _413;

_415:
  *((&_166.field0)) = 2;
  rfcomm_channel_state_machine_2(_271, _294, (&_166));
  goto _413;

_416:
  *((&_166.field0)) = 5;
  rfcomm_channel_state_machine_2(_271, _294, (&_166));
  goto _413;

_417:
  *((&_166.field0)) = 6;
  rfcomm_channel_state_machine_2(_271, _294, (&_166));
  goto _413;

_418:
  _299 = ((uint32_t)(uint8_t)(llvm_add_u8((llvm_sub_u8(4, (llvm_and_u8(_295, 1)))), (((uint8_t)(bool)(((_276 == ((uint8_t)-1))&1)))))));
  _300 = *((&_164[((int32_t)_299)]));
  switch (_300) {
  default:
    goto _413;
  case ((uint8_t)-125):
    goto _419;
  case ((uint8_t)-127):
    goto _420;
  case ((uint8_t)-29):
    goto _421;
  case ((uint8_t)-31):
    goto _422;
  case ((uint8_t)-109):
    goto _423;
  }

_419:
  _301 = *((&_164[((int32_t)(llvm_add_u32(_299, 2)))]));
  *((&_167.field0.field0)) = 3;
  _302 = *((&_164[((int32_t)(llvm_add_u32(_299, 4)))]));
  *((&_167.field2)) = _302;
  _303 = *((&_164[((int32_t)(llvm_add_u32(_299, 6)))]));
  _304 = *((&_164[((int32_t)(llvm_add_u32(_299, 7)))]));
  *((&_167.field1)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_304)), 8)), (((uint16_t)(uint8_t)_303))));
  _305 = *((&_164[((int32_t)(llvm_add_u32(_299, 9)))]));
  *((&_167.field3)) = _305;
  rfcomm_channel_state_machine_2(_271, _301, ((&_167.field0)));
  goto _413;

_420:
  _306 = *((&_164[((int32_t)(llvm_add_u32(_299, 2)))]));
  *((&_167.field0.field0)) = 4;
  _307 = *((&_164[((int32_t)(llvm_add_u32(_299, 4)))]));
  *((&_167.field2)) = _307;
  _308 = *((&_164[((int32_t)(llvm_add_u32(_299, 6)))]));
  _309 = *((&_164[((int32_t)(llvm_add_u32(_299, 7)))]));
  *((&_167.field1)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_309)), 8)), (((uint16_t)(uint8_t)_308))));
  _310 = *((&_164[((int32_t)(llvm_add_u32(_299, 9)))]));
  *((&_167.field3)) = _310;
  rfcomm_channel_state_machine_2(_271, _306, ((&_167.field0)));
  goto _413;

_421:
  _311 = *((&_164[((int32_t)(llvm_add_u32(_299, 2)))]));
  *((&_166.field0)) = 7;
  rfcomm_channel_state_machine_2(_271, (llvm_lshr_u8(_311, 2)), (&_166));
  goto _413;

_422:
  _312 = *((&_164[((int32_t)(llvm_add_u32(_299, 2)))]));
  *((&_166.field0)) = 8;
  rfcomm_channel_state_machine_2(_271, (llvm_lshr_u8(_312, 2)), (&_166));
  goto _413;

_423:
  _313 = *((&_164[((int32_t)(llvm_add_u32(_299, 1)))]));
  _314 = *((&_164[((int32_t)(llvm_add_u32(_299, 2)))]));
  _315 = llvm_lshr_u8(_314, 2);
  switch ((((((uint8_t)(llvm_lshr_u8(_313, 1))))&127))) {
  default:
    goto _413;
  case ((uint8_t)1):
    goto _424;
  case ((uint8_t)8):
    goto _425;
  }

_424:
  *((&_166.field0)) = 10;
  rfcomm_channel_state_machine_2(_271, _315, (&_166));
  goto _413;

_425:
  *((&_168.field0.field0)) = 9;
  _316 = *((&_164[((int32_t)(llvm_add_u32(_299, 3)))]));
  *((&_168.field1.field0)) = _316;
  _317 = *((&_164[((int32_t)(llvm_add_u32(_299, 4)))]));
  *((&_168.field1.field1)) = _317;
  _318 = *((&_164[((int32_t)(llvm_add_u32(_299, 5)))]));
  *((&_168.field1.field2)) = _318;
  _319 = *((&_164[((int32_t)(llvm_add_u32(_299, 6)))]));
  *((&_168.field1.field3)) = _319;
  _320 = *((&_164[((int32_t)(llvm_add_u32(_299, 7)))]));
  *((&_168.field1.field4)) = _320;
  _321 = *((&_164[((int32_t)(llvm_add_u32(_299, 8)))]));
  *((&_168.field1.field5)) = _321;
  _322 = *((&_164[((int32_t)(llvm_add_u32(_299, 9)))]));
  *((&_168.field1.field6)) = _322;
  rfcomm_channel_state_machine_2(_271, _315, ((&_168.field0)));
  goto _413;

_413:
  rfcomm_run();
  goto _391;

_391:
  return;
}


static void rfcomm_run(void) {
  struct l_struct_struct_OC_rfcomm_channel_event _426;    /* Address-exposed local */
  struct l_struct_struct_OC_rfcomm_stack_t* _427;
  struct l_struct_struct_OC_btstack_linked_item* _428;
  struct l_struct_struct_OC_btstack_linked_item* _429;
  struct l_struct_struct_OC_btstack_linked_item* _429__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _430;
  struct l_struct_struct_OC_btstack_linked_item* _431;
  uint16_t _432;
  uint32_t _433;
  uint8_t* _434;
  uint8_t _435;
  uint8_t* _436;
  uint8_t _437;
  uint8_t _438;
  uint32_t _439;
  uint8_t _440;
  uint32_t _441;
  uint8_t _442;
  uint32_t _443;
  struct l_struct_struct_OC_rfcomm_stack_t* _444;
  struct l_struct_struct_OC_rfcomm_stack_t* _445;
  struct l_struct_struct_OC_rfcomm_stack_t* _445__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _446;
  uint8_t* _447;
  uint32_t* _448;
  struct l_struct_struct_OC_btstack_linked_item* _449;
  struct l_struct_struct_OC_btstack_linked_item* _449__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _450;
  struct l_struct_struct_OC_btstack_linked_item* _451;
  uint16_t _452;
  uint32_t _453;

  _427 = rfcomm_stack;
  _428 = *((&_427->field1));
  if ((((_428 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _445__PHI_TEMPORARY = _427;   /* for PHI node */
    goto _454;
  } else {
    goto _455;
  }

_455:
  _429__PHI_TEMPORARY = _428;   /* for PHI node */
  goto _456;

  do {     /* Syntactic loop '' to make GCC happy */
_456:
  _429 = _429__PHI_TEMPORARY;
  _430 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_429);
  _431 = *((&_429->field0));
  _432 = *(((uint16_t*)((&_429[((int32_t)3)]))));
  _433 =  /*tail*/ l2cap_can_send_packet_now(_432);
  if ((((_433 == 0u)&1))) {
    goto _457;
  } else {
    goto _458;
  }

_458:
  _434 = (&_430->field2.field5);
  _435 = *_434;
  if ((((_435 == ((uint8_t)0))&1))) {
    goto _459;
  } else {
    goto _460;
  }

_460:
   /*tail*/ rfcomm_send_dm_pf(_430, _435);
  *_434 = 0;
  goto _459;

_459:
  _436 = (&_430->field2.field2);
  _437 = *_436;
  switch ((((((uint8_t)_437))&15))) {
  default:
    goto _457;
  case ((uint8_t)3):
    goto _461;
  case ((uint8_t)6):
    goto _462;
  case ((uint8_t)8u):
    goto _463;
  }

_463:
  *_436 = (llvm_or_u8((llvm_and_u8(_437, -16)), 1));
  _442 = *((&_430->field2.field3));
  _443 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_430, (llvm_xor_u8((llvm_shl_u8(_442, 1)), 3)), 115u, 0, ((uint8_t*)/*NULL*/0), 0);
   /*tail*/ rfcomm_multiplexer_finalize(_430);
  goto _457;

_462:
  *_436 = (llvm_or_u8((llvm_and_u8(_437, -16)), 7));
  _440 = *((&_430->field2.field3));
  _441 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_430, (llvm_xor_u8((llvm_shl_u8(_440, 1)), 3)), 115u, 0, ((uint8_t*)/*NULL*/0), 0);
   /*tail*/ rfcomm_multiplexer_opened(_430);
  goto _457;

_461:
  *_436 = (llvm_or_u8((llvm_and_u8(_437, -16)), 4));
  _438 = *((&_430->field2.field3));
  _439 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_430, (llvm_or_u8((llvm_shl_u8(_438, 1)), 1)), 63, 0, ((uint8_t*)/*NULL*/0), 0);
  goto _457;

_457:
  if ((((_431 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _464;
  } else {
    _429__PHI_TEMPORARY = _431;   /* for PHI node */
    goto _456;
  }

  } while (1); /* end of syntactic loop '' */
_464:
  _444 = rfcomm_stack;
  _445__PHI_TEMPORARY = _444;   /* for PHI node */
  goto _454;

_454:
  _445 = _445__PHI_TEMPORARY;
  _446 = *((&_445->field2));
  if ((((_446 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _465;
  } else {
    goto _466;
  }

_466:
  _447 = ((uint8_t*)(&_426));
  _448 = (&_426.field0);
  _449__PHI_TEMPORARY = _446;   /* for PHI node */
  goto _467;

  do {     /* Syntactic loop '' to make GCC happy */
_467:
  _449 = _449__PHI_TEMPORARY;
  _450 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_449[((int32_t)1)]))));
  *_448 = 13;
  _451 = *((&_449->field0));
  _452 = *((&_450->field2.field1));
  _453 =  /*tail*/ l2cap_can_send_packet_now(_452);
  if ((((_453 == 0u)&1))) {
    goto _468;
  } else {
    goto _469;
  }

_469:
  rfcomm_channel_state_machine((((struct l_struct_struct_OC_rfcomm_channel_t*)_449)), (&_426));
  goto _468;

_468:
  if ((((_451 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _470;
  } else {
    _449__PHI_TEMPORARY = _451;   /* for PHI node */
    goto _467;
  }

  } while (1); /* end of syntactic loop '' */
_470:
  goto _465;

_465:
  return;
}


void rfcomm_create_channel_internal(uint8_t* _471, l_fptr_2* _472, struct l_array_6_uint8_t* _473, uint8_t _474) {
  uint16_t _475;

  _475 = rfcomm_init_credits;
   /*tail*/ rfcomm_create_channel2(_471, _472, _473, _474, 0, (((uint8_t)_475)));
}


void rfcomm_disconnect_internal(uint16_t _476) {
  struct l_struct_struct_OC_rfcomm_stack_t* _477;
  struct l_struct_struct_OC_btstack_linked_item* _478;
  struct l_struct_struct_OC_btstack_linked_item* _479;
  struct l_struct_struct_OC_btstack_linked_item* _480;
  struct l_struct_struct_OC_btstack_linked_item* _480__PHI_TEMPORARY;
  uint16_t _481;

  _477 = rfcomm_stack;
  _478 = *((&_477->field2));
  if ((((_478 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _482;
  } else {
    goto _483;
  }

_483:
  _480__PHI_TEMPORARY = _478;   /* for PHI node */
  goto _484;

  do {     /* Syntactic loop '' to make GCC happy */
_484:
  _480 = _480__PHI_TEMPORARY;
  _481 = *(((uint16_t*)((&_480[((int32_t)4)]))));
  if ((((_481 == _476)&1))) {
    goto _485;
  } else {
    goto _486;
  }

_486:
  _479 = *((&_480->field0));
  if ((((_479 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _487;
  } else {
    _480__PHI_TEMPORARY = _479;   /* for PHI node */
    goto _484;
  }

  } while (1); /* end of syntactic loop '' */
_485:
  *((&(((struct l_struct_struct_OC_rfcomm_channel_t*)_480))->field2.field10)) = 11;
  goto _482;

_487:
  goto _482;

_482:
   /*tail*/ rfcomm_run();
}


void rfcomm_register_service2(uint8_t* _488, l_fptr_2* _489, uint8_t _490, uint16_t _491, uint8_t _492, uint8_t _493) {
  struct l_struct_struct_OC_rfcomm_stack_t* _494;
  struct l_struct_struct_OC_btstack_linked_item* _495;
  struct l_struct_struct_OC_btstack_linked_item* _496;
  struct l_struct_struct_OC_btstack_linked_item* _497;
  struct l_struct_struct_OC_btstack_linked_item* _497__PHI_TEMPORARY;
  uint8_t _498;
  uint8_t* _499;
  struct l_struct_struct_OC_rfcomm_stack_t* _500;
  uint32_t _501;
  uint8_t _502;
  uint32_t _503;
  uint8_t _504;
  uint32_t _505;
  struct l_struct_struct_OC_rfcomm_stack_t* _506;
  uint8_t _507;
  uint32_t _508;

  _494 = rfcomm_stack;
  _495 = *((&_494->field3));
  if ((((_495 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _509;
  } else {
    goto _510;
  }

_510:
  _497__PHI_TEMPORARY = _495;   /* for PHI node */
  goto _511;

  do {     /* Syntactic loop '' to make GCC happy */
_511:
  _497 = _497__PHI_TEMPORARY;
  _498 = *(((uint8_t*)((&_497[((int32_t)1)]))));
  if ((((_498 == _490)&1))) {
    goto _512;
  } else {
    goto _513;
  }

_513:
  _496 = *((&_497->field0));
  if ((((_496 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _514;
  } else {
    _497__PHI_TEMPORARY = _496;   /* for PHI node */
    goto _511;
  }

  } while (1); /* end of syntactic loop '' */
_514:
  goto _509;

_509:
  _499 =  /*tail*/ btstack_memory_rfcomm_service_get();
  if ((((_499 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _515;
  } else {
    goto _516;
  }

_516:
  _500 = rfcomm_stack;
  _501 =  /*tail*/ btstack_linked_list_empty(((&_500->field3)));
  if ((((_501 == 0u)&1))) {
    goto _517;
  } else {
    goto _518;
  }

_518:
  _502 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_502, 1)) == ((uint8_t)0))&1))) {
    goto _519;
  } else {
    goto _520;
  }

_520:
  _503 =  /*tail*/ puts(((&str_OC_18.array[((int32_t)0)])));
  goto _519;

_519:
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), rfcomm_packet_handler, 3, -1);
  _504 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_504, 1)) == ((uint8_t)0))&1))) {
    goto _517;
  } else {
    goto _521;
  }

_521:
  _505 =  /*tail*/ puts(((&str_OC_17.array[((int32_t)0)])));
  goto _517;

_517:
  *(((uint8_t**)((&_499[((int32_t)12)])))) = _488;
  *((&_499[((int32_t)4)])) = _490;
  *(((uint16_t*)((&_499[((int32_t)8)])))) = _491;
  *((&_499[((int32_t)5)])) = _492;
  *((&_499[((int32_t)6)])) = _493;
  *(((l_fptr_2**)((&_499[((int32_t)16)])))) = _489;
  _506 = rfcomm_stack;
   /*tail*/ btstack_linked_list_add(((&_506->field3)), (((struct l_struct_struct_OC_btstack_linked_item*)_499)));
  _507 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_507, 1)) == ((uint8_t)0))&1))) {
    goto _515;
  } else {
    goto _522;
  }

_522:
  _508 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _515;

_512:
  goto _515;

_515:
  return;
}


void rfcomm_register_service_internal(uint8_t* _523, l_fptr_2* _524, uint8_t _525, uint16_t _526) {
  uint16_t _527;

  _527 = rfcomm_init_credits;
   /*tail*/ rfcomm_register_service2(_523, _524, _525, _526, 0, (((uint8_t)_527)));
}


void rfcomm_accept_connection_internal(uint16_t _528) {
  struct l_struct_struct_OC_rfcomm_stack_t* _529;
  struct l_struct_struct_OC_btstack_linked_item* _530;
  struct l_struct_struct_OC_btstack_linked_item* _531;
  struct l_struct_struct_OC_btstack_linked_item* _532;
  struct l_struct_struct_OC_btstack_linked_item* _532__PHI_TEMPORARY;
  uint16_t _533;
  uint8_t _534;
  uint16_t* _535;
  uint16_t _536;
  uint16_t _537;

  _529 = rfcomm_stack;
  _530 = *((&_529->field2));
  if ((((_530 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _538;
  } else {
    goto _539;
  }

_539:
  _532__PHI_TEMPORARY = _530;   /* for PHI node */
  goto _540;

  do {     /* Syntactic loop '' to make GCC happy */
_540:
  _532 = _532__PHI_TEMPORARY;
  _533 = *(((uint16_t*)((&_532[((int32_t)4)]))));
  if ((((_533 == _528)&1))) {
    goto _541;
  } else {
    goto _542;
  }

_542:
  _531 = *((&_532->field0));
  if ((((_531 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _543;
  } else {
    _532__PHI_TEMPORARY = _531;   /* for PHI node */
    goto _540;
  }

  } while (1); /* end of syntactic loop '' */
_541:
  _534 = *((&(((struct l_struct_struct_OC_rfcomm_channel_t*)_532))->field2.field10));
  if ((((_534 == ((uint8_t)7))&1))) {
    goto _544;
  } else {
    goto _545;
  }

_544:
  _535 = ((uint16_t*)((&_532[((int32_t)7)])));
  _536 = *_535;
  _537 = llvm_or_u16(_536, (llvm_and_u16((llvm_shl_u16(_536, 5)), 64)));
  *_535 = (llvm_or_u16(_537, 1));
  if (((((llvm_and_u16(_536, 8)) == ((uint16_t)0))&1))) {
    goto _545;
  } else {
    goto _546;
  }

_546:
  *_535 = (llvm_or_u16(_537, 513));
  goto _545;

_545:
   /*tail*/ rfcomm_run();
  goto _538;

_543:
  goto _538;

_538:
  return;
}


uint32_t is_rfcomm_other_conn(uint16_t _547) {
  struct l_struct_struct_OC_rfcomm_stack_t* _548;
  struct l_struct_struct_OC_btstack_linked_item* _549;
  struct l_struct_struct_OC_btstack_linked_item* _550;
  struct l_struct_struct_OC_btstack_linked_item* _551;
  struct l_struct_struct_OC_btstack_linked_item* _551__PHI_TEMPORARY;
  uint16_t _552;
  uint32_t _553;
  uint32_t _553__PHI_TEMPORARY;
  uint32_t _554;
  uint32_t _554__PHI_TEMPORARY;

  _548 = rfcomm_stack;
  _549 = *((&_548->field2));
  if ((((_549 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _554__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _555;
  } else {
    goto _556;
  }

_556:
  _551__PHI_TEMPORARY = _549;   /* for PHI node */
  goto _557;

  do {     /* Syntactic loop '' to make GCC happy */
_557:
  _551 = _551__PHI_TEMPORARY;
  _552 = *(((uint16_t*)((&_551[((int32_t)4)]))));
  if ((((_552 == _547)&1))) {
    goto _558;
  } else {
    _553__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _559;
  }

_558:
  _550 = *((&_551->field0));
  if ((((_550 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _553__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _559;
  } else {
    _551__PHI_TEMPORARY = _550;   /* for PHI node */
    goto _557;
  }

  } while (1); /* end of syntactic loop '' */
_559:
  _553 = _553__PHI_TEMPORARY;
  _554__PHI_TEMPORARY = _553;   /* for PHI node */
  goto _555;

_555:
  _554 = _554__PHI_TEMPORARY;
  return _554;
}


void l2cap_disconnect_rfcomm(void) {
  uint16_t _560;

  _560 =  /*tail*/ l2cap_get_local_cid_via_psm(3);
  if ((((_560 == ((uint16_t)0))&1))) {
    goto _561;
  } else {
    goto _562;
  }

_562:
   /*tail*/ l2cap_disconnect_internal(_560, 19);
  goto _561;

_561:
  return;
}


void BQB_send_rfcomm_disc(void) {
  struct l_struct_struct_OC_rfcomm_stack_t* _563;
  struct l_struct_struct_OC_btstack_linked_item* _564;
  struct l_struct_struct_OC_btstack_linked_item* _565;
  struct l_struct_struct_OC_btstack_linked_item* _565__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_stack_t* _566;
  struct l_struct_struct_OC_rfcomm_stack_t* _566__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _567;
  struct l_struct_struct_OC_btstack_linked_item* _567__PHI_TEMPORARY;
  uint8_t* _568;
  struct l_struct_struct_OC_btstack_linked_item* _569;
  struct l_struct_struct_OC_btstack_linked_item* _569__PHI_TEMPORARY;
  uint8_t* _570;
  struct l_struct_struct_OC_btstack_linked_item* _571;
  struct l_struct_struct_OC_btstack_linked_item** _572;
  struct l_struct_struct_OC_btstack_linked_item* _573;
  struct l_struct_struct_OC_btstack_linked_item* _574;
  struct l_struct_struct_OC_btstack_linked_item** _575;
  struct l_struct_struct_OC_btstack_linked_item* _576;
  struct l_struct_struct_OC_btstack_linked_item* _577;
  struct l_struct_struct_OC_btstack_linked_item* _577__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _578;
  struct l_struct_struct_OC_btstack_linked_item** _578__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _579;
  struct l_struct_struct_OC_btstack_linked_item* _579__PHI_TEMPORARY;
  uint32_t* _580;
  struct l_struct_struct_OC_btstack_linked_item* _581;
  struct l_struct_struct_OC_btstack_linked_item* _581__PHI_TEMPORARY;
  uint8_t* _582;
  uint32_t _583;
  struct l_struct_struct_OC_btstack_linked_item* _584;
  struct l_struct_struct_OC_btstack_linked_item* _585;
  struct l_struct_struct_OC_rfcomm_stack_t* _586;
  struct l_struct_struct_OC_btstack_linked_item* _587;

  _563 = rfcomm_stack;
  _564 = *((&_563->field2));
  if ((((_564 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _588;
  } else {
    goto _589;
  }

_589:
  _565__PHI_TEMPORARY = _564;   /* for PHI node */
  _566__PHI_TEMPORARY = _563;   /* for PHI node */
  _567__PHI_TEMPORARY = _564;   /* for PHI node */
  goto _590;

  do {     /* Syntactic loop '' to make GCC happy */
_590:
  _565 = _565__PHI_TEMPORARY;
  _566 = _566__PHI_TEMPORARY;
  _567 = _567__PHI_TEMPORARY;
  _568 = *(((uint8_t**)((&_567[((int32_t)12)]))));
  if ((((_565 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _591;
  } else {
    goto _592;
  }

_592:
  _569__PHI_TEMPORARY = _565;   /* for PHI node */
  goto _593;

  do {     /* Syntactic loop '' to make GCC happy */
_593:
  _569 = _569__PHI_TEMPORARY;
  _570 = *(((uint8_t**)((&_569[((int32_t)12)]))));
  if ((((_570 == _568)&1))) {
    goto _594;
  } else {
    goto _595;
  }

_594:
  *((&(((struct l_struct_struct_OC_rfc_channel_core_data_t*)((&_569[((int32_t)2)]))))->field10)) = 11;
  goto _595;

_595:
  _571 = *((&_569->field0));
  if ((((_571 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _596;
  } else {
    _569__PHI_TEMPORARY = _571;   /* for PHI node */
    goto _593;
  }

  } while (1); /* end of syntactic loop '' */
_596:
  goto _591;

_591:
  _572 = (&_566->field3);
  _573 = *_572;
  if ((((_573 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _597;
  } else {
    goto _598;
  }

_598:
  _574 = ((struct l_struct_struct_OC_btstack_linked_item*)_572);
  _577__PHI_TEMPORARY = _573;   /* for PHI node */
  _578__PHI_TEMPORARY = _572;   /* for PHI node */
  _579__PHI_TEMPORARY = _574;   /* for PHI node */
  goto _599;

  do {     /* Syntactic loop '' to make GCC happy */
_599:
  _577 = _577__PHI_TEMPORARY;
  _578 = _578__PHI_TEMPORARY;
  _579 = _579__PHI_TEMPORARY;
  _580 = ((uint32_t*)_579);
  _581__PHI_TEMPORARY = _577;   /* for PHI node */
  goto _600;

  do {     /* Syntactic loop '' to make GCC happy */
_600:
  _581 = _581__PHI_TEMPORARY;
  _582 = *(((uint8_t**)((&_581[((int32_t)3)]))));
  if ((((_582 == _568)&1))) {
    goto _601;
  } else {
    goto _602;
  }

_601:
  _583 = *(((uint32_t*)_581));
  *_580 = _583;
   /*tail*/ btstack_memory_rfcomm_service_free((((uint8_t*)_581)));
  _584 = *_578;
  if ((((_584 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _603;
  } else {
    _581__PHI_TEMPORARY = _584;   /* for PHI node */
    goto _600;
  }

  } while (1); /* end of syntactic loop '' */
_602:
  _575 = (&_581->field0);
  _576 = *_575;
  if ((((_576 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _604;
  } else {
    _577__PHI_TEMPORARY = _576;   /* for PHI node */
    _578__PHI_TEMPORARY = _575;   /* for PHI node */
    _579__PHI_TEMPORARY = _581;   /* for PHI node */
    goto _599;
  }

  } while (1); /* end of syntactic loop '' */
_604:
  goto _597;

_603:
  goto _597;

_597:
   /*tail*/ rfcomm_run();
  _585 = *((&_567->field0));
  if ((((_585 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _605;
  } else {
    goto _606;
  }

_606:
  _586 = rfcomm_stack;
  _587 = *((&_586->field2));
  _565__PHI_TEMPORARY = _587;   /* for PHI node */
  _566__PHI_TEMPORARY = _586;   /* for PHI node */
  _567__PHI_TEMPORARY = _585;   /* for PHI node */
  goto _590;

  } while (1); /* end of syntactic loop '' */
_605:
  goto _588;

_588:
  return;
}


void BQB_close_rfcomm_session(void) {
  struct l_struct_struct_OC_rfcomm_stack_t* _607;
  struct l_struct_struct_OC_btstack_linked_item* _608;
  struct l_struct_struct_OC_btstack_linked_item* _609;
  struct l_struct_struct_OC_btstack_linked_item* _609__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _610;
  uint8_t _611;
  uint32_t _612;
  struct l_struct_struct_OC_btstack_linked_item* _613;

  _607 = rfcomm_stack;
  _608 = *((&_607->field2));
  if ((((_608 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _614;
  } else {
    goto _615;
  }

_615:
  _609__PHI_TEMPORARY = _608;   /* for PHI node */
  goto _616;

  do {     /* Syntactic loop '' to make GCC happy */
_616:
  _609 = _609__PHI_TEMPORARY;
  _610 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_609[((int32_t)1)]))));
  _611 = *((&_610->field2.field3));
  _612 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_610, (llvm_or_u8((llvm_shl_u8(_611, 1)), 1)), 83u, 0, ((uint8_t*)/*NULL*/0), 0);
  _613 = *((&_609->field0));
  if ((((_613 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _617;
  } else {
    _609__PHI_TEMPORARY = _613;   /* for PHI node */
    goto _616;
  }

  } while (1); /* end of syntactic loop '' */
_617:
  goto _614;

_614:
  return;
}


static void rfcomm_send_disc(struct l_struct_struct_OC_rfcomm_multiplexer_t* _618, uint8_t _619) {
  uint8_t _620;
  uint32_t _621;

  _620 = *((&_618->field2.field3));
  _621 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_618, (llvm_or_u8((llvm_or_u8((llvm_shl_u8(_619, 2)), (llvm_shl_u8(_620, 1)))), 1)), 83u, 0, ((uint8_t*)/*NULL*/0), 0);
}


void l2cap_send_rfcomm_data(void) {
  uint16_t _622;
  uint32_t _623;

  _622 =  /*tail*/ l2cap_get_local_cid_via_psm(3);
  if ((((_622 == ((uint16_t)0))&1))) {
    goto _624;
  } else {
    goto _625;
  }

_625:
  _623 =  /*tail*/ l2cap_send_internal(_622, ((&_OC_str_OC_7.array[((int32_t)0)])), 4, 0);
  goto _624;

_624:
  return;
}


uint32_t rfc_channel_core_data_for_send(uint8_t* _626, uint16_t _627) {
  struct l_struct_struct_OC_rfcomm_stack_t* _628;
  struct l_struct_struct_OC_btstack_linked_item* _629;
  struct l_struct_struct_OC_btstack_linked_item* _630;
  struct l_struct_struct_OC_btstack_linked_item* _630__PHI_TEMPORARY;
  uint8_t _631;
  uint8_t _631__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _632;
  struct l_struct_struct_OC_rfc_channel_core_data_t* _633;
  uint16_t* _634;
  uint16_t _635;
  uint8_t _636;
  uint16_t _637;
  uint8_t _638;
  uint16_t _639;
  uint8_t _640;
  uint8_t _641;
  uint8_t _642;
  uint8_t _642__PHI_TEMPORARY;
  uint8_t* _643;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _644;
  uint8_t* _645;
  uint8_t* _646;
  uint8_t _647;
  struct l_struct_struct_OC_btstack_linked_item* _648;
  uint32_t _649;
  uint32_t _650;
  uint32_t _650__PHI_TEMPORARY;

  _628 = rfcomm_stack;
  _629 = *((&_628->field2));
  if ((((_629 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _650__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _651;
  } else {
    goto _652;
  }

_652:
  _630__PHI_TEMPORARY = _629;   /* for PHI node */
  _631__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _653;

  do {     /* Syntactic loop '' to make GCC happy */
_653:
  _630 = _630__PHI_TEMPORARY;
  _631 = _631__PHI_TEMPORARY;
  _632 = (&_630[((int32_t)2)]);
  _633 = ((struct l_struct_struct_OC_rfc_channel_core_data_t*)_632);
  _634 = ((uint16_t*)((&_630[((int32_t)4)])));
  _635 = *_634;
  _636 =  /*tail*/ hfp_check_conn_for_rfcomm_id(_635);
  if ((((_636 == ((uint8_t)0))&1))) {
    goto _654;
  } else {
    _642__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _655;
  }

_654:
  _637 = *_634;
  _638 =  /*tail*/ spp_check_conn_for_rfcomm_id(_637);
  if ((((_638 == ((uint8_t)0))&1))) {
    goto _656;
  } else {
    _642__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _655;
  }

_656:
  _639 = *_634;
  _640 =  /*tail*/ iap_check_conn_for_rfcomm_id(_639);
  _641 = llvm_select_u8((((_640 != ((uint8_t)0))&1)), 9, 0);
  _642__PHI_TEMPORARY = _641;   /* for PHI node */
  goto _655;

_655:
  _642 = _642__PHI_TEMPORARY;
  _643 = ((uint8_t*)_632);
  *_643 = _642;
  _644 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_630[((int32_t)1)]))));
  _645 = memcpy(((&_633->field1.array[((int32_t)0)])), ((&_644->field2.field0.array[((int32_t)0)])), 6);
  _646 = memcpy(((&_626[((int32_t)((llvm_mul_u32((((uint32_t)(uint8_t)_631)), 30)) | 1))])), _643, 30);
  _647 = llvm_add_u8(_631, 1);
  _648 = *((&_630->field0));
  if ((((_648 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _657;
  } else {
    _630__PHI_TEMPORARY = _648;   /* for PHI node */
    _631__PHI_TEMPORARY = _647;   /* for PHI node */
    goto _653;
  }

  } while (1); /* end of syntactic loop '' */
_657:
  if ((((_647 == ((uint8_t)0))&1))) {
    _650__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _651;
  } else {
    goto _658;
  }

_658:
  *_626 = _647;
  _649 = (llvm_mul_u32((((uint32_t)(uint8_t)_647)), 30)) | 1;
  _650__PHI_TEMPORARY = _649;   /* for PHI node */
  goto _651;

_651:
  _650 = _650__PHI_TEMPORARY;
  return _650;
}


void rfc_channel_core_data_for_set(uint8_t* _659, uint16_t _660) {
  uint8_t* _661;
  uint8_t _662;
  uint8_t _663;
  uint8_t _663__PHI_TEMPORARY;
  uint8_t* _664;
  struct l_struct_struct_OC_rfcomm_stack_t* _665;
  struct l_struct_struct_OC_btstack_linked_item* _666;
  uint8_t* _667;
  struct l_struct_struct_OC_btstack_linked_item* _668;
  struct l_struct_struct_OC_btstack_linked_item* _668__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _669;
  uint32_t _670;
  uint8_t _671;
  uint8_t _672;
  uint8_t _673;
  struct l_struct_struct_OC_rfcomm_stack_t* _674;
  struct l_struct_struct_OC_btstack_linked_item* _675;
  struct l_struct_struct_OC_btstack_linked_item* _676;
  struct l_struct_struct_OC_btstack_linked_item* _677;
  struct l_struct_struct_OC_btstack_linked_item* _677__PHI_TEMPORARY;
  uint8_t _678;
  uint8_t _679;
  uint32_t _680;
  struct l_struct_struct_OC_rfcomm_channel_t* _681;
  uint8_t _682;
  uint32_t _683;
  uint32_t _684;
  struct l_struct_struct_OC_rfcomm_stack_t* _685;
  struct l_struct_struct_OC_btstack_linked_item* _686;
  struct l_struct_struct_OC_btstack_linked_item* _687;
  struct l_struct_struct_OC_btstack_linked_item* _688;
  struct l_struct_struct_OC_btstack_linked_item* _688__PHI_TEMPORARY;
  uint8_t _689;
  struct l_struct_struct_OC_rfcomm_channel_t* _690;
  uint8_t _691;
  uint32_t _692;
  uint32_t _693;
  struct l_struct_struct_OC_rfcomm_channel_t* _694;
  struct l_struct_struct_OC_rfcomm_channel_t* _694__PHI_TEMPORARY;
  uint8_t _695;
  uint32_t _696;
  uint8_t* _697;
  uint8_t* _698;
  uint8_t _699;
  uint8_t _700;
  uint32_t _701;
  struct l_struct_struct_OC_btstack_linked_item* _702;
  uint8_t _703;
  uint8_t _704;

  _661 = (&_659[((int32_t)1)]);
  _662 = *_659;
  if ((((_662 == ((uint8_t)0))&1))) {
    goto _705;
  } else {
    goto _706;
  }

_706:
  _663__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _707;

  do {     /* Syntactic loop '' to make GCC happy */
_707:
  _663 = _663__PHI_TEMPORARY;
  _664 = (&_661[((int32_t)(llvm_mul_u32((((uint32_t)(uint8_t)_663)), 30)))]);
  _665 = rfcomm_stack;
  _666 = *((&_665->field1));
  if ((((_666 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _708;
  } else {
    goto _709;
  }

_709:
  _667 = (&_664[((int32_t)1)]);
  _668__PHI_TEMPORARY = _666;   /* for PHI node */
  goto _710;

  do {     /* Syntactic loop '' to make GCC happy */
_710:
  _668 = _668__PHI_TEMPORARY;
  _669 = ((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_668);
  _670 =  /*tail*/ memcmp(_667, ((&_669->field2.field0.array[((int32_t)0)])), 6);
  if ((((_670 == 0u)&1))) {
    goto _711;
  } else {
    goto _712;
  }

_711:
  _671 = *_664;
  _672 = *((&_669->field2.field5));
  if ((((_672 == ((uint8_t)0))&1))) {
    goto _713;
  } else {
    goto _714;
  }

_714:
  _673 = llvm_lshr_u8(_672, 1);
  _674 = rfcomm_stack;
  _675 = *((&_674->field3));
  if ((((_675 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _715;
  } else {
    goto _716;
  }

_716:
  _677__PHI_TEMPORARY = _675;   /* for PHI node */
  goto _717;

  do {     /* Syntactic loop '' to make GCC happy */
_717:
  _677 = _677__PHI_TEMPORARY;
  _678 = *(((uint8_t*)((&_677[((int32_t)1)]))));
  if ((((_678 == _673)&1))) {
    goto _718;
  } else {
    goto _719;
  }

_719:
  _676 = *((&_677->field0));
  if ((((_676 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _720;
  } else {
    _677__PHI_TEMPORARY = _676;   /* for PHI node */
    goto _717;
  }

  } while (1); /* end of syntactic loop '' */
_720:
  goto _715;

_718:
  _681 =  /*tail*/ rfcomm_channel_create(_669, (((struct l_struct_struct_OC_rfcomm_service_t*)_677)), _673);
  if ((((_681 == ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0))&1))) {
    goto _721;
  } else {
    goto _722;
  }

_722:
  _684 = *(((uint32_t*)((&_677[((int32_t)3)]))));
  *(((uint32_t*)((&_681->field6)))) = _684;
  _694__PHI_TEMPORARY = _681;   /* for PHI node */
  goto _723;

_721:
  _682 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_682, 4)) == ((uint8_t)0))&1))) {
    goto _712;
  } else {
    goto _724;
  }

_724:
  _683 =  /*tail*/ puts(((&str_OC_21.array[((int32_t)0)])));
  goto _712;

_715:
  _679 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_679, 4)) == ((uint8_t)0))&1))) {
    goto _712;
  } else {
    goto _725;
  }

_725:
  _680 =  /*tail*/ printf(((&_OC_str_OC_12.array[((int32_t)0)])), (((uint32_t)(uint8_t)_672)));
  goto _712;

_713:
  _685 = rfcomm_stack;
  _686 = *((&_685->field3));
  if ((((_686 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _712;
  } else {
    goto _726;
  }

_726:
  _688__PHI_TEMPORARY = _686;   /* for PHI node */
  goto _727;

  do {     /* Syntactic loop '' to make GCC happy */
_727:
  _688 = _688__PHI_TEMPORARY;
  _689 = *(((uint8_t*)((&_688[((int32_t)1)]))));
  if ((((_689 == _671)&1))) {
    goto _728;
  } else {
    goto _729;
  }

_729:
  _687 = *((&_688->field0));
  if ((((_687 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _730;
  } else {
    _688__PHI_TEMPORARY = _687;   /* for PHI node */
    goto _727;
  }

  } while (1); /* end of syntactic loop '' */
_730:
  goto _712;

_728:
  _690 =  /*tail*/ rfcomm_channel_create(_669, ((struct l_struct_struct_OC_rfcomm_service_t*)/*NULL*/0), _671);
  if ((((_690 == ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0))&1))) {
    goto _731;
  } else {
    goto _732;
  }

_732:
  *((&_690->field6)) = ((uint8_t*)/*NULL*/0);
  _693 = *(((uint32_t*)((&_688[((int32_t)4)]))));
  *(((uint32_t*)((&_690->field5)))) = _693;
  _694__PHI_TEMPORARY = _690;   /* for PHI node */
  goto _723;

_723:
  _694 = _694__PHI_TEMPORARY;
  _695 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_695, 1)) == ((uint8_t)0))&1))) {
    goto _733;
  } else {
    goto _734;
  }

_734:
  _696 =  /*tail*/ printf(((&_OC_str_OC_15.array[((int32_t)0)])), 30, 30);
  goto _733;

_733:
  _697 = (&_694->field2.field0);
  _698 = memcpy(_697, _664, 30);
  _699 = *_697;
  if ((((_699 == ((uint8_t)0))&1))) {
    goto _712;
  } else {
    goto _735;
  }

_735:
  _700 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_700, 1)) == ((uint8_t)0))&1))) {
    goto _736;
  } else {
    goto _737;
  }

_737:
  _701 =  /*tail*/ puts(((&str_OC_20.array[((int32_t)0)])));
  goto _736;

_736:
   /*tail*/ rfcomm_emit_channel_opened(_694, 117u);
  goto _712;

_731:
  _691 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_691, 4)) == ((uint8_t)0))&1))) {
    goto _712;
  } else {
    goto _738;
  }

_738:
  _692 =  /*tail*/ puts(((&str_OC_19.array[((int32_t)0)])));
  goto _712;

_712:
  _702 = *((&_668->field0));
  if ((((_702 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _739;
  } else {
    _668__PHI_TEMPORARY = _702;   /* for PHI node */
    goto _710;
  }

  } while (1); /* end of syntactic loop '' */
_739:
  goto _708;

_708:
  _703 = llvm_add_u8(_663, 1);
  _704 = *_659;
  if ((((((uint8_t)_703) < ((uint8_t)_704))&1))) {
    _663__PHI_TEMPORARY = _703;   /* for PHI node */
    goto _707;
  } else {
    goto _740;
  }

  } while (1); /* end of syntactic loop '' */
_740:
  goto _705;

_705:
  return;
}


uint32_t rfc_multiplexer_core_data_for_send(uint8_t* _741, uint16_t _742) {
  struct l_struct_struct_OC_rfcomm_stack_t* _743;
  struct l_struct_struct_OC_btstack_linked_item* _744;
  struct l_struct_struct_OC_btstack_linked_item* _745;
  struct l_struct_struct_OC_btstack_linked_item* _745__PHI_TEMPORARY;
  uint8_t _746;
  uint8_t _746__PHI_TEMPORARY;
  uint8_t* _747;
  uint8_t _748;
  struct l_struct_struct_OC_btstack_linked_item* _749;
  uint32_t _750;
  uint32_t _751;
  uint32_t _751__PHI_TEMPORARY;

  _743 = rfcomm_stack;
  _744 = *((&_743->field1));
  if ((((_744 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _751__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _752;
  } else {
    goto _753;
  }

_753:
  _745__PHI_TEMPORARY = _744;   /* for PHI node */
  _746__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _754;

  do {     /* Syntactic loop '' to make GCC happy */
_754:
  _745 = _745__PHI_TEMPORARY;
  _746 = _746__PHI_TEMPORARY;
  _747 = memcpy(((&_741[((int32_t)((llvm_mul_u32((((uint32_t)(uint8_t)_746)), 14)) | 1))])), ((&(((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_745))->field2.field0.array[((int32_t)0)])), 14);
  _748 = llvm_add_u8(_746, 1);
  _749 = *((&_745->field0));
  if ((((_749 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _755;
  } else {
    _745__PHI_TEMPORARY = _749;   /* for PHI node */
    _746__PHI_TEMPORARY = _748;   /* for PHI node */
    goto _754;
  }

  } while (1); /* end of syntactic loop '' */
_755:
  if ((((_748 == ((uint8_t)0))&1))) {
    _751__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _752;
  } else {
    goto _756;
  }

_756:
  *_741 = _748;
  _750 = (llvm_mul_u32((((uint32_t)(uint8_t)_748)), 14)) | 1;
  _751__PHI_TEMPORARY = _750;   /* for PHI node */
  goto _752;

_752:
  _751 = _751__PHI_TEMPORARY;
  return _751;
}


void rfc_multiplexer_core_data_for_set(uint8_t* _757, uint16_t _758) {
  uint8_t* _759;
  uint8_t _760;
  struct l_struct_struct_OC_rfcomm_stack_t* _761;
  struct l_struct_struct_OC_btstack_linked_item** _762;
  uint8_t _763;
  uint8_t _763__PHI_TEMPORARY;
  uint8_t* _764;
  struct l_struct_struct_OC_btstack_linked_item* _765;
  struct l_struct_struct_OC_btstack_linked_item* _766;
  struct l_struct_struct_OC_btstack_linked_item* _766__PHI_TEMPORARY;
  uint8_t* _767;
  uint32_t _768;
  uint8_t* _769;
  struct l_struct_struct_OC_btstack_linked_item* _770;
  uint8_t _771;
  uint8_t _772;

  _759 = (&_757[((int32_t)1)]);
  _760 = *_757;
  if ((((_760 == ((uint8_t)0))&1))) {
    goto _773;
  } else {
    goto _774;
  }

_774:
  _761 = rfcomm_stack;
  _762 = (&_761->field1);
  _763__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _775;

  do {     /* Syntactic loop '' to make GCC happy */
_775:
  _763 = _763__PHI_TEMPORARY;
  _764 = (&_759[((int32_t)(llvm_mul_u32((((uint32_t)(uint8_t)_763)), 14)))]);
  _765 = *_762;
  if ((((_765 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _776;
  } else {
    goto _777;
  }

_777:
  _766__PHI_TEMPORARY = _765;   /* for PHI node */
  goto _778;

  do {     /* Syntactic loop '' to make GCC happy */
_778:
  _766 = _766__PHI_TEMPORARY;
  _767 = (&(((struct l_struct_struct_OC_rfcomm_multiplexer_t*)_766))->field2.field0.array[((int32_t)0)]);
  _768 =  /*tail*/ memcmp(_764, _767, 6);
  if ((((_768 == 0u)&1))) {
    goto _779;
  } else {
    goto _780;
  }

_779:
  _769 = memcpy(_767, _764, 14);
  goto _780;

_780:
  _770 = *((&_766->field0));
  if ((((_770 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _781;
  } else {
    _766__PHI_TEMPORARY = _770;   /* for PHI node */
    goto _778;
  }

  } while (1); /* end of syntactic loop '' */
_781:
  goto _776;

_776:
  _771 = llvm_add_u8(_763, 1);
  _772 = *_757;
  if ((((((uint8_t)_771) < ((uint8_t)_772))&1))) {
    _763__PHI_TEMPORARY = _771;   /* for PHI node */
    goto _775;
  } else {
    goto _782;
  }

  } while (1); /* end of syntactic loop '' */
_782:
  goto _773;

_773:
  return;
}


static uint32_t rfcomm_send_packet_for_multiplexer(struct l_struct_struct_OC_rfcomm_multiplexer_t* _783, uint8_t _784, uint8_t _785, uint8_t _786, uint8_t* _787, uint16_t _788) {
  uint16_t* _789;
  uint16_t _790;
  uint32_t _791;
  uint32_t _792;
  uint8_t* _793;
  uint8_t* _794;
  uint8_t _795;
  uint8_t _796;
  uint8_t _797;
  uint32_t _798;
  uint32_t _798__PHI_TEMPORARY;
  uint8_t _799;
  uint8_t _799__PHI_TEMPORARY;
  uint16_t _800;
  uint16_t _800__PHI_TEMPORARY;
  uint16_t _801;
  uint16_t _802;
  uint16_t _802__PHI_TEMPORARY;
  uint8_t* _803;
  uint16_t _804;
  uint16_t _805;
  uint16_t _805__PHI_TEMPORARY;
  uint8_t _806;
  uint16_t _807;
  uint8_t* _808;
  uint8_t _809;
  uint8_t _810;
  uint8_t _811;
  uint8_t _811__PHI_TEMPORARY;
  uint16_t _812;
  uint32_t _813;
  uint8_t _814;
  uint32_t _815;
  uint32_t _815__PHI_TEMPORARY;

  _789 = (&_783->field2.field1);
  _790 = *_789;
  _791 =  /*tail*/ l2cap_can_send_packet_now(_790);
  if ((((_791 == 0u)&1))) {
    _815__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _816;
  } else {
    goto _817;
  }

_817:
  _792 = ((uint32_t)(uint16_t)_788);
  _793 =  /*tail*/ hci_get_outgoing_acl_packet_buffer((llvm_add_u16(_788, 16)));
  _794 = (&_793[((int32_t)8)]);
  *_794 = _784;
  *((&_793[((int32_t)9)])) = _785;
  _795 = llvm_shl_u8((((uint8_t)_788)), 1);
  if ((((((uint16_t)_788) < ((uint16_t)((uint16_t)128)))&1))) {
    goto _818;
  } else {
    goto _819;
  }

_818:
  _796 = llvm_or_u8(_795, 1);
  _798__PHI_TEMPORARY = 10;   /* for PHI node */
  _799__PHI_TEMPORARY = _796;   /* for PHI node */
  _800__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _820;

_819:
  *((&_793[((int32_t)10)])) = _795;
  _797 = ((uint8_t)(llvm_lshr_u16(_788, 7)));
  _798__PHI_TEMPORARY = 11;   /* for PHI node */
  _799__PHI_TEMPORARY = _797;   /* for PHI node */
  _800__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _820;

_820:
  _798 = _798__PHI_TEMPORARY;
  _799 = _799__PHI_TEMPORARY;
  _800 = _800__PHI_TEMPORARY;
  *((&_793[((int32_t)_798)])) = _799;
  if ((((_785 == ((uint8_t)-1))&1))) {
    goto _821;
  } else {
    _802__PHI_TEMPORARY = _800;   /* for PHI node */
    goto _822;
  }

_821:
  _801 = llvm_add_u16(_800, 1);
  *((&_794[((int32_t)(((uint32_t)(uint16_t)_800)))])) = _786;
  _802__PHI_TEMPORARY = _801;   /* for PHI node */
  goto _822;

_822:
  _802 = _802__PHI_TEMPORARY;
  if ((((_788 == ((uint16_t)0))&1))) {
    _805__PHI_TEMPORARY = _802;   /* for PHI node */
    goto _823;
  } else {
    goto _824;
  }

_824:
  _803 = memcpy(((&_794[((int32_t)(((uint32_t)(uint16_t)_802)))])), _787, _792);
  _804 = llvm_add_u16(_802, _788);
  _805__PHI_TEMPORARY = _804;   /* for PHI node */
  goto _823;

_823:
  _805 = _805__PHI_TEMPORARY;
  _806 =  /*tail*/ crc8_calc(_794, (llvm_select_u16(((((llvm_and_u8(_785, -17)) == ((uint8_t)-17))&1)), 2, _800)));
  _807 = llvm_add_u16(_805, 1);
  *((&_794[((int32_t)(((uint32_t)(uint16_t)_805)))])) = _806;
  _808 = (&_783->field2.field2);
  _809 = *_808;
  _810 = llvm_lshr_u8(_809, 4);
  if ((((_810 == ((uint8_t)0))&1))) {
    _811__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _825;
  } else {
    goto _826;
  }

_826:
  *_808 = (llvm_or_u8((llvm_add_u8((llvm_shl_u8(_810, 4)), -16)), (llvm_and_u8(_809, 15))));
  _811__PHI_TEMPORARY = 16;   /* for PHI node */
  goto _825;

_825:
  _811 = _811__PHI_TEMPORARY;
  _812 = *_789;
  _813 =  /*tail*/ l2cap_send_prepared(_793, _812, _807, 0);
  if ((((_813 == 0u)&1))) {
    _815__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _816;
  } else {
    goto _827;
  }

_827:
  _814 = *_808;
  *_808 = (llvm_add_u8(_814, _811));
  _815__PHI_TEMPORARY = _813;   /* for PHI node */
  goto _816;

_816:
  _815 = _815__PHI_TEMPORARY;
  return _815;
}


static void rfcomm_emit_channel_opened(struct l_struct_struct_OC_rfcomm_channel_t* _828, uint8_t _829) {
  struct l_array_16_uint8_t _830;    /* Address-exposed local */
  uint8_t* _831;
  struct l_struct_struct_OC_rfcomm_multiplexer_t** _832;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _833;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _834;
  uint16_t _835;
  uint8_t _836;
  uint16_t _837;
  uint16_t _838;

  _831 = (&_830.array[((int32_t)0)]);
  *_831 = (llvm_select_u8((((_829 == ((uint8_t)117))&1)), 137u, 128u));
  *((&_830.array[((int32_t)1)])) = 14;
  *((&_830.array[((int32_t)2)])) = (llvm_select_u8((((_829 == ((uint8_t)117))&1)), 0, _829));
  _832 = (&_828->field1);
  _833 = *_832;
  bt_flip_addr(((&_830.array[((int32_t)3)])), ((&_833->field2.field0.array[((int32_t)0)])));
  _834 = *_832;
  _835 = *((&_834->field2.field6));
  bt_store_16(_831, 9, _835);
  _836 = *((&_828->field2.field4));
  *((&_830.array[((int32_t)11)])) = (llvm_lshr_u8(_836, 1));
  _837 = *((&_828->field2.field2));
  bt_store_16(_831, 12, _837);
  _838 = *((&_828->field3));
  bt_store_16(_831, 14, _838);
  rfcomm_channel_dispatch(_828, 4, _831, 16);
}


static void rfcomm_multiplexer_free(struct l_struct_struct_OC_rfcomm_multiplexer_t* _839) {
  struct l_struct_struct_OC_rfcomm_stack_t* _840;
  uint32_t _841;

  _840 = rfcomm_stack;
  _841 =  /*tail*/ btstack_linked_list_remove(((&_840->field1)), ((&_839->field0)));
   /*tail*/ btstack_memory_rfcomm_multiplexer_free((((uint8_t*)_839)));
}


static void rfcomm_hand_out_credits(void) {
  struct l_array_5_uint8_t _842;    /* Address-exposed local */
  struct l_struct_struct_OC_rfcomm_stack_t* _843;
  struct l_struct_struct_OC_btstack_linked_item* _844;
  uint8_t* _845;
  uint8_t* _846;
  uint8_t* _847;
  struct l_struct_struct_OC_btstack_linked_item* _848;
  struct l_struct_struct_OC_btstack_linked_item* _848__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_channel_t* _849;
  struct l_struct_struct_OC_rfc_channel_core_data_t* _850;
  uint8_t _851;
  uint8_t _852;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _853;
  uint8_t _854;
  uint8_t* _855;
  uint8_t _856;
  uint16_t _857;
  struct l_struct_struct_OC_btstack_linked_item* _858;

  _843 = rfcomm_stack;
  _844 = *((&_843->field2));
  if ((((_844 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _859;
  } else {
    goto _860;
  }

_860:
  _845 = (&_842.array[((int32_t)0)]);
  _846 = (&_842.array[((int32_t)1)]);
  _847 = (&_842.array[((int32_t)4)]);
  _848__PHI_TEMPORARY = _844;   /* for PHI node */
  goto _861;

  do {     /* Syntactic loop '' to make GCC happy */
_861:
  _848 = _848__PHI_TEMPORARY;
  _849 = ((struct l_struct_struct_OC_rfcomm_channel_t*)_848);
  _850 = ((struct l_struct_struct_OC_rfc_channel_core_data_t*)((&_848[((int32_t)2)])));
  _851 = *((&_850->field10));
  if ((((_851 == ((uint8_t)9))&1))) {
    goto _862;
  } else {
    goto _863;
  }

_862:
  _852 = *((&_850->field6));
  if ((((_852 == ((uint8_t)0))&1))) {
    goto _863;
  } else {
    goto _864;
  }

_864:
  _853 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_848[((int32_t)1)]))));
  _854 = *((&_853->field2.field2));
  if ((((((uint8_t)_854) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _865;
  } else {
    goto _863;
  }

_865:
  _855 = ((uint8_t*)((&_848[((int32_t)5)])));
  _856 = *_855;
  *_855 = (llvm_add_u8(_856, 1));
  *_845 = 132u;
  *_846 = 3;
  _857 = *(((uint16_t*)((&_848[((int32_t)4)]))));
  bt_store_16(_845, 2, _857);
  *_847 = 1;
  rfcomm_channel_dispatch(_849, 4, _845, 5);
  goto _863;

_863:
  _858 = *((&_848->field0));
  if ((((_858 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _866;
  } else {
    _848__PHI_TEMPORARY = _858;   /* for PHI node */
    goto _861;
  }

  } while (1); /* end of syntactic loop '' */
_866:
  goto _859;

_859:
  return;
}


static void rfcomm_multiplexer_finalize(struct l_struct_struct_OC_rfcomm_multiplexer_t* _867) {
  struct l_struct_struct_OC_rfcomm_stack_t* _868;
  struct l_struct_struct_OC_btstack_linked_item** _869;
  struct l_struct_struct_OC_btstack_linked_item* _870;
  struct l_struct_struct_OC_btstack_linked_item* _871;
  struct l_struct_struct_OC_btstack_linked_item** _872;
  struct l_struct_struct_OC_btstack_linked_item* _873;
  struct l_struct_struct_OC_btstack_linked_item* _874;
  struct l_struct_struct_OC_btstack_linked_item* _874__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _875;
  struct l_struct_struct_OC_btstack_linked_item** _875__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _876;
  struct l_struct_struct_OC_btstack_linked_item* _876__PHI_TEMPORARY;
  uint32_t** _877;
  uint32_t* _878;
  struct l_struct_struct_OC_btstack_linked_item* _879;
  struct l_struct_struct_OC_btstack_linked_item* _879__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_channel_t* _880;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _881;
  uint8_t _882;
  uint32_t* _883;
  uint32_t _884;
  struct l_struct_struct_OC_btstack_linked_item* _885;
  uint16_t _886;

  _868 = rfcomm_stack;
  _869 = (&_868->field2);
  _870 = *_869;
  if ((((_870 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _887;
  } else {
    goto _888;
  }

_888:
  _871 = ((struct l_struct_struct_OC_btstack_linked_item*)_869);
  _874__PHI_TEMPORARY = _870;   /* for PHI node */
  _875__PHI_TEMPORARY = _869;   /* for PHI node */
  _876__PHI_TEMPORARY = _871;   /* for PHI node */
  goto _889;

  do {     /* Syntactic loop '' to make GCC happy */
_889:
  _874 = _874__PHI_TEMPORARY;
  _875 = _875__PHI_TEMPORARY;
  _876 = _876__PHI_TEMPORARY;
  _877 = ((uint32_t**)_876);
  _878 = ((uint32_t*)_876);
  _879__PHI_TEMPORARY = _874;   /* for PHI node */
  goto _890;

  do {     /* Syntactic loop '' to make GCC happy */
_890:
  _879 = _879__PHI_TEMPORARY;
  _880 = ((struct l_struct_struct_OC_rfcomm_channel_t*)_879);
  _881 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_879[((int32_t)1)]))));
  if ((((_881 == _867)&1))) {
    goto _891;
  } else {
    goto _892;
  }

_891:
  _882 = *((&(((struct l_struct_struct_OC_rfc_channel_core_data_t*)((&_879[((int32_t)2)]))))->field10));
  if ((((_882 == ((uint8_t)9))&1))) {
    goto _893;
  } else {
    goto _894;
  }

_894:
   /*tail*/ rfcomm_emit_channel_opened(_880, 112u);
  goto _895;

_893:
   /*tail*/ rfcomm_emit_channel_closed(_880);
  goto _895;

_895:
  _883 = *_877;
  _884 = *_883;
  *_878 = _884;
   /*tail*/ btstack_memory_rfcomm_channel_free((((uint8_t*)_879)));
  _885 = *_875;
  if ((((_885 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _896;
  } else {
    _879__PHI_TEMPORARY = _885;   /* for PHI node */
    goto _890;
  }

  } while (1); /* end of syntactic loop '' */
_892:
  _872 = (&_879->field0);
  _873 = *_872;
  if ((((_873 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _897;
  } else {
    _874__PHI_TEMPORARY = _873;   /* for PHI node */
    _875__PHI_TEMPORARY = _872;   /* for PHI node */
    _876__PHI_TEMPORARY = _879;   /* for PHI node */
    goto _889;
  }

  } while (1); /* end of syntactic loop '' */
_896:
  goto _887;

_897:
  goto _887;

_887:
  _886 = *((&_867->field2.field1));
   /*tail*/ rfcomm_multiplexer_free(_867);
   /*tail*/ l2cap_disconnect_internal(_886, 19);
}


static void rfcomm_channel_dispatch(struct l_struct_struct_OC_rfcomm_channel_t* _898, uint8_t _899, uint8_t* _900, uint16_t _901) {
  l_fptr_2* _902;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _903;
  uint16_t _904;
  struct l_struct_struct_OC_rfcomm_stack_t* _905;
  l_fptr_4* _906;
  uint8_t* _907;
  uint16_t _908;

  _902 = *((&_898->field5));
  if ((((_902 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _909;
  } else {
    goto _910;
  }

_910:
  _903 = *((&_898->field1));
  _904 = *((&_903->field2.field1));
   /*tail*/ _902(_899, _904, _900, _901);
  goto _911;

_909:
  _905 = rfcomm_stack;
  _906 = *((&_905->field0));
  _907 = *((&_898->field6));
  _908 = *((&_898->field2.field2));
   /*tail*/ _906(_907, _899, _908, _900, _901);
  goto _911;

_911:
  return;
}


static void rfcomm_emit_channel_closed(struct l_struct_struct_OC_rfcomm_channel_t* _912) {
  struct l_array_4_uint8_t _913;    /* Address-exposed local */
  uint8_t* _914;
  uint16_t _915;

  _914 = (&_913.array[((int32_t)0)]);
  *_914 = 129u;
  *((&_913.array[((int32_t)1)])) = 2;
  _915 = *((&_912->field2.field2));
  bt_store_16(_914, 2, _915);
  rfcomm_channel_dispatch(_912, 4, _914, 4);
}


static void rfcomm_multiplexer_opened(struct l_struct_struct_OC_rfcomm_multiplexer_t* _916) {
  struct l_struct_struct_OC_rfcomm_channel_event _917;    /* Address-exposed local */
  uint8_t* _918;
  uint8_t _919;
  uint32_t _920;
  uint8_t* _921;
  uint8_t _922;
  struct l_struct_struct_OC_rfcomm_stack_t* _923;
  struct l_struct_struct_OC_btstack_linked_item* _924;
  struct l_struct_struct_OC_btstack_linked_item* _925;
  struct l_struct_struct_OC_btstack_linked_item* _925__PHI_TEMPORARY;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _926;
  struct l_struct_struct_OC_btstack_linked_item* _927;

  _918 = ((uint8_t*)(&_917));
  *((&_917.field0)) = 12;
  _919 = rfcomm_debug_enable;
  if (((((llvm_and_u8(_919, 1)) == ((uint8_t)0))&1))) {
    goto _928;
  } else {
    goto _929;
  }

_929:
  _920 =  /*tail*/ puts(((&str_OC_24.array[((int32_t)0)])));
  goto _928;

_928:
  _921 = (&_916->field2.field2);
  _922 = *_921;
  *_921 = (llvm_or_u8((llvm_and_u8(_922, -16)), 7));
  _923 = rfcomm_stack;
  _924 = *((&_923->field2));
  if ((((_924 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _930;
  } else {
    goto _931;
  }

_931:
  _925__PHI_TEMPORARY = _924;   /* for PHI node */
  goto _932;

  do {     /* Syntactic loop '' to make GCC happy */
_932:
  _925 = _925__PHI_TEMPORARY;
  _926 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_925[((int32_t)1)]))));
  if ((((_926 == _916)&1))) {
    goto _933;
  } else {
    goto _934;
  }

_933:
  rfcomm_channel_state_machine((((struct l_struct_struct_OC_rfcomm_channel_t*)_925)), (&_917));
  goto _934;

_934:
  _927 = *((&_925->field0));
  if ((((_927 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _935;
  } else {
    _925__PHI_TEMPORARY = _927;   /* for PHI node */
    goto _932;
  }

  } while (1); /* end of syntactic loop '' */
_935:
  goto _930;

_930:
   /*tail*/ rfcomm_run();
}


static void rfcomm_channel_state_machine(struct l_struct_struct_OC_rfcomm_channel_t* _936, struct l_struct_struct_OC_rfcomm_channel_event* _937) {
  struct l_array_4_uint8_t _938;    /* Address-exposed local */
  struct l_array_10_uint8_t _939;    /* Address-exposed local */
  struct l_array_1_uint8_t _940;    /* Address-exposed local */
  struct l_struct_struct_OC_rfcomm_multiplexer_t** _941;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _942;
  uint32_t _943;
  uint8_t* _944;
  uint16_t* _945;
  uint16_t _946;
  uint16_t* _947;
  uint16_t _948;
  uint16_t* _949;
  uint16_t _950;
  uint8_t _951;
  uint8_t* _952;
  uint8_t _953;
  uint8_t _954;
  uint8_t _955;
  uint8_t _956;
  uint8_t _957;
  uint8_t _958;
  uint8_t _959;
  uint8_t _960;
  uint32_t _961;
  struct l_struct_struct_OC_rfcomm_channel_event_pn* _962;
  uint8_t* _963;
  uint8_t _964;
  uint16_t* _965;
  uint16_t _966;
  uint16_t* _967;
  uint16_t _968;
  uint16_t* _969;
  uint16_t _970;
  uint16_t* _971;
  uint16_t _972;
  uint16_t* _973;
  uint16_t _974;
  uint32_t _975;
  uint8_t _976;
  uint8_t _977;
  uint16_t _978;
  uint8_t* _979;
  uint8_t _980;
  uint32_t _981;
  uint8_t _982;
  uint16_t _983;
  uint8_t _984;
  uint16_t _985;
  uint8_t* _986;
  uint8_t _987;
  uint32_t _988;
  uint16_t* _989;
  uint16_t _990;
  uint16_t _991;
  uint8_t _992;
  uint8_t _993;
  uint8_t _994;
  uint32_t _995;
  uint16_t* _996;
  uint16_t _997;
  uint16_t* _998;
  uint16_t* _999;
  uint16_t _1000;
  uint16_t* _1001;
  uint16_t _1002;
  uint16_t* _1003;
  uint16_t _1004;
  uint32_t _1005;
  uint8_t _1006;
  uint8_t _1007;
  uint8_t* _1008;
  uint32_t _1009;
  uint8_t _1010;
  uint8_t* _1011;
  uint8_t _1012;
  uint16_t* _1013;
  uint16_t* _1013__PHI_TEMPORARY;
  uint16_t _1014;
  uint8_t _1015;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _1016;
  uint16_t* _1017;
  uint16_t _1018;
  uint16_t* _1019;
  uint16_t _1020;
  uint8_t _1021;
  uint8_t* _1022;
  uint8_t _1023;
  uint8_t* _1024;
  uint8_t _1025;
  uint8_t _1026;
  uint8_t _1027;

  _941 = (&_936->field1);
  _942 = *_941;
  _943 = *((&_937->field0));
  switch (_943) {
  default:
    goto _1028;
  case 5u:
    goto _1029;
  case 6u:
    goto _1030;
  case 9u:
    goto _1031;
  case 10u:
    goto _1032;
  case 13u:
    goto _1033;
  }

_1029:
   /*tail*/ rfcomm_emit_channel_closed(_936);
  *((&_936->field2.field10)) = 10;
  goto _1034;

_1030:
   /*tail*/ rfcomm_emit_channel_closed(_936);
   /*tail*/ rfcomm_channel_finalize(_936);
  goto _1034;

_1031:
  _944 = memcpy(((&_936->field2.field13.field0)), (((uint8_t*)((&_937[((int32_t)1)])))), 7);
  _945 = (&_936->field2.field12);
  _946 = *_945;
  *_945 = (llvm_or_u16(_946, 256));
  goto _1034;

_1032:
  *((&_936->field2.field13.field0)) = 160u;
  *((&_936->field2.field13.field1)) = 3;
  *((&_936->field2.field13.field2)) = 0;
  *((&_936->field2.field13.field3)) = -47;
  *((&_936->field2.field13.field4)) = -45;
  *((&_936->field2.field13.field5)) = 127u;
  *((&_936->field2.field13.field6)) = 63;
  _947 = (&_936->field2.field12);
  _948 = *_947;
  *_947 = (llvm_or_u16(_948, 256));
  goto _1034;

_1033:
  _949 = (&_936->field2.field12);
  _950 = *_949;
  if (((((llvm_and_u16(_950, 256)) == ((uint16_t)0))&1))) {
    goto _1028;
  } else {
    goto _1035;
  }

_1035:
  *_949 = (llvm_and_u16(_950, -257));
  _951 = *((&_936->field2.field4));
  _952 = (&_939.array[((int32_t)0)]);
  _953 = *((&_942->field2.field3));
  *_952 = 145u;
  *((&_939.array[((int32_t)1)])) = 17;
  *((&_939.array[((int32_t)2)])) = (llvm_or_u8((llvm_shl_u8(_951, 2)), 3));
  _954 = *((&_936->field2.field13.field0));
  *((&_939.array[((int32_t)3)])) = _954;
  _955 = *((&_936->field2.field13.field1));
  *((&_939.array[((int32_t)4)])) = _955;
  _956 = *((&_936->field2.field13.field2));
  *((&_939.array[((int32_t)5)])) = _956;
  _957 = *((&_936->field2.field13.field3));
  *((&_939.array[((int32_t)6)])) = _957;
  _958 = *((&_936->field2.field13.field4));
  *((&_939.array[((int32_t)7)])) = _958;
  _959 = *((&_936->field2.field13.field5));
  *((&_939.array[((int32_t)8)])) = _959;
  _960 = *((&_936->field2.field13.field6));
  *((&_939.array[((int32_t)9)])) = _960;
  _961 = rfcomm_send_packet_for_multiplexer(_942, (llvm_or_u8((llvm_shl_u8(_953, 1)), 1)), -17, 0, _952, 10);
  goto _1034;

_1028:
  _962 = ((struct l_struct_struct_OC_rfcomm_channel_event_pn*)_937);
  _963 = (&_936->field2.field10);
  _964 = *_963;
  switch (_964) {
  default:
    goto _1034;
  case ((uint8_t)1):
    goto _1036;
  case ((uint8_t)7):
    goto _1037;
  case ((uint8_t)2):
    goto _1038;
  case ((uint8_t)3):
    goto _1039;
  case ((uint8_t)4):
    goto _1040;
  case ((uint8_t)5):
    goto _1041;
  case ((uint8_t)6):
    goto _1042;
  case ((uint8_t)8):
    goto _1043;
  case ((uint8_t)9):
    goto _1044;
  case ((uint8_t)12):
    goto _1045;
  case ((uint8_t)11):
    goto _1046;
  case ((uint8_t)10):
    goto _1047;
  }

_1036:
  switch (_943) {
  default:
    goto _1034;
  case 1u:
    goto _1048;
  case 3u:
    goto _1049;
  }

_1048:
  _965 = (&_936->field2.field12);
  _966 = *_965;
  *_965 = (llvm_or_u16(_966, 8));
  *_963 = 7;
   /*tail*/ rfcomm_emit_connection_request(_936);
  goto _1034;

_1049:
   /*tail*/ rfcomm_channel_accept_pn(_936, _962);
  _967 = (&_936->field2.field12);
  _968 = *_967;
  *_967 = (llvm_or_u16(_968, 2));
  *_963 = 7;
   /*tail*/ rfcomm_emit_connection_request(_936);
  goto _1034;

_1037:
  switch (_943) {
  default:
    goto _1034;
  case 1u:
    goto _1050;
  case 3u:
    goto _1051;
  case 13u:
    goto _1052;
  }

_1050:
  _969 = (&_936->field2.field12);
  _970 = *_969;
  *_969 = (llvm_or_u16(_970, 8));
  if (((((llvm_and_u16(_970, 1)) == ((uint16_t)0))&1))) {
    goto _1034;
  } else {
    goto _1053;
  }

_1053:
  *_969 = (llvm_or_u16(_970, 520));
  goto _1034;

_1051:
   /*tail*/ rfcomm_channel_accept_pn(_936, _962);
  _971 = (&_936->field2.field12);
  _972 = *_971;
  *_971 = (llvm_or_u16(_972, 2));
  if (((((llvm_and_u16(_972, 1)) == ((uint16_t)0))&1))) {
    goto _1034;
  } else {
    goto _1054;
  }

_1054:
  *_971 = (llvm_or_u16(_972, 66));
  goto _1034;

_1052:
  _973 = (&_936->field2.field12);
  _974 = *_973;
  _975 = ((uint32_t)(uint16_t)_974);
  if (((((_975 & 64) == 0u)&1))) {
    goto _1055;
  } else {
    goto _1056;
  }

_1056:
  *_973 = (llvm_and_u16(_974, -65));
  _976 = *((&_936->field2.field4));
  _977 = *((&_936->field2.field11));
  _978 = *((&_936->field3));
  _979 = (&_939.array[((int32_t)0)]);
  _980 = *((&_942->field2.field3));
  *_979 = 129u;
  *((&_939.array[((int32_t)1)])) = 17;
  *((&_939.array[((int32_t)2)])) = _976;
  *((&_939.array[((int32_t)3)])) = -32;
  *((&_939.array[((int32_t)4)])) = _977;
  *((&_939.array[((int32_t)5)])) = 0;
  *((&_939.array[((int32_t)6)])) = (((uint8_t)_978));
  *((&_939.array[((int32_t)7)])) = (((uint8_t)(llvm_lshr_u16(_978, 8))));
  *((&_939.array[((int32_t)8)])) = 0;
  *((&_939.array[((int32_t)9)])) = 0;
  _981 = rfcomm_send_packet_for_multiplexer(_942, (llvm_or_u8((llvm_shl_u8(_980, 1)), 1)), -17, 0, _979, 10);
  goto _1057;

_1055:
  if (((((_975 & 512) == 0u)&1))) {
    goto _1057;
  } else {
    goto _1058;
  }

_1058:
  *_973 = (llvm_and_u16(_974, -513));
  _982 = *((&_936->field2.field4));
   /*tail*/ rfcomm_send_ua(_942, _982);
  goto _1057;

_1057:
  _983 = *_973;
  if (((((llvm_and_u16(_983, 9)) == ((uint16_t)9))&1))) {
    goto _1059;
  } else {
    goto _1034;
  }

_1059:
  *_973 = (llvm_or_u16(_983, 5120));
  *_963 = 8;
  goto _1034;

_1038:
  if ((((_943 == 12u)&1))) {
    goto _1060;
  } else {
    goto _1034;
  }

_1060:
  *_963 = 3;
  goto _1034;

_1039:
  if ((((_943 == 13u)&1))) {
    goto _1061;
  } else {
    goto _1034;
  }

_1061:
  *_963 = 4;
  _984 = *((&_936->field2.field4));
  _985 = *((&_936->field3));
  _986 = (&_939.array[((int32_t)0)]);
  _987 = *((&_942->field2.field3));
  *_986 = 131u;
  *((&_939.array[((int32_t)1)])) = 17;
  *((&_939.array[((int32_t)2)])) = _984;
  *((&_939.array[((int32_t)3)])) = -16;
  *((&_939.array[((int32_t)4)])) = 0;
  *((&_939.array[((int32_t)5)])) = 0;
  *((&_939.array[((int32_t)6)])) = (((uint8_t)_985));
  *((&_939.array[((int32_t)7)])) = (((uint8_t)(llvm_lshr_u16(_985, 8))));
  *((&_939.array[((int32_t)8)])) = 0;
  *((&_939.array[((int32_t)9)])) = 0;
  _988 = rfcomm_send_packet_for_multiplexer(_942, (llvm_or_u8((llvm_shl_u8(_987, 1)), 1)), -17, 0, _986, 10);
  goto _1034;

_1040:
  if ((((_943 == 4u)&1))) {
    goto _1062;
  } else {
    goto _1034;
  }

_1062:
  _989 = (&_936->field3);
  _990 = *_989;
  _991 = *(((uint16_t*)((&_937[((int32_t)1)]))));
  if ((((((uint16_t)_990) > ((uint16_t)_991))&1))) {
    goto _1063;
  } else {
    goto _1064;
  }

_1063:
  *_989 = _991;
  goto _1064;

_1064:
  _992 = *((&_962->field3));
  *((&_936->field2.field6)) = _992;
  *_963 = 5;
  goto _1034;

_1041:
  if ((((_943 == 13u)&1))) {
    goto _1065;
  } else {
    goto _1034;
  }

_1065:
  *_963 = 6;
  _993 = *((&_936->field2.field4));
  _994 = *((&_942->field2.field3));
  _995 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_942, (llvm_or_u8((llvm_or_u8((llvm_shl_u8(_993, 2)), (llvm_shl_u8(_994, 1)))), 1)), 63, 0, ((uint8_t*)/*NULL*/0), 0);
  goto _1034;

_1042:
  if ((((_943 == 2u)&1))) {
    goto _1066;
  } else {
    goto _1034;
  }

_1066:
  *_963 = 8;
  _996 = (&_936->field2.field12);
  _997 = *_996;
  *_996 = (llvm_or_u16(_997, 5120));
  goto _1034;

_1043:
  switch (_943) {
  default:
    goto _1067;
  case 7u:
    goto _1068;
  case 8u:
    goto _1069;
  case 13u:
    goto _1070;
  }

_1067:
  _998 = (&_936->field2.field12);
  _1013__PHI_TEMPORARY = _998;   /* for PHI node */
  goto _1071;

_1068:
  _999 = (&_936->field2.field12);
  _1000 = *_999;
  *_999 = (llvm_or_u16(_1000, 2064));
  _1013__PHI_TEMPORARY = _999;   /* for PHI node */
  goto _1071;

_1069:
  _1001 = (&_936->field2.field12);
  _1002 = *_1001;
  *_1001 = (llvm_or_u16(_1002, 32));
  _1013__PHI_TEMPORARY = _1001;   /* for PHI node */
  goto _1071;

_1070:
  _1003 = (&_936->field2.field12);
  _1004 = *_1003;
  _1005 = ((uint32_t)(uint16_t)_1004);
  if (((((_1005 & 1024) == 0u)&1))) {
    goto _1072;
  } else {
    goto _1073;
  }

_1073:
  *_1003 = (llvm_or_u16((llvm_and_u16(_1004, -9217)), 8192));
  _1006 = *((&_936->field2.field4));
  _1007 = *((&_942->field2.field3));
  _1008 = (&_938.array[((int32_t)0)]);
  *_1008 = -29;
  *((&_938.array[((int32_t)1)])) = 5;
  *((&_938.array[((int32_t)2)])) = (llvm_or_u8((llvm_shl_u8(_1006, 2)), 3));
  *((&_938.array[((int32_t)3)])) = 141u;
  _1009 = rfcomm_send_packet_for_multiplexer(_942, (llvm_or_u8((llvm_shl_u8(_1007, 1)), 1)), -17, 0, _1008, 4);
  _1013__PHI_TEMPORARY = _1003;   /* for PHI node */
  goto _1071;

_1072:
  if (((((_1005 & 2048) == 0u)&1))) {
    goto _1074;
  } else {
    goto _1075;
  }

_1075:
  *_1003 = (llvm_or_u16((llvm_and_u16(_1004, 47103u)), 16384u));
  _1010 = *((&_936->field2.field4));
   /*tail*/ rfcomm_send_uih_msc_rsp(_942, _1010);
  _1013__PHI_TEMPORARY = _1003;   /* for PHI node */
  goto _1071;

_1074:
  if (((((_1005 & 4096) == 0u)&1))) {
    _1013__PHI_TEMPORARY = _1003;   /* for PHI node */
    goto _1071;
  } else {
    goto _1076;
  }

_1076:
  *_1003 = (llvm_or_u16((llvm_and_u16(_1004, 28671u)), 32768u));
  _1011 = (&_936->field2.field7);
  _1012 = *_1011;
  if ((((_1012 == ((uint8_t)0))&1))) {
    _1013__PHI_TEMPORARY = _1003;   /* for PHI node */
    goto _1071;
  } else {
    goto _1077;
  }

_1077:
  *_1011 = 0;
   /*tail*/ rfcomm_channel_send_credits(_936, _1012);
  _1013__PHI_TEMPORARY = _1003;   /* for PHI node */
  goto _1071;

_1071:
  _1013 = _1013__PHI_TEMPORARY;
  _1014 = *_1013;
  if (((((llvm_and_u16(_1014, -16352)) == ((uint16_t)-16352))&1))) {
    goto _1078;
  } else {
    goto _1034;
  }

_1078:
  _1015 = *((&_936->field2.field6));
  if ((((_1015 == ((uint8_t)0))&1))) {
    goto _1034;
  } else {
    goto _1079;
  }

_1079:
  *_963 = 9;
   /*tail*/ rfcomm_emit_channel_opened(_936, 0);
   /*tail*/ rfcomm_hand_out_credits();
  _1016 = *_941;
  *((&_1016->field2.field4)) = 1;
   /*tail*/ rfcomm_run();
  goto _1034;

_1044:
  switch (_943) {
  default:
    goto _1034;
  case 7u:
    goto _1080;
  case 13u:
    goto _1081;
  case 11u:
    goto _1082;
  }

_1080:
  _1017 = (&_936->field2.field12);
  _1018 = *_1017;
  *_1017 = (llvm_or_u16(_1018, 2048));
  goto _1034;

_1081:
  _1019 = (&_936->field2.field12);
  _1020 = *_1019;
  if (((((llvm_and_u16(_1020, 2048)) == ((uint16_t)0))&1))) {
    goto _1083;
  } else {
    goto _1084;
  }

_1084:
  *_1019 = (llvm_and_u16(_1020, -2049));
  _1021 = *((&_936->field2.field4));
   /*tail*/ rfcomm_send_uih_msc_rsp(_942, _1021);
  goto _1034;

_1083:
  _1022 = (&_936->field2.field7);
  _1023 = *_1022;
  if ((((_1023 == ((uint8_t)0))&1))) {
    goto _1034;
  } else {
    goto _1085;
  }

_1085:
  *_1022 = 0;
   /*tail*/ rfcomm_channel_send_credits(_936, _1023);
  goto _1034;

_1082:
  _1024 = (&_940.array[((int32_t)0)]);
  *_1024 = 107u;
  rfcomm_channel_dispatch(_936, 5, _1024, 1);
  goto _1034;

_1045:
  if ((((_943 == 13u)&1))) {
    goto _1086;
  } else {
    goto _1034;
  }

_1086:
  *_963 = 1;
  _1025 = *((&_936->field2.field4));
   /*tail*/ rfcomm_send_dm_pf(_942, _1025);
   /*tail*/ rfcomm_channel_finalize(_936);
  goto _1034;

_1046:
  if ((((_943 == 13u)&1))) {
    goto _1087;
  } else {
    goto _1034;
  }

_1087:
  *_963 = 1;
  _1026 = *((&_936->field2.field4));
   /*tail*/ rfcomm_send_disc(_942, _1026);
   /*tail*/ rfcomm_emit_channel_closed(_936);
   /*tail*/ rfcomm_channel_finalize(_936);
  goto _1034;

_1047:
  if ((((_943 == 13u)&1))) {
    goto _1088;
  } else {
    goto _1034;
  }

_1088:
  *_963 = 1;
  _1027 = *((&_936->field2.field4));
   /*tail*/ rfcomm_send_ua(_942, _1027);
   /*tail*/ rfcomm_channel_finalize(_936);
  goto _1034;

_1034:
  return;
}


static void rfcomm_channel_finalize(struct l_struct_struct_OC_rfcomm_channel_t* _1089) {
  struct l_struct_struct_OC_rfcomm_stack_t* _1090;
  uint32_t _1091;

  _1090 = rfcomm_stack;
  _1091 =  /*tail*/ btstack_linked_list_remove(((&_1090->field2)), ((&_1089->field0)));
   /*tail*/ btstack_memory_rfcomm_channel_free((((uint8_t*)_1089)));
}


static void rfcomm_emit_connection_request(struct l_struct_struct_OC_rfcomm_channel_t* _1092) {
  struct l_array_11_uint8_t _1093;    /* Address-exposed local */
  uint8_t* _1094;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _1095;
  uint8_t _1096;
  uint16_t _1097;

  _1094 = (&_1093.array[((int32_t)0)]);
  *_1094 = 130u;
  *((&_1093.array[((int32_t)1)])) = 9;
  _1095 = *((&_1092->field1));
  bt_flip_addr(((&_1093.array[((int32_t)2)])), ((&_1095->field2.field0.array[((int32_t)0)])));
  _1096 = *((&_1092->field2.field4));
  *((&_1093.array[((int32_t)8)])) = (llvm_lshr_u8(_1096, 1));
  _1097 = *((&_1092->field2.field2));
  bt_store_16(_1094, 9, _1097);
  rfcomm_channel_dispatch(_1092, 4, _1094, 11);
}


static void rfcomm_channel_accept_pn(struct l_struct_struct_OC_rfcomm_channel_t* _1098, struct l_struct_struct_OC_rfcomm_channel_event_pn* _1099) {
  uint8_t _1100;
  uint8_t _1101;
  uint16_t* _1102;
  uint16_t _1103;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _1104;
  uint16_t _1105;
  uint16_t _1106;
  uint16_t _1106__PHI_TEMPORARY;
  uint16_t _1107;

  _1100 = *((&_1099->field2));
  *((&_1098->field2.field11)) = _1100;
  _1101 = *((&_1099->field3));
  *((&_1098->field2.field6)) = _1101;
  _1102 = (&_1098->field3);
  _1103 = *_1102;
  _1104 = *((&_1098->field1));
  _1105 = *((&_1104->field1));
  if ((((((uint16_t)_1103) > ((uint16_t)_1105))&1))) {
    goto _1108;
  } else {
    _1106__PHI_TEMPORARY = _1103;   /* for PHI node */
    goto _1109;
  }

_1108:
  *_1102 = _1105;
  _1106__PHI_TEMPORARY = _1105;   /* for PHI node */
  goto _1109;

_1109:
  _1106 = _1106__PHI_TEMPORARY;
  _1107 = *((&_1099->field1));
  if ((((((uint16_t)_1106) > ((uint16_t)_1107))&1))) {
    goto _1110;
  } else {
    goto _1111;
  }

_1110:
  *_1102 = _1107;
  goto _1111;

_1111:
  return;
}


static void rfcomm_send_ua(struct l_struct_struct_OC_rfcomm_multiplexer_t* _1112, uint8_t _1113) {
  uint8_t _1114;
  uint32_t _1115;

  _1114 = *((&_1112->field2.field3));
  _1115 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_1112, (llvm_xor_u8((llvm_or_u8((llvm_shl_u8(_1114, 1)), (llvm_shl_u8(_1113, 2)))), 3)), 115u, 0, ((uint8_t*)/*NULL*/0), 0);
}


static void rfcomm_send_uih_msc_rsp(struct l_struct_struct_OC_rfcomm_multiplexer_t* _1116, uint8_t _1117) {
  struct l_array_4_uint8_t _1118;    /* Address-exposed local */
  uint8_t _1119;
  uint8_t* _1120;
  uint32_t _1121;

  _1119 = *((&_1116->field2.field3));
  _1120 = (&_1118.array[((int32_t)0)]);
  *_1120 = -31;
  *((&_1118.array[((int32_t)1)])) = 5;
  *((&_1118.array[((int32_t)2)])) = (llvm_or_u8((llvm_shl_u8(_1117, 2)), 3));
  *((&_1118.array[((int32_t)3)])) = 141u;
  _1121 = rfcomm_send_packet_for_multiplexer(_1116, (llvm_or_u8((llvm_shl_u8(_1119, 1)), 1)), -17, 0, _1120, 4);
}


static void rfcomm_channel_send_credits(struct l_struct_struct_OC_rfcomm_channel_t* _1122, uint8_t _1123) {
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _1124;
  uint8_t _1125;
  uint8_t _1126;
  uint32_t _1127;
  uint8_t* _1128;
  uint8_t _1129;

  _1124 = *((&_1122->field1));
  _1125 = *((&_1122->field2.field4));
  _1126 = *((&_1124->field2.field3));
  _1127 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_1124, (llvm_or_u8((llvm_or_u8((llvm_shl_u8(_1125, 2)), (llvm_shl_u8(_1126, 1)))), 1)), -1, _1123, ((uint8_t*)/*NULL*/0), 0);
  _1128 = (&_1122->field2.field8);
  _1129 = *_1128;
  *_1128 = (llvm_add_u8(_1129, _1123));
}


static void rfcomm_send_dm_pf(struct l_struct_struct_OC_rfcomm_multiplexer_t* _1130, uint8_t _1131) {
  uint8_t _1132;
  uint32_t _1133;

  _1132 = *((&_1130->field2.field3));
  _1133 =  /*tail*/ rfcomm_send_packet_for_multiplexer(_1130, (llvm_xor_u8((llvm_or_u8((llvm_shl_u8(_1132, 1)), (llvm_shl_u8(_1131, 2)))), 3)), 31, 0, ((uint8_t*)/*NULL*/0), 0);
}


static struct l_struct_struct_OC_rfcomm_channel_t* rfcomm_channel_for_multiplexer_and_dlci(struct l_struct_struct_OC_rfcomm_multiplexer_t* _1134, uint8_t _1135) {
  struct l_struct_struct_OC_rfcomm_stack_t* _1136;
  struct l_struct_struct_OC_btstack_linked_item* _1137;
  struct l_struct_struct_OC_btstack_linked_item* _1138;
  struct l_struct_struct_OC_btstack_linked_item* _1138__PHI_TEMPORARY;
  uint8_t _1139;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _1140;
  struct l_struct_struct_OC_btstack_linked_item* _1141;
  struct l_struct_struct_OC_rfcomm_channel_t* _1142;
  struct l_struct_struct_OC_rfcomm_channel_t* _1143;
  struct l_struct_struct_OC_rfcomm_channel_t* _1143__PHI_TEMPORARY;

  _1136 = rfcomm_stack;
  _1137 = *((&_1136->field2));
  if ((((_1137 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1143__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _1144;
  } else {
    goto _1145;
  }

_1145:
  _1138__PHI_TEMPORARY = _1137;   /* for PHI node */
  goto _1146;

  do {     /* Syntactic loop '' to make GCC happy */
_1146:
  _1138 = _1138__PHI_TEMPORARY;
  _1139 = *((&(((struct l_struct_struct_OC_rfc_channel_core_data_t*)((&_1138[((int32_t)2)]))))->field4));
  if ((((_1139 == _1135)&1))) {
    goto _1147;
  } else {
    goto _1148;
  }

_1147:
  _1140 = *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_1138[((int32_t)1)]))));
  if ((((_1140 == _1134)&1))) {
    goto _1149;
  } else {
    goto _1148;
  }

_1148:
  _1141 = *((&_1138->field0));
  if ((((_1141 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1150;
  } else {
    _1138__PHI_TEMPORARY = _1141;   /* for PHI node */
    goto _1146;
  }

  } while (1); /* end of syntactic loop '' */
_1149:
  _1142 = ((struct l_struct_struct_OC_rfcomm_channel_t*)_1138);
  _1143__PHI_TEMPORARY = _1142;   /* for PHI node */
  goto _1144;

_1150:
  _1143__PHI_TEMPORARY = ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0);   /* for PHI node */
  goto _1144;

_1144:
  _1143 = _1143__PHI_TEMPORARY;
  return _1143;
}


static void rfcomm_channel_state_machine_2(struct l_struct_struct_OC_rfcomm_multiplexer_t* _1151, uint8_t _1152, struct l_struct_struct_OC_rfcomm_channel_event* _1153) {
  struct l_struct_struct_OC_rfcomm_channel_t* _1154;
  uint8_t _1155;
  struct l_struct_struct_OC_rfcomm_stack_t* _1156;
  struct l_struct_struct_OC_btstack_linked_item* _1157;
  struct l_struct_struct_OC_btstack_linked_item* _1158;
  struct l_struct_struct_OC_btstack_linked_item* _1159;
  struct l_struct_struct_OC_btstack_linked_item* _1159__PHI_TEMPORARY;
  uint8_t _1160;
  uint32_t _1161;
  struct l_struct_struct_OC_rfcomm_channel_t* _1162;
  uint8_t* _1163;
  uint8_t* _1164;
  uint8_t* _1165;
  uint8_t* _1165__PHI_TEMPORARY;
  uint32_t _1166;

  _1154 =  /*tail*/ rfcomm_channel_for_multiplexer_and_dlci(_1151, _1152);
  if ((((_1154 == ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0))&1))) {
    goto _1167;
  } else {
    goto _1168;
  }

_1168:
   /*tail*/ rfcomm_channel_state_machine(_1154, _1153);
  goto _1169;

_1167:
  _1155 = llvm_lshr_u8(_1152, 1);
  _1156 = rfcomm_stack;
  _1157 = *((&_1156->field3));
  if ((((_1157 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1170;
  } else {
    goto _1171;
  }

_1171:
  _1159__PHI_TEMPORARY = _1157;   /* for PHI node */
  goto _1172;

  do {     /* Syntactic loop '' to make GCC happy */
_1172:
  _1159 = _1159__PHI_TEMPORARY;
  _1160 = *(((uint8_t*)((&_1159[((int32_t)1)]))));
  if ((((_1160 == _1155)&1))) {
    goto _1173;
  } else {
    goto _1174;
  }

_1174:
  _1158 = *((&_1159->field0));
  if ((((_1158 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1175;
  } else {
    _1159__PHI_TEMPORARY = _1158;   /* for PHI node */
    goto _1172;
  }

  } while (1); /* end of syntactic loop '' */
_1175:
  goto _1170;

_1170:
  *((&_1151->field2.field5)) = _1152;
  goto _1169;

_1173:
  _1161 = *((&_1153->field0));
  switch (_1161) {
  default:
    goto _1176;
  case 1u:
    goto _1177;
  case 3u:
    goto _1177;
  case 10u:
    goto _1177;
  case 9u:
    goto _1177;
  }

_1177:
  _1162 =  /*tail*/ rfcomm_channel_create(_1151, (((struct l_struct_struct_OC_rfcomm_service_t*)_1159)), _1155);
  if ((((_1162 == ((struct l_struct_struct_OC_rfcomm_channel_t*)/*NULL*/0))&1))) {
    goto _1178;
  } else {
    goto _1179;
  }

_1178:
  _1163 = (&_1151->field2.field5);
  *_1163 = _1152;
  _1165__PHI_TEMPORARY = _1163;   /* for PHI node */
  goto _1180;

_1176:
  _1164 = (&_1151->field2.field5);
  _1165__PHI_TEMPORARY = _1164;   /* for PHI node */
  goto _1180;

_1180:
  _1165 = _1165__PHI_TEMPORARY;
  *_1165 = _1152;
  goto _1169;

_1179:
  _1166 = *(((uint32_t*)((&_1159[((int32_t)3)]))));
  *(((uint32_t*)((&_1162->field6)))) = _1166;
   /*tail*/ rfcomm_channel_state_machine(_1162, _1153);
  goto _1169;

_1169:
  return;
}

