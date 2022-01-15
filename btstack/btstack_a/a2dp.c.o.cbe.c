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
struct l_struct_struct_OC__avdtp_media_codec_capability;
struct l_unnamed_1;
struct l_struct_struct_OC__mpeg24_codec_cap;
struct l_struct_struct_OC_a2dp_vendor_codec_t;
struct l_struct_struct_OC__a2dp_aptx_cap;
struct l_struct_struct_OC__a2dp_ldac_cap;
struct l_struct_struct_OC__a2dp_lc3_cap;
struct l_struct_struct_OC__avdtp_stream;
struct l_struct_struct_OC__avdtp_sep_ind;
struct l_struct_struct_OC__seid_req;
struct l_struct_struct_OC_avdtp_core_data_t;
struct l_struct_struct_OC_avdtp;
struct l_struct_struct_OC__seid_info;
struct l_struct_struct_OC__avdtp_local_sep;
struct l_struct_struct_OC_a2dp_media_codec;
struct l_struct_struct_OC_a2dp_core_data_t;
struct l_struct_struct_OC_media_core_data_t;
struct l_struct_struct_OC_a2dp_media_probe;
struct l_struct_struct_OC_a2dp_media;
struct l_struct_struct_OC_a2dp_conn;
struct l_struct_struct_OC_a2dp_stack_t;
struct l_struct_struct_OC_bt_sleep;
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC_a2dp_event_handler;
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC__sbc_codec_cap;

/* Function definitions */
typedef uint32_t l_fptr_19(uint8_t*, uint16_t);

typedef uint32_t l_fptr_7(struct l_struct_struct_OC_a2dp_conn*, uint32_t, uint8_t);

typedef uint8_t l_fptr_16(uint8_t, uint16_t);

typedef void l_fptr_6(struct l_struct_struct_OC_a2dp_conn*, uint8_t*);

typedef void l_fptr_8(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_23(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_27(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_14(struct l_struct_struct_OC__avdtp_local_sep*);

typedef uint32_t l_fptr_26(void);

typedef uint32_t l_fptr_4(void);

typedef void l_fptr_31(void);

typedef uint32_t l_fptr_21(uint8_t*, uint8_t*, uint16_t);

typedef uint8_t l_fptr_12(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*);

typedef uint32_t l_fptr_17(uint32_t);

typedef void l_fptr_3(struct l_struct_struct_OC_a2dp_conn*, uint8_t*, uint16_t);

typedef void l_fptr_25(uint8_t*, uint32_t);

typedef void l_fptr_29(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_20(int, ...);

typedef void l_fptr_28(uint32_t);

typedef uint32_t l_fptr_30(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_1(uint8_t);

typedef uint8_t l_fptr_15(int, ...);

typedef void l_fptr_5(struct l_struct_struct_OC_a2dp_conn*);

typedef uint8_t l_fptr_32(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef uint8_t l_fptr_13(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t*);

typedef uint8_t l_fptr_10(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*);

typedef void l_fptr_24(uint8_t, uint8_t*, uint8_t*);

typedef uint32_t l_fptr_22(uint8_t*, l_fptr_21*);

typedef void l_fptr_2(void);

typedef uint8_t l_fptr_11(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t);

typedef uint32_t l_fptr_18(uint8_t*);

typedef uint8_t l_fptr_9(uint8_t, uint8_t*, uint8_t*);


/* Types Definitions */
struct l_struct_struct_OC__avdtp_media_codec_capability {
  uint8_t field0;
  uint8_t field1;
};
struct l_unnamed_1 {
  struct l_struct_struct_OC__avdtp_media_codec_capability field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
};
struct l_struct_struct_OC__mpeg24_codec_cap {
  struct l_struct_struct_OC__avdtp_media_codec_capability field0;
  uint8_t field1;
  uint8_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_struct_OC_a2dp_vendor_codec_t {
  uint32_t field0;
  uint16_t field1;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_struct_OC__a2dp_aptx_cap {
  struct l_struct_struct_OC__avdtp_media_codec_capability field0;
  struct l_struct_struct_OC_a2dp_vendor_codec_t field1;
  uint8_t field2;
};
struct l_struct_struct_OC__a2dp_ldac_cap {
  struct l_struct_struct_OC__avdtp_media_codec_capability field0;
  struct l_struct_struct_OC_a2dp_vendor_codec_t field1;
  uint8_t field2;
  uint8_t field3;
};
struct l_struct_struct_OC__a2dp_lc3_cap {
  struct l_struct_struct_OC__avdtp_media_codec_capability field0;
  struct l_struct_struct_OC_a2dp_vendor_codec_t field1;
  uint8_t field2;
  uint8_t field3;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC__avdtp_stream {
  uint8_t field0;
};
struct l_struct_struct_OC__avdtp_sep_ind {
  l_fptr_9* field0;
  l_fptr_10* field1;
  l_fptr_11* field2;
  l_fptr_12* field3;
  l_fptr_12* field4;
  l_fptr_13* field5;
  l_fptr_14* field6;
  l_fptr_15* field7;
  l_fptr_16* field8;
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
struct l_struct_struct_OC_a2dp_media_codec {
  uint32_t field0;
  l_fptr_17* field1;
  l_fptr_18* field2;
  l_fptr_19* field3;
  l_fptr_20* field4;
  l_fptr_18* field5;
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
  l_fptr_22* field1;
  l_fptr_21* field2;
  l_fptr_20* field3;
  l_fptr_20* field4;
  l_fptr_20* field5;
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
struct l_array_1_struct_AC_l_struct_struct_OC_a2dp_conn {
  struct l_struct_struct_OC_a2dp_conn array[1];
};
struct l_struct_struct_OC_a2dp_stack_t {
  struct l_array_1_struct_AC_l_struct_struct_OC_a2dp_conn field0;
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_20* field0;
  l_fptr_20* field1;
  l_fptr_20* field2;
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
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};
struct l_struct_struct_OC_a2dp_event_handler {
  uint32_t field0;
  l_fptr_7* field1;
  l_fptr_5* field2;
  l_fptr_3* field3;
  l_fptr_6* field4;
  l_fptr_6* field5;
  l_fptr_5* field6;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_25_uint8_t {
  uint8_t array[25];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_23* field0;
  l_fptr_24* field1;
  l_fptr_25* field2;
  l_fptr_26* field3;
  l_fptr_27* field4;
  l_fptr_8* field5;
  l_fptr_26* field6;
  l_fptr_28* field7;
  l_fptr_29* field8;
  l_fptr_30* field9;
  l_fptr_31* field10;
  l_fptr_1* field11;
  l_fptr_32* field12;
  l_fptr_27* field13;
  l_fptr_26* field14;
};
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_struct_struct_OC__sbc_codec_cap {
  struct l_struct_struct_OC__avdtp_media_codec_capability field0;
  uint16_t field1;
  uint8_t field2;
  uint8_t field3;
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};

/* External Global Variable Declarations */
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t btstack_emitter_support;
extern char /* (empty) */ a2dp_source_media_codec_begin;
extern char /* (empty) */ a2dp_source_media_codec_end;
extern char /* (empty) */ a2dp_sink_media_codec_begin;
extern char /* (empty) */ a2dp_sink_media_codec_end;
extern uint32_t CONFIG_BTSTACK_SUPPORT_AAC;
extern char /* (empty) */ a2dp_event_handler_begin;
extern char /* (empty) */ a2dp_event_handler_end;
extern uint32_t CONFIG_BTCTLER_TWS_ENABLE;
extern uint8_t profile_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;
extern uint8_t a2dp_source_bqb_support;

/* Function Declarations */
void __set_aac_bitrate(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t find_a2dp_conn_number(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void a2dp_connect_status_register(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_a2dp_conn* __a2dp_conn_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
struct l_struct_struct_OC_a2dp_conn* __a2dp_conn_for_channel(uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void __close_all_a2dp_media_coder(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __sink_media_close(struct l_struct_struct_OC_a2dp_conn*);
uint8_t __a2dp_conn_send_discover_cnt(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void avdtp_discover_req(struct l_struct_struct_OC_avdtp*);
void stack_run_loop_resume(int, ...);
uint32_t a2dp_send_cmd(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_disconnect_internal(uint16_t, uint8_t);
void avdtp_delay_report_req(struct l_struct_struct_OC_avdtp*);
void a2dp_init(struct l_struct_struct_OC_a2dp_stack_t*) __ATTRIBUTELIST__((always_inline, nothrow)) __HIDDEN__;
void l2cap_register_service_internal(uint8_t*, l_fptr_27*, uint16_t, uint16_t);
static void __a2dp_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
struct l_struct_struct_OC_avdtp* get_tws_phone_session(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t a2dp_core_data_for_send(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void a2dp_core_data_for_set(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void avdtp_tws_local_sep_deal(struct l_struct_struct_OC_avdtp*);
uint32_t music_player_ctrl(uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void __a2dp_lock_media_code(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void __a2dp_unlock_media_code(uint8_t*) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
static struct l_struct_struct_OC_a2dp_conn* __create_a2dp_conn(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t handle_a2dp_discover_flag(struct l_array_6_uint8_t*, uint8_t);
uint32_t user_send_cmd_prepare(uint32_t, uint16_t, uint8_t*);
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_27*, uint8_t*, uint16_t, uint16_t);
static void a2dp_event_credits(uint16_t) __ATTRIBUTELIST__((nothrow));
void avdtp_sep_init(struct l_struct_struct_OC_avdtp*, uint32_t, struct l_struct_struct_OC__avdtp_sep_ind*, uint8_t);
static uint8_t a2dp_getcap_ind_sbc(uint8_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_set_configure_ind_sbc(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_open_ind(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_start_ind(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_suspend_ind(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_close_ind(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static void a2dp_abort(struct l_struct_struct_OC__avdtp_local_sep*) __ATTRIBUTELIST__((nothrow));
void sbc_param_init(struct l_struct_struct_OC_a2dp_conn*, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t);
static void __media_close(struct l_struct_struct_OC_a2dp_conn*) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_getcap_ind_mpeg24(uint8_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint8_t a2dp_set_configure_ind_mpeg24(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
void avdtp_retry_send(struct l_struct_struct_OC_avdtp*);
static uint32_t a2dp_suspend(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t a2dp_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t a2dp_release(void) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t avdtp_packet_handler(struct l_struct_struct_OC_avdtp*, uint8_t*, uint16_t);
static void a2dp_channel_open_success(uint16_t, uint8_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
uint32_t mic_coder_busy_flag(void);
uint32_t filter_out_sbc_data_en(int, ...);
uint32_t tws_api_get_tws_state(int, ...);
uint32_t putchar(uint32_t) __ATTRIBUTELIST__((nothrow));
void bt_flip_addr(uint8_t*, uint8_t*);
void l2cap_decline_connection_internal(uint16_t, uint8_t);
void l2cap_accept_connection_internal(uint16_t);
void a2dp_media_packet_info(struct l_struct_struct_OC_a2dp_conn*, uint8_t, uint16_t);
static void __close_channel(struct l_struct_struct_OC_a2dp_conn*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_unnamed_1 a2dp_sbc __HIDDEN__ = { { 0, 0 }, -1, -1, 2, 53 };
struct l_struct_struct_OC__mpeg24_codec_cap a2dp_mpeg_acc __HIDDEN__ = { { 0, 2 }, 128u, 1, 140u, 132u, -30, 0 };
struct l_struct_struct_OC__a2dp_aptx_cap a2dp_aptx __HIDDEN__ = { { 0, -1 }, { 79, 1 }, 34 };
struct l_struct_struct_OC__a2dp_ldac_cap a2dp_ldac __HIDDEN__ = { { 0, -1 }, { 301, 170 }, 60, 7 };
struct l_struct_struct_OC__a2dp_lc3_cap a2dp_lc3 __HIDDEN__ = { { 0, -1 }, { 1494, 1 }, 48, 7 };
static struct l_struct_struct_OC_a2dp_stack_t* a2dp_stack;
uint8_t reconnect_after_disconnect __HIDDEN__;
static l_fptr_1* a2dp_status_update;
uint8_t try_cmd_step __HIDDEN__;
static struct l_array_37_uint8_t _OC_str = { "<BT-log> :wait to send discover %d\n\n" };
uint8_t a2dp_wait_remote_discovecr __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_bt_sleep bt_suspend_a2dp_resumea2dp_release __HIDDEN__ = { ((l_fptr_20*)a2dp_suspend), ((l_fptr_20*)a2dp_resume), ((l_fptr_20*)a2dp_release) };
static struct l_struct_struct_OC__avdtp_sep_ind a2dp_sep_ind_sbc = { a2dp_getcap_ind_sbc, a2dp_set_configure_ind_sbc, a2dp_open_ind, a2dp_start_ind, a2dp_suspend_ind, a2dp_close_ind, a2dp_abort, ((l_fptr_15*)/*NULL*/0), ((l_fptr_16*)/*NULL*/0) };
static struct l_struct_struct_OC__avdtp_sep_ind a2dp_sep_ind_mpeg24 = { a2dp_getcap_ind_mpeg24, a2dp_set_configure_ind_mpeg24, a2dp_open_ind, a2dp_start_ind, a2dp_suspend_ind, a2dp_close_ind, a2dp_abort, ((l_fptr_15*)/*NULL*/0), ((l_fptr_16*)/*NULL*/0) };
static struct l_array_38_uint8_t _OC_str_OC_1 = { "<BT-log> :a2dp_sbc.max_bitpool=0x%x\n\n" };
static struct l_array_30_uint8_t _OC_str_OC_2 = { "<BT-log> :CP_TYPE:0x%04x %s\n\n" };
static struct l_array_34_uint8_t _OC_str_OC_3 = { "<BT-log> :remote max_bitpool %d\n\n" };
static struct l_array_18_uint8_t _OC_str_OC_4 = { "<BT-log> :fre %x\n" };
static struct l_array_31_uint8_t _OC_str_OC_5 = { "<BT-log> :sbc_bitpool2222 %d\n\n" };
static struct l_array_5_uint8_t _OC_str_OC_6 = { "DTCP" };
static struct l_array_7_uint8_t _OC_str_OC_7 = { "SCMS-T" };
static struct l_array_9_uint8_t _OC_str_OC_8 = { "Reserved" };
static struct l_array_17_uint8_t _OC_str_OC_9 = { "a2dp_release ok\n" };
static struct l_array_30_uint8_t _OC_str_OC_10 = { "<BT-log> :avdtp state err:%x\n" };
static struct l_array_25_uint8_t _OC_str_OC_11 = { "-----a2dp incoming_conn\n" };
static struct l_array_20_uint8_t _OC_str_OC_13 = { "avdtp_channel_open\n" };
static struct l_array_17_uint8_t _OC_str_OC_14 = { "a2dp_media_open\n" };
static struct l_array_36_uint8_t str = { "[pro-info] :a2dp_channel open deal\n" };
static struct l_array_32_uint8_t str_OC_16 = { "<BT-log> :try to connect again\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint32_t llvm_select_u32(bool condition, uint32_t iftrue, uint32_t ifnot) {
  uint32_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint8_t* llvm_select_pu8(bool condition, uint8_t* iftrue, uint8_t* ifnot) {
  uint8_t* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline struct l_struct_struct_OC_avdtp* llvm_select_pstruct_struct_OC_avdtp(bool condition, struct l_struct_struct_OC_avdtp* iftrue, struct l_struct_struct_OC_avdtp* ifnot) {
  struct l_struct_struct_OC_avdtp* r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
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
static __forceinline uint64_t llvm_lshr_u64(uint64_t a, uint64_t b) {
  uint64_t r = a >> b;
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


/* Function Bodies */

void __set_aac_bitrate(uint32_t _1) {
  uint8_t _2;

  _2 = *((&a2dp_mpeg_acc.field4));
  *((&a2dp_mpeg_acc.field4)) = (((uint8_t)((((uint32_t)(uint8_t)(llvm_and_u8(_2, 128u)))) | ((llvm_lshr_u32(_1, 16)) & 127))));
  *((&a2dp_mpeg_acc.field5)) = (((uint8_t)(llvm_lshr_u32(_1, 8))));
  *((&a2dp_mpeg_acc.field6)) = (((uint8_t)_1));
}


uint8_t find_a2dp_conn_number(void) {
  struct l_struct_struct_OC_a2dp_stack_t* _3;
  uint8_t _4;

  _3 = a2dp_stack;
  _4 = *((&_3->field0.array[((int32_t)0)].field1.field0));
  return (llvm_and_u8(_4, 1));
}


void a2dp_connect_status_register(l_fptr_1* _5) {
  a2dp_status_update = _5;
}


struct l_struct_struct_OC_a2dp_conn* __a2dp_conn_for_addr(uint8_t* _6) {
  struct l_struct_struct_OC_a2dp_stack_t* _7;
  struct l_struct_struct_OC_a2dp_conn* _8;
  struct l_struct_struct_OC_a2dp_conn* _9;
  struct l_struct_struct_OC_a2dp_conn* _10;
  struct l_struct_struct_OC_a2dp_conn* _10__PHI_TEMPORARY;
  uint32_t _11;
  struct l_struct_struct_OC_a2dp_conn* _12;
  struct l_struct_struct_OC_a2dp_conn* _13;
  struct l_struct_struct_OC_a2dp_conn* _13__PHI_TEMPORARY;

  _7 = a2dp_stack;
  _8 = (&_7->field0.array[((int32_t)0)]);
  _9 = (&_7->field0.array[((int32_t)1)]);
  _10__PHI_TEMPORARY = _8;   /* for PHI node */
  goto _14;

  do {     /* Syntactic loop '' to make GCC happy */
_14:
  _10 = _10__PHI_TEMPORARY;
  _11 =  /*tail*/ memcmp(((&_10->field0.array[((int32_t)0)])), _6, 6);
  if ((((_11 == 0u)&1))) {
    _13__PHI_TEMPORARY = _10;   /* for PHI node */
    goto _15;
  } else {
    goto _16;
  }

_16:
  _12 = (&_10[((int32_t)1)]);
  if ((((((uint32_t)_12) < ((uint32_t)_9))&1))) {
    _10__PHI_TEMPORARY = _12;   /* for PHI node */
    goto _14;
  } else {
    _13__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0);   /* for PHI node */
    goto _15;
  }

  } while (1); /* end of syntactic loop '' */
_15:
  _13 = _13__PHI_TEMPORARY;
  return _13;
}


struct l_struct_struct_OC_a2dp_conn* __a2dp_conn_for_channel(uint16_t _17) {
  struct l_struct_struct_OC_a2dp_stack_t* _18;
  struct l_struct_struct_OC_a2dp_conn* _19;
  struct l_struct_struct_OC_a2dp_conn* _20;
  struct l_struct_struct_OC_a2dp_conn* _21;
  struct l_struct_struct_OC_a2dp_conn* _21__PHI_TEMPORARY;
  uint16_t _22;
  uint16_t _23;
  struct l_struct_struct_OC_a2dp_conn* _24;
  struct l_struct_struct_OC_a2dp_conn* _25;
  struct l_struct_struct_OC_a2dp_conn* _25__PHI_TEMPORARY;
  struct l_struct_struct_OC_a2dp_conn* _26;
  struct l_struct_struct_OC_a2dp_conn* _26__PHI_TEMPORARY;

  _18 = a2dp_stack;
  if ((((_18 == ((struct l_struct_struct_OC_a2dp_stack_t*)/*NULL*/0))&1))) {
    _26__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0);   /* for PHI node */
    goto _27;
  } else {
    goto _28;
  }

_28:
  _19 = (&_18->field0.array[((int32_t)1)]);
  _20 = (&_18->field0.array[((int32_t)0)]);
  _21__PHI_TEMPORARY = _20;   /* for PHI node */
  goto _29;

  do {     /* Syntactic loop '' to make GCC happy */
_29:
  _21 = _21__PHI_TEMPORARY;
  _22 = *((&_21->field2.field1.field3));
  if ((((_22 == _17)&1))) {
    _25__PHI_TEMPORARY = _21;   /* for PHI node */
    goto _30;
  } else {
    goto _31;
  }

_31:
  _23 = *((&_21->field3.field0.field0));
  if ((((_23 == _17)&1))) {
    _25__PHI_TEMPORARY = _21;   /* for PHI node */
    goto _30;
  } else {
    goto _32;
  }

_32:
  _24 = (&_21[((int32_t)1)]);
  if ((((((uint32_t)_24) < ((uint32_t)_19))&1))) {
    _21__PHI_TEMPORARY = _24;   /* for PHI node */
    goto _29;
  } else {
    _25__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0);   /* for PHI node */
    goto _30;
  }

  } while (1); /* end of syntactic loop '' */
_30:
  _25 = _25__PHI_TEMPORARY;
  _26__PHI_TEMPORARY = _25;   /* for PHI node */
  goto _27;

_27:
  _26 = _26__PHI_TEMPORARY;
  return _26;
}


void __close_all_a2dp_media_coder(void) {
  struct l_struct_struct_OC_a2dp_stack_t* _33;
  struct l_struct_struct_OC_a2dp_conn* _34;
  struct l_struct_struct_OC_a2dp_conn* _35;
  struct l_struct_struct_OC_a2dp_conn* _35__PHI_TEMPORARY;
  struct l_struct_struct_OC_a2dp_conn* _36;
  struct l_struct_struct_OC_a2dp_stack_t* _37;

  _33 = a2dp_stack;
  if ((((_33 == ((struct l_struct_struct_OC_a2dp_stack_t*)/*NULL*/0))&1))) {
    goto _38;
  } else {
    goto _39;
  }

_39:
  _34 = (&_33->field0.array[((int32_t)0)]);
  _35__PHI_TEMPORARY = _34;   /* for PHI node */
  goto _40;

  do {     /* Syntactic loop '' to make GCC happy */
_40:
  _35 = _35__PHI_TEMPORARY;
   /*tail*/ __sink_media_close(_35);
  _36 = (&_35[((int32_t)1)]);
  _37 = a2dp_stack;
  if ((((((uint32_t)_36) < ((uint32_t)((&_37->field0.array[((int32_t)1)]))))&1))) {
    _35__PHI_TEMPORARY = _36;   /* for PHI node */
    goto _40;
  } else {
    goto _41;
  }

  } while (1); /* end of syntactic loop '' */
_41:
  goto _38;

_38:
  return;
}


uint8_t __a2dp_conn_send_discover_cnt(void) {
  struct l_struct_struct_OC_a2dp_stack_t* _42;
  struct l_struct_struct_OC_a2dp_conn* _43;
  struct l_struct_struct_OC_a2dp_conn* _44;
  struct l_struct_struct_OC_a2dp_conn* _44__PHI_TEMPORARY;
  uint8_t _45;
  uint8_t _45__PHI_TEMPORARY;
  struct l_struct_struct_OC_avdtp* _46;
  uint16_t _47;
  uint8_t* _48;
  uint8_t _49;
  uint8_t _50;
  uint8_t _51;
  uint8_t _52;
  uint8_t _53;
  uint32_t _54;
  uint8_t _55;
  uint8_t _56;
  uint8_t _56__PHI_TEMPORARY;
  uint8_t* _57;
  uint8_t _58;
  uint8_t _59;
  uint8_t _59__PHI_TEMPORARY;
  struct l_struct_struct_OC_a2dp_conn* _60;
  struct l_struct_struct_OC_a2dp_stack_t* _61;
  uint8_t _62;
  uint8_t _63;
  uint8_t _63__PHI_TEMPORARY;

  _42 = a2dp_stack;
  if ((((_42 == ((struct l_struct_struct_OC_a2dp_stack_t*)/*NULL*/0))&1))) {
    _63__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _64;
  } else {
    goto _65;
  }

_65:
  _43 = (&_42->field0.array[((int32_t)0)]);
  _44__PHI_TEMPORARY = _43;   /* for PHI node */
  _45__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _66;

  do {     /* Syntactic loop '' to make GCC happy */
_66:
  _44 = _44__PHI_TEMPORARY;
  _45 = _45__PHI_TEMPORARY;
  if ((((_44 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    _59__PHI_TEMPORARY = _45;   /* for PHI node */
    goto _67;
  } else {
    goto _68;
  }

_68:
  _46 = (&_44->field2);
  _47 = *((&_44->field2.field1.field3));
  if ((((_47 == ((uint16_t)0))&1))) {
    _59__PHI_TEMPORARY = _45;   /* for PHI node */
    goto _67;
  } else {
    goto _69;
  }

_69:
  _48 = (&_44->field1.field0);
  _49 = *_48;
  _50 = llvm_lshr_u8(_49, 1);
  if ((((((uint8_t)(llvm_and_u8(_50, 15))) > ((uint8_t)((uint8_t)2)))&1))) {
    goto _70;
  } else {
    _59__PHI_TEMPORARY = _45;   /* for PHI node */
    goto _67;
  }

_70:
  _51 = llvm_add_u8((llvm_shl_u8(_50, 1)), 30);
  _52 = llvm_or_u8((llvm_and_u8(_51, 30)), (llvm_and_u8(_49, -31)));
  *_48 = _52;
  _53 = l2cap_debug_enable;
  if ((((((int8_t)_53) < ((int8_t)((uint8_t)0)))&1))) {
    goto _71;
  } else {
    _56__PHI_TEMPORARY = _52;   /* for PHI node */
    goto _72;
  }

_71:
  _54 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint8_t)(llvm_and_u8((llvm_lshr_u8(_51, 1)), 15)))));
  _55 = *_48;
  _56__PHI_TEMPORARY = _55;   /* for PHI node */
  goto _72;

_72:
  _56 = _56__PHI_TEMPORARY;
  if (((((llvm_and_u8(_56, 30)) == ((uint8_t)4))&1))) {
    goto _73;
  } else {
    _59__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _67;
  }

_73:
  *_48 = (llvm_or_u8((llvm_and_u8(_56, -31)), 2));
  _57 = (&_44->field2.field1.field0.field0);
  _58 = *_57;
  *_57 = (llvm_or_u8(_58, 16));
   /*tail*/ avdtp_discover_req(_46);
   /*tail*/ ((l_fptr_2*)(void*)stack_run_loop_resume)();
  _59__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _67;

_67:
  _59 = _59__PHI_TEMPORARY;
  _60 = (&_44[((int32_t)1)]);
  _61 = a2dp_stack;
  if ((((((uint32_t)_60) < ((uint32_t)((&_61->field0.array[((int32_t)1)]))))&1))) {
    _44__PHI_TEMPORARY = _60;   /* for PHI node */
    _45__PHI_TEMPORARY = _59;   /* for PHI node */
    goto _66;
  } else {
    goto _74;
  }

  } while (1); /* end of syntactic loop '' */
_74:
  _62 = ((uint8_t)(bool)(((_59 != ((uint8_t)0))&1)));
  _63__PHI_TEMPORARY = _62;   /* for PHI node */
  goto _64;

_64:
  _63 = _63__PHI_TEMPORARY;
  return _63;
}


uint32_t a2dp_send_cmd(uint8_t* _75, uint32_t _76) {
  struct l_struct_struct_OC_a2dp_stack_t* _77;
  struct l_struct_struct_OC_a2dp_conn* _78;
  struct l_struct_struct_OC_a2dp_conn* _79;
  struct l_struct_struct_OC_a2dp_conn* _80;
  struct l_struct_struct_OC_a2dp_conn* _80__PHI_TEMPORARY;
  struct l_struct_struct_OC_avdtp_core_data_t* _81;
  uint16_t _82;
  uint8_t _83;
  uint8_t* _84;
  uint8_t _85;
  uint8_t _86;
  uint8_t _87;
  uint8_t* _88;
  uint8_t _89;
  uint8_t _90;
  uint8_t* _91;
  uint8_t* _91__PHI_TEMPORARY;
  uint8_t _92;
  uint8_t _92__PHI_TEMPORARY;
  uint32_t _93;
  uint8_t* _94;
  uint8_t _95;
  uint8_t _96;
  uint16_t _97;
  uint8_t* _98;
  uint8_t _99;
  uint8_t* _100;
  uint8_t _101;
  struct l_struct_struct_OC_a2dp_conn* _102;
  uint16_t _103;
  uint16_t _104;
  uint32_t _105;
  uint32_t _105__PHI_TEMPORARY;

  _77 = a2dp_stack;
  if ((((_77 == ((struct l_struct_struct_OC_a2dp_stack_t*)/*NULL*/0))&1))) {
    _105__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _106;
  } else {
    goto _107;
  }

_107:
  if ((((_76 == 50u)&1))) {
    goto _108;
  } else {
    goto _109;
  }

_108:
  _78 =  /*tail*/ __a2dp_conn_for_addr(_75);
  if ((((_78 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _110;
  } else {
    _80__PHI_TEMPORARY = _78;   /* for PHI node */
    goto _111;
  }

_110:
  _79 =  /*tail*/ __create_a2dp_conn(_75);
  if ((((_79 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    _105__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _106;
  } else {
    _80__PHI_TEMPORARY = _79;   /* for PHI node */
    goto _111;
  }

_111:
  _80 = _80__PHI_TEMPORARY;
  _81 = (&_80->field2.field1);
  _82 = *((&_80->field2.field1.field3));
  if ((((_82 == ((uint16_t)0))&1))) {
    goto _112;
  } else {
    goto _113;
  }

_112:
  _83 = a2dp_wait_remote_discovecr;
  if ((((_83 == ((uint8_t)0))&1))) {
    goto _114;
  } else {
    goto _115;
  }

_115:
  _84 = (&_80->field1.field0);
  _85 = *_84;
  _86 = llvm_or_u8((llvm_and_u8(_85, -31)), 18);
  _91__PHI_TEMPORARY = _84;   /* for PHI node */
  _92__PHI_TEMPORARY = _86;   /* for PHI node */
  goto _116;

_114:
  _87 =  /*tail*/ handle_a2dp_discover_flag(((&_80->field0)), -1);
  _88 = (&_80->field1.field0);
  _89 = *_88;
  _90 = llvm_or_u8((llvm_and_u8(_89, -31)), (llvm_select_u8((((_87 != ((uint8_t)0))&1)), 22, 4)));
  _91__PHI_TEMPORARY = _88;   /* for PHI node */
  _92__PHI_TEMPORARY = _90;   /* for PHI node */
  goto _116;

_116:
  _91 = _91__PHI_TEMPORARY;
  _92 = _92__PHI_TEMPORARY;
  *_91 = _92;
  if ((((((uint8_t)(llvm_and_u8(_92, 30))) > ((uint8_t)((uint8_t)4)))&1))) {
    goto _117;
  } else {
    goto _118;
  }

_117:
  _93 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  goto _118;

_118:
  _94 = (&_81->field0.field0);
  _95 = *_94;
  *_94 = (llvm_or_u8(_95, 16));
  _96 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), __a2dp_packet_handler, _75, 25, -1);
  _105__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _106;

_113:
  _97 = *((&_80->field3.field0.field0));
  if ((((_97 == ((uint16_t)0))&1))) {
    goto _119;
  } else {
    _105__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _106;
  }

_119:
  _98 = (&_80->field1.field0);
  _99 = *_98;
  *_98 = (llvm_or_u8((llvm_and_u8(_99, -31)), 2));
  _100 = (&_81->field0.field0);
  _101 = *_100;
  *_100 = (llvm_or_u8(_101, 16));
   /*tail*/ a2dp_event_credits(_82);
  _105__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _106;

_109:
  _102 =  /*tail*/ __a2dp_conn_for_addr(_75);
  if ((((_102 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    _105__PHI_TEMPORARY = -1000;   /* for PHI node */
    goto _106;
  } else {
    goto _120;
  }

_120:
  switch (_76) {
  default:
    _105__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _106;
  case 51u:
    goto _121;
  case 13u:
    goto _122;
  }

_121:
  _103 = *((&_102->field3.field0.field0));
   /*tail*/ l2cap_disconnect_internal(_103, 19);
  _104 = *((&_102->field2.field1.field3));
   /*tail*/ l2cap_disconnect_internal(_104, 19);
  _105__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _106;

_122:
   /*tail*/ avdtp_delay_report_req(((&_102->field2)));
  _105__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _106;

_106:
  _105 = _105__PHI_TEMPORARY;
  return _105;
}


void a2dp_init(struct l_struct_struct_OC_a2dp_stack_t* _123) {
  uint8_t* _124;

  a2dp_stack = _123;
  _124 = memset(((&_123->field0.array[((int32_t)0)].field0.array[((int32_t)0)])), 0, 128);
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), __a2dp_packet_handler, 25, -1);
}


static void __a2dp_packet_handler(uint8_t _125, uint16_t _126, uint8_t* _127, uint16_t _128) {
  struct l_array_6_uint8_t _129;    /* Address-exposed local */
  uint8_t _130;
  struct l_struct_struct_OC_a2dp_conn* _131;
  uint16_t _132;
  uint8_t _133;
  uint16_t _134;
  struct l_struct_struct_OC__avdtp_local_sep* _135;
  uint8_t _136;
  uint8_t _137;
  uint32_t _138;
  uint8_t _139;
  uint32_t _140;
  struct l_struct_struct_OC__stack_config* _141;
  uint32_t _142;
  uint32_t _143;
  uint32_t _144;
  uint32_t _145;
  uint16_t* _146;
  uint32_t _147;
  uint32_t _148;
  uint32_t _149;
  struct l_struct_struct_OC_a2dp_event_handler* _150;
  struct l_struct_struct_OC_a2dp_event_handler* _150__PHI_TEMPORARY;
  uint32_t _151;
  uint16_t _152;
  l_fptr_3* _153;
  struct l_struct_struct_OC_a2dp_event_handler* _154;
  uint8_t* _155;
  uint8_t _156;
  uint32_t _157;
  struct l_struct_struct_OC_a2dp_conn* _158;
  struct l_struct_struct_OC_a2dp_conn* _159;
  struct l_struct_struct_OC_a2dp_conn* _160;
  struct l_struct_struct_OC_a2dp_conn* _160__PHI_TEMPORARY;
  uint8_t _161;
  uint16_t _162;
  uint8_t _163;
  uint16_t _164;
  uint16_t _165;
  uint16_t _166;
  uint8_t* _167;
  uint8_t _168;
  uint8_t* _169;
  struct l_struct_struct_OC_a2dp_conn* _170;
  uint8_t _171;
  uint8_t _172;
  uint16_t _173;
  uint8_t _174;
  uint16_t _175;
  uint8_t _176;
  uint8_t _177;
  uint32_t _178;
  uint32_t _179;
  struct l_struct_struct_OC_a2dp_conn* _180;

  switch (_125) {
  default:
    goto _181;
  case ((uint8_t)4):
    goto _182;
  case ((uint8_t)6):
    goto _183;
  }

_182:
  _130 = *_127;
  switch (_130) {
  default:
    goto _181;
  case ((uint8_t)116):
    goto _184;
  case ((uint8_t)114):
    goto _185;
  case ((uint8_t)112):
    goto _186;
  case ((uint8_t)121):
    goto _187;
  case ((uint8_t)113):
    goto _188;
  }

_184:
   /*tail*/ a2dp_event_credits(_126);
  goto _181;

_183:
  _131 =  /*tail*/ __a2dp_conn_for_channel(_126);
  _132 = *((&_131->field2.field1.field3));
  if ((((_132 == _126)&1))) {
    goto _189;
  } else {
    goto _190;
  }

_189:
  _133 =  /*tail*/ avdtp_packet_handler(((&_131->field2)), _127, _128);
  goto _181;

_190:
  _134 = *((&_131->field3.field0.field0));
  if ((((_134 == _126)&1))) {
    goto _191;
  } else {
    goto _181;
  }

_191:
  _135 = *((&_131->field2.field1.field1));
  _136 = *((&_135->field3));
  _137 = llvm_and_u8(_136, 15);
  _138 = ((uint32_t)(uint8_t)_137);
  if ((((_137 == ((uint8_t)3))&1))) {
    goto _192;
  } else {
    goto _193;
  }

_193:
  _139 = l2cap_debug_enable;
  if ((((((int8_t)_139) < ((int8_t)((uint8_t)0)))&1))) {
    goto _194;
  } else {
    goto _181;
  }

_194:
  _140 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), _138);
  goto _181;

_192:
  _141 = user_stack_configs;
  _142 = __UNALIGNED_LOAD__(uint32_t volatile, 1, ((&_141->field9)));
  if ((((((int16_t)(((uint16_t)_142))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _181;
  } else {
    goto _195;
  }

_195:
  _143 =  /*tail*/ mic_coder_busy_flag();
  _144 =  /*tail*/ ((l_fptr_4*)(void*)filter_out_sbc_data_en)();
  if ((((_144 == 0u)&1))) {
    goto _196;
  } else {
    goto _181;
  }

_196:
  _145 = CONFIG_BTCTLER_TWS_ENABLE;
  if ((((_145 == 0u)&1))) {
    goto _197;
  } else {
    goto _198;
  }

_197:
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _199;
  } else {
    goto _181;
  }

_199:
  _146 = (&_131->field2.field1.field8);
  _150__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _200;

_198:
  _147 =  /*tail*/ ((l_fptr_4*)(void*)tws_api_get_tws_state)();
  if (((((_147 & 2) == 0u)&1))) {
    goto _197;
  } else {
    goto _201;
  }

_201:
  _148 =  /*tail*/ ((l_fptr_4*)(void*)tws_api_get_tws_state)();
  if (((((_148 & 64) == 0u)&1))) {
    goto _202;
  } else {
    goto _197;
  }

_202:
  _149 =  /*tail*/ putchar(77);
  goto _181;

  do {     /* Syntactic loop '' to make GCC happy */
_200:
  _150 = _150__PHI_TEMPORARY;
  _151 = *((&_150->field0));
  _152 = *_146;
  if ((((_151 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_152, 12)), 3)))))&1))) {
    goto _203;
  } else {
    goto _204;
  }

_203:
  _153 = *((&_150->field3));
  if ((((_153 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _204;
  } else {
    goto _205;
  }

_205:
   /*tail*/ _153(_131, _127, _128);
  goto _204;

_204:
  _154 = (&_150[((int32_t)1)]);
  if ((((((uint32_t)_154) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _150__PHI_TEMPORARY = _154;   /* for PHI node */
    goto _200;
  } else {
    goto _206;
  }

  } while (1); /* end of syntactic loop '' */
_185:
  _155 = (&_129.array[((int32_t)0)]);
  _156 = l2cap_debug_enable;
  if (((((llvm_and_u8(_156, 32)) == ((uint8_t)0))&1))) {
    goto _207;
  } else {
    goto _208;
  }

_208:
  _157 =  /*tail*/ puts(((&_OC_str_OC_11.array[((int32_t)0)])));
  goto _207;

_207:
  bt_flip_addr(_155, ((&_127[((int32_t)2)])));
  _158 = __a2dp_conn_for_addr(_155);
  if ((((_158 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _209;
  } else {
    _160__PHI_TEMPORARY = _158;   /* for PHI node */
    goto _210;
  }

_209:
  _159 = __create_a2dp_conn(_155);
  if ((((_159 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _211;
  } else {
    _160__PHI_TEMPORARY = _159;   /* for PHI node */
    goto _210;
  }

_210:
  _160 = _160__PHI_TEMPORARY;
  _161 = btstack_emitter_support;
  if ((((_161 == ((uint8_t)0))&1))) {
    goto _212;
  } else {
    goto _213;
  }

_213:
  _162 = *((&_160->field2.field1.field8));
  if (((((llvm_and_u16(_162, 12288)) == ((uint16_t)0))&1))) {
    goto _214;
  } else {
    goto _212;
  }

_214:
  _163 = *((&_160->field2.field1.field0.field0));
  if (((((llvm_and_u8(_163, 16)) == ((uint8_t)0))&1))) {
    goto _212;
  } else {
    goto _215;
  }

_215:
  _164 = *((&_160->field2.field1.field3));
  if ((((_164 == ((uint16_t)0))&1))) {
    goto _216;
  } else {
    goto _212;
  }

_216:
  l2cap_decline_connection_internal(_126, 4);
  goto _211;

_212:
  _165 = *((&_160->field2.field1.field3));
  if ((((_165 == ((uint16_t)0))&1))) {
    goto _217;
  } else {
    goto _218;
  }

_218:
  _166 = *((&_160->field3.field0.field0));
  if ((((_166 == ((uint16_t)0))&1))) {
    goto _217;
  } else {
    goto _211;
  }

_217:
  l2cap_accept_connection_internal(_126);
  goto _211;

_211:
  goto _181;

_186:
  _167 = (&_127[((int32_t)2)]);
  _168 = *_167;
  if ((((_168 == ((uint8_t)0))&1))) {
    goto _219;
  } else {
    goto _220;
  }

_219:
   /*tail*/ a2dp_channel_open_success(_126, _127, 1);
  goto _181;

_220:
  _169 = (&_129.array[((int32_t)0)]);
  bt_flip_addr(_169, ((&_127[((int32_t)3)])));
  _170 = __a2dp_conn_for_addr(_169);
  if ((((_170 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _221;
  } else {
    goto _222;
  }

_222:
  __close_channel(_170, _126);
  goto _221;

_221:
  _171 = btstack_emitter_support;
  if ((((_171 == ((uint8_t)0))&1))) {
    goto _223;
  } else {
    goto _224;
  }

_224:
  _172 = *_167;
  if ((((_172 == ((uint8_t)80))&1))) {
    goto _223;
  } else {
    goto _225;
  }

_225:
  _173 = *((&_170->field2.field1.field8));
  if (((((llvm_and_u16(_173, 12288)) == ((uint16_t)0))&1))) {
    goto _226;
  } else {
    goto _223;
  }

_226:
  _174 = *((&_170->field2.field1.field0.field0));
  if (((((llvm_and_u8(_174, 16)) == ((uint8_t)0))&1))) {
    goto _223;
  } else {
    goto _227;
  }

_227:
  _175 = *((&_170->field2.field1.field3));
  if ((((_175 == ((uint16_t)0))&1))) {
    goto _228;
  } else {
    goto _223;
  }

_228:
  _176 = reconnect_after_disconnect;
  if ((((((uint8_t)_176) < ((uint8_t)((uint8_t)2)))&1))) {
    goto _229;
  } else {
    goto _230;
  }

_229:
  reconnect_after_disconnect = (llvm_add_u8(_176, 1));
  _177 = l2cap_debug_enable;
  if ((((((int8_t)_177) < ((int8_t)((uint8_t)0)))&1))) {
    goto _231;
  } else {
    goto _232;
  }

_231:
  _178 = puts(((&str_OC_16.array[((int32_t)0)])));
  goto _232;

_232:
  _179 = a2dp_send_cmd(_169, 50);
  goto _223;

_230:
  reconnect_after_disconnect = 0;
  goto _223;

_223:
  goto _181;

_188:
  _180 =  /*tail*/ __a2dp_conn_for_channel(_126);
  if ((((_180 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _181;
  } else {
    goto _233;
  }

_233:
   /*tail*/ __close_channel(_180, _126);
  goto _181;

_187:
   /*tail*/ a2dp_channel_open_success(_126, _127, 0);
  goto _181;

_206:
  goto _181;

_181:
  return;
}


struct l_struct_struct_OC_avdtp* get_tws_phone_session(void) {
  struct l_struct_struct_OC_a2dp_stack_t* _234;
  struct l_struct_struct_OC_a2dp_conn* _235;
  struct l_struct_struct_OC_a2dp_conn* _236;
  struct l_struct_struct_OC_a2dp_conn* _237;
  struct l_struct_struct_OC_a2dp_conn* _237__PHI_TEMPORARY;
  uint8_t _238;
  struct l_struct_struct_OC_a2dp_conn* _239;
  struct l_struct_struct_OC_a2dp_conn* _240;
  struct l_struct_struct_OC_a2dp_conn* _240__PHI_TEMPORARY;

  _234 = a2dp_stack;
  _235 = (&_234->field0.array[((int32_t)0)]);
  _236 = (&_234->field0.array[((int32_t)1)]);
  _237__PHI_TEMPORARY = _235;   /* for PHI node */
  goto _241;

  do {     /* Syntactic loop '' to make GCC happy */
_241:
  _237 = _237__PHI_TEMPORARY;
  _238 = *((&_237->field1.field0));
  if (((((llvm_and_u8(_238, 1)) == ((uint8_t)0))&1))) {
    goto _242;
  } else {
    _240__PHI_TEMPORARY = _237;   /* for PHI node */
    goto _243;
  }

_242:
  _239 = (&_237[((int32_t)1)]);
  if ((((((uint32_t)_239) < ((uint32_t)_236))&1))) {
    _237__PHI_TEMPORARY = _239;   /* for PHI node */
    goto _241;
  } else {
    _240__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0);   /* for PHI node */
    goto _243;
  }

  } while (1); /* end of syntactic loop '' */
_243:
  _240 = _240__PHI_TEMPORARY;
  return (llvm_select_pstruct_struct_OC_avdtp((((_240 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1)), ((struct l_struct_struct_OC_avdtp*)/*NULL*/0), ((&_240->field2))));
}


uint32_t a2dp_core_data_for_send(uint8_t* _244, uint16_t _245) {
  struct l_struct_struct_OC_a2dp_stack_t* _246;
  struct l_struct_struct_OC_a2dp_conn* _247;
  struct l_struct_struct_OC_a2dp_conn* _248;
  struct l_struct_struct_OC_a2dp_conn* _249;
  struct l_struct_struct_OC_a2dp_conn* _249__PHI_TEMPORARY;
  uint8_t _250;
  struct l_struct_struct_OC_a2dp_conn* _251;
  uint64_t _252;
  uint32_t _253;
  uint32_t _253__PHI_TEMPORARY;

  _246 = a2dp_stack;
  _247 = (&_246->field0.array[((int32_t)0)]);
  _248 = (&_246->field0.array[((int32_t)1)]);
  _249__PHI_TEMPORARY = _247;   /* for PHI node */
  goto _254;

  do {     /* Syntactic loop '' to make GCC happy */
_254:
  _249 = _249__PHI_TEMPORARY;
  _250 = *((&_249->field1.field0));
  if (((((llvm_and_u8(_250, 1)) == ((uint8_t)0))&1))) {
    goto _255;
  } else {
    goto _256;
  }

_255:
  _251 = (&_249[((int32_t)1)]);
  if ((((((uint32_t)_251) < ((uint32_t)_248))&1))) {
    _249__PHI_TEMPORARY = _251;   /* for PHI node */
    goto _254;
  } else {
    goto _257;
  }

  } while (1); /* end of syntactic loop '' */
_256:
  if ((((_249 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    _253__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _258;
  } else {
    goto _259;
  }

_259:
  *_244 = _250;
  _252 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_249->field3.field0)))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_244[((int32_t)1)]))))) = _252;
  _253__PHI_TEMPORARY = 9;   /* for PHI node */
  goto _258;

_257:
  _253__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _258;

_258:
  _253 = _253__PHI_TEMPORARY;
  return _253;
}


void a2dp_core_data_for_set(uint8_t* _260, uint16_t _261) {
  struct l_struct_struct_OC_a2dp_stack_t* _262;
  struct l_struct_struct_OC_a2dp_conn* _263;
  struct l_struct_struct_OC_a2dp_conn* _264;
  struct l_struct_struct_OC_a2dp_conn* _265;
  struct l_struct_struct_OC_a2dp_conn* _265__PHI_TEMPORARY;
  uint8_t* _266;
  uint8_t _267;
  struct l_struct_struct_OC_a2dp_conn* _268;
  uint8_t _269;
  uint64_t _270;

  _262 = a2dp_stack;
  _263 = (&_262->field0.array[((int32_t)0)]);
  _264 = (&_262->field0.array[((int32_t)1)]);
  _265__PHI_TEMPORARY = _263;   /* for PHI node */
  goto _271;

  do {     /* Syntactic loop '' to make GCC happy */
_271:
  _265 = _265__PHI_TEMPORARY;
  _266 = (&_265->field1.field0);
  _267 = *_266;
  if (((((llvm_and_u8(_267, 1)) == ((uint8_t)0))&1))) {
    goto _272;
  } else {
    goto _273;
  }

_272:
  _268 = (&_265[((int32_t)1)]);
  if ((((((uint32_t)_268) < ((uint32_t)_264))&1))) {
    _265__PHI_TEMPORARY = _268;   /* for PHI node */
    goto _271;
  } else {
    goto _274;
  }

  } while (1); /* end of syntactic loop '' */
_273:
  if ((((_265 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _275;
  } else {
    goto _276;
  }

_276:
  _269 = *_260;
  *_266 = _269;
  _270 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_260[((int32_t)1)])))));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_265->field3.field0))))) = _270;
   /*tail*/ avdtp_tws_local_sep_deal(((&_265->field2)));
  goto _275;

_274:
  goto _275;

_275:
  return;
}


uint32_t music_player_ctrl(uint8_t* _277, uint8_t _278) {
  return 0;
}


void __a2dp_lock_media_code(uint8_t* _279) {
  return;
}


void __a2dp_unlock_media_code(uint8_t* _280) {
  return;
}


static struct l_struct_struct_OC_a2dp_conn* __create_a2dp_conn(uint8_t* _281) {
  struct l_struct_struct_OC_a2dp_stack_t* _282;
  struct l_struct_struct_OC_a2dp_conn* _283;
  struct l_struct_struct_OC_a2dp_conn* _284;
  struct l_struct_struct_OC_a2dp_conn* _285;
  struct l_struct_struct_OC_a2dp_conn* _285__PHI_TEMPORARY;
  uint8_t* _286;
  uint8_t _287;
  uint8_t _288;
  uint8_t* _289;
  struct l_struct_struct_OC_avdtp* _290;
  uint8_t* _291;
  struct l_struct_struct_OC__stack_config* _292;
  uint16_t _293;
  uint32_t _294;
  uint8_t _295;
  struct l_struct_struct_OC_a2dp_media_codec* _296;
  struct l_struct_struct_OC_a2dp_media_codec* _296__PHI_TEMPORARY;
  uint32_t _297;
  struct l_struct_struct_OC_a2dp_media_codec* _298;
  uint8_t _299;
  uint8_t _300;
  uint8_t _300__PHI_TEMPORARY;
  uint32_t _301;
  uint32_t _302;
  struct l_struct_struct_OC_a2dp_media_codec* _303;
  struct l_struct_struct_OC_a2dp_media_codec* _303__PHI_TEMPORARY;
  uint32_t _304;
  struct l_struct_struct_OC_a2dp_media_codec* _305;
  struct l_struct_struct_OC_a2dp_media_codec* _306;
  struct l_struct_struct_OC_a2dp_media_codec* _306__PHI_TEMPORARY;
  uint32_t _307;
  struct l_struct_struct_OC__stack_config* _308;
  uint32_t _309;
  struct l_struct_struct_OC_a2dp_media_codec* _310;
  struct l_struct_struct_OC_a2dp_conn* _311;
  struct l_struct_struct_OC_a2dp_conn* _312;
  struct l_struct_struct_OC_a2dp_conn* _312__PHI_TEMPORARY;

  _282 = a2dp_stack;
  _283 = (&_282->field0.array[((int32_t)0)]);
  _284 = (&_282->field0.array[((int32_t)1)]);
  _285__PHI_TEMPORARY = _283;   /* for PHI node */
  goto _313;

  do {     /* Syntactic loop '' to make GCC happy */
_313:
  _285 = _285__PHI_TEMPORARY;
  _286 = (&_285->field1.field0);
  _287 = *_286;
  if (((((llvm_and_u8(_287, 1)) == ((uint8_t)0))&1))) {
    goto _314;
  } else {
    goto _315;
  }

_315:
  _311 = (&_285[((int32_t)1)]);
  if ((((((uint32_t)_311) < ((uint32_t)_284))&1))) {
    _285__PHI_TEMPORARY = _311;   /* for PHI node */
    goto _313;
  } else {
    goto _316;
  }

  } while (1); /* end of syntactic loop '' */
_314:
  _288 = llvm_or_u8(_287, 1);
  *_286 = _288;
  _289 = memcpy(((&_285->field0.array[((int32_t)0)])), _281, 6);
  _290 = (&_285->field2);
  _291 = memset((((uint8_t*)_290)), 0, 120);
  _292 = user_stack_configs;
  _293 = *((&_292->field5));
  _294 = ((uint32_t)(uint16_t)_293);
  if (((((_294 & 32) == 0u)&1))) {
    goto _317;
  } else {
    goto _318;
  }

_318:
  _295 = btstack_emitter_support;
  if ((((_295 == ((uint8_t)0))&1))) {
    _312__PHI_TEMPORARY = _285;   /* for PHI node */
    goto _319;
  } else {
    goto _320;
  }

_320:
  *((&_285->field2.field1.field8)) = 0;
  if ((((&a2dp_source_media_codec_begin)) < ((&a2dp_source_media_codec_end)))) {
    goto _321;
  } else {
    _300__PHI_TEMPORARY = _288;   /* for PHI node */
    goto _322;
  }

_321:
  _296__PHI_TEMPORARY = ((&a2dp_source_media_codec_begin));   /* for PHI node */
  goto _323;

  do {     /* Syntactic loop '' to make GCC happy */
_323:
  _296 = _296__PHI_TEMPORARY;
  _297 = *((&_296->field0));
  if ((((_297 == 0u)&1))) {
    goto _324;
  } else {
    goto _325;
  }

_324:
   /*tail*/ avdtp_sep_init(_290, 0, (&a2dp_sep_ind_sbc), 0);
  goto _325;

_325:
  _298 = (&_296[((int32_t)1)]);
  if ((((((uint32_t)_298) < ((uint32_t)((&a2dp_source_media_codec_end))))&1))) {
    _296__PHI_TEMPORARY = _298;   /* for PHI node */
    goto _323;
  } else {
    goto _326;
  }

  } while (1); /* end of syntactic loop '' */
_326:
  _299 = *_286;
  _300__PHI_TEMPORARY = _299;   /* for PHI node */
  goto _322;

_322:
  _300 = _300__PHI_TEMPORARY;
  *_286 = (llvm_or_u8((llvm_and_u8(_300, -31)), 22));
  _301 =  /*tail*/ user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  _312__PHI_TEMPORARY = _285;   /* for PHI node */
  goto _319;

_317:
  if (((((_294 & 2) == 0u)&1))) {
    _312__PHI_TEMPORARY = _285;   /* for PHI node */
    goto _319;
  } else {
    goto _327;
  }

_327:
  *((&_285->field2.field1.field8)) = 4096;
  if ((((&a2dp_sink_media_codec_begin)) < ((&a2dp_sink_media_codec_end)))) {
    goto _328;
  } else {
    _312__PHI_TEMPORARY = _285;   /* for PHI node */
    goto _319;
  }

_328:
  _303__PHI_TEMPORARY = ((&a2dp_sink_media_codec_begin));   /* for PHI node */
  goto _329;

_330:
  if ((((&a2dp_sink_media_codec_begin)) < ((&a2dp_sink_media_codec_end)))) {
    goto _331;
  } else {
    _312__PHI_TEMPORARY = _285;   /* for PHI node */
    goto _319;
  }

_331:
  _302 = CONFIG_BTSTACK_SUPPORT_AAC;
  _306__PHI_TEMPORARY = ((&a2dp_sink_media_codec_begin));   /* for PHI node */
  goto _332;

  do {     /* Syntactic loop '' to make GCC happy */
_329:
  _303 = _303__PHI_TEMPORARY;
  _304 = *((&_303->field0));
  if ((((_304 == 0u)&1))) {
    goto _333;
  } else {
    goto _334;
  }

_333:
   /*tail*/ avdtp_sep_init(_290, 1, (&a2dp_sep_ind_sbc), 0);
  goto _334;

_334:
  _305 = (&_303[((int32_t)1)]);
  if ((((((uint32_t)_305) < ((uint32_t)((&a2dp_sink_media_codec_end))))&1))) {
    _303__PHI_TEMPORARY = _305;   /* for PHI node */
    goto _329;
  } else {
    goto _330;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '' to make GCC happy */
_332:
  _306 = _306__PHI_TEMPORARY;
  _307 = *((&_306->field0));
  if ((((_307 == 2u)&1))) {
    goto _335;
  } else {
    goto _336;
  }

_335:
  if ((((_302 == 0u)&1))) {
    goto _337;
  } else {
    goto _338;
  }

_338:
  _308 = user_stack_configs;
  _309 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_308->field9)));
  if ((((((int8_t)(((uint8_t)_309))) < ((int8_t)((uint8_t)0)))&1))) {
    goto _339;
  } else {
    goto _340;
  }

_340:
   /*tail*/ avdtp_sep_init(_290, 1, (&a2dp_sep_ind_sbc), 0);
  goto _336;

_339:
   /*tail*/ avdtp_sep_init(_290, 1, (&a2dp_sep_ind_mpeg24), 2);
  goto _336;

_337:
   /*tail*/ avdtp_sep_init(_290, 1, (&a2dp_sep_ind_sbc), 0);
  goto _336;

_336:
  _310 = (&_306[((int32_t)1)]);
  if ((((((uint32_t)_310) < ((uint32_t)((&a2dp_sink_media_codec_end))))&1))) {
    _306__PHI_TEMPORARY = _310;   /* for PHI node */
    goto _332;
  } else {
    goto _341;
  }

  } while (1); /* end of syntactic loop '' */
_341:
  _312__PHI_TEMPORARY = _285;   /* for PHI node */
  goto _319;

_316:
  _312__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0);   /* for PHI node */
  goto _319;

_319:
  _312 = _312__PHI_TEMPORARY;
  return _312;
}


static void a2dp_event_credits(uint16_t _342) {
  struct l_struct_struct_OC_a2dp_conn* _343;
  struct l_struct_struct_OC_avdtp* _344;
  uint8_t* _345;
  uint8_t _346;
  uint16_t* _347;
  struct l_struct_struct_OC_a2dp_event_handler* _348;
  struct l_struct_struct_OC_a2dp_event_handler* _348__PHI_TEMPORARY;
  uint32_t _349;
  uint16_t _350;
  l_fptr_5* _351;
  struct l_struct_struct_OC_a2dp_event_handler* _352;

  _343 =  /*tail*/ __a2dp_conn_for_channel(_342);
  if ((((_343 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _353;
  } else {
    goto _354;
  }

_354:
  _344 = (&_343->field2);
   /*tail*/ avdtp_retry_send(_344);
  _345 = (&_343->field1.field0);
  _346 = *_345;
  if (((((llvm_and_u8(_346, 30)) == ((uint8_t)4))&1))) {
    goto _355;
  } else {
    goto _356;
  }

_355:
  *_345 = (llvm_or_u8((llvm_and_u8(_346, -31)), 2));
   /*tail*/ avdtp_discover_req(_344);
  goto _356;

_356:
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _357;
  } else {
    goto _353;
  }

_357:
  _347 = (&_343->field2.field1.field8);
  _348__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _358;

  do {     /* Syntactic loop '' to make GCC happy */
_358:
  _348 = _348__PHI_TEMPORARY;
  _349 = *((&_348->field0));
  _350 = *_347;
  if ((((_349 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_350, 12)), 3)))))&1))) {
    goto _359;
  } else {
    goto _360;
  }

_359:
  _351 = *((&_348->field2));
  if ((((_351 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _360;
  } else {
    goto _361;
  }

_361:
   /*tail*/ _351(_343);
  goto _360;

_360:
  _352 = (&_348[((int32_t)1)]);
  if ((((((uint32_t)_352) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _348__PHI_TEMPORARY = _352;   /* for PHI node */
    goto _358;
  } else {
    goto _362;
  }

  } while (1); /* end of syntactic loop '' */
_362:
  goto _353;

_353:
  return;
}


static uint8_t a2dp_getcap_ind_sbc(uint8_t _363, uint8_t* _364, uint8_t* _365) {
  struct l_struct_struct_OC__stack_config* _366;
  uint8_t _367;
  uint8_t* _368;
  uint8_t _369;
  uint32_t _370;
  uint8_t _371;
  uint8_t _372;

  *_364 = 1;
  *((&_364[((int32_t)1)])) = 0;
  *_365 = 2;
  *((&_364[((int32_t)2)])) = 7;
  *((&_364[((int32_t)3)])) = 6;
  _366 = user_stack_configs;
  _367 = *((&_366->field7));
  _368 = memcpy(((&_364[((int32_t)4)])), ((&a2dp_sbc.field0.field0)), 5);
  *((&_364[((int32_t)9)])) = _367;
  _369 = l2cap_debug_enable;
  if ((((((int8_t)_369) < ((int8_t)((uint8_t)0)))&1))) {
    goto _373;
  } else {
    goto _374;
  }

_373:
  _370 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), (((uint32_t)(uint8_t)_367)));
  goto _374;

_374:
  _371 = *_365;
  *_365 = (llvm_add_u8(_371, 8));
  *((&_364[((int32_t)10)])) = 4;
  *((&_364[((int32_t)11)])) = 2;
  __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_364[((int32_t)12)]))))) = 2;
  _372 = *_365;
  *_365 = (llvm_add_u8(_372, 4));
  return 1;
}


static uint8_t a2dp_set_configure_ind_sbc(struct l_struct_struct_OC__avdtp_local_sep* _375, uint8_t* _376, uint8_t _377, uint8_t* _378) {
  uint8_t* _379;
  struct l_struct_struct_OC_a2dp_conn* _380;
  uint32_t _381;
  uint16_t* _382;
  uint8_t* _383;
  uint8_t* _384;
  uint8_t* _385;
  struct l_struct_struct_OC__sbc_codec_cap* _386;
  uint16_t* _387;
  uint32_t* _388;
  uint16_t* _389;
  uint8_t* _390;
  uint8_t* _391;
  uint8_t* _392;
  uint8_t* _392__PHI_TEMPORARY;
  uint8_t _393;
  uint8_t _393__PHI_TEMPORARY;
  uint32_t _394;
  uint32_t _394__PHI_TEMPORARY;
  uint8_t _395;
  uint8_t _396;
  uint32_t _397;
  uint8_t* _398;
  uint8_t _399;
  uint8_t _400;
  uint16_t _401;
  uint8_t _402;
  uint32_t _403;
  uint8_t _404;
  uint8_t* _405;
  uint16_t _406;
  uint16_t _407;
  uint16_t _408;
  uint16_t _409;
  uint16_t _410;
  uint16_t _411;
  uint16_t _412;
  uint16_t _412__PHI_TEMPORARY;
  uint32_t _413;
  uint32_t _413__PHI_TEMPORARY;
  uint16_t _414;
  uint16_t _415;
  uint32_t _416;
  uint32_t _417;
  uint32_t _417__PHI_TEMPORARY;
  uint32_t _418;
  uint32_t _419;
  uint16_t _420;
  uint16_t _421;
  uint16_t _421__PHI_TEMPORARY;
  uint16_t _422;
  uint16_t _423;
  uint16_t _423__PHI_TEMPORARY;
  struct l_struct_struct_OC__stack_config* _424;
  uint8_t _425;
  uint8_t _426;
  uint32_t _427;
  uint8_t _428;
  uint32_t _429;
  struct l_struct_struct_OC__sbc_codec_cap* _430;
  uint8_t _431;
  uint16_t _432;
  uint32_t _433;
  uint8_t _434;
  uint8_t _435;
  uint32_t _436;
  struct l_struct_struct_OC__sbc_codec_cap* _437;
  struct l_struct_struct_OC__sbc_codec_cap* _437__PHI_TEMPORARY;
  uint16_t _438;
  uint8_t _439;
  uint8_t _440;
  uint8_t _440__PHI_TEMPORARY;
  uint32_t _441;
  uint8_t* _442;
  uint32_t _443;
  uint8_t _444;
  uint8_t _444__PHI_TEMPORARY;
  uint8_t _445;
  uint8_t _445__PHI_TEMPORARY;

  _379 = *(((uint8_t**)((&_375->field1))));
  _380 = ((struct l_struct_struct_OC_a2dp_conn*)((&_379[((int32_t)-8)])));
  _381 = ((uint32_t)(uint8_t)_377);
  if ((((_377 == ((uint8_t)0))&1))) {
    _445__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _446;
  } else {
    goto _447;
  }

_447:
  _382 = ((uint16_t*)((&_379[((int32_t)98)])));
  _383 = (&_379[((int32_t)117)]);
  _384 = (&_378[((int32_t)1)]);
  _385 = (&_378[((int32_t)2)]);
  _386 = ((struct l_struct_struct_OC__sbc_codec_cap*)_385);
  _387 = ((uint16_t*)((&_378[((int32_t)4)])));
  _388 = ((uint32_t*)((&_379[((int32_t)100)])));
  _389 = (&_375->field2.field0);
  _390 = (&_378[((int32_t)6)]);
  _391 = (&_378[((int32_t)7)]);
  _392__PHI_TEMPORARY = _376;   /* for PHI node */
  _393__PHI_TEMPORARY = 0;   /* for PHI node */
  _394__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _448;

  do {     /* Syntactic loop '' to make GCC happy */
_448:
  _392 = _392__PHI_TEMPORARY;
  _393 = _393__PHI_TEMPORARY;
  _394 = _394__PHI_TEMPORARY;
  _395 = *_392;
  _396 = *((&_392[((int32_t)1)]));
  _397 = llvm_add_u32(_394, 2);
  _398 = (&_392[((int32_t)2)]);
  switch (_395) {
  default:
    _440__PHI_TEMPORARY = _393;   /* for PHI node */
    goto _449;
  case ((uint8_t)4):
    goto _450;
  case ((uint8_t)1):
    goto _451;
  case ((uint8_t)7):
    goto _452;
  }

_452:
  if ((((((uint32_t)_381) < ((uint32_t)(llvm_add_u32((((uint32_t)(uint8_t)_396)), 2))))&1))) {
    _444__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _453;
  } else {
    goto _454;
  }

_454:
  _404 = *((&_392[((int32_t)3)]));
  if ((((_404 == ((uint8_t)0))&1))) {
    goto _455;
  } else {
    _440__PHI_TEMPORARY = _393;   /* for PHI node */
    goto _449;
  }

_455:
  if ((((_378 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _456;
  } else {
    goto _457;
  }

_457:
  *_378 = 7;
  *_384 = 6;
  _405 = memcpy(_385, _398, 6);
  _406 = __UNALIGNED_LOAD__(uint16_t, 1, _387);
  if (((((llvm_and_u16(_406, 16)) == ((uint16_t)0))&1))) {
    goto _458;
  } else {
    goto _459;
  }

_459:
  _407 = *_389;
  _408 = llvm_and_u16(_406, -241);
  if (((((llvm_and_u16(_407, 2048)) == ((uint16_t)0))&1))) {
    goto _460;
  } else {
    goto _461;
  }

_461:
  _409 = llvm_or_u16(_408, 16);
  _412__PHI_TEMPORARY = _409;   /* for PHI node */
  _413__PHI_TEMPORARY = 48000;   /* for PHI node */
  goto _462;

_460:
  _410 = llvm_or_u16(_408, 32);
  _412__PHI_TEMPORARY = _410;   /* for PHI node */
  _413__PHI_TEMPORARY = 44100;   /* for PHI node */
  goto _462;

_458:
  _411 = llvm_or_u16((llvm_and_u16(_406, -241)), 32);
  _412__PHI_TEMPORARY = _411;   /* for PHI node */
  _413__PHI_TEMPORARY = 44100;   /* for PHI node */
  goto _462;

_462:
  _412 = _412__PHI_TEMPORARY;
  _413 = _413__PHI_TEMPORARY;
  __UNALIGNED_LOAD__(uint16_t, 1, _387) = _412;
  *_388 = _413;
  _414 = *_389;
  _415 = __UNALIGNED_LOAD__(uint16_t, 1, _387);
  if (((((llvm_and_u16(_414, 2048)) == ((uint16_t)0))&1))) {
    _421__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _463;
  } else {
    goto _464;
  }

_464:
  _416 = ((uint32_t)(uint16_t)(llvm_and_u16(_415, 15)));
  _417__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _465;

  do {     /* Syntactic loop '' to make GCC happy */
_465:
  _417 = _417__PHI_TEMPORARY;
  _418 = 1 << _417;
  _419 = llvm_add_u32(_417, 1);
  if (((((_416 & _418) == 0u)&1))) {
    goto _466;
  } else {
    goto _467;
  }

_466:
  if ((((((uint32_t)_419) < ((uint32_t)4u))&1))) {
    _417__PHI_TEMPORARY = _419;   /* for PHI node */
    goto _465;
  } else {
    goto _468;
  }

  } while (1); /* end of syntactic loop '' */
_467:
  _420 = llvm_and_u16((((uint16_t)_418)), 15);
  _421__PHI_TEMPORARY = _420;   /* for PHI node */
  goto _463;

_468:
  _423__PHI_TEMPORARY = _415;   /* for PHI node */
  goto _469;

_463:
  _421 = _421__PHI_TEMPORARY;
  _422 = llvm_or_u16((llvm_and_u16(_415, -16)), _421);
  __UNALIGNED_LOAD__(uint16_t, 1, _387) = _422;
  _423__PHI_TEMPORARY = _422;   /* for PHI node */
  goto _469;

_469:
  _423 = _423__PHI_TEMPORARY;
  __UNALIGNED_LOAD__(uint16_t, 1, _387) = (llvm_or_u16((llvm_and_u16(_423, 255)), 5376));
  *_390 = 2;
  _424 = user_stack_configs;
  _425 = *((&_424->field7));
  _426 = *_391;
  _427 = ((uint32_t)(uint8_t)_426);
  if ((((((uint8_t)_425) > ((uint8_t)_426))&1))) {
    goto _470;
  } else {
    goto _471;
  }

_471:
  *_391 = _425;
  _437__PHI_TEMPORARY = _386;   /* for PHI node */
  goto _472;

_470:
  _428 = l2cap_debug_enable;
  if ((((((int8_t)_428) < ((int8_t)((uint8_t)0)))&1))) {
    goto _473;
  } else {
    _437__PHI_TEMPORARY = _386;   /* for PHI node */
    goto _472;
  }

_473:
  _429 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), _427);
  _437__PHI_TEMPORARY = _386;   /* for PHI node */
  goto _472;

_456:
  _430 = ((struct l_struct_struct_OC__sbc_codec_cap*)_398);
  _431 = l2cap_debug_enable;
  if ((((((int8_t)_431) < ((int8_t)((uint8_t)0)))&1))) {
    goto _474;
  } else {
    _437__PHI_TEMPORARY = _430;   /* for PHI node */
    goto _472;
  }

_474:
  _432 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)((&_392[((int32_t)4)])))));
  _433 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_432, 4)), 15)))));
  _434 = l2cap_debug_enable;
  if ((((((int8_t)_434) < ((int8_t)((uint8_t)0)))&1))) {
    goto _475;
  } else {
    _437__PHI_TEMPORARY = _430;   /* for PHI node */
    goto _472;
  }

_475:
  _435 = *((&_392[((int32_t)7)]));
  _436 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint8_t)_435)));
  _437__PHI_TEMPORARY = _430;   /* for PHI node */
  goto _472;

_472:
  _437 = _437__PHI_TEMPORARY;
  *_383 = 0;
  _438 = __UNALIGNED_LOAD__(uint16_t, 1, ((&_437->field1)));
  _439 = *((&_437->field3));
   /*tail*/ sbc_param_init(_380, (llvm_and_u8((((uint8_t)_438)), 15)), (((uint8_t)(llvm_lshr_u16(_438, 12)))), (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_438, 10)))), 3)), (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_438, 8)))), 3)), (llvm_and_u8((((uint8_t)(llvm_lshr_u16(_438, 4)))), 15)), _439);
  _440__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _449;

_451:
  if ((((_396 == ((uint8_t)0))&1))) {
    _440__PHI_TEMPORARY = _393;   /* for PHI node */
    goto _449;
  } else {
    _444__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _453;
  }

_450:
  if ((((((uint8_t)_396) < ((uint8_t)((uint8_t)2)))&1))) {
    _444__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _453;
  } else {
    goto _476;
  }

_476:
  _399 = *_398;
  _400 = *((&_392[((int32_t)3)]));
  _401 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_400)), 8)), (((uint16_t)(uint8_t)_399)));
  _402 = l2cap_debug_enable;
  if ((((((int8_t)_402) < ((int8_t)((uint8_t)0)))&1))) {
    goto _477;
  } else {
    goto _478;
  }

_477:
  _403 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (((uint32_t)(uint16_t)_401)), (llvm_select_pu8((((_401 == ((uint16_t)1))&1)), ((&_OC_str_OC_6.array[((int32_t)0)])), (llvm_select_pu8((((_401 == ((uint16_t)2))&1)), ((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])))))));
  goto _478;

_478:
  *_382 = _401;
  _440__PHI_TEMPORARY = _393;   /* for PHI node */
  goto _449;

_449:
  _440 = _440__PHI_TEMPORARY;
  _441 = ((uint32_t)(uint8_t)_396);
  _442 = (&_398[((int32_t)_441)]);
  _443 = llvm_add_u32(_441, (_397 & 255));
  if ((((((uint32_t)((llvm_add_u32(_397, _441)) & 255)) < ((uint32_t)_381))&1))) {
    _392__PHI_TEMPORARY = _442;   /* for PHI node */
    _393__PHI_TEMPORARY = _440;   /* for PHI node */
    _394__PHI_TEMPORARY = _443;   /* for PHI node */
    goto _448;
  } else {
    _444__PHI_TEMPORARY = _440;   /* for PHI node */
    goto _453;
  }

  } while (1); /* end of syntactic loop '' */
_453:
  _444 = _444__PHI_TEMPORARY;
  _445__PHI_TEMPORARY = _444;   /* for PHI node */
  goto _446;

_446:
  _445 = _445__PHI_TEMPORARY;
  return _445;
}


static uint8_t a2dp_open_ind(struct l_struct_struct_OC__avdtp_local_sep* _479, struct l_struct_struct_OC__avdtp_stream* _480, uint8_t _481) {
  uint8_t* _482;
  uint8_t* _483;
  uint8_t _484;
  uint8_t* _485;
  uint8_t _486;
  uint8_t _487;

  _482 = *(((uint8_t**)((&_479->field1))));
  _483 = (&_482[((int32_t)-8)]);
  _484 = *((&_480->field0));
  if (((((llvm_and_u8(_484, 16)) == ((uint8_t)0))&1))) {
    goto _488;
  } else {
    goto _489;
  }

_489:
  _485 = (&_482[((int32_t)-2)]);
  _486 = *_485;
  if (((((llvm_and_u8(_486, 30)) == ((uint8_t)2))&1))) {
    goto _490;
  } else {
    goto _488;
  }

_490:
  *_485 = (llvm_and_u8(_486, -31));
  if ((((_481 == ((uint8_t)0))&1))) {
    goto _488;
  } else {
    goto _491;
  }

_491:
  _487 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), __a2dp_packet_handler, _483, 25, -1);
  goto _488;

_488:
  return 1;
}


static uint8_t a2dp_start_ind(struct l_struct_struct_OC__avdtp_local_sep* _492, struct l_struct_struct_OC__avdtp_stream* _493) {
  uint8_t* _494;
  uint8_t* _495;
  struct l_struct_struct_OC_a2dp_conn* _496;
  uint16_t* _497;
  uint16_t _498;
  struct l_struct_struct_OC_a2dp_event_handler* _499;
  struct l_struct_struct_OC_a2dp_event_handler* _499__PHI_TEMPORARY;
  uint32_t _500;
  uint16_t _501;
  l_fptr_6* _502;
  struct l_struct_struct_OC_a2dp_event_handler* _503;

  _494 = *(((uint8_t**)((&_492->field1))));
  _495 = (&_494[((int32_t)-8)]);
  _496 = ((struct l_struct_struct_OC_a2dp_conn*)_495);
  _497 = ((uint16_t*)((&_494[((int32_t)94)])));
  _498 = *_497;
  if (((((llvm_and_u16(_498, 12288)) == ((uint16_t)4096))&1))) {
    goto _504;
  } else {
    goto _505;
  }

_504:
   /*tail*/ __sink_media_close(_496);
  goto _505;

_505:
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _506;
  } else {
    goto _507;
  }

_506:
  _499__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _508;

  do {     /* Syntactic loop '' to make GCC happy */
_508:
  _499 = _499__PHI_TEMPORARY;
  _500 = *((&_499->field0));
  _501 = *_497;
  if ((((_500 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_501, 12)), 3)))))&1))) {
    goto _509;
  } else {
    goto _510;
  }

_509:
  _502 = *((&_499->field4));
  if ((((_502 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _510;
  } else {
    goto _511;
  }

_511:
   /*tail*/ _502(_496, _495);
  goto _510;

_510:
  _503 = (&_499[((int32_t)1)]);
  if ((((((uint32_t)_503) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _499__PHI_TEMPORARY = _503;   /* for PHI node */
    goto _508;
  } else {
    goto _512;
  }

  } while (1); /* end of syntactic loop '' */
_512:
  goto _507;

_507:
  return 1;
}


static uint8_t a2dp_suspend_ind(struct l_struct_struct_OC__avdtp_local_sep* _513, struct l_struct_struct_OC__avdtp_stream* _514) {
  uint8_t* _515;
  uint8_t* _516;
  struct l_struct_struct_OC_a2dp_conn* _517;
  uint16_t* _518;
  struct l_struct_struct_OC_a2dp_event_handler* _519;
  struct l_struct_struct_OC_a2dp_event_handler* _519__PHI_TEMPORARY;
  uint32_t _520;
  uint16_t _521;
  l_fptr_6* _522;
  struct l_struct_struct_OC_a2dp_event_handler* _523;

  _515 = *(((uint8_t**)((&_513->field1))));
  _516 = (&_515[((int32_t)-8)]);
  _517 = ((struct l_struct_struct_OC_a2dp_conn*)_516);
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _524;
  } else {
    goto _525;
  }

_524:
  _518 = ((uint16_t*)((&_515[((int32_t)94)])));
  _519__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _526;

  do {     /* Syntactic loop '' to make GCC happy */
_526:
  _519 = _519__PHI_TEMPORARY;
  _520 = *((&_519->field0));
  _521 = *_518;
  if ((((_520 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_521, 12)), 3)))))&1))) {
    goto _527;
  } else {
    goto _528;
  }

_527:
  _522 = *((&_519->field5));
  if ((((_522 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _528;
  } else {
    goto _529;
  }

_529:
   /*tail*/ _522(_517, _516);
  goto _528;

_528:
  _523 = (&_519[((int32_t)1)]);
  if ((((((uint32_t)_523) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _519__PHI_TEMPORARY = _523;   /* for PHI node */
    goto _526;
  } else {
    goto _530;
  }

  } while (1); /* end of syntactic loop '' */
_530:
  goto _525;

_525:
  return 1;
}


static uint8_t a2dp_close_ind(struct l_struct_struct_OC__avdtp_local_sep* _531, struct l_struct_struct_OC__avdtp_stream* _532, uint8_t* _533) {
  uint8_t* _534;
  uint8_t* _535;
  struct l_struct_struct_OC_a2dp_conn* _536;
  uint16_t* _537;
  struct l_struct_struct_OC_a2dp_event_handler* _538;
  struct l_struct_struct_OC_a2dp_event_handler* _538__PHI_TEMPORARY;
  uint32_t _539;
  uint16_t _540;
  l_fptr_6* _541;
  struct l_struct_struct_OC_a2dp_event_handler* _542;

  _534 = *(((uint8_t**)((&_531->field1))));
  _535 = (&_534[((int32_t)-8)]);
  _536 = ((struct l_struct_struct_OC_a2dp_conn*)_535);
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _543;
  } else {
    goto _544;
  }

_543:
  _537 = ((uint16_t*)((&_534[((int32_t)94)])));
  _538__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _545;

  do {     /* Syntactic loop '' to make GCC happy */
_545:
  _538 = _538__PHI_TEMPORARY;
  _539 = *((&_538->field0));
  _540 = *_537;
  if ((((_539 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_540, 12)), 3)))))&1))) {
    goto _546;
  } else {
    goto _547;
  }

_546:
  _541 = *((&_538->field5));
  if ((((_541 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _547;
  } else {
    goto _548;
  }

_548:
   /*tail*/ _541(_536, _535);
  goto _547;

_547:
  _542 = (&_538[((int32_t)1)]);
  if ((((((uint32_t)_542) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _538__PHI_TEMPORARY = _542;   /* for PHI node */
    goto _545;
  } else {
    goto _549;
  }

  } while (1); /* end of syntactic loop '' */
_549:
  goto _544;

_544:
  return 1;
}


static void a2dp_abort(struct l_struct_struct_OC__avdtp_local_sep* _550) {
  uint8_t* _551;
  uint8_t* _552;
  uint32_t _553;

  _551 = *(((uint8_t**)((&_550->field1))));
  _552 = (&_551[((int32_t)-8)]);
   /*tail*/ __media_close((((struct l_struct_struct_OC_a2dp_conn*)_552)));
  _553 =  /*tail*/ a2dp_send_cmd(_552, 51);
  reconnect_after_disconnect = 1;
}


static void __media_close(struct l_struct_struct_OC_a2dp_conn* _554) {
  uint16_t* _555;
  struct l_struct_struct_OC_a2dp_event_handler* _556;
  struct l_struct_struct_OC_a2dp_event_handler* _556__PHI_TEMPORARY;
  uint32_t _557;
  uint16_t _558;
  l_fptr_7* _559;
  uint32_t _560;
  struct l_struct_struct_OC_a2dp_event_handler* _561;

  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _562;
  } else {
    goto _563;
  }

_562:
  _555 = (&_554->field2.field1.field8);
  _556__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _564;

  do {     /* Syntactic loop '' to make GCC happy */
_564:
  _556 = _556__PHI_TEMPORARY;
  _557 = *((&_556->field0));
  _558 = *_555;
  if ((((_557 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_558, 12)), 3)))))&1))) {
    goto _565;
  } else {
    goto _566;
  }

_565:
  _559 = *((&_556->field1));
  if ((((_559 == ((l_fptr_7*)/*NULL*/0))&1))) {
    goto _566;
  } else {
    goto _567;
  }

_567:
  _560 =  /*tail*/ _559(_554, -1, 1);
  goto _566;

_566:
  _561 = (&_556[((int32_t)1)]);
  if ((((((uint32_t)_561) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _556__PHI_TEMPORARY = _561;   /* for PHI node */
    goto _564;
  } else {
    goto _568;
  }

  } while (1); /* end of syntactic loop '' */
_568:
  goto _563;

_563:
  return;
}


static uint8_t a2dp_getcap_ind_mpeg24(uint8_t _569, uint8_t* _570, uint8_t* _571) {
  uint64_t _572;
  uint8_t _573;

  *_570 = 1;
  *((&_570[((int32_t)1)])) = 0;
  *_571 = 2;
  *((&_570[((int32_t)2)])) = 7;
  *((&_570[((int32_t)3)])) = 8;
  _572 = __UNALIGNED_LOAD__(uint64_t, 1, ((uint64_t*)(&a2dp_mpeg_acc)));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_570[((int32_t)4)]))))) = _572;
  _573 = *_571;
  *_571 = (llvm_add_u8(_573, 10));
  return 1;
}


static uint8_t a2dp_set_configure_ind_mpeg24(struct l_struct_struct_OC__avdtp_local_sep* _574, uint8_t* _575, uint8_t _576, uint8_t* _577) {
  struct l_array_10_uint8_t _578;    /* Address-exposed local */
  uint8_t* _579;
  uint32_t _580;
  uint8_t* _581;
  uint8_t* _581__PHI_TEMPORARY;
  uint32_t _582;
  uint32_t _582__PHI_TEMPORARY;
  uint8_t _583;
  uint8_t _584;
  uint32_t _585;
  uint8_t* _586;
  uint8_t _587;
  uint8_t* _588;
  uint64_t _589;
  uint8_t* _590;
  uint8_t _591;
  uint8_t* _592;
  uint8_t _593;
  uint8_t _594;
  uint8_t _595;
  uint8_t _595__PHI_TEMPORARY;
  uint32_t _596;
  uint32_t _597;
  uint32_t _597__PHI_TEMPORARY;
  uint32_t _598;
  uint32_t _599;
  uint8_t _600;
  uint8_t _601;
  uint8_t _602;
  uint8_t* _603;
  uint64_t _604;
  uint8_t* _605;
  uint8_t* _605__PHI_TEMPORARY;
  uint8_t* _606;
  uint8_t* _607;
  uint8_t _608;
  uint8_t _609;
  uint8_t* _610;
  uint8_t _611;
  uint8_t _612;
  uint8_t _613;
  uint8_t _614;
  uint32_t _615;
  uint8_t* _616;
  uint32_t _617;
  uint8_t _618;
  uint8_t _618__PHI_TEMPORARY;

  _579 = (&_578.array[((int32_t)0)]);
  _580 = ((uint32_t)(uint8_t)_576);
  if ((((_576 == ((uint8_t)0))&1))) {
    _618__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _619;
  } else {
    goto _620;
  }

_620:
  _581__PHI_TEMPORARY = _575;   /* for PHI node */
  _582__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _621;

  do {     /* Syntactic loop '' to make GCC happy */
_621:
  _581 = _581__PHI_TEMPORARY;
  _582 = _582__PHI_TEMPORARY;
  _583 = *_581;
  _584 = *((&_581[((int32_t)1)]));
  _585 = llvm_add_u32(_582, 2);
  _586 = (&_581[((int32_t)2)]);
  switch (_583) {
  default:
    goto _622;
  case ((uint8_t)1):
    goto _623;
  case ((uint8_t)7):
    goto _624;
  }

_624:
  if ((((((uint32_t)_580) < ((uint32_t)(llvm_add_u32((((uint32_t)(uint8_t)_584)), 2))))&1))) {
    goto _625;
  } else {
    goto _626;
  }

_626:
  _587 = *((&_581[((int32_t)3)]));
  if ((((_587 == ((uint8_t)2))&1))) {
    goto _627;
  } else {
    goto _622;
  }

_623:
  if ((((_584 == ((uint8_t)0))&1))) {
    goto _622;
  } else {
    goto _625;
  }

_622:
  _615 = ((uint32_t)(uint8_t)_584);
  _616 = (&_586[((int32_t)_615)]);
  _617 = llvm_add_u32(_615, (_585 & 255));
  if ((((((uint32_t)((llvm_add_u32(_585, _615)) & 255)) < ((uint32_t)_580))&1))) {
    _581__PHI_TEMPORARY = _616;   /* for PHI node */
    _582__PHI_TEMPORARY = _617;   /* for PHI node */
    goto _621;
  } else {
    goto _625;
  }

  } while (1); /* end of syntactic loop '' */
_627:
  if ((((_577 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _628;
  } else {
    goto _629;
  }

_629:
  *_577 = 7;
  *((&_577[((int32_t)1)])) = 8;
  _588 = (&_577[((int32_t)2)]);
  _589 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_586)));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_588))) = _589;
  *((&_577[((int32_t)4)])) = 128u;
  _590 = (&_577[((int32_t)6)]);
  _591 = ((uint8_t)(llvm_lshr_u64(_589, 32)));
  _592 = (&_577[((int32_t)5)]);
  if ((((((int8_t)_591) < ((int8_t)((uint8_t)0)))&1))) {
    goto _630;
  } else {
    goto _631;
  }

_630:
  *_592 = 0;
  _593 = llvm_or_u8((llvm_and_u8(_591, 15)), 128u);
  _595__PHI_TEMPORARY = _593;   /* for PHI node */
  goto _632;

_631:
  *_592 = 1;
  _594 = llvm_and_u8(_591, 15);
  _595__PHI_TEMPORARY = _594;   /* for PHI node */
  goto _632;

_632:
  _595 = _595__PHI_TEMPORARY;
  *_590 = _595;
  _596 = ((uint32_t)(uint8_t)(llvm_and_u8((llvm_lshr_u8(_595, 2)), 3)));
  _597__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _633;

  do {     /* Syntactic loop '' to make GCC happy */
_633:
  _597 = _597__PHI_TEMPORARY;
  _598 = 1 << _597;
  _599 = llvm_add_u32(_597, 1);
  if (((((_596 & _598) == 0u)&1))) {
    goto _634;
  } else {
    goto _635;
  }

_634:
  if ((((((uint32_t)_599) < ((uint32_t)4u))&1))) {
    _597__PHI_TEMPORARY = _599;   /* for PHI node */
    goto _633;
  } else {
    goto _636;
  }

  } while (1); /* end of syntactic loop '' */
_635:
  *_590 = (llvm_or_u8((llvm_and_u8(_595, -13)), (llvm_and_u8((llvm_shl_u8((((uint8_t)_598)), 2)), 12))));
  goto _637;

_636:
  goto _637;

_637:
  _600 = *((&a2dp_mpeg_acc.field6));
  *((&_577[((int32_t)9)])) = _600;
  _601 = *((&a2dp_mpeg_acc.field4));
  *((&_577[((int32_t)7)])) = _601;
  _602 = *((&a2dp_mpeg_acc.field5));
  *((&_577[((int32_t)8)])) = _602;
  _605__PHI_TEMPORARY = _588;   /* for PHI node */
  goto _638;

_628:
  *_579 = 7;
  *((&_578.array[((int32_t)1)])) = 8;
  _603 = (&_578.array[((int32_t)2)]);
  _604 = __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_586)));
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)_603))) = _604;
  _605__PHI_TEMPORARY = _603;   /* for PHI node */
  goto _638;

_638:
  _605 = _605__PHI_TEMPORARY;
  _606 = *(((uint8_t**)((&_574->field1))));
  _607 = (&_605[((int32_t)4)]);
  _608 = *_607;
  *(((uint32_t*)((&_606[((int32_t)100)])))) = (llvm_select_u32((((((int8_t)_608) < ((int8_t)((uint8_t)0)))&1)), 48000, 44100));
  _609 = *_607;
  _610 = (&_606[((int32_t)116)]);
  _611 = *_610;
  *_610 = (llvm_or_u8((llvm_add_u8((llvm_and_u8((llvm_lshr_u8(_609, 2)), 1)), 1)), (llvm_and_u8(_611, -16))));
  _612 = *((&_605[((int32_t)5)]));
  _613 = *((&_605[((int32_t)6)]));
  _614 = *((&_605[((int32_t)7)]));
  *(((uint32_t*)((&_606[((int32_t)112)])))) = ((((((uint32_t)(uint8_t)(llvm_and_u8(_612, 127u)))) << 16) | ((((uint32_t)(uint8_t)_613)) << 8)) | (((uint32_t)(uint8_t)_614)));
  _618__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _619;

_625:
  _618__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _619;

_619:
  _618 = _618__PHI_TEMPORARY;
  return _618;
}


static uint32_t a2dp_suspend(void) {
  return 0;
}


static uint32_t a2dp_resume(void) {
  return 0;
}


static uint32_t a2dp_release(void) {
  struct l_struct_struct_OC_a2dp_stack_t* _639;
  struct l_struct_struct_OC_a2dp_conn* _640;
  struct l_struct_struct_OC_a2dp_conn* _641;
  struct l_struct_struct_OC_a2dp_conn* _642;
  struct l_struct_struct_OC_a2dp_conn* _642__PHI_TEMPORARY;
  uint8_t _643;
  struct l_struct_struct_OC_a2dp_conn* _644;
  uint32_t _645;
  uint32_t _646;
  uint32_t _646__PHI_TEMPORARY;

  _639 = a2dp_stack;
  if ((((_639 == ((struct l_struct_struct_OC_a2dp_stack_t*)/*NULL*/0))&1))) {
    _646__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _647;
  } else {
    goto _648;
  }

_648:
  _640 = (&_639->field0.array[((int32_t)1)]);
  _641 = (&_639->field0.array[((int32_t)0)]);
  _642__PHI_TEMPORARY = _641;   /* for PHI node */
  goto _649;

  do {     /* Syntactic loop '' to make GCC happy */
_649:
  _642 = _642__PHI_TEMPORARY;
  _643 = *((&_642->field1.field0));
  _644 = (&_642[((int32_t)1)]);
  if (((((llvm_and_u8(_643, 1)) == ((uint8_t)0))&1))) {
    goto _650;
  } else {
    goto _651;
  }

_650:
  if ((((((uint32_t)_644) < ((uint32_t)_640))&1))) {
    _642__PHI_TEMPORARY = _644;   /* for PHI node */
    goto _649;
  } else {
    goto _652;
  }

  } while (1); /* end of syntactic loop '' */
_652:
  _645 =  /*tail*/ puts(((&_OC_str_OC_9.array[((int32_t)0)])));
  a2dp_stack = ((struct l_struct_struct_OC_a2dp_stack_t*)/*NULL*/0);
  _646__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _647;

_651:
  _646__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _647;

_647:
  _646 = _646__PHI_TEMPORARY;
  return _646;
}


static void a2dp_channel_open_success(uint16_t _653, uint8_t* _654, uint8_t _655) {
  struct l_array_6_uint8_t _656;    /* Address-exposed local */
  uint8_t* _657;
  uint8_t _658;
  uint32_t _659;
  struct l_struct_struct_OC_a2dp_conn* _660;
  struct l_struct_struct_OC_a2dp_conn* _661;
  struct l_struct_struct_OC_a2dp_conn* _662;
  struct l_struct_struct_OC_a2dp_conn* _662__PHI_TEMPORARY;
  uint16_t* _663;
  uint16_t _664;
  uint8_t _665;
  uint32_t _666;
  uint16_t* _667;
  struct l_struct_struct_OC_user_interface_handler* _668;
  l_fptr_8* _669;
  uint16_t _670;
  uint8_t _671;
  uint16_t _672;
  struct l_struct_struct_OC_a2dp_event_handler* _673;
  struct l_struct_struct_OC_a2dp_event_handler* _673__PHI_TEMPORARY;
  uint32_t _674;
  uint16_t _675;
  l_fptr_7* _676;
  uint32_t _677;
  struct l_struct_struct_OC_a2dp_event_handler* _678;
  uint8_t _679;
  uint8_t* _680;
  uint8_t _681;
  uint32_t _682;
  uint16_t* _683;
  uint16_t _684;
  uint8_t _685;
  uint32_t _686;
  struct l_struct_struct_OC_user_interface_handler* _687;
  l_fptr_8* _688;
  uint16_t* _689;
  uint16_t _690;
  uint16_t _691;
  uint8_t _692;
  uint8_t _693;
  l_fptr_1* _694;
  struct l_struct_struct_OC_a2dp_event_handler* _695;
  struct l_struct_struct_OC_a2dp_event_handler* _695__PHI_TEMPORARY;
  uint32_t _696;
  uint16_t _697;
  l_fptr_7* _698;
  uint32_t _699;
  struct l_struct_struct_OC_a2dp_event_handler* _700;
  struct l_struct_struct_OC__stack_config* _701;
  uint32_t _702;
  uint16_t _703;
  uint16_t _704;

  _657 = (&_656.array[((int32_t)0)]);
  _658 = profile_debug_enable;
  if (((((llvm_and_u8(_658, 1)) == ((uint8_t)0))&1))) {
    goto _705;
  } else {
    goto _706;
  }

_706:
  _659 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _705;

_705:
  bt_flip_addr(_657, ((&_654[((int32_t)3)])));
  _660 = __a2dp_conn_for_addr(_657);
  if ((((_660 == ((struct l_struct_struct_OC_a2dp_conn*)/*NULL*/0))&1))) {
    goto _707;
  } else {
    _662__PHI_TEMPORARY = _660;   /* for PHI node */
    goto _708;
  }

_707:
  _661 = __create_a2dp_conn(_657);
  _662__PHI_TEMPORARY = _661;   /* for PHI node */
  goto _708;

_708:
  _662 = _662__PHI_TEMPORARY;
  _663 = (&_662->field2.field1.field3);
  _664 = *_663;
  if ((((_664 == ((uint16_t)0))&1))) {
    goto _709;
  } else {
    goto _710;
  }

_709:
  _665 = l2cap_debug_enable;
  if (((((llvm_and_u8(_665, 32)) == ((uint8_t)0))&1))) {
    goto _711;
  } else {
    goto _712;
  }

_712:
  _666 = puts(((&_OC_str_OC_13.array[((int32_t)0)])));
  goto _711;

_711:
  *_663 = _653;
  _667 = (&_662->field2.field1.field8);
  _668 = user_interface;
  _669 = *((&_668->field5));
  if ((((_669 == ((l_fptr_8*)/*NULL*/0))&1))) {
    goto _713;
  } else {
    goto _714;
  }

_714:
  _670 = *_667;
  _669(((&_662->field0.array[((int32_t)0)])), 1, (llvm_select_u32(((((llvm_and_u16(_670, 12288)) == ((uint16_t)0))&1)), 8192, 32)), _655);
  goto _713;

_713:
  _671 = *((&_662->field2.field1.field0.field0));
  if (((((llvm_and_u8(_671, 16)) == ((uint8_t)0))&1))) {
    goto _715;
  } else {
    goto _716;
  }

_715:
  _672 = *_667;
  if ((((((((llvm_and_u16(_672, 12288)) != ((uint16_t)0))&1)) | (((&a2dp_event_handler_begin)) >= ((&a2dp_event_handler_end))))&1))) {
    goto _717;
  } else {
    goto _718;
  }

_716:
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _718;
  } else {
    goto _717;
  }

_718:
  _673__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _719;

  do {     /* Syntactic loop '' to make GCC happy */
_719:
  _673 = _673__PHI_TEMPORARY;
  _674 = *((&_673->field0));
  _675 = *_667;
  if ((((_674 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_675, 12)), 3)))))&1))) {
    goto _720;
  } else {
    goto _721;
  }

_720:
  _676 = *((&_673->field1));
  if ((((_676 == ((l_fptr_7*)/*NULL*/0))&1))) {
    goto _721;
  } else {
    goto _722;
  }

_722:
  _677 = _676(_662, 1, _655);
  goto _721;

_721:
  _678 = (&_673[((int32_t)1)]);
  if ((((((uint32_t)_678) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _673__PHI_TEMPORARY = _678;   /* for PHI node */
    goto _719;
  } else {
    goto _723;
  }

  } while (1); /* end of syntactic loop '' */
_723:
  goto _717;

_717:
  reconnect_after_disconnect = 0;
  _679 = a2dp_source_bqb_support;
  if ((((_679 == ((uint8_t)0))&1))) {
    goto _724;
  } else {
    goto _725;
  }

_725:
  _680 = (&_662->field1.field0);
  _681 = *_680;
  *_680 = (llvm_or_u8((llvm_and_u8(_681, -31)), 24));
  _682 = user_send_cmd_prepare(135, 0, ((uint8_t*)/*NULL*/0));
  goto _724;

_710:
  _683 = (&_662->field3.field0.field0);
  _684 = *_683;
  if ((((_684 == ((uint16_t)0))&1))) {
    goto _726;
  } else {
    goto _724;
  }

_726:
  _685 = l2cap_debug_enable;
  if (((((llvm_and_u8(_685, 32)) == ((uint8_t)0))&1))) {
    goto _727;
  } else {
    goto _728;
  }

_728:
  _686 = puts(((&_OC_str_OC_14.array[((int32_t)0)])));
  goto _727;

_727:
  *_683 = _653;
  _687 = user_interface;
  _688 = *((&_687->field5));
  if ((((_688 == ((l_fptr_8*)/*NULL*/0))&1))) {
    goto _729;
  } else {
    goto _730;
  }

_730:
  _688(((&_662->field0.array[((int32_t)0)])), 1, 4, _655);
  goto _729;

_729:
  _689 = (&_662->field2.field1.field8);
  _690 = *_689;
  if (((((llvm_and_u16(_690, 12288)) == ((uint16_t)0))&1))) {
    goto _731;
  } else {
    goto _732;
  }

_731:
  _691 = *((&_662->field3.field0.field1));
  _692 = *((&_654[((int32_t)19)]));
  _693 = *((&_654[((int32_t)20)]));
  a2dp_media_packet_info(_662, (((uint8_t)_691)), (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_693)), 8)), (((uint16_t)(uint8_t)_692)))));
  goto _732;

_732:
  _694 = a2dp_status_update;
  if ((((_694 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _733;
  } else {
    goto _734;
  }

_734:
  _694(1);
  goto _733;

_733:
  if ((((&a2dp_event_handler_begin)) < ((&a2dp_event_handler_end)))) {
    goto _735;
  } else {
    goto _736;
  }

_735:
  _695__PHI_TEMPORARY = ((&a2dp_event_handler_begin));   /* for PHI node */
  goto _737;

  do {     /* Syntactic loop '' to make GCC happy */
_737:
  _695 = _695__PHI_TEMPORARY;
  _696 = *((&_695->field0));
  _697 = *_689;
  if ((((_696 == (((uint32_t)(uint16_t)(llvm_and_u16((llvm_lshr_u16(_697, 12)), 3)))))&1))) {
    goto _738;
  } else {
    goto _739;
  }

_738:
  _698 = *((&_695->field1));
  if ((((_698 == ((l_fptr_7*)/*NULL*/0))&1))) {
    goto _739;
  } else {
    goto _740;
  }

_740:
  _699 = _698(_662, 2, _655);
  goto _739;

_739:
  _700 = (&_695[((int32_t)1)]);
  if ((((((uint32_t)_700) < ((uint32_t)((&a2dp_event_handler_end))))&1))) {
    _695__PHI_TEMPORARY = _700;   /* for PHI node */
    goto _737;
  } else {
    goto _741;
  }

  } while (1); /* end of syntactic loop '' */
_741:
  goto _736;

_736:
  _701 = user_stack_configs;
  _702 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_701->field9)));
  if (((((_702 & 8388608) == 0u)&1))) {
    goto _724;
  } else {
    goto _742;
  }

_742:
  _703 = *_683;
  l2cap_disconnect_internal(_703, 19);
  _704 = *_663;
  l2cap_disconnect_internal(_704, 19);
  goto _724;

_724:
  return;
}


static void __close_channel(struct l_struct_struct_OC_a2dp_conn* _743, uint16_t _744) {
  struct l_array_6_uint8_t _745;    /* Address-exposed local */
  uint8_t* _746;
  uint8_t* _747;
  uint16_t* _748;
  uint16_t _749;
  uint16_t* _750;
  struct l_struct_struct_OC_user_interface_handler* _751;
  l_fptr_8* _752;
  uint16_t _753;
  uint16_t _754;
  uint16_t* _755;
  uint16_t _756;
  struct l_struct_struct_OC_user_interface_handler* _757;
  l_fptr_8* _758;
  l_fptr_1* _759;
  uint16_t _760;
  uint16_t _761;
  uint8_t* _762;
  uint8_t* _763;
  uint8_t* _764;
  uint8_t _765;
  uint32_t _766;

  _746 = (&_745.array[((int32_t)0)]);
  _747 = memset(_746, 0, 6);
  _748 = (&_743->field2.field1.field3);
  _749 = *_748;
  if ((((_749 == _744)&1))) {
    goto _767;
  } else {
    goto _768;
  }

_767:
  *_748 = 0;
  _750 = (&_743->field2.field1.field8);
  _751 = user_interface;
  _752 = *((&_751->field5));
  if ((((_752 == ((l_fptr_8*)/*NULL*/0))&1))) {
    goto _769;
  } else {
    goto _770;
  }

_770:
  _753 = *_750;
   /*tail*/ _752(((&_743->field0.array[((int32_t)0)])), 0, (llvm_select_u32(((((llvm_and_u16(_753, 12288)) == ((uint16_t)0))&1)), 8192, 32)), 1);
  goto _769;

_769:
  _754 = *_750;
  if (((((llvm_and_u16(_754, 12288)) == ((uint16_t)0))&1))) {
    goto _771;
  } else {
    goto _772;
  }

_771:
   /*tail*/ __media_close(_743);
  goto _772;

_768:
  _755 = (&_743->field3.field0.field0);
  _756 = *_755;
  if ((((_756 == _744)&1))) {
    goto _773;
  } else {
    goto _772;
  }

_773:
  *_755 = 0;
   /*tail*/ __media_close(_743);
  _757 = user_interface;
  _758 = *((&_757->field5));
  if ((((_758 == ((l_fptr_8*)/*NULL*/0))&1))) {
    goto _774;
  } else {
    goto _775;
  }

_775:
   /*tail*/ _758(((&_743->field0.array[((int32_t)0)])), 0, 4, 1);
  goto _774;

_774:
  _759 = a2dp_status_update;
  if ((((_759 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _772;
  } else {
    goto _776;
  }

_776:
   /*tail*/ _759(0);
  goto _772;

_772:
  _760 = *_748;
  if ((((_760 == ((uint16_t)0))&1))) {
    goto _777;
  } else {
    goto _778;
  }

_777:
  _761 = *((&_743->field3.field0.field0));
  if ((((_761 == ((uint16_t)0))&1))) {
    goto _779;
  } else {
    goto _778;
  }

_779:
  _762 = (&_743->field0.array[((int32_t)0)]);
  _763 = memcpy(_746, _762, 6);
  _764 = memset(_762, 0, 7);
  _765 = reconnect_after_disconnect;
  if ((((_765 == ((uint8_t)0))&1))) {
    goto _778;
  } else {
    goto _780;
  }

_780:
  reconnect_after_disconnect = 0;
  _766 = a2dp_send_cmd(_746, 50);
  goto _778;

_778:
  return;
}

