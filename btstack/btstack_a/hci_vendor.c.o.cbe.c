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
struct l_struct_struct_OC_hci_cmd_t;
struct l_struct_struct_OC___inquiry_result_t;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_le_connection_parameter_range;
struct l_struct_struct_OC___le_hci_stack;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_btstack_packet_callback_registration_t;
struct l_struct_struct_OC_sm_connection;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_server_t;
struct l_struct_struct_OC___le_hci_connection;
struct l_struct_struct_OC_btstack_linked_list_iterator_t;

/* Function definitions */
typedef void l_fptr_8(uint8_t*, uint32_t);

typedef uint32_t l_fptr_6(void);

typedef void l_fptr_12(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_9(void);

typedef void l_fptr_16(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_15(uint8_t);

typedef void l_fptr_5(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_17(uint16_t, uint8_t);

typedef void l_fptr_11(uint32_t);

typedef void l_fptr_14(void);

typedef uint8_t l_fptr_1(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_2(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_4(void);

typedef void l_fptr_7(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_10(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef uint32_t l_fptr_13(uint8_t*, uint8_t, uint8_t);

typedef uint8_t l_fptr_3(void);


struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t);

struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t);

/* Types Definitions */
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_1_uint8_t {
  uint8_t array[1];
};
struct l_struct_struct_OC_hci_cmd_t {
  uint16_t field0;
  uint8_t* field1;
};
struct l_struct_struct_OC___inquiry_result_t {
  struct l_array_8_uint8_t field0;
  uint8_t field1;
  struct l_array_6_uint8_t field2;
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
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
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_le_connection_parameter_range {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  uint16_t field5;
};
struct l_array_525_uint8_t {
  uint8_t array[525];
};
struct l_struct_struct_OC___le_hci_stack {
  struct l_struct_struct_OC_btstack_linked_item* field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_array_525_uint8_t field2;
  uint8_t field3;
  uint16_t field4;
  uint16_t field5;
  uint8_t field6;
  uint16_t field7;
  struct l_struct_struct_OC_le_connection_parameter_range field8;
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_7* field0;
  l_fptr_2* field1;
  l_fptr_8* field2;
  l_fptr_9* field3;
  l_fptr_5* field4;
  l_fptr_10* field5;
  l_fptr_9* field6;
  l_fptr_11* field7;
  l_fptr_12* field8;
  l_fptr_13* field9;
  l_fptr_14* field10;
  l_fptr_15* field11;
  l_fptr_1* field12;
  l_fptr_5* field13;
  l_fptr_9* field14;
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_58_uint8_t {
  uint8_t array[58];
};
struct l_array_43_uint8_t {
  uint8_t array[43];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_49_uint8_t {
  uint8_t array[49];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_110_uint8_t {
  uint8_t array[110];
};
struct l_array_76_uint8_t {
  uint8_t array[76];
};
struct l_array_82_uint8_t {
  uint8_t array[82];
};
struct l_array_80_uint8_t {
  uint8_t array[80];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_5* field1;
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_53_uint8_t {
  uint8_t array[53];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_249_uint8_t {
  uint8_t array[249];
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_16* field3;
  uint8_t* field4;
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
  l_fptr_17* field11;
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
struct l_array_258_uint8_t {
  uint8_t array[258];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern struct l_array_16_uint8_t last_device_connect_linkkey;
extern uint8_t l2cap_debug_enable;
extern uint32_t config_delete_link_key;
extern uint32_t config_stack_modules;
extern uint32_t config_btctler_modules;
extern uint8_t hci_inquiry_support;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern uint8_t a2dp_source_bqb_support;
extern uint32_t config_btctler_le_tws;
extern uint8_t tws_auto_pair_enable;
extern uint32_t config_asser;
extern uint32_t config_vendor_le_bb;

/* Function Declarations */
void set_start_search_spp_device(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* connection_address_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* lmp_private_remote_addr_for_handler(uint32_t);
uint32_t connection_handler_for_address(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t lmp_private_handler_for_remote_addr(uint8_t*, uint32_t);
uint8_t hci_number_outgoing_packets(uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint8_t* bt_get_mac_addr(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t* bt_get_local_name(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t* bt_get_hid_name(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t* bt_get_emitter_pin_code(uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t* bt_get_pin_code(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t get_remote_dev_info_index(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void hci_emit_state(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void hci_emit_nr_connections_delete(uint8_t, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_flip_addr(uint8_t*, uint8_t*);
void l2cap_packet_handler(uint8_t, uint8_t*, uint16_t);
void hci_emit_btstack_version(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_store_16(uint8_t*, uint16_t, uint16_t);
void hci_emit_remote_name_cached(struct l_array_6_uint8_t*, struct l_array_249_uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_bd_addr_and_type(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_iterator_init(struct l_struct_struct_OC_btstack_linked_list_iterator_t*, struct l_struct_struct_OC_btstack_linked_item**);
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
void read_remote_name_handle(uint8_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint8_t* get_last_device_connect_linkkey(uint16_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_event_handler(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
uint32_t lmp_hci_set_connection_encryption(uint16_t, uint32_t);
void delete_link_key(struct l_array_6_uint8_t*, uint8_t);
uint32_t lmp_hci_disconnect(uint16_t, uint8_t);
uint16_t get_ble_link_handle(void);
void lmp_hci_write_link_supervision_timeout(uint16_t, uint32_t);
uint8_t get_is_in_background_flag(int, ...);
void os_time_dly(uint32_t);
void lmp_hci_io_capability_request_reply(uint8_t*, uint8_t, uint8_t, uint8_t);
uint32_t little_endian_read_32(uint8_t*, uint32_t);
void le_hci_emit_event(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t little_endian_read_16(uint8_t*, uint32_t);
struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t update_multi_bd_status(uint8_t*, uint8_t, uint8_t);
void lmp_hci_accept_connection_request(uint8_t*, uint8_t);
void lmp_hci_accept_sco_connection_request(uint8_t*, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint16_t);
void lmp_hci_reject_connection_request(uint8_t*, uint8_t);
void updata_last_link_key(struct l_array_6_uint8_t*, uint8_t);
uint8_t handle_remote_dev_type(struct l_array_6_uint8_t*, uint8_t);
uint8_t remote_dev_company_ioctrl(uint8_t*, uint8_t, uint8_t);
void sdp_callback_remote_type(uint8_t);
uint32_t get_link_key(struct l_array_6_uint8_t*, struct l_array_16_uint8_t*, uint8_t);
uint32_t get_support_profile(struct l_array_6_uint8_t*, uint8_t);
void lmp_hci_link_key_request_reply(uint8_t*, uint8_t*);
void lmp_hci_link_key_request_negative_reply(uint8_t*);
void put_link_key(struct l_array_6_uint8_t*, struct l_array_16_uint8_t*, uint8_t, uint8_t);
void lmp_hci_pin_code_request_reply(uint8_t*, uint8_t, uint8_t*);
static void hci_event_inquiry_result(uint8_t*, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow));
void hci_release_packet_buffer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint8_t hci_subevent_le_enhanced_connection_complete_get_status(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static uint8_t* hci_subevent_le_enhanced_connection_complete_get_peer_addresss_ptr(uint8_t*) __ATTRIBUTELIST__((nothrow, const));
static uint8_t hci_subevent_le_enhanced_connection_complete_get_peer_address_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* bd_addr_to_str(uint8_t*);
void btstack_memory_le_hci_connection_free(uint8_t*);
static struct l_struct_struct_OC___le_hci_connection* le_create_connection_for_bd_addr_and_type(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint8_t hci_subevent_le_enhanced_connection_complete_get_role(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static uint16_t hci_subevent_le_enhanced_connection_complete_get_connection_handle(uint8_t*) __ATTRIBUTELIST__((nothrow));
void hci_ll_get_device_address(uint8_t*, uint8_t*);
uint32_t le_controller_get_mac(uint8_t*);
static void hci_run_for_acl_data_send(void) __ATTRIBUTELIST__((nothrow));
void lmp_hci_host_num_of_completed_packets(uint16_t, uint16_t);
void hci_edr_acl_handler(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_private_free_acl_packet(uint8_t*);
void lmp_hci_private_try_free_acl_packet(uint8_t*);
void hci_ble_acl_handler(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void ll_hci_private_free_dma_rx(uint8_t*);
void hci_acl_handler(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hci_le_get_acl_packet_num(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hci_le_get_connect_flag(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_le_send_acl_packet_buffer(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_can_send_prepared_acl_packet_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void le_hci_send_acl_packet_fragments(struct l_struct_struct_OC___le_hci_connection*) __ATTRIBUTELIST__((nothrow));
uint8_t* hci_get_outgoing_acl_packet_buffer_test(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_send_acl_packet_buffer(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_hci_send_packet(uint8_t*, uint32_t);
uint8_t* hci_get_outgoing_acl_packet_buffer(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* lmp_private_get_tx_packet_buffer(uint32_t);
uint32_t bredr_hci_send_acl_packet(uint8_t*, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_hold_acl_packet(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_private_hold_acl_packet(uint8_t*);
void hci_free_acl_packet(uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void set_hid_independent_info(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t strlen(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
void lmp_hci_write_local_address(uint8_t*);
void lmp_hci_write_class_of_device(uint32_t);
void lmp_hci_write_local_name(uint8_t*);
void btstack_hci_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_hci_reset(int, ...);
void lmp_hci_write_simple_pairing_mode(uint8_t);
void lmp_hci_write_page_timeout(uint16_t);
void lmp_hci_write_super_timeout(uint16_t);
uint8_t* tws_set_auto_pair_code(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void tws_le_acc_generation_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t tws_le_acc_generation(uint8_t*);
uint32_t syscfg_read(uint16_t, uint8_t*, uint16_t);
uint32_t syscfg_write(uint16_t, uint8_t*, uint16_t);
void tws_le_adv_scan_parm_init(void);
uint32_t tws_le_get_pair_aa(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint32_t tws_le_get_connect_aa(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t tws_le_get_search_aa(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_tws_le_aa(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void tws_api_set_connect_aa(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* get_tws_internal_addr(uint32_t);
void tws_api_set_connect_aa_allways(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void tws_api_clear_connect_aa(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* ble_get_mac_addr(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void ble_hci_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void ll_hci_set_event_mask(uint8_t*);
void dev_hci_set_event_mask(uint8_t*);
uint16_t ll_hci_get_acl_data_len(void);
uint16_t ll_hci_get_acl_total_num(void);
void hci_connectable_control(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t lmp_private_get_esco_conn_num(void);
uint32_t lmp_hci_write_scan_enable(uint8_t);
void hci_discoverable_control(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_hci_scan_value(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void hci_cancle_page(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_cancel_page(int, ...);
void hci_connection_cancel(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_connection_cancel(uint8_t*);
void hci_inquiry_start(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_inquiry(uint32_t, uint8_t, uint8_t);
void hci_cancel_inquiry(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_cancel_inquiry(int, ...);
void hci_set_sniff_mode(uint32_t, uint8_t, uint8_t*, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_exit_sniff_mode_command(uint16_t);
void lmp_hci_sniff_mode_command(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t);
void hci_tx_channel_chassification(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_tx_channel_chassification(uint8_t*);
uint16_t hci_usable_acl_packet_types(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint16_t hci_max_acl_data_packet_length(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void hci_create_connection_cmd(uint8_t*, uint16_t, uint8_t, uint8_t, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_create_connection(uint8_t*, uint16_t, uint8_t, uint8_t, uint16_t, uint8_t);
void hci_disconnect_cmd(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_test_box_key_cmd(uint8_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_hci_test_key_cmd(uint8_t, uint16_t);
void hci_send_user_info_cmd(uint32_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_hci_send_user_info_cmd(uint32_t, uint16_t);
void hci_disconnect_all_standard_connect(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hci_standard_link_check(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_bredr_link_state(int, ...);
uint8_t hci_standard_connect_check(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t lmp_standard_connect_check(void);
uint8_t sco_connection_disconnect(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t sco_connection_setup(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_setup_sync_connection(uint16_t, uint32_t, uint32_t, uint16_t, uint16_t, uint8_t, uint16_t);
uint8_t sco_connection_setup_dis(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_remote_name_request_cmd(uint8_t*, uint8_t, uint8_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_remote_name_request(uint8_t*, uint8_t, uint16_t);
uint32_t hci_power_control(uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_non_flushable_packet_boundary_flag_supported(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_can_send_acl_packet_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_reserve_packet_buffer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_connections_get_iterator(struct l_struct_struct_OC_btstack_linked_list_iterator_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_disconnect_security_block(uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_can_send_command_packet_now(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_can_send_acl_classic_packet_now(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t gap_ssp_supported_on_both_sides(uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t gap_get_connection_type(uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_authentication_active_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void gap_drop_link_key_for_bd_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void gap_request_security_level(uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t hci_get_state(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void hci_event_callback_set(l_fptr_5*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_add_event_handler(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_is_packet_buffer_reserved(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void hci_register_acl_packet_handler(l_fptr_5*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void gap_connectable_control(uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void hci_le_advertisements_set_params(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void gap_advertisements_set_data(uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void gap_advertisements_enable(uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void lmp_hci_le_encrypt(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t le_hci_connection_links_empty(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item**);
uint32_t hci_number_free_acl_slots_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t hci_number_free_acl_slots_for_connection_type(uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint32_t hci_can_send_acl_le_packet_now(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void gap_le_get_own_address(uint16_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swapX(uint8_t*, uint8_t*, uint32_t);
void gap_le_get_own_id_address(uint16_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gap_le_get_own_address_type(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gap_le_get_own_address_random_type(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t gap_le_update_connection_parameters(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gap_le_get_connection_parameter_range(struct l_struct_struct_OC_le_connection_parameter_range*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gap_le_set_connection_parameter_range(struct l_struct_struct_OC_le_connection_parameter_range*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_send_keypress(uint8_t*, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_send_keypress_notification(uint8_t*, uint8_t);
void lmp_hci_user_keypress_request_reply(uint8_t*, uint32_t);
void hci_user_confirmation_request(uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_hci_user_confirmation_request_reply(uint8_t*);
void lmp_hci_user_confirmation_request_negative_reply(uint8_t*);
void hci_vendor_update_name(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t btstcak_get_bt_mode(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void gap_store_link_key_for_bd_addr(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint32_t btstack_min(uint32_t, uint32_t);
uint8_t* btstack_memory_le_hci_connection_get(void);
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint32_t le_hci_send_acl_packet(uint8_t*, uint16_t);
void p33_soft_reset(void);
uint32_t ll_hci_connection_update(uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t);
uint32_t user_send_cmd_prepare(uint32_t, uint16_t, uint8_t*);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_array_8_uint8_t hci_le_event_mask __HIDDEN__ = { "\xFF\xFF\xFF\xFF\xFF\xFF\xFF?" };
struct l_array_6_uint8_t hci_le_mac_addr __HIDDEN__ = { " \"\x13\x44ww" };
static struct l_array_1_uint8_t _OC_str;
struct l_struct_struct_OC_hci_cmd_t hci_reset __HIDDEN__ = { 3075, ((&_OC_str.array[((int32_t)0)])) };
struct l_array_8_uint8_t le_event_mask __HIDDEN__ = { "\xFF\xFF\xFB\xFF\a\xF8\xBF=" };
struct l_array_6_uint8_t mac_addr __HIDDEN__ = { "\x81\x32s\xA4\xE5\xC6" };
struct l_struct_struct_OC___inquiry_result_t _inquiry_result __HIDDEN__;
struct l_struct_struct_OC___inquiry_result_t* inquiry_result __HIDDEN__ = (&_inquiry_result);
uint8_t hci_bt_mode __HIDDEN__;
static uint8_t inquiry_spp_device;
static struct l_array_7_uint8_t _OC_str_OC_1 = { "JL_lhh" };
static struct l_array_5_uint8_t _OC_str_OC_2 = { "0000" };
struct l_struct_struct_OC___le_hci_stack le_hci_stack __HIDDEN__;
static struct l_array_9_uint8_t _OC_str_OC_3 = { "name %s\n" };
static struct l_array_10_uint8_t _OC_str_OC_4 = { "in sniff\n" };
static struct l_array_11_uint8_t _OC_str_OC_5 = { "out sniff\n" };
static struct l_array_40_uint8_t _OC_str_OC_6 = { "<BT-log> :AUTHENTICATION_COMPLETE: %x\n\n" };
static struct l_array_26_uint8_t _OC_str_OC_7 = { "<BT-log> :link_type: %d\n\n" };
static struct l_array_44_uint8_t _OC_str_OC_8 = { "<BT-log> :HCI_EVENT_INQUIRY_COMPLETE=0x%x\n\n" };
static struct l_array_39_uint8_t _OC_str_OC_9 = { "hci----HCI_EVENT_PIN_CODE_REQUEST----\n" };
static struct l_array_48_uint8_t _OC_str_OC_11 = { "<BT-log> :disconnection_complete:type %d,0x%x\n\n" };
static struct l_array_22_uint8_t _OC_str_OC_12 = { "<BT-log> :handle %d\n\n" };
static struct l_array_58_uint8_t _OC_str_OC_13 = { "<BT-log> :LE Connection_complete (status=%u) type %u, %s\n" };
static struct l_array_43_uint8_t _OC_str_OC_14 = { "<BT-log> :New connection: handle 0x%x, %s\n" };
static struct l_array_41_uint8_t _OC_str_OC_15 = { "<BT-log> :New connection: handle %u, %s\n" };
static struct l_array_49_uint8_t _OC_str_OC_17 = { "<BT-log> :HCI_ERR:pos:%x len:%x size_of_buf:%x\n\n" };
uint32_t g_le_tws_search_aa __HIDDEN__ = -1;
uint32_t g_le_tws_pair_aa __HIDDEN__ = -1;
uint32_t g_le_tws_connect_aa __HIDDEN__ = -1;
struct l_array_6_uint8_t code_buf __HIDDEN__ = { "E\x89vC\x8A\x9B" };
static struct l_array_38_uint8_t _OC_str_OC_21 = { "<BT-log> :pa : %x ,ca : %x ,sp : %x\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_22 = { "file:%s, line:%d" };
static struct l_array_110_uint8_t _OC_str_OC_23 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/hci_transport/hci_vendor.c" };
static struct l_array_76_uint8_t _OC_str_OC_24 = { "ASSERT-FAILD: g_le_tws_pair_aa != 0xffffffff g_le_tws_aa_pair != 0xffffffff" };
static struct l_array_82_uint8_t _OC_str_OC_25 = { "ASSERT-FAILD: g_le_tws_connect_aa != 0xffffffff g_le_tws_connect_aa != 0xffffffff" };
static struct l_array_80_uint8_t _OC_str_OC_26 = { "ASSERT-FAILD: g_le_tws_search_aa != 0xffffffff g_le_tws_aa_rearch != 0xffffffff" };
static struct l_array_28_uint8_t _OC_str_OC_27 = { "<BT-log> :store_A: %x, %x\n\n" };
static uint8_t hci_scan_control;
static struct l_array_39_uint8_t _OC_str_OC_29 = { "esco busy,save hci connectable status\n" };
static struct l_array_40_uint8_t _OC_str_OC_30 = { "esco busy,save hci discoverable status\n" };
static struct l_array_27_uint8_t _OC_str_OC_31 = { "\n -- exit sniff mode  -- \n" };
static struct l_array_22_uint8_t _OC_str_OC_32 = { "\n -- sniff mode  -- \n" };
static struct l_array_10_uint8_t _OC_str_OC_33 = { "dis sco \n" };
static struct l_array_24_uint8_t _OC_str_OC_34 = { "sco_connection_setup \n " };
static struct l_struct_struct_OC_btstack_packet_callback_registration_t hci_event_callback_registration;
static struct l_array_50_uint8_t _OC_str_OC_35 = { "<BT-log> :create_connection_for_addr %s, type %x\n" };
static struct l_array_37_uint8_t _OC_str_OC_38 = { "<BT-log> :unsupported dev_class:%x\n\n" };
static struct l_array_30_uint8_t _OC_str_OC_39 = { "Inquiry cancel,start connect\n" };
static struct l_array_48_uint8_t str = { "<BT-log> :HCI_EVENT_DISCONNECTION_COMPLETE----\n" };
static struct l_array_25_uint8_t str_OC_40 = { "<BT-log> :wait complete\n" };
static struct l_array_53_uint8_t str_OC_41 = { "<BT-log> :***********No enough hci memory***********" };
static struct l_array_33_uint8_t str_OC_42 = { "<BT-log> :not enough l2cap data\n" };
static struct l_array_43_uint8_t str_OC_43 = { "<BT-log> :\n ----tws le add info init---- \n" };
static struct l_array_22_uint8_t str_OC_44 = { "<BT-log> :connect aa\n" };
static struct l_array_19_uint8_t str_OC_45 = { "<BT-log> :pair aa\n" };
static struct l_array_25_uint8_t str_OC_46 = { "<BT-log> :HCI Host - BLE" };


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
static __forceinline uint8_t* llvm_select_pu8(bool condition, uint8_t* iftrue, uint8_t* ifnot) {
  uint8_t* r;
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
static __forceinline uint16_t llvm_add_u13(uint16_t a, uint16_t b) {
  uint16_t r = (a + b) & 8191;
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
static __forceinline uint8_t llvm_lshr_u8(uint8_t a, uint8_t b) {
  uint8_t r = a >> b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}
static __forceinline uint16_t llvm_lshr_u13(uint16_t a, uint16_t b) {
  uint16_t r = (a >> b) & 8191;
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

void set_start_search_spp_device(uint8_t _1) {
  inquiry_spp_device = _1;
}


uint8_t* connection_address_for_handle(uint16_t _2) {
  uint8_t* _3;

  _3 =  /*tail*/ lmp_private_remote_addr_for_handler((((uint32_t)(uint16_t)_2)));
  return _3;
}


uint32_t connection_handler_for_address(uint8_t* _4, uint8_t _5) {
  uint16_t _6;

  _6 =  /*tail*/ lmp_private_handler_for_remote_addr(_4, (((uint32_t)(uint8_t)_5)));
  return (((uint32_t)(uint16_t)_6));
}


uint8_t hci_number_outgoing_packets(uint16_t _7) {
  return 2;
}


uint8_t* bt_get_mac_addr(void) {
  return ((&mac_addr.array[((int32_t)0)]));
}


uint8_t* bt_get_local_name(void) {
  return ((&_OC_str_OC_1.array[((int32_t)0)]));
}


uint8_t* bt_get_hid_name(void) {
  return ((uint8_t*)/*NULL*/0);
}


uint8_t* bt_get_emitter_pin_code(uint8_t _8) {
  return (llvm_select_pu8((((_8 == ((uint8_t)2))&1)), ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_2.array[((int32_t)0)]))));
}


uint8_t* bt_get_pin_code(void) {
  return ((&_OC_str_OC_2.array[((int32_t)0)]));
}


uint8_t get_remote_dev_info_index(void) {
  struct l_struct_struct_OC__stack_config* _9;
  uint32_t _10;

  _9 = user_stack_configs;
  _10 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_9->field9)));
  return (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_10, 20)) | (llvm_lshr_u32(_10, 6))))), 1));
}


void hci_emit_state(void) {
  return;
}


void hci_emit_nr_connections_delete(uint8_t _11, uint8_t _12, uint8_t* _13) {
  struct l_array_10_uint8_t _14;    /* Address-exposed local */
  uint8_t* _15;

  _15 = (&_14.array[((int32_t)0)]);
  *_15 = 109u;
  *((&_14.array[((int32_t)1)])) = 8;
  *((&_14.array[((int32_t)2)])) = _11;
  *((&_14.array[((int32_t)3)])) = _12;
  bt_flip_addr(((&_14.array[((int32_t)4)])), _13);
  l2cap_packet_handler(4, _15, 10);
}


void hci_emit_btstack_version(void) {
  struct l_array_6_uint8_t _16;    /* Address-exposed local */
  uint8_t* _17;

  _17 = (&_16.array[((int32_t)0)]);
  *_17 = 99u;
  *((&_16.array[((int32_t)1)])) = 4;
  *((&_16.array[((int32_t)2)])) = 2;
  *((&_16.array[((int32_t)3)])) = 1;
  bt_store_16(_17, 4, 3);
  l2cap_packet_handler(4, _17, 6);
}


void hci_emit_remote_name_cached(struct l_array_6_uint8_t* _18, struct l_array_249_uint8_t* _19) {
  struct l_array_258_uint8_t _20;    /* Address-exposed local */
  uint8_t* _21;
  uint8_t* _22;

  _21 = (&_20.array[((int32_t)0)]);
  *_21 = 101u;
  *((&_20.array[((int32_t)1)])) = -1;
  *((&_20.array[((int32_t)2)])) = 0;
  bt_flip_addr(((&_20.array[((int32_t)3)])), ((&(*_18).array[((int32_t)0)])));
  _22 = memcpy(((&_20.array[((int32_t)9)])), ((&(*_19).array[((int32_t)0)])), 248);
  *((&_20.array[((int32_t)257)])) = 0;
  l2cap_packet_handler(4, _21, 257);
}


struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_bd_addr_and_type(uint8_t* _23, uint32_t _24) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _25;    /* Address-exposed local */
  uint8_t* _26;
  uint32_t _27;
  struct l_struct_struct_OC_btstack_linked_item* _28;
  uint32_t _29;
  uint32_t _30;
  struct l_struct_struct_OC___le_hci_connection* _31;
  struct l_struct_struct_OC___le_hci_connection* _32;
  struct l_struct_struct_OC___le_hci_connection* _32__PHI_TEMPORARY;

  _26 = ((uint8_t*)(&_25));
  btstack_linked_list_iterator_init((&_25), ((&le_hci_stack.field0)));
  goto _33;

  do {     /* Syntactic loop '' to make GCC happy */
_33:
  goto _34;

  do {     /* Syntactic loop '' to make GCC happy */
_34:
  _27 = btstack_linked_list_iterator_has_next((&_25));
  if ((((_27 == 0u)&1))) {
    goto _35;
  } else {
    goto _36;
  }

_36:
  _28 = btstack_linked_list_iterator_next((&_25));
  _29 = *(((uint32_t*)((&_28[((int32_t)3)]))));
  if ((((_29 == _24)&1))) {
    goto _37;
  } else {
    goto _34;
  }

  } while (1); /* end of syntactic loop '' */
_37:
  _30 = memcmp(_23, (((uint8_t*)((&_28[((int32_t)1)])))), 6);
  if ((((_30 == 0u)&1))) {
    goto _38;
  } else {
    goto _33;
  }

  } while (1); /* end of syntactic loop '' */
_38:
  _31 = ((struct l_struct_struct_OC___le_hci_connection*)_28);
  _32__PHI_TEMPORARY = _31;   /* for PHI node */
  goto _39;

_35:
  _32__PHI_TEMPORARY = ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0);   /* for PHI node */
  goto _39;

_39:
  _32 = _32__PHI_TEMPORARY;
  return _32;
}


void read_remote_name_handle(uint8_t* _40) {
  uint32_t _41;

  _41 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), _40);
}


uint8_t* get_last_device_connect_linkkey(uint16_t* _42) {
  *_42 = 16;
  return ((&last_device_connect_linkkey.array[((int32_t)0)]));
}


void hci_event_handler(uint8_t* _43) {
  struct l_array_43_uint8_t _44;    /* Address-exposed local */
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _45;    /* Address-exposed local */
  struct l_array_32_uint8_t _46;    /* Address-exposed local */
  struct l_array_16_uint8_t _47;    /* Address-exposed local */
  __MSALIGN__(4) struct l_array_16_uint8_t _48 __attribute__((aligned(4)));    /* Address-exposed local */
  uint8_t _49;
  uint8_t _50;
  uint8_t _51;
  uint16_t _52;
  uint8_t* _53;
  uint8_t* _54;
  uint8_t _55;
  uint8_t _56;
  uint32_t _57;
  uint8_t _58;
  uint8_t _59;
  uint8_t _59__PHI_TEMPORARY;
  uint8_t _60;
  uint8_t _61;
  uint32_t _62;
  uint8_t _63;
  uint8_t _64;
  uint8_t _64__PHI_TEMPORARY;
  uint8_t _65;
  uint8_t _66;
  uint8_t* _67;
  uint8_t _68;
  uint32_t _69;
  uint8_t _70;
  uint8_t _71;
  uint8_t _72;
  uint16_t _73;
  uint32_t _74;
  uint8_t* _75;
  uint32_t _76;
  struct l_struct_struct_OC__stack_config* _77;
  uint32_t _78;
  uint8_t _79;
  uint32_t _80;
  uint8_t _81;
  uint8_t _82;
  uint16_t _83;
  uint16_t _84;
  struct l_struct_struct_OC__stack_config* _85;
  uint16_t _86;
  uint8_t _87;
  uint8_t _88;
  struct l_struct_struct_OC__stack_config* _89;
  uint32_t _90;
  uint32_t _91;
  uint8_t _92;
  uint8_t _93;
  uint16_t _94;
  uint8_t _95;
  uint32_t _96;
  uint32_t _97;
  uint8_t _98;
  uint32_t _99;
  uint8_t* _100;
  uint8_t _101;
  uint32_t _102;
  uint32_t _102__PHI_TEMPORARY;
  uint32_t _103;
  uint32_t _103__PHI_TEMPORARY;
  uint16_t _104;
  uint16_t _105;
  uint16_t _106;
  uint32_t _107;
  struct l_struct_struct_OC___le_hci_connection* _108;
  uint8_t* _109;
  uint8_t _110;
  uint32_t _111;
  uint32_t _112;
  uint32_t _113;
  uint32_t _113__PHI_TEMPORARY;
  uint32_t _114;
  uint8_t _115;
  uint8_t* _116;
  uint8_t _117;
  uint8_t* _118;
  uint8_t _119;
  uint32_t _120;
  uint8_t _121;
  uint32_t _122;
  uint8_t _123;
  uint8_t _124;
  uint8_t _124__PHI_TEMPORARY;
  struct l_struct_struct_OC__stack_config* _125;
  uint32_t _126;
  uint32_t _127;
  uint8_t _128;
  uint8_t* _129;
  uint8_t _130;
  uint32_t _131;
  uint8_t _132;
  uint8_t _133;
  uint8_t _133__PHI_TEMPORARY;
  struct l_struct_struct_OC___inquiry_result_t* _134;
  uint8_t _135;
  uint8_t _136;
  struct l_struct_struct_OC___inquiry_result_t* _137;
  uint8_t* _138;
  uint8_t _139;
  uint8_t* _140;
  uint8_t _141;
  uint32_t _142;
  uint32_t _143;
  uint32_t _144;
  uint8_t _145;
  uint8_t _146;
  uint8_t* _147;
  uint8_t _148;
  uint8_t* _149;
  struct l_struct_struct_OC___inquiry_result_t* _150;
  uint8_t _151;
  uint32_t _152;
  uint8_t* _153;
  uint8_t _154;
  uint8_t _155;
  uint32_t _156;
  uint8_t _157;
  uint32_t _158;
  uint32_t _159;
  uint8_t _160;
  uint32_t _161;
  uint8_t _162;
  uint8_t _162__PHI_TEMPORARY;
  uint32_t _163;
  uint32_t _163__PHI_TEMPORARY;
  uint8_t* _164;
  uint8_t* _164__PHI_TEMPORARY;
  uint8_t _165;
  uint8_t _166;
  uint16_t _167;
  uint16_t _168;
  uint32_t _169;
  uint8_t* _170;
  uint8_t* _171;
  struct l_struct_struct_OC_user_interface_handler* _172;
  l_fptr_1* _173;
  struct l_struct_struct_OC___inquiry_result_t* _174;
  uint8_t _175;
  uint32_t _176;
  struct l_struct_struct_OC___inquiry_result_t* _177;
  uint8_t* _178;
  uint8_t _179;
  uint8_t _180;
  uint8_t _180__PHI_TEMPORARY;
  uint8_t _181;
  uint32_t _182;
  uint32_t _183;
  uint8_t* _184;
  uint8_t _185;
  uint8_t _185__PHI_TEMPORARY;
  struct l_struct_struct_OC_user_interface_handler* _186;
  l_fptr_1* _187;
  struct l_struct_struct_OC___inquiry_result_t* _188;
  uint8_t _189;
  struct l_struct_struct_OC___inquiry_result_t* _190;
  uint8_t* _191;
  uint8_t _192;
  struct l_struct_struct_OC___inquiry_result_t* _193;
  uint8_t* _194;
  uint8_t _195;
  uint8_t _196;
  struct l_array_6_uint8_t* _197;
  struct l_struct_struct_OC__stack_config* _198;
  uint32_t _199;
  struct l_struct_struct_OC__stack_config* _200;
  uint32_t _201;
  uint8_t _202;
  uint8_t _203;
  struct l_struct_struct_OC__stack_config* _204;
  uint32_t _205;
  uint8_t* _206;
  uint8_t* _207;
  struct l_array_6_uint8_t* _208;
  struct l_struct_struct_OC__stack_config* _209;
  uint32_t _210;
  uint32_t _211;
  struct l_struct_struct_OC__stack_config* _212;
  uint32_t _213;
  uint32_t _214;
  struct l_struct_struct_OC__stack_config* _215;
  uint8_t* _216;
  uint8_t* _217;
  struct l_struct_struct_OC__stack_config* _218;
  uint32_t _219;
  uint8_t* _220;
  uint8_t _221;
  uint32_t _222;
  uint8_t _223;
  uint8_t _224;
  uint8_t _224__PHI_TEMPORARY;
  uint8_t _225;
  uint8_t _226;
  uint8_t* _227;
  struct l_struct_struct_OC__stack_config* _228;
  uint32_t _229;
  uint8_t* _230;
  uint8_t* _231;
  struct l_struct_struct_OC__stack_config* _232;
  uint32_t _233;
  uint8_t* _234;
  uint8_t* _235;
  uint8_t* _236;
  uint8_t* _236__PHI_TEMPORARY;
  uint32_t _237;
  struct l_struct_struct_OC_user_interface_handler* _238;
  l_fptr_2* _239;
  uint8_t _240;
  uint32_t _241;
  uint8_t _242;
  uint8_t _243;
  uint32_t _244;
  uint8_t _245;
  uint8_t _246;
  uint8_t _247;
  uint32_t _248;
  uint8_t _249;
  uint8_t _250;
  uint8_t* _251;
  uint8_t _252;
  uint8_t _253;
  uint16_t _254;
  uint32_t _255;
  uint16_t _256;
  uint8_t _257;
  uint32_t _258;
  uint32_t _259;
  uint8_t _260;
  uint8_t _261;
  uint8_t _262;
  uint32_t _263;
  uint8_t _264;
  uint32_t _265;
  uint16_t _266;
  uint8_t* _267;
  uint8_t _268;
  uint8_t* _269;
  uint32_t _270;
  struct l_struct_struct_OC_btstack_linked_item* _271;
  uint16_t _272;
  uint32_t _273;
  uint32_t _274;
  uint32_t _275;
  uint8_t _276;
  uint8_t _277;
  uint16_t _278;
  uint8_t _279;
  uint32_t _280;
  uint8_t* _281;
  uint32_t _282;
  uint8_t* _283;
  uint64_t* _284;
  uint8_t* _285;
  uint8_t* _286;
  uint8_t* _287;
  uint32_t _288;
  uint32_t _288__PHI_TEMPORARY;
  uint32_t _289;
  uint32_t _289__PHI_TEMPORARY;
  uint8_t* _290;
  uint8_t _291;
  uint32_t _292;
  uint32_t _293;
  uint64_t _294;
  uint32_t _295;
  uint8_t _296;
  uint8_t _297;
  uint8_t* _298;
  uint32_t _299;
  uint32_t _300;
  uint8_t* _301;
  uint8_t _302;
  uint32_t _303;
  uint8_t _304;
  uint8_t _305;
  uint8_t* _306;
  uint32_t _307;
  struct l_struct_struct_OC___le_hci_connection* _308;
  uint8_t _309;
  uint8_t _310;
  struct l_struct_struct_OC___le_hci_connection* _311;
  struct l_struct_struct_OC___le_hci_connection* _312;
  struct l_struct_struct_OC___le_hci_connection* _312__PHI_TEMPORARY;
  uint8_t _313;
  uint16_t _314;
  uint8_t _315;
  uint8_t* _316;
  uint32_t _317;
  uint8_t* _318;
  uint8_t _319;
  uint32_t _320;
  uint8_t _321;
  uint8_t* _322;
  uint8_t _323;
  uint8_t* _324;
  uint32_t _325;
  struct l_struct_struct_OC___le_hci_connection* _326;
  uint8_t _327;
  uint8_t _328;
  struct l_struct_struct_OC___le_hci_connection* _329;
  struct l_struct_struct_OC___le_hci_connection* _330;
  struct l_struct_struct_OC___le_hci_connection* _330__PHI_TEMPORARY;
  uint8_t _331;
  uint16_t _332;
  uint32_t _333;
  uint8_t _334;
  uint16_t _335;
  uint8_t* _336;
  uint32_t _337;
  uint8_t _338;
  uint16_t _339;
  uint16_t _339__PHI_TEMPORARY;
  uint16_t _340;
  uint8_t _341;
  uint32_t _342;
  uint8_t _343;
  uint16_t _344;

  _49 = *_43;
  switch (_49) {
  default:
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  case ((uint8_t)5):
    goto _346;
  case ((uint8_t)34):
    goto _347;
  case ((uint8_t)20):
    goto _348;
  case ((uint8_t)6):
    goto _349;
  case ((uint8_t)8):
    goto _350;
  case ((uint8_t)49):
    goto _351;
  case ((uint8_t)51):
    goto _352;
  case ((uint8_t)52):
    goto _353;
  case ((uint8_t)59):
    goto _354;
  case ((uint8_t)54):
    goto _355;
  case ((uint8_t)14):
    goto _356;
  case ((uint8_t)62):
    goto _357;
  case ((uint8_t)19):
    goto _358;
  case ((uint8_t)4):
    goto _359;
  case ((uint8_t)1):
    goto _360;
  case ((uint8_t)47):
    goto _361;
  case ((uint8_t)3):
    goto _362;
  case ((uint8_t)2):
    goto _363;
  case ((uint8_t)23):
    goto _364;
  case ((uint8_t)24):
    goto _365;
  case ((uint8_t)22):
    goto _366;
  case ((uint8_t)7):
    goto _367;
  }

_348:
  _50 = *((&_43[((int32_t)3)]));
  _51 = *((&_43[((int32_t)4)]));
  _52 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_51)), 8)), (((uint16_t)(uint8_t)_50)));
  _53 =  /*tail*/ lmp_private_remote_addr_for_handler((((uint32_t)(uint16_t)_52)));
  _54 = (&_43[((int32_t)5)]);
  _55 = *_54;
  switch (_55) {
  default:
    _339__PHI_TEMPORARY = _52;   /* for PHI node */
    goto _345;
  case ((uint8_t)2):
    goto _368;
  case ((uint8_t)0):
    goto _369;
  }

_368:
  _56 = l2cap_debug_enable;
  if (((((llvm_and_u8(_56, 32)) == ((uint8_t)0))&1))) {
    _59__PHI_TEMPORARY = _56;   /* for PHI node */
    goto _370;
  } else {
    goto _371;
  }

_371:
  _57 =  /*tail*/ puts(((&_OC_str_OC_4.array[((int32_t)0)])));
  _58 = l2cap_debug_enable;
  _59__PHI_TEMPORARY = _58;   /* for PHI node */
  goto _370;

_370:
  _59 = _59__PHI_TEMPORARY;
  if (((((llvm_and_u8(_59, 64u)) == ((uint8_t)0))&1))) {
    goto _372;
  } else {
    goto _373;
  }

_373:
   /*tail*/ put_buf(_53, 6);
  goto _372;

_372:
  hci_bt_mode = 1;
  _60 = *_54;
   /*tail*/ bt_event_update_to_user(_53, 1129270784u, 32, (((uint32_t)(uint8_t)_60)));
  _339__PHI_TEMPORARY = _52;   /* for PHI node */
  goto _345;

_369:
  _61 = l2cap_debug_enable;
  if (((((llvm_and_u8(_61, 32)) == ((uint8_t)0))&1))) {
    _64__PHI_TEMPORARY = _61;   /* for PHI node */
    goto _374;
  } else {
    goto _375;
  }

_375:
  _62 =  /*tail*/ puts(((&_OC_str_OC_5.array[((int32_t)0)])));
  _63 = l2cap_debug_enable;
  _64__PHI_TEMPORARY = _63;   /* for PHI node */
  goto _374;

_374:
  _64 = _64__PHI_TEMPORARY;
  if (((((llvm_and_u8(_64, 64u)) == ((uint8_t)0))&1))) {
    goto _376;
  } else {
    goto _377;
  }

_377:
   /*tail*/ put_buf(_53, 6);
  goto _376;

_376:
  hci_bt_mode = 0;
  _65 = *_54;
   /*tail*/ bt_event_update_to_user(_53, 1129270784u, 32, (((uint32_t)(uint8_t)_65)));
  _339__PHI_TEMPORARY = _52;   /* for PHI node */
  goto _345;

_349:
  _66 = l2cap_debug_enable;
  _67 = (&_43[((int32_t)2)]);
  if ((((((int8_t)_66) < ((int8_t)((uint8_t)0)))&1))) {
    goto _378;
  } else {
    goto _379;
  }

_378:
  _68 = *_67;
  _69 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), (((uint32_t)(uint8_t)_68)));
  goto _379;

_379:
  _70 = *_67;
  _71 = *((&_43[((int32_t)3)]));
  _72 = *((&_43[((int32_t)4)]));
  _73 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_72)), 8)), (((uint16_t)(uint8_t)_71)));
  if ((((_70 == ((uint8_t)0))&1))) {
    goto _380;
  } else {
    goto _381;
  }

_380:
  _74 =  /*tail*/ lmp_hci_set_connection_encryption(_73, 1);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_381:
  _75 =  /*tail*/ lmp_private_remote_addr_for_handler((((uint32_t)(uint16_t)_73)));
  _76 = config_delete_link_key;
  if ((((_76 == 0u)&1))) {
    goto _382;
  } else {
    goto _383;
  }

_383:
  _77 = user_stack_configs;
  _78 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_77->field9)));
   /*tail*/ delete_link_key((((struct l_array_6_uint8_t*)_75)), (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_78, 20)) | (llvm_lshr_u32(_78, 6))))), 1)));
  goto _382;

_382:
  _79 = *_67;
  if ((((_79 == ((uint8_t)6))&1))) {
    _339__PHI_TEMPORARY = _73;   /* for PHI node */
    goto _345;
  } else {
    goto _384;
  }

_384:
  _80 =  /*tail*/ lmp_hci_disconnect(_73, 5);
  _339__PHI_TEMPORARY = _73;   /* for PHI node */
  goto _345;

_350:
  _81 = *((&_43[((int32_t)3)]));
  _82 = *((&_43[((int32_t)4)]));
  _83 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_82)), 8)), (((uint16_t)(uint8_t)_81)));
  _84 =  /*tail*/ get_ble_link_handle();
  if ((((((uint16_t)_83) < ((uint16_t)_84))&1))) {
    goto _385;
  } else {
    _339__PHI_TEMPORARY = _83;   /* for PHI node */
    goto _345;
  }

_385:
  _85 = user_stack_configs;
  _86 = *((&_85->field1));
   /*tail*/ lmp_hci_write_link_supervision_timeout(_83, (((uint32_t)(uint16_t)_86)));
  _339__PHI_TEMPORARY = _83;   /* for PHI node */
  goto _345;

_351:
   /*tail*/ bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1212369152u, 49, 0);
  _87 =  /*tail*/ ((l_fptr_3*)(void*)get_is_in_background_flag)();
  if ((((_87 == ((uint8_t)0))&1))) {
    goto _386;
  } else {
    goto _387;
  }

_387:
  goto _388;

  do {     /* Syntactic loop '' to make GCC happy */
_388:
   /*tail*/ os_time_dly(3);
  _88 =  /*tail*/ ((l_fptr_3*)(void*)get_is_in_background_flag)();
  if ((((_88 == ((uint8_t)0))&1))) {
    goto _389;
  } else {
    goto _388;
  }

  } while (1); /* end of syntactic loop '' */
_389:
  goto _386;

_386:
   /*tail*/ os_time_dly(10);
  _89 = user_stack_configs;
  _90 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_89->field9)));
   /*tail*/ lmp_hci_io_capability_request_reply(((&_43[((int32_t)2)])), (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_90, 24)))), 3)), (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_90, 26)))), 3)), (((uint8_t)(llvm_lshr_u32(_90, 28)))));
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_352:
  _91 =  /*tail*/ little_endian_read_32(_43, 8);
  _92 = *_43;
   /*tail*/ bt_event_update_to_user(((&_43[((int32_t)2)])), 1212369152u, _92, _91);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_353:
   /*tail*/ bt_event_update_to_user(((&_43[((int32_t)2)])), 1212369152u, 52, 0);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_354:
  _93 = *((&_43[((int32_t)3)]));
   /*tail*/ bt_event_update_to_user(((&_43[((int32_t)2)])), 1212369152u, 59, (((uint32_t)(uint8_t)_93)));
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_355:
  _94 =  /*tail*/ lmp_private_handler_for_remote_addr(((&_43[((int32_t)3)])), 1);
  _95 = *((&_43[((int32_t)2)]));
  if ((((_95 == ((uint8_t)0))&1))) {
    _339__PHI_TEMPORARY = _94;   /* for PHI node */
    goto _345;
  } else {
    goto _390;
  }

_390:
  _96 =  /*tail*/ lmp_hci_disconnect(_94, 5);
  _339__PHI_TEMPORARY = _94;   /* for PHI node */
  goto _345;

_356:
  _97 = config_stack_modules;
  if (((((_97 & 4) == 0u)&1))) {
    goto _391;
  } else {
    goto _392;
  }

_392:
  _98 = *((&_43[((int32_t)1)]));
   /*tail*/ le_hci_emit_event(_43, (llvm_add_u16((((uint16_t)(uint8_t)_98)), 1)), /*UNDEF*/0);
  goto _391;

_358:
  _99 = config_stack_modules;
  if (((((_99 & 4) == 0u)&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _393;
  }

_393:
  _100 = (&_43[((int32_t)2)]);
  _101 = *_100;
  if ((((_101 == ((uint8_t)0))&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _394;
  }

_394:
  _102__PHI_TEMPORARY = 0;   /* for PHI node */
  _103__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _395;

  do {     /* Syntactic loop '' to make GCC happy */
_395:
  _102 = _102__PHI_TEMPORARY;
  _103 = _103__PHI_TEMPORARY;
  _104 =  /*tail*/ little_endian_read_16(_43, _103);
  _105 =  /*tail*/ get_ble_link_handle();
  if ((((((uint16_t)_104) < ((uint16_t)_105))&1))) {
    _113__PHI_TEMPORARY = _103;   /* for PHI node */
    goto _396;
  } else {
    goto _397;
  }

_397:
  _106 =  /*tail*/ little_endian_read_16(_43, (llvm_add_u32(_103, 2)));
  _107 = llvm_add_u32(_103, 4);
  _108 =  /*tail*/ le_hci_connection_for_handle(_104);
  if ((((_108 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _113__PHI_TEMPORARY = _107;   /* for PHI node */
    goto _396;
  } else {
    goto _398;
  }

_398:
  _109 = (&_108->field16);
  _110 = *_109;
  _111 = ((uint32_t)(uint8_t)_110);
  _112 = ((uint32_t)(uint16_t)_106);
  *_109 = (llvm_select_u8((((((uint32_t)_111) < ((uint32_t)_112))&1)), 0, (((uint8_t)(llvm_sub_u32(_111, _112))))));
  _113__PHI_TEMPORARY = _107;   /* for PHI node */
  goto _396;

_396:
  _113 = _113__PHI_TEMPORARY;
  _114 = llvm_add_u32(_102, 1);
  _115 = *_100;
  if ((((((int32_t)_114) < ((int32_t)(((uint32_t)(uint8_t)_115))))&1))) {
    _102__PHI_TEMPORARY = _114;   /* for PHI node */
    _103__PHI_TEMPORARY = _113;   /* for PHI node */
    goto _395;
  } else {
    goto _399;
  }

  } while (1); /* end of syntactic loop '' */
_359:
  _116 = (&_43[((int32_t)2)]);
  _117 = l2cap_debug_enable;
  _118 = (&_43[((int32_t)11)]);
  if ((((((int8_t)_117) < ((int8_t)((uint8_t)0)))&1))) {
    goto _400;
  } else {
    goto _401;
  }

_400:
  _119 = *_118;
  _120 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), (((uint32_t)(uint8_t)_119)));
  goto _401;

_401:
  _121 = *_118;
  switch (_121) {
  default:
    _124__PHI_TEMPORARY = _121;   /* for PHI node */
    goto _402;
  case ((uint8_t)2):
    goto _403;
  case ((uint8_t)0):
    goto _403;
  }

_403:
  _122 =  /*tail*/ update_multi_bd_status(_116, 1, _121);
  if ((((_122 == 0u)&1))) {
    goto _404;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_404:
  _123 = *_118;
  _124__PHI_TEMPORARY = _123;   /* for PHI node */
  goto _402;

_402:
  _124 = _124__PHI_TEMPORARY;
  switch (_124) {
  default:
    goto _405;
  case ((uint8_t)1):
    goto _406;
  case ((uint8_t)0):
    goto _407;
  case ((uint8_t)2):
    goto _408;
  }

_406:
  _125 = user_stack_configs;
  _126 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_125->field9)));
  if (((((_126 & 1048576) == 0u)&1))) {
    goto _409;
  } else {
    goto _410;
  }

_410:
   /*tail*/ lmp_hci_accept_connection_request(_116, 170u);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_409:
   /*tail*/ lmp_hci_accept_connection_request(_116, 1);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_407:
   /*tail*/ lmp_hci_accept_connection_request(_116, 1);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_408:
   /*tail*/ lmp_hci_accept_sco_connection_request(_116, -1, -1, -1, 0, 2, 968);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_405:
   /*tail*/ lmp_hci_reject_connection_request(_116, 10);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_360:
  _127 = config_btctler_modules;
  if (((((_127 & 1) == 0u)&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _411;
  }

_411:
  _128 = l2cap_debug_enable;
  _129 = (&_43[((int32_t)2)]);
  if ((((((int8_t)_128) < ((int8_t)((uint8_t)0)))&1))) {
    goto _412;
  } else {
    _133__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _413;
  }

_412:
  _130 = *_129;
  _131 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint8_t)_130)));
  _132 = *_43;
  _133__PHI_TEMPORARY = _132;   /* for PHI node */
  goto _413;

_413:
  _133 = _133__PHI_TEMPORARY;
  _134 = inquiry_result;
  _135 = *((&_134->field1));
   /*tail*/ bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1212369152u, _133, (((uint32_t)(uint8_t)(llvm_and_u8((llvm_lshr_u8(_135, 4)), 1)))));
  _136 = *_129;
  if ((((_136 == ((uint8_t)0))&1))) {
    goto _414;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_414:
  _137 = inquiry_result;
  _138 = (&_137->field1);
  _139 = *_138;
  if (((((llvm_and_u8(_139, 16)) == ((uint8_t)0))&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _415;
  }

_415:
  *_138 = (llvm_and_u8(_139, -17));
  _140 =  /*tail*/ bt_get_emitter_pin_code(1);
  _141 = inquiry_spp_device;
  if ((((_141 == ((uint8_t)0))&1))) {
    goto _416;
  } else {
    goto _417;
  }

_417:
  inquiry_spp_device = 0;
  _142 =  /*tail*/ user_send_cmd_prepare(3, 6, ((&_137->field2.array[((int32_t)0)])));
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_416:
  _143 =  /*tail*/ user_send_cmd_prepare(1, 6, ((&_137->field2.array[((int32_t)0)])));
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_361:
  _144 = config_btctler_modules;
  _145 = hci_inquiry_support;
  if ((((((((_144 & 1) != 0u)&1)) & (((_145 != ((uint8_t)0))&1)))&1))) {
    goto _418;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_418:
  _146 = *((&_43[((int32_t)1)]));
  _147 = (&_43[((int32_t)17)]);
  _148 = *((&_43[((int32_t)16)]));
  _149 = (&_46.array[((int32_t)0)]);
  _150 = inquiry_result;
  _151 = *((&_150->field1));
  if (((((llvm_and_u8(_151, 16)) == ((uint8_t)0))&1))) {
    goto _419;
  } else {
    goto _420;
  }

_419:
  _152 = llvm_add_u32((((uint32_t)(uint8_t)_146)), -15);
  _153 = memset(((&_150->field0.array[((int32_t)0)])), 0, 15);
   /*tail*/ bt_flip_addr(((&_150->field2.array[((int32_t)0)])), ((&_43[((int32_t)3)])));
  _154 = *((&_43[((int32_t)11)]));
  _155 = *((&_43[((int32_t)12)]));
  _156 = (((uint32_t)(uint8_t)_155)) << 8;
  _157 = *((&_43[((int32_t)13)]));
  _158 = (_156 | (((uint32_t)(uint8_t)_154))) | ((((uint32_t)(uint8_t)_157)) << 16);
  _159 = _156 & 7936;
  switch ((((((uint8_t)(((llvm_lshr_u13((((llvm_add_u13((((((uint16_t)_156))&8191)), 256))&8191)), 8))&8191))))&31))) {
  default:
    goto _421;
  case ((uint8_t)0):
    goto _422;
  case ((uint8_t)13):
    goto _422;
  case ((uint8_t)7):
    goto _422;
  case ((uint8_t)4):
    goto _422;
  case ((uint8_t)3):
    goto _422;
  case ((uint8_t)2):
    goto _422;
  }

_422:
  _160 = l2cap_debug_enable;
  if ((((((int8_t)_160) < ((int8_t)((uint8_t)0)))&1))) {
    goto _423;
  } else {
    goto _420;
  }

_423:
  _161 =  /*tail*/ printf(((&_OC_str_OC_38.array[((int32_t)0)])), _159);
  goto _420;

_421:
  if ((((_152 == 0u)&1))) {
    goto _420;
  } else {
    goto _424;
  }

_424:
  if ((((((int32_t)_152) > ((int32_t)0u))&1))) {
    goto _425;
  } else {
    goto _426;
  }

_425:
  _162__PHI_TEMPORARY = 1;   /* for PHI node */
  _163__PHI_TEMPORARY = _152;   /* for PHI node */
  _164__PHI_TEMPORARY = _147;   /* for PHI node */
  goto _427;

  do {     /* Syntactic loop '' to make GCC happy */
_427:
  _162 = _162__PHI_TEMPORARY;
  _163 = _163__PHI_TEMPORARY;
  _164 = _164__PHI_TEMPORARY;
  _165 = *_164;
  if ((((_165 == ((uint8_t)0))&1))) {
    _185__PHI_TEMPORARY = _162;   /* for PHI node */
    goto _428;
  } else {
    goto _429;
  }

_429:
  _166 = *((&_164[((int32_t)1)]));
  if (((((llvm_and_u8(_166, -2)) == ((uint8_t)8))&1))) {
    goto _430;
  } else {
    _180__PHI_TEMPORARY = _162;   /* for PHI node */
    goto _431;
  }

_430:
  _167 = llvm_add_u16((((uint16_t)(uint8_t)_165)), -1);
  _168 = llvm_select_u16((((((uint16_t)_167) < ((uint16_t)((uint16_t)32)))&1)), _167, 32);
  _169 = ((uint32_t)(uint16_t)_168);
  _170 = memset(((&_46.array[((int32_t)_169)])), 0, (llvm_select_u32((((((uint16_t)_168) > ((uint16_t)((uint16_t)31)))&1)), 0, (llvm_sub_u32(32, _169)))));
  _171 = memcpy(_149, ((&_164[((int32_t)2)])), _169);
  _172 = user_interface;
  _173 = *((&_172->field12));
  if ((((_173 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _180__PHI_TEMPORARY = _162;   /* for PHI node */
    goto _431;
  } else {
    goto _432;
  }

_432:
  _174 = inquiry_result;
  _175 = _173(_149, (((uint8_t)_168)), ((&_174->field2.array[((int32_t)0)])), _158, _148);
  if ((((_175 == ((uint8_t)1))&1))) {
    goto _433;
  } else {
    _180__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _431;
  }

_431:
  _180 = _180__PHI_TEMPORARY;
  _181 = *_164;
  _182 = llvm_add_u32((((uint32_t)(uint8_t)_181)), 1);
  _183 = llvm_sub_u32(_163, _182);
  _184 = (&_164[((int32_t)_182)]);
  if ((((((int32_t)_183) > ((int32_t)0u))&1))) {
    _162__PHI_TEMPORARY = _180;   /* for PHI node */
    _163__PHI_TEMPORARY = _183;   /* for PHI node */
    _164__PHI_TEMPORARY = _184;   /* for PHI node */
    goto _427;
  } else {
    _185__PHI_TEMPORARY = _180;   /* for PHI node */
    goto _428;
  }

  } while (1); /* end of syntactic loop '' */
_433:
  _176 = puts(((&_OC_str_OC_39.array[((int32_t)0)])));
  _177 = inquiry_result;
  _178 = (&_177->field1);
  _179 = *_178;
  *_178 = (llvm_or_u8(_179, 16));
  put_buf(((&_177->field2.array[((int32_t)0)])), 6);
  ((l_fptr_4*)(void*)lmp_hci_cancel_inquiry)();
  goto _420;

_428:
  _185 = _185__PHI_TEMPORARY;
  if ((((_185 == ((uint8_t)0))&1))) {
    goto _420;
  } else {
    goto _426;
  }

_426:
  _186 = user_interface;
  _187 = *((&_186->field12));
  _188 = inquiry_result;
  _189 = _187(((uint8_t*)/*NULL*/0), 0, ((&_188->field2.array[((int32_t)0)])), _158, _148);
  if ((((_189 == ((uint8_t)1))&1))) {
    goto _434;
  } else {
    goto _420;
  }

_434:
  _190 = inquiry_result;
  _191 = (&_190->field1);
  _192 = *_191;
  *_191 = (llvm_or_u8(_192, 16));
  ((l_fptr_4*)(void*)lmp_hci_cancel_inquiry)();
  _193 = inquiry_result;
  put_buf(((&_193->field2.array[((int32_t)0)])), 6);
  goto _420;

_420:
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_362:
  _194 = (&_43[((int32_t)5)]);
  _195 = *((&_43[((int32_t)2)]));
  switch (_195) {
  default:
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  case ((uint8_t)0):
    goto _435;
  case ((uint8_t)5):
    goto _436;
  }

_435:
  _196 = *((&_43[((int32_t)11)]));
  if ((((_196 == ((uint8_t)1))&1))) {
    goto _437;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_437:
  _197 = ((struct l_array_6_uint8_t*)_194);
  _198 = user_stack_configs;
  _199 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_198->field9)));
   /*tail*/ updata_last_link_key(_197, (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_199, 20)) | (llvm_lshr_u32(_199, 6))))), 1)));
  _200 = user_stack_configs;
  _201 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_200->field9)));
  if (((((_201 & 1048576) == 0u)&1))) {
    goto _438;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_438:
  _202 =  /*tail*/ handle_remote_dev_type(_197, -1);
  _203 =  /*tail*/ remote_dev_company_ioctrl(_194, 1, _202);
  if ((((_202 == ((uint8_t)0))&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _439;
  }

_439:
   /*tail*/ sdp_callback_remote_type(_202);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_436:
  _204 = user_stack_configs;
  _205 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_204->field9)));
   /*tail*/ delete_link_key((((struct l_array_6_uint8_t*)_194)), (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_205, 20)) | (llvm_lshr_u32(_205, 6))))), 1)));
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_364:
  _206 = (&_43[((int32_t)2)]);
  _207 = (&_47.array[((int32_t)0)]);
  _208 = ((struct l_array_6_uint8_t*)_206);
  _209 = user_stack_configs;
  _210 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_209->field9)));
  _211 = get_link_key(_208, (&_47), (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_210, 20)) | (llvm_lshr_u32(_210, 6))))), 1)));
  _212 = user_stack_configs;
  _213 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_212->field9)));
  _214 = get_support_profile(_208, (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_213, 20)) | (llvm_lshr_u32(_213, 6))))), 1)));
  _215 = user_stack_configs;
  *((&_215->field5)) = (((uint16_t)_214));
  if ((((_211 == 0u)&1))) {
    goto _440;
  } else {
    goto _441;
  }

_441:
  _216 = memcpy(((&last_device_connect_linkkey.array[((int32_t)0)])), _207, 16);
  lmp_hci_link_key_request_reply(_206, _207);
  goto _442;

_440:
  lmp_hci_link_key_request_negative_reply(_206);
  goto _442;

_442:
  goto _391;

_365:
  _217 = (&_43[((int32_t)8)]);
  _218 = user_stack_configs;
  _219 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_218->field9)));
   /*tail*/ put_link_key((((struct l_array_6_uint8_t*)((&_43[((int32_t)2)])))), (((struct l_array_16_uint8_t*)_217)), 0, (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_219, 20)) | (llvm_lshr_u32(_219, 6))))), 1)));
  _220 = memcpy(((&last_device_connect_linkkey.array[((int32_t)0)])), _217, 16);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_366:
  _221 = l2cap_debug_enable;
  if (((((llvm_and_u8(_221, 32)) == ((uint8_t)0))&1))) {
    _224__PHI_TEMPORARY = 22;   /* for PHI node */
    goto _443;
  } else {
    goto _444;
  }

_444:
  _222 =  /*tail*/ puts(((&_OC_str_OC_9.array[((int32_t)0)])));
  _223 = *_43;
  _224__PHI_TEMPORARY = _223;   /* for PHI node */
  goto _443;

_443:
  _224 = _224__PHI_TEMPORARY;
   /*tail*/ bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1212369152u, _224, 0);
  _225 =  /*tail*/ ((l_fptr_3*)(void*)get_is_in_background_flag)();
  if ((((_225 == ((uint8_t)0))&1))) {
    goto _445;
  } else {
    goto _446;
  }

_446:
  goto _447;

  do {     /* Syntactic loop '' to make GCC happy */
_447:
   /*tail*/ os_time_dly(3);
  _226 =  /*tail*/ ((l_fptr_3*)(void*)get_is_in_background_flag)();
  if ((((_226 == ((uint8_t)0))&1))) {
    goto _448;
  } else {
    goto _447;
  }

  } while (1); /* end of syntactic loop '' */
_448:
  goto _445;

_445:
  _227 = (&_43[((int32_t)2)]);
  _228 = user_stack_configs;
  _229 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_228->field9)));
   /*tail*/ delete_link_key((((struct l_array_6_uint8_t*)_227)), (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_229, 20)) | (llvm_lshr_u32(_229, 6))))), 1)));
  _230 = (&_48.array[((int32_t)0)]);
  _231 = memset(((&_48.array[((int32_t)0)])), 0, 16);
  _232 = user_stack_configs;
  _233 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_232->field9)));
  if (((((_233 & 1048576) == 0u)&1))) {
    goto _449;
  } else {
    goto _450;
  }

_450:
  _234 =  /*tail*/ bt_get_emitter_pin_code(0);
  _236__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _451;

_449:
  _235 =  /*tail*/ bt_get_pin_code();
  _236__PHI_TEMPORARY = _235;   /* for PHI node */
  goto _451;

_451:
  _236 = _236__PHI_TEMPORARY;
  _237 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)_236)));
  *(((uint32_t*)(&_48))) = _237;
  lmp_hci_pin_code_request_reply(_227, 4, _230);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_367:
  _238 = user_interface;
  _239 = *((&_238->field1));
  if ((((_239 == ((l_fptr_2*)/*NULL*/0))&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _452;
  }

_452:
  _240 = *((&_43[((int32_t)2)]));
   /*tail*/ _239(_240, ((&_43[((int32_t)3)])), ((&_43[((int32_t)9)])));
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_363:
  _241 = config_btctler_modules;
  _242 = hci_inquiry_support;
  if ((((((((_241 & 1) != 0u)&1)) & (((_242 != ((uint8_t)0))&1)))&1))) {
    goto _453;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_453:
  _243 = *((&_43[((int32_t)1)]));
   /*tail*/ hci_event_inquiry_result(((&_43[((int32_t)2)])), (((uint16_t)(uint8_t)_243)), 0);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_347:
  _244 = config_btctler_modules;
  _245 = hci_inquiry_support;
  if ((((((((_244 & 1) != 0u)&1)) & (((_245 != ((uint8_t)0))&1)))&1))) {
    goto _454;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  }

_454:
  _246 = *((&_43[((int32_t)1)]));
   /*tail*/ hci_event_inquiry_result(((&_43[((int32_t)2)])), (((uint16_t)(uint8_t)_246)), 1);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_346:
  _247 = l2cap_debug_enable;
  if ((((((int8_t)_247) < ((int8_t)((uint8_t)0)))&1))) {
    goto _455;
  } else {
    goto _456;
  }

_455:
  _248 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _456;

_456:
  _249 = *((&_43[((int32_t)5)]));
  _250 = *((&_43[((int32_t)6)]));
  _251 = (&_43[((int32_t)7)]);
  _252 = *((&_43[((int32_t)3)]));
  _253 = *((&_43[((int32_t)4)]));
  _254 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_253)), 8)), (((uint16_t)(uint8_t)_252)));
  _255 = ((uint32_t)(uint16_t)_254);
  _256 =  /*tail*/ get_ble_link_handle();
  if ((((((uint16_t)_254) < ((uint16_t)_256))&1))) {
    goto _457;
  } else {
    goto _458;
  }

_457:
  _257 = l2cap_debug_enable;
  if ((((((int8_t)_257) < ((int8_t)((uint8_t)0)))&1))) {
    goto _459;
  } else {
    goto _460;
  }

_459:
  _258 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), (((uint32_t)(uint8_t)_250)), (((uint32_t)(uint8_t)_249)));
  goto _460;

_460:
  switch (_250) {
  default:
    goto _461;
  case ((uint8_t)0):
    goto _462;
  case ((uint8_t)2):
    goto _462;
  }

_462:
  _259 =  /*tail*/ update_multi_bd_status(_251, 3, _250);
  goto _461;

_461:
  _260 = *((&_43[((int32_t)2)]));
  if ((((_260 == ((uint8_t)0))&1))) {
    goto _463;
  } else {
    _339__PHI_TEMPORARY = _254;   /* for PHI node */
    goto _345;
  }

_463:
  _261 = l2cap_debug_enable;
  if (((((llvm_and_u8(_261, 64u)) == ((uint8_t)0))&1))) {
    goto _464;
  } else {
    goto _465;
  }

_465:
   /*tail*/ put_buf(_251, 6);
  goto _464;

_464:
   /*tail*/ hci_emit_nr_connections_delete(_249, _250, _251);
  _339__PHI_TEMPORARY = _254;   /* for PHI node */
  goto _345;

_458:
  _262 = *((&_43[((int32_t)2)]));
  if ((((_262 == ((uint8_t)0))&1))) {
    goto _466;
  } else {
    _339__PHI_TEMPORARY = _254;   /* for PHI node */
    goto _345;
  }

_466:
  _263 = config_stack_modules;
  if (((((_263 & 4) == 0u)&1))) {
    _339__PHI_TEMPORARY = _254;   /* for PHI node */
    goto _345;
  } else {
    goto _467;
  }

_467:
  _264 = l2cap_debug_enable;
  if ((((((int8_t)_264) < ((int8_t)((uint8_t)0)))&1))) {
    goto _468;
  } else {
    goto _469;
  }

_468:
  _265 =  /*tail*/ printf(((&_OC_str_OC_12.array[((int32_t)0)])), _255);
  goto _469;

_469:
  _266 = *((&le_hci_stack.field5));
  if ((((_266 == ((uint16_t)0))&1))) {
    goto _470;
  } else {
    goto _471;
  }

_471:
  _267 = memset(((&le_hci_stack.field3)), 0, 5);
  goto _470;

_470:
  _268 = *((&_43[((int32_t)1)]));
   /*tail*/ le_hci_emit_event(_43, (llvm_add_u16((((uint16_t)(uint8_t)_268)), 1)), /*UNDEF*/0);
  _269 = ((uint8_t*)(&_45));
  btstack_linked_list_iterator_init((&_45), ((&le_hci_stack.field0)));
  _270 = btstack_linked_list_iterator_has_next((&_45));
  if ((((_270 == 0u)&1))) {
    goto _472;
  } else {
    goto _473;
  }

_473:
  goto _474;

  do {     /* Syntactic loop '' to make GCC happy */
_474:
  _271 = btstack_linked_list_iterator_next((&_45));
  _272 = *((&(((struct l_struct_struct_OC___le_hci_connection*)_271))->field2));
  if ((((_272 == _254)&1))) {
    goto _475;
  } else {
    goto _476;
  }

_475:
  _273 = btstack_linked_list_remove(((&le_hci_stack.field0)), _271);
  btstack_memory_le_hci_connection_free((((uint8_t*)_271)));
  goto _476;

_476:
  _274 = btstack_linked_list_iterator_has_next((&_45));
  if ((((_274 == 0u)&1))) {
    goto _477;
  } else {
    goto _474;
  }

  } while (1); /* end of syntactic loop '' */
_477:
  goto _472;

_472:
  goto _391;

_357:
  _275 = config_stack_modules;
  if (((((_275 & 4) == 0u)&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    goto _478;
  }

_478:
  _276 = *((&_43[((int32_t)2)]));
  switch (_276) {
  default:
    goto _479;
  case ((uint8_t)2):
    goto _480;
  case ((uint8_t)10):
    goto _481;
  case ((uint8_t)1):
    goto _482;
  }

_480:
  _277 = *((&_43[((int32_t)1)]));
  _278 = llvm_add_u16((((uint16_t)(uint8_t)_277)), 2);
  _279 = *((&_43[((int32_t)3)]));
  _280 = ((uint32_t)(uint8_t)_279);
  _281 = (&_44.array[((int32_t)0)]);
  _282 = ((uint32_t)(uint16_t)_278);
  if (((((((_279 != ((uint8_t)0))&1)) & (((((uint16_t)_278) > ((uint16_t)((uint16_t)4)))&1)))&1))) {
    goto _483;
  } else {
    goto _484;
  }

_483:
  _283 = (&_44.array[((int32_t)1)]);
  _284 = ((uint64_t*)((&_44.array[((int32_t)2)])));
  _285 = (&_44.array[((int32_t)10)]);
  _286 = (&_44.array[((int32_t)11)]);
  _287 = (&_44.array[((int32_t)12)]);
  _288__PHI_TEMPORARY = 4;   /* for PHI node */
  _289__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _485;

  do {     /* Syntactic loop '' to make GCC happy */
_485:
  _288 = _288__PHI_TEMPORARY;
  _289 = _289__PHI_TEMPORARY;
  _290 = (&_43[((int32_t)(llvm_add_u32(_288, 8)))]);
  _291 = *_290;
  _292 = btstack_min((((uint32_t)(uint8_t)_291)), 31);
  _293 = _292 & 255;
  *_281 = -30;
  *_283 = (((uint8_t)(llvm_add_u32(_292, 10))));
  _294 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_43[((int32_t)_288)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, _284) = _294;
  _295 = llvm_add_u32(_288, 9);
  _296 = *((&_43[((int32_t)(llvm_add_u32(_293, _295)))]));
  *_285 = _296;
  _297 = *_290;
  *_286 = _297;
  _298 = memcpy(_287, ((&_43[((int32_t)_295)])), _293);
  _299 = llvm_add_u32((llvm_add_u32(_288, 10)), _293);
  le_hci_emit_event(_281, (((uint16_t)(llvm_add_u32(_293, 12)))), /*UNDEF*/0);
  _300 = llvm_add_u32(_289, 1);
  if (((((((((int32_t)_300) < ((int32_t)_280))&1)) & (((((int32_t)_299) < ((int32_t)_282))&1)))&1))) {
    _288__PHI_TEMPORARY = _299;   /* for PHI node */
    _289__PHI_TEMPORARY = _300;   /* for PHI node */
    goto _485;
  } else {
    goto _486;
  }

  } while (1); /* end of syntactic loop '' */
_486:
  goto _484;

_484:
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_481:
  _301 =  /*tail*/ hci_subevent_le_enhanced_connection_complete_get_peer_addresss_ptr(_43);
  _302 =  /*tail*/ hci_subevent_le_enhanced_connection_complete_get_peer_address_type(_43);
  _303 = ((uint32_t)(uint8_t)_302);
  _304 = l2cap_debug_enable;
  if ((((((int8_t)_304) < ((int8_t)((uint8_t)0)))&1))) {
    goto _487;
  } else {
    goto _488;
  }

_487:
  _305 =  /*tail*/ hci_subevent_le_enhanced_connection_complete_get_status(_43);
  _306 =  /*tail*/ bd_addr_to_str(_301);
  _307 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), (((uint32_t)(uint8_t)_305)), _303, _306);
  goto _488;

_488:
  _308 =  /*tail*/ le_hci_connection_for_bd_addr_and_type(_301, _303);
  _309 =  /*tail*/ hci_subevent_le_enhanced_connection_complete_get_status(_43);
  if ((((_309 == ((uint8_t)0))&1))) {
    goto _489;
  } else {
    goto _490;
  }

_490:
  if ((((_308 != ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _491;
  } else {
    goto _492;
  }

_491:
   /*tail*/ btstack_memory_le_hci_connection_free((((uint8_t*)_308)));
  goto _492;

_492:
  _310 = *((&_43[((int32_t)1)]));
   /*tail*/ le_hci_emit_event(_43, (llvm_add_u16((((uint16_t)(uint8_t)_310)), 1)), /*UNDEF*/0);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_489:
  if ((((_308 != ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _312__PHI_TEMPORARY = _308;   /* for PHI node */
    goto _493;
  } else {
    goto _494;
  }

_494:
  _311 =  /*tail*/ le_create_connection_for_bd_addr_and_type(_301, _303);
  if ((((_311 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    _312__PHI_TEMPORARY = _311;   /* for PHI node */
    goto _493;
  }

_493:
  _312 = _312__PHI_TEMPORARY;
  _313 =  /*tail*/ hci_subevent_le_enhanced_connection_complete_get_role(_43);
  *((&_312->field4)) = _313;
  _314 =  /*tail*/ hci_subevent_le_enhanced_connection_complete_get_connection_handle(_43);
  *((&_312->field2)) = _314;
  _315 = l2cap_debug_enable;
  if ((((((int8_t)_315) < ((int8_t)((uint8_t)0)))&1))) {
    goto _495;
  } else {
    _339__PHI_TEMPORARY = _314;   /* for PHI node */
    goto _345;
  }

_495:
  _316 =  /*tail*/ bd_addr_to_str(_301);
  _317 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])), (((uint32_t)(uint16_t)_314)), _316);
  _339__PHI_TEMPORARY = _314;   /* for PHI node */
  goto _345;

_482:
  _318 = (&_43[((int32_t)8)]);
  _319 = *((&_43[((int32_t)7)]));
  _320 = ((uint32_t)(uint8_t)_319);
  _321 = l2cap_debug_enable;
  _322 = (&_43[((int32_t)3)]);
  if ((((((int8_t)_321) < ((int8_t)((uint8_t)0)))&1))) {
    goto _496;
  } else {
    goto _497;
  }

_496:
  _323 = *_322;
  _324 =  /*tail*/ bd_addr_to_str(_318);
  _325 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), (((uint32_t)(uint8_t)_323)), _320, _324);
  goto _497;

_497:
  _326 =  /*tail*/ le_hci_connection_for_bd_addr_and_type(_318, _320);
  _327 = *_322;
  if ((((_327 == ((uint8_t)0))&1))) {
    goto _498;
  } else {
    goto _499;
  }

_499:
  if ((((_326 != ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _500;
  } else {
    goto _501;
  }

_500:
   /*tail*/ btstack_memory_le_hci_connection_free((((uint8_t*)_326)));
  goto _501;

_501:
  _328 = *((&_43[((int32_t)1)]));
   /*tail*/ le_hci_emit_event(_43, (llvm_add_u16((((uint16_t)(uint8_t)_328)), 1)), /*UNDEF*/0);
  _339__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _345;

_498:
  if ((((_326 != ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _330__PHI_TEMPORARY = _326;   /* for PHI node */
    goto _502;
  } else {
    goto _503;
  }

_503:
  _329 =  /*tail*/ le_create_connection_for_bd_addr_and_type(_318, _320);
  if ((((_329 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _345;
  } else {
    _330__PHI_TEMPORARY = _329;   /* for PHI node */
    goto _502;
  }

_502:
  _330 = _330__PHI_TEMPORARY;
  _331 = *((&_43[((int32_t)6)]));
  *((&_330->field4)) = _331;
  _332 =  /*tail*/ little_endian_read_16(_43, 4);
  *((&_330->field2)) = _332;
   /*tail*/ hci_ll_get_device_address((((uint8_t*)((&_330->field19)))), ((&_330->field18.array[((int32_t)0)])));
  _333 =  /*tail*/ le_controller_get_mac(((&_330->field17.array[((int32_t)0)])));
  _334 = l2cap_debug_enable;
  if ((((((int8_t)_334) < ((int8_t)((uint8_t)0)))&1))) {
    goto _504;
  } else {
    _339__PHI_TEMPORARY = _332;   /* for PHI node */
    goto _345;
  }

_504:
  _335 =  /*tail*/ little_endian_read_16(_43, 4);
  _336 =  /*tail*/ bd_addr_to_str(_318);
  _337 =  /*tail*/ printf(((&_OC_str_OC_15.array[((int32_t)0)])), (((uint32_t)(uint16_t)_335)), _336);
  _339__PHI_TEMPORARY = _332;   /* for PHI node */
  goto _345;

_479:
  _338 = *((&_43[((int32_t)1)]));
   /*tail*/ le_hci_emit_event(_43, (llvm_add_u16((((uint16_t)(uint8_t)_338)), 1)), /*UNDEF*/0);
  goto _391;

_399:
  _339__PHI_TEMPORARY = _104;   /* for PHI node */
  goto _345;

_345:
  _339 = _339__PHI_TEMPORARY;
  _340 = get_ble_link_handle();
  if ((((((uint16_t)_339) < ((uint16_t)_340))&1))) {
    goto _505;
  } else {
    goto _506;
  }

_505:
  _341 = *((&_43[((int32_t)1)]));
  l2cap_packet_handler(4, _43, (llvm_add_u16((((uint16_t)(uint8_t)_341)), 1)));
  goto _507;

_506:
  _342 = config_stack_modules;
  if (((((_342 & 4) == 0u)&1))) {
    goto _507;
  } else {
    goto _508;
  }

_508:
  _343 = *((&_43[((int32_t)1)]));
  le_hci_emit_event(_43, (llvm_add_u16((((uint16_t)(uint8_t)_343)), 1)), /*UNDEF*/0);
  hci_run_for_acl_data_send();
  goto _391;

_507:
  if ((((_339 == ((uint16_t)0))&1))) {
    goto _391;
  } else {
    goto _509;
  }

_509:
  _344 = get_ble_link_handle();
  if ((((((uint16_t)_339) < ((uint16_t)_344))&1))) {
    goto _510;
  } else {
    goto _391;
  }

_510:
  lmp_hci_host_num_of_completed_packets(_339, 1);
  goto _391;

_391:
  return;
}


void le_hci_emit_event(uint8_t* _511, uint16_t _512, uint32_t _513) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _514;    /* Address-exposed local */
  uint8_t* _515;
  uint32_t _516;
  struct l_struct_struct_OC_btstack_linked_item* _517;
  l_fptr_5* _518;
  uint32_t _519;

  _515 = ((uint8_t*)(&_514));
  btstack_linked_list_iterator_init((&_514), ((&le_hci_stack.field1)));
  _516 = btstack_linked_list_iterator_has_next((&_514));
  if ((((_516 == 0u)&1))) {
    goto _520;
  } else {
    goto _521;
  }

_521:
  goto _522;

  do {     /* Syntactic loop '' to make GCC happy */
_522:
  _517 = btstack_linked_list_iterator_next((&_514));
  _518 = *(((l_fptr_5**)((&_517[((int32_t)1)]))));
  _518(4, 0, _511, _512);
  _519 = btstack_linked_list_iterator_has_next((&_514));
  if ((((_519 == 0u)&1))) {
    goto _523;
  } else {
    goto _522;
  }

  } while (1); /* end of syntactic loop '' */
_523:
  goto _520;

_520:
  return;
}


struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t _524) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _525;    /* Address-exposed local */
  uint32_t _526;
  uint8_t* _527;
  uint32_t _528;
  struct l_struct_struct_OC_btstack_linked_item* _529;
  struct l_struct_struct_OC___le_hci_connection* _530;
  uint16_t _531;
  struct l_struct_struct_OC___le_hci_connection* _532;
  struct l_struct_struct_OC___le_hci_connection* _532__PHI_TEMPORARY;

  _526 = config_stack_modules;
  if (((((_526 & 4) == 0u)&1))) {
    _532__PHI_TEMPORARY = ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0);   /* for PHI node */
    goto _533;
  } else {
    goto _534;
  }

_534:
  _527 = ((uint8_t*)(&_525));
  btstack_linked_list_iterator_init((&_525), ((&le_hci_stack.field0)));
  goto _535;

  do {     /* Syntactic loop '' to make GCC happy */
_535:
  _528 = btstack_linked_list_iterator_has_next((&_525));
  if ((((_528 == 0u)&1))) {
    goto _536;
  } else {
    goto _537;
  }

_537:
  _529 = btstack_linked_list_iterator_next((&_525));
  _530 = ((struct l_struct_struct_OC___le_hci_connection*)_529);
  _531 = *((&_530->field2));
  if ((((_531 == _524)&1))) {
    goto _538;
  } else {
    goto _535;
  }

  } while (1); /* end of syntactic loop '' */
_536:
  _532__PHI_TEMPORARY = ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0);   /* for PHI node */
  goto _533;

_538:
  _532__PHI_TEMPORARY = _530;   /* for PHI node */
  goto _533;

_533:
  _532 = _532__PHI_TEMPORARY;
  return _532;
}


static void hci_event_inquiry_result(uint8_t* _539, uint16_t _540, uint8_t _541) {
  struct l_struct_struct_OC___inquiry_result_t* _542;
  uint8_t _543;
  uint8_t _544;
  uint32_t _545;
  uint8_t* _546;
  uint8_t _547;
  uint32_t _548;
  uint32_t _548__PHI_TEMPORARY;
  uint32_t _549;
  uint32_t _549__PHI_TEMPORARY;
  uint32_t _550;
  uint32_t _550__PHI_TEMPORARY;
  uint8_t _551;
  uint8_t _551__PHI_TEMPORARY;
  uint8_t _552;
  uint32_t _553;
  uint32_t _554;
  uint8_t _555;
  uint32_t _556;
  uint8_t _557;
  uint8_t _558;
  struct l_struct_struct_OC_user_interface_handler* _559;
  l_fptr_1* _560;
  struct l_struct_struct_OC___inquiry_result_t* _561;
  uint8_t _562;
  struct l_struct_struct_OC___inquiry_result_t* _563;
  uint8_t* _564;
  uint8_t _565;

  _542 = inquiry_result;
  _543 = *((&_542->field1));
  if (((((llvm_and_u8(_543, 16)) == ((uint8_t)0))&1))) {
    goto _566;
  } else {
    goto _567;
  }

_567:
  _544 = l2cap_debug_enable;
  if ((((((int8_t)_544) < ((int8_t)((uint8_t)0)))&1))) {
    goto _568;
  } else {
    goto _569;
  }

_568:
  _545 =  /*tail*/ puts(((&str_OC_40.array[((int32_t)0)])));
  goto _569;

_566:
  _546 = memset(((&_542->field0.array[((int32_t)0)])), 0, 15);
   /*tail*/ bt_flip_addr(((&_542->field2.array[((int32_t)0)])), ((&_539[((int32_t)1)])));
  if ((((_541 == ((uint8_t)0))&1))) {
    _548__PHI_TEMPORARY = 10;   /* for PHI node */
    _549__PHI_TEMPORARY = 11;   /* for PHI node */
    _550__PHI_TEMPORARY = 12;   /* for PHI node */
    _551__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _570;
  } else {
    goto _571;
  }

_571:
  _547 = *((&_539[((int32_t)14)]));
  _548__PHI_TEMPORARY = 9;   /* for PHI node */
  _549__PHI_TEMPORARY = 10;   /* for PHI node */
  _550__PHI_TEMPORARY = 11;   /* for PHI node */
  _551__PHI_TEMPORARY = _547;   /* for PHI node */
  goto _570;

_570:
  _548 = _548__PHI_TEMPORARY;
  _549 = _549__PHI_TEMPORARY;
  _550 = _550__PHI_TEMPORARY;
  _551 = _551__PHI_TEMPORARY;
  _552 = *((&_539[((int32_t)_549)]));
  _553 = (((uint32_t)(uint8_t)_552)) << 8;
  _554 = _553 & 7936;
  switch ((((((uint8_t)(((llvm_lshr_u13((((llvm_add_u13((((((uint16_t)_553))&8191)), 256))&8191)), 8))&8191))))&31))) {
  default:
    goto _572;
  case ((uint8_t)0):
    goto _573;
  case ((uint8_t)13):
    goto _573;
  case ((uint8_t)7):
    goto _573;
  case ((uint8_t)4):
    goto _573;
  case ((uint8_t)3):
    goto _573;
  case ((uint8_t)2):
    goto _573;
  }

_573:
  _555 = l2cap_debug_enable;
  if ((((((int8_t)_555) < ((int8_t)((uint8_t)0)))&1))) {
    goto _574;
  } else {
    goto _569;
  }

_574:
  _556 =  /*tail*/ printf(((&_OC_str_OC_38.array[((int32_t)0)])), _554);
  goto _569;

_572:
  _557 = *((&_539[((int32_t)_548)]));
  _558 = *((&_539[((int32_t)_550)]));
  _559 = user_interface;
  _560 = *((&_559->field12));
  _561 = inquiry_result;
  _562 =  /*tail*/ _560(((uint8_t*)/*NULL*/0), 0, ((&_561->field2.array[((int32_t)0)])), (((((uint32_t)(uint8_t)_557)) | _553) | ((((uint32_t)(uint8_t)_558)) << 16)), _551);
  if ((((_562 == ((uint8_t)1))&1))) {
    goto _575;
  } else {
    goto _569;
  }

_575:
  _563 = inquiry_result;
  _564 = (&_563->field1);
  _565 = *_564;
  *_564 = (llvm_or_u8(_565, 16));
   /*tail*/ ((l_fptr_4*)(void*)lmp_hci_cancel_inquiry)();
  goto _569;

_569:
  return;
}


void hci_release_packet_buffer(void) {
  *((&le_hci_stack.field3)) = 0;
}


static uint8_t hci_subevent_le_enhanced_connection_complete_get_status(uint8_t* _576) {
  uint8_t _577;

  _577 = *((&_576[((int32_t)3)]));
  return _577;
}


static uint8_t* hci_subevent_le_enhanced_connection_complete_get_peer_addresss_ptr(uint8_t* _578) {
  return ((&_578[((int32_t)8)]));
}


static uint8_t hci_subevent_le_enhanced_connection_complete_get_peer_address_type(uint8_t* _579) {
  uint8_t _580;

  _580 = *((&_579[((int32_t)7)]));
  return _580;
}


static struct l_struct_struct_OC___le_hci_connection* le_create_connection_for_bd_addr_and_type(uint8_t* _581, uint32_t _582) {
  uint8_t _583;
  uint8_t* _584;
  uint32_t _585;
  uint8_t* _586;
  uint8_t _587;
  uint32_t _588;
  struct l_struct_struct_OC___le_hci_connection* _589;
  uint8_t* _590;
  uint8_t* _591;
  uint8_t* _592;
  struct l_struct_struct_OC___le_hci_connection* _593;
  struct l_struct_struct_OC___le_hci_connection* _593__PHI_TEMPORARY;

  _583 = l2cap_debug_enable;
  if ((((((int8_t)_583) < ((int8_t)((uint8_t)0)))&1))) {
    goto _594;
  } else {
    goto _595;
  }

_594:
  _584 =  /*tail*/ bd_addr_to_str(_581);
  _585 =  /*tail*/ printf(((&_OC_str_OC_35.array[((int32_t)0)])), _584, _582);
  goto _595;

_595:
  _586 =  /*tail*/ btstack_memory_le_hci_connection_get();
  if ((((_586 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _596;
  } else {
    goto _597;
  }

_596:
  _587 = l2cap_debug_enable;
  if ((((((int8_t)_587) < ((int8_t)((uint8_t)0)))&1))) {
    goto _598;
  } else {
    _593__PHI_TEMPORARY = ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0);   /* for PHI node */
    goto _599;
  }

_598:
  _588 =  /*tail*/ puts(((&str_OC_41.array[((int32_t)0)])));
  _593__PHI_TEMPORARY = ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0);   /* for PHI node */
  goto _599;

_597:
  _589 = ((struct l_struct_struct_OC___le_hci_connection*)_586);
  _590 = memset(_586, 0, 1224);
  _591 = memcpy(((&_586[((int32_t)4)])), _581, 6);
  *(((uint32_t*)((&_586[((int32_t)12)])))) = _582;
  *(((uint16_t*)((&_586[((int32_t)10)])))) = -1;
  *(((uint32_t*)((&_586[((int32_t)20)])))) = 0;
  _592 = memset(((&_586[((int32_t)1202)])), 0, 5);
   /*tail*/ btstack_linked_list_add(((&le_hci_stack.field0)), (((struct l_struct_struct_OC_btstack_linked_item*)_586)));
  _593__PHI_TEMPORARY = _589;   /* for PHI node */
  goto _599;

_599:
  _593 = _593__PHI_TEMPORARY;
  return _593;
}


static uint8_t hci_subevent_le_enhanced_connection_complete_get_role(uint8_t* _600) {
  uint8_t _601;

  _601 = *((&_600[((int32_t)6)]));
  return _601;
}


static uint16_t hci_subevent_le_enhanced_connection_complete_get_connection_handle(uint8_t* _602) {
  uint16_t _603;

  _603 =  /*tail*/ little_endian_read_16(_602, 4);
  return _603;
}


static void hci_run_for_acl_data_send(void) {
  uint16_t _604;
  uint8_t _605;
  uint8_t _606;
  uint16_t _607;
  uint32_t _608;
  struct l_struct_struct_OC___le_hci_connection* _609;
  uint32_t _610;
  struct l_struct_struct_OC_btstack_linked_item* _611;
  uint8_t* _612;
  struct l_struct_struct_OC_btstack_linked_item* _613;
  struct l_struct_struct_OC_btstack_linked_item* _613__PHI_TEMPORARY;
  struct l_struct_struct_OC___le_hci_connection* _614;
  uint32_t* _615;
  uint32_t _616;
  uint16_t* _617;
  uint16_t _618;
  uint16_t _619;
  uint16_t _620;
  uint16_t _621;
  uint16_t _622;
  uint32_t _623;
  struct l_struct_struct_OC_btstack_linked_item* _624;

  _604 = *((&le_hci_stack.field5));
  if ((((_604 == ((uint16_t)0))&1))) {
    goto _625;
  } else {
    goto _626;
  }

_626:
  _605 = *((&le_hci_stack.field2.array[((int32_t)0)]));
  _606 = *((&le_hci_stack.field2.array[((int32_t)1)]));
  _607 = llvm_or_u16((llvm_and_u16((llvm_shl_u16((((uint16_t)(uint8_t)_606)), 8)), 3840)), (((uint16_t)(uint8_t)_605)));
  _608 =  /*tail*/ hci_number_free_acl_slots_for_handle(_607);
  if ((((((int32_t)_608) > ((int32_t)0u))&1))) {
    goto _627;
  } else {
    goto _625;
  }

_627:
  _609 =  /*tail*/ le_hci_connection_for_handle(_607);
  if ((((_609 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _628;
  } else {
    goto _629;
  }

_629:
  _610 =  /*tail*/ hci_number_free_acl_slots_for_handle(_607);
  if ((((((int32_t)_610) > ((int32_t)0u))&1))) {
    goto _630;
  } else {
    goto _625;
  }

_625:
  _611 = *((&le_hci_stack.field0));
  if ((((_611 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _631;
  } else {
    goto _632;
  }

_632:
  _613__PHI_TEMPORARY = _611;   /* for PHI node */
  goto _633;

_628:
  _612 = memset(((&le_hci_stack.field3)), 0, 5);
  goto _625;

_630:
   /*tail*/ le_hci_send_acl_packet_fragments(_609);
  goto _631;

  do {     /* Syntactic loop '' to make GCC happy */
_633:
  _613 = _613__PHI_TEMPORARY;
  _614 = ((struct l_struct_struct_OC___le_hci_connection*)_613);
  _615 = ((uint32_t*)((&_613[((int32_t)5)])));
  _616 = *_615;
  if ((((_616 == 3u)&1))) {
    goto _634;
  } else {
    goto _635;
  }

_634:
  *_615 = 0;
  _617 = (&_614->field7);
  _618 = *_617;
  *_617 = 0;
  _619 = *((&_614->field2));
  _620 = *(((uint16_t*)((&_613[((int32_t)7)]))));
  _621 = *((&_614->field9));
  _622 = *(((uint16_t*)((&_613[((int32_t)8)]))));
  _623 =  /*tail*/ ll_hci_connection_update(_619, _618, _620, _621, _622, 0, -1);
  goto _635;

_635:
  _624 = *((&_613->field0));
  if ((((_624 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _636;
  } else {
    _613__PHI_TEMPORARY = _624;   /* for PHI node */
    goto _633;
  }

  } while (1); /* end of syntactic loop '' */
_636:
  goto _631;

_631:
  return;
}


void hci_edr_acl_handler(uint8_t* _637, uint16_t _638, uint16_t _639) {
  uint8_t _640;
  uint8_t _641;
  uint8_t _642;
  uint32_t _643;
  uint8_t* _644;
  uint8_t _645;
  uint32_t _646;
  uint8_t _647;
  uint8_t _648;

  _640 = *((&_637[((int32_t)1)]));
  _641 = *((&_637[((int32_t)2)]));
  _642 = *((&_637[((int32_t)3)]));
  _643 = ((((uint32_t)(uint8_t)_642)) << 8) | (((uint32_t)(uint8_t)_641));
  _644 =  /*tail*/ lmp_private_remote_addr_for_handler((((uint32_t)(uint16_t)_639)));
  if ((((_644 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _649;
  } else {
    goto _650;
  }

_650:
  switch ((((((uint8_t)(llvm_lshr_u8(_640, 4))))&3))) {
  default:
    goto _649;
  case ((uint8_t)1):
    goto _651;
  case ((uint8_t)2u):
    goto _652;
  }

_651:
   /*tail*/ lmp_hci_private_free_acl_packet(_637);
  goto _653;

_652:
  if ((((((uint16_t)_638) < ((uint16_t)((uint16_t)6)))&1))) {
    goto _654;
  } else {
    goto _655;
  }

_654:
  _645 = l2cap_debug_enable;
  if ((((((int8_t)_645) < ((int8_t)((uint8_t)0)))&1))) {
    goto _656;
  } else {
    goto _657;
  }

_656:
  _646 =  /*tail*/ puts(((&str_OC_42.array[((int32_t)0)])));
  goto _657;

_657:
   /*tail*/ lmp_hci_private_free_acl_packet(_637);
  goto _653;

_655:
  _647 = *((&_637[((int32_t)4)]));
  _648 = *((&_637[((int32_t)5)]));
  if ((((((uint32_t)_643) < ((uint32_t)(llvm_add_u32((((((uint32_t)(uint8_t)_648)) << 8) | (((uint32_t)(uint8_t)_647))), 4))))&1))) {
    goto _653;
  } else {
    goto _658;
  }

_658:
   /*tail*/ l2cap_packet_handler(2, _637, (((uint16_t)(llvm_add_u32(_643, 4)))));
   /*tail*/ lmp_hci_private_try_free_acl_packet(_637);
  goto _653;

_653:
   /*tail*/ lmp_hci_host_num_of_completed_packets(_639, 1);
  goto _649;

_649:
  return;
}


void hci_ble_acl_handler(uint8_t* _659, uint16_t _660, uint16_t _661) {
  struct l_struct_struct_OC___le_hci_connection* _662;
  uint8_t _663;
  uint8_t _664;
  uint16_t _665;
  uint8_t _666;
  uint16_t* _667;
  uint16_t _668;
  uint32_t _669;
  uint32_t _670;
  uint8_t _671;
  uint16_t _672;
  uint32_t _673;
  uint8_t* _674;
  uint16_t _675;
  uint16_t _676;
  uint16_t* _677;
  uint16_t _678;
  uint16_t* _679;
  uint16_t _680;
  uint8_t _681;
  uint8_t _682;
  uint16_t _683;
  uint32_t _684;
  uint32_t _685;
  uint8_t* _686;
  uint32_t _687;
  uint8_t* _688;

  _662 =  /*tail*/ le_hci_connection_for_handle(_661);
  _663 = *((&_659[((int32_t)2)]));
  _664 = *((&_659[((int32_t)3)]));
  _665 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_664)), 8)), (((uint16_t)(uint8_t)_663)));
  if ((((_662 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _689;
  } else {
    goto _690;
  }

_689:
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  goto _691;

_690:
  _666 = *((&_659[((int32_t)1)]));
  switch ((((((uint8_t)(llvm_lshr_u8(_666, 4))))&3))) {
  default:
    goto _692;
  case ((uint8_t)1):
    goto _693;
  case ((uint8_t)2u):
    goto _694;
  }

_693:
  _667 = (&_662->field14);
  _668 = *_667;
  _669 = ((uint32_t)(uint16_t)_668);
  if ((((_668 == ((uint16_t)0))&1))) {
    goto _695;
  } else {
    goto _696;
  }

_695:
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  goto _691;

_696:
  _670 = ((uint32_t)(uint16_t)_665);
  if ((((((uint32_t)(llvm_add_u32(_669, _670))) > ((uint32_t)529u))&1))) {
    goto _697;
  } else {
    goto _698;
  }

_697:
  *_667 = 0;
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  _671 = l2cap_debug_enable;
  if ((((((int8_t)_671) < ((int8_t)((uint8_t)0)))&1))) {
    goto _699;
  } else {
    goto _691;
  }

_699:
  _672 = *_667;
  _673 =  /*tail*/ printf(((&_OC_str_OC_17.array[((int32_t)0)])), (((uint32_t)(uint16_t)_672)), _670, 529);
  goto _691;

_698:
  _674 = memcpy(((&_662->field13.array[((int32_t)_669)])), ((&_659[((int32_t)4)])), _670);
  _675 = *_667;
  _676 = llvm_add_u16(_675, _665);
  *_667 = _676;
  _677 = (&_662->field15);
  _678 = *_677;
  if ((((((uint32_t)(((uint32_t)(uint16_t)_676))) < ((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_678)), 8))))&1))) {
    goto _700;
  } else {
    goto _701;
  }

_701:
   /*tail*/ l2cap_packet_handler(2, ((&_662->field13.array[((int32_t)0)])), _676);
  *_677 = 0;
  *_667 = 0;
  goto _700;

_700:
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  goto _702;

_694:
  _679 = (&_662->field14);
  _680 = *_679;
  if ((((_680 == ((uint16_t)0))&1))) {
    goto _703;
  } else {
    goto _704;
  }

_704:
  *_679 = 0;
  goto _703;

_703:
  _681 = *((&_659[((int32_t)4)]));
  _682 = *((&_659[((int32_t)5)]));
  _683 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_682)), 8)), (((uint16_t)(uint8_t)_681)));
  _684 = ((uint32_t)(uint16_t)_665);
  _685 = llvm_add_u32((((uint32_t)(uint16_t)_683)), 4);
  if ((((((uint32_t)_684) < ((uint32_t)_685))&1))) {
    goto _705;
  } else {
    goto _706;
  }

_706:
   /*tail*/ l2cap_packet_handler(2, _659, (llvm_add_u16(_665, 4)));
  goto _707;

_705:
  if ((((((uint16_t)_665) > ((uint16_t)((uint16_t)525)))&1))) {
    goto _708;
  } else {
    goto _709;
  }

_708:
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  goto _691;

_709:
  _686 = (&_662->field13.array[((int32_t)0)]);
  _687 = llvm_add_u32(_684, 4);
  _688 = memcpy(_686, _659, _687);
  *_679 = (((uint16_t)_687));
  *((&_662->field15)) = _683;
   /*tail*/ bt_store_16(_686, 2, (((uint16_t)_685)));
  goto _707;

_707:
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  goto _702;

_692:
   /*tail*/ ll_hci_private_free_dma_rx(_659);
  goto _691;

_702:
   /*tail*/ hci_run_for_acl_data_send();
  goto _691;

_691:
  return;
}


void hci_acl_handler(uint8_t* _710, uint16_t _711) {
  uint8_t _712;
  uint8_t _713;
  uint16_t _714;
  uint16_t _715;
  uint32_t _716;

  _712 = *_710;
  _713 = *((&_710[((int32_t)1)]));
  _714 = llvm_or_u16((llvm_and_u16((llvm_shl_u16((((uint16_t)(uint8_t)_713)), 8)), 3840)), (((uint16_t)(uint8_t)_712)));
  _715 =  /*tail*/ get_ble_link_handle();
  if ((((((uint16_t)_714) < ((uint16_t)_715))&1))) {
    goto _717;
  } else {
    goto _718;
  }

_718:
  _716 = config_stack_modules;
  if (((((_716 & 4) == 0u)&1))) {
    goto _719;
  } else {
    goto _720;
  }

_720:
   /*tail*/ hci_ble_acl_handler(_710, /*UNDEF*/0, _714);
  goto _719;

_717:
   /*tail*/ hci_edr_acl_handler(_710, _711, _714);
  goto _719;

_719:
  return;
}


uint8_t hci_le_get_acl_packet_num(uint16_t _721) {
  struct l_struct_struct_OC___le_hci_connection* _722;
  uint8_t _723;
  uint8_t _724;
  uint8_t _724__PHI_TEMPORARY;

  _722 =  /*tail*/ le_hci_connection_for_handle(_721);
  if ((((_722 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _724__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _725;
  } else {
    goto _726;
  }

_726:
  _723 = *((&_722->field16));
  _724__PHI_TEMPORARY = _723;   /* for PHI node */
  goto _725;

_725:
  _724 = _724__PHI_TEMPORARY;
  return _724;
}


uint8_t hci_le_get_connect_flag(uint16_t _727) {
  struct l_struct_struct_OC___le_hci_connection* _728;

  _728 =  /*tail*/ le_hci_connection_for_handle(_727);
  return (((uint8_t)(bool)(((_728 != ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))));
}


uint32_t hci_le_send_acl_packet_buffer(uint8_t* _729, uint32_t _730) {
  uint8_t _731;
  uint8_t _732;
  uint8_t _733;
  uint16_t _734;
  uint32_t _735;
  struct l_struct_struct_OC___le_hci_connection* _736;
  uint32_t _737;
  uint32_t _737__PHI_TEMPORARY;

  _731 = *((&le_hci_stack.field3));
  if ((((_731 == ((uint8_t)0))&1))) {
    _737__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _738;
  } else {
    goto _739;
  }

_739:
  _732 = *_729;
  _733 = *((&_729[((int32_t)1)]));
  _734 = llvm_or_u16((llvm_and_u16((llvm_shl_u16((((uint16_t)(uint8_t)_733)), 8)), 3840)), (((uint16_t)(uint8_t)_732)));
  _735 =  /*tail*/ hci_number_free_acl_slots_for_handle(_734);
  if ((((((int32_t)_735) > ((int32_t)0u))&1))) {
    goto _740;
  } else {
    goto _741;
  }

_741:
  *((&le_hci_stack.field3)) = 0;
  _737__PHI_TEMPORARY = 87;   /* for PHI node */
  goto _738;

_740:
  _736 =  /*tail*/ le_hci_connection_for_handle(_734);
  if ((((_736 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _742;
  } else {
    goto _743;
  }

_742:
  *((&le_hci_stack.field3)) = 0;
  _737__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _738;

_743:
  *((&le_hci_stack.field5)) = (((uint16_t)_730));
  *((&le_hci_stack.field4)) = 4;
   /*tail*/ le_hci_send_acl_packet_fragments(_736);
  _737__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _738;

_738:
  _737 = _737__PHI_TEMPORARY;
  return _737;
}


uint32_t hci_can_send_prepared_acl_packet_now(uint16_t _744) {
  uint32_t _745;

  _745 =  /*tail*/ hci_number_free_acl_slots_for_handle(_744);
  return (((uint32_t)(bool)(((((int32_t)_745) > ((int32_t)0u))&1))));
}


static void le_hci_send_acl_packet_fragments(struct l_struct_struct_OC___le_hci_connection* _746) {
  uint16_t _747;
  uint32_t _748;
  uint8_t* _749;
  uint16_t* _750;
  uint16_t _751;
  uint16_t _752;
  uint16_t _753;
  uint32_t _754;
  uint32_t _755;
  uint32_t _756;
  uint8_t _757;
  uint8_t _758;
  uint8_t _759;
  uint16_t _760;
  uint32_t _761;
  uint16_t _762;
  uint32_t _763;
  uint8_t* _764;

  _747 = *((&le_hci_stack.field7));
  _748 = ((uint32_t)(uint16_t)_747);
  _749 = (&_746->field16);
  _750 = (&_746->field2);
  goto _765;

  do {     /* Syntactic loop '' to make GCC happy */
_765:
  _751 = *((&le_hci_stack.field4));
  _752 = llvm_add_u16(_751, -4);
  _753 = *((&le_hci_stack.field5));
  _754 = llvm_sub_u32((((uint32_t)(uint16_t)_753)), (((uint32_t)(uint16_t)_751)));
  _755 = llvm_select_u32((((((int32_t)_754) > ((int32_t)_748))&1)), _748, _754);
  _756 = ((uint32_t)(uint16_t)_752);
  if ((((_752 == ((uint16_t)0))&1))) {
    goto _766;
  } else {
    goto _767;
  }

_767:
  _757 = *((&le_hci_stack.field2.array[((int32_t)0)]));
  _758 = *((&le_hci_stack.field2.array[((int32_t)1)]));
   /*tail*/ bt_store_16(((&le_hci_stack.field2.array[((int32_t)0)])), _752, (llvm_or_u16((llvm_or_u16((((uint16_t)(uint8_t)_757)), (llvm_and_u16((llvm_shl_u16((((uint16_t)(uint8_t)_758)), 8)), -12544)))), 4096)));
  goto _766;

_766:
   /*tail*/ bt_store_16(((&le_hci_stack.field2.array[((int32_t)0)])), (llvm_add_u16(_751, -2)), (((uint16_t)_755)));
  _759 = *_749;
  *_749 = (llvm_add_u8(_759, 1));
  if ((((((int32_t)_754) > ((int32_t)_748))&1))) {
    goto _768;
  } else {
    goto _769;
  }

_769:
  *((&le_hci_stack.field4)) = 0;
  *((&le_hci_stack.field5)) = 0;
  goto _770;

_768:
  _760 = *((&le_hci_stack.field4));
  *((&le_hci_stack.field4)) = (((uint16_t)(llvm_add_u32((((uint32_t)(uint16_t)_760)), _755))));
  goto _770;

_770:
  _761 =  /*tail*/ le_hci_send_acl_packet(((&le_hci_stack.field2.array[((int32_t)_756)])), (((uint16_t)(llvm_add_u32(_755, 4)))));
  if ((((((int32_t)_754) > ((int32_t)_748))&1))) {
    goto _771;
  } else {
    goto _772;
  }

_771:
  _762 = *_750;
  _763 =  /*tail*/ hci_number_free_acl_slots_for_handle(_762);
  if ((((((int32_t)_763) > ((int32_t)0u))&1))) {
    goto _765;
  } else {
    goto _773;
  }

  } while (1); /* end of syntactic loop '' */
_772:
  _764 = memset(((&le_hci_stack.field3)), 0, 5);
  goto _774;

_773:
  goto _774;

_774:
  return;
}


uint8_t* hci_get_outgoing_acl_packet_buffer_test(void) {
  return ((&le_hci_stack.field2.array[((int32_t)0)]));
}


uint32_t hci_send_acl_packet_buffer(uint8_t* _775, uint32_t _776) {
  uint32_t _777;

  _777 =  /*tail*/ lmp_hci_send_packet(_775, _776);
  return 0;
}


uint8_t* hci_get_outgoing_acl_packet_buffer(uint16_t _778) {
  uint8_t* _779;

  _779 =  /*tail*/ lmp_private_get_tx_packet_buffer((llvm_add_u32((((uint32_t)(uint16_t)_778)), 4)));
  return _779;
}


uint32_t bredr_hci_send_acl_packet(uint8_t* _780, uint32_t _781, uint8_t _782) {
  uint32_t _783;

  _783 =  /*tail*/ lmp_hci_send_packet(_780, _781);
  return 0;
}


void hci_hold_acl_packet(uint8_t* _784) {
   /*tail*/ lmp_hci_private_hold_acl_packet(_784);
}


void hci_free_acl_packet(uint16_t _785, uint8_t* _786) {
   /*tail*/ lmp_hci_private_free_acl_packet(_786);
   /*tail*/ lmp_hci_host_num_of_completed_packets(_785, 1);
}


void set_hid_independent_info(void) {
  struct l_array_6_uint8_t _787;    /* Address-exposed local */
  struct l_array_40_uint8_t _788;    /* Address-exposed local */
  uint8_t* _789;
  uint8_t* _790;
  uint8_t* _791;
  uint8_t* _792;
  uint8_t* _793;
  uint8_t* _794;
  uint32_t _795;
  uint32_t _795__PHI_TEMPORARY;
  uint8_t _796;
  uint32_t _797;
  uint8_t* _798;
  uint32_t _799;
  uint8_t* _800;
  uint8_t* _801;
  uint8_t* _802;
  uint32_t _803;
  uint8_t* _804;
  uint32_t _805;
  uint8_t* _806;
  uint8_t* _807;
  uint8_t* _808;
  uint32_t _809;
  uint32_t _809__PHI_TEMPORARY;
  uint32_t _810;
  struct l_struct_struct_OC__stack_config* _811;
  uint32_t _812;

  _789 = (&_787.array[((int32_t)0)]);
  _790 = memset(_789, 0, 6);
  _791 = (&_788.array[((int32_t)0)]);
  _792 = memset(_791, 0, 40);
  _793 =  /*tail*/ bt_get_mac_addr();
  _795__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _813;

_814:
  _794 =  /*tail*/ bt_get_hid_name();
  if ((((_794 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _815;
  } else {
    goto _816;
  }

  do {     /* Syntactic loop '' to make GCC happy */
_813:
  _795 = _795__PHI_TEMPORARY;
  _796 = *((&_793[((int32_t)_795)]));
  *((&_787.array[((int32_t)_795)])) = (llvm_add_u8(_796, 1));
  _797 = llvm_add_u32(_795, 1);
  if ((((_797 == 6u)&1))) {
    goto _814;
  } else {
    _795__PHI_TEMPORARY = _797;   /* for PHI node */
    goto _813;
  }

  } while (1); /* end of syntactic loop '' */
_816:
  _798 =  /*tail*/ bt_get_hid_name();
  _799 =  /*tail*/ strlen(_798);
  _800 =  /*tail*/ bt_get_hid_name();
  if ((((((int32_t)_799) < ((int32_t)40u))&1))) {
    goto _817;
  } else {
    goto _818;
  }

_817:
  _801 = memcpy(_791, _800, _799);
  goto _819;

_818:
  _802 = memcpy(_791, _800, 39);
  goto _819;

_819:
  _803 = puts(_791);
  goto _820;

_815:
  _804 =  /*tail*/ bt_get_local_name();
  _805 =  /*tail*/ strlen(_804);
  _806 =  /*tail*/ bt_get_local_name();
  if ((((((int32_t)_805) < ((int32_t)35u))&1))) {
    goto _821;
  } else {
    goto _822;
  }

_821:
  _807 = memcpy(_791, _806, _805);
  _809__PHI_TEMPORARY = _805;   /* for PHI node */
  goto _823;

_822:
  _808 = memcpy(_791, _806, 35);
  _809__PHI_TEMPORARY = 35;   /* for PHI node */
  goto _823;

_823:
  _809 = _809__PHI_TEMPORARY;
  *((&_788.array[((int32_t)_809)])) = 95u;
  *((&_788.array[((int32_t)(llvm_add_u32(_809, 1)))])) = 72u;
  *((&_788.array[((int32_t)(llvm_add_u32(_809, 2)))])) = 73u;
  *((&_788.array[((int32_t)(llvm_add_u32(_809, 3)))])) = 68u;
  _810 = puts(_791);
  goto _820;

_820:
  lmp_hci_write_local_address(_789);
  _811 = user_stack_configs;
  _812 = *((&_811->field0));
  lmp_hci_write_class_of_device(_812);
  lmp_hci_write_local_name(_791);
}


void btstack_hci_init(void) {
  uint32_t _824;
  uint32_t _825;
  uint8_t* _826;
  uint8_t _827;
  struct l_struct_struct_OC__stack_config* _828;
  uint32_t* _829;
  uint32_t _830;
  uint32_t _831;
  uint32_t _832;
  uint32_t _832__PHI_TEMPORARY;
  uint8_t* _833;
  struct l_struct_struct_OC__stack_config* _834;
  uint32_t _835;
  struct l_struct_struct_OC__stack_config* _836;
  uint16_t _837;
  struct l_struct_struct_OC__stack_config* _838;
  uint16_t _839;

  _824 = config_btctler_modules;
  if (((((_824 & 1) == 0u)&1))) {
    goto _840;
  } else {
    goto _841;
  }

_841:
  _825 =  /*tail*/ ((l_fptr_6*)(void*)lmp_hci_reset)();
  _826 =  /*tail*/ bt_get_mac_addr();
   /*tail*/ lmp_hci_write_local_address(_826);
  _827 = a2dp_source_bqb_support;
  _828 = user_stack_configs;
  _829 = (&_828->field0);
  _830 = *_829;
  if ((((_827 == ((uint8_t)0))&1))) {
    _832__PHI_TEMPORARY = _830;   /* for PHI node */
    goto _842;
  } else {
    goto _843;
  }

_843:
  _831 = _830 | 524288;
  *_829 = _831;
  _832__PHI_TEMPORARY = _831;   /* for PHI node */
  goto _842;

_842:
  _832 = _832__PHI_TEMPORARY;
   /*tail*/ lmp_hci_write_class_of_device(_832);
  _833 =  /*tail*/ bt_get_local_name();
   /*tail*/ lmp_hci_write_local_name(_833);
  _834 = user_stack_configs;
  _835 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_834->field9)));
   /*tail*/ lmp_hci_write_simple_pairing_mode((llvm_and_u8((((uint8_t)(llvm_lshr_u32(_835, 12)))), 1)));
  _836 = user_stack_configs;
  _837 = *((&_836->field1));
   /*tail*/ lmp_hci_write_page_timeout(_837);
  _838 = user_stack_configs;
  _839 = *((&_838->field2));
   /*tail*/ lmp_hci_write_super_timeout(_839);
  goto _840;

_840:
  if (((((_824 & 2) == 0u)&1))) {
    goto _844;
  } else {
    goto _845;
  }

_845:
   /*tail*/ ble_hci_init();
  goto _844;

_844:
  return;
}


uint8_t* tws_set_auto_pair_code(void) {
  return ((&code_buf.array[((int32_t)0)]));
}


void tws_le_acc_generation_init(void) {
  struct l_array_6_uint8_t _846;    /* Address-exposed local */
  uint8_t* _847;
  uint32_t _848;
  uint8_t _849;
  uint8_t* _850;
  uint32_t _851;
  uint32_t _852;
  uint32_t _853;
  uint32_t _854;
  uint32_t _855;
  uint8_t _856;
  uint32_t _857;
  uint8_t _858;
  uint8_t _859;
  uint8_t _859__PHI_TEMPORARY;
  uint32_t _860;
  uint32_t _861;
  uint32_t _862;
  uint32_t _863;
  uint8_t _864;
  uint32_t _865;
  uint32_t _866;
  uint32_t _867;
  uint32_t _868;
  uint32_t _869;
  uint32_t _870;
  uint32_t _871;
  uint32_t _872;
  uint32_t _873;
  uint8_t _874;
  uint32_t _875;
  uint8_t _876;
  uint32_t _877;
  uint32_t _878;
  uint32_t _879;
  uint32_t _880;

  _847 = (&_846.array[((int32_t)0)]);
  _848 = config_btctler_le_tws;
  if ((((_848 == 0u)&1))) {
    goto _881;
  } else {
    goto _882;
  }

_882:
  _849 = tws_auto_pair_enable;
  if ((((_849 == ((uint8_t)0))&1))) {
    goto _883;
  } else {
    goto _884;
  }

_884:
  _850 =  /*tail*/ tws_set_auto_pair_code();
  _851 =  /*tail*/ tws_le_acc_generation(_850);
  g_le_tws_search_aa = _851;
  g_le_tws_pair_aa = _851;
  g_le_tws_connect_aa = _851;
  goto _885;

_883:
  _852 =  /*tail*/ syscfg_read(84, ((uint8_t*)(&g_le_tws_pair_aa)), 4);
  if ((((_852 == 4u)&1))) {
    goto _886;
  } else {
    goto _887;
  }

_887:
  _853 = syscfg_read(95, _847, 6);
  _854 = tws_le_acc_generation(_847);
  g_le_tws_pair_aa = _854;
  _855 = syscfg_write(84, ((uint8_t*)(&g_le_tws_pair_aa)), 4);
  _856 = l2cap_debug_enable;
  if ((((((int8_t)_856) < ((int8_t)((uint8_t)0)))&1))) {
    goto _888;
  } else {
    _859__PHI_TEMPORARY = _856;   /* for PHI node */
    goto _889;
  }

_888:
  _857 = puts(((&str_OC_45.array[((int32_t)0)])));
  _858 = l2cap_debug_enable;
  _859__PHI_TEMPORARY = _858;   /* for PHI node */
  goto _889;

_889:
  _859 = _859__PHI_TEMPORARY;
  if (((((llvm_and_u8(_859, 64u)) == ((uint8_t)0))&1))) {
    goto _886;
  } else {
    goto _890;
  }

_890:
  put_buf(_847, 6);
  goto _886;

_886:
  _860 = syscfg_read(85, ((uint8_t*)(&g_le_tws_connect_aa)), 4);
  if ((((_860 == 4u)&1))) {
    goto _891;
  } else {
    goto _892;
  }

_892:
  _861 = syscfg_read(95, _847, 6);
  _862 = tws_le_acc_generation(_847);
  g_le_tws_connect_aa = _862;
  _863 = syscfg_write(85, ((uint8_t*)(&g_le_tws_connect_aa)), 4);
  _864 = l2cap_debug_enable;
  if ((((((int8_t)_864) < ((int8_t)((uint8_t)0)))&1))) {
    goto _893;
  } else {
    goto _891;
  }

_893:
  _865 = puts(((&str_OC_44.array[((int32_t)0)])));
  goto _891;

_891:
  _866 = g_le_tws_pair_aa;
  _867 = g_le_tws_connect_aa;
  if (((((((_866 == 4294967295u)&1)) | (((_867 == 4294967295u)&1)))&1))) {
    goto _894;
  } else {
    goto _895;
  }

_894:
  _868 = syscfg_read(95, _847, 6);
  _869 = tws_le_acc_generation(_847);
  g_le_tws_pair_aa = _869;
  _870 = syscfg_write(84, ((uint8_t*)(&g_le_tws_pair_aa)), 4);
  _871 = tws_le_acc_generation(_847);
  g_le_tws_connect_aa = _871;
  _872 = syscfg_write(85, ((uint8_t*)(&g_le_tws_connect_aa)), 4);
  goto _895;

_895:
  _873 = tws_le_acc_generation(((&code_buf.array[((int32_t)0)])));
  g_le_tws_search_aa = _873;
  goto _885;

_885:
  tws_le_adv_scan_parm_init();
  _874 = l2cap_debug_enable;
  if ((((((int8_t)_874) < ((int8_t)((uint8_t)0)))&1))) {
    goto _896;
  } else {
    goto _881;
  }

_896:
  _875 = puts(((&str_OC_43.array[((int32_t)0)])));
  _876 = l2cap_debug_enable;
  if ((((((int8_t)_876) < ((int8_t)((uint8_t)0)))&1))) {
    goto _897;
  } else {
    goto _881;
  }

_897:
  _877 = g_le_tws_pair_aa;
  _878 = g_le_tws_connect_aa;
  _879 = g_le_tws_search_aa;
  _880 = printf(((&_OC_str_OC_21.array[((int32_t)0)])), _877, _878, _879);
  goto _881;

_881:
  return;
}


uint32_t tws_le_get_pair_aa(void) {
  uint32_t _898;
  uint32_t _899;
  uint32_t _900;
  uint32_t _901;
  uint32_t _902;
  uint32_t _903;
  uint32_t _904;
  uint32_t _904__PHI_TEMPORARY;

  _898 = config_btctler_le_tws;
  if ((((_898 == 0u)&1))) {
    _904__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _905;
  } else {
    goto _906;
  }

_906:
  _899 = config_asser;
  _900 = g_le_tws_pair_aa;
  if ((((_899 == 0u)&1))) {
    goto _907;
  } else {
    goto _908;
  }

_908:
  if ((((_900 != 4294967295u)&1))) {
    goto _909;
  } else {
    goto _910;
  }

_910:
  _901 =  /*tail*/ printf(((&_OC_str_OC_22.array[((int32_t)0)])), ((&_OC_str_OC_23.array[((int32_t)0)])), 1435);
  _902 =  /*tail*/ printf(((&_OC_str_OC_24.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _909;

_907:
  if ((((_900 != 4294967295u)&1))) {
    goto _909;
  } else {
    goto _911;
  }

_911:
   /*tail*/ cpu_reset();
  goto _909;

_909:
  _903 = g_le_tws_pair_aa;
  _904__PHI_TEMPORARY = _903;   /* for PHI node */
  goto _905;

_905:
  _904 = _904__PHI_TEMPORARY;
  return _904;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


uint32_t tws_le_get_connect_aa(void) {
  uint32_t _912;
  uint32_t _913;
  uint32_t _914;
  uint32_t _915;
  uint32_t _916;
  uint32_t _917;
  uint32_t _918;
  uint32_t _918__PHI_TEMPORARY;

  _912 = config_btctler_le_tws;
  if ((((_912 == 0u)&1))) {
    _918__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _919;
  } else {
    goto _920;
  }

_920:
  _913 = config_asser;
  _914 = g_le_tws_connect_aa;
  if ((((_913 == 0u)&1))) {
    goto _921;
  } else {
    goto _922;
  }

_922:
  if ((((_914 != 4294967295u)&1))) {
    goto _923;
  } else {
    goto _924;
  }

_924:
  _915 =  /*tail*/ printf(((&_OC_str_OC_22.array[((int32_t)0)])), ((&_OC_str_OC_23.array[((int32_t)0)])), 1445);
  _916 =  /*tail*/ printf(((&_OC_str_OC_25.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _923;

_921:
  if ((((_914 != 4294967295u)&1))) {
    goto _923;
  } else {
    goto _925;
  }

_925:
   /*tail*/ cpu_reset();
  goto _923;

_923:
  _917 = g_le_tws_connect_aa;
  _918__PHI_TEMPORARY = _917;   /* for PHI node */
  goto _919;

_919:
  _918 = _918__PHI_TEMPORARY;
  return _918;
}


uint32_t tws_le_get_search_aa(void) {
  uint32_t _926;
  uint32_t _927;
  uint32_t _928;
  uint32_t _929;
  uint32_t _930;
  uint32_t _931;
  uint32_t _932;
  uint32_t _932__PHI_TEMPORARY;

  _926 = config_btctler_le_tws;
  if ((((_926 == 0u)&1))) {
    _932__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _933;
  } else {
    goto _934;
  }

_934:
  _927 = config_asser;
  _928 = g_le_tws_search_aa;
  if ((((_927 == 0u)&1))) {
    goto _935;
  } else {
    goto _936;
  }

_936:
  if ((((_928 != 4294967295u)&1))) {
    goto _937;
  } else {
    goto _938;
  }

_938:
  _929 =  /*tail*/ printf(((&_OC_str_OC_22.array[((int32_t)0)])), ((&_OC_str_OC_23.array[((int32_t)0)])), 1455);
  _930 =  /*tail*/ printf(((&_OC_str_OC_26.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _937;

_935:
  if ((((_928 != 4294967295u)&1))) {
    goto _937;
  } else {
    goto _939;
  }

_939:
   /*tail*/ cpu_reset();
  goto _937;

_937:
  _931 = g_le_tws_search_aa;
  _932__PHI_TEMPORARY = _931;   /* for PHI node */
  goto _933;

_933:
  _932 = _932__PHI_TEMPORARY;
  return _932;
}


uint8_t check_tws_le_aa(void) {
  uint32_t _940;
  uint32_t _941;
  uint32_t _942;
  uint32_t _943;
  uint8_t _944;
  uint8_t _944__PHI_TEMPORARY;

  _940 = config_btctler_le_tws;
  if ((((_940 == 0u)&1))) {
    goto _945;
  } else {
    goto _946;
  }

_946:
  _941 = g_le_tws_pair_aa;
  _942 = g_le_tws_search_aa;
  _943 = g_le_tws_connect_aa;
  if ((((((((((_941 == 4294967295u)&1)) | (((_942 == 4294967295u)&1)))&1)) | (((_943 == 4294967295u)&1)))&1))) {
    _944__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _947;
  } else {
    goto _945;
  }

_945:
  _944__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _947;

_947:
  _944 = _944__PHI_TEMPORARY;
  return _944;
}


void tws_api_set_connect_aa(uint32_t _948) {
  uint32_t _949;
  uint8_t _950;
  uint32_t _951;
  uint32_t _952;
  uint32_t _953;
  uint32_t _954;
  uint8_t* _955;
  uint32_t _956;
  uint32_t _957;
  uint32_t _957__PHI_TEMPORARY;
  uint32_t _958;
  uint8_t _959;
  uint32_t _960;
  uint32_t _961;

  _949 = config_btctler_le_tws;
  _950 = tws_auto_pair_enable;
  if (((((((_949 != 0u)&1)) & (((_950 == ((uint8_t)0))&1)))&1))) {
    goto _962;
  } else {
    goto _963;
  }

_962:
  _951 = config_asser;
  _952 = g_le_tws_connect_aa;
  if ((((_951 == 0u)&1))) {
    goto _964;
  } else {
    goto _965;
  }

_965:
  if ((((_952 != 4294967295u)&1))) {
    goto _966;
  } else {
    goto _967;
  }

_967:
  _953 =  /*tail*/ printf(((&_OC_str_OC_22.array[((int32_t)0)])), ((&_OC_str_OC_23.array[((int32_t)0)])), 1481);
  _954 =  /*tail*/ printf(((&_OC_str_OC_25.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _966;

_964:
  if ((((_952 != 4294967295u)&1))) {
    goto _966;
  } else {
    goto _968;
  }

_968:
   /*tail*/ cpu_reset();
  goto _966;

_966:
  _955 =  /*tail*/ get_tws_internal_addr(_948);
  if ((((_955 == ((uint8_t*)/*NULL*/0))&1))) {
    _957__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _969;
  } else {
    goto _970;
  }

_970:
  _956 =  /*tail*/ tws_le_acc_generation(_955);
  _957__PHI_TEMPORARY = _956;   /* for PHI node */
  goto _969;

_969:
  _957 = _957__PHI_TEMPORARY;
  _958 = g_le_tws_connect_aa;
  if ((((_958 == _957)&1))) {
    goto _963;
  } else {
    goto _971;
  }

_971:
  _959 = l2cap_debug_enable;
  if ((((((int8_t)_959) < ((int8_t)((uint8_t)0)))&1))) {
    goto _972;
  } else {
    goto _973;
  }

_972:
  _960 =  /*tail*/ printf(((&_OC_str_OC_27.array[((int32_t)0)])), _958, _957);
  goto _973;

_973:
  g_le_tws_connect_aa = _957;
  _961 =  /*tail*/ syscfg_write(85, ((uint8_t*)(&g_le_tws_connect_aa)), 4);
  goto _963;

_963:
  return;
}


void tws_api_set_connect_aa_allways(uint32_t _974) {
  uint32_t _975;    /* Address-exposed local */
  uint32_t _976;
  uint8_t _977;
  uint32_t _978;

  _975 = _974;
  _976 = config_btctler_le_tws;
  _977 = tws_auto_pair_enable;
  if (((((((_976 != 0u)&1)) & (((_977 == ((uint8_t)0))&1)))&1))) {
    goto _979;
  } else {
    goto _980;
  }

_979:
  g_le_tws_connect_aa = _974;
  _978 = syscfg_write(85, (((uint8_t*)(&_975))), 4);
  goto _980;

_980:
  return;
}


void tws_api_clear_connect_aa(void) {
  uint32_t _981;    /* Address-exposed local */
  struct l_array_6_uint8_t _982;    /* Address-exposed local */
  uint8_t* _983;
  uint8_t* _984;
  uint32_t _985;
  uint8_t _986;
  uint32_t _987;
  uint32_t _988;
  uint32_t _989;
  uint32_t _990;
  uint32_t _991;
  uint32_t _992;

  _983 = ((uint8_t*)(&_981));
  _981 = -1;
  _984 = (&_982.array[((int32_t)0)]);
  _985 = config_btctler_le_tws;
  _986 = tws_auto_pair_enable;
  if (((((((_985 != 0u)&1)) & (((_986 == ((uint8_t)0))&1)))&1))) {
    goto _993;
  } else {
    goto _994;
  }

_993:
  _987 = syscfg_write(85, _983, 4);
  _988 = syscfg_write(84, _983, 4);
  _989 = syscfg_read(95, _984, 6);
  _990 = tws_le_acc_generation(_984);
  g_le_tws_pair_aa = _990;
  g_le_tws_connect_aa = _990;
  _991 = syscfg_write(84, ((uint8_t*)(&g_le_tws_pair_aa)), 4);
  _992 = syscfg_write(85, ((uint8_t*)(&g_le_tws_connect_aa)), 4);
  goto _994;

_994:
  return;
}


uint8_t* ble_get_mac_addr(void) {
  uint8_t* _995;

  _995 =  /*tail*/ bt_get_mac_addr();
  return _995;
}


void ble_hci_init(void) {
  uint8_t* _996;
  uint16_t _997;
  uint16_t _998;
  uint32_t _999;
  uint8_t _1000;
  uint32_t _1001;

  _996 = memset(((uint8_t*)(&le_hci_stack)), 0, 556);
   /*tail*/ ll_hci_set_event_mask(((&le_event_mask.array[((int32_t)0)])));
   /*tail*/ dev_hci_set_event_mask(((&hci_le_event_mask.array[((int32_t)0)])));
  _997 =  /*tail*/ ll_hci_get_acl_data_len();
  *((&le_hci_stack.field7)) = _997;
  _998 =  /*tail*/ ll_hci_get_acl_total_num();
  *((&le_hci_stack.field6)) = (((uint8_t)_998));
  _999 = config_vendor_le_bb;
  *((&le_hci_stack.field8.field0)) = (llvm_select_u16((((_999 != 0u)&1)), 1, 6));
  *((&le_hci_stack.field8.field1)) = 3200;
  *((&le_hci_stack.field8.field2)) = 0;
  *((&le_hci_stack.field8.field3)) = 500;
  *((&le_hci_stack.field8.field4)) = 10;
  *((&le_hci_stack.field8.field5)) = 3200;
  _1000 = l2cap_debug_enable;
  if ((((((int8_t)_1000) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1002;
  } else {
    goto _1003;
  }

_1002:
  _1001 =  /*tail*/ puts(((&str_OC_46.array[((int32_t)0)])));
  goto _1003;

_1003:
  return;
}


void hci_connectable_control(uint8_t _1004, uint8_t _1005) {
  uint8_t _1006;
  uint8_t _1007;
  uint8_t _1008;
  uint32_t _1009;
  uint8_t _1010;
  uint32_t _1011;

  _1006 = hci_scan_control;
  hci_scan_control = (llvm_select_u8((((_1004 != ((uint8_t)0))&1)), (llvm_or_u8(_1006, 2)), (llvm_and_u8(_1006, -3))));
  _1007 =  /*tail*/ lmp_private_get_esco_conn_num();
  if ((((_1007 == ((uint8_t)0))&1))) {
    goto _1012;
  } else {
    goto _1013;
  }

_1012:
  _1008 = hci_scan_control;
  _1009 =  /*tail*/ lmp_hci_write_scan_enable(_1008);
  goto _1014;

_1013:
  _1010 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1010, 32)) == ((uint8_t)0))&1))) {
    goto _1014;
  } else {
    goto _1015;
  }

_1015:
  _1011 =  /*tail*/ puts(((&_OC_str_OC_29.array[((int32_t)0)])));
  goto _1014;

_1014:
  return;
}


void hci_discoverable_control(uint8_t _1016, uint8_t _1017) {
  uint8_t _1018;
  uint8_t _1019;
  uint8_t _1020;
  uint32_t _1021;
  uint8_t _1022;
  uint32_t _1023;

  _1018 = hci_scan_control;
  hci_scan_control = (llvm_select_u8((((_1016 != ((uint8_t)0))&1)), (llvm_or_u8(_1018, 1)), (llvm_and_u8(_1018, -2))));
  _1019 =  /*tail*/ lmp_private_get_esco_conn_num();
  if ((((_1019 == ((uint8_t)0))&1))) {
    goto _1024;
  } else {
    goto _1025;
  }

_1024:
  _1020 = hci_scan_control;
  _1021 =  /*tail*/ lmp_hci_write_scan_enable(_1020);
  goto _1026;

_1025:
  _1022 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1022, 32)) == ((uint8_t)0))&1))) {
    goto _1026;
  } else {
    goto _1027;
  }

_1027:
  _1023 =  /*tail*/ puts(((&_OC_str_OC_30.array[((int32_t)0)])));
  goto _1026;

_1026:
  return;
}


uint8_t get_hci_scan_value(void) {
  uint8_t _1028;

  _1028 = hci_scan_control;
  return _1028;
}


void hci_cancle_page(void) {
   /*tail*/ ((l_fptr_4*)(void*)lmp_hci_cancel_page)();
}


void hci_connection_cancel(uint8_t* _1029) {
   /*tail*/ lmp_hci_connection_cancel(_1029);
}


void hci_inquiry_start(uint8_t _1030) {
   /*tail*/ lmp_hci_inquiry(10390323, _1030, 0);
}


void hci_cancel_inquiry(void) {
   /*tail*/ ((l_fptr_4*)(void*)lmp_hci_cancel_inquiry)();
}


void hci_set_sniff_mode(uint32_t _1031, uint8_t _1032, uint8_t* _1033, uint16_t _1034, uint16_t _1035, uint16_t _1036, uint16_t _1037) {
  uint16_t _1038;
  uint8_t _1039;
  uint32_t _1040;
  uint8_t _1041;
  uint32_t _1042;

  _1038 =  /*tail*/ lmp_private_handler_for_remote_addr(_1033, 1);
  if ((((_1031 == 0u)&1))) {
    goto _1043;
  } else {
    goto _1044;
  }

_1043:
  if ((((_1032 == ((uint8_t)2))&1))) {
    goto _1045;
  } else {
    goto _1046;
  }

_1045:
  _1039 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1039, 32)) == ((uint8_t)0))&1))) {
    goto _1047;
  } else {
    goto _1048;
  }

_1048:
  _1040 =  /*tail*/ puts(((&_OC_str_OC_31.array[((int32_t)0)])));
  goto _1047;

_1047:
   /*tail*/ lmp_hci_exit_sniff_mode_command(_1038);
  goto _1046;

_1044:
  if ((((_1032 == ((uint8_t)0))&1))) {
    goto _1049;
  } else {
    goto _1046;
  }

_1049:
  _1041 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1041, 32)) == ((uint8_t)0))&1))) {
    goto _1050;
  } else {
    goto _1051;
  }

_1051:
  _1042 =  /*tail*/ puts(((&_OC_str_OC_32.array[((int32_t)0)])));
  goto _1050;

_1050:
   /*tail*/ lmp_hci_sniff_mode_command(_1038, _1034, _1035, _1036, _1037);
  goto _1046;

_1046:
  return;
}


void hci_tx_channel_chassification(uint8_t* _1052) {
   /*tail*/ lmp_hci_tx_channel_chassification(_1052);
}


uint16_t hci_usable_acl_packet_types(void) {
  uint32_t _1053;
  uint32_t _1053__PHI_TEMPORARY;
  uint16_t _1054;
  uint16_t _1054__PHI_TEMPORARY;
  uint16_t _1055;
  uint16_t _1056;
  uint16_t _1056__PHI_TEMPORARY;
  uint32_t _1057;

  _1053__PHI_TEMPORARY = 0;   /* for PHI node */
  _1054__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1058;

  do {     /* Syntactic loop '' to make GCC happy */
_1058:
  _1053 = _1053__PHI_TEMPORARY;
  _1054 = _1054__PHI_TEMPORARY;
  if (((((((_1053 == 13u)&1)) | (((((llvm_lshr_u32(225, _1053)) & 1) != 0u)&1)))&1))) {
    _1056__PHI_TEMPORARY = _1054;   /* for PHI node */
    goto _1059;
  } else {
    goto _1060;
  }

_1060:
  _1055 = ((uint16_t)((((uint32_t)(uint16_t)_1054)) | (1 << _1053)));
  _1056__PHI_TEMPORARY = _1055;   /* for PHI node */
  goto _1059;

_1059:
  _1056 = _1056__PHI_TEMPORARY;
  _1057 = llvm_add_u32(_1053, 1);
  if ((((_1057 == 16u)&1))) {
    goto _1061;
  } else {
    _1053__PHI_TEMPORARY = _1057;   /* for PHI node */
    _1054__PHI_TEMPORARY = _1056;   /* for PHI node */
    goto _1058;
  }

  } while (1); /* end of syntactic loop '' */
_1061:
  return (llvm_xor_u16(_1056, 13062));
}


uint16_t hci_max_acl_data_packet_length(void) {
  return 768;
}


void hci_create_connection_cmd(uint8_t* _1062, uint16_t _1063, uint8_t _1064, uint8_t _1065, uint16_t _1066, uint8_t _1067) {
  struct l_struct_struct_OC__stack_config* _1068;
  uint32_t _1069;

  _1068 = user_stack_configs;
  _1069 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_1068->field9)));
   /*tail*/ lmp_hci_create_connection(_1062, _1063, _1064, _1065, _1066, (llvm_select_u8(((((_1069 & 1048576) != 0u)&1)), 170u, _1067)));
}


void hci_disconnect_cmd(uint16_t _1070, uint8_t _1071) {
  uint32_t _1072;

  _1072 =  /*tail*/ lmp_hci_disconnect(_1070, _1071);
}


void hci_test_box_key_cmd(uint8_t _1073, uint16_t _1074) {
  uint32_t _1075;

  _1075 =  /*tail*/ lmp_hci_test_key_cmd(_1073, _1074);
}


void hci_send_user_info_cmd(uint32_t _1076, uint16_t _1077) {
  uint32_t _1078;

  _1078 =  /*tail*/ lmp_hci_send_user_info_cmd(_1076, _1077);
}


void hci_disconnect_all_standard_connect(void) {
  uint32_t _1079;

  _1079 =  /*tail*/ ((l_fptr_6*)(void*)lmp_hci_reset)();
}


uint8_t hci_standard_link_check(void) {
  uint8_t _1080;

  _1080 =  /*tail*/ ((l_fptr_3*)(void*)get_bredr_link_state)();
  return _1080;
}


uint8_t hci_standard_connect_check(void) {
  uint8_t _1081;

  _1081 =  /*tail*/ lmp_standard_connect_check();
  return _1081;
}


uint8_t sco_connection_disconnect(uint8_t* _1082) {
  uint16_t _1083;
  uint16_t _1084;
  uint16_t _1085;
  uint16_t _1085__PHI_TEMPORARY;
  uint8_t _1086;
  uint32_t _1087;
  uint32_t _1088;
  uint8_t _1089;
  uint8_t _1089__PHI_TEMPORARY;

  _1083 =  /*tail*/ lmp_private_handler_for_remote_addr(_1082, 0);
  if ((((_1083 == ((uint16_t)0))&1))) {
    goto _1090;
  } else {
    _1085__PHI_TEMPORARY = _1083;   /* for PHI node */
    goto _1091;
  }

_1090:
  _1084 =  /*tail*/ lmp_private_handler_for_remote_addr(_1082, 2);
  if ((((_1084 == ((uint16_t)0))&1))) {
    _1089__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1092;
  } else {
    _1085__PHI_TEMPORARY = _1084;   /* for PHI node */
    goto _1091;
  }

_1091:
  _1085 = _1085__PHI_TEMPORARY;
  _1086 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1086, 32)) == ((uint8_t)0))&1))) {
    goto _1093;
  } else {
    goto _1094;
  }

_1094:
  _1087 =  /*tail*/ puts(((&_OC_str_OC_33.array[((int32_t)0)])));
  goto _1093;

_1093:
  _1088 =  /*tail*/ lmp_hci_disconnect(_1085, 19);
  _1089__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1092;

_1092:
  _1089 = _1089__PHI_TEMPORARY;
  return _1089;
}


uint8_t sco_connection_setup(uint8_t* _1095, uint8_t _1096) {
  uint16_t _1097;
  uint16_t _1098;
  uint16_t _1099;
  uint8_t _1100;
  uint32_t _1101;
  struct l_struct_struct_OC__stack_config* _1102;
  uint32_t _1103;
  uint8_t _1104;
  uint8_t _1104__PHI_TEMPORARY;

  _1097 =  /*tail*/ lmp_private_handler_for_remote_addr(_1095, 0);
  if ((((_1097 == ((uint16_t)0))&1))) {
    goto _1105;
  } else {
    _1104__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1106;
  }

_1105:
  _1098 =  /*tail*/ lmp_private_handler_for_remote_addr(_1095, 2);
  if ((((_1098 == ((uint16_t)0))&1))) {
    goto _1107;
  } else {
    _1104__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1106;
  }

_1107:
  _1099 =  /*tail*/ lmp_private_handler_for_remote_addr(_1095, 1);
  if ((((_1099 == ((uint16_t)0))&1))) {
    _1104__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1106;
  } else {
    goto _1108;
  }

_1108:
  _1100 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1100, 32)) == ((uint8_t)0))&1))) {
    goto _1109;
  } else {
    goto _1110;
  }

_1110:
  _1101 =  /*tail*/ puts(((&_OC_str_OC_34.array[((int32_t)0)])));
  goto _1109;

_1109:
  _1102 = user_stack_configs;
  _1103 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_1102->field9)));
   /*tail*/ lmp_hci_setup_sync_connection(_1099, 8000, 8000, 7, (llvm_select_u16(((((((_1096 == ((uint8_t)1))&1)) & ((((_1103 & 2048) != 0u)&1)))&1)), 99, 96)), -1, 4);
  _1104__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1106;

_1106:
  _1104 = _1104__PHI_TEMPORARY;
  return _1104;
}


uint8_t sco_connection_setup_dis(uint8_t* _1111) {
  uint16_t _1112;
  uint16_t _1113;
  uint8_t _1114;
  uint8_t _1115;
  uint8_t _1115__PHI_TEMPORARY;

  _1112 =  /*tail*/ lmp_private_handler_for_remote_addr(_1111, 0);
  if ((((_1112 == ((uint16_t)0))&1))) {
    goto _1116;
  } else {
    goto _1117;
  }

_1116:
  _1113 =  /*tail*/ lmp_private_handler_for_remote_addr(_1111, 2);
  if ((((_1113 == ((uint16_t)0))&1))) {
    _1115__PHI_TEMPORARY = 10;   /* for PHI node */
    goto _1118;
  } else {
    goto _1117;
  }

_1117:
  _1114 =  /*tail*/ sco_connection_disconnect(_1111);
  _1115__PHI_TEMPORARY = _1114;   /* for PHI node */
  goto _1118;

_1118:
  _1115 = _1115__PHI_TEMPORARY;
  return _1115;
}


void hci_remote_name_request_cmd(uint8_t* _1119, uint8_t _1120, uint8_t _1121, uint16_t _1122) {
   /*tail*/ lmp_hci_remote_name_request(_1119, 0, 0);
}


uint32_t hci_power_control(uint32_t _1123) {
  return 0;
}


uint32_t hci_non_flushable_packet_boundary_flag_supported(void) {
  return 1;
}


uint32_t hci_can_send_acl_packet_now(uint16_t _1124) {
  uint8_t _1125;
  uint32_t _1126;
  uint32_t _1127;
  uint32_t _1128;
  uint32_t _1128__PHI_TEMPORARY;

  _1125 = *((&le_hci_stack.field3));
  if ((((_1125 == ((uint8_t)0))&1))) {
    goto _1129;
  } else {
    _1128__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1130;
  }

_1129:
  _1126 =  /*tail*/ hci_number_free_acl_slots_for_handle(_1124);
  _1127 = ((uint32_t)(bool)(((((int32_t)_1126) > ((int32_t)0u))&1)));
  _1128__PHI_TEMPORARY = _1127;   /* for PHI node */
  goto _1130;

_1130:
  _1128 = _1128__PHI_TEMPORARY;
  return _1128;
}


uint32_t hci_reserve_packet_buffer(void) {
  uint8_t _1131;
  uint32_t _1132;
  uint32_t _1132__PHI_TEMPORARY;

  _1131 = *((&le_hci_stack.field3));
  if ((((_1131 == ((uint8_t)0))&1))) {
    goto _1133;
  } else {
    _1132__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1134;
  }

_1133:
  *((&le_hci_stack.field3)) = 1;
  _1132__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1134;

_1134:
  _1132 = _1132__PHI_TEMPORARY;
  return _1132;
}


void hci_connections_get_iterator(struct l_struct_struct_OC_btstack_linked_list_iterator_t* _1135) {
   /*tail*/ btstack_linked_list_iterator_init(_1135, ((&le_hci_stack.field0)));
}


void hci_disconnect_security_block(uint16_t _1136) {
  return;
}


uint32_t hci_can_send_command_packet_now(void) {
  return 1;
}


uint32_t hci_can_send_acl_classic_packet_now(void) {
  return 0;
}


uint32_t gap_ssp_supported_on_both_sides(uint16_t _1137) {
  return 0;
}


uint32_t gap_get_connection_type(uint16_t _1138) {
  return 0;
}


uint32_t hci_authentication_active_for_handle(uint16_t _1139) {
  return 1;
}


void gap_drop_link_key_for_bd_addr(uint8_t* _1140) {
  return;
}


void gap_request_security_level(uint16_t _1141, uint32_t _1142) {
  return;
}


uint32_t hci_get_state(void) {
  return 2;
}


void hci_event_callback_set(l_fptr_5* _1143) {
  *((&hci_event_callback_registration.field1)) = _1143;
   /*tail*/ btstack_linked_list_add_tail(((&le_hci_stack.field1)), ((&hci_event_callback_registration.field0)));
}


void hci_add_event_handler(uint8_t* _1144) {
   /*tail*/ btstack_linked_list_add_tail(((&le_hci_stack.field1)), (((struct l_struct_struct_OC_btstack_linked_item*)_1144)));
}


uint32_t hci_is_packet_buffer_reserved(void) {
  uint8_t _1145;

  _1145 = *((&le_hci_stack.field3));
  return (((uint32_t)(uint8_t)_1145));
}


void hci_register_acl_packet_handler(l_fptr_5* _1146) {
  return;
}


void gap_connectable_control(uint8_t _1147) {
  return;
}


void hci_le_advertisements_set_params(uint16_t _1148, uint16_t _1149, uint8_t _1150, uint8_t _1151, uint8_t* _1152, uint8_t _1153, uint8_t _1154) {
  return;
}


void gap_advertisements_set_data(uint8_t _1155, uint8_t* _1156) {
  return;
}


void gap_advertisements_enable(uint32_t _1157) {
  return;
}


void lmp_hci_le_encrypt(void) {
  return;
}


uint32_t le_hci_connection_links_empty(void) {
  uint32_t _1158;
  uint32_t _1159;
  uint32_t _1160;
  uint32_t _1160__PHI_TEMPORARY;

  _1158 = config_stack_modules;
  if (((((_1158 & 4) == 0u)&1))) {
    _1160__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1161;
  } else {
    goto _1162;
  }

_1162:
  _1159 =  /*tail*/ btstack_linked_list_empty(((&le_hci_stack.field0)));
  _1160__PHI_TEMPORARY = _1159;   /* for PHI node */
  goto _1161;

_1161:
  _1160 = _1160__PHI_TEMPORARY;
  return _1160;
}


uint32_t hci_number_free_acl_slots_for_handle(uint16_t _1163) {
  struct l_struct_struct_OC___le_hci_connection* _1164;
  uint32_t _1165;
  uint32_t _1166;
  uint32_t _1167;
  uint32_t _1167__PHI_TEMPORARY;

  _1164 =  /*tail*/ le_hci_connection_for_handle(_1163);
  if ((((_1164 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1167__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1168;
  } else {
    goto _1169;
  }

_1169:
  _1165 = *((&_1164->field3));
  _1166 =  /*tail*/ hci_number_free_acl_slots_for_connection_type(_1165);
  _1167__PHI_TEMPORARY = _1166;   /* for PHI node */
  goto _1168;

_1168:
  _1167 = _1167__PHI_TEMPORARY;
  return _1167;
}


static uint32_t hci_number_free_acl_slots_for_connection_type(uint32_t _1170) {
  struct l_struct_struct_OC_btstack_linked_item* _1171;
  struct l_struct_struct_OC_btstack_linked_item* _1172;
  struct l_struct_struct_OC_btstack_linked_item* _1172__PHI_TEMPORARY;
  uint32_t _1173;
  uint32_t _1173__PHI_TEMPORARY;
  uint32_t _1174;
  uint8_t _1175;
  uint32_t _1176;
  uint32_t _1177;
  uint32_t _1177__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _1178;
  uint32_t _1179;
  uint32_t _1179__PHI_TEMPORARY;
  uint8_t _1180;
  uint32_t _1181;
  uint32_t _1182;
  uint32_t _1182__PHI_TEMPORARY;
  uint32_t _1183;
  uint32_t _1184;
  uint32_t _1184__PHI_TEMPORARY;

  _1171 = *((&le_hci_stack.field0));
  if ((((_1171 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1179__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1185;
  } else {
    goto _1186;
  }

_1186:
  _1172__PHI_TEMPORARY = _1171;   /* for PHI node */
  _1173__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1187;

  do {     /* Syntactic loop '' to make GCC happy */
_1187:
  _1172 = _1172__PHI_TEMPORARY;
  _1173 = _1173__PHI_TEMPORARY;
  _1174 = *(((uint32_t*)((&_1172[((int32_t)3)]))));
  if ((((_1174 == 255u)&1))) {
    _1177__PHI_TEMPORARY = _1173;   /* for PHI node */
    goto _1188;
  } else {
    goto _1189;
  }

_1189:
  _1175 = *((&(((struct l_struct_struct_OC___le_hci_connection*)_1172))->field16));
  _1176 = llvm_add_u32((((uint32_t)(uint8_t)_1175)), _1173);
  _1177__PHI_TEMPORARY = _1176;   /* for PHI node */
  goto _1188;

_1188:
  _1177 = _1177__PHI_TEMPORARY;
  _1178 = *((&_1172->field0));
  if ((((_1178 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _1190;
  } else {
    _1172__PHI_TEMPORARY = _1178;   /* for PHI node */
    _1173__PHI_TEMPORARY = _1177;   /* for PHI node */
    goto _1187;
  }

  } while (1); /* end of syntactic loop '' */
_1190:
  _1179__PHI_TEMPORARY = _1177;   /* for PHI node */
  goto _1185;

_1185:
  _1179 = _1179__PHI_TEMPORARY;
  _1180 = *((&le_hci_stack.field6));
  if ((((_1180 == ((uint8_t)0))&1))) {
    _1182__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1191;
  } else {
    goto _1192;
  }

_1192:
  _1181 = llvm_sub_u32((((uint32_t)(uint8_t)_1180)), _1179);
  if ((((((int32_t)_1181) < ((int32_t)0u))&1))) {
    _1184__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1193;
  } else {
    _1182__PHI_TEMPORARY = _1181;   /* for PHI node */
    goto _1191;
  }

_1191:
  _1182 = _1182__PHI_TEMPORARY;
  switch (_1170) {
  default:
    goto _1194;
  case 254u:
    _1184__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1193;
  case 255u:
    goto _1195;
  }

_1195:
  _1184__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1193;

_1194:
  _1183 = llvm_select_u32((((_1180 == ((uint8_t)0))&1)), 1, _1182);
  _1184__PHI_TEMPORARY = _1183;   /* for PHI node */
  goto _1193;

_1193:
  _1184 = _1184__PHI_TEMPORARY;
  return _1184;
}


uint32_t hci_can_send_acl_le_packet_now(void) {
  uint8_t _1196;
  uint32_t _1197;
  uint32_t _1198;
  uint32_t _1199;
  uint32_t _1199__PHI_TEMPORARY;

  _1196 = *((&le_hci_stack.field3));
  if ((((_1196 == ((uint8_t)0))&1))) {
    goto _1200;
  } else {
    _1199__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1201;
  }

_1200:
  _1197 =  /*tail*/ hci_number_free_acl_slots_for_connection_type(0);
  _1198 = ((uint32_t)(bool)(((((int32_t)_1197) > ((int32_t)0u))&1)));
  _1199__PHI_TEMPORARY = _1198;   /* for PHI node */
  goto _1201;

_1201:
  _1199 = _1199__PHI_TEMPORARY;
  return _1199;
}


void gap_le_get_own_address(uint16_t _1202, uint8_t* _1203, uint8_t* _1204) {
  struct l_array_6_uint8_t _1205;    /* Address-exposed local */
  uint8_t* _1206;
  struct l_struct_struct_OC___le_hci_connection* _1207;
  uint32_t _1208;
  uint8_t* _1209;
  uint32_t _1210;

  _1206 = (&_1205.array[((int32_t)0)]);
  _1207 =  /*tail*/ le_hci_connection_for_handle(_1202);
  if ((((_1207 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1211;
  } else {
    goto _1212;
  }

_1212:
  _1208 = *((&_1207->field19));
  *_1203 = (((uint8_t)_1208));
  _1209 = memcpy(_1206, ((&_1207->field18.array[((int32_t)0)])), 6);
  goto _1213;

_1211:
  *_1203 = 0;
  _1210 = le_controller_get_mac(_1206);
  goto _1213;

_1213:
  swapX(_1206, _1204, 6);
}


void gap_le_get_own_id_address(uint16_t _1214, uint8_t* _1215, uint8_t* _1216) {
  struct l_array_6_uint8_t _1217;    /* Address-exposed local */
  uint8_t* _1218;
  struct l_struct_struct_OC___le_hci_connection* _1219;
  uint32_t _1220;
  uint8_t* _1221;

  _1218 = (&_1217.array[((int32_t)0)]);
  _1219 =  /*tail*/ le_hci_connection_for_handle(_1214);
  *_1215 = 0;
  if ((((_1219 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1222;
  } else {
    goto _1223;
  }

_1223:
  _1220 = le_controller_get_mac(_1218);
  swapX(_1218, _1216, 6);
  goto _1224;

_1222:
  _1221 = memset(_1216, 0, 6);
  goto _1224;

_1224:
  return;
}


uint8_t gap_le_get_own_address_type(uint16_t _1225) {
  struct l_struct_struct_OC___le_hci_connection* _1226;
  uint32_t _1227;
  uint8_t _1228;
  uint8_t _1229;
  uint8_t _1229__PHI_TEMPORARY;

  _1226 =  /*tail*/ le_hci_connection_for_handle(_1225);
  if ((((_1226 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1229__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1230;
  } else {
    goto _1231;
  }

_1231:
  _1227 = *((&_1226->field19));
  _1228 = ((uint8_t)_1227);
  _1229__PHI_TEMPORARY = _1228;   /* for PHI node */
  goto _1230;

_1230:
  _1229 = _1229__PHI_TEMPORARY;
  return _1229;
}


uint8_t gap_le_get_own_address_random_type(uint16_t _1232) {
  struct l_struct_struct_OC___le_hci_connection* _1233;
  uint32_t _1234;
  uint8_t _1235;
  uint8_t _1236;
  uint8_t _1237;
  uint8_t _1237__PHI_TEMPORARY;

  _1233 =  /*tail*/ le_hci_connection_for_handle(_1232);
  if ((((_1233 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1238;
  } else {
    goto _1239;
  }

_1239:
  _1234 = *((&_1233->field19));
  if ((((_1234 == 0u)&1))) {
    _1237__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1238;
  } else {
    goto _1240;
  }

_1240:
   /*tail*/ put_buf(((&_1233->field18.array[((int32_t)0)])), 6);
  _1235 = *((&_1233->field18.array[((int32_t)5)]));
  _1236 = llvm_select_u8(((((llvm_and_u8(_1235, -64)) == ((uint8_t)64))&1)), 3, (llvm_select_u8((((((uint8_t)_1235) > ((uint8_t)((uint8_t)-65)))&1)), 1, 2)));
  _1237__PHI_TEMPORARY = _1236;   /* for PHI node */
  goto _1238;

_1238:
  _1237 = _1237__PHI_TEMPORARY;
  return _1237;
}


uint32_t gap_le_update_connection_parameters(uint16_t _1241, uint16_t _1242, uint16_t _1243, uint16_t _1244, uint16_t _1245) {
  struct l_struct_struct_OC___le_hci_connection* _1246;
  uint32_t _1247;
  uint32_t _1247__PHI_TEMPORARY;

  _1246 =  /*tail*/ le_hci_connection_for_handle(_1241);
  if ((((_1246 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1247__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _1248;
  } else {
    goto _1249;
  }

_1249:
  *((&_1246->field7)) = _1242;
  *((&_1246->field8)) = _1243;
  *((&_1246->field9)) = _1244;
  *((&_1246->field10)) = _1245;
  *((&_1246->field5)) = 3;
   /*tail*/ hci_run_for_acl_data_send();
  _1247__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1248;

_1248:
  _1247 = _1247__PHI_TEMPORARY;
  return _1247;
}


void gap_le_get_connection_parameter_range(struct l_struct_struct_OC_le_connection_parameter_range* _1250) {
  uint8_t* _1251;

  _1251 = memcpy((((uint8_t*)_1250)), ((uint8_t*)((&le_hci_stack.field8))), 12);
}


void gap_le_set_connection_parameter_range(struct l_struct_struct_OC_le_connection_parameter_range* _1252) {
  uint8_t* _1253;

  _1253 = memcpy(((uint8_t*)((&le_hci_stack.field8))), (((uint8_t*)_1252)), 12);
}


void hci_send_keypress(uint8_t* _1254, uint32_t _1255, uint8_t _1256) {
  if ((((_1256 == ((uint8_t)6))&1))) {
    goto _1257;
  } else {
    goto _1258;
  }

_1257:
   /*tail*/ lmp_hci_send_keypress_notification(_1254, 0);
   /*tail*/ lmp_hci_send_keypress_notification(_1254, 1);
  goto _1259;

_1258:
   /*tail*/ lmp_hci_send_keypress_notification(_1254, 1);
  if ((((_1256 == ((uint8_t)1))&1))) {
    goto _1260;
  } else {
    goto _1259;
  }

_1260:
   /*tail*/ lmp_hci_send_keypress_notification(_1254, 4);
   /*tail*/ lmp_hci_user_keypress_request_reply(_1254, _1255);
  goto _1259;

_1259:
  return;
}


void hci_user_confirmation_request(uint8_t _1261, uint8_t* _1262) {
  if ((((_1261 == ((uint8_t)0))&1))) {
    goto _1263;
  } else {
    goto _1264;
  }

_1264:
   /*tail*/ lmp_hci_user_confirmation_request_reply(_1262);
  goto _1265;

_1263:
   /*tail*/ lmp_hci_user_confirmation_request_negative_reply(_1262);
  goto _1265;

_1265:
  return;
}


void hci_vendor_update_name(void) {
  uint8_t* _1266;

  _1266 =  /*tail*/ bt_get_local_name();
   /*tail*/ lmp_hci_write_local_name(_1266);
}


uint8_t btstcak_get_bt_mode(void) {
  uint8_t _1267;

  _1267 = hci_bt_mode;
  return _1267;
}


void gap_store_link_key_for_bd_addr(uint8_t* _1268, uint8_t* _1269, uint32_t _1270) {
  struct l_struct_struct_OC__stack_config* _1271;
  uint32_t _1272;

  _1271 = user_stack_configs;
  _1272 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_1271->field9)));
   /*tail*/ put_link_key((((struct l_array_6_uint8_t*)_1268)), (((struct l_array_16_uint8_t*)_1269)), (((uint8_t)_1270)), (llvm_and_u8((((uint8_t)((llvm_lshr_u32(_1272, 20)) | (llvm_lshr_u32(_1272, 6))))), 1)));
}

