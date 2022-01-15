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

/* Function definitions */

/* Types Definitions */
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_256_uint8_t {
  uint8_t array[256];
};

/* External Global Variable Declarations */

/* Function Declarations */
uint16_t little_endian_read_16(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t little_endian_read_24(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t little_endian_read_32(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void little_endian_store_16(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void little_endian_store_32(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t big_endian_read_16(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t big_endian_read_32(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void big_endian_store_16(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void big_endian_store_32(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_bytes(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_24(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_48(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_56(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_64(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_128(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_256(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void reverse_bd_addr(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_store_16(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_store_32(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_16(uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_32(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_flip_addr(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swapX(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swap24(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swap32(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swap48(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swap56(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swap64(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void swap128(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_min(uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t btstack_max(uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
int8_t char_for_nibble(uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void printf_hexdump(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void log_info_hexdump(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void hexdump(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void hexdumpf(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void log_key(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void uuid_add_bluetooth_prefix(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t uuid_has_bluetooth_prefix(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* bd_addr_to_str(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t is_authenticated_link_key(uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint8_t crc8(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t crc8_check(uint8_t*, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t crc8_calc(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
struct l_array_16_uint8_t utl_bluetooth_base_uuid __HIDDEN__ = { "\x00\x00\x00\x00\x00\x00\x10\x00\x80\x00\x00\x80_\x9B\x34\xFB" };
static struct l_array_18_uint8_t utl_bd_addr_to_str_buffer;
static struct l_array_256_uint8_t utl_crc8table = { "\x00\x91\xE3r\a\x96\xE4u\x0E\x9F\xED|\t\x98\xEA{\x1C\x8D\xFFn\x1B\x8A\xF8i\x12\x83\xF1`\x15\x84\xF6g8\xA9\xDBJ?\xAE\xDCM6\xA7\xD5\x44\x31\xA0\xD2\x43$\xB5\xC7V#\xB2\xC0Q*\xBB\xC9X-\xBC\xCE_p\xE1\x93\x02w\xE6\x94\x05~\xEF\x9D\x0Cy\xE8\x9A\vl\xFD\x8F\x1Ek\xFA\x88\x19\x62\xF3\x81\x10\x65\xF4\x86\x17H\xD9\xAB:O\xDE\xAC=F\xD7\xA5\x34\x41\xD0\xA2\x33T\xC5\xB7&S\xC2\xB0!Z\xCB\xB9(]\xCC\xBE/\xE0q\x03\x92\xE7v\x04\x95\xEE\x7F\r\x9C\xE9x\n\x9B\xFCm\x1F\x8E\xFBj\x18\x89\xF2\x63\x11\x80\xF5\x64\x16\x87\xD8I;\xAA\xDFN<\xAD\xD6G5\xA4\xD1@2\xA3\xC4U'\xB6\xC3R \xB1\xCA[)\xB8\xCD\\.\xBF\x90\x01s\xE2\x97\x06t\xE5\x9E\x0F}\xEC\x99\x08z\xEB\x8C\x1Do\xFE\x8B\x1Ah\xF9\x82\x13\x61\xF0\x85\x14\x66\xF7\xA8\x39K\xDA\xAF>L\xDD\xA6\x37\x45\xD4\xA1\x30\x42\xD3\xB4%W\xC6\xB3\"P\xC1\xBA+Y\xC8\xBD,^\xCF" };


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
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
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
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
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
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}
static __forceinline uint8_t llvm_xor_u8(uint8_t a, uint8_t b) {
  uint8_t r = a ^ b;
  return r;
}
static __forceinline uint8_t llvm_not_u8(uint8_t a) {
  uint8_t r = ~a;
  return r;
}


/* Function Bodies */

uint16_t little_endian_read_16(uint8_t* _1, uint32_t _2) {
  uint8_t _3;
  uint8_t _4;

  _3 = *((&_1[((int32_t)_2)]));
  _4 = *((&_1[((int32_t)(llvm_add_u32(_2, 1)))]));
  return (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_4)), 8)), (((uint16_t)(uint8_t)_3))));
}


uint32_t little_endian_read_24(uint8_t* _5, uint32_t _6) {
  uint8_t _7;
  uint8_t _8;
  uint8_t _9;

  _7 = *((&_5[((int32_t)_6)]));
  _8 = *((&_5[((int32_t)(llvm_add_u32(_6, 1)))]));
  _9 = *((&_5[((int32_t)(llvm_add_u32(_6, 2)))]));
  return ((((((uint32_t)(uint8_t)_8)) << 8) | (((uint32_t)(uint8_t)_7))) | ((((uint32_t)(uint8_t)_9)) << 16));
}


uint32_t little_endian_read_32(uint8_t* _10, uint32_t _11) {
  uint8_t _12;
  uint8_t _13;
  uint8_t _14;
  uint8_t _15;

  _12 = *((&_10[((int32_t)_11)]));
  _13 = *((&_10[((int32_t)(llvm_add_u32(_11, 1)))]));
  _14 = *((&_10[((int32_t)(llvm_add_u32(_11, 2)))]));
  _15 = *((&_10[((int32_t)(llvm_add_u32(_11, 3)))]));
  return (((((((uint32_t)(uint8_t)_13)) << 8) | (((uint32_t)(uint8_t)_12))) | ((((uint32_t)(uint8_t)_14)) << 16)) | ((((uint32_t)(uint8_t)_15)) << 24));
}


void little_endian_store_16(uint8_t* _16, uint16_t _17, uint16_t _18) {
  *((&_16[((int32_t)(((uint32_t)(uint16_t)_17)))])) = (((uint8_t)_18));
  *((&_16[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_17, 1)))))])) = (((uint8_t)(llvm_lshr_u16(_18, 8))));
}


void little_endian_store_32(uint8_t* _19, uint16_t _20, uint32_t _21) {
  *((&_19[((int32_t)(((uint32_t)(uint16_t)_20)))])) = (((uint8_t)_21));
  *((&_19[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_20, 1)))))])) = (((uint8_t)(llvm_lshr_u32(_21, 8))));
  *((&_19[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_20, 2)))))])) = (((uint8_t)(llvm_lshr_u32(_21, 16))));
  *((&_19[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_20, 3)))))])) = (((uint8_t)(llvm_lshr_u32(_21, 24))));
}


uint32_t big_endian_read_16(uint8_t* _22, uint32_t _23) {
  uint8_t _24;
  uint8_t _25;

  _24 = *((&_22[((int32_t)(llvm_add_u32(_23, 1)))]));
  _25 = *((&_22[((int32_t)_23)]));
  return (((((uint32_t)(uint8_t)_25)) << 8) | (((uint32_t)(uint8_t)_24)));
}


uint32_t big_endian_read_32(uint8_t* _26, uint32_t _27) {
  uint8_t _28;
  uint8_t _29;
  uint8_t _30;
  uint8_t _31;

  _28 = *((&_26[((int32_t)(llvm_add_u32(_27, 3)))]));
  _29 = *((&_26[((int32_t)(llvm_add_u32(_27, 2)))]));
  _30 = *((&_26[((int32_t)(llvm_add_u32(_27, 1)))]));
  _31 = *((&_26[((int32_t)_27)]));
  return (((((((uint32_t)(uint8_t)_29)) << 8) | (((uint32_t)(uint8_t)_28))) | ((((uint32_t)(uint8_t)_30)) << 16)) | ((((uint32_t)(uint8_t)_31)) << 24));
}


void big_endian_store_16(uint8_t* _32, uint16_t _33, uint16_t _34) {
  *((&_32[((int32_t)(((uint32_t)(uint16_t)_33)))])) = (((uint8_t)(llvm_lshr_u16(_34, 8))));
  *((&_32[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_33, 1)))))])) = (((uint8_t)_34));
}


void big_endian_store_32(uint8_t* _35, uint16_t _36, uint32_t _37) {
  *((&_35[((int32_t)(((uint32_t)(uint16_t)_36)))])) = (((uint8_t)(llvm_lshr_u32(_37, 24))));
  *((&_35[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_36, 1)))))])) = (((uint8_t)(llvm_lshr_u32(_37, 16))));
  *((&_35[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_36, 2)))))])) = (((uint8_t)(llvm_lshr_u32(_37, 8))));
  *((&_35[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_36, 3)))))])) = (((uint8_t)_37));
}


void reverse_bytes(uint8_t* _38, uint8_t* _39, uint32_t _40) {
  uint32_t _41;
  uint32_t _42;
  uint32_t _42__PHI_TEMPORARY;
  uint8_t _43;
  uint32_t _44;

  if ((((((int32_t)_40) > ((int32_t)0u))&1))) {
    goto _45;
  } else {
    goto _46;
  }

_45:
  _41 = llvm_add_u32(_40, -1);
  _42__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _47;

  do {     /* Syntactic loop '' to make GCC happy */
_47:
  _42 = _42__PHI_TEMPORARY;
  _43 = *((&_38[((int32_t)_42)]));
  *((&_39[((int32_t)(llvm_sub_u32(_41, _42)))])) = _43;
  _44 = llvm_add_u32(_42, 1);
  if ((((_44 == _40)&1))) {
    goto _48;
  } else {
    _42__PHI_TEMPORARY = _44;   /* for PHI node */
    goto _47;
  }

  } while (1); /* end of syntactic loop '' */
_48:
  goto _46;

_46:
  return;
}


void reverse_24(uint8_t* _49, uint8_t* _50) {
  uint32_t _51;
  uint32_t _51__PHI_TEMPORARY;
  uint8_t _52;
  uint32_t _53;

  _51__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _54;

  do {     /* Syntactic loop '' to make GCC happy */
_54:
  _51 = _51__PHI_TEMPORARY;
  _52 = *((&_49[((int32_t)_51)]));
  *((&_50[((int32_t)(llvm_sub_u32(2, _51)))])) = _52;
  _53 = llvm_add_u32(_51, 1);
  if ((((_53 == 3u)&1))) {
    goto _55;
  } else {
    _51__PHI_TEMPORARY = _53;   /* for PHI node */
    goto _54;
  }

  } while (1); /* end of syntactic loop '' */
_55:
  return;
}


void reverse_48(uint8_t* _56, uint8_t* _57) {
  uint32_t _58;
  uint32_t _58__PHI_TEMPORARY;
  uint8_t _59;
  uint32_t _60;

  _58__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _61;

  do {     /* Syntactic loop '' to make GCC happy */
_61:
  _58 = _58__PHI_TEMPORARY;
  _59 = *((&_56[((int32_t)_58)]));
  *((&_57[((int32_t)(llvm_sub_u32(5, _58)))])) = _59;
  _60 = llvm_add_u32(_58, 1);
  if ((((_60 == 6u)&1))) {
    goto _62;
  } else {
    _58__PHI_TEMPORARY = _60;   /* for PHI node */
    goto _61;
  }

  } while (1); /* end of syntactic loop '' */
_62:
  return;
}


void reverse_56(uint8_t* _63, uint8_t* _64) {
  uint32_t _65;
  uint32_t _65__PHI_TEMPORARY;
  uint8_t _66;
  uint32_t _67;

  _65__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _68;

  do {     /* Syntactic loop '' to make GCC happy */
_68:
  _65 = _65__PHI_TEMPORARY;
  _66 = *((&_63[((int32_t)_65)]));
  *((&_64[((int32_t)(llvm_sub_u32(6, _65)))])) = _66;
  _67 = llvm_add_u32(_65, 1);
  if ((((_67 == 7u)&1))) {
    goto _69;
  } else {
    _65__PHI_TEMPORARY = _67;   /* for PHI node */
    goto _68;
  }

  } while (1); /* end of syntactic loop '' */
_69:
  return;
}


void reverse_64(uint8_t* _70, uint8_t* _71) {
  uint32_t _72;
  uint32_t _72__PHI_TEMPORARY;
  uint8_t _73;
  uint32_t _74;

  _72__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _75;

  do {     /* Syntactic loop '' to make GCC happy */
_75:
  _72 = _72__PHI_TEMPORARY;
  _73 = *((&_70[((int32_t)_72)]));
  *((&_71[((int32_t)(llvm_sub_u32(7, _72)))])) = _73;
  _74 = llvm_add_u32(_72, 1);
  if ((((_74 == 8u)&1))) {
    goto _76;
  } else {
    _72__PHI_TEMPORARY = _74;   /* for PHI node */
    goto _75;
  }

  } while (1); /* end of syntactic loop '' */
_76:
  return;
}


void reverse_128(uint8_t* _77, uint8_t* _78) {
  uint32_t _79;
  uint32_t _79__PHI_TEMPORARY;
  uint8_t _80;
  uint32_t _81;

  _79__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _82;

  do {     /* Syntactic loop '' to make GCC happy */
_82:
  _79 = _79__PHI_TEMPORARY;
  _80 = *((&_77[((int32_t)_79)]));
  *((&_78[((int32_t)(llvm_sub_u32(15, _79)))])) = _80;
  _81 = llvm_add_u32(_79, 1);
  if ((((_81 == 16u)&1))) {
    goto _83;
  } else {
    _79__PHI_TEMPORARY = _81;   /* for PHI node */
    goto _82;
  }

  } while (1); /* end of syntactic loop '' */
_83:
  return;
}


void reverse_256(uint8_t* _84, uint8_t* _85) {
  uint32_t _86;
  uint32_t _86__PHI_TEMPORARY;
  uint8_t _87;
  uint32_t _88;

  _86__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _89;

  do {     /* Syntactic loop '' to make GCC happy */
_89:
  _86 = _86__PHI_TEMPORARY;
  _87 = *((&_84[((int32_t)_86)]));
  *((&_85[((int32_t)(llvm_sub_u32(31, _86)))])) = _87;
  _88 = llvm_add_u32(_86, 1);
  if ((((_88 == 32u)&1))) {
    goto _90;
  } else {
    _86__PHI_TEMPORARY = _88;   /* for PHI node */
    goto _89;
  }

  } while (1); /* end of syntactic loop '' */
_90:
  return;
}


void reverse_bd_addr(uint8_t* _91, uint8_t* _92) {
  uint32_t _93;
  uint32_t _93__PHI_TEMPORARY;
  uint8_t _94;
  uint32_t _95;

  _93__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _96;

  do {     /* Syntactic loop '' to make GCC happy */
_96:
  _93 = _93__PHI_TEMPORARY;
  _94 = *((&_91[((int32_t)_93)]));
  *((&_92[((int32_t)(llvm_sub_u32(5, _93)))])) = _94;
  _95 = llvm_add_u32(_93, 1);
  if ((((_95 == 6u)&1))) {
    goto _97;
  } else {
    _93__PHI_TEMPORARY = _95;   /* for PHI node */
    goto _96;
  }

  } while (1); /* end of syntactic loop '' */
_97:
  return;
}


void bt_store_16(uint8_t* _98, uint16_t _99, uint16_t _100) {
  *((&_98[((int32_t)(((uint32_t)(uint16_t)_99)))])) = (((uint8_t)_100));
  *((&_98[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_99, 1)))))])) = (((uint8_t)(llvm_lshr_u16(_100, 8))));
}


void bt_store_32(uint8_t* _101, uint16_t _102, uint32_t _103) {
  *((&_101[((int32_t)(((uint32_t)(uint16_t)_102)))])) = (((uint8_t)_103));
  *((&_101[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_102, 1)))))])) = (((uint8_t)(llvm_lshr_u32(_103, 8))));
  *((&_101[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_102, 2)))))])) = (((uint8_t)(llvm_lshr_u32(_103, 16))));
  *((&_101[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_102, 3)))))])) = (((uint8_t)(llvm_lshr_u32(_103, 24))));
}


void net_store_16(uint8_t* _104, uint16_t _105, uint16_t _106) {
  *((&_104[((int32_t)(((uint32_t)(uint16_t)_105)))])) = (((uint8_t)(llvm_lshr_u16(_106, 8))));
  *((&_104[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_105, 1)))))])) = (((uint8_t)_106));
}


void net_store_32(uint8_t* _107, uint16_t _108, uint32_t _109) {
  *((&_107[((int32_t)(((uint32_t)(uint16_t)_108)))])) = (((uint8_t)(llvm_lshr_u32(_109, 24))));
  *((&_107[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_108, 1)))))])) = (((uint8_t)(llvm_lshr_u32(_109, 16))));
  *((&_107[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_108, 2)))))])) = (((uint8_t)(llvm_lshr_u32(_109, 8))));
  *((&_107[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_108, 3)))))])) = (((uint8_t)_109));
}


void bt_flip_addr(uint8_t* _110, uint8_t* _111) {
  uint8_t* _112;

  _112 = memcpy(_110, _111, 6);
}


void swapX(uint8_t* _113, uint8_t* _114, uint32_t _115) {
  uint32_t _116;
  uint32_t _117;
  uint32_t _117__PHI_TEMPORARY;
  uint8_t _118;
  uint32_t _119;

  if ((((((int32_t)_115) > ((int32_t)0u))&1))) {
    goto _120;
  } else {
    goto _121;
  }

_120:
  _116 = llvm_add_u32(_115, -1);
  _117__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _122;

  do {     /* Syntactic loop '' to make GCC happy */
_122:
  _117 = _117__PHI_TEMPORARY;
  _118 = *((&_113[((int32_t)_117)]));
  *((&_114[((int32_t)(llvm_sub_u32(_116, _117)))])) = _118;
  _119 = llvm_add_u32(_117, 1);
  if ((((_119 == _115)&1))) {
    goto _123;
  } else {
    _117__PHI_TEMPORARY = _119;   /* for PHI node */
    goto _122;
  }

  } while (1); /* end of syntactic loop '' */
_123:
  goto _121;

_121:
  return;
}


void swap24(uint8_t* _124, uint8_t* _125) {
  uint32_t _126;
  uint32_t _126__PHI_TEMPORARY;
  uint8_t _127;
  uint32_t _128;

  _126__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _129;

  do {     /* Syntactic loop '' to make GCC happy */
_129:
  _126 = _126__PHI_TEMPORARY;
  _127 = *((&_124[((int32_t)_126)]));
  *((&_125[((int32_t)(llvm_sub_u32(2, _126)))])) = _127;
  _128 = llvm_add_u32(_126, 1);
  if ((((_128 == 3u)&1))) {
    goto _130;
  } else {
    _126__PHI_TEMPORARY = _128;   /* for PHI node */
    goto _129;
  }

  } while (1); /* end of syntactic loop '' */
_130:
  return;
}


void swap32(uint8_t* _131, uint8_t* _132) {
  uint32_t _133;
  uint32_t _133__PHI_TEMPORARY;
  uint8_t _134;
  uint32_t _135;

  _133__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _136;

  do {     /* Syntactic loop '' to make GCC happy */
_136:
  _133 = _133__PHI_TEMPORARY;
  _134 = *((&_131[((int32_t)_133)]));
  *((&_132[((int32_t)(llvm_sub_u32(3, _133)))])) = _134;
  _135 = llvm_add_u32(_133, 1);
  if ((((_135 == 4u)&1))) {
    goto _137;
  } else {
    _133__PHI_TEMPORARY = _135;   /* for PHI node */
    goto _136;
  }

  } while (1); /* end of syntactic loop '' */
_137:
  return;
}


void swap48(uint8_t* _138, uint8_t* _139) {
  uint32_t _140;
  uint32_t _140__PHI_TEMPORARY;
  uint8_t _141;
  uint32_t _142;

  _140__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _143;

  do {     /* Syntactic loop '' to make GCC happy */
_143:
  _140 = _140__PHI_TEMPORARY;
  _141 = *((&_138[((int32_t)_140)]));
  *((&_139[((int32_t)(llvm_sub_u32(5, _140)))])) = _141;
  _142 = llvm_add_u32(_140, 1);
  if ((((_142 == 6u)&1))) {
    goto _144;
  } else {
    _140__PHI_TEMPORARY = _142;   /* for PHI node */
    goto _143;
  }

  } while (1); /* end of syntactic loop '' */
_144:
  return;
}


void swap56(uint8_t* _145, uint8_t* _146) {
  uint32_t _147;
  uint32_t _147__PHI_TEMPORARY;
  uint8_t _148;
  uint32_t _149;

  _147__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _150;

  do {     /* Syntactic loop '' to make GCC happy */
_150:
  _147 = _147__PHI_TEMPORARY;
  _148 = *((&_145[((int32_t)_147)]));
  *((&_146[((int32_t)(llvm_sub_u32(6, _147)))])) = _148;
  _149 = llvm_add_u32(_147, 1);
  if ((((_149 == 7u)&1))) {
    goto _151;
  } else {
    _147__PHI_TEMPORARY = _149;   /* for PHI node */
    goto _150;
  }

  } while (1); /* end of syntactic loop '' */
_151:
  return;
}


void swap64(uint8_t* _152, uint8_t* _153) {
  uint32_t _154;
  uint32_t _154__PHI_TEMPORARY;
  uint8_t _155;
  uint32_t _156;

  _154__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _157;

  do {     /* Syntactic loop '' to make GCC happy */
_157:
  _154 = _154__PHI_TEMPORARY;
  _155 = *((&_152[((int32_t)_154)]));
  *((&_153[((int32_t)(llvm_sub_u32(7, _154)))])) = _155;
  _156 = llvm_add_u32(_154, 1);
  if ((((_156 == 8u)&1))) {
    goto _158;
  } else {
    _154__PHI_TEMPORARY = _156;   /* for PHI node */
    goto _157;
  }

  } while (1); /* end of syntactic loop '' */
_158:
  return;
}


void swap128(uint8_t* _159, uint8_t* _160) {
  uint32_t _161;
  uint32_t _161__PHI_TEMPORARY;
  uint8_t _162;
  uint32_t _163;

  _161__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _164;

  do {     /* Syntactic loop '' to make GCC happy */
_164:
  _161 = _161__PHI_TEMPORARY;
  _162 = *((&_159[((int32_t)_161)]));
  *((&_160[((int32_t)(llvm_sub_u32(15, _161)))])) = _162;
  _163 = llvm_add_u32(_161, 1);
  if ((((_163 == 16u)&1))) {
    goto _165;
  } else {
    _161__PHI_TEMPORARY = _163;   /* for PHI node */
    goto _164;
  }

  } while (1); /* end of syntactic loop '' */
_165:
  return;
}


uint32_t btstack_min(uint32_t _166, uint32_t _167) {
  return (llvm_select_u32((((((uint32_t)_166) < ((uint32_t)_167))&1)), _166, _167));
}


uint32_t btstack_max(uint32_t _168, uint32_t _169) {
  return (llvm_select_u32((((((uint32_t)_168) > ((uint32_t)_169))&1)), _168, _169));
}


int8_t char_for_nibble(uint32_t _170) {
  uint8_t _171;
  uint8_t _172;
  uint8_t _173;
  uint8_t _173__PHI_TEMPORARY;

  if ((((((int32_t)_170) < ((int32_t)10u))&1))) {
    goto _174;
  } else {
    goto _175;
  }

_174:
  _171 = ((uint8_t)(llvm_add_u32(_170, 48)));
  _173__PHI_TEMPORARY = _171;   /* for PHI node */
  goto _176;

_175:
  if ((((((int32_t)(llvm_add_u32(_170, -10))) < ((int32_t)6u))&1))) {
    goto _177;
  } else {
    _173__PHI_TEMPORARY = 63;   /* for PHI node */
    goto _176;
  }

_177:
  _172 = ((uint8_t)(llvm_add_u32(_170, 55)));
  _173__PHI_TEMPORARY = _172;   /* for PHI node */
  goto _176;

_176:
  _173 = _173__PHI_TEMPORARY;
  return _173;
}


void printf_hexdump(uint8_t* _178, uint32_t _179) {
  return;
}


void log_info_hexdump(uint8_t* _180, uint32_t _181) {
  return;
}


void hexdump(uint8_t* _182, uint32_t _183) {
  return;
}


void hexdumpf(uint8_t* _184, uint32_t _185) {
  return;
}


void log_key(uint8_t* _186, uint8_t* _187) {
  return;
}


void uuid_add_bluetooth_prefix(uint8_t* _188, uint32_t _189) {
  uint8_t* _190;

  _190 = memcpy(_188, ((&utl_bluetooth_base_uuid.array[((int32_t)0)])), 16);
  *_188 = (((uint8_t)(llvm_lshr_u32(_189, 24))));
  *((&_188[((int32_t)1)])) = (((uint8_t)(llvm_lshr_u32(_189, 16))));
  *((&_188[((int32_t)2)])) = (((uint8_t)(llvm_lshr_u32(_189, 8))));
  *((&_188[((int32_t)3)])) = (((uint8_t)_189));
}


uint32_t uuid_has_bluetooth_prefix(uint8_t* _191) {
  uint32_t _192;

  _192 =  /*tail*/ memcmp(((&_191[((int32_t)4)])), ((&utl_bluetooth_base_uuid.array[((int32_t)4)])), 12);
  return (((uint32_t)(bool)(((_192 == 0u)&1))));
}


uint8_t* bd_addr_to_str(uint8_t* _193) {
  uint32_t _194;
  uint32_t _194__PHI_TEMPORARY;
  uint8_t* _195;
  uint8_t* _195__PHI_TEMPORARY;
  uint8_t* _196;
  uint8_t _197;
  uint32_t _198;
  uint8_t _199;
  uint8_t _200;
  uint8_t _201;
  uint8_t _201__PHI_TEMPORARY;
  uint8_t* _202;
  uint8_t _203;
  uint8_t _204;
  uint8_t _205;
  uint8_t _206;
  uint8_t _207;
  uint8_t _207__PHI_TEMPORARY;
  uint8_t* _208;
  uint32_t _209;

  _194__PHI_TEMPORARY = 0;   /* for PHI node */
  _195__PHI_TEMPORARY = ((&utl_bd_addr_to_str_buffer.array[((int32_t)0)]));   /* for PHI node */
  goto _210;

  do {     /* Syntactic loop '' to make GCC happy */
_210:
  _194 = _194__PHI_TEMPORARY;
  _195 = _195__PHI_TEMPORARY;
  _196 = (&_193[((int32_t)_194)]);
  _197 = *_196;
  _198 = llvm_lshr_u32((((uint32_t)(uint8_t)_197)), 4);
  if ((((((uint8_t)_197) < ((uint8_t)((uint8_t)-96)))&1))) {
    goto _211;
  } else {
    goto _212;
  }

_212:
  if ((((((int32_t)(llvm_add_u32(_198, -10))) < ((int32_t)6u))&1))) {
    goto _213;
  } else {
    _201__PHI_TEMPORARY = 63;   /* for PHI node */
    goto _214;
  }

_213:
  _200 = ((uint8_t)(llvm_add_u32(_198, 55)));
  _201__PHI_TEMPORARY = _200;   /* for PHI node */
  goto _214;

_211:
  _199 = llvm_or_u8((((uint8_t)_198)), 48);
  _201__PHI_TEMPORARY = _199;   /* for PHI node */
  goto _214;

_214:
  _201 = _201__PHI_TEMPORARY;
  _202 = (&_195[((int32_t)1)]);
  *_195 = _201;
  _203 = *_196;
  _204 = llvm_and_u8(_203, 15);
  if ((((((uint8_t)_204) < ((uint8_t)((uint8_t)10)))&1))) {
    goto _215;
  } else {
    goto _216;
  }

_216:
  _206 = llvm_select_u8((((((int32_t)(llvm_add_u32((((uint32_t)(uint8_t)_204)), -10))) < ((int32_t)6u))&1)), (llvm_add_u8(_204, 55)), 63);
  _207__PHI_TEMPORARY = _206;   /* for PHI node */
  goto _217;

_215:
  _205 = llvm_or_u8(_204, 48);
  _207__PHI_TEMPORARY = _205;   /* for PHI node */
  goto _217;

_217:
  _207 = _207__PHI_TEMPORARY;
  *_202 = _207;
  _208 = (&_195[((int32_t)3)]);
  *((&_195[((int32_t)2)])) = 58;
  _209 = llvm_add_u32(_194, 1);
  if ((((_209 == 6u)&1))) {
    goto _218;
  } else {
    _194__PHI_TEMPORARY = _209;   /* for PHI node */
    _195__PHI_TEMPORARY = _208;   /* for PHI node */
    goto _210;
  }

  } while (1); /* end of syntactic loop '' */
_218:
  *((&utl_bd_addr_to_str_buffer.array[((int32_t)17)])) = 0;
  return ((&utl_bd_addr_to_str_buffer.array[((int32_t)0)]));
}


uint32_t is_authenticated_link_key(uint32_t _219) {
  uint32_t _220;
  uint32_t _220__PHI_TEMPORARY;

  switch (_219) {
  default:
    goto _221;
  case 0u:
    _220__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _222;
  case 5u:
    _220__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _222;
  case 8u:
    _220__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _222;
  }

_221:
  _220__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _222;

_222:
  _220 = _220__PHI_TEMPORARY;
  return _220;
}


uint8_t crc8(uint8_t* _223, uint16_t _224) {
  uint32_t _225;
  uint32_t _226;
  uint32_t _226__PHI_TEMPORARY;
  uint8_t _227;
  uint8_t _227__PHI_TEMPORARY;
  uint8_t _228;
  uint8_t _229;
  uint32_t _230;
  uint8_t _231;
  uint8_t _231__PHI_TEMPORARY;

  if ((((_224 == ((uint16_t)0))&1))) {
    _231__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _232;
  } else {
    goto _233;
  }

_233:
  _225 = ((uint32_t)(uint16_t)_224);
  _226__PHI_TEMPORARY = 0;   /* for PHI node */
  _227__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _234;

  do {     /* Syntactic loop '' to make GCC happy */
_234:
  _226 = _226__PHI_TEMPORARY;
  _227 = _227__PHI_TEMPORARY;
  _228 = *((&_223[((int32_t)_226)]));
  _229 = *((&utl_crc8table.array[((int32_t)(((uint32_t)(uint8_t)(llvm_xor_u8(_228, _227)))))]));
  _230 = llvm_add_u32(_226, 1);
  if ((((_230 == _225)&1))) {
    goto _235;
  } else {
    _226__PHI_TEMPORARY = _230;   /* for PHI node */
    _227__PHI_TEMPORARY = _229;   /* for PHI node */
    goto _234;
  }

  } while (1); /* end of syntactic loop '' */
_235:
  _231__PHI_TEMPORARY = _229;   /* for PHI node */
  goto _232;

_232:
  _231 = _231__PHI_TEMPORARY;
  return _231;
}


uint8_t crc8_check(uint8_t* _236, uint16_t _237, uint8_t _238) {
  uint8_t _239;

  _239 =  /*tail*/ crc8(_236, _237);
  return (((uint8_t)(bool)((((llvm_xor_u8(_239, _238)) != ((uint8_t)-1))&1))));
}


uint8_t crc8_calc(uint8_t* _240, uint16_t _241) {
  uint8_t _242;

  _242 =  /*tail*/ crc8(_240, _241);
  return (llvm_not_u8(_242));
}

