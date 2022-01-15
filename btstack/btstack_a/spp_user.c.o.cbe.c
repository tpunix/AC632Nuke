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

/* Function definitions */
typedef void l_fptr_1(void);

typedef uint32_t l_fptr_5(uint8_t*, uint8_t*, uint16_t);

typedef void l_fptr_2(uint8_t);

typedef void l_fptr_3(uint8_t*, uint8_t*, uint16_t);

typedef uint32_t l_fptr_7(void);

typedef uint32_t l_fptr_4(uint8_t*);

typedef uint32_t l_fptr_6(uint8_t*, uint8_t*);


/* Types Definitions */
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_struct_struct_OC_spp_operation_t {
  l_fptr_4* field0;
  l_fptr_5* field1;
  l_fptr_6* field2;
  l_fptr_6* field3;
  l_fptr_6* field4;
  l_fptr_7* field5;
};
struct l_array_33_uint8_t {
  uint8_t array[33];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_37_uint8_t {
  uint8_t array[37];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_28_uint8_t {
  uint8_t array[28];
};

/* External Global Variable Declarations */

/* Function Declarations */
void user_spp_send_ok_callback(uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t putchar(uint32_t) __ATTRIBUTELIST__((nothrow));
uint32_t user_spp_state_specific(uint8_t) __ATTRIBUTELIST__((nothrow)) __ATTRIBUTE_WEAK__ __HIDDEN__;
void user_spp_data_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void bt_3th_spp_state_handle(uint8_t);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
void spp_get_operation_table(struct l_struct_struct_OC_spp_operation_t**) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void user_spp_disconnect(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t user_spp_send(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
static void user_spp_regiser_wakeup_send(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static void user_spp_regiser_recieve(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static void user_spp_regiest_state_cbk(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t user_spp_busy_state(void) __ATTRIBUTELIST__((nothrow));
uint32_t user_send_cmd_prepare(uint32_t, uint16_t, uint8_t*);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
l_fptr_3* spp_recieve_cbk __HIDDEN__;
l_fptr_2* spp_state_cbk __HIDDEN__;
static uint8_t user_spp_send_busy;
static l_fptr_1* user_spp_send_wakeup;
static uint8_t* user_spp_send_pool;
static struct l_array_20_uint8_t _OC_str_OC_3 = { "\n-spp_rx(%d)######:" };
static struct l_struct_struct_OC_spp_operation_t spp_operation = { ((l_fptr_4*)user_spp_disconnect), ((l_fptr_5*)user_spp_send), ((l_fptr_6*)user_spp_regiser_wakeup_send), ((l_fptr_6*)user_spp_regiser_recieve), ((l_fptr_6*)user_spp_regiest_state_cbk), user_spp_busy_state };
static struct l_array_33_uint8_t _OC_str_OC_5 = { "SPP_USER_ERR_SEND_OVER_LIMIT,%d\n" };
static struct l_array_14_uint8_t _OC_str_OC_6 = { "\n-spp_tx(%d):" };
static struct l_array_17_uint8_t _OC_str_OC_7 = { "SPP_BUFF NULL!!!" };
static struct l_array_40_uint8_t str = { "spp disconnect ########################" };
static struct l_array_37_uint8_t str_OC_8 = { "spp connect ########################" };
static struct l_array_24_uint8_t str_OC_9 = { "SPP_BUFF MALLOC FAIL!!!" };
static struct l_array_28_uint8_t str_OC_10 = { "SPP_USER_ERR_SEND_BUFF_BUSY" };


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

void user_spp_send_ok_callback(uint32_t _1) {
  uint32_t _2;
  uint32_t _3;
  l_fptr_1* _4;

#line 24 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
#line 26 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *(volatile uint8_t*)(&user_spp_send_busy) = 0;
#line 27 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _2 = app_info_debug_enable;
  if (((((_2 & 8) == 0u)&1))) {
    goto _5;
  } else {
    goto _6;
  }

_6:
  _3 =  /*tail*/ putchar(75);
  goto _5;

_5:
#line 28 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _4 = user_spp_send_wakeup;
  if ((((_4 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _7;
  } else {
    goto _8;
  }

_8:
#line 29 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ _4();
  goto _7;

_7:
  return;
}


uint32_t user_spp_state_specific(uint8_t _9) {
#line 99 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
  return 0;
}


void user_spp_data_handler(uint8_t _10, uint16_t _11, uint8_t* _12, uint16_t _13) {
  uint32_t _14;
  uint8_t* _15;
  uint8_t* _16;
  uint32_t _17;
  uint32_t _18;
  l_fptr_2* _19;
  uint32_t _20;
  uint8_t* _21;
  l_fptr_2* _22;
  uint32_t _23;
  uint32_t _24;
  uint32_t _25;
  uint32_t _26;
  uint32_t _27;
  uint32_t _27__PHI_TEMPORARY;
  l_fptr_3* _28;

#line 106 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
  ;
  ;
  ;
  switch (_10) {
  default:
    goto _29;
  case ((uint8_t)1):
    goto _30;
  case ((uint8_t)2):
    goto _31;
  case ((uint8_t)7):
    goto _32;
  }

_30:
#line 110 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _14 =  /*tail*/ puts(((&str_OC_8.array[((int32_t)0)])));
#line 111 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *(volatile uint8_t*)(&user_spp_send_busy) = 0;
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _15 = user_spp_send_pool;
  if ((((_15 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _33;
  } else {
    goto _34;
  }

_33:
#line 113 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _16 =  /*tail*/ malloc(660);
  user_spp_send_pool = _16;
#line 114 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  if ((((_16 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _35;
  } else {
    goto _34;
  }

_35:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _17 =  /*tail*/ puts(((&str_OC_9.array[((int32_t)0)])));
  goto _34;

_34:
#line 119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ bt_3th_spp_state_handle(1);
#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _18 =  /*tail*/ user_spp_state_specific(1);
#line 33 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
#line 35 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _19 = spp_state_cbk;
  if ((((_19 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _29;
  } else {
    goto _36;
  }

_36:
#line 36 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ _19(1);
  goto _29;

_31:
#line 124 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _20 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
#line 125 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _21 = user_spp_send_pool;
  if ((((_21 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ free(_21);
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  user_spp_send_pool = ((uint8_t*)/*NULL*/0);
  goto _37;

_37:
#line 33 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
#line 35 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _22 = spp_state_cbk;
  if ((((_22 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _39;
  } else {
    goto _40;
  }

_40:
#line 36 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ _22(2);
  goto _39;

_39:
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ bt_3th_spp_state_handle(2);
#line 133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _23 =  /*tail*/ user_spp_state_specific(2);
  goto _29;

_32:
#line 136 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _24 = app_info_debug_enable;
  if (((((_24 & 8) == 0u)&1))) {
    _27__PHI_TEMPORARY = _24;   /* for PHI node */
    goto _41;
  } else {
    goto _42;
  }

_42:
  _25 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), (((uint32_t)(uint16_t)_13)));
  _26 = app_info_debug_enable;
  _27__PHI_TEMPORARY = _26;   /* for PHI node */
  goto _41;

_41:
#line 137 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _27 = _27__PHI_TEMPORARY;
  if (((((_27 & 8) == 0u)&1))) {
    goto _43;
  } else {
    goto _44;
  }

_44:
   /*tail*/ put_buf(_12, (((uint32_t)(uint16_t)_13)));
  goto _43;

_43:
#line 139 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _28 = spp_recieve_cbk;
  if ((((_28 == ((l_fptr_3*)/*NULL*/0))&1))) {
    goto _29;
  } else {
    goto _45;
  }

_45:
#line 140 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ _28((((uint8_t*)(uintptr_t)(((uint32_t)(uint16_t)_11)))), _12, _13);
  goto _29;

_29:
  return;
}


void spp_get_operation_table(struct l_struct_struct_OC_spp_operation_t** _46) {
#line 165 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *(volatile uint8_t*)(&user_spp_send_busy) = 0;
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *_46 = (&spp_operation);
}


static void user_spp_disconnect(uint8_t* _47) {
  l_fptr_2* _48;
  uint32_t _49;

#line 46 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
#line 48 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *(volatile uint8_t*)(&user_spp_send_busy) = 0;
#line 33 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
#line 35 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _48 = spp_state_cbk;
  if ((((_48 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _50;
  } else {
    goto _51;
  }

_51:
#line 36 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
   /*tail*/ _48(3);
  goto _50;

_50:
#line 50 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _49 =  /*tail*/ user_send_cmd_prepare(112, 0, ((uint8_t*)/*NULL*/0));
}


static uint32_t user_spp_send(uint8_t* _52, uint8_t* _53, uint32_t _54) {
  uint8_t _55;
  uint32_t _56;
  uint32_t _57;
  uint32_t _58;
  uint32_t _59;
  uint32_t _60;
  uint32_t _61;
  uint32_t _61__PHI_TEMPORARY;
  uint8_t* _62;
  uint32_t _63;
  uint8_t* _64;
  uint32_t _65;
  uint32_t _66;
  uint32_t _66__PHI_TEMPORARY;

#line 65 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
  ;
  ;
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _55 = *(volatile uint8_t*)(&user_spp_send_busy);
  if ((((_55 == ((uint8_t)1))&1))) {
    goto _67;
  } else {
    goto _68;
  }

_67:
#line 68 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _56 =  /*tail*/ puts(((&str_OC_10.array[((int32_t)0)])));
  _66__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _69;

_68:
#line 72 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  if ((((_54 == 0u)&1))) {
    _66__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _69;
  } else {
    goto _70;
  }

_70:
#line 73 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  if ((((((uint32_t)_54) > ((uint32_t)660u))&1))) {
    goto _71;
  } else {
    goto _72;
  }

_71:
#line 74 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _57 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), _54);
  _66__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _69;

_72:
#line 78 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _58 = app_info_debug_enable;
  if (((((_58 & 8) == 0u)&1))) {
    _61__PHI_TEMPORARY = _58;   /* for PHI node */
    goto _73;
  } else {
    goto _74;
  }

_74:
  _59 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), _54);
  _60 = app_info_debug_enable;
  _61__PHI_TEMPORARY = _60;   /* for PHI node */
  goto _73;

_73:
#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _61 = _61__PHI_TEMPORARY;
  if (((((_61 & 8) == 0u)&1))) {
    goto _75;
  } else {
    goto _76;
  }

_76:
   /*tail*/ put_buf(_53, _54);
  goto _75;

_75:
#line 81 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _62 = user_spp_send_pool;
  if ((((_62 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _77;
  } else {
    goto _78;
  }

_77:
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _63 =  /*tail*/ printf(((&_OC_str_OC_7.array[((int32_t)0)])));
  _66__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _69;

_78:
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *(volatile uint8_t*)(&user_spp_send_busy) = 1;
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _64 = memcpy(_62, _53, _54);
#line 88 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _65 =  /*tail*/ user_send_cmd_prepare(109, (((uint16_t)_54)), _62);
  ;
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  if ((((_65 == 0u)&1))) {
    _66__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _69;
  } else {
    goto _79;
  }

_79:
#line 90 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *(volatile uint8_t*)(&user_spp_send_busy) = 0;
  _66__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _69;

_69:
  _66 = _66__PHI_TEMPORARY;
  return _66;
}


static void user_spp_regiser_wakeup_send(uint8_t* _80, uint8_t* _81) {
#line 41 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
  ;
#line 43 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *((uint8_t**)(&user_spp_send_wakeup)) = _81;
}


static void user_spp_regiser_recieve(uint8_t* _82, uint8_t* _83) {
#line 59 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
  ;
#line 61 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *((uint8_t**)(&spp_recieve_cbk)) = _83;
}


static void user_spp_regiest_state_cbk(uint8_t* _84, uint8_t* _85) {
#line 53 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  ;
  ;
#line 55 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  *((uint8_t**)(&spp_state_cbk)) = _85;
}


static uint32_t user_spp_busy_state(void) {
  uint8_t _86;

#line 152 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
  _86 = *(volatile uint8_t*)(&user_spp_send_busy);
  return (((uint32_t)(uint8_t)_86));
}

