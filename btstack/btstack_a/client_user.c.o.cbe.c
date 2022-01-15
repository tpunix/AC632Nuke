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
struct l_struct_struct_OC_le_service_t;
struct l_struct_struct_OC_le_characteristic_t;
struct l_struct_struct_OC_service_report_t;
struct l_struct_struct_OC_charact_report_t;
struct l_struct_struct_OC_search_result_t;
struct l_struct_struct_OC_client_ctl_t;
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_gatt_client_notification;
struct l_struct_struct_OC_att_data_report_t;

/* Function definitions */
typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_2(void);


/* Types Definitions */
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_struct_struct_OC_le_service_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  struct l_array_16_uint8_t field3;
};
struct l_struct_struct_OC_le_characteristic_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  struct l_array_16_uint8_t field5;
};
struct l_struct_struct_OC_service_report_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  struct l_array_16_uint8_t field3;
};
struct l_struct_struct_OC_charact_report_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint16_t field4;
  struct l_array_16_uint8_t field5;
};
struct l_struct_struct_OC_search_result_t {
  struct l_struct_struct_OC_service_report_t field0;
  struct l_struct_struct_OC_charact_report_t field1;
  uint16_t field2;
  uint16_t field3;
};
struct l_array_16_struct_AC_l_struct_struct_OC_le_service_t {
  struct l_struct_struct_OC_le_service_t array[16];
};
struct l_array_4_uint32_t {
  uint32_t array[4];
};
struct l_struct_struct_OC_client_ctl_t {
  uint32_t field0;
  struct l_struct_struct_OC_le_service_t* field1;
  struct l_struct_struct_OC_le_characteristic_t* field2;
  uint16_t field3;
  uint16_t field4;
  uint16_t field5;
  uint16_t field6;
  struct l_struct_struct_OC_search_result_t field7;
  struct l_array_16_struct_AC_l_struct_struct_OC_le_service_t field8;
  struct l_array_4_uint32_t field9;
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_61_uint8_t {
  uint8_t array[61];
};
struct l_array_51_uint8_t {
  uint8_t array[51];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_35_uint8_t {
  uint8_t array[35];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_49_uint8_t {
  uint8_t array[49];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_106_uint8_t {
  uint8_t array[106];
};
struct l_array_42_uint8_t {
  uint8_t array[42];
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
struct l_array_27_uint8_t {
  uint8_t array[27];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_12_uint8_t {
  uint8_t array[12];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_struct_struct_OC_att_data_report_t {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint8_t* field4;
  uint16_t field5;
};

/* External Global Variable Declarations */
extern uint32_t config_le_gatt_client_num;
extern uint8_t ble_debug_enable;
extern uint32_t config_asser;

/* Function Declarations */
void user_client_report_search_result(struct l_struct_struct_OC_search_result_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void user_client_report_data_callback(struct l_struct_struct_OC_att_data_report_t*) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void user_client_set_search_complete(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void user_client_search_profile_complete(void) __ATTRIBUTELIST__((nothrow));
void user_client_gatt_event(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
static void user_client_report_acc_data(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static uint8_t hci_event_packet_get_type(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
static void gatt_event_service_query_result_get_service(uint8_t*, struct l_struct_struct_OC_le_service_t*) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
static uint32_t user_client_discover_next_service(void) __ATTRIBUTELIST__((nothrow));
uint8_t gatt_client_discover_characteristics_for_service(l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_service_t*);
static void gatt_event_characteristic_query_result_get_characteristic(uint8_t*, struct l_struct_struct_OC_le_characteristic_t*) __ATTRIBUTELIST__((nothrow));
uint32_t user_client_search_profile_start(uint32_t, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t gatt_client_discover_primary_services_by_uuid16(l_fptr_1*, uint16_t, uint16_t);
uint8_t gatt_client_discover_primary_services_by_uuid128(l_fptr_1*, uint16_t, uint8_t*);
uint8_t gatt_client_discover_primary_services(l_fptr_1*, uint16_t);
void user_client_init(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
void gatt_client_listen_for_characteristic_value_updates(struct l_struct_struct_OC_gatt_client_notification*, l_fptr_1*, uint16_t, struct l_struct_struct_OC_le_characteristic_t*);
uint8_t gatt_client_get_mtu(uint16_t, uint16_t*);
void att_send_set_mtu_size(uint16_t, uint16_t);
void gatt_client_deserialize_service(uint8_t*, uint32_t, struct l_struct_struct_OC_le_service_t*);
void gatt_client_deserialize_characteristic(uint8_t*, uint32_t, struct l_struct_struct_OC_le_characteristic_t*);
void p33_soft_reset(void);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_40_uint8_t _OC_str = { "[ble-info] :client cbk gatt event %x \n\n" };
static struct l_struct_struct_OC_client_ctl_t* client_s_hdl;
static uint16_t gc_search_handle;
static struct l_array_45_uint8_t _OC_str_OC_1 = { "[ble-info] :record server %d,uuid16= %04x \n\n" };
static struct l_array_54_uint8_t _OC_str_OC_5 = { "[ble-info] :SERVICE_QUERY_RESULT - Error status %x.\n\n" };
static struct l_array_44_uint8_t _OC_str_OC_6 = { "[ble-info] :search_service finish (%d)!!!\n\n" };
static struct l_array_61_uint8_t _OC_str_OC_7 = { "[ble-info] :CHARACTERISTIC_QUERY_RESULT - Error status %x.\n\n" };
static struct l_array_51_uint8_t _OC_str_OC_8 = { "[ble-info] :current_service characteristics = %d\n\n" };
static struct l_array_41_uint8_t _OC_str_OC_9 = { "[ble-info] :Client, unhandled state %d\n\n" };
static struct l_array_35_uint8_t _OC_str_OC_10 = { "[ble-info] :search_pfl_type = %d\n\n" };
static struct l_array_37_uint8_t _OC_str_OC_11 = { "[ble-info] :search start busy!!!%d\n\n" };
static struct l_array_49_uint8_t _OC_str_OC_12 = { "client_user buffer not good enough!!!,need = %d\n" };
static struct l_array_17_uint8_t _OC_str_OC_13 = { "file:%s, line:%d" };
static struct l_array_106_uint8_t _OC_str_OC_14 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c" };
static struct l_array_17_uint8_t _OC_str_OC_15 = { "ASSERT-FAILD: 0 " };
static struct l_array_42_uint8_t _OC_str_OC_16 = { "[ble-info] :client_user bufferneed = %d\n\n" };
static struct l_struct_struct_OC_gatt_client_notification common_notification_registration;
static struct l_array_27_uint8_t _OC_str_OC_18 = { "[ble-info] :ATT MTU = %u\n\n" };
static struct l_array_28_uint8_t _OC_str_OC_20 = { "[ble-info] :\n-utype= %02x\n\n" };
static struct l_array_49_uint8_t _OC_str_OC_21 = { "[ble-info] :\n---discover service_index: %d ---\n\n" };
static struct l_array_49_uint8_t str = { "[ble-info] :user_client_search_profile_complete\n" };
static struct l_array_33_uint8_t str_OC_23 = { "[ble-info] :find no services!!!\n" };
static struct l_array_40_uint8_t str_OC_24 = { "[ble-info] :services is overflow!!!!!!\n" };
static struct l_array_12_uint8_t str_OC_25 = { "[ble-dump]:" };
static struct l_array_21_uint8_t str_OC_26 = { "[ble-info] :uuid128:" };
static struct l_array_37_uint8_t str_OC_27 = { "[ble-info] :discover_service end!!!\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
  uint16_t r = a + b;
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

void user_client_report_search_result(struct l_struct_struct_OC_search_result_t* _1) {
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
}


void user_client_report_data_callback(struct l_struct_struct_OC_att_data_report_t* _2) {
#line 256 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
}


void user_client_set_search_complete(void) {
#line 318 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_search_profile_complete();
}


static void user_client_search_profile_complete(void) {
  uint16_t _3;    /* Address-exposed local */
  uint32_t _4;
  uint8_t* _5;
  struct l_struct_struct_OC_client_ctl_t* _6;
  uint16_t _7;
  uint8_t _8;
  uint32_t _9;
  uint16_t _10;
  uint8_t _11;
  uint16_t _12;
  uint16_t _13;
  uint8_t _14;
  uint32_t _15;
  uint16_t _16;
  uint16_t _17;
  uint16_t _17__PHI_TEMPORARY;
  uint16_t _18;
  uint8_t _19;
  uint32_t _20;
  struct l_struct_struct_OC_client_ctl_t* _21;

#line 170 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _4 = config_le_gatt_client_num;
  if ((((_4 == 0u)&1))) {
    goto _22;
  } else {
    goto _23;
  }

_23:
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _5 = ((uint8_t*)(&_3));
#line 175 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _6 = client_s_hdl;
  _7 = *((&_6->field3));
  if ((((_7 == ((uint16_t)0))&1))) {
    goto _24;
  } else {
    goto _25;
  }

_24:
#line 176 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _8 = ble_debug_enable;
  if (((((llvm_and_u8(_8, 1)) == ((uint8_t)0))&1))) {
    goto _25;
  } else {
    goto _26;
  }

_26:
  _9 =  /*tail*/ puts(((&str_OC_23.array[((int32_t)0)])));
  goto _25;

_25:
#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _10 = gc_search_handle;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _11 = gatt_client_get_mtu(_10, (&_3));
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _12 = _3;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _13 = llvm_add_u16(_12, -3);
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 180 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _3 = _13;
#line 181 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _14 = ble_debug_enable;
  if (((((llvm_and_u8(_14, 1)) == ((uint8_t)0))&1))) {
    _17__PHI_TEMPORARY = _13;   /* for PHI node */
    goto _27;
  } else {
    goto _28;
  }

_28:
  _15 = printf(((&_OC_str_OC_18.array[((int32_t)0)])), (((uint32_t)(uint16_t)_13)));
  _16 = _3;
  _17__PHI_TEMPORARY = _16;   /* for PHI node */
  goto _27;

_27:
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _17 = _17__PHI_TEMPORARY;
  _18 = gc_search_handle;
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  att_send_set_mtu_size(_18, _17);
#line 183 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _19 = ble_debug_enable;
  if (((((llvm_and_u8(_19, 1)) == ((uint8_t)0))&1))) {
    goto _29;
  } else {
    goto _30;
  }

_30:
  _20 = puts(((&str.array[((int32_t)0)])));
  goto _29;

_29:
#line 184 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  user_client_report_search_result(((struct l_struct_struct_OC_search_result_t*)(uintptr_t)-1));
#line 185 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _21 = client_s_hdl;
  *((&_21->field0)) = 20;
#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  gc_search_handle = 0;
  goto _22;

_22:
  return;
}


void user_client_gatt_event(uint8_t _31, uint16_t _32, uint8_t* _33, uint16_t _34) {
  uint32_t _35;
  uint8_t _36;
  struct l_struct_struct_OC_client_ctl_t* _37;
  uint32_t _38;
  uint32_t _39;
  uint16_t _40;
  uint8_t _41;
  uint8_t _42;
  struct l_struct_struct_OC_client_ctl_t* _43;
  uint32_t _44;
  uint8_t _45;
  struct l_struct_struct_OC_le_service_t* _46;
  struct l_struct_struct_OC_client_ctl_t* _47;
  uint16_t _48;
  uint32_t _49;
  uint8_t _50;
  struct l_struct_struct_OC_le_service_t* _51;
  uint16_t _52;
  uint32_t _53;
  struct l_struct_struct_OC_client_ctl_t* _54;
  struct l_struct_struct_OC_client_ctl_t* _55;
  struct l_struct_struct_OC_client_ctl_t* _55__PHI_TEMPORARY;
  struct l_struct_struct_OC_le_service_t* _56;
  uint16_t _57;
  uint8_t _58;
  uint32_t _59;
  uint8_t _60;
  uint8_t _61;
  uint8_t _61__PHI_TEMPORARY;
  uint32_t _62;
  struct l_struct_struct_OC_client_ctl_t* _63;
  struct l_struct_struct_OC_le_service_t* _64;
  struct l_struct_struct_OC_client_ctl_t* _65;
  uint16_t* _66;
  uint16_t _67;
  uint8_t* _68;
  uint8_t* _69;
  uint16_t* _70;
  uint16_t _71;
  uint32_t _72;
  struct l_struct_struct_OC_client_ctl_t* _73;
  struct l_struct_struct_OC_client_ctl_t* _74;
  struct l_struct_struct_OC_client_ctl_t* _74__PHI_TEMPORARY;
  uint8_t* _75;
  uint8_t* _76;
  uint8_t _77;
  uint32_t _78;
  uint8_t _79;
  uint32_t _80;
  uint16_t _81;
  uint32_t _82;
  struct l_struct_struct_OC_client_ctl_t* _83;
  struct l_struct_struct_OC_client_ctl_t* _84;
  struct l_struct_struct_OC_client_ctl_t* _84__PHI_TEMPORARY;
  uint16_t _85;
  uint32_t _86;
  struct l_struct_struct_OC_client_ctl_t* _87;
  uint8_t* _88;
  uint8_t* _89;
  uint16_t _90;
  struct l_struct_struct_OC_le_service_t* _91;
  uint8_t _92;
  uint8_t _93;
  struct l_struct_struct_OC_le_characteristic_t* _94;
  struct l_struct_struct_OC_client_ctl_t* _95;
  uint16_t _96;
  uint16_t* _97;
  uint16_t _98;
  uint16_t* _99;
  uint16_t _100;
  struct l_struct_struct_OC_client_ctl_t* _101;
  uint8_t* _102;
  uint8_t* _103;
  uint8_t _104;
  uint32_t _105;
  uint8_t _106;
  uint32_t _107;
  uint16_t _108;
  uint32_t _109;
  uint32_t _110;
  struct l_struct_struct_OC_client_ctl_t* _111;
  uint8_t* _112;
  uint8_t* _113;
  uint16_t _114;
  struct l_struct_struct_OC_le_service_t* _115;
  uint8_t _116;
  uint8_t _117;
  uint32_t _118;

#line 321 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  ;
  ;
  ;
#line 323 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _35 = config_le_gatt_client_num;
  if ((((_35 == 0u)&1))) {
    goto _119;
  } else {
    goto _120;
  }

_120:
#line 327 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _36 = ble_debug_enable;
  if (((((llvm_and_u8(_36, 1)) == ((uint8_t)0))&1))) {
    goto _121;
  } else {
    goto _122;
  }

_122:
  _37 = client_s_hdl;
  _38 = *((&_37->field0));
  _39 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), _38);
  goto _121;

_121:
#line 330 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _40 = gc_search_handle;
  _41 = *((&_33[((int32_t)2)]));
  _42 = *((&_33[((int32_t)3)]));
  if (((((((uint32_t)(uint16_t)_40)) == (((((uint32_t)(uint8_t)_42)) << 8) | (((uint32_t)(uint8_t)_41))))&1))) {
    goto _123;
  } else {
    goto _124;
  }

_124:
#line 332 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_report_acc_data(_33, _34);
  goto _119;

_123:
#line 336 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _43 = client_s_hdl;
  _44 = *((&_43->field0));
  switch (_44) {
  default:
    goto _125;
  case 20u:
    goto _126;
  case 4u:
    goto _127;
  case 6u:
    goto _128;
  }

_126:
#line 339 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_report_acc_data(_33, _34);
  goto _119;

_127:
#line 343 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  if ((((_43 == ((struct l_struct_struct_OC_client_ctl_t*)/*NULL*/0))&1))) {
    goto _119;
  } else {
    goto _129;
  }

_129:
#line 344 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _45 =  /*tail*/ hci_event_packet_get_type(_33);
  switch (_45) {
  default:
    goto _119;
  case ((uint8_t)-95):
    goto _130;
  case ((uint8_t)-96):
    goto _131;
  }

_130:
#line 346 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _46 = *((&_43->field1));
   /*tail*/ gatt_event_service_query_result_get_service(_33, _46);
#line 347 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _47 = client_s_hdl;
  _48 = *((&_47->field4));
  _49 = ((uint32_t)(uint16_t)_48);
  _50 = ble_debug_enable;
  if ((((((uint16_t)_48) < ((uint16_t)((uint16_t)16)))&1))) {
    goto _132;
  } else {
    goto _133;
  }

_132:
  if (((((llvm_and_u8(_50, 1)) != ((uint8_t)0))&1))) {
    goto _134;
  } else {
    _55__PHI_TEMPORARY = _47;   /* for PHI node */
    goto _135;
  }

_134:
#line 348 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _51 = *((&_47->field1));
  _52 = *((&_51->field2));
  _53 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), _49, (((uint32_t)(uint16_t)_52)));
  _54 = client_s_hdl;
  _55__PHI_TEMPORARY = _54;   /* for PHI node */
  goto _135;

_135:
#line 349 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _55 = _55__PHI_TEMPORARY;
  _56 = *((&_55->field1));
  _57 = *((&_56->field2));
  if ((((_57 == ((uint16_t)0))&1))) {
    goto _136;
  } else {
    goto _137;
  }

_136:
#line 350 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _58 = ble_debug_enable;
  if (((((llvm_and_u8(_58, 1)) == ((uint8_t)0))&1))) {
    _61__PHI_TEMPORARY = _58;   /* for PHI node */
    goto _138;
  } else {
    goto _139;
  }

_139:
  _59 =  /*tail*/ puts(((&str_OC_26.array[((int32_t)0)])));
  _60 = ble_debug_enable;
  _61__PHI_TEMPORARY = _60;   /* for PHI node */
  goto _138;

_138:
#line 351 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _61 = _61__PHI_TEMPORARY;
  if (((((llvm_and_u8(_61, 2)) == ((uint8_t)0))&1))) {
    goto _137;
  } else {
    goto _140;
  }

_140:
  _62 =  /*tail*/ puts(((&str_OC_25.array[((int32_t)0)])));
  _63 = client_s_hdl;
  _64 = *((&_63->field1));
   /*tail*/ put_buf(((&_64->field3.array[((int32_t)0)])), 16);
  goto _137;

_137:
#line 353 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _65 = client_s_hdl;
  _66 = (&_65->field4);
  _67 = *_66;
  *_66 = (llvm_add_u16(_67, 1));
  _68 = *(((uint8_t**)((&_65->field1))));
  _69 = memcpy((((uint8_t*)((&_65->field8.array[((int32_t)(((uint32_t)(uint16_t)_67)))])))), _68, 22);
#line 354 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _70 = (&_65->field3);
  _71 = *_70;
  *_70 = (llvm_add_u16(_71, 1));
  _74__PHI_TEMPORARY = _65;   /* for PHI node */
  goto _141;

_133:
  if (((((llvm_and_u8(_50, 1)) != ((uint8_t)0))&1))) {
    goto _142;
  } else {
    _74__PHI_TEMPORARY = _47;   /* for PHI node */
    goto _141;
  }

_142:
#line 356 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _72 =  /*tail*/ puts(((&str_OC_24.array[((int32_t)0)])));
  _73 = client_s_hdl;
  _74__PHI_TEMPORARY = _73;   /* for PHI node */
  goto _141;

_141:
#line 358 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _74 = _74__PHI_TEMPORARY;
  _75 = *(((uint8_t**)((&_74->field1))));
  _76 = memset(_75, 0, 22);
  goto _119;

_131:
#line 362 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _77 = *((&_33[((int32_t)4)]));
  _78 = ((uint32_t)(uint8_t)_77);
  _79 = ble_debug_enable;
  if ((((_77 == ((uint8_t)0))&1))) {
    goto _143;
  } else {
    goto _144;
  }

_144:
  if (((((llvm_and_u8(_79, 1)) != ((uint8_t)0))&1))) {
    goto _145;
  } else {
    goto _146;
  }

_145:
#line 363 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _80 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), _78);
  goto _146;

_146:
#line 364 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_search_profile_complete();
  goto _119;

_143:
  if (((((llvm_and_u8(_79, 1)) != ((uint8_t)0))&1))) {
    goto _147;
  } else {
    _84__PHI_TEMPORARY = _43;   /* for PHI node */
    goto _148;
  }

_147:
#line 368 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _81 = *((&_43->field3));
  _82 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), (((uint32_t)(uint16_t)_81)));
  _83 = client_s_hdl;
  _84__PHI_TEMPORARY = _83;   /* for PHI node */
  goto _148;

_148:
#line 369 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _84 = _84__PHI_TEMPORARY;
  _85 = *((&_84->field3));
  if ((((_85 == ((uint16_t)0))&1))) {
    goto _149;
  } else {
    goto _150;
  }

_149:
#line 370 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_search_profile_complete();
  goto _119;

_150:
#line 372 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_84->field4)) = 0;
#line 373 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _86 =  /*tail*/ user_client_discover_next_service();
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _87 = client_s_hdl;
#line 155 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_87->field5)) = 0;
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_87->field6)) = 0;
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_87->field7.field3)) = -1;
#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _88 = *(((uint8_t**)((&_87->field2))));
  _89 = memset(_88, 0, 26);
#line 375 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_87->field0)) = 6;
#line 376 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _90 = gc_search_handle;
  _91 = *((&_87->field1));
  _92 =  /*tail*/ gatt_client_discover_characteristics_for_service(user_client_gatt_event, _90, _91);
  goto _119;

_128:
#line 385 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  if ((((_43 == ((struct l_struct_struct_OC_client_ctl_t*)/*NULL*/0))&1))) {
    goto _119;
  } else {
    goto _151;
  }

_151:
#line 386 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _93 =  /*tail*/ hci_event_packet_get_type(_33);
  switch (_93) {
  default:
    goto _119;
  case ((uint8_t)-94):
    goto _152;
  case ((uint8_t)-96):
    goto _153;
  }

_152:
#line 388 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _94 = *((&_43->field2));
   /*tail*/ gatt_event_characteristic_query_result_get_characteristic(_33, _94);
#line 191 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _95 = client_s_hdl;
  _96 = *((&_95->field4));
  *((&_95->field7.field2)) = _96;
#line 192 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _97 = (&_95->field6);
  _98 = *_97;
  *((&_95->field7.field3)) = _98;
#line 193 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *_97 = (llvm_add_u16(_98, 1));
#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _99 = (&_95->field5);
  _100 = *_99;
  *_99 = (llvm_add_u16(_100, 1));
#line 195 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_report_search_result(((&_95->field7)));
#line 390 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _101 = client_s_hdl;
  _102 = *(((uint8_t**)((&_101->field2))));
  _103 = memset(_102, 0, 26);
  goto _119;

_153:
#line 394 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _104 = *((&_33[((int32_t)4)]));
  _105 = ((uint32_t)(uint8_t)_104);
  _106 = ble_debug_enable;
  if ((((_104 == ((uint8_t)0))&1))) {
    goto _154;
  } else {
    goto _155;
  }

_155:
  if (((((llvm_and_u8(_106, 1)) != ((uint8_t)0))&1))) {
    goto _156;
  } else {
    goto _157;
  }

_156:
#line 395 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _107 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])), _105);
  goto _157;

_157:
#line 396 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_search_profile_complete();
  goto _119;

_154:
  if (((((llvm_and_u8(_106, 1)) != ((uint8_t)0))&1))) {
    goto _158;
  } else {
    goto _159;
  }

_158:
#line 399 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _108 = *((&_43->field5));
  _109 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), (((uint32_t)(uint16_t)_108)));
  goto _159;

_159:
#line 400 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _110 =  /*tail*/ user_client_discover_next_service();
  if ((((_110 == 0u)&1))) {
    goto _160;
  } else {
    goto _161;
  }

_161:
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _111 = client_s_hdl;
  *((&_111->field0)) = 6;
#line 155 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_111->field5)) = 0;
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_111->field6)) = 0;
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_111->field7.field3)) = -1;
#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _112 = *(((uint8_t**)((&_111->field2))));
  _113 = memset(_112, 0, 26);
#line 402 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _114 = gc_search_handle;
  _115 = *((&_111->field1));
  _116 =  /*tail*/ gatt_client_discover_characteristics_for_service(user_client_gatt_event, _114, _115);
  goto _119;

_160:
#line 405 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ user_client_search_profile_complete();
  goto _119;

_125:
#line 444 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _117 = ble_debug_enable;
  if (((((llvm_and_u8(_117, 1)) == ((uint8_t)0))&1))) {
    goto _119;
  } else {
    goto _162;
  }

_162:
  _118 =  /*tail*/ printf(((&_OC_str_OC_9.array[((int32_t)0)])), _44);
  goto _119;

_119:
  return;
}


static void user_client_report_acc_data(uint8_t* _163, uint16_t _164) {
  struct l_struct_struct_OC_att_data_report_t _165;    /* Address-exposed local */
  uint8_t* _166;
  uint8_t _167;
  uint8_t _168;
  uint8_t _169;
  uint8_t _170;
  uint8_t _171;
  uint8_t _172;
  uint8_t _173;
  uint16_t _174;
  uint8_t _175;
  uint8_t _176;
  uint32_t _177;
  uint16_t _178;
  uint16_t _178__PHI_TEMPORARY;

#line 271 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  ;
#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _166 = ((uint8_t*)(&_165));
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 276 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _167 =  /*tail*/ hci_event_packet_get_type(_163);
  *((&_165.field0)) = (((uint16_t)(uint8_t)_167));
#line 277 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _168 = *((&_163[((int32_t)4)]));
  _169 = *((&_163[((int32_t)5)]));
  *((&_165.field1)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_169)), 8)), (((uint16_t)(uint8_t)_168))));
#line 278 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _170 = *((&_163[((int32_t)2)]));
  _171 = *((&_163[((int32_t)3)]));
  *((&_165.field5)) = (llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_171)), 8)), (((uint16_t)(uint8_t)_170))));
  switch (_167) {
  default:
    goto _179;
  case ((uint8_t)-89):
    goto _180;
  case ((uint8_t)-88):
    goto _180;
  case ((uint8_t)-91):
    goto _180;
  case ((uint8_t)-90):
    goto _181;
  case ((uint8_t)-96):
    goto _182;
  }

_180:
#line 286 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_165.field4)) = ((&_163[((int32_t)8)]));
#line 287 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_165.field3)) = (llvm_add_u16(_164, -8));
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  _178__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _183;

_181:
#line 295 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_165.field4)) = ((&_163[((int32_t)10)]));
#line 296 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_165.field3)) = (llvm_add_u16(_164, -10));
#line 297 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _172 = *((&_163[((int32_t)6)]));
  _173 = *((&_163[((int32_t)7)]));
  _174 = llvm_or_u16((llvm_shl_u16((((uint16_t)(uint8_t)_173)), 8)), (((uint16_t)(uint8_t)_172)));
#line 274 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  _178__PHI_TEMPORARY = _174;   /* for PHI node */
  goto _183;

_179:
#line 306 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _175 = ble_debug_enable;
  if (((((llvm_and_u8(_175, 1)) == ((uint8_t)0))&1))) {
    goto _182;
  } else {
    goto _184;
  }

_184:
  _176 =  /*tail*/ hci_event_packet_get_type(_163);
  _177 =  /*tail*/ printf(((&_OC_str_OC_20.array[((int32_t)0)])), (((uint32_t)(uint8_t)_176)));
  goto _182;

_183:
  _178 = _178__PHI_TEMPORARY;
  *((&_165.field2)) = _178;
#line 273 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 312 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  user_client_report_data_callback((&_165));
  goto _182;

_182:
  return;
}


static uint8_t hci_event_packet_get_type(uint8_t* _185) {
  uint8_t _186;

#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  _186 = *_185;
  return _186;
}


static void gatt_event_service_query_result_get_service(uint8_t* _187, struct l_struct_struct_OC_le_service_t* _188) {
#line 1919 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
  ;
#line 1921 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
   /*tail*/ gatt_client_deserialize_service(_187, 4, _188);
}


static uint32_t user_client_discover_next_service(void) {
  struct l_struct_struct_OC_client_ctl_t* _189;
  uint16_t _190;
  uint32_t _191;
  uint16_t _192;
  uint8_t _193;
  uint32_t _194;
  struct l_struct_struct_OC_client_ctl_t* _195;
  uint16_t _196;
  uint16_t _197;
  uint16_t _197__PHI_TEMPORARY;
  struct l_struct_struct_OC_client_ctl_t* _198;
  struct l_struct_struct_OC_client_ctl_t* _198__PHI_TEMPORARY;
  struct l_struct_struct_OC_le_service_t** _199;
  uint8_t* _200;
  uint8_t* _201;
  uint16_t _202;
  struct l_struct_struct_OC_le_service_t* _203;
  uint8_t _204;
  uint32_t _205;
  uint32_t _206;
  uint32_t _206__PHI_TEMPORARY;

#line 213 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _189 = client_s_hdl;
  _190 = *((&_189->field4));
  _191 = ((uint32_t)(uint16_t)_190);
  _192 = *((&_189->field3));
  _193 = ble_debug_enable;
  if ((((((uint16_t)_190) < ((uint16_t)_192))&1))) {
    goto _207;
  } else {
    goto _208;
  }

_207:
  if (((((llvm_and_u8(_193, 1)) != ((uint8_t)0))&1))) {
    goto _209;
  } else {
    _197__PHI_TEMPORARY = _190;   /* for PHI node */
    _198__PHI_TEMPORARY = _189;   /* for PHI node */
    goto _210;
  }

_209:
#line 214 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _194 =  /*tail*/ printf(((&_OC_str_OC_21.array[((int32_t)0)])), _191);
  _195 = client_s_hdl;
  _196 = *((&_195->field4));
  _197__PHI_TEMPORARY = _196;   /* for PHI node */
  _198__PHI_TEMPORARY = _195;   /* for PHI node */
  goto _210;

_210:
#line 215 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _197 = _197__PHI_TEMPORARY;
#line 217 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _198 = _198__PHI_TEMPORARY;
#line 215 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _199 = (&_198->field1);
  _200 = *(((uint8_t**)_199));
  *((&_198->field4)) = (llvm_add_u16(_197, 1));
  _201 = memcpy(_200, (((uint8_t*)((&_198->field8.array[((int32_t)(((uint32_t)(uint16_t)_197)))])))), 22);
#line 217 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _202 = gc_search_handle;
  _203 = *_199;
  _204 =  /*tail*/ gatt_client_discover_characteristics_for_service(user_client_gatt_event, _202, _203);
  _206__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _211;

_208:
  if (((((llvm_and_u8(_193, 1)) != ((uint8_t)0))&1))) {
    goto _212;
  } else {
    _206__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _211;
  }

_212:
#line 220 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _205 =  /*tail*/ puts(((&str_OC_27.array[((int32_t)0)])));
  _206__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _211;

_211:
  _206 = _206__PHI_TEMPORARY;
  return _206;
}


static void gatt_event_characteristic_query_result_get_characteristic(uint8_t* _213, struct l_struct_struct_OC_le_characteristic_t* _214) {
#line 1942 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
  ;
  ;
#line 1944 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h"
   /*tail*/ gatt_client_deserialize_characteristic(_213, 4, _214);
}


uint32_t user_client_search_profile_start(uint32_t _215, uint32_t _216) {
  uint32_t _217;
  struct l_struct_struct_OC_client_ctl_t* _218;
  struct l_struct_struct_OC_service_report_t* _219;
  uint8_t* _220;
  uint8_t _221;
  uint32_t _222;
  uint16_t _223;
  uint8_t _224;
  uint16_t _225;
  uint8_t _226;
  uint16_t _227;
  uint8_t _228;
  uint8_t _229;
  uint8_t _229__PHI_TEMPORARY;
  uint32_t _230;
  uint8_t _231;
  uint32_t _232;
  uint32_t _233;
  uint32_t _233__PHI_TEMPORARY;

#line 466 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  ;
#line 468 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
#line 470 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _217 = config_le_gatt_client_num;
  if ((((_217 == 0u)&1))) {
    _233__PHI_TEMPORARY = 84;   /* for PHI node */
    goto _234;
  } else {
    goto _235;
  }

_235:
#line 474 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _218 = client_s_hdl;
  if ((((_218 == ((struct l_struct_struct_OC_client_ctl_t*)/*NULL*/0))&1))) {
    _233__PHI_TEMPORARY = -98;   /* for PHI node */
    goto _234;
  } else {
    goto _236;
  }

_236:
#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_218->field0)) = 4;
#line 145 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _219 = (&_218->field7.field0);
  *(((struct l_struct_struct_OC_service_report_t**)((&_218->field1)))) = _219;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *(((struct l_struct_struct_OC_charact_report_t**)((&_218->field2)))) = ((&_218->field7.field1));
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_218->field7.field2)) = 1;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((&_218->field7.field3)) = -1;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _220 = memset((((uint8_t*)_219)), 0, 22);
#line 478 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _221 = ble_debug_enable;
  if (((((llvm_and_u8(_221, 1)) == ((uint8_t)0))&1))) {
    goto _237;
  } else {
    goto _238;
  }

_238:
  _222 =  /*tail*/ printf(((&_OC_str_OC_10.array[((int32_t)0)])), _215);
  goto _237;

_237:
  switch (_215) {
  default:
    _233__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _234;
  case 1u:
    goto _239;
  case 2u:
    goto _240;
  case 3u:
    goto _241;
  }

_239:
#line 482 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _223 = gc_search_handle;
  _224 =  /*tail*/ gatt_client_discover_primary_services_by_uuid16(user_client_gatt_event, _223, (((uint16_t)_216)));
  _229__PHI_TEMPORARY = _224;   /* for PHI node */
  goto _242;

_240:
#line 486 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _225 = gc_search_handle;
  _226 =  /*tail*/ gatt_client_discover_primary_services_by_uuid128(user_client_gatt_event, _225, (((uint8_t*)(uintptr_t)_216)));
  _229__PHI_TEMPORARY = _226;   /* for PHI node */
  goto _242;

_241:
#line 490 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _227 = gc_search_handle;
  _228 =  /*tail*/ gatt_client_discover_primary_services(user_client_gatt_event, _227);
#line 468 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  _229__PHI_TEMPORARY = _228;   /* for PHI node */
  goto _242;

_242:
  _229 = _229__PHI_TEMPORARY;
  _230 = ((uint32_t)(uint8_t)_229);
  ;
#line 498 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  if ((((_229 == ((uint8_t)-107))&1))) {
    goto _243;
  } else {
    _233__PHI_TEMPORARY = _230;   /* for PHI node */
    goto _234;
  }

_243:
#line 499 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _231 = ble_debug_enable;
  if (((((llvm_and_u8(_231, 1)) == ((uint8_t)0))&1))) {
    _233__PHI_TEMPORARY = 149;   /* for PHI node */
    goto _234;
  } else {
    goto _244;
  }

_244:
  _232 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), _215);
  _233__PHI_TEMPORARY = 149;   /* for PHI node */
  goto _234;

_234:
  _233 = _233__PHI_TEMPORARY;
  return _233;
}


void user_client_init(uint16_t _245, uint8_t* _246, uint16_t _247) {
  uint32_t _248;
  uint32_t _249;
  uint32_t _250;
  uint32_t _251;
  uint32_t _252;
  uint8_t _253;
  uint32_t _254;
  uint8_t* _255;
  l_fptr_1* _256;

#line 505 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  ;
  ;
  ;
#line 507 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _248 = config_le_gatt_client_num;
  if ((((_248 == 0u)&1))) {
    goto _257;
  } else {
    goto _258;
  }

_258:
#line 511 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  if ((((((uint16_t)_247) < ((uint16_t)((uint16_t)440)))&1))) {
    goto _259;
  } else {
    goto _260;
  }

_259:
#line 512 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _249 =  /*tail*/ printf(((&_OC_str_OC_12.array[((int32_t)0)])), 440);
#line 513 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _250 = config_asser;
  if ((((_250 == 0u)&1))) {
    goto _261;
  } else {
    goto _262;
  }

_262:
  _251 =  /*tail*/ printf(((&_OC_str_OC_13.array[((int32_t)0)])), ((&_OC_str_OC_14.array[((int32_t)0)])), 513);
  _252 =  /*tail*/ printf(((&_OC_str_OC_15.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_2*)(void*)cpu_assert_debug)();
  goto _260;

_261:
   /*tail*/ cpu_reset();
  goto _260;

_260:
#line 516 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _253 = ble_debug_enable;
  if (((((llvm_and_u8(_253, 1)) == ((uint8_t)0))&1))) {
    goto _263;
  } else {
    goto _264;
  }

_264:
  _254 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), 440);
  goto _263;

_263:
#line 518 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  *((uint8_t**)(&client_s_hdl)) = _246;
#line 519 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  if ((((_246 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _257;
  } else {
    goto _265;
  }

_265:
#line 520 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _255 = memset(_246, 0, 440);
#line 521 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  gc_search_handle = _245;
#line 523 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
  _256 = *((&common_notification_registration.field1));
  if ((((_256 == user_client_gatt_event)&1))) {
    goto _257;
  } else {
    goto _266;
  }

_266:
#line 525 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
   /*tail*/ gatt_client_listen_for_characteristic_value_updates((&common_notification_registration), user_client_gatt_event, _245, ((struct l_struct_struct_OC_le_characteristic_t*)/*NULL*/0));
  goto _257;

_257:
  return;
}


static void cpu_reset(void) {
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
}

