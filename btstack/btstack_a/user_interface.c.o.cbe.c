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
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_hci_cmd_t;
struct l_struct_struct_OC_matrix_key_event;
struct l_struct_union_OC_anon;
struct l_struct_struct_OC_sys_event;
struct l_struct_struct_OC_bt_event;

/* Function definitions */
typedef void l_fptr_2(uint32_t);

typedef void l_fptr_5(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_6(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_12(uint8_t*, uint32_t);

typedef uint8_t l_fptr_13(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint32_t l_fptr_11(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_7(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef uint32_t l_fptr_3(void);

typedef void l_fptr_10(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_1(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef void l_fptr_4(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_9(uint8_t);

typedef void l_fptr_8(void);


/* Types Definitions */
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_4* field0;
  l_fptr_5* field1;
  l_fptr_12* field2;
  l_fptr_3* field3;
  l_fptr_6* field4;
  l_fptr_7* field5;
  l_fptr_3* field6;
  l_fptr_2* field7;
  l_fptr_1* field8;
  l_fptr_11* field9;
  l_fptr_8* field10;
  l_fptr_9* field11;
  l_fptr_13* field12;
  l_fptr_6* field13;
  l_fptr_3* field14;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
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
struct l_array_6_uint16_t {
  uint16_t array[6];
};
struct l_struct_struct_OC_matrix_key_event {
  struct l_array_6_uint16_t field0;
  uint8_t* field1;
};
struct l_struct_union_OC_anon {
  struct l_struct_struct_OC_matrix_key_event field0;
};
struct l_struct_struct_OC_sys_event {
  uint16_t field0;
  uint8_t field1;
  uint8_t* field2;
  struct l_struct_union_OC_anon field3;
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_struct_struct_OC_bt_event {
  uint8_t field0;
  struct l_array_7_uint8_t field1;
  uint32_t field2;
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC_user_interface_handler user_interface_app;
extern __MSALIGN__(4) struct l_struct_struct_OC__stack_config stack_configs_app __attribute__((aligned(4)));

/* Function Declarations */
void bt_music_info_handle_register(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void music_vol_change_handle_register(l_fptr_2*, l_fptr_3*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t is_support_vol_sync(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void profile_function_status_handle_register(l_fptr_4*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void read_remote_name_handle_register(l_fptr_5*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void get_battery_percent_register(l_fptr_3*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void get_battery_value_register(l_fptr_3*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void spp_data_deal_handle_register(l_fptr_6*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void profile_channels_status_handle_register(l_fptr_7*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_auto_conn_device_num(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __bt_set_hid_independent_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t __get_hid_independent_flag(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void __set_support_msbc_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_support_aac_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_support_aptx_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_support_ldac_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_support_non_a2dp_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_simple_pair_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __change_hci_class_type(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_super_timeout_value(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_page_timeout_value(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_sbc_cap_bitpool(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_a2dp_auto_play_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_hfp_switch(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_hfp_restore(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_auto_pause_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_music_break_in_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_a2dp_sound_detect_counter(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_emitter_enable_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_remote_test_flag(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void set_remote_test_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_fast_test_handle_register(l_fptr_8*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_dut_test_handle_register(l_fptr_9*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void inquiry_result_handle_register(l_fptr_10*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_user_ctrl_conn_num(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __bt_set_update_battery_time(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_disable_sco_flag(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_esco_busy_flag(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_simple_pair_param(uint8_t, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_user_background_goback(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_a2dp_not_support_remote_connect(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __set_keep_spp_connect(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t stack_send_infor_2_user(struct l_struct_struct_OC_hci_cmd_t*, ...) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sys_event_notify(struct l_struct_struct_OC_sys_event*);
uint32_t update_multi_bd_status(uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_user_interface_handler* user_interface __HIDDEN__ = (&user_interface_app);
struct l_struct_struct_OC__stack_config* user_stack_configs __HIDDEN__ = (&stack_configs_app);


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
static __forceinline uint8_t llvm_shl_u8(uint8_t a, uint8_t b) {
  uint8_t r = a << b;
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


/* Function Bodies */

void bt_music_info_handle_register(l_fptr_1* _1) {
  struct l_struct_struct_OC_user_interface_handler* _2;

#line 29 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 31 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _2 = user_interface;
  *((&_2->field8)) = _1;
}


void music_vol_change_handle_register(l_fptr_2* _3, l_fptr_3* _4) {
  struct l_struct_struct_OC_user_interface_handler* _5;

#line 34 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  ;
#line 36 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _5 = user_interface;
  *((&_5->field7)) = _3;
#line 37 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  *((&_5->field6)) = _4;
}


uint8_t is_support_vol_sync(void) {
  struct l_struct_struct_OC_user_interface_handler* _6;
  l_fptr_3* _7;
  l_fptr_2* _8;
  uint8_t _9;
  uint8_t _9__PHI_TEMPORARY;

#line 42 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _6 = user_interface;
  _7 = *((&_6->field6));
  if ((((_7 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _10;
  } else {
    goto _11;
  }

_11:
#line 43 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _8 = *((&_6->field7));
  if ((((_8 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _10;
  } else {
    _9__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _12;
  }

_10:
  _9__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _12;

_12:
  _9 = _9__PHI_TEMPORARY;
  return _9;
}


void profile_function_status_handle_register(l_fptr_4* _13) {
  struct l_struct_struct_OC_user_interface_handler* _14;

#line 50 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 52 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _14 = user_interface;
  *((&_14->field0)) = _13;
}


void read_remote_name_handle_register(l_fptr_5* _15) {
  struct l_struct_struct_OC_user_interface_handler* _16;

#line 57 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 59 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _16 = user_interface;
  *((&_16->field1)) = _15;
}


void get_battery_percent_register(l_fptr_3* _17) {
  struct l_struct_struct_OC_user_interface_handler* _18;

#line 65 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _18 = user_interface;
  *((&_18->field14)) = _17;
}


void get_battery_value_register(l_fptr_3* _19) {
  struct l_struct_struct_OC_user_interface_handler* _20;

#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _20 = user_interface;
  *((&_20->field3)) = _19;
}


void spp_data_deal_handle_register(l_fptr_6* _21) {
  struct l_struct_struct_OC_user_interface_handler* _22;

#line 75 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 77 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _22 = user_interface;
  *((&_22->field4)) = _21;
}


void profile_channels_status_handle_register(l_fptr_7* _23) {
  struct l_struct_struct_OC_user_interface_handler* _24;

#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _24 = user_interface;
  *((&_24->field5)) = _23;
}


void __set_auto_conn_device_num(uint8_t _25) {
  struct l_struct_struct_OC__stack_config* _26;
  uint32_t* _27;
  uint32_t _28;

#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  ;
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _26 = user_stack_configs;
  _27 = (&_26->field9);
  _28 = __UNALIGNED_LOAD__(uint32_t, 1, _27);
  __UNALIGNED_LOAD__(uint32_t, 1, _27) = ((_28 & -16) | (((uint32_t)(uint8_t)(llvm_and_u8((llvm_select_u8((((((uint8_t)_25) < ((uint8_t)((uint8_t)9)))&1)), _25, 9)), 15)))));
}


void __bt_set_hid_independent_flag(uint8_t _29) {
  struct l_struct_struct_OC__stack_config* _30;
  uint32_t* _31;
  uint32_t _32;

#line 111 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 113 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _30 = user_stack_configs;
  _31 = (&_30->field9);
  _32 = __UNALIGNED_LOAD__(uint32_t, 1, _31);
  __UNALIGNED_LOAD__(uint32_t, 1, _31) = ((_32 & -65) | (((uint32_t)(uint8_t)(llvm_and_u8((llvm_shl_u8(_29, 6)), 64u)))));
}


uint8_t __get_hid_independent_flag(void) {
  struct l_struct_struct_OC__stack_config* _33;
  uint32_t _34;

#line 117 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _33 = user_stack_configs;
  _34 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_33->field9)));
  return (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_34, 6)))), 1));
}


void __set_support_msbc_flag(uint8_t _35) {
  struct l_struct_struct_OC__stack_config* _36;
  uint32_t* _37;
  uint32_t _38;

#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 122 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _36 = user_stack_configs;
  _37 = (&_36->field9);
  _38 = __UNALIGNED_LOAD__(uint32_t, 1, _37);
  __UNALIGNED_LOAD__(uint32_t, 1, _37) = ((_38 & -2049) | ((((uint32_t)(uint8_t)(llvm_and_u8(_35, 1)))) << 11));
}


void __set_support_aac_flag(uint8_t _39) {
  struct l_struct_struct_OC__stack_config* _40;
  uint32_t* _41;
  uint32_t _42;

#line 124 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _40 = user_stack_configs;
  _41 = (&_40->field9);
  _42 = __UNALIGNED_LOAD__(uint32_t, 1, _41);
  __UNALIGNED_LOAD__(uint32_t, 1, _41) = ((_42 & -129) | (((uint32_t)(uint8_t)(llvm_shl_u8(_39, 7)))));
}


void __set_support_aptx_flag(uint8_t _43) {
  struct l_struct_struct_OC__stack_config* _44;
  uint32_t* _45;
  uint32_t _46;

#line 128 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _44 = user_stack_configs;
  _45 = (&_44->field9);
  _46 = __UNALIGNED_LOAD__(uint32_t, 1, _45);
  __UNALIGNED_LOAD__(uint32_t, 1, _45) = ((_46 & -257) | ((((uint32_t)(uint8_t)(llvm_and_u8(_43, 1)))) << 8));
}


void __set_support_ldac_flag(uint8_t _47) {
  struct l_struct_struct_OC__stack_config* _48;
  uint32_t* _49;
  uint32_t _50;

#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _48 = user_stack_configs;
  _49 = (&_48->field9);
  _50 = __UNALIGNED_LOAD__(uint32_t, 1, _49);
  __UNALIGNED_LOAD__(uint32_t, 1, _49) = ((_50 & -513) | ((((uint32_t)(uint8_t)(llvm_and_u8(_47, 1)))) << 9));
}


void __set_support_non_a2dp_flag(uint8_t _51) {
  struct l_struct_struct_OC__stack_config* _52;
  uint32_t* _53;
  uint32_t _54;

#line 136 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _52 = user_stack_configs;
  _53 = (&_52->field9);
  _54 = __UNALIGNED_LOAD__(uint32_t, 1, _53);
  __UNALIGNED_LOAD__(uint32_t, 1, _53) = ((_54 & -1025) | ((((uint32_t)(uint8_t)(llvm_and_u8(_51, 1)))) << 10));
}


void __set_simple_pair_flag(uint8_t _55) {
  struct l_struct_struct_OC__stack_config* _56;
  uint32_t* _57;
  uint32_t _58;

#line 140 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _56 = user_stack_configs;
  _57 = (&_56->field9);
  _58 = __UNALIGNED_LOAD__(uint32_t, 1, _57);
  __UNALIGNED_LOAD__(uint32_t, 1, _57) = ((_58 & -4097) | ((((uint32_t)(uint8_t)(llvm_and_u8(_55, 1)))) << 12));
}


void __change_hci_class_type(uint32_t _59) {
  struct l_struct_struct_OC__stack_config* _60;

#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _60 = user_stack_configs;
  *((&_60->field0)) = _59;
}


void __set_super_timeout_value(uint16_t _61) {
  struct l_struct_struct_OC__stack_config* _62;

#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 151 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _62 = user_stack_configs;
  *((&_62->field2)) = _61;
}


void __set_page_timeout_value(uint16_t _63) {
  struct l_struct_struct_OC__stack_config* _64;

#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _64 = user_stack_configs;
  *((&_64->field1)) = _63;
}


void __set_sbc_cap_bitpool(uint8_t _65) {
  struct l_struct_struct_OC__stack_config* _66;

#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 160 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _66 = user_stack_configs;
  *((&_66->field7)) = _65;
}


void __set_a2dp_auto_play_flag(uint8_t _67) {
  struct l_struct_struct_OC__stack_config* _68;
  uint32_t* _69;
  uint32_t _70;

#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 165 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _68 = user_stack_configs;
  _69 = (&_68->field9);
  _70 = __UNALIGNED_LOAD__(uint32_t, 1, _69);
  __UNALIGNED_LOAD__(uint32_t, 1, _69) = ((_70 & -2097153) | ((((uint32_t)(uint8_t)(llvm_and_u8(_67, 1)))) << 21));
}


void __set_hfp_switch(uint8_t _71) {
  struct l_struct_struct_OC__stack_config* _72;
  uint32_t* _73;
  uint32_t _74;

#line 170 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _72 = user_stack_configs;
  _73 = (&_72->field9);
  _74 = __UNALIGNED_LOAD__(uint32_t, 1, _73);
  __UNALIGNED_LOAD__(uint32_t, 1, _73) = ((_74 & -65537) | ((((uint32_t)(uint8_t)(llvm_and_u8(_71, 1)))) << 16));
}


void __set_hfp_restore(uint8_t _75) {
  struct l_struct_struct_OC__stack_config* _76;
  uint32_t* _77;
  uint32_t _78;

#line 178 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _76 = user_stack_configs;
  _77 = (&_76->field9);
  _78 = __UNALIGNED_LOAD__(uint32_t, 1, _77);
  __UNALIGNED_LOAD__(uint32_t, 1, _77) = ((_78 & -131073) | ((((uint32_t)(uint8_t)(llvm_and_u8(_75, 1)))) << 17));
}


void __set_auto_pause_flag(uint8_t _79) {
  struct l_struct_struct_OC__stack_config* _80;

#line 185 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 187 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _80 = user_stack_configs;
  *((&_80->field10)) = _79;
}


void __set_music_break_in_flag(uint8_t _81) {
  struct l_struct_struct_OC__stack_config* _82;
  uint32_t* _83;
  uint32_t _84;

#line 192 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _82 = user_stack_configs;
  _83 = (&_82->field9);
  _84 = __UNALIGNED_LOAD__(uint32_t, 1, _83);
  __UNALIGNED_LOAD__(uint32_t, 1, _83) = ((_84 & -524289) | ((((uint32_t)(uint8_t)(llvm_and_u8(_81, 1)))) << 19));
}


void __set_a2dp_sound_detect_counter(uint8_t _85, uint8_t _86) {
  struct l_struct_struct_OC__stack_config* _87;

#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  ;
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _87 = user_stack_configs;
  *((&_87->field11)) = _85;
#line 202 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  *((&_87->field12)) = _86;
}


void __set_emitter_enable_flag(uint8_t _88) {
  struct l_struct_struct_OC__stack_config* _89;
  uint32_t* _90;
  uint32_t _91;

#line 207 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _89 = user_stack_configs;
  _90 = (&_89->field9);
  _91 = __UNALIGNED_LOAD__(uint32_t, 1, _90);
  __UNALIGNED_LOAD__(uint32_t, 1, _90) = ((_91 & -1048577) | ((((uint32_t)(uint8_t)(llvm_and_u8(_88, 1)))) << 20));
}


uint8_t get_remote_test_flag(void) {
  struct l_struct_struct_OC__stack_config* _92;
  uint32_t _93;

#line 213 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _92 = user_stack_configs;
  _93 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_92->field9)));
#line 216 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  return (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_93, 18)))), 1));
}


void set_remote_test_flag(uint8_t _94) {
  struct l_struct_struct_OC__stack_config* _95;
  uint32_t* _96;
  uint32_t _97;
  uint32_t _98;
  uint32_t _99;
  uint32_t _100;
  uint32_t _100__PHI_TEMPORARY;

#line 219 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 222 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _95 = user_stack_configs;
  _96 = (&_95->field9);
  _97 = __UNALIGNED_LOAD__(uint32_t, 1, _96);
  if ((((_94 == ((uint8_t)0))&1))) {
    goto _101;
  } else {
    goto _102;
  }

_101:
#line 223 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _98 = _97 & -262145;
  _100__PHI_TEMPORARY = _98;   /* for PHI node */
  goto _103;

_102:
#line 225 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _99 = (_97 & -262145) | ((((uint32_t)(uint8_t)(llvm_and_u8(_94, 1)))) << 18);
  _100__PHI_TEMPORARY = _99;   /* for PHI node */
  goto _103;

_103:
  _100 = _100__PHI_TEMPORARY;
  __UNALIGNED_LOAD__(uint32_t, 1, _96) = _100;
}


void bt_fast_test_handle_register(l_fptr_8* _104) {
  struct l_struct_struct_OC_user_interface_handler* _105;

#line 228 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _105 = user_interface;
  *((&_105->field10)) = _104;
}


void bt_dut_test_handle_register(l_fptr_9* _106) {
  struct l_struct_struct_OC_user_interface_handler* _107;

#line 232 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 234 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _107 = user_interface;
  *((&_107->field11)) = _106;
}


void inquiry_result_handle_register(l_fptr_10* _108) {
  struct l_struct_struct_OC_user_interface_handler* _109;

#line 237 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 239 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _109 = user_interface;
  *(((l_fptr_10**)((&_109->field12)))) = _108;
}


void __set_user_ctrl_conn_num(uint8_t _110) {
  struct l_struct_struct_OC__stack_config* _111;
  uint32_t* _112;
  uint32_t _113;

#line 243 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _111 = user_stack_configs;
  _112 = (&_111->field9);
  _113 = __UNALIGNED_LOAD__(uint32_t, 1, _112);
  __UNALIGNED_LOAD__(uint32_t, 1, _112) = ((_113 & -49) | (((uint32_t)(uint8_t)(llvm_and_u8((llvm_shl_u8(_110, 4)), 48)))));
}


void __bt_set_update_battery_time(uint8_t _114) {
  struct l_struct_struct_OC__stack_config* _115;
  uint32_t* _116;
  uint32_t _117;

#line 248 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _115 = user_stack_configs;
  *((&_115->field6)) = _114;
#line 251 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _116 = (&_115->field9);
  _117 = __UNALIGNED_LOAD__(uint32_t, 1, _116);
#line 254 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
#line 251 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  __UNALIGNED_LOAD__(uint32_t, 1, _116) = (llvm_select_u32((((_114 == ((uint8_t)0))&1)), (_117 & -8193), (_117 | 8192)));
}


void __set_disable_sco_flag(uint8_t _118) {
  struct l_struct_struct_OC__stack_config* _119;
  uint32_t* _120;
  uint32_t _121;

#line 258 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 260 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _119 = user_stack_configs;
  _120 = (&_119->field9);
  _121 = __UNALIGNED_LOAD__(uint32_t, 1, _120);
  __UNALIGNED_LOAD__(uint32_t, 1, _120) = ((_121 & -16385) | ((((uint32_t)(uint8_t)(llvm_and_u8(_118, 1)))) << 14));
}


uint8_t get_esco_busy_flag(void) {
  struct l_struct_struct_OC__stack_config* _122;
  uint32_t _123;

#line 264 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _122 = user_stack_configs;
  _123 = __UNALIGNED_LOAD__(uint32_t volatile, 1, ((&_122->field9)));
#line 265 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  return (((uint8_t)(llvm_lshr_u16((((uint16_t)_123)), 15))));
}


void __set_simple_pair_param(uint8_t _124, uint8_t _125, uint8_t _126) {
  struct l_struct_struct_OC__stack_config* _127;
  uint32_t* _128;
  uint32_t _129;

#line 270 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  ;
  ;
#line 272 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _127 = user_stack_configs;
  _128 = (&_127->field9);
  _129 = __UNALIGNED_LOAD__(uint32_t, 1, _128);
#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  __UNALIGNED_LOAD__(uint32_t, 1, _128) = ((((_129 & 16777215) | ((((uint32_t)(uint8_t)(llvm_and_u8(_124, 3)))) << 24)) | ((((uint32_t)(uint8_t)(llvm_and_u8(_125, 3)))) << 26)) | ((((uint32_t)(uint8_t)_126)) << 28));
}


void __set_user_background_goback(uint8_t _130) {
  struct l_struct_struct_OC__stack_config* _131;

#line 277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _131 = user_stack_configs;
  *((&_131->field8)) = _130;
}


void __set_a2dp_not_support_remote_connect(uint8_t _132) {
  struct l_struct_struct_OC__stack_config* _133;
  uint32_t* _134;
  uint32_t _135;

#line 282 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 284 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _133 = user_stack_configs;
  _134 = (&_133->field9);
  _135 = __UNALIGNED_LOAD__(uint32_t, 1, _134);
  __UNALIGNED_LOAD__(uint32_t, 1, _134) = ((_135 & -8388609) | ((((uint32_t)(uint8_t)(llvm_and_u8(_132, 1)))) << 23));
}


void __set_keep_spp_connect(uint8_t _136) {
  struct l_struct_struct_OC__stack_config* _137;
  uint8_t* _138;
  uint8_t _139;

#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _137 = user_stack_configs;
  _138 = (&_137->field15);
  _139 = *_138;
  *_138 = (llvm_or_u8((llvm_and_u8(_139, -2)), (llvm_and_u8(_136, 1))));
}


uint32_t stack_send_infor_2_user(struct l_struct_struct_OC_hci_cmd_t* _140, ...) {
#line 296 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  return 0;
}


void bt_event_update_to_user(uint8_t* _141, uint32_t _142, uint8_t _143, uint32_t _144) {
  struct l_struct_struct_OC_sys_event _145;    /* Address-exposed local */
  uint8_t* _146;
  struct l_struct_union_OC_anon* _147;
  uint8_t* _148;

#line 312 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  ;
  ;
  ;
#line 315 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _146 = ((uint8_t*)(&_145));
#line 316 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  *((&_145.field0)) = 16;
#line 317 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _147 = (&_145.field3);
  if ((((_141 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _149;
  } else {
    goto _150;
  }

_150:
#line 318 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _148 = memcpy(((&(((struct l_struct_struct_OC_bt_event*)_147))->field1.array[((int32_t)0)])), _141, 6);
  goto _149;

_149:
#line 320 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  *((&_145.field2)) = (((uint8_t*)(uintptr_t)_142));
#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  *(((uint8_t*)_147)) = _143;
#line 322 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  *(((uint32_t*)((&_145.field3.field0.field0.array[((int32_t)4)])))) = _144;
#line 315 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
#line 323 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  sys_event_notify((&_145));
}


uint32_t update_multi_bd_status(uint8_t* _151, uint8_t _152, uint8_t _153) {
  struct l_struct_struct_OC_user_interface_handler* _154;
  l_fptr_11* _155;
  uint32_t _156;
  uint32_t _157;
  uint32_t _157__PHI_TEMPORARY;

#line 331 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  ;
  ;
  ;
#line 333 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _154 = user_interface;
  _155 = *((&_154->field9));
  if ((((_155 == ((l_fptr_11*)/*NULL*/0))&1))) {
    _157__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _158;
  } else {
    goto _159;
  }

_159:
#line 334 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
  _156 =  /*tail*/ _155(_151, _152, _153);
  _157__PHI_TEMPORARY = _156;   /* for PHI node */
  goto _158;

_158:
  _157 = _157__PHI_TEMPORARY;
  return _157;
}

