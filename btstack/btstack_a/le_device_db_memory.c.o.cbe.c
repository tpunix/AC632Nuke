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
struct l_struct_struct_OC_le_device_memory_db;
struct l_struct_struct_OC_le_db_info_t;

/* Function definitions */
typedef void l_fptr_1(void);


/* Types Definitions */
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_122_uint8_t {
  uint8_t array[122];
};
struct l_array_90_uint8_t {
  uint8_t array[90];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_struct_struct_OC_le_device_memory_db {
  uint32_t field0;
  struct l_array_6_uint8_t field1;
  struct l_array_16_uint8_t field2;
  struct l_array_16_uint8_t field3;
  uint16_t field4;
  struct l_array_8_uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
};
struct l_array_8_struct_AC_l_struct_struct_OC_le_device_memory_db_KC_ {
  struct l_struct_struct_OC_le_device_memory_db* array[8];
};
struct l_struct_struct_OC_le_db_info_t {
  struct l_array_8_struct_AC_l_struct_struct_OC_le_device_memory_db_KC_ field0;
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};

/* External Global Variable Declarations */
extern uint32_t config_le_sm_support_enable;
extern uint32_t config_le_hci_connection_num;
extern uint32_t config_asser;
extern uint8_t ble_debug_enable;

/* Function Declarations */
void le_device_db_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void le_device_db_remove(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void le_device_db_exit(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
void le_device_db_set_local_bd_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t le_device_db_count(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t le_device_db_add(uint32_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void le_device_db_info(uint32_t, uint32_t*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void le_device_db_encryption_set(uint32_t, uint16_t, uint8_t*, uint8_t*, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void le_device_db_encryption_get(uint32_t, uint16_t*, uint8_t*, uint8_t*, uint32_t*, uint32_t*, uint32_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void le_device_db_dump(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void p33_soft_reset(void);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_17_uint8_t _OC_str = { "file:%s, line:%d" };
static struct l_array_122_uint8_t _OC_str_OC_1 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c" };
static struct l_array_90_uint8_t _OC_str_OC_2 = { "ASSERT-FAILD: MAX_NR_LE_DEVICE_DB_ENTRIES >= CONFIG_MAX_DEVICE_DB_NUM device db not match" };
static struct l_array_42_uint8_t _OC_str_OC_3 = { "ASSERT-FAILD: db_pt device db malloc fail" };
struct l_struct_struct_OC_le_db_info_t le_global_db_info __HIDDEN__;
static struct l_array_37_uint8_t str = { "<ble-error> :le_device_db_info full\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}


/* Function Bodies */

void le_device_db_init(void) {
  uint32_t _1;
  uint32_t _2;
  uint32_t _3;
  uint32_t _4;
  uint32_t _5;
  uint8_t* _6;
  struct l_struct_struct_OC_le_device_memory_db* _7;
  uint32_t _8;
  uint32_t _9;
  uint8_t* _10;
  struct l_struct_struct_OC_le_device_memory_db* _11;
  struct l_struct_struct_OC_le_device_memory_db* _12;
  struct l_struct_struct_OC_le_device_memory_db* _12__PHI_TEMPORARY;
  uint32_t _13;
  uint32_t _13__PHI_TEMPORARY;
  struct l_struct_struct_OC_le_device_memory_db* _14;
  uint32_t _15;

#line 108 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _1 = config_le_sm_support_enable;
  if ((((_1 == 0u)&1))) {
    goto _16;
  } else {
    goto _17;
  }

_17:
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _2 = config_le_hci_connection_num;
  if ((((_2 == 0u)&1))) {
    goto _16;
  } else {
    goto _18;
  }

_18:
#line 113 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _3 = config_asser;
  if ((((_3 == 0u)&1))) {
    goto _19;
  } else {
    goto _20;
  }

_20:
  if ((((((int32_t)_2) < ((int32_t)9u))&1))) {
    goto _21;
  } else {
    goto _22;
  }

_22:
  _4 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 113);
  _5 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _21;

_19:
  if ((((((int32_t)_2) < ((int32_t)9u))&1))) {
    goto _23;
  } else {
    goto _24;
  }

_24:
   /*tail*/ cpu_reset();
  goto _23;

_21:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _6 =  /*tail*/ malloc((llvm_mul_u32(_2, 56)));
  _7 = ((struct l_struct_struct_OC_le_device_memory_db*)_6);
#line 106 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  if ((((_6 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _25;
  } else {
    _12__PHI_TEMPORARY = _7;   /* for PHI node */
    goto _26;
  }

_25:
#line 116 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _8 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 116);
  _9 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  _12__PHI_TEMPORARY = _7;   /* for PHI node */
  goto _26;

_23:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _10 =  /*tail*/ malloc((llvm_mul_u32(_2, 56)));
  _11 = ((struct l_struct_struct_OC_le_device_memory_db*)_10);
#line 106 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  if ((((_10 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _27;
  } else {
    _12__PHI_TEMPORARY = _11;   /* for PHI node */
    goto _26;
  }

_27:
#line 116 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
   /*tail*/ cpu_reset();
  _12__PHI_TEMPORARY = _11;   /* for PHI node */
  goto _26;

_26:
  _12 = _12__PHI_TEMPORARY;
#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_2) > ((int32_t)0u))&1))) {
    goto _28;
  } else {
    goto _16;
  }

_28:
  _13__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _29;

  do {     /* Syntactic loop '' to make GCC happy */
_29:
  _13 = _13__PHI_TEMPORARY;
#line 119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _14 = (&_12[((int32_t)_13)]);
  *((&le_global_db_info.field0.array[((int32_t)_13)])) = _14;
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *((&_14->field0)) = 255;
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _15 = llvm_add_u32(_13, 1);
#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  ;
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_15) < ((int32_t)_2))&1))) {
    _13__PHI_TEMPORARY = _15;   /* for PHI node */
    goto _29;
  } else {
    goto _30;
  }

  } while (1); /* end of syntactic loop '' */
_30:
  goto _16;

_16:
  return;
}


static void cpu_reset(void) {
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
}


void le_device_db_remove(uint32_t _31) {
  struct l_struct_struct_OC_le_device_memory_db* _32;

#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 165 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_31) < ((int32_t)0u))&1))) {
    goto _33;
  } else {
    goto _34;
  }

_34:
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _32 = *((&le_global_db_info.field0.array[((int32_t)_31)]));
  *((&_32->field0)) = 255;
  goto _33;

_33:
  return;
}


void le_device_db_exit(void) {
  uint32_t _35;
  uint32_t _36;
  struct l_struct_struct_OC_le_device_memory_db* _37;

#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _35 = config_le_sm_support_enable;
#line 131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _36 = config_le_hci_connection_num;
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _37 = *((&le_global_db_info.field0.array[((int32_t)0)]));
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((((((_35 != 0u)&1)) & (((_36 != 0u)&1)))&1)) & (((_37 != ((struct l_struct_struct_OC_le_device_memory_db*)/*NULL*/0))&1)))&1))) {
    goto _38;
  } else {
    goto _39;
  }

_38:
#line 133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
   /*tail*/ free((((uint8_t*)_37)));
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *((&le_global_db_info.field0.array[((int32_t)0)])) = ((struct l_struct_struct_OC_le_device_memory_db*)/*NULL*/0);
  goto _39;

_39:
  return;
}


void le_device_db_set_local_bd_addr(uint8_t* _40) {
#line 139 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
}


uint32_t le_device_db_count(void) {
  uint32_t _41;
  uint32_t _42;
  uint32_t _43;
  uint32_t _43__PHI_TEMPORARY;
  uint32_t _44;
  uint32_t _44__PHI_TEMPORARY;
  struct l_struct_struct_OC_le_device_memory_db* _45;
  uint32_t _46;
  uint32_t _47;
  uint32_t _48;
  uint32_t _49;
  uint32_t _49__PHI_TEMPORARY;

#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _41 = config_le_sm_support_enable;
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _42 = config_le_hci_connection_num;
#line 150 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  if (((((((_41 != 0u)&1)) & (((((int32_t)_42) > ((int32_t)0u))&1)))&1))) {
    goto _50;
  } else {
    _49__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _51;
  }

_50:
  _43__PHI_TEMPORARY = 0;   /* for PHI node */
  _44__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _52;

  do {     /* Syntactic loop '' to make GCC happy */
_52:
  _43 = _43__PHI_TEMPORARY;
  _44 = _44__PHI_TEMPORARY;
#line 155 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _45 = *((&le_global_db_info.field0.array[((int32_t)_44)]));
  _46 = *((&_45->field0));
  _47 = llvm_add_u32((((uint32_t)(bool)(((_46 != 255u)&1)))), _43);
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _48 = llvm_add_u32(_44, 1);
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_48) < ((int32_t)_42))&1))) {
    _43__PHI_TEMPORARY = _47;   /* for PHI node */
    _44__PHI_TEMPORARY = _48;   /* for PHI node */
    goto _52;
  } else {
    goto _53;
  }

  } while (1); /* end of syntactic loop '' */
_53:
  _49__PHI_TEMPORARY = _47;   /* for PHI node */
  goto _51;

_51:
  _49 = _49__PHI_TEMPORARY;
  return _49;
}


uint32_t le_device_db_add(uint32_t _54, uint8_t* _55, uint8_t* _56) {
  uint32_t _57;
  uint32_t _58;
  uint32_t _59;
  uint32_t _59__PHI_TEMPORARY;
  struct l_struct_struct_OC_le_device_memory_db** _60;
  struct l_struct_struct_OC_le_device_memory_db* _61;
  uint32_t* _62;
  uint32_t _63;
  uint32_t _64;
  uint8_t _65;
  uint32_t _66;
  uint8_t* _67;
  struct l_struct_struct_OC_le_device_memory_db* _68;
  uint8_t* _69;
  uint32_t _70;
  uint32_t _70__PHI_TEMPORARY;

#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  ;
  ;
#line 175 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 177 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _57 = config_le_sm_support_enable;
  if ((((_57 == 0u)&1))) {
    _70__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _71;
  } else {
    goto _72;
  }

_72:
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _58 = config_le_hci_connection_num;
  if ((((((int32_t)_58) > ((int32_t)0u))&1))) {
    goto _73;
  } else {
    goto _74;
  }

_73:
  _59__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _75;

  do {     /* Syntactic loop '' to make GCC happy */
_75:
  _59 = _59__PHI_TEMPORARY;
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _60 = (&le_global_db_info.field0.array[((int32_t)_59)]);
  _61 = *_60;
  _62 = (&_61->field0);
  _63 = *_62;
  if ((((_63 == 255u)&1))) {
    goto _76;
  } else {
    goto _77;
  }

_77:
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _64 = llvm_add_u32(_59, 1);
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  ;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_64) < ((int32_t)_58))&1))) {
    _59__PHI_TEMPORARY = _64;   /* for PHI node */
    goto _75;
  } else {
    goto _78;
  }

  } while (1); /* end of syntactic loop '' */
_76:
#line 175 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
#line 188 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_59) < ((int32_t)0u))&1))) {
    goto _74;
  } else {
    goto _79;
  }

_78:
  goto _74;

_74:
#line 189 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _65 = ble_debug_enable;
  if (((((llvm_and_u8(_65, 4)) == ((uint8_t)0))&1))) {
    _70__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _71;
  } else {
    goto _80;
  }

_80:
  _66 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _70__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _71;

_79:
#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *_62 = _54;
#line 197 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _67 = memcpy(((&_61->field1.array[((int32_t)0)])), _55, 6);
#line 198 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _68 = *_60;
  _69 = memcpy(((&_68->field2.array[((int32_t)0)])), _56, 16);
  _70__PHI_TEMPORARY = _59;   /* for PHI node */
  goto _71;

_71:
  _70 = _70__PHI_TEMPORARY;
  return _70;
}


void le_device_db_info(uint32_t _81, uint32_t* _82, uint8_t* _83, uint8_t* _84) {
  uint8_t* _85;
  uint8_t* _86;
  struct l_struct_struct_OC_le_device_memory_db* _87;
  uint32_t _88;
  struct l_struct_struct_OC_le_device_memory_db* _89;
  uint8_t* _90;
  struct l_struct_struct_OC_le_device_memory_db* _91;
  uint8_t* _92;

#line 207 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  ;
  ;
  ;
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_81) < ((int32_t)0u))&1))) {
    goto _93;
  } else {
    goto _94;
  }

_93:
  if ((((_82 != ((uint32_t*)/*NULL*/0))&1))) {
    goto _95;
  } else {
    goto _96;
  }

_95:
#line 212 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *_82 = 255;
  goto _96;

_96:
#line 214 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_83 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _97;
  } else {
    goto _98;
  }

_98:
#line 215 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _85 = memset(_83, 0, 6);
  goto _97;

_97:
#line 217 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_84 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _99;
  } else {
    goto _100;
  }

_100:
#line 218 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _86 = memset(_84, 0, 16);
  goto _99;

_94:
  if ((((_82 != ((uint32_t*)/*NULL*/0))&1))) {
    goto _101;
  } else {
    goto _102;
  }

_101:
#line 224 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _87 = *((&le_global_db_info.field0.array[((int32_t)_81)]));
  _88 = *((&_87->field0));
  *_82 = _88;
  goto _102;

_102:
#line 226 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_83 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _103;
  } else {
    goto _104;
  }

_104:
#line 227 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _89 = *((&le_global_db_info.field0.array[((int32_t)_81)]));
  _90 = memcpy(_83, ((&_89->field1.array[((int32_t)0)])), 6);
  goto _103;

_103:
#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_84 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _99;
  } else {
    goto _105;
  }

_105:
#line 230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _91 = *((&le_global_db_info.field0.array[((int32_t)_81)]));
  _92 = memcpy(_84, ((&_91->field2.array[((int32_t)0)])), 16);
  goto _99;

_99:
  return;
}


void le_device_db_encryption_set(uint32_t _106, uint16_t _107, uint8_t* _108, uint8_t* _109, uint32_t _110, uint32_t _111, uint32_t _112) {
  struct l_struct_struct_OC_le_device_memory_db* _113;
  uint64_t _114;
  uint8_t* _115;

#line 234 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  ;
  ;
  ;
  ;
  ;
  ;
#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_106) < ((int32_t)0u))&1))) {
    goto _116;
  } else {
    goto _117;
  }

_117:
#line 242 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _113 = *((&le_global_db_info.field0.array[((int32_t)_106)]));
  ;
#line 243 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *((&_113->field4)) = _107;
#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_108 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _118;
  } else {
    goto _119;
  }

_119:
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _114 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_108)));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_113->field5.array[((int32_t)0)]))))) = _114;
  goto _118;

_118:
#line 247 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_109 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _120;
  } else {
    goto _121;
  }

_121:
#line 248 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _115 = memcpy(((&_113->field3.array[((int32_t)0)])), _109, 16);
  goto _120;

_120:
#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *((&_113->field6)) = (((uint8_t)_110));
#line 251 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *((&_113->field7)) = (((uint8_t)_111));
#line 252 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  *((&_113->field8)) = (((uint8_t)_112));
  goto _116;

_116:
  return;
}


void le_device_db_encryption_get(uint32_t _122, uint16_t* _123, uint8_t* _124, uint8_t* _125, uint32_t* _126, uint32_t* _127, uint32_t* _128) {
  struct l_struct_struct_OC_le_device_memory_db* _129;
  uint16_t _130;
  uint64_t _131;
  uint8_t* _132;
  uint8_t _133;
  uint8_t _134;
  uint8_t _135;

#line 255 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
  ;
  ;
  ;
  ;
  ;
  ;
#line 257 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((((int32_t)_122) < ((int32_t)0u))&1))) {
    goto _136;
  } else {
    goto _137;
  }

_137:
#line 261 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _129 = *((&le_global_db_info.field0.array[((int32_t)_122)]));
  ;
#line 264 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_123 == ((uint16_t*)/*NULL*/0))&1))) {
    goto _138;
  } else {
    goto _139;
  }

_139:
#line 265 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _130 = *((&_129->field4));
  *_123 = _130;
  goto _138;

_138:
#line 267 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_124 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _140;
  } else {
    goto _141;
  }

_141:
#line 268 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _131 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_129->field5.array[((int32_t)0)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_124))) = _131;
  goto _140;

_140:
#line 270 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_125 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _142;
  } else {
    goto _143;
  }

_143:
#line 271 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _132 = memcpy(_125, ((&_129->field3.array[((int32_t)0)])), 16);
  goto _142;

_142:
#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_126 == ((uint32_t*)/*NULL*/0))&1))) {
    goto _144;
  } else {
    goto _145;
  }

_145:
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _133 = *((&_129->field6));
  *_126 = (((uint32_t)(uint8_t)_133));
  goto _144;

_144:
#line 276 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_127 == ((uint32_t*)/*NULL*/0))&1))) {
    goto _146;
  } else {
    goto _147;
  }

_147:
#line 277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _134 = *((&_129->field7));
  *_127 = (((uint32_t)(uint8_t)_134));
  goto _146;

_146:
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  if ((((_128 == ((uint32_t*)/*NULL*/0))&1))) {
    goto _136;
  } else {
    goto _148;
  }

_148:
#line 280 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  _135 = *((&_129->field8));
  *_128 = (((uint32_t)(uint8_t)_135));
  goto _136;

_136:
  return;
}


void le_device_db_dump(void) {
#line 372 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
  ;
}

