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
struct l_struct_struct_OC_hci_cmd_t;

/* Function definitions */
typedef void l_fptr_1(void);


/* Types Definitions */
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
struct l_struct_struct_OC_hci_cmd_t {
  uint16_t field0;
  uint8_t* field1;
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC__stack_config* user_stack_configs;
extern struct l_struct_struct_OC_hci_cmd_t btstack_background_state;
extern uint8_t profile_debug_enable;

/* Function Declarations */
void aec_sco_connection_start(uint8_t, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void __close_all_a2dp_media_coder(int, ...);
uint32_t stack_send_infor_2_user(struct l_struct_struct_OC_hci_cmd_t*, ...);
void update_bt_current_status(uint8_t*, uint8_t, uint8_t);
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
void bt_event_update_to_user(uint8_t*, uint32_t, uint8_t, uint32_t);
uint16_t sys_timeout_add(uint8_t*, l_fptr_2*, uint32_t);
static void send_sco_disconn(uint8_t*) __ATTRIBUTELIST__((nothrow));
void aec_sco_connection_stop(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t get_esco_coder_busy_flag(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t check_esco_state_via_addr(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint32_t user_send_cmd_prepare(uint32_t, uint16_t, uint8_t*);
void sys_timeout_del(uint16_t);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_45_uint8_t _OC_str = { "[api-info] :aec_sco_connection_start %d %d\n\n" };
static uint16_t disable_sco_timer;
static struct l_array_38_uint8_t str = { "[api-info] :hook_sco_connection_flag\n" };
static struct l_array_41_uint8_t str_OC_6 = { "[api-info] :hook_sco_disconnection_flag\n" };
static struct l_array_32_uint8_t str_OC_7 = { "[api-info] :bd_esco_busy_other\n" };
static struct l_array_34_uint8_t str_OC_8 = { "[api-info] :bd_esco_busy_current\n" };
static struct l_array_26_uint8_t str_OC_9 = { "[api-info] :bd_esco_idle\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}


/* Function Bodies */

void aec_sco_connection_start(uint8_t _1, uint16_t _2, uint8_t* _3) {
  struct l_struct_struct_OC__stack_config* _4;
  uint32_t* _5;
  uint32_t _6;
  uint32_t _7;
  uint8_t* _8;
  uint32_t _9;
  uint8_t _10;
  uint32_t _11;
  uint32_t _12;
  uint32_t _13;
  uint16_t _14;
  uint8_t _15;
  uint32_t _16;

#line 120 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  ;
  ;
  ;
#line 123 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _4 = user_stack_configs;
  _5 = (&_4->field9);
  _6 = __UNALIGNED_LOAD__(uint32_t volatile, 1, _5);
  if ((((((int16_t)(((uint16_t)_6))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _17;
  } else {
    goto _18;
  }

_18:
#line 126 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  if (((((_6 & 16384) == 0u)&1))) {
    goto _19;
  } else {
    goto _20;
  }

_19:
#line 127 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _7 = __UNALIGNED_LOAD__(uint32_t volatile, 1, _5);
  __UNALIGNED_LOAD__(uint32_t volatile, 1, _5) = (_7 | 32768);
#line 128 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _8 = memcpy(((&_4->field14.array[((int32_t)0)])), _3, 6);
#line 130 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
   /*tail*/ ((l_fptr_1*)(void*)__close_all_a2dp_media_coder)();
#line 131 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _9 =  /*tail*/ stack_send_infor_2_user((&btstack_background_state), 1, 1);
#line 132 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 0, 46);
#line 133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _10 = profile_debug_enable;
  _11 = ((uint32_t)(uint8_t)_1);
  _12 = ((uint32_t)(uint16_t)_2);
  if (((((llvm_and_u8(_10, 16)) == ((uint8_t)0))&1))) {
    goto _21;
  } else {
    goto _22;
  }

_22:
  _13 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), _11, _12);
  goto _21;

_21:
#line 134 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
   /*tail*/ bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1129270784u, 25, ((_12 << 16) | _11));
  goto _23;

_20:
#line 142 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _14 =  /*tail*/ sys_timeout_add(((uint8_t*)/*NULL*/0), send_sco_disconn, 100);
  disable_sco_timer = _14;
  goto _23;

_23:
#line 144 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _15 = profile_debug_enable;
  if (((((llvm_and_u8(_15, 16)) == ((uint8_t)0))&1))) {
    goto _17;
  } else {
    goto _24;
  }

_24:
  _16 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  goto _17;

_17:
  return;
}


static void send_sco_disconn(uint8_t* _25) {
  uint32_t _26;
  uint16_t _27;

#line 110 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  ;
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _26 =  /*tail*/ user_send_cmd_prepare(10, 0, ((uint8_t*)/*NULL*/0));
#line 113 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _27 = disable_sco_timer;
  if ((((_27 == ((uint16_t)0))&1))) {
    goto _28;
  } else {
    goto _29;
  }

_29:
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
   /*tail*/ sys_timeout_del(_27);
#line 116 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  disable_sco_timer = 0;
  goto _28;

_28:
  return;
}


void aec_sco_connection_stop(void) {
  struct l_struct_struct_OC__stack_config* _30;
  uint32_t _31;
  struct l_struct_struct_OC__stack_config* _32;
  uint32_t* _33;
  uint32_t _34;
  uint8_t* _35;
  uint32_t _36;
  uint8_t _37;
  uint32_t _38;

#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _30 = user_stack_configs;
  _31 = __UNALIGNED_LOAD__(uint32_t volatile, 1, ((&_30->field9)));
  if ((((((int16_t)(((uint16_t)_31))) < ((int16_t)((uint16_t)0)))&1))) {
    goto _39;
  } else {
    goto _40;
  }

_39:
#line 151 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 0, 45);
#line 156 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
   /*tail*/ bt_event_update_to_user(((uint8_t*)/*NULL*/0), 1129270784u, 25, 255);
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _32 = user_stack_configs;
  _33 = (&_32->field9);
  _34 = __UNALIGNED_LOAD__(uint32_t volatile, 1, _33);
  __UNALIGNED_LOAD__(uint32_t volatile, 1, _33) = (_34 & -32769);
#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _35 = memset(((&_32->field14.array[((int32_t)0)])), 0, 6);
#line 159 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _36 =  /*tail*/ stack_send_infor_2_user((&btstack_background_state), 2, 0);
#line 160 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _37 = profile_debug_enable;
  if (((((llvm_and_u8(_37, 16)) == ((uint8_t)0))&1))) {
    goto _40;
  } else {
    goto _41;
  }

_41:
  _38 =  /*tail*/ puts(((&str_OC_6.array[((int32_t)0)])));
  goto _40;

_40:
  return;
}


uint8_t get_esco_coder_busy_flag(void) {
  struct l_struct_struct_OC__stack_config* _42;
  uint32_t _43;

#line 164 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _42 = user_stack_configs;
  _43 = __UNALIGNED_LOAD__(uint32_t volatile, 1, ((&_42->field9)));
  return (llvm_and_u8((((uint8_t)(llvm_lshr_u32(_43, 15)))), 1));
}


uint8_t check_esco_state_via_addr(uint8_t* _44) {
  struct l_struct_struct_OC__stack_config* _45;
  uint32_t _46;
  uint8_t _47;
  uint32_t _48;
  uint32_t _49;
  uint8_t _50;
  uint32_t _51;
  uint32_t _52;
  uint8_t _53;
  uint8_t _53__PHI_TEMPORARY;

#line 167 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  ;
#line 173 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _45 = user_stack_configs;
  _46 = __UNALIGNED_LOAD__(uint32_t volatile, 1, ((&_45->field9)));
  if ((((((int16_t)(((uint16_t)_46))) > ((int16_t)((uint16_t)-1)))&1))) {
    goto _54;
  } else {
    goto _55;
  }

_54:
#line 174 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _47 = profile_debug_enable;
  if (((((llvm_and_u8(_47, 16)) == ((uint8_t)0))&1))) {
    _53__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _56;
  } else {
    goto _57;
  }

_57:
  _48 =  /*tail*/ puts(((&str_OC_9.array[((int32_t)0)])));
  _53__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _56;

_55:
#line 178 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _49 =  /*tail*/ memcmp(((&_45->field14.array[((int32_t)0)])), _44, 6);
  _50 = profile_debug_enable;
  if ((((_49 == 0u)&1))) {
    goto _58;
  } else {
    goto _59;
  }

_58:
  if (((((llvm_and_u8(_50, 16)) != ((uint8_t)0))&1))) {
    goto _60;
  } else {
    _53__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _56;
  }

_60:
#line 179 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _51 =  /*tail*/ puts(((&str_OC_8.array[((int32_t)0)])));
  _53__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _56;

_59:
  if (((((llvm_and_u8(_50, 16)) != ((uint8_t)0))&1))) {
    goto _61;
  } else {
    _53__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _56;
  }

_61:
#line 182 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
  _52 =  /*tail*/ puts(((&str_OC_7.array[((int32_t)0)])));
  _53__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _56;

_56:
  _53 = _53__PHI_TEMPORARY;
  return _53;
}

