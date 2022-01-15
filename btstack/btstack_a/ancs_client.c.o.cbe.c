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
struct l_struct_struct_OC_le_characteristic_t;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_gatt_client_notification;
struct l_struct_struct_OC_le_service_t;
struct l_struct_struct_OC_btstack_packet_callback_registration_t;
struct l_struct_struct_OC_ancs_info_t;

/* Function definitions */
typedef void l_fptr_2(uint8_t*, uint16_t);

typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_3(void);


/* Types Definitions */
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_struct_struct_OC_le_characteristic_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  struct l_array_16_uint8_t field5;
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_gatt_client_notification {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
  uint16_t field2;
  uint16_t field3;
};
struct l_struct_struct_OC_le_service_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  struct l_array_16_uint8_t field3;
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
};
struct l_struct_struct_OC_ancs_info_t {
  uint32_t field0;
  struct l_struct_struct_OC_gatt_client_notification field1;
  struct l_struct_struct_OC_gatt_client_notification field2;
  uint16_t field3;
  uint16_t field4;
  struct l_struct_struct_OC_le_service_t field5;
  struct l_struct_struct_OC_le_characteristic_t field6;
  struct l_struct_struct_OC_le_characteristic_t field7;
  struct l_struct_struct_OC_le_characteristic_t field8;
  uint32_t field9;
  l_fptr_1* field10;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field11;
  uint16_t field12;
  uint16_t field13;
  uint16_t field14;
  uint16_t field15;
  uint8_t field16;
  uint16_t field17;
  uint8_t* field18;
  uint32_t field19;
  uint32_t field20;
};
struct l_array_8_uint8_t_KC_ {
  uint8_t* array[8];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_117_uint8_t {
  uint8_t array[117];
};
struct l_array_36_uint8_t {
  uint8_t array[36];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_11_uint8_t {
  uint8_t array[11];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_58_uint8_t {
  uint8_t array[58];
};
struct l_array_65_uint8_t {
  uint8_t array[65];
};
struct l_array_59_uint8_t {
  uint8_t array[59];
};
struct l_array_57_uint8_t {
  uint8_t array[57];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
};
struct l_array_48_uint8_t {
  uint8_t array[48];
};
struct l_array_111_uint8_t {
  uint8_t array[111];
};
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_72_uint8_t {
  uint8_t array[72];
};
struct l_array_13_uint8_t {
  uint8_t array[13];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};

/* External Global Variable Declarations */
extern uint32_t config_asser;
extern uint8_t ble_debug_enable;

/* Function Declarations */
void ancs_update_status(uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void ancs_client_register_callback(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* ancs_client_attribute_name_for_id(uint32_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void ancs_set_out_callback(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t get_notification_uid(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint16_t get_controlpoint_handle(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void ancs_client_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void handle_hci_event(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void hci_add_event_handler(uint8_t*);
void ancs_set_notification_buffer(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void cpu_assert_debug(int, ...);
uint16_t little_endian_read_16(uint8_t*, uint32_t);
uint8_t gatt_client_discover_primary_services_by_uuid128(l_fptr_1*, uint16_t, uint8_t*);
uint8_t gatt_client_discover_characteristics_for_service(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_service_t*);
static void notify_client_simple(uint32_t) __ATTRIBUTELIST__((nothrow));
uint8_t sm_api_request_pairing(uint16_t);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
void gatt_client_listen_for_characteristic_value_updates(struct l_struct_struct_OC_gatt_client_notification*, l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*);
uint8_t gatt_client_write_client_characteristic_configuration(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*, uint16_t);
uint32_t little_endian_read_32(uint8_t*, uint32_t);
void little_endian_store_32(uint8_t*, uint16_t, uint32_t);
uint8_t gatt_client_write_value_of_characteristic(l_fptr_1*, uint16_t, uint16_t, uint16_t, uint8_t*);
void put_buf(uint8_t*, uint32_t);
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
void gatt_client_deserialize_service(uint8_t*, uint32_t, struct l_struct_struct_OC_le_service_t*);
void gatt_client_deserialize_characteristic(uint8_t*, uint32_t, struct l_struct_struct_OC_le_characteristic_t*);
void p33_soft_reset(void);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memset(uint8_t*, uint32_t, uint32_t);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC_ancs_info_t ancs_client_global_info;
static struct l_array_8_uint8_t_KC_ ancs_attribute_names = { { ((&_OC_str_OC_6.array[((int32_t)0)])), ((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])), ((&_OC_str_OC_9.array[((int32_t)0)])), ((&_OC_str_OC_10.array[((int32_t)0)])), ((&_OC_str_OC_11.array[((int32_t)0)])), ((&_OC_str_OC_12.array[((int32_t)0)])), ((&_OC_str_OC_13.array[((int32_t)0)])) } };
static l_fptr_2* ancs_out_callback;
static struct l_array_17_uint8_t _OC_str_OC_2 = { "file:%s, line:%d" };
static struct l_array_117_uint8_t _OC_str_OC_3 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c" };
static struct l_array_36_uint8_t _OC_str_OC_4 = { "ASSERT-FAILD: buffer_size >= 32 %s\n" };
static struct l_array_26_uint8_t _OC_str_OC_5 = { "need buffer_size >=32!!!\n" };
static struct l_array_14_uint8_t _OC_str_OC_6 = { "AppIdentifier" };
static struct l_array_8_uint8_t _OC_str_OC_7 = { "IDTitle" };
static struct l_array_11_uint8_t _OC_str_OC_8 = { "IDSubtitle" };
static struct l_array_10_uint8_t _OC_str_OC_9 = { "IDMessage" };
static struct l_array_14_uint8_t _OC_str_OC_10 = { "IDMessageSize" };
static struct l_array_7_uint8_t _OC_str_OC_11 = { "IDDate" };
static struct l_array_22_uint8_t _OC_str_OC_12 = { "IDPositiveActionLable" };
static struct l_array_22_uint8_t _OC_str_OC_13 = { "IDNegativeActionLable" };
static struct l_array_16_uint8_t ancs_service_uuid = { "y\x05\xF4\x31\xB5\xCEN\x99\xA4\x0FK\x1E\x12-\x00\xD0" };
static struct l_array_41_uint8_t _OC_str_OC_14 = { "[ble-info] :Encryption state change: %u\n" };
static struct l_array_40_uint8_t _OC_str_OC_16 = { "HCI_EVENT_DISCONNECTION_COMPLETE:%02x \n" };
static struct l_array_58_uint8_t _OC_str_OC_19 = { "[ble-info] :Connection handle 0x%04x, request encryption\n" };
static struct l_array_16_uint8_t ancs_notification_source_uuid = { "\x9F\xBF\x12\rc\x01\x42\xD9\x8CX%\xE6\x99\xA2\x1D\xBD" };
static struct l_array_65_uint8_t _OC_str_OC_20 = { "[ble-info] :ANCS Notification Source found, attribute handle %u\n" };
static struct l_array_16_uint8_t ancs_control_point_uuid = { "i\xD1\xD8\xF3\x45\xE1I\xA8\x98!\x9B\xBD\xFD\xAA\xD9\xD9" };
static struct l_array_59_uint8_t _OC_str_OC_21 = { "[ble-info] :ANCS Control Point found, attribute handle %u\n" };
static struct l_array_16_uint8_t ancs_data_source_uuid = { "\"\xEA\xC6\xE9$\xD6K\xB5\xBE\x44\xB3j\xCE|{\xFB" };
static struct l_array_57_uint8_t _OC_str_OC_22 = { "[ble-info] :ANCS Data Source found, attribute handle %u\n" };
static struct l_array_42_uint8_t _OC_str_OC_23 = { "[ble-info] :ANCS Characteristcs count %u\n" };
static struct l_array_48_uint8_t _OC_str_OC_26 = { "[ble-info] :ANCS Notification, value handle %u\n" };
static struct l_array_111_uint8_t _OC_str_OC_27 = { "[ble-info] :Notification received: EventID %02x, EventFlags %02x, CategoryID %02x, CategoryCount %u, UID %04x\n" };
static struct l_array_17_uint8_t handle_hci_event_OC_get_notification_attributes = { "\x00\x00\x00\x00\x00\x00\x01\x80\x00\x02\x80\x00\x03\x00\x01\x04\x05" };
static struct l_array_31_uint8_t _OC_str_OC_31 = { "ancs_warning:cut data %d>>>%d\n" };
static struct l_array_16_uint8_t str = { "ancs trunk end " };
static struct l_array_18_uint8_t str_OC_32 = { "ancs trunk start " };
static struct l_array_12_uint8_t str_OC_33 = { "[ble-dump]:" };
static struct l_array_29_uint8_t str_OC_34 = { "[ble-info] :Unknown Source: " };
static struct l_array_40_uint8_t str_OC_35 = { "[ble-info] :ANCS Data Source subscribed" };
static struct l_array_48_uint8_t str_OC_36 = { "[ble-info] :ANCS Notification Source subscribed" };
static struct l_array_35_uint8_t str_OC_37 = { "[ble-info] :ANCS Service not found" };
static struct l_array_72_uint8_t str_OC_38 = { "[ble-info] :ANCS Client - Discover characteristics for ANCS SERVICE111 " };
static struct l_array_72_uint8_t str_OC_39 = { "[ble-info] :ANCS Client - Discover characteristics for ANCS SERVICE222 " };
static struct l_array_57_uint8_t str_OC_41 = { "[ble-info] :WARNING: ANCS BUFFER NO ENOUGH,INFO LOSS !!!" };


/* LLVM Intrinsic Builtin Function Bodies */
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


/* Function Bodies */

void ancs_update_status(uint8_t _1) {
  uint32_t _2;
  uint32_t _3;

#line 133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
  switch (_1) {
  default:
    goto _4;
  case ((uint8_t)1):
    goto _5;
  case ((uint8_t)2):
    goto _6;
  }

_5:
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _2 =  /*tail*/ puts(((&str_OC_32.array[((int32_t)0)])));
  goto _4;

_6:
#line 140 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _3 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _4;

_4:
  return;
}


void ancs_client_register_callback(l_fptr_1* _7) {
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field10)) = _7;
}


uint8_t* ancs_client_attribute_name_for_id(uint32_t _8) {
  uint8_t* _9;
  uint8_t* _10;
  uint8_t* _10__PHI_TEMPORARY;

#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((((int32_t)_8) > ((int32_t)7u))&1))) {
    _10__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
    goto _11;
  } else {
    goto _12;
  }

_12:
#line 204 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _9 = *((&ancs_attribute_names.array[((int32_t)_8)]));
  _10__PHI_TEMPORARY = _9;   /* for PHI node */
  goto _11;

_11:
  _10 = _10__PHI_TEMPORARY;
  return _10;
}


void ancs_set_out_callback(uint8_t* _13) {
#line 460 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 462 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((uint8_t**)(&ancs_out_callback)) = _13;
}


uint32_t get_notification_uid(void) {
  uint32_t _14;

#line 467 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _14 = *((&ancs_client_global_info.field0));
  return _14;
}


uint16_t get_controlpoint_handle(void) {
  uint16_t _15;

#line 471 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _15 = *((&ancs_client_global_info.field7.field1));
  return _15;
}


void ancs_client_init(void) {
  uint8_t* _16;

#line 475 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _16 = memset(((uint8_t*)(&ancs_client_global_info)), 0, 172);
#line 476 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field11.field1)) = handle_hci_event;
#line 477 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
   /*tail*/ hci_add_event_handler(((uint8_t*)((&ancs_client_global_info.field11))));
}


static void handle_hci_event(uint8_t _17, uint16_t _18, uint8_t* _19, uint16_t _20) {
  struct l_array_13_uint8_t _21;    /* Address-exposed local */
  struct l_struct_struct_OC_le_characteristic_t _22;    /* Address-exposed local */
  uint8_t _23;
  uint8_t _24;
  uint16_t _25;
  uint8_t _26;
  uint16_t _27;
  uint16_t _28;
  uint8_t _29;
  uint8_t _30;
  uint32_t _31;
  uint32_t _32;
  uint8_t _33;
  uint32_t _34;
  uint16_t _35;
  uint8_t _36;
  uint16_t _37;
  uint16_t _38;
  uint8_t _39;
  uint32_t _40;
  uint8_t* _41;
  uint32_t _42;
  uint8_t _43;
  uint16_t _44;
  uint8_t _45;
  uint32_t _46;
  uint16_t _47;
  uint8_t _48;
  uint32_t _49;
  uint16_t _50;
  uint8_t _51;
  uint8_t _52;
  uint16_t _53;
  uint32_t _54;
  uint16_t _55;
  uint8_t _56;
  uint8_t _57;
  uint8_t* _58;
  uint32_t _59;
  uint8_t _60;
  uint16_t _61;
  uint32_t _62;
  uint8_t* _63;
  uint32_t _64;
  uint32_t _65;
  uint8_t _66;
  uint16_t _67;
  uint32_t _68;
  uint8_t* _69;
  uint32_t _70;
  uint32_t _71;
  uint8_t _72;
  uint16_t _73;
  uint32_t _74;
  uint8_t* _75;
  uint32_t _76;
  uint8_t _77;
  uint32_t _78;
  uint32_t _79;
  uint16_t _80;
  uint16_t _81;
  uint8_t _82;
  uint8_t _83;
  uint8_t _84;
  uint32_t _85;
  uint16_t _86;
  uint8_t _87;
  uint8_t _88;
  uint8_t _89;
  uint32_t _90;
  uint8_t _91;
  uint16_t _92;
  uint16_t _93;
  uint8_t* _94;
  uint8_t _95;
  uint32_t _96;
  uint16_t _97;
  uint32_t _98;
  uint8_t* _99;
  uint8_t* _100;
  uint8_t* _101;
  uint16_t* _102;
  uint32_t* _103;
  uint32_t _104;
  uint32_t _104__PHI_TEMPORARY;
  uint8_t _105;
  uint16_t _106;
  uint16_t _107;
  uint8_t _108;
  uint32_t _109;
  uint8_t* _110;
  uint16_t _111;
  uint32_t _112;
  uint16_t _113;
  uint32_t _114;
  uint8_t* _115;
  uint8_t _116;
  uint8_t* _117;
  uint16_t _118;
  uint32_t _119;
  uint16_t _120;
  uint32_t _121;
  uint32_t _122;
  uint16_t _123;
  uint16_t _124;
  uint8_t _125;
  uint32_t _126;
  uint8_t* _127;
  l_fptr_1* _128;
  uint16_t _129;
  uint16_t _130;
  uint8_t _131;
  uint16_t _132;
  uint32_t _133;
  l_fptr_1* _134;
  uint8_t _135;
  uint8_t _136;
  uint32_t _137;
  uint16_t _138;
  uint32_t _139;
  uint8_t _140;
  uint8_t _141;
  uint8_t _142;
  uint8_t _143;
  uint8_t _144;
  uint32_t _145;
  uint32_t _146;
  uint32_t _147;
  uint32_t _147__PHI_TEMPORARY;
  uint16_t _148;
  uint16_t _149;
  uint8_t _150;
  l_fptr_2* _151;
  uint8_t _152;
  uint32_t _153;
  uint8_t _154;
  uint8_t _155;
  uint8_t _155__PHI_TEMPORARY;
  uint32_t _156;

#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
  ;
  ;
  ;
#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _23 = *_19;
  switch (_23) {
  default:
    goto _157;
  case ((uint8_t)62):
    goto _158;
  case ((uint8_t)8):
    goto _159;
  case ((uint8_t)5):
    goto _160;
  }

_158:
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _24 = *((&_19[((int32_t)2)]));
  if ((((_24 == ((uint8_t)1))&1))) {
    goto _161;
  } else {
    goto _162;
  }

_161:
#line 276 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _25 =  /*tail*/ little_endian_read_16(_19, 4);
  *((&ancs_client_global_info.field15)) = _25;
#line 279 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field3)) = 0;
#line 280 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field4)) = 0;
#line 281 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 2;
#line 282 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _26 =  /*tail*/ gatt_client_discover_primary_services_by_uuid128(handle_hci_event, _25, ((&ancs_service_uuid.array[((int32_t)0)])));
  goto _162;

_159:
#line 291 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _27 = *((&ancs_client_global_info.field15));
  _28 =  /*tail*/ little_endian_read_16(_19, 3);
  if ((((_27 == _28)&1))) {
    goto _163;
  } else {
    goto _162;
  }

_163:
#line 294 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _29 = *((&_19[((int32_t)5)]));
#line 269 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 295 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _30 = ble_debug_enable;
  if (((((llvm_and_u8(_30, 1)) == ((uint8_t)0))&1))) {
    goto _164;
  } else {
    goto _165;
  }

_165:
#line 294 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
#line 295 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _31 =  /*tail*/ printf(((&_OC_str_OC_14.array[((int32_t)0)])), (((uint32_t)(uint8_t)_29)));
  goto _164;

_164:
#line 296 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((_29 == ((uint8_t)0))&1))) {
    goto _162;
  } else {
    goto _166;
  }

_166:
#line 300 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field4)) = 1;
#line 302 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _32 = *((&ancs_client_global_info.field19));
  if ((((_32 == 1u)&1))) {
    goto _167;
  } else {
    goto _157;
  }

_167:
#line 304 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 3;
#line 305 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _33 = ble_debug_enable;
  if (((((llvm_and_u8(_33, 1)) == ((uint8_t)0))&1))) {
    goto _168;
  } else {
    goto _169;
  }

_169:
  _34 =  /*tail*/ puts(((&str_OC_39.array[((int32_t)0)])));
  goto _168;

_168:
#line 306 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _35 = *((&ancs_client_global_info.field15));
  _36 =  /*tail*/ gatt_client_discover_characteristics_for_service(handle_hci_event, _35, ((&ancs_client_global_info.field5)));
  goto _157;

_160:
#line 322 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 324 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _37 =  /*tail*/ little_endian_read_16(_19, 3);
#line 311 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _38 = *((&ancs_client_global_info.field15));
  if ((((_37 == _38)&1))) {
    goto _170;
  } else {
    goto _157;
  }

_170:
#line 314 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _39 = *((&_19[((int32_t)5)]));
  _40 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), (((uint32_t)(uint8_t)_39)));
#line 315 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
   /*tail*/ notify_client_simple(242);
#line 316 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 0;
#line 317 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field15)) = 0;
  goto _162;

_157:
#line 324 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _41 = ((uint8_t*)(&_22));
#line 329 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _42 = *((&ancs_client_global_info.field19));
  switch (_42) {
  default:
    goto _171;
  case 2u:
    goto _172;
  case 3u:
    goto _173;
  case 5u:
    goto _174;
  case 4u:
    goto _175;
  case 6u:
    goto _176;
  }

_172:
#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _43 = *_19;
  switch (_43) {
  default:
    goto _171;
  case ((uint8_t)-95):
    goto _177;
  case ((uint8_t)-96):
    goto _178;
  }

_177:
#line 1919 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 1921 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
   /*tail*/ gatt_client_deserialize_service(_19, 4, ((&ancs_client_global_info.field5)));
#line 334 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field3)) = 1;
  goto _171;

_178:
#line 337 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _44 = *((&ancs_client_global_info.field3));
  if ((((_44 == ((uint16_t)0))&1))) {
    goto _179;
  } else {
    goto _180;
  }

_179:
#line 338 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _45 = ble_debug_enable;
  if (((((llvm_and_u8(_45, 1)) == ((uint8_t)0))&1))) {
    goto _181;
  } else {
    goto _182;
  }

_182:
  _46 =  /*tail*/ puts(((&str_OC_37.array[((int32_t)0)])));
  goto _181;

_181:
#line 339 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 0;
  goto _171;

_180:
#line 343 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _47 = *((&ancs_client_global_info.field4));
  if ((((_47 == ((uint16_t)0))&1))) {
    goto _183;
  } else {
    goto _184;
  }

_184:
#line 344 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 3;
#line 345 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _48 = ble_debug_enable;
  if (((((llvm_and_u8(_48, 1)) == ((uint8_t)0))&1))) {
    goto _185;
  } else {
    goto _186;
  }

_186:
  _49 =  /*tail*/ puts(((&str_OC_38.array[((int32_t)0)])));
  goto _185;

_185:
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _50 = *((&ancs_client_global_info.field15));
  _51 =  /*tail*/ gatt_client_discover_characteristics_for_service(handle_hci_event, _50, ((&ancs_client_global_info.field5)));
  goto _171;

_183:
#line 349 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _52 = ble_debug_enable;
  if (((((llvm_and_u8(_52, 1)) == ((uint8_t)0))&1))) {
    goto _187;
  } else {
    goto _188;
  }

_188:
  _53 = *((&ancs_client_global_info.field15));
  _54 =  /*tail*/ printf(((&_OC_str_OC_19.array[((int32_t)0)])), (((uint32_t)(uint16_t)_53)));
  goto _187;

_187:
#line 350 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 1;
#line 352 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _55 = *((&ancs_client_global_info.field15));
  _56 =  /*tail*/ sm_api_request_pairing(_55);
  goto _171;

_173:
#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _57 = *_19;
  switch (_57) {
  default:
    goto _171;
  case ((uint8_t)-94):
    goto _189;
  case ((uint8_t)-96):
    goto _190;
  }

_189:
#line 324 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 1942 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
  ;
#line 1944 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  gatt_client_deserialize_characteristic(_19, 4, (&_22));
#line 364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _58 = (&_22.field5.array[((int32_t)0)]);
  _59 = memcmp(_58, ((&ancs_notification_source_uuid.array[((int32_t)0)])), 16);
  if ((((_59 == 0u)&1))) {
    goto _191;
  } else {
    goto _192;
  }

_191:
#line 365 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _60 = ble_debug_enable;
  if (((((llvm_and_u8(_60, 1)) == ((uint8_t)0))&1))) {
    goto _193;
  } else {
    goto _194;
  }

_194:
  _61 = *((&_22.field1));
  _62 = printf(((&_OC_str_OC_20.array[((int32_t)0)])), (((uint32_t)(uint16_t)_61)));
  goto _193;

_193:
#line 366 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _63 = memcpy(((uint8_t*)((&ancs_client_global_info.field6))), _41, 26);
#line 367 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _64 = *((&ancs_client_global_info.field9));
  *((&ancs_client_global_info.field9)) = (llvm_add_u32(_64, 1));
  goto _171;

_192:
#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _65 = memcmp(_58, ((&ancs_control_point_uuid.array[((int32_t)0)])), 16);
  if ((((_65 == 0u)&1))) {
    goto _195;
  } else {
    goto _196;
  }

_195:
#line 371 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _66 = ble_debug_enable;
  if (((((llvm_and_u8(_66, 1)) == ((uint8_t)0))&1))) {
    goto _197;
  } else {
    goto _198;
  }

_198:
  _67 = *((&_22.field1));
  _68 = printf(((&_OC_str_OC_21.array[((int32_t)0)])), (((uint32_t)(uint16_t)_67)));
  goto _197;

_197:
#line 372 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _69 = memcpy(((uint8_t*)((&ancs_client_global_info.field7))), _41, 26);
#line 373 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _70 = *((&ancs_client_global_info.field9));
  *((&ancs_client_global_info.field9)) = (llvm_add_u32(_70, 1));
  goto _171;

_196:
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _71 = memcmp(_58, ((&ancs_data_source_uuid.array[((int32_t)0)])), 16);
  if ((((_71 == 0u)&1))) {
    goto _199;
  } else {
    goto _171;
  }

_199:
#line 377 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _72 = ble_debug_enable;
  if (((((llvm_and_u8(_72, 1)) == ((uint8_t)0))&1))) {
    goto _200;
  } else {
    goto _201;
  }

_201:
  _73 = *((&_22.field1));
  _74 = printf(((&_OC_str_OC_22.array[((int32_t)0)])), (((uint32_t)(uint16_t)_73)));
  goto _200;

_200:
#line 378 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _75 = memcpy(((uint8_t*)((&ancs_client_global_info.field8))), _41, 26);
#line 379 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _76 = *((&ancs_client_global_info.field9));
  *((&ancs_client_global_info.field9)) = (llvm_add_u32(_76, 1));
  goto _171;

_190:
#line 384 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _77 = ble_debug_enable;
  if (((((llvm_and_u8(_77, 1)) == ((uint8_t)0))&1))) {
    goto _202;
  } else {
    goto _203;
  }

_203:
  _78 = *((&ancs_client_global_info.field9));
  _79 =  /*tail*/ printf(((&_OC_str_OC_23.array[((int32_t)0)])), _78);
  goto _202;

_202:
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 5;
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _80 = *((&ancs_client_global_info.field15));
   /*tail*/ gatt_client_listen_for_characteristic_value_updates(((&ancs_client_global_info.field1)), handle_hci_event, _80, ((&ancs_client_global_info.field6)));
#line 387 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _81 = *((&ancs_client_global_info.field15));
  _82 =  /*tail*/ gatt_client_write_client_characteristic_configuration(handle_hci_event, _81, ((&ancs_client_global_info.field6)), 1);
  goto _171;

_174:
#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _83 = *_19;
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((_83 == ((uint8_t)-96))&1))) {
    goto _204;
  } else {
    goto _171;
  }

_204:
#line 397 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _84 = ble_debug_enable;
  if (((((llvm_and_u8(_84, 1)) == ((uint8_t)0))&1))) {
    goto _205;
  } else {
    goto _206;
  }

_206:
  _85 =  /*tail*/ puts(((&str_OC_36.array[((int32_t)0)])));
  goto _205;

_205:
#line 398 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 4;
#line 400 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _86 = *((&ancs_client_global_info.field15));
  _87 =  /*tail*/ gatt_client_write_client_characteristic_configuration(handle_hci_event, _86, ((&ancs_client_global_info.field8)), 1);
  goto _171;

_175:
#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _88 = *_19;
#line 408 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((_88 == ((uint8_t)-96))&1))) {
    goto _207;
  } else {
    goto _171;
  }

_207:
#line 410 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _89 = ble_debug_enable;
  if (((((llvm_and_u8(_89, 1)) == ((uint8_t)0))&1))) {
    goto _208;
  } else {
    goto _209;
  }

_209:
  _90 =  /*tail*/ puts(((&str_OC_35.array[((int32_t)0)])));
  goto _208;

_208:
#line 411 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field19)) = 6;
#line 412 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
   /*tail*/ notify_client_simple(240);
  goto _171;

_176:
#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _91 = *_19;
#line 419 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((((uint8_t)(llvm_add_u8(_91, 89u))) < ((uint8_t)((uint8_t)2)))&1))) {
    goto _210;
  } else {
    goto _171;
  }

_210:
#line 423 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _92 =  /*tail*/ little_endian_read_16(_19, 4);
#line 326 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 424 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _93 =  /*tail*/ little_endian_read_16(_19, 6);
#line 327 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 425 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _94 = (&_19[((int32_t)8)]);
#line 325 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 427 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _95 = ble_debug_enable;
  if (((((llvm_and_u8(_95, 1)) == ((uint8_t)0))&1))) {
    goto _211;
  } else {
    goto _212;
  }

_212:
  _96 =  /*tail*/ printf(((&_OC_str_OC_26.array[((int32_t)0)])), (((uint32_t)(uint16_t)_92)));
  goto _211;

_211:
#line 429 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _97 = *((&ancs_client_global_info.field8.field1));
  if ((((_92 == _97)&1))) {
    goto _213;
  } else {
    goto _214;
  }

_213:
#line 430 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _98 = ((uint32_t)(uint16_t)_93);
  if ((((_93 == ((uint16_t)0))&1))) {
    goto _171;
  } else {
    goto _215;
  }

_215:
  _99 = (&_21.array[((int32_t)0)]);
  _100 = (&_21.array[((int32_t)1)]);
  _101 = (&_21.array[((int32_t)2)]);
  _102 = ((uint16_t*)((&_21.array[((int32_t)7)])));
  _103 = ((uint32_t*)((&_21.array[((int32_t)9)])));
  _104__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _216;

  do {     /* Syntactic loop '' to make GCC happy */
_216:
  _104 = _104__PHI_TEMPORARY;
#line 433 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _105 = *((&_94[((int32_t)_104)]));
#line 207 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 209 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _106 = *((&ancs_client_global_info.field17));
  if ((((_106 == ((uint16_t)0))&1))) {
    goto _217;
  } else {
    goto _218;
  }

_218:
#line 213 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _107 = *((&ancs_client_global_info.field12));
  if ((((((uint16_t)_106) > ((uint16_t)_107))&1))) {
    goto _219;
  } else {
    goto _220;
  }

_220:
  _108 = ble_debug_enable;
  if (((((llvm_and_u8(_108, 1)) == ((uint8_t)0))&1))) {
    goto _217;
  } else {
    goto _221;
  }

_221:
  _109 = puts(((&str_OC_41.array[((int32_t)0)])));
  goto _217;

_219:
#line 215 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _110 = *((&ancs_client_global_info.field18));
  *((&ancs_client_global_info.field12)) = (llvm_add_u16(_107, 1));
  *((&_110[((int32_t)(((uint32_t)(uint16_t)_107)))])) = _105;
#line 216 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _111 = *((&ancs_client_global_info.field12));
  _112 = ((uint32_t)(uint16_t)_111);
  _113 = *((&ancs_client_global_info.field13));
  if ((((((uint16_t)_111) < ((uint16_t)_113))&1))) {
    goto _217;
  } else {
    goto _222;
  }

_222:
#line 220 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _114 = *((&ancs_client_global_info.field20));
  switch (_114) {
  default:
    goto _217;
  case 0u:
    goto _223;
  case 1u:
    goto _224;
  case 2u:
    goto _225;
  }

_225:
#line 248 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _124 = *((&ancs_client_global_info.field17));
  if ((((((uint16_t)_124) > ((uint16_t)_111))&1))) {
    goto _226;
  } else {
    goto _227;
  }

_227:
  _125 = ble_debug_enable;
  if (((((llvm_and_u8(_125, 1)) == ((uint8_t)0))&1))) {
    goto _217;
  } else {
    goto _228;
  }

_228:
  _126 = puts(((&str_OC_41.array[((int32_t)0)])));
  goto _217;

_226:
#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _127 = *((&ancs_client_global_info.field18));
  *((&_127[((int32_t)_112)])) = 0;
#line 152 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _128 = *((&ancs_client_global_info.field10));
#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _129 = *((&ancs_client_global_info.field17));
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if (((((((_128 == ((l_fptr_1*)/*NULL*/0))&1)) | (((_129 == ((uint16_t)0))&1)))&1))) {
    goto _229;
  } else {
    goto _230;
  }

_230:
#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *_99 = -22;
#line 166 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *_100 = 11;
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *_101 = -15;
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _130 = *((&ancs_client_global_info.field15));
  little_endian_store_16(_99, 3, _130);
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _131 = *((&ancs_client_global_info.field16));
  little_endian_store_16(_99, 5, (((uint16_t)(uint8_t)_131)));
#line 173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _132 = *((&ancs_client_global_info.field14));
  __UNALIGNED_LOAD__(uint16_t, 1, _102) = _132;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _133 = *((uint32_t*)((&ancs_client_global_info.field18)));
  __UNALIGNED_LOAD__(uint32_t, 1, _103) = _133;
#line 176 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _134 = *((&ancs_client_global_info.field10));
  _135 = *_100;
  _134(4, 0, _99, (llvm_add_u16((((uint16_t)(uint8_t)_135)), 2)));
  goto _229;

_229:
#line 252 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _136 = *((&ancs_client_global_info.field16));
  if ((((_136 == ((uint8_t)5))&1))) {
    goto _231;
  } else {
    goto _232;
  }

_231:
#line 253 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ancs_update_status(2);
  goto _232;

_232:
#line 255 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field12)) = 0;
#line 256 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field13)) = 1;
#line 257 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field20)) = 0;
  goto _217;

_224:
#line 231 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _117 = *((&ancs_client_global_info.field18));
  _118 = little_endian_read_16(_117, (llvm_add_u32(_112, -2)));
  *((&ancs_client_global_info.field14)) = _118;
#line 232 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field12)) = 0;
#line 233 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field13)) = _118;
#line 234 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _119 = ((uint32_t)(uint16_t)_118);
  if ((((_118 == ((uint16_t)0))&1))) {
    goto _233;
  } else {
    goto _234;
  }

_234:
#line 240 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _120 = *((&ancs_client_global_info.field17));
  _121 = llvm_add_u32((((uint32_t)(uint16_t)_120)), -1);
  if ((((((int32_t)_119) > ((int32_t)_121))&1))) {
    goto _235;
  } else {
    goto _236;
  }

_235:
#line 241 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _122 = printf(((&_OC_str_OC_31.array[((int32_t)0)])), _119, _121);
#line 242 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _123 = *((&ancs_client_global_info.field17));
  *((&ancs_client_global_info.field14)) = (llvm_add_u16(_123, -1));
  goto _236;

_236:
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field20)) = 2;
  goto _217;

_233:
#line 235 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field13)) = 1;
#line 236 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field20)) = 0;
  goto _217;

_223:
#line 222 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _115 = *((&ancs_client_global_info.field18));
  _116 = *((&_115[((int32_t)(llvm_add_u32(_112, -1)))]));
  *((&ancs_client_global_info.field16)) = _116;
#line 223 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((_116 == ((uint8_t)0))&1))) {
    goto _237;
  } else {
    goto _238;
  }

_237:
#line 224 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ancs_update_status(1);
  goto _238;

_238:
#line 226 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field12)) = 0;
#line 227 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field13)) = 2;
#line 228 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field20)) = 1;
  goto _217;

_217:
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _137 = llvm_add_u32(_104, 1);
#line 430 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
  ;
#line 432 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  if ((((_137 == _98)&1))) {
    goto _239;
  } else {
    _104__PHI_TEMPORARY = _137;   /* for PHI node */
    goto _216;
  }

  } while (1); /* end of syntactic loop '' */
_214:
#line 436 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _138 = *((&ancs_client_global_info.field6.field1));
  if ((((_92 == _138)&1))) {
    goto _240;
  } else {
    goto _241;
  }

_240:
#line 437 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _139 =  /*tail*/ little_endian_read_32(_94, 4);
  *((&ancs_client_global_info.field0)) = _139;
#line 438 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _140 = ble_debug_enable;
  if (((((llvm_and_u8(_140, 1)) == ((uint8_t)0))&1))) {
    _147__PHI_TEMPORARY = _139;   /* for PHI node */
    goto _242;
  } else {
    goto _243;
  }

_243:
  _141 = *_94;
  _142 = *((&_19[((int32_t)9)]));
  _143 = *((&_19[((int32_t)10)]));
  _144 = *((&_19[((int32_t)11)]));
  _145 =  /*tail*/ printf(((&_OC_str_OC_27.array[((int32_t)0)])), (((uint32_t)(uint8_t)_141)), (((uint32_t)(uint8_t)_142)), (((uint32_t)(uint8_t)_143)), (((uint32_t)(uint8_t)_144)), _139);
  _146 = *((&ancs_client_global_info.field0));
  _147__PHI_TEMPORARY = _146;   /* for PHI node */
  goto _242;

_242:
#line 441 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _147 = _147__PHI_TEMPORARY;
   /*tail*/ little_endian_store_32(((&handle_hci_event_OC_get_notification_attributes.array[((int32_t)0)])), 1, _147);
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field20)) = 0;
#line 195 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field12)) = 0;
#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field13)) = 6;
#line 444 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _148 = *((&ancs_client_global_info.field15));
  _149 = *((&ancs_client_global_info.field7.field1));
  _150 =  /*tail*/ gatt_client_write_value_of_characteristic(handle_hci_event, _148, _149, 17, ((&handle_hci_event_OC_get_notification_attributes.array[((int32_t)0)])));
#line 446 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _151 = ancs_out_callback;
  if ((((_151 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _171;
  } else {
    goto _244;
  }

_244:
#line 447 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
   /*tail*/ _151(_19, _20);
  goto _171;

_241:
#line 450 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _152 = ble_debug_enable;
  if (((((llvm_and_u8(_152, 1)) == ((uint8_t)0))&1))) {
    _155__PHI_TEMPORARY = _152;   /* for PHI node */
    goto _245;
  } else {
    goto _246;
  }

_246:
  _153 =  /*tail*/ puts(((&str_OC_34.array[((int32_t)0)])));
  _154 = ble_debug_enable;
  _155__PHI_TEMPORARY = _154;   /* for PHI node */
  goto _245;

_245:
#line 451 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _155 = _155__PHI_TEMPORARY;
  if (((((llvm_and_u8(_155, 2)) == ((uint8_t)0))&1))) {
    goto _171;
  } else {
    goto _247;
  }

_247:
  _156 =  /*tail*/ puts(((&str_OC_33.array[((int32_t)0)])));
   /*tail*/ put_buf(_94, (((uint32_t)(uint16_t)_93)));
  goto _171;

_239:
  goto _171;

_171:
  goto _162;

_162:
  return;
}


void ancs_set_notification_buffer(uint8_t* _248, uint16_t _249) {
  uint32_t _250;
  uint32_t _251;
  uint32_t _252;

#line 480 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
  ;
#line 482 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _250 = config_asser;
  if ((((_250 == 0u)&1))) {
    goto _253;
  } else {
    goto _254;
  }

_254:
  if ((((((uint16_t)_249) > ((uint16_t)((uint16_t)31)))&1))) {
    goto _255;
  } else {
    goto _256;
  }

_256:
  _251 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), ((&_OC_str_OC_3.array[((int32_t)0)])), 482);
  _252 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), ((&_OC_str_OC_5.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_3*)(void*)cpu_assert_debug)();
  goto _255;

_253:
  if ((((((uint16_t)_249) > ((uint16_t)((uint16_t)31)))&1))) {
    goto _255;
  } else {
    goto _257;
  }

_257:
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
  goto _255;

_255:
#line 483 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field17)) = _249;
#line 484 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&ancs_client_global_info.field18)) = _248;
}


static void notify_client_simple(uint32_t _258) {
  struct l_array_5_uint8_t _259;    /* Address-exposed local */
  l_fptr_1* _260;
  uint8_t* _261;
  uint16_t _262;
  l_fptr_1* _263;

#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  ;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _260 = *((&ancs_client_global_info.field10));
  if ((((_260 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _264;
  } else {
    goto _265;
  }

_265:
#line 184 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _261 = (&_259.array[((int32_t)0)]);
  ;
#line 185 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *_261 = -22;
#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&_259.array[((int32_t)1)])) = 3;
#line 187 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  *((&_259.array[((int32_t)2)])) = (((uint8_t)_258));
#line 188 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _262 = *((&ancs_client_global_info.field15));
  little_endian_store_16(_261, 3, _262);
#line 189 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
  _263 = *((&ancs_client_global_info.field10));
  _263(4, 0, _261, 5);
  goto _264;

_264:
  return;
}

