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
struct l_struct_struct_OC_multiplexer_core_data_t;
struct l_struct_struct_OC_rfcomm_multiplexer_t;
struct l_struct_struct_OC_rfcomm_service_t;
struct l_struct_struct_OC_rfcomm_rpn_data;
struct l_struct_struct_OC_rfc_channel_core_data_t;
struct l_struct_struct_OC_rfcomm_channel_t;
struct l_struct_struct_OC_l2cap_service_t;
struct l_struct_struct_OC_retran_flow_ctl_op_t;
struct l_struct_struct_OC_channel_core_data_t;
struct l_struct_struct_OC_l2cap_channel_t;
struct l_struct_struct_OC_stack_bredr_pool_t;
struct l_struct_struct_OC_sm_connection;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_server_t;
struct l_struct_struct_OC___le_hci_connection;
struct l_struct_struct_OC_gatt_client;
struct l_struct_struct_OC_stack_le_pool_t;
struct l_struct_struct_OC_bnep_service_t;
struct l_struct_struct_OC_bnep_net_filter_t;
struct l_struct_struct_OC_bnep_multi_filter_t;
struct l_struct_struct_OC_bnep_channel_t;
struct l_struct_struct_OC_node;

/* Function definitions */
typedef void l_fptr_4(uint16_t, uint8_t);

typedef void l_fptr_2(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_3(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_1(void);


/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
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
struct l_struct_struct_OC_rfcomm_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint16_t field4;
  uint8_t* field5;
  l_fptr_2* field6;
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
struct l_struct_struct_OC_rfcomm_channel_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* field1;
  struct l_struct_struct_OC_rfc_channel_core_data_t field2;
  uint16_t field3;
  struct l_struct_struct_OC_rfcomm_service_t* field4;
  l_fptr_2* field5;
  uint8_t* field6;
};
struct l_struct_struct_OC_l2cap_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t* field3;
  l_fptr_2* field4;
};
struct l_array_4_struct_AC_l_struct_struct_OC_l2cap_service_t {
  struct l_struct_struct_OC_l2cap_service_t array[4];
};
struct l_struct_struct_OC_retran_flow_ctl_op_t {
  uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint16_t field5;
  uint16_t field6;
  uint16_t field7;
};
struct l_struct_struct_OC_channel_core_data_t {
  uint16_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  struct l_array_6_uint8_t field5;
  uint16_t field6;
  uint16_t field7;
  uint16_t field8;
  uint16_t field9;
  uint16_t field10;
  uint8_t field11;
  uint32_t field12;
  struct l_struct_struct_OC_retran_flow_ctl_op_t field13;
};
struct l_struct_struct_OC_l2cap_channel_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  uint8_t field2;
  uint8_t* field3;
  l_fptr_2* field4;
  struct l_struct_struct_OC_channel_core_data_t field5;
};
struct l_array_5_struct_AC_l_struct_struct_OC_l2cap_channel_t {
  struct l_struct_struct_OC_l2cap_channel_t array[5];
};
struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_multiplexer_t {
  struct l_struct_struct_OC_rfcomm_multiplexer_t array[1];
};
struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_service_t {
  struct l_struct_struct_OC_rfcomm_service_t array[1];
};
struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_channel_t {
  struct l_struct_struct_OC_rfcomm_channel_t array[1];
};
struct l_struct_struct_OC_stack_bredr_pool_t {
  uint8_t* field0;
  uint8_t* field1;
  uint8_t* field2;
  uint8_t* field3;
  uint8_t* field4;
  struct l_array_4_struct_AC_l_struct_struct_OC_l2cap_service_t field5;
  struct l_array_5_struct_AC_l_struct_struct_OC_l2cap_channel_t field6;
  struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_multiplexer_t field7;
  struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_service_t field8;
  struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_channel_t field9;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_3* field3;
  uint8_t* field4;
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
  l_fptr_4* field11;
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
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_struct_struct_OC_gatt_client {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  l_fptr_2* field2;
  uint16_t field3;
  uint8_t field4;
  struct l_array_6_uint8_t field5;
  uint16_t field6;
  uint32_t field7;
  uint16_t field8;
  struct l_array_16_uint8_t field9;
  uint16_t field10;
  uint16_t field11;
  uint16_t field12;
  uint16_t field13;
  uint8_t field14;
  uint16_t field15;
  uint16_t field16;
  uint16_t field17;
  uint16_t field18;
  uint8_t* field19;
  uint16_t field20;
  uint16_t* field21;
  uint16_t field22;
  struct l_array_2_uint8_t field23;
  uint8_t field24;
  uint8_t field25;
  uint32_t field26;
  struct l_array_8_uint8_t field27;
  struct l_struct_struct_OC_btstack_timer_source field28;
  uint32_t field29;
  struct l_array_7_uint8_t field30;
  uint8_t field31;
};
struct l_array_1_struct_AC_l_struct_struct_OC___le_hci_connection_KC_ {
  struct l_struct_struct_OC___le_hci_connection* array[1];
};
struct l_array_1_struct_AC_l_struct_struct_OC_gatt_client_KC_ {
  struct l_struct_struct_OC_gatt_client* array[1];
};
struct l_struct_struct_OC_stack_le_pool_t {
  uint8_t* field0;
  uint8_t* field1;
  struct l_array_1_struct_AC_l_struct_struct_OC___le_hci_connection_KC_ field2;
  struct l_array_1_struct_AC_l_struct_struct_OC_gatt_client_KC_ field3;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_109_uint8_t {
  uint8_t array[109];
};
struct l_array_52_uint8_t {
  uint8_t array[52];
};
struct l_array_60_uint8_t {
  uint8_t array[60];
};
struct l_struct_struct_OC_bnep_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  uint16_t field2;
  l_fptr_2* field3;
};
struct l_struct_struct_OC_bnep_net_filter_t {
  uint16_t field0;
  uint16_t field1;
};
struct l_array_8_struct_AC_l_struct_struct_OC_bnep_net_filter_t {
  struct l_struct_struct_OC_bnep_net_filter_t array[8];
};
struct l_struct_struct_OC_bnep_multi_filter_t {
  struct l_array_6_uint8_t field0;
  struct l_array_6_uint8_t field1;
};
struct l_array_8_struct_AC_l_struct_struct_OC_bnep_multi_filter_t {
  struct l_struct_struct_OC_bnep_multi_filter_t array[8];
};
struct l_struct_struct_OC_bnep_channel_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  uint16_t field3;
  uint8_t* field4;
  struct l_array_6_uint8_t field5;
  struct l_array_6_uint8_t field6;
  uint16_t field7;
  uint16_t field8;
  uint16_t field9;
  uint16_t field10;
  uint8_t field11;
  uint16_t field12;
  struct l_array_8_struct_AC_l_struct_struct_OC_bnep_net_filter_t field13;
  uint16_t field14;
  struct l_struct_struct_OC_bnep_net_filter_t* field15;
  uint16_t field16;
  struct l_array_8_struct_AC_l_struct_struct_OC_bnep_multi_filter_t field17;
  uint16_t field18;
  struct l_struct_struct_OC_bnep_multi_filter_t* field19;
  uint16_t field20;
  struct l_struct_struct_OC_btstack_timer_source field21;
  uint32_t field22;
  uint32_t field23;
  l_fptr_2* field24;
  uint8_t field25;
  struct l_struct_struct_OC_btstack_linked_item* field26;
  uint32_t field27;
};
struct l_struct_struct_OC_node {
  struct l_struct_struct_OC_node* field0;
};

/* External Global Variable Declarations */
extern uint32_t config_le_hci_connection_num;
extern uint32_t config_asser;
extern uint32_t config_le_gatt_client_num;

/* Function Declarations */
uint8_t* btstack_memory_hci_connection_get(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_memory_hci_connection_free(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint8_t* btstack_memory_l2cap_service_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_l2cap_service_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_l2cap_channel_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_l2cap_channel_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_rfcomm_multiplexer_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_rfcomm_multiplexer_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_rfcomm_service_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_rfcomm_service_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_rfcomm_channel_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_rfcomm_channel_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_le_hci_connection_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_le_hci_connection_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_gatt_client_get(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_gatt_client_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_sm_lookup_entry_get(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_memory_sm_lookup_entry_free(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint8_t* btstack_memory_whitelist_entry_get(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_memory_whitelist_entry_free(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
struct l_struct_struct_OC_bnep_service_t* btstack_memory_bnep_service_get(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_memory_bnep_service_free(struct l_struct_struct_OC_bnep_service_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
struct l_struct_struct_OC_bnep_channel_t* btstack_memory_bnep_channel_get(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_memory_bnep_channel_free(struct l_struct_struct_OC_bnep_channel_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_bredr_memory_init(struct l_struct_struct_OC_stack_bredr_pool_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void memory_pool_create(uint8_t**, uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow));
void btstack_le_memory_init(struct l_struct_struct_OC_stack_le_pool_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void btstack_le_memory_exit(struct l_struct_struct_OC_stack_le_pool_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_exit(void);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
void p33_soft_reset(void);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_stack_bredr_pool_t* bredr_stack_pool;
static struct l_struct_struct_OC_stack_le_pool_t* le_stack_pool;
static struct l_array_17_uint8_t _OC_str = { "file:%s, line:%d" };
static struct l_array_109_uint8_t _OC_str_OC_1 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_memory.c" };
static struct l_array_52_uint8_t _OC_str_OC_2 = { "ASSERT-FAILD: hci_conn_ram hci_conn_ram malloc fail" };
static struct l_array_60_uint8_t _OC_str_OC_3 = { "ASSERT-FAILD: gatt_clients_ram gatt_clients_ram malloc fail" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}


/* Function Bodies */

uint8_t* btstack_memory_hci_connection_get(void) {
  return ((uint8_t*)/*NULL*/0);
}


void btstack_memory_hci_connection_free(uint8_t* _1) {
  return;
}


uint8_t* btstack_memory_l2cap_service_get(void) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _2;
  struct l_struct_struct_OC_node* _3;
  uint32_t _4;
  uint8_t* _5;
  uint8_t* _6;
  uint8_t* _6__PHI_TEMPORARY;

  _2 = bredr_stack_pool;
  _3 = *(((struct l_struct_struct_OC_node**)_2));
  if ((((_3 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _6__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _7;
  } else {
    goto _8;
  }

_8:
  _4 = *(((uint32_t*)_3));
  *(((uint32_t*)_2)) = _4;
  _5 = ((uint8_t*)_3);
  _6__PHI_TEMPORARY = _5;   /* for PHI node */
  goto _7;

_7:
  _6 = _6__PHI_TEMPORARY;
  return _6;
}


void btstack_memory_l2cap_service_free(uint8_t* _9) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _10;
  uint8_t** _11;
  struct l_struct_struct_OC_node* _12;
  struct l_struct_struct_OC_node* _13;
  uint32_t _14;
  struct l_struct_struct_OC_node* _15;
  struct l_struct_struct_OC_node* _16;
  struct l_struct_struct_OC_node* _16__PHI_TEMPORARY;

  _10 = bredr_stack_pool;
  _11 = (&_10->field0);
  _12 = ((struct l_struct_struct_OC_node*)_9);
  _13 = *(((struct l_struct_struct_OC_node**)_10));
  _14 = ((uint32_t)(uintptr_t)_13);
  if ((((_13 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _17;
  } else {
    goto _18;
  }

_18:
  _16__PHI_TEMPORARY = _13;   /* for PHI node */
  goto _19;

  do {     /* Syntactic loop '' to make GCC happy */
_19:
  _16 = _16__PHI_TEMPORARY;
  if ((((_16 == _12)&1))) {
    goto _20;
  } else {
    goto _21;
  }

_21:
  _15 = *((&_16->field0));
  if ((((_15 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _22;
  } else {
    _16__PHI_TEMPORARY = _15;   /* for PHI node */
    goto _19;
  }

  } while (1); /* end of syntactic loop '' */
_22:
  goto _17;

_17:
  *(((uint32_t*)_9)) = _14;
  *_11 = _9;
  goto _23;

_20:
  goto _23;

_23:
  return;
}


uint8_t* btstack_memory_l2cap_channel_get(void) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _24;
  uint8_t** _25;
  struct l_struct_struct_OC_node* _26;
  uint32_t _27;
  uint8_t* _28;
  uint8_t* _29;
  uint8_t* _29__PHI_TEMPORARY;

  _24 = bredr_stack_pool;
  _25 = (&_24->field1);
  _26 = *(((struct l_struct_struct_OC_node**)_25));
  if ((((_26 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _29__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _30;
  } else {
    goto _31;
  }

_31:
  _27 = *(((uint32_t*)_26));
  *(((uint32_t*)_25)) = _27;
  _28 = ((uint8_t*)_26);
  _29__PHI_TEMPORARY = _28;   /* for PHI node */
  goto _30;

_30:
  _29 = _29__PHI_TEMPORARY;
  return _29;
}


void btstack_memory_l2cap_channel_free(uint8_t* _32) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _33;
  uint8_t** _34;
  struct l_struct_struct_OC_node* _35;
  struct l_struct_struct_OC_node* _36;
  uint32_t _37;
  struct l_struct_struct_OC_node* _38;
  struct l_struct_struct_OC_node* _39;
  struct l_struct_struct_OC_node* _39__PHI_TEMPORARY;

  _33 = bredr_stack_pool;
  _34 = (&_33->field1);
  _35 = ((struct l_struct_struct_OC_node*)_32);
  _36 = *(((struct l_struct_struct_OC_node**)_34));
  _37 = ((uint32_t)(uintptr_t)_36);
  if ((((_36 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _40;
  } else {
    goto _41;
  }

_41:
  _39__PHI_TEMPORARY = _36;   /* for PHI node */
  goto _42;

  do {     /* Syntactic loop '' to make GCC happy */
_42:
  _39 = _39__PHI_TEMPORARY;
  if ((((_39 == _35)&1))) {
    goto _43;
  } else {
    goto _44;
  }

_44:
  _38 = *((&_39->field0));
  if ((((_38 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _45;
  } else {
    _39__PHI_TEMPORARY = _38;   /* for PHI node */
    goto _42;
  }

  } while (1); /* end of syntactic loop '' */
_45:
  goto _40;

_40:
  *(((uint32_t*)_32)) = _37;
  *_34 = _32;
  goto _46;

_43:
  goto _46;

_46:
  return;
}


uint8_t* btstack_memory_rfcomm_multiplexer_get(void) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _47;
  uint8_t** _48;
  struct l_struct_struct_OC_node* _49;
  uint32_t _50;
  uint8_t* _51;
  uint8_t* _52;
  uint8_t* _52__PHI_TEMPORARY;

  _47 = bredr_stack_pool;
  _48 = (&_47->field2);
  _49 = *(((struct l_struct_struct_OC_node**)_48));
  if ((((_49 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _52__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _53;
  } else {
    goto _54;
  }

_54:
  _50 = *(((uint32_t*)_49));
  *(((uint32_t*)_48)) = _50;
  _51 = ((uint8_t*)_49);
  _52__PHI_TEMPORARY = _51;   /* for PHI node */
  goto _53;

_53:
  _52 = _52__PHI_TEMPORARY;
  return _52;
}


void btstack_memory_rfcomm_multiplexer_free(uint8_t* _55) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _56;
  uint8_t** _57;
  struct l_struct_struct_OC_node* _58;
  struct l_struct_struct_OC_node* _59;
  uint32_t _60;
  struct l_struct_struct_OC_node* _61;
  struct l_struct_struct_OC_node* _62;
  struct l_struct_struct_OC_node* _62__PHI_TEMPORARY;

  _56 = bredr_stack_pool;
  _57 = (&_56->field2);
  _58 = ((struct l_struct_struct_OC_node*)_55);
  _59 = *(((struct l_struct_struct_OC_node**)_57));
  _60 = ((uint32_t)(uintptr_t)_59);
  if ((((_59 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _63;
  } else {
    goto _64;
  }

_64:
  _62__PHI_TEMPORARY = _59;   /* for PHI node */
  goto _65;

  do {     /* Syntactic loop '' to make GCC happy */
_65:
  _62 = _62__PHI_TEMPORARY;
  if ((((_62 == _58)&1))) {
    goto _66;
  } else {
    goto _67;
  }

_67:
  _61 = *((&_62->field0));
  if ((((_61 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _68;
  } else {
    _62__PHI_TEMPORARY = _61;   /* for PHI node */
    goto _65;
  }

  } while (1); /* end of syntactic loop '' */
_68:
  goto _63;

_63:
  *(((uint32_t*)_55)) = _60;
  *_57 = _55;
  goto _69;

_66:
  goto _69;

_69:
  return;
}


uint8_t* btstack_memory_rfcomm_service_get(void) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _70;
  uint8_t** _71;
  struct l_struct_struct_OC_node* _72;
  uint32_t _73;
  uint8_t* _74;
  uint8_t* _75;
  uint8_t* _75__PHI_TEMPORARY;

  _70 = bredr_stack_pool;
  _71 = (&_70->field3);
  _72 = *(((struct l_struct_struct_OC_node**)_71));
  if ((((_72 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _75__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _76;
  } else {
    goto _77;
  }

_77:
  _73 = *(((uint32_t*)_72));
  *(((uint32_t*)_71)) = _73;
  _74 = ((uint8_t*)_72);
  _75__PHI_TEMPORARY = _74;   /* for PHI node */
  goto _76;

_76:
  _75 = _75__PHI_TEMPORARY;
  return _75;
}


void btstack_memory_rfcomm_service_free(uint8_t* _78) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _79;
  uint8_t** _80;
  struct l_struct_struct_OC_node* _81;
  struct l_struct_struct_OC_node* _82;
  uint32_t _83;
  struct l_struct_struct_OC_node* _84;
  struct l_struct_struct_OC_node* _85;
  struct l_struct_struct_OC_node* _85__PHI_TEMPORARY;

  _79 = bredr_stack_pool;
  _80 = (&_79->field3);
  _81 = ((struct l_struct_struct_OC_node*)_78);
  _82 = *(((struct l_struct_struct_OC_node**)_80));
  _83 = ((uint32_t)(uintptr_t)_82);
  if ((((_82 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _86;
  } else {
    goto _87;
  }

_87:
  _85__PHI_TEMPORARY = _82;   /* for PHI node */
  goto _88;

  do {     /* Syntactic loop '' to make GCC happy */
_88:
  _85 = _85__PHI_TEMPORARY;
  if ((((_85 == _81)&1))) {
    goto _89;
  } else {
    goto _90;
  }

_90:
  _84 = *((&_85->field0));
  if ((((_84 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _91;
  } else {
    _85__PHI_TEMPORARY = _84;   /* for PHI node */
    goto _88;
  }

  } while (1); /* end of syntactic loop '' */
_91:
  goto _86;

_86:
  *(((uint32_t*)_78)) = _83;
  *_80 = _78;
  goto _92;

_89:
  goto _92;

_92:
  return;
}


uint8_t* btstack_memory_rfcomm_channel_get(void) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _93;
  uint8_t** _94;
  struct l_struct_struct_OC_node* _95;
  uint32_t _96;
  uint8_t* _97;
  uint8_t* _98;
  uint8_t* _98__PHI_TEMPORARY;

  _93 = bredr_stack_pool;
  _94 = (&_93->field4);
  _95 = *(((struct l_struct_struct_OC_node**)_94));
  if ((((_95 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _98__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _99;
  } else {
    goto _100;
  }

_100:
  _96 = *(((uint32_t*)_95));
  *(((uint32_t*)_94)) = _96;
  _97 = ((uint8_t*)_95);
  _98__PHI_TEMPORARY = _97;   /* for PHI node */
  goto _99;

_99:
  _98 = _98__PHI_TEMPORARY;
  return _98;
}


void btstack_memory_rfcomm_channel_free(uint8_t* _101) {
  struct l_struct_struct_OC_stack_bredr_pool_t* _102;
  uint8_t** _103;
  struct l_struct_struct_OC_node* _104;
  struct l_struct_struct_OC_node* _105;
  uint32_t _106;
  struct l_struct_struct_OC_node* _107;
  struct l_struct_struct_OC_node* _108;
  struct l_struct_struct_OC_node* _108__PHI_TEMPORARY;

  _102 = bredr_stack_pool;
  _103 = (&_102->field4);
  _104 = ((struct l_struct_struct_OC_node*)_101);
  _105 = *(((struct l_struct_struct_OC_node**)_103));
  _106 = ((uint32_t)(uintptr_t)_105);
  if ((((_105 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _109;
  } else {
    goto _110;
  }

_110:
  _108__PHI_TEMPORARY = _105;   /* for PHI node */
  goto _111;

  do {     /* Syntactic loop '' to make GCC happy */
_111:
  _108 = _108__PHI_TEMPORARY;
  if ((((_108 == _104)&1))) {
    goto _112;
  } else {
    goto _113;
  }

_113:
  _107 = *((&_108->field0));
  if ((((_107 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _114;
  } else {
    _108__PHI_TEMPORARY = _107;   /* for PHI node */
    goto _111;
  }

  } while (1); /* end of syntactic loop '' */
_114:
  goto _109;

_109:
  *(((uint32_t*)_101)) = _106;
  *_103 = _101;
  goto _115;

_112:
  goto _115;

_115:
  return;
}


uint8_t* btstack_memory_le_hci_connection_get(void) {
  struct l_struct_struct_OC_stack_le_pool_t* _116;
  struct l_struct_struct_OC_node* _117;
  uint32_t _118;
  uint8_t* _119;
  uint8_t* _120;
  uint8_t* _120__PHI_TEMPORARY;

  _116 = le_stack_pool;
  _117 = *(((struct l_struct_struct_OC_node**)_116));
  if ((((_117 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _120__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _121;
  } else {
    goto _122;
  }

_122:
  _118 = *(((uint32_t*)_117));
  *(((uint32_t*)_116)) = _118;
  _119 = ((uint8_t*)_117);
  _120__PHI_TEMPORARY = _119;   /* for PHI node */
  goto _121;

_121:
  _120 = _120__PHI_TEMPORARY;
  return _120;
}


void btstack_memory_le_hci_connection_free(uint8_t* _123) {
  struct l_struct_struct_OC_stack_le_pool_t* _124;
  uint8_t** _125;
  struct l_struct_struct_OC_node* _126;
  struct l_struct_struct_OC_node* _127;
  uint32_t _128;
  struct l_struct_struct_OC_node* _129;
  struct l_struct_struct_OC_node* _130;
  struct l_struct_struct_OC_node* _130__PHI_TEMPORARY;

  _124 = le_stack_pool;
  _125 = (&_124->field0);
  _126 = ((struct l_struct_struct_OC_node*)_123);
  _127 = *(((struct l_struct_struct_OC_node**)_124));
  _128 = ((uint32_t)(uintptr_t)_127);
  if ((((_127 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _131;
  } else {
    goto _132;
  }

_132:
  _130__PHI_TEMPORARY = _127;   /* for PHI node */
  goto _133;

  do {     /* Syntactic loop '' to make GCC happy */
_133:
  _130 = _130__PHI_TEMPORARY;
  if ((((_130 == _126)&1))) {
    goto _134;
  } else {
    goto _135;
  }

_135:
  _129 = *((&_130->field0));
  if ((((_129 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _136;
  } else {
    _130__PHI_TEMPORARY = _129;   /* for PHI node */
    goto _133;
  }

  } while (1); /* end of syntactic loop '' */
_136:
  goto _131;

_131:
  *(((uint32_t*)_123)) = _128;
  *_125 = _123;
  goto _137;

_134:
  goto _137;

_137:
  return;
}


uint8_t* btstack_memory_gatt_client_get(void) {
  struct l_struct_struct_OC_stack_le_pool_t* _138;
  uint8_t** _139;
  struct l_struct_struct_OC_node* _140;
  uint32_t _141;
  uint8_t* _142;
  uint8_t* _143;
  uint8_t* _143__PHI_TEMPORARY;

  _138 = le_stack_pool;
  _139 = (&_138->field1);
  _140 = *(((struct l_struct_struct_OC_node**)_139));
  if ((((_140 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    _143__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _144;
  } else {
    goto _145;
  }

_145:
  _141 = *(((uint32_t*)_140));
  *(((uint32_t*)_139)) = _141;
  _142 = ((uint8_t*)_140);
  _143__PHI_TEMPORARY = _142;   /* for PHI node */
  goto _144;

_144:
  _143 = _143__PHI_TEMPORARY;
  return _143;
}


void btstack_memory_gatt_client_free(uint8_t* _146) {
  struct l_struct_struct_OC_stack_le_pool_t* _147;
  uint8_t** _148;
  struct l_struct_struct_OC_node* _149;
  struct l_struct_struct_OC_node* _150;
  uint32_t _151;
  struct l_struct_struct_OC_node* _152;
  struct l_struct_struct_OC_node* _153;
  struct l_struct_struct_OC_node* _153__PHI_TEMPORARY;

  _147 = le_stack_pool;
  _148 = (&_147->field1);
  _149 = ((struct l_struct_struct_OC_node*)_146);
  _150 = *(((struct l_struct_struct_OC_node**)_148));
  _151 = ((uint32_t)(uintptr_t)_150);
  if ((((_150 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _154;
  } else {
    goto _155;
  }

_155:
  _153__PHI_TEMPORARY = _150;   /* for PHI node */
  goto _156;

  do {     /* Syntactic loop '' to make GCC happy */
_156:
  _153 = _153__PHI_TEMPORARY;
  if ((((_153 == _149)&1))) {
    goto _157;
  } else {
    goto _158;
  }

_158:
  _152 = *((&_153->field0));
  if ((((_152 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _159;
  } else {
    _153__PHI_TEMPORARY = _152;   /* for PHI node */
    goto _156;
  }

  } while (1); /* end of syntactic loop '' */
_159:
  goto _154;

_154:
  *(((uint32_t*)_146)) = _151;
  *_148 = _146;
  goto _160;

_157:
  goto _160;

_160:
  return;
}


uint8_t* btstack_memory_sm_lookup_entry_get(void) {
  return ((uint8_t*)/*NULL*/0);
}


void btstack_memory_sm_lookup_entry_free(uint8_t* _161) {
  return;
}


uint8_t* btstack_memory_whitelist_entry_get(void) {
  return ((uint8_t*)/*NULL*/0);
}


void btstack_memory_whitelist_entry_free(uint8_t* _162) {
  return;
}


struct l_struct_struct_OC_bnep_service_t* btstack_memory_bnep_service_get(void) {
  return ((struct l_struct_struct_OC_bnep_service_t*)/*NULL*/0);
}


void btstack_memory_bnep_service_free(struct l_struct_struct_OC_bnep_service_t* _163) {
  return;
}


struct l_struct_struct_OC_bnep_channel_t* btstack_memory_bnep_channel_get(void) {
  return ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0);
}


void btstack_memory_bnep_channel_free(struct l_struct_struct_OC_bnep_channel_t* _164) {
  return;
}


void btstack_bredr_memory_init(struct l_struct_struct_OC_stack_bredr_pool_t* _165) {
  uint8_t** _166;
  uint8_t* _167;
  struct l_struct_struct_OC_node* _168;
  struct l_struct_struct_OC_node* _168__PHI_TEMPORARY;
  uint32_t _169;
  uint32_t _169__PHI_TEMPORARY;
  uint8_t* _170;
  uint8_t* _170__PHI_TEMPORARY;
  struct l_struct_struct_OC_node* _171;
  uint32_t _172;
  struct l_struct_struct_OC_node* _173;
  struct l_struct_struct_OC_node* _174;
  struct l_struct_struct_OC_node* _174__PHI_TEMPORARY;
  struct l_struct_struct_OC_node* _175;
  struct l_struct_struct_OC_node* _175__PHI_TEMPORARY;
  uint8_t* _176;
  uint32_t _177;
  uint8_t** _178;
  uint8_t* _179;
  struct l_struct_struct_OC_node* _180;
  struct l_struct_struct_OC_node* _180__PHI_TEMPORARY;
  uint32_t _181;
  uint32_t _181__PHI_TEMPORARY;
  uint8_t* _182;
  uint8_t* _182__PHI_TEMPORARY;
  struct l_struct_struct_OC_node* _183;
  uint32_t _184;
  struct l_struct_struct_OC_node* _185;
  struct l_struct_struct_OC_node* _186;
  struct l_struct_struct_OC_node* _186__PHI_TEMPORARY;
  struct l_struct_struct_OC_node* _187;
  struct l_struct_struct_OC_node* _187__PHI_TEMPORARY;
  uint8_t* _188;
  uint32_t _189;
  struct l_struct_struct_OC_rfcomm_multiplexer_t* _190;
  struct l_struct_struct_OC_rfcomm_service_t* _191;
  struct l_struct_struct_OC_rfcomm_channel_t* _192;

  bredr_stack_pool = _165;
  _166 = (&_165->field0);
  _167 = ((uint8_t*)((&_165->field5.array[((int32_t)0)])));
  *(((struct l_struct_struct_OC_node**)_165)) = ((struct l_struct_struct_OC_node*)/*NULL*/0);
  _168__PHI_TEMPORARY = ((struct l_struct_struct_OC_node*)/*NULL*/0);   /* for PHI node */
  _169__PHI_TEMPORARY = 0;   /* for PHI node */
  _170__PHI_TEMPORARY = _167;   /* for PHI node */
  goto _193;

  do {     /* Syntactic loop '' to make GCC happy */
_193:
  _168 = _168__PHI_TEMPORARY;
  _169 = _169__PHI_TEMPORARY;
  _170 = _170__PHI_TEMPORARY;
  _171 = ((struct l_struct_struct_OC_node*)_170);
  _172 = ((uint32_t)(uintptr_t)_168);
  if ((((_168 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _194;
  } else {
    goto _195;
  }

_195:
  _174__PHI_TEMPORARY = _168;   /* for PHI node */
  goto _196;

  do {     /* Syntactic loop '' to make GCC happy */
_196:
  _174 = _174__PHI_TEMPORARY;
  if ((((_174 == _171)&1))) {
    goto _197;
  } else {
    goto _198;
  }

_198:
  _173 = *((&_174->field0));
  if ((((_173 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _199;
  } else {
    _174__PHI_TEMPORARY = _173;   /* for PHI node */
    goto _196;
  }

  } while (1); /* end of syntactic loop '' */
_199:
  goto _194;

_197:
  _175__PHI_TEMPORARY = _168;   /* for PHI node */
  goto _200;

_194:
  *(((uint32_t*)_170)) = _172;
  *_166 = _170;
  _175__PHI_TEMPORARY = _171;   /* for PHI node */
  goto _200;

_200:
  _175 = _175__PHI_TEMPORARY;
  _176 = (&_170[((int32_t)16)]);
  _177 = llvm_add_u32(_169, 1);
  if ((((_177 == 4u)&1))) {
    goto _201;
  } else {
    _168__PHI_TEMPORARY = _175;   /* for PHI node */
    _169__PHI_TEMPORARY = _177;   /* for PHI node */
    _170__PHI_TEMPORARY = _176;   /* for PHI node */
    goto _193;
  }

  } while (1); /* end of syntactic loop '' */
_201:
  _178 = (&_165->field1);
  _179 = ((uint8_t*)((&_165->field6.array[((int32_t)0)])));
  *(((struct l_struct_struct_OC_node**)_178)) = ((struct l_struct_struct_OC_node*)/*NULL*/0);
  _180__PHI_TEMPORARY = ((struct l_struct_struct_OC_node*)/*NULL*/0);   /* for PHI node */
  _181__PHI_TEMPORARY = 0;   /* for PHI node */
  _182__PHI_TEMPORARY = _179;   /* for PHI node */
  goto _202;

  do {     /* Syntactic loop '' to make GCC happy */
_202:
  _180 = _180__PHI_TEMPORARY;
  _181 = _181__PHI_TEMPORARY;
  _182 = _182__PHI_TEMPORARY;
  _183 = ((struct l_struct_struct_OC_node*)_182);
  _184 = ((uint32_t)(uintptr_t)_180);
  if ((((_180 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _203;
  } else {
    goto _204;
  }

_204:
  _186__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _205;

  do {     /* Syntactic loop '' to make GCC happy */
_205:
  _186 = _186__PHI_TEMPORARY;
  if ((((_186 == _183)&1))) {
    goto _206;
  } else {
    goto _207;
  }

_207:
  _185 = *((&_186->field0));
  if ((((_185 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _208;
  } else {
    _186__PHI_TEMPORARY = _185;   /* for PHI node */
    goto _205;
  }

  } while (1); /* end of syntactic loop '' */
_208:
  goto _203;

_206:
  _187__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _209;

_203:
  *(((uint32_t*)_182)) = _184;
  *_178 = _182;
  _187__PHI_TEMPORARY = _183;   /* for PHI node */
  goto _209;

_209:
  _187 = _187__PHI_TEMPORARY;
  _188 = (&_182[((int32_t)56)]);
  _189 = llvm_add_u32(_181, 1);
  if ((((_189 == 5u)&1))) {
    goto _210;
  } else {
    _180__PHI_TEMPORARY = _187;   /* for PHI node */
    _181__PHI_TEMPORARY = _189;   /* for PHI node */
    _182__PHI_TEMPORARY = _188;   /* for PHI node */
    goto _202;
  }

  } while (1); /* end of syntactic loop '' */
_210:
  _190 = (&_165->field7.array[((int32_t)0)]);
  *(((uint32_t*)_190)) = 0;
  *(((struct l_struct_struct_OC_rfcomm_multiplexer_t**)((&_165->field2)))) = _190;
  _191 = (&_165->field8.array[((int32_t)0)]);
  *(((uint32_t*)_191)) = 0;
  *(((struct l_struct_struct_OC_rfcomm_service_t**)((&_165->field3)))) = _191;
  _192 = (&_165->field9.array[((int32_t)0)]);
  *(((uint32_t*)_192)) = 0;
  *(((struct l_struct_struct_OC_rfcomm_channel_t**)((&_165->field4)))) = _192;
}


static void memory_pool_create(uint8_t** _211, uint8_t* _212, uint32_t _213, uint32_t _214) {
  struct l_struct_struct_OC_node* _215;
  struct l_struct_struct_OC_node* _215__PHI_TEMPORARY;
  uint32_t _216;
  uint32_t _216__PHI_TEMPORARY;
  uint8_t* _217;
  uint8_t* _217__PHI_TEMPORARY;
  struct l_struct_struct_OC_node* _218;
  uint32_t _219;
  struct l_struct_struct_OC_node* _220;
  struct l_struct_struct_OC_node* _221;
  struct l_struct_struct_OC_node* _221__PHI_TEMPORARY;
  struct l_struct_struct_OC_node* _222;
  struct l_struct_struct_OC_node* _223;
  struct l_struct_struct_OC_node* _223__PHI_TEMPORARY;
  uint8_t* _224;
  uint32_t _225;

  *(((struct l_struct_struct_OC_node**)_211)) = ((struct l_struct_struct_OC_node*)/*NULL*/0);
  if ((((((int32_t)_213) > ((int32_t)0u))&1))) {
    goto _226;
  } else {
    goto _227;
  }

_226:
  _215__PHI_TEMPORARY = ((struct l_struct_struct_OC_node*)/*NULL*/0);   /* for PHI node */
  _216__PHI_TEMPORARY = 0;   /* for PHI node */
  _217__PHI_TEMPORARY = _212;   /* for PHI node */
  goto _228;

  do {     /* Syntactic loop '' to make GCC happy */
_228:
  _215 = _215__PHI_TEMPORARY;
  _216 = _216__PHI_TEMPORARY;
  _217 = _217__PHI_TEMPORARY;
  _218 = ((struct l_struct_struct_OC_node*)_217);
  _219 = ((uint32_t)(uintptr_t)_215);
  if ((((_215 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _229;
  } else {
    goto _230;
  }

_230:
  _221__PHI_TEMPORARY = _215;   /* for PHI node */
  goto _231;

  do {     /* Syntactic loop '' to make GCC happy */
_231:
  _221 = _221__PHI_TEMPORARY;
  if ((((_221 == _218)&1))) {
    goto _232;
  } else {
    goto _233;
  }

_233:
  _220 = *((&_221->field0));
  if ((((_220 == ((struct l_struct_struct_OC_node*)/*NULL*/0))&1))) {
    goto _234;
  } else {
    _221__PHI_TEMPORARY = _220;   /* for PHI node */
    goto _231;
  }

  } while (1); /* end of syntactic loop '' */
_234:
  goto _229;

_232:
  _223__PHI_TEMPORARY = _215;   /* for PHI node */
  goto _235;

_229:
  *(((uint32_t*)_217)) = _219;
  *_211 = _217;
  _222 = ((struct l_struct_struct_OC_node*)_217);
  _223__PHI_TEMPORARY = _222;   /* for PHI node */
  goto _235;

_235:
  _223 = _223__PHI_TEMPORARY;
  _224 = (&_217[((int32_t)_214)]);
  _225 = llvm_add_u32(_216, 1);
  if ((((_225 == _213)&1))) {
    goto _236;
  } else {
    _215__PHI_TEMPORARY = _223;   /* for PHI node */
    _216__PHI_TEMPORARY = _225;   /* for PHI node */
    _217__PHI_TEMPORARY = _224;   /* for PHI node */
    goto _228;
  }

  } while (1); /* end of syntactic loop '' */
_236:
  goto _227;

_227:
  return;
}


void btstack_le_memory_init(struct l_struct_struct_OC_stack_le_pool_t* _237) {
  uint32_t _238;
  uint32_t _239;
  uint8_t* _240;
  uint32_t _241;
  uint32_t _242;
  uint32_t _243;
  struct l_struct_struct_OC_stack_le_pool_t* _244;
  uint8_t** _245;
  uint8_t* _246;
  uint8_t* _247;
  uint32_t _248;
  uint32_t _249;
  uint8_t* _250;
  uint32_t _251;
  uint32_t _252;
  uint32_t _253;
  struct l_struct_struct_OC_stack_le_pool_t* _254;
  uint8_t** _255;
  uint8_t* _256;
  uint8_t* _257;

  le_stack_pool = _237;
  _238 = config_le_hci_connection_num;
  if ((((_238 == 0u)&1))) {
    goto _258;
  } else {
    goto _259;
  }

_259:
  _239 = llvm_mul_u32(_238, 1224);
  _240 =  /*tail*/ malloc(_239);
  _241 = config_asser;
  if ((((_241 == 0u)&1))) {
    goto _260;
  } else {
    goto _261;
  }

_261:
  if ((((_240 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _262;
  } else {
    goto _263;
  }

_263:
  _242 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 405);
  _243 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _262;

_260:
  if ((((_240 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _262;
  } else {
    goto _264;
  }

_264:
   /*tail*/ cpu_reset();
  goto _262;

_262:
  _244 = le_stack_pool;
  _245 = ((uint8_t**)((&_244->field2.array[((int32_t)0)])));
  *_245 = _240;
  _246 = memset(_240, 0, _239);
  _247 = *_245;
   /*tail*/ memory_pool_create(((&_244->field0)), _247, _238, 1224);
  goto _258;

_258:
  _248 = config_le_gatt_client_num;
  if ((((_248 == 0u)&1))) {
    goto _265;
  } else {
    goto _266;
  }

_266:
  _249 = _248 << 7;
  _250 =  /*tail*/ malloc(_249);
  _251 = config_asser;
  if ((((_251 == 0u)&1))) {
    goto _267;
  } else {
    goto _268;
  }

_268:
  if ((((_250 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _269;
  } else {
    goto _270;
  }

_270:
  _252 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 416);
  _253 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _269;

_267:
  if ((((_250 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _269;
  } else {
    goto _271;
  }

_271:
   /*tail*/ cpu_reset();
  goto _269;

_269:
  _254 = le_stack_pool;
  _255 = ((uint8_t**)((&_254->field3.array[((int32_t)0)])));
  *_255 = _250;
  _256 = memset(_250, 0, _249);
  _257 = *_255;
   /*tail*/ memory_pool_create(((&_254->field1)), _257, _248, 128);
  goto _265;

_265:
  return;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


void btstack_le_memory_exit(struct l_struct_struct_OC_stack_le_pool_t* _272) {
  struct l_struct_struct_OC_stack_le_pool_t* _273;
  struct l_struct_struct_OC___le_hci_connection* _274;
  struct l_struct_struct_OC_stack_le_pool_t* _275;
  struct l_struct_struct_OC_stack_le_pool_t* _276;
  struct l_struct_struct_OC_stack_le_pool_t* _276__PHI_TEMPORARY;
  struct l_struct_struct_OC_gatt_client* _277;
  struct l_struct_struct_OC_stack_le_pool_t* _278;

  le_stack_pool = _272;
   /*tail*/ sm_exit();
  _273 = le_stack_pool;
  _274 = *((&_273->field2.array[((int32_t)0)]));
  if ((((_274 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _276__PHI_TEMPORARY = _273;   /* for PHI node */
    goto _279;
  } else {
    goto _280;
  }

_280:
   /*tail*/ free((((uint8_t*)_274)));
  _275 = le_stack_pool;
  *((&_275->field2.array[((int32_t)0)])) = ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0);
  _276__PHI_TEMPORARY = _275;   /* for PHI node */
  goto _279;

_279:
  _276 = _276__PHI_TEMPORARY;
  _277 = *((&_276->field3.array[((int32_t)0)]));
  if ((((_277 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    goto _281;
  } else {
    goto _282;
  }

_282:
   /*tail*/ free((((uint8_t*)_277)));
  _278 = le_stack_pool;
  *((&_278->field3.array[((int32_t)0)])) = ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0);
  goto _281;

_281:
  return;
}

