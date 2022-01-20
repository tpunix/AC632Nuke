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



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_l2cap_signaling_response;
struct l_struct_struct_OC_authentication_flag;
struct l_struct_struct_OC_l2cap_core_data_t;
struct l_struct_struct_OC_l2cap_stack_t;
struct l_struct_struct_OC_btstack_packet_callback_registration_t;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_l2cap_fixed_channel;
struct l_struct_struct_OC_retran_flow_ctl_op_t;
struct l_struct_struct_OC_channel_core_data_t;
struct l_struct_struct_OC_l2cap_channel_t;
struct l_struct_struct_OC_btstack_linked_list_iterator_t;
struct l_struct_struct_OC_sm_connection;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_server_t;
struct l_struct_struct_OC___le_hci_connection;
struct l_struct_struct_OC_l2cap_service_t;
struct l_struct_struct_OC_le_connection_parameter_range;

/* Function definitions */
typedef void l_fptr_5(struct l_struct_struct_OC_btstack_timer_source*);

typedef uint16_t l_fptr_4(void);

typedef void l_fptr_3(void);

typedef void l_fptr_6(uint16_t, uint8_t);

typedef void l_fptr_2(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_1(uint8_t*, uint8_t, uint16_t, uint8_t*, uint16_t);


void l2cap_register_signaling_response(uint16_t, uint8_t, uint8_t, uint16_t, uint16_t);

/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
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
  l_fptr_1* field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
  struct l_struct_struct_OC_l2cap_core_data_t field3;
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_2* field1;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_111_uint8_t {
  uint8_t array[111];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_61_uint8_t {
  uint8_t array[61];
};
struct l_array_57_uint8_t {
  uint8_t array[57];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
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
struct l_array_43_uint8_t {
  uint8_t array[43];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_83_uint8_t {
  uint8_t array[83];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_56_uint8_t {
  uint8_t array[56];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_struct_struct_OC_l2cap_fixed_channel {
  l_fptr_2* field0;
  uint8_t field1;
};
struct l_array_3_struct_AC_l_struct_struct_OC_l2cap_fixed_channel {
  struct l_struct_struct_OC_l2cap_fixed_channel array[3];
};
struct l_array_88_uint8_t {
  uint8_t array[88];
};
struct l_array_70_uint8_t {
  uint8_t array[70];
};
struct l_array_49_uint8_t {
  uint8_t array[49];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_74_uint8_t {
  uint8_t array[74];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_142_uint8_t {
  uint8_t array[142];
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_107_uint8_t {
  uint8_t array[107];
};
struct l_array_84_uint8_t {
  uint8_t array[84];
};
struct l_array_62_uint8_t {
  uint8_t array[62];
};
struct l_array_117_uint8_t {
  uint8_t array[117];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_86_uint8_t {
  uint8_t array[86];
};
struct l_array_77_uint8_t {
  uint8_t array[77];
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
struct l_struct_struct_OC_btstack_linked_list_iterator_t {
  uint32_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_5* field3;
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
  l_fptr_6* field11;
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
struct l_struct_struct_OC_l2cap_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t* field3;
  l_fptr_2* field4;
};
struct l_struct_struct_OC_le_connection_parameter_range {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  uint16_t field5;
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};

/* External Global Variable Declarations */
extern uint32_t config_stack_modules;
extern uint32_t config_btctler_modules;
extern uint8_t l2cap_debug_enable;
extern uint32_t config_asser;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t pan_profile_support;

/* Function Declarations */
void l2cap_init(struct l_struct_struct_OC_l2cap_stack_t*, l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void l2cap_hci_event_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void hci_add_event_handler(uint8_t*);
void hci_connectable_control(uint8_t, uint8_t);
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void le_l2cap_register_packet_handler(l_fptr_2*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_l2cap_authentication_flag(uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t remote_dev_company_ioctrl(uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t handle_remote_dev_type(struct l_array_6_uint8_t*, uint8_t);
uint8_t check_current_sdp_company_type(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_dispatch(struct l_struct_struct_OC_l2cap_channel_t*, uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_emit_credits(struct l_struct_struct_OC_l2cap_channel_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_store_16(uint8_t*, uint16_t, uint16_t);
void l2cap_hand_out_credits(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hci_number_outgoing_packets(uint16_t);
void l2cap_hand_out_credits_for_send(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_get_local_cid_via_psm(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
struct l_struct_struct_OC_l2cap_channel_t* l2cap_get_channel_for_local_cid(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void local_irq_disable(int, ...);
void local_irq_enable(int, ...);
uint32_t l2cap_can_send_packet_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_get_remote_mtu_for_local_cid(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_send_signaling_packet(uint16_t, uint32_t, uint32_t, ...) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_outgoing_acl_len(uint32_t, uint8_t*);
uint8_t* hci_get_outgoing_acl_packet_buffer(uint16_t);
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint16_t l2cap_create_signaling_internal_bredr(uint8_t*, uint16_t, uint32_t, uint8_t, uint8_t*);
uint32_t bredr_hci_send_acl_packet(uint8_t*, uint32_t, uint8_t);
uint32_t l2cap_send_prepared(uint8_t*, uint16_t, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_run(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_can_send_acl_packet_now(uint16_t);
static void l2cap_send_le_signaling_packet(uint16_t, uint32_t, uint32_t, ...) __ATTRIBUTELIST__((nothrow));
uint8_t* bd_addr_to_str(uint8_t*);
void hci_create_connection_cmd(uint8_t*, uint16_t, uint8_t, uint8_t, uint16_t, uint8_t);
uint16_t hci_usable_acl_packet_types(void);
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void btstack_memory_l2cap_channel_free(uint8_t*);
static void l2cap_emit_channel_opened(struct l_struct_struct_OC_l2cap_channel_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
static void l2cap_finialize_channel_close(struct l_struct_struct_OC_l2cap_channel_t*) __ATTRIBUTELIST__((nothrow));
void hci_connections_get_iterator(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint16_t l2cap_max_mtu(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint16_t l2cap_max_le_mtu(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t ble_vendor_set_default_att_mtu(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_2*, uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_l2cap_channel_get(void);
uint32_t connection_handler_for_address(uint8_t*, uint8_t);
uint8_t lmp_get_conn_step(uint8_t*);
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void l2cap_disconnect_internal(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t l2cap_disconnect_all_channel(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_event_handler(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* connection_address_for_handle(uint16_t);
void stack_run_loop_resume(int, ...);
void hci_disconnect_cmd(uint16_t, uint8_t);
void bt_flip_addr(uint8_t*, uint8_t*);
static void l2cap_emit_channel_closed(struct l_struct_struct_OC_l2cap_channel_t*) __ATTRIBUTELIST__((nothrow));
void l2cap_accept_connection_internal(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_decline_connection_internal(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_signaling_handle_configure_request(struct l_struct_struct_OC_l2cap_channel_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_signaling_handler_channel(struct l_struct_struct_OC_l2cap_channel_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_signaling_handler_dispatch(uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void l2cap_register_signaling_response(uint16_t, uint8_t, uint8_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
void clear_sniff_cnt(void);
uint32_t l2cap_connection_update_request_just(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void l2cap_acl_handler(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_packet_handler(uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t gap_request_connection_parameter_update(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t);
uint8_t* l2cap_get_outgoing_buffer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* hci_get_outgoing_acl_packet_buffer_test(void);
uint32_t l2cap_reserve_packet_buffer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_reserve_packet_buffer(void);
void l2cap_release_packet_buffer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_release_packet_buffer(void);
uint32_t l2cap_send_prepared_connectionless(uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_is_packet_buffer_reserved(void);
uint32_t hci_can_send_prepared_acl_packet_now(uint16_t);
uint32_t hci_le_send_acl_packet_buffer(uint8_t*, uint32_t);
uint32_t l2cap_send_connectionless(uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_register_fixed_channel(l_fptr_2*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_request_can_send_fix_channel_now_event(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void l2cap_notify_channel_can_send(void) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_can_send_fixed_channel_packet_now(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t gap_le_request_connection_parameter_update(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t l2cap_can_close_handle_now(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t is_l2cap_can_release_now(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_l2cap_service_t* l2cap_get_service(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void l2cap_register_service_internal(uint8_t*, l_fptr_2*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* btstack_memory_l2cap_service_get(void);
void l2cap_unregister_service_internal(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_memory_l2cap_service_free(uint8_t*);
uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item**);
void l2cap_close_connection(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t l2cap_search_channel_exist_via_psm(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
struct l_array_6_uint8_t* l2cap_get_btaddr_via_local_cid(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_get_hci_handle_via_psm(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t l2cap_get_hci_handle_via_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void bqb_test_l2cap_send_data(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_channel_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_l2cap_send_state(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t get_curr_channel_state(int, ...);
void l2cap_channel_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_just_register_service(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void p33_soft_reset(void);
uint16_t l2cap_create_signaling_internal_le(uint8_t*, uint16_t, uint32_t, uint8_t, uint8_t*);
static uint8_t hci_event_packet_get_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint16_t little_endian_read_16(uint8_t*, uint32_t);
void put_buf(uint8_t*, uint32_t);
void gap_le_get_connection_parameter_range(struct l_struct_struct_OC_le_connection_parameter_range*);
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t hci_can_send_acl_le_packet_now(void);
uint32_t hci_can_send_acl_classic_packet_now(void);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_l2cap_stack_t* l2cap_stack __HIDDEN__;
static l_fptr_2* le_l2cap_event_packet_handler;
static struct l_struct_struct_OC_btstack_packet_callback_registration_t hci_event_callback_registration;
static struct l_array_17_uint8_t _OC_str_OC_1 = { "file:%s, line:%d" };
static struct l_array_111_uint8_t _OC_str_OC_2 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap.c" };
static struct l_array_45_uint8_t _OC_str_OC_3 = { "ASSERT-FAILD: acl_buffer get acl_buffer NULL" };
static struct l_array_61_uint8_t _OC_str_OC_4 = { "<L2C-error> :l2cap_send_internal no channel for cid 0x%02x\n\n" };
static struct l_array_57_uint8_t _OC_str_OC_5 = { "[L2C-info] :l2cap_send_internal cid 0x%02x, handle %u \n\n" };
static struct l_array_34_uint8_t _OC_str_OC_6 = { "ASSERT-FAILD: acl_buffer != NULL " };
static struct l_array_38_uint8_t _OC_str_OC_8 = { "[L2C-info] :INFORMATION_REQUEST: %d\n\n" };
static struct l_array_38_uint8_t _OC_str_OC_10 = { "[L2C-info] :hci_create_connection %s\n" };
static struct l_array_57_uint8_t _OC_str_OC_16 = { "<BT-log> :L2CAP_CONF_RESULT_UNACCEPTABLE_PARAMETERS %d\n\n" };
static struct l_array_43_uint8_t _OC_str_OC_20 = { "L2CAP_STATE_WILL_SEND_DISCONNECT_RESPONSE\n" };
static struct l_array_42_uint8_t _OC_str_OC_21 = { "L2CAP_STATE_WILL_SEND_DISCONNECT_REQUEST\n" };
static uint16_t le_att_mtu_size = 517;
static struct l_array_25_uint8_t _OC_str_OC_22 = { "l2cap wait disconnect..." };
static struct l_array_40_uint8_t _OC_str_OC_23 = { "<BT-log> :disconn_link_type:%d,len:%d\n\n" };
static struct l_array_83_uint8_t _OC_str_OC_24 = { "<L2C-error> :l2cap_accept_connection_internal called but local_cid 0x%x not found\n" };
static struct l_array_44_uint8_t _OC_str_OC_25 = { "[L2C-info] :l2cap cid %u, hint %u, type %u\n" };
static struct l_array_56_uint8_t _OC_str_OC_26 = { "[L2C-info] :L2CAP signaling handler code %u, state %u\n\n" };
static struct l_array_21_uint8_t _OC_str_OC_27 = { " CONNECTION_REQUEST\n" };
static struct l_array_23_uint8_t _OC_str_OC_28 = { " INFORMATION_REQUEST \n" };
static struct l_array_23_uint8_t _OC_str_OC_29 = { " L2CAP_CID_SIGNALING \n" };
static struct l_array_22_uint8_t _OC_str_OC_30 = { " L2CAP_le_SIGNALING \n" };
static struct l_array_3_struct_AC_l_struct_struct_OC_l2cap_fixed_channel l2cap_fixed_channels;
static uint8_t gap_request_connection_parameter_update_OC_le_con_param_update_identifier = 1;
static struct l_array_88_uint8_t _OC_str_OC_33 = { "<L2C-error> :l2cap_send_prepared_connectionless handle 0x%02x, cid 0x%02x, cannot send\n" };
static struct l_array_70_uint8_t _OC_str_OC_34 = { "[L2C-info] :l2cap_send_prepared_connectionless handle %u, cid 0x%02x\n" };
static struct l_array_49_uint8_t _OC_str_OC_35 = { "<L2C-error> :l2cap_send cid 0x%02x, cannot send\n" };
static struct l_array_18_uint8_t _OC_str_OC_36 = { "<BT-log> :psm %x\n" };
static struct l_array_74_uint8_t _OC_str_OC_37 = { "<L2C-error> :l2cap_register_service_internal: PSM %u already registered\n\n" };
static struct l_array_14_uint8_t _OC_str_OC_39 = { "local cid-%x\n" };
static struct l_array_5_uint8_t _OC_str_OC_40 = { "1234" };
static struct l_array_142_uint8_t _OC_str_OC_41 = { "[L2C-info] :L2CAP_EVENT_CHANNEL_OPENED status 0x%x addr %s handle 0x%x psm 0x%x local_cid 0x%x remote_cid 0x%x local_mtu %u, remote_mtu %u\r\n\n" };
static struct l_array_57_uint8_t _OC_str_OC_42 = { "[L2C-info] :L2CAP_EVENT_CHANNEL_CLOSED local_cid 0x%x\r\n\n" };
static struct l_array_47_uint8_t _OC_str_OC_43 = { "<L2C-error> :no hci_connection for handle %u\n\n" };
static struct l_array_107_uint8_t _OC_str_OC_45 = { "[L2C-info] :L2CAP_EVENT_INCOMING_CONNECTION addr %s handle 0x%x psm 0x%x local_cid 0x%x remote_cid 0x%x\r\n\n" };
static struct l_array_84_uint8_t _OC_str_OC_46 = { "[L2C-info] :l2cap_le_signaling_handler_dispatch: command 0x%02x, sig id %u, len %u\n" };
static struct l_array_34_uint8_t _OC_str_OC_50 = { "[L2C-info] :update_parameter=%d\n\n" };
static struct l_array_62_uint8_t _OC_str_OC_51 = { "<L2C-error> :l2cap_monitor_get service fail %d Please check\n\n" };
static struct l_array_117_uint8_t _OC_str_OC_54 = { "[L2C-info] :L2CAP_monitor_OPENED  handle 0x%x psm 0x%x local_cid 0x%x remote_cid 0x%x local_mtu %u, remote_mtu %u\r\n\n" };
static struct l_array_23_uint8_t str = { "[L2C-info] :l2cap_init" };
static struct l_array_33_uint8_t str_OC_55 = { "[L2C-info] :send config request\n" };
static struct l_array_34_uint8_t str_OC_56 = { "[L2C-info] :send config response\n" };
static struct l_array_21_uint8_t str_OC_57 = { "[L2C-info] :rsp_mtu\n" };
static struct l_array_32_uint8_t str_OC_58 = { "[L2C-info] :L2CAP_STATE_CONFIG\n" };
static struct l_array_54_uint8_t str_OC_59 = { "[L2C-info] :L2CAP_STATE_WILL_SEND_CONNECTION_REQUEST\n" };
static struct l_array_36_uint8_t str_OC_60 = { "[L2C-info] :waiting authentication\n" };
static struct l_array_62_uint8_t str_OC_61 = { "[L2C-info] :L2CAP_STATE_WILL_SEND_CONNECTION_RESPONSE_ACCEPT\n" };
static struct l_array_48_uint8_t str_OC_62 = { "[L2C-info] :SEND_CONNECTION_RESPONSE_DECLINE \r\n" };
static struct l_array_31_uint8_t str_OC_63 = { "<L2C-error> : COMMAND_REJECT \n" };
static struct l_array_39_uint8_t str_OC_64 = { "[L2C-info] :l2cap_CONNECTION_REQUEST \n" };
static struct l_array_62_uint8_t str_OC_65 = { "[L2C-info] :l2cap_handle_connection_request register channel\n" };
static struct l_array_28_uint8_t str_OC_66 = { "[L2C-info] :user reject!!!\n" };
static struct l_array_48_uint8_t str_OC_67 = { "<L2C-error> :REQUEST reject,role is not master\n" };
static struct l_array_12_uint8_t str_OC_68 = { "[L2C-dump]:" };
static struct l_array_25_uint8_t str_OC_69 = { "gap send conn param 2222" };
static struct l_array_86_uint8_t str_OC_70 = { "<L2C-error> :l2cap_send_prepared_connectionless called without reserving packet first" };
static struct l_array_77_uint8_t str_OC_71 = { "<L2C-error> :l2cap_register_service_internal: no memory for l2cap_service_t\n" };
static struct l_array_62_uint8_t str_OC_72 = { "<L2C-error> :l2cap_monitor_connection_open fail Please check\n" };
static struct l_array_43_uint8_t str_OC_73 = { "[L2C-info] :l2cap_monitor_connection_open\n" };


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
static __forceinline uint32_t llvm_select_u32(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline l_fptr_2* llvm_select_pl_fptr_2(bool condition, l_fptr_2* iftrue, l_fptr_2* ifnot) {
  l_fptr_2* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline struct l_array_6_uint8_t* llvm_select_pu8a6(bool condition, struct l_array_6_uint8_t* iftrue, struct l_array_6_uint8_t* ifnot) {
  struct l_array_6_uint8_t* r;
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
static __forceinline uint16_t llvm_xor_u16(uint16_t a, uint16_t b) {
  uint16_t r = a ^ b;
  return r;
}


/* Function Bodies */

void l2cap_init(struct l_struct_struct_OC_l2cap_stack_t* _1, l_fptr_1* _2) {
  struct l_struct_struct_OC_l2cap_stack_t* _3;
  uint32_t _4;
  uint32_t _5;
  uint8_t _6;
  uint32_t _7;

  l2cap_stack = _1;
  *((&_1->field3.field4)) = -1;
  *((&_1->field3.field5)) = 64;
  *((&_1->field3.field1)) = 0;
  *((&_1->field2)) = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);
  *((&_1->field1)) = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);
  *((&_1->field0)) = _2;
  _3 = l2cap_stack;
  *((&_3->field3.field2)) = 0;
  le_l2cap_event_packet_handler = ((l_fptr_2*)/*NULL*/0);
  _4 = config_stack_modules;
  if (((((_4 & 4) == 0u)&1))) {
    goto _8;
  } else {
    goto _9;
  }

_9:
  *((&hci_event_callback_registration.field1)) = l2cap_hci_event_handler;
   /*tail*/ hci_add_event_handler(((uint8_t*)(&hci_event_callback_registration)));
  goto _8;

_8:
  _5 = config_btctler_modules;
  if (((((_5 & 1) == 0u)&1))) {
    goto _10;
  } else {
    goto _11;
  }

_11:
   /*tail*/ hci_connectable_control(0, 0);
  goto _10;

_10:
  _6 = l2cap_debug_enable;
  if (((((llvm_and_u8(_6, 1)) == ((uint8_t)0))&1))) {
    goto _12;
  } else {
    goto _13;
  }

_13:
  _7 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _12;

_12:
  return;
}


static void l2cap_hci_event_handler(uint8_t _14, uint16_t _15, uint8_t* _16, uint16_t _17) {
  uint8_t _18;

  _18 =  /*tail*/ hci_event_packet_get_type(_16);
  switch (_18) {
  default:
    goto _19;
  case ((uint8_t)19):
    goto _20;
  case ((uint8_t)15):
    goto _21;
  }

_20:
   /*tail*/ l2cap_run();
   /*tail*/ l2cap_notify_channel_can_send();
  goto _19;

_21:
   /*tail*/ l2cap_run();
  goto _19;

_19:
  return;
}


void le_l2cap_register_packet_handler(l_fptr_2* _22) {
  uint32_t _23;

  _23 = config_stack_modules;
  le_l2cap_event_packet_handler = (llvm_select_pl_fptr_2(((((_23 & 4) != 0u)&1)), _22, ((l_fptr_2*)/*NULL*/0)));
}


uint8_t check_l2cap_authentication_flag(uint8_t* _24, uint8_t _25, uint8_t _26) {
  struct l_struct_struct_OC_l2cap_stack_t* _27;
  uint8_t* _28;
  uint32_t _29;
  uint8_t* _30;
  uint8_t _31;
  uint8_t* _32;
  uint8_t _33;
  uint8_t _34;
  uint8_t* _35;
  uint8_t _36;
  uint8_t* _37;
  uint8_t* _38;
  uint8_t _39;
  uint8_t _39__PHI_TEMPORARY;

  _27 = l2cap_stack;
  _28 = (&_27->field3.field3.array[((int32_t)0)].field0.array[((int32_t)0)]);
  _29 =  /*tail*/ memcmp(_24, _28, 6);
  if ((((_29 == 0u)&1))) {
    goto _40;
  } else {
    goto _41;
  }

_40:
  _30 = (&_27->field3.field3.array[((int32_t)0)].field1);
  _31 = *_30;
  if (((((llvm_and_u8(_31, 15)) == ((uint8_t)10))&1))) {
    goto _42;
  } else {
    goto _41;
  }

_42:
  switch (_25) {
  default:
    goto _43;
  case ((uint8_t)37):
    goto _44;
  case ((uint8_t)36):
    goto _45;
  case ((uint8_t)38):
    goto _46;
  case ((uint8_t)39):
    goto _47;
  }

_44:
  _32 = memset(_28, 0, 7);
  *((&_27->field3.field3.array[((int32_t)0)].field2)) = 32;
  goto _43;

_45:
  *((&_27->field3.field3.array[((int32_t)0)].field2)) = _26;
  goto _43;

_46:
  *_30 = (llvm_or_u8((llvm_shl_u8(_26, 4)), 10));
  goto _43;

_47:
  _33 = llvm_lshr_u8(_31, 4);
  _39__PHI_TEMPORARY = _33;   /* for PHI node */
  goto _48;

_43:
  _34 = *((&_27->field3.field3.array[((int32_t)0)].field2));
  _39__PHI_TEMPORARY = _34;   /* for PHI node */
  goto _48;

_41:
  switch (_25) {
  default:
    _39__PHI_TEMPORARY = 32;   /* for PHI node */
    goto _48;
  case ((uint8_t)38):
    goto _49;
  case ((uint8_t)36):
    goto _49;
  }

_49:
  _35 = (&_27->field3.field3.array[((int32_t)0)].field1);
  _36 = *_35;
  if (((((llvm_and_u8(_36, 15)) == ((uint8_t)10))&1))) {
    _39__PHI_TEMPORARY = 32;   /* for PHI node */
    goto _48;
  } else {
    goto _50;
  }

_50:
  _37 = memcpy(_28, _24, 6);
  *_35 = (llvm_or_u8((llvm_and_u8(_36, -16)), 10));
  _38 = (&_27->field3.field3.array[((int32_t)0)].field2);
  if ((((_25 == ((uint8_t)36))&1))) {
    goto _51;
  } else {
    goto _52;
  }

_51:
  *_38 = _26;
  *_35 = 10;
  _39__PHI_TEMPORARY = _26;   /* for PHI node */
  goto _48;

_52:
  *_38 = 32;
  *_35 = (llvm_or_u8((llvm_shl_u8(_26, 4)), 10));
  _39__PHI_TEMPORARY = _26;   /* for PHI node */
  goto _48;

_48:
  _39 = _39__PHI_TEMPORARY;
  return _39;
}


uint8_t remote_dev_company_ioctrl(uint8_t* _53, uint8_t _54, uint8_t _55) {
  uint8_t _56;
  uint8_t _57;

  _56 =  /*tail*/ check_l2cap_authentication_flag(_53, (llvm_select_u8((((_54 == ((uint8_t)0))&1)), 39, 38)), _55);
  if (((((((_54 == ((uint8_t)0))&1)) | (((_55 == ((uint8_t)0))&1)))&1))) {
    goto _58;
  } else {
    goto _59;
  }

_59:
  _57 =  /*tail*/ handle_remote_dev_type((((struct l_array_6_uint8_t*)_53)), _55);
  goto _58;

_58:
  return _56;
}


uint8_t check_current_sdp_company_type(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _60;
  struct l_struct_struct_OC_btstack_linked_item* _61;
  struct l_struct_struct_OC_btstack_linked_item* _62;
  struct l_struct_struct_OC_btstack_linked_item* _62__PHI_TEMPORARY;
  uint16_t _63;
  uint8_t _64;
  struct l_struct_struct_OC_btstack_linked_item* _65;
  uint8_t _66;
  uint8_t _66__PHI_TEMPORARY;

  _60 = l2cap_stack;
  _61 = *((&_60->field2));
  if ((((_61 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _66__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _67;
  } else {
    goto _68;
  }

_68:
  _62__PHI_TEMPORARY = _61;   /* for PHI node */
  goto _69;

  do {     /* Syntactic loop '' to make GCC happy */
_69:
  _62 = _62__PHI_TEMPORARY;
  _63 = *(((uint16_t*)((&_62[((int32_t)7)]))));
  if ((((_63 == ((uint16_t)1))&1))) {
    goto _70;
  } else {
    goto _71;
  }

_71:
  _65 = *((&_62->field0));
  if ((((_65 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    _62__PHI_TEMPORARY = _65;   /* for PHI node */
    goto _69;
  }

  } while (1); /* end of syntactic loop '' */
_70:
  _64 =  /*tail*/ check_l2cap_authentication_flag(((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_62[((int32_t)4)]))))->field5.array[((int32_t)0)])), 39, 0);
  _66__PHI_TEMPORARY = _64;   /* for PHI node */
  goto _67;

_72:
  _66__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _67;

_67:
  _66 = _66__PHI_TEMPORARY;
  return _66;
}


void l2cap_dispatch(struct l_struct_struct_OC_l2cap_channel_t* _73, uint8_t _74, uint8_t* _75, uint16_t _76) {
  l_fptr_2* _77;
  uint16_t _78;
  struct l_struct_struct_OC_l2cap_stack_t* _79;
  l_fptr_1* _80;
  uint8_t* _81;

  _77 = *((&_73->field4));
  _78 = *((&_73->field5.field7));
  if ((((_77 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _82;
  } else {
    goto _83;
  }

_83:
   /*tail*/ _77(_74, _78, _75, _76);
  goto _84;

_82:
  _79 = l2cap_stack;
  _80 = *((&_79->field0));
  _81 = *((&_73->field3));
   /*tail*/ _80(_81, _74, _78, _75, _76);
  goto _84;

_84:
  return;
}


void l2cap_emit_credits(struct l_struct_struct_OC_l2cap_channel_t* _85, uint8_t _86) {
  struct l_array_5_uint8_t _87;    /* Address-exposed local */
  uint8_t* _88;
  uint16_t _89;

  _88 = (&_87.array[((int32_t)0)]);
  *_88 = 116u;
  *((&_87.array[((int32_t)1)])) = 3;
  _89 = *((&_85->field5.field7));
  bt_store_16(_88, 2, _89);
  *((&_87.array[((int32_t)4)])) = _86;
  l2cap_dispatch(_85, 4, _88, 5);
}


void l2cap_hand_out_credits(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _90;
  struct l_struct_struct_OC_btstack_linked_item* _91;
  struct l_struct_struct_OC_btstack_linked_item* _92;
  struct l_struct_struct_OC_btstack_linked_item* _92__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_channel_t* _93;
  uint8_t _94;
  uint16_t _95;
  uint8_t _96;
  struct l_struct_struct_OC_btstack_linked_item* _97;

  _90 = l2cap_stack;
  _91 = *((&_90->field2));
  if ((((_91 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _98;
  } else {
    goto _99;
  }

_99:
  _92__PHI_TEMPORARY = _91;   /* for PHI node */
  goto _100;

  do {     /* Syntactic loop '' to make GCC happy */
_100:
  _92 = _92__PHI_TEMPORARY;
  _93 = ((struct l_struct_struct_OC_l2cap_channel_t*)_92);
  _94 = *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_92[((int32_t)4)]))))->field1));
  if ((((_94 == ((uint8_t)8))&1))) {
    goto _101;
  } else {
    goto _102;
  }

_101:
  _95 = *(((uint16_t*)((&_92[((int32_t)1)]))));
  _96 =  /*tail*/ hci_number_outgoing_packets(_95);
  if ((((((uint8_t)_96) < ((uint8_t)((uint8_t)3)))&1))) {
    goto _103;
  } else {
    goto _102;
  }

_103:
   /*tail*/ l2cap_emit_credits(_93, 1);
  goto _102;

_102:
  _97 = *((&_92->field0));
  if ((((_97 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _104;
  } else {
    _92__PHI_TEMPORARY = _97;   /* for PHI node */
    goto _100;
  }

  } while (1); /* end of syntactic loop '' */
_104:
  goto _98;

_98:
  return;
}


void l2cap_hand_out_credits_for_send(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _105;
  struct l_struct_struct_OC_btstack_linked_item* _106;
  struct l_struct_struct_OC_btstack_linked_item* _107;
  struct l_struct_struct_OC_btstack_linked_item* _107__PHI_TEMPORARY;
  uint8_t _108;
  struct l_struct_struct_OC_btstack_linked_item* _109;

  _105 = l2cap_stack;
  _106 = *((&_105->field2));
  if ((((_106 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _110;
  } else {
    goto _111;
  }

_111:
  _107__PHI_TEMPORARY = _106;   /* for PHI node */
  goto _112;

  do {     /* Syntactic loop '' to make GCC happy */
_112:
  _107 = _107__PHI_TEMPORARY;
  _108 = *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_107[((int32_t)4)]))))->field1));
  if ((((_108 == ((uint8_t)8))&1))) {
    goto _113;
  } else {
    goto _114;
  }

_113:
   /*tail*/ l2cap_emit_credits((((struct l_struct_struct_OC_l2cap_channel_t*)_107)), 0);
  goto _114;

_114:
  _109 = *((&_107->field0));
  if ((((_109 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _115;
  } else {
    _107__PHI_TEMPORARY = _109;   /* for PHI node */
    goto _112;
  }

  } while (1); /* end of syntactic loop '' */
_115:
  goto _110;

_110:
  return;
}


uint16_t l2cap_get_local_cid_via_psm(uint16_t _116) {
  struct l_struct_struct_OC_l2cap_stack_t* _117;
  struct l_struct_struct_OC_btstack_linked_item* _118;
  struct l_struct_struct_OC_btstack_linked_item* _119;
  struct l_struct_struct_OC_btstack_linked_item* _119__PHI_TEMPORARY;
  uint16_t _120;
  uint16_t _121;
  struct l_struct_struct_OC_btstack_linked_item* _122;
  uint16_t _123;
  uint16_t _123__PHI_TEMPORARY;

  _117 = l2cap_stack;
  _118 = *((&_117->field2));
  if ((((_118 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _123__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _124;
  } else {
    goto _125;
  }

_125:
  _119__PHI_TEMPORARY = _118;   /* for PHI node */
  goto _126;

  do {     /* Syntactic loop '' to make GCC happy */
_126:
  _119 = _119__PHI_TEMPORARY;
  _120 = *(((uint16_t*)((&_119[((int32_t)7)]))));
  if ((((_120 == _116)&1))) {
    goto _127;
  } else {
    goto _128;
  }

_128:
  _122 = *((&_119->field0));
  if ((((_122 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _129;
  } else {
    _119__PHI_TEMPORARY = _122;   /* for PHI node */
    goto _126;
  }

  } while (1); /* end of syntactic loop '' */
_127:
  _121 = *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_119[((int32_t)4)]))))->field7));
  _123__PHI_TEMPORARY = _121;   /* for PHI node */
  goto _124;

_129:
  _123__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _124;

_124:
  _123 = _123__PHI_TEMPORARY;
  return _123;
}


struct l_struct_struct_OC_l2cap_channel_t* l2cap_get_channel_for_local_cid(uint16_t _130) {
  struct l_struct_struct_OC_l2cap_stack_t* _131;
  struct l_struct_struct_OC_btstack_linked_item* _132;
  struct l_struct_struct_OC_btstack_linked_item* _133;
  struct l_struct_struct_OC_btstack_linked_item* _133__PHI_TEMPORARY;
  uint16_t _134;
  struct l_struct_struct_OC_l2cap_channel_t* _135;
  struct l_struct_struct_OC_btstack_linked_item* _136;
  struct l_struct_struct_OC_l2cap_channel_t* _137;
  struct l_struct_struct_OC_l2cap_channel_t* _137__PHI_TEMPORARY;

   /*tail*/ ((l_fptr_3*)(void*)local_irq_disable)();
  _131 = l2cap_stack;
  _132 = *((&_131->field2));
  if ((((_132 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _138;
  } else {
    goto _139;
  }

_139:
  _133__PHI_TEMPORARY = _132;   /* for PHI node */
  goto _140;

  do {     /* Syntactic loop '' to make GCC happy */
_140:
  _133 = _133__PHI_TEMPORARY;
  _134 = *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_133[((int32_t)4)]))))->field7));
  if ((((_134 == _130)&1))) {
    goto _141;
  } else {
    goto _142;
  }

_142:
  _136 = *((&_133->field0));
  if ((((_136 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _143;
  } else {
    _133__PHI_TEMPORARY = _136;   /* for PHI node */
    goto _140;
  }

  } while (1); /* end of syntactic loop '' */
_141:
  _135 = ((struct l_struct_struct_OC_l2cap_channel_t*)_133);
   /*tail*/ ((l_fptr_3*)(void*)local_irq_enable)();
  _137__PHI_TEMPORARY = _135;   /* for PHI node */
  goto _144;

_143:
  goto _138;

_138:
   /*tail*/ ((l_fptr_3*)(void*)local_irq_enable)();
  _137__PHI_TEMPORARY = ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0);   /* for PHI node */
  goto _144;

_144:
  _137 = _137__PHI_TEMPORARY;
  return _137;
}


uint32_t l2cap_can_send_packet_now(uint16_t _145) {
  struct l_struct_struct_OC_l2cap_channel_t* _146;

  _146 =  /*tail*/ l2cap_get_channel_for_local_cid(_145);
  return (((uint32_t)(bool)(((_146 != ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))));
}


uint16_t l2cap_get_remote_mtu_for_local_cid(uint16_t _147) {
  struct l_struct_struct_OC_l2cap_channel_t* _148;
  uint16_t _149;
  uint16_t _150;
  uint16_t _150__PHI_TEMPORARY;

  _148 =  /*tail*/ l2cap_get_channel_for_local_cid(_147);
  if ((((_148 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    _150__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _151;
  } else {
    goto _152;
  }

_152:
  _149 = *((&_148->field5.field10));
  _150__PHI_TEMPORARY = _149;   /* for PHI node */
  goto _151;

_151:
  _150 = _150__PHI_TEMPORARY;
  return _150;
}


uint32_t l2cap_send_signaling_packet(uint16_t _153, uint32_t _154, uint32_t _155, ...) {
  uint8_t* _156;    /* Address-exposed local */
  uint8_t* _157;
  uint8_t* _158;
  uint16_t _159;
  uint8_t* _160;
  uint32_t _161;
  uint32_t _162;
  uint32_t _163;
  uint8_t* _164;
  uint16_t _165;
  uint32_t _166;

  _157 = ((uint8_t*)(&_156));
  0; va_start(*(va_list*)_157, _155);
  _158 = _156;
  _159 = l2cap_outgoing_acl_len(_154, _158);
  0; va_end(*(va_list*)_157);
  _160 = hci_get_outgoing_acl_packet_buffer(_159);
  _161 = config_asser;
  if ((((_161 == 0u)&1))) {
    goto _167;
  } else {
    goto _168;
  }

_168:
  if ((((_160 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _169;
  } else {
    goto _170;
  }

_170:
  _162 = printf(((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_2.array[((int32_t)0)])), 511);
  _163 = printf(((&_OC_str_OC_3.array[((int32_t)0)])));
  ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _169;

_167:
  if ((((_160 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _169;
  } else {
    goto _171;
  }

_171:
  cpu_reset();
  goto _169;

_169:
  0; va_start(*(va_list*)_157, _155);
  _164 = _156;
  _165 = l2cap_create_signaling_internal_bredr(_160, _153, _154, (((uint8_t)_155)), _164);
  0; va_end(*(va_list*)_157);
  _166 = bredr_hci_send_acl_packet(_160, (((uint32_t)(uint16_t)_165)), 0);
  return _166;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


uint32_t l2cap_send_prepared(uint8_t* _172, uint16_t _173, uint16_t _174, uint8_t _175) {
  struct l_struct_struct_OC_l2cap_channel_t* _176;
  uint8_t _177;
  uint32_t _178;
  uint32_t _179;
  uint16_t* _180;
  uint16_t* _181;
  uint16_t _182;
  uint32_t _183;
  uint16_t* _184;
  uint16_t* _184__PHI_TEMPORARY;
  uint16_t _185;
  uint16_t _186;
  uint32_t _187;
  uint32_t _188;
  uint32_t _188__PHI_TEMPORARY;

  _176 =  /*tail*/ l2cap_get_channel_for_local_cid(_173);
  _177 = l2cap_debug_enable;
  _178 = ((uint32_t)(uint8_t)_177);
  if ((((_176 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    goto _189;
  } else {
    goto _190;
  }

_189:
  if (((((_178 & 4) == 0u)&1))) {
    _188__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _191;
  } else {
    goto _192;
  }

_192:
  _179 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint16_t)_173)));
  _188__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _191;

_190:
  if (((((_178 & 1) == 0u)&1))) {
    goto _193;
  } else {
    goto _194;
  }

_193:
  _180 = (&_176->field1);
  _184__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _195;

_194:
  _181 = (&_176->field1);
  _182 = *_181;
  _183 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint16_t)_173)), (((uint32_t)(uint16_t)_182)));
  _184__PHI_TEMPORARY = _181;   /* for PHI node */
  goto _195;

_195:
  _184 = _184__PHI_TEMPORARY;
  _185 = *_184;
   /*tail*/ bt_store_16(_172, 0, (llvm_or_u16(_185, 8192)));
   /*tail*/ bt_store_16(_172, 2, (llvm_add_u16(_174, 4)));
   /*tail*/ bt_store_16(_172, 4, _174);
  _186 = *((&_176->field5.field8));
   /*tail*/ bt_store_16(_172, 6, _186);
  _187 =  /*tail*/ bredr_hci_send_acl_packet(_172, (llvm_add_u32((((uint32_t)(uint16_t)_174)), 8)), _175);
  _188__PHI_TEMPORARY = _187;   /* for PHI node */
  goto _191;

_191:
  _188 = _188__PHI_TEMPORARY;
  return _188;
}


uint32_t l2cap_send_internal(uint16_t _196, uint8_t* _197, uint16_t _198, uint8_t _199) {
  struct l_struct_struct_OC_l2cap_channel_t* _200;
  uint32_t _201;
  uint8_t* _202;
  uint32_t _203;
  uint32_t _204;
  uint32_t _205;
  uint8_t _206;
  uint8_t* _207;
  uint32_t _208;
  uint32_t _209;
  uint32_t _209__PHI_TEMPORARY;

  _200 =  /*tail*/ l2cap_get_channel_for_local_cid(_196);
  if ((((_200 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    _209__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _210;
  } else {
    goto _211;
  }

_211:
  _201 = ((uint32_t)(uint16_t)_198);
  _202 =  /*tail*/ hci_get_outgoing_acl_packet_buffer((llvm_add_u16(_198, 8)));
  _203 = config_asser;
  if ((((_203 == 0u)&1))) {
    goto _212;
  } else {
    goto _213;
  }

_213:
  if ((((_202 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _214;
  } else {
    goto _215;
  }

_215:
  _204 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_2.array[((int32_t)0)])), 626);
  _205 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _214;

_212:
  if ((((_202 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _214;
  } else {
    goto _216;
  }

_216:
   /*tail*/ cpu_reset();
  goto _214;

_214:
  _206 = *((&_200->field5.field11));
  if ((((_206 == ((uint8_t)0))&1))) {
    goto _217;
  } else {
    _209__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _210;
  }

_217:
  _207 = memcpy(((&_202[((int32_t)8)])), _197, _201);
  _208 =  /*tail*/ l2cap_send_prepared(_202, _196, _198, _199);
  _209__PHI_TEMPORARY = _208;   /* for PHI node */
  goto _210;

_210:
  _209 = _209__PHI_TEMPORARY;
  return _209;
}


void l2cap_run(void) {
  struct l_array_6_uint8_t _218;    /* Address-exposed local */
  struct l_array_12_uint8_t _219;    /* Address-exposed local */
  uint32_t _220;    /* Address-exposed local */
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _221;    /* Address-exposed local */
  uint8_t* _222;
  uint8_t* _223;
  struct l_struct_struct_OC_l2cap_stack_t* _224;
  uint32_t _225;
  uint8_t* _226;
  uint32_t _227;
  struct l_struct_struct_OC_l2cap_stack_t* _228;
  uint32_t _229;
  struct l_struct_struct_OC_l2cap_stack_t* _230;
  struct l_struct_struct_OC_l2cap_stack_t* _230__PHI_TEMPORARY;
  bool _231;
  bool _231__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_stack_t* _232;
  struct l_struct_struct_OC_l2cap_stack_t* _232__PHI_TEMPORARY;
  uint16_t _233;
  uint8_t _234;
  uint16_t _235;
  uint8_t _236;
  uint8_t _237;
  uint32_t _238;
  uint32_t _239;
  uint8_t _240;
  uint32_t _241;
  uint32_t _242;
  struct l_struct_struct_OC_l2cap_stack_t* _243;
  uint32_t _244;
  uint32_t _245;
  uint32_t _246;
  uint8_t _247;
  uint32_t _248;
  uint32_t _249;
  uint32_t _250;
  uint32_t _251;
  struct l_struct_struct_OC_l2cap_stack_t* _252;
  uint32_t* _253;
  uint32_t _254;
  uint32_t _255;
  uint32_t _255__PHI_TEMPORARY;
  uint32_t _256;
  uint32_t _257;
  uint32_t _257__PHI_TEMPORARY;
  uint32_t _258;
  uint64_t _259;
  uint32_t _260;
  struct l_struct_struct_OC_l2cap_stack_t* _261;
  struct l_struct_struct_OC_l2cap_stack_t* _261__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _262;
  uint8_t* _263;
  struct l_struct_struct_OC_btstack_linked_item* _264;
  struct l_struct_struct_OC_btstack_linked_item* _264__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_channel_t* _265;
  struct l_struct_struct_OC_btstack_linked_item* _266;
  struct l_struct_struct_OC_btstack_linked_item* _267;
  struct l_struct_struct_OC_channel_core_data_t* _268;
  uint8_t* _269;
  uint8_t _270;
  uint8_t _271;
  uint8_t* _272;
  uint8_t* _273;
  uint32_t _274;
  uint8_t* _275;
  uint16_t _276;
  uint8_t _277;
  uint32_t _278;
  uint16_t _279;
  uint8_t _280;
  uint8_t* _281;
  uint8_t _282;
  uint32_t _283;
  uint8_t _284;
  struct l_struct_struct_OC_l2cap_stack_t* _285;
  uint32_t _286;
  uint8_t _287;
  uint32_t _288;
  uint16_t* _289;
  uint16_t _290;
  uint16_t _291;
  uint8_t _292;
  uint16_t _293;
  uint16_t _294;
  uint32_t _295;
  uint8_t _296;
  struct l_struct_struct_OC__stack_config* _297;
  uint16_t _298;
  uint8_t _299;
  uint32_t _300;
  uint8_t _301;
  uint8_t _302;
  uint32_t _303;
  struct l_struct_struct_OC_l2cap_stack_t* _304;
  uint8_t* _305;
  uint8_t _306;
  uint8_t _307;
  uint16_t _308;
  uint32_t _309;
  uint8_t _310;
  uint32_t _311;
  uint16_t* _312;
  uint16_t _313;
  uint32_t _314;
  uint16_t _315;
  uint16_t _316;
  uint32_t _317;
  uint32_t _318;
  uint8_t* _319;
  uint8_t _320;
  uint16_t _321;
  uint16_t _322;
  uint8_t _323;
  uint16_t _324;
  uint32_t _325;
  uint8_t _326;
  uint8_t _327;
  uint32_t _328;
  uint16_t _329;
  uint16_t _330;
  uint8_t _331;
  uint32_t _332;
  uint16_t _333;
  uint16_t _334;
  uint8_t _335;
  uint16_t _336;
  uint32_t _337;
  uint16_t _338;
  uint16_t _339;
  uint8_t _340;
  uint32_t _341;
  uint16_t _342;
  uint8_t _343;
  uint16_t _344;
  uint32_t _345;
  uint16_t _346;
  uint16_t _347;
  uint16_t _347__PHI_TEMPORARY;
  uint16_t _348;
  uint8_t _349;
  uint32_t _350;
  uint16_t _351;
  uint16_t _352;
  uint16_t _352__PHI_TEMPORARY;
  uint16_t _353;
  struct l_struct_struct_OC_l2cap_stack_t* _354;
  uint8_t* _355;
  uint8_t _356;
  uint8_t _357;
  uint8_t* _358;
  uint32_t _359;
  uint16_t _360;
  uint16_t _361;
  uint8_t _362;
  uint16_t _363;
  uint32_t _364;
  uint16_t _365;
  uint16_t _366;
  uint16_t _366__PHI_TEMPORARY;
  uint8_t _367;
  uint32_t _368;
  uint16_t _369;
  uint8_t _370;
  uint16_t _371;
  uint16_t _372;
  uint32_t _373;
  uint8_t _374;
  uint32_t _375;
  struct l_struct_struct_OC_l2cap_stack_t* _376;
  uint8_t* _377;
  uint8_t _378;
  uint8_t _379;
  uint16_t _380;
  uint16_t _381;
  uint16_t _382;
  uint32_t _383;
  uint32_t _384;
  uint8_t* _385;
  uint32_t _386;
  struct l_struct_struct_OC_btstack_linked_item* _387;
  struct l_struct_struct_OC___le_hci_connection* _388;
  uint32_t _389;
  uint16_t* _390;
  uint16_t _391;
  uint32_t _392;
  uint32_t* _393;
  uint32_t _394;
  uint16_t _395;
  uint8_t _396;
  uint16_t _397;
  uint16_t _398;
  uint16_t _399;
  uint16_t _400;
  uint32_t _401;
  uint16_t _402;
  uint8_t _403;
  uint16_t _404;
  uint8_t _405;

  _222 = (&_218.array[((int32_t)0)]);
  _223 = (&_219.array[((int32_t)0)]);
  _224 = l2cap_stack;
  _225 = *((&_224->field3.field1));
  if ((((_225 == 0u)&1))) {
    _261__PHI_TEMPORARY = _224;   /* for PHI node */
    goto _406;
  } else {
    goto _407;
  }

_407:
  _226 = ((uint8_t*)(&_220));
  _227 = config_stack_modules;
  _230__PHI_TEMPORARY = _224;   /* for PHI node */
  _231__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _408;

  do {     /* Syntactic loop '' to make GCC happy */
_408:
  _230 = _230__PHI_TEMPORARY;
  _231 = ((_231__PHI_TEMPORARY)&1);
  _232__PHI_TEMPORARY = _230;   /* for PHI node */
  goto _409;

  do {     /* Syntactic loop '' to make GCC happy */
_409:
  _232 = _232__PHI_TEMPORARY;
  _233 = *((&_232->field3.field0.array[((int32_t)0)].field0));
  _234 = *((&_232->field3.field0.array[((int32_t)0)].field1));
  _235 = *((&_232->field3.field0.array[((int32_t)0)].field4));
  _236 = *((&_232->field3.field0.array[((int32_t)0)].field2));
  switch (_236) {
  default:
    goto _410;
  case ((uint8_t)2):
    goto _411;
  case ((uint8_t)10):
    goto _412;
  case ((uint8_t)1):
    goto _413;
  case ((uint8_t)20):
    goto _414;
  case ((uint8_t)31):
    goto _415;
  }

_415:
  if (((((_227 & 4) == 0u)&1))) {
    goto _410;
  } else {
    goto _416;
  }

_416:
  _251 = hci_can_send_acl_packet_now(_233);
  if ((((_251 == 0u)&1))) {
    goto _417;
  } else {
    goto _418;
  }

_418:
  l2cap_send_le_signaling_packet(_233, 1, (((uint32_t)(uint8_t)_234)), (((uint32_t)(uint16_t)_235)), 0, ((uint8_t*)/*NULL*/0));
  goto _410;

_414:
  if (((((_227 & 4) == 0u)&1))) {
    goto _410;
  } else {
    goto _419;
  }

_419:
  _250 = hci_can_send_acl_packet_now(_233);
  if ((((_250 == 0u)&1))) {
    goto _417;
  } else {
    goto _420;
  }

_420:
  l2cap_send_le_signaling_packet(_233, 21, (((uint32_t)(uint8_t)_234)), 0, 0, 0, 0, (((uint32_t)(uint16_t)_235)));
  goto _410;

_413:
  _247 = l2cap_debug_enable;
  if (((((llvm_and_u8(_247, 4)) == ((uint8_t)0))&1))) {
    goto _421;
  } else {
    goto _422;
  }

_422:
  _248 = puts(((&str_OC_63.array[((int32_t)0)])));
  goto _421;

_421:
  _249 = l2cap_send_signaling_packet(_233, 1, (((uint32_t)(uint8_t)_234)), (((uint32_t)(uint16_t)_235)));
  goto _410;

_412:
  _240 = l2cap_debug_enable;
  _241 = ((uint32_t)(uint16_t)_235);
  if (((((llvm_and_u8(_240, 1)) == ((uint8_t)0))&1))) {
    goto _423;
  } else {
    goto _424;
  }

_424:
  _242 = printf(((&_OC_str_OC_8.array[((int32_t)0)])), _241);
  goto _423;

_423:
  if ((((_235 == ((uint16_t)2))&1))) {
    goto _425;
  } else {
    goto _426;
  }

_426:
  _246 = l2cap_send_signaling_packet(_233, 11, (((uint32_t)(uint8_t)_234)), _241, 1, 0, ((uint8_t*)/*NULL*/0));
  goto _410;

_425:
  _243 = l2cap_stack;
  _244 = *((&_243->field3.field2));
  _220 = _244;
  _245 = l2cap_send_signaling_packet(_233, 11, (((uint32_t)(uint8_t)_234)), _241, 0, 4, (&_220));
  goto _410;

_411:
  _237 = l2cap_debug_enable;
  if (((((llvm_and_u8(_237, 1)) == ((uint8_t)0))&1))) {
    goto _427;
  } else {
    goto _428;
  }

_428:
  _238 = puts(((&str_OC_64.array[((int32_t)0)])));
  goto _427;

_427:
  _239 = l2cap_send_signaling_packet(_233, 3, (((uint32_t)(uint8_t)_234)), 0, 0, (((uint32_t)(uint16_t)_235)), 1);
  goto _410;

_410:
  _252 = l2cap_stack;
  _253 = (&_252->field3.field1);
  _254 = *_253;
  if (_231) {
    goto _429;
  } else {
    _255__PHI_TEMPORARY = _254;   /* for PHI node */
    goto _430;
  }

_429:
  _256 = llvm_add_u32(_254, -1);
  *_253 = _256;
  if ((((((int32_t)_256) > ((int32_t)0u))&1))) {
    goto _431;
  } else {
    _255__PHI_TEMPORARY = _256;   /* for PHI node */
    goto _430;
  }

_431:
  _257__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _432;

  do {     /* Syntactic loop '' to make GCC happy */
_432:
  _257 = _257__PHI_TEMPORARY;
  _258 = llvm_add_u32(_257, 1);
  _259 = *(((uint64_t*)((&_252->field3.field0.array[((int32_t)_258)]))));
  *(((uint64_t*)((&_252->field3.field0.array[((int32_t)_257)])))) = _259;
  _260 = *_253;
  if ((((((int32_t)_258) < ((int32_t)_260))&1))) {
    _257__PHI_TEMPORARY = _258;   /* for PHI node */
    goto _432;
  } else {
    goto _433;
  }

  } while (1); /* end of syntactic loop '' */
_433:
  _255__PHI_TEMPORARY = _260;   /* for PHI node */
  goto _430;

_430:
  _255 = _255__PHI_TEMPORARY;
  if ((((_255 == 0u)&1))) {
    goto _434;
  } else {
    _232__PHI_TEMPORARY = _252;   /* for PHI node */
    goto _409;
  }

  } while (1); /* end of syntactic loop '' */
_417:
  _228 = l2cap_stack;
  _229 = *((&_228->field3.field1));
  if ((((_229 == 0u)&1))) {
    goto _435;
  } else {
    _230__PHI_TEMPORARY = _228;   /* for PHI node */
    _231__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _408;
  }

  } while (1); /* end of syntactic loop '' */
_434:
  _261__PHI_TEMPORARY = _252;   /* for PHI node */
  goto _406;

_435:
  _261__PHI_TEMPORARY = _228;   /* for PHI node */
  goto _406;

_406:
  _261 = _261__PHI_TEMPORARY;
  _262 = *((&_261->field2));
  if ((((_262 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _436;
  } else {
    goto _437;
  }

_437:
  _263 = (&_219.array[((int32_t)1)]);
  _264__PHI_TEMPORARY = _262;   /* for PHI node */
  goto _438;

  do {     /* Syntactic loop '' to make GCC happy */
_438:
  _264 = _264__PHI_TEMPORARY;
  _265 = ((struct l_struct_struct_OC_l2cap_channel_t*)_264);
  _266 = *((&_264->field0));
  _267 = (&_264[((int32_t)4)]);
  _268 = ((struct l_struct_struct_OC_channel_core_data_t*)_267);
  _269 = (&_268->field1);
  _270 = *_269;
  switch (_270) {
  default:
    goto _439;
  case ((uint8_t)2):
    goto _440;
  case ((uint8_t)11):
    goto _441;
  case ((uint8_t)12):
    goto _442;
  case ((uint8_t)10):
    goto _443;
  case ((uint8_t)7):
    goto _444;
  case ((uint8_t)14):
    goto _445;
  case ((uint8_t)13):
    goto _446;
  }

_446:
  _374 = l2cap_debug_enable;
  if (((((llvm_and_u8(_374, 32)) == ((uint8_t)0))&1))) {
    goto _447;
  } else {
    goto _448;
  }

_448:
  _375 = puts(((&_OC_str_OC_21.array[((int32_t)0)])));
  goto _447;

_447:
  _376 = l2cap_stack;
  _377 = (&_376->field3.field4);
  _378 = *_377;
  _379 = llvm_select_u8((((_378 == ((uint8_t)-1))&1)), 1, (llvm_add_u8(_378, 1)));
  *_377 = _379;
  *(((uint8_t*)((&_264[((int32_t)5)])))) = _379;
  *_269 = 9;
  _380 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _381 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _382 = *((&_268->field7));
  _383 = l2cap_send_signaling_packet(_380, 6, (((uint32_t)(uint8_t)_379)), (((uint32_t)(uint16_t)_381)), (((uint32_t)(uint16_t)_382)));
  goto _439;

_445:
  _367 = l2cap_debug_enable;
  if (((((llvm_and_u8(_367, 32)) == ((uint8_t)0))&1))) {
    goto _449;
  } else {
    goto _450;
  }

_450:
  _368 = puts(((&_OC_str_OC_20.array[((int32_t)0)])));
  goto _449;

_449:
  _369 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _370 = *((&_268->field2));
  _371 = *((&_268->field7));
  _372 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _373 = l2cap_send_signaling_packet(_369, 7, (((uint32_t)(uint8_t)_370)), (((uint32_t)(uint16_t)_371)), (((uint32_t)(uint16_t)_372)));
  l2cap_finialize_channel_close(_265);
  goto _439;

_444:
  _310 = l2cap_debug_enable;
  if (((((llvm_and_u8(_310, 1)) == ((uint8_t)0))&1))) {
    goto _451;
  } else {
    goto _452;
  }

_452:
  _311 = puts(((&str_OC_58.array[((int32_t)0)])));
  goto _451;

_451:
  _312 = ((uint16_t*)_267);
  _313 = *_312;
  _314 = ((uint32_t)(uint16_t)_313);
  if (((((_314 & 8) == 0u)&1))) {
    goto _453;
  } else {
    goto _454;
  }

_454:
  _315 = llvm_and_u16(_313, 256);
  _316 = llvm_or_u16((llvm_xor_u16((llvm_lshr_u16(_315, 3)), 32)), (llvm_and_u16(_313, -9)));
  _317 = ((uint32_t)(uint16_t)(llvm_lshr_u16(_315, 8)));
  *_312 = _316;
  _318 = ((uint32_t)(uint16_t)_316);
  if (((((_318 & 512) == 0u)&1))) {
    goto _455;
  } else {
    goto _456;
  }

_456:
  _319 = (&(((struct l_struct_struct_OC_retran_flow_ctl_op_t*)((&_264[((int32_t)11)]))))->field3);
  _320 = *_319;
  *_223 = _320;
  *_263 = 2;
  _321 = *(((uint16_t*)((&_264[((int32_t)13)]))));
  bt_store_16(_223, 2, _321);
  _322 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _323 = *((&_268->field2));
  _324 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _325 = l2cap_send_signaling_packet(_322, 5, (((uint32_t)(uint8_t)_323)), (((uint32_t)(uint16_t)_324)), _317, 3, 4, _223);
  _326 = l2cap_debug_enable;
  if ((((((int8_t)_326) < ((int8_t)((uint8_t)0)))&1))) {
    goto _457;
  } else {
    goto _458;
  }

_457:
  _327 = *_319;
  _328 = printf(((&_OC_str_OC_16.array[((int32_t)0)])), (((uint32_t)(uint8_t)_327)));
  goto _458;

_458:
  _329 = *_312;
  _330 = llvm_and_u16(_329, -33);
  *_312 = _330;
  _347__PHI_TEMPORARY = _330;   /* for PHI node */
  goto _459;

_455:
  if (((((_318 & 64) == 0u)&1))) {
    goto _460;
  } else {
    goto _461;
  }

_461:
  _331 = l2cap_debug_enable;
  if (((((llvm_and_u8(_331, 1)) == ((uint8_t)0))&1))) {
    goto _462;
  } else {
    goto _463;
  }

_463:
  _332 = puts(((&str_OC_57.array[((int32_t)0)])));
  goto _462;

_462:
  *_223 = 1;
  *_263 = 2;
  _333 = *(((uint16_t*)((&_264[((int32_t)9)]))));
  bt_store_16(_223, 2, _333);
  _334 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _335 = *((&_268->field2));
  _336 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _337 = l2cap_send_signaling_packet(_334, 5, (((uint32_t)(uint8_t)_335)), (((uint32_t)(uint16_t)_336)), _317, 0, 4, _223);
  _338 = *_312;
  _339 = llvm_and_u16(_338, -65);
  *_312 = _339;
  _347__PHI_TEMPORARY = _339;   /* for PHI node */
  goto _459;

_460:
  if ((((((int8_t)(((uint8_t)_313))) < ((int8_t)((uint8_t)0)))&1))) {
    _347__PHI_TEMPORARY = _316;   /* for PHI node */
    goto _459;
  } else {
    goto _464;
  }

_464:
  _340 = l2cap_debug_enable;
  if (((((llvm_and_u8(_340, 1)) == ((uint8_t)0))&1))) {
    goto _465;
  } else {
    goto _466;
  }

_466:
  _341 = puts(((&str_OC_56.array[((int32_t)0)])));
  goto _465;

_465:
  _342 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _343 = *((&_268->field2));
  _344 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _345 = l2cap_send_signaling_packet(_342, 5, (((uint32_t)(uint8_t)_343)), (((uint32_t)(uint16_t)_344)), _317, 0, 0, ((uint8_t*)/*NULL*/0));
  _346 = *_312;
  _347__PHI_TEMPORARY = _346;   /* for PHI node */
  goto _459;

_459:
  _347 = _347__PHI_TEMPORARY;
  _348 = llvm_and_u16(_347, -257);
  *_312 = _348;
  _366__PHI_TEMPORARY = _348;   /* for PHI node */
  goto _467;

_453:
  if (((((_314 & 4) == 0u)&1))) {
    _366__PHI_TEMPORARY = _313;   /* for PHI node */
    goto _467;
  } else {
    goto _468;
  }

_468:
  _349 = l2cap_debug_enable;
  if (((((llvm_and_u8(_349, 1)) == ((uint8_t)0))&1))) {
    _352__PHI_TEMPORARY = _313;   /* for PHI node */
    goto _469;
  } else {
    goto _470;
  }

_470:
  _350 = puts(((&str_OC_55.array[((int32_t)0)])));
  _351 = *_312;
  _352__PHI_TEMPORARY = _351;   /* for PHI node */
  goto _469;

_469:
  _352 = _352__PHI_TEMPORARY;
  _353 = llvm_or_u16((llvm_and_u16(_352, -21)), 16);
  *_312 = _353;
  _354 = l2cap_stack;
  _355 = (&_354->field3.field4);
  _356 = *_355;
  _357 = llvm_select_u8((((_356 == ((uint8_t)-1))&1)), 1, (llvm_add_u8(_356, 1)));
  *_355 = _357;
  _358 = ((uint8_t*)((&_264[((int32_t)5)])));
  *_358 = _357;
  _359 = *((&_354->field3.field2));
  if (((((_359 & 16) == 0u)&1))) {
    goto _471;
  } else {
    _366__PHI_TEMPORARY = _353;   /* for PHI node */
    goto _467;
  }

_471:
  *_223 = 1;
  *_263 = 2;
  _360 = *((&_268->field9));
  bt_store_16(_223, 2, _360);
  _361 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _362 = *_358;
  _363 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _364 = l2cap_send_signaling_packet(_361, 4, (((uint32_t)(uint8_t)_362)), (((uint32_t)(uint16_t)_363)), 0, 4, _223);
  _365 = *_312;
  _366__PHI_TEMPORARY = _365;   /* for PHI node */
  goto _467;

_467:
  _366 = _366__PHI_TEMPORARY;
  if (((((llvm_and_u16(_366, 34)) == ((uint16_t)34))&1))) {
    goto _472;
  } else {
    goto _439;
  }

_472:
  *_269 = 8;
  l2cap_emit_channel_opened(_265, 0);
  l2cap_emit_credits(_265, 1);
  goto _439;

_443:
  _296 = check_l2cap_authentication_flag(((&_268->field5.array[((int32_t)0)])), 35, 0);
  if ((((_296 == ((uint8_t)33))&1))) {
    goto _473;
  } else {
    goto _474;
  }

_473:
  _297 = user_stack_configs;
  _298 = *((&_297->field3));
  if ((((_298 == ((uint16_t)0))&1))) {
    goto _475;
  } else {
    goto _474;
  }

_474:
  _301 = *_269;
  if ((((_301 == ((uint8_t)5))&1))) {
    goto _476;
  } else {
    goto _477;
  }

_477:
  _302 = l2cap_debug_enable;
  if (((((llvm_and_u8(_302, 1)) == ((uint8_t)0))&1))) {
    goto _478;
  } else {
    goto _479;
  }

_479:
  _303 = puts(((&str_OC_59.array[((int32_t)0)])));
  goto _478;

_478:
  _304 = l2cap_stack;
  _305 = (&_304->field3.field4);
  _306 = *_305;
  _307 = llvm_select_u8((((_306 == ((uint8_t)-1))&1)), 1, (llvm_add_u8(_306, 1)));
  *_305 = _307;
  *(((uint8_t*)((&_264[((int32_t)5)])))) = _307;
  *_269 = 5;
  _308 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _309 = l2cap_send_signaling_packet(_308, 10, (((uint32_t)(uint8_t)_307)), 2);
  goto _439;

_475:
  _299 = l2cap_debug_enable;
  if (((((llvm_and_u8(_299, 1)) == ((uint8_t)0))&1))) {
    goto _439;
  } else {
    goto _480;
  }

_480:
  _300 = puts(((&str_OC_60.array[((int32_t)0)])));
  goto _439;

_442:
  _287 = l2cap_debug_enable;
  if (((((llvm_and_u8(_287, 1)) == ((uint8_t)0))&1))) {
    goto _481;
  } else {
    goto _482;
  }

_482:
  _288 = puts(((&str_OC_61.array[((int32_t)0)])));
  goto _481;

_481:
  *_269 = 7;
  _289 = ((uint16_t*)_267);
  _290 = *_289;
  *_289 = (llvm_or_u16(_290, 4));
  _291 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _292 = *((&_268->field2));
  _293 = *((&_268->field7));
  _294 = *(((uint16_t*)((&_264[((int32_t)8)]))));
  _295 = l2cap_send_signaling_packet(_291, 3, (((uint32_t)(uint8_t)_292)), (((uint32_t)(uint16_t)_293)), (((uint32_t)(uint16_t)_294)), 0, 0);
  goto _439;

_441:
  _277 = l2cap_debug_enable;
  if (((((llvm_and_u8(_277, 1)) == ((uint8_t)0))&1))) {
    goto _483;
  } else {
    goto _484;
  }

_484:
  _278 = puts(((&str_OC_62.array[((int32_t)0)])));
  goto _483;

_483:
  _279 = *(((uint16_t*)((&_264[((int32_t)1)]))));
  _280 = *((&_268->field2));
  _281 = (&_268->field4);
  _282 = *_281;
  _283 = l2cap_send_signaling_packet(_279, 3, (((uint32_t)(uint8_t)_280)), 0, 0, (((uint32_t)(uint8_t)_282)), 0);
  _284 = *_281;
  if ((((_284 == ((uint8_t)1))&1))) {
    goto _485;
  } else {
    goto _486;
  }

_486:
  _285 = l2cap_stack;
  _286 = btstack_linked_list_remove(((&_285->field2)), _264);
  btstack_memory_l2cap_channel_free((((uint8_t*)_264)));
  goto _439;

_485:
  *_269 = 15;
  goto _439;

_440:
  _271 = l2cap_debug_enable;
  _272 = (&_268->field5.array[((int32_t)0)]);
  if (((((llvm_and_u8(_271, 1)) == ((uint8_t)0))&1))) {
    goto _487;
  } else {
    goto _488;
  }

_488:
  _273 = bd_addr_to_str(_272);
  _274 = printf(((&_OC_str_OC_10.array[((int32_t)0)])), _273);
  goto _487;

_487:
  *_269 = 3;
  _275 = memcpy(_222, _272, 6);
  _276 = hci_usable_acl_packet_types();
  hci_create_connection_cmd(_222, _276, 0, 0, 0, 0);
  goto _439;

_439:
  if ((((_266 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _489;
  } else {
    _264__PHI_TEMPORARY = _266;   /* for PHI node */
    goto _438;
  }

  } while (1); /* end of syntactic loop '' */
_489:
  goto _436;

_436:
  _384 = config_stack_modules;
  if (((((_384 & 4) == 0u)&1))) {
    goto _490;
  } else {
    goto _491;
  }

_491:
  _385 = ((uint8_t*)(&_221));
  hci_connections_get_iterator((&_221));
  _386 = btstack_linked_list_iterator_has_next((&_221));
  if ((((_386 == 0u)&1))) {
    goto _492;
  } else {
    goto _493;
  }

_493:
  goto _494;

  do {     /* Syntactic loop '' to make GCC happy */
_494:
  _387 = btstack_linked_list_iterator_next((&_221));
  _388 = ((struct l_struct_struct_OC___le_hci_connection*)_387);
  _389 = *(((uint32_t*)((&_387[((int32_t)3)]))));
  if ((((((uint32_t)_389) < ((uint32_t)2u))&1))) {
    goto _495;
  } else {
    goto _496;
  }

_495:
  _390 = (&_388->field2);
  _391 = *_390;
  _392 = hci_can_send_acl_packet_now(_391);
  if ((((_392 == 0u)&1))) {
    goto _496;
  } else {
    goto _497;
  }

_497:
  _393 = ((uint32_t*)((&_387[((int32_t)5)])));
  _394 = *_393;
  switch (_394) {
  default:
    goto _496;
  case 1u:
    goto _498;
  case 2u:
    goto _499;
  case 4u:
    goto _500;
  }

_500:
  *_393 = 0;
  _404 = *_390;
  _405 = *(((uint8_t*)((&_387[((int32_t)6)]))));
  l2cap_send_le_signaling_packet(_404, 19, (((uint32_t)(uint8_t)_405)), 1);
  goto _496;

_499:
  *_393 = 3;
  _402 = *_390;
  _403 = *(((uint8_t*)((&_387[((int32_t)6)]))));
  l2cap_send_le_signaling_packet(_402, 19, (((uint32_t)(uint8_t)_403)), 0);
  goto _496;

_498:
  *_393 = 0;
  _395 = *_390;
  _396 = *(((uint8_t*)((&_387[((int32_t)6)]))));
  _397 = *((&_388->field7));
  _398 = *(((uint16_t*)((&_387[((int32_t)7)]))));
  _399 = *((&_388->field9));
  _400 = *(((uint16_t*)((&_387[((int32_t)8)]))));
  l2cap_send_le_signaling_packet(_395, 18, (((uint32_t)(uint8_t)_396)), (((uint32_t)(uint16_t)_397)), (((uint32_t)(uint16_t)_398)), (((uint32_t)(uint16_t)_399)), (((uint32_t)(uint16_t)_400)));
  goto _496;

_496:
  _401 = btstack_linked_list_iterator_has_next((&_221));
  if ((((_401 == 0u)&1))) {
    goto _501;
  } else {
    goto _494;
  }

  } while (1); /* end of syntactic loop '' */
_501:
  goto _492;

_492:
  goto _490;

_476:
  goto _490;

_490:
  return;
}


static void l2cap_send_le_signaling_packet(uint16_t _502, uint32_t _503, uint32_t _504, ...) {
  uint8_t* _505;    /* Address-exposed local */
  uint8_t* _506;
  uint32_t _507;
  uint32_t _508;
  uint8_t* _509;
  uint8_t* _510;
  uint16_t _511;
  uint32_t _512;

  _506 = ((uint8_t*)(&_505));
  _507 =  /*tail*/ hci_can_send_acl_packet_now(_502);
  if ((((_507 == 0u)&1))) {
    goto _513;
  } else {
    goto _514;
  }

_514:
  _508 =  /*tail*/ hci_reserve_packet_buffer();
  _509 =  /*tail*/ hci_get_outgoing_acl_packet_buffer_test();
  0; va_start(*(va_list*)_506, _504);
  _510 = _505;
  _511 = l2cap_create_signaling_internal_le(_509, _502, _503, (((uint8_t)_504)), _510);
  0; va_end(*(va_list*)_506);
  _512 = hci_le_send_acl_packet_buffer(_509, (((uint32_t)(uint16_t)_511)));
  goto _513;

_513:
  return;
}


static void l2cap_emit_channel_opened(struct l_struct_struct_OC_l2cap_channel_t* _515, uint8_t _516) {
  struct l_array_21_uint8_t _517;    /* Address-exposed local */
  uint8_t* _518;
  uint8_t _519;
  uint8_t* _520;
  uint16_t* _521;
  uint16_t* _522;
  uint16_t* _523;
  uint16_t* _524;
  uint16_t* _525;
  uint16_t* _526;
  uint8_t* _527;
  uint8_t* _528;
  uint16_t* _529;
  uint16_t _530;
  uint16_t* _531;
  uint16_t _532;
  uint16_t* _533;
  uint16_t _534;
  uint16_t* _535;
  uint16_t _536;
  uint16_t* _537;
  uint16_t _538;
  uint16_t* _539;
  uint16_t _540;
  uint32_t _541;
  uint16_t* _542;
  uint16_t* _542__PHI_TEMPORARY;
  uint16_t* _543;
  uint16_t* _543__PHI_TEMPORARY;
  uint16_t* _544;
  uint16_t* _544__PHI_TEMPORARY;
  uint16_t* _545;
  uint16_t* _545__PHI_TEMPORARY;
  uint16_t* _546;
  uint16_t* _546__PHI_TEMPORARY;
  uint16_t* _547;
  uint16_t* _547__PHI_TEMPORARY;
  uint8_t* _548;
  uint8_t* _548__PHI_TEMPORARY;
  uint16_t _549;
  uint16_t _550;
  uint16_t _551;
  uint16_t _552;
  uint16_t _553;
  uint16_t _554;

  _518 = (&_517.array[((int32_t)0)]);
  _519 = l2cap_debug_enable;
  if (((((llvm_and_u8(_519, 1)) == ((uint8_t)0))&1))) {
    goto _555;
  } else {
    goto _556;
  }

_555:
  _520 = (&_515->field5.field5.array[((int32_t)0)]);
  _521 = (&_515->field1);
  _522 = (&_515->field5.field6);
  _523 = (&_515->field5.field7);
  _524 = (&_515->field5.field8);
  _525 = (&_515->field5.field9);
  _526 = (&_515->field5.field10);
  _542__PHI_TEMPORARY = _526;   /* for PHI node */
  _543__PHI_TEMPORARY = _525;   /* for PHI node */
  _544__PHI_TEMPORARY = _524;   /* for PHI node */
  _545__PHI_TEMPORARY = _523;   /* for PHI node */
  _546__PHI_TEMPORARY = _522;   /* for PHI node */
  _547__PHI_TEMPORARY = _521;   /* for PHI node */
  _548__PHI_TEMPORARY = _520;   /* for PHI node */
  goto _557;

_556:
  _527 = (&_515->field5.field5.array[((int32_t)0)]);
  _528 =  /*tail*/ bd_addr_to_str(_527);
  _529 = (&_515->field1);
  _530 = *_529;
  _531 = (&_515->field5.field6);
  _532 = *_531;
  _533 = (&_515->field5.field7);
  _534 = *_533;
  _535 = (&_515->field5.field8);
  _536 = *_535;
  _537 = (&_515->field5.field9);
  _538 = *_537;
  _539 = (&_515->field5.field10);
  _540 = *_539;
  _541 =  /*tail*/ printf(((&_OC_str_OC_41.array[((int32_t)0)])), (((uint32_t)(uint8_t)_516)), _528, (((uint32_t)(uint16_t)_530)), (((uint32_t)(uint16_t)_532)), (((uint32_t)(uint16_t)_534)), (((uint32_t)(uint16_t)_536)), (((uint32_t)(uint16_t)_538)), (((uint32_t)(uint16_t)_540)));
  _542__PHI_TEMPORARY = _539;   /* for PHI node */
  _543__PHI_TEMPORARY = _537;   /* for PHI node */
  _544__PHI_TEMPORARY = _535;   /* for PHI node */
  _545__PHI_TEMPORARY = _533;   /* for PHI node */
  _546__PHI_TEMPORARY = _531;   /* for PHI node */
  _547__PHI_TEMPORARY = _529;   /* for PHI node */
  _548__PHI_TEMPORARY = _527;   /* for PHI node */
  goto _557;

_557:
  _542 = _542__PHI_TEMPORARY;
  _543 = _543__PHI_TEMPORARY;
  _544 = _544__PHI_TEMPORARY;
  _545 = _545__PHI_TEMPORARY;
  _546 = _546__PHI_TEMPORARY;
  _547 = _547__PHI_TEMPORARY;
  _548 = _548__PHI_TEMPORARY;
  *_518 = 112u;
  *((&_517.array[((int32_t)1)])) = 19;
  *((&_517.array[((int32_t)2)])) = _516;
  bt_flip_addr(((&_517.array[((int32_t)3)])), _548);
  _549 = *_547;
  bt_store_16(_518, 9, _549);
  _550 = *_546;
  bt_store_16(_518, 11, _550);
  _551 = *_545;
  bt_store_16(_518, 13, _551);
  _552 = *_544;
  bt_store_16(_518, 15, _552);
  _553 = *_543;
  bt_store_16(_518, 17, _553);
  _554 = *_542;
  bt_store_16(_518, 19, _554);
  l2cap_dispatch(_515, 4, _518, 21);
}


static void l2cap_finialize_channel_close(struct l_struct_struct_OC_l2cap_channel_t* _558) {
  struct l_struct_struct_OC_l2cap_stack_t* _559;
  uint32_t _560;

  *((&_558->field5.field1)) = 1;
   /*tail*/ l2cap_emit_channel_closed(_558);
  _559 = l2cap_stack;
  _560 =  /*tail*/ btstack_linked_list_remove(((&_559->field2)), ((&_558->field0)));
   /*tail*/ btstack_memory_l2cap_channel_free((((uint8_t*)_558)));
}


uint16_t l2cap_max_mtu(void) {
  uint8_t _561;

  _561 = pan_profile_support;
  return (llvm_select_u16((((_561 == ((uint8_t)0))&1)), 672, 1696));
}


uint16_t l2cap_max_le_mtu(void) {
  uint16_t _562;

  _562 = le_att_mtu_size;
  return _562;
}


uint16_t ble_vendor_set_default_att_mtu(uint16_t _563) {
  uint16_t _564;

  _564 = llvm_select_u16((((((uint16_t)_563) > ((uint16_t)((uint16_t)517)))&1)), 517, (llvm_select_u16((((((uint16_t)_563) > ((uint16_t)((uint16_t)23)))&1)), _563, 23)));
  le_att_mtu_size = _564;
  return _564;
}


uint8_t l2cap_create_channel_internal(uint8_t* _565, l_fptr_2* _566, uint8_t* _567, uint16_t _568, uint16_t _569) {
  uint8_t* _570;
  uint8_t _571;
  uint16_t _572;
  uint32_t _573;
  uint8_t* _574;
  uint8_t* _575;
  uint8_t* _576;
  struct l_struct_struct_OC__stack_config* _577;
  uint32_t _578;
  struct l_struct_struct_OC_l2cap_stack_t* _579;
  uint32_t _580;
  uint16_t* _581;
  uint8_t _582;
  uint8_t* _583;
  struct l_struct_struct_OC_l2cap_stack_t* _584;
  uint16_t* _585;
  uint16_t _586;
  uint8_t _587;
  uint8_t _588;
  struct l_struct_struct_OC_l2cap_stack_t* _589;
  uint8_t _590;
  uint8_t _590__PHI_TEMPORARY;

  _570 =  /*tail*/ btstack_memory_l2cap_channel_get();
  if ((((_570 == ((uint8_t*)/*NULL*/0))&1))) {
    _590__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _591;
  } else {
    goto _592;
  }

_592:
  _571 = pan_profile_support;
  _572 = llvm_select_u16((((_571 == ((uint8_t)0))&1)), 672, 1696);
  _573 =  /*tail*/ connection_handler_for_address(_567, 1);
  _574 = (&_570[((int32_t)16)]);
  _575 = (&_570[((int32_t)22)]);
  _576 = memcpy(_575, _567, 6);
  *(((uint16_t*)((&_570[((int32_t)28)])))) = _568;
  *(((uint16_t*)((&_570[((int32_t)4)])))) = (((uint16_t)_573));
  *(((uint8_t**)((&_570[((int32_t)8)])))) = _565;
  *(((l_fptr_2**)((&_570[((int32_t)12)])))) = _566;
  _577 = user_stack_configs;
  _578 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_577->field9)));
  *(((uint16_t*)((&_570[((int32_t)36)])))) = (llvm_select_u16(((((_578 & 1048576) == 0u)&1)), 48, _572));
  *(((uint16_t*)((&_570[((int32_t)34)])))) = (llvm_select_u16((((((uint16_t)_572) < ((uint16_t)_569))&1)), _572, _569));
  _579 = l2cap_stack;
  _580 = *((&_579->field3.field2));
  *((&_570[((int32_t)38)])) = (llvm_and_u8((llvm_lshr_u8((((uint8_t)_580)), 2)), 4));
  _581 = ((uint16_t*)((&_570[((int32_t)30)])));
  *_581 = 0;
  _582 =  /*tail*/ lmp_get_conn_step(_567);
  _583 = (&_570[((int32_t)18)]);
  if ((((_582 == ((uint8_t)0))&1))) {
    goto _593;
  } else {
    goto _594;
  }

_594:
  *_583 = 2;
  goto _595;

_593:
  if ((((_573 == 0u)&1))) {
    goto _596;
  } else {
    goto _597;
  }

_596:
  *_583 = 2;
  goto _595;

_597:
  *_583 = 10;
  _584 = l2cap_stack;
  _585 = (&_584->field3.field5);
  _586 = *_585;
  *_585 = (llvm_add_u16(_586, 1));
  *_581 = _586;
  goto _595;

_595:
  _587 =  /*tail*/ check_l2cap_authentication_flag(_575, 35, 0);
  if ((((_587 == ((uint8_t)32))&1))) {
    goto _598;
  } else {
    goto _599;
  }

_598:
  _588 =  /*tail*/ check_l2cap_authentication_flag(_575, 36, 33);
  goto _599;

_599:
  *(((uint16_t*)_574)) = 0;
  *((&_570[((int32_t)19)])) = 0;
  *((&_570[((int32_t)20)])) = 0;
  _589 = l2cap_stack;
   /*tail*/ btstack_linked_list_add(((&_589->field2)), (((struct l_struct_struct_OC_btstack_linked_item*)_570)));
   /*tail*/ l2cap_run();
  _590__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _591;

_591:
  _590 = _590__PHI_TEMPORARY;
  return _590;
}


void l2cap_disconnect_internal(uint16_t _600, uint8_t _601) {
  struct l_struct_struct_OC_l2cap_channel_t* _602;
  uint8_t* _603;
  uint8_t _604;
  uint8_t _605;
  uint32_t _606;

  _602 =  /*tail*/ l2cap_get_channel_for_local_cid(_600);
  if ((((_602 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    goto _607;
  } else {
    goto _608;
  }

_608:
  _603 = (&_602->field5.field1);
  _604 = *_603;
  switch (_604) {
  default:
    goto _609;
  case ((uint8_t)9):
    goto _610;
  case ((uint8_t)1):
    goto _610;
  }

_609:
  *_603 = 13;
   /*tail*/ l2cap_run();
  goto _607;

_610:
  _605 = l2cap_debug_enable;
  if (((((llvm_and_u8(_605, 32)) == ((uint8_t)0))&1))) {
    goto _607;
  } else {
    goto _611;
  }

_611:
  _606 =  /*tail*/ puts(((&_OC_str_OC_22.array[((int32_t)0)])));
  goto _607;

_607:
  return;
}


uint8_t l2cap_disconnect_all_channel(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _612;
  struct l_struct_struct_OC_btstack_linked_item* _613;
  struct l_struct_struct_OC_btstack_linked_item* _614;
  struct l_struct_struct_OC_btstack_linked_item* _614__PHI_TEMPORARY;
  uint8_t _615;
  uint8_t _615__PHI_TEMPORARY;
  struct l_struct_struct_OC_channel_core_data_t* _616;
  uint16_t _617;
  uint8_t _618;
  uint8_t* _619;
  uint8_t _620;
  struct l_struct_struct_OC_btstack_linked_item* _621;
  uint8_t _622;
  uint8_t _622__PHI_TEMPORARY;

  _612 = l2cap_stack;
  _613 = *((&_612->field2));
  if ((((_613 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _622__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _623;
  } else {
    goto _624;
  }

_624:
  _614__PHI_TEMPORARY = _613;   /* for PHI node */
  _615__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _625;

  do {     /* Syntactic loop '' to make GCC happy */
_625:
  _614 = _614__PHI_TEMPORARY;
  _615 = _615__PHI_TEMPORARY;
  _616 = ((struct l_struct_struct_OC_channel_core_data_t*)((&_614[((int32_t)4)])));
  _617 = *((&_616->field7));
  _618 = llvm_add_u8((((uint8_t)(bool)(((_617 != ((uint16_t)0))&1)))), _615);
  _619 = (&_616->field1);
  _620 = *_619;
  switch (_620) {
  default:
    goto _626;
  case ((uint8_t)9):
    goto _627;
  case ((uint8_t)1):
    goto _627;
  }

_626:
  *_619 = 13;
   /*tail*/ l2cap_run();
  goto _627;

_627:
  _621 = *((&_614->field0));
  if ((((_621 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _628;
  } else {
    _614__PHI_TEMPORARY = _621;   /* for PHI node */
    _615__PHI_TEMPORARY = _618;   /* for PHI node */
    goto _625;
  }

  } while (1); /* end of syntactic loop '' */
_628:
  _622__PHI_TEMPORARY = _618;   /* for PHI node */
  goto _623;

_623:
  _622 = _622__PHI_TEMPORARY;
  return _622;
}


void l2cap_event_handler(uint8_t* _629, uint16_t _630) {
  struct l_array_6_uint8_t _631;    /* Address-exposed local */
  struct l_array_6_uint8_t _632;    /* Address-exposed local */
  uint8_t* _633;
  uint8_t* _634;
  uint8_t _635;
  uint8_t _636;
  uint8_t _637;
  uint8_t _638;
  uint16_t _639;
  uint8_t* _640;
  uint8_t _641;
  uint8_t _642;
  uint8_t _643;
  uint8_t _644;
  uint16_t _645;
  uint8_t* _646;
  uint8_t _647;
  uint8_t* _648;
  uint8_t _649;
  uint8_t* _650;
  uint8_t _651;
  uint8_t _652;
  uint8_t _653;
  uint16_t _654;
  struct l_struct_struct_OC_l2cap_stack_t* _655;
  struct l_struct_struct_OC_btstack_linked_item* _656;
  uint16_t* _657;
  struct l_struct_struct_OC_btstack_linked_item* _658;
  struct l_struct_struct_OC_btstack_linked_item* _658__PHI_TEMPORARY;
  struct l_struct_struct_OC_channel_core_data_t* _659;
  uint32_t _660;
  uint8_t* _661;
  uint8_t _662;
  uint16_t _663;
  struct l_struct_struct_OC_btstack_linked_item* _664;
  uint8_t _665;
  uint8_t _666;
  struct l_struct_struct_OC_l2cap_stack_t* _667;
  struct l_struct_struct_OC_btstack_linked_item** _668;
  struct l_struct_struct_OC_btstack_linked_item* _669;
  struct l_struct_struct_OC_btstack_linked_item* _670;
  struct l_struct_struct_OC_btstack_linked_item** _671;
  struct l_struct_struct_OC_btstack_linked_item* _672;
  struct l_struct_struct_OC_btstack_linked_item* _673;
  struct l_struct_struct_OC_btstack_linked_item* _673__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _674;
  struct l_struct_struct_OC_btstack_linked_item** _674__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _675;
  struct l_struct_struct_OC_btstack_linked_item* _675__PHI_TEMPORARY;
  uint32_t* _676;
  struct l_struct_struct_OC_btstack_linked_item* _677;
  struct l_struct_struct_OC_btstack_linked_item* _677__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_channel_t* _678;
  struct l_struct_struct_OC_channel_core_data_t* _679;
  uint32_t _680;
  uint32_t _681;
  uint8_t _682;
  struct l_struct_struct_OC_btstack_linked_item* _683;
  uint8_t _684;
  uint8_t _685;
  uint32_t _686;
  uint8_t _687;
  uint8_t _688;
  uint32_t _689;
  struct l_struct_struct_OC_l2cap_stack_t* _690;
  struct l_struct_struct_OC_btstack_linked_item** _691;
  struct l_struct_struct_OC_btstack_linked_item* _692;
  struct l_struct_struct_OC_btstack_linked_item* _693;
  struct l_struct_struct_OC_btstack_linked_item** _694;
  struct l_struct_struct_OC_btstack_linked_item* _695;
  struct l_struct_struct_OC_btstack_linked_item* _696;
  struct l_struct_struct_OC_btstack_linked_item* _696__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _697;
  struct l_struct_struct_OC_btstack_linked_item** _697__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _698;
  struct l_struct_struct_OC_btstack_linked_item* _698__PHI_TEMPORARY;
  uint32_t** _699;
  uint32_t* _700;
  struct l_struct_struct_OC_btstack_linked_item* _701;
  struct l_struct_struct_OC_btstack_linked_item* _701__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_channel_t* _702;
  struct l_struct_struct_OC_channel_core_data_t* _703;
  uint32_t _704;
  uint16_t _705;
  uint32_t* _706;
  uint32_t _707;
  uint8_t _708;
  struct l_struct_struct_OC_btstack_linked_item* _709;
  uint8_t _710;
  uint8_t _711;
  uint8_t _712;
  uint16_t _713;
  struct l_struct_struct_OC_l2cap_stack_t* _714;
  struct l_struct_struct_OC_btstack_linked_item* _715;
  struct l_struct_struct_OC_btstack_linked_item* _716;
  struct l_struct_struct_OC_btstack_linked_item* _716__PHI_TEMPORARY;
  uint32_t _717;
  uint32_t _717__PHI_TEMPORARY;
  uint16_t _718;
  uint16_t _719;
  uint32_t _720;
  uint32_t _721;
  uint32_t _721__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _722;
  uint8_t* _723;
  uint8_t _724;
  uint8_t _725;
  struct l_struct_struct_OC_l2cap_stack_t* _726;
  l_fptr_1* _727;

  _633 = (&_631.array[((int32_t)0)]);
  _634 = (&_632.array[((int32_t)0)]);
  _635 = *_629;
  switch (_635) {
  default:
    goto _728;
  case ((uint8_t)8):
    goto _729;
  case ((uint8_t)6):
    goto _730;
  case ((uint8_t)3):
    goto _731;
  case ((uint8_t)14):
    goto _732;
  case ((uint8_t)15):
    goto _733;
  case ((uint8_t)5):
    goto _734;
  case ((uint8_t)19):
    goto _735;
  case ((uint8_t)115):
    goto _736;
  case ((uint8_t)24):
    goto _737;
  }

_729:
  _636 = *((&_629[((int32_t)2)]));
  _637 = *((&_629[((int32_t)3)]));
  _638 = *((&_629[((int32_t)4)]));
  _639 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_638)), 8)), (((uint16_t)(uint8_t)_637)));
  if ((((_636 == ((uint8_t)0))&1))) {
    goto _738;
  } else {
    goto _739;
  }

_738:
  _640 =  /*tail*/ connection_address_for_handle(_639);
  if ((((_640 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _728;
  } else {
    goto _740;
  }

_740:
  _641 =  /*tail*/ check_l2cap_authentication_flag(_640, 36, 34);
   /*tail*/ ((l_fptr_3*)(void*)stack_run_loop_resume)();
  goto _741;

_739:
   /*tail*/ hci_disconnect_cmd(_639, _636);
  goto _741;

_741:
   /*tail*/ l2cap_run();
  goto _728;

_730:
  _642 = *((&_629[((int32_t)2)]));
  _643 = *((&_629[((int32_t)3)]));
  _644 = *((&_629[((int32_t)4)]));
  _645 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_644)), 8)), (((uint16_t)(uint8_t)_643)));
  if ((((_642 == ((uint8_t)0))&1))) {
    goto _742;
  } else {
    goto _743;
  }

_742:
  _646 =  /*tail*/ connection_address_for_handle(_645);
  if ((((_646 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _728;
  } else {
    goto _744;
  }

_744:
  _647 =  /*tail*/ check_l2cap_authentication_flag(_646, 36, 34);
   /*tail*/ ((l_fptr_3*)(void*)stack_run_loop_resume)();
  goto _745;

_743:
   /*tail*/ hci_disconnect_cmd(_645, _642);
  goto _745;

_745:
   /*tail*/ l2cap_run();
  goto _728;

_731:
  _648 = (&_629[((int32_t)5)]);
  bt_flip_addr(_633, _648);
  _649 = *((&_629[((int32_t)11)]));
  switch (_649) {
  default:
    goto _746;
  case ((uint8_t)0):
    goto _728;
  case ((uint8_t)2):
    goto _728;
  }

_746:
  _650 = (&_629[((int32_t)2)]);
  _651 = *_650;
  if ((((_651 == ((uint8_t)0))&1))) {
    goto _747;
  } else {
    goto _748;
  }

_747:
  _652 = *((&_629[((int32_t)3)]));
  _653 = *((&_629[((int32_t)4)]));
  _654 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_653)), 8)), (((uint16_t)(uint8_t)_652)));
  _655 = l2cap_stack;
  _656 = *((&_655->field2));
  if ((((_656 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _749;
  } else {
    goto _750;
  }

_750:
  _657 = (&_655->field3.field5);
  _658__PHI_TEMPORARY = _656;   /* for PHI node */
  goto _751;

  do {     /* Syntactic loop '' to make GCC happy */
_751:
  _658 = _658__PHI_TEMPORARY;
  _659 = ((struct l_struct_struct_OC_channel_core_data_t*)((&_658[((int32_t)4)])));
  _660 = memcmp(((&_659->field5.array[((int32_t)0)])), _648, 6);
  if ((((_660 == 0u)&1))) {
    goto _752;
  } else {
    goto _753;
  }

_752:
  _661 = (&_659->field1);
  _662 = *_661;
  if (((((llvm_and_u8(_662, -2)) == ((uint8_t)2))&1))) {
    goto _754;
  } else {
    goto _753;
  }

_754:
  *_661 = 10;
  *(((uint16_t*)((&_658[((int32_t)1)])))) = _654;
  _663 = *_657;
  *_657 = (llvm_add_u16(_663, 1));
  *((&_659->field7)) = _663;
  goto _753;

_753:
  _664 = *((&_658->field0));
  if ((((_664 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _755;
  } else {
    _658__PHI_TEMPORARY = _664;   /* for PHI node */
    goto _751;
  }

  } while (1); /* end of syntactic loop '' */
_755:
  goto _749;

_749:
  l2cap_run();
  goto _728;

_748:
  _665 = check_l2cap_authentication_flag(_633, 37, 0);
  _666 = *_650;
  _667 = l2cap_stack;
  _668 = (&_667->field2);
  _669 = *_668;
  if ((((_669 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _728;
  } else {
    goto _756;
  }

_756:
  _670 = ((struct l_struct_struct_OC_btstack_linked_item*)_668);
  _673__PHI_TEMPORARY = _669;   /* for PHI node */
  _674__PHI_TEMPORARY = _668;   /* for PHI node */
  _675__PHI_TEMPORARY = _670;   /* for PHI node */
  goto _757;

  do {     /* Syntactic loop '' to make GCC happy */
_757:
  _673 = _673__PHI_TEMPORARY;
  _674 = _674__PHI_TEMPORARY;
  _675 = _675__PHI_TEMPORARY;
  _676 = ((uint32_t*)_675);
  _677__PHI_TEMPORARY = _673;   /* for PHI node */
  goto _758;

  do {     /* Syntactic loop '' to make GCC happy */
_758:
  _677 = _677__PHI_TEMPORARY;
  _678 = ((struct l_struct_struct_OC_l2cap_channel_t*)_677);
  _679 = ((struct l_struct_struct_OC_channel_core_data_t*)((&_677[((int32_t)4)])));
  _680 = memcmp(((&_679->field5.array[((int32_t)0)])), _633, 6);
  if ((((_680 == 0u)&1))) {
    goto _759;
  } else {
    goto _760;
  }

_759:
  _681 = *(((uint32_t*)_677));
  *_676 = _681;
  _682 = *((&_679->field1));
  if (((((llvm_and_u8(_682, -2)) == ((uint8_t)2))&1))) {
    goto _761;
  } else {
    goto _762;
  }

_761:
  l2cap_emit_channel_opened(_678, _666);
  btstack_memory_l2cap_channel_free((((uint8_t*)_677)));
  goto _762;

_762:
  _683 = *_674;
  if ((((_683 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _763;
  } else {
    _677__PHI_TEMPORARY = _683;   /* for PHI node */
    goto _758;
  }

  } while (1); /* end of syntactic loop '' */
_760:
  _671 = (&_677->field0);
  _672 = *_671;
  if ((((_672 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _764;
  } else {
    _673__PHI_TEMPORARY = _672;   /* for PHI node */
    _674__PHI_TEMPORARY = _671;   /* for PHI node */
    _675__PHI_TEMPORARY = _677;   /* for PHI node */
    goto _757;
  }

  } while (1); /* end of syntactic loop '' */
_732:
   /*tail*/ l2cap_run();
  goto _728;

_733:
   /*tail*/ l2cap_run();
  goto _728;

_734:
  _684 = *((&_629[((int32_t)6)]));
  _685 = l2cap_debug_enable;
  if ((((((int8_t)_685) < ((int8_t)((uint8_t)0)))&1))) {
    goto _765;
  } else {
    goto _766;
  }

_765:
  _686 =  /*tail*/ printf(((&_OC_str_OC_23.array[((int32_t)0)])), (((uint32_t)(uint8_t)_684)), (((uint32_t)(uint16_t)_630)));
  goto _766;

_766:
  if (((((((((uint16_t)_630) < ((uint16_t)((uint16_t)7)))&1)) | ((((llvm_or_u8(_684, 2)) == ((uint8_t)2))&1)))&1))) {
    goto _728;
  } else {
    goto _767;
  }

_767:
  _687 = *((&_629[((int32_t)3)]));
  _688 = *((&_629[((int32_t)4)]));
  _689 = ((((uint32_t)(uint8_t)_688)) << 8) | (((uint32_t)(uint8_t)_687));
  bt_flip_addr(_634, ((&_629[((int32_t)7)])));
  _690 = l2cap_stack;
  _691 = (&_690->field2);
  _692 = *_691;
  if ((((_692 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _768;
  } else {
    goto _769;
  }

_769:
  _693 = ((struct l_struct_struct_OC_btstack_linked_item*)_691);
  _696__PHI_TEMPORARY = _692;   /* for PHI node */
  _697__PHI_TEMPORARY = _691;   /* for PHI node */
  _698__PHI_TEMPORARY = _693;   /* for PHI node */
  goto _770;

  do {     /* Syntactic loop '' to make GCC happy */
_770:
  _696 = _696__PHI_TEMPORARY;
  _697 = _697__PHI_TEMPORARY;
  _698 = _698__PHI_TEMPORARY;
  _699 = ((uint32_t**)_698);
  _700 = ((uint32_t*)_698);
  _701__PHI_TEMPORARY = _696;   /* for PHI node */
  goto _771;

  do {     /* Syntactic loop '' to make GCC happy */
_771:
  _701 = _701__PHI_TEMPORARY;
  _702 = ((struct l_struct_struct_OC_l2cap_channel_t*)_701);
  _703 = ((struct l_struct_struct_OC_channel_core_data_t*)((&_701[((int32_t)4)])));
  _704 = memcmp(_634, ((&_703->field5.array[((int32_t)0)])), 6);
  if ((((_704 == 0u)&1))) {
    goto _772;
  } else {
    goto _773;
  }

_772:
  _705 = *(((uint16_t*)((&_701[((int32_t)1)]))));
  if (((((((_705 == ((uint16_t)0))&1)) | ((((((uint32_t)(uint16_t)_705)) == _689)&1)))&1))) {
    goto _774;
  } else {
    goto _773;
  }

_774:
  _706 = *_699;
  _707 = *_706;
  *_700 = _707;
  _708 = *((&_703->field1));
  if (((((llvm_and_u8(_708, -2)) == ((uint8_t)8))&1))) {
    goto _775;
  } else {
    goto _776;
  }

_776:
  l2cap_emit_channel_opened(_702, 80u);
  goto _777;

_775:
  l2cap_emit_channel_closed(_702);
  goto _777;

_777:
  btstack_memory_l2cap_channel_free((((uint8_t*)_701)));
  _709 = *_697;
  if ((((_709 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _778;
  } else {
    _701__PHI_TEMPORARY = _709;   /* for PHI node */
    goto _771;
  }

  } while (1); /* end of syntactic loop '' */
_773:
  _694 = (&_701->field0);
  _695 = *_694;
  if ((((_695 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _779;
  } else {
    _696__PHI_TEMPORARY = _695;   /* for PHI node */
    _697__PHI_TEMPORARY = _694;   /* for PHI node */
    _698__PHI_TEMPORARY = _701;   /* for PHI node */
    goto _770;
  }

  } while (1); /* end of syntactic loop '' */
_778:
  goto _768;

_779:
  goto _768;

_768:
  _710 = check_l2cap_authentication_flag(_634, 37, 0);
  goto _728;

_735:
   /*tail*/ l2cap_run();
   /*tail*/ l2cap_hand_out_credits();
  goto _728;

_736:
  _711 = *((&_629[((int32_t)2)]));
  _712 = *((&_629[((int32_t)3)]));
  _713 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_712)), 8)), (((uint16_t)(uint8_t)_711)));
  _714 = l2cap_stack;
  _715 = *((&_714->field2));
  if ((((_715 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _780;
  } else {
    goto _781;
  }

_781:
  _716__PHI_TEMPORARY = _715;   /* for PHI node */
  _717__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _782;

  do {     /* Syntactic loop '' to make GCC happy */
_782:
  _716 = _716__PHI_TEMPORARY;
  _717 = _717__PHI_TEMPORARY;
  _718 = *(((uint16_t*)((&_716[((int32_t)1)]))));
  if ((((_718 == _713)&1))) {
    goto _783;
  } else {
    _721__PHI_TEMPORARY = _717;   /* for PHI node */
    goto _784;
  }

_783:
  _719 = *(((uint16_t*)((&_716[((int32_t)7)]))));
  _720 = llvm_select_u32((((_719 == ((uint16_t)1))&1)), _717, 1);
  _721__PHI_TEMPORARY = _720;   /* for PHI node */
  goto _784;

_784:
  _721 = _721__PHI_TEMPORARY;
  _722 = *((&_716->field0));
  if ((((_722 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _785;
  } else {
    _716__PHI_TEMPORARY = _722;   /* for PHI node */
    _717__PHI_TEMPORARY = _721;   /* for PHI node */
    goto _782;
  }

  } while (1); /* end of syntactic loop '' */
_785:
  if ((((_721 == 0u)&1))) {
    goto _780;
  } else {
    goto _728;
  }

_780:
   /*tail*/ hci_disconnect_cmd(_713, 19);
  goto _728;

_737:
  _723 = (&_629[((int32_t)2)]);
  _724 =  /*tail*/ check_l2cap_authentication_flag(_723, 39, 0);
  if ((((_724 == ((uint8_t)0))&1))) {
    goto _728;
  } else {
    goto _786;
  }

_786:
  _725 =  /*tail*/ handle_remote_dev_type((((struct l_array_6_uint8_t*)_723)), _724);
  goto _728;

_763:
  goto _728;

_764:
  goto _728;

_728:
  _726 = l2cap_stack;
  _727 = *((&_726->field0));
  _727(((uint8_t*)/*NULL*/0), 4, 0, _629, _630);
}


static void l2cap_emit_channel_closed(struct l_struct_struct_OC_l2cap_channel_t* _787) {
  struct l_array_4_uint8_t _788;    /* Address-exposed local */
  uint8_t* _789;
  uint8_t _790;
  uint16_t* _791;
  uint16_t _792;
  uint32_t _793;
  uint16_t _794;

  _789 = (&_788.array[((int32_t)0)]);
  _790 = l2cap_debug_enable;
  _791 = (&_787->field5.field7);
  if (((((llvm_and_u8(_790, 1)) == ((uint8_t)0))&1))) {
    goto _795;
  } else {
    goto _796;
  }

_796:
  _792 = *_791;
  _793 =  /*tail*/ printf(((&_OC_str_OC_42.array[((int32_t)0)])), (((uint32_t)(uint16_t)_792)));
  goto _795;

_795:
  *_789 = 113u;
  *((&_788.array[((int32_t)1)])) = 2;
  _794 = *_791;
  bt_store_16(_789, 2, _794);
  l2cap_dispatch(_787, 4, _789, 4);
}


void l2cap_accept_connection_internal(uint16_t _797) {
  struct l_struct_struct_OC_l2cap_channel_t* _798;
  uint8_t _799;
  uint32_t _800;

  _798 =  /*tail*/ l2cap_get_channel_for_local_cid(_797);
  if ((((_798 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    goto _801;
  } else {
    goto _802;
  }

_801:
  _799 = l2cap_debug_enable;
  if (((((llvm_and_u8(_799, 4)) == ((uint8_t)0))&1))) {
    goto _803;
  } else {
    goto _804;
  }

_804:
  _800 =  /*tail*/ printf(((&_OC_str_OC_24.array[((int32_t)0)])), (((uint32_t)(uint16_t)_797)));
  goto _803;

_802:
  *((&_798->field5.field1)) = 12;
   /*tail*/ l2cap_run();
  goto _803;

_803:
  return;
}


void l2cap_decline_connection_internal(uint16_t _805, uint8_t _806) {
  struct l_struct_struct_OC_l2cap_channel_t* _807;

  _807 =  /*tail*/ l2cap_get_channel_for_local_cid(_805);
  if ((((_807 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    goto _808;
  } else {
    goto _809;
  }

_809:
  *((&_807->field5.field1)) = 11;
  *((&_807->field5.field4)) = _806;
   /*tail*/ l2cap_run();
  goto _808;

_808:
  return;
}


void l2cap_signaling_handle_configure_request(struct l_struct_struct_OC_l2cap_channel_t* _810, uint8_t* _811) {
  uint8_t _812;
  uint8_t _813;
  uint16_t* _814;
  uint16_t _815;
  uint8_t _816;
  uint8_t _817;
  uint32_t _818;
  uint16_t* _819;
  uint16_t* _820;
  uint8_t* _821;
  uint16_t* _822;
  uint16_t* _823;
  uint32_t _824;
  uint32_t _824__PHI_TEMPORARY;
  uint16_t _825;
  uint16_t _825__PHI_TEMPORARY;
  uint8_t _826;
  uint8_t _827;
  uint8_t _828;
  uint8_t _829;
  uint16_t _830;
  uint32_t _831;
  uint16_t _832;
  uint8_t _833;
  uint32_t _834;
  uint8_t _835;
  uint8_t _836;
  uint16_t _837;
  uint32_t _838;
  uint8_t _839;
  uint8_t _840;
  uint16_t _841;
  uint16_t _842;
  uint16_t _843;
  uint32_t _844;

  _812 = *((&_811[((int32_t)6)]));
  _813 = *((&_811[((int32_t)1)]));
  *((&_810->field5.field2)) = _813;
  if (((((llvm_and_u8(_812, 1)) == ((uint8_t)0))&1))) {
    goto _845;
  } else {
    goto _846;
  }

_846:
  _814 = (&_810->field5.field0);
  _815 = *_814;
  *_814 = (llvm_or_u16(_815, 256));
  goto _845;

_845:
  _816 = *((&_811[((int32_t)2)]));
  _817 = *((&_811[((int32_t)3)]));
  _818 = (llvm_add_u32((((((uint32_t)(uint8_t)_817)) << 8) | (((uint32_t)(uint8_t)_816))), 4)) & 65535;
  if ((((((uint32_t)_818) > ((uint32_t)8u))&1))) {
    goto _847;
  } else {
    goto _848;
  }

_847:
  _819 = (&_810->field5.field10);
  _820 = (&_810->field5.field0);
  _821 = (&_810->field5.field13.field3);
  _822 = (&_810->field5.field13.field6);
  _823 = (&_810->field5.field7);
  _824__PHI_TEMPORARY = 8;   /* for PHI node */
  _825__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _849;

  do {     /* Syntactic loop '' to make GCC happy */
_849:
  _824 = _824__PHI_TEMPORARY;
  _825 = _825__PHI_TEMPORARY;
  _826 = *((&_811[((int32_t)_824)]));
  _827 = llvm_lshr_u8(_826, 7);
  _828 = llvm_and_u8(_826, 127u);
  _829 = l2cap_debug_enable;
  if (((((llvm_and_u8(_829, 1)) == ((uint8_t)0))&1))) {
    goto _850;
  } else {
    goto _851;
  }

_851:
  _830 = *_823;
  _831 =  /*tail*/ printf(((&_OC_str_OC_25.array[((int32_t)0)])), (((uint32_t)(uint16_t)_830)), (((uint32_t)(uint8_t)_827)), (((uint32_t)(uint8_t)_828)));
  goto _850;

_850:
  _832 = llvm_add_u16(_825, 2);
  _833 = *((&_811[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_825, 1)))))]));
  if (((((((_828 == ((uint8_t)1))&1)) & (((_833 == ((uint8_t)2))&1)))&1))) {
    goto _852;
  } else {
    goto _853;
  }

_852:
  _834 = ((uint32_t)(uint16_t)_832);
  _835 = *((&_811[((int32_t)_834)]));
  _836 = *((&_811[((int32_t)(llvm_add_u32(_834, 1)))]));
  *_819 = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_836)), 8)), (((uint16_t)(uint8_t)_835))));
  _837 = *_820;
  *_820 = (llvm_or_u16(_837, 64));
  goto _853;

_853:
  if ((((_827 == ((uint8_t)1))&1))) {
    goto _854;
  } else {
    goto _855;
  }

_855:
  if ((((((uint8_t)(llvm_add_u8(_828, -1))) > ((uint8_t)((uint8_t)5)))&1))) {
    goto _856;
  } else {
    goto _857;
  }

_856:
  *_821 = _828;
  _838 = ((uint32_t)(uint16_t)_832);
  _839 = *((&_811[((int32_t)_838)]));
  _840 = *((&_811[((int32_t)(llvm_add_u32(_838, 1)))]));
  *_822 = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_840)), 8)), (((uint16_t)(uint8_t)_839))));
  _841 = *_820;
  *_820 = (llvm_or_u16(_841, 512));
  goto _857;

_854:
  if ((((((uint8_t)(llvm_add_u8(_828, -1))) > ((uint8_t)((uint8_t)5)))&1))) {
    goto _858;
  } else {
    goto _857;
  }

_858:
  _842 = *_820;
  *_820 = (llvm_or_u16(_842, 256));
  goto _857;

_857:
  _843 = llvm_add_u16((((uint16_t)(uint8_t)_833)), _832);
  _844 = ((uint32_t)(uint16_t)_843);
  if ((((((uint32_t)_844) < ((uint32_t)_818))&1))) {
    _824__PHI_TEMPORARY = _844;   /* for PHI node */
    _825__PHI_TEMPORARY = _843;   /* for PHI node */
    goto _849;
  } else {
    goto _859;
  }

  } while (1); /* end of syntactic loop '' */
_859:
  goto _848;

_848:
  return;
}


void l2cap_signaling_handler_channel(struct l_struct_struct_OC_l2cap_channel_t* _860, uint8_t* _861) {
  uint8_t _862;
  uint8_t _863;
  uint8_t _864;
  uint8_t* _865;
  uint8_t* _866;
  uint8_t _867;
  uint32_t _868;
  uint8_t* _869;
  uint8_t* _869__PHI_TEMPORARY;
  uint8_t _870;
  uint8_t _871;
  uint8_t _872;
  uint32_t _873;
  uint32_t _874;
  uint32_t _874__PHI_TEMPORARY;
  uint32_t _875;
  uint32_t _875__PHI_TEMPORARY;
  uint32_t _876;
  uint8_t _877;
  uint8_t _878;
  uint32_t _879;
  uint8_t _880;
  uint8_t _881;
  uint32_t _882;
  uint8_t _883;
  uint32_t _884;
  uint8_t _885;
  uint8_t _886;
  uint8_t _887;
  uint16_t _888;
  uint8_t _889;
  uint16_t _890;
  uint16_t _891;
  uint32_t _892;
  uint8_t _893;
  uint8_t _894;
  uint8_t _895;
  uint8_t _896;
  uint16_t* _897;
  uint16_t _898;
  struct l_struct_struct_OC_l2cap_stack_t* _899;
  uint32_t _900;
  uint16_t* _901;
  uint16_t _902;
  uint16_t _903;
  uint8_t _904;
  uint8_t _905;
  uint16_t* _906;
  uint16_t _907;
  struct l_struct_struct_OC_l2cap_stack_t* _908;
  uint32_t _909;
  uint16_t* _910;
  uint16_t _911;
  uint16_t _912;

  _862 = *_861;
  _863 = *((&_861[((int32_t)1)]));
  _864 = l2cap_debug_enable;
  if (((((llvm_and_u8(_864, 1)) == ((uint8_t)0))&1))) {
    goto _913;
  } else {
    goto _914;
  }

_913:
  _865 = (&_860->field5.field1);
  _869__PHI_TEMPORARY = _865;   /* for PHI node */
  goto _915;

_914:
  _866 = (&_860->field5.field1);
  _867 = *_866;
  _868 =  /*tail*/ printf(((&_OC_str_OC_26.array[((int32_t)0)])), (((uint32_t)(uint8_t)_862)), (((uint32_t)(uint8_t)_867)));
  _869__PHI_TEMPORARY = _866;   /* for PHI node */
  goto _915;

_915:
  _869 = _869__PHI_TEMPORARY;
  _870 = *_869;
  if ((((_862 == ((uint8_t)6))&1))) {
    goto _916;
  } else {
    goto _917;
  }

_916:
  switch (_870) {
  default:
    goto _918;
  case ((uint8_t)7):
    goto _919;
  case ((uint8_t)8):
    goto _919;
  case ((uint8_t)13):
    goto _919;
  case ((uint8_t)9):
    goto _919;
  }

_919:
  *((&_860->field5.field2)) = _863;
  *_869 = 14;
   /*tail*/ l2cap_run();
  goto _918;

_917:
  switch (_870) {
  default:
    goto _918;
  case ((uint8_t)5):
    goto _920;
  case ((uint8_t)6):
    goto _921;
  case ((uint8_t)7):
    goto _922;
  case ((uint8_t)9):
    goto _923;
  }

_920:
  if ((((_862 == ((uint8_t)11))&1))) {
    goto _924;
  } else {
    goto _918;
  }

_924:
  *_869 = 6;
  _871 = *((&_861[((int32_t)2)]));
  _872 = *((&_861[((int32_t)3)]));
  _873 = (llvm_add_u32((((((uint32_t)(uint8_t)_872)) << 8) | (((uint32_t)(uint8_t)_871))), 4)) & 65535;
  if ((((((uint32_t)_873) > ((uint32_t)4u))&1))) {
    goto _925;
  } else {
    goto _926;
  }

_925:
  _874__PHI_TEMPORARY = 4;   /* for PHI node */
  _875__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _927;

  do {     /* Syntactic loop '' to make GCC happy */
_927:
  _874 = _874__PHI_TEMPORARY;
  _875 = _875__PHI_TEMPORARY;
  _876 = (llvm_add_u32(_875, 2)) & 65535;
  _877 = *((&_861[((int32_t)_876)]));
  _878 = *((&_861[((int32_t)(llvm_add_u32(_876, 1)))]));
  if (((((((((uint32_t)(uint8_t)_878)) << 8) | (((uint32_t)(uint8_t)_877))) == 0u)&1))) {
    goto _928;
  } else {
    goto _929;
  }

_928:
  _880 = *((&_861[((int32_t)_874)]));
  _881 = *((&_861[((int32_t)(llvm_add_u32(_874, 1)))]));
  if (((((((((uint32_t)(uint8_t)_881)) << 8) | (((uint32_t)(uint8_t)_880))) == 2u)&1))) {
    goto _930;
  } else {
    goto _929;
  }

_929:
  _879 = (llvm_add_u32(_875, 4)) & 65535;
  if ((((((uint32_t)_879) < ((uint32_t)_873))&1))) {
    _874__PHI_TEMPORARY = _879;   /* for PHI node */
    _875__PHI_TEMPORARY = (llvm_add_u32(_876, 2));   /* for PHI node */
    goto _927;
  } else {
    goto _931;
  }

  } while (1); /* end of syntactic loop '' */
_930:
  _882 = (llvm_add_u32(_875, 4)) & 65535;
  _883 = *((&_861[((int32_t)_882)]));
  _884 = ((uint32_t)(uint8_t)_883);
  _885 = *((&_861[((int32_t)(llvm_add_u32(_882, 1)))]));
  _886 = *((&_861[((int32_t)(llvm_add_u32(_882, 2)))]));
  _887 = *((&_861[((int32_t)(llvm_add_u32(_882, 3)))]));
  *((&_860->field5.field12)) = (((((((uint32_t)(uint8_t)_885)) << 8) | _884) | ((((uint32_t)(uint8_t)_886)) << 16)) | ((((uint32_t)(uint8_t)_887)) << 24));
  if (((((_884 & 16) == 0u)&1))) {
    goto _932;
  } else {
    goto _926;
  }

_932:
  *((&_860->field5.field11)) = 0;
  goto _926;

_931:
  goto _926;

_926:
  _888 = *((&_860->field1));
  _889 = *((&_860->field5.field3));
  _890 = *((&_860->field5.field6));
  _891 = *((&_860->field5.field7));
  _892 =  /*tail*/ l2cap_send_signaling_packet(_888, 2, (((uint32_t)(uint8_t)_889)), (((uint32_t)(uint16_t)_890)), (((uint32_t)(uint16_t)_891)));
  goto _918;

_921:
  if ((((_862 == ((uint8_t)3))&1))) {
    goto _933;
  } else {
    goto _918;
  }

_933:
  _893 = *((&_861[((int32_t)8)]));
  _894 = *((&_861[((int32_t)9)]));
  switch ((llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_894)), 8)), (((uint16_t)(uint8_t)_893))))) {
  default:
    goto _934;
  case ((uint16_t)0):
    goto _935;
  case ((uint16_t)1):
    goto _918;
  }

_935:
  _895 = *((&_861[((int32_t)4)]));
  _896 = *((&_861[((int32_t)5)]));
  *((&_860->field5.field8)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_896)), 8)), (((uint16_t)(uint8_t)_895))));
  *_869 = 7;
  _897 = (&_860->field5.field0);
  _898 = *_897;
  *_897 = (llvm_or_u16(_898, 4));
  goto _918;

_934:
  *_869 = 1;
   /*tail*/ l2cap_emit_channel_opened(_860, (llvm_add_u8(_893, 99u)));
  _899 = l2cap_stack;
  _900 =  /*tail*/ btstack_linked_list_remove(((&_899->field2)), ((&_860->field0)));
   /*tail*/ btstack_memory_l2cap_channel_free((((uint8_t*)_860)));
  goto _918;

_922:
  switch (_862) {
  default:
    goto _936;
  case ((uint8_t)4):
    goto _937;
  case ((uint8_t)5):
    goto _938;
  }

_937:
  _901 = (&_860->field5.field0);
  _902 = *_901;
  *_901 = (llvm_or_u16(_902, 8));
   /*tail*/ l2cap_signaling_handle_configure_request(_860, _861);
  _903 = *_901;
  if (((((llvm_and_u16(_903, 256)) == ((uint16_t)0))&1))) {
    goto _939;
  } else {
    goto _936;
  }

_939:
  *_901 = (llvm_or_u16(_903, 1));
  goto _936;

_938:
  _904 = *((&_861[((int32_t)8)]));
  _905 = *((&_861[((int32_t)9)]));
  switch ((llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_905)), 8)), (((uint16_t)(uint8_t)_904))))) {
  default:
    goto _940;
  case ((uint16_t)0):
    goto _941;
  case ((uint16_t)1):
    goto _942;
  }

_941:
  _906 = (&_860->field5.field0);
  _907 = *_906;
  *_906 = (llvm_or_u16(_907, 2));
  goto _936;

_942:
  _908 = l2cap_stack;
  _909 = *((&_908->field3.field2));
  if (((((_909 & 16) == 0u)&1))) {
    goto _940;
  } else {
    goto _943;
  }

_943:
  _910 = (&_860->field5.field0);
  _911 = *_910;
  *((&_860->field5.field11)) = 0;
  *_869 = 7;
  *_910 = (llvm_or_u16((llvm_and_u16(_911, -21)), 4));
  goto _936;

_940:
  *_869 = 13;
  goto _936;

_936:
  _912 = *((&_860->field5.field0));
  if (((((llvm_and_u16(_912, 34)) == ((uint16_t)34))&1))) {
    goto _944;
  } else {
    goto _918;
  }

_944:
  *_869 = 8;
   /*tail*/ l2cap_emit_channel_opened(_860, 0);
   /*tail*/ l2cap_emit_credits(_860, 1);
  goto _918;

_923:
  if ((((_862 == ((uint8_t)7))&1))) {
    goto _945;
  } else {
    goto _918;
  }

_945:
   /*tail*/ l2cap_finialize_channel_close(_860);
  goto _918;

_918:
  return;
}


void l2cap_signaling_handler_dispatch(uint16_t _946, uint8_t* _947) {
  struct l_array_16_uint8_t _948;    /* Address-exposed local */
  uint8_t _949;
  uint8_t _950;
  uint8_t _951;
  uint8_t _952;
  uint16_t _953;
  uint8_t _954;
  uint8_t _955;
  uint16_t _956;
  uint8_t _957;
  uint32_t _958;
  struct l_struct_struct_OC_l2cap_stack_t* _959;
  struct l_struct_struct_OC_btstack_linked_item* _960;
  struct l_struct_struct_OC_btstack_linked_item* _961;
  struct l_struct_struct_OC_btstack_linked_item* _962;
  struct l_struct_struct_OC_btstack_linked_item* _962__PHI_TEMPORARY;
  uint16_t _963;
  struct l_struct_struct_OC_l2cap_service_t* _964;
  uint8_t* _965;
  uint8_t _966;
  uint32_t _967;
  uint32_t _968;
  uint32_t _969;
  uint8_t* _970;
  struct l_struct_struct_OC_l2cap_channel_t* _971;
  uint8_t* _972;
  uint8_t* _973;
  uint8_t* _974;
  uint16_t* _975;
  uint16_t* _976;
  uint32_t _977;
  uint32_t _978;
  struct l_struct_struct_OC_l2cap_stack_t* _979;
  uint16_t* _980;
  uint16_t _981;
  uint16_t* _982;
  uint16_t* _983;
  uint16_t _984;
  uint16_t* _985;
  uint8_t _986;
  uint16_t _987;
  uint32_t _988;
  uint8_t* _989;
  uint8_t _990;
  uint8_t* _991;
  uint16_t _992;
  uint16_t _993;
  uint16_t _994;
  uint16_t _995;
  uint32_t _996;
  uint16_t _997;
  uint16_t _998;
  uint16_t _999;
  uint16_t _1000;
  uint8_t _1001;
  uint32_t _1002;
  uint8_t _1003;
  uint8_t _1004;
  uint8_t _1005;
  uint8_t _1006;
  uint32_t _1007;
  struct l_struct_struct_OC_l2cap_stack_t* _1008;
  struct l_struct_struct_OC_btstack_linked_item* _1009;
  struct l_struct_struct_OC_btstack_linked_item* _1010;
  struct l_struct_struct_OC_btstack_linked_item* _1010__PHI_TEMPORARY;
  uint16_t _1011;
  uint8_t _1012;
  uint16_t _1013;
  struct l_struct_struct_OC_btstack_linked_item* _1014;

  _949 = *_947;
  _950 = *((&_947[((int32_t)1)]));
  switch (_949) {
  default:
    goto _1015;
  case ((uint8_t)0):
    goto _1016;
  case ((uint8_t)9):
    goto _1016;
  }

_1015:
  if ((((((uint8_t)_949) > ((uint8_t)((uint8_t)11)))&1))) {
    goto _1016;
  } else {
    goto _1017;
  }

_1016:
   /*tail*/ l2cap_register_signaling_response(_946, 1, _950, 0, 0);
  goto _1018;

_1017:
  switch (_949) {
  default:
    goto _1019;
  case ((uint8_t)2):
    goto _1020;
  case ((uint8_t)10):
    goto _1021;
  }

_1020:
  _951 = *((&_947[((int32_t)4)]));
  _952 = *((&_947[((int32_t)5)]));
  _953 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_952)), 8)), (((uint16_t)(uint8_t)_951)));
  _954 = *((&_947[((int32_t)6)]));
  _955 = *((&_947[((int32_t)7)]));
  _956 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_955)), 8)), (((uint16_t)(uint8_t)_954)));
  _957 = l2cap_debug_enable;
  if (((((llvm_and_u8(_957, 32)) == ((uint8_t)0))&1))) {
    goto _1022;
  } else {
    goto _1023;
  }

_1023:
  _958 =  /*tail*/ puts(((&_OC_str_OC_27.array[((int32_t)0)])));
  goto _1022;

_1022:
   /*tail*/ clear_sniff_cnt();
  _959 = l2cap_stack;
  _960 = *((&_959->field1));
  if ((((_960 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1024;
  } else {
    goto _1025;
  }

_1025:
  _962__PHI_TEMPORARY = _960;   /* for PHI node */
  goto _1026;

  do {     /* Syntactic loop '' to make GCC happy */
_1026:
  _962 = _962__PHI_TEMPORARY;
  _963 = *(((uint16_t*)((&_962[((int32_t)1)]))));
  if ((((_963 == _953)&1))) {
    goto _1027;
  } else {
    goto _1028;
  }

_1028:
  _961 = *((&_962->field0));
  if ((((_961 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1029;
  } else {
    _962__PHI_TEMPORARY = _961;   /* for PHI node */
    goto _1026;
  }

  } while (1); /* end of syntactic loop '' */
_1029:
  goto _1024;

_1024:
   /*tail*/ l2cap_register_signaling_response(_946, 2, _950, _956, 2);
  goto _1018;

_1027:
  _964 = ((struct l_struct_struct_OC_l2cap_service_t*)_962);
  _965 =  /*tail*/ connection_address_for_handle(_946);
  _966 = l2cap_debug_enable;
  _967 = ((uint32_t)(uint8_t)_966);
  if ((((_965 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _1030;
  } else {
    goto _1031;
  }

_1030:
  if (((((_967 & 4) == 0u)&1))) {
    goto _1018;
  } else {
    goto _1032;
  }

_1032:
  _968 =  /*tail*/ printf(((&_OC_str_OC_43.array[((int32_t)0)])), (((uint32_t)(uint16_t)_946)));
  goto _1018;

_1031:
  if (((((_967 & 1) == 0u)&1))) {
    goto _1033;
  } else {
    goto _1034;
  }

_1034:
  _969 =  /*tail*/ puts(((&str_OC_65.array[((int32_t)0)])));
  goto _1033;

_1033:
  _970 =  /*tail*/ btstack_memory_l2cap_channel_get();
  _971 = ((struct l_struct_struct_OC_l2cap_channel_t*)_970);
  if ((((_970 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _1035;
  } else {
    goto _1036;
  }

_1035:
   /*tail*/ l2cap_register_signaling_response(_946, 2, _950, _956, 4);
  goto _1018;

_1036:
  _972 = (&_970[((int32_t)16)]);
  _973 = (&_970[((int32_t)22)]);
  _974 = memcpy(_973, _965, 6);
  _975 = ((uint16_t*)((&_970[((int32_t)28)])));
  *_975 = _953;
  _976 = ((uint16_t*)((&_970[((int32_t)4)])));
  *_976 = _946;
  _977 = *(((uint32_t*)((&_962[((int32_t)2)]))));
  *(((uint32_t*)((&_970[((int32_t)8)])))) = _977;
  _978 = *(((uint32_t*)((&_962[((int32_t)3)]))));
  *(((uint32_t*)((&_970[((int32_t)12)])))) = _978;
  _979 = l2cap_stack;
  _980 = (&_979->field3.field5);
  _981 = *_980;
  *_980 = (llvm_add_u16(_981, 1));
  _982 = ((uint16_t*)((&_970[((int32_t)30)])));
  *_982 = _981;
  _983 = ((uint16_t*)((&_970[((int32_t)32)])));
  *_983 = _956;
  _984 = *((&_964->field2));
  _985 = ((uint16_t*)((&_970[((int32_t)34)])));
  *_985 = _984;
  _986 = pan_profile_support;
  _987 = llvm_select_u16((((_986 == ((uint8_t)0))&1)), 672, 1696);
  *(((uint16_t*)((&_970[((int32_t)36)])))) = _987;
  *((&_970[((int32_t)19)])) = _950;
  _988 = *((&_979->field3.field2));
  *((&_970[((int32_t)38)])) = (llvm_and_u8((llvm_lshr_u8((((uint8_t)_988)), 2)), 4));
  if ((((((uint16_t)_984) > ((uint16_t)_987))&1))) {
    goto _1037;
  } else {
    goto _1038;
  }

_1037:
  *_985 = _987;
  goto _1038;

_1038:
  *((&_970[((int32_t)18)])) = 4;
  *(((uint16_t*)_972)) = 0;
   /*tail*/ btstack_linked_list_add(((&_979->field2)), (((struct l_struct_struct_OC_btstack_linked_item*)_970)));
  _989 = (&_948.array[((int32_t)0)]);
  _990 = l2cap_debug_enable;
  if (((((llvm_and_u8(_990, 1)) == ((uint8_t)0))&1))) {
    goto _1039;
  } else {
    goto _1040;
  }

_1040:
  _991 =  /*tail*/ bd_addr_to_str(_973);
  _992 = *_976;
  _993 = *_975;
  _994 = *_982;
  _995 = *_983;
  _996 =  /*tail*/ printf(((&_OC_str_OC_45.array[((int32_t)0)])), _991, (((uint32_t)(uint16_t)_992)), (((uint32_t)(uint16_t)_993)), (((uint32_t)(uint16_t)_994)), (((uint32_t)(uint16_t)_995)));
  goto _1039;

_1039:
  *_989 = 114u;
  *((&_948.array[((int32_t)1)])) = 14;
  bt_flip_addr(((&_948.array[((int32_t)2)])), _973);
  _997 = *_976;
  bt_store_16(_989, 8, _997);
  _998 = *_975;
  bt_store_16(_989, 10, _998);
  _999 = *_982;
  bt_store_16(_989, 12, _999);
  _1000 = *_983;
  bt_store_16(_989, 14, _1000);
  l2cap_dispatch(_971, 4, _989, 16);
  goto _1018;

_1021:
  _1001 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1001, 32)) == ((uint8_t)0))&1))) {
    goto _1041;
  } else {
    goto _1042;
  }

_1042:
  _1002 =  /*tail*/ puts(((&_OC_str_OC_28.array[((int32_t)0)])));
  goto _1041;

_1041:
  _1003 = *((&_947[((int32_t)4)]));
  _1004 = *((&_947[((int32_t)5)]));
   /*tail*/ l2cap_register_signaling_response(_946, 10, _950, 0, (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_1004)), 8)), (((uint16_t)(uint8_t)_1003)))));
  goto _1018;

_1019:
  _1005 = *((&_947[((int32_t)4)]));
  _1006 = *((&_947[((int32_t)5)]));
  _1007 = ((((uint32_t)(uint8_t)_1006)) << 8) | (((uint32_t)(uint8_t)_1005));
  _1008 = l2cap_stack;
  _1009 = *((&_1008->field2));
  if ((((_1009 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1018;
  } else {
    goto _1043;
  }

_1043:
  _1010__PHI_TEMPORARY = _1009;   /* for PHI node */
  goto _1044;

  do {     /* Syntactic loop '' to make GCC happy */
_1044:
  _1010 = _1010__PHI_TEMPORARY;
  _1011 = *(((uint16_t*)((&_1010[((int32_t)1)]))));
  if ((((_1011 == _946)&1))) {
    goto _1045;
  } else {
    goto _1046;
  }

_1045:
  if (((((llvm_and_u8(_949, 1)) == ((uint8_t)0))&1))) {
    goto _1047;
  } else {
    goto _1048;
  }

_1048:
  _1012 = *(((uint8_t*)((&_1010[((int32_t)5)]))));
  if ((((_1012 == _950)&1))) {
    goto _1049;
  } else {
    goto _1046;
  }

_1047:
  _1013 = *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_1010[((int32_t)4)]))))->field7));
  if (((((((uint32_t)(uint16_t)_1013)) == _1007)&1))) {
    goto _1050;
  } else {
    goto _1046;
  }

_1046:
  _1014 = *((&_1010->field0));
  if ((((_1014 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1051;
  } else {
    _1010__PHI_TEMPORARY = _1014;   /* for PHI node */
    goto _1044;
  }

  } while (1); /* end of syntactic loop '' */
_1049:
   /*tail*/ l2cap_signaling_handler_channel((((struct l_struct_struct_OC_l2cap_channel_t*)_1010)), _947);
  goto _1018;

_1050:
   /*tail*/ l2cap_signaling_handler_channel((((struct l_struct_struct_OC_l2cap_channel_t*)_1010)), _947);
  goto _1018;

_1051:
  goto _1018;

_1018:
  return;
}


static void l2cap_register_signaling_response(uint16_t _1052, uint8_t _1053, uint8_t _1054, uint16_t _1055, uint16_t _1056) {
  struct l_struct_struct_OC_l2cap_stack_t* _1057;
  uint32_t* _1058;
  uint32_t _1059;
  uint32_t _1060;
  uint32_t _1061;
  uint32_t _1062;

  _1057 = l2cap_stack;
  _1058 = (&_1057->field3.field1);
  _1059 = *_1058;
  if ((((((int32_t)_1059) < ((int32_t)3u))&1))) {
    goto _1063;
  } else {
    goto _1064;
  }

_1063:
  *((&_1057->field3.field0.array[((int32_t)_1059)].field0)) = _1052;
  _1060 = *_1058;
  *((&_1057->field3.field0.array[((int32_t)_1060)].field2)) = _1053;
  _1061 = *_1058;
  *((&_1057->field3.field0.array[((int32_t)_1061)].field1)) = _1054;
  _1062 = *_1058;
  *((&_1057->field3.field0.array[((int32_t)_1062)].field3)) = _1055;
  *((&_1057->field3.field0.array[((int32_t)_1062)].field4)) = _1056;
  *_1058 = (llvm_add_u32(_1062, 1));
   /*tail*/ l2cap_run();
  goto _1064;

_1064:
  return;
}


uint32_t l2cap_connection_update_request_just(uint8_t* _1065, uint16_t _1066) {
  return 0;
}


void l2cap_acl_handler(uint8_t* _1067, uint16_t _1068) {
  struct l_array_6_uint8_t _1069;    /* Address-exposed local */
  struct l_array_10_uint8_t _1070;    /* Address-exposed local */
  struct l_struct_struct_OC_le_connection_parameter_range _1071;    /* Address-exposed local */
  uint8_t _1072;
  uint8_t _1073;
  uint16_t _1074;
  uint8_t _1075;
  uint8_t _1076;
  uint16_t _1077;
  uint8_t _1078;
  uint32_t _1079;
  uint32_t _1080;
  uint32_t _1081;
  uint32_t _1081__PHI_TEMPORARY;
  uint8_t _1082;
  uint8_t _1083;
  uint32_t _1084;
  uint32_t _1085;
  uint8_t _1086;
  uint32_t _1087;
  uint8_t _1088;
  uint8_t _1089;
  uint8_t _1090;
  uint8_t* _1091;
  uint8_t* _1092;
  uint8_t _1093;
  uint16_t _1094;
  uint8_t _1095;
  uint32_t _1096;
  uint8_t _1097;
  uint8_t _1098;
  uint8_t _1098__PHI_TEMPORARY;
  uint32_t _1099;
  struct l_struct_struct_OC___le_hci_connection* _1100;
  uint8_t _1101;
  uint8_t _1102;
  uint32_t _1103;
  uint8_t _1104;
  uint8_t* _1105;
  uint16_t _1106;
  uint16_t _1107;
  uint16_t _1108;
  uint16_t _1109;
  uint16_t _1110;
  uint16_t _1111;
  uint16_t _1112;
  uint16_t _1113;
  uint16_t _1114;
  uint16_t _1115;
  uint32_t _1116;
  uint8_t _1117;
  uint32_t _1118;
  uint16_t _1119;
  uint16_t _1120;
  uint16_t _1121;
  uint16_t _1122;
  uint32_t _1123;
  uint32_t _1123__PHI_TEMPORARY;
  uint16_t _1124;
  uint16_t _1124__PHI_TEMPORARY;
  uint16_t _1125;
  uint16_t _1125__PHI_TEMPORARY;
  uint16_t _1126;
  uint16_t _1126__PHI_TEMPORARY;
  uint16_t _1127;
  uint16_t _1127__PHI_TEMPORARY;
  uint8_t _1128;
  uint32_t _1129;
  uint32_t* _1130;
  l_fptr_2* _1131;
  uint64_t _1132;
  uint16_t _1133;
  uint8_t* _1134;
  l_fptr_2* _1135;
  uint32_t _1136;
  l_fptr_2* _1137;
  uint32_t _1138;
  l_fptr_2* _1139;
  struct l_struct_struct_OC_l2cap_channel_t* _1140;

  _1072 = *((&_1067[((int32_t)6)]));
  _1073 = *((&_1067[((int32_t)7)]));
  _1074 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_1073)), 8)), (((uint16_t)(uint8_t)_1072)));
  _1075 = *_1067;
  _1076 = *((&_1067[((int32_t)1)]));
  _1077 = llvm_or_u16((llvm_and_u16((llvm_shl_u16((((uint16_t)(uint8_t)_1076)), 8)), 3840)), (((uint16_t)(uint8_t)_1075)));
  switch (_1074) {
  default:
    goto _1141;
  case ((uint16_t)1):
    goto _1142;
  case ((uint16_t)5):
    goto _1143;
  case ((uint16_t)4):
    goto _1144;
  case ((uint16_t)6):
    goto _1145;
  }

_1142:
  _1078 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1078, 32)) == ((uint8_t)0))&1))) {
    goto _1146;
  } else {
    goto _1147;
  }

_1147:
  _1079 =  /*tail*/ puts(((&_OC_str_OC_29.array[((int32_t)0)])));
  goto _1146;

_1146:
  _1080 = ((uint32_t)(uint16_t)_1068);
  if ((((((uint16_t)_1068) > ((uint16_t)((uint16_t)8)))&1))) {
    goto _1148;
  } else {
    goto _1149;
  }

_1148:
  _1081__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _1150;

  do {     /* Syntactic loop '' to make GCC happy */
_1150:
  _1081 = _1081__PHI_TEMPORARY;
   /*tail*/ l2cap_signaling_handler_dispatch(_1077, ((&_1067[((int32_t)_1081)])));
  _1082 = *((&_1067[((int32_t)(llvm_add_u32(_1081, 2)))]));
  _1083 = *((&_1067[((int32_t)(llvm_add_u32(_1081, 3)))]));
  _1084 = (llvm_add_u32((llvm_add_u32(_1081, 4)), (((((uint32_t)(uint8_t)_1083)) << 8) | (((uint32_t)(uint8_t)_1082))))) & 65535;
  if ((((((uint32_t)_1084) < ((uint32_t)_1080))&1))) {
    _1081__PHI_TEMPORARY = _1084;   /* for PHI node */
    goto _1150;
  } else {
    goto _1151;
  }

  } while (1); /* end of syntactic loop '' */
_1143:
  _1085 = config_stack_modules;
  if (((((_1085 & 4) == 0u)&1))) {
    goto _1149;
  } else {
    goto _1152;
  }

_1152:
  _1086 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1086, 32)) == ((uint8_t)0))&1))) {
    goto _1153;
  } else {
    goto _1154;
  }

_1154:
  _1087 =  /*tail*/ puts(((&_OC_str_OC_30.array[((int32_t)0)])));
  goto _1153;

_1153:
  _1088 = *((&_1067[((int32_t)9)]));
  _1089 = *((&_1067[((int32_t)10)]));
  _1090 = *((&_1067[((int32_t)11)]));
  if ((((((uint32_t)(llvm_add_u32((((((uint32_t)(uint8_t)_1090)) << 8) | (((uint32_t)(uint8_t)_1089))), 12))) > ((uint32_t)(((uint32_t)(uint16_t)_1068))))&1))) {
    goto _1149;
  } else {
    goto _1155;
  }

_1155:
  _1091 = (&_1067[((int32_t)8)]);
  _1092 = (&_1070.array[((int32_t)0)]);
  _1093 = *_1091;
  _1094 =  /*tail*/ little_endian_read_16(_1091, 2);
  _1095 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1095, 1)) == ((uint8_t)0))&1))) {
    _1098__PHI_TEMPORARY = _1095;   /* for PHI node */
    goto _1156;
  } else {
    goto _1157;
  }

_1157:
  _1096 =  /*tail*/ printf(((&_OC_str_OC_46.array[((int32_t)0)])), (((uint32_t)(uint8_t)_1093)), (((uint32_t)(uint8_t)_1088)), (((uint32_t)(uint16_t)_1094)));
  _1097 = l2cap_debug_enable;
  _1098__PHI_TEMPORARY = _1097;   /* for PHI node */
  goto _1156;

_1156:
  _1098 = _1098__PHI_TEMPORARY;
  if (((((llvm_and_u8(_1098, 2)) == ((uint8_t)0))&1))) {
    goto _1158;
  } else {
    goto _1159;
  }

_1159:
  _1099 =  /*tail*/ puts(((&str_OC_68.array[((int32_t)0)])));
   /*tail*/ put_buf(_1091, (llvm_add_u32((((uint32_t)(uint16_t)_1094)), 4)));
  goto _1158;

_1158:
  switch (_1093) {
  default:
    goto _1160;
  case ((uint8_t)18):
    goto _1161;
  case ((uint8_t)19):
    goto _1162;
  case ((uint8_t)7):
    goto _1163;
  }

_1161:
  if ((((((uint16_t)_1094) < ((uint16_t)((uint16_t)8)))&1))) {
    goto _1160;
  } else {
    goto _1164;
  }

_1164:
  _1100 =  /*tail*/ le_hci_connection_for_handle(_1077);
  if ((((_1100 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1165;
  } else {
    goto _1166;
  }

_1166:
  _1101 = *((&_1100->field4));
  if ((((_1101 == ((uint8_t)0))&1))) {
    goto _1167;
  } else {
    goto _1168;
  }

_1168:
  _1102 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1102, 4)) == ((uint8_t)0))&1))) {
    goto _1169;
  } else {
    goto _1170;
  }

_1170:
  _1103 =  /*tail*/ puts(((&str_OC_67.array[((int32_t)0)])));
  goto _1169;

_1169:
  _1104 = *((&_1067[((int32_t)17)]));
   /*tail*/ l2cap_register_signaling_response(_1077, 31, _1104, 0, 0);
  goto _1163;

_1167:
  _1105 = ((uint8_t*)(&_1071));
  gap_le_get_connection_parameter_range((&_1071));
  _1106 = little_endian_read_16(_1091, 4);
  _1107 = little_endian_read_16(_1091, 6);
  _1108 = little_endian_read_16(_1091, 8);
  _1109 = little_endian_read_16(_1091, 10);
  _1110 = *((&_1071.field0));
  _1111 = *((&_1071.field1));
  _1112 = *((&_1071.field2));
  _1113 = *((&_1071.field3));
  _1114 = *((&_1071.field4));
  _1115 = *((&_1071.field5));
  if (((((((((((((((((((((uint16_t)_1106) >= ((uint16_t)_1110))&1)) & (((((uint16_t)_1107) <= ((uint16_t)_1111))&1)))&1)) & (((((uint16_t)_1108) >= ((uint16_t)_1112))&1)))&1)) & (((((uint16_t)_1108) <= ((uint16_t)_1113))&1)))&1)) & (((((uint16_t)_1109) >= ((uint16_t)_1114))&1)))&1)) & (((((uint16_t)_1109) <= ((uint16_t)_1115))&1)))&1))) {
    goto _1171;
  } else {
    _1123__PHI_TEMPORARY = 0;   /* for PHI node */
    _1124__PHI_TEMPORARY = _1106;   /* for PHI node */
    _1125__PHI_TEMPORARY = _1107;   /* for PHI node */
    _1126__PHI_TEMPORARY = _1108;   /* for PHI node */
    _1127__PHI_TEMPORARY = _1109;   /* for PHI node */
    goto _1172;
  }

_1171:
  _1116 = l2cap_connection_update_request_just(((&_1067[((int32_t)12)])), _1077);
  if ((((_1116 == 0u)&1))) {
    goto _1173;
  } else {
    goto _1174;
  }

_1174:
  _1117 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1117, 1)) == ((uint8_t)0))&1))) {
    _1123__PHI_TEMPORARY = 0;   /* for PHI node */
    _1124__PHI_TEMPORARY = _1106;   /* for PHI node */
    _1125__PHI_TEMPORARY = _1107;   /* for PHI node */
    _1126__PHI_TEMPORARY = _1108;   /* for PHI node */
    _1127__PHI_TEMPORARY = _1109;   /* for PHI node */
    goto _1172;
  } else {
    goto _1175;
  }

_1175:
  _1118 = puts(((&str_OC_66.array[((int32_t)0)])));
  _1123__PHI_TEMPORARY = 0;   /* for PHI node */
  _1124__PHI_TEMPORARY = _1106;   /* for PHI node */
  _1125__PHI_TEMPORARY = _1107;   /* for PHI node */
  _1126__PHI_TEMPORARY = _1108;   /* for PHI node */
  _1127__PHI_TEMPORARY = _1109;   /* for PHI node */
  goto _1172;

_1173:
  _1119 = little_endian_read_16(_1091, 4);
  _1120 = little_endian_read_16(_1091, 6);
  _1121 = little_endian_read_16(_1091, 8);
  _1122 = little_endian_read_16(_1091, 10);
  _1123__PHI_TEMPORARY = 1;   /* for PHI node */
  _1124__PHI_TEMPORARY = _1119;   /* for PHI node */
  _1125__PHI_TEMPORARY = _1120;   /* for PHI node */
  _1126__PHI_TEMPORARY = _1121;   /* for PHI node */
  _1127__PHI_TEMPORARY = _1122;   /* for PHI node */
  goto _1172;

_1172:
  _1123 = _1123__PHI_TEMPORARY;
  _1124 = _1124__PHI_TEMPORARY;
  _1125 = _1125__PHI_TEMPORARY;
  _1126 = _1126__PHI_TEMPORARY;
  _1127 = _1127__PHI_TEMPORARY;
  _1128 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1128, 1)) == ((uint8_t)0))&1))) {
    goto _1176;
  } else {
    goto _1177;
  }

_1177:
  _1129 = printf(((&_OC_str_OC_50.array[((int32_t)0)])), _1123);
  goto _1176;

_1176:
  _1130 = (&_1100->field5);
  if ((((_1123 == 0u)&1))) {
    goto _1178;
  } else {
    goto _1179;
  }

_1179:
  *_1130 = 2;
  *((&_1100->field7)) = _1124;
  *((&_1100->field8)) = _1125;
  *((&_1100->field9)) = _1126;
  *((&_1100->field10)) = _1127;
  goto _1180;

_1178:
  *_1130 = 4;
  goto _1180;

_1180:
  *((&_1100->field6)) = _1088;
  goto _1165;

_1165:
  _1131 = le_l2cap_event_packet_handler;
  if ((((_1131 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _1163;
  } else {
    goto _1181;
  }

_1181:
  *_1092 = 118u;
  *((&_1070.array[((int32_t)1)])) = 8;
  _1132 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_1067[((int32_t)12)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_1070.array[((int32_t)2)]))))) = _1132;
  _1131(4, 0, _1092, 10);
  goto _1163;

_1162:
  if ((((((uint16_t)_1094) < ((uint16_t)((uint16_t)2)))&1))) {
    goto _1160;
  } else {
    goto _1182;
  }

_1182:
  _1133 =  /*tail*/ little_endian_read_16(_1091, 4);
  _1134 = (&_1069.array[((int32_t)0)]);
  *_1134 = 119u;
  *((&_1069.array[((int32_t)1)])) = 4;
  little_endian_store_16(_1134, 2, _1077);
  little_endian_store_16(_1134, 4, _1133);
  _1135 = le_l2cap_event_packet_handler;
  if ((((_1135 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _1183;
  } else {
    goto _1184;
  }

_1184:
  _1135(4, 0, _1134, 6);
  goto _1183;

_1183:
  goto _1163;

_1163:
  goto _1149;

_1160:
   /*tail*/ l2cap_register_signaling_response(_1077, 31, _1088, 0, 0);
  goto _1149;

_1144:
  _1136 = config_stack_modules;
  _1137 = *((&l2cap_fixed_channels.array[((int32_t)0)].field0));
  if ((((((((_1136 & 4) != 0u)&1)) & (((_1137 != ((l_fptr_2*)/*NULL*/0))&1)))&1))) {
    goto _1185;
  } else {
    goto _1149;
  }

_1185:
   /*tail*/ _1137(8, _1077, ((&_1067[((int32_t)8)])), (llvm_add_u16(_1068, -8)));
  goto _1149;

_1145:
  _1138 = config_stack_modules;
  _1139 = *((&l2cap_fixed_channels.array[((int32_t)1)].field0));
  if ((((((((_1138 & 4) != 0u)&1)) & (((_1139 != ((l_fptr_2*)/*NULL*/0))&1)))&1))) {
    goto _1186;
  } else {
    goto _1149;
  }

_1186:
   /*tail*/ _1139(9, _1077, ((&_1067[((int32_t)8)])), (llvm_add_u16(_1068, -8)));
  goto _1149;

_1141:
  _1140 =  /*tail*/ l2cap_get_channel_for_local_cid(_1074);
  if ((((_1140 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1))) {
    goto _1149;
  } else {
    goto _1187;
  }

_1187:
   /*tail*/ l2cap_dispatch(_1140, 6, ((&_1067[((int32_t)8)])), (llvm_add_u16(_1068, -8)));
  goto _1149;

_1151:
  goto _1149;

_1149:
  l2cap_run();
}


void l2cap_packet_handler(uint8_t _1188, uint8_t* _1189, uint16_t _1190) {
  switch (_1188) {
  default:
    goto _1191;
  case ((uint8_t)4):
    goto _1192;
  case ((uint8_t)2):
    goto _1193;
  }

_1192:
   /*tail*/ l2cap_event_handler(_1189, _1190);
  goto _1191;

_1193:
   /*tail*/ l2cap_acl_handler(_1189, _1190);
  goto _1191;

_1191:
  return;
}


uint32_t gap_request_connection_parameter_update(uint16_t _1194, uint16_t _1195, uint16_t _1196, uint16_t _1197, uint16_t _1198) {
  struct l_struct_struct_OC___le_hci_connection* _1199;
  uint32_t _1200;
  uint8_t _1201;
  uint8_t _1202;
  uint32_t _1203;
  uint32_t _1203__PHI_TEMPORARY;

  _1199 =  /*tail*/ le_hci_connection_for_handle(_1194);
  if ((((_1199 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1203__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _1204;
  } else {
    goto _1205;
  }

_1205:
  _1200 =  /*tail*/ puts(((&str_OC_69.array[((int32_t)0)])));
  *((&_1199->field7)) = _1195;
  *((&_1199->field8)) = _1196;
  *((&_1199->field9)) = _1197;
  *((&_1199->field10)) = _1198;
  *((&_1199->field5)) = 1;
  _1201 = gap_request_connection_parameter_update_OC_le_con_param_update_identifier;
  *((&_1199->field6)) = _1201;
   /*tail*/ l2cap_run();
  _1202 = gap_request_connection_parameter_update_OC_le_con_param_update_identifier;
  gap_request_connection_parameter_update_OC_le_con_param_update_identifier = (llvm_add_u8(_1202, 1));
  _1203__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1204;

_1204:
  _1203 = _1203__PHI_TEMPORARY;
  return _1203;
}


uint8_t* l2cap_get_outgoing_buffer(void) {
  uint8_t* _1206;

  _1206 =  /*tail*/ hci_get_outgoing_acl_packet_buffer_test();
  return ((&_1206[((int32_t)8)]));
}


uint32_t l2cap_reserve_packet_buffer(void) {
  uint32_t _1207;

  _1207 =  /*tail*/ hci_reserve_packet_buffer();
  return _1207;
}


void l2cap_release_packet_buffer(void) {
   /*tail*/ hci_release_packet_buffer();
}


uint32_t l2cap_send_prepared_connectionless(uint16_t _1208, uint16_t _1209, uint16_t _1210) {
  uint32_t _1211;
  uint8_t _1212;
  uint32_t _1213;
  uint32_t _1214;
  uint8_t _1215;
  uint32_t _1216;
  uint32_t _1217;
  uint32_t _1218;
  uint8_t* _1219;
  uint32_t _1220;
  uint32_t _1221;
  uint32_t _1221__PHI_TEMPORARY;

  _1211 =  /*tail*/ hci_is_packet_buffer_reserved();
  if ((((_1211 == 0u)&1))) {
    goto _1222;
  } else {
    goto _1223;
  }

_1222:
  _1212 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1212, 4)) == ((uint8_t)0))&1))) {
    _1221__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _1224;
  } else {
    goto _1225;
  }

_1225:
  _1213 =  /*tail*/ puts(((&str_OC_70.array[((int32_t)0)])));
  _1221__PHI_TEMPORARY = 87;   /* for PHI node */
  goto _1224;

_1223:
  _1214 =  /*tail*/ hci_can_send_prepared_acl_packet_now(_1208);
  _1215 = l2cap_debug_enable;
  _1216 = ((uint32_t)(uint8_t)_1215);
  if ((((_1214 == 0u)&1))) {
    goto _1226;
  } else {
    goto _1227;
  }

_1226:
  if (((((_1216 & 4) == 0u)&1))) {
    _1221__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _1224;
  } else {
    goto _1228;
  }

_1228:
  _1217 =  /*tail*/ printf(((&_OC_str_OC_33.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1208)), (((uint32_t)(uint16_t)_1209)));
  _1221__PHI_TEMPORARY = 87;   /* for PHI node */
  goto _1224;

_1227:
  if (((((_1216 & 1) == 0u)&1))) {
    goto _1229;
  } else {
    goto _1230;
  }

_1230:
  _1218 =  /*tail*/ printf(((&_OC_str_OC_34.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1208)), (((uint32_t)(uint16_t)_1209)));
  goto _1229;

_1229:
  _1219 =  /*tail*/ hci_get_outgoing_acl_packet_buffer_test();
   /*tail*/ little_endian_store_16(_1219, 0, _1208);
   /*tail*/ little_endian_store_16(_1219, 2, (llvm_add_u16(_1210, 4)));
   /*tail*/ little_endian_store_16(_1219, 4, _1210);
   /*tail*/ little_endian_store_16(_1219, 6, _1209);
  _1220 =  /*tail*/ hci_le_send_acl_packet_buffer(_1219, (llvm_add_u32((((uint32_t)(uint16_t)_1210)), 8)));
  _1221__PHI_TEMPORARY = _1220;   /* for PHI node */
  goto _1224;

_1224:
  _1221 = _1221__PHI_TEMPORARY;
  return _1221;
}


uint32_t l2cap_send_connectionless(uint16_t _1231, uint16_t _1232, uint8_t* _1233, uint16_t _1234) {
  uint32_t _1235;
  uint8_t _1236;
  uint32_t _1237;
  uint32_t _1238;
  uint8_t* _1239;
  uint8_t* _1240;
  uint32_t _1241;
  uint32_t _1242;
  uint32_t _1242__PHI_TEMPORARY;

  _1235 =  /*tail*/ hci_can_send_acl_packet_now(_1231);
  if ((((_1235 == 0u)&1))) {
    goto _1243;
  } else {
    goto _1244;
  }

_1243:
  _1236 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1236, 4)) == ((uint8_t)0))&1))) {
    _1242__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _1245;
  } else {
    goto _1246;
  }

_1246:
  _1237 =  /*tail*/ printf(((&_OC_str_OC_35.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1232)));
  _1242__PHI_TEMPORARY = 87;   /* for PHI node */
  goto _1245;

_1244:
  _1238 =  /*tail*/ hci_reserve_packet_buffer();
  _1239 =  /*tail*/ hci_get_outgoing_acl_packet_buffer_test();
  _1240 = memcpy(((&_1239[((int32_t)8)])), _1233, (((uint32_t)(uint16_t)_1234)));
  _1241 =  /*tail*/ l2cap_send_prepared_connectionless(_1231, _1232, _1234);
  _1242__PHI_TEMPORARY = _1241;   /* for PHI node */
  goto _1245;

_1245:
  _1242 = _1242__PHI_TEMPORARY;
  return _1242;
}


void l2cap_register_fixed_channel(l_fptr_2* _1247, uint16_t _1248) {
  uint32_t _1249;
  uint32_t _1249__PHI_TEMPORARY;

  switch (_1248) {
  default:
    goto _1250;
  case ((uint16_t)4):
    _1249__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1251;
  case ((uint16_t)6):
    goto _1252;
  case ((uint16_t)2):
    goto _1253;
  }

_1252:
  _1249__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1251;

_1253:
  _1249__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _1251;

_1251:
  _1249 = _1249__PHI_TEMPORARY;
  *((&l2cap_fixed_channels.array[((int32_t)_1249)].field0)) = _1247;
  goto _1250;

_1250:
  return;
}


void l2cap_request_can_send_fix_channel_now_event(uint16_t _1254, uint16_t _1255) {
  uint32_t _1256;
  uint32_t _1256__PHI_TEMPORARY;

  switch (_1255) {
  default:
    goto _1257;
  case ((uint16_t)4):
    _1256__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1258;
  case ((uint16_t)6):
    goto _1259;
  case ((uint16_t)2):
    goto _1260;
  }

_1259:
  _1256__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1258;

_1260:
  _1256__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _1258;

_1258:
  _1256 = _1256__PHI_TEMPORARY;
  *((&l2cap_fixed_channels.array[((int32_t)_1256)].field1)) = 1;
   /*tail*/ l2cap_notify_channel_can_send();
  goto _1257;

_1257:
  return;
}


static void l2cap_notify_channel_can_send(void) {
  struct l_array_4_uint8_t _1261;    /* Address-exposed local */
  uint8_t* _1262;
  uint8_t* _1263;
  uint32_t _1264;
  uint32_t _1264__PHI_TEMPORARY;
  l_fptr_2** _1265;
  l_fptr_2* _1266;
  uint8_t* _1267;
  uint8_t _1268;
  uint32_t _1269;
  uint32_t _1270;
  uint32_t _1271;
  uint32_t _1271__PHI_TEMPORARY;
  l_fptr_2* _1272;
  uint16_t _1273;
  uint16_t _1273__PHI_TEMPORARY;
  uint32_t _1274;

  _1262 = (&_1261.array[((int32_t)0)]);
  _1263 = (&_1261.array[((int32_t)1)]);
  _1264__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1275;

  do {     /* Syntactic loop '' to make GCC happy */
_1275:
  _1264 = _1264__PHI_TEMPORARY;
  _1265 = (&l2cap_fixed_channels.array[((int32_t)_1264)].field0);
  _1266 = *_1265;
  if ((((_1266 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _1276;
  } else {
    goto _1277;
  }

_1277:
  _1267 = (&l2cap_fixed_channels.array[((int32_t)_1264)].field1);
  _1268 = *_1267;
  if ((((_1268 == ((uint8_t)0))&1))) {
    goto _1276;
  } else {
    goto _1278;
  }

_1278:
  if ((((_1264 == 2u)&1))) {
    goto _1279;
  } else {
    goto _1280;
  }

_1280:
  _1269 = hci_can_send_acl_le_packet_now();
  _1271__PHI_TEMPORARY = _1269;   /* for PHI node */
  goto _1281;

_1279:
  _1270 = hci_can_send_acl_classic_packet_now();
  _1271__PHI_TEMPORARY = _1270;   /* for PHI node */
  goto _1281;

_1281:
  _1271 = _1271__PHI_TEMPORARY;
  if ((((_1271 == 0u)&1))) {
    goto _1276;
  } else {
    goto _1282;
  }

_1282:
  *_1267 = 0;
  _1272 = *_1265;
  switch (_1264) {
  default:
    goto _1283;
  case 0u:
    _1273__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _1284;
  case 1u:
    goto _1285;
  case 2u:
    goto _1286;
  }

_1286:
  _1273__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _1284;

_1285:
  _1273__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _1284;

_1283:
  _1273__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1284;

_1284:
  _1273 = _1273__PHI_TEMPORARY;
  *_1262 = 120u;
  *_1263 = 2;
  bt_store_16(_1262, 2, _1273);
  _1272(4, _1273, _1262, 4);
  goto _1276;

_1276:
  _1274 = llvm_add_u32(_1264, 1);
  if ((((_1274 == 3u)&1))) {
    goto _1287;
  } else {
    _1264__PHI_TEMPORARY = _1274;   /* for PHI node */
    goto _1275;
  }

  } while (1); /* end of syntactic loop '' */
_1287:
  return;
}


uint32_t l2cap_can_send_fixed_channel_packet_now(uint16_t _1288, uint16_t _1289) {
  uint32_t _1290;

  _1290 =  /*tail*/ hci_can_send_acl_packet_now(_1288);
  return _1290;
}


uint32_t gap_le_request_connection_parameter_update(uint16_t _1291, uint16_t _1292, uint16_t _1293, uint16_t _1294, uint16_t _1295) {
  struct l_struct_struct_OC___le_hci_connection* _1296;
  uint32_t _1297;
  uint32_t _1297__PHI_TEMPORARY;

  _1296 =  /*tail*/ le_hci_connection_for_handle(_1291);
  if ((((_1296 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1297__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _1298;
  } else {
    goto _1299;
  }

_1299:
  *((&_1296->field7)) = _1292;
  *((&_1296->field8)) = _1293;
  *((&_1296->field9)) = _1294;
  *((&_1296->field10)) = _1295;
  *((&_1296->field5)) = 1;
   /*tail*/ l2cap_run();
  _1297__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1298;

_1298:
  _1297 = _1297__PHI_TEMPORARY;
  return _1297;
}


uint8_t l2cap_can_close_handle_now(uint8_t* _1300) {
  struct l_struct_struct_OC_l2cap_stack_t* _1301;
  struct l_struct_struct_OC_btstack_linked_item* _1302;
  struct l_struct_struct_OC_btstack_linked_item* _1303;
  struct l_struct_struct_OC_btstack_linked_item* _1303__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _1304;
  uint32_t _1305;
  uint8_t _1306;
  uint8_t _1306__PHI_TEMPORARY;

  _1301 = l2cap_stack;
  _1302 = ((struct l_struct_struct_OC_btstack_linked_item*)((&_1301->field2)));
  _1303__PHI_TEMPORARY = _1302;   /* for PHI node */
  goto _1307;

  do {     /* Syntactic loop '' to make GCC happy */
_1307:
  _1303 = _1303__PHI_TEMPORARY;
  _1304 = *((&_1303->field0));
  if ((((_1304 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1306__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1308;
  } else {
    goto _1309;
  }

_1309:
  _1305 =  /*tail*/ memcmp(((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_1304[((int32_t)4)]))))->field5.array[((int32_t)0)])), _1300, 6);
  if ((((_1305 == 0u)&1))) {
    _1306__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1308;
  } else {
    _1303__PHI_TEMPORARY = _1304;   /* for PHI node */
    goto _1307;
  }

  } while (1); /* end of syntactic loop '' */
_1308:
  _1306 = _1306__PHI_TEMPORARY;
  return _1306;
}


uint8_t is_l2cap_can_release_now(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _1310;
  struct l_struct_struct_OC_btstack_linked_item* _1311;
  uint8_t _1312;
  uint16_t _1313;
  uint32_t _1314;
  uint8_t _1315;
  uint8_t _1315__PHI_TEMPORARY;

  _1310 = l2cap_stack;
  _1311 = *((&_1310->field2));
  if ((((_1311 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1315__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1316;
  } else {
    goto _1317;
  }

_1317:
  _1312 = l2cap_debug_enable;
  if ((((((int8_t)_1312) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1318;
  } else {
    _1315__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1316;
  }

_1318:
  _1313 = *(((uint16_t*)((&_1311[((int32_t)7)]))));
  _1314 =  /*tail*/ printf(((&_OC_str_OC_36.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1313)));
  _1315__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1316;

_1316:
  _1315 = _1315__PHI_TEMPORARY;
  return _1315;
}


struct l_struct_struct_OC_l2cap_service_t* l2cap_get_service(uint16_t _1319) {
  struct l_struct_struct_OC_l2cap_stack_t* _1320;
  struct l_struct_struct_OC_btstack_linked_item* _1321;
  struct l_struct_struct_OC_btstack_linked_item* _1322;
  struct l_struct_struct_OC_btstack_linked_item* _1323;
  struct l_struct_struct_OC_btstack_linked_item* _1323__PHI_TEMPORARY;
  uint16_t _1324;
  struct l_struct_struct_OC_l2cap_service_t* _1325;
  struct l_struct_struct_OC_l2cap_service_t* _1326;
  struct l_struct_struct_OC_l2cap_service_t* _1326__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_service_t* _1327;
  struct l_struct_struct_OC_l2cap_service_t* _1327__PHI_TEMPORARY;

  _1320 = l2cap_stack;
  _1321 = *((&_1320->field1));
  if ((((_1321 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1327__PHI_TEMPORARY = ((struct l_struct_struct_OC_l2cap_service_t*)/*NULL*/0);   /* for PHI node */
    goto _1328;
  } else {
    goto _1329;
  }

_1329:
  _1323__PHI_TEMPORARY = _1321;   /* for PHI node */
  goto _1330;

  do {     /* Syntactic loop '' to make GCC happy */
_1330:
  _1323 = _1323__PHI_TEMPORARY;
  _1324 = *(((uint16_t*)((&_1323[((int32_t)1)]))));
  _1325 = ((struct l_struct_struct_OC_l2cap_service_t*)_1323);
  if ((((_1324 == _1319)&1))) {
    _1326__PHI_TEMPORARY = _1325;   /* for PHI node */
    goto _1331;
  } else {
    goto _1332;
  }

_1332:
  _1322 = *((&_1323->field0));
  if ((((_1322 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1326__PHI_TEMPORARY = ((struct l_struct_struct_OC_l2cap_service_t*)/*NULL*/0);   /* for PHI node */
    goto _1331;
  } else {
    _1323__PHI_TEMPORARY = _1322;   /* for PHI node */
    goto _1330;
  }

  } while (1); /* end of syntactic loop '' */
_1331:
  _1326 = _1326__PHI_TEMPORARY;
  _1327__PHI_TEMPORARY = _1326;   /* for PHI node */
  goto _1328;

_1328:
  _1327 = _1327__PHI_TEMPORARY;
  return _1327;
}


void l2cap_register_service_internal(uint8_t* _1333, l_fptr_2* _1334, uint16_t _1335, uint16_t _1336) {
  struct l_struct_struct_OC_l2cap_stack_t* _1337;
  struct l_struct_struct_OC_btstack_linked_item* _1338;
  struct l_struct_struct_OC_btstack_linked_item* _1339;
  struct l_struct_struct_OC_btstack_linked_item* _1340;
  struct l_struct_struct_OC_btstack_linked_item* _1340__PHI_TEMPORARY;
  uint16_t _1341;
  uint8_t _1342;
  uint32_t _1343;
  uint8_t* _1344;
  uint8_t _1345;
  uint32_t _1346;
  struct l_struct_struct_OC_l2cap_stack_t* _1347;

  _1337 = l2cap_stack;
  _1338 = *((&_1337->field1));
  if ((((_1338 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1348;
  } else {
    goto _1349;
  }

_1349:
  _1340__PHI_TEMPORARY = _1338;   /* for PHI node */
  goto _1350;

  do {     /* Syntactic loop '' to make GCC happy */
_1350:
  _1340 = _1340__PHI_TEMPORARY;
  _1341 = *(((uint16_t*)((&_1340[((int32_t)1)]))));
  if ((((_1341 == _1335)&1))) {
    goto _1351;
  } else {
    goto _1352;
  }

_1352:
  _1339 = *((&_1340->field0));
  if ((((_1339 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1353;
  } else {
    _1340__PHI_TEMPORARY = _1339;   /* for PHI node */
    goto _1350;
  }

  } while (1); /* end of syntactic loop '' */
_1351:
  _1342 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1342, 4)) == ((uint8_t)0))&1))) {
    goto _1354;
  } else {
    goto _1355;
  }

_1355:
  _1343 =  /*tail*/ printf(((&_OC_str_OC_37.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1335)));
  goto _1354;

_1353:
  goto _1348;

_1348:
  _1344 =  /*tail*/ btstack_memory_l2cap_service_get();
  if ((((_1344 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _1356;
  } else {
    goto _1357;
  }

_1356:
  _1345 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1345, 4)) == ((uint8_t)0))&1))) {
    goto _1354;
  } else {
    goto _1358;
  }

_1358:
  _1346 =  /*tail*/ puts(((&str_OC_71.array[((int32_t)0)])));
  goto _1354;

_1357:
  *(((uint16_t*)((&_1344[((int32_t)4)])))) = _1335;
  *(((uint16_t*)((&_1344[((int32_t)6)])))) = _1336;
  *(((uint8_t**)((&_1344[((int32_t)8)])))) = _1333;
  *(((l_fptr_2**)((&_1344[((int32_t)12)])))) = _1334;
  _1347 = l2cap_stack;
   /*tail*/ btstack_linked_list_add(((&_1347->field1)), (((struct l_struct_struct_OC_btstack_linked_item*)_1344)));
  goto _1354;

_1354:
  return;
}


void l2cap_unregister_service_internal(uint8_t* _1359, uint16_t _1360) {
  struct l_struct_struct_OC_l2cap_stack_t* _1361;
  struct l_struct_struct_OC_btstack_linked_item** _1362;
  struct l_struct_struct_OC_btstack_linked_item* _1363;
  struct l_struct_struct_OC_btstack_linked_item* _1364;
  struct l_struct_struct_OC_btstack_linked_item* _1365;
  struct l_struct_struct_OC_btstack_linked_item* _1365__PHI_TEMPORARY;
  uint16_t _1366;
  uint32_t _1367;
  struct l_struct_struct_OC_l2cap_stack_t* _1368;
  uint32_t _1369;

  _1361 = l2cap_stack;
  _1362 = (&_1361->field1);
  _1363 = *_1362;
  if ((((_1363 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1370;
  } else {
    goto _1371;
  }

_1371:
  _1365__PHI_TEMPORARY = _1363;   /* for PHI node */
  goto _1372;

  do {     /* Syntactic loop '' to make GCC happy */
_1372:
  _1365 = _1365__PHI_TEMPORARY;
  _1366 = *(((uint16_t*)((&_1365[((int32_t)1)]))));
  if ((((_1366 == _1360)&1))) {
    goto _1373;
  } else {
    goto _1374;
  }

_1374:
  _1364 = *((&_1365->field0));
  if ((((_1364 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1375;
  } else {
    _1365__PHI_TEMPORARY = _1364;   /* for PHI node */
    goto _1372;
  }

  } while (1); /* end of syntactic loop '' */
_1373:
  _1367 =  /*tail*/ btstack_linked_list_remove(_1362, _1365);
   /*tail*/ btstack_memory_l2cap_service_free((((uint8_t*)_1365)));
  _1368 = l2cap_stack;
  _1369 =  /*tail*/ btstack_linked_list_empty(((&_1368->field1)));
  if ((((_1369 == 0u)&1))) {
    goto _1370;
  } else {
    goto _1376;
  }

_1376:
   /*tail*/ hci_connectable_control(0, 0);
  goto _1370;

_1375:
  goto _1370;

_1370:
  return;
}


void l2cap_close_connection(uint8_t* _1377) {
  struct l_struct_struct_OC_l2cap_stack_t* _1378;
  struct l_struct_struct_OC_btstack_linked_item* _1379;
  struct l_struct_struct_OC_btstack_linked_item* _1380;
  struct l_struct_struct_OC_btstack_linked_item* _1380__PHI_TEMPORARY;
  uint8_t* _1381;
  struct l_struct_struct_OC_btstack_linked_item* _1382;
  struct l_struct_struct_OC_btstack_linked_item** _1383;
  struct l_struct_struct_OC_btstack_linked_item* _1384;
  struct l_struct_struct_OC_btstack_linked_item* _1385;
  struct l_struct_struct_OC_btstack_linked_item** _1386;
  struct l_struct_struct_OC_btstack_linked_item* _1387;
  struct l_struct_struct_OC_btstack_linked_item* _1388;
  struct l_struct_struct_OC_btstack_linked_item* _1388__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _1389;
  struct l_struct_struct_OC_btstack_linked_item** _1389__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _1390;
  struct l_struct_struct_OC_btstack_linked_item* _1390__PHI_TEMPORARY;
  uint32_t* _1391;
  struct l_struct_struct_OC_btstack_linked_item* _1392;
  struct l_struct_struct_OC_btstack_linked_item* _1392__PHI_TEMPORARY;
  uint8_t* _1393;
  uint32_t _1394;
  struct l_struct_struct_OC_btstack_linked_item* _1395;

  _1378 = l2cap_stack;
  _1379 = *((&_1378->field2));
  if ((((_1379 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1396;
  } else {
    goto _1397;
  }

_1397:
  _1380__PHI_TEMPORARY = _1379;   /* for PHI node */
  goto _1398;

  do {     /* Syntactic loop '' to make GCC happy */
_1398:
  _1380 = _1380__PHI_TEMPORARY;
  _1381 = *(((uint8_t**)((&_1380[((int32_t)2)]))));
  if ((((_1381 == _1377)&1))) {
    goto _1399;
  } else {
    goto _1400;
  }

_1399:
  *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_1380[((int32_t)4)]))))->field1)) = 13;
  goto _1400;

_1400:
  _1382 = *((&_1380->field0));
  if ((((_1382 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1401;
  } else {
    _1380__PHI_TEMPORARY = _1382;   /* for PHI node */
    goto _1398;
  }

  } while (1); /* end of syntactic loop '' */
_1401:
  goto _1396;

_1396:
  _1383 = (&_1378->field1);
  _1384 = *_1383;
  if ((((_1384 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1402;
  } else {
    goto _1403;
  }

_1403:
  _1385 = ((struct l_struct_struct_OC_btstack_linked_item*)_1383);
  _1388__PHI_TEMPORARY = _1384;   /* for PHI node */
  _1389__PHI_TEMPORARY = _1383;   /* for PHI node */
  _1390__PHI_TEMPORARY = _1385;   /* for PHI node */
  goto _1404;

  do {     /* Syntactic loop '' to make GCC happy */
_1404:
  _1388 = _1388__PHI_TEMPORARY;
  _1389 = _1389__PHI_TEMPORARY;
  _1390 = _1390__PHI_TEMPORARY;
  _1391 = ((uint32_t*)_1390);
  _1392__PHI_TEMPORARY = _1388;   /* for PHI node */
  goto _1405;

  do {     /* Syntactic loop '' to make GCC happy */
_1405:
  _1392 = _1392__PHI_TEMPORARY;
  _1393 = *(((uint8_t**)((&_1392[((int32_t)2)]))));
  if ((((_1393 == _1377)&1))) {
    goto _1406;
  } else {
    goto _1407;
  }

_1406:
  _1394 = *(((uint32_t*)_1392));
  *_1391 = _1394;
   /*tail*/ btstack_memory_l2cap_service_free((((uint8_t*)_1392)));
  _1395 = *_1389;
  if ((((_1395 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1408;
  } else {
    _1392__PHI_TEMPORARY = _1395;   /* for PHI node */
    goto _1405;
  }

  } while (1); /* end of syntactic loop '' */
_1407:
  _1386 = (&_1392->field0);
  _1387 = *_1386;
  if ((((_1387 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1409;
  } else {
    _1388__PHI_TEMPORARY = _1387;   /* for PHI node */
    _1389__PHI_TEMPORARY = _1386;   /* for PHI node */
    _1390__PHI_TEMPORARY = _1392;   /* for PHI node */
    goto _1404;
  }

  } while (1); /* end of syntactic loop '' */
_1408:
  goto _1402;

_1409:
  goto _1402;

_1402:
   /*tail*/ l2cap_run();
}


uint8_t l2cap_search_channel_exist_via_psm(uint16_t _1410) {
  struct l_struct_struct_OC_l2cap_stack_t* _1411;
  struct l_struct_struct_OC_btstack_linked_item* _1412;
  struct l_struct_struct_OC_btstack_linked_item* _1413;
  struct l_struct_struct_OC_btstack_linked_item* _1413__PHI_TEMPORARY;
  uint16_t _1414;
  uint8_t _1415;
  struct l_struct_struct_OC_btstack_linked_item* _1416;
  uint8_t _1417;
  uint8_t _1417__PHI_TEMPORARY;

  _1411 = l2cap_stack;
  _1412 = *((&_1411->field2));
  if ((((_1412 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1417__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1418;
  } else {
    goto _1419;
  }

_1419:
  _1413__PHI_TEMPORARY = _1412;   /* for PHI node */
  goto _1420;

  do {     /* Syntactic loop '' to make GCC happy */
_1420:
  _1413 = _1413__PHI_TEMPORARY;
  _1414 = *(((uint16_t*)((&_1413[((int32_t)7)]))));
  if ((((_1414 == _1410)&1))) {
    goto _1421;
  } else {
    goto _1422;
  }

_1422:
  _1416 = *((&_1413->field0));
  if ((((_1416 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1423;
  } else {
    _1413__PHI_TEMPORARY = _1416;   /* for PHI node */
    goto _1420;
  }

  } while (1); /* end of syntactic loop '' */
_1421:
  _1415 = *((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_1413[((int32_t)4)]))))->field1));
  switch (_1415) {
  default:
    goto _1424;
  case ((uint8_t)1):
    _1417__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1418;
  case ((uint8_t)9):
    _1417__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1418;
  case ((uint8_t)13):
    _1417__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1418;
  case ((uint8_t)14):
    _1417__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1418;
  }

_1424:
  _1417__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1418;

_1423:
  _1417__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1418;

_1418:
  _1417 = _1417__PHI_TEMPORARY;
  return _1417;
}


struct l_array_6_uint8_t* l2cap_get_btaddr_via_local_cid(uint16_t _1425) {
  struct l_struct_struct_OC_l2cap_channel_t* _1426;

  _1426 =  /*tail*/ l2cap_get_channel_for_local_cid(_1425);
  return (llvm_select_pu8a6((((_1426 == ((struct l_struct_struct_OC_l2cap_channel_t*)/*NULL*/0))&1)), ((struct l_array_6_uint8_t*)/*NULL*/0), ((&_1426->field5.field5))));
}


uint16_t l2cap_get_hci_handle_via_psm(uint16_t _1427) {
  struct l_struct_struct_OC_l2cap_stack_t* _1428;
  struct l_struct_struct_OC_btstack_linked_item* _1429;
  struct l_struct_struct_OC_btstack_linked_item* _1430;
  struct l_struct_struct_OC_btstack_linked_item* _1430__PHI_TEMPORARY;
  uint16_t _1431;
  uint16_t _1432;
  struct l_struct_struct_OC_btstack_linked_item* _1433;
  uint16_t _1434;
  uint16_t _1434__PHI_TEMPORARY;

  _1428 = l2cap_stack;
  _1429 = *((&_1428->field2));
  if ((((_1429 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1434__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1435;
  } else {
    goto _1436;
  }

_1436:
  _1430__PHI_TEMPORARY = _1429;   /* for PHI node */
  goto _1437;

  do {     /* Syntactic loop '' to make GCC happy */
_1437:
  _1430 = _1430__PHI_TEMPORARY;
  _1431 = *(((uint16_t*)((&_1430[((int32_t)7)]))));
  if ((((_1431 == _1427)&1))) {
    goto _1438;
  } else {
    goto _1439;
  }

_1439:
  _1433 = *((&_1430->field0));
  if ((((_1433 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1440;
  } else {
    _1430__PHI_TEMPORARY = _1433;   /* for PHI node */
    goto _1437;
  }

  } while (1); /* end of syntactic loop '' */
_1438:
  _1432 = *(((uint16_t*)((&_1430[((int32_t)1)]))));
  _1434__PHI_TEMPORARY = _1432;   /* for PHI node */
  goto _1435;

_1440:
  _1434__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1435;

_1435:
  _1434 = _1434__PHI_TEMPORARY;
  return _1434;
}


uint16_t l2cap_get_hci_handle_via_addr(uint8_t* _1441) {
  struct l_struct_struct_OC_l2cap_stack_t* _1442;
  struct l_struct_struct_OC_btstack_linked_item* _1443;
  struct l_struct_struct_OC_btstack_linked_item* _1444;
  struct l_struct_struct_OC_btstack_linked_item* _1444__PHI_TEMPORARY;
  uint32_t _1445;
  uint16_t _1446;
  struct l_struct_struct_OC_btstack_linked_item* _1447;
  uint16_t _1448;
  uint16_t _1448__PHI_TEMPORARY;

  _1442 = l2cap_stack;
  _1443 = *((&_1442->field2));
  if ((((_1443 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1448__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1449;
  } else {
    goto _1450;
  }

_1450:
  _1444__PHI_TEMPORARY = _1443;   /* for PHI node */
  goto _1451;

  do {     /* Syntactic loop '' to make GCC happy */
_1451:
  _1444 = _1444__PHI_TEMPORARY;
  _1445 =  /*tail*/ memcmp(((&(((struct l_struct_struct_OC_channel_core_data_t*)((&_1444[((int32_t)4)]))))->field5.array[((int32_t)0)])), _1441, 6);
  if ((((_1445 == 0u)&1))) {
    goto _1452;
  } else {
    goto _1453;
  }

_1453:
  _1447 = *((&_1444->field0));
  if ((((_1447 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1454;
  } else {
    _1444__PHI_TEMPORARY = _1447;   /* for PHI node */
    goto _1451;
  }

  } while (1); /* end of syntactic loop '' */
_1452:
  _1446 = *(((uint16_t*)((&_1444[((int32_t)1)]))));
  _1448__PHI_TEMPORARY = _1446;   /* for PHI node */
  goto _1449;

_1454:
  _1448__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1449;

_1449:
  _1448 = _1448__PHI_TEMPORARY;
  return _1448;
}


void bqb_test_l2cap_send_data(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _1455;
  struct l_struct_struct_OC_btstack_linked_item* _1456;
  struct l_struct_struct_OC_btstack_linked_item* _1457;
  struct l_struct_struct_OC_btstack_linked_item* _1457__PHI_TEMPORARY;
  uint16_t* _1458;
  uint16_t _1459;
  uint32_t _1460;
  uint16_t _1461;
  uint32_t _1462;
  struct l_struct_struct_OC_btstack_linked_item* _1463;

  _1455 = l2cap_stack;
  _1456 = *((&_1455->field2));
  if ((((_1456 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1464;
  } else {
    goto _1465;
  }

_1465:
  _1457__PHI_TEMPORARY = _1456;   /* for PHI node */
  goto _1466;

  do {     /* Syntactic loop '' to make GCC happy */
_1466:
  _1457 = _1457__PHI_TEMPORARY;
  _1458 = (&(((struct l_struct_struct_OC_channel_core_data_t*)((&_1457[((int32_t)4)]))))->field7);
  _1459 = *_1458;
  _1460 =  /*tail*/ printf(((&_OC_str_OC_39.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1459)));
  _1461 = *_1458;
  _1462 =  /*tail*/ l2cap_send_internal(_1461, ((&_OC_str_OC_40.array[((int32_t)0)])), 4, 0);
  _1463 = *((&_1457->field0));
  if ((((_1463 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1467;
  } else {
    _1457__PHI_TEMPORARY = _1463;   /* for PHI node */
    goto _1466;
  }

  } while (1); /* end of syntactic loop '' */
_1467:
  goto _1464;

_1464:
  return;
}


uint32_t l2cap_core_data_for_send(uint8_t* _1468, uint16_t _1469) {
  struct l_struct_struct_OC_l2cap_stack_t* _1470;
  uint8_t* _1471;

  _1470 = l2cap_stack;
  _1471 = memcpy(_1468, (((uint8_t*)((&_1470->field3)))), 44);
  return 44;
}


void l2cap_core_data_for_set(uint8_t* _1472, uint16_t _1473) {
  struct l_struct_struct_OC_l2cap_stack_t* _1474;
  uint8_t* _1475;

  _1474 = l2cap_stack;
  _1475 = memcpy((((uint8_t*)((&_1474->field3)))), _1472, 44);
}


uint32_t l2cap_channel_core_data_for_send(uint8_t* _1476, uint16_t _1477) {
  struct l_struct_struct_OC_l2cap_stack_t* _1478;
  struct l_struct_struct_OC_btstack_linked_item* _1479;
  struct l_struct_struct_OC_btstack_linked_item* _1480;
  struct l_struct_struct_OC_btstack_linked_item* _1480__PHI_TEMPORARY;
  uint8_t _1481;
  uint8_t _1481__PHI_TEMPORARY;
  uint8_t* _1482;
  uint8_t _1483;
  struct l_struct_struct_OC_btstack_linked_item* _1484;
  uint32_t _1485;
  uint32_t _1486;
  uint32_t _1486__PHI_TEMPORARY;

  _1478 = l2cap_stack;
  _1479 = *((&_1478->field2));
  if ((((_1479 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1486__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1487;
  } else {
    goto _1488;
  }

_1488:
  _1480__PHI_TEMPORARY = _1479;   /* for PHI node */
  _1481__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1489;

  do {     /* Syntactic loop '' to make GCC happy */
_1489:
  _1480 = _1480__PHI_TEMPORARY;
  _1481 = _1481__PHI_TEMPORARY;
  _1482 = memcpy(((&_1476[((int32_t)((llvm_mul_u32((((uint32_t)(uint8_t)_1481)), 40)) | 1))])), (((uint8_t*)((&_1480[((int32_t)4)])))), 40);
  _1483 = llvm_add_u8(_1481, 1);
  _1484 = *((&_1480->field0));
  if ((((_1484 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1490;
  } else {
    _1480__PHI_TEMPORARY = _1484;   /* for PHI node */
    _1481__PHI_TEMPORARY = _1483;   /* for PHI node */
    goto _1489;
  }

  } while (1); /* end of syntactic loop '' */
_1490:
  if ((((_1483 == ((uint8_t)0))&1))) {
    _1486__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1487;
  } else {
    goto _1491;
  }

_1491:
  *_1476 = _1483;
  _1485 = (llvm_mul_u32((((uint32_t)(uint8_t)_1483)), 40)) | 1;
  _1486__PHI_TEMPORARY = _1485;   /* for PHI node */
  goto _1487;

_1487:
  _1486 = _1486__PHI_TEMPORARY;
  return _1486;
}


uint8_t check_l2cap_send_state(void) {
  struct l_struct_struct_OC_l2cap_stack_t* _1492;
  struct l_struct_struct_OC_btstack_linked_item* _1493;
  struct l_struct_struct_OC_btstack_linked_item* _1494;
  struct l_struct_struct_OC_btstack_linked_item* _1494__PHI_TEMPORARY;
  uint16_t* _1495;
  uint16_t _1496;
  uint16_t _1497;
  uint16_t _1498;
  uint16_t _1499;
  struct l_struct_struct_OC_btstack_linked_item* _1500;
  uint8_t _1501;
  uint8_t _1501__PHI_TEMPORARY;
  uint8_t _1502;
  uint8_t _1502__PHI_TEMPORARY;

  _1492 = l2cap_stack;
  _1493 = *((&_1492->field2));
  if ((((_1493 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1502__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1503;
  } else {
    goto _1504;
  }

_1504:
  _1494__PHI_TEMPORARY = _1493;   /* for PHI node */
  goto _1505;

  do {     /* Syntactic loop '' to make GCC happy */
_1505:
  _1494 = _1494__PHI_TEMPORARY;
  _1495 = ((uint16_t*)((&_1494[((int32_t)7)])));
  _1496 = *_1495;
  if ((((_1496 == ((uint16_t)25))&1))) {
    goto _1506;
  } else {
    goto _1507;
  }

_1506:
  _1497 =  /*tail*/ ((l_fptr_4*)(void*)get_curr_channel_state)();
  if (((((llvm_and_u16(_1497, 32)) == ((uint16_t)0))&1))) {
    _1501__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1508;
  } else {
    goto _1509;
  }

_1509:
  _1498 = *_1495;
  if ((((_1498 == ((uint16_t)25))&1))) {
    goto _1510;
  } else {
    goto _1507;
  }

_1510:
  _1499 =  /*tail*/ ((l_fptr_4*)(void*)get_curr_channel_state)();
  if (((((llvm_and_u16(_1499, 4)) == ((uint16_t)0))&1))) {
    _1501__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1508;
  } else {
    goto _1507;
  }

_1507:
  _1500 = *((&_1494->field0));
  if ((((_1500 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1501__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1508;
  } else {
    _1494__PHI_TEMPORARY = _1500;   /* for PHI node */
    goto _1505;
  }

  } while (1); /* end of syntactic loop '' */
_1508:
  _1501 = _1501__PHI_TEMPORARY;
  _1502__PHI_TEMPORARY = _1501;   /* for PHI node */
  goto _1503;

_1503:
  _1502 = _1502__PHI_TEMPORARY;
  return _1502;
}


void l2cap_channel_core_data_for_set(uint8_t* _1511, uint16_t _1512) {
  struct l_array_9_uint8_t _1513;    /* Address-exposed local */
  uint8_t* _1514;
  uint8_t _1515;
  uint8_t* _1516;
  uint8_t* _1517;
  uint8_t* _1518;
  uint8_t* _1519;
  uint8_t _1520;
  uint8_t _1520__PHI_TEMPORARY;
  uint8_t* _1521;
  uint8_t _1522;
  uint8_t _1523;
  uint16_t _1524;
  struct l_struct_struct_OC_l2cap_stack_t* _1525;
  struct l_struct_struct_OC_btstack_linked_item* _1526;
  struct l_struct_struct_OC_btstack_linked_item* _1527;
  struct l_struct_struct_OC_btstack_linked_item* _1528;
  struct l_struct_struct_OC_btstack_linked_item* _1528__PHI_TEMPORARY;
  uint16_t _1529;
  uint8_t _1530;
  uint32_t _1531;
  uint8_t _1532;
  uint32_t _1533;
  uint8_t* _1534;
  struct l_struct_struct_OC_l2cap_channel_t* _1535;
  uint8_t _1536;
  uint32_t _1537;
  uint8_t* _1538;
  uint8_t* _1539;
  uint32_t _1540;
  uint16_t* _1541;
  uint32_t _1542;
  uint8_t* _1543;
  struct l_struct_struct_OC_l2cap_stack_t* _1544;
  uint8_t _1545;
  uint16_t _1546;
  uint16_t _1547;
  uint16_t _1548;
  uint16_t _1549;
  uint16_t _1550;
  uint16_t _1551;
  uint32_t _1552;
  uint8_t _1553;
  uint8_t _1554;

  _1514 = (&_1511[((int32_t)1)]);
  _1515 = *_1511;
  if ((((_1515 == ((uint8_t)0))&1))) {
    goto _1555;
  } else {
    goto _1556;
  }

_1556:
  _1516 = (&_1513.array[((int32_t)0)]);
  _1517 = (&_1513.array[((int32_t)1)]);
  _1518 = (&_1513.array[((int32_t)2)]);
  _1519 = (&_1513.array[((int32_t)3)]);
  _1520__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1557;

  do {     /* Syntactic loop '' to make GCC happy */
_1557:
  _1520 = _1520__PHI_TEMPORARY;
  _1521 = (&_1514[((int32_t)(llvm_mul_u32((((uint32_t)(uint8_t)_1520)), 40)))]);
  _1522 = *((&_1521[((int32_t)12)]));
  _1523 = *((&_1521[((int32_t)13)]));
  _1524 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_1523)), 8)), (((uint16_t)(uint8_t)_1522)));
  _1525 = l2cap_stack;
  _1526 = *((&_1525->field1));
  if ((((_1526 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1558;
  } else {
    goto _1559;
  }

_1559:
  _1528__PHI_TEMPORARY = _1526;   /* for PHI node */
  goto _1560;

  do {     /* Syntactic loop '' to make GCC happy */
_1560:
  _1528 = _1528__PHI_TEMPORARY;
  _1529 = *(((uint16_t*)((&_1528[((int32_t)1)]))));
  if ((((_1529 == _1524)&1))) {
    goto _1561;
  } else {
    goto _1562;
  }

_1562:
  _1527 = *((&_1528->field0));
  if ((((_1527 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1563;
  } else {
    _1528__PHI_TEMPORARY = _1527;   /* for PHI node */
    goto _1560;
  }

  } while (1); /* end of syntactic loop '' */
_1563:
  goto _1558;

_1561:
  _1532 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1532, 1)) == ((uint8_t)0))&1))) {
    goto _1564;
  } else {
    goto _1565;
  }

_1565:
  _1533 = puts(((&str_OC_73.array[((int32_t)0)])));
  goto _1564;

_1564:
  _1534 = btstack_memory_l2cap_channel_get();
  _1535 = ((struct l_struct_struct_OC_l2cap_channel_t*)_1534);
  if ((((_1534 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _1566;
  } else {
    goto _1567;
  }

_1567:
  _1538 = (&_1534[((int32_t)22)]);
  _1539 = memcpy(_1538, ((&_1521[((int32_t)6)])), 6);
  _1540 = connection_handler_for_address(_1538, 1);
  _1541 = ((uint16_t*)((&_1534[((int32_t)4)])));
  *_1541 = (((uint16_t)_1540));
  *(((uint8_t**)((&_1534[((int32_t)8)])))) = ((uint8_t*)/*NULL*/0);
  _1542 = *(((uint32_t*)((&_1528[((int32_t)3)]))));
  *(((uint32_t*)((&_1534[((int32_t)12)])))) = _1542;
  _1543 = memcpy(((&_1534[((int32_t)16)])), _1521, 40);
  _1544 = l2cap_stack;
  btstack_linked_list_add(((&_1544->field2)), (((struct l_struct_struct_OC_btstack_linked_item*)_1534)));
  _1545 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1545, 1)) == ((uint8_t)0))&1))) {
    goto _1568;
  } else {
    goto _1569;
  }

_1569:
  _1546 = *_1541;
  _1547 = *(((uint16_t*)((&_1534[((int32_t)28)]))));
  _1548 = *(((uint16_t*)((&_1534[((int32_t)30)]))));
  _1549 = *(((uint16_t*)((&_1534[((int32_t)32)]))));
  _1550 = *(((uint16_t*)((&_1534[((int32_t)34)]))));
  _1551 = *(((uint16_t*)((&_1534[((int32_t)36)]))));
  _1552 = printf(((&_OC_str_OC_54.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1546)), (((uint32_t)(uint16_t)_1547)), (((uint32_t)(uint16_t)_1548)), (((uint32_t)(uint16_t)_1549)), (((uint32_t)(uint16_t)_1550)), (((uint32_t)(uint16_t)_1551)));
  goto _1568;

_1568:
  *_1516 = 121u;
  *_1517 = 9;
  *_1518 = 0;
  bt_flip_addr(_1519, _1538);
  l2cap_dispatch(_1535, 4, _1516, 9);
  goto _1570;

_1566:
  _1536 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1536, 4)) == ((uint8_t)0))&1))) {
    goto _1570;
  } else {
    goto _1571;
  }

_1571:
  _1537 = puts(((&str_OC_72.array[((int32_t)0)])));
  goto _1570;

_1558:
  _1530 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1530, 4)) == ((uint8_t)0))&1))) {
    goto _1570;
  } else {
    goto _1572;
  }

_1572:
  _1531 = printf(((&_OC_str_OC_51.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1524)));
  goto _1570;

_1570:
  _1553 = llvm_add_u8(_1520, 1);
  _1554 = *_1511;
  if ((((((uint8_t)_1553) < ((uint8_t)_1554))&1))) {
    _1520__PHI_TEMPORARY = _1553;   /* for PHI node */
    goto _1557;
  } else {
    goto _1573;
  }

  } while (1); /* end of syntactic loop '' */
_1573:
  goto _1555;

_1555:
  return;
}


void hci_core_data_for_set(uint8_t* _1574, uint16_t _1575) {
  struct l_struct_struct_OC_l2cap_stack_t* _1576;
  l_fptr_1* _1577;

  _1576 = l2cap_stack;
  _1577 = *((&_1576->field0));
   /*tail*/ _1577(((uint8_t*)/*NULL*/0), 4, 0, _1574, _1575);
}


uint32_t l2cap_just_register_service(uint16_t _1578) {
  struct l_struct_struct_OC_l2cap_stack_t* _1579;
  struct l_struct_struct_OC_btstack_linked_item* _1580;
  struct l_struct_struct_OC_btstack_linked_item* _1581;
  struct l_struct_struct_OC_btstack_linked_item* _1582;
  struct l_struct_struct_OC_btstack_linked_item* _1582__PHI_TEMPORARY;
  uint16_t _1583;
  struct l_struct_struct_OC_l2cap_service_t* _1584;
  struct l_struct_struct_OC_l2cap_service_t* _1585;
  struct l_struct_struct_OC_l2cap_service_t* _1585__PHI_TEMPORARY;
  struct l_struct_struct_OC_l2cap_service_t* _1586;
  struct l_struct_struct_OC_l2cap_service_t* _1586__PHI_TEMPORARY;

  _1579 = l2cap_stack;
  _1580 = *((&_1579->field1));
  if ((((_1580 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1586__PHI_TEMPORARY = ((struct l_struct_struct_OC_l2cap_service_t*)/*NULL*/0);   /* for PHI node */
    goto _1587;
  } else {
    goto _1588;
  }

_1588:
  _1582__PHI_TEMPORARY = _1580;   /* for PHI node */
  goto _1589;

  do {     /* Syntactic loop '' to make GCC happy */
_1589:
  _1582 = _1582__PHI_TEMPORARY;
  _1583 = *(((uint16_t*)((&_1582[((int32_t)1)]))));
  _1584 = ((struct l_struct_struct_OC_l2cap_service_t*)_1582);
  if ((((_1583 == _1578)&1))) {
    _1585__PHI_TEMPORARY = _1584;   /* for PHI node */
    goto _1590;
  } else {
    goto _1591;
  }

_1591:
  _1581 = *((&_1582->field0));
  if ((((_1581 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1585__PHI_TEMPORARY = ((struct l_struct_struct_OC_l2cap_service_t*)/*NULL*/0);   /* for PHI node */
    goto _1590;
  } else {
    _1582__PHI_TEMPORARY = _1581;   /* for PHI node */
    goto _1589;
  }

  } while (1); /* end of syntactic loop '' */
_1590:
  _1585 = _1585__PHI_TEMPORARY;
  _1586__PHI_TEMPORARY = _1585;   /* for PHI node */
  goto _1587;

_1587:
  _1586 = _1586__PHI_TEMPORARY;
  return (((uint32_t)(bool)(((_1586 != ((struct l_struct_struct_OC_l2cap_service_t*)/*NULL*/0))&1))));
}


static uint8_t hci_event_packet_get_type(uint8_t* _1592) {
  uint8_t _1593;

  _1593 = *_1592;
  return _1593;
}

