/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
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
typedef void l_fptr_1(void);


/* Types Definitions */

/* Function Declarations */
void btstack_cpu_disable_irqs(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void local_irq_disable(int, ...);
void btstack_cpu_enable_irqs(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void local_irq_enable(int, ...);


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

void btstack_cpu_disable_irqs(void) {
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/external_function.c"
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
}


void btstack_cpu_enable_irqs(void) {
#line 75 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/external_function.c"
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
}

