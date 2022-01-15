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
struct l_struct_struct_OC_btstack_timer_source;

/* Function definitions */
typedef void l_fptr_1(uint8_t*);

typedef void l_fptr_3(struct l_struct_struct_OC_btstack_timer_source*);

typedef void l_fptr_2(int, ...);


/* Types Definitions */
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_3* field3;
  uint8_t* field4;
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;

/* Function Declarations */
void bt_timer_schedule(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t btstack_get_timeout_ticks_for_unit(uint32_t, int16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t btstack_get_timeout_for_ms(uint32_t, int16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source*, int16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t sys_timer_add(uint8_t*, l_fptr_1*, uint32_t);
uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sys_timer_del(uint16_t);
void btstack_run_loop_embedded_execute_once(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t btstack_run_loop_embedded_get_ticks(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void bt_timer_resume_handler_register(l_fptr_2*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_36_uint8_t str = { "<BT-log> :not support timer setting" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
  return r;
}


/* Function Bodies */

void bt_timer_schedule(void) {
  return;
}


uint32_t btstack_get_timeout_ticks_for_unit(uint32_t _1, int16_t _2) {
#line 53 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  ;
  ;
  return 0;
}


uint32_t btstack_get_timeout_for_ms(uint32_t _3, int16_t _4) {
  uint8_t _5;
  uint32_t _6;
  uint32_t _7;
  uint32_t _8;
  uint32_t _8__PHI_TEMPORARY;

#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  ;
  ;
  switch (_4) {
  default:
    goto _9;
  case ((uint16_t)1):
    goto _10;
  case ((uint16_t)2):
    _8__PHI_TEMPORARY = _3;   /* for PHI node */
    goto _11;
  case ((uint16_t)3):
    goto _12;
  }

_10:
#line 72 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _5 = l2cap_debug_enable;
  if ((((((int8_t)_5) < ((int8_t)((uint8_t)0)))&1))) {
    goto _13;
  } else {
    _8__PHI_TEMPORARY = 10;   /* for PHI node */
    goto _11;
  }

_13:
  _6 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _8__PHI_TEMPORARY = 10;   /* for PHI node */
  goto _11;

_12:
#line 77 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _7 = llvm_mul_u32(_3, 1000);
  _8__PHI_TEMPORARY = _7;   /* for PHI node */
  goto _11;

_9:
  _8__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _11;

_11:
  _8 = _8__PHI_TEMPORARY;
  return _8;
}


void btstack_set_timer(struct l_struct_struct_OC_btstack_timer_source* _14, int16_t _15) {
  uint32_t* _16;
  uint32_t _17;
  uint16_t _18;
  uint32_t _19;
  l_fptr_1* _20;
  uint16_t _21;

#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  ;
  ;
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _16 = (&_14->field2);
  _17 = *_16;
#line 143 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _18 = llvm_and_u16(_15, 15);
  *_16 = ((_17 & -983041) | ((((uint32_t)(uint16_t)_18)) << 16));
#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _19 =  /*tail*/ btstack_get_timeout_for_ms((_17 & 65535), _18);
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  ;
#line 145 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _20 = *(((l_fptr_1**)((&_14->field3))));
  _21 =  /*tail*/ sys_timer_add((((uint8_t*)_14)), _20, _19);
  *((&_14->field1)) = (((uint32_t)(uint16_t)_21));
}


uint32_t btstack_run_loop_remove_timer(struct l_struct_struct_OC_btstack_timer_source* _22) {
  uint32_t _23;

#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  _23 = *((&_22->field1));
   /*tail*/ sys_timer_del((((uint16_t)_23)));
  return 0;
}


void btstack_run_loop_embedded_execute_once(void) {
  return;
}


uint32_t btstack_run_loop_embedded_get_ticks(void) {
  return 0;
}


void bt_timer_resume_handler_register(l_fptr_2* _24) {
#line 227 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
  ;
}

