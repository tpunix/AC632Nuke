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
struct l_struct_struct_OC_syscfg_file;
struct l_struct_struct_OC_db_entry_t;
struct l_struct_struct_OC_database_file;

/* Function definitions */
typedef uint32_t l_fptr_1(uint32_t, uint32_t);

typedef void l_fptr_5(int, ...);

typedef void l_fptr_7(uint32_t, uint32_t);

typedef uint32_t l_fptr_6(uint8_t*, uint32_t, uint32_t);

typedef uint32_t l_fptr_4(int, ...);

typedef uint32_t l_fptr_2(uint8_t*, uint32_t);

typedef uint32_t l_fptr_3(void);


/* Types Definitions */
struct l_struct_struct_OC_syscfg_file {
  l_fptr_1* field0;
  l_fptr_2* field1;
  l_fptr_2* field2;
  l_fptr_1* field3;
  l_fptr_4* field4;
};
struct l_struct_struct_OC_db_entry_t {
  uint8_t field0;
  uint8_t field1;
};
struct l_array_3_struct_AC_l_struct_struct_OC_db_entry_t {
  struct l_struct_struct_OC_db_entry_t array[3];
};
struct l_struct_struct_OC_database_file {
  l_fptr_4* field0;
  l_fptr_5* field1;
  l_fptr_6* field2;
  l_fptr_6* field3;
  l_fptr_7* field4;
  l_fptr_3* field5;
  l_fptr_4* field6;
};

/* External Global Variable Declarations */

/* Function Declarations */
void set_bt_vm_interface(uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_database_file* open_remote_db_file_opt(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
static uint32_t db_file_read(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint32_t db_file_write(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow));
static void db_file_seek(uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow));
static uint32_t db_file_getlen(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t db_file_fptr(uint32_t) __ATTRIBUTELIST__((nothrow, pure));
static uint32_t db_file_open(void) __ATTRIBUTELIST__((nothrow));
static void db_file_close(void) __ATTRIBUTELIST__((nothrow, const));


/* Global Variable Definitions and Initialization */
static uint32_t dbf_syscfg_remote_db_addr;
static struct l_struct_struct_OC_syscfg_file* dbf_bt_rw_file;
struct l_array_3_struct_AC_l_struct_struct_OC_db_entry_t dbf_entry_info __HIDDEN__ = { { { 0, 10 }, { 10, 10 }, { 20, 1 } } };
static struct l_struct_struct_OC_database_file dbf_remote_db_file = { ((l_fptr_4*)db_file_open), ((l_fptr_5*)db_file_close), db_file_read, db_file_write, db_file_seek, db_file_getlen, ((l_fptr_4*)db_file_fptr) };
static uint16_t dbf_fptr;


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_select_u32(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint16_t llvm_lshr_u16(uint16_t a, uint16_t b) {
  uint16_t r = a >> b;
  return r;
}
static __forceinline uint32_t llvm_neg_u32(uint32_t a) {
  uint32_t r = -a;
  return r;
}


/* Function Bodies */

void set_bt_vm_interface(uint32_t _1, uint8_t* _2) {
#line 31 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
  ;
#line 34 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  dbf_syscfg_remote_db_addr = _1;
#line 35 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  *((uint8_t**)(&dbf_bt_rw_file)) = _2;
}


struct l_struct_struct_OC_database_file* open_remote_db_file_opt(void) {
  return (&dbf_remote_db_file);
}


static uint32_t db_file_read(uint8_t* _3, uint32_t _4, uint32_t _5) {
  uint32_t _6;
  uint8_t _7;
  uint32_t _8;
  uint8_t _9;
  uint16_t _10;
  struct l_struct_struct_OC_syscfg_file* _11;
  l_fptr_1* _12;
  uint32_t _13;
  struct l_struct_struct_OC_syscfg_file* _14;
  l_fptr_1* _15;
  uint32_t _16;
  struct l_struct_struct_OC_syscfg_file* _17;
  l_fptr_2* _18;
  uint32_t _19;
  struct l_struct_struct_OC_syscfg_file* _20;
  l_fptr_3* _21;
  uint32_t _22;
  uint16_t _23;
  uint16_t _24;
  uint16_t _24__PHI_TEMPORARY;
  uint32_t _25;
  uint32_t _25__PHI_TEMPORARY;
  uint32_t _26;
  uint32_t _26__PHI_TEMPORARY;

#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
  ;
  ;
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 65 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  if ((((((uint32_t)_5) > ((uint32_t)2u))&1))) {
    _26__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _27;
  } else {
    goto _28;
  }

_28:
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _6 = dbf_syscfg_remote_db_addr;
  _7 = *((&dbf_entry_info.array[((int32_t)_5)].field0));
  _8 = llvm_add_u32((((uint32_t)(uint8_t)_7)), _6);
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _9 = *((&dbf_entry_info.array[((int32_t)_5)].field1));
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 72 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _10 = dbf_fptr;
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_10)), _4))) > ((uint32_t)((((uint32_t)(uint8_t)_9)) << 5)))&1))) {
    _26__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _27;
  } else {
    goto _29;
  }

_29:
#line 78 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _11 = dbf_bt_rw_file;
  if ((((_11 == ((struct l_struct_struct_OC_syscfg_file*)/*NULL*/0))&1))) {
    _24__PHI_TEMPORARY = _10;   /* for PHI node */
    _25__PHI_TEMPORARY = _4;   /* for PHI node */
    goto _30;
  } else {
    goto _31;
  }

_31:
#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _12 = *((&_11->field0));
  _13 =  /*tail*/ _12((llvm_add_u32((((uint32_t)(uint16_t)(llvm_lshr_u16(_10, 5)))), (_8 & 255))), 32);
  if ((((_13 == 0u)&1))) {
    _26__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _27;
  } else {
    goto _32;
  }

_32:
#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _14 = dbf_bt_rw_file;
  _15 = *((&_14->field3));
  _16 =  /*tail*/ _15(0, 0);
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _17 = dbf_bt_rw_file;
  _18 = *((&_17->field1));
  _19 =  /*tail*/ _18(_3, _4);
#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _20 = dbf_bt_rw_file;
  _21 = *(((l_fptr_3**)((&_20->field4))));
  _22 =  /*tail*/ _21();
  _23 = dbf_fptr;
  _24__PHI_TEMPORARY = _23;   /* for PHI node */
  _25__PHI_TEMPORARY = _19;   /* for PHI node */
  goto _30;

_30:
#line 92 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _24 = _24__PHI_TEMPORARY;
  _25 = _25__PHI_TEMPORARY;
#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 92 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  dbf_fptr = (((uint16_t)(llvm_add_u32((((uint32_t)(uint16_t)_24)), _25))));
  _26__PHI_TEMPORARY = _25;   /* for PHI node */
  goto _27;

_27:
  _26 = _26__PHI_TEMPORARY;
  return _26;
}


static uint32_t db_file_write(uint8_t* _33, uint32_t _34, uint32_t _35) {
  uint32_t _36;
  uint8_t _37;
  uint32_t _38;
  uint8_t _39;
  uint16_t _40;
  struct l_struct_struct_OC_syscfg_file* _41;
  l_fptr_1* _42;
  uint32_t _43;
  struct l_struct_struct_OC_syscfg_file* _44;
  l_fptr_1* _45;
  uint32_t _46;
  struct l_struct_struct_OC_syscfg_file* _47;
  l_fptr_2* _48;
  uint32_t _49;
  struct l_struct_struct_OC_syscfg_file* _50;
  l_fptr_3* _51;
  uint32_t _52;
  uint16_t _53;
  uint16_t _54;
  uint16_t _54__PHI_TEMPORARY;
  uint32_t _55;
  uint32_t _55__PHI_TEMPORARY;
  uint32_t _56;
  uint32_t _56__PHI_TEMPORARY;

#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
  ;
  ;
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 101 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  if ((((((uint32_t)_35) > ((uint32_t)2u))&1))) {
    _56__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _57;
  } else {
    goto _58;
  }

_58:
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _36 = dbf_syscfg_remote_db_addr;
  _37 = *((&dbf_entry_info.array[((int32_t)_35)].field0));
  _38 = llvm_add_u32((((uint32_t)(uint8_t)_37)), _36);
#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _39 = *((&dbf_entry_info.array[((int32_t)_35)].field1));
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 108 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _40 = dbf_fptr;
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_40)), _34))) > ((uint32_t)((((uint32_t)(uint8_t)_39)) << 5)))&1))) {
    _56__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _57;
  } else {
    goto _59;
  }

_59:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _41 = dbf_bt_rw_file;
  if ((((_41 == ((struct l_struct_struct_OC_syscfg_file*)/*NULL*/0))&1))) {
    _54__PHI_TEMPORARY = _40;   /* for PHI node */
    _55__PHI_TEMPORARY = _34;   /* for PHI node */
    goto _60;
  } else {
    goto _61;
  }

_61:
#line 117 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _42 = *((&_41->field0));
  _43 =  /*tail*/ _42((llvm_add_u32((((uint32_t)(uint16_t)(llvm_lshr_u16(_40, 5)))), (_38 & 255))), 32);
  if ((((_43 == 0u)&1))) {
    _56__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _57;
  } else {
    goto _62;
  }

_62:
#line 116 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _44 = dbf_bt_rw_file;
  _45 = *((&_44->field3));
  _46 =  /*tail*/ _45(0, 0);
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _47 = dbf_bt_rw_file;
  _48 = *((&_47->field2));
  _49 =  /*tail*/ _48(_33, _34);
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _50 = dbf_bt_rw_file;
  _51 = *(((l_fptr_3**)((&_50->field4))));
  _52 =  /*tail*/ _51();
  _53 = dbf_fptr;
  _54__PHI_TEMPORARY = _53;   /* for PHI node */
  _55__PHI_TEMPORARY = _49;   /* for PHI node */
  goto _60;

_60:
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _54 = _54__PHI_TEMPORARY;
  _55 = _55__PHI_TEMPORARY;
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  dbf_fptr = (((uint16_t)(llvm_add_u32((((uint32_t)(uint16_t)_54)), _55))));
  _56__PHI_TEMPORARY = _55;   /* for PHI node */
  goto _57;

_57:
  _56 = _56__PHI_TEMPORARY;
  return _56;
}


static void db_file_seek(uint32_t _63, uint32_t _64) {
  uint16_t _65;
  uint32_t _66;
  uint32_t _67;
  uint32_t _67__PHI_TEMPORARY;

#line 135 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
  ;
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  if ((((_63 == 0u)&1))) {
    _67__PHI_TEMPORARY = _64;   /* for PHI node */
    goto _68;
  } else {
    goto _69;
  }

_69:
#line 139 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _65 = dbf_fptr;
  _66 = llvm_add_u32((((uint32_t)(uint16_t)_65)), (llvm_select_u32((((_63 == 1u)&1)), _64, (llvm_neg_u32(_64)))));
  _67__PHI_TEMPORARY = _66;   /* for PHI node */
  goto _68;

_68:
  _67 = _67__PHI_TEMPORARY;
  dbf_fptr = (((uint16_t)_67));
}


static uint32_t db_file_getlen(void) {
  return 320;
}


static uint32_t db_file_fptr(uint32_t _70) {
  uint16_t _71;

#line 151 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  ;
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  _71 = dbf_fptr;
  return (((uint32_t)(uint16_t)_71));
}


static uint32_t db_file_open(void) {
#line 41 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
  dbf_fptr = 0;
  return 1;
}


static void db_file_close(void) {
  return;
}

