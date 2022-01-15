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
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_service_record_item_t;

/* Function definitions */
typedef uint8_t l_fptr_1(void);

typedef uint32_t l_fptr_2(int, ...);


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
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_2* field0;
  l_fptr_2* field1;
  l_fptr_2* field2;
};
struct l_array_51_uint8_t {
  uint8_t array[51];
};
struct l_array_46_uint8_t {
  uint8_t array[46];
};
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_service_record_item_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint8_t* field2;
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_300_uint8_t {
  uint8_t array[300];
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t l2cap_debug_enable;
extern uint8_t hid_conn_depend_on_dev_company;
extern char /* (empty) */ sdp_record_item_begin;
extern char /* (empty) */ sdp_record_item_end;

/* Function Declarations */
void sdp_init(struct l_struct_struct_OC_sdp_stack_t*) __ATTRIBUTELIST__((always_inline, nothrow)) __HIDDEN__;
void l2cap_register_service_internal(uint8_t*, l_fptr_3*, uint16_t, uint16_t);
static void sdp_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t sdp_create_error_response(uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_disconnect_internal(uint16_t, uint8_t);
uint32_t sdp_try_respond(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_can_send_packet_now(uint16_t);
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t);
uint32_t connect_pending_connnecting_sdp_handler(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_accept_connection_internal(uint16_t);
void sdp_slave_channel_disconnect(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sdp_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sdp_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t l2cap_get_remote_mtu_for_local_cid(uint16_t);
void bt_flip_addr(uint8_t*, uint8_t*);
uint8_t get_remote_test_flag(int, ...);
uint32_t sdp_send_cmd_iotl(uint8_t*, uint32_t, uint32_t);
uint8_t handle_remote_dev_type(struct l_array_6_uint8_t*, uint8_t);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t de_get_len(uint8_t*);
uint32_t sdp_record_matches_service_search_pattern(uint8_t*, uint8_t*);
void net_store_32(uint8_t*, uint16_t, uint32_t);
void net_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t spd_get_filtered_size(uint8_t*, uint8_t*);
void de_store_descriptor_with_len(uint8_t*, uint32_t, uint32_t, uint32_t);
uint32_t sdp_filter_attributes_in_attributeIDList(uint8_t*, uint8_t*, uint16_t, uint16_t, uint16_t*, uint8_t*);
static uint32_t sdp_suspend(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t sdp_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t sdp_release(void) __ATTRIBUTELIST__((nothrow));
uint8_t sdp_master_channel_disconnect(void);
uint8_t is_l2cap_can_release_now(int, ...);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_sdp_stack_t* sdp_stack __HIDDEN__;
static struct l_array_37_uint8_t _OC_str = { "<BT-log> :====sdp_response_size %d\n\n" };
static struct l_array_31_uint8_t _OC_str_OC_1 = { "<BT-log> :pending channel %x\n\n" };
struct l_struct_struct_OC_bt_sleep bt_suspend_sdp_resumesdp_release __HIDDEN__ = { ((l_fptr_2*)sdp_suspend), ((l_fptr_2*)sdp_resume), ((l_fptr_2*)sdp_release) };
static struct l_array_51_uint8_t _OC_str_OC_2 = { "<BT-log> :sdp L2CAP_EVENT_INCOMING_CONNECTION %x\n\n" };
static struct l_array_46_uint8_t _OC_str_OC_3 = { "<BT-log> :wait get remote device company %x\n\n" };
static struct l_array_27_uint8_t _OC_str_OC_5 = { "sdp CHANNEL_OPENED failed\n" };
static struct l_array_23_uint8_t _OC_str_OC_6 = { "sdp CHANNEL_OPENED OK\n" };
static struct l_array_22_uint8_t _OC_str_OC_7 = { "L2CAP_EVENT_CREDITS\n " };
static struct l_array_38_uint8_t _OC_str_OC_8 = { "<BT-log> :sdp CHANNEL_CLOSED %x %x \n\n" };
static struct l_array_41_uint8_t str = { "<BT-log> :=========accetp direct=======\n" };
static struct l_array_26_uint8_t str_OC_10 = { "<BT-log> :sdp release ok\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_select_u16(bool condition, uint16_t iftrue, uint16_t ifnot) {
  uint16_t r;
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
static __forceinline uint32_t llvm_sdiv_u32(int32_t a, int32_t b) {
  uint32_t r = a / b;
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

void sdp_init(struct l_struct_struct_OC_sdp_stack_t* _1) {
  uint8_t* _2;
  struct l_struct_struct_OC__stack_config* _3;

  sdp_stack = _1;
  _2 = memset((((uint8_t*)_1)), 0, 10);
  _3 = user_stack_configs;
  *((&_3->field5)) = 3;
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), sdp_packet_handler, 1, -1);
}


static void sdp_packet_handler(uint8_t _4, uint16_t _5, uint8_t* _6, uint16_t _7) {
  uint16_t _8;    /* Address-exposed local */
  uint16_t _9;    /* Address-exposed local */
  struct l_array_300_uint8_t _10;    /* Address-exposed local */
  struct l_array_6_uint8_t _11;    /* Address-exposed local */
  uint8_t* _12;
  uint8_t _13;
  uint16_t _14;
  uint16_t _15;
  uint8_t* _16;
  uint8_t _17;
  uint8_t _18;
  uint16_t _19;
  uint8_t _20;
  uint8_t _21;
  uint8_t* _22;
  uint8_t* _23;
  uint32_t _24;
  uint32_t _25;
  uint8_t _26;
  uint8_t _27;
  uint16_t _28;
  uint8_t* _29;
  uint32_t _30;
  uint8_t _31;
  uint8_t _32;
  uint8_t _33;
  uint16_t _34;
  uint16_t _35;
  uint16_t _35__PHI_TEMPORARY;
  uint16_t _36;
  uint16_t _36__PHI_TEMPORARY;
  struct l_struct_struct_OC_service_record_item_t* _37;
  struct l_struct_struct_OC_service_record_item_t* _37__PHI_TEMPORARY;
  uint8_t* _38;
  uint32_t _39;
  uint16_t _40;
  struct l_struct_struct_OC_service_record_item_t* _41;
  uint16_t _42;
  uint16_t _42__PHI_TEMPORARY;
  uint16_t _43;
  uint32_t _44;
  struct l_struct_struct_OC_service_record_item_t* _45;
  struct l_struct_struct_OC_service_record_item_t* _45__PHI_TEMPORARY;
  uint16_t _46;
  uint16_t _46__PHI_TEMPORARY;
  uint16_t _47;
  uint16_t _47__PHI_TEMPORARY;
  uint16_t _48;
  uint16_t _48__PHI_TEMPORARY;
  uint16_t _49;
  uint16_t _49__PHI_TEMPORARY;
  uint8_t* _50;
  uint32_t _51;
  uint16_t _52;
  uint32_t _53;
  uint16_t _54;
  uint16_t _55;
  uint16_t _56;
  uint16_t _56__PHI_TEMPORARY;
  uint16_t _57;
  uint16_t _57__PHI_TEMPORARY;
  uint16_t _58;
  uint16_t _58__PHI_TEMPORARY;
  uint16_t _59;
  struct l_struct_struct_OC_service_record_item_t* _60;
  uint16_t _61;
  uint16_t _62;
  uint16_t _62__PHI_TEMPORARY;
  uint16_t _63;
  uint16_t _63__PHI_TEMPORARY;
  uint16_t _64;
  uint16_t _64__PHI_TEMPORARY;
  uint16_t _65;
  uint16_t _65__PHI_TEMPORARY;
  uint16_t _66;
  uint16_t _67;
  uint16_t _67__PHI_TEMPORARY;
  uint16_t _68;
  uint16_t _68__PHI_TEMPORARY;
  uint32_t _69;
  uint8_t* _70;
  uint8_t* _71;
  uint8_t _72;
  uint8_t _73;
  uint16_t _74;
  uint8_t _75;
  uint8_t _76;
  uint8_t* _77;
  uint8_t _78;
  uint8_t _79;
  uint8_t _80;
  uint8_t _81;
  uint32_t _82;
  uint8_t _83;
  uint8_t _84;
  uint16_t _85;
  uint8_t* _86;
  uint32_t _87;
  uint8_t* _88;
  uint16_t _89;
  uint16_t _90;
  uint8_t _91;
  uint8_t _92;
  uint8_t _93;
  uint16_t _94;
  uint16_t _95;
  uint16_t _95__PHI_TEMPORARY;
  struct l_struct_struct_OC_service_record_item_t* _96;
  struct l_struct_struct_OC_service_record_item_t* _96__PHI_TEMPORARY;
  uint32_t _97;
  struct l_struct_struct_OC_service_record_item_t* _98;
  uint8_t** _99;
  uint8_t* _100;
  uint32_t _101;
  uint16_t _102;
  uint16_t _103;
  uint16_t _103__PHI_TEMPORARY;
  uint32_t _104;
  uint32_t _104__PHI_TEMPORARY;
  uint8_t* _105;
  uint32_t _106;
  uint16_t _107;
  uint32_t _108;
  uint16_t _109;
  uint32_t _110;
  uint16_t _111;
  uint16_t _112;
  uint16_t _113;
  uint16_t _114;
  uint16_t _114__PHI_TEMPORARY;
  uint32_t _115;
  uint8_t* _116;
  uint8_t _117;
  uint8_t _118;
  uint16_t _119;
  uint8_t* _120;
  uint8_t* _121;
  uint32_t _122;
  uint32_t _123;
  uint8_t _124;
  uint8_t _125;
  uint16_t _126;
  uint32_t _127;
  uint8_t* _128;
  uint32_t _129;
  uint8_t* _130;
  uint16_t _131;
  uint16_t _132;
  uint8_t _133;
  uint8_t _134;
  uint8_t _135;
  uint32_t _136;
  uint8_t _137;
  uint8_t _138;
  uint16_t _139;
  uint16_t _140;
  uint16_t _140__PHI_TEMPORARY;
  uint32_t _141;
  uint32_t _141__PHI_TEMPORARY;
  struct l_struct_struct_OC_service_record_item_t* _142;
  struct l_struct_struct_OC_service_record_item_t* _142__PHI_TEMPORARY;
  uint16_t _143;
  uint16_t _143__PHI_TEMPORARY;
  uint8_t** _144;
  uint8_t* _145;
  uint32_t _146;
  uint8_t* _147;
  uint32_t _148;
  uint16_t _149;
  uint16_t _150;
  uint16_t _150__PHI_TEMPORARY;
  struct l_struct_struct_OC_service_record_item_t* _151;
  uint16_t _152;
  uint16_t _152__PHI_TEMPORARY;
  uint16_t _153;
  uint16_t _154;
  uint16_t _154__PHI_TEMPORARY;
  uint16_t _155;
  uint16_t _155__PHI_TEMPORARY;
  uint8_t* _156;
  uint16_t _157;
  uint16_t _157__PHI_TEMPORARY;
  struct l_struct_struct_OC_service_record_item_t* _158;
  struct l_struct_struct_OC_service_record_item_t* _158__PHI_TEMPORARY;
  uint16_t _159;
  uint16_t _159__PHI_TEMPORARY;
  uint32_t _160;
  uint32_t _160__PHI_TEMPORARY;
  uint16_t _161;
  uint16_t _161__PHI_TEMPORARY;
  uint16_t _162;
  uint16_t _162__PHI_TEMPORARY;
  uint8_t** _163;
  uint8_t* _164;
  uint32_t _165;
  uint8_t* _166;
  uint32_t _167;
  uint32_t _168;
  uint16_t _169;
  uint16_t _170;
  uint16_t _171;
  uint16_t _171__PHI_TEMPORARY;
  uint16_t _172;
  uint16_t _172__PHI_TEMPORARY;
  uint8_t* _173;
  uint32_t _174;
  uint16_t _175;
  uint16_t _176;
  uint16_t _177;
  uint16_t _178;
  uint16_t _179;
  uint16_t _179__PHI_TEMPORARY;
  uint16_t _180;
  uint16_t _180__PHI_TEMPORARY;
  uint32_t _181;
  uint32_t _181__PHI_TEMPORARY;
  uint16_t _182;
  uint16_t _182__PHI_TEMPORARY;
  uint16_t _183;
  struct l_struct_struct_OC_service_record_item_t* _184;
  uint16_t _185;
  uint16_t _185__PHI_TEMPORARY;
  uint16_t _186;
  uint16_t _186__PHI_TEMPORARY;
  uint16_t _187;
  uint16_t _188;
  uint16_t _188__PHI_TEMPORARY;
  uint16_t _189;
  uint16_t _190;
  uint16_t _190__PHI_TEMPORARY;
  uint16_t _191;
  uint16_t _191__PHI_TEMPORARY;
  uint32_t _192;
  uint8_t _193;
  uint8_t _194;
  uint32_t _195;
  struct l_struct_struct_OC__stack_config* _196;
  uint32_t _197;
  uint8_t _198;
  struct l_struct_struct_OC__stack_config* _199;
  uint32_t _200;
  uint32_t _201;
  uint8_t _202;
  uint8_t _203;
  struct l_struct_struct_OC__stack_config* _204;
  uint32_t _205;
  uint8_t _206;
  struct l_struct_struct_OC__stack_config* _207;
  uint16_t _208;
  uint32_t _209;
  struct l_struct_struct_OC__stack_config* _210;
  uint8_t _211;
  uint32_t _212;
  struct l_struct_struct_OC_sdp_stack_t* _213;
  uint8_t _214;
  struct l_struct_struct_OC_sdp_stack_t* _215;
  uint16_t* _216;
  uint8_t _217;
  uint32_t _218;
  uint8_t _219;
  uint32_t _220;
  uint8_t _221;
  uint32_t _222;
  uint8_t _223;
  struct l_struct_struct_OC_sdp_stack_t* _224;
  uint16_t _225;
  uint32_t _226;
  struct l_struct_struct_OC_sdp_stack_t* _227;
  uint16_t* _228;
  uint16_t _229;
  struct l_struct_struct_OC_sdp_stack_t* _230;

  _12 = (&_11.array[((int32_t)0)]);
  switch (_4) {
  default:
    goto _231;
  case ((uint8_t)6):
    goto _232;
  case ((uint8_t)4):
    goto _233;
  }

_232:
  _13 = *_6;
  _14 =  /*tail*/ l2cap_get_remote_mtu_for_local_cid(_5);
  _15 = llvm_select_u16((((((uint16_t)_14) < ((uint16_t)((uint16_t)300)))&1)), _14, 300);
  switch (_13) {
  default:
    goto _234;
  case ((uint8_t)2):
    goto _235;
  case ((uint8_t)4):
    goto _236;
  case ((uint8_t)6):
    goto _237;
  }

_235:
  _16 = (&_10.array[((int32_t)0)]);
  _17 = *((&_6[((int32_t)2)]));
  _18 = *((&_6[((int32_t)1)]));
  _19 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_18)), 8)), (((uint16_t)(uint8_t)_17)));
  _20 = *((&_6[((int32_t)4)]));
  _21 = *((&_6[((int32_t)3)]));
  _22 = memset(_16, 0, 300);
  _23 = (&_6[((int32_t)5)]);
  _24 =  /*tail*/ de_get_len(_23);
  _25 = _24 & 65535;
  if ((((((uint32_t)(llvm_add_u32(_25, 2))) < ((uint32_t)(((((uint32_t)(uint8_t)_21)) << 8) | (((uint32_t)(uint8_t)_20)))))&1))) {
    goto _238;
  } else {
    goto _239;
  }

_238:
  _26 = *((&_6[((int32_t)(llvm_add_u32(_25, 6)))]));
  _27 = *((&_6[((int32_t)(llvm_add_u32(_25, 5)))]));
  _28 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_27)), 8)), (((uint16_t)(uint8_t)_26)));
  if ((((_28 == ((uint16_t)0))&1))) {
    goto _239;
  } else {
    goto _240;
  }

_240:
  _29 = (&_6[((int32_t)(llvm_add_u32(_25, 7)))]);
  _30 = llvm_sdiv_u32((llvm_add_u32((((uint32_t)(uint16_t)_15)), -12)), 4);
  _31 = *_29;
  if ((((_31 == ((uint8_t)2))&1))) {
    goto _241;
  } else {
    _35__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _242;
  }

_241:
  _32 = *((&_29[((int32_t)2)]));
  _33 = *((&_29[((int32_t)1)]));
  _34 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_33)), 8)), (((uint16_t)(uint8_t)_32)));
  _35__PHI_TEMPORARY = _34;   /* for PHI node */
  goto _242;

_242:
  _35 = _35__PHI_TEMPORARY;
  if ((((&sdp_record_item_begin)) < ((&sdp_record_item_end)))) {
    goto _243;
  } else {
    _42__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _244;
  }

_243:
  _36__PHI_TEMPORARY = 0;   /* for PHI node */
  _37__PHI_TEMPORARY = ((&sdp_record_item_begin));   /* for PHI node */
  goto _245;

  do {     /* Syntactic loop '' to make GCC happy */
_245:
  _36 = _36__PHI_TEMPORARY;
  _37 = _37__PHI_TEMPORARY;
  _38 = *((&_37->field2));
  _39 =  /*tail*/ sdp_record_matches_service_search_pattern(_38, _23);
  _40 = llvm_add_u16((((uint16_t)(bool)(((_39 != 0u)&1)))), _36);
  _41 = (&_37[((int32_t)1)]);
  if ((((((uint32_t)_41) < ((uint32_t)((&sdp_record_item_end))))&1))) {
    _36__PHI_TEMPORARY = _40;   /* for PHI node */
    _37__PHI_TEMPORARY = _41;   /* for PHI node */
    goto _245;
  } else {
    goto _246;
  }

  } while (1); /* end of syntactic loop '' */
_246:
  _42__PHI_TEMPORARY = _40;   /* for PHI node */
  goto _244;

_244:
  _42 = _42__PHI_TEMPORARY;
  _43 = llvm_select_u16((((((uint16_t)_42) > ((uint16_t)_28))&1)), _28, _42);
  if ((((&sdp_record_item_begin)) < ((&sdp_record_item_end)))) {
    goto _247;
  } else {
    _64__PHI_TEMPORARY = 9;   /* for PHI node */
    _65__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _248;
  }

_247:
  _44 = _30 & 65535;
  _45__PHI_TEMPORARY = ((&sdp_record_item_begin));   /* for PHI node */
  _46__PHI_TEMPORARY = 0;   /* for PHI node */
  _47__PHI_TEMPORARY = 0;   /* for PHI node */
  _48__PHI_TEMPORARY = 0;   /* for PHI node */
  _49__PHI_TEMPORARY = 9;   /* for PHI node */
  goto _249;

  do {     /* Syntactic loop '' to make GCC happy */
_249:
  _45 = _45__PHI_TEMPORARY;
  _46 = _46__PHI_TEMPORARY;
  _47 = _47__PHI_TEMPORARY;
  _48 = _48__PHI_TEMPORARY;
  _49 = _49__PHI_TEMPORARY;
  _50 = *((&_45->field2));
  _51 = sdp_record_matches_service_search_pattern(_50, _23);
  if ((((_51 == 0u)&1))) {
    _56__PHI_TEMPORARY = _49;   /* for PHI node */
    _57__PHI_TEMPORARY = _48;   /* for PHI node */
    _58__PHI_TEMPORARY = _46;   /* for PHI node */
    goto _250;
  } else {
    goto _251;
  }

_251:
  _52 = llvm_add_u16(_46, 1);
  if ((((((uint16_t)_47) < ((uint16_t)_35))&1))) {
    _56__PHI_TEMPORARY = _49;   /* for PHI node */
    _57__PHI_TEMPORARY = _48;   /* for PHI node */
    _58__PHI_TEMPORARY = _52;   /* for PHI node */
    goto _250;
  } else {
    goto _252;
  }

_252:
  _53 = *((&_45->field1));
  net_store_32(_16, _49, _53);
  _54 = llvm_add_u16(_49, 4);
  _55 = llvm_add_u16(_48, 1);
  if ((((((uint16_t)_52) < ((uint16_t)_43))&1))) {
    goto _253;
  } else {
    _62__PHI_TEMPORARY = _54;   /* for PHI node */
    _63__PHI_TEMPORARY = _55;   /* for PHI node */
    goto _254;
  }

_253:
  if ((((((uint32_t)(((uint32_t)(uint16_t)_55))) < ((uint32_t)_44))&1))) {
    _56__PHI_TEMPORARY = _54;   /* for PHI node */
    _57__PHI_TEMPORARY = _55;   /* for PHI node */
    _58__PHI_TEMPORARY = _52;   /* for PHI node */
    goto _250;
  } else {
    goto _255;
  }

_250:
  _56 = _56__PHI_TEMPORARY;
  _57 = _57__PHI_TEMPORARY;
  _58 = _58__PHI_TEMPORARY;
  _59 = llvm_add_u16(_47, 1);
  _60 = (&_45[((int32_t)1)]);
  if ((((((uint32_t)_60) < ((uint32_t)((&sdp_record_item_end))))&1))) {
    _45__PHI_TEMPORARY = _60;   /* for PHI node */
    _46__PHI_TEMPORARY = _58;   /* for PHI node */
    _47__PHI_TEMPORARY = _59;   /* for PHI node */
    _48__PHI_TEMPORARY = _57;   /* for PHI node */
    _49__PHI_TEMPORARY = _56;   /* for PHI node */
    goto _249;
  } else {
    _62__PHI_TEMPORARY = _56;   /* for PHI node */
    _63__PHI_TEMPORARY = _57;   /* for PHI node */
    goto _254;
  }

  } while (1); /* end of syntactic loop '' */
_255:
  *((&_10.array[((int32_t)(((uint32_t)(uint16_t)_54)))])) = 2;
  net_store_16(_16, (llvm_add_u16(_49, 5)), (llvm_add_u16(_47, 1)));
  _61 = llvm_add_u16(_49, 7);
  _67__PHI_TEMPORARY = _55;   /* for PHI node */
  _68__PHI_TEMPORARY = _61;   /* for PHI node */
  goto _256;

_254:
  _62 = _62__PHI_TEMPORARY;
  _63 = _63__PHI_TEMPORARY;
  _64__PHI_TEMPORARY = _62;   /* for PHI node */
  _65__PHI_TEMPORARY = _63;   /* for PHI node */
  goto _248;

_248:
  _64 = _64__PHI_TEMPORARY;
  _65 = _65__PHI_TEMPORARY;
  _66 = llvm_add_u16(_64, 1);
  *((&_10.array[((int32_t)(((uint32_t)(uint16_t)_64)))])) = 0;
  _67__PHI_TEMPORARY = _65;   /* for PHI node */
  _68__PHI_TEMPORARY = _66;   /* for PHI node */
  goto _256;

_256:
  _67 = _67__PHI_TEMPORARY;
  _68 = _68__PHI_TEMPORARY;
  *_16 = 3;
  net_store_16(_16, 1, _19);
  net_store_16(_16, 3, (llvm_add_u16(_68, -5)));
  net_store_16(_16, 5, _43);
  net_store_16(_16, 7, _67);
  _69 = sdp_try_respond(_5, _16, _68);
  goto _257;

_239:
   /*tail*/ l2cap_disconnect_internal(_5, 19);
  goto _257;

_257:
  goto _231;

_236:
  _70 = ((uint8_t*)(&_9));
  _71 = (&_10.array[((int32_t)0)]);
  _72 = *((&_6[((int32_t)2)]));
  _73 = *((&_6[((int32_t)1)]));
  _74 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_73)), 8)), (((uint16_t)(uint8_t)_72)));
  _75 = *((&_6[((int32_t)4)]));
  _76 = *((&_6[((int32_t)3)]));
  _77 = memset(_71, 0, 300);
  if (((((((((uint32_t)(uint8_t)_76)) << 8) | (((uint32_t)(uint8_t)_75))) == (llvm_add_u32((((uint32_t)(uint16_t)_7)), -5)))&1))) {
    goto _258;
  } else {
    goto _259;
  }

_258:
  _78 = *((&_6[((int32_t)8)]));
  _79 = *((&_6[((int32_t)7)]));
  _80 = *((&_6[((int32_t)6)]));
  _81 = *((&_6[((int32_t)5)]));
  _82 = ((((((uint32_t)(uint8_t)_79)) << 8) | (((uint32_t)(uint8_t)_78))) | ((((uint32_t)(uint8_t)_80)) << 16)) | ((((uint32_t)(uint8_t)_81)) << 24);
  _83 = *((&_6[((int32_t)10)]));
  _84 = *((&_6[((int32_t)9)]));
  _85 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_84)), 8)), (((uint16_t)(uint8_t)_83)));
  _86 = (&_6[((int32_t)11)]);
  _87 =  /*tail*/ de_get_len(_86);
  _88 = (&_6[((int32_t)(llvm_add_u32((_87 & 65535), 11)))]);
  _89 = llvm_add_u16(_15, -10);
  _90 = llvm_select_u16((((((uint16_t)_89) < ((uint16_t)_85))&1)), _89, _85);
  _91 = *_88;
  if ((((_91 == ((uint8_t)2))&1))) {
    goto _260;
  } else {
    _95__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _261;
  }

_260:
  _92 = *((&_88[((int32_t)2)]));
  _93 = *((&_88[((int32_t)1)]));
  _94 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_93)), 8)), (((uint16_t)(uint8_t)_92)));
  _95__PHI_TEMPORARY = _94;   /* for PHI node */
  goto _261;

_261:
  _95 = _95__PHI_TEMPORARY;
  if ((((&sdp_record_item_begin)) < ((&sdp_record_item_end)))) {
    goto _262;
  } else {
    goto _259;
  }

_262:
  _96__PHI_TEMPORARY = ((&sdp_record_item_begin));   /* for PHI node */
  goto _263;

  do {     /* Syntactic loop '' to make GCC happy */
_263:
  _96 = _96__PHI_TEMPORARY;
  _97 = *((&_96->field1));
  if ((((_97 == _82)&1))) {
    goto _264;
  } else {
    goto _265;
  }

_265:
  _98 = (&_96[((int32_t)1)]);
  if ((((((uint32_t)_98) < ((uint32_t)((&sdp_record_item_end))))&1))) {
    _96__PHI_TEMPORARY = _98;   /* for PHI node */
    goto _263;
  } else {
    goto _266;
  }

  } while (1); /* end of syntactic loop '' */
_264:
  _99 = (&_96->field2);
  if ((((_95 == ((uint16_t)0))&1))) {
    goto _267;
  } else {
    _103__PHI_TEMPORARY = _90;   /* for PHI node */
    _104__PHI_TEMPORARY = 7;   /* for PHI node */
    goto _268;
  }

_267:
  _100 = *_99;
  _101 =  /*tail*/ spd_get_filtered_size(_100, _86);
  de_store_descriptor_with_len(((&_10.array[((int32_t)7)])), 6, 6, (_101 & 65535));
  _102 = llvm_add_u16(_90, -3);
  _103__PHI_TEMPORARY = _102;   /* for PHI node */
  _104__PHI_TEMPORARY = 10;   /* for PHI node */
  goto _268;

_268:
  _103 = _103__PHI_TEMPORARY;
  _104 = _104__PHI_TEMPORARY;
  _105 = *_99;
  _106 = sdp_filter_attributes_in_attributeIDList(_105, _86, _95, _103, (&_9), ((&_10.array[((int32_t)_104)])));
  _107 = _9;
  _108 = llvm_add_u32((((uint32_t)(uint16_t)_107)), _104);
  _109 = ((uint16_t)_108);
  _110 = _108 & 65535;
  _111 = ((uint16_t)(llvm_add_u32(_108, 65529)));
  if ((((_106 == 0u)&1))) {
    goto _269;
  } else {
    goto _270;
  }

_270:
  _112 = llvm_add_u16(_109, 1);
  *((&_10.array[((int32_t)_110)])) = 0;
  _114__PHI_TEMPORARY = _112;   /* for PHI node */
  goto _271;

_269:
  *((&_10.array[((int32_t)_110)])) = 2;
  net_store_16(_71, (llvm_add_u16(_109, 1)), (llvm_add_u16(_107, _95)));
  _113 = llvm_add_u16(_109, 3);
  _114__PHI_TEMPORARY = _113;   /* for PHI node */
  goto _271;

_271:
  _114 = _114__PHI_TEMPORARY;
  *_71 = 5;
  net_store_16(_71, 1, _74);
  net_store_16(_71, 3, (llvm_add_u16(_114, -5)));
  net_store_16(_71, 5, _111);
  _115 = sdp_try_respond(_5, _71, _114);
  goto _272;

_266:
  goto _259;

_259:
   /*tail*/ l2cap_disconnect_internal(_5, 19);
  goto _272;

_272:
  goto _231;

_237:
  _116 = (&_10.array[((int32_t)0)]);
  _117 = *((&_6[((int32_t)2)]));
  _118 = *((&_6[((int32_t)1)]));
  _119 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_118)), 8)), (((uint16_t)(uint8_t)_117)));
  _120 = memset(_116, 0, 300);
  _121 = (&_6[((int32_t)5)]);
  _122 =  /*tail*/ de_get_len(_121);
  _123 = _122 & 65535;
  _124 = *((&_6[((int32_t)(llvm_add_u32(_123, 6)))]));
  _125 = *((&_6[((int32_t)(llvm_add_u32(_123, 5)))]));
  _126 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_125)), 8)), (((uint16_t)(uint8_t)_124)));
  _127 = llvm_add_u32(_123, 7);
  _128 = (&_6[((int32_t)_127)]);
  _129 =  /*tail*/ de_get_len(_128);
  _130 = (&_6[((int32_t)(llvm_add_u32((_129 & 65535), _127)))]);
  _131 = llvm_add_u16(_15, -12);
  _132 = llvm_select_u16((((((uint16_t)_131) < ((uint16_t)_126))&1)), _131, _126);
  _133 = *_130;
  if ((((_133 == ((uint8_t)4))&1))) {
    goto _273;
  } else {
    _140__PHI_TEMPORARY = 0;   /* for PHI node */
    _141__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _274;
  }

_273:
  _134 = *((&_130[((int32_t)2)]));
  _135 = *((&_130[((int32_t)1)]));
  _136 = ((((uint32_t)(uint8_t)_135)) << 8) | (((uint32_t)(uint8_t)_134));
  _137 = *((&_130[((int32_t)4)]));
  _138 = *((&_130[((int32_t)3)]));
  _139 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_138)), 8)), (((uint16_t)(uint8_t)_137)));
  _140__PHI_TEMPORARY = _139;   /* for PHI node */
  _141__PHI_TEMPORARY = _136;   /* for PHI node */
  goto _274;

_274:
  _140 = _140__PHI_TEMPORARY;
  _141 = _141__PHI_TEMPORARY;
  if (((((((_140 == ((uint16_t)0))&1)) & (((_141 == 0u)&1)))&1))) {
    goto _275;
  } else {
    _154__PHI_TEMPORARY = 7;   /* for PHI node */
    _155__PHI_TEMPORARY = _132;   /* for PHI node */
    goto _276;
  }

_275:
  if ((((&sdp_record_item_begin)) < ((&sdp_record_item_end)))) {
    goto _277;
  } else {
    _152__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _278;
  }

_277:
  _142__PHI_TEMPORARY = ((&sdp_record_item_begin));   /* for PHI node */
  _143__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _279;

  do {     /* Syntactic loop '' to make GCC happy */
_279:
  _142 = _142__PHI_TEMPORARY;
  _143 = _143__PHI_TEMPORARY;
  _144 = (&_142->field2);
  _145 = *_144;
  _146 =  /*tail*/ sdp_record_matches_service_search_pattern(_145, _121);
  if ((((_146 == 0u)&1))) {
    _150__PHI_TEMPORARY = _143;   /* for PHI node */
    goto _280;
  } else {
    goto _281;
  }

_281:
  _147 = *_144;
  _148 =  /*tail*/ spd_get_filtered_size(_147, _128);
  _149 = ((uint16_t)(llvm_add_u32((llvm_add_u32((((uint32_t)(uint16_t)_143)), 3)), _148)));
  _150__PHI_TEMPORARY = _149;   /* for PHI node */
  goto _280;

_280:
  _150 = _150__PHI_TEMPORARY;
  _151 = (&_142[((int32_t)1)]);
  if ((((((uint32_t)_151) < ((uint32_t)((&sdp_record_item_end))))&1))) {
    _142__PHI_TEMPORARY = _151;   /* for PHI node */
    _143__PHI_TEMPORARY = _150;   /* for PHI node */
    goto _279;
  } else {
    goto _282;
  }

  } while (1); /* end of syntactic loop '' */
_282:
  _152__PHI_TEMPORARY = _150;   /* for PHI node */
  goto _278;

_278:
  _152 = _152__PHI_TEMPORARY;
  de_store_descriptor_with_len(((&_10.array[((int32_t)7)])), 6, 6, (((uint32_t)(uint16_t)_152)));
  _153 = llvm_add_u16(_132, -3);
  _154__PHI_TEMPORARY = 10;   /* for PHI node */
  _155__PHI_TEMPORARY = _153;   /* for PHI node */
  goto _276;

_276:
  _154 = _154__PHI_TEMPORARY;
  _155 = _155__PHI_TEMPORARY;
  if ((((&sdp_record_item_begin)) < ((&sdp_record_item_end)))) {
    goto _283;
  } else {
    _188__PHI_TEMPORARY = _154;   /* for PHI node */
    goto _284;
  }

_283:
  _156 = ((uint8_t*)(&_8));
  _157__PHI_TEMPORARY = _155;   /* for PHI node */
  _158__PHI_TEMPORARY = ((&sdp_record_item_begin));   /* for PHI node */
  _159__PHI_TEMPORARY = 0;   /* for PHI node */
  _160__PHI_TEMPORARY = 1;   /* for PHI node */
  _161__PHI_TEMPORARY = _140;   /* for PHI node */
  _162__PHI_TEMPORARY = _154;   /* for PHI node */
  goto _285;

  do {     /* Syntactic loop '' to make GCC happy */
_285:
  _157 = _157__PHI_TEMPORARY;
  _158 = _158__PHI_TEMPORARY;
  _159 = _159__PHI_TEMPORARY;
  _160 = _160__PHI_TEMPORARY;
  _161 = _161__PHI_TEMPORARY;
  _162 = _162__PHI_TEMPORARY;
  if ((((((int32_t)(((uint32_t)(uint16_t)_159))) < ((int32_t)_141))&1))) {
    _179__PHI_TEMPORARY = _162;   /* for PHI node */
    _180__PHI_TEMPORARY = _161;   /* for PHI node */
    _181__PHI_TEMPORARY = _160;   /* for PHI node */
    _182__PHI_TEMPORARY = _157;   /* for PHI node */
    goto _286;
  } else {
    goto _287;
  }

_287:
  _163 = (&_158->field2);
  _164 = *_163;
  _165 = sdp_record_matches_service_search_pattern(_164, _121);
  if ((((_165 == 0u)&1))) {
    _179__PHI_TEMPORARY = _162;   /* for PHI node */
    _180__PHI_TEMPORARY = _161;   /* for PHI node */
    _181__PHI_TEMPORARY = _160;   /* for PHI node */
    _182__PHI_TEMPORARY = _157;   /* for PHI node */
    goto _286;
  } else {
    goto _288;
  }

_288:
  if ((((_161 == ((uint16_t)0))&1))) {
    goto _289;
  } else {
    _171__PHI_TEMPORARY = _162;   /* for PHI node */
    _172__PHI_TEMPORARY = _157;   /* for PHI node */
    goto _290;
  }

_289:
  _166 = *_163;
  _167 = spd_get_filtered_size(_166, _128);
  _168 = _167 & 65535;
  if ((((_168 == 0u)&1))) {
    _179__PHI_TEMPORARY = _162;   /* for PHI node */
    _180__PHI_TEMPORARY = 0;   /* for PHI node */
    _181__PHI_TEMPORARY = _160;   /* for PHI node */
    _182__PHI_TEMPORARY = _157;   /* for PHI node */
    goto _286;
  } else {
    goto _291;
  }

_291:
  if (((((((_160 != 0u)&1)) | (((((uint32_t)(llvm_add_u32(_168, 3))) <= ((uint32_t)(((uint32_t)(uint16_t)_157))))&1)))&1))) {
    goto _292;
  } else {
    goto _293;
  }

_292:
  de_store_descriptor_with_len(((&_10.array[((int32_t)(((uint32_t)(uint16_t)_162)))])), 6, 6, _168);
  _169 = llvm_add_u16(_162, 3);
  _170 = llvm_add_u16(_157, -3);
  _171__PHI_TEMPORARY = _169;   /* for PHI node */
  _172__PHI_TEMPORARY = _170;   /* for PHI node */
  goto _290;

_290:
  _171 = _171__PHI_TEMPORARY;
  _172 = _172__PHI_TEMPORARY;
  _173 = *_163;
  _174 = sdp_filter_attributes_in_attributeIDList(_173, _128, _161, _172, (&_8), ((&_10.array[((int32_t)(((uint32_t)(uint16_t)_171)))])));
  _175 = _8;
  _176 = llvm_add_u16(_175, _171);
  if ((((_174 == 0u)&1))) {
    goto _294;
  } else {
    goto _295;
  }

_295:
  _177 = llvm_sub_u16(_172, _175);
  _179__PHI_TEMPORARY = _176;   /* for PHI node */
  _180__PHI_TEMPORARY = 0;   /* for PHI node */
  _181__PHI_TEMPORARY = 0;   /* for PHI node */
  _182__PHI_TEMPORARY = _177;   /* for PHI node */
  goto _286;

_286:
  _179 = _179__PHI_TEMPORARY;
  _180 = _180__PHI_TEMPORARY;
  _181 = _181__PHI_TEMPORARY;
  _182 = _182__PHI_TEMPORARY;
  _183 = llvm_add_u16(_159, 1);
  _184 = (&_158[((int32_t)1)]);
  if ((((((uint32_t)_184) < ((uint32_t)((&sdp_record_item_end))))&1))) {
    _157__PHI_TEMPORARY = _182;   /* for PHI node */
    _158__PHI_TEMPORARY = _184;   /* for PHI node */
    _159__PHI_TEMPORARY = _183;   /* for PHI node */
    _160__PHI_TEMPORARY = _181;   /* for PHI node */
    _161__PHI_TEMPORARY = _180;   /* for PHI node */
    _162__PHI_TEMPORARY = _179;   /* for PHI node */
    goto _285;
  } else {
    goto _296;
  }

  } while (1); /* end of syntactic loop '' */
_294:
  _178 = llvm_add_u16(_175, _161);
  _185__PHI_TEMPORARY = _176;   /* for PHI node */
  _186__PHI_TEMPORARY = _178;   /* for PHI node */
  goto _297;

_293:
  _185__PHI_TEMPORARY = _162;   /* for PHI node */
  _186__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _297;

_297:
  _185 = _185__PHI_TEMPORARY;
  _186 = _186__PHI_TEMPORARY;
  *((&_10.array[((int32_t)(((uint32_t)(uint16_t)_185)))])) = 4;
  net_store_16(_116, (llvm_add_u16(_185, 1)), _159);
  net_store_16(_116, (llvm_add_u16(_185, 3)), _186);
  _187 = llvm_add_u16(_185, 5);
  _190__PHI_TEMPORARY = _185;   /* for PHI node */
  _191__PHI_TEMPORARY = _187;   /* for PHI node */
  goto _298;

_296:
  _188__PHI_TEMPORARY = _179;   /* for PHI node */
  goto _284;

_284:
  _188 = _188__PHI_TEMPORARY;
  _189 = llvm_add_u16(_188, 1);
  *((&_10.array[((int32_t)(((uint32_t)(uint16_t)_188)))])) = 0;
  _190__PHI_TEMPORARY = _188;   /* for PHI node */
  _191__PHI_TEMPORARY = _189;   /* for PHI node */
  goto _298;

_298:
  _190 = _190__PHI_TEMPORARY;
  _191 = _191__PHI_TEMPORARY;
  *_116 = 7;
  net_store_16(_116, 1, _119);
  net_store_16(_116, 3, (llvm_add_u16(_191, -5)));
  net_store_16(_116, 5, (llvm_add_u16(_190, -7)));
  _192 = sdp_try_respond(_5, _116, _191);
  goto _231;

_234:
   /*tail*/ l2cap_disconnect_internal(_5, 19);
  goto _231;

_233:
  _193 = *_6;
  switch (_193) {
  default:
    goto _231;
  case ((uint8_t)114):
    goto _299;
  case ((uint8_t)112):
    goto _300;
  case ((uint8_t)116):
    goto _301;
  case ((uint8_t)113):
    goto _302;
  case ((uint8_t)121):
    goto _303;
  }

_299:
  _194 = l2cap_debug_enable;
  if ((((((int8_t)_194) < ((int8_t)((uint8_t)0)))&1))) {
    goto _304;
  } else {
    goto _305;
  }

_304:
  _195 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (((uint32_t)(uint16_t)_5)));
  goto _305;

_305:
  bt_flip_addr(_12, ((&_6[((int32_t)2)])));
  _196 = user_stack_configs;
  _197 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_196->field9)));
  if (((((_197 & 1048576) == 0u)&1))) {
    goto _306;
  } else {
    goto _307;
  }

_307:
  _198 = ((l_fptr_1*)(void*)get_remote_test_flag)();
  _199 = user_stack_configs;
  if ((((_198 == ((uint8_t)0))&1))) {
    goto _308;
  } else {
    goto _309;
  }

_308:
  _200 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_199->field9)));
  if (((((_200 & 4194304) == 0u)&1))) {
    goto _310;
  } else {
    goto _311;
  }

_311:
  *((&_199->field3)) = _5;
  _201 = sdp_send_cmd_iotl(_12, 0, 0);
  if ((((_201 == 0u)&1))) {
    goto _231;
  } else {
    goto _310;
  }

_309:
  *((&_199->field5)) = 3;
  goto _310;

_306:
  *((&_196->field5)) = 3;
  _202 = handle_remote_dev_type((&_11), -1);
  _203 = hid_conn_depend_on_dev_company;
  if (((((((_202 != ((uint8_t)0))&1)) | (((_203 == ((uint8_t)0))&1)))&1))) {
    goto _312;
  } else {
    goto _313;
  }

_313:
  _204 = user_stack_configs;
  *((&_204->field3)) = _5;
  _205 = sdp_send_cmd_iotl(_12, 2, 0);
  if ((((_205 == 0u)&1))) {
    goto _314;
  } else {
    goto _310;
  }

_314:
  _206 = l2cap_debug_enable;
  if ((((((int8_t)_206) < ((int8_t)((uint8_t)0)))&1))) {
    goto _315;
  } else {
    goto _231;
  }

_315:
  _207 = user_stack_configs;
  _208 = *((&_207->field3));
  _209 = printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((uint32_t)(uint16_t)_208)));
  goto _231;

_310:
  _210 = user_stack_configs;
  *((&_210->field3)) = 0;
  goto _312;

_312:
  _211 = l2cap_debug_enable;
  if ((((((int8_t)_211) < ((int8_t)((uint8_t)0)))&1))) {
    goto _316;
  } else {
    goto _317;
  }

_316:
  _212 = puts(((&str.array[((int32_t)0)])));
  goto _317;

_317:
  _213 = sdp_stack;
  *((&_213->field0.field0)) = _5;
  l2cap_accept_connection_internal(_5);
  goto _231;

_300:
  _214 = *((&_6[((int32_t)2)]));
  _215 = sdp_stack;
  _216 = (&_215->field0.field0);
  if ((((_214 == ((uint8_t)0))&1))) {
    goto _318;
  } else {
    goto _319;
  }

_319:
  *_216 = 0;
  _217 = l2cap_debug_enable;
  if (((((llvm_and_u8(_217, 32)) == ((uint8_t)0))&1))) {
    goto _231;
  } else {
    goto _320;
  }

_320:
  _218 =  /*tail*/ puts(((&_OC_str_OC_5.array[((int32_t)0)])));
  goto _231;

_318:
  *_216 = _5;
  _219 = l2cap_debug_enable;
  if (((((llvm_and_u8(_219, 32)) == ((uint8_t)0))&1))) {
    goto _231;
  } else {
    goto _321;
  }

_321:
  _220 =  /*tail*/ puts(((&_OC_str_OC_6.array[((int32_t)0)])));
  goto _231;

_301:
  _221 = l2cap_debug_enable;
  if (((((llvm_and_u8(_221, 32)) == ((uint8_t)0))&1))) {
    goto _231;
  } else {
    goto _322;
  }

_322:
  _222 =  /*tail*/ puts(((&_OC_str_OC_7.array[((int32_t)0)])));
  goto _231;

_302:
  _223 = l2cap_debug_enable;
  if ((((((int8_t)_223) < ((int8_t)((uint8_t)0)))&1))) {
    goto _323;
  } else {
    goto _324;
  }

_323:
  _224 = sdp_stack;
  _225 = *((&_224->field0.field0));
  _226 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint16_t)_5)), (((uint32_t)(uint16_t)_225)));
  goto _324;

_324:
  _227 = sdp_stack;
  _228 = (&_227->field0.field0);
  _229 = *_228;
  if ((((_229 == _5)&1))) {
    goto _325;
  } else {
    goto _231;
  }

_325:
  *_228 = 0;
  goto _231;

_303:
  _230 = sdp_stack;
  *((&_230->field0.field0)) = _5;
  goto _231;

_231:
  return;
}


uint32_t sdp_create_error_response(uint16_t _326, uint16_t _327, uint16_t _328) {
   /*tail*/ l2cap_disconnect_internal(_326, 19);
  return 0;
}


uint32_t sdp_try_respond(uint16_t _329, uint8_t* _330, uint16_t _331) {
  uint32_t _332;
  uint8_t _333;
  uint32_t _334;
  uint32_t _335;
  uint32_t _336;
  uint32_t _336__PHI_TEMPORARY;

  if ((((_331 == ((uint16_t)0))&1))) {
    _336__PHI_TEMPORARY = 129;   /* for PHI node */
    goto _337;
  } else {
    goto _338;
  }

_338:
  _332 =  /*tail*/ l2cap_can_send_packet_now(_329);
  if ((((_332 == 0u)&1))) {
    _336__PHI_TEMPORARY = 130;   /* for PHI node */
    goto _337;
  } else {
    goto _339;
  }

_339:
  _333 = l2cap_debug_enable;
  if ((((((int8_t)_333) < ((int8_t)((uint8_t)0)))&1))) {
    goto _340;
  } else {
    goto _341;
  }

_340:
  _334 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint16_t)_331)));
  goto _341;

_341:
  _335 =  /*tail*/ l2cap_send_internal(_329, _330, _331, 0);
  _336__PHI_TEMPORARY = _335;   /* for PHI node */
  goto _337;

_337:
  _336 = _336__PHI_TEMPORARY;
  return _336;
}


uint32_t connect_pending_connnecting_sdp_handler(void) {
  struct l_struct_struct_OC__stack_config* _342;
  uint16_t _343;
  uint8_t _344;
  uint32_t _345;
  struct l_struct_struct_OC_sdp_stack_t* _346;
  struct l_struct_struct_OC__stack_config* _347;
  uint32_t _348;
  uint32_t _348__PHI_TEMPORARY;

  _342 = user_stack_configs;
  _343 = *((&_342->field3));
  _344 = l2cap_debug_enable;
  if ((((((int8_t)_344) < ((int8_t)((uint8_t)0)))&1))) {
    goto _349;
  } else {
    goto _350;
  }

_349:
  _345 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), (((uint32_t)(uint16_t)_343)));
  goto _350;

_350:
  if ((((_343 == ((uint16_t)0))&1))) {
    _348__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _351;
  } else {
    goto _352;
  }

_352:
  _346 = sdp_stack;
  *((&_346->field0.field0)) = _343;
   /*tail*/ l2cap_accept_connection_internal(_343);
  _347 = user_stack_configs;
  *((&_347->field3)) = 0;
  _348__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _351;

_351:
  _348 = _348__PHI_TEMPORARY;
  return _348;
}


void sdp_slave_channel_disconnect(void) {
  struct l_struct_struct_OC_sdp_stack_t* _353;
  uint16_t _354;

  _353 = sdp_stack;
  _354 = *((&_353->field0.field0));
  if ((((_354 == ((uint16_t)0))&1))) {
    goto _355;
  } else {
    goto _356;
  }

_356:
   /*tail*/ l2cap_disconnect_internal(_354, 19);
  goto _355;

_355:
  return;
}


uint32_t sdp_core_data_for_send(uint8_t* _357, uint16_t _358) {
  uint8_t* _359;
  uint8_t* _360;

  _359 = *((uint8_t**)(&sdp_stack));
  _360 = memcpy(_357, _359, 10);
  return 10;
}


void sdp_core_data_for_set(uint8_t* _361, uint16_t _362) {
  uint8_t* _363;
  uint8_t* _364;

  _363 = *((uint8_t**)(&sdp_stack));
  _364 = memcpy(_363, _361, 10);
}


static uint32_t sdp_suspend(void) {
  return 0;
}


static uint32_t sdp_resume(void) {
  return 0;
}


static uint32_t sdp_release(void) {
  struct l_struct_struct_OC_sdp_stack_t* _365;
  uint16_t _366;
  uint8_t _367;
  struct l_struct_struct_OC_sdp_stack_t* _368;
  uint16_t _369;
  uint32_t _370;
  uint8_t _371;
  uint8_t _372;
  uint32_t _373;
  uint32_t _374;
  uint32_t _374__PHI_TEMPORARY;

  _365 = sdp_stack;
  if ((((_365 == ((struct l_struct_struct_OC_sdp_stack_t*)/*NULL*/0))&1))) {
    _374__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _375;
  } else {
    goto _376;
  }

_376:
  _366 = *((&_365->field0.field0));
  if ((((_366 == ((uint16_t)0))&1))) {
    goto _377;
  } else {
    goto _378;
  }

_378:
   /*tail*/ sdp_slave_channel_disconnect();
  _374__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _375;

_377:
  _367 =  /*tail*/ sdp_master_channel_disconnect();
  if ((((_367 == ((uint8_t)0))&1))) {
    goto _379;
  } else {
    _374__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _375;
  }

_379:
  _368 = sdp_stack;
  _369 = *((&_368->field0.field1));
  if ((((_369 == ((uint16_t)0))&1))) {
    goto _380;
  } else {
    goto _381;
  }

_381:
  _370 =  /*tail*/ sdp_send_cmd_iotl(((uint8_t*)/*NULL*/0), 1, 0);
  _374__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _375;

_380:
  _371 =  /*tail*/ ((l_fptr_1*)(void*)is_l2cap_can_release_now)();
  if ((((_371 == ((uint8_t)0))&1))) {
    _374__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _375;
  } else {
    goto _382;
  }

_382:
  _372 = l2cap_debug_enable;
  if ((((((int8_t)_372) < ((int8_t)((uint8_t)0)))&1))) {
    goto _383;
  } else {
    goto _384;
  }

_383:
  _373 =  /*tail*/ puts(((&str_OC_10.array[((int32_t)0)])));
  goto _384;

_384:
  sdp_stack = ((struct l_struct_struct_OC_sdp_stack_t*)/*NULL*/0);
  _374__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _375;

_375:
  _374 = _374__PHI_TEMPORARY;
  return _374;
}

