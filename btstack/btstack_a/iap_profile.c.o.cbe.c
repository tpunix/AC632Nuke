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
struct l_struct_struct_OC_bt_sleep;

/* Function definitions */
typedef uint32_t l_fptr_13(int, ...);

typedef void l_fptr_3(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_4(uint8_t*, uint32_t);

typedef uint8_t l_fptr_12(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_11(uint8_t);

typedef uint32_t l_fptr_9(uint8_t*, uint8_t, uint8_t);

typedef uint32_t l_fptr_5(void);

typedef void l_fptr_10(void);

typedef void l_fptr_8(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef void l_fptr_2(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_6(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_7(uint32_t);


/* Types Definitions */
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_2* field0;
  l_fptr_3* field1;
  l_fptr_4* field2;
  l_fptr_5* field3;
  l_fptr_1* field4;
  l_fptr_6* field5;
  l_fptr_5* field6;
  l_fptr_7* field7;
  l_fptr_8* field8;
  l_fptr_9* field9;
  l_fptr_10* field10;
  l_fptr_11* field11;
  l_fptr_12* field12;
  l_fptr_1* field13;
  l_fptr_5* field14;
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_13* field0;
  l_fptr_13* field1;
  l_fptr_13* field2;
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC_user_interface_handler* user_interface;

/* Function Declarations */
void iap_data_deal_handle_register(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t iap_check_conn_for_rfcomm_id(uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t iap_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void iap_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
static uint32_t iap_suspend(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t iap_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t iap_release(void) __ATTRIBUTELIST__((nothrow, const));


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_bt_sleep bt_suspend_iap_resumeiap_release __HIDDEN__ = { ((l_fptr_13*)iap_suspend), ((l_fptr_13*)iap_resume), ((l_fptr_13*)iap_release) };


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

void iap_data_deal_handle_register(l_fptr_1* _1) {
  struct l_struct_struct_OC_user_interface_handler* _2;

#line 389 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
  ;
#line 391 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
  _2 = user_interface;
  *((&_2->field13)) = _1;
}


uint8_t iap_check_conn_for_rfcomm_id(uint16_t _3) {
#line 394 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
  ;
  return 0;
}


uint32_t iap_core_data_for_send(uint8_t* _4, uint16_t _5) {
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
  ;
  ;
#line 412 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
  ;
  return 0;
}


void iap_core_data_for_set(uint8_t* _6, uint16_t _7) {
#line 425 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
  ;
  ;
}


static uint32_t iap_suspend(void) {
  return 0;
}


static uint32_t iap_resume(void) {
  return 0;
}


static uint32_t iap_release(void) {
  return 0;
}

