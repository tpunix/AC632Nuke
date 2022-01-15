/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
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
struct l_struct_struct_OC_btstack_linked_list_iterator_t;

/* Function definitions */

/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_linked_list_iterator_t {
  uint32_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
};

/* Function Declarations */
uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item**) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_get_last_item(struct l_struct_struct_OC_btstack_linked_item**) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_count(struct l_struct_struct_OC_btstack_linked_item**) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_get_first_item(struct l_struct_struct_OC_btstack_linked_item**) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_pop(struct l_struct_struct_OC_btstack_linked_item**) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_iterator_init(struct l_struct_struct_OC_btstack_linked_list_iterator_t*, struct l_struct_struct_OC_btstack_linked_item**) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_iterator_remove(struct l_struct_struct_OC_btstack_linked_list_iterator_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}


/* Function Bodies */

uint32_t btstack_linked_list_empty(struct l_struct_struct_OC_btstack_linked_item** _1) {
  struct l_struct_struct_OC_btstack_linked_item* _2;

#line 58 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _2 = *_1;
  return (((uint32_t)(bool)(((_2 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))));
}


struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_get_last_item(struct l_struct_struct_OC_btstack_linked_item** _3) {
  struct l_struct_struct_OC_btstack_linked_item* _4;
  struct l_struct_struct_OC_btstack_linked_item* _4__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _5;
  struct l_struct_struct_OC_btstack_linked_item** _5__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _6;

#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  _4__PHI_TEMPORARY = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);   /* for PHI node */
  _5__PHI_TEMPORARY = _3;   /* for PHI node */
  goto _7;

  do {     /* Syntactic loop '' to make GCC happy */
_7:
  _4 = _4__PHI_TEMPORARY;
  _5 = _5__PHI_TEMPORARY;
  _6 = *_5;
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  ;
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_6 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _8;
  } else {
    _4__PHI_TEMPORARY = _6;   /* for PHI node */
    _5__PHI_TEMPORARY = ((&_6->field0));   /* for PHI node */
    goto _7;
  }

  } while (1); /* end of syntactic loop '' */
_8:
  return _4;
}


void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item** _9, struct l_struct_struct_OC_btstack_linked_item* _10) {
  struct l_struct_struct_OC_btstack_linked_item* _11;
  uint32_t _12;
  struct l_struct_struct_OC_btstack_linked_item* _13;
  struct l_struct_struct_OC_btstack_linked_item* _14;
  struct l_struct_struct_OC_btstack_linked_item* _14__PHI_TEMPORARY;

#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  ;
  _11 = *_9;
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _12 = ((uint32_t)(uintptr_t)_11);
  if ((((_11 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _15;
  } else {
    goto _16;
  }

_16:
  _14__PHI_TEMPORARY = _11;   /* for PHI node */
  goto _17;

  do {     /* Syntactic loop '' to make GCC happy */
_17:
  _14 = _14__PHI_TEMPORARY;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_14 == _10)&1))) {
    goto _18;
  } else {
    goto _19;
  }

_19:
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _13 = *((&_14->field0));
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_13 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _20;
  } else {
    _14__PHI_TEMPORARY = _13;   /* for PHI node */
    goto _17;
  }

  } while (1); /* end of syntactic loop '' */
_20:
  goto _15;

_15:
#line 92 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *(((uint32_t*)_10)) = _12;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *_9 = _10;
  goto _21;

_18:
  goto _21;

_21:
  return;
}


void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item** _22, struct l_struct_struct_OC_btstack_linked_item* _23) {
  struct l_struct_struct_OC_btstack_linked_item* _24;
  struct l_struct_struct_OC_btstack_linked_item* _25;
  struct l_struct_struct_OC_btstack_linked_item* _25__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item** _26;
  struct l_struct_struct_OC_btstack_linked_item* _27;

#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  ;
#line 100 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _24 = ((struct l_struct_struct_OC_btstack_linked_item*)_22);
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  _25__PHI_TEMPORARY = _24;   /* for PHI node */
  goto _28;

  do {     /* Syntactic loop '' to make GCC happy */
_28:
  _25 = _25__PHI_TEMPORARY;
  ;
#line 100 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _26 = (&_25->field0);
  _27 = *_26;
  if ((((_27 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _29;
  } else {
    goto _30;
  }

_30:
#line 101 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_27 == _23)&1))) {
    goto _31;
  } else {
    _25__PHI_TEMPORARY = _27;   /* for PHI node */
    goto _28;
  }

  } while (1); /* end of syntactic loop '' */
_29:
#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *((&_23->field0)) = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);
#line 106 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *_26 = _23;
  goto _32;

_31:
  goto _32;

_32:
  return;
}


uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item** _33, struct l_struct_struct_OC_btstack_linked_item* _34) {
  struct l_struct_struct_OC_btstack_linked_item* _35;
  struct l_struct_struct_OC_btstack_linked_item* _36;
  struct l_struct_struct_OC_btstack_linked_item* _36__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _37;
  uint32_t _38;
  uint32_t _39;
  uint32_t _39__PHI_TEMPORARY;

#line 109 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  ;
#line 111 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_34 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _39__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _40;
  } else {
    goto _41;
  }

_41:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _35 = ((struct l_struct_struct_OC_btstack_linked_item*)_33);
#line 114 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  _36__PHI_TEMPORARY = _35;   /* for PHI node */
  goto _42;

  do {     /* Syntactic loop '' to make GCC happy */
_42:
  _36 = _36__PHI_TEMPORARY;
  ;
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_36 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _43;
  } else {
    goto _44;
  }

_44:
#line 116 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _37 = *((&_36->field0));
  if ((((_37 == _34)&1))) {
    goto _45;
  } else {
    _36__PHI_TEMPORARY = _37;   /* for PHI node */
    goto _42;
  }

  } while (1); /* end of syntactic loop '' */
_45:
#line 117 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _38 = *(((uint32_t*)_34));
  *(((uint32_t*)_36)) = _38;
  _39__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _40;

_43:
  _39__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _40;

_40:
  _39 = _39__PHI_TEMPORARY;
  return _39;
}


uint32_t btstack_linked_list_count(struct l_struct_struct_OC_btstack_linked_item** _46) {
  struct l_struct_struct_OC_btstack_linked_item* _47;
  struct l_struct_struct_OC_btstack_linked_item* _48;
  struct l_struct_struct_OC_btstack_linked_item* _48__PHI_TEMPORARY;
  uint32_t _49;
  uint32_t _49__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _50;

#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _47 = ((struct l_struct_struct_OC_btstack_linked_item*)_46);
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  _48__PHI_TEMPORARY = _47;   /* for PHI node */
  _49__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _51;

  do {     /* Syntactic loop '' to make GCC happy */
_51:
  _48 = _48__PHI_TEMPORARY;
  _49 = _49__PHI_TEMPORARY;
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _50 = *((&_48->field0));
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  if ((((_50 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _52;
  } else {
    _48__PHI_TEMPORARY = _50;   /* for PHI node */
    _49__PHI_TEMPORARY = (llvm_add_u32(_49, 1));   /* for PHI node */
    goto _51;
  }

  } while (1); /* end of syntactic loop '' */
_52:
  return _49;
}


struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_get_first_item(struct l_struct_struct_OC_btstack_linked_item** _53) {
  struct l_struct_struct_OC_btstack_linked_item* _54;

#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 140 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _54 = *_53;
  return _54;
}


struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_pop(struct l_struct_struct_OC_btstack_linked_item** _55) {
  struct l_struct_struct_OC_btstack_linked_item* _56;
  uint32_t _57;
  struct l_struct_struct_OC_btstack_linked_item* _58;
  struct l_struct_struct_OC_btstack_linked_item* _58__PHI_TEMPORARY;

#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _56 = *_55;
  ;
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  if ((((_56 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _58__PHI_TEMPORARY = ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0);   /* for PHI node */
    goto _59;
  } else {
    goto _60;
  }

_60:
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _57 = *(((uint32_t*)_56));
  *(((uint32_t*)_55)) = _57;
  _58__PHI_TEMPORARY = _56;   /* for PHI node */
  goto _59;

_59:
  _58 = _58__PHI_TEMPORARY;
  return _58;
}


void btstack_linked_list_iterator_init(struct l_struct_struct_OC_btstack_linked_list_iterator_t* _61, struct l_struct_struct_OC_btstack_linked_item** _62) {
  uint32_t _63;

#line 159 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
  ;
#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *((&_61->field0)) = 0;
#line 162 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *(((struct l_struct_struct_OC_btstack_linked_item***)((&_61->field1)))) = _62;
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _63 = *(((uint32_t*)_62));
  *(((uint32_t*)((&_61->field2)))) = _63;
}


uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t* _64) {
  uint32_t _65;
  struct l_struct_struct_OC_btstack_linked_item** _66;
  struct l_struct_struct_OC_btstack_linked_item* _67;
  struct l_struct_struct_OC_btstack_linked_item* _68;
  struct l_struct_struct_OC_btstack_linked_item* _69;
  struct l_struct_struct_OC_btstack_linked_item** _70;
  struct l_struct_struct_OC_btstack_linked_item** _71;
  struct l_struct_struct_OC_btstack_linked_item** _71__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _72;
  struct l_struct_struct_OC_btstack_linked_item* _73;
  struct l_struct_struct_OC_btstack_linked_item* _73__PHI_TEMPORARY;

#line 166 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _65 = *((&_64->field0));
  if ((((_65 == 0u)&1))) {
    goto _74;
  } else {
    goto _75;
  }

_74:
#line 170 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _66 = (&_64->field2);
  _71__PHI_TEMPORARY = _66;   /* for PHI node */
  goto _76;

_75:
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _67 = *((&_64->field1));
  _68 = *((&_67->field0));
  _69 = *((&_64->field2));
  if ((((_68 == _69)&1))) {
    goto _77;
  } else {
    _73__PHI_TEMPORARY = _68;   /* for PHI node */
    goto _78;
  }

_77:
#line 177 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _70 = (&_68->field0);
  _71__PHI_TEMPORARY = _70;   /* for PHI node */
  goto _76;

_76:
  _71 = _71__PHI_TEMPORARY;
  _72 = *_71;
  _73__PHI_TEMPORARY = _72;   /* for PHI node */
  goto _78;

_78:
  _73 = _73__PHI_TEMPORARY;
  return (((uint32_t)(bool)(((_73 != ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))));
}


struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t* _79) {
  uint32_t* _80;
  uint32_t _81;
  struct l_struct_struct_OC_btstack_linked_item** _82;
  struct l_struct_struct_OC_btstack_linked_item* _83;
  struct l_struct_struct_OC_btstack_linked_item* _84;
  struct l_struct_struct_OC_btstack_linked_item** _85;
  struct l_struct_struct_OC_btstack_linked_item* _86;
  struct l_struct_struct_OC_btstack_linked_item* _87;
  struct l_struct_struct_OC_btstack_linked_item* _88;
  struct l_struct_struct_OC_btstack_linked_item* _88__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _89;
  struct l_struct_struct_OC_btstack_linked_item* _90;
  struct l_struct_struct_OC_btstack_linked_item* _90__PHI_TEMPORARY;

#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _80 = (&_79->field0);
  _81 = *_80;
  if ((((_81 == 0u)&1))) {
    goto _91;
  } else {
    goto _92;
  }

_92:
#line 183 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _82 = (&_79->field1);
  _83 = *_82;
  _84 = *((&_83->field0));
  _85 = (&_79->field2);
  _86 = *_85;
  if ((((_84 == _86)&1))) {
    goto _93;
  } else {
    _88__PHI_TEMPORARY = _84;   /* for PHI node */
    goto _94;
  }

_93:
#line 184 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *_82 = _84;
#line 185 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _87 = *((&_84->field0));
  _88__PHI_TEMPORARY = _87;   /* for PHI node */
  goto _94;

_94:
  _88 = _88__PHI_TEMPORARY;
  *_85 = _88;
  _90__PHI_TEMPORARY = _88;   /* for PHI node */
  goto _95;

_91:
#line 191 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *_80 = 1;
  _89 = *((&_79->field2));
  _90__PHI_TEMPORARY = _89;   /* for PHI node */
  goto _95;

_95:
#line 193 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _90 = _90__PHI_TEMPORARY;
  return _90;
}


void btstack_linked_list_iterator_remove(struct l_struct_struct_OC_btstack_linked_list_iterator_t* _96) {
  struct l_struct_struct_OC_btstack_linked_item** _97;
  uint32_t* _98;
  uint32_t _99;
  uint32_t* _100;

#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  ;
#line 198 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _97 = (&_96->field2);
  _98 = *(((uint32_t**)_97));
  _99 = *_98;
  *(((uint32_t*)_97)) = _99;
#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  _100 = *(((uint32_t**)((&_96->field1))));
  *_100 = _99;
#line 200 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
  *((&_96->field0)) = 0;
}

