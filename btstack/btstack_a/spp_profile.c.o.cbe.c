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
struct l_struct_struct_OC_spp_conn_t;
struct l_struct_struct_OC_spp_profile_t;
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_spp_ioctrl_str;

/* Function definitions */
typedef void l_fptr_2(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_5(uint8_t, uint8_t*, uint8_t*);

typedef uint32_t l_fptr_10(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_4(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_8(uint32_t);

typedef void l_fptr_11(void);

typedef void l_fptr_6(uint8_t*, uint32_t);

typedef void l_fptr_9(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_3(int, ...);

typedef uint32_t l_fptr_7(void);

typedef void l_fptr_1(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef uint8_t l_fptr_13(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_12(uint8_t);


/* Types Definitions */
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_spp_conn_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint32_t field3;
  uint8_t field4;
  struct l_array_6_uint8_t field5;
};
struct l_array_1_struct_AC_l_struct_struct_OC_spp_conn_t {
  struct l_struct_struct_OC_spp_conn_t array[1];
};
struct l_struct_struct_OC_spp_profile_t {
  struct l_array_1_struct_AC_l_struct_struct_OC_spp_conn_t field0;
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_3* field0;
  l_fptr_3* field1;
  l_fptr_3* field2;
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_4* field0;
  l_fptr_5* field1;
  l_fptr_6* field2;
  l_fptr_7* field3;
  l_fptr_2* field4;
  l_fptr_1* field5;
  l_fptr_7* field6;
  l_fptr_8* field7;
  l_fptr_9* field8;
  l_fptr_10* field9;
  l_fptr_11* field10;
  l_fptr_12* field11;
  l_fptr_13* field12;
  l_fptr_2* field13;
  l_fptr_7* field14;
};
struct l_struct_struct_OC_spp_ioctrl_str {
  struct l_array_6_uint8_t field0;
  uint8_t field1;
  uint32_t field2;
  uint32_t field3;
  uint8_t* field4;
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;

/* Function Declarations */
void spp_handl_init(struct l_struct_struct_OC_spp_profile_t*) __ATTRIBUTELIST__((always_inline, nothrow)) __HIDDEN__;
void rfcomm_register_service_internal(uint8_t*, l_fptr_2*, uint8_t, uint16_t);
static void spp_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint8_t spp_set_mtu_size(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t spp_send_cmd_ioctrl(struct l_struct_struct_OC_spp_ioctrl_str*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void rfcomm_create_channel_internal(uint8_t*, l_fptr_2*, struct l_array_6_uint8_t*, uint8_t);
uint8_t spp_check_conn_for_rfcomm_id(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t spp_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void spp_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void spp_channel_open(uint8_t, uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
void bt_flip_addr(uint8_t*, uint8_t*);
static struct l_struct_struct_OC_spp_conn_t* __spp_conn_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static struct l_struct_struct_OC_spp_conn_t* __create_spp_conn(uint8_t*) __ATTRIBUTELIST__((nothrow));
void rfcomm_accept_connection_internal(uint16_t);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
void rfcomm_disconnect_internal(uint16_t);
uint32_t rfcomm_send_internal(uint16_t, uint8_t*, uint16_t);
static uint32_t spp_suspend(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t spp_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t spp_release(void) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_spp_profile_t* spp_handl;
static uint16_t spp_mtu_size = 670;
struct l_struct_struct_OC_bt_sleep bt_suspend_spp_resumespp_release __HIDDEN__ = { ((l_fptr_3*)spp_suspend), ((l_fptr_3*)spp_resume), ((l_fptr_3*)spp_release) };
static struct l_array_28_uint8_t _OC_str = { "****RFCOMM_DATA_PACKET****\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_select_u32(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

void spp_handl_init(struct l_struct_struct_OC_spp_profile_t* _1) {
  uint16_t _2;

  spp_handl = _1;
  _2 = spp_mtu_size;
   /*tail*/ rfcomm_register_service_internal(((uint8_t*)/*NULL*/0), spp_packet_handler, 1, _2);
}


static void spp_packet_handler(uint8_t _3, uint16_t _4, uint8_t* _5, uint16_t _6) {
  struct l_array_6_uint8_t _7;    /* Address-exposed local */
  uint8_t _8;
  uint8_t* _9;
  struct l_struct_struct_OC_spp_conn_t* _10;
  struct l_struct_struct_OC_spp_conn_t* _11;
  struct l_struct_struct_OC_spp_conn_t* _12;
  struct l_struct_struct_OC_spp_conn_t* _12__PHI_TEMPORARY;
  uint8_t _13;
  uint8_t _14;
  uint16_t _15;
  uint8_t _16;
  struct l_struct_struct_OC_spp_profile_t* _17;
  struct l_struct_struct_OC_spp_conn_t* _18;
  struct l_struct_struct_OC_spp_conn_t* _19;
  struct l_struct_struct_OC_spp_conn_t* _20;
  struct l_struct_struct_OC_spp_conn_t* _20__PHI_TEMPORARY;
  uint16_t _21;
  uint8_t _22;
  struct l_struct_struct_OC_spp_conn_t* _23;
  struct l_struct_struct_OC_user_interface_handler* _24;
  l_fptr_1* _25;
  struct l_struct_struct_OC_user_interface_handler* _26;
  struct l_struct_struct_OC_user_interface_handler* _27;
  struct l_struct_struct_OC_user_interface_handler* _27__PHI_TEMPORARY;
  uint8_t* _28;
  l_fptr_2* _29;
  uint8_t _30;
  uint8_t _31;
  uint32_t _32;
  uint8_t _33;
  uint8_t _34;
  uint8_t _34__PHI_TEMPORARY;
  struct l_struct_struct_OC_spp_profile_t* _35;
  struct l_struct_struct_OC_spp_conn_t* _36;
  struct l_struct_struct_OC_spp_conn_t* _37;
  struct l_struct_struct_OC_spp_conn_t* _38;
  struct l_struct_struct_OC_spp_conn_t* _38__PHI_TEMPORARY;
  uint16_t _39;
  uint8_t _40;
  struct l_struct_struct_OC_spp_conn_t* _41;
  struct l_struct_struct_OC_user_interface_handler* _42;
  l_fptr_2* _43;
  uint16_t _44;
  uint8_t _45;

  switch (_3) {
  default:
    goto _46;
  case ((uint8_t)4):
    goto _47;
  case ((uint8_t)7):
    goto _48;
  }

_47:
  _8 = *_5;
  switch (_8) {
  default:
    goto _49;
  case ((uint8_t)-126):
    goto _50;
  case ((uint8_t)128u):
    goto _51;
  case ((uint8_t)-127):
    goto _52;
  case ((uint8_t)-119):
    goto _53;
  }

_50:
  _9 = (&_7.array[((int32_t)0)]);
  bt_flip_addr(_9, ((&_5[((int32_t)2)])));
  _10 = __spp_conn_for_addr(_9);
  if ((((_10 == ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0))&1))) {
    goto _54;
  } else {
    _12__PHI_TEMPORARY = _10;   /* for PHI node */
    goto _55;
  }

_54:
  _11 = __create_spp_conn(_9);
  if ((((_11 == ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0))&1))) {
    goto _56;
  } else {
    _12__PHI_TEMPORARY = _11;   /* for PHI node */
    goto _55;
  }

_55:
  _12 = _12__PHI_TEMPORARY;
  *((&_12->field0)) = _4;
  _13 = *((&_5[((int32_t)9)]));
  _14 = *((&_5[((int32_t)10)]));
  _15 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_14)), 8)), (((uint16_t)(uint8_t)_13)));
  *((&_12->field1)) = _15;
  rfcomm_accept_connection_internal(_15);
  goto _56;

_56:
  goto _49;

_51:
  _16 = *((&_5[((int32_t)2)]));
   /*tail*/ spp_channel_open(_16, _4, _5, 1);
  goto _49;

_52:
  _17 = spp_handl;
  _18 = (&_17->field0.array[((int32_t)0)]);
  _19 = (&_17->field0.array[((int32_t)1)]);
  _20__PHI_TEMPORARY = _18;   /* for PHI node */
  goto _57;

  do {     /* Syntactic loop '' to make GCC happy */
_57:
  _20 = _20__PHI_TEMPORARY;
  _21 = *((&_20->field0));
  if ((((_21 == _4)&1))) {
    goto _58;
  } else {
    goto _59;
  }

_58:
  _22 = *((&_20->field4));
  if ((((_22 == ((uint8_t)0))&1))) {
    goto _59;
  } else {
    goto _60;
  }

_59:
  _23 = (&_20[((int32_t)1)]);
  if ((((((uint32_t)_23) < ((uint32_t)_19))&1))) {
    _20__PHI_TEMPORARY = _23;   /* for PHI node */
    goto _57;
  } else {
    goto _61;
  }

  } while (1); /* end of syntactic loop '' */
_60:
  _24 = user_interface;
  _25 = *((&_24->field5));
  if ((((_25 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _27__PHI_TEMPORARY = _24;   /* for PHI node */
    goto _62;
  } else {
    goto _63;
  }

_63:
   /*tail*/ _25(((&_20->field5.array[((int32_t)0)])), 0, 1, 1);
  _26 = user_interface;
  _27__PHI_TEMPORARY = _26;   /* for PHI node */
  goto _62;

_62:
  _27 = _27__PHI_TEMPORARY;
  *((&_20->field1)) = 0;
  *((&_20->field2)) = 0;
  _28 = memset((((uint8_t*)((&_20->field3)))), 0, 11);
  _29 = *((&_27->field4));
  if ((((_29 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _49;
  } else {
    goto _64;
  }

_64:
   /*tail*/ _29(2, 0, ((uint8_t*)/*NULL*/0), 0);
  goto _49;

_53:
  _30 = *((&_5[((int32_t)2)]));
   /*tail*/ spp_channel_open(_30, _4, _5, 0);
  goto _49;

_48:
  _31 = l2cap_debug_enable;
  if (((((llvm_and_u8(_31, 32)) == ((uint8_t)0))&1))) {
    _34__PHI_TEMPORARY = _31;   /* for PHI node */
    goto _65;
  } else {
    goto _66;
  }

_66:
  _32 =  /*tail*/ puts(((&_OC_str.array[((int32_t)0)])));
  _33 = l2cap_debug_enable;
  _34__PHI_TEMPORARY = _33;   /* for PHI node */
  goto _65;

_65:
  _34 = _34__PHI_TEMPORARY;
  if (((((llvm_and_u8(_34, 64u)) == ((uint8_t)0))&1))) {
    goto _67;
  } else {
    goto _68;
  }

_68:
   /*tail*/ put_buf(_5, (((uint32_t)(uint16_t)_6)));
  goto _67;

_67:
  _35 = spp_handl;
  _36 = (&_35->field0.array[((int32_t)0)]);
  _37 = (&_35->field0.array[((int32_t)1)]);
  _38__PHI_TEMPORARY = _36;   /* for PHI node */
  goto _69;

  do {     /* Syntactic loop '' to make GCC happy */
_69:
  _38 = _38__PHI_TEMPORARY;
  _39 = *((&_38->field0));
  if ((((_39 == _4)&1))) {
    goto _70;
  } else {
    goto _71;
  }

_70:
  _40 = *((&_38->field4));
  if ((((_40 == ((uint8_t)0))&1))) {
    goto _71;
  } else {
    goto _72;
  }

_71:
  _41 = (&_38[((int32_t)1)]);
  if ((((((uint32_t)_41) < ((uint32_t)_37))&1))) {
    _38__PHI_TEMPORARY = _41;   /* for PHI node */
    goto _69;
  } else {
    goto _73;
  }

  } while (1); /* end of syntactic loop '' */
_72:
  _42 = user_interface;
  _43 = *((&_42->field4));
  if ((((_43 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _49;
  } else {
    goto _74;
  }

_74:
  _44 = *((&_38->field1));
   /*tail*/ _43(7, _44, _5, _6);
  goto _49;

_46:
  _45 = l2cap_debug_enable;
  if (((((llvm_and_u8(_45, 64u)) == ((uint8_t)0))&1))) {
    goto _49;
  } else {
    goto _75;
  }

_75:
   /*tail*/ put_buf(_5, (((uint32_t)(uint16_t)_6)));
  goto _49;

_61:
  goto _49;

_73:
  goto _49;

_49:
  return;
}


uint8_t spp_set_mtu_size(uint16_t _76) {
  uint8_t _77;
  uint8_t _77__PHI_TEMPORARY;

  if ((((((uint16_t)_76) > ((uint16_t)((uint16_t)670)))&1))) {
    _77__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _78;
  } else {
    goto _79;
  }

_79:
  spp_mtu_size = _76;
  _77__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _78;

_78:
  _77 = _77__PHI_TEMPORARY;
  return _77;
}


uint32_t spp_send_cmd_ioctrl(struct l_struct_struct_OC_spp_ioctrl_str* _80) {
  uint32_t _81;
  uint8_t _82;
  struct l_struct_struct_OC_spp_conn_t* _83;
  uint16_t _84;
  struct l_struct_struct_OC_spp_conn_t* _85;
  uint16_t _86;
  uint32_t _87;
  uint8_t* _88;
  uint32_t _89;
  uint32_t _90;
  uint32_t _91;
  uint32_t _91__PHI_TEMPORARY;

  _81 = *((&_80->field2));
  switch (_81) {
  default:
    _91__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _92;
  case 1u:
    goto _93;
  case 2u:
    goto _94;
  case 3u:
    goto _95;
  }

_93:
  _82 = *((&_80->field1));
   /*tail*/ rfcomm_create_channel_internal(((uint8_t*)/*NULL*/0), spp_packet_handler, ((&_80->field0)), _82);
  _91__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _92;

_94:
  _83 =  /*tail*/ __spp_conn_for_addr(((&_80->field0.array[((int32_t)0)])));
  if ((((_83 == ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0))&1))) {
    _91__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _92;
  } else {
    goto _96;
  }

_96:
  _84 = *((&_83->field1));
   /*tail*/ rfcomm_disconnect_internal(_84);
  _91__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _92;

_95:
  _85 =  /*tail*/ __spp_conn_for_addr(((&_80->field0.array[((int32_t)0)])));
  _86 = *((&_85->field1));
  if ((((_86 == ((uint16_t)0))&1))) {
    _91__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _92;
  } else {
    goto _97;
  }

_97:
  _87 = *((&_80->field3));
  _88 = *((&_80->field4));
  _89 =  /*tail*/ rfcomm_send_internal(_86, _88, (((uint16_t)_87)));
  _90 = llvm_select_u32((((_89 != 0u)&1)), -1002, 0);
  _91__PHI_TEMPORARY = _90;   /* for PHI node */
  goto _92;

_92:
  _91 = _91__PHI_TEMPORARY;
  return _91;
}


uint8_t spp_check_conn_for_rfcomm_id(uint16_t _98) {
  struct l_struct_struct_OC_spp_profile_t* _99;
  struct l_struct_struct_OC_spp_conn_t* _100;
  struct l_struct_struct_OC_spp_conn_t* _101;
  struct l_struct_struct_OC_spp_conn_t* _102;
  struct l_struct_struct_OC_spp_conn_t* _102__PHI_TEMPORARY;
  uint16_t _103;
  uint8_t _104;
  struct l_struct_struct_OC_spp_conn_t* _105;
  uint8_t _106;
  uint8_t _106__PHI_TEMPORARY;
  uint8_t _107;
  uint8_t _107__PHI_TEMPORARY;

  _99 = spp_handl;
  if ((((_99 == ((struct l_struct_struct_OC_spp_profile_t*)/*NULL*/0))&1))) {
    _107__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _108;
  } else {
    goto _109;
  }

_109:
  _100 = (&_99->field0.array[((int32_t)1)]);
  _101 = (&_99->field0.array[((int32_t)0)]);
  _102__PHI_TEMPORARY = _101;   /* for PHI node */
  goto _110;

  do {     /* Syntactic loop '' to make GCC happy */
_110:
  _102 = _102__PHI_TEMPORARY;
  _103 = *((&_102->field1));
  if ((((_103 == _98)&1))) {
    goto _111;
  } else {
    goto _112;
  }

_111:
  _104 = *((&_102->field4));
  if ((((_104 == ((uint8_t)0))&1))) {
    goto _112;
  } else {
    _106__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _113;
  }

_112:
  _105 = (&_102[((int32_t)1)]);
  if ((((((uint32_t)_105) < ((uint32_t)_100))&1))) {
    _102__PHI_TEMPORARY = _105;   /* for PHI node */
    goto _110;
  } else {
    _106__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _113;
  }

  } while (1); /* end of syntactic loop '' */
_113:
  _106 = _106__PHI_TEMPORARY;
  _107__PHI_TEMPORARY = _106;   /* for PHI node */
  goto _108;

_108:
  _107 = _107__PHI_TEMPORARY;
  return _107;
}


uint32_t spp_core_data_for_send(uint8_t* _114, uint16_t _115) {
  struct l_struct_struct_OC_spp_profile_t* _116;
  uint8_t* _117;
  uint32_t _118;
  uint32_t _118__PHI_TEMPORARY;

  _116 = spp_handl;
  if ((((_116 == ((struct l_struct_struct_OC_spp_profile_t*)/*NULL*/0))&1))) {
    _118__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _119;
  } else {
    goto _120;
  }

_120:
  _117 = memcpy(_114, (((uint8_t*)_116)), 20);
  _118__PHI_TEMPORARY = 20;   /* for PHI node */
  goto _119;

_119:
  _118 = _118__PHI_TEMPORARY;
  return _118;
}


void spp_core_data_for_set(uint8_t* _121, uint16_t _122) {
  struct l_struct_struct_OC_spp_profile_t* _123;
  uint8_t* _124;

  _123 = spp_handl;
  if ((((_123 == ((struct l_struct_struct_OC_spp_profile_t*)/*NULL*/0))&1))) {
    goto _125;
  } else {
    goto _126;
  }

_126:
  _124 = memcpy((((uint8_t*)_123)), _121, 20);
  goto _125;

_125:
  return;
}


static void spp_channel_open(uint8_t _127, uint16_t _128, uint8_t* _129, uint8_t _130) {
  struct l_array_6_uint8_t _131;    /* Address-exposed local */
  uint8_t* _132;
  struct l_struct_struct_OC_spp_conn_t* _133;
  struct l_struct_struct_OC_spp_conn_t* _134;
  struct l_struct_struct_OC_user_interface_handler* _135;
  l_fptr_1* _136;
  uint8_t* _137;
  struct l_struct_struct_OC_user_interface_handler* _138;
  struct l_struct_struct_OC_user_interface_handler* _139;
  struct l_struct_struct_OC_user_interface_handler* _139__PHI_TEMPORARY;
  uint8_t* _140;
  l_fptr_2* _141;
  uint16_t _142;
  struct l_struct_struct_OC_spp_conn_t* _143;
  struct l_struct_struct_OC_spp_conn_t* _143__PHI_TEMPORARY;
  uint8_t _144;
  uint8_t _145;
  uint16_t* _146;
  struct l_struct_struct_OC_user_interface_handler* _147;
  l_fptr_1* _148;
  struct l_struct_struct_OC_user_interface_handler* _149;
  struct l_struct_struct_OC_user_interface_handler* _150;
  struct l_struct_struct_OC_user_interface_handler* _150__PHI_TEMPORARY;
  l_fptr_2* _151;
  uint16_t _152;

  _132 = (&_131.array[((int32_t)0)]);
  bt_flip_addr(_132, ((&_129[((int32_t)3)])));
  _133 = __spp_conn_for_addr(_132);
  if ((((_133 == ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0))&1))) {
    goto _153;
  } else {
    goto _154;
  }

_153:
  if ((((_127 == ((uint8_t)0))&1))) {
    goto _155;
  } else {
    goto _156;
  }

_155:
  _134 = __create_spp_conn(_132);
  if ((((_134 == ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0))&1))) {
    goto _156;
  } else {
    _143__PHI_TEMPORARY = _134;   /* for PHI node */
    goto _157;
  }

_154:
  if ((((_127 == ((uint8_t)0))&1))) {
    _143__PHI_TEMPORARY = _133;   /* for PHI node */
    goto _157;
  } else {
    goto _158;
  }

_158:
  _135 = user_interface;
  _136 = *((&_135->field5));
  _137 = (&_133->field5.array[((int32_t)0)]);
  if ((((_136 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _139__PHI_TEMPORARY = _135;   /* for PHI node */
    goto _159;
  } else {
    goto _160;
  }

_160:
  _136(_137, 0, 1, _130);
  _138 = user_interface;
  _139__PHI_TEMPORARY = _138;   /* for PHI node */
  goto _159;

_159:
  _139 = _139__PHI_TEMPORARY;
  *((&_133->field4)) = 0;
  _140 = memset(_137, 0, 6);
  _141 = *((&_139->field4));
  if ((((_141 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _156;
  } else {
    goto _161;
  }

_161:
  _142 = *((&_133->field1));
  _141(2, _142, ((uint8_t*)/*NULL*/0), 0);
  goto _156;

_157:
  _143 = _143__PHI_TEMPORARY;
  *((&_143->field0)) = _128;
  _144 = *((&_129[((int32_t)12)]));
  _145 = *((&_129[((int32_t)13)]));
  _146 = (&_143->field1);
  *_146 = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_145)), 8)), (((uint16_t)(uint8_t)_144))));
  _147 = user_interface;
  _148 = *((&_147->field5));
  if ((((_148 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _150__PHI_TEMPORARY = _147;   /* for PHI node */
    goto _162;
  } else {
    goto _163;
  }

_163:
  _148(((&_143->field5.array[((int32_t)0)])), 1, 1, _130);
  _149 = user_interface;
  _150__PHI_TEMPORARY = _149;   /* for PHI node */
  goto _162;

_162:
  _150 = _150__PHI_TEMPORARY;
  _151 = *((&_150->field4));
  if ((((_151 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _156;
  } else {
    goto _164;
  }

_164:
  _152 = *_146;
  _151(1, _152, ((uint8_t*)/*NULL*/0), 0);
  goto _156;

_156:
  return;
}


static struct l_struct_struct_OC_spp_conn_t* __spp_conn_for_addr(uint8_t* _165) {
  struct l_struct_struct_OC_spp_profile_t* _166;
  struct l_struct_struct_OC_spp_conn_t* _167;
  struct l_struct_struct_OC_spp_conn_t* _168;
  struct l_struct_struct_OC_spp_conn_t* _169;
  struct l_struct_struct_OC_spp_conn_t* _169__PHI_TEMPORARY;
  uint32_t _170;
  uint8_t _171;
  struct l_struct_struct_OC_spp_conn_t* _172;
  struct l_struct_struct_OC_spp_conn_t* _173;
  struct l_struct_struct_OC_spp_conn_t* _173__PHI_TEMPORARY;

  _166 = spp_handl;
  _167 = (&_166->field0.array[((int32_t)0)]);
  _168 = (&_166->field0.array[((int32_t)1)]);
  _169__PHI_TEMPORARY = _167;   /* for PHI node */
  goto _174;

  do {     /* Syntactic loop '' to make GCC happy */
_174:
  _169 = _169__PHI_TEMPORARY;
  _170 =  /*tail*/ memcmp(((&_169->field5.array[((int32_t)0)])), _165, 6);
  if ((((_170 == 0u)&1))) {
    goto _175;
  } else {
    goto _176;
  }

_175:
  _171 = *((&_169->field4));
  if ((((_171 == ((uint8_t)0))&1))) {
    goto _176;
  } else {
    _173__PHI_TEMPORARY = _169;   /* for PHI node */
    goto _177;
  }

_176:
  _172 = (&_169[((int32_t)1)]);
  if ((((((uint32_t)_172) < ((uint32_t)_168))&1))) {
    _169__PHI_TEMPORARY = _172;   /* for PHI node */
    goto _174;
  } else {
    _173__PHI_TEMPORARY = ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0);   /* for PHI node */
    goto _177;
  }

  } while (1); /* end of syntactic loop '' */
_177:
  _173 = _173__PHI_TEMPORARY;
  return _173;
}


static struct l_struct_struct_OC_spp_conn_t* __create_spp_conn(uint8_t* _178) {
  struct l_struct_struct_OC_spp_profile_t* _179;
  struct l_struct_struct_OC_spp_conn_t* _180;
  struct l_struct_struct_OC_spp_conn_t* _181;
  struct l_struct_struct_OC_spp_conn_t* _182;
  struct l_struct_struct_OC_spp_conn_t* _182__PHI_TEMPORARY;
  uint8_t* _183;
  uint8_t _184;
  uint8_t* _185;
  struct l_struct_struct_OC_spp_conn_t* _186;
  struct l_struct_struct_OC_spp_conn_t* _187;
  struct l_struct_struct_OC_spp_conn_t* _187__PHI_TEMPORARY;

  _179 = spp_handl;
  _180 = (&_179->field0.array[((int32_t)0)]);
  _181 = (&_179->field0.array[((int32_t)1)]);
  _182__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _188;

  do {     /* Syntactic loop '' to make GCC happy */
_188:
  _182 = _182__PHI_TEMPORARY;
  _183 = (&_182->field4);
  _184 = *_183;
  if ((((_184 == ((uint8_t)0))&1))) {
    goto _189;
  } else {
    goto _190;
  }

_190:
  _186 = (&_182[((int32_t)1)]);
  if ((((((uint32_t)_186) < ((uint32_t)_181))&1))) {
    _182__PHI_TEMPORARY = _186;   /* for PHI node */
    goto _188;
  } else {
    goto _191;
  }

  } while (1); /* end of syntactic loop '' */
_189:
  *_183 = 1;
  _185 = memcpy(((&_182->field5.array[((int32_t)0)])), _178, 6);
  *((&_182->field1)) = 0;
  *((&_182->field2)) = 0;
  *((&_182->field3)) = 0;
  _187__PHI_TEMPORARY = _182;   /* for PHI node */
  goto _192;

_191:
  _187__PHI_TEMPORARY = ((struct l_struct_struct_OC_spp_conn_t*)/*NULL*/0);   /* for PHI node */
  goto _192;

_192:
  _187 = _187__PHI_TEMPORARY;
  return _187;
}


static uint32_t spp_suspend(void) {
  return 0;
}


static uint32_t spp_resume(void) {
  return 0;
}


static uint32_t spp_release(void) {
  struct l_struct_struct_OC_spp_profile_t* _193;
  struct l_struct_struct_OC_spp_conn_t* _194;
  struct l_struct_struct_OC_spp_conn_t* _195;
  struct l_struct_struct_OC_spp_conn_t* _196;
  struct l_struct_struct_OC_spp_conn_t* _196__PHI_TEMPORARY;
  uint8_t _197;
  struct l_struct_struct_OC_spp_conn_t* _198;
  uint32_t _199;
  uint32_t _199__PHI_TEMPORARY;

  _193 = spp_handl;
  if ((((_193 == ((struct l_struct_struct_OC_spp_profile_t*)/*NULL*/0))&1))) {
    _199__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _200;
  } else {
    goto _201;
  }

_201:
  _194 = (&_193->field0.array[((int32_t)1)]);
  _195 = (&_193->field0.array[((int32_t)0)]);
  _196__PHI_TEMPORARY = _195;   /* for PHI node */
  goto _202;

  do {     /* Syntactic loop '' to make GCC happy */
_202:
  _196 = _196__PHI_TEMPORARY;
  _197 = *((&_196->field4));
  _198 = (&_196[((int32_t)1)]);
  if ((((_197 == ((uint8_t)0))&1))) {
    goto _203;
  } else {
    goto _204;
  }

_203:
  if ((((((uint32_t)_198) < ((uint32_t)_194))&1))) {
    _196__PHI_TEMPORARY = _198;   /* for PHI node */
    goto _202;
  } else {
    goto _205;
  }

  } while (1); /* end of syntactic loop '' */
_205:
  spp_handl = ((struct l_struct_struct_OC_spp_profile_t*)/*NULL*/0);
  _199__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _200;

_204:
  _199__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _200;

_200:
  _199 = _199__PHI_TEMPORARY;
  return _199;
}

