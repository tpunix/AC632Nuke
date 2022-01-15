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
struct l_struct_struct_OC_ble_server_operation_t;
struct l_struct_struct_OC_BLE_CONFIG_VAR;

/* Function definitions */
typedef uint32_t l_fptr_1(uint8_t*, uint8_t*, uint16_t);

typedef uint32_t l_fptr_6(uint8_t*, uint32_t);

typedef uint32_t l_fptr_5(uint8_t*, uint8_t*);

typedef void l_fptr_2(void);

typedef uint32_t l_fptr_7(uint8_t*);

typedef void l_fptr_3(uint8_t*, uint8_t*, uint16_t);

typedef void l_fptr_4(uint8_t*, uint32_t);


/* Types Definitions */
struct l_struct_struct_OC_ble_server_operation_t {
  l_fptr_6* field0;
  l_fptr_7* field1;
  l_fptr_7* field2;
  l_fptr_1* field3;
  l_fptr_5* field4;
  l_fptr_5* field5;
  l_fptr_5* field6;
  l_fptr_6* field7;
};
struct l_struct_struct_OC_BLE_CONFIG_VAR {
  uint32_t field0;
  struct l_struct_struct_OC_ble_server_operation_t* field1;
};

/* External Global Variable Declarations */

/* Function Declarations */
uint8_t bt_3th_ble_ready(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t bt_3th_ble_send(uint8_t*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t bt_3th_ble_data_send(uint8_t*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_ble_status_callback(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_event_send_to_user(uint16_t, uint8_t*, uint32_t);
void ble_get_server_operation_table(struct l_struct_struct_OC_ble_server_operation_t**) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void bt_3th_ble_get_operation_table(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_ble_callback_set(l_fptr_2*, l_fptr_3*, l_fptr_4*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t bt_3th_get_jl_ble_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;


/* Global Variable Definitions and Initialization */
struct l_struct_struct_OC_BLE_CONFIG_VAR ble_config_var __ATTRIBUTE_WEAK__ __HIDDEN__;


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

uint8_t bt_3th_ble_ready(uint8_t* _1) {
  uint32_t _2;

#line 14 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
#line 16 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _2 = *((&ble_config_var.field0));
#line 17 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  return (((uint8_t)(bool)(((_2 == 33u)&1))));
}


uint32_t bt_3th_ble_send(uint8_t* _3, uint8_t* _4, uint16_t _5) {
  uint32_t _6;
  struct l_struct_struct_OC_ble_server_operation_t* _7;
  l_fptr_1* _8;
  uint32_t _9;
  uint32_t _10;
  uint32_t _10__PHI_TEMPORARY;
  uint32_t _11;
  uint32_t _11__PHI_TEMPORARY;

#line 22 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
  ;
  ;
#line 25 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _6 = *((&ble_config_var.field0));
#line 26 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _7 = *((&ble_config_var.field1));
#line 25 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  if (((((((_6 == 33u)&1)) & (((_7 != ((struct l_struct_struct_OC_ble_server_operation_t*)/*NULL*/0))&1)))&1))) {
    goto _12;
  } else {
    _11__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _13;
  }

_12:
#line 26 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _8 = *((&_7->field3));
  if ((((_8 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _11__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _13;
  } else {
    goto _14;
  }

_14:
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _9 =  /*tail*/ _8(((uint8_t*)/*NULL*/0), _4, _5);
  ;
  switch (_9) {
  default:
    _11__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _13;
  case 0u:
    _10__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _15;
  case 1u:
    goto _16;
  }

_16:
  _10__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _15;

_15:
  _10 = _10__PHI_TEMPORARY;
  _11__PHI_TEMPORARY = _10;   /* for PHI node */
  goto _13;

_13:
  _11 = _11__PHI_TEMPORARY;
  return _11;
}


uint32_t bt_3th_ble_data_send(uint8_t* _17, uint8_t* _18, uint16_t _19) {
  struct l_struct_struct_OC_ble_server_operation_t* _20;
  l_fptr_1* _21;
  uint32_t _22;
  uint32_t _23;
  uint32_t _23__PHI_TEMPORARY;

#line 49 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
  ;
  ;
#line 51 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
#line 52 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _20 = *((&ble_config_var.field1));
  if ((((_20 == ((struct l_struct_struct_OC_ble_server_operation_t*)/*NULL*/0))&1))) {
    _23__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _24;
  } else {
    goto _25;
  }

_25:
#line 53 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _21 = *((&_20->field3));
  _22 =  /*tail*/ _21(((uint8_t*)/*NULL*/0), _18, _19);
#line 51 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
  _23__PHI_TEMPORARY = _22;   /* for PHI node */
  goto _24;

_24:
  _23 = _23__PHI_TEMPORARY;
  ;
  return _23;
}


void bt_3th_ble_status_callback(uint8_t* _26, uint32_t _27) {
#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
  ;
#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  *((&ble_config_var.field0)) = _27;
#line 78 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
   /*tail*/ bt_3th_event_send_to_user(1, ((uint8_t*)(&ble_config_var)), 1);
}


void ble_get_server_operation_table(struct l_struct_struct_OC_ble_server_operation_t** _28) {
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
}


void bt_3th_ble_get_operation_table(void) {
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
   /*tail*/ ble_get_server_operation_table(((&ble_config_var.field1)));
}


void bt_3th_ble_callback_set(l_fptr_2* _29, l_fptr_3* _30, l_fptr_4* _31) {
  struct l_struct_struct_OC_ble_server_operation_t* _32;
  l_fptr_5* _33;
  uint32_t _34;
  struct l_struct_struct_OC_ble_server_operation_t* _35;
  l_fptr_5* _36;
  uint32_t _37;
  struct l_struct_struct_OC_ble_server_operation_t* _38;
  l_fptr_5* _39;
  uint32_t _40;

#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  ;
  ;
  ;
#line 95 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _32 = *((&ble_config_var.field1));
  _33 = *((&_32->field4));
  _34 =  /*tail*/ _33(((uint8_t*)/*NULL*/0), (((uint8_t*)_29)));
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _35 = *((&ble_config_var.field1));
  _36 = *((&_35->field5));
  _37 =  /*tail*/ _36(((uint8_t*)/*NULL*/0), (((uint8_t*)_30)));
#line 97 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _38 = *((&ble_config_var.field1));
  _39 = *((&_38->field6));
  _40 =  /*tail*/ _39(((uint8_t*)/*NULL*/0), (((uint8_t*)_31)));
}


uint32_t bt_3th_get_jl_ble_status(void) {
  uint32_t _41;

#line 102 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
  _41 = *((&ble_config_var.field0));
  return _41;
}

