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
struct l_struct_struct_OC_gatt_client_info_t;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_gatt_client;
struct l_struct_struct_OC_gatt_client_notification;
struct l_struct_struct_OC_le_characteristic_t;
struct l_struct_struct_OC_le_service_t;
struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t;
struct l_struct_struct_OC_btstack_linked_list_iterator_t;

/* Function definitions */
typedef void l_fptr_2(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
};
struct l_struct_struct_OC_gatt_client_info_t {
  struct l_struct_struct_OC_btstack_linked_item* field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field2;
  l_fptr_1* field3;
  uint8_t field4;
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_53_uint8_t {
  uint8_t array[53];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_59_uint8_t {
  uint8_t array[59];
};
struct l_array_57_uint8_t {
  uint8_t array[57];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_55_uint8_t {
  uint8_t array[55];
};
struct l_array_43_uint8_t {
  uint8_t array[43];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_58_uint8_t {
  uint8_t array[58];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_119_uint8_t {
  uint8_t array[119];
};
struct l_array_121_uint8_t {
  uint8_t array[121];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_2* field3;
  uint8_t* field4;
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_struct_struct_OC_gatt_client {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  l_fptr_1* field2;
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
struct l_struct_struct_OC_gatt_client_notification {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
  uint16_t field2;
  uint16_t field3;
};
struct l_struct_struct_OC_le_characteristic_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  struct l_array_16_uint8_t field5;
};
struct l_struct_struct_OC_le_service_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  struct l_array_16_uint8_t field3;
};
struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t {
  uint16_t field0;
  uint16_t field1;
  struct l_array_16_uint8_t field2;
};
struct l_struct_struct_OC_btstack_linked_list_iterator_t {
  uint32_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};

/* External Global Variable Declarations */
extern uint32_t config_le_gatt_client_num;
extern uint8_t ble_debug_enable;

/* Function Declarations */
void gatt_client_register_packet_handler(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gatt_client_request_can_send_now_event(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_dispatch_client_request_can_send_now_event(uint16_t);
void gatt_client_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void gatt_client_hci_event_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void hci_add_event_handler(uint8_t*);
void att_dispatch_register_client(l_fptr_1*);
static void gatt_client_att_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t gatt_client_is_ready(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_gatt_client* provide_context_for_conn_handle(uint16_t) __ATTRIBUTELIST__((nothrow));
uint8_t gatt_client_get_mtu(uint16_t, uint16_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gatt_client_listen_for_characteristic_value_updates(struct l_struct_struct_OC_gatt_client_notification*, l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void gatt_client_stop_listening_for_characteristic_value_updates(struct l_struct_struct_OC_gatt_client_notification*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint8_t gatt_client_discover_primary_services(l_fptr_1*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_gatt_client* provide_context_for_conn_handle_and_start_timer(uint16_t) __ATTRIBUTELIST__((nothrow));
static void gatt_client_run(void) __ATTRIBUTELIST__((nothrow));
uint8_t gatt_client_discover_primary_services_by_uuid16(l_fptr_1*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void uuid_add_bluetooth_prefix(uint8_t*, uint32_t);
uint8_t gatt_client_discover_primary_services_by_uuid128(l_fptr_1*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_characteristics_for_service(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_service_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_find_included_services_for_service(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_service_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_characteristics_for_handle_range_by_uuid16(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_characteristics_for_handle_range_by_uuid128(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_characteristics_for_service_by_uuid16(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_service_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_characteristics_for_service_by_uuid128(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_service_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_characteristic_descriptors(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void emit_gatt_complete_event(struct l_struct_struct_OC_gatt_client*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint8_t gatt_client_discover_characteristic_descriptors_by_handle(l_fptr_1*, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_value_of_characteristic_using_value_handle(l_fptr_1*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_value_of_characteristics_by_uuid16(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_value_of_characteristics_by_uuid128(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_value_of_characteristic(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(l_fptr_1*, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_long_value_of_characteristic_using_value_handle(l_fptr_1*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_long_value_of_characteristic(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_multiple_characteristic_values(l_fptr_1*, uint16_t, uint32_t, uint16_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_value_of_characteristic_without_response(uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint16_t peripheral_mtu(struct l_struct_struct_OC_gatt_client*) __ATTRIBUTELIST__((nothrow));
uint32_t att_dispatch_client_can_send_now(uint16_t);
static void att_write_request(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t gatt_client_write_value_of_characteristic(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_long_value_of_characteristic_with_offset(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_long_value_of_characteristic(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_reliable_write_long_value_of_characteristic(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_client_characteristic_configuration(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
uint8_t gatt_client_read_characteristics_for_handle_range_by_uuid16(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sdp_normalize_uuid(uint8_t*, uint32_t);
uint8_t gatt_client_read_characteristics_for_handle_range_by_uuid128(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_characteristic_descriptor_using_descriptor_handle(l_fptr_1*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_characteristic_descriptor(l_fptr_1*, uint16_t, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(l_fptr_1*, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_long_characteristic_descriptor_using_descriptor_handle(l_fptr_1*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_read_long_characteristic_descriptor(l_fptr_1*, uint16_t, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_characteristic_descriptor_using_descriptor_handle(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_characteristic_descriptor(l_fptr_1*, uint16_t, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_long_characteristic_descriptor_using_descriptor_handle(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_write_long_characteristic_descriptor(l_fptr_1*, uint16_t, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_prepare_write(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_execute_write(l_fptr_1*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_cancel_write(l_fptr_1*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gatt_client_pts_suppress_mtu_exchange(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gatt_client_deserialize_service(uint8_t*, uint32_t, struct l_struct_struct_OC_le_service_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t little_endian_read_16(uint8_t*, uint32_t);
void reverse_128(uint8_t*, uint8_t*);
uint32_t uuid_has_bluetooth_prefix(uint8_t*);
uint32_t big_endian_read_32(uint8_t*, uint32_t);
void gatt_client_deserialize_characteristic(uint8_t*, uint32_t, struct l_struct_struct_OC_le_characteristic_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gatt_client_deserialize_characteristic_descriptor(uint8_t*, uint32_t, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gatt_client_listen_for_characteristic_value_updates_simple(struct l_struct_struct_OC_gatt_client_notification*, l_fptr_1*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_self_characteristic_descriptors(l_fptr_1*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_self_characteristics_for_service(l_fptr_1*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void call_gatt_client_run(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t gatt_client_sync_mtu(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void gatt_client_att_emit_mtu_event(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
uint8_t* btstack_memory_gatt_client_get(void);
static uint8_t hci_event_packet_get_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static void gatt_client_report_error_if_pending(struct l_struct_struct_OC_gatt_client*, uint8_t) __ATTRIBUTELIST__((nothrow));
void btstack_memory_gatt_client_free(uint8_t*);
static void gatt_client_timeout_stop(struct l_struct_struct_OC_gatt_client*) __ATTRIBUTELIST__((nothrow));
uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source*);
void put_buf(uint8_t*, uint32_t);
uint16_t l2cap_max_le_mtu(void);
uint32_t att_server_sync_mtu(uint16_t, uint16_t);
static void report_gatt_characteristics(struct l_struct_struct_OC_gatt_client*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void report_gatt_characteristic_value(struct l_struct_struct_OC_gatt_client*, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void emit_gatt_service_query_result_event(struct l_struct_struct_OC_gatt_client*, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t is_value_valid(struct l_struct_struct_OC_gatt_client*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void characteristic_end_found(struct l_struct_struct_OC_gatt_client*, uint16_t) __ATTRIBUTELIST__((nothrow));
static uint8_t* setup_characteristic_value_packet(uint8_t, uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void emit_event_to_registered_listeners(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void btstack_linked_list_iterator_init(struct l_struct_struct_OC_btstack_linked_list_iterator_t*, struct l_struct_struct_OC_btstack_linked_item**);
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
static void trigger_next_query(struct l_struct_struct_OC_gatt_client*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
static void emit_gatt_included_service_query_result_event(struct l_struct_struct_OC_gatt_client*, uint16_t, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint8_t* setup_long_characteristic_value_packet(uint8_t, uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static uint16_t write_blob_length(struct l_struct_struct_OC_gatt_client*) __ATTRIBUTELIST__((nothrow));
static void gatt_client_timeout_handler(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow));
void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source*, int16_t);
static void send_gatt_characteristic_request(struct l_struct_struct_OC_gatt_client*) __ATTRIBUTELIST__((nothrow));
static void send_gatt_read_blob_request(struct l_struct_struct_OC_gatt_client*) __ATTRIBUTELIST__((nothrow));
static void send_gatt_prepare_write_request(struct l_struct_struct_OC_gatt_client*) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_reserve_packet_buffer(void);
uint8_t* l2cap_get_outgoing_buffer(void);
uint32_t l2cap_send_prepared_connectionless(uint16_t, uint16_t, uint16_t);
static void att_read_by_type_or_group_request_for_uuid16(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
static void att_find_by_type_value_request(uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void att_read_by_type_or_group_request_for_uuid128(uint8_t*, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
void bt_store_16(uint8_t*, uint16_t, uint16_t);
static void att_read_request(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
static void att_execute_write_request(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_gatt_client_info_t gatt_client_global_info;
static struct l_array_20_uint8_t _OC_str_OC_2 = { "[ble-info] :%s,%d\n\n" };
static struct l_array_21_uint8_t __FUNCTION___OC_gatt_client_sync_mtu = { "gatt_client_sync_mtu" };
static struct l_array_53_uint8_t _OC_str_OC_4 = { "[ble-info] :GATT client timeout stop, handle 0x%02x\n" };
static struct l_array_38_uint8_t _OC_str_OC_5 = { "[ble-info] :type %d,att_packect(%d):\n" };
static struct l_array_59_uint8_t _OC_str_OC_10 = { "[ble-info] :remote_rx_mtu,local_rx_mtu,real_mtu:%d,%d,%d\n\n" };
static struct l_array_57_uint8_t _OC_str_OC_11 = { "[ble-info] :ATT Handler, unhandled response type 0x%02x\n" };
static struct l_array_54_uint8_t _OC_str_OC_12 = { "[ble-info] :GATT client timeout start, handle 0x%02x\n" };
static struct l_array_55_uint8_t _OC_str_OC_13 = { "[ble-info] :GATT client timeout handle, handle 0x%02x\n" };
static struct l_array_59_uint8_t _OC_str_OC_15 = { "<ble-error> :gatt_client_run: value len %u > MTU %u - 3\r\n\n" };
static struct l_array_43_uint8_t _OC_str_OC_16 = { "[ble-info] :att_exchange_mtu_request: %d\n\n" };
static struct l_array_44_uint8_t _OC_str_OC_17 = { "[ble-info] :att_exchange_mtu_response: %d\n\n" };
static struct l_array_58_uint8_t str = { "[ble-info] :GATT Client: HCI_EVENT_DISCONNECTION_COMPLETE" };
static struct l_array_25_uint8_t str_OC_19 = { "error:client drop cmd!!!" };
static struct l_array_39_uint8_t str_OC_20 = { "[ble-info] :ATT_EXCHANGE_MTU_RESPONSE\n" };
static struct l_array_38_uint8_t str_OC_21 = { "[ble-info] :ATT_EXCHANGE_MTU_REQUEST\n" };
static struct l_array_12_uint8_t str_OC_22 = { "[ble-dump]:" };
static struct l_array_44_uint8_t str_OC_23 = { "[ble-info] :-client-SEND_MTU_EXCHANGED_RSP\n" };
static struct l_array_47_uint8_t str_OC_24 = { "<ble-error> :Peripheral mtu is not initialized" };
static struct l_array_119_uint8_t str_OC_25 = { "[ble-info] :gatt_client_write_client_characteristic_configuration: GATT_CLIENT_CHARACTERISTIC_INDICATION_NOT_SUPPORTED" };
static struct l_array_121_uint8_t str_OC_26 = { "[ble-info] :gatt_client_write_client_characteristic_configuration: GATT_CLIENT_CHARACTERISTIC_NOTIFICATION_NOT_SUPPORTED" };


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
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

void gatt_client_register_packet_handler(l_fptr_1* _1) {
  uint32_t _2;

  _2 = config_le_gatt_client_num;
  if ((((_2 == 0u)&1))) {
    goto _3;
  } else {
    goto _4;
  }

_4:
  *((&gatt_client_global_info.field3)) = _1;
  goto _3;

_3:
  return;
}


void gatt_client_request_can_send_now_event(uint16_t _5) {
  uint32_t _6;

  _6 = config_le_gatt_client_num;
  if ((((_6 == 0u)&1))) {
    goto _7;
  } else {
    goto _8;
  }

_8:
   /*tail*/ att_dispatch_client_request_can_send_now_event(_5);
  goto _7;

_7:
  return;
}


void gatt_client_init(void) {
  uint32_t _9;

  _9 = config_le_gatt_client_num;
  if ((((_9 == 0u)&1))) {
    goto _10;
  } else {
    goto _11;
  }

_11:
  *((&gatt_client_global_info.field0)) = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);
  *((&gatt_client_global_info.field4)) = 0;
  *((&gatt_client_global_info.field2.field1)) = gatt_client_hci_event_packet_handler;
   /*tail*/ hci_add_event_handler(((uint8_t*)((&gatt_client_global_info.field2))));
   /*tail*/ att_dispatch_register_client(gatt_client_att_packet_handler);
  goto _10;

_10:
  return;
}


static void gatt_client_hci_event_packet_handler(uint8_t _12, uint16_t _13, uint8_t* _14, uint16_t _15) {
  uint32_t _16;
  uint8_t _17;
  uint8_t _18;
  uint32_t _19;
  uint16_t _20;
  struct l_struct_struct_OC_btstack_linked_item* _21;
  struct l_struct_struct_OC_btstack_linked_item* _22;
  struct l_struct_struct_OC_btstack_linked_item* _23;
  struct l_struct_struct_OC_btstack_linked_item* _23__PHI_TEMPORARY;
  uint16_t _24;
  uint32_t _25;

  _16 = config_le_gatt_client_num;
  if (((((((_12 == ((uint8_t)4))&1)) & (((_16 != 0u)&1)))&1))) {
    goto _26;
  } else {
    goto _27;
  }

_26:
  _17 =  /*tail*/ hci_event_packet_get_type(_14);
  if ((((_17 == ((uint8_t)5))&1))) {
    goto _28;
  } else {
    goto _29;
  }

_28:
  _18 = ble_debug_enable;
  if (((((llvm_and_u8(_18, 1)) == ((uint8_t)0))&1))) {
    goto _30;
  } else {
    goto _31;
  }

_31:
  _19 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _30;

_30:
  _20 =  /*tail*/ little_endian_read_16(_14, 3);
  _21 = *((&gatt_client_global_info.field0));
  if ((((_21 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _29;
  } else {
    goto _32;
  }

_32:
  _23__PHI_TEMPORARY = _21;   /* for PHI node */
  goto _33;

  do {     /* Syntactic loop '' to make GCC happy */
_33:
  _23 = _23__PHI_TEMPORARY;
  _24 = *(((uint16_t*)((&_23[((int32_t)3)]))));
  if ((((_24 == _20)&1))) {
    goto _34;
  } else {
    goto _35;
  }

_35:
  _22 = *((&_23->field0));
  if ((((_22 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _36;
  } else {
    _23__PHI_TEMPORARY = _22;   /* for PHI node */
    goto _33;
  }

  } while (1); /* end of syntactic loop '' */
_34:
   /*tail*/ gatt_client_report_error_if_pending((((struct l_struct_struct_OC_gatt_client*)_23)), 31);
  _25 =  /*tail*/ btstack_linked_list_remove(((&gatt_client_global_info.field0)), _23);
   /*tail*/ btstack_memory_gatt_client_free((((uint8_t*)_23)));
  goto _29;

_36:
  goto _29;

_29:
   /*tail*/ gatt_client_run();
  goto _27;

_27:
  return;
}


static void gatt_client_att_packet_handler(uint8_t _37, uint16_t _38, uint8_t* _39, uint16_t _40) {
  struct l_array_22_uint8_t _41;    /* Address-exposed local */
  struct l_array_16_uint8_t _42;    /* Address-exposed local */
  uint16_t _43;    /* Address-exposed local */
  struct l_array_16_uint8_t _44;    /* Address-exposed local */
  uint32_t _45;
  uint32_t _46;
  uint8_t _47;
  l_fptr_1* _48;
  uint8_t _49;
  uint32_t _50;
  uint8_t _51;
  uint8_t _52;
  uint8_t _52__PHI_TEMPORARY;
  uint32_t _53;
  uint8_t _54;
  uint16_t _55;
  uint8_t* _56;
  struct l_struct_struct_OC_gatt_client* _57;
  struct l_struct_struct_OC_btstack_linked_item* _58;
  struct l_struct_struct_OC_btstack_linked_item* _59;
  struct l_struct_struct_OC_btstack_linked_item* _60;
  struct l_struct_struct_OC_btstack_linked_item* _60__PHI_TEMPORARY;
  uint16_t _61;
  struct l_struct_struct_OC_gatt_client* _62;
  struct l_struct_struct_OC_gatt_client* _63;
  struct l_struct_struct_OC_gatt_client* _63__PHI_TEMPORARY;
  uint32_t _64;
  uint8_t _65;
  uint32_t _66;
  uint32_t _67;
  uint8_t* _68;
  uint16_t _69;
  uint16_t _70;
  uint32_t _71;
  uint32_t _72;
  uint16_t* _73;
  uint8_t _74;
  uint8_t _75;
  uint32_t _76;
  uint32_t _77;
  uint32_t _78;
  uint32_t _78__PHI_TEMPORARY;
  uint16_t _79;
  uint16_t _80;
  uint32_t _81;
  uint16_t _82;
  uint8_t _83;
  uint16_t _84;
  uint32_t _85;
  uint32_t _86;
  uint8_t* _87;
  uint8_t _88;
  uint32_t _89;
  uint32_t _90;
  uint8_t* _91;
  uint32_t _92;
  uint32_t _92__PHI_TEMPORARY;
  uint16_t _93;
  uint16_t _94;
  uint32_t _95;
  uint16_t _96;
  uint32_t _97;
  uint8_t _98;
  uint8_t _99;
  uint8_t _99__PHI_TEMPORARY;
  uint16_t _100;
  uint16_t _101;
  uint8_t* _102;
  uint32_t* _103;
  uint32_t _104;
  uint8_t _105;
  uint16_t _106;
  uint16_t _107;
  uint8_t _108;
  uint16_t _109;
  uint16_t _110;
  uint8_t* _111;
  uint8_t _112;
  uint32_t _113;
  uint32_t _114;
  uint16_t* _115;
  uint16_t* _116;
  uint8_t* _117;
  uint16_t _118;
  uint16_t _119;
  uint16_t _120;
  uint32_t _121;
  uint32_t _121__PHI_TEMPORARY;
  uint16_t _122;
  uint16_t _123;
  uint16_t _124;
  uint16_t _125;
  uint16_t _126;
  uint16_t _127;
  uint32_t _128;
  uint8_t _129;
  uint8_t _130;
  uint8_t _130__PHI_TEMPORARY;
  uint16_t _131;
  uint16_t _132;
  uint32_t _133;
  uint8_t _134;
  uint32_t _135;
  uint16_t _136;
  uint32_t _137;
  uint32_t _137__PHI_TEMPORARY;
  uint16_t _138;
  uint32_t _139;
  uint16_t _140;
  uint16_t _140__PHI_TEMPORARY;
  uint32_t* _141;
  uint32_t _142;
  uint8_t* _143;
  uint16_t* _144;
  uint16_t _145;
  uint16_t _146;
  uint16_t _147;
  uint16_t _148;
  uint16_t _149;
  uint16_t _150;
  uint16_t _151;
  uint8_t* _152;
  l_fptr_1* _153;
  uint32_t _154;
  uint32_t _154__PHI_TEMPORARY;
  uint16_t _155;
  uint16_t _156;
  uint32_t _157;
  uint16_t _158;
  uint16_t _158__PHI_TEMPORARY;
  uint8_t _159;
  uint32_t _160;
  uint16_t _161;
  uint8_t* _162;
  uint16_t _163;
  uint32_t _164;
  uint8_t* _165;
  uint8_t* _166;
  uint8_t* _167;
  uint16_t* _168;
  uint8_t* _169;
  l_fptr_1** _170;
  uint32_t _171;
  uint32_t _171__PHI_TEMPORARY;
  uint16_t _172;
  uint32_t _173;
  uint16_t _174;
  uint16_t _175;
  l_fptr_1* _176;
  uint32_t _177;
  uint32_t* _178;
  uint32_t _179;
  uint16_t _180;
  uint32_t* _181;
  uint32_t _182;
  uint16_t _183;
  uint16_t* _184;
  uint16_t _185;
  uint16_t _186;
  uint8_t* _187;
  l_fptr_1* _188;
  uint16_t _189;
  uint16_t _190;
  uint16_t _191;
  uint16_t* _192;
  uint16_t _193;
  uint16_t _194;
  uint8_t* _195;
  l_fptr_1* _196;
  uint16_t _197;
  uint16_t _198;
  uint32_t* _199;
  uint32_t _200;
  uint32_t _201;
  uint16_t _202;
  uint16_t* _203;
  uint16_t _204;
  uint16_t _205;
  uint16_t _206;
  uint16_t _207;
  uint16_t* _208;
  uint16_t _209;
  uint16_t _210;
  uint16_t _211;
  uint32_t _212;
  uint16_t _213;
  uint16_t* _214;
  uint16_t _215;
  uint16_t _216;
  uint16_t _217;
  uint32_t* _218;
  uint32_t _219;
  uint32_t _220;
  uint32_t* _221;
  uint32_t _222;
  uint8_t _223;
  uint32_t* _224;
  uint32_t _225;
  uint32_t _226;
  uint16_t _227;
  uint16_t _228;
  uint16_t _229;
  uint16_t _230;
  uint32_t* _231;
  uint32_t _232;
  uint8_t _233;
  uint32_t _234;

  _45 = config_le_gatt_client_num;
  if ((((_45 == 0u)&1))) {
    goto _235;
  } else {
    goto _236;
  }

_236:
  _46 = ((uint32_t)(uint8_t)_37);
  switch (_37) {
  default:
    goto _235;
  case ((uint8_t)4):
    goto _237;
  case ((uint8_t)8):
    goto _238;
  }

_237:
  _47 = *_39;
  if ((((_47 == ((uint8_t)120))&1))) {
    goto _239;
  } else {
    goto _235;
  }

_239:
   /*tail*/ gatt_client_run();
  _48 = *((&gatt_client_global_info.field3));
  if ((((_48 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _235;
  } else {
    goto _240;
  }

_240:
  _43 = 439;
  _48(4, 0, (((uint8_t*)(&_43))), 2);
  goto _235;

_238:
  _49 = ble_debug_enable;
  if (((((llvm_and_u8(_49, 1)) == ((uint8_t)0))&1))) {
    _52__PHI_TEMPORARY = _49;   /* for PHI node */
    goto _241;
  } else {
    goto _242;
  }

_242:
  _50 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), _46, (((uint32_t)(uint16_t)_40)));
  _51 = ble_debug_enable;
  _52__PHI_TEMPORARY = _51;   /* for PHI node */
  goto _241;

_241:
  _52 = _52__PHI_TEMPORARY;
  if (((((llvm_and_u8(_52, 2)) == ((uint8_t)0))&1))) {
    goto _243;
  } else {
    goto _244;
  }

_244:
  _53 =  /*tail*/ puts(((&str_OC_22.array[((int32_t)0)])));
   /*tail*/ put_buf(_39, (((uint32_t)(uint16_t)_40)));
  goto _243;

_243:
  _54 = *_39;
  switch (_54) {
  default:
    goto _245;
  case ((uint8_t)27):
    goto _246;
  case ((uint8_t)29):
    goto _247;
  case ((uint8_t)2):
    goto _247;
  case ((uint8_t)8):
    goto _247;
  }

_246:
  _55 =  /*tail*/ little_endian_read_16(_39, 1);
  _56 =  /*tail*/ setup_characteristic_value_packet(167u, _38, _55, ((&_39[((int32_t)3)])), (llvm_add_u16(_40, -3)));
   /*tail*/ emit_event_to_registered_listeners(_56, (llvm_add_u16(_40, 5)));
  goto _235;

_247:
  _57 =  /*tail*/ provide_context_for_conn_handle(_38);
  _63__PHI_TEMPORARY = _57;   /* for PHI node */
  goto _248;

_245:
  _58 = *((&gatt_client_global_info.field0));
  if ((((_58 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _250;
  }

_250:
  _60__PHI_TEMPORARY = _58;   /* for PHI node */
  goto _251;

  do {     /* Syntactic loop '' to make GCC happy */
_251:
  _60 = _60__PHI_TEMPORARY;
  _61 = *(((uint16_t*)((&_60[((int32_t)3)]))));
  if ((((_61 == _38)&1))) {
    goto _252;
  } else {
    goto _253;
  }

_253:
  _59 = *((&_60->field0));
  if ((((_59 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _254;
  } else {
    _60__PHI_TEMPORARY = _59;   /* for PHI node */
    goto _251;
  }

  } while (1); /* end of syntactic loop '' */
_252:
  _62 = ((struct l_struct_struct_OC_gatt_client*)_60);
  _63__PHI_TEMPORARY = _62;   /* for PHI node */
  goto _248;

_248:
  _63 = _63__PHI_TEMPORARY;
  if ((((_63 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _255;
  }

_254:
  goto _249;

_249:
  _64 =  /*tail*/ puts(((&str_OC_19.array[((int32_t)0)])));
   /*tail*/ put_buf(_39, (((uint32_t)(uint16_t)_40)));
  goto _235;

_255:
  _65 = *_39;
  _66 = ((uint32_t)(uint8_t)_65);
  switch (_65) {
  default:
    goto _256;
  case ((uint8_t)2):
    goto _257;
  case ((uint8_t)3):
    goto _257;
  case ((uint8_t)17):
    goto _258;
  case ((uint8_t)29):
    goto _259;
  case ((uint8_t)9):
    goto _260;
  case ((uint8_t)11):
    goto _261;
  case ((uint8_t)7):
    goto _262;
  case ((uint8_t)5):
    goto _263;
  case ((uint8_t)19):
    goto _264;
  case ((uint8_t)13):
    goto _265;
  case ((uint8_t)23):
    goto _266;
  case ((uint8_t)25):
    goto _267;
  case ((uint8_t)15):
    goto _268;
  case ((uint8_t)1):
    goto _269;
  case ((uint8_t)8):
    goto _270;
  }

_262:
  _67 = ((uint32_t)(uint16_t)_40);
  if ((((((uint16_t)_40) > ((uint16_t)((uint16_t)1)))&1))) {
    goto _271;
  } else {
    _158__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _272;
  }

_271:
  _68 = (&_63->field9.array[((int32_t)0)]);
  _154__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _273;

_257:
  _69 =  /*tail*/ little_endian_read_16(_39, 1);
  _70 =  /*tail*/ l2cap_max_le_mtu();
  _71 = ((uint32_t)(uint16_t)_69);
  _72 = ((uint32_t)(uint16_t)_70);
  _73 = (&_63->field6);
  *_73 = (llvm_select_u16((((((uint16_t)_69) < ((uint16_t)_70))&1)), _69, _70));
  _74 = *_39;
  _75 = ble_debug_enable;
  if ((((_74 == ((uint8_t)2))&1))) {
    goto _274;
  } else {
    goto _275;
  }

_274:
  if (((((llvm_and_u8(_75, 1)) != ((uint8_t)0))&1))) {
    goto _276;
  } else {
    _78__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _277;
  }

_276:
  _76 =  /*tail*/ puts(((&str_OC_21.array[((int32_t)0)])));
  _78__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _277;

_275:
  if (((((llvm_and_u8(_75, 1)) != ((uint8_t)0))&1))) {
    goto _278;
  } else {
    _78__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _277;
  }

_278:
  _77 =  /*tail*/ puts(((&str_OC_20.array[((int32_t)0)])));
  _78__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _277;

_277:
  _78 = _78__PHI_TEMPORARY;
  *((&_63->field7)) = _78;
  _79 = *((&_63->field3));
  _80 = *_73;
  _81 =  /*tail*/ att_server_sync_mtu(_79, _80);
  _82 = *_73;
   /*tail*/ gatt_client_att_emit_mtu_event(_38, _82);
  _83 = ble_debug_enable;
  if (((((llvm_and_u8(_83, 1)) == ((uint8_t)0))&1))) {
    goto _279;
  } else {
    goto _280;
  }

_280:
  _84 = *_73;
  _85 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), _71, _72, (((uint32_t)(uint16_t)_84)));
  goto _279;

_258:
  _86 = *((&_63->field1));
  if ((((_86 == 2u)&1))) {
    goto _281;
  } else {
    goto _279;
  }

_281:
  _87 = (&_39[((int32_t)1)]);
  _88 = *_87;
  _89 = ((uint32_t)(uint8_t)_88);
  _90 = ((uint32_t)(uint16_t)_40);
  if ((((((uint16_t)_40) > ((uint16_t)((uint16_t)2)))&1))) {
    goto _282;
  } else {
    _99__PHI_TEMPORARY = _88;   /* for PHI node */
    goto _283;
  }

_282:
  _91 = (&_42.array[((int32_t)0)]);
  _92__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _284;

  do {     /* Syntactic loop '' to make GCC happy */
_284:
  _92 = _92__PHI_TEMPORARY;
  _93 = little_endian_read_16(_39, _92);
  _94 = little_endian_read_16(_39, (llvm_add_u32(_92, 2)));
  _95 = llvm_add_u32(_92, 4);
  if ((((_88 == ((uint8_t)6))&1))) {
    goto _285;
  } else {
    goto _286;
  }

_286:
  reverse_128(((&_39[((int32_t)_95)])), _91);
  goto _287;

_285:
  _96 = little_endian_read_16(_39, _95);
  uuid_add_bluetooth_prefix(_91, (((uint32_t)(uint16_t)_96)));
  goto _287;

_287:
  emit_gatt_service_query_result_event(_63, _93, _94, _91);
  _97 = llvm_add_u32(_92, _89);
  if ((((((int32_t)_97) < ((int32_t)_90))&1))) {
    _92__PHI_TEMPORARY = _97;   /* for PHI node */
    goto _284;
  } else {
    goto _288;
  }

  } while (1); /* end of syntactic loop '' */
_288:
  _98 = *_87;
  _99__PHI_TEMPORARY = _98;   /* for PHI node */
  goto _283;

_283:
  _99 = _99__PHI_TEMPORARY;
  _100 = little_endian_read_16(_39, (llvm_sub_u32((llvm_add_u32(_90, 2)), (((uint32_t)(uint8_t)_99)))));
  trigger_next_query(_63, _100, 1);
  goto _279;

_259:
  _101 =  /*tail*/ little_endian_read_16(_39, 1);
  _102 =  /*tail*/ setup_characteristic_value_packet(168u, _38, _101, ((&_39[((int32_t)3)])), (llvm_add_u16(_40, -3)));
   /*tail*/ emit_event_to_registered_listeners(_102, (llvm_add_u16(_40, 5)));
  *((&_63->field25)) = 1;
  goto _279;

_260:
  _103 = (&_63->field1);
  _104 = *_103;
  switch (_104) {
  default:
    goto _279;
  case 6u:
    goto _289;
  case 8u:
    goto _290;
  case 12u:
    goto _291;
  case 36u:
    goto _292;
  case 20u:
    goto _293;
  }

_289:
   /*tail*/ report_gatt_characteristics(_63, _39, _40);
  _105 = *((&_39[((int32_t)1)]));
  _106 =  /*tail*/ little_endian_read_16(_39, (llvm_sub_u32((llvm_add_u32((((uint32_t)(uint16_t)_40)), 3)), (((uint32_t)(uint8_t)_105)))));
  _107 = *((&_63->field11));
  if ((((((uint16_t)_107) > ((uint16_t)_106))&1))) {
    goto _294;
  } else {
    goto _295;
  }

_295:
   /*tail*/ characteristic_end_found(_63, _107);
  goto _294;

_294:
   /*tail*/ trigger_next_query(_63, _106, 5);
  goto _279;

_290:
   /*tail*/ report_gatt_characteristics(_63, _39, _40);
  _108 = *((&_39[((int32_t)1)]));
  _109 =  /*tail*/ little_endian_read_16(_39, (llvm_sub_u32((llvm_add_u32((((uint32_t)(uint16_t)_40)), 3)), (((uint32_t)(uint8_t)_108)))));
  _110 = *((&_63->field11));
  if ((((((uint16_t)_110) > ((uint16_t)_109))&1))) {
    goto _296;
  } else {
    goto _297;
  }

_297:
   /*tail*/ characteristic_end_found(_63, _110);
  goto _296;

_296:
   /*tail*/ trigger_next_query(_63, _109, 5);
  goto _279;

_291:
  _111 = (&_39[((int32_t)1)]);
  _112 = *_111;
  _113 = ((uint32_t)(uint8_t)_112);
  if ((((((uint8_t)_112) < ((uint8_t)((uint8_t)7)))&1))) {
    goto _298;
  } else {
    goto _299;
  }

_299:
  _114 = ((uint32_t)(uint16_t)_40);
  if ((((((uint16_t)_40) > ((uint16_t)((uint16_t)2)))&1))) {
    goto _300;
  } else {
    _130__PHI_TEMPORARY = _112;   /* for PHI node */
    goto _301;
  }

_300:
  _115 = (&_63->field12);
  _116 = (&_63->field13);
  _117 = (&_42.array[((int32_t)0)]);
  _121__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _302;

_298:
  _118 =  /*tail*/ little_endian_read_16(_39, 2);
  *((&_63->field10)) = _118;
  _119 =  /*tail*/ little_endian_read_16(_39, 4);
  *((&_63->field12)) = _119;
  _120 =  /*tail*/ little_endian_read_16(_39, 6);
  *((&_63->field13)) = _120;
  *_103 = 13;
  goto _279;

  do {     /* Syntactic loop '' to make GCC happy */
_302:
  _121 = _121__PHI_TEMPORARY;
  _122 = little_endian_read_16(_39, _121);
  _123 = little_endian_read_16(_39, (llvm_add_u32(_121, 2)));
  *_115 = _123;
  _124 = little_endian_read_16(_39, (llvm_add_u32(_121, 4)));
  *_116 = _124;
  _125 = little_endian_read_16(_39, (llvm_add_u32(_121, 6)));
  uuid_add_bluetooth_prefix(_117, (((uint32_t)(uint16_t)_125)));
  _126 = *_115;
  _127 = *_116;
  emit_gatt_included_service_query_result_event(_63, _122, _126, _127, _117);
  _128 = (llvm_add_u32(_121, _113)) & 65535;
  if ((((((uint32_t)_128) < ((uint32_t)_114))&1))) {
    _121__PHI_TEMPORARY = _128;   /* for PHI node */
    goto _302;
  } else {
    goto _303;
  }

  } while (1); /* end of syntactic loop '' */
_303:
  _129 = *_111;
  _130__PHI_TEMPORARY = _129;   /* for PHI node */
  goto _301;

_301:
  _130 = _130__PHI_TEMPORARY;
  _131 = little_endian_read_16(_39, (llvm_sub_u32(_114, (((uint32_t)(uint8_t)_130)))));
  trigger_next_query(_63, _131, 11);
  goto _279;

_292:
  _132 =  /*tail*/ little_endian_read_16(_39, 2);
  *((&_63->field22)) = _132;
  *_103 = 37;
  goto _279;

_293:
  _133 = ((uint32_t)(uint16_t)_40);
  if ((((((uint16_t)_40) > ((uint16_t)((uint16_t)2)))&1))) {
    goto _304;
  } else {
    _140__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _305;
  }

_304:
  _134 = *((&_39[((int32_t)1)]));
  _135 = ((uint32_t)(uint8_t)_134);
  _136 = ((uint16_t)(llvm_add_u32(_135, 65534)));
  _137__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _306;

  do {     /* Syntactic loop '' to make GCC happy */
_306:
  _137 = _137__PHI_TEMPORARY;
  _138 =  /*tail*/ little_endian_read_16(_39, _137);
   /*tail*/ report_gatt_characteristic_value(_63, _138, ((&_39[((int32_t)(llvm_add_u32(_137, 2)))])), _136);
  _139 = (llvm_add_u32(_137, _135)) & 65535;
  if ((((((uint32_t)_139) < ((uint32_t)_133))&1))) {
    _137__PHI_TEMPORARY = _139;   /* for PHI node */
    goto _306;
  } else {
    goto _307;
  }

  } while (1); /* end of syntactic loop '' */
_307:
  _140__PHI_TEMPORARY = _138;   /* for PHI node */
  goto _305;

_305:
  _140 = _140__PHI_TEMPORARY;
   /*tail*/ trigger_next_query(_63, _140, 19);
  goto _279;

_261:
  _141 = (&_63->field1);
  _142 = *_141;
  switch (_142) {
  default:
    goto _279;
  case 14u:
    goto _308;
  case 16u:
    goto _309;
  case 40u:
    goto _310;
  }

_308:
  _143 = (&_44.array[((int32_t)0)]);
  reverse_128(((&_39[((int32_t)1)])), _143);
  _144 = (&_63->field10);
  _145 = *_144;
  _146 = *((&_63->field12));
  _147 = *((&_63->field13));
  emit_gatt_included_service_query_result_event(_63, _145, _146, _147, _143);
  _148 = *_144;
  trigger_next_query(_63, _148, 11);
  goto _279;

_309:
  *_141 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
  _149 = *((&_63->field16));
   /*tail*/ report_gatt_characteristic_value(_63, _149, ((&_39[((int32_t)1)])), (llvm_add_u16(_40, -1)));
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_310:
  *_141 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
  _150 = *((&_63->field16));
  _151 = *((&_63->field3));
  _152 =  /*tail*/ setup_characteristic_value_packet(169u, _151, _150, ((&_39[((int32_t)1)])), (llvm_add_u16(_40, -1)));
  _153 = *((&_63->field2));
  if ((((_153 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _311;
  } else {
    goto _312;
  }

_312:
   /*tail*/ _153(4, 0, _152, (llvm_add_u16(_40, 7)));
  goto _311;

_311:
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

  do {     /* Syntactic loop '' to make GCC happy */
_273:
  _154 = _154__PHI_TEMPORARY;
  _155 =  /*tail*/ little_endian_read_16(_39, _154);
  _156 =  /*tail*/ little_endian_read_16(_39, (llvm_add_u32(_154, 2)));
   /*tail*/ emit_gatt_service_query_result_event(_63, _155, _156, _68);
  _157 = llvm_add_u32(_154, 4);
  if ((((((int32_t)_157) < ((int32_t)_67))&1))) {
    _154__PHI_TEMPORARY = _157;   /* for PHI node */
    goto _273;
  } else {
    goto _313;
  }

  } while (1); /* end of syntactic loop '' */
_313:
  _158__PHI_TEMPORARY = _156;   /* for PHI node */
  goto _272;

_272:
  _158 = _158__PHI_TEMPORARY;
   /*tail*/ trigger_next_query(_63, _158, 3);
  goto _279;

_263:
  _159 = *((&_39[((int32_t)1)]));
  _160 = llvm_select_u32((((_159 == ((uint8_t)2))&1)), 18, 4);
  _161 =  /*tail*/ little_endian_read_16(_39, (llvm_sub_u32((((uint32_t)(uint16_t)_40)), _160)));
  _162 = (&_39[((int32_t)2)]);
  _163 = llvm_add_u16(_40, -2);
  _164 = ((uint32_t)(uint16_t)_163);
  if ((((_163 == ((uint16_t)0))&1))) {
    goto _314;
  } else {
    goto _315;
  }

_315:
  _165 = (&_42.array[((int32_t)0)]);
  _166 = (&_41.array[((int32_t)0)]);
  _167 = (&_41.array[((int32_t)1)]);
  _168 = (&_63->field3);
  _169 = (&_41.array[((int32_t)6)]);
  _170 = (&_63->field2);
  _171__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _316;

  do {     /* Syntactic loop '' to make GCC happy */
_316:
  _171 = _171__PHI_TEMPORARY;
  _172 = little_endian_read_16(_162, _171);
  _173 = llvm_add_u32(_171, 2);
  if ((((_159 == ((uint8_t)2))&1))) {
    goto _317;
  } else {
    goto _318;
  }

_318:
  _174 = little_endian_read_16(_162, _173);
  uuid_add_bluetooth_prefix(_165, (((uint32_t)(uint16_t)_174)));
  goto _319;

_317:
  reverse_128(((&_162[((int32_t)_173)])), _165);
  goto _319;

_319:
  *_166 = 164u;
  *_167 = 20;
  _175 = *_168;
  little_endian_store_16(_166, 2, _175);
  little_endian_store_16(_166, 4, _172);
  reverse_128(_165, _169);
  _176 = *_170;
  if ((((_176 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _320;
  } else {
    goto _321;
  }

_321:
  _176(4, 0, _166, 22);
  goto _320;

_320:
  _177 = llvm_add_u32(_171, _160);
  if ((((((int32_t)_177) < ((int32_t)_164))&1))) {
    _171__PHI_TEMPORARY = _177;   /* for PHI node */
    goto _316;
  } else {
    goto _322;
  }

  } while (1); /* end of syntactic loop '' */
_322:
  goto _314;

_314:
  trigger_next_query(_63, _161, 9);
  goto _279;

_264:
  _178 = (&_63->field1);
  _179 = *_178;
  switch (_179) {
  default:
    goto _279;
  case 24u:
    goto _323;
  case 38u:
    goto _324;
  case 44u:
    goto _325;
  }

_323:
  *_178 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_324:
  *_178 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_325:
  *_178 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_265:
  _180 = llvm_add_u16(_40, -1);
  _181 = (&_63->field1);
  _182 = *_181;
  switch (_182) {
  default:
    goto _279;
  case 18u:
    goto _326;
  case 42u:
    goto _327;
  }

_326:
  _183 = *((&_63->field16));
  _184 = (&_63->field17);
  _185 = *_184;
  _186 = *((&_63->field3));
  _187 =  /*tail*/ setup_long_characteristic_value_packet(166u, _186, _183, _185, ((&_39[((int32_t)1)])), _180);
  if ((((_187 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _328;
  } else {
    goto _329;
  }

_329:
  _188 = *((&_63->field2));
  if ((((_188 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _328;
  } else {
    goto _330;
  }

_330:
   /*tail*/ _188(4, 0, _187, (llvm_add_u16(_40, 9)));
  goto _328;

_328:
  _189 =  /*tail*/ peripheral_mtu(_63);
  if ((((((uint16_t)(llvm_add_u16(_189, -1))) > ((uint16_t)_180))&1))) {
    goto _331;
  } else {
    goto _332;
  }

_331:
  *_181 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_332:
  _190 = *_184;
  *_184 = (llvm_add_u16(_190, _180));
  *_181 = 17;
  goto _279;

_327:
  _191 = *((&_63->field16));
  _192 = (&_63->field17);
  _193 = *_192;
  _194 = *((&_63->field3));
  _195 =  /*tail*/ setup_long_characteristic_value_packet(170u, _194, _191, _193, ((&_39[((int32_t)1)])), _180);
  if ((((_195 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _333;
  } else {
    goto _334;
  }

_334:
  _196 = *((&_63->field2));
  if ((((_196 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _333;
  } else {
    goto _335;
  }

_335:
   /*tail*/ _196(4, 0, _195, (llvm_add_u16(_40, 9)));
  goto _333;

_333:
  _197 =  /*tail*/ peripheral_mtu(_63);
  if ((((((uint16_t)(llvm_add_u16(_197, -1))) > ((uint16_t)_180))&1))) {
    goto _336;
  } else {
    goto _337;
  }

_336:
  *_181 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_337:
  _198 = *_192;
  *_192 = (llvm_add_u16(_198, _180));
  *_181 = 41;
  goto _279;

_266:
  _199 = (&_63->field1);
  _200 = *_199;
  switch (_200) {
  default:
    goto _279;
  case 50u:
    goto _338;
  case 26u:
    goto _339;
  case 46u:
    goto _340;
  case 28u:
    goto _341;
  }

_338:
  *_199 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
  _201 =  /*tail*/ is_value_valid(_63, _39, _40);
  if ((((_201 == 0u)&1))) {
    goto _342;
  } else {
    goto _343;
  }

_343:
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_342:
   /*tail*/ emit_gatt_complete_event(_63, 126u);
  goto _279;

_339:
  _202 =  /*tail*/ little_endian_read_16(_39, 3);
  _203 = (&_63->field17);
  *_203 = _202;
  _204 =  /*tail*/ write_blob_length(_63);
  _205 = *_203;
  *_203 = (llvm_add_u16(_205, _204));
  _206 =  /*tail*/ write_blob_length(_63);
  *_199 = (llvm_select_u32((((_206 == ((uint16_t)0))&1)), 29, 25));
  goto _279;

_340:
  _207 =  /*tail*/ little_endian_read_16(_39, 3);
  _208 = (&_63->field17);
  *_208 = _207;
  _209 =  /*tail*/ write_blob_length(_63);
  _210 = *_208;
  *_208 = (llvm_add_u16(_210, _209));
  _211 =  /*tail*/ write_blob_length(_63);
  *_199 = (llvm_select_u32((((_211 == ((uint16_t)0))&1)), 47, 45));
  goto _279;

_341:
  _212 =  /*tail*/ is_value_valid(_63, _39, _40);
  if ((((_212 == 0u)&1))) {
    goto _344;
  } else {
    goto _345;
  }

_345:
  _213 =  /*tail*/ little_endian_read_16(_39, 3);
  _214 = (&_63->field17);
  *_214 = _213;
  _215 =  /*tail*/ write_blob_length(_63);
  _216 = *_214;
  *_214 = (llvm_add_u16(_216, _215));
  _217 =  /*tail*/ write_blob_length(_63);
  *_199 = (llvm_select_u32((((_217 == ((uint16_t)0))&1)), 29, 27));
  goto _279;

_344:
  *_199 = 33;
  goto _279;

_267:
  _218 = (&_63->field1);
  _219 = *_218;
  _220 = llvm_add_u32(_219, -30);
  switch (((llvm_lshr_u32(_220, 1)) | (_220 << 31))) {
  default:
    goto _279;
  case 0u:
    goto _346;
  case 1u:
    goto _347;
  case 2u:
    goto _348;
  case 9u:
    goto _349;
  }

_346:
  *_218 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_347:
  *_218 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_348:
  *_218 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 126u);
  goto _279;

_349:
  *_218 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_268:
  _221 = (&_63->field1);
  _222 = *_221;
  if ((((_222 == 22u)&1))) {
    goto _350;
  } else {
    goto _279;
  }

_350:
   /*tail*/ report_gatt_characteristic_value(_63, 0, ((&_39[((int32_t)1)])), (llvm_add_u16(_40, -1)));
  *_221 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_269:
  _223 = *((&_39[((int32_t)4)]));
  if ((((_223 == ((uint8_t)10))&1))) {
    goto _351;
  } else {
    goto _352;
  }

_351:
  _224 = (&_63->field1);
  _225 = *_224;
  _226 = llvm_add_u32(_225, -2);
  switch (((llvm_lshr_u32(_226, 1)) | (_226 << 31))) {
  default:
    goto _353;
  case 0u:
    goto _354;
  case 1u:
    goto _354;
  case 5u:
    goto _354;
  case 4u:
    goto _354;
  case 2u:
    goto _355;
  case 3u:
    goto _355;
  case 9u:
    goto _356;
  }

_354:
  *_224 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_355:
  _227 = *((&_63->field11));
   /*tail*/ characteristic_end_found(_63, _227);
  *_224 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_356:
  *_224 = 0;
   /*tail*/ gatt_client_timeout_stop(_63);
  _228 = *((&_63->field10));
  _229 = *((&_63->field12));
  if ((((_228 == _229)&1))) {
    goto _357;
  } else {
    goto _358;
  }

_357:
   /*tail*/ emit_gatt_complete_event(_63, 10);
  goto _279;

_358:
   /*tail*/ emit_gatt_complete_event(_63, 0);
  goto _279;

_353:
   /*tail*/ gatt_client_report_error_if_pending(_63, 10);
  goto _279;

_352:
   /*tail*/ gatt_client_report_error_if_pending(_63, _223);
  goto _279;

_270:
  _230 =  /*tail*/ little_endian_read_16(_39, 1);
  _231 = (&_63->field29);
  _232 = *_231;
  if ((((_232 == 0u)&1))) {
    goto _359;
  } else {
    goto _279;
  }

_359:
  *_231 = 1;
  *((&_63->field30.array[((int32_t)0)])) = 1;
  *((&_63->field30.array[((int32_t)1)])) = 8;
  *((&_63->field30.array[((int32_t)2)])) = (((uint8_t)_230));
  *((&_63->field30.array[((int32_t)3)])) = (((uint8_t)(llvm_lshr_u16(_230, 8))));
  *((&_63->field30.array[((int32_t)4)])) = 10;
  *((&_63->field31)) = 5;
  goto _279;

_256:
  _233 = ble_debug_enable;
  if (((((llvm_and_u8(_233, 1)) == ((uint8_t)0))&1))) {
    goto _279;
  } else {
    goto _360;
  }

_360:
  _234 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), _66);
  goto _279;

_279:
  gatt_client_run();
  goto _235;

_235:
  return;
}


uint32_t gatt_client_is_ready(uint16_t _361) {
  struct l_struct_struct_OC_gatt_client* _362;
  uint32_t _363;
  uint32_t _364;
  uint32_t _365;
  uint32_t _365__PHI_TEMPORARY;

  _362 =  /*tail*/ provide_context_for_conn_handle(_361);
  if ((((_362 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _365__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _366;
  } else {
    goto _367;
  }

_367:
  _363 = *((&_362->field1));
  _364 = ((uint32_t)(bool)(((_363 == 0u)&1)));
  _365__PHI_TEMPORARY = _364;   /* for PHI node */
  goto _366;

_366:
  _365 = _365__PHI_TEMPORARY;
  return _365;
}


static struct l_struct_struct_OC_gatt_client* provide_context_for_conn_handle(uint16_t _368) {
  struct l_struct_struct_OC_btstack_linked_item* _369;
  struct l_struct_struct_OC_btstack_linked_item* _370;
  struct l_struct_struct_OC_btstack_linked_item* _371;
  struct l_struct_struct_OC_btstack_linked_item* _371__PHI_TEMPORARY;
  uint16_t _372;
  struct l_struct_struct_OC_gatt_client* _373;
  uint8_t* _374;
  struct l_struct_struct_OC_gatt_client* _375;
  uint8_t* _376;
  uint32_t* _377;
  uint8_t _378;
  struct l_struct_struct_OC_gatt_client* _379;
  struct l_struct_struct_OC_gatt_client* _379__PHI_TEMPORARY;

  _369 = *((&gatt_client_global_info.field0));
  if ((((_369 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _380;
  } else {
    goto _381;
  }

_381:
  _371__PHI_TEMPORARY = _369;   /* for PHI node */
  goto _382;

  do {     /* Syntactic loop '' to make GCC happy */
_382:
  _371 = _371__PHI_TEMPORARY;
  _372 = *(((uint16_t*)((&_371[((int32_t)3)]))));
  if ((((_372 == _368)&1))) {
    goto _383;
  } else {
    goto _384;
  }

_384:
  _370 = *((&_371->field0));
  if ((((_370 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _385;
  } else {
    _371__PHI_TEMPORARY = _370;   /* for PHI node */
    goto _382;
  }

  } while (1); /* end of syntactic loop '' */
_383:
  _373 = ((struct l_struct_struct_OC_gatt_client*)_371);
  _379__PHI_TEMPORARY = _373;   /* for PHI node */
  goto _386;

_385:
  goto _380;

_380:
  _374 =  /*tail*/ btstack_memory_gatt_client_get();
  _375 = ((struct l_struct_struct_OC_gatt_client*)_374);
  if ((((_374 == ((uint8_t*)/*NULL*/0))&1))) {
    _379__PHI_TEMPORARY = ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0);   /* for PHI node */
    goto _386;
  } else {
    goto _387;
  }

_387:
  _376 = memset(_374, 0, 128);
  *(((uint16_t*)((&_374[((int32_t)12)])))) = _368;
  *(((uint16_t*)((&_374[((int32_t)22)])))) = 23;
  _377 = ((uint32_t*)((&_374[((int32_t)24)])));
  *_377 = 0;
  *(((uint32_t*)((&_374[((int32_t)4)])))) = 0;
   /*tail*/ btstack_linked_list_add(((&gatt_client_global_info.field0)), (((struct l_struct_struct_OC_btstack_linked_item*)_374)));
  _378 = *((&gatt_client_global_info.field4));
  if ((((_378 == ((uint8_t)0))&1))) {
    _379__PHI_TEMPORARY = _375;   /* for PHI node */
    goto _386;
  } else {
    goto _388;
  }

_388:
  *_377 = 2;
  _379__PHI_TEMPORARY = _375;   /* for PHI node */
  goto _386;

_386:
  _379 = _379__PHI_TEMPORARY;
  return _379;
}


uint8_t gatt_client_get_mtu(uint16_t _389, uint16_t* _390) {
  struct l_struct_struct_OC_gatt_client* _391;
  uint32_t _392;
  uint16_t _393;
  uint16_t _394;
  uint16_t _394__PHI_TEMPORARY;
  uint8_t _395;
  uint8_t _395__PHI_TEMPORARY;

  _391 =  /*tail*/ provide_context_for_conn_handle(_389);
  if ((((_391 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _394__PHI_TEMPORARY = 23;   /* for PHI node */
    _395__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _396;
  } else {
    goto _397;
  }

_397:
  _392 = *((&_391->field7));
  if ((((_392 == 2u)&1))) {
    goto _398;
  } else {
    _394__PHI_TEMPORARY = 23;   /* for PHI node */
    _395__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _396;
  }

_398:
  _393 = *((&_391->field6));
  _394__PHI_TEMPORARY = _393;   /* for PHI node */
  _395__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _396;

_396:
  _394 = _394__PHI_TEMPORARY;
  _395 = _395__PHI_TEMPORARY;
  *_390 = _394;
  return _395;
}


void gatt_client_listen_for_characteristic_value_updates(struct l_struct_struct_OC_gatt_client_notification* _399, l_fptr_1* _400, uint16_t _401, struct l_struct_struct_OC_le_characteristic_t* _402) {
  *((&_399->field1)) = _400;
  *((&_399->field2)) = _401;
   /*tail*/ btstack_linked_list_add(((&gatt_client_global_info.field1)), ((&_399->field0)));
}


void gatt_client_stop_listening_for_characteristic_value_updates(struct l_struct_struct_OC_gatt_client_notification* _403) {
  uint32_t _404;

  _404 =  /*tail*/ btstack_linked_list_remove(((&gatt_client_global_info.field1)), ((&_403->field0)));
}


uint8_t gatt_client_discover_primary_services(l_fptr_1* _405, uint16_t _406) {
  struct l_struct_struct_OC_gatt_client* _407;
  uint32_t* _408;
  uint32_t _409;
  uint8_t _410;
  uint8_t _410__PHI_TEMPORARY;

  _407 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_406);
  if ((((_407 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _410__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _411;
  } else {
    goto _412;
  }

_412:
  _408 = (&_407->field1);
  _409 = *_408;
  if ((((_409 == 0u)&1))) {
    goto _413;
  } else {
    _410__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _411;
  }

_413:
  *((&_407->field2)) = _405;
  *((&_407->field10)) = 1;
  *((&_407->field11)) = -1;
  *_408 = 1;
  *((&_407->field8)) = 0;
   /*tail*/ gatt_client_run();
  _410__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _411;

_411:
  _410 = _410__PHI_TEMPORARY;
  return _410;
}


static struct l_struct_struct_OC_gatt_client* provide_context_for_conn_handle_and_start_timer(uint16_t _414) {
  struct l_struct_struct_OC_gatt_client* _415;
  uint8_t _416;
  uint16_t _417;
  uint32_t _418;
  struct l_struct_struct_OC_btstack_timer_source* _419;
  struct l_struct_struct_OC_gatt_client* _420;
  struct l_struct_struct_OC_gatt_client* _420__PHI_TEMPORARY;

  _415 =  /*tail*/ provide_context_for_conn_handle(_414);
  if ((((_415 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _420__PHI_TEMPORARY = ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0);   /* for PHI node */
    goto _421;
  } else {
    goto _422;
  }

_422:
  _416 = ble_debug_enable;
  if (((((llvm_and_u8(_416, 1)) == ((uint8_t)0))&1))) {
    goto _423;
  } else {
    goto _424;
  }

_424:
  _417 = *((&_415->field3));
  _418 =  /*tail*/ printf(((&_OC_str_OC_12.array[((int32_t)0)])), (((uint32_t)(uint16_t)_417)));
  goto _423;

_423:
   /*tail*/ gatt_client_timeout_stop(_415);
  _419 = (&_415->field28);
  *(((uint64_t*)_419)) = 0;
  *((&_415->field28.field2)) = 30;
  *((&_415->field28.field3)) = gatt_client_timeout_handler;
  *(((struct l_struct_struct_OC_gatt_client**)((&_415->field28.field4)))) = _415;
   /*tail*/ btstack_set_timer(_419, 131);
  _420__PHI_TEMPORARY = _415;   /* for PHI node */
  goto _421;

_421:
  _420 = _420__PHI_TEMPORARY;
  return _420;
}


static void gatt_client_run(void) {
  struct l_array_2_uint8_t _425;    /* Address-exposed local */
  struct l_array_16_uint8_t _426;    /* Address-exposed local */
  uint32_t _427;
  struct l_struct_struct_OC_btstack_linked_item* _428;
  struct l_struct_struct_OC_btstack_linked_item* _429;
  struct l_struct_struct_OC_btstack_linked_item* _429__PHI_TEMPORARY;
  struct l_struct_struct_OC_gatt_client* _430;
  uint16_t* _431;
  uint16_t _432;
  uint32_t _433;
  uint16_t _434;
  uint32_t* _435;
  uint32_t _436;
  uint16_t _437;
  uint16_t _438;
  uint32_t _439;
  uint8_t* _440;
  uint32_t _441;
  uint8_t _442;
  uint32_t _443;
  uint8_t _444;
  uint32_t _445;
  uint16_t _446;
  uint16_t _447;
  uint32_t _448;
  uint8_t* _449;
  uint32_t _450;
  uint8_t _451;
  uint32_t _452;
  uint32_t* _453;
  uint32_t _454;
  uint16_t _455;
  uint8_t* _456;
  uint8_t _457;
  uint32_t _458;
  uint8_t* _459;
  uint32_t _460;
  uint8_t* _461;
  uint32_t _462;
  uint8_t* _463;
  uint8_t _464;
  uint16_t _465;
  uint32_t _466;
  uint8_t* _467;
  uint32_t _468;
  uint32_t* _469;
  uint32_t _470;
  uint16_t* _471;
  uint16_t _472;
  uint16_t _473;
  uint8_t _474;
  uint16_t _475;
  uint16_t _476;
  uint32_t _477;
  uint32_t _478;
  uint32_t _479;
  uint32_t _479__PHI_TEMPORARY;
  uint16_t _480;
  uint16_t _481;
  uint16_t _482;
  uint16_t _483;
  uint8_t* _484;
  uint16_t _485;
  uint16_t _486;
  uint16_t _487;
  uint8_t* _488;
  uint16_t _489;
  uint16_t _490;
  uint16_t _491;
  uint16_t _492;
  uint16_t _493;
  uint16_t _494;
  uint32_t _495;
  uint8_t* _496;
  uint32_t _497;
  uint16_t _498;
  uint16_t _499;
  uint16_t _500;
  uint16_t _501;
  uint16_t _502;
  uint16_t _503;
  uint16_t _504;
  uint16_t _505;
  uint16_t _506;
  uint16_t _507;
  uint16_t _508;
  uint16_t _509;
  uint16_t _510;
  uint16_t* _511;
  uint32_t _512;
  uint8_t* _513;
  uint32_t _514;
  uint16_t _515;
  uint16_t _515__PHI_TEMPORARY;
  uint32_t _516;
  uint32_t _516__PHI_TEMPORARY;
  uint32_t _517;
  uint32_t _517__PHI_TEMPORARY;
  uint16_t _518;
  uint32_t _519;
  uint32_t _520;
  uint16_t _521;
  uint16_t _522;
  uint16_t _522__PHI_TEMPORARY;
  uint32_t _523;
  uint16_t _524;
  uint16_t _525;
  uint16_t _526;
  uint8_t* _527;
  uint16_t _528;
  uint16_t _529;
  uint16_t _530;
  uint16_t _531;
  uint16_t _532;
  uint16_t _533;
  uint16_t _534;
  uint16_t _535;
  uint16_t _536;
  uint16_t _537;
  uint16_t _538;
  uint8_t* _539;
  uint16_t _540;
  uint16_t _541;
  uint16_t _542;
  struct l_struct_struct_OC_btstack_linked_item* _543;

  _427 = config_le_gatt_client_num;
  if ((((_427 == 0u)&1))) {
    goto _544;
  } else {
    goto _545;
  }

_545:
  _428 = *((&gatt_client_global_info.field0));
  if ((((_428 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _544;
  } else {
    goto _546;
  }

_546:
  _429__PHI_TEMPORARY = _428;   /* for PHI node */
  goto _547;

  do {     /* Syntactic loop '' to make GCC happy */
_547:
  _429 = _429__PHI_TEMPORARY;
  _430 = ((struct l_struct_struct_OC_gatt_client*)_429);
  _431 = ((uint16_t*)((&_429[((int32_t)3)])));
  _432 = *_431;
  _433 =  /*tail*/ att_dispatch_client_can_send_now(_432);
  if ((((_433 == 0u)&1))) {
    goto _548;
  } else {
    goto _549;
  }

_549:
  _435 = ((uint32_t*)((&_429[((int32_t)6)])));
  _436 = *_435;
  switch (_436) {
  default:
    goto _550;
  case 0u:
    goto _551;
  case 1u:
    goto _552;
  case 3u:
    goto _553;
  }

_550:
  _453 = ((uint32_t*)((&_429[((int32_t)29)])));
  _454 = *_453;
  if ((((_454 == 1u)&1))) {
    goto _554;
  } else {
    goto _555;
  }

_555:
  _463 = (&_430->field25);
  _464 = *_463;
  if ((((_464 == ((uint8_t)0))&1))) {
    goto _556;
  } else {
    goto _557;
  }

_556:
  _469 = ((uint32_t*)((&_429[((int32_t)1)])));
  _470 = *_469;
  switch (_470) {
  default:
    _479__PHI_TEMPORARY = _470;   /* for PHI node */
    goto _558;
  case 23u:
    goto _559;
  case 43u:
    goto _559;
  }

_559:
  _471 = (&_430->field18);
  _472 = *_471;
  _473 =  /*tail*/ peripheral_mtu(_430);
  if ((((((int32_t)(((uint32_t)(uint16_t)_472))) > ((int32_t)(llvm_add_u32((((uint32_t)(uint16_t)_473)), -3))))&1))) {
    goto _560;
  } else {
    goto _561;
  }

_561:
  _478 = *_469;
  _479__PHI_TEMPORARY = _478;   /* for PHI node */
  goto _558;

_558:
  _479 = _479__PHI_TEMPORARY;
  switch (_479) {
  default:
    goto _562;
  case 1u:
    goto _563;
  case 3u:
    goto _564;
  case 5u:
    goto _565;
  case 7u:
    goto _566;
  case 9u:
    goto _567;
  case 11u:
    goto _568;
  case 13u:
    goto _569;
  case 15u:
    goto _570;
  case 17u:
    goto _571;
  case 19u:
    goto _572;
  case 21u:
    goto _573;
  case 23u:
    goto _574;
  case 25u:
    goto _575;
  case 49u:
    goto _576;
  case 27u:
    goto _577;
  case 29u:
    goto _578;
  case 31u:
    goto _579;
  case 33u:
    goto _580;
  case 35u:
    goto _581;
  case 39u:
    goto _582;
  case 41u:
    goto _583;
  case 43u:
    goto _584;
  case 37u:
    goto _585;
  case 45u:
    goto _586;
  case 47u:
    goto _587;
  }

_573:
  *_469 = 22;
  _509 = *_431;
  _510 = *(((uint16_t*)((&_429[((int32_t)17)]))));
  _511 = *(((uint16_t**)((&_429[((int32_t)18)]))));
  _512 =  /*tail*/ l2cap_reserve_packet_buffer();
  _513 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_513 = 14;
  _514 = ((uint32_t)(uint16_t)_510);
  if ((((_510 == ((uint16_t)0))&1))) {
    _522__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _588;
  } else {
    goto _589;
  }

_589:
  _515__PHI_TEMPORARY = 1;   /* for PHI node */
  _516__PHI_TEMPORARY = 1;   /* for PHI node */
  _517__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _590;

  do {     /* Syntactic loop '' to make GCC happy */
_590:
  _515 = _515__PHI_TEMPORARY;
  _516 = _516__PHI_TEMPORARY;
  _517 = _517__PHI_TEMPORARY;
  _518 = *((&_511[((int32_t)_517)]));
   /*tail*/ little_endian_store_16(_513, _515, _518);
  _519 = llvm_add_u32(_516, 2);
  _520 = llvm_add_u32(_517, 1);
  if ((((_520 == _514)&1))) {
    goto _591;
  } else {
    _515__PHI_TEMPORARY = (((uint16_t)_519));   /* for PHI node */
    _516__PHI_TEMPORARY = _519;   /* for PHI node */
    _517__PHI_TEMPORARY = _520;   /* for PHI node */
    goto _590;
  }

  } while (1); /* end of syntactic loop '' */
_591:
  _521 = llvm_or_u16((llvm_shl_u16(_510, 1)), 1);
  _522__PHI_TEMPORARY = _521;   /* for PHI node */
  goto _588;

_588:
  _522 = _522__PHI_TEMPORARY;
  _523 =  /*tail*/ l2cap_send_prepared_connectionless(_509, 4, _522);
  goto _562;

_572:
  *_469 = 20;
  _505 = *(((uint16_t*)((&_429[((int32_t)7)]))));
  _506 = *_431;
  _507 = *((&_430->field10));
  _508 = *(((uint16_t*)((&_429[((int32_t)12)]))));
  if ((((_505 == ((uint16_t)0))&1))) {
    goto _592;
  } else {
    goto _593;
  }

_593:
   /*tail*/ att_read_by_type_or_group_request_for_uuid16(8, _505, _506, _507, _508);
  goto _562;

_592:
   /*tail*/ att_read_by_type_or_group_request_for_uuid128(((&_430->field9.array[((int32_t)0)])), _506, _507, _508);
  goto _562;

_562:
  _543 = *((&_429->field0));
  if ((((_543 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _552;
  } else {
    _429__PHI_TEMPORARY = _543;   /* for PHI node */
    goto _547;
  }

  } while (1); /* end of syntactic loop '' */
_548:
  _434 = *_431;
   /*tail*/ att_dispatch_client_request_can_send_now_event(_434);
  goto _544;

_551:
  *_435 = 1;
  _437 = *_431;
  _438 =  /*tail*/ l2cap_max_le_mtu();
  _439 =  /*tail*/ l2cap_reserve_packet_buffer();
  _440 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_440 = 2;
   /*tail*/ little_endian_store_16(_440, 1, _438);
  _441 =  /*tail*/ l2cap_send_prepared_connectionless(_437, 4, 3);
  _442 = ble_debug_enable;
  if (((((llvm_and_u8(_442, 1)) == ((uint8_t)0))&1))) {
    goto _544;
  } else {
    goto _594;
  }

_594:
  _443 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), (((uint32_t)(uint16_t)_438)));
  goto _544;

_553:
  _444 = ble_debug_enable;
  if (((((llvm_and_u8(_444, 1)) == ((uint8_t)0))&1))) {
    goto _595;
  } else {
    goto _596;
  }

_596:
  _445 =  /*tail*/ puts(((&str_OC_23.array[((int32_t)0)])));
  goto _595;

_595:
  *_435 = 2;
  _446 = *_431;
  _447 =  /*tail*/ l2cap_max_le_mtu();
  _448 =  /*tail*/ l2cap_reserve_packet_buffer();
  _449 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_449 = 3;
   /*tail*/ little_endian_store_16(_449, 1, _447);
  _450 =  /*tail*/ l2cap_send_prepared_connectionless(_446, 4, 3);
  _451 = ble_debug_enable;
  if (((((llvm_and_u8(_451, 1)) == ((uint8_t)0))&1))) {
    goto _544;
  } else {
    goto _597;
  }

_597:
  _452 =  /*tail*/ printf(((&_OC_str_OC_17.array[((int32_t)0)])), (((uint32_t)(uint16_t)_447)));
  goto _544;

_554:
  _455 = *_431;
  _456 = ((uint8_t*)((&_429[((int32_t)30)])));
  _457 = *((&_430->field31));
  _458 =  /*tail*/ l2cap_reserve_packet_buffer();
  if ((((_458 == 0u)&1))) {
    goto _544;
  } else {
    goto _598;
  }

_598:
  _459 =  /*tail*/ l2cap_get_outgoing_buffer();
  _460 = ((uint32_t)(uint8_t)_457);
   /*tail*/ put_buf(_456, _460);
  _461 = memcpy(_459, _456, _460);
  _462 =  /*tail*/ l2cap_send_prepared_connectionless(_455, 4, (((uint16_t)(uint8_t)_457)));
  if ((((_462 == 0u)&1))) {
    goto _599;
  } else {
    goto _544;
  }

_599:
  *_453 = 0;
  goto _544;

_557:
  *_463 = 0;
  _465 = *_431;
  _466 =  /*tail*/ l2cap_reserve_packet_buffer();
  _467 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_467 = 30;
  _468 =  /*tail*/ l2cap_send_prepared_connectionless(_465, 4, 1);
  goto _544;

_560:
  _474 = ble_debug_enable;
  if (((((llvm_and_u8(_474, 4)) == ((uint8_t)0))&1))) {
    goto _600;
  } else {
    goto _601;
  }

_601:
  _475 = *_471;
  _476 =  /*tail*/ peripheral_mtu(_430);
  _477 =  /*tail*/ printf(((&_OC_str_OC_15.array[((int32_t)0)])), (((uint32_t)(uint16_t)_475)), (((uint32_t)(uint16_t)_476)));
  goto _600;

_600:
  *_469 = 0;
   /*tail*/ gatt_client_timeout_stop(_430);
   /*tail*/ emit_gatt_complete_event(_430, 13);
  goto _544;

_563:
  *_469 = 2;
  _480 = *_431;
  _481 = *((&_430->field10));
  _482 = *(((uint16_t*)((&_429[((int32_t)12)]))));
   /*tail*/ att_read_by_type_or_group_request_for_uuid16(16, 10240, _480, _481, _482);
  goto _544;

_564:
  *_469 = 4;
  _483 = *(((uint16_t*)((&_429[((int32_t)7)]))));
  if ((((_483 == ((uint16_t)0))&1))) {
    goto _602;
  } else {
    goto _603;
  }

_603:
  _484 = (&_425.array[((int32_t)0)]);
  little_endian_store_16(_484, 0, _483);
  _485 = *_431;
  _486 = *((&_430->field10));
  _487 = *(((uint16_t*)((&_429[((int32_t)12)]))));
  att_find_by_type_value_request(_485, _486, _487, _484, 2);
  goto _544;

_602:
  _488 = (&_426.array[((int32_t)0)]);
  reverse_128(((&_430->field9.array[((int32_t)0)])), _488);
  _489 = *_431;
  _490 = *((&_430->field10));
  _491 = *(((uint16_t*)((&_429[((int32_t)12)]))));
  att_find_by_type_value_request(_489, _490, _491, _488, 16);
  goto _544;

_565:
  *_469 = 6;
   /*tail*/ send_gatt_characteristic_request(_430);
  goto _544;

_566:
  *_469 = 8;
   /*tail*/ send_gatt_characteristic_request(_430);
  goto _544;

_567:
  *_469 = 8;
  _492 = *_431;
  _493 = *((&_430->field10));
  _494 = *(((uint16_t*)((&_429[((int32_t)12)]))));
  _495 =  /*tail*/ l2cap_reserve_packet_buffer();
  _496 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_496 = 4;
   /*tail*/ little_endian_store_16(_496, 1, _493);
   /*tail*/ little_endian_store_16(_496, 3, _494);
  _497 =  /*tail*/ l2cap_send_prepared_connectionless(_492, 4, 5);
  goto _544;

_568:
  *_469 = 12;
  _498 = *_431;
  _499 = *((&_430->field10));
  _500 = *(((uint16_t*)((&_429[((int32_t)12)]))));
   /*tail*/ att_read_by_type_or_group_request_for_uuid16(8, 10242, _498, _499, _500);
  goto _544;

_569:
  *_469 = 14;
  _501 = *_431;
  _502 = *((&_430->field12));
   /*tail*/ att_read_request(_501, _502);
  goto _544;

_570:
  *_469 = 16;
  _503 = *_431;
  _504 = *((&_430->field16));
   /*tail*/ att_read_request(_503, _504);
  goto _544;

_571:
  *_469 = 18;
   /*tail*/ send_gatt_read_blob_request(_430);
  goto _544;

_574:
  *_469 = 24;
  _524 = *_431;
  _525 = *((&_430->field16));
  _526 = *((&_430->field18));
  _527 = *(((uint8_t**)((&_429[((int32_t)16)]))));
   /*tail*/ att_write_request(18, _524, _525, _526, _527);
  goto _544;

_575:
  *_469 = 26;
   /*tail*/ send_gatt_prepare_write_request(_430);
  goto _544;

_576:
  *_469 = 50;
   /*tail*/ send_gatt_prepare_write_request(_430);
  goto _544;

_577:
  *_469 = 28;
   /*tail*/ send_gatt_prepare_write_request(_430);
  goto _544;

_578:
  *_469 = 30;
  _528 = *_431;
   /*tail*/ att_execute_write_request(_528, 1);
  goto _544;

_579:
  *_469 = 32;
  _529 = *_431;
   /*tail*/ att_execute_write_request(_529, 0);
  goto _544;

_580:
  *_469 = 34;
  _530 = *_431;
   /*tail*/ att_execute_write_request(_530, 0);
  goto _544;

_581:
  *_469 = 36;
  _531 = *_431;
  _532 = *((&_430->field10));
  _533 = *(((uint16_t*)((&_429[((int32_t)12)]))));
   /*tail*/ att_read_by_type_or_group_request_for_uuid16(8, 10498, _531, _532, _533);
  goto _544;

_582:
  *_469 = 40;
  _534 = *_431;
  _535 = *((&_430->field16));
   /*tail*/ att_read_request(_534, _535);
  goto _544;

_583:
  *_469 = 42;
   /*tail*/ send_gatt_read_blob_request(_430);
  goto _544;

_584:
  *_469 = 44;
  _536 = *_431;
  _537 = *((&_430->field16));
  _538 = *((&_430->field18));
  _539 = *(((uint8_t**)((&_429[((int32_t)16)]))));
   /*tail*/ att_write_request(18, _536, _537, _538, _539);
  goto _544;

_585:
  *_469 = 38;
  _540 = *_431;
  _541 = *(((uint16_t*)((&_429[((int32_t)19)]))));
   /*tail*/ att_write_request(18, _540, _541, 2, ((&_430->field23.array[((int32_t)0)])));
  goto _544;

_586:
  *_469 = 46;
   /*tail*/ send_gatt_prepare_write_request(_430);
  goto _544;

_587:
  *_469 = 48;
  _542 = *_431;
   /*tail*/ att_execute_write_request(_542, 1);
  goto _544;

_552:
  goto _544;

_544:
  return;
}


uint8_t gatt_client_discover_primary_services_by_uuid16(l_fptr_1* _604, uint16_t _605, uint16_t _606) {
  struct l_struct_struct_OC_gatt_client* _607;
  uint32_t* _608;
  uint32_t _609;
  uint8_t _610;
  uint8_t _610__PHI_TEMPORARY;

  _607 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_605);
  if ((((_607 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _610__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _611;
  } else {
    goto _612;
  }

_612:
  _608 = (&_607->field1);
  _609 = *_608;
  if ((((_609 == 0u)&1))) {
    goto _613;
  } else {
    _610__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _611;
  }

_613:
  *((&_607->field2)) = _604;
  *((&_607->field10)) = 1;
  *((&_607->field11)) = -1;
  *_608 = 3;
  *((&_607->field8)) = _606;
   /*tail*/ uuid_add_bluetooth_prefix(((&_607->field9.array[((int32_t)0)])), (((uint32_t)(uint16_t)_606)));
   /*tail*/ gatt_client_run();
  _610__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _611;

_611:
  _610 = _610__PHI_TEMPORARY;
  return _610;
}


uint8_t gatt_client_discover_primary_services_by_uuid128(l_fptr_1* _614, uint16_t _615, uint8_t* _616) {
  struct l_struct_struct_OC_gatt_client* _617;
  uint32_t* _618;
  uint32_t _619;
  uint8_t* _620;
  uint8_t _621;
  uint8_t _621__PHI_TEMPORARY;

  _617 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_615);
  if ((((_617 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _621__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _622;
  } else {
    goto _623;
  }

_623:
  _618 = (&_617->field1);
  _619 = *_618;
  if ((((_619 == 0u)&1))) {
    goto _624;
  } else {
    _621__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _622;
  }

_624:
  *((&_617->field2)) = _614;
  *((&_617->field10)) = 1;
  *((&_617->field11)) = -1;
  *((&_617->field8)) = 0;
  _620 = memcpy(((&_617->field9.array[((int32_t)0)])), _616, 16);
  *_618 = 3;
   /*tail*/ gatt_client_run();
  _621__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _622;

_622:
  _621 = _621__PHI_TEMPORARY;
  return _621;
}


uint8_t gatt_client_discover_characteristics_for_service(l_fptr_1* _625, uint16_t _626, struct l_struct_struct_OC_le_service_t* _627) {
  struct l_struct_struct_OC_gatt_client* _628;
  uint32_t* _629;
  uint32_t _630;
  uint16_t _631;
  uint16_t _632;
  uint8_t _633;
  uint8_t _633__PHI_TEMPORARY;

  _628 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_626);
  if ((((_628 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _633__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _634;
  } else {
    goto _635;
  }

_635:
  _629 = (&_628->field1);
  _630 = *_629;
  if ((((_630 == 0u)&1))) {
    goto _636;
  } else {
    _633__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _634;
  }

_636:
  *((&_628->field2)) = _625;
  _631 = *((&_627->field0));
  *((&_628->field10)) = _631;
  _632 = *((&_627->field1));
  *((&_628->field11)) = _632;
  *((&_628->field24)) = 0;
  *((&_628->field15)) = 0;
  *_629 = 5;
   /*tail*/ gatt_client_run();
  _633__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _634;

_634:
  _633 = _633__PHI_TEMPORARY;
  return _633;
}


uint8_t gatt_client_find_included_services_for_service(l_fptr_1* _637, uint16_t _638, struct l_struct_struct_OC_le_service_t* _639) {
  struct l_struct_struct_OC_gatt_client* _640;
  uint32_t* _641;
  uint32_t _642;
  uint16_t _643;
  uint16_t _644;
  uint8_t _645;
  uint8_t _645__PHI_TEMPORARY;

  _640 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_638);
  if ((((_640 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _645__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _646;
  } else {
    goto _647;
  }

_647:
  _641 = (&_640->field1);
  _642 = *_641;
  if ((((_642 == 0u)&1))) {
    goto _648;
  } else {
    _645__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _646;
  }

_648:
  *((&_640->field2)) = _637;
  _643 = *((&_639->field0));
  *((&_640->field10)) = _643;
  _644 = *((&_639->field1));
  *((&_640->field11)) = _644;
  *_641 = 11;
   /*tail*/ gatt_client_run();
  _645__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _646;

_646:
  _645 = _645__PHI_TEMPORARY;
  return _645;
}


uint8_t gatt_client_discover_characteristics_for_handle_range_by_uuid16(l_fptr_1* _649, uint16_t _650, uint16_t _651, uint16_t _652, uint16_t _653) {
  struct l_struct_struct_OC_gatt_client* _654;
  uint32_t* _655;
  uint32_t _656;
  uint8_t _657;
  uint8_t _657__PHI_TEMPORARY;

  _654 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_650);
  if ((((_654 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _657__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _658;
  } else {
    goto _659;
  }

_659:
  _655 = (&_654->field1);
  _656 = *_655;
  if ((((_656 == 0u)&1))) {
    goto _660;
  } else {
    _657__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _658;
  }

_660:
  *((&_654->field2)) = _649;
  *((&_654->field10)) = _651;
  *((&_654->field11)) = _652;
  *((&_654->field24)) = 1;
  *((&_654->field8)) = _653;
   /*tail*/ uuid_add_bluetooth_prefix(((&_654->field9.array[((int32_t)0)])), (((uint32_t)(uint16_t)_653)));
  *((&_654->field15)) = 0;
  *_655 = 7;
   /*tail*/ gatt_client_run();
  _657__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _658;

_658:
  _657 = _657__PHI_TEMPORARY;
  return _657;
}


uint8_t gatt_client_discover_characteristics_for_handle_range_by_uuid128(l_fptr_1* _661, uint16_t _662, uint16_t _663, uint16_t _664, uint8_t* _665) {
  struct l_struct_struct_OC_gatt_client* _666;
  uint32_t* _667;
  uint32_t _668;
  uint8_t* _669;
  uint8_t _670;
  uint8_t _670__PHI_TEMPORARY;

  _666 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_662);
  if ((((_666 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _670__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _671;
  } else {
    goto _672;
  }

_672:
  _667 = (&_666->field1);
  _668 = *_667;
  if ((((_668 == 0u)&1))) {
    goto _673;
  } else {
    _670__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _671;
  }

_673:
  *((&_666->field2)) = _661;
  *((&_666->field10)) = _663;
  *((&_666->field11)) = _664;
  *((&_666->field24)) = 1;
  *((&_666->field8)) = 0;
  _669 = memcpy(((&_666->field9.array[((int32_t)0)])), _665, 16);
  *((&_666->field15)) = 0;
  *_667 = 7;
   /*tail*/ gatt_client_run();
  _670__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _671;

_671:
  _670 = _670__PHI_TEMPORARY;
  return _670;
}


uint8_t gatt_client_discover_characteristics_for_service_by_uuid16(l_fptr_1* _674, uint16_t _675, struct l_struct_struct_OC_le_service_t* _676, uint16_t _677) {
  uint16_t _678;
  uint16_t _679;
  uint8_t _680;

  _678 = *((&_676->field0));
  _679 = *((&_676->field1));
  _680 =  /*tail*/ gatt_client_discover_characteristics_for_handle_range_by_uuid16(_674, _675, _678, _679, _677);
  return _680;
}


uint8_t gatt_client_discover_characteristics_for_service_by_uuid128(l_fptr_1* _681, uint16_t _682, struct l_struct_struct_OC_le_service_t* _683, uint8_t* _684) {
  uint16_t _685;
  uint16_t _686;
  uint8_t _687;

  _685 = *((&_683->field0));
  _686 = *((&_683->field1));
  _687 =  /*tail*/ gatt_client_discover_characteristics_for_handle_range_by_uuid128(_681, _682, _685, _686, _684);
  return _687;
}


uint8_t gatt_client_discover_characteristic_descriptors(l_fptr_1* _688, uint16_t _689, struct l_struct_struct_OC_le_characteristic_t* _690) {
  struct l_struct_struct_OC_gatt_client* _691;
  uint32_t* _692;
  uint32_t _693;
  uint16_t _694;
  uint16_t _695;
  uint8_t _696;
  uint8_t _696__PHI_TEMPORARY;

  _691 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_689);
  if ((((_691 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _696__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _697;
  } else {
    goto _698;
  }

_698:
  _692 = (&_691->field1);
  _693 = *_692;
  if ((((_693 == 0u)&1))) {
    goto _699;
  } else {
    _696__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _697;
  }

_699:
  _694 = *((&_690->field1));
  _695 = *((&_690->field2));
  if ((((_694 == _695)&1))) {
    goto _700;
  } else {
    goto _701;
  }

_700:
   /*tail*/ emit_gatt_complete_event(_691, 0);
  _696__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _697;

_701:
  *((&_691->field2)) = _688;
  *((&_691->field10)) = (llvm_add_u16(_694, 1));
  *((&_691->field11)) = _695;
  *_692 = 9;
   /*tail*/ gatt_client_run();
  _696__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _697;

_697:
  _696 = _696__PHI_TEMPORARY;
  return _696;
}


static void emit_gatt_complete_event(struct l_struct_struct_OC_gatt_client* _702, uint8_t _703) {
  struct l_array_5_uint8_t _704;    /* Address-exposed local */
  uint8_t* _705;
  uint16_t _706;
  l_fptr_1* _707;

  _705 = (&_704.array[((int32_t)0)]);
  *_705 = 160u;
  *((&_704.array[((int32_t)1)])) = 3;
  _706 = *((&_702->field3));
  little_endian_store_16(_705, 2, _706);
  *((&_704.array[((int32_t)4)])) = _703;
  _707 = *((&_702->field2));
  if ((((_707 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _708;
  } else {
    goto _709;
  }

_709:
  _707(4, 0, _705, 5);
  goto _708;

_708:
  return;
}


uint8_t gatt_client_discover_characteristic_descriptors_by_handle(l_fptr_1* _710, uint16_t _711, uint16_t _712, uint16_t _713) {
  struct l_struct_struct_OC_gatt_client* _714;
  uint32_t* _715;
  uint32_t _716;
  uint8_t _717;
  uint8_t _717__PHI_TEMPORARY;

  _714 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_711);
  if ((((_714 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _717__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _718;
  } else {
    goto _719;
  }

_719:
  _715 = (&_714->field1);
  _716 = *_715;
  if ((((_716 == 0u)&1))) {
    goto _720;
  } else {
    _717__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _718;
  }

_720:
  *((&_714->field2)) = _710;
  *((&_714->field10)) = _712;
  *((&_714->field11)) = _713;
  *_715 = 9;
   /*tail*/ gatt_client_run();
  _717__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _718;

_718:
  _717 = _717__PHI_TEMPORARY;
  return _717;
}


uint8_t gatt_client_read_value_of_characteristic_using_value_handle(l_fptr_1* _721, uint16_t _722, uint16_t _723) {
  uint32_t _724;
  struct l_struct_struct_OC_gatt_client* _725;
  uint32_t* _726;
  uint32_t _727;
  uint8_t _728;
  uint8_t _728__PHI_TEMPORARY;

  _724 = config_le_gatt_client_num;
  if ((((_724 == 0u)&1))) {
    _728__PHI_TEMPORARY = 84u;   /* for PHI node */
    goto _729;
  } else {
    goto _730;
  }

_730:
  _725 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_722);
  if ((((_725 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _728__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _729;
  } else {
    goto _731;
  }

_731:
  _726 = (&_725->field1);
  _727 = *_726;
  if ((((_727 == 0u)&1))) {
    goto _732;
  } else {
    _728__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _729;
  }

_732:
  *((&_725->field2)) = _721;
  *((&_725->field16)) = _723;
  *((&_725->field17)) = 0;
  *_726 = 15;
   /*tail*/ gatt_client_run();
  _728__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _729;

_729:
  _728 = _728__PHI_TEMPORARY;
  return _728;
}


uint8_t gatt_client_read_value_of_characteristics_by_uuid16(l_fptr_1* _733, uint16_t _734, uint16_t _735, uint16_t _736, uint16_t _737) {
  struct l_struct_struct_OC_gatt_client* _738;
  uint32_t* _739;
  uint32_t _740;
  uint8_t _741;
  uint8_t _741__PHI_TEMPORARY;

  _738 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_734);
  if ((((_738 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _741__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _742;
  } else {
    goto _743;
  }

_743:
  _739 = (&_738->field1);
  _740 = *_739;
  if ((((_740 == 0u)&1))) {
    goto _744;
  } else {
    _741__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _742;
  }

_744:
  *((&_738->field2)) = _733;
  *((&_738->field10)) = _735;
  *((&_738->field11)) = _736;
  *((&_738->field12)) = _735;
  *((&_738->field13)) = _736;
  *((&_738->field8)) = _737;
   /*tail*/ uuid_add_bluetooth_prefix(((&_738->field9.array[((int32_t)0)])), (((uint32_t)(uint16_t)_737)));
  *_739 = 19;
   /*tail*/ gatt_client_run();
  _741__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _742;

_742:
  _741 = _741__PHI_TEMPORARY;
  return _741;
}


uint8_t gatt_client_read_value_of_characteristics_by_uuid128(l_fptr_1* _745, uint16_t _746, uint16_t _747, uint16_t _748, uint8_t* _749) {
  struct l_struct_struct_OC_gatt_client* _750;
  uint32_t* _751;
  uint32_t _752;
  uint8_t* _753;
  uint8_t _754;
  uint8_t _754__PHI_TEMPORARY;

  _750 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_746);
  if ((((_750 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _754__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _755;
  } else {
    goto _756;
  }

_756:
  _751 = (&_750->field1);
  _752 = *_751;
  if ((((_752 == 0u)&1))) {
    goto _757;
  } else {
    _754__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _755;
  }

_757:
  *((&_750->field2)) = _745;
  *((&_750->field10)) = _747;
  *((&_750->field11)) = _748;
  *((&_750->field12)) = _747;
  *((&_750->field13)) = _748;
  *((&_750->field8)) = 0;
  _753 = memcpy(((&_750->field9.array[((int32_t)0)])), _749, 16);
  *_751 = 19;
   /*tail*/ gatt_client_run();
  _754__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _755;

_755:
  _754 = _754__PHI_TEMPORARY;
  return _754;
}


uint8_t gatt_client_read_value_of_characteristic(l_fptr_1* _758, uint16_t _759, struct l_struct_struct_OC_le_characteristic_t* _760) {
  uint16_t _761;
  uint8_t _762;

  _761 = *((&_760->field1));
  _762 =  /*tail*/ gatt_client_read_value_of_characteristic_using_value_handle(_758, _759, _761);
  return _762;
}


uint8_t gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(l_fptr_1* _763, uint16_t _764, uint16_t _765, uint16_t _766) {
  uint32_t _767;
  struct l_struct_struct_OC_gatt_client* _768;
  uint32_t* _769;
  uint32_t _770;
  uint8_t _771;
  uint8_t _771__PHI_TEMPORARY;

  _767 = config_le_gatt_client_num;
  if ((((_767 == 0u)&1))) {
    _771__PHI_TEMPORARY = 84u;   /* for PHI node */
    goto _772;
  } else {
    goto _773;
  }

_773:
  _768 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_764);
  if ((((_768 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _771__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _772;
  } else {
    goto _774;
  }

_774:
  _769 = (&_768->field1);
  _770 = *_769;
  if ((((_770 == 0u)&1))) {
    goto _775;
  } else {
    _771__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _772;
  }

_775:
  *((&_768->field2)) = _763;
  *((&_768->field16)) = _765;
  *((&_768->field17)) = _766;
  *_769 = 17;
   /*tail*/ gatt_client_run();
  _771__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _772;

_772:
  _771 = _771__PHI_TEMPORARY;
  return _771;
}


uint8_t gatt_client_read_long_value_of_characteristic_using_value_handle(l_fptr_1* _776, uint16_t _777, uint16_t _778) {
  uint8_t _779;

  _779 =  /*tail*/ gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(_776, _777, _778, 0);
  return _779;
}


uint8_t gatt_client_read_long_value_of_characteristic(l_fptr_1* _780, uint16_t _781, struct l_struct_struct_OC_le_characteristic_t* _782) {
  uint16_t _783;
  uint8_t _784;

  _783 = *((&_782->field1));
  _784 =  /*tail*/ gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(_780, _781, _783, 0);
  return _784;
}


uint8_t gatt_client_read_multiple_characteristic_values(l_fptr_1* _785, uint16_t _786, uint32_t _787, uint16_t* _788) {
  struct l_struct_struct_OC_gatt_client* _789;
  uint32_t* _790;
  uint32_t _791;
  uint8_t _792;
  uint8_t _792__PHI_TEMPORARY;

  _789 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_786);
  if ((((_789 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _792__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _793;
  } else {
    goto _794;
  }

_794:
  _790 = (&_789->field1);
  _791 = *_790;
  if ((((_791 == 0u)&1))) {
    goto _795;
  } else {
    _792__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _793;
  }

_795:
  *((&_789->field2)) = _785;
  *((&_789->field20)) = (((uint16_t)_787));
  *((&_789->field21)) = _788;
  *_790 = 21;
   /*tail*/ gatt_client_run();
  _792__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _793;

_793:
  _792 = _792__PHI_TEMPORARY;
  return _792;
}


uint8_t gatt_client_write_value_of_characteristic_without_response(uint16_t _796, uint16_t _797, uint16_t _798, uint8_t* _799) {
  struct l_struct_struct_OC_gatt_client* _800;
  uint32_t _801;
  uint32_t _802;
  uint16_t _803;
  uint16_t* _804;
  uint16_t _805;
  uint32_t _806;
  uint16_t _807;
  uint8_t _808;
  uint8_t _808__PHI_TEMPORARY;

  _800 =  /*tail*/ provide_context_for_conn_handle(_796);
  _801 = config_le_gatt_client_num;
  if ((((_801 == 0u)&1))) {
    _808__PHI_TEMPORARY = 84u;   /* for PHI node */
    goto _809;
  } else {
    goto _810;
  }

_810:
  if ((((_800 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _808__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _809;
  } else {
    goto _811;
  }

_811:
  _802 = *((&_800->field1));
  if ((((_802 == 0u)&1))) {
    goto _812;
  } else {
    _808__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _809;
  }

_812:
  _803 =  /*tail*/ peripheral_mtu(_800);
  if ((((((int32_t)(((uint32_t)(uint16_t)_798))) > ((int32_t)(llvm_add_u32((((uint32_t)(uint16_t)_803)), -3))))&1))) {
    _808__PHI_TEMPORARY = 151u;   /* for PHI node */
    goto _809;
  } else {
    goto _813;
  }

_813:
  _804 = (&_800->field3);
  _805 = *_804;
  _806 =  /*tail*/ att_dispatch_client_can_send_now(_805);
  if ((((_806 == 0u)&1))) {
    _808__PHI_TEMPORARY = 148u;   /* for PHI node */
    goto _809;
  } else {
    goto _814;
  }

_814:
  _807 = *_804;
   /*tail*/ att_write_request(82, _807, _797, _798, _799);
  _808__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _809;

_809:
  _808 = _808__PHI_TEMPORARY;
  return _808;
}


static uint16_t peripheral_mtu(struct l_struct_struct_OC_gatt_client* _815) {
  uint16_t* _816;
  uint16_t _817;
  uint16_t _818;
  uint8_t _819;
  uint32_t _820;
  uint16_t _821;
  uint16_t _822;
  uint16_t _823;
  uint16_t _823__PHI_TEMPORARY;

  _816 = (&_815->field6);
  _817 = *_816;
  _818 =  /*tail*/ l2cap_max_le_mtu();
  if ((((((uint16_t)_817) > ((uint16_t)_818))&1))) {
    goto _824;
  } else {
    goto _825;
  }

_824:
  _819 = ble_debug_enable;
  if (((((llvm_and_u8(_819, 4)) == ((uint8_t)0))&1))) {
    goto _826;
  } else {
    goto _827;
  }

_827:
  _820 =  /*tail*/ puts(((&str_OC_24.array[((int32_t)0)])));
  goto _826;

_826:
  _821 =  /*tail*/ l2cap_max_le_mtu();
  _823__PHI_TEMPORARY = _821;   /* for PHI node */
  goto _828;

_825:
  _822 = *_816;
  _823__PHI_TEMPORARY = _822;   /* for PHI node */
  goto _828;

_828:
  _823 = _823__PHI_TEMPORARY;
  return _823;
}


static void att_write_request(uint16_t _829, uint16_t _830, uint16_t _831, uint16_t _832, uint8_t* _833) {
  uint32_t _834;
  uint8_t* _835;
  uint8_t* _836;
  uint32_t _837;

  _834 =  /*tail*/ l2cap_reserve_packet_buffer();
  _835 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_835 = (((uint8_t)_829));
   /*tail*/ little_endian_store_16(_835, 1, _831);
  _836 = memcpy(((&_835[((int32_t)3)])), _833, (((uint32_t)(uint16_t)_832)));
  _837 =  /*tail*/ l2cap_send_prepared_connectionless(_830, 4, (llvm_add_u16(_832, 3)));
}


uint8_t gatt_client_write_value_of_characteristic(l_fptr_1* _838, uint16_t _839, uint16_t _840, uint16_t _841, uint8_t* _842) {
  uint32_t _843;
  struct l_struct_struct_OC_gatt_client* _844;
  uint32_t* _845;
  uint32_t _846;
  uint8_t _847;
  uint8_t _847__PHI_TEMPORARY;

  _843 = config_le_gatt_client_num;
  if ((((_843 == 0u)&1))) {
    _847__PHI_TEMPORARY = 84u;   /* for PHI node */
    goto _848;
  } else {
    goto _849;
  }

_849:
  _844 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_839);
  if ((((_844 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _847__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _848;
  } else {
    goto _850;
  }

_850:
  _845 = (&_844->field1);
  _846 = *_845;
  if ((((_846 == 0u)&1))) {
    goto _851;
  } else {
    _847__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _848;
  }

_851:
  *((&_844->field2)) = _838;
  *((&_844->field16)) = _840;
  *((&_844->field18)) = _841;
  *((&_844->field19)) = _842;
  *_845 = 23;
   /*tail*/ gatt_client_run();
  _847__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _848;

_848:
  _847 = _847__PHI_TEMPORARY;
  return _847;
}


uint8_t gatt_client_write_long_value_of_characteristic_with_offset(l_fptr_1* _852, uint16_t _853, uint16_t _854, uint16_t _855, uint16_t _856, uint8_t* _857) {
  struct l_struct_struct_OC_gatt_client* _858;
  uint32_t* _859;
  uint32_t _860;
  uint8_t _861;
  uint8_t _861__PHI_TEMPORARY;

  _858 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_853);
  if ((((_858 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _861__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _862;
  } else {
    goto _863;
  }

_863:
  _859 = (&_858->field1);
  _860 = *_859;
  if ((((_860 == 0u)&1))) {
    goto _864;
  } else {
    _861__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _862;
  }

_864:
  *((&_858->field2)) = _852;
  *((&_858->field16)) = _854;
  *((&_858->field18)) = _856;
  *((&_858->field17)) = _855;
  *((&_858->field19)) = _857;
  *_859 = 25;
   /*tail*/ gatt_client_run();
  _861__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _862;

_862:
  _861 = _861__PHI_TEMPORARY;
  return _861;
}


uint8_t gatt_client_write_long_value_of_characteristic(l_fptr_1* _865, uint16_t _866, uint16_t _867, uint16_t _868, uint8_t* _869) {
  uint8_t _870;

  _870 =  /*tail*/ gatt_client_write_long_value_of_characteristic_with_offset(_865, _866, _867, 0, _868, _869);
  return _870;
}


uint8_t gatt_client_reliable_write_long_value_of_characteristic(l_fptr_1* _871, uint16_t _872, uint16_t _873, uint16_t _874, uint8_t* _875) {
  struct l_struct_struct_OC_gatt_client* _876;
  uint32_t* _877;
  uint32_t _878;
  uint8_t _879;
  uint8_t _879__PHI_TEMPORARY;

  _876 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_872);
  if ((((_876 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _879__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _880;
  } else {
    goto _881;
  }

_881:
  _877 = (&_876->field1);
  _878 = *_877;
  if ((((_878 == 0u)&1))) {
    goto _882;
  } else {
    _879__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _880;
  }

_882:
  *((&_876->field2)) = _871;
  *((&_876->field16)) = _873;
  *((&_876->field18)) = _874;
  *((&_876->field17)) = 0;
  *((&_876->field19)) = _875;
  *_877 = 27;
   /*tail*/ gatt_client_run();
  _879__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _880;

_880:
  _879 = _879__PHI_TEMPORARY;
  return _879;
}


uint8_t gatt_client_write_client_characteristic_configuration(l_fptr_1* _883, uint16_t _884, struct l_struct_struct_OC_le_characteristic_t* _885, uint16_t _886) {
  struct l_struct_struct_OC_gatt_client* _887;
  uint32_t* _888;
  uint32_t _889;
  uint32_t _890;
  uint16_t _891;
  uint8_t _892;
  uint32_t _893;
  uint16_t _894;
  uint8_t _895;
  uint32_t _896;
  uint16_t _897;
  uint16_t _898;
  uint8_t _899;
  uint8_t _899__PHI_TEMPORARY;

  _887 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_884);
  if ((((_887 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _899__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _900;
  } else {
    goto _901;
  }

_901:
  _888 = (&_887->field1);
  _889 = *_888;
  if ((((_889 == 0u)&1))) {
    goto _902;
  } else {
    _899__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _900;
  }

_902:
  _890 = ((uint32_t)(uint16_t)_886);
  if (((((_890 & 1) == 0u)&1))) {
    goto _903;
  } else {
    goto _904;
  }

_904:
  _891 = *((&_885->field3));
  if (((((llvm_and_u16(_891, 16)) == ((uint16_t)0))&1))) {
    goto _905;
  } else {
    goto _903;
  }

_905:
  _892 = ble_debug_enable;
  if (((((llvm_and_u8(_892, 1)) == ((uint8_t)0))&1))) {
    _899__PHI_TEMPORARY = 152u;   /* for PHI node */
    goto _900;
  } else {
    goto _906;
  }

_906:
  _893 =  /*tail*/ puts(((&str_OC_26.array[((int32_t)0)])));
  _899__PHI_TEMPORARY = 152u;   /* for PHI node */
  goto _900;

_903:
  if (((((_890 & 2) == 0u)&1))) {
    goto _907;
  } else {
    goto _908;
  }

_908:
  _894 = *((&_885->field3));
  if (((((llvm_and_u16(_894, 32)) == ((uint16_t)0))&1))) {
    goto _909;
  } else {
    goto _907;
  }

_909:
  _895 = ble_debug_enable;
  if (((((llvm_and_u8(_895, 1)) == ((uint8_t)0))&1))) {
    _899__PHI_TEMPORARY = 153u;   /* for PHI node */
    goto _900;
  } else {
    goto _910;
  }

_910:
  _896 =  /*tail*/ puts(((&str_OC_25.array[((int32_t)0)])));
  _899__PHI_TEMPORARY = 153u;   /* for PHI node */
  goto _900;

_907:
  *((&_887->field2)) = _883;
  _897 = *((&_885->field1));
  *((&_887->field10)) = _897;
  _898 = *((&_885->field2));
  *((&_887->field11)) = _898;
   /*tail*/ little_endian_store_16(((&_887->field23.array[((int32_t)0)])), 0, _886);
  *_888 = 35;
   /*tail*/ gatt_client_run();
  _899__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _900;

_900:
  _899 = _899__PHI_TEMPORARY;
  return _899;
}


uint8_t gatt_client_read_characteristics_for_handle_range_by_uuid16(l_fptr_1* _911, uint16_t _912, uint16_t _913, uint16_t _914, uint16_t _915) {
  struct l_struct_struct_OC_gatt_client* _916;
  uint32_t* _917;
  uint32_t _918;
  uint8_t _919;
  uint8_t _919__PHI_TEMPORARY;

  _916 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_912);
  if ((((_916 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _919__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _920;
  } else {
    goto _921;
  }

_921:
  _917 = (&_916->field1);
  _918 = *_917;
  if ((((_918 == 0u)&1))) {
    goto _922;
  } else {
    _919__PHI_TEMPORARY = 161u;   /* for PHI node */
    goto _920;
  }

_922:
  *((&_916->field2)) = _911;
  *((&_916->field10)) = _913;
  *((&_916->field11)) = _914;
  *((&_916->field24)) = 0;
  *((&_916->field8)) = _915;
   /*tail*/ sdp_normalize_uuid(((&_916->field9.array[((int32_t)0)])), (((uint32_t)(uint16_t)_915)));
  *((&_916->field15)) = 0;
  *_917 = 7;
   /*tail*/ gatt_client_run();
  _919__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _920;

_920:
  _919 = _919__PHI_TEMPORARY;
  return _919;
}


uint8_t gatt_client_read_characteristics_for_handle_range_by_uuid128(l_fptr_1* _923, uint16_t _924, uint16_t _925, uint16_t _926, uint8_t* _927) {
  struct l_struct_struct_OC_gatt_client* _928;
  uint32_t* _929;
  uint32_t _930;
  uint8_t* _931;
  uint8_t _932;
  uint8_t _932__PHI_TEMPORARY;

  _928 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_924);
  if ((((_928 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _932__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _933;
  } else {
    goto _934;
  }

_934:
  _929 = (&_928->field1);
  _930 = *_929;
  if ((((_930 == 0u)&1))) {
    goto _935;
  } else {
    _932__PHI_TEMPORARY = 161u;   /* for PHI node */
    goto _933;
  }

_935:
  *((&_928->field2)) = _923;
  *((&_928->field10)) = _925;
  *((&_928->field11)) = _926;
  *((&_928->field24)) = 0;
  *((&_928->field8)) = 0;
  _931 = memcpy(((&_928->field9.array[((int32_t)0)])), _927, 16);
  *((&_928->field15)) = 0;
  *_929 = 7;
   /*tail*/ gatt_client_run();
  _932__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _933;

_933:
  _932 = _932__PHI_TEMPORARY;
  return _932;
}


uint8_t gatt_client_read_characteristic_descriptor_using_descriptor_handle(l_fptr_1* _936, uint16_t _937, uint16_t _938) {
  struct l_struct_struct_OC_gatt_client* _939;
  uint32_t* _940;
  uint32_t _941;
  uint8_t _942;
  uint8_t _942__PHI_TEMPORARY;

  _939 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_937);
  if ((((_939 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _942__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _943;
  } else {
    goto _944;
  }

_944:
  _940 = (&_939->field1);
  _941 = *_940;
  if ((((_941 == 0u)&1))) {
    goto _945;
  } else {
    _942__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _943;
  }

_945:
  *((&_939->field2)) = _936;
  *((&_939->field16)) = _938;
  *_940 = 39;
   /*tail*/ gatt_client_run();
  _942__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _943;

_943:
  _942 = _942__PHI_TEMPORARY;
  return _942;
}


uint8_t gatt_client_read_characteristic_descriptor(l_fptr_1* _946, uint16_t _947, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t* _948) {
  uint16_t _949;
  uint8_t _950;

  _949 = *((&_948->field0));
  _950 =  /*tail*/ gatt_client_read_characteristic_descriptor_using_descriptor_handle(_946, _947, _949);
  return _950;
}


uint8_t gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(l_fptr_1* _951, uint16_t _952, uint16_t _953, uint16_t _954) {
  struct l_struct_struct_OC_gatt_client* _955;
  uint32_t* _956;
  uint32_t _957;
  uint8_t _958;
  uint8_t _958__PHI_TEMPORARY;

  _955 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_952);
  if ((((_955 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _958__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _959;
  } else {
    goto _960;
  }

_960:
  _956 = (&_955->field1);
  _957 = *_956;
  if ((((_957 == 0u)&1))) {
    goto _961;
  } else {
    _958__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _959;
  }

_961:
  *((&_955->field2)) = _951;
  *((&_955->field16)) = _953;
  *((&_955->field17)) = _954;
  *_956 = 41;
   /*tail*/ gatt_client_run();
  _958__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _959;

_959:
  _958 = _958__PHI_TEMPORARY;
  return _958;
}


uint8_t gatt_client_read_long_characteristic_descriptor_using_descriptor_handle(l_fptr_1* _962, uint16_t _963, uint16_t _964) {
  uint8_t _965;

  _965 =  /*tail*/ gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(_962, _963, _964, 0);
  return _965;
}


uint8_t gatt_client_read_long_characteristic_descriptor(l_fptr_1* _966, uint16_t _967, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t* _968) {
  uint16_t _969;
  uint8_t _970;

  _969 = *((&_968->field0));
  _970 =  /*tail*/ gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(_966, _967, _969, 0);
  return _970;
}


uint8_t gatt_client_write_characteristic_descriptor_using_descriptor_handle(l_fptr_1* _971, uint16_t _972, uint16_t _973, uint16_t _974, uint8_t* _975) {
  struct l_struct_struct_OC_gatt_client* _976;
  uint32_t* _977;
  uint32_t _978;
  uint8_t _979;
  uint8_t _979__PHI_TEMPORARY;

  _976 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_972);
  if ((((_976 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _979__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _980;
  } else {
    goto _981;
  }

_981:
  _977 = (&_976->field1);
  _978 = *_977;
  if ((((_978 == 0u)&1))) {
    goto _982;
  } else {
    _979__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _980;
  }

_982:
  *((&_976->field2)) = _971;
  *((&_976->field16)) = _973;
  *((&_976->field18)) = _974;
  *((&_976->field17)) = 0;
  *((&_976->field19)) = _975;
  *_977 = 43;
   /*tail*/ gatt_client_run();
  _979__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _980;

_980:
  _979 = _979__PHI_TEMPORARY;
  return _979;
}


uint8_t gatt_client_write_characteristic_descriptor(l_fptr_1* _983, uint16_t _984, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t* _985, uint16_t _986, uint8_t* _987) {
  uint16_t _988;
  uint8_t _989;

  _988 = *((&_985->field0));
  _989 =  /*tail*/ gatt_client_write_characteristic_descriptor_using_descriptor_handle(_983, _984, _988, _986, _987);
  return _989;
}


uint8_t gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(l_fptr_1* _990, uint16_t _991, uint16_t _992, uint16_t _993, uint16_t _994, uint8_t* _995) {
  struct l_struct_struct_OC_gatt_client* _996;
  uint32_t* _997;
  uint32_t _998;
  uint8_t _999;
  uint8_t _999__PHI_TEMPORARY;

  _996 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_991);
  if ((((_996 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _999__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _1000;
  } else {
    goto _1001;
  }

_1001:
  _997 = (&_996->field1);
  _998 = *_997;
  if ((((_998 == 0u)&1))) {
    goto _1002;
  } else {
    _999__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _1000;
  }

_1002:
  *((&_996->field2)) = _990;
  *((&_996->field16)) = _992;
  *((&_996->field18)) = _994;
  *((&_996->field17)) = _993;
  *((&_996->field19)) = _995;
  *_997 = 45;
   /*tail*/ gatt_client_run();
  _999__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1000;

_1000:
  _999 = _999__PHI_TEMPORARY;
  return _999;
}


uint8_t gatt_client_write_long_characteristic_descriptor_using_descriptor_handle(l_fptr_1* _1003, uint16_t _1004, uint16_t _1005, uint16_t _1006, uint8_t* _1007) {
  uint8_t _1008;

  _1008 =  /*tail*/ gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(_1003, _1004, _1005, 0, _1006, _1007);
  return _1008;
}


uint8_t gatt_client_write_long_characteristic_descriptor(l_fptr_1* _1009, uint16_t _1010, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t* _1011, uint16_t _1012, uint8_t* _1013) {
  uint16_t _1014;
  uint8_t _1015;

  _1014 = *((&_1011->field0));
  _1015 =  /*tail*/ gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(_1009, _1010, _1014, 0, _1012, _1013);
  return _1015;
}


uint8_t gatt_client_prepare_write(l_fptr_1* _1016, uint16_t _1017, uint16_t _1018, uint16_t _1019, uint16_t _1020, uint8_t* _1021) {
  struct l_struct_struct_OC_gatt_client* _1022;
  uint32_t* _1023;
  uint32_t _1024;
  uint8_t _1025;
  uint8_t _1025__PHI_TEMPORARY;

  _1022 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_1017);
  if ((((_1022 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _1025__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _1026;
  } else {
    goto _1027;
  }

_1027:
  _1023 = (&_1022->field1);
  _1024 = *_1023;
  if ((((_1024 == 0u)&1))) {
    goto _1028;
  } else {
    _1025__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _1026;
  }

_1028:
  *((&_1022->field2)) = _1016;
  *((&_1022->field16)) = _1018;
  *((&_1022->field18)) = _1020;
  *((&_1022->field17)) = _1019;
  *((&_1022->field19)) = _1021;
  *_1023 = 49;
   /*tail*/ gatt_client_run();
  _1025__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1026;

_1026:
  _1025 = _1025__PHI_TEMPORARY;
  return _1025;
}


uint8_t gatt_client_execute_write(l_fptr_1* _1029, uint16_t _1030) {
  struct l_struct_struct_OC_gatt_client* _1031;
  uint32_t* _1032;
  uint32_t _1033;
  uint8_t _1034;
  uint8_t _1034__PHI_TEMPORARY;

  _1031 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_1030);
  if ((((_1031 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _1034__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _1035;
  } else {
    goto _1036;
  }

_1036:
  _1032 = (&_1031->field1);
  _1033 = *_1032;
  if ((((_1033 == 0u)&1))) {
    goto _1037;
  } else {
    _1034__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _1035;
  }

_1037:
  *((&_1031->field2)) = _1029;
  *_1032 = 29;
   /*tail*/ gatt_client_run();
  _1034__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1035;

_1035:
  _1034 = _1034__PHI_TEMPORARY;
  return _1034;
}


uint8_t gatt_client_cancel_write(l_fptr_1* _1038, uint16_t _1039) {
  struct l_struct_struct_OC_gatt_client* _1040;
  uint32_t* _1041;
  uint32_t _1042;
  uint8_t _1043;
  uint8_t _1043__PHI_TEMPORARY;

  _1040 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_1039);
  if ((((_1040 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _1043__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _1044;
  } else {
    goto _1045;
  }

_1045:
  _1041 = (&_1040->field1);
  _1042 = *_1041;
  if ((((_1042 == 0u)&1))) {
    goto _1046;
  } else {
    _1043__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _1044;
  }

_1046:
  *((&_1040->field2)) = _1038;
  *_1041 = 31;
   /*tail*/ gatt_client_run();
  _1043__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1044;

_1044:
  _1043 = _1043__PHI_TEMPORARY;
  return _1043;
}


void gatt_client_pts_suppress_mtu_exchange(void) {
  *((&gatt_client_global_info.field4)) = 1;
}


void gatt_client_deserialize_service(uint8_t* _1047, uint32_t _1048, struct l_struct_struct_OC_le_service_t* _1049) {
  uint16_t _1050;
  uint16_t _1051;
  uint8_t* _1052;
  uint32_t _1053;
  uint32_t _1054;

  _1050 =  /*tail*/ little_endian_read_16(_1047, _1048);
  *((&_1049->field0)) = _1050;
  _1051 =  /*tail*/ little_endian_read_16(_1047, (llvm_add_u32(_1048, 2)));
  *((&_1049->field1)) = _1051;
  _1052 = (&_1049->field3.array[((int32_t)0)]);
   /*tail*/ reverse_128(((&_1047[((int32_t)(llvm_add_u32(_1048, 4)))])), _1052);
  _1053 =  /*tail*/ uuid_has_bluetooth_prefix(_1052);
  if ((((_1053 == 0u)&1))) {
    goto _1055;
  } else {
    goto _1056;
  }

_1056:
  _1054 =  /*tail*/ big_endian_read_32(_1052, 0);
  *((&_1049->field2)) = (((uint16_t)_1054));
  goto _1055;

_1055:
  return;
}


void gatt_client_deserialize_characteristic(uint8_t* _1057, uint32_t _1058, struct l_struct_struct_OC_le_characteristic_t* _1059) {
  uint16_t _1060;
  uint16_t _1061;
  uint16_t _1062;
  uint16_t _1063;
  uint8_t* _1064;
  uint32_t _1065;
  uint32_t _1066;

  _1060 =  /*tail*/ little_endian_read_16(_1057, _1058);
  *((&_1059->field0)) = _1060;
  _1061 =  /*tail*/ little_endian_read_16(_1057, (llvm_add_u32(_1058, 2)));
  *((&_1059->field1)) = _1061;
  _1062 =  /*tail*/ little_endian_read_16(_1057, (llvm_add_u32(_1058, 4)));
  *((&_1059->field2)) = _1062;
  _1063 =  /*tail*/ little_endian_read_16(_1057, (llvm_add_u32(_1058, 6)));
  *((&_1059->field3)) = _1063;
  _1064 = (&_1059->field5.array[((int32_t)0)]);
   /*tail*/ reverse_128(((&_1057[((int32_t)(llvm_add_u32(_1058, 8)))])), _1064);
  _1065 =  /*tail*/ uuid_has_bluetooth_prefix(_1064);
  if ((((_1065 == 0u)&1))) {
    goto _1067;
  } else {
    goto _1068;
  }

_1068:
  _1066 =  /*tail*/ big_endian_read_32(_1064, 0);
  *((&_1059->field4)) = (((uint16_t)_1066));
  goto _1067;

_1067:
  return;
}


void gatt_client_deserialize_characteristic_descriptor(uint8_t* _1069, uint32_t _1070, struct l_struct_struct_OC_gatt_client_characteristic_descriptor_t* _1071) {
  uint16_t _1072;
  uint8_t* _1073;
  uint32_t _1074;
  uint32_t _1075;

  _1072 =  /*tail*/ little_endian_read_16(_1069, _1070);
  *((&_1071->field0)) = _1072;
  _1073 = (&_1071->field2.array[((int32_t)0)]);
   /*tail*/ reverse_128(((&_1069[((int32_t)(llvm_add_u32(_1070, 2)))])), _1073);
  _1074 =  /*tail*/ uuid_has_bluetooth_prefix(_1073);
  if ((((_1074 == 0u)&1))) {
    goto _1076;
  } else {
    goto _1077;
  }

_1077:
  _1075 =  /*tail*/ big_endian_read_32(_1073, 0);
  *((&_1071->field1)) = (((uint16_t)_1075));
  goto _1076;

_1076:
  return;
}


void gatt_client_listen_for_characteristic_value_updates_simple(struct l_struct_struct_OC_gatt_client_notification* _1078, l_fptr_1* _1079, uint16_t _1080, uint16_t _1081) {
  *((&_1078->field1)) = _1079;
  *((&_1078->field2)) = _1080;
  *((&_1078->field3)) = _1081;
   /*tail*/ btstack_linked_list_add(((&gatt_client_global_info.field1)), ((&_1078->field0)));
}


uint8_t gatt_client_discover_self_characteristic_descriptors(l_fptr_1* _1082, uint16_t _1083) {
  struct l_struct_struct_OC_gatt_client* _1084;
  uint32_t* _1085;
  uint32_t _1086;
  uint8_t _1087;
  uint8_t _1087__PHI_TEMPORARY;

  _1084 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_1083);
  if ((((_1084 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _1087__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _1088;
  } else {
    goto _1089;
  }

_1089:
  _1085 = (&_1084->field1);
  _1086 = *_1085;
  if ((((_1086 == 0u)&1))) {
    goto _1090;
  } else {
    _1087__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _1088;
  }

_1090:
  *((&_1084->field2)) = _1082;
  *((&_1084->field10)) = 1;
  *((&_1084->field11)) = 128;
  *_1085 = 9;
   /*tail*/ gatt_client_run();
  _1087__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1088;

_1088:
  _1087 = _1087__PHI_TEMPORARY;
  return _1087;
}


uint8_t gatt_client_discover_self_characteristics_for_service(l_fptr_1* _1091, uint16_t _1092) {
  struct l_struct_struct_OC_gatt_client* _1093;
  uint32_t* _1094;
  uint32_t _1095;
  uint8_t _1096;
  uint8_t _1096__PHI_TEMPORARY;

  _1093 =  /*tail*/ provide_context_for_conn_handle_and_start_timer(_1092);
  if ((((_1093 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    _1096__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _1097;
  } else {
    goto _1098;
  }

_1098:
  _1094 = (&_1093->field1);
  _1095 = *_1094;
  if ((((_1095 == 0u)&1))) {
    goto _1099;
  } else {
    _1096__PHI_TEMPORARY = 149u;   /* for PHI node */
    goto _1097;
  }

_1099:
  *((&_1093->field2)) = _1091;
  *((&_1093->field10)) = 1;
  *((&_1093->field11)) = 128;
  *((&_1093->field24)) = 0;
  *((&_1093->field15)) = 0;
  *_1094 = 5;
   /*tail*/ gatt_client_run();
  _1096__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1097;

_1097:
  _1096 = _1096__PHI_TEMPORARY;
  return _1096;
}


void call_gatt_client_run(void) {
   /*tail*/ gatt_client_run();
}


uint32_t gatt_client_sync_mtu(uint16_t _1100, uint16_t _1101) {
  struct l_struct_struct_OC_btstack_linked_item* _1102;
  struct l_struct_struct_OC_btstack_linked_item* _1103;
  struct l_struct_struct_OC_btstack_linked_item* _1104;
  struct l_struct_struct_OC_btstack_linked_item* _1104__PHI_TEMPORARY;
  uint16_t _1105;
  struct l_struct_struct_OC_gatt_client* _1106;
  uint8_t _1107;
  uint32_t _1108;
  uint32_t _1109;
  uint32_t _1109__PHI_TEMPORARY;

  _1102 = *((&gatt_client_global_info.field0));
  if ((((_1102 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1109__PHI_TEMPORARY = 147;   /* for PHI node */
    goto _1110;
  } else {
    goto _1111;
  }

_1111:
  _1104__PHI_TEMPORARY = _1102;   /* for PHI node */
  goto _1112;

  do {     /* Syntactic loop '' to make GCC happy */
_1112:
  _1104 = _1104__PHI_TEMPORARY;
  _1105 = *(((uint16_t*)((&_1104[((int32_t)3)]))));
  if ((((_1105 == _1100)&1))) {
    goto _1113;
  } else {
    goto _1114;
  }

_1114:
  _1103 = *((&_1104->field0));
  if ((((_1103 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1115;
  } else {
    _1104__PHI_TEMPORARY = _1103;   /* for PHI node */
    goto _1112;
  }

  } while (1); /* end of syntactic loop '' */
_1113:
  _1106 = ((struct l_struct_struct_OC_gatt_client*)_1104);
  _1107 = ble_debug_enable;
  if (((((llvm_and_u8(_1107, 1)) == ((uint8_t)0))&1))) {
    goto _1116;
  } else {
    goto _1117;
  }

_1117:
  _1108 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), ((&__FUNCTION___OC_gatt_client_sync_mtu.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1101)));
  goto _1116;

_1116:
  *((&_1106->field6)) = _1101;
   /*tail*/ gatt_client_att_emit_mtu_event(_1100, _1101);
  _1109__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1110;

_1115:
  _1109__PHI_TEMPORARY = 147;   /* for PHI node */
  goto _1110;

_1110:
  _1109 = _1109__PHI_TEMPORARY;
  return _1109;
}


static void gatt_client_att_emit_mtu_event(uint16_t _1118, uint16_t _1119) {
  struct l_array_6_uint8_t _1120;    /* Address-exposed local */
  l_fptr_1* _1121;
  uint8_t* _1122;
  l_fptr_1* _1123;

  _1121 = *((&gatt_client_global_info.field3));
  if ((((_1121 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1124;
  } else {
    goto _1125;
  }

_1125:
  _1122 = (&_1120.array[((int32_t)0)]);
  *_1122 = 181u;
  *((&_1120.array[((int32_t)1)])) = 4;
  little_endian_store_16(_1122, 2, _1118);
  little_endian_store_16(_1122, 4, _1119);
  _1123 = *((&gatt_client_global_info.field3));
  _1123(4, 0, _1122, 6);
  goto _1124;

_1124:
  return;
}


static uint8_t hci_event_packet_get_type(uint8_t* _1126) {
  uint8_t _1127;

  _1127 = *_1126;
  return _1127;
}


static void gatt_client_report_error_if_pending(struct l_struct_struct_OC_gatt_client* _1128, uint8_t _1129) {
  uint32_t* _1130;
  uint32_t _1131;

  _1130 = (&_1128->field1);
  _1131 = *_1130;
  if ((((_1131 == 0u)&1))) {
    goto _1132;
  } else {
    goto _1133;
  }

_1133:
  *_1130 = 0;
   /*tail*/ gatt_client_timeout_stop(_1128);
   /*tail*/ emit_gatt_complete_event(_1128, _1129);
  goto _1132;

_1132:
  return;
}


static void gatt_client_timeout_stop(struct l_struct_struct_OC_gatt_client* _1134) {
  uint8_t _1135;
  uint16_t _1136;
  uint32_t _1137;
  uint32_t _1138;

  _1135 = ble_debug_enable;
  if (((((llvm_and_u8(_1135, 1)) == ((uint8_t)0))&1))) {
    goto _1139;
  } else {
    goto _1140;
  }

_1140:
  _1136 = *((&_1134->field3));
  _1137 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1136)));
  goto _1139;

_1139:
  _1138 =  /*tail*/ btstack_run_loop_remove_timer(((&_1134->field28)));
}


static void report_gatt_characteristics(struct l_struct_struct_OC_gatt_client* _1141, uint8_t* _1142, uint16_t _1143) {
  struct l_array_16_uint8_t _1144;    /* Address-exposed local */
  uint8_t _1145;
  uint32_t _1146;
  uint32_t _1147;
  uint8_t* _1148;
  uint8_t* _1149;
  uint8_t* _1150;
  uint16_t* _1151;
  uint16_t* _1152;
  uint16_t* _1153;
  uint8_t* _1154;
  uint32_t _1155;
  uint32_t _1155__PHI_TEMPORARY;
  uint16_t _1156;
  uint8_t _1157;
  uint16_t _1158;
  uint8_t* _1159;
  uint16_t _1160;
  uint16_t _1161;
  uint16_t _1161__PHI_TEMPORARY;
  uint8_t _1162;
  uint32_t _1163;
  uint8_t* _1164;
  uint32_t _1165;

  _1145 = *((&_1142[((int32_t)1)]));
  _1146 = ((uint32_t)(uint8_t)_1145);
  _1147 = ((uint32_t)(uint16_t)_1143);
  if ((((((uint16_t)_1143) > ((uint16_t)((uint16_t)2)))&1))) {
    goto _1166;
  } else {
    goto _1167;
  }

_1166:
  _1148 = (&_1144.array[((int32_t)0)]);
  _1149 = (&_1141->field24);
  _1150 = (&_1141->field14);
  _1151 = (&_1141->field15);
  _1152 = (&_1141->field16);
  _1153 = (&_1141->field8);
  _1154 = (&_1141->field9.array[((int32_t)0)]);
  _1155__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _1168;

  do {     /* Syntactic loop '' to make GCC happy */
_1168:
  _1155 = _1155__PHI_TEMPORARY;
  _1156 = little_endian_read_16(_1142, _1155);
  _1157 = *((&_1142[((int32_t)(llvm_add_u32(_1155, 2)))]));
  _1158 = little_endian_read_16(_1142, (llvm_add_u32(_1155, 3)));
  characteristic_end_found(_1141, (llvm_add_u16(_1156, -1)));
  _1159 = (&_1142[((int32_t)(llvm_add_u32(_1155, 5)))]);
  if ((((_1145 == ((uint8_t)7))&1))) {
    goto _1169;
  } else {
    goto _1170;
  }

_1170:
  reverse_128(_1159, _1148);
  _1161__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1171;

_1169:
  _1160 = little_endian_read_16(_1159, 0);
  uuid_add_bluetooth_prefix(_1148, (((uint32_t)(uint16_t)_1160)));
  _1161__PHI_TEMPORARY = _1160;   /* for PHI node */
  goto _1171;

_1171:
  _1161 = _1161__PHI_TEMPORARY;
  _1162 = *_1149;
  if ((((_1162 == ((uint8_t)0))&1))) {
    goto _1172;
  } else {
    goto _1173;
  }

_1173:
  _1163 = memcmp(_1154, _1148, 16);
  if ((((_1163 == 0u)&1))) {
    goto _1174;
  } else {
    goto _1175;
  }

_1174:
  *_1150 = _1157;
  *_1151 = _1156;
  *_1152 = _1158;
  goto _1175;

_1172:
  *_1150 = _1157;
  *_1151 = _1156;
  *_1152 = _1158;
  *_1153 = _1161;
  _1164 = memcpy(_1154, _1148, 16);
  goto _1175;

_1175:
  _1165 = llvm_add_u32(_1155, _1146);
  if ((((((int32_t)_1165) < ((int32_t)_1147))&1))) {
    _1155__PHI_TEMPORARY = _1165;   /* for PHI node */
    goto _1168;
  } else {
    goto _1176;
  }

  } while (1); /* end of syntactic loop '' */
_1176:
  goto _1167;

_1167:
  return;
}


static void report_gatt_characteristic_value(struct l_struct_struct_OC_gatt_client* _1177, uint16_t _1178, uint8_t* _1179, uint16_t _1180) {
  uint16_t _1181;
  uint8_t* _1182;
  l_fptr_1* _1183;

  _1181 = *((&_1177->field3));
  _1182 =  /*tail*/ setup_characteristic_value_packet(165u, _1181, _1178, _1179, _1180);
  _1183 = *((&_1177->field2));
  if ((((_1183 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1184;
  } else {
    goto _1185;
  }

_1185:
   /*tail*/ _1183(4, 0, _1182, (llvm_add_u16(_1180, 8)));
  goto _1184;

_1184:
  return;
}


static void emit_gatt_service_query_result_event(struct l_struct_struct_OC_gatt_client* _1186, uint16_t _1187, uint16_t _1188, uint8_t* _1189) {
  struct l_array_24_uint8_t _1190;    /* Address-exposed local */
  uint8_t* _1191;
  uint16_t _1192;
  l_fptr_1* _1193;

  _1191 = (&_1190.array[((int32_t)0)]);
  *_1191 = 161u;
  *((&_1190.array[((int32_t)1)])) = 22;
  _1192 = *((&_1186->field3));
  little_endian_store_16(_1191, 2, _1192);
  little_endian_store_16(_1191, 4, _1187);
  little_endian_store_16(_1191, 6, _1188);
  reverse_128(_1189, ((&_1190.array[((int32_t)8)])));
  _1193 = *((&_1186->field2));
  if ((((_1193 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1194;
  } else {
    goto _1195;
  }

_1195:
  _1193(4, 0, _1191, 24);
  goto _1194;

_1194:
  return;
}


static uint32_t is_value_valid(struct l_struct_struct_OC_gatt_client* _1196, uint8_t* _1197, uint16_t _1198) {
  uint16_t _1199;
  uint16_t _1200;
  uint16_t _1201;
  uint16_t _1202;
  uint8_t* _1203;
  uint32_t _1204;
  uint32_t _1205;
  uint32_t _1206;
  uint32_t _1206__PHI_TEMPORARY;

  _1199 =  /*tail*/ little_endian_read_16(_1197, 1);
  _1200 =  /*tail*/ little_endian_read_16(_1197, 3);
  _1201 = *((&_1196->field16));
  if ((((_1201 == _1199)&1))) {
    goto _1207;
  } else {
    _1206__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1208;
  }

_1207:
  _1202 = *((&_1196->field17));
  if ((((_1202 == _1200)&1))) {
    goto _1209;
  } else {
    _1206__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1208;
  }

_1209:
  _1203 = *((&_1196->field19));
  _1204 =  /*tail*/ memcmp(((&_1203[((int32_t)(((uint32_t)(uint16_t)_1200)))])), ((&_1197[((int32_t)5)])), (llvm_add_u32((((uint32_t)(uint16_t)_1198)), -5)));
  _1205 = ((uint32_t)(bool)(((_1204 == 0u)&1)));
  _1206__PHI_TEMPORARY = _1205;   /* for PHI node */
  goto _1208;

_1208:
  _1206 = _1206__PHI_TEMPORARY;
  return _1206;
}


static void characteristic_end_found(struct l_struct_struct_OC_gatt_client* _1210, uint16_t _1211) {
  struct l_array_28_uint8_t _1212;    /* Address-exposed local */
  uint16_t* _1213;
  uint16_t _1214;
  uint16_t _1215;
  uint8_t _1216;
  uint8_t* _1217;
  uint16_t _1218;
  l_fptr_1* _1219;

  _1213 = (&_1210->field15);
  _1214 = *_1213;
  if ((((_1214 == ((uint16_t)0))&1))) {
    goto _1220;
  } else {
    goto _1221;
  }

_1221:
  _1215 = *((&_1210->field16));
  _1216 = *((&_1210->field14));
  _1217 = (&_1212.array[((int32_t)0)]);
  *_1217 = 162u;
  *((&_1212.array[((int32_t)1)])) = 26;
  _1218 = *((&_1210->field3));
  little_endian_store_16(_1217, 2, _1218);
  little_endian_store_16(_1217, 4, _1214);
  little_endian_store_16(_1217, 6, _1215);
  little_endian_store_16(_1217, 8, _1211);
  little_endian_store_16(_1217, 10, (((uint16_t)(uint8_t)_1216)));
  reverse_128(((&_1210->field9.array[((int32_t)0)])), ((&_1212.array[((int32_t)12)])));
  _1219 = *((&_1210->field2));
  if ((((_1219 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1222;
  } else {
    goto _1223;
  }

_1223:
  _1219(4, 0, _1217, 28);
  goto _1222;

_1222:
  *_1213 = 0;
  goto _1220;

_1220:
  return;
}


static uint8_t* setup_characteristic_value_packet(uint8_t _1224, uint16_t _1225, uint16_t _1226, uint8_t* _1227, uint16_t _1228) {
  uint8_t* _1229;

  _1229 = (&_1227[((int32_t)-8)]);
  *_1229 = _1224;
  *((&_1227[((int32_t)-7)])) = (llvm_add_u8((((uint8_t)_1228)), 6));
   /*tail*/ little_endian_store_16(_1229, 2, _1225);
   /*tail*/ little_endian_store_16(_1229, 4, _1226);
   /*tail*/ little_endian_store_16(_1229, 6, _1228);
  return _1229;
}


static void emit_event_to_registered_listeners(uint8_t* _1230, uint16_t _1231) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _1232;    /* Address-exposed local */
  uint8_t* _1233;
  uint32_t _1234;
  struct l_struct_struct_OC_btstack_linked_item* _1235;
  l_fptr_1* _1236;
  uint32_t _1237;

  _1233 = ((uint8_t*)(&_1232));
  btstack_linked_list_iterator_init((&_1232), ((&gatt_client_global_info.field1)));
  _1234 = btstack_linked_list_iterator_has_next((&_1232));
  if ((((_1234 == 0u)&1))) {
    goto _1238;
  } else {
    goto _1239;
  }

_1239:
  goto _1240;

  do {     /* Syntactic loop '' to make GCC happy */
_1240:
  _1235 = btstack_linked_list_iterator_next((&_1232));
  _1236 = *(((l_fptr_1**)((&_1235[((int32_t)1)]))));
  if ((((_1236 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1241;
  } else {
    goto _1242;
  }

_1242:
  _1236(4, 0, _1230, _1231);
  goto _1241;

_1241:
  _1237 = btstack_linked_list_iterator_has_next((&_1232));
  if ((((_1237 == 0u)&1))) {
    goto _1243;
  } else {
    goto _1240;
  }

  } while (1); /* end of syntactic loop '' */
_1243:
  goto _1238;

_1238:
  return;
}


static void trigger_next_query(struct l_struct_struct_OC_gatt_client* _1244, uint16_t _1245, uint32_t _1246) {
  uint16_t _1247;

  _1247 = *((&_1244->field11));
  if ((((((uint16_t)_1247) > ((uint16_t)_1245))&1))) {
    goto _1248;
  } else {
    goto _1249;
  }

_1249:
  *((&_1244->field1)) = 0;
   /*tail*/ gatt_client_timeout_stop(_1244);
   /*tail*/ emit_gatt_complete_event(_1244, 0);
  goto _1250;

_1248:
  *((&_1244->field10)) = (llvm_add_u16(_1245, 1));
  *((&_1244->field1)) = _1246;
  goto _1250;

_1250:
  return;
}


static void emit_gatt_included_service_query_result_event(struct l_struct_struct_OC_gatt_client* _1251, uint16_t _1252, uint16_t _1253, uint16_t _1254, uint8_t* _1255) {
  struct l_array_26_uint8_t _1256;    /* Address-exposed local */
  uint8_t* _1257;
  uint16_t _1258;
  l_fptr_1* _1259;

  _1257 = (&_1256.array[((int32_t)0)]);
  *_1257 = 163u;
  *((&_1256.array[((int32_t)1)])) = 24;
  _1258 = *((&_1251->field3));
  little_endian_store_16(_1257, 2, _1258);
  little_endian_store_16(_1257, 4, _1252);
  little_endian_store_16(_1257, 6, _1253);
  little_endian_store_16(_1257, 8, _1254);
  reverse_128(_1255, ((&_1256.array[((int32_t)10)])));
  _1259 = *((&_1251->field2));
  if ((((_1259 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1260;
  } else {
    goto _1261;
  }

_1261:
  _1259(4, 0, _1257, 26);
  goto _1260;

_1260:
  return;
}


static uint8_t* setup_long_characteristic_value_packet(uint8_t _1262, uint16_t _1263, uint16_t _1264, uint16_t _1265, uint8_t* _1266, uint16_t _1267) {
  uint8_t* _1268;

  _1268 = (&_1266[((int32_t)-10)]);
  *_1268 = _1262;
  *((&_1266[((int32_t)-9)])) = (llvm_add_u8((((uint8_t)_1267)), 8));
   /*tail*/ little_endian_store_16(_1268, 2, _1263);
   /*tail*/ little_endian_store_16(_1268, 4, _1264);
   /*tail*/ little_endian_store_16(_1268, 6, _1265);
   /*tail*/ little_endian_store_16(_1268, 8, _1267);
  return _1268;
}


static uint16_t write_blob_length(struct l_struct_struct_OC_gatt_client* _1269) {
  uint16_t _1270;
  uint16_t _1271;
  uint16_t _1272;
  uint16_t _1273;
  uint16_t _1274;
  uint16_t _1275;
  uint16_t _1276;
  uint16_t _1276__PHI_TEMPORARY;

  _1270 =  /*tail*/ peripheral_mtu(_1269);
  _1271 = llvm_add_u16(_1270, -5);
  _1272 = *((&_1269->field17));
  _1273 = *((&_1269->field18));
  if ((((((uint16_t)_1273) > ((uint16_t)_1272))&1))) {
    goto _1277;
  } else {
    _1276__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1278;
  }

_1277:
  _1274 = llvm_sub_u16(_1273, _1272);
  _1275 = llvm_select_u16((((((uint16_t)_1271) > ((uint16_t)_1274))&1)), _1274, _1271);
  _1276__PHI_TEMPORARY = _1275;   /* for PHI node */
  goto _1278;

_1278:
  _1276 = _1276__PHI_TEMPORARY;
  return _1276;
}


static void gatt_client_timeout_handler(struct l_struct_struct_OC_btstack_timer_source* _1279) {
  struct l_struct_struct_OC_gatt_client* _1280;
  uint8_t _1281;
  uint16_t _1282;
  uint32_t _1283;

  _1280 = *(((struct l_struct_struct_OC_gatt_client**)((&_1279->field4))));
  if ((((_1280 == ((struct l_struct_struct_OC_gatt_client*)/*NULL*/0))&1))) {
    goto _1284;
  } else {
    goto _1285;
  }

_1285:
  _1281 = ble_debug_enable;
  if (((((llvm_and_u8(_1281, 1)) == ((uint8_t)0))&1))) {
    goto _1286;
  } else {
    goto _1287;
  }

_1287:
  _1282 = *((&_1280->field3));
  _1283 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1282)));
  goto _1286;

_1286:
   /*tail*/ gatt_client_report_error_if_pending(_1280, 127u);
  goto _1284;

_1284:
  return;
}


static void send_gatt_characteristic_request(struct l_struct_struct_OC_gatt_client* _1288) {
  uint8_t _1289;
  uint16_t _1290;
  uint16_t _1291;
  uint16_t _1292;
  uint32_t _1293;
  uint8_t* _1294;
  uint32_t _1295;
  uint16_t _1296;
  uint16_t _1297;
  uint16_t _1298;
  uint16_t _1299;

  _1289 = *((&_1288->field24));
  if ((((_1289 == ((uint8_t)0))&1))) {
    goto _1300;
  } else {
    goto _1301;
  }

_1300:
  _1290 = *((&_1288->field3));
  _1291 = *((&_1288->field10));
  _1292 = *((&_1288->field11));
  _1293 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1294 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1294 = 8;
   /*tail*/ bt_store_16(_1294, 1, _1291);
   /*tail*/ bt_store_16(_1294, 3, _1292);
   /*tail*/ bt_store_16(_1294, 5, 10243);
  _1295 =  /*tail*/ l2cap_send_prepared_connectionless(_1290, 4, 7);
  goto _1302;

_1301:
  _1296 = *((&_1288->field8));
  _1297 = *((&_1288->field3));
  _1298 = *((&_1288->field10));
  _1299 = *((&_1288->field11));
  if ((((_1296 == ((uint16_t)0))&1))) {
    goto _1303;
  } else {
    goto _1304;
  }

_1303:
   /*tail*/ att_read_by_type_or_group_request_for_uuid128(((&_1288->field9.array[((int32_t)0)])), _1297, _1298, _1299);
  goto _1302;

_1304:
   /*tail*/ att_read_by_type_or_group_request_for_uuid16(8, _1296, _1297, _1298, _1299);
  goto _1302;

_1302:
  return;
}


static void send_gatt_read_blob_request(struct l_struct_struct_OC_gatt_client* _1305) {
  uint16_t _1306;
  uint16_t _1307;
  uint16_t _1308;
  uint32_t _1309;
  uint8_t* _1310;
  uint32_t _1311;

  _1306 = *((&_1305->field3));
  _1307 = *((&_1305->field16));
  _1308 = *((&_1305->field17));
  _1309 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1310 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1310 = 12;
   /*tail*/ little_endian_store_16(_1310, 1, _1307);
   /*tail*/ little_endian_store_16(_1310, 3, _1308);
  _1311 =  /*tail*/ l2cap_send_prepared_connectionless(_1306, 4, 5);
}


static void send_gatt_prepare_write_request(struct l_struct_struct_OC_gatt_client* _1312) {
  uint16_t _1313;
  uint16_t _1314;
  uint16_t _1315;
  uint16_t _1316;
  uint8_t* _1317;
  uint32_t _1318;
  uint8_t* _1319;
  uint8_t* _1320;
  uint32_t _1321;

  _1313 = *((&_1312->field3));
  _1314 = *((&_1312->field16));
  _1315 = *((&_1312->field17));
  _1316 =  /*tail*/ write_blob_length(_1312);
  _1317 = *((&_1312->field19));
  _1318 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1319 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1319 = 22;
   /*tail*/ little_endian_store_16(_1319, 1, _1314);
   /*tail*/ little_endian_store_16(_1319, 3, _1315);
  _1320 = memcpy(((&_1319[((int32_t)5)])), ((&_1317[((int32_t)(((uint32_t)(uint16_t)_1315)))])), (((uint32_t)(uint16_t)_1316)));
  _1321 =  /*tail*/ l2cap_send_prepared_connectionless(_1313, 4, (llvm_add_u16(_1316, 5)));
}


static void att_read_by_type_or_group_request_for_uuid16(uint16_t _1322, uint16_t _1323, uint16_t _1324, uint16_t _1325, uint16_t _1326) {
  uint32_t _1327;
  uint8_t* _1328;
  uint32_t _1329;

  _1327 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1328 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1328 = (((uint8_t)_1322));
   /*tail*/ little_endian_store_16(_1328, 1, _1325);
   /*tail*/ little_endian_store_16(_1328, 3, _1326);
   /*tail*/ little_endian_store_16(_1328, 5, _1323);
  _1329 =  /*tail*/ l2cap_send_prepared_connectionless(_1324, 4, 7);
}


static void att_find_by_type_value_request(uint16_t _1330, uint16_t _1331, uint16_t _1332, uint8_t* _1333, uint16_t _1334) {
  uint32_t _1335;
  uint8_t* _1336;
  uint8_t* _1337;
  uint32_t _1338;

  _1335 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1336 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1336 = 6;
   /*tail*/ little_endian_store_16(_1336, 1, _1331);
   /*tail*/ little_endian_store_16(_1336, 3, _1332);
   /*tail*/ little_endian_store_16(_1336, 5, 10240);
  _1337 = memcpy(((&_1336[((int32_t)7)])), _1333, (((uint32_t)(uint16_t)_1334)));
  _1338 =  /*tail*/ l2cap_send_prepared_connectionless(_1330, 4, (llvm_add_u16(_1334, 7)));
}


static void att_read_by_type_or_group_request_for_uuid128(uint8_t* _1339, uint16_t _1340, uint16_t _1341, uint16_t _1342) {
  uint32_t _1343;
  uint8_t* _1344;
  uint32_t _1345;

  _1343 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1344 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1344 = 8;
   /*tail*/ little_endian_store_16(_1344, 1, _1341);
   /*tail*/ little_endian_store_16(_1344, 3, _1342);
   /*tail*/ reverse_128(_1339, ((&_1344[((int32_t)5)])));
  _1345 =  /*tail*/ l2cap_send_prepared_connectionless(_1340, 4, 21);
}


static void att_read_request(uint16_t _1346, uint16_t _1347) {
  uint32_t _1348;
  uint8_t* _1349;
  uint32_t _1350;

  _1348 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1349 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1349 = 10;
   /*tail*/ little_endian_store_16(_1349, 1, _1347);
  _1350 =  /*tail*/ l2cap_send_prepared_connectionless(_1346, 4, 3);
}


static void att_execute_write_request(uint16_t _1351, uint8_t _1352) {
  uint32_t _1353;
  uint8_t* _1354;
  uint32_t _1355;

  _1353 =  /*tail*/ l2cap_reserve_packet_buffer();
  _1354 =  /*tail*/ l2cap_get_outgoing_buffer();
  *_1354 = 24;
  *((&_1354[((int32_t)1)])) = _1352;
  _1355 =  /*tail*/ l2cap_send_prepared_connectionless(_1351, 4, 2);
}

