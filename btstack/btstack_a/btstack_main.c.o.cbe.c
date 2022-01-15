/* Provide Declarations */
#include <stdarg.h>
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
struct l_struct_struct_OC_profile_cmd_handle;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_l2cap_signaling_response;
struct l_struct_struct_OC_authentication_flag;
struct l_struct_struct_OC_l2cap_core_data_t;
struct l_struct_struct_OC_l2cap_stack_t;
struct l_struct_struct_OC_l2cap_service_t;
struct l_struct_struct_OC_retran_flow_ctl_op_t;
struct l_struct_struct_OC_channel_core_data_t;
struct l_struct_struct_OC_l2cap_channel_t;
struct l_struct_struct_OC_multiplexer_core_data_t;
struct l_struct_struct_OC_rfcomm_multiplexer_t;
struct l_struct_struct_OC_rfcomm_service_t;
struct l_struct_struct_OC_rfcomm_rpn_data;
struct l_struct_struct_OC_rfc_channel_core_data_t;
struct l_struct_struct_OC_rfcomm_channel_t;
struct l_struct_struct_OC_stack_bredr_pool_t;
struct l_struct_struct_OC_sm_connection;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_server_t;
struct l_struct_struct_OC___le_hci_connection;
struct l_struct_struct_OC_gatt_client;
struct l_struct_struct_OC_stack_le_pool_t;
struct l_struct_struct_OC_sdp_core_data_t;
struct l_struct_struct_OC_sdp_stack_t;
struct l_struct_struct_OC_rfcomm_stack_t;
struct l_struct_struct_OC___HFP_PARSE_STA;
struct l_struct_struct_OC___INDICATOR;
struct l_struct_struct_OC_hfp_con_core_data_t;
struct l_struct_struct_OC_hfp_con;
struct l_struct_struct_OC_hfp_stack_t;
struct l_struct_struct_OC_run_loop;
struct l_struct_struct_OC_hid_conn;
struct l_struct_struct_OC_hid_keyboard_cmd;
struct l_struct_struct_OC__HID_AC_CMD;
struct l_struct_struct_OC_hid_core_data_t;
struct l_struct_struct_OC_hid_handl;
struct l_struct_struct_OC_spp_conn_t;
struct l_struct_struct_OC_spp_profile_t;
struct l_struct_struct_OC_bredr_profile_t;
struct l_struct_struct_OC_btstack_comm_handle_t;
struct l_struct_struct_OC___spinlock;
struct l_struct_struct_OC__cbuffer;
struct l_struct_struct_OC_ble_mode_ctrl;
struct l_struct_struct_OC_btstack_ctrl;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_hci_ll_param_t;
struct l_struct_struct_OC_database_file;
struct l_struct_struct_OC_create_conn_param_t;
struct l_struct_struct_OC_conn_update_param_t;

/* Function definitions */
typedef void l_fptr_17(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_16(uint8_t*, uint32_t, uint32_t);

typedef struct l_struct_struct_OC_database_file* l_fptr_2(void);

typedef void l_fptr_14(uint16_t, uint8_t);

typedef uint8_t l_fptr_23(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_12(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_13(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_19(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef uint32_t l_fptr_22(uint8_t*, uint8_t, uint8_t);

typedef uint32_t l_fptr_10(uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef void l_fptr_26(uint32_t, uint32_t);

typedef void l_fptr_21(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_24(int, ...);

typedef void l_fptr_4(uint8_t*, uint32_t);

typedef void l_fptr_1(void);

typedef void l_fptr_5(void);

typedef uint32_t l_fptr_18(void);

typedef uint32_t l_fptr_9(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_15(struct l_struct_struct_OC_run_loop*);

typedef void l_fptr_11(uint8_t*, uint8_t, uint16_t, uint8_t*, uint16_t);

typedef uint8_t l_fptr_7(void);

typedef void l_fptr_6(uint8_t);

typedef void l_fptr_20(uint32_t);

typedef uint32_t l_fptr_3(uint8_t*);

typedef uint32_t l_fptr_8(uint8_t*, uint32_t);

typedef void l_fptr_25(int, ...);


/* Types Definitions */
struct l_struct_struct_OC_profile_cmd_handle {
  l_fptr_3* field0;
  l_fptr_8* field1;
  l_fptr_3* field2;
  l_fptr_3* field3;
  l_fptr_9* field4;
  l_fptr_8* field5;
  l_fptr_3* field6;
  l_fptr_9* field7;
  l_fptr_9* field8;
  l_fptr_10* field9;
  l_fptr_3* field10;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_l2cap_signaling_response {
  uint16_t field0;
  uint8_t field1;
  uint8_t field2;
  uint16_t field3;
  uint16_t field4;
};
struct l_array_3_struct_AC_l_struct_struct_OC_l2cap_signaling_response {
  struct l_struct_struct_OC_l2cap_signaling_response array[3];
};
struct l_struct_struct_OC_authentication_flag {
  struct l_array_6_uint8_t field0;
  uint8_t field1;
  uint8_t field2;
};
struct l_array_1_struct_AC_l_struct_struct_OC_authentication_flag {
  struct l_struct_struct_OC_authentication_flag array[1];
};
struct l_struct_struct_OC_l2cap_core_data_t {
  struct l_array_3_struct_AC_l_struct_struct_OC_l2cap_signaling_response field0;
  uint32_t field1;
  uint32_t field2;
  struct l_array_1_struct_AC_l_struct_struct_OC_authentication_flag field3;
  uint8_t field4;
  uint16_t field5;
};
struct l_struct_struct_OC_l2cap_stack_t {
  l_fptr_11* field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
  struct l_struct_struct_OC_l2cap_core_data_t field3;
};
struct l_struct_struct_OC_l2cap_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t* field3;
  l_fptr_12* field4;
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
  l_fptr_12* field4;
  struct l_struct_struct_OC_channel_core_data_t field5;
};
struct l_array_5_struct_AC_l_struct_struct_OC_l2cap_channel_t {
  struct l_struct_struct_OC_l2cap_channel_t array[5];
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
struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_multiplexer_t {
  struct l_struct_struct_OC_rfcomm_multiplexer_t array[1];
};
struct l_struct_struct_OC_rfcomm_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint16_t field4;
  uint8_t* field5;
  l_fptr_12* field6;
};
struct l_array_1_struct_AC_l_struct_struct_OC_rfcomm_service_t {
  struct l_struct_struct_OC_rfcomm_service_t array[1];
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
  l_fptr_12* field5;
  uint8_t* field6;
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
  l_fptr_13* field3;
  uint8_t* field4;
};
struct l_array_16_uint8_t {
  uint8_t array[16];
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
  l_fptr_14* field11;
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
struct l_array_1_struct_AC_l_struct_struct_OC___le_hci_connection_KC_ {
  struct l_struct_struct_OC___le_hci_connection* array[1];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_struct_struct_OC_gatt_client {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  l_fptr_12* field2;
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
struct l_array_1_struct_AC_l_struct_struct_OC_gatt_client_KC_ {
  struct l_struct_struct_OC_gatt_client* array[1];
};
struct l_struct_struct_OC_stack_le_pool_t {
  uint8_t* field0;
  uint8_t* field1;
  struct l_array_1_struct_AC_l_struct_struct_OC___le_hci_connection_KC_ field2;
  struct l_array_1_struct_AC_l_struct_struct_OC_gatt_client_KC_ field3;
};
struct l_struct_struct_OC_sdp_core_data_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_struct_struct_OC_sdp_stack_t {
  struct l_struct_struct_OC_sdp_core_data_t field0;
};
struct l_struct_struct_OC_rfcomm_stack_t {
  l_fptr_11* field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
  struct l_struct_struct_OC_btstack_linked_item* field3;
  uint16_t field4;
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
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_struct_struct_OC_run_loop {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_15* field1;
  uint8_t* field2;
};
struct l_struct_struct_OC_hid_conn {
  struct l_array_10_uint8_t field0;
  struct l_array_6_uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint16_t field5;
  uint16_t field6;
  uint16_t field7;
};
struct l_array_1_struct_AC_l_struct_struct_OC_hid_conn {
  struct l_struct_struct_OC_hid_conn array[1];
};
struct l_struct_struct_OC_hid_keyboard_cmd {
  uint8_t field0;
  uint8_t field1;
  uint16_t field2;
  uint16_t field3;
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC__HID_AC_CMD {
  uint8_t field0;
  uint32_t field1;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_struct_OC_hid_core_data_t {
  struct l_array_1_struct_AC_l_struct_struct_OC_hid_conn field0;
  struct l_struct_struct_OC_hid_keyboard_cmd field1;
  struct l_struct_struct_OC__HID_AC_CMD field2;
};
struct l_struct_struct_OC_hid_handl {
  struct l_struct_struct_OC_hid_core_data_t field0;
  struct l_struct_struct_OC_run_loop field1;
};
struct l_struct_struct_OC_spp_conn_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint32_t field3;
  uint8_t field4;
  struct l_array_6_uint8_t field5;
};
struct l_array_1_struct_AC_l_struct_struct_OC_spp_conn_t {
  struct l_struct_struct_OC_spp_conn_t array[1];
};
struct l_struct_struct_OC_spp_profile_t {
  struct l_array_1_struct_AC_l_struct_struct_OC_spp_conn_t field0;
};
struct l_struct_struct_OC_bredr_profile_t {
  struct l_struct_struct_OC_sdp_stack_t field0;
  struct l_struct_struct_OC_rfcomm_stack_t field1;
  struct l_struct_struct_OC_hfp_stack_t field2;
  struct l_struct_struct_OC_hid_handl field3;
  struct l_struct_struct_OC_spp_profile_t field4;
};
struct l_struct_struct_OC_btstack_comm_handle_t {
  struct l_struct_struct_OC_stack_bredr_pool_t* field0;
  struct l_struct_struct_OC_stack_le_pool_t* field1;
  struct l_struct_struct_OC_l2cap_stack_t* field2;
  struct l_struct_struct_OC_bredr_profile_t* field3;
  uint8_t* field4;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_110_uint8_t {
  uint8_t array[110];
};
struct l_struct_struct_OC___spinlock {
  uint32_t field0;
};
struct l_struct_struct_OC__cbuffer {
  uint8_t* field0;
  uint8_t* field1;
  uint8_t* field2;
  uint8_t* field3;
  uint8_t* field4;
  uint32_t field5;
  uint32_t field6;
  uint32_t field7;
  struct l_struct_struct_OC___spinlock field8;
};
struct l_array_32_uint32_t {
  uint32_t array[32];
};
struct l_struct_struct_OC_ble_mode_ctrl {
  struct l_struct_struct_OC_run_loop field0;
  struct l_struct_struct_OC__cbuffer field1;
  struct l_array_32_uint32_t field2;
  l_fptr_5* field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_struct_struct_OC_btstack_ctrl {
  struct l_struct_struct_OC_ble_mode_ctrl field0;
};
struct l_array_36_uint8_t {
  uint8_t array[36];
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
struct l_array_16_uint16_t {
  uint16_t array[16];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_16* field0;
  l_fptr_17* field1;
  l_fptr_4* field2;
  l_fptr_18* field3;
  l_fptr_12* field4;
  l_fptr_19* field5;
  l_fptr_18* field6;
  l_fptr_20* field7;
  l_fptr_21* field8;
  l_fptr_22* field9;
  l_fptr_5* field10;
  l_fptr_6* field11;
  l_fptr_23* field12;
  l_fptr_12* field13;
  l_fptr_18* field14;
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_43_uint8_t {
  uint8_t array[43];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_78_uint8_t {
  uint8_t array[78];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_132_uint8_t {
  uint8_t array[132];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_46_uint8_t {
  uint8_t array[46];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_struct_struct_OC_hci_ll_param_t {
  uint8_t field0;
};
struct l_struct_struct_OC_database_file {
  l_fptr_24* field0;
  l_fptr_25* field1;
  l_fptr_9* field2;
  l_fptr_9* field3;
  l_fptr_26* field4;
  l_fptr_18* field5;
  l_fptr_24* field6;
};
struct l_array_6_uint32_t {
  uint32_t array[6];
};
struct l_array_2_uint16_t {
  uint16_t array[2];
};
struct l_array_5_uint32_t {
  uint32_t array[5];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC_create_conn_param_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  struct l_array_6_uint8_t field4;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_struct_OC_conn_update_param_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
};

/* External Global Variable Declarations */
extern uint32_t config_stack_modules;
extern uint32_t config_asser;
extern uint32_t config_le_hci_connection_num;
extern uint32_t config_btctler_le_hw_nums;
extern uint8_t ble_debug_enable;
extern uint8_t l2cap_debug_enable;
extern uint32_t config_btctler_le_tws;
extern uint32_t CONFIG_BTCTLER_TWS_ENABLE;
extern uint32_t config_btctler_modules;
extern __MSALIGN__(4) struct l_struct_struct_OC__stack_config stack_configs_app __attribute__((aligned(4)));
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern struct l_struct_struct_OC_user_interface_handler user_interface_app;
extern uint8_t btstack_emitter_support;

/* Function Declarations */
uint16_t get_bredr_pool_len(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint16_t get_le_pool_len(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint16_t get_l2cap_stack_len(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint16_t get_profile_pool_len(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void btstack_mem_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_bredr_memory_init(struct l_struct_struct_OC_stack_bredr_pool_t*);
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void btstack_le_memory_init(struct l_struct_struct_OC_stack_le_pool_t*);
void btstack_v21_main(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void user_cmd_ctrl_init(uint8_t*);
void lib_make_ble_address(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint16_t cal_crc16_private(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow, pure));
void ble_vendor_change_disconn_reason(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void ble_stack_exit(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void stack_run_loop_resume(int, ...);
void os_time_dly(uint32_t);
void stack_run_loop_remove(struct l_struct_struct_OC_run_loop*);
void set_ll_hci_param_config(uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_hci_ll_param_t* ll_hci_param_config_get(void);
uint32_t ble_user_cmd_prepare(uint32_t, uint32_t, ...) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void local_irq_disable(int, ...);
uint32_t cbuf_get_data_size(struct l_struct_struct_OC__cbuffer*);
void local_irq_enable(int, ...);
uint32_t user_data_att_send(uint16_t, uint16_t, uint8_t*, uint16_t, uint8_t);
uint16_t att_get_default_conn_handle(void);
uint32_t user_data_cbuf_is_write_able(uint16_t, uint32_t);
void att_send_init(uint16_t, uint8_t*, uint16_t, uint16_t);
uint32_t att_set_conn_handle(uint16_t, uint32_t, uint32_t);
uint32_t cbuf_write(struct l_struct_struct_OC__cbuffer*, uint8_t*, uint32_t);
void ble_profile_init(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t btstck_app_init_setting(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t jl_app_init_setting(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_bredr_le_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sdfile_get_disk_capacity(void);
void l2cap_init(struct l_struct_struct_OC_l2cap_stack_t*, l_fptr_11*);
static void packet_handler(uint8_t*, uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void cbuf_init(struct l_struct_struct_OC__cbuffer*, uint8_t*, uint32_t);
void stack_run_loop_register(struct l_struct_struct_OC_run_loop*, l_fptr_15*, uint8_t*);
static void __ble_thread_loop_handler(struct l_struct_struct_OC_run_loop*) __ATTRIBUTELIST__((nothrow));
void att_global_info_init(void);
void ble_stack_gatt_role(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_ble_gatt_role(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t ble_vendor_random_address_generate(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t sm_get_local_irk(uint8_t*);
void reverse_128(uint8_t*, uint8_t*);
void ll_vendor_device_address_generate(uint8_t*, uint8_t*, uint8_t);
void put_buf(uint8_t*, uint32_t);
uint8_t ble_set_make_random_address(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_make_resolvable_address(uint8_t);
uint32_t le_controller_set_random_mac(uint8_t*);
void p33_soft_reset(void);
struct l_struct_struct_OC_database_file* open_remote_db_file_opt(int, ...);
void remote_device_db_init_opt(struct l_struct_struct_OC_database_file*);
void set_bt_vm_interface(uint32_t, uint8_t*);
uint8_t* bt_vm_interface(void);
void rfcomm_init(struct l_struct_struct_OC_rfcomm_stack_t*);
uint32_t sdp_send_cmd_iotl(uint8_t*, uint32_t, uint32_t);
void sdp_init(struct l_struct_struct_OC_sdp_stack_t*);
void sdp_master_init(uint8_t*);
uint32_t spp_send_cmd_ioctrl(struct l_struct_struct_OC_spp_ioctrl_str*);
void spp_handl_init(struct l_struct_struct_OC_spp_profile_t*);
uint32_t hfp_send_cmd_io_ctrl(struct l_struct_struct_OC_hfp_ioctrl_str*);
void hfp_profile_init(struct l_struct_struct_OC_hfp_stack_t*, uint8_t);
uint32_t hid_send_cmd_ioctrl(uint8_t*, uint32_t);
void hid_init(struct l_struct_struct_OC_hid_handl*, uint8_t*);
void tws_le_acc_generation_init(void);
void get_remote_device_info_from_vm(void);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t b_create_bt_new_conn(uint8_t*, uint16_t);
void update_connectiong_mac_addr(uint8_t*);
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
void aec_sco_connection_start(uint8_t, uint16_t, uint8_t*);
uint8_t free_conn_for_addr(uint8_t*, uint8_t);
void bt_flip_addr(uint8_t*, uint8_t*);
uint8_t* bt_get_emitter_pin_code(uint8_t);
uint32_t user_send_cmd_prepare(uint32_t, uint16_t, uint8_t*);
void aec_sco_connection_stop(int, ...);
void set_remote_test_flag(uint8_t);
uint32_t tws_api_detach(uint32_t);
uint8_t get_remote_test_flag(int, ...);
void update_bt_current_status(uint8_t*, uint8_t, uint8_t);
void profile_function_status_handle_register(l_fptr_16*);
void update_profile_function_status(uint8_t*, uint32_t, uint32_t);
void profile_channels_status_handle_register(l_fptr_19*);
void updata_profile_channels_status(uint8_t*, uint32_t, uint32_t, uint8_t);
void att_send_schedule(void);
uint32_t le_hci_connection_links_empty(void);
void btstack_le_memory_exit(struct l_struct_struct_OC_stack_le_pool_t*);
uint32_t putchar(uint32_t) __ATTRIBUTELIST__((nothrow));
void ll_hci_destory(void);
uint32_t cbuf_read(struct l_struct_struct_OC__cbuffer*, uint8_t*, uint32_t);
uint32_t ll_hci_adv_enable(uint8_t);
void ll_hci_adv_set_data(uint8_t, uint8_t*);
void ll_hci_adv_scan_response_set_data(uint8_t, uint8_t*);
uint32_t ll_hci_scan_enable(uint8_t, uint8_t);
void ll_hci_scan_set_params(uint8_t, uint16_t, uint16_t);
void att_send_set_mtu_size(uint16_t, uint16_t);
uint32_t ll_hci_disconnect(uint16_t, uint8_t);
uint32_t ll_hci_create_conn(uint8_t*, uint8_t*);
uint32_t ll_hci_create_conn_cancel(void);
uint32_t ll_hci_vendor_send_key_num(uint16_t, uint8_t);
uint32_t ll_vendor_latency_hold_cnt(uint16_t, uint16_t);
uint32_t user_client_search_profile_start(uint32_t, uint32_t);
void att_server_send_request(uint16_t);
void sm_cmd_request_resume(uint32_t*);
uint32_t ll_hci_connection_update(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t);
uint32_t gap_request_connection_parameter_update(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t);
void ll_hci_set_data_length(uint16_t, uint16_t, uint16_t);
void ll_hci_set_ext_adv_params(uint8_t*, uint32_t);
void ll_hci_set_ext_adv_data(uint8_t*, uint32_t);
void ll_hci_set_ext_adv_enable(uint8_t*, uint32_t);
void ll_hci_set_phy(uint16_t, uint8_t, uint8_t, uint8_t, uint16_t);
void ll_hci_set_ext_scan_params(uint8_t*, uint32_t);
void ll_hci_set_ext_scan_enable(uint8_t*, uint32_t);
void ll_hci_ext_create_conn(uint8_t*, uint32_t);
void ll_hci_set_periodic_adv_params(uint8_t*, uint32_t);
void ll_hci_set_periodic_adv_data(uint8_t*, uint32_t);
void ll_hci_set_periodic_adv_enable(uint8_t*, uint32_t);
void ll_hci_periodic_adv_creat_sync(uint8_t*, uint32_t);
void ll_hci_adv_set_params(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t*, uint8_t, uint8_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t hfp_ag_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t hfp_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t acp_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t a2dp_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t spp_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t spp_up_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t hid_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t pbap_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t pan_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t iap_profile_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t emitter_hfp_hf_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_profile_cmd_handle profile_cmd_hdl_str __HIDDEN__;
struct l_struct_struct_OC_l2cap_stack_t profile_l2cap_hdl __HIDDEN__;
struct l_struct_struct_OC_btstack_comm_handle_t btstack_stack __HIDDEN__;
struct l_struct_struct_OC_stack_bredr_pool_t profile_bredr_pool_hdl __HIDDEN__;
struct l_struct_struct_OC_bredr_profile_t profile_bredr_profile __HIDDEN__;
static struct l_array_17_uint8_t _OC_str = { "file:%s, line:%d" };
static struct l_array_110_uint8_t _OC_str_OC_1 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/common/btstack_main.c" };
struct l_struct_struct_OC_stack_le_pool_t profile_le_pool_hdl __HIDDEN__;
static uint8_t ble_disconnect_reason = 19;
static struct l_struct_struct_OC_btstack_ctrl btstack_global_info;
static struct l_array_36_uint8_t _OC_str_OC_7 = { "[ble-info] :---wirte ble len = %d\n\n" };
static struct l_array_36_uint8_t _OC_str_OC_8 = { "[ble-info] :---wirte cmd_err = %d\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_14 = { "ASSERT-FAILD: 0 " };
static struct l_array_16_uint16_t crc_ta = { { 0, 4129, 8258, 12387, 16516u, 20645u, 24774u, 28903u, 33032u, 37161u, 41290u, 45419u, -15988, -11859, -7730, -3601 } };
static struct l_array_23_uint8_t _OC_str_OC_21 = { "LINK_TYPE_acl_connect\n" };
static struct l_array_23_uint8_t _OC_str_OC_22 = { "LINK_TYPE_SCO_connect\n" };
static struct l_array_34_uint8_t _OC_str_OC_23 = { "<BT-log> :connect reason 2222%x\n\n" };
static struct l_array_18_uint8_t _OC_str_OC_24 = { "begine scan 2222\n" };
static struct l_array_40_uint8_t _OC_str_OC_25 = { " spp HCI_EVENT_DISCONNECTION_COMPLETE \n" };
static struct l_array_26_uint8_t _OC_str_OC_26 = { "LINK_TYPE_SCO_disconnect\n" };
static struct l_array_43_uint8_t _OC_str_OC_27 = { "<BT-log> :ESCO_CONNECTION_COMPLETE %d %d\n\n" };
static struct l_array_21_uint8_t _OC_str_OC_28 = { "class init complete\n" };
static struct l_array_38_uint8_t _OC_str_OC_29 = { "<BT-log> :HCI_CONNECTIONS_DELETE-%x\n\n" };
static struct l_array_10_uint8_t _OC_str_OC_30 = { "open scan" };
static struct l_array_78_uint8_t _OC_str_OC_31 = { "<BT-log> :<<<<<<<<<<<<<<<<<<<<Vendor_remote_test: %d %d>>>>>>>>>>>>>>>>>>>>\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_32 = { "testbox connect\n" };
static struct l_array_37_uint8_t _OC_str_OC_33 = { "<BT-log> :HCI_EVENT_VENDOR_META:%x\n\n" };
static struct l_array_28_uint8_t _OC_str_OC_34 = { "HCI_EVENT_VENDOR_FAST_TEST\n" };
static struct l_array_36_uint8_t _OC_str_OC_35 = { "<BT-log> :HCI_EVENT_VENDOR_DUT:%d\n\n" };
static struct l_array_44_uint8_t _OC_str_OC_41 = { "<BT-log> :BLE_CMD_SEND_TEST_KEY_NUM:%x %x\n\n" };
static struct l_array_132_uint8_t str = { "ASSERT-FAILD: config_le_hci_connection_num <= config_btctler_le_hw_nums config_le_hci_connection_num < config_btctler_le_hw_nums!!!" };
static struct l_array_28_uint8_t str_OC_42 = { "[ble-info] :stack_exit end\n" };
static struct l_array_26_uint8_t str_OC_43 = { "[ble-info] :already exit\n" };
static struct l_array_40_uint8_t str_OC_44 = { "[ble-info] :******ble stack exit******\n" };
static struct l_array_33_uint8_t str_OC_45 = { "<BT-log> :ble_stack not run1!!!\n" };
static struct l_array_39_uint8_t str_OC_46 = { "[ble-info] :******ble here***********\n" };
static struct l_array_29_uint8_t str_OC_47 = { "<BT-log> :no bt app setting\n" };
static struct l_array_22_uint8_t str_OC_48 = { "<BT-log> :jl setting\n" };
static struct l_array_36_uint8_t str_OC_49 = { "[ble-info] :ctrl no enable BLE !!!\n" };
static struct l_array_32_uint8_t str_OC_50 = { "[ble-info] :ble stack init_end\n" };
static struct l_array_38_uint8_t str_OC_51 = { "flash capacity not support tws+ble!!!" };
static struct l_array_44_uint8_t str_OC_52 = { "[ble-info] :******bt stack init***********\n" };
static struct l_array_46_uint8_t str_OC_53 = { "<BT-log> : HCI_EVENT_VENDOR_FRE_OFFSET_TRIM \n" };
static struct l_array_45_uint8_t str_OC_54 = { "<BT-log> : HCI_EVENT_VENDOR_ENCRY_COMPLETE \n" };
static struct l_array_45_uint8_t str_OC_55 = { "<BT-log> : HCI_EVENT_VENDOR_SETUP_COMPLETE \n" };
static struct l_array_29_uint8_t str_OC_56 = { "[ble-info] :*le_stack_exit*\n" };
static struct l_array_31_uint8_t str_OC_57 = { "[ble-info] :do ll_hci_destory\n" };
static struct l_array_39_uint8_t str_OC_60 = { "[ble-info] :========address_generate:\n" };
static struct l_array_30_uint8_t str_OC_61 = { "[ble-info] :irk not ready!!!\n" };
static struct l_array_16_uint8_t str_OC_62 = { "[ble_api-dump]:" };
static struct l_array_42_uint8_t str_OC_63 = { "[ble-info] :---ble 's random address-----" };


/* LLVM Intrinsic Builtin Function Bodies */
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
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
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
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}
static __forceinline uint16_t llvm_xor_u16(uint16_t a, uint16_t b) {
  uint16_t r = a ^ b;
  return r;
}


/* Function Bodies */

uint16_t get_bredr_pool_len(void) {
  return 456;
}


uint16_t get_le_pool_len(void) {
  return 16;
}


uint16_t get_l2cap_stack_len(void) {
  return 56;
}


uint16_t get_profile_pool_len(void) {
  return 520;
}


void btstack_mem_init(void) {
  uint32_t _1;
  uint8_t* _2;
  uint8_t* _3;
  uint32_t _4;
  uint32_t _5;
  uint32_t _6;
  uint32_t _7;
  uint32_t _8;
  uint8_t* _9;
  uint8_t* _10;
  uint8_t* _11;

  *((&btstack_stack.field2)) = (&profile_l2cap_hdl);
  _1 = config_stack_modules;
  if (((((_1 & 1) == 0u)&1))) {
    goto _12;
  } else {
    goto _13;
  }

_13:
  *((&btstack_stack.field0)) = (&profile_bredr_pool_hdl);
  *((&btstack_stack.field3)) = (&profile_bredr_profile);
  _2 = memset(((uint8_t*)(&profile_bredr_pool_hdl)), 0, 456);
  _3 = memset(((uint8_t*)(&profile_bredr_profile)), 0, 520);
   /*tail*/ btstack_bredr_memory_init((&profile_bredr_pool_hdl));
  goto _12;

_12:
  if (((((_1 & 4) == 0u)&1))) {
    goto _14;
  } else {
    goto _15;
  }

_15:
  _4 = config_asser;
  _5 = config_le_hci_connection_num;
  _6 = config_btctler_le_hw_nums;
  if ((((_4 == 0u)&1))) {
    goto _16;
  } else {
    goto _17;
  }

_17:
  if ((((((int32_t)_5) <= ((int32_t)_6))&1))) {
    goto _18;
  } else {
    goto _19;
  }

_19:
  _7 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 171);
  _8 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _18;

_16:
  if ((((((int32_t)_5) <= ((int32_t)_6))&1))) {
    goto _18;
  } else {
    goto _20;
  }

_20:
   /*tail*/ cpu_reset();
  goto _18;

_18:
  *((&btstack_stack.field1)) = (&profile_le_pool_hdl);
  _9 = memset(((uint8_t*)(&profile_le_pool_hdl)), 0, 16);
   /*tail*/ btstack_le_memory_init((&profile_le_pool_hdl));
  goto _14;

_14:
  _10 = *((uint8_t**)((&btstack_stack.field2)));
  _11 = memset(_10, 0, 56);
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


void btstack_v21_main(void) {
  uint8_t* _21;
  uint8_t* _22;
  struct l_struct_struct_OC_database_file* _23;
  uint8_t* _24;
  uint8_t _25;
  uint16_t _26;
  uint8_t _27;
  uint16_t _28;
  struct l_struct_struct_OC__stack_config* _29;
  uint32_t _30;
  uint8_t _31;
  uint16_t _32;

  _21 = *((uint8_t**)((&btstack_stack.field3)));
   /*tail*/ user_cmd_ctrl_init(_21);
  _22 = *((uint8_t**)((&btstack_stack.field3)));
  _23 =  /*tail*/ ((l_fptr_2*)(void*)open_remote_db_file_opt)();
   /*tail*/ remote_device_db_init_opt(_23);
  _24 =  /*tail*/ bt_vm_interface();
   /*tail*/ set_bt_vm_interface(62, _24);
   /*tail*/ rfcomm_init((((struct l_struct_struct_OC_rfcomm_stack_t*)((&_22[((int32_t)12)])))));
  *((&profile_cmd_hdl_str.field8)) = sdp_send_cmd_iotl;
   /*tail*/ sdp_init((((struct l_struct_struct_OC_sdp_stack_t*)_22)));
   /*tail*/ sdp_master_init(_22);
  _25 = spp_profile_support;
  if ((((_25 == ((uint8_t)0))&1))) {
    goto _33;
  } else {
    goto _34;
  }

_34:
  _26 = *((&stack_configs_app.field4));
  *((&stack_configs_app.field4)) = (llvm_or_u16(_26, 1));
  *((&profile_cmd_hdl_str.field2)) = ((l_fptr_3*)spp_send_cmd_ioctrl);
   /*tail*/ spp_handl_init((((struct l_struct_struct_OC_spp_profile_t*)((&_22[((int32_t)500)])))));
  goto _33;

_33:
  _27 = hfp_profile_support;
  if ((((_27 == ((uint8_t)0))&1))) {
    goto _35;
  } else {
    goto _36;
  }

_36:
  _28 = *((&stack_configs_app.field4));
  *((&stack_configs_app.field4)) = (llvm_or_u16(_28, 2));
  *((&profile_cmd_hdl_str.field0)) = ((l_fptr_3*)hfp_send_cmd_io_ctrl);
  _29 = user_stack_configs;
  _30 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_29->field9)));
   /*tail*/ hfp_profile_init((((struct l_struct_struct_OC_hfp_stack_t*)((&_22[((int32_t)32)])))), (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_30, 13)))), 1)));
  goto _35;

_35:
  _31 = hid_profile_support;
  if ((((_31 == ((uint8_t)0))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
  _32 = *((&stack_configs_app.field4));
  *((&stack_configs_app.field4)) = (llvm_or_u16(_32, 16));
  *((&profile_cmd_hdl_str.field1)) = hid_send_cmd_ioctrl;
   /*tail*/ hid_init((((struct l_struct_struct_OC_hid_handl*)((&_22[((int32_t)448)])))), _22);
  goto _37;

_37:
   /*tail*/ tws_le_acc_generation_init();
   /*tail*/ get_remote_device_info_from_vm();
}


void lib_make_ble_address(uint8_t* _39, uint8_t* _40) {
  uint32_t _41;    /* Address-exposed local */
  uint8_t* _42;
  uint16_t _43;
  uint8_t _44;
  uint16_t _45;

  _42 = memcpy(((&_39[((int32_t)3)])), ((&_40[((int32_t)3)])), 3);
  _43 =  /*tail*/ cal_crc16_private(_40, 6, 0);
  _41 = (((uint32_t)(uint16_t)_43));
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)_39))) = _43;
  _44 = *((&_40[((int32_t)2)]));
  _45 = cal_crc16_private((((uint8_t*)(&_41))), 2, _43);
  *((&_39[((int32_t)2)])) = (llvm_add_u8((((uint8_t)_45)), _44));
}


static uint16_t cal_crc16_private(uint8_t* _46, uint16_t _47, uint16_t _48) {
  uint16_t _49;
  uint16_t _49__PHI_TEMPORARY;
  uint8_t* _50;
  uint8_t* _50__PHI_TEMPORARY;
  uint16_t _51;
  uint16_t _51__PHI_TEMPORARY;
  uint8_t _52;
  uint16_t _53;
  uint16_t _54;
  uint16_t _55;
  uint16_t _56;
  uint16_t _57;
  uint16_t _58;
  uint16_t _58__PHI_TEMPORARY;

  if ((((_47 == ((uint16_t)0))&1))) {
    _58__PHI_TEMPORARY = _48;   /* for PHI node */
    goto _59;
  } else {
    goto _60;
  }

_60:
  _49__PHI_TEMPORARY = _48;   /* for PHI node */
  _50__PHI_TEMPORARY = _46;   /* for PHI node */
  _51__PHI_TEMPORARY = _47;   /* for PHI node */
  goto _61;

  do {     /* Syntactic loop '' to make GCC happy */
_61:
  _49 = _49__PHI_TEMPORARY;
  _50 = _50__PHI_TEMPORARY;
  _51 = _51__PHI_TEMPORARY;
  _52 = *_50;
  _53 = *((&crc_ta.array[((int32_t)((((uint32_t)(uint8_t)(llvm_lshr_u8(_52, 4)))) ^ (((uint32_t)(uint16_t)(llvm_lshr_u16(_49, 12))))))]));
  _54 = llvm_xor_u16(_53, (llvm_shl_u16(_49, 4)));
  _55 = *((&crc_ta.array[((int32_t)((((uint32_t)(uint16_t)(llvm_lshr_u16(_54, 12)))) ^ (((uint32_t)(uint8_t)(llvm_and_u8(_52, 15))))))]));
  _56 = llvm_xor_u16((llvm_shl_u16(_54, 4)), _55);
  _57 = llvm_add_u16(_51, -1);
  if ((((_57 == ((uint16_t)0))&1))) {
    goto _62;
  } else {
    _49__PHI_TEMPORARY = _56;   /* for PHI node */
    _50__PHI_TEMPORARY = ((&_50[((int32_t)1)]));   /* for PHI node */
    _51__PHI_TEMPORARY = _57;   /* for PHI node */
    goto _61;
  }

  } while (1); /* end of syntactic loop '' */
_62:
  _58__PHI_TEMPORARY = _56;   /* for PHI node */
  goto _59;

_59:
  _58 = _58__PHI_TEMPORARY;
  return _58;
}


void ble_vendor_change_disconn_reason(uint8_t _63) {
  ble_disconnect_reason = _63;
}


void ble_stack_exit(uint32_t _64) {
  uint32_t _65;
  uint8_t _66;
  uint32_t _67;
  uint8_t _68;
  uint8_t _69;
  uint32_t _70;
  uint8_t _71;
  uint8_t _72;
  uint8_t _73;
  uint32_t _74;

  _65 = config_stack_modules;
  if (((((_65 & 6) == 0u)&1))) {
    goto _75;
  } else {
    goto _76;
  }

_76:
  _66 = ble_debug_enable;
  if (((((llvm_and_u8(_66, 1)) == ((uint8_t)0))&1))) {
    goto _77;
  } else {
    goto _78;
  }

_78:
  _67 =  /*tail*/ puts(((&str_OC_44.array[((int32_t)0)])));
  goto _77;

_77:
  _68 = *(volatile uint8_t*)((&btstack_global_info.field0.field4));
  if ((((_68 == ((uint8_t)0))&1))) {
    goto _79;
  } else {
    goto _80;
  }

_79:
  _69 = ble_debug_enable;
  if (((((llvm_and_u8(_69, 1)) == ((uint8_t)0))&1))) {
    goto _75;
  } else {
    goto _81;
  }

_81:
  _70 =  /*tail*/ puts(((&str_OC_43.array[((int32_t)0)])));
  goto _75;

_80:
  *(volatile uint8_t*)((&btstack_global_info.field0.field4)) = (llvm_or_u8((llvm_and_u8((((uint8_t)_64)), 15)), 160u));
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  _71 = *(volatile uint8_t*)((&btstack_global_info.field0.field4));
  if ((((_71 == ((uint8_t)0))&1))) {
    goto _82;
  } else {
    goto _83;
  }

_83:
  goto _84;

  do {     /* Syntactic loop '' to make GCC happy */
_84:
   /*tail*/ os_time_dly(1);
  _72 = *(volatile uint8_t*)((&btstack_global_info.field0.field4));
  if ((((_72 == ((uint8_t)0))&1))) {
    goto _85;
  } else {
    goto _84;
  }

  } while (1); /* end of syntactic loop '' */
_85:
  goto _82;

_82:
   /*tail*/ stack_run_loop_remove(((&btstack_global_info.field0.field0)));
  _73 = ble_debug_enable;
  if (((((llvm_and_u8(_73, 1)) == ((uint8_t)0))&1))) {
    goto _75;
  } else {
    goto _86;
  }

_86:
  _74 =  /*tail*/ puts(((&str_OC_42.array[((int32_t)0)])));
  goto _75;

_75:
  return;
}


void set_ll_hci_param_config(uint32_t _87, uint32_t _88) {
  struct l_struct_struct_OC_hci_ll_param_t* _89;
  uint8_t* _90;
  uint8_t _91;
  uint8_t _92;
  uint8_t _93;
  uint8_t* _94;
  uint8_t _95;
  uint8_t _96;
  uint8_t _97;
  uint8_t* _98;
  uint8_t _99;
  uint8_t _100;
  uint8_t _101;
  uint8_t* _102;
  uint8_t _103;
  uint8_t _104;
  uint8_t _105;
  uint8_t _106;
  uint8_t _106__PHI_TEMPORARY;
  uint8_t _107;
  uint8_t _107__PHI_TEMPORARY;
  uint8_t* _108;
  uint8_t* _108__PHI_TEMPORARY;

  _89 =  /*tail*/ ll_hci_param_config_get();
  switch (_87) {
  default:
    goto _109;
  case 0u:
    goto _110;
  case 1u:
    goto _111;
  case 2u:
    goto _112;
  case 3u:
    goto _113;
  }

_110:
  _90 = (&_89->field0);
  _91 = *_90;
  _92 = llvm_and_u8((((uint8_t)_88)), 3);
  _93 = llvm_and_u8(_91, -4);
  _106__PHI_TEMPORARY = _92;   /* for PHI node */
  _107__PHI_TEMPORARY = _93;   /* for PHI node */
  _108__PHI_TEMPORARY = _90;   /* for PHI node */
  goto _114;

_111:
  _94 = (&_89->field0);
  _95 = *_94;
  _96 = llvm_and_u8((llvm_shl_u8((((uint8_t)_88)), 2)), 12);
  _97 = llvm_and_u8(_95, -13);
  _106__PHI_TEMPORARY = _96;   /* for PHI node */
  _107__PHI_TEMPORARY = _97;   /* for PHI node */
  _108__PHI_TEMPORARY = _94;   /* for PHI node */
  goto _114;

_112:
  _98 = (&_89->field0);
  _99 = *_98;
  _100 = llvm_and_u8((llvm_shl_u8((((uint8_t)_88)), 4)), 48);
  _101 = llvm_and_u8(_99, -49);
  _106__PHI_TEMPORARY = _100;   /* for PHI node */
  _107__PHI_TEMPORARY = _101;   /* for PHI node */
  _108__PHI_TEMPORARY = _98;   /* for PHI node */
  goto _114;

_113:
  _102 = (&_89->field0);
  _103 = *_102;
  _104 = llvm_shl_u8((((uint8_t)_88)), 6);
  _105 = llvm_and_u8(_103, 63);
  _106__PHI_TEMPORARY = _104;   /* for PHI node */
  _107__PHI_TEMPORARY = _105;   /* for PHI node */
  _108__PHI_TEMPORARY = _102;   /* for PHI node */
  goto _114;

_114:
  _106 = _106__PHI_TEMPORARY;
  _107 = _107__PHI_TEMPORARY;
  _108 = _108__PHI_TEMPORARY;
  *_108 = (llvm_or_u8(_107, _106));
  goto _109;

_109:
  return;
}


uint32_t ble_user_cmd_prepare(uint32_t _115, uint32_t _116, ...) {
  struct l_array_6_uint32_t _117;    /* Address-exposed local */
  uint8_t* _118;    /* Address-exposed local */
  uint8_t* _119;
  uint8_t* _120;
  uint8_t _121;
  uint8_t _122;
  uint32_t _123;
  uint32_t _124;
  uint32_t _125;
  uint32_t _126;
  uint32_t _127;
  uint32_t _127__PHI_TEMPORARY;
  uint32_t _128;
  uint32_t _129;
  uint32_t _130;
  uint32_t _131;
  uint32_t _132;
  uint8_t* _133;
  uint32_t _134;
  uint32_t _135;
  uint32_t _136;
  uint32_t _137;
  uint16_t _138;
  uint32_t _139;
  uint8_t* _140;
  uint32_t _141;
  uint32_t _142;
  uint32_t _143;
  uint32_t _144;
  uint16_t _145;
  uint32_t _146;
  uint32_t* _147;
  uint32_t _148;
  uint32_t _149;
  uint32_t _150;
  uint32_t* _151;
  uint32_t _152;
  uint32_t _153;
  uint8_t* _154;
  uint32_t _155;
  uint32_t _156;
  uint32_t _157;
  uint8_t* _158;
  uint32_t _159;
  uint32_t _160;
  uint32_t _161;
  uint32_t _162;
  uint32_t _163;
  uint32_t _164;
  uint32_t _165;
  uint32_t _166;
  uint32_t _167;
  uint32_t _168;
  uint8_t _169;
  uint32_t _170;
  uint32_t _171;
  uint32_t _171__PHI_TEMPORARY;
  uint32_t _172;
  uint32_t _172__PHI_TEMPORARY;
  uint32_t _173;
  uint8_t _174;
  uint32_t _175;
  uint32_t _176;
  uint32_t _176__PHI_TEMPORARY;

  _119 = ((uint8_t*)(&_117));
  _120 = ((uint8_t*)(&_118));
  _121 = *(volatile uint8_t*)((&btstack_global_info.field0.field4));
  if ((((_121 == ((uint8_t)0))&1))) {
    goto _177;
  } else {
    goto _178;
  }

_177:
  _122 = l2cap_debug_enable;
  if ((((((int8_t)_122) < ((int8_t)((uint8_t)0)))&1))) {
    goto _179;
  } else {
    _176__PHI_TEMPORARY = -94;   /* for PHI node */
    goto _180;
  }

_179:
  _123 =  /*tail*/ puts(((&str_OC_45.array[((int32_t)0)])));
  _176__PHI_TEMPORARY = -94;   /* for PHI node */
  goto _180;

_178:
  if ((((((int32_t)_116) > ((int32_t)5u))&1))) {
    _176__PHI_TEMPORARY = -99;   /* for PHI node */
    goto _180;
  } else {
    goto _181;
  }

_181:
  *((&_117.array[((int32_t)0)])) = ((_116 << 16) | _115);
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  _124 = llvm_add_u32(_116, 1);
  _125 = *((&btstack_global_info.field0.field1.field7));
  _126 =  /*tail*/ cbuf_get_data_size(((&btstack_global_info.field0.field1)));
  if ((((((uint32_t)_124) > ((uint32_t)(llvm_lshr_u32((llvm_sub_u32(_125, _126)), 2))))&1))) {
    goto _182;
  } else {
    goto _183;
  }

_182:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
  _176__PHI_TEMPORARY = -100;   /* for PHI node */
  goto _180;

_183:
  0; va_start(*(va_list*)_120, _116);
  if ((((((int32_t)_124) > ((int32_t)1u))&1))) {
    goto _184;
  } else {
    goto _185;
  }

_184:
  _127__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _186;

_187:
  goto _185;

_185:
  0; va_end(*(va_list*)_120);
  switch (_115) {
  default:
    goto _188;
  case 26u:
    goto _189;
  case 10u:
    goto _190;
  case 9u:
    goto _191;
  case 28u:
    goto _192;
  case 7u:
    goto _193;
  case 24u:
    goto _194;
  case 25u:
    goto _195;
  case 3u:
    goto _196;
  case 4u:
    goto _196;
  case 14u:
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  }

  do {     /* Syntactic loop '' to make GCC happy */
_186:
  _127 = _127__PHI_TEMPORARY;
  _128 = va_arg(*(va_list*)(&_118), uint32_t);
 ;
  *((&_117.array[((int32_t)_127)])) = _128;
  _129 = llvm_add_u32(_127, 1);
  if ((((_129 == _124)&1))) {
    goto _187;
  } else {
    _127__PHI_TEMPORARY = _129;   /* for PHI node */
    goto _186;
  }

  } while (1); /* end of syntactic loop '' */
_189:
  _130 = config_stack_modules;
  if (((((_130 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _198;
  }

_198:
  _131 = *((&_117.array[((int32_t)1)]));
  _132 = *((&_117.array[((int32_t)2)]));
  _133 = *(((uint8_t**)((&_117.array[((int32_t)3)]))));
  _134 = *((&_117.array[((int32_t)4)]));
  _135 = *((&_117.array[((int32_t)5)]));
  _136 = user_data_att_send((((uint16_t)_131)), (((uint16_t)_132)), _133, (((uint16_t)_134)), (((uint8_t)_135)));
  _171__PHI_TEMPORARY = _136;   /* for PHI node */
  goto _197;

_190:
  _137 = config_stack_modules;
  if (((((_137 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _199;
  }

_199:
  _138 = att_get_default_conn_handle();
  _139 = *((&_117.array[((int32_t)1)]));
  _140 = *(((uint8_t**)((&_117.array[((int32_t)2)]))));
  _141 = *((&_117.array[((int32_t)3)]));
  _142 = *((&_117.array[((int32_t)4)]));
  _143 = user_data_att_send(_138, (((uint16_t)_139)), _140, (((uint16_t)_141)), (((uint8_t)_142)));
  _171__PHI_TEMPORARY = _143;   /* for PHI node */
  goto _197;

_191:
  _144 = config_stack_modules;
  if (((((_144 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _200;
  }

_200:
  _145 = att_get_default_conn_handle();
  _146 = user_data_cbuf_is_write_able(_145, 0);
  _147 = *(((uint32_t**)((&_117.array[((int32_t)1)]))));
  *_147 = _146;
  _171__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _197;

_192:
  _148 = config_stack_modules;
  if (((((_148 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _201;
  }

_201:
  _149 = *((&_117.array[((int32_t)1)]));
  _150 = user_data_cbuf_is_write_able((((uint16_t)_149)), 0);
  _151 = *(((uint32_t**)((&_117.array[((int32_t)2)]))));
  *_151 = _150;
  _171__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _197;

_193:
  _152 = config_stack_modules;
  if (((((_152 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _202;
  }

_202:
  _153 = *((&_117.array[((int32_t)1)]));
  _154 = *(((uint8_t**)((&_117.array[((int32_t)2)]))));
  _155 = *((&_117.array[((int32_t)3)]));
  _156 = *((&_117.array[((int32_t)4)]));
  att_send_init((((uint16_t)_153)), _154, (((uint16_t)_155)), (((uint16_t)_156)));
  _171__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _197;

_194:
  _157 = config_stack_modules;
  if (((((_157 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _203;
  }

_203:
  _158 = *(((uint8_t**)((&_117.array[((int32_t)1)]))));
  _159 = *((&_117.array[((int32_t)2)]));
  _160 = *((&_117.array[((int32_t)3)]));
  att_send_init(-16, _158, (((uint16_t)_159)), (((uint16_t)_160)));
  _171__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _197;

_195:
  _161 = config_stack_modules;
  if (((((_161 & 4) == 0u)&1))) {
    _171__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _197;
  } else {
    goto _204;
  }

_204:
  _162 = *((&_117.array[((int32_t)1)]));
  _163 = *((&_117.array[((int32_t)2)]));
  _164 = *((&_117.array[((int32_t)3)]));
  _165 = att_set_conn_handle((((uint16_t)_162)), _163, _164);
  _171__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _197;

_196:
  _166 = *((&_117.array[((int32_t)1)]));
  if ((((((int32_t)_166) > ((int32_t)31u))&1))) {
    _171__PHI_TEMPORARY = -95;   /* for PHI node */
    goto _197;
  } else {
    goto _188;
  }

_188:
  _167 = _124 << 2;
  _168 = cbuf_write(((&btstack_global_info.field0.field1)), _119, _167);
  ((l_fptr_1*)(void*)local_irq_enable)();
  _169 = ble_debug_enable;
  if (((((llvm_and_u8(_169, 1)) == ((uint8_t)0))&1))) {
    _172__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _205;
  } else {
    goto _206;
  }

_206:
  _170 = printf(((&_OC_str_OC_7.array[((int32_t)0)])), _167);
  _172__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _205;

_197:
  _171 = _171__PHI_TEMPORARY;
  ((l_fptr_1*)(void*)local_irq_enable)();
  _172__PHI_TEMPORARY = _171;   /* for PHI node */
  goto _205;

_205:
  _172 = _172__PHI_TEMPORARY;
  ((l_fptr_1*)(void*)stack_run_loop_resume)();
  if ((((_115 == 14u)&1))) {
    goto _207;
  } else {
    goto _208;
  }

_207:
  _173 = *((&_117.array[((int32_t)1)]));
  ble_stack_exit(_173);
  goto _208;

_208:
  if ((((_172 == 0u)&1))) {
    _176__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _180;
  } else {
    goto _209;
  }

_209:
  _174 = ble_debug_enable;
  if (((((llvm_and_u8(_174, 1)) == ((uint8_t)0))&1))) {
    _176__PHI_TEMPORARY = _172;   /* for PHI node */
    goto _180;
  } else {
    goto _210;
  }

_210:
  _175 = printf(((&_OC_str_OC_8.array[((int32_t)0)])), _172);
  _176__PHI_TEMPORARY = _172;   /* for PHI node */
  goto _180;

_180:
  _176 = _176__PHI_TEMPORARY;
  return _176;
}


void ble_profile_init(void) {
  uint8_t _211;
  uint32_t _212;

  _211 = ble_debug_enable;
  if (((((llvm_and_u8(_211, 1)) == ((uint8_t)0))&1))) {
    goto _213;
  } else {
    goto _214;
  }

_214:
  _212 =  /*tail*/ puts(((&str_OC_46.array[((int32_t)0)])));
  goto _213;

_213:
  return;
}


uint8_t btstck_app_init_setting(void) {
  uint8_t _215;
  uint32_t _216;

  _215 = l2cap_debug_enable;
  if ((((((int8_t)_215) < ((int8_t)((uint8_t)0)))&1))) {
    goto _217;
  } else {
    goto _218;
  }

_217:
  _216 =  /*tail*/ puts(((&str_OC_47.array[((int32_t)0)])));
  goto _218;

_218:
  return 0;
}


uint8_t jl_app_init_setting(void) {
  uint8_t _219;
  uint32_t _220;

  _219 = l2cap_debug_enable;
  if ((((((int8_t)_219) < ((int8_t)((uint8_t)0)))&1))) {
    goto _221;
  } else {
    goto _222;
  }

_221:
  _220 =  /*tail*/ puts(((&str_OC_48.array[((int32_t)0)])));
  goto _222;

_222:
  return 0;
}


void btstack_bredr_le_init(void) {
  uint8_t _223;
  uint32_t _224;
  uint32_t _225;
  uint32_t _226;
  uint32_t _227;
  uint32_t _228;
  uint8_t _229;
  uint8_t _230;
  uint32_t _231;
  uint32_t _232;
  uint32_t _233;
  uint32_t _234;
  struct l_struct_struct_OC_l2cap_stack_t* _235;
  uint32_t _236;
  uint8_t _237;
  uint32_t _238;
  uint8_t* _239;
  uint8_t _240;
  uint32_t _241;

  _223 = ble_debug_enable;
  if (((((llvm_and_u8(_223, 1)) == ((uint8_t)0))&1))) {
    goto _242;
  } else {
    goto _243;
  }

_243:
  _224 =  /*tail*/ puts(((&str_OC_52.array[((int32_t)0)])));
  goto _242;

_242:
  _225 = config_btctler_le_tws;
  _226 = CONFIG_BTCTLER_TWS_ENABLE;
  _227 = config_stack_modules;
  if ((((((((_226 | _225) == 0u)&1)) | ((((_227 & 4) == 0u)&1)))&1))) {
    goto _244;
  } else {
    goto _245;
  }

_245:
  _228 =  /*tail*/ sdfile_get_disk_capacity();
  if ((((((uint32_t)_228) < ((uint32_t)1048576u))&1))) {
    goto _246;
  } else {
    goto _244;
  }

_246:
  _229 =  /*tail*/ jl_app_init_setting();
  _230 =  /*tail*/ btstck_app_init_setting();
  if ((((_230 == ((uint8_t)0))&1))) {
    goto _247;
  } else {
    goto _244;
  }

_247:
  _231 =  /*tail*/ puts(((&str_OC_51.array[((int32_t)0)])));
  _232 = config_asser;
  if ((((_232 == 0u)&1))) {
    goto _248;
  } else {
    goto _249;
  }

_249:
  _233 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 1014);
  _234 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _250;

_248:
   /*tail*/ cpu_reset();
  goto _250;

_244:
  _235 = *((&btstack_stack.field2));
   /*tail*/ l2cap_init(_235, packet_handler);
  if (((((_227 & 1) == 0u)&1))) {
    goto _251;
  } else {
    goto _252;
  }

_252:
   /*tail*/ profile_function_status_handle_register(update_profile_function_status);
   /*tail*/ profile_channels_status_handle_register(updata_profile_channels_status);
   /*tail*/ btstack_v21_main();
  goto _251;

_251:
  if (((((_227 & 6) == 0u)&1))) {
    goto _250;
  } else {
    goto _253;
  }

_253:
  _236 = config_btctler_modules;
  if (((((_236 & 2) == 0u)&1))) {
    goto _254;
  } else {
    goto _255;
  }

_254:
  _237 = ble_debug_enable;
  if (((((llvm_and_u8(_237, 1)) == ((uint8_t)0))&1))) {
    goto _250;
  } else {
    goto _256;
  }

_256:
  _238 =  /*tail*/ puts(((&str_OC_49.array[((int32_t)0)])));
  goto _250;

_255:
  _239 = memset(((uint8_t*)(&btstack_global_info)), 0, 184);
   /*tail*/ cbuf_init(((&btstack_global_info.field0.field1)), ((uint8_t*)((&btstack_global_info.field0.field2.array[((int32_t)0)]))), 128);
   /*tail*/ stack_run_loop_register(((&btstack_global_info.field0.field0)), __ble_thread_loop_handler, ((uint8_t*)/*NULL*/0));
  *(volatile uint8_t*)((&btstack_global_info.field0.field4)) = 1;
  if (((((_227 & 4) == 0u)&1))) {
    goto _257;
  } else {
    goto _258;
  }

_258:
   /*tail*/ att_global_info_init();
   /*tail*/ ble_profile_init();
  goto _257;

_257:
  _240 = ble_debug_enable;
  if (((((llvm_and_u8(_240, 1)) == ((uint8_t)0))&1))) {
    goto _250;
  } else {
    goto _259;
  }

_259:
  _241 =  /*tail*/ puts(((&str_OC_50.array[((int32_t)0)])));
  goto _250;

_250:
  return;
}


static void packet_handler(uint8_t* _260, uint8_t _261, uint16_t _262, uint8_t* _263, uint16_t _264) {
  struct l_array_6_uint8_t _265;    /* Address-exposed local */
  uint8_t* _266;
  uint8_t _267;
  uint8_t* _268;
  uint8_t* _269;
  uint8_t _270;
  uint8_t _271;
  uint8_t _272;
  uint32_t _273;
  uint8_t _274;
  uint8_t _275;
  uint8_t _276;
  l_fptr_4* _277;
  uint8_t _278;
  uint8_t _279;
  uint8_t _280;
  uint32_t _281;
  uint8_t _282;
  l_fptr_4* _283;
  uint8_t _284;
  uint8_t _285;
  uint32_t _286;
  l_fptr_4* _287;
  l_fptr_4* _288;
  l_fptr_4* _288__PHI_TEMPORARY;
  uint8_t _289;
  uint32_t _290;
  uint8_t _291;
  uint8_t _292;
  uint8_t _293;
  uint8_t _294;
  uint8_t* _295;
  uint8_t _296;
  uint32_t _297;
  uint8_t _298;
  uint8_t _299;
  uint32_t _300;
  uint8_t _301;
  l_fptr_4* _302;
  uint8_t _303;
  uint8_t _304;
  uint8_t _305;
  uint32_t _306;
  uint8_t _307;
  uint8_t* _308;
  uint8_t* _309;
  uint8_t* _310;
  uint8_t _311;
  uint8_t* _312;
  uint8_t _313;
  uint8_t* _314;
  uint8_t _315;
  uint32_t _316;
  uint8_t* _317;
  uint8_t* _317__PHI_TEMPORARY;
  uint8_t* _318;
  uint8_t* _318__PHI_TEMPORARY;
  uint8_t* _319;
  uint8_t _320;
  uint8_t _321;
  uint8_t _322;
  uint8_t _323;
  uint8_t _324;
  uint32_t _325;
  uint8_t _326;
  uint8_t _327;
  uint32_t _328;
  uint8_t _329;
  l_fptr_4* _330;
  uint8_t _331;
  uint8_t _332;
  uint32_t _333;
  uint8_t _334;
  uint8_t _335;
  uint8_t _336;
  uint8_t* _337;
  uint8_t _338;
  uint8_t _339;
  uint32_t _340;
  uint8_t _341;
  uint8_t _342;
  uint32_t _343;
  uint8_t _344;
  uint8_t _345;
  uint8_t _346;
  uint32_t _347;
  uint32_t _348;
  uint8_t _349;
  uint8_t _350;
  uint8_t _351;
  uint8_t* _352;
  uint8_t _353;
  uint32_t _354;
  uint8_t _355;
  uint8_t _356;
  uint8_t _356__PHI_TEMPORARY;
  uint8_t _357;
  uint8_t _358;
  uint32_t _359;
  l_fptr_5* _360;
  uint8_t _361;
  uint8_t _362;
  uint32_t _363;
  l_fptr_6* _364;
  uint8_t _365;
  uint8_t _366;
  uint32_t _367;
  uint8_t _368;
  uint32_t _369;
  uint8_t _370;
  uint32_t _371;

  _266 = (&_265.array[((int32_t)0)]);
  if ((((_261 == ((uint8_t)4))&1))) {
    goto _372;
  } else {
    goto _373;
  }

_372:
  _267 = *_263;
  switch (_267) {
  default:
    goto _373;
  case ((uint8_t)3):
    goto _374;
  case ((uint8_t)5):
    goto _375;
  case ((uint8_t)44):
    goto _376;
  case ((uint8_t)96):
    goto _377;
  case ((uint8_t)109):
    goto _378;
  case ((uint8_t)-2):
    goto _379;
  case ((uint8_t)-11):
    goto _380;
  case ((uint8_t)-4):
    goto _381;
  case ((uint8_t)-6):
    goto _382;
  case ((uint8_t)-7):
    goto _383;
  case ((uint8_t)-9):
    goto _384;
  case ((uint8_t)-10):
    goto _385;
  }

_374:
  _268 = memcpy(_266, ((&_263[((int32_t)5)])), 6);
  _269 = (&_263[((int32_t)2)]);
  _270 = *_269;
  _271 = *((&_263[((int32_t)11)]));
  if ((((_270 == ((uint8_t)0))&1))) {
    goto _386;
  } else {
    goto _387;
  }

_386:
  if ((((_271 == ((uint8_t)1))&1))) {
    goto _388;
  } else {
    goto _389;
  }

_388:
  _272 = l2cap_debug_enable;
  if (((((llvm_and_u8(_272, 32)) == ((uint8_t)0))&1))) {
    goto _390;
  } else {
    goto _391;
  }

_391:
  _273 =  /*tail*/ puts(((&_OC_str_OC_21.array[((int32_t)0)])));
  goto _390;

_390:
  _274 = *((&_263[((int32_t)3)]));
  _275 = *((&_263[((int32_t)4)]));
  _276 = b_create_bt_new_conn(_266, (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_275)), 8)), (((uint16_t)(uint8_t)_274)))));
  update_connectiong_mac_addr(_266);
  _277 = *((&user_interface_app.field2));
  if ((((_277 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _392;
  } else {
    goto _393;
  }

_393:
  _277(_266, 0);
  goto _373;

_392:
  _278 = *_263;
  _279 = *_269;
  bt_event_update_to_user(_266, 1212369152u, _278, (((uint32_t)(uint8_t)_279)));
  goto _373;

_389:
  switch (_271) {
  default:
    goto _373;
  case ((uint8_t)0):
    goto _394;
  case ((uint8_t)2):
    goto _394;
  }

_394:
  _280 = l2cap_debug_enable;
  if (((((llvm_and_u8(_280, 32)) == ((uint8_t)0))&1))) {
    goto _395;
  } else {
    goto _396;
  }

_396:
  _281 =  /*tail*/ puts(((&_OC_str_OC_22.array[((int32_t)0)])));
  goto _395;

_395:
  aec_sco_connection_start(2, 30, _266);
  goto _373;

_387:
  if ((((_271 == ((uint8_t)1))&1))) {
    goto _397;
  } else {
    goto _373;
  }

_397:
  _282 = free_conn_for_addr(_266, 0);
  _283 = *((&user_interface_app.field2));
  _284 = l2cap_debug_enable;
  if ((((_283 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _398;
  } else {
    goto _399;
  }

_399:
  if ((((((int8_t)_284) < ((int8_t)((uint8_t)0)))&1))) {
    goto _400;
  } else {
    _288__PHI_TEMPORARY = _283;   /* for PHI node */
    goto _401;
  }

_400:
  _285 = *_269;
  _286 = printf(((&_OC_str_OC_23.array[((int32_t)0)])), (((uint32_t)(uint8_t)_285)));
  _287 = *((&user_interface_app.field2));
  _288__PHI_TEMPORARY = _287;   /* for PHI node */
  goto _401;

_401:
  _288 = _288__PHI_TEMPORARY;
  _289 = *_269;
  _288(_266, (((uint32_t)(uint8_t)_289)));
  goto _373;

_398:
  if (((((llvm_and_u8(_284, 32)) == ((uint8_t)0))&1))) {
    goto _402;
  } else {
    goto _403;
  }

_403:
  _290 = puts(((&_OC_str_OC_24.array[((int32_t)0)])));
  goto _402;

_402:
  _291 = *_263;
  _292 = *_269;
  bt_event_update_to_user(_266, 1212369152u, _291, (((uint32_t)(uint8_t)_292)));
  goto _373;

_375:
  bt_flip_addr(_266, ((&_263[((int32_t)7)])));
  _293 = btstack_emitter_support;
  if ((((_293 == ((uint8_t)0))&1))) {
    goto _404;
  } else {
    goto _405;
  }

_405:
  _294 = *((&_263[((int32_t)5)]));
  if ((((_294 == ((uint8_t)5))&1))) {
    goto _406;
  } else {
    goto _404;
  }

_406:
  _295 = bt_get_emitter_pin_code(2);
  if ((((_295 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _404;
  } else {
    goto _407;
  }

_407:
  _296 = free_conn_for_addr(_266, 1);
  _297 = user_send_cmd_prepare(2, 0, ((uint8_t*)/*NULL*/0));
  goto _373;

_404:
  update_connectiong_mac_addr(_266);
  if ((((((uint16_t)_264) > ((uint16_t)((uint16_t)6)))&1))) {
    goto _408;
  } else {
    goto _373;
  }

_408:
  _298 = *((&_263[((int32_t)6)]));
  switch (_298) {
  default:
    goto _373;
  case ((uint8_t)1):
    goto _409;
  case ((uint8_t)0):
    goto _410;
  case ((uint8_t)2):
    goto _410;
  }

_409:
  _299 = l2cap_debug_enable;
  if (((((llvm_and_u8(_299, 32)) == ((uint8_t)0))&1))) {
    goto _411;
  } else {
    goto _412;
  }

_412:
  _300 = puts(((&_OC_str_OC_25.array[((int32_t)0)])));
  goto _411;

_411:
  _301 = free_conn_for_addr(_266, 1);
  _302 = *((&user_interface_app.field2));
  if ((((_302 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _413;
  } else {
    goto _414;
  }

_414:
  _302(_266, 22);
  goto _373;

_413:
  _303 = *_263;
  _304 = *((&_263[((int32_t)5)]));
  bt_event_update_to_user(_266, 1212369152u, _303, (((uint32_t)(uint8_t)_304)));
  goto _373;

_410:
  _305 = l2cap_debug_enable;
  if (((((llvm_and_u8(_305, 32)) == ((uint8_t)0))&1))) {
    goto _415;
  } else {
    goto _416;
  }

_416:
  _306 = puts(((&_OC_str_OC_26.array[((int32_t)0)])));
  goto _415;

_415:
  ((l_fptr_1*)(void*)aec_sco_connection_stop)();
  goto _373;

_376:
  _307 = l2cap_debug_enable;
  _308 = (&_263[((int32_t)18)]);
  if ((((((int8_t)_307) < ((int8_t)((uint8_t)0)))&1))) {
    goto _417;
  } else {
    goto _418;
  }

_418:
  _309 = (&_263[((int32_t)16)]);
  _310 = (&_263[((int32_t)17)]);
  _317__PHI_TEMPORARY = _310;   /* for PHI node */
  _318__PHI_TEMPORARY = _309;   /* for PHI node */
  goto _419;

_417:
  _311 = *_308;
  _312 = (&_263[((int32_t)16)]);
  _313 = *_312;
  _314 = (&_263[((int32_t)17)]);
  _315 = *_314;
  _316 =  /*tail*/ printf(((&_OC_str_OC_27.array[((int32_t)0)])), (((uint32_t)(uint8_t)_311)), (((((uint32_t)(uint8_t)_315)) << 8) | (((uint32_t)(uint8_t)_313))));
  _317__PHI_TEMPORARY = _314;   /* for PHI node */
  _318__PHI_TEMPORARY = _312;   /* for PHI node */
  goto _419;

_419:
  _317 = _317__PHI_TEMPORARY;
  _318 = _318__PHI_TEMPORARY;
  _319 = memcpy(_266, ((&_263[((int32_t)5)])), 6);
  _320 = *_308;
  _321 = *_318;
  _322 = *_317;
  aec_sco_connection_start(_320, (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_322)), 8)), (((uint16_t)(uint8_t)_321)))), _266);
  goto _373;

_377:
  _323 = *((&_263[((int32_t)2)]));
  if ((((_323 == ((uint8_t)2))&1))) {
    goto _420;
  } else {
    goto _373;
  }

_420:
  _324 = l2cap_debug_enable;
  if (((((llvm_and_u8(_324, 32)) == ((uint8_t)0))&1))) {
    goto _373;
  } else {
    goto _421;
  }

_421:
  _325 =  /*tail*/ puts(((&_OC_str_OC_28.array[((int32_t)0)])));
  goto _373;

_378:
  _326 = l2cap_debug_enable;
  if ((((((int8_t)_326) < ((int8_t)((uint8_t)0)))&1))) {
    goto _422;
  } else {
    goto _423;
  }

_422:
  _327 = *((&_263[((int32_t)2)]));
  _328 =  /*tail*/ printf(((&_OC_str_OC_29.array[((int32_t)0)])), (((uint32_t)(uint8_t)_327)));
  goto _423;

_423:
  bt_flip_addr(_266, ((&_263[((int32_t)4)])));
  _329 = *((&_263[((int32_t)3)]));
  _330 = *((&user_interface_app.field2));
  if (((((((_329 == ((uint8_t)1))&1)) & (((_330 != ((l_fptr_4*)/*NULL*/0))&1)))&1))) {
    goto _424;
  } else {
    goto _425;
  }

_424:
  _331 = *((&_263[((int32_t)2)]));
  _330(_266, (((uint32_t)(uint8_t)_331)));
  goto _373;

_425:
  if ((((_329 == ((uint8_t)1))&1))) {
    goto _426;
  } else {
    goto _373;
  }

_426:
  _332 = l2cap_debug_enable;
  if (((((llvm_and_u8(_332, 32)) == ((uint8_t)0))&1))) {
    goto _427;
  } else {
    goto _428;
  }

_428:
  _333 = puts(((&_OC_str_OC_30.array[((int32_t)0)])));
  goto _427;

_427:
  _334 = *_263;
  _335 = *((&_263[((int32_t)2)]));
  bt_event_update_to_user(_266, 1212369152u, _334, (((uint32_t)(uint8_t)_335)));
  goto _373;

_379:
  _336 = l2cap_debug_enable;
  _337 = (&_263[((int32_t)2)]);
  if ((((((int8_t)_336) < ((int8_t)((uint8_t)0)))&1))) {
    goto _429;
  } else {
    goto _430;
  }

_429:
  _338 = *_337;
  _339 = *((&_263[((int32_t)3)]));
  _340 =  /*tail*/ printf(((&_OC_str_OC_31.array[((int32_t)0)])), (((uint32_t)(uint8_t)_338)), (((uint32_t)(uint8_t)_339)));
  goto _430;

_430:
  _341 = *_337;
  if ((((_341 == ((uint8_t)0))&1))) {
    goto _431;
  } else {
    goto _432;
  }

_432:
   /*tail*/ set_remote_test_flag(_341);
  _342 = l2cap_debug_enable;
  if (((((llvm_and_u8(_342, 32)) == ((uint8_t)0))&1))) {
    goto _433;
  } else {
    goto _434;
  }

_434:
  _343 =  /*tail*/ puts(((&_OC_str_OC_32.array[((int32_t)0)])));
  goto _433;

_433:
  _344 = *_263;
  _345 = *_337;
  bt_event_update_to_user(_266, 1212369152u, _344, (((uint32_t)(uint8_t)_345)));
  _346 = *_337;
  _347 = CONFIG_BTCTLER_TWS_ENABLE;
  if (((((((_346 != ((uint8_t)3))&1)) & (((_347 != 0u)&1)))&1))) {
    goto _435;
  } else {
    goto _373;
  }

_435:
  _348 = tws_api_detach(13);
  goto _373;

_431:
  _349 =  /*tail*/ ((l_fptr_7*)(void*)get_remote_test_flag)();
  if ((((_349 == ((uint8_t)0))&1))) {
    goto _373;
  } else {
    goto _436;
  }

_436:
  _350 = *_263;
  bt_event_update_to_user(_266, 1212369152u, _350, 0);
  goto _373;

_380:
  _351 = l2cap_debug_enable;
  _352 = (&_263[((int32_t)2)]);
  if ((((((int8_t)_351) < ((int8_t)((uint8_t)0)))&1))) {
    goto _437;
  } else {
    _356__PHI_TEMPORARY = -11;   /* for PHI node */
    goto _438;
  }

_437:
  _353 = *_352;
  _354 =  /*tail*/ printf(((&_OC_str_OC_33.array[((int32_t)0)])), (((uint32_t)(uint8_t)_353)));
  _355 = *_263;
  _356__PHI_TEMPORARY = _355;   /* for PHI node */
  goto _438;

_438:
  _356 = _356__PHI_TEMPORARY;
  _357 = *_352;
   /*tail*/ bt_event_update_to_user(((&_263[((int32_t)3)])), 1212369152u, _356, (((uint32_t)(uint8_t)_357)));
  goto _373;

_381:
  _358 = l2cap_debug_enable;
  if (((((llvm_and_u8(_358, 32)) == ((uint8_t)0))&1))) {
    goto _439;
  } else {
    goto _440;
  }

_440:
  _359 =  /*tail*/ puts(((&_OC_str_OC_34.array[((int32_t)0)])));
  goto _439;

_439:
  _360 = *((&user_interface_app.field10));
  if ((((_360 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _373;
  } else {
    goto _441;
  }

_441:
   /*tail*/ _360();
  goto _373;

_382:
  _361 = l2cap_debug_enable;
  if ((((((int8_t)_361) < ((int8_t)((uint8_t)0)))&1))) {
    goto _442;
  } else {
    goto _443;
  }

_442:
  _362 = *((&_263[((int32_t)2)]));
  _363 =  /*tail*/ printf(((&_OC_str_OC_35.array[((int32_t)0)])), (((uint32_t)(uint8_t)_362)));
  goto _443;

_443:
  _364 = *((&user_interface_app.field11));
  if ((((_364 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _373;
  } else {
    goto _444;
  }

_444:
  _365 = *((&_263[((int32_t)2)]));
   /*tail*/ _364(_365);
  goto _373;

_383:
  _366 = l2cap_debug_enable;
  if ((((((int8_t)_366) < ((int8_t)((uint8_t)0)))&1))) {
    goto _445;
  } else {
    goto _446;
  }

_445:
  _367 =  /*tail*/ puts(((&str_OC_55.array[((int32_t)0)])));
  goto _446;

_446:
   /*tail*/ update_bt_current_status(((&_263[((int32_t)2)])), 5, 0);
  goto _373;

_384:
  _368 = l2cap_debug_enable;
  if ((((((int8_t)_368) < ((int8_t)((uint8_t)0)))&1))) {
    goto _447;
  } else {
    goto _448;
  }

_447:
  _369 =  /*tail*/ puts(((&str_OC_54.array[((int32_t)0)])));
  goto _448;

_448:
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 8, 0);
  goto _373;

_385:
  _370 = l2cap_debug_enable;
  if ((((((int8_t)_370) < ((int8_t)((uint8_t)0)))&1))) {
    goto _449;
  } else {
    goto _450;
  }

_449:
  _371 =  /*tail*/ puts(((&str_OC_53.array[((int32_t)0)])));
  goto _450;

_450:
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 51, 0);
  goto _373;

_373:
  return;
}


static void __ble_thread_loop_handler(struct l_struct_struct_OC_run_loop* _451) {
  struct l_array_6_uint8_t _452;    /* Address-exposed local */
  struct l_array_2_uint16_t _453;    /* Address-exposed local */
  struct l_array_5_uint32_t _454;    /* Address-exposed local */
  uint8_t* _455;
  uint8_t* _456;
  uint32_t _457;
  uint32_t _458;
  uint16_t* _459;
  uint16_t* _460;
  uint32_t* _461;
  uint32_t* _462;
  uint32_t* _463;
  uint8_t* _464;
  uint32_t* _465;
  uint8_t** _466;
  uint8_t** _467;
  uint32_t _468;
  struct l_struct_struct_OC_create_conn_param_t** _469;
  struct l_struct_struct_OC_conn_update_param_t** _470;
  uint8_t** _471;
  uint32_t* _472;
  uint32_t _473;
  uint16_t _474;
  uint32_t _475;
  uint16_t _476;
  uint32_t _477;
  uint32_t _478;
  uint32_t _479;
  uint32_t _480;
  uint16_t _481;
  uint32_t _482;
  uint32_t _483;
  uint8_t* _484;
  uint32_t _485;
  uint16_t _486;
  uint32_t _487;
  uint32_t _488;
  uint8_t* _489;
  uint8_t _490;
  uint32_t _491;
  uint8_t* _492;
  uint32_t _493;
  uint8_t* _494;
  uint32_t _495;
  uint32_t _496;
  uint32_t _497;
  uint32_t _498;
  uint32_t _499;
  uint32_t _500;
  uint32_t _501;
  uint32_t _502;
  uint32_t _503;
  uint32_t _504;
  uint32_t _505;
  uint16_t _506;
  uint32_t _507;
  uint32_t _508;
  uint32_t _509;
  uint32_t _510;
  uint8_t _511;
  uint32_t _512;
  struct l_struct_struct_OC_create_conn_param_t* _513;
  uint32_t _514;
  uint32_t _515;
  uint8_t _516;
  uint32_t _517;
  uint32_t _518;
  uint32_t _519;
  uint32_t _520;
  uint32_t _521;
  uint32_t _522;
  uint32_t _523;
  uint32_t _524;
  uint32_t _525;
  uint32_t _526;
  uint32_t _527;
  uint32_t _528;
  uint32_t _529;
  struct l_struct_struct_OC_conn_update_param_t* _530;
  uint32_t _531;
  uint16_t _532;
  uint16_t _533;
  uint16_t _534;
  uint16_t _535;
  uint32_t _536;
  struct l_struct_struct_OC_conn_update_param_t* _537;
  uint32_t _538;
  uint16_t _539;
  uint16_t _540;
  uint16_t _541;
  uint16_t _542;
  uint32_t _543;
  uint32_t _544;
  uint32_t _545;
  uint32_t _546;
  uint8_t* _547;
  uint32_t _548;
  uint8_t* _549;
  uint32_t _550;
  uint8_t* _551;
  uint32_t _552;
  uint32_t _553;
  uint32_t _554;
  uint32_t _555;
  uint32_t _556;
  uint32_t _557;
  uint8_t* _558;
  uint32_t _559;
  uint8_t* _560;
  uint32_t _561;
  uint8_t* _562;
  uint32_t _563;
  uint8_t* _564;
  uint32_t _565;
  uint8_t* _566;
  uint32_t _567;
  uint8_t* _568;
  uint32_t _569;
  uint8_t* _570;
  uint32_t _571;
  uint32_t _572;
  uint32_t _572__PHI_TEMPORARY;
  l_fptr_5* _573;
  uint8_t _574;
  uint32_t _575;
  struct l_struct_struct_OC_stack_le_pool_t* _576;
  uint32_t _577;
  uint8_t _578;
  uint8_t _579;
  uint32_t _580;
  uint8_t _581;
  uint32_t _582;

  _455 = ((uint8_t*)(&_453));
  _456 = ((uint8_t*)(&_454));
  _457 =  /*tail*/ cbuf_get_data_size(((&btstack_global_info.field0.field1)));
  if ((((_457 == 0u)&1))) {
    goto _583;
  } else {
    goto _584;
  }

_583:
  _458 = config_stack_modules;
  _572__PHI_TEMPORARY = _458;   /* for PHI node */
  goto _585;

_584:
  _459 = (&_453.array[((int32_t)0)]);
  _460 = (&_453.array[((int32_t)1)]);
  _461 = (&_454.array[((int32_t)0)]);
  _462 = (&_454.array[((int32_t)1)]);
  _463 = (&_454.array[((int32_t)2)]);
  _464 = (&_452.array[((int32_t)0)]);
  _465 = (&_454.array[((int32_t)3)]);
  _466 = ((uint8_t**)_465);
  _467 = ((uint8_t**)_462);
  _468 = config_stack_modules;
  _469 = ((struct l_struct_struct_OC_create_conn_param_t**)(&_454));
  _470 = ((struct l_struct_struct_OC_conn_update_param_t**)_462);
  _471 = ((uint8_t**)(&_454));
  _472 = (&_454.array[((int32_t)4)]);
  goto _586;

  do {     /* Syntactic loop '' to make GCC happy */
_586:
  _473 = cbuf_read(((&btstack_global_info.field0.field1)), _455, 4);
  _474 = *_460;
  if ((((_474 == ((uint16_t)0))&1))) {
    goto _587;
  } else {
    goto _588;
  }

_588:
  _475 = cbuf_read(((&btstack_global_info.field0.field1)), _456, ((((uint32_t)(uint16_t)_474)) << 2));
  goto _587;

_587:
  _476 = *_459;
  switch (_476) {
  default:
    goto _589;
  case ((uint16_t)1):
    goto _590;
  case ((uint16_t)2):
    goto _591;
  case ((uint16_t)17):
    goto _592;
  case ((uint16_t)3):
    goto _593;
  case ((uint16_t)4):
    goto _594;
  case ((uint16_t)21):
    goto _595;
  case ((uint16_t)12):
    goto _596;
  case ((uint16_t)22):
    goto _597;
  case ((uint16_t)13):
    goto _598;
  case ((uint16_t)6):
    goto _599;
  case ((uint16_t)8):
    goto _600;
  case ((uint16_t)27):
    goto _601;
  case ((uint16_t)5):
    goto _602;
  case ((uint16_t)15):
    goto _603;
  case ((uint16_t)16):
    goto _604;
  case ((uint16_t)18):
    goto _605;
  case ((uint16_t)19):
    goto _606;
  case ((uint16_t)128):
    goto _607;
  case ((uint16_t)23):
    goto _608;
  case ((uint16_t)29):
    goto _609;
  case ((uint16_t)130):
    goto _610;
  case ((uint16_t)11):
    goto _611;
  case ((uint16_t)20):
    goto _612;
  case ((uint16_t)64):
    goto _613;
  case ((uint16_t)65):
    goto _614;
  case ((uint16_t)67):
    goto _615;
  case ((uint16_t)68):
    goto _616;
  case ((uint16_t)69):
    goto _617;
  case ((uint16_t)70):
    goto _618;
  case ((uint16_t)71):
    goto _619;
  case ((uint16_t)72):
    goto _620;
  case ((uint16_t)73):
    goto _621;
  case ((uint16_t)74):
    goto _622;
  case ((uint16_t)75):
    goto _623;
  }

_623:
  _570 = *_471;
  _571 = *_462;
  ll_hci_periodic_adv_creat_sync(_570, _571);
  goto _589;

_622:
  _568 = *_471;
  _569 = *_462;
  ll_hci_set_periodic_adv_enable(_568, _569);
  goto _589;

_621:
  _566 = *_471;
  _567 = *_462;
  ll_hci_set_periodic_adv_data(_566, _567);
  goto _589;

_620:
  _564 = *_471;
  _565 = *_462;
  ll_hci_set_periodic_adv_params(_564, _565);
  goto _589;

_619:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _624;
  }

_624:
  _562 = *_471;
  _563 = *_462;
  ll_hci_ext_create_conn(_562, _563);
  goto _589;

_618:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _625;
  }

_625:
  _560 = *_471;
  _561 = *_462;
  ll_hci_set_ext_scan_enable(_560, _561);
  goto _589;

_617:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _626;
  }

_626:
  _558 = *_471;
  _559 = *_462;
  ll_hci_set_ext_scan_params(_558, _559);
  goto _589;

_616:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _627;
  }

_627:
  _553 = *_461;
  _554 = *_462;
  _555 = *_463;
  _556 = *_465;
  _557 = *_472;
  ll_hci_set_phy((((uint16_t)_553)), (((uint8_t)_554)), (((uint8_t)_555)), (((uint8_t)_556)), (((uint16_t)_557)));
  goto _589;

_615:
  _551 = *_471;
  _552 = *_462;
  ll_hci_set_ext_adv_enable(_551, _552);
  goto _589;

_614:
  _549 = *_471;
  _550 = *_462;
  ll_hci_set_ext_adv_data(_549, _550);
  goto _589;

_613:
  _547 = *_471;
  _548 = *_462;
  ll_hci_set_ext_adv_params(_547, _548);
  goto _589;

_612:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _628;
  }

_628:
  _544 = *_461;
  _545 = *_462;
  _546 = *_463;
  ll_hci_set_data_length((((uint16_t)_544)), (((uint16_t)_545)), (((uint16_t)_546)));
  goto _589;

_611:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _629;
  }

_629:
  _537 = *_470;
  _538 = *_461;
  _539 = *((&_537->field0));
  _540 = *((&_537->field1));
  _541 = *((&_537->field2));
  _542 = *((&_537->field3));
  _543 = gap_request_connection_parameter_update((((uint16_t)_538)), _539, _540, _541, _542);
  goto _589;

_610:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _630;
  }

_630:
  _530 = *_470;
  _531 = *_461;
  _532 = *((&_530->field0));
  _533 = *((&_530->field1));
  _534 = *((&_530->field2));
  _535 = *((&_530->field3));
  _536 = ll_hci_connection_update((((uint16_t)_531)), _532, _533, _534, _535, 1, 1);
  goto _589;

_609:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _631;
  }

_631:
  sm_cmd_request_resume(_461);
  goto _589;

_608:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _632;
  }

_632:
  _529 = *_461;
  att_server_send_request((((uint16_t)_529)));
  goto _589;

_607:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _633;
  }

_633:
  _526 = *_461;
  _527 = *_462;
  _528 = user_client_search_profile_start(_526, _527);
  goto _589;

_606:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _634;
  }

_634:
  _523 = *_461;
  _524 = *_462;
  _525 = ll_vendor_latency_hold_cnt((((uint16_t)_523)), (((uint16_t)_524)));
  goto _589;

_605:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _635;
  }

_635:
  _516 = l2cap_debug_enable;
  if ((((((int8_t)_516) < ((int8_t)((uint8_t)0)))&1))) {
    goto _636;
  } else {
    goto _637;
  }

_636:
  _517 = *_461;
  _518 = *_462;
  _519 = printf(((&_OC_str_OC_41.array[((int32_t)0)])), _517, _518);
  goto _637;

_637:
  _520 = *_461;
  _521 = *_462;
  _522 = ll_hci_vendor_send_key_num((((uint16_t)_520)), (((uint8_t)_521)));
  goto _589;

_604:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _638;
  }

_638:
  _515 = ll_hci_create_conn_cancel();
  goto _589;

_603:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _639;
  }

_639:
  _513 = *_469;
  _514 = ll_hci_create_conn((((uint8_t*)_513)), ((&_513->field3)));
  goto _589;

_602:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _640;
  }

_640:
  _510 = *_461;
  if ((((_510 == 0u)&1))) {
    goto _589;
  } else {
    goto _641;
  }

_641:
  _511 = ble_disconnect_reason;
  _512 = ll_hci_disconnect((((uint16_t)_510)), _511);
  goto _589;

_601:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _642;
  }

_642:
  _508 = *_461;
  _509 = *_462;
  att_send_set_mtu_size((((uint16_t)_508)), (((uint16_t)_509)));
  goto _589;

_600:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _643;
  }

_643:
  _506 = att_get_default_conn_handle();
  _507 = *_461;
  att_send_set_mtu_size(_506, (((uint16_t)_507)));
  goto _589;

_599:
  _505 = *_461;
  *((uint32_t*)((&btstack_global_info.field0.field3))) = _505;
  goto _589;

_598:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _644;
  }

_644:
  _502 = *_461;
  _503 = *_462;
  _504 = *_463;
  ll_hci_scan_set_params((((uint8_t)_502)), (((uint16_t)_503)), (((uint16_t)_504)));
  goto _589;

_597:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _645;
  }

_645:
  _499 = *_461;
  _500 = *_462;
  _501 = ll_hci_scan_enable((((uint8_t)_499)), (((uint8_t)_500)));
  goto _589;

_596:
  if (((((_468 & 4) == 0u)&1))) {
    goto _589;
  } else {
    goto _646;
  }

_646:
  _497 = *_461;
  _498 = ll_hci_scan_enable((((uint8_t)_497)), 1);
  goto _589;

_595:
  _495 = *_461;
  _496 = *_462;
  set_ll_hci_param_config(_495, _496);
  goto _589;

_594:
  _493 = *_461;
  _494 = *_467;
  ll_hci_adv_scan_response_set_data((((uint8_t)_493)), _494);
  goto _589;

_593:
  _491 = *_461;
  _492 = *_467;
  ll_hci_adv_set_data((((uint8_t)_491)), _492);
  goto _589;

_592:
  _485 = *_461;
  _486 = ((uint16_t)_485);
  _487 = *_462;
  _488 = *_463;
  _489 = *_466;
  _490 = *_489;
  ll_hci_adv_set_params(_486, _486, (((uint8_t)_487)), _490, ((&_489[((int32_t)1)])), (((uint8_t)_488)), 0);
  goto _589;

_591:
  _480 = *_461;
  _481 = ((uint16_t)_480);
  _482 = *_462;
  _483 = *_463;
  _484 = memset(_464, 0, 6);
  ll_hci_adv_set_params(_481, _481, (((uint8_t)_482)), 0, _464, (((uint8_t)_483)), 0);
  goto _589;

_590:
  _478 = *_461;
  _479 = ll_hci_adv_enable((((uint8_t)_478)));
  goto _589;

_589:
  _477 = cbuf_get_data_size(((&btstack_global_info.field0.field1)));
  if ((((_477 == 0u)&1))) {
    goto _647;
  } else {
    goto _586;
  }

  } while (1); /* end of syntactic loop '' */
_647:
  _572__PHI_TEMPORARY = _468;   /* for PHI node */
  goto _585;

_585:
  _572 = _572__PHI_TEMPORARY;
  if (((((_572 & 4) == 0u)&1))) {
    goto _648;
  } else {
    goto _649;
  }

_649:
  att_send_schedule();
  goto _648;

_648:
  _573 = *((&btstack_global_info.field0.field3));
  if ((((_573 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _650;
  } else {
    goto _651;
  }

_651:
  _573();
  goto _650;

_650:
  _574 = *(volatile uint8_t*)((&btstack_global_info.field0.field4));
  if (((((llvm_and_u8(_574, -16)) == ((uint8_t)-96))&1))) {
    goto _652;
  } else {
    goto _653;
  }

_652:
  if (((((_572 & 4) == 0u)&1))) {
    goto _654;
  } else {
    goto _655;
  }

_655:
  _575 = le_hci_connection_links_empty();
  if ((((_575 == 0u)&1))) {
    goto _656;
  } else {
    goto _657;
  }

_657:
  _576 = *((&btstack_stack.field1));
  btstack_le_memory_exit(_576);
  goto _654;

_656:
  _577 = putchar(87);
  goto _653;

_654:
  _578 = *(volatile uint8_t*)((&btstack_global_info.field0.field4));
  if (((((llvm_and_u8(_578, 15)) == ((uint8_t)0))&1))) {
    goto _658;
  } else {
    goto _659;
  }

_659:
  _579 = ble_debug_enable;
  if (((((llvm_and_u8(_579, 1)) == ((uint8_t)0))&1))) {
    goto _660;
  } else {
    goto _661;
  }

_661:
  _580 = puts(((&str_OC_57.array[((int32_t)0)])));
  goto _660;

_660:
  ll_hci_destory();
  goto _658;

_658:
  *(volatile uint8_t*)((&btstack_global_info.field0.field4)) = 0;
  _581 = ble_debug_enable;
  if (((((llvm_and_u8(_581, 1)) == ((uint8_t)0))&1))) {
    goto _653;
  } else {
    goto _662;
  }

_662:
  _582 = puts(((&str_OC_56.array[((int32_t)0)])));
  goto _653;

_653:
  return;
}


void ble_stack_gatt_role(uint8_t _663) {
  uint8_t _664;

  _664 = *((&btstack_global_info.field0.field5));
  *((&btstack_global_info.field0.field5)) = (llvm_or_u8((llvm_and_u8(_664, -8)), (llvm_and_u8(_663, 7))));
}


uint8_t get_ble_gatt_role(void) {
  uint8_t _665;

  _665 = *((&btstack_global_info.field0.field5));
  return (llvm_and_u8(_665, 7));
}


uint8_t ble_vendor_random_address_generate(uint8_t* _666, uint8_t _667) {
  struct l_array_16_uint8_t _668;    /* Address-exposed local */
  struct l_array_16_uint8_t _669;    /* Address-exposed local */
  uint8_t* _670;
  uint8_t* _671;
  uint8_t _672;
  uint8_t _673;
  uint32_t _674;
  uint8_t _675;
  uint32_t _676;
  uint8_t _677;
  uint8_t _678;
  uint8_t _678__PHI_TEMPORARY;
  uint32_t _679;
  uint8_t _680;
  uint8_t _681;
  uint8_t _681__PHI_TEMPORARY;
  uint32_t _682;
  uint8_t _683;
  uint8_t _683__PHI_TEMPORARY;

  _670 = (&_668.array[((int32_t)0)]);
  _671 = (&_669.array[((int32_t)0)]);
  if ((((_667 == ((uint8_t)3))&1))) {
    goto _684;
  } else {
    goto _685;
  }

_684:
  _672 = sm_get_local_irk(_671);
  if ((((_672 == ((uint8_t)0))&1))) {
    goto _686;
  } else {
    goto _687;
  }

_686:
  _673 = ble_debug_enable;
  if (((((llvm_and_u8(_673, 1)) == ((uint8_t)0))&1))) {
    _683__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _688;
  } else {
    goto _689;
  }

_689:
  _674 = puts(((&str_OC_61.array[((int32_t)0)])));
  _683__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _688;

_687:
  reverse_128(_671, _670);
  goto _685;

_685:
  ll_vendor_device_address_generate(_666, _670, _667);
  _675 = ble_debug_enable;
  if (((((llvm_and_u8(_675, 1)) == ((uint8_t)0))&1))) {
    _678__PHI_TEMPORARY = _675;   /* for PHI node */
    goto _690;
  } else {
    goto _691;
  }

_691:
  _676 = puts(((&str_OC_60.array[((int32_t)0)])));
  _677 = ble_debug_enable;
  _678__PHI_TEMPORARY = _677;   /* for PHI node */
  goto _690;

_690:
  _678 = _678__PHI_TEMPORARY;
  if (((((llvm_and_u8(_678, 32)) == ((uint8_t)0))&1))) {
    _681__PHI_TEMPORARY = _678;   /* for PHI node */
    goto _692;
  } else {
    goto _693;
  }

_693:
  _679 = puts(((&str_OC_62.array[((int32_t)0)])));
  put_buf(_666, 6);
  _680 = ble_debug_enable;
  _681__PHI_TEMPORARY = _680;   /* for PHI node */
  goto _692;

_692:
  _681 = _681__PHI_TEMPORARY;
  if (((((llvm_and_u8(_681, 32)) == ((uint8_t)0))&1))) {
    _683__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _688;
  } else {
    goto _694;
  }

_694:
  _682 = puts(((&str_OC_62.array[((int32_t)0)])));
  put_buf(_671, 16);
  _683__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _688;

_688:
  _683 = _683__PHI_TEMPORARY;
  return _683;
}


uint8_t ble_set_make_random_address(uint8_t _695) {
  struct l_array_6_uint8_t _696;    /* Address-exposed local */
  uint8_t* _697;
  uint32_t _698;
  uint8_t _699;
  uint32_t _700;
  uint32_t _701;
  uint8_t _702;
  uint32_t _703;
  uint8_t _704;
  uint8_t _705;
  uint8_t _705__PHI_TEMPORARY;
  uint32_t _706;
  uint8_t _707;
  uint8_t _707__PHI_TEMPORARY;

  _697 = (&_696.array[((int32_t)0)]);
  _698 = ((uint32_t)(uint8_t)_695);
  if ((((((uint8_t)(llvm_add_u8(_695, -1))) > ((uint8_t)((uint8_t)2)))&1))) {
    _707__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _708;
  } else {
    goto _709;
  }

_709:
  _699 = ble_vendor_random_address_generate(_697, _695);
  if (((((((_695 == ((uint8_t)3))&1)) & (((_699 == ((uint8_t)0))&1)))&1))) {
    goto _710;
  } else {
    goto _711;
  }

_710:
  sm_set_make_resolvable_address(1);
  _707__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _708;

_711:
  _700 = ble_user_cmd_prepare(21, 2, 0, _698);
  _701 = le_controller_set_random_mac(_697);
  _702 = ble_debug_enable;
  if (((((llvm_and_u8(_702, 1)) == ((uint8_t)0))&1))) {
    _705__PHI_TEMPORARY = _702;   /* for PHI node */
    goto _712;
  } else {
    goto _713;
  }

_713:
  _703 = puts(((&str_OC_63.array[((int32_t)0)])));
  _704 = ble_debug_enable;
  _705__PHI_TEMPORARY = _704;   /* for PHI node */
  goto _712;

_712:
  _705 = _705__PHI_TEMPORARY;
  if (((((llvm_and_u8(_705, 32)) == ((uint8_t)0))&1))) {
    _707__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _708;
  } else {
    goto _714;
  }

_714:
  _706 = puts(((&str_OC_62.array[((int32_t)0)])));
  put_buf(_697, 6);
  _707__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _708;

_708:
  _707 = _707__PHI_TEMPORARY;
  return _707;
}

