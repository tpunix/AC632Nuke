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
struct l_struct_struct_OC__stack_config;
struct l_struct_struct_OC___hid_sdp_info;
struct l_struct_struct_OC_sdp_context_filter_attributes;
struct l_struct_struct_OC_sdp_context_attributeID_search;
struct l_struct_struct_OC_sdp_context_append_attributes;
struct l_struct_struct_OC_sdp_context_get_filtered_size;
struct l_struct_struct_OC_sdp_context_attribute_by_id;
struct l_struct_struct_OC_sdp_context_set_attribute_for_id;
struct l_struct_struct_OC_sdp_context_contains_uuid128;
struct l_struct_struct_OC_sdp_context_match_pattern;

/* Function definitions */
typedef uint32_t l_fptr_1(uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef void l_fptr_4(void);

typedef uint8_t l_fptr_3(void);

typedef uint32_t l_fptr_2(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*);

typedef void l_fptr_5(uint8_t);


/* Types Definitions */
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_9_uint8_t_KC_ {
  uint8_t* array[9];
};
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
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_struct_struct_OC___hid_sdp_info {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  uint8_t field8;
  uint8_t field9;
  uint8_t field10;
  uint8_t field11;
  uint16_t field12;
  uint16_t field13;
  uint16_t field14;
  uint16_t field15;
  uint16_t field16;
  uint16_t field17;
  uint16_t field18;
  uint8_t* field19;
  uint8_t* field20;
  uint8_t* field21;
  uint8_t* field22;
  l_fptr_5* field23;
  uint8_t* field24;
  uint8_t field25;
};
struct l_array_57_uint8_t {
  uint8_t array[57];
};
struct l_array_95_uint8_t {
  uint8_t array[95];
};
struct l_array_72_uint8_t {
  uint8_t array[72];
};
struct l_array_79_uint8_t {
  uint8_t array[79];
};
struct l_array_70_uint8_t {
  uint8_t array[70];
};
struct l_array_67_uint8_t {
  uint8_t array[67];
};
struct l_array_77_uint8_t {
  uint8_t array[77];
};
struct l_array_68_uint8_t {
  uint8_t array[68];
};
struct l_array_96_uint8_t {
  uint8_t array[96];
};
struct l_array_112_uint8_t {
  uint8_t array[112];
};
struct l_array_271_uint8_t {
  uint8_t array[271];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_82_uint8_t {
  uint8_t array[82];
};
struct l_array_84_uint8_t {
  uint8_t array[84];
};
struct l_array_69_uint8_t {
  uint8_t array[69];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_56_uint8_t {
  uint8_t array[56];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_118_uint8_t {
  uint8_t array[118];
};
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_struct_struct_OC_sdp_context_filter_attributes {
  uint8_t* field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint8_t* field4;
  uint32_t field5;
};
struct l_struct_struct_OC_sdp_context_attributeID_search {
  uint32_t field0;
  uint16_t field1;
};
struct l_struct_struct_OC_sdp_context_append_attributes {
  uint8_t* field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint8_t* field4;
};
struct l_array_3_uint8_t {
  uint8_t array[3];
};
struct l_struct_struct_OC_sdp_context_get_filtered_size {
  uint8_t* field0;
  uint16_t field1;
};
struct l_struct_struct_OC_sdp_context_attribute_by_id {
  uint16_t field0;
  uint8_t* field1;
};
struct l_struct_struct_OC_sdp_context_set_attribute_for_id {
  uint16_t field0;
  uint32_t field1;
  uint8_t field2;
};
struct l_struct_struct_OC_sdp_context_contains_uuid128 {
  uint8_t* field0;
  uint32_t field1;
};
struct l_struct_struct_OC_sdp_context_match_pattern {
  uint8_t* field0;
  uint32_t field1;
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern uint8_t l2cap_debug_enable;
extern uint8_t btstack_emitter_support;
extern uint8_t emitter_hfp_hf_support;
extern uint8_t hid_profile_support;
extern uint8_t hid_conn_depend_on_dev_company;
extern uint32_t config_asser;

/* Function Declarations */
void sdp_normalize_uuid(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_32(uint8_t*, uint16_t, uint32_t);
uint32_t de_get_size_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t de_get_element_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t de_get_header_size(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t de_get_data_size(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t de_get_len(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t de_get_normalized_uuid(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void de_store_descriptor_with_len(uint8_t*, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void net_store_16(uint8_t*, uint16_t, uint16_t);
void de_create_sequence(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* de_push_sequence(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void de_pop_sequence(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void de_add_number(uint8_t*, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void de_add_data(uint8_t*, uint32_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void de_add_uuid128(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void sdp_add_attribute(uint8_t*, uint16_t, uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t sdp_attribute_list_constains_id(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void de_traverse_sequence(uint8_t*, l_fptr_1*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t sdp_traversal_attributeID_search(uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint16_t sdp_append_attributes_in_attributeIDList(uint8_t*, uint8_t*, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void sdp_attribute_list_traverse_sequence(uint8_t*, l_fptr_2*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t sdp_traversal_append_attributes(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
void sdp_callback_remote_type(uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint16_t sdp_decode_attributes_response(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t sdp_traversal_append_remote_attributes(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
void sdp_decode_response_info_output(uint16_t, uint16_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint16_t sdp_decode_p_attributes_response(uint8_t*, uint16_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint32_t sdp_filter_attributes_in_attributeIDList(uint8_t*, uint8_t*, uint16_t, uint16_t, uint16_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t sdp_traversal_filter_attributes(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t spd_get_filtered_size(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t sdp_traversal_get_filtered_size(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* sdp_get_attribute_value_for_attribute_id(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t sdp_traversal_attribute_by_id(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t sdp_set_attribute_value_for_attribute_id(uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t sdp_traversal_set_attribute_for_id(uint16_t, uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t sdp_record_contains_UUID128(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t sdp_traversal_contains_UUID128(uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t sdp_traversal_match_pattern(uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t sdp_record_matches_service_search_pattern(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_current_sdp_company_type(int, ...);
void de_dump_data_element(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t de_traversal_dump_data(uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t check_attributeIDList_type_is_right(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint8_t check_SearchPattern_type_is_right(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t sdp_create_diy_device_ID_service(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint16_t sdp_check_service_overflow(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint16_t sdp_create_diy_hid_service(uint8_t*, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t remote_dev_company_ioctrl(uint8_t*, uint8_t, uint8_t);
static uint32_t spd_append_range(struct l_struct_struct_OC_sdp_context_filter_attributes*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint32_t big_endian_read_16(uint8_t*, uint32_t);
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void p33_soft_reset(void);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_4_uint8_t _OC_str = { "NIL" };
static struct l_array_5_uint8_t _OC_str_OC_1 = { "UINT" };
static struct l_array_4_uint8_t _OC_str_OC_2 = { "INT" };
static struct l_array_5_uint8_t _OC_str_OC_3 = { "UUID" };
static struct l_array_7_uint8_t _OC_str_OC_4 = { "STRING" };
static struct l_array_5_uint8_t _OC_str_OC_5 = { "BOOL" };
static struct l_array_4_uint8_t _OC_str_OC_6 = { "DES" };
static struct l_array_4_uint8_t _OC_str_OC_7 = { "DEA" };
static struct l_array_4_uint8_t _OC_str_OC_8 = { "URL" };
struct l_array_9_uint8_t_KC_ sdp_type_names __HIDDEN__ = { { ((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_2.array[((int32_t)0)])), ((&_OC_str_OC_3.array[((int32_t)0)])), ((&_OC_str_OC_4.array[((int32_t)0)])), ((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_6.array[((int32_t)0)])), ((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])) } };
struct l_array_16_uint8_t sdp_bluetooth_base_uuid __HIDDEN__ = { "\x00\x00\x00\x00\x00\x00\x10\x00\x80\x00\x00\x80_\x9B\x34\xFB" };
static struct l_array_29_uint8_t _OC_str_OC_9 = { "<BT-log> :enter here %d %d\n\n" };
static struct l_array_7_uint8_t _OC_str_OC_12 = { "JL_HID" };
static struct l_array_8_uint8_t _OC_str_OC_13 = { "hid key" };
static struct l_array_6_uint8_t _OC_str_OC_14 = { "JIELI" };
struct l_struct_struct_OC___hid_sdp_info hid_sdp_info __ATTRIBUTE_WEAK__ __HIDDEN__ = { 1494, 10, 576, 128u, 33, 1, 1, 0, 1, 1, 1, 1, 256, 273, 256, 8000, 1033, 256, 0, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_12.array[((int32_t)0)])), ((&_OC_str_OC_13.array[((int32_t)0)])), ((&_OC_str_OC_14.array[((int32_t)0)])), ((l_fptr_5*)/*NULL*/0), ((uint8_t*)/*NULL*/0), 0 };
struct l_array_57_uint8_t sdp_pnp_service_data __HIDDEN__ = { "6\x00\x34\t\x00\x00\n\x00\x01\x00\n\t\x00\x01\x36\x00\x03\x19\x12\x00\t\x02\x00\t\x01\x03\t\x02\x01\t\x05\xD6\t\x02\x02\t\x00\n\t\x02\x03\t\x02@\t\x02\x04(\x01\t\x02\x05\t\x00\x01\x00" };
struct l_array_95_uint8_t sdp_pnp_service_data_for_hid __HIDDEN__ = { "6\x00Z\t\x00\x00\n\x00\x01\x00\n\t\x00\x01\x35\x03\x19\x12\x00\t\x00\x04\x35\r5\x06\x19\x01\x00\t\x00\x01\x35\x03\x19\x00\x01\t\x00\x05\x35\x03\x19\x10\x02\t\x00\t5\x08\x35\x06\x19\x12\x00\t\x01\x00\t\x02\x00\t\x01\x03\t\x02\x01\t\x05\xAC\t\x02\x02\t\x02,\t\x02\x03\t\x01\x1B\t\x02\x04(\x01\t\x02\x05\t\x00\x02\x00" };
struct l_array_72_uint8_t sdp_pnp_service_data2 __HIDDEN__ = { "6\x00\x43\t\x00\x00\n\x00\x01\x00\n\t\x00\x01\x36\x00\x03\x19\x12\x00\t\x00\x04\x36\x00\t6\x00\x06\x19\x01\x00\t\x00\x01\t\x02\x00\t\x01\x03\t\x02\x01\t\x05\xD6\t\x02\x02\t\x00\n\t\x02\x03\t\x02@\t\x02\x04(\x01\t\x02\x05\t\x00\x01\x00" };
struct l_array_79_uint8_t sdp_a2dp_service_data __HIDDEN__ = { "6\x00J\t\x00\x00\n\x00\x01\x00\x01\t\x00\x01\x36\x00\x03\x19\x11\v\t\x00\x04\x36\x00\x12\x36\x00\x06\x19\x01\x00\t\x00\x19\x36\x00\x06\x19\x00\x19\t\x01\x03\t\x00\t6\x00\t6\x00\x06\x19\x11\r\t\x01\x03\t\x03\x11\t\x00\x01\t\x01\x00%\aJL_A2DP\x00" };
struct l_array_70_uint8_t sdp_avctp_ct_service_data __HIDDEN__ = { "6\x00\x41\t\x00\x00\n\x00\x01\x00\x02\t\x00\x01\x36\x00\x06\x19\x11\x0E\x19\x11\x0F\t\x00\x04\x36\x00\x12\x36\x00\x06\x19\x01\x00\t\x00\x17\x36\x00\x06\x19\x00\x17\t\x01\x04\t\x00\t6\x00\t6\x00\x06\x19\x11\x0E\t\x01\x05\t\x03\x11\t\x00\x01\x00" };
struct l_array_67_uint8_t sdp_avctp_ta_service_data __HIDDEN__ = { "6\x00>\t\x00\x00\n\x00\x01\x00\x05\t\x00\x01\x36\x00\x03\x19\x11\x0C\t\x00\x04\x36\x00\x12\x36\x00\x06\x19\x01\x00\t\x00\x17\x36\x00\x06\x19\x00\x17\t\x01\x04\t\x00\t6\x00\t6\x00\x06\x19\x11\x0E\t\x01\x05\t\x03\x11\t\x00\x02\x00" };
struct l_array_77_uint8_t sdp_hfp_service_data __HIDDEN__ = { "6\x00H\t\x00\x00\n\x00\x01\x00\x03\t\x00\x01\x36\x00\x06\x19\x11\x1E\x19\x12\x03\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x04\t\x00\t6\x00\t6\x00\x06\x19\x11\x1E\t\x01\x08\t\x03\x11\t\x00?\t\x01\x00%\x06JL_HFP\x00" };
struct l_array_68_uint8_t sdp_spp_service_data __HIDDEN__ = { "6\x00?\t\x00\x00\n\x00\x01\x00\x04\t\x00\x01\x36\x00\x03\x19\x11\x01\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x01\t\x00\t6\x00\t6\x00\x06\x19\x11\x01\t\x01\x02\t\x01\x00%\x06JL_SPP\x00" };
struct l_array_70_uint8_t sdp_spp_update_service_data __HIDDEN__ = { "6\x00\x42\t\x00\x00\n\x00\x01\x00\v\t\x00\x01\x36\x00\x03\x19\x11\x01\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x08\t\x00\t6\x00\t6\x00\x06\x19\x11\x01\t\x01\x02\t\x01\x00%\tJL_SPP_UP" };
struct l_array_96_uint8_t sdp_dueros_ota_service_data __HIDDEN__ = { "6\x00[\t\x00\x00\n\x00\x01\x00\x0E\t\x00\x01\x36\x00\x11\x1C\x00\x00\xFD\xC3\x00\x00\x10\x00\x80\x00\x00\x80_\x9B\x34\xFB\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\n\t\x00\t6\x00\x17\x36\x00\x14\x1C\x00\x00\xFD\xC3\x00\x00\x10\x00\x80\x00\x00\x80_\x9B\x34\xFB\t\x01\x02\t\x01\x00%\x06JL_ota\x00" };
struct l_array_96_uint8_t sdp_dueros_spp_service_data __HIDDEN__ = { "6\x00[\t\x00\x00\n\x00\x01\x00\x04\t\x00\x01\x36\x00\x11\x1CQ\xDB\xA1\t[\xA9I\x81\x96\xB7j\xFE\x13 \x93\xDE\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x02\t\x00\t6\x00\x17\x36\x00\x14\x1CQ\xDB\xA1\t[\xA9I\x81\x96\xB7j\xFE\x13 \x93\xDE\t\x01\x02\t\x01\x00%\x06JL_SPP\x00" };
struct l_array_96_uint8_t sdp_tme_service_data __HIDDEN__ = { "6\x00[\t\x00\x00\n\x00\x01\x00\x04\t\x00\x01\x36\x00\x11\x1C\x00\x00\xFD\x90\x00\x00\x10\x00\x80\x00\x00\x80_\x9B\x34\xFB\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x02\t\x00\t6\x00\x17\x36\x00\x14\x1C\x00\x00\xFD\x90\x00\x00\x10\x00\x80\x00\x00\x80_\x9B\x34\xFB\t\x01\x00\t\x01\x00%\x06JL_SPP\x00" };
struct l_array_96_uint8_t sdp_weixin_spp_service_data __HIDDEN__ = { "6\x00[\t\x00\x00\n\x00\x01\x00\x04\t\x00\x01\x36\x00\x11\x1C\x8AH*\x08U\aB\xAC\xB6s\xA8\x8D\xF4\x8B?\xC7\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x02\t\x00\t6\x00\x17\x36\x00\x14\x1C\x8AH*\x08U\aB\xAC\xB6s\xA8\x8D\xF4\x8B?\xC7\t\x01\x00\t\x01\x00%\x06JL_SPP\x00" };
struct l_array_96_uint8_t sdp_gma_spp_service_data __HIDDEN__ = { "6\x00[\t\x00\x00\n\x00\x01\x00\x04\t\x00\x01\x36\x00\x11\x1C\xEB>\n\xF3W\xF4G\x89\xABU\x86P\x85\x80)j\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x02\t\x00\t6\x00\x17\x36\x00\x14\x1C\xEB>\n\xF3W\xF4G\x89\xABU\x86P\x85\x80)j\t\x01\x00\t\x01\x00%\x06JL_SPP\x00" };
struct l_array_112_uint8_t sdp_ama_spp_service_data __HIDDEN__ = { "6\x00\x64\t\x00\x00\n\x00\x01\x00\x04\t\x00\x01\x36\x00\x11\x1C\x93\x1C~\x8AT\x0F\x46\x86\xB7\x98\xE8\xDF\n*\xD9\xF7\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x02\t\x00\x05\x36\x00\x03\x19\x10\x02\t\x00\t6\x00\x17\x36\x00\x14\x1C\x93\x1C~\x8AT\x0F\x46\x86\xB7\x98\xE8\xDF\n*\xD9\xF7\t\x01\x00\t\x01\x00%\x06JL_SPP\x00\x00\x00\x00\x00\x00\x00\x00" };
struct l_array_271_uint8_t sdp_hid_service_data __HIDDEN__ = { "6\x01\n\t\x00\x00\n\x00\x01\x00\x06\t\x00\x01\x36\x00\x03\x19\x11$\t\x00\x04\x36\x00\x0F\x36\x00\x06\x19\x01\x00\t\x00\x11\x36\x00\x03\x19\x00\x11\t\x00\t6\x00\t6\x00\x06\x19\x11$\t\x01\x00\t\x00\r6\x00\x12\x36\x00\x0F\x36\x00\x06\x19\x01\x00\t\x00\x13\x36\x00\x03\x19\x00\x11\t\x01\x00%\x06JL_HID\t\x01\x01%\ahid key\t\x02\x01\t\x01\x11\t\x02\x02\x08@\t\x02\x03\x08!\t\x02\x04(\x01\t\x02\x05(\x01\t\x02\x06\x36\x00X6\x00U\x08\"%Q\x05\x0C\t\x01\xA1\x01\x85\x02u\x10\x95\x02\x15\x01&\x8C\x02\x19\x01*\x8C\x02\x81\x00\xC0\x05\x0C\t\x01\xA1\x01\x85\x03\x15\x00%\x01u\x01\x95\r\n#\x02\n!\x02\n\xB1\x01\t\xB8\t\xB6\t\xCD\t\xB5\t\xE2\t\xEA\t\xE9\t0\n\a\x03\n\x08\x03\x81\x02\x95\x01u\v\x81\x03\xC0\t\x02\a6\x00\t6\x00\x06\t\x04\t\t\x01\x00\t\x02\x08(\x00\t\x02\t(\x01\t\x02\n(\x01\t\x02\v\t\x01\x00\t\x02\r(\x01\t\x02\x0E(\x01\x00" };
struct l_array_54_uint8_t sdp_pbap_service_data __HIDDEN__ = { "6\x00\x31\t\x00\x00\n\x00\x01\x00\x08\t\x00\x01\x36\x00\x03\x19\x11.\t\x00\t6\x00\t6\x00\x06\x19\x11\x30\t\x01\x02\t\x01\x00%\x0CJL_Phonebook\x00" };
struct l_array_82_uint8_t sdp_a2dp_source_service_data __HIDDEN__ = { "6\x00N\t\x00\x00\n\x00\x01\x00\v\t\x00\x01\x36\x00\x03\x19\x11\n\t\x00\x04\x36\x00\x12\x36\x00\x06\x19\x01\x00\t\x00\x19\x36\x00\x06\x19\x00\x19\t\x01\x00\t\x00\t6\x00\t6\x00\x06\x19\x11\r\t\x01\x00\t\x03\x11\t\x00\x01\t\x01\x00%\vJL_A2DP_SRC" };
struct l_array_84_uint8_t sdp_hfp_ag_service_data __HIDDEN__ = { "6\x00P\t\x00\x00\n\x00\x01\x00\x0C\t\x00\x01\x36\x00\x06\x19\x11\x1F\x19\x12\x03\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\x06\t\x00\t6\x00\t6\x00\x06\x19\x11\x1E\t\x01\x06\t\x03\x01\x08\x01\t\x03\x11\t\x00/\t\x01\x00%\tJL_HFP_AG" };
struct l_array_69_uint8_t sdp_iap_service_data __HIDDEN__ = { "6\x00\x42\t\x00\x00\n\x00\x01\x00\r\t\x00\x01\x36\x00\x11\x1C\x00\x00\x00\x00\xDE\xCA\xFA\xDE\xDE\xCA\xDE\xAF\xDE\xCA\xCA\xFF\t\x00\x04\x36\x00\x0E\x36\x00\x03\x19\x01\x00\x36\x00\x05\x19\x00\x03\x08\t\t\x00\t6\x00\t6\x00\x06\x19\x11\x01\t\x01" };
static struct l_array_11_uint8_t _OC_str_OC_20 = { "Apple,Inc." };
static struct l_array_31_uint8_t _OC_str_OC_21 = { "<BT-log> :other company id %x\n" };
static struct l_array_56_uint8_t _OC_str_OC_22 = { "<BT-log> :service_buffer %d overflow!!!,need_size= %d\n\n" };
static struct l_array_17_uint8_t _OC_str_OC_23 = { "file:%s, line:%d" };
static struct l_array_118_uint8_t _OC_str_OC_24 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c" };
static struct l_array_36_uint8_t str = { "ASSERT-FAILD: 0 service_overflow!!!" };


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
static __forceinline uint16_t llvm_sub_u16(uint16_t a, uint16_t b) {
  uint16_t r = a - b;
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


/* Function Bodies */

void sdp_normalize_uuid(uint8_t* _1, uint32_t _2) {
  uint8_t* _3;

#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _3 = memcpy(_1, ((&sdp_bluetooth_base_uuid.array[((int32_t)0)])), 16);
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_32(_1, 0, _2);
}


uint32_t de_get_size_type(uint8_t* _4) {
  uint8_t _5;

#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _5 = *_4;
  return (((uint32_t)(uint8_t)(llvm_and_u8(_5, 7))));
}


uint32_t de_get_element_type(uint8_t* _6) {
  uint8_t _7;

#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _7 = *_6;
  return (llvm_lshr_u32((((uint32_t)(uint8_t)_7)), 3));
}


uint32_t de_get_header_size(uint8_t* _8) {
  uint8_t _9;
  uint8_t _10;
  uint32_t _11;
  uint32_t _12;
  uint32_t _12__PHI_TEMPORARY;

#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _9 = *_8;
  _10 = llvm_and_u8(_9, 7);
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint8_t)_10) < ((uint8_t)((uint8_t)5)))&1))) {
    _12__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _13;
  } else {
    goto _14;
  }

_14:
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _11 = llvm_add_u32((1 << (llvm_add_u32((((uint32_t)(uint8_t)_10)), -5))), 1);
  _12__PHI_TEMPORARY = _11;   /* for PHI node */
  goto _13;

_13:
  _12 = _12__PHI_TEMPORARY;
  return _12;
}


uint32_t de_get_data_size(uint8_t* _15) {
  uint8_t _16;
  uint8_t _17;
  uint32_t _18;
  uint8_t _19;
  uint8_t _20;
  uint32_t _21;
  uint8_t _22;
  uint8_t _23;
  uint8_t _24;
  uint8_t _25;
  uint32_t _26;
  uint32_t _27;
  uint32_t _27__PHI_TEMPORARY;

#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _16 = *_15;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 109 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 110 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  switch ((((((uint8_t)_16))&7))) {
  default:
    goto _28;
  case ((uint8_t)-3):
    goto _29;
  case ((uint8_t)-2):
    goto _30;
  case ((uint8_t)-1):
    goto _31;
  }

_29:
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _17 = *((&_15[((int32_t)1)]));
  _18 = ((uint32_t)(uint8_t)_17);
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _27__PHI_TEMPORARY = _18;   /* for PHI node */
  goto _32;

_30:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _19 = *((&_15[((int32_t)2)]));
  _20 = *((&_15[((int32_t)1)]));
  _21 = ((((uint32_t)(uint8_t)_20)) << 8) | (((uint32_t)(uint8_t)_19));
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _27__PHI_TEMPORARY = _21;   /* for PHI node */
  goto _32;

_31:
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _22 = *((&_15[((int32_t)4)]));
  _23 = *((&_15[((int32_t)3)]));
  _24 = *((&_15[((int32_t)2)]));
  _25 = *((&_15[((int32_t)1)]));
  _26 = ((((((uint32_t)(uint8_t)_23)) << 8) | (((uint32_t)(uint8_t)_22))) | ((((uint32_t)(uint8_t)_24)) << 16)) | ((((uint32_t)(uint8_t)_25)) << 24);
#line 107 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _27__PHI_TEMPORARY = _26;   /* for PHI node */
  goto _32;

_28:
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  return (llvm_select_u32((((((uint8_t)_16) < ((uint8_t)((uint8_t)8)))&1)), 0, (1 << (((uint32_t)(uint8_t)(llvm_and_u8(_16, 7)))))));
_32:
  _27 = _27__PHI_TEMPORARY;
  return _27;
}


uint32_t de_get_len(uint8_t* _33) {
  uint8_t _34;
  uint8_t _35;
  uint32_t _36;
  uint32_t _37;
  uint32_t _37__PHI_TEMPORARY;
  uint32_t _38;

#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _34 = *_33;
  _35 = llvm_and_u8(_34, 7);
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint8_t)_35) < ((uint8_t)((uint8_t)5)))&1))) {
    _37__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _39;
  } else {
    goto _40;
  }

_40:
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _36 = llvm_add_u32((1 << (llvm_add_u32((((uint32_t)(uint8_t)_35)), -5))), 1);
  _37__PHI_TEMPORARY = _36;   /* for PHI node */
  goto _39;

_39:
  _37 = _37__PHI_TEMPORARY;
#line 136 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _38 =  /*tail*/ de_get_data_size(_33);
  return (llvm_add_u32(_38, _37));
}


uint32_t de_get_normalized_uuid(uint8_t* _41, uint8_t* _42) {
  uint8_t _43;
  uint8_t _44;
  uint32_t _45;
  uint8_t _46;
  uint8_t _47;
  uint8_t _48;
  uint32_t _49;
  uint8_t* _50;
  uint32_t _51;
  uint32_t _51__PHI_TEMPORARY;
  uint32_t _52;
  uint32_t _52__PHI_TEMPORARY;
  uint8_t _53;
  uint8_t* _54;
  uint32_t _55;
  uint32_t _55__PHI_TEMPORARY;

#line 140 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _43 = *_42;
#line 145 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((llvm_and_u8(_43, -8)) == ((uint8_t)24))&1))) {
    goto _56;
  } else {
    _55__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _57;
  }

_56:
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  switch ((((((uint8_t)_43))&7))) {
  default:
    _55__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _57;
  case ((uint8_t)1):
    goto _58;
  case ((uint8_t)2):
    goto _59;
  case ((uint8_t)4u):
    goto _60;
  }

_58:
#line 151 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _44 = *((&_42[((int32_t)2)]));
  _45 = ((uint32_t)(uint8_t)_44);
  _51__PHI_TEMPORARY = 8;   /* for PHI node */
  _52__PHI_TEMPORARY = _45;   /* for PHI node */
  goto _61;

_59:
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _46 = *((&_42[((int32_t)4)]));
  _47 = *((&_42[((int32_t)3)]));
  _48 = *((&_42[((int32_t)2)]));
  _49 = (((((uint32_t)(uint8_t)_47)) << 8) | (((uint32_t)(uint8_t)_46))) | ((((uint32_t)(uint8_t)_48)) << 16);
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _51__PHI_TEMPORARY = 24;   /* for PHI node */
  _52__PHI_TEMPORARY = _49;   /* for PHI node */
  goto _61;

_60:
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _50 = memcpy(_41, ((&_42[((int32_t)1)])), 16);
  _55__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _57;

_61:
  _51 = _51__PHI_TEMPORARY;
  _52 = _52__PHI_TEMPORARY;
  _53 = *((&_42[((int32_t)1)]));
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _54 = memcpy(_41, ((&sdp_bluetooth_base_uuid.array[((int32_t)0)])), 16);
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_32(_41, 0, (((((uint32_t)(uint8_t)_53)) << _51) | _52));
  _55__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _57;

_57:
  _55 = _55__PHI_TEMPORARY;
  return _55;
}


void de_store_descriptor_with_len(uint8_t* _62, uint32_t _63, uint32_t _64, uint32_t _65) {
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_62 = (((uint8_t)((_63 << 3) | _64)));
  switch (_64) {
  default:
    goto _66;
  case 5u:
    goto _67;
  case 6u:
    goto _68;
  case 7u:
    goto _69;
  }

_67:
#line 177 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_62[((int32_t)1)])) = (((uint8_t)_65));
  goto _66;

_68:
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_62, 1, (((uint16_t)_65)));
  goto _66;

_69:
#line 183 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_32(_62, 1, _65);
  goto _66;

_66:
  return;
}


void de_create_sequence(uint8_t* _70) {
#line 193 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_70 = 54;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_70, 1, 0);
}


uint8_t* de_push_sequence(uint8_t* _71) {
  uint32_t _72;
  uint8_t* _73;

#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _72 =  /*tail*/ de_get_len(_71);
  ;
#line 202 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _73 = (&_71[((int32_t)_72)]);
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_73 = 54;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_73, 1, 0);
  return _73;
}


void de_pop_sequence(uint8_t* _74, uint8_t* _75) {
  uint32_t _76;
  uint8_t _77;
  uint8_t _78;

#line 207 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _76 =  /*tail*/ de_get_len(_75);
  ;
#line 210 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _77 = *((&_74[((int32_t)2)]));
  _78 = *((&_74[((int32_t)1)]));
  ;
#line 211 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_74, 1, (((uint16_t)(llvm_add_u32((((((uint32_t)(uint8_t)_78)) << 8) | (((uint32_t)(uint8_t)_77))), _76)))));
}


void de_add_number(uint8_t* _79, uint32_t _80, uint32_t _81, uint32_t _82) {
  uint8_t _83;
  uint8_t _84;
  uint32_t _85;
  uint32_t _86;
  uint32_t _86__PHI_TEMPORARY;

#line 215 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 217 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _83 = *((&_79[((int32_t)2)]));
  _84 = *((&_79[((int32_t)1)]));
  _85 = ((((uint32_t)(uint8_t)_84)) << 8) | (((uint32_t)(uint8_t)_83));
  ;
#line 218 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 219 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&((&_79[((int32_t)3)]))[((int32_t)_85)])) = (((uint8_t)((_80 << 3) | _81)));
  switch (_81) {
  default:
    _86__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _87;
  case 0u:
    goto _88;
  case 1u:
    goto _89;
  case 2u:
    goto _90;
  }

_88:
#line 222 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_80 == 0u)&1))) {
    _86__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _87;
  } else {
    goto _91;
  }

_91:
#line 223 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_79[((int32_t)(llvm_add_u32(_85, 4)))])) = (((uint8_t)_82));
#line 218 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _86__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _87;

_89:
#line 228 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_79, (((uint16_t)(llvm_add_u32(_85, 4)))), (((uint16_t)_82)));
#line 218 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _86__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _87;

_90:
#line 232 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_32(_79, (((uint16_t)(llvm_add_u32(_85, 4)))), _82);
#line 218 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _86__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _87;

_87:
  _86 = _86__PHI_TEMPORARY;
  ;
#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_79, 1, (((uint16_t)(llvm_add_u32(_86, _85)))));
}


void de_add_data(uint8_t* _92, uint32_t _93, uint16_t _94, uint8_t* _95) {
  uint8_t _96;
  uint8_t _97;
  uint32_t _98;
  uint32_t _99;
  uint8_t* _100;
  uint8_t* _101;
  uint8_t _102;
  uint32_t _103;
  uint32_t _103__PHI_TEMPORARY;
  uint32_t _104;
  uint8_t* _105;

#line 242 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _96 = *((&_92[((int32_t)2)]));
  _97 = *((&_92[((int32_t)1)]));
  _98 = ((((uint32_t)(uint8_t)_97)) << 8) | (((uint32_t)(uint8_t)_96));
  ;
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _99 = ((uint32_t)(uint16_t)_94);
  _100 = (&_92[((int32_t)3)]);
  _101 = (&_100[((int32_t)_98)]);
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _102 = llvm_shl_u8((((uint8_t)_93)), 3);
  if ((((((uint16_t)_94) > ((uint16_t)((uint16_t)255)))&1))) {
    goto _106;
  } else {
    goto _107;
  }

_106:
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_101 = (llvm_or_u8(_102, 6));
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_101, 1, _94);
  _103__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _108;

_107:
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_101 = (llvm_or_u8(_102, 5));
#line 177 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_101[((int32_t)1)])) = (((uint8_t)_94));
#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _103__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _108;

_108:
  _103 = _103__PHI_TEMPORARY;
  _104 = llvm_add_u32(_103, _98);
  ;
#line 254 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _105 = memcpy(((&_100[((int32_t)_104)])), _95, _99);
#line 255 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 256 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_92, 1, (((uint16_t)(llvm_add_u32(_104, _99)))));
}


void de_add_uuid128(uint8_t* _109, uint8_t* _110) {
  uint8_t _111;
  uint8_t _112;
  uint32_t _113;
  uint8_t* _114;

#line 259 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 261 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _111 = *((&_109[((int32_t)2)]));
  _112 = *((&_109[((int32_t)1)]));
  _113 = ((((uint32_t)(uint8_t)_112)) << 8) | (((uint32_t)(uint8_t)_111));
  ;
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&((&_109[((int32_t)3)]))[((int32_t)_113)])) = 28;
#line 263 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _114 = memcpy(((&((&_109[((int32_t)4)]))[((int32_t)_113)])), _110, 16);
#line 264 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_109, 1, (((uint16_t)(llvm_add_u32(_113, 17)))));
}


void sdp_add_attribute(uint8_t* _115, uint16_t _116, uint8_t _117) {
#line 267 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
}


uint32_t sdp_attribute_list_constains_id(uint8_t* _118, uint16_t _119) {
  struct l_struct_struct_OC_sdp_context_attributeID_search _120;    /* Address-exposed local */
  uint32_t* _121;
  uint32_t _122;

#line 365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 367 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 368 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _121 = (&_120.field0);
  *_121 = 0;
#line 369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_120.field1)) = _119;
#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_118, sdp_traversal_attributeID_search, (((uint8_t*)(&_120))));
#line 371 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _122 = *_121;
  return _122;
}


static void de_traverse_sequence(uint8_t* _123, l_fptr_1* _124, uint8_t* _125) {
  uint8_t _126;
  uint8_t _127;
  uint32_t _128;
  uint32_t _129;
  uint32_t _129__PHI_TEMPORARY;
  uint32_t _130;
  uint32_t _131;
  uint32_t _131__PHI_TEMPORARY;
  uint8_t* _132;
  uint8_t _133;
  uint32_t _134;
  uint32_t _135;
  uint32_t _136;

#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _126 = *_123;
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((llvm_and_u8(_126, -8)) == ((uint8_t)48))&1))) {
    goto _137;
  } else {
    goto _138;
  }

_137:
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _127 = llvm_and_u8(_126, 7);
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint8_t)_127) < ((uint8_t)((uint8_t)5)))&1))) {
    _129__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _139;
  } else {
    goto _140;
  }

_140:
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _128 = llvm_add_u32((1 << (llvm_add_u32((((uint32_t)(uint8_t)_127)), -5))), 1);
  _129__PHI_TEMPORARY = _128;   /* for PHI node */
  goto _139;

_139:
  _129 = _129__PHI_TEMPORARY;
#line 275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 283 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _130 =  /*tail*/ de_get_len(_123);
#line 276 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 284 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_129) < ((int32_t)_130))&1))) {
    goto _141;
  } else {
    goto _138;
  }

_141:
  _131__PHI_TEMPORARY = _129;   /* for PHI node */
  goto _142;

  do {     /* Syntactic loop '' to make GCC happy */
_142:
  _131 = _131__PHI_TEMPORARY;
#line 285 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _132 = (&_123[((int32_t)_131)]);
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _133 = *_132;
#line 285 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 286 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _134 =  /*tail*/ _124(_132, (llvm_lshr_u32((((uint32_t)(uint8_t)_133)), 3)), (((uint32_t)(uint8_t)(llvm_and_u8(_133, 7)))), _125);
  ;
#line 288 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((uint8_t)_134)) == ((uint8_t)0))&1))) {
    goto _143;
  } else {
    goto _144;
  }

_143:
#line 291 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _135 =  /*tail*/ de_get_len(_132);
  _136 = llvm_add_u32(_135, _131);
#line 275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 284 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_136) < ((int32_t)_130))&1))) {
    _131__PHI_TEMPORARY = _136;   /* for PHI node */
    goto _142;
  } else {
    goto _144;
  }

  } while (1); /* end of syntactic loop '' */
_144:
  goto _138;

_138:
  return;
}


static uint32_t sdp_traversal_attributeID_search(uint8_t* _145, uint32_t _146, uint32_t _147, uint8_t* _148) {
  uint8_t _149;
  uint8_t _150;
  uint16_t _151;
  uint8_t _152;
  uint8_t _153;
  uint16_t _154;
  uint32_t _155;
  uint8_t _156;
  uint8_t _157;
  uint32_t _158;
  uint32_t _158__PHI_TEMPORARY;

#line 340 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 343 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_146 == 1u)&1))) {
    goto _159;
  } else {
    _158__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _160;
  }

_159:
  switch (_147) {
  default:
    _158__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _160;
  case 1u:
    goto _161;
  case 2u:
    goto _162;
  }

_161:
#line 348 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _149 = *((&_145[((int32_t)2)]));
  _150 = *((&_145[((int32_t)1)]));
  _151 = *(((uint16_t*)((&_148[((int32_t)4)]))));
  if (((((((((uint32_t)(uint8_t)_150)) << 8) | (((uint32_t)(uint8_t)_149))) == (((uint32_t)(uint16_t)_151)))&1))) {
    goto _163;
  } else {
    _158__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _160;
  }

_163:
#line 349 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint32_t*)_148)) = 1;
  _158__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _160;

_162:
#line 354 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _152 = *((&_145[((int32_t)2)]));
  _153 = *((&_145[((int32_t)1)]));
  _154 = *(((uint16_t*)((&_148[((int32_t)4)]))));
  _155 = ((uint32_t)(uint16_t)_154);
  if ((((((uint32_t)(((((uint32_t)(uint8_t)_153)) << 8) | (((uint32_t)(uint8_t)_152)))) > ((uint32_t)_155))&1))) {
    _158__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _160;
  } else {
    goto _164;
  }

_164:
#line 355 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _156 = *((&_145[((int32_t)4)]));
  _157 = *((&_145[((int32_t)3)]));
  if ((((((uint32_t)_155) > ((uint32_t)(((((uint32_t)(uint8_t)_157)) << 8) | (((uint32_t)(uint8_t)_156)))))&1))) {
    _158__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _160;
  } else {
    goto _165;
  }

_165:
#line 356 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint32_t*)_148)) = 1;
  _158__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _160;

_160:
  _158 = _158__PHI_TEMPORARY;
  return _158;
}


uint16_t sdp_append_attributes_in_attributeIDList(uint8_t* _166, uint8_t* _167, uint16_t _168, uint16_t _169, uint8_t* _170) {
  struct l_struct_struct_OC_sdp_context_append_attributes _171;    /* Address-exposed local */
  uint16_t* _172;
  uint16_t _173;

#line 406 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 409 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_171.field0)) = _170;
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_171.field2)) = _169;
#line 411 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _172 = (&_171.field3);
  *_172 = 0;
#line 412 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_171.field1)) = _168;
#line 413 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_171.field4)) = _167;
#line 414 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  sdp_attribute_list_traverse_sequence(_166, sdp_traversal_append_attributes, (((uint8_t*)(&_171))));
#line 415 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _173 = *_172;
  return _173;
}


static void sdp_attribute_list_traverse_sequence(uint8_t* _174, l_fptr_2* _175, uint8_t* _176) {
  uint8_t _177;
  uint8_t _178;
  uint32_t _179;
  uint32_t _180;
  uint32_t _180__PHI_TEMPORARY;
  uint32_t _181;
  uint32_t _182;
  uint32_t _182__PHI_TEMPORARY;
  uint8_t _183;
  uint32_t _184;
  uint8_t _185;
  uint8_t _186;
  uint8_t* _187;
  uint8_t _188;
  uint32_t _189;
  uint32_t _190;
  uint32_t _191;

#line 297 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _177 = *_174;
#line 302 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((llvm_and_u8(_177, -8)) == ((uint8_t)48))&1))) {
    goto _192;
  } else {
    goto _193;
  }

_192:
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _178 = llvm_and_u8(_177, 7);
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint8_t)_178) < ((uint8_t)((uint8_t)5)))&1))) {
    _180__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _194;
  } else {
    goto _195;
  }

_195:
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _179 = llvm_add_u32((1 << (llvm_add_u32((((uint32_t)(uint8_t)_178)), -5))), 1);
  _180__PHI_TEMPORARY = _179;   /* for PHI node */
  goto _194;

_194:
  _180 = _180__PHI_TEMPORARY;
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 306 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _181 =  /*tail*/ de_get_len(_174);
#line 300 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 307 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_180) < ((int32_t)_181))&1))) {
    goto _196;
  } else {
    goto _193;
  }

_196:
  _182__PHI_TEMPORARY = _180;   /* for PHI node */
  goto _197;

  do {     /* Syntactic loop '' to make GCC happy */
_197:
  _182 = _182__PHI_TEMPORARY;
#line 312 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _183 = *((&_174[((int32_t)_182)]));
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 315 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_183 == ((uint8_t)9))&1))) {
    goto _198;
  } else {
    goto _199;
  }

_198:
#line 308 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 319 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _184 = llvm_add_u32(_182, 3);
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 320 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_184) < ((int32_t)_181))&1))) {
    goto _200;
  } else {
    goto _199;
  }

_200:
#line 318 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _185 = *((&_174[((int32_t)(llvm_add_u32(_182, 2)))]));
  _186 = *((&_174[((int32_t)(llvm_add_u32(_182, 1)))]));
#line 323 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _187 = (&_174[((int32_t)_184)]);
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _188 = *_187;
#line 310 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 311 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 325 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _189 =  /*tail*/ _175((llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_186)), 8)), (((uint16_t)(uint8_t)_185)))), _187, (llvm_lshr_u32((((uint32_t)(uint8_t)_188)), 3)), (((uint32_t)(uint8_t)(llvm_and_u8(_188, 7)))), _176);
#line 309 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 326 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((uint8_t)_189)) == ((uint8_t)0))&1))) {
    goto _201;
  } else {
    goto _199;
  }

_201:
#line 329 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _190 =  /*tail*/ de_get_len(_187);
  _191 = llvm_add_u32(_190, _184);
#line 299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 307 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_191) < ((int32_t)_181))&1))) {
    _182__PHI_TEMPORARY = _191;   /* for PHI node */
    goto _197;
  } else {
    goto _199;
  }

  } while (1); /* end of syntactic loop '' */
_199:
  goto _193;

_193:
  return;
}


static uint32_t sdp_traversal_append_attributes(uint16_t _202, uint8_t* _203, uint32_t _204, uint32_t _205, uint8_t* _206) {
  struct l_struct_struct_OC_sdp_context_attributeID_search _207;    /* Address-exposed local */
  uint8_t* _208;
  uint32_t* _209;
  uint32_t _210;
  uint8_t** _211;
  uint8_t* _212;
  uint8_t _213;
  uint8_t _214;
  uint32_t _215;
  uint32_t _216;
  uint16_t _217;
  uint8_t* _218;
  uint8_t* _219;
  uint8_t* _220;
  uint32_t _221;
  uint32_t _221__PHI_TEMPORARY;

#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _208 = *(((uint8_t**)((&_206[((int32_t)12)]))));
#line 365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 367 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 368 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _209 = (&_207.field0);
  *_209 = 0;
#line 369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_207.field1)) = _202;
#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_208, sdp_traversal_attributeID_search, (((uint8_t*)(&_207))));
#line 371 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _210 = *_209;
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_210 == 0u)&1))) {
    _221__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _222;
  } else {
    goto _223;
  }

_223:
#line 389 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _211 = ((uint8_t**)_206);
  _212 = *_211;
  _213 = *((&_212[((int32_t)2)]));
  _214 = *((&_212[((int32_t)1)]));
#line 390 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _215 = de_get_len(_203);
  ;
#line 391 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _216 = llvm_add_u32((((((uint32_t)(uint8_t)_214)) << 8) | (((uint32_t)(uint8_t)_213))), 3);
  _217 = *(((uint16_t*)((&_206[((int32_t)6)]))));
  if ((((((int32_t)(llvm_add_u32((llvm_add_u32(_215, 3)), _216))) > ((int32_t)(((uint32_t)(uint16_t)_217))))&1))) {
    _221__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _222;
  } else {
    goto _224;
  }

_224:
#line 393 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_add_number(_212, 1, 1, (((uint32_t)(uint16_t)_202)));
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _218 = *_211;
  _219 = memcpy(((&((&_218[((int32_t)3)]))[((int32_t)(_216 & 65535))])), _203, _215);
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _220 = *_211;
  net_store_16(_220, 1, (((uint16_t)(llvm_add_u32(_216, _215)))));
  _221__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _222;

_222:
  _221 = _221__PHI_TEMPORARY;
  return _221;
}


void sdp_callback_remote_type(uint8_t _225) {
#line 418 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
}


uint16_t sdp_decode_attributes_response(uint8_t* _226, uint8_t* _227) {
#line 441 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 443 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ sdp_attribute_list_traverse_sequence(_226, sdp_traversal_append_remote_attributes, _227);
  return 0;
}


static uint32_t sdp_traversal_append_remote_attributes(uint16_t _228, uint8_t* _229, uint32_t _230, uint32_t _231, uint8_t* _232) {
  uint8_t _233;
  uint8_t _234;
  uint32_t _235;
  uint8_t _236;
  uint32_t _237;
  uint8_t _238;
  uint32_t _239;
  uint8_t _240;

#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 428 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_228 == ((uint16_t)513))&1))) {
    goto _241;
  } else {
    goto _242;
  }

_241:
#line 429 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _233 = *((&_229[((int32_t)2)]));
  _234 = *((&_229[((int32_t)1)]));
  _235 = ((((uint32_t)(uint8_t)_234)) << 8) | (((uint32_t)(uint8_t)_233));
  _236 = l2cap_debug_enable;
  if ((((_235 == 76u)&1))) {
    goto _243;
  } else {
    goto _244;
  }

_243:
#line 430 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((llvm_and_u8(_236, 32)) == ((uint8_t)0))&1))) {
    goto _245;
  } else {
    goto _246;
  }

_246:
  _237 =  /*tail*/ puts(((&_OC_str_OC_20.array[((int32_t)0)])));
  goto _245;

_245:
#line 431 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _238 =  /*tail*/ remote_dev_company_ioctrl(_232, 1, 2);
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ sdp_callback_remote_type(2);
  goto _242;

_244:
#line 434 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int8_t)_236) < ((int8_t)((uint8_t)0)))&1))) {
    goto _247;
  } else {
    goto _248;
  }

_247:
  _239 =  /*tail*/ printf(((&_OC_str_OC_21.array[((int32_t)0)])), _235);
  goto _248;

_248:
#line 435 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _240 =  /*tail*/ remote_dev_company_ioctrl(_232, 1, 1);
#line 436 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ sdp_callback_remote_type(1);
  goto _242;

_242:
  return 0;
}


void sdp_decode_response_info_output(uint16_t _249, uint16_t _250, uint8_t* _251, uint32_t _252) {
#line 447 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
}


uint16_t sdp_decode_p_attributes_response(uint8_t* _253, uint16_t _254, uint16_t _255, uint8_t* _256) {
  uint8_t _257;
  uint32_t _258;
  struct l_struct_struct_OC__stack_config* _259;
  uint32_t _260;
  uint32_t _260__PHI_TEMPORARY;
  uint32_t _261;
  uint32_t _261__PHI_TEMPORARY;
  uint32_t _262;
  uint32_t _262__PHI_TEMPORARY;
  uint8_t _263;
  uint32_t _264;
  uint8_t _265;
  uint32_t _266;
  uint32_t _267;
  uint32_t _268;
  uint32_t _268__PHI_TEMPORARY;
  uint32_t _269;
  uint8_t _270;
  uint32_t _271;
  uint8_t _272;
  uint8_t _273;
  uint16_t _274;
  uint32_t _275;
  uint8_t* _276;
  uint32_t _277;
  uint32_t _277__PHI_TEMPORARY;
  uint32_t _278;
  uint32_t _278__PHI_TEMPORARY;
  uint8_t* _279;
  uint8_t _280;
  uint32_t _281;
  uint8_t _282;
  uint32_t _283;
  uint32_t _284;
  uint32_t _284__PHI_TEMPORARY;
  uint32_t _285;
  uint32_t _286;
  uint32_t _287;
  uint32_t _288;
  uint8_t _289;
  uint32_t _290;
  uint32_t _291;
  uint8_t _292;
  uint8_t _293;
  uint8_t _294;
  uint32_t _295;
  uint32_t _296;
  uint32_t _296__PHI_TEMPORARY;
  uint32_t _297;
  uint32_t _297__PHI_TEMPORARY;
  uint32_t _298;
  uint32_t _298__PHI_TEMPORARY;
  uint8_t _299;
  uint32_t _300;
  uint32_t _301;
  struct l_struct_struct_OC__stack_config* _302;
  uint16_t* _303;
  uint16_t _304;
  struct l_struct_struct_OC__stack_config* _305;
  uint16_t* _306;
  uint16_t _307;
  uint32_t _308;
  uint32_t _309;
  uint32_t _309__PHI_TEMPORARY;
  uint32_t _310;
  uint32_t _310__PHI_TEMPORARY;
  uint32_t _311;
  uint32_t _312;
  uint32_t _312__PHI_TEMPORARY;
  uint32_t _313;
  uint8_t _314;
  uint32_t _315;
  uint8_t _316;
  uint32_t _317;
  uint32_t _318;
  uint8_t _319;
  uint8_t _320;
  uint8_t _321;
  uint32_t _322;
  uint32_t _323;
  uint32_t _324;
  uint32_t _324__PHI_TEMPORARY;
  uint32_t _325;
  uint32_t _325__PHI_TEMPORARY;
  uint32_t _326;
  uint32_t _327;
  struct l_struct_struct_OC__stack_config* _328;
  uint16_t* _329;
  uint16_t _330;
  struct l_struct_struct_OC__stack_config* _331;
  uint16_t* _332;
  uint16_t _333;
  uint16_t _334;
  uint16_t _334__PHI_TEMPORARY;

#line 454 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 461 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _257 = *_253;
#line 464 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((llvm_and_u8(_257, -8)) == ((uint8_t)48))&1))) {
    goto _335;
  } else {
    _334__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _336;
  }

_335:
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 473 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _258 = ((uint32_t)(uint16_t)_254);
#line 457 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 474 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _259 = user_stack_configs;
  *((&_259->field5)) = 0;
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 461 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 476 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_254 == ((uint16_t)0))&1))) {
    goto _337;
  } else {
    goto _338;
  }

_338:
  _260__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _339;

  do {     /* Syntactic loop '' to make GCC happy */
_339:
  _260 = _260__PHI_TEMPORARY;
  _261 = _261__PHI_TEMPORARY;
  _262__PHI_TEMPORARY = _260;   /* for PHI node */
  goto _340;

  do {     /* Syntactic loop '' to make GCC happy */
_340:
  _262 = _262__PHI_TEMPORARY;
#line 483 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _263 = *((&_253[((int32_t)_262)]));
  _264 = llvm_lshr_u32((((uint32_t)(uint8_t)_263)), 3);
#line 483 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _265 = llvm_and_u8(_263, 7);
  _266 = ((uint32_t)(uint8_t)_265);
#line 484 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 485 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_264 == 6u)&1))) {
    goto _341;
  } else {
    goto _342;
  }

_341:
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint8_t)_265) < ((uint8_t)((uint8_t)5)))&1))) {
    _268__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _343;
  } else {
    goto _344;
  }

_344:
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _267 = llvm_add_u32((1 << (llvm_add_u32(_266, -5))), 1);
  _268__PHI_TEMPORARY = _267;   /* for PHI node */
  goto _343;

_343:
  _268 = _268__PHI_TEMPORARY;
#line 484 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 487 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _269 = llvm_add_u32(_268, _262);
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 488 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _270 = l2cap_debug_enable;
  if ((((((int8_t)_270) < ((int8_t)((uint8_t)0)))&1))) {
    goto _345;
  } else {
    goto _346;
  }

_345:
  _271 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])), _268, _269);
  goto _346;

_346:
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 461 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 476 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_269) < ((int32_t)_258))&1))) {
    _262__PHI_TEMPORARY = _269;   /* for PHI node */
    goto _340;
  } else {
    goto _347;
  }

  } while (1); /* end of syntactic loop '' */
_342:
#line 492 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_265 != ((uint8_t)1))&1)) | (((_264 != 1u)&1)))&1))) {
    goto _348;
  } else {
    goto _349;
  }

_349:
#line 495 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _272 = *((&_253[((int32_t)(llvm_add_u32(_262, 2)))]));
  _273 = *((&_253[((int32_t)(llvm_add_u32(_262, 1)))]));
  _274 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_273)), 8)), (((uint16_t)(uint8_t)_272)));
#line 477 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 496 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _275 = llvm_add_u32(_262, 3);
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 497 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_275) < ((int32_t)_258))&1))) {
    goto _350;
  } else {
    goto _348;
  }

_350:
#line 500 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _276 = (&_253[((int32_t)_275)]);
#line 501 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_274 == ((uint16_t)1))&1))) {
    goto _351;
  } else {
    _312__PHI_TEMPORARY = _261;   /* for PHI node */
    goto _352;
  }

_351:
  _277__PHI_TEMPORARY = _261;   /* for PHI node */
  _278__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _353;

  do {     /* Syntactic loop '' to make GCC happy */
_353:
  _277 = _277__PHI_TEMPORARY;
  _278 = _278__PHI_TEMPORARY;
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 505 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _279 = (&_276[((int32_t)_278)]);
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _280 = *_279;
  _281 = llvm_lshr_u32((((uint32_t)(uint8_t)_280)), 3);
#line 481 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _282 = llvm_and_u8(_280, 7);
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint8_t)_282) < ((uint8_t)((uint8_t)5)))&1))) {
    _284__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _354;
  } else {
    goto _355;
  }

_355:
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _283 = llvm_add_u32((1 << (llvm_add_u32((((uint32_t)(uint8_t)_282)), -5))), 1);
  _284__PHI_TEMPORARY = _283;   /* for PHI node */
  goto _354;

_354:
  _284 = _284__PHI_TEMPORARY;
#line 482 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 508 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((_281 | 1) == 7u)&1))) {
    goto _356;
  } else {
    goto _357;
  }

_357:
#line 512 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 515 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _286 =  /*tail*/ de_get_len(_279);
  if ((((_281 == 3u)&1))) {
    goto _358;
  } else {
    goto _359;
  }

_359:
#line 565 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _308 = llvm_add_u32((_286 & 65535), _278);
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _309__PHI_TEMPORARY = _277;   /* for PHI node */
  _310__PHI_TEMPORARY = _308;   /* for PHI node */
  goto _360;

_358:
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 518 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  switch ((((((uint8_t)_280))&7))) {
  default:
    goto _361;
  case ((uint8_t)1):
    goto _362;
  case ((uint8_t)2):
    goto _363;
  }

_363:
#line 522 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _291 = llvm_add_u32(_278, _275);
  _292 = *((&_253[((int32_t)(llvm_add_u32(_291, 4)))]));
  _293 = *((&_253[((int32_t)(llvm_add_u32(_291, 3)))]));
  _294 = *((&_253[((int32_t)(llvm_add_u32(_291, 2)))]));
  _295 = (((((uint32_t)(uint8_t)_293)) << 8) | (((uint32_t)(uint8_t)_292))) | ((((uint32_t)(uint8_t)_294)) << 16);
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _296__PHI_TEMPORARY = _291;   /* for PHI node */
  _297__PHI_TEMPORARY = 24;   /* for PHI node */
  _298__PHI_TEMPORARY = _295;   /* for PHI node */
  goto _364;

_362:
#line 519 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _288 = llvm_add_u32(_278, _275);
  _289 = *((&_253[((int32_t)(llvm_add_u32(_288, 2)))]));
  _290 = ((uint32_t)(uint8_t)_289);
  _296__PHI_TEMPORARY = _288;   /* for PHI node */
  _297__PHI_TEMPORARY = 8;   /* for PHI node */
  _298__PHI_TEMPORARY = _290;   /* for PHI node */
  goto _364;

_364:
  _296 = _296__PHI_TEMPORARY;
  _297 = _297__PHI_TEMPORARY;
  _298 = _298__PHI_TEMPORARY;
  _299 = *((&_253[((int32_t)(llvm_add_u32(_296, 1)))]));
  _300 = ((((uint32_t)(uint8_t)_299)) << _297) | _298;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 530 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _301 = llvm_add_u32((_286 & 65535), _278);
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  switch (_300) {
  default:
    _309__PHI_TEMPORARY = _300;   /* for PHI node */
    _310__PHI_TEMPORARY = _301;   /* for PHI node */
    goto _360;
  case 4388u:
    goto _365;
  case 4608u:
    goto _366;
  }

_366:
#line 539 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _305 = user_stack_configs;
  _306 = (&_305->field5);
  _307 = *_306;
  *_306 = (llvm_or_u16(_307, 4));
  _309__PHI_TEMPORARY = 4608;   /* for PHI node */
  _310__PHI_TEMPORARY = _301;   /* for PHI node */
  goto _360;

_365:
#line 536 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _302 = user_stack_configs;
  _303 = (&_302->field5);
  _304 = *_303;
  *_303 = (llvm_or_u16(_304, 8));
  _309__PHI_TEMPORARY = 4388;   /* for PHI node */
  _310__PHI_TEMPORARY = _301;   /* for PHI node */
  goto _360;

_361:
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 530 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _287 = llvm_add_u32((_286 & 65535), _278);
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _309__PHI_TEMPORARY = 0;   /* for PHI node */
  _310__PHI_TEMPORARY = _287;   /* for PHI node */
  goto _360;

_356:
#line 509 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _285 = llvm_add_u32(_284, _278);
#line 502 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _309__PHI_TEMPORARY = _277;   /* for PHI node */
  _310__PHI_TEMPORARY = _285;   /* for PHI node */
  goto _360;

_360:
  _309 = _309__PHI_TEMPORARY;
  _310 = _310__PHI_TEMPORARY;
  ;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 567 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _311 =  /*tail*/ de_get_len(_276);
  if ((((((int32_t)_310) < ((int32_t)_311))&1))) {
    _277__PHI_TEMPORARY = _309;   /* for PHI node */
    _278__PHI_TEMPORARY = _310;   /* for PHI node */
    goto _353;
  } else {
    goto _367;
  }

  } while (1); /* end of syntactic loop '' */
_367:
  _312__PHI_TEMPORARY = _309;   /* for PHI node */
  goto _352;

_352:
  _312 = _312__PHI_TEMPORARY;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  switch (_312) {
  default:
    goto _368;
  case 4608u:
    goto _369;
  case 4388u:
    goto _370;
  }

_370:
#line 585 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_274 == ((uint16_t)518))&1))) {
    goto _371;
  } else {
    goto _368;
  }

_371:
#line 587 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _314 = *_276;
#line 589 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _315 = llvm_select_u32((((_314 == ((uint8_t)54))&1)), 3, 2);
#line 593 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _316 = *((&_253[((int32_t)(llvm_add_u32(_315, _275)))]));
#line 594 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 596 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 593 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _317 = llvm_select_u32((((_316 == ((uint8_t)54))&1)), (llvm_add_u32(_315, 5)), (_315 | 4));
#line 599 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _318 = llvm_add_u32(_317, _275);
  _319 = *((&_253[((int32_t)_318)]));
#line 600 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _320 = *((&_253[((int32_t)(llvm_add_u32(_318, 1)))]));
  if (((((llvm_and_u8(_319, 7)) == ((uint8_t)6))&1))) {
    goto _372;
  } else {
    goto _373;
  }

_373:
#line 603 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _323 = ((uint32_t)(uint8_t)_320);
  _324__PHI_TEMPORARY = 2;   /* for PHI node */
  _325__PHI_TEMPORARY = _323;   /* for PHI node */
  goto _374;

_372:
#line 600 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _321 = *((&_253[((int32_t)(llvm_add_u32(_318, 2)))]));
  _322 = ((((uint32_t)(uint8_t)_320)) << 8) | (((uint32_t)(uint8_t)_321));
  _324__PHI_TEMPORARY = 3;   /* for PHI node */
  _325__PHI_TEMPORARY = _322;   /* for PHI node */
  goto _374;

_374:
  _324 = _324__PHI_TEMPORARY;
  _325 = _325__PHI_TEMPORARY;
#line 607 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ sdp_decode_response_info_output(4388, 518, ((&_276[((int32_t)(llvm_add_u32(_324, _317)))])), (_325 & 65535));
  goto _368;

_369:
  switch (_274) {
  default:
    goto _368;
  case ((uint16_t)513):
    goto _375;
  case ((uint16_t)514):
    goto _375;
  case ((uint16_t)515):
    goto _375;
  case ((uint16_t)517):
    goto _375;
  }

_375:
#line 578 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _313 =  /*tail*/ de_get_len(_276);
   /*tail*/ sdp_decode_response_info_output(4608, _274, _276, _313);
  goto _368;

_368:
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 461 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 641 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _326 =  /*tail*/ de_get_len(_276);
  _327 = llvm_add_u32(_326, _275);
#line 456 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 458 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 459 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 461 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 476 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((int32_t)_327) < ((int32_t)_258))&1))) {
    _260__PHI_TEMPORARY = _327;   /* for PHI node */
    _261__PHI_TEMPORARY = _312;   /* for PHI node */
    goto _339;
  } else {
    goto _348;
  }

  } while (1); /* end of syntactic loop '' */
_347:
  goto _337;

_348:
  goto _337;

_337:
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 461 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 644 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _328 = user_stack_configs;
  _329 = (&_328->field5);
  _330 = *_329;
  if (((((llvm_and_u16(_330, 16)) == ((uint16_t)0))&1))) {
    goto _376;
  } else {
    goto _377;
  }

_377:
#line 645 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_329 = (llvm_and_u16(_330, -2));
  goto _376;

_376:
#line 646 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_256 = 0;
#line 652 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _331 = user_stack_configs;
  _332 = (&_331->field5);
  _333 = *_332;
  if (((((llvm_and_u16(_333, 32)) == ((uint16_t)0))&1))) {
    _334__PHI_TEMPORARY = _254;   /* for PHI node */
    goto _336;
  } else {
    goto _378;
  }

_378:
#line 653 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_332 = (llvm_and_u16(_333, -3));
  _334__PHI_TEMPORARY = _254;   /* for PHI node */
  goto _336;

_336:
  _334 = _334__PHI_TEMPORARY;
  return _334;
}


uint32_t sdp_filter_attributes_in_attributeIDList(uint8_t* _379, uint8_t* _380, uint16_t _381, uint16_t _382, uint16_t* _383, uint8_t* _384) {
  struct l_struct_struct_OC_sdp_context_filter_attributes _385;    /* Address-exposed local */
  uint16_t* _386;
  uint32_t* _387;
  uint16_t _388;
  uint32_t _389;

#line 732 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
  ;
#line 735 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 736 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_385.field0)) = _384;
#line 737 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_385.field2)) = _382;
#line 738 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _386 = (&_385.field3);
  *_386 = 0;
#line 739 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_385.field1)) = _381;
#line 740 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_385.field4)) = _380;
#line 741 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _387 = (&_385.field5);
  *_387 = 1;
#line 743 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  sdp_attribute_list_traverse_sequence(_379, sdp_traversal_filter_attributes, (((uint8_t*)(&_385))));
#line 745 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _388 = *_386;
  *_383 = _388;
#line 746 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _389 = *_387;
  return _389;
}


static uint32_t sdp_traversal_filter_attributes(uint16_t _390, uint8_t* _391, uint32_t _392, uint32_t _393, uint8_t* _394) {
  struct l_struct_struct_OC_sdp_context_attributeID_search _395;    /* Address-exposed local */
  struct l_array_3_uint8_t _396;    /* Address-exposed local */
  struct l_struct_struct_OC_sdp_context_filter_attributes* _397;
  uint8_t* _398;
  uint32_t* _399;
  uint32_t _400;
  uint16_t* _401;
  uint16_t _402;
  uint16_t _403;
  uint8_t* _404;
  uint32_t _405;
  uint16_t _406;
  uint16_t _407;
  uint16_t _407__PHI_TEMPORARY;
  uint32_t _408;
  uint32_t _409;
  uint32_t _410;
  uint32_t _411;
  uint32_t _411__PHI_TEMPORARY;

#line 685 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 687 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _397 = ((struct l_struct_struct_OC_sdp_context_filter_attributes*)_394);
  ;
#line 689 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _398 = *(((uint8_t**)((&_394[((int32_t)12)]))));
#line 365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 367 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 368 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _399 = (&_395.field0);
  *_399 = 0;
#line 369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_395.field1)) = _390;
#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_398, sdp_traversal_attributeID_search, (((uint8_t*)(&_395))));
#line 371 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _400 = *_399;
#line 689 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_400 == 0u)&1))) {
    _411__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _412;
  } else {
    goto _413;
  }

_413:
#line 696 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _401 = ((uint16_t*)((&_394[((int32_t)4)])));
  _402 = *_401;
  if ((((((uint16_t)_402) > ((uint16_t)((uint16_t)2)))&1))) {
    goto _414;
  } else {
    goto _415;
  }

_414:
#line 697 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _403 = llvm_add_u16(_402, -3);
  *_401 = _403;
  _407__PHI_TEMPORARY = _403;   /* for PHI node */
  goto _416;

_415:
#line 699 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _404 = (&_396.array[((int32_t)0)]);
  ;
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_404 = 9;
#line 701 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  net_store_16(_404, 1, _390);
#line 704 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _405 = spd_append_range(_397, 3, _404);
  ;
#line 705 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_405 == 0u)&1))) {
    goto _417;
  } else {
    goto _418;
  }

_418:
  _406 = *_401;
  _407__PHI_TEMPORARY = _406;   /* for PHI node */
  goto _416;

_417:
#line 706 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint32_t*)((&_394[((int32_t)16)])))) = 0;
  _411__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _412;

_416:
#line 715 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _407 = _407__PHI_TEMPORARY;
#line 714 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _408 = de_get_len(_391);
  ;
#line 715 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _409 = ((uint32_t)(uint16_t)_407);
  if ((((((int32_t)_409) < ((int32_t)_408))&1))) {
    goto _419;
  } else {
    goto _420;
  }

_420:
#line 716 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_401 = (((uint16_t)(llvm_sub_u32(_409, _408))));
  _411__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _412;

_419:
#line 722 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _410 = spd_append_range(_397, (((uint16_t)_408)), _391);
  ;
#line 723 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_410 == 0u)&1))) {
    goto _421;
  } else {
    _411__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _412;
  }

_421:
#line 724 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint32_t*)((&_394[((int32_t)16)])))) = 0;
  _411__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _412;

_412:
  _411 = _411__PHI_TEMPORARY;
  return _411;
}


uint32_t spd_get_filtered_size(uint8_t* _422, uint8_t* _423) {
  struct l_struct_struct_OC_sdp_context_get_filtered_size _424;    /* Address-exposed local */
  uint16_t* _425;
  uint16_t _426;

#line 764 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 766 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 767 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _425 = (&_424.field1);
  *_425 = 0;
#line 768 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_424.field0)) = _423;
#line 769 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  sdp_attribute_list_traverse_sequence(_422, sdp_traversal_get_filtered_size, (((uint8_t*)(&_424))));
#line 770 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _426 = *_425;
  return (((uint32_t)(uint16_t)_426));
}


static uint32_t sdp_traversal_get_filtered_size(uint16_t _427, uint8_t* _428, uint32_t _429, uint32_t _430, uint8_t* _431) {
  struct l_struct_struct_OC_sdp_context_attributeID_search _432;    /* Address-exposed local */
  uint8_t* _433;
  uint32_t* _434;
  uint32_t _435;
  uint32_t _436;
  uint16_t* _437;
  uint16_t _438;

#line 755 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 758 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _433 = *(((uint8_t**)_431));
#line 365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 367 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 368 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _434 = (&_432.field0);
  *_434 = 0;
#line 369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_432.field1)) = _427;
#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_433, sdp_traversal_attributeID_search, (((uint8_t*)(&_432))));
#line 371 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _435 = *_434;
#line 758 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_435 == 0u)&1))) {
    goto _439;
  } else {
    goto _440;
  }

_440:
#line 759 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _436 = de_get_len(_428);
  _437 = ((uint16_t*)((&_431[((int32_t)4)])));
  _438 = *_437;
  *_437 = (((uint16_t)(llvm_add_u32((llvm_add_u32(_436, 3)), (((uint32_t)(uint16_t)_438))))));
  goto _439;

_439:
  return 0;
}


uint8_t* sdp_get_attribute_value_for_attribute_id(uint8_t* _441, uint16_t _442) {
  struct l_struct_struct_OC_sdp_context_attribute_by_id _443;    /* Address-exposed local */
  uint8_t** _444;
  uint8_t* _445;

#line 789 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 791 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 792 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _444 = (&_443.field1);
  *_444 = ((uint8_t*)/*NULL*/0);
#line 793 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_443.field0)) = _442;
#line 794 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  sdp_attribute_list_traverse_sequence(_441, sdp_traversal_attribute_by_id, (((uint8_t*)(&_443))));
#line 795 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _445 = *_444;
  return _445;
}


static uint32_t sdp_traversal_attribute_by_id(uint16_t _446, uint8_t* _447, uint32_t _448, uint32_t _449, uint8_t* _450) {
  uint16_t _451;
  uint32_t _452;
  uint32_t _452__PHI_TEMPORARY;

#line 779 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 782 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _451 = *(((uint16_t*)_450));
  if ((((_451 == _446)&1))) {
    goto _453;
  } else {
    _452__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _454;
  }

_453:
#line 783 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint8_t**)((&_450[((int32_t)4)])))) = _447;
  _452__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _454;

_454:
  _452 = _452__PHI_TEMPORARY;
  return _452;
}


uint8_t sdp_set_attribute_value_for_attribute_id(uint8_t* _455, uint16_t _456, uint32_t _457) {
  struct l_struct_struct_OC_sdp_context_set_attribute_for_id _458;    /* Address-exposed local */
  uint8_t* _459;
  uint8_t _460;

#line 829 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 831 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 832 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_458.field0)) = _456;
#line 833 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_458.field1)) = _457;
#line 834 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _459 = (&_458.field2);
  *_459 = 0;
#line 835 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  sdp_attribute_list_traverse_sequence(_455, sdp_traversal_set_attribute_for_id, (((uint8_t*)(&_458))));
#line 836 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _460 = *_459;
  return _460;
}


static uint32_t sdp_traversal_set_attribute_for_id(uint16_t _461, uint8_t* _462, uint32_t _463, uint32_t _464, uint8_t* _465) {
  uint16_t _466;
  uint32_t _467;
  uint32_t _468;
  uint32_t _469;
  uint32_t _470;
  uint32_t _470__PHI_TEMPORARY;

#line 804 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
  ;
#line 807 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _466 = *(((uint16_t*)_465));
  if ((((_466 == _461)&1))) {
    goto _471;
  } else {
    _470__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _472;
  }

_471:
#line 808 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_465[((int32_t)8)])) = 1;
  switch (_464) {
  default:
    _470__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _472;
  case 0u:
    goto _473;
  case 1u:
    goto _474;
  case 2u:
    goto _475;
  }

_473:
#line 811 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_463 == 0u)&1))) {
    _470__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _472;
  } else {
    goto _476;
  }

_476:
#line 812 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _467 = *(((uint32_t*)((&_465[((int32_t)4)]))));
  *((&_462[((int32_t)1)])) = (((uint8_t)_467));
  _470__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _472;

_474:
#line 816 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _468 = *(((uint32_t*)((&_465[((int32_t)4)]))));
   /*tail*/ net_store_16(_462, 1, (((uint16_t)_468)));
  _470__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _472;

_475:
#line 819 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _469 = *(((uint32_t*)((&_465[((int32_t)4)]))));
   /*tail*/ net_store_32(_462, 1, _469);
  _470__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _472;

_472:
  _470 = _470__PHI_TEMPORARY;
  return _470;
}


uint32_t sdp_record_contains_UUID128(uint8_t* _477, uint8_t* _478) {
  struct l_struct_struct_OC_sdp_context_contains_uuid128 _479;    /* Address-exposed local */
  uint32_t* _480;
  uint32_t _481;

#line 860 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 862 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 863 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_479.field0)) = _478;
#line 864 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _480 = (&_479.field1);
  *_480 = 0;
#line 865 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_477, sdp_traversal_contains_UUID128, (((uint8_t*)(&_479))));
#line 866 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _481 = *_480;
  return _481;
}


static uint32_t sdp_traversal_contains_UUID128(uint8_t* _482, uint32_t _483, uint32_t _484, uint8_t* _485) {
  struct l_struct_struct_OC_sdp_context_contains_uuid128 _486;    /* Address-exposed local */
  struct l_array_16_uint8_t _487;    /* Address-exposed local */
  uint8_t* _488;
  uint32_t _489;
  uint32_t _490;
  uint8_t* _491;
  uint32_t _492;
  bool _493;
  bool _493__PHI_TEMPORARY;
  uint32_t _494;
  uint32_t _495;
  uint32_t* _496;
  uint32_t _497;
  uint32_t _498;
  uint32_t _498__PHI_TEMPORARY;
  uint32_t _499;
  uint32_t _499__PHI_TEMPORARY;

#line 847 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 850 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _488 = (&_487.array[((int32_t)0)]);
  ;
  switch (_483) {
  default:
    goto _500;
  case 3u:
    goto _501;
  case 6u:
    goto _502;
  }

_500:
  _489 = *(((uint32_t*)((&_485[((int32_t)4)]))));
  _499__PHI_TEMPORARY = _489;   /* for PHI node */
  goto _503;

_501:
#line 852 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _490 = de_get_normalized_uuid(_488, _482);
#line 853 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((_490 & 255) == 0u)&1))) {
    _493__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _504;
  } else {
    goto _505;
  }

_505:
  _491 = *(((uint8_t**)_485));
  _492 = memcmp(_491, _488, 16);
  _493__PHI_TEMPORARY = (((_492 == 0u)&1));   /* for PHI node */
  goto _504;

_504:
  _493 = ((_493__PHI_TEMPORARY)&1);
  _494 = ((uint32_t)(bool)_493);
  _498__PHI_TEMPORARY = _494;   /* for PHI node */
  goto _506;

_502:
#line 856 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _495 = *(((uint32_t*)_485));
#line 860 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 862 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 863 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint32_t*)(&_486))) = _495;
#line 864 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _496 = (&_486.field1);
  *_496 = 0;
#line 865 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_482, sdp_traversal_contains_UUID128, (((uint8_t*)(&_486))));
#line 866 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _497 = *_496;
  _498__PHI_TEMPORARY = _497;   /* for PHI node */
  goto _506;

_506:
  _498 = _498__PHI_TEMPORARY;
  *(((uint32_t*)((&_485[((int32_t)4)])))) = _498;
  _499__PHI_TEMPORARY = _498;   /* for PHI node */
  goto _503;

_503:
#line 858 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _499 = _499__PHI_TEMPORARY;
  return _499;
}


uint32_t sdp_traversal_match_pattern(uint8_t* _507, uint32_t _508, uint32_t _509, uint8_t* _510) {
  struct l_struct_struct_OC_sdp_context_contains_uuid128 _511;    /* Address-exposed local */
  struct l_array_16_uint8_t _512;    /* Address-exposed local */
  uint8_t* _513;
  uint32_t _514;
  uint8_t* _515;
  uint32_t* _516;
  uint32_t _517;
  uint32_t _518;
  uint32_t _518__PHI_TEMPORARY;

#line 876 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 879 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _513 = (&_512.array[((int32_t)0)]);
  ;
#line 880 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _514 = de_get_normalized_uuid(_513, _507);
  ;
#line 881 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((uint8_t)_514)) == ((uint8_t)0))&1))) {
    goto _519;
  } else {
    goto _520;
  }

_520:
  _515 = *(((uint8_t**)_510));
#line 860 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 862 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 863 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_511.field0)) = _513;
#line 864 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _516 = (&_511.field1);
  *_516 = 0;
#line 865 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_515, sdp_traversal_contains_UUID128, (((uint8_t*)(&_511))));
#line 866 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _517 = *_516;
#line 881 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_517 == 0u)&1))) {
    goto _519;
  } else {
    _518__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _521;
  }

_519:
#line 882 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *(((uint32_t*)((&_510[((int32_t)4)])))) = 0;
  _518__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _521;

_521:
  _518 = _518__PHI_TEMPORARY;
  return _518;
}


uint32_t sdp_record_matches_service_search_pattern(uint8_t* _522, uint8_t* _523) {
  struct l_struct_struct_OC_sdp_context_match_pattern _524;    /* Address-exposed local */
  uint8_t* _525;
  uint8_t _526;
  struct l_struct_struct_OC__stack_config* _527;
  uint32_t _528;
  uint16_t _529;
  uint32_t _530;
  uint8_t _531;
  uint8_t _532;
  struct l_struct_struct_OC__stack_config* _533;
  uint32_t _534;
  uint8_t _535;
  uint8_t _536;
  uint32_t* _537;
  uint32_t _538;
  uint32_t _539;
  uint32_t _539__PHI_TEMPORARY;

#line 894 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 896 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _525 = ((uint8_t*)(&_524));
#line 897 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _526 = btstack_emitter_support;
  if ((((_526 == ((uint8_t)0))&1))) {
    goto _540;
  } else {
    goto _541;
  }

_541:
#line 898 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _527 = user_stack_configs;
  _528 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_527->field9)));
  if (((((_528 & 1048576) == 0u)&1))) {
    goto _542;
  } else {
    goto _543;
  }

_543:
#line 900 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _529 = *((&_527->field5));
  _530 = ((uint32_t)(uint16_t)_529);
#line 902 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 900 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_522 == ((&sdp_a2dp_source_service_data.array[((int32_t)0)])))&1)) & ((((_530 & 2) != 0u)&1)))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _545;
  }

_545:
#line 906 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 907 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 906 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_522 == ((&sdp_hfp_ag_service_data.array[((int32_t)0)])))&1)) & ((((_530 & 1) != 0u)&1)))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _546;
  }

_546:
#line 911 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((_530 & 32) == 0u)&1))) {
    goto _547;
  } else {
    goto _548;
  }

_547:
  _531 = emitter_hfp_hf_support;
#line 913 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 911 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_522 == ((&sdp_a2dp_service_data.array[((int32_t)0)])))&1)) & (((_531 != ((uint8_t)0))&1)))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _549;
  }

_548:
#line 913 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_522 == ((&sdp_a2dp_service_data.array[((int32_t)0)])))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _549;
  }

_549:
#line 917 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 918 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 917 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 922 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 917 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_522 == ((&sdp_hid_service_data.array[((int32_t)0)])))&1)) | ((((((_522 == ((&sdp_hfp_service_data.array[((int32_t)0)])))&1)) & ((((llvm_and_u16(_529, 16)) != ((uint16_t)0))&1)))&1)))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _540;
  }

_542:
#line 927 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 928 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_522 == ((&sdp_hfp_ag_service_data.array[((int32_t)0)])))&1)) | (((_522 == ((&sdp_a2dp_source_service_data.array[((int32_t)0)])))&1)))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _540;
  }

_540:
#line 934 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _532 = hid_profile_support;
  if ((((_532 == ((uint8_t)0))&1))) {
    goto _550;
  } else {
    goto _551;
  }

_551:
#line 936 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _533 = user_stack_configs;
  _534 = __UNALIGNED_LOAD__(uint32_t, 1, ((&_533->field9)));
  if (((((_534 & 64) == 0u)&1))) {
    goto _552;
  } else {
    goto _553;
  }

_553:
#line 937 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_522 == ((&sdp_hid_service_data.array[((int32_t)0)])))&1))) {
    goto _550;
  } else {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  }

_552:
#line 942 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _535 = hid_conn_depend_on_dev_company;
  if ((((_535 == ((uint8_t)1))&1))) {
    goto _554;
  } else {
    goto _550;
  }

_554:
#line 943 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _536 =  /*tail*/ ((l_fptr_3*)(void*)check_current_sdp_company_type)();
#line 944 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 943 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((((_522 == ((&sdp_hid_service_data.array[((int32_t)0)])))&1)) & (((_536 != ((uint8_t)2))&1)))&1))) {
    _539__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _544;
  } else {
    goto _550;
  }

_550:
#line 953 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *((&_524.field0)) = _522;
#line 954 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _537 = (&_524.field1);
  *_537 = 1;
#line 955 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_523, sdp_traversal_match_pattern, _525);
#line 956 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _538 = *_537;
  _539__PHI_TEMPORARY = _538;   /* for PHI node */
  goto _544;

_544:
  _539 = _539__PHI_TEMPORARY;
  return _539;
}


void de_dump_data_element(uint8_t* _555) {
  uint32_t _556;    /* Address-exposed local */
  uint8_t _557;
  uint32_t _558;

#line 1017 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1019 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _556 = 0;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _557 = *_555;
#line 1021 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 1022 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1023 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _558 = de_traversal_dump_data(_555, (llvm_lshr_u32((((uint32_t)(uint8_t)_557)), 3)), (((uint32_t)(uint8_t)(llvm_and_u8(_557, 7)))), (((uint8_t*)(&_556))));
}


static uint32_t de_traversal_dump_data(uint8_t* _559, uint32_t _560, uint32_t _561, uint8_t* _562) {
  uint32_t _563;    /* Address-exposed local */
  uint8_t* _564;
  uint32_t _565;

#line 961 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 963 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _564 = ((uint8_t*)(&_563));
  _565 = *(((uint32_t*)_562));
  ;
  _563 = _565;
#line 973 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((_560 == 6u)&1))) {
    goto _566;
  } else {
    goto _567;
  }

_566:
#line 963 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 975 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 963 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 975 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _563 = (llvm_add_u32(_565, 1));
#line 976 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  de_traverse_sequence(_559, de_traversal_dump_data, _564);
  goto _567;

_567:
  return 0;
}


uint8_t check_attributeIDList_type_is_right(uint8_t* _568, uint16_t _569) {
  uint8_t _570;
  uint16_t _571;
  uint16_t _572;
  uint16_t _572__PHI_TEMPORARY;
  uint8_t _573;
  uint16_t _574;
  uint8_t _575;
  uint16_t _576;
  uint8_t _577;
  uint8_t _577__PHI_TEMPORARY;
  uint8_t _578;
  uint8_t _578__PHI_TEMPORARY;

#line 1028 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 1030 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1031 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _570 = *_568;
  _571 = llvm_select_u16((((_570 == ((uint8_t)54))&1)), 3, 2);
#line 1030 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 1034 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint16_t)_571) < ((uint16_t)_569))&1))) {
    goto _579;
  } else {
    _578__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _580;
  }

_579:
  _572__PHI_TEMPORARY = _571;   /* for PHI node */
  goto _581;

  do {     /* Syntactic loop '' to make GCC happy */
_581:
  _572 = _572__PHI_TEMPORARY;
#line 1035 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _573 = *((&_568[((int32_t)(((uint32_t)(uint16_t)_572)))]));
  if ((((((uint8_t)(llvm_add_u8(_573, -9))) < ((uint8_t)((uint8_t)2)))&1))) {
    goto _582;
  } else {
    _577__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _583;
  }

_582:
#line 1039 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 1040 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 1030 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1039 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _574 = llvm_select_u16((((_573 == ((uint8_t)9))&1)), (llvm_add_u16(_572, 3)), _572);
#line 1030 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1042 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _575 = *((&_568[((int32_t)(((uint32_t)(uint16_t)_574)))]));
#line 1043 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 1030 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1042 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _576 = llvm_select_u16((((_575 == ((uint8_t)10))&1)), (llvm_add_u16(_574, 5)), _574);
#line 1030 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1034 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if ((((((uint16_t)_576) < ((uint16_t)_569))&1))) {
    _572__PHI_TEMPORARY = _576;   /* for PHI node */
    goto _581;
  } else {
    _577__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _583;
  }

  } while (1); /* end of syntactic loop '' */
_583:
  _577 = _577__PHI_TEMPORARY;
  _578__PHI_TEMPORARY = _577;   /* for PHI node */
  goto _580;

_580:
  _578 = _578__PHI_TEMPORARY;
  return _578;
}


uint8_t check_SearchPattern_type_is_right(uint8_t* _584, uint16_t _585) {
  uint8_t _586;
  uint32_t _587;
  uint32_t _588;
  uint32_t _589;
  uint32_t _589__PHI_TEMPORARY;
  uint8_t _590;
  uint32_t _591;
  uint32_t _591__PHI_TEMPORARY;
  uint32_t _592;
  uint8_t _593;
  uint8_t _593__PHI_TEMPORARY;
  uint8_t _594;
  uint8_t _594__PHI_TEMPORARY;

#line 1049 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 1051 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1054 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _586 = *_584;
#line 1051 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1054 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _587 = llvm_select_u32((((_586 == ((uint8_t)54))&1)), 3, 2);
#line 1058 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _588 = ((uint32_t)(uint16_t)_585);
  if ((((((uint32_t)_587) < ((uint32_t)_588))&1))) {
    goto _595;
  } else {
    _594__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _596;
  }

_595:
  _589__PHI_TEMPORARY = _587;   /* for PHI node */
  goto _597;

  do {     /* Syntactic loop '' to make GCC happy */
_597:
  _589 = _589__PHI_TEMPORARY;
#line 1060 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _590 = *((&_584[((int32_t)_589)]));
#line 1061 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  if (((((llvm_and_u8(_590, -8)) == ((uint8_t)24))&1))) {
    goto _598;
  } else {
    _593__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _599;
  }

_598:
#line 1066 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  switch ((((((uint8_t)_590))&7))) {
  default:
    _593__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _599;
  case ((uint8_t)1):
    goto _600;
  case ((uint8_t)2):
    _591__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _601;
  case ((uint8_t)3):
    goto _602;
  case ((uint8_t)4u):
    goto _603;
  }

_603:
  _591__PHI_TEMPORARY = 16;   /* for PHI node */
  goto _601;

_602:
  _591__PHI_TEMPORARY = 8;   /* for PHI node */
  goto _601;

_600:
  _591__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _601;

_601:
  _591 = _591__PHI_TEMPORARY;
#line 1083 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
#line 1058 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _592 = (llvm_add_u32((llvm_add_u32(_589, 1)), _591)) & 65535;
  if ((((((uint32_t)_592) < ((uint32_t)_588))&1))) {
    _589__PHI_TEMPORARY = _592;   /* for PHI node */
    goto _597;
  } else {
    _593__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _599;
  }

  } while (1); /* end of syntactic loop '' */
_599:
  _593 = _593__PHI_TEMPORARY;
  _594__PHI_TEMPORARY = _593;   /* for PHI node */
  goto _596;

_596:
  _594 = _594__PHI_TEMPORARY;
  return _594;
}


uint16_t sdp_create_diy_device_ID_service(uint8_t* _604, uint16_t _605) {
  uint8_t* _606;
  uint8_t* _607;
  uint8_t* _608;
  uint8_t* _609;
  uint8_t* _610;
  uint16_t _611;

#line 1139 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 1142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 193 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_604 = 54;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_604, 1, 0);
#line 1146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 0);
#line 1147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 2, 65546);
#line 1151 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 1);
#line 1152 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _606 =  /*tail*/ de_push_sequence(_604);
#line 1141 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_606, 3, 1, 4608);
#line 1156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_604, _606);
#line 1159 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 4);
#line 1160 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _607 =  /*tail*/ de_push_sequence(_604);
#line 1141 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _608 =  /*tail*/ de_push_sequence(_607);
#line 1162 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1165 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_608, 3, 1, 256);
#line 1166 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_608, 1, 1, 1);
#line 1168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_607, _608);
#line 1170 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_604, _607);
#line 1173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 9);
#line 1174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _609 =  /*tail*/ de_push_sequence(_604);
#line 1141 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1178 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _610 =  /*tail*/ de_push_sequence(_609);
#line 1177 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_610, 3, 1, 4608);
#line 1180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_610, 1, 1, 259);
#line 1181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_609, _610);
#line 1184 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_604, _609);
#line 1186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 512);
#line 1187 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 259);
#line 1191 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 513);
#line 1192 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 1494);
#line 1195 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 514);
#line 1196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 10);
#line 1199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 515);
#line 1200 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 576);
#line 1207 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 516);
#line 1208 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 5, 0, 1);
#line 1212 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 517);
#line 1213 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_604, 1, 1, 1);
#line 1224 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _611 =  /*tail*/ sdp_check_service_overflow(_604, _605);
  return _611;
}


static uint16_t sdp_check_service_overflow(uint8_t* _612, uint16_t _613) {
  uint8_t _614;
  uint32_t _615;
  uint16_t _616;
  uint8_t _617;
  uint16_t _618;
  uint16_t _619;
  uint16_t _619__PHI_TEMPORARY;
  uint32_t _620;
  uint32_t _621;
  uint8_t _622;
  uint32_t _623;
  uint32_t _624;
  uint32_t _625;
  uint32_t _626;

#line 1119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
#line 1124 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _614 = *_612;
  if ((((_614 == ((uint8_t)54))&1))) {
    goto _627;
  } else {
    goto _628;
  }

_627:
#line 1125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _615 =  /*tail*/ big_endian_read_16(_612, 1);
  _616 = ((uint16_t)(llvm_add_u32(_615, 3)));
#line 1121 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _619__PHI_TEMPORARY = _616;   /* for PHI node */
  goto _629;

_628:
#line 1127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _617 = *((&_612[((int32_t)1)]));
  _618 = ((uint16_t)(uint8_t)_617);
#line 1121 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  _619__PHI_TEMPORARY = _618;   /* for PHI node */
  goto _629;

_629:
  _619 = _619__PHI_TEMPORARY;
  ;
#line 1130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _620 = ((uint32_t)(uint16_t)_619);
  _621 = ((uint32_t)(uint16_t)_613);
  if ((((((uint16_t)_619) > ((uint16_t)_613))&1))) {
    goto _630;
  } else {
    goto _631;
  }

_630:
#line 1131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _622 = l2cap_debug_enable;
  if ((((((int8_t)_622) < ((int8_t)((uint8_t)0)))&1))) {
    goto _632;
  } else {
    goto _633;
  }

_632:
  _623 =  /*tail*/ printf(((&_OC_str_OC_22.array[((int32_t)0)])), _621, _620);
  goto _633;

_633:
#line 1132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _624 = config_asser;
  if ((((_624 == 0u)&1))) {
    goto _634;
  } else {
    goto _635;
  }

_635:
  _625 =  /*tail*/ printf(((&_OC_str_OC_23.array[((int32_t)0)])), ((&_OC_str_OC_24.array[((int32_t)0)])), 1132);
  _626 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_4*)(void*)cpu_assert_debug)();
  goto _631;

_634:
   /*tail*/ cpu_reset();
  goto _631;

_631:
  return _619;
}


uint16_t sdp_create_diy_hid_service(uint8_t* _636, uint16_t _637, uint8_t* _638, uint16_t _639) {
  uint8_t* _640;
  uint8_t* _641;
  uint8_t* _642;
  uint8_t* _643;
  uint8_t* _644;
  uint8_t* _645;
  uint8_t* _646;
  uint8_t* _647;
  uint8_t* _648;
  uint8_t* _649;
  uint8_t* _650;
  uint8_t* _651;
  uint8_t* _652;
  uint8_t* _653;
  uint16_t _654;

#line 1228 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 1231 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 193 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
  ;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_636 = 54;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ net_store_16(_636, 1, 0);
#line 1236 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 0);
#line 1237 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 2, 65542);
#line 1241 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 1);
#line 1242 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _640 =  /*tail*/ de_push_sequence(_636);
#line 1230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_640, 3, 1, 4388);
#line 1246 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_636, _640);
#line 1250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 4);
#line 1251 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _641 =  /*tail*/ de_push_sequence(_636);
#line 1230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1254 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _642 =  /*tail*/ de_push_sequence(_641);
#line 1253 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1256 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_642, 3, 1, 256);
#line 1257 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_642, 1, 1, 17);
#line 1259 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_641, _642);
#line 1261 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _643 =  /*tail*/ de_push_sequence(_641);
#line 1253 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1263 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_643, 3, 1, 17);
#line 1265 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_641, _643);
#line 1267 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_636, _641);
#line 1271 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 9);
#line 1272 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _644 =  /*tail*/ de_push_sequence(_636);
#line 1230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1276 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _645 =  /*tail*/ de_push_sequence(_644);
#line 1275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_645, 3, 1, 4388);
#line 1278 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_645, 1, 1, 256);
#line 1279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_644, _645);
#line 1282 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_636, _644);
#line 1285 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 13);
#line 1286 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _646 =  /*tail*/ de_push_sequence(_636);
#line 1230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1290 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _647 =  /*tail*/ de_push_sequence(_646);
#line 1288 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1293 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _648 =  /*tail*/ de_push_sequence(_647);
#line 1289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1294 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_648, 3, 1, 256);
#line 1295 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_648, 1, 1, 19);
#line 1296 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_647, _648);
#line 1298 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _649 =  /*tail*/ de_push_sequence(_647);
#line 1289 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1299 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_649, 3, 1, 17);
#line 1300 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_647, _649);
#line 1302 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_646, _647);
#line 1304 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_636, _646);
#line 1308 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 256);
#line 1310 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_data(_636, 4, 6, ((&_OC_str_OC_12.array[((int32_t)0)])));
#line 1314 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 257);
#line 1315 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_data(_636, 4, 7, ((&_OC_str_OC_13.array[((int32_t)0)])));
#line 1318 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 258);
#line 1319 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_data(_636, 4, 5, ((&_OC_str_OC_14.array[((int32_t)0)])));
#line 1322 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 513);
#line 1323 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 273);
#line 1326 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 514);
#line 1327 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 0, 128);
#line 1330 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 515);
#line 1331 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 0, 33);
#line 1334 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 516);
#line 1335 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 1);
#line 1338 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 517);
#line 1339 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 1);
#line 1343 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 518);
#line 1344 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _650 =  /*tail*/ de_push_sequence(_636);
#line 1230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1347 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _651 =  /*tail*/ de_push_sequence(_650);
#line 1346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1349 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_651, 1, 0, 34);
#line 1350 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_data(_651, 4, _639, _638);
#line 1352 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_650, _651);
#line 1354 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_636, _650);
#line 1358 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 519);
#line 1359 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _652 =  /*tail*/ de_push_sequence(_636);
#line 1230 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1362 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _653 =  /*tail*/ de_push_sequence(_652);
#line 1361 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 1364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_653, 1, 1, 1033);
#line 1365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_653, 1, 1, 256);
#line 1367 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_652, _653);
#line 1369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_pop_sequence(_636, _652);
#line 1372 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 520);
#line 1373 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 0);
#line 1376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 521);
#line 1377 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 1);
#line 1380 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 522);
#line 1381 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 1);
#line 1384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 523);
#line 1385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 256);
#line 1388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 524);
#line 1389 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 8000);
#line 1392 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 525);
#line 1393 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 1);
#line 1395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 1, 1, 526);
#line 1396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
   /*tail*/ de_add_number(_636, 5, 0, 1);
#line 1410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _654 =  /*tail*/ sdp_check_service_overflow(_636, _637);
  return _654;
}


static uint32_t spd_append_range(struct l_struct_struct_OC_sdp_context_filter_attributes* _655, uint16_t _656, uint8_t* _657) {
  uint16_t* _658;
  uint16_t _659;
  uint16_t _660;
  uint16_t* _661;
  uint16_t _662;
  uint16_t _663;
  uint8_t** _664;
  uint8_t* _665;
  uint32_t _666;
  uint8_t* _667;
  uint16_t* _668;
  uint16_t _669;
  uint8_t* _670;
  uint16_t _671;

#line 669 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
  ;
  ;
#line 671 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 672 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _658 = (&_655->field1);
  _659 = *_658;
  _660 = llvm_sub_u16(_656, _659);
  ;
#line 673 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _661 = (&_655->field2);
  _662 = *_661;
#line 672 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 671 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 673 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _663 = llvm_select_u16((((((uint16_t)_662) < ((uint16_t)_660))&1)), _662, _660);
#line 672 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 671 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  ;
#line 677 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _664 = (&_655->field0);
  _665 = *_664;
  _666 = ((uint32_t)(uint16_t)_663);
  _667 = memcpy(_665, ((&_657[((int32_t)(((uint32_t)(uint16_t)_659)))])), _666);
#line 678 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _668 = (&_655->field3);
  _669 = *_668;
  *_668 = (llvm_add_u16(_669, _663));
#line 679 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _670 = *_664;
  *_664 = ((&_670[((int32_t)_666)]));
#line 680 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  _671 = *_661;
  *_661 = (llvm_sub_u16(_671, _663));
#line 681 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
  *_658 = 0;
  return (((uint32_t)(bool)(((~((((((uint16_t)_662) < ((uint16_t)_660))&1))))&1))));
}


static void cpu_reset(void) {
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
}

