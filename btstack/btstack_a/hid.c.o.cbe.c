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
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC_hid_conn;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_run_loop;
struct l_struct_struct_OC_hid_keyboard_cmd;
struct l_struct_struct_OC__HID_AC_CMD;
struct l_struct_struct_OC_hid_core_data_t;
struct l_struct_struct_OC_hid_handl;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_hid_mouse_cmd;

/* Function definitions */
typedef uint32_t l_fptr_11(void);

typedef void l_fptr_13(uint32_t);

typedef uint32_t l_fptr_6(int, ...);

typedef uint32_t l_fptr_3(void);

typedef void l_fptr_1(uint8_t*, uint32_t, uint16_t);

typedef void l_fptr_9(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_2(void);

typedef void l_fptr_4(uint32_t, uint8_t*, uint32_t);

typedef void l_fptr_7(struct l_struct_struct_OC_run_loop*);

typedef void l_fptr_10(uint8_t*, uint32_t);

typedef void l_fptr_14(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint8_t l_fptr_18(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_17(uint8_t);

typedef void l_fptr_5(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_8(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_12(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_16(void);

typedef uint32_t l_fptr_15(uint8_t*, uint8_t, uint8_t);


/* Types Definitions */
struct l_struct_struct_OC_bt_sleep {
  l_fptr_6* field0;
  l_fptr_6* field1;
  l_fptr_6* field2;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
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
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_run_loop {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_7* field1;
  uint8_t* field2;
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
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_8* field0;
  l_fptr_9* field1;
  l_fptr_10* field2;
  l_fptr_11* field3;
  l_fptr_12* field4;
  l_fptr_5* field5;
  l_fptr_11* field6;
  l_fptr_13* field7;
  l_fptr_14* field8;
  l_fptr_15* field9;
  l_fptr_16* field10;
  l_fptr_17* field11;
  l_fptr_18* field12;
  l_fptr_12* field13;
  l_fptr_11* field14;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_112_uint8_t {
  uint8_t array[112];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_59_uint8_t {
  uint8_t array[59];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_struct_struct_OC_hid_mouse_cmd {
  uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_2_uint16_t {
  uint16_t array[2];
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern uint8_t profile_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern uint32_t config_asser;

/* Function Declarations */
void hid_init(struct l_struct_struct_OC_hid_handl*, uint8_t*) __ATTRIBUTELIST__((always_inline, nothrow)) __HIDDEN__;
void l2cap_register_service_internal(uint8_t*, l_fptr_12*, uint16_t, uint16_t);
static void __hid_ctrl_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void __hid_interrupt_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void stack_run_loop_register(struct l_struct_struct_OC_run_loop*, l_fptr_7*, uint8_t*);
static void __hid_run_loop(struct l_struct_struct_OC_run_loop*) __ATTRIBUTELIST__((nothrow));
uint32_t hid_send_cmd_ioctrl(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void hid_android_shutter(uint8_t*) __ATTRIBUTELIST__((nothrow));
static void hid_vol_ctrl(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
void stack_run_loop_resume(int, ...);
uint32_t hid_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hid_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hid_diy_data_try_send(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void local_irq_disable(int, ...);
uint32_t lmp_private_get_tx_remain_buffer(int, ...);
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void local_irq_enable(int, ...);
void hid_diy_regiest_callback(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hid_send_step_state(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
static uint32_t hid_suspend(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t hid_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t hid_release(void) __ATTRIBUTELIST__((nothrow));
void stack_run_loop_remove(struct l_struct_struct_OC_run_loop*);
static void hid_ctrl_try_send(uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t);
static void hid_diy_state_sync(uint32_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static struct l_struct_struct_OC_hid_conn* __hid_conn_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
static void hid_incoming_connection(uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void hid_connection_open(uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static void hid_connection_close(uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow));
static void hid_monitor_connection_open(uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
void bt_flip_addr(uint8_t*, uint8_t*);
static struct l_struct_struct_OC_hid_conn* __create_hid_conn(uint8_t*) __ATTRIBUTELIST__((nothrow));
void l2cap_accept_connection_internal(uint16_t);
void l2cap_decline_connection_internal(uint16_t, uint8_t);
static void __free_hid_conn(struct l_struct_struct_OC_hid_conn*) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_12*, uint8_t*, uint16_t, uint16_t);
void l2cap_disconnect_internal(uint16_t, uint8_t);
void p33_soft_reset(void);
static void hid_inter_try_send(uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_bt_sleep bt_suspend_hid_resumehid_release __HIDDEN__ = { ((l_fptr_6*)hid_suspend), ((l_fptr_6*)hid_resume), ((l_fptr_6*)hid_release) };
static struct l_struct_struct_OC_hid_handl* hid;
static bool hid_run_loop_buy;
static uint8_t diy_data_len;
static struct l_array_30_uint8_t diy_data_buf;
static l_fptr_4* hid_msg_callback;
static l_fptr_1* hid_interrupt_callback;
static struct l_array_40_uint8_t _OC_str_OC_5 = { "<BT-log> :hid ctrl CONNECTION open %x\n\n" };
static struct l_array_44_uint8_t _OC_str_OC_8 = { "<BT-log> :INTERRUPT_TYPE income  1111  %x\n\n" };
static struct l_array_44_uint8_t _OC_str_OC_9 = { "<BT-log> :INTERRUPT_TYPE income  2222  %x\n\n" };
static struct l_array_38_uint8_t _OC_str_OC_10 = { "<BT-log> :hid_channel_open %d,%x,%x\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_11 = { "file:%s, line:%d" };
static struct l_array_112_uint8_t _OC_str_OC_12 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hid.c" };
static struct l_array_28_uint8_t _OC_str_OC_13 = { "ASSERT-FAILD: conn != NULL " };
static struct l_array_59_uint8_t _OC_str_OC_14 = { "<BT-log> :get other refuse----accept pending channel  %x\n\n" };
static struct l_array_39_uint8_t _OC_str_OC_15 = { "<BT-log> :refuse pending channel  %x\n\n" };
static struct l_array_39_uint8_t _OC_str_OC_17 = { "<BT-log> :hid int CONNECTION open %x\n\n" };
static struct l_struct_struct_OC_hid_mouse_cmd ios_key_down = { 161u, 3, 0, 2, 0 };
static struct l_struct_struct_OC_hid_mouse_cmd ios_key_up = { 161u, 3, 0, 0, 0 };
static struct l_array_31_uint8_t str = { "<BT-log> :hid cmd_buf busy!!!\n" };
static struct l_array_31_uint8_t str_OC_20 = { "<BT-log> :over hid cmd_buf!!!\n" };
static struct l_array_32_uint8_t str_OC_21 = { "<BT-log> :hid data_buf busy!!!\n" };
static struct l_array_32_uint8_t str_OC_22 = { "<BT-log> :over hid data_buf!!!\n" };
static struct l_array_38_uint8_t str_OC_23 = { "<BT-log> :hid ctrl CONNECTION close \n" };
static struct l_array_41_uint8_t str_OC_24 = { "<BT-log> :hid ctrl INCOMING_CONNECTION \n" };
static struct l_array_26_uint8_t str_OC_25 = { "[pro-info] :get hid data\n" };
static struct l_array_37_uint8_t str_OC_26 = { "<BT-log> :hid int CONNECTION close \n" };
static struct l_array_42_uint8_t str_OC_27 = { "<BT-log> :hid inter INCOMING_CONNECTION \n" };
static struct l_array_27_uint8_t str_OC_28 = { "[pro-info] :hid_send_succ\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
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
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint8_t llvm_or_u8(uint8_t a, uint8_t b) {
  uint8_t r = a | b;
  return r;
}


/* Function Bodies */

void hid_init(struct l_struct_struct_OC_hid_handl* _1, uint8_t* _2) {
  uint8_t* _3;
  struct l_struct_struct_OC_hid_handl* _4;

  hid = _1;
  _3 = memset(((&_1->field0.field0.array[((int32_t)0)].field0.array[((int32_t)0)])), 0, 52);
  hid_run_loop_buy = ((0) & 1);
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), __hid_ctrl_packet_handler, 17, -1);
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), __hid_interrupt_packet_handler, 19, -1);
  _4 = hid;
   /*tail*/ stack_run_loop_register(((&_4->field1)), __hid_run_loop, _2);
}


static void __hid_ctrl_packet_handler(uint8_t _5, uint16_t _6, uint8_t* _7, uint16_t _8) {
  uint8_t _9;
  l_fptr_1* _10;
  struct l_struct_struct_OC_hid_handl* _11;
  struct l_struct_struct_OC_hid_conn* _12;
  struct l_struct_struct_OC_hid_conn* _13;
  struct l_struct_struct_OC_hid_conn* _14;
  struct l_struct_struct_OC_hid_conn* _14__PHI_TEMPORARY;
  uint16_t _15;
  uint8_t* _16;
  uint8_t _17;
  struct l_struct_struct_OC_hid_conn* _18;
  uint8_t _19;
  uint32_t _20;
  uint8_t _21;
  uint32_t _22;
  uint8_t _23;
  uint32_t _24;
  uint8_t _25;
  uint8_t _26;
  uint32_t _27;
  uint8_t _28;
  uint32_t _29;

  switch (_5) {
  default:
    goto _30;
  case ((uint8_t)4):
    goto _31;
  case ((uint8_t)6):
    goto _32;
  }

_31:
  _9 = *_7;
  switch (_9) {
  default:
    goto _30;
  case ((uint8_t)116):
    goto _33;
  case ((uint8_t)114):
    goto _34;
  case ((uint8_t)112):
    goto _35;
  case ((uint8_t)121):
    goto _36;
  case ((uint8_t)113):
    goto _37;
  }

_33:
   /*tail*/ hid_ctrl_try_send(_6);
  goto _30;

_32:
  _10 = hid_interrupt_callback;
  if ((((_10 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _38;
  } else {
    goto _39;
  }

_39:
   /*tail*/ _10(_7, (((uint32_t)(uint16_t)_8)), _6);
  goto _38;

_38:
  _11 = hid;
  _12 = (&_11->field0.field0.array[((int32_t)0)]);
  _13 = (&_11->field0.field0.array[((int32_t)1)]);
  _14__PHI_TEMPORARY = _12;   /* for PHI node */
  goto _40;

  do {     /* Syntactic loop '' to make GCC happy */
_40:
  _14 = _14__PHI_TEMPORARY;
  _15 = *((&_14->field5));
  if ((((_15 == _6)&1))) {
    goto _41;
  } else {
    goto _42;
  }

_41:
  _16 = (&_14->field4);
  _17 = *_16;
  if (((((llvm_and_u8(_17, 1)) == ((uint8_t)0))&1))) {
    goto _42;
  } else {
    goto _43;
  }

_42:
  _18 = (&_14[((int32_t)1)]);
  if ((((((uint32_t)_18) < ((uint32_t)_13))&1))) {
    _14__PHI_TEMPORARY = _18;   /* for PHI node */
    goto _40;
  } else {
    goto _44;
  }

  } while (1); /* end of syntactic loop '' */
_43:
  _19 = *_7;
  _20 = ((uint32_t)(uint8_t)_19);
  switch ((((((uint32_t)(llvm_lshr_u32((llvm_add_u32((_20 & 240), -16)), 4))))&268435455))) {
  default:
    goto _45;
  case ((uint32_t)7):
    goto _46;
  case ((uint32_t)8):
    goto _46;
  case ((uint32_t)5):
    goto _46;
  case ((uint32_t)6):
    goto _46;
  case ((uint32_t)0):
    goto _47;
  case ((uint32_t)9):
    goto _48;
  case ((uint32_t)10):
    goto _48;
  }

_46:
  *((&_14->field0.array[((int32_t)0)])) = 0;
  *_16 = (llvm_or_u8((llvm_and_u8(_17, 31)), 32));
   /*tail*/ hid_ctrl_try_send(_6);
  goto _30;

_47:
  if (((((_20 & 15) == 5u)&1))) {
    goto _49;
  } else {
    goto _30;
  }

_49:
  *((&_14->field0.array[((int32_t)0)])) = 21;
  *_16 = (llvm_or_u8((llvm_and_u8(_17, 31)), 32));
   /*tail*/ hid_ctrl_try_send(_6);
  goto _30;

_48:
  _21 = profile_debug_enable;
  if (((((llvm_and_u8(_21, 1)) == ((uint8_t)0))&1))) {
    goto _30;
  } else {
    goto _50;
  }

_50:
  _22 =  /*tail*/ puts(((&str_OC_25.array[((int32_t)0)])));
  goto _30;

_45:
  *((&_14->field0.array[((int32_t)0)])) = 3;
  *_16 = (llvm_or_u8((llvm_and_u8(_17, 31)), 32));
   /*tail*/ hid_ctrl_try_send(_6);
  goto _30;

_34:
  _23 = l2cap_debug_enable;
  if ((((((int8_t)_23) < ((int8_t)((uint8_t)0)))&1))) {
    goto _51;
  } else {
    goto _52;
  }

_51:
  _24 =  /*tail*/ puts(((&str_OC_24.array[((int32_t)0)])));
  goto _52;

_52:
   /*tail*/ hid_incoming_connection(_6, _7, 1);
  goto _30;

_35:
  _25 = l2cap_debug_enable;
  if ((((((int8_t)_25) < ((int8_t)((uint8_t)0)))&1))) {
    goto _53;
  } else {
    goto _54;
  }

_53:
  _26 = *((&_7[((int32_t)2)]));
  _27 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint8_t)_26)));
  goto _54;

_54:
   /*tail*/ hid_connection_open(_6, _7, 1);
  goto _30;

_37:
  _28 = l2cap_debug_enable;
  if ((((((int8_t)_28) < ((int8_t)((uint8_t)0)))&1))) {
    goto _55;
  } else {
    goto _56;
  }

_55:
  _29 =  /*tail*/ puts(((&str_OC_23.array[((int32_t)0)])));
  goto _56;

_56:
   /*tail*/ hid_connection_close(_6, 1);
  goto _30;

_36:
   /*tail*/ hid_monitor_connection_open(_6, _7, 1);
  goto _30;

_44:
  goto _30;

_30:
  return;
}


static void __hid_interrupt_packet_handler(uint8_t _57, uint16_t _58, uint8_t* _59, uint16_t _60) {
  uint8_t _61;
  l_fptr_1* _62;
  uint8_t _63;
  uint32_t _64;
  uint8_t _65;
  uint8_t _66;
  uint32_t _67;
  uint8_t _68;
  uint32_t _69;

  switch (_57) {
  default:
    goto _70;
  case ((uint8_t)4):
    goto _71;
  case ((uint8_t)6):
    goto _72;
  }

_71:
  _61 = *_59;
  switch (_61) {
  default:
    goto _70;
  case ((uint8_t)113):
    goto _73;
  case ((uint8_t)114):
    goto _74;
  case ((uint8_t)112):
    goto _75;
  case ((uint8_t)121):
    goto _76;
  }

_72:
  _62 = hid_interrupt_callback;
  if ((((_62 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _70;
  } else {
    goto _77;
  }

_77:
   /*tail*/ _62(_59, (((uint32_t)(uint16_t)_60)), _58);
  goto _70;

_74:
  _63 = l2cap_debug_enable;
  if ((((((int8_t)_63) < ((int8_t)((uint8_t)0)))&1))) {
    goto _78;
  } else {
    goto _79;
  }

_78:
  _64 =  /*tail*/ puts(((&str_OC_27.array[((int32_t)0)])));
  goto _79;

_79:
   /*tail*/ hid_incoming_connection(_58, _59, 2);
  goto _70;

_75:
  _65 = l2cap_debug_enable;
  if ((((((int8_t)_65) < ((int8_t)((uint8_t)0)))&1))) {
    goto _80;
  } else {
    goto _81;
  }

_80:
  _66 = *((&_59[((int32_t)2)]));
  _67 =  /*tail*/ printf(((&_OC_str_OC_17.array[((int32_t)0)])), (((uint32_t)(uint8_t)_66)));
  goto _81;

_81:
   /*tail*/ hid_connection_open(_58, _59, 2);
  goto _70;

_73:
  _68 = l2cap_debug_enable;
  if ((((((int8_t)_68) < ((int8_t)((uint8_t)0)))&1))) {
    goto _82;
  } else {
    goto _83;
  }

_82:
  _69 =  /*tail*/ puts(((&str_OC_26.array[((int32_t)0)])));
  goto _83;

_83:
   /*tail*/ hid_connection_close(_58, 2);
  goto _70;

_76:
   /*tail*/ hid_monitor_connection_open(_58, _59, 2);
  goto _70;

_70:
  return;
}


static void __hid_run_loop(struct l_struct_struct_OC_run_loop* _84) {
  struct l_struct_struct_OC_hid_handl* _85;
  struct l_struct_struct_OC_hid_handl* _86;
  struct l_struct_struct_OC_hid_conn* _87;
  struct l_struct_struct_OC_hid_handl* _88;
  struct l_struct_struct_OC_hid_handl* _88__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _89;
  struct l_struct_struct_OC_hid_conn* _89__PHI_TEMPORARY;
  uint16_t _90;
  uint8_t _91;
  struct l_struct_struct_OC_hid_conn* _92;
  struct l_struct_struct_OC_hid_handl* _93;
  struct l_struct_struct_OC_hid_handl* _93__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _94;
  struct l_struct_struct_OC_hid_conn* _94__PHI_TEMPORARY;
  uint16_t* _95;
  uint16_t _96;
  uint8_t _97;
  uint8_t* _98;
  uint8_t _99;
  uint8_t* _100;
  uint8_t* _101;
  uint8_t* _102;
  uint8_t* _103;
  uint8_t* _104;
  uint8_t* _105;
  uint8_t* _106;
  uint8_t* _107;
  uint8_t* _108;
  uint8_t* _109;
  uint8_t* _109__PHI_TEMPORARY;
  uint16_t _110;
  uint16_t _110__PHI_TEMPORARY;
  uint16_t _111;
  uint32_t _112;
  uint8_t _113;
  uint32_t _114;
  uint8_t _115;
  uint8_t* _116;
  uint8_t _117;
  uint8_t _118;
  struct l_struct_struct_OC_hid_conn* _119;
  struct l_struct_struct_OC_hid_handl* _120;
  struct l_struct_struct_OC_hid_handl* _121;
  struct l_struct_struct_OC_hid_handl* _121__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _122;

  _85 = hid;
  if ((((_85 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    goto _123;
  } else {
    goto _124;
  }

_124:
   /*tail*/ ((l_fptr_2*)(void*)local_irq_disable)();
  hid_run_loop_buy = ((1) & 1);
   /*tail*/ ((l_fptr_2*)(void*)local_irq_enable)();
  _86 = hid;
  _87 = (&_86->field0.field0.array[((int32_t)0)]);
  _88__PHI_TEMPORARY = _86;   /* for PHI node */
  _89__PHI_TEMPORARY = _87;   /* for PHI node */
  goto _125;

  do {     /* Syntactic loop '' to make GCC happy */
_125:
  _88 = _88__PHI_TEMPORARY;
  _89 = _89__PHI_TEMPORARY;
  _90 = *((&_89->field6));
  if ((((_90 == ((uint16_t)0))&1))) {
    _121__PHI_TEMPORARY = _88;   /* for PHI node */
    goto _126;
  } else {
    goto _127;
  }

_127:
  _91 = *((&_89->field4));
  if (((((llvm_and_u8(_91, 1)) == ((uint8_t)0))&1))) {
    _121__PHI_TEMPORARY = _88;   /* for PHI node */
    goto _126;
  } else {
    goto _128;
  }

_128:
  _92 = (&_88->field0.field0.array[((int32_t)0)]);
  _93__PHI_TEMPORARY = _88;   /* for PHI node */
  _94__PHI_TEMPORARY = _92;   /* for PHI node */
  goto _129;

  do {     /* Syntactic loop '' to make GCC happy */
_129:
  _93 = _93__PHI_TEMPORARY;
  _94 = _94__PHI_TEMPORARY;
  _95 = (&_94->field6);
  _96 = *_95;
  if ((((_96 == ((uint16_t)0))&1))) {
    goto _130;
  } else {
    goto _131;
  }

_131:
  _97 = *((&_94->field4));
  if (((((llvm_and_u8(_97, 1)) == ((uint8_t)0))&1))) {
    goto _130;
  } else {
    goto _132;
  }

_132:
  _98 = (&_94->field2);
  _99 = *_98;
  switch (_99) {
  default:
    goto _133;
  case ((uint8_t)1):
    goto _134;
  case ((uint8_t)4):
    goto _135;
  case ((uint8_t)7):
    goto _136;
  case ((uint8_t)10):
    goto _137;
  case ((uint8_t)16):
    goto _138;
  case ((uint8_t)19):
    goto _139;
  case ((uint8_t)2):
    goto _140;
  case ((uint8_t)5):
    goto _140;
  case ((uint8_t)8):
    goto _140;
  case ((uint8_t)11):
    goto _140;
  case ((uint8_t)17):
    goto _140;
  case ((uint8_t)20):
    goto _140;
  case ((uint8_t)65):
    goto _141;
  case ((uint8_t)66):
    goto _142;
  case ((uint8_t)-127):
    _109__PHI_TEMPORARY = ((&ios_key_down.field0));   /* for PHI node */
    _110__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _143;
  case ((uint8_t)-126):
    goto _144;
  }

_144:
  _109__PHI_TEMPORARY = ((&ios_key_up.field0));   /* for PHI node */
  _110__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _143;

_142:
  _108 = (&_93->field0.field2.field0);
  *_108 = 161u;
  __UNALIGNED_LOAD__(uint32_t, 1, ((&_93->field0.field2.field1))) = 3;
  _109__PHI_TEMPORARY = _108;   /* for PHI node */
  _110__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _143;

_141:
  _107 = (&_93->field0.field2.field0);
  *_107 = 161u;
  __UNALIGNED_LOAD__(uint32_t, 1, ((&_93->field0.field2.field1))) = 259;
  _109__PHI_TEMPORARY = _107;   /* for PHI node */
  _110__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _143;

_140:
  _106 = (&_93->field0.field1.field0);
  *_106 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 0;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _106;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_139:
  _105 = (&_93->field0.field1.field0);
  *_105 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 234;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _105;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_138:
  _104 = (&_93->field0.field1.field0);
  *_104 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 233;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _104;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_137:
  _103 = (&_93->field0.field1.field0);
  *_103 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 79;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _103;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_136:
  _102 = (&_93->field0.field1.field0);
  *_102 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 80;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _102;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_135:
  _101 = (&_93->field0.field1.field0);
  *_101 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 41;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _101;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_134:
  _100 = (&_93->field0.field1.field0);
  *_100 = 161u;
  *((&_93->field0.field1.field1)) = 2;
  *((&_93->field0.field1.field2)) = 40;
  *((&_93->field0.field1.field3)) = 0;
  _109__PHI_TEMPORARY = _100;   /* for PHI node */
  _110__PHI_TEMPORARY = 6;   /* for PHI node */
  goto _143;

_143:
  _109 = _109__PHI_TEMPORARY;
  _110 = _110__PHI_TEMPORARY;
  _111 = *_95;
  _112 =  /*tail*/ l2cap_send_internal(_111, _109, _110, 0);
  if ((((_112 == 0u)&1))) {
    goto _145;
  } else {
    goto _130;
  }

_145:
  _113 = profile_debug_enable;
  if (((((llvm_and_u8(_113, 1)) == ((uint8_t)0))&1))) {
    goto _146;
  } else {
    goto _147;
  }

_147:
  _114 =  /*tail*/ puts(((&str_OC_28.array[((int32_t)0)])));
  goto _146;

_146:
  _115 = *_98;
  *_98 = (llvm_add_u8(_115, 1));
   /*tail*/ ((l_fptr_2*)(void*)stack_run_loop_resume)();
  _116 = (&_94->field3);
  _117 = *_116;
  if ((((_117 == ((uint8_t)85))&1))) {
    goto _148;
  } else {
    goto _130;
  }

_148:
  _118 = *_98;
  if ((((_118 == ((uint8_t)3))&1))) {
    goto _149;
  } else {
    goto _130;
  }

_149:
  *_116 = 0;
  *_98 = 129u;
  goto _130;

_133:
  *_98 = 0;
   /*tail*/ hid_inter_try_send(_96);
  goto _130;

_130:
  _119 = (&_94[((int32_t)1)]);
  _120 = hid;
  if ((((((uint32_t)_119) < ((uint32_t)((&_120->field0.field0.array[((int32_t)1)]))))&1))) {
    _93__PHI_TEMPORARY = _120;   /* for PHI node */
    _94__PHI_TEMPORARY = _119;   /* for PHI node */
    goto _129;
  } else {
    goto _150;
  }

  } while (1); /* end of syntactic loop '' */
_150:
  _121__PHI_TEMPORARY = _120;   /* for PHI node */
  goto _126;

_126:
  _121 = _121__PHI_TEMPORARY;
  _122 = (&_89[((int32_t)1)]);
  if ((((((uint32_t)_122) < ((uint32_t)((&_121->field0.field0.array[((int32_t)1)]))))&1))) {
    _88__PHI_TEMPORARY = _121;   /* for PHI node */
    _89__PHI_TEMPORARY = _122;   /* for PHI node */
    goto _125;
  } else {
    goto _151;
  }

  } while (1); /* end of syntactic loop '' */
_151:
  hid_run_loop_buy = ((0) & 1);
  goto _123;

_123:
  return;
}


uint32_t hid_send_cmd_ioctrl(uint8_t* _152, uint32_t _153) {
  struct l_struct_struct_OC_hid_handl* _154;
  struct l_struct_struct_OC_hid_conn* _155;
  uint8_t* _156;
  uint8_t _157;
  struct l_struct_struct_OC_hid_conn* _158;
  uint8_t* _159;
  uint8_t _160;
  uint8_t _161;
  struct l_struct_struct_OC_hid_conn* _162;
  uint8_t* _163;
  uint8_t _164;
  struct l_struct_struct_OC_hid_conn* _165;
  uint8_t* _166;
  uint8_t _167;
  struct l_struct_struct_OC_hid_conn* _168;
  uint8_t* _169;
  uint8_t _170;
  struct l_struct_struct_OC_hid_conn* _171;
  uint8_t* _172;
  uint8_t _173;
  struct l_struct_struct_OC_hid_conn* _174;
  uint16_t _175;
  uint16_t* _176;
  uint16_t _177;
  uint16_t _178;
  struct l_struct_struct_OC_hid_conn* _179;
  struct l_struct_struct_OC_hid_conn* _180;
  uint8_t _181;
  uint16_t _182;
  uint8_t _183;
  uint8_t _184;
  uint8_t _184__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _185;
  struct l_struct_struct_OC_hid_conn* _185__PHI_TEMPORARY;
  uint8_t* _186;
  uint8_t _187;
  uint8_t* _188;
  uint8_t* _189;
  uint8_t _190;
  struct l_struct_struct_OC_hid_conn* _191;
  uint16_t _192;
  uint16_t _193;
  uint32_t _194;
  uint32_t _194__PHI_TEMPORARY;

  _154 = hid;
  if ((((_154 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    _194__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _195;
  } else {
    goto _196;
  }

_196:
  switch (_153) {
  default:
    _194__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _195;
  case 1u:
    goto _197;
  case 2u:
    goto _198;
  case 3u:
    goto _199;
  case 4u:
    goto _200;
  case 5u:
    goto _201;
  case 10u:
    goto _202;
  case 11u:
    goto _203;
  case 6u:
    goto _204;
  case 7u:
    goto _205;
  case 9u:
    goto _206;
  case 8u:
    goto _207;
  case 12u:
    goto _208;
  }

_197:
   /*tail*/ hid_android_shutter(_152);
  goto _209;

_198:
  _155 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_155 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _210;
  }

_210:
  _156 = (&_155->field2);
  _157 = *_156;
  if ((((_157 == ((uint8_t)0))&1))) {
    goto _211;
  } else {
    goto _209;
  }

_211:
  *_156 = 129u;
  goto _209;

_199:
  _158 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_158 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _212;
  }

_212:
  _159 = (&_158->field3);
  _160 = *_159;
  if ((((_160 == ((uint8_t)0))&1))) {
    goto _213;
  } else {
    goto _209;
  }

_213:
  _161 = *((&_158->field2));
  if ((((_161 == ((uint8_t)0))&1))) {
    goto _214;
  } else {
    goto _209;
  }

_214:
  *_159 = 85u;
   /*tail*/ hid_android_shutter(_152);
  goto _209;

_200:
  _162 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_162 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _215;
  }

_215:
  _163 = (&_162->field2);
  _164 = *_163;
  if ((((_164 == ((uint8_t)0))&1))) {
    goto _216;
  } else {
    goto _209;
  }

_216:
  *_163 = 65u;
  goto _209;

_201:
  _165 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_165 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _217;
  }

_217:
  _166 = (&_165->field2);
  _167 = *_166;
  if ((((_167 == ((uint8_t)0))&1))) {
    goto _218;
  } else {
    goto _209;
  }

_218:
  *_166 = 4;
  goto _209;

_202:
   /*tail*/ hid_vol_ctrl(_152, 1);
  goto _209;

_203:
   /*tail*/ hid_vol_ctrl(_152, 0);
  goto _209;

_204:
  _168 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_168 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _219;
  }

_219:
  _169 = (&_168->field2);
  _170 = *_169;
  if ((((_170 == ((uint8_t)0))&1))) {
    goto _220;
  } else {
    goto _209;
  }

_220:
  *_169 = 7;
  goto _209;

_205:
  _171 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_171 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _221;
  }

_221:
  _172 = (&_171->field2);
  _173 = *_172;
  if ((((_173 == ((uint8_t)0))&1))) {
    goto _222;
  } else {
    goto _209;
  }

_222:
  *_172 = 10;
  goto _209;

_206:
  _174 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_174 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _223;
  }

_223:
  _175 = *((&_174->field6));
  _176 = (&_174->field5);
  if ((((_175 == ((uint16_t)0))&1))) {
    goto _224;
  } else {
    goto _225;
  }

_224:
  _177 = *_176;
  if ((((_177 == ((uint16_t)0))&1))) {
    goto _209;
  } else {
    goto _225;
  }

_225:
   /*tail*/ l2cap_disconnect_internal(_175, 19);
  _178 = *_176;
   /*tail*/ l2cap_disconnect_internal(_178, 19);
  goto _209;

_207:
  _179 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_179 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _226;
  } else {
    goto _227;
  }

_226:
  _180 =  /*tail*/ __create_hid_conn(_152);
  _181 = *((&_180->field4));
  _184__PHI_TEMPORARY = _181;   /* for PHI node */
  _185__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _228;

_227:
  _182 = *((&_179->field5));
  if ((((_182 == ((uint16_t)0))&1))) {
    goto _229;
  } else {
    goto _209;
  }

_229:
  _183 = *((&_179->field4));
  if (((((llvm_and_u8(_183, 2)) == ((uint8_t)0))&1))) {
    _184__PHI_TEMPORARY = _183;   /* for PHI node */
    _185__PHI_TEMPORARY = _179;   /* for PHI node */
    goto _228;
  } else {
    goto _209;
  }

_228:
  _184 = _184__PHI_TEMPORARY;
  _185 = _185__PHI_TEMPORARY;
  _186 = (&_185->field4);
  _187 = llvm_or_u8(_184, 2);
  *_186 = _187;
  _188 = (&_185->field1.array[((int32_t)0)]);
  _189 = memcpy(_188, _152, 6);
  *_186 = (llvm_or_u8((llvm_and_u8(_187, -25)), 8));
  _190 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), __hid_ctrl_packet_handler, _188, 17, -1);
  goto _209;

_208:
  _191 =  /*tail*/ __hid_conn_for_addr(_152);
  if ((((_191 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    goto _230;
  }

_230:
  _192 = *((&_191->field6));
  if ((((_192 == ((uint16_t)0))&1))) {
    goto _231;
  } else {
    goto _232;
  }

_232:
   /*tail*/ hid_inter_try_send(_192);
  goto _231;

_231:
  _193 = *((&_191->field5));
  if ((((_193 == ((uint16_t)0))&1))) {
    goto _209;
  } else {
    goto _233;
  }

_233:
   /*tail*/ hid_ctrl_try_send(_193);
  goto _209;

_209:
   /*tail*/ ((l_fptr_2*)(void*)stack_run_loop_resume)();
  _194__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _195;

_195:
  _194 = _194__PHI_TEMPORARY;
  return _194;
}


static void hid_android_shutter(uint8_t* _234) {
  struct l_struct_struct_OC_hid_handl* _235;
  struct l_struct_struct_OC_hid_conn* _236;
  uint8_t* _237;
  uint8_t _238;

  _235 = hid;
  if ((((_235 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    goto _239;
  } else {
    goto _240;
  }

_240:
  _236 =  /*tail*/ __hid_conn_for_addr(_234);
  if ((((_236 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _239;
  } else {
    goto _241;
  }

_241:
  _237 = (&_236->field2);
  _238 = *_237;
  if ((((_238 == ((uint8_t)0))&1))) {
    goto _242;
  } else {
    goto _239;
  }

_242:
  *_237 = 1;
  goto _239;

_239:
  return;
}


static void hid_vol_ctrl(uint8_t* _243, uint8_t _244) {
  struct l_struct_struct_OC_hid_handl* _245;
  struct l_struct_struct_OC_hid_conn* _246;
  uint8_t* _247;
  uint8_t _248;

  _245 = hid;
  if ((((_245 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _250;
  }

_250:
  _246 =  /*tail*/ __hid_conn_for_addr(_243);
  if ((((_246 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _251;
  }

_251:
  _247 = (&_246->field2);
  _248 = *_247;
  if ((((_248 == ((uint8_t)0))&1))) {
    goto _252;
  } else {
    goto _249;
  }

_252:
  *_247 = (llvm_select_u8((((_244 != ((uint8_t)0))&1)), 16, 19));
  goto _249;

_249:
  return;
}


uint32_t hid_core_data_for_send(uint8_t* _253, uint16_t _254) {
  struct l_struct_struct_OC_hid_handl* _255;
  uint8_t* _256;
  uint32_t _257;
  uint32_t _257__PHI_TEMPORARY;

  _255 = hid;
  if ((((_255 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    _257__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _258;
  } else {
    goto _259;
  }

_259:
  _256 = memcpy(_253, ((&_255->field0.field0.array[((int32_t)0)].field0.array[((int32_t)0)])), 38);
  _257__PHI_TEMPORARY = 38;   /* for PHI node */
  goto _258;

_258:
  _257 = _257__PHI_TEMPORARY;
  return _257;
}


void hid_core_data_for_set(uint8_t* _260, uint16_t _261) {
  struct l_struct_struct_OC_hid_handl* _262;
  uint8_t* _263;

  _262 = hid;
  if ((((_262 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    goto _264;
  } else {
    goto _265;
  }

_265:
  _263 = memcpy(((&_262->field0.field0.array[((int32_t)0)].field0.array[((int32_t)0)])), _260, 38);
  goto _264;

_264:
  return;
}


uint32_t hid_diy_data_try_send(uint16_t _266, uint8_t* _267, uint16_t _268) {
  struct l_struct_struct_OC_hid_handl* _269;
  struct l_struct_struct_OC_hid_conn* _270;
  struct l_struct_struct_OC_hid_conn* _271;
  struct l_struct_struct_OC_hid_conn* _272;
  struct l_struct_struct_OC_hid_conn* _272__PHI_TEMPORARY;
  uint16_t _273;
  uint8_t _274;
  struct l_struct_struct_OC_hid_conn* _275;
  struct l_struct_struct_OC_hid_conn* _276;
  struct l_struct_struct_OC_hid_conn* _276__PHI_TEMPORARY;
  uint16_t _277;
  uint8_t _278;
  struct l_struct_struct_OC_hid_conn* _279;
  uint8_t _280;
  uint8_t _280__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _281;
  struct l_struct_struct_OC_hid_conn* _281__PHI_TEMPORARY;
  uint8_t* _282;
  uint32_t _283;
  uint16_t _284;
  uint32_t _285;
  uint8_t _286;
  uint32_t _287;
  uint8_t _288;
  uint8_t _289;
  uint32_t _290;
  uint8_t* _291;
  uint8_t _292;
  uint32_t _293;
  uint8_t _294;
  uint8_t _295;
  uint32_t _296;
  uint8_t* _297;
  uint8_t _298;
  uint32_t _299;
  uint32_t _299__PHI_TEMPORARY;

   /*tail*/ ((l_fptr_2*)(void*)local_irq_disable)();
  _269 = hid;
  if ((((_269 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    _299__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _300;
  } else {
    goto _301;
  }

_301:
  _270 = (&_269->field0.field0.array[((int32_t)0)]);
  _271 = (&_269->field0.field0.array[((int32_t)1)]);
  _272__PHI_TEMPORARY = _270;   /* for PHI node */
  goto _302;

  do {     /* Syntactic loop '' to make GCC happy */
_302:
  _272 = _272__PHI_TEMPORARY;
  _273 = *((&_272->field6));
  if ((((_273 == _266)&1))) {
    goto _303;
  } else {
    goto _304;
  }

_303:
  _274 = *((&_272->field4));
  if (((((llvm_and_u8(_274, 1)) == ((uint8_t)0))&1))) {
    goto _304;
  } else {
    goto _305;
  }

_304:
  _275 = (&_272[((int32_t)1)]);
  if ((((((uint32_t)_275) < ((uint32_t)_271))&1))) {
    _272__PHI_TEMPORARY = _275;   /* for PHI node */
    goto _302;
  } else {
    goto _306;
  }

  } while (1); /* end of syntactic loop '' */
_306:
  _276__PHI_TEMPORARY = _270;   /* for PHI node */
  goto _307;

  do {     /* Syntactic loop '' to make GCC happy */
_307:
  _276 = _276__PHI_TEMPORARY;
  _277 = *((&_276->field5));
  if ((((_277 == _266)&1))) {
    goto _308;
  } else {
    goto _309;
  }

_308:
  _278 = *((&_276->field4));
  if (((((llvm_and_u8(_278, 1)) == ((uint8_t)0))&1))) {
    goto _309;
  } else {
    goto _310;
  }

_309:
  _279 = (&_276[((int32_t)1)]);
  if ((((((uint32_t)_279) < ((uint32_t)_271))&1))) {
    _276__PHI_TEMPORARY = _279;   /* for PHI node */
    goto _307;
  } else {
    goto _311;
  }

  } while (1); /* end of syntactic loop '' */
_310:
  _280__PHI_TEMPORARY = _278;   /* for PHI node */
  _281__PHI_TEMPORARY = _276;   /* for PHI node */
  goto _312;

_305:
  _280__PHI_TEMPORARY = _274;   /* for PHI node */
  _281__PHI_TEMPORARY = _272;   /* for PHI node */
  goto _312;

_312:
  _280 = _280__PHI_TEMPORARY;
  _281 = _281__PHI_TEMPORARY;
  _282 = (&_281->field4);
  if (((((llvm_and_u8(_280, 1)) == ((uint8_t)0))&1))) {
    _299__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _300;
  } else {
    goto _313;
  }

_313:
  _283 =  /*tail*/ ((l_fptr_3*)(void*)lmp_private_get_tx_remain_buffer)();
  if ((((((uint32_t)_283) < ((uint32_t)256u))&1))) {
    _299__PHI_TEMPORARY = 30;   /* for PHI node */
    goto _300;
  } else {
    goto _314;
  }

_314:
  _284 = *((&_281->field6));
  _285 = ((uint32_t)(uint16_t)_268);
  if ((((_284 == _266)&1))) {
    goto _315;
  } else {
    goto _316;
  }

_315:
  if ((((((uint16_t)_268) > ((uint16_t)((uint16_t)30)))&1))) {
    goto _317;
  } else {
    goto _318;
  }

_317:
  _286 = l2cap_debug_enable;
  if ((((((int8_t)_286) < ((int8_t)((uint8_t)0)))&1))) {
    goto _319;
  } else {
    _299__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _300;
  }

_319:
  _287 =  /*tail*/ puts(((&str_OC_22.array[((int32_t)0)])));
  _299__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _300;

_318:
  _288 = diy_data_len;
  if ((((_288 == ((uint8_t)0))&1))) {
    goto _320;
  } else {
    goto _321;
  }

_321:
  _289 = l2cap_debug_enable;
  if ((((((int8_t)_289) < ((int8_t)((uint8_t)0)))&1))) {
    goto _322;
  } else {
    _299__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _300;
  }

_322:
  _290 =  /*tail*/ puts(((&str_OC_21.array[((int32_t)0)])));
  _299__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _300;

_320:
  _291 = memcpy(((&diy_data_buf.array[((int32_t)0)])), _267, _285);
  diy_data_len = (((uint8_t)_268));
  _299__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _300;

_316:
  if ((((((uint16_t)_268) > ((uint16_t)((uint16_t)10)))&1))) {
    goto _323;
  } else {
    goto _324;
  }

_323:
  _292 = l2cap_debug_enable;
  if ((((((int8_t)_292) < ((int8_t)((uint8_t)0)))&1))) {
    goto _325;
  } else {
    _299__PHI_TEMPORARY = 20;   /* for PHI node */
    goto _300;
  }

_325:
  _293 =  /*tail*/ puts(((&str_OC_20.array[((int32_t)0)])));
  _299__PHI_TEMPORARY = 20;   /* for PHI node */
  goto _300;

_324:
  _294 = *_282;
  if ((((((uint8_t)_294) > ((uint8_t)((uint8_t)31)))&1))) {
    goto _326;
  } else {
    goto _327;
  }

_326:
  _295 = l2cap_debug_enable;
  if ((((((int8_t)_295) < ((int8_t)((uint8_t)0)))&1))) {
    goto _328;
  } else {
    _299__PHI_TEMPORARY = 21;   /* for PHI node */
    goto _300;
  }

_328:
  _296 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _299__PHI_TEMPORARY = 21;   /* for PHI node */
  goto _300;

_327:
  _297 = memcpy(((&_281->field0.array[((int32_t)0)])), _267, _285);
  _298 = *_282;
  *_282 = (llvm_or_u8((llvm_and_u8(_298, 31)), (llvm_shl_u8((((uint8_t)_268)), 5))));
  _299__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _300;

_311:
  _299__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _300;

_300:
  _299 = _299__PHI_TEMPORARY;
   /*tail*/ ((l_fptr_2*)(void*)local_irq_enable)();
  return _299;
}


void hid_diy_regiest_callback(uint8_t* _329, uint8_t* _330) {
  *((uint8_t**)(&hid_msg_callback)) = _329;
  *((uint8_t**)(&hid_interrupt_callback)) = _330;
}


uint8_t hid_send_step_state(void) {
  struct l_struct_struct_OC_hid_handl* _331;
  struct l_struct_struct_OC_hid_conn* _332;
  struct l_struct_struct_OC_hid_conn* _333;
  struct l_struct_struct_OC_hid_conn* _334;
  struct l_struct_struct_OC_hid_conn* _334__PHI_TEMPORARY;
  uint16_t _335;
  uint8_t _336;
  uint8_t _337;
  struct l_struct_struct_OC_hid_conn* _338;
  uint8_t _339;
  uint8_t _339__PHI_TEMPORARY;
  uint8_t _340;
  uint8_t _340__PHI_TEMPORARY;

  _331 = hid;
  if ((((_331 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    _340__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _341;
  } else {
    goto _342;
  }

_342:
  _332 = (&_331->field0.field0.array[((int32_t)1)]);
  _333 = (&_331->field0.field0.array[((int32_t)0)]);
  _334__PHI_TEMPORARY = _333;   /* for PHI node */
  goto _343;

  do {     /* Syntactic loop '' to make GCC happy */
_343:
  _334 = _334__PHI_TEMPORARY;
  _335 = *((&_334->field6));
  if ((((_335 == ((uint16_t)0))&1))) {
    goto _344;
  } else {
    goto _345;
  }

_345:
  _336 = *((&_334->field4));
  if (((((llvm_and_u8(_336, 1)) == ((uint8_t)0))&1))) {
    goto _344;
  } else {
    goto _346;
  }

_346:
  _337 = *((&_334->field2));
  if ((((_337 == ((uint8_t)0))&1))) {
    goto _344;
  } else {
    _339__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _347;
  }

_344:
  _338 = (&_334[((int32_t)1)]);
  if ((((((uint32_t)_338) < ((uint32_t)_332))&1))) {
    _334__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _343;
  } else {
    _339__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _347;
  }

  } while (1); /* end of syntactic loop '' */
_347:
  _339 = _339__PHI_TEMPORARY;
  _340__PHI_TEMPORARY = _339;   /* for PHI node */
  goto _341;

_341:
  _340 = _340__PHI_TEMPORARY;
  return _340;
}


static uint32_t hid_suspend(void) {
  return 0;
}


static uint32_t hid_resume(void) {
  return 0;
}


static uint32_t hid_release(void) {
  struct l_struct_struct_OC_hid_handl* _348;
  struct l_struct_struct_OC_hid_conn* _349;
  struct l_struct_struct_OC_hid_conn* _350;
  struct l_struct_struct_OC_hid_conn* _351;
  struct l_struct_struct_OC_hid_conn* _351__PHI_TEMPORARY;
  uint8_t _352;
  bool _353;
  struct l_struct_struct_OC_hid_conn* _354;
  uint32_t _355;
  uint32_t _355__PHI_TEMPORARY;

  _348 = hid;
  if ((((_348 == ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0))&1))) {
    _355__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _356;
  } else {
    goto _357;
  }

_357:
  _349 = (&_348->field0.field0.array[((int32_t)1)]);
  _350 = (&_348->field0.field0.array[((int32_t)0)]);
  _351__PHI_TEMPORARY = _350;   /* for PHI node */
  goto _358;

  do {     /* Syntactic loop '' to make GCC happy */
_358:
  _351 = _351__PHI_TEMPORARY;
  _352 = *((&_351->field4));
  if (((((llvm_and_u8(_352, 1)) == ((uint8_t)0))&1))) {
    goto _359;
  } else {
    goto _360;
  }

_359:
  _353 = ((hid_run_loop_buy)&1);
  _354 = (&_351[((int32_t)1)]);
  if (_353) {
    goto _360;
  } else {
    goto _361;
  }

_361:
  if ((((((uint32_t)_354) < ((uint32_t)_349))&1))) {
    _351__PHI_TEMPORARY = _354;   /* for PHI node */
    goto _358;
  } else {
    goto _362;
  }

  } while (1); /* end of syntactic loop '' */
_362:
   /*tail*/ stack_run_loop_remove(((&_348->field1)));
  hid = ((struct l_struct_struct_OC_hid_handl*)/*NULL*/0);
  hid_run_loop_buy = ((0) & 1);
  _355__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _356;

_360:
  _355__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _356;

_356:
  _355 = _355__PHI_TEMPORARY;
  return _355;
}


static void hid_ctrl_try_send(uint16_t _363) {
  uint16_t _364;    /* Address-exposed local */
  struct l_struct_struct_OC_hid_handl* _365;
  struct l_struct_struct_OC_hid_conn* _366;
  struct l_struct_struct_OC_hid_conn* _367;
  struct l_struct_struct_OC_hid_conn* _368;
  struct l_struct_struct_OC_hid_conn* _368__PHI_TEMPORARY;
  uint16_t* _369;
  uint16_t _370;
  uint8_t* _371;
  uint8_t _372;
  struct l_struct_struct_OC_hid_conn* _373;
  uint8_t _374;
  uint32_t _375;
  uint8_t _376;
  uint16_t _377;
  uint8_t* _378;
  l_fptr_4* _379;

  _365 = hid;
  _366 = (&_365->field0.field0.array[((int32_t)0)]);
  _367 = (&_365->field0.field0.array[((int32_t)1)]);
  _368__PHI_TEMPORARY = _366;   /* for PHI node */
  goto _380;

  do {     /* Syntactic loop '' to make GCC happy */
_380:
  _368 = _368__PHI_TEMPORARY;
  _369 = (&_368->field5);
  _370 = *_369;
  if ((((_370 == _363)&1))) {
    goto _381;
  } else {
    goto _382;
  }

_381:
  _371 = (&_368->field4);
  _372 = *_371;
  if (((((llvm_and_u8(_372, 1)) == ((uint8_t)0))&1))) {
    goto _382;
  } else {
    goto _383;
  }

_382:
  _373 = (&_368[((int32_t)1)]);
  if ((((((uint32_t)_373) < ((uint32_t)_367))&1))) {
    _368__PHI_TEMPORARY = _373;   /* for PHI node */
    goto _380;
  } else {
    goto _384;
  }

  } while (1); /* end of syntactic loop '' */
_383:
  _374 = llvm_lshr_u8(_372, 5);
  if ((((_374 == ((uint8_t)0))&1))) {
    goto _385;
  } else {
    goto _386;
  }

_386:
  _375 =  /*tail*/ l2cap_send_internal(_363, ((&_368->field0.array[((int32_t)0)])), (((uint16_t)(uint8_t)_374)), 0);
  if ((((_375 == 0u)&1))) {
    goto _387;
  } else {
    goto _385;
  }

_387:
  _376 = *_371;
  *_371 = (llvm_and_u8(_376, 31));
  _377 = *_369;
  _378 = ((uint8_t*)(&_364));
  _364 = _377;
  _379 = hid_msg_callback;
  if ((((_379 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _388;
  } else {
    goto _389;
  }

_389:
  _379(3, _378, 2);
  goto _388;

_388:
  goto _385;

_384:
  goto _385;

_385:
  return;
}


static void hid_diy_state_sync(uint32_t _390, uint8_t* _391, uint16_t _392) {
  uint16_t _393;    /* Address-exposed local */
  struct l_array_2_uint16_t _394;    /* Address-exposed local */
  l_fptr_4* _395;
  struct l_struct_struct_OC_hid_conn* _396;
  uint16_t _397;
  uint16_t _398;

  _393 = _392;
  _395 = hid_msg_callback;
  if ((((_395 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _399;
  } else {
    goto _400;
  }

_400:
  switch (_390) {
  default:
    goto _399;
  case 1u:
    goto _401;
  case 2u:
    goto _402;
  case 3u:
    goto _403;
  }

_401:
  _396 =  /*tail*/ __hid_conn_for_addr(_391);
  if ((((_396 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _399;
  } else {
    goto _404;
  }

_404:
  _397 = *((&_396->field6));
  if ((((_397 == ((uint16_t)0))&1))) {
    goto _399;
  } else {
    goto _405;
  }

_405:
  _398 = *((&_396->field5));
  if ((((_398 == ((uint16_t)0))&1))) {
    goto _399;
  } else {
    goto _406;
  }

_406:
  *((&_394.array[((int32_t)0)])) = _398;
  *((&_394.array[((int32_t)1)])) = _397;
  _395(1, (((uint8_t*)(&_394))), 4);
  goto _399;

_402:
   /*tail*/ _395(2, ((uint8_t*)/*NULL*/0), 0);
  goto _399;

_403:
  _395(3, (((uint8_t*)(&_393))), 2);
  goto _399;

_399:
  return;
}


static struct l_struct_struct_OC_hid_conn* __hid_conn_for_addr(uint8_t* _407) {
  struct l_struct_struct_OC_hid_handl* _408;
  struct l_struct_struct_OC_hid_conn* _409;
  struct l_struct_struct_OC_hid_conn* _410;
  struct l_struct_struct_OC_hid_conn* _411;
  struct l_struct_struct_OC_hid_conn* _411__PHI_TEMPORARY;
  uint32_t _412;
  uint8_t _413;
  struct l_struct_struct_OC_hid_conn* _414;
  struct l_struct_struct_OC_hid_conn* _415;
  struct l_struct_struct_OC_hid_conn* _415__PHI_TEMPORARY;

  _408 = hid;
  _409 = (&_408->field0.field0.array[((int32_t)0)]);
  _410 = (&_408->field0.field0.array[((int32_t)1)]);
  _411__PHI_TEMPORARY = _409;   /* for PHI node */
  goto _416;

  do {     /* Syntactic loop '' to make GCC happy */
_416:
  _411 = _411__PHI_TEMPORARY;
  _412 =  /*tail*/ memcmp(((&_411->field1.array[((int32_t)0)])), _407, 6);
  if ((((_412 == 0u)&1))) {
    goto _417;
  } else {
    goto _418;
  }

_417:
  _413 = *((&_411->field4));
  if (((((llvm_and_u8(_413, 1)) == ((uint8_t)0))&1))) {
    goto _418;
  } else {
    _415__PHI_TEMPORARY = _411;   /* for PHI node */
    goto _419;
  }

_418:
  _414 = (&_411[((int32_t)1)]);
  if ((((((uint32_t)_414) < ((uint32_t)_410))&1))) {
    _411__PHI_TEMPORARY = _414;   /* for PHI node */
    goto _416;
  } else {
    _415__PHI_TEMPORARY = ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0);   /* for PHI node */
    goto _419;
  }

  } while (1); /* end of syntactic loop '' */
_419:
  _415 = _415__PHI_TEMPORARY;
  return _415;
}


static void hid_incoming_connection(uint16_t _420, uint8_t* _421, uint8_t _422) {
  struct l_array_6_uint8_t _423;    /* Address-exposed local */
  uint8_t* _424;
  struct l_struct_struct_OC_hid_conn* _425;
  struct l_struct_struct_OC_hid_conn* _426;
  struct l_struct_struct_OC_hid_conn* _427;
  struct l_struct_struct_OC_hid_conn* _427__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _428;
  struct l_struct_struct_OC_hid_conn* _429;
  struct l_struct_struct_OC_hid_conn* _430;
  struct l_struct_struct_OC_hid_conn* _430__PHI_TEMPORARY;
  uint8_t* _431;
  uint8_t _432;
  uint8_t _433;
  uint32_t _434;
  uint8_t _435;
  struct l_struct_struct_OC_hid_conn* _436;
  struct l_struct_struct_OC_hid_conn* _436__PHI_TEMPORARY;
  uint8_t _437;
  uint32_t _438;

  _424 = (&_423.array[((int32_t)0)]);
  switch (_422) {
  default:
    goto _439;
  case ((uint8_t)1):
    goto _440;
  case ((uint8_t)2):
    goto _441;
  }

_440:
  bt_flip_addr(_424, ((&_421[((int32_t)2)])));
  _425 = __hid_conn_for_addr(_424);
  if ((((_425 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _442;
  } else {
    _427__PHI_TEMPORARY = _425;   /* for PHI node */
    goto _443;
  }

_442:
  _426 = __create_hid_conn(_424);
  if ((((_426 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _444;
  } else {
    _427__PHI_TEMPORARY = _426;   /* for PHI node */
    goto _443;
  }

_443:
  _427 = _427__PHI_TEMPORARY;
  *((&_427->field5)) = _420;
  l2cap_accept_connection_internal(_420);
  goto _439;

_444:
  l2cap_decline_connection_internal(_420, 4);
  goto _439;

_441:
  bt_flip_addr(_424, ((&_421[((int32_t)2)])));
  _428 = __hid_conn_for_addr(_424);
  if ((((_428 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _445;
  } else {
    _430__PHI_TEMPORARY = _428;   /* for PHI node */
    goto _446;
  }

_445:
  _429 = __create_hid_conn(_424);
  if ((((_429 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    _436__PHI_TEMPORARY = ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0);   /* for PHI node */
    goto _447;
  } else {
    _430__PHI_TEMPORARY = _429;   /* for PHI node */
    goto _446;
  }

_446:
  _430 = _430__PHI_TEMPORARY;
  _431 = (&_430->field4);
  _432 = *_431;
  if (((((llvm_and_u8(_432, 2)) == ((uint8_t)0))&1))) {
    goto _448;
  } else {
    _436__PHI_TEMPORARY = _430;   /* for PHI node */
    goto _447;
  }

_448:
  _433 = l2cap_debug_enable;
  if ((((((int8_t)_433) < ((int8_t)((uint8_t)0)))&1))) {
    goto _449;
  } else {
    goto _450;
  }

_449:
  _434 = printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint16_t)_420)));
  goto _450;

_450:
  *((&_430->field6)) = _420;
  l2cap_accept_connection_internal(_420);
  _435 = *_431;
  *_431 = (llvm_or_u8((llvm_and_u8(_435, -25)), 16));
  goto _439;

_447:
  _436 = _436__PHI_TEMPORARY;
  _437 = l2cap_debug_enable;
  if ((((((int8_t)_437) < ((int8_t)((uint8_t)0)))&1))) {
    goto _451;
  } else {
    goto _452;
  }

_451:
  _438 = printf(((&_OC_str_OC_9.array[((int32_t)0)])), (((uint32_t)(uint16_t)_420)));
  goto _452;

_452:
  *((&_436->field7)) = _420;
  l2cap_decline_connection_internal(_420, 1);
  goto _439;

_439:
  return;
}


static void hid_connection_open(uint16_t _453, uint8_t* _454, uint8_t _455) {
  struct l_array_6_uint8_t _456;    /* Address-exposed local */
  uint8_t* _457;
  uint8_t _458;
  uint8_t _459;
  uint32_t _460;
  struct l_struct_struct_OC_hid_conn* _461;
  uint8_t* _462;
  uint8_t _463;
  struct l_struct_struct_OC_user_interface_handler* _464;
  l_fptr_5* _465;
  struct l_struct_struct_OC_hid_conn* _466;
  struct l_struct_struct_OC_hid_conn* _467;
  struct l_struct_struct_OC_hid_conn* _467__PHI_TEMPORARY;
  uint8_t _468;
  struct l_struct_struct_OC_user_interface_handler* _469;
  l_fptr_5* _470;
  uint32_t _471;
  uint32_t _472;
  uint32_t _473;
  uint8_t _474;
  uint8_t _475;
  struct l_struct_struct_OC_hid_conn* _476;
  struct l_struct_struct_OC_hid_conn* _476__PHI_TEMPORARY;
  uint8_t _477;
  uint16_t* _478;
  uint8_t* _479;
  uint8_t _480;
  uint16_t* _481;
  uint16_t _482;
  uint32_t _483;
  uint8_t _484;
  uint32_t _485;
  uint16_t _486;
  uint16_t _487;
  uint16_t _487__PHI_TEMPORARY;
  uint8_t _488;
  uint8_t* _489;
  uint8_t _490;
  struct l_struct_struct_OC_user_interface_handler* _491;
  l_fptr_5* _492;
  uint16_t* _493;
  uint16_t _494;
  uint32_t _495;
  uint8_t _496;
  uint32_t _497;
  uint16_t _498;
  uint16_t _499;
  uint16_t _499__PHI_TEMPORARY;

  _457 = (&_456.array[((int32_t)0)]);
  _458 = l2cap_debug_enable;
  if ((((((int8_t)_458) < ((int8_t)((uint8_t)0)))&1))) {
    goto _500;
  } else {
    goto _501;
  }

_500:
  _459 = *((&_454[((int32_t)2)]));
  _460 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), (((uint32_t)(uint16_t)_453)), (((uint32_t)(uint8_t)_459)), (((uint32_t)(uint8_t)_455)));
  goto _501;

_501:
  bt_flip_addr(_457, ((&_454[((int32_t)3)])));
  _461 = __hid_conn_for_addr(_457);
  if ((((_455 == ((uint8_t)1))&1))) {
    goto _502;
  } else {
    _476__PHI_TEMPORARY = _461;   /* for PHI node */
    goto _503;
  }

_502:
  _462 = (&_454[((int32_t)2)]);
  if ((((_461 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _504;
  } else {
    _467__PHI_TEMPORARY = _461;   /* for PHI node */
    goto _505;
  }

_504:
  _463 = *_462;
  switch (_463) {
  default:
    goto _506;
  case ((uint8_t)0):
    goto _507;
  case ((uint8_t)101):
    goto _508;
  }

_508:
  _464 = user_interface;
  _465 = *((&_464->field5));
  if ((((_465 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _506;
  } else {
    goto _509;
  }

_509:
  _465(_457, 2, 16, 1);
  goto _506;

_507:
  _466 = __create_hid_conn(_457);
  _467__PHI_TEMPORARY = _466;   /* for PHI node */
  goto _505;

_505:
  _467 = _467__PHI_TEMPORARY;
  _468 = *_462;
  switch (_468) {
  default:
    goto _510;
  case ((uint8_t)0):
    goto _511;
  case ((uint8_t)101):
    goto _512;
  }

_512:
  _469 = user_interface;
  _470 = *((&_469->field5));
  if ((((_470 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _510;
  } else {
    goto _513;
  }

_513:
  _470(((&_467->field1.array[((int32_t)0)])), 2, 16, 1);
  goto _510;

_510:
  __free_hid_conn(_467);
  goto _506;

_511:
  _471 = config_asser;
  if ((((_471 == 0u)&1))) {
    goto _514;
  } else {
    goto _515;
  }

_515:
  if ((((_467 != ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _516;
  } else {
    goto _517;
  }

_517:
  _472 = printf(((&_OC_str_OC_11.array[((int32_t)0)])), ((&_OC_str_OC_12.array[((int32_t)0)])), 241);
  _473 = printf(((&_OC_str_OC_13.array[((int32_t)0)])));
  ((l_fptr_2*)(void*)cpu_assert_debug)();
  goto _516;

_514:
  if ((((_467 != ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _516;
  } else {
    goto _518;
  }

_518:
  cpu_reset();
  goto _516;

_516:
  *((&_467->field5)) = _453;
  _474 = *((&_467->field4));
  if (((((llvm_and_u8(_474, 2)) == ((uint8_t)0))&1))) {
    _476__PHI_TEMPORARY = _467;   /* for PHI node */
    goto _503;
  } else {
    goto _519;
  }

_519:
  _475 = l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), __hid_interrupt_packet_handler, ((&_467->field1.array[((int32_t)0)])), 19, -1);
  _476__PHI_TEMPORARY = _467;   /* for PHI node */
  goto _503;

_503:
  _476 = _476__PHI_TEMPORARY;
  if ((((_455 == ((uint8_t)2))&1))) {
    goto _520;
  } else {
    goto _521;
  }

_520:
  if ((((_476 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _522;
  } else {
    goto _523;
  }

_522:
  l2cap_disconnect_internal(_453, 19);
  goto _506;

_523:
  _477 = *((&_454[((int32_t)2)]));
  if ((((_477 == ((uint8_t)0))&1))) {
    goto _524;
  } else {
    goto _525;
  }

_525:
  _478 = (&_476->field6);
  *_478 = 0;
  _479 = (&_476->field4);
  _480 = *_479;
  *_479 = (llvm_and_u8(_480, -25));
  _481 = (&_476->field7);
  _482 = *_481;
  _483 = ((uint32_t)(uint16_t)_482);
  if ((((_482 == ((uint16_t)0))&1))) {
    goto _506;
  } else {
    goto _526;
  }

_526:
  _484 = l2cap_debug_enable;
  if ((((((int8_t)_484) < ((int8_t)((uint8_t)0)))&1))) {
    goto _527;
  } else {
    _487__PHI_TEMPORARY = _482;   /* for PHI node */
    goto _528;
  }

_527:
  _485 = printf(((&_OC_str_OC_14.array[((int32_t)0)])), _483);
  _486 = *_481;
  _487__PHI_TEMPORARY = _486;   /* for PHI node */
  goto _528;

_528:
  _487 = _487__PHI_TEMPORARY;
  *_478 = _487;
  l2cap_accept_connection_internal(_487);
  _488 = *_479;
  *_479 = (llvm_or_u8((llvm_and_u8(_488, -25)), 16));
  *_481 = 0;
  goto _506;

_524:
  _489 = (&_476->field4);
  _490 = *_489;
  *_489 = (llvm_and_u8(_490, -27));
  *((&_476->field6)) = _453;
  _491 = user_interface;
  _492 = *((&_491->field5));
  if ((((_492 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _529;
  } else {
    goto _530;
  }

_530:
  _492(((&_476->field1.array[((int32_t)0)])), 1, 16, 1);
  goto _529;

_529:
  _493 = (&_476->field7);
  _494 = *_493;
  _495 = ((uint32_t)(uint16_t)_494);
  if ((((_494 == ((uint16_t)0))&1))) {
    goto _521;
  } else {
    goto _531;
  }

_531:
  _496 = l2cap_debug_enable;
  if ((((((int8_t)_496) < ((int8_t)((uint8_t)0)))&1))) {
    goto _532;
  } else {
    _499__PHI_TEMPORARY = _494;   /* for PHI node */
    goto _533;
  }

_532:
  _497 = printf(((&_OC_str_OC_15.array[((int32_t)0)])), _495);
  _498 = *_493;
  _499__PHI_TEMPORARY = _498;   /* for PHI node */
  goto _533;

_533:
  _499 = _499__PHI_TEMPORARY;
  l2cap_decline_connection_internal(_499, 4);
  *_493 = 0;
  goto _521;

_521:
  hid_diy_state_sync(1, _457, _453);
  goto _506;

_506:
  return;
}


static void hid_connection_close(uint16_t _534, uint8_t _535) {
  struct l_struct_struct_OC_hid_handl* _536;
  struct l_struct_struct_OC_hid_conn* _537;
  struct l_struct_struct_OC_hid_conn* _538;
  struct l_struct_struct_OC_hid_conn* _539;
  struct l_struct_struct_OC_hid_conn* _539__PHI_TEMPORARY;
  uint16_t* _540;
  uint16_t _541;
  uint8_t _542;
  struct l_struct_struct_OC_hid_conn* _543;
  struct l_struct_struct_OC_hid_conn* _544;
  struct l_struct_struct_OC_hid_conn* _544__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_handl* _545;
  struct l_struct_struct_OC_hid_conn* _546;
  struct l_struct_struct_OC_hid_conn* _547;
  struct l_struct_struct_OC_hid_conn* _548;
  struct l_struct_struct_OC_hid_conn* _548__PHI_TEMPORARY;
  uint16_t* _549;
  uint16_t _550;
  uint8_t* _551;
  uint8_t _552;
  struct l_struct_struct_OC_hid_conn* _553;
  struct l_struct_struct_OC_hid_conn* _554;
  struct l_struct_struct_OC_hid_conn* _554__PHI_TEMPORARY;
  uint16_t _555;
  uint16_t _556;
  struct l_struct_struct_OC_user_interface_handler* _557;
  l_fptr_5* _558;

  if ((((_535 == ((uint8_t)1))&1))) {
    goto _559;
  } else {
    goto _560;
  }

_559:
  _536 = hid;
  _537 = (&_536->field0.field0.array[((int32_t)0)]);
  _538 = (&_536->field0.field0.array[((int32_t)1)]);
  _539__PHI_TEMPORARY = _537;   /* for PHI node */
  goto _561;

  do {     /* Syntactic loop '' to make GCC happy */
_561:
  _539 = _539__PHI_TEMPORARY;
  _540 = (&_539->field5);
  _541 = *_540;
  if ((((_541 == _534)&1))) {
    goto _562;
  } else {
    goto _563;
  }

_562:
  _542 = *((&_539->field4));
  if (((((llvm_and_u8(_542, 1)) == ((uint8_t)0))&1))) {
    goto _563;
  } else {
    goto _564;
  }

_563:
  _543 = (&_539[((int32_t)1)]);
  if ((((((uint32_t)_543) < ((uint32_t)_538))&1))) {
    _539__PHI_TEMPORARY = _543;   /* for PHI node */
    goto _561;
  } else {
    goto _565;
  }

  } while (1); /* end of syntactic loop '' */
_564:
  *_540 = 0;
  _544__PHI_TEMPORARY = _539;   /* for PHI node */
  goto _560;

_565:
  _544__PHI_TEMPORARY = ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0);   /* for PHI node */
  goto _560;

_560:
  _544 = _544__PHI_TEMPORARY;
  if ((((_535 == ((uint8_t)2))&1))) {
    goto _566;
  } else {
    goto _567;
  }

_566:
  _545 = hid;
  _546 = (&_545->field0.field0.array[((int32_t)0)]);
  _547 = (&_545->field0.field0.array[((int32_t)1)]);
  _548__PHI_TEMPORARY = _546;   /* for PHI node */
  goto _568;

  do {     /* Syntactic loop '' to make GCC happy */
_568:
  _548 = _548__PHI_TEMPORARY;
  _549 = (&_548->field6);
  _550 = *_549;
  if ((((_550 == _534)&1))) {
    goto _569;
  } else {
    goto _570;
  }

_569:
  _551 = (&_548->field4);
  _552 = *_551;
  if (((((llvm_and_u8(_552, 1)) == ((uint8_t)0))&1))) {
    goto _570;
  } else {
    goto _571;
  }

_570:
  _553 = (&_548[((int32_t)1)]);
  if ((((((uint32_t)_553) < ((uint32_t)_547))&1))) {
    _548__PHI_TEMPORARY = _553;   /* for PHI node */
    goto _568;
  } else {
    goto _572;
  }

  } while (1); /* end of syntactic loop '' */
_571:
  *_549 = 0;
  *_551 = (llvm_and_u8(_552, -25));
  _554__PHI_TEMPORARY = _548;   /* for PHI node */
  goto _573;

_567:
  if ((((_544 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _574;
  } else {
    _554__PHI_TEMPORARY = _544;   /* for PHI node */
    goto _573;
  }

_573:
  _554 = _554__PHI_TEMPORARY;
  _555 = *((&_554->field5));
  if ((((_555 == ((uint16_t)0))&1))) {
    goto _575;
  } else {
    goto _574;
  }

_575:
  _556 = *((&_554->field6));
  if ((((_556 == ((uint16_t)0))&1))) {
    goto _576;
  } else {
    goto _574;
  }

_576:
  _557 = user_interface;
  _558 = *((&_557->field5));
  if ((((_558 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _577;
  } else {
    goto _578;
  }

_578:
   /*tail*/ _558(((&_554->field1.array[((int32_t)0)])), 0, 16, 0);
  goto _577;

_577:
   /*tail*/ __free_hid_conn(_554);
  goto _574;

_572:
  goto _574;

_574:
  return;
}


static void hid_monitor_connection_open(uint16_t _579, uint8_t* _580, uint8_t _581) {
  struct l_array_6_uint8_t _582;    /* Address-exposed local */
  uint8_t* _583;
  struct l_struct_struct_OC_hid_conn* _584;
  uint8_t _585;
  struct l_struct_struct_OC_hid_conn* _586;
  struct l_struct_struct_OC_hid_conn* _587;
  struct l_struct_struct_OC_hid_conn* _587__PHI_TEMPORARY;
  uint32_t _588;
  uint32_t _589;
  uint32_t _590;
  struct l_struct_struct_OC_hid_conn* _591;
  struct l_struct_struct_OC_hid_conn* _591__PHI_TEMPORARY;
  struct l_struct_struct_OC_hid_conn* _592;
  uint32_t _593;
  uint32_t _594;
  uint32_t _595;
  struct l_struct_struct_OC_hid_conn* _596;
  struct l_struct_struct_OC_hid_conn* _596__PHI_TEMPORARY;
  uint8_t _597;
  uint16_t* _598;
  uint8_t* _599;
  uint8_t _600;
  struct l_struct_struct_OC_user_interface_handler* _601;
  l_fptr_5* _602;

  _583 = (&_582.array[((int32_t)0)]);
  bt_flip_addr(_583, ((&_580[((int32_t)3)])));
  _584 = __hid_conn_for_addr(_583);
  if ((((_581 == ((uint8_t)1))&1))) {
    goto _603;
  } else {
    _591__PHI_TEMPORARY = _584;   /* for PHI node */
    goto _604;
  }

_603:
  if ((((_584 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _605;
  } else {
    _587__PHI_TEMPORARY = _584;   /* for PHI node */
    goto _606;
  }

_605:
  _585 = *((&_580[((int32_t)2)]));
  if ((((_585 == ((uint8_t)0))&1))) {
    goto _607;
  } else {
    goto _608;
  }

_607:
  _586 = __create_hid_conn(_583);
  _587__PHI_TEMPORARY = _586;   /* for PHI node */
  goto _606;

_606:
  _587 = _587__PHI_TEMPORARY;
  _588 = config_asser;
  if ((((_588 == 0u)&1))) {
    goto _609;
  } else {
    goto _610;
  }

_610:
  if ((((_587 != ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _611;
  } else {
    goto _612;
  }

_612:
  _589 = printf(((&_OC_str_OC_11.array[((int32_t)0)])), ((&_OC_str_OC_12.array[((int32_t)0)])), 297);
  _590 = printf(((&_OC_str_OC_13.array[((int32_t)0)])));
  ((l_fptr_2*)(void*)cpu_assert_debug)();
  goto _611;

_609:
  if ((((_587 != ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _611;
  } else {
    goto _613;
  }

_613:
  cpu_reset();
  goto _611;

_611:
  *((&_587->field5)) = _579;
  _591__PHI_TEMPORARY = _587;   /* for PHI node */
  goto _604;

_604:
  _591 = _591__PHI_TEMPORARY;
  if ((((_581 == ((uint8_t)2))&1))) {
    goto _614;
  } else {
    goto _608;
  }

_614:
  if ((((_591 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _615;
  } else {
    _596__PHI_TEMPORARY = _591;   /* for PHI node */
    goto _616;
  }

_615:
  _592 = __create_hid_conn(_583);
  _593 = config_asser;
  if ((((_593 == 0u)&1))) {
    goto _617;
  } else {
    goto _618;
  }

_618:
  if ((((_592 != ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    _596__PHI_TEMPORARY = _592;   /* for PHI node */
    goto _616;
  } else {
    goto _619;
  }

_619:
  _594 = printf(((&_OC_str_OC_11.array[((int32_t)0)])), ((&_OC_str_OC_12.array[((int32_t)0)])), 305);
  _595 = printf(((&_OC_str_OC_13.array[((int32_t)0)])));
  ((l_fptr_2*)(void*)cpu_assert_debug)();
  _596__PHI_TEMPORARY = ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0);   /* for PHI node */
  goto _616;

_617:
  if ((((_592 != ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    _596__PHI_TEMPORARY = _592;   /* for PHI node */
    goto _616;
  } else {
    goto _620;
  }

_620:
  cpu_reset();
  _596__PHI_TEMPORARY = ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0);   /* for PHI node */
  goto _616;

_616:
  _596 = _596__PHI_TEMPORARY;
  _597 = *((&_580[((int32_t)2)]));
  _598 = (&_596->field6);
  if ((((_597 == ((uint8_t)0))&1))) {
    goto _621;
  } else {
    goto _622;
  }

_622:
  *_598 = 0;
  _599 = (&_596->field4);
  _600 = *_599;
  *_599 = (llvm_and_u8(_600, -25));
  goto _608;

_621:
  *_598 = _579;
  _601 = user_interface;
  _602 = *((&_601->field5));
  if ((((_602 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _608;
  } else {
    goto _623;
  }

_623:
  _602(((&_596->field1.array[((int32_t)0)])), 1, 16, 0);
  goto _608;

_608:
  return;
}


static struct l_struct_struct_OC_hid_conn* __create_hid_conn(uint8_t* _624) {
  struct l_struct_struct_OC_hid_handl* _625;
  struct l_struct_struct_OC_hid_conn* _626;
  struct l_struct_struct_OC_hid_conn* _627;
  struct l_struct_struct_OC_hid_conn* _628;
  struct l_struct_struct_OC_hid_conn* _628__PHI_TEMPORARY;
  uint8_t* _629;
  uint8_t _630;
  uint8_t* _631;
  struct l_struct_struct_OC_hid_conn* _632;
  struct l_struct_struct_OC_hid_conn* _633;
  struct l_struct_struct_OC_hid_conn* _633__PHI_TEMPORARY;

  _625 = hid;
  _626 = (&_625->field0.field0.array[((int32_t)0)]);
  _627 = (&_625->field0.field0.array[((int32_t)1)]);
  _628__PHI_TEMPORARY = _626;   /* for PHI node */
  goto _634;

  do {     /* Syntactic loop '' to make GCC happy */
_634:
  _628 = _628__PHI_TEMPORARY;
  _629 = (&_628->field4);
  _630 = *_629;
  if (((((llvm_and_u8(_630, 1)) == ((uint8_t)0))&1))) {
    goto _635;
  } else {
    goto _636;
  }

_636:
  _632 = (&_628[((int32_t)1)]);
  if ((((((uint32_t)_632) < ((uint32_t)_627))&1))) {
    _628__PHI_TEMPORARY = _632;   /* for PHI node */
    goto _634;
  } else {
    goto _637;
  }

  } while (1); /* end of syntactic loop '' */
_635:
  *((&_628->field5)) = 0;
  *((&_628->field6)) = 0;
  *((&_628->field2)) = 0;
  *((&_628->field7)) = 0;
  *_629 = (llvm_or_u8((llvm_and_u8(_630, -4)), 1));
  _631 = memcpy(((&_628->field1.array[((int32_t)0)])), _624, 6);
  _633__PHI_TEMPORARY = _628;   /* for PHI node */
  goto _638;

_637:
  _633__PHI_TEMPORARY = ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0);   /* for PHI node */
  goto _638;

_638:
  _633 = _633__PHI_TEMPORARY;
  return _633;
}


static void __free_hid_conn(struct l_struct_struct_OC_hid_conn* _639) {
  uint8_t* _640;
  uint8_t _641;
  uint8_t* _642;
  l_fptr_4* _643;

  if ((((_639 == ((struct l_struct_struct_OC_hid_conn*)/*NULL*/0))&1))) {
    goto _644;
  } else {
    goto _645;
  }

_645:
  _640 = (&_639->field4);
  _641 = *_640;
  *_640 = (llvm_and_u8(_641, -2));
  *((&_639->field5)) = 0;
  *((&_639->field6)) = 0;
  _642 = memset(((&_639->field1.array[((int32_t)0)])), 0, 7);
  _643 = hid_msg_callback;
  if ((((_643 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _644;
  } else {
    goto _646;
  }

_646:
   /*tail*/ _643(2, ((uint8_t*)/*NULL*/0), 0);
  goto _644;

_644:
  return;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


static void hid_inter_try_send(uint16_t _647) {
  uint16_t _648;    /* Address-exposed local */
  uint8_t _649;
  uint32_t _650;
  uint8_t* _651;
  l_fptr_4* _652;

  _649 = diy_data_len;
  if ((((_649 == ((uint8_t)0))&1))) {
    goto _653;
  } else {
    goto _654;
  }

_654:
  _650 =  /*tail*/ l2cap_send_internal(_647, ((&diy_data_buf.array[((int32_t)0)])), (((uint16_t)(uint8_t)_649)), 0);
  if ((((_650 == 0u)&1))) {
    goto _655;
  } else {
    goto _653;
  }

_655:
  diy_data_len = 0;
  _651 = ((uint8_t*)(&_648));
  _648 = _647;
  _652 = hid_msg_callback;
  if ((((_652 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _656;
  } else {
    goto _657;
  }

_657:
  _652(3, _651, 2);
  goto _656;

_656:
  goto _653;

_653:
  return;
}

