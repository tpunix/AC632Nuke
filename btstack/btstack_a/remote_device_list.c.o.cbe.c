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
struct l_struct_struct_OC_remote_ctrl_t;
struct l_struct_struct_OC_BLE_REMOTE_LIST_T;

/* Function definitions */

uint8_t get_conn_addr_item(uint8_t*, uint8_t, struct l_struct_struct_OC_BLE_REMOTE_LIST_T*, uint8_t);

uint8_t get_conn_addr_item(uint8_t*, uint8_t, struct l_struct_struct_OC_BLE_REMOTE_LIST_T*, uint8_t);

uint8_t get_conn_addr_item(uint8_t*, uint8_t, struct l_struct_struct_OC_BLE_REMOTE_LIST_T*, uint8_t);

/* Types Definitions */
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_struct_struct_OC_remote_ctrl_t {
  uint8_t field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  struct l_array_10_uint8_t field4;
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_struct_struct_OC_BLE_REMOTE_LIST_T {
  struct l_array_16_uint8_t field0;
  struct l_array_16_uint8_t field1;
  struct l_array_6_uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  struct l_array_8_uint8_t field5;
  struct l_array_2_uint8_t field6;
  uint8_t field7;
  uint8_t field8;
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
struct l_array_52_uint8_t {
  uint8_t array[52];
};

/* External Global Variable Declarations */
extern uint32_t config_le_sm_support_enable;

/* Function Declarations */
uint8_t ble_list_get_conn_addr_item(uint8_t*, uint8_t, uint8_t, struct l_struct_struct_OC_BLE_REMOTE_LIST_T*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint8_t get_conn_addr_item(uint8_t*, uint8_t, struct l_struct_struct_OC_BLE_REMOTE_LIST_T*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint16_t ble_list_get_count(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint8_t reflash_remote_info(uint8_t) __ATTRIBUTELIST__((nothrow));
void ble_list_config_reset(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_clear_all(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sm_allow_ltk_reconstruction_without_le_device_db_entry(uint32_t);
static uint8_t get_list_exist_item(struct l_struct_struct_OC_BLE_REMOTE_LIST_T*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t syscfg_write(uint16_t, uint8_t*, uint16_t);
uint8_t ble_list_pair_add(uint8_t, uint8_t*, uint8_t, uint8_t*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint8_t add_new_device_to_list(struct l_struct_struct_OC_BLE_REMOTE_LIST_T*) __ATTRIBUTELIST__((nothrow));
uint8_t ble_list_get_id_addr(uint8_t*, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_get_id_addr_extend(uint8_t*, uint8_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_get_remote_type(uint8_t*, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_check_addr_is_exist(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_check_addr_is_exist_extend(uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_reconnect_device_is_exist(uint8_t*, uint8_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
static uint8_t check_random_addr(uint8_t*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t ble_list_pair_is_allow(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_pair_accept(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_bonding_remote(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_get_last_id_addr(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t ble_list_delete_device(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void delete_device_by_index(uint8_t) __ATTRIBUTELIST__((nothrow));
void ble_list_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
uint32_t syscfg_read(uint16_t, uint8_t*, uint16_t);
void swapX(uint8_t*, uint8_t*, uint32_t);
void swap128(uint8_t*, uint8_t*);
void irk_enc(uint8_t*, uint8_t*, uint8_t*);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_remote_ctrl_t remote_info_hdl = { 0, 0, -1, -1, { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } } };
static struct l_array_20_uint8_t _OC_str = { "###fix ble list:%d\n" };
static struct l_array_18_uint8_t str = { "###reset ble list" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
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
static __forceinline uint8_t llvm_shl_u8(uint8_t a, uint8_t b) {
  uint8_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_lshr_u8(uint8_t a, uint8_t b) {
  uint8_t r = a >> b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
  return r;
}
static __forceinline uint8_t llvm_or_u8(uint8_t a, uint8_t b) {
  uint8_t r = a | b;
  return r;
}


/* Function Bodies */

uint8_t ble_list_get_conn_addr_item(uint8_t* _1, uint8_t _2, uint8_t _3, struct l_struct_struct_OC_BLE_REMOTE_LIST_T* _4) {
  uint8_t _5;

  _5 =  /*tail*/ get_conn_addr_item(_1, _2, _4, _3);
  return _5;
}


static uint8_t get_conn_addr_item(uint8_t* _6, uint8_t _7, struct l_struct_struct_OC_BLE_REMOTE_LIST_T* _8, uint8_t _9) {
  uint8_t _10;
  uint8_t* _11;
  uint8_t* _12;
  uint8_t _13;
  uint8_t* _14;
  uint32_t _15;
  uint32_t _15__PHI_TEMPORARY;
  uint8_t _16;
  uint8_t _17;
  uint32_t _18;
  uint8_t _19;
  uint32_t _20;
  uint8_t _21;
  uint8_t _22;
  uint8_t _22__PHI_TEMPORARY;
  uint8_t _23;
  uint8_t _23__PHI_TEMPORARY;

  _10 = *((&remote_info_hdl.field2));
  if ((((_10 == ((uint8_t)0))&1))) {
    _23__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _24;
  } else {
    goto _25;
  }

_25:
  _11 = (&_8->field0.array[((int32_t)0)]);
  _12 = (&_8->field2.array[((int32_t)0)]);
  _13 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_13, 15)) == ((uint8_t)0))&1))) {
    _23__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _24;
  } else {
    goto _26;
  }

_26:
  _14 = (&_8->field3);
  _15__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _27;

  do {     /* Syntactic loop '' to make GCC happy */
_27:
  _15 = _15__PHI_TEMPORARY;
  _16 =  /*tail*/ get_list_exist_item(_8, (((uint8_t)_15)));
  if ((((_16 == ((uint8_t)0))&1))) {
    goto _28;
  } else {
    goto _29;
  }

_29:
  if ((((_9 == ((uint8_t)-1))&1))) {
    goto _30;
  } else {
    goto _31;
  }

_31:
  _17 = *_14;
  if (((((llvm_and_u8((llvm_lshr_u8(_17, 4)), 1)) == _9)&1))) {
    goto _30;
  } else {
    goto _28;
  }

_30:
  if ((((_7 == ((uint8_t)0))&1))) {
    goto _32;
  } else {
    goto _33;
  }

_33:
  _19 =  /*tail*/ check_random_addr(_6, _11, _12);
  if ((((_19 == ((uint8_t)1))&1))) {
    _22__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _34;
  } else {
    goto _28;
  }

_32:
  _18 =  /*tail*/ memcmp(_12, _6, 6);
  if ((((_18 == 0u)&1))) {
    _22__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _34;
  } else {
    goto _28;
  }

_28:
  _20 = llvm_add_u32(_15, 1);
  _21 = *((&remote_info_hdl.field1));
  if ((((((uint32_t)_20) < ((uint32_t)(((uint32_t)(uint8_t)(llvm_and_u8(_21, 15))))))&1))) {
    _15__PHI_TEMPORARY = _20;   /* for PHI node */
    goto _27;
  } else {
    _22__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _34;
  }

  } while (1); /* end of syntactic loop '' */
_34:
  _22 = _22__PHI_TEMPORARY;
  _23__PHI_TEMPORARY = _22;   /* for PHI node */
  goto _24;

_24:
  _23 = _23__PHI_TEMPORARY;
  return _23;
}


uint16_t ble_list_get_count(void) {
  uint32_t _35;
  uint8_t _36;
  uint8_t _37;
  uint8_t _38;
  uint8_t _39;
  uint8_t _39__PHI_TEMPORARY;
  uint16_t _40;
  uint16_t _41;
  uint16_t _41__PHI_TEMPORARY;

  _35 = config_le_sm_support_enable;
  if ((((_35 == 0u)&1))) {
    _41__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _42;
  } else {
    goto _43;
  }

_43:
  _36 = *((&remote_info_hdl.field2));
  if ((((((uint8_t)_36) > ((uint8_t)((uint8_t)10)))&1))) {
    goto _44;
  } else {
    _39__PHI_TEMPORARY = _36;   /* for PHI node */
    goto _45;
  }

_44:
  _37 =  /*tail*/ reflash_remote_info(0);
  _38 = *((&remote_info_hdl.field2));
  _39__PHI_TEMPORARY = _38;   /* for PHI node */
  goto _45;

_45:
  _39 = _39__PHI_TEMPORARY;
  _40 = ((uint16_t)(uint8_t)_39);
  _41__PHI_TEMPORARY = _40;   /* for PHI node */
  goto _42;

_42:
  _41 = _41__PHI_TEMPORARY;
  return _41;
}


static uint8_t reflash_remote_info(uint8_t _46) {
  uint32_t _47;
  uint8_t _48;
  uint8_t _49;
  uint8_t* _50;
  uint32_t _51;
  uint32_t _52;
  uint8_t _53;
  uint8_t _53__PHI_TEMPORARY;

  if ((((_46 == ((uint8_t)0))&1))) {
    goto _54;
  } else {
    goto _55;
  }

_54:
  _47 =  /*tail*/ syscfg_read(117, ((&remote_info_hdl.field0)), 14);
  _48 = *((&remote_info_hdl.field0));
  _49 = *((&remote_info_hdl.field2));
  if ((((((((((_47 != 14u)&1)) | (((_48 != ((uint8_t)6))&1)))&1)) | (((((uint8_t)_49) > ((uint8_t)((uint8_t)10)))&1)))&1))) {
    goto _56;
  } else {
    _53__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _57;
  }

_56:
  __UNALIGNED_LOAD__(uint32_t, 1, ((uint32_t*)(&remote_info_hdl))) = 6662;
  _50 = memset(((&remote_info_hdl.field4.array[((int32_t)0)])), 255, 10);
  _51 =  /*tail*/ syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  _53__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _57;

_55:
  _52 =  /*tail*/ syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  _53__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _57;

_57:
  _53 = _53__PHI_TEMPORARY;
  return _53;
}


void ble_list_config_reset(uint8_t _58, uint8_t _59) {
  uint32_t _60;
  uint8_t _61;
  uint8_t _62;
  uint8_t _63;
  uint8_t _64;
  uint8_t _65;
  uint8_t _66;
  uint8_t _66__PHI_TEMPORARY;
  uint32_t _67;
  uint8_t _68;

  _60 = config_le_sm_support_enable;
  if ((((_60 == 0u)&1))) {
    goto _69;
  } else {
    goto _70;
  }

_70:
  _61 =  /*tail*/ reflash_remote_info(0);
  _62 = llvm_select_u8((((((uint8_t)_58) < ((uint8_t)((uint8_t)10)))&1)), _58, 10);
  _63 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_63, 15)) == _62)&1))) {
    _66__PHI_TEMPORARY = _63;   /* for PHI node */
    goto _71;
  } else {
    goto _72;
  }

_72:
  _64 =  /*tail*/ ble_list_clear_all();
  _65 = *((&remote_info_hdl.field1));
  _66__PHI_TEMPORARY = _65;   /* for PHI node */
  goto _71;

_71:
  _66 = _66__PHI_TEMPORARY;
  *((&remote_info_hdl.field1)) = (llvm_or_u8((llvm_or_u8((llvm_and_u8((llvm_shl_u8(_59, 4)), 48)), _62)), (llvm_and_u8(_66, -64))));
  _67 =  /*tail*/ syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  _68 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_68, 15)) == ((uint8_t)0))&1))) {
    goto _73;
  } else {
    goto _74;
  }

_74:
   /*tail*/ sm_allow_ltk_reconstruction_without_le_device_db_entry(0);
  goto _69;

_73:
   /*tail*/ sm_allow_ltk_reconstruction_without_le_device_db_entry(1);
  goto _69;

_69:
  return;
}


uint8_t ble_list_clear_all(void) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _75;    /* Address-exposed local */
  uint8_t* _76;
  uint32_t _77;
  uint8_t _78;
  uint16_t _79;
  uint16_t _79__PHI_TEMPORARY;
  uint8_t _80;
  uint8_t _80__PHI_TEMPORARY;
  uint8_t _81;
  uint8_t* _82;
  uint32_t _83;
  uint8_t _84;
  uint16_t _85;
  uint8_t _86;
  uint8_t* _87;
  uint32_t _88;
  uint8_t _89;
  uint8_t _89__PHI_TEMPORARY;

  _76 = (&_75.field0.array[((int32_t)0)]);
  _77 = config_le_sm_support_enable;
  if ((((_77 == 0u)&1))) {
    _89__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _90;
  } else {
    goto _91;
  }

_91:
  _78 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_78, 15)) == ((uint8_t)0))&1))) {
    goto _92;
  } else {
    goto _93;
  }

_93:
  _79__PHI_TEMPORARY = 0;   /* for PHI node */
  _80__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _94;

  do {     /* Syntactic loop '' to make GCC happy */
_94:
  _79 = _79__PHI_TEMPORARY;
  _80 = _80__PHI_TEMPORARY;
  _81 = get_list_exist_item((&_75), _80);
  if ((((_81 == ((uint8_t)0))&1))) {
    goto _95;
  } else {
    goto _96;
  }

_96:
  _82 = memset(_76, 255, 52);
  _83 = syscfg_write((llvm_add_u16(_79, 118)), _76, 52);
  goto _95;

_95:
  _84 = llvm_add_u8(_80, 1);
  _85 = ((uint16_t)(uint8_t)_84);
  _86 = *((&remote_info_hdl.field1));
  if ((((((uint8_t)_84) < ((uint8_t)(llvm_and_u8(_86, 15))))&1))) {
    _79__PHI_TEMPORARY = _85;   /* for PHI node */
    _80__PHI_TEMPORARY = _84;   /* for PHI node */
    goto _94;
  } else {
    goto _97;
  }

  } while (1); /* end of syntactic loop '' */
_97:
  goto _92;

_92:
  *((&remote_info_hdl.field2)) = 0;
  *((&remote_info_hdl.field3)) = 0;
  _87 = memset(((&remote_info_hdl.field4.array[((int32_t)0)])), 255, 10);
  _88 = syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  _89__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _90;

_90:
  _89 = _89__PHI_TEMPORARY;
  return _89;
}


static uint8_t get_list_exist_item(struct l_struct_struct_OC_BLE_REMOTE_LIST_T* _98, uint8_t _99) {
  uint8_t _100;
  uint32_t _101;
  uint8_t _102;
  uint8_t _103;
  uint8_t _103__PHI_TEMPORARY;

  _100 = *((&remote_info_hdl.field1));
  if ((((((uint8_t)(llvm_and_u8(_100, 15))) > ((uint8_t)_99))&1))) {
    goto _104;
  } else {
    _103__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _105;
  }

_104:
  _101 =  /*tail*/ syscfg_read((llvm_add_u16((((uint16_t)(uint8_t)_99)), 118)), ((&_98->field0.array[((int32_t)0)])), 52);
  if ((((_101 == 52u)&1))) {
    goto _106;
  } else {
    goto _107;
  }

_106:
  _102 = *((&_98->field3));
  if (((((llvm_and_u8(_102, 15)) == ((uint8_t)10))&1))) {
    _103__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _105;
  } else {
    goto _107;
  }

_107:
  _103__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _105;

_105:
  _103 = _103__PHI_TEMPORARY;
  return _103;
}


uint8_t ble_list_pair_add(uint8_t _108, uint8_t* _109, uint8_t _110, uint8_t* _111, uint8_t* _112, uint8_t* _113) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _114;    /* Address-exposed local */
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _115;    /* Address-exposed local */
  uint32_t _116;
  uint8_t* _117;
  uint8_t _118;
  uint8_t _119;
  uint8_t _120;
  uint8_t _121;
  uint8_t _121__PHI_TEMPORARY;
  uint8_t* _122;
  uint8_t* _123;
  uint8_t _124;
  uint8_t _125;
  uint8_t* _126;
  uint8_t* _127;
  uint32_t _128;
  uint32_t _128__PHI_TEMPORARY;
  uint8_t _129;
  uint8_t _130;
  uint8_t _131;
  uint32_t _132;
  uint32_t _133;
  uint8_t _134;
  uint32_t _135;
  uint32_t _136;
  uint8_t _137;
  uint8_t _138;
  uint8_t _139;
  uint8_t _140;
  uint8_t _140__PHI_TEMPORARY;
  uint8_t* _141;
  uint8_t _142;
  uint8_t* _143;
  uint8_t _144;
  uint8_t _145;
  uint8_t* _146;
  uint8_t _147;
  uint8_t* _148;
  uint8_t* _149;
  uint8_t _150;
  uint8_t _150__PHI_TEMPORARY;
  uint32_t _151;
  uint8_t* _152;
  uint8_t* _153;
  uint8_t* _154;
  uint8_t* _155;
  uint8_t* _156;
  uint8_t _157;
  uint8_t _158;
  uint8_t _159;
  uint8_t _160;
  uint16_t _161;
  uint64_t _162;
  uint8_t _163;
  uint8_t _164;
  uint8_t _164__PHI_TEMPORARY;

  _116 = config_le_sm_support_enable;
  if ((((_116 == 0u)&1))) {
    _164__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _165;
  } else {
    goto _166;
  }

_166:
  _117 = (&_115.field0.array[((int32_t)0)]);
  _118 = *((&_113[((int32_t)1)]));
  if ((((_108 == ((uint8_t)0))&1))) {
    _121__PHI_TEMPORARY = _118;   /* for PHI node */
    goto _167;
  } else {
    goto _168;
  }

_168:
  _119 = *_113;
  _120 = llvm_or_u8((llvm_and_u8(_118, 12)), (llvm_and_u8(_119, 3)));
  _121__PHI_TEMPORARY = _120;   /* for PHI node */
  goto _167;

_167:
  _121 = _121__PHI_TEMPORARY;
  _122 = memset(_117, 255, 52);
  _123 = (&_114.field0.array[((int32_t)0)]);
  _124 = *((&remote_info_hdl.field2));
  if ((((_124 == ((uint8_t)0))&1))) {
    _140__PHI_TEMPORARY = -33;   /* for PHI node */
    goto _169;
  } else {
    goto _170;
  }

_170:
  _125 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_125, 15)) == ((uint8_t)0))&1))) {
    _140__PHI_TEMPORARY = -33;   /* for PHI node */
    goto _169;
  } else {
    goto _171;
  }

_171:
  _126 = (&_114.field2.array[((int32_t)0)]);
  _127 = (&_114.field4);
  _128__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _172;

  do {     /* Syntactic loop '' to make GCC happy */
_172:
  _128 = _128__PHI_TEMPORARY;
  _129 = ((uint8_t)_128);
  _130 = get_list_exist_item((&_114), _129);
  if ((((_130 == ((uint8_t)0))&1))) {
    goto _173;
  } else {
    goto _174;
  }

_174:
  if ((((_110 == ((uint8_t)0))&1))) {
    goto _175;
  } else {
    goto _176;
  }

_176:
  if (((((llvm_and_u8(_121, 4)) == ((uint8_t)0))&1))) {
    goto _177;
  } else {
    goto _178;
  }

_177:
  _131 = *_127;
  if (((((llvm_and_u8(_131, 4)) == ((uint8_t)0))&1))) {
    goto _179;
  } else {
    goto _178;
  }

_178:
  _133 = memcmp(_111, _123, 16);
  if ((((_133 == 0u)&1))) {
    goto _180;
  } else {
    goto _173;
  }

_180:
  _134 = check_random_addr(_109, _111, _126);
  if ((((_134 == ((uint8_t)1))&1))) {
    goto _181;
  } else {
    goto _173;
  }

_181:
  delete_device_by_index(_129);
  goto _173;

_179:
  _132 = memcmp(_126, _109, 6);
  if ((((_132 == 0u)&1))) {
    goto _182;
  } else {
    goto _173;
  }

_182:
  delete_device_by_index(_129);
  goto _173;

_175:
  _135 = memcmp(_126, _109, 6);
  if ((((_135 == 0u)&1))) {
    goto _183;
  } else {
    goto _173;
  }

_183:
  delete_device_by_index(_129);
  goto _173;

_173:
  _136 = llvm_add_u32(_128, 1);
  _137 = *((&remote_info_hdl.field1));
  if ((((((uint32_t)_136) < ((uint32_t)(((uint32_t)(uint8_t)(llvm_and_u8(_137, 15))))))&1))) {
    _128__PHI_TEMPORARY = _136;   /* for PHI node */
    goto _172;
  } else {
    goto _184;
  }

  } while (1); /* end of syntactic loop '' */
_184:
  _138 = *((&_115.field3));
  _139 = llvm_and_u8(_138, -33);
  _140__PHI_TEMPORARY = _139;   /* for PHI node */
  goto _169;

_169:
  _140 = _140__PHI_TEMPORARY;
  _141 = (&_115.field3);
  _142 = llvm_shl_u8(_110, 5);
  *_141 = (llvm_or_u8(_140, (llvm_and_u8(_142, 32))));
  if (((((llvm_and_u8(_121, 8)) == ((uint8_t)0))&1))) {
    goto _185;
  } else {
    goto _186;
  }

_186:
  _143 = memcpy(((&_115.field2.array[((int32_t)0)])), _109, 6);
  _150__PHI_TEMPORARY = _121;   /* for PHI node */
  goto _187;

_185:
  if ((((_110 == ((uint8_t)0))&1))) {
    goto _188;
  } else {
    goto _189;
  }

_189:
  _144 = *_109;
  if (((((llvm_and_u8(_144, -64)) == ((uint8_t)64))&1))) {
    goto _190;
  } else {
    goto _191;
  }

_191:
  _145 = llvm_or_u8(_121, 8);
  _146 = memcpy(((&_115.field2.array[((int32_t)0)])), _109, 6);
  _150__PHI_TEMPORARY = _145;   /* for PHI node */
  goto _187;

_188:
  _147 = llvm_or_u8(_121, 8);
  _148 = memcpy(((&_115.field2.array[((int32_t)0)])), _109, 6);
  _150__PHI_TEMPORARY = _147;   /* for PHI node */
  goto _187;

_190:
  _149 = memset(((&_115.field2.array[((int32_t)0)])), 255, 6);
  _150__PHI_TEMPORARY = _121;   /* for PHI node */
  goto _187;

_187:
  _150 = _150__PHI_TEMPORARY;
  _151 = ((uint32_t)(uint8_t)_150);
  if (((((_151 & 4) == 0u)&1))) {
    goto _192;
  } else {
    goto _193;
  }

_193:
  _152 = memcpy(_117, _111, 16);
  goto _194;

_192:
  _153 = memset(_117, 255, 16);
  goto _194;

_194:
  _154 = (&_115.field1.array[((int32_t)0)]);
  if (((((_151 & 1) == 0u)&1))) {
    goto _195;
  } else {
    goto _196;
  }

_196:
  _155 = memcpy(_154, _112, 16);
  goto _197;

_195:
  _156 = memset(_154, 255, 16);
  goto _197;

_197:
  *((&_115.field4)) = _150;
  _157 = *((&_113[((int32_t)2)]));
  *_141 = (llvm_or_u8((llvm_or_u8((llvm_or_u8((llvm_and_u8((llvm_shl_u8(_108, 4)), 16)), (llvm_and_u8(_142, 32)))), (llvm_shl_u8(_157, 6)))), 10));
  _158 = *((&_113[((int32_t)3)]));
  *((&_115.field7)) = _158;
  _159 = *((&_113[((int32_t)4)]));
  _160 = *((&_113[((int32_t)5)]));
  *((&_115.field8)) = (llvm_or_u8((llvm_shl_u8(_160, 4)), (llvm_and_u8(_159, 15))));
  _161 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_113[((int32_t)6)])))));
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_115.field6.array[((int32_t)0)]))))) = _161;
  _162 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_113[((int32_t)8)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_115.field5.array[((int32_t)0)]))))) = _162;
  _163 = add_new_device_to_list((&_115));
  _164__PHI_TEMPORARY = _163;   /* for PHI node */
  goto _165;

_165:
  _164 = _164__PHI_TEMPORARY;
  return _164;
}


static uint8_t add_new_device_to_list(struct l_struct_struct_OC_BLE_REMOTE_LIST_T* _198) {
  uint8_t _199;
  uint8_t _200;
  uint8_t _201;
  uint32_t _202;
  uint32_t _202__PHI_TEMPORARY;
  uint32_t _203;
  uint32_t _204;
  uint32_t _204__PHI_TEMPORARY;
  uint8_t _205;
  uint8_t _206;
  uint32_t _207;
  uint32_t _208;
  uint8_t _209;
  uint32_t _210;
  uint8_t _211;
  uint8_t _211__PHI_TEMPORARY;

  _199 = *((&remote_info_hdl.field2));
  _200 = *((&remote_info_hdl.field1));
  _201 = llvm_and_u8(_200, 15);
  if ((((((uint8_t)_199) < ((uint8_t)_201))&1))) {
    _202__PHI_TEMPORARY = 255;   /* for PHI node */
    goto _212;
  } else {
    goto _213;
  }

_213:
  if ((((((((llvm_and_u8(_200, 48)) == ((uint8_t)0))&1)) | (((_201 == ((uint8_t)0))&1)))&1))) {
    _211__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _214;
  } else {
    _202__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _212;
  }

_212:
  _202 = _202__PHI_TEMPORARY;
  _203 = ((uint32_t)(uint8_t)_201);
  _204__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _215;

  do {     /* Syntactic loop '' to make GCC happy */
_215:
  _204 = _204__PHI_TEMPORARY;
  _205 = *((&remote_info_hdl.field4.array[((int32_t)_204)]));
  if (((((((uint32_t)(uint8_t)_205)) == _202)&1))) {
    goto _216;
  } else {
    goto _217;
  }

_217:
  _207 = llvm_add_u32(_204, 1);
  if ((((((int32_t)_207) < ((int32_t)_203))&1))) {
    _204__PHI_TEMPORARY = _207;   /* for PHI node */
    goto _215;
  } else {
    goto _218;
  }

  } while (1); /* end of syntactic loop '' */
_216:
  _206 = ((uint8_t)_204);
  if ((((_202 == 255u)&1))) {
    goto _219;
  } else {
    goto _220;
  }

_220:
   /*tail*/ delete_device_by_index(_206);
  goto _219;

_219:
  _208 =  /*tail*/ syscfg_write((llvm_add_u16((llvm_and_u16((((uint16_t)_204)), 255)), 118)), ((&_198->field0.array[((int32_t)0)])), 52);
  if ((((((int32_t)_208) > ((int32_t)0u))&1))) {
    goto _221;
  } else {
    _211__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _214;
  }

_221:
  *((&remote_info_hdl.field3)) = _206;
  _209 = *((&remote_info_hdl.field2));
  *((&remote_info_hdl.field4.array[((int32_t)(_204 & 255))])) = _209;
  *((&remote_info_hdl.field2)) = (llvm_add_u8(_209, 1));
  _210 =  /*tail*/ syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  _211__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _214;

_218:
  _211__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _214;

_214:
  _211 = _211__PHI_TEMPORARY;
  return _211;
}


uint8_t ble_list_get_id_addr(uint8_t* _222, uint8_t _223, uint8_t* _224) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _225;    /* Address-exposed local */
  uint32_t _226;
  uint8_t* _227;
  uint8_t _228;
  uint8_t _229;
  uint8_t* _230;
  uint8_t _231;
  uint8_t _231__PHI_TEMPORARY;
  uint8_t _232;
  uint8_t _232__PHI_TEMPORARY;

  _226 = config_le_sm_support_enable;
  if ((((_226 == 0u)&1))) {
    _232__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _233;
  } else {
    goto _234;
  }

_234:
  _227 = (&_225.field0.array[((int32_t)0)]);
  _228 = get_conn_addr_item(_222, _223, (&_225), -1);
  if ((((_228 == ((uint8_t)0))&1))) {
    _231__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _235;
  } else {
    goto _236;
  }

_236:
  if ((((_224 == ((uint8_t*)/*NULL*/0))&1))) {
    _231__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _235;
  } else {
    goto _237;
  }

_237:
  _229 = *((&_225.field4));
  if (((((llvm_and_u8(_229, 8)) == ((uint8_t)0))&1))) {
    _231__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _235;
  } else {
    goto _238;
  }

_238:
  _230 = memcpy(_224, ((&_225.field2.array[((int32_t)0)])), 6);
  _231__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _235;

_235:
  _231 = _231__PHI_TEMPORARY;
  _232__PHI_TEMPORARY = _231;   /* for PHI node */
  goto _233;

_233:
  _232 = _232__PHI_TEMPORARY;
  return _232;
}


uint8_t ble_list_get_id_addr_extend(uint8_t* _239, uint8_t _240, uint8_t* _241, uint8_t _242) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _243;    /* Address-exposed local */
  uint32_t _244;
  uint8_t* _245;
  uint8_t _246;
  uint8_t _247;
  uint8_t* _248;
  uint8_t _249;
  uint8_t _249__PHI_TEMPORARY;
  uint8_t _250;
  uint8_t _250__PHI_TEMPORARY;

  _244 = config_le_sm_support_enable;
  if ((((_244 == 0u)&1))) {
    _250__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _251;
  } else {
    goto _252;
  }

_252:
  _245 = (&_243.field0.array[((int32_t)0)]);
  _246 = get_conn_addr_item(_239, _240, (&_243), _242);
  if ((((_246 == ((uint8_t)0))&1))) {
    _249__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _253;
  } else {
    goto _254;
  }

_254:
  if ((((_241 == ((uint8_t*)/*NULL*/0))&1))) {
    _249__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _253;
  } else {
    goto _255;
  }

_255:
  _247 = *((&_243.field4));
  if (((((llvm_and_u8(_247, 8)) == ((uint8_t)0))&1))) {
    _249__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _253;
  } else {
    goto _256;
  }

_256:
  _248 = memcpy(_241, ((&_243.field2.array[((int32_t)0)])), 6);
  _249__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _253;

_253:
  _249 = _249__PHI_TEMPORARY;
  _250__PHI_TEMPORARY = _249;   /* for PHI node */
  goto _251;

_251:
  _250 = _250__PHI_TEMPORARY;
  return _250;
}


uint8_t ble_list_get_remote_type(uint8_t* _257, uint8_t _258, uint8_t* _259) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _260;    /* Address-exposed local */
  uint32_t _261;
  uint8_t* _262;
  uint8_t _263;
  uint8_t _264;
  uint8_t _265;
  uint8_t _266;
  uint8_t _266__PHI_TEMPORARY;
  uint8_t _267;
  uint8_t _267__PHI_TEMPORARY;
  uint8_t _268;
  uint8_t _268__PHI_TEMPORARY;

  _261 = config_le_sm_support_enable;
  if ((((_261 == 0u)&1))) {
    _268__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _269;
  } else {
    goto _270;
  }

_270:
  _262 = (&_260.field0.array[((int32_t)0)]);
  _263 = get_conn_addr_item(_257, _258, (&_260), -1);
  if ((((_263 == ((uint8_t)0))&1))) {
    _266__PHI_TEMPORARY = 0;   /* for PHI node */
    _267__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _271;
  } else {
    goto _272;
  }

_272:
  _264 = *((&_260.field3));
  _265 = llvm_lshr_u8(_264, 6);
  _266__PHI_TEMPORARY = _265;   /* for PHI node */
  _267__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _271;

_271:
  _266 = _266__PHI_TEMPORARY;
  _267 = _267__PHI_TEMPORARY;
  *_259 = _266;
  _268__PHI_TEMPORARY = _267;   /* for PHI node */
  goto _269;

_269:
  _268 = _268__PHI_TEMPORARY;
  return _268;
}


uint8_t ble_list_check_addr_is_exist(uint8_t* _273, uint8_t _274) {
  uint32_t _275;
  uint8_t _276;
  uint8_t _277;
  uint8_t _277__PHI_TEMPORARY;

  _275 = config_le_sm_support_enable;
  if ((((_275 == 0u)&1))) {
    _277__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _278;
  } else {
    goto _279;
  }

_279:
  _276 =  /*tail*/ ble_list_get_id_addr(_273, _274, ((uint8_t*)/*NULL*/0));
  _277__PHI_TEMPORARY = _276;   /* for PHI node */
  goto _278;

_278:
  _277 = _277__PHI_TEMPORARY;
  return _277;
}


uint8_t ble_list_check_addr_is_exist_extend(uint8_t* _280, uint8_t _281, uint8_t _282) {
  uint32_t _283;
  uint8_t _284;
  uint8_t _285;
  uint8_t _285__PHI_TEMPORARY;

  _283 = config_le_sm_support_enable;
  if ((((_283 == 0u)&1))) {
    _285__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _286;
  } else {
    goto _287;
  }

_287:
  _284 =  /*tail*/ ble_list_get_id_addr_extend(_280, _281, ((uint8_t*)/*NULL*/0), _282);
  _285__PHI_TEMPORARY = _284;   /* for PHI node */
  goto _286;

_286:
  _285 = _285__PHI_TEMPORARY;
  return _285;
}


uint8_t ble_list_reconnect_device_is_exist(uint8_t* _288, uint8_t _289, uint8_t* _290, uint8_t _291) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _292;    /* Address-exposed local */
  uint8_t* _293;
  uint32_t _294;
  uint8_t _295;
  uint8_t* _296;
  uint8_t _297;
  uint8_t* _298;
  uint8_t* _299;
  uint8_t _300;
  uint8_t _300__PHI_TEMPORARY;
  uint8_t _301;
  uint8_t _301__PHI_TEMPORARY;
  uint8_t _302;
  uint32_t _303;
  uint32_t _304;
  uint8_t _305;
  uint32_t _306;
  uint8_t _307;
  uint32_t _308;
  uint8_t _309;
  uint8_t _310;
  uint8_t _310__PHI_TEMPORARY;
  uint8_t _311;
  uint8_t _312;
  uint8_t _313;
  uint8_t _313__PHI_TEMPORARY;
  uint8_t _314;
  uint8_t _314__PHI_TEMPORARY;

  _293 = (&_292.field0.array[((int32_t)0)]);
  _294 = config_le_sm_support_enable;
  _295 = *((&remote_info_hdl.field2));
  if (((((((_294 == 0u)&1)) | (((_295 == ((uint8_t)0))&1)))&1))) {
    _314__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _315;
  } else {
    goto _316;
  }

_316:
  _296 = (&_292.field1.array[((int32_t)0)]);
  _297 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_297, 15)) == ((uint8_t)0))&1))) {
    _314__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _315;
  } else {
    goto _317;
  }

_317:
  _298 = (&_292.field2.array[((int32_t)0)]);
  _299 = (&_292.field4);
  _300__PHI_TEMPORARY = 0;   /* for PHI node */
  _301__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _318;

  do {     /* Syntactic loop '' to make GCC happy */
_318:
  _300 = _300__PHI_TEMPORARY;
  _301 = _301__PHI_TEMPORARY;
  _302 = get_list_exist_item((&_292), _301);
  if ((((_302 == ((uint8_t)0))&1))) {
    _310__PHI_TEMPORARY = _300;   /* for PHI node */
    goto _319;
  } else {
    goto _320;
  }

_320:
  if ((((_289 == ((uint8_t)0))&1))) {
    goto _321;
  } else {
    goto _322;
  }

_322:
  _305 = check_random_addr(_288, _293, _298);
  if ((((_305 == ((uint8_t)1))&1))) {
    goto _323;
  } else {
    goto _324;
  }

_323:
  _306 = memcmp(_296, _290, 16);
  if ((((_306 == 0u)&1))) {
    _313__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _325;
  } else {
    goto _324;
  }

_324:
  _307 = *_299;
  if (((((llvm_and_u8(_307, 4)) == ((uint8_t)0))&1))) {
    goto _326;
  } else {
    _310__PHI_TEMPORARY = _300;   /* for PHI node */
    goto _319;
  }

_326:
  _308 = memcmp(_296, _290, 16);
  _309 = llvm_select_u8((((_308 == 0u)&1)), 1, _300);
  _310__PHI_TEMPORARY = _309;   /* for PHI node */
  goto _319;

_321:
  _303 = memcmp(_298, _288, 6);
  if ((((_303 == 0u)&1))) {
    goto _327;
  } else {
    _310__PHI_TEMPORARY = _300;   /* for PHI node */
    goto _319;
  }

_327:
  _304 = memcmp(_296, _290, 16);
  if ((((_304 == 0u)&1))) {
    _313__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _325;
  } else {
    _310__PHI_TEMPORARY = _300;   /* for PHI node */
    goto _319;
  }

_319:
  _310 = _310__PHI_TEMPORARY;
  _311 = llvm_add_u8(_301, 1);
  _312 = *((&remote_info_hdl.field1));
  if ((((((uint8_t)_311) < ((uint8_t)(llvm_and_u8(_312, 15))))&1))) {
    _300__PHI_TEMPORARY = _310;   /* for PHI node */
    _301__PHI_TEMPORARY = _311;   /* for PHI node */
    goto _318;
  } else {
    _313__PHI_TEMPORARY = _310;   /* for PHI node */
    goto _325;
  }

  } while (1); /* end of syntactic loop '' */
_325:
  _313 = _313__PHI_TEMPORARY;
  _314__PHI_TEMPORARY = _313;   /* for PHI node */
  goto _315;

_315:
  _314 = _314__PHI_TEMPORARY;
  return _314;
}


static uint8_t check_random_addr(uint8_t* _328, uint8_t* _329, uint8_t* _330) {
  struct l_array_3_uint8_t _331;    /* Address-exposed local */
  struct l_array_16_uint8_t _332;    /* Address-exposed local */
  struct l_array_6_uint8_t _333;    /* Address-exposed local */
  uint8_t* _334;
  uint8_t* _335;
  uint8_t* _336;
  uint8_t _337;
  uint32_t _338;
  uint32_t _339;
  uint32_t _340;
  uint32_t _340__PHI_TEMPORARY;

  _334 = (&_331.array[((int32_t)0)]);
  _335 = (&_332.array[((int32_t)0)]);
  _336 = (&_333.array[((int32_t)0)]);
  _337 = *_328;
  if (((((llvm_and_u8(_337, -64)) == ((uint8_t)64))&1))) {
    goto _341;
  } else {
    goto _342;
  }

_342:
  _338 =  /*tail*/ memcmp(_328, _330, 6);
  _340__PHI_TEMPORARY = _338;   /* for PHI node */
  goto _343;

_341:
  swapX(_328, _336, 6);
  swap128(_329, _335);
  irk_enc(_335, ((&_333.array[((int32_t)3)])), _334);
  _339 = memcmp(_334, _336, 3);
  _340__PHI_TEMPORARY = _339;   /* for PHI node */
  goto _343;

_343:
  _340 = _340__PHI_TEMPORARY;
  return (((uint8_t)(bool)(((_340 == 0u)&1))));
}


uint8_t ble_list_pair_is_allow(uint8_t* _344, uint8_t _345) {
  uint32_t _346;
  uint8_t _347;
  uint8_t _348;
  uint8_t _349;
  uint8_t _350;
  uint8_t _351;
  uint8_t _351__PHI_TEMPORARY;

  _346 = config_le_sm_support_enable;
  if ((((_346 == 0u)&1))) {
    _351__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _352;
  } else {
    goto _353;
  }

_353:
  _347 = *((&remote_info_hdl.field1));
  _348 = llvm_and_u8(_347, 15);
  if (((((((_348 != ((uint8_t)0))&1)) & ((((llvm_and_u8(_347, 64u)) == ((uint8_t)0))&1)))&1))) {
    goto _354;
  } else {
    _351__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _352;
  }

_354:
  _349 = *((&remote_info_hdl.field2));
  if ((((((((llvm_and_u8(_347, 48)) != ((uint8_t)0))&1)) | (((((uint8_t)_349) < ((uint8_t)_348))&1)))&1))) {
    _351__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _352;
  } else {
    goto _355;
  }

_355:
  _350 =  /*tail*/ ble_list_check_addr_is_exist(_344, _345);
  _351__PHI_TEMPORARY = _350;   /* for PHI node */
  goto _352;

_352:
  _351 = _351__PHI_TEMPORARY;
  return _351;
}


uint8_t ble_list_pair_accept(uint8_t _356) {
  uint8_t _357;
  uint32_t _358;
  uint8_t _359;
  uint32_t _360;
  uint8_t _361;
  uint8_t _361__PHI_TEMPORARY;

  _357 = ((uint8_t)(bool)(((_356 == ((uint8_t)0))&1)));
  _358 = config_le_sm_support_enable;
  if ((((_358 == 0u)&1))) {
    _361__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _362;
  } else {
    goto _363;
  }

_363:
  _359 = *((&remote_info_hdl.field1));
  if (((((((uint32_t)(uint8_t)(llvm_and_u8((llvm_lshr_u8(_359, 6)), 1)))) == (((uint32_t)(bool)(((_356 == ((uint8_t)0))&1)))))&1))) {
    _361__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _362;
  } else {
    goto _364;
  }

_364:
  *((&remote_info_hdl.field1)) = (llvm_or_u8((llvm_and_u8(_359, 191u)), (llvm_shl_u8(_357, 6))));
  _360 =  /*tail*/ syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  _361__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _362;

_362:
  _361 = _361__PHI_TEMPORARY;
  return _361;
}


uint8_t ble_list_bonding_remote(uint8_t* _365, uint8_t _366) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _367;    /* Address-exposed local */
  uint8_t* _368;
  uint32_t _369;
  uint8_t _370;
  uint8_t _371;
  uint8_t _372;
  uint8_t _373;
  uint8_t _373__PHI_TEMPORARY;

  _368 = (&_367.field0.array[((int32_t)0)]);
  _369 = config_le_sm_support_enable;
  if ((((_369 == 0u)&1))) {
    _373__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _374;
  } else {
    goto _375;
  }

_375:
  _370 = get_conn_addr_item(_365, _366, (&_367), -1);
  if ((((_370 == ((uint8_t)0))&1))) {
    _373__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _374;
  } else {
    goto _376;
  }

_376:
  _371 = ble_list_clear_all();
  _372 = add_new_device_to_list((&_367));
  _373__PHI_TEMPORARY = _372;   /* for PHI node */
  goto _374;

_374:
  _373 = _373__PHI_TEMPORARY;
  return _373;
}


uint8_t ble_list_get_last_id_addr(uint8_t* _377) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _378;    /* Address-exposed local */
  uint8_t* _379;
  uint32_t _380;
  uint8_t _381;
  uint8_t _382;
  uint8_t _383;
  uint8_t _384;
  uint8_t* _385;
  uint8_t _386;
  uint8_t _386__PHI_TEMPORARY;

  _379 = (&_378.field0.array[((int32_t)0)]);
  _380 = config_le_sm_support_enable;
  _381 = *((&remote_info_hdl.field2));
  if (((((((_380 == 0u)&1)) | (((_381 == ((uint8_t)0))&1)))&1))) {
    _386__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _387;
  } else {
    goto _388;
  }

_388:
  _382 = *((&remote_info_hdl.field3));
  _383 = get_list_exist_item((&_378), _382);
  if ((((_383 == ((uint8_t)0))&1))) {
    _386__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _387;
  } else {
    goto _389;
  }

_389:
  _384 = *((&_378.field4));
  if (((((llvm_and_u8(_384, 8)) == ((uint8_t)0))&1))) {
    _386__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _387;
  } else {
    goto _390;
  }

_390:
  _385 = memcpy(_377, ((&_378.field2.array[((int32_t)0)])), 6);
  _386__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _387;

_387:
  _386 = _386__PHI_TEMPORARY;
  return _386;
}


uint8_t ble_list_delete_device(uint8_t* _391, uint8_t _392) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _393;    /* Address-exposed local */
  uint8_t* _394;
  uint32_t _395;
  uint8_t _396;
  uint8_t _397;
  uint8_t* _398;
  uint8_t* _399;
  uint32_t _400;
  uint32_t _400__PHI_TEMPORARY;
  uint8_t _401;
  uint8_t _402;
  uint8_t _403;
  uint8_t _404;
  uint32_t _405;
  uint32_t _406;
  uint8_t _407;
  uint8_t _408;
  uint8_t _408__PHI_TEMPORARY;

  _394 = (&_393.field0.array[((int32_t)0)]);
  _395 = config_le_sm_support_enable;
  _396 = *((&remote_info_hdl.field2));
  if (((((((_395 == 0u)&1)) | (((_396 == ((uint8_t)0))&1)))&1))) {
    _408__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _409;
  } else {
    goto _410;
  }

_410:
  _397 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_397, 15)) == ((uint8_t)0))&1))) {
    _408__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _409;
  } else {
    goto _411;
  }

_411:
  _398 = (&_393.field3);
  _399 = (&_393.field2.array[((int32_t)0)]);
  _400__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _412;

  do {     /* Syntactic loop '' to make GCC happy */
_412:
  _400 = _400__PHI_TEMPORARY;
  _401 = ((uint8_t)_400);
  _402 = get_list_exist_item((&_393), _401);
  if ((((_402 == ((uint8_t)0))&1))) {
    goto _413;
  } else {
    goto _414;
  }

_414:
  _403 = *_398;
  if (((((llvm_and_u8(_403, 15)) == ((uint8_t)10))&1))) {
    goto _415;
  } else {
    goto _413;
  }

_415:
  if ((((_392 == ((uint8_t)0))&1))) {
    goto _416;
  } else {
    goto _417;
  }

_417:
  _404 = check_random_addr(_391, _394, _399);
  if ((((_404 == ((uint8_t)1))&1))) {
    goto _418;
  } else {
    goto _413;
  }

_416:
  _405 = memcmp(_391, _399, 6);
  if ((((_405 == 0u)&1))) {
    goto _418;
  } else {
    goto _413;
  }

_413:
  _406 = llvm_add_u32(_400, 1);
  _407 = *((&remote_info_hdl.field1));
  if ((((((uint32_t)_406) < ((uint32_t)(((uint32_t)(uint8_t)(llvm_and_u8(_407, 15))))))&1))) {
    _400__PHI_TEMPORARY = _406;   /* for PHI node */
    goto _412;
  } else {
    goto _419;
  }

  } while (1); /* end of syntactic loop '' */
_418:
  delete_device_by_index(_401);
  _408__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _409;

_419:
  _408__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _409;

_409:
  _408 = _408__PHI_TEMPORARY;
  return _408;
}


static void delete_device_by_index(uint8_t _420) {
  struct l_array_52_uint8_t _421;    /* Address-exposed local */
  uint8_t* _422;
  uint32_t _423;
  uint8_t* _424;
  uint32_t _425;
  uint8_t* _426;
  uint8_t _427;
  uint8_t _428;
  uint8_t _429;
  uint32_t _430;
  uint8_t _431;
  uint32_t _432;
  uint32_t _432__PHI_TEMPORARY;
  uint8_t* _433;
  uint8_t _434;
  uint32_t _435;
  uint32_t _436;

  _422 = (&_421.array[((int32_t)0)]);
  _423 = ((uint32_t)(uint8_t)_420);
  if ((((((uint8_t)_420) > ((uint8_t)((uint8_t)9)))&1))) {
    goto _437;
  } else {
    goto _438;
  }

_438:
  _424 = memset(_422, 255, 52);
  _425 = syscfg_write((((uint16_t)(llvm_add_u32(_423, 118)))), _422, 52);
  _426 = (&remote_info_hdl.field4.array[((int32_t)_423)]);
  _427 = *_426;
  *_426 = -1;
  _428 = *((&remote_info_hdl.field1));
  _429 = llvm_and_u8(_428, 15);
  if ((((_429 == ((uint8_t)0))&1))) {
    goto _439;
  } else {
    goto _440;
  }

_440:
  _430 = ((uint32_t)(uint8_t)_429);
  _432__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _441;

_442:
  goto _439;

_439:
  _431 = *((&remote_info_hdl.field2));
  if ((((_431 == ((uint8_t)0))&1))) {
    goto _443;
  } else {
    goto _444;
  }

  do {     /* Syntactic loop '' to make GCC happy */
_441:
  _432 = _432__PHI_TEMPORARY;
  _433 = (&remote_info_hdl.field4.array[((int32_t)_432)]);
  _434 = *_433;
  if (((((((_434 != ((uint8_t)-1))&1)) & (((((uint8_t)_434) > ((uint8_t)_427))&1)))&1))) {
    goto _445;
  } else {
    goto _446;
  }

_445:
  *_433 = (llvm_add_u8(_434, -1));
  goto _446;

_446:
  _435 = llvm_add_u32(_432, 1);
  if ((((((int32_t)_435) < ((int32_t)_430))&1))) {
    _432__PHI_TEMPORARY = _435;   /* for PHI node */
    goto _441;
  } else {
    goto _442;
  }

  } while (1); /* end of syntactic loop '' */
_444:
  *((&remote_info_hdl.field2)) = (llvm_add_u8(_431, -1));
  goto _443;

_443:
  _436 = syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  goto _437;

_437:
  return;
}


void ble_list_init(void) {
  struct l_struct_struct_OC_BLE_REMOTE_LIST_T _447;    /* Address-exposed local */
  uint8_t* _448;
  uint32_t _449;
  uint8_t _450;
  uint8_t _451;
  uint32_t _452;
  uint32_t _452__PHI_TEMPORARY;
  uint8_t _453;
  uint8_t _453__PHI_TEMPORARY;
  uint8_t _454;
  uint8_t _454__PHI_TEMPORARY;
  uint8_t _455;
  uint8_t _455__PHI_TEMPORARY;
  uint8_t _456;
  uint8_t* _457;
  uint8_t _458;
  uint8_t _459;
  uint8_t _460;
  uint8_t* _461;
  uint32_t _462;
  uint8_t _463;
  uint8_t _464;
  uint8_t _465;
  uint8_t _465__PHI_TEMPORARY;
  uint8_t _466;
  uint8_t _466__PHI_TEMPORARY;
  uint8_t _467;
  uint32_t _468;
  uint8_t _469;
  uint8_t _470;
  uint8_t _470__PHI_TEMPORARY;
  uint8_t _471;
  uint8_t _471__PHI_TEMPORARY;
  uint8_t _472;
  uint8_t _473;
  uint32_t _474;
  uint8_t _475;
  uint8_t _476;
  uint32_t _477;
  uint8_t _478;
  uint8_t _478__PHI_TEMPORARY;
  uint8_t _479;
  uint32_t _480;
  uint8_t _481;
  uint8_t _481__PHI_TEMPORARY;
  uint8_t _482;
  uint8_t _483;
  uint32_t _484;
  uint32_t _484__PHI_TEMPORARY;
  uint8_t* _485;
  uint8_t _486;
  uint32_t _487;
  uint8_t _488;
  uint32_t _489;
  uint32_t _489__PHI_TEMPORARY;
  uint8_t _490;
  uint8_t _490__PHI_TEMPORARY;
  uint8_t _491;
  uint8_t _492;
  uint32_t _493;
  uint8_t _494;
  uint8_t _494__PHI_TEMPORARY;
  uint32_t _495;
  uint32_t _496;
  uint8_t _497;
  uint8_t _498;

  _448 = (&_447.field0.array[((int32_t)0)]);
  _449 = config_le_sm_support_enable;
  if ((((_449 == 0u)&1))) {
    goto _499;
  } else {
    goto _500;
  }

_500:
  _450 =  /*tail*/ reflash_remote_info(0);
  if ((((_450 == ((uint8_t)1))&1))) {
    goto _501;
  } else {
    goto _502;
  }

_501:
  _451 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_451, 15)) == ((uint8_t)0))&1))) {
    _470__PHI_TEMPORARY = 0;   /* for PHI node */
    _471__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _503;
  } else {
    goto _504;
  }

_504:
  _452__PHI_TEMPORARY = 0;   /* for PHI node */
  _453__PHI_TEMPORARY = 0;   /* for PHI node */
  _454__PHI_TEMPORARY = 0;   /* for PHI node */
  _455__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _505;

  do {     /* Syntactic loop '' to make GCC happy */
_505:
  _452 = _452__PHI_TEMPORARY;
  _453 = _453__PHI_TEMPORARY;
  _454 = _454__PHI_TEMPORARY;
  _455 = _455__PHI_TEMPORARY;
  _456 = get_list_exist_item((&_447), _454);
  _457 = (&remote_info_hdl.field4.array[((int32_t)_452)]);
  _458 = *_457;
  if ((((_456 == ((uint8_t)1))&1))) {
    goto _506;
  } else {
    goto _507;
  }

_507:
  if ((((_458 == ((uint8_t)-1))&1))) {
    _465__PHI_TEMPORARY = _455;   /* for PHI node */
    _466__PHI_TEMPORARY = _453;   /* for PHI node */
    goto _508;
  } else {
    goto _509;
  }

_506:
  _459 = *((&remote_info_hdl.field1));
  if ((((((uint8_t)_458) < ((uint8_t)(llvm_and_u8(_459, 15))))&1))) {
    goto _510;
  } else {
    goto _511;
  }

_511:
  _460 = llvm_or_u8(_455, 1);
  *_457 = -1;
  _461 = memset(_448, 255, 52);
  _462 = syscfg_write((((uint16_t)(llvm_add_u32(_452, 118)))), _448, 52);
  _465__PHI_TEMPORARY = _460;   /* for PHI node */
  _466__PHI_TEMPORARY = _453;   /* for PHI node */
  goto _508;

_510:
  _463 = llvm_add_u8(_453, 1);
  _465__PHI_TEMPORARY = _455;   /* for PHI node */
  _466__PHI_TEMPORARY = _463;   /* for PHI node */
  goto _508;

_508:
  _465 = _465__PHI_TEMPORARY;
  _466 = _466__PHI_TEMPORARY;
  _467 = llvm_add_u8(_454, 1);
  _468 = ((uint32_t)(uint8_t)_467);
  _469 = *((&remote_info_hdl.field1));
  if ((((((uint8_t)_467) < ((uint8_t)(llvm_and_u8(_469, 15))))&1))) {
    _452__PHI_TEMPORARY = _468;   /* for PHI node */
    _453__PHI_TEMPORARY = _466;   /* for PHI node */
    _454__PHI_TEMPORARY = _467;   /* for PHI node */
    _455__PHI_TEMPORARY = _465;   /* for PHI node */
    goto _505;
  } else {
    goto _512;
  }

  } while (1); /* end of syntactic loop '' */
_509:
  *_457 = -1;
  _464 = llvm_or_u8(_455, 2);
  _470__PHI_TEMPORARY = _453;   /* for PHI node */
  _471__PHI_TEMPORARY = _464;   /* for PHI node */
  goto _503;

_512:
  _470__PHI_TEMPORARY = _466;   /* for PHI node */
  _471__PHI_TEMPORARY = _465;   /* for PHI node */
  goto _503;

_503:
  _470 = _470__PHI_TEMPORARY;
  _471 = _471__PHI_TEMPORARY;
  _472 = *((&remote_info_hdl.field2));
  _473 = llvm_select_u8((((_470 == _472)&1)), _471, (llvm_or_u8(_471, 128u)));
  if ((((_473 == ((uint8_t)0))&1))) {
    goto _513;
  } else {
    goto _514;
  }

_514:
  _474 = printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint8_t)_473)));
  put_buf(((&remote_info_hdl.field0)), 14);
  *((&remote_info_hdl.field2)) = _470;
  _475 = *((&remote_info_hdl.field1));
  if ((((_470 == ((uint8_t)0))&1))) {
    goto _515;
  } else {
    goto _516;
  }

_516:
  _476 = llvm_and_u8(_475, 15);
  _477 = ((uint32_t)(uint8_t)_476);
  _478__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _517;

  do {     /* Syntactic loop '' to make GCC happy */
_517:
  _478 = _478__PHI_TEMPORARY;
  if ((((_476 == ((uint8_t)0))&1))) {
    goto _518;
  } else {
    goto _519;
  }

_519:
  _481__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _520;

  do {     /* Syntactic loop '' to make GCC happy */
_520:
  _481 = _481__PHI_TEMPORARY;
  _482 = *((&remote_info_hdl.field4.array[((int32_t)(((uint32_t)(uint8_t)_481)))]));
  _483 = llvm_add_u8(_481, 1);
  if ((((_482 == _478)&1))) {
    goto _521;
  } else {
    goto _522;
  }

_522:
  if ((((((uint8_t)_483) < ((uint8_t)_476))&1))) {
    _481__PHI_TEMPORARY = _483;   /* for PHI node */
    goto _520;
  } else {
    goto _523;
  }

  } while (1); /* end of syntactic loop '' */
_523:
  if ((((_476 == ((uint8_t)0))&1))) {
    goto _518;
  } else {
    goto _524;
  }

_524:
  _484__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _525;

  do {     /* Syntactic loop '' to make GCC happy */
_525:
  _484 = _484__PHI_TEMPORARY;
  _485 = (&remote_info_hdl.field4.array[((int32_t)_484)]);
  _486 = *_485;
  if (((((((_486 != ((uint8_t)-1))&1)) & (((((uint8_t)_486) > ((uint8_t)_478))&1)))&1))) {
    goto _526;
  } else {
    goto _527;
  }

_526:
  *_485 = (llvm_add_u8(_486, -1));
  goto _527;

_527:
  _487 = llvm_add_u32(_484, 1);
  if ((((_487 == _477)&1))) {
    goto _528;
  } else {
    _484__PHI_TEMPORARY = _487;   /* for PHI node */
    goto _525;
  }

  } while (1); /* end of syntactic loop '' */
_528:
  goto _518;

_521:
  goto _518;

_518:
  _488 = llvm_add_u8(_478, 1);
  if ((((_488 == _470)&1))) {
    goto _529;
  } else {
    _478__PHI_TEMPORARY = _488;   /* for PHI node */
    goto _517;
  }

  } while (1); /* end of syntactic loop '' */
_529:
  goto _515;

_515:
  _479 = llvm_and_u8(_475, 15);
  if ((((_479 == ((uint8_t)0))&1))) {
    _494__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _530;
  } else {
    goto _531;
  }

_531:
  _480 = ((uint32_t)(uint8_t)_479);
  _489__PHI_TEMPORARY = 0;   /* for PHI node */
  _490__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _532;

  do {     /* Syntactic loop '' to make GCC happy */
_532:
  _489 = _489__PHI_TEMPORARY;
  _490 = _490__PHI_TEMPORARY;
  _491 = *((&remote_info_hdl.field4.array[((int32_t)_489)]));
  _492 = llvm_select_u8(((((((_491 != ((uint8_t)-1))&1)) & (((((uint8_t)_491) > ((uint8_t)_490))&1)))&1)), (((uint8_t)_489)), _490);
  _493 = llvm_add_u32(_489, 1);
  if ((((((uint32_t)_493) < ((uint32_t)_480))&1))) {
    _489__PHI_TEMPORARY = _493;   /* for PHI node */
    _490__PHI_TEMPORARY = _492;   /* for PHI node */
    goto _532;
  } else {
    goto _533;
  }

  } while (1); /* end of syntactic loop '' */
_533:
  _494__PHI_TEMPORARY = _492;   /* for PHI node */
  goto _530;

_530:
  _494 = _494__PHI_TEMPORARY;
  *((&remote_info_hdl.field2)) = _470;
  *((&remote_info_hdl.field3)) = _494;
  put_buf(((&remote_info_hdl.field0)), 14);
  _495 = syscfg_write(117, ((&remote_info_hdl.field0)), 14);
  goto _513;

_502:
  _496 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _497 =  /*tail*/ ble_list_clear_all();
  goto _513;

_513:
  _498 = *((&remote_info_hdl.field1));
  if (((((llvm_and_u8(_498, 15)) == ((uint8_t)0))&1))) {
    goto _534;
  } else {
    goto _535;
  }

_535:
  sm_allow_ltk_reconstruction_without_le_device_db_entry(0);
  goto _499;

_534:
  sm_allow_ltk_reconstruction_without_le_device_db_entry(1);
  goto _499;

_499:
  return;
}

