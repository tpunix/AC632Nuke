/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
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
struct l_struct_struct_OC_a2dp_core_data_t;
struct l_struct_struct_OC__avdtp_stream;
struct l_struct_struct_OC__avdtp_sep_ind;
struct l_struct_struct_OC__seid_info;
struct l_struct_struct_OC__avdtp_local_sep;
struct l_struct_struct_OC__seid_req;
struct l_struct_struct_OC_avdtp_core_data_t;
struct l_struct_struct_OC_avdtp;
struct l_struct_struct_OC_media_core_data_t;
struct l_struct_struct_OC_a2dp_media_probe;
struct l_struct_struct_OC_a2dp_media_codec;
struct l_struct_struct_OC_a2dp_media;
struct l_struct_struct_OC_a2dp_conn;

/* Function definitions */
typedef uint32_t l_fptr_14(uint8_t*, uint16_t);

typedef uint32_t l_fptr_11(int, ...);

typedef void l_fptr_6(struct l_struct_struct_OC__avdtp_local_sep*);

typedef uint32_t l_fptr_12(uint32_t);

typedef uint8_t l_fptr_3(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t);

typedef uint8_t l_fptr_7(int, ...);

typedef uint8_t l_fptr_8(uint8_t, uint16_t);

typedef uint8_t l_fptr_1(uint8_t, uint8_t*, uint8_t*);

typedef uint8_t l_fptr_2(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*);

typedef uint32_t l_fptr_9(uint8_t*, uint8_t*, uint16_t);

typedef uint8_t l_fptr_4(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*);

typedef uint32_t l_fptr_13(uint8_t*);

typedef uint8_t l_fptr_5(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t*);

typedef uint32_t l_fptr_10(uint8_t*, l_fptr_9*);


/* Types Definitions */
struct l_struct_struct_OC__avdtp_stream {
  uint8_t field0;
};
struct l_struct_struct_OC__avdtp_sep_ind {
  l_fptr_1* field0;
  l_fptr_2* field1;
  l_fptr_3* field2;
  l_fptr_4* field3;
  l_fptr_4* field4;
  l_fptr_5* field5;
  l_fptr_6* field6;
  l_fptr_7* field7;
  l_fptr_8* field8;
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
  l_fptr_10* field1;
  l_fptr_9* field2;
  l_fptr_11* field3;
  l_fptr_11* field4;
  l_fptr_11* field5;
};
struct l_struct_struct_OC_a2dp_media_codec {
  uint32_t field0;
  l_fptr_12* field1;
  l_fptr_13* field2;
  l_fptr_14* field3;
  l_fptr_11* field4;
  l_fptr_13* field5;
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

/* Function Declarations */
uint32_t a2dp_source_init(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint8_t get_a2dp_source_support(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void __emitter_send_media_toggle(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void a2dp_media_packet_info(struct l_struct_struct_OC_a2dp_conn*, uint8_t, uint16_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void sbc_param_init(struct l_struct_struct_OC_a2dp_conn*, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

uint32_t a2dp_source_init(uint8_t* _1, uint16_t _2, uint32_t _3) {
#line 1022 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c"
  ;
  ;
  ;
  return -1;
}


uint8_t get_a2dp_source_support(void) {
  return 0;
}


void __emitter_send_media_toggle(uint8_t* _4, uint8_t _5) {
#line 1031 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c"
  ;
  ;
}


void a2dp_media_packet_info(struct l_struct_struct_OC_a2dp_conn* _6, uint8_t _7, uint16_t _8) {
#line 1035 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c"
  ;
  ;
  ;
}


void sbc_param_init(struct l_struct_struct_OC_a2dp_conn* _9, uint8_t _10, uint8_t _11, uint8_t _12, uint8_t _13, uint8_t _14, uint8_t _15) {
#line 1038 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c"
  ;
  ;
  ;
  ;
  ;
#line 1039 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c"
  ;
  ;
}

