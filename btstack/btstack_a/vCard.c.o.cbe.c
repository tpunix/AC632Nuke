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

/* Function definitions */
typedef uint8_t l_fptr_1(void);

typedef uint32_t l_fptr_2(uint8_t*, uint8_t*);


/* Types Definitions */
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_21_uint8_t_KC_ {
  uint8_t* array[21];
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_13_uint8_t {
  uint8_t array[13];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_55_uint32_t {
  uint32_t array[55];
};

/* External Global Variable Declarations */
extern uint8_t profile_debug_enable;
extern uint8_t l2cap_debug_enable;
extern uint8_t* __ctype_ptr__;

/* Function Declarations */
void vcard_buffer_init(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void vcard_free(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* vcard_malloc(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint8_t* strdup(uint8_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t strlen(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* strcpy(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
void phonebook_packet_handler(uint8_t, uint8_t*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void pbap_close_status_update_to_user(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t vcard_parse(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint8_t* vcard_check_word(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint8_t* vcard_get_val(uint32_t, uint8_t*, uint8_t**) __ATTRIBUTELIST__((nothrow));
uint8_t check_cur_number_type(int, ...);
uint32_t contacts_svc_vcard_foreach(uint8_t*, uint32_t, l_fptr_2*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t strncmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* strchr(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint32_t strcmp(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_34_uint8_t _OC_str = { "<pro-error> :need malloc = 0x%x\n\n" };
static uint8_t* last_ptr_data_ptr;
static uint16_t last_ptr_data_len;
static struct l_array_6_uint8_t _OC_str_OC_2 = { "close" };
static struct l_array_12_uint8_t _OC_str_OC_3 = { "BEGIN:VCARD" };
static struct l_array_22_uint8_t _OC_str_OC_4 = { "The vcard is invalid." };
static struct l_array_32_uint8_t _OC_str_OC_5 = { "<BT-log> :(%s) -> %s() return\n\n" };
static struct l_array_14_uint8_t _OC_str_OC_6 = { "NULL == vcard" };
static struct l_array_12_uint8_t __FUNCTION___OC_vcard_parse = { "vcard_parse" };
static struct l_array_9_uint8_t _OC_str_OC_7 = { "VERSION:" };
static struct l_array_23_uint8_t _OC_str_OC_8 = { "[pro-info] : NAME:%s \n" };
static struct l_array_7_uint8_t _OC_str_OC_9 = { "unknow" };
static struct l_array_24_uint8_t _OC_str_OC_10 = { "[pro-info] :number:%s \n" };
static struct l_array_32_uint8_t _OC_str_OC_11 = { "[pro-info] :type\xEF\xBC\x8C%d date:%s \n" };
static uint8_t* temp_vcard;
static struct l_array_10_uint8_t _OC_str_OC_12 = { "END:VCARD" };
static struct l_array_21_uint8_t_KC_ content_name;
static struct l_array_3_uint8_t _OC_str_OC_16 = { "FN" };
static struct l_array_2_uint8_t _OC_str_OC_17 = { "N" };
static struct l_array_9_uint8_t _OC_str_OC_18 = { "NICKNAME" };
static struct l_array_6_uint8_t _OC_str_OC_19 = { "PHOTO" };
static struct l_array_5_uint8_t _OC_str_OC_20 = { "BDAY" };
static struct l_array_4_uint8_t _OC_str_OC_21 = { "ADR" };
static struct l_array_6_uint8_t _OC_str_OC_22 = { "LABEL" };
static struct l_array_4_uint8_t _OC_str_OC_23 = { "TEL" };
static struct l_array_6_uint8_t _OC_str_OC_24 = { "EMAIL" };
static struct l_array_6_uint8_t _OC_str_OC_25 = { "TITLE" };
static struct l_array_5_uint8_t _OC_str_OC_26 = { "ROLE" };
static struct l_array_4_uint8_t _OC_str_OC_27 = { "ORG" };
static struct l_array_5_uint8_t _OC_str_OC_28 = { "NOTE" };
static struct l_array_4_uint8_t _OC_str_OC_29 = { "REV" };
static struct l_array_4_uint8_t _OC_str_OC_30 = { "UID" };
static struct l_array_4_uint8_t _OC_str_OC_31 = { "URL" };
static struct l_array_14_uint8_t _OC_str_OC_32 = { "X-ANNIVERSARY" };
static struct l_array_12_uint8_t _OC_str_OC_33 = { "X-SLP-GROUP" };
static struct l_array_21_uint8_t _OC_str_OC_34 = { "X-IRMC-CALL-DATETIME" };
static struct l_array_4_uint8_t _OC_str_OC_35 = { "END" };
static struct l_array_17_uint8_t _OC_str_OC_36 = { "The src is NULL." };
static struct l_array_12_uint8_t _OC_str_OC_37 = { "NULL == src" };
static struct l_array_17_uint8_t __FUNCTION___OC_vcard_check_word = { "vcard_check_word" };
static struct l_array_14_uint8_t __FUNCTION___OC_vcard_get_val = { "vcard_get_val" };
static struct l_array_18_uint8_t _OC_str_OC_38 = { "The dest is NULL." };
static struct l_array_13_uint8_t _OC_str_OC_39 = { "NULL == dest" };
static struct l_array_17_uint8_t _OC_str_OC_40 = { "QUOTED-PRINTABLE" };
static struct l_array_4_uint8_t _OC_str_OC_43 = { "3.0" };
static struct l_array_31_uint8_t _OC_str_OC_44 = { "<pro-error> :Invalid type %d\n\n" };
static struct l_array_14_uint8_t _OC_str_OC_45 = { "Invalid vcard" };
static struct l_array_2_uint8_t _OC_str_OC_46 = { "1" };
static struct l_array_18_uint8_t __FUNCTION___OC_vcard_get_contact = { "vcard_get_contact" };
static struct l_array_15_uint8_t _OC_str_OC_48 = { "Invalid vcard\n" };
static struct l_array_13_uint8_t _OC_str_OC_49 = { "NULL == temp" };
static struct l_array_17_uint8_t __FUNCTION___OC_vcard_get_number = { "vcard_get_number" };
static struct l_array_20_uint8_t __FUNCTION___OC_vcard_get_call_info = { "vcard_get_call_info" };
static struct l_array_33_uint8_t str = { "[pro-info] :some date left ====\n" };
static struct l_array_24_uint8_t str_OC_67 = { "[pro-info] :parse over\n" };
static struct l_array_28_uint8_t str_OC_68 = { "[pro-info] :some data left\n" };
static struct l_array_24_uint8_t str_OC_69 = { "[pro-info] :last vcard\n" };
static struct l_array_55_uint32_t switch_OC_table = { { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15 } };
static struct l_array_22_uint8_t str_OC_70 = { "<pro-error> :NO VALUE" };


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
static __forceinline uint8_t* llvm_select_pu8(bool condition, uint8_t* iftrue, uint8_t* ifnot) {
  uint8_t* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
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
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}


/* Function Bodies */

void vcard_buffer_init(uint8_t* _1, uint32_t _2) {
  return;
}


void vcard_free(uint8_t* _3) {
   /*tail*/ free(_3);
}


uint8_t* vcard_malloc(uint32_t _4) {
  uint8_t* _5;
  uint8_t* _6;
  uint8_t _7;
  uint32_t _8;

  _5 =  /*tail*/ malloc(_4);
  if ((((_5 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _9;
  } else {
    goto _10;
  }

_10:
  _6 = memset(_5, 0, _4);
  goto _11;

_9:
  _7 = profile_debug_enable;
  if (((((llvm_and_u8(_7, 4)) == ((uint8_t)0))&1))) {
    goto _11;
  } else {
    goto _12;
  }

_12:
  _8 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), _4);
  goto _11;

_11:
  return _5;
}


uint8_t* strdup(uint8_t* _13) {
  uint32_t _14;
  uint8_t* _15;
  uint8_t* _16;
  uint8_t* _17;
  uint8_t* _17__PHI_TEMPORARY;

  if ((((_13 == ((uint8_t*)/*NULL*/0))&1))) {
    _17__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _18;
  } else {
    goto _19;
  }

_19:
  _14 =  /*tail*/ strlen(_13);
  _15 =  /*tail*/ vcard_malloc((llvm_add_u32(_14, 1)));
  if ((((_15 == ((uint8_t*)/*NULL*/0))&1))) {
    _17__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _18;
  } else {
    goto _20;
  }

_20:
  _16 =  /*tail*/ strcpy(_15, _13);
  _17__PHI_TEMPORARY = _15;   /* for PHI node */
  goto _18;

_18:
  _17 = _17__PHI_TEMPORARY;
  return _17;
}


void phonebook_packet_handler(uint8_t _21, uint8_t* _22, uint8_t* _23, uint8_t* _24) {
  return;
}


void pbap_close_status_update_to_user(void) {
  uint8_t* _25;
  uint8_t _26;
  uint32_t _27;
  uint8_t* _28;
  uint8_t* _29;
  uint8_t* _29__PHI_TEMPORARY;

  _25 = last_ptr_data_ptr;
  if ((((_25 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _30;
  } else {
    goto _31;
  }

_31:
  _26 = profile_debug_enable;
  if (((((llvm_and_u8(_26, 1)) == ((uint8_t)0))&1))) {
    _29__PHI_TEMPORARY = _25;   /* for PHI node */
    goto _32;
  } else {
    goto _33;
  }

_33:
  _27 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _28 = last_ptr_data_ptr;
  _29__PHI_TEMPORARY = _28;   /* for PHI node */
  goto _32;

_32:
  _29 = _29__PHI_TEMPORARY;
   /*tail*/ free(_29);
  last_ptr_data_ptr = ((uint8_t*)/*NULL*/0);
  last_ptr_data_len = 0;
  goto _30;

_30:
   /*tail*/ phonebook_packet_handler(-1, ((&_OC_str_OC_2.array[((int32_t)0)])), ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0));
}


uint32_t vcard_parse(uint8_t* _34, uint32_t _35) {
  uint8_t* _36;    /* Address-exposed local */
  uint8_t* _37;    /* Address-exposed local */
  uint8_t* _38;
  uint8_t* _39;
  uint8_t* _40;
  uint8_t _41;
  uint32_t _42;
  uint8_t _43;
  uint8_t _44;
  uint8_t _44__PHI_TEMPORARY;
  uint32_t _45;
  uint8_t* _46;
  uint8_t* _47;
  uint8_t* _48;
  uint8_t* _49;
  uint8_t _50;
  uint8_t _51;
  uint8_t _51__PHI_TEMPORARY;
  uint8_t* _52;
  uint8_t* _52__PHI_TEMPORARY;
  uint8_t* _53;
  uint8_t _54;
  uint8_t* _55;
  uint8_t* _55__PHI_TEMPORARY;
  uint8_t* _56;
  uint8_t* _56__PHI_TEMPORARY;
  uint32_t _57;
  uint32_t _58;
  uint32_t _59;
  uint32_t _59__PHI_TEMPORARY;
  uint8_t* _60;
  uint8_t* _61;
  uint8_t* _61__PHI_TEMPORARY;
  uint8_t* _62;
  uint8_t* _62__PHI_TEMPORARY;
  uint32_t _63;
  uint32_t _63__PHI_TEMPORARY;
  uint8_t* _64;
  uint8_t* _64__PHI_TEMPORARY;
  uint8_t* _65;
  uint8_t* _65__PHI_TEMPORARY;
  uint8_t* _66;
  uint8_t* _66__PHI_TEMPORARY;
  uint8_t* _67;
  uint8_t* _67__PHI_TEMPORARY;
  uint8_t* _68;
  uint8_t* _68__PHI_TEMPORARY;
  uint32_t _69;
  uint32_t _69__PHI_TEMPORARY;
  uint8_t* _70;
  uint8_t* _71;
  uint8_t _72;
  uint32_t _73;
  uint8_t* _74;
  uint8_t* _74__PHI_TEMPORARY;
  uint8_t _75;
  uint8_t* _76;
  uint32_t _77;
  uint32_t _77__PHI_TEMPORARY;
  uint8_t* _78;
  uint8_t* _79;
  uint8_t* _79__PHI_TEMPORARY;
  uint8_t* _80;
  uint8_t* _80__PHI_TEMPORARY;
  uint8_t* _81;
  uint8_t* _81__PHI_TEMPORARY;
  uint8_t* _82;
  uint8_t* _82__PHI_TEMPORARY;
  uint8_t* _83;
  uint8_t* _83__PHI_TEMPORARY;
  uint8_t* _84;
  uint8_t* _84__PHI_TEMPORARY;
  uint8_t* _85;
  uint8_t* _86;
  uint8_t* _86__PHI_TEMPORARY;
  uint8_t* _87;
  uint8_t* _88;
  uint8_t _89;
  uint8_t _90;
  uint32_t _91;
  uint8_t* _92;
  uint8_t* _93;
  uint8_t* _93__PHI_TEMPORARY;
  uint8_t* _94;
  uint8_t* _95;
  uint8_t* _96;
  uint8_t _97;
  uint8_t _98;
  uint32_t _99;
  uint8_t _100;
  uint32_t _101;
  uint8_t _102;
  uint8_t _103;
  uint8_t _103__PHI_TEMPORARY;
  uint32_t _104;
  uint8_t* _105;
  uint32_t _106;
  uint32_t _107;
  uint32_t _108;
  uint8_t* _109;
  uint8_t* _110;
  uint8_t* _111;
  uint8_t* _112;
  uint8_t* _113;
  uint8_t* _113__PHI_TEMPORARY;
  uint8_t _114;
  uint8_t _115;
  uint8_t _115__PHI_TEMPORARY;
  uint8_t* _116;
  uint8_t* _116__PHI_TEMPORARY;
  uint8_t* _117;
  uint8_t _118;
  uint8_t* _119;
  uint8_t _120;
  uint8_t* _121;
  uint8_t* _121__PHI_TEMPORARY;
  uint8_t* _122;
  uint8_t* _123;
  uint8_t* _124;
  uint8_t _125;
  uint8_t _126;
  uint32_t _127;
  uint8_t _128;
  uint32_t _129;
  uint8_t _130;
  uint8_t _131;
  uint8_t _131__PHI_TEMPORARY;
  uint32_t _132;
  uint8_t* _133;
  uint8_t _134;
  uint8_t _135;
  uint8_t _135__PHI_TEMPORARY;
  uint8_t* _136;
  uint8_t* _136__PHI_TEMPORARY;
  uint8_t* _137;
  uint8_t _138;
  uint8_t* _139;
  uint8_t _140;
  uint8_t* _141;
  uint8_t* _141__PHI_TEMPORARY;
  uint8_t* _142;
  uint8_t _143;
  uint32_t _144;
  uint8_t* _145;
  uint8_t* _146;
  uint8_t* _146__PHI_TEMPORARY;
  uint8_t* _147;
  uint8_t* _147__PHI_TEMPORARY;
  uint8_t* _148;
  uint8_t* _148__PHI_TEMPORARY;
  uint8_t _149;
  uint32_t _150;
  uint8_t _151;
  uint8_t _152;
  uint8_t _152__PHI_TEMPORARY;
  uint32_t _153;
  uint8_t* _154;
  uint8_t* _154__PHI_TEMPORARY;
  uint8_t* _155;
  uint8_t* _155__PHI_TEMPORARY;
  uint32_t _156;
  uint32_t _156__PHI_TEMPORARY;
  uint8_t _157;
  uint8_t _158;
  uint32_t _159;
  uint8_t _160;
  uint32_t _161;
  uint8_t _162;
  uint32_t _163;
  uint32_t _164;
  uint32_t _164__PHI_TEMPORARY;

  _38 = ((uint8_t*)(&_37));
  if ((((_34 == ((uint8_t*)/*NULL*/0))&1))) {
    _164__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _165;
  } else {
    goto _166;
  }

_166:
  _39 = *((&content_name.array[((int32_t)0)]));
  if ((((_39 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _167;
  } else {
    goto _168;
  }

_167:
  *((&content_name.array[((int32_t)1)])) = ((&_OC_str_OC_16.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)2)])) = ((&_OC_str_OC_17.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)3)])) = ((&_OC_str_OC_18.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)4)])) = ((&_OC_str_OC_19.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)5)])) = ((&_OC_str_OC_20.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)6)])) = ((&_OC_str_OC_21.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)7)])) = ((&_OC_str_OC_22.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)8)])) = ((&_OC_str_OC_23.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)9)])) = ((&_OC_str_OC_24.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)10)])) = ((&_OC_str_OC_25.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)11)])) = ((&_OC_str_OC_26.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)12)])) = ((&_OC_str_OC_27.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)13)])) = ((&_OC_str_OC_28.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)14)])) = ((&_OC_str_OC_29.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)15)])) = ((&_OC_str_OC_30.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)16)])) = ((&_OC_str_OC_31.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)17)])) = ((&_OC_str_OC_32.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)18)])) = ((&_OC_str_OC_33.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)19)])) = ((&_OC_str_OC_34.array[((int32_t)0)]));
  *((&content_name.array[((int32_t)20)])) = ((&_OC_str_OC_35.array[((int32_t)0)]));
  goto _168;

_168:
  _40 =  /*tail*/ vcard_check_word(_34, ((&_OC_str_OC_3.array[((int32_t)0)])));
  if ((((_40 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _169;
  } else {
    goto _170;
  }

_169:
  _41 = l2cap_debug_enable;
  if (((((llvm_and_u8(_41, 32)) == ((uint8_t)0))&1))) {
    _44__PHI_TEMPORARY = _41;   /* for PHI node */
    goto _171;
  } else {
    goto _172;
  }

_172:
  _42 =  /*tail*/ puts(((&_OC_str_OC_4.array[((int32_t)0)])));
  _43 = l2cap_debug_enable;
  _44__PHI_TEMPORARY = _43;   /* for PHI node */
  goto _171;

_171:
  _44 = _44__PHI_TEMPORARY;
  if ((((((int8_t)_44) < ((int8_t)((uint8_t)0)))&1))) {
    goto _173;
  } else {
    _164__PHI_TEMPORARY = -2;   /* for PHI node */
    goto _165;
  }

_173:
  _45 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_6.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_parse.array[((int32_t)0)])));
  _164__PHI_TEMPORARY = -2;   /* for PHI node */
  goto _165;

_170:
  _46 =  /*tail*/ vcard_check_word(_40, ((&_OC_str_OC_7.array[((int32_t)0)])));
  _47 = vcard_get_val(0, _46, (&_37));
  _48 = _37;
  if (((((((_47 == ((uint8_t*)/*NULL*/0))&1)) | (((_48 == ((uint8_t*)/*NULL*/0))&1)))&1))) {
    goto _174;
  } else {
    goto _175;
  }

_174:
  _49 = ((uint8_t*)(&_36));
  _61__PHI_TEMPORARY = _49;   /* for PHI node */
  _62__PHI_TEMPORARY = _40;   /* for PHI node */
  _63__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _176;

_175:
  _50 = *_48;
  if ((((_50 == ((uint8_t)0))&1))) {
    _56__PHI_TEMPORARY = _48;   /* for PHI node */
    goto _177;
  } else {
    goto _178;
  }

_178:
  _51__PHI_TEMPORARY = _50;   /* for PHI node */
  _52__PHI_TEMPORARY = _48;   /* for PHI node */
  goto _179;

  do {     /* Syntactic loop '' to make GCC happy */
_179:
  _51 = _51__PHI_TEMPORARY;
  _52 = _52__PHI_TEMPORARY;
  switch ((((int32_t)(int8_t)_51))) {
  default:
    _55__PHI_TEMPORARY = _52;   /* for PHI node */
    goto _180;
  case 10u:
    goto _181;
  case 13u:
    goto _181;
  case 32u:
    goto _182;
  }

_182:
  _53 = (&_52[((int32_t)1)]);
  _54 = *_53;
  if ((((_54 == ((uint8_t)0))&1))) {
    _55__PHI_TEMPORARY = _53;   /* for PHI node */
    goto _180;
  } else {
    _51__PHI_TEMPORARY = _54;   /* for PHI node */
    _52__PHI_TEMPORARY = _53;   /* for PHI node */
    goto _179;
  }

  } while (1); /* end of syntactic loop '' */
_180:
  _55 = _55__PHI_TEMPORARY;
  _56__PHI_TEMPORARY = _55;   /* for PHI node */
  goto _177;

_177:
  _56 = _56__PHI_TEMPORARY;
  _57 = strcmp(_56, ((&_OC_str_OC_43.array[((int32_t)0)])));
  _58 = llvm_select_u32((((_57 == 0u)&1)), 2, 1);
  _59__PHI_TEMPORARY = _58;   /* for PHI node */
  goto _183;

_181:
  _59__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _183;

_183:
  _59 = _59__PHI_TEMPORARY;
  free(_48);
  _60 = ((uint8_t*)(&_36));
  _61__PHI_TEMPORARY = _60;   /* for PHI node */
  _62__PHI_TEMPORARY = _47;   /* for PHI node */
  _63__PHI_TEMPORARY = _59;   /* for PHI node */
  goto _176;

_176:
  _61 = _61__PHI_TEMPORARY;
  _62 = _62__PHI_TEMPORARY;
  _63 = _63__PHI_TEMPORARY;
  _64__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  _65__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  _66__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  _67__PHI_TEMPORARY = _62;   /* for PHI node */
  goto _184;

  do {     /* Syntactic loop '' to make GCC happy */
_184:
  _64 = _64__PHI_TEMPORARY;
  _65 = _65__PHI_TEMPORARY;
  _66 = _66__PHI_TEMPORARY;
  _67 = _67__PHI_TEMPORARY;
  _82__PHI_TEMPORARY = _65;   /* for PHI node */
  _83__PHI_TEMPORARY = _66;   /* for PHI node */
  _84__PHI_TEMPORARY = _67;   /* for PHI node */
  goto _185;

  do {     /* Syntactic loop '' to make GCC happy */
_185:
  _82 = _82__PHI_TEMPORARY;
  _83 = _83__PHI_TEMPORARY;
  _84 = _84__PHI_TEMPORARY;
  _68__PHI_TEMPORARY = _84;   /* for PHI node */
  goto _186;

  do {     /* Syntactic loop '' to make GCC happy */
_186:
  _68 = _68__PHI_TEMPORARY;
  _69__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _187;

  do {     /* Syntactic loop '' to make GCC happy */
_187:
  _69 = _69__PHI_TEMPORARY;
  _70 = *((&content_name.array[((int32_t)_69)]));
  _71 = vcard_check_word(_68, _70);
  if ((((_71 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _188;
  } else {
    goto _189;
  }

_189:
  _72 = *_71;
  if (((((llvm_and_u8(_72, -2)) == ((uint8_t)58))&1))) {
    goto _190;
  } else {
    goto _188;
  }

_188:
  _73 = llvm_add_u32(_69, 1);
  if ((((((int32_t)_73) < ((int32_t)21u))&1))) {
    _69__PHI_TEMPORARY = _73;   /* for PHI node */
    goto _187;
  } else {
    goto _191;
  }

  } while (1); /* end of syntactic loop '' */
_190:
  _77__PHI_TEMPORARY = _69;   /* for PHI node */
  goto _192;

_191:
  if ((((_73 == 21u)&1))) {
    goto _193;
  } else {
    _77__PHI_TEMPORARY = _73;   /* for PHI node */
    goto _192;
  }

_192:
  _77 = _77__PHI_TEMPORARY;
  _78 = vcard_get_val(_63, _71, (&_36));
  if ((((_78 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _194;
  } else {
    goto _195;
  }

_195:
  _85 = _36;
  if ((((_85 == ((uint8_t*)/*NULL*/0))&1))) {
    _86__PHI_TEMPORARY = _78;   /* for PHI node */
    goto _196;
  } else {
    goto _197;
  }

_197:
  switch (_77) {
  default:
    goto _198;
  case 1u:
    goto _199;
  case 2u:
    goto _200;
  case 8u:
    goto _201;
  case 19u:
    goto _202;
  case 20u:
    goto _203;
  }

_200:
  free(_85);
  _86__PHI_TEMPORARY = _78;   /* for PHI node */
  goto _196;

_198:
  _143 = profile_debug_enable;
  if (((((llvm_and_u8(_143, 4)) == ((uint8_t)0))&1))) {
    _146__PHI_TEMPORARY = _85;   /* for PHI node */
    goto _204;
  } else {
    goto _205;
  }

_205:
  _144 = printf(((&_OC_str_OC_44.array[((int32_t)0)])), _77);
  _145 = _36;
  _146__PHI_TEMPORARY = _145;   /* for PHI node */
  goto _204;

_204:
  _146 = _146__PHI_TEMPORARY;
  free(_146);
  _86__PHI_TEMPORARY = _78;   /* for PHI node */
  goto _196;

_193:
  _74__PHI_TEMPORARY = _68;   /* for PHI node */
  goto _206;

  do {     /* Syntactic loop '' to make GCC happy */
_206:
  _74 = _74__PHI_TEMPORARY;
  _75 = *_74;
  if ((((_75 == ((uint8_t)0))&1))) {
    goto _207;
  } else {
    goto _208;
  }

_208:
  _76 = (&_74[((int32_t)1)]);
  if ((((_75 == ((uint8_t)10))&1))) {
    goto _209;
  } else {
    _74__PHI_TEMPORARY = _76;   /* for PHI node */
    goto _206;
  }

  } while (1); /* end of syntactic loop '' */
_209:
  _86__PHI_TEMPORARY = _76;   /* for PHI node */
  goto _196;

_196:
  _86 = _86__PHI_TEMPORARY;
  _68__PHI_TEMPORARY = _86;   /* for PHI node */
  goto _186;

  } while (1); /* end of syntactic loop '' */
_202:
  _123 = strchr(_85, 58);
  _124 = llvm_select_pu8((((_123 == ((uint8_t*)/*NULL*/0))&1)), _85, ((&_123[((int32_t)1)])));
  _125 = *_124;
  switch (_125) {
  default:
    goto _210;
  case ((uint8_t)0):
    goto _211;
  case ((uint8_t)13):
    goto _211;
  case ((uint8_t)10):
    goto _211;
  }

_211:
  _126 = profile_debug_enable;
  if (((((llvm_and_u8(_126, 4)) == ((uint8_t)0))&1))) {
    goto _212;
  } else {
    goto _213;
  }

_213:
  _127 = puts(((&str_OC_70.array[((int32_t)0)])));
  goto _212;

_210:
  if ((((_124 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _212;
  } else {
    goto _214;
  }

_214:
  _133 = strdup(_124);
  if ((((_124 == _85)&1))) {
    _141__PHI_TEMPORARY = _133;   /* for PHI node */
    goto _215;
  } else {
    goto _216;
  }

_216:
  *((&_124[((int32_t)-1)])) = 0;
  _134 = *_85;
  if ((((_134 == ((uint8_t)0))&1))) {
    _141__PHI_TEMPORARY = _133;   /* for PHI node */
    goto _215;
  } else {
    goto _217;
  }

_217:
  _135__PHI_TEMPORARY = _134;   /* for PHI node */
  _136__PHI_TEMPORARY = _85;   /* for PHI node */
  goto _218;

  do {     /* Syntactic loop '' to make GCC happy */
_218:
  _135 = _135__PHI_TEMPORARY;
  _136 = _136__PHI_TEMPORARY;
  _137 = __ctype_ptr__;
  _138 = *((&((&_137[((int32_t)1)]))[((int32_t)(((int32_t)(int8_t)_135)))]));
  *_136 = (llvm_select_u8(((((llvm_and_u8(_138, 3)) == ((uint8_t)1))&1)), (llvm_add_u8(_135, 32)), _135));
  _139 = (&_136[((int32_t)1)]);
  _140 = *_139;
  if ((((_140 == ((uint8_t)0))&1))) {
    goto _219;
  } else {
    _135__PHI_TEMPORARY = _140;   /* for PHI node */
    _136__PHI_TEMPORARY = _139;   /* for PHI node */
    goto _218;
  }

  } while (1); /* end of syntactic loop '' */
_219:
  _141__PHI_TEMPORARY = _133;   /* for PHI node */
  goto _215;

_212:
  _128 = l2cap_debug_enable;
  if (((((llvm_and_u8(_128, 32)) == ((uint8_t)0))&1))) {
    _131__PHI_TEMPORARY = _128;   /* for PHI node */
    goto _220;
  } else {
    goto _221;
  }

_221:
  _129 = puts(((&_OC_str_OC_48.array[((int32_t)0)])));
  _130 = l2cap_debug_enable;
  _131__PHI_TEMPORARY = _130;   /* for PHI node */
  goto _220;

_220:
  _131 = _131__PHI_TEMPORARY;
  if ((((((int8_t)_131) < ((int8_t)((uint8_t)0)))&1))) {
    goto _222;
  } else {
    _141__PHI_TEMPORARY = _83;   /* for PHI node */
    goto _215;
  }

_222:
  _132 = printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_49.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_get_call_info.array[((int32_t)0)])));
  _141__PHI_TEMPORARY = _83;   /* for PHI node */
  goto _215;

_215:
  _141 = _141__PHI_TEMPORARY;
  _142 = _36;
  free(_142);
  _79__PHI_TEMPORARY = _82;   /* for PHI node */
  _80__PHI_TEMPORARY = _141;   /* for PHI node */
  _81__PHI_TEMPORARY = _78;   /* for PHI node */
  goto _223;

_201:
  _95 = strchr(_85, 58);
  _96 = llvm_select_pu8((((_95 == ((uint8_t*)/*NULL*/0))&1)), _85, ((&_95[((int32_t)1)])));
  _97 = *_96;
  switch (_97) {
  default:
    goto _224;
  case ((uint8_t)0):
    goto _225;
  case ((uint8_t)13):
    goto _225;
  case ((uint8_t)10):
    goto _225;
  }

_225:
  _98 = profile_debug_enable;
  if (((((llvm_and_u8(_98, 4)) == ((uint8_t)0))&1))) {
    goto _226;
  } else {
    goto _227;
  }

_227:
  _99 = puts(((&str_OC_70.array[((int32_t)0)])));
  goto _226;

_224:
  if ((((_96 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _226;
  } else {
    goto _228;
  }

_228:
  _105 = strdup(_96);
  if ((((_82 == ((uint8_t*)/*NULL*/0))&1))) {
    _113__PHI_TEMPORARY = _105;   /* for PHI node */
    goto _229;
  } else {
    goto _230;
  }

_230:
  _106 = strlen(_105);
  _107 = strlen(_82);
  if ((((((int32_t)_107) > ((int32_t)256u))&1))) {
    goto _231;
  } else {
    goto _232;
  }

_232:
  _108 = llvm_add_u32(_107, _106);
  _109 = vcard_malloc((llvm_add_u32(_108, 2)));
  _110 = memcpy(_109, _82, _107);
  free(_82);
  _111 = (&_109[((int32_t)_107)]);
  *_111 = 35;
  _112 = memcpy(((&_111[((int32_t)1)])), _105, _106);
  free(_105);
  *((&_109[((int32_t)(llvm_add_u32(_108, 1)))])) = 0;
  _113__PHI_TEMPORARY = _109;   /* for PHI node */
  goto _229;

_231:
  free(_105);
  _113__PHI_TEMPORARY = _82;   /* for PHI node */
  goto _229;

_229:
  _113 = _113__PHI_TEMPORARY;
  if ((((_96 == _85)&1))) {
    _121__PHI_TEMPORARY = _113;   /* for PHI node */
    goto _233;
  } else {
    goto _234;
  }

_234:
  *((&_96[((int32_t)-1)])) = 0;
  _114 = *_85;
  if ((((_114 == ((uint8_t)0))&1))) {
    _121__PHI_TEMPORARY = _113;   /* for PHI node */
    goto _233;
  } else {
    goto _235;
  }

_235:
  _115__PHI_TEMPORARY = _114;   /* for PHI node */
  _116__PHI_TEMPORARY = _85;   /* for PHI node */
  goto _236;

  do {     /* Syntactic loop '' to make GCC happy */
_236:
  _115 = _115__PHI_TEMPORARY;
  _116 = _116__PHI_TEMPORARY;
  _117 = __ctype_ptr__;
  _118 = *((&((&_117[((int32_t)1)]))[((int32_t)(((int32_t)(int8_t)_115)))]));
  *_116 = (llvm_select_u8(((((llvm_and_u8(_118, 3)) == ((uint8_t)1))&1)), (llvm_add_u8(_115, 32)), _115));
  _119 = (&_116[((int32_t)1)]);
  _120 = *_119;
  if ((((_120 == ((uint8_t)0))&1))) {
    goto _237;
  } else {
    _115__PHI_TEMPORARY = _120;   /* for PHI node */
    _116__PHI_TEMPORARY = _119;   /* for PHI node */
    goto _236;
  }

  } while (1); /* end of syntactic loop '' */
_237:
  _121__PHI_TEMPORARY = _113;   /* for PHI node */
  goto _233;

_226:
  _100 = l2cap_debug_enable;
  if (((((llvm_and_u8(_100, 32)) == ((uint8_t)0))&1))) {
    _103__PHI_TEMPORARY = _100;   /* for PHI node */
    goto _238;
  } else {
    goto _239;
  }

_239:
  _101 = puts(((&_OC_str_OC_48.array[((int32_t)0)])));
  _102 = l2cap_debug_enable;
  _103__PHI_TEMPORARY = _102;   /* for PHI node */
  goto _238;

_238:
  _103 = _103__PHI_TEMPORARY;
  if ((((((int8_t)_103) < ((int8_t)((uint8_t)0)))&1))) {
    goto _240;
  } else {
    _121__PHI_TEMPORARY = _82;   /* for PHI node */
    goto _233;
  }

_240:
  _104 = printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_49.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_get_number.array[((int32_t)0)])));
  _121__PHI_TEMPORARY = _82;   /* for PHI node */
  goto _233;

_233:
  _121 = _121__PHI_TEMPORARY;
  _122 = _36;
  free(_122);
  _79__PHI_TEMPORARY = _121;   /* for PHI node */
  _80__PHI_TEMPORARY = _83;   /* for PHI node */
  _81__PHI_TEMPORARY = _78;   /* for PHI node */
  goto _223;

_194:
  _79__PHI_TEMPORARY = _82;   /* for PHI node */
  _80__PHI_TEMPORARY = _83;   /* for PHI node */
  _81__PHI_TEMPORARY = _71;   /* for PHI node */
  goto _223;

_223:
  _79 = _79__PHI_TEMPORARY;
  _80 = _80__PHI_TEMPORARY;
  _81 = _81__PHI_TEMPORARY;
  if ((((_81 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _241;
  } else {
    _82__PHI_TEMPORARY = _79;   /* for PHI node */
    _83__PHI_TEMPORARY = _80;   /* for PHI node */
    _84__PHI_TEMPORARY = _81;   /* for PHI node */
    goto _185;
  }

  } while (1); /* end of syntactic loop '' */
_199:
  _87 = strchr(_85, 58);
  _88 = llvm_select_pu8((((_87 == ((uint8_t*)/*NULL*/0))&1)), _85, ((&_87[((int32_t)1)])));
  _89 = *_88;
  switch (_89) {
  default:
    goto _242;
  case ((uint8_t)0):
    goto _243;
  case ((uint8_t)13):
    goto _243;
  case ((uint8_t)10):
    goto _243;
  }

_243:
  _90 = profile_debug_enable;
  if (((((llvm_and_u8(_90, 4)) == ((uint8_t)0))&1))) {
    _93__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _244;
  } else {
    goto _245;
  }

_245:
  _91 = puts(((&str_OC_70.array[((int32_t)0)])));
  _93__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _244;

_242:
  if ((((_88 == ((uint8_t*)/*NULL*/0))&1))) {
    _93__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _244;
  } else {
    goto _246;
  }

_246:
  _92 = strdup(_88);
  _93__PHI_TEMPORARY = _92;   /* for PHI node */
  goto _244;

_244:
  _93 = _93__PHI_TEMPORARY;
  _94 = _36;
  free(_94);
  _64__PHI_TEMPORARY = _93;   /* for PHI node */
  _65__PHI_TEMPORARY = _82;   /* for PHI node */
  _66__PHI_TEMPORARY = _83;   /* for PHI node */
  _67__PHI_TEMPORARY = _78;   /* for PHI node */
  goto _184;

  } while (1); /* end of syntactic loop '' */
_203:
  free(_85);
  _154__PHI_TEMPORARY = _82;   /* for PHI node */
  _155__PHI_TEMPORARY = _83;   /* for PHI node */
  _156__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _247;

_207:
  _147__PHI_TEMPORARY = _82;   /* for PHI node */
  _148__PHI_TEMPORARY = _83;   /* for PHI node */
  goto _248;

_241:
  _147__PHI_TEMPORARY = _79;   /* for PHI node */
  _148__PHI_TEMPORARY = _80;   /* for PHI node */
  goto _248;

_248:
  _147 = _147__PHI_TEMPORARY;
  _148 = _148__PHI_TEMPORARY;
  _149 = l2cap_debug_enable;
  if (((((llvm_and_u8(_149, 32)) == ((uint8_t)0))&1))) {
    _152__PHI_TEMPORARY = _149;   /* for PHI node */
    goto _249;
  } else {
    goto _250;
  }

_250:
  _150 = puts(((&_OC_str_OC_45.array[((int32_t)0)])));
  _151 = l2cap_debug_enable;
  _152__PHI_TEMPORARY = _151;   /* for PHI node */
  goto _249;

_249:
  _152 = _152__PHI_TEMPORARY;
  if ((((((int8_t)_152) < ((int8_t)((uint8_t)0)))&1))) {
    goto _251;
  } else {
    _154__PHI_TEMPORARY = _147;   /* for PHI node */
    _155__PHI_TEMPORARY = _148;   /* for PHI node */
    _156__PHI_TEMPORARY = -2;   /* for PHI node */
    goto _247;
  }

_251:
  _153 = printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_46.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_get_contact.array[((int32_t)0)])));
  _154__PHI_TEMPORARY = _147;   /* for PHI node */
  _155__PHI_TEMPORARY = _148;   /* for PHI node */
  _156__PHI_TEMPORARY = -2;   /* for PHI node */
  goto _247;

_247:
  _154 = _154__PHI_TEMPORARY;
  _155 = _155__PHI_TEMPORARY;
  _156 = _156__PHI_TEMPORARY;
  _157 = ((l_fptr_1*)(void*)check_cur_number_type)();
  if ((((_64 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _252;
  } else {
    goto _253;
  }

_253:
  _158 = profile_debug_enable;
  if (((((llvm_and_u8(_158, 1)) == ((uint8_t)0))&1))) {
    goto _254;
  } else {
    goto _255;
  }

_255:
  _159 = printf(((&_OC_str_OC_8.array[((int32_t)0)])), _64);
  goto _254;

_254:
  phonebook_packet_handler(_157, _64, _154, _155);
  free(_64);
  goto _256;

_252:
  phonebook_packet_handler(_157, ((&_OC_str_OC_9.array[((int32_t)0)])), _154, _155);
  goto _256;

_256:
  if ((((_154 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _257;
  } else {
    goto _258;
  }

_258:
  _160 = profile_debug_enable;
  if (((((llvm_and_u8(_160, 1)) == ((uint8_t)0))&1))) {
    goto _259;
  } else {
    goto _260;
  }

_260:
  _161 = printf(((&_OC_str_OC_10.array[((int32_t)0)])), _154);
  goto _259;

_259:
  free(_154);
  goto _257;

_257:
  if ((((_155 == ((uint8_t*)/*NULL*/0))&1))) {
    _164__PHI_TEMPORARY = _156;   /* for PHI node */
    goto _165;
  } else {
    goto _261;
  }

_261:
  _162 = profile_debug_enable;
  if (((((llvm_and_u8(_162, 1)) == ((uint8_t)0))&1))) {
    goto _262;
  } else {
    goto _263;
  }

_263:
  _163 = printf(((&_OC_str_OC_11.array[((int32_t)0)])), (((uint32_t)(uint8_t)_157)), _155);
  goto _262;

_262:
  free(_155);
  _164__PHI_TEMPORARY = _156;   /* for PHI node */
  goto _165;

_165:
  _164 = _164__PHI_TEMPORARY;
  return _164;
}


static uint8_t* vcard_check_word(uint8_t* _264, uint8_t* _265) {
  uint8_t _266;
  uint32_t _267;
  uint8_t _268;
  uint8_t _269;
  uint8_t _269__PHI_TEMPORARY;
  uint32_t _270;
  uint8_t* _271;
  uint8_t* _271__PHI_TEMPORARY;
  uint8_t _272;
  uint8_t* _273;
  uint8_t _274;
  uint8_t _274__PHI_TEMPORARY;
  uint8_t* _275;
  uint8_t* _275__PHI_TEMPORARY;
  uint8_t* _276;
  uint8_t _277;
  uint8_t _278;
  uint8_t _278__PHI_TEMPORARY;
  uint8_t* _279;
  uint8_t* _279__PHI_TEMPORARY;
  uint8_t _280;
  uint8_t _280__PHI_TEMPORARY;
  uint8_t* _281;
  uint8_t* _281__PHI_TEMPORARY;
  uint8_t _282;
  uint8_t _283;
  uint8_t _283__PHI_TEMPORARY;
  uint8_t _284;
  uint8_t _284__PHI_TEMPORARY;
  uint8_t* _285;
  uint8_t* _285__PHI_TEMPORARY;
  uint8_t* _286;
  uint8_t* _286__PHI_TEMPORARY;
  uint8_t* _287;
  uint8_t* _288;
  uint8_t _289;
  uint8_t _290;
  uint8_t _291;
  uint8_t _291__PHI_TEMPORARY;
  uint8_t* _292;
  uint8_t* _292__PHI_TEMPORARY;
  uint8_t* _293;
  uint8_t* _294;
  uint8_t* _294__PHI_TEMPORARY;

  if ((((_264 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _295;
  } else {
    goto _296;
  }

_296:
  _271__PHI_TEMPORARY = _264;   /* for PHI node */
  goto _297;

_295:
  _266 = l2cap_debug_enable;
  if (((((llvm_and_u8(_266, 32)) == ((uint8_t)0))&1))) {
    _269__PHI_TEMPORARY = _266;   /* for PHI node */
    goto _298;
  } else {
    goto _299;
  }

_299:
  _267 =  /*tail*/ puts(((&_OC_str_OC_36.array[((int32_t)0)])));
  _268 = l2cap_debug_enable;
  _269__PHI_TEMPORARY = _268;   /* for PHI node */
  goto _298;

_298:
  _269 = _269__PHI_TEMPORARY;
  if ((((((int8_t)_269) < ((int8_t)((uint8_t)0)))&1))) {
    goto _300;
  } else {
    _294__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _301;
  }

_300:
  _270 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_37.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_check_word.array[((int32_t)0)])));
  _294__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _301;

  do {     /* Syntactic loop '' to make GCC happy */
_297:
  _271 = _271__PHI_TEMPORARY;
  _272 = *_271;
  switch (_272) {
  default:
    goto _302;
  case ((uint8_t)13):
    goto _303;
  case ((uint8_t)10):
    goto _303;
  case ((uint8_t)0):
    goto _304;
  }

_303:
  _273 = (&_271[((int32_t)1)]);
  _271__PHI_TEMPORARY = _273;   /* for PHI node */
  goto _297;

  } while (1); /* end of syntactic loop '' */
_302:
  _274__PHI_TEMPORARY = _272;   /* for PHI node */
  _275__PHI_TEMPORARY = _271;   /* for PHI node */
  goto _305;

  do {     /* Syntactic loop '' to make GCC happy */
_305:
  _274 = _274__PHI_TEMPORARY;
  _275 = _275__PHI_TEMPORARY;
  switch ((((int32_t)(int8_t)_274))) {
  default:
    _278__PHI_TEMPORARY = _274;   /* for PHI node */
    _279__PHI_TEMPORARY = _275;   /* for PHI node */
    goto _306;
  case 32u:
    goto _307;
  case 58u:
    goto _307;
  case 59u:
    goto _307;
  }

_307:
  _276 = (&_275[((int32_t)1)]);
  _277 = *_276;
  if ((((_277 == ((uint8_t)0))&1))) {
    _278__PHI_TEMPORARY = 0;   /* for PHI node */
    _279__PHI_TEMPORARY = _276;   /* for PHI node */
    goto _306;
  } else {
    _274__PHI_TEMPORARY = _277;   /* for PHI node */
    _275__PHI_TEMPORARY = _276;   /* for PHI node */
    goto _305;
  }

  } while (1); /* end of syntactic loop '' */
_306:
  _278 = _278__PHI_TEMPORARY;
  _279 = _279__PHI_TEMPORARY;
  _280__PHI_TEMPORARY = _278;   /* for PHI node */
  _281__PHI_TEMPORARY = _279;   /* for PHI node */
  goto _308;

_304:
  _280__PHI_TEMPORARY = 0;   /* for PHI node */
  _281__PHI_TEMPORARY = _271;   /* for PHI node */
  goto _308;

_308:
  _280 = _280__PHI_TEMPORARY;
  _281 = _281__PHI_TEMPORARY;
  _282 = *_265;
  _283__PHI_TEMPORARY = _282;   /* for PHI node */
  _284__PHI_TEMPORARY = _280;   /* for PHI node */
  _285__PHI_TEMPORARY = _281;   /* for PHI node */
  _286__PHI_TEMPORARY = _265;   /* for PHI node */
  goto _309;

  do {     /* Syntactic loop '' to make GCC happy */
_309:
  _283 = _283__PHI_TEMPORARY;
  _284 = _284__PHI_TEMPORARY;
  _285 = _285__PHI_TEMPORARY;
  _286 = _286__PHI_TEMPORARY;
  if ((((_284 == _283)&1))) {
    goto _310;
  } else {
    _291__PHI_TEMPORARY = _283;   /* for PHI node */
    _292__PHI_TEMPORARY = _285;   /* for PHI node */
    goto _311;
  }

_310:
  _287 = (&_285[((int32_t)1)]);
  _288 = (&_286[((int32_t)1)]);
  _289 = *_287;
  _290 = *_288;
  if ((((_289 == ((uint8_t)0))&1))) {
    _291__PHI_TEMPORARY = _290;   /* for PHI node */
    _292__PHI_TEMPORARY = _287;   /* for PHI node */
    goto _311;
  } else {
    goto _312;
  }

_312:
  if ((((_290 == ((uint8_t)0))&1))) {
    _291__PHI_TEMPORARY = 0;   /* for PHI node */
    _292__PHI_TEMPORARY = _287;   /* for PHI node */
    goto _311;
  } else {
    _283__PHI_TEMPORARY = _290;   /* for PHI node */
    _284__PHI_TEMPORARY = _289;   /* for PHI node */
    _285__PHI_TEMPORARY = _287;   /* for PHI node */
    _286__PHI_TEMPORARY = _288;   /* for PHI node */
    goto _309;
  }

  } while (1); /* end of syntactic loop '' */
_311:
  _291 = _291__PHI_TEMPORARY;
  _292 = _292__PHI_TEMPORARY;
  _293 = llvm_select_pu8((((_291 == ((uint8_t)0))&1)), _292, ((uint8_t*)/*NULL*/0));
  _294__PHI_TEMPORARY = _293;   /* for PHI node */
  goto _301;

_301:
  _294 = _294__PHI_TEMPORARY;
  return _294;
}


static uint8_t* vcard_get_val(uint32_t _313, uint8_t* _314, uint8_t** _315) {
  uint8_t _316;
  uint32_t _317;
  uint8_t _318;
  uint8_t _319;
  uint8_t _319__PHI_TEMPORARY;
  uint32_t _320;
  uint8_t _321;
  uint8_t _322;
  uint32_t _323;
  uint8_t _324;
  uint8_t _325;
  uint8_t _325__PHI_TEMPORARY;
  uint32_t _326;
  uint8_t _327;
  uint8_t _327__PHI_TEMPORARY;
  uint8_t* _328;
  uint8_t* _328__PHI_TEMPORARY;
  uint8_t* _329;
  uint8_t _330;
  uint8_t _331;
  uint8_t _331__PHI_TEMPORARY;
  uint8_t* _332;
  uint8_t* _332__PHI_TEMPORARY;
  uint8_t _333;
  uint8_t _333__PHI_TEMPORARY;
  uint8_t* _334;
  uint8_t* _334__PHI_TEMPORARY;
  uint32_t _335;
  uint8_t _336;
  uint8_t _336__PHI_TEMPORARY;
  uint32_t _337;
  uint32_t _337__PHI_TEMPORARY;
  uint8_t* _338;
  uint8_t* _338__PHI_TEMPORARY;
  uint32_t _339;
  uint8_t _340;
  uint8_t _340__PHI_TEMPORARY;
  uint8_t* _341;
  uint8_t* _341__PHI_TEMPORARY;
  uint32_t _342;
  uint32_t _342__PHI_TEMPORARY;
  uint32_t _343;
  uint8_t* _344;
  uint32_t _345;
  uint8_t _346;
  uint8_t _347;
  uint8_t* _348;
  uint8_t _349;
  uint8_t* _350;
  uint8_t _351;
  uint8_t _352;
  uint8_t _353;
  uint32_t _354;
  uint32_t _354__PHI_TEMPORARY;
  uint8_t* _355;
  uint8_t* _355__PHI_TEMPORARY;
  uint8_t* _356;
  uint8_t _357;
  uint8_t _358;
  uint8_t _358__PHI_TEMPORARY;
  uint8_t* _359;
  uint8_t* _359__PHI_TEMPORARY;
  uint8_t _360;
  uint8_t _361;
  uint8_t* _362;
  uint8_t _363;
  uint8_t _364;
  uint8_t _364__PHI_TEMPORARY;
  uint8_t* _365;
  uint8_t* _365__PHI_TEMPORARY;
  uint8_t* _366;
  uint8_t _367;
  uint32_t _368;
  uint32_t _368__PHI_TEMPORARY;
  uint8_t* _369;
  uint8_t* _369__PHI_TEMPORARY;
  uint8_t _370;
  uint8_t* _371;
  uint8_t* _372;
  uint8_t* _372__PHI_TEMPORARY;
  uint8_t* _373;
  uint8_t* _373__PHI_TEMPORARY;
  uint8_t _374;
  uint8_t _375;
  uint8_t _376;
  uint8_t* _377;
  uint8_t _378;
  uint8_t* _379;
  uint8_t* _380;
  uint8_t* _380__PHI_TEMPORARY;
  uint8_t _381;
  uint8_t* _382;
  uint8_t* _383;
  uint8_t* _384;
  uint8_t* _385;
  uint8_t* _385__PHI_TEMPORARY;
  uint8_t _386;
  uint8_t _387;
  uint8_t _387__PHI_TEMPORARY;
  uint8_t* _388;
  uint8_t* _388__PHI_TEMPORARY;
  uint32_t _389;
  uint32_t _389__PHI_TEMPORARY;
  uint32_t _390;
  uint8_t* _391;
  uint32_t _392;
  uint8_t _393;
  uint8_t* _394;
  uint8_t* _395;
  uint8_t* _396;
  uint8_t* _396__PHI_TEMPORARY;
  uint8_t* _397;
  uint8_t* _397__PHI_TEMPORARY;
  uint8_t _398;
  uint8_t _399;
  uint32_t _400;
  uint32_t _401;
  uint32_t _402;
  uint8_t* _403;
  uint8_t _404;
  uint32_t _405;
  uint32_t _406;
  uint32_t _407;
  uint32_t _407__PHI_TEMPORARY;
  uint8_t* _408;
  uint8_t* _409;
  uint8_t _410;
  uint8_t* _411;
  uint8_t* _412;
  uint8_t* _413;
  uint8_t* _413__PHI_TEMPORARY;
  uint8_t* _414;
  uint8_t* _414__PHI_TEMPORARY;
  uint8_t* _415;
  uint8_t* _416;
  uint8_t* _417;
  uint8_t* _417__PHI_TEMPORARY;

  if ((((_314 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _418;
  } else {
    goto _419;
  }

_418:
  _316 = l2cap_debug_enable;
  if (((((llvm_and_u8(_316, 32)) == ((uint8_t)0))&1))) {
    _319__PHI_TEMPORARY = _316;   /* for PHI node */
    goto _420;
  } else {
    goto _421;
  }

_421:
  _317 =  /*tail*/ puts(((&_OC_str_OC_36.array[((int32_t)0)])));
  _318 = l2cap_debug_enable;
  _319__PHI_TEMPORARY = _318;   /* for PHI node */
  goto _420;

_420:
  _319 = _319__PHI_TEMPORARY;
  if ((((((int8_t)_319) < ((int8_t)((uint8_t)0)))&1))) {
    goto _422;
  } else {
    _417__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _423;
  }

_422:
  _320 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_37.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_get_val.array[((int32_t)0)])));
  _417__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _423;

_419:
  if ((((_315 == ((uint8_t**)/*NULL*/0))&1))) {
    goto _424;
  } else {
    goto _425;
  }

_425:
  _321 = *_314;
  if ((((_321 == ((uint8_t)0))&1))) {
    _333__PHI_TEMPORARY = 0;   /* for PHI node */
    _334__PHI_TEMPORARY = _314;   /* for PHI node */
    goto _426;
  } else {
    goto _427;
  }

_427:
  _327__PHI_TEMPORARY = _321;   /* for PHI node */
  _328__PHI_TEMPORARY = _314;   /* for PHI node */
  goto _428;

_424:
  _322 = l2cap_debug_enable;
  if (((((llvm_and_u8(_322, 32)) == ((uint8_t)0))&1))) {
    _325__PHI_TEMPORARY = _322;   /* for PHI node */
    goto _429;
  } else {
    goto _430;
  }

_430:
  _323 =  /*tail*/ puts(((&_OC_str_OC_38.array[((int32_t)0)])));
  _324 = l2cap_debug_enable;
  _325__PHI_TEMPORARY = _324;   /* for PHI node */
  goto _429;

_429:
  _325 = _325__PHI_TEMPORARY;
  if ((((((int8_t)_325) < ((int8_t)((uint8_t)0)))&1))) {
    goto _431;
  } else {
    _417__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _423;
  }

_431:
  _326 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_39.array[((int32_t)0)])), ((&__FUNCTION___OC_vcard_get_val.array[((int32_t)0)])));
  _417__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _423;

  do {     /* Syntactic loop '' to make GCC happy */
_428:
  _327 = _327__PHI_TEMPORARY;
  _328 = _328__PHI_TEMPORARY;
  switch ((((int32_t)(int8_t)_327))) {
  default:
    _331__PHI_TEMPORARY = _327;   /* for PHI node */
    _332__PHI_TEMPORARY = _328;   /* for PHI node */
    goto _432;
  case 10u:
    goto _433;
  case 13u:
    goto _434;
  case 32u:
    goto _434;
  case 58u:
    goto _434;
  }

_434:
  _329 = (&_328[((int32_t)1)]);
  _330 = *_329;
  if ((((_330 == ((uint8_t)0))&1))) {
    _331__PHI_TEMPORARY = 0;   /* for PHI node */
    _332__PHI_TEMPORARY = _329;   /* for PHI node */
    goto _432;
  } else {
    _327__PHI_TEMPORARY = _330;   /* for PHI node */
    _328__PHI_TEMPORARY = _329;   /* for PHI node */
    goto _428;
  }

  } while (1); /* end of syntactic loop '' */
_432:
  _331 = _331__PHI_TEMPORARY;
  _332 = _332__PHI_TEMPORARY;
  _333__PHI_TEMPORARY = _331;   /* for PHI node */
  _334__PHI_TEMPORARY = _332;   /* for PHI node */
  goto _426;

_426:
  _333 = _333__PHI_TEMPORARY;
  _334 = _334__PHI_TEMPORARY;
  if ((((_313 == 1u)&1))) {
    goto _435;
  } else {
    goto _436;
  }

_436:
  _358__PHI_TEMPORARY = _333;   /* for PHI node */
  _359__PHI_TEMPORARY = _334;   /* for PHI node */
  goto _437;

_435:
  _335 = ((uint32_t)(uintptr_t)_334);
  _336__PHI_TEMPORARY = _333;   /* for PHI node */
  _337__PHI_TEMPORARY = 0;   /* for PHI node */
  _338__PHI_TEMPORARY = _334;   /* for PHI node */
  goto _438;

  do {     /* Syntactic loop '' to make GCC happy */
_438:
  _336 = _336__PHI_TEMPORARY;
  _337 = _337__PHI_TEMPORARY;
  _338 = _338__PHI_TEMPORARY;
  switch (_336) {
  default:
    _354__PHI_TEMPORARY = _337;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  case ((uint8_t)0):
    goto _440;
  case ((uint8_t)61):
    goto _441;
  case ((uint8_t)13):
    goto _442;
  case ((uint8_t)10):
    goto _443;
  }

_441:
  _339 = llvm_sub_u32((((uint32_t)(uintptr_t)_338)), _335);
  if ((((_337 == 1u)&1))) {
    goto _444;
  } else {
    goto _445;
  }

_445:
  if (((((((_339 != 0u)&1)) & (((_333 != ((uint8_t)0))&1)))&1))) {
    goto _446;
  } else {
    _354__PHI_TEMPORARY = _337;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  }

_446:
  _340__PHI_TEMPORARY = _333;   /* for PHI node */
  _341__PHI_TEMPORARY = _334;   /* for PHI node */
  _342__PHI_TEMPORARY = _339;   /* for PHI node */
  goto _447;

  do {     /* Syntactic loop '' to make GCC happy */
_447:
  _340 = _340__PHI_TEMPORARY;
  _341 = _341__PHI_TEMPORARY;
  _342 = _342__PHI_TEMPORARY;
  switch (_340) {
  default:
    goto _448;
  case ((uint8_t)81):
    goto _449;
  case ((uint8_t)58):
    goto _450;
  }

_449:
  _343 =  /*tail*/ strncmp(_341, ((&_OC_str_OC_40.array[((int32_t)0)])), 16);
  if ((((_343 == 0u)&1))) {
    goto _451;
  } else {
    goto _448;
  }

_448:
  _344 = (&_341[((int32_t)1)]);
  _345 = llvm_add_u32(_342, -1);
  _346 = *_344;
  if (((((((_345 != 0u)&1)) & (((_346 != ((uint8_t)0))&1)))&1))) {
    _340__PHI_TEMPORARY = _346;   /* for PHI node */
    _341__PHI_TEMPORARY = _344;   /* for PHI node */
    _342__PHI_TEMPORARY = _345;   /* for PHI node */
    goto _447;
  } else {
    goto _450;
  }

  } while (1); /* end of syntactic loop '' */
_451:
  goto _444;

_450:
  switch (_336) {
  default:
    _354__PHI_TEMPORARY = _337;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  case ((uint8_t)13):
    goto _442;
  case ((uint8_t)10):
    goto _443;
  }

_443:
  _353 = *((&_338[((int32_t)1)]));
  if ((((_353 == ((uint8_t)32))&1))) {
    _354__PHI_TEMPORARY = _337;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  } else {
    goto _440;
  }

_442:
  _351 = *((&_338[((int32_t)1)]));
  if ((((_351 == ((uint8_t)10))&1))) {
    goto _452;
  } else {
    _354__PHI_TEMPORARY = _337;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  }

_452:
  _352 = *((&_338[((int32_t)2)]));
  if ((((_352 == ((uint8_t)32))&1))) {
    _354__PHI_TEMPORARY = _337;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  } else {
    goto _440;
  }

_444:
  _347 = *((&_338[((int32_t)1)]));
  if ((((_347 == ((uint8_t)13))&1))) {
    goto _453;
  } else {
    _354__PHI_TEMPORARY = 1;   /* for PHI node */
    _355__PHI_TEMPORARY = _338;   /* for PHI node */
    goto _439;
  }

_453:
  _348 = (&_338[((int32_t)2)]);
  _349 = *_348;
  _350 = llvm_select_pu8((((_349 == ((uint8_t)10))&1)), _348, _338);
  _354__PHI_TEMPORARY = 1;   /* for PHI node */
  _355__PHI_TEMPORARY = _350;   /* for PHI node */
  goto _439;

_439:
  _354 = _354__PHI_TEMPORARY;
  _355 = _355__PHI_TEMPORARY;
  _356 = (&_355[((int32_t)1)]);
  _357 = *_356;
  _336__PHI_TEMPORARY = _357;   /* for PHI node */
  _337__PHI_TEMPORARY = _354;   /* for PHI node */
  _338__PHI_TEMPORARY = _356;   /* for PHI node */
  goto _438;

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '' to make GCC happy */
_437:
  _358 = _358__PHI_TEMPORARY;
  _359 = _359__PHI_TEMPORARY;
  switch (_358) {
  default:
    goto _454;
  case ((uint8_t)0):
    goto _455;
  case ((uint8_t)13):
    goto _456;
  case ((uint8_t)10):
    goto _457;
  }

_457:
  _366 = (&_359[((int32_t)1)]);
  _367 = *_366;
  if ((((_367 == ((uint8_t)32))&1))) {
    _364__PHI_TEMPORARY = 32;   /* for PHI node */
    _365__PHI_TEMPORARY = _366;   /* for PHI node */
    goto _458;
  } else {
    goto _455;
  }

_456:
  _360 = *((&_359[((int32_t)1)]));
  if ((((_360 == ((uint8_t)10))&1))) {
    goto _459;
  } else {
    goto _454;
  }

_459:
  _361 = *((&_359[((int32_t)2)]));
  if ((((_361 == ((uint8_t)32))&1))) {
    goto _454;
  } else {
    goto _455;
  }

_454:
  _362 = (&_359[((int32_t)1)]);
  _363 = *_362;
  _364__PHI_TEMPORARY = _363;   /* for PHI node */
  _365__PHI_TEMPORARY = _362;   /* for PHI node */
  goto _458;

_458:
  _364 = _364__PHI_TEMPORARY;
  _365 = _365__PHI_TEMPORARY;
  _358__PHI_TEMPORARY = _364;   /* for PHI node */
  _359__PHI_TEMPORARY = _365;   /* for PHI node */
  goto _437;

  } while (1); /* end of syntactic loop '' */
_440:
  _368__PHI_TEMPORARY = _337;   /* for PHI node */
  _369__PHI_TEMPORARY = _338;   /* for PHI node */
  goto _460;

_455:
  _368__PHI_TEMPORARY = 0;   /* for PHI node */
  _369__PHI_TEMPORARY = _359;   /* for PHI node */
  goto _460;

_460:
  _368 = _368__PHI_TEMPORARY;
  _369 = _369__PHI_TEMPORARY;
  if ((((_334 == _369)&1))) {
    goto _461;
  } else {
    goto _462;
  }

_461:
  *_315 = ((uint8_t*)/*NULL*/0);
  _417__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _423;

_462:
  _370 = *_369;
  *_369 = 0;
  _371 =  /*tail*/ strdup(_334);
  *_315 = _371;
  if (((((((_313 == 1u)&1)) | (((_371 == ((uint8_t*)/*NULL*/0))&1)))&1))) {
    _385__PHI_TEMPORARY = _371;   /* for PHI node */
    goto _463;
  } else {
    goto _464;
  }

_464:
  _372__PHI_TEMPORARY = _371;   /* for PHI node */
  _373__PHI_TEMPORARY = _371;   /* for PHI node */
  goto _465;

  do {     /* Syntactic loop '' to make GCC happy */
_465:
  _372 = _372__PHI_TEMPORARY;
  _373 = _373__PHI_TEMPORARY;
  _374 = *_372;
  switch (_374) {
  default:
    _380__PHI_TEMPORARY = _372;   /* for PHI node */
    goto _466;
  case ((uint8_t)0):
    goto _467;
  case ((uint8_t)13):
    goto _468;
  case ((uint8_t)10):
    goto _469;
  }

_469:
  _378 = *((&_372[((int32_t)1)]));
  _379 = llvm_select_pu8((((_378 == ((uint8_t)32))&1)), ((&_372[((int32_t)2)])), _372);
  _380__PHI_TEMPORARY = _379;   /* for PHI node */
  goto _466;

_468:
  _375 = *((&_372[((int32_t)1)]));
  if ((((_375 == ((uint8_t)10))&1))) {
    goto _470;
  } else {
    _380__PHI_TEMPORARY = _372;   /* for PHI node */
    goto _466;
  }

_470:
  _376 = *((&_372[((int32_t)2)]));
  _377 = llvm_select_pu8((((_376 == ((uint8_t)32))&1)), ((&_372[((int32_t)3)])), _372);
  _380__PHI_TEMPORARY = _377;   /* for PHI node */
  goto _466;

_466:
  _380 = _380__PHI_TEMPORARY;
  _381 = *_380;
  if ((((_381 == ((uint8_t)0))&1))) {
    goto _467;
  } else {
    goto _471;
  }

_471:
  *_373 = _381;
  _382 = (&_373[((int32_t)1)]);
  _383 = (&_380[((int32_t)1)]);
  _372__PHI_TEMPORARY = _383;   /* for PHI node */
  _373__PHI_TEMPORARY = _382;   /* for PHI node */
  goto _465;

  } while (1); /* end of syntactic loop '' */
_467:
  *_373 = 0;
  _384 = *_315;
  _385__PHI_TEMPORARY = _384;   /* for PHI node */
  goto _463;

_463:
  _385 = _385__PHI_TEMPORARY;
  if ((((_368 == 1u)&1))) {
    goto _472;
  } else {
    goto _473;
  }

_473:
  _386 = *_385;
  if ((((_386 == ((uint8_t)0))&1))) {
    goto _474;
  } else {
    goto _475;
  }

_475:
  _387__PHI_TEMPORARY = _386;   /* for PHI node */
  _388__PHI_TEMPORARY = _385;   /* for PHI node */
  _389__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _476;

  do {     /* Syntactic loop '' to make GCC happy */
_476:
  _387 = _387__PHI_TEMPORARY;
  _388 = _388__PHI_TEMPORARY;
  _389 = _389__PHI_TEMPORARY;
  switch (_387) {
  default:
    goto _477;
  case ((uint8_t)81):
    goto _478;
  case ((uint8_t)58):
    goto _479;
  }

_478:
  _390 =  /*tail*/ strncmp(_388, ((&_OC_str_OC_40.array[((int32_t)0)])), 16);
  if ((((_390 == 0u)&1))) {
    goto _480;
  } else {
    goto _477;
  }

_477:
  _391 = (&_388[((int32_t)1)]);
  _392 = llvm_add_u32(_389, -1);
  _393 = *_391;
  if (((((((_392 != 0u)&1)) & (((_393 != ((uint8_t)0))&1)))&1))) {
    _387__PHI_TEMPORARY = _393;   /* for PHI node */
    _388__PHI_TEMPORARY = _391;   /* for PHI node */
    _389__PHI_TEMPORARY = _392;   /* for PHI node */
    goto _476;
  } else {
    goto _479;
  }

  } while (1); /* end of syntactic loop '' */
_480:
  goto _472;

_472:
  _394 =  /*tail*/ strchr(_385, 58);
  _395 = llvm_select_pu8((((_394 == ((uint8_t*)/*NULL*/0))&1)), _385, _394);
  _396__PHI_TEMPORARY = _395;   /* for PHI node */
  _397__PHI_TEMPORARY = _395;   /* for PHI node */
  goto _481;

  do {     /* Syntactic loop '' to make GCC happy */
_481:
  _396 = _396__PHI_TEMPORARY;
  _397 = _397__PHI_TEMPORARY;
  _398 = *_397;
  switch (_398) {
  default:
    goto _482;
  case ((uint8_t)0):
    goto _483;
  case ((uint8_t)61):
    goto _484;
  }

_484:
  _399 = *((&_397[((int32_t)1)]));
  _400 = llvm_add_u32((((int32_t)(int8_t)_399)), -48);
  if ((((((uint32_t)_400) < ((uint32_t)55u))&1))) {
    goto _485;
  } else {
    goto _486;
  }

_485:
  _401 = *((&switch_OC_table.array[((int32_t)_400)]));
  if ((((((int32_t)_401) > ((int32_t)4294967295u))&1))) {
    goto _487;
  } else {
    goto _486;
  }

_486:
  if ((((_399 == ((uint8_t)13))&1))) {
    goto _488;
  } else {
    _413__PHI_TEMPORARY = _396;   /* for PHI node */
    _414__PHI_TEMPORARY = _397;   /* for PHI node */
    goto _489;
  }

_488:
  _409 = (&_397[((int32_t)2)]);
  _410 = *_409;
  _411 = llvm_select_pu8((((_410 == ((uint8_t)10))&1)), _409, _397);
  _413__PHI_TEMPORARY = _396;   /* for PHI node */
  _414__PHI_TEMPORARY = _411;   /* for PHI node */
  goto _489;

_487:
  _402 = _401 << 4;
  _403 = (&_397[((int32_t)2)]);
  _404 = *_403;
  _405 = llvm_add_u32((((int32_t)(int8_t)_404)), -48);
  if ((((((uint32_t)_405) < ((uint32_t)55u))&1))) {
    goto _490;
  } else {
    _407__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _491;
  }

_490:
  _406 = *((&switch_OC_table.array[((int32_t)_405)]));
  _407__PHI_TEMPORARY = _406;   /* for PHI node */
  goto _491;

_491:
  _407 = _407__PHI_TEMPORARY;
  *_396 = (((uint8_t)(llvm_add_u32(_407, _402))));
  _408 = (&_396[((int32_t)1)]);
  _413__PHI_TEMPORARY = _408;   /* for PHI node */
  _414__PHI_TEMPORARY = _403;   /* for PHI node */
  goto _489;

_482:
  *_396 = _398;
  _412 = (&_396[((int32_t)1)]);
  _413__PHI_TEMPORARY = _412;   /* for PHI node */
  _414__PHI_TEMPORARY = _397;   /* for PHI node */
  goto _489;

_489:
  _413 = _413__PHI_TEMPORARY;
  _414 = _414__PHI_TEMPORARY;
  _415 = (&_414[((int32_t)1)]);
  _396__PHI_TEMPORARY = _413;   /* for PHI node */
  _397__PHI_TEMPORARY = _415;   /* for PHI node */
  goto _481;

  } while (1); /* end of syntactic loop '' */
_483:
  *_396 = 0;
  goto _474;

_479:
  goto _474;

_474:
  *_369 = _370;
  _416 = (&_369[((int32_t)1)]);
  _417__PHI_TEMPORARY = _416;   /* for PHI node */
  goto _423;

_433:
  _417__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _423;

_423:
  _417 = _417__PHI_TEMPORARY;
  return _417;
}


uint32_t contacts_svc_vcard_foreach(uint8_t* _492, uint32_t _493, l_fptr_2* _494, uint8_t _495) {
  uint8_t* _496;
  uint8_t* _496__PHI_TEMPORARY;
  uint8_t* _497;
  uint8_t* _497__PHI_TEMPORARY;
  uint8_t* _498;
  uint8_t* _498__PHI_TEMPORARY;
  uint32_t _499;
  uint32_t _499__PHI_TEMPORARY;
  uint8_t* _500;
  uint8_t* _501;
  uint8_t* _501__PHI_TEMPORARY;
  uint8_t* _502;
  uint8_t* _502__PHI_TEMPORARY;
  uint32_t _503;
  uint32_t _503__PHI_TEMPORARY;
  uint8_t _504;
  uint8_t* _505;
  uint32_t _506;
  uint32_t _507;
  uint32_t _507__PHI_TEMPORARY;
  uint8_t* _508;
  uint8_t* _508__PHI_TEMPORARY;
  uint8_t* _509;
  uint8_t* _509__PHI_TEMPORARY;
  uint8_t* _510;
  uint8_t* _510__PHI_TEMPORARY;
  uint32_t _511;
  uint8_t* _512;
  uint32_t _513;
  uint8_t* _514;
  uint16_t _515;
  uint32_t _516;
  uint8_t* _517;
  uint16_t _518;
  uint32_t _519;
  uint8_t* _520;
  uint8_t* _521;
  uint8_t* _522;
  uint8_t* _523;
  uint32_t _524;
  uint8_t* _525;
  uint8_t* _526;
  uint32_t _527;
  uint8_t* _528;
  uint8_t _529;
  uint8_t* _530;
  uint32_t _531;
  uint32_t _532;
  uint8_t* _533;
  uint32_t _534;
  uint32_t _535;
  uint8_t* _536;
  uint8_t* _536__PHI_TEMPORARY;
  uint32_t _537;
  uint32_t _537__PHI_TEMPORARY;
  uint8_t* _538;
  uint8_t* _538__PHI_TEMPORARY;
  uint8_t* _539;
  uint8_t _540;
  uint32_t _541;
  uint16_t _542;
  uint8_t* _543;
  uint16_t _544;
  uint32_t _545;
  uint32_t _546;
  uint8_t* _547;
  uint8_t* _548;
  uint8_t* _549;
  uint8_t* _550;
  uint32_t _551;
  uint8_t* _552;
  uint8_t* _553;
  uint8_t* _554;
  uint8_t _555;
  uint32_t _556;
  uint8_t* _557;
  uint8_t* _558;
  uint8_t _559;
  uint32_t _560;
  uint32_t _561;
  uint32_t _561__PHI_TEMPORARY;

  if ((((_492 == ((uint8_t*)/*NULL*/0))&1))) {
    _561__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _562;
  } else {
    goto _563;
  }

_563:
  if ((((((int32_t)_493) > ((int32_t)0u))&1))) {
    goto _564;
  } else {
    _536__PHI_TEMPORARY = _492;   /* for PHI node */
    _537__PHI_TEMPORARY = 0;   /* for PHI node */
    _538__PHI_TEMPORARY = _492;   /* for PHI node */
    goto _565;
  }

_564:
  _496__PHI_TEMPORARY = _492;   /* for PHI node */
  _497__PHI_TEMPORARY = _492;   /* for PHI node */
  _498__PHI_TEMPORARY = _492;   /* for PHI node */
  _499__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _566;

  do {     /* Syntactic loop '' to make GCC happy */
_566:
  _496 = _496__PHI_TEMPORARY;
  _497 = _497__PHI_TEMPORARY;
  _498 = _498__PHI_TEMPORARY;
  _499 = _499__PHI_TEMPORARY;
  _500 = (&_498[((int32_t)11)]);
  _501__PHI_TEMPORARY = _496;   /* for PHI node */
  _502__PHI_TEMPORARY = _497;   /* for PHI node */
  _503__PHI_TEMPORARY = _499;   /* for PHI node */
  goto _567;

  do {     /* Syntactic loop '' to make GCC happy */
_567:
  _501 = _501__PHI_TEMPORARY;
  _502 = _502__PHI_TEMPORARY;
  _503 = _503__PHI_TEMPORARY;
  _504 = *_498;
  if ((((_504 == ((uint8_t)66))&1))) {
    goto _568;
  } else {
    goto _569;
  }

_568:
  _511 =  /*tail*/ strncmp(_498, ((&_OC_str_OC_3.array[((int32_t)0)])), 11);
  if ((((_511 == 0u)&1))) {
    goto _570;
  } else {
    goto _571;
  }

_570:
  _514 = last_ptr_data_ptr;
  if ((((_514 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _572;
  } else {
    goto _573;
  }

_573:
  _515 = last_ptr_data_len;
  _516 = llvm_add_u32(_503, 1);
  _517 =  /*tail*/ vcard_malloc((llvm_add_u32(_516, (((uint32_t)(uint16_t)_515)))));
  temp_vcard = _517;
  _518 = last_ptr_data_len;
  _519 = ((uint32_t)(uint16_t)_518);
  _520 = last_ptr_data_ptr;
  _521 = memset(((&_517[((int32_t)_519)])), 0, (llvm_select_u32((((((uint32_t)(llvm_add_u32(_516, _519))) <= ((uint32_t)_519))&1)), 0, _516)));
  _522 = memcpy(_517, _520, _519);
  _523 = memcpy(((&_517[((int32_t)_519)])), _492, _503);
  _524 =  /*tail*/ vcard_parse(_517, /*UNDEF*/0);
  last_ptr_data_len = 0;
  _525 = last_ptr_data_ptr;
   /*tail*/ free(_525);
  last_ptr_data_ptr = ((uint8_t*)/*NULL*/0);
  _526 = temp_vcard;
   /*tail*/ free(_526);
  temp_vcard = ((uint8_t*)/*NULL*/0);
  goto _572;

_572:
  _527 = llvm_select_u32((((_502 == _498)&1)), _503, (llvm_add_u32(_503, 11)));
  _528 = llvm_select_pu8((((_502 == _498)&1)), _501, _500);
  _529 = *_528;
  if ((((_529 == ((uint8_t)69))&1))) {
    goto _574;
  } else {
    goto _575;
  }

_574:
  _532 =  /*tail*/ strncmp(_528, ((&_OC_str_OC_12.array[((int32_t)0)])), 9);
  if ((((_532 == 0u)&1))) {
    goto _576;
  } else {
    goto _575;
  }

_575:
  _530 = (&_528[((int32_t)1)]);
  _531 = llvm_add_u32(_527, 1);
  if ((((((int32_t)_531) < ((int32_t)_493))&1))) {
    _501__PHI_TEMPORARY = _530;   /* for PHI node */
    _502__PHI_TEMPORARY = _498;   /* for PHI node */
    _503__PHI_TEMPORARY = _531;   /* for PHI node */
    goto _567;
  } else {
    goto _577;
  }

  } while (1); /* end of syntactic loop '' */
_569:
  _505 = (&_498[((int32_t)1)]);
  _506 = llvm_add_u32(_503, 1);
  _507__PHI_TEMPORARY = _506;   /* for PHI node */
  _508__PHI_TEMPORARY = _505;   /* for PHI node */
  _509__PHI_TEMPORARY = _502;   /* for PHI node */
  _510__PHI_TEMPORARY = _501;   /* for PHI node */
  goto _578;

_571:
  _512 = (&_498[((int32_t)1)]);
  _513 = llvm_add_u32(_503, 1);
  _507__PHI_TEMPORARY = _513;   /* for PHI node */
  _508__PHI_TEMPORARY = _512;   /* for PHI node */
  _509__PHI_TEMPORARY = _502;   /* for PHI node */
  _510__PHI_TEMPORARY = _501;   /* for PHI node */
  goto _578;

_576:
  _533 = (&_528[((int32_t)9)]);
  _534 = llvm_add_u32(_527, 9);
  _535 =  /*tail*/ vcard_parse(_498, /*UNDEF*/0);
  _507__PHI_TEMPORARY = _534;   /* for PHI node */
  _508__PHI_TEMPORARY = _533;   /* for PHI node */
  _509__PHI_TEMPORARY = _498;   /* for PHI node */
  _510__PHI_TEMPORARY = _533;   /* for PHI node */
  goto _578;

_578:
  _507 = _507__PHI_TEMPORARY;
  _508 = _508__PHI_TEMPORARY;
  _509 = _509__PHI_TEMPORARY;
  _510 = _510__PHI_TEMPORARY;
  if ((((((int32_t)_507) < ((int32_t)_493))&1))) {
    _496__PHI_TEMPORARY = _510;   /* for PHI node */
    _497__PHI_TEMPORARY = _509;   /* for PHI node */
    _498__PHI_TEMPORARY = _508;   /* for PHI node */
    _499__PHI_TEMPORARY = _507;   /* for PHI node */
    goto _566;
  } else {
    goto _579;
  }

  } while (1); /* end of syntactic loop '' */
_577:
  _536__PHI_TEMPORARY = _498;   /* for PHI node */
  _537__PHI_TEMPORARY = _531;   /* for PHI node */
  _538__PHI_TEMPORARY = _530;   /* for PHI node */
  goto _565;

_579:
  _536__PHI_TEMPORARY = _508;   /* for PHI node */
  _537__PHI_TEMPORARY = _507;   /* for PHI node */
  _538__PHI_TEMPORARY = _510;   /* for PHI node */
  goto _565;

_565:
  _536 = _536__PHI_TEMPORARY;
  _537 = _537__PHI_TEMPORARY;
  _538 = _538__PHI_TEMPORARY;
  _539 = last_ptr_data_ptr;
  if (((((((_495 == ((uint8_t)1))&1)) & (((_539 != ((uint8_t*)/*NULL*/0))&1)))&1))) {
    goto _580;
  } else {
    goto _581;
  }

_580:
  _540 = profile_debug_enable;
  if (((((llvm_and_u8(_540, 1)) == ((uint8_t)0))&1))) {
    goto _582;
  } else {
    goto _583;
  }

_583:
  _541 =  /*tail*/ puts(((&str_OC_69.array[((int32_t)0)])));
  goto _582;

_582:
  _542 = last_ptr_data_len;
  _543 =  /*tail*/ vcard_malloc((llvm_add_u32((llvm_add_u32(_493, 1)), (((uint32_t)(uint16_t)_542)))));
  temp_vcard = _543;
  _544 = last_ptr_data_len;
  _545 = ((uint32_t)(uint16_t)_544);
  _546 = llvm_add_u32(_537, 1);
  _547 = last_ptr_data_ptr;
  _548 = memset(((&_543[((int32_t)_545)])), 0, (llvm_select_u32((((((uint32_t)(llvm_add_u32(_546, _545))) <= ((uint32_t)_545))&1)), 0, _546)));
  _549 = memcpy(_543, _547, _545);
  _550 = memcpy(((&_543[((int32_t)_545)])), _492, _493);
  _551 =  /*tail*/ vcard_parse(_543, /*UNDEF*/0);
  last_ptr_data_len = 0;
  _552 = last_ptr_data_ptr;
   /*tail*/ free(_552);
  last_ptr_data_ptr = ((uint8_t*)/*NULL*/0);
  _553 = temp_vcard;
   /*tail*/ free(_553);
  temp_vcard = ((uint8_t*)/*NULL*/0);
  goto _581;

_581:
  if ((((_538 == _492)&1))) {
    goto _584;
  } else {
    goto _585;
  }

_584:
  _554 = last_ptr_data_ptr;
  if ((((_554 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _586;
  } else {
    goto _587;
  }

_587:
  last_ptr_data_len = 0;
   /*tail*/ free(_554);
  last_ptr_data_ptr = ((uint8_t*)/*NULL*/0);
  goto _586;

_585:
  if (((((((_495 == ((uint8_t)0))&1)) & (((_536 != _538)&1)))&1))) {
    goto _588;
  } else {
    goto _586;
  }

_588:
  _555 = profile_debug_enable;
  if (((((llvm_and_u8(_555, 1)) == ((uint8_t)0))&1))) {
    goto _589;
  } else {
    goto _590;
  }

_590:
  _556 =  /*tail*/ puts(((&str_OC_68.array[((int32_t)0)])));
  goto _589;

_589:
  _557 = llvm_select_pu8((((((uint32_t)_538) > ((uint32_t)_536))&1)), _536, _538);
  _558 =  /*tail*/ strdup(_557);
  last_ptr_data_ptr = _558;
  last_ptr_data_len = (((uint16_t)(llvm_sub_u32((((uint32_t)(uintptr_t)(llvm_select_pu8((((((uint32_t)_538) > ((uint32_t)_536))&1)), _538, _536)))), (((uint32_t)(uintptr_t)_557))))));
  goto _586;

_586:
  _559 = profile_debug_enable;
  if (((((llvm_and_u8(_559, 1)) == ((uint8_t)0))&1))) {
    _561__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _562;
  } else {
    goto _591;
  }

_591:
  _560 =  /*tail*/ puts(((&str_OC_67.array[((int32_t)0)])));
  _561__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _562;

_562:
  _561 = _561__PHI_TEMPORARY;
  return _561;
}

