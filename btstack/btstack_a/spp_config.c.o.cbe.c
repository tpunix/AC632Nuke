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
struct l_struct_struct_OC_spp_operation_t;
struct l_struct_struct_OC_SPP_CONFIG_VAR;

/* Function definitions */
typedef uint32_t l_fptr_5(uint8_t*, uint8_t*);

typedef uint32_t l_fptr_1(uint8_t*, uint8_t*, uint16_t);

typedef void l_fptr_3(uint8_t*, uint8_t*, uint16_t);

typedef void l_fptr_4(uint8_t);

typedef void l_fptr_2(void);

typedef uint32_t l_fptr_6(uint8_t*);

typedef uint32_t l_fptr_7(void);


/* Types Definitions */
struct l_struct_struct_OC_spp_operation_t {
  l_fptr_6* field0;
  l_fptr_1* field1;
  l_fptr_5* field2;
  l_fptr_5* field3;
  l_fptr_5* field4;
  l_fptr_7* field5;
};
struct l_struct_struct_OC_SPP_CONFIG_VAR {
  uint8_t field0;
  struct l_struct_struct_OC_spp_operation_t* field1;
};

/* External Global Variable Declarations */

/* Function Declarations */
void bt_3th_spp_status_callback(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_event_send_to_user(uint16_t, uint8_t*, uint32_t);
uint8_t bt_3th_spp_fw_ready(uint8_t*) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
uint32_t bt_3th_spp_send(uint8_t*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_spp_callback_set(l_fptr_2*, l_fptr_3*, l_fptr_4*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t bt_3th_spp_data_send(uint8_t*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t bt_3th_get_jl_spp_status(void) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void bt_3th_spp_get_operation_table(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void spp_get_operation_table(struct l_struct_struct_OC_spp_operation_t**);
void bt_3th_spp_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void spp_data_deal_handle_register(l_fptr_8*);
void user_spp_data_handler(uint8_t, uint16_t, uint8_t*, uint16_t);


/* Global Variable Definitions and Initialization */
struct l_struct_struct_OC_SPP_CONFIG_VAR spp_config_var __ATTRIBUTE_WEAK__ __HIDDEN__;


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

void bt_3th_spp_status_callback(uint8_t _1) {
  uint8_t _2;    /* Address-exposed local */

#line 19 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
  _2 = _1;
#line 21 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  *((&spp_config_var.field0)) = (((uint8_t)(bool)(((_1 == ((uint8_t)1))&1))));
#line 19 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
#line 32 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  bt_3th_event_send_to_user(2, (&_2), 1);
}


uint8_t bt_3th_spp_fw_ready(uint8_t* _3) {
  uint8_t _4;

#line 35 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
#line 37 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _4 = *((&spp_config_var.field0));
  return (((uint8_t)(bool)(((_4 != ((uint8_t)0))&1))));
}


uint32_t bt_3th_spp_send(uint8_t* _5, uint8_t* _6, uint16_t _7) {
  struct l_struct_struct_OC_spp_operation_t* _8;
  uint8_t _9;
  l_fptr_1* _10;
  uint32_t _11;
  uint32_t _12;
  uint32_t _12__PHI_TEMPORARY;
  uint32_t _13;
  uint32_t _13__PHI_TEMPORARY;

#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
  ;
  ;
#line 46 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _8 = *((&spp_config_var.field1));
  _9 = *((&spp_config_var.field0));
  if (((((((_8 != ((struct l_struct_struct_OC_spp_operation_t*)/*NULL*/0))&1)) & (((_9 == ((uint8_t)1))&1)))&1))) {
    goto _14;
  } else {
    _13__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _15;
  }

_14:
#line 47 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _10 = *((&_8->field1));
  _11 =  /*tail*/ _10(((uint8_t*)/*NULL*/0), _6, _7);
  ;
  switch (_11) {
  default:
    _13__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _15;
  case 0u:
    _12__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _16;
  case 1u:
    goto _17;
  }

_17:
  _12__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _16;

_16:
  _12 = _12__PHI_TEMPORARY;
  _13__PHI_TEMPORARY = _12;   /* for PHI node */
  goto _15;

_15:
  _13 = _13__PHI_TEMPORARY;
  return _13;
}


void bt_3th_spp_callback_set(l_fptr_2* _18, l_fptr_3* _19, l_fptr_4* _20) {
  struct l_struct_struct_OC_spp_operation_t* _21;
  l_fptr_5* _22;
  uint32_t _23;
  struct l_struct_struct_OC_spp_operation_t* _24;
  l_fptr_5* _25;
  uint32_t _26;
  struct l_struct_struct_OC_spp_operation_t* _27;
  l_fptr_5* _28;
  uint32_t _29;

#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
  ;
  ;
#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _21 = *((&spp_config_var.field1));
  _22 = *((&_21->field2));
  _23 =  /*tail*/ _22(((uint8_t*)/*NULL*/0), (((uint8_t*)_18)));
#line 63 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _24 = *((&spp_config_var.field1));
  _25 = *((&_24->field3));
  _26 =  /*tail*/ _25(((uint8_t*)/*NULL*/0), (((uint8_t*)_19)));
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _27 = *((&spp_config_var.field1));
  _28 = *((&_27->field4));
  _29 =  /*tail*/ _28(((uint8_t*)/*NULL*/0), (((uint8_t*)_20)));
}


uint32_t bt_3th_spp_data_send(uint8_t* _30, uint8_t* _31, uint16_t _32) {
  struct l_struct_struct_OC_spp_operation_t* _33;
  l_fptr_1* _34;
  uint32_t _35;
  uint32_t _36;
  uint32_t _36__PHI_TEMPORARY;

#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
  ;
  ;
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _33 = *((&spp_config_var.field1));
  if ((((_33 == ((struct l_struct_struct_OC_spp_operation_t*)/*NULL*/0))&1))) {
    _36__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _37;
  } else {
    goto _38;
  }

_38:
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _34 = *((&_33->field1));
  _35 =  /*tail*/ _34(((uint8_t*)/*NULL*/0), _31, _32);
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  ;
  _36__PHI_TEMPORARY = _35;   /* for PHI node */
  goto _37;

_37:
  _36 = _36__PHI_TEMPORARY;
  ;
  return _36;
}


uint8_t bt_3th_get_jl_spp_status(void) {
  uint8_t _39;

#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  _39 = *((&spp_config_var.field0));
  return _39;
}


void bt_3th_spp_get_operation_table(void) {
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
   /*tail*/ spp_get_operation_table(((&spp_config_var.field1)));
}


void bt_3th_spp_init(void) {
#line 90 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
  *((&spp_config_var.field0)) = 0;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
   /*tail*/ spp_get_operation_table(((&spp_config_var.field1)));
#line 92 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
   /*tail*/ spp_data_deal_handle_register(user_spp_data_handler);
}

