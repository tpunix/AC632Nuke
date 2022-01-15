/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
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
struct l_struct_struct_OC_user_interface_handler;
struct l_unnamed_1;

/* Function definitions */
typedef void l_fptr_8(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef void l_fptr_1(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_6(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_11(uint8_t);

typedef uint32_t l_fptr_4(void);

typedef void l_fptr_2(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_7(uint32_t);

typedef void l_fptr_5(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_3(uint8_t*, uint32_t);

typedef uint8_t l_fptr_12(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint32_t l_fptr_9(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_10(void);


/* Types Definitions */
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_1* field0;
  l_fptr_2* field1;
  l_fptr_3* field2;
  l_fptr_4* field3;
  l_fptr_5* field4;
  l_fptr_6* field5;
  l_fptr_4* field6;
  l_fptr_7* field7;
  l_fptr_8* field8;
  l_fptr_9* field9;
  l_fptr_10* field10;
  l_fptr_11* field11;
  l_fptr_12* field12;
  l_fptr_5* field13;
  l_fptr_4* field14;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_unnamed_1 {
  uint32_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  uint16_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  uint8_t field9;
  uint8_t field10;
  uint8_t field11;
  uint8_t field12;
  uint8_t field13;
  uint8_t field14;
  uint8_t field15;
  uint8_t field16;
  struct l_array_6_uint8_t field17;
  uint8_t field18;
};

/* External Global Variable Declarations */

/* Function Declarations */
uint32_t __bt_profile_enable(uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t a2dp_source_bqb_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t user_at_cmd_send_support __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t l2cap_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t rfcomm_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t profile_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t ble_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
uint8_t btstack_tws_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_user_interface_handler user_interface_app __HIDDEN__;
struct l_unnamed_1 stack_configs_app __HIDDEN__ = { 2360324, 8000, 8000, 0, 0, 0, 60, 53, 0, 17, 16, 8, 35, 1, 70u, 30, 10, { { 0, 0, 0, 0, 0, 0 } }, 0 };


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

uint32_t __bt_profile_enable(uint32_t _1) {
  uint16_t _2;

#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/bt_configs.c"
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/bt_configs.c"
  _2 = *((&stack_configs_app.field4));
  return ((((uint32_t)(uint16_t)_2)) & _1);
}

