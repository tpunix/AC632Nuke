/* Provide Declarations */
#include <stdarg.h>
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

/* Function definitions */

/* Types Definitions */
struct l_array_22_uint8_t_KC_ {
  uint8_t* array[22];
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};

/* External Global Variable Declarations */

/* Function Declarations */
uint16_t l2cap_outgoing_acl_len(uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_create_signaling_internal_bredr(uint8_t*, uint16_t, uint32_t, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint16_t l2cap_create_signaling_internal(uint8_t*, uint16_t, uint16_t, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint16_t l2cap_create_signaling_internal_le(uint8_t*, uint16_t, uint32_t, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_store_16(uint8_t*, uint16_t, uint16_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_22_uint8_t_KC_ l2cap_signaling_commands_format = { { ((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_2.array[((int32_t)0)])), ((&_OC_str_OC_3.array[((int32_t)0)])), ((&_OC_str_OC_4.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_6.array[((int32_t)0)])), ((&_OC_str_OC_3.array[((int32_t)0)])), ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_2.array[((int32_t)0)])), ((&_OC_str_OC_6.array[((int32_t)0)])), ((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])) } };
static struct l_array_3_uint8_t _OC_str = { "2D" };
static struct l_array_3_uint8_t _OC_str_OC_1 = { "22" };
static struct l_array_5_uint8_t _OC_str_OC_2 = { "2222" };
static struct l_array_4_uint8_t _OC_str_OC_3 = { "22D" };
static struct l_array_5_uint8_t _OC_str_OC_4 = { "222D" };
static struct l_array_2_uint8_t _OC_str_OC_5 = { "D" };
static struct l_array_2_uint8_t _OC_str_OC_6 = { "2" };
static struct l_array_6_uint8_t _OC_str_OC_7 = { "22222" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_select_u16(bool condition, uint16_t iftrue, uint16_t ifnot) {
  uint16_t r;
  r = condition ? iftrue : ifnot;
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
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

uint16_t l2cap_outgoing_acl_len(uint32_t _1, uint8_t* _2) {
  uint8_t* _3;    /* Address-exposed local */
  uint8_t* _4;
  uint8_t _5;
  uint8_t _6;
  uint8_t _6__PHI_TEMPORARY;
  uint16_t _7;
  uint16_t _7__PHI_TEMPORARY;
  uint8_t* _8;
  uint8_t* _8__PHI_TEMPORARY;
  uint32_t _9;
  uint8_t _10;
  uint16_t _11;
  uint32_t _12;
  uint16_t _13;
  uint16_t _14;
  uint16_t _14__PHI_TEMPORARY;
  uint8_t* _15;
  uint8_t _16;
  uint16_t _17;
  uint16_t _17__PHI_TEMPORARY;

#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
  ;
  _3 = _2;
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 159 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _4 = *((&l2cap_signaling_commands_format.array[((int32_t)(llvm_add_u32(_1, -1)))]));
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 160 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _5 = *_4;
  if ((((_5 == ((uint8_t)0))&1))) {
    _17__PHI_TEMPORARY = 8;   /* for PHI node */
    goto _18;
  } else {
    goto _19;
  }

_19:
  _6__PHI_TEMPORARY = _5;   /* for PHI node */
  _7__PHI_TEMPORARY = 8;   /* for PHI node */
  _8__PHI_TEMPORARY = _4;   /* for PHI node */
  goto _20;

  do {     /* Syntactic loop '' to make GCC happy */
_20:
  _6 = _6__PHI_TEMPORARY;
  _7 = _7__PHI_TEMPORARY;
  _8 = _8__PHI_TEMPORARY;
#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  switch ((((int32_t)(int8_t)_6))) {
  default:
    _14__PHI_TEMPORARY = _7;   /* for PHI node */
    goto _21;
  case 49u:
    goto _22;
  case 50u:
    goto _22;
  case 68u:
    goto _23;
  }

_23:
#line 173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _12 = va_arg(*(va_list*)(&_3), uint32_t);
 ;
#line 155 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _13 = ((uint16_t)(llvm_add_u32(_12, (((uint32_t)(uint16_t)_7)))));
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
  _14__PHI_TEMPORARY = _13;   /* for PHI node */
  goto _21;

_22:
#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _9 = va_arg(*(va_list*)(&_3), uint32_t);
 ;
#line 155 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _10 = *_8;
  _11 = llvm_add_u16((llvm_select_u16((((_10 == ((uint8_t)50))&1)), 2, 1)), _7);
  _14__PHI_TEMPORARY = _11;   /* for PHI node */
  goto _21;

_21:
  _14 = _14__PHI_TEMPORARY;
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _15 = (&_8[((int32_t)1)]);
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 160 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _16 = *_15;
  if ((((_16 == ((uint8_t)0))&1))) {
    goto _24;
  } else {
    _6__PHI_TEMPORARY = _16;   /* for PHI node */
    _7__PHI_TEMPORARY = _14;   /* for PHI node */
    _8__PHI_TEMPORARY = _15;   /* for PHI node */
    goto _20;
  }

  } while (1); /* end of syntactic loop '' */
_24:
  _17__PHI_TEMPORARY = _14;   /* for PHI node */
  goto _18;

_18:
  _17 = _17__PHI_TEMPORARY;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  0; va_end(*(va_list*)(((uint8_t*)(&_3))));
  return _17;
}


uint16_t l2cap_create_signaling_internal_bredr(uint8_t* _25, uint16_t _26, uint32_t _27, uint8_t _28, uint8_t* _29) {
  uint16_t _30;

#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
  ;
  ;
  ;
  ;
#line 188 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _30 =  /*tail*/ l2cap_create_signaling_internal(_25, _26, 1, _27, (((uint32_t)(uint8_t)_28)), _29);
  return _30;
}


static uint16_t l2cap_create_signaling_internal(uint8_t* _31, uint16_t _32, uint16_t _33, uint32_t _34, uint32_t _35, uint8_t* _36) {
  uint8_t* _37;    /* Address-exposed local */
  uint8_t* _38;
  uint8_t _39;
  uint8_t _40;
  uint8_t _40__PHI_TEMPORARY;
  uint16_t _41;
  uint16_t _41__PHI_TEMPORARY;
  uint8_t* _42;
  uint8_t* _42__PHI_TEMPORARY;
  uint32_t _43;
  uint16_t _44;
  uint8_t _45;
  uint16_t _46;
  uint32_t _47;
  uint8_t* _48;
  uint32_t _49;
  uint8_t* _50;
  uint16_t _51;
  uint16_t _52;
  uint16_t _52__PHI_TEMPORARY;
  uint8_t* _53;
  uint8_t _54;
  uint16_t _55;
  uint16_t _55__PHI_TEMPORARY;

#line 84 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
  ;
  ;
  ;
  ;
  ;
  _37 = _36;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
   /*tail*/ bt_store_16(_31, 0, (llvm_or_u16(_32, 8192)));
#line 95 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
   /*tail*/ bt_store_16(_31, 6, _33);
#line 97 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  *((&_31[((int32_t)8)])) = (((uint8_t)_34));
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  *((&_31[((int32_t)9)])) = (((uint8_t)_35));
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 103 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _38 = *((&l2cap_signaling_commands_format.array[((int32_t)(llvm_add_u32(_34, -1)))]));
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _39 = *_38;
  if ((((_39 == ((uint8_t)0))&1))) {
    _55__PHI_TEMPORARY = 12;   /* for PHI node */
    goto _56;
  } else {
    goto _57;
  }

_57:
  _40__PHI_TEMPORARY = _39;   /* for PHI node */
  _41__PHI_TEMPORARY = 12;   /* for PHI node */
  _42__PHI_TEMPORARY = _38;   /* for PHI node */
  goto _58;

  do {     /* Syntactic loop '' to make GCC happy */
_58:
  _40 = _40__PHI_TEMPORARY;
  _41 = _41__PHI_TEMPORARY;
  _42 = _42__PHI_TEMPORARY;
#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  switch ((((int32_t)(int8_t)_40))) {
  default:
    _52__PHI_TEMPORARY = _41;   /* for PHI node */
    goto _59;
  case 49u:
    goto _60;
  case 50u:
    goto _60;
  case 68u:
    goto _61;
  }

_61:
#line 117 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _47 = va_arg(*(va_list*)(&_37), uint32_t);
 ;
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _48 = va_arg(*(va_list*)(&_37), uint8_t*);
 ;
#line 90 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 122 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _49 = ((uint32_t)(uint16_t)_41);
  _50 = memcpy(((&_31[((int32_t)_49)])), _48, _47);
#line 124 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _51 = ((uint16_t)(llvm_add_u32(_47, _49)));
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
  _52__PHI_TEMPORARY = _51;   /* for PHI node */
  goto _59;

_60:
#line 108 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _43 = va_arg(*(va_list*)(&_37), uint32_t);
 ;
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 110 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _44 = llvm_add_u16(_41, 1);
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 110 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  *((&_31[((int32_t)(((uint32_t)(uint16_t)_41)))])) = (((uint8_t)_43));
#line 111 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _45 = *_42;
  if ((((_45 == ((uint8_t)50))&1))) {
    goto _62;
  } else {
    _52__PHI_TEMPORARY = _44;   /* for PHI node */
    goto _59;
  }

_62:
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _46 = llvm_add_u16(_41, 2);
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  *((&_31[((int32_t)(((uint32_t)(uint16_t)_44)))])) = (((uint8_t)(llvm_lshr_u32(_43, 8))));
  _52__PHI_TEMPORARY = _46;   /* for PHI node */
  goto _59;

_59:
  _52 = _52__PHI_TEMPORARY;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _53 = (&_42[((int32_t)1)]);
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _54 = *_53;
  if ((((_54 == ((uint8_t)0))&1))) {
    goto _63;
  } else {
    _40__PHI_TEMPORARY = _54;   /* for PHI node */
    _41__PHI_TEMPORARY = _52;   /* for PHI node */
    _42__PHI_TEMPORARY = _53;   /* for PHI node */
    goto _58;
  }

  } while (1); /* end of syntactic loop '' */
_63:
  _55__PHI_TEMPORARY = _52;   /* for PHI node */
  goto _56;

_56:
  _55 = _55__PHI_TEMPORARY;
#line 131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  0; va_end(*(va_list*)(((uint8_t*)(&_37))));
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  bt_store_16(_31, 2, (llvm_add_u16(_55, -4)));
#line 139 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  bt_store_16(_31, 4, (llvm_add_u16(_55, -8)));
#line 141 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  bt_store_16(_31, 10, (llvm_add_u16(_55, -12)));
  return _55;
}


uint16_t l2cap_create_signaling_internal_le(uint8_t* _64, uint16_t _65, uint32_t _66, uint8_t _67, uint8_t* _68) {
  uint16_t _69;

#line 192 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  ;
  ;
  ;
  ;
  ;
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
  _69 =  /*tail*/ l2cap_create_signaling_internal(_64, _65, 5, _66, (((uint32_t)(uint8_t)_67)), _68);
  return _69;
}

