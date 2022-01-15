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
struct l_struct_struct_OC_sdp_core_data_t;
struct l_struct_struct_OC_sdp_stack_t;
struct l_struct_struct_OC_profile_cmd_handle;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC__stack_config;
struct l_struct_union_OC_anon;
struct l_struct_struct_OC_hfp_ioctrl_str;
struct l_struct_struct_OC_spp_ioctrl_str;

/* Function definitions */
typedef void l_fptr_3(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_11(uint8_t*, uint32_t);

typedef void l_fptr_15(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef void l_fptr_1(void);

typedef uint32_t l_fptr_2(uint8_t*);

typedef uint32_t l_fptr_12(void);

typedef uint32_t l_fptr_4(uint8_t*, uint32_t);

typedef uint32_t l_fptr_16(uint8_t*, uint8_t, uint8_t);

typedef uint8_t l_fptr_7(void);

typedef void l_fptr_10(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_17(void);

typedef void l_fptr_18(uint8_t);

typedef uint32_t l_fptr_5(uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef uint8_t l_fptr_19(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_13(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_14(uint32_t);

typedef uint32_t l_fptr_8(uint8_t*, uint32_t, uint32_t);

typedef uint32_t l_fptr_6(void);

typedef void l_fptr_9(uint8_t*, uint32_t, uint32_t);


/* Types Definitions */
struct l_struct_struct_OC_sdp_core_data_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_struct_struct_OC_sdp_stack_t {
  struct l_struct_struct_OC_sdp_core_data_t field0;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_120_uint8_t {
  uint8_t array[120];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_struct_struct_OC_profile_cmd_handle {
  l_fptr_2* field0;
  l_fptr_4* field1;
  l_fptr_2* field2;
  l_fptr_2* field3;
  l_fptr_8* field4;
  l_fptr_4* field5;
  l_fptr_2* field6;
  l_fptr_8* field7;
  l_fptr_8* field8;
  l_fptr_5* field9;
  l_fptr_2* field10;
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_9* field0;
  l_fptr_10* field1;
  l_fptr_11* field2;
  l_fptr_12* field3;
  l_fptr_13* field4;
  l_fptr_3* field5;
  l_fptr_12* field6;
  l_fptr_14* field7;
  l_fptr_15* field8;
  l_fptr_16* field9;
  l_fptr_17* field10;
  l_fptr_18* field11;
  l_fptr_19* field12;
  l_fptr_13* field13;
  l_fptr_12* field14;
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
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_49_uint8_t {
  uint8_t array[49];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_struct_union_OC_anon {
  uint32_t field0;
  struct l_array_28_uint8_t field1;
};
struct l_struct_struct_OC_hfp_ioctrl_str {
  struct l_array_6_uint8_t field0;
  uint32_t field1;
  uint8_t field2;
  struct l_struct_union_OC_anon field3;
};
struct l_struct_struct_OC_spp_ioctrl_str {
  struct l_array_6_uint8_t field0;
  uint8_t field1;
  uint32_t field2;
  uint32_t field3;
  uint8_t* field4;
};
struct l_array_256_uint8_t {
  uint8_t array[256];
};

/* External Global Variable Declarations */
extern uint32_t config_asser;
extern struct l_struct_struct_OC_sdp_stack_t* sdp_stack;
extern struct l_struct_struct_OC_profile_cmd_handle profile_cmd_hdl_str;
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t btstack_emitter_support;

/* Function Declarations */
void sdp_master_init(uint8_t*) __ATTRIBUTELIST__((always_inline, nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint8_t check_sdp_master_channel_state(void) __ATTRIBUTELIST__((always_inline, nothrow, pure)) __HIDDEN__;
uint8_t sdp_master_channel_disconnect(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_disconnect_internal(uint16_t, uint8_t);
uint32_t sdp_send_cmd_iotl(uint8_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t launch_initiative_connection(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint8_t sdp_tws_connect_hfp_check(void) __ATTRIBUTELIST__((always_inline, nothrow, pure)) __HIDDEN__;
void p33_soft_reset(void);
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_13*, uint8_t*, uint16_t, uint16_t);
static void sdp_master_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t connect_pending_connnecting_sdp_handler(int, ...);
struct l_array_6_uint8_t* l2cap_get_btaddr_via_local_cid(uint16_t);
uint32_t __bt_profile_enable(uint32_t);
static void sdp_send_service_search_attribute_request(uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t sdp_create_error_response(uint16_t, uint16_t, uint16_t);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t de_get_element_type(uint8_t*);
uint32_t de_get_header_size(uint8_t*);
uint16_t sdp_decode_attributes_response(uint8_t*, uint8_t*);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t de_get_data_size(uint8_t*);
uint16_t sdp_decode_p_attributes_response(uint8_t*, uint16_t, uint16_t, uint8_t*);
void put_support_profile(struct l_array_6_uint8_t*, uint8_t, uint8_t);
uint8_t get_remote_dev_info_index(int, ...);
void de_create_sequence(uint8_t*);
void de_add_uuid128(uint8_t*, uint8_t*);
void de_add_number(uint8_t*, uint32_t, uint32_t, uint32_t);
uint32_t de_get_len(uint8_t*);
void net_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t sdp_try_respond(uint16_t, uint8_t*, uint16_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_17_uint8_t _OC_str = { "file:%s, line:%d" };
static struct l_array_120_uint8_t _OC_str_OC_1 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_master.c" };
static struct l_array_34_uint8_t _OC_str_OC_2 = { "ASSERT-FAILD: sdp_master != NULL " };
static struct l_array_22_uint8_t _OC_str_OC_3 = { "SDP_ErrorResponse %x\n" };
static uint8_t* sdp_data_ptr;
static uint16_t sdp_data_len;
static struct l_array_25_uint8_t _OC_str_OC_9 = { "why sdp get addr failed\n" };
static struct l_array_29_uint8_t _OC_str_OC_10 = { "sdp info len end===%d===:%d\n" };
static struct l_array_28_uint8_t _OC_str_OC_11 = { "<BT-log> :get rfcomm id %d\n" };
static struct l_array_16_uint8_t AMA_re_establish = { "\x93\x1C~\x8AT\x0F\x46\x86\xB7\x98\xE8\xDF\n*\xD9\xF7" };
static struct l_array_16_uint8_t iap2_re_establish = { "\x00\x00\x00\x00\xDE\xCA\xFA\xDE\xDE\xCA\xDE\xAF\xDE\xCA\xCA\xFE" };
static struct l_array_29_uint8_t str = { "<BT-log> :send get dun info\n" };
static struct l_array_49_uint8_t str_OC_12 = { "<BT-log> :=========sdp free disconnect=========\n" };
static struct l_array_35_uint8_t str_OC_13 = { "<BT-log> :getting UUID_L2CAP info\n" };
static struct l_array_20_uint8_t str_OC_14 = { "second get IAP uuid" };
static struct l_array_23_uint8_t str_OC_15 = { "<BT-log> :connect hfp\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_select_u16(bool condition, uint16_t iftrue, uint16_t ifnot) {
  uint16_t r;
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
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
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

void sdp_master_init(uint8_t* _1) {
  uint32_t _2;
  struct l_struct_struct_OC_sdp_stack_t* _3;
  uint32_t _4;
  uint32_t _5;
  struct l_struct_struct_OC_sdp_stack_t* _6;

  _2 = config_asser;
  _3 = sdp_stack;
  if ((((_2 == 0u)&1))) {
    goto _7;
  } else {
    goto _8;
  }

_8:
  if ((((_3 != ((struct l_struct_struct_OC_sdp_stack_t*)/*NULL*/0))&1))) {
    goto _9;
  } else {
    goto _10;
  }

_10:
  _4 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), 35);
  _5 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _9;

_7:
  if ((((_3 != ((struct l_struct_struct_OC_sdp_stack_t*)/*NULL*/0))&1))) {
    goto _9;
  } else {
    goto _11;
  }

_11:
   /*tail*/ cpu_reset();
  goto _9;

_9:
  _6 = sdp_stack;
  *((&_6->field0.field5)) = 1;
  *((&_6->field0.field4)) = 0;
  *((&_6->field0.field1)) = 0;
  *((&_6->field0.field3)) = 0;
}


static void cpu_reset(void) {
   /*tail*/ p33_soft_reset();
}


uint8_t check_sdp_master_channel_state(void) {
  struct l_struct_struct_OC_sdp_stack_t* _12;
  uint16_t _13;
  uint8_t _14;
  uint8_t _15;
  uint8_t _15__PHI_TEMPORARY;

  _12 = sdp_stack;
  if ((((_12 == ((struct l_struct_struct_OC_sdp_stack_t*)/*NULL*/0))&1))) {
    _15__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _16;
  } else {
    goto _17;
  }

_17:
  _13 = *((&_12->field0.field1));
  _14 = ((uint8_t)_13);
  _15__PHI_TEMPORARY = _14;   /* for PHI node */
  goto _16;

_16:
  _15 = _15__PHI_TEMPORARY;
  return _15;
}


uint8_t sdp_master_channel_disconnect(void) {
  struct l_struct_struct_OC_sdp_stack_t* _18;
  uint16_t _19;
  uint8_t _20;
  uint8_t _20__PHI_TEMPORARY;

  _18 = sdp_stack;
  _19 = *((&_18->field0.field1));
  if ((((_19 == ((uint16_t)0))&1))) {
    _20__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _21;
  } else {
    goto _22;
  }

_22:
   /*tail*/ l2cap_disconnect_internal(_19, 19);
  _20__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _21;

_21:
  _20 = _20__PHI_TEMPORARY;
  return _20;
}


uint32_t sdp_send_cmd_iotl(uint8_t* _23, uint32_t _24, uint32_t _25) {
  struct l_struct_struct_OC_sdp_stack_t* _26;
  uint8_t _27;
  uint32_t _28;
  uint8_t _29;
  uint16_t _30;
  uint32_t _31;
  uint32_t _32;
  uint32_t _32__PHI_TEMPORARY;

  _26 = sdp_stack;
  if ((((_26 == ((struct l_struct_struct_OC_sdp_stack_t*)/*NULL*/0))&1))) {
    _32__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _33;
  } else {
    goto _34;
  }

_34:
  _27 = *((&_26->field0.field3));
  if ((((_27 == ((uint8_t)0))&1))) {
    goto _35;
  } else {
    _32__PHI_TEMPORARY = -2;   /* for PHI node */
    goto _33;
  }

_35:
  switch (_24) {
  default:
    _32__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _33;
  case 0u:
    goto _36;
  case 1u:
    goto _37;
  case 2u:
    goto _38;
  }

_36:
  _28 =  /*tail*/ launch_initiative_connection(_23, (((uint16_t)_25)));
  _32__PHI_TEMPORARY = _28;   /* for PHI node */
  goto _33;

_37:
  _29 =  /*tail*/ sdp_master_channel_disconnect();
  _32__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _33;

_38:
  _30 = *((&_26->field0.field1));
  if ((((_30 == ((uint16_t)0))&1))) {
    goto _39;
  } else {
    goto _40;
  }

_40:
   /*tail*/ sdp_send_service_search_attribute_request(_30, 4608, ((uint8_t*)/*NULL*/0));
  _32__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _33;

_39:
  _31 =  /*tail*/ launch_initiative_connection(_23, 4608);
  _32__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _33;

_33:
  _32 = _32__PHI_TEMPORARY;
  return _32;
}


static uint32_t launch_initiative_connection(uint8_t* _41, uint16_t _42) {
  struct l_struct_struct_OC_sdp_stack_t* _43;
  uint16_t _44;
  uint8_t _45;
  uint8_t _46;
  struct l_struct_struct_OC_sdp_stack_t* _47;
  uint32_t _48;
  uint32_t _48__PHI_TEMPORARY;

  _43 = sdp_stack;
  _44 = *((&_43->field0.field1));
  if ((((_44 == ((uint16_t)0))&1))) {
    goto _49;
  } else {
    goto _50;
  }

_50:
  _45 =  /*tail*/ sdp_master_channel_disconnect();
  _48__PHI_TEMPORARY = -2;   /* for PHI node */
  goto _51;

_49:
  *((&_43->field0.field3)) = 1;
  _46 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), sdp_master_packet_handler, _41, 1, -1);
  _47 = sdp_stack;
  *((&_47->field0.field2)) = _42;
  _48__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _51;

_51:
  _48 = _48__PHI_TEMPORARY;
  return _48;
}


uint8_t sdp_tws_connect_hfp_check(void) {
  struct l_struct_struct_OC_sdp_stack_t* _52;
  uint16_t _53;

  _52 = sdp_stack;
  _53 = *((&_52->field0.field2));
  return (((uint8_t)(bool)(((_53 == ((uint16_t)4383))&1))));
}


static void sdp_master_packet_handler(uint8_t _54, uint16_t _55, uint8_t* _56, uint16_t _57) {
  struct l_struct_struct_OC_hfp_ioctrl_str _58;    /* Address-exposed local */
  struct l_struct_struct_OC_spp_ioctrl_str _59;    /* Address-exposed local */
  uint8_t _60;
  uint8_t _61;
  uint8_t _62;
  uint32_t _63;
  struct l_struct_struct_OC_sdp_stack_t* _64;
  uint16_t _65;
  uint32_t _66;
  uint8_t _67;
  uint8_t _68;
  uint32_t _69;
  uint8_t* _70;
  uint16_t _71;
  uint8_t* _72;
  struct l_struct_struct_OC_sdp_stack_t* _73;
  uint16_t _74;
  struct l_array_6_uint8_t* _75;
  struct l_struct_struct_OC_sdp_stack_t* _76;
  uint16_t* _77;
  uint16_t _78;
  uint8_t _79;
  uint8_t _80;
  uint8_t _81;
  uint8_t _82;
  uint32_t _83;
  uint32_t _84;
  struct l_struct_struct_OC_sdp_stack_t* _85;
  uint16_t _86;
  uint16_t _87;
  uint8_t _88;
  uint32_t _89;
  uint32_t _90;
  uint8_t _91;
  uint8_t* _92;
  uint8_t* _93;
  uint8_t* _94;
  uint8_t* _94__PHI_TEMPORARY;
  uint8_t _95;
  uint16_t _96;
  uint32_t _97;
  uint8_t* _98;
  struct l_struct_struct_OC_sdp_stack_t* _99;
  struct l_struct_struct_OC_sdp_stack_t* _100;
  struct l_struct_struct_OC_sdp_stack_t* _100__PHI_TEMPORARY;
  uint16_t _101;
  uint16_t _102;
  uint32_t _103;
  uint8_t* _104;
  uint16_t _105;
  uint16_t _106;
  uint16_t _106__PHI_TEMPORARY;
  uint32_t _107;
  uint32_t _108;
  uint8_t* _109;
  uint32_t _110;
  struct l_struct_struct_OC__stack_config* _111;
  uint32_t _112;
  uint8_t* _113;
  uint16_t _114;
  struct l_struct_struct_OC_sdp_stack_t* _115;
  uint16_t _116;
  uint8_t* _117;
  uint8_t _118;
  struct l_struct_struct_OC_sdp_stack_t* _119;
  uint8_t _120;
  uint32_t _121;
  uint32_t _122;
  uint32_t _123;
  struct l_struct_struct_OC__stack_config* _124;
  uint16_t _125;
  struct l_struct_struct_OC_sdp_stack_t* _126;
  uint32_t _127;
  struct l_struct_struct_OC__stack_config* _128;
  uint16_t _129;
  struct l_struct_struct_OC_sdp_stack_t* _130;
  uint32_t _131;
  struct l_struct_struct_OC__stack_config* _132;
  uint16_t _133;
  uint32_t _134;
  struct l_struct_struct_OC_sdp_stack_t* _135;
  struct l_struct_struct_OC_sdp_stack_t* _136;
  struct l_struct_struct_OC_sdp_stack_t* _137;
  uint16_t _138;
  struct l_struct_struct_OC_sdp_stack_t* _139;
  uint16_t _140;
  struct l_struct_struct_OC__stack_config* _141;
  uint32_t* _142;
  uint32_t _143;
  uint16_t _144;
  uint8_t _145;
  uint8_t _146;
  uint8_t _147;
  uint32_t _148;
  uint32_t _148__PHI_TEMPORARY;
  uint8_t _149;
  uint8_t _150;
  uint8_t _151;
  uint8_t _152;
  uint32_t _153;
  uint8_t _154;
  uint8_t _155;
  uint8_t _156;
  uint8_t _157;
  uint8_t _158;
  struct l_struct_struct_OC_sdp_stack_t* _159;
  uint16_t _160;
  struct l_array_6_uint8_t* _161;
  struct l_struct_struct_OC_sdp_stack_t* _162;
  uint16_t* _163;
  uint16_t _164;
  uint8_t _165;
  uint8_t _166;
  uint8_t* _167;
  uint8_t _168;
  uint8_t* _169;
  uint8_t* _170;
  uint16_t _171;
  l_fptr_2* _172;
  uint32_t _173;
  uint8_t _174;
  uint32_t _175;
  l_fptr_2* _176;
  uint32_t _177;
  uint32_t _178;
  uint32_t _178__PHI_TEMPORARY;
  struct l_struct_struct_OC_sdp_stack_t* _179;
  uint16_t _180;
  struct l_struct_struct_OC_user_interface_handler* _181;
  l_fptr_3* _182;
  uint32_t _183;
  struct l_struct_struct_OC_sdp_stack_t* _184;
  uint16_t _185;
  uint16_t _186;
  l_fptr_4* _187;
  uint32_t _188;
  uint8_t _189;
  uint8_t* _190;
  uint8_t* _191;
  l_fptr_2* _192;
  uint32_t _193;
  uint32_t _194;
  struct l_struct_struct_OC_sdp_stack_t* _195;
  uint16_t _196;
  uint16_t _197;
  l_fptr_4* _198;
  uint32_t _199;
  l_fptr_5* _200;
  uint32_t _201;
  struct l_struct_struct_OC_user_interface_handler* _202;
  l_fptr_3* _203;
  struct l_struct_struct_OC_sdp_stack_t* _204;
  struct l_struct_struct_OC_sdp_stack_t* _205;
  struct l_struct_struct_OC_sdp_stack_t* _205__PHI_TEMPORARY;
  uint16_t _206;
  uint8_t _207;
  uint32_t _208;
  uint16_t _209;
  uint8_t _210;
  uint8_t _211;
  uint32_t _212;
  uint8_t _213;
  struct l_struct_struct_OC_sdp_stack_t* _214;
  uint8_t _215;
  struct l_struct_struct_OC_sdp_stack_t* _216;
  uint16_t* _217;
  uint16_t _218;
  uint16_t* _219;
  uint16_t _220;
  struct l_struct_struct_OC__stack_config* _221;
  uint32_t _222;
  uint32_t _223;
  struct l_struct_struct_OC_sdp_stack_t* _224;
  uint16_t _225;
  uint32_t _226;
  struct l_struct_struct_OC_sdp_stack_t* _227;
  uint16_t _228;
  uint32_t _229;
  struct l_struct_struct_OC_sdp_stack_t* _230;
  uint16_t _231;
  uint32_t _232;
  uint8_t _233;
  uint32_t _234;
  struct l_struct_struct_OC_sdp_stack_t* _235;
  uint16_t _236;
  struct l_struct_struct_OC_sdp_stack_t* _237;
  uint16_t _238;
  struct l_struct_struct_OC_sdp_stack_t* _239;
  uint16_t* _240;
  uint16_t _241;
  uint8_t* _242;
  uint8_t _243;
  uint32_t _244;
  uint8_t* _245;
  uint8_t* _246;
  uint8_t* _246__PHI_TEMPORARY;
  struct l_struct_struct_OC_sdp_stack_t* _247;
  struct l_struct_struct_OC_sdp_stack_t* _248;
  struct l_struct_struct_OC_sdp_stack_t* _248__PHI_TEMPORARY;

  switch (_54) {
  default:
    goto _249;
  case ((uint8_t)6):
    goto _250;
  case ((uint8_t)4):
    goto _251;
  }

_250:
  _60 = *_56;
  switch (_60) {
  default:
    goto _252;
  case ((uint8_t)1):
    goto _253;
  case ((uint8_t)3):
    goto _249;
  case ((uint8_t)5):
    goto _249;
  case ((uint8_t)7):
    goto _254;
  }

_253:
  _61 = *((&_56[((int32_t)6)]));
  _62 = *((&_56[((int32_t)5)]));
  _63 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((((uint32_t)(uint8_t)_62)) << 8) | (((uint32_t)(uint8_t)_61))));
  _64 = sdp_stack;
  _65 = *((&_64->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_65, 19);
  _66 =  /*tail*/ ((l_fptr_6*)(void*)connect_pending_connnecting_sdp_handler)();
  goto _249;

_254:
  _67 = *((&_56[((int32_t)6)]));
  _68 = *((&_56[((int32_t)5)]));
  _69 = ((((uint32_t)(uint8_t)_68)) << 8) | (((uint32_t)(uint8_t)_67));
  _70 = (&_56[((int32_t)7)]);
  _71 = ((uint16_t)_69);
  _72 = (&_56[((int32_t)((llvm_add_u32(_69, 7)) & 65535))]);
  _73 = sdp_stack;
  _74 = *((&_73->field0.field1));
  _75 =  /*tail*/ l2cap_get_btaddr_via_local_cid(_74);
  _76 = sdp_stack;
  _77 = (&_76->field0.field2);
  _78 = *_77;
  switch (_78) {
  default:
    goto _255;
  case ((uint16_t)4374):
    goto _256;
  case ((uint16_t)4608):
    goto _257;
  }

_256:
  _79 = *_70;
  switch (_79) {
  default:
    goto _258;
  case ((uint8_t)54):
    goto _259;
  case ((uint8_t)53):
    goto _260;
  }

_259:
  _80 = *((&_56[((int32_t)8)]));
  if ((((_80 == ((uint8_t)0))&1))) {
    goto _261;
  } else {
    goto _258;
  }

_261:
  _81 = *((&_56[((int32_t)9)]));
  if ((((_81 == ((uint8_t)0))&1))) {
    goto _262;
  } else {
    goto _258;
  }

_262:
  *_77 = 0;
  goto _258;

_260:
  _82 = *((&_56[((int32_t)8)]));
  if ((((_82 == ((uint8_t)0))&1))) {
    goto _263;
  } else {
    goto _258;
  }

_263:
  *_77 = 0;
  goto _258;

_257:
  *_77 = 0;
  _83 =  /*tail*/ de_get_element_type(_70);
  if ((((_83 == 6u)&1))) {
    goto _264;
  } else {
    goto _258;
  }

_264:
  _84 =  /*tail*/ de_get_header_size(_70);
  _85 = sdp_stack;
  _86 = *((&_85->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_86, 19);
  if ((((_75 == ((struct l_array_6_uint8_t*)/*NULL*/0))&1))) {
    goto _265;
  } else {
    goto _266;
  }

_266:
  _87 =  /*tail*/ sdp_decode_attributes_response(((&_70[((int32_t)(_84 & 255))])), ((&(*_75).array[((int32_t)0)])));
  goto _267;

_265:
  _88 = l2cap_debug_enable;
  if (((((llvm_and_u8(_88, 32)) == ((uint8_t)0))&1))) {
    goto _267;
  } else {
    goto _268;
  }

_268:
  _89 =  /*tail*/ puts(((&_OC_str_OC_9.array[((int32_t)0)])));
  goto _267;

_267:
  _90 =  /*tail*/ ((l_fptr_6*)(void*)connect_pending_connnecting_sdp_handler)();
  goto _258;

_255:
  _91 = btstack_emitter_support;
  if (((((((_78 == ((uint16_t)256))&1)) & (((_91 != ((uint8_t)0))&1)))&1))) {
    goto _269;
  } else {
    goto _270;
  }

_269:
  _92 = sdp_data_ptr;
  if ((((_92 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _271;
  } else {
    _94__PHI_TEMPORARY = _92;   /* for PHI node */
    goto _272;
  }

_271:
  _93 =  /*tail*/ malloc(1024);
  sdp_data_ptr = _93;
  _94__PHI_TEMPORARY = _93;   /* for PHI node */
  goto _272;

_272:
  _94 = _94__PHI_TEMPORARY;
  _95 = *_72;
  if ((((_95 == ((uint8_t)0))&1))) {
    goto _273;
  } else {
    goto _274;
  }

_274:
  if ((((_94 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _275;
  } else {
    _100__PHI_TEMPORARY = _76;   /* for PHI node */
    goto _276;
  }

_275:
  _96 = sdp_data_len;
  _97 = ((uint32_t)(uint16_t)_96);
  if ((((((uint32_t)(llvm_add_u32(_97, _69))) < ((uint32_t)1024u))&1))) {
    goto _277;
  } else {
    _100__PHI_TEMPORARY = _76;   /* for PHI node */
    goto _276;
  }

_277:
  _98 = memcpy(((&_94[((int32_t)_97)])), _70, _69);
  sdp_data_len = (llvm_add_u16(_96, _71));
  _99 = sdp_stack;
  _100__PHI_TEMPORARY = _99;   /* for PHI node */
  goto _276;

_276:
  _100 = _100__PHI_TEMPORARY;
  _101 = *((&_100->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_101, 256, _72);
  goto _258;

_273:
  _102 = sdp_data_len;
  if ((((_94 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _278;
  } else {
    _106__PHI_TEMPORARY = _102;   /* for PHI node */
    goto _279;
  }

_278:
  _103 = ((uint32_t)(uint16_t)_102);
  if ((((((uint32_t)(llvm_add_u32(_103, _69))) < ((uint32_t)1024u))&1))) {
    goto _280;
  } else {
    _106__PHI_TEMPORARY = _102;   /* for PHI node */
    goto _279;
  }

_280:
  _104 = memcpy(((&_94[((int32_t)_103)])), _70, _69);
  _105 = llvm_add_u16(_102, _71);
  sdp_data_len = _105;
  _106__PHI_TEMPORARY = _105;   /* for PHI node */
  goto _279;

_279:
  _106 = _106__PHI_TEMPORARY;
  _107 =  /*tail*/ de_get_data_size(_94);
  _108 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), (((uint32_t)(uint16_t)_106)), _107);
  _109 = sdp_data_ptr;
  _110 =  /*tail*/ de_get_data_size(_109);
  if ((((_110 == 0u)&1))) {
    goto _281;
  } else {
    goto _282;
  }

_281:
  _111 = user_stack_configs;
  _112 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_111->field9)));
  *((&_111->field5)) = (llvm_select_u16(((((_112 & 1048576) != 0u)&1)), 48, 3));
  goto _283;

_282:
  _113 = sdp_data_ptr;
  _114 = sdp_data_len;
  _115 = sdp_stack;
  _116 =  /*tail*/ sdp_decode_p_attributes_response(_113, _114, 0, ((&_115->field0.field4)));
  goto _283;

_283:
  _117 = sdp_data_ptr;
  if ((((_117 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _284;
  } else {
    goto _285;
  }

_285:
   /*tail*/ free(_117);
  sdp_data_ptr = ((uint8_t*)/*NULL*/0);
  sdp_data_len = 0;
  goto _284;

_284:
  _118 = l2cap_debug_enable;
  if ((((((int8_t)_118) < ((int8_t)((uint8_t)0)))&1))) {
    goto _286;
  } else {
    goto _287;
  }

_286:
  _119 = sdp_stack;
  _120 = *((&_119->field0.field4));
  _121 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), (((uint32_t)(uint8_t)_120)));
  goto _287;

_287:
  _122 =  /*tail*/ ((l_fptr_6*)(void*)connect_pending_connnecting_sdp_handler)();
  if ((((_122 == 0u)&1))) {
    goto _288;
  } else {
    goto _289;
  }

_288:
  _123 =  /*tail*/ __bt_profile_enable(16);
  if ((((_123 == 0u)&1))) {
    goto _290;
  } else {
    goto _291;
  }

_291:
  _124 = user_stack_configs;
  _125 = *((&_124->field5));
  if (((((llvm_and_u16(_125, 8)) == ((uint16_t)0))&1))) {
    goto _290;
  } else {
    goto _292;
  }

_292:
  _126 = sdp_stack;
  *((&_126->field0.field2)) = 17;
  goto _293;

_290:
  _127 =  /*tail*/ __bt_profile_enable(2);
  if ((((_127 == 0u)&1))) {
    goto _294;
  } else {
    goto _295;
  }

_295:
  _128 = user_stack_configs;
  _129 = *((&_128->field5));
  if (((((llvm_and_u16(_129, 1)) == ((uint16_t)0))&1))) {
    goto _294;
  } else {
    goto _296;
  }

_296:
  _130 = sdp_stack;
  *((&_130->field0.field2)) = 4383;
  goto _293;

_294:
  _131 =  /*tail*/ __bt_profile_enable(4);
  if ((((_131 == 0u)&1))) {
    goto _297;
  } else {
    goto _298;
  }

_298:
  _132 = user_stack_configs;
  _133 = *((&_132->field5));
  _134 = ((uint32_t)(uint16_t)_133);
  if (((((_134 & 32) == 0u)&1))) {
    goto _299;
  } else {
    goto _300;
  }

_300:
  _135 = sdp_stack;
  *((&_135->field0.field2)) = 4363;
  goto _293;

_299:
  if (((((_134 & 2) == 0u)&1))) {
    goto _297;
  } else {
    goto _301;
  }

_301:
  _136 = sdp_stack;
  *((&_136->field0.field2)) = 25;
  goto _293;

_297:
  _137 = sdp_stack;
  _138 = *((&_137->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_138, 19);
  goto _293;

_289:
  _139 = sdp_stack;
  _140 = *((&_139->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_140, 19);
  goto _293;

_293:
  if ((((_75 == ((struct l_array_6_uint8_t*)/*NULL*/0))&1))) {
    goto _258;
  } else {
    goto _302;
  }

_302:
  _141 = user_stack_configs;
  _142 = (&_141->field9);
  _143 = __UNALIGNED_LOAD__(uint32_t, 1, _142);
  __UNALIGNED_LOAD__(uint32_t, 1, _142) = (_143 & -4194305);
  _144 = *((&_141->field5));
  _145 =  /*tail*/ ((l_fptr_7*)(void*)get_remote_dev_info_index)();
   /*tail*/ put_support_profile(_75, (((uint8_t)_144)), _145);
  goto _258;

_270:
  switch (_78) {
  default:
    goto _258;
  case ((uint16_t)4383):
    goto _303;
  case ((uint16_t)4353):
    goto _303;
  case ((uint16_t)4399):
    goto _303;
  case ((uint16_t)4382):
    goto _303;
  case ((uint16_t)-2087):
    goto _303;
  case ((uint16_t)-310):
    goto _303;
  case ((uint16_t)25):
    goto _304;
  }

_303:
  _146 = *_70;
  if ((((_146 == ((uint8_t)53))&1))) {
    goto _305;
  } else {
    goto _306;
  }

_306:
  if ((((((uint16_t)_71) > ((uint16_t)((uint16_t)4)))&1))) {
    goto _307;
  } else {
    goto _258;
  }

_307:
  _148__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _308;

_305:
  _147 = *((&_56[((int32_t)8)]));
  if ((((_147 == ((uint8_t)0))&1))) {
    goto _309;
  } else {
    goto _306;
  }

_309:
  *((&_76->field0.field4)) = 0;
  goto _258;

  do {     /* Syntactic loop '' to make GCC happy */
_308:
  _148 = _148__PHI_TEMPORARY;
  _149 = *((&_70[((int32_t)(llvm_add_u32(_148, -3)))]));
  if ((((_149 == ((uint8_t)25))&1))) {
    goto _310;
  } else {
    goto _311;
  }

_310:
  _150 = *((&_70[((int32_t)(llvm_add_u32(_148, -2)))]));
  if ((((_150 == ((uint8_t)0))&1))) {
    goto _312;
  } else {
    goto _311;
  }

_312:
  _151 = *((&_70[((int32_t)(llvm_add_u32(_148, -1)))]));
  if ((((_151 == ((uint8_t)3))&1))) {
    goto _313;
  } else {
    goto _311;
  }

_313:
  _152 = *((&_70[((int32_t)_148)]));
  if ((((_152 == ((uint8_t)8))&1))) {
    goto _314;
  } else {
    goto _311;
  }

_311:
  _153 = llvm_add_u32(_148, 1);
  if ((((((uint32_t)_153) < ((uint32_t)_69))&1))) {
    _148__PHI_TEMPORARY = _153;   /* for PHI node */
    goto _308;
  } else {
    goto _315;
  }

  } while (1); /* end of syntactic loop '' */
_314:
  _154 = *((&_70[((int32_t)((llvm_add_u32(_148, 1)) & 65535))]));
  *((&_76->field0.field4)) = _154;
  goto _258;

_304:
  _155 = *_70;
  switch (_155) {
  default:
    goto _258;
  case ((uint8_t)54):
    goto _316;
  case ((uint8_t)53):
    goto _317;
  }

_316:
  _156 = *((&_56[((int32_t)8)]));
  if ((((_156 == ((uint8_t)0))&1))) {
    goto _318;
  } else {
    goto _258;
  }

_318:
  _157 = *((&_56[((int32_t)9)]));
  if ((((_157 == ((uint8_t)0))&1))) {
    goto _319;
  } else {
    goto _258;
  }

_319:
  *_77 = 0;
  goto _258;

_317:
  _158 = *((&_56[((int32_t)8)]));
  if ((((_158 == ((uint8_t)0))&1))) {
    goto _320;
  } else {
    goto _258;
  }

_320:
  *_77 = 0;
  goto _258;

_315:
  goto _258;

_258:
  _159 = sdp_stack;
  _160 = *((&_159->field0.field1));
  _161 =  /*tail*/ l2cap_get_btaddr_via_local_cid(_160);
  if ((((_161 == ((struct l_array_6_uint8_t*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _321;
  }

_321:
  _162 = sdp_stack;
  _163 = (&_162->field0.field2);
  _164 = *_163;
  switch (_164) {
  default:
    goto _322;
  case ((uint16_t)4399):
    goto _323;
  case ((uint16_t)4383):
    goto _324;
  case ((uint16_t)4382):
    goto _324;
  case ((uint16_t)25):
    goto _325;
  case ((uint16_t)4363):
    goto _325;
  case ((uint16_t)4353):
    goto _326;
  case ((uint16_t)-2087):
    goto _326;
  case ((uint16_t)17):
    goto _327;
  case ((uint16_t)4374):
    goto _328;
  case ((uint16_t)-310):
    goto _329;
  case ((uint16_t)256):
    goto _330;
  }

_323:
  _165 = *((&_162->field0.field4));
  if ((((_165 == ((uint8_t)0))&1))) {
    goto _322;
  } else {
    goto _331;
  }

_331:
  _166 =  /*tail*/ sdp_master_channel_disconnect();
  goto _249;

_324:
  _167 = (&_162->field0.field4);
  _168 = *_167;
  if ((((_168 == ((uint8_t)0))&1))) {
    goto _332;
  } else {
    goto _333;
  }

_333:
  _169 = (&_58.field0.array[((int32_t)0)]);
  *((&_58.field1)) = 22;
  *((&_58.field2)) = _168;
  *_167 = 0;
  _170 = memcpy(_169, ((&(*_161).array[((int32_t)0)])), 6);
  _171 = *_163;
  if ((((_171 == ((uint16_t)4383))&1))) {
    goto _334;
  } else {
    goto _335;
  }

_334:
  _172 = *((&profile_cmd_hdl_str.field0));
  if ((((_172 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _336;
  } else {
    goto _337;
  }

_337:
  _173 = _172(_169);
  _178__PHI_TEMPORARY = _173;   /* for PHI node */
  goto _338;

_335:
  _174 = l2cap_debug_enable;
  if ((((((int8_t)_174) < ((int8_t)((uint8_t)0)))&1))) {
    goto _339;
  } else {
    goto _340;
  }

_339:
  _175 =  /*tail*/ puts(((&str_OC_15.array[((int32_t)0)])));
  goto _340;

_340:
  _176 = *((&profile_cmd_hdl_str.field6));
  if ((((_176 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _336;
  } else {
    goto _341;
  }

_341:
  _177 = _176(_169);
  _178__PHI_TEMPORARY = _177;   /* for PHI node */
  goto _338;

_338:
  _178 = _178__PHI_TEMPORARY;
  if ((((((int32_t)_178) < ((int32_t)0u))&1))) {
    goto _336;
  } else {
    goto _342;
  }

_336:
  _179 = sdp_stack;
  _180 = *((&_179->field0.field1));
  l2cap_disconnect_internal(_180, 19);
  goto _342;

_342:
  goto _249;

_332:
  _181 = user_interface;
  _182 = *((&_181->field5));
  if ((((_182 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _343;
  } else {
    goto _344;
  }

_344:
   /*tail*/ _182(((&(*_161).array[((int32_t)0)])), 2, 2, 0);
  goto _343;

_343:
  _183 =  /*tail*/ __bt_profile_enable(4);
  _184 = sdp_stack;
  if ((((_183 == 0u)&1))) {
    goto _345;
  } else {
    goto _346;
  }

_346:
  *((&_184->field0.field2)) = 25;
  _185 = *((&_184->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_185, 25, ((uint8_t*)/*NULL*/0));
  goto _249;

_345:
  _186 = *((&_184->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_186, 19);
  goto _249;

_325:
  _187 = *((&profile_cmd_hdl_str.field5));
  if ((((_187 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _347;
  }

_347:
  _188 =  /*tail*/ _187(((&(*_161).array[((int32_t)0)])), 50);
  goto _249;

_326:
  _189 = *((&_162->field0.field4));
  if ((((_189 == ((uint8_t)0))&1))) {
    goto _348;
  } else {
    goto _349;
  }

_349:
  _190 = (&_59.field0.array[((int32_t)0)]);
  *((&_59.field1)) = _189;
  *((&_59.field2)) = 1;
  _191 = memcpy(_190, ((&(*_161).array[((int32_t)0)])), 6);
  _192 = *((&profile_cmd_hdl_str.field2));
  if ((((_192 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _350;
  } else {
    goto _351;
  }

_351:
  _193 = _192(_190);
  goto _350;

_350:
  goto _249;

_348:
  if ((((_164 == ((uint16_t)-2087))&1))) {
    goto _352;
  } else {
    goto _353;
  }

_352:
  _194 =  /*tail*/ puts(((&str_OC_14.array[((int32_t)0)])));
  _195 = sdp_stack;
  *((&_195->field0.field2)) = -310;
  _196 = *((&_195->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_196, -310, ((uint8_t*)/*NULL*/0));
  goto _249;

_353:
  _197 = *((&_162->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_197, 19);
  goto _249;

_327:
  _198 = *((&profile_cmd_hdl_str.field1));
  if ((((_198 == ((l_fptr_4*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _354;
  }

_354:
  _199 =  /*tail*/ _198(((&(*_161).array[((int32_t)0)])), 8);
  goto _249;

_328:
  _200 = *((&profile_cmd_hdl_str.field9));
  if ((((_200 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _249;
  } else {
    goto _355;
  }

_355:
  _201 =  /*tail*/ _200(((&(*_161).array[((int32_t)0)])), 2, 0, ((uint8_t*)/*NULL*/0));
  goto _249;

_329:
  _202 = user_interface;
  _203 = *((&_202->field5));
  if ((((_203 == ((l_fptr_3*)/*NULL*/0))&1))) {
    _205__PHI_TEMPORARY = _162;   /* for PHI node */
    goto _356;
  } else {
    goto _357;
  }

_357:
   /*tail*/ _203(((&(*_161).array[((int32_t)0)])), 2, 4096, 0);
  _204 = sdp_stack;
  _205__PHI_TEMPORARY = _204;   /* for PHI node */
  goto _356;

_356:
  _205 = _205__PHI_TEMPORARY;
  _206 = *((&_205->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_206, 19);
  goto _249;

_330:
  _207 = l2cap_debug_enable;
  if ((((((int8_t)_207) < ((int8_t)((uint8_t)0)))&1))) {
    goto _358;
  } else {
    goto _249;
  }

_358:
  _208 =  /*tail*/ puts(((&str_OC_13.array[((int32_t)0)])));
  goto _249;

_322:
  _209 = *((&_162->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_209, 19);
  goto _249;

_252:
  _210 = *((&_56[((int32_t)2)]));
  _211 = *((&_56[((int32_t)1)]));
  _212 =  /*tail*/ sdp_create_error_response(_55, (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_211)), 8)), (((uint16_t)(uint8_t)_210)))), 3);
  goto _249;

_251:
  _213 = *_56;
  switch (_213) {
  default:
    goto _249;
  case ((uint8_t)113):
    goto _359;
  case ((uint8_t)112):
    goto _360;
  case ((uint8_t)116):
    goto _361;
  }

_360:
  _214 = sdp_stack;
  *((&_214->field0.field3)) = 0;
  _215 = *((&_56[((int32_t)2)]));
  if ((((_215 == ((uint8_t)0))&1))) {
    goto _249;
  } else {
    goto _362;
  }

_362:
  *((&_214->field0.field1)) = 0;
  goto _249;

_361:
  _216 = sdp_stack;
  _217 = (&_216->field0.field1);
  _218 = *_217;
  if ((((_218 == ((uint16_t)0))&1))) {
    goto _363;
  } else {
    goto _249;
  }

_363:
  *_217 = _55;
  _219 = (&_216->field0.field2);
  _220 = *_219;
  switch (_220) {
  default:
    goto _249;
  case ((uint16_t)0):
    goto _364;
  case ((uint16_t)4399):
    goto _365;
  case ((uint16_t)4608):
    goto _366;
  case ((uint16_t)-310):
    goto _367;
  case ((uint16_t)-2087):
    goto _368;
  case ((uint16_t)4353):
    goto _369;
  }

_365:
   /*tail*/ sdp_send_service_search_attribute_request(_55, 4399, ((uint8_t*)/*NULL*/0));
  goto _249;

_366:
   /*tail*/ sdp_send_service_search_attribute_request(_55, 4608, ((uint8_t*)/*NULL*/0));
  goto _249;

_367:
   /*tail*/ sdp_send_service_search_attribute_request(_55, -310, ((uint8_t*)/*NULL*/0));
  goto _249;

_368:
   /*tail*/ sdp_send_service_search_attribute_request(_55, -2087, ((uint8_t*)/*NULL*/0));
  goto _249;

_369:
   /*tail*/ sdp_send_service_search_attribute_request(_55, 4353, ((uint8_t*)/*NULL*/0));
  goto _249;

_364:
  _221 = user_stack_configs;
  _222 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_221->field9)));
  if (((((_222 & 1048576) == 0u)&1))) {
    goto _370;
  } else {
    goto _371;
  }

_371:
  *_219 = 256;
   /*tail*/ sdp_send_service_search_attribute_request(_55, 256, ((uint8_t*)/*NULL*/0));
  goto _249;

_370:
  if (((((_222 & 64) == 0u)&1))) {
    goto _372;
  } else {
    goto _373;
  }

_373:
  *_219 = 17;
   /*tail*/ sdp_send_service_search_attribute_request(_55, 17, ((uint8_t*)/*NULL*/0));
  goto _249;

_372:
  _223 =  /*tail*/ __bt_profile_enable(2);
  if ((((_223 == 0u)&1))) {
    goto _374;
  } else {
    goto _375;
  }

_375:
  _224 = sdp_stack;
  *((&_224->field0.field2)) = 4383;
  _225 = *((&_224->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_225, 4383, ((uint8_t*)/*NULL*/0));
  goto _249;

_374:
  _226 =  /*tail*/ __bt_profile_enable(4);
  if ((((_226 == 0u)&1))) {
    goto _376;
  } else {
    goto _377;
  }

_377:
  _227 = sdp_stack;
  *((&_227->field0.field2)) = 25;
  _228 = *((&_227->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_228, 25, ((uint8_t*)/*NULL*/0));
  goto _249;

_376:
  _229 =  /*tail*/ __bt_profile_enable(16);
  if ((((_229 == 0u)&1))) {
    goto _378;
  } else {
    goto _379;
  }

_379:
  _230 = sdp_stack;
  *((&_230->field0.field2)) = 17;
  _231 = *((&_230->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_231, 17, ((uint8_t*)/*NULL*/0));
  goto _249;

_378:
  _232 =  /*tail*/ __bt_profile_enable(256);
  if ((((_232 == 0u)&1))) {
    goto _380;
  } else {
    goto _381;
  }

_381:
  _233 = l2cap_debug_enable;
  if ((((((int8_t)_233) < ((int8_t)((uint8_t)0)))&1))) {
    goto _382;
  } else {
    goto _383;
  }

_382:
  _234 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _383;

_383:
  _235 = sdp_stack;
  *((&_235->field0.field2)) = 4374;
  _236 = *((&_235->field0.field1));
   /*tail*/ sdp_send_service_search_attribute_request(_236, 4374, ((uint8_t*)/*NULL*/0));
  goto _249;

_380:
  _237 = sdp_stack;
  _238 = *((&_237->field0.field1));
   /*tail*/ l2cap_disconnect_internal(_238, 19);
  goto _249;

_359:
  _239 = sdp_stack;
  _240 = (&_239->field0.field1);
  _241 = *_240;
  if ((((_241 == _55)&1))) {
    goto _384;
  } else {
    goto _385;
  }

_384:
  *_240 = 0;
  *((&_239->field0.field4)) = 0;
  goto _385;

_385:
  _242 = sdp_data_ptr;
  if ((((_242 == ((uint8_t*)/*NULL*/0))&1))) {
    _248__PHI_TEMPORARY = _239;   /* for PHI node */
    goto _386;
  } else {
    goto _387;
  }

_387:
  _243 = l2cap_debug_enable;
  if ((((((int8_t)_243) < ((int8_t)((uint8_t)0)))&1))) {
    goto _388;
  } else {
    _246__PHI_TEMPORARY = _242;   /* for PHI node */
    goto _389;
  }

_388:
  _244 =  /*tail*/ puts(((&str_OC_12.array[((int32_t)0)])));
  _245 = sdp_data_ptr;
  _246__PHI_TEMPORARY = _245;   /* for PHI node */
  goto _389;

_389:
  _246 = _246__PHI_TEMPORARY;
   /*tail*/ free(_246);
  sdp_data_ptr = ((uint8_t*)/*NULL*/0);
  sdp_data_len = 0;
  _247 = sdp_stack;
  _248__PHI_TEMPORARY = _247;   /* for PHI node */
  goto _386;

_386:
  _248 = _248__PHI_TEMPORARY;
  *((&_248->field0.field3)) = 0;
  goto _249;

_249:
  return;
}


static void sdp_send_service_search_attribute_request(uint16_t _390, uint16_t _391, uint8_t* _392) {
  struct l_array_256_uint8_t _393;    /* Address-exposed local */
  uint8_t* _394;
  uint8_t* _395;
  uint8_t* _396;
  uint32_t _397;
  uint32_t _398;
  uint8_t* _399;
  uint32_t _400;
  uint32_t _401;
  uint8_t _402;
  uint32_t _403;
  uint32_t _404;
  uint32_t _405;
  uint32_t _406;
  uint32_t _406__PHI_TEMPORARY;
  uint32_t _407;
  uint32_t _407__PHI_TEMPORARY;
  uint8_t _408;
  uint32_t _409;
  uint32_t _410;
  uint32_t _411;
  uint32_t _412;
  uint32_t _413;
  uint32_t _413__PHI_TEMPORARY;
  uint16_t _414;
  struct l_struct_struct_OC_sdp_stack_t* _415;
  uint8_t* _416;
  uint8_t _417;
  uint32_t _418;

  _394 = (&_393.array[((int32_t)0)]);
  _395 = (&_393.array[((int32_t)5)]);
  _396 = memset(_394, 0, 256);
  de_create_sequence(_395);
  switch (_391) {
  default:
    goto _419;
  case ((uint16_t)-2087):
    goto _420;
  case ((uint16_t)-310):
    goto _421;
  }

_420:
  de_add_uuid128(_395, ((&AMA_re_establish.array[((int32_t)0)])));
  goto _422;

_421:
  de_add_uuid128(_395, ((&iap2_re_establish.array[((int32_t)0)])));
  goto _422;

_419:
  de_add_number(_395, 3, 1, (((uint32_t)(uint16_t)_391)));
  goto _422;

_422:
  _397 = de_get_len(_395);
  net_store_16(_395, (((uint16_t)_397)), 512);
  _398 = llvm_add_u32(_397, 2);
  _399 = (&((&_395[((int32_t)_397)]))[((int32_t)2)]);
  de_create_sequence(_399);
  switch (_391) {
  default:
    goto _423;
  case ((uint16_t)4608):
    goto _424;
  case ((uint16_t)4374):
    goto _424;
  case ((uint16_t)4382):
    goto _425;
  case ((uint16_t)256):
    goto _425;
  }

_424:
  de_add_number(_399, 1, 2, 65535);
  goto _426;

_425:
  de_add_number(_399, 1, 2, 65535);
  goto _426;

_423:
  de_add_number(_399, 1, 1, 4);
  goto _426;

_426:
  _400 = de_get_len(_399);
  _401 = llvm_add_u32(_398, _400);
  if ((((_392 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _427;
  } else {
    goto _428;
  }

_428:
  _402 = *_392;
  _403 = llvm_add_u32((((uint32_t)(uint8_t)_402)), 1);
  _404 = _401 & 65535;
  *((&_395[((int32_t)_404)])) = _402;
  _405 = llvm_add_u32(_404, 1);
  if ((((_403 == 1u)&1))) {
    _413__PHI_TEMPORARY = _405;   /* for PHI node */
    goto _429;
  } else {
    goto _430;
  }

_430:
  _406__PHI_TEMPORARY = 1;   /* for PHI node */
  _407__PHI_TEMPORARY = _405;   /* for PHI node */
  goto _431;

  do {     /* Syntactic loop '' to make GCC happy */
_431:
  _406 = _406__PHI_TEMPORARY;
  _407 = _407__PHI_TEMPORARY;
  _408 = *((&_392[((int32_t)_406)]));
  _409 = _407 & 65535;
  *((&_395[((int32_t)_409)])) = _408;
  _410 = llvm_add_u32(_409, 1);
  _411 = llvm_add_u32(_406, 1);
  if ((((_411 == _403)&1))) {
    goto _432;
  } else {
    _406__PHI_TEMPORARY = _411;   /* for PHI node */
    _407__PHI_TEMPORARY = _410;   /* for PHI node */
    goto _431;
  }

  } while (1); /* end of syntactic loop '' */
_427:
  *((&_395[((int32_t)(_401 & 65535))])) = 0;
  _412 = llvm_add_u32(_401, 1);
  _413__PHI_TEMPORARY = _412;   /* for PHI node */
  goto _429;

_432:
  _413__PHI_TEMPORARY = _410;   /* for PHI node */
  goto _429;

_429:
  _413 = _413__PHI_TEMPORARY;
  _414 = ((uint16_t)_413);
  *_394 = 6;
  _415 = sdp_stack;
  _416 = (&_415->field0.field5);
  _417 = *_416;
  *_416 = (llvm_add_u8(_417, 1));
  net_store_16(_394, 1, (((uint16_t)(uint8_t)_417)));
  net_store_16(_394, 3, _414);
  _418 = sdp_try_respond(_390, _394, (llvm_add_u16(_414, 5)));
}

