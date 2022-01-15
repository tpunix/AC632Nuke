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

/* Function definitions */

/* Types Definitions */

/* External Global Variable Declarations */

/* Function Declarations */
uint32_t hfp_ag_buf_init(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t setup_hfp_ag_esco_link(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

uint32_t hfp_ag_buf_init(uint8_t* _1, uint32_t _2, uint32_t _3) {
#line 1239 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hfp_ag_profile.c"
  ;
  ;
  ;
  return -1006;
}


uint32_t setup_hfp_ag_esco_link(uint8_t* _4) {
#line 1243 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hfp_ag_profile.c"
  ;
  return -1006;
}

