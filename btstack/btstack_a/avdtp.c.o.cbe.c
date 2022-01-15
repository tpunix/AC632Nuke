/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifdef _MSC_VER
#define __builtin_unreachable() __assume(0)
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

#ifdef _MSC_VER
#define __MSALIGN__(X) __declspec(align(X))
#else
#define __MSALIGN__(X)
#endif



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC__avdtp_stream;
struct l_struct_struct_OC__avdtp_sep_ind;
struct l_struct_struct_OC__seid_req;
struct l_struct_struct_OC_avdtp_core_data_t;
struct l_struct_struct_OC_avdtp;
struct l_struct_struct_OC__seid_info;
struct l_struct_struct_OC__avdtp_local_sep;
struct l_struct_struct_OC__avdtp_single_header;
struct l_struct_struct_OC__avdtp_send_info;
struct l_struct_struct_OC__seid;
struct l_struct_struct_OC__start_req;
struct l_struct_struct_OC__suspend_req;
struct l_struct_struct_OC__in_buf;

/* Function definitions */
typedef uint8_t l_fptr_2(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t);

typedef uint8_t l_fptr_5(uint8_t, uint8_t*, uint8_t*);

typedef uint8_t l_fptr_6(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*);

typedef uint8_t l_fptr_1(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*);

typedef uint8_t l_fptr_7(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t*);

typedef uint8_t l_fptr_8(int, ...);

typedef void l_fptr_3(struct l_struct_struct_OC__avdtp_local_sep*);

typedef uint8_t l_fptr_9(uint8_t, uint16_t);

typedef void l_fptr_4(void);


/* Types Definitions */
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_114_uint8_t {
  uint8_t array[114];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_43_uint8_t {
  uint8_t array[43];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_63_uint8_t {
  uint8_t array[63];
};
struct l_struct_struct_OC__avdtp_stream {
  uint8_t field0;
};
struct l_struct_struct_OC__avdtp_sep_ind {
  l_fptr_5* field0;
  l_fptr_6* field1;
  l_fptr_2* field2;
  l_fptr_1* field3;
  l_fptr_1* field4;
  l_fptr_7* field5;
  l_fptr_3* field6;
  l_fptr_8* field7;
  l_fptr_9* field8;
};
struct l_array_2_struct_AC_l_struct_struct_OC__avdtp_local_sep {
  struct l_struct_struct_OC__avdtp_local_sep array[2];
};
struct l_struct_struct_OC__seid_req {
  uint8_t field0;
};
struct l_array_8_struct_AC_l_struct_struct_OC__seid_req {
  struct l_struct_struct_OC__seid_req array[8];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_struct_struct_OC_avdtp_core_data_t {
  struct l_struct_struct_OC__avdtp_stream field0;
  struct l_struct_struct_OC__avdtp_local_sep* field1;
  uint8_t field2;
  uint16_t field3;
  struct l_array_8_struct_AC_l_struct_struct_OC__seid_req field4;
  struct l_array_16_uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  uint16_t field8;
};
struct l_struct_struct_OC_avdtp {
  struct l_array_2_struct_AC_l_struct_struct_OC__avdtp_local_sep field0;
  struct l_struct_struct_OC_avdtp_core_data_t field1;
};
struct l_struct_struct_OC__seid_info {
  uint16_t field0;
};
struct l_struct_struct_OC__avdtp_local_sep {
  struct l_struct_struct_OC__avdtp_sep_ind* field0;
  struct l_struct_struct_OC_avdtp* field1;
  struct l_struct_struct_OC__seid_info field2;
  uint8_t field3;
  struct l_array_16_uint8_t field4;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC__avdtp_single_header {
  uint16_t field0;
};
struct l_array_126_uint8_t {
  uint8_t array[126];
};
struct l_struct_struct_OC__avdtp_send_info {
  struct l_struct_struct_OC__avdtp_single_header field0;
  struct l_array_126_uint8_t field1;
};
struct l_struct_struct_OC__seid {
  uint8_t field0;
};
struct l_array_1_struct_AC_l_struct_struct_OC__seid {
  struct l_struct_struct_OC__seid array[1];
};
struct l_struct_struct_OC__start_req {
  struct l_struct_struct_OC__seid field0;
  struct l_array_1_struct_AC_l_struct_struct_OC__seid field1;
};
struct l_struct_struct_OC__suspend_req {
  struct l_struct_struct_OC__seid field0;
  struct l_array_1_struct_AC_l_struct_struct_OC__seid field1;
};
struct l_array_128_uint8_t {
  uint8_t array[128];
};
struct l_struct_struct_OC__in_buf {
  uint32_t field0;
  struct l_array_128_uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern uint32_t config_asser;
extern uint8_t a2dp_source_bqb_support;

/* Function Declarations */
void avdtp_retry_send(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
struct l_struct_struct_OC__avdtp_local_sep* find_local_sep_by_seid(struct l_struct_struct_OC_avdtp*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void avdtp_discover_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t handle_a2dp_discover_flag(struct l_array_6_uint8_t*, uint8_t);
void avdtp_start_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_suspend_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_close_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_abort_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_get_configuation_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_delay_report_req(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t avdtp_packet_handler(struct l_struct_struct_OC_avdtp*, uint8_t*, uint16_t) __ATTRIBUTELIST__((noinline, nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void avdtp_sep_init(struct l_struct_struct_OC_avdtp*, uint32_t, struct l_struct_struct_OC__avdtp_sep_ind*, uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void find_local_sep_for_tws(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void set_local_sep_for_tws(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t avdtp_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_avdtp* get_tws_phone_session(void);
void avdtp_tws_local_sep_deal(struct l_struct_struct_OC_avdtp*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void avdtp_send(struct l_struct_struct_OC_avdtp*, struct l_struct_struct_OC__avdtp_send_info*, uint8_t, uint8_t, uint8_t, uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t);
void l2cap_disconnect_internal(uint16_t, uint8_t);
static void avdtp_discover_cmd(struct l_struct_struct_OC_avdtp*, uint8_t) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_getcap_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__seid_req*, uint32_t, uint8_t) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_setconf_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_getconf_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__seid_req*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_reconf_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_open_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__seid_req*) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_start_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__start_req*) __ATTRIBUTELIST__((noinline, nothrow));
static uint8_t avdtp_close_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__seid_req*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
static uint8_t avdtp_suspend_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__suspend_req*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
static void avdtp_abort_cmd(struct l_struct_struct_OC_avdtp*, uint8_t, struct l_struct_struct_OC__seid_req*, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
uint8_t lmp_get_conn_num(void);
uint8_t lmp_get_esco_conn_statu(void);
static void avdtp_get_capabilities_response(struct l_struct_struct_OC_avdtp*, uint8_t*, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow));
void p33_soft_reset(void);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_22_uint8_t _OC_str = { "===open already  000\n" };
static struct l_array_17_uint8_t _OC_str_OC_1 = { "avdtp_abort_req\n" };
static struct l_array_35_uint8_t _OC_str_OC_2 = { "<BT-log> :acp reject:0x%x,0x%02x\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_3 = { "file:%s, line:%d" };
static struct l_array_114_uint8_t _OC_str_OC_4 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avdtp.c" };
static struct l_array_44_uint8_t _OC_str_OC_7 = { "something wrong AVDTP send error:no resend\n" };
static struct l_array_12_uint8_t _OC_str_OC_8 = { "send abort\n" };
static struct l_array_22_uint8_t _OC_str_OC_9 = { "Received AVDTP_START\n" };
static struct l_array_22_uint8_t _OC_str_OC_10 = { "Received AVDTP_CLOSE\n" };
static struct l_array_24_uint8_t _OC_str_OC_11 = { "Received AVDTP_SUSPEND\n" };
static struct l_array_22_uint8_t _OC_str_OC_12 = { "Received AVDTP_ABORT\n" };
static struct l_array_43_uint8_t _OC_str_OC_13 = { "<BT-log> :Received unknown request id %d\n\n" };
static struct l_array_40_uint8_t _OC_str_OC_17 = { "<BT-log> :avdtp_start err:%x,state:%d\n\n" };
static struct l_array_30_uint8_t _OC_str_OC_18 = { "<BT-log> :suspend failed:%x\n\n" };
static struct l_array_47_uint8_t _OC_str_OC_19 = { "something wrong AVDTP send error:no resend 22\n" };
static struct l_array_22_uint8_t _OC_str_OC_21 = { "===open already  222\n" };
static struct l_array_11_uint8_t _OC_str_OC_22 = { "avdtp_cap\n" };
static struct l_array_39_uint8_t _OC_str_OC_23 = { "<BT-log> :get_cap_seid:%d    type:%d\n\n" };
static struct l_array_20_uint8_t _OC_str_OC_24 = { "get_capability:AAC\n" };
static struct l_array_17_uint8_t _OC_str_OC_25 = { "===open already\n" };
static struct l_array_32_uint8_t str = { "<BT-log> : AVDTP_DELAY_REPORT \n" };
static struct l_array_34_uint8_t str_OC_26 = { "ASSERT-FAILD: 0 adp local sep err" };
static struct l_array_30_uint8_t str_OC_27 = { "ASSERT-FAILD: 0 adp local sep" };
static struct l_array_33_uint8_t str_OC_28 = { "<BT-log> :[avdtp]set config:AAC\n" };
static struct l_array_33_uint8_t str_OC_29 = { "<BT-log> :[avdtp]set config:SBC\n" };
static struct l_array_63_uint8_t str_OC_30 = { "<<<<<<<<<<<<<<<<<<<<<<<<<esco_busy AVDTP_SEP_IN_USE not_accept" };


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
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint8_t llvm_shl_u8(uint8_t a, uint8_t b) {
  uint8_t r = a << b;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_lshr_u8(uint8_t a, uint8_t b) {
  uint8_t r = a >> b;
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
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
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
static __forceinline uint16_t llvm_xor_u16(uint16_t a, uint16_t b) {
  uint16_t r = a ^ b;
  return r;
}


/* Function Bodies */

void avdtp_retry_send(struct l_struct_struct_OC_avdtp* _1) {
  return;
}


struct l_struct_struct_OC__avdtp_local_sep* find_local_sep_by_seid(struct l_struct_struct_OC_avdtp* _2, uint32_t _3) {
  struct l_struct_struct_OC__avdtp_local_sep* _4;
  struct l_struct_struct_OC__avdtp_local_sep* _5;
  struct l_struct_struct_OC__avdtp_local_sep* _6;
  struct l_struct_struct_OC__avdtp_local_sep* _6__PHI_TEMPORARY;
  uint16_t _7;
  struct l_struct_struct_OC__avdtp_local_sep* _8;
  struct l_struct_struct_OC__avdtp_local_sep* _9;
  struct l_struct_struct_OC__avdtp_local_sep* _9__PHI_TEMPORARY;

  _4 = (&_2->field0.array[((int32_t)0)]);
  _5 = (&_2->field0.array[((int32_t)2)]);
  _6__PHI_TEMPORARY = _4;   /* for PHI node */
  goto _10;

  do {     /* Syntactic loop '' to make GCC happy */
_10:
  _6 = _6__PHI_TEMPORARY;
  _7 = *((&_6->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_7, 2)), 63)))) == _3)&1))) {
    _9__PHI_TEMPORARY = _6;   /* for PHI node */
    goto _11;
  } else {
    goto _12;
  }

_12:
  _8 = (&_6[((int32_t)1)]);
  if ((((((uint32_t)_8) < ((uint32_t)_5))&1))) {
    _6__PHI_TEMPORARY = _8;   /* for PHI node */
    goto _10;
  } else {
    _9__PHI_TEMPORARY = ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0);   /* for PHI node */
    goto _11;
  }

  } while (1); /* end of syntactic loop '' */
_11:
  _9 = _9__PHI_TEMPORARY;
  return _9;
}


void avdtp_discover_req(struct l_struct_struct_OC_avdtp* _13) {
  struct l_struct_struct_OC__avdtp_send_info _14;    /* Address-exposed local */
  uint8_t* _15;
  uint16_t _16;
  uint8_t _17;
  uint32_t _18;
  uint8_t _19;
  uint8_t* _20;
  struct l_struct_struct_OC__avdtp_local_sep* _21;
  struct l_struct_struct_OC__avdtp_local_sep* _22;
  struct l_struct_struct_OC__avdtp_local_sep* _23;
  struct l_struct_struct_OC__avdtp_local_sep* _23__PHI_TEMPORARY;
  uint8_t* _24;
  uint8_t _25;
  struct l_struct_struct_OC__avdtp_local_sep* _26;

  _15 = (&_13[((int32_t)-1)].field1.field5.array[((int32_t)12)]);
  _16 = *((&_13->field1.field8));
  if (((((llvm_and_u16(_16, 16384u)) == ((uint16_t)0))&1))) {
    goto _27;
  } else {
    goto _28;
  }

_28:
  _17 = l2cap_debug_enable;
  if (((((llvm_and_u8(_17, 32)) == ((uint8_t)0))&1))) {
    goto _29;
  } else {
    goto _30;
  }

_30:
  _18 =  /*tail*/ puts(((&_OC_str.array[((int32_t)0)])));
  goto _29;

_29:
  _19 =  /*tail*/ handle_a2dp_discover_flag((((struct l_array_6_uint8_t*)_15)), 1);
  goto _31;

_27:
  _20 = memset((((uint8_t*)(&_14))), 0, 128);
  *((&_13->field1.field7)) = 1;
  avdtp_send(_13, (&_14), 0, 0, 1, 0);
  _21 = (&_13->field0.array[((int32_t)0)]);
  _22 = (&_13->field0.array[((int32_t)2)]);
  _23__PHI_TEMPORARY = _21;   /* for PHI node */
  goto _32;

  do {     /* Syntactic loop '' to make GCC happy */
_32:
  _23 = _23__PHI_TEMPORARY;
  _24 = (&_23->field3);
  _25 = *_24;
  *_24 = (llvm_and_u8(_25, -16));
  _26 = (&_23[((int32_t)1)]);
  if ((((((uint32_t)_26) < ((uint32_t)_22))&1))) {
    _23__PHI_TEMPORARY = _26;   /* for PHI node */
    goto _32;
  } else {
    goto _33;
  }

  } while (1); /* end of syntactic loop '' */
_33:
  goto _31;

_31:
  return;
}


void avdtp_start_req(struct l_struct_struct_OC_avdtp* _34) {
  struct l_struct_struct_OC__avdtp_send_info _35;    /* Address-exposed local */
  uint8_t _36;
  uint8_t* _37;
  uint8_t _38;

  _36 = *((&_34->field1.field6));
  _37 = memset((((uint8_t*)(&_35))), 0, 128);
  *((&_34->field1.field7)) = 7;
  _38 = *((&_34->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_36)))].field0));
  *((&_35.field1.array[((int32_t)0)])) = _38;
  avdtp_send(_34, (&_35), 0, 0, 7, 1);
}


void avdtp_suspend_req(struct l_struct_struct_OC_avdtp* _39) {
  struct l_struct_struct_OC__avdtp_send_info _40;    /* Address-exposed local */
  uint8_t _41;
  uint8_t* _42;
  uint8_t _43;
  struct l_struct_struct_OC__avdtp_local_sep* _44;
  uint8_t* _45;
  uint8_t _46;
  struct l_struct_struct_OC__avdtp_sep_ind* _47;
  l_fptr_1* _48;
  uint8_t _49;

  _41 = *((&_39->field1.field6));
  _42 = memset((((uint8_t*)(&_40))), 0, 128);
  *((&_39->field1.field7)) = 9;
  _43 = *((&_39->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_41)))].field0));
  *((&_40.field1.array[((int32_t)0)])) = _43;
  avdtp_send(_39, (&_40), 0, 0, 9, 1);
  _44 = *((&_39->field1.field1));
  _45 = (&_44->field3);
  _46 = *_45;
  *_45 = (llvm_or_u8((llvm_and_u8(_46, -16)), 2));
  _47 = *((&_44->field0));
  _48 = *((&_47->field4));
  _49 = _48(_44, ((&_39->field1.field0)));
}


void avdtp_close_req(struct l_struct_struct_OC_avdtp* _50) {
  struct l_struct_struct_OC__avdtp_send_info _51;    /* Address-exposed local */
  uint8_t _52;
  uint8_t* _53;
  uint8_t _54;

  _52 = *((&_50->field1.field6));
  _53 = memset((((uint8_t*)(&_51))), 0, 128);
  *((&_50->field1.field7)) = 8;
  _54 = *((&_50->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_52)))].field0));
  *((&_51.field1.array[((int32_t)0)])) = _54;
  avdtp_send(_50, (&_51), 0, 0, 8, 1);
}


void avdtp_abort_req(struct l_struct_struct_OC_avdtp* _55) {
  struct l_struct_struct_OC__avdtp_send_info _56;    /* Address-exposed local */
  uint8_t _57;
  uint32_t _58;
  uint8_t _59;
  uint8_t* _60;
  uint8_t _61;

  _57 = l2cap_debug_enable;
  if (((((llvm_and_u8(_57, 32)) == ((uint8_t)0))&1))) {
    goto _62;
  } else {
    goto _63;
  }

_63:
  _58 =  /*tail*/ puts(((&_OC_str_OC_1.array[((int32_t)0)])));
  goto _62;

_62:
  _59 = *((&_55->field1.field6));
  _60 = memset((((uint8_t*)(&_56))), 0, 128);
  *((&_55->field1.field7)) = 10;
  _61 = *((&_55->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_59)))].field0));
  *((&_56.field1.array[((int32_t)0)])) = _61;
  avdtp_send(_55, (&_56), 0, 0, 10, 1);
}


void avdtp_get_configuation_req(struct l_struct_struct_OC_avdtp* _64) {
  struct l_struct_struct_OC__avdtp_send_info _65;    /* Address-exposed local */
  uint8_t _66;
  uint8_t* _67;
  uint8_t _68;

  _66 = *((&_64->field1.field6));
  _67 = memset((((uint8_t*)(&_65))), 0, 128);
  *((&_64->field1.field7)) = 4;
  _68 = *((&_64->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_66)))].field0));
  *((&_65.field1.array[((int32_t)0)])) = _68;
  avdtp_send(_64, (&_65), 0, 0, 4, 1);
}


void avdtp_delay_report_req(struct l_struct_struct_OC_avdtp* _69) {
  struct l_struct_struct_OC__avdtp_send_info _70;    /* Address-exposed local */
  uint8_t _71;
  uint8_t* _72;
  uint8_t _73;

  _71 = *((&_69->field1.field6));
  _72 = memset((((uint8_t*)(&_70))), 0, 128);
  *((&_69->field1.field7)) = 13;
  _73 = *((&_69->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_71)))].field0));
  *((&_70.field1.array[((int32_t)0)])) = _73;
  *((&_70.field1.array[((int32_t)1)])) = 1;
  *((&_70.field1.array[((int32_t)2)])) = 0;
  avdtp_send(_69, (&_70), 0, 0, 13, 3);
}


uint8_t avdtp_packet_handler(struct l_struct_struct_OC_avdtp* _74, uint8_t* _75, uint16_t _76) {
  struct l_struct_struct_OC__avdtp_send_info _77;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _78;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _79;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _80;    /* Address-exposed local */
  struct l_struct_struct_OC__in_buf _81;    /* Address-exposed local */
  uint8_t* _82;
  uint32_t _83;
  uint8_t _84;
  uint16_t _85;
  uint8_t _86;
  uint32_t _87;
  uint8_t _88;
  uint32_t _89;
  uint32_t _89__PHI_TEMPORARY;
  uint32_t _90;
  uint32_t _90__PHI_TEMPORARY;
  uint32_t _91;
  uint8_t* _92;
  uint8_t* _93;
  uint8_t* _94;
  uint8_t _95;
  uint32_t _96;
  uint8_t _97;
  uint32_t _98;
  uint8_t _99;
  uint8_t _100;
  uint8_t _101;
  uint32_t _102;
  uint32_t _103;
  uint8_t _104;
  uint32_t _105;
  uint8_t _106;
  uint32_t _107;
  uint8_t _108;
  uint8_t _109;
  uint32_t _110;
  uint8_t _111;
  uint8_t _112;
  uint32_t _113;
  uint8_t _114;
  uint32_t _115;
  uint8_t* _116;
  uint8_t* _117;
  uint8_t _118;
  uint16_t _119;
  uint32_t _120;
  uint8_t _121;
  uint32_t _122;
  uint8_t _123;
  uint8_t _123__PHI_TEMPORARY;
  uint8_t _124;
  uint8_t _125;
  uint8_t _126;
  uint32_t _127;
  uint8_t _128;
  uint8_t _128__PHI_TEMPORARY;
  uint32_t _129;
  uint8_t* _130;
  uint8_t _131;
  uint16_t* _132;
  uint16_t _133;
  uint16_t _134;
  uint8_t* _135;
  uint32_t _136;
  struct l_struct_struct_OC__seid_info* _137;
  uint32_t _138;
  uint32_t _138__PHI_TEMPORARY;
  struct l_struct_struct_OC__seid_info* _139;
  struct l_struct_struct_OC__seid_info* _139__PHI_TEMPORARY;
  uint16_t _140;
  uint16_t _141;
  uint8_t* _142;
  uint8_t _143;
  uint32_t _144;
  struct l_struct_struct_OC__seid_info* _145;
  uint16_t _146;
  uint16_t _147;
  uint16_t _147__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep** _148;
  uint8_t* _149;
  uint8_t _150;
  uint8_t* _151;
  struct l_struct_struct_OC__avdtp_local_sep** _152;
  struct l_struct_struct_OC__avdtp_local_sep* _153;
  uint8_t* _154;
  uint8_t _155;
  uint8_t _156;
  uint32_t _157;
  uint8_t _158;
  struct l_struct_struct_OC__avdtp_local_sep* _159;
  uint16_t* _160;
  uint16_t _161;
  uint8_t _162;
  uint8_t* _163;
  uint8_t _164;
  struct l_struct_struct_OC__avdtp_local_sep* _165;
  struct l_struct_struct_OC__avdtp_sep_ind* _166;
  l_fptr_2* _167;
  uint8_t _168;
  uint8_t* _169;
  uint8_t _170;
  struct l_struct_struct_OC__avdtp_local_sep* _171;
  struct l_struct_struct_OC__avdtp_sep_ind* _172;
  l_fptr_1* _173;
  uint8_t _174;
  uint8_t* _175;
  uint8_t _176;
  uint8_t _177;
  uint32_t _178;
  struct l_struct_struct_OC__avdtp_local_sep** _179;
  struct l_struct_struct_OC__avdtp_local_sep** _179__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep* _180;
  uint8_t _181;
  uint32_t _182;
  uint8_t _183;
  uint8_t* _184;
  uint8_t _185;
  struct l_struct_struct_OC__avdtp_sep_ind* _186;
  l_fptr_3* _187;
  uint16_t _188;
  uint8_t _189;
  uint8_t _189__PHI_TEMPORARY;

  _82 = memset((((uint8_t*)(&_81))), 0, 140);
  _83 = ((uint32_t)(uint16_t)_76);
  if ((((_76 == ((uint16_t)0))&1))) {
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  } else {
    goto _191;
  }

_191:
  _84 = *_75;
  switch ((((((uint8_t)(llvm_lshr_u8(_84, 2))))&3))) {
  default:
    goto _192;
  case ((uint8_t)0):
    goto _193;
  case ((uint8_t)1):
    goto _194;
  case ((uint8_t)2u):
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  case ((uint8_t)-1):
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  }

_193:
  if ((((((uint16_t)_76) < ((uint16_t)((uint16_t)2)))&1))) {
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  } else {
    goto _195;
  }

_195:
  *((&_81.field6)) = 0;
  *((&_81.field0)) = 1;
  _85 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)_75)));
  *((&_81.field4)) = (llvm_and_u8((((uint8_t)_85)), 3));
  *((&_81.field5)) = (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_85, 8)))), 63));
  *((&_81.field3)) = (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_85, 4)))), 15));
  _89__PHI_TEMPORARY = 1;   /* for PHI node */
  _90__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _196;

_194:
  *((&_81.field2)) = 1;
  *((&_81.field6)) = 0;
  *((&_81.field3)) = (llvm_lshr_u8(_84, 4));
  *((&_81.field4)) = (llvm_and_u8(_84, 3));
  _86 = *((&_75[((int32_t)1)]));
  _87 = ((uint32_t)(uint8_t)_86);
  *((&_81.field0)) = _87;
  _88 = *((&_75[((int32_t)2)]));
  *((&_81.field5)) = (llvm_and_u8(_88, 63));
  _89__PHI_TEMPORARY = _87;   /* for PHI node */
  _90__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _196;

_192:
  __builtin_unreachable();

_196:
  _89 = _89__PHI_TEMPORARY;
  _90 = _90__PHI_TEMPORARY;
  _91 = llvm_sub_u32(_83, _90);
  _92 = (&_81.field6);
  if ((((((uint32_t)_91) > ((uint32_t)128u))&1))) {
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  } else {
    goto _197;
  }

_197:
  _93 = (&_81.field1.array[((int32_t)0)]);
  _94 = memcpy(_93, ((&_75[((int32_t)_90)])), _91);
  _95 = *_92;
  _96 = llvm_add_u32((((uint32_t)(uint8_t)_95)), _91);
  *_92 = (((uint8_t)_96));
  if ((((((uint32_t)_89) > ((uint32_t)1u))&1))) {
    goto _198;
  } else {
    goto _199;
  }

_198:
  *((&_81.field0)) = (llvm_add_u32(_89, -1));
  _189__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _190;

_199:
  *((&_81.field2)) = 0;
  _97 = *((&_81.field4));
  _98 = ((uint32_t)(uint8_t)_97);
  switch (_97) {
  default:
    goto _200;
  case ((uint8_t)0):
    goto _201;
  case ((uint8_t)2):
    goto _202;
  }

_202:
  _99 = *((&_81.field5));
  _128__PHI_TEMPORARY = _99;   /* for PHI node */
  goto _203;

_201:
  _100 = *((&_81.field3));
  _101 = *((&_81.field5));
  _102 = _96 & 255;
  _103 = ((uint32_t)(uint8_t)_101);
  switch (_101) {
  default:
    goto _204;
  case ((uint8_t)1):
    goto _205;
  case ((uint8_t)2):
    goto _206;
  case ((uint8_t)12):
    goto _207;
  case ((uint8_t)3):
    goto _208;
  case ((uint8_t)4):
    goto _209;
  case ((uint8_t)5):
    goto _210;
  case ((uint8_t)6):
    goto _211;
  case ((uint8_t)7):
    goto _212;
  case ((uint8_t)8):
    goto _213;
  case ((uint8_t)9):
    goto _214;
  case ((uint8_t)10):
    goto _215;
  }

_205:
   /*tail*/ avdtp_discover_cmd(_74, _100);
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_206:
  avdtp_getcap_cmd(_74, _100, (((struct l_struct_struct_OC__seid_req*)_93)), _102, 0);
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_207:
  avdtp_getcap_cmd(_74, _100, (((struct l_struct_struct_OC__seid_req*)_93)), _102, 1);
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_208:
  avdtp_setconf_cmd(_74, _100, _93, _102);
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_209:
  avdtp_getconf_cmd(_74, _100, (((struct l_struct_struct_OC__seid_req*)_93)), _102);
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_210:
  avdtp_reconf_cmd(_74, _100, _93, _102);
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_211:
  avdtp_open_cmd(_74, _100, (((struct l_struct_struct_OC__seid_req*)_93)));
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_212:
  _104 = l2cap_debug_enable;
  if (((((llvm_and_u8(_104, 32)) == ((uint8_t)0))&1))) {
    goto _217;
  } else {
    goto _218;
  }

_218:
  _105 =  /*tail*/ puts(((&_OC_str_OC_9.array[((int32_t)0)])));
  goto _217;

_217:
  avdtp_start_cmd(_74, _100, (((struct l_struct_struct_OC__start_req*)_93)));
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_213:
  _106 = l2cap_debug_enable;
  if (((((llvm_and_u8(_106, 32)) == ((uint8_t)0))&1))) {
    goto _219;
  } else {
    goto _220;
  }

_220:
  _107 =  /*tail*/ puts(((&_OC_str_OC_10.array[((int32_t)0)])));
  goto _219;

_219:
  _108 = avdtp_close_cmd(_74, _100, (((struct l_struct_struct_OC__seid_req*)_93)), _102);
  _123__PHI_TEMPORARY = _108;   /* for PHI node */
  goto _216;

_214:
  _109 = l2cap_debug_enable;
  if (((((llvm_and_u8(_109, 32)) == ((uint8_t)0))&1))) {
    goto _221;
  } else {
    goto _222;
  }

_222:
  _110 =  /*tail*/ puts(((&_OC_str_OC_11.array[((int32_t)0)])));
  goto _221;

_221:
  _111 = avdtp_suspend_cmd(_74, _100, (((struct l_struct_struct_OC__suspend_req*)_93)), _102);
  _123__PHI_TEMPORARY = _111;   /* for PHI node */
  goto _216;

_215:
  _112 = l2cap_debug_enable;
  if (((((llvm_and_u8(_112, 32)) == ((uint8_t)0))&1))) {
    goto _223;
  } else {
    goto _224;
  }

_224:
  _113 =  /*tail*/ puts(((&_OC_str_OC_12.array[((int32_t)0)])));
  goto _223;

_223:
  avdtp_abort_cmd(_74, _100, (((struct l_struct_struct_OC__seid_req*)_93)), _102);
  _123__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _216;

_204:
  _114 = l2cap_debug_enable;
  if ((((((int8_t)_114) < ((int8_t)((uint8_t)0)))&1))) {
    goto _225;
  } else {
    goto _226;
  }

_225:
  _115 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), _103);
  goto _226;

_226:
  _116 = memset((((uint8_t*)(&_77))), 0, 128);
  _117 = (&_77.field1.array[((int32_t)0)]);
  _118 = a2dp_source_bqb_support;
  *_117 = (llvm_or_u8((((uint8_t)(bool)(((_118 == ((uint8_t)0))&1)))), (llvm_shl_u8(_100, 4))));
  *((&_77.field1.array[((int32_t)1)])) = (llvm_select_u8((((_118 == ((uint8_t)0))&1)), _101, 0));
  _119 = *((&_74->field1.field3));
  _120 = l2cap_send_internal(_119, _117, 2, 0);
  if ((((_120 == 0u)&1))) {
    goto _227;
  } else {
    goto _228;
  }

_228:
  _121 = l2cap_debug_enable;
  if (((((llvm_and_u8(_121, 32)) == ((uint8_t)0))&1))) {
    goto _227;
  } else {
    goto _229;
  }

_229:
  _122 = puts(((&_OC_str_OC_19.array[((int32_t)0)])));
  goto _227;

_227:
  _123__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _216;

_216:
  _123 = _123__PHI_TEMPORARY;
  _124 = ((uint8_t)(bool)(((_123 != ((uint8_t)0))&1)));
  _189__PHI_TEMPORARY = _124;   /* for PHI node */
  goto _190;

_200:
  _125 = l2cap_debug_enable;
  _126 = *((&_81.field5));
  if ((((((int8_t)_125) < ((int8_t)((uint8_t)0)))&1))) {
    goto _230;
  } else {
    goto _231;
  }

_230:
  _127 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), _98, (((uint32_t)(uint8_t)_126)));
  goto _231;

_231:
  if ((((_126 == ((uint8_t)9))&1))) {
    _128__PHI_TEMPORARY = 9;   /* for PHI node */
    goto _203;
  } else {
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  }

_203:
  _128 = _128__PHI_TEMPORARY;
  _129 = _96 & 255;
  _130 = (&_74->field1.field7);
  _131 = *_130;
  if ((((_131 == _128)&1))) {
    goto _232;
  } else {
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  }

_232:
  switch (_128) {
  default:
    _189__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _190;
  case ((uint8_t)1):
    goto _233;
  case ((uint8_t)2):
    goto _234;
  case ((uint8_t)12):
    goto _235;
  case ((uint8_t)3):
    goto _236;
  case ((uint8_t)6):
    goto _237;
  case ((uint8_t)7):
    goto _238;
  case ((uint8_t)9):
    goto _239;
  case ((uint8_t)13):
    goto _240;
  }

_233:
  _132 = (&_74->field1.field8);
  _133 = *_132;
  _134 = llvm_and_u16(_133, -256);
  *_132 = _134;
  _135 = (&_74->field1.field4.array[((int32_t)0)].field0);
  *_135 = 0;
  _136 = llvm_lshr_u32(_129, 1);
  if ((((_136 == 0u)&1))) {
    _147__PHI_TEMPORARY = _134;   /* for PHI node */
    goto _241;
  } else {
    goto _242;
  }

_242:
  _137 = ((struct l_struct_struct_OC__seid_info*)_93);
  _138__PHI_TEMPORARY = 0;   /* for PHI node */
  _139__PHI_TEMPORARY = _137;   /* for PHI node */
  goto _243;

  do {     /* Syntactic loop '' to make GCC happy */
_243:
  _138 = _138__PHI_TEMPORARY;
  _139 = _139__PHI_TEMPORARY;
  _140 = __UNALIGNED_LOAD__(uint16_t, 1, ((&_139->field0)));
  if ((((((uint16_t)_140) > ((uint16_t)((uint16_t)4095)))&1))) {
    goto _244;
  } else {
    goto _245;
  }

_245:
  _141 = *_132;
  switch ((((((uint8_t)(llvm_lshr_u16(_141, 12))))&3))) {
  default:
    goto _246;
  case ((uint8_t)1):
    goto _247;
  case ((uint8_t)0):
    goto _248;
  }

_248:
  if (((((llvm_and_u16(_140, 2050)) == ((uint16_t)2048))&1))) {
    goto _249;
  } else {
    goto _244;
  }

_247:
  if (((((llvm_and_u16(_140, 2050)) == ((uint16_t)0))&1))) {
    goto _249;
  } else {
    goto _244;
  }

_246:
  if (((((llvm_and_u16(_140, 2)) == ((uint16_t)0))&1))) {
    goto _249;
  } else {
    goto _244;
  }

_249:
  *_132 = (llvm_or_u16((llvm_and_u16((llvm_add_u16(_141, 1)), 15)), (llvm_and_u16(_141, -16))));
  _142 = (&_74->field1.field4.array[((int32_t)(((uint32_t)(uint16_t)(llvm_and_u16(_141, 15)))))].field0);
  _143 = *_142;
  *_142 = (llvm_or_u8((llvm_and_u8(_143, 3)), (llvm_and_u8((((uint8_t)_140)), -4))));
  goto _244;

_244:
  _144 = llvm_add_u32(_138, 1);
  _145 = (&_139[((int32_t)1)]);
  if ((((_144 == _136)&1))) {
    goto _250;
  } else {
    _138__PHI_TEMPORARY = _144;   /* for PHI node */
    _139__PHI_TEMPORARY = _145;   /* for PHI node */
    goto _243;
  }

  } while (1); /* end of syntactic loop '' */
_250:
  _146 = *_132;
  _147__PHI_TEMPORARY = _146;   /* for PHI node */
  goto _241;

_241:
  _147 = _147__PHI_TEMPORARY;
  if (((((llvm_and_u16(_147, 15)) == ((uint16_t)0))&1))) {
    goto _251;
  } else {
    goto _252;
  }

_251:
  _148 = (&_74->field1.field1);
  _179__PHI_TEMPORARY = _148;   /* for PHI node */
  goto _253;

_252:
  _149 = memset((((uint8_t*)(&_80))), 0, 128);
  *_130 = 2;
  _150 = *_135;
  *((&_80.field1.array[((int32_t)0)])) = _150;
  avdtp_send(_74, (&_80), 0, 0, 2, 1);
  goto _239;

_234:
  avdtp_get_capabilities_response(_74, _93, _129, 0);
  goto _239;

_235:
  avdtp_get_capabilities_response(_74, _93, _129, 1);
  goto _239;

_236:
  _151 = (&_74[((int32_t)-1)].field1.field5.array[((int32_t)12)]);
  _152 = (&_74->field1.field1);
  _153 = *_152;
  _154 = (&_153->field3);
  _155 = *_154;
  if ((((((uint8_t)(llvm_add_u8((llvm_and_u8(_155, 15)), -1))) < ((uint8_t)((uint8_t)2)))&1))) {
    goto _254;
  } else {
    goto _255;
  }

_254:
  _156 = l2cap_debug_enable;
  if (((((llvm_and_u8(_156, 32)) == ((uint8_t)0))&1))) {
    goto _256;
  } else {
    goto _257;
  }

_257:
  _157 =  /*tail*/ puts(((&_OC_str_OC_25.array[((int32_t)0)])));
  goto _256;

_256:
  _158 =  /*tail*/ handle_a2dp_discover_flag((((struct l_array_6_uint8_t*)_151)), 1);
  _179__PHI_TEMPORARY = _152;   /* for PHI node */
  goto _253;

_255:
  *_154 = (llvm_or_u8((llvm_and_u8(_155, -16)), 1));
  _159 = *_152;
  _160 = (&_159->field2.field0);
  _161 = *_160;
  *_160 = (llvm_or_u16(_161, 2));
  _162 = *((&_74->field1.field6));
  _163 = memset((((uint8_t*)(&_79))), 0, 128);
  *_130 = 6;
  _164 = *((&_74->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_162)))].field0));
  *((&_79.field1.array[((int32_t)0)])) = _164;
  avdtp_send(_74, (&_79), 0, 0, 6, 1);
  goto _239;

_237:
  _165 = *((&_74->field1.field1));
  _166 = *((&_165->field0));
  _167 = *((&_166->field2));
  _168 =  /*tail*/ _167(_165, ((&_74->field1.field0)), 1);
  _169 = (&_165->field3);
  _170 = *_169;
  *_169 = (llvm_or_u8((llvm_and_u8(_170, -16)), 2));
  goto _239;

_238:
  _171 = *((&_74->field1.field1));
  _172 = *((&_171->field0));
  _173 = *((&_172->field3));
  _174 =  /*tail*/ _173(_171, ((&_74->field1.field0)));
  _175 = (&_171->field3);
  _176 = *_175;
  *_175 = (llvm_or_u8((llvm_and_u8(_176, -16)), 3));
  goto _239;

_240:
  _177 = l2cap_debug_enable;
  if ((((((int8_t)_177) < ((int8_t)((uint8_t)0)))&1))) {
    goto _258;
  } else {
    goto _239;
  }

_258:
  _178 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _239;

_239:
  _189__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _190;

_253:
  _179 = _179__PHI_TEMPORARY;
  _180 = *_179;
  _181 = l2cap_debug_enable;
  if (((((llvm_and_u8(_181, 32)) == ((uint8_t)0))&1))) {
    goto _259;
  } else {
    goto _260;
  }

_260:
  _182 =  /*tail*/ puts(((&_OC_str_OC_8.array[((int32_t)0)])));
  goto _259;

_259:
  if ((((_180 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _261;
  } else {
    goto _262;
  }

_262:
  _183 = *((&_74->field1.field6));
  _184 = memset((((uint8_t*)(&_78))), 0, 128);
  *_130 = 10;
  _185 = *((&_74->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_183)))].field0));
  *((&_78.field1.array[((int32_t)0)])) = _185;
  avdtp_send(_74, (&_78), 0, 0, 10, 1);
  _186 = *((&_180->field0));
  _187 = *((&_186->field6));
  _187(_180);
  _189__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _190;

_261:
  _188 = *((&_74->field1.field3));
   /*tail*/ l2cap_disconnect_internal(_188, 19);
  _189__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _190;

_190:
  _189 = _189__PHI_TEMPORARY;
  return _189;
}


void avdtp_sep_init(struct l_struct_struct_OC_avdtp* _263, uint32_t _264, struct l_struct_struct_OC__avdtp_sep_ind* _265, uint8_t _266) {
  struct l_struct_struct_OC__avdtp_local_sep* _267;
  struct l_struct_struct_OC__avdtp_local_sep* _268;
  struct l_struct_struct_OC__avdtp_local_sep* _269;
  struct l_struct_struct_OC__avdtp_local_sep* _269__PHI_TEMPORARY;
  uint32_t _270;
  uint32_t _270__PHI_TEMPORARY;
  uint16_t* _271;
  uint16_t _272;
  uint32_t _273;
  uint8_t* _274;
  uint8_t _275;
  struct l_struct_struct_OC__avdtp_local_sep* _276;

  _267 = (&_263->field0.array[((int32_t)0)]);
  _268 = (&_263->field0.array[((int32_t)2)]);
  _269__PHI_TEMPORARY = _267;   /* for PHI node */
  _270__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _277;

  do {     /* Syntactic loop '' to make GCC happy */
_277:
  _269 = _269__PHI_TEMPORARY;
  _270 = _270__PHI_TEMPORARY;
  _271 = (&_269->field2.field0);
  _272 = *_271;
  _273 = llvm_add_u32(_270, 1);
  if (((((llvm_and_u16(_272, 252)) == ((uint16_t)0))&1))) {
    goto _278;
  } else {
    goto _279;
  }

_279:
  _276 = (&_269[((int32_t)1)]);
  if ((((((uint32_t)_276) < ((uint32_t)_268))&1))) {
    _269__PHI_TEMPORARY = _276;   /* for PHI node */
    _270__PHI_TEMPORARY = _273;   /* for PHI node */
    goto _277;
  } else {
    goto _280;
  }

  } while (1); /* end of syntactic loop '' */
_278:
  *_271 = (llvm_or_u16((llvm_or_u16((llvm_and_u16((llvm_shl_u16((((uint16_t)_273)), 2)), 252)), (llvm_and_u16((llvm_shl_u16((((uint16_t)_264)), 11)), 2048)))), (llvm_and_u16(_272, 1795))));
  *((&_269->field0)) = _265;
  *((&_269->field1)) = _263;
  _274 = (&_269->field3);
  _275 = *_274;
  *_274 = (llvm_or_u8((llvm_and_u8(_275, 15)), (llvm_shl_u8(_266, 4))));
  goto _281;

_280:
  goto _281;

_281:
  return;
}


void find_local_sep_for_tws(struct l_struct_struct_OC_avdtp* _282) {
  struct l_struct_struct_OC__avdtp_local_sep* _283;
  uint8_t* _284;
  struct l_struct_struct_OC__avdtp_local_sep* _285;
  struct l_struct_struct_OC__avdtp_local_sep* _286;
  uint8_t _287;
  uint8_t _287__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep* _288;
  struct l_struct_struct_OC__avdtp_local_sep* _288__PHI_TEMPORARY;
  uint8_t _289;
  struct l_struct_struct_OC__avdtp_local_sep* _290;
  uint32_t _291;
  uint32_t _292;
  uint32_t _293;

  _283 = *((&_282->field1.field1));
  _284 = (&_282->field1.field2);
  *_284 = 0;
  if ((((_283 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _294;
  } else {
    goto _295;
  }

_295:
  _285 = (&_282->field0.array[((int32_t)0)]);
  _286 = (&_282->field0.array[((int32_t)2)]);
  _287__PHI_TEMPORARY = 0;   /* for PHI node */
  _288__PHI_TEMPORARY = _285;   /* for PHI node */
  goto _296;

  do {     /* Syntactic loop '' to make GCC happy */
_296:
  _287 = _287__PHI_TEMPORARY;
  _288 = _288__PHI_TEMPORARY;
  _289 = llvm_add_u8(_287, 1);
  _290 = (&_288[((int32_t)1)]);
  if ((((_288 == _283)&1))) {
    goto _297;
  } else {
    goto _298;
  }

_298:
  if ((((((uint32_t)_290) < ((uint32_t)_286))&1))) {
    _287__PHI_TEMPORARY = _289;   /* for PHI node */
    _288__PHI_TEMPORARY = _290;   /* for PHI node */
    goto _296;
  } else {
    goto _299;
  }

  } while (1); /* end of syntactic loop '' */
_299:
  *_284 = _289;
  _291 = config_asser;
  if ((((_291 == 0u)&1))) {
    goto _300;
  } else {
    goto _301;
  }

_301:
  _292 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), ((&_OC_str_OC_4.array[((int32_t)0)])), 1495);
  _293 =  /*tail*/ puts(((&str_OC_26.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _294;

_300:
   /*tail*/ cpu_reset();
  goto _294;

_297:
  *_284 = _289;
  goto _294;

_294:
  return;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


void set_local_sep_for_tws(struct l_struct_struct_OC_avdtp* _302) {
  struct l_struct_struct_OC__avdtp_local_sep** _303;
  struct l_struct_struct_OC__avdtp_local_sep* _304;
  uint8_t* _305;
  uint8_t _306;
  uint32_t _307;
  uint32_t _308;
  uint32_t _309;
  uint8_t _310;

  _303 = (&_302->field1.field1);
  _304 = *_303;
  if ((((_304 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _311;
  } else {
    goto _312;
  }

_312:
  _305 = (&_302->field1.field2);
  _306 = *_305;
  if ((((_306 == ((uint8_t)0))&1))) {
    goto _311;
  } else {
    goto _313;
  }

_313:
  if ((((((uint8_t)_306) > ((uint8_t)((uint8_t)2)))&1))) {
    goto _314;
  } else {
    goto _315;
  }

_314:
  _307 = config_asser;
  if ((((_307 == 0u)&1))) {
    goto _316;
  } else {
    goto _317;
  }

_317:
  _308 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), ((&_OC_str_OC_4.array[((int32_t)0)])), 1509);
  _309 =  /*tail*/ puts(((&str_OC_27.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _315;

_316:
   /*tail*/ cpu_reset();
  goto _315;

_315:
  _310 = *_305;
  *_303 = ((&_302->field0.array[((int32_t)(llvm_add_u32((((uint32_t)(uint8_t)_310)), -1)))]));
  goto _311;

_311:
  return;
}


uint32_t avdtp_core_data_for_send(uint8_t* _318, uint16_t _319) {
  struct l_struct_struct_OC_avdtp* _320;
  uint8_t* _321;
  uint32_t _322;
  uint32_t _322__PHI_TEMPORARY;
  uint8_t _323;
  uint32_t _324;
  uint32_t _325;
  uint32_t _325__PHI_TEMPORARY;

  _320 =  /*tail*/ get_tws_phone_session();
  if ((((_320 == ((struct l_struct_struct_OC_avdtp*)/*NULL*/0))&1))) {
    _325__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _326;
  } else {
    goto _327;
  }

_327:
   /*tail*/ find_local_sep_for_tws(_320);
  _321 = memcpy(_318, ((&_320->field1.field0.field0)), 40);
  *((&_318[((int32_t)40)])) = 2;
  _322__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _328;

  do {     /* Syntactic loop '' to make GCC happy */
_328:
  _322 = _322__PHI_TEMPORARY;
  _323 = *((&_320->field0.array[((int32_t)_322)].field3));
  *((&_318[((int32_t)(llvm_add_u32(_322, 41)))])) = (llvm_and_u8(_323, 15));
  _324 = llvm_add_u32(_322, 1);
  if ((((_324 == 2u)&1))) {
    goto _329;
  } else {
    _322__PHI_TEMPORARY = _324;   /* for PHI node */
    goto _328;
  }

  } while (1); /* end of syntactic loop '' */
_329:
  _325__PHI_TEMPORARY = 43;   /* for PHI node */
  goto _326;

_326:
  _325 = _325__PHI_TEMPORARY;
  return _325;
}


void avdtp_tws_local_sep_deal(struct l_struct_struct_OC_avdtp* _330) {
  struct l_struct_struct_OC_avdtp_core_data_t* _331;
  struct l_struct_struct_OC__avdtp_local_sep* _332;
  uint8_t _333;
  struct l_struct_struct_OC__avdtp_sep_ind* _334;
  l_fptr_2* _335;
  uint8_t _336;
  struct l_struct_struct_OC__avdtp_sep_ind* _337;
  l_fptr_1* _338;
  uint8_t _339;

  _331 = (&_330->field1);
  _332 = *((&_330->field1.field1));
  if ((((_332 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _340;
  } else {
    goto _341;
  }

_341:
  _333 = *((&_332->field3));
  switch ((((((uint8_t)_333))&15))) {
  default:
    goto _340;
  case ((uint8_t)2):
    goto _342;
  case ((uint8_t)3):
    goto _343;
  }

_342:
  _334 = *((&_332->field0));
  _335 = *((&_334->field2));
  _336 =  /*tail*/ _335(_332, ((&_331->field0)), 0);
  goto _340;

_343:
  _337 = *((&_332->field0));
  _338 = *((&_337->field3));
  _339 =  /*tail*/ _338(_332, ((&_331->field0)));
  goto _340;

_340:
  return;
}


void avdtp_core_data_for_set(uint8_t* _344, uint16_t _345) {
  struct l_struct_struct_OC_avdtp* _346;
  uint8_t* _347;
  uint8_t* _348;
  uint8_t _349;
  uint32_t _350;
  uint32_t _350__PHI_TEMPORARY;
  uint8_t _351;
  uint8_t _351__PHI_TEMPORARY;
  uint8_t _352;
  uint8_t* _353;
  uint8_t _354;
  uint8_t _355;
  uint8_t _356;

  _346 =  /*tail*/ get_tws_phone_session();
  if ((((_346 == ((struct l_struct_struct_OC_avdtp*)/*NULL*/0))&1))) {
    goto _357;
  } else {
    goto _358;
  }

_358:
  _347 = memcpy(((&_346->field1.field0.field0)), _344, 40);
  _348 = (&_344[((int32_t)40)]);
  _349 = *_348;
  if ((((_349 == ((uint8_t)0))&1))) {
    goto _359;
  } else {
    goto _360;
  }

_360:
  _350__PHI_TEMPORARY = 0;   /* for PHI node */
  _351__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _361;

  do {     /* Syntactic loop '' to make GCC happy */
_361:
  _350 = _350__PHI_TEMPORARY;
  _351 = _351__PHI_TEMPORARY;
  _352 = *((&_344[((int32_t)(llvm_add_u32(_350, 41)))]));
  _353 = (&_346->field0.array[((int32_t)_350)].field3);
  _354 = *_353;
  *_353 = (llvm_or_u8((llvm_and_u8(_354, -16)), (llvm_and_u8(_352, 15))));
  _355 = llvm_add_u8(_351, 1);
  _356 = *_348;
  if ((((((uint8_t)_355) < ((uint8_t)_356))&1))) {
    _350__PHI_TEMPORARY = (((uint32_t)(uint8_t)_355));   /* for PHI node */
    _351__PHI_TEMPORARY = _355;   /* for PHI node */
    goto _361;
  } else {
    goto _362;
  }

  } while (1); /* end of syntactic loop '' */
_362:
  goto _359;

_359:
   /*tail*/ set_local_sep_for_tws(_346);
  goto _357;

_357:
  return;
}


static void avdtp_send(struct l_struct_struct_OC_avdtp* _363, struct l_struct_struct_OC__avdtp_send_info* _364, uint8_t _365, uint8_t _366, uint8_t _367, uint32_t _368) {
  uint16_t* _369;
  uint16_t _370;
  uint16_t _371;
  uint32_t _372;
  uint8_t _373;
  uint32_t _374;

  _369 = (&_364->field0.field0);
  _370 = __UNALIGNED_LOAD__(uint16_t, 1, _369);
  __UNALIGNED_LOAD__(uint16_t, 1, _369) = (llvm_or_u16((llvm_or_u16((((uint16_t)(uint8_t)(llvm_or_u8((llvm_and_u8(_366, 3)), (llvm_shl_u8(_365, 4)))))), (llvm_shl_u16((((uint16_t)(uint8_t)(llvm_and_u8(_367, 63)))), 8)))), (llvm_and_u16(_370, -16384))));
  _371 = *((&_363->field1.field3));
  _372 =  /*tail*/ l2cap_send_internal(_371, (((uint8_t*)_364)), (((uint16_t)(llvm_add_u32(_368, 2)))), 0);
  if ((((_372 == 0u)&1))) {
    goto _375;
  } else {
    goto _376;
  }

_376:
  _373 = l2cap_debug_enable;
  if (((((llvm_and_u8(_373, 32)) == ((uint8_t)0))&1))) {
    goto _375;
  } else {
    goto _377;
  }

_377:
  _374 =  /*tail*/ puts(((&_OC_str_OC_7.array[((int32_t)0)])));
  goto _375;

_375:
  return;
}


static void avdtp_discover_cmd(struct l_struct_struct_OC_avdtp* _378, uint8_t _379) {
  struct l_struct_struct_OC__avdtp_send_info _380;    /* Address-exposed local */
  uint8_t* _381;
  struct l_struct_struct_OC__avdtp_local_sep* _382;
  struct l_struct_struct_OC__avdtp_local_sep* _383;
  uint32_t _384;
  uint32_t _384__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep* _385;
  struct l_struct_struct_OC__avdtp_local_sep* _385__PHI_TEMPORARY;
  uint16_t _386;
  uint32_t _387;
  uint32_t _388;
  uint32_t _388__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep* _389;
  uint8_t* _390;
  uint8_t _391;
  uint16_t* _392;
  uint16_t _393;

  _381 = memset((((uint8_t*)(&_380))), 0, 128);
  _382 = (&_378->field0.array[((int32_t)0)]);
  _383 = (&_378->field0.array[((int32_t)2)]);
  _384__PHI_TEMPORARY = 0;   /* for PHI node */
  _385__PHI_TEMPORARY = _382;   /* for PHI node */
  goto _394;

  do {     /* Syntactic loop '' to make GCC happy */
_394:
  _384 = _384__PHI_TEMPORARY;
  _385 = _385__PHI_TEMPORARY;
  _386 = *((&_385->field2.field0));
  if (((((llvm_and_u16(_386, 252)) == ((uint16_t)0))&1))) {
    _388__PHI_TEMPORARY = _384;   /* for PHI node */
    goto _395;
  } else {
    goto _396;
  }

_396:
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_380.field1.array[((int32_t)(_384 << 1))]))))) = _386;
  _387 = llvm_add_u32(_384, 1);
  _388__PHI_TEMPORARY = _387;   /* for PHI node */
  goto _395;

_395:
  _388 = _388__PHI_TEMPORARY;
  _389 = (&_385[((int32_t)1)]);
  if ((((((uint32_t)_389) < ((uint32_t)_383))&1))) {
    _384__PHI_TEMPORARY = _388;   /* for PHI node */
    _385__PHI_TEMPORARY = _389;   /* for PHI node */
    goto _394;
  } else {
    goto _397;
  }

  } while (1); /* end of syntactic loop '' */
_397:
  _390 = (&_378[((int32_t)-1)].field1.field5.array[((int32_t)18)]);
  _391 = *_390;
  if ((((((uint8_t)(llvm_and_u8(_391, 30))) > ((uint8_t)((uint8_t)4)))&1))) {
    goto _398;
  } else {
    goto _399;
  }

_398:
  *_390 = (llvm_and_u8(_391, -31));
  goto _399;

_399:
  avdtp_send(_378, (&_380), _379, 2, 1, (_388 << 1));
  _392 = (&_378->field1.field8);
  _393 = *_392;
  *_392 = (llvm_or_u16(_393, 16384u));
}


static void avdtp_getcap_cmd(struct l_struct_struct_OC_avdtp* _400, uint8_t _401, struct l_struct_struct_OC__seid_req* _402, uint32_t _403, uint8_t _404) {
  uint8_t _405;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _406;    /* Address-exposed local */
  uint8_t* _407;
  uint8_t* _408;
  uint8_t _409;
  uint8_t _410;
  uint32_t _411;
  struct l_struct_struct_OC__avdtp_local_sep* _412;
  struct l_struct_struct_OC__avdtp_local_sep* _413;
  struct l_struct_struct_OC__avdtp_local_sep* _414;
  struct l_struct_struct_OC__avdtp_local_sep* _414__PHI_TEMPORARY;
  uint16_t _415;
  struct l_struct_struct_OC__avdtp_local_sep* _416;
  struct l_struct_struct_OC__avdtp_sep_ind* _417;
  l_fptr_5* _418;
  uint8_t _419;
  uint8_t _420;
  uint32_t _421;
  uint8_t _422;
  uint8_t _422__PHI_TEMPORARY;

  _407 = memset((((uint8_t*)(&_406))), 0, 128);
  _408 = (&_406.field1.array[((int32_t)0)]);
  if ((((_403 == 0u)&1))) {
    _422__PHI_TEMPORARY = 17;   /* for PHI node */
    goto _423;
  } else {
    goto _424;
  }

_424:
  _409 = *((&_402->field0));
  _410 = llvm_lshr_u8(_409, 2);
  _411 = ((uint32_t)(uint8_t)_410);
  _412 = (&_400->field0.array[((int32_t)0)]);
  _413 = (&_400->field0.array[((int32_t)2)]);
  _414__PHI_TEMPORARY = _412;   /* for PHI node */
  goto _425;

  do {     /* Syntactic loop '' to make GCC happy */
_425:
  _414 = _414__PHI_TEMPORARY;
  _415 = *((&_414->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_415, 2)), 63)))) == _411)&1))) {
    goto _426;
  } else {
    goto _427;
  }

_427:
  _416 = (&_414[((int32_t)1)]);
  if ((((((uint32_t)_416) < ((uint32_t)_413))&1))) {
    _414__PHI_TEMPORARY = _416;   /* for PHI node */
    goto _425;
  } else {
    goto _428;
  }

  } while (1); /* end of syntactic loop '' */
_426:
  if ((((_414 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _422__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _423;
  } else {
    goto _429;
  }

_429:
  _417 = *((&_414->field0));
  _418 = *((&_417->field0));
  _419 = _418(_410, _408, (&_405));
  _420 = _405;
  _421 = ((uint32_t)(uint8_t)_420);
  if ((((_404 == ((uint8_t)0))&1))) {
    goto _430;
  } else {
    goto _431;
  }

_431:
  avdtp_send(_400, (&_406), _401, 2, 12, _421);
  goto _432;

_430:
  avdtp_send(_400, (&_406), _401, 2, 2, _421);
  goto _432;

_428:
  _422__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _423;

_423:
  _422 = _422__PHI_TEMPORARY;
  *_408 = _422;
  if ((((_404 == ((uint8_t)0))&1))) {
    goto _433;
  } else {
    goto _434;
  }

_434:
  avdtp_send(_400, (&_406), _401, 3, 12, 1);
  goto _432;

_433:
  avdtp_send(_400, (&_406), _401, 3, 2, 1);
  goto _432;

_432:
  return;
}


static void avdtp_setconf_cmd(struct l_struct_struct_OC_avdtp* _435, uint8_t _436, uint8_t* _437, uint32_t _438) {
  struct l_struct_struct_OC__avdtp_send_info _439;    /* Address-exposed local */
  uint8_t* _440;
  uint8_t* _441;
  uint16_t* _442;
  uint16_t _443;
  struct l_struct_struct_OC__avdtp_local_sep* _444;
  struct l_struct_struct_OC__avdtp_local_sep* _445;
  struct l_struct_struct_OC__avdtp_local_sep* _446;
  struct l_struct_struct_OC__avdtp_local_sep* _446__PHI_TEMPORARY;
  uint16_t* _447;
  uint16_t _448;
  struct l_struct_struct_OC__avdtp_local_sep* _449;
  uint8_t* _450;
  uint8_t _451;
  uint16_t _452;
  uint8_t* _453;
  uint8_t _454;
  uint8_t* _455;
  uint8_t _456;
  uint8_t _457;
  uint32_t _458;
  uint8_t _459;
  uint32_t _460;
  struct l_struct_struct_OC__avdtp_sep_ind* _461;
  l_fptr_6* _462;
  uint8_t _463;
  uint16_t _464;
  uint8_t _465;
  uint8_t _466;
  uint8_t _466__PHI_TEMPORARY;

  _440 = memset((((uint8_t*)(&_439))), 0, 128);
  _441 = (&_439.field1.array[((int32_t)0)]);
  if ((((((uint32_t)_438) < ((uint32_t)2u))&1))) {
    _466__PHI_TEMPORARY = 17;   /* for PHI node */
    goto _467;
  } else {
    goto _468;
  }

_468:
  _442 = ((uint16_t*)_437);
  _443 = __UNALIGNED_LOAD__(uint16_t, 1, _442);
  _444 = (&_435->field0.array[((int32_t)0)]);
  _445 = (&_435->field0.array[((int32_t)2)]);
  _446__PHI_TEMPORARY = _444;   /* for PHI node */
  goto _469;

  do {     /* Syntactic loop '' to make GCC happy */
_469:
  _446 = _446__PHI_TEMPORARY;
  _447 = (&_446->field2.field0);
  _448 = *_447;
  if (((((llvm_and_u16((llvm_xor_u16(_448, _443)), 252)) == ((uint16_t)0))&1))) {
    goto _470;
  } else {
    goto _471;
  }

_471:
  _449 = (&_446[((int32_t)1)]);
  if ((((((uint32_t)_449) < ((uint32_t)_445))&1))) {
    _446__PHI_TEMPORARY = _449;   /* for PHI node */
    goto _469;
  } else {
    goto _472;
  }

  } while (1); /* end of syntactic loop '' */
_470:
  if ((((_446 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _466__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _467;
  } else {
    goto _473;
  }

_473:
  if (((((llvm_and_u16(_448, 2)) == ((uint16_t)0))&1))) {
    goto _474;
  } else {
    _466__PHI_TEMPORARY = 19;   /* for PHI node */
    goto _467;
  }

_474:
  _450 = (&_435->field1.field0.field0);
  _451 = *_450;
  *_450 = (llvm_or_u8((llvm_and_u8((((uint8_t)(llvm_lshr_u16(_443, 10)))), 15)), (llvm_and_u8(_451, -16))));
  *((&_435->field1.field6)) = 0;
  _452 = __UNALIGNED_LOAD__(uint16_t, 1, _442);
  _453 = (&_435->field1.field4.array[((int32_t)0)].field0);
  _454 = *_453;
  *_453 = (llvm_or_u8((llvm_and_u8((((uint8_t)(llvm_lshr_u16(_452, 8)))), -4)), (llvm_and_u8(_454, 3))));
  *((&_435->field1.field1)) = _446;
  _455 = (&_446->field3);
  _456 = *_455;
  switch ((((((uint8_t)(llvm_lshr_u8(_456, 4))))&15))) {
  default:
    goto _475;
  case ((uint8_t)0):
    goto _476;
  case ((uint8_t)2):
    goto _477;
  }

_476:
  _457 = l2cap_debug_enable;
  if ((((((int8_t)_457) < ((int8_t)((uint8_t)0)))&1))) {
    goto _478;
  } else {
    goto _475;
  }

_478:
  _458 =  /*tail*/ puts(((&str_OC_29.array[((int32_t)0)])));
  goto _475;

_477:
  _459 = l2cap_debug_enable;
  if ((((((int8_t)_459) < ((int8_t)((uint8_t)0)))&1))) {
    goto _479;
  } else {
    goto _475;
  }

_479:
  _460 =  /*tail*/ puts(((&str_OC_28.array[((int32_t)0)])));
  goto _475;

_475:
  _461 = *((&_446->field0));
  _462 = *((&_461->field1));
  if ((((_462 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _480;
  } else {
    goto _481;
  }

_481:
  _463 =  /*tail*/ _462(_446, ((&_437[((int32_t)2)])), (((uint8_t)(llvm_add_u32(_438, 254)))), ((uint8_t*)/*NULL*/0));
  if ((((_463 == ((uint8_t)0))&1))) {
    _466__PHI_TEMPORARY = 35;   /* for PHI node */
    goto _467;
  } else {
    goto _480;
  }

_480:
  avdtp_send(_435, (&_439), _436, 2, 3, 0);
  _464 = *_447;
  *_447 = (llvm_or_u16(_464, 2));
  _465 = *_455;
  *_455 = (llvm_or_u8((llvm_and_u8(_465, -16)), 1));
  goto _482;

_472:
  _466__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _467;

_467:
  _466 = _466__PHI_TEMPORARY;
  *((&_439.field1.array[((int32_t)1)])) = _466;
  *_441 = 7;
  avdtp_send(_435, (&_439), _436, 3, 3, 2);
  goto _482;

_482:
  return;
}


static void avdtp_getconf_cmd(struct l_struct_struct_OC_avdtp* _483, uint8_t _484, struct l_struct_struct_OC__seid_req* _485, uint32_t _486) {
  uint8_t _487;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _488;    /* Address-exposed local */
  uint8_t* _489;
  uint8_t* _490;
  uint8_t _491;
  uint8_t _492;
  uint32_t _493;
  struct l_struct_struct_OC__avdtp_local_sep* _494;
  struct l_struct_struct_OC__avdtp_local_sep* _495;
  struct l_struct_struct_OC__avdtp_local_sep* _496;
  struct l_struct_struct_OC__avdtp_local_sep* _496__PHI_TEMPORARY;
  uint16_t _497;
  struct l_struct_struct_OC__avdtp_local_sep* _498;
  struct l_struct_struct_OC__avdtp_sep_ind* _499;
  l_fptr_5* _500;
  uint8_t _501;
  uint8_t _502;
  uint32_t _503;
  uint32_t _504;
  uint32_t _504__PHI_TEMPORARY;
  uint8_t _505;
  uint8_t _505__PHI_TEMPORARY;

  _487 = 0;
  _489 = memset((((uint8_t*)(&_488))), 0, 128);
  _490 = (&_488.field1.array[((int32_t)0)]);
  if ((((_486 == 0u)&1))) {
    _505__PHI_TEMPORARY = 17;   /* for PHI node */
    goto _506;
  } else {
    goto _507;
  }

_507:
  _491 = *((&_485->field0));
  _492 = llvm_lshr_u8(_491, 2);
  _493 = ((uint32_t)(uint8_t)_492);
  _494 = (&_483->field0.array[((int32_t)0)]);
  _495 = (&_483->field0.array[((int32_t)2)]);
  _496__PHI_TEMPORARY = _494;   /* for PHI node */
  goto _508;

  do {     /* Syntactic loop '' to make GCC happy */
_508:
  _496 = _496__PHI_TEMPORARY;
  _497 = *((&_496->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_497, 2)), 63)))) == _493)&1))) {
    goto _509;
  } else {
    goto _510;
  }

_510:
  _498 = (&_496[((int32_t)1)]);
  if ((((((uint32_t)_498) < ((uint32_t)_495))&1))) {
    _496__PHI_TEMPORARY = _498;   /* for PHI node */
    goto _508;
  } else {
    goto _511;
  }

  } while (1); /* end of syntactic loop '' */
_509:
  if ((((_496 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _505__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _506;
  } else {
    goto _512;
  }

_512:
  _499 = *((&_496->field0));
  _500 = *((&_499->field0));
  if ((((_500 == ((l_fptr_5*)/*NULL*/0))&1))) {
    _504__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _513;
  } else {
    goto _514;
  }

_514:
  _501 = _500(_492, _490, (&_487));
  _502 = _487;
  _503 = ((uint32_t)(uint8_t)_502);
  _504__PHI_TEMPORARY = _503;   /* for PHI node */
  goto _513;

_513:
  _504 = _504__PHI_TEMPORARY;
  avdtp_send(_483, (&_488), _484, 2, 4, _504);
  goto _515;

_511:
  _505__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _506;

_506:
  _505 = _505__PHI_TEMPORARY;
  *_490 = _505;
  avdtp_send(_483, (&_488), _484, 3, 4, 1);
  goto _515;

_515:
  return;
}


static void avdtp_reconf_cmd(struct l_struct_struct_OC_avdtp* _516, uint8_t _517, uint8_t* _518, uint32_t _519) {
  struct l_struct_struct_OC__avdtp_send_info _520;    /* Address-exposed local */
  uint8_t* _521;
  uint8_t* _522;
  uint8_t _523;
  uint32_t _524;
  struct l_struct_struct_OC__avdtp_local_sep* _525;
  struct l_struct_struct_OC__avdtp_local_sep* _526;
  struct l_struct_struct_OC__avdtp_local_sep* _527;
  struct l_struct_struct_OC__avdtp_local_sep* _527__PHI_TEMPORARY;
  uint16_t _528;
  struct l_struct_struct_OC__avdtp_local_sep* _529;
  uint8_t* _530;
  uint8_t _531;
  struct l_struct_struct_OC__avdtp_sep_ind* _532;
  l_fptr_6* _533;
  uint8_t _534;
  uint32_t _535;
  uint32_t _535__PHI_TEMPORARY;

  _521 = memset((((uint8_t*)(&_520))), 0, 128);
  _522 = (&_520.field1.array[((int32_t)0)]);
  if ((((((uint32_t)_519) < ((uint32_t)3u))&1))) {
    goto _536;
  } else {
    goto _537;
  }

_536:
  *_522 = 17;
  _535__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _538;

_537:
  _523 = *_518;
  _524 = ((uint32_t)(uint8_t)(llvm_lshr_u8(_523, 2)));
  _525 = (&_516->field0.array[((int32_t)0)]);
  _526 = (&_516->field0.array[((int32_t)2)]);
  _527__PHI_TEMPORARY = _525;   /* for PHI node */
  goto _539;

  do {     /* Syntactic loop '' to make GCC happy */
_539:
  _527 = _527__PHI_TEMPORARY;
  _528 = *((&_527->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_528, 2)), 63)))) == _524)&1))) {
    goto _540;
  } else {
    goto _541;
  }

_541:
  _529 = (&_527[((int32_t)1)]);
  if ((((((uint32_t)_529) < ((uint32_t)_526))&1))) {
    _527__PHI_TEMPORARY = _529;   /* for PHI node */
    goto _539;
  } else {
    goto _542;
  }

  } while (1); /* end of syntactic loop '' */
_540:
  if ((((_527 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _543;
  } else {
    goto _544;
  }

_542:
  goto _543;

_543:
  *_522 = 0;
  *((&_520.field1.array[((int32_t)1)])) = 18;
  _535__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _538;

_544:
  _530 = (&_518[((int32_t)1)]);
  _531 = *_530;
  if ((((((uint8_t)_531) > ((uint8_t)((uint8_t)8)))&1))) {
    goto _545;
  } else {
    goto _546;
  }

_545:
  *_522 = _531;
  *((&_520.field1.array[((int32_t)1)])) = 23;
  _535__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _538;

_546:
  switch (_531) {
  default:
    goto _547;
  case ((uint8_t)7):
    goto _548;
  case ((uint8_t)4):
    goto _548;
  }

_547:
  *_522 = _531;
  *((&_520.field1.array[((int32_t)1)])) = 26;
  _535__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _538;

_548:
  _532 = *((&_527->field0));
  _533 = *((&_532->field1));
  if ((((_533 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _549;
  } else {
    goto _550;
  }

_550:
  _534 =  /*tail*/ _533(_527, _530, (((uint8_t)(llvm_add_u32(_519, 255)))), ((uint8_t*)/*NULL*/0));
  if ((((_534 == ((uint8_t)0))&1))) {
    goto _551;
  } else {
    goto _549;
  }

_551:
  *_522 = 7;
  *((&_520.field1.array[((int32_t)1)])) = 35;
  _535__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _538;

_549:
  avdtp_send(_516, (&_520), _517, 2, 5, 0);
  goto _552;

_538:
  _535 = _535__PHI_TEMPORARY;
  avdtp_send(_516, (&_520), _517, 3, 5, _535);
  goto _552;

_552:
  return;
}


static void avdtp_open_cmd(struct l_struct_struct_OC_avdtp* _553, uint8_t _554, struct l_struct_struct_OC__seid_req* _555) {
  struct l_struct_struct_OC__avdtp_send_info _556;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_stream* _557;
  uint8_t* _558;
  uint8_t* _559;
  uint8_t _560;
  uint32_t _561;
  struct l_struct_struct_OC__avdtp_local_sep* _562;
  struct l_struct_struct_OC__avdtp_local_sep* _563;
  struct l_struct_struct_OC__avdtp_local_sep* _564;
  struct l_struct_struct_OC__avdtp_local_sep* _564__PHI_TEMPORARY;
  uint16_t _565;
  struct l_struct_struct_OC__avdtp_local_sep* _566;
  uint8_t* _567;
  uint8_t _568;
  uint8_t* _569;
  uint8_t _570;
  struct l_struct_struct_OC__avdtp_sep_ind* _571;
  l_fptr_2* _572;
  uint8_t _573;
  uint8_t* _574;
  uint8_t _575;
  uint8_t _576;
  uint8_t _577;
  uint8_t _577__PHI_TEMPORARY;

  _557 = (&_553->field1.field0);
  _558 = memset((((uint8_t*)(&_556))), 0, 128);
  _559 = (&_556.field1.array[((int32_t)0)]);
  _560 = *((&_555->field0));
  _561 = ((uint32_t)(uint8_t)(llvm_lshr_u8(_560, 2)));
  _562 = (&_553->field0.array[((int32_t)0)]);
  _563 = (&_553->field0.array[((int32_t)2)]);
  _564__PHI_TEMPORARY = _562;   /* for PHI node */
  goto _578;

  do {     /* Syntactic loop '' to make GCC happy */
_578:
  _564 = _564__PHI_TEMPORARY;
  _565 = *((&_564->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_565, 2)), 63)))) == _561)&1))) {
    goto _579;
  } else {
    goto _580;
  }

_580:
  _566 = (&_564[((int32_t)1)]);
  if ((((((uint32_t)_566) < ((uint32_t)_563))&1))) {
    _564__PHI_TEMPORARY = _566;   /* for PHI node */
    goto _578;
  } else {
    goto _581;
  }

  } while (1); /* end of syntactic loop '' */
_579:
  if ((((_564 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _577__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _582;
  } else {
    goto _583;
  }

_583:
  _567 = (&_564->field3);
  _568 = *_567;
  if (((((llvm_and_u8(_568, 15)) == ((uint8_t)1))&1))) {
    goto _584;
  } else {
    _577__PHI_TEMPORARY = 49;   /* for PHI node */
    goto _582;
  }

_584:
  _569 = (&_553[((int32_t)-1)].field1.field5.array[((int32_t)18)]);
  _570 = *_569;
  *_569 = (llvm_and_u8(_570, -31));
  _571 = *((&_564->field0));
  _572 = *((&_571->field2));
  if ((((_572 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _585;
  } else {
    goto _586;
  }

_586:
  _573 =  /*tail*/ _572(_564, _557, 1);
  goto _585;

_585:
  avdtp_send(_553, (&_556), _554, 2, 6, 0);
  _574 = (&_557->field0);
  _575 = *_574;
  *_574 = (llvm_or_u8(_575, 32));
  _576 = *_567;
  *_567 = (llvm_or_u8((llvm_and_u8(_576, -16)), 2));
  goto _587;

_581:
  _577__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _582;

_582:
  _577 = _577__PHI_TEMPORARY;
  *_559 = _577;
  avdtp_send(_553, (&_556), _554, 3, 6, 1);
  goto _587;

_587:
  return;
}


static void avdtp_start_cmd(struct l_struct_struct_OC_avdtp* _588, uint8_t _589, struct l_struct_struct_OC__start_req* _590) {
  struct l_struct_struct_OC__avdtp_send_info _591;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_stream* _592;
  uint8_t* _593;
  uint8_t* _594;
  uint8_t _595;
  uint8_t _596;
  uint32_t _597;
  struct l_struct_struct_OC__avdtp_local_sep* _598;
  struct l_struct_struct_OC__avdtp_local_sep* _599;
  struct l_struct_struct_OC__avdtp_local_sep* _600;
  struct l_struct_struct_OC__avdtp_local_sep* _600__PHI_TEMPORARY;
  uint16_t _601;
  struct l_struct_struct_OC__avdtp_local_sep* _602;
  uint8_t* _603;
  uint8_t _604;
  uint8_t* _605;
  uint8_t _606;
  struct l_struct_struct_OC__avdtp_sep_ind* _607;
  l_fptr_1* _608;
  uint8_t _609;
  uint8_t _610;
  uint8_t _611;
  uint32_t _612;
  uint8_t _613;
  struct l_struct_struct_OC__avdtp_local_sep* _614;
  struct l_struct_struct_OC__avdtp_local_sep* _614__PHI_TEMPORARY;
  uint8_t _615;
  uint8_t _615__PHI_TEMPORARY;
  uint8_t _616;
  uint8_t _617;
  uint32_t _618;

  _592 = (&_588->field1.field0);
  _593 = memset((((uint8_t*)(&_591))), 0, 128);
  _594 = (&_591.field1.array[((int32_t)0)]);
  _595 = *((&_590->field0.field0));
  _596 = llvm_lshr_u8(_595, 2);
  _597 = ((uint32_t)(uint8_t)_596);
  _598 = (&_588->field0.array[((int32_t)0)]);
  _599 = (&_588->field0.array[((int32_t)2)]);
  _600__PHI_TEMPORARY = _598;   /* for PHI node */
  goto _619;

  do {     /* Syntactic loop '' to make GCC happy */
_619:
  _600 = _600__PHI_TEMPORARY;
  _601 = *((&_600->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_601, 2)), 63)))) == _597)&1))) {
    goto _620;
  } else {
    goto _621;
  }

_621:
  _602 = (&_600[((int32_t)1)]);
  if ((((((uint32_t)_602) < ((uint32_t)_599))&1))) {
    _600__PHI_TEMPORARY = _602;   /* for PHI node */
    goto _619;
  } else {
    goto _622;
  }

  } while (1); /* end of syntactic loop '' */
_620:
  if ((((_600 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _614__PHI_TEMPORARY = ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0);   /* for PHI node */
    _615__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _623;
  } else {
    goto _624;
  }

_624:
  _603 = (&_600->field3);
  _604 = *_603;
  if (((((llvm_and_u8(_604, 15)) == ((uint8_t)2))&1))) {
    goto _625;
  } else {
    _614__PHI_TEMPORARY = _600;   /* for PHI node */
    _615__PHI_TEMPORARY = 49;   /* for PHI node */
    goto _623;
  }

_625:
  _605 = (&_592->field0);
  _606 = *_605;
  *_605 = (llvm_or_u8(_606, 64u));
  _607 = *((&_600->field0));
  _608 = *((&_607->field3));
  if ((((_608 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _626;
  } else {
    goto _627;
  }

_627:
  _609 =  /*tail*/ _608(_600, _592);
  if ((((_609 == ((uint8_t)0))&1))) {
    _614__PHI_TEMPORARY = _600;   /* for PHI node */
    _615__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _623;
  } else {
    goto _626;
  }

_626:
  _610 =  /*tail*/ lmp_get_conn_num();
  if ((((_610 == ((uint8_t)1))&1))) {
    goto _628;
  } else {
    goto _629;
  }

_628:
  _611 =  /*tail*/ lmp_get_esco_conn_statu();
  if ((((_611 == ((uint8_t)0))&1))) {
    goto _629;
  } else {
    goto _630;
  }

_630:
  _612 =  /*tail*/ puts(((&str_OC_30.array[((int32_t)0)])));
  goto _629;

_629:
  _613 = *_603;
  *_603 = (llvm_or_u8((llvm_and_u8(_613, -16)), 3));
  avdtp_send(_588, (&_591), _589, 2, 7, 0);
  goto _631;

_622:
  _614__PHI_TEMPORARY = ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0);   /* for PHI node */
  _615__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _623;

_623:
  _614 = _614__PHI_TEMPORARY;
  _615 = _615__PHI_TEMPORARY;
  *_594 = (llvm_shl_u8(_596, 2));
  *((&_591.field1.array[((int32_t)1)])) = _615;
  _616 = l2cap_debug_enable;
  if ((((((int8_t)_616) < ((int8_t)((uint8_t)0)))&1))) {
    goto _632;
  } else {
    goto _633;
  }

_632:
  _617 = *((&_614->field3));
  _618 =  /*tail*/ printf(((&_OC_str_OC_17.array[((int32_t)0)])), (((uint32_t)(uint8_t)_615)), (((uint32_t)(uint8_t)(llvm_and_u8(_617, 15)))));
  goto _633;

_633:
  avdtp_send(_588, (&_591), _589, 3, 7, 2);
  goto _631;

_631:
  return;
}


static uint8_t avdtp_close_cmd(struct l_struct_struct_OC_avdtp* _634, uint8_t _635, struct l_struct_struct_OC__seid_req* _636, uint32_t _637) {
  struct l_struct_struct_OC__avdtp_send_info _638;    /* Address-exposed local */
  uint8_t* _639;
  uint8_t* _640;
  uint8_t _641;
  uint32_t _642;
  struct l_struct_struct_OC__avdtp_local_sep* _643;
  struct l_struct_struct_OC__avdtp_local_sep* _644;
  struct l_struct_struct_OC__avdtp_local_sep* _645;
  struct l_struct_struct_OC__avdtp_local_sep* _645__PHI_TEMPORARY;
  uint16_t* _646;
  uint16_t _647;
  struct l_struct_struct_OC__avdtp_local_sep* _648;
  uint8_t* _649;
  uint8_t _650;
  struct l_struct_struct_OC__avdtp_sep_ind* _651;
  l_fptr_7* _652;
  uint8_t _653;
  uint16_t* _654;
  uint16_t _655;
  uint8_t _656;
  uint16_t _657;
  uint8_t _658;
  uint8_t _658__PHI_TEMPORARY;
  uint8_t _659;
  uint8_t _659__PHI_TEMPORARY;

  _639 = memset((((uint8_t*)(&_638))), 0, 128);
  _640 = (&_638.field1.array[((int32_t)0)]);
  if ((((_637 == 0u)&1))) {
    _659__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _660;
  } else {
    goto _661;
  }

_661:
  _641 = *((&_636->field0));
  _642 = ((uint32_t)(uint8_t)(llvm_lshr_u8(_641, 2)));
  _643 = (&_634->field0.array[((int32_t)0)]);
  _644 = (&_634->field0.array[((int32_t)2)]);
  _645__PHI_TEMPORARY = _643;   /* for PHI node */
  goto _662;

  do {     /* Syntactic loop '' to make GCC happy */
_662:
  _645 = _645__PHI_TEMPORARY;
  _646 = (&_645->field2.field0);
  _647 = *_646;
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_647, 2)), 63)))) == _642)&1))) {
    goto _663;
  } else {
    goto _664;
  }

_664:
  _648 = (&_645[((int32_t)1)]);
  if ((((((uint32_t)_648) < ((uint32_t)_644))&1))) {
    _645__PHI_TEMPORARY = _648;   /* for PHI node */
    goto _662;
  } else {
    goto _665;
  }

  } while (1); /* end of syntactic loop '' */
_663:
  if ((((_645 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _658__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _666;
  } else {
    goto _667;
  }

_667:
  _649 = (&_645->field3);
  _650 = *_649;
  if (((((llvm_and_u8(_650, 14)) == ((uint8_t)2))&1))) {
    goto _668;
  } else {
    _658__PHI_TEMPORARY = 49;   /* for PHI node */
    goto _666;
  }

_668:
  _651 = *((&_645->field0));
  _652 = *((&_651->field5));
  if ((((_652 == ((l_fptr_7*)/*NULL*/0))&1))) {
    goto _669;
  } else {
    goto _670;
  }

_670:
  _653 = _652(_645, ((&_634->field1.field0)), _640);
  if ((((_653 == ((uint8_t)0))&1))) {
    goto _671;
  } else {
    goto _669;
  }

_669:
  _654 = (&_634->field1.field8);
  _655 = *_654;
  *_654 = (llvm_and_u16(_655, 49151u));
  _656 = *_649;
  *_649 = (llvm_or_u8((llvm_and_u8(_656, -16)), 4));
  _657 = *_646;
  *_646 = (llvm_and_u16(_657, -3));
  avdtp_send(_634, (&_638), _635, 2, 8, 0);
  _659__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _660;

_665:
  _658__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _666;

_666:
  _658 = _658__PHI_TEMPORARY;
  *_640 = _658;
  goto _671;

_671:
  avdtp_send(_634, (&_638), _635, 3, 8, 1);
  _659__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _660;

_660:
  _659 = _659__PHI_TEMPORARY;
  return _659;
}


static uint8_t avdtp_suspend_cmd(struct l_struct_struct_OC_avdtp* _672, uint8_t _673, struct l_struct_struct_OC__suspend_req* _674, uint32_t _675) {
  struct l_struct_struct_OC__avdtp_send_info _676;    /* Address-exposed local */
  uint8_t* _677;
  uint8_t* _678;
  uint8_t* _679;
  uint8_t _680;
  uint32_t _681;
  struct l_struct_struct_OC__avdtp_local_sep* _682;
  struct l_struct_struct_OC__avdtp_local_sep* _683;
  struct l_struct_struct_OC__avdtp_local_sep* _684;
  struct l_struct_struct_OC__avdtp_local_sep* _684__PHI_TEMPORARY;
  uint16_t _685;
  struct l_struct_struct_OC__avdtp_local_sep* _686;
  uint8_t* _687;
  uint8_t _688;
  uint8_t _689;
  uint32_t _690;
  uint8_t _691;
  uint32_t _692;
  struct l_struct_struct_OC__avdtp_sep_ind* _693;
  l_fptr_1* _694;
  uint8_t _695;
  uint8_t _696;
  uint8_t _697;
  uint8_t _697__PHI_TEMPORARY;
  uint8_t _698;
  uint8_t _698__PHI_TEMPORARY;
  uint8_t _699;
  uint8_t _700;
  uint8_t _700__PHI_TEMPORARY;

  _677 = memset((((uint8_t*)(&_676))), 0, 128);
  _678 = (&_676.field1.array[((int32_t)0)]);
  if ((((_675 == 0u)&1))) {
    _700__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _701;
  } else {
    goto _702;
  }

_702:
  _679 = (&_674->field0.field0);
  _680 = *_679;
  _681 = ((uint32_t)(uint8_t)(llvm_lshr_u8(_680, 2)));
  _682 = (&_672->field0.array[((int32_t)0)]);
  _683 = (&_672->field0.array[((int32_t)2)]);
  _684__PHI_TEMPORARY = _682;   /* for PHI node */
  goto _703;

  do {     /* Syntactic loop '' to make GCC happy */
_703:
  _684 = _684__PHI_TEMPORARY;
  _685 = *((&_684->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_685, 2)), 63)))) == _681)&1))) {
    goto _704;
  } else {
    goto _705;
  }

_705:
  _686 = (&_684[((int32_t)1)]);
  if ((((((uint32_t)_686) < ((uint32_t)_683))&1))) {
    _684__PHI_TEMPORARY = _686;   /* for PHI node */
    goto _703;
  } else {
    goto _706;
  }

  } while (1); /* end of syntactic loop '' */
_704:
  if ((((_684 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    _698__PHI_TEMPORARY = 18;   /* for PHI node */
    goto _707;
  } else {
    goto _708;
  }

_708:
  _687 = (&_684->field3);
  _688 = *_687;
  _689 = llvm_and_u8(_688, 15);
  _690 = ((uint32_t)(uint8_t)_689);
  if ((((_689 == ((uint8_t)3))&1))) {
    goto _709;
  } else {
    goto _710;
  }

_710:
  _691 = l2cap_debug_enable;
  if ((((((int8_t)_691) < ((int8_t)((uint8_t)0)))&1))) {
    goto _711;
  } else {
    _698__PHI_TEMPORARY = 49;   /* for PHI node */
    goto _707;
  }

_711:
  _692 =  /*tail*/ printf(((&_OC_str_OC_18.array[((int32_t)0)])), _690);
  _698__PHI_TEMPORARY = 49;   /* for PHI node */
  goto _707;

_709:
  _693 = *((&_684->field0));
  _694 = *((&_693->field4));
  if ((((_694 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _697__PHI_TEMPORARY = _688;   /* for PHI node */
    goto _712;
  } else {
    goto _713;
  }

_713:
  _695 =  /*tail*/ _694(_684, ((&_672->field1.field0)));
  if ((((_695 == ((uint8_t)0))&1))) {
    _698__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _707;
  } else {
    goto _714;
  }

_714:
  _696 = *_687;
  _697__PHI_TEMPORARY = _696;   /* for PHI node */
  goto _712;

_712:
  _697 = _697__PHI_TEMPORARY;
  *_687 = (llvm_or_u8((llvm_and_u8(_697, -16)), 2));
  avdtp_send(_672, (&_676), _673, 2, 9, 0);
  _700__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _701;

_706:
  _698__PHI_TEMPORARY = 18;   /* for PHI node */
  goto _707;

_707:
  _698 = _698__PHI_TEMPORARY;
  *((&_676.field1.array[((int32_t)1)])) = _698;
  _699 = *_679;
  *_678 = (llvm_and_u8(_699, -4));
  avdtp_send(_672, (&_676), _673, 3, 9, 2);
  _700__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _701;

_701:
  _700 = _700__PHI_TEMPORARY;
  return _700;
}


static void avdtp_abort_cmd(struct l_struct_struct_OC_avdtp* _715, uint8_t _716, struct l_struct_struct_OC__seid_req* _717, uint32_t _718) {
  struct l_struct_struct_OC__avdtp_send_info _719;    /* Address-exposed local */
  uint8_t* _720;
  uint8_t _721;
  uint32_t _722;
  struct l_struct_struct_OC__avdtp_local_sep* _723;
  struct l_struct_struct_OC__avdtp_local_sep* _724;
  struct l_struct_struct_OC__avdtp_local_sep* _725;
  struct l_struct_struct_OC__avdtp_local_sep* _725__PHI_TEMPORARY;
  uint16_t _726;
  struct l_struct_struct_OC__avdtp_local_sep* _727;
  struct l_struct_struct_OC__avdtp_sep_ind* _728;
  l_fptr_3* _729;
  uint8_t* _730;
  uint8_t _731;

  _720 = memset((((uint8_t*)(&_719))), 0, 128);
  if ((((_718 == 0u)&1))) {
    goto _732;
  } else {
    goto _733;
  }

_733:
  _721 = *((&_717->field0));
  _722 = ((uint32_t)(uint8_t)(llvm_lshr_u8(_721, 2)));
  _723 = (&_715->field0.array[((int32_t)0)]);
  _724 = (&_715->field0.array[((int32_t)2)]);
  _725__PHI_TEMPORARY = _723;   /* for PHI node */
  goto _734;

  do {     /* Syntactic loop '' to make GCC happy */
_734:
  _725 = _725__PHI_TEMPORARY;
  _726 = *((&_725->field2.field0));
  if (((((((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_726, 2)), 63)))) == _722)&1))) {
    goto _735;
  } else {
    goto _736;
  }

_736:
  _727 = (&_725[((int32_t)1)]);
  if ((((((uint32_t)_727) < ((uint32_t)_724))&1))) {
    _725__PHI_TEMPORARY = _727;   /* for PHI node */
    goto _734;
  } else {
    goto _737;
  }

  } while (1); /* end of syntactic loop '' */
_735:
  if ((((_725 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _732;
  } else {
    goto _738;
  }

_738:
  avdtp_send(_715, (&_719), _716, 2, 10, 0);
  _728 = *((&_725->field0));
  _729 = *((&_728->field6));
  if ((((_729 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _739;
  } else {
    goto _740;
  }

_740:
  _729(_725);
  goto _739;

_739:
  _730 = (&_725->field3);
  _731 = *_730;
  *_730 = (llvm_or_u8((llvm_and_u8(_731, -16)), 5));
  goto _732;

_737:
  goto _732;

_732:
  return;
}


static void avdtp_get_capabilities_response(struct l_struct_struct_OC_avdtp* _741, uint8_t* _742, uint32_t _743, uint8_t _744) {
  struct l_struct_struct_OC__avdtp_send_info _745;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _746;    /* Address-exposed local */
  struct l_struct_struct_OC__avdtp_send_info _747;    /* Address-exposed local */
  __MSALIGN__(2) struct l_array_32_uint8_t _748 __attribute__((aligned(2)));    /* Address-exposed local */
  uint8_t* _749;
  uint8_t* _750;
  uint8_t* _751;
  struct l_struct_struct_OC__avdtp_local_sep** _752;
  struct l_struct_struct_OC__avdtp_local_sep* _753;
  uint8_t _754;
  uint8_t _755;
  uint32_t _756;
  uint8_t _757;
  struct l_struct_struct_OC__avdtp_local_sep* _758;
  struct l_struct_struct_OC__avdtp_local_sep* _759;
  uint8_t _760;
  struct l_struct_struct_OC__avdtp_local_sep* _761;
  struct l_struct_struct_OC__avdtp_local_sep* _761__PHI_TEMPORARY;
  uint8_t _762;
  uint32_t _763;
  struct l_struct_struct_OC__avdtp_sep_ind* _764;
  l_fptr_6* _765;
  uint8_t _766;
  uint8_t _767;
  uint16_t* _768;
  uint16_t _769;
  uint8_t _770;
  uint32_t _771;
  uint16_t _772;
  uint8_t* _773;
  uint16_t _774;
  uint16_t _775;
  uint16_t _775__PHI_TEMPORARY;
  uint8_t _776;
  uint8_t _777;
  uint32_t _778;
  uint16_t _779;
  uint16_t _780;
  uint16_t _780__PHI_TEMPORARY;
  uint8_t* _781;
  uint16_t _782;
  struct l_struct_struct_OC__avdtp_local_sep* _783;
  uint16_t* _784;
  uint16_t _785;
  uint16_t* _786;
  uint16_t* _786__PHI_TEMPORARY;
  uint16_t _787;
  uint16_t _787__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep* _788;
  uint8_t* _789;
  uint8_t* _790;
  uint16_t _791;
  uint8_t* _792;
  uint8_t* _793;
  uint8_t _794;
  uint8_t _795;
  uint16_t _796;
  uint8_t _797;
  uint8_t* _798;
  uint8_t _799;
  uint16_t _800;
  uint8_t* _801;
  uint8_t _802;
  uint8_t _803;
  uint8_t _803__PHI_TEMPORARY;
  uint32_t _804;
  uint8_t* _805;
  uint8_t* _806;
  uint8_t* _807;
  uint8_t* _808;
  uint8_t _809;
  uint8_t* _810;
  uint8_t _811;

  _749 = (&_748.array[((int32_t)0)]);
  _750 = (&_741->field1.field5.array[((int32_t)0)]);
  _751 = (&_741[((int32_t)-1)].field1.field5.array[((int32_t)12)]);
  _752 = (&_741->field1.field1);
  _753 = *_752;
  if ((((_753 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _812;
  } else {
    goto _813;
  }

_813:
  _754 = *((&_753->field3));
  if ((((((uint8_t)(llvm_add_u8((llvm_and_u8(_754, 15)), -1))) < ((uint8_t)((uint8_t)2)))&1))) {
    goto _814;
  } else {
    goto _812;
  }

_814:
  _755 = l2cap_debug_enable;
  if (((((llvm_and_u8(_755, 32)) == ((uint8_t)0))&1))) {
    goto _815;
  } else {
    goto _816;
  }

_816:
  _756 =  /*tail*/ puts(((&_OC_str_OC_21.array[((int32_t)0)])));
  goto _815;

_815:
  _757 =  /*tail*/ handle_a2dp_discover_flag((((struct l_array_6_uint8_t*)_751)), 1);
  goto _817;

_812:
  _758 = (&_741->field0.array[((int32_t)0)]);
  _759 = (&_741->field0.array[((int32_t)2)]);
  _760 = ((uint8_t)_743);
  _761__PHI_TEMPORARY = _758;   /* for PHI node */
  goto _818;

  do {     /* Syntactic loop '' to make GCC happy */
_818:
  _761 = _761__PHI_TEMPORARY;
  _762 = l2cap_debug_enable;
  if (((((llvm_and_u8(_762, 32)) == ((uint8_t)0))&1))) {
    goto _819;
  } else {
    goto _820;
  }

_820:
  _763 =  /*tail*/ puts(((&_OC_str_OC_22.array[((int32_t)0)])));
  goto _819;

_819:
  if ((((_761 == ((struct l_struct_struct_OC__avdtp_local_sep*)/*NULL*/0))&1))) {
    goto _821;
  } else {
    goto _822;
  }

_822:
  _764 = *((&_761->field0));
  if ((((_764 == ((struct l_struct_struct_OC__avdtp_sep_ind*)/*NULL*/0))&1))) {
    goto _821;
  } else {
    goto _823;
  }

_823:
  _765 = *((&_764->field1));
  _766 =  /*tail*/ _765(_761, _742, _760, _750);
  if ((((_766 == ((uint8_t)0))&1))) {
    goto _821;
  } else {
    goto _824;
  }

_821:
  _783 = (&_761[((int32_t)1)]);
  if ((((((uint32_t)_783) < ((uint32_t)_759))&1))) {
    _761__PHI_TEMPORARY = _783;   /* for PHI node */
    goto _818;
  } else {
    goto _825;
  }

  } while (1); /* end of syntactic loop '' */
_824:
  _767 = l2cap_debug_enable;
  _768 = (&_741->field1.field8);
  if ((((((int8_t)_767) < ((int8_t)((uint8_t)0)))&1))) {
    goto _826;
  } else {
    goto _827;
  }

_826:
  _769 = *_768;
  _770 = *((&_761->field3));
  _771 =  /*tail*/ printf(((&_OC_str_OC_23.array[((int32_t)0)])), (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_769, 4)), 15)))), (((uint32_t)(uint8_t)(llvm_lshr_u8(_770, 4)))));
  goto _827;

_827:
  _772 = *_768;
  switch ((((((uint8_t)(llvm_lshr_u16(_772, 8))))&15))) {
  default:
    goto _828;
  case ((uint8_t)-6):
    _775__PHI_TEMPORARY = _772;   /* for PHI node */
    goto _829;
  case ((uint8_t)-5):
    _775__PHI_TEMPORARY = _772;   /* for PHI node */
    goto _829;
  case ((uint8_t)-4):
    _775__PHI_TEMPORARY = _772;   /* for PHI node */
    goto _829;
  case ((uint8_t)-1):
    _775__PHI_TEMPORARY = _772;   /* for PHI node */
    goto _829;
  }

_828:
  _773 = memcpy(((&_761->field4.array[((int32_t)0)])), _750, 16);
  *_752 = _761;
  _774 = *_768;
  *((&_741->field1.field6)) = (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_774, 4)))), 15));
  _775__PHI_TEMPORARY = _774;   /* for PHI node */
  goto _829;

_829:
  _775 = _775__PHI_TEMPORARY;
  _776 = *((&_761->field3));
  if ((((((((llvm_and_u8(_776, -16)) != ((uint8_t)32))&1)) | ((((llvm_and_u16(_775, 3840)) == ((uint16_t)2816))&1)))&1))) {
    _786__PHI_TEMPORARY = _768;   /* for PHI node */
    _787__PHI_TEMPORARY = _775;   /* for PHI node */
    goto _830;
  } else {
    goto _831;
  }

_831:
  _777 = l2cap_debug_enable;
  if (((((llvm_and_u8(_777, 32)) == ((uint8_t)0))&1))) {
    _780__PHI_TEMPORARY = _775;   /* for PHI node */
    goto _832;
  } else {
    goto _833;
  }

_833:
  _778 =  /*tail*/ puts(((&_OC_str_OC_24.array[((int32_t)0)])));
  _779 = *_768;
  _780__PHI_TEMPORARY = _779;   /* for PHI node */
  goto _832;

_832:
  _780 = _780__PHI_TEMPORARY;
  *_768 = (llvm_or_u16((llvm_and_u16(_780, -3841)), 2560));
  _781 = memcpy(((&_761->field4.array[((int32_t)0)])), _750, 16);
  *_752 = _761;
  _782 = *_768;
  *((&_741->field1.field6)) = (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_782, 4)))), 15));
  _786__PHI_TEMPORARY = _768;   /* for PHI node */
  _787__PHI_TEMPORARY = _782;   /* for PHI node */
  goto _830;

_825:
  _784 = (&_741->field1.field8);
  _785 = *_784;
  _786__PHI_TEMPORARY = _784;   /* for PHI node */
  _787__PHI_TEMPORARY = _785;   /* for PHI node */
  goto _830;

_830:
  _786 = _786__PHI_TEMPORARY;
  _787 = _787__PHI_TEMPORARY;
  _788 = *_752;
  _789 = (&_788->field4.array[((int32_t)0)]);
  _790 = memcpy(_750, _789, 16);
  _791 = llvm_and_u16((llvm_add_u16((llvm_lshr_u16(_787, 4)), 1)), 15);
  *_786 = (llvm_or_u16((llvm_shl_u16(_791, 4)), (llvm_and_u16(_787, -241))));
  if ((((((uint16_t)_791) < ((uint16_t)(llvm_and_u16(_787, 15))))&1))) {
    goto _834;
  } else {
    goto _835;
  }

_835:
  _792 = (&_748.array[((int32_t)2)]);
  _793 = memset(_749, 0, 32);
  if (((((llvm_and_u16(_787, 16384u)) == ((uint16_t)0))&1))) {
    goto _836;
  } else {
    goto _817;
  }

_836:
  _794 = *((&_741->field1.field6));
  _795 = *((&_741->field1.field4.array[((int32_t)(((uint32_t)(uint8_t)_794)))].field0));
  _796 = *((&_788->field2.field0));
  *(((uint16_t*)(&_748))) = (llvm_or_u16((llvm_shl_u16((llvm_lshr_u16(_796, 2)), 10)), (((uint16_t)(uint8_t)(llvm_and_u8(_795, -4))))));
  *_792 = 1;
  _797 = *((&_788->field4.array[((int32_t)1)]));
  _798 = memcpy(((&_748.array[((int32_t)4)])), _789, (llvm_add_u32((((uint32_t)(uint8_t)_797)), 2)));
  _799 = llvm_add_u8(_797, 4);
  _800 = *(((uint16_t*)((&_741[((int32_t)-1)].field1.field5.array[((int32_t)118)]))));
  if ((((_800 == ((uint16_t)2))&1))) {
    goto _837;
  } else {
    _803__PHI_TEMPORARY = _799;   /* for PHI node */
    goto _838;
  }

_837:
  _801 = (&_792[((int32_t)(((uint32_t)(uint8_t)_799)))]);
  *_801 = 4;
  *((&_801[((int32_t)1)])) = 2;
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_801[((int32_t)2)]))))) = 2;
  _802 = llvm_add_u8(_797, 8);
  _803__PHI_TEMPORARY = _802;   /* for PHI node */
  goto _838;

_838:
  _803 = _803__PHI_TEMPORARY;
  _804 = llvm_add_u32((((uint32_t)(uint8_t)_803)), 2);
  _805 = memset((((uint8_t*)(&_747))), 0, 128);
  *((&_741->field1.field7)) = 3;
  _806 = memcpy(((&_747.field1.array[((int32_t)0)])), _749, _804);
  avdtp_send(_741, (&_747), 0, 0, 3, _804);
  goto _817;

_834:
  _807 = (&_741->field1.field4.array[((int32_t)(((uint32_t)(uint16_t)_791)))].field0);
  if ((((_744 == ((uint8_t)0))&1))) {
    goto _839;
  } else {
    goto _840;
  }

_840:
  _808 = memset((((uint8_t*)(&_746))), 0, 128);
  *((&_741->field1.field7)) = 12;
  _809 = *_807;
  *((&_746.field1.array[((int32_t)0)])) = _809;
  avdtp_send(_741, (&_746), 0, 0, 12, 1);
  goto _817;

_839:
  _810 = memset((((uint8_t*)(&_745))), 0, 128);
  *((&_741->field1.field7)) = 2;
  _811 = *_807;
  *((&_745.field1.array[((int32_t)0)])) = _811;
  avdtp_send(_741, (&_745), 0, 0, 2, 1);
  goto _817;

_817:
  return;
}

