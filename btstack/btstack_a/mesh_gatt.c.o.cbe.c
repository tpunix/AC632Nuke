/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
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
struct l_struct_struct_OC_list_head;
struct l_struct_struct_OC_lbuff_head_btctrler;

/* Function definitions */
typedef uint16_t l_fptr_1(uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_2(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);


/* Types Definitions */
struct l_array_31_uint8_t {
  uint8_t array[31];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_44_uint8_t {
  uint8_t array[44];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_struct_struct_OC_list_head {
  struct l_struct_struct_OC_list_head* field0;
  struct l_struct_struct_OC_list_head* field1;
};
struct l_struct_struct_OC_lbuff_head_btctrler {
  struct l_struct_struct_OC_list_head field0;
  struct l_struct_struct_OC_list_head field1;
};

/* External Global Variable Declarations */
extern uint8_t log_tag_const_i_MESH_GATT;
extern uint8_t log_tag_const_e_MESH_GATT;

/* Function Declarations */
void notify_remain_data(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void log_print(uint32_t, uint8_t*, uint8_t*, ...);
uint8_t* lbuf_pop_btctrler(struct l_struct_struct_OC_lbuff_head_btctrler*);
void printf_buf(uint8_t*, uint32_t);
uint32_t att_server_notify(uint16_t, uint16_t, uint8_t*, uint16_t);
void lbuf_free_btctrler(uint8_t*);
void att_server_request_can_send_now_event(uint16_t);
uint32_t mesh_gatt_notify(uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* lbuf_alloc_btctrler(struct l_struct_struct_OC_lbuff_head_btctrler*, uint32_t);
void lbuf_push_btctrler(uint8_t*);
void mesh_gatt_set_callback(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_set_read_callback(l_fptr_1*);
void att_set_write_callback(l_fptr_2*);
void mesh_gatt_change_profile(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_set_db(uint8_t*);
void mesh_gatt_init(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_lbuff_head_btctrler* lbuf_init_btctrler(uint8_t*, uint32_t);
void le_device_db_init(void);
void att_server_init(uint8_t*, l_fptr_1*, l_fptr_2*);
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
static struct l_array_31_uint8_t _OC_str = { "[Info]: [MESH_GATT]--func=%s\r\n" };
static struct l_array_19_uint8_t __FUNCTION___OC_notify_remain_data = { "notify_remain_data" };
static void* mesh_notify_lbuf_head;
static struct l_array_44_uint8_t _OC_str_OC_1 = { "<Error>: [MESH_GATT]notify error 1 : 0x%x\r\n" };
static struct l_array_17_uint8_t __FUNCTION___OC_mesh_gatt_notify = { "mesh_gatt_notify" };
static struct l_array_44_uint8_t _OC_str_OC_2 = { "<Error>: [MESH_GATT]notify error 0 : 0x%x\r\n" };
static struct l_array_45_uint8_t _OC_str_OC_3 = { "<Error>: [MESH_GATT]Notify_data alloc NULL\r\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}


/* Function Bodies */

void notify_remain_data(uint16_t _1) {
  uint8_t _2;
  struct l_struct_struct_OC_lbuff_head_btctrler* _3;
  uint8_t* _4;
  uint8_t* _5;
  uint16_t* _6;
  uint16_t _7;
  uint16_t _8;
  uint16_t _9;
  uint32_t _10;
  uint8_t _11;

#line 38 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
#line 42 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _2 = log_tag_const_i_MESH_GATT;
  if ((((_2 == ((uint8_t)0))&1))) {
    goto _12;
  } else {
    goto _13;
  }

_13:
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str.array[((int32_t)0)])), ((&__FUNCTION___OC_notify_remain_data.array[((int32_t)0)])));
  goto _12;

_12:
#line 46 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _3 = *((struct l_struct_struct_OC_lbuff_head_btctrler**)(&mesh_notify_lbuf_head));
  _4 =  /*tail*/ lbuf_pop_btctrler(_3);
#line 47 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  if ((((_4 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _14;
  } else {
    goto _15;
  }

_15:
  _5 = (&_4[((int32_t)4)]);
  _6 = ((uint16_t*)((&_4[((int32_t)2)])));
  if ((((_2 == ((uint8_t)0))&1))) {
    goto _16;
  } else {
    goto _17;
  }

_17:
#line 51 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _7 = *_6;
   /*tail*/ printf_buf(_5, (((uint32_t)(uint16_t)_7)));
  goto _16;

_16:
#line 53 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _8 = *(((uint16_t*)_4));
#line 55 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _9 = *_6;
#line 52 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _10 =  /*tail*/ att_server_notify(_1, _8, _5, _9);
#line 40 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
#line 56 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
#line 57 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _11 = log_tag_const_e_MESH_GATT;
#line 56 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  if (((((((_10 != 0u)&1)) & (((_11 != ((uint8_t)0))&1)))&1))) {
    goto _18;
  } else {
    goto _19;
  }

_18:
#line 57 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ log_print(4, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_1.array[((int32_t)0)])), _10);
  goto _19;

_19:
#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ lbuf_free_btctrler(_4);
#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ att_server_request_can_send_now_event(_1);
  goto _14;

_14:
  return;
}


uint32_t mesh_gatt_notify(uint16_t _20, uint16_t _21, uint8_t* _22, uint16_t _23) {
  uint8_t _24;
  uint32_t _25;
  uint8_t _26;
  struct l_struct_struct_OC_lbuff_head_btctrler* _27;
  uint32_t _28;
  uint8_t* _29;
  uint8_t* _30;
  uint32_t _31;
  uint32_t _31__PHI_TEMPORARY;

#line 65 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
  ;
  ;
  ;
#line 67 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _24 = log_tag_const_i_MESH_GATT;
  if ((((_24 == ((uint8_t)0))&1))) {
    goto _32;
  } else {
    goto _33;
  }

_33:
   /*tail*/ log_print(2, ((uint8_t*)/*NULL*/0), ((&_OC_str.array[((int32_t)0)])), ((&__FUNCTION___OC_mesh_gatt_notify.array[((int32_t)0)])));
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ printf_buf(_22, (((uint32_t)(uint16_t)_23)));
  goto _32;

_32:
#line 73 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _25 =  /*tail*/ att_server_notify(_20, _21, _22, _23);
#line 69 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
#line 77 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  if ((((_25 == 0u)&1))) {
    goto _34;
  } else {
    goto _35;
  }

_35:
#line 78 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _26 = log_tag_const_e_MESH_GATT;
  if ((((_26 == ((uint8_t)0))&1))) {
    goto _36;
  } else {
    goto _37;
  }

_37:
   /*tail*/ log_print(4, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_2.array[((int32_t)0)])), _25);
  goto _36;

_36:
#line 83 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _27 = *((struct l_struct_struct_OC_lbuff_head_btctrler**)(&mesh_notify_lbuf_head));
  _28 = ((uint32_t)(uint16_t)_23);
  _29 =  /*tail*/ lbuf_alloc_btctrler(_27, (llvm_add_u32(_28, 4)));
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  if ((((_29 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _38;
  } else {
    goto _39;
  }

_38:
  if ((((_26 == ((uint8_t)0))&1))) {
    _31__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _40;
  } else {
    goto _41;
  }

_41:
#line 86 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ log_print(4, ((uint8_t*)/*NULL*/0), ((&_OC_str_OC_3.array[((int32_t)0)])));
  _31__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _40;

_39:
#line 90 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  *(((uint16_t*)_29)) = _21;
#line 91 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _30 = memcpy(((&_29[((int32_t)4)])), _22, _28);
#line 92 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  *(((uint16_t*)((&_29[((int32_t)2)])))) = _23;
#line 93 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ lbuf_push_btctrler(_29);
  _31__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _40;

_34:
#line 95 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ att_server_request_can_send_now_event(_20);
  _31__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _40;

_40:
  _31 = _31__PHI_TEMPORARY;
  return _31;
}


void mesh_gatt_set_callback(uint8_t* _42, uint8_t* _43) {
#line 101 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
  ;
#line 103 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ att_set_read_callback((((l_fptr_1*)_42)));
#line 105 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ att_set_write_callback((((l_fptr_2*)_43)));
}


void mesh_gatt_change_profile(uint8_t* _44) {
#line 108 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
#line 110 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ att_set_db(_44);
}


void mesh_gatt_init(uint8_t* _45, uint16_t _46) {
  struct l_struct_struct_OC_lbuff_head_btctrler* _47;

#line 113 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  ;
  ;
#line 115 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
  _47 =  /*tail*/ lbuf_init_btctrler(_45, (((uint32_t)(uint16_t)_46)));
  *((struct l_struct_struct_OC_lbuff_head_btctrler**)(&mesh_notify_lbuf_head)) = _47;
#line 117 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ le_device_db_init();
#line 119 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
   /*tail*/ att_server_init(((uint8_t*)/*NULL*/0), ((l_fptr_1*)/*NULL*/0), ((l_fptr_2*)/*NULL*/0));
}

