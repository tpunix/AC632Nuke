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
struct l_struct_struct_OC_a2dp_media_codec;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC__avdtp_stream;
struct l_struct_struct_OC__avdtp_sep_ind;
struct l_struct_struct_OC__seid_req;
struct l_struct_struct_OC_avdtp_core_data_t;
struct l_struct_struct_OC_avdtp;
struct l_struct_struct_OC__seid_info;
struct l_struct_struct_OC__avdtp_local_sep;
struct l_struct_struct_OC_a2dp_core_data_t;
struct l_struct_struct_OC_media_core_data_t;
struct l_struct_struct_OC_a2dp_media_probe;
struct l_struct_struct_OC_a2dp_media;
struct l_struct_struct_OC_a2dp_conn;

/* Function definitions */
typedef uint32_t l_fptr_4(uint32_t);

typedef uint32_t l_fptr_26(uint8_t*, uint8_t*, uint16_t);

typedef uint32_t l_fptr_14(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_12(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef uint8_t l_fptr_18(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_16(uint8_t);

typedef void l_fptr_8(uint8_t, uint8_t*, uint8_t*);

typedef uint32_t l_fptr_27(uint8_t*, l_fptr_26*);

typedef uint8_t l_fptr_17(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint8_t l_fptr_24(int, ...);

typedef void l_fptr_11(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_9(uint8_t*, uint32_t);

typedef void l_fptr_23(struct l_struct_struct_OC__avdtp_local_sep*);

typedef uint32_t l_fptr_5(uint8_t*);

typedef uint32_t l_fptr_10(void);

typedef uint8_t l_fptr_22(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t*);

typedef void l_fptr_1(uint8_t*, uint32_t, uint32_t);

typedef uint8_t l_fptr_25(uint8_t, uint16_t);

typedef uint32_t l_fptr_7(int, ...);

typedef void l_fptr_13(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint8_t l_fptr_19(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*);

typedef uint8_t l_fptr_3(void);

typedef uint8_t l_fptr_20(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t);

typedef uint8_t l_fptr_21(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*);

typedef uint32_t l_fptr_6(uint8_t*, uint16_t);

typedef void l_fptr_2(uint32_t);

typedef void l_fptr_15(void);


/* Types Definitions */
struct l_array_4_uint16_t {
  uint16_t array[4];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_struct_struct_OC_a2dp_media_codec {
  uint32_t field0;
  l_fptr_4* field1;
  l_fptr_5* field2;
  l_fptr_6* field3;
  l_fptr_7* field4;
  l_fptr_5* field5;
};
struct l_array_46_uint8_t {
  uint8_t array[46];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_1* field0;
  l_fptr_8* field1;
  l_fptr_9* field2;
  l_fptr_10* field3;
  l_fptr_11* field4;
  l_fptr_12* field5;
  l_fptr_10* field6;
  l_fptr_2* field7;
  l_fptr_13* field8;
  l_fptr_14* field9;
  l_fptr_15* field10;
  l_fptr_16* field11;
  l_fptr_17* field12;
  l_fptr_11* field13;
  l_fptr_10* field14;
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_struct_struct_OC__avdtp_stream {
  uint8_t field0;
};
struct l_struct_struct_OC__avdtp_sep_ind {
  l_fptr_18* field0;
  l_fptr_19* field1;
  l_fptr_20* field2;
  l_fptr_21* field3;
  l_fptr_21* field4;
  l_fptr_22* field5;
  l_fptr_23* field6;
  l_fptr_24* field7;
  l_fptr_25* field8;
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
struct l_struct_struct_OC_a2dp_core_data_t {
  uint8_t field0;
};
struct l_struct_struct_OC_media_core_data_t {
  uint16_t field0;
  uint16_t field1;
  uint32_t field2;
};
struct l_struct_struct_OC_a2dp_media_probe {
  uint32_t field0;
  l_fptr_27* field1;
  l_fptr_26* field2;
  l_fptr_7* field3;
  l_fptr_7* field4;
  l_fptr_7* field5;
};
struct l_struct_struct_OC_a2dp_media {
  struct l_struct_struct_OC_media_core_data_t field0;
  struct l_struct_struct_OC_a2dp_media_probe* field1;
  struct l_struct_struct_OC_a2dp_media_codec* field2;
  uint32_t field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_struct_struct_OC_a2dp_conn {
  struct l_array_6_uint8_t field0;
  struct l_struct_struct_OC_a2dp_core_data_t field1;
  struct l_struct_struct_OC_avdtp field2;
  struct l_struct_struct_OC_a2dp_media field3;
};

/* External Global Variable Declarations */
extern uint8_t profile_debug_enable;
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;

/* Function Declarations */
uint32_t a2dp_media_get_packet(uint8_t**) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_get_sbc_packet(uint8_t*, uint8_t**, uint32_t);
uint32_t a2dp_media_try_get_packet(uint8_t**) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* a2dp_media_fetch_packet(uint32_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* lmp_private_fetch_sbc_packet(uint8_t*, uint32_t*, uint8_t*, uint32_t);
uint8_t* a2dp_media_fetch_packet_and_wait(uint32_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t a2dp_media_get_packet_num(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_get_sbc_packet_num(uint8_t*);
void a2dp_media_free_packet(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void lmp_private_free_sbc_packet(uint8_t*, uint8_t*);
uint32_t a2dp_media_clear_packet(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_clear_a2dp_packet(uint8_t*, uint16_t);
uint32_t a2dp_media_get_total_data_len(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_get_sbc_data_len(uint8_t*);
uint32_t a2dp_media_channel_exist(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_a2dp_channel_exist(uint8_t*);
uint32_t a2dp_media_get_total_buffer_size(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_get_rx_buffer_total_size(uint8_t*);
uint32_t a2dp_media_get_remain_buffer_size(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_get_rx_buffer_remain_size(uint8_t*);
uint32_t a2dp_media_get_remain_play_time(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_get_sbc_remain_time(uint8_t*, uint8_t);
uint32_t a2dp_media_is_clearing_frame(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t lmp_private_is_clearing_a2dp_packet(uint8_t*);
uint32_t a2dp_media_clear_packet_before_seqn(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t a2dp_media_get_codec_type(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t a2dp_media_get_rtp_header_len(uint8_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t a2dp_media_get_packet_play_time(uint16_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_a2dp_conn* __a2dp_conn_for_channel(uint16_t);
void a2dp_media_suspend_resume(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void lmp_private_close_sbc_channel(uint8_t*);
uint8_t* lmp_private_open_sbc_channel(uint8_t*, uint16_t, uint8_t);
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
static uint32_t sbc_codec_inused(uint32_t) __ATTRIBUTELIST__((nothrow, pure));
static uint32_t sbc_codec_init(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t sbc_codec_start(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, const));
static uint32_t sbc_codec_stop(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t update_multi_bd_status(uint8_t*, uint8_t, uint8_t);
void update_bt_current_status(uint8_t*, uint8_t, uint8_t);
uint32_t get_music_volume(uint8_t*);
uint8_t find_a2dp_conn_number(int, ...);
void os_time_dly(uint32_t);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static uint8_t* current_conn;
static uint8_t* channel;
static struct l_array_4_uint16_t a2dp_media_get_packet_play_time_OC_sample_rates = { { 16000, 32000u, 44100u, 48000u } };
static struct l_array_39_uint8_t _OC_str = { "[pro-info] :===suspend %x channel %x\n\n" };
static struct l_array_41_uint8_t _OC_str_OC_1 = { "[pro-info] :===resume %x %x channel %x\n\n" };
struct l_struct_struct_OC_a2dp_media_codec a2dp_1sbc_codec_private __HIDDEN__ = { 0, sbc_codec_inused, sbc_codec_init, sbc_codec_start, ((l_fptr_7*)sbc_codec_stop), sbc_codec_stop };
struct l_struct_struct_OC_a2dp_media_codec a2dp_2aac_sink_codec __HIDDEN__ = { 2, sbc_codec_inused, sbc_codec_init, sbc_codec_start, ((l_fptr_7*)sbc_codec_stop), sbc_codec_stop };
static struct l_array_46_uint8_t _OC_str_OC_3 = { "[pro-info] :sbc_codec_init:%x %x channel %x\n\n" };
static struct l_array_22_uint8_t _OC_str_OC_5 = { "<BT-log> :bitrate:%d\n" };
static struct l_array_24_uint8_t _OC_str_OC_6 = { "<BT-log> :nchannels:%d\n" };
static struct l_array_25_uint8_t _OC_str_OC_7 = { "<BT-log> :samplerate:%d\n" };
static struct l_array_29_uint8_t str = { "<BT-log> :a2dp aac capacity:" };
static struct l_array_26_uint8_t str_OC_8 = { "<BT-log> :sbc_codec_init\n" };


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
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_udiv_u32(uint32_t a, uint32_t b) {
  uint32_t r = a / b;
  return r;
}
static __forceinline uint8_t llvm_lshr_u8(uint8_t a, uint8_t b) {
  uint8_t r = a >> b;
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


/* Function Bodies */

uint32_t a2dp_media_get_packet(uint8_t** _1) {
  uint8_t* _2;
  uint8_t* _3;
  uint32_t _4;
  uint32_t _5;
  uint32_t _5__PHI_TEMPORARY;

#line 237 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 241 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _2 = current_conn;
  if ((((_2 == ((uint8_t*)/*NULL*/0))&1))) {
    _5__PHI_TEMPORARY = -22;   /* for PHI node */
    goto _6;
  } else {
    goto _7;
  }

_7:
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _3 = channel;
  _4 =  /*tail*/ lmp_private_get_sbc_packet(_3, _1, 1);
  ;
  _5__PHI_TEMPORARY = _4;   /* for PHI node */
  goto _6;

_6:
  _5 = _5__PHI_TEMPORARY;
  return _5;
}


uint32_t a2dp_media_try_get_packet(uint8_t** _8) {
  uint8_t* _9;
  uint8_t* _10;
  uint32_t _11;
  uint32_t _12;
  uint32_t _12__PHI_TEMPORARY;

#line 256 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 260 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _9 = current_conn;
  if ((((_9 == ((uint8_t*)/*NULL*/0))&1))) {
    _12__PHI_TEMPORARY = -22;   /* for PHI node */
    goto _13;
  } else {
    goto _14;
  }

_14:
#line 264 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _10 = channel;
  _11 =  /*tail*/ lmp_private_get_sbc_packet(_10, _8, 0);
  ;
  _12__PHI_TEMPORARY = _11;   /* for PHI node */
  goto _13;

_13:
  _12 = _12__PHI_TEMPORARY;
  return _12;
}


uint8_t* a2dp_media_fetch_packet(uint32_t* _15, uint8_t* _16) {
  uint8_t* _17;
  uint8_t* _18;
  uint8_t* _19;
  uint8_t* _20;
  uint8_t* _20__PHI_TEMPORARY;

#line 275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  ;
#line 277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _17 = current_conn;
  if ((((_17 == ((uint8_t*)/*NULL*/0))&1))) {
    _20__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _21;
  } else {
    goto _22;
  }

_22:
#line 281 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _18 = channel;
  _19 =  /*tail*/ lmp_private_fetch_sbc_packet(_18, _15, _16, 0);
  _20__PHI_TEMPORARY = _19;   /* for PHI node */
  goto _21;

_21:
  _20 = _20__PHI_TEMPORARY;
  return _20;
}


uint8_t* a2dp_media_fetch_packet_and_wait(uint32_t* _23, uint8_t* _24, uint32_t _25) {
  uint8_t* _26;
  uint8_t* _27;
  uint8_t* _28;
  uint8_t* _29;
  uint8_t* _29__PHI_TEMPORARY;

#line 284 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  ;
  ;
#line 286 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _26 = current_conn;
  if ((((_26 == ((uint8_t*)/*NULL*/0))&1))) {
    _29__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _30;
  } else {
    goto _31;
  }

_31:
#line 290 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _27 = channel;
  _28 =  /*tail*/ lmp_private_fetch_sbc_packet(_27, _23, _24, _25);
  _29__PHI_TEMPORARY = _28;   /* for PHI node */
  goto _30;

_30:
  _29 = _29__PHI_TEMPORARY;
  return _29;
}


uint32_t a2dp_media_get_packet_num(void) {
  uint8_t* _32;
  uint8_t* _33;
  uint32_t _34;
  uint32_t _35;
  uint32_t _35__PHI_TEMPORARY;

#line 296 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _32 = current_conn;
  if ((((_32 == ((uint8_t*)/*NULL*/0))&1))) {
    _35__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _36;
  } else {
    goto _37;
  }

_37:
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _33 = channel;
  _34 =  /*tail*/ lmp_private_get_sbc_packet_num(_33);
  _35__PHI_TEMPORARY = _34;   /* for PHI node */
  goto _36;

_36:
  _35 = _35__PHI_TEMPORARY;
  return _35;
}


void a2dp_media_free_packet(uint8_t* _38) {
  uint8_t* _39;

#line 303 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 305 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _39 = channel;
   /*tail*/ lmp_private_free_sbc_packet(_39, _38);
}


uint32_t a2dp_media_clear_packet(void) {
  uint8_t* _40;
  uint32_t _41;

#line 310 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _40 = channel;
  if ((((_40 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _42;
  } else {
    goto _43;
  }

_43:
#line 313 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _41 =  /*tail*/ lmp_private_clear_a2dp_packet(_40, 0);
  goto _42;

_42:
  return 0;
}


uint32_t a2dp_media_get_total_data_len(void) {
  uint8_t* _44;
  uint32_t _45;
  uint32_t _46;
  uint32_t _46__PHI_TEMPORARY;

#line 318 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _44 = channel;
  if ((((_44 == ((uint8_t*)/*NULL*/0))&1))) {
    _46__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _47;
  } else {
    goto _48;
  }

_48:
#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _45 =  /*tail*/ lmp_private_get_sbc_data_len(_44);
  _46__PHI_TEMPORARY = _45;   /* for PHI node */
  goto _47;

_47:
  _46 = _46__PHI_TEMPORARY;
  return _46;
}


uint32_t a2dp_media_channel_exist(void) {
  uint8_t* _49;
  uint32_t _50;
  uint32_t _51;
  uint32_t _51__PHI_TEMPORARY;

#line 326 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _49 = channel;
  if ((((_49 == ((uint8_t*)/*NULL*/0))&1))) {
    _51__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _52;
  } else {
    goto _53;
  }

_53:
#line 329 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _50 =  /*tail*/ lmp_private_a2dp_channel_exist(_49);
  _51__PHI_TEMPORARY = _50;   /* for PHI node */
  goto _52;

_52:
  _51 = _51__PHI_TEMPORARY;
  return _51;
}


uint32_t a2dp_media_get_total_buffer_size(void) {
  uint8_t* _54;
  uint32_t _55;
  uint32_t _56;
  uint32_t _56__PHI_TEMPORARY;

#line 334 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _54 = channel;
  if ((((_54 == ((uint8_t*)/*NULL*/0))&1))) {
    _56__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _57;
  } else {
    goto _58;
  }

_58:
#line 337 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _55 =  /*tail*/ lmp_private_get_rx_buffer_total_size(_54);
  _56__PHI_TEMPORARY = _55;   /* for PHI node */
  goto _57;

_57:
  _56 = _56__PHI_TEMPORARY;
  return _56;
}


uint32_t a2dp_media_get_remain_buffer_size(void) {
  uint8_t* _59;
  uint32_t _60;
  uint32_t _61;
  uint32_t _61__PHI_TEMPORARY;

#line 342 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _59 = channel;
  if ((((_59 == ((uint8_t*)/*NULL*/0))&1))) {
    _61__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _62;
  } else {
    goto _63;
  }

_63:
#line 345 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _60 =  /*tail*/ lmp_private_get_rx_buffer_remain_size(_59);
  _61__PHI_TEMPORARY = _60;   /* for PHI node */
  goto _62;

_62:
  _61 = _61__PHI_TEMPORARY;
  return _61;
}


uint32_t a2dp_media_get_remain_play_time(uint8_t _64) {
  uint8_t* _65;
  uint32_t _66;
  uint32_t _67;
  uint32_t _67__PHI_TEMPORARY;

#line 348 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 350 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _65 = channel;
  if ((((_65 == ((uint8_t*)/*NULL*/0))&1))) {
    _67__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _68;
  } else {
    goto _69;
  }

_69:
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _66 =  /*tail*/ lmp_private_get_sbc_remain_time(_65, _64);
  _67__PHI_TEMPORARY = _66;   /* for PHI node */
  goto _68;

_68:
  _67 = _67__PHI_TEMPORARY;
  return _67;
}


uint32_t a2dp_media_is_clearing_frame(void) {
  uint8_t* _70;
  uint32_t _71;
  uint32_t _72;
  uint32_t _72__PHI_TEMPORARY;

#line 358 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _70 = channel;
  if ((((_70 == ((uint8_t*)/*NULL*/0))&1))) {
    _72__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _73;
  } else {
    goto _74;
  }

_74:
#line 361 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _71 =  /*tail*/ lmp_private_is_clearing_a2dp_packet(_70);
  _72__PHI_TEMPORARY = _71;   /* for PHI node */
  goto _73;

_73:
  _72 = _72__PHI_TEMPORARY;
  return _72;
}


uint32_t a2dp_media_clear_packet_before_seqn(uint16_t _75) {
  uint8_t* _76;
  uint32_t _77;
  uint32_t _78;
  uint32_t _78__PHI_TEMPORARY;

#line 364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 366 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _76 = channel;
  if ((((_76 == ((uint8_t*)/*NULL*/0))&1))) {
    _78__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _79;
  } else {
    goto _80;
  }

_80:
#line 369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _77 =  /*tail*/ lmp_private_clear_a2dp_packet(_76, _75);
  _78__PHI_TEMPORARY = _77;   /* for PHI node */
  goto _79;

_79:
  _78 = _78__PHI_TEMPORARY;
  return _78;
}


uint32_t a2dp_media_get_codec_type(void) {
  struct l_struct_struct_OC_a2dp_conn* _81;
  struct l_struct_struct_OC__avdtp_local_sep* _82;
  uint8_t _83;
  uint32_t _84;
  uint32_t _85;
  uint32_t _85__PHI_TEMPORARY;

#line 374 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _81 = *((struct l_struct_struct_OC_a2dp_conn**)(&current_conn));
  ;
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if ((((_81 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    _85__PHI_TEMPORARY = -22;   /* for PHI node */
    goto _86;
  } else {
    goto _87;
  }

_87:
#line 377 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _82 = *((&_81->field2.field1.field1));
  _83 = *((&_82->field3));
  _84 = ((uint32_t)(uint8_t)(llvm_lshr_u8(_83, 4)));
  _85__PHI_TEMPORARY = _84;   /* for PHI node */
  goto _86;

_86:
  _85 = _85__PHI_TEMPORARY;
  return _85;
}


uint32_t a2dp_media_get_rtp_header_len(uint8_t _88, uint8_t* _89, uint32_t _90) {
  uint8_t _91;
  uint32_t _92;
  uint32_t _93;
  uint8_t* _94;
  uint8_t* _95;
  uint8_t _96;
  uint8_t _97;
  uint32_t _98;
  uint32_t _99;
  uint32_t _99__PHI_TEMPORARY;
  uint32_t _100;
  uint32_t _101;
  uint32_t _101__PHI_TEMPORARY;
  uint8_t _102;
  uint32_t _103;
  uint32_t _104;
  uint32_t _104__PHI_TEMPORARY;
  uint32_t _105;
  uint32_t _105__PHI_TEMPORARY;

#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  ;
  ;
#line 388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 389 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 391 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _91 = *_89;
  _92 = ((uint32_t)(uint8_t)_91);
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 394 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _93 = llvm_add_u32(((_92 << 2) & 60), 12);
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _94 = (&_89[((int32_t)_93)]);
#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if ((((_88 == ((uint8_t)13))&1))) {
    _105__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _106;
  } else {
    goto _107;
  }

_107:
#line 392 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
#line 401 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if (((((_92 & 16) == 0u)&1))) {
    _99__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _108;
  } else {
    goto _109;
  }

_109:
#line 402 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _95 = (&_94[((int32_t)2)]);
  _96 = *_95;
  _97 = *((&_95[((int32_t)1)]));
  _98 = llvm_add_u32(((((((uint32_t)(uint8_t)_96)) << 8) | (((uint32_t)(uint8_t)_97))) << 2), 4);
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  _99__PHI_TEMPORARY = _98;   /* for PHI node */
  goto _108;

_108:
  _99 = _99__PHI_TEMPORARY;
  ;
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _100 = (llvm_add_u32(_99, _93)) | 1;
#line 388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 406 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if ((((_88 == ((uint8_t)0))&1))) {
    goto _110;
  } else {
    _105__PHI_TEMPORARY = _100;   /* for PHI node */
    goto _106;
  }

_110:
  _101__PHI_TEMPORARY = _100;   /* for PHI node */
  goto _111;

  do {     /* Syntactic loop '' to make GCC happy */
_111:
  _101 = _101__PHI_TEMPORARY;
#line 388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 407 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _102 = *((&_89[((int32_t)_101)]));
  if ((((_102 == ((uint8_t)-100))&1))) {
    _104__PHI_TEMPORARY = _101;   /* for PHI node */
    goto _112;
  } else {
    goto _113;
  }

_113:
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _103 = llvm_add_u32(_101, 1);
#line 388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if ((((((int32_t)_103) > ((int32_t)_90))&1))) {
    _104__PHI_TEMPORARY = _90;   /* for PHI node */
    goto _112;
  } else {
    _101__PHI_TEMPORARY = _103;   /* for PHI node */
    goto _111;
  }

  } while (1); /* end of syntactic loop '' */
_112:
  _104 = _104__PHI_TEMPORARY;
  _105__PHI_TEMPORARY = _104;   /* for PHI node */
  goto _106;

_106:
  _105 = _105__PHI_TEMPORARY;
  return _105;
}


uint32_t a2dp_media_get_packet_play_time(uint16_t _114, uint8_t* _115, uint32_t _116) {
  struct l_struct_struct_OC_a2dp_conn* _117;
  struct l_struct_struct_OC__avdtp_local_sep* _118;
  uint8_t _119;
  uint32_t _120;
  uint32_t _121;
  uint8_t _122;
  uint8_t _123;
  uint16_t _124;
  uint32_t _125;
  uint32_t _126;
  uint32_t _127;
  uint32_t _128;
  uint32_t _128__PHI_TEMPORARY;

#line 417 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  ;
  ;
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 420 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _117 =  /*tail*/ __a2dp_conn_for_channel(_114);
  ;
#line 421 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _118 = *((&_117->field2.field1.field1));
  _119 = *((&_118->field3));
  ;
#line 422 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  switch ((((((uint8_t)(llvm_lshr_u8(_119, 4))))&15))) {
  default:
    _128__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _129;
  case ((uint8_t)0):
    goto _130;
  case ((uint8_t)2):
    goto _131;
  }

_130:
#line 425 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _120 =  /*tail*/ a2dp_media_get_rtp_header_len(0, _115, _116);
  _121 = llvm_add_u32(_120, -1);
  ;
#line 426 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if ((((((int32_t)_121) < ((int32_t)_116))&1))) {
    goto _132;
  } else {
    _128__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _129;
  }

_132:
#line 429 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _122 = *((&_115[((int32_t)_121)]));
  ;
#line 430 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _123 = *((&_115[((int32_t)_120)]));
  _124 = *((&a2dp_media_get_packet_play_time_OC_sample_rates.array[((int32_t)(llvm_lshr_u32((((uint32_t)(uint8_t)_123)), 6)))]));
  ;
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _125 = llvm_udiv_u32((llvm_mul_u32((((uint32_t)(uint8_t)(llvm_and_u8(_122, 15)))), 128000)), (((uint32_t)(uint16_t)_124)));
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  _128__PHI_TEMPORARY = _125;   /* for PHI node */
  goto _129;

_131:
#line 434 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _126 = *((&_117->field3.field0.field2));
  if ((((_126 == 0u)&1))) {
    _128__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _129;
  } else {
    goto _133;
  }

_133:
#line 437 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _127 = llvm_udiv_u32(1024000, _126);
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  _128__PHI_TEMPORARY = _127;   /* for PHI node */
  goto _129;

_129:
  _128 = _128__PHI_TEMPORARY;
  return _128;
}


void a2dp_media_suspend_resume(uint8_t _134) {
  uint8_t* _135;
  uint8_t* _136;
  uint8_t _137;
  uint32_t _138;
  uint8_t* _139;
  uint8_t* _140;
  uint8_t* _141;
  uint8_t _142;
  uint16_t* _143;
  uint16_t* _144;
  uint16_t _145;
  uint32_t _146;
  uint16_t* _147;
  uint16_t* _147__PHI_TEMPORARY;
  struct l_struct_struct_OC__avdtp_local_sep* _148;
  uint8_t _149;
  uint16_t _150;
  uint8_t* _151;
  uint8_t* _152;
  uint8_t* _153;
  struct l_struct_struct_OC__avdtp_local_sep** _154;
  struct l_struct_struct_OC__avdtp_local_sep* _155;
  uint8_t _156;
  uint16_t _157;
  uint8_t* _158;
  struct l_struct_struct_OC__avdtp_local_sep* _159;
  uint8_t _160;

#line 454 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  switch (_134) {
  default:
    goto _161;
  case ((uint8_t)1):
    goto _162;
  case ((uint8_t)2):
    goto _163;
  case ((uint8_t)3):
    goto _164;
  }

_162:
#line 457 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _135 = current_conn;
  _136 = channel;
  if (((((((_135 != ((uint8_t*)/*NULL*/0))&1)) & (((_136 != ((uint8_t*)/*NULL*/0))&1)))&1))) {
    goto _165;
  } else {
    goto _161;
  }

_165:
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _137 = profile_debug_enable;
  if (((((llvm_and_u8(_137, 1)) == ((uint8_t)0))&1))) {
    goto _166;
  } else {
    goto _167;
  }

_167:
  _138 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uintptr_t)_135)), (((uint32_t)(uintptr_t)_136)));
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _139 = channel;
   /*tail*/ lmp_private_close_sbc_channel(_139);
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  channel = ((uint8_t*)/*NULL*/0);
  goto _161;

_166:
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ lmp_private_close_sbc_channel(_136);
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  channel = ((uint8_t*)/*NULL*/0);
  goto _161;

_163:
#line 464 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _140 = current_conn;
  _141 = channel;
  if (((((((_140 != ((uint8_t*)/*NULL*/0))&1)) & (((_141 == ((uint8_t*)/*NULL*/0))&1)))&1))) {
    goto _168;
  } else {
    goto _161;
  }

_168:
#line 466 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _142 = profile_debug_enable;
  if (((((llvm_and_u8(_142, 1)) == ((uint8_t)0))&1))) {
    goto _169;
  } else {
    goto _170;
  }

_169:
#line 470 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _143 = ((uint16_t*)((&_140[((int32_t)104)])));
  _147__PHI_TEMPORARY = _143;   /* for PHI node */
  goto _171;

_170:
#line 466 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _144 = ((uint16_t*)((&_140[((int32_t)104)])));
  _145 = *_144;
  _146 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), (((uint32_t)(uintptr_t)_140)), (((uint32_t)(uint16_t)_145)), 0);
  _147__PHI_TEMPORARY = _144;   /* for PHI node */
  goto _171;

_171:
#line 470 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _147 = _147__PHI_TEMPORARY;
#line 468 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _148 = *(((struct l_struct_struct_OC__avdtp_local_sep**)((&_140[((int32_t)68)]))));
  _149 = *((&_148->field3));
  ;
#line 470 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _150 = *_147;
#line 469 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _151 =  /*tail*/ lmp_private_open_sbc_channel(_140, _150, (llvm_lshr_u8(_149, 4)));
  channel = _151;
  goto _161;

_164:
  _152 = channel;
#line 475 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _153 = current_conn;
  if (((((((_153 != ((uint8_t*)/*NULL*/0))&1)) & (((_152 == ((uint8_t*)/*NULL*/0))&1)))&1))) {
    goto _172;
  } else {
    goto _161;
  }

_172:
#line 477 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _154 = ((struct l_struct_struct_OC__avdtp_local_sep**)((&_153[((int32_t)68)])));
  _155 = *_154;
  _156 = *((&_155->field3));
  ;
#line 479 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _157 = *(((uint16_t*)((&_153[((int32_t)104)]))));
#line 478 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _158 =  /*tail*/ lmp_private_open_sbc_channel(_153, _157, (llvm_lshr_u8(_156, 4)));
  channel = _158;
#line 482 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _159 = *_154;
  _160 = *((&_159->field3));
#line 481 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ bt_event_update_to_user(_153, 1129270784u, 48, (((uint32_t)(uint8_t)(llvm_lshr_u8(_160, 4)))));
  goto _161;

_161:
  return;
}


static uint32_t sbc_codec_inused(uint32_t _173) {
  uint8_t* _174;

#line 446 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 448 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _174 = channel;
#line 452 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  return (((uint32_t)(bool)(((_174 != ((uint8_t*)/*NULL*/0))&1))));
}


static uint32_t sbc_codec_init(uint8_t* _175) {
  struct l_struct_struct_OC__avdtp_local_sep** _176;
  struct l_struct_struct_OC__avdtp_local_sep* _177;
  uint8_t _178;
  uint8_t _179;
  uint8_t _180;
  uint32_t _181;
  uint8_t* _182;
  uint16_t _183;
  uint8_t* _184;
  uint32_t _185;
  uint8_t _186;
  uint16_t _187;
  uint32_t _188;
  uint32_t _189;
  struct l_struct_struct_OC_user_interface_handler* _190;
  l_fptr_1* _191;
  struct l_struct_struct_OC__avdtp_local_sep* _192;
  uint8_t _193;
  uint8_t _194;
  uint32_t _195;
  uint8_t _196;
  uint32_t _197;
  uint32_t _198;
  uint8_t _199;
  uint8_t _200;
  uint32_t _201;
  uint8_t _202;
  uint32_t _203;
  uint32_t _204;
  struct l_struct_struct_OC_user_interface_handler* _205;
  l_fptr_2* _206;
  uint32_t _207;
  struct l_struct_struct_OC_user_interface_handler* _208;
  l_fptr_2* _209;

#line 487 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 489 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 491 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _176 = ((struct l_struct_struct_OC__avdtp_local_sep**)((&_175[((int32_t)68)])));
  _177 = *_176;
  _178 = *((&_177->field3));
  _179 = llvm_lshr_u8(_178, 4);
  ;
#line 493 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _180 = l2cap_debug_enable;
  if ((((((int8_t)_180) < ((int8_t)((uint8_t)0)))&1))) {
    goto _210;
  } else {
    goto _211;
  }

_210:
  _181 =  /*tail*/ puts(((&str_OC_8.array[((int32_t)0)])));
  goto _211;

_211:
#line 495 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _182 = channel;
  if ((((_182 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _212;
  } else {
    goto _213;
  }

_212:
#line 497 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _183 = *(((uint16_t*)((&_175[((int32_t)104)]))));
#line 496 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _184 =  /*tail*/ lmp_private_open_sbc_channel(_175, _183, _179);
  channel = _184;
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _185 =  /*tail*/ update_multi_bd_status(_175, 4, -1);
  goto _213;

_213:
#line 501 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _186 = profile_debug_enable;
  if (((((llvm_and_u8(_186, 1)) == ((uint8_t)0))&1))) {
    goto _214;
  } else {
    goto _215;
  }

_215:
  _187 = *(((uint16_t*)((&_175[((int32_t)104)]))));
  _188 = *((uint32_t*)(&channel));
  _189 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((uint32_t)(uintptr_t)_175)), (((uint32_t)(uint16_t)_187)), _188);
  goto _214;

_214:
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  current_conn = _175;
#line 503 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
#line 491 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 506 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _190 = user_interface;
  _191 = *((&_190->field0));
  if ((((_191 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _216;
  } else {
    goto _217;
  }

_217:
#line 507 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ _191(_175, 14, 1);
  goto _216;

_216:
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ update_bt_current_status(_175, 0, 47);
#line 511 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
#line 510 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ bt_event_update_to_user(_175, 1129270784u, 48, (llvm_select_u32((((_179 == ((uint8_t)13))&1)), 3, (((uint32_t)(uint8_t)_179)))));
#line 512 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _192 = *_176;
  _193 = *((&_192->field3));
#line 513 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _194 = l2cap_debug_enable;
#line 512 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  if ((((((((llvm_and_u8(_193, -16)) == ((uint8_t)32))&1)) & (((((int8_t)_194) < ((int8_t)((uint8_t)0)))&1)))&1))) {
    goto _218;
  } else {
    goto _219;
  }

_218:
#line 513 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _195 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
#line 514 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _196 = l2cap_debug_enable;
  if ((((((int8_t)_196) < ((int8_t)((uint8_t)0)))&1))) {
    goto _220;
  } else {
    goto _219;
  }

_220:
  _197 = *(((uint32_t*)((&_175[((int32_t)120)]))));
  _198 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), _197);
#line 515 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _199 = l2cap_debug_enable;
  if ((((((int8_t)_199) < ((int8_t)((uint8_t)0)))&1))) {
    goto _221;
  } else {
    goto _219;
  }

_221:
  _200 = *((&_175[((int32_t)124)]));
  _201 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), (((uint32_t)(uint8_t)(llvm_and_u8(_200, 15)))));
#line 516 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _202 = l2cap_debug_enable;
  if ((((((int8_t)_202) < ((int8_t)((uint8_t)0)))&1))) {
    goto _222;
  } else {
    goto _219;
  }

_222:
  _203 = *(((uint32_t*)((&_175[((int32_t)108)]))));
  _204 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), _203);
  goto _219;

_219:
#line 518 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _205 = user_interface;
  _206 = *((&_205->field7));
  if ((((_206 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _223;
  } else {
    goto _224;
  }

_224:
#line 519 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _207 =  /*tail*/ get_music_volume(_175);
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _208 = user_interface;
  _209 = *((&_208->field7));
   /*tail*/ _209((_207 & 255));
  goto _223;

_223:
  return 0;
}


static uint32_t sbc_codec_start(uint8_t* _225, uint16_t _226) {
#line 525 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
  ;
  return 0;
}


static uint32_t sbc_codec_stop(uint8_t* _227) {
  struct l_struct_struct_OC_user_interface_handler* _228;
  l_fptr_1* _229;
  uint8_t _230;
  uint8_t* _231;
  uint32_t _232;

#line 531 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  ;
#line 534 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _228 = user_interface;
  _229 = *((&_228->field0));
  if ((((_229 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _233;
  } else {
    goto _234;
  }

_234:
#line 535 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ _229(_227, 14, 0);
  goto _233;

_233:
#line 537 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ update_bt_current_status(_227, 0, 45);
#line 538 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ bt_event_update_to_user(_227, 1129270784u, 49, 0);
#line 540 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _230 =  /*tail*/ ((l_fptr_3*)(void*)find_a2dp_conn_number)();
  if ((((((uint8_t)_230) > ((uint8_t)((uint8_t)1)))&1))) {
    goto _235;
  } else {
    goto _236;
  }

_235:
#line 542 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ os_time_dly(2);
  goto _236;

_236:
#line 544 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _231 = channel;
  if ((((_231 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _237;
  } else {
    goto _238;
  }

_238:
#line 545 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
   /*tail*/ lmp_private_close_sbc_channel(_231);
#line 546 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  _232 =  /*tail*/ update_multi_bd_status(_227, 5, -1);
#line 547 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  channel = ((uint8_t*)/*NULL*/0);
  goto _237;

_237:
#line 549 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
  current_conn = ((uint8_t*)/*NULL*/0);
  return 0;
}

