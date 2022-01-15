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
struct l_struct_struct_OC_sniff_ctrl_config_t;
struct l_struct_struct_OC_user_cmd_ctrl;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_run_loop;
struct l_struct_struct_OC_conn_info;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_user_core_data_t;
struct l_struct_struct_OC_user_info_t;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_hci_cmd_t;
struct l_struct_struct_OC_profile_cmd_handle;
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_spp_ioctrl_str;
struct l_struct_union_OC_anon;
struct l_struct_struct_OC_hfp_ioctrl_str;
struct l_struct_struct_OC_resend_t;

/* Function definitions */
typedef void l_fptr_13(uint8_t, uint8_t*, uint8_t*);

typedef uint32_t l_fptr_7(uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef uint8_t l_fptr_21(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_3(void);

typedef uint8_t l_fptr_2(void);

typedef void l_fptr_10(struct l_struct_struct_OC_run_loop*);

typedef uint32_t l_fptr_9(int, ...);

typedef void l_fptr_11(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_12(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_19(void);

typedef void l_fptr_15(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_14(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_16(uint32_t);

typedef uint32_t l_fptr_1(uint8_t*, uint32_t, uint32_t);

typedef uint32_t l_fptr_4(uint8_t*, uint32_t);

typedef void l_fptr_20(uint8_t);

typedef uint32_t l_fptr_5(uint8_t*);

typedef void l_fptr_6(uint8_t*, uint32_t);

typedef uint32_t l_fptr_8(void);

typedef uint32_t l_fptr_18(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_17(uint8_t, uint32_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_1_uint8_t {
  uint8_t array[1];
};
struct l_struct_struct_OC_sniff_ctrl_config_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  struct l_array_6_uint8_t field4;
};
struct l_array_1_struct_AC_l_struct_struct_OC_sniff_ctrl_config_t {
  struct l_struct_struct_OC_sniff_ctrl_config_t array[1];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_struct_struct_OC_user_cmd_ctrl {
  uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  struct l_array_30_uint8_t field3;
  uint8_t* field4;
  uint16_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  struct l_array_1_uint8_t field9;
  struct l_array_1_struct_AC_l_struct_struct_OC_sniff_ctrl_config_t field10;
  struct l_array_16_uint8_t field11;
  struct l_array_10_uint8_t field12;
  uint8_t field13;
  uint8_t field14;
  struct l_array_5_uint8_t field15;
  uint8_t field16;
  uint8_t field17;
  uint8_t field18;
  uint8_t field19;
  struct l_array_10_uint8_t field20;
  uint32_t field21;
  struct l_array_6_uint8_t field22;
  struct l_array_6_uint8_t field23;
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_run_loop {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_10* field1;
  uint8_t* field2;
};
struct l_struct_struct_OC_conn_info {
  struct l_array_6_uint8_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  struct l_array_5_uint8_t field5;
  uint8_t field6;
  struct l_struct_struct_OC_btstack_linked_item* field7;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_11* field3;
  uint8_t* field4;
};
struct l_array_1_struct_AC_l_struct_struct_OC_conn_info {
  struct l_struct_struct_OC_conn_info array[1];
};
struct l_struct_struct_OC_user_core_data_t {
  uint8_t field0;
  struct l_array_6_uint8_t field1;
  struct l_array_6_uint8_t field2;
  struct l_array_6_uint8_t field3;
};
struct l_array_10_struct_AC_l_array_6_uint8_t {
  struct l_array_6_uint8_t array[10];
};
struct l_struct_struct_OC_user_info_t {
  struct l_struct_struct_OC_user_cmd_ctrl field0;
  struct l_struct_struct_OC_run_loop field1;
  struct l_array_1_struct_AC_l_struct_struct_OC_conn_info field2;
  struct l_struct_struct_OC_user_core_data_t field3;
  struct l_struct_struct_OC_btstack_timer_source field4;
  struct l_array_6_uint8_t field5;
  struct l_array_10_struct_AC_l_array_6_uint8_t field6;
  struct l_array_6_uint8_t field7;
  uint8_t field8;
  uint8_t field9;
  uint16_t field10;
  struct l_array_6_uint8_t field11;
  uint8_t field12;
  uint32_t field13;
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
struct l_struct_struct_OC_hci_cmd_t {
  uint16_t field0;
  uint8_t* field1;
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_struct_struct_OC_profile_cmd_handle {
  l_fptr_5* field0;
  l_fptr_4* field1;
  l_fptr_5* field2;
  l_fptr_5* field3;
  l_fptr_1* field4;
  l_fptr_4* field5;
  l_fptr_5* field6;
  l_fptr_1* field7;
  l_fptr_1* field8;
  l_fptr_7* field9;
  l_fptr_5* field10;
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_6_uint32_t {
  uint32_t array[6];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_9* field0;
  l_fptr_9* field1;
  l_fptr_9* field2;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_12* field0;
  l_fptr_13* field1;
  l_fptr_6* field2;
  l_fptr_8* field3;
  l_fptr_14* field4;
  l_fptr_15* field5;
  l_fptr_8* field6;
  l_fptr_16* field7;
  l_fptr_17* field8;
  l_fptr_18* field9;
  l_fptr_19* field10;
  l_fptr_20* field11;
  l_fptr_21* field12;
  l_fptr_14* field13;
  l_fptr_8* field14;
};
struct l_array_107_uint8_t {
  uint8_t array[107];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_13_uint8_t {
  uint8_t array[13];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_struct_struct_OC_spp_ioctrl_str {
  struct l_array_6_uint8_t field0;
  uint8_t field1;
  uint32_t field2;
  uint32_t field3;
  uint8_t* field4;
};
struct l_struct_union_OC_anon {
  uint32_t field0;
  struct l_array_28_uint8_t field1;
};
struct l_struct_struct_OC_hfp_ioctrl_str {
  struct l_array_6_uint8_t field0;
  uint32_t field1;
  uint8_t field2;
  struct l_struct_union_OC_anon field3;
};
struct l_struct_struct_OC_resend_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  /* void field2 */};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern struct l_struct_struct_OC_hci_cmd_t btstack_update_flags;
extern uint8_t btstack_emitter_support;
extern uint8_t hid_conn_depend_on_dev_company;
extern uint8_t iap_profile_support;
extern struct l_struct_struct_OC_profile_cmd_handle profile_cmd_hdl_str;
extern struct l_struct_struct_OC_hci_cmd_t btstack_update_state;
extern __MSALIGN__(4) struct l_struct_struct_OC__stack_config stack_configs_app __attribute__((aligned(4)));
extern struct l_struct_struct_OC_hci_cmd_t btstack_background_state;
extern uint8_t user_at_cmd_send_support;
extern char /* (empty) */ bt_sleep_begin;
extern char /* (empty) */ bt_sleep_end;
extern uint32_t config_btstask_auto_exit_sniff;
extern struct l_struct_struct_OC_user_interface_handler user_interface_app;
extern uint32_t config_asser;

/* Function Declarations */
void set_stack_exiting(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t phone_sound_ctrl_flag_detect(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t tws_host_timer_cnt_detect(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t b_create_bt_new_conn(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_conn_info* create_bt_new_conn(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint8_t free_conn_for_addr(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_conn_info* get_conn_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
struct l_struct_struct_OC_conn_info* get_bt_current_conn(uint8_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t is_bt_conn_hfp_hangup(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
void btstack_avrcp_ch_creat_ok(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void updata_profile_channels_status(uint8_t*, uint32_t, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void tws_host_timeout_set(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t user_send_cmd_prepare(uint32_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void update_bt_current_status(uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
uint32_t stack_send_infor_2_user(struct l_struct_struct_OC_hci_cmd_t*, ...);
uint32_t __bt_profile_enable(uint32_t);
uint32_t user_emitter_cmd_prepare(uint32_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t remote_dev_company_ioctrl(uint8_t*, uint8_t, uint8_t);
void tws_host_timeout_reset(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_disconnect_cmd(uint16_t, uint8_t);
uint32_t update_multi_bd_status(uint8_t*, uint8_t, uint8_t);
uint32_t user_at_cmd_free(struct l_struct_struct_OC_conn_info*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
struct l_struct_struct_OC_conn_info* find_not_hangup_conn(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t check_work_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void bt_status_change(uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void put_buf(uint8_t*, uint32_t);
uint8_t get_emitter_connect_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_bt_connect_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_device_inband_ringtone_flag(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t is_1t2_connection(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_total_connect_dev(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t get_curr_channel_state(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t get_emitter_curr_channel_state(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t* get_cur_connect_phone_mac_addr(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_unactive_device_call_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t* get_cur_connect_emitter_mac_addr(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_call_status(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t a2dp_get_status_for_conn(struct l_struct_struct_OC_conn_info*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t a2dp_get_status(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t get_pp_key_statue(uint8_t*);
uint8_t get_emitter_a2dp_status(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_second_call_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_a2dp_decoder_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t check_phone_call_number(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void add_hfp_flag(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void clr_hfp_flag(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_api_all_sniff_exit(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_set_sniff_mode(uint32_t, uint8_t, uint8_t*, uint16_t, uint16_t, uint16_t, uint16_t);
void user_hfp_call_hold_flag(uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void update_profile_function_status(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t delete_last_device_from_vm(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t restore_remote_device_info_opt(struct l_array_6_uint8_t*, uint8_t, uint8_t);
uint8_t get_remote_dev_info_index(int, ...);
void delete_link_key(struct l_array_6_uint8_t*, uint8_t);
uint8_t connect_last_device_from_vm(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void get_remote_device_info_from_vm(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_current_poweron_memory_search_index(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* get_mac_memory_by_index(uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void clear_current_poweron_memory_search_index(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void user_cmd_timer_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t __a2dp_conn_send_discover_cnt(int, ...);
static void user_cmd_timeout_check(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow));
void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source*, int16_t);
void remove_user_cmd_timer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source*);
uint8_t check_user_cmd_timer_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void user_cmd_ctrl_init(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void stack_run_loop_register(struct l_struct_struct_OC_run_loop*, l_fptr_10*, uint8_t*);
static void user_operation_control(struct l_struct_struct_OC_run_loop*) __ATTRIBUTELIST__((nothrow));
void connect_hfp_while_a2dp_connected(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void start_connection(struct l_struct_struct_OC_conn_info*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void user_disconn_for_poweroff(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_connectable_control(uint8_t, uint8_t);
void hci_discoverable_control(uint8_t, uint8_t);
void hci_cancle_page(int, ...);
void hci_cancel_inquiry(int, ...);
void hci_disconnect_all_standard_connect(int, ...);
void update_connectiong_mac_addr(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void user_send_keypress(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_send_keypress(uint8_t*, uint32_t, uint8_t);
uint8_t sco_connection_disconnect(uint8_t*);
void os_time_dly(uint32_t);
uint8_t l2cap_disconnect_all_channel(int, ...);
void stack_run_loop_resume(int, ...);
uint32_t hid_diy_data_try_send(uint16_t, uint8_t*, uint16_t);
uint32_t unactice_device_cmd_prepare(uint32_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t user_hfp_send_cmd(struct l_struct_struct_OC_conn_info*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
void user_spp_send_ok_callback(uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void user_pbg_send_ok_callback(uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void user_adt_send_ok_callback(uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void adt_key_open_mic(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t user_pan_send_cmd(uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_role_type_by_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t emitter_hci_disconn_deal(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t tws_host_timeout_get(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void tws_host_timeout_del_event(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void tws_host_timeout_del(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_conn_channel_for_tws(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t bt_api_conn_mode_check(uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t mic_coder_busy_flag(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t filter_out_sbc_data_en(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t update_check_sniff_en(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void clear_sniff_cnt(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t bt_emitter_stu_get(void) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint8_t bt_api_enter_sniff_status_check(uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_esco_coder_busy_flag(int, ...);
uint8_t check_user_cmd_for_tws(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t get_auto_connect_state(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t user_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void user_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t get_music_sync_volume(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t get_music_volume(uint8_t*);
uint8_t get_remote_dev_company(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t user_send_at_cmd_prepare(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint8_t get_is_in_background_flag(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t bredr_suspend(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bredr_resume(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t bredr_release(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_remote_vol_sync(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t avctp_get_remote_vol_sync(uint8_t*);
static uint8_t connect_a2dp_w_phone_only_conn_hfp(void) __ATTRIBUTELIST__((nothrow));
uint32_t music_player_ctrl(uint8_t*, uint8_t);
uint8_t sco_connection_setup_dis(uint8_t*);
uint32_t hfp_send_bcc_cmd(uint8_t*);
uint8_t setup_hfp_ag_esco_link(uint8_t*);
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void set_hid_independent_info(int, ...);
void btstack_hci_init(int, ...);
void hci_remote_name_request_cmd(uint8_t*, uint8_t, uint8_t, uint16_t);
uint8_t get_remote_test_flag(int, ...);
void hci_test_box_key_cmd(uint8_t, uint16_t);
void hci_send_user_info_cmd(uint32_t, uint16_t);
void hci_inquiry_start(uint8_t);
void hci_user_confirmation_request(uint8_t, uint8_t*);
void hci_tx_channel_chassification(uint8_t*);
uint16_t sys_timeout_add(uint8_t*, l_fptr_22*, uint32_t);
static void __bt_spp_data_try_send(uint8_t*) __ATTRIBUTELIST__((nothrow));
void p33_soft_reset(void);
void hci_connection_cancel(uint8_t*);
static uint32_t user_cmd_loop_suspend(void) __ATTRIBUTELIST__((nothrow));
static uint32_t user_cmd_loop_resume(void) __ATTRIBUTELIST__((nothrow));
static uint32_t user_cmd_loop_release(void) __ATTRIBUTELIST__((nothrow));
void stack_run_loop_remove(struct l_struct_struct_OC_run_loop*);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_user_info_t __user_info;
static struct l_array_38_uint8_t _OC_str = { "<BT-log> :get not support channel %x\n" };
static struct l_array_20_uint8_t _OC_str_OC_2 = { "current channel:%x\n" };
static struct l_array_15_uint8_t _OC_str_OC_4 = { "hci_disconn_6\n" };
static struct l_array_40_uint8_t _OC_str_OC_5 = { "<BT-log> : disconn current channel:%x\n\n" };
static struct l_array_25_uint8_t _OC_str_OC_6 = { "update active addr[sco]:" };
static struct l_array_25_uint8_t _OC_str_OC_7 = { "update active addr[acl]\n" };
static struct l_array_25_uint8_t _OC_str_OC_8 = { "<BT-log> :hfp_flag1:%d\n\n" };
static struct l_array_25_uint8_t _OC_str_OC_9 = { "<BT-log> :hfp_flag2:%d\n\n" };
static struct l_array_20_uint8_t _OC_str_OC_10 = { "HFP_INDSTA_HANG_UP\n" };
static struct l_array_45_uint8_t _OC_str_OC_11 = { "\n\n=====HFP_INDSTA_ONE_CALL_ON_HELD=%d ====\n\n" };
static struct l_array_26_uint8_t _OC_str_OC_12 = { "last device addr from vm:" };
static struct l_array_6_uint8_t get_current_poweron_memory_search_index_OC_invalid_addr = { "\xFF\xFF\xFF\xFF\xFF\xFF" };
static struct l_array_28_uint8_t _OC_str_OC_14 = { "<BT-log> : user_info_t %d\n\n" };
static struct l_struct_struct_OC_user_cmd_ctrl* g_user_cmd;
struct l_array_6_uint32_t base_table __HIDDEN__ = { { 1, 10, 100, 1000, 10000, 100000 } };
static struct l_array_31_uint8_t _OC_str_OC_16 = { "<BT-log> :spp_send_buf_len:%d\n" };
static struct l_array_22_uint8_t _OC_str_OC_17 = { "tws_host_timeout_get\n" };
struct l_struct_struct_OC_bt_sleep bt_suspend_user_cmd_loop_resumeuser_cmd_loop_release __HIDDEN__ = { ((l_fptr_9*)user_cmd_loop_suspend), ((l_fptr_9*)user_cmd_loop_resume), ((l_fptr_9*)user_cmd_loop_release) };
static struct l_array_28_uint8_t _OC_str_OC_18 = { "<BT-log> :release pend %x\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_19 = { " --- create add:" };
static struct l_array_26_uint8_t _OC_str_OC_20 = { "test key, not exit sniff\n" };
static struct l_array_20_uint8_t _OC_str_OC_23 = { "<BT-log> :conn %x\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_24 = { "file:%s, line:%d" };
static struct l_array_107_uint8_t _OC_str_OC_25 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/avctp_user.c" };
static struct l_array_28_uint8_t _OC_str_OC_26 = { "ASSERT-FAILD: conn != NULL " };
static struct l_array_25_uint8_t _OC_str_OC_27 = { "create_bt_new_conn null\n" };
static struct l_array_19_uint8_t _OC_str_OC_28 = { "clear remote info\n" };
static struct l_array_13_uint8_t _OC_str_OC_29 = { "+++++ off 0\n" };
static struct l_array_20_uint8_t _OC_str_OC_30 = { "[hid] send vol inc\n" };
static struct l_array_22_uint8_t _OC_str_OC_31 = { "[avrcp] send vol inc\n" };
static struct l_array_20_uint8_t _OC_str_OC_32 = { "[hid] send vol dec\n" };
static struct l_array_22_uint8_t _OC_str_OC_33 = { "[avrcp] send vol dec\n" };
static struct l_array_15_uint8_t _OC_str_OC_34 = { "send spp err.\n" };
static struct l_array_42_uint8_t str_OC_35 = { "<BT-log> :\navdtp_a2dp to hci disconn 111\n" };
static struct l_array_44_uint8_t str_OC_36 = { "<BT-log> : conn->role_type = ROLE_EMITTER \n" };
static struct l_array_42_uint8_t str_OC_37 = { "<BT-log> :user_cmd_timer add timer again\n" };
static struct l_array_28_uint8_t str_OC_38 = { "<BT-log> :a2dp sink connect" };
static struct l_array_31_uint8_t str_OC_39 = { "<BT-log> :a2dp emitter connect" };
static struct l_array_27_uint8_t str_OC_40 = { "<BT-log> :updata mac --- \n" };


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
static __forceinline uint8_t* llvm_select_pu8(bool condition, uint8_t* iftrue, uint8_t* ifnot) {
  uint8_t* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline struct l_struct_struct_OC_conn_info* llvm_select_pstruct_struct_OC_conn_info(bool condition, struct l_struct_struct_OC_conn_info* iftrue, struct l_struct_struct_OC_conn_info* ifnot) {
  struct l_struct_struct_OC_conn_info* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint64_t llvm_select_u40(bool condition, uint64_t iftrue, uint64_t ifnot) {
  uint64_t r;
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
static __forceinline uint16_t llvm_lshr_u16(uint16_t a, uint16_t b) {
  uint16_t r = a >> b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}
static __forceinline uint64_t llvm_lshr_u40(uint64_t a, uint64_t b) {
  uint64_t r = (a >> b) & 4294967295;
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


/* Function Bodies */

void set_stack_exiting(uint8_t _1) {
  uint16_t _2;

  _2 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_or_u16((llvm_and_u16(_2, -129)), (((uint16_t)(uint8_t)(llvm_shl_u8(_1, 7))))));
}


uint8_t phone_sound_ctrl_flag_detect(void) {
  uint8_t _3;
  uint8_t _4;
  uint8_t _5;
  uint8_t _5__PHI_TEMPORARY;

  _3 = *((&__user_info.field3.field0));
  _4 = llvm_add_u8(_3, -1);
  if ((((((uint8_t)_4) < ((uint8_t)((uint8_t)5)))&1))) {
    goto _6;
  } else {
    _5__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _7;
  }

_6:
  *((&__user_info.field3.field0)) = _4;
  _5__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _7;

_7:
  _5 = _5__PHI_TEMPORARY;
  return _5;
}


uint8_t tws_host_timer_cnt_detect(void) {
  uint8_t _8;
  uint8_t _9;
  uint8_t _9__PHI_TEMPORARY;

  _8 = *((&__user_info.field9));
  if ((((_8 == ((uint8_t)0))&1))) {
    _9__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _10;
  } else {
    goto _11;
  }

_11:
  *((&__user_info.field9)) = (llvm_add_u8(_8, -1));
  _9__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _10;

_10:
  _9 = _9__PHI_TEMPORARY;
  return _9;
}


uint8_t b_create_bt_new_conn(uint8_t* _12, uint16_t _13) {
  struct l_struct_struct_OC_conn_info* _14;

  _14 =  /*tail*/ create_bt_new_conn(_12, _13);
  return (((uint8_t)(bool)(((_14 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))));
}


static struct l_struct_struct_OC_conn_info* create_bt_new_conn(uint8_t* _15, uint16_t _16) {
  uint8_t _17;
  uint32_t _18;
  uint8_t _19;
  uint8_t _20;
  uint8_t _20__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _21;
  struct l_struct_struct_OC_conn_info* _22;
  struct l_struct_struct_OC_conn_info* _22__PHI_TEMPORARY;
  uint64_t* _23;
  uint64_t _24;
  uint16_t _25;
  uint64_t _26;
  uint64_t _27;
  uint8_t* _28;
  struct l_struct_struct_OC__stack_config* _29;
  uint32_t* _30;
  uint32_t _31;
  struct l_struct_struct_OC_conn_info* _32;
  struct l_struct_struct_OC_conn_info* _33;
  struct l_struct_struct_OC_conn_info* _33__PHI_TEMPORARY;

  _17 = l2cap_debug_enable;
  if (((((llvm_and_u8(_17, 32)) == ((uint8_t)0))&1))) {
    _20__PHI_TEMPORARY = _17;   /* for PHI node */
    goto _34;
  } else {
    goto _35;
  }

_35:
  _18 =  /*tail*/ puts(((&_OC_str_OC_19.array[((int32_t)0)])));
  _19 = l2cap_debug_enable;
  _20__PHI_TEMPORARY = _19;   /* for PHI node */
  goto _34;

_34:
  _20 = _20__PHI_TEMPORARY;
  if (((((llvm_and_u8(_20, 64u)) == ((uint8_t)0))&1))) {
    goto _36;
  } else {
    goto _37;
  }

_37:
   /*tail*/ put_buf(_15, 6);
  goto _36;

_36:
  _21 =  /*tail*/ get_conn_for_addr(_15);
  if ((((_21 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _38;
  } else {
    goto _39;
  }

_38:
  _22__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _40;

_39:
  *((&_21->field1)) = _16;
  _33__PHI_TEMPORARY = _21;   /* for PHI node */
  goto _41;

  do {     /* Syntactic loop '' to make GCC happy */
_40:
  _22 = _22__PHI_TEMPORARY;
  _23 = ((uint64_t*)((&_22->field5)));
  _24 = ((*_23)&4294967295);
  if (((((((_24 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _42;
  } else {
    goto _43;
  }

_43:
  _32 = (&_22[((int32_t)1)]);
  if ((((((uint32_t)_32) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _22__PHI_TEMPORARY = _32;   /* for PHI node */
    goto _40;
  } else {
    goto _44;
  }

  } while (1); /* end of syntactic loop '' */
_42:
  *_23 = (((((_24 | 536870912)&4294967295))) & 4294967295);
  _25 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_or_u16((llvm_and_u16((llvm_add_u16(_25, 1)), 7)), (llvm_and_u16(_25, -8))));
  _26 = ((*_23)&4294967295);
  _27 = (((((_26 & -1044496)&4294967295)) | 5)&4294967295);
  *_23 = ((_27) & 4294967295);
  _28 = memcpy(((&_22->field0.array[((int32_t)0)])), _15, 6);
  *((&_22->field3)) = 0;
  *((&_22->field1)) = _16;
  *_23 = (((((_27 & UINT64_C(584114507765))&4294967295))) & 4294967295);
  _29 = user_stack_configs;
  _30 = (&_29->field9);
  _31 = __UNALIGNED_LOAD__(uint32_t, 1, _30);
  __UNALIGNED_LOAD__(uint32_t, 1, _30) = (_31 | 4194304);
  _33__PHI_TEMPORARY = _22;   /* for PHI node */
  goto _41;

_44:
  _33__PHI_TEMPORARY = ((struct l_struct_struct_OC_conn_info*)/*NULL*/0);   /* for PHI node */
  goto _41;

_41:
  _33 = _33__PHI_TEMPORARY;
  return _33;
}


uint8_t free_conn_for_addr(uint8_t* _45, uint8_t _46) {
  struct l_struct_struct_OC_conn_info* _47;
  uint64_t _48;
  uint8_t* _49;
  uint8_t* _50;
  uint64_t* _51;
  uint64_t _52;
  uint16_t _53;
  uint8_t* _54;
  struct l_struct_struct_OC_conn_info* _55;
  struct l_struct_struct_OC_conn_info* _55__PHI_TEMPORARY;
  uint64_t _56;
  uint8_t* _57;
  struct l_struct_struct_OC_conn_info* _58;
  uint8_t _59;
  uint8_t _59__PHI_TEMPORARY;

  _47 =  /*tail*/ get_conn_for_addr(_45);
  if (((((((_46 != ((uint8_t)0))&1)) & (((_47 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1)))&1))) {
    goto _60;
  } else {
    goto _61;
  }

_60:
  _48 = ((*(((uint64_t*)((&_47->field5)))))&4294967295);
  if (((((((_48 & UINT64_C(274877906944))&4294967295)) == UINT64_C(0))&1))) {
    goto _62;
  } else {
    goto _63;
  }

_63:
  _49 = memcpy(((&__user_info.field7.array[((int32_t)0)])), _45, 6);
  goto _61;

_62:
  _50 = memcpy(((&__user_info.field3.field1.array[((int32_t)0)])), _45, 6);
  goto _61;

_61:
  if ((((_47 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _64;
  } else {
    goto _65;
  }

_64:
  _51 = ((uint64_t*)((&_47->field5)));
  _52 = ((*_51)&4294967295);
  *_51 = (((((_52 & -536870913)&4294967295))) & 4294967295);
  _53 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_or_u16((llvm_and_u16((llvm_add_u16(_53, 7)), 7)), (llvm_and_u16(_53, -8))));
  _54 = memset(((&_47->field0.array[((int32_t)0)])), 0, 24);
  goto _65;

_65:
  _55__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _66;

  do {     /* Syntactic loop '' to make GCC happy */
_66:
  _55 = _55__PHI_TEMPORARY;
  _56 = ((*(((uint64_t*)((&_55->field5)))))&4294967295);
  if (((((((_56 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _67;
  } else {
    goto _68;
  }

_67:
  _58 = (&_55[((int32_t)1)]);
  if ((((((uint32_t)_58) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _55__PHI_TEMPORARY = _58;   /* for PHI node */
    goto _66;
  } else {
    goto _69;
  }

  } while (1); /* end of syntactic loop '' */
_68:
  _57 = memcpy(((&__user_info.field5.array[((int32_t)0)])), ((&_55->field0.array[((int32_t)0)])), 6);
  _59__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _70;

_69:
  _59__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _70;

_70:
  _59 = _59__PHI_TEMPORARY;
  return _59;
}


static struct l_struct_struct_OC_conn_info* get_conn_for_addr(uint8_t* _71) {
  struct l_struct_struct_OC_conn_info* _72;
  struct l_struct_struct_OC_conn_info* _72__PHI_TEMPORARY;
  uint32_t _73;
  uint64_t _74;
  struct l_struct_struct_OC_conn_info* _75;
  struct l_struct_struct_OC_conn_info* _76;
  struct l_struct_struct_OC_conn_info* _76__PHI_TEMPORARY;

  _72__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _77;

  do {     /* Syntactic loop '' to make GCC happy */
_77:
  _72 = _72__PHI_TEMPORARY;
  _73 =  /*tail*/ memcmp(_71, ((&_72->field0.array[((int32_t)0)])), 6);
  if ((((_73 == 0u)&1))) {
    goto _78;
  } else {
    goto _79;
  }

_78:
  _74 = ((*(((uint64_t*)((&_72->field5)))))&4294967295);
  if (((((((_74 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _79;
  } else {
    _76__PHI_TEMPORARY = _72;   /* for PHI node */
    goto _80;
  }

_79:
  _75 = (&_72[((int32_t)1)]);
  if ((((((uint32_t)_75) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _72__PHI_TEMPORARY = _75;   /* for PHI node */
    goto _77;
  } else {
    _76__PHI_TEMPORARY = ((struct l_struct_struct_OC_conn_info*)/*NULL*/0);   /* for PHI node */
    goto _80;
  }

  } while (1); /* end of syntactic loop '' */
_80:
  _76 = _76__PHI_TEMPORARY;
  return _76;
}


struct l_struct_struct_OC_conn_info* get_bt_current_conn(uint8_t _81) {
  struct l_struct_struct_OC_conn_info* _82;
  struct l_struct_struct_OC_conn_info* _82__PHI_TEMPORARY;
  uint64_t _83;
  uint16_t _84;
  uint16_t _85;
  struct l_struct_struct_OC_conn_info* _86;
  struct l_struct_struct_OC_conn_info* _87;
  struct l_struct_struct_OC_conn_info* _87__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _88;
  struct l_struct_struct_OC_conn_info* _88__PHI_TEMPORARY;
  uint32_t _89;
  uint32_t _89__PHI_TEMPORARY;
  uint64_t _90;
  uint16_t _91;
  uint16_t _92;
  uint32_t _93;
  struct l_struct_struct_OC_conn_info* _94;
  uint32_t _95;
  uint32_t _95__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _96;
  struct l_struct_struct_OC_conn_info* _96__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _97;
  struct l_struct_struct_OC_conn_info* _98;
  struct l_struct_struct_OC_conn_info* _99;
  struct l_struct_struct_OC_conn_info* _99__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _100;
  struct l_struct_struct_OC_conn_info* _100__PHI_TEMPORARY;

  switch (_81) {
  default:
    goto _101;
  case ((uint8_t)1):
    goto _102;
  case ((uint8_t)0):
    goto _103;
  }

_103:
  _87__PHI_TEMPORARY = ((struct l_struct_struct_OC_conn_info*)/*NULL*/0);   /* for PHI node */
  _88__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _89__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _104;

_102:
  _82__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _105;

  do {     /* Syntactic loop '' to make GCC happy */
_105:
  _82 = _82__PHI_TEMPORARY;
  _83 = ((*(((uint64_t*)((&_82->field5)))))&4294967295);
  if (((((((_83 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _106;
  } else {
    goto _107;
  }

_107:
  _84 = *((&_82->field1));
  if ((((_84 == ((uint16_t)0))&1))) {
    goto _106;
  } else {
    goto _108;
  }

_108:
  _85 = *((&_82->field2));
  if (((((llvm_and_u16(_85, 8320)) == ((uint16_t)0))&1))) {
    goto _106;
  } else {
    _99__PHI_TEMPORARY = _82;   /* for PHI node */
    goto _109;
  }

_106:
  _86 = (&_82[((int32_t)1)]);
  if ((((((uint32_t)_86) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _82__PHI_TEMPORARY = _86;   /* for PHI node */
    goto _105;
  } else {
    _99__PHI_TEMPORARY = ((struct l_struct_struct_OC_conn_info*)/*NULL*/0);   /* for PHI node */
    goto _109;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '' to make GCC happy */
_104:
  _87 = _87__PHI_TEMPORARY;
  _88 = _88__PHI_TEMPORARY;
  _89 = _89__PHI_TEMPORARY;
  _90 = ((*(((uint64_t*)((&_88->field5)))))&4294967295);
  if (((((((_90 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    _95__PHI_TEMPORARY = _89;   /* for PHI node */
    _96__PHI_TEMPORARY = _87;   /* for PHI node */
    goto _110;
  } else {
    goto _111;
  }

_111:
  _91 = *((&_88->field1));
  if ((((_91 == ((uint16_t)0))&1))) {
    _95__PHI_TEMPORARY = _89;   /* for PHI node */
    _96__PHI_TEMPORARY = _87;   /* for PHI node */
    goto _110;
  } else {
    goto _112;
  }

_112:
  _92 = *((&_88->field2));
  _93 = llvm_add_u32((((uint32_t)(bool)((((llvm_and_u16(_92, 8320)) == ((uint16_t)0))&1)))), _89);
  _94 = llvm_select_pstruct_struct_OC_conn_info(((((llvm_and_u16(_92, 8320)) == ((uint16_t)0))&1)), _88, _87);
  _95__PHI_TEMPORARY = _93;   /* for PHI node */
  _96__PHI_TEMPORARY = _94;   /* for PHI node */
  goto _110;

_110:
  _95 = _95__PHI_TEMPORARY;
  _96 = _96__PHI_TEMPORARY;
  _97 = (&_88[((int32_t)1)]);
  if ((((((uint32_t)_97) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _87__PHI_TEMPORARY = _96;   /* for PHI node */
    _88__PHI_TEMPORARY = _97;   /* for PHI node */
    _89__PHI_TEMPORARY = _95;   /* for PHI node */
    goto _104;
  } else {
    goto _113;
  }

  } while (1); /* end of syntactic loop '' */
_113:
  switch (_95) {
  default:
    goto _101;
  case 0u:
    _100__PHI_TEMPORARY = ((struct l_struct_struct_OC_conn_info*)/*NULL*/0);   /* for PHI node */
    goto _114;
  case 1u:
    goto _115;
  }

_115:
  _100__PHI_TEMPORARY = _96;   /* for PHI node */
  goto _114;

_101:
  _98 =  /*tail*/ get_conn_for_addr(((&__user_info.field5.array[((int32_t)0)])));
  _100__PHI_TEMPORARY = _98;   /* for PHI node */
  goto _114;

_109:
  _99 = _99__PHI_TEMPORARY;
  _100__PHI_TEMPORARY = _99;   /* for PHI node */
  goto _114;

_114:
  _100 = _100__PHI_TEMPORARY;
  return _100;
}


uint8_t is_bt_conn_hfp_hangup(uint8_t* _116) {
  struct l_struct_struct_OC_conn_info* _117;
  struct l_struct_struct_OC_conn_info* _117__PHI_TEMPORARY;
  uint32_t _118;
  uint64_t _119;
  uint16_t _120;
  struct l_struct_struct_OC_conn_info* _121;
  uint8_t _122;
  uint8_t _122__PHI_TEMPORARY;

  _117__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _123;

  do {     /* Syntactic loop '' to make GCC happy */
_123:
  _117 = _117__PHI_TEMPORARY;
  _118 =  /*tail*/ memcmp(_116, ((&_117->field0.array[((int32_t)0)])), 6);
  if ((((_118 == 0u)&1))) {
    goto _124;
  } else {
    goto _125;
  }

_124:
  _119 = ((*(((uint64_t*)((&_117->field5)))))&4294967295);
  if (((((((_119 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _125;
  } else {
    goto _126;
  }

_126:
  _120 = *((&_117->field1));
  if ((((((((((_119 & 15)&4294967295)) == UINT64_C(5))&1)) | (((_120 == ((uint16_t)0))&1)))&1))) {
    goto _125;
  } else {
    _122__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _127;
  }

_125:
  _121 = (&_117[((int32_t)1)]);
  if ((((((uint32_t)_121) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _117__PHI_TEMPORARY = _121;   /* for PHI node */
    goto _123;
  } else {
    _122__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _127;
  }

  } while (1); /* end of syntactic loop '' */
_127:
  _122 = _122__PHI_TEMPORARY;
  return _122;
}


void btstack_avrcp_ch_creat_ok(void) {
  return;
}


void updata_profile_channels_status(uint8_t* _128, uint32_t _129, uint32_t _130, uint8_t _131) {
  struct l_struct_struct_OC_conn_info* _132;
  uint8_t _133;
  uint32_t _134;
  uint8_t* _135;
  uint8_t _136;
  struct l_struct_struct_OC__stack_config* _137;
  uint16_t _138;
  uint8_t _139;
  uint32_t _140;
  uint64_t* _141;
  uint64_t _142;
  uint16_t* _143;
  uint16_t _144;
  uint32_t _145;
  uint32_t _146;
  uint16_t _147;
  uint16_t _148;
  uint16_t _149;
  uint16_t _149__PHI_TEMPORARY;
  uint64_t* _150;
  uint64_t _151;
  uint64_t _152;
  uint32_t _153;
  uint64_t _154;
  uint32_t _155;
  struct l_struct_struct_OC__stack_config* _156;
  uint32_t _157;
  uint32_t _158;
  uint64_t _159;
  uint32_t _160;
  uint32_t _161;
  struct l_struct_struct_OC__stack_config* _162;
  uint32_t _163;
  uint32_t _164;
  uint8_t _165;
  uint64_t _166;
  uint16_t _167;
  uint32_t _168;
  uint16_t _169;
  uint16_t _170;
  uint8_t _171;
  uint8_t _172;
  uint64_t* _173;
  uint64_t _174;
  uint8_t _175;
  uint64_t _176;
  uint32_t _177;
  uint8_t _178;
  uint8_t _178__PHI_TEMPORARY;
  uint16_t _179;
  uint32_t _180;
  uint8_t _181;
  uint32_t _182;
  uint32_t _183;
  uint32_t _184;
  uint32_t _185;
  uint64_t* _186;
  uint64_t _187;
  uint8_t _188;
  uint32_t _189;
  uint32_t _190;
  uint64_t* _191;
  uint64_t _192;
  uint8_t _193;
  uint8_t _194;
  uint32_t _195;
  uint16_t _196;
  uint64_t* _197;
  uint64_t* _198;
  uint64_t* _198__PHI_TEMPORARY;
  uint32_t _199;
  uint16_t _200;
  uint16_t _201;
  uint32_t _202;
  uint64_t _203;
  uint16_t _204;
  uint32_t _205;
  uint64_t* _206;
  uint64_t _207;
  uint8_t _208;
  uint32_t _209;
  uint32_t _210;
  uint32_t _211;
  uint64_t* _212;
  uint64_t _213;
  uint64_t _214;
  uint64_t _215;
  uint64_t _215__PHI_TEMPORARY;
  uint16_t* _216;
  uint16_t _217;
  uint32_t _218;
  uint16_t _219;
  uint16_t _220;
  uint16_t _221;
  uint16_t _222;
  uint16_t _222__PHI_TEMPORARY;
  uint16_t _223;
  uint16_t _224;
  uint16_t _224__PHI_TEMPORARY;
  uint8_t _225;
  uint32_t _226;
  struct l_struct_struct_OC__stack_config* _227;
  uint8_t _228;
  uint16_t _229;
  uint64_t _230;
  uint16_t _231;
  uint8_t _232;
  uint32_t _233;
  uint16_t _234;
  uint16_t _235;
  uint64_t* _236;
  uint64_t _237;
  uint64_t* _238;
  uint64_t _239;
  uint8_t _240;
  uint32_t _241;
  uint64_t* _242;
  uint64_t _243;
  uint8_t _244;
  l_fptr_1* _245;
  uint32_t _246;

  _132 =  /*tail*/ get_conn_for_addr(_128);
  if ((((_132 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _247;
  } else {
    goto _248;
  }

_248:
  switch (_129) {
  default:
    goto _249;
  case 2u:
    goto _250;
  case 1u:
    goto _251;
  case 0u:
    goto _252;
  }

_250:
  _133 = l2cap_debug_enable;
  if ((((((int8_t)_133) < ((int8_t)((uint8_t)0)))&1))) {
    goto _253;
  } else {
    goto _254;
  }

_253:
  _134 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), _130);
  goto _254;

_254:
  _135 = (&_132->field3);
  _136 = *_135;
  *_135 = (((uint8_t)((((uint32_t)(uint8_t)_136)) | _130)));
  goto _249;

_251:
  _137 = user_stack_configs;
  _138 = *((&_137->field5));
  if (((((llvm_and_u16(_138, 48)) == ((uint16_t)0))&1))) {
    goto _255;
  } else {
    goto _256;
  }

_256:
  _139 = l2cap_debug_enable;
  if ((((((int8_t)_139) < ((int8_t)((uint8_t)0)))&1))) {
    goto _257;
  } else {
    goto _258;
  }

_257:
  _140 =  /*tail*/ puts(((&str_OC_36.array[((int32_t)0)])));
  goto _258;

_258:
  if (((((_130 & 8320) == 0u)&1))) {
    goto _255;
  } else {
    goto _259;
  }

_259:
  _141 = ((uint64_t*)((&_132->field5)));
  _142 = ((*_141)&4294967295);
  *_141 = (((((_142 | UINT64_C(274877906944))&4294967295))) & 4294967295);
  goto _255;

_255:
  _143 = (&_132->field2);
  _144 = *_143;
  if ((((_144 == ((uint16_t)0))&1))) {
    goto _260;
  } else {
    goto _261;
  }

_260:
  *((&__user_info.field9)) = 10;
  _145 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  if ((((_131 != ((uint8_t)0))&1))) {
    goto _262;
  } else {
    goto _263;
  }

_262:
  _146 =  /*tail*/ user_send_cmd_prepare(11, 0, ((uint8_t*)/*NULL*/0));
  goto _263;

_263:
  _147 = *((&__user_info.field10));
  if (((((llvm_and_u16(_147, 7)) == ((uint16_t)1))&1))) {
    goto _264;
  } else {
    _149__PHI_TEMPORARY = _147;   /* for PHI node */
    goto _265;
  }

_264:
   /*tail*/ update_bt_current_status(((&_132->field0.array[((int32_t)0)])), 6, 45);
  _148 = *((&__user_info.field10));
  _149__PHI_TEMPORARY = _148;   /* for PHI node */
  goto _265;

_265:
  _149 = _149__PHI_TEMPORARY;
  if (((((llvm_and_u16(_149, 7)) == ((uint16_t)2))&1))) {
    goto _266;
  } else {
    goto _267;
  }

_266:
   /*tail*/ update_bt_current_status(((&_132->field0.array[((int32_t)0)])), 7, 45);
  goto _267;

_267:
  _150 = ((uint64_t*)((&_132->field5)));
  _151 = ((*_150)&4294967295);
   /*tail*/ bt_event_update_to_user(_128, 1129270784u, 29, ((((uint32_t)(((llvm_lshr_u40(_151, 32))&4294967295)))) & 1));
  _152 = ((*_150)&4294967295);
  _153 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 29, ((((uint32_t)(((llvm_lshr_u40(_152, 32))&4294967295)))) & 1), _128);
  if (((((((_130 == 2u)&1)) & (((_131 != ((uint8_t)0))&1)))&1))) {
    goto _268;
  } else {
    goto _269;
  }

_268:
  _154 = ((*_150)&4294967295);
  if (((((((_154 & INT64_C(4294967296))&4294967295)) == UINT64_C(0))&1))) {
    goto _270;
  } else {
    goto _271;
  }

_271:
  _155 =  /*tail*/ __bt_profile_enable(4);
  if ((((_155 == 0u)&1))) {
    goto _272;
  } else {
    goto _273;
  }

_273:
  _156 = user_stack_configs;
  _157 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_156->field9)));
  if (((((_157 & 8388608) == 0u)&1))) {
    goto _274;
  } else {
    goto _275;
  }

_274:
  _158 =  /*tail*/ user_send_cmd_prepare(65, 0, ((uint8_t*)/*NULL*/0));
  goto _276;

_275:
  _159 = ((*_150)&4294967295);
  *_150 = (((((_159 & INT64_C(-4294967297))&4294967295))) & 4294967295);
  goto _276;

_272:
  _160 =  /*tail*/ __bt_profile_enable(8);
  if ((((_160 == 0u)&1))) {
    goto _276;
  } else {
    goto _277;
  }

_277:
  _161 =  /*tail*/ user_send_cmd_prepare(62, 0, ((uint8_t*)/*NULL*/0));
  goto _276;

_270:
  _162 = user_stack_configs;
  _163 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_162->field9)));
  if (((((_163 & 8388608) == 0u)&1))) {
    goto _278;
  } else {
    goto _279;
  }

_278:
  *_150 = ((((((((_154 & -15728641)&4294967295)) | 9437184)&4294967295))) & 4294967295);
  goto _279;

_279:
  _164 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  goto _276;

_269:
  _165 = btstack_emitter_support;
  if (((((((_130 == 128u)&1)) & (((_165 != ((uint8_t)0))&1)))&1))) {
    goto _280;
  } else {
    goto _261;
  }

_280:
  _166 = ((*_150)&4294967295);
  if (((((((_166 & INT64_C(4294967296))&4294967295)) == UINT64_C(0))&1))) {
    goto _276;
  } else {
    goto _281;
  }

_281:
  _167 = *_143;
  if (((((llvm_and_u16(_167, 8192)) == ((uint16_t)0))&1))) {
    goto _282;
  } else {
    goto _276;
  }

_282:
  _168 =  /*tail*/ user_emitter_cmd_prepare(65, 0, ((uint8_t*)/*NULL*/0));
  goto _276;

_261:
  if ((((_130 == 16u)&1))) {
    goto _283;
  } else {
    goto _276;
  }

_283:
  _169 = *_143;
  if ((((_169 == ((uint16_t)0))&1))) {
    goto _276;
  } else {
    goto _284;
  }

_276:
  _170 = *_143;
  _171 = hid_conn_depend_on_dev_company;
  if ((((((((llvm_and_u16(_170, 16)) != ((uint16_t)0))&1)) & (((_171 == ((uint8_t)1))&1)))&1))) {
    goto _285;
  } else {
    _178__PHI_TEMPORARY = _171;   /* for PHI node */
    goto _286;
  }

_284:
  _172 = hid_conn_depend_on_dev_company;
  if ((((_172 == ((uint8_t)1))&1))) {
    goto _285;
  } else {
    _178__PHI_TEMPORARY = _172;   /* for PHI node */
    goto _286;
  }

_285:
  _173 = ((uint64_t*)((&_132->field5)));
  _174 = ((*_173)&4294967295);
  if (((((((_174 & INT64_C(137438953472))&4294967295)) == UINT64_C(0))&1))) {
    goto _287;
  } else {
    _178__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _286;
  }

_287:
  _175 =  /*tail*/ remote_dev_company_ioctrl(_128, 0, 0);
  if ((((_175 == ((uint8_t)2))&1))) {
    _178__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _286;
  } else {
    goto _288;
  }

_288:
  _176 = ((*_173)&4294967295);
  *_173 = (((((_176 | INT64_C(137438953472))&4294967295))) & 4294967295);
  _177 =  /*tail*/ user_send_cmd_prepare(81, 0, ((uint8_t*)/*NULL*/0));
  _178__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _286;

_286:
  _178 = _178__PHI_TEMPORARY;
  _179 = *_143;
  _180 = (((uint32_t)(uint16_t)_179)) | _130;
  *_143 = (((uint16_t)_180));
  _181 = *((&__user_info.field9));
  if ((((_181 == ((uint8_t)0))&1))) {
    goto _289;
  } else {
    goto _290;
  }

_290:
  *((&__user_info.field9)) = (llvm_add_u8(_181, 2));
  goto _289;

_289:
  _182 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (_180 & 65535));
  switch (_130) {
  default:
    goto _291;
  case 2u:
    goto _292;
  case 4u:
    goto _293;
  }

_292:
  _183 =  /*tail*/ __bt_profile_enable(4);
  if ((((_183 == 0u)&1))) {
    goto _294;
  } else {
    goto _295;
  }

_294:
  _184 =  /*tail*/ __bt_profile_enable(16);
  if ((((_184 == 0u)&1))) {
    goto _295;
  } else {
    goto _296;
  }

_296:
  _185 =  /*tail*/ user_send_cmd_prepare(77, 0, ((uint8_t*)/*NULL*/0));
  goto _295;

_293:
  _186 = ((uint64_t*)((&_132->field5)));
  _187 = ((*_186)&4294967295);
  *_186 = (((((_187 & -15728641)&4294967295))) & 4294967295);
  if (((((((_131 == ((uint8_t)0))&1)) | ((((((_187 & INT64_C(4294967296))&4294967295)) == UINT64_C(0))&1)))&1))) {
    _198__PHI_TEMPORARY = _186;   /* for PHI node */
    goto _297;
  } else {
    goto _298;
  }

_298:
  if ((((_178 == ((uint8_t)1))&1))) {
    goto _299;
  } else {
    goto _300;
  }

_299:
  _188 =  /*tail*/ remote_dev_company_ioctrl(_128, 0, 0);
  if ((((_188 == ((uint8_t)2))&1))) {
    goto _301;
  } else {
    _198__PHI_TEMPORARY = _186;   /* for PHI node */
    goto _297;
  }

_301:
  _189 =  /*tail*/ user_send_cmd_prepare(77, 0, ((uint8_t*)/*NULL*/0));
  _198__PHI_TEMPORARY = _186;   /* for PHI node */
  goto _297;

_300:
  _190 =  /*tail*/ user_send_cmd_prepare(77, 0, ((uint8_t*)/*NULL*/0));
  _198__PHI_TEMPORARY = _186;   /* for PHI node */
  goto _297;

_291:
  if (((((_130 & 32) == 0u)&1))) {
    goto _302;
  } else {
    goto _303;
  }

_303:
  _191 = ((uint64_t*)((&_132->field5)));
  _192 = ((*_191)&4294967295);
  _193 = ((uint8_t)(((llvm_lshr_u40(_192, 35))&4294967295)));
  if (((((llvm_and_u8(_193, 3)) == ((uint8_t)0))&1))) {
    goto _304;
  } else {
    goto _305;
  }

_305:
  _194 = l2cap_debug_enable;
  if ((((((int8_t)_194) < ((int8_t)((uint8_t)0)))&1))) {
    goto _306;
  } else {
    goto _307;
  }

_306:
  _195 =  /*tail*/ puts(((&str_OC_35.array[((int32_t)0)])));
  goto _307;

_307:
  _196 = *((&_132->field1));
   /*tail*/ hci_disconnect_cmd(_196, 19);
  goto _302;

_304:
  *_191 = (((((((((((((uint64_t)(uint8_t)(llvm_or_u8((llvm_and_u8(_193, 2)), 1))))&4294967295)) << 35)&4294967295)) | (((_192 & INT64_C(-103079215105))&4294967295)))&4294967295))) & 4294967295);
  goto _302;

_302:
  if (((((_130 & 4) == 0u)&1))) {
    goto _295;
  } else {
    goto _308;
  }

_308:
  _197 = ((uint64_t*)((&_132->field5)));
  _198__PHI_TEMPORARY = _197;   /* for PHI node */
  goto _297;

_297:
  _198 = _198__PHI_TEMPORARY;
  _199 =  /*tail*/ update_multi_bd_status(_128, 14, -1);
  _200 = *_143;
   /*tail*/ bt_event_update_to_user(_128, 1129270784u, 39, (((uint32_t)(uint16_t)_200)));
  _201 = *_143;
  _202 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 39, (((uint32_t)(uint16_t)_201)), _128);
  _203 = ((*_198)&4294967295);
  *_198 = (((((((((((((uint64_t)(uint8_t)(llvm_or_u8((llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_203, 35))&4294967295)))), 1)), 2))))&4294967295)) << 35)&4294967295)) | (((_203 & INT64_C(-103079215105))&4294967295)))&4294967295))) & 4294967295);
  goto _295;

_295:
  _204 = *_143;
  _205 = ((uint32_t)(uint16_t)_204);
  if ((((((((_205 & 4) == 0u)&1)) | ((((_205 & 8224) == 0u)&1)))&1))) {
    goto _309;
  } else {
    goto _310;
  }

_310:
  _206 = ((uint64_t*)((&_132->field5)));
  _207 = ((*_206)&4294967295);
  *_206 = (((((_207 & INT64_C(-103079215105))&4294967295))) & 4294967295);
  _208 = btstack_emitter_support;
  if ((((_208 == ((uint8_t)0))&1))) {
    goto _309;
  } else {
    goto _311;
  }

_311:
  *_206 = ((((((((_207 & INT64_C(-103094943745))&4294967295)) | 6291456)&4294967295))) & 4294967295);
  _209 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  goto _309;

_309:
  if (((((_130 & 8) == 0u)&1))) {
    goto _312;
  } else {
    goto _313;
  }

_313:
   /*tail*/ btstack_avrcp_ch_creat_ok();
  goto _312;

_312:
  if ((((_131 == ((uint8_t)0))&1))) {
    goto _249;
  } else {
    goto _314;
  }

_314:
  switch (_130) {
  default:
    goto _249;
  case 4096u:
    goto _315;
  case 128u:
    goto _315;
  case 2u:
    goto _315;
  case 1u:
    goto _315;
  }

_315:
  _210 =  /*tail*/ user_send_cmd_prepare(11, 0, ((uint8_t*)/*NULL*/0));
  goto _249;

_252:
  switch (_130) {
  default:
    goto _316;
  case 128u:
    goto _317;
  case 2u:
    goto _317;
  }

_317:
  _211 =  /*tail*/ user_at_cmd_free(_132);
  _212 = ((uint64_t*)((&_132->field5)));
  _213 = ((*_212)&4294967295);
  if (((((((_213 & 15)&4294967295)) == UINT64_C(5))&1))) {
    _215__PHI_TEMPORARY = _213;   /* for PHI node */
    goto _318;
  } else {
    goto _319;
  }

_319:
   /*tail*/ update_bt_current_status(((&_132->field0.array[((int32_t)0)])), 16, 45);
  _214 = ((*_212)&4294967295);
  _215__PHI_TEMPORARY = _214;   /* for PHI node */
  goto _318;

_318:
  _215 = ((_215__PHI_TEMPORARY)&4294967295);
  *_212 = ((((((((_215 & -16)&4294967295)) | 5)&4294967295))) & 4294967295);
  goto _316;

_316:
  _216 = (&_132->field2);
  _217 = *_216;
  if ((((_217 == ((uint16_t)0))&1))) {
    goto _320;
  } else {
    goto _321;
  }

_321:
  _218 = (((uint32_t)(uint16_t)_217)) & (_130 ^ 65535);
  _219 = ((uint16_t)_218);
  *_216 = _219;
  if ((((_218 == 0u)&1))) {
    goto _322;
  } else {
    _224__PHI_TEMPORARY = _219;   /* for PHI node */
    goto _323;
  }

_322:
  _220 = *((&__user_info.field10));
  if (((((llvm_and_u16(_220, 7)) == ((uint16_t)2))&1))) {
    goto _324;
  } else {
    _222__PHI_TEMPORARY = _220;   /* for PHI node */
    goto _325;
  }

_324:
   /*tail*/ update_bt_current_status(((&_132->field0.array[((int32_t)0)])), 10, 43);
  _221 = *((&__user_info.field10));
  _222__PHI_TEMPORARY = _221;   /* for PHI node */
  goto _325;

_325:
  _222 = _222__PHI_TEMPORARY;
  if (((((llvm_and_u16(_222, 7)) == ((uint16_t)1))&1))) {
    goto _326;
  } else {
    goto _327;
  }

_326:
   /*tail*/ update_bt_current_status(((&_132->field0.array[((int32_t)0)])), 9, 43);
  goto _327;

_327:
  _223 = *_216;
  _224__PHI_TEMPORARY = _223;   /* for PHI node */
  goto _323;

_323:
  _224 = _224__PHI_TEMPORARY;
  switch (_224) {
  default:
    goto _320;
  case ((uint16_t)0):
    goto _328;
  case ((uint16_t)1):
    goto _328;
  case ((uint16_t)64):
    goto _328;
  }

_328:
  _225 = l2cap_debug_enable;
  if (((((llvm_and_u8(_225, 32)) == ((uint8_t)0))&1))) {
    goto _329;
  } else {
    goto _330;
  }

_330:
  _226 =  /*tail*/ puts(((&_OC_str_OC_4.array[((int32_t)0)])));
  goto _329;

_329:
  _227 = user_stack_configs;
  _228 = *((&_227->field15));
  if (((((llvm_and_u8(_228, 1)) == ((uint8_t)0))&1))) {
    goto _331;
  } else {
    goto _320;
  }

_331:
  _229 = *((&_132->field1));
   /*tail*/ hci_disconnect_cmd(_229, 19);
  goto _320;

_320:
  if ((((_130 == 8u)&1))) {
    goto _332;
  } else {
    goto _333;
  }

_332:
  _230 = ((*(((uint64_t*)((&_132->field5)))))&4294967295);
  if (((((((_230 & INT64_C(103079215104))&4294967295)) == UINT64_C(0))&1))) {
    goto _333;
  } else {
    goto _334;
  }

_334:
  _231 = *_216;
  if (((((llvm_and_u16(_231, 36)) == ((uint16_t)32))&1))) {
    goto _335;
  } else {
    goto _333;
  }

_335:
  _232 = l2cap_debug_enable;
  if ((((((int8_t)_232) < ((int8_t)((uint8_t)0)))&1))) {
    goto _336;
  } else {
    goto _337;
  }

_336:
  _233 =  /*tail*/ puts(((&str_OC_35.array[((int32_t)0)])));
  goto _337;

_337:
  _234 = *((&_132->field1));
   /*tail*/ hci_disconnect_cmd(_234, 19);
  goto _333;

_333:
  _235 = *_216;
  if (((((llvm_and_u16(_235, 36)) == ((uint16_t)0))&1))) {
    goto _338;
  } else {
    goto _339;
  }

_338:
  _236 = ((uint64_t*)((&_132->field5)));
  _237 = ((*_236)&4294967295);
  *_236 = (((((_237 & INT64_C(-103079215105))&4294967295))) & 4294967295);
  goto _339;

_339:
  if (((((llvm_and_u16(_235, 16)) == ((uint16_t)0))&1))) {
    goto _340;
  } else {
    goto _341;
  }

_340:
  _238 = ((uint64_t*)((&_132->field5)));
  _239 = ((*_238)&4294967295);
  *_238 = (((((_239 & INT64_C(-137438953473))&4294967295))) & 4294967295);
  goto _341;

_341:
  _240 = l2cap_debug_enable;
  if ((((((int8_t)_240) < ((int8_t)((uint8_t)0)))&1))) {
    goto _342;
  } else {
    goto _249;
  }

_342:
  _241 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint16_t)_235)));
  goto _249;

_249:
  _242 = ((uint64_t*)((&_132->field5)));
  _243 = ((*_242)&4294967295);
  if (((((((_130 == 4u)&1)) & ((((((_243 & INT64_C(4294967296))&4294967295)) != UINT64_C(0))&1)))&1))) {
    goto _343;
  } else {
    goto _247;
  }

_343:
  *_242 = (((((_243 & INT64_C(-4294967297))&4294967295))) & 4294967295);
  _244 = iap_profile_support;
  _245 = *((&profile_cmd_hdl_str.field8));
  if (((((((_244 != ((uint8_t)0))&1)) & (((_245 != ((l_fptr_1*)/*NULL*/0))&1)))&1))) {
    goto _344;
  } else {
    goto _247;
  }

_344:
  _246 =  /*tail*/ _245(((&_132->field0.array[((int32_t)0)])), 0, 65226);
  goto _247;

_247:
  return;
}


void tws_host_timeout_set(void) {
  uint32_t _345;

  *((&__user_info.field9)) = 10;
  _345 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
}


uint32_t user_send_cmd_prepare(uint32_t _346, uint16_t _347, uint8_t* _348) {
  struct l_struct_struct_OC_user_cmd_ctrl* _349;
  uint8_t* _350;
  uint8_t _351;
  uint32_t _352;
  uint8_t _353;
  uint8_t _354;
  uint8_t _355;
  uint16_t _356;
  uint8_t _357;
  uint32_t _358;
  uint8_t* _359;
  uint16_t _360;
  uint32_t _361;
  uint8_t* _362;
  uint16_t _363;
  uint8_t _364;
  uint8_t _364__PHI_TEMPORARY;
  uint32_t _365;
  uint8_t* _366;
  uint8_t _367;
  uint8_t* _368;
  uint32_t _369;
  uint8_t* _370;
  struct l_struct_struct_OC_conn_info* _371;
  uint8_t _372;
  uint8_t _373;
  uint8_t _373__PHI_TEMPORARY;
  uint8_t _374;
  uint8_t _375;
  uint8_t _376;
  uint8_t _377;
  uint16_t _378;
  uint8_t* _379;
  uint16_t _380;
  uint32_t _381;
  uint32_t _382;
  uint32_t _383;
  uint8_t* _384;
  struct l_struct_struct_OC_user_cmd_ctrl* _385;
  uint8_t _386;
  uint8_t _387;
  uint32_t _388;
  uint32_t _388__PHI_TEMPORARY;

  _349 = g_user_cmd;
  if ((((_349 == ((struct l_struct_struct_OC_user_cmd_ctrl*)/*NULL*/0))&1))) {
    _388__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _389;
  } else {
    goto _390;
  }

_390:
  switch (_346) {
  default:
    goto _391;
  case 32u:
    goto _392;
  case 8u:
    goto _393;
  case 25u:
    goto _394;
  case 31u:
    goto _395;
  case 109u:
    goto _396;
  case 6u:
    goto _397;
  case 3u:
    goto _398;
  case 1u:
    goto _398;
  case 19u:
    goto _399;
  case 131u:
    goto _400;
  case 130u:
    goto _401;
  case 16u:
    goto _401;
  case 74u:
    goto _402;
  case 132u:
    goto _403;
  case 133u:
    goto _404;
  case 88u:
    goto _405;
  case 135u:
    goto _406;
  case 136u:
    goto _407;
  case 134u:
    goto _408;
  }

_392:
  if ((((((uint16_t)_347) < ((uint16_t)((uint16_t)3)))&1))) {
    _388__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _389;
  } else {
    goto _409;
  }

_409:
  *((&__user_info.field0.field2)) = (((uint8_t)_347));
  _350 = memcpy(((&_349->field3.array[((int32_t)0)])), _348, (((uint32_t)(uint16_t)_347)));
  goto _410;

_393:
  _351 = *((&__user_info.field3.field0));
  if ((((_351 == ((uint8_t)0))&1))) {
    goto _411;
  } else {
    _388__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _389;
  }

_411:
  *((&__user_info.field3.field0)) = 4;
  _352 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  goto _410;

_394:
  if ((((_347 == ((uint16_t)1))&1))) {
    goto _412;
  } else {
    _388__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _389;
  }

_412:
  _353 = *_348;
  *((&__user_info.field0.field6)) = _353;
  goto _410;

_395:
  if ((((_347 == ((uint16_t)1))&1))) {
    goto _413;
  } else {
    _388__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _389;
  }

_413:
  _354 = *((&__user_info.field0.field7));
  if ((((_354 == ((uint8_t)0))&1))) {
    goto _414;
  } else {
    _388__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _389;
  }

_414:
  _355 = *_348;
  *((&__user_info.field0.field7)) = _355;
  goto _410;

_396:
  _356 = *((&__user_info.field0.field5));
  if ((((_356 == ((uint16_t)0))&1))) {
    goto _415;
  } else {
    _388__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _389;
  }

_415:
  *((&__user_info.field0.field5)) = _347;
  *((&__user_info.field0.field4)) = _348;
  _357 = l2cap_debug_enable;
  if ((((((int8_t)_357) < ((int8_t)((uint8_t)0)))&1))) {
    goto _416;
  } else {
    goto _410;
  }

_416:
  _358 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), (((uint32_t)(uint16_t)_347)));
  goto _410;

_397:
  _359 = memcpy(((&__user_info.field3.field2.array[((int32_t)0)])), _348, 6);
  goto _410;

_398:
  _360 = *((&__user_info.field10));
  _361 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16(_360, 7)))) == ((llvm_lshr_u32(_361, 4)) & 3))&1))) {
    _388__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _389;
  } else {
    goto _417;
  }

_417:
  if ((((((int8_t)(((uint8_t)_360))) < ((int8_t)((uint8_t)0)))&1))) {
    goto _410;
  } else {
    goto _418;
  }

_418:
  if ((((_347 == ((uint16_t)6))&1))) {
    goto _419;
  } else {
    _388__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _389;
  }

_419:
  _362 = memcpy(((&__user_info.field3.field3.array[((int32_t)0)])), _348, 6);
  goto _410;

_399:
  _363 = llvm_select_u16((((((uint16_t)_347) < ((uint16_t)((uint16_t)14)))&1)), _347, 14);
  _364__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _420;

  do {     /* Syntactic loop '' to make GCC happy */
_420:
  _364 = _364__PHI_TEMPORARY;
  _365 = ((uint32_t)(uint8_t)_364);
  if ((((_364 == ((uint8_t)1))&1))) {
    goto _421;
  } else {
    goto _422;
  }

_422:
  _366 = (&_349->field9.array[((int32_t)_365)]);
  _367 = *_366;
  if ((((_367 == ((uint8_t)-1))&1))) {
    goto _423;
  } else {
    _364__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _420;
  }

  } while (1); /* end of syntactic loop '' */
_423:
  _368 = memcpy((((uint8_t*)((&_349->field10.array[((int32_t)_365)])))), _348, (((uint32_t)(uint16_t)_363)));
  *_366 = _364;
  goto _410;

_400:
  _369 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)_348)));
  __UNALIGNED_LOAD__(uint32_t, 1, ((&_349->field21))) = _369;
  goto _410;

_401:
  _370 = memcpy(((&_349->field8)), _348, (((uint32_t)(bool)(((_347 != ((uint16_t)0))&1)))));
  goto _410;

_402:
  _371 =  /*tail*/ get_bt_current_conn(0);
  if ((((_371 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _424;
  } else {
    goto _425;
  }

_425:
  _372 =  /*tail*/ sco_connection_disconnect(((&_371->field0.array[((int32_t)0)])));
  if ((((_372 == ((uint8_t)0))&1))) {
    goto _426;
  } else {
    goto _424;
  }

_426:
   /*tail*/ os_time_dly(1);
  goto _424;

_424:
  _373__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _427;

  do {     /* Syntactic loop '' to make GCC happy */
_427:
  _373 = _373__PHI_TEMPORARY;
  _374 =  /*tail*/ ((l_fptr_2*)(void*)l2cap_disconnect_all_channel)();
  if ((((_374 == ((uint8_t)0))&1))) {
    goto _428;
  } else {
    goto _429;
  }

_429:
   /*tail*/ ((l_fptr_3*)(void*)stack_run_loop_resume)();
   /*tail*/ os_time_dly(3);
  _375 = llvm_add_u8(_373, 1);
  if ((((((uint8_t)_375) > ((uint8_t)((uint8_t)100)))&1))) {
    goto _428;
  } else {
    _373__PHI_TEMPORARY = _375;   /* for PHI node */
    goto _427;
  }

  } while (1); /* end of syntactic loop '' */
_403:
  _376 = *_348;
  *((&__user_info.field0.field18)) = _376;
  goto _410;

_404:
  _377 = *_348;
  *((&__user_info.field0.field19)) = _377;
  goto _410;

_405:
  _378 = *(((uint16_t*)_348));
  _379 = *(((uint8_t**)((&_348[((int32_t)4)]))));
  _380 = *(((uint16_t*)((&_348[((int32_t)2)]))));
  _381 =  /*tail*/ hid_diy_data_try_send(_378, _379, _380);
  if ((((_381 == 0u)&1))) {
    goto _410;
  } else {
    _388__PHI_TEMPORARY = _381;   /* for PHI node */
    goto _389;
  }

_406:
  _382 = *((&__user_info.field4.field1));
  if ((((_382 == 0u)&1))) {
    goto _410;
  } else {
    _388__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _389;
  }

_407:
  _383 = *((&__user_info.field4.field1));
  if ((((_383 == 0u)&1))) {
    _388__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _389;
  } else {
    goto _410;
  }

_408:
  _384 = memcpy(((&_349->field20.array[((int32_t)0)])), _348, 10);
  goto _410;

_391:
  if ((((((uint32_t)_346) > ((uint32_t)142u))&1))) {
    _388__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _389;
  } else {
    goto _410;
  }

_428:
  goto _410;

_410:
  _385 = g_user_cmd;
  _386 = *((&__user_info.field0.field1));
  _387 = llvm_add_u8(_386, 1);
  *((&__user_info.field0.field1)) = _387;
  *((&_385->field11.array[((int32_t)(((uint32_t)(uint8_t)_386)))])) = (((uint8_t)_346));
  if ((((((uint8_t)_387) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _430;
  } else {
    goto _431;
  }

_430:
  *((&__user_info.field0.field1)) = 0;
  goto _431;

_431:
   /*tail*/ ((l_fptr_3*)(void*)stack_run_loop_resume)();
  _388__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _389;

_421:
  _388__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _389;

_389:
  _388 = _388__PHI_TEMPORARY;
  return _388;
}


void update_bt_current_status(uint8_t* _432, uint8_t _433, uint8_t _434) {
  struct l_struct_struct_OC_conn_info* _435;
  uint8_t* _436;
  uint8_t _437;
  uint32_t _438;
  uint8_t _439;
  uint8_t _440;
  uint8_t _440__PHI_TEMPORARY;
  uint16_t _441;
  uint8_t* _442;
  uint8_t _443;
  uint32_t _444;
  uint8_t _445;
  uint8_t _446;
  uint8_t _446__PHI_TEMPORARY;
  uint64_t* _447;
  uint64_t _448;
  uint8_t _449;
  uint64_t _450;
  uint32_t _451;
  uint32_t _452;
  uint32_t _452__PHI_TEMPORARY;
  uint32_t _453;

  if ((((_432 == ((uint8_t*)/*NULL*/0))&1))) {
    _452__PHI_TEMPORARY = 170;   /* for PHI node */
    goto _454;
  } else {
    goto _455;
  }

_455:
  _435 =  /*tail*/ get_conn_for_addr(_432);
  if ((((_435 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _452__PHI_TEMPORARY = 170;   /* for PHI node */
    goto _454;
  } else {
    goto _456;
  }

_456:
  switch (_433) {
  default:
    goto _457;
  case ((uint8_t)11):
    goto _458;
  case ((uint8_t)14):
    goto _458;
  }

_458:
  _436 = memcpy(((&__user_info.field5.array[((int32_t)0)])), _432, 6);
  _437 = l2cap_debug_enable;
  if (((((llvm_and_u8(_437, 32)) == ((uint8_t)0))&1))) {
    _440__PHI_TEMPORARY = _437;   /* for PHI node */
    goto _459;
  } else {
    goto _460;
  }

_460:
  _438 =  /*tail*/ puts(((&_OC_str_OC_6.array[((int32_t)0)])));
  _439 = l2cap_debug_enable;
  _440__PHI_TEMPORARY = _439;   /* for PHI node */
  goto _459;

_459:
  _440 = _440__PHI_TEMPORARY;
  if (((((llvm_and_u8(_440, 64u)) == ((uint8_t)0))&1))) {
    goto _461;
  } else {
    goto _462;
  }

_462:
   /*tail*/ put_buf(((&__user_info.field5.array[((int32_t)0)])), 6);
  goto _461;

_457:
  _441 = *((&_435->field1));
  if ((((_441 == ((uint16_t)0))&1))) {
    goto _461;
  } else {
    goto _463;
  }

_463:
  _442 = memcpy(((&__user_info.field5.array[((int32_t)0)])), _432, 6);
  _443 = l2cap_debug_enable;
  if (((((llvm_and_u8(_443, 32)) == ((uint8_t)0))&1))) {
    _446__PHI_TEMPORARY = _443;   /* for PHI node */
    goto _464;
  } else {
    goto _465;
  }

_465:
  _444 =  /*tail*/ puts(((&_OC_str_OC_7.array[((int32_t)0)])));
  _445 = l2cap_debug_enable;
  _446__PHI_TEMPORARY = _445;   /* for PHI node */
  goto _464;

_464:
  _446 = _446__PHI_TEMPORARY;
  if (((((llvm_and_u8(_446, 64u)) == ((uint8_t)0))&1))) {
    goto _461;
  } else {
    goto _466;
  }

_466:
   /*tail*/ put_buf(((&__user_info.field5.array[((int32_t)0)])), 6);
  goto _461;

_461:
  _447 = ((uint64_t*)((&_435->field5)));
  if ((((_434 == ((uint8_t)0))&1))) {
    goto _467;
  } else {
    goto _468;
  }

_468:
  _448 = ((*_447)&4294967295);
  _449 = llvm_select_u8(((((((_448 & 15)&4294967295)) == UINT64_C(5))&1)), _434, 46);
  *((&_435->field4)) = _449;
   /*tail*/ bt_status_change(_449);
  goto _467;

_467:
  _450 = ((*_447)&4294967295);
  _451 = (((uint32_t)(((llvm_lshr_u40(_450, 38))&4294967295)))) & 1;
  _452__PHI_TEMPORARY = _451;   /* for PHI node */
  goto _454;

_454:
  _452 = _452__PHI_TEMPORARY;
  if ((((_433 == ((uint8_t)0))&1))) {
    goto _469;
  } else {
    goto _470;
  }

_470:
  *((&__user_info.field8)) = _433;
   /*tail*/ bt_event_update_to_user(_432, 1129270784u, _433, _452);
  _453 =  /*tail*/ stack_send_infor_2_user((&btstack_update_state), (((uint32_t)(uint8_t)_433)));
  goto _469;

_469:
  return;
}


uint32_t user_emitter_cmd_prepare(uint32_t _471, uint16_t _472, uint8_t* _473) {
  uint8_t _474;
  struct l_struct_struct_OC_user_cmd_ctrl* _475;
  struct l_struct_struct_OC__stack_config* _476;
  uint32_t _477;
  uint32_t _478;
  uint16_t _479;
  uint8_t _480;
  uint8_t _480__PHI_TEMPORARY;
  uint32_t _481;
  uint8_t* _482;
  uint8_t _483;
  uint8_t* _484;
  uint8_t* _485;
  uint8_t* _486;
  uint8_t _487;
  uint8_t _488;
  uint32_t _489;
  uint32_t _489__PHI_TEMPORARY;

  _474 = btstack_emitter_support;
  if ((((_474 == ((uint8_t)0))&1))) {
    _489__PHI_TEMPORARY = -1006;   /* for PHI node */
    goto _490;
  } else {
    goto _491;
  }

_491:
  _475 = g_user_cmd;
  if ((((_475 == ((struct l_struct_struct_OC_user_cmd_ctrl*)/*NULL*/0))&1))) {
    _489__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _490;
  } else {
    goto _492;
  }

_492:
  _476 = user_stack_configs;
  _477 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_476->field9)));
  if (((((_477 & 1048576) == 0u)&1))) {
    _489__PHI_TEMPORARY = -1006;   /* for PHI node */
    goto _490;
  } else {
    goto _493;
  }

_493:
  switch (_471) {
  default:
    goto _494;
  case 131u:
    goto _495;
  case 19u:
    goto _496;
  case 68u:
    goto _497;
  case 4u:
    goto _498;
  }

_495:
  _478 = __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)_473)));
  __UNALIGNED_LOAD__(uint32_t, 1, ((&_475->field21))) = _478;
  goto _494;

_496:
  _479 = llvm_select_u16((((((uint16_t)_472) < ((uint16_t)((uint16_t)14)))&1)), _472, 14);
  _480__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _499;

  do {     /* Syntactic loop '' to make GCC happy */
_499:
  _480 = _480__PHI_TEMPORARY;
  _481 = ((uint32_t)(uint8_t)_480);
  if ((((_480 == ((uint8_t)1))&1))) {
    goto _500;
  } else {
    goto _501;
  }

_501:
  _482 = (&_475->field9.array[((int32_t)_481)]);
  _483 = *_482;
  if ((((_483 == ((uint8_t)-1))&1))) {
    goto _502;
  } else {
    _480__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _499;
  }

  } while (1); /* end of syntactic loop '' */
_502:
  _484 = memcpy((((uint8_t*)((&_475->field10.array[((int32_t)_481)])))), _473, (((uint32_t)(uint16_t)_479)));
  *_482 = _480;
  goto _494;

_497:
  if ((((_473 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _494;
  } else {
    goto _503;
  }

_503:
  _485 = memcpy(((&_475->field22.array[((int32_t)0)])), _473, 6);
  goto _494;

_498:
  if ((((_473 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _494;
  } else {
    goto _504;
  }

_504:
  _486 = memcpy(((&_475->field23.array[((int32_t)0)])), _473, 6);
  goto _494;

_494:
  _487 = *((&__user_info.field0.field14));
  *((&__user_info.field0.field14)) = (llvm_add_u8(_487, 1));
  *((&_475->field12.array[((int32_t)(((uint32_t)(uint8_t)_487)))])) = (((uint8_t)_471));
  _488 = *((&__user_info.field0.field14));
  if ((((((uint8_t)_488) > ((uint8_t)((uint8_t)9)))&1))) {
    goto _505;
  } else {
    goto _506;
  }

_505:
  *((&__user_info.field0.field14)) = 0;
  goto _506;

_506:
   /*tail*/ ((l_fptr_3*)(void*)stack_run_loop_resume)();
  _489__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _490;

_500:
  _489__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _490;

_490:
  _489 = _489__PHI_TEMPORARY;
  return _489;
}


void tws_host_timeout_reset(uint32_t _507) {
  uint8_t _508;

  _508 = *((&__user_info.field9));
  if ((((_508 == ((uint8_t)0))&1))) {
    goto _509;
  } else {
    goto _510;
  }

_510:
  *((&__user_info.field9)) = (((uint8_t)(llvm_add_u32((((uint32_t)(uint8_t)_508)), _507))));
  goto _509;

_509:
  return;
}


uint32_t user_at_cmd_free(struct l_struct_struct_OC_conn_info* _511) {
  uint8_t _512;
  struct l_struct_struct_OC_btstack_linked_item** _513;
  struct l_struct_struct_OC_btstack_linked_item* _514;
  struct l_struct_struct_OC_btstack_linked_item* _515;
  struct l_struct_struct_OC_btstack_linked_item* _515__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _516;
  uint32_t _517;
  uint32_t _518;
  uint32_t _518__PHI_TEMPORARY;

  _512 = user_at_cmd_send_support;
  if ((((_512 == ((uint8_t)0))&1))) {
    _518__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _519;
  } else {
    goto _520;
  }

_520:
  _513 = (&_511->field7);
  _514 = *_513;
  if ((((_514 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _518__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _519;
  } else {
    goto _521;
  }

_521:
  _515__PHI_TEMPORARY = _514;   /* for PHI node */
  goto _522;

  do {     /* Syntactic loop '' to make GCC happy */
_522:
  _515 = _515__PHI_TEMPORARY;
  _516 = *((&_515->field0));
  _517 =  /*tail*/ btstack_linked_list_remove(_513, _515);
   /*tail*/ free((((uint8_t*)_515)));
  if ((((_516 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _523;
  } else {
    _515__PHI_TEMPORARY = _516;   /* for PHI node */
    goto _522;
  }

  } while (1); /* end of syntactic loop '' */
_523:
  _518__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _519;

_519:
  _518 = _518__PHI_TEMPORARY;
  return _518;
}


struct l_struct_struct_OC_conn_info* find_not_hangup_conn(void) {
  struct l_struct_struct_OC_conn_info* _524;
  struct l_struct_struct_OC_conn_info* _524__PHI_TEMPORARY;
  uint64_t _525;
  uint16_t _526;
  struct l_struct_struct_OC_conn_info* _527;
  struct l_struct_struct_OC_conn_info* _528;
  struct l_struct_struct_OC_conn_info* _528__PHI_TEMPORARY;

  _524__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _529;

  do {     /* Syntactic loop '' to make GCC happy */
_529:
  _524 = _524__PHI_TEMPORARY;
  _525 = ((*(((uint64_t*)((&_524->field5)))))&4294967295);
  if (((((((_525 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _530;
  } else {
    goto _531;
  }

_531:
  _526 = *((&_524->field1));
  if ((((((((((_525 & 15)&4294967295)) == UINT64_C(5))&1)) | (((_526 == ((uint16_t)0))&1)))&1))) {
    goto _530;
  } else {
    _528__PHI_TEMPORARY = _524;   /* for PHI node */
    goto _532;
  }

_530:
  _527 = (&_524[((int32_t)1)]);
  if ((((((uint32_t)_527) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _524__PHI_TEMPORARY = _527;   /* for PHI node */
    goto _529;
  } else {
    _528__PHI_TEMPORARY = ((struct l_struct_struct_OC_conn_info*)/*NULL*/0);   /* for PHI node */
    goto _532;
  }

  } while (1); /* end of syntactic loop '' */
_532:
  _528 = _528__PHI_TEMPORARY;
  return _528;
}


uint32_t check_work_addr(uint8_t* _533) {
  return 0;
}


void bt_status_change(uint8_t _534) {
  return;
}


uint8_t get_emitter_connect_status(void) {
  struct l_struct_struct_OC_conn_info* _535;
  uint8_t _536;
  uint8_t _537;
  uint8_t _537__PHI_TEMPORARY;

  _535 =  /*tail*/ get_bt_current_conn(1);
  if ((((_535 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _537__PHI_TEMPORARY = 43;   /* for PHI node */
    goto _538;
  } else {
    goto _539;
  }

_539:
  _536 = *((&_535->field4));
  _537__PHI_TEMPORARY = _536;   /* for PHI node */
  goto _538;

_538:
  _537 = _537__PHI_TEMPORARY;
  return _537;
}


uint8_t get_bt_connect_status(void) {
  struct l_struct_struct_OC_conn_info* _540;
  uint8_t _541;
  uint8_t _542;
  uint8_t _542__PHI_TEMPORARY;

  _540 =  /*tail*/ get_bt_current_conn(0);
  if ((((_540 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _542__PHI_TEMPORARY = 43;   /* for PHI node */
    goto _543;
  } else {
    goto _544;
  }

_544:
  _541 = *((&_540->field4));
  _542__PHI_TEMPORARY = _541;   /* for PHI node */
  goto _543;

_543:
  _542 = _542__PHI_TEMPORARY;
  return _542;
}


uint8_t get_device_inband_ringtone_flag(void) {
  struct l_struct_struct_OC_conn_info* _545;
  uint64_t _546;
  uint8_t _547;
  uint8_t _548;
  uint8_t _548__PHI_TEMPORARY;

  _545 =  /*tail*/ get_bt_current_conn(0);
  if ((((_545 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _548__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _549;
  } else {
    goto _550;
  }

_550:
  _546 = ((*(((uint64_t*)((&_545->field5)))))&4294967295);
  _547 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_546, 31))&4294967295)))), 1);
  _548__PHI_TEMPORARY = _547;   /* for PHI node */
  goto _549;

_549:
  _548 = _548__PHI_TEMPORARY;
  return _548;
}


uint8_t is_1t2_connection(void) {
  uint16_t _551;
  uint32_t _552;

  _551 = *((&__user_info.field10));
  _552 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  return (((uint8_t)(bool)((((((uint32_t)(uint16_t)(llvm_and_u16(_551, 7)))) == ((llvm_lshr_u32(_552, 4)) & 3))&1))));
}


uint8_t get_total_connect_dev(void) {
  struct l_struct_struct_OC_conn_info* _553;
  uint16_t _554;
  uint8_t _555;
  uint8_t _556;
  uint8_t _556__PHI_TEMPORARY;

  _553 =  /*tail*/ get_conn_for_addr(((&__user_info.field5.array[((int32_t)0)])));
  if ((((_553 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _556__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _557;
  } else {
    goto _558;
  }

_558:
  _554 = *((&__user_info.field10));
  _555 = llvm_and_u8((((uint8_t)_554)), 7);
  _556__PHI_TEMPORARY = _555;   /* for PHI node */
  goto _557;

_557:
  _556 = _556__PHI_TEMPORARY;
  return _556;
}


uint16_t get_curr_channel_state(void) {
  struct l_struct_struct_OC_conn_info* _559;
  uint16_t _560;
  uint16_t _561;
  uint16_t _561__PHI_TEMPORARY;

  _559 =  /*tail*/ get_bt_current_conn(0);
  if ((((_559 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _561__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _562;
  } else {
    goto _563;
  }

_563:
  _560 = *((&_559->field2));
  _561__PHI_TEMPORARY = _560;   /* for PHI node */
  goto _562;

_562:
  _561 = _561__PHI_TEMPORARY;
  return _561;
}


uint16_t get_emitter_curr_channel_state(void) {
  struct l_struct_struct_OC_conn_info* _564;
  uint16_t _565;
  uint16_t _566;
  uint16_t _566__PHI_TEMPORARY;

  _564 =  /*tail*/ get_bt_current_conn(1);
  if ((((_564 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _566__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _567;
  } else {
    goto _568;
  }

_568:
  _565 = *((&_564->field2));
  _566__PHI_TEMPORARY = _565;   /* for PHI node */
  goto _567;

_567:
  _566 = _566__PHI_TEMPORARY;
  return _566;
}


uint8_t* get_cur_connect_phone_mac_addr(void) {
  struct l_struct_struct_OC_conn_info* _569;

  _569 =  /*tail*/ get_bt_current_conn(0);
  return ((&_569->field0.array[((int32_t)0)]));
}


uint8_t get_unactive_device_call_status(void) {
  struct l_struct_struct_OC_conn_info* _570;
  uint64_t _571;
  uint8_t _572;
  uint8_t _573;
  uint8_t _573__PHI_TEMPORARY;

  _570 =  /*tail*/ get_conn_for_addr(((&__user_info.field5.array[((int32_t)0)])));
  if ((((_570 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _574;
  } else {
    goto _575;
  }

_575:
  _571 = ((*(((uint64_t*)((&_570->field5)))))&4294967295);
  _572 = llvm_and_u8((((uint8_t)_571)), 15);
  if ((((_572 == ((uint8_t)5))&1))) {
    goto _574;
  } else {
    _573__PHI_TEMPORARY = _572;   /* for PHI node */
    goto _576;
  }

_574:
  _573__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _576;

_576:
  _573 = _573__PHI_TEMPORARY;
  return _573;
}


uint8_t* get_cur_connect_emitter_mac_addr(void) {
  struct l_struct_struct_OC_conn_info* _577;

  _577 =  /*tail*/ get_bt_current_conn(1);
  return ((&_577->field0.array[((int32_t)0)]));
}


uint8_t get_call_status(void) {
  struct l_struct_struct_OC_conn_info* _578;
  uint64_t _579;
  uint8_t _580;
  struct l_struct_struct_OC_conn_info* _581;
  struct l_struct_struct_OC_conn_info* _581__PHI_TEMPORARY;
  uint64_t _582;
  uint8_t _583;
  struct l_struct_struct_OC_conn_info* _584;
  uint8_t _585;
  uint8_t _585__PHI_TEMPORARY;
  uint8_t _586;
  uint8_t _586__PHI_TEMPORARY;

  _578 =  /*tail*/ get_bt_current_conn(0);
  if ((((_578 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _587;
  } else {
    goto _588;
  }

_588:
  _579 = ((*(((uint64_t*)((&_578->field5)))))&4294967295);
  _580 = llvm_and_u8((((uint8_t)_579)), 15);
  if ((((_580 == ((uint8_t)5))&1))) {
    goto _587;
  } else {
    _586__PHI_TEMPORARY = _580;   /* for PHI node */
    goto _589;
  }

_587:
  _581__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _590;

  do {     /* Syntactic loop '' to make GCC happy */
_590:
  _581 = _581__PHI_TEMPORARY;
  _582 = ((*(((uint64_t*)((&_581->field5)))))&4294967295);
  if (((((((_582 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _591;
  } else {
    goto _592;
  }

_592:
  _583 = llvm_and_u8((((uint8_t)_582)), 15);
  if ((((_583 == ((uint8_t)5))&1))) {
    goto _591;
  } else {
    _585__PHI_TEMPORARY = _583;   /* for PHI node */
    goto _593;
  }

_591:
  _584 = (&_581[((int32_t)1)]);
  if ((((((uint32_t)_584) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _581__PHI_TEMPORARY = _584;   /* for PHI node */
    goto _590;
  } else {
    _585__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _593;
  }

  } while (1); /* end of syntactic loop '' */
_593:
  _585 = _585__PHI_TEMPORARY;
  _586__PHI_TEMPORARY = _585;   /* for PHI node */
  goto _589;

_589:
  _586 = _586__PHI_TEMPORARY;
  return _586;
}


uint8_t a2dp_get_status_for_conn(struct l_struct_struct_OC_conn_info* _594) {
  uint64_t _595;
  uint8_t _596;
  uint8_t _597;
  uint8_t _598;
  uint8_t _598__PHI_TEMPORARY;

  if ((((_594 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _598__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _599;
  } else {
    goto _600;
  }

_600:
  _595 = ((*(((uint64_t*)((&_594->field5)))))&4294967295);
  _596 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_595, 16))&4294967295)))), 15);
  if ((((_596 == ((uint8_t)0))&1))) {
    goto _601;
  } else {
    _598__PHI_TEMPORARY = _596;   /* for PHI node */
    goto _599;
  }

_601:
  _597 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_595, 12))&4294967295)))), 15);
  _598__PHI_TEMPORARY = _597;   /* for PHI node */
  goto _599;

_599:
  _598 = _598__PHI_TEMPORARY;
  return _598;
}


uint8_t a2dp_get_status(void) {
  struct l_struct_struct_OC_conn_info* _602;
  uint64_t* _603;
  uint64_t _604;
  uint32_t _605;
  uint64_t _606;
  uint8_t _607;
  uint8_t _608;
  uint8_t _609;
  uint8_t _609__PHI_TEMPORARY;

  _602 =  /*tail*/ get_bt_current_conn(0);
  if ((((_602 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _609__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _610;
  } else {
    goto _611;
  }

_611:
  _603 = ((uint64_t*)((&_602->field5)));
  _604 = ((*_603)&4294967295);
  if (((((((_604 & 983040)&4294967295)) == UINT64_C(0))&1))) {
    goto _612;
  } else {
    goto _613;
  }

_613:
  _605 =  /*tail*/ get_pp_key_statue(((&_602->field0.array[((int32_t)0)])));
  if ((((_605 == 0u)&1))) {
    _609__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _610;
  } else {
    goto _614;
  }

_614:
  _606 = ((*_603)&4294967295);
  _607 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_606, 16))&4294967295)))), 15);
  _609__PHI_TEMPORARY = _607;   /* for PHI node */
  goto _610;

_612:
  _608 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_604, 12))&4294967295)))), 15);
  _609__PHI_TEMPORARY = _608;   /* for PHI node */
  goto _610;

_610:
  _609 = _609__PHI_TEMPORARY;
  return _609;
}


uint8_t get_emitter_a2dp_status(void) {
  struct l_struct_struct_OC_conn_info* _615;
  uint64_t* _616;
  uint64_t _617;
  uint32_t _618;
  uint64_t _619;
  uint8_t _620;
  uint8_t _621;
  uint8_t _622;
  uint8_t _622__PHI_TEMPORARY;

  _615 =  /*tail*/ get_bt_current_conn(1);
  if ((((_615 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _622__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _623;
  } else {
    goto _624;
  }

_624:
  _616 = ((uint64_t*)((&_615->field5)));
  _617 = ((*_616)&4294967295);
  if (((((((_617 & 983040)&4294967295)) == UINT64_C(0))&1))) {
    goto _625;
  } else {
    goto _626;
  }

_626:
  _618 =  /*tail*/ get_pp_key_statue(((&_615->field0.array[((int32_t)0)])));
  if ((((_618 == 0u)&1))) {
    _622__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _623;
  } else {
    goto _627;
  }

_627:
  _619 = ((*_616)&4294967295);
  _620 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_619, 16))&4294967295)))), 15);
  _622__PHI_TEMPORARY = _620;   /* for PHI node */
  goto _623;

_625:
  _621 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_617, 12))&4294967295)))), 15);
  _622__PHI_TEMPORARY = _621;   /* for PHI node */
  goto _623;

_623:
  _622 = _622__PHI_TEMPORARY;
  return _622;
}


uint8_t get_second_call_status(void) {
  struct l_struct_struct_OC_conn_info* _628;
  uint64_t _629;
  uint8_t _630;
  uint8_t _631;
  uint8_t _631__PHI_TEMPORARY;

  _628 =  /*tail*/ get_bt_current_conn(0);
  if ((((_628 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _631__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _632;
  } else {
    goto _633;
  }

_633:
  _629 = ((*(((uint64_t*)((&_628->field5)))))&4294967295);
  _630 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_629, 8))&4294967295)))), 15);
  _631__PHI_TEMPORARY = _630;   /* for PHI node */
  goto _632;

_632:
  _631 = _631__PHI_TEMPORARY;
  return _631;
}


uint8_t get_a2dp_decoder_status(void) {
  struct l_struct_struct_OC_conn_info* _634;
  uint64_t _635;
  uint8_t _636;
  uint8_t _637;
  uint8_t _637__PHI_TEMPORARY;

  _634 =  /*tail*/ get_bt_current_conn(0);
  if ((((_634 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _637__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _638;
  } else {
    goto _639;
  }

_639:
  _635 = ((*(((uint64_t*)((&_634->field5)))))&4294967295);
  _636 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_635, 30))&4294967295)))), 1);
  _637__PHI_TEMPORARY = _636;   /* for PHI node */
  goto _638;

_638:
  _637 = _637__PHI_TEMPORARY;
  return _637;
}


uint8_t check_phone_call_number(void) {
  struct l_struct_struct_OC_conn_info* _640;
  struct l_struct_struct_OC_conn_info* _640__PHI_TEMPORARY;
  uint8_t _641;
  uint8_t _641__PHI_TEMPORARY;
  uint64_t _642;
  uint8_t _643;
  struct l_struct_struct_OC_conn_info* _644;

  _640__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _641__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _645;

  do {     /* Syntactic loop '' to make GCC happy */
_645:
  _640 = _640__PHI_TEMPORARY;
  _641 = _641__PHI_TEMPORARY;
  _642 = ((*(((uint64_t*)((&_640->field5)))))&4294967295);
  _643 = llvm_add_u8((((uint8_t)(bool)((((((_642 & 536870928)&4294967295)) == UINT64_C(536870928))&1)))), _641);
  _644 = (&_640[((int32_t)1)]);
  if ((((((uint32_t)_644) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _640__PHI_TEMPORARY = _644;   /* for PHI node */
    _641__PHI_TEMPORARY = _643;   /* for PHI node */
    goto _645;
  } else {
    goto _646;
  }

  } while (1); /* end of syntactic loop '' */
_646:
  return _643;
}


void add_hfp_flag(uint8_t* _647, uint8_t _648) {
  struct l_struct_struct_OC_conn_info* _649;
  uint64_t* _650;
  uint64_t _651;
  uint32_t _652;
  uint8_t _653;
  uint32_t _654;

  _649 =  /*tail*/ get_conn_for_addr(_647);
  if ((((_649 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _655;
  } else {
    goto _656;
  }

_656:
  _650 = ((uint64_t*)((&_649->field5)));
  _651 = ((*_650)&4294967295);
  _652 = (((((uint32_t)(((llvm_lshr_u40(_651, 4))&4294967295)))) | (1 << (((uint32_t)(uint8_t)_648)))) << 4) & 240;
  *_650 = ((((((((((uint64_t)(uint32_t)_652))&4294967295)) | (((_651 & -241)&4294967295)))&4294967295))) & 4294967295);
  _653 = l2cap_debug_enable;
  if ((((((int8_t)_653) < ((int8_t)((uint8_t)0)))&1))) {
    goto _657;
  } else {
    goto _655;
  }

_657:
  _654 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (llvm_lshr_u32(_652, 4)));
  goto _655;

_655:
  return;
}


void clr_hfp_flag(uint8_t* _658, uint8_t _659) {
  struct l_struct_struct_OC_conn_info* _660;
  uint64_t* _661;
  uint64_t _662;
  uint32_t _663;
  uint8_t _664;
  uint32_t _665;

  _660 =  /*tail*/ get_conn_for_addr(_658);
  if ((((_660 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _666;
  } else {
    goto _667;
  }

_667:
  _661 = ((uint64_t*)((&_660->field5)));
  _662 = ((*_661)&4294967295);
  _663 = (((((uint32_t)(((llvm_lshr_u40(_662, 4))&4294967295)))) & ((1 << (((uint32_t)(uint8_t)_659))) ^ 15)) << 4) & 240;
  *_661 = ((((((((((uint64_t)(uint32_t)_663))&4294967295)) | (((_662 & -241)&4294967295)))&4294967295))) & 4294967295);
  _664 = l2cap_debug_enable;
  if ((((((int8_t)_664) < ((int8_t)((uint8_t)0)))&1))) {
    goto _668;
  } else {
    goto _666;
  }

_668:
  _665 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])), (llvm_lshr_u32(_663, 4)));
  goto _666;

_666:
  return;
}


void bt_api_all_sniff_exit(void) {
  struct l_struct_struct_OC_conn_info* _669;
  struct l_struct_struct_OC_conn_info* _669__PHI_TEMPORARY;
  uint64_t _670;
  struct l_struct_struct_OC_conn_info* _671;

  _669__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _672;

  do {     /* Syntactic loop '' to make GCC happy */
_672:
  _669 = _669__PHI_TEMPORARY;
  _670 = ((*(((uint64_t*)((&_669->field5)))))&4294967295);
  if (((((((_670 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _673;
  } else {
    goto _674;
  }

_674:
   /*tail*/ hci_set_sniff_mode(0, (llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_670, 33))&4294967295)))), 3)), ((&_669->field0.array[((int32_t)0)])), 0, 0, 0, 0);
  goto _673;

_673:
  _671 = (&_669[((int32_t)1)]);
  if ((((((uint32_t)_671) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _669__PHI_TEMPORARY = _671;   /* for PHI node */
    goto _672;
  } else {
    goto _675;
  }

  } while (1); /* end of syntactic loop '' */
_675:
  return;
}


void user_hfp_call_hold_flag(uint32_t _676) {
  return;
}


void update_profile_function_status(uint8_t* _677, uint32_t _678, uint32_t _679) {
  struct l_struct_struct_OC_conn_info* _680;
  uint64_t* _681;
  uint64_t _682;
  uint32_t _683;
  uint8_t* _684;
  uint32_t _685;
  uint32_t _686;
  uint64_t* _687;
  uint64_t _688;
  uint32_t _689;
  uint8_t* _690;
  uint32_t _691;
  uint32_t _692;
  uint64_t* _693;
  uint64_t _694;
  uint32_t _695;
  uint64_t _696;
  uint8_t _697;
  uint32_t _698;
  uint64_t* _699;
  uint64_t _700;
  uint64_t _701;
  uint8_t* _702;
  uint32_t _703;
  uint32_t _704;
  uint64_t* _705;
  uint64_t _706;
  uint32_t _707;
  uint64_t* _708;
  uint64_t _709;
  uint64_t* _710;
  uint64_t _711;
  uint64_t* _712;
  uint64_t _713;
  uint64_t* _714;
  uint64_t _715;
  uint64_t* _716;
  uint64_t _717;
  uint32_t _718;
  uint32_t _719;
  uint64_t _720;

  _680 =  /*tail*/ get_conn_for_addr(_677);
  if ((((_680 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _721;
  } else {
    goto _722;
  }

_722:
  switch (_678) {
  default:
    goto _721;
  case 2u:
    goto _723;
  case 6u:
    goto _724;
  case 3u:
    goto _724;
  case 4u:
    goto _725;
  case 5u:
    goto _726;
  case 7u:
    goto _727;
  case 9u:
    goto _728;
  case 8u:
    goto _729;
  case 14u:
    goto _730;
  case 13u:
    goto _731;
  case 16u:
    goto _732;
  case 11u:
    goto _733;
  }

_723:
   /*tail*/ bt_api_all_sniff_exit();
  _681 = ((uint64_t*)((&_680->field5)));
  _682 = ((*_681)&4294967295);
  if (((((((_682 & 15)&4294967295)) == UINT64_C(2))&1))) {
    goto _721;
  } else {
    goto _734;
  }

_734:
  *_681 = ((((((((_682 & -16)&4294967295)) | 2)&4294967295))) & 4294967295);
   /*tail*/ add_hfp_flag(_677, 0);
  _683 =  /*tail*/ stack_send_infor_2_user((&btstack_background_state), 1, 1);
  _684 = (&_680->field0.array[((int32_t)0)]);
  _685 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 23, 2, _684);
   /*tail*/ bt_event_update_to_user(_684, 1129270784u, 23, 11);
   /*tail*/ update_bt_current_status(_684, 11, 46);
  _686 =  /*tail*/ update_multi_bd_status(_684, 6, -1);
  goto _721;

_724:
   /*tail*/ bt_api_all_sniff_exit();
  _687 = ((uint64_t*)((&_680->field5)));
  _688 = ((*_687)&4294967295);
  if (((((((_688 & 15)&4294967295)) == UINT64_C(3))&1))) {
    goto _721;
  } else {
    goto _735;
  }

_735:
  *_687 = ((((((((_688 & -16)&4294967295)) | 3)&4294967295))) & 4294967295);
   /*tail*/ add_hfp_flag(_677, 0);
  _689 =  /*tail*/ stack_send_infor_2_user((&btstack_background_state), 1, 1);
  _690 = (&_680->field0.array[((int32_t)0)]);
  _691 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 23, 3, _690);
   /*tail*/ bt_event_update_to_user(_690, 1129270784u, 23, 14);
   /*tail*/ update_bt_current_status(_690, 14, 46);
  _692 =  /*tail*/ update_multi_bd_status(_690, 7, -1);
  goto _721;

_725:
   /*tail*/ bt_api_all_sniff_exit();
  _693 = ((uint64_t*)((&_680->field5)));
  _694 = ((*_693)&4294967295);
  if (((((((_694 & 15)&4294967295)) == UINT64_C(4))&1))) {
    goto _721;
  } else {
    goto _736;
  }

_736:
   /*tail*/ add_hfp_flag(_677, 0);
  _695 =  /*tail*/ stack_send_infor_2_user((&btstack_background_state), 1, 1);
  _696 = ((*_693)&4294967295);
  *_693 = ((((((((_696 & -16)&4294967295)) | 4)&4294967295))) & 4294967295);
   /*tail*/ update_bt_current_status(((&_680->field0.array[((int32_t)0)])), 15, 46);
  goto _721;

_726:
  _697 = l2cap_debug_enable;
  if (((((llvm_and_u8(_697, 32)) == ((uint8_t)0))&1))) {
    goto _737;
  } else {
    goto _738;
  }

_738:
  _698 =  /*tail*/ puts(((&_OC_str_OC_10.array[((int32_t)0)])));
  goto _737;

_737:
  _699 = ((uint64_t*)((&_680->field5)));
  _700 = ((*_699)&4294967295);
  if (((((((_700 & 15)&4294967295)) == UINT64_C(5))&1))) {
    goto _721;
  } else {
    goto _739;
  }

_739:
   /*tail*/ clr_hfp_flag(_677, 0);
  _701 = ((*_699)&4294967295);
  *_699 = ((((((((_701 & -16)&4294967295)) | 5)&4294967295))) & 4294967295);
  _702 = (&_680->field0.array[((int32_t)0)]);
   /*tail*/ update_bt_current_status(_702, 16, 45);
  _703 =  /*tail*/ update_multi_bd_status(_702, 8, -1);
  goto _721;

_727:
   /*tail*/ bt_event_update_to_user(_677, 1129270784u, 24, _679);
  _704 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 24, _679, _677);
  goto _721;

_728:
  _705 = ((uint64_t*)((&_680->field5)));
  _706 = ((*_705)&4294967295);
  *_705 = ((((((((_706 & INT64_C(-2147483649))&4294967295)) | (((((uint64_t)(uint32_t)(_679 << 31)))&4294967295)))&4294967295))) & 4294967295);
  _707 =  /*tail*/ stack_send_infor_2_user((&btstack_update_flags), 35, _679, _677);
  goto _721;

_729:
  _708 = ((uint64_t*)((&_680->field5)));
  _709 = ((*_708)&4294967295);
  *_708 = ((((((((_709 & -3841)&4294967295)) | (((((uint64_t)(uint32_t)((_679 << 8) & 3840)))&4294967295)))&4294967295))) & 4294967295);
  goto _721;

_730:
  _710 = ((uint64_t*)((&_680->field5)));
  _711 = ((*_710)&4294967295);
  *_710 = ((((((((((uint64_t)(uint32_t)(((_679 << 12) & 61440) | ((_679 << 30) & 1073741824u))))&4294967295)) | (((_711 & INT64_C(-1073803265))&4294967295)))&4294967295))) & 4294967295);
  goto _721;

_731:
  _712 = ((uint64_t*)((&_680->field5)));
  _713 = ((*_712)&4294967295);
  *_712 = ((((((((_713 & -61441)&4294967295)) | (((((uint64_t)(uint32_t)((_679 << 12) & 61440)))&4294967295)))&4294967295))) & 4294967295);
  goto _721;

_732:
  _714 = ((uint64_t*)((&_680->field5)));
  _715 = ((*_714)&4294967295);
  *_714 = ((((((((_715 & -983041)&4294967295)) | (((((uint64_t)(uint32_t)((_679 << 16) & 983040)))&4294967295)))&4294967295))) & 4294967295);
  goto _721;

_733:
  _716 = ((uint64_t*)((&_680->field5)));
  _717 = ((*_716)&4294967295);
  _718 = (_679 << 24) & 50331648;
  *_716 = ((((((((_717 & -50331649)&4294967295)) | (((((uint64_t)(uint32_t)_718))&4294967295)))&4294967295))) & 4294967295);
  _719 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), (llvm_lshr_u32(_718, 24)));
  _720 = ((*_716)&4294967295);
   /*tail*/ user_hfp_call_hold_flag(((((uint32_t)(((llvm_lshr_u40(_720, 24))&4294967295)))) & 3));
  goto _721;

_721:
  return;
}


uint8_t delete_last_device_from_vm(void) {
  struct l_array_6_uint8_t _740;    /* Address-exposed local */
  uint8_t* _741;
  uint8_t _742;
  uint8_t _743;
  uint8_t _744;

  _741 = (&_740.array[((int32_t)0)]);
  _742 =  /*tail*/ ((l_fptr_2*)(void*)get_remote_dev_info_index)();
  _743 = restore_remote_device_info_opt((&_740), 1, _742);
  if ((((_743 == ((uint8_t)0))&1))) {
    goto _745;
  } else {
    goto _746;
  }

_746:
  _744 = ((l_fptr_2*)(void*)get_remote_dev_info_index)();
  delete_link_key((&_740), _744);
  goto _745;

_745:
  return _743;
}


uint8_t connect_last_device_from_vm(void) {
  struct l_array_6_uint8_t _747;    /* Address-exposed local */
  uint8_t* _748;
  uint8_t _749;
  uint8_t _750;
  uint32_t _751;
  uint32_t _752;

  _748 = (&_747.array[((int32_t)0)]);
  _749 =  /*tail*/ ((l_fptr_2*)(void*)get_remote_dev_info_index)();
  _750 = restore_remote_device_info_opt((&_747), 1, _749);
  if ((((_750 == ((uint8_t)0))&1))) {
    goto _753;
  } else {
    goto _754;
  }

_754:
  _751 = printf(((&_OC_str_OC_12.array[((int32_t)0)])));
  put_buf(_748, 6);
  _752 = user_send_cmd_prepare(1, 6, _748);
  goto _753;

_753:
  return _750;
}


void get_remote_device_info_from_vm(void) {
  uint32_t _755;
  struct l_struct_struct_OC__stack_config* _756;
  uint32_t _757;
  uint8_t _758;
  uint16_t _759;

  _755 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  _756 = user_stack_configs;
  _757 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_756->field9)));
  _758 =  /*tail*/ restore_remote_device_info_opt(((&__user_info.field6.array[((int32_t)0)])), (llvm_and_u8((((uint8_t)_755)), 15)), (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_757, 20)))), 1)));
  _759 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_or_u16((((uint16_t)(uint8_t)(llvm_and_u8((llvm_shl_u8(_758, 3)), 56)))), (llvm_and_u16(_759, -57))));
}


uint8_t get_current_poweron_memory_search_index(uint8_t* _760) {
  uint16_t _761;
  uint16_t _762;
  uint16_t _763;
  uint16_t _763__PHI_TEMPORARY;
  uint8_t* _764;
  uint32_t _765;
  uint16_t _766;
  uint16_t _767;
  uint16_t _768;
  uint16_t _769;

  if ((((_760 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _770;
  } else {
    goto _771;
  }

_771:
  _761 = *((&__user_info.field10));
  _762 = llvm_and_u16((llvm_lshr_u16(_761, 3)), 7);
  if ((((_762 == ((uint16_t)0))&1))) {
    goto _770;
  } else {
    goto _772;
  }

_772:
  _763__PHI_TEMPORARY = _762;   /* for PHI node */
  goto _773;

  do {     /* Syntactic loop '' to make GCC happy */
_773:
  _763 = _763__PHI_TEMPORARY;
  _764 = memcpy(_760, ((&__user_info.field6.array[((int32_t)(llvm_add_u32((((uint32_t)(uint16_t)_763)), -1)))].array[((int32_t)0)])), 6);
  _765 =  /*tail*/ memcmp(_760, ((&get_current_poweron_memory_search_index_OC_invalid_addr.array[((int32_t)0)])), 6);
  if ((((_765 == 0u)&1))) {
    goto _774;
  } else {
    goto _775;
  }

_774:
  _766 = *((&__user_info.field10));
  _767 = llvm_add_u16(_766, 56);
  *((&__user_info.field10)) = (llvm_or_u16((llvm_and_u16(_767, 56)), (llvm_and_u16(_766, -57))));
  _768 = llvm_and_u16((llvm_lshr_u16(_767, 3)), 7);
  if ((((_768 == ((uint16_t)0))&1))) {
    goto _775;
  } else {
    _763__PHI_TEMPORARY = _768;   /* for PHI node */
    goto _773;
  }

  } while (1); /* end of syntactic loop '' */
_775:
  goto _770;

_770:
  _769 = *((&__user_info.field10));
  return (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_769, 3)))), 7));
}


uint8_t* get_mac_memory_by_index(uint8_t _776) {
  return (llvm_select_pu8((((((uint8_t)(llvm_add_u8(_776, -1))) < ((uint8_t)((uint8_t)9)))&1)), ((&__user_info.field6.array[((int32_t)(llvm_add_u32((((uint32_t)(uint8_t)_776)), -1)))].array[((int32_t)0)])), ((uint8_t*)/*NULL*/0)));
}


void clear_current_poweron_memory_search_index(uint8_t _777) {
  uint16_t _778;
  uint16_t _779;
  uint16_t _780;
  uint16_t _781;
  uint16_t _782;
  uint16_t _782__PHI_TEMPORARY;

  _778 = *((&__user_info.field10));
  if ((((_777 == ((uint8_t)0))&1))) {
    goto _783;
  } else {
    goto _784;
  }

_784:
  _779 = llvm_lshr_u16(_778, 3);
  if (((((llvm_and_u16(_779, 7)) == ((uint16_t)0))&1))) {
    goto _785;
  } else {
    goto _786;
  }

_786:
  _780 = llvm_or_u16((llvm_and_u16((llvm_add_u16((llvm_shl_u16(_779, 3)), 56)), 56)), (llvm_and_u16(_778, -57)));
  _782__PHI_TEMPORARY = _780;   /* for PHI node */
  goto _787;

_783:
  _781 = llvm_and_u16(_778, -57);
  _782__PHI_TEMPORARY = _781;   /* for PHI node */
  goto _787;

_787:
  _782 = _782__PHI_TEMPORARY;
  *((&__user_info.field10)) = _782;
  goto _785;

_785:
  return;
}


void user_cmd_timer_init(void) {
  uint8_t _788;
  uint8_t _789;
  uint8_t _790;
  uint8_t _790__PHI_TEMPORARY;
  uint8_t _791;
  bool _792;
  bool _792__PHI_TEMPORARY;
  uint8_t _793;
  uint8_t _794;
  uint32_t _795;
  uint32_t _796;
  uint8_t _797;
  uint32_t _798;

  _788 = *((&__user_info.field3.field0));
  _789 = llvm_add_u8(_788, -1);
  if ((((((uint8_t)_789) < ((uint8_t)((uint8_t)5)))&1))) {
    goto _799;
  } else {
    _790__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _800;
  }

_799:
  *((&__user_info.field3.field0)) = _789;
  _790__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _800;

_800:
  _790 = _790__PHI_TEMPORARY;
  _791 = *((&__user_info.field9));
  if ((((_791 == ((uint8_t)0))&1))) {
    _792__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _801;
  } else {
    goto _802;
  }

_802:
  *((&__user_info.field9)) = (llvm_add_u8(_791, -1));
  _792__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _801;

_801:
  _792 = ((_792__PHI_TEMPORARY)&1);
  _793 =  /*tail*/ connect_a2dp_w_phone_only_conn_hfp();
  _794 =  /*tail*/ ((l_fptr_2*)(void*)__a2dp_conn_send_discover_cnt)();
  if ((((_792 & ((((llvm_or_u8((llvm_or_u8(_793, _790)), _794)) == ((uint8_t)0))&1)))&1))) {
    goto _803;
  } else {
    goto _804;
  }

_804:
  _795 = *((&__user_info.field4.field1));
  if ((((_795 == 0u)&1))) {
    goto _805;
  } else {
    goto _806;
  }

_805:
  _796 = *((&__user_info.field4.field2));
  *((&__user_info.field4.field2)) = ((_796 & -65536) | 500);
  *((&__user_info.field4.field3)) = user_cmd_timeout_check;
   /*tail*/ btstack_set_timer(((&__user_info.field4)), 130);
  goto _803;

_806:
  _797 = l2cap_debug_enable;
  if ((((((int8_t)_797) < ((int8_t)((uint8_t)0)))&1))) {
    goto _807;
  } else {
    goto _803;
  }

_807:
  _798 =  /*tail*/ puts(((&str_OC_37.array[((int32_t)0)])));
  goto _803;

_803:
  return;
}


static void user_cmd_timeout_check(struct l_struct_struct_OC_btstack_timer_source* _808) {
  uint8_t _809;
  uint8_t _810;
  uint8_t _811;
  uint8_t _811__PHI_TEMPORARY;
  uint8_t _812;
  bool _813;
  bool _813__PHI_TEMPORARY;
  uint8_t _814;
  uint8_t _815;
  uint32_t _816;

  _809 = *((&__user_info.field3.field0));
  _810 = llvm_add_u8(_809, -1);
  if ((((((uint8_t)_810) < ((uint8_t)((uint8_t)5)))&1))) {
    goto _817;
  } else {
    _811__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _818;
  }

_817:
  *((&__user_info.field3.field0)) = _810;
  _811__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _818;

_818:
  _811 = _811__PHI_TEMPORARY;
  _812 = *((&__user_info.field9));
  if ((((_812 == ((uint8_t)0))&1))) {
    _813__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _819;
  } else {
    goto _820;
  }

_820:
  *((&__user_info.field9)) = (llvm_add_u8(_812, -1));
  _813__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _819;

_819:
  _813 = ((_813__PHI_TEMPORARY)&1);
  _814 =  /*tail*/ connect_a2dp_w_phone_only_conn_hfp();
  _815 =  /*tail*/ ((l_fptr_2*)(void*)__a2dp_conn_send_discover_cnt)();
  if ((((_813 & ((((llvm_or_u8((llvm_or_u8(_814, _811)), _815)) == ((uint8_t)0))&1)))&1))) {
    goto _821;
  } else {
    goto _822;
  }

_821:
  _816 =  /*tail*/ user_send_cmd_prepare(136, 0, ((uint8_t*)/*NULL*/0));
  goto _822;

_822:
  return;
}


void remove_user_cmd_timer(void) {
  uint32_t _823;
  uint32_t _824;
  uint8_t* _825;

  _823 = *((&__user_info.field4.field1));
  if ((((_823 == 0u)&1))) {
    goto _826;
  } else {
    goto _827;
  }

_827:
  _824 =  /*tail*/ btstack_run_loop_remove_timer(((&__user_info.field4)));
  _825 = memset(((uint8_t*)((&__user_info.field4))), 0, 20);
  goto _826;

_826:
  return;
}


uint8_t check_user_cmd_timer_status(void) {
  uint32_t _828;

  _828 = *((&__user_info.field4.field1));
  return (((uint8_t)(bool)(((_828 != 0u)&1))));
}


void user_cmd_ctrl_init(uint8_t* _829) {
  uint8_t _830;
  uint32_t _831;
  uint8_t* _832;
  uint16_t _833;
  uint8_t* _834;

  _830 = l2cap_debug_enable;
  if ((((((int8_t)_830) < ((int8_t)((uint8_t)0)))&1))) {
    goto _835;
  } else {
    goto _836;
  }

_835:
  _831 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])), 288);
  goto _836;

_836:
  g_user_cmd = ((&__user_info.field0));
  _832 = memset(((&__user_info.field0.field0)), 0, 124);
   /*tail*/ stack_run_loop_register(((&__user_info.field1)), user_operation_control, _829);
  _833 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_and_u16(_833, -200));
  *((&__user_info.field0.field9.array[((int32_t)0)])) = -1;
  *((uint8_t*)((&__user_info.field0.field10.array[((int32_t)0)].field0))) = -1;
  _834 = memset(((uint8_t*)((&__user_info.field4))), 0, 20);
}


static void user_operation_control(struct l_struct_struct_OC_run_loop* _837) {
  struct l_struct_struct_OC_spp_ioctrl_str _838;    /* Address-exposed local */
  struct l_array_6_uint8_t _839;    /* Address-exposed local */
  struct l_array_6_uint8_t _840;    /* Address-exposed local */
  uint8_t* _841;
  uint8_t _842;
  uint8_t _843;
  struct l_struct_struct_OC_user_cmd_ctrl* _844;
  uint8_t* _845;
  uint8_t _846;
  uint8_t _847;
  uint8_t _848;
  struct l_struct_struct_OC_user_cmd_ctrl* _849;
  uint8_t* _850;
  uint8_t* _851;
  uint8_t* _851__PHI_TEMPORARY;
  uint8_t _852;
  uint8_t _852__PHI_TEMPORARY;
  uint8_t _853;
  uint32_t _854;
  struct l_struct_struct_OC_conn_info* _855;
  uint8_t* _856;
  uint8_t* _857;
  uint32_t _858;
  uint64_t _859;
  uint32_t _860;
  uint32_t _861;
  uint32_t _862;
  uint8_t _863;
  struct l_struct_struct_OC__stack_config* _864;
  uint32_t _865;
  uint8_t _866;
  uint32_t _867;
  uint32_t _868;
  uint16_t _869;
  uint16_t _869__PHI_TEMPORARY;
  struct l_struct_struct_OC__stack_config* _870;
  uint16_t* _871;
  uint16_t _872;
  struct l_struct_struct_OC__stack_config* _873;
  uint32_t _874;
  uint32_t _875;
  l_fptr_4* _876;
  uint32_t _877;
  struct l_struct_struct_OC__stack_config* _878;
  uint32_t _879;
  uint16_t _880;
  uint32_t _881;
  uint32_t _882;
  uint32_t _883;
  uint32_t _884;
  uint32_t _885;
  uint32_t _886;
  uint32_t _887;
  uint32_t _888;
  uint32_t _889;
  uint8_t* _890;
  uint16_t _891;
  uint32_t _892;
  uint32_t _893;
  uint32_t _893__PHI_TEMPORARY;
  l_fptr_5* _894;
  l_fptr_5* _895;
  uint8_t* _896;
  uint16_t _897;
  uint32_t _898;
  uint8_t* _899;
  uint32_t _900;
  uint32_t _901;
  uint32_t _902;
  uint32_t _902__PHI_TEMPORARY;
  uint8_t _903;
  uint32_t _904;
  uint16_t _905;
  struct l_struct_struct_OC_user_cmd_ctrl* _906;
  uint32_t _907;
  uint8_t _908;
  uint32_t _909;
  uint16_t _910;
  uint8_t* _911;
  uint8_t _912;
  uint32_t _913;
  uint8_t _914;
  uint16_t _915;
  uint32_t _916;
  uint8_t* _917;
  uint8_t* _918;
  struct l_struct_struct_OC_conn_info* _919;
  struct l_struct_struct_OC_conn_info* _920;
  uint8_t _921;
  l_fptr_6* _922;
  uint32_t _923;
  uint32_t _924;
  uint32_t _925;
  uint32_t _926;
  uint8_t* _927;
  uint8_t* _928;
  uint64_t* _929;
  uint64_t _930;
  l_fptr_1* _931;
  uint32_t _932;
  uint8_t _933;
  uint8_t _934;
  uint8_t _935;
  uint8_t _936;
  uint8_t _937;
  uint8_t _938;
  l_fptr_6* _939;
  uint32_t _940;
  uint16_t _941;
  uint16_t _941__PHI_TEMPORARY;
  uint16_t _942;
  uint32_t _943;
  struct l_struct_struct_OC_conn_info* _944;
  struct l_struct_struct_OC_conn_info* _945;
  uint8_t _946;
  uint32_t _947;
  uint16_t _948;
  uint32_t _949;
  uint8_t _950;
  uint32_t _951;
  struct l_struct_struct_OC__stack_config* _952;
  uint32_t _953;
  uint8_t _954;
  uint16_t _955;
  uint32_t _956;
  struct l_struct_struct_OC__stack_config* _957;
  uint32_t _958;
  l_fptr_1* _959;
  uint32_t _960;
  uint16_t _961;
  uint32_t _962;
  uint16_t _963;
  uint32_t _964;
  struct l_struct_struct_OC_conn_info* _965;
  struct l_struct_struct_OC_conn_info* _965__PHI_TEMPORARY;
  uint64_t _966;
  uint16_t _967;
  struct l_struct_struct_OC_conn_info* _968;
  uint8_t _969;
  uint16_t _970;
  uint8_t _971;
  uint16_t _972;
  uint32_t _973;
  uint8_t _974;
  uint64_t _975;
  uint8_t _976;
  uint8_t _976__PHI_TEMPORARY;
  uint32_t _977;
  uint8_t* _978;
  uint8_t _979;
  uint8_t* _980;
  struct l_struct_struct_OC_conn_info* _981;
  uint64_t _982;
  uint16_t _983;
  uint16_t _984;
  uint16_t _985;
  uint16_t _986;
  uint8_t* _987;
  uint8_t _988;
  uint32_t _989;
  uint16_t _990;
  l_fptr_4* _991;
  uint8_t _992;
  uint32_t _993;
  l_fptr_4* _994;
  l_fptr_4* _995;
  l_fptr_4* _995__PHI_TEMPORARY;
  uint32_t _996;
  uint32_t _997;
  uint32_t _998;
  uint8_t* _999;
  uint8_t _1000;
  uint32_t _1001;
  uint16_t _1002;
  l_fptr_4* _1003;
  uint8_t _1004;
  uint32_t _1005;
  l_fptr_4* _1006;
  l_fptr_4* _1007;
  l_fptr_4* _1007__PHI_TEMPORARY;
  uint32_t _1008;
  uint32_t _1009;
  uint32_t _1010;
  uint8_t _1011;
  uint8_t _1012;
  struct l_struct_struct_OC_user_cmd_ctrl* _1013;
  uint8_t _1014;
  uint8_t _1015;
  uint8_t _1016;
  uint8_t _1017;

  _841 = (&_839.array[((int32_t)0)]);
  _842 = *((&__user_info.field0.field0));
  _843 = *((&__user_info.field0.field1));
  if ((((_842 == _843)&1))) {
    goto _1018;
  } else {
    goto _1019;
  }

_1019:
  _844 = g_user_cmd;
  _845 = (&_844->field11.array[((int32_t)(((uint32_t)(uint8_t)_842)))]);
  _851__PHI_TEMPORARY = _845;   /* for PHI node */
  _852__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1020;

_1018:
  _846 = btstack_emitter_support;
  if ((((_846 == ((uint8_t)0))&1))) {
    goto _1021;
  } else {
    goto _1022;
  }

_1022:
  _847 = *((&__user_info.field0.field13));
  _848 = *((&__user_info.field0.field14));
  if ((((_847 == _848)&1))) {
    goto _1021;
  } else {
    goto _1023;
  }

_1023:
  _849 = g_user_cmd;
  _850 = (&_849->field12.array[((int32_t)(((uint32_t)(uint8_t)_847)))]);
  _851__PHI_TEMPORARY = _850;   /* for PHI node */
  _852__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1020;

_1020:
  _851 = _851__PHI_TEMPORARY;
  _852 = _852__PHI_TEMPORARY;
  _853 = *_851;
  _854 = ((uint32_t)(uint8_t)_853);
  _855 =  /*tail*/ get_bt_current_conn(_852);
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1024;
  } else {
    goto _1025;
  }

_1024:
  _856 = (&_855->field0.array[((int32_t)0)]);
  _857 = memcpy(_841, _856, 6);
  _858 = config_btstask_auto_exit_sniff;
  if ((((_858 == 0u)&1))) {
    goto _1025;
  } else {
    goto _1026;
  }

_1026:
  if ((((_853 == ((uint8_t)-126))&1))) {
    goto _1027;
  } else {
    goto _1028;
  }

_1028:
  _859 = ((*(((uint64_t*)((&_855->field5)))))&4294967295);
   /*tail*/ hci_set_sniff_mode(0, (llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_859, 33))&4294967295)))), 3)), _856, 0, 0, 0, 0);
  goto _1025;

_1027:
  _860 =  /*tail*/ puts(((&_OC_str_OC_20.array[((int32_t)0)])));
  goto _1029;

_1025:
  if ((((((uint32_t)(llvm_add_u32(_854, -22))) < ((uint32_t)27u))&1))) {
    goto _1030;
  } else {
    goto _1031;
  }

_1030:
  _861 =  /*tail*/ user_hfp_send_cmd(_855, _854);
  goto _1032;

_1031:
  _862 = llvm_add_u32(_854, -65);
  if ((((((uint32_t)_862) < ((uint32_t)8u))&1))) {
    goto _1033;
  } else {
    goto _1034;
  }

_1033:
  _863 = btstack_emitter_support;
  if ((((_863 == ((uint8_t)0))&1))) {
    goto _1032;
  } else {
    goto _1035;
  }

_1035:
  _864 = user_stack_configs;
  _865 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_864->field9)));
  if (((((((((uint32_t)_862) < ((uint32_t)2u))&1)) & ((((_865 & 1048576) != 0u)&1)))&1))) {
    goto _1036;
  } else {
    goto _1032;
  }

_1036:
  *((&_864->field5)) = 0;
  _866 = l2cap_debug_enable;
  if ((((_852 == ((uint8_t)1))&1))) {
    goto _1037;
  } else {
    goto _1038;
  }

_1037:
  if ((((((int8_t)_866) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1039;
  } else {
    _869__PHI_TEMPORARY = 32;   /* for PHI node */
    goto _1040;
  }

_1039:
  _867 =  /*tail*/ puts(((&str_OC_39.array[((int32_t)0)])));
  _869__PHI_TEMPORARY = 32;   /* for PHI node */
  goto _1040;

_1038:
  if ((((((int8_t)_866) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1041;
  } else {
    _869__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _1040;
  }

_1041:
  _868 =  /*tail*/ puts(((&str_OC_38.array[((int32_t)0)])));
  _869__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _1040;

_1040:
  _869 = _869__PHI_TEMPORARY;
  _870 = user_stack_configs;
  _871 = (&_870->field5);
  _872 = *_871;
  *_871 = (llvm_or_u16(_872, _869));
  goto _1032;

_1034:
  if ((((((uint32_t)(llvm_add_u32(_854, -50))) < ((uint32_t)13u))&1))) {
    goto _1032;
  } else {
    goto _1042;
  }

_1042:
  if ((((((uint32_t)(llvm_add_u32(_854, -77))) < ((uint32_t)12u))&1))) {
    goto _1043;
  } else {
    goto _1044;
  }

_1043:
  if ((((_855 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1045;
  } else {
    goto _1046;
  }

_1045:
  if ((((_853 == ((uint8_t)77))&1))) {
    goto _1047;
  } else {
    goto _1032;
  }

_1047:
  _873 = user_stack_configs;
  _874 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_873->field9)));
  if (((((_874 & 64) == 0u)&1))) {
    goto _1048;
  } else {
    goto _1049;
  }

_1049:
  _875 =  /*tail*/ user_send_cmd_prepare(1, 6, ((&__user_info.field3.field1.array[((int32_t)0)])));
  goto _1048;

_1046:
  _876 = *((&profile_cmd_hdl_str.field1));
  if ((((_876 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _1032;
  } else {
    goto _1050;
  }

_1050:
  switch (_853) {
  default:
    goto _1032;
  case ((uint8_t)77):
    goto _1051;
  case ((uint8_t)81):
    goto _1052;
  case ((uint8_t)78):
    goto _1053;
  case ((uint8_t)79):
    goto _1053;
  case ((uint8_t)80):
    goto _1053;
  case ((uint8_t)82):
    goto _1054;
  case ((uint8_t)83):
    goto _1055;
  case ((uint8_t)84):
    goto _1056;
  case ((uint8_t)85):
    goto _1057;
  case ((uint8_t)86):
    goto _1058;
  case ((uint8_t)87):
    goto _1059;
  case ((uint8_t)88):
    goto _1060;
  }

_1051:
  _877 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 8);
  goto _1048;

_1052:
  _878 = user_stack_configs;
  _879 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_878->field9)));
  if (((((_879 & 64) == 0u)&1))) {
    goto _1061;
  } else {
    goto _1062;
  }

_1062:
  _880 = *((&_855->field1));
  if ((((_880 == ((uint16_t)0))&1))) {
    goto _1048;
  } else {
    goto _1063;
  }

_1063:
   /*tail*/ hci_disconnect_cmd(_880, 19);
  goto _1048;

_1061:
  _881 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 9);
  goto _1048;

_1053:
  _882 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 2);
  goto _1032;

_1054:
  _883 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 4);
  goto _1048;

_1055:
  _884 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 5);
  goto _1048;

_1056:
  _885 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 6);
  goto _1048;

_1057:
  _886 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 7);
  goto _1048;

_1058:
  _887 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 10);
  goto _1048;

_1059:
  _888 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 11);
  goto _1048;

_1060:
  _889 =  /*tail*/ _876(((&_855->field0.array[((int32_t)0)])), 12);
  goto _1048;

_1044:
  if ((((((uint32_t)(llvm_add_u32(_854, -109))) < ((uint32_t)4u))&1))) {
    goto _1064;
  } else {
    goto _1032;
  }

_1064:
  _890 = (&_838.field0.array[((int32_t)0)]);
  if ((((_855 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1065;
  } else {
    goto _1066;
  }

_1066:
  _891 = *((&_855->field2));
  _892 = ((uint32_t)(uint16_t)_891);
  if (((((_892 & 1) == 0u)&1))) {
    goto _1067;
  } else {
    _893__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1068;
  }

_1067:
  if (((((_892 & 4096) == 0u)&1))) {
    goto _1065;
  } else {
    _893__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _1068;
  }

_1065:
  *((&__user_info.field0.field5)) = 0;
  *((&__user_info.field0.field4)) = ((uint8_t*)/*NULL*/0);
  goto _1069;

_1068:
  _893 = _893__PHI_TEMPORARY;
  _894 = *((&profile_cmd_hdl_str.field2));
  _895 = *((&profile_cmd_hdl_str.field10));
  if (((((((_894 != ((l_fptr_5*)/*NULL*/0))&1)) | (((_895 != ((l_fptr_5*)/*NULL*/0))&1)))&1))) {
    goto _1070;
  } else {
    goto _1069;
  }

_1070:
  switch (_853) {
  default:
    goto _1069;
  case ((uint8_t)112):
    goto _1071;
  case ((uint8_t)110):
    goto _1072;
  case ((uint8_t)109):
    goto _1072;
  }

_1071:
  *((&_838.field2)) = 2;
  _896 = memcpy(_890, ((&_855->field0.array[((int32_t)0)])), 6);
  goto _1073;

_1072:
  _897 = *((&__user_info.field0.field5));
  if ((((_897 == ((uint16_t)0))&1))) {
    goto _1069;
  } else {
    goto _1074;
  }

_1074:
  *((&_838.field2)) = 3;
  _898 = *((uint32_t*)((&__user_info.field0.field4)));
  *(((uint32_t*)((&_838.field4)))) = _898;
  *((&_838.field3)) = (((uint32_t)(uint16_t)_897));
  _899 = memcpy(_890, ((&_855->field0.array[((int32_t)0)])), 6);
  goto _1073;

_1073:
  if ((((_893 == 2u)&1))) {
    goto _1075;
  } else {
    goto _1076;
  }

_1075:
  _900 = _895(_890);
  _902__PHI_TEMPORARY = _900;   /* for PHI node */
  goto _1077;

_1076:
  _901 = _894(_890);
  _902__PHI_TEMPORARY = _901;   /* for PHI node */
  goto _1077;

_1077:
  _902 = _902__PHI_TEMPORARY;
  if ((((_902 == 0u)&1))) {
    goto _1078;
  } else {
    goto _1079;
  }

_1078:
  *((&__user_info.field0.field5)) = 0;
  *((&__user_info.field0.field4)) = ((uint8_t*)/*NULL*/0);
  user_spp_send_ok_callback(0);
  goto _1069;

_1079:
  _903 = l2cap_debug_enable;
  if (((((llvm_and_u8(_903, 32)) == ((uint8_t)0))&1))) {
    goto _1080;
  } else {
    goto _1081;
  }

_1081:
  _904 = puts(((&_OC_str_OC_34.array[((int32_t)0)])));
  goto _1080;

_1080:
  _905 = sys_timeout_add(((uint8_t*)/*NULL*/0), __bt_spp_data_try_send, 10);
  goto _1069;

_1069:
  goto _1032;

_1032:
  switch (_853) {
  default:
    goto _1048;
  case ((uint8_t)7):
    goto _1082;
  case ((uint8_t)8):
    goto _1083;
  case ((uint8_t)9):
    goto _1084;
  case ((uint8_t)10):
    goto _1085;
  case ((uint8_t)0):
    goto _1086;
  case ((uint8_t)3):
    goto _1087;
  case ((uint8_t)1):
    _941__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1088;
  case ((uint8_t)2):
    goto _1089;
  case ((uint8_t)-127):
    goto _1090;
  case ((uint8_t)4):
    goto _1091;
  case ((uint8_t)74):
    goto _1092;
  case ((uint8_t)-117):
    goto _1093;
  case ((uint8_t)6):
    goto _1094;
  case ((uint8_t)11):
    goto _1095;
  case ((uint8_t)15):
    goto _1096;
  case ((uint8_t)13):
    goto _1097;
  case ((uint8_t)14):
    goto _1098;
  case ((uint8_t)12):
    goto _1099;
  case ((uint8_t)18):
    goto _1100;
  case ((uint8_t)5):
    goto _1101;
  case ((uint8_t)-126):
    goto _1029;
  case ((uint8_t)-125):
    goto _1102;
  case ((uint8_t)16):
    goto _1103;
  case ((uint8_t)17):
    goto _1104;
  case ((uint8_t)20):
    goto _1105;
  case ((uint8_t)21):
    goto _1106;
  case ((uint8_t)19):
    goto _1107;
  case ((uint8_t)-119):
    goto _1108;
  case ((uint8_t)-118):
    goto _1109;
  case ((uint8_t)-124):
    goto _1110;
  case ((uint8_t)-123):
    goto _1111;
  case ((uint8_t)-121):
    goto _1112;
  case ((uint8_t)-120):
    goto _1113;
  case ((uint8_t)-122):
    goto _1114;
  }

_1101:
  _965__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1115;

_1107:
  _906 = g_user_cmd;
  _976__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1116;

_1082:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1117;
  } else {
    goto _1048;
  }

_1117:
  _907 = music_player_ctrl(_841, 0);
  goto _1048;

_1083:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1118;
  } else {
    goto _1048;
  }

_1118:
  _908 = sco_connection_setup_dis(_841);
  if ((((_908 == ((uint8_t)10))&1))) {
    goto _1119;
  } else {
    goto _1048;
  }

_1119:
  _909 = hfp_send_bcc_cmd(((&_855->field0.array[((int32_t)0)])));
  goto _1048;

_1084:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1120;
  } else {
    goto _1048;
  }

_1120:
  _910 = *((&_855->field2));
  _911 = (&_855->field0.array[((int32_t)0)]);
  if ((((((int8_t)(((uint8_t)_910))) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1121;
  } else {
    goto _1122;
  }

_1121:
  _912 = setup_hfp_ag_esco_link(_911);
  goto _1048;

_1122:
  _913 = hfp_send_bcc_cmd(_911);
  goto _1048;

_1085:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1123;
  } else {
    goto _1048;
  }

_1123:
  _914 = sco_connection_disconnect(_841);
  goto _1048;

_1086:
  _915 = *((&__user_info.field10));
  _916 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  if (((((((((int8_t)(((uint8_t)_915))) < ((int8_t)((uint8_t)0)))&1)) | ((((((uint32_t)(uint16_t)(llvm_and_u16(_915, 7)))) == ((llvm_lshr_u32(_916, 4)) & 3))&1)))&1))) {
    goto _1048;
  } else {
    goto _1124;
  }

_1124:
  if (((((llvm_and_u16(_915, 56)) == ((uint16_t)0))&1))) {
    goto _1125;
  } else {
    goto _1126;
  }

_1126:
  _917 = (&_840.array[((int32_t)0)]);
  _918 = memcpy(_917, ((&__user_info.field6.array[((int32_t)(llvm_add_u32((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_915, 3)), 7)))), -1)))].array[((int32_t)0)])), 6);
  *((&__user_info.field10)) = (llvm_or_u16((llvm_and_u16((llvm_add_u16(_915, 56)), 56)), (llvm_and_u16(_915, -57))));
  _919 = get_conn_for_addr(_917);
  if ((((_919 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1127;
  } else {
    goto _1128;
  }

_1127:
  _920 = create_bt_new_conn(_917, 0);
  _921 = l2cap_debug_enable;
  if ((((((int8_t)_921) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1129;
  } else {
    goto _1130;
  }

_1128:
  _922 = *((&user_interface_app.field2));
  if ((((_922 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _1131;
  } else {
    goto _1132;
  }

_1132:
  _922(((uint8_t*)/*NULL*/0), 252);
  goto _1133;

_1131:
  bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1212369152u, -8, 0);
  goto _1133;

_1129:
  _923 = printf(((&_OC_str_OC_23.array[((int32_t)0)])), (((uint32_t)(uintptr_t)_920)));
  goto _1130;

_1130:
  _924 = config_asser;
  if ((((_924 == 0u)&1))) {
    goto _1134;
  } else {
    goto _1135;
  }

_1135:
  if ((((_920 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1136;
  } else {
    goto _1137;
  }

_1137:
  _925 = printf(((&_OC_str_OC_24.array[((int32_t)0)])), ((&_OC_str_OC_25.array[((int32_t)0)])), 2494);
  _926 = printf(((&_OC_str_OC_26.array[((int32_t)0)])));
  ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _1136;

_1134:
  if ((((_920 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1136;
  } else {
    goto _1138;
  }

_1138:
  cpu_reset();
  goto _1136;

_1136:
  _927 = (&_920->field0.array[((int32_t)0)]);
  _928 = memcpy(((&__user_info.field3.field1.array[((int32_t)0)])), _927, 6);
  _929 = ((uint64_t*)((&_920->field5)));
  _930 = ((*_929)&4294967295);
  *_929 = (((((_930 | INT64_C(4294967296))&4294967295))) & 4294967295);
  _931 = *((&profile_cmd_hdl_str.field8));
  if ((((_931 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1139;
  } else {
    goto _1140;
  }

_1140:
  _932 = _931(_927, 0, 0);
  goto _1139;

_1139:
  update_bt_current_status(_927, 17, 44);
  goto _1133;

_1133:
  goto _1048;

_1125:
  _933 = *((&__user_info.field3.field1.array[((int32_t)0)]));
  _934 = *((&__user_info.field3.field1.array[((int32_t)1)]));
  _935 = *((&__user_info.field3.field1.array[((int32_t)2)]));
  _936 = *((&__user_info.field3.field1.array[((int32_t)3)]));
  _937 = *((&__user_info.field3.field1.array[((int32_t)4)]));
  _938 = *((&__user_info.field3.field1.array[((int32_t)5)]));
  if (((((llvm_or_u8((llvm_or_u8((llvm_or_u8((llvm_or_u8((llvm_or_u8(_934, _933)), _935)), _936)), _937)), _938)) == ((uint8_t)0))&1))) {
    goto _1141;
  } else {
    goto _1142;
  }

_1141:
  _939 = *((&user_interface_app.field2));
  if ((((_939 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _1143;
  } else {
    goto _1144;
  }

_1144:
  _939(((uint8_t*)/*NULL*/0), 252);
  goto _1048;

_1143:
  bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1212369152u, -8, 0);
  goto _1048;

_1142:
  _940 = user_send_cmd_prepare(1, 6, ((&__user_info.field3.field1.array[((int32_t)0)])));
  goto _1048;

_1087:
  _941__PHI_TEMPORARY = 4353;   /* for PHI node */
  goto _1088;

_1088:
  _941 = _941__PHI_TEMPORARY;
  _942 = *((&__user_info.field10));
  _943 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  if (((((((((int8_t)(((uint8_t)_942))) < ((int8_t)((uint8_t)0)))&1)) | ((((((uint32_t)(uint16_t)(llvm_and_u16(_942, 7)))) == ((llvm_lshr_u32(_943, 4)) & 3))&1)))&1))) {
    goto _1048;
  } else {
    goto _1145;
  }

_1145:
  _944 = get_conn_for_addr(((&__user_info.field3.field3.array[((int32_t)0)])));
  if ((((_944 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1146;
  } else {
    goto _1048;
  }

_1146:
  _945 = create_bt_new_conn(((&__user_info.field3.field3.array[((int32_t)0)])), 0);
  if ((((_945 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1147;
  } else {
    goto _1148;
  }

_1147:
  _946 = l2cap_debug_enable;
  if (((((llvm_and_u8(_946, 32)) == ((uint8_t)0))&1))) {
    goto _1048;
  } else {
    goto _1149;
  }

_1149:
  _947 = puts(((&_OC_str_OC_27.array[((int32_t)0)])));
  goto _1048;

_1148:
  hci_discoverable_control(0, 0);
  hci_connectable_control(0, 0);
  start_connection(_945, _941);
  goto _1048;

_1089:
  _948 = *((&__user_info.field10));
  if ((((((int8_t)(((uint8_t)_948))) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1048;
  } else {
    goto _1150;
  }

_1150:
  _949 = user_send_cmd_prepare(1, 6, ((&__user_info.field3.field1.array[((int32_t)0)])));
  goto _1048;

_1090:
  _950 = l2cap_debug_enable;
  if (((((llvm_and_u8(_950, 32)) == ((uint8_t)0))&1))) {
    goto _1151;
  } else {
    goto _1152;
  }

_1152:
  _951 = puts(((&_OC_str_OC_28.array[((int32_t)0)])));
  goto _1151;

_1151:
  _952 = user_stack_configs;
  _953 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_952->field9)));
  delete_link_key(((struct l_array_6_uint8_t*)/*NULL*/0), (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_953, 20)))), 1)));
  goto _1048;

_1091:
  _954 = emitter_hci_disconn_deal();
  if (((((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1)) & (((_954 == ((uint8_t)0))&1)))&1))) {
    goto _1153;
  } else {
    goto _1048;
  }

_1153:
  _955 = *((&_855->field1));
  if ((((_955 == ((uint16_t)0))&1))) {
    goto _1048;
  } else {
    goto _1154;
  }

_1154:
  hci_disconnect_cmd(_955, 22);
  goto _1048;

_1092:
  _956 = puts(((&_OC_str_OC_29.array[((int32_t)0)])));
  user_disconn_for_poweroff();
  goto _1048;

_1093:
  hci_connectable_control(0, 0);
  hci_discoverable_control(0, 0);
  _957 = user_stack_configs;
  _958 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_957->field9)));
  if (((((_958 & 64) == 0u)&1))) {
    goto _1155;
  } else {
    goto _1156;
  }

_1156:
  ((l_fptr_3*)(void*)set_hid_independent_info)();
  goto _1048;

_1155:
  ((l_fptr_3*)(void*)btstack_hci_init)();
  goto _1048;

_1094:
  hci_remote_name_request_cmd(((&__user_info.field3.field2.array[((int32_t)0)])), 0, 0, 0);
  goto _1048;

_1095:
  _959 = *((&profile_cmd_hdl_str.field8));
  if ((((_959 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1048;
  } else {
    goto _1157;
  }

_1157:
  _960 = _959(((uint8_t*)/*NULL*/0), 1, 0);
  goto _1048;

_1096:
  _961 = *((&__user_info.field10));
  _962 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  if (((((((((int8_t)(((uint8_t)_961))) < ((int8_t)((uint8_t)0)))&1)) | ((((((uint32_t)(uint16_t)(llvm_and_u16(_961, 7)))) == ((llvm_lshr_u32(_962, 4)) & 3))&1)))&1))) {
    goto _1048;
  } else {
    goto _1158;
  }

_1158:
  hci_connectable_control(1, 0);
  goto _1048;

_1097:
  _963 = *((&__user_info.field10));
  _964 = __UNALIGNED_LOAD__(uint32_t, 1, ((&stack_configs_app.field9)));
  if (((((((((int8_t)(((uint8_t)_963))) < ((int8_t)((uint8_t)0)))&1)) | ((((((uint32_t)(uint16_t)(llvm_and_u16(_963, 7)))) == ((llvm_lshr_u32(_964, 4)) & 3))&1)))&1))) {
    goto _1048;
  } else {
    goto _1159;
  }

_1159:
  hci_discoverable_control(1, 0);
  goto _1048;

_1098:
  hci_connectable_control(0, 0);
  goto _1048;

_1099:
  hci_discoverable_control(0, 0);
  goto _1048;

_1100:
  ((l_fptr_3*)(void*)hci_cancle_page)();
  goto _1048;

  do {     /* Syntactic loop '' to make GCC happy */
_1115:
  _965 = _965__PHI_TEMPORARY;
  _966 = ((*(((uint64_t*)((&_965->field5)))))&4294967295);
  if (((((((_966 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1160;
  } else {
    goto _1161;
  }

_1161:
  _967 = *((&_965->field2));
  if ((((_967 == ((uint16_t)0))&1))) {
    goto _1162;
  } else {
    goto _1160;
  }

_1162:
  hci_connection_cancel(((&_965->field0.array[((int32_t)0)])));
  goto _1160;

_1160:
  _968 = (&_965[((int32_t)1)]);
  if ((((((uint32_t)_968) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _965__PHI_TEMPORARY = _968;   /* for PHI node */
    goto _1115;
  } else {
    goto _1163;
  }

  } while (1); /* end of syntactic loop '' */
_1029:
  _969 = ((l_fptr_2*)(void*)get_remote_test_flag)();
  if (((((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1)) & (((_969 != ((uint8_t)0))&1)))&1))) {
    goto _1164;
  } else {
    goto _1048;
  }

_1164:
  _970 = *((&_855->field1));
  if ((((_970 == ((uint16_t)0))&1))) {
    goto _1048;
  } else {
    goto _1165;
  }

_1165:
  _971 = *((&__user_info.field0.field8));
  hci_test_box_key_cmd(_971, _970);
  goto _1048;

_1102:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1166;
  } else {
    goto _1048;
  }

_1166:
  _972 = *((&_855->field1));
  if ((((_972 == ((uint16_t)0))&1))) {
    goto _1048;
  } else {
    goto _1167;
  }

_1167:
  _973 = *((&__user_info.field0.field21));
  hci_send_user_info_cmd(_973, _972);
  goto _1048;

_1103:
  _974 = *((&__user_info.field0.field8));
  hci_inquiry_start(_974);
  goto _1048;

_1104:
  ((l_fptr_3*)(void*)hci_cancel_inquiry)();
  goto _1048;

_1105:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1168;
  } else {
    goto _1048;
  }

_1168:
  _975 = ((*(((uint64_t*)((&_855->field5)))))&4294967295);
  hci_set_sniff_mode(0, (llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_975, 33))&4294967295)))), 3)), ((&_855->field0.array[((int32_t)0)])), 0, 0, 0, 0);
  goto _1048;

_1106:
  bt_api_all_sniff_exit();
  goto _1048;

  do {     /* Syntactic loop '' to make GCC happy */
_1116:
  _976 = _976__PHI_TEMPORARY;
  _977 = ((uint32_t)(uint8_t)_976);
  if ((((_976 == ((uint8_t)1))&1))) {
    goto _1169;
  } else {
    goto _1170;
  }

_1170:
  _978 = (&_906->field9.array[((int32_t)_977)]);
  _979 = *_978;
  if ((((_979 == ((uint8_t)-1))&1))) {
    _976__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1116;
  } else {
    goto _1171;
  }

  } while (1); /* end of syntactic loop '' */
_1171:
  _980 = (&_906->field10.array[((int32_t)_977)].field4.array[((int32_t)0)]);
  _981 = get_conn_for_addr(_980);
  *_978 = -1;
  if ((((_981 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1048;
  } else {
    goto _1172;
  }

_1172:
  _982 = ((*(((uint64_t*)((&_981->field5)))))&4294967295);
  _983 = *((&_906->field10.array[((int32_t)_977)].field0));
  _984 = *((&_906->field10.array[((int32_t)_977)].field1));
  _985 = *((&_906->field10.array[((int32_t)_977)].field2));
  _986 = *((&_906->field10.array[((int32_t)_977)].field3));
  hci_set_sniff_mode(1, (llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_982, 33))&4294967295)))), 3)), _980, _983, _984, _985, _986);
  goto _1048;

_1108:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1173;
  } else {
    goto _1048;
  }

_1173:
  _987 = (&_855->field0.array[((int32_t)0)]);
  _988 = remote_dev_company_ioctrl(_987, 0, 0);
  if ((((_988 == ((uint8_t)2))&1))) {
    goto _1174;
  } else {
    goto _1175;
  }

_1175:
  _989 = user_send_cmd_prepare(60, 0, ((uint8_t*)/*NULL*/0));
  goto _1048;

_1174:
  _990 = *((&_855->field2));
  _991 = *((&profile_cmd_hdl_str.field1));
  _992 = l2cap_debug_enable;
  if ((((((((llvm_and_u16(_990, 16)) != ((uint16_t)0))&1)) & (((_991 != ((l_fptr_4*)/*NULL*/0))&1)))&1))) {
    goto _1176;
  } else {
    goto _1177;
  }

_1176:
  if (((((llvm_and_u8(_992, 32)) != ((uint8_t)0))&1))) {
    goto _1178;
  } else {
    _995__PHI_TEMPORARY = _991;   /* for PHI node */
    goto _1179;
  }

_1178:
  _993 = puts(((&_OC_str_OC_30.array[((int32_t)0)])));
  _994 = *((&profile_cmd_hdl_str.field1));
  _995__PHI_TEMPORARY = _994;   /* for PHI node */
  goto _1179;

_1179:
  _995 = _995__PHI_TEMPORARY;
  _996 = _995(_987, 10);
  goto _1048;

_1177:
  if (((((llvm_and_u8(_992, 32)) != ((uint8_t)0))&1))) {
    goto _1180;
  } else {
    goto _1181;
  }

_1180:
  _997 = puts(((&_OC_str_OC_31.array[((int32_t)0)])));
  goto _1181;

_1181:
  _998 = user_send_cmd_prepare(60, 0, ((uint8_t*)/*NULL*/0));
  goto _1048;

_1109:
  if ((((_855 != ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    goto _1182;
  } else {
    goto _1048;
  }

_1182:
  _999 = (&_855->field0.array[((int32_t)0)]);
  _1000 = remote_dev_company_ioctrl(_999, 0, 0);
  if ((((_1000 == ((uint8_t)2))&1))) {
    goto _1183;
  } else {
    goto _1184;
  }

_1184:
  _1001 = user_send_cmd_prepare(60, 0, ((uint8_t*)/*NULL*/0));
  goto _1048;

_1183:
  _1002 = *((&_855->field2));
  _1003 = *((&profile_cmd_hdl_str.field1));
  _1004 = l2cap_debug_enable;
  if ((((((((llvm_and_u16(_1002, 16)) != ((uint16_t)0))&1)) & (((_1003 != ((l_fptr_4*)/*NULL*/0))&1)))&1))) {
    goto _1185;
  } else {
    goto _1186;
  }

_1185:
  if (((((llvm_and_u8(_1004, 32)) != ((uint8_t)0))&1))) {
    goto _1187;
  } else {
    _1007__PHI_TEMPORARY = _1003;   /* for PHI node */
    goto _1188;
  }

_1187:
  _1005 = puts(((&_OC_str_OC_32.array[((int32_t)0)])));
  _1006 = *((&profile_cmd_hdl_str.field1));
  _1007__PHI_TEMPORARY = _1006;   /* for PHI node */
  goto _1188;

_1188:
  _1007 = _1007__PHI_TEMPORARY;
  _1008 = _1007(_999, 11);
  goto _1048;

_1186:
  if (((((llvm_and_u8(_1004, 32)) != ((uint8_t)0))&1))) {
    goto _1189;
  } else {
    goto _1190;
  }

_1189:
  _1009 = puts(((&_OC_str_OC_33.array[((int32_t)0)])));
  goto _1190;

_1190:
  _1010 = user_send_cmd_prepare(60, 0, ((uint8_t*)/*NULL*/0));
  goto _1048;

_1110:
  _1011 = *((&__user_info.field0.field18));
  user_send_keypress(((&__user_info.field11.array[((int32_t)0)])), _1011);
  goto _1048;

_1111:
  _1012 = *((&__user_info.field0.field19));
  hci_user_confirmation_request(_1012, ((&__user_info.field11.array[((int32_t)0)])));
  goto _1048;

_1112:
  user_cmd_timer_init();
  goto _1048;

_1113:
  remove_user_cmd_timer();
  goto _1048;

_1114:
  _1013 = g_user_cmd;
  hci_tx_channel_chassification(((&_1013->field20.array[((int32_t)0)])));
  goto _1048;

_1163:
  goto _1048;

_1169:
  goto _1048;

_1048:
  if ((((_852 == ((uint8_t)1))&1))) {
    goto _1191;
  } else {
    goto _1192;
  }

_1191:
  _1014 = *((&__user_info.field0.field13));
  _1015 = llvm_add_u8(_1014, 1);
  *((&__user_info.field0.field13)) = (llvm_select_u8((((((uint8_t)_1015) > ((uint8_t)((uint8_t)9)))&1)), 0, _1015));
  goto _1021;

_1192:
  _1016 = *((&__user_info.field0.field0));
  _1017 = llvm_add_u8(_1016, 1);
  *((&__user_info.field0.field0)) = (llvm_select_u8((((((uint8_t)_1017) > ((uint8_t)((uint8_t)15)))&1)), 0, _1017));
  goto _1021;

_1021:
  return;
}


void connect_hfp_while_a2dp_connected(void) {
  l_fptr_5* _1193;
  struct l_struct_struct_OC_conn_info* _1194;
  struct l_struct_struct_OC_conn_info* _1194__PHI_TEMPORARY;
  uint64_t _1195;
  uint16_t _1196;
  uint16_t _1197;
  uint32_t _1198;
  l_fptr_1* _1199;
  uint32_t _1200;
  struct l_struct_struct_OC_conn_info* _1201;

  _1193 = *((&profile_cmd_hdl_str.field0));
  if ((((_1193 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _1202;
  } else {
    goto _1203;
  }

_1203:
  _1194__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1204;

  do {     /* Syntactic loop '' to make GCC happy */
_1204:
  _1194 = _1194__PHI_TEMPORARY;
  _1195 = ((*(((uint64_t*)((&_1194->field5)))))&4294967295);
  if (((((((_1195 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1205;
  } else {
    goto _1206;
  }

_1206:
  _1196 = *((&_1194->field1));
  if ((((_1196 == ((uint16_t)0))&1))) {
    goto _1205;
  } else {
    goto _1207;
  }

_1207:
  _1197 = *((&_1194->field2));
  _1198 = ((uint32_t)(uint16_t)_1197);
  if ((((((((_1198 & 36) != 0u)&1)) & ((((_1198 & 2) == 0u)&1)))&1))) {
    goto _1208;
  } else {
    goto _1205;
  }

_1205:
  _1201 = (&_1194[((int32_t)1)]);
  if ((((((uint32_t)_1201) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1194__PHI_TEMPORARY = _1201;   /* for PHI node */
    goto _1204;
  } else {
    goto _1209;
  }

  } while (1); /* end of syntactic loop '' */
_1208:
  _1199 = *((&profile_cmd_hdl_str.field8));
  if ((((_1199 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1202;
  } else {
    goto _1210;
  }

_1210:
  _1200 =  /*tail*/ _1199(((&_1194->field0.array[((int32_t)0)])), 0, 0);
  goto _1202;

_1209:
  goto _1202;

_1202:
  return;
}


void start_connection(struct l_struct_struct_OC_conn_info* _1211, uint16_t _1212) {
  uint64_t* _1213;
  uint64_t _1214;
  l_fptr_1* _1215;
  uint8_t* _1216;
  uint32_t _1217;
  uint32_t _1218;

  _1213 = ((uint64_t*)((&_1211->field5)));
  _1214 = ((*_1213)&4294967295);
  *_1213 = (((((_1214 | INT64_C(4294967296))&4294967295))) & 4294967295);
  _1215 = *((&profile_cmd_hdl_str.field8));
  if ((((_1215 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _1219;
  } else {
    goto _1220;
  }

_1220:
  _1216 = (&_1211->field0.array[((int32_t)0)]);
  if ((((_1212 == ((uint16_t)4353))&1))) {
    goto _1221;
  } else {
    goto _1222;
  }

_1221:
  _1217 =  /*tail*/ _1215(_1216, 0, 4353);
  goto _1219;

_1222:
  _1218 =  /*tail*/ _1215(_1216, 0, 0);
  goto _1219;

_1219:
  return;
}


void user_disconn_for_poweroff(void) {
  struct l_struct_struct_OC_conn_info* _1223;
  struct l_struct_struct_OC_conn_info* _1223__PHI_TEMPORARY;
  uint8_t _1224;
  uint8_t _1224__PHI_TEMPORARY;
  uint64_t _1225;
  uint16_t _1226;
  uint8_t _1227;
  uint8_t _1227__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _1228;

  _1223__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _1224__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1229;

  do {     /* Syntactic loop '' to make GCC happy */
_1229:
  _1223 = _1223__PHI_TEMPORARY;
  _1224 = _1224__PHI_TEMPORARY;
  _1225 = ((*(((uint64_t*)((&_1223->field5)))))&4294967295);
  if (((((((_1225 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    _1227__PHI_TEMPORARY = _1224;   /* for PHI node */
    goto _1230;
  } else {
    goto _1231;
  }

_1231:
  _1226 = *((&_1223->field1));
  if ((((_1226 == ((uint16_t)0))&1))) {
    _1227__PHI_TEMPORARY = _1224;   /* for PHI node */
    goto _1230;
  } else {
    goto _1232;
  }

_1232:
   /*tail*/ hci_disconnect_cmd(_1226, 22);
  _1227__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1230;

_1230:
  _1227 = _1227__PHI_TEMPORARY;
  _1228 = (&_1223[((int32_t)1)]);
  if ((((((uint32_t)_1228) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1223__PHI_TEMPORARY = _1228;   /* for PHI node */
    _1224__PHI_TEMPORARY = _1227;   /* for PHI node */
    goto _1229;
  } else {
    goto _1233;
  }

  } while (1); /* end of syntactic loop '' */
_1233:
   /*tail*/ hci_connectable_control(0, 0);
   /*tail*/ hci_discoverable_control(0, 0);
   /*tail*/ ((l_fptr_3*)(void*)hci_cancle_page)();
   /*tail*/ ((l_fptr_3*)(void*)hci_cancel_inquiry)();
  if ((((_1227 == ((uint8_t)0))&1))) {
    goto _1234;
  } else {
    goto _1235;
  }

_1234:
   /*tail*/ ((l_fptr_3*)(void*)hci_disconnect_all_standard_connect)();
  goto _1235;

_1235:
  return;
}


void update_connectiong_mac_addr(uint8_t* _1236) {
  uint8_t _1237;
  uint32_t _1238;
  uint8_t _1239;
  uint8_t _1240;
  uint8_t _1240__PHI_TEMPORARY;
  uint8_t* _1241;

  _1237 = l2cap_debug_enable;
  if ((((((int8_t)_1237) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1242;
  } else {
    _1240__PHI_TEMPORARY = _1237;   /* for PHI node */
    goto _1243;
  }

_1242:
  _1238 =  /*tail*/ puts(((&str_OC_40.array[((int32_t)0)])));
  _1239 = l2cap_debug_enable;
  _1240__PHI_TEMPORARY = _1239;   /* for PHI node */
  goto _1243;

_1243:
  _1240 = _1240__PHI_TEMPORARY;
  if (((((llvm_and_u8(_1240, 64u)) == ((uint8_t)0))&1))) {
    goto _1244;
  } else {
    goto _1245;
  }

_1245:
   /*tail*/ put_buf(_1236, 6);
  goto _1244;

_1244:
  *((&__user_info.field13)) = 0;
  *((&__user_info.field12)) = 6;
  _1241 = memcpy(((&__user_info.field11.array[((int32_t)0)])), _1236, 6);
}


void user_send_keypress(uint8_t* _1246, uint8_t _1247) {
  uint8_t _1248;
  uint32_t _1249;
  uint32_t _1250;
  uint32_t _1251;
  uint8_t _1252;

  _1248 = *((&__user_info.field12));
  if ((((_1248 == ((uint8_t)0))&1))) {
    goto _1253;
  } else {
    goto _1254;
  }

_1254:
  _1249 = *((&base_table.array[((int32_t)(llvm_add_u32((((uint32_t)(uint8_t)_1248)), -1)))]));
  _1250 = *((&__user_info.field13));
  _1251 = llvm_add_u32(_1250, (llvm_mul_u32(_1249, (((uint32_t)(uint8_t)_1247)))));
  *((&__user_info.field13)) = _1251;
   /*tail*/ hci_send_keypress(_1246, _1251, _1248);
  _1252 = *((&__user_info.field12));
  *((&__user_info.field12)) = (llvm_add_u8(_1252, -1));
  goto _1253;

_1253:
  return;
}


uint32_t unactice_device_cmd_prepare(uint32_t _1255, uint16_t _1256, uint8_t* _1257) {
  return 0;
}


uint32_t user_hfp_send_cmd(struct l_struct_struct_OC_conn_info* _1258, uint32_t _1259) {
  struct l_struct_struct_OC_hfp_ioctrl_str _1260;    /* Address-exposed local */
  uint8_t* _1261;
  l_fptr_5* _1262;
  l_fptr_5* _1263;
  uint8_t* _1264;
  uint8_t* _1265;
  l_fptr_1* _1266;
  uint32_t _1267;
  l_fptr_5* _1268;
  uint8_t _1269;
  struct l_struct_struct_OC_conn_info* _1270;
  struct l_struct_struct_OC_conn_info* _1270__PHI_TEMPORARY;
  uint64_t _1271;
  uint8_t* _1272;
  struct l_struct_struct_OC_conn_info* _1273;
  struct l_struct_struct_OC_user_cmd_ctrl* _1274;
  uint8_t _1275;
  uint8_t* _1276;
  uint64_t _1277;
  uint8_t _1278;
  l_fptr_5* _1279;
  l_fptr_5* _1279__PHI_TEMPORARY;
  uint32_t _1280;
  uint32_t _1281;
  uint32_t _1281__PHI_TEMPORARY;
  l_fptr_5* _1282;
  uint32_t _1283;
  uint32_t _1284;
  uint32_t _1284__PHI_TEMPORARY;
  uint8_t _1285;
  struct l_struct_struct_OC_btstack_linked_item** _1286;
  struct l_struct_struct_OC_btstack_linked_item* _1287;
  uint16_t _1288;
  uint32_t _1289;
  l_fptr_5* _1290;
  l_fptr_5* _1291;
  l_fptr_5* _1291__PHI_TEMPORARY;
  uint32_t _1292;
  uint32_t _1292__PHI_TEMPORARY;
  uint32_t _1293;
  uint32_t _1294;
  uint32_t _1294__PHI_TEMPORARY;
  uint32_t _1295;
  uint32_t _1296;
  uint32_t _1296__PHI_TEMPORARY;

  _1261 = (&_1260.field0.array[((int32_t)0)]);
  if ((((_1258 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _1296__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _1297;
  } else {
    goto _1298;
  }

_1298:
  _1262 = *((&profile_cmd_hdl_str.field0));
  _1263 = *((&profile_cmd_hdl_str.field6));
  if (((((((_1262 != ((l_fptr_5*)/*NULL*/0))&1)) | (((_1263 != ((l_fptr_5*)/*NULL*/0))&1)))&1))) {
    goto _1299;
  } else {
    _1296__PHI_TEMPORARY = -1006;   /* for PHI node */
    goto _1297;
  }

_1299:
  _1264 = (&_1258->field0.array[((int32_t)0)]);
  _1265 = memcpy(_1261, _1264, 6);
  switch (_1259) {
  default:
    _1284__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _1300;
  case 22u:
    goto _1301;
  case 23u:
    goto _1302;
  case 24u:
    goto _1303;
  case 25u:
    goto _1304;
  case 26u:
    goto _1305;
  case 27u:
    goto _1306;
  case 28u:
    goto _1307;
  case 29u:
    goto _1308;
  case 30u:
    goto _1309;
  case 34u:
    goto _1310;
  case 35u:
    goto _1311;
  case 36u:
    goto _1312;
  case 37u:
    goto _1313;
  case 38u:
    goto _1314;
  case 39u:
    goto _1315;
  case 46u:
    goto _1316;
  case 41u:
    goto _1317;
  case 42u:
    goto _1318;
  case 45u:
    goto _1319;
  case 32u:
    goto _1320;
  case 31u:
    goto _1321;
  case 40u:
    goto _1322;
  case 47u:
    goto _1323;
  }

_1306:
  _1270__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1324;

_1301:
  _1266 = *((&profile_cmd_hdl_str.field8));
  if ((((_1266 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
    goto _1325;
  } else {
    goto _1326;
  }

_1326:
  _1267 =  /*tail*/ _1266(_1264, 0, 0);
  _1268 = *((&profile_cmd_hdl_str.field0));
  _1279__PHI_TEMPORARY = _1268;   /* for PHI node */
  goto _1325;

_1302:
  *((&_1260.field1)) = 19;
  *((&_1260.field3.field0)) = 0;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1303:
  *((&_1260.field1)) = 19;
  *((&_1260.field3.field0)) = 1;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1304:
  *((&_1260.field1)) = 19;
  *((&_1260.field3.field0)) = 2;
  _1269 = *((&__user_info.field0.field6));
  *((&_1260.field2)) = _1269;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1305:
  *((&_1260.field1)) = 19;
  *((&_1260.field3.field0)) = 3;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

  do {     /* Syntactic loop '' to make GCC happy */
_1324:
  _1270 = _1270__PHI_TEMPORARY;
  _1271 = ((*(((uint64_t*)((&_1270->field5)))))&4294967295);
  if (((((((_1271 & 536870927)&4294967295)) == UINT64_C(536870914))&1))) {
    goto _1327;
  } else {
    goto _1328;
  }

_1328:
  _1273 = (&_1270[((int32_t)1)]);
  if ((((((uint32_t)_1273) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1270__PHI_TEMPORARY = _1273;   /* for PHI node */
    goto _1324;
  } else {
    goto _1329;
  }

  } while (1); /* end of syntactic loop '' */
_1327:
  _1272 = memcpy(_1261, ((&_1270->field0.array[((int32_t)0)])), 6);
  goto _1330;

_1329:
  goto _1330;

_1330:
  *((&_1260.field1)) = 0;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1307:
  *((&_1260.field1)) = 1;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1308:
  *((&_1260.field1)) = 2;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1309:
  *((&_1260.field1)) = 6;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1310:
  *((&_1260.field1)) = 7;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1311:
  *((&_1260.field1)) = 8;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1312:
  *((&_1260.field1)) = 9;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1313:
  *((&_1260.field1)) = 10;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1314:
  *((&_1260.field1)) = 13;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1315:
  *((&_1260.field1)) = 11;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1316:
  *((&_1260.field1)) = 16;
  *((&_1260.field3.field0)) = 0;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1317:
  *((&_1260.field1)) = 16;
  *((&_1260.field3.field0)) = 1;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1318:
  *((&_1260.field1)) = 16;
  *((&_1260.field3.field0)) = 3;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1319:
  *((&_1260.field1)) = 16;
  *((&_1260.field3.field0)) = 5;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1320:
  *((&_1260.field1)) = 18;
  _1274 = g_user_cmd;
  _1275 = *((&__user_info.field0.field2));
  _1276 = memcpy((((uint8_t*)((&_1260.field3)))), ((&_1274->field3.array[((int32_t)0)])), (((uint32_t)(uint8_t)_1275)));
  *((&_1260.field2)) = _1275;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1321:
  *((&_1260.field1)) = 17;
  _1277 = ((*(((uint64_t*)((&_1258->field5)))))&4294967295);
  if (((((((_1277 & 15)&4294967295)) == UINT64_C(4))&1))) {
    goto _1331;
  } else {
    goto _1332;
  }

_1331:
  _1278 = *((&__user_info.field0.field7));
  *((&_1260.field2)) = _1278;
  *((&__user_info.field0.field7)) = 0;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1332:
  *((&_1260.field2)) = 0;
  _1284__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1300;

_1322:
  *((&_1260.field1)) = 21;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1323:
  *((&_1260.field1)) = 23;
  _1279__PHI_TEMPORARY = _1262;   /* for PHI node */
  goto _1325;

_1325:
  _1279 = _1279__PHI_TEMPORARY;
  if ((((_1279 == ((l_fptr_5*)/*NULL*/0))&1))) {
    _1281__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1333;
  } else {
    goto _1334;
  }

_1334:
  _1280 = _1279(_1261);
  _1281__PHI_TEMPORARY = _1280;   /* for PHI node */
  goto _1333;

_1333:
  _1281 = _1281__PHI_TEMPORARY;
  _1282 = *((&profile_cmd_hdl_str.field6));
  if ((((_1282 == ((l_fptr_5*)/*NULL*/0))&1))) {
    _1296__PHI_TEMPORARY = _1281;   /* for PHI node */
    goto _1297;
  } else {
    goto _1335;
  }

_1335:
  _1283 = _1282(_1261);
  _1296__PHI_TEMPORARY = _1283;   /* for PHI node */
  goto _1297;

_1300:
  _1284 = _1284__PHI_TEMPORARY;
  _1285 = user_at_cmd_send_support;
  if ((((_1285 == ((uint8_t)0))&1))) {
    _1296__PHI_TEMPORARY = _1284;   /* for PHI node */
    goto _1297;
  } else {
    goto _1336;
  }

_1336:
  _1286 = (&_1258->field7);
  _1287 = *_1286;
  if ((((_1287 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _1296__PHI_TEMPORARY = _1284;   /* for PHI node */
    goto _1297;
  } else {
    goto _1337;
  }

_1337:
  *((&_1260.field1)) = 25;
  *(((uint8_t**)((&_1260.field3)))) = ((&(((struct l_struct_struct_OC_resend_t*)_1287))->field2));
  _1288 = *(((uint16_t*)((&_1287[((int32_t)1)]))));
  *((&_1260.field2)) = (((uint8_t)_1288));
  if ((((_1262 == ((l_fptr_5*)/*NULL*/0))&1))) {
    _1291__PHI_TEMPORARY = _1263;   /* for PHI node */
    _1292__PHI_TEMPORARY = _1284;   /* for PHI node */
    goto _1338;
  } else {
    goto _1339;
  }

_1339:
  _1289 = _1262(_1261);
  _1290 = *((&profile_cmd_hdl_str.field6));
  _1291__PHI_TEMPORARY = _1290;   /* for PHI node */
  _1292__PHI_TEMPORARY = _1289;   /* for PHI node */
  goto _1338;

_1338:
  _1291 = _1291__PHI_TEMPORARY;
  _1292 = _1292__PHI_TEMPORARY;
  if ((((_1291 == ((l_fptr_5*)/*NULL*/0))&1))) {
    _1294__PHI_TEMPORARY = _1292;   /* for PHI node */
    goto _1340;
  } else {
    goto _1341;
  }

_1341:
  _1293 = _1291(_1261);
  _1294__PHI_TEMPORARY = _1293;   /* for PHI node */
  goto _1340;

_1340:
  _1294 = _1294__PHI_TEMPORARY;
  if ((((_1294 == 0u)&1))) {
    goto _1342;
  } else {
    _1296__PHI_TEMPORARY = _1294;   /* for PHI node */
    goto _1297;
  }

_1342:
  _1295 = btstack_linked_list_remove(_1286, _1287);
  free((((uint8_t*)_1287)));
  _1296__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1297;

_1297:
  _1296 = _1296__PHI_TEMPORARY;
  return _1296;
}


void user_spp_send_ok_callback(uint32_t _1343) {
  return;
}


void user_pbg_send_ok_callback(uint32_t _1344) {
  return;
}


void user_adt_send_ok_callback(uint32_t _1345) {
  return;
}


void adt_key_open_mic(void) {
  return;
}


uint32_t user_pan_send_cmd(uint8_t* _1346, uint32_t _1347, uint32_t _1348, uint8_t* _1349) {
  struct l_struct_struct_OC_conn_info* _1350;
  struct l_struct_struct_OC_conn_info* _1351;
  struct l_struct_struct_OC_conn_info* _1352;
  struct l_struct_struct_OC_conn_info* _1352__PHI_TEMPORARY;
  uint8_t* _1353;
  uint64_t _1354;
  l_fptr_7* _1355;
  uint32_t _1356;
  uint32_t _1357;
  uint32_t _1357__PHI_TEMPORARY;

  if ((((_1346 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _1358;
  } else {
    goto _1359;
  }

_1359:
  _1350 =  /*tail*/ get_conn_for_addr(_1346);
  _1352__PHI_TEMPORARY = _1350;   /* for PHI node */
  goto _1360;

_1358:
  _1351 =  /*tail*/ get_conn_for_addr(((&__user_info.field5.array[((int32_t)0)])));
  _1352__PHI_TEMPORARY = _1351;   /* for PHI node */
  goto _1360;

_1360:
  _1352 = _1352__PHI_TEMPORARY;
  if ((((_1352 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _1357__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _1361;
  } else {
    goto _1362;
  }

_1362:
  _1353 = (&_1352->field0.array[((int32_t)0)]);
  _1354 = ((*(((uint64_t*)((&_1352->field5)))))&4294967295);
   /*tail*/ hci_set_sniff_mode(0, (llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_1354, 33))&4294967295)))), 3)), _1353, 0, 0, 0, 0);
  _1355 = *((&profile_cmd_hdl_str.field9));
  if ((((_1355 == ((l_fptr_7*)/*NULL*/0))&1))) {
    _1357__PHI_TEMPORARY = -1006;   /* for PHI node */
    goto _1361;
  } else {
    goto _1363;
  }

_1363:
  _1356 =  /*tail*/ _1355(_1353, _1347, _1348, _1349);
   /*tail*/ ((l_fptr_3*)(void*)stack_run_loop_resume)();
  _1357__PHI_TEMPORARY = _1356;   /* for PHI node */
  goto _1361;

_1361:
  _1357 = _1357__PHI_TEMPORARY;
  return _1357;
}


uint8_t get_role_type_by_addr(uint8_t* _1364) {
  struct l_struct_struct_OC_conn_info* _1365;
  uint64_t _1366;

  _1365 =  /*tail*/ get_conn_for_addr(_1364);
  _1366 = ((*(((uint64_t*)((&_1365->field5)))))&4294967295);
  return (llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_1366, 38))&4294967295)))), 1));
}


uint8_t emitter_hci_disconn_deal(void) {
  struct l_array_6_uint8_t _1367;    /* Address-exposed local */
  uint8_t* _1368;
  uint8_t* _1369;
  struct l_struct_struct_OC_conn_info* _1370;
  struct l_struct_struct_OC_conn_info* _1370__PHI_TEMPORARY;
  uint64_t _1371;
  uint16_t _1372;
  uint16_t _1373;
  struct l_struct_struct_OC_user_cmd_ctrl* _1374;
  uint8_t* _1375;
  uint32_t _1376;
  uint32_t _1377;
  struct l_struct_struct_OC_user_cmd_ctrl* _1378;
  uint8_t* _1379;
  struct l_struct_struct_OC_conn_info* _1380;
  uint8_t _1381;
  uint8_t _1381__PHI_TEMPORARY;

  _1368 = (&_1367.array[((int32_t)0)]);
  _1369 = memset(_1368, 0, 6);
  _1370__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1382;

  do {     /* Syntactic loop '' to make GCC happy */
_1382:
  _1370 = _1370__PHI_TEMPORARY;
  _1371 = ((*(((uint64_t*)((&_1370->field5)))))&4294967295);
  if (((((((_1371 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1383;
  } else {
    goto _1384;
  }

_1384:
  _1372 = *((&_1370->field1));
  if ((((_1372 == ((uint16_t)0))&1))) {
    goto _1383;
  } else {
    goto _1385;
  }

_1385:
  _1373 = *((&_1370->field2));
  if (((((llvm_and_u16(_1373, 8320)) == ((uint16_t)0))&1))) {
    goto _1383;
  } else {
    goto _1386;
  }

_1386:
  _1374 = g_user_cmd;
  _1375 = (&_1374->field23.array[((int32_t)0)]);
  _1376 = memcmp(_1375, _1368, 6);
  if ((((_1376 == 0u)&1))) {
    goto _1387;
  } else {
    goto _1388;
  }

_1388:
  _1377 =  /*tail*/ memcmp(_1375, ((&_1370->field0.array[((int32_t)0)])), 6);
  if ((((_1377 == 0u)&1))) {
    goto _1389;
  } else {
    goto _1383;
  }

_1387:
   /*tail*/ hci_disconnect_cmd(_1372, 22);
  goto _1383;

_1383:
  _1380 = (&_1370[((int32_t)1)]);
  if ((((((uint32_t)_1380) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1370__PHI_TEMPORARY = _1380;   /* for PHI node */
    goto _1382;
  } else {
    goto _1390;
  }

  } while (1); /* end of syntactic loop '' */
_1389:
   /*tail*/ hci_disconnect_cmd(_1372, 22);
  _1378 = g_user_cmd;
  _1379 = memset(((&_1378->field23.array[((int32_t)0)])), 0, 6);
  _1381__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1391;

_1390:
  _1381__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1391;

_1391:
  _1381 = _1381__PHI_TEMPORARY;
  return _1381;
}


uint8_t tws_host_timeout_get(void) {
  uint8_t _1392;

  _1392 = *((&__user_info.field9));
  return _1392;
}


void tws_host_timeout_del_event(void) {
  *((&__user_info.field9)) = 0;
}


void tws_host_timeout_del(void) {
  *((&__user_info.field9)) = 0;
}


uint8_t check_conn_channel_for_tws(void) {
  uint8_t _1393;
  struct l_struct_struct_OC_conn_info* _1394;
  struct l_struct_struct_OC_conn_info* _1394__PHI_TEMPORARY;
  uint16_t _1395;
  uint16_t _1395__PHI_TEMPORARY;
  uint16_t* _1396;
  uint16_t _1397;
  uint64_t _1398;
  uint16_t _1399;
  uint16_t _1400;
  uint8_t _1401;
  uint16_t _1402;
  uint16_t _1403;
  uint16_t _1403__PHI_TEMPORARY;
  uint8_t _1404;
  uint16_t _1405;
  uint16_t _1406;
  uint16_t _1406__PHI_TEMPORARY;
  uint8_t _1407;
  uint16_t _1408;
  uint16_t _1409;
  uint16_t _1410;
  uint16_t _1410__PHI_TEMPORARY;
  uint16_t _1411;
  uint16_t _1411__PHI_TEMPORARY;
  uint16_t _1412;
  uint16_t _1413;
  uint8_t _1414;
  uint8_t _1415;
  uint32_t _1416;
  uint16_t _1417;
  uint16_t _1417__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _1418;
  uint8_t _1419;
  uint8_t _1419__PHI_TEMPORARY;
  uint8_t _1420;
  uint8_t _1420__PHI_TEMPORARY;

  _1393 = hid_conn_depend_on_dev_company;
  _1394__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _1395__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1421;

  do {     /* Syntactic loop '' to make GCC happy */
_1421:
  _1394 = _1394__PHI_TEMPORARY;
  _1395 = _1395__PHI_TEMPORARY;
  _1396 = (&_1394->field2);
  _1397 = *_1396;
  if ((((_1397 == ((uint16_t)0))&1))) {
    _1417__PHI_TEMPORARY = _1395;   /* for PHI node */
    goto _1422;
  } else {
    goto _1423;
  }

_1423:
  _1398 = ((*(((uint64_t*)((&_1394->field5)))))&4294967295);
  if (((((((_1398 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    _1417__PHI_TEMPORARY = _1395;   /* for PHI node */
    goto _1422;
  } else {
    goto _1424;
  }

_1424:
  _1399 = *((&stack_configs_app.field4));
  _1400 = llvm_or_u16((llvm_select_u16(((((llvm_and_u16((llvm_and_u16(_1397, 4)), _1399)) == ((uint16_t)0))&1)), _1395, (llvm_or_u16(_1395, 36)))), (llvm_select_u16(((((llvm_and_u16(_1399, 8)) == ((uint16_t)0))&1)), 0, (llvm_and_u16(_1397, 8)))));
  if (((((llvm_and_u16(_1399, 2)) == ((uint16_t)0))&1))) {
    _1403__PHI_TEMPORARY = _1400;   /* for PHI node */
    goto _1425;
  } else {
    goto _1426;
  }

_1426:
  if (((((llvm_and_u16(_1397, 2)) == ((uint16_t)0))&1))) {
    goto _1427;
  } else {
    goto _1428;
  }

_1427:
  _1401 = *((&_1394->field3));
  if (((((llvm_and_u8(_1401, 2)) == ((uint8_t)0))&1))) {
    _1403__PHI_TEMPORARY = _1400;   /* for PHI node */
    goto _1425;
  } else {
    goto _1428;
  }

_1428:
  _1402 = llvm_or_u16(_1400, 2);
  _1403__PHI_TEMPORARY = _1402;   /* for PHI node */
  goto _1425;

_1425:
  _1403 = _1403__PHI_TEMPORARY;
  if (((((llvm_and_u16(_1399, 16)) == ((uint16_t)0))&1))) {
    _1410__PHI_TEMPORARY = _1397;   /* for PHI node */
    _1411__PHI_TEMPORARY = _1403;   /* for PHI node */
    goto _1429;
  } else {
    goto _1430;
  }

_1430:
  if (((((llvm_and_u16(_1397, 16)) == ((uint16_t)0))&1))) {
    goto _1431;
  } else {
    goto _1432;
  }

_1431:
  _1404 = *((&_1394->field3));
  if (((((llvm_and_u8(_1404, 16)) == ((uint8_t)0))&1))) {
    _1406__PHI_TEMPORARY = _1403;   /* for PHI node */
    goto _1433;
  } else {
    goto _1432;
  }

_1432:
  _1405 = llvm_or_u16(_1403, 16);
  _1406__PHI_TEMPORARY = _1405;   /* for PHI node */
  goto _1433;

_1433:
  _1406 = _1406__PHI_TEMPORARY;
  if ((((_1393 == ((uint8_t)1))&1))) {
    goto _1434;
  } else {
    _1410__PHI_TEMPORARY = _1397;   /* for PHI node */
    _1411__PHI_TEMPORARY = _1406;   /* for PHI node */
    goto _1429;
  }

_1434:
  _1407 =  /*tail*/ remote_dev_company_ioctrl(((&_1394->field0.array[((int32_t)0)])), 0, 0);
  _1408 = *_1396;
  if ((((_1407 == ((uint8_t)2))&1))) {
    _1410__PHI_TEMPORARY = _1408;   /* for PHI node */
    _1411__PHI_TEMPORARY = _1406;   /* for PHI node */
    goto _1429;
  } else {
    goto _1435;
  }

_1435:
  if (((((llvm_and_u16(_1408, 16)) == ((uint16_t)0))&1))) {
    goto _1436;
  } else {
    _1419__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1437;
  }

_1436:
  _1409 = llvm_or_u16(_1406, 16);
  _1410__PHI_TEMPORARY = _1408;   /* for PHI node */
  _1411__PHI_TEMPORARY = _1409;   /* for PHI node */
  goto _1429;

_1429:
  _1410 = _1410__PHI_TEMPORARY;
  _1411 = _1411__PHI_TEMPORARY;
  _1412 = *((&stack_configs_app.field4));
  _1413 = llvm_or_u16((llvm_or_u16((llvm_and_u16(_1412, 1)), _1411)), (llvm_and_u16((llvm_lshr_u16(_1410, 3)), 512)));
  _1414 = *((&__user_info.field9));
  if ((((_1414 == ((uint8_t)0))&1))) {
    goto _1438;
  } else {
    goto _1439;
  }

_1439:
  if ((((_1412 == _1413)&1))) {
    _1419__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1437;
  } else {
    _1417__PHI_TEMPORARY = _1413;   /* for PHI node */
    goto _1422;
  }

_1422:
  _1417 = _1417__PHI_TEMPORARY;
  _1418 = (&_1394[((int32_t)1)]);
  if ((((((uint32_t)_1418) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1394__PHI_TEMPORARY = _1418;   /* for PHI node */
    _1395__PHI_TEMPORARY = _1417;   /* for PHI node */
    goto _1421;
  } else {
    _1419__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _1437;
  }

  } while (1); /* end of syntactic loop '' */
_1438:
  _1415 = l2cap_debug_enable;
  if (((((llvm_and_u8(_1415, 32)) == ((uint8_t)0))&1))) {
    _1420__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1440;
  } else {
    goto _1441;
  }

_1441:
  _1416 =  /*tail*/ puts(((&_OC_str_OC_17.array[((int32_t)0)])));
  _1420__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1440;

_1437:
  _1419 = _1419__PHI_TEMPORARY;
  _1420__PHI_TEMPORARY = _1419;   /* for PHI node */
  goto _1440;

_1440:
  _1420 = _1420__PHI_TEMPORARY;
  return _1420;
}


uint8_t bt_api_conn_mode_check(uint8_t _1442, uint8_t* _1443) {
  struct l_struct_struct_OC_conn_info* _1444;
  struct l_struct_struct_OC_conn_info* _1444__PHI_TEMPORARY;
  uint8_t _1445;
  uint8_t _1445__PHI_TEMPORARY;
  uint8_t _1446;
  uint8_t _1446__PHI_TEMPORARY;
  uint8_t _1447;
  uint8_t _1447__PHI_TEMPORARY;
  uint64_t* _1448;
  uint64_t _1449;
  uint8_t _1450;
  uint32_t _1451;
  uint64_t _1452;
  uint64_t _1453;
  uint64_t _1454;
  uint64_t _1454__PHI_TEMPORARY;
  uint8_t _1455;
  uint8_t _1456;
  uint8_t _1457;
  uint8_t _1457__PHI_TEMPORARY;
  uint8_t _1458;
  uint8_t _1458__PHI_TEMPORARY;
  uint8_t _1459;
  uint8_t _1459__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _1460;

  _1444__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _1445__PHI_TEMPORARY = 0;   /* for PHI node */
  _1446__PHI_TEMPORARY = 0;   /* for PHI node */
  _1447__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1461;

  do {     /* Syntactic loop '' to make GCC happy */
_1461:
  _1444 = _1444__PHI_TEMPORARY;
  _1445 = _1445__PHI_TEMPORARY;
  _1446 = _1446__PHI_TEMPORARY;
  _1447 = _1447__PHI_TEMPORARY;
  _1448 = ((uint64_t*)((&_1444->field5)));
  _1449 = ((*_1448)&4294967295);
  if (((((((_1449 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    _1457__PHI_TEMPORARY = _1447;   /* for PHI node */
    _1458__PHI_TEMPORARY = _1446;   /* for PHI node */
    _1459__PHI_TEMPORARY = _1445;   /* for PHI node */
    goto _1462;
  } else {
    goto _1463;
  }

_1463:
  _1450 = llvm_add_u8(_1447, 1);
  _1451 =  /*tail*/ memcmp(((&_1444->field0.array[((int32_t)0)])), _1443, 6);
  if ((((_1451 == 0u)&1))) {
    goto _1464;
  } else {
    _1454__PHI_TEMPORARY = _1449;   /* for PHI node */
    goto _1465;
  }

_1464:
  _1452 = ((_1449 & INT64_C(-25769803777))&4294967295);
  _1453 = ((llvm_select_u40((((_1442 != ((uint8_t)0))&1)), _1452, (((_1452 | INT64_C(17179869184))&4294967295))))&4294967295);
  *_1448 = ((_1453) & 4294967295);
  _1454__PHI_TEMPORARY = _1453;   /* for PHI node */
  goto _1465;

_1465:
  _1454 = ((_1454__PHI_TEMPORARY)&4294967295);
  if (((((((_1454 & INT64_C(25769803776))&4294967295)) == UINT64_C(0))&1))) {
    goto _1466;
  } else {
    goto _1467;
  }

_1467:
  _1455 = llvm_add_u8(_1445, 1);
  _1457__PHI_TEMPORARY = _1450;   /* for PHI node */
  _1458__PHI_TEMPORARY = _1446;   /* for PHI node */
  _1459__PHI_TEMPORARY = _1455;   /* for PHI node */
  goto _1462;

_1466:
  _1456 = llvm_add_u8(_1446, 1);
  _1457__PHI_TEMPORARY = _1450;   /* for PHI node */
  _1458__PHI_TEMPORARY = _1456;   /* for PHI node */
  _1459__PHI_TEMPORARY = _1445;   /* for PHI node */
  goto _1462;

_1462:
  _1457 = _1457__PHI_TEMPORARY;
  _1458 = _1458__PHI_TEMPORARY;
  _1459 = _1459__PHI_TEMPORARY;
  _1460 = (&_1444[((int32_t)1)]);
  if ((((((uint32_t)_1460) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1444__PHI_TEMPORARY = _1460;   /* for PHI node */
    _1445__PHI_TEMPORARY = _1459;   /* for PHI node */
    _1446__PHI_TEMPORARY = _1458;   /* for PHI node */
    _1447__PHI_TEMPORARY = _1457;   /* for PHI node */
    goto _1461;
  } else {
    goto _1468;
  }

  } while (1); /* end of syntactic loop '' */
_1468:
  if ((((_1457 == ((uint8_t)2))&1))) {
    goto _1469;
  } else {
    goto _1470;
  }

_1469:
  if (((((((_1442 == ((uint8_t)0))&1)) | (((_1458 == ((uint8_t)0))&1)))&1))) {
    goto _1471;
  } else {
    goto _1470;
  }

_1471:
  return (((uint8_t)(bool)((((((_1442 == ((uint8_t)0))&1)) & (((_1459 == ((uint8_t)2))&1)))&1))));
_1470:
  return 1;
}


uint32_t mic_coder_busy_flag(void) {
  return 0;
}


uint32_t filter_out_sbc_data_en(void) {
  return 0;
}


uint32_t update_check_sniff_en(void) {
  return 1;
}


void clear_sniff_cnt(void) {
  struct l_struct_struct_OC_conn_info* _1472;
  struct l_struct_struct_OC_conn_info* _1472__PHI_TEMPORARY;
  uint64_t _1473;
  struct l_struct_struct_OC_conn_info* _1474;

  _1472__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1475;

  do {     /* Syntactic loop '' to make GCC happy */
_1475:
  _1472 = _1472__PHI_TEMPORARY;
  _1473 = ((*(((uint64_t*)((&_1472->field5)))))&4294967295);
  if (((((((_1473 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1476;
  } else {
    goto _1477;
  }

_1477:
  *((&_1472->field6)) = 0;
  goto _1476;

_1476:
  _1474 = (&_1472[((int32_t)1)]);
  if ((((((uint32_t)_1474) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1472__PHI_TEMPORARY = _1474;   /* for PHI node */
    goto _1475;
  } else {
    goto _1478;
  }

  } while (1); /* end of syntactic loop '' */
_1478:
  return;
}


uint8_t bt_emitter_stu_get(void) {
  return 0;
}


uint8_t bt_api_enter_sniff_status_check(uint16_t _1479, uint8_t* _1480) {
  uint32_t _1481;
  uint32_t _1482;
  struct l_struct_struct_OC_conn_info* _1483;
  struct l_struct_struct_OC_conn_info* _1483__PHI_TEMPORARY;
  uint8_t _1484;
  uint8_t _1484__PHI_TEMPORARY;
  uint64_t* _1485;
  uint64_t _1486;
  uint8_t _1487;
  uint64_t _1488;
  uint8_t _1489;
  uint8_t _1490;
  uint32_t _1491;
  uint32_t _1492;
  uint8_t _1493;
  uint64_t _1494;
  uint8_t* _1495;
  uint8_t _1496;
  uint8_t _1497;
  uint8_t* _1498;
  uint8_t* _1499;
  uint8_t* _1499__PHI_TEMPORARY;
  uint8_t _1500;
  uint8_t _1500__PHI_TEMPORARY;
  uint8_t* _1501;
  uint8_t _1502;
  uint8_t _1503;
  uint8_t _1503__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _1504;
  uint8_t _1505;
  uint8_t _1505__PHI_TEMPORARY;

  _1481 =  /*tail*/ update_check_sniff_en();
  if ((((_1481 == 0u)&1))) {
    _1505__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1506;
  } else {
    goto _1507;
  }

_1507:
  _1482 = ((uint32_t)(uint16_t)_1479);
  _1483__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _1484__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1508;

  do {     /* Syntactic loop '' to make GCC happy */
_1508:
  _1483 = _1483__PHI_TEMPORARY;
  _1484 = _1484__PHI_TEMPORARY;
  _1485 = ((uint64_t*)((&_1483->field5)));
  _1486 = ((*_1485)&4294967295);
  if (((((((_1486 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    _1503__PHI_TEMPORARY = _1484;   /* for PHI node */
    goto _1509;
  } else {
    goto _1510;
  }

_1510:
  _1487 =  /*tail*/ ((l_fptr_2*)(void*)get_esco_coder_busy_flag)();
  if ((((_1487 == ((uint8_t)0))&1))) {
    goto _1511;
  } else {
    goto _1512;
  }

_1511:
  _1488 = ((*_1485)&4294967295);
  if (((((((_1488 & INT64_C(25769803776))&4294967295)) == UINT64_C(0))&1))) {
    goto _1513;
  } else {
    goto _1512;
  }

_1513:
  _1489 = *((&_1483->field4));
  if ((((((((((_1488 & 15)&4294967295)) == UINT64_C(5))&1)) & (((_1489 == ((uint8_t)45))&1)))&1))) {
    goto _1514;
  } else {
    goto _1512;
  }

_1514:
  _1490 =  /*tail*/ a2dp_get_status_for_conn(_1483);
  if ((((_1490 == ((uint8_t)1))&1))) {
    goto _1512;
  } else {
    goto _1515;
  }

_1515:
  _1491 =  /*tail*/ mic_coder_busy_flag();
  if ((((_1491 == 0u)&1))) {
    goto _1516;
  } else {
    goto _1512;
  }

_1516:
  _1492 =  /*tail*/ filter_out_sbc_data_en();
  if ((((_1492 == 0u)&1))) {
    goto _1517;
  } else {
    goto _1512;
  }

_1517:
  _1493 =  /*tail*/ bt_emitter_stu_get();
  _1494 = ((*_1485)&4294967295);
  if (((((((((((((_1494 & UINT64_C(274877906944))&4294967295)) != UINT64_C(0))&1)) & (((_1493 == ((uint8_t)0))&1)))&1)) | ((((((_1494 & UINT64_C(274877906944))&4294967295)) == UINT64_C(0))&1)))&1))) {
    goto _1518;
  } else {
    goto _1512;
  }

_1518:
  _1495 = (&_1483->field6);
  _1496 = *_1495;
  _1497 = llvm_add_u8(_1496, 1);
  *_1495 = _1497;
  _1499__PHI_TEMPORARY = _1495;   /* for PHI node */
  _1500__PHI_TEMPORARY = _1497;   /* for PHI node */
  goto _1519;

_1512:
  _1498 = (&_1483->field6);
  *_1498 = 0;
  _1499__PHI_TEMPORARY = _1498;   /* for PHI node */
  _1500__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1519;

_1519:
  _1499 = _1499__PHI_TEMPORARY;
  _1500 = _1500__PHI_TEMPORARY;
  if ((((((uint32_t)(((uint32_t)(uint8_t)_1500))) < ((uint32_t)_1482))&1))) {
    _1503__PHI_TEMPORARY = _1484;   /* for PHI node */
    goto _1509;
  } else {
    goto _1520;
  }

_1520:
  *_1499 = 0;
  _1501 = memcpy(((&_1480[((int32_t)(llvm_mul_u32((((uint32_t)(uint8_t)_1484)), 6)))])), ((&_1483->field0.array[((int32_t)0)])), 6);
  _1502 = llvm_add_u8(_1484, 1);
  _1503__PHI_TEMPORARY = _1502;   /* for PHI node */
  goto _1509;

_1509:
  _1503 = _1503__PHI_TEMPORARY;
  _1504 = (&_1483[((int32_t)1)]);
  if ((((((uint32_t)_1504) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1483__PHI_TEMPORARY = _1504;   /* for PHI node */
    _1484__PHI_TEMPORARY = _1503;   /* for PHI node */
    goto _1508;
  } else {
    goto _1521;
  }

  } while (1); /* end of syntactic loop '' */
_1521:
  _1505__PHI_TEMPORARY = _1503;   /* for PHI node */
  goto _1506;

_1506:
  _1505 = _1505__PHI_TEMPORARY;
  return _1505;
}


uint8_t check_user_cmd_for_tws(void) {
  uint8_t _1522;
  uint8_t _1523;

  _1522 = *((&__user_info.field0.field0));
  _1523 = *((&__user_info.field0.field1));
  return (((uint8_t)(bool)(((_1522 != _1523)&1))));
}


uint8_t get_auto_connect_state(uint8_t* _1524) {
  struct l_struct_struct_OC_conn_info* _1525;
  uint64_t _1526;
  uint8_t _1527;
  uint8_t _1528;
  uint8_t _1528__PHI_TEMPORARY;

  _1525 =  /*tail*/ get_conn_for_addr(_1524);
  if ((((_1525 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _1528__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1529;
  } else {
    goto _1530;
  }

_1530:
  _1526 = ((*(((uint64_t*)((&_1525->field5)))))&4294967295);
  _1527 = llvm_and_u8((((uint8_t)(((llvm_lshr_u40(_1526, 32))&4294967295)))), 1);
  _1528__PHI_TEMPORARY = _1527;   /* for PHI node */
  goto _1529;

_1529:
  _1528 = _1528__PHI_TEMPORARY;
  return _1528;
}


uint32_t user_core_data_for_send(uint8_t* _1531, uint16_t _1532) {
  uint8_t* _1533;

  _1533 = memcpy(_1531, ((&__user_info.field3.field0)), 19);
  return 19;
}


void user_core_data_for_set(uint8_t* _1534, uint16_t _1535) {
  uint8_t* _1536;

  _1536 = memcpy(((&__user_info.field3.field0)), _1534, 19);
}


uint32_t get_music_sync_volume(void) {
  struct l_struct_struct_OC_conn_info* _1537;
  uint32_t _1538;
  uint32_t _1539;
  uint32_t _1539__PHI_TEMPORARY;

  _1537 =  /*tail*/ get_bt_current_conn(0);
  if ((((_1537 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _1539__PHI_TEMPORARY = 255;   /* for PHI node */
    goto _1540;
  } else {
    goto _1541;
  }

_1541:
  _1538 =  /*tail*/ get_music_volume(((&_1537->field0.array[((int32_t)0)])));
  _1539__PHI_TEMPORARY = _1538;   /* for PHI node */
  goto _1540;

_1540:
  _1539 = _1539__PHI_TEMPORARY;
  return _1539;
}


uint8_t get_remote_dev_company(void) {
  struct l_struct_struct_OC_conn_info* _1542;
  struct l_struct_struct_OC_conn_info* _1542__PHI_TEMPORARY;
  uint64_t _1543;
  uint8_t _1544;
  struct l_struct_struct_OC_conn_info* _1545;
  uint8_t _1546;
  uint8_t _1546__PHI_TEMPORARY;

  _1542__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1547;

  do {     /* Syntactic loop '' to make GCC happy */
_1547:
  _1542 = _1542__PHI_TEMPORARY;
  _1543 = ((*(((uint64_t*)((&_1542->field5)))))&4294967295);
  if (((((((_1543 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1548;
  } else {
    goto _1549;
  }

_1548:
  _1545 = (&_1542[((int32_t)1)]);
  if ((((((uint32_t)_1545) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1542__PHI_TEMPORARY = _1545;   /* for PHI node */
    goto _1547;
  } else {
    goto _1550;
  }

  } while (1); /* end of syntactic loop '' */
_1549:
  _1544 =  /*tail*/ remote_dev_company_ioctrl(((&_1542->field0.array[((int32_t)0)])), 0, 0);
  _1546__PHI_TEMPORARY = _1544;   /* for PHI node */
  goto _1551;

_1550:
  _1546__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1551;

_1551:
  _1546 = _1546__PHI_TEMPORARY;
  return _1546;
}


uint32_t user_send_at_cmd_prepare(uint8_t* _1552, uint16_t _1553) {
  struct l_struct_struct_OC_conn_info* _1554;
  uint8_t _1555;
  uint32_t _1556;
  uint32_t _1557;
  uint8_t* _1558;
  uint8_t* _1559;
  uint8_t* _1560;
  uint32_t _1561;
  uint32_t _1562;
  uint32_t _1562__PHI_TEMPORARY;

  _1554 =  /*tail*/ get_conn_for_addr(((&__user_info.field5.array[((int32_t)0)])));
  _1555 = user_at_cmd_send_support;
  if ((((_1555 == ((uint8_t)0))&1))) {
    _1562__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _1563;
  } else {
    goto _1564;
  }

_1564:
  if ((((_1554 == ((struct l_struct_struct_OC_conn_info*)/*NULL*/0))&1))) {
    _1562__PHI_TEMPORARY = -2;   /* for PHI node */
    goto _1563;
  } else {
    goto _1565;
  }

_1565:
  _1556 = ((uint32_t)(uint16_t)_1553);
  _1557 = llvm_add_u32(_1556, 8);
  _1558 =  /*tail*/ malloc(_1557);
  if ((((_1558 == ((uint8_t*)/*NULL*/0))&1))) {
    _1562__PHI_TEMPORARY = -3;   /* for PHI node */
    goto _1563;
  } else {
    goto _1566;
  }

_1566:
  _1559 = memset(_1558, 0, _1557);
  *(((uint16_t*)((&_1558[((int32_t)4)])))) = _1553;
  _1560 = memcpy(((&_1558[((int32_t)6)])), _1552, _1556);
   /*tail*/ btstack_linked_list_add_tail(((&_1554->field7)), (((struct l_struct_struct_OC_btstack_linked_item*)_1558)));
  _1561 =  /*tail*/ user_send_cmd_prepare(48, 0, ((uint8_t*)/*NULL*/0));
  _1562__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1563;

_1563:
  _1562 = _1562__PHI_TEMPORARY;
  return _1562;
}


uint8_t get_is_in_background_flag(void) {
  uint16_t _1567;
  struct l_struct_struct_OC__stack_config* _1568;
  uint8_t _1569;
  bool _1570;
  bool _1570__PHI_TEMPORARY;

  _1567 = *((&__user_info.field10));
  if (((((llvm_and_u16(_1567, 256)) == ((uint16_t)0))&1))) {
    _1570__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1571;
  } else {
    goto _1572;
  }

_1572:
  _1568 = user_stack_configs;
  _1569 = *((&_1568->field8));
  _1570__PHI_TEMPORARY = (((_1569 != ((uint8_t)0))&1));   /* for PHI node */
  goto _1571;

_1571:
  _1570 = ((_1570__PHI_TEMPORARY)&1);
  return (((uint8_t)(bool)_1570));
}


uint32_t bredr_suspend(void) {
  struct l_struct_struct_OC_bt_sleep* _1573;
  struct l_struct_struct_OC_bt_sleep* _1573__PHI_TEMPORARY;
  l_fptr_8* _1574;
  uint32_t _1575;
  struct l_struct_struct_OC_bt_sleep* _1576;

  if ((((&bt_sleep_begin)) < ((&bt_sleep_end)))) {
    goto _1577;
  } else {
    goto _1578;
  }

_1577:
  _1573__PHI_TEMPORARY = ((&bt_sleep_begin));   /* for PHI node */
  goto _1579;

  do {     /* Syntactic loop '' to make GCC happy */
_1579:
  _1573 = _1573__PHI_TEMPORARY;
  _1574 = *(((l_fptr_8**)_1573));
  _1575 =  /*tail*/ _1574();
  _1576 = (&_1573[((int32_t)1)]);
  if ((((((uint32_t)_1576) < ((uint32_t)((&bt_sleep_end))))&1))) {
    _1573__PHI_TEMPORARY = _1576;   /* for PHI node */
    goto _1579;
  } else {
    goto _1580;
  }

  } while (1); /* end of syntactic loop '' */
_1580:
  goto _1578;

_1578:
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 22, 0);
  return 1;
}


void bredr_resume(void) {
  struct l_struct_struct_OC_bt_sleep* _1581;
  struct l_struct_struct_OC_bt_sleep* _1581__PHI_TEMPORARY;
  l_fptr_8* _1582;
  uint32_t _1583;
  struct l_struct_struct_OC_bt_sleep* _1584;

  if ((((&bt_sleep_begin)) < ((&bt_sleep_end)))) {
    goto _1585;
  } else {
    goto _1586;
  }

_1585:
  _1581__PHI_TEMPORARY = ((&bt_sleep_begin));   /* for PHI node */
  goto _1587;

  do {     /* Syntactic loop '' to make GCC happy */
_1587:
  _1581 = _1581__PHI_TEMPORARY;
  _1582 = *(((l_fptr_8**)((&_1581->field1))));
  _1583 =  /*tail*/ _1582();
  _1584 = (&_1581[((int32_t)1)]);
  if ((((((uint32_t)_1584) < ((uint32_t)((&bt_sleep_end))))&1))) {
    _1581__PHI_TEMPORARY = _1584;   /* for PHI node */
    goto _1587;
  } else {
    goto _1588;
  }

  } while (1); /* end of syntactic loop '' */
_1588:
  goto _1586;

_1586:
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 21, 0);
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 20, 0);
}


uint32_t bredr_release(void) {
  struct l_struct_struct_OC_bt_sleep* _1589;
  struct l_struct_struct_OC_bt_sleep* _1589__PHI_TEMPORARY;
  uint32_t _1590;
  uint32_t _1590__PHI_TEMPORARY;
  l_fptr_9** _1591;
  l_fptr_8* _1592;
  uint32_t _1593;
  uint8_t _1594;
  uint32_t _1595;
  uint32_t _1596;
  struct l_struct_struct_OC_bt_sleep* _1597;
  uint32_t _1598;
  uint32_t _1599;
  uint32_t _1599__PHI_TEMPORARY;

  if ((((&bt_sleep_begin)) < ((&bt_sleep_end)))) {
    goto _1600;
  } else {
    _1599__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1601;
  }

_1600:
  _1589__PHI_TEMPORARY = ((&bt_sleep_begin));   /* for PHI node */
  _1590__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1602;

  do {     /* Syntactic loop '' to make GCC happy */
_1602:
  _1589 = _1589__PHI_TEMPORARY;
  _1590 = _1590__PHI_TEMPORARY;
  _1591 = (&_1589->field2);
  _1592 = *(((l_fptr_8**)_1591));
  _1593 =  /*tail*/ _1592();
  _1594 = l2cap_debug_enable;
  if ((((((((((uint8_t)_1593)) != ((uint8_t)0))&1)) & (((((int8_t)_1594) < ((int8_t)((uint8_t)0)))&1)))&1))) {
    goto _1603;
  } else {
    goto _1604;
  }

_1603:
  _1595 = *(((uint32_t*)_1591));
  _1596 =  /*tail*/ printf(((&_OC_str_OC_18.array[((int32_t)0)])), _1595);
  goto _1604;

_1604:
  _1597 = (&_1589[((int32_t)1)]);
  _1598 = (llvm_add_u32(_1593, _1590)) & 255;
  if ((((((uint32_t)_1597) < ((uint32_t)((&bt_sleep_end))))&1))) {
    _1589__PHI_TEMPORARY = _1597;   /* for PHI node */
    _1590__PHI_TEMPORARY = _1598;   /* for PHI node */
    goto _1602;
  } else {
    goto _1605;
  }

  } while (1); /* end of syntactic loop '' */
_1605:
  _1599__PHI_TEMPORARY = _1598;   /* for PHI node */
  goto _1601;

_1601:
  _1599 = _1599__PHI_TEMPORARY;
  return _1599;
}


uint8_t get_remote_vol_sync(void) {
  struct l_struct_struct_OC_conn_info* _1606;
  struct l_struct_struct_OC_conn_info* _1606__PHI_TEMPORARY;
  uint64_t _1607;
  uint8_t _1608;
  struct l_struct_struct_OC_conn_info* _1609;
  uint8_t _1610;
  uint8_t _1610__PHI_TEMPORARY;

  _1606__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1611;

  do {     /* Syntactic loop '' to make GCC happy */
_1611:
  _1606 = _1606__PHI_TEMPORARY;
  _1607 = ((*(((uint64_t*)((&_1606->field5)))))&4294967295);
  if (((((((_1607 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1612;
  } else {
    goto _1613;
  }

_1612:
  _1609 = (&_1606[((int32_t)1)]);
  if ((((((uint32_t)_1609) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1606__PHI_TEMPORARY = _1609;   /* for PHI node */
    goto _1611;
  } else {
    goto _1614;
  }

  } while (1); /* end of syntactic loop '' */
_1613:
  _1608 =  /*tail*/ avctp_get_remote_vol_sync(((&_1606->field0.array[((int32_t)0)])));
  _1610__PHI_TEMPORARY = _1608;   /* for PHI node */
  goto _1615;

_1614:
  _1610__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1615;

_1615:
  _1610 = _1610__PHI_TEMPORARY;
  return _1610;
}


static uint8_t connect_a2dp_w_phone_only_conn_hfp(void) {
  uint8_t _1616;
  struct l_struct_struct_OC_conn_info* _1617;
  struct l_struct_struct_OC_conn_info* _1617__PHI_TEMPORARY;
  uint8_t _1618;
  uint8_t _1618__PHI_TEMPORARY;
  uint64_t* _1619;
  uint64_t _1620;
  uint8_t _1621;
  uint8_t _1622;
  uint64_t _1623;
  uint16_t* _1624;
  uint16_t _1625;
  uint32_t _1626;
  struct l_struct_struct_OC__stack_config* _1627;
  uint32_t _1628;
  uint32_t _1629;
  uint32_t _1630;
  uint32_t _1631;
  struct l_struct_struct_OC__stack_config* _1632;
  uint32_t _1633;
  uint32_t _1634;
  uint16_t _1635;
  l_fptr_1* _1636;
  uint32_t _1637;
  uint16_t _1638;
  uint32_t _1639;
  l_fptr_1* _1640;
  uint32_t _1641;
  uint64_t _1642;
  uint8_t _1643;
  uint8_t _1644;
  uint8_t _1644__PHI_TEMPORARY;
  struct l_struct_struct_OC_conn_info* _1645;

  _1616 = btstack_emitter_support;
  _1617__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  _1618__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1646;

  do {     /* Syntactic loop '' to make GCC happy */
_1646:
  _1617 = _1617__PHI_TEMPORARY;
  _1618 = _1618__PHI_TEMPORARY;
  _1619 = ((uint64_t*)((&_1617->field5)));
  _1620 = ((*_1619)&4294967295);
  if (((((((_1620 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    _1644__PHI_TEMPORARY = _1618;   /* for PHI node */
    goto _1647;
  } else {
    goto _1648;
  }

_1648:
  _1621 = ((uint8_t)(((llvm_lshr_u40(_1620, 20))&4294967295)));
  if (((((llvm_and_u8(_1621, 15)) == ((uint8_t)0))&1))) {
    goto _1649;
  } else {
    goto _1650;
  }

_1650:
  _1622 = llvm_and_u8((llvm_add_u8(_1621, 15)), 15);
  _1623 = ((_1620 & -15728641)&4294967295);
  *_1619 = (((((((((((((uint64_t)(uint8_t)_1622))&4294967295)) << 20)&4294967295)) | _1623)&4294967295))) & 4294967295);
  if ((((_1622 == ((uint8_t)1))&1))) {
    goto _1651;
  } else {
    goto _1649;
  }

_1651:
  *_1619 = ((_1623) & 4294967295);
  _1624 = (&_1617->field2);
  _1625 = *_1624;
  if (((((llvm_and_u16(_1625, 6)) == ((uint16_t)2))&1))) {
    goto _1652;
  } else {
    goto _1653;
  }

_1652:
  _1626 =  /*tail*/ __bt_profile_enable(4);
  if ((((_1626 == 0u)&1))) {
    goto _1654;
  } else {
    goto _1655;
  }

_1655:
  _1627 = user_stack_configs;
  _1628 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_1627->field9)));
  if (((((_1628 & 8388608) == 0u)&1))) {
    goto _1656;
  } else {
    goto _1653;
  }

_1656:
  _1629 =  /*tail*/ user_send_cmd_prepare(66, 0, ((uint8_t*)/*NULL*/0));
  goto _1653;

_1654:
  _1630 =  /*tail*/ __bt_profile_enable(8);
  if ((((_1630 == 0u)&1))) {
    goto _1653;
  } else {
    goto _1657;
  }

_1657:
  _1631 =  /*tail*/ user_send_cmd_prepare(62, 0, ((uint8_t*)/*NULL*/0));
  goto _1653;

_1653:
  if ((((_1616 == ((uint8_t)0))&1))) {
    goto _1649;
  } else {
    goto _1658;
  }

_1658:
  _1632 = user_stack_configs;
  _1633 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_1632->field9)));
  if (((((_1633 & 1048576) == 0u)&1))) {
    goto _1659;
  } else {
    goto _1660;
  }

_1660:
  _1634 =  /*tail*/ __bt_profile_enable(128);
  if ((((_1634 == 0u)&1))) {
    goto _1649;
  } else {
    goto _1661;
  }

_1661:
  _1635 = *_1624;
  if ((((((int8_t)(((uint8_t)_1635))) < ((int8_t)((uint8_t)0)))&1))) {
    goto _1649;
  } else {
    goto _1662;
  }

_1662:
  _1636 = *((&profile_cmd_hdl_str.field8));
  if ((((((((llvm_and_u16(_1635, 4)) != ((uint16_t)0))&1)) & (((_1636 != ((l_fptr_1*)/*NULL*/0))&1)))&1))) {
    goto _1663;
  } else {
    goto _1649;
  }

_1663:
  _1637 =  /*tail*/ _1636(((&_1617->field0.array[((int32_t)0)])), 0, 0);
  goto _1649;

_1659:
  _1638 = *_1624;
  _1639 = ((uint32_t)(uint16_t)_1638);
  if (((((_1639 & 2) == 0u)&1))) {
    goto _1664;
  } else {
    goto _1649;
  }

_1664:
  _1640 = *((&profile_cmd_hdl_str.field8));
  if ((((((((_1639 & 4) != 0u)&1)) & (((_1640 != ((l_fptr_1*)/*NULL*/0))&1)))&1))) {
    goto _1665;
  } else {
    goto _1649;
  }

_1665:
  _1641 =  /*tail*/ _1640(((&_1617->field0.array[((int32_t)0)])), 0, 0);
  goto _1649;

_1649:
  _1642 = ((*_1619)&4294967295);
  _1643 = llvm_select_u8(((((((_1642 & 15728640)&4294967295)) == UINT64_C(0))&1)), _1618, 1);
  _1644__PHI_TEMPORARY = _1643;   /* for PHI node */
  goto _1647;

_1647:
  _1644 = _1644__PHI_TEMPORARY;
  _1645 = (&_1617[((int32_t)1)]);
  if ((((((uint32_t)_1645) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1617__PHI_TEMPORARY = _1645;   /* for PHI node */
    _1618__PHI_TEMPORARY = _1644;   /* for PHI node */
    goto _1646;
  } else {
    goto _1666;
  }

  } while (1); /* end of syntactic loop '' */
_1666:
  return (((uint8_t)(bool)(((_1644 != ((uint8_t)0))&1))));
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


static void __bt_spp_data_try_send(uint8_t* _1667) {
  uint32_t _1668;

  _1668 =  /*tail*/ user_send_cmd_prepare(110, 0, ((uint8_t*)/*NULL*/0));
}


static uint32_t user_cmd_loop_suspend(void) {
  uint16_t _1669;

  _1669 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_or_u16(_1669, 256));
  return 0;
}


static uint32_t user_cmd_loop_resume(void) {
  uint16_t _1670;

  _1670 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_and_u16(_1670, -257));
  return 0;
}


static uint32_t user_cmd_loop_release(void) {
  uint16_t _1671;
  struct l_struct_struct_OC_conn_info* _1672;
  struct l_struct_struct_OC_conn_info* _1672__PHI_TEMPORARY;
  uint64_t _1673;
  uint16_t _1674;
  struct l_struct_struct_OC_conn_info* _1675;
  uint32_t _1676;
  uint16_t _1677;
  uint32_t _1678;
  uint32_t _1678__PHI_TEMPORARY;

  _1671 = *((&__user_info.field10));
  if (((((llvm_and_u16(_1671, 64)) == ((uint16_t)0))&1))) {
    goto _1679;
  } else {
    _1678__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _1680;
  }

_1679:
  _1672__PHI_TEMPORARY = ((&__user_info.field2.array[((int32_t)0)]));   /* for PHI node */
  goto _1681;

  do {     /* Syntactic loop '' to make GCC happy */
_1681:
  _1672 = _1672__PHI_TEMPORARY;
  _1673 = ((*(((uint64_t*)((&_1672->field5)))))&4294967295);
  if (((((((_1673 & 536870912)&4294967295)) == UINT64_C(0))&1))) {
    goto _1682;
  } else {
    goto _1683;
  }

_1683:
  _1674 = *((&_1672->field1));
  if ((((_1674 == ((uint16_t)0))&1))) {
    goto _1682;
  } else {
    goto _1684;
  }

_1682:
  _1675 = (&_1672[((int32_t)1)]);
  if ((((((uint32_t)_1675) < ((uint32_t)((struct l_struct_struct_OC_conn_info*)((&__user_info.field3.field0)))))&1))) {
    _1672__PHI_TEMPORARY = _1675;   /* for PHI node */
    goto _1681;
  } else {
    goto _1685;
  }

  } while (1); /* end of syntactic loop '' */
_1685:
   /*tail*/ stack_run_loop_remove(((&__user_info.field1)));
  _1676 =  /*tail*/ btstack_run_loop_remove_timer(((&__user_info.field4)));
  _1677 = *((&__user_info.field10));
  *((&__user_info.field10)) = (llvm_or_u16((llvm_and_u16(_1677, -321)), 64));
  _1678__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _1680;

_1684:
  _1678__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _1680;

_1680:
  _1678 = _1678__PHI_TEMPORARY;
  return _1678;
}

