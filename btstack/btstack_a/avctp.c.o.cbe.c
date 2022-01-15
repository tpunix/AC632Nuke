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
struct l_struct_struct_OC_control_pdu_handler;
struct l_struct_struct_OC_respone_pdu_handler;
struct l_struct_struct_OC_avrcp_event_info;
struct l_struct_struct_OC_avrcp_core_data_t;
struct l_struct_struct_OC_avctp;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_run_loop;
struct l_struct_struct_OC_avctp_stack_t;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_profile_cmd_handle;
struct l_struct_struct_OC_iovec;

/* Function definitions */
typedef uint32_t l_fptr_8(void);

typedef void l_fptr_21(void);

typedef void l_fptr_22(uint8_t);

typedef uint32_t l_fptr_26(uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef void l_fptr_18(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef struct l_struct_struct_OC_control_pdu_handler* l_fptr_6(void);

typedef void l_fptr_1(void);

typedef void l_fptr_4(uint32_t);

typedef uint8_t l_fptr_12(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t);

typedef uint32_t l_fptr_25(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_16(uint8_t, uint8_t*, uint8_t*);

typedef uint8_t l_fptr_23(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint32_t l_fptr_20(uint8_t*, uint8_t, uint8_t);

typedef uint32_t l_fptr_24(uint8_t*);

typedef uint8_t l_fptr_5(void);

typedef void l_fptr_14(struct l_struct_struct_OC_btstack_timer_source*);

typedef uint32_t l_fptr_15(int, ...);

typedef uint8_t l_fptr_11(struct l_struct_struct_OC_avctp*, void*, uint8_t);

typedef void l_fptr_19(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_3(uint8_t*, uint32_t);

typedef struct l_struct_struct_OC_respone_pdu_handler* l_fptr_7(void);

typedef void l_fptr_10(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_17(uint8_t*, uint32_t);

typedef void l_fptr_13(struct l_struct_struct_OC_run_loop*);

typedef void l_fptr_9(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_2(uint8_t, uint8_t);


/* Types Definitions */
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_control_pdu_handler {
  uint8_t field0;
  uint8_t field1;
  l_fptr_11* field2;
};
struct l_struct_struct_OC_respone_pdu_handler {
  uint8_t field0;
  uint8_t field1;
  l_fptr_12* field2;
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_3_uint8_t {
  uint8_t array[3];
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
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_run_loop {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_13* field1;
  uint8_t* field2;
};
struct l_array_1_struct_AC_l_struct_struct_OC_avctp {
  struct l_struct_struct_OC_avctp array[1];
};
struct l_struct_struct_OC_avctp_stack_t {
  uint8_t field0;
  uint8_t field1;
  uint16_t field2;
  struct l_array_1_struct_AC_l_struct_struct_OC_avctp field3;
  struct l_struct_struct_OC_run_loop field4;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_14* field3;
  uint8_t* field4;
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_15* field0;
  l_fptr_15* field1;
  l_fptr_15* field2;
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_73_uint8_t {
  uint8_t array[73];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_9* field0;
  l_fptr_16* field1;
  l_fptr_17* field2;
  l_fptr_8* field3;
  l_fptr_18* field4;
  l_fptr_10* field5;
  l_fptr_8* field6;
  l_fptr_4* field7;
  l_fptr_19* field8;
  l_fptr_20* field9;
  l_fptr_21* field10;
  l_fptr_22* field11;
  l_fptr_23* field12;
  l_fptr_18* field13;
  l_fptr_8* field14;
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_81_uint8_t {
  uint8_t array[81];
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
struct l_array_64_uint8_t {
  uint8_t array[64];
};
struct l_struct_struct_OC_profile_cmd_handle {
  l_fptr_24* field0;
  l_fptr_3* field1;
  l_fptr_24* field2;
  l_fptr_24* field3;
  l_fptr_25* field4;
  l_fptr_3* field5;
  l_fptr_24* field6;
  l_fptr_25* field7;
  l_fptr_25* field8;
  l_fptr_26* field9;
  l_fptr_24* field10;
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};
struct l_struct_struct_OC_iovec {
  struct l_array_50_uint8_t field0;
  uint32_t field1;
};
struct l_array_2_struct_AC_l_struct_struct_OC_iovec {
  struct l_struct_struct_OC_iovec array[2];
};
struct l_array_80_uint8_t {
  uint8_t array[80];
};
struct l_array_100_uint8_t {
  uint8_t array[100];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};

/* External Global Variable Declarations */
extern uint8_t profile_debug_enable;
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t more_avctp_cmd_support;
extern struct l_struct_struct_OC_profile_cmd_handle profile_cmd_hdl_str;

/* Function Declarations */
uint32_t avctp_send_vendordep(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t avctp_send(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t avctp_send_vendordep_req(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void emitter_rx_avctp_opid_deal(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void set_cmd_pending_bit(struct l_struct_struct_OC_avctp*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void stack_run_loop_resume(int, ...);
uint32_t avctp_try_send(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_avctp* __avctp_conn_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint32_t auto_pause_music_player(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avctp_reset_pending_release_cnt(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t get_music_volume(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t auto_start_music_player(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void avctp_timer_init(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void avctp_half_second_detect(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow));
void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source*, int16_t);
void remove_avctp_timer(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source*);
void avctp_init(struct l_struct_struct_OC_avctp_stack_t*, l_fptr_2*, l_fptr_2*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_register_service_internal(uint8_t*, l_fptr_18*, uint16_t, uint16_t);
static void __avctp_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint16_t l2cap_max_mtu(void);
void stack_run_loop_register(struct l_struct_struct_OC_run_loop*, l_fptr_13*, uint8_t*);
static void avctp_send_key_loop(struct l_struct_struct_OC_run_loop*) __ATTRIBUTELIST__((nothrow));
uint32_t avctp_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avctp_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t avctp_cmd_send_state(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t avctp_get_remote_vol_sync(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t get_pp_key_statue(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
static uint32_t avctp_cmd_try_send_no_resend(struct l_struct_struct_OC_avctp*, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_18*, uint8_t*, uint16_t, uint16_t);
static struct l_struct_struct_OC_avctp* __create_avctp_conn(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
static void __free_avctp_conn(struct l_struct_struct_OC_avctp*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint8_t avrcp_volume_interface(uint8_t*, uint8_t);
uint8_t is_support_vol_sync(int, ...);
struct l_struct_struct_OC_control_pdu_handler* get_arp_control_pdu_handlers(int, ...);
struct l_struct_struct_OC_respone_pdu_handler* get_arp_deal_respone_handlers(int, ...);
static uint32_t avctp_suspend(void) __ATTRIBUTELIST__((nothrow));
static uint32_t avctp_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t avctp_release(void) __ATTRIBUTELIST__((nothrow));
void stack_run_loop_remove(struct l_struct_struct_OC_run_loop*);
static void avctp_channel_open(uint8_t, uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t __bt_profile_enable(uint32_t);
void l2cap_decline_connection_internal(uint16_t, uint8_t);
void bt_flip_addr(uint8_t*, uint8_t*);
uint8_t* bd_addr_to_str(uint8_t*);
uint32_t handle_vendordep_pdu_res(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t*, uint8_t*, uint8_t*, uint32_t);
uint32_t handle_vendordep_pdu(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t*, uint8_t*, uint8_t*, uint32_t);
static uint32_t avctp_passthrough_release(struct l_struct_struct_OC_avctp*, uint8_t) __ATTRIBUTELIST__((nothrow));
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
void l2cap_accept_connection_internal(uint16_t);
void local_irq_disable(int, ...);
void local_irq_enable(int, ...);
uint32_t avrcp_get_capabilities(struct l_struct_struct_OC_avctp*);
uint32_t avrcp_register_notification(struct l_struct_struct_OC_avctp*, uint8_t);
uint32_t avrcp_list_player_attributes(struct l_struct_struct_OC_avctp*);
uint32_t avrcp_get_play_status(struct l_struct_struct_OC_avctp*);
uint32_t avrcp_get_element_attributes(struct l_struct_struct_OC_avctp*);
uint32_t avrcp_player_event(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t*);
void os_time_dly(uint32_t);
uint8_t avrcp_set_player_value(struct l_struct_struct_OC_avctp*, uint8_t, uint8_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_avctp_stack_t* acp_stack;
struct l_struct_struct_OC_btstack_timer_source avctp_conn_timer __HIDDEN__;
struct l_struct_struct_OC_bt_sleep bt_suspend_avctp_resumeavctp_release __HIDDEN__ = { ((l_fptr_15*)avctp_suspend), ((l_fptr_15*)avctp_resume), ((l_fptr_15*)avctp_release) };
static bool avctp_run_loop_busy;
static struct l_array_33_uint8_t _OC_str_OC_2 = { "<BT-log> :avctp_struct size %d\n\n" };
static struct l_array_73_uint8_t _OC_str_OC_3 = { "<pro-error> :avctp cmd failed:%d , lockcid:%d, no resend please check \n\n" };
static struct l_array_21_uint8_t _OC_str_OC_5 = { "__create_avctp_conn\n" };
static struct l_array_40_uint8_t _OC_str_OC_8 = { "<BT-log> :get avrcp_volume from vm %d\n\n" };
static struct l_array_39_uint8_t _OC_str_OC_9 = { "<BT-log> :save avrcp_volume to vm %d\n\n" };
static struct l_array_18_uint8_t _OC_str_OC_10 = { "avctp_release ok\n" };
static struct l_array_81_uint8_t _OC_str_OC_11 = { "[pro-info] :avctp MONITOR_CHANNEL_CREATE addr %s handle 0x%x psm %u,cid 0x%02x \n" };
static struct l_array_64_uint8_t _OC_str_OC_12 = { "<BT-log> :now is have avctp channel conn %d,why come again %d\n\n" };
static struct l_array_31_uint8_t str = { "[pro-info] :wait to auto play\n" };
static struct l_array_33_uint8_t str_OC_13 = { "<BT-log> :avctp add timer again\n" };
static struct l_array_27_uint8_t str_OC_14 = { "[pro-info] :avctp cmd ok \n" };


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
static __forceinline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
  uint16_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
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
static __forceinline uint32_t llvm_lshr_u24(uint32_t a, uint32_t b) {
  uint32_t r = (a >> b) & 16777215;
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

uint32_t avctp_send_vendordep(struct l_struct_struct_OC_avctp* _1, uint8_t _2, uint8_t _3, uint8_t _4, uint8_t* _5, uint32_t _6) {
  uint32_t _7;

  _7 =  /*tail*/ avctp_send(_1, _2, 1, _3, _4, 0, _5, _6);
  return _7;
}


static uint32_t avctp_send(struct l_struct_struct_OC_avctp* _8, uint8_t _9, uint8_t _10, uint8_t _11, uint8_t _12, uint8_t _13, uint8_t* _14, uint32_t _15) {
  struct l_array_2_struct_AC_l_struct_struct_OC_iovec _16;    /* Address-exposed local */
  struct l_array_80_uint8_t _17;    /* Address-exposed local */
  uint8_t* _18;
  uint32_t* _19;
  uint8_t* _20;
  uint8_t* _21;
  uint8_t* _22;
  uint8_t _23;
  uint32_t _24;
  uint8_t* _25;
  uint8_t* _26;
  uint8_t* _27;
  uint8_t* _28;
  uint32_t _29;
  uint32_t _30;
  uint32_t _30__PHI_TEMPORARY;

  _18 = (&_16.array[((int32_t)0)].field0.array[((int32_t)0)]);
  if ((((_8 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _30__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _31;
  } else {
    goto _32;
  }

_32:
  *((&_16.array[((int32_t)0)].field1)) = 6;
  _19 = (&_16.array[((int32_t)1)].field1);
  *_19 = _15;
  if ((((((int32_t)(llvm_add_u32(_15, 6))) > ((int32_t)80u))&1))) {
    _30__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _31;
  } else {
    goto _33;
  }

_33:
  _20 = (&_16.array[((int32_t)1)].field0.array[((int32_t)0)]);
  _21 = memcpy(_20, _14, _15);
  *_18 = (llvm_or_u8((llvm_and_u8((llvm_shl_u8(_10, 1)), 2)), (llvm_shl_u8(_9, 4))));
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_16.array[((int32_t)0)].field0.array[((int32_t)1)]))))) = 3601;
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_16.array[((int32_t)0)].field0.array[((int32_t)3)]))))) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_12)), 11)), (((uint16_t)(uint8_t)(llvm_and_u8(_11, 15))))));
  *((&_16.array[((int32_t)0)].field0.array[((int32_t)5)])) = _13;
  _22 = (&_8->field5.field8);
  _23 = *_22;
  if ((((_23 == ((uint8_t)0))&1))) {
    goto _34;
  } else {
    _30__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _31;
  }

_34:
  _24 = *_19;
  *_22 = (((uint8_t)(llvm_add_u32(_24, 6))));
  _25 = (&_17.array[((int32_t)0)]);
  _26 = memset(((&_17.array[((int32_t)6)])), 0, 74);
  _27 = memcpy(_25, _18, 6);
  _28 = memcpy(((&_17.array[((int32_t)6)])), _20, _24);
  _29 = avctp_cmd_try_send_no_resend(_8, _25);
  _30__PHI_TEMPORARY = _29;   /* for PHI node */
  goto _31;

_31:
  _30 = _30__PHI_TEMPORARY;
  return _30;
}


uint32_t avctp_send_vendordep_req(struct l_struct_struct_OC_avctp* _35, uint8_t _36, uint8_t _37, uint8_t* _38, uint32_t _39) {
  uint32_t* _40;
  uint32_t _41;
  uint8_t _42;
  uint32_t _43;
  uint32_t _44;
  uint32_t _44__PHI_TEMPORARY;

  if ((((_35 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _44__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _45;
  } else {
    goto _46;
  }

_46:
  _40 = ((uint32_t*)((&_35->field5.field6)));
  _41 = ((__UNALIGNED_LOAD__(uint32_t, 1, _40))&16777215);
  _42 = llvm_and_u8((llvm_add_u8((((uint8_t)_41)), 1)), 15);
  __UNALIGNED_LOAD__(uint32_t, 1, _40) = ((((((((((uint32_t)(uint8_t)_42))&16777215)) | (((_41 & -16)&16777215)))&16777215))) & 16777215);
  _43 =  /*tail*/ avctp_send(_35, _42, 0, _36, _37, 0, _38, _39);
  _44__PHI_TEMPORARY = _43;   /* for PHI node */
  goto _45;

_45:
  _44 = _44__PHI_TEMPORARY;
  return _44;
}


void emitter_rx_avctp_opid_deal(uint8_t _47, uint8_t _48) {
  return;
}


void set_cmd_pending_bit(struct l_struct_struct_OC_avctp* _49, uint32_t _50) {
  uint32_t* _51;
  uint32_t _52;

  if (((((((_49 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1)) | (((((uint32_t)_50) > ((uint32_t)15u))&1)))&1))) {
    goto _53;
  } else {
    goto _54;
  }

_54:
  _51 = (&_49->field5.field0);
  _52 = *_51;
  *_51 = (_52 | (1 << _50));
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _53;

_53:
  return;
}


uint32_t avctp_try_send(uint8_t* _55, uint32_t _56, uint32_t _57) {
  struct l_struct_struct_OC_avctp_stack_t* _58;
  struct l_struct_struct_OC_avctp* _59;
  struct l_struct_struct_OC_avctp* _60;
  uint16_t _61;
  uint8_t _62;
  uint32_t _63;
  uint32_t* _64;
  uint32_t _65;
  uint8_t _66;
  uint32_t _67;
  struct l_struct_struct_OC_avctp* _68;
  uint32_t* _69;
  uint32_t _70;
  uint32_t* _71;
  uint32_t _72;
  uint32_t* _73;
  uint32_t _74;
  uint32_t* _75;
  uint32_t _76;
  uint32_t* _77;
  uint32_t _78;
  uint32_t* _79;
  uint32_t _80;
  uint32_t* _81;
  uint32_t _82;
  uint32_t* _83;
  uint32_t _84;
  uint32_t _85;
  uint8_t _86;
  uint32_t _87;
  uint32_t _88;
  uint32_t _88__PHI_TEMPORARY;

  _58 = acp_stack;
  if ((((_58 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _88__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _89;
  } else {
    goto _90;
  }

_90:
  if ((((_56 == 241u)&1))) {
    goto _91;
  } else {
    goto _92;
  }

_91:
  _59 =  /*tail*/ __avctp_conn_for_addr(_55);
  if ((((_59 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _93;
  } else {
    _88__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _89;
  }

_93:
  _60 =  /*tail*/ __create_avctp_conn(_55);
  if ((((_60 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _88__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _89;
  } else {
    goto _94;
  }

_94:
  _61 = *((&_60->field1));
  if ((((_61 == ((uint16_t)0))&1))) {
    goto _95;
  } else {
    _88__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _89;
  }

_95:
  _62 = l2cap_debug_enable;
  if (((((llvm_and_u8(_62, 32)) == ((uint8_t)0))&1))) {
    goto _96;
  } else {
    goto _97;
  }

_97:
  _63 =  /*tail*/ puts(((&_OC_str_OC_5.array[((int32_t)0)])));
  goto _96;

_96:
  _64 = ((uint32_t*)((&_60->field5.field6)));
  _65 = ((__UNALIGNED_LOAD__(uint32_t, 1, _64))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _64) = (((((_65 | 128)&16777215))) & 16777215);
  _66 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), __avctp_packet_handler, ((&_60->field0.array[((int32_t)0)])), 23, -1);
  _67 = ((__UNALIGNED_LOAD__(uint32_t, 1, _64))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _64) = ((((((((_67 & -113)&16777215)) | 16)&16777215))) & 16777215);
  _88__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _89;

_92:
  _68 =  /*tail*/ __avctp_conn_for_addr(_55);
  if ((((_68 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _88__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _89;
  } else {
    goto _98;
  }

_98:
  switch (_56) {
  default:
    goto _99;
  case 113u:
    goto _100;
  case 114u:
    goto _101;
  case 115u:
    goto _102;
  case 117u:
    goto _103;
  case 118u:
    goto _104;
  case 121u:
    goto _105;
  case 240u:
    goto _106;
  case 116u:
    goto _107;
  }

_100:
  _69 = (&_68->field5.field0);
  _70 = *_69;
  if (((((_70 & 64) == 0u)&1))) {
    goto _108;
  } else {
    goto _106;
  }

_108:
  *_69 = (_70 | 64);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_101:
  _71 = (&_68->field5.field0);
  _72 = *_71;
  if (((((_72 & 32) == 0u)&1))) {
    goto _109;
  } else {
    goto _106;
  }

_109:
  *_71 = (_72 | 32);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_102:
  _73 = (&_68->field5.field0);
  _74 = *_73;
  if (((((_74 & 16) == 0u)&1))) {
    goto _110;
  } else {
    goto _106;
  }

_110:
  *_73 = (_74 | 16);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_103:
  _75 = (&_68->field5.field0);
  _76 = *_75;
  if (((((_76 & 1024) == 0u)&1))) {
    goto _111;
  } else {
    goto _106;
  }

_111:
  *((&_68->field5.field1)) = 0;
  *_75 = (_76 | 1024);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_104:
  _77 = (&_68->field5.field0);
  _78 = *_77;
  if (((((_78 & 2048) == 0u)&1))) {
    goto _112;
  } else {
    goto _106;
  }

_112:
  *((&_68->field5.field1)) = 0;
  *_77 = (_78 | 2048);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_105:
  _79 = (&_68->field5.field0);
  _80 = *_79;
  if (((((_80 & 4096) == 0u)&1))) {
    goto _113;
  } else {
    goto _106;
  }

_113:
  *((&_68->field5.field1)) = 0;
  *_79 = (_80 | 4096);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_107:
  _81 = (&_68->field5.field0);
  _82 = *_81;
  if ((((((int8_t)(((uint8_t)_82))) < ((int8_t)((uint8_t)0)))&1))) {
    goto _106;
  } else {
    goto _114;
  }

_114:
  *_81 = (_82 | 128);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _106;

_99:
  _83 = ((uint32_t*)((&_68->field5.field6)));
  _84 = ((__UNALIGNED_LOAD__(uint32_t, 1, _83))&16777215);
  _85 = ((llvm_lshr_u24(_84, 20))&16777215);
  _86 = llvm_add_u8((((uint8_t)_85)), 1);
  _87 = ((_84 & 1048575)&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _83) = (((((((((((((uint32_t)(uint8_t)_86))&16777215)) << 20)&16777215)) | _87)&16777215))) & 16777215);
  *((&_68->field5.field9.array[((int32_t)(((uint32_t)(uint32_t)_85)))])) = (((uint8_t)_56));
  if ((((((uint8_t)(llvm_and_u8(_86, 15))) > ((uint8_t)((uint8_t)8)))&1))) {
    goto _115;
  } else {
    goto _106;
  }

_115:
  __UNALIGNED_LOAD__(uint32_t, 1, _83) = ((_87) & 16777215);
  goto _106;

_106:
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  _88__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _89;

_89:
  _88 = _88__PHI_TEMPORARY;
  return _88;
}


static struct l_struct_struct_OC_avctp* __avctp_conn_for_addr(uint8_t* _116) {
  struct l_struct_struct_OC_avctp_stack_t* _117;
  struct l_struct_struct_OC_avctp* _118;
  struct l_struct_struct_OC_avctp* _119;
  struct l_struct_struct_OC_avctp* _120;
  struct l_struct_struct_OC_avctp* _120__PHI_TEMPORARY;
  uint32_t _121;
  uint32_t _122;
  struct l_struct_struct_OC_avctp* _123;
  struct l_struct_struct_OC_avctp* _124;
  struct l_struct_struct_OC_avctp* _124__PHI_TEMPORARY;

  _117 = acp_stack;
  _118 = (&_117->field3.array[((int32_t)0)]);
  _119 = (&_117->field3.array[((int32_t)1)]);
  _120__PHI_TEMPORARY = _118;   /* for PHI node */
  goto _125;

  do {     /* Syntactic loop '' to make GCC happy */
_125:
  _120 = _120__PHI_TEMPORARY;
  _121 =  /*tail*/ memcmp(((&_120->field0.array[((int32_t)0)])), _116, 6);
  if ((((_121 == 0u)&1))) {
    goto _126;
  } else {
    goto _127;
  }

_126:
  _122 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_120->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_122))) < ((int16_t)((uint16_t)0)))&1))) {
    _124__PHI_TEMPORARY = _120;   /* for PHI node */
    goto _128;
  } else {
    goto _127;
  }

_127:
  _123 = (&_120[((int32_t)1)]);
  if ((((((uint32_t)_123) < ((uint32_t)_119))&1))) {
    _120__PHI_TEMPORARY = _123;   /* for PHI node */
    goto _125;
  } else {
    _124__PHI_TEMPORARY = ((struct l_struct_struct_OC_avctp*)/*NULL*/0);   /* for PHI node */
    goto _128;
  }

  } while (1); /* end of syntactic loop '' */
_128:
  _124 = _124__PHI_TEMPORARY;
  return _124;
}


uint32_t auto_pause_music_player(uint8_t* _129) {
  struct l_struct_struct_OC_avctp_stack_t* _130;
  struct l_struct_struct_OC_avctp* _131;
  uint32_t _132;
  uint32_t _133;
  uint32_t _134;
  uint32_t _134__PHI_TEMPORARY;

  _130 = acp_stack;
  if ((((_130 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _134__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _135;
  } else {
    goto _136;
  }

_136:
  _131 =  /*tail*/ __avctp_conn_for_addr(_129);
  if ((((_131 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _134__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _135;
  } else {
    goto _137;
  }

_137:
  _132 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_131->field5.field6))))))&16777215);
  if ((((((((((_132 & 30720)&16777215)) != ((uint32_t)18432))&1)) | (((((int16_t)(((uint16_t)_132))) > ((int16_t)((uint16_t)-1)))&1)))&1))) {
    _134__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _135;
  } else {
    goto _138;
  }

_138:
  _133 =  /*tail*/ avctp_try_send(_129, 70, /*UNDEF*/0);
  _134__PHI_TEMPORARY = _133;   /* for PHI node */
  goto _135;

_135:
  _134 = _134__PHI_TEMPORARY;
  return _134;
}


uint32_t avctp_reset_pending_release_cnt(uint8_t* _139) {
  struct l_struct_struct_OC_avctp_stack_t* _140;
  struct l_struct_struct_OC_avctp* _141;
  uint8_t* _142;
  uint8_t _143;
  uint32_t _144;
  uint32_t _144__PHI_TEMPORARY;

  _140 = acp_stack;
  if ((((_140 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _144__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _145;
  } else {
    goto _146;
  }

_146:
  _141 =  /*tail*/ __avctp_conn_for_addr(_139);
  if ((((_141 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _144__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _145;
  } else {
    goto _147;
  }

_147:
  _142 = (&_141->field5.field1);
  _143 = *_142;
  if ((((_143 == ((uint8_t)0))&1))) {
    _144__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _145;
  } else {
    goto _148;
  }

_148:
  *_142 = 30;
  _144__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _145;

_145:
  _144 = _144__PHI_TEMPORARY;
  return _144;
}


uint32_t get_music_volume(uint8_t* _149) {
  struct l_struct_struct_OC_avctp_stack_t* _150;
  struct l_struct_struct_OC_avctp* _151;
  uint8_t _152;
  uint32_t _153;
  uint32_t _154;
  uint32_t _154__PHI_TEMPORARY;

  _150 = acp_stack;
  if ((((_150 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _154__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _155;
  } else {
    goto _156;
  }

_156:
  _151 =  /*tail*/ __avctp_conn_for_addr(_149);
  if ((((_151 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _154__PHI_TEMPORARY = 255;   /* for PHI node */
    goto _155;
  } else {
    goto _157;
  }

_157:
  _152 = *((&_151->field5.field7));
  _153 = ((uint32_t)(uint8_t)_152);
  _154__PHI_TEMPORARY = _153;   /* for PHI node */
  goto _155;

_155:
  _154 = _154__PHI_TEMPORARY;
  return _154;
}


uint32_t auto_start_music_player(uint8_t* _158, uint8_t _159) {
  struct l_struct_struct_OC_avctp_stack_t* _160;
  struct l_struct_struct_OC_avctp* _161;
  uint32_t _162;
  uint16_t _163;
  uint32_t _164;
  uint32_t _165;
  uint8_t _166;
  uint32_t _167;
  uint32_t _168;
  uint32_t _168__PHI_TEMPORARY;

  _160 = acp_stack;
  if ((((_160 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _168__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _169;
  } else {
    goto _170;
  }

_170:
  _161 =  /*tail*/ __avctp_conn_for_addr(_158);
  if ((((_161 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _168__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _169;
  } else {
    goto _171;
  }

_171:
  _162 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_161->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_162))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _172;
  } else {
    goto _173;
  }

_172:
  _163 = *((&_161->field1));
  if ((((_163 == ((uint16_t)0))&1))) {
    goto _173;
  } else {
    goto _174;
  }

_174:
  if ((((_159 == ((uint8_t)0))&1))) {
    goto _175;
  } else {
    goto _176;
  }

_176:
  _164 =  /*tail*/ avctp_try_send(_158, 68, /*UNDEF*/0);
  _168__PHI_TEMPORARY = _164;   /* for PHI node */
  goto _169;

_175:
  if (((((((_162 & 14336)&16777215)) == ((uint32_t)2048))&1))) {
    _168__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _169;
  } else {
    goto _177;
  }

_177:
  _165 =  /*tail*/ avctp_try_send(_158, 68, /*UNDEF*/0);
  _168__PHI_TEMPORARY = _165;   /* for PHI node */
  goto _169;

_173:
  _166 = profile_debug_enable;
  if (((((llvm_and_u8(_166, 1)) == ((uint8_t)0))&1))) {
    _168__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _169;
  } else {
    goto _178;
  }

_178:
  _167 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _168__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _169;

_169:
  _168 = _168__PHI_TEMPORARY;
  return _168;
}


void avctp_timer_init(uint32_t _179) {
  uint32_t _180;
  uint32_t _181;
  uint8_t _182;
  uint32_t _183;

  _180 = *((&avctp_conn_timer.field1));
  if ((((_180 == 0u)&1))) {
    goto _184;
  } else {
    goto _185;
  }

_184:
  _181 = *((&avctp_conn_timer.field2));
  *((&avctp_conn_timer.field2)) = ((_181 & -65536) | (_179 & 65535));
  *((&avctp_conn_timer.field3)) = avctp_half_second_detect;
   /*tail*/ btstack_set_timer((&avctp_conn_timer), 130);
  goto _186;

_185:
  _182 = l2cap_debug_enable;
  if ((((((int8_t)_182) < ((int8_t)((uint8_t)0)))&1))) {
    goto _187;
  } else {
    goto _186;
  }

_187:
  _183 =  /*tail*/ puts(((&str_OC_13.array[((int32_t)0)])));
  goto _186;

_186:
  return;
}


static void avctp_half_second_detect(struct l_struct_struct_OC_btstack_timer_source* _188) {
  struct l_struct_struct_OC_avctp_stack_t* _189;
  struct l_struct_struct_OC_avctp* _190;
  struct l_struct_struct_OC_avctp_stack_t* _191;
  struct l_struct_struct_OC_avctp_stack_t* _191__PHI_TEMPORARY;
  struct l_struct_struct_OC_avctp* _192;
  struct l_struct_struct_OC_avctp* _192__PHI_TEMPORARY;
  uint32_t* _193;
  uint32_t _194;
  uint16_t _195;
  uint8_t _196;
  uint32_t _197;
  struct l_struct_struct_OC_avctp_stack_t* _198;
  struct l_struct_struct_OC_avctp_stack_t* _199;
  struct l_struct_struct_OC_avctp_stack_t* _199__PHI_TEMPORARY;
  struct l_struct_struct_OC_avctp* _200;

  _189 = acp_stack;
  _190 = (&_189->field3.array[((int32_t)0)]);
  _191__PHI_TEMPORARY = _189;   /* for PHI node */
  _192__PHI_TEMPORARY = _190;   /* for PHI node */
  goto _201;

  do {     /* Syntactic loop '' to make GCC happy */
_201:
  _191 = _191__PHI_TEMPORARY;
  _192 = _192__PHI_TEMPORARY;
  _193 = ((uint32_t*)((&_192->field5.field6)));
  _194 = ((__UNALIGNED_LOAD__(uint32_t, 1, _193))&16777215);
  if ((((((int16_t)(((uint16_t)_194))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _202;
  } else {
    _199__PHI_TEMPORARY = _191;   /* for PHI node */
    goto _203;
  }

_202:
  _195 = *((&_192->field1));
  if ((((_195 == ((uint16_t)0))&1))) {
    goto _204;
  } else {
    _199__PHI_TEMPORARY = _191;   /* for PHI node */
    goto _203;
  }

_204:
  __UNALIGNED_LOAD__(uint32_t, 1, _193) = (((((_194 | 128)&16777215))) & 16777215);
  _196 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), __avctp_packet_handler, ((&_192->field0.array[((int32_t)0)])), 23, -1);
  _197 = ((__UNALIGNED_LOAD__(uint32_t, 1, _193))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _193) = ((((((((_197 & -113)&16777215)) | 16)&16777215))) & 16777215);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  _198 = acp_stack;
  _199__PHI_TEMPORARY = _198;   /* for PHI node */
  goto _203;

_203:
  _199 = _199__PHI_TEMPORARY;
  _200 = (&_192[((int32_t)1)]);
  if ((((((uint32_t)_200) < ((uint32_t)((&_199->field3.array[((int32_t)1)]))))&1))) {
    _191__PHI_TEMPORARY = _199;   /* for PHI node */
    _192__PHI_TEMPORARY = _200;   /* for PHI node */
    goto _201;
  } else {
    goto _205;
  }

  } while (1); /* end of syntactic loop '' */
_205:
  return;
}


void remove_avctp_timer(void) {
  uint32_t _206;
  uint32_t _207;
  uint8_t* _208;

  _206 = *((&avctp_conn_timer.field1));
  if ((((_206 == 0u)&1))) {
    goto _209;
  } else {
    goto _210;
  }

_210:
  _207 =  /*tail*/ btstack_run_loop_remove_timer((&avctp_conn_timer));
  _208 = memset(((uint8_t*)(&avctp_conn_timer)), 0, 20);
  goto _209;

_209:
  return;
}


void avctp_init(struct l_struct_struct_OC_avctp_stack_t* _211, l_fptr_2* _212, l_fptr_2* _213, uint8_t* _214) {
  uint8_t _215;
  uint32_t _216;
  struct l_struct_struct_OC_avctp_stack_t* _217;
  uint8_t* _218;
  uint16_t _219;
  struct l_struct_struct_OC_avctp_stack_t* _220;

  acp_stack = _211;
  avctp_run_loop_busy = ((0) & 1);
  _215 = l2cap_debug_enable;
  if ((((((int8_t)_215) < ((int8_t)((uint8_t)0)))&1))) {
    goto _221;
  } else {
    goto _222;
  }

_221:
  _216 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), 80);
  goto _222;

_222:
  _217 = acp_stack;
  _218 = memset(((&_217->field3.array[((int32_t)0)].field0.array[((int32_t)0)])), 0, 64);
  __UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_217->field3.array[((int32_t)0)].field5.field6))))) = ((((uint32_t)0)) & 16777215);
  *((&_217->field3.array[((int32_t)0)].field5.field8)) = 0;
  _219 =  /*tail*/ l2cap_max_mtu();
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), __avctp_packet_handler, 23, _219);
  _220 = acp_stack;
   /*tail*/ stack_run_loop_register(((&_220->field4)), avctp_send_key_loop, _214);
}


static void __avctp_packet_handler(uint8_t _223, uint16_t _224, uint8_t* _225, uint16_t _226) {
  struct l_array_6_uint8_t _227;    /* Address-exposed local */
  uint8_t _228;    /* Address-exposed local */
  uint8_t _229;    /* Address-exposed local */
  struct l_array_100_uint8_t _230;    /* Address-exposed local */
  uint64_t _231;    /* Address-exposed local */
  struct l_array_6_uint8_t _232;    /* Address-exposed local */
  uint8_t _233;
  uint8_t* _234;
  uint8_t* _235;
  struct l_struct_struct_OC_avctp_stack_t* _236;
  struct l_struct_struct_OC_avctp* _237;
  struct l_struct_struct_OC_avctp* _238;
  struct l_struct_struct_OC_avctp* _239;
  struct l_struct_struct_OC_avctp* _239__PHI_TEMPORARY;
  uint16_t _240;
  uint32_t _241;
  struct l_struct_struct_OC_avctp* _242;
  struct l_struct_struct_OC_avctp* _243;
  struct l_struct_struct_OC_avctp* _243__PHI_TEMPORARY;
  uint8_t* _244;
  uint16_t _245;
  uint8_t* _246;
  uint16_t* _247;
  uint16_t _248;
  uint8_t _249;
  uint8_t _250;
  uint8_t* _251;
  uint8_t _252;
  uint16_t _253;
  uint32_t _254;
  uint8_t* _255;
  uint8_t _256;
  uint32_t _257;
  uint8_t* _258;
  uint32_t _259;
  uint32_t _260;
  uint8_t _261;
  uint8_t _262;
  uint32_t _263;
  uint32_t _264;
  uint8_t* _265;
  uint8_t* _266;
  uint8_t* _266__PHI_TEMPORARY;
  uint32_t _267;
  uint8_t _268;
  uint16_t _269;
  uint32_t _270;
  uint16_t _271;
  uint16_t _271__PHI_TEMPORARY;
  uint32_t _272;
  uint32_t _272__PHI_TEMPORARY;
  uint32_t _273;
  uint16_t _274;
  uint16_t _274__PHI_TEMPORARY;
  uint32_t _275;
  uint32_t _275__PHI_TEMPORARY;
  uint32_t _276;
  uint8_t _277;
  uint16_t _278;
  uint16_t _279;
  uint16_t _279__PHI_TEMPORARY;
  uint8_t _280;
  uint8_t _280__PHI_TEMPORARY;
  uint32_t _281;
  uint32_t _281__PHI_TEMPORARY;
  uint8_t _282;
  uint8_t* _283;
  uint8_t* _283__PHI_TEMPORARY;
  uint32_t _284;
  uint32_t _284__PHI_TEMPORARY;
  uint8_t _285;
  uint16_t _286;
  uint8_t _287;
  uint32_t _288;
  uint8_t* _289;
  uint8_t* _290;
  uint32_t _291;
  uint8_t _292;
  struct l_struct_struct_OC_avctp_stack_t* _293;
  struct l_struct_struct_OC_avctp* _294;
  struct l_struct_struct_OC_avctp* _295;
  struct l_struct_struct_OC_avctp* _296;
  struct l_struct_struct_OC_avctp* _296__PHI_TEMPORARY;
  uint16_t _297;
  uint32_t _298;
  struct l_struct_struct_OC_avctp* _299;
  struct l_struct_struct_OC_avctp* _300;
  struct l_struct_struct_OC_avctp* _300__PHI_TEMPORARY;
  uint32_t _301;
  uint8_t* _302;
  struct l_struct_struct_OC_avctp* _303;
  uint8_t _304;
  uint16_t _305;
  uint32_t _306;
  struct l_struct_struct_OC_avctp* _307;
  struct l_struct_struct_OC_avctp* _308;
  struct l_struct_struct_OC_avctp* _308__PHI_TEMPORARY;
  uint16_t* _309;
  uint16_t _310;
  uint32_t* _311;
  uint32_t _312;
  uint32_t _313;
  uint8_t _314;
  uint8_t _315;
  uint8_t _316;
  uint8_t _317;
  uint8_t _318;
  uint8_t _319;
  uint8_t _320;
  uint8_t* _321;
  uint32_t _322;
  uint8_t _323;
  uint8_t* _324;
  uint8_t* _324__PHI_TEMPORARY;

  if ((((_223 == ((uint8_t)4))&1))) {
    goto _325;
  } else {
    goto _326;
  }

_325:
  _233 = *_225;
  if ((((_233 == ((uint8_t)116))&1))) {
    goto _327;
  } else {
    goto _328;
  }

_328:
  _234 = (&_232.array[((int32_t)0)]);
  switch (_233) {
  default:
    _324__PHI_TEMPORARY = _234;   /* for PHI node */
    goto _329;
  case ((uint8_t)112):
    goto _330;
  case ((uint8_t)113):
    goto _331;
  case ((uint8_t)114):
    goto _332;
  case ((uint8_t)121):
    goto _333;
  }

_326:
  _235 = (&_232.array[((int32_t)0)]);
  if ((((_223 == ((uint8_t)6))&1))) {
    goto _334;
  } else {
    _324__PHI_TEMPORARY = _235;   /* for PHI node */
    goto _329;
  }

_334:
  _236 = acp_stack;
  _237 = (&_236->field3.array[((int32_t)0)]);
  _238 = (&_236->field3.array[((int32_t)1)]);
  _239__PHI_TEMPORARY = _237;   /* for PHI node */
  goto _335;

  do {     /* Syntactic loop '' to make GCC happy */
_335:
  _239 = _239__PHI_TEMPORARY;
  _240 = *((&_239->field1));
  if ((((_240 == _224)&1))) {
    goto _336;
  } else {
    goto _337;
  }

_336:
  _241 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_239->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_241))) < ((int16_t)((uint16_t)0)))&1))) {
    _243__PHI_TEMPORARY = _239;   /* for PHI node */
    goto _338;
  } else {
    goto _337;
  }

_337:
  _242 = (&_239[((int32_t)1)]);
  if ((((((uint32_t)_242) < ((uint32_t)_238))&1))) {
    _239__PHI_TEMPORARY = _242;   /* for PHI node */
    goto _335;
  } else {
    _243__PHI_TEMPORARY = ((struct l_struct_struct_OC_avctp*)/*NULL*/0);   /* for PHI node */
    goto _338;
  }

  } while (1); /* end of syntactic loop '' */
_338:
  _243 = _243__PHI_TEMPORARY;
  _244 = (&_230.array[((int32_t)0)]);
  if ((((_243 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _339;
  } else {
    goto _340;
  }

_340:
  _245 = llvm_add_u16(_226, -6);
  _246 = (&_225[((int32_t)6)]);
  _247 = ((uint16_t*)((&_225[((int32_t)3)])));
  _248 = __UNALIGNED_LOAD__(uint16_t, 1, _247);
  _249 = llvm_and_u8((((uint8_t)_248)), 15);
  _228 = _249;
  _250 = ((uint8_t)(llvm_lshr_u16(_248, 11)));
  _229 = _250;
  _251 = memset(_244, 0, 100);
  _252 = *_225;
  if (((((llvm_and_u8(_252, 12)) == ((uint8_t)0))&1))) {
    goto _341;
  } else {
    goto _339;
  }

_341:
  _253 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_225[((int32_t)1)])))));
  _254 = ((uint32_t)(uint16_t)_253);
  if (((((((_254 << 8) & 65280) | (llvm_lshr_u32(_254, 8))) == 4366u)&1))) {
    goto _342;
  } else {
    goto _343;
  }

_342:
  _255 = (&_225[((int32_t)5)]);
  _256 = *_255;
  if (((((llvm_and_u8(_252, 2)) == ((uint8_t)0))&1))) {
    goto _344;
  } else {
    goto _345;
  }

_345:
  switch (_256) {
  default:
    goto _339;
  case ((uint8_t)0):
    goto _346;
  case ((uint8_t)124):
    goto _347;
  }

_346:
  _257 = ((uint32_t)(uint16_t)_245);
  if ((((((uint16_t)_245) < ((uint16_t)((uint16_t)90)))&1))) {
    goto _348;
  } else {
    goto _349;
  }

_348:
  _258 = memcpy(_244, _246, _257);
  _259 = handle_vendordep_pdu_res(_243, (llvm_lshr_u8(_252, 4)), (&_228), (&_229), _244, _257);
  goto _339;

_349:
  _260 = handle_vendordep_pdu_res(_243, (llvm_lshr_u8(_252, 4)), (&_228), (&_229), _246, _257);
  goto _339;

_347:
  if ((((_249 == ((uint8_t)9))&1))) {
    goto _350;
  } else {
    goto _339;
  }

_350:
  _261 = *_246;
  if ((((((int8_t)_261) < ((int8_t)((uint8_t)0)))&1))) {
    goto _339;
  } else {
    goto _351;
  }

_351:
  if (((((llvm_and_u8(_261, -2)) == ((uint8_t)72))&1))) {
    goto _352;
  } else {
    goto _353;
  }

_352:
  *((&_243->field5.field1)) = 30;
  _262 = *_246;
  *((&_243->field5.field2)) = _262;
  goto _339;

_353:
  _263 =  /*tail*/ avctp_passthrough_release(_243, _261);
  goto _339;

_344:
  switch (_256) {
  default:
    goto _339;
  case ((uint8_t)0):
    goto _354;
  case ((uint8_t)48):
    goto _355;
  case ((uint8_t)49):
    goto _356;
  case ((uint8_t)124):
    goto _357;
  }

_354:
  _264 = ((uint32_t)(uint16_t)_245);
  if ((((((uint16_t)_245) < ((uint16_t)((uint16_t)90)))&1))) {
    goto _358;
  } else {
    _266__PHI_TEMPORARY = _246;   /* for PHI node */
    goto _359;
  }

_358:
  _265 = memcpy(_244, _246, _264);
  _266__PHI_TEMPORARY = _244;   /* for PHI node */
  goto _359;

_359:
  _266 = _266__PHI_TEMPORARY;
  _267 = handle_vendordep_pdu(_243, (llvm_lshr_u8(_252, 4)), (&_228), (&_229), _266, _264);
  _268 = _228;
  _269 = __UNALIGNED_LOAD__(uint16_t, 1, _247);
  __UNALIGNED_LOAD__(uint16_t, 1, _247) = (llvm_or_u16((llvm_and_u16(_269, -16)), (((uint16_t)(uint8_t)(llvm_and_u8(_268, 15))))));
  _283__PHI_TEMPORARY = _266;   /* for PHI node */
  _284__PHI_TEMPORARY = _267;   /* for PHI node */
  goto _360;

_355:
  _270 = ((uint32_t)(uint16_t)_245);
  if ((((_249 == ((uint8_t)1))&1))) {
    goto _361;
  } else {
    goto _362;
  }

_362:
  _228 = 10;
  _271__PHI_TEMPORARY = 10;   /* for PHI node */
  _272__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _363;

_361:
  _228 = 12;
  if ((((_245 == ((uint16_t)0))&1))) {
    _271__PHI_TEMPORARY = 12;   /* for PHI node */
    _272__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _363;
  } else {
    goto _364;
  }

_364:
  *_246 = 7;
  if ((((_245 == ((uint16_t)1))&1))) {
    _271__PHI_TEMPORARY = 12;   /* for PHI node */
    _272__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _363;
  } else {
    goto _365;
  }

_365:
  *((&_225[((int32_t)7)])) = 72u;
  _271__PHI_TEMPORARY = 12;   /* for PHI node */
  _272__PHI_TEMPORARY = _270;   /* for PHI node */
  goto _363;

_363:
  _271 = _271__PHI_TEMPORARY;
  _272 = _272__PHI_TEMPORARY;
  __UNALIGNED_LOAD__(uint16_t, 1, _247) = (llvm_or_u16(_271, (llvm_and_u16(_248, -16))));
  _283__PHI_TEMPORARY = _246;   /* for PHI node */
  _284__PHI_TEMPORARY = _272;   /* for PHI node */
  goto _360;

_356:
  _273 = ((uint32_t)(uint16_t)_245);
  if ((((_249 == ((uint8_t)1))&1))) {
    goto _366;
  } else {
    goto _367;
  }

_367:
  _228 = 10;
  _274__PHI_TEMPORARY = 10;   /* for PHI node */
  _275__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _368;

_366:
  _228 = 12;
  if ((((((uint16_t)_245) > ((uint16_t)((uint16_t)1)))&1))) {
    goto _369;
  } else {
    _274__PHI_TEMPORARY = 12;   /* for PHI node */
    _275__PHI_TEMPORARY = _273;   /* for PHI node */
    goto _368;
  }

_369:
  *((&_225[((int32_t)7)])) = 72u;
  _274__PHI_TEMPORARY = 12;   /* for PHI node */
  _275__PHI_TEMPORARY = _273;   /* for PHI node */
  goto _368;

_368:
  _274 = _274__PHI_TEMPORARY;
  _275 = _275__PHI_TEMPORARY;
  __UNALIGNED_LOAD__(uint16_t, 1, _247) = (llvm_or_u16(_274, (llvm_and_u16(_248, -16))));
  _283__PHI_TEMPORARY = _246;   /* for PHI node */
  _284__PHI_TEMPORARY = _275;   /* for PHI node */
  goto _360;

_357:
  _276 = ((uint32_t)(uint16_t)_245);
  if (((((((_249 == ((uint8_t)0))&1)) & (((_250 == ((uint8_t)9))&1)))&1))) {
    goto _370;
  } else {
    _279__PHI_TEMPORARY = _248;   /* for PHI node */
    _280__PHI_TEMPORARY = 10;   /* for PHI node */
    _281__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _371;
  }

_370:
  if ((((_245 == ((uint16_t)0))&1))) {
    _279__PHI_TEMPORARY = _248;   /* for PHI node */
    _280__PHI_TEMPORARY = 9;   /* for PHI node */
    _281__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _371;
  } else {
    goto _372;
  }

_372:
  _277 = *_246;
  if ((((((int8_t)_277) < ((int8_t)((uint8_t)0)))&1))) {
    _279__PHI_TEMPORARY = _248;   /* for PHI node */
    _280__PHI_TEMPORARY = 9;   /* for PHI node */
    _281__PHI_TEMPORARY = _276;   /* for PHI node */
    goto _371;
  } else {
    goto _373;
  }

_373:
   /*tail*/ bt_event_update_to_user(((&_243->field0.array[((int32_t)0)])), 1129270784u, 37, (((uint32_t)(uint8_t)_277)));
  _278 = __UNALIGNED_LOAD__(uint16_t, 1, _247);
  _279__PHI_TEMPORARY = _278;   /* for PHI node */
  _280__PHI_TEMPORARY = 9;   /* for PHI node */
  _281__PHI_TEMPORARY = _276;   /* for PHI node */
  goto _371;

_371:
  _279 = _279__PHI_TEMPORARY;
  _280 = _280__PHI_TEMPORARY;
  _281 = _281__PHI_TEMPORARY;
  _228 = _280;
  __UNALIGNED_LOAD__(uint16_t, 1, _247) = (llvm_or_u16((((uint16_t)(uint8_t)_280)), (llvm_and_u16(_279, -16))));
  _282 = *_246;
  if ((((((int8_t)_282) < ((int8_t)((uint8_t)0)))&1))) {
    goto _374;
  } else {
    _283__PHI_TEMPORARY = _246;   /* for PHI node */
    _284__PHI_TEMPORARY = _281;   /* for PHI node */
    goto _360;
  }

_374:
   /*tail*/ emitter_rx_avctp_opid_deal((llvm_and_u8(_282, 127u)), 0);
  _283__PHI_TEMPORARY = _246;   /* for PHI node */
  _284__PHI_TEMPORARY = _281;   /* for PHI node */
  goto _360;

_360:
  _283 = _283__PHI_TEMPORARY;
  _284 = _284__PHI_TEMPORARY;
  if ((((_284 == 0u)&1))) {
    goto _339;
  } else {
    goto _375;
  }

_375:
  _285 = *_225;
  _286 = __UNALIGNED_LOAD__(uint16_t, 1, _247);
  _287 = *_255;
  _288 = avctp_send(_243, (llvm_lshr_u8(_285, 4)), 1, (llvm_and_u8((((uint8_t)_286)), 15)), (((uint8_t)(llvm_lshr_u16(_286, 11)))), _287, _283, _284);
  goto _339;

_343:
  *_225 = (llvm_or_u8((llvm_and_u8(_252, -16)), 3));
  *((&_243->field5.field8)) = 3;
  _289 = ((uint8_t*)(&_231));
  _231 = 0;
  _290 = memcpy(_289, _225, 3);
  _291 = avctp_cmd_try_send_no_resend(_243, _289);
  goto _339;

_339:
  _324__PHI_TEMPORARY = _235;   /* for PHI node */
  goto _329;

_330:
  _292 = *((&_225[((int32_t)2)]));
   /*tail*/ avctp_channel_open(_292, _224, _225, 1);
  _324__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _329;

_331:
  _293 = acp_stack;
  _294 = (&_293->field3.array[((int32_t)0)]);
  _295 = (&_293->field3.array[((int32_t)1)]);
  _296__PHI_TEMPORARY = _294;   /* for PHI node */
  goto _376;

  do {     /* Syntactic loop '' to make GCC happy */
_376:
  _296 = _296__PHI_TEMPORARY;
  _297 = *((&_296->field1));
  if ((((_297 == _224)&1))) {
    goto _377;
  } else {
    goto _378;
  }

_377:
  _298 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_296->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_298))) < ((int16_t)((uint16_t)0)))&1))) {
    _300__PHI_TEMPORARY = _296;   /* for PHI node */
    goto _379;
  } else {
    goto _378;
  }

_378:
  _299 = (&_296[((int32_t)1)]);
  if ((((((uint32_t)_299) < ((uint32_t)_295))&1))) {
    _296__PHI_TEMPORARY = _299;   /* for PHI node */
    goto _376;
  } else {
    _300__PHI_TEMPORARY = ((struct l_struct_struct_OC_avctp*)/*NULL*/0);   /* for PHI node */
    goto _379;
  }

  } while (1); /* end of syntactic loop '' */
_379:
  _300 = _300__PHI_TEMPORARY;
   /*tail*/ __free_avctp_conn(_300, 1);
  _324__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _329;

_332:
  _301 =  /*tail*/ __bt_profile_enable(8);
  if ((((_301 == 0u)&1))) {
    goto _380;
  } else {
    goto _381;
  }

_381:
  _302 = (&_227.array[((int32_t)0)]);
  bt_flip_addr(_302, ((&_225[((int32_t)2)])));
  _303 = __avctp_conn_for_addr(_302);
  if ((((_303 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _382;
  } else {
    goto _383;
  }

_383:
  _304 = l2cap_debug_enable;
  if ((((((int8_t)_304) < ((int8_t)((uint8_t)0)))&1))) {
    goto _384;
  } else {
    _308__PHI_TEMPORARY = _303;   /* for PHI node */
    goto _385;
  }

_384:
  _305 = *((&_303->field1));
  _306 = printf(((&_OC_str_OC_12.array[((int32_t)0)])), (((uint32_t)(uint16_t)_305)), (((uint32_t)(uint16_t)_224)));
  _308__PHI_TEMPORARY = _303;   /* for PHI node */
  goto _385;

_382:
  _307 = __create_avctp_conn(_302);
  if ((((_307 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _386;
  } else {
    _308__PHI_TEMPORARY = _307;   /* for PHI node */
    goto _385;
  }

_385:
  _308 = _308__PHI_TEMPORARY;
  _309 = (&_308->field1);
  _310 = *_309;
  if ((((_310 == ((uint16_t)0))&1))) {
    goto _387;
  } else {
    goto _386;
  }

_387:
  *((&_308->field2)) = 0;
  *_309 = _224;
  _311 = ((uint32_t*)((&_308->field5.field6)));
  _312 = ((__UNALIGNED_LOAD__(uint32_t, 1, _311))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _311) = (((((_312 & -129)&16777215))) & 16777215);
  l2cap_accept_connection_internal(_224);
  _313 = ((__UNALIGNED_LOAD__(uint32_t, 1, _311))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _311) = ((((((((_313 & -113)&16777215)) | 16)&16777215))) & 16777215);
  goto _386;

_386:
  _324__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _329;

_380:
   /*tail*/ l2cap_decline_connection_internal(_224, 4);
  _324__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _329;

_333:
  bt_flip_addr(_234, ((&_225[((int32_t)3)])));
  _314 = profile_debug_enable;
  if (((((llvm_and_u8(_314, 1)) == ((uint8_t)0))&1))) {
    goto _388;
  } else {
    goto _389;
  }

_389:
  _315 = *((&_225[((int32_t)13)]));
  _316 = *((&_225[((int32_t)14)]));
  _317 = *((&_225[((int32_t)11)]));
  _318 = *((&_225[((int32_t)12)]));
  _319 = *((&_225[((int32_t)9)]));
  _320 = *((&_225[((int32_t)10)]));
  _321 = bd_addr_to_str(_234);
  _322 = printf(((&_OC_str_OC_11.array[((int32_t)0)])), _321, (((((uint32_t)(uint8_t)_320)) << 8) | (((uint32_t)(uint8_t)_319))), (((((uint32_t)(uint8_t)_318)) << 8) | (((uint32_t)(uint8_t)_317))), (((((uint32_t)(uint8_t)_316)) << 8) | (((uint32_t)(uint8_t)_315))));
  goto _388;

_388:
  _323 = *((&_225[((int32_t)2)]));
  avctp_channel_open(_323, _224, _225, 0);
  _324__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _329;

_329:
  _324 = _324__PHI_TEMPORARY;
  goto _327;

_327:
  return;
}


static void avctp_send_key_loop(struct l_struct_struct_OC_run_loop* _390) {
  struct l_array_2_uint8_t _391;    /* Address-exposed local */
  struct l_struct_struct_OC_avctp_stack_t* _392;
  struct l_struct_struct_OC_avctp_stack_t* _393;
  struct l_struct_struct_OC_avctp* _394;
  uint8_t* _395;
  uint8_t* _396;
  struct l_struct_struct_OC_avctp_stack_t* _397;
  struct l_struct_struct_OC_avctp_stack_t* _397__PHI_TEMPORARY;
  struct l_struct_struct_OC_avctp* _398;
  struct l_struct_struct_OC_avctp* _398__PHI_TEMPORARY;
  uint32_t* _399;
  uint32_t _400;
  uint16_t _401;
  uint8_t* _402;
  uint8_t _403;
  uint8_t _404;
  uint8_t _405;
  uint8_t _405__PHI_TEMPORARY;
  uint32_t* _406;
  uint32_t _407;
  uint32_t _408;
  uint32_t _408__PHI_TEMPORARY;
  uint32_t _409;
  uint32_t _410;
  struct l_struct_struct_OC_avctp_stack_t* _411;
  uint32_t _412;
  uint32_t _413;
  struct l_struct_struct_OC_avctp_stack_t* _414;
  uint32_t _415;
  uint32_t _416;
  struct l_struct_struct_OC_avctp_stack_t* _417;
  uint8_t _418;
  uint32_t _419;
  uint32_t _420;
  struct l_struct_struct_OC_avctp_stack_t* _421;
  uint8_t _422;
  uint32_t _423;
  uint32_t _424;
  struct l_struct_struct_OC_avctp_stack_t* _425;
  uint8_t _426;
  uint32_t _427;
  uint32_t _428;
  struct l_struct_struct_OC_avctp_stack_t* _429;
  uint32_t _430;
  uint32_t _431;
  struct l_struct_struct_OC_avctp_stack_t* _432;
  uint8_t _433;
  uint8_t* _434;
  uint8_t _435;
  uint8_t _436;
  uint8_t _437;
  uint8_t _438;
  uint32_t _439;
  struct l_struct_struct_OC_avctp_stack_t* _440;
  struct l_struct_struct_OC_avctp_stack_t* _441;
  struct l_struct_struct_OC_avctp_stack_t* _441__PHI_TEMPORARY;
  uint32_t _442;
  uint32_t _442__PHI_TEMPORARY;
  uint8_t _443;
  uint8_t _444;
  uint8_t* _445;
  uint8_t _446;
  uint8_t _447;
  uint8_t _448;
  uint8_t _449;
  uint32_t _450;
  struct l_struct_struct_OC_avctp_stack_t* _451;
  struct l_struct_struct_OC_avctp_stack_t* _452;
  struct l_struct_struct_OC_avctp_stack_t* _452__PHI_TEMPORARY;
  uint32_t _453;
  uint32_t _453__PHI_TEMPORARY;
  uint8_t _454;
  uint32_t _455;
  uint32_t _456;
  struct l_struct_struct_OC_avctp_stack_t* _457;
  uint8_t _458;
  uint32_t _459;
  uint32_t _460;
  struct l_struct_struct_OC_avctp_stack_t* _461;
  uint32_t _462;
  uint32_t _463;
  struct l_struct_struct_OC_avctp_stack_t* _464;
  uint8_t* _465;
  uint8_t _466;
  uint32_t _467;
  struct l_struct_struct_OC_avctp_stack_t* _468;
  uint32_t _469;
  l_fptr_3* _470;
  uint32_t _471;
  uint32_t _472;
  struct l_struct_struct_OC_avctp_stack_t* _473;
  struct l_struct_struct_OC_avctp_stack_t* _474;
  struct l_struct_struct_OC_avctp_stack_t* _474__PHI_TEMPORARY;
  uint32_t _475;
  uint32_t _475__PHI_TEMPORARY;
  uint32_t _476;
  uint8_t* _477;
  uint8_t _478;
  uint8_t _479;
  uint32_t _480;
  uint32_t _481;
  uint32_t _482;
  struct l_struct_struct_OC_avctp_stack_t* _483;
  uint8_t _484;
  uint8_t _485;
  uint8_t _486;
  uint8_t _487;
  uint32_t _488;
  uint8_t _489;
  uint8_t _490;
  uint8_t _490__PHI_TEMPORARY;
  uint32_t _491;
  uint32_t _492;
  uint32_t _492__PHI_TEMPORARY;
  uint8_t _493;
  uint32_t _494;
  struct l_struct_struct_OC_avctp_stack_t* _495;
  uint32_t _496;
  uint8_t _497;
  struct l_struct_struct_OC_avctp* _498;
  struct l_struct_struct_OC_avctp_stack_t* _499;

  _392 = acp_stack;
  if ((((_392 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    goto _500;
  } else {
    goto _501;
  }

_501:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  avctp_run_loop_busy = ((1) & 1);
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
  _393 = acp_stack;
  _394 = (&_393->field3.array[((int32_t)0)]);
  _395 = (&_391.array[((int32_t)0)]);
  _396 = (&_391.array[((int32_t)1)]);
  _397__PHI_TEMPORARY = _393;   /* for PHI node */
  _398__PHI_TEMPORARY = _394;   /* for PHI node */
  goto _502;

  do {     /* Syntactic loop '' to make GCC happy */
_502:
  _397 = _397__PHI_TEMPORARY;
  _398 = _398__PHI_TEMPORARY;
  _399 = ((uint32_t*)((&_398->field5.field6)));
  _400 = ((__UNALIGNED_LOAD__(uint32_t, 1, _399))&16777215);
  if ((((((int16_t)(((uint16_t)_400))) > ((int16_t)((uint16_t)-1)))&1))) {
    goto _503;
  } else {
    goto _504;
  }

_504:
  _401 = *((&_398->field1));
  if ((((_401 == ((uint16_t)0))&1))) {
    goto _503;
  } else {
    goto _505;
  }

_505:
  _402 = (&_397->field0);
  _403 = *_402;
  if ((((_403 == ((uint8_t)0))&1))) {
    _405__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _506;
  } else {
    goto _507;
  }

_507:
  _404 = llvm_add_u8(_403, -1);
  *_402 = _404;
  _405__PHI_TEMPORARY = _404;   /* for PHI node */
  goto _506;

_506:
  _405 = _405__PHI_TEMPORARY;
  _406 = (&_398->field5.field0);
  _407 = *_406;
  if (((((((_407 != 0u)&1)) & (((_405 == ((uint8_t)0))&1)))&1))) {
    goto _508;
  } else {
    goto _509;
  }

_508:
  _408__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _510;

  do {     /* Syntactic loop '' to make GCC happy */
_510:
  _408 = _408__PHI_TEMPORARY;
  if (((((_407 & (1 << _408)) == 0u)&1))) {
    goto _511;
  } else {
    goto _512;
  }

_511:
  _476 = llvm_add_u32(_408, 1);
  if ((((((int32_t)_476) < ((int32_t)16u))&1))) {
    _408__PHI_TEMPORARY = _476;   /* for PHI node */
    goto _510;
  } else {
    goto _513;
  }

  } while (1); /* end of syntactic loop '' */
_513:
  goto _509;

_509:
  _477 = (&_398->field5.field1);
  _478 = *_477;
  if ((((_478 == ((uint8_t)0))&1))) {
    goto _514;
  } else {
    goto _515;
  }

_515:
  _479 = llvm_add_u8(_478, -1);
  *_477 = _479;
  if ((((_479 == ((uint8_t)1))&1))) {
    goto _516;
  } else {
    goto _517;
  }

_516:
  *_477 = 0;
  *_406 = (_407 | 1024);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _517;

_517:
   /*tail*/ os_time_dly(1);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _514;

_514:
  _480 = ((__UNALIGNED_LOAD__(uint32_t, 1, _399))&16777215);
  _481 = (((((llvm_lshr_u24(_480, 16))&16777215)) & 15)&16777215);
  _482 = ((uint32_t)(uint32_t)_481);
  if ((((_481 == (((llvm_lshr_u24(_480, 20))&16777215)))&1))) {
    goto _503;
  } else {
    goto _518;
  }

_518:
  _483 = acp_stack;
  _484 = *((&_483->field0));
  if ((((_484 == ((uint8_t)0))&1))) {
    goto _519;
  } else {
    goto _503;
  }

_519:
  _485 = *((&_398->field5.field9.array[((int32_t)_482)]));
  _486 = *_477;
  if ((((_486 == ((uint8_t)0))&1))) {
    goto _520;
  } else {
    goto _521;
  }

_521:
  _487 = *((&_398->field5.field2));
  if ((((_487 == _485)&1))) {
    goto _522;
  } else {
    goto _523;
  }

_523:
  *_477 = 0;
  _488 = *_406;
  *_406 = (_488 | 1024);
   /*tail*/ ((l_fptr_1*)(void*)stack_run_loop_resume)();
  goto _524;

_522:
  *_477 = 30;
  goto _524;

_520:
  if ((((_485 == ((uint8_t)68))&1))) {
    goto _525;
  } else {
    _490__PHI_TEMPORARY = _485;   /* for PHI node */
    goto _526;
  }

_525:
  _489 = llvm_select_u8(((((((_480 & 16384)&16777215)) == ((uint32_t)0))&1)), 68u, 70u);
  _490__PHI_TEMPORARY = _489;   /* for PHI node */
  goto _526;

_526:
  _490 = _490__PHI_TEMPORARY;
  switch (_490) {
  default:
    _492__PHI_TEMPORARY = _480;   /* for PHI node */
    goto _527;
  case ((uint8_t)68):
    goto _528;
  case ((uint8_t)70):
    goto _528;
  }

_528:
  _491 = ((_480 ^ 16384)&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _399) = ((_491) & 16777215);
  _492__PHI_TEMPORARY = _491;   /* for PHI node */
  goto _527;

_527:
  _492 = ((_492__PHI_TEMPORARY)&16777215);
  _493 = llvm_and_u8((llvm_add_u8((((uint8_t)_492)), 1)), 15);
  __UNALIGNED_LOAD__(uint32_t, 1, _399) = ((((((((((uint32_t)(uint8_t)_493))&16777215)) | (((_492 & -16)&16777215)))&16777215))) & 16777215);
  *_395 = (llvm_and_u8(_490, 127u));
  *_396 = 0;
  _494 = avctp_send(_398, _493, 0, 0, 9, 124u, _395, 2);
  if ((((_494 == 0u)&1))) {
    goto _524;
  } else {
    goto _503;
  }

_524:
  _495 = acp_stack;
  *((&_495->field0)) = 0;
  _496 = ((__UNALIGNED_LOAD__(uint32_t, 1, _399))&16777215);
  _497 = llvm_and_u8((llvm_add_u8((((uint8_t)(((llvm_lshr_u24(_496, 16))&16777215)))), 1)), 15);
  __UNALIGNED_LOAD__(uint32_t, 1, _399) = ((((((((llvm_select_u24((((((uint8_t)_497) > ((uint8_t)((uint8_t)8)))&1)), 0, ((((((((uint32_t)(uint8_t)_497))&16777215)) << 16)&16777215))))&16777215)) | (((_496 & -983041)&16777215)))&16777215))) & 16777215);
  goto _503;

_503:
  _498 = (&_398[((int32_t)1)]);
  _499 = acp_stack;
  if ((((((uint32_t)_498) < ((uint32_t)((&_499->field3.array[((int32_t)1)]))))&1))) {
    _397__PHI_TEMPORARY = _499;   /* for PHI node */
    _398__PHI_TEMPORARY = _498;   /* for PHI node */
    goto _502;
  } else {
    goto _529;
  }

  } while (1); /* end of syntactic loop '' */
_512:
  switch (_408) {
  default:
    goto _530;
  case 0u:
    goto _531;
  case 1u:
    goto _532;
  case 2u:
    goto _533;
  case 3u:
    goto _534;
  case 13u:
    goto _535;
  case 9u:
    goto _536;
  case 4u:
    goto _537;
  case 5u:
    goto _538;
  case 6u:
    goto _539;
  case 11u:
    goto _540;
  case 12u:
    goto _541;
  case 7u:
    goto _542;
  case 10u:
    goto _543;
  case 14u:
    goto _544;
  }

_531:
  _409 =  /*tail*/ avrcp_get_capabilities(_398);
  if ((((_409 == 0u)&1))) {
    goto _545;
  } else {
    goto _530;
  }

_545:
  _410 = *_406;
  *_406 = (_410 & -2);
  _411 = acp_stack;
  *((&_411->field0)) = 0;
  goto _530;

_532:
  _412 =  /*tail*/ avrcp_register_notification(_398, 1);
  if ((((_412 == 0u)&1))) {
    goto _546;
  } else {
    goto _530;
  }

_546:
  _413 = *_406;
  *_406 = (_413 & -3);
  _414 = acp_stack;
  *((&_414->field0)) = 0;
  goto _530;

_533:
  _415 =  /*tail*/ avrcp_register_notification(_398, 2);
  if ((((_415 == 0u)&1))) {
    goto _547;
  } else {
    goto _530;
  }

_547:
  _416 = *_406;
  *_406 = (_416 & -5);
  _417 = acp_stack;
  *((&_417->field0)) = 0;
  goto _530;

_534:
  _418 = more_avctp_cmd_support;
  if ((((_418 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _548;
  }

_548:
  _419 =  /*tail*/ avrcp_register_notification(_398, 8);
  if ((((_419 == 0u)&1))) {
    goto _549;
  } else {
    goto _530;
  }

_549:
  _420 = *_406;
  *_406 = (_420 & -9);
  _421 = acp_stack;
  *((&_421->field0)) = 0;
  goto _530;

_535:
  _422 = more_avctp_cmd_support;
  if ((((_422 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _550;
  }

_550:
  _423 =  /*tail*/ avrcp_register_notification(_398, 13);
  if ((((_423 == 0u)&1))) {
    goto _551;
  } else {
    goto _530;
  }

_551:
  _424 = *_406;
  *_406 = (_424 & -8193);
  _425 = acp_stack;
  *((&_425->field0)) = 0;
  goto _530;

_536:
  _426 = more_avctp_cmd_support;
  if ((((_426 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _552;
  }

_552:
  _427 =  /*tail*/ avrcp_register_notification(_398, 5);
  if ((((_427 == 0u)&1))) {
    goto _553;
  } else {
    goto _530;
  }

_553:
  _428 = *_406;
  *_406 = (_428 & -513);
  _429 = acp_stack;
  *((&_429->field0)) = 0;
  goto _530;

_537:
  _430 =  /*tail*/ avrcp_list_player_attributes(_398);
  if ((((_430 == 0u)&1))) {
    goto _554;
  } else {
    goto _530;
  }

_554:
  _431 = *_406;
  *_406 = (_431 & -17);
  _432 = acp_stack;
  *((&_432->field0)) = 0;
  goto _530;

_538:
  _433 = *((&_398->field5.field5));
  if (((((llvm_and_u8(_433, 4)) == ((uint8_t)0))&1))) {
    _441__PHI_TEMPORARY = _397;   /* for PHI node */
    _442__PHI_TEMPORARY = _407;   /* for PHI node */
    goto _555;
  } else {
    goto _556;
  }

_556:
  _434 = (&_398->field5.field3.array[((int32_t)2)]);
  _435 = *_434;
  _436 = llvm_add_u8(_435, 1);
  _437 = llvm_select_u8((((((uint8_t)_436) > ((uint8_t)((uint8_t)3)))&1)), 1, _436);
  *_434 = _437;
  _438 =  /*tail*/ avrcp_set_player_value(_398, 2, _437);
  if ((((_438 == ((uint8_t)0))&1))) {
    goto _557;
  } else {
    goto _530;
  }

_557:
  _439 = *_406;
  _440 = acp_stack;
  _441__PHI_TEMPORARY = _440;   /* for PHI node */
  _442__PHI_TEMPORARY = _439;   /* for PHI node */
  goto _555;

_555:
  _441 = _441__PHI_TEMPORARY;
  _442 = _442__PHI_TEMPORARY;
  *_406 = (_442 & -33);
  *((&_441->field0)) = 0;
  goto _530;

_539:
  _443 = more_avctp_cmd_support;
  if ((((_443 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _558;
  }

_558:
  _444 = *((&_398->field5.field5));
  if (((((llvm_and_u8(_444, 8)) == ((uint8_t)0))&1))) {
    _452__PHI_TEMPORARY = _397;   /* for PHI node */
    _453__PHI_TEMPORARY = _407;   /* for PHI node */
    goto _559;
  } else {
    goto _560;
  }

_560:
  _445 = (&_398->field5.field3.array[((int32_t)3)]);
  _446 = *_445;
  _447 = llvm_add_u8(_446, 1);
  _448 = llvm_select_u8((((((uint8_t)_447) > ((uint8_t)((uint8_t)2)))&1)), 1, _447);
  *_445 = _448;
  _449 =  /*tail*/ avrcp_set_player_value(_398, 3, _448);
  if ((((_449 == ((uint8_t)0))&1))) {
    goto _561;
  } else {
    goto _530;
  }

_561:
  _450 = *_406;
  _451 = acp_stack;
  _452__PHI_TEMPORARY = _451;   /* for PHI node */
  _453__PHI_TEMPORARY = _450;   /* for PHI node */
  goto _559;

_559:
  _452 = _452__PHI_TEMPORARY;
  _453 = _453__PHI_TEMPORARY;
  *_406 = (_453 & -65);
  *((&_452->field0)) = 0;
  goto _530;

_540:
  _454 = more_avctp_cmd_support;
  if ((((_454 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _562;
  }

_562:
  _455 =  /*tail*/ avrcp_get_play_status(_398);
  if ((((_455 == 0u)&1))) {
    goto _563;
  } else {
    goto _530;
  }

_563:
  _456 = *_406;
  *_406 = (_456 & -2049);
  _457 = acp_stack;
  *((&_457->field0)) = 0;
  goto _530;

_541:
  _458 = more_avctp_cmd_support;
  if ((((_458 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _564;
  }

_564:
  _459 =  /*tail*/ avrcp_get_element_attributes(_398);
  if ((((_459 == 0u)&1))) {
    goto _565;
  } else {
    goto _530;
  }

_565:
  _460 = *_406;
  *_406 = (_460 & -4097);
  _461 = acp_stack;
  *((&_461->field0)) = 0;
  goto _530;

_542:
  _462 =  /*tail*/ avrcp_player_event(_398, 13, ((uint8_t*)/*NULL*/0));
  if ((((_462 == 0u)&1))) {
    goto _566;
  } else {
    goto _530;
  }

_566:
  _463 = *_406;
  *_406 = (_463 & -129);
  _464 = acp_stack;
  *((&_464->field0)) = 0;
  goto _530;

_543:
  _465 = (&_398->field5.field2);
  _466 = *_465;
  if ((((_466 == ((uint8_t)0))&1))) {
    goto _530;
  } else {
    goto _567;
  }

_567:
  _467 =  /*tail*/ avctp_passthrough_release(_398, _466);
  if ((((_467 == 0u)&1))) {
    goto _568;
  } else {
    goto _530;
  }

_568:
  *_465 = 0;
  _468 = acp_stack;
  *((&_468->field0)) = 0;
  _469 = *_406;
  *_406 = (_469 & -1025);
  goto _530;

_544:
  _470 = *((&profile_cmd_hdl_str.field5));
  if ((((_470 == ((l_fptr_3*)/*NULL*/0))&1))) {
    _474__PHI_TEMPORARY = _397;   /* for PHI node */
    _475__PHI_TEMPORARY = _407;   /* for PHI node */
    goto _569;
  } else {
    goto _570;
  }

_570:
  _471 =  /*tail*/ _470(((&_398->field0.array[((int32_t)0)])), 60);
  _472 = *_406;
  _473 = acp_stack;
  _474__PHI_TEMPORARY = _473;   /* for PHI node */
  _475__PHI_TEMPORARY = _472;   /* for PHI node */
  goto _569;

_569:
  _474 = _474__PHI_TEMPORARY;
  _475 = _475__PHI_TEMPORARY;
  *_406 = (_475 & -16385);
  *((&_474->field0)) = 0;
  goto _530;

_529:
  goto _530;

_530:
  avctp_run_loop_busy = ((0) & 1);
  goto _500;

_500:
  return;
}


uint32_t avctp_core_data_for_send(uint8_t* _571, uint16_t _572) {
  struct l_struct_struct_OC_avctp_stack_t* _573;
  struct l_struct_struct_OC_avctp* _574;
  struct l_struct_struct_OC_avctp* _575;
  struct l_struct_struct_OC_avctp* _576;
  struct l_struct_struct_OC_avctp* _576__PHI_TEMPORARY;
  uint32_t _577;
  struct l_struct_struct_OC_avctp* _578;
  uint8_t* _579;
  uint32_t _580;
  uint32_t _580__PHI_TEMPORARY;

  _573 = acp_stack;
  _574 = (&_573->field3.array[((int32_t)0)]);
  _575 = (&_573->field3.array[((int32_t)1)]);
  _576__PHI_TEMPORARY = _574;   /* for PHI node */
  goto _581;

  do {     /* Syntactic loop '' to make GCC happy */
_581:
  _576 = _576__PHI_TEMPORARY;
  _577 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_576->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_577))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _582;
  } else {
    goto _583;
  }

_583:
  _578 = (&_576[((int32_t)1)]);
  if ((((((uint32_t)_578) < ((uint32_t)_575))&1))) {
    _576__PHI_TEMPORARY = _578;   /* for PHI node */
    goto _581;
  } else {
    goto _584;
  }

  } while (1); /* end of syntactic loop '' */
_582:
  _579 = memcpy(_571, (((uint8_t*)((&_576->field5)))), 44);
  _580__PHI_TEMPORARY = 44;   /* for PHI node */
  goto _585;

_584:
  _580__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _585;

_585:
  _580 = _580__PHI_TEMPORARY;
  return _580;
}


void avctp_core_data_for_set(uint8_t* _586, uint16_t _587) {
  struct l_struct_struct_OC_avctp_stack_t* _588;
  struct l_struct_struct_OC_avctp* _589;
  struct l_struct_struct_OC_avctp* _590;
  struct l_struct_struct_OC_avctp* _591;
  struct l_struct_struct_OC_avctp* _591__PHI_TEMPORARY;
  uint32_t _592;
  struct l_struct_struct_OC_avctp* _593;
  uint8_t* _594;

  _588 = acp_stack;
  _589 = (&_588->field3.array[((int32_t)0)]);
  _590 = (&_588->field3.array[((int32_t)1)]);
  _591__PHI_TEMPORARY = _589;   /* for PHI node */
  goto _595;

  do {     /* Syntactic loop '' to make GCC happy */
_595:
  _591 = _591__PHI_TEMPORARY;
  _592 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_591->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_592))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _596;
  } else {
    goto _597;
  }

_597:
  _593 = (&_591[((int32_t)1)]);
  if ((((((uint32_t)_593) < ((uint32_t)_590))&1))) {
    _591__PHI_TEMPORARY = _593;   /* for PHI node */
    goto _595;
  } else {
    goto _598;
  }

  } while (1); /* end of syntactic loop '' */
_596:
  _594 = memcpy((((uint8_t*)((&_591->field5)))), _586, 44);
  goto _599;

_598:
  goto _599;

_599:
  return;
}


uint8_t avctp_cmd_send_state(void) {
  struct l_struct_struct_OC_avctp_stack_t* _600;
  struct l_struct_struct_OC_avctp* _601;
  struct l_struct_struct_OC_avctp* _602;
  uint8_t* _603;
  struct l_struct_struct_OC_avctp* _604;
  struct l_struct_struct_OC_avctp* _604__PHI_TEMPORARY;
  uint32_t _605;
  uint16_t _606;
  uint32_t _607;
  uint8_t _608;
  struct l_struct_struct_OC_avctp* _609;
  uint8_t _610;
  uint8_t _610__PHI_TEMPORARY;
  uint8_t _611;
  uint8_t _611__PHI_TEMPORARY;

  _600 = acp_stack;
  if ((((_600 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _611__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _612;
  } else {
    goto _613;
  }

_613:
  _601 = (&_600->field3.array[((int32_t)1)]);
  _602 = (&_600->field3.array[((int32_t)0)]);
  _603 = (&_600->field0);
  _604__PHI_TEMPORARY = _602;   /* for PHI node */
  goto _614;

  do {     /* Syntactic loop '' to make GCC happy */
_614:
  _604 = _604__PHI_TEMPORARY;
  _605 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_604->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_605))) > ((int16_t)((uint16_t)-1)))&1))) {
    goto _615;
  } else {
    goto _616;
  }

_616:
  _606 = *((&_604->field1));
  if ((((_606 == ((uint16_t)0))&1))) {
    goto _615;
  } else {
    goto _617;
  }

_617:
  _607 = *((&_604->field5.field0));
  if ((((_607 == 0u)&1))) {
    goto _618;
  } else {
    _610__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _619;
  }

_618:
  _608 = *_603;
  if ((((_608 == ((uint8_t)0))&1))) {
    goto _615;
  } else {
    _610__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _619;
  }

_615:
  _609 = (&_604[((int32_t)1)]);
  if ((((((uint32_t)_609) < ((uint32_t)_601))&1))) {
    _604__PHI_TEMPORARY = _609;   /* for PHI node */
    goto _614;
  } else {
    _610__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _619;
  }

  } while (1); /* end of syntactic loop '' */
_619:
  _610 = _610__PHI_TEMPORARY;
  _611__PHI_TEMPORARY = _610;   /* for PHI node */
  goto _612;

_612:
  _611 = _611__PHI_TEMPORARY;
  return _611;
}


uint8_t avctp_get_remote_vol_sync(uint8_t* _620) {
  struct l_struct_struct_OC_avctp_stack_t* _621;
  struct l_struct_struct_OC_avctp* _622;
  uint8_t _623;
  uint8_t _624;
  uint8_t _625;
  uint8_t _625__PHI_TEMPORARY;

  _621 = acp_stack;
  if ((((_621 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _625__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _626;
  } else {
    goto _627;
  }

_627:
  _622 =  /*tail*/ __avctp_conn_for_addr(_620);
  if ((((_622 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _625__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _626;
  } else {
    goto _628;
  }

_628:
  _623 = *((&_622->field5.field10.array[((int32_t)13)].field0));
  _624 = llvm_and_u8((llvm_lshr_u8(_623, 1)), 1);
  _625__PHI_TEMPORARY = _624;   /* for PHI node */
  goto _626;

_626:
  _625 = _625__PHI_TEMPORARY;
  return _625;
}


uint32_t get_pp_key_statue(uint8_t* _629) {
  struct l_struct_struct_OC_avctp_stack_t* _630;
  struct l_struct_struct_OC_avctp* _631;
  uint32_t _632;
  uint32_t _633;
  uint32_t _634;
  uint32_t _634__PHI_TEMPORARY;

  _630 = acp_stack;
  if ((((_630 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _634__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _635;
  } else {
    goto _636;
  }

_636:
  _631 =  /*tail*/ __avctp_conn_for_addr(_629);
  if ((((_631 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _634__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _635;
  } else {
    goto _637;
  }

_637:
  _632 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_631->field5.field6))))))&16777215);
  _633 = ((uint32_t)(uint32_t)((((((llvm_lshr_u24(_632, 14))&16777215)) & 1)&16777215)));
  _634__PHI_TEMPORARY = _633;   /* for PHI node */
  goto _635;

_635:
  _634 = _634__PHI_TEMPORARY;
  return _634;
}


static uint32_t avctp_cmd_try_send_no_resend(struct l_struct_struct_OC_avctp* _638, uint8_t* _639) {
  uint8_t* _640;
  uint8_t _641;
  uint16_t* _642;
  uint16_t _643;
  uint32_t _644;
  uint8_t _645;
  uint16_t _646;
  uint32_t _647;
  uint32_t _648;
  uint32_t _649;
  uint32_t _649__PHI_TEMPORARY;

  if ((((_638 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _649__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _650;
  } else {
    goto _651;
  }

_651:
  _640 = (&_638->field5.field8);
  _641 = *_640;
  if ((((_641 == ((uint8_t)0))&1))) {
    _649__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _650;
  } else {
    goto _652;
  }

_652:
  _642 = (&_638->field1);
  _643 = *_642;
  _644 =  /*tail*/ l2cap_send_internal(_643, _639, (((uint16_t)(uint8_t)_641)), 0);
  _645 = profile_debug_enable;
  if ((((_644 == 0u)&1))) {
    goto _653;
  } else {
    goto _654;
  }

_654:
  if (((((llvm_and_u8(_645, 4)) == ((uint8_t)0))&1))) {
    _649__PHI_TEMPORARY = -1002;   /* for PHI node */
    goto _650;
  } else {
    goto _655;
  }

_655:
  _646 = *_642;
  _647 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), -1002, (((uint32_t)(uint16_t)_646)));
  _649__PHI_TEMPORARY = -1002;   /* for PHI node */
  goto _650;

_653:
  if (((((llvm_and_u8(_645, 1)) == ((uint8_t)0))&1))) {
    goto _656;
  } else {
    goto _657;
  }

_657:
  _648 =  /*tail*/ puts(((&str_OC_14.array[((int32_t)0)])));
  goto _656;

_656:
  *_640 = 0;
  _649__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _650;

_650:
  _649 = _649__PHI_TEMPORARY;
  return _649;
}


static struct l_struct_struct_OC_avctp* __create_avctp_conn(uint8_t* _658) {
  struct l_struct_struct_OC_avctp_stack_t* _659;
  struct l_struct_struct_OC_avctp* _660;
  struct l_struct_struct_OC_avctp* _661;
  struct l_struct_struct_OC_avctp* _662;
  struct l_struct_struct_OC_avctp* _662__PHI_TEMPORARY;
  uint32_t* _663;
  uint32_t _664;
  uint8_t* _665;
  uint8_t* _666;
  uint8_t* _667;
  struct l_struct_struct_OC_user_interface_handler* _668;
  l_fptr_4* _669;
  uint8_t _670;
  uint8_t _671;
  uint32_t _672;
  uint8_t _673;
  uint8_t* _674;
  uint8_t _675;
  uint8_t* _676;
  uint8_t _677;
  struct l_struct_struct_OC_control_pdu_handler* _678;
  struct l_struct_struct_OC_respone_pdu_handler* _679;
  struct l_struct_struct_OC_avctp* _680;
  struct l_struct_struct_OC_avctp* _681;
  struct l_struct_struct_OC_avctp* _681__PHI_TEMPORARY;

  _659 = acp_stack;
  _660 = (&_659->field3.array[((int32_t)0)]);
  _661 = (&_659->field3.array[((int32_t)1)]);
  _662__PHI_TEMPORARY = _660;   /* for PHI node */
  goto _682;

  do {     /* Syntactic loop '' to make GCC happy */
_682:
  _662 = _662__PHI_TEMPORARY;
  _663 = ((uint32_t*)((&_662->field5.field6)));
  _664 = ((__UNALIGNED_LOAD__(uint32_t, 1, _663))&16777215);
  if ((((((int16_t)(((uint16_t)_664))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _683;
  } else {
    goto _684;
  }

_683:
  _680 = (&_662[((int32_t)1)]);
  if ((((((uint32_t)_680) < ((uint32_t)_661))&1))) {
    _662__PHI_TEMPORARY = _680;   /* for PHI node */
    goto _682;
  } else {
    goto _685;
  }

  } while (1); /* end of syntactic loop '' */
_684:
  _665 = (&_662->field0.array[((int32_t)0)]);
  _666 = memset(_665, 0, 64);
  __UNALIGNED_LOAD__(uint32_t, 1, _663) = ((((uint32_t)32768)) & 16777215);
  *((&_662->field5.field1)) = 0;
  *((&_662->field5.field2)) = 0;
  _667 = memcpy(_665, _658, 6);
  _668 = user_interface;
  _669 = *((&_668->field7));
  if ((((_669 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _686;
  } else {
    goto _687;
  }

_687:
  _670 =  /*tail*/ avrcp_volume_interface(_665, -1);
  *((&_662->field5.field7)) = _670;
  _671 = l2cap_debug_enable;
  if ((((((int8_t)_671) < ((int8_t)((uint8_t)0)))&1))) {
    goto _688;
  } else {
    goto _686;
  }

_688:
  _672 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint8_t)_670)));
  goto _686;

_686:
  _673 =  /*tail*/ ((l_fptr_5*)(void*)is_support_vol_sync)();
  _674 = (&_662->field5.field10.array[((int32_t)(llvm_select_u32((((_673 == ((uint8_t)0))&1)), 6, 13)))].field0);
  _675 = *_674;
  *_674 = (llvm_or_u8(_675, 1));
  _676 = (&_662->field5.field10.array[((int32_t)(llvm_select_u32((((_673 == ((uint8_t)0))&1)), 12, 6)))].field0);
  _677 = *_676;
  *_676 = (llvm_or_u8(_677, 1));
  _678 =  /*tail*/ ((l_fptr_6*)(void*)get_arp_control_pdu_handlers)();
  *((&_662->field3)) = _678;
  _679 =  /*tail*/ ((l_fptr_7*)(void*)get_arp_deal_respone_handlers)();
  *((&_662->field4)) = _679;
  _681__PHI_TEMPORARY = _662;   /* for PHI node */
  goto _689;

_685:
  _681__PHI_TEMPORARY = ((struct l_struct_struct_OC_avctp*)/*NULL*/0);   /* for PHI node */
  goto _689;

_689:
  _681 = _681__PHI_TEMPORARY;
  return _681;
}


static void __free_avctp_conn(struct l_struct_struct_OC_avctp* _690, uint8_t _691) {
  struct l_struct_struct_OC_user_interface_handler* _692;
  l_fptr_8* _693;
  uint8_t* _694;
  uint8_t _695;
  uint32_t _696;
  uint8_t _697;
  uint32_t _698;
  uint8_t _699;
  uint8_t _700;
  uint8_t _700__PHI_TEMPORARY;
  uint8_t _701;
  struct l_struct_struct_OC_user_interface_handler* _702;
  struct l_struct_struct_OC_user_interface_handler* _703;
  struct l_struct_struct_OC_user_interface_handler* _703__PHI_TEMPORARY;
  l_fptr_9* _704;
  struct l_struct_struct_OC_user_interface_handler* _705;
  struct l_struct_struct_OC_user_interface_handler* _706;
  struct l_struct_struct_OC_user_interface_handler* _706__PHI_TEMPORARY;
  l_fptr_10* _707;
  uint8_t* _708;
  uint32_t* _709;
  uint32_t _710;
  uint8_t* _711;

  if ((((_690 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _712;
  } else {
    goto _713;
  }

_713:
  _692 = user_interface;
  _693 = *((&_692->field6));
  if ((((_693 == ((l_fptr_8*)/*NULL*/0))&1))) {
    _703__PHI_TEMPORARY = _692;   /* for PHI node */
    goto _714;
  } else {
    goto _715;
  }

_715:
  _694 = (&_690->field5.field7);
  _695 = *_694;
  _696 = ((uint32_t)(uint8_t)_695);
  if ((((_695 == ((uint8_t)-1))&1))) {
    _703__PHI_TEMPORARY = _692;   /* for PHI node */
    goto _714;
  } else {
    goto _716;
  }

_716:
  _697 = l2cap_debug_enable;
  if ((((((int8_t)_697) < ((int8_t)((uint8_t)0)))&1))) {
    goto _717;
  } else {
    _700__PHI_TEMPORARY = _695;   /* for PHI node */
    goto _718;
  }

_717:
  _698 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])), _696);
  _699 = *_694;
  _700__PHI_TEMPORARY = _699;   /* for PHI node */
  goto _718;

_718:
  _700 = _700__PHI_TEMPORARY;
  _701 =  /*tail*/ avrcp_volume_interface(((&_690->field0.array[((int32_t)0)])), _700);
  _702 = user_interface;
  _703__PHI_TEMPORARY = _702;   /* for PHI node */
  goto _714;

_714:
  _703 = _703__PHI_TEMPORARY;
  _704 = *((&_703->field0));
  if ((((_704 == ((l_fptr_9*)/*NULL*/0))&1))) {
    _706__PHI_TEMPORARY = _703;   /* for PHI node */
    goto _719;
  } else {
    goto _720;
  }

_720:
   /*tail*/ _704(((&_690->field0.array[((int32_t)0)])), 16, 0);
  _705 = user_interface;
  _706__PHI_TEMPORARY = _705;   /* for PHI node */
  goto _719;

_719:
  _706 = _706__PHI_TEMPORARY;
  _707 = *((&_706->field5));
  _708 = (&_690->field0.array[((int32_t)0)]);
  if ((((_707 == ((l_fptr_10*)/*NULL*/0))&1))) {
    goto _721;
  } else {
    goto _722;
  }

_722:
   /*tail*/ _707(_708, 0, 8, _691);
  goto _721;

_721:
  _709 = ((uint32_t*)((&_690->field5.field6)));
  _710 = ((__UNALIGNED_LOAD__(uint32_t, 1, _709))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _709) = (((((_710 & -32769)&16777215))) & 16777215);
  avctp_run_loop_busy = ((0) & 1);
  _711 = memset(_708, 0, 64);
   /*tail*/ remove_avctp_timer();
  goto _712;

_712:
  return;
}


static uint32_t avctp_suspend(void) {
  struct l_struct_struct_OC_avctp_stack_t* _723;
  struct l_struct_struct_OC_avctp* _724;
  struct l_struct_struct_OC_avctp_stack_t* _725;
  struct l_struct_struct_OC_avctp_stack_t* _725__PHI_TEMPORARY;
  struct l_struct_struct_OC_avctp* _726;
  struct l_struct_struct_OC_avctp* _726__PHI_TEMPORARY;
  uint32_t _727;
  uint32_t _728;
  struct l_struct_struct_OC_avctp_stack_t* _729;
  struct l_struct_struct_OC_avctp_stack_t* _730;
  struct l_struct_struct_OC_avctp_stack_t* _730__PHI_TEMPORARY;
  struct l_struct_struct_OC_avctp* _731;

  _723 = acp_stack;
  if ((((_723 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    goto _732;
  } else {
    goto _733;
  }

_733:
  _724 = (&_723->field3.array[((int32_t)0)]);
  _725__PHI_TEMPORARY = _723;   /* for PHI node */
  _726__PHI_TEMPORARY = _724;   /* for PHI node */
  goto _734;

  do {     /* Syntactic loop '' to make GCC happy */
_734:
  _725 = _725__PHI_TEMPORARY;
  _726 = _726__PHI_TEMPORARY;
  _727 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_726->field5.field6))))))&16777215);
  if ((((((((((_727 & 30720)&16777215)) != ((uint32_t)18432))&1)) | (((((int16_t)(((uint16_t)_727))) > ((int16_t)((uint16_t)-1)))&1)))&1))) {
    _730__PHI_TEMPORARY = _725;   /* for PHI node */
    goto _735;
  } else {
    goto _736;
  }

_736:
  _728 =  /*tail*/ avctp_try_send(((&_726->field0.array[((int32_t)0)])), 70, /*UNDEF*/0);
  _729 = acp_stack;
  _730__PHI_TEMPORARY = _729;   /* for PHI node */
  goto _735;

_735:
  _730 = _730__PHI_TEMPORARY;
  _731 = (&_726[((int32_t)1)]);
  if ((((((uint32_t)_731) < ((uint32_t)((&_730->field3.array[((int32_t)1)]))))&1))) {
    _725__PHI_TEMPORARY = _730;   /* for PHI node */
    _726__PHI_TEMPORARY = _731;   /* for PHI node */
    goto _734;
  } else {
    goto _737;
  }

  } while (1); /* end of syntactic loop '' */
_737:
  goto _732;

_732:
  return 0;
}


static uint32_t avctp_resume(void) {
  return 0;
}


static uint32_t avctp_release(void) {
  struct l_struct_struct_OC_avctp_stack_t* _738;
  struct l_struct_struct_OC_avctp* _739;
  struct l_struct_struct_OC_avctp* _740;
  struct l_struct_struct_OC_avctp* _741;
  struct l_struct_struct_OC_avctp* _741__PHI_TEMPORARY;
  uint32_t _742;
  bool _743;
  struct l_struct_struct_OC_avctp* _744;
  uint32_t _745;
  struct l_struct_struct_OC_avctp_stack_t* _746;
  uint32_t _747;
  uint32_t _747__PHI_TEMPORARY;

  _738 = acp_stack;
  if ((((_738 == ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0))&1))) {
    _747__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _748;
  } else {
    goto _749;
  }

_749:
  _739 = (&_738->field3.array[((int32_t)1)]);
  _740 = (&_738->field3.array[((int32_t)0)]);
  _741__PHI_TEMPORARY = _740;   /* for PHI node */
  goto _750;

  do {     /* Syntactic loop '' to make GCC happy */
_750:
  _741 = _741__PHI_TEMPORARY;
  _742 = ((__UNALIGNED_LOAD__(uint32_t, 1, (((uint32_t*)((&_741->field5.field6))))))&16777215);
  if ((((((int16_t)(((uint16_t)_742))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _751;
  } else {
    goto _752;
  }

_752:
  _743 = ((avctp_run_loop_busy)&1);
  _744 = (&_741[((int32_t)1)]);
  if (_743) {
    goto _751;
  } else {
    goto _753;
  }

_753:
  if ((((((uint32_t)_744) < ((uint32_t)_739))&1))) {
    _741__PHI_TEMPORARY = _744;   /* for PHI node */
    goto _750;
  } else {
    goto _754;
  }

  } while (1); /* end of syntactic loop '' */
_754:
  _745 =  /*tail*/ puts(((&_OC_str_OC_10.array[((int32_t)0)])));
  _746 = acp_stack;
   /*tail*/ stack_run_loop_remove(((&_746->field4)));
  acp_stack = ((struct l_struct_struct_OC_avctp_stack_t*)/*NULL*/0);
  avctp_run_loop_busy = ((0) & 1);
  _747__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _748;

_751:
  _747__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _748;

_748:
  _747 = _747__PHI_TEMPORARY;
  return _747;
}


static void avctp_channel_open(uint8_t _755, uint16_t _756, uint8_t* _757, uint8_t _758) {
  struct l_array_6_uint8_t _759;    /* Address-exposed local */
  uint8_t* _760;
  struct l_struct_struct_OC_avctp* _761;
  struct l_struct_struct_OC_avctp* _762;
  struct l_struct_struct_OC_avctp* _763;
  struct l_struct_struct_OC_avctp* _763__PHI_TEMPORARY;
  uint32_t* _764;
  uint32_t _765;
  struct l_struct_struct_OC_user_interface_handler* _766;
  l_fptr_10* _767;
  uint32_t* _768;
  uint32_t _769;
  struct l_struct_struct_OC__stack_config* _770;
  uint32_t _771;
  uint32_t _772;

  _760 = (&_759.array[((int32_t)0)]);
  bt_flip_addr(_760, ((&_757[((int32_t)3)])));
  _761 = __avctp_conn_for_addr(_760);
  if ((((_761 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _773;
  } else {
    goto _774;
  }

_773:
  if ((((_755 == ((uint8_t)0))&1))) {
    goto _775;
  } else {
    goto _776;
  }

_775:
  _762 = __create_avctp_conn(_760);
  if ((((_762 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    goto _776;
  } else {
    _763__PHI_TEMPORARY = _762;   /* for PHI node */
    goto _777;
  }

_774:
  if ((((_755 == ((uint8_t)0))&1))) {
    _763__PHI_TEMPORARY = _761;   /* for PHI node */
    goto _777;
  } else {
    goto _778;
  }

_778:
  __free_avctp_conn(_761, _758);
  goto _776;

_777:
  _763 = _763__PHI_TEMPORARY;
  *((&_763->field1)) = _756;
  _764 = ((uint32_t*)((&_763->field5.field6)));
  _765 = ((__UNALIGNED_LOAD__(uint32_t, 1, _764))&16777215);
  __UNALIGNED_LOAD__(uint32_t, 1, _764) = ((((((((_765 & -113)&16777215)) | 32)&16777215))) & 16777215);
  _766 = user_interface;
  _767 = *((&_766->field5));
  if ((((_767 == ((l_fptr_10*)/*NULL*/0))&1))) {
    goto _779;
  } else {
    goto _780;
  }

_780:
  _767(((&_763->field0.array[((int32_t)0)])), 1, 8, _758);
  goto _779;

_779:
  remove_avctp_timer();
  _768 = (&_763->field5.field0);
  _769 = *_768;
  *_768 = (_769 | 1);
  ((l_fptr_1*)(void*)stack_run_loop_resume)();
  _770 = user_stack_configs;
  _771 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_770->field9)));
  if (((((_771 & 2097152) == 0u)&1))) {
    goto _776;
  } else {
    goto _781;
  }

_781:
  _772 = auto_start_music_player(_760, 0);
  goto _776;

_776:
  return;
}


static uint32_t avctp_passthrough_release(struct l_struct_struct_OC_avctp* _782, uint8_t _783) {
  struct l_array_2_uint8_t _784;    /* Address-exposed local */
  uint8_t* _785;
  uint32_t* _786;
  uint32_t _787;
  uint8_t _788;
  uint32_t _789;
  uint32_t _790;
  uint32_t _790__PHI_TEMPORARY;

  _785 = (&_784.array[((int32_t)0)]);
  if ((((_782 == ((struct l_struct_struct_OC_avctp*)/*NULL*/0))&1))) {
    _790__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _791;
  } else {
    goto _792;
  }

_792:
  _786 = ((uint32_t*)((&_782->field5.field6)));
  _787 = ((__UNALIGNED_LOAD__(uint32_t, 1, _786))&16777215);
  _788 = llvm_and_u8((llvm_add_u8((((uint8_t)_787)), 1)), 15);
  __UNALIGNED_LOAD__(uint32_t, 1, _786) = ((((((((((uint32_t)(uint8_t)_788))&16777215)) | (((_787 & -16)&16777215)))&16777215))) & 16777215);
  *_785 = (llvm_or_u8(_783, 128u));
  *((&_784.array[((int32_t)1)])) = 0;
  _789 = avctp_send(_782, _788, 0, 0, 9, 124u, _785, 2);
  _790__PHI_TEMPORARY = _789;   /* for PHI node */
  goto _791;

_791:
  _790 = _790__PHI_TEMPORARY;
  return _790;
}

