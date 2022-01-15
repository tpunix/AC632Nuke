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

/* Function definitions */

/* Types Definitions */
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_1_uint8_t {
  uint8_t array[1];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern uint8_t profile_debug_enable;

/* Function Declarations */
uint8_t obex_connection_req(uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t _swap16(uint16_t);
uint16_t fill_targer(uint8_t*, uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
uint32_t rfcomm_send_internal(uint16_t, uint8_t*, uint16_t);
uint8_t send_accept_opp_connection(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void send_accept_disconnection(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void send_accept_opp_put_cmd(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void send_success_ending(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void send_continue_respone(uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_32(uint8_t*, uint16_t, uint32_t);
void send_abort_cmd(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_unicode_name(uint8_t*, uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t fill_empty_name(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_type(uint8_t*, uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_who_HI(uint8_t*, uint16_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t fill_length_of_object(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t prase_put_packet(uint8_t*, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_16_uint8_t obex_connection_req_OC_UUID = { "ya5\xF0\xF0\xC5\x11\xD8\tf\x08\x00 \x0C\x9A\x66" };
struct l_array_50_uint8_t send_cmd_buf __ATTRIBUTE_WEAK__ __HIDDEN__;
static struct l_array_24_uint8_t _OC_str = { "<BT-log> :herd %d, %d \n" };
static struct l_array_25_uint8_t _OC_str_OC_1 = { "[pro-info] :send err %d\n" };
static struct l_array_5_uint8_t send_accept_opp_put_cmd_OC_oppOpcode2 = { "\x90\x00\x03\x00" };
static struct l_array_5_uint8_t send_success_ending_OC_oppOpcode3 = { "\xA0\x00\x03\x00" };
static struct l_array_10_uint8_t send_continue_respone_OC_opCode = { "\x83\x00\x08\xCB\x00\x00\x00\x00\x00" };
static struct l_array_5_uint8_t send_abort_cmd_OC_opCode = { "\xFF\x00\x03\x00" };
static struct l_array_1_uint8_t _OC_str_OC_2;
static struct l_array_27_uint8_t _OC_str_OC_3 = { "[pro-info] :total len: %d\n" };
static struct l_array_48_uint8_t _OC_str_OC_4 = { "[pro-info] :header %d not support or parse err\n" };


/* LLVM Intrinsic Builtin Function Bodies */
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
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_OC_bswap_OC_i16(uint16_t a) {
  uint16_t r;
  LLVMFlipAllBits(8 * sizeof(a), &a, &r);
  return r;
}


/* Function Bodies */

uint8_t obex_connection_req(uint16_t _1, uint8_t* _2, uint8_t _3) {
  uint16_t _4;
  uint32_t _5;
  uint16_t _6;
  uint16_t _6__PHI_TEMPORARY;
  uint32_t _7;
  uint32_t _7__PHI_TEMPORARY;
  uint8_t _8;
  uint16_t _9;
  uint16_t _10;
  uint8_t _11;
  uint32_t _12;
  uint32_t _13;
  uint16_t _14;
  uint16_t _14__PHI_TEMPORARY;
  uint32_t _15;
  uint16_t _16;
  uint16_t _16__PHI_TEMPORARY;
  uint8_t _17;
  uint32_t _18;
  uint16_t _19;
  uint32_t _20;
  uint8_t _21;
  uint8_t _22;
  uint8_t _22__PHI_TEMPORARY;

#line 25 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
  ;
  ;
#line 39 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _4 =  /*tail*/ _swap16(1014);
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 29 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 28 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 28 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 42 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _5 = ((uint32_t)(uint8_t)_3);
  if ((((_3 == ((uint8_t)0))&1))) {
    _16__PHI_TEMPORARY = 7;   /* for PHI node */
    goto _23;
  } else {
    goto _24;
  }

_24:
  _6__PHI_TEMPORARY = 7;   /* for PHI node */
  _7__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _25;

  do {     /* Syntactic loop '' to make GCC happy */
_25:
  _6 = _6__PHI_TEMPORARY;
  _7 = _7__PHI_TEMPORARY;
#line 43 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _8 = *((&_2[((int32_t)_7)]));
  if ((((_8 == ((uint8_t)70))&1))) {
    goto _26;
  } else {
    _14__PHI_TEMPORARY = _6;   /* for PHI node */
    goto _27;
  }

_26:
#line 31 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 47 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _9 =  /*tail*/ fill_targer(((&send_cmd_buf.array[((int32_t)0)])), 7, ((&obex_connection_req_OC_UUID.array[((int32_t)0)])), 16);
#line 30 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 48 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _10 =  /*tail*/ _swap16((llvm_add_u16(_9, -1)));
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 49 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _11 = l2cap_debug_enable;
  if ((((((int8_t)_11) < ((int8_t)((uint8_t)0)))&1))) {
    goto _28;
  } else {
    _14__PHI_TEMPORARY = _10;   /* for PHI node */
    goto _27;
  }

_28:
  _12 = ((uint32_t)(uint16_t)_10);
  _13 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), 16, (((_12 << 8) & 65280) | (llvm_lshr_u32(_12, 8))));
  _14__PHI_TEMPORARY = _10;   /* for PHI node */
  goto _27;

_27:
  _14 = _14__PHI_TEMPORARY;
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 42 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _15 = llvm_add_u32(_7, 1);
#line 28 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 28 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 42 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_15 == _5)&1))) {
    goto _29;
  } else {
    _6__PHI_TEMPORARY = _14;   /* for PHI node */
    _7__PHI_TEMPORARY = _15;   /* for PHI node */
    goto _25;
  }

  } while (1); /* end of syntactic loop '' */
_29:
  _16__PHI_TEMPORARY = _14;   /* for PHI node */
  goto _23;

_23:
  _16 = _16__PHI_TEMPORARY;
#line 55 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&send_cmd_buf.array[((int32_t)0)])) = 128u;
  __UNALIGNED_LOAD__(uint16_t, 1, ((uint16_t*)((&send_cmd_buf.array[((int32_t)1)])))) = _16;
  *((&send_cmd_buf.array[((int32_t)3)])) = 16;
  *((&send_cmd_buf.array[((int32_t)4)])) = 0;
  __UNALIGNED_LOAD__(uint16_t, 1, ((uint16_t*)((&send_cmd_buf.array[((int32_t)5)])))) = _4;
#line 56 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _17 = l2cap_debug_enable;
  if (((((llvm_and_u8(_17, 64u)) == ((uint8_t)0))&1))) {
    goto _30;
  } else {
    goto _31;
  }

_31:
  _18 = ((uint32_t)(uint16_t)_16);
   /*tail*/ put_buf(((&send_cmd_buf.array[((int32_t)0)])), (((_18 << 8) & 65280) | (llvm_lshr_u32(_18, 8))));
  goto _30;

_30:
#line 57 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_1 == ((uint16_t)0))&1))) {
    _22__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _32;
  } else {
    goto _33;
  }

_33:
  _19 =  /*tail*/ llvm_OC_bswap_OC_i16(_16);
#line 58 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _20 =  /*tail*/ rfcomm_send_internal(_1, ((&send_cmd_buf.array[((int32_t)0)])), _19);
  _21 = ((uint8_t)_20);
  _22__PHI_TEMPORARY = _21;   /* for PHI node */
  goto _32;

_32:
  _22 = _22__PHI_TEMPORARY;
  return _22;
}


uint16_t fill_targer(uint8_t* _34, uint16_t _35, uint8_t* _36, uint8_t _37) {
  uint32_t _38;
  uint32_t _39;
  uint32_t _40;
  uint32_t _40__PHI_TEMPORARY;
  uint16_t _41;
  uint16_t _41__PHI_TEMPORARY;
  uint8_t _42;
  uint16_t _43;
  uint32_t _44;
  uint16_t _45;
  uint16_t _45__PHI_TEMPORARY;
  uint32_t _46;
  uint32_t _46__PHI_TEMPORARY;

#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
  ;
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_34[((int32_t)(((uint32_t)(uint16_t)_35)))])) = 70u;
#line 165 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _38 = ((uint32_t)(uint8_t)_37);
   /*tail*/ net_store_16(_34, (llvm_add_u16(_35, 1)), (((uint16_t)(llvm_add_u32(_38, 3)))));
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _39 = ((uint32_t)(uint16_t)(llvm_add_u16(_35, 3)));
  if ((((_37 == ((uint8_t)0))&1))) {
    _45__PHI_TEMPORARY = 0;   /* for PHI node */
    _46__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _47;
  } else {
    goto _48;
  }

_48:
  _40__PHI_TEMPORARY = 0;   /* for PHI node */
  _41__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _49;

  do {     /* Syntactic loop '' to make GCC happy */
_49:
  _40 = _40__PHI_TEMPORARY;
  _41 = _41__PHI_TEMPORARY;
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _42 = *((&_36[((int32_t)_40)]));
  *((&_34[((int32_t)(llvm_add_u32(_40, _39)))])) = _42;
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _43 = llvm_add_u16(_41, 1);
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _44 = ((uint32_t)(uint16_t)_43);
  if ((((((uint32_t)_44) < ((uint32_t)_38))&1))) {
    _40__PHI_TEMPORARY = _44;   /* for PHI node */
    _41__PHI_TEMPORARY = _43;   /* for PHI node */
    goto _49;
  } else {
    goto _50;
  }

  } while (1); /* end of syntactic loop '' */
_50:
  _45__PHI_TEMPORARY = _43;   /* for PHI node */
  _46__PHI_TEMPORARY = _44;   /* for PHI node */
  goto _47;

_47:
  _45 = _45__PHI_TEMPORARY;
  _46 = _46__PHI_TEMPORARY;
#line 171 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_34[((int32_t)(llvm_add_u32(_46, _39)))])) = 0;
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  return (llvm_add_u16((llvm_add_u16(_35, 4)), _45));
}


uint8_t send_accept_opp_connection(uint16_t _51) {
  uint16_t _52;
  uint16_t _53;
  uint16_t _54;
  uint32_t _55;
  uint8_t _56;
  uint8_t _57;
  uint8_t _57__PHI_TEMPORARY;

#line 63 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _52 =  /*tail*/ _swap16(7);
#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _53 =  /*tail*/ _swap16(1014);
#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 72 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&send_cmd_buf.array[((int32_t)0)])) = 160u;
  __UNALIGNED_LOAD__(uint16_t, 1, ((uint16_t*)((&send_cmd_buf.array[((int32_t)1)])))) = _52;
  *((&send_cmd_buf.array[((int32_t)3)])) = 16;
  *((&send_cmd_buf.array[((int32_t)4)])) = 0;
  __UNALIGNED_LOAD__(uint16_t, 1, ((uint16_t*)((&send_cmd_buf.array[((int32_t)5)])))) = _53;
#line 73 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_51 == ((uint16_t)0))&1))) {
    _57__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _58;
  } else {
    goto _59;
  }

_59:
  _54 =  /*tail*/ llvm_OC_bswap_OC_i16(_52);
#line 74 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _55 =  /*tail*/ rfcomm_send_internal(_51, ((&send_cmd_buf.array[((int32_t)0)])), _54);
  _56 = ((uint8_t)_55);
  _57__PHI_TEMPORARY = _56;   /* for PHI node */
  goto _58;

_58:
  _57 = _57__PHI_TEMPORARY;
  return _57;
}


void send_accept_disconnection(uint16_t _60) {
  struct l_array_5_uint8_t _61;    /* Address-exposed local */
  uint8_t* _62;
  uint8_t* _63;
  uint32_t _64;
  uint32_t _64__PHI_TEMPORARY;
  uint32_t _65;
  uint8_t _66;
  uint32_t _67;
  uint32_t _68;

#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _62 = (&_61.array[((int32_t)0)]);
  ;
  _63 = memcpy(_62, ((&send_success_ending_OC_oppOpcode3.array[((int32_t)0)])), 5);
#line 83 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  _64__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _69;

  do {     /* Syntactic loop '' to make GCC happy */
_69:
  _64 = _64__PHI_TEMPORARY;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _65 = rfcomm_send_internal(_60, _62, 3);
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_65 == 0u)&1))) {
    goto _70;
  } else {
    goto _71;
  }

_71:
#line 90 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _66 = profile_debug_enable;
  if (((((llvm_and_u8(_66, 1)) == ((uint8_t)0))&1))) {
    goto _72;
  } else {
    goto _73;
  }

_73:
  _67 = printf(((&_OC_str_OC_1.array[((int32_t)0)])), _65);
  goto _72;

_72:
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _68 = llvm_add_u32(_64, 1);
#line 83 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((((int32_t)_68) < ((int32_t)3u))&1))) {
    _64__PHI_TEMPORARY = _68;   /* for PHI node */
    goto _69;
  } else {
    goto _70;
  }

  } while (1); /* end of syntactic loop '' */
_70:
  return;
}


void send_accept_opp_put_cmd(uint16_t _74) {
  struct l_array_5_uint8_t _75;    /* Address-exposed local */
  uint8_t* _76;
  uint8_t* _77;
  uint32_t _78;
  uint32_t _78__PHI_TEMPORARY;
  uint32_t _79;
  uint8_t _80;
  uint32_t _81;
  uint32_t _82;

#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _76 = (&_75.array[((int32_t)0)]);
  ;
  _77 = memcpy(_76, ((&send_accept_opp_put_cmd_OC_oppOpcode2.array[((int32_t)0)])), 5);
#line 100 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  _78__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _83;

  do {     /* Syntactic loop '' to make GCC happy */
_83:
  _78 = _78__PHI_TEMPORARY;
#line 103 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _79 = rfcomm_send_internal(_74, _76, 3);
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_79 == 0u)&1))) {
    goto _84;
  } else {
    goto _85;
  }

_85:
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _80 = profile_debug_enable;
  if (((((llvm_and_u8(_80, 1)) == ((uint8_t)0))&1))) {
    goto _86;
  } else {
    goto _87;
  }

_87:
  _81 = printf(((&_OC_str_OC_1.array[((int32_t)0)])), _79);
  goto _86;

_86:
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _82 = llvm_add_u32(_78, 1);
#line 100 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((((int32_t)_82) < ((int32_t)3u))&1))) {
    _78__PHI_TEMPORARY = _82;   /* for PHI node */
    goto _83;
  } else {
    goto _84;
  }

  } while (1); /* end of syntactic loop '' */
_84:
  return;
}


void send_success_ending(uint16_t _88) {
  struct l_array_5_uint8_t _89;    /* Address-exposed local */
  uint8_t* _90;
  uint8_t* _91;
  uint32_t _92;

#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 114 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _90 = (&_89.array[((int32_t)0)]);
  ;
  _91 = memcpy(_90, ((&send_success_ending_OC_oppOpcode3.array[((int32_t)0)])), 5);
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _92 = rfcomm_send_internal(_88, _90, 3);
}


void send_continue_respone(uint16_t _93, uint32_t _94) {
  struct l_array_10_uint8_t _95;    /* Address-exposed local */
  uint8_t* _96;
  uint8_t* _97;
  uint32_t _98;

#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _96 = (&_95.array[((int32_t)0)]);
  ;
  _97 = memcpy(_96, ((&send_continue_respone_OC_opCode.array[((int32_t)0)])), 10);
#line 121 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  net_store_32(_96, 4, _94);
#line 122 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _98 = rfcomm_send_internal(_93, _96, 8);
}


void send_abort_cmd(uint16_t _99) {
  struct l_array_5_uint8_t _100;    /* Address-exposed local */
  uint8_t* _101;
  uint8_t* _102;
  uint32_t _103;

#line 125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _101 = (&_100.array[((int32_t)0)]);
  ;
  _102 = memcpy(_101, ((&send_abort_cmd_OC_opCode.array[((int32_t)0)])), 5);
#line 128 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _103 = rfcomm_send_internal(_99, _101, 3);
}


uint32_t fill_unicode_name(uint8_t* _104, uint16_t _105, uint8_t* _106, uint8_t _107) {
  uint32_t _108;
  uint16_t _109;
  uint16_t _110;
  uint16_t _111;
  uint16_t _111__PHI_TEMPORARY;
  uint32_t _112;
  uint32_t _112__PHI_TEMPORARY;
  uint16_t _113;
  uint16_t _113__PHI_TEMPORARY;
  uint16_t _114;
  uint16_t _114__PHI_TEMPORARY;
  uint8_t _115;
  uint16_t _116;
  uint16_t _117;
  uint32_t _118;
  uint16_t _119;
  uint16_t _120;
  uint16_t _120__PHI_TEMPORARY;
  uint16_t _121;
  uint16_t _121__PHI_TEMPORARY;

#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
  ;
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_104[((int32_t)(((uint32_t)(uint16_t)_105)))])) = 1;
#line 139 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _108 = ((uint32_t)(uint8_t)_107);
   /*tail*/ net_store_16(_104, (llvm_add_u16(_105, 1)), (((uint16_t)(llvm_add_u32((_108 << 1), 5)))));
#line 141 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _109 = llvm_add_u16(_105, 3);
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _110 = llvm_add_u16(_105, 4);
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  *((&_104[((int32_t)(((uint32_t)(uint16_t)_109)))])) = 0;
  if ((((_107 == ((uint8_t)0))&1))) {
    _120__PHI_TEMPORARY = _109;   /* for PHI node */
    _121__PHI_TEMPORARY = _110;   /* for PHI node */
    goto _122;
  } else {
    goto _123;
  }

_123:
  _111__PHI_TEMPORARY = _110;   /* for PHI node */
  _112__PHI_TEMPORARY = 0;   /* for PHI node */
  _113__PHI_TEMPORARY = 0;   /* for PHI node */
  _114__PHI_TEMPORARY = _109;   /* for PHI node */
  goto _124;

  do {     /* Syntactic loop '' to make GCC happy */
_124:
  _111 = _111__PHI_TEMPORARY;
  _112 = _112__PHI_TEMPORARY;
  _113 = _113__PHI_TEMPORARY;
  _114 = _114__PHI_TEMPORARY;
#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _115 = *((&_106[((int32_t)_112)]));
  _116 = llvm_add_u16(_114, 2);
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_104[((int32_t)(((uint32_t)(uint16_t)_111)))])) = _115;
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _117 = llvm_add_u16(_113, 1);
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _118 = ((uint32_t)(uint16_t)_117);
  _119 = llvm_add_u16(_114, 3);
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  *((&_104[((int32_t)(((uint32_t)(uint16_t)_116)))])) = 0;
  if ((((((uint32_t)_118) < ((uint32_t)_108))&1))) {
    _111__PHI_TEMPORARY = _119;   /* for PHI node */
    _112__PHI_TEMPORARY = _118;   /* for PHI node */
    _113__PHI_TEMPORARY = _117;   /* for PHI node */
    _114__PHI_TEMPORARY = _116;   /* for PHI node */
    goto _124;
  } else {
    goto _125;
  }

  } while (1); /* end of syntactic loop '' */
_125:
  _120__PHI_TEMPORARY = _116;   /* for PHI node */
  _121__PHI_TEMPORARY = _119;   /* for PHI node */
  goto _122;

_122:
  _120 = _120__PHI_TEMPORARY;
  _121 = _121__PHI_TEMPORARY;
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_104[((int32_t)(((uint32_t)(uint16_t)_121)))])) = 0;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  return (((uint32_t)(uint16_t)(llvm_add_u16(_120, 2))));
}


uint32_t fill_empty_name(uint8_t* _126, uint16_t _127) {
  uint32_t _128;

#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _128 =  /*tail*/ fill_unicode_name(_126, _127, ((&_OC_str_OC_2.array[((int32_t)0)])), 0);
  return _128;
}


uint32_t fill_type(uint8_t* _129, uint16_t _130, uint8_t* _131, uint8_t _132) {
  uint32_t _133;
  uint32_t _134;
  uint32_t _135;
  uint32_t _135__PHI_TEMPORARY;
  uint16_t _136;
  uint16_t _136__PHI_TEMPORARY;
  uint8_t _137;
  uint16_t _138;
  uint32_t _139;
  uint32_t _140;
  uint32_t _141;
  uint32_t _141__PHI_TEMPORARY;
  uint32_t _142;
  uint32_t _142__PHI_TEMPORARY;

#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
  ;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_129[((int32_t)(((uint32_t)(uint16_t)_130)))])) = 66u;
#line 183 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _133 = ((uint32_t)(uint8_t)_132);
   /*tail*/ net_store_16(_129, (llvm_add_u16(_130, 1)), (((uint16_t)(llvm_add_u32(_133, 4)))));
#line 185 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _134 = ((uint32_t)(uint16_t)(llvm_add_u16(_130, 3)));
  if ((((_132 == ((uint8_t)0))&1))) {
    _141__PHI_TEMPORARY = 1;   /* for PHI node */
    _142__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _143;
  } else {
    goto _144;
  }

_144:
  _135__PHI_TEMPORARY = 0;   /* for PHI node */
  _136__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _145;

  do {     /* Syntactic loop '' to make GCC happy */
_145:
  _135 = _135__PHI_TEMPORARY;
  _136 = _136__PHI_TEMPORARY;
#line 187 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _137 = *((&_131[((int32_t)_135)]));
  *((&_129[((int32_t)(llvm_add_u32(_135, _134)))])) = _137;
#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _138 = llvm_add_u16(_136, 1);
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _139 = ((uint32_t)(uint16_t)_138);
  if ((((((uint32_t)_139) < ((uint32_t)_133))&1))) {
    _135__PHI_TEMPORARY = _139;   /* for PHI node */
    _136__PHI_TEMPORARY = _138;   /* for PHI node */
    goto _145;
  } else {
    goto _146;
  }

  } while (1); /* end of syntactic loop '' */
_146:
#line 189 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _140 = ((uint32_t)(uint16_t)(llvm_add_u16(_136, 2)));
  _141__PHI_TEMPORARY = _140;   /* for PHI node */
  _142__PHI_TEMPORARY = _139;   /* for PHI node */
  goto _143;

_143:
  _141 = _141__PHI_TEMPORARY;
  _142 = _142__PHI_TEMPORARY;
  *((&_129[((int32_t)(llvm_add_u32(_142, _134)))])) = 0;
#line 191 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  return (llvm_add_u32(_141, _134));
}


uint32_t fill_who_HI(uint8_t* _147, uint16_t _148, uint8_t* _149, uint32_t _150) {
  uint16_t _151;
  uint16_t _152;
  uint32_t _153;
  uint32_t _153__PHI_TEMPORARY;
  uint16_t _154;
  uint16_t _154__PHI_TEMPORARY;
  uint8_t _155;
  uint32_t _156;
  uint16_t _157;
  uint16_t _158;
  uint16_t _158__PHI_TEMPORARY;

#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
  ;
#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 197 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 197 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_147[((int32_t)(((uint32_t)(uint16_t)_148)))])) = 74u;
#line 198 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 198 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_147[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_148, 1)))))])) = 0;
#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _151 = llvm_add_u16(_148, 3);
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_147[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_148, 2)))))])) = (((uint8_t)(llvm_add_u32(_150, 3))));
#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 200 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_150 == 0u)&1))) {
    _158__PHI_TEMPORARY = _151;   /* for PHI node */
    goto _159;
  } else {
    goto _160;
  }

_160:
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _152 = llvm_add_u16((((uint16_t)(llvm_add_u32(_150, 65535)))), _148);
  _153__PHI_TEMPORARY = 0;   /* for PHI node */
  _154__PHI_TEMPORARY = _151;   /* for PHI node */
  goto _161;

  do {     /* Syntactic loop '' to make GCC happy */
_161:
  _153 = _153__PHI_TEMPORARY;
  _154 = _154__PHI_TEMPORARY;
  _155 = *((&_149[((int32_t)_153)]));
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_147[((int32_t)(((uint32_t)(uint16_t)_154)))])) = _155;
#line 200 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _156 = llvm_add_u32(_153, 1);
#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 200 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_156 == _150)&1))) {
    goto _162;
  } else {
    _153__PHI_TEMPORARY = _156;   /* for PHI node */
    _154__PHI_TEMPORARY = (llvm_add_u16(_154, 1));   /* for PHI node */
    goto _161;
  }

  } while (1); /* end of syntactic loop '' */
_162:
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _157 = llvm_add_u16(_152, 4);
  _158__PHI_TEMPORARY = _157;   /* for PHI node */
  goto _159;

_159:
  _158 = _158__PHI_TEMPORARY;
#line 203 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  return (((uint32_t)(uint16_t)_158));
}


uint32_t fill_length_of_object(uint8_t* _163, uint16_t _164, uint32_t _165) {
  uint16_t _166;

#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
#line 212 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _166 = llvm_add_u16(_164, 1);
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 212 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  *((&_163[((int32_t)(((uint32_t)(uint16_t)_164)))])) = -61;
#line 213 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
   /*tail*/ net_store_32(_163, _166, _165);
#line 214 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  return (llvm_add_u32((((uint32_t)(uint16_t)_166)), 4));
}


uint32_t prase_put_packet(uint8_t* _167, uint16_t _168, uint8_t _169) {
  uint32_t _170;
  uint8_t _171;
  uint8_t _172;
  uint32_t _173;
  uint32_t _174;
  uint32_t _174__PHI_TEMPORARY;
  uint8_t* _175;
  uint8_t _176;
  uint8_t _177;
  uint8_t _178;
  uint32_t _179;
  uint8_t _180;
  uint8_t _181;
  uint32_t _182;
  uint8_t _183;
  uint8_t _184;
  uint8_t _185;
  uint8_t _186;
  uint8_t _187;
  uint32_t _188;
  uint8_t _189;
  uint8_t _190;
  uint8_t _191;
  uint32_t _192;
  uint8_t _193;
  uint8_t _194;
  uint32_t _195;
  uint8_t _196;
  uint32_t _197;
  uint8_t _198;
  uint8_t _198__PHI_TEMPORARY;
  uint32_t _199;
  uint32_t _199__PHI_TEMPORARY;
  uint32_t _200;
  uint32_t _201;
  uint32_t _201__PHI_TEMPORARY;
  uint32_t _202;
  uint32_t _202__PHI_TEMPORARY;

#line 227 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
  ;
  ;
#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 232 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_169 == ((uint8_t)0))&1))) {
    goto _203;
  } else {
    goto _204;
  }

_204:
  _170 = ((uint32_t)(uint16_t)_168);
  _174__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _205;

_203:
#line 233 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _171 = *((&_167[((int32_t)2)]));
  _172 = *((&_167[((int32_t)1)]));
  _173 = ((((uint32_t)(uint8_t)_172)) << 8) | (((uint32_t)(uint8_t)_171));
  _202__PHI_TEMPORARY = _173;   /* for PHI node */
  goto _206;

  do {     /* Syntactic loop '' to make GCC happy */
_205:
  _174 = _174__PHI_TEMPORARY;
#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 236 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((((int32_t)_174) < ((int32_t)_170))&1))) {
    goto _207;
  } else {
    _201__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _208;
  }

_207:
#line 230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _175 = (&_167[((int32_t)_174)]);
  _176 = *_175;
  switch (_176) {
  default:
    goto _209;
  case ((uint8_t)-64):
    _198__PHI_TEMPORARY = _176;   /* for PHI node */
    _199__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _210;
  case ((uint8_t)1):
    goto _211;
  case ((uint8_t)66):
    goto _212;
  case ((uint8_t)-61):
    goto _213;
  case ((uint8_t)72):
    goto _214;
  case ((uint8_t)73):
    goto _214;
  case ((uint8_t)-53):
    _198__PHI_TEMPORARY = _176;   /* for PHI node */
    _199__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _210;
  case ((uint8_t)76):
    goto _215;
  }

_215:
#line 269 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _193 = *((&_167[((int32_t)(llvm_add_u32(_174, 2)))]));
  _194 = *((&_167[((int32_t)(llvm_add_u32(_174, 1)))]));
  _195 = ((((uint32_t)(uint8_t)_194)) << 8) | (((uint32_t)(uint8_t)_193));
  _198__PHI_TEMPORARY = 76u;   /* for PHI node */
  _199__PHI_TEMPORARY = _195;   /* for PHI node */
  goto _210;

_214:
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _190 = *((&_167[((int32_t)(llvm_add_u32(_174, 2)))]));
  _191 = *((&_167[((int32_t)(llvm_add_u32(_174, 1)))]));
  _192 = ((((uint32_t)(uint8_t)_191)) << 8) | (((uint32_t)(uint8_t)_190));
  _198__PHI_TEMPORARY = _176;   /* for PHI node */
  _199__PHI_TEMPORARY = _192;   /* for PHI node */
  goto _210;

_213:
#line 251 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _183 = profile_debug_enable;
  if (((((llvm_and_u8(_183, 1)) == ((uint8_t)0))&1))) {
    _198__PHI_TEMPORARY = -61;   /* for PHI node */
    _199__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _210;
  } else {
    goto _216;
  }

_216:
  _184 = *((&_167[((int32_t)(llvm_add_u32(_174, 4)))]));
  _185 = *((&_167[((int32_t)(llvm_add_u32(_174, 3)))]));
  _186 = *((&_167[((int32_t)(llvm_add_u32(_174, 2)))]));
  _187 = *((&_167[((int32_t)(llvm_add_u32(_174, 1)))]));
  _188 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((((((uint32_t)(uint8_t)_185)) << 8) | (((uint32_t)(uint8_t)_184))) | ((((uint32_t)(uint8_t)_186)) << 16)) | ((((uint32_t)(uint8_t)_187)) << 24)));
  _189 = *_175;
  _198__PHI_TEMPORARY = _189;   /* for PHI node */
  _199__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _210;

_212:
#line 248 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _180 = *((&_167[((int32_t)(llvm_add_u32(_174, 2)))]));
  _181 = *((&_167[((int32_t)(llvm_add_u32(_174, 1)))]));
  _182 = ((((uint32_t)(uint8_t)_181)) << 8) | (((uint32_t)(uint8_t)_180));
  _198__PHI_TEMPORARY = 66u;   /* for PHI node */
  _199__PHI_TEMPORARY = _182;   /* for PHI node */
  goto _210;

_211:
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _177 = *((&_167[((int32_t)(llvm_add_u32(_174, 2)))]));
  _178 = *((&_167[((int32_t)(llvm_add_u32(_174, 1)))]));
  _179 = ((((uint32_t)(uint8_t)_178)) << 8) | (((uint32_t)(uint8_t)_177));
  _198__PHI_TEMPORARY = 1;   /* for PHI node */
  _199__PHI_TEMPORARY = _179;   /* for PHI node */
  goto _210;

_210:
#line 283 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _198 = _198__PHI_TEMPORARY;
  _199 = _199__PHI_TEMPORARY;
  _200 = llvm_add_u32(_199, _174);
#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  ;
#line 283 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  if ((((_198 == _169)&1))) {
    _201__PHI_TEMPORARY = _174;   /* for PHI node */
    goto _208;
  } else {
    _174__PHI_TEMPORARY = _200;   /* for PHI node */
    goto _205;
  }

  } while (1); /* end of syntactic loop '' */
_209:
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _196 = profile_debug_enable;
  if (((((llvm_and_u8(_196, 1)) == ((uint8_t)0))&1))) {
    _202__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _206;
  } else {
    goto _217;
  }

_217:
#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
  _197 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint8_t)_176)));
  _202__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _206;

_208:
  _201 = _201__PHI_TEMPORARY;
  _202__PHI_TEMPORARY = _201;   /* for PHI node */
  goto _206;

_206:
  _202 = _202__PHI_TEMPORARY;
  return _202;
}

