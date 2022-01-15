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
struct l_struct_struct_OC___spinlock;
struct l_struct_struct_OC__cbuffer;
struct l_struct_struct_OC_user_send_head_t;
struct l_struct_struct_OC_server_ccc_cfg_t;
struct l_struct_struct_OC_dev_hdl_t;
struct l_struct_struct_OC_att_ctl_t;

/* Function definitions */
typedef void l_fptr_1(void);


/* Types Definitions */
struct l_struct_struct_OC___spinlock {
  uint32_t field0;
};
struct l_struct_struct_OC__cbuffer {
  uint8_t* field0;
  uint8_t* field1;
  uint8_t* field2;
  uint8_t* field3;
  uint8_t* field4;
  uint32_t field5;
  uint32_t field6;
  uint32_t field7;
  struct l_struct_struct_OC___spinlock field8;
};
struct l_struct_struct_OC_user_send_head_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
};
struct l_struct_struct_OC_server_ccc_cfg_t {
  uint16_t field0;
  uint16_t field1;
};
struct l_array_24_struct_AC_l_struct_struct_OC_server_ccc_cfg_t {
  struct l_struct_struct_OC_server_ccc_cfg_t array[24];
};
struct l_struct_struct_OC_dev_hdl_t {
  uint16_t field0;
  uint16_t field1;
};
struct l_array_8_struct_AC_l_struct_struct_OC_dev_hdl_t {
  struct l_struct_struct_OC_dev_hdl_t array[8];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_att_ctl_t {
  struct l_struct_struct_OC__cbuffer field0;
  struct l_struct_struct_OC_user_send_head_t field1;
  struct l_array_24_struct_AC_l_struct_struct_OC_server_ccc_cfg_t field2;
  struct l_array_8_struct_AC_l_struct_struct_OC_dev_hdl_t field3;
  uint8_t* field4;
  uint16_t field5;
  uint8_t field6;
  struct l_array_6_uint8_t field7;
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_103_uint8_t {
  uint8_t array[103];
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};

/* External Global Variable Declarations */
extern uint8_t ble_debug_enable;
extern uint32_t config_asser;

/* Function Declarations */
void att_ccc_config_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_set_ccc_config(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t att_get_ccc_config(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void multi_att_ccc_config_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void multi_att_set_ccc_config(uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t multi_att_get_ccc_config(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t multi_att_clear_ccc_config(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_request_can_send_now_event(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_ble_gatt_role(void);
void att_server_request_can_send_now_event(uint16_t);
void gatt_client_request_can_send_now_event(uint16_t);
uint32_t user_data_cbuf_is_write_able(uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void local_irq_disable(int, ...);
uint32_t cbuf_get_data_size(struct l_struct_struct_OC__cbuffer*);
void local_irq_enable(int, ...);
uint32_t user_data_att_send(uint16_t, uint16_t, uint8_t*, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint8_t check_le_pakcet_sent_finish_flag(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hci_le_get_acl_packet_num(uint16_t);
uint8_t check_le_conn_disconnet_flag(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t hci_le_get_connect_flag(uint16_t);
void att_send_schedule(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t att_operation_cmd_send(uint16_t, uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void att_send_set_mtu_size(uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_send_need_bufszie(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_need_ctrl_ramsize(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void att_set_default_conn_handle(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t att_get_default_conn_handle(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void att_send_init(uint16_t, uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void cbuf_init(struct l_struct_struct_OC__cbuffer*, uint8_t*, uint32_t);
uint32_t att_set_conn_handle(uint16_t, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_send_check_multi_dev(uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t cbuf_write(struct l_struct_struct_OC__cbuffer*, uint8_t*, uint32_t);
uint32_t att_server_notify(uint16_t, uint16_t, uint8_t*, uint16_t);
uint32_t att_server_indicate(uint16_t, uint16_t, uint8_t*, uint16_t);
uint8_t gatt_client_write_value_of_characteristic_without_response(uint16_t, uint16_t, uint16_t, uint8_t*);
uint8_t gatt_client_write_value_of_characteristic(l_fptr_2*, uint16_t, uint16_t, uint16_t, uint8_t*);
void user_client_gatt_event(uint8_t, uint16_t, uint8_t*, uint16_t);
uint8_t gatt_client_read_value_of_characteristic_using_value_handle(l_fptr_2*, uint16_t, uint16_t);
uint8_t gatt_client_read_long_value_of_characteristic_using_value_handle(l_fptr_2*, uint16_t, uint16_t);
uint32_t cbuf_read(struct l_struct_struct_OC__cbuffer*, uint8_t*, uint32_t);
void p33_soft_reset(void);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_att_ctl_t* att_s_hdl;
static struct l_array_40_uint8_t _OC_str_OC_1 = { "[ble-info] :att_send: %04x,%04x,%d,%d\n\n" };
static struct l_array_27_uint8_t _OC_str_OC_2 = { "[ble-info] :mtu_size: %d\n\n" };
static struct l_array_33_uint8_t _OC_str_OC_3 = { "ble_err_s:wlen=%d,err=%d,len=%d\n" };
static struct l_array_40_uint8_t _OC_str_OC_4 = { "[ble-info] :att_payload_size[%d]= %d \n\n" };
static struct l_array_32_uint8_t _OC_str_OC_5 = { "att_send need_size >= %d+%d+%d\n" };
static struct l_array_40_uint8_t _OC_str_OC_6 = { "buf_size not enough!!!,need_size >= %d\n" };
static struct l_array_17_uint8_t _OC_str_OC_7 = { "file:%s, line:%d" };
static struct l_array_103_uint8_t _OC_str_OC_8 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/att_send.c" };
static struct l_array_17_uint8_t _OC_str_OC_9 = { "ASSERT-FAILD: 0 " };
static struct l_array_50_uint8_t _OC_str_OC_10 = { "local_sendbuf_size not enough!!!,need_size >= %d\n" };
static struct l_array_33_uint8_t _OC_str_OC_11 = { "[ble-info] :att_cbuf_size = %d\n\n" };
static struct l_array_45_uint8_t _OC_str_OC_12 = { "[ble-info] :att_set_conn_handle:%04x,%d,%d\n\n" };
static struct l_array_31_uint8_t _OC_str_OC_13 = { "max support devices is %d !!!\n" };
static struct l_array_40_uint8_t _OC_str_OC_14 = { "[ble-info] :cmd_send: %04x,%04x,%d,%d\n\n" };
static struct l_array_31_uint8_t _OC_str_OC_15 = { "[ble-info] :-unknow_ret: %2x\n\n" };
static struct l_array_7_uint8_t str = { "len=0?" };


/* LLVM Intrinsic Builtin Function Bodies */
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
static __forceinline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
  uint16_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint16_t llvm_sub_u16(uint16_t a, uint16_t b) {
  uint16_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_udiv_u32(uint32_t a, uint32_t b) {
  uint32_t r = a / b;
  return r;
}
static __forceinline uint32_t llvm_urem_u32(uint32_t a, uint32_t b) {
  uint32_t r = a % b;
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
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

void att_ccc_config_init(void) {
  struct l_struct_struct_OC_att_ctl_t* _1;
  uint8_t* _2;

  _1 = att_s_hdl;
  if ((((_1 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _3;
  } else {
    goto _4;
  }

_4:
  _2 = memset((((uint8_t*)((&_1->field2.array[((int32_t)0)])))), 0, 96);
  goto _3;

_3:
  return;
}


void att_set_ccc_config(uint16_t _5, uint16_t _6) {
  struct l_struct_struct_OC_att_ctl_t* _7;
  struct l_struct_struct_OC_server_ccc_cfg_t* _8;
  struct l_struct_struct_OC_server_ccc_cfg_t* _9;
  struct l_struct_struct_OC_server_ccc_cfg_t* _9__PHI_TEMPORARY;
  uint32_t _10;
  uint32_t _10__PHI_TEMPORARY;
  uint16_t* _11;
  uint16_t _12;
  uint16_t* _13;
  uint16_t _14;
  uint16_t* _15;
  uint16_t _16;
  struct l_struct_struct_OC_server_ccc_cfg_t* _17;
  uint32_t _18;
  struct l_struct_struct_OC_server_ccc_cfg_t* _19;
  struct l_struct_struct_OC_server_ccc_cfg_t* _19__PHI_TEMPORARY;
  uint32_t _20;
  uint32_t _20__PHI_TEMPORARY;
  uint16_t* _21;
  uint16_t _22;
  uint16_t* _23;
  uint16_t _24;
  struct l_struct_struct_OC_server_ccc_cfg_t* _25;
  uint32_t _26;

  _7 = att_s_hdl;
  if ((((_7 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _27;
  } else {
    goto _28;
  }

_28:
  _8 = (&_7->field2.array[((int32_t)0)]);
  _9__PHI_TEMPORARY = _8;   /* for PHI node */
  _10__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _29;

  do {     /* Syntactic loop '' to make GCC happy */
_29:
  _9 = _9__PHI_TEMPORARY;
  _10 = _10__PHI_TEMPORARY;
  _11 = (&_9->field0);
  _12 = *_11;
  if ((((_12 == _5)&1))) {
    goto _30;
  } else {
    goto _31;
  }

_31:
  _17 = (&_9[((int32_t)1)]);
  _18 = llvm_add_u32(_10, 1);
  if ((((((int32_t)_18) < ((int32_t)24u))&1))) {
    _9__PHI_TEMPORARY = _17;   /* for PHI node */
    _10__PHI_TEMPORARY = _18;   /* for PHI node */
    goto _29;
  } else {
    goto _32;
  }

  } while (1); /* end of syntactic loop '' */
_30:
  if ((((_6 == ((uint16_t)0))&1))) {
    goto _33;
  } else {
    goto _34;
  }

_34:
  _13 = (&_9->field1);
  _14 = *_13;
  *_13 = (llvm_or_u16((llvm_and_u16(_14, -16)), (llvm_and_u16(_6, 15))));
  goto _27;

_33:
  *_11 = 0;
  _15 = (&_9->field1);
  _16 = *_15;
  *_15 = (llvm_and_u16(_16, -16));
  goto _27;

_32:
  if ((((_6 == ((uint16_t)0))&1))) {
    goto _27;
  } else {
    goto _35;
  }

_35:
  _19__PHI_TEMPORARY = _8;   /* for PHI node */
  _20__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _36;

  do {     /* Syntactic loop '' to make GCC happy */
_36:
  _19 = _19__PHI_TEMPORARY;
  _20 = _20__PHI_TEMPORARY;
  _21 = (&_19->field0);
  _22 = *_21;
  if ((((_22 == ((uint16_t)0))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
  _25 = (&_19[((int32_t)1)]);
  _26 = llvm_add_u32(_20, 1);
  if ((((((int32_t)_26) < ((int32_t)24u))&1))) {
    _19__PHI_TEMPORARY = _25;   /* for PHI node */
    _20__PHI_TEMPORARY = _26;   /* for PHI node */
    goto _36;
  } else {
    goto _39;
  }

  } while (1); /* end of syntactic loop '' */
_37:
  *_21 = _5;
  _23 = (&_19->field1);
  _24 = *_23;
  *_23 = (llvm_or_u16((llvm_and_u16(_24, -16)), (llvm_and_u16(_6, 15))));
  goto _27;

_39:
  goto _27;

_27:
  return;
}


uint16_t att_get_ccc_config(uint16_t _40) {
  struct l_struct_struct_OC_att_ctl_t* _41;
  struct l_struct_struct_OC_server_ccc_cfg_t* _42;
  struct l_struct_struct_OC_server_ccc_cfg_t* _43;
  struct l_struct_struct_OC_server_ccc_cfg_t* _43__PHI_TEMPORARY;
  uint32_t _44;
  uint32_t _44__PHI_TEMPORARY;
  uint16_t _45;
  uint16_t _46;
  uint16_t _47;
  struct l_struct_struct_OC_server_ccc_cfg_t* _48;
  uint32_t _49;
  uint16_t _50;
  uint16_t _50__PHI_TEMPORARY;

  _41 = att_s_hdl;
  if ((((_41 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _50__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _51;
  } else {
    goto _52;
  }

_52:
  _42 = (&_41->field2.array[((int32_t)0)]);
  _43__PHI_TEMPORARY = _42;   /* for PHI node */
  _44__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _53;

  do {     /* Syntactic loop '' to make GCC happy */
_53:
  _43 = _43__PHI_TEMPORARY;
  _44 = _44__PHI_TEMPORARY;
  _45 = *((&_43->field0));
  if ((((_45 == _40)&1))) {
    goto _54;
  } else {
    goto _55;
  }

_55:
  _48 = (&_43[((int32_t)1)]);
  _49 = llvm_add_u32(_44, 1);
  if ((((((int32_t)_49) < ((int32_t)24u))&1))) {
    _43__PHI_TEMPORARY = _48;   /* for PHI node */
    _44__PHI_TEMPORARY = _49;   /* for PHI node */
    goto _53;
  } else {
    goto _56;
  }

  } while (1); /* end of syntactic loop '' */
_54:
  _46 = *((&_43->field1));
  _47 = llvm_and_u16(_46, 15);
  _50__PHI_TEMPORARY = _47;   /* for PHI node */
  goto _51;

_56:
  _50__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _51;

_51:
  _50 = _50__PHI_TEMPORARY;
  return _50;
}


void multi_att_ccc_config_init(void) {
  struct l_struct_struct_OC_att_ctl_t* _57;
  uint8_t* _58;

  _57 = att_s_hdl;
  if ((((_57 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _59;
  } else {
    goto _60;
  }

_60:
  _58 = memset((((uint8_t*)((&_57->field2.array[((int32_t)0)])))), 0, 96);
  goto _59;

_59:
  return;
}


void multi_att_set_ccc_config(uint16_t _61, uint16_t _62, uint16_t _63) {
  struct l_struct_struct_OC_att_ctl_t* _64;
  struct l_struct_struct_OC_server_ccc_cfg_t* _65;
  struct l_struct_struct_OC_server_ccc_cfg_t* _66;
  struct l_struct_struct_OC_server_ccc_cfg_t* _66__PHI_TEMPORARY;
  uint32_t _67;
  uint32_t _67__PHI_TEMPORARY;
  uint16_t* _68;
  uint16_t _69;
  uint16_t* _70;
  uint16_t _71;
  uint16_t _72;
  uint16_t _73;
  uint16_t _73__PHI_TEMPORARY;
  struct l_struct_struct_OC_server_ccc_cfg_t* _74;
  uint32_t _75;
  struct l_struct_struct_OC_server_ccc_cfg_t* _76;
  struct l_struct_struct_OC_server_ccc_cfg_t* _76__PHI_TEMPORARY;
  uint32_t _77;
  uint32_t _77__PHI_TEMPORARY;
  uint16_t* _78;
  uint16_t _79;
  struct l_struct_struct_OC_server_ccc_cfg_t* _80;
  uint32_t _81;

  _64 = att_s_hdl;
  if ((((_64 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _82;
  } else {
    goto _83;
  }

_83:
  _65 = (&_64->field2.array[((int32_t)0)]);
  _66__PHI_TEMPORARY = _65;   /* for PHI node */
  _67__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _84;

  do {     /* Syntactic loop '' to make GCC happy */
_84:
  _66 = _66__PHI_TEMPORARY;
  _67 = _67__PHI_TEMPORARY;
  _68 = (&_66->field1);
  _69 = *_68;
  if (((((llvm_lshr_u16(_69, 4)) == _61)&1))) {
    goto _85;
  } else {
    goto _86;
  }

_85:
  _70 = (&_66->field0);
  _71 = *_70;
  if ((((_71 == _62)&1))) {
    goto _87;
  } else {
    goto _86;
  }

_86:
  _74 = (&_66[((int32_t)1)]);
  _75 = llvm_add_u32(_67, 1);
  if ((((((int32_t)_75) < ((int32_t)24u))&1))) {
    _66__PHI_TEMPORARY = _74;   /* for PHI node */
    _67__PHI_TEMPORARY = _75;   /* for PHI node */
    goto _84;
  } else {
    goto _88;
  }

  } while (1); /* end of syntactic loop '' */
_87:
  if ((((_63 == ((uint16_t)0))&1))) {
    goto _89;
  } else {
    goto _90;
  }

_90:
  _72 = llvm_or_u16((llvm_and_u16(_69, -16)), (llvm_and_u16(_63, 15)));
  _73__PHI_TEMPORARY = _72;   /* for PHI node */
  goto _91;

_89:
  *_70 = 0;
  _73__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _91;

_91:
  _73 = _73__PHI_TEMPORARY;
  *_68 = _73;
  goto _82;

_88:
  if ((((_63 == ((uint16_t)0))&1))) {
    goto _82;
  } else {
    goto _92;
  }

_92:
  _76__PHI_TEMPORARY = _65;   /* for PHI node */
  _77__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _93;

  do {     /* Syntactic loop '' to make GCC happy */
_93:
  _76 = _76__PHI_TEMPORARY;
  _77 = _77__PHI_TEMPORARY;
  _78 = (&_76->field1);
  _79 = *_78;
  if ((((((uint16_t)_79) < ((uint16_t)((uint16_t)16)))&1))) {
    goto _94;
  } else {
    goto _95;
  }

_95:
  _80 = (&_76[((int32_t)1)]);
  _81 = llvm_add_u32(_77, 1);
  if ((((((int32_t)_81) < ((int32_t)24u))&1))) {
    _76__PHI_TEMPORARY = _80;   /* for PHI node */
    _77__PHI_TEMPORARY = _81;   /* for PHI node */
    goto _93;
  } else {
    goto _96;
  }

  } while (1); /* end of syntactic loop '' */
_94:
  *((&_76->field0)) = _62;
  *_78 = (llvm_or_u16((llvm_and_u16(_63, 15)), (llvm_shl_u16(_61, 4))));
  goto _82;

_96:
  goto _82;

_82:
  return;
}


uint16_t multi_att_get_ccc_config(uint16_t _97, uint16_t _98) {
  struct l_struct_struct_OC_att_ctl_t* _99;
  struct l_struct_struct_OC_server_ccc_cfg_t* _100;
  struct l_struct_struct_OC_server_ccc_cfg_t* _101;
  struct l_struct_struct_OC_server_ccc_cfg_t* _101__PHI_TEMPORARY;
  uint32_t _102;
  uint32_t _102__PHI_TEMPORARY;
  uint16_t _103;
  uint16_t _104;
  uint16_t _105;
  struct l_struct_struct_OC_server_ccc_cfg_t* _106;
  uint32_t _107;
  uint16_t _108;
  uint16_t _108__PHI_TEMPORARY;

  _99 = att_s_hdl;
  if ((((_99 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _108__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _109;
  } else {
    goto _110;
  }

_110:
  _100 = (&_99->field2.array[((int32_t)0)]);
  _101__PHI_TEMPORARY = _100;   /* for PHI node */
  _102__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _111;

  do {     /* Syntactic loop '' to make GCC happy */
_111:
  _101 = _101__PHI_TEMPORARY;
  _102 = _102__PHI_TEMPORARY;
  _103 = *((&_101->field1));
  if (((((llvm_lshr_u16(_103, 4)) == _97)&1))) {
    goto _112;
  } else {
    goto _113;
  }

_112:
  _104 = *((&_101->field0));
  if ((((_104 == _98)&1))) {
    goto _114;
  } else {
    goto _113;
  }

_113:
  _106 = (&_101[((int32_t)1)]);
  _107 = llvm_add_u32(_102, 1);
  if ((((((int32_t)_107) < ((int32_t)24u))&1))) {
    _101__PHI_TEMPORARY = _106;   /* for PHI node */
    _102__PHI_TEMPORARY = _107;   /* for PHI node */
    goto _111;
  } else {
    goto _115;
  }

  } while (1); /* end of syntactic loop '' */
_114:
  _105 = llvm_and_u16(_103, 15);
  _108__PHI_TEMPORARY = _105;   /* for PHI node */
  goto _109;

_115:
  _108__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _109;

_109:
  _108 = _108__PHI_TEMPORARY;
  return _108;
}


uint32_t multi_att_clear_ccc_config(uint16_t _116) {
  struct l_struct_struct_OC_att_ctl_t* _117;
  struct l_struct_struct_OC_server_ccc_cfg_t* _118;
  struct l_struct_struct_OC_server_ccc_cfg_t* _119;
  struct l_struct_struct_OC_server_ccc_cfg_t* _119__PHI_TEMPORARY;
  uint32_t _120;
  uint32_t _120__PHI_TEMPORARY;
  uint16_t* _121;
  uint16_t _122;
  struct l_struct_struct_OC_server_ccc_cfg_t* _123;
  uint32_t _124;

  _117 = att_s_hdl;
  if ((((_117 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _125;
  } else {
    goto _126;
  }

_126:
  _118 = (&_117->field2.array[((int32_t)0)]);
  _119__PHI_TEMPORARY = _118;   /* for PHI node */
  _120__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _127;

  do {     /* Syntactic loop '' to make GCC happy */
_127:
  _119 = _119__PHI_TEMPORARY;
  _120 = _120__PHI_TEMPORARY;
  _121 = (&_119->field1);
  _122 = *_121;
  if (((((llvm_lshr_u16(_122, 4)) == _116)&1))) {
    goto _128;
  } else {
    goto _129;
  }

_128:
  *((&_119->field0)) = 0;
  *_121 = 0;
  goto _129;

_129:
  _123 = (&_119[((int32_t)1)]);
  _124 = llvm_add_u32(_120, 1);
  if ((((_124 == 24u)&1))) {
    goto _130;
  } else {
    _119__PHI_TEMPORARY = _123;   /* for PHI node */
    _120__PHI_TEMPORARY = _124;   /* for PHI node */
    goto _127;
  }

  } while (1); /* end of syntactic loop '' */
_130:
  goto _125;

_125:
  return 0;
}


void att_request_can_send_now_event(void) {
  struct l_struct_struct_OC_att_ctl_t* _131;
  uint32_t _132;
  uint32_t _132__PHI_TEMPORARY;
  uint16_t _133;
  uint32_t _134;
  uint8_t _135;

  _131 = att_s_hdl;
  if ((((_131 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _136;
  } else {
    goto _137;
  }

_137:
  _132__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _138;

  do {     /* Syntactic loop '' to make GCC happy */
_138:
  _132 = _132__PHI_TEMPORARY;
  _133 = *((&_131->field3.array[((int32_t)_132)].field0));
  _134 = llvm_add_u32(_132, 1);
  if ((((((uint16_t)_133) < ((uint16_t)((uint16_t)64)))&1))) {
    goto _139;
  } else {
    goto _140;
  }

_139:
  if ((((((int32_t)_134) < ((int32_t)8u))&1))) {
    _132__PHI_TEMPORARY = _134;   /* for PHI node */
    goto _138;
  } else {
    goto _141;
  }

  } while (1); /* end of syntactic loop '' */
_140:
  _135 =  /*tail*/ get_ble_gatt_role();
  switch (_135) {
  default:
    goto _136;
  case ((uint8_t)0):
    goto _142;
  case ((uint8_t)1):
    goto _143;
  case ((uint8_t)2):
    goto _144;
  }

_142:
   /*tail*/ att_server_request_can_send_now_event(1);
  goto _136;

_143:
   /*tail*/ gatt_client_request_can_send_now_event(1);
  goto _136;

_144:
   /*tail*/ att_server_request_can_send_now_event(1);
   /*tail*/ gatt_client_request_can_send_now_event(1);
  goto _136;

_141:
  goto _136;

_136:
  return;
}


uint32_t user_data_cbuf_is_write_able(uint16_t _145, uint32_t _146) {
  struct l_struct_struct_OC_att_ctl_t* _147;
  uint32_t _148;
  uint32_t _148__PHI_TEMPORARY;
  uint16_t _149;
  uint32_t _150;
  uint16_t _151;
  uint32_t _152;
  uint32_t _153;
  uint32_t _153__PHI_TEMPORARY;
  struct l_struct_struct_OC_att_ctl_t* _154;
  uint32_t _155;
  uint32_t _156;
  uint32_t _157;
  uint32_t _158;
  uint32_t _159;
  uint32_t _160;
  uint32_t _161;
  uint32_t _162;
  uint32_t _163;
  uint32_t _163__PHI_TEMPORARY;
  uint32_t _164;
  uint32_t _165;
  uint32_t _165__PHI_TEMPORARY;

  _147 = att_s_hdl;
  if ((((_147 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _165__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _166;
  } else {
    goto _167;
  }

_167:
  _148__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _168;

  do {     /* Syntactic loop '' to make GCC happy */
_168:
  _148 = _148__PHI_TEMPORARY;
  _149 = *((&_147->field3.array[((int32_t)_148)].field0));
  if (((((llvm_lshr_u16(_149, 6)) == _145)&1))) {
    goto _169;
  } else {
    goto _170;
  }

_170:
  _150 = llvm_add_u32(_148, 1);
  if ((((((int32_t)_150) < ((int32_t)8u))&1))) {
    _148__PHI_TEMPORARY = _150;   /* for PHI node */
    goto _168;
  } else {
    goto _171;
  }

  } while (1); /* end of syntactic loop '' */
_169:
  if ((((((uint8_t)(((uint8_t)_148))) < ((uint8_t)((uint8_t)8)))&1))) {
    goto _172;
  } else {
    _153__PHI_TEMPORARY = 20;   /* for PHI node */
    goto _173;
  }

_172:
  _151 = *((&_147->field3.array[((int32_t)(_148 & 255))].field1));
  _152 = ((uint32_t)(uint16_t)_151);
  _153__PHI_TEMPORARY = _152;   /* for PHI node */
  goto _173;

_171:
  _153__PHI_TEMPORARY = 20;   /* for PHI node */
  goto _173;

_173:
  _153 = _153__PHI_TEMPORARY;
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  _154 = att_s_hdl;
  _155 = *((&_154->field0.field7));
  _156 =  /*tail*/ cbuf_get_data_size(((&_154->field0)));
  _157 = llvm_sub_u32(_155, _156);
  if ((((((uint32_t)_157) < ((uint32_t)7u))&1))) {
    _163__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _174;
  } else {
    goto _175;
  }

_175:
  _158 = (llvm_add_u32(_153, 6)) & 65535;
  if ((((((uint32_t)_157) < ((uint32_t)_158))&1))) {
    goto _176;
  } else {
    goto _177;
  }

_176:
  _159 = llvm_add_u32(_157, -6);
  _163__PHI_TEMPORARY = _159;   /* for PHI node */
  goto _174;

_177:
  _160 = llvm_mul_u32((llvm_udiv_u32(_157, _158)), _153);
  _161 = llvm_urem_u32(_157, _158);
  if ((((((uint32_t)_161) > ((uint32_t)6u))&1))) {
    goto _178;
  } else {
    _163__PHI_TEMPORARY = _160;   /* for PHI node */
    goto _174;
  }

_178:
  _162 = llvm_add_u32((llvm_add_u32(_161, -6)), _160);
  _163__PHI_TEMPORARY = _162;   /* for PHI node */
  goto _174;

_174:
  _163 = _163__PHI_TEMPORARY;
  _164 = llvm_select_u32((((((uint32_t)_163) < ((uint32_t)_146))&1)), 0, _163);
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
  _165__PHI_TEMPORARY = _164;   /* for PHI node */
  goto _166;

_166:
  _165 = _165__PHI_TEMPORARY;
  return _165;
}


uint32_t user_data_att_send(uint16_t _179, uint16_t _180, uint8_t* _181, uint16_t _182, uint8_t _183) {
  struct l_struct_struct_OC_user_send_head_t _184;    /* Address-exposed local */
  uint8_t* _185;
  struct l_struct_struct_OC_att_ctl_t* _186;
  uint32_t _187;
  uint32_t _188;
  uint16_t _189;
  uint16_t _190;
  uint16_t _191;
  uint16_t _192;
  uint16_t _192__PHI_TEMPORARY;
  uint8_t _193;
  uint32_t _194;
  struct l_struct_struct_OC_att_ctl_t* _195;
  struct l_struct_struct_OC_att_ctl_t* _196;
  struct l_struct_struct_OC_att_ctl_t* _196__PHI_TEMPORARY;
  uint32_t _197;
  uint32_t _197__PHI_TEMPORARY;
  uint16_t _198;
  uint32_t _199;
  uint16_t _200;
  uint16_t _201;
  uint16_t _201__PHI_TEMPORARY;
  uint8_t _202;
  uint32_t _203;
  uint32_t _204;
  uint16_t* _205;
  uint16_t _206;
  uint16_t _206__PHI_TEMPORARY;
  uint16_t _207;
  uint16_t _207__PHI_TEMPORARY;
  uint8_t* _208;
  uint8_t* _208__PHI_TEMPORARY;
  uint16_t _209;
  struct l_struct_struct_OC_att_ctl_t* _210;
  uint32_t _211;
  struct l_struct_struct_OC_att_ctl_t* _212;
  uint16_t _213;
  uint32_t _214;
  uint16_t _215;
  uint32_t _216;
  uint32_t _217;
  uint16_t _218;
  uint8_t* _219;
  uint32_t _220;
  uint32_t _220__PHI_TEMPORARY;
  uint32_t _221;
  uint32_t _221__PHI_TEMPORARY;

  _185 = ((uint8_t*)(&_184));
  _186 = att_s_hdl;
  if ((((_186 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _221__PHI_TEMPORARY = -98;   /* for PHI node */
    goto _222;
  } else {
    goto _223;
  }

_223:
  *((&_184.field0)) = _179;
  *((&_184.field1)) = _180;
  if ((((_182 == ((uint16_t)0))&1))) {
    goto _224;
  } else {
    goto _225;
  }

_224:
  _187 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _221__PHI_TEMPORARY = -95;   /* for PHI node */
  goto _222;

_225:
  _188 = ((uint32_t)(uint8_t)_183);
  if ((((_183 == ((uint8_t)0))&1))) {
    goto _226;
  } else {
    goto _227;
  }

_226:
  _189 =  /*tail*/ att_get_ccc_config((llvm_add_u16(_180, 1)));
  _190 = llvm_shl_u16(_189, 12);
  *((&_184.field2)) = _190;
  if (((((llvm_and_u16(_189, 15)) == ((uint16_t)0))&1))) {
    _221__PHI_TEMPORARY = -93;   /* for PHI node */
    goto _222;
  } else {
    _192__PHI_TEMPORARY = _190;   /* for PHI node */
    goto _228;
  }

_227:
  _191 = llvm_shl_u16((((uint16_t)(uint8_t)_183)), 12);
  *((&_184.field2)) = _191;
  _192__PHI_TEMPORARY = _191;   /* for PHI node */
  goto _228;

_228:
  _192 = _192__PHI_TEMPORARY;
  _193 = ble_debug_enable;
  if (((((llvm_and_u8(_193, 1)) == ((uint8_t)0))&1))) {
    _196__PHI_TEMPORARY = _186;   /* for PHI node */
    goto _229;
  } else {
    goto _230;
  }

_230:
  _194 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), (((uint32_t)(uint16_t)_179)), (((uint32_t)(uint16_t)_180)), (((uint32_t)(uint16_t)_182)), _188);
  _195 = att_s_hdl;
  _196__PHI_TEMPORARY = _195;   /* for PHI node */
  goto _229;

_229:
  _196 = _196__PHI_TEMPORARY;
  _197__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _231;

  do {     /* Syntactic loop '' to make GCC happy */
_231:
  _197 = _197__PHI_TEMPORARY;
  _198 = *((&_196->field3.array[((int32_t)_197)].field0));
  if (((((llvm_lshr_u16(_198, 6)) == _179)&1))) {
    goto _232;
  } else {
    goto _233;
  }

_233:
  _199 = llvm_add_u32(_197, 1);
  if ((((((int32_t)_199) < ((int32_t)8u))&1))) {
    _197__PHI_TEMPORARY = _199;   /* for PHI node */
    goto _231;
  } else {
    goto _234;
  }

  } while (1); /* end of syntactic loop '' */
_232:
  if ((((((uint8_t)(((uint8_t)_197))) < ((uint8_t)((uint8_t)8)))&1))) {
    goto _235;
  } else {
    _201__PHI_TEMPORARY = 20;   /* for PHI node */
    goto _236;
  }

_235:
  _200 = *((&_196->field3.array[((int32_t)(_197 & 255))].field1));
  _201__PHI_TEMPORARY = _200;   /* for PHI node */
  goto _236;

_234:
  _201__PHI_TEMPORARY = 20;   /* for PHI node */
  goto _236;

_236:
  _201 = _201__PHI_TEMPORARY;
  _202 = ble_debug_enable;
  if (((((llvm_and_u8(_202, 1)) == ((uint8_t)0))&1))) {
    goto _237;
  } else {
    goto _238;
  }

_238:
  _203 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (((uint32_t)(uint16_t)_201)));
  goto _237;

_237:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  _204 =  /*tail*/ user_data_cbuf_is_write_able(_179, (((uint32_t)(uint16_t)_182)));
  if ((((_204 == 0u)&1))) {
    _220__PHI_TEMPORARY = -97;   /* for PHI node */
    goto _239;
  } else {
    goto _240;
  }

_240:
  _205 = (&_184.field2);
  _206__PHI_TEMPORARY = _192;   /* for PHI node */
  _207__PHI_TEMPORARY = _182;   /* for PHI node */
  _208__PHI_TEMPORARY = _181;   /* for PHI node */
  goto _241;

  do {     /* Syntactic loop '' to make GCC happy */
_241:
  _206 = _206__PHI_TEMPORARY;
  _207 = _207__PHI_TEMPORARY;
  _208 = _208__PHI_TEMPORARY;
  _209 = llvm_select_u16((((((uint16_t)_207) > ((uint16_t)_201))&1)), _201, _207);
  *_205 = (llvm_or_u16((llvm_and_u16(_206, -4096)), (llvm_and_u16(_209, 4095))));
  _210 = att_s_hdl;
  _211 = cbuf_write(((&_210->field0)), _185, 6);
  _212 = att_s_hdl;
  _213 = *_205;
  _214 = cbuf_write(((&_212->field0)), _208, (((uint32_t)(uint16_t)(llvm_and_u16(_213, 4095)))));
  _215 = *_205;
  _216 = ((uint32_t)(uint16_t)_209);
  if (((((llvm_add_u16((llvm_and_u16(_215, 4095)), 6)) == (((uint16_t)(llvm_add_u32(_214, _211)))))&1))) {
    goto _242;
  } else {
    goto _243;
  }

_242:
  _218 = llvm_sub_u16(_207, _209);
  _219 = (&_208[((int32_t)_216)]);
  if ((((_218 == ((uint16_t)0))&1))) {
    goto _244;
  } else {
    _206__PHI_TEMPORARY = _215;   /* for PHI node */
    _207__PHI_TEMPORARY = _218;   /* for PHI node */
    _208__PHI_TEMPORARY = _219;   /* for PHI node */
    goto _241;
  }

  } while (1); /* end of syntactic loop '' */
_243:
  _217 = printf(((&_OC_str_OC_3.array[((int32_t)0)])), _216, -97, (((uint32_t)(uint16_t)_207)));
  ((l_fptr_1*)(void*)local_irq_enable)();
  _221__PHI_TEMPORARY = -97;   /* for PHI node */
  goto _222;

_244:
  _220__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _239;

_239:
  _220 = _220__PHI_TEMPORARY;
  ((l_fptr_1*)(void*)local_irq_enable)();
  _221__PHI_TEMPORARY = _220;   /* for PHI node */
  goto _222;

_222:
  _221 = _221__PHI_TEMPORARY;
  return _221;
}


uint8_t check_le_pakcet_sent_finish_flag(void) {
  struct l_struct_struct_OC_att_ctl_t* _245;
  uint32_t _246;
  uint32_t _246__PHI_TEMPORARY;
  uint16_t _247;
  uint16_t _248;
  uint32_t _249;
  uint8_t _250;
  uint8_t _251;
  uint8_t _252;
  uint8_t _252__PHI_TEMPORARY;

  _245 = att_s_hdl;
  _246__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _253;

  do {     /* Syntactic loop '' to make GCC happy */
_253:
  _246 = _246__PHI_TEMPORARY;
  _247 = *((&_245->field3.array[((int32_t)_246)].field0));
  _248 = llvm_lshr_u16(_247, 6);
  _249 = llvm_add_u32(_246, 1);
  if ((((_248 == ((uint16_t)0))&1))) {
    goto _254;
  } else {
    goto _255;
  }

_254:
  if ((((((int32_t)_249) < ((int32_t)8u))&1))) {
    _246__PHI_TEMPORARY = _249;   /* for PHI node */
    goto _253;
  } else {
    goto _256;
  }

  } while (1); /* end of syntactic loop '' */
_255:
  _250 =  /*tail*/ hci_le_get_acl_packet_num(_248);
  _251 = ((uint8_t)(bool)(((_250 == ((uint8_t)0))&1)));
  _252__PHI_TEMPORARY = _251;   /* for PHI node */
  goto _257;

_256:
  _252__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _257;

_257:
  _252 = _252__PHI_TEMPORARY;
  return _252;
}


uint8_t check_le_conn_disconnet_flag(void) {
  struct l_struct_struct_OC_att_ctl_t* _258;
  uint32_t _259;
  uint32_t _259__PHI_TEMPORARY;
  uint16_t _260;
  uint16_t _261;
  uint32_t _262;
  uint8_t _263;
  uint8_t _264;
  uint8_t _265;
  uint8_t _265__PHI_TEMPORARY;

  _258 = att_s_hdl;
  if ((((_258 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _265__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _266;
  } else {
    goto _267;
  }

_267:
  _259__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _268;

  do {     /* Syntactic loop '' to make GCC happy */
_268:
  _259 = _259__PHI_TEMPORARY;
  _260 = *((&_258->field3.array[((int32_t)_259)].field0));
  _261 = llvm_lshr_u16(_260, 6);
  _262 = llvm_add_u32(_259, 1);
  if ((((_261 == ((uint16_t)0))&1))) {
    goto _269;
  } else {
    goto _270;
  }

_269:
  if ((((((int32_t)_262) < ((int32_t)8u))&1))) {
    _259__PHI_TEMPORARY = _262;   /* for PHI node */
    goto _268;
  } else {
    goto _271;
  }

  } while (1); /* end of syntactic loop '' */
_270:
  _263 =  /*tail*/ hci_le_get_connect_flag(_261);
  _264 = ((uint8_t)(bool)(((_263 == ((uint8_t)0))&1)));
  _265__PHI_TEMPORARY = _264;   /* for PHI node */
  goto _266;

_271:
  _265__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _266;

_266:
  _265 = _265__PHI_TEMPORARY;
  return _265;
}


void att_send_schedule(void) {
  struct l_struct_struct_OC_user_send_head_t _272;    /* Address-exposed local */
  struct l_struct_struct_OC_att_ctl_t* _273;
  uint8_t _274;
  uint16_t _275;
  uint16_t _276;
  uint16_t _277;
  uint8_t* _278;
  uint32_t _279;
  struct l_struct_struct_OC_att_ctl_t* _280;
  struct l_struct_struct_OC_att_ctl_t* _281;
  struct l_struct_struct_OC_att_ctl_t* _281__PHI_TEMPORARY;
  uint32_t _282;
  uint32_t _282__PHI_TEMPORARY;
  uint32_t _283;
  uint8_t* _284;
  uint16_t* _285;
  uint16_t* _286;
  uint16_t* _287;
  struct l_struct_struct_OC_att_ctl_t* _288;
  uint8_t _289;
  uint32_t _290;
  struct l_struct_struct_OC_att_ctl_t* _291;
  uint32_t _292;
  uint16_t _293;
  uint16_t _294;
  struct l_struct_struct_OC_att_ctl_t* _295;
  uint8_t* _296;
  uint32_t _297;
  uint16_t _298;
  uint16_t _299;
  uint16_t _299__PHI_TEMPORARY;
  uint16_t _300;
  uint16_t _301;
  struct l_struct_struct_OC_att_ctl_t* _302;
  uint8_t* _303;
  uint32_t _304;
  struct l_struct_struct_OC_att_ctl_t* _305;
  uint8_t* _306;

  _273 = att_s_hdl;
  if ((((_273 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _307;
  } else {
    goto _308;
  }

_308:
  _274 = *(volatile uint8_t*)((&_273->field6));
  if ((((_274 == ((uint8_t)0))&1))) {
    _281__PHI_TEMPORARY = _273;   /* for PHI node */
    _282__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _309;
  } else {
    goto _310;
  }

_310:
  _275 = *((&_273->field1.field0));
  _276 = *((&_273->field1.field2));
  _277 = *((&_273->field1.field1));
  _278 = *((&_273->field4));
  _279 =  /*tail*/ att_operation_cmd_send(_275, (((uint8_t)(llvm_lshr_u16(_276, 12)))), _277, _278, (llvm_and_u16(_276, 4095)));
  _280 = att_s_hdl;
  _281__PHI_TEMPORARY = _280;   /* for PHI node */
  _282__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _309;

_309:
  _281 = _281__PHI_TEMPORARY;
  _282 = _282__PHI_TEMPORARY;
  _283 =  /*tail*/ cbuf_get_data_size(((&_281->field0)));
  if ((((_283 == 0u)&1))) {
    goto _311;
  } else {
    goto _312;
  }

_312:
  _284 = ((uint8_t*)(&_272));
  _285 = (&_272.field2);
  _286 = (&_272.field0);
  _287 = (&_272.field1);
  goto _313;

  do {     /* Syntactic loop '' to make GCC happy */
_313:
  _288 = att_s_hdl;
  _289 = *(volatile uint8_t*)((&_288->field6));
  if ((((_289 == ((uint8_t)0))&1))) {
    goto _314;
  } else {
    goto _315;
  }

_314:
  _290 = cbuf_get_data_size(((&_288->field0)));
  if ((((_290 == 0u)&1))) {
    goto _315;
  } else {
    goto _316;
  }

_316:
  _291 = att_s_hdl;
  _292 = cbuf_read(((&_291->field0)), _284, 6);
  _293 = *_285;
  _294 = llvm_and_u16(_293, 4095);
  if ((((_294 == ((uint16_t)0))&1))) {
    _299__PHI_TEMPORARY = _293;   /* for PHI node */
    goto _317;
  } else {
    goto _318;
  }

_318:
  _295 = att_s_hdl;
  _296 = *((&_295->field4));
  _297 = cbuf_read(((&_295->field0)), _296, (((uint32_t)(uint16_t)_294)));
  _298 = *_285;
  _299__PHI_TEMPORARY = _298;   /* for PHI node */
  goto _317;

_317:
  _299 = _299__PHI_TEMPORARY;
  _300 = *_286;
  _301 = *_287;
  _302 = att_s_hdl;
  _303 = *((&_302->field4));
  _304 = att_operation_cmd_send(_300, (((uint8_t)(llvm_lshr_u16(_299, 12)))), _301, _303, (llvm_and_u16(_299, 4095)));
  if ((((_304 == 87u)&1))) {
    goto _319;
  } else {
    goto _313;
  }

  } while (1); /* end of syntactic loop '' */
_319:
  _305 = att_s_hdl;
  _306 = memcpy((((uint8_t*)((&_305->field1)))), _284, 6);
  goto _320;

_315:
  goto _320;

_320:
  goto _321;

_311:
  if ((((_282 == 0u)&1))) {
    goto _307;
  } else {
    goto _321;
  }

_321:
  att_request_can_send_now_event();
  goto _307;

_307:
  return;
}


static uint32_t att_operation_cmd_send(uint16_t _322, uint8_t _323, uint16_t _324, uint8_t* _325, uint16_t _326) {
  struct l_struct_struct_OC_att_ctl_t* _327;
  uint32_t _328;
  uint32_t _328__PHI_TEMPORARY;
  uint16_t _329;
  uint32_t _330;
  uint8_t _331;
  uint32_t _332;
  uint32_t _333;
  uint32_t _334;
  uint8_t _335;
  uint32_t _336;
  uint8_t _337;
  uint32_t _338;
  uint8_t _339;
  uint32_t _340;
  uint8_t _341;
  uint32_t _342;
  uint32_t _343;
  uint32_t _343__PHI_TEMPORARY;
  uint8_t _344;
  uint32_t _345;
  uint8_t _346;
  uint8_t _346__PHI_TEMPORARY;
  uint32_t _347;
  uint32_t _347__PHI_TEMPORARY;
  struct l_struct_struct_OC_att_ctl_t* _348;

  _327 = att_s_hdl;
  _328__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _349;

  do {     /* Syntactic loop '' to make GCC happy */
_349:
  _328 = _328__PHI_TEMPORARY;
  _329 = *((&_327->field3.array[((int32_t)_328)].field0));
  if (((((llvm_lshr_u16(_329, 6)) == _322)&1))) {
    goto _350;
  } else {
    goto _351;
  }

_351:
  _330 = llvm_add_u32(_328, 1);
  if ((((((int32_t)_330) < ((int32_t)8u))&1))) {
    _328__PHI_TEMPORARY = _330;   /* for PHI node */
    goto _349;
  } else {
    goto _352;
  }

  } while (1); /* end of syntactic loop '' */
_350:
  if ((((((uint8_t)(((uint8_t)_328))) > ((uint8_t)((uint8_t)8)))&1))) {
    _346__PHI_TEMPORARY = 0;   /* for PHI node */
    _347__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _353;
  } else {
    goto _354;
  }

_354:
  _331 = ble_debug_enable;
  if (((((llvm_and_u8(_331, 1)) == ((uint8_t)0))&1))) {
    goto _355;
  } else {
    goto _356;
  }

_356:
  _332 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])), (((uint32_t)(uint16_t)_322)), (((uint32_t)(uint16_t)_324)), (((uint32_t)(uint16_t)_326)), (((uint32_t)(uint8_t)_323)));
  goto _355;

_355:
  switch (_323) {
  default:
    _346__PHI_TEMPORARY = 0;   /* for PHI node */
    _347__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _353;
  case ((uint8_t)1):
    goto _357;
  case ((uint8_t)2):
    goto _358;
  case ((uint8_t)6):
    goto _359;
  case ((uint8_t)5):
    goto _360;
  case ((uint8_t)3):
    goto _361;
  case ((uint8_t)4):
    goto _362;
  }

_357:
  _333 =  /*tail*/ att_server_notify(_322, _324, _325, _326);
  _343__PHI_TEMPORARY = _333;   /* for PHI node */
  goto _363;

_358:
  _334 =  /*tail*/ att_server_indicate(_322, _324, _325, _326);
  _343__PHI_TEMPORARY = _334;   /* for PHI node */
  goto _363;

_359:
  _335 =  /*tail*/ gatt_client_write_value_of_characteristic_without_response(_322, _324, _326, _325);
  _336 = ((uint32_t)(uint8_t)_335);
  _343__PHI_TEMPORARY = _336;   /* for PHI node */
  goto _363;

_360:
  _337 =  /*tail*/ gatt_client_write_value_of_characteristic(user_client_gatt_event, _322, _324, _326, _325);
  _338 = ((uint32_t)(uint8_t)_337);
  _343__PHI_TEMPORARY = _338;   /* for PHI node */
  goto _363;

_361:
  _339 =  /*tail*/ gatt_client_read_value_of_characteristic_using_value_handle(user_client_gatt_event, _322, _324);
  _340 = ((uint32_t)(uint8_t)_339);
  _343__PHI_TEMPORARY = _340;   /* for PHI node */
  goto _363;

_362:
  _341 =  /*tail*/ gatt_client_read_long_value_of_characteristic_using_value_handle(user_client_gatt_event, _322, _324);
  _342 = ((uint32_t)(uint8_t)_341);
  _343__PHI_TEMPORARY = _342;   /* for PHI node */
  goto _363;

_363:
  _343 = _343__PHI_TEMPORARY;
  switch (_343) {
  default:
    goto _364;
  case 0u:
    goto _365;
  case 87u:
    _346__PHI_TEMPORARY = 1;   /* for PHI node */
    _347__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _353;
  case 144u:
    _346__PHI_TEMPORARY = 1;   /* for PHI node */
    _347__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _353;
  case 149u:
    _346__PHI_TEMPORARY = 1;   /* for PHI node */
    _347__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _353;
  case 148u:
    _346__PHI_TEMPORARY = 1;   /* for PHI node */
    _347__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _353;
  }

_365:
  _346__PHI_TEMPORARY = 0;   /* for PHI node */
  _347__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _353;

_364:
  _344 = ble_debug_enable;
  if (((((llvm_and_u8(_344, 1)) == ((uint8_t)0))&1))) {
    _346__PHI_TEMPORARY = 1;   /* for PHI node */
    _347__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _353;
  } else {
    goto _366;
  }

_366:
  _345 =  /*tail*/ printf(((&_OC_str_OC_15.array[((int32_t)0)])), _343);
  _346__PHI_TEMPORARY = 1;   /* for PHI node */
  _347__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _353;

_352:
  _346__PHI_TEMPORARY = 0;   /* for PHI node */
  _347__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _353;

_353:
  _346 = _346__PHI_TEMPORARY;
  _347 = _347__PHI_TEMPORARY;
  _348 = att_s_hdl;
  *(volatile uint8_t*)((&_348->field6)) = _346;
  return _347;
}


void att_send_set_mtu_size(uint16_t _367, uint16_t _368) {
  struct l_struct_struct_OC_att_ctl_t* _369;
  uint32_t _370;
  uint32_t _370__PHI_TEMPORARY;
  uint16_t _371;
  uint32_t _372;
  uint32_t _373;
  struct l_struct_struct_OC_att_ctl_t* _374;
  uint16_t _375;
  uint8_t _376;
  struct l_struct_struct_OC_att_ctl_t* _377;
  uint16_t _378;
  uint32_t _379;

  _369 = att_s_hdl;
  if ((((_369 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _380;
  } else {
    goto _381;
  }

_381:
  _370__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _382;

  do {     /* Syntactic loop '' to make GCC happy */
_382:
  _370 = _370__PHI_TEMPORARY;
  _371 = *((&_369->field3.array[((int32_t)_370)].field0));
  if (((((llvm_lshr_u16(_371, 6)) == _367)&1))) {
    goto _383;
  } else {
    goto _384;
  }

_384:
  _372 = llvm_add_u32(_370, 1);
  if ((((((int32_t)_372) < ((int32_t)8u))&1))) {
    _370__PHI_TEMPORARY = _372;   /* for PHI node */
    goto _382;
  } else {
    goto _385;
  }

  } while (1); /* end of syntactic loop '' */
_383:
  _373 = _370 & 255;
  if ((((((uint8_t)(((uint8_t)_370))) > ((uint8_t)((uint8_t)8)))&1))) {
    goto _380;
  } else {
    goto _386;
  }

_386:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  _374 = att_s_hdl;
  _375 = *((&_374->field5));
  *((&_374->field3.array[((int32_t)_373)].field1)) = (llvm_select_u16((((((uint16_t)_375) > ((uint16_t)_368))&1)), _368, _375));
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
  _376 = ble_debug_enable;
  if (((((llvm_and_u8(_376, 1)) == ((uint8_t)0))&1))) {
    goto _380;
  } else {
    goto _387;
  }

_387:
  _377 = att_s_hdl;
  _378 = *((&_377->field3.array[((int32_t)_373)].field1));
  _379 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), _373, (((uint32_t)(uint16_t)_378)));
  goto _380;

_385:
  goto _380;

_380:
  return;
}


uint32_t att_send_need_bufszie(void) {
  uint32_t _388;

  _388 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), 6, 20, 188);
  return 214;
}


uint32_t att_need_ctrl_ramsize(void) {
  return 188;
}


void att_set_default_conn_handle(uint16_t _389) {
  struct l_struct_struct_OC_att_ctl_t* _390;
  uint16_t* _391;
  uint16_t _392;

  _390 = att_s_hdl;
  if ((((_390 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _393;
  } else {
    goto _394;
  }

_394:
  _391 = (&_390->field3.array[((int32_t)0)].field0);
  _392 = *_391;
  *_391 = (llvm_or_u16((llvm_and_u16(_392, 63)), (llvm_shl_u16(_389, 6))));
  goto _393;

_393:
  return;
}


uint16_t att_get_default_conn_handle(void) {
  struct l_struct_struct_OC_att_ctl_t* _395;
  uint32_t _396;
  uint32_t _396__PHI_TEMPORARY;
  uint16_t _397;
  uint16_t _398;
  uint32_t _399;
  uint16_t _400;
  uint16_t _400__PHI_TEMPORARY;
  uint16_t _401;
  uint16_t _401__PHI_TEMPORARY;

  _395 = att_s_hdl;
  if ((((_395 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _401__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _402;
  } else {
    goto _403;
  }

_403:
  _396__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _404;

  do {     /* Syntactic loop '' to make GCC happy */
_404:
  _396 = _396__PHI_TEMPORARY;
  _397 = *((&_395->field3.array[((int32_t)_396)].field0));
  _398 = llvm_lshr_u16(_397, 6);
  _399 = llvm_add_u32(_396, 1);
  if ((((_398 == ((uint16_t)0))&1))) {
    goto _405;
  } else {
    _400__PHI_TEMPORARY = _398;   /* for PHI node */
    goto _406;
  }

_405:
  if ((((((int32_t)_399) < ((int32_t)8u))&1))) {
    _396__PHI_TEMPORARY = _399;   /* for PHI node */
    goto _404;
  } else {
    _400__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _406;
  }

  } while (1); /* end of syntactic loop '' */
_406:
  _400 = _400__PHI_TEMPORARY;
  _401__PHI_TEMPORARY = _400;   /* for PHI node */
  goto _402;

_402:
  _401 = _401__PHI_TEMPORARY;
  return _401;
}


void att_send_init(uint16_t _407, uint8_t* _408, uint16_t _409, uint16_t _410) {
  uint32_t _411;
  uint32_t _412;
  uint32_t _413;
  uint32_t _414;
  uint32_t _415;
  uint32_t _416;
  uint32_t _417;
  uint32_t _418;
  uint32_t _419;
  uint32_t _420;
  uint32_t _421;
  uint32_t _422;
  uint8_t* _423;
  uint8_t* _424;
  struct l_struct_struct_OC_att_ctl_t* _425;
  uint32_t _426;
  uint32_t _426__PHI_TEMPORARY;
  uint16_t* _427;
  uint16_t _428;
  uint32_t _429;
  uint8_t* _430;
  struct l_struct_struct_OC_att_ctl_t* _431;
  uint16_t* _432;
  uint16_t _433;
  uint8_t _434;
  struct l_struct_struct_OC_att_ctl_t* _435;
  uint32_t _436;
  uint32_t _437;

  att_s_hdl = ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0);
  if (((((((_407 != ((uint16_t)0))&1)) & (((_408 != ((uint8_t*)/*NULL*/0))&1)))&1))) {
    goto _438;
  } else {
    goto _439;
  }

_438:
  _411 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), 6, 20, 188);
  _412 = ((uint32_t)(uint16_t)_410);
  _413 = llvm_add_u32(_412, 214);
  if ((((((uint32_t)(((uint32_t)(uint16_t)_409))) < ((uint32_t)_413))&1))) {
    goto _440;
  } else {
    goto _441;
  }

_440:
  _414 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), 6, 20, 188);
  _415 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), _413);
  _416 = config_asser;
  if ((((_416 == 0u)&1))) {
    goto _442;
  } else {
    goto _443;
  }

_443:
  _417 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])), 692);
  _418 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _439;

_442:
   /*tail*/ cpu_reset();
  goto _439;

_441:
  if ((((((uint16_t)_410) < ((uint16_t)((uint16_t)20)))&1))) {
    goto _444;
  } else {
    goto _445;
  }

_444:
  _419 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), 20);
  _420 = config_asser;
  if ((((_420 == 0u)&1))) {
    goto _446;
  } else {
    goto _447;
  }

_447:
  _421 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])), 698);
  _422 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _439;

_446:
   /*tail*/ cpu_reset();
  goto _439;

_445:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  *((uint8_t**)(&att_s_hdl)) = _408;
  _423 = (&_408[((int32_t)188)]);
  _424 = memset(_408, 0, 188);
  *(((uint8_t**)((&_408[((int32_t)172)])))) = _423;
  _425 = ((struct l_struct_struct_OC_att_ctl_t*)_408);
  *(((uint16_t*)((&_408[((int32_t)176)])))) = _410;
  _426__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _448;

  do {     /* Syntactic loop '' to make GCC happy */
_448:
  _426 = _426__PHI_TEMPORARY;
  *((&_425->field3.array[((int32_t)_426)].field1)) = 20;
  _427 = (&_425->field3.array[((int32_t)_426)].field0);
  _428 = *_427;
  *_427 = (llvm_or_u16(_428, 60));
  _429 = llvm_add_u32(_426, 1);
  if ((((_429 == 8u)&1))) {
    goto _449;
  } else {
    _426__PHI_TEMPORARY = _429;   /* for PHI node */
    goto _448;
  }

  } while (1); /* end of syntactic loop '' */
_449:
  _430 = memset(((&_408[((int32_t)42)])), 0, 96);
  *(volatile uint8_t*)((&_408[((int32_t)178)])) = 0;
   /*tail*/ cbuf_init((((struct l_struct_struct_OC__cbuffer*)_408)), ((&_423[((int32_t)_412)])), (((uint32_t)(uint16_t)(llvm_sub_u16((llvm_add_u16(_409, -188)), _410)))));
  if ((((((uint16_t)(llvm_add_u16(_407, -1))) < ((uint16_t)((uint16_t)-4097)))&1))) {
    goto _450;
  } else {
    goto _451;
  }

_450:
  _431 = att_s_hdl;
  if ((((_431 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    goto _451;
  } else {
    goto _452;
  }

_452:
  _432 = (&_431->field3.array[((int32_t)0)].field0);
  _433 = *_432;
  *_432 = (llvm_or_u16((llvm_and_u16(_433, 63)), (llvm_shl_u16(_407, 6))));
  goto _451;

_451:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
  _434 = ble_debug_enable;
  if (((((llvm_and_u8(_434, 1)) == ((uint8_t)0))&1))) {
    goto _439;
  } else {
    goto _453;
  }

_453:
  _435 = att_s_hdl;
  _436 = *((&_435->field0.field7));
  _437 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), _436);
  goto _439;

_439:
  return;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


uint32_t att_set_conn_handle(uint16_t _454, uint32_t _455, uint32_t _456) {
  struct l_struct_struct_OC_att_ctl_t* _457;
  uint8_t _458;
  uint32_t _459;
  struct l_struct_struct_OC_att_ctl_t* _460;
  uint32_t _461;
  uint32_t _461__PHI_TEMPORARY;
  uint16_t* _462;
  uint16_t _463;
  uint32_t _464;
  uint16_t _465;
  uint32_t _466;
  uint32_t _466__PHI_TEMPORARY;
  uint16_t* _467;
  uint16_t _468;
  uint32_t _469;
  uint32_t _470;
  uint32_t _470__PHI_TEMPORARY;
  uint32_t _471;
  uint32_t _471__PHI_TEMPORARY;

  _457 = att_s_hdl;
  if ((((_457 == ((struct l_struct_struct_OC_att_ctl_t*)/*NULL*/0))&1))) {
    _471__PHI_TEMPORARY = -98;   /* for PHI node */
    goto _472;
  } else {
    goto _473;
  }

_473:
  _458 = ble_debug_enable;
  if (((((llvm_and_u8(_458, 1)) == ((uint8_t)0))&1))) {
    goto _474;
  } else {
    goto _475;
  }

_475:
  _459 =  /*tail*/ printf(((&_OC_str_OC_12.array[((int32_t)0)])), (((uint32_t)(uint16_t)_454)), _455, _456);
  goto _474;

_474:
   /*tail*/ ((l_fptr_1*)(void*)local_irq_disable)();
  _460 = att_s_hdl;
  _461__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _476;

  do {     /* Syntactic loop '' to make GCC happy */
_476:
  _461 = _461__PHI_TEMPORARY;
  _462 = (&_460->field3.array[((int32_t)_461)].field0);
  _463 = *_462;
  if (((((((uint32_t)(uint16_t)(llvm_and_u16(_463, 3)))) == _456)&1))) {
    goto _477;
  } else {
    goto _478;
  }

_477:
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_463, 2)), 15)))) == _455)&1))) {
    goto _479;
  } else {
    goto _478;
  }

_478:
  _464 = llvm_add_u32(_461, 1);
  if ((((((int32_t)_464) < ((int32_t)8u))&1))) {
    _461__PHI_TEMPORARY = _464;   /* for PHI node */
    goto _476;
  } else {
    goto _480;
  }

  } while (1); /* end of syntactic loop '' */
_479:
  _465 = llvm_shl_u16(_454, 6);
  *_462 = (llvm_or_u16((llvm_and_u16(_463, 63)), _465));
  *((&_460->field3.array[((int32_t)_455)].field1)) = 20;
  if ((((_454 == ((uint16_t)0))&1))) {
    goto _481;
  } else {
    _470__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _482;
  }

_481:
  *_462 = (llvm_or_u16(_465, 60));
  _470__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _482;

_480:
  if ((((_454 == ((uint16_t)0))&1))) {
    _470__PHI_TEMPORARY = -96;   /* for PHI node */
    goto _482;
  } else {
    goto _483;
  }

_483:
  _466__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _484;

  do {     /* Syntactic loop '' to make GCC happy */
_484:
  _466 = _466__PHI_TEMPORARY;
  _467 = (&_460->field3.array[((int32_t)_466)].field0);
  _468 = *_467;
  if (((((llvm_and_u16(_468, 60)) == ((uint16_t)60))&1))) {
    goto _485;
  } else {
    goto _486;
  }

_486:
  _469 = llvm_add_u32(_466, 1);
  if ((((((int32_t)_469) < ((int32_t)8u))&1))) {
    _466__PHI_TEMPORARY = _469;   /* for PHI node */
    goto _484;
  } else {
    goto _487;
  }

  } while (1); /* end of syntactic loop '' */
_485:
  *((&_460->field3.array[((int32_t)_455)].field1)) = 20;
  *_467 = (llvm_or_u16((llvm_or_u16((llvm_and_u16((llvm_shl_u16((((uint16_t)_455)), 2)), 60)), (llvm_shl_u16(_454, 6)))), (llvm_and_u16((((uint16_t)_456)), 3))));
  _470__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _482;

_487:
  _470__PHI_TEMPORARY = -96;   /* for PHI node */
  goto _482;

_482:
  _470 = _470__PHI_TEMPORARY;
   /*tail*/ ((l_fptr_1*)(void*)local_irq_enable)();
  _471__PHI_TEMPORARY = _470;   /* for PHI node */
  goto _472;

_472:
  _471 = _471__PHI_TEMPORARY;
  return _471;
}


uint32_t att_send_check_multi_dev(uint8_t _488, uint8_t _489) {
  uint32_t _490;
  uint32_t _491;
  uint32_t _492;
  uint32_t _493;
  uint32_t _494;
  uint32_t _494__PHI_TEMPORARY;

  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint8_t)_489)), (((uint32_t)(uint8_t)_488))))) > ((uint32_t)9u))&1))) {
    goto _495;
  } else {
    _494__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _496;
  }

_495:
  _490 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), 8);
  _491 = config_asser;
  if ((((_491 == 0u)&1))) {
    goto _497;
  } else {
    goto _498;
  }

_498:
  _492 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])), 794);
  _493 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  _494__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _496;

_497:
   /*tail*/ cpu_reset();
  _494__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _496;

_496:
  _494 = _494__PHI_TEMPORARY;
  return _494;
}

