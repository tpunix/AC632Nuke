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
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_btstack_packet_callback_registration_t;
struct l_struct_struct_OC_att_info_t;

/* Function definitions */
typedef void l_fptr_1(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_3(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);

typedef uint16_t l_fptr_2(uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_1* field1;
};
struct l_struct_struct_OC_att_info_t {
  l_fptr_1* field0;
  l_fptr_1* field1;
  uint8_t field2;
  uint8_t* field3;
  l_fptr_2* field4;
  l_fptr_3* field5;
  uint8_t field6;
  uint16_t field7;
  struct l_struct_struct_OC_btstack_linked_item* field8;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field9;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field10;
  l_fptr_1* field11;
  struct l_struct_struct_OC_btstack_linked_item* field12;
  uint8_t field13;
};

/* External Global Variable Declarations */

/* Function Declarations */
void att_global_info_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_dispatch_register_client(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_register_fixed_channel(l_fptr_1*, uint16_t);
static void att_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void att_dispatch_register_server(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t att_dispatch_client_can_send_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t l2cap_can_send_fixed_channel_packet_now(uint16_t, uint16_t);
uint32_t att_dispatch_server_can_send_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_dispatch_client_request_can_send_now_event(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void l2cap_request_can_send_fix_channel_now_event(uint16_t, uint16_t);
void att_dispatch_server_request_can_send_now_event(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t hci_can_send_acl_le_packet_now(void);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_att_info_t att_global_info __HIDDEN__;


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint8_t llvm_or_u8(uint8_t a, uint8_t b) {
  uint8_t r = a | b;
  return r;
}


/* Function Bodies */

void att_global_info_init(void) {
  uint8_t* _1;

#line 76 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _1 = memset(((uint8_t*)(&att_global_info)), 0, 60);
}


void att_dispatch_register_client(l_fptr_1* _2) {
#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  *((&att_global_info.field0)) = _2;
#line 147 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ l2cap_register_fixed_channel(att_packet_handler, 4);
}


static void att_packet_handler(uint8_t _3, uint16_t _4, uint8_t* _5, uint16_t _6) {
  uint8_t _7;
  l_fptr_1* _8;
  l_fptr_1* _9;
  l_fptr_1* _10;
  l_fptr_1* _11;
  uint8_t _12;
  uint8_t _13;
  uint32_t _14;
  uint8_t _15;
  uint8_t _16;
  l_fptr_1* _17;
  uint32_t _18;
  uint8_t _19;
  l_fptr_1* _20;
  uint8_t _21;
  uint8_t _22;

#line 79 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
  ;
  ;
  ;
  switch (_3) {
  default:
    goto _23;
  case ((uint8_t)8):
    goto _24;
  case ((uint8_t)4):
    goto _25;
  }

_24:
#line 84 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _7 = *_5;
  if (((((llvm_and_u8(_7, 1)) == ((uint8_t)0))&1))) {
    goto _26;
  } else {
    goto _27;
  }

_27:
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _8 = *((&att_global_info.field0));
  if ((((_8 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _28;
  } else {
    goto _29;
  }

_28:
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _9 = *((&att_global_info.field1));
  if ((((_9 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _23;
  } else {
    goto _30;
  }

_30:
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ _9(8, _4, _5, _6);
  goto _23;

_29:
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ _8(8, _4, _5, _6);
  goto _23;

_26:
#line 96 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _10 = *((&att_global_info.field1));
  if ((((_10 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _31;
  } else {
    goto _32;
  }

_31:
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _11 = *((&att_global_info.field0));
  if ((((_11 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _23;
  } else {
    goto _33;
  }

_33:
#line 101 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ _11(8, _4, _5, _6);
  goto _23;

_32:
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ _10(8, _4, _5, _6);
  goto _23;

_25:
#line 108 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _12 = *_5;
  if ((((_12 == ((uint8_t)120))&1))) {
    goto _34;
  } else {
    goto _23;
  }

_34:
  _13 = *((&att_global_info.field2));
  if (((((llvm_and_u8(_13, 4)) == ((uint8_t)0))&1))) {
    goto _35;
  } else {
    goto _23;
  }

_35:
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _14 =  /*tail*/ hci_can_send_acl_le_packet_now();
  if ((((_14 == 0u)&1))) {
    goto _23;
  } else {
    goto _36;
  }

_36:
#line 117 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _15 = *((&att_global_info.field2));
  _16 = llvm_or_u8(_15, 4);
  *((&att_global_info.field2)) = _16;
#line 118 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _17 = *((&att_global_info.field1));
  if ((((((((llvm_and_u8(_15, 2)) == ((uint8_t)0))&1)) | (((_17 == ((l_fptr_1*)/*NULL*/0))&1)))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
#line 119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  *((&att_global_info.field2)) = (llvm_and_u8(_16, -3));
#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ _17(4, _4, _5, _6);
#line 122 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _18 =  /*tail*/ hci_can_send_acl_le_packet_now();
  if ((((_18 == 0u)&1))) {
    goto _39;
  } else {
    goto _37;
  }

_39:
#line 123 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _19 = *((&att_global_info.field2));
  *((&att_global_info.field2)) = (llvm_and_u8(_19, -5));
  goto _23;

_37:
#line 128 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _20 = *((&att_global_info.field0));
  if ((((_20 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _40;
  } else {
    goto _41;
  }

_41:
  _21 = *((&att_global_info.field2));
  if (((((llvm_and_u8(_21, 1)) == ((uint8_t)0))&1))) {
    goto _40;
  } else {
    goto _42;
  }

_42:
#line 129 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  *((&att_global_info.field2)) = (llvm_and_u8(_21, -2));
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ _20(4, _4, _5, _6);
  goto _40;

_40:
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _22 = *((&att_global_info.field2));
  *((&att_global_info.field2)) = (llvm_and_u8(_22, -5));
  goto _23;

_23:
  return;
}


void att_dispatch_register_server(l_fptr_1* _43) {
#line 154 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  *((&att_global_info.field1)) = _43;
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ l2cap_register_fixed_channel(att_packet_handler, 4);
}


uint32_t att_dispatch_client_can_send_now(uint16_t _44) {
  uint32_t _45;

#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
#line 166 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _45 =  /*tail*/ l2cap_can_send_fixed_channel_packet_now(_44, 4);
  return _45;
}


uint32_t att_dispatch_server_can_send_now(uint16_t _46) {
  uint32_t _47;

#line 173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
#line 175 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _47 =  /*tail*/ l2cap_can_send_fixed_channel_packet_now(_46, 4);
  return _47;
}


void att_dispatch_client_request_can_send_now_event(uint16_t _48) {
  uint8_t _49;

#line 184 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
#line 186 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _49 = *((&att_global_info.field2));
  *((&att_global_info.field2)) = (llvm_or_u8(_49, 1));
#line 187 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ l2cap_request_can_send_fix_channel_now_event(_48, 4);
}


void att_dispatch_server_request_can_send_now_event(uint16_t _50) {
  uint8_t _51;

#line 196 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  ;
#line 198 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
  _51 = *((&att_global_info.field2));
  *((&att_global_info.field2)) = (llvm_or_u8(_51, 2));
#line 199 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
   /*tail*/ l2cap_request_can_send_fix_channel_now_event(_50, 4);
}

