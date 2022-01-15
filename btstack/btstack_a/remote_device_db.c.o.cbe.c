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

#ifdef _MSC_VER
#define __UNALIGNED_LOAD__(type, align, op) *((type __unaligned*)op)
#else
#define __UNALIGNED_LOAD__(type, align, op) ((struct { type data __attribute__((packed, aligned(align))); }*)op)->data
#endif



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_database_file;
struct l_struct_struct_OC__remote_database;

/* Function definitions */
typedef uint32_t l_fptr_6(int, ...);

typedef uint32_t l_fptr_1(void);

typedef void l_fptr_4(uint32_t, uint32_t);

typedef uint8_t l_fptr_5(void);

typedef void l_fptr_3(void);

typedef void l_fptr_7(int, ...);

typedef uint32_t l_fptr_2(uint8_t*, uint32_t, uint32_t);


uint32_t get_database(struct l_struct_struct_OC__remote_database*, struct l_array_6_uint8_t*, uint8_t);

uint32_t get_database(struct l_struct_struct_OC__remote_database*, struct l_array_6_uint8_t*, uint8_t);

uint32_t get_last_database(struct l_struct_struct_OC__remote_database*, uint8_t);

uint32_t get_link_key(struct l_array_6_uint8_t*, struct l_array_16_uint8_t*, uint8_t);

/* Types Definitions */
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC__stack_config {
  uint32_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  uint16_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  uint32_t field9;
  uint8_t field10;
  uint8_t field11;
  uint8_t field12;
  uint8_t field13;
  struct l_array_6_uint8_t field14;
  uint8_t field15;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_struct_OC_database_file {
  l_fptr_6* field0;
  l_fptr_7* field1;
  l_fptr_2* field2;
  l_fptr_2* field3;
  l_fptr_4* field4;
  l_fptr_1* field5;
  l_fptr_6* field6;
};
struct l_struct_struct_OC__remote_database {
  uint16_t field0;
  uint16_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  struct l_array_6_uint8_t field8;
  struct l_array_16_uint8_t field9;
};
struct l_array_10_struct_AC_l_struct_struct_OC__remote_database {
  struct l_struct_struct_OC__remote_database array[10];
};

/* External Global Variable Declarations */
extern uint32_t CONFIG_BTCTLER_FAST_CONNECT_ENABLE;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t more_addr_reconnect_support;

/* Function Declarations */
void set_temp_link_key(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t get_support_profile(struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t get_database(struct l_struct_struct_OC__remote_database*, struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
void put_support_profile(struct l_array_6_uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void put_database(struct l_struct_struct_OC__remote_database*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t get_link_key(struct l_array_6_uint8_t*, struct l_array_16_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_remote_test_flag(int, ...);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
void put_link_key(struct l_array_6_uint8_t*, struct l_array_16_uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void updata_last_link_key(struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void delete_link_key(struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t handle_a2dp_discover_flag(struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t handle_att_connect_flag(struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hfp_volume_interface(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t avrcp_volume_interface(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t handle_remote_dev_type(struct l_array_6_uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void remote_device_db_init_opt(struct l_struct_struct_OC_database_file*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t restore_remote_device_info_opt(struct l_array_6_uint8_t*, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t get_last_N_database(struct l_struct_struct_OC__remote_database*, uint32_t, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint32_t get_last_database(struct l_struct_struct_OC__remote_database*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint8_t restore_remote_device_info_profile(struct l_array_6_uint8_t*, uint8_t, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t chip_crc16(uint8_t*, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint8_t temp_link_key_flag __HIDDEN__;
struct l_array_16_uint8_t temp_device_connect_linkkey __HIDDEN__;
static struct l_array_16_uint8_t own_private_linkkey = { "\x06w_\x87\x91\x8D\xD4#\x00]\xF1\xD8\xCF\x0C\x14+" };
static struct l_struct_struct_OC_database_file* dbf_file;
struct l_array_16_uint8_t last_device_connect_linkkey __HIDDEN__;


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint16_t llvm_select_u16(bool condition, uint16_t iftrue, uint16_t ifnot) {
  uint16_t r;
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
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

void set_temp_link_key(uint8_t* _1) {
  uint8_t* _2;

  _2 = memcpy(((&temp_device_connect_linkkey.array[((int32_t)0)])), _1, 16);
  *(volatile uint8_t*)(&temp_link_key_flag) = 1;
}


uint32_t get_support_profile(struct l_array_6_uint8_t* _3, uint8_t _4) {
  struct l_struct_struct_OC__remote_database _5;    /* Address-exposed local */
  uint8_t* _6;
  uint32_t _7;
  uint8_t _8;

  _6 = ((uint8_t*)(&_5));
  _7 = get_database((&_5), _3, _4);
  _8 = *((&_5.field6));
  return (llvm_select_u32((((_7 == 0u)&1)), 3, (((uint32_t)(uint8_t)_8))));
}


static uint32_t get_database(struct l_struct_struct_OC__remote_database* _9, struct l_array_6_uint8_t* _10, uint8_t _11) {
  l_fptr_1** _12;
  l_fptr_1* _13;
  uint32_t _14;
  uint8_t* _15;
  uint32_t _16;
  uint8_t* _17;
  uint8_t* _18;
  struct l_struct_struct_OC_database_file* _19;
  l_fptr_2* _20;
  uint32_t _21;
  uint32_t _22;
  uint16_t _23;
  uint16_t _24;
  uint32_t _25;
  uint32_t _26;
  uint32_t _26__PHI_TEMPORARY;
  struct l_struct_struct_OC_database_file* _27;
  l_fptr_3* _28;
  uint32_t _29;
  uint32_t _29__PHI_TEMPORARY;

  _12 = *((l_fptr_1***)(&dbf_file));
  _13 = *_12;
  _14 =  /*tail*/ _13();
  if ((((_14 == 0u)&1))) {
    _29__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _30;
  } else {
    goto _31;
  }

_31:
  _15 = ((uint8_t*)_9);
  _16 = ((uint32_t)(uint8_t)_11);
  _17 = (&(*_10).array[((int32_t)0)]);
  _18 = (&_9->field8.array[((int32_t)0)]);
  goto _32;

  do {     /* Syntactic loop '' to make GCC happy */
_32:
  _19 = dbf_file;
  _20 = *((&_19->field2));
  _21 =  /*tail*/ _20(_15, 32, _16);
  if ((((_21 == 32u)&1))) {
    goto _33;
  } else {
    goto _34;
  }

_33:
  _22 =  /*tail*/ memcmp(_17, _18, 6);
  if ((((_22 == 0u)&1))) {
    goto _35;
  } else {
    goto _32;
  }

  } while (1); /* end of syntactic loop '' */
_35:
  _23 = __UNALIGNED_LOAD__(uint16_t, 1, ((&_9->field0)));
  _24 =  /*tail*/ chip_crc16((((uint8_t*)((&_9->field1)))), 30);
  _25 = ((uint32_t)(bool)(((_23 == _24)&1)));
  _26__PHI_TEMPORARY = _25;   /* for PHI node */
  goto _36;

_34:
  _26__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _36;

_36:
  _26 = _26__PHI_TEMPORARY;
  _27 = dbf_file;
  _28 = *(((l_fptr_3**)((&_27->field1))));
   /*tail*/ _28();
  _29__PHI_TEMPORARY = _26;   /* for PHI node */
  goto _30;

_30:
  _29 = _29__PHI_TEMPORARY;
  return _29;
}


void put_support_profile(struct l_array_6_uint8_t* _37, uint8_t _38, uint8_t _39) {
  struct l_struct_struct_OC__remote_database _40;    /* Address-exposed local */
  uint8_t* _41;
  uint32_t _42;

  _41 = ((uint8_t*)(&_40));
  _42 = get_database((&_40), _37, _39);
  if ((((_42 == 0u)&1))) {
    goto _43;
  } else {
    goto _44;
  }

_44:
  *((&_40.field6)) = _38;
  put_database((&_40), _39);
  goto _43;

_43:
  return;
}


static void put_database(struct l_struct_struct_OC__remote_database* _45, uint8_t _46) {
  struct l_struct_struct_OC__remote_database _47;    /* Address-exposed local */
  struct l_struct_struct_OC__remote_database _48;    /* Address-exposed local */
  uint8_t* _49;
  uint8_t* _50;
  uint32_t _51;
  uint32_t _52;
  uint32_t _53;
  uint8_t _54;
  uint8_t _55;
  uint8_t _56;
  uint8_t _57;
  uint8_t _58;
  uint8_t _59;
  uint8_t _60;
  uint8_t _61;
  uint8_t _62;
  uint8_t _63;
  uint8_t _64;
  uint8_t _65;
  l_fptr_1** _66;
  l_fptr_1* _67;
  uint32_t _68;
  uint32_t _69;
  uint16_t* _70;
  uint16_t* _71;
  uint8_t* _72;
  uint8_t* _73;
  uint8_t* _74;
  uint8_t* _75;
  uint8_t* _76;
  uint8_t* _77;
  uint8_t* _78;
  uint8_t* _79;
  uint8_t* _80;
  uint8_t* _81;
  uint16_t _82;
  uint16_t _82__PHI_TEMPORARY;
  uint16_t _83;
  uint16_t _83__PHI_TEMPORARY;
  uint16_t _84;
  uint16_t _84__PHI_TEMPORARY;
  uint16_t _85;
  uint16_t _85__PHI_TEMPORARY;
  uint16_t _86;
  uint16_t _86__PHI_TEMPORARY;
  uint16_t _87;
  uint16_t _87__PHI_TEMPORARY;
  uint16_t _88;
  uint16_t _88__PHI_TEMPORARY;
  uint16_t _89;
  uint16_t _89__PHI_TEMPORARY;
  uint16_t _90;
  uint16_t _90__PHI_TEMPORARY;
  uint16_t _91;
  uint16_t _91__PHI_TEMPORARY;
  uint16_t _92;
  uint16_t _92__PHI_TEMPORARY;
  struct l_struct_struct_OC_database_file* _93;
  l_fptr_1* _94;
  uint32_t _95;
  struct l_struct_struct_OC_database_file* _96;
  l_fptr_2* _97;
  uint32_t _98;
  uint32_t _99;
  uint32_t _99__PHI_TEMPORARY;
  uint16_t _100;
  uint16_t _100__PHI_TEMPORARY;
  uint16_t _101;
  uint16_t _101__PHI_TEMPORARY;
  uint32_t _102;
  uint32_t _102__PHI_TEMPORARY;
  uint16_t _103;
  uint16_t _104;
  uint16_t _105;
  struct l_struct_struct_OC_database_file* _106;
  l_fptr_1* _107;
  uint32_t _108;
  struct l_struct_struct_OC_database_file* _109;
  l_fptr_2* _110;
  uint32_t _111;
  uint16_t _112;
  uint16_t _113;
  struct l_struct_struct_OC_database_file* _114;
  l_fptr_4* _115;
  uint8_t* _116;
  struct l_struct_struct_OC_database_file* _117;
  l_fptr_2* _118;
  uint32_t _119;
  struct l_struct_struct_OC_database_file* _120;
  l_fptr_1* _121;
  uint32_t _122;
  struct l_struct_struct_OC_database_file* _123;
  l_fptr_2* _124;
  uint32_t _125;
  uint16_t _126;
  uint16_t _127;
  uint16_t _128;
  uint16_t _129;
  uint16_t _130;
  uint16_t _131;
  uint32_t _132;
  uint32_t _133;
  uint16_t _134;
  uint16_t _135;
  uint16_t _135__PHI_TEMPORARY;
  uint16_t _136;
  uint16_t _136__PHI_TEMPORARY;
  uint16_t _137;
  uint16_t _137__PHI_TEMPORARY;
  uint16_t _138;
  uint16_t _138__PHI_TEMPORARY;
  uint16_t _139;
  uint16_t* _140;
  uint8_t* _141;
  uint16_t _142;
  uint32_t _143;
  struct l_struct_struct_OC_database_file* _144;
  l_fptr_1* _145;
  uint32_t _146;
  uint16_t _147;
  struct l_struct_struct_OC_database_file* _148;
  l_fptr_1* _149;
  uint32_t _150;
  uint16_t _151;
  uint16_t _152;
  uint16_t _152__PHI_TEMPORARY;
  struct l_struct_struct_OC_database_file* _153;
  l_fptr_4* _154;
  struct l_struct_struct_OC_database_file* _155;
  l_fptr_2* _156;
  uint32_t _157;
  struct l_struct_struct_OC_database_file* _158;
  l_fptr_3* _159;

  _49 = ((uint8_t*)(&_47));
  _50 = ((uint8_t*)(&_48));
  _51 = get_last_database((&_48), _46);
  if ((((_51 == 0u)&1))) {
    goto _160;
  } else {
    goto _161;
  }

_161:
  _52 = memcmp(((&_45->field8.array[((int32_t)0)])), ((&_48.field8.array[((int32_t)0)])), 6);
  if ((((_52 == 0u)&1))) {
    goto _162;
  } else {
    goto _160;
  }

_162:
  _53 = memcmp(((&_45->field9.array[((int32_t)0)])), ((&_48.field9.array[((int32_t)0)])), 16);
  if ((((_53 == 0u)&1))) {
    goto _163;
  } else {
    goto _160;
  }

_163:
  _54 = *((&_45->field4));
  _55 = *((&_48.field4));
  if ((((_54 == _55)&1))) {
    goto _164;
  } else {
    goto _160;
  }

_164:
  _56 = *((&_45->field5));
  _57 = *((&_48.field5));
  if ((((_56 == _57)&1))) {
    goto _165;
  } else {
    goto _160;
  }

_165:
  _58 = *((&_45->field2));
  _59 = *((&_48.field2));
  if ((((_58 == _59)&1))) {
    goto _166;
  } else {
    goto _160;
  }

_166:
  _60 = *((&_45->field6));
  _61 = *((&_48.field6));
  if ((((_60 == _61)&1))) {
    goto _167;
  } else {
    goto _160;
  }

_167:
  _62 = *((&_45->field7));
  _63 = *((&_48.field7));
  if ((((_62 == _63)&1))) {
    goto _168;
  } else {
    goto _160;
  }

_168:
  _64 = *((&_45->field3));
  _65 = *((&_48.field3));
  if ((((_64 == _65)&1))) {
    goto _169;
  } else {
    goto _160;
  }

_160:
  _66 = *((l_fptr_1***)(&dbf_file));
  _67 = *_66;
  _68 =  /*tail*/ _67();
  if ((((_68 == 0u)&1))) {
    goto _169;
  } else {
    goto _170;
  }

_170:
  _69 = ((uint32_t)(uint8_t)_46);
  _70 = (&_47.field1);
  _71 = (&_47.field0);
  _72 = ((uint8_t*)_70);
  _73 = (&_45->field8.array[((int32_t)0)]);
  _74 = (&_47.field8.array[((int32_t)0)]);
  _75 = (&_45->field9.array[((int32_t)0)]);
  _76 = (&_47.field9.array[((int32_t)0)]);
  _77 = (&_45->field4);
  _78 = (&_45->field5);
  _79 = (&_45->field3);
  _80 = (&_45->field7);
  _81 = (&_45->field6);
  _82__PHI_TEMPORARY = 0;   /* for PHI node */
  _83__PHI_TEMPORARY = -1;   /* for PHI node */
  _84__PHI_TEMPORARY = 0;   /* for PHI node */
  _85__PHI_TEMPORARY = 0;   /* for PHI node */
  _86__PHI_TEMPORARY = 0;   /* for PHI node */
  _87__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _171;

  do {     /* Syntactic loop '' to make GCC happy */
_171:
  _82 = _82__PHI_TEMPORARY;
  _83 = _83__PHI_TEMPORARY;
  _84 = _84__PHI_TEMPORARY;
  _85 = _85__PHI_TEMPORARY;
  _86 = _86__PHI_TEMPORARY;
  _87 = _87__PHI_TEMPORARY;
  _88__PHI_TEMPORARY = _82;   /* for PHI node */
  _89__PHI_TEMPORARY = _83;   /* for PHI node */
  _90__PHI_TEMPORARY = _84;   /* for PHI node */
  _91__PHI_TEMPORARY = _85;   /* for PHI node */
  _92__PHI_TEMPORARY = _87;   /* for PHI node */
  goto _172;

  do {     /* Syntactic loop '' to make GCC happy */
_172:
  _88 = _88__PHI_TEMPORARY;
  _89 = _89__PHI_TEMPORARY;
  _90 = _90__PHI_TEMPORARY;
  _91 = _91__PHI_TEMPORARY;
  _92 = _92__PHI_TEMPORARY;
  _93 = dbf_file;
  _94 = *(((l_fptr_1**)((&_93->field6))));
  _95 = _94();
  _96 = dbf_file;
  _97 = *((&_96->field2));
  _98 = _97(_49, 32, _69);
  if (((((_98 & 65535) == 32u)&1))) {
    goto _173;
  } else {
    goto _174;
  }

_173:
  _99__PHI_TEMPORARY = _95;   /* for PHI node */
  _100__PHI_TEMPORARY = _92;   /* for PHI node */
  _101__PHI_TEMPORARY = _91;   /* for PHI node */
  goto _175;

  do {     /* Syntactic loop '' to make GCC happy */
_175:
  _99 = _99__PHI_TEMPORARY;
  _100 = _100__PHI_TEMPORARY;
  _101 = _101__PHI_TEMPORARY;
  _102__PHI_TEMPORARY = _99;   /* for PHI node */
  goto _176;

  do {     /* Syntactic loop '' to make GCC happy */
_176:
  _102 = _102__PHI_TEMPORARY;
  _103 = *_70;
  if ((((_103 == ((uint16_t)-1))&1))) {
    goto _177;
  } else {
    goto _178;
  }

_178:
  _112 = *_71;
  _113 = chip_crc16(_72, 30);
  if ((((_112 == _113)&1))) {
    goto _179;
  } else {
    goto _180;
  }

_180:
  _114 = dbf_file;
  _115 = *((&_114->field4));
  _115(2, 32);
  _116 = memset(_49, 255, 32);
  _117 = dbf_file;
  _118 = *((&_117->field3));
  _119 = _118(_49, 32, _69);
  _120 = dbf_file;
  _121 = *(((l_fptr_1**)((&_120->field6))));
  _122 = _121();
  _123 = dbf_file;
  _124 = *((&_123->field2));
  _125 = _124(_49, 32, _69);
  if (((((_125 & 65535) == 32u)&1))) {
    _102__PHI_TEMPORARY = _122;   /* for PHI node */
    goto _176;
  } else {
    goto _181;
  }

  } while (1); /* end of syntactic loop '' */
_177:
  _104 = ((uint16_t)_102);
  _105 = llvm_or_u16(_100, 2);
  _106 = dbf_file;
  _107 = *(((l_fptr_1**)((&_106->field6))));
  _108 = _107();
  _109 = dbf_file;
  _110 = *((&_109->field2));
  _111 = _110(_49, 32, _69);
  if (((((_111 & 65535) == 32u)&1))) {
    _99__PHI_TEMPORARY = _108;   /* for PHI node */
    _100__PHI_TEMPORARY = _105;   /* for PHI node */
    _101__PHI_TEMPORARY = _104;   /* for PHI node */
    goto _175;
  } else {
    goto _182;
  }

  } while (1); /* end of syntactic loop '' */
_179:
  _126 = ((uint16_t)_102);
  _127 = *_70;
  _128 = llvm_select_u16((((((uint16_t)_89) > ((uint16_t)_127))&1)), _127, _89);
  _129 = llvm_select_u16((((((uint16_t)_89) > ((uint16_t)_127))&1)), _126, _90);
  _130 = llvm_select_u16((((((uint16_t)_89) > ((uint16_t)_127))&1)), (llvm_or_u16(_100, 4)), _100);
  _131 = llvm_select_u16((((((uint16_t)_88) < ((uint16_t)_127))&1)), _127, _88);
  if ((((_86 == ((uint16_t)0))&1))) {
    goto _183;
  } else {
    _88__PHI_TEMPORARY = _131;   /* for PHI node */
    _89__PHI_TEMPORARY = _128;   /* for PHI node */
    _90__PHI_TEMPORARY = _129;   /* for PHI node */
    _91__PHI_TEMPORARY = _101;   /* for PHI node */
    _92__PHI_TEMPORARY = _130;   /* for PHI node */
    goto _172;
  }

  } while (1); /* end of syntactic loop '' */
_183:
  _132 = memcmp(_73, _74, 6);
  if ((((_132 == 0u)&1))) {
    goto _184;
  } else {
    _135__PHI_TEMPORARY = 0;   /* for PHI node */
    _136__PHI_TEMPORARY = _130;   /* for PHI node */
    goto _185;
  }

_184:
  _133 = memcmp(_75, _76, 16);
  if ((((_133 == 0u)&1))) {
    goto _186;
  } else {
    goto _187;
  }

_187:
  *_77 = -1;
  *_78 = -1;
  *_79 = 0;
  *_80 = 0;
  *_81 = 3;
  goto _186;

_186:
  _134 = llvm_or_u16(_130, 1);
  _135__PHI_TEMPORARY = _126;   /* for PHI node */
  _136__PHI_TEMPORARY = _134;   /* for PHI node */
  goto _185;

_185:
  _135 = _135__PHI_TEMPORARY;
  _136 = _136__PHI_TEMPORARY;
  _82__PHI_TEMPORARY = _131;   /* for PHI node */
  _83__PHI_TEMPORARY = _128;   /* for PHI node */
  _84__PHI_TEMPORARY = _129;   /* for PHI node */
  _85__PHI_TEMPORARY = _101;   /* for PHI node */
  _86__PHI_TEMPORARY = _135;   /* for PHI node */
  _87__PHI_TEMPORARY = _136;   /* for PHI node */
  goto _171;

  } while (1); /* end of syntactic loop '' */
_181:
  _137__PHI_TEMPORARY = _101;   /* for PHI node */
  _138__PHI_TEMPORARY = _100;   /* for PHI node */
  goto _188;

_182:
  _137__PHI_TEMPORARY = _104;   /* for PHI node */
  _138__PHI_TEMPORARY = _105;   /* for PHI node */
  goto _188;

_174:
  _137__PHI_TEMPORARY = _91;   /* for PHI node */
  _138__PHI_TEMPORARY = _92;   /* for PHI node */
  goto _188;

_188:
  _137 = _137__PHI_TEMPORARY;
  _138 = _138__PHI_TEMPORARY;
  _139 = llvm_add_u16(_88, 1);
  _140 = (&_45->field1);
  __UNALIGNED_LOAD__(uint16_t, 1, _140) = (llvm_select_u16((((_139 == ((uint16_t)-1))&1)), 1, _139));
  _141 = ((uint8_t*)_45);
  _142 = chip_crc16((((uint8_t*)_140)), 30);
  __UNALIGNED_LOAD__(uint16_t, 1, ((&_45->field0))) = _142;
  _143 = ((uint32_t)(uint16_t)_138);
  if ((((_138 == ((uint16_t)0))&1))) {
    goto _189;
  } else {
    goto _190;
  }

_189:
  _144 = dbf_file;
  _145 = *(((l_fptr_1**)((&_144->field6))));
  _146 = _145();
  _147 = ((uint16_t)(llvm_add_u32(_146, 65504)));
  _152__PHI_TEMPORARY = _147;   /* for PHI node */
  goto _191;

_190:
  if (((((_143 & 1) == 0u)&1))) {
    goto _192;
  } else {
    _152__PHI_TEMPORARY = _86;   /* for PHI node */
    goto _191;
  }

_192:
  if (((((_143 & 2) == 0u)&1))) {
    goto _193;
  } else {
    _152__PHI_TEMPORARY = _137;   /* for PHI node */
    goto _191;
  }

_193:
  if (((((_143 & 4) == 0u)&1))) {
    goto _194;
  } else {
    _152__PHI_TEMPORARY = _90;   /* for PHI node */
    goto _191;
  }

_194:
  _148 = dbf_file;
  _149 = *(((l_fptr_1**)((&_148->field6))));
  _150 = _149();
  _151 = ((uint16_t)(llvm_add_u32(_150, 65504)));
  _152__PHI_TEMPORARY = _151;   /* for PHI node */
  goto _191;

_191:
  _152 = _152__PHI_TEMPORARY;
  _153 = dbf_file;
  _154 = *((&_153->field4));
  _154(0, (((uint32_t)(uint16_t)_152)));
  _155 = dbf_file;
  _156 = *((&_155->field3));
  _157 = _156(_141, 32, _69);
  _158 = dbf_file;
  _159 = *(((l_fptr_3**)((&_158->field1))));
  _159();
  goto _169;

_169:
  return;
}


uint32_t get_link_key(struct l_array_6_uint8_t* _195, struct l_array_16_uint8_t* _196, uint8_t _197) {
  struct l_array_16_uint8_t _198;    /* Address-exposed local */
  struct l_struct_struct_OC__remote_database _199;    /* Address-exposed local */
  uint8_t* _200;
  uint8_t* _201;
  uint8_t _202;
  uint8_t* _203;
  uint32_t _204;
  uint8_t _205;
  uint8_t* _206;
  uint32_t _207;
  uint8_t* _208;
  uint8_t* _209;
  uint32_t _210;
  uint8_t* _211;
  uint32_t _212;
  uint32_t _212__PHI_TEMPORARY;

  _200 = (&_198.array[((int32_t)0)]);
  _201 = ((uint8_t*)(&_199));
  _202 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_202 == ((uint8_t)0))&1))) {
    goto _213;
  } else {
    goto _214;
  }

_214:
  _203 = memcpy(((&(*_196).array[((int32_t)0)])), ((&own_private_linkkey.array[((int32_t)0)])), 16);
  _212__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _215;

_213:
  _204 = CONFIG_BTCTLER_FAST_CONNECT_ENABLE;
  if ((((_204 == 0u)&1))) {
    goto _216;
  } else {
    _212__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _215;
  }

_216:
  _205 = *(volatile uint8_t*)(&temp_link_key_flag);
  if ((((_205 == ((uint8_t)0))&1))) {
    goto _217;
  } else {
    goto _218;
  }

_218:
  _206 = memcpy(((&(*_196).array[((int32_t)0)])), ((&temp_device_connect_linkkey.array[((int32_t)0)])), 16);
  _212__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _215;

_217:
  _207 = get_database((&_199), _195, _197);
  if ((((_207 == 0u)&1))) {
    _212__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _215;
  } else {
    goto _219;
  }

_219:
  _208 = memset(_200, 0, 16);
  _209 = (&_199.field9.array[((int32_t)0)]);
  _210 = memcmp(_200, _209, 16);
  if ((((_210 == 0u)&1))) {
    _212__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _215;
  } else {
    goto _220;
  }

_220:
  _211 = memcpy(((&(*_196).array[((int32_t)0)])), _209, 16);
  _212__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _215;

_215:
  _212 = _212__PHI_TEMPORARY;
  return _212;
}


void put_link_key(struct l_array_6_uint8_t* _221, struct l_array_16_uint8_t* _222, uint8_t _223, uint8_t _224) {
  struct l_struct_struct_OC__remote_database _225;    /* Address-exposed local */
  uint8_t* _226;
  uint8_t _227;
  uint8_t _228;
  uint32_t _229;
  uint32_t _230;
  uint8_t* _231;
  uint8_t* _232;
  uint8_t* _233;

  _226 = ((uint8_t*)(&_225));
  _227 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_227 == ((uint8_t)0))&1))) {
    goto _234;
  } else {
    goto _235;
  }

_234:
  _228 = *(volatile uint8_t*)(&temp_link_key_flag);
  _229 = CONFIG_BTCTLER_FAST_CONNECT_ENABLE;
  if (((((((_228 == ((uint8_t)0))&1)) & (((_229 == 0u)&1)))&1))) {
    goto _236;
  } else {
    goto _235;
  }

_236:
  _230 = get_database((&_225), _221, _224);
  if ((((_230 == 0u)&1))) {
    goto _237;
  } else {
    goto _238;
  }

_237:
  _231 = memset(_226, 0, 32);
  *((&_225.field5)) = -1;
  *((&_225.field4)) = -1;
  *((&_225.field3)) = 0;
  *((&_225.field7)) = 0;
  *((&_225.field6)) = 3;
  goto _238;

_238:
  _232 = memcpy(((&_225.field8.array[((int32_t)0)])), ((&(*_221).array[((int32_t)0)])), 6);
  _233 = memcpy(((&_225.field9.array[((int32_t)0)])), ((&(*_222).array[((int32_t)0)])), 16);
  put_database((&_225), _224);
  goto _235;

_235:
  return;
}


void updata_last_link_key(struct l_array_6_uint8_t* _239, uint8_t _240) {
  struct l_array_16_uint8_t _241;    /* Address-exposed local */
  uint8_t* _242;
  uint32_t _243;

  _242 = (&_241.array[((int32_t)0)]);
  _243 = get_link_key(_239, (&_241), _240);
  if ((((_243 == 0u)&1))) {
    goto _244;
  } else {
    goto _245;
  }

_245:
  put_link_key(_239, (&_241), /*UNDEF*/0, _240);
  goto _244;

_244:
  return;
}


void delete_link_key(struct l_array_6_uint8_t* _246, uint8_t _247) {
  struct l_struct_struct_OC__remote_database _248;    /* Address-exposed local */
  uint8_t* _249;
  l_fptr_1** _250;
  l_fptr_1* _251;
  uint32_t _252;
  struct l_struct_struct_OC_database_file* _253;
  l_fptr_2* _254;
  uint32_t _255;
  uint32_t _256;
  uint8_t* _257;
  uint8_t* _258;
  uint32_t _259;
  struct l_struct_struct_OC_database_file* _260;
  l_fptr_4* _261;
  uint8_t* _262;
  struct l_struct_struct_OC_database_file* _263;
  l_fptr_2* _264;
  uint32_t _265;
  struct l_struct_struct_OC_database_file* _266;
  l_fptr_4* _267;
  uint8_t* _268;
  struct l_struct_struct_OC_database_file* _269;
  l_fptr_2* _270;
  uint32_t _271;
  struct l_struct_struct_OC_database_file* _272;
  l_fptr_2* _273;
  uint32_t _274;
  struct l_struct_struct_OC_database_file* _275;
  l_fptr_3* _276;

  _249 = ((uint8_t*)(&_248));
  _250 = *((l_fptr_1***)(&dbf_file));
  _251 = *_250;
  _252 =  /*tail*/ _251();
  if ((((_252 == 0u)&1))) {
    goto _277;
  } else {
    goto _278;
  }

_278:
  _253 = dbf_file;
  _254 = *((&_253->field2));
  _255 = ((uint32_t)(uint8_t)_247);
  _256 = _254(_249, 32, _255);
  if ((((_256 == 32u)&1))) {
    goto _279;
  } else {
    goto _280;
  }

_279:
  _257 = (&(*_246).array[((int32_t)0)]);
  _258 = (&_248.field8.array[((int32_t)0)]);
  goto _281;

  do {     /* Syntactic loop '' to make GCC happy */
_281:
  if ((((_246 == ((struct l_array_6_uint8_t*)/*NULL*/0))&1))) {
    goto _282;
  } else {
    goto _283;
  }

_283:
  _259 = memcmp(_257, _258, 6);
  if ((((_259 == 0u)&1))) {
    goto _284;
  } else {
    goto _285;
  }

_282:
  _266 = dbf_file;
  _267 = *((&_266->field4));
  _267(2, 32);
  _268 = memset(_249, 255, 32);
  _269 = dbf_file;
  _270 = *((&_269->field3));
  _271 = _270(_249, 32, _255);
  goto _285;

_285:
  _272 = dbf_file;
  _273 = *((&_272->field2));
  _274 = _273(_249, 32, _255);
  if ((((_274 == 32u)&1))) {
    goto _281;
  } else {
    goto _286;
  }

  } while (1); /* end of syntactic loop '' */
_284:
  _260 = dbf_file;
  _261 = *((&_260->field4));
  _261(2, 32);
  _262 = memset(_249, 255, 32);
  _263 = dbf_file;
  _264 = *((&_263->field3));
  _265 = _264(_249, 32, _255);
  goto _280;

_286:
  goto _280;

_280:
  _275 = dbf_file;
  _276 = *(((l_fptr_3**)((&_275->field1))));
  _276();
  goto _277;

_277:
  return;
}


uint8_t handle_a2dp_discover_flag(struct l_array_6_uint8_t* _287, uint8_t _288) {
  struct l_struct_struct_OC__remote_database _289;    /* Address-exposed local */
  uint8_t* _290;
  uint8_t _291;
  struct l_struct_struct_OC__stack_config* _292;
  uint32_t _293;
  uint32_t _294;
  uint8_t* _295;
  uint8_t _296;
  uint8_t _297;
  uint8_t _297__PHI_TEMPORARY;

  _290 = ((uint8_t*)(&_289));
  _291 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_291 == ((uint8_t)0))&1))) {
    goto _298;
  } else {
    _297__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _299;
  }

_298:
  _292 = user_stack_configs;
  _293 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_292->field9)));
  if (((((_293 & 1048576) == 0u)&1))) {
    goto _300;
  } else {
    _297__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _299;
  }

_300:
  _294 = get_database((&_289), _287, 0);
  if ((((_294 == 0u)&1))) {
    _297__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _299;
  } else {
    goto _301;
  }

_301:
  _295 = (&_289.field3);
  if ((((_288 == ((uint8_t)-1))&1))) {
    goto _302;
  } else {
    goto _303;
  }

_302:
  _296 = *_295;
  _297__PHI_TEMPORARY = _296;   /* for PHI node */
  goto _299;

_303:
  *_295 = _288;
  put_database((&_289), 0);
  _297__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _299;

_299:
  _297 = _297__PHI_TEMPORARY;
  return _297;
}


uint8_t handle_att_connect_flag(struct l_array_6_uint8_t* _304, uint8_t _305) {
  struct l_struct_struct_OC__remote_database _306;    /* Address-exposed local */
  uint8_t* _307;
  uint8_t _308;
  struct l_struct_struct_OC__stack_config* _309;
  uint32_t _310;
  uint32_t _311;
  uint8_t* _312;
  uint8_t _313;
  uint8_t _314;
  uint8_t _314__PHI_TEMPORARY;

  _307 = ((uint8_t*)(&_306));
  _308 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_308 == ((uint8_t)0))&1))) {
    goto _315;
  } else {
    _314__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _316;
  }

_315:
  _309 = user_stack_configs;
  _310 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_309->field9)));
  if (((((_310 & 1048576) == 0u)&1))) {
    goto _317;
  } else {
    _314__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _316;
  }

_317:
  _311 = get_database((&_306), _304, 0);
  if ((((_311 == 0u)&1))) {
    _314__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _316;
  } else {
    goto _318;
  }

_318:
  _312 = (&_306.field7);
  _313 = *_312;
  if ((((_305 == ((uint8_t)-1))&1))) {
    _314__PHI_TEMPORARY = _313;   /* for PHI node */
    goto _316;
  } else {
    goto _319;
  }

_319:
  if ((((_313 == _305)&1))) {
    _314__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _316;
  } else {
    goto _320;
  }

_320:
  *_312 = _305;
  put_database((&_306), 0);
  _314__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _316;

_316:
  _314 = _314__PHI_TEMPORARY;
  return _314;
}


uint8_t hfp_volume_interface(uint8_t* _321, uint8_t _322) {
  struct l_struct_struct_OC__remote_database _323;    /* Address-exposed local */
  uint8_t* _324;
  uint8_t _325;
  struct l_struct_struct_OC__stack_config* _326;
  uint32_t _327;
  uint32_t _328;
  uint8_t* _329;
  uint8_t* _330;
  uint8_t* _331;
  uint8_t* _331__PHI_TEMPORARY;
  uint8_t _332;
  uint8_t _333;
  uint8_t _333__PHI_TEMPORARY;

  _324 = ((uint8_t*)(&_323));
  _325 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_325 == ((uint8_t)0))&1))) {
    goto _334;
  } else {
    _333__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _335;
  }

_334:
  _326 = user_stack_configs;
  _327 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_326->field9)));
  if (((((_327 & 1048576) == 0u)&1))) {
    goto _336;
  } else {
    _333__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _335;
  }

_336:
  _328 = get_database((&_323), (((struct l_array_6_uint8_t*)_321)), 0);
  if ((((_328 == 0u)&1))) {
    _333__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _335;
  } else {
    goto _337;
  }

_337:
  if ((((_322 == ((uint8_t)-1))&1))) {
    goto _338;
  } else {
    goto _339;
  }

_338:
  _329 = (&_323.field5);
  _331__PHI_TEMPORARY = _329;   /* for PHI node */
  goto _340;

_339:
  _330 = (&_323.field5);
  *_330 = (llvm_select_u8((((((uint8_t)_322) < ((uint8_t)((uint8_t)15)))&1)), _322, 15));
  put_database((&_323), 0);
  _331__PHI_TEMPORARY = _330;   /* for PHI node */
  goto _340;

_340:
  _331 = _331__PHI_TEMPORARY;
  _332 = *_331;
  _333__PHI_TEMPORARY = _332;   /* for PHI node */
  goto _335;

_335:
  _333 = _333__PHI_TEMPORARY;
  return _333;
}


uint8_t avrcp_volume_interface(uint8_t* _341, uint8_t _342) {
  struct l_struct_struct_OC__remote_database _343;    /* Address-exposed local */
  uint8_t* _344;
  uint8_t _345;
  struct l_struct_struct_OC__stack_config* _346;
  uint32_t _347;
  uint32_t _348;
  uint8_t* _349;
  uint8_t* _350;
  uint8_t* _351;
  uint8_t* _351__PHI_TEMPORARY;
  uint8_t _352;
  uint8_t _353;
  uint8_t _353__PHI_TEMPORARY;

  _344 = ((uint8_t*)(&_343));
  _345 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_345 == ((uint8_t)0))&1))) {
    goto _354;
  } else {
    _353__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _355;
  }

_354:
  _346 = user_stack_configs;
  _347 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_346->field9)));
  if (((((_347 & 1048576) == 0u)&1))) {
    goto _356;
  } else {
    _353__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _355;
  }

_356:
  _348 = get_database((&_343), (((struct l_array_6_uint8_t*)_341)), 0);
  if ((((_348 == 0u)&1))) {
    _353__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _355;
  } else {
    goto _357;
  }

_357:
  if ((((_342 == ((uint8_t)-1))&1))) {
    goto _358;
  } else {
    goto _359;
  }

_358:
  _349 = (&_343.field4);
  _351__PHI_TEMPORARY = _349;   /* for PHI node */
  goto _360;

_359:
  _350 = (&_343.field4);
  *_350 = (llvm_select_u8((((((int8_t)_342) < ((int8_t)((uint8_t)0)))&1)), 127u, _342));
  put_database((&_343), 0);
  _351__PHI_TEMPORARY = _350;   /* for PHI node */
  goto _360;

_360:
  _351 = _351__PHI_TEMPORARY;
  _352 = *_351;
  _353__PHI_TEMPORARY = _352;   /* for PHI node */
  goto _355;

_355:
  _353 = _353__PHI_TEMPORARY;
  return _353;
}


uint8_t handle_remote_dev_type(struct l_array_6_uint8_t* _361, uint8_t _362) {
  struct l_struct_struct_OC__remote_database _363;    /* Address-exposed local */
  struct l_array_16_uint8_t _364;    /* Address-exposed local */
  uint8_t* _365;
  uint8_t* _366;
  uint8_t _367;
  uint32_t _368;
  uint8_t* _369;
  uint8_t* _370;
  uint8_t* _371;
  uint8_t* _372;
  uint8_t _373;
  uint8_t* _374;
  uint8_t _375;
  uint8_t _376;
  uint8_t _376__PHI_TEMPORARY;
  uint8_t* _377;
  uint8_t* _377__PHI_TEMPORARY;
  uint8_t _378;
  uint8_t _378__PHI_TEMPORARY;

  _365 = ((uint8_t*)(&_363));
  _366 = (&_364.array[((int32_t)0)]);
  _367 =  /*tail*/ ((l_fptr_5*)(void*)get_remote_test_flag)();
  if ((((_367 == ((uint8_t)0))&1))) {
    goto _379;
  } else {
    _378__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _380;
  }

_379:
  _368 = get_database((&_363), _361, 0);
  if ((((_368 == 0u)&1))) {
    goto _381;
  } else {
    goto _382;
  }

_381:
  if ((((_362 == ((uint8_t)-1))&1))) {
    _378__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _380;
  } else {
    goto _383;
  }

_383:
  _369 = memset(_366, 0, 16);
  _370 = memset(_365, 0, 32);
  _371 = memcpy(((&_363.field8.array[((int32_t)0)])), ((&(*_361).array[((int32_t)0)])), 6);
  *((&_363.field5)) = -1;
  *((&_363.field4)) = -1;
  *((&_363.field6)) = 3;
  put_link_key(_361, (&_364), /*UNDEF*/0, 0);
  _372 = (&_363.field2);
  _373 = *_372;
  _376__PHI_TEMPORARY = _373;   /* for PHI node */
  _377__PHI_TEMPORARY = _372;   /* for PHI node */
  goto _384;

_382:
  _374 = (&_363.field2);
  _375 = *_374;
  if ((((_362 == ((uint8_t)-1))&1))) {
    _378__PHI_TEMPORARY = _375;   /* for PHI node */
    goto _380;
  } else {
    _376__PHI_TEMPORARY = _375;   /* for PHI node */
    _377__PHI_TEMPORARY = _374;   /* for PHI node */
    goto _384;
  }

_384:
  _376 = _376__PHI_TEMPORARY;
  _377 = _377__PHI_TEMPORARY;
  if ((((_376 == _362)&1))) {
    _378__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _380;
  } else {
    goto _385;
  }

_385:
  *_377 = _362;
  put_database((&_363), 0);
  _378__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _380;

_380:
  _378 = _378__PHI_TEMPORARY;
  return _378;
}


void remote_device_db_init_opt(struct l_struct_struct_OC_database_file* _386) {
  dbf_file = _386;
}


uint8_t restore_remote_device_info_opt(struct l_array_6_uint8_t* _387, uint8_t _388, uint8_t _389) {
  struct l_struct_struct_OC__remote_database _390;    /* Address-exposed local */
  struct l_array_10_struct_AC_l_struct_struct_OC__remote_database _391;    /* Address-exposed local */
  uint8_t* _392;
  uint8_t* _393;
  uint8_t _394;
  uint32_t _395;
  uint8_t _396;
  uint32_t _397;
  uint32_t _398;
  uint32_t _398__PHI_TEMPORARY;
  uint32_t _399;
  uint32_t _399__PHI_TEMPORARY;
  uint32_t _400;
  uint8_t* _401;
  uint32_t _402;
  uint32_t _403;
  uint8_t* _404;
  uint8_t _405;
  uint8_t _405__PHI_TEMPORARY;

  _392 = ((uint8_t*)(&_390));
  _393 = memset((((uint8_t*)(&_391))), 0, 320);
  _394 = more_addr_reconnect_support;
  if (((((((((uint8_t)(llvm_add_u8(_388, -2))) < ((uint8_t)((uint8_t)8)))&1)) & (((_394 != ((uint8_t)0))&1)))&1))) {
    goto _406;
  } else {
    goto _407;
  }

_406:
  _395 = get_last_N_database(((&_391.array[((int32_t)0)])), (((uint32_t)(uint8_t)_388)), _389, 0);
  _396 = ((uint8_t)_395);
  _397 = _395 & 255;
  if ((((_397 == 0u)&1))) {
    _405__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _408;
  } else {
    goto _409;
  }

_409:
  _398__PHI_TEMPORARY = _397;   /* for PHI node */
  _399__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _410;

  do {     /* Syntactic loop '' to make GCC happy */
_410:
  _398 = _398__PHI_TEMPORARY;
  _399 = _399__PHI_TEMPORARY;
  _400 = llvm_add_u32(_398, -1);
  _401 = memcpy(((&_387[((int32_t)_400)].array[((int32_t)0)])), ((&_391.array[((int32_t)_399)].field8.array[((int32_t)0)])), 6);
  _402 = llvm_add_u32(_399, 1);
  if ((((_402 == _397)&1))) {
    goto _411;
  } else {
    _398__PHI_TEMPORARY = _400;   /* for PHI node */
    _399__PHI_TEMPORARY = _402;   /* for PHI node */
    goto _410;
  }

  } while (1); /* end of syntactic loop '' */
_407:
  _403 = get_last_database((&_390), _389);
  if ((((_403 == 0u)&1))) {
    _405__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _408;
  } else {
    goto _412;
  }

_412:
  _404 = memcpy(((&(*_387).array[((int32_t)0)])), ((&_390.field8.array[((int32_t)0)])), 6);
  _405__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _408;

_411:
  _405__PHI_TEMPORARY = _396;   /* for PHI node */
  goto _408;

_408:
  _405 = _405__PHI_TEMPORARY;
  return _405;
}


static uint32_t get_last_N_database(struct l_struct_struct_OC__remote_database* _413, uint32_t _414, uint8_t _415, uint8_t _416) {
  struct l_struct_struct_OC__remote_database _417;    /* Address-exposed local */
  struct l_array_10_struct_AC_l_struct_struct_OC__remote_database _418;    /* Address-exposed local */
  uint8_t* _419;
  uint8_t* _420;
  l_fptr_1** _421;
  l_fptr_1* _422;
  uint32_t _423;
  struct l_struct_struct_OC_database_file* _424;
  l_fptr_2* _425;
  uint32_t _426;
  uint32_t _427;
  uint16_t* _428;
  uint16_t* _429;
  uint8_t* _430;
  uint8_t* _431;
  uint32_t _432;
  uint32_t _432__PHI_TEMPORARY;
  uint16_t _433;
  struct l_struct_struct_OC_database_file* _434;
  l_fptr_2* _435;
  uint32_t _436;
  uint16_t _437;
  uint16_t _438;
  uint8_t _439;
  uint8_t* _440;
  uint32_t _441;
  struct l_struct_struct_OC_database_file* _442;
  l_fptr_2* _443;
  uint32_t _444;
  uint8_t _445;
  uint8_t* _446;
  uint8_t* _447;
  uint32_t _448;
  uint32_t _448__PHI_TEMPORARY;
  struct l_struct_struct_OC_database_file* _449;
  l_fptr_3* _450;
  uint32_t _451;
  uint32_t _452;
  uint32_t _452__PHI_TEMPORARY;
  uint32_t _453;
  uint32_t _453__PHI_TEMPORARY;
  uint32_t _454;
  uint32_t _454__PHI_TEMPORARY;
  uint16_t _455;
  uint16_t _456;
  uint32_t _457;
  uint32_t _458;
  uint32_t _459;
  uint32_t _459__PHI_TEMPORARY;
  uint8_t* _460;
  uint32_t _461;
  uint32_t _462;
  uint32_t _462__PHI_TEMPORARY;

  _419 = ((uint8_t*)(&_417));
  _420 = ((uint8_t*)(&_418));
  _421 = *((l_fptr_1***)(&dbf_file));
  _422 = *_421;
  _423 =  /*tail*/ _422();
  if ((((_423 == 0u)&1))) {
    _462__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _463;
  } else {
    goto _464;
  }

_464:
  _424 = dbf_file;
  _425 = *((&_424->field2));
  _426 = ((uint32_t)(uint8_t)_415);
  _427 = _425(_419, 32, _426);
  if ((((_427 == 32u)&1))) {
    goto _465;
  } else {
    _448__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _466;
  }

_465:
  _428 = (&_417.field1);
  _429 = (&_417.field0);
  _430 = ((uint8_t*)_428);
  _431 = (&_417.field6);
  _432__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _467;

  do {     /* Syntactic loop '' to make GCC happy */
_467:
  _432 = _432__PHI_TEMPORARY;
  goto _468;

  do {     /* Syntactic loop '' to make GCC happy */
_468:
  _433 = *_428;
  if ((((_433 == ((uint16_t)-1))&1))) {
    goto _469;
  } else {
    goto _470;
  }

_470:
  _437 = *_429;
  _438 = chip_crc16(_430, 30);
  if ((((_437 == _438)&1))) {
    goto _471;
  } else {
    goto _469;
  }

_471:
  switch (_416) {
  default:
    goto _472;
  case ((uint8_t)1):
    goto _473;
  case ((uint8_t)2):
    goto _474;
  }

_474:
  _445 = *_431;
  if (((((llvm_and_u8(_445, 3)) == ((uint8_t)0))&1))) {
    goto _469;
  } else {
    goto _475;
  }

_473:
  _439 = *_431;
  if (((((llvm_and_u8(_439, 48)) == ((uint8_t)0))&1))) {
    goto _469;
  } else {
    goto _476;
  }

_469:
  _434 = dbf_file;
  _435 = *((&_434->field2));
  _436 = _435(_419, 32, _426);
  if ((((_436 == 32u)&1))) {
    goto _468;
  } else {
    goto _477;
  }

  } while (1); /* end of syntactic loop '' */
_475:
  _446 = memcpy((((uint8_t*)((&_418.array[((int32_t)_432)])))), _419, 32);
  goto _478;

_476:
  _440 = memcpy((((uint8_t*)((&_418.array[((int32_t)_432)])))), _419, 32);
  goto _478;

_472:
  _447 = memcpy((((uint8_t*)((&_418.array[((int32_t)_432)])))), _419, 32);
  goto _478;

_478:
  _441 = llvm_add_u32(_432, 1);
  _442 = dbf_file;
  _443 = *((&_442->field2));
  _444 = _443(_419, 32, _426);
  if ((((_444 == 32u)&1))) {
    _432__PHI_TEMPORARY = _441;   /* for PHI node */
    goto _467;
  } else {
    goto _479;
  }

  } while (1); /* end of syntactic loop '' */
_477:
  _448__PHI_TEMPORARY = _432;   /* for PHI node */
  goto _466;

_479:
  _448__PHI_TEMPORARY = _441;   /* for PHI node */
  goto _466;

_466:
  _448 = _448__PHI_TEMPORARY;
  _449 = dbf_file;
  _450 = *(((l_fptr_3**)((&_449->field1))));
  _450();
  _451 = llvm_select_u32((((((int32_t)_448) < ((int32_t)_414))&1)), _448, _414);
  if ((((((int32_t)_451) > ((int32_t)0u))&1))) {
    goto _480;
  } else {
    _462__PHI_TEMPORARY = _451;   /* for PHI node */
    goto _463;
  }

_480:
  _452__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _481;

  do {     /* Syntactic loop '' to make GCC happy */
_481:
  _452 = _452__PHI_TEMPORARY;
  if ((((((int32_t)_448) > ((int32_t)0u))&1))) {
    goto _482;
  } else {
    _459__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _483;
  }

_482:
  _453__PHI_TEMPORARY = 0;   /* for PHI node */
  _454__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _484;

  do {     /* Syntactic loop '' to make GCC happy */
_484:
  _453 = _453__PHI_TEMPORARY;
  _454 = _454__PHI_TEMPORARY;
  _455 = __UNALIGNED_LOAD__(uint16_t, 1, ((&_418.array[((int32_t)_453)].field1)));
  _456 = __UNALIGNED_LOAD__(uint16_t, 1, ((&_418.array[((int32_t)_454)].field1)));
  _457 = llvm_select_u32((((((uint16_t)_455) < ((uint16_t)_456))&1)), _454, _453);
  _458 = llvm_add_u32(_454, 1);
  if ((((_458 == _448)&1))) {
    goto _485;
  } else {
    _453__PHI_TEMPORARY = _457;   /* for PHI node */
    _454__PHI_TEMPORARY = _458;   /* for PHI node */
    goto _484;
  }

  } while (1); /* end of syntactic loop '' */
_485:
  _459__PHI_TEMPORARY = _457;   /* for PHI node */
  goto _483;

_483:
  _459 = _459__PHI_TEMPORARY;
  _460 = memcpy((((uint8_t*)((&_413[((int32_t)_452)])))), (((uint8_t*)((&_418.array[((int32_t)_459)])))), 32);
  __UNALIGNED_LOAD__(uint16_t, 1, ((&_418.array[((int32_t)_459)].field1))) = 0;
  _461 = llvm_add_u32(_452, 1);
  if ((((((int32_t)_461) < ((int32_t)_451))&1))) {
    _452__PHI_TEMPORARY = _461;   /* for PHI node */
    goto _481;
  } else {
    goto _486;
  }

  } while (1); /* end of syntactic loop '' */
_486:
  _462__PHI_TEMPORARY = _451;   /* for PHI node */
  goto _463;

_463:
  _462 = _462__PHI_TEMPORARY;
  return _462;
}


static uint32_t get_last_database(struct l_struct_struct_OC__remote_database* _487, uint8_t _488) {
  struct l_struct_struct_OC__remote_database _489;    /* Address-exposed local */
  uint8_t* _490;
  l_fptr_1** _491;
  l_fptr_1* _492;
  uint32_t _493;
  struct l_struct_struct_OC_database_file* _494;
  l_fptr_2* _495;
  uint32_t _496;
  uint32_t _497;
  uint16_t* _498;
  uint16_t* _499;
  uint8_t* _500;
  uint8_t* _501;
  uint32_t _502;
  uint32_t _502__PHI_TEMPORARY;
  uint16_t _503;
  struct l_struct_struct_OC_database_file* _504;
  l_fptr_2* _505;
  uint32_t _506;
  uint16_t _507;
  uint16_t _508;
  uint16_t _509;
  uint32_t _510;
  uint8_t* _511;
  uint32_t _512;
  uint32_t _512__PHI_TEMPORARY;
  uint32_t _513;
  uint32_t _513__PHI_TEMPORARY;
  struct l_struct_struct_OC_database_file* _514;
  l_fptr_2* _515;
  uint32_t _516;
  uint16_t _517;
  uint16_t _518;
  uint16_t _519;
  uint32_t _520;
  uint8_t* _521;
  uint32_t _522;
  uint32_t _522__PHI_TEMPORARY;
  struct l_struct_struct_OC_database_file* _523;
  l_fptr_3* _524;
  uint32_t _525;
  uint32_t _525__PHI_TEMPORARY;

  _490 = ((uint8_t*)(&_489));
  _491 = *((l_fptr_1***)(&dbf_file));
  _492 = *_491;
  _493 =  /*tail*/ _492();
  if ((((_493 == 0u)&1))) {
    _525__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _526;
  } else {
    goto _527;
  }

_527:
  _494 = dbf_file;
  _495 = *((&_494->field2));
  _496 = ((uint32_t)(uint8_t)_488);
  _497 = _495(_490, 32, _496);
  if ((((_497 == 32u)&1))) {
    goto _528;
  } else {
    _522__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _529;
  }

_528:
  _498 = (&_489.field1);
  _499 = (&_489.field0);
  _500 = ((uint8_t*)_498);
  _501 = ((uint8_t*)_487);
  _502__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _530;

  do {     /* Syntactic loop '' to make GCC happy */
_530:
  _502 = _502__PHI_TEMPORARY;
  goto _531;

  do {     /* Syntactic loop '' to make GCC happy */
_531:
  _503 = *_498;
  if ((((_503 == ((uint16_t)-1))&1))) {
    goto _532;
  } else {
    goto _533;
  }

_533:
  _507 = *_499;
  _508 = chip_crc16(_500, 30);
  if ((((_507 == _508)&1))) {
    goto _534;
  } else {
    goto _532;
  }

_532:
  _504 = dbf_file;
  _505 = *((&_504->field2));
  _506 = _505(_490, 32, _496);
  if ((((_506 == 32u)&1))) {
    goto _531;
  } else {
    goto _535;
  }

  } while (1); /* end of syntactic loop '' */
_534:
  _509 = *_498;
  _510 = ((uint32_t)(uint16_t)_509);
  if ((((((int32_t)_502) < ((int32_t)_510))&1))) {
    goto _536;
  } else {
    _512__PHI_TEMPORARY = _502;   /* for PHI node */
    goto _537;
  }

_536:
  _511 = memcpy(_501, _490, 32);
  _512__PHI_TEMPORARY = _510;   /* for PHI node */
  goto _537;

_537:
  _512 = _512__PHI_TEMPORARY;
  if ((((_509 == ((uint16_t)-1))&1))) {
    _513__PHI_TEMPORARY = _512;   /* for PHI node */
    goto _538;
  } else {
    goto _539;
  }

_539:
  _517 = *_499;
  _518 = chip_crc16(_500, 30);
  if ((((_517 == _518)&1))) {
    goto _540;
  } else {
    _513__PHI_TEMPORARY = _512;   /* for PHI node */
    goto _538;
  }

_540:
  _519 = *_498;
  _520 = ((uint32_t)(uint16_t)_519);
  if ((((((int32_t)_512) < ((int32_t)_520))&1))) {
    goto _541;
  } else {
    _513__PHI_TEMPORARY = _512;   /* for PHI node */
    goto _538;
  }

_541:
  _521 = memcpy(_501, _490, 32);
  _513__PHI_TEMPORARY = _520;   /* for PHI node */
  goto _538;

_538:
  _513 = _513__PHI_TEMPORARY;
  _514 = dbf_file;
  _515 = *((&_514->field2));
  _516 = _515(_490, 32, _496);
  if ((((_516 == 32u)&1))) {
    _502__PHI_TEMPORARY = _513;   /* for PHI node */
    goto _530;
  } else {
    goto _542;
  }

  } while (1); /* end of syntactic loop '' */
_535:
  _522__PHI_TEMPORARY = _502;   /* for PHI node */
  goto _529;

_542:
  _522__PHI_TEMPORARY = _513;   /* for PHI node */
  goto _529;

_529:
  _522 = _522__PHI_TEMPORARY;
  _523 = dbf_file;
  _524 = *(((l_fptr_3**)((&_523->field1))));
  _524();
  _525__PHI_TEMPORARY = _522;   /* for PHI node */
  goto _526;

_526:
  _525 = _525__PHI_TEMPORARY;
  return _525;
}


uint8_t restore_remote_device_info_profile(struct l_array_6_uint8_t* _543, uint8_t _544, uint8_t _545, uint8_t _546) {
  struct l_struct_struct_OC__remote_database _547;    /* Address-exposed local */
  uint8_t* _548;
  uint32_t _549;
  uint8_t* _550;

  _548 = ((uint8_t*)(&_547));
  _549 = get_last_N_database((&_547), (((uint32_t)(uint8_t)_544)), _545, _546);
  _550 = memcpy(((&(*_543).array[((int32_t)0)])), ((&_547.field8.array[((int32_t)0)])), 6);
  return (((uint8_t)_549));
}

