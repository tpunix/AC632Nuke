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
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_run_loop;

/* Function definitions */
typedef void l_fptr_1(struct l_struct_struct_OC_run_loop*);


/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_run_loop {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
  uint8_t* field2;
};

/* External Global Variable Declarations */

/* Function Declarations */
void stack_run_loop_register(struct l_struct_struct_OC_run_loop*, l_fptr_1*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void stack_run_loop_remove(struct l_struct_struct_OC_run_loop*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void bt_profile_loop(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void btstack_run_loop_embedded_execute_once(void);


/* Global Variable Definitions and Initialization */
static struct l_struct_struct_OC_btstack_linked_item* stack_run_loop_head;


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

void stack_run_loop_register(struct l_struct_struct_OC_run_loop* _1, l_fptr_1* _2, uint8_t* _3) {
  *((&_1->field1)) = _2;
  *((&_1->field2)) = _3;
   /*tail*/ btstack_linked_list_add_tail((&stack_run_loop_head), ((&_1->field0)));
}


void stack_run_loop_remove(struct l_struct_struct_OC_run_loop* _4) {
  uint32_t _5;

  _5 =  /*tail*/ btstack_linked_list_remove((&stack_run_loop_head), ((&_4->field0)));
}


void bt_profile_loop(void) {
  struct l_struct_struct_OC_btstack_linked_item* _6;
  struct l_struct_struct_OC_btstack_linked_item* _7;
  struct l_struct_struct_OC_btstack_linked_item* _7__PHI_TEMPORARY;
  l_fptr_1* _8;
  struct l_struct_struct_OC_btstack_linked_item* _9;

   /*tail*/ btstack_run_loop_embedded_execute_once();
  _6 = stack_run_loop_head;
  if ((((_6 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _10;
  } else {
    goto _11;
  }

_11:
  _7__PHI_TEMPORARY = _6;   /* for PHI node */
  goto _12;

  do {     /* Syntactic loop '' to make GCC happy */
_12:
  _7 = _7__PHI_TEMPORARY;
  _8 = *(((l_fptr_1**)((&_7[((int32_t)1)]))));
  if ((((_8 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _13;
  } else {
    goto _14;
  }

_14:
   /*tail*/ _8((((struct l_struct_struct_OC_run_loop*)_7)));
  goto _13;

_13:
  _9 = *((&_7->field0));
  if ((((_9 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _15;
  } else {
    _7__PHI_TEMPORARY = _9;   /* for PHI node */
    goto _12;
  }

  } while (1); /* end of syntactic loop '' */
_15:
  goto _10;

_10:
  return;
}

