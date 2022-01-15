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
struct l_struct_struct_OC___JL_PRO_CB;
struct l_struct_struct_OC___BT_3TH_USER_CB;
struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB;

/* Function definitions */
typedef void l_fptr_12(uint8_t*);

typedef void l_fptr_9(uint8_t*, uint8_t, uint8_t, uint8_t*, uint16_t);

typedef uint8_t l_fptr_7(uint8_t*);

typedef void l_fptr_6(uint16_t, uint8_t*, uint32_t);

typedef void l_fptr_3(void);

typedef uint8_t l_fptr_11(uint8_t*, uint8_t, uint8_t);

typedef void l_fptr_2(uint8_t);

typedef void l_fptr_4(uint8_t*, uint8_t*, uint16_t);

typedef uint32_t l_fptr_8(uint8_t*, uint8_t*, uint16_t);

typedef uint32_t l_fptr_1(uint8_t);

typedef void l_fptr_10(uint8_t*, uint8_t, uint8_t*, uint16_t);

typedef void l_fptr_5(uint8_t*, uint32_t);


/* Types Definitions */
struct l_struct_struct_OC___JL_PRO_CB {
  uint8_t* field0;
  l_fptr_7* field1;
  l_fptr_8* field2;
  l_fptr_9* field3;
  l_fptr_9* field4;
  l_fptr_10* field5;
  l_fptr_10* field6;
  l_fptr_9* field7;
  l_fptr_9* field8;
  l_fptr_11* field9;
  l_fptr_12* field10;
};
struct l_struct_struct_OC___BT_3TH_USER_CB {
  uint32_t field0;
  uint32_t field1;
  struct l_struct_struct_OC___JL_PRO_CB field2;
  l_fptr_6* field3;
  l_fptr_5* field4;
  l_fptr_1* field5;
};
struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB {
  uint32_t field0;
  l_fptr_2* field1;
  l_fptr_3* field2;
  l_fptr_4* field3;
};

/* External Global Variable Declarations */
extern uint32_t config_rcsp_stack_enable;

/* Function Declarations */
uint32_t btstack_3th_protocol_open(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_rcsp_3th_pro_lib_init(void);
uint32_t btstack_3th_protocol_user_init(struct l_struct_struct_OC___BT_3TH_USER_CB*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_spp_init(void);
uint8_t bt_3th_spp_fw_ready(uint8_t*);
uint32_t bt_3th_spp_send(uint8_t*, uint8_t*, uint16_t);
void bt_3th_spp_get_operation_table(void);
uint8_t bt_3th_ble_ready(uint8_t*);
uint32_t bt_3th_ble_send(uint8_t*, uint8_t*, uint16_t);
void bt_3th_ble_get_operation_table(void);
void bt_3th_spp_state_handle(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_set_spp_callback_priv(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC___JL_PRO_CB* bt_3th_get_spp_callback(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void bt_3th_set_ble_callback_priv(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC___JL_PRO_CB* bt_3th_get_ble_callback(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint8_t bt_3th_get_cur_bt_channel_sel(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_type_dev_switch(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_type_dev_select(uint8_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_spp_callback_set(l_fptr_3*, l_fptr_4*, l_fptr_2*);
void bt_3th_ble_callback_set(l_fptr_3*, l_fptr_4*, l_fptr_5*);
void bt_3th_ble_status_callback(uint8_t*, uint32_t);
void bt_3th_spp_status_callback(uint8_t);
void bt_3th_dev_type_spp(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_3th_protocol_lib_init(struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_event_send_to_user(uint16_t, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bt_3th_data_send_to_user(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_struct_struct_OC___BT_3TH_USER_CB* g_bt_3th_user_pro;
static struct l_struct_struct_OC___JL_PRO_CB bt_3th_spp_callback;
static struct l_struct_struct_OC___JL_PRO_CB bt_3th_ble_callback;
static uint8_t JL_bt_chl;
static struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* g_bt_3th_lib_pro;


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

uint32_t btstack_3th_protocol_open(uint32_t _1) {
  uint32_t _2;

#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 29 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
#line 31 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _2 = config_rcsp_stack_enable;
#line 29 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  if (((((((_1 == 1u)&1)) & (((_2 != 0u)&1)))&1))) {
    goto _3;
  } else {
    goto _4;
  }

_3:
#line 32 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_rcsp_3th_pro_lib_init();
  goto _4;

_4:
  return 0;
}


uint32_t btstack_3th_protocol_user_init(struct l_struct_struct_OC___BT_3TH_USER_CB* _5) {
  uint32_t _6;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _7;
  uint8_t* _8;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _9;
  uint32_t _10;
  uint32_t _11;
  uint32_t _11__PHI_TEMPORARY;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _12;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _12__PHI_TEMPORARY;
  uint8_t* _13;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _14;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _15;
  struct l_struct_struct_OC___BT_3TH_USER_CB* _15__PHI_TEMPORARY;
  uint32_t _16;
  uint32_t _17;

#line 51 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 53 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  if ((((_5 == ((struct l_struct_struct_OC___BT_3TH_USER_CB*)/*NULL*/0))&1))) {
    goto _18;
  } else {
    goto _19;
  }

_19:
#line 54 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  g_bt_3th_user_pro = _5;
#line 55 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _6 = *((&_5->field1));
  if (((((_6 & 2) == 0u)&1))) {
    _11__PHI_TEMPORARY = _6;   /* for PHI node */
    _12__PHI_TEMPORARY = _5;   /* for PHI node */
    goto _20;
  } else {
    goto _21;
  }

_21:
#line 56 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_3th_spp_init();
#line 57 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _7 = g_bt_3th_user_pro;
  _8 = memcpy(((uint8_t*)(&bt_3th_spp_callback)), (((uint8_t*)((&_7->field2)))), 44);
#line 58 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *((&bt_3th_spp_callback.field1)) = bt_3th_spp_fw_ready;
#line 59 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *((&bt_3th_spp_callback.field2)) = bt_3th_spp_send;
#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_3th_spp_get_operation_table();
  _9 = g_bt_3th_user_pro;
  _10 = *((&_9->field1));
  _11__PHI_TEMPORARY = _10;   /* for PHI node */
  _12__PHI_TEMPORARY = _9;   /* for PHI node */
  goto _20;

_20:
#line 63 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _11 = _11__PHI_TEMPORARY;
  _12 = _12__PHI_TEMPORARY;
  if (((((_11 & 1) == 0u)&1))) {
    _15__PHI_TEMPORARY = _12;   /* for PHI node */
    goto _22;
  } else {
    goto _23;
  }

_23:
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _13 = memcpy(((uint8_t*)(&bt_3th_ble_callback)), (((uint8_t*)((&_12->field2)))), 44);
#line 65 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *((&bt_3th_ble_callback.field1)) = bt_3th_ble_ready;
#line 66 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *((&bt_3th_ble_callback.field2)) = bt_3th_ble_send;
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_3th_ble_get_operation_table();
  _14 = g_bt_3th_user_pro;
  _15__PHI_TEMPORARY = _14;   /* for PHI node */
  goto _22;

_22:
#line 70 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _15 = _15__PHI_TEMPORARY;
  _16 = *((&_15->field0));
  _17 =  /*tail*/ btstack_3th_protocol_open(_16);
  goto _18;

_18:
  return 0;
}


void bt_3th_spp_state_handle(uint8_t _24) {
  struct l_struct_struct_OC___BT_3TH_USER_CB* _25;
  l_fptr_1* _26;
  uint32_t _27;

#line 78 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _25 = g_bt_3th_user_pro;
  if ((((_25 == ((struct l_struct_struct_OC___BT_3TH_USER_CB*)/*NULL*/0))&1))) {
    goto _28;
  } else {
    goto _29;
  }

_29:
  _26 = *((&_25->field5));
  if ((((_26 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _28;
  } else {
    goto _30;
  }

_30:
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _27 =  /*tail*/ _26(_24);
  goto _28;

_28:
  return;
}


void bt_3th_set_spp_callback_priv(uint8_t* _31) {
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *((&bt_3th_spp_callback.field0)) = _31;
}


struct l_struct_struct_OC___JL_PRO_CB* bt_3th_get_spp_callback(void) {
  return (&bt_3th_spp_callback);
}


void bt_3th_set_ble_callback_priv(uint8_t* _32) {
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *((&bt_3th_ble_callback.field0)) = _32;
}


struct l_struct_struct_OC___JL_PRO_CB* bt_3th_get_ble_callback(void) {
  return (&bt_3th_ble_callback);
}


uint8_t bt_3th_get_cur_bt_channel_sel(void) {
  uint8_t _33;

#line 109 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _33 = *(volatile uint8_t*)(&JL_bt_chl);
  return _33;
}


void bt_3th_type_dev_switch(uint8_t _34) {
  struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* _35;
  l_fptr_2* _36;

#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 114 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _35 = g_bt_3th_lib_pro;
  if ((((_35 == ((struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB*)/*NULL*/0))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
  _36 = *((&_35->field1));
  if ((((_36 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _37;
  } else {
    goto _39;
  }

_39:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ _36(_34);
  goto _37;

_37:
  return;
}


void bt_3th_type_dev_select(uint8_t _40) {
  struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* _41;
  struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* _42;
  l_fptr_3* _43;
  l_fptr_4* _44;
  struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* _45;
  l_fptr_2* _46;
  l_fptr_3* _47;
  l_fptr_4* _48;
  struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* _49;
  l_fptr_2* _50;

#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 122 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _41 = g_bt_3th_lib_pro;
  if ((((_41 == ((struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB*)/*NULL*/0))&1))) {
    goto _51;
  } else {
    goto _52;
  }

_52:
#line 123 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  if ((((_40 == ((uint8_t)0))&1))) {
    goto _53;
  } else {
    goto _54;
  }

_53:
#line 125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *(volatile uint8_t*)(&JL_bt_chl) = 0;
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_3th_spp_callback_set(((l_fptr_3*)/*NULL*/0), ((l_fptr_4*)/*NULL*/0), ((l_fptr_2*)/*NULL*/0));
#line 128 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _42 = g_bt_3th_lib_pro;
  _43 = *((&_42->field2));
  _44 = *((&_42->field3));
   /*tail*/ bt_3th_ble_callback_set(_43, _44, bt_3th_ble_status_callback);
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 114 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _45 = g_bt_3th_lib_pro;
  if ((((_45 == ((struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB*)/*NULL*/0))&1))) {
    goto _51;
  } else {
    goto _55;
  }

_55:
  _46 = *((&_45->field1));
  if ((((_46 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _51;
  } else {
    goto _56;
  }

_56:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ _46(0);
  goto _51;

_54:
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  *(volatile uint8_t*)(&JL_bt_chl) = 1;
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _47 = *((&_41->field2));
  _48 = *((&_41->field3));
   /*tail*/ bt_3th_spp_callback_set(_47, _48, bt_3th_spp_status_callback);
#line 135 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_3th_ble_callback_set(((l_fptr_3*)/*NULL*/0), ((l_fptr_4*)/*NULL*/0), ((l_fptr_5*)/*NULL*/0));
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 114 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _49 = g_bt_3th_lib_pro;
  if ((((_49 == ((struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB*)/*NULL*/0))&1))) {
    goto _51;
  } else {
    goto _57;
  }

_57:
  _50 = *((&_49->field1));
  if ((((_50 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _51;
  } else {
    goto _58;
  }

_58:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ _50(_40);
  goto _51;

_51:
  return;
}


void bt_3th_dev_type_spp(void) {
#line 143 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ bt_3th_type_dev_select(1);
}


uint32_t btstack_3th_protocol_lib_init(struct l_struct_struct_OC___BT_3TH_PROTOCOL_CB* _59) {
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  g_bt_3th_lib_pro = _59;
  return 0;
}


void bt_3th_event_send_to_user(uint16_t _60, uint8_t* _61, uint32_t _62) {
  struct l_struct_struct_OC___BT_3TH_USER_CB* _63;
  l_fptr_6* _64;

#line 161 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
  ;
  ;
#line 163 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _63 = g_bt_3th_user_pro;
  if ((((_63 == ((struct l_struct_struct_OC___BT_3TH_USER_CB*)/*NULL*/0))&1))) {
    goto _65;
  } else {
    goto _66;
  }

_66:
  _64 = *((&_63->field3));
  if ((((_64 == ((l_fptr_6*)/*NULL*/0))&1))) {
    goto _65;
  } else {
    goto _67;
  }

_67:
#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ _64(_60, _61, _62);
  goto _65;

_65:
  return;
}


void bt_3th_data_send_to_user(uint8_t* _68, uint32_t _69) {
  struct l_struct_struct_OC___BT_3TH_USER_CB* _70;
  l_fptr_5* _71;

#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  ;
  ;
#line 170 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
  _70 = g_bt_3th_user_pro;
  if ((((_70 == ((struct l_struct_struct_OC___BT_3TH_USER_CB*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _73;
  }

_73:
  _71 = *((&_70->field4));
  if ((((_71 == ((l_fptr_5*)/*NULL*/0))&1))) {
    goto _72;
  } else {
    goto _74;
  }

_74:
#line 171 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
   /*tail*/ _71(_68, _69);
  goto _72;

_72:
  return;
}

