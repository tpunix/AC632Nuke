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
struct l_struct_union_OC_anon;
struct l_struct_struct_OC_anon;

/* Function definitions */
typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_64_uint8_t {
  uint8_t array[64];
};
struct l_struct_union_OC_anon {
  struct l_array_64_uint8_t field0;
};
struct l_struct_struct_OC_anon {
  struct l_array_32_uint8_t field0;
  struct l_struct_union_OC_anon field1;
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_55_uint8_t {
  uint8_t array[55];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_62_uint8_t {
  uint8_t array[62];
};
struct l_array_8_uint32_t {
  uint32_t array[8];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};

/* External Global Variable Declarations */
extern uint8_t log_tag_const_i_MESH_HCI;
extern uint8_t log_tag_const_e_MESH_HCI;

/* Function Declarations */
void ll_read_local_p256_public_key(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t clk_get(uint8_t*);
void log_print(uint32_t, uint8_t*, uint8_t*, ...);
uint32_t clk_set(uint8_t*, uint32_t);
uint8_t __hci_emit_le_meta_event(uint8_t, uint8_t*, ...);
void ll_generate_dh_key(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sys_memcpy_swap(uint8_t*, uint8_t*, uint32_t);
uint32_t uECC_valid_public_key(uint8_t*, void*);
void* uECC_secp256r1(void);
uint32_t uECC_shared_secret(uint8_t*, uint8_t*, uint8_t*, void*);
void mesh_hci_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void hci_event_callback_set(l_fptr_1*);
static void lib_hci_event_callback(uint8_t, uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void att_server_register_packet_handler(l_fptr_1*);
uint32_t uECC_make_key(uint8_t*, uint8_t*, void*);
void printf_buf(uint8_t*, uint32_t);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
void mesh_hci_event_callback(uint8_t, uint8_t, uint8_t*, uint16_t);
void notify_remain_data(uint16_t);
uint16_t hci_get_conn_handle(void);
void hci_set_mtu_callback(uint16_t);
void handle_scan_callback(uint8_t*, uint16_t);
uint16_t little_endian_read_16(uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
static struct l_array_4_uint8_t _OC_str = { "sys" };
static struct l_array_36_uint8_t _OC_str_OC_1 = { "[Info]: [MESH_HCI]last_clk=%d MHZ\r\n" };
static struct l_array_40_uint8_t _OC_str_OC_2 = { "[Info]: [MESH_HCI]SYS_SPEED_UP=%d MHZ\r\n" };
static struct l_array_44_uint8_t _OC_str_OC_3 = { "[Info]: [MESH_HCI]SYS_SPEED_RESUME=%d MHZ\r\n" };
static struct l_array_3_uint8_t _OC_str_OC_4 = { "14" };
static struct l_struct_struct_OC_anon ecc;
static struct l_array_30_uint8_t _OC_str_OC_5 = { "[Info]: [MESH_HCI]--func=%s\r\n" };
static struct l_array_19_uint8_t __FUNCTION___OC_ll_generate_dh_key = { "ll_generate_dh_key" };
static struct l_array_54_uint8_t _OC_str_OC_6 = { "<Error>: [MESH_HCI]public key is not valid (ret %d)\r\n" };
static struct l_array_55_uint8_t _OC_str_OC_7 = { "<Error>: [MESH_HCI]ll_generate_dh_key TC_CRYPTO_FAIL\r\n" };
static struct l_array_4_uint8_t _OC_str_OC_8 = { "1LB" };
static struct l_array_14_uint8_t __FUNCTION___OC_generate_keys = { "generate_keys" };
static struct l_array_62_uint8_t _OC_str_OC_9 = { "<Error>: [MESH_HCI]Failed to create ECC public/private pair\r\n" };
static struct l_array_8_uint32_t debug_private_key = { { -851699011, 1486469286u, -348080231, 1258250363u, -770687152, 1959375843u, 2747621176u, 1061811924 } };
static struct l_array_33_uint8_t _OC_str_OC_10 = { "[Info]: [MESH_HCI]ATT MTU = %u\r\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
  uint16_t r = a + b;
  return r;
}


/* Function Bodies */

void ll_read_local_p256_public_key(void) {
  uint32_t _1;
  uint8_t _2;
  uint32_t _3;
  uint32_t _4;
  uint32_t _5;
  bool _6;
  bool _6__PHI_TEMPORARY;
  void* _7;
  uint32_t _8;
  uint8_t _9;
  uint32_t _10;
  uint32_t _11;
  uint32_t _11__PHI_TEMPORARY;
  uint32_t _12;
  uint32_t _13;
  uint8_t _14;

  _1 =  /*tail*/ clk_get(((&_OC_str.array[((int32_t)0)])));
  _2 = log_tag_const_i_MESH_HCI;
  if ((((_2 == ((uint8_t)0))&1))) {
    goto _15;
  } else {
    goto _16;
  }

_15:
  _3 =  /*tail*/ clk_set(((&_OC_str.array[((int32_t)0)])), 120000000);
  _6__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _17;

_16:
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_1.array[((int32_t)0)])), _1);
  _4 =  /*tail*/ clk_set(((&_OC_str.array[((int32_t)0)])), 120000000);
  _5 =  /*tail*/ clk_get(((&_OC_str.array[((int32_t)0)])));
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_2.array[((int32_t)0)])), _5);
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_5.array[((int32_t)0)])), ((&__FUNCTION___OC_generate_keys.array[((int32_t)0)])));
  _6__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _17;

_17:
  _6 = ((_6__PHI_TEMPORARY)&1);
  goto _18;

  do {     /* Syntactic loop '' to make GCC happy */
_18:
  _7 =  /*tail*/ uECC_secp256r1();
  _8 =  /*tail*/ uECC_make_key(((&ecc.field1.field0.array[((int32_t)0)])), ((&ecc.field0.array[((int32_t)0)])), _7);
  if (_6) {
    goto _19;
  } else {
    goto _20;
  }

_20:
   /*tail*/ printf_buf(((&ecc.field0.array[((int32_t)0)])), 32);
   /*tail*/ printf_buf(((&ecc.field1.field0.array[((int32_t)0)])), 64);
  goto _19;

_19:
  if ((((_8 == 0u)&1))) {
    goto _21;
  } else {
    goto _22;
  }

_22:
  _10 =  /*tail*/ memcmp(((&ecc.field0.array[((int32_t)0)])), ((uint8_t*)(&debug_private_key)), 32);
  if ((((_10 == 0u)&1))) {
    goto _18;
  } else {
    goto _23;
  }

  } while (1); /* end of syntactic loop '' */
_21:
  _9 = log_tag_const_e_MESH_HCI;
  if ((((_9 == ((uint8_t)0))&1))) {
    _11__PHI_TEMPORARY = 31;   /* for PHI node */
    goto _24;
  } else {
    goto _25;
  }

_25:
   /*tail*/ log_print(4, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_9.array[((int32_t)0)])));
  _11__PHI_TEMPORARY = 31;   /* for PHI node */
  goto _24;

_23:
  _11__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _24;

_24:
  _11 = _11__PHI_TEMPORARY;
  _12 =  /*tail*/ clk_set(((&_OC_str.array[((int32_t)0)])), _1);
  if ((((_2 == ((uint8_t)0))&1))) {
    goto _26;
  } else {
    goto _27;
  }

_27:
  _13 =  /*tail*/ clk_get(((&_OC_str.array[((int32_t)0)])));
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_3.array[((int32_t)0)])), _13);
  goto _26;

_26:
  _14 =  /*tail*/ __hci_emit_le_meta_event(8, ((&_OC_str_OC_4.array[((int32_t)0)])), _11, ((&ecc.field1.field0.array[((int32_t)0)])));
}


void ll_generate_dh_key(uint8_t* _28, uint32_t _29) {
  struct l_array_32_uint8_t _30;    /* Address-exposed local */
  uint8_t _31;
  uint32_t _32;
  uint32_t _33;
  uint32_t _34;
  uint32_t _35;
  uint32_t _36;
  uint32_t _37;
  uint32_t _37__PHI_TEMPORARY;
  uint8_t* _38;
  void* _39;
  uint32_t _40;
  uint8_t _41;
  uint8_t* _42;
  uint8_t* _43;
  void* _44;
  uint32_t _45;
  uint8_t _46;
  uint8_t* _47;
  uint32_t _48;
  uint32_t _48__PHI_TEMPORARY;
  uint8_t _49;
  uint32_t _50;
  uint32_t _51;

  _31 = log_tag_const_i_MESH_HCI;
  if ((((_31 == ((uint8_t)0))&1))) {
    goto _52;
  } else {
    goto _53;
  }

_52:
  _32 =  /*tail*/ clk_get(((&_OC_str.array[((int32_t)0)])));
  _33 =  /*tail*/ clk_set(((&_OC_str.array[((int32_t)0)])), 120000000);
  _37__PHI_TEMPORARY = _32;   /* for PHI node */
  goto _54;

_53:
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_5.array[((int32_t)0)])), ((&__FUNCTION___OC_ll_generate_dh_key.array[((int32_t)0)])));
  _34 =  /*tail*/ clk_get(((&_OC_str.array[((int32_t)0)])));
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_1.array[((int32_t)0)])), _34);
  _35 =  /*tail*/ clk_set(((&_OC_str.array[((int32_t)0)])), 120000000);
  _36 =  /*tail*/ clk_get(((&_OC_str.array[((int32_t)0)])));
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_2.array[((int32_t)0)])), _36);
  _37__PHI_TEMPORARY = _34;   /* for PHI node */
  goto _54;

_54:
  _37 = _37__PHI_TEMPORARY;
  _38 = (&_30.array[((int32_t)0)]);
   /*tail*/ sys_memcpy_swap(((&ecc.field1.field0.array[((int32_t)0)])), _28, 32);
   /*tail*/ sys_memcpy_swap(((&ecc.field1.field0.array[((int32_t)32)])), ((&_28[((int32_t)32)])), 32);
  _39 =  /*tail*/ uECC_secp256r1();
  _40 =  /*tail*/ uECC_valid_public_key(((&ecc.field1.field0.array[((int32_t)0)])), _39);
  if ((((((int32_t)_40) < ((int32_t)0u))&1))) {
    goto _55;
  } else {
    goto _56;
  }

_55:
  _41 = log_tag_const_e_MESH_HCI;
  if ((((_41 == ((uint8_t)0))&1))) {
    goto _57;
  } else {
    goto _58;
  }

_57:
  _42 = memset(_38, 0, 32);
  _48__PHI_TEMPORARY = 31;   /* for PHI node */
  goto _59;

_58:
   /*tail*/ log_print(4, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_6.array[((int32_t)0)])), _40);
  _43 = memset(_38, 0, 32);
  goto _60;

_56:
  _44 =  /*tail*/ uECC_secp256r1();
  _45 =  /*tail*/ uECC_shared_secret(((&ecc.field1.field0.array[((int32_t)0)])), ((&ecc.field0.array[((int32_t)0)])), ((&ecc.field1.field0.array[((int32_t)0)])), _44);
  if ((((_45 == 0u)&1))) {
    goto _61;
  } else {
    goto _62;
  }

_61:
  _46 = log_tag_const_e_MESH_HCI;
  _47 = memset(_38, 0, 32);
  if ((((_46 == ((uint8_t)0))&1))) {
    _48__PHI_TEMPORARY = 31;   /* for PHI node */
    goto _59;
  } else {
    goto _60;
  }

_60:
   /*tail*/ log_print(4, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_7.array[((int32_t)0)])));
  _48__PHI_TEMPORARY = 31;   /* for PHI node */
  goto _59;

_62:
  sys_memcpy_swap(_38, ((&ecc.field1.field0.array[((int32_t)0)])), 32);
  _48__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _59;

_59:
  _48 = _48__PHI_TEMPORARY;
  _49 = __hci_emit_le_meta_event(9, ((&_OC_str_OC_8.array[((int32_t)0)])), _48, 32, _38);
  _50 = clk_set(((&_OC_str.array[((int32_t)0)])), _37);
  if ((((_31 == ((uint8_t)0))&1))) {
    goto _63;
  } else {
    goto _64;
  }

_64:
  _51 = clk_get(((&_OC_str.array[((int32_t)0)])));
  log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_3.array[((int32_t)0)])), _51);
  goto _63;

_63:
  return;
}


void mesh_hci_init(void) {
   /*tail*/ hci_event_callback_set(((l_fptr_1*)lib_hci_event_callback));
   /*tail*/ att_server_register_packet_handler(((l_fptr_1*)lib_hci_event_callback));
}


static void lib_hci_event_callback(uint8_t _65, uint8_t _66, uint8_t* _67, uint16_t _68) {
  uint8_t _69;
  uint16_t _70;
  uint8_t _71;
  uint16_t _72;

   /*tail*/ mesh_hci_event_callback(_65, _66, _67, _68);
  if ((((_65 == ((uint8_t)4))&1))) {
    goto _73;
  } else {
    goto _74;
  }

_73:
  _69 = *_67;
  switch (_69) {
  default:
    goto _74;
  case ((uint8_t)-73):
    goto _75;
  case ((uint8_t)-75):
    goto _76;
  case ((uint8_t)-30):
    goto _77;
  }

_75:
  _70 =  /*tail*/ hci_get_conn_handle();
   /*tail*/ notify_remain_data(_70);
  goto _74;

_76:
  _71 = log_tag_const_i_MESH_HCI;
  if ((((_71 == ((uint8_t)0))&1))) {
    goto _78;
  } else {
    goto _79;
  }

_79:
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_10.array[((int32_t)0)])), 0);
  goto _78;

_78:
  _72 =  /*tail*/ little_endian_read_16(_67, 4);
   /*tail*/ hci_set_mtu_callback((llvm_add_u16(_72, -3)));
  goto _74;

_77:
   /*tail*/ handle_scan_callback(_67, _68);
  goto _74;

_74:
  return;
}

