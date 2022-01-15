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
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_btstack_packet_callback_registration_t;
struct l_struct_struct_OC_sm_setup_context;
struct l_struct_struct_OC_sm_info_t;
struct l_struct_struct_OC_btstack_linked_list_iterator_t;
struct l_struct_struct_OC_sm_connection;
struct l_struct_struct_OC_BLE_REMOTE_LIST_T;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_server_t;
struct l_struct_struct_OC___le_hci_connection;
struct l_struct_struct_OC_sm_vm_cfg_t;

/* Function definitions */
typedef uint32_t l_fptr_2(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_4(uint32_t*, uint16_t);

typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_8(uint16_t, uint8_t);

typedef void l_fptr_3(void);

typedef void l_fptr_7(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_5(uint8_t*);

typedef void l_fptr_6(uint32_t*);


void sm_d1_d_prime(uint16_t, uint16_t, uint8_t*);

void sm_d1_d_prime(uint16_t, uint16_t, uint8_t*);

/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_7* field3;
  uint8_t* field4;
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
};
struct l_struct_struct_OC_sm_setup_context {
  struct l_struct_struct_OC_btstack_timer_source field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
  uint32_t field7;
  struct l_array_16_uint8_t field8;
  uint8_t field9;
  struct l_array_16_uint8_t field10;
  struct l_array_7_uint8_t field11;
  struct l_array_7_uint8_t field12;
  struct l_array_16_uint8_t field13;
  struct l_array_16_uint8_t field14;
  struct l_array_16_uint8_t field15;
  struct l_array_16_uint8_t field16;
  uint8_t field17;
  uint8_t field18;
  struct l_array_6_uint8_t field19;
  struct l_array_6_uint8_t field20;
  struct l_array_16_uint8_t field21;
  uint8_t field22;
  uint16_t field23;
  uint16_t field24;
  uint16_t field25;
  struct l_array_8_uint8_t field26;
  struct l_array_16_uint8_t field27;
  struct l_array_16_uint8_t field28;
  struct l_array_16_uint8_t field29;
  uint16_t field30;
  uint16_t field31;
  uint16_t field32;
  struct l_array_8_uint8_t field33;
  struct l_array_16_uint8_t field34;
  struct l_array_16_uint8_t field35;
  struct l_array_16_uint8_t field36;
  uint8_t field37;
  struct l_array_6_uint8_t field38;
};
struct l_struct_struct_OC_sm_info_t {
  struct l_struct_struct_OC_sm_setup_context field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  uint32_t field8;
  uint8_t field9;
  struct l_array_16_uint8_t field10;
  struct l_array_16_uint8_t field11;
  struct l_array_16_uint8_t field12;
  struct l_array_16_uint8_t field13;
  uint8_t field14;
  uint32_t field15;
  uint32_t field16;
  struct l_array_6_uint8_t field17;
  uint32_t field18;
  uint32_t field19;
  uint8_t field20;
  struct l_array_6_uint8_t field21;
  uint8_t* field22;
  uint32_t field23;
  struct l_struct_struct_OC_btstack_linked_item* field24;
  uint32_t field25;
  uint8_t* field26;
  uint8_t* field27;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field28;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field29;
  struct l_struct_struct_OC_btstack_linked_item* field30;
  uint16_t field31;
  l_fptr_2* field32;
  l_fptr_4* field33;
  uint16_t field34;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_109_uint8_t {
  uint8_t array[109];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_array_5_uint32_t {
  uint32_t array[5];
};
struct l_array_5_struct_AC_l_array_5_uint32_t {
  struct l_array_5_uint32_t array[5];
};
struct l_array_71_uint8_t {
  uint8_t array[71];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_struct_struct_OC_btstack_linked_list_iterator_t {
  uint32_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
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
struct l_struct_struct_OC_BLE_REMOTE_LIST_T {
  struct l_array_16_uint8_t field0;
  struct l_array_16_uint8_t field1;
  struct l_array_6_uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  struct l_array_8_uint8_t field5;
  struct l_array_2_uint8_t field6;
  uint8_t field7;
  uint8_t field8;
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
  l_fptr_8* field11;
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
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_struct_struct_OC_sm_vm_cfg_t {
  uint16_t field0;
  struct l_array_16_uint8_t field1;
  struct l_array_16_uint8_t field2;
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_4_uint32_t {
  uint32_t array[4];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};

/* External Global Variable Declarations */
extern uint32_t config_le_sm_support_enable;
extern uint32_t config_asser;
extern uint8_t ble_debug_enable;

/* Function Declarations */
uint32_t sm_address_resolution_lookup(uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_iterator_init(struct l_struct_struct_OC_btstack_linked_list_iterator_t*, struct l_struct_struct_OC_btstack_linked_item**);
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* btstack_memory_sm_lookup_entry_get(void);
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
static void sm_run(void) __ATTRIBUTELIST__((nothrow));
void sm_event_callback_set(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_add_event_handler(struct l_struct_struct_OC_btstack_packet_callback_registration_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_register_oob_data_callback(l_fptr_2*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void sm_set_accepted_stk_generation_methods(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_encryption_key_size_range(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_authentication_requirements(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_io_capabilities(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_request_security(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_master_request_pair(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_master_pair_redo(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_er(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_ir(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_test_set_irk(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t sm_get_local_irk(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_make_resolvable_address(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_test_use_fixed_local_csrk(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_set_master_reconnect_enc_delay(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void ble_list_init(void);
uint32_t syscfg_read(uint16_t, uint8_t*, uint16_t);
uint32_t syscfg_write(uint16_t, uint8_t*, uint16_t);
static void sm_event_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void hci_add_event_handler(uint8_t*);
void l2cap_register_fixed_channel(l_fptr_1*, uint16_t);
static void sm_pdu_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void sm_exit(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void le_device_db_exit(void);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
void sm_use_fixed_ec_keypair(uint8_t*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void sm_test_use_fixed_ec_keypair(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void sm_use_fixed_legacy_pairing_passkey_in_display_role(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_allow_ltk_reconstruction_without_le_device_db_entry(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sm_encryption_key_size(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sm_authenticated(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sm_authorization_state(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_authorization_decline(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void sm_notify_client_authorization(uint16_t, uint8_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
void sm_authorization_grant(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_bonding_decline(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_just_works_confirm_addr(uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_just_works_confirm(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_numeric_comparison_confirm(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_passkey_input(uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void big_endian_store_32(uint8_t*, uint16_t, uint32_t);
void sm_keypress_notification(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sm_le_device_index(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gap_random_address_set_mode(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_le_set_own_address_type(uint8_t);
static void gap_random_address_trigger(void) __ATTRIBUTELIST__((nothrow));
uint32_t gap_random_address_get_mode(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void gap_random_address_set_update_period(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gap_random_address_set(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void gap_advertisements_set_params(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void hci_le_advertisements_set_params(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t*, uint8_t, uint8_t);
void reset_PK_cb_register(l_fptr_6*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reset_PK_cb_register_ext(l_fptr_4*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_cmd_request_resume(uint32_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t sm_api_request_pairing(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t ble_user_cmd_prepare(uint32_t, uint32_t, ...);
uint32_t hci_get_state(void);
uint32_t hci_can_send_command_packet_now(void);
static void sm_d1_d_prime(uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
static void sm_aes128_start(uint8_t*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
void ll_hci_set_random_address(uint8_t*);
void hci_connections_get_iterator(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item**);
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void btstack_memory_sm_lookup_entry_free(uint8_t*);
uint32_t le_device_db_count(void);
void le_device_db_info(uint32_t, uint32_t*, uint8_t*, uint8_t*);
static void sm_address_resolution_handle_event(uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t ll_hci_long_term_key_request_nagative_reply(uint16_t);
static void sm_notify_client_process(uint16_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_can_send_fixed_channel_packet_now(uint16_t, uint16_t);
uint32_t l2cap_send_connectionless(uint16_t, uint16_t, uint8_t*, uint16_t);
void l2cap_request_can_send_fix_channel_now_event(uint16_t, uint16_t);
static void sm_init_setup(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow));
static uint32_t sm_stk_generation_init(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow));
static void sm_timeout_start(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow));
static void sm_done_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow));
static void sm_set_timeout_disconnect(uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow));
void reverse_128(uint8_t*, uint8_t*);
uint32_t big_endian_read_32(uint8_t*, uint32_t);
uint32_t ll_hci_start_encryption(uint16_t, uint32_t, uint32_t, uint16_t, uint8_t*);
static void sm_pairing_packet_set_code(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void sm_pairing_packet_set_initiator_key_distribution(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t sm_pairing_packet_get_initiator_key_distribution(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static void sm_pairing_packet_set_responder_key_distribution(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t sm_pairing_packet_get_responder_key_distribution(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static void sm_trigger_user_response(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow));
static void sm_c1_t1(uint8_t*, uint8_t*, uint8_t*, uint8_t, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t ll_hci_long_term_key_request_reply(uint16_t, uint8_t*);
uint8_t ble_list_reconnect_device_is_exist(uint8_t*, uint8_t, uint8_t*, uint8_t);
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
void reverse_64(uint8_t*, uint8_t*);
void put_buf(uint8_t*, uint32_t);
uint8_t gap_le_get_own_address_random_type(uint16_t);
void gap_le_get_own_address(uint16_t, uint8_t*, uint8_t*);
void gap_le_get_own_id_address(uint16_t, uint8_t*, uint8_t*);
void reverse_bd_addr(uint8_t*, uint8_t*);
static uint32_t sm_key_distribution_all_received(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow, pure));
static void sm_key_distribution_handle_all_received(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow));
uint8_t ble_list_pair_add(uint8_t, uint8_t*, uint8_t, uint8_t*, uint8_t*, uint8_t*);
void big_endian_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t ll_hci_encryption(uint8_t*, uint8_t*);
uint32_t ll_hci_get_le_rand(void);
static void sm_notify_client_base(uint8_t, uint16_t, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
static void sm_dispatch_event(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void le_device_db_encryption_get(uint32_t, uint16_t*, uint8_t*, uint8_t*, uint32_t*, uint32_t*, uint32_t*);
static void sm_notify_client_index(uint8_t, uint16_t, uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void little_endian_store_32(uint8_t*, uint16_t, uint32_t);
static void sm_pairing_packet_set_io_capability(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void sm_pairing_packet_set_oob_data_flag(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void sm_pairing_packet_set_auth_req(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void sm_pairing_packet_set_max_encryption_key_size(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t sm_pairing_packet_get_max_encryption_key_size(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static uint8_t sm_pairing_packet_get_oob_data_flag(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static uint8_t sm_pairing_packet_get_auth_req(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static uint8_t sm_pairing_packet_get_io_capability(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static void sm_timeout_handler(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow));
void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source*, int16_t);
uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source*);
void sys_timer_del(uint16_t);
uint16_t sys_timeout_add(uint8_t*, l_fptr_5*, uint32_t);
static void sm_disconnect(uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t ll_hci_disconnect(uint16_t, uint8_t);
static void sm_notify_client_passkey(uint8_t, uint16_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
void reverse_56(uint8_t*, uint8_t*);
uint32_t le_device_db_add(uint32_t, uint8_t*, uint8_t*);
void le_device_db_encryption_set(uint32_t, uint16_t, uint8_t*, uint8_t*, uint32_t, uint32_t, uint32_t);
void p33_soft_reset(void);
static uint32_t rand32(void) __ATTRIBUTELIST__((nothrow));
static uint8_t hci_event_packet_get_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint16_t little_endian_read_16(uint8_t*, uint32_t);
static uint8_t sm_master_pair_get_list(struct l_struct_struct_OC_sm_connection*) __ATTRIBUTELIST__((nothrow));
static void sm_timeout_handler_pair(uint32_t) __ATTRIBUTELIST__((nothrow));
uint8_t ble_list_delete_device(uint8_t*, uint8_t);
void le_device_db_remove(uint32_t);
uint8_t ble_list_get_conn_addr_item(uint8_t*, uint8_t, uint8_t, struct l_struct_struct_OC_BLE_REMOTE_LIST_T*);
void reverse_24(uint8_t*, uint8_t*);
uint32_t big_endian_read_16(uint8_t*, uint32_t);
void ll_vendor_device_address_generate(uint8_t*, uint8_t*, uint8_t);
uint32_t le_controller_set_random_mac(uint8_t*);
uint32_t little_endian_read_32(uint8_t*, uint32_t);
uint8_t ble_list_pair_is_allow(uint8_t*, uint8_t);
uint8_t att_server_get_remote_type(uint16_t);
struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_handle(uint16_t);
struct l_struct_struct_OC___le_hci_connection* le_hci_connection_for_bd_addr_and_type(uint8_t*, uint32_t);
static void gap_random_address_update_handler(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_sm_info_t* sm_global_info;
static struct l_array_17_uint8_t _OC_str = { "file:%s, line:%d" };
static struct l_array_109_uint8_t _OC_str_OC_1 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/sm.c" };
static struct l_array_40_uint8_t _OC_str_OC_2 = { "ASSERT-FAILD: __this == 0 sm init again" };
static struct l_array_39_uint8_t _OC_str_OC_3 = { "ASSERT-FAILD: sm_pt sm_ram malloc fail" };
static uint32_t gap_random_adress_update_period;
static uint32_t gap_random_adress_type;
static struct l_array_2_uint8_t sm_run_OC_buffer = { "\v\x01" };
static struct l_array_5_struct_AC_l_array_5_uint32_t stk_generation_method = { { { { 0, 0, 2, 0, 2 } }, { { 0, 0, 2, 0, 2 } }, { { 1, 1, 3, 0, 1 } }, { { 0, 0, 0, 0, 0 } }, { { 1, 1, 2, 0, 1 } } } };
static struct l_array_71_uint8_t _OC_str_OC_7 = { "[ble-info] :db index %u, key size %u, authenticated %u, authorized %u\n" };
static struct l_array_18_uint8_t _OC_str_OC_8 = { "sm disconnect:%d\n" };
static struct l_array_15_uint8_t sm_pdu_size = { "\x00\a\a\x11\x11\x02\x11\v\x11\x08\x11\x02\x41\x11\x02" };
static struct l_array_71_uint8_t _OC_str_OC_10 = { "[ble-info] :sm: Setting up previous ltk/ediv/rand for device index %u\n" };
static struct l_array_26_uint8_t _OC_str_OC_13 = { "[ble-info] :peer_addr:%d\n" };
static struct l_struct_struct_OC_btstack_timer_source gap_random_address_update_timer;
static struct l_array_23_uint8_t str_OC_16 = { "[ble-info] :local_irk:" };
static struct l_array_12_uint8_t str_OC_18 = { "[ble-dump]:" };
static struct l_array_22_uint8_t str_OC_19 = { "[ble-info] :peer_irk:" };
static struct l_array_21_uint8_t str_OC_20 = { "pair_is_not_allow!!!" };
static struct l_array_44_uint8_t str_OC_21 = { "[ble-info] :sm-----------------HCI Working!" };
static struct l_array_23_uint8_t str_OC_22 = { "[ble-info] :SM timeout" };
static struct l_array_42_uint8_t str_OC_23 = { "[ble-info] :GAP Random Address Update due" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_select_u32(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline struct l_struct_struct_OC_sm_connection* llvm_select_pstruct_struct_OC_sm_connection(bool condition, struct l_struct_struct_OC_sm_connection* iftrue, struct l_struct_struct_OC_sm_connection* ifnot) {
  struct l_struct_struct_OC_sm_connection* r;
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
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint8_t llvm_shl_u8(uint8_t a, uint8_t b) {
  uint8_t r = a << b;
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
static __forceinline uint64_t llvm_lshr_u64(uint64_t a, uint64_t b) {
  uint64_t r = a >> b;
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
static __forceinline uint8_t llvm_xor_u8(uint8_t a, uint8_t b) {
  uint8_t r = a ^ b;
  return r;
}


/* Function Bodies */

uint32_t sm_address_resolution_lookup(uint8_t _1, uint8_t* _2) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _3;    /* Address-exposed local */
  uint8_t* _4;
  struct l_struct_struct_OC_sm_info_t* _5;
  uint32_t _6;
  uint32_t _7;
  struct l_struct_struct_OC_btstack_linked_item* _8;
  uint32_t _9;
  uint32_t _10;
  uint32_t _11;
  uint8_t* _12;
  uint8_t* _13;
  struct l_struct_struct_OC_sm_info_t* _14;
  uint32_t _15;
  uint32_t _15__PHI_TEMPORARY;

  _4 = ((uint8_t*)(&_3));
  _5 = sm_global_info;
  btstack_linked_list_iterator_init((&_3), ((&_5->field24)));
  _6 = btstack_linked_list_iterator_has_next((&_3));
  if ((((_6 == 0u)&1))) {
    goto _16;
  } else {
    goto _17;
  }

_17:
  _7 = ((uint32_t)(uint8_t)_1);
  goto _18;

  do {     /* Syntactic loop '' to make GCC happy */
_18:
  _8 = btstack_linked_list_iterator_next((&_3));
  _9 = *(((uint32_t*)((&_8[((int32_t)3)]))));
  if ((((_9 == _7)&1))) {
    goto _19;
  } else {
    goto _20;
  }

_19:
  _11 = memcmp((((uint8_t*)((&_8[((int32_t)1)])))), _2, 6);
  if ((((_11 == 0u)&1))) {
    goto _21;
  } else {
    goto _20;
  }

_20:
  _10 = btstack_linked_list_iterator_has_next((&_3));
  if ((((_10 == 0u)&1))) {
    goto _22;
  } else {
    goto _18;
  }

  } while (1); /* end of syntactic loop '' */
_22:
  goto _16;

_16:
  _12 = btstack_memory_sm_lookup_entry_get();
  if ((((_12 == ((uint8_t*)/*NULL*/0))&1))) {
    _15__PHI_TEMPORARY = 86;   /* for PHI node */
    goto _23;
  } else {
    goto _24;
  }

_24:
  *(((uint32_t*)((&_12[((int32_t)12)])))) = (((uint32_t)(uint8_t)_1));
  _13 = memcpy(((&_12[((int32_t)4)])), _2, 6);
  _14 = sm_global_info;
  btstack_linked_list_add(((&_14->field24)), (((struct l_struct_struct_OC_btstack_linked_item*)_12)));
  sm_run();
  _15__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _23;

_21:
  _15__PHI_TEMPORARY = 85;   /* for PHI node */
  goto _23;

_23:
  _15 = _15__PHI_TEMPORARY;
  return _15;
}


static void sm_run(void) {
  uint32_t _25;    /* Address-exposed local */
  uint32_t _26;    /* Address-exposed local */
  uint32_t _27;    /* Address-exposed local */
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _28;    /* Address-exposed local */
  struct l_array_16_uint8_t _29;    /* Address-exposed local */
  struct l_array_16_uint8_t _30;    /* Address-exposed local */
  struct l_array_16_uint8_t _31;    /* Address-exposed local */
  uint32_t _32;    /* Address-exposed local */
  struct l_array_6_uint8_t _33;    /* Address-exposed local */
  struct l_array_16_uint8_t _34;    /* Address-exposed local */
  struct l_array_16_uint8_t _35;    /* Address-exposed local */
  struct l_array_2_uint8_t _36;    /* Address-exposed local */
  __MSALIGN__(4) struct l_array_16_uint8_t _37 __attribute__((aligned(4)));    /* Address-exposed local */
  struct l_array_2_uint8_t _38;    /* Address-exposed local */
  struct l_array_16_uint8_t _39;    /* Address-exposed local */
  struct l_array_17_uint8_t _40;    /* Address-exposed local */
  struct l_array_16_uint8_t _41;    /* Address-exposed local */
  struct l_array_16_uint8_t _42;    /* Address-exposed local */
  struct l_array_17_uint8_t _43;    /* Address-exposed local */
  struct l_array_16_uint8_t _44;    /* Address-exposed local */
  struct l_array_16_uint8_t _45;    /* Address-exposed local */
  struct l_array_16_uint8_t _46;    /* Address-exposed local */
  struct l_array_17_uint8_t _47;    /* Address-exposed local */
  struct l_array_11_uint8_t _48;    /* Address-exposed local */
  struct l_array_17_uint8_t _49;    /* Address-exposed local */
  struct l_array_6_uint8_t _50;    /* Address-exposed local */
  struct l_array_8_uint8_t _51;    /* Address-exposed local */
  struct l_array_17_uint8_t _52;    /* Address-exposed local */
  struct l_array_16_uint8_t _53;    /* Address-exposed local */
  uint8_t* _54;
  uint32_t _55;
  uint32_t _56;
  uint32_t _57;
  struct l_struct_struct_OC_sm_info_t* _58;
  uint32_t _59;
  uint32_t _60;
  uint8_t* _61;
  struct l_struct_struct_OC_sm_info_t* _62;
  uint32_t* _63;
  uint32_t _64;
  uint32_t _65;
  uint8_t* _66;
  struct l_struct_struct_OC_sm_info_t* _67;
  uint32_t* _68;
  uint32_t _69;
  uint32_t* _70;
  uint32_t _71;
  uint32_t _72;
  uint32_t _73;
  uint8_t* _74;
  uint8_t* _75;
  uint8_t* _76;
  uint32_t _77;
  uint32_t _78;
  struct l_struct_struct_OC_btstack_linked_item* _79;
  uint32_t* _80;
  uint32_t _81;
  struct l_struct_struct_OC_btstack_linked_item* _82;
  struct l_struct_struct_OC_sm_connection* _83;
  uint8_t _84;
  uint16_t _85;
  uint8_t* _86;
  struct l_struct_struct_OC_sm_info_t* _87;
  uint8_t* _88;
  struct l_struct_struct_OC_sm_info_t* _89;
  uint32_t _90;
  uint32_t _91;
  struct l_struct_struct_OC_sm_info_t* _92;
  struct l_struct_struct_OC_btstack_linked_item** _93;
  struct l_struct_struct_OC_btstack_linked_item* _94;
  uint32_t _95;
  uint32_t _96;
  uint8_t _97;
  uint8_t* _98;
  struct l_struct_struct_OC_sm_info_t* _99;
  uint8_t* _100;
  struct l_struct_struct_OC_sm_info_t* _101;
  uint32_t _102;
  uint32_t _103;
  uint32_t _104;
  uint8_t* _105;
  uint8_t* _106;
  uint8_t* _107;
  struct l_struct_struct_OC_sm_info_t* _108;
  uint32_t _109;
  struct l_struct_struct_OC_sm_info_t* _110;
  uint8_t _111;
  uint32_t _112;
  uint32_t _113;
  uint32_t _114;
  uint8_t* _115;
  uint8_t* _116;
  uint8_t* _117;
  uint8_t* _118;
  uint32_t* _119;
  uint32_t _120;
  uint32_t _121;
  uint32_t _122;
  struct l_struct_struct_OC_sm_info_t* _123;
  uint32_t _124;
  uint32_t _125;
  struct l_struct_struct_OC_sm_info_t* _126;
  uint16_t _127;
  uint32_t _128;
  uint8_t* _129;
  uint8_t* _130;
  uint8_t* _131;
  uint8_t* _132;
  uint8_t* _133;
  uint64_t* _134;
  uint64_t* _135;
  uint8_t* _136;
  uint8_t* _137;
  uint8_t* _138;
  uint8_t* _139;
  uint8_t* _140;
  uint8_t* _141;
  uint64_t* _142;
  uint8_t* _143;
  uint8_t* _144;
  uint8_t* _145;
  struct l_struct_struct_OC_btstack_linked_item* _146;
  uint32_t* _147;
  uint32_t _148;
  struct l_struct_struct_OC_btstack_linked_item* _149;
  struct l_struct_struct_OC_sm_connection* _150;
  uint16_t* _151;
  uint16_t _152;
  uint32_t _153;
  uint16_t _154;
  uint8_t _155;
  struct l_struct_struct_OC_sm_info_t* _156;
  uint16_t _157;
  uint32_t _158;
  struct l_struct_struct_OC_btstack_linked_item* _159;
  struct l_struct_struct_OC_btstack_linked_item* _160;
  struct l_struct_struct_OC_sm_connection* _161;
  uint32_t* _162;
  uint32_t _163;
  uint16_t* _164;
  uint16_t _165;
  uint32_t _166;
  uint16_t _167;
  uint32_t _168;
  uint16_t _169;
  struct l_struct_struct_OC_sm_info_t* _170;
  uint16_t _171;
  struct l_struct_struct_OC_sm_info_t* _172;
  uint8_t* _173;
  struct l_struct_struct_OC_sm_info_t* _174;
  uint8_t* _175;
  uint32_t _176;
  struct l_struct_struct_OC_sm_info_t* _177;
  uint32_t _178;
  uint32_t _179;
  struct l_struct_struct_OC_sm_info_t* _180;
  uint8_t* _181;
  uint64_t _182;
  uint16_t _183;
  uint8_t _184;
  struct l_struct_struct_OC_sm_info_t* _185;
  uint8_t* _186;
  uint32_t* _187;
  uint32_t _188;
  uint8_t _189;
  uint32_t _190;
  uint32_t _191;
  uint32_t _192;
  uint32_t _193;
  uint32_t _194;
  uint32_t _195;
  uint32_t _196;
  uint32_t _197;
  struct l_struct_struct_OC_sm_info_t* _198;
  uint8_t* _199;
  uint32_t _200;
  uint32_t _200__PHI_TEMPORARY;
  uint16_t _201;
  struct l_struct_struct_OC_sm_info_t* _202;
  struct l_struct_struct_OC_sm_info_t* _203;
  uint16_t _204;
  uint16_t _205;
  uint16_t _205__PHI_TEMPORARY;
  struct l_struct_struct_OC___le_hci_connection* _206;
  struct l_struct_struct_OC_sm_connection* _207;
  struct l_struct_struct_OC_sm_info_t* _208;
  uint16_t _209;
  uint32_t _210;
  struct l_struct_struct_OC_sm_info_t* _211;
  uint16_t _212;
  uint8_t* _213;
  uint8_t _214;
  uint8_t* _215;
  uint16_t _216;
  uint32_t _217;
  uint32_t* _218;
  uint32_t _219;
  uint8_t _220;
  uint8_t _221;
  uint16_t* _222;
  uint16_t _223;
  uint32_t _224;
  uint16_t _225;
  uint16_t _226;
  uint16_t _227;
  uint8_t _228;
  struct l_struct_struct_OC_sm_info_t* _229;
  uint8_t _230;
  uint8_t* _231;
  struct l_struct_struct_OC_sm_info_t* _232;
  uint32_t _233;
  struct l_struct_struct_OC_sm_info_t* _234;
  uint32_t _235;
  uint16_t* _236;
  uint16_t _237;
  struct l_struct_struct_OC_sm_info_t* _238;
  uint16_t _239;
  uint32_t _240;
  uint16_t _241;
  uint8_t _242;
  uint16_t _243;
  struct l_struct_struct_OC_sm_info_t* _244;
  uint32_t _245;
  struct l_struct_struct_OC_sm_info_t* _246;
  uint8_t _247;
  uint8_t _248;
  uint32_t _249;
  uint8_t _250;
  struct l_struct_struct_OC_sm_info_t* _251;
  uint8_t _252;
  struct l_struct_struct_OC_sm_info_t* _253;
  uint8_t* _254;
  uint8_t _255;
  uint32_t _256;
  uint32_t _257;
  uint8_t _258;
  uint16_t _259;
  uint32_t _260;
  struct l_struct_struct_OC_sm_info_t* _261;
  uint8_t _262;
  uint32_t _263;
  uint8_t _264;
  uint16_t _265;
  uint32_t _266;
  uint32_t _267;
  uint32_t _268;
  uint32_t _269;
  uint8_t* _270;
  uint16_t _271;
  uint32_t _272;
  struct l_struct_struct_OC_sm_info_t* _273;
  uint32_t _274;
  uint8_t* _275;
  uint16_t _276;
  uint32_t _277;
  struct l_struct_struct_OC_sm_info_t* _278;
  uint32_t _279;
  uint8_t _280;
  uint8_t _281;
  uint32_t _282;
  struct l_struct_struct_OC_sm_info_t* _283;
  uint32_t _284;
  uint8_t _285;
  uint8_t _286;
  uint32_t _287;
  struct l_struct_struct_OC_sm_info_t* _288;
  uint32_t _289;
  uint8_t _290;
  uint8_t* _291;
  uint8_t* _292;
  uint8_t* _293;
  uint8_t* _294;
  uint8_t* _295;
  uint8_t* _295__PHI_TEMPORARY;
  uint8_t* _296;
  uint8_t* _296__PHI_TEMPORARY;
  uint64_t _297;
  uint64_t _298;
  uint32_t _299;
  uint32_t _300;
  uint64_t _301;
  uint32_t _302;
  uint8_t* _303;
  uint8_t _304;
  uint16_t _305;
  uint32_t _306;
  uint8_t* _307;
  uint16_t _308;
  uint32_t _309;
  uint8_t* _310;
  uint8_t _311;
  uint8_t _312;
  uint8_t* _313;
  uint8_t* _314;
  uint8_t _315;
  uint8_t _316;
  struct l_struct_struct_OC_sm_info_t* _317;
  uint16_t* _318;
  uint16_t _319;
  uint32_t _320;
  uint16_t _321;
  uint8_t _322;
  struct l_struct_struct_OC_sm_info_t* _323;
  struct l_struct_struct_OC_sm_info_t* _323__PHI_TEMPORARY;
  uint16_t _324;
  uint32_t _325;
  uint32_t _326;
  uint64_t _327;
  uint32_t _328;
  uint8_t* _329;
  uint16_t _330;
  uint32_t _331;
  uint8_t* _332;
  uint8_t _333;
  uint32_t _334;
  uint8_t* _335;
  uint16_t _336;
  uint32_t _337;
  uint8_t* _338;
  uint16_t _339;
  struct l_struct_struct_OC_sm_info_t* _340;
  uint16_t _341;
  uint32_t _342;
  struct l_struct_struct_OC_sm_info_t* _343;
  uint16_t _344;
  uint64_t _345;
  uint8_t* _346;
  uint16_t _347;
  uint32_t _348;
  uint8_t _349;
  uint32_t _350;
  uint8_t _351;
  uint8_t _352;
  uint8_t _352__PHI_TEMPORARY;
  uint32_t _353;
  struct l_struct_struct_OC_sm_info_t* _354;
  uint8_t* _355;
  uint8_t* _356;
  uint16_t* _357;
  uint16_t _358;
  uint8_t _359;
  uint16_t _360;
  uint16_t _361;
  uint16_t _362;
  uint32_t _363;
  uint8_t _364;
  uint8_t* _365;
  uint8_t* _366;
  uint8_t* _367;
  uint16_t _368;
  uint32_t _369;
  uint8_t* _370;
  uint8_t _371;
  uint32_t _372;
  uint16_t _373;
  uint16_t* _374;
  uint16_t _375;
  struct l_struct_struct_OC_sm_info_t* _376;
  uint8_t _377;
  uint8_t _378;
  uint8_t _379;
  uint8_t _380;
  uint8_t _381;
  uint32_t _382;
  uint16_t _383;
  struct l_struct_struct_OC_sm_info_t* _384;
  uint64_t _385;
  uint8_t _386;
  uint8_t _387;
  uint8_t _388;
  uint16_t _389;
  uint8_t _390;
  struct l_struct_struct_OC_sm_info_t* _391;
  uint16_t _392;

  _54 = ((uint8_t*)(&_28));
  _55 = config_le_sm_support_enable;
  if ((((_55 == 0u)&1))) {
    goto _393;
  } else {
    goto _394;
  }

_394:
  _56 =  /*tail*/ hci_get_state();
  if ((((_56 == 2u)&1))) {
    goto _395;
  } else {
    goto _393;
  }

_395:
  _57 =  /*tail*/ hci_can_send_command_packet_now();
  if ((((_57 == 0u)&1))) {
    goto _393;
  } else {
    goto _396;
  }

_396:
  _58 = sm_global_info;
  _59 = *((&_58->field15));
  switch (_59) {
  default:
    goto _397;
  case 1u:
    goto _398;
  case 3u:
    goto _399;
  }

_398:
  _60 = *((&_58->field25));
  if ((((_60 == 0u)&1))) {
    goto _400;
  } else {
    goto _397;
  }

_400:
  _61 = (&_29.array[((int32_t)0)]);
  sm_d1_d_prime(1, 0, _61);
  _62 = sm_global_info;
  _63 = (&_62->field15);
  _64 = *_63;
  *_63 = (llvm_add_u32(_64, 1));
  sm_aes128_start(((&_62->field11.array[((int32_t)0)])), _61, ((uint8_t*)/*NULL*/0));
  goto _393;

_399:
  _65 = *((&_58->field25));
  if ((((_65 == 0u)&1))) {
    goto _401;
  } else {
    goto _397;
  }

_401:
  _66 = (&_30.array[((int32_t)0)]);
  sm_d1_d_prime(3, 0, _66);
  _67 = sm_global_info;
  _68 = (&_67->field15);
  _69 = *_68;
  *_68 = (llvm_add_u32(_69, 1));
  sm_aes128_start(((&_67->field11.array[((int32_t)0)])), _66, ((uint8_t*)/*NULL*/0));
  goto _393;

_397:
  _70 = (&_58->field16);
  _71 = *_70;
  switch (_71) {
  default:
    goto _402;
  case 2u:
    goto _403;
  case 4u:
    goto _404;
  case 6u:
    goto _405;
  }

_403:
  *_70 = 3;
  *((&_58->field27)) = ((uint8_t*)/*NULL*/0);
  _72 =  /*tail*/ ll_hci_get_le_rand();
  goto _393;

_404:
  _73 = *((&_58->field25));
  if ((((_73 == 0u)&1))) {
    goto _406;
  } else {
    goto _402;
  }

_406:
  _74 = (&_31.array[((int32_t)0)]);
  _75 = memset(_74, 0, 13);
  _76 = memcpy(((&_31.array[((int32_t)13)])), ((&_58->field17.array[((int32_t)0)])), 3);
  *_70 = 5;
  sm_aes128_start(((&_58->field13.array[((int32_t)0)])), _74, ((uint8_t*)/*NULL*/0));
  goto _393;

_405:
  *_70 = 1;
   /*tail*/ ll_hci_set_random_address(((&_58->field17.array[((int32_t)0)])));
  goto _393;

_402:
  _77 = *((&_58->field23));
  if ((((_77 == 0u)&1))) {
    goto _407;
  } else {
    goto _408;
  }

_407:
  hci_connections_get_iterator((&_28));
  goto _409;

  do {     /* Syntactic loop '' to make GCC happy */
_409:
  _78 = btstack_linked_list_iterator_has_next((&_28));
  if ((((_78 == 0u)&1))) {
    goto _410;
  } else {
    goto _411;
  }

_411:
  _79 = btstack_linked_list_iterator_next((&_28));
  _80 = ((uint32_t*)((&_79[((int32_t)13)])));
  _81 = *_80;
  if ((((_81 == 1u)&1))) {
    goto _412;
  } else {
    goto _409;
  }

  } while (1); /* end of syntactic loop '' */
_412:
  _82 = (&_79[((int32_t)9)]);
  _83 = ((struct l_struct_struct_OC_sm_connection*)_82);
  _84 = *((&_83->field4));
  _85 = *(((uint16_t*)_82));
  _86 = (&_83->field5.array[((int32_t)0)]);
  _87 = sm_global_info;
  _88 = memcpy(((&_87->field21.array[((int32_t)0)])), _86, 6);
  *((&_87->field20)) = _84;
  *((&_87->field18)) = 0;
  *((&_87->field23)) = 2;
  *(((struct l_struct_struct_OC_btstack_linked_item**)((&_87->field22)))) = _82;
  sm_notify_client_base(-40, _85, _84, _86);
  *_80 = 2;
  goto _408;

_410:
  goto _408;

_408:
  _89 = sm_global_info;
  _90 = *((&_89->field23));
  if ((((_90 == 0u)&1))) {
    goto _413;
  } else {
    goto _414;
  }

_413:
  _91 = btstack_linked_list_empty(((&_89->field24)));
  if ((((_91 == 0u)&1))) {
    goto _415;
  } else {
    goto _414;
  }

_415:
  _92 = sm_global_info;
  _93 = (&_92->field24);
  _94 = *_93;
  _95 = btstack_linked_list_remove(_93, _94);
  _96 = *(((uint32_t*)((&_94[((int32_t)3)]))));
  _97 = ((uint8_t)_96);
  _98 = ((uint8_t*)((&_94[((int32_t)1)])));
  _99 = sm_global_info;
  _100 = memcpy(((&_99->field21.array[((int32_t)0)])), _98, 6);
  *((&_99->field20)) = _97;
  *((&_99->field18)) = 0;
  *((&_99->field23)) = 1;
  *((&_99->field22)) = ((uint8_t*)/*NULL*/0);
  sm_notify_client_base(-40, 0, _97, _98);
  btstack_memory_sm_lookup_entry_free((((uint8_t*)_94)));
  goto _414;

_414:
  _101 = sm_global_info;
  _102 = *((&_101->field23));
  if ((((_102 == 0u)&1))) {
    goto _416;
  } else {
    goto _417;
  }

_417:
  _103 = *((&_101->field18));
  _104 = le_device_db_count();
  if ((((((int32_t)_103) < ((int32_t)_104))&1))) {
    goto _418;
  } else {
    goto _419;
  }

_418:
  _105 = ((uint8_t*)(&_32));
  _106 = (&_33.array[((int32_t)0)]);
  _107 = (&_34.array[((int32_t)0)]);
  goto _420;

  do {     /* Syntactic loop '' to make GCC happy */
_420:
  _108 = sm_global_info;
  _109 = *((&_108->field18));
  le_device_db_info(_109, (&_32), _106, _107);
  _110 = sm_global_info;
  _111 = *((&_110->field20));
  _112 = _32;
  if (((((((uint32_t)(uint8_t)_111)) == _112)&1))) {
    goto _421;
  } else {
    goto _422;
  }

_421:
  _113 = memcmp(_106, ((&_110->field21.array[((int32_t)0)])), 6);
  if ((((_113 == 0u)&1))) {
    goto _423;
  } else {
    goto _422;
  }

_422:
  if ((((_111 == ((uint8_t)0))&1))) {
    goto _424;
  } else {
    goto _425;
  }

_424:
  _119 = (&_110->field18);
  _120 = *_119;
  _121 = llvm_add_u32(_120, 1);
  *_119 = _121;
  _122 = le_device_db_count();
  if ((((((int32_t)_121) < ((int32_t)_122))&1))) {
    goto _420;
  } else {
    goto _426;
  }

  } while (1); /* end of syntactic loop '' */
_423:
  sm_address_resolution_handle_event(0);
  goto _427;

_425:
  _114 = *((&_110->field25));
  if ((((_114 == 1u)&1))) {
    goto _427;
  } else {
    goto _428;
  }

_428:
  _115 = (&_35.array[((int32_t)0)]);
  _116 = memset(_115, 0, 13);
  _117 = memcpy(((&_35.array[((int32_t)13)])), ((&_110->field21.array[((int32_t)0)])), 3);
  *((&_110->field19)) = 1;
  _118 = *((&_110->field22));
  sm_aes128_start(_107, _115, _118);
  goto _393;

_427:
  goto _419;

_426:
  goto _419;

_419:
  _123 = sm_global_info;
  _124 = *((&_123->field18));
  _125 = le_device_db_count();
  if ((((((int32_t)_124) < ((int32_t)_125))&1))) {
    goto _416;
  } else {
    goto _429;
  }

_429:
  sm_address_resolution_handle_event(1);
  goto _416;

_416:
  hci_connections_get_iterator((&_28));
  goto _430;

  do {     /* Syntactic loop '' to make GCC happy */
_430:
  _126 = sm_global_info;
  _127 = *((&_126->field31));
  if ((((_127 == ((uint16_t)-1))&1))) {
    goto _431;
  } else {
    goto _432;
  }

_431:
  _128 = btstack_linked_list_iterator_has_next((&_28));
  if ((((_128 == 0u)&1))) {
    goto _432;
  } else {
    goto _433;
  }

_433:
  _146 = btstack_linked_list_iterator_next((&_28));
  _147 = ((uint32_t*)((&_146[((int32_t)12)])));
  _148 = *_147;
  if ((((_148 == 39u)&1))) {
    goto _434;
  } else {
    goto _430;
  }

  } while (1); /* end of syntactic loop '' */
_432:
  _129 = (&_37.array[((int32_t)0)]);
  _130 = (&_38.array[((int32_t)0)]);
  _131 = (&_38.array[((int32_t)1)]);
  _132 = (&_40.array[((int32_t)0)]);
  _133 = (&_40.array[((int32_t)1)]);
  _134 = ((uint64_t*)((&_37.array[((int32_t)8)])));
  _135 = ((uint64_t*)(&_37));
  _136 = (&_53.array[((int32_t)0)]);
  _137 = (&_53.array[((int32_t)1)]);
  _138 = (&_53.array[((int32_t)2)]);
  _139 = (&_53.array[((int32_t)3)]);
  _140 = (&_53.array[((int32_t)4)]);
  _141 = (&_53.array[((int32_t)5)]);
  _142 = ((uint64_t*)((&_53.array[((int32_t)8)])));
  _143 = ((uint8_t*)(&_25));
  _144 = ((uint8_t*)(&_26));
  _145 = ((uint8_t*)(&_27));
  goto _435;

_434:
  _149 = (&_146[((int32_t)9)]);
  _150 = ((struct l_struct_struct_OC_sm_connection*)_149);
  *_147 = 35;
  _151 = ((uint16_t*)_149);
  _152 = *_151;
  _153 = ll_hci_long_term_key_request_nagative_reply(_152);
  _154 = *_151;
  _155 = *((&_150->field4));
  sm_notify_client_process(_154, _155, ((&_150->field5.array[((int32_t)0)])), 2);
  goto _393;

  do {     /* Syntactic loop '' to make GCC happy */
_435:
  hci_connections_get_iterator((&_28));
  _156 = sm_global_info;
  _157 = *((&_156->field31));
  if ((((_157 == ((uint16_t)-1))&1))) {
    goto _436;
  } else {
    _205__PHI_TEMPORARY = _157;   /* for PHI node */
    goto _437;
  }

_436:
  goto _438;

  do {     /* Syntactic loop '' to make GCC happy */
_438:
  _158 = btstack_linked_list_iterator_has_next((&_28));
  if ((((_158 == 0u)&1))) {
    goto _439;
  } else {
    goto _440;
  }

_440:
  _159 = btstack_linked_list_iterator_next((&_28));
  _160 = (&_159[((int32_t)9)]);
  _161 = ((struct l_struct_struct_OC_sm_connection*)_160);
  _162 = ((uint32_t*)((&_159[((int32_t)12)])));
  _163 = *_162;
  switch (_163) {
  default:
    goto _441;
  case 36u:
    goto _442;
  case 41u:
    goto _443;
  case 37u:
    goto _444;
  case 1u:
    goto _445;
  case 53u:
    goto _446;
  case 56u:
    goto _447;
  }

_447:
  _198 = sm_global_info;
  *((&_198->field0.field22)) = 0;
  *((&_198->field0.field3)) = -1;
  _199 = memset(((&_198->field0.field8.array[((int32_t)0)])), 0, 16);
  sm_init_setup(_161);
  sm_timeout_start(_161);
  _200__PHI_TEMPORARY = 57;   /* for PHI node */
  goto _448;

_446:
  _185 = sm_global_info;
  *((&_185->field0.field22)) = 0;
  *((&_185->field0.field3)) = -1;
  _186 = memset(((&_185->field0.field8.array[((int32_t)0)])), 0, 16);
  _187 = ((uint32_t*)((&_159[((int32_t)21)])));
  _188 = *_187;
  if ((((((int32_t)_188) < ((int32_t)0u))&1))) {
    goto _449;
  } else {
    goto _450;
  }

_450:
  le_device_db_encryption_get(_188, ((&_185->field0.field32)), ((&_185->field0.field33.array[((int32_t)0)])), ((&_185->field0.field34.array[((int32_t)0)])), (&_25), (&_26), (&_27));
  _189 = ble_debug_enable;
  if (((((llvm_and_u8(_189, 1)) == ((uint8_t)0))&1))) {
    goto _451;
  } else {
    goto _452;
  }

_452:
  _190 = *_187;
  _191 = _25;
  _192 = _26;
  _193 = _27;
  _194 = printf(((&_OC_str_OC_7.array[((int32_t)0)])), _190, _191, _192, _193);
  goto _451;

_451:
  _195 = _25;
  *((&_161->field10)) = (((uint8_t)_195));
  _196 = _26;
  *((&_161->field9)) = (((uint8_t)_196));
  _197 = _27;
  *(((uint32_t*)((&_159[((int32_t)17)])))) = (llvm_select_u32((((_197 != 0u)&1)), 3, 0));
  goto _449;

_449:
  _200__PHI_TEMPORARY = 54;   /* for PHI node */
  goto _448;

_444:
  _180 = sm_global_info;
  *((&_180->field0.field22)) = 0;
  *((&_180->field0.field3)) = -1;
  _181 = memset(((&_180->field0.field8.array[((int32_t)0)])), 0, 16);
  _182 = __UNALIGNED_LOAD__(uint64_t, 2, (((uint64_t*)((&_161->field14.array[((int32_t)0)])))));
  __UNALIGNED_LOAD__(uint64_t, 2, (((uint64_t*)((&_180->field0.field26.array[((int32_t)0)]))))) = _182;
  _183 = *(((uint16_t*)((&_159[((int32_t)18)]))));
  *((&_180->field0.field25)) = _183;
  *((&_161->field10)) = (llvm_add_u8((llvm_and_u8((((uint8_t)(llvm_lshr_u64(_182, 56)))), 15)), 1));
  _184 = *((&_180->field0.field26.array[((int32_t)7)]));
  *((&_161->field9)) = (llvm_and_u8((llvm_lshr_u8(_184, 4)), 1));
  _200__PHI_TEMPORARY = 47;   /* for PHI node */
  goto _448;

_443:
  _172 = sm_global_info;
  *((&_172->field0.field22)) = 0;
  *((&_172->field0.field3)) = -1;
  _173 = memset(((&_172->field0.field8.array[((int32_t)0)])), 0, 16);
  sm_init_setup(_161);
  _174 = sm_global_info;
  _175 = memcpy(((&_174->field0.field11.array[((int32_t)0)])), ((&_161->field11.array[((int32_t)0)])), 7);
  _176 = sm_stk_generation_init(_161);
  if ((((_176 == 0u)&1))) {
    goto _453;
  } else {
    goto _454;
  }

_454:
  *((&_174->field0.field1)) = (((uint8_t)_176));
  _200__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _448;

_453:
  sm_timeout_start(_161);
  _177 = sm_global_info;
  _178 = *((&_177->field0.field7));
  _179 = llvm_select_u32((((_178 == 2u)&1)), 4, 42);
  _200__PHI_TEMPORARY = _179;   /* for PHI node */
  goto _448;

_448:
  _200 = _200__PHI_TEMPORARY;
  *_162 = _200;
  goto _445;

_445:
  _201 = *(((uint16_t*)_160));
  _202 = sm_global_info;
  *((&_202->field31)) = _201;
  goto _441;

_442:
  _164 = ((uint16_t*)_160);
  _165 = *_164;
  _166 = l2cap_can_send_fixed_channel_packet_now(_165, 6);
  if ((((_166 == 0u)&1))) {
    goto _455;
  } else {
    goto _456;
  }

_456:
  *_162 = 40;
  _167 = *_164;
  _168 = l2cap_send_connectionless(_167, 6, ((&sm_run_OC_buffer.array[((int32_t)0)])), 2);
  goto _441;

_455:
  _169 = *_164;
  l2cap_request_can_send_fix_channel_now_event(_169, 6);
  goto _441;

_441:
  _170 = sm_global_info;
  _171 = *((&_170->field31));
  if ((((_171 == ((uint16_t)-1))&1))) {
    goto _438;
  } else {
    goto _457;
  }

  } while (1); /* end of syntactic loop '' */
_457:
  _205__PHI_TEMPORARY = _171;   /* for PHI node */
  goto _437;

_439:
  _203 = sm_global_info;
  _204 = *((&_203->field31));
  if ((((_204 == ((uint16_t)-1))&1))) {
    goto _458;
  } else {
    _205__PHI_TEMPORARY = _204;   /* for PHI node */
    goto _437;
  }

_437:
  _205 = _205__PHI_TEMPORARY;
  _206 = le_hci_connection_for_handle(_205);
  _207 = llvm_select_pstruct_struct_OC_sm_connection((((_206 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_206->field11)));
  if ((((_206 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _458;
  } else {
    goto _459;
  }

_459:
  _208 = sm_global_info;
  _209 = *((&_208->field31));
  _210 = l2cap_can_send_fixed_channel_packet_now(_209, 6);
  _211 = sm_global_info;
  if ((((_210 == 0u)&1))) {
    goto _460;
  } else {
    goto _461;
  }

_461:
  _213 = (&_211->field0.field3);
  _214 = *_213;
  if ((((_214 == ((uint8_t)-1))&1))) {
    goto _462;
  } else {
    goto _463;
  }

_462:
  _218 = (&_207->field6);
  _219 = *_218;
  switch (_219) {
  default:
    goto _464;
  case 1u:
    goto _465;
  case 54u:
    goto _466;
  case 57u:
    goto _467;
  case 42u:
    goto _468;
  case 19u:
    goto _469;
  case 4u:
    goto _470;
  case 6u:
    goto _470;
  case 8u:
    goto _470;
  case 23u:
    goto _470;
  case 25u:
    goto _470;
  case 12u:
    goto _471;
  case 16u:
    goto _471;
  case 29u:
    goto _472;
  case 49u:
    goto _472;
  case 31u:
    goto _473;
  case 14u:
    goto _474;
  case 10u:
    goto _475;
  case 20u:
    goto _476;
  case 27u:
    goto _477;
  case 18u:
    goto _478;
  case 46u:
    goto _479;
  case 51u:
    goto _480;
  case 47u:
    goto _481;
  case 61u:
    goto _482;
  case 33u:
    goto _483;
  }

_483:
  _332 = (&_211->field0.field4);
  _333 = *_332;
  _334 = ((uint32_t)(uint8_t)_333);
  if (((((_334 & 1) == 0u)&1))) {
    goto _484;
  } else {
    goto _485;
  }

_484:
  if (((((_334 & 2) == 0u)&1))) {
    goto _486;
  } else {
    goto _487;
  }

_486:
  if (((((_334 & 4) == 0u)&1))) {
    goto _488;
  } else {
    goto _489;
  }

_488:
  if (((((_334 & 8) == 0u)&1))) {
    goto _490;
  } else {
    goto _491;
  }

_490:
  if (((((_334 & 16) == 0u)&1))) {
    goto _492;
  } else {
    goto _493;
  }

_492:
  _370 = (&_207->field1);
  _371 = *_370;
  if ((((_371 == ((uint8_t)0))&1))) {
    goto _494;
  } else {
    goto _495;
  }

_495:
  _372 = sm_key_distribution_all_received(_207);
  if ((((_372 == 0u)&1))) {
    goto _496;
  } else {
    goto _497;
  }

_497:
  sm_key_distribution_handle_all_received(_207);
  *_218 = 35;
  _373 = *((&_207->field0));
  sm_done_for_handle(_373);
  goto _464;

_496:
  *_218 = 34;
  goto _464;

_494:
  *_218 = 52;
  _374 = (&_207->field0);
  _375 = *_374;
  sm_done_for_handle(_375);
  _376 = sm_global_info;
  _377 = *((&_376->field9));
  if ((((_377 == ((uint8_t)0))&1))) {
    goto _498;
  } else {
    goto _464;
  }

_498:
  _378 = *((&_376->field0.field5));
  *_136 = _378;
  _379 = *((&_376->field0.field6));
  *_137 = _379;
  *_138 = 0;
  _380 = *((&_207->field10));
  *_139 = _380;
  _381 = *((&_207->field9));
  *_140 = _381;
  _382 = *((&_207->field12));
  *_141 = (((uint8_t)_382));
  _383 = *((&_376->field0.field32));
  little_endian_store_16(_136, 6, _383);
  _384 = sm_global_info;
  _385 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_384->field0.field33.array[((int32_t)0)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, _142) = _385;
  _386 = *_370;
  _387 = *((&_384->field0.field37));
  _388 = ble_list_pair_add(_386, ((&_384->field0.field38.array[((int32_t)0)])), _387, ((&_384->field0.field35.array[((int32_t)0)])), ((&_384->field0.field34.array[((int32_t)0)])), _136);
  _389 = *_374;
  _390 = *((&_207->field4));
  sm_notify_client_process(_389, _390, ((&_207->field5.array[((int32_t)0)])), (llvm_select_u32((((_388 == ((uint8_t)0))&1)), 17, 16)));
  goto _464;

_481:
  _326 = *((&_211->field25));
  if ((((_326 == 1u)&1))) {
    goto _464;
  } else {
    goto _499;
  }

_477:
  _300 = *((&_211->field25));
  if ((((_300 == 1u)&1))) {
    goto _464;
  } else {
    goto _500;
  }

_476:
  _289 = *((&_211->field25));
  if ((((_289 == 1u)&1))) {
    goto _464;
  } else {
    goto _501;
  }

_501:
  _290 = *((&_207->field1));
  if ((((_290 == ((uint8_t)0))&1))) {
    goto _502;
  } else {
    goto _503;
  }

_503:
  _291 = (&_211->field0.field13.array[((int32_t)0)]);
  _292 = (&_211->field0.field15.array[((int32_t)0)]);
  _295__PHI_TEMPORARY = _292;   /* for PHI node */
  _296__PHI_TEMPORARY = _291;   /* for PHI node */
  goto _504;

_502:
  _293 = (&_211->field0.field15.array[((int32_t)0)]);
  _294 = (&_211->field0.field13.array[((int32_t)0)]);
  _295__PHI_TEMPORARY = _294;   /* for PHI node */
  _296__PHI_TEMPORARY = _293;   /* for PHI node */
  goto _504;

_504:
  _295 = _295__PHI_TEMPORARY;
  _296 = _296__PHI_TEMPORARY;
  _297 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_295[((int32_t)8)])))));
  *_134 = _297;
  _298 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_296[((int32_t)8)])))));
  *_135 = _298;
  _299 = *_218;
  *_218 = (llvm_add_u32(_299, 1));
  sm_aes128_start(((&_211->field0.field8.array[((int32_t)0)])), _129, (((uint8_t*)_207)));
  goto _464;

_475:
  _284 = *((&_211->field25));
  if ((((_284 == 1u)&1))) {
    goto _464;
  } else {
    goto _505;
  }

_505:
  _285 = *((&_211->field0.field17));
  _286 = *((&_211->field0.field18));
  sm_c1_t1(((&_211->field0.field13.array[((int32_t)0)])), ((&_211->field0.field11.array[((int32_t)0)])), ((&_211->field0.field12.array[((int32_t)0)])), _285, _286, _129);
  _287 = *_218;
  *_218 = (llvm_add_u32(_287, 1));
  _288 = sm_global_info;
  sm_aes128_start(((&_288->field0.field8.array[((int32_t)0)])), _129, (((uint8_t*)_207)));
  goto _464;

_474:
  _279 = *((&_211->field25));
  if ((((_279 == 1u)&1))) {
    goto _464;
  } else {
    goto _506;
  }

_506:
  _280 = *((&_211->field0.field17));
  _281 = *((&_211->field0.field18));
  sm_c1_t1(((&_211->field0.field15.array[((int32_t)0)])), ((&_211->field0.field11.array[((int32_t)0)])), ((&_211->field0.field12.array[((int32_t)0)])), _280, _281, _129);
  _282 = *_218;
  *_218 = (llvm_add_u32(_282, 1));
  _283 = sm_global_info;
  sm_aes128_start(((&_283->field0.field8.array[((int32_t)0)])), _129, (((uint8_t*)_207)));
  goto _464;

_473:
  _274 = *((&_211->field25));
  if ((((_274 == 0u)&1))) {
    goto _507;
  } else {
    goto _464;
  }

_472:
  _269 = *((&_211->field25));
  if ((((_269 == 0u)&1))) {
    goto _508;
  } else {
    goto _464;
  }

_471:
  _268 = *((&_211->field25));
  if ((((_268 == 1u)&1))) {
    goto _464;
  } else {
    goto _509;
  }

_469:
  *_132 = 4;
  reverse_128(((&_211->field0.field13.array[((int32_t)0)])), _133);
  _264 = *((&_207->field1));
  *_218 = (llvm_select_u32((((_264 != ((uint8_t)0))&1)), 45, 60));
  _265 = *((&_207->field0));
  _266 = l2cap_send_connectionless(_265, 6, _132, 17);
  sm_timeout_start(_207);
  goto _464;

_467:
  sm_pairing_packet_set_code(((&_211->field0.field11.array[((int32_t)0)])), 1);
  *_218 = 58;
  _243 = *((&_207->field0));
  _244 = sm_global_info;
  _245 = l2cap_send_connectionless(_243, 6, ((&_244->field0.field11.array[((int32_t)0)])), 7);
  sm_timeout_start(_207);
  goto _464;

_465:
  *_130 = 5;
  _220 = *((&_211->field0.field1));
  *_131 = _220;
  _221 = *((&_207->field1));
  *_218 = (llvm_select_u32((((_221 != ((uint8_t)0))&1)), 35, 52));
  _222 = (&_207->field0);
  _223 = *_222;
  _224 = l2cap_send_connectionless(_223, 6, _130, 2);
  _225 = *_222;
  sm_done_for_handle(_225);
  _226 = *_222;
  sm_set_timeout_disconnect((((uint32_t)(uint16_t)_226)), 5);
  _227 = *_222;
  _228 = *((&_207->field4));
  _229 = sm_global_info;
  _230 = *((&_229->field0.field1));
  sm_notify_client_process(_227, _228, ((&_207->field5.array[((int32_t)0)])), (((((uint32_t)(uint8_t)_230)) << 8) | 3));
  goto _464;

_464:
  _391 = sm_global_info;
  _392 = *((&_391->field31));
  if ((((_392 == ((uint16_t)-1))&1))) {
    goto _510;
  } else {
    goto _511;
  }

_510:
  goto _435;

  } while (1); /* end of syntactic loop '' */
_460:
  _212 = *((&_211->field31));
  l2cap_request_can_send_fix_channel_now_event(_212, 6);
  goto _393;

_463:
  _215 = (&_36.array[((int32_t)0)]);
  *_215 = 14;
  *((&_36.array[((int32_t)1)])) = _214;
  *_213 = -1;
  _216 = *((&_207->field0));
  _217 = l2cap_send_connectionless(_216, 6, _215, 2);
  goto _393;

_466:
  _231 = (&_39.array[((int32_t)0)]);
  reverse_128(((&_211->field0.field34.array[((int32_t)0)])), _231);
  *_218 = 55;
  _232 = sm_global_info;
  _233 = big_endian_read_32(((&_232->field0.field33.array[((int32_t)0)])), 0);
  _234 = sm_global_info;
  _235 = big_endian_read_32(((&_234->field0.field33.array[((int32_t)0)])), 4);
  _236 = (&_207->field0);
  _237 = *_236;
  _238 = sm_global_info;
  _239 = *((&_238->field0.field32));
  _240 = ll_hci_start_encryption(_237, _235, _233, _239, _231);
  _241 = *_236;
  _242 = *((&_207->field4));
  sm_notify_client_process(_241, _242, ((&_207->field5.array[((int32_t)0)])), 1);
  goto _512;

_468:
  sm_pairing_packet_set_code(((&_211->field0.field12.array[((int32_t)0)])), 2);
  _246 = sm_global_info;
  _247 = *((&_246->field5));
  _248 = *((&_246->field0.field9));
  _249 = llvm_select_u32((((_248 == ((uint8_t)0))&1)), (((uint32_t)(uint8_t)(llvm_or_u8((llvm_and_u8(_247, 1)), 6)))), 6);
  *_218 = (llvm_select_u32((((_248 == ((uint8_t)0))&1)), 43, 64));
  _250 = sm_pairing_packet_get_initiator_key_distribution(((&_246->field0.field11.array[((int32_t)0)])));
  sm_pairing_packet_set_initiator_key_distribution(((&_246->field0.field12.array[((int32_t)0)])), (((uint8_t)((((uint32_t)(uint8_t)_250)) & _249))));
  _251 = sm_global_info;
  _252 = sm_pairing_packet_get_responder_key_distribution(((&_251->field0.field11.array[((int32_t)0)])));
  sm_pairing_packet_set_responder_key_distribution(((&_251->field0.field12.array[((int32_t)0)])), (((uint8_t)((((uint32_t)(uint8_t)_252)) & _249))));
  _253 = sm_global_info;
  _254 = (&_253->field0.field12.array[((int32_t)0)]);
  _255 = sm_pairing_packet_get_responder_key_distribution(_254);
  *((&_253->field0.field6)) = 0;
  _256 = ((uint32_t)(uint8_t)_255);
  _257 = llvm_select_u32(((((_256 & 1) == 0u)&1)), 0, 3);
  _258 = ((uint8_t)((llvm_select_u32(((((_256 & 2) == 0u)&1)), _257, (_257 | 12))) | ((_256 << 2) & 16)));
  *((&_253->field0.field4)) = _258;
  *((&_253->field0.field5)) = _258;
  _259 = *((&_207->field0));
  _260 = l2cap_send_connectionless(_259, 6, _254, 7);
  sm_timeout_start(_207);
  _261 = sm_global_info;
  _262 = *((&_261->field0.field9));
  if ((((_262 == ((uint8_t)0))&1))) {
    goto _513;
  } else {
    goto _514;
  }

_514:
  _263 = *((&_261->field0.field7));
  if ((((_263 == 0u)&1))) {
    goto _513;
  } else {
    goto _512;
  }

_513:
  sm_trigger_user_response(_207);
  goto _512;

_470:
  *_218 = (llvm_add_u32(_219, 1));
  *(((struct l_struct_struct_OC_sm_connection**)((&_211->field27)))) = _207;
  _267 = ll_hci_get_le_rand();
  goto _512;

_509:
  *_218 = (llvm_add_u32(_219, 1));
  sm_aes128_start(((&_211->field0.field8.array[((int32_t)0)])), ((&_211->field0.field10.array[((int32_t)0)])), (((uint8_t*)_207)));
  goto _512;

_508:
  _270 = (&_41.array[((int32_t)0)]);
  _271 = *((&_211->field0.field24));
  sm_d1_d_prime(_271, 0, _270);
  _272 = *_218;
  *_218 = (llvm_add_u32(_272, 1));
  _273 = sm_global_info;
  sm_aes128_start(((&_273->field10.array[((int32_t)0)])), _270, (((uint8_t*)_207)));
  goto _512;

_507:
  _275 = (&_42.array[((int32_t)0)]);
  _276 = *((&_211->field0.field24));
  sm_d1_d_prime(_276, 1, _275);
  _277 = *_218;
  *_218 = (llvm_add_u32(_277, 1));
  _278 = sm_global_info;
  sm_aes128_start(((&_278->field10.array[((int32_t)0)])), _275, (((uint8_t*)_207)));
  goto _512;

_500:
  *(((uint64_t*)(&_37))) = 0;
  _301 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_211->field0.field26.array[((int32_t)0)])))));
  *_134 = _301;
  _302 = *_218;
  *_218 = (llvm_add_u32(_302, 1));
  sm_aes128_start(((&_211->field12.array[((int32_t)0)])), _129, (((uint8_t*)_207)));
  goto _512;

_478:
  _303 = (&_43.array[((int32_t)0)]);
  *_303 = 3;
  reverse_128(((&_211->field0.field14.array[((int32_t)0)])), ((&_43.array[((int32_t)1)])));
  _304 = *((&_207->field1));
  *_218 = (llvm_select_u32((((_304 != ((uint8_t)0))&1)), 44, 59));
  _305 = *((&_207->field0));
  _306 = l2cap_send_connectionless(_305, 6, _303, 17);
  sm_timeout_start(_207);
  goto _512;

_479:
  _307 = (&_44.array[((int32_t)0)]);
  reverse_128(((&_211->field0.field21.array[((int32_t)0)])), _307);
  *_218 = 22;
  _308 = *((&_207->field0));
  _309 = ll_hci_long_term_key_request_reply(_308, _307);
  goto _512;

_480:
  _310 = (&_45.array[((int32_t)0)]);
  _311 = *((&_207->field1));
  if ((((_311 == ((uint8_t)0))&1))) {
    _323__PHI_TEMPORARY = _211;   /* for PHI node */
    goto _515;
  } else {
    goto _516;
  }

_516:
  _312 = *((&_211->field9));
  if ((((_312 == ((uint8_t)0))&1))) {
    goto _517;
  } else {
    _323__PHI_TEMPORARY = _211;   /* for PHI node */
    goto _515;
  }

_517:
  _313 = (&_207->field5.array[((int32_t)0)]);
  _314 = (&_207->field4);
  _315 = *_314;
  _316 = ble_list_reconnect_device_is_exist(_313, _315, ((&_211->field0.field21.array[((int32_t)0)])), _311);
  if ((((_316 == ((uint8_t)0))&1))) {
    goto _518;
  } else {
    goto _519;
  }

_519:
  _317 = sm_global_info;
  _323__PHI_TEMPORARY = _317;   /* for PHI node */
  goto _515;

_518:
  *_218 = 35;
  _318 = (&_207->field0);
  _319 = *_318;
  _320 = ll_hci_long_term_key_request_nagative_reply(_319);
  _321 = *_318;
  _322 = *_314;
  sm_notify_client_process(_321, _322, _313, 2);
  goto _520;

_515:
  _323 = _323__PHI_TEMPORARY;
  reverse_128(((&_323->field0.field21.array[((int32_t)0)])), _310);
  *_218 = 35;
  _324 = *((&_207->field0));
  _325 = ll_hci_long_term_key_request_reply(_324, _310);
  goto _520;

_520:
  goto _512;

_499:
  *(((uint64_t*)(&_37))) = 0;
  _327 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_211->field0.field26.array[((int32_t)0)])))));
  *_134 = _327;
  _328 = *_218;
  *_218 = (llvm_add_u32(_328, 1));
  sm_aes128_start(((&_211->field12.array[((int32_t)0)])), _129, (((uint8_t*)_207)));
  goto _512;

_482:
  _329 = (&_46.array[((int32_t)0)]);
  reverse_128(((&_211->field0.field21.array[((int32_t)0)])), _329);
  *_218 = 22;
  _330 = *((&_207->field0));
  _331 = ll_hci_start_encryption(_330, 0, 0, 0, _329);
  goto _512;

_485:
  *_332 = (llvm_and_u8(_333, -2));
  _335 = (&_47.array[((int32_t)0)]);
  *_335 = 6;
  reverse_128(((&_211->field0.field21.array[((int32_t)0)])), ((&_47.array[((int32_t)1)])));
  _336 = *((&_207->field0));
  _337 = l2cap_send_connectionless(_336, 6, _335, 17);
  sm_timeout_start(_207);
  goto _512;

_487:
  *_332 = (llvm_and_u8(_333, -3));
  _338 = (&_48.array[((int32_t)0)]);
  *_338 = 7;
  _339 = *((&_211->field0.field25));
  little_endian_store_16(_338, 1, _339);
  _340 = sm_global_info;
  reverse_64(((&_340->field0.field26.array[((int32_t)0)])), ((&_48.array[((int32_t)3)])));
  _341 = *((&_207->field0));
  _342 = l2cap_send_connectionless(_341, 6, _338, 11);
  sm_timeout_start(_207);
  _343 = sm_global_info;
  _344 = *((&_343->field0.field25));
  *((&_207->field13)) = _344;
  _345 = __UNALIGNED_LOAD__(uint64_t, 2, (((uint64_t*)((&_343->field0.field26.array[((int32_t)0)])))));
  __UNALIGNED_LOAD__(uint64_t, 2, (((uint64_t*)((&_207->field14.array[((int32_t)0)]))))) = _345;
  goto _512;

_489:
  *_332 = (llvm_and_u8(_333, -5));
  _346 = (&_49.array[((int32_t)0)]);
  *_346 = 8;
  reverse_128(((&_211->field13.array[((int32_t)0)])), ((&_49.array[((int32_t)1)])));
  _347 = *((&_207->field0));
  _348 = l2cap_send_connectionless(_347, 6, _346, 17);
  sm_timeout_start(_207);
  _349 = ble_debug_enable;
  if (((((llvm_and_u8(_349, 1)) == ((uint8_t)0))&1))) {
    _352__PHI_TEMPORARY = _349;   /* for PHI node */
    goto _521;
  } else {
    goto _522;
  }

_522:
  _350 = puts(((&str_OC_16.array[((int32_t)0)])));
  _351 = ble_debug_enable;
  _352__PHI_TEMPORARY = _351;   /* for PHI node */
  goto _521;

_521:
  _352 = _352__PHI_TEMPORARY;
  if (((((llvm_and_u8(_352, 2)) == ((uint8_t)0))&1))) {
    goto _523;
  } else {
    goto _524;
  }

_524:
  _353 = puts(((&str_OC_18.array[((int32_t)0)])));
  _354 = sm_global_info;
  put_buf(((&_354->field13.array[((int32_t)0)])), 16);
  goto _523;

_523:
  goto _512;

_491:
  *_332 = (llvm_and_u8(_333, -9));
  _355 = (&_50.array[((int32_t)0)]);
  _356 = (&_51.array[((int32_t)0)]);
  *_356 = 9;
  _357 = (&_207->field0);
  _358 = *_357;
  _359 = gap_le_get_own_address_random_type(_358);
  switch (_359) {
  default:
    goto _525;
  case ((uint8_t)1):
    goto _526;
  case ((uint8_t)2):
    goto _526;
  case ((uint8_t)0):
    goto _527;
  case ((uint8_t)3):
    goto _527;
  }

_526:
  _360 = *_357;
  gap_le_get_own_address(_360, ((&_51.array[((int32_t)1)])), _355);
  goto _525;

_527:
  _361 = *_357;
  gap_le_get_own_id_address(_361, ((&_51.array[((int32_t)1)])), _355);
  goto _525;

_525:
  reverse_bd_addr(_355, ((&_51.array[((int32_t)2)])));
  _362 = *_357;
  _363 = l2cap_send_connectionless(_362, 6, _356, 8);
  sm_timeout_start(_207);
  goto _512;

_493:
  *_332 = (llvm_and_u8(_333, -17));
  _364 = *((&_211->field1));
  _365 = (&_211->field0.field28.array[((int32_t)0)]);
  if ((((_364 == ((uint8_t)0))&1))) {
    goto _528;
  } else {
    goto _529;
  }

_529:
  _366 = memset(_365, 204, 16);
  goto _528;

_528:
  _367 = (&_52.array[((int32_t)0)]);
  *_367 = 10;
  reverse_128(_365, ((&_52.array[((int32_t)1)])));
  _368 = *((&_207->field0));
  _369 = l2cap_send_connectionless(_368, 6, _367, 17);
  sm_timeout_start(_207);
  goto _512;

_511:
  goto _512;

_512:
  goto _393;

_458:
  goto _393;

_393:
  return;
}


void sm_event_callback_set(l_fptr_1* _530) {
  uint32_t _531;
  struct l_struct_struct_OC_sm_info_t* _532;

  _531 = config_le_sm_support_enable;
  if ((((_531 == 0u)&1))) {
    goto _533;
  } else {
    goto _534;
  }

_534:
  _532 = sm_global_info;
  *((&_532->field29.field1)) = _530;
   /*tail*/ sm_add_event_handler(((&_532->field29)));
  goto _533;

_533:
  return;
}


void sm_add_event_handler(struct l_struct_struct_OC_btstack_packet_callback_registration_t* _535) {
  uint32_t _536;
  struct l_struct_struct_OC_sm_info_t* _537;

  _536 = config_le_sm_support_enable;
  if ((((_536 == 0u)&1))) {
    goto _538;
  } else {
    goto _539;
  }

_539:
  _537 = sm_global_info;
   /*tail*/ btstack_linked_list_add_tail(((&_537->field30)), ((&_535->field0)));
  goto _538;

_538:
  return;
}


void sm_register_oob_data_callback(l_fptr_2* _540) {
  uint32_t _541;
  struct l_struct_struct_OC_sm_info_t* _542;

  _541 = config_le_sm_support_enable;
  if ((((_541 == 0u)&1))) {
    goto _543;
  } else {
    goto _544;
  }

_544:
  _542 = sm_global_info;
  *((&_542->field32)) = _540;
  goto _543;

_543:
  return;
}


void sm_set_accepted_stk_generation_methods(uint8_t _545) {
  uint32_t _546;
  struct l_struct_struct_OC_sm_info_t* _547;

  _546 = config_le_sm_support_enable;
  if ((((_546 == 0u)&1))) {
    goto _548;
  } else {
    goto _549;
  }

_549:
  _547 = sm_global_info;
  *((&_547->field2)) = _545;
  goto _548;

_548:
  return;
}


void sm_set_encryption_key_size_range(uint8_t _550, uint8_t _551) {
  uint32_t _552;
  struct l_struct_struct_OC_sm_info_t* _553;

  _552 = config_le_sm_support_enable;
  if ((((_552 == 0u)&1))) {
    goto _554;
  } else {
    goto _555;
  }

_555:
  _553 = sm_global_info;
  *((&_553->field4)) = _550;
  *((&_553->field3)) = _551;
  goto _554;

_554:
  return;
}


void sm_set_authentication_requirements(uint8_t _556) {
  uint32_t _557;
  struct l_struct_struct_OC_sm_info_t* _558;

  _557 = config_le_sm_support_enable;
  if ((((_557 == 0u)&1))) {
    goto _559;
  } else {
    goto _560;
  }

_560:
  _558 = sm_global_info;
  *((&_558->field5)) = (llvm_and_u8(_556, -9));
  goto _559;

_559:
  return;
}


void sm_set_io_capabilities(uint32_t _561) {
  uint32_t _562;
  struct l_struct_struct_OC_sm_info_t* _563;

  _562 = config_le_sm_support_enable;
  if ((((_562 == 0u)&1))) {
    goto _564;
  } else {
    goto _565;
  }

_565:
  _563 = sm_global_info;
  *((&_563->field6)) = (((uint8_t)_561));
  goto _564;

_564:
  return;
}


void sm_set_request_security(uint32_t _566) {
  uint32_t _567;
  struct l_struct_struct_OC_sm_info_t* _568;
  uint8_t* _569;
  uint8_t _570;

  _567 = config_le_sm_support_enable;
  if ((((_567 == 0u)&1))) {
    goto _571;
  } else {
    goto _572;
  }

_572:
  _568 = sm_global_info;
  _569 = (&_568->field7);
  _570 = *_569;
  *_569 = (llvm_or_u8((llvm_and_u8(_570, -16)), (llvm_and_u8((((uint8_t)_566)), 15))));
  goto _571;

_571:
  return;
}


void sm_set_master_request_pair(uint32_t _573) {
  uint32_t _574;
  struct l_struct_struct_OC_sm_info_t* _575;
  uint8_t* _576;
  uint8_t _577;

  _574 = config_le_sm_support_enable;
  if ((((_574 == 0u)&1))) {
    goto _578;
  } else {
    goto _579;
  }

_579:
  _575 = sm_global_info;
  _576 = (&_575->field7);
  _577 = *_576;
  *_576 = (llvm_or_u8((llvm_and_u8(_577, -49)), (llvm_and_u8((llvm_shl_u8((((uint8_t)_573)), 4)), 48))));
  goto _578;

_578:
  return;
}


void sm_set_master_pair_redo(uint32_t _580) {
  uint32_t _581;
  struct l_struct_struct_OC_sm_info_t* _582;
  uint8_t* _583;
  uint8_t _584;

  _581 = config_le_sm_support_enable;
  if ((((_581 == 0u)&1))) {
    goto _585;
  } else {
    goto _586;
  }

_586:
  _582 = sm_global_info;
  _583 = (&_582->field7);
  _584 = *_583;
  *_583 = (llvm_or_u8((llvm_and_u8(_584, 63)), (llvm_shl_u8((((uint8_t)_580)), 6))));
  goto _585;

_585:
  return;
}


void sm_set_er(uint8_t* _587) {
  uint32_t _588;
  struct l_struct_struct_OC_sm_info_t* _589;
  uint8_t* _590;

  _588 = config_le_sm_support_enable;
  if ((((_588 == 0u)&1))) {
    goto _591;
  } else {
    goto _592;
  }

_592:
  _589 = sm_global_info;
  _590 = memcpy(((&_589->field10.array[((int32_t)0)])), _587, 16);
  goto _591;

_591:
  return;
}


void sm_set_ir(uint8_t* _593) {
  uint32_t _594;
  struct l_struct_struct_OC_sm_info_t* _595;
  uint8_t* _596;

  _594 = config_le_sm_support_enable;
  if ((((_594 == 0u)&1))) {
    goto _597;
  } else {
    goto _598;
  }

_598:
  _595 = sm_global_info;
  _596 = memcpy(((&_595->field11.array[((int32_t)0)])), _593, 16);
  goto _597;

_597:
  return;
}


void sm_test_set_irk(uint8_t* _599) {
  uint32_t _600;
  struct l_struct_struct_OC_sm_info_t* _601;
  uint8_t* _602;
  uint8_t* _603;
  uint8_t _604;

  _600 = config_le_sm_support_enable;
  if ((((_600 == 0u)&1))) {
    goto _605;
  } else {
    goto _606;
  }

_606:
  _601 = sm_global_info;
  _602 = memcpy(((&_601->field13.array[((int32_t)0)])), _599, 16);
  _603 = (&_601->field14);
  _604 = *_603;
  *_603 = (llvm_or_u8((llvm_and_u8(_604, -16)), 1));
  goto _605;

_605:
  return;
}


uint8_t sm_get_local_irk(uint8_t* _607) {
  uint32_t _608;
  struct l_struct_struct_OC_sm_info_t* _609;
  uint8_t _610;
  uint8_t* _611;
  uint8_t _612;
  uint8_t _612__PHI_TEMPORARY;

  _608 = config_le_sm_support_enable;
  if ((((_608 == 0u)&1))) {
    _612__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _613;
  } else {
    goto _614;
  }

_614:
  _609 = sm_global_info;
  _610 = *((&_609->field14));
  if (((((llvm_and_u8(_610, 15)) == ((uint8_t)0))&1))) {
    _612__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _613;
  } else {
    goto _615;
  }

_615:
  _611 = memcpy(_607, ((&_609->field13.array[((int32_t)0)])), 16);
  _612__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _613;

_613:
  _612 = _612__PHI_TEMPORARY;
  return _612;
}


void sm_set_make_resolvable_address(uint8_t _616) {
  uint32_t _617;
  struct l_struct_struct_OC_sm_info_t* _618;
  uint8_t* _619;
  uint8_t _620;

  _617 = config_le_sm_support_enable;
  if ((((_617 == 0u)&1))) {
    goto _621;
  } else {
    goto _622;
  }

_622:
  _618 = sm_global_info;
  _619 = (&_618->field14);
  _620 = *_619;
  *_619 = (llvm_or_u8((llvm_and_u8(_620, 15)), 16));
  goto _621;

_621:
  return;
}


void sm_test_use_fixed_local_csrk(void) {
  uint32_t _623;
  struct l_struct_struct_OC_sm_info_t* _624;

  _623 = config_le_sm_support_enable;
  if ((((_623 == 0u)&1))) {
    goto _625;
  } else {
    goto _626;
  }

_626:
  _624 = sm_global_info;
  *((&_624->field1)) = 1;
  goto _625;

_625:
  return;
}


void sm_set_master_reconnect_enc_delay(uint16_t _627) {
  uint32_t _628;
  struct l_struct_struct_OC_sm_info_t* _629;

  _628 = config_le_sm_support_enable;
  if ((((_628 == 0u)&1))) {
    goto _630;
  } else {
    goto _631;
  }

_631:
  _629 = sm_global_info;
  *((&_629->field34)) = _627;
  goto _630;

_630:
  return;
}


void sm_init(void) {
  struct l_struct_struct_OC_sm_vm_cfg_t _632;    /* Address-exposed local */
  uint8_t* _633;
  uint32_t _634;
  uint32_t _635;
  struct l_struct_struct_OC_sm_info_t* _636;
  uint32_t _637;
  uint32_t _638;
  uint8_t* _639;
  uint32_t _640;
  uint32_t _641;
  uint8_t* _642;
  uint8_t* _643;
  uint8_t* _643__PHI_TEMPORARY;
  uint8_t* _644;
  uint8_t* _645;
  uint32_t _646;
  uint16_t* _647;
  uint16_t _648;
  uint32_t _649;
  uint32_t _649__PHI_TEMPORARY;
  uint32_t _650;
  uint32_t _651;
  uint32_t _652;
  struct l_struct_struct_OC_sm_info_t* _653;
  uint8_t* _654;
  uint8_t* _655;
  struct l_struct_struct_OC_sm_info_t* _656;
  uint32_t _657;
  uint8_t _658;
  uint32_t _659;
  struct l_struct_struct_OC_sm_info_t* _660;
  uint8_t _661;
  uint32_t _662;

  _633 = ((uint8_t*)(&_632));
  _634 = config_le_sm_support_enable;
  if ((((_634 == 0u)&1))) {
    goto _663;
  } else {
    goto _664;
  }

_664:
  _635 = config_asser;
  _636 = sm_global_info;
  if ((((_635 == 0u)&1))) {
    goto _665;
  } else {
    goto _666;
  }

_666:
  if ((((_636 == ((struct l_struct_struct_OC_sm_info_t*)/*NULL*/0))&1))) {
    goto _667;
  } else {
    goto _668;
  }

_668:
  _637 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 4851);
  _638 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _667;

_665:
  if ((((_636 == ((struct l_struct_struct_OC_sm_info_t*)/*NULL*/0))&1))) {
    goto _669;
  } else {
    goto _670;
  }

_670:
   /*tail*/ cpu_reset();
  goto _669;

_667:
  _639 =  /*tail*/ malloc(480);
  if ((((_639 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _671;
  } else {
    _643__PHI_TEMPORARY = _639;   /* for PHI node */
    goto _672;
  }

_671:
  _640 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 4854);
  _641 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_3*)(void*)cpu_assert_debug)();
  _643__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _672;

_669:
  _642 =  /*tail*/ malloc(480);
  if ((((_642 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _673;
  } else {
    _643__PHI_TEMPORARY = _642;   /* for PHI node */
    goto _672;
  }

_673:
   /*tail*/ cpu_reset();
  _643__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _672;

_672:
  _643 = _643__PHI_TEMPORARY;
  *((uint8_t**)(&sm_global_info)) = _643;
   /*tail*/ ble_list_init();
  _644 = *((uint8_t**)(&sm_global_info));
  _645 = memset(_644, 0, 480);
  *(((uint16_t*)((&_644[((int32_t)464)])))) = -1;
  *((&_644[((int32_t)313)])) = 3;
  _646 = syscfg_read(109, _633, 34);
  _647 = (&_632.field0);
  _648 = *_647;
  if (((((((_646 == 34u)&1)) & (((_648 == ((uint16_t)21921))&1)))&1))) {
    goto _674;
  } else {
    goto _675;
  }

_675:
  *_647 = 21921u;
  _649__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _676;

  do {     /* Syntactic loop '' to make GCC happy */
_676:
  _649 = _649__PHI_TEMPORARY;
  _650 = rand32();
  *((&_632.field1.array[((int32_t)_649)])) = (((uint8_t)_650));
  *((&_632.field2.array[((int32_t)_649)])) = (((uint8_t)(llvm_lshr_u32(_650, 8))));
  _651 = llvm_add_u32(_649, 1);
  if ((((_651 == 16u)&1))) {
    goto _677;
  } else {
    _649__PHI_TEMPORARY = _651;   /* for PHI node */
    goto _676;
  }

  } while (1); /* end of syntactic loop '' */
_677:
  _652 = syscfg_write(109, _633, 34);
  goto _674;

_674:
  _653 = sm_global_info;
  _654 = memcpy(((&_653->field10.array[((int32_t)0)])), ((&_632.field1.array[((int32_t)0)])), 16);
  _655 = memcpy(((&_653->field11.array[((int32_t)0)])), ((&_632.field2.array[((int32_t)0)])), 16);
  *((&_653->field2)) = 15;
  *((&_653->field3)) = 16;
  *((&_653->field4)) = 7;
  *((&_653->field8)) = -1;
  *((&_653->field9)) = 0;
  *((&_653->field15)) = 0;
  *((&_653->field16)) = 0;
  *((&_653->field25)) = 0;
  *((&_653->field18)) = -1;
  *((&_653->field19)) = 0;
  *((&_653->field23)) = 0;
  *((&_653->field24)) = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);
  gap_random_adress_update_period = 900;
  *((&_653->field31)) = -1;
  *((&_653->field1)) = 0;
  *((&_653->field28.field1)) = sm_event_packet_handler;
  hci_add_event_handler((((uint8_t*)((&_653->field28)))));
  l2cap_register_fixed_channel(sm_pdu_handler, 6);
  _656 = sm_global_info;
  *((&_656->field34)) = 100;
  _657 = hci_get_state();
  if ((((_657 == 2u)&1))) {
    goto _678;
  } else {
    goto _663;
  }

_678:
  _658 = ble_debug_enable;
  if (((((llvm_and_u8(_658, 1)) == ((uint8_t)0))&1))) {
    goto _679;
  } else {
    goto _680;
  }

_680:
  _659 = puts(((&str_OC_21.array[((int32_t)0)])));
  goto _679;

_679:
  _660 = sm_global_info;
  _661 = *((&_660->field14));
  *((&_660->field15)) = (llvm_select_u32(((((llvm_and_u8(_661, 15)) != ((uint8_t)0))&1)), 3, 1));
  _662 = gap_random_adress_type;
  *((&_660->field16)) = (llvm_select_u32((((_662 == 0u)&1)), 1, (llvm_select_u32((((_662 == 1u)&1)), 6, 2))));
  goto _663;

_663:
  return;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


static void sm_event_packet_handler(uint8_t _681, uint16_t _682, uint8_t* _683, uint16_t _684) {
  uint32_t _685;    /* Address-exposed local */
  struct l_array_6_uint8_t _686;    /* Address-exposed local */
  __MSALIGN__(4) struct l_array_16_uint8_t _687 __attribute__((aligned(4)));    /* Address-exposed local */
  struct l_array_3_uint8_t _688;    /* Address-exposed local */
  struct l_array_16_uint8_t _689;    /* Address-exposed local */
  struct l_array_16_uint8_t _690;    /* Address-exposed local */
  struct l_array_16_uint8_t _691;    /* Address-exposed local */
  struct l_array_16_uint8_t _692;    /* Address-exposed local */
  uint8_t _693;
  uint8_t _694;
  uint8_t _695;
  uint16_t _696;
  struct l_struct_struct_OC___le_hci_connection* _697;
  struct l_struct_struct_OC_sm_connection* _698;
  uint16_t* _699;
  uint8_t _700;
  uint8_t* _701;
  uint8_t _702;
  uint32_t* _703;
  uint8_t _704;
  uint32_t* _705;
  uint32_t _706;
  struct l_struct_struct_OC_sm_info_t* _707;
  uint8_t _708;
  uint8_t _709;
  struct l_struct_struct_OC_sm_info_t* _710;
  uint16_t _711;
  uint32_t* _712;
  uint16_t _713;
  uint16_t _714;
  uint8_t _715;
  uint16_t _716;
  struct l_struct_struct_OC___le_hci_connection* _717;
  struct l_struct_struct_OC_sm_connection* _718;
  uint32_t* _719;
  uint32_t _720;
  uint16_t _721;
  uint32_t _722;
  uint32_t _722__PHI_TEMPORARY;
  uint8_t _723;
  uint32_t _724;
  uint16_t _725;
  uint8_t _726;
  uint16_t _727;
  struct l_struct_struct_OC___le_hci_connection* _728;
  struct l_struct_struct_OC_sm_connection* _729;
  uint8_t _730;
  uint8_t* _731;
  uint8_t* _732;
  uint8_t _733;
  struct l_struct_struct_OC_sm_info_t* _734;
  uint8_t _735;
  uint8_t* _736;
  uint8_t* _737;
  uint8_t* _738;
  uint8_t* _739;
  uint8_t _740;
  uint8_t _741;
  uint8_t _742;
  uint8_t* _743;
  uint8_t* _743__PHI_TEMPORARY;
  uint8_t* _744;
  uint8_t* _744__PHI_TEMPORARY;
  uint8_t _745;
  uint8_t _745__PHI_TEMPORARY;
  uint16_t* _746;
  uint16_t _747;
  uint8_t _748;
  uint8_t _749;
  struct l_struct_struct_OC_sm_info_t* _750;
  uint8_t _751;
  uint32_t* _752;
  uint32_t _753;
  uint16_t _754;
  uint16_t _755;
  uint8_t _756;
  uint16_t _757;
  uint32_t* _758;
  uint32_t _759;
  uint16_t _760;
  uint8_t _761;
  struct l_struct_struct_OC_sm_info_t* _762;
  uint8_t _763;
  uint32_t _764;
  uint32_t _765;
  uint32_t _765__PHI_TEMPORARY;
  uint16_t _766;
  struct l_struct_struct_OC___le_hci_connection* _767;
  struct l_struct_struct_OC_sm_connection* _768;
  uint32_t* _769;
  uint32_t _770;
  uint16_t _771;
  uint8_t _772;
  uint16_t _773;
  struct l_struct_struct_OC___le_hci_connection* _774;
  struct l_struct_struct_OC_sm_connection* _775;
  uint32_t* _776;
  uint32_t _777;
  uint8_t _778;
  uint32_t _779;
  uint8_t _780;
  uint32_t _781;
  uint32_t _782;
  uint8_t _783;
  uint16_t _784;
  uint8_t* _785;
  struct l_struct_struct_OC_sm_info_t* _786;
  uint32_t* _787;
  uint32_t _788;
  uint8_t* _789;
  struct l_struct_struct_OC_sm_info_t* _790;
  uint32_t _791;
  uint32_t* _792;
  uint32_t _793;
  uint32_t _794;
  struct l_struct_struct_OC_sm_info_t* _795;
  uint8_t* _796;
  uint8_t _797;
  uint8_t* _798;
  uint8_t* _799;
  uint32_t _800;
  uint32_t _801;
  struct l_struct_struct_OC_sm_info_t* _802;
  struct l_struct_struct_OC_sm_info_t* _803;
  struct l_struct_struct_OC_sm_info_t* _803__PHI_TEMPORARY;
  uint32_t* _804;
  uint32_t _805;
  struct l_struct_struct_OC_sm_info_t* _806;
  uint32_t* _807;
  uint32_t _808;
  uint32_t _809;
  struct l_struct_struct_OC_sm_info_t* _810;
  uint32_t* _811;
  uint32_t _812;
  struct l_struct_struct_OC_sm_connection* _813;
  uint32_t* _814;
  uint32_t _815;
  uint8_t* _816;
  struct l_struct_struct_OC_sm_info_t* _817;
  uint8_t* _818;
  uint8_t* _819;
  uint8_t* _820;
  uint8_t _821;
  uint32_t _822;
  uint32_t _822__PHI_TEMPORARY;
  uint8_t _823;
  uint8_t _824;
  uint32_t _825;
  uint32_t _826;
  uint8_t* _827;
  struct l_struct_struct_OC_sm_info_t* _828;
  uint32_t _829;
  uint8_t _830;
  uint8_t _831;
  struct l_struct_struct_OC_sm_info_t* _832;
  uint8_t* _833;
  uint8_t _834;
  uint8_t* _835;
  uint32_t _836;
  struct l_struct_struct_OC_sm_info_t* _837;
  uint16_t _838;
  uint8_t* _839;
  uint32_t _840;
  struct l_struct_struct_OC_sm_info_t* _841;
  uint16_t _842;
  struct l_struct_struct_OC_sm_info_t* _843;
  uint8_t _844;
  uint8_t _845;
  uint8_t _846;
  uint8_t _847;
  uint16_t _848;
  uint8_t _849;
  struct l_struct_struct_OC_sm_info_t* _850;
  uint8_t* _851;
  uint8_t _852;
  uint16_t _853;
  uint8_t* _854;
  struct l_struct_struct_OC_sm_info_t* _855;
  uint32_t* _856;
  uint32_t _857;
  uint32_t _858;
  uint8_t* _859;
  uint8_t* _860;
  uint8_t _861;
  uint8_t _862;
  uint8_t _863;
  uint8_t* _864;
  uint8_t _865;
  uint8_t _866;
  uint8_t _867;
  uint8_t _867__PHI_TEMPORARY;
  uint32_t _868;
  uint32_t _868__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_connection* _869;
  uint32_t* _870;
  uint32_t _871;
  uint8_t* _872;
  uint8_t* _873;
  uint32_t _874;
  uint32_t _875;
  uint32_t _876;
  uint32_t _877;
  struct l_struct_struct_OC_sm_info_t* _878;
  l_fptr_4* _879;
  uint16_t _880;
  struct l_struct_struct_OC_sm_info_t* _881;
  uint32_t _882;
  uint32_t _883;
  uint32_t _883__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _884;
  struct l_struct_struct_OC_sm_info_t* _884__PHI_TEMPORARY;
  uint8_t _885;
  struct l_struct_struct_OC_sm_info_t* _886;
  uint8_t _887;
  struct l_struct_struct_OC_sm_info_t* _888;
  uint8_t _889;
  uint32_t _890;
  uint32_t _890__PHI_TEMPORARY;
  uint64_t _891;
  uint64_t _892;
  struct l_struct_struct_OC_sm_info_t* _893;
  uint8_t* _894;
  uint8_t _895;
  uint8_t _896;
  uint8_t _897;
  uint8_t _898;
  uint32_t _899;
  struct l_struct_struct_OC_sm_info_t* _900;

  if ((((_681 == ((uint8_t)4))&1))) {
    goto _901;
  } else {
    goto _902;
  }

_901:
  _693 =  /*tail*/ hci_event_packet_get_type(_683);
  switch (_693) {
  default:
    goto _902;
  case ((uint8_t)14):
    goto _903;
  case ((uint8_t)62):
    goto _904;
  case ((uint8_t)8):
    goto _905;
  case ((uint8_t)48):
    goto _906;
  case ((uint8_t)5):
    goto _907;
  }

_904:
  _694 = *((&_683[((int32_t)2)]));
  switch (_694) {
  default:
    goto _902;
  case ((uint8_t)1):
    goto _908;
  case ((uint8_t)5):
    goto _909;
  }

_908:
  _695 = *((&_683[((int32_t)3)]));
  if ((((_695 == ((uint8_t)0))&1))) {
    goto _910;
  } else {
    goto _911;
  }

_910:
  _696 =  /*tail*/ little_endian_read_16(_683, 4);
  _697 =  /*tail*/ le_hci_connection_for_handle(_696);
  _698 = llvm_select_pstruct_struct_OC_sm_connection((((_697 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_697->field11)));
  if ((((_697 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _912;
  }

_912:
  _699 = (&_698->field0);
  *_699 = _696;
  _700 = *((&_683[((int32_t)6)]));
  _701 = (&_698->field1);
  *_701 = _700;
  _702 = *((&_683[((int32_t)7)]));
  *((&_698->field4)) = _702;
   /*tail*/ reverse_bd_addr(((&_683[((int32_t)8)])), ((&_698->field5.array[((int32_t)0)])));
  _703 = (&_698->field17);
  *_703 = 0;
  *((&_698->field8)) = 0;
  *((&_698->field9)) = 0;
  *((&_698->field12)) = 0;
  *((&_698->field16)) = -1;
  *((&_698->field7)) = 1;
  _704 = *_701;
  if ((((_704 == ((uint8_t)0))&1))) {
    goto _913;
  } else {
    goto _914;
  }

_914:
  _705 = (&_698->field6);
  _706 = *_705;
  if ((((_706 == 0u)&1))) {
    goto _915;
  } else {
    goto _902;
  }

_915:
  _707 = sm_global_info;
  _708 = *((&_707->field7));
  *_705 = (llvm_select_u32(((((llvm_and_u8(_708, 15)) != ((uint8_t)0))&1)), 36, 35));
  goto _902;

_913:
  _709 =  /*tail*/ sm_master_pair_get_list(_698);
  _710 = sm_global_info;
  if ((((_709 == ((uint8_t)0))&1))) {
    goto _916;
  } else {
    goto _917;
  }

_917:
  _711 = *((&_710->field34));
  _712 = (&_698->field6);
  if ((((_711 == ((uint16_t)0))&1))) {
    goto _918;
  } else {
    goto _919;
  }

_919:
  *_712 = 52;
  _713 = *_699;
  _714 =  /*tail*/ sys_timeout_add((((uint8_t*)(uintptr_t)(((uint32_t)(uint16_t)_713)))), ((l_fptr_5*)sm_timeout_handler_pair), (((uint32_t)(uint16_t)_711)));
  *_703 = (((uint32_t)(uint16_t)_714));
  goto _902;

_918:
  *_712 = 53;
  goto _902;

_916:
  _715 = *((&_710->field7));
  *((&_698->field6)) = (llvm_select_u32(((((llvm_and_u8(_715, 48)) != ((uint8_t)0))&1)), 56, 52));
  goto _902;

_909:
  _716 =  /*tail*/ little_endian_read_16(_683, 3);
  _717 =  /*tail*/ le_hci_connection_for_handle(_716);
  _718 = llvm_select_pstruct_struct_OC_sm_connection((((_717 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_717->field11)));
  if ((((_717 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _920;
  }

_920:
  _719 = (&_718->field6);
  _720 = *_719;
  switch (_720) {
  default:
    goto _921;
  case 45u:
    goto _922;
  case 93u:
    goto _923;
  }

_922:
  *_719 = 20;
  goto _902;

_923:
  *_719 = 46;
  goto _902;

_921:
   /*tail*/ reverse_64(((&_683[((int32_t)5)])), ((&_718->field14.array[((int32_t)0)])));
  _721 =  /*tail*/ little_endian_read_16(_683, 13);
  *((&_718->field13)) = _721;
  if ((((_721 == ((uint16_t)0))&1))) {
    goto _924;
  } else {
    goto _925;
  }

_924:
  _722__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _926;

  do {     /* Syntactic loop '' to make GCC happy */
_926:
  _722 = _722__PHI_TEMPORARY;
  _723 = *((&_718->field14.array[((int32_t)_722)]));
  _724 = llvm_add_u32(_722, 1);
  if ((((_723 == ((uint8_t)0))&1))) {
    goto _927;
  } else {
    goto _928;
  }

_927:
  if ((((((int32_t)_724) < ((int32_t)8u))&1))) {
    _722__PHI_TEMPORARY = _724;   /* for PHI node */
    goto _926;
  } else {
    goto _929;
  }

  } while (1); /* end of syntactic loop '' */
_928:
  goto _925;

_925:
  _725 = *((&_718->field0));
  _726 = *((&_718->field4));
   /*tail*/ sm_notify_client_process(_725, _726, ((&_718->field5.array[((int32_t)0)])), 1);
  *_719 = 37;
  goto _902;

_929:
  *_719 = 39;
  goto _902;

_905:
  _727 =  /*tail*/ little_endian_read_16(_683, 3);
  _728 =  /*tail*/ le_hci_connection_for_handle(_727);
  _729 = llvm_select_pstruct_struct_OC_sm_connection((((_728 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_728->field11)));
  if ((((_728 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _930;
  }

_930:
  _730 = *((&_683[((int32_t)5)]));
  _731 = (&_729->field8);
  *_731 = _730;
  if ((((_730 == ((uint8_t)0))&1))) {
    goto _931;
  } else {
    goto _932;
  }

_931:
  _732 = (&_683[((int32_t)2)]);
  _733 = *_732;
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint8_t)_733)), -5))) < ((uint32_t)2u))&1))) {
    goto _933;
  } else {
    goto _902;
  }

_933:
  _734 = sm_global_info;
  _735 = *((&_734->field9));
  if ((((_735 == ((uint8_t)0))&1))) {
    goto _934;
  } else {
    goto _935;
  }

_935:
  _736 = (&_729->field4);
  _737 = (&_729->field5.array[((int32_t)0)]);
  _743__PHI_TEMPORARY = _737;   /* for PHI node */
  _744__PHI_TEMPORARY = _736;   /* for PHI node */
  _745__PHI_TEMPORARY = _733;   /* for PHI node */
  goto _936;

_934:
  _738 = (&_729->field5.array[((int32_t)0)]);
  _739 = (&_729->field4);
  _740 = *_739;
  _741 =  /*tail*/ ble_list_delete_device(_738, _740);
  _742 = *_732;
  _743__PHI_TEMPORARY = _738;   /* for PHI node */
  _744__PHI_TEMPORARY = _739;   /* for PHI node */
  _745__PHI_TEMPORARY = _742;   /* for PHI node */
  goto _936;

_936:
  _743 = _743__PHI_TEMPORARY;
  _744 = _744__PHI_TEMPORARY;
  _745 = _745__PHI_TEMPORARY;
  _746 = (&_729->field0);
  _747 = *_746;
  _748 = *_744;
   /*tail*/ sm_notify_client_process(_747, _748, _743, (((((uint32_t)(uint8_t)_745)) << 8) | 5));
  _749 = *((&_729->field1));
  if ((((_749 == ((uint8_t)0))&1))) {
    goto _937;
  } else {
    goto _902;
  }

_937:
  _750 = sm_global_info;
  _751 = *((&_750->field7));
  if ((((((uint8_t)_751) > ((uint8_t)((uint8_t)63)))&1))) {
    goto _938;
  } else {
    goto _939;
  }

_938:
  _752 = (&_729->field16);
  _753 = *_752;
  if ((((_753 == 4294967295u)&1))) {
    goto _940;
  } else {
    goto _941;
  }

_941:
   /*tail*/ le_device_db_remove(_753);
  *_752 = -1;
  goto _940;

_940:
  *((&_729->field17)) = 0;
  *_731 = 0;
  *((&_729->field9)) = 0;
  *((&_729->field12)) = 0;
  *((&_729->field7)) = 1;
  *((&_729->field6)) = 52;
  _754 = *_746;
   /*tail*/ sm_done_for_handle(_754);
  _755 = *_746;
  _756 =  /*tail*/ sm_api_request_pairing(_755);
  goto _902;

_939:
  _757 = *_746;
   /*tail*/ sm_set_timeout_disconnect((((uint32_t)(uint16_t)_757)), 2);
  goto _902;

_932:
  _758 = (&_729->field6);
  _759 = *_758;
  switch (_759) {
  default:
    goto _902;
  case 55u:
    goto _942;
  case 22u:
    goto _943;
  }

_942:
  *_758 = 52;
  _760 = *((&_729->field0));
   /*tail*/ sm_done_for_handle(_760);
  goto _902;

_943:
  _761 = *((&_729->field1));
  if ((((_761 == ((uint8_t)0))&1))) {
    goto _944;
  } else {
    goto _945;
  }

_945:
  _762 = sm_global_info;
  _763 = *((&_762->field0.field9));
  *_758 = (llvm_select_u32((((_763 != ((uint8_t)0))&1)), 33, 23));
  goto _902;

_944:
  _764 =  /*tail*/ sm_key_distribution_all_received(_729);
  if ((((_764 == 0u)&1))) {
    _765__PHI_TEMPORARY = 34;   /* for PHI node */
    goto _946;
  } else {
    goto _947;
  }

_947:
   /*tail*/ sm_key_distribution_handle_all_received(_729);
  _765__PHI_TEMPORARY = 23;   /* for PHI node */
  goto _946;

_946:
  _765 = _765__PHI_TEMPORARY;
  *_758 = _765;
  goto _902;

_906:
  _766 =  /*tail*/ little_endian_read_16(_683, 3);
  _767 =  /*tail*/ le_hci_connection_for_handle(_766);
  _768 = llvm_select_pstruct_struct_OC_sm_connection((((_767 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_767->field11)));
  if ((((_767 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _948;
  }

_948:
  _769 = (&_768->field6);
  _770 = *_769;
  switch (_770) {
  default:
    goto _902;
  case 55u:
    goto _949;
  case 22u:
    goto _950;
  }

_949:
  *_769 = 52;
  _771 = *((&_768->field0));
   /*tail*/ sm_done_for_handle(_771);
  goto _902;

_950:
  _772 = *((&_768->field1));
  *_769 = (llvm_select_u32((((_772 != ((uint8_t)0))&1)), 23, 34));
  goto _902;

_907:
  _773 =  /*tail*/ little_endian_read_16(_683, 3);
   /*tail*/ sm_done_for_handle(_773);
  _774 =  /*tail*/ le_hci_connection_for_handle(_773);
  _775 = llvm_select_pstruct_struct_OC_sm_connection((((_774 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_774->field11)));
  if ((((_774 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _951;
  }

_951:
  _776 = (&_775->field17);
  _777 = *_776;
  if ((((_777 == 0u)&1))) {
    goto _952;
  } else {
    goto _953;
  }

_953:
   /*tail*/ sys_timer_del((((uint16_t)_777)));
  *_776 = 0;
  goto _952;

_952:
  _778 = *((&_775->field1));
  if ((((_778 == ((uint8_t)0))&1))) {
    goto _954;
  } else {
    goto _955;
  }

_954:
  _779 = *((&_775->field6));
  if ((((_779 == 55u)&1))) {
    goto _956;
  } else {
    goto _957;
  }

_956:
  _780 = *((&_683[((int32_t)2)]));
  if ((((_780 == ((uint8_t)5))&1))) {
    goto _958;
  } else {
    goto _957;
  }

_958:
  _781 = *((&_775->field16));
   /*tail*/ le_device_db_remove(_781);
  goto _957;

_955:
  _782 = *((&_775->field16));
  if ((((_782 == 4294967295u)&1))) {
    goto _957;
  } else {
    goto _959;
  }

_959:
   /*tail*/ le_device_db_remove(_782);
  goto _957;

_957:
  *((&_775->field6)) = 0;
  *((&_775->field0)) = 0;
  goto _902;

_903:
  _783 = *_683;
  if ((((_783 == ((uint8_t)14))&1))) {
    goto _960;
  } else {
    goto _902;
  }

_960:
  _784 =  /*tail*/ little_endian_read_16(_683, 3);
  if ((((_784 == ((uint16_t)8215))&1))) {
    goto _961;
  } else {
    goto _962;
  }

_961:
  _785 = (&_683[((int32_t)6)]);
  _786 = sm_global_info;
  *((&_786->field25)) = 0;
  _787 = (&_786->field19);
  _788 = *_787;
  if ((((_788 == 0u)&1))) {
    goto _963;
  } else {
    goto _964;
  }

_964:
  *_787 = 0;
  _789 = (&_688.array[((int32_t)0)]);
  reverse_24(_785, _789);
  _790 = sm_global_info;
  _791 = memcmp(((&_790->field21.array[((int32_t)3)])), _789, 3);
  if ((((_791 == 0u)&1))) {
    goto _965;
  } else {
    goto _966;
  }

_965:
  sm_address_resolution_handle_event(0);
  goto _967;

_966:
  _792 = (&_790->field18);
  _793 = *_792;
  *_792 = (llvm_add_u32(_793, 1));
  goto _967;

_967:
  goto _902;

_963:
  _794 = *((&_786->field15));
  switch (_794) {
  default:
    goto _968;
  case 2u:
    goto _969;
  case 4u:
    goto _970;
  }

_969:
   /*tail*/ reverse_128(_785, ((&_786->field13.array[((int32_t)0)])));
  _795 = sm_global_info;
  _796 = (&_795->field14);
  _797 = *_796;
  *_796 = (llvm_or_u8((llvm_and_u8(_797, -16)), 1));
  if ((((((uint8_t)_797) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _971;
  } else {
    _803__PHI_TEMPORARY = _795;   /* for PHI node */
    goto _972;
  }

_971:
  _798 = (&_686.array[((int32_t)0)]);
  _799 = (&_687.array[((int32_t)0)]);
  reverse_128(((&_795->field13.array[((int32_t)0)])), _799);
  ll_vendor_device_address_generate(_798, _799, 3);
  _800 = ble_user_cmd_prepare(21, 2, 0, 3);
  _801 = le_controller_set_random_mac(_798);
  put_buf(_798, 6);
  put_buf(_799, 16);
  _802 = sm_global_info;
  _803__PHI_TEMPORARY = _802;   /* for PHI node */
  goto _972;

_972:
  _803 = _803__PHI_TEMPORARY;
  _804 = (&_803->field15);
  _805 = *_804;
  *_804 = (llvm_add_u32(_805, 1));
  goto _902;

_970:
   /*tail*/ reverse_128(_785, ((&_786->field12.array[((int32_t)0)])));
  _806 = sm_global_info;
  _807 = (&_806->field15);
  _808 = *_807;
  *_807 = (llvm_add_u32(_808, 1));
  goto _902;

_968:
  _809 = *((&_786->field16));
  if ((((_809 == 5u)&1))) {
    goto _973;
  } else {
    goto _974;
  }

_973:
   /*tail*/ reverse_24(_785, ((&_786->field17.array[((int32_t)3)])));
  _810 = sm_global_info;
  _811 = (&_810->field16);
  _812 = *_811;
  *_811 = (llvm_add_u32(_812, 1));
  goto _902;

_974:
  _813 = *(((struct l_struct_struct_OC_sm_connection**)((&_786->field26))));
  if ((((_813 == ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _975;
  }

_975:
  _814 = (&_813->field6);
  _815 = *_814;
  switch (_815) {
  default:
    goto _902;
  case 11u:
    goto _976;
  case 15u:
    goto _976;
  case 13u:
    goto _977;
  case 17u:
    goto _978;
  case 21u:
    goto _979;
  case 28u:
    goto _980;
  case 48u:
    goto _981;
  case 30u:
    goto _982;
  case 32u:
    goto _983;
  case 50u:
    goto _984;
  }

_976:
  _816 = (&_689.array[((int32_t)0)]);
  reverse_128(_785, _816);
  _817 = sm_global_info;
  _818 = (&_687.array[((int32_t)0)]);
  *(((uint32_t*)(&_687))) = 0;
  _819 = memcpy(((&_687.array[((int32_t)4)])), ((&_817->field0.field19.array[((int32_t)0)])), 6);
  _820 = memcpy(((&_687.array[((int32_t)10)])), ((&_817->field0.field20.array[((int32_t)0)])), 6);
  _821 = *_816;
  *((&_817->field0.field10.array[((int32_t)0)])) = _821;
  _822__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _985;

  do {     /* Syntactic loop '' to make GCC happy */
_985:
  _822 = _822__PHI_TEMPORARY;
  _823 = *((&_687.array[((int32_t)_822)]));
  _824 = *((&_689.array[((int32_t)_822)]));
  *((&_817->field0.field10.array[((int32_t)_822)])) = (llvm_xor_u8(_824, _823));
  _825 = llvm_add_u32(_822, 1);
  if ((((_825 == 16u)&1))) {
    goto _986;
  } else {
    _822__PHI_TEMPORARY = _825;   /* for PHI node */
    goto _985;
  }

  } while (1); /* end of syntactic loop '' */
_986:
  _826 = *_814;
  *_814 = (llvm_add_u32(_826, 1));
  goto _902;

_977:
   /*tail*/ reverse_128(_785, ((&_786->field0.field14.array[((int32_t)0)])));
  *_814 = 18;
  goto _902;

_978:
  _827 = (&_690.array[((int32_t)0)]);
  reverse_128(_785, _827);
  _828 = sm_global_info;
  _829 = memcmp(((&_828->field0.field16.array[((int32_t)0)])), _827, 16);
  if ((((_829 == 0u)&1))) {
    goto _987;
  } else {
    goto _988;
  }

_988:
  *((&_828->field0.field1)) = 4;
  *_814 = 1;
  goto _902;

_987:
  _830 = *((&_813->field1));
  *_814 = (llvm_select_u32((((_830 != ((uint8_t)0))&1)), 19, 20));
  goto _902;

_979:
   /*tail*/ reverse_128(_785, ((&_786->field0.field21.array[((int32_t)0)])));
  _831 = *((&_813->field10));
  if ((((((uint8_t)_831) < ((uint8_t)((uint8_t)16)))&1))) {
    goto _989;
  } else {
    goto _990;
  }

_989:
  _832 = sm_global_info;
  _833 = memset(((&_832->field0.field21.array[((int32_t)0)])), 0, (llvm_sub_u32(16, (((uint32_t)(uint8_t)_831)))));
  goto _990;

_990:
  _834 = *((&_813->field1));
  *_814 = (llvm_select_u32((((_834 != ((uint8_t)0))&1)), 46, 61));
  goto _902;

_980:
  _835 = (&_691.array[((int32_t)0)]);
  reverse_128(_785, _835);
  _836 = big_endian_read_16(_835, 14);
  _837 = sm_global_info;
  *((&_837->field0.field23)) = (((uint16_t)_836));
  _838 = *((&_837->field0.field24));
  *((&_837->field0.field25)) = (((uint16_t)((((uint32_t)(uint16_t)_838)) ^ _836)));
  *_814 = 29;
  goto _902;

_981:
  _839 = (&_692.array[((int32_t)0)]);
  reverse_128(_785, _839);
  _840 = big_endian_read_16(_839, 14);
  _841 = sm_global_info;
  *((&_841->field0.field23)) = (((uint16_t)_840));
  _842 = *((&_841->field0.field25));
  *((&_841->field0.field24)) = (((uint16_t)((((uint32_t)(uint16_t)_842)) ^ _840)));
  *_814 = 49;
  goto _902;

_982:
   /*tail*/ reverse_128(_785, ((&_786->field0.field21.array[((int32_t)0)])));
  *_814 = 31;
  goto _902;

_983:
   /*tail*/ reverse_128(_785, ((&_786->field0.field28.array[((int32_t)0)])));
  _843 = sm_global_info;
  _844 = *((&_843->field0.field4));
  if ((((_844 == ((uint8_t)0))&1))) {
    goto _991;
  } else {
    goto _992;
  }

_992:
  *_814 = 33;
  goto _902;

_991:
  _845 = *((&_813->field1));
  if ((((_845 == ((uint8_t)0))&1))) {
    goto _993;
  } else {
    goto _994;
  }

_994:
  *_814 = 34;
  goto _902;

_993:
  _846 = *((&_843->field0.field9));
  if ((((_846 == ((uint8_t)0))&1))) {
    goto _995;
  } else {
    goto _996;
  }

_996:
  _847 = *((&_843->field0.field6));
  if (((((llvm_and_u8(_847, 8)) == ((uint8_t)0))&1))) {
    goto _995;
  } else {
    goto _997;
  }

_997:
  *_814 = 94;
  goto _902;

_995:
  *_814 = 52;
  _848 = *((&_813->field0));
   /*tail*/ sm_done_for_handle(_848);
  goto _902;

_984:
   /*tail*/ reverse_128(_785, ((&_786->field0.field21.array[((int32_t)0)])));
  _849 = *((&_813->field10));
  if ((((((uint8_t)_849) < ((uint8_t)((uint8_t)16)))&1))) {
    goto _998;
  } else {
    goto _999;
  }

_998:
  _850 = sm_global_info;
  _851 = memset(((&_850->field0.field21.array[((int32_t)0)])), 0, (llvm_sub_u32(16, (((uint32_t)(uint8_t)_849)))));
  goto _999;

_999:
  *_814 = 51;
  goto _902;

_962:
  _852 = *_683;
  if ((((_852 == ((uint8_t)14))&1))) {
    goto _1000;
  } else {
    goto _902;
  }

_1000:
  _853 =  /*tail*/ little_endian_read_16(_683, 3);
  if ((((_853 == ((uint16_t)8216))&1))) {
    goto _1001;
  } else {
    goto _902;
  }

_1001:
  _854 = (&_683[((int32_t)6)]);
  _855 = sm_global_info;
  _856 = (&_855->field16);
  _857 = *_856;
  if ((((_857 == 3u)&1))) {
    goto _1002;
  } else {
    goto _1003;
  }

_1002:
  _858 = gap_random_adress_type;
  _859 = (&_855->field17.array[((int32_t)0)]);
  if ((((_858 == 3u)&1))) {
    goto _1004;
  } else {
    goto _1005;
  }

_1004:
  _860 = memcpy(_859, _854, 3);
  _861 = *_859;
  _862 = llvm_and_u8(_861, 63);
  *_859 = _862;
  _863 = llvm_or_u8(_862, 64u);
  _867__PHI_TEMPORARY = _863;   /* for PHI node */
  _868__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _1006;

_1005:
  _864 = memcpy(_859, _854, 6);
  _865 = *_859;
  _866 = llvm_and_u8(_865, 63);
  _867__PHI_TEMPORARY = _866;   /* for PHI node */
  _868__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _1006;

_1006:
  _867 = _867__PHI_TEMPORARY;
  _868 = _868__PHI_TEMPORARY;
  *_859 = _867;
  *_856 = _868;
  goto _902;

_1003:
  _869 = *(((struct l_struct_struct_OC_sm_connection**)((&_855->field27))));
  if ((((_869 == ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0))&1))) {
    goto _902;
  } else {
    goto _1007;
  }

_1007:
  _870 = (&_869->field6);
  _871 = *_870;
  switch (_871) {
  default:
    goto _902;
  case 5u:
    goto _1008;
  case 7u:
    goto _1009;
  case 9u:
    goto _1010;
  case 24u:
    goto _1011;
  case 26u:
    goto _1012;
  }

_1008:
  _872 = memset(((&_855->field0.field8.array[((int32_t)0)])), 0, 16);
  _873 = ((uint8_t*)(&_685));
  _874 = *((&_855->field8));
  if ((((_874 == 4294967295u)&1))) {
    goto _1013;
  } else {
    goto _1014;
  }

_1013:
  _875 =  /*tail*/ little_endian_read_32(_854, 0);
  _876 = _875 & 1048575;
  _877 = llvm_select_u32((((((uint32_t)_876) > ((uint32_t)999998u))&1)), (llvm_add_u32(_876, -999999)), _876);
  _685 = _877;
  _878 = sm_global_info;
  _879 = *((&_878->field33));
  if ((((_879 == ((l_fptr_4*)/*NULL*/0))&1))) {
    _883__PHI_TEMPORARY = _877;   /* for PHI node */
    _884__PHI_TEMPORARY = _878;   /* for PHI node */
    goto _1015;
  } else {
    goto _1016;
  }

_1016:
  _880 = *((&_869->field0));
  _879((&_685), _880);
  _881 = sm_global_info;
  _882 = _685;
  _883__PHI_TEMPORARY = _882;   /* for PHI node */
  _884__PHI_TEMPORARY = _881;   /* for PHI node */
  goto _1015;

_1014:
  _685 = _874;
  _883__PHI_TEMPORARY = _874;   /* for PHI node */
  _884__PHI_TEMPORARY = _855;   /* for PHI node */
  goto _1015;

_1015:
  _883 = _883__PHI_TEMPORARY;
  _884 = _884__PHI_TEMPORARY;
  big_endian_store_32(((&_884->field0.field8.array[((int32_t)0)])), 12, _883);
  _885 = *((&_869->field1));
  if ((((_885 == ((uint8_t)0))&1))) {
    goto _1017;
  } else {
    _890__PHI_TEMPORARY = 42;   /* for PHI node */
    goto _1018;
  }

_1017:
  _886 = sm_global_info;
  _887 = *((&_886->field0.field9));
  if ((((_887 == ((uint8_t)0))&1))) {
    goto _1019;
  } else {
    _890__PHI_TEMPORARY = 63;   /* for PHI node */
    goto _1018;
  }

_1019:
  *_870 = 3;
  sm_trigger_user_response(_869);
  _888 = sm_global_info;
  _889 = *((&_888->field0.field2));
  if ((((_889 == ((uint8_t)0))&1))) {
    _890__PHI_TEMPORARY = 6;   /* for PHI node */
    goto _1018;
  } else {
    goto _1020;
  }

_1018:
  _890 = _890__PHI_TEMPORARY;
  *_870 = _890;
  goto _1020;

_1020:
  goto _902;

_1009:
  _891 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_854)));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_855->field0.field13.array[((int32_t)0)]))))) = _891;
  *_870 = 8;
  goto _902;

_1010:
  _892 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_854)));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_855->field0.field13.array[((int32_t)8)]))))) = _892;
  *_870 = 10;
  goto _902;

_1011:
   /*tail*/ reverse_64(_854, ((&_855->field0.field26.array[((int32_t)0)])));
  _893 = sm_global_info;
  _894 = (&_893->field0.field26.array[((int32_t)7)]);
  _895 = *_894;
  _896 = *((&_869->field10));
  _897 = llvm_add_u8((llvm_add_u8(_896, -1)), (llvm_and_u8(_895, -16)));
  *_894 = _897;
  _898 = *((&_869->field9));
  *_894 = (llvm_add_u8((llvm_shl_u8(_898, 4)), (llvm_and_u8(_897, -17))));
  *_870 = 25;
  goto _902;

_1012:
  _899 =  /*tail*/ big_endian_read_16(_854, 0);
  _900 = sm_global_info;
  *((&_900->field0.field24)) = (((uint16_t)_899));
  *_870 = 27;
  goto _902;

_902:
  sm_run();
  goto _911;

_911:
  return;
}


static void sm_pdu_handler(uint8_t _1021, uint16_t _1022, uint8_t* _1023, uint16_t _1024) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _1025;    /* Address-exposed local */
  struct l_array_5_uint8_t _1026;    /* Address-exposed local */
  struct l_array_16_uint8_t _1027;    /* Address-exposed local */
  struct l_array_16_uint8_t _1028;    /* Address-exposed local */
  uint8_t _1029;
  uint32_t _1030;
  uint8_t _1031;
  uint8_t _1032;
  struct l_struct_struct_OC___le_hci_connection* _1033;
  struct l_struct_struct_OC_sm_connection* _1034;
  uint8_t _1035;
  uint16_t* _1036;
  uint16_t _1037;
  uint16_t _1038;
  uint8_t _1039;
  uint8_t _1040;
  uint8_t* _1041;
  uint8_t _1042;
  uint32_t* _1043;
  uint32_t _1044;
  uint8_t _1045;
  struct l_struct_struct_OC_sm_info_t* _1046;
  uint8_t* _1047;
  struct l_struct_struct_OC_sm_info_t* _1048;
  uint8_t _1049;
  uint8_t _1050;
  uint8_t _1051;
  uint32_t _1052;
  uint32_t* _1053;
  uint32_t _1054;
  uint32_t _1055;
  uint32_t _1055__PHI_TEMPORARY;
  uint8_t _1056;
  uint32_t _1057;
  uint8_t _1058;
  uint32_t _1059;
  uint32_t _1060;
  uint32_t _1061;
  uint32_t _1061__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _1062;
  struct l_struct_struct_OC_sm_info_t* _1063;
  uint8_t* _1064;
  uint32_t _1065;
  struct l_struct_struct_OC_sm_info_t* _1066;
  struct l_struct_struct_OC_sm_info_t* _1067;
  uint32_t _1068;
  struct l_struct_struct_OC_sm_info_t* _1069;
  uint8_t _1070;
  struct l_struct_struct_OC_sm_info_t* _1071;
  struct l_struct_struct_OC_sm_info_t* _1072;
  struct l_struct_struct_OC_sm_info_t* _1073;
  struct l_struct_struct_OC_sm_info_t* _1074;
  struct l_struct_struct_OC_sm_info_t* _1075;
  uint8_t _1076;
  struct l_struct_struct_OC_sm_info_t* _1077;
  uint8_t _1078;
  uint8_t _1079;
  uint8_t _1080;
  struct l_struct_struct_OC_sm_info_t* _1081;
  uint32_t _1082;
  uint16_t _1083;
  uint8_t* _1084;
  struct l_struct_struct_OC_sm_info_t* _1085;
  struct l_struct_struct_OC_sm_info_t* _1086;
  struct l_struct_struct_OC_sm_info_t* _1087;
  uint32_t _1088;
  uint16_t _1089;
  uint8_t _1090;
  struct l_struct_struct_OC_sm_info_t* _1091;
  struct l_struct_struct_OC_sm_info_t* _1092;
  struct l_struct_struct_OC_sm_info_t* _1092__PHI_TEMPORARY;
  uint8_t _1093;
  struct l_struct_struct_OC_sm_info_t* _1094;
  struct l_struct_struct_OC_sm_info_t* _1095;
  struct l_struct_struct_OC_sm_info_t* _1096;
  uint8_t* _1097;
  uint8_t _1098;
  struct l_struct_struct_OC_sm_info_t* _1099;
  uint8_t* _1100;
  uint8_t _1101;
  uint16_t _1102;
  struct l_struct_struct_OC_sm_info_t* _1103;
  struct l_struct_struct_OC_sm_info_t* _1104;
  uint8_t* _1105;
  uint8_t _1106;
  uint8_t _1107;
  uint32_t _1108;
  uint8_t _1109;
  uint8_t _1110;
  uint8_t _1110__PHI_TEMPORARY;
  uint32_t _1111;
  struct l_struct_struct_OC_sm_info_t* _1112;
  struct l_struct_struct_OC_sm_info_t* _1113;
  uint8_t* _1114;
  uint8_t _1115;
  uint8_t _1116;
  uint8_t* _1117;
  uint8_t _1118;
  struct l_struct_struct_OC_sm_info_t* _1119;
  uint8_t _1120;
  uint32_t _1121;
  uint8_t _1122;
  uint8_t _1123;
  uint8_t _1123__PHI_TEMPORARY;
  uint32_t _1124;
  struct l_struct_struct_OC_sm_info_t* _1125;
  uint8_t* _1126;
  uint8_t _1127;
  uint32_t _1128;
  uint8_t* _1129;
  uint8_t _1130;
  struct l_struct_struct_OC_sm_info_t* _1131;
  uint8_t _1132;
  uint8_t _1133;
  uint8_t _1134;
  uint16_t* _1135;
  uint8_t* _1136;
  uint8_t _1137;
  uint8_t _1138;
  uint16_t* _1139;
  uint16_t _1140;
  uint8_t _1141;
  uint8_t _1142;
  uint8_t _1143;
  uint32_t _1144;
  struct l_struct_struct_OC_sm_info_t* _1145;
  uint16_t _1146;
  struct l_struct_struct_OC_sm_info_t* _1147;
  uint64_t _1148;
  uint8_t _1149;
  uint8_t _1150;
  uint8_t _1151;
  uint16_t _1152;
  uint8_t _1153;
  uint16_t* _1154;
  uint16_t* _1154__PHI_TEMPORARY;
  uint16_t _1155;

  switch (_1021) {
  default:
    goto _1156;
  case ((uint8_t)4):
    goto _1157;
  case ((uint8_t)9):
    goto _1158;
  }

_1157:
  _1029 = *_1023;
  if ((((_1029 == ((uint8_t)120))&1))) {
    goto _1159;
  } else {
    goto _1156;
  }

_1159:
   /*tail*/ sm_run();
  goto _1156;

_1158:
  _1030 = ((uint32_t)(uint16_t)_1024);
  if ((((_1024 == ((uint16_t)0))&1))) {
    goto _1156;
  } else {
    goto _1160;
  }

_1160:
  _1031 = *_1023;
  if ((((((uint8_t)_1031) > ((uint8_t)((uint8_t)14)))&1))) {
    goto _1156;
  } else {
    goto _1161;
  }

_1161:
  _1032 = *((&sm_pdu_size.array[((int32_t)(((uint32_t)(uint8_t)_1031)))]));
  if (((((((uint32_t)(uint8_t)_1032)) == _1030)&1))) {
    goto _1162;
  } else {
    goto _1156;
  }

_1162:
  _1033 =  /*tail*/ le_hci_connection_for_handle(_1022);
  _1034 = llvm_select_pstruct_struct_OC_sm_connection((((_1033 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1033->field11)));
  if ((((_1033 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1156;
  } else {
    goto _1163;
  }

_1163:
  switch (_1031) {
  default:
    goto _1164;
  case ((uint8_t)5):
    goto _1165;
  case ((uint8_t)14):
    goto _1166;
  }

_1165:
  _1035 = *((&_1034->field1));
  *((&_1034->field6)) = (llvm_select_u32((((_1035 != ((uint8_t)0))&1)), 35, 52));
  _1036 = (&_1034->field0);
  _1037 = *_1036;
   /*tail*/ sm_set_timeout_disconnect((((uint32_t)(uint16_t)_1037)), 4);
  _1038 = *_1036;
  _1039 = *((&_1034->field4));
  _1040 = *((&_1023[((int32_t)1)]));
   /*tail*/ sm_notify_client_process(_1038, _1039, ((&_1034->field5.array[((int32_t)0)])), (((((uint32_t)(uint8_t)_1040)) << 8) | 65539));
  goto _1156;

_1166:
  _1041 = (&_1026.array[((int32_t)0)]);
  *_1041 = -35;
  *((&_1026.array[((int32_t)1)])) = 3;
  little_endian_store_16(_1041, 2, _1022);
  _1042 = *((&_1023[((int32_t)1)]));
  *((&_1026.array[((int32_t)4)])) = _1042;
  sm_dispatch_event(_1041, 5);
  goto _1156;

_1164:
  _1043 = (&_1034->field6);
  _1044 = *_1043;
  switch (_1044) {
  default:
    goto _1167;
  case 2u:
    goto _1156;
  case 52u:
    goto _1168;
  case 58u:
    goto _1169;
  case 59u:
    goto _1170;
  case 60u:
    goto _1171;
  case 35u:
    goto _1172;
  case 36u:
    goto _1172;
  case 40u:
    goto _1172;
  case 43u:
    goto _1173;
  case 44u:
    goto _1174;
  case 34u:
    goto _1175;
  }

_1168:
  if ((((_1031 == ((uint8_t)11))&1))) {
    goto _1176;
  } else {
    goto _1177;
  }

_1176:
  _1045 = *((&_1034->field1));
  if ((((_1045 == ((uint8_t)0))&1))) {
    goto _1178;
  } else {
    goto _1177;
  }

_1177:
  _1046 = sm_global_info;
  *((&_1046->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1178:
  _1047 = (&_1025.field0.array[((int32_t)0)]);
  _1048 = sm_global_info;
  _1049 = *((&_1048->field9));
  if ((((_1049 == ((uint8_t)0))&1))) {
    goto _1179;
  } else {
    goto _1180;
  }

_1179:
  _1050 = *((&_1034->field4));
  _1051 = ble_list_get_conn_addr_item(((&_1034->field5.array[((int32_t)0)])), _1050, 0, (&_1025));
  if ((((_1051 == ((uint8_t)0))&1))) {
    goto _1180;
  } else {
    goto _1181;
  }

_1181:
  goto _1167;

_1180:
  _1052 = *((&_1034->field7));
  switch (_1052) {
  default:
    goto _1182;
  case 4u:
    goto _1183;
  case 3u:
    goto _1184;
  }

_1183:
  *_1043 = 56;
  goto _1167;

_1184:
  _1053 = (&_1034->field16);
  _1054 = *_1053;
  le_device_db_encryption_get(_1054, ((uint16_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), ((&_1027.array[((int32_t)0)])), ((uint32_t*)/*NULL*/0), ((uint32_t*)/*NULL*/0), ((uint32_t*)/*NULL*/0));
  _1055__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1185;

  do {     /* Syntactic loop '' to make GCC happy */
_1185:
  _1055 = _1055__PHI_TEMPORARY;
  _1056 = *((&_1027.array[((int32_t)_1055)]));
  _1057 = llvm_add_u32(_1055, 1);
  if ((((_1056 == ((uint8_t)0))&1))) {
    goto _1186;
  } else {
    goto _1187;
  }

_1186:
  if ((((((int32_t)_1057) < ((int32_t)16u))&1))) {
    _1055__PHI_TEMPORARY = _1057;   /* for PHI node */
    goto _1185;
  } else {
    goto _1188;
  }

  } while (1); /* end of syntactic loop '' */
_1187:
  _1058 = ble_debug_enable;
  if (((((llvm_and_u8(_1058, 1)) == ((uint8_t)0))&1))) {
    _1061__PHI_TEMPORARY = 53;   /* for PHI node */
    goto _1189;
  } else {
    goto _1190;
  }

_1190:
  _1059 = *_1053;
  _1060 = printf(((&_OC_str_OC_10.array[((int32_t)0)])), _1059);
  _1061__PHI_TEMPORARY = 53;   /* for PHI node */
  goto _1189;

_1188:
  _1061__PHI_TEMPORARY = 56;   /* for PHI node */
  goto _1189;

_1189:
  _1061 = _1061__PHI_TEMPORARY;
  *_1043 = _1061;
  goto _1167;

_1182:
  *((&_1034->field2)) = 1;
  goto _1167;

_1169:
  switch (_1031) {
  default:
    goto _1191;
  case ((uint8_t)2):
    goto _1192;
  case ((uint8_t)11):
    goto _1167;
  }

_1191:
  _1062 = sm_global_info;
  *((&_1062->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1192:
  _1063 = sm_global_info;
  _1064 = memcpy(((&_1063->field0.field12.array[((int32_t)0)])), _1023, 7);
  _1065 =  /*tail*/ sm_stk_generation_init(_1034);
  if ((((_1065 == 0u)&1))) {
    goto _1193;
  } else {
    goto _1194;
  }

_1194:
  _1066 = sm_global_info;
  *((&_1066->field0.field1)) = (((uint8_t)_1065));
  *_1043 = 1;
  goto _1167;

_1193:
  _1067 = sm_global_info;
  _1068 = *((&_1067->field0.field7));
  if ((((_1068 == 1u)&1))) {
    goto _1195;
  } else {
    goto _1196;
  }

_1195:
  *_1043 = 4;
  goto _1167;

_1196:
  *_1043 = 3;
   /*tail*/ sm_trigger_user_response(_1034);
  _1069 = sm_global_info;
  _1070 = *((&_1069->field0.field2));
  if ((((_1070 == ((uint8_t)0))&1))) {
    goto _1197;
  } else {
    goto _1167;
  }

_1197:
  *_1043 = 6;
  goto _1167;

_1170:
  if ((((_1031 == ((uint8_t)3))&1))) {
    goto _1198;
  } else {
    goto _1199;
  }

_1199:
  _1071 = sm_global_info;
  *((&_1071->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1198:
  _1072 = sm_global_info;
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1072->field0.field16.array[((int32_t)0)])));
  *_1043 = 19;
  goto _1167;

_1171:
  if ((((_1031 == ((uint8_t)4))&1))) {
    goto _1200;
  } else {
    goto _1201;
  }

_1201:
  _1073 = sm_global_info;
  *((&_1073->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1200:
  _1074 = sm_global_info;
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1074->field0.field15.array[((int32_t)0)])));
  *_1043 = 14;
  goto _1167;

_1172:
  if ((((_1031 == ((uint8_t)1))&1))) {
    goto _1202;
  } else {
    goto _1203;
  }

_1203:
  _1075 = sm_global_info;
  *((&_1075->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1202:
  _1076 = *((&_1034->field1));
  if ((((_1076 == ((uint8_t)0))&1))) {
    goto _1204;
  } else {
    goto _1205;
  }

_1205:
  _1077 = sm_global_info;
  _1078 = *((&_1077->field9));
  if ((((_1078 == ((uint8_t)0))&1))) {
    goto _1206;
  } else {
    goto _1204;
  }

_1206:
  _1079 = *((&_1034->field4));
  _1080 =  /*tail*/ ble_list_pair_is_allow(((&_1034->field5.array[((int32_t)0)])), _1079);
  if ((((_1080 == ((uint8_t)0))&1))) {
    goto _1207;
  } else {
    goto _1204;
  }

_1207:
  _1081 = sm_global_info;
  *((&_1081->field0.field1)) = 8;
  *_1043 = 1;
  _1082 =  /*tail*/ puts(((&str_OC_20.array[((int32_t)0)])));
  _1083 = *((&_1034->field0));
   /*tail*/ sm_set_timeout_disconnect((((uint32_t)(uint16_t)_1083)), 3);
  goto _1167;

_1204:
  _1084 = memcpy(((&_1034->field11.array[((int32_t)0)])), _1023, 7);
  *_1043 = 41;
  goto _1167;

_1173:
  if ((((_1031 == ((uint8_t)3))&1))) {
    goto _1208;
  } else {
    goto _1209;
  }

_1209:
  _1085 = sm_global_info;
  *((&_1085->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1208:
  _1086 = sm_global_info;
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1086->field0.field16.array[((int32_t)0)])));
  _1087 = sm_global_info;
  _1088 = *((&_1087->field0.field7));
  if ((((_1088 == 2u)&1))) {
    goto _1210;
  } else {
    _1092__PHI_TEMPORARY = _1087;   /* for PHI node */
    goto _1211;
  }

_1210:
  _1089 = *((&_1034->field0));
  _1090 = *((&_1034->field4));
   /*tail*/ sm_notify_client_base(-45, _1089, _1090, ((&_1034->field5.array[((int32_t)0)])));
  _1091 = sm_global_info;
  _1092__PHI_TEMPORARY = _1091;   /* for PHI node */
  goto _1211;

_1211:
  _1092 = _1092__PHI_TEMPORARY;
  _1093 = *((&_1092->field0.field2));
  switch (_1093) {
  default:
    goto _1212;
  case ((uint8_t)4):
    goto _1213;
  case ((uint8_t)1):
    goto _1214;
  }

_1213:
  *((&_1092->field0.field1)) = 1;
  *_1043 = 1;
  goto _1167;

_1214:
  *_1043 = 3;
  goto _1167;

_1212:
  *_1043 = 6;
  goto _1167;

_1174:
  if ((((_1031 == ((uint8_t)4))&1))) {
    goto _1215;
  } else {
    goto _1216;
  }

_1216:
  _1094 = sm_global_info;
  *((&_1094->field0.field1)) = 8;
  *_1043 = 1;
  goto _1167;

_1215:
  _1095 = sm_global_info;
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1095->field0.field15.array[((int32_t)0)])));
  *_1043 = 14;
  goto _1167;

_1175:
  switch (_1031) {
  default:
    goto _1217;
  case ((uint8_t)6):
    goto _1218;
  case ((uint8_t)7):
    goto _1219;
  case ((uint8_t)8):
    goto _1220;
  case ((uint8_t)9):
    goto _1221;
  case ((uint8_t)10):
    goto _1222;
  }

_1218:
  _1096 = sm_global_info;
  _1097 = (&_1096->field0.field6);
  _1098 = *_1097;
  *_1097 = (llvm_or_u8(_1098, 1));
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1096->field0.field34.array[((int32_t)0)])));
  goto _1217;

_1219:
  _1099 = sm_global_info;
  _1100 = (&_1099->field0.field6);
  _1101 = *_1100;
  *_1100 = (llvm_or_u8(_1101, 2));
  _1102 =  /*tail*/ little_endian_read_16(_1023, 1);
  _1103 = sm_global_info;
  *((&_1103->field0.field32)) = _1102;
   /*tail*/ reverse_64(((&_1023[((int32_t)3)])), ((&_1103->field0.field33.array[((int32_t)0)])));
  goto _1217;

_1220:
  _1104 = sm_global_info;
  _1105 = (&_1104->field0.field6);
  _1106 = *_1105;
  *_1105 = (llvm_or_u8(_1106, 4));
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1104->field0.field35.array[((int32_t)0)])));
  _1107 = ble_debug_enable;
  if (((((llvm_and_u8(_1107, 1)) == ((uint8_t)0))&1))) {
    _1110__PHI_TEMPORARY = _1107;   /* for PHI node */
    goto _1223;
  } else {
    goto _1224;
  }

_1224:
  _1108 =  /*tail*/ puts(((&str_OC_19.array[((int32_t)0)])));
  _1109 = ble_debug_enable;
  _1110__PHI_TEMPORARY = _1109;   /* for PHI node */
  goto _1223;

_1223:
  _1110 = _1110__PHI_TEMPORARY;
  if (((((llvm_and_u8(_1110, 2)) == ((uint8_t)0))&1))) {
    goto _1217;
  } else {
    goto _1225;
  }

_1225:
  _1111 =  /*tail*/ puts(((&str_OC_18.array[((int32_t)0)])));
  _1112 = sm_global_info;
   /*tail*/ put_buf(((&_1112->field0.field35.array[((int32_t)0)])), 16);
  goto _1217;

_1221:
  _1113 = sm_global_info;
  _1114 = (&_1113->field0.field6);
  _1115 = *_1114;
  *_1114 = (llvm_or_u8(_1115, 8));
  _1116 = *((&_1023[((int32_t)1)]));
  *((&_1113->field0.field37)) = _1116;
  _1117 = (&_1023[((int32_t)2)]);
   /*tail*/ reverse_bd_addr(_1117, ((&_1113->field0.field38.array[((int32_t)0)])));
  _1118 = ble_debug_enable;
  if (((((llvm_and_u8(_1118, 1)) == ((uint8_t)0))&1))) {
    _1123__PHI_TEMPORARY = _1118;   /* for PHI node */
    goto _1226;
  } else {
    goto _1227;
  }

_1227:
  _1119 = sm_global_info;
  _1120 = *((&_1119->field0.field37));
  _1121 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), (((uint32_t)(uint8_t)_1120)));
  _1122 = ble_debug_enable;
  _1123__PHI_TEMPORARY = _1122;   /* for PHI node */
  goto _1226;

_1226:
  _1123 = _1123__PHI_TEMPORARY;
  if (((((llvm_and_u8(_1123, 2)) == ((uint8_t)0))&1))) {
    goto _1217;
  } else {
    goto _1228;
  }

_1228:
  _1124 =  /*tail*/ puts(((&str_OC_18.array[((int32_t)0)])));
   /*tail*/ put_buf(_1117, 6);
  goto _1217;

_1222:
  _1125 = sm_global_info;
  _1126 = (&_1125->field0.field6);
  _1127 = *_1126;
  *_1126 = (llvm_or_u8(_1127, 16));
   /*tail*/ reverse_128(((&_1023[((int32_t)1)])), ((&_1125->field0.field36.array[((int32_t)0)])));
  goto _1217;

_1217:
  _1128 =  /*tail*/ sm_key_distribution_all_received(_1034);
  if ((((_1128 == 0u)&1))) {
    goto _1167;
  } else {
    goto _1229;
  }

_1229:
   /*tail*/ sm_key_distribution_handle_all_received(_1034);
  _1129 = (&_1034->field1);
  _1130 = *_1129;
  _1131 = sm_global_info;
  _1132 = *((&_1131->field0.field9));
  if ((((_1130 == ((uint8_t)0))&1))) {
    goto _1230;
  } else {
    goto _1231;
  }

_1231:
  if ((((_1132 == ((uint8_t)0))&1))) {
    goto _1232;
  } else {
    goto _1233;
  }

_1233:
  _1133 = *((&_1131->field0.field6));
  if (((((llvm_and_u8(_1133, 8)) == ((uint8_t)0))&1))) {
    goto _1232;
  } else {
    goto _1234;
  }

_1234:
  *_1043 = 94;
  goto _1167;

_1232:
  _1134 = *((&_1131->field9));
  if ((((_1134 == ((uint8_t)0))&1))) {
    goto _1235;
  } else {
    goto _1236;
  }

_1236:
  _1135 = (&_1034->field0);
  _1154__PHI_TEMPORARY = _1135;   /* for PHI node */
  goto _1237;

_1235:
  _1136 = (&_1028.array[((int32_t)0)]);
  _1137 = *((&_1131->field0.field5));
  *_1136 = _1137;
  _1138 = *((&_1131->field0.field6));
  *((&_1028.array[((int32_t)1)])) = _1138;
  _1139 = (&_1034->field0);
  _1140 = *_1139;
  _1141 =  /*tail*/ att_server_get_remote_type(_1140);
  *((&_1028.array[((int32_t)2)])) = _1141;
  _1142 = *((&_1034->field10));
  *((&_1028.array[((int32_t)3)])) = _1142;
  _1143 = *((&_1034->field9));
  *((&_1028.array[((int32_t)4)])) = _1143;
  _1144 = *((&_1034->field12));
  *((&_1028.array[((int32_t)5)])) = (((uint8_t)_1144));
  _1145 = sm_global_info;
  _1146 = *((&_1145->field0.field25));
  little_endian_store_16(_1136, 6, _1146);
  _1147 = sm_global_info;
  _1148 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_1147->field0.field26.array[((int32_t)0)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_1028.array[((int32_t)8)]))))) = _1148;
  _1149 = *_1129;
  _1150 = *((&_1147->field0.field37));
  _1151 = ble_list_pair_add(_1149, ((&_1147->field0.field38.array[((int32_t)0)])), _1150, ((&_1147->field0.field35.array[((int32_t)0)])), ((&_1147->field0.field21.array[((int32_t)0)])), _1136);
  _1152 = *_1139;
  _1153 = *((&_1034->field4));
  sm_notify_client_process(_1152, _1153, ((&_1034->field5.array[((int32_t)0)])), (llvm_select_u32((((_1151 == ((uint8_t)0))&1)), 17, 16)));
  _1154__PHI_TEMPORARY = _1139;   /* for PHI node */
  goto _1237;

_1237:
  _1154 = _1154__PHI_TEMPORARY;
  *_1043 = 35;
  _1155 = *_1154;
  sm_done_for_handle(_1155);
  goto _1167;

_1230:
  *_1043 = (llvm_select_u32((((_1132 != ((uint8_t)0))&1)), 33, 23));
  goto _1167;

_1167:
  sm_run();
  goto _1156;

_1156:
  return;
}


void sm_exit(void) {
  uint32_t _1238;
  struct l_struct_struct_OC_sm_info_t* _1239;

  _1238 = config_le_sm_support_enable;
  if ((((_1238 == 0u)&1))) {
    goto _1240;
  } else {
    goto _1241;
  }

_1241:
   /*tail*/ le_device_db_exit();
  _1239 = sm_global_info;
  if ((((_1239 == ((struct l_struct_struct_OC_sm_info_t*)/*NULL*/0))&1))) {
    goto _1240;
  } else {
    goto _1242;
  }

_1242:
   /*tail*/ free((((uint8_t*)_1239)));
  sm_global_info = ((struct l_struct_struct_OC_sm_info_t*)/*NULL*/0);
  goto _1240;

_1240:
  return;
}


void sm_use_fixed_ec_keypair(uint8_t* _1243, uint8_t* _1244, uint8_t* _1245) {
  return;
}


void sm_test_use_fixed_ec_keypair(void) {
  return;
}


void sm_use_fixed_legacy_pairing_passkey_in_display_role(uint32_t _1246) {
  struct l_struct_struct_OC_sm_info_t* _1247;

  _1247 = sm_global_info;
  *((&_1247->field8)) = _1246;
}


void sm_allow_ltk_reconstruction_without_le_device_db_entry(uint32_t _1248) {
  struct l_struct_struct_OC_sm_info_t* _1249;

  _1249 = sm_global_info;
  *((&_1249->field9)) = (((uint8_t)_1248));
}


uint32_t sm_encryption_key_size(uint16_t _1250) {
  struct l_struct_struct_OC___le_hci_connection* _1251;
  struct l_struct_struct_OC_sm_connection* _1252;
  uint8_t _1253;
  uint8_t _1254;
  uint32_t _1255;
  uint32_t _1256;
  uint32_t _1256__PHI_TEMPORARY;

  _1251 =  /*tail*/ le_hci_connection_for_handle(_1250);
  _1252 = llvm_select_pstruct_struct_OC_sm_connection((((_1251 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1251->field11)));
  if ((((_1251 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1256__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1257;
  } else {
    goto _1258;
  }

_1258:
  _1253 = *((&_1252->field8));
  if ((((_1253 == ((uint8_t)0))&1))) {
    _1256__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1257;
  } else {
    goto _1259;
  }

_1259:
  _1254 = *((&_1252->field10));
  _1255 = ((uint32_t)(uint8_t)_1254);
  _1256__PHI_TEMPORARY = _1255;   /* for PHI node */
  goto _1257;

_1257:
  _1256 = _1256__PHI_TEMPORARY;
  return _1256;
}


uint32_t sm_authenticated(uint16_t _1260) {
  struct l_struct_struct_OC___le_hci_connection* _1261;
  struct l_struct_struct_OC_sm_connection* _1262;
  uint8_t _1263;
  uint8_t _1264;
  uint32_t _1265;
  uint32_t _1266;
  uint32_t _1266__PHI_TEMPORARY;

  _1261 =  /*tail*/ le_hci_connection_for_handle(_1260);
  _1262 = llvm_select_pstruct_struct_OC_sm_connection((((_1261 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1261->field11)));
  if ((((_1261 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1266__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1267;
  } else {
    goto _1268;
  }

_1268:
  _1263 = *((&_1262->field8));
  if ((((_1263 == ((uint8_t)0))&1))) {
    _1266__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1267;
  } else {
    goto _1269;
  }

_1269:
  _1264 = *((&_1262->field9));
  _1265 = ((uint32_t)(uint8_t)_1264);
  _1266__PHI_TEMPORARY = _1265;   /* for PHI node */
  goto _1267;

_1267:
  _1266 = _1266__PHI_TEMPORARY;
  return _1266;
}


uint32_t sm_authorization_state(uint16_t _1270) {
  uint32_t _1271;
  struct l_struct_struct_OC___le_hci_connection* _1272;
  struct l_struct_struct_OC_sm_connection* _1273;
  uint8_t _1274;
  uint8_t _1275;
  uint32_t _1276;
  uint32_t _1277;
  uint32_t _1277__PHI_TEMPORARY;

  _1271 = config_le_sm_support_enable;
  if ((((_1271 == 0u)&1))) {
    _1277__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1278;
  } else {
    goto _1279;
  }

_1279:
  _1272 =  /*tail*/ le_hci_connection_for_handle(_1270);
  _1273 = llvm_select_pstruct_struct_OC_sm_connection((((_1272 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1272->field11)));
  if ((((_1272 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1277__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1278;
  } else {
    goto _1280;
  }

_1280:
  _1274 = *((&_1273->field8));
  if ((((_1274 == ((uint8_t)0))&1))) {
    _1277__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1278;
  } else {
    goto _1281;
  }

_1281:
  _1275 = *((&_1273->field9));
  if ((((_1275 == ((uint8_t)0))&1))) {
    _1277__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1278;
  } else {
    goto _1282;
  }

_1282:
  _1276 = *((&_1273->field12));
  _1277__PHI_TEMPORARY = _1276;   /* for PHI node */
  goto _1278;

_1278:
  _1277 = _1277__PHI_TEMPORARY;
  return _1277;
}


void sm_authorization_decline(uint16_t _1283) {
  struct l_struct_struct_OC___le_hci_connection* _1284;
  struct l_struct_struct_OC_sm_connection* _1285;
  uint16_t _1286;
  uint8_t _1287;

  _1284 =  /*tail*/ le_hci_connection_for_handle(_1283);
  _1285 = llvm_select_pstruct_struct_OC_sm_connection((((_1284 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1284->field11)));
  if ((((_1284 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1288;
  } else {
    goto _1289;
  }

_1289:
  *((&_1285->field12)) = 2;
  _1286 = *((&_1285->field0));
  _1287 = *((&_1285->field4));
   /*tail*/ sm_notify_client_authorization(_1286, _1287, ((&_1285->field5.array[((int32_t)0)])), 0);
  goto _1288;

_1288:
  return;
}


static void sm_notify_client_authorization(uint16_t _1290, uint8_t _1291, uint8_t* _1292, uint8_t _1293) {
  struct l_array_18_uint8_t _1294;    /* Address-exposed local */
  uint8_t* _1295;

  _1295 = (&_1294.array[((int32_t)0)]);
  *_1295 = -36;
  *((&_1294.array[((int32_t)1)])) = 16;
  little_endian_store_16(_1295, 2, _1290);
  *((&_1294.array[((int32_t)4)])) = _1291;
  reverse_bd_addr(_1292, ((&_1294.array[((int32_t)5)])));
  *((&_1294.array[((int32_t)11)])) = _1293;
  sm_dispatch_event(_1295, 18);
}


void sm_authorization_grant(uint16_t _1296) {
  struct l_struct_struct_OC___le_hci_connection* _1297;
  struct l_struct_struct_OC_sm_connection* _1298;
  uint16_t _1299;
  uint8_t _1300;

  _1297 =  /*tail*/ le_hci_connection_for_handle(_1296);
  _1298 = llvm_select_pstruct_struct_OC_sm_connection((((_1297 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1297->field11)));
  if ((((_1297 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1301;
  } else {
    goto _1302;
  }

_1302:
  *((&_1298->field12)) = 3;
  _1299 = *((&_1298->field0));
  _1300 = *((&_1298->field4));
   /*tail*/ sm_notify_client_authorization(_1299, _1300, ((&_1298->field5.array[((int32_t)0)])), 1);
  goto _1301;

_1301:
  return;
}


void sm_bonding_decline(uint16_t _1303) {
  struct l_struct_struct_OC___le_hci_connection* _1304;
  struct l_struct_struct_OC_sm_info_t* _1305;
  uint32_t* _1306;
  uint32_t _1307;
  uint32_t _1308;

  _1304 =  /*tail*/ le_hci_connection_for_handle(_1303);
  if ((((_1304 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1309;
  } else {
    goto _1310;
  }

_1310:
  _1305 = sm_global_info;
  *((&_1305->field0.field2)) = 4;
  _1306 = (&_1304->field11.field6);
  _1307 = *_1306;
  if ((((_1307 == 3u)&1))) {
    goto _1311;
  } else {
    goto _1312;
  }

_1311:
  _1308 = *((&_1305->field0.field7));
  switch (_1308) {
  default:
    goto _1312;
  case 1u:
    goto _1313;
  case 2u:
    goto _1313;
  case 3u:
    goto _1313;
  case 4u:
    goto _1314;
  case 0u:
    goto _1315;
  case 5u:
    goto _1315;
  }

_1313:
  *((&_1305->field0.field1)) = 1;
  *_1306 = 1;
  goto _1312;

_1314:
  *((&_1305->field0.field1)) = 12;
  *_1306 = 1;
  goto _1312;

_1315:
  *((&_1305->field0.field1)) = 8;
  *_1306 = 1;
  goto _1312;

_1312:
   /*tail*/ sm_run();
  goto _1309;

_1309:
  return;
}


void sm_just_works_confirm_addr(uint8_t _1316, uint8_t* _1317) {
  struct l_struct_struct_OC___le_hci_connection* _1318;
  struct l_struct_struct_OC_sm_info_t* _1319;
  uint32_t* _1320;
  uint32_t _1321;

  _1318 =  /*tail*/ le_hci_connection_for_bd_addr_and_type(_1317, (((uint32_t)(uint8_t)_1316)));
  if ((((_1318 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1322;
  } else {
    goto _1323;
  }

_1323:
  _1319 = sm_global_info;
  *((&_1319->field0.field2)) = 2;
  _1320 = (&_1318->field11.field6);
  _1321 = *_1320;
  if ((((_1321 == 3u)&1))) {
    goto _1324;
  } else {
    goto _1325;
  }

_1324:
  *_1320 = 6;
  goto _1325;

_1325:
   /*tail*/ sm_run();
  goto _1322;

_1322:
  return;
}


void sm_just_works_confirm(uint16_t _1326) {
  struct l_struct_struct_OC___le_hci_connection* _1327;
  struct l_struct_struct_OC_sm_info_t* _1328;
  uint32_t* _1329;
  uint32_t _1330;
  uint8_t _1331;

  _1327 =  /*tail*/ le_hci_connection_for_handle(_1326);
  if ((((_1327 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1332;
  } else {
    goto _1333;
  }

_1333:
  _1328 = sm_global_info;
  *((&_1328->field0.field2)) = 2;
  _1329 = (&_1327->field11.field6);
  _1330 = *_1329;
  if ((((_1330 == 3u)&1))) {
    goto _1334;
  } else {
    goto _1335;
  }

_1334:
  _1331 = *((&_1328->field0.field9));
  *_1329 = (llvm_select_u32((((_1331 != ((uint8_t)0))&1)), 63, 6));
  goto _1335;

_1335:
   /*tail*/ sm_run();
  goto _1332;

_1332:
  return;
}


void sm_numeric_comparison_confirm(uint16_t _1336) {
   /*tail*/ sm_just_works_confirm(_1336);
}


void sm_passkey_input(uint16_t _1337, uint32_t _1338) {
  struct l_struct_struct_OC___le_hci_connection* _1339;
  struct l_struct_struct_OC_sm_info_t* _1340;
  uint8_t* _1341;
  uint8_t* _1342;
  struct l_struct_struct_OC_sm_info_t* _1343;
  uint32_t* _1344;
  uint32_t _1345;

  _1339 =  /*tail*/ le_hci_connection_for_handle(_1337);
  if ((((_1339 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1346;
  } else {
    goto _1347;
  }

_1347:
  _1340 = sm_global_info;
  _1341 = (&_1340->field0.field8.array[((int32_t)0)]);
  _1342 = memset(_1341, 0, 16);
   /*tail*/ big_endian_store_32(_1341, 12, _1338);
  _1343 = sm_global_info;
  *((&_1343->field0.field2)) = 3;
  _1344 = (&_1339->field11.field6);
  _1345 = *_1344;
  if ((((_1345 == 3u)&1))) {
    goto _1348;
  } else {
    goto _1349;
  }

_1348:
  *_1344 = 6;
  goto _1349;

_1349:
   /*tail*/ sm_run();
  goto _1346;

_1346:
  return;
}


void sm_keypress_notification(uint16_t _1350, uint8_t _1351) {
  struct l_struct_struct_OC___le_hci_connection* _1352;
  struct l_struct_struct_OC_sm_info_t* _1353;

  _1352 =  /*tail*/ le_hci_connection_for_handle(_1350);
  if (((((((((uint8_t)_1351) > ((uint8_t)((uint8_t)4)))&1)) | (((_1352 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)))&1))) {
    goto _1354;
  } else {
    goto _1355;
  }

_1355:
  _1353 = sm_global_info;
  *((&_1353->field0.field3)) = _1351;
   /*tail*/ sm_run();
  goto _1354;

_1354:
  return;
}


uint32_t sm_le_device_index(uint16_t _1356) {
  uint32_t _1357;
  struct l_struct_struct_OC___le_hci_connection* _1358;
  uint32_t _1359;
  uint32_t _1360;
  uint32_t _1360__PHI_TEMPORARY;

  _1357 = config_le_sm_support_enable;
  if ((((_1357 == 0u)&1))) {
    _1360__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _1361;
  } else {
    goto _1362;
  }

_1362:
  _1358 =  /*tail*/ le_hci_connection_for_handle(_1356);
  if ((((_1358 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1360__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _1361;
  } else {
    goto _1363;
  }

_1363:
  _1359 = *((&_1358->field11.field16));
  _1360__PHI_TEMPORARY = _1359;   /* for PHI node */
  goto _1361;

_1361:
  _1360 = _1360__PHI_TEMPORARY;
  return _1360;
}


void gap_random_address_set_mode(uint32_t _1364) {
  uint32_t _1365;
  uint32_t _1366;
  uint8_t* _1367;
  uint32_t _1368;

  _1365 =  /*tail*/ btstack_run_loop_remove_timer((&gap_random_address_update_timer));
  gap_random_adress_type = _1364;
   /*tail*/ hci_le_set_own_address_type((((uint8_t)(bool)(((_1364 != 0u)&1)))));
  _1366 = gap_random_adress_type;
  if ((((_1366 == 0u)&1))) {
    goto _1369;
  } else {
    goto _1370;
  }

_1370:
  _1367 = memset(((uint8_t*)(&gap_random_address_update_timer)), 0, 20);
  _1368 = gap_random_adress_update_period;
  *((&gap_random_address_update_timer.field2)) = (_1368 & 65535);
  *((&gap_random_address_update_timer.field3)) = gap_random_address_update_handler;
   /*tail*/ btstack_set_timer((&gap_random_address_update_timer), 131);
   /*tail*/ gap_random_address_trigger();
  goto _1369;

_1369:
  return;
}


static void gap_random_address_trigger(void) {
  struct l_struct_struct_OC_sm_info_t* _1371;
  uint32_t* _1372;
  uint32_t _1373;

  _1371 = sm_global_info;
  _1372 = (&_1371->field16);
  _1373 = *_1372;
  if ((((_1373 == 1u)&1))) {
    goto _1374;
  } else {
    goto _1375;
  }

_1374:
  *_1372 = 2;
   /*tail*/ sm_run();
  goto _1375;

_1375:
  return;
}


uint32_t gap_random_address_get_mode(void) {
  uint32_t _1376;

  _1376 = gap_random_adress_type;
  return _1376;
}


void gap_random_address_set_update_period(uint32_t _1377) {
  uint32_t _1378;
  uint32_t _1379;
  uint8_t* _1380;
  uint32_t _1381;

  gap_random_adress_update_period = _1377;
  _1378 = gap_random_adress_type;
  if ((((_1378 == 0u)&1))) {
    goto _1382;
  } else {
    goto _1383;
  }

_1383:
  _1379 =  /*tail*/ btstack_run_loop_remove_timer((&gap_random_address_update_timer));
  _1380 = memset(((uint8_t*)(&gap_random_address_update_timer)), 0, 20);
  _1381 = gap_random_adress_update_period;
  *((&gap_random_address_update_timer.field2)) = (_1381 & 65535);
  *((&gap_random_address_update_timer.field3)) = gap_random_address_update_handler;
   /*tail*/ btstack_set_timer((&gap_random_address_update_timer), 131);
  goto _1382;

_1382:
  return;
}


void gap_random_address_set(uint8_t* _1384) {
  struct l_struct_struct_OC_sm_info_t* _1385;
  uint8_t* _1386;
  uint32_t* _1387;
  uint32_t _1388;

   /*tail*/ gap_random_address_set_mode(1);
  _1385 = sm_global_info;
  _1386 = memcpy(((&_1385->field17.array[((int32_t)0)])), _1384, 6);
  _1387 = (&_1385->field16);
  _1388 = *_1387;
  if ((((_1388 == 0u)&1))) {
    goto _1389;
  } else {
    goto _1390;
  }

_1390:
  *_1387 = 6;
   /*tail*/ sm_run();
  goto _1389;

_1389:
  return;
}


void gap_advertisements_set_params(uint16_t _1391, uint16_t _1392, uint8_t _1393, uint8_t _1394, uint8_t* _1395, uint8_t _1396, uint8_t _1397) {
   /*tail*/ hci_le_advertisements_set_params(_1391, _1392, _1393, _1394, _1395, _1396, _1397);
}


void reset_PK_cb_register(l_fptr_6* _1398) {
  struct l_struct_struct_OC_sm_info_t* _1399;

  _1399 = sm_global_info;
  if ((((_1399 == ((struct l_struct_struct_OC_sm_info_t*)/*NULL*/0))&1))) {
    goto _1400;
  } else {
    goto _1401;
  }

_1401:
  *(((l_fptr_6**)((&_1399->field33)))) = _1398;
  goto _1400;

_1400:
  return;
}


void reset_PK_cb_register_ext(l_fptr_4* _1402) {
  struct l_struct_struct_OC_sm_info_t* _1403;

  _1403 = sm_global_info;
  if ((((_1403 == ((struct l_struct_struct_OC_sm_info_t*)/*NULL*/0))&1))) {
    goto _1404;
  } else {
    goto _1405;
  }

_1405:
  *((&_1403->field33)) = _1402;
  goto _1404;

_1404:
  return;
}


void sm_cmd_request_resume(uint32_t* _1406) {
  uint16_t _1407;    /* Address-exposed local */
  struct l_array_16_uint8_t _1408;    /* Address-exposed local */
  uint32_t _1409;
  uint32_t _1410;
  uint32_t _1411;
  struct l_struct_struct_OC___le_hci_connection* _1412;
  struct l_struct_struct_OC_sm_connection* _1413;
  uint8_t _1414;
  uint32_t* _1415;
  uint32_t _1416;
  uint8_t _1417;
  uint8_t* _1418;
  uint8_t* _1419;
  uint32_t _1420;
  uint32_t _1421;
  uint32_t _1422;
  uint32_t _1422__PHI_TEMPORARY;
  uint8_t _1423;
  uint32_t _1424;
  bool _1425;
  bool _1425__PHI_TEMPORARY;
  uint16_t _1426;

  _1409 = config_le_sm_support_enable;
  if ((((_1409 == 0u)&1))) {
    goto _1427;
  } else {
    goto _1428;
  }

_1428:
  _1410 = *_1406;
  if ((((_1410 == 1u)&1))) {
    goto _1429;
  } else {
    goto _1427;
  }

_1429:
  _1411 = *((&_1406[((int32_t)1)]));
  _1412 =  /*tail*/ le_hci_connection_for_handle((((uint16_t)_1411)));
  _1413 = llvm_select_pstruct_struct_OC_sm_connection((((_1412 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1412->field11)));
  if ((((_1412 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1427;
  } else {
    goto _1430;
  }

_1430:
  _1414 = *((&_1413->field1));
  _1415 = (&_1413->field6);
  _1416 = *_1415;
  if ((((_1414 == ((uint8_t)0))&1))) {
    goto _1431;
  } else {
    goto _1432;
  }

_1432:
  switch (_1416) {
  default:
    goto _1433;
  case 0u:
    goto _1434;
  case 35u:
    goto _1434;
  }

_1434:
  *_1415 = 36;
   /*tail*/ sm_run();
  goto _1433;

_1431:
  switch (_1416) {
  default:
    goto _1433;
  case 52u:
    goto _1435;
  case 0u:
    goto _1436;
  }

_1435:
  _1417 =  /*tail*/ sm_master_pair_get_list(_1413);
  if ((((_1417 == ((uint8_t)0))&1))) {
    goto _1437;
  } else {
    goto _1438;
  }

_1438:
  *_1415 = 53;
  goto _1433;

_1437:
  _1418 = ((uint8_t*)(&_1407));
  _1419 = (&_1408.array[((int32_t)0)]);
  _1420 = *((&_1413->field7));
  switch (_1420) {
  default:
    goto _1439;
  case 4u:
    goto _1440;
  case 3u:
    goto _1441;
  }

_1440:
  *_1415 = 56;
  goto _1442;

_1441:
  _1421 = *((&_1413->field16));
  le_device_db_encryption_get(_1421, (&_1407), ((uint8_t*)/*NULL*/0), _1419, ((uint32_t*)/*NULL*/0), ((uint32_t*)/*NULL*/0), ((uint32_t*)/*NULL*/0));
  _1422__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1443;

  do {     /* Syntactic loop '' to make GCC happy */
_1443:
  _1422 = _1422__PHI_TEMPORARY;
  _1423 = *((&_1408.array[((int32_t)_1422)]));
  _1424 = llvm_add_u32(_1422, 1);
  if ((((_1423 == ((uint8_t)0))&1))) {
    goto _1444;
  } else {
    _1425__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1445;
  }

_1444:
  if ((((((int32_t)_1424) < ((int32_t)16u))&1))) {
    _1422__PHI_TEMPORARY = _1424;   /* for PHI node */
    goto _1443;
  } else {
    _1425__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1445;
  }

  } while (1); /* end of syntactic loop '' */
_1445:
  _1425 = ((_1425__PHI_TEMPORARY)&1);
  _1426 = _1407;
  *_1415 = (llvm_select_u32((((_1425 & (((_1426 == ((uint16_t)0))&1)))&1)), 56, 53));
  goto _1442;

_1439:
  *((&_1413->field3)) = 1;
  goto _1442;

_1442:
  goto _1433;

_1436:
  *((&_1413->field3)) = 1;
  goto _1433;

_1433:
  sm_run();
  goto _1427;

_1427:
  return;
}


uint8_t sm_api_request_pairing(uint16_t _1446) {
  uint32_t _1447;
  struct l_struct_struct_OC___le_hci_connection* _1448;
  uint32_t _1449;
  uint8_t _1450;
  uint8_t _1451;
  uint8_t _1451__PHI_TEMPORARY;

  _1447 = config_le_sm_support_enable;
  if ((((_1447 == 0u)&1))) {
    _1451__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1452;
  } else {
    goto _1453;
  }

_1453:
  _1448 =  /*tail*/ le_hci_connection_for_handle(_1446);
  if ((((_1448 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    _1451__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1452;
  } else {
    goto _1454;
  }

_1454:
  _1449 =  /*tail*/ ble_user_cmd_prepare(29, 2, 1, (((uint32_t)(uint16_t)_1446)));
  _1450 = ((uint8_t)(bool)(((_1449 == 0u)&1)));
  _1451__PHI_TEMPORARY = _1450;   /* for PHI node */
  goto _1452;

_1452:
  _1451 = _1451__PHI_TEMPORARY;
  return _1451;
}


static void sm_d1_d_prime(uint16_t _1455, uint16_t _1456, uint8_t* _1457) {
  uint8_t* _1458;

  _1458 = memset(_1457, 0, 16);
   /*tail*/ big_endian_store_16(_1457, 12, _1456);
   /*tail*/ big_endian_store_16(_1457, 14, _1455);
}


static void sm_aes128_start(uint8_t* _1459, uint8_t* _1460, uint8_t* _1461) {
  struct l_array_16_uint8_t _1462;    /* Address-exposed local */
  struct l_array_16_uint8_t _1463;    /* Address-exposed local */
  struct l_struct_struct_OC_sm_info_t* _1464;
  uint8_t* _1465;
  uint8_t* _1466;
  uint32_t _1467;

  _1464 = sm_global_info;
  *((&_1464->field25)) = 1;
  *((&_1464->field26)) = _1461;
  _1465 = (&_1462.array[((int32_t)0)]);
  _1466 = (&_1463.array[((int32_t)0)]);
  reverse_128(_1459, _1465);
  reverse_128(_1460, _1466);
  _1467 = ll_hci_encryption(_1465, _1466);
}


static void sm_address_resolution_handle_event(uint32_t _1468) {
  struct l_array_16_uint8_t _1469;    /* Address-exposed local */
  struct l_struct_struct_OC_sm_info_t* _1470;
  uint32_t* _1471;
  uint32_t _1472;
  uint32_t* _1473;
  uint32_t _1474;
  uint8_t** _1475;
  struct l_struct_struct_OC_sm_connection* _1476;
  uint8_t* _1477;
  uint16_t _1478;
  uint8_t _1479;
  uint32_t* _1480;
  uint32_t _1481;
  uint8_t* _1482;
  uint8_t _1483;
  uint8_t* _1484;
  uint8_t _1485;
  uint32_t _1486;
  uint32_t _1486__PHI_TEMPORARY;
  uint8_t _1487;
  uint32_t _1488;
  uint32_t _1489;
  uint32_t _1489__PHI_TEMPORARY;
  uint8_t _1490;
  uint32_t* _1491;
  uint32_t _1492;
  uint8_t* _1493;
  uint8_t _1494;
  uint8_t* _1495;
  uint8_t _1496;
  uint16_t _1497;
  uint16_t _1497__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _1498;
  struct l_struct_struct_OC_sm_info_t* _1499;
  struct l_struct_struct_OC_sm_info_t* _1500;
  struct l_struct_struct_OC_sm_info_t* _1500__PHI_TEMPORARY;
  uint16_t _1501;
  uint16_t _1501__PHI_TEMPORARY;
  uint8_t _1502;
  struct l_struct_struct_OC_sm_info_t* _1503;
  struct l_struct_struct_OC_sm_info_t* _1503__PHI_TEMPORARY;
  uint16_t _1504;
  uint16_t _1504__PHI_TEMPORARY;
  uint8_t _1505;

  _1470 = sm_global_info;
  _1471 = (&_1470->field18);
  _1472 = *_1471;
  _1473 = (&_1470->field23);
  _1474 = *_1473;
  _1475 = (&_1470->field22);
  _1476 = *(((struct l_struct_struct_OC_sm_connection**)_1475));
  *_1473 = 0;
  *_1475 = ((uint8_t*)/*NULL*/0);
  *_1471 = -1;
  _1477 = (&_1469.array[((int32_t)0)]);
  if ((((_1474 == 2u)&1))) {
    goto _1506;
  } else {
    _1497__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1507;
  }

_1506:
  _1478 = *((&_1476->field0));
  switch (_1468) {
  default:
    _1497__PHI_TEMPORARY = _1478;   /* for PHI node */
    goto _1507;
  case 0u:
    goto _1508;
  case 1u:
    goto _1509;
  }

_1508:
  *((&_1476->field7)) = 3;
  *((&_1476->field16)) = _1472;
  _1479 = *((&_1476->field1));
  if ((((_1479 == ((uint8_t)0))&1))) {
    goto _1510;
  } else {
    goto _1511;
  }

_1511:
  _1480 = (&_1476->field6);
  _1481 = *_1480;
  if ((((_1481 == 38u)&1))) {
    goto _1512;
  } else {
    _1500__PHI_TEMPORARY = _1470;   /* for PHI node */
    _1501__PHI_TEMPORARY = _1478;   /* for PHI node */
    goto _1513;
  }

_1512:
  *_1480 = 37;
  _1500__PHI_TEMPORARY = _1470;   /* for PHI node */
  _1501__PHI_TEMPORARY = _1478;   /* for PHI node */
  goto _1513;

_1510:
  _1482 = (&_1476->field3);
  _1483 = *_1482;
  _1484 = (&_1476->field2);
  if ((((_1483 == ((uint8_t)0))&1))) {
    goto _1514;
  } else {
    goto _1515;
  }

_1514:
  _1485 = *_1484;
  if ((((_1485 == ((uint8_t)0))&1))) {
    _1500__PHI_TEMPORARY = _1470;   /* for PHI node */
    _1501__PHI_TEMPORARY = _1478;   /* for PHI node */
    goto _1513;
  } else {
    goto _1515;
  }

_1515:
  *_1484 = 0;
  *_1482 = 0;
  le_device_db_encryption_get(_1472, ((uint16_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), _1477, ((uint32_t*)/*NULL*/0), ((uint32_t*)/*NULL*/0), ((uint32_t*)/*NULL*/0));
  _1486__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1516;

  do {     /* Syntactic loop '' to make GCC happy */
_1516:
  _1486 = _1486__PHI_TEMPORARY;
  _1487 = *((&_1469.array[((int32_t)_1486)]));
  _1488 = llvm_add_u32(_1486, 1);
  if ((((_1487 == ((uint8_t)0))&1))) {
    goto _1517;
  } else {
    _1489__PHI_TEMPORARY = 53;   /* for PHI node */
    goto _1518;
  }

_1517:
  if ((((((int32_t)_1488) < ((int32_t)16u))&1))) {
    _1486__PHI_TEMPORARY = _1488;   /* for PHI node */
    goto _1516;
  } else {
    _1489__PHI_TEMPORARY = 56;   /* for PHI node */
    goto _1518;
  }

  } while (1); /* end of syntactic loop '' */
_1518:
  _1489 = _1489__PHI_TEMPORARY;
  *((&_1476->field6)) = _1489;
  _1497__PHI_TEMPORARY = _1478;   /* for PHI node */
  goto _1507;

_1509:
  *((&_1476->field7)) = 4;
  _1490 = *((&_1476->field1));
  if ((((_1490 == ((uint8_t)0))&1))) {
    goto _1519;
  } else {
    goto _1520;
  }

_1520:
  _1491 = (&_1476->field6);
  _1492 = *_1491;
  if ((((_1492 == 38u)&1))) {
    goto _1521;
  } else {
    _1503__PHI_TEMPORARY = _1470;   /* for PHI node */
    _1504__PHI_TEMPORARY = _1478;   /* for PHI node */
    goto _1522;
  }

_1521:
  *_1491 = 39;
  _1503__PHI_TEMPORARY = _1470;   /* for PHI node */
  _1504__PHI_TEMPORARY = _1478;   /* for PHI node */
  goto _1522;

_1519:
  _1493 = (&_1476->field3);
  _1494 = *_1493;
  _1495 = (&_1476->field2);
  if ((((_1494 == ((uint8_t)0))&1))) {
    goto _1523;
  } else {
    goto _1524;
  }

_1523:
  _1496 = *_1495;
  if ((((_1496 == ((uint8_t)0))&1))) {
    _1503__PHI_TEMPORARY = _1470;   /* for PHI node */
    _1504__PHI_TEMPORARY = _1478;   /* for PHI node */
    goto _1522;
  } else {
    goto _1524;
  }

_1524:
  *_1495 = 0;
  *_1493 = 0;
  *((&_1476->field6)) = 56;
  _1503__PHI_TEMPORARY = _1470;   /* for PHI node */
  _1504__PHI_TEMPORARY = _1478;   /* for PHI node */
  goto _1522;

_1507:
  _1497 = _1497__PHI_TEMPORARY;
  switch (_1468) {
  default:
    goto _1525;
  case 0u:
    goto _1526;
  case 1u:
    goto _1527;
  }

_1526:
  _1498 = sm_global_info;
  _1500__PHI_TEMPORARY = _1498;   /* for PHI node */
  _1501__PHI_TEMPORARY = _1497;   /* for PHI node */
  goto _1513;

_1527:
  _1499 = sm_global_info;
  _1503__PHI_TEMPORARY = _1499;   /* for PHI node */
  _1504__PHI_TEMPORARY = _1497;   /* for PHI node */
  goto _1522;

_1513:
  _1500 = _1500__PHI_TEMPORARY;
  _1501 = _1501__PHI_TEMPORARY;
  _1502 = *((&_1500->field20));
  sm_notify_client_index(-38, _1501, _1502, ((&_1500->field21.array[((int32_t)0)])), (((uint16_t)_1472)));
  goto _1525;

_1522:
  _1503 = _1503__PHI_TEMPORARY;
  _1504 = _1504__PHI_TEMPORARY;
  _1505 = *((&_1503->field20));
  sm_notify_client_base(-39, _1504, _1505, ((&_1503->field21.array[((int32_t)0)])));
  goto _1525;

_1525:
  return;
}


static void sm_notify_client_process(uint16_t _1528, uint8_t _1529, uint8_t* _1530, uint32_t _1531) {
  struct l_array_4_uint32_t _1532;    /* Address-exposed local */
  uint8_t* _1533;

  _1533 = ((uint8_t*)(&_1532));
  *_1533 = -33;
  *((&_1533[((int32_t)1)])) = 14;
  little_endian_store_16(_1533, 2, _1528);
  *(((uint8_t*)((&_1532.array[((int32_t)1)])))) = _1529;
  reverse_bd_addr(_1530, ((&_1533[((int32_t)5)])));
  little_endian_store_32(_1533, 11, _1531);
  sm_dispatch_event(_1533, 16);
}


static void sm_init_setup(struct l_struct_struct_OC_sm_connection* _1534) {
  uint8_t* _1535;
  uint8_t _1536;
  struct l_struct_struct_OC_sm_info_t* _1537;
  uint8_t* _1538;
  uint8_t* _1539;
  l_fptr_2* _1540;
  uint8_t _1541;
  uint32_t _1542;
  uint8_t _1543;
  struct l_struct_struct_OC_sm_info_t* _1544;
  struct l_struct_struct_OC_sm_info_t* _1545;
  struct l_struct_struct_OC_sm_info_t* _1545__PHI_TEMPORARY;
  uint8_t _1546;
  uint8_t _1546__PHI_TEMPORARY;
  uint8_t _1547;
  uint16_t _1548;
  struct l_array_7_uint8_t* _1549;
  uint8_t _1550;
  struct l_struct_struct_OC_sm_info_t* _1551;
  uint8_t* _1552;
  struct l_array_7_uint8_t* _1553;
  uint8_t _1554;
  struct l_struct_struct_OC_sm_info_t* _1555;
  uint8_t* _1556;
  uint8_t _1557;
  uint8_t _1558;
  struct l_struct_struct_OC_sm_info_t* _1559;
  struct l_struct_struct_OC_sm_info_t* _1560;
  struct l_struct_struct_OC_sm_info_t* _1561;
  struct l_struct_struct_OC_sm_info_t* _1561__PHI_TEMPORARY;
  struct l_array_7_uint8_t* _1562;
  struct l_array_7_uint8_t* _1562__PHI_TEMPORARY;
  uint8_t _1563;
  uint8_t* _1564;
  uint8_t _1565;
  struct l_struct_struct_OC_sm_info_t* _1566;
  uint8_t _1567;

  _1535 = (&_1534->field4);
  _1536 = *_1535;
  _1537 = sm_global_info;
  *((&_1537->field0.field37)) = _1536;
  _1538 = (&_1534->field5.array[((int32_t)0)]);
  _1539 = memcpy(((&_1537->field0.field38.array[((int32_t)0)])), _1538, 6);
  _1540 = *((&_1537->field32));
  if ((((_1540 == ((l_fptr_2*)/*NULL*/0))&1))) {
    _1545__PHI_TEMPORARY = _1537;   /* for PHI node */
    _1546__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1568;
  } else {
    goto _1569;
  }

_1569:
  _1541 = *_1535;
  _1542 =  /*tail*/ _1540(_1541, _1538, ((&_1537->field0.field8.array[((int32_t)0)])));
  _1543 = ((uint8_t)_1542);
  _1544 = sm_global_info;
  _1545__PHI_TEMPORARY = _1544;   /* for PHI node */
  _1546__PHI_TEMPORARY = _1543;   /* for PHI node */
  goto _1568;

_1568:
  _1545 = _1545__PHI_TEMPORARY;
  _1546 = _1546__PHI_TEMPORARY;
  _1547 = *((&_1534->field1));
  _1548 = *((&_1534->field0));
  if ((((_1547 == ((uint8_t)0))&1))) {
    goto _1570;
  } else {
    goto _1571;
  }

_1571:
  _1549 = (&_1545->field0.field12);
   /*tail*/ gap_le_get_own_address(_1548, ((&_1545->field0.field18)), ((&_1545->field0.field20.array[((int32_t)0)])));
  _1550 = *_1535;
  _1551 = sm_global_info;
  *((&_1551->field0.field17)) = _1550;
  _1552 = memcpy(((&_1551->field0.field19.array[((int32_t)0)])), _1538, 6);
  _1561__PHI_TEMPORARY = _1551;   /* for PHI node */
  _1562__PHI_TEMPORARY = _1549;   /* for PHI node */
  goto _1572;

_1570:
  _1553 = (&_1545->field0.field11);
   /*tail*/ gap_le_get_own_address(_1548, ((&_1545->field0.field17)), ((&_1545->field0.field19.array[((int32_t)0)])));
  _1554 = *_1535;
  _1555 = sm_global_info;
  *((&_1555->field0.field18)) = _1554;
  _1556 = memcpy(((&_1555->field0.field20.array[((int32_t)0)])), _1538, 6);
  _1557 = *((&_1555->field5));
  _1558 = llvm_or_u8((llvm_and_u8(_1557, 1)), 6);
   /*tail*/ sm_pairing_packet_set_initiator_key_distribution(((&_1555->field0.field11.array[((int32_t)0)])), _1558);
  _1559 = sm_global_info;
   /*tail*/ sm_pairing_packet_set_responder_key_distribution(((&_1559->field0.field11.array[((int32_t)0)])), _1558);
  _1560 = sm_global_info;
  _1561__PHI_TEMPORARY = _1560;   /* for PHI node */
  _1562__PHI_TEMPORARY = _1553;   /* for PHI node */
  goto _1572;

_1572:
  _1561 = _1561__PHI_TEMPORARY;
  _1562 = _1562__PHI_TEMPORARY;
  _1563 = *((&_1561->field5));
  _1564 = (&(*_1562).array[((int32_t)0)]);
  _1565 = *((&_1561->field6));
   /*tail*/ sm_pairing_packet_set_io_capability(_1564, _1565);
   /*tail*/ sm_pairing_packet_set_oob_data_flag(_1564, _1546);
   /*tail*/ sm_pairing_packet_set_auth_req(_1564, _1563);
  _1566 = sm_global_info;
  _1567 = *((&_1566->field3));
   /*tail*/ sm_pairing_packet_set_max_encryption_key_size(_1564, _1567);
}


static uint32_t sm_stk_generation_init(struct l_struct_struct_OC_sm_connection* _1573) {
  uint8_t _1574;
  struct l_struct_struct_OC_sm_info_t* _1575;
  struct l_array_7_uint8_t* _1576;
  uint8_t _1577;
  struct l_array_7_uint8_t* _1578;
  uint8_t _1579;
  struct l_array_7_uint8_t* _1580;
  struct l_array_7_uint8_t* _1580__PHI_TEMPORARY;
  uint8_t _1581;
  uint8_t _1581__PHI_TEMPORARY;
  uint8_t _1582;
  uint32_t _1583;
  uint8_t _1584;
  uint8_t _1585;
  uint32_t _1586;
  uint32_t _1587;
  uint32_t* _1588;
  uint8_t* _1589;
  uint8_t _1590;
  uint8_t _1591;
  uint8_t _1592;
  uint8_t _1593;
  uint8_t* _1594;
  uint8_t _1595;
  uint8_t _1596;
  uint32_t _1597;
  uint8_t _1598;
  uint8_t _1599;
  uint8_t _1600;
  uint8_t _1601;
  uint8_t _1602;
  uint8_t _1603;
  uint8_t _1604;
  uint8_t _1605;
  uint8_t _1605__PHI_TEMPORARY;
  uint32_t _1606;
  uint32_t _1607;
  uint8_t _1608;
  uint32_t _1609;
  uint32_t _1609__PHI_TEMPORARY;

  _1574 = *((&_1573->field1));
  _1575 = sm_global_info;
  if ((((_1574 == ((uint8_t)0))&1))) {
    goto _1610;
  } else {
    goto _1611;
  }

_1611:
  _1576 = (&_1575->field0.field11);
  _1577 =  /*tail*/ sm_pairing_packet_get_responder_key_distribution(((&(*_1576).array[((int32_t)0)])));
  _1580__PHI_TEMPORARY = _1576;   /* for PHI node */
  _1581__PHI_TEMPORARY = _1577;   /* for PHI node */
  goto _1612;

_1610:
  _1578 = (&_1575->field0.field12);
  _1579 =  /*tail*/ sm_pairing_packet_get_initiator_key_distribution(((&(*_1578).array[((int32_t)0)])));
  _1580__PHI_TEMPORARY = _1578;   /* for PHI node */
  _1581__PHI_TEMPORARY = _1579;   /* for PHI node */
  goto _1612;

_1612:
  _1580 = _1580__PHI_TEMPORARY;
  _1581 = _1581__PHI_TEMPORARY;
  _1582 =  /*tail*/ sm_pairing_packet_get_max_encryption_key_size(((&(*_1580).array[((int32_t)0)])));
  _1583 = ((uint32_t)(uint8_t)_1582);
  _1584 = *((&_1575->field4));
  if ((((((uint8_t)_1584) > ((uint8_t)_1582))&1))) {
    goto _1613;
  } else {
    goto _1614;
  }

_1613:
  *((&_1573->field10)) = 0;
  _1609__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _1615;

_1614:
  _1585 = *((&_1575->field3));
  _1586 = ((uint32_t)(uint8_t)_1585);
  _1587 = llvm_select_u32((((((uint32_t)_1586) > ((uint32_t)_1583))&1)), _1583, _1586);
  *((&_1573->field10)) = (((uint8_t)_1587));
  if ((((_1587 == 0u)&1))) {
    _1609__PHI_TEMPORARY = 6;   /* for PHI node */
    goto _1615;
  } else {
    goto _1616;
  }

_1616:
  _1588 = (&_1575->field0.field7);
  *_1588 = 0;
  *((&_1575->field0.field9)) = 0;
  _1589 = (&_1575->field0.field11.array[((int32_t)0)]);
  _1590 =  /*tail*/ sm_pairing_packet_get_oob_data_flag(_1589);
  if ((((_1590 == ((uint8_t)0))&1))) {
    goto _1617;
  } else {
    goto _1618;
  }

_1618:
  _1591 =  /*tail*/ sm_pairing_packet_get_oob_data_flag(((&_1575->field0.field12.array[((int32_t)0)])));
  if ((((_1591 == ((uint8_t)0))&1))) {
    goto _1617;
  } else {
    goto _1619;
  }

_1619:
  *_1588 = 5;
  goto _1620;

_1617:
  _1592 =  /*tail*/ sm_pairing_packet_get_auth_req(_1589);
  if (((((llvm_and_u8(_1592, 4)) == ((uint8_t)0))&1))) {
    goto _1621;
  } else {
    goto _1622;
  }

_1621:
  _1593 =  /*tail*/ sm_pairing_packet_get_auth_req(((&_1575->field0.field12.array[((int32_t)0)])));
  if (((((llvm_and_u8(_1593, 4)) == ((uint8_t)0))&1))) {
    goto _1623;
  } else {
    goto _1622;
  }

_1622:
  _1594 = memset(((&_1575->field0.field8.array[((int32_t)0)])), 0, 16);
  _1595 =  /*tail*/ sm_pairing_packet_get_io_capability(_1589);
  if ((((((uint8_t)_1595) > ((uint8_t)((uint8_t)4)))&1))) {
    goto _1623;
  } else {
    goto _1624;
  }

_1624:
  _1596 =  /*tail*/ sm_pairing_packet_get_io_capability(((&_1575->field0.field12.array[((int32_t)0)])));
  if ((((((uint8_t)_1596) > ((uint8_t)((uint8_t)4)))&1))) {
    goto _1623;
  } else {
    goto _1625;
  }

_1625:
  _1597 = *((&stk_generation_method.array[((int32_t)(((uint32_t)(uint8_t)_1596)))].array[((int32_t)(((uint32_t)(uint8_t)_1595)))]));
  *_1588 = _1597;
  switch (_1597) {
  default:
    _1609__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _1615;
  case 0u:
    goto _1623;
  case 1u:
    goto _1626;
  case 2u:
    goto _1626;
  case 3u:
    goto _1626;
  case 5u:
    goto _1620;
  case 4u:
    goto _1627;
  }

_1623:
  _1598 = *((&_1575->field2));
  _1605__PHI_TEMPORARY = _1598;   /* for PHI node */
  goto _1628;

_1626:
  _1599 = *((&_1575->field2));
  _1600 = llvm_lshr_u8(_1599, 2);
  _1605__PHI_TEMPORARY = _1600;   /* for PHI node */
  goto _1628;

_1620:
  _1601 = *((&_1575->field2));
  _1602 = llvm_lshr_u8(_1601, 1);
  _1605__PHI_TEMPORARY = _1602;   /* for PHI node */
  goto _1628;

_1627:
  _1603 = *((&_1575->field2));
  _1604 = llvm_lshr_u8(_1603, 3);
  _1605__PHI_TEMPORARY = _1604;   /* for PHI node */
  goto _1628;

_1628:
  _1605 = _1605__PHI_TEMPORARY;
  if (((((llvm_and_u8(_1605, 1)) == ((uint8_t)0))&1))) {
    _1609__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _1615;
  } else {
    goto _1629;
  }

_1629:
  *((&_1575->field0.field6)) = 0;
  _1606 = ((uint32_t)(uint8_t)_1581);
  _1607 = llvm_select_u32(((((_1606 & 1) == 0u)&1)), 0, 3);
  _1608 = ((uint8_t)((llvm_select_u32(((((_1606 & 2) == 0u)&1)), _1607, (_1607 | 12))) | ((_1606 << 2) & 16)));
  *((&_1575->field0.field4)) = _1608;
  *((&_1575->field0.field5)) = _1608;
  *((&_1573->field9)) = 1;
  _1609__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1615;

_1615:
  _1609 = _1609__PHI_TEMPORARY;
  return _1609;
}


static void sm_timeout_start(struct l_struct_struct_OC_sm_connection* _1630) {
  struct l_struct_struct_OC_sm_info_t* _1631;
  uint32_t _1632;
  uint8_t* _1633;

  _1631 = sm_global_info;
  _1632 =  /*tail*/ btstack_run_loop_remove_timer(((&_1631->field0.field0)));
  _1633 = *((uint8_t**)(&sm_global_info));
  *(((uint64_t*)_1633)) = 0;
  *(((uint32_t*)((&_1633[((int32_t)8)])))) = 30;
  *(((l_fptr_7**)((&_1633[((int32_t)12)])))) = sm_timeout_handler;
  *(((struct l_struct_struct_OC_sm_connection**)((&_1633[((int32_t)16)])))) = _1630;
   /*tail*/ btstack_set_timer((((struct l_struct_struct_OC_btstack_timer_source*)_1633)), 131);
}


static void sm_done_for_handle(uint16_t _1634) {
  struct l_struct_struct_OC_sm_info_t* _1635;
  uint16_t _1636;
  uint32_t _1637;
  struct l_struct_struct_OC_sm_info_t* _1638;

  _1635 = sm_global_info;
  _1636 = *((&_1635->field31));
  if ((((_1636 == _1634)&1))) {
    goto _1639;
  } else {
    goto _1640;
  }

_1639:
  _1637 =  /*tail*/ btstack_run_loop_remove_timer(((&_1635->field0.field0)));
  _1638 = sm_global_info;
  *((&_1638->field31)) = -1;
  goto _1640;

_1640:
  return;
}


static void sm_set_timeout_disconnect(uint32_t _1641, uint8_t _1642) {
  struct l_struct_struct_OC___le_hci_connection* _1643;
  struct l_struct_struct_OC_sm_connection* _1644;
  uint32_t* _1645;
  uint32_t _1646;
  uint16_t _1647;

  _1643 =  /*tail*/ le_hci_connection_for_handle((((uint16_t)_1641)));
  _1644 = llvm_select_pstruct_struct_OC_sm_connection((((_1643 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1643->field11)));
  if ((((_1643 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1648;
  } else {
    goto _1649;
  }

_1649:
  _1645 = (&_1644->field17);
  _1646 = *_1645;
  if ((((_1646 == 0u)&1))) {
    goto _1650;
  } else {
    goto _1651;
  }

_1651:
   /*tail*/ sys_timer_del((((uint16_t)_1646)));
  *_1645 = 0;
  goto _1650;

_1650:
  *((&_1644->field15)) = _1642;
  _1647 =  /*tail*/ sys_timeout_add((((uint8_t*)(uintptr_t)_1641)), ((l_fptr_5*)sm_disconnect), 300);
  *_1645 = (((uint32_t)(uint16_t)_1647));
  goto _1648;

_1648:
  return;
}


static void sm_pairing_packet_set_code(uint8_t* _1652, uint8_t _1653) {
  *_1652 = _1653;
}


static void sm_pairing_packet_set_initiator_key_distribution(uint8_t* _1654, uint8_t _1655) {
  *((&_1654[((int32_t)5)])) = _1655;
}


static uint8_t sm_pairing_packet_get_initiator_key_distribution(uint8_t* _1656) {
  uint8_t _1657;

  _1657 = *((&_1656[((int32_t)5)]));
  return _1657;
}


static void sm_pairing_packet_set_responder_key_distribution(uint8_t* _1658, uint8_t _1659) {
  *((&_1658[((int32_t)6)])) = _1659;
}


static uint8_t sm_pairing_packet_get_responder_key_distribution(uint8_t* _1660) {
  uint8_t _1661;

  _1661 = *((&_1660[((int32_t)6)]));
  return _1661;
}


static void sm_trigger_user_response(struct l_struct_struct_OC_sm_connection* _1662) {
  struct l_struct_struct_OC_sm_info_t* _1663;
  uint8_t* _1664;
  uint32_t _1665;
  uint8_t _1666;
  uint16_t _1667;
  uint8_t _1668;
  uint32_t _1669;
  uint8_t _1670;
  uint16_t _1671;
  uint8_t _1672;
  uint32_t _1673;
  uint16_t _1674;
  uint8_t _1675;
  uint16_t _1676;
  uint8_t _1677;
  uint32_t _1678;
  uint16_t _1679;
  uint8_t _1680;

  _1663 = sm_global_info;
  _1664 = (&_1663->field0.field2);
  *_1664 = 0;
  _1665 = *((&_1663->field0.field7));
  switch (_1665) {
  default:
    goto _1681;
  case 1u:
    goto _1682;
  case 2u:
    goto _1683;
  case 3u:
    goto _1684;
  case 4u:
    goto _1685;
  case 0u:
    goto _1686;
  }

_1682:
  _1666 = *((&_1662->field1));
  _1667 = *((&_1662->field0));
  _1668 = *((&_1662->field4));
  if ((((_1666 == ((uint8_t)0))&1))) {
    goto _1687;
  } else {
    goto _1688;
  }

_1688:
  *_1664 = 1;
   /*tail*/ sm_notify_client_base(-44, _1667, _1668, ((&_1662->field5.array[((int32_t)0)])));
  goto _1681;

_1687:
  _1669 =  /*tail*/ big_endian_read_32(((&_1663->field0.field8.array[((int32_t)0)])), 12);
   /*tail*/ sm_notify_client_passkey(-46, _1667, _1668, ((&_1662->field5.array[((int32_t)0)])), _1669);
  goto _1681;

_1683:
  _1670 = *((&_1662->field1));
  _1671 = *((&_1662->field0));
  _1672 = *((&_1662->field4));
  if ((((_1670 == ((uint8_t)0))&1))) {
    goto _1689;
  } else {
    goto _1690;
  }

_1690:
  _1673 =  /*tail*/ big_endian_read_32(((&_1663->field0.field8.array[((int32_t)0)])), 12);
   /*tail*/ sm_notify_client_passkey(-46, _1671, _1672, ((&_1662->field5.array[((int32_t)0)])), _1673);
  goto _1681;

_1689:
  *_1664 = 1;
   /*tail*/ sm_notify_client_base(-44, _1671, _1672, ((&_1662->field5.array[((int32_t)0)])));
  goto _1681;

_1684:
  *_1664 = 1;
  _1674 = *((&_1662->field0));
  _1675 = *((&_1662->field4));
   /*tail*/ sm_notify_client_base(-44, _1674, _1675, ((&_1662->field5.array[((int32_t)0)])));
  goto _1681;

_1685:
  *_1664 = 1;
  _1676 = *((&_1662->field0));
  _1677 = *((&_1662->field4));
  _1678 =  /*tail*/ big_endian_read_32(((&_1663->field0.field8.array[((int32_t)0)])), 12);
   /*tail*/ sm_notify_client_passkey(-42, _1676, _1677, ((&_1662->field5.array[((int32_t)0)])), _1678);
  goto _1681;

_1686:
  *_1664 = 1;
  _1679 = *((&_1662->field0));
  _1680 = *((&_1662->field4));
   /*tail*/ sm_notify_client_base(-48, _1679, _1680, ((&_1662->field5.array[((int32_t)0)])));
  goto _1681;

_1681:
  return;
}


static void sm_c1_t1(uint8_t* _1691, uint8_t* _1692, uint8_t* _1693, uint8_t _1694, uint8_t _1695, uint8_t* _1696) {
  struct l_array_16_uint8_t _1697;    /* Address-exposed local */
  uint32_t _1698;
  uint32_t _1698__PHI_TEMPORARY;
  uint8_t _1699;
  uint8_t _1700;
  uint32_t _1701;

  reverse_56(_1693, ((&_1697.array[((int32_t)0)])));
  reverse_56(_1692, ((&_1697.array[((int32_t)7)])));
  *((&_1697.array[((int32_t)14)])) = _1695;
  *((&_1697.array[((int32_t)15)])) = _1694;
  _1698__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1702;

  do {     /* Syntactic loop '' to make GCC happy */
_1702:
  _1698 = _1698__PHI_TEMPORARY;
  _1699 = *((&_1691[((int32_t)_1698)]));
  _1700 = *((&_1697.array[((int32_t)_1698)]));
  *((&_1696[((int32_t)_1698)])) = (llvm_xor_u8(_1700, _1699));
  _1701 = llvm_add_u32(_1698, 1);
  if ((((_1701 == 16u)&1))) {
    goto _1703;
  } else {
    _1698__PHI_TEMPORARY = _1701;   /* for PHI node */
    goto _1702;
  }

  } while (1); /* end of syntactic loop '' */
_1703:
  return;
}


static uint32_t sm_key_distribution_all_received(struct l_struct_struct_OC_sm_connection* _1704) {
  uint8_t _1705;
  struct l_struct_struct_OC_sm_info_t* _1706;
  uint8_t* _1707;
  uint8_t _1708;
  uint8_t _1709;
  uint8_t _1710;
  uint8_t _1710__PHI_TEMPORARY;
  uint32_t _1711;
  uint32_t _1712;
  uint8_t _1713;

  _1705 = *((&_1704->field1));
  _1706 = sm_global_info;
  _1707 = (&_1706->field0.field12.array[((int32_t)0)]);
  if ((((_1705 == ((uint8_t)0))&1))) {
    goto _1714;
  } else {
    goto _1715;
  }

_1715:
  _1708 =  /*tail*/ sm_pairing_packet_get_initiator_key_distribution(_1707);
  _1710__PHI_TEMPORARY = _1708;   /* for PHI node */
  goto _1716;

_1714:
  _1709 =  /*tail*/ sm_pairing_packet_get_responder_key_distribution(_1707);
  _1710__PHI_TEMPORARY = _1709;   /* for PHI node */
  goto _1716;

_1716:
  _1710 = _1710__PHI_TEMPORARY;
  _1711 = ((uint32_t)(uint8_t)_1710);
  _1712 = llvm_select_u32(((((_1711 & 1) == 0u)&1)), 0, 3);
  _1713 = *((&_1706->field0.field6));
  return (((uint32_t)(bool)(((((llvm_select_u32(((((_1711 & 2) == 0u)&1)), _1712, (_1712 | 12))) | ((_1711 << 2) & 16)) == (((uint32_t)(uint8_t)_1713)))&1))));
}


static void sm_key_distribution_handle_all_received(struct l_struct_struct_OC_sm_connection* _1717) {
  struct l_array_16_uint8_t _1718;    /* Address-exposed local */
  struct l_array_6_uint8_t _1719;    /* Address-exposed local */
  uint32_t _1720;    /* Address-exposed local */
  struct l_array_6_uint8_t _1721;    /* Address-exposed local */
  uint32_t _1722;    /* Address-exposed local */
  uint64_t _1723;    /* Address-exposed local */
  struct l_struct_struct_OC_sm_info_t* _1724;
  uint8_t _1725;
  uint8_t* _1726;
  uint32_t _1727;
  uint8_t* _1728;
  uint8_t* _1729;
  uint32_t _1730;
  uint32_t _1731;
  uint32_t _1731__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _1732;
  uint32_t _1733;
  uint32_t _1734;
  uint32_t _1735;
  uint32_t _1735__PHI_TEMPORARY;
  uint32_t _1736;
  uint32_t _1736__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _1737;
  struct l_struct_struct_OC_sm_info_t* _1738;
  struct l_struct_struct_OC_sm_info_t* _1738__PHI_TEMPORARY;
  uint32_t _1739;
  uint32_t _1739__PHI_TEMPORARY;
  uint8_t _1740;
  uint32_t _1741;
  uint8_t* _1742;
  uint8_t* _1743;
  uint32_t _1744;
  uint32_t _1744__PHI_TEMPORARY;
  uint32_t _1745;
  struct l_struct_struct_OC_sm_info_t* _1746;
  uint32_t _1747;
  uint32_t _1748;
  uint32_t _1749;
  uint32_t _1750;
  uint32_t _1750__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _1751;
  uint8_t _1752;
  uint8_t _1753;
  uint8_t _1753__PHI_TEMPORARY;
  struct l_struct_struct_OC_sm_info_t* _1754;
  struct l_struct_struct_OC_sm_info_t* _1754__PHI_TEMPORARY;
  uint32_t _1755;
  uint32_t _1756;
  uint32_t _1756__PHI_TEMPORARY;
  uint16_t _1757;
  struct l_struct_struct_OC_sm_info_t* _1758;
  uint8_t _1759;
  struct l_struct_struct_OC_sm_info_t* _1760;
  uint8_t _1761;
  uint8_t _1762;
  uint8_t _1763;
  uint32_t _1764;
  uint8_t _1765;
  uint16_t _1766;
  uint8_t _1767;
  uint8_t _1768;
  uint32_t _1769;
  uint32_t _1770;
  uint32_t _1770__PHI_TEMPORARY;

  _1724 = sm_global_info;
  _1725 = *((&_1724->field0.field6));
  if (((((llvm_and_u8(_1725, 4)) == ((uint8_t)0))&1))) {
    _1738__PHI_TEMPORARY = _1724;   /* for PHI node */
    _1739__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _1771;
  } else {
    goto _1772;
  }

_1772:
  _1726 = (&_1718.array[((int32_t)0)]);
  _1727 = le_device_db_count();
  if ((((((int32_t)_1727) > ((int32_t)0u))&1))) {
    goto _1773;
  } else {
    _1736__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _1774;
  }

_1773:
  _1728 = (&_1719.array[((int32_t)0)]);
  _1729 = ((uint8_t*)(&_1720));
  _1731__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1775;

  do {     /* Syntactic loop '' to make GCC happy */
_1775:
  _1731 = _1731__PHI_TEMPORARY;
  le_device_db_info(_1731, (&_1720), _1728, _1726);
  _1732 = sm_global_info;
  _1733 = memcmp(_1726, ((&_1732->field0.field35.array[((int32_t)0)])), 16);
  _1734 = llvm_add_u32(_1731, 1);
  if ((((_1733 == 0u)&1))) {
    _1735__PHI_TEMPORARY = _1731;   /* for PHI node */
    goto _1776;
  } else {
    goto _1777;
  }

_1777:
  _1730 = le_device_db_count();
  if ((((((int32_t)_1734) < ((int32_t)_1730))&1))) {
    _1731__PHI_TEMPORARY = _1734;   /* for PHI node */
    goto _1775;
  } else {
    _1735__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _1776;
  }

  } while (1); /* end of syntactic loop '' */
_1776:
  _1735 = _1735__PHI_TEMPORARY;
  if ((((((int32_t)_1735) < ((int32_t)0u))&1))) {
    _1736__PHI_TEMPORARY = _1735;   /* for PHI node */
    goto _1774;
  } else {
    _1756__PHI_TEMPORARY = _1735;   /* for PHI node */
    goto _1778;
  }

_1774:
  _1736 = _1736__PHI_TEMPORARY;
  _1737 = sm_global_info;
  _1738__PHI_TEMPORARY = _1737;   /* for PHI node */
  _1739__PHI_TEMPORARY = _1736;   /* for PHI node */
  goto _1771;

_1771:
  _1738 = _1738__PHI_TEMPORARY;
  _1739 = _1739__PHI_TEMPORARY;
  _1740 = *((&_1738->field0.field37));
  if ((((_1740 == ((uint8_t)0))&1))) {
    goto _1779;
  } else {
    _1753__PHI_TEMPORARY = _1740;   /* for PHI node */
    _1754__PHI_TEMPORARY = _1738;   /* for PHI node */
    goto _1780;
  }

_1779:
  _1741 = le_device_db_count();
  if ((((((int32_t)_1741) > ((int32_t)0u))&1))) {
    goto _1781;
  } else {
    goto _1782;
  }

_1781:
  _1742 = (&_1721.array[((int32_t)0)]);
  _1743 = ((uint8_t*)(&_1722));
  _1744__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1783;

  do {     /* Syntactic loop '' to make GCC happy */
_1783:
  _1744 = _1744__PHI_TEMPORARY;
  le_device_db_info(_1744, (&_1722), _1742, ((uint8_t*)/*NULL*/0));
  _1745 = _1722;
  if ((((_1745 == 0u)&1))) {
    goto _1784;
  } else {
    goto _1785;
  }

_1784:
  _1746 = sm_global_info;
  _1747 = memcmp(_1742, ((&_1746->field0.field38.array[((int32_t)0)])), 6);
  if ((((_1747 == 0u)&1))) {
    goto _1786;
  } else {
    goto _1785;
  }

_1785:
  _1748 = llvm_add_u32(_1744, 1);
  _1749 = le_device_db_count();
  if ((((((int32_t)_1748) < ((int32_t)_1749))&1))) {
    _1744__PHI_TEMPORARY = _1748;   /* for PHI node */
    goto _1783;
  } else {
    goto _1787;
  }

  } while (1); /* end of syntactic loop '' */
_1786:
  _1750__PHI_TEMPORARY = _1744;   /* for PHI node */
  goto _1788;

_1787:
  _1750__PHI_TEMPORARY = _1739;   /* for PHI node */
  goto _1788;

_1788:
  _1750 = _1750__PHI_TEMPORARY;
  if ((((((int32_t)_1750) < ((int32_t)0u))&1))) {
    goto _1782;
  } else {
    _1756__PHI_TEMPORARY = _1750;   /* for PHI node */
    goto _1778;
  }

_1782:
  _1751 = sm_global_info;
  _1752 = *((&_1751->field0.field37));
  _1753__PHI_TEMPORARY = _1752;   /* for PHI node */
  _1754__PHI_TEMPORARY = _1751;   /* for PHI node */
  goto _1780;

_1780:
  _1753 = _1753__PHI_TEMPORARY;
  _1754 = _1754__PHI_TEMPORARY;
  _1755 = le_device_db_add((((uint32_t)(uint8_t)_1753)), ((&_1754->field0.field38.array[((int32_t)0)])), ((&_1754->field0.field35.array[((int32_t)0)])));
  if ((((((int32_t)_1755) > ((int32_t)4294967295u))&1))) {
    _1756__PHI_TEMPORARY = _1755;   /* for PHI node */
    goto _1778;
  } else {
    _1770__PHI_TEMPORARY = _1755;   /* for PHI node */
    goto _1789;
  }

_1778:
  _1756 = _1756__PHI_TEMPORARY;
  _1757 = *((&_1717->field0));
  _1758 = sm_global_info;
  _1759 = *((&_1758->field0.field37));
  sm_notify_client_index(-34, _1757, _1759, ((&_1758->field0.field38.array[((int32_t)0)])), (((uint16_t)_1756)));
  _1760 = sm_global_info;
  _1761 = *((&_1760->field0.field9));
  if ((((_1761 == ((uint8_t)0))&1))) {
    goto _1790;
  } else {
    goto _1791;
  }

_1791:
  _1723 = 0;
  _1762 = *((&_1717->field10));
  _1763 = *((&_1717->field9));
  _1764 = *((&_1717->field12));
  le_device_db_encryption_set(_1756, 0, (((uint8_t*)(&_1723))), ((&_1760->field0.field21.array[((int32_t)0)])), (((uint32_t)(uint8_t)_1762)), (((uint32_t)(uint8_t)_1763)), (((uint32_t)(bool)(((_1764 == 3u)&1)))));
  _1770__PHI_TEMPORARY = _1756;   /* for PHI node */
  goto _1789;

_1790:
  _1765 = *((&_1760->field0.field6));
  if (((((llvm_and_u8(_1765, 3)) == ((uint8_t)3))&1))) {
    goto _1792;
  } else {
    _1770__PHI_TEMPORARY = _1756;   /* for PHI node */
    goto _1789;
  }

_1792:
  _1766 = *((&_1760->field0.field32));
  _1767 = *((&_1717->field10));
  _1768 = *((&_1717->field9));
  _1769 = *((&_1717->field12));
  le_device_db_encryption_set(_1756, _1766, ((&_1760->field0.field33.array[((int32_t)0)])), ((&_1760->field0.field34.array[((int32_t)0)])), (((uint32_t)(uint8_t)_1767)), (((uint32_t)(uint8_t)_1768)), (((uint32_t)(bool)(((_1769 == 3u)&1)))));
  _1770__PHI_TEMPORARY = _1756;   /* for PHI node */
  goto _1789;

_1789:
  _1770 = _1770__PHI_TEMPORARY;
  *((&_1717->field16)) = _1770;
}


static void sm_notify_client_base(uint8_t _1793, uint16_t _1794, uint8_t _1795, uint8_t* _1796) {
  struct l_array_4_uint32_t _1797;    /* Address-exposed local */
  uint8_t* _1798;

  _1798 = ((uint8_t*)(&_1797));
  *_1798 = _1793;
  *((&_1798[((int32_t)1)])) = 14;
  little_endian_store_16(_1798, 2, _1794);
  *(((uint8_t*)((&_1797.array[((int32_t)1)])))) = _1795;
  reverse_bd_addr(_1796, ((&_1798[((int32_t)5)])));
  sm_dispatch_event(_1798, 16);
}


static void sm_dispatch_event(uint8_t* _1799, uint16_t _1800) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _1801;    /* Address-exposed local */
  uint8_t* _1802;
  struct l_struct_struct_OC_sm_info_t* _1803;
  uint32_t _1804;
  struct l_struct_struct_OC_btstack_linked_item* _1805;
  l_fptr_1* _1806;
  uint32_t _1807;

  _1802 = ((uint8_t*)(&_1801));
  _1803 = sm_global_info;
  btstack_linked_list_iterator_init((&_1801), ((&_1803->field30)));
  _1804 = btstack_linked_list_iterator_has_next((&_1801));
  if ((((_1804 == 0u)&1))) {
    goto _1808;
  } else {
    goto _1809;
  }

_1809:
  goto _1810;

  do {     /* Syntactic loop '' to make GCC happy */
_1810:
  _1805 = btstack_linked_list_iterator_next((&_1801));
  _1806 = *(((l_fptr_1**)((&_1805[((int32_t)1)]))));
  _1806(4, 0, _1799, _1800);
  _1807 = btstack_linked_list_iterator_has_next((&_1801));
  if ((((_1807 == 0u)&1))) {
    goto _1811;
  } else {
    goto _1810;
  }

  } while (1); /* end of syntactic loop '' */
_1811:
  goto _1808;

_1808:
  return;
}


static void sm_notify_client_index(uint8_t _1812, uint16_t _1813, uint8_t _1814, uint8_t* _1815, uint16_t _1816) {
  struct l_array_6_uint8_t _1817;    /* Address-exposed local */
  uint32_t _1818;    /* Address-exposed local */
  struct l_array_19_uint8_t _1819;    /* Address-exposed local */
  uint8_t* _1820;
  uint8_t* _1821;
  uint8_t* _1822;
  uint32_t _1823;

  _1820 = (&_1817.array[((int32_t)0)]);
  _1821 = ((uint8_t*)(&_1818));
  le_device_db_info((((uint32_t)(uint16_t)_1816)), (&_1818), _1820, ((uint8_t*)/*NULL*/0));
  _1822 = (&_1819.array[((int32_t)0)]);
  *_1822 = _1812;
  *((&_1819.array[((int32_t)1)])) = 17;
  little_endian_store_16(_1822, 2, _1813);
  *((&_1819.array[((int32_t)4)])) = _1814;
  reverse_bd_addr(_1815, ((&_1819.array[((int32_t)5)])));
  _1823 = _1818;
  *((&_1819.array[((int32_t)11)])) = (((uint8_t)_1823));
  reverse_bd_addr(_1820, ((&_1819.array[((int32_t)12)])));
  *((&_1819.array[((int32_t)18)])) = (((uint8_t)_1816));
  sm_dispatch_event(_1822, 19);
}


static void sm_pairing_packet_set_io_capability(uint8_t* _1824, uint8_t _1825) {
  *((&_1824[((int32_t)1)])) = _1825;
}


static void sm_pairing_packet_set_oob_data_flag(uint8_t* _1826, uint8_t _1827) {
  *((&_1826[((int32_t)2)])) = _1827;
}


static void sm_pairing_packet_set_auth_req(uint8_t* _1828, uint8_t _1829) {
  *((&_1828[((int32_t)3)])) = _1829;
}


static void sm_pairing_packet_set_max_encryption_key_size(uint8_t* _1830, uint8_t _1831) {
  *((&_1830[((int32_t)4)])) = _1831;
}


static uint8_t sm_pairing_packet_get_max_encryption_key_size(uint8_t* _1832) {
  uint8_t _1833;

  _1833 = *((&_1832[((int32_t)4)]));
  return _1833;
}


static uint8_t sm_pairing_packet_get_oob_data_flag(uint8_t* _1834) {
  uint8_t _1835;

  _1835 = *((&_1834[((int32_t)2)]));
  return _1835;
}


static uint8_t sm_pairing_packet_get_auth_req(uint8_t* _1836) {
  uint8_t _1837;

  _1837 = *((&_1836[((int32_t)3)]));
  return _1837;
}


static uint8_t sm_pairing_packet_get_io_capability(uint8_t* _1838) {
  uint8_t _1839;

  _1839 = *((&_1838[((int32_t)1)]));
  return _1839;
}


static void sm_timeout_handler(struct l_struct_struct_OC_btstack_timer_source* _1840) {
  uint8_t _1841;
  uint32_t _1842;
  struct l_struct_struct_OC_sm_connection* _1843;
  uint16_t* _1844;
  uint16_t _1845;
  uint16_t _1846;
  uint8_t _1847;

  _1841 = ble_debug_enable;
  if (((((llvm_and_u8(_1841, 1)) == ((uint8_t)0))&1))) {
    goto _1848;
  } else {
    goto _1849;
  }

_1849:
  _1842 =  /*tail*/ puts(((&str_OC_22.array[((int32_t)0)])));
  goto _1848;

_1848:
  _1843 = *(((struct l_struct_struct_OC_sm_connection**)((&_1840->field4))));
  *((&_1843->field6)) = 2;
  _1844 = (&_1843->field0);
  _1845 = *_1844;
   /*tail*/ sm_done_for_handle(_1845);
   /*tail*/ sm_run();
  _1846 = *_1844;
  _1847 = *((&_1843->field4));
   /*tail*/ sm_notify_client_process(_1846, _1847, ((&_1843->field5.array[((int32_t)0)])), 4);
}


static void sm_disconnect(uint32_t _1850) {
  uint16_t _1851;
  struct l_struct_struct_OC___le_hci_connection* _1852;
  struct l_struct_struct_OC_sm_connection* _1853;
  uint8_t* _1854;
  uint8_t _1855;
  uint32_t _1856;
  uint32_t _1857;
  uint16_t _1858;
  uint8_t _1859;
  uint8_t _1860;

  _1851 = ((uint16_t)_1850);
   /*tail*/ sm_done_for_handle(_1851);
  _1852 =  /*tail*/ le_hci_connection_for_handle(_1851);
  _1853 = llvm_select_pstruct_struct_OC_sm_connection((((_1852 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_sm_connection*)/*NULL*/0), ((&_1852->field11)));
  if ((((_1852 == ((struct l_struct_struct_OC___le_hci_connection*)/*NULL*/0))&1))) {
    goto _1861;
  } else {
    goto _1862;
  }

_1862:
  _1854 = (&_1853->field15);
  _1855 = *_1854;
  _1856 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint8_t)_1855)));
  _1857 =  /*tail*/ ll_hci_disconnect(_1851, 19);
  _1858 = *((&_1853->field0));
  _1859 = *((&_1853->field4));
  _1860 = *_1854;
   /*tail*/ sm_notify_client_process(_1858, _1859, ((&_1853->field5.array[((int32_t)0)])), (((((uint32_t)(uint8_t)_1860)) << 8) | 15));
  goto _1861;

_1861:
  return;
}


static void sm_notify_client_passkey(uint8_t _1863, uint16_t _1864, uint8_t _1865, uint8_t* _1866, uint32_t _1867) {
  struct l_array_4_uint32_t _1868;    /* Address-exposed local */
  uint8_t* _1869;

  _1869 = ((uint8_t*)(&_1868));
  *_1869 = _1863;
  *((&_1869[((int32_t)1)])) = 14;
  little_endian_store_16(_1869, 2, _1864);
  *(((uint8_t*)((&_1868.array[((int32_t)1)])))) = _1865;
  reverse_bd_addr(_1866, ((&_1869[((int32_t)5)])));
  little_endian_store_32(_1869, 11, _1867);
  sm_dispatch_event(_1869, 16);
}


static uint32_t rand32(void) {
  uint32_t _1870;

  _1870 = *(volatile uint32_t*)((uint32_t*)(uintptr_t)1981184);
  return _1870;
}


static uint8_t hci_event_packet_get_type(uint8_t* _1871) {
  uint8_t _1872;

  _1872 = *_1871;
  return _1872;
}


static uint8_t sm_master_pair_get_list(struct l_struct_struct_OC_sm_connection* _1873) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _1874;    /* Address-exposed local */
  uint8_t* _1875;
  struct l_struct_struct_OC_sm_info_t* _1876;
  uint8_t _1877;
  uint8_t _1878;
  uint8_t _1879;
  uint8_t _1880;
  uint16_t _1881;
  struct l_struct_struct_OC_sm_info_t* _1882;
  uint64_t _1883;
  uint8_t* _1884;
  uint8_t _1885;
  uint8_t _1886;
  uint8_t _1887;
  uint8_t _1887__PHI_TEMPORARY;

  _1875 = (&_1874.field0.array[((int32_t)0)]);
  _1876 = sm_global_info;
  _1877 = *((&_1876->field9));
  if ((((_1877 == ((uint8_t)0))&1))) {
    goto _1888;
  } else {
    _1887__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1889;
  }

_1888:
  _1878 = *((&_1873->field4));
  _1879 = *((&_1873->field1));
  _1880 = ble_list_get_conn_addr_item(((&_1873->field5.array[((int32_t)0)])), _1878, _1879, (&_1874));
  if ((((_1880 == ((uint8_t)0))&1))) {
    _1887__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1889;
  } else {
    goto _1890;
  }

_1890:
  _1881 = little_endian_read_16(((&_1874.field6.array[((int32_t)0)])), 0);
  _1882 = sm_global_info;
  *((&_1882->field0.field32)) = _1881;
  _1883 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_1874.field5.array[((int32_t)0)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_1882->field0.field33.array[((int32_t)0)]))))) = _1883;
  _1884 = memcpy(((&_1882->field0.field34.array[((int32_t)0)])), ((&_1874.field1.array[((int32_t)0)])), 16);
  _1885 = *((&_1874.field7));
  *((&_1873->field10)) = _1885;
  _1886 = *((&_1874.field8));
  *((&_1873->field9)) = (llvm_and_u8(_1886, 15));
  *((&_1873->field12)) = (((uint32_t)(uint8_t)(llvm_lshr_u8(_1886, 4))));
  _1887__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1889;

_1889:
  _1887 = _1887__PHI_TEMPORARY;
  return _1887;
}


static void sm_timeout_handler_pair(uint32_t _1891) {
  uint8_t _1892;

  _1892 =  /*tail*/ sm_api_request_pairing((((uint16_t)_1891)));
}


static void gap_random_address_update_handler(struct l_struct_struct_OC_btstack_timer_source* _1893) {
  uint8_t _1894;
  uint32_t _1895;

  _1894 = ble_debug_enable;
  if (((((llvm_and_u8(_1894, 1)) == ((uint8_t)0))&1))) {
    goto _1896;
  } else {
    goto _1897;
  }

_1897:
  _1895 =  /*tail*/ puts(((&str_OC_23.array[((int32_t)0)])));
  goto _1896;

_1896:
   /*tail*/ gap_random_address_trigger();
}

