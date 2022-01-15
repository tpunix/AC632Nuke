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
struct l_struct_struct_OC_btstack_packet_callback_registration_t;
struct l_struct_struct_OC_att_info_t;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_server_t;
struct l_struct_struct_OC_btstack_context_callback_registration_t;
struct l_struct_struct_OC_sm_connection;
struct l_struct_struct_OC___le_hci_connection;
struct l_struct_struct_OC_btstack_linked_list_iterator_t;

/* Function definitions */
typedef void l_fptr_3(uint8_t*);

typedef uint16_t l_fptr_1(uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_7(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_4(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_2(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_6(uint16_t, uint32_t);

typedef void l_fptr_5(uint16_t, uint8_t);


/* Types Definitions */
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_4* field1;
};
struct l_struct_struct_OC_att_info_t {
  l_fptr_4* field0;
  l_fptr_4* field1;
  uint8_t field2;
  uint8_t* field3;
  l_fptr_1* field4;
  l_fptr_2* field5;
  uint8_t field6;
  uint16_t field7;
  struct l_struct_struct_OC_btstack_linked_item* field8;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field9;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field10;
  l_fptr_4* field11;
  struct l_struct_struct_OC_btstack_linked_item* field12;
  uint8_t field13;
};
struct l_array_58_uint8_t {
  uint8_t array[58];
};
struct l_array_46_uint8_t {
  uint8_t array[46];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_57_uint8_t {
  uint8_t array[57];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_100_uint8_t {
  uint8_t array[100];
};
struct l_array_87_uint8_t {
  uint8_t array[87];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_7* field3;
  uint8_t* field4;
};
struct l_struct_struct_OC_att_connection {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_array_517_uint8_t {
  uint8_t array[517];
};
struct l_struct_struct_OC_att_server_t {
  uint32_t field0;
  uint8_t field1;
  struct l_array_6_uint8_t field2;
  uint32_t field3;
  uint32_t field4;
  uint32_t field5;
  struct l_struct_struct_OC_btstack_timer_source field6;
  struct l_struct_struct_OC_att_connection field7;
  uint16_t field8;
  struct l_array_517_uint8_t field9;
  uint8_t field10;
  l_fptr_5* field11;
};
struct l_struct_struct_OC_btstack_context_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item* field0;
  l_fptr_3* field1;
  uint8_t* field2;
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_struct_struct_OC_sm_connection {
  uint16_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  struct l_array_6_uint8_t field5;
  uint32_t field6;
  uint32_t field7;
  uint8_t field8;
  uint8_t field9;
  uint8_t field10;
  struct l_array_7_uint8_t field11;
  uint32_t field12;
  uint16_t field13;
  struct l_array_8_uint8_t field14;
  uint8_t field15;
  uint32_t field16;
  uint32_t field17;
};
struct l_array_529_uint8_t {
  uint8_t array[529];
};
struct l_struct_struct_OC___le_hci_connection {
  struct l_struct_struct_OC_btstack_linked_item field0;
  struct l_array_6_uint8_t field1;
  uint16_t field2;
  uint32_t field3;
  uint8_t field4;
  uint32_t field5;
  uint8_t field6;
  uint16_t field7;
  uint16_t field8;
  uint16_t field9;
  uint16_t field10;
  struct l_struct_struct_OC_sm_connection field11;
  struct l_struct_struct_OC_att_server_t field12;
  struct l_array_529_uint8_t field13;
  uint16_t field14;
  uint16_t field15;
  uint8_t field16;
  struct l_array_6_uint8_t field17;
  struct l_array_6_uint8_t field18;
  uint32_t field19;
};
struct l_struct_struct_OC_btstack_linked_list_iterator_t {
  uint32_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
};

/* External Global Variable Declarations */
extern uint8_t ble_debug_enable;
extern uint32_t config_le_gatt_server_num;
extern struct l_struct_struct_OC_att_info_t att_global_info;
extern uint32_t config_le_sm_support_enable;

/* Function Declarations */
void att_server_set_exchange_mtu(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_att_server_t* att_server_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void att_dispatch_server_request_can_send_now_event(uint16_t);
void att_server_init(uint8_t*, l_fptr_1*, l_fptr_2*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void att_event_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void hci_add_event_handler(uint8_t*);
void sm_add_event_handler(struct l_struct_struct_OC_btstack_packet_callback_registration_t*);
void att_dispatch_register_server(l_fptr_4*);
static void att_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void att_set_db(uint8_t*);
void att_set_read_callback(l_fptr_1*);
void att_set_write_callback(l_fptr_2*);
uint32_t att_server_change_profile(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_server_register_packet_handler(l_fptr_4*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_server_can_send_packet_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_dispatch_server_can_send_now(uint16_t);
void att_server_request_can_send_now_event(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_server_register_can_send_now_callback(struct l_struct_struct_OC_btstack_context_callback_registration_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint32_t att_server_notify(uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_reserve_packet_buffer(void);
uint8_t* l2cap_get_outgoing_buffer(void);
uint16_t att_prepare_handle_value_notification(struct l_struct_struct_OC_att_connection*, uint16_t, uint8_t*, uint16_t, uint8_t*);
uint32_t l2cap_send_prepared_connectionless(uint16_t, uint16_t, uint16_t);
uint32_t att_server_indicate(uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void att_handle_value_indication_timeout(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow));
void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source*, int16_t);
uint16_t att_prepare_handle_value_indication(struct l_struct_struct_OC_att_connection*, uint16_t, uint8_t*, uint16_t, uint8_t*);
void att_server_send_request(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_server_flow_hold(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_server_flow_enable(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_server_set_check_remote(uint16_t, l_fptr_6*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t att_server_get_remote_type(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_server_sync_mtu(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void att_emit_mtu_event(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t);
static uint8_t hci_event_packet_get_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint16_t little_endian_read_16(uint8_t*, uint32_t);
void reverse_bd_addr(uint8_t*, uint8_t*);
uint16_t l2cap_max_le_mtu(void);
uint32_t sm_encryption_key_size(uint16_t);
uint32_t sm_authenticated(uint16_t);
static uint16_t hci_event_disconnection_complete_get_connection_handle(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint16_t sm_event_identity_resolving_started_get_handle(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint16_t sm_event_identity_resolving_succeeded_get_handle(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint16_t sm_event_identity_resolving_succeeded_get_index_internal(uint8_t*) __ATTRIBUTELIST__((nothrow));
static void att_run_for_context(struct l_struct_struct_OC_att_server_t*) __ATTRIBUTELIST__((nothrow));
static uint16_t sm_event_identity_resolving_failed_get_handle(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint16_t sm_event_authorization_result_get_handle(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint8_t sm_event_authorization_result_get_authorization_result(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static void att_handle_value_indication_notify_client(uint8_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
uint16_t att_handle_request(struct l_struct_struct_OC_att_connection*, uint8_t*, uint16_t, uint8_t*);
void hci_connections_get_iterator(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item**);
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint32_t sm_authorization_state(uint16_t);
void l2cap_release_packet_buffer(void);
uint8_t sm_api_request_pairing(uint16_t);
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source*);
uint32_t ble_user_cmd_prepare(uint32_t, uint32_t, ...);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_17_uint8_t _OC_str = { "no handle 0x%04x" };
static struct l_array_58_uint8_t _OC_str_OC_3 = { "[ble-info] :att_server_request_can_send_now_event 0x%04x\n" };
static struct l_array_46_uint8_t _OC_str_OC_4 = { "[ble-info] :att_server_flow_hold= %04x,%02x\n\n" };
static struct l_array_30_uint8_t _OC_str_OC_6 = { "[ble-info] :no handle 0x%04x\n" };
static struct l_array_20_uint8_t _OC_str_OC_8 = { "[ble-info] :%s,%d\n\n" };
static struct l_array_20_uint8_t __FUNCTION___OC_att_server_sync_mtu = { "att_server_sync_mtu" };
static struct l_array_57_uint8_t _OC_str_OC_11 = { "[ble-info] :SM_EVENT_IDENTITY_RESOLVING_SUCCEEDED id %u\n" };
static struct l_array_39_uint8_t _OC_str_OC_13 = { "[ble-info] :ATT Packet, handle 0x%04x\n" };
static struct l_array_41_uint8_t _OC_str_OC_14 = { "[ble-info] :ATT packet,no handle 0x%04x\n" };
static struct l_array_100_uint8_t _OC_str_OC_16 = { "[ble-info] :att_packet_handler: dropping att pdu 0x%02x as size %u > att_server->request_buffer %u\n" };
static struct l_array_87_uint8_t _OC_str_OC_17 = { "[ble-info] :att_packet_handler: skipping att pdu 0x%02x as server not idle (state %u)\n" };
static struct l_array_23_uint8_t search_ios_ancs_server = { "\x06\x01\x00\xFF\xFF\x00(\xD0\x00-\x12\x1EK\x0F\xA4\x99N\xCE\xB5\x31\xF4\x05y" };
static struct l_array_30_uint8_t str = { "[ble-info] :set exchange_mtu\n" };
static struct l_array_28_uint8_t str_OC_26 = { "[ble-info] :att_server_init" };
static struct l_array_47_uint8_t str_OC_27 = { "[ble-info] :SM_EVENT_IDENTITY_RESOLVING_FAILED" };
static struct l_array_48_uint8_t str_OC_28 = { "[ble-info] :SM_EVENT_IDENTITY_RESOLVING_STARTED" };
static struct l_array_12_uint8_t str_OC_29 = { "att disconn" };
static struct l_array_26_uint8_t str_OC_30 = { "[ble-info] :@@is android\n" };
static struct l_array_22_uint8_t str_OC_31 = { "[ble-info] :@@is ios\n" };
static struct l_array_30_uint8_t str_OC_32 = { "[ble-info] :ATT_WRITE_COMMAND" };
static struct l_array_30_uint8_t str_OC_34 = { "[ble-info] :set check remote\n" };
static struct l_array_32_uint8_t str_OC_35 = { "[ble-info] :att_server is null\n" };
static struct l_array_54_uint8_t str_OC_36 = { "[ble-info] :ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED" };
static struct l_array_20_uint8_t str_OC_37 = { "[ble-info] :555555!" };
static struct l_array_30_uint8_t str_OC_38 = { "[ble-info] :RX MTU_RESPONSE!\n" };
static struct l_array_20_uint8_t str_OC_39 = { "[ble-info] :444444!" };
static struct l_array_35_uint8_t str_OC_40 = { "[ble-info] :AUTHORIZATION_PENDING!" };
static struct l_array_35_uint8_t str_OC_41 = { "[ble-info] :AUTHORIZATION_UNKNOWN!" };


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
static __forceinline struct l_struct_struct_OC_att_server_t* llvm_select_pstruct_struct_OC_att_server_t(bool condition, struct l_struct_struct_OC_att_server_t* iftrue, struct l_struct_struct_OC_att_server_t* ifnot) {
  struct l_struct_struct_OC_att_server_t* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint8_t llvm_lshr_u8(uint8_t a, uint8_t b) {
  uint8_t r = a >> b;
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

void att_server_set_exchange_mtu(uint16_t _1) {
  struct l_struct_struct_OC_att_server_t* _2;
  uint32_t _3;
  uint8_t _4;
  uint32_t _5;
  uint8_t* _6;
  uint8_t _7;

  if ((((_1 == ((uint16_t)0))&1))) {
    goto _8;
  } else {
    goto _9;
  }

_9:
  _2 =  /*tail*/ att_server_for_handle(_1);
  if ((((_2 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _10;
  } else {
    goto _11;
  }

_10:
  _3 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1)));
  goto _8;

_11:
  _4 = ble_debug_enable;
  if (((((llvm_and_u8(_4, 1)) == ((uint8_t)0))&1))) {
    goto _12;
  } else {
    goto _13;
  }

_13:
  _5 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _12;

_12:
  _6 = (&_2->field10);
  _7 = *_6;
  *_6 = (llvm_or_u8(_7, 2));
   /*tail*/ att_dispatch_server_request_can_send_now_event(_1);
  goto _8;

_8:
  return;
}


static struct l_struct_struct_OC_att_server_t* att_server_for_handle(uint16_t _14) {
  uint32_t _15;
  struct l_struct_struct_OC___le_hci_connection* _16;
  struct l_struct_struct_OC_att_server_t* _17;
  struct l_struct_struct_OC_att_server_t* _18;
  struct l_struct_struct_OC_att_server_t* _18__PHI_TEMPORARY;

  _15 = config_le_gatt_server_num;
  if ((((_15 == 0u)&1))) {
    _18__PHI_TEMPORARY = ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0);   /* for PHI node */
    goto _19;
  } else {
    goto _20;
  }

_20:
  _16 =  /*tail*/ le_hci_connection_for_handle(_14);
  _17 = llvm_select_pstruct_struct_OC_att_server_t((((_16 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0), ((&_16->field12)));
  _18__PHI_TEMPORARY = _17;   /* for PHI node */
  goto _19;

_19:
  _18 = _18__PHI_TEMPORARY;
  return _18;
}


void att_server_init(uint8_t* _21, l_fptr_1* _22, l_fptr_2* _23) {
  uint32_t _24;
  uint32_t _25;
  uint8_t _26;
  uint32_t _27;

  _24 = config_le_gatt_server_num;
  if ((((_24 == 0u)&1))) {
    goto _28;
  } else {
    goto _29;
  }

_29:
  *((&att_global_info.field9.field1)) = att_event_packet_handler;
   /*tail*/ hci_add_event_handler(((uint8_t*)((&att_global_info.field9))));
  _25 = config_le_sm_support_enable;
  if ((((_25 == 0u)&1))) {
    goto _30;
  } else {
    goto _31;
  }

_31:
  *((&att_global_info.field10.field1)) = att_event_packet_handler;
   /*tail*/ sm_add_event_handler(((&att_global_info.field10)));
  goto _30;

_30:
   /*tail*/ att_dispatch_register_server(att_packet_handler);
  _26 = ble_debug_enable;
  if (((((llvm_and_u8(_26, 1)) == ((uint8_t)0))&1))) {
    goto _32;
  } else {
    goto _33;
  }

_33:
  _27 =  /*tail*/ puts(((&str_OC_26.array[((int32_t)0)])));
  goto _32;

_32:
   /*tail*/ att_set_db(_21);
   /*tail*/ att_set_read_callback(_22);
   /*tail*/ att_set_write_callback(_23);
  goto _28;

_28:
  return;
}


static void att_event_packet_handler(uint8_t _34, uint16_t _35, uint8_t* _36, uint16_t _37) {
  uint32_t _38;
  uint8_t _39;
  uint8_t _40;
  uint16_t _41;
  struct l_struct_struct_OC_att_server_t* _42;
  uint8_t _43;
  uint16_t _44;
  uint8_t* _45;
  uint8_t _46;
  uint16_t _47;
  struct l_struct_struct_OC_att_server_t* _48;
  uint32_t _49;
  uint32_t _50;
  uint32_t _51;
  uint16_t _52;
  struct l_struct_struct_OC_att_server_t* _53;
  uint16_t _54;
  struct l_struct_struct_OC_att_server_t* _55;
  uint8_t _56;
  uint32_t _57;
  uint16_t _58;
  struct l_struct_struct_OC_att_server_t* _59;
  uint16_t _60;
  uint32_t _61;
  uint8_t _62;
  uint32_t _63;
  uint16_t _64;
  struct l_struct_struct_OC_att_server_t* _65;
  uint8_t _66;
  uint32_t _67;
  uint16_t _68;
  struct l_struct_struct_OC_att_server_t* _69;
  uint8_t _70;

  _38 = config_le_gatt_server_num;
  if (((((((_34 == ((uint8_t)4))&1)) & (((_38 != 0u)&1)))&1))) {
    goto _71;
  } else {
    goto _72;
  }

_71:
  _39 =  /*tail*/ hci_event_packet_get_type(_36);
  switch (_39) {
  default:
    goto _72;
  case ((uint8_t)62):
    goto _73;
  case ((uint8_t)8):
    goto _74;
  case ((uint8_t)48):
    goto _74;
  case ((uint8_t)5):
    goto _75;
  case ((uint8_t)-40):
    goto _76;
  case ((uint8_t)-38):
    goto _77;
  case ((uint8_t)-39):
    goto _78;
  case ((uint8_t)-36):
    goto _79;
  }

_73:
  _40 = *((&_36[((int32_t)2)]));
  if ((((_40 == ((uint8_t)1))&1))) {
    goto _80;
  } else {
    goto _72;
  }

_80:
  _41 =  /*tail*/ little_endian_read_16(_36, 4);
  _42 =  /*tail*/ att_server_for_handle(_41);
  if ((((_42 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _81;
  }

_81:
  _43 = *((&_36[((int32_t)7)]));
  *((&_42->field1)) = _43;
   /*tail*/ reverse_bd_addr(((&_36[((int32_t)8)])), ((&_42->field2.array[((int32_t)0)])));
  *((&_42->field7.field0)) = _41;
  *((&_42->field0)) = 0;
  *((&_42->field7.field1)) = 23;
  _44 =  /*tail*/ l2cap_max_le_mtu();
  *((&_42->field7.field2)) = (llvm_select_u16((((((uint16_t)_44) < ((uint16_t)((uint16_t)517)))&1)), _44, 517));
  *((&_42->field7.field3)) = 0;
  *((&_42->field7.field4)) = 0;
  *((&_42->field7.field5)) = 0;
  *((&_42->field3)) = -1;
  _45 = (&_42->field10);
  _46 = *_45;
  *_45 = (llvm_and_u8(_46, -2));
  goto _72;

_74:
  _47 =  /*tail*/ little_endian_read_16(_36, 3);
  _48 =  /*tail*/ att_server_for_handle(_47);
  if ((((_48 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _82;
  }

_82:
  _49 =  /*tail*/ sm_encryption_key_size(_47);
  *((&_48->field7.field3)) = (((uint8_t)_49));
  _50 =  /*tail*/ sm_authenticated(_47);
  *((&_48->field7.field4)) = (((uint8_t)_50));
  goto _72;

_75:
  _51 =  /*tail*/ puts(((&str_OC_29.array[((int32_t)0)])));
  _52 =  /*tail*/ hci_event_disconnection_complete_get_connection_handle(_36);
  _53 =  /*tail*/ att_server_for_handle(_52);
  if ((((_53 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _83;
  }

_83:
  *((&_53->field7.field0)) = 0;
  *((&_53->field5)) = 0;
  *((&_53->field0)) = 0;
  goto _72;

_76:
  _54 =  /*tail*/ sm_event_identity_resolving_started_get_handle(_36);
  _55 =  /*tail*/ att_server_for_handle(_54);
  if ((((_55 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _84;
  }

_84:
  _56 = ble_debug_enable;
  if (((((llvm_and_u8(_56, 1)) == ((uint8_t)0))&1))) {
    goto _85;
  } else {
    goto _86;
  }

_86:
  _57 =  /*tail*/ puts(((&str_OC_28.array[((int32_t)0)])));
  goto _85;

_85:
  *((&_55->field4)) = 1;
  goto _72;

_77:
  _58 =  /*tail*/ sm_event_identity_resolving_succeeded_get_handle(_36);
  _59 =  /*tail*/ att_server_for_handle(_58);
  if ((((_59 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _87;
  }

_87:
  *((&_59->field4)) = 0;
  _60 =  /*tail*/ sm_event_identity_resolving_succeeded_get_index_internal(_36);
  _61 = ((uint32_t)(uint16_t)_60);
  *((&_59->field3)) = _61;
  _62 = ble_debug_enable;
  if (((((llvm_and_u8(_62, 1)) == ((uint8_t)0))&1))) {
    goto _88;
  } else {
    goto _89;
  }

_89:
  _63 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), _61);
  goto _88;

_88:
   /*tail*/ att_run_for_context(_59);
  goto _72;

_78:
  _64 =  /*tail*/ sm_event_identity_resolving_failed_get_handle(_36);
  _65 =  /*tail*/ att_server_for_handle(_64);
  if ((((_65 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _90;
  }

_90:
  _66 = ble_debug_enable;
  if (((((llvm_and_u8(_66, 1)) == ((uint8_t)0))&1))) {
    goto _91;
  } else {
    goto _92;
  }

_92:
  _67 =  /*tail*/ puts(((&str_OC_27.array[((int32_t)0)])));
  goto _91;

_91:
  *((&_65->field4)) = 0;
  *((&_65->field3)) = -1;
   /*tail*/ att_run_for_context(_65);
  goto _72;

_79:
  _68 =  /*tail*/ sm_event_authorization_result_get_handle(_36);
  _69 =  /*tail*/ att_server_for_handle(_68);
  if ((((_69 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _93;
  }

_93:
  _70 =  /*tail*/ sm_event_authorization_result_get_authorization_result(_36);
  *((&_69->field7.field5)) = _70;
   /*tail*/ att_dispatch_server_request_can_send_now_event(_68);
  goto _72;

_72:
  return;
}


static void att_packet_handler(uint8_t _94, uint16_t _95, uint8_t* _96, uint16_t _97) {
  uint16_t _98;    /* Address-exposed local */
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _99;    /* Address-exposed local */
  uint8_t _100;
  uint32_t _101;
  uint8_t* _102;
  uint32_t _103;
  struct l_struct_struct_OC_btstack_linked_item* _104;
  struct l_struct_struct_OC_btstack_linked_item* _105;
  struct l_struct_struct_OC_att_server_t* _106;
  uint8_t* _107;
  uint8_t _108;
  uint32_t _109;
  uint32_t* _110;
  uint32_t _111;
  uint8_t _112;
  uint32_t _113;
  uint32_t _114;
  uint8_t* _115;
  struct l_struct_struct_OC_btstack_linked_item* _116;
  uint8_t* _117;
  uint16_t _118;
  uint16_t _119;
  uint8_t _120;
  uint8_t _121;
  uint8_t _122;
  uint16_t* _123;
  uint16_t _124;
  uint32_t _125;
  uint16_t _126;
  uint8_t _127;
  uint8_t _128;
  uint32_t _129;
  uint8_t _130;
  uint32_t _131;
  uint8_t _132;
  uint32_t _133;
  uint8_t _134;
  uint8_t _135;
  uint8_t _136;
  uint32_t _137;
  uint16_t _138;
  uint16_t _139;
  uint16_t* _140;
  uint16_t _141;
  uint32_t _142;
  uint8_t _143;
  uint32_t _144;
  uint8_t _145;
  uint16_t _146;
  uint16_t _147;
  uint8_t _148;
  uint32_t _149;
  uint32_t _150;
  uint16_t* _151;
  uint8_t* _152;
  uint16_t _153;
  uint16_t* _154;
  uint16_t _155;
  uint32_t _156;
  uint8_t _157;
  uint16_t* _158;
  uint16_t* _158__PHI_TEMPORARY;
  uint16_t _159;
  uint32_t _160;
  uint16_t* _161;
  uint8_t* _162;
  uint8_t* _163;
  uint16_t* _164;
  uint16_t _165;
  uint32_t _166;
  uint8_t _167;
  uint16_t* _168;
  uint16_t* _168__PHI_TEMPORARY;
  uint16_t _169;
  uint16_t _170;
  uint32_t _171;
  struct l_struct_struct_OC_btstack_linked_item* _172;
  struct l_struct_struct_OC_btstack_linked_item* _173;
  uint32_t _174;
  uint16_t _175;
  uint32_t _176;
  l_fptr_3* _177;
  uint8_t* _178;
  uint32_t _179;
  uint32_t _180;
  uint8_t _181;
  uint8_t _182;
  l_fptr_4* _183;
  uint8_t _184;
  uint32_t _185;
  struct l_struct_struct_OC_att_server_t* _186;
  uint8_t _187;
  uint32_t _188;
  uint8_t _189;
  uint32_t* _190;
  uint32_t _191;
  uint32_t _192;
  uint32_t _193;
  uint16_t _194;
  uint32_t _195;
  uint8_t _196;
  uint32_t _197;
  uint16_t _198;
  uint32_t _199;
  uint32_t _199__PHI_TEMPORARY;
  uint32_t _200;
  uint8_t _201;
  uint32_t _202;
  uint32_t* _203;
  uint32_t _204;
  uint8_t _205;
  uint32_t _206;
  uint8_t* _207;
  uint8_t _208;
  uint8_t _209;
  uint32_t _210;
  uint8_t _211;
  uint8_t _212;
  uint8_t _212__PHI_TEMPORARY;
  l_fptr_5* _213;
  uint16_t _214;
  uint8_t _215;
  uint32_t _216;
  uint8_t _217;
  uint8_t _218;
  uint8_t _218__PHI_TEMPORARY;
  l_fptr_5* _219;
  uint16_t _220;
  uint8_t* _221;

  switch (_94) {
  default:
    goto _222;
  case ((uint8_t)4):
    goto _223;
  case ((uint8_t)8):
    goto _224;
  }

_223:
  _100 = *_96;
  _101 = config_le_gatt_server_num;
  if (((((((_100 != ((uint8_t)120))&1)) | (((_101 == 0u)&1)))&1))) {
    goto _222;
  } else {
    goto _225;
  }

_225:
  _102 = ((uint8_t*)(&_99));
  hci_connections_get_iterator((&_99));
  _103 = btstack_linked_list_iterator_has_next((&_99));
  if ((((_103 == 0u)&1))) {
    goto _226;
  } else {
    goto _227;
  }

_227:
  goto _228;

_229:
  goto _226;

_226:
  goto _230;

  do {     /* Syntactic loop '' to make GCC happy */
_228:
  _104 = btstack_linked_list_iterator_next((&_99));
  _105 = (&_104[((int32_t)23)]);
  _106 = ((struct l_struct_struct_OC_att_server_t*)_105);
  _107 = (&_106->field10);
  _108 = *_107;
  if (((((llvm_and_u8(_108, 1)) == ((uint8_t)0))&1))) {
    goto _231;
  } else {
    goto _232;
  }

_231:
  _110 = ((uint32_t*)_105);
  _111 = *_110;
  if ((((_111 == 3u)&1))) {
    goto _233;
  } else {
    goto _234;
  }

_234:
  if (((((llvm_and_u8(_108, 32)) == ((uint8_t)0))&1))) {
    goto _235;
  } else {
    goto _232;
  }

_235:
  if (((((llvm_and_u8(_108, 2)) == ((uint8_t)0))&1))) {
    goto _236;
  } else {
    goto _237;
  }

_237:
  _150 = l2cap_reserve_packet_buffer();
  if ((((_150 == 0u)&1))) {
    goto _238;
  } else {
    goto _239;
  }

_239:
  _152 = l2cap_get_outgoing_buffer();
  *_152 = 2;
  _153 = *(((uint16_t*)((&_104[((int32_t)35)]))));
  little_endian_store_16(_152, 1, _153);
  _154 = ((uint16_t*)((&_104[((int32_t)34)])));
  _155 = *_154;
  _156 = l2cap_send_prepared_connectionless(_155, 4, 3);
  if ((((_156 == 0u)&1))) {
    goto _240;
  } else {
    goto _241;
  }

_241:
  l2cap_release_packet_buffer();
  _158__PHI_TEMPORARY = _154;   /* for PHI node */
  goto _242;

_240:
  _157 = *_107;
  *_107 = (llvm_or_u8((llvm_and_u8(_157, -35)), 32));
  _158__PHI_TEMPORARY = _154;   /* for PHI node */
  goto _242;

_238:
  _151 = ((uint16_t*)((&_104[((int32_t)34)])));
  _158__PHI_TEMPORARY = _151;   /* for PHI node */
  goto _242;

_242:
  _158 = _158__PHI_TEMPORARY;
  _159 = *_158;
  att_dispatch_server_request_can_send_now_event(_159);
  goto _232;

_236:
  if (((((llvm_and_u8(_108, 28)) == ((uint8_t)4))&1))) {
    goto _243;
  } else {
    goto _232;
  }

_243:
  _160 = l2cap_reserve_packet_buffer();
  if ((((_160 == 0u)&1))) {
    goto _244;
  } else {
    goto _245;
  }

_245:
  _162 = l2cap_get_outgoing_buffer();
  _163 = memcpy(_162, ((&search_ios_ancs_server.array[((int32_t)0)])), 23);
  _164 = ((uint16_t*)((&_104[((int32_t)34)])));
  _165 = *_164;
  _166 = l2cap_send_prepared_connectionless(_165, 4, 23);
  if ((((_166 == 0u)&1))) {
    goto _246;
  } else {
    goto _247;
  }

_247:
  l2cap_release_packet_buffer();
  _168__PHI_TEMPORARY = _164;   /* for PHI node */
  goto _248;

_246:
  _167 = *_107;
  *_107 = (llvm_or_u8((llvm_and_u8(_167, -61)), 40));
  _168__PHI_TEMPORARY = _164;   /* for PHI node */
  goto _248;

_244:
  _161 = ((uint16_t*)((&_104[((int32_t)34)])));
  _168__PHI_TEMPORARY = _161;   /* for PHI node */
  goto _248;

_248:
  _168 = _168__PHI_TEMPORARY;
  _169 = *_168;
  att_dispatch_server_request_can_send_now_event(_169);
  goto _232;

_233:
  _112 = ble_debug_enable;
  if (((((llvm_and_u8(_112, 1)) == ((uint8_t)0))&1))) {
    goto _249;
  } else {
    goto _250;
  }

_250:
  _113 = puts(((&str_OC_36.array[((int32_t)0)])));
  goto _249;

_249:
  _114 = l2cap_reserve_packet_buffer();
  _115 = l2cap_get_outgoing_buffer();
  _116 = (&_104[((int32_t)34)]);
  _117 = ((uint8_t*)((&_104[((int32_t)37)])));
  _118 = *((&_106->field8));
  _119 = att_handle_request((((struct l_struct_struct_OC_att_connection*)_116)), _117, _118, _115);
  if ((((((uint16_t)_119) > ((uint16_t)((uint16_t)3)))&1))) {
    goto _251;
  } else {
    goto _252;
  }

_252:
  *_110 = 0;
  if ((((_119 == ((uint16_t)0))&1))) {
    goto _253;
  } else {
    goto _254;
  }

_253:
  _132 = ble_debug_enable;
  if (((((llvm_and_u8(_132, 1)) == ((uint8_t)0))&1))) {
    goto _255;
  } else {
    goto _256;
  }

_256:
  _133 = puts(((&str_OC_39.array[((int32_t)0)])));
  goto _255;

_255:
  l2cap_release_packet_buffer();
  _134 = *_117;
  if ((((_134 == ((uint8_t)3))&1))) {
    goto _257;
  } else {
    goto _232;
  }

_257:
  _135 = *_107;
  *_107 = (llvm_and_u8(_135, -33));
  _136 = ble_debug_enable;
  if (((((llvm_and_u8(_136, 1)) == ((uint8_t)0))&1))) {
    goto _258;
  } else {
    goto _259;
  }

_259:
  _137 = puts(((&str_OC_38.array[((int32_t)0)])));
  goto _258;

_258:
  _138 = *(((uint16_t*)_116));
  _139 = *((&_106->field7.field1));
  att_emit_mtu_event(_138, _139);
  goto _232;

_251:
  _120 = *_115;
  if ((((_120 == ((uint8_t)1))&1))) {
    goto _260;
  } else {
    goto _261;
  }

_260:
  _121 = *((&_115[((int32_t)4)]));
  if ((((_121 == ((uint8_t)8))&1))) {
    goto _262;
  } else {
    goto _261;
  }

_262:
  _122 = *((&_106->field7.field4));
  if ((((_122 == ((uint8_t)0))&1))) {
    goto _261;
  } else {
    goto _263;
  }

_263:
  _123 = ((uint16_t*)_116);
  _124 = *_123;
  _125 = sm_authorization_state(_124);
  switch (_125) {
  default:
    goto _261;
  case 0u:
    goto _264;
  case 1u:
    goto _265;
  }

_265:
  _130 = ble_debug_enable;
  if (((((llvm_and_u8(_130, 1)) == ((uint8_t)0))&1))) {
    goto _266;
  } else {
    goto _267;
  }

_267:
  _131 = puts(((&str_OC_40.array[((int32_t)0)])));
  goto _266;

_266:
  l2cap_release_packet_buffer();
  goto _232;

_264:
  l2cap_release_packet_buffer();
  _126 = *_123;
  _127 = sm_api_request_pairing(_126);
  _128 = ble_debug_enable;
  if (((((llvm_and_u8(_128, 1)) == ((uint8_t)0))&1))) {
    goto _232;
  } else {
    goto _268;
  }

_268:
  _129 = puts(((&str_OC_41.array[((int32_t)0)])));
  goto _232;

_261:
  *_110 = 0;
  goto _254;

_254:
  _140 = ((uint16_t*)_116);
  _141 = *_140;
  _142 = l2cap_send_prepared_connectionless(_141, 4, _119);
  _143 = ble_debug_enable;
  if (((((llvm_and_u8(_143, 1)) == ((uint8_t)0))&1))) {
    goto _269;
  } else {
    goto _270;
  }

_270:
  _144 = puts(((&str_OC_37.array[((int32_t)0)])));
  goto _269;

_269:
  _145 = *_115;
  if ((((_145 == ((uint8_t)3))&1))) {
    goto _271;
  } else {
    goto _272;
  }

_271:
  _146 = *_140;
  _147 = *((&_106->field7.field1));
  att_emit_mtu_event(_146, _147);
  goto _272;

_272:
  _148 = *((&att_global_info.field13));
  if (((((llvm_and_u8(_148, 1)) == ((uint8_t)0))&1))) {
    goto _273;
  } else {
    goto _274;
  }

_273:
  _149 = btstack_linked_list_empty(((&att_global_info.field12)));
  if ((((_149 == 0u)&1))) {
    goto _274;
  } else {
    goto _232;
  }

_232:
  _109 = btstack_linked_list_iterator_has_next((&_99));
  if ((((_109 == 0u)&1))) {
    goto _229;
  } else {
    goto _228;
  }

  } while (1); /* end of syntactic loop '' */
_274:
  _170 = *_140;
  att_dispatch_server_request_can_send_now_event(_170);
  goto _275;

  do {     /* Syntactic loop '' to make GCC happy */
_230:
  _171 = btstack_linked_list_empty(((&att_global_info.field12)));
  if ((((_171 == 0u)&1))) {
    goto _276;
  } else {
    goto _277;
  }

_276:
  _172 = *((&att_global_info.field12));
  _173 = (&_172[((int32_t)2)]);
  _174 = *(((uint32_t*)_173));
  _175 = ((uint16_t)_174);
  _176 = btstack_linked_list_remove(((&att_global_info.field12)), _172);
  _177 = *(((l_fptr_3**)((&_172[((int32_t)1)]))));
  _178 = *(((uint8_t**)_173));
  _177(_178);
  _179 = att_dispatch_server_can_send_now(_175);
  if ((((_179 == 0u)&1))) {
    goto _278;
  } else {
    goto _230;
  }

  } while (1); /* end of syntactic loop '' */
_278:
  _180 = btstack_linked_list_empty(((&att_global_info.field12)));
  if ((((_180 == 0u)&1))) {
    goto _279;
  } else {
    goto _280;
  }

_280:
  _181 = *((&att_global_info.field13));
  if (((((llvm_and_u8(_181, 1)) == ((uint8_t)0))&1))) {
    goto _275;
  } else {
    goto _279;
  }

_279:
  att_dispatch_server_request_can_send_now_event(_175);
  goto _275;

_277:
  _182 = *((&att_global_info.field13));
  if (((((llvm_and_u8(_182, 1)) == ((uint8_t)0))&1))) {
    goto _275;
  } else {
    goto _281;
  }

_281:
  *((&att_global_info.field13)) = (llvm_and_u8(_182, -2));
  _183 = *((&att_global_info.field11));
  if ((((_183 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _275;
  } else {
    goto _282;
  }

_282:
  _98 = 183;
  _183(4, 0, (((uint8_t*)(&_98))), 2);
  goto _275;

_275:
  goto _222;

_224:
  _184 = ble_debug_enable;
  if (((((llvm_and_u8(_184, 1)) == ((uint8_t)0))&1))) {
    goto _283;
  } else {
    goto _284;
  }

_284:
  _185 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), (((uint32_t)(uint16_t)_95)));
  goto _283;

_283:
  _186 =  /*tail*/ att_server_for_handle(_95);
  if ((((_186 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _285;
  } else {
    goto _286;
  }

_285:
  _187 = ble_debug_enable;
  if (((((llvm_and_u8(_187, 1)) == ((uint8_t)0))&1))) {
    goto _222;
  } else {
    goto _287;
  }

_287:
  _188 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])), (((uint32_t)(uint16_t)_95)));
  goto _222;

_286:
  _189 = *_96;
  if ((((_189 == ((uint8_t)30))&1))) {
    goto _288;
  } else {
    goto _289;
  }

_288:
  _190 = (&_186->field5);
  _191 = *_190;
  if ((((_191 == 0u)&1))) {
    _199__PHI_TEMPORARY = 30;   /* for PHI node */
    goto _290;
  } else {
    goto _291;
  }

_291:
  _192 =  /*tail*/ btstack_run_loop_remove_timer(((&_186->field6)));
  _193 = *_190;
  *_190 = 0;
  _194 = *((&_186->field7.field0));
   /*tail*/ att_handle_value_indication_notify_client(0, _194, (((uint16_t)_193)));
  goto _222;

_289:
  _195 = ((uint32_t)(uint8_t)_189);
  if ((((_189 == ((uint8_t)82))&1))) {
    goto _292;
  } else {
    _199__PHI_TEMPORARY = _195;   /* for PHI node */
    goto _290;
  }

_292:
  _196 = ble_debug_enable;
  if (((((llvm_and_u8(_196, 1)) == ((uint8_t)0))&1))) {
    goto _293;
  } else {
    goto _294;
  }

_294:
  _197 =  /*tail*/ puts(((&str_OC_32.array[((int32_t)0)])));
  goto _293;

_293:
  _198 =  /*tail*/ att_handle_request(((&_186->field7)), _96, _97, ((uint8_t*)/*NULL*/0));
  goto _222;

_290:
  _199 = _199__PHI_TEMPORARY;
  _200 = ((uint32_t)(uint16_t)_97);
  if ((((((uint16_t)_97) > ((uint16_t)((uint16_t)517)))&1))) {
    goto _295;
  } else {
    goto _296;
  }

_295:
  _201 = ble_debug_enable;
  if (((((llvm_and_u8(_201, 1)) == ((uint8_t)0))&1))) {
    goto _222;
  } else {
    goto _297;
  }

_297:
  _202 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), _199, _200, 517);
  goto _222;

_296:
  _203 = (&_186->field0);
  _204 = *_203;
  if ((((_204 == 0u)&1))) {
    goto _298;
  } else {
    goto _299;
  }

_299:
  _205 = ble_debug_enable;
  if (((((llvm_and_u8(_205, 1)) == ((uint8_t)0))&1))) {
    goto _222;
  } else {
    goto _300;
  }

_300:
  _206 =  /*tail*/ printf(((&_OC_str_OC_17.array[((int32_t)0)])), _199, _204);
  goto _222;

_298:
  _207 = (&_186->field10);
  _208 = *_207;
  if (((((llvm_and_u8(_208, 28)) == ((uint8_t)8))&1))) {
    goto _301;
  } else {
    goto _302;
  }

_301:
  switch (_189) {
  default:
    goto _302;
  case ((uint8_t)7):
    goto _303;
  case ((uint8_t)1):
    goto _304;
  }

_303:
  _209 = ble_debug_enable;
  if (((((llvm_and_u8(_209, 1)) == ((uint8_t)0))&1))) {
    _212__PHI_TEMPORARY = _208;   /* for PHI node */
    goto _305;
  } else {
    goto _306;
  }

_306:
  _210 =  /*tail*/ puts(((&str_OC_31.array[((int32_t)0)])));
  _211 = *_207;
  _212__PHI_TEMPORARY = _211;   /* for PHI node */
  goto _305;

_305:
  _212 = _212__PHI_TEMPORARY;
  *_207 = (llvm_or_u8((llvm_and_u8(_212, -61)), 20));
  _213 = *((&_186->field11));
  if ((((_213 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _302;
  } else {
    goto _307;
  }

_307:
  _214 = *((&_186->field7.field0));
   /*tail*/ _213(_214, 2);
  goto _302;

_304:
  _215 = ble_debug_enable;
  if (((((llvm_and_u8(_215, 1)) == ((uint8_t)0))&1))) {
    _218__PHI_TEMPORARY = _208;   /* for PHI node */
    goto _308;
  } else {
    goto _309;
  }

_309:
  _216 =  /*tail*/ puts(((&str_OC_30.array[((int32_t)0)])));
  _217 = *_207;
  _218__PHI_TEMPORARY = _217;   /* for PHI node */
  goto _308;

_308:
  _218 = _218__PHI_TEMPORARY;
  *_207 = (llvm_or_u8((llvm_and_u8(_218, -61)), 16));
  _219 = *((&_186->field11));
  if ((((_219 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _302;
  } else {
    goto _310;
  }

_310:
  _220 = *((&_186->field7.field0));
   /*tail*/ _219(_220, 1);
  goto _302;

_302:
  *_203 = 1;
  *((&_186->field8)) = _97;
  _221 = memcpy(((&_186->field9.array[((int32_t)0)])), _96, _200);
   /*tail*/ att_run_for_context(_186);
  goto _222;

_222:
  return;
}


uint32_t att_server_change_profile(uint8_t* _311) {
  uint32_t _312;
  uint32_t _313;
  uint32_t _313__PHI_TEMPORARY;

  _312 = config_le_gatt_server_num;
  if ((((_312 == 0u)&1))) {
    _313__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _314;
  } else {
    goto _315;
  }

_315:
   /*tail*/ att_set_db(_311);
  _313__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _314;

_314:
  _313 = _313__PHI_TEMPORARY;
  return _313;
}


void att_server_register_packet_handler(l_fptr_4* _316) {
  uint32_t _317;

  _317 = config_le_gatt_server_num;
  if ((((_317 == 0u)&1))) {
    goto _318;
  } else {
    goto _319;
  }

_319:
  *((&att_global_info.field11)) = _316;
  goto _318;

_318:
  return;
}


uint32_t att_server_can_send_packet_now(uint16_t _320) {
  uint32_t _321;
  uint32_t _322;
  uint32_t _323;
  uint32_t _323__PHI_TEMPORARY;

  _321 = config_le_gatt_server_num;
  if ((((_321 == 0u)&1))) {
    _323__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _324;
  } else {
    goto _325;
  }

_325:
  _322 =  /*tail*/ att_dispatch_server_can_send_now(_320);
  _323__PHI_TEMPORARY = _322;   /* for PHI node */
  goto _324;

_324:
  _323 = _323__PHI_TEMPORARY;
  return _323;
}


void att_server_request_can_send_now_event(uint16_t _326) {
  uint32_t _327;
  uint8_t _328;
  uint32_t _329;
  uint8_t _330;

  _327 = config_le_gatt_server_num;
  if ((((_327 == 0u)&1))) {
    goto _331;
  } else {
    goto _332;
  }

_332:
  _328 = ble_debug_enable;
  if (((((llvm_and_u8(_328, 1)) == ((uint8_t)0))&1))) {
    goto _333;
  } else {
    goto _334;
  }

_334:
  _329 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((uint32_t)(uint16_t)_326)));
  goto _333;

_333:
  _330 = *((&att_global_info.field13));
  *((&att_global_info.field13)) = (llvm_or_u8(_330, 1));
   /*tail*/ att_dispatch_server_request_can_send_now_event(_326);
  goto _331;

_331:
  return;
}


void att_server_register_can_send_now_callback(struct l_struct_struct_OC_btstack_context_callback_registration_t* _335, uint16_t _336) {
  uint32_t _337;
  uint32_t _338;
  l_fptr_3* _339;
  uint8_t* _340;

  _337 = config_le_gatt_server_num;
  if ((((_337 == 0u)&1))) {
    goto _341;
  } else {
    goto _342;
  }

_342:
  _338 =  /*tail*/ att_dispatch_server_can_send_now(_336);
  if ((((_338 == 0u)&1))) {
    goto _343;
  } else {
    goto _344;
  }

_344:
  _339 = *((&_335->field1));
  _340 = *((&_335->field2));
   /*tail*/ _339(_340);
  goto _341;

_343:
  *((&_335->field2)) = (((uint8_t*)(uintptr_t)(((uint32_t)(uint16_t)_336))));
   /*tail*/ btstack_linked_list_add_tail(((&att_global_info.field12)), (((struct l_struct_struct_OC_btstack_linked_item*)_335)));
   /*tail*/ att_dispatch_server_request_can_send_now_event(_336);
  goto _341;

_341:
  return;
}


uint32_t att_server_notify(uint16_t _345, uint16_t _346, uint8_t* _347, uint16_t _348) {
  uint32_t _349;
  struct l_struct_struct_OC_att_server_t* _350;
  uint32_t _351;
  uint32_t _352;
  uint8_t* _353;
  struct l_struct_struct_OC_att_connection* _354;
  uint16_t _355;
  uint16_t _356;
  uint32_t _357;
  uint32_t _358;
  uint32_t _358__PHI_TEMPORARY;

  _349 = config_le_gatt_server_num;
  if ((((_349 == 0u)&1))) {
    _358__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _359;
  } else {
    goto _360;
  }

_360:
  _350 =  /*tail*/ att_server_for_handle(_345);
  if ((((_350 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    _358__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _359;
  } else {
    goto _361;
  }

_361:
  _351 =  /*tail*/ att_dispatch_server_can_send_now(_345);
  if ((((_351 == 0u)&1))) {
    _358__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _359;
  } else {
    goto _362;
  }

_362:
  _352 =  /*tail*/ l2cap_reserve_packet_buffer();
  _353 =  /*tail*/ l2cap_get_outgoing_buffer();
  _354 = (&_350->field7);
  _355 =  /*tail*/ att_prepare_handle_value_notification(_354, _346, _347, _348, _353);
  _356 = *((&_354->field0));
  _357 =  /*tail*/ l2cap_send_prepared_connectionless(_356, 4, _355);
  _358__PHI_TEMPORARY = _357;   /* for PHI node */
  goto _359;

_359:
  _358 = _358__PHI_TEMPORARY;
  return _358;
}


uint32_t att_server_indicate(uint16_t _363, uint16_t _364, uint8_t* _365, uint16_t _366) {
  uint32_t _367;
  struct l_struct_struct_OC_att_server_t* _368;
  uint32_t* _369;
  uint32_t _370;
  uint32_t _371;
  struct l_struct_struct_OC_btstack_timer_source* _372;
  uint32_t _373;
  uint8_t* _374;
  struct l_struct_struct_OC_att_connection* _375;
  uint16_t _376;
  uint16_t _377;
  uint32_t _378;
  uint32_t _379;
  uint32_t _379__PHI_TEMPORARY;

  _367 = config_le_gatt_server_num;
  if ((((_367 == 0u)&1))) {
    _379__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _380;
  } else {
    goto _381;
  }

_381:
  _368 =  /*tail*/ att_server_for_handle(_363);
  if ((((_368 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    _379__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _380;
  } else {
    goto _382;
  }

_382:
  _369 = (&_368->field5);
  _370 = *_369;
  if ((((_370 == 0u)&1))) {
    goto _383;
  } else {
    _379__PHI_TEMPORARY = 144;   /* for PHI node */
    goto _380;
  }

_383:
  _371 =  /*tail*/ att_dispatch_server_can_send_now(_363);
  if ((((_371 == 0u)&1))) {
    _379__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _380;
  } else {
    goto _384;
  }

_384:
  *_369 = (((uint32_t)(uint16_t)_364));
  _372 = (&_368->field6);
  *(((uint64_t*)_372)) = 0;
  *((&_368->field6.field2)) = 30000;
  *((&_368->field6.field3)) = att_handle_value_indication_timeout;
  *(((struct l_struct_struct_OC_att_server_t**)((&_368->field6.field4)))) = _368;
   /*tail*/ btstack_set_timer(_372, 130);
  _373 =  /*tail*/ l2cap_reserve_packet_buffer();
  _374 =  /*tail*/ l2cap_get_outgoing_buffer();
  _375 = (&_368->field7);
  _376 =  /*tail*/ att_prepare_handle_value_indication(_375, _364, _365, _366, _374);
  _377 = *((&_375->field0));
  _378 =  /*tail*/ l2cap_send_prepared_connectionless(_377, 4, _376);
  _379__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _380;

_380:
  _379 = _379__PHI_TEMPORARY;
  return _379;
}


static void att_handle_value_indication_timeout(struct l_struct_struct_OC_btstack_timer_source* _385) {
  struct l_struct_struct_OC_att_server_t* _386;
  uint32_t _387;
  uint16_t _388;

  _386 = *(((struct l_struct_struct_OC_att_server_t**)((&_385->field4))));
  if ((((_386 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _389;
  } else {
    goto _390;
  }

_390:
  _387 = *((&_386->field5));
  _388 = *((&_386->field7.field0));
   /*tail*/ att_handle_value_indication_notify_client(145u, _388, (((uint16_t)_387)));
  goto _389;

_389:
  return;
}


void att_server_send_request(uint16_t _391) {
  uint32_t _392;

  _392 = config_le_gatt_server_num;
  if ((((_392 == 0u)&1))) {
    goto _393;
  } else {
    goto _394;
  }

_394:
   /*tail*/ att_dispatch_server_request_can_send_now_event(_391);
  goto _393;

_393:
  return;
}


void att_server_flow_hold(uint16_t _395, uint8_t _396) {
  struct l_struct_struct_OC_att_server_t* _397;
  uint8_t _398;
  uint8_t _399;
  uint32_t _400;
  uint8_t _401;
  uint32_t _402;
  uint8_t* _403;
  uint8_t _404;
  uint32_t _405;

  _397 =  /*tail*/ att_server_for_handle(_395);
  _398 = *((&att_global_info.field13));
  if (((((llvm_and_u8(_398, 2)) == ((uint8_t)0))&1))) {
    goto _406;
  } else {
    goto _407;
  }

_407:
  _399 = ble_debug_enable;
  if (((((llvm_and_u8(_399, 1)) == ((uint8_t)0))&1))) {
    goto _408;
  } else {
    goto _409;
  }

_409:
  _400 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint16_t)_395)), (((uint32_t)(uint8_t)_396)));
  goto _408;

_408:
  if ((((_397 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _410;
  } else {
    goto _411;
  }

_410:
  _401 = ble_debug_enable;
  if (((((llvm_and_u8(_401, 1)) == ((uint8_t)0))&1))) {
    goto _406;
  } else {
    goto _412;
  }

_412:
  _402 =  /*tail*/ puts(((&str_OC_35.array[((int32_t)0)])));
  goto _406;

_411:
  _403 = (&_397->field10);
  _404 = *_403;
  if ((((_396 == ((uint8_t)0))&1))) {
    goto _413;
  } else {
    goto _414;
  }

_414:
  *_403 = (llvm_or_u8(_404, 1));
  goto _406;

_413:
  *_403 = (llvm_and_u8(_404, -2));
  _405 =  /*tail*/ ble_user_cmd_prepare(23, 1, (((uint32_t)(uint16_t)_395)));
  goto _406;

_406:
  return;
}


void att_server_flow_enable(uint8_t _415) {
  uint8_t _416;

  _416 = *((&att_global_info.field13));
  *((&att_global_info.field13)) = (llvm_or_u8(_416, 2));
}


void att_server_set_check_remote(uint16_t _417, l_fptr_6* _418) {
  struct l_struct_struct_OC_att_server_t* _419;
  uint8_t _420;
  uint32_t _421;
  uint32_t _422;
  uint8_t* _423;
  uint8_t _424;
  uint32_t _425;

  if ((((_417 == ((uint16_t)0))&1))) {
    goto _426;
  } else {
    goto _427;
  }

_427:
  _419 =  /*tail*/ att_server_for_handle(_417);
  _420 = ble_debug_enable;
  if ((((_419 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _428;
  } else {
    goto _429;
  }

_428:
  if (((((llvm_and_u8(_420, 1)) != ((uint8_t)0))&1))) {
    goto _430;
  } else {
    goto _426;
  }

_430:
  _421 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), (((uint32_t)(uint16_t)_417)));
  goto _426;

_429:
  if (((((llvm_and_u8(_420, 1)) != ((uint8_t)0))&1))) {
    goto _431;
  } else {
    goto _432;
  }

_431:
  _422 =  /*tail*/ puts(((&str_OC_34.array[((int32_t)0)])));
  goto _432;

_432:
  _423 = (&_419->field10);
  _424 = *_423;
  *_423 = (llvm_or_u8((llvm_and_u8(_424, -29)), 4));
  *(((l_fptr_6**)((&_419->field11)))) = _418;
  _425 =  /*tail*/ ble_user_cmd_prepare(23, 1, (((uint32_t)(uint16_t)_417)));
  goto _426;

_426:
  return;
}


uint8_t att_server_get_remote_type(uint16_t _433) {
  struct l_struct_struct_OC_att_server_t* _434;
  uint8_t _435;
  uint32_t _436;
  uint8_t _437;
  uint8_t _438;
  uint8_t _439;
  uint8_t _440;
  uint8_t _440__PHI_TEMPORARY;

  if ((((_433 == ((uint16_t)0))&1))) {
    _440__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _441;
  } else {
    goto _442;
  }

_442:
  _434 =  /*tail*/ att_server_for_handle(_433);
  if ((((_434 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _443;
  } else {
    goto _444;
  }

_443:
  _435 = ble_debug_enable;
  if (((((llvm_and_u8(_435, 1)) == ((uint8_t)0))&1))) {
    _440__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _441;
  } else {
    goto _445;
  }

_445:
  _436 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), (((uint32_t)(uint16_t)_433)));
  _440__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _441;

_444:
  _437 = *((&_434->field10));
  _438 = llvm_and_u8((llvm_lshr_u8(_437, 2)), 7);
  _439 = llvm_select_u8((((_438 == ((uint8_t)4))&1)), 1, (llvm_select_u8((((_438 == ((uint8_t)5))&1)), 2, 0)));
  _440__PHI_TEMPORARY = _439;   /* for PHI node */
  goto _441;

_441:
  _440 = _440__PHI_TEMPORARY;
  return _440;
}


uint32_t att_server_sync_mtu(uint16_t _446, uint16_t _447) {
  struct l_struct_struct_OC_att_server_t* _448;
  uint8_t _449;
  uint32_t _450;
  uint32_t _451;
  uint16_t _452;
  uint32_t _453;
  uint32_t _453__PHI_TEMPORARY;

  _448 =  /*tail*/ att_server_for_handle(_446);
  _449 = ble_debug_enable;
  if ((((_448 == ((struct l_struct_struct_OC_att_server_t*)/*NULL*/0))&1))) {
    goto _454;
  } else {
    goto _455;
  }

_454:
  if (((((llvm_and_u8(_449, 1)) != ((uint8_t)0))&1))) {
    goto _456;
  } else {
    _453__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _457;
  }

_456:
  _450 =  /*tail*/ puts(((&str_OC_35.array[((int32_t)0)])));
  _453__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _457;

_455:
  if (((((llvm_and_u8(_449, 1)) != ((uint8_t)0))&1))) {
    goto _458;
  } else {
    goto _459;
  }

_458:
  _451 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), ((&__FUNCTION___OC_att_server_sync_mtu.array[((int32_t)0)])), (((uint32_t)(uint16_t)_447)));
  goto _459;

_459:
  *((&_448->field7.field1)) = _447;
  _452 = *((&_448->field7.field0));
   /*tail*/ att_emit_mtu_event(_452, _447);
  _453__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _457;

_457:
  _453 = _453__PHI_TEMPORARY;
  return _453;
}


static void att_emit_mtu_event(uint16_t _460, uint16_t _461) {
  struct l_array_6_uint8_t _462;    /* Address-exposed local */
  l_fptr_4* _463;
  uint8_t* _464;
  l_fptr_4* _465;

  _463 = *((&att_global_info.field11));
  if ((((_463 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _466;
  } else {
    goto _467;
  }

_467:
  _464 = (&_462.array[((int32_t)0)]);
  *_464 = 181u;
  *((&_462.array[((int32_t)1)])) = 4;
  little_endian_store_16(_464, 2, _460);
  little_endian_store_16(_464, 4, _461);
  _465 = *((&att_global_info.field11));
  _465(4, 0, _464, 6);
  goto _466;

_466:
  return;
}


static uint8_t hci_event_packet_get_type(uint8_t* _468) {
  uint8_t _469;

  _469 = *_468;
  return _469;
}


static uint16_t hci_event_disconnection_complete_get_connection_handle(uint8_t* _470) {
  uint16_t _471;

  _471 =  /*tail*/ little_endian_read_16(_470, 3);
  return _471;
}


static uint16_t sm_event_identity_resolving_started_get_handle(uint8_t* _472) {
  uint16_t _473;

  _473 =  /*tail*/ little_endian_read_16(_472, 2);
  return _473;
}


static uint16_t sm_event_identity_resolving_succeeded_get_handle(uint8_t* _474) {
  uint16_t _475;

  _475 =  /*tail*/ little_endian_read_16(_474, 2);
  return _475;
}


static uint16_t sm_event_identity_resolving_succeeded_get_index_internal(uint8_t* _476) {
  uint16_t _477;

  _477 =  /*tail*/ little_endian_read_16(_476, 18);
  return _477;
}


static void att_run_for_context(struct l_struct_struct_OC_att_server_t* _478) {
  uint32_t* _479;
  uint32_t _480;
  uint16_t _481;

  _479 = (&_478->field0);
  _480 = *_479;
  if ((((_480 == 1u)&1))) {
    goto _482;
  } else {
    goto _483;
  }

_482:
  *_479 = 3;
  _481 = *((&_478->field7.field0));
   /*tail*/ att_dispatch_server_request_can_send_now_event(_481);
  goto _483;

_483:
  return;
}


static uint16_t sm_event_identity_resolving_failed_get_handle(uint8_t* _484) {
  uint16_t _485;

  _485 =  /*tail*/ little_endian_read_16(_484, 2);
  return _485;
}


static uint16_t sm_event_authorization_result_get_handle(uint8_t* _486) {
  uint16_t _487;

  _487 =  /*tail*/ little_endian_read_16(_486, 2);
  return _487;
}


static uint8_t sm_event_authorization_result_get_authorization_result(uint8_t* _488) {
  uint8_t _489;

  _489 = *((&_488[((int32_t)11)]));
  return _489;
}


static void att_handle_value_indication_notify_client(uint8_t _490, uint16_t _491, uint16_t _492) {
  struct l_array_7_uint8_t _493;    /* Address-exposed local */
  l_fptr_4* _494;
  uint8_t* _495;
  l_fptr_4* _496;

  _494 = *((&att_global_info.field11));
  if ((((_494 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _497;
  } else {
    goto _498;
  }

_498:
  _495 = (&_493.array[((int32_t)0)]);
  *_495 = 182u;
  *((&_493.array[((int32_t)1)])) = 5;
  *((&_493.array[((int32_t)2)])) = _490;
  little_endian_store_16(_495, 3, _491);
  little_endian_store_16(_495, 5, _492);
  _496 = *((&att_global_info.field11));
  _496(4, 0, _495, 7);
  goto _497;

_497:
  return;
}

