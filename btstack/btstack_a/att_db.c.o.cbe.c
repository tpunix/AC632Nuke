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
struct l_struct_struct_OC_att_iterator;
struct l_struct_struct_OC_att_connection;
struct l_struct_struct_OC_att_service_handler;
struct l_struct_struct_OC_btstack_linked_list_iterator_t;

/* Function definitions */
typedef uint16_t l_fptr_1(uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);

typedef uint32_t l_fptr_2(uint16_t, uint16_t, uint16_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_3(uint8_t, uint16_t, uint8_t*, uint16_t);


uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t);

/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_btstack_packet_callback_registration_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_3* field1;
};
struct l_struct_struct_OC_att_info_t {
  l_fptr_3* field0;
  l_fptr_3* field1;
  uint8_t field2;
  uint8_t* field3;
  l_fptr_1* field4;
  l_fptr_2* field5;
  uint8_t field6;
  uint16_t field7;
  struct l_struct_struct_OC_btstack_linked_item* field8;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field9;
  struct l_struct_struct_OC_btstack_packet_callback_registration_t field10;
  l_fptr_3* field11;
  struct l_struct_struct_OC_btstack_linked_item* field12;
  uint8_t field13;
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_struct_struct_OC_att_iterator {
  uint8_t* field0;
  uint16_t field1;
  uint16_t field2;
  uint16_t field3;
  uint8_t* field4;
  uint16_t field5;
  uint8_t* field6;
};
struct l_struct_struct_OC_att_connection {
  uint16_t field0;
  uint16_t field1;
  uint16_t field2;
  uint8_t field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_struct_struct_OC_att_service_handler {
  struct l_struct_struct_OC_btstack_linked_item* field0;
  uint16_t field1;
  uint16_t field2;
  l_fptr_1* field3;
  l_fptr_2* field4;
};
struct l_struct_struct_OC_btstack_linked_list_iterator_t {
  uint32_t field0;
  struct l_struct_struct_OC_btstack_linked_item* field1;
  struct l_struct_struct_OC_btstack_linked_item* field2;
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_1_uint8_t {
  uint8_t array[1];
};

/* External Global Variable Declarations */
extern struct l_struct_struct_OC_att_info_t att_global_info;

/* Function Declarations */
uint16_t att_uuid_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint16_t little_endian_read_16(uint8_t*, uint32_t);
void att_set_db(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_set_read_callback(l_fptr_1*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_set_write_callback(l_fptr_2*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_dump_attributes(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void att_iterator_fetch_next(struct l_struct_struct_OC_att_iterator*) __ATTRIBUTELIST__((nothrow));
void reverse_128(uint8_t*, uint8_t*);
void att_clear_transaction_queue(struct l_struct_struct_OC_att_connection*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void att_notify_write_callbacks(struct l_struct_struct_OC_att_connection*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint16_t att_prepare_handle_value_notification(struct l_struct_struct_OC_att_connection*, uint16_t, uint8_t*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t att_prepare_handle_value_indication(struct l_struct_struct_OC_att_connection*, uint16_t, uint8_t*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t att_handle_request(struct l_struct_struct_OC_att_connection*, uint8_t*, uint16_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void att_register_service_handler(struct l_struct_struct_OC_att_service_handler*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static struct l_struct_struct_OC_att_service_handler* att_service_handler_for_handle(uint16_t) __ATTRIBUTELIST__((nothrow));
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint32_t gatt_server_get_get_handle_range_for_service_with_uuid16(uint16_t, uint16_t*, uint16_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
static uint32_t att_iterator_match_uuid16(struct l_struct_struct_OC_att_iterator*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint16_t gatt_server_get_value_handle_for_characteristic_with_uuid16(uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t gatt_server_get_client_configuration_handle_for_characteristic_with_uuid16(uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t att_read_callback_handle_blob(uint8_t*, uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_min(uint32_t, uint32_t);
uint16_t att_read_callback_handle_little_endian_32(uint32_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void little_endian_store_32(uint8_t*, uint16_t, uint32_t);
uint16_t att_read_callback_handle_little_endian_16(uint16_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint16_t att_read_callback_handle_byte(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_linked_list_iterator_init(struct l_struct_struct_OC_btstack_linked_list_iterator_t*, struct l_struct_struct_OC_btstack_linked_item**);
uint32_t btstack_linked_list_iterator_has_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
struct l_struct_struct_OC_btstack_linked_item* btstack_linked_list_iterator_next(struct l_struct_struct_OC_btstack_linked_list_iterator_t*);
uint32_t gatt_client_sync_mtu(uint16_t, uint16_t);
static uint32_t att_iterator_match_uuid(struct l_struct_struct_OC_att_iterator*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static uint8_t att_validate_security(struct l_struct_struct_OC_att_connection*, struct l_struct_struct_OC_att_iterator*) __ATTRIBUTELIST__((nothrow, pure));
static void att_update_value_len(struct l_struct_struct_OC_att_iterator*, uint16_t) __ATTRIBUTELIST__((nothrow));
static uint32_t att_copy_value(struct l_struct_struct_OC_att_iterator*, uint16_t, uint8_t*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow));
static uint32_t is_Bluetooth_Base_UUID(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_16_uint8_t bluetooth_base_uuid = { "\xFB\x34\x9B_\x80\x00\x00\x80\x00\x10\x00\x00\x00\x00\x00" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_select_u8(bool condition, uint8_t iftrue, uint8_t ifnot) {
  uint8_t r;
  r = condition ? iftrue : ifnot;
  return r;
}
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
static __forceinline l_fptr_1** llvm_select_ppl_fptr_1(bool condition, l_fptr_1** iftrue, l_fptr_1** ifnot) {
  l_fptr_1** r;
  r = condition ? iftrue : ifnot;
  return r;
}
static __forceinline l_fptr_2** llvm_select_ppl_fptr_2(bool condition, l_fptr_2** iftrue, l_fptr_2** ifnot) {
  l_fptr_2** r;
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
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
  return r;
}
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
  return r;
}


/* Function Bodies */

uint16_t att_uuid_for_handle(uint16_t _1) {
  struct l_struct_struct_OC_att_iterator _2;    /* Address-exposed local */
  uint8_t* _3;
  uint32_t _4;
  uint16_t _5;
  uint8_t* _6;
  uint16_t _7;
  uint16_t _8;
  uint16_t _8__PHI_TEMPORARY;

  _3 = ((uint8_t*)(&_2));
  _4 = att_find_handle((&_2), _1);
  if ((((_4 == 0u)&1))) {
    _8__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _9;
  } else {
    goto _10;
  }

_10:
  _5 = *((&_2.field2));
  if (((((llvm_and_u16(_5, 512)) == ((uint16_t)0))&1))) {
    goto _11;
  } else {
    _8__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _9;
  }

_11:
  _6 = *((&_2.field4));
  _7 =  /*tail*/ little_endian_read_16(_6, 0);
  _8__PHI_TEMPORARY = _7;   /* for PHI node */
  goto _9;

_9:
  _8 = _8__PHI_TEMPORARY;
  return _8;
}


static uint32_t att_find_handle(struct l_struct_struct_OC_att_iterator* _12, uint16_t _13) {
  uint32_t _14;
  uint8_t** _15;
  uint16_t* _16;
  uint16_t _17;
  uint8_t* _18;
  uint32_t _19;
  uint32_t _19__PHI_TEMPORARY;
  uint32_t _20;
  uint32_t _20__PHI_TEMPORARY;

  if ((((_13 == ((uint16_t)0))&1))) {
    _20__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _21;
  } else {
    goto _22;
  }

_22:
  _14 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)_12)) = _14;
  _15 = (&_12->field0);
  _16 = (&_12->field3);
  if ((((_14 == 0u)&1))) {
    _20__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _21;
  } else {
    goto _23;
  }

_23:
  goto _24;

  do {     /* Syntactic loop '' to make GCC happy */
_24:
   /*tail*/ att_iterator_fetch_next(_12);
  _17 = *_16;
  if ((((_17 == _13)&1))) {
    _19__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _25;
  } else {
    goto _26;
  }

_26:
  _18 = *_15;
  if ((((_18 == ((uint8_t*)/*NULL*/0))&1))) {
    _19__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _25;
  } else {
    goto _24;
  }

  } while (1); /* end of syntactic loop '' */
_25:
  _19 = _19__PHI_TEMPORARY;
  _20__PHI_TEMPORARY = _19;   /* for PHI node */
  goto _21;

_21:
  _20 = _20__PHI_TEMPORARY;
  return _20;
}


void att_set_db(uint8_t* _27) {
  *((&att_global_info.field3)) = _27;
}


void att_set_read_callback(l_fptr_1* _28) {
  *((&att_global_info.field4)) = _28;
}


void att_set_write_callback(l_fptr_2* _29) {
  *((&att_global_info.field5)) = _29;
}


void att_dump_attributes(void) {
  struct l_struct_struct_OC_att_iterator _30;    /* Address-exposed local */
  struct l_array_16_uint8_t _31;    /* Address-exposed local */
  uint8_t* _32;
  uint32_t _33;
  uint8_t* _34;
  uint8_t** _35;
  uint16_t* _36;
  uint16_t* _37;
  uint8_t** _38;
  uint16_t _39;
  uint16_t _40;
  uint8_t* _41;
  uint8_t* _42;

  _32 = ((uint8_t*)(&_30));
  _33 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_30))) = _33;
  _34 = (&_31.array[((int32_t)0)]);
  _35 = (&_30.field0);
  if ((((_33 == 0u)&1))) {
    goto _43;
  } else {
    goto _44;
  }

_44:
  _36 = (&_30.field3);
  _37 = (&_30.field2);
  _38 = (&_30.field4);
  goto _45;

  do {     /* Syntactic loop '' to make GCC happy */
_45:
  att_iterator_fetch_next((&_30));
  _39 = *_36;
  if ((((_39 == ((uint16_t)0))&1))) {
    goto _46;
  } else {
    goto _47;
  }

_47:
  _40 = *_37;
  if (((((llvm_and_u16(_40, 512)) == ((uint16_t)0))&1))) {
    goto _48;
  } else {
    goto _49;
  }

_49:
  _41 = *_38;
  reverse_128(_41, _34);
  goto _48;

_48:
  _42 = *_35;
  if ((((_42 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _46;
  } else {
    goto _45;
  }

  } while (1); /* end of syntactic loop '' */
_46:
  goto _43;

_43:
  return;
}


static void att_iterator_fetch_next(struct l_struct_struct_OC_att_iterator* _50) {
  uint8_t** _51;
  uint8_t* _52;
  uint16_t _53;
  uint16_t* _54;
  uint8_t* _55;
  uint16_t _56;
  uint16_t* _57;
  uint8_t* _58;
  uint16_t _59;
  uint8_t* _60;
  uint8_t* _61;
  uint16_t _62;
  uint16_t _63;
  uint16_t _64;
  uint8_t* _65;
  uint8_t* _66;
  uint16_t _67;
  uint16_t _67__PHI_TEMPORARY;
  uint8_t* _68;
  uint8_t* _68__PHI_TEMPORARY;
  uint16_t _69;
  uint16_t _69__PHI_TEMPORARY;
  uint8_t* _70;
  uint8_t* _70__PHI_TEMPORARY;
  uint8_t* _71;
  uint8_t* _71__PHI_TEMPORARY;

  _51 = (&_50->field0);
  _52 = *_51;
  _53 =  /*tail*/ little_endian_read_16(_52, 0);
  _54 = (&_50->field1);
  *_54 = _53;
  if ((((_53 == ((uint16_t)0))&1))) {
    goto _72;
  } else {
    goto _73;
  }

_72:
  *((&_50->field2)) = 0;
  _67__PHI_TEMPORARY = 0;   /* for PHI node */
  _68__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  _69__PHI_TEMPORARY = 0;   /* for PHI node */
  _70__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  _71__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _74;

_73:
  _55 = *_51;
  _56 =  /*tail*/ little_endian_read_16(_55, 2);
  _57 = (&_50->field2);
  *_57 = _56;
  _58 = *_51;
  _59 =  /*tail*/ little_endian_read_16(_58, 4);
  _60 = *_51;
  _61 = (&_60[((int32_t)6)]);
  _62 = *_57;
  _63 = *_54;
  _64 = llvm_add_u16((llvm_select_u16(((((llvm_and_u16(_62, 512)) == ((uint16_t)0))&1)), -8, -22)), _63);
  _65 = (&_60[((int32_t)(llvm_select_u32(((((llvm_and_u16(_62, 512)) == ((uint16_t)0))&1)), 8, 22)))]);
  _66 = (&_60[((int32_t)(((uint32_t)(uint16_t)_63)))]);
  _67__PHI_TEMPORARY = _59;   /* for PHI node */
  _68__PHI_TEMPORARY = _61;   /* for PHI node */
  _69__PHI_TEMPORARY = _64;   /* for PHI node */
  _70__PHI_TEMPORARY = _65;   /* for PHI node */
  _71__PHI_TEMPORARY = _66;   /* for PHI node */
  goto _74;

_74:
  _67 = _67__PHI_TEMPORARY;
  _68 = _68__PHI_TEMPORARY;
  _69 = _69__PHI_TEMPORARY;
  _70 = _70__PHI_TEMPORARY;
  _71 = _71__PHI_TEMPORARY;
  *((&_50->field3)) = _67;
  *((&_50->field4)) = _68;
  *((&_50->field5)) = _69;
  *((&_50->field6)) = _70;
  *_51 = _71;
}


void att_clear_transaction_queue(struct l_struct_struct_OC_att_connection* _75) {
   /*tail*/ att_notify_write_callbacks(_75, 3);
}


static void att_notify_write_callbacks(struct l_struct_struct_OC_att_connection* _76, uint16_t _77) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _78;    /* Address-exposed local */
  uint8_t* _79;
  uint32_t _80;
  uint16_t* _81;
  struct l_struct_struct_OC_btstack_linked_item* _82;
  l_fptr_2* _83;
  uint32_t _84;
  uint16_t _85;
  uint32_t _86;
  l_fptr_2* _87;
  uint16_t _88;
  uint32_t _89;

  _79 = ((uint8_t*)(&_78));
  btstack_linked_list_iterator_init((&_78), ((&att_global_info.field8)));
  _80 = btstack_linked_list_iterator_has_next((&_78));
  if ((((_80 == 0u)&1))) {
    goto _90;
  } else {
    goto _91;
  }

_91:
  _81 = (&_76->field0);
  goto _92;

  do {     /* Syntactic loop '' to make GCC happy */
_92:
  _82 = btstack_linked_list_iterator_next((&_78));
  _83 = *(((l_fptr_2**)((&_82[((int32_t)3)]))));
  if ((((_83 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _93;
  } else {
    goto _94;
  }

_94:
  _85 = *_81;
  _86 = _83(_85, 0, _77, 0, ((uint8_t*)/*NULL*/0), 0);
  goto _93;

_93:
  _84 = btstack_linked_list_iterator_has_next((&_78));
  if ((((_84 == 0u)&1))) {
    goto _95;
  } else {
    goto _92;
  }

  } while (1); /* end of syntactic loop '' */
_95:
  goto _90;

_90:
  _87 = *((&att_global_info.field5));
  if ((((_87 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _96;
  } else {
    goto _97;
  }

_97:
  _88 = *((&_76->field0));
  _89 = _87(_88, 0, _77, 0, ((uint8_t*)/*NULL*/0), 0);
  goto _96;

_96:
  return;
}


uint16_t att_prepare_handle_value_notification(struct l_struct_struct_OC_att_connection* _98, uint16_t _99, uint8_t* _100, uint16_t _101, uint8_t* _102) {
  uint16_t _103;
  uint32_t _104;
  uint16_t _105;
  uint8_t* _106;

  *_102 = 27;
   /*tail*/ little_endian_store_16(_102, 1, _99);
  _103 = *((&_98->field1));
  _104 = llvm_add_u32((((uint32_t)(uint16_t)_103)), -3);
  _105 = llvm_select_u16((((((int32_t)(((uint32_t)(uint16_t)_101))) > ((int32_t)_104))&1)), (((uint16_t)_104)), _101);
  _106 = memcpy(((&_102[((int32_t)3)])), _100, (((uint32_t)(uint16_t)_105)));
  return (llvm_add_u16(_105, 3));
}


uint16_t att_prepare_handle_value_indication(struct l_struct_struct_OC_att_connection* _107, uint16_t _108, uint8_t* _109, uint16_t _110, uint8_t* _111) {
  uint16_t _112;
  uint32_t _113;
  uint16_t _114;
  uint8_t* _115;

  *_111 = 29;
   /*tail*/ little_endian_store_16(_111, 1, _108);
  _112 = *((&_107->field1));
  _113 = llvm_add_u32((((uint32_t)(uint16_t)_112)), -3);
  _114 = llvm_select_u16((((((int32_t)(((uint32_t)(uint16_t)_110))) > ((int32_t)_113))&1)), (((uint16_t)_113)), _110);
  _115 = memcpy(((&_111[((int32_t)3)])), _109, (((uint32_t)(uint16_t)_114)));
  return (llvm_add_u16(_114, 3));
}


uint16_t att_handle_request(struct l_struct_struct_OC_att_connection* _116, uint8_t* _117, uint16_t _118, uint8_t* _119) {
  struct l_struct_struct_OC_att_iterator _120;    /* Address-exposed local */
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _121;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _122;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _123;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _124;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _125;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _126;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _127;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _128;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _129;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _130;    /* Address-exposed local */
  uint16_t* _131;
  uint16_t _132;
  uint8_t _133;
  uint16_t _134;
  uint16_t _135;
  uint16_t _136;
  uint16_t _137;
  uint16_t _138;
  uint32_t _139;
  uint16_t _140;
  uint16_t _141;
  uint16_t _142;
  uint16_t _143;
  uint32_t _144;
  uint16_t _145;
  uint16_t _146;
  uint8_t* _147;
  uint32_t _148;
  uint8_t** _149;
  uint16_t* _150;
  uint16_t* _151;
  uint32_t _152;
  uint8_t** _153;
  uint16_t _154;
  uint16_t _154__PHI_TEMPORARY;
  uint16_t _155;
  uint16_t _155__PHI_TEMPORARY;
  uint8_t* _156;
  uint16_t _157;
  uint16_t _158;
  uint16_t _159;
  uint16_t _160;
  uint32_t _161;
  uint16_t _162;
  uint16_t _162__PHI_TEMPORARY;
  uint16_t _163;
  uint16_t _163__PHI_TEMPORARY;
  uint32_t _164;
  uint32_t _165;
  uint32_t _166;
  uint8_t* _167;
  uint8_t* _168;
  uint16_t _169;
  uint16_t _170;
  uint16_t _170__PHI_TEMPORARY;
  uint16_t _171;
  uint16_t _171__PHI_TEMPORARY;
  uint16_t _172;
  uint16_t _173;
  uint16_t _174;
  uint16_t _175;
  uint8_t* _176;
  uint8_t* _177;
  uint32_t _178;
  uint8_t** _179;
  uint16_t* _180;
  uint16_t* _181;
  uint8_t** _182;
  uint32_t _183;
  uint32_t _184;
  uint16_t _185;
  uint16_t _185__PHI_TEMPORARY;
  uint16_t _186;
  uint16_t _186__PHI_TEMPORARY;
  uint16_t _187;
  uint16_t _187__PHI_TEMPORARY;
  uint8_t* _188;
  uint16_t _189;
  uint32_t _190;
  uint32_t _191;
  uint16_t _192;
  uint16_t _193;
  uint16_t _193__PHI_TEMPORARY;
  uint16_t _194;
  uint16_t _194__PHI_TEMPORARY;
  uint16_t _195;
  uint16_t _195__PHI_TEMPORARY;
  uint16_t _196;
  uint16_t _196__PHI_TEMPORARY;
  uint16_t _197;
  uint16_t _197__PHI_TEMPORARY;
  uint16_t _198;
  uint16_t _198__PHI_TEMPORARY;
  uint32_t _199;
  uint16_t _200;
  uint8_t* _201;
  uint32_t _202;
  uint16_t _203;
  uint16_t _204;
  uint16_t _204__PHI_TEMPORARY;
  uint16_t _205;
  uint16_t _205__PHI_TEMPORARY;
  uint16_t _206;
  uint16_t _206__PHI_TEMPORARY;
  uint16_t _207;
  uint16_t _208;
  uint16_t _209;
  uint8_t* _210;
  uint8_t* _211;
  uint32_t _212;
  uint8_t** _213;
  uint16_t* _214;
  uint16_t* _215;
  uint16_t* _216;
  uint16_t* _217;
  uint32_t _218;
  uint16_t _219;
  uint8_t _220;
  uint8_t* _221;
  uint16_t _222;
  uint16_t _222__PHI_TEMPORARY;
  uint16_t _223;
  uint16_t _223__PHI_TEMPORARY;
  uint16_t _224;
  uint16_t _224__PHI_TEMPORARY;
  uint16_t _225;
  uint16_t _225__PHI_TEMPORARY;
  uint16_t _226;
  uint8_t* _227;
  uint32_t _228;
  uint16_t _229;
  uint32_t _230;
  uint16_t _231;
  uint8_t* _232;
  uint8_t _233;
  uint16_t _234;
  uint16_t _235;
  uint16_t _236;
  uint32_t _237;
  uint16_t _238;
  uint16_t _238__PHI_TEMPORARY;
  uint16_t _239;
  uint16_t _239__PHI_TEMPORARY;
  uint16_t _240;
  uint16_t _240__PHI_TEMPORARY;
  uint16_t _241;
  uint32_t _242;
  uint16_t _243;
  uint32_t _244;
  uint16_t _245;
  uint8_t* _246;
  uint16_t _247;
  uint16_t _247__PHI_TEMPORARY;
  uint8_t _248;
  uint8_t _248__PHI_TEMPORARY;
  uint16_t _249;
  uint16_t _249__PHI_TEMPORARY;
  uint16_t _250;
  uint16_t _250__PHI_TEMPORARY;
  uint8_t _251;
  uint8_t _251__PHI_TEMPORARY;
  uint16_t _252;
  uint16_t _252__PHI_TEMPORARY;
  uint16_t _253;
  uint16_t _253__PHI_TEMPORARY;
  uint16_t _254;
  uint8_t* _255;
  uint32_t _256;
  uint16_t _257;
  uint32_t _258;
  uint8_t _259;
  uint16_t* _260;
  uint16_t _261;
  uint16_t* _262;
  uint16_t _263;
  uint16_t _264;
  uint16_t _265;
  uint16_t _265__PHI_TEMPORARY;
  uint16_t _266;
  uint32_t _267;
  uint16_t _268;
  uint16_t _269;
  uint16_t _269__PHI_TEMPORARY;
  uint16_t _270;
  uint16_t _271;
  uint8_t* _272;
  uint32_t _273;
  uint16_t _274;
  uint32_t _275;
  uint8_t _276;
  uint16_t* _277;
  uint16_t _278;
  uint16_t* _279;
  uint16_t _280;
  uint16_t _281;
  uint16_t _282;
  uint16_t _282__PHI_TEMPORARY;
  uint16_t _283;
  uint32_t _284;
  uint16_t _285;
  uint16_t _286;
  uint16_t _286__PHI_TEMPORARY;
  uint32_t _287;
  uint8_t* _288;
  uint32_t _289;
  uint8_t* _290;
  uint16_t* _291;
  uint16_t* _292;
  uint16_t* _293;
  uint32_t _294;
  uint16_t _295;
  uint32_t _296;
  uint32_t _296__PHI_TEMPORARY;
  uint32_t _297;
  uint32_t _297__PHI_TEMPORARY;
  uint16_t _298;
  uint32_t _299;
  uint16_t _300;
  uint32_t _301;
  uint8_t _302;
  uint16_t _303;
  uint32_t _304;
  uint16_t _305;
  uint8_t _306;
  uint8_t _306__PHI_TEMPORARY;
  uint16_t _307;
  uint16_t _307__PHI_TEMPORARY;
  uint16_t _308;
  uint32_t _309;
  uint32_t _310;
  uint32_t _311;
  uint16_t _312;
  uint16_t _313;
  uint16_t _313__PHI_TEMPORARY;
  uint16_t _314;
  uint16_t _315;
  uint16_t _316;
  uint8_t* _317;
  uint32_t _318;
  uint32_t _319;
  uint32_t _319__PHI_TEMPORARY;
  uint16_t _320;
  uint8_t* _321;
  uint32_t _322;
  uint8_t** _323;
  uint16_t* _324;
  uint32_t _325;
  uint16_t* _326;
  uint8_t** _327;
  uint16_t _328;
  uint16_t _328__PHI_TEMPORARY;
  uint16_t _329;
  uint16_t _329__PHI_TEMPORARY;
  uint16_t _330;
  uint16_t _330__PHI_TEMPORARY;
  uint16_t _331;
  uint16_t _331__PHI_TEMPORARY;
  uint8_t* _332;
  uint8_t* _332__PHI_TEMPORARY;
  uint32_t _333;
  uint32_t _334;
  uint16_t _335;
  uint16_t _335__PHI_TEMPORARY;
  uint16_t _336;
  uint16_t _336__PHI_TEMPORARY;
  uint16_t _337;
  uint16_t _337__PHI_TEMPORARY;
  uint8_t* _338;
  uint16_t _339;
  uint32_t _340;
  uint32_t _341;
  uint32_t _342;
  uint8_t* _343;
  uint32_t _344;
  uint16_t _345;
  uint16_t _346;
  uint16_t _346__PHI_TEMPORARY;
  uint16_t _347;
  uint16_t _347__PHI_TEMPORARY;
  uint16_t _348;
  uint16_t _348__PHI_TEMPORARY;
  uint16_t _349;
  uint16_t _349__PHI_TEMPORARY;
  uint16_t _350;
  uint16_t _350__PHI_TEMPORARY;
  uint16_t _351;
  uint16_t _351__PHI_TEMPORARY;
  uint32_t _352;
  uint16_t _353;
  uint16_t _354;
  uint32_t _355;
  uint16_t _356;
  uint16_t _356__PHI_TEMPORARY;
  uint16_t _357;
  uint16_t _357__PHI_TEMPORARY;
  uint8_t* _358;
  uint16_t _359;
  uint16_t _359__PHI_TEMPORARY;
  uint16_t _360;
  uint16_t _360__PHI_TEMPORARY;
  uint16_t _361;
  uint16_t _361__PHI_TEMPORARY;
  uint16_t _362;
  uint8_t* _363;
  uint32_t _364;
  struct l_struct_struct_OC_att_service_handler* _365;
  l_fptr_2* _366;
  uint16_t _367;
  uint32_t _368;
  uint8_t _369;
  uint16_t _370;
  uint32_t _371;
  uint8_t _372;
  uint16_t _373;
  uint16_t _373__PHI_TEMPORARY;
  uint16_t _374;
  uint16_t _375;
  struct l_struct_struct_OC_att_service_handler* _376;
  l_fptr_2* _377;
  uint8_t* _378;
  uint32_t _379;
  uint16_t _380;
  uint32_t _381;
  uint8_t _382;
  uint16_t _383;
  uint32_t _384;
  uint32_t _385;
  uint8_t _386;
  uint8_t _387;
  uint8_t* _388;
  uint16_t _389;
  uint16_t _389__PHI_TEMPORARY;
  uint8_t _390;
  uint8_t _391;
  uint8_t* _392;
  uint16_t* _393;
  uint32_t _394;
  struct l_struct_struct_OC_btstack_linked_item* _395;
  l_fptr_2* _396;
  uint16_t _397;
  uint32_t _398;
  uint8_t _399;
  l_fptr_2* _400;
  uint16_t _401;
  uint32_t _402;
  uint8_t _403;
  uint8_t _404;
  uint16_t _405;
  uint16_t _406;
  struct l_struct_struct_OC_att_service_handler* _407;
  l_fptr_2* _408;
  uint8_t* _409;
  uint32_t _410;
  uint16_t _411;
  uint8_t _412;
  uint16_t _413;
  uint32_t _414;
  uint16_t _415;
  uint16_t _415__PHI_TEMPORARY;

  _131 = (&_116->field1);
  _132 = *_131;
  _133 = *_117;
  switch (_133) {
  default:
    _415__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _416;
  case ((uint8_t)2):
    goto _417;
  case ((uint8_t)3):
    goto _418;
  case ((uint8_t)4):
    goto _419;
  case ((uint8_t)6):
    goto _420;
  case ((uint8_t)8):
    goto _421;
  case ((uint8_t)10):
    goto _422;
  case ((uint8_t)12):
    goto _423;
  case ((uint8_t)14):
    goto _424;
  case ((uint8_t)16):
    goto _425;
  case ((uint8_t)18):
    goto _426;
  case ((uint8_t)22):
    goto _427;
  case ((uint8_t)24):
    goto _428;
  case ((uint8_t)82):
    goto _429;
  }

_417:
  _134 =  /*tail*/ little_endian_read_16(_117, 1);
  _135 = *((&_116->field2));
  *_131 = (llvm_select_u16((((((uint16_t)_134) < ((uint16_t)_135))&1)), _134, _135));
  *_119 = 3;
  _136 = *_131;
   /*tail*/ little_endian_store_16(_119, 1, _136);
  _137 = *((&_116->field0));
  _138 = *_131;
  _139 =  /*tail*/ gatt_client_sync_mtu(_137, _138);
  _415__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _416;

_418:
  _140 =  /*tail*/ little_endian_read_16(_117, 1);
  _141 = *((&_116->field2));
  _142 = llvm_select_u16((((((uint16_t)_140) < ((uint16_t)_141))&1)), _140, _141);
  *_131 = _142;
  _143 = *((&_116->field0));
  _144 =  /*tail*/ gatt_client_sync_mtu(_143, _142);
  _415__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _416;

_419:
  _145 =  /*tail*/ little_endian_read_16(_117, 1);
  _146 =  /*tail*/ little_endian_read_16(_117, 3);
  if ((((((uint16_t)(llvm_add_u16(_145, -1))) < ((uint16_t)_146))&1))) {
    goto _430;
  } else {
    goto _431;
  }

_431:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 4;
   /*tail*/ little_endian_store_16(_119, 2, _145);
  *((&_119[((int32_t)4)])) = 1;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_430:
  _147 = ((uint8_t*)(&_130));
  _148 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_130))) = _148;
  _149 = (&_130.field0);
  _150 = (&_130.field3);
  _151 = (&_130.field2);
  _152 = ((uint32_t)(uint16_t)_132);
  _153 = (&_130.field4);
  _154__PHI_TEMPORARY = 1;   /* for PHI node */
  _155__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _432;

  do {     /* Syntactic loop '' to make GCC happy */
_432:
  _154 = _154__PHI_TEMPORARY;
  _155 = _155__PHI_TEMPORARY;
  goto _433;

  do {     /* Syntactic loop '' to make GCC happy */
_433:
  _156 = *_149;
  if ((((_156 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _434;
  } else {
    goto _435;
  }

_435:
  att_iterator_fetch_next((&_130));
  _157 = *_150;
  if ((((((uint16_t)(llvm_add_u16(_157, -1))) < ((uint16_t)_146))&1))) {
    goto _436;
  } else {
    goto _434;
  }

_436:
  if ((((((uint16_t)_157) < ((uint16_t)_145))&1))) {
    goto _433;
  } else {
    goto _437;
  }

  } while (1); /* end of syntactic loop '' */
_437:
  _158 = *_151;
  _159 = llvm_and_u16(_158, 512);
  _160 = llvm_select_u16((((_159 != ((uint16_t)0))&1)), 16, 2);
  _161 = ((uint32_t)(uint16_t)_154);
  if (((((((((uint16_t)_154) < ((uint16_t)((uint16_t)2)))&1)) | (((_160 == _155)&1)))&1))) {
    goto _438;
  } else {
    goto _439;
  }

_438:
  if ((((_154 == ((uint16_t)1))&1))) {
    goto _440;
  } else {
    _162__PHI_TEMPORARY = _154;   /* for PHI node */
    _163__PHI_TEMPORARY = _155;   /* for PHI node */
    goto _441;
  }

_440:
  *((&_119[((int32_t)_161)])) = (((uint8_t)(llvm_add_u32((llvm_lshr_u32((((uint32_t)(uint16_t)_159)), 9)), 1))));
  _162__PHI_TEMPORARY = 2;   /* for PHI node */
  _163__PHI_TEMPORARY = _160;   /* for PHI node */
  goto _441;

_441:
  _162 = _162__PHI_TEMPORARY;
  _163 = _163__PHI_TEMPORARY;
  _164 = llvm_add_u32((((uint32_t)(uint16_t)_162)), 2);
  _165 = ((uint32_t)(uint16_t)_163);
  _166 = llvm_add_u32(_164, _165);
  if ((((((uint32_t)_166) > ((uint32_t)_152))&1))) {
    goto _442;
  } else {
    goto _443;
  }

_443:
   /*tail*/ little_endian_store_16(_119, _162, _157);
  _167 = *_153;
  _168 = memcpy(((&_119[((int32_t)(_164 & 65535))])), _167, _165);
  _169 = ((uint16_t)_166);
  _154__PHI_TEMPORARY = _169;   /* for PHI node */
  _155__PHI_TEMPORARY = _163;   /* for PHI node */
  goto _432;

  } while (1); /* end of syntactic loop '' */
_434:
  goto _444;

_439:
  goto _444;

_444:
  if ((((_154 == ((uint16_t)1))&1))) {
    goto _445;
  } else {
    _170__PHI_TEMPORARY = _154;   /* for PHI node */
    goto _446;
  }

_445:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 4;
   /*tail*/ little_endian_store_16(_119, 2, _145);
  *((&_119[((int32_t)4)])) = 10;
  _171__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _447;

_442:
  _170__PHI_TEMPORARY = _162;   /* for PHI node */
  goto _446;

_446:
  _170 = _170__PHI_TEMPORARY;
  *_119 = 5;
  _171__PHI_TEMPORARY = _170;   /* for PHI node */
  goto _447;

_447:
  _171 = _171__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _171;   /* for PHI node */
  goto _416;

_420:
  _172 = llvm_add_u16(_118, -7);
  _173 =  /*tail*/ little_endian_read_16(_117, 1);
  _174 =  /*tail*/ little_endian_read_16(_117, 3);
  _175 =  /*tail*/ little_endian_read_16(_117, 5);
  _176 = (&_117[((int32_t)7)]);
  if ((((((uint16_t)(llvm_add_u16(_173, -1))) < ((uint16_t)_174))&1))) {
    goto _448;
  } else {
    goto _449;
  }

_449:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 6;
   /*tail*/ little_endian_store_16(_119, 2, _173);
  *((&_119[((int32_t)4)])) = 1;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_448:
  _177 = ((uint8_t*)(&_129));
  _178 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_129))) = _178;
  _179 = (&_129.field0);
  _180 = (&_129.field3);
  _181 = (&_129.field5);
  _182 = (&_129.field6);
  _183 = ((uint32_t)(uint16_t)_132);
  _184 = ((uint32_t)(uint16_t)_172);
  _185__PHI_TEMPORARY = 1;   /* for PHI node */
  _186__PHI_TEMPORARY = 0;   /* for PHI node */
  _187__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _450;

  do {     /* Syntactic loop '' to make GCC happy */
_450:
  _185 = _185__PHI_TEMPORARY;
  _186 = _186__PHI_TEMPORARY;
  _187 = _187__PHI_TEMPORARY;
  goto _451;

  do {     /* Syntactic loop '' to make GCC happy */
_451:
  _188 = *_179;
  if ((((_188 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _452;
  } else {
    goto _453;
  }

_453:
  att_iterator_fetch_next((&_129));
  _189 = *_180;
  if (((((((_189 != ((uint16_t)0))&1)) & (((((uint16_t)_189) < ((uint16_t)_173))&1)))&1))) {
    goto _451;
  } else {
    goto _454;
  }

  } while (1); /* end of syntactic loop '' */
_454:
  if ((((((uint16_t)_189) > ((uint16_t)_174))&1))) {
    _204__PHI_TEMPORARY = _185;   /* for PHI node */
    goto _455;
  } else {
    goto _456;
  }

_456:
  if ((((_186 == ((uint16_t)0))&1))) {
    _193__PHI_TEMPORARY = _185;   /* for PHI node */
    goto _457;
  } else {
    goto _458;
  }

_458:
  if ((((_189 == ((uint16_t)0))&1))) {
    goto _459;
  } else {
    goto _460;
  }

_460:
  _190 = att_iterator_match_uuid16((&_129), 10240);
  if ((((_190 == 0u)&1))) {
    goto _461;
  } else {
    goto _459;
  }

_461:
  _191 = att_iterator_match_uuid16((&_129), 10241);
  if ((((_191 == 0u)&1))) {
    _197__PHI_TEMPORARY = _186;   /* for PHI node */
    _198__PHI_TEMPORARY = _185;   /* for PHI node */
    goto _462;
  } else {
    goto _459;
  }

_459:
   /*tail*/ little_endian_store_16(_119, _185, _187);
  _192 = llvm_add_u16(_185, 2);
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_192)), 4))) > ((uint32_t)_183))&1))) {
    _204__PHI_TEMPORARY = _192;   /* for PHI node */
    goto _455;
  } else {
    _193__PHI_TEMPORARY = _192;   /* for PHI node */
    goto _457;
  }

_457:
  _193 = _193__PHI_TEMPORARY;
  if ((((_189 == ((uint16_t)0))&1))) {
    _194__PHI_TEMPORARY = _193;   /* for PHI node */
    _195__PHI_TEMPORARY = 0;   /* for PHI node */
    _196__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _463;
  } else {
    _197__PHI_TEMPORARY = 0;   /* for PHI node */
    _198__PHI_TEMPORARY = _193;   /* for PHI node */
    goto _462;
  }

_462:
  _197 = _197__PHI_TEMPORARY;
  _198 = _198__PHI_TEMPORARY;
  _199 = att_iterator_match_uuid16((&_129), _175);
  _200 = *_181;
  if (((((((_199 != 0u)&1)) & (((_200 == _172)&1)))&1))) {
    goto _464;
  } else {
    _194__PHI_TEMPORARY = _198;   /* for PHI node */
    _195__PHI_TEMPORARY = _197;   /* for PHI node */
    _196__PHI_TEMPORARY = _189;   /* for PHI node */
    goto _463;
  }

_464:
  _201 = *_182;
  _202 =  /*tail*/ memcmp(_176, _201, _184);
  if ((((_202 == 0u)&1))) {
    goto _465;
  } else {
    _194__PHI_TEMPORARY = _198;   /* for PHI node */
    _195__PHI_TEMPORARY = _197;   /* for PHI node */
    _196__PHI_TEMPORARY = _189;   /* for PHI node */
    goto _463;
  }

_465:
   /*tail*/ little_endian_store_16(_119, _198, _189);
  _203 = llvm_add_u16(_198, 2);
  _194__PHI_TEMPORARY = _203;   /* for PHI node */
  _195__PHI_TEMPORARY = 1;   /* for PHI node */
  _196__PHI_TEMPORARY = _189;   /* for PHI node */
  goto _463;

_463:
  _194 = _194__PHI_TEMPORARY;
  _195 = _195__PHI_TEMPORARY;
  _196 = _196__PHI_TEMPORARY;
  _185__PHI_TEMPORARY = _194;   /* for PHI node */
  _186__PHI_TEMPORARY = _195;   /* for PHI node */
  _187__PHI_TEMPORARY = _196;   /* for PHI node */
  goto _450;

  } while (1); /* end of syntactic loop '' */
_452:
  _205__PHI_TEMPORARY = _185;   /* for PHI node */
  goto _466;

_455:
  _204 = _204__PHI_TEMPORARY;
  _205__PHI_TEMPORARY = _204;   /* for PHI node */
  goto _466;

_466:
  _205 = _205__PHI_TEMPORARY;
  if ((((_205 == ((uint16_t)1))&1))) {
    goto _467;
  } else {
    goto _468;
  }

_467:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 6;
   /*tail*/ little_endian_store_16(_119, 2, _173);
  *((&_119[((int32_t)4)])) = 10;
  _206__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _469;

_468:
  *_119 = 7;
  _206__PHI_TEMPORARY = _205;   /* for PHI node */
  goto _469;

_469:
  _206 = _206__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _206;   /* for PHI node */
  goto _416;

_421:
  _207 = llvm_select_u16((((((uint16_t)_118) < ((uint16_t)((uint16_t)8)))&1)), 2, 16);
  _208 =  /*tail*/ little_endian_read_16(_117, 1);
  _209 =  /*tail*/ little_endian_read_16(_117, 3);
  _210 = (&_117[((int32_t)5)]);
  if ((((((uint16_t)(llvm_add_u16(_208, -1))) < ((uint16_t)_209))&1))) {
    goto _470;
  } else {
    goto _471;
  }

_471:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 8;
   /*tail*/ little_endian_store_16(_119, 2, _208);
  *((&_119[((int32_t)4)])) = 1;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_470:
  _211 = ((uint8_t*)(&_128));
  _212 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_128))) = _212;
  _213 = (&_128.field0);
  if ((((_212 == 0u)&1))) {
    goto _472;
  } else {
    goto _473;
  }

_472:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 8;
  goto _474;

_473:
  _214 = (&_128.field3);
  _215 = (&_128.field2);
  _216 = (&_116->field0);
  _217 = (&_128.field5);
  _218 = ((uint32_t)(uint16_t)_132);
  _219 = llvm_add_u16(_132, -4);
  _220 = llvm_add_u8((((uint8_t)_219)), 2);
  _221 = (&_119[((int32_t)1)]);
  _222__PHI_TEMPORARY = 0;   /* for PHI node */
  _223__PHI_TEMPORARY = 0;   /* for PHI node */
  _224__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _475;

  do {     /* Syntactic loop '' to make GCC happy */
_475:
  _222 = _222__PHI_TEMPORARY;
  _223 = _223__PHI_TEMPORARY;
  _224 = _224__PHI_TEMPORARY;
  _225__PHI_TEMPORARY = _222;   /* for PHI node */
  goto _476;

  do {     /* Syntactic loop '' to make GCC happy */
_476:
  _225 = _225__PHI_TEMPORARY;
  goto _477;

  do {     /* Syntactic loop '' to make GCC happy */
_477:
  att_iterator_fetch_next((&_128));
  _226 = *_214;
  if ((((_226 == ((uint16_t)0))&1))) {
    goto _478;
  } else {
    goto _479;
  }

_479:
  if ((((((uint16_t)_226) < ((uint16_t)_208))&1))) {
    goto _480;
  } else {
    goto _481;
  }

_481:
  if ((((((uint16_t)_226) > ((uint16_t)_209))&1))) {
    goto _478;
  } else {
    goto _482;
  }

_482:
  _228 = att_iterator_match_uuid((&_128), _210, _207);
  if ((((_228 == 0u)&1))) {
    goto _480;
  } else {
    goto _483;
  }

_480:
  _227 = *_213;
  if ((((_227 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _478;
  } else {
    goto _477;
  }

  } while (1); /* end of syntactic loop '' */
_483:
  _229 = *_215;
  _230 = ((uint32_t)(uint16_t)_229);
  if (((((_230 & 2) == 0u)&1))) {
    goto _484;
  } else {
    goto _485;
  }

_484:
  _231 = llvm_select_u16((((_225 == ((uint16_t)0))&1)), _226, _225);
  _232 = *_213;
  if ((((_232 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _486;
  } else {
    _225__PHI_TEMPORARY = _231;   /* for PHI node */
    goto _476;
  }

  } while (1); /* end of syntactic loop '' */
_485:
  if (((((_230 & 1) == 0u)&1))) {
    goto _487;
  } else {
    goto _488;
  }

_487:
  _233 = att_validate_security(_116, (&_128));
  if ((((_233 == ((uint8_t)0))&1))) {
    goto _488;
  } else {
    _247__PHI_TEMPORARY = _224;   /* for PHI node */
    _248__PHI_TEMPORARY = _233;   /* for PHI node */
    goto _489;
  }

_488:
  _234 = *_216;
  att_update_value_len((&_128), _234);
  _235 = *_217;
  _236 = llvm_add_u16(_235, 2);
  _237 = ((uint32_t)(uint16_t)_224);
  if (((((((((uint16_t)_224) < ((uint16_t)((uint16_t)2)))&1)) | (((_223 == _236)&1)))&1))) {
    goto _490;
  } else {
    _247__PHI_TEMPORARY = _224;   /* for PHI node */
    _248__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _489;
  }

_490:
  if ((((_224 == ((uint16_t)1))&1))) {
    goto _491;
  } else {
    _238__PHI_TEMPORARY = _224;   /* for PHI node */
    _239__PHI_TEMPORARY = _223;   /* for PHI node */
    goto _492;
  }

_491:
  *((&_119[((int32_t)_237)])) = (((uint8_t)_236));
  _238__PHI_TEMPORARY = 2;   /* for PHI node */
  _239__PHI_TEMPORARY = _236;   /* for PHI node */
  goto _492;

_492:
  _238 = _238__PHI_TEMPORARY;
  _239 = _239__PHI_TEMPORARY;
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_239)), (((uint32_t)(uint16_t)_238))))) > ((uint32_t)_218))&1))) {
    goto _493;
  } else {
    _240__PHI_TEMPORARY = _235;   /* for PHI node */
    goto _494;
  }

_493:
  if ((((((uint16_t)_238) > ((uint16_t)((uint16_t)2)))&1))) {
    goto _495;
  } else {
    goto _496;
  }

_496:
  *_217 = _219;
  *_221 = _220;
  _240__PHI_TEMPORARY = _219;   /* for PHI node */
  goto _494;

_494:
  _240 = _240__PHI_TEMPORARY;
  _241 = *_214;
   /*tail*/ little_endian_store_16(_119, _238, _241);
  _242 = ((uint32_t)(uint16_t)(llvm_add_u16(_238, 2)));
  _243 = *_216;
  _244 = att_copy_value((&_128), 0, ((&_119[((int32_t)_242)])), _240, _243);
  _245 = ((uint16_t)(llvm_add_u32(_244, _242)));
  _246 = *_213;
  if ((((_246 == ((uint8_t*)/*NULL*/0))&1))) {
    _247__PHI_TEMPORARY = _245;   /* for PHI node */
    _248__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _489;
  } else {
    _222__PHI_TEMPORARY = _225;   /* for PHI node */
    _223__PHI_TEMPORARY = _239;   /* for PHI node */
    _224__PHI_TEMPORARY = _245;   /* for PHI node */
    goto _475;
  }

  } while (1); /* end of syntactic loop '' */
_478:
  _249__PHI_TEMPORARY = _224;   /* for PHI node */
  _250__PHI_TEMPORARY = _225;   /* for PHI node */
  _251__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _497;

_486:
  _249__PHI_TEMPORARY = _224;   /* for PHI node */
  _250__PHI_TEMPORARY = _231;   /* for PHI node */
  _251__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _497;

_489:
  _247 = _247__PHI_TEMPORARY;
  _248 = _248__PHI_TEMPORARY;
  _249__PHI_TEMPORARY = _247;   /* for PHI node */
  _250__PHI_TEMPORARY = _225;   /* for PHI node */
  _251__PHI_TEMPORARY = _248;   /* for PHI node */
  goto _497;

_497:
  _249 = _249__PHI_TEMPORARY;
  _250 = _250__PHI_TEMPORARY;
  _251 = _251__PHI_TEMPORARY;
  if ((((((uint16_t)_249) > ((uint16_t)((uint16_t)1)))&1))) {
    _252__PHI_TEMPORARY = _249;   /* for PHI node */
    goto _498;
  } else {
    goto _499;
  }

_495:
  _252__PHI_TEMPORARY = _238;   /* for PHI node */
  goto _498;

_498:
  _252 = _252__PHI_TEMPORARY;
  *_119 = 9;
  _253__PHI_TEMPORARY = _252;   /* for PHI node */
  goto _500;

_499:
  if ((((_251 == ((uint8_t)0))&1))) {
    goto _501;
  } else {
    goto _502;
  }

_502:
  *_119 = 1;
  *_221 = 8;
   /*tail*/ little_endian_store_16(_119, 2, _208);
  *((&_119[((int32_t)4)])) = _251;
  _253__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _500;

_501:
  *_119 = 1;
  *_221 = 8;
  if ((((_250 == ((uint16_t)0))&1))) {
    goto _474;
  } else {
    goto _503;
  }

_503:
   /*tail*/ little_endian_store_16(_119, 2, _250);
  *((&_119[((int32_t)4)])) = 2;
  _253__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _500;

_474:
   /*tail*/ little_endian_store_16(_119, 2, _208);
  *((&_119[((int32_t)4)])) = 10;
  _253__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _500;

_500:
  _253 = _253__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _253;   /* for PHI node */
  goto _416;

_422:
  _254 =  /*tail*/ little_endian_read_16(_117, 1);
  _255 = ((uint8_t*)(&_127));
  _256 = att_find_handle((&_127), _254);
  if ((((_256 == 0u)&1))) {
    goto _504;
  } else {
    goto _505;
  }

_504:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 10;
   /*tail*/ little_endian_store_16(_119, 2, _254);
  *((&_119[((int32_t)4)])) = 1;
  _269__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _506;

_505:
  _257 = *((&_127.field2));
  _258 = ((uint32_t)(uint16_t)_257);
  if (((((_258 & 2) == 0u)&1))) {
    goto _507;
  } else {
    goto _508;
  }

_507:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 10;
   /*tail*/ little_endian_store_16(_119, 2, _254);
  *((&_119[((int32_t)4)])) = 2;
  _269__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _506;

_508:
  if (((((_258 & 1) == 0u)&1))) {
    goto _509;
  } else {
    goto _510;
  }

_509:
  _259 = att_validate_security(_116, (&_127));
  if ((((_259 == ((uint8_t)0))&1))) {
    goto _510;
  } else {
    goto _511;
  }

_511:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 10;
   /*tail*/ little_endian_store_16(_119, 2, _254);
  *((&_119[((int32_t)4)])) = _259;
  _269__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _506;

_510:
  _260 = (&_116->field0);
  _261 = *_260;
  att_update_value_len((&_127), _261);
  _262 = (&_127.field5);
  _263 = *_262;
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_263)), 1))) > ((uint32_t)(((uint32_t)(uint16_t)_132))))&1))) {
    goto _512;
  } else {
    _265__PHI_TEMPORARY = _263;   /* for PHI node */
    goto _513;
  }

_512:
  _264 = llvm_add_u16(_132, -1);
  *_262 = _264;
  _265__PHI_TEMPORARY = _264;   /* for PHI node */
  goto _513;

_513:
  _265 = _265__PHI_TEMPORARY;
  _266 = *_260;
  _267 = att_copy_value((&_127), 0, ((&_119[((int32_t)1)])), _265, _266);
  _268 = ((uint16_t)(llvm_add_u32(_267, 1)));
  *_119 = 11;
  _269__PHI_TEMPORARY = _268;   /* for PHI node */
  goto _506;

_506:
  _269 = _269__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _269;   /* for PHI node */
  goto _416;

_423:
  _270 =  /*tail*/ little_endian_read_16(_117, 1);
  _271 =  /*tail*/ little_endian_read_16(_117, 3);
  _272 = ((uint8_t*)(&_126));
  _273 = att_find_handle((&_126), _270);
  if ((((_273 == 0u)&1))) {
    goto _514;
  } else {
    goto _515;
  }

_514:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 12;
   /*tail*/ little_endian_store_16(_119, 2, _270);
  *((&_119[((int32_t)4)])) = 1;
  _286__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _516;

_515:
  _274 = *((&_126.field2));
  _275 = ((uint32_t)(uint16_t)_274);
  if (((((_275 & 2) == 0u)&1))) {
    goto _517;
  } else {
    goto _518;
  }

_517:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 12;
   /*tail*/ little_endian_store_16(_119, 2, _270);
  *((&_119[((int32_t)4)])) = 2;
  _286__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _516;

_518:
  if (((((_275 & 1) == 0u)&1))) {
    goto _519;
  } else {
    goto _520;
  }

_519:
  _276 = att_validate_security(_116, (&_126));
  if ((((_276 == ((uint8_t)0))&1))) {
    goto _520;
  } else {
    goto _521;
  }

_521:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 12;
   /*tail*/ little_endian_store_16(_119, 2, _270);
  *((&_119[((int32_t)4)])) = _276;
  _286__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _516;

_520:
  _277 = (&_116->field0);
  _278 = *_277;
  att_update_value_len((&_126), _278);
  _279 = (&_126.field5);
  _280 = *_279;
  if ((((((uint16_t)_280) < ((uint16_t)_271))&1))) {
    goto _522;
  } else {
    goto _523;
  }

_522:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 12;
   /*tail*/ little_endian_store_16(_119, 2, _270);
  *((&_119[((int32_t)4)])) = 7;
  _286__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _516;

_523:
  if ((((((int32_t)(llvm_add_u32((llvm_sub_u32(1, (((uint32_t)(uint16_t)_271)))), (((uint32_t)(uint16_t)_280))))) > ((int32_t)(((uint32_t)(uint16_t)_132))))&1))) {
    goto _524;
  } else {
    _282__PHI_TEMPORARY = _280;   /* for PHI node */
    goto _525;
  }

_524:
  _281 = llvm_add_u16((llvm_add_u16(_132, -1)), _271);
  *_279 = _281;
  _282__PHI_TEMPORARY = _281;   /* for PHI node */
  goto _525;

_525:
  _282 = _282__PHI_TEMPORARY;
  _283 = *_277;
  _284 = att_copy_value((&_126), _271, ((&_119[((int32_t)1)])), (llvm_sub_u16(_282, _271)), _283);
  _285 = ((uint16_t)(llvm_add_u32(_284, 1)));
  *_119 = 13;
  _286__PHI_TEMPORARY = _285;   /* for PHI node */
  goto _516;

_516:
  _286 = _286__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _286;   /* for PHI node */
  goto _416;

_424:
  _287 = llvm_lshr_u32((llvm_add_u32((((uint32_t)(uint16_t)_118)), 131071)), 1);
  _288 = (&_117[((int32_t)1)]);
  _289 = _287 & 65535;
  if (((((((uint16_t)_287)) == ((uint16_t)0))&1))) {
    _313__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _526;
  } else {
    goto _527;
  }

_527:
  _290 = ((uint8_t*)(&_125));
  _291 = (&_125.field2);
  _292 = (&_116->field0);
  _293 = (&_125.field5);
  _294 = ((uint32_t)(uint16_t)_132);
  _295 = llvm_add_u16(_132, -1);
  _296__PHI_TEMPORARY = 1;   /* for PHI node */
  _297__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _528;

  do {     /* Syntactic loop '' to make GCC happy */
_528:
  _296 = _296__PHI_TEMPORARY;
  _297 = _297__PHI_TEMPORARY;
  _298 =  /*tail*/ little_endian_read_16(_288, (_297 << 1));
  if ((((_298 == ((uint16_t)0))&1))) {
    goto _529;
  } else {
    goto _530;
  }

_530:
  _299 = att_find_handle((&_125), _298);
  if ((((_299 == 0u)&1))) {
    goto _531;
  } else {
    goto _532;
  }

_532:
  _300 = *_291;
  _301 = ((uint32_t)(uint16_t)_300);
  if (((((_301 & 2) == 0u)&1))) {
    _306__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _533;
  } else {
    goto _534;
  }

_534:
  if (((((_301 & 1) == 0u)&1))) {
    goto _535;
  } else {
    goto _536;
  }

_535:
  _302 = att_validate_security(_116, (&_125));
  if ((((_302 == ((uint8_t)0))&1))) {
    goto _536;
  } else {
    _306__PHI_TEMPORARY = _302;   /* for PHI node */
    goto _533;
  }

_536:
  _303 = *_292;
  att_update_value_len((&_125), _303);
  _304 = _296 & 65535;
  _305 = *_293;
  if ((((((uint32_t)(llvm_add_u32((((uint32_t)(uint16_t)_305)), _304))) > ((uint32_t)_294))&1))) {
    goto _537;
  } else {
    _307__PHI_TEMPORARY = _305;   /* for PHI node */
    goto _538;
  }

_537:
  *_293 = _295;
  _307__PHI_TEMPORARY = _295;   /* for PHI node */
  goto _538;

_538:
  _307 = _307__PHI_TEMPORARY;
  _308 = *_292;
  _309 = att_copy_value((&_125), 0, ((&_119[((int32_t)_304)])), _307, _308);
  _310 = llvm_add_u32(_309, _304);
  _311 = llvm_add_u32(_297, 1);
  if ((((((int32_t)_311) < ((int32_t)_289))&1))) {
    _296__PHI_TEMPORARY = _310;   /* for PHI node */
    _297__PHI_TEMPORARY = _311;   /* for PHI node */
    goto _528;
  } else {
    goto _539;
  }

  } while (1); /* end of syntactic loop '' */
_529:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 14;
   /*tail*/ little_endian_store_16(_119, 2, 0);
  *((&_119[((int32_t)4)])) = 1;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_531:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 14;
   /*tail*/ little_endian_store_16(_119, 2, _298);
  *((&_119[((int32_t)4)])) = 1;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_533:
  _306 = _306__PHI_TEMPORARY;
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 14;
   /*tail*/ little_endian_store_16(_119, 2, _298);
  *((&_119[((int32_t)4)])) = _306;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_539:
  _312 = ((uint16_t)_310);
  _313__PHI_TEMPORARY = _312;   /* for PHI node */
  goto _526;

_526:
  _313 = _313__PHI_TEMPORARY;
  *_119 = 15;
  _415__PHI_TEMPORARY = _313;   /* for PHI node */
  goto _416;

_425:
  _314 = llvm_select_u16((((((uint16_t)_118) < ((uint16_t)((uint16_t)8)))&1)), 2, 16);
  _315 =  /*tail*/ little_endian_read_16(_117, 1);
  _316 =  /*tail*/ little_endian_read_16(_117, 3);
  _317 = (&_117[((int32_t)5)]);
  if ((((((uint16_t)(llvm_add_u16(_315, -1))) < ((uint16_t)_316))&1))) {
    goto _540;
  } else {
    goto _541;
  }

_541:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 16;
   /*tail*/ little_endian_store_16(_119, 2, _315);
  *((&_119[((int32_t)4)])) = 1;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_540:
  if ((((((uint16_t)_118) < ((uint16_t)((uint16_t)8)))&1))) {
    _319__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _542;
  } else {
    goto _543;
  }

_543:
  _318 =  /*tail*/ is_Bluetooth_Base_UUID(_317);
  if ((((_318 == 0u)&1))) {
    goto _544;
  } else {
    _319__PHI_TEMPORARY = 12;   /* for PHI node */
    goto _542;
  }

_542:
  _319 = _319__PHI_TEMPORARY;
  _320 =  /*tail*/ little_endian_read_16(_317, _319);
  if (((((llvm_and_u16(_320, -2)) == ((uint16_t)10240))&1))) {
    goto _545;
  } else {
    goto _544;
  }

_544:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 16;
   /*tail*/ little_endian_store_16(_119, 2, _315);
  *((&_119[((int32_t)4)])) = 16;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_545:
  _321 = ((uint8_t*)(&_124));
  _322 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_124))) = _322;
  _323 = (&_124.field0);
  _324 = (&_124.field3);
  _325 = ((uint32_t)(uint16_t)_132);
  _326 = (&_124.field5);
  _327 = (&_124.field6);
  _328__PHI_TEMPORARY = 1;   /* for PHI node */
  _329__PHI_TEMPORARY = 0;   /* for PHI node */
  _330__PHI_TEMPORARY = 0;   /* for PHI node */
  _331__PHI_TEMPORARY = 0;   /* for PHI node */
  _332__PHI_TEMPORARY = ((uint8_t*)/*NULL*/0);   /* for PHI node */
  goto _546;

  do {     /* Syntactic loop '' to make GCC happy */
_546:
  _328 = _328__PHI_TEMPORARY;
  _329 = _329__PHI_TEMPORARY;
  _330 = _330__PHI_TEMPORARY;
  _331 = _331__PHI_TEMPORARY;
  _332 = _332__PHI_TEMPORARY;
  _333 = ((uint32_t)(uint16_t)_329);
  _334 = llvm_add_u32(_333, -4);
  _335__PHI_TEMPORARY = _328;   /* for PHI node */
  _336__PHI_TEMPORARY = _330;   /* for PHI node */
  _337__PHI_TEMPORARY = _331;   /* for PHI node */
  goto _547;

  do {     /* Syntactic loop '' to make GCC happy */
_547:
  _335 = _335__PHI_TEMPORARY;
  _336 = _336__PHI_TEMPORARY;
  _337 = _337__PHI_TEMPORARY;
  goto _548;

  do {     /* Syntactic loop '' to make GCC happy */
_548:
  _338 = *_323;
  if ((((_338 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _549;
  } else {
    goto _550;
  }

_550:
  att_iterator_fetch_next((&_124));
  _339 = *_324;
  if (((((((_339 != ((uint16_t)0))&1)) & (((((uint16_t)_339) < ((uint16_t)_315))&1)))&1))) {
    goto _548;
  } else {
    goto _551;
  }

  } while (1); /* end of syntactic loop '' */
_551:
  if ((((((uint16_t)_339) > ((uint16_t)_316))&1))) {
    _359__PHI_TEMPORARY = _335;   /* for PHI node */
    goto _552;
  } else {
    goto _553;
  }

_553:
  if ((((_336 == ((uint16_t)0))&1))) {
    _346__PHI_TEMPORARY = _335;   /* for PHI node */
    goto _554;
  } else {
    goto _555;
  }

_555:
  if ((((_339 == ((uint16_t)0))&1))) {
    goto _556;
  } else {
    goto _557;
  }

_557:
  _340 = att_iterator_match_uuid16((&_124), 10240);
  if ((((_340 == 0u)&1))) {
    goto _558;
  } else {
    goto _556;
  }

_558:
  _341 = att_iterator_match_uuid16((&_124), 10241);
  if ((((_341 == 0u)&1))) {
    _350__PHI_TEMPORARY = _336;   /* for PHI node */
    _351__PHI_TEMPORARY = _335;   /* for PHI node */
    goto _559;
  } else {
    goto _556;
  }

_556:
   /*tail*/ little_endian_store_16(_119, _335, _331);
   /*tail*/ little_endian_store_16(_119, (llvm_add_u16(_335, 2)), _337);
  _342 = ((uint32_t)(uint16_t)(llvm_add_u16(_335, 4)));
  _343 = memcpy(((&_119[((int32_t)_342)])), _332, _334);
  _344 = llvm_add_u32(_342, _334);
  _345 = ((uint16_t)_344);
  if ((((((uint32_t)(llvm_add_u32((_344 & 65535), _333))) > ((uint32_t)_325))&1))) {
    _359__PHI_TEMPORARY = _345;   /* for PHI node */
    goto _552;
  } else {
    _346__PHI_TEMPORARY = _345;   /* for PHI node */
    goto _554;
  }

_554:
  _346 = _346__PHI_TEMPORARY;
  if ((((_339 == ((uint16_t)0))&1))) {
    _347__PHI_TEMPORARY = _346;   /* for PHI node */
    _348__PHI_TEMPORARY = 0;   /* for PHI node */
    _349__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _560;
  } else {
    _350__PHI_TEMPORARY = 0;   /* for PHI node */
    _351__PHI_TEMPORARY = _346;   /* for PHI node */
    goto _559;
  }

_559:
  _350 = _350__PHI_TEMPORARY;
  _351 = _351__PHI_TEMPORARY;
  _352 = att_iterator_match_uuid((&_124), _317, _314);
  if ((((_352 == 0u)&1))) {
    _347__PHI_TEMPORARY = _351;   /* for PHI node */
    _348__PHI_TEMPORARY = _350;   /* for PHI node */
    _349__PHI_TEMPORARY = _339;   /* for PHI node */
    goto _560;
  } else {
    goto _561;
  }

_560:
  _347 = _347__PHI_TEMPORARY;
  _348 = _348__PHI_TEMPORARY;
  _349 = _349__PHI_TEMPORARY;
  _335__PHI_TEMPORARY = _347;   /* for PHI node */
  _336__PHI_TEMPORARY = _348;   /* for PHI node */
  _337__PHI_TEMPORARY = _349;   /* for PHI node */
  goto _547;

  } while (1); /* end of syntactic loop '' */
_561:
  _353 = *_326;
  _354 = llvm_add_u16(_353, 4);
  _355 = ((uint32_t)(uint16_t)_351);
  if (((((((((uint16_t)_351) < ((uint16_t)((uint16_t)2)))&1)) | (((_354 == _329)&1)))&1))) {
    goto _562;
  } else {
    goto _563;
  }

_562:
  if ((((_351 == ((uint16_t)1))&1))) {
    goto _564;
  } else {
    _356__PHI_TEMPORARY = _351;   /* for PHI node */
    _357__PHI_TEMPORARY = _329;   /* for PHI node */
    goto _565;
  }

_564:
  *((&_119[((int32_t)_355)])) = (((uint8_t)_354));
  _356__PHI_TEMPORARY = 2;   /* for PHI node */
  _357__PHI_TEMPORARY = _354;   /* for PHI node */
  goto _565;

_565:
  _356 = _356__PHI_TEMPORARY;
  _357 = _357__PHI_TEMPORARY;
  _358 = *_327;
  _328__PHI_TEMPORARY = _356;   /* for PHI node */
  _329__PHI_TEMPORARY = _357;   /* for PHI node */
  _330__PHI_TEMPORARY = 1;   /* for PHI node */
  _331__PHI_TEMPORARY = _339;   /* for PHI node */
  _332__PHI_TEMPORARY = _358;   /* for PHI node */
  goto _546;

  } while (1); /* end of syntactic loop '' */
_549:
  _360__PHI_TEMPORARY = _335;   /* for PHI node */
  goto _566;

_552:
  _359 = _359__PHI_TEMPORARY;
  _360__PHI_TEMPORARY = _359;   /* for PHI node */
  goto _566;

_563:
  _360__PHI_TEMPORARY = _351;   /* for PHI node */
  goto _566;

_566:
  _360 = _360__PHI_TEMPORARY;
  if ((((_360 == ((uint16_t)1))&1))) {
    goto _567;
  } else {
    goto _568;
  }

_567:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 16;
   /*tail*/ little_endian_store_16(_119, 2, _315);
  *((&_119[((int32_t)4)])) = 10;
  _361__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _569;

_568:
  *_119 = 17;
  _361__PHI_TEMPORARY = _360;   /* for PHI node */
  goto _569;

_569:
  _361 = _361__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _361;   /* for PHI node */
  goto _416;

_426:
  _362 =  /*tail*/ little_endian_read_16(_117, 1);
  _363 = ((uint8_t*)(&_123));
  _364 = att_find_handle((&_123), _362);
  if ((((_364 == 0u)&1))) {
    goto _570;
  } else {
    goto _571;
  }

_570:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 18;
   /*tail*/ little_endian_store_16(_119, 2, _362);
  *((&_119[((int32_t)4)])) = 1;
  _373__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _572;

_571:
  _365 =  /*tail*/ att_service_handler_for_handle(_362);
  _366 = *(llvm_select_ppl_fptr_2((((_365 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1)), ((&att_global_info.field5)), ((&_365->field4))));
  if ((((_366 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _573;
  } else {
    goto _574;
  }

_573:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 18;
   /*tail*/ little_endian_store_16(_119, 2, _362);
  *((&_119[((int32_t)4)])) = 3;
  _373__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _572;

_574:
  _367 = *((&_123.field2));
  _368 = ((uint32_t)(uint16_t)_367);
  if (((((_368 & 8) == 0u)&1))) {
    goto _575;
  } else {
    goto _576;
  }

_575:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 18;
   /*tail*/ little_endian_store_16(_119, 2, _362);
  *((&_119[((int32_t)4)])) = 3;
  _373__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _572;

_576:
  if (((((_368 & 256) == 0u)&1))) {
    goto _577;
  } else {
    goto _578;
  }

_577:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 18;
   /*tail*/ little_endian_store_16(_119, 2, _362);
  *((&_119[((int32_t)4)])) = 3;
  _373__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _572;

_578:
  _369 = att_validate_security(_116, (&_123));
  if ((((_369 == ((uint8_t)0))&1))) {
    goto _579;
  } else {
    goto _580;
  }

_580:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 18;
   /*tail*/ little_endian_store_16(_119, 2, _362);
  *((&_119[((int32_t)4)])) = _369;
  _373__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _572;

_579:
  _370 = *((&_116->field0));
  _371 =  /*tail*/ _366(_370, _362, 0, 0, ((&_117[((int32_t)3)])), (llvm_add_u16(_118, -3)));
  _372 = ((uint8_t)_371);
  if ((((_372 == ((uint8_t)0))&1))) {
    goto _581;
  } else {
    goto _582;
  }

_582:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 18;
   /*tail*/ little_endian_store_16(_119, 2, _362);
  *((&_119[((int32_t)4)])) = _372;
  _373__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _572;

_581:
  *_119 = 19;
  _373__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _572;

_572:
  _373 = _373__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _373;   /* for PHI node */
  goto _416;

_427:
  _374 =  /*tail*/ little_endian_read_16(_117, 1);
  _375 =  /*tail*/ little_endian_read_16(_117, 3);
  _376 =  /*tail*/ att_service_handler_for_handle(_374);
  _377 = *(llvm_select_ppl_fptr_2((((_376 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1)), ((&att_global_info.field5)), ((&_376->field4))));
  if ((((_377 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _583;
  } else {
    goto _584;
  }

_583:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 22;
   /*tail*/ little_endian_store_16(_119, 2, _374);
  *((&_119[((int32_t)4)])) = 3;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_584:
  _378 = ((uint8_t*)(&_122));
  _379 = att_find_handle((&_122), _374);
  if ((((_379 == 0u)&1))) {
    goto _585;
  } else {
    goto _586;
  }

_585:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 22;
   /*tail*/ little_endian_store_16(_119, 2, _374);
  *((&_119[((int32_t)4)])) = 1;
  _389__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _587;

_586:
  _380 = *((&_122.field2));
  _381 = ((uint32_t)(uint16_t)_380);
  if (((((_381 & 8) == 0u)&1))) {
    goto _588;
  } else {
    goto _589;
  }

_588:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 22;
   /*tail*/ little_endian_store_16(_119, 2, _374);
  *((&_119[((int32_t)4)])) = 3;
  _389__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _587;

_589:
  if (((((_381 & 256) == 0u)&1))) {
    goto _590;
  } else {
    goto _591;
  }

_590:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 22;
   /*tail*/ little_endian_store_16(_119, 2, _374);
  *((&_119[((int32_t)4)])) = 3;
  _389__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _587;

_591:
  _382 = att_validate_security(_116, (&_122));
  if ((((_382 == ((uint8_t)0))&1))) {
    goto _592;
  } else {
    goto _593;
  }

_593:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 22;
   /*tail*/ little_endian_store_16(_119, 2, _374);
  *((&_119[((int32_t)4)])) = _382;
  _389__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _587;

_592:
  _383 = *((&_116->field0));
  _384 = ((uint32_t)(uint16_t)_118);
  _385 =  /*tail*/ _377(_383, _374, 1, _375, ((&_117[((int32_t)5)])), (llvm_add_u16(_118, -5)));
  _386 = ((uint8_t)_385);
  switch (_386) {
  default:
    goto _594;
  case ((uint8_t)0):
    goto _595;
  case ((uint8_t)7):
    goto _596;
  case ((uint8_t)13):
    goto _596;
  }

_596:
  _387 = *((&att_global_info.field6));
  if (((((((_386 != ((uint8_t)13))&1)) | (((_387 == _386)&1)))&1))) {
    goto _597;
  } else {
    goto _598;
  }

_597:
  if (((((((_386 == ((uint8_t)7))&1)) & (((_387 == ((uint8_t)0))&1)))&1))) {
    goto _598;
  } else {
    goto _595;
  }

_598:
  *((&att_global_info.field6)) = _386;
  *((&att_global_info.field7)) = _374;
  goto _595;

_594:
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 22;
   /*tail*/ little_endian_store_16(_119, 2, _374);
  *((&_119[((int32_t)4)])) = _386;
  _389__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _587;

_595:
  _388 = memcpy(_119, _117, _384);
  *_119 = 23;
  _389__PHI_TEMPORARY = _118;   /* for PHI node */
  goto _587;

_587:
  _389 = _389__PHI_TEMPORARY;
  _415__PHI_TEMPORARY = _389;   /* for PHI node */
  goto _416;

_428:
  _390 = *((&_117[((int32_t)1)]));
  if ((((_390 == ((uint8_t)0))&1))) {
    goto _599;
  } else {
    goto _600;
  }

_600:
  _391 = *((&att_global_info.field6));
  if ((((_391 == ((uint8_t)0))&1))) {
    goto _601;
  } else {
    goto _602;
  }

_601:
  _392 = ((uint8_t*)(&_121));
  btstack_linked_list_iterator_init((&_121), ((&att_global_info.field8)));
  _393 = (&_116->field0);
  goto _603;

  do {     /* Syntactic loop '' to make GCC happy */
_603:
  goto _604;

  do {     /* Syntactic loop '' to make GCC happy */
_604:
  _394 = btstack_linked_list_iterator_has_next((&_121));
  if ((((_394 == 0u)&1))) {
    goto _605;
  } else {
    goto _606;
  }

_606:
  _395 = btstack_linked_list_iterator_next((&_121));
  _396 = *(((l_fptr_2**)((&_395[((int32_t)3)]))));
  if ((((_396 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _604;
  } else {
    goto _607;
  }

  } while (1); /* end of syntactic loop '' */
_607:
  _397 = *_393;
  _398 = _396(_397, 0, 4, 0, ((uint8_t*)/*NULL*/0), 0);
  _399 = ((uint8_t)_398);
  if ((((_399 == ((uint8_t)0))&1))) {
    goto _603;
  } else {
    goto _608;
  }

  } while (1); /* end of syntactic loop '' */
_608:
  *((&att_global_info.field6)) = _399;
  goto _602;

_605:
  _400 = *((&att_global_info.field5));
  if ((((_400 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _609;
  } else {
    goto _610;
  }

_609:
  *((&att_global_info.field6)) = 0;
  goto _611;

_610:
  _401 = *_393;
  _402 = _400(_401, 0, 4, 0, ((uint8_t*)/*NULL*/0), 0);
  _403 = ((uint8_t)_402);
  *((&att_global_info.field6)) = _403;
  if ((((_403 == ((uint8_t)0))&1))) {
    goto _611;
  } else {
    goto _602;
  }

_602:
  att_notify_write_callbacks(_116, 3);
  _404 = *((&att_global_info.field6));
  _405 = *((&att_global_info.field7));
  *((&att_global_info.field6)) = 0;
  *((&att_global_info.field7)) = 0;
  *_119 = 1;
  *((&_119[((int32_t)1)])) = 24;
  little_endian_store_16(_119, 2, _405);
  *((&_119[((int32_t)4)])) = _404;
  _415__PHI_TEMPORARY = 5;   /* for PHI node */
  goto _416;

_611:
  att_notify_write_callbacks(_116, 2);
  goto _612;

_599:
   /*tail*/ att_notify_write_callbacks(_116, 3);
  goto _612;

_612:
  *_119 = 25;
  _415__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _416;

_429:
  _406 =  /*tail*/ little_endian_read_16(_117, 1);
  _407 =  /*tail*/ att_service_handler_for_handle(_406);
  _408 = *(llvm_select_ppl_fptr_2((((_407 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1)), ((&att_global_info.field5)), ((&_407->field4))));
  if ((((_408 == ((l_fptr_2*)/*NULL*/0))&1))) {
    _415__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _416;
  } else {
    goto _613;
  }

_613:
  _409 = ((uint8_t*)(&_120));
  _410 = att_find_handle((&_120), _406);
  if ((((_410 == 0u)&1))) {
    goto _614;
  } else {
    goto _615;
  }

_615:
  _411 = *((&_120.field2));
  if (((((llvm_and_u16(_411, 260)) == ((uint16_t)260))&1))) {
    goto _616;
  } else {
    goto _614;
  }

_616:
  _412 = att_validate_security(_116, (&_120));
  if ((((_412 == ((uint8_t)0))&1))) {
    goto _617;
  } else {
    goto _614;
  }

_617:
  _413 = *((&_116->field0));
  _414 =  /*tail*/ _408(_413, _406, 0, 0, ((&_117[((int32_t)3)])), (llvm_add_u16(_118, -3)));
  goto _614;

_614:
  _415__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _416;

_416:
  _415 = _415__PHI_TEMPORARY;
  return _415;
}


void att_register_service_handler(struct l_struct_struct_OC_att_service_handler* _618) {
  uint16_t _619;
  struct l_struct_struct_OC_att_service_handler* _620;
  uint16_t _621;
  struct l_struct_struct_OC_att_service_handler* _622;

  _619 = *((&_618->field1));
  _620 =  /*tail*/ att_service_handler_for_handle(_619);
  if ((((_620 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1))) {
    goto _623;
  } else {
    goto _624;
  }

_623:
  _621 = *((&_618->field2));
  _622 =  /*tail*/ att_service_handler_for_handle(_621);
  if ((((_622 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1))) {
    goto _625;
  } else {
    goto _624;
  }

_625:
   /*tail*/ btstack_linked_list_add(((&att_global_info.field8)), (((struct l_struct_struct_OC_btstack_linked_item*)_618)));
  goto _624;

_624:
  return;
}


static struct l_struct_struct_OC_att_service_handler* att_service_handler_for_handle(uint16_t _626) {
  struct l_struct_struct_OC_btstack_linked_list_iterator_t _627;    /* Address-exposed local */
  uint8_t* _628;
  uint32_t _629;
  struct l_struct_struct_OC_btstack_linked_item* _630;
  uint16_t _631;
  struct l_struct_struct_OC_att_service_handler* _632;
  uint16_t _633;
  struct l_struct_struct_OC_att_service_handler* _634;
  struct l_struct_struct_OC_att_service_handler* _634__PHI_TEMPORARY;

  _628 = ((uint8_t*)(&_627));
  btstack_linked_list_iterator_init((&_627), ((&att_global_info.field8)));
  goto _635;

  do {     /* Syntactic loop '' to make GCC happy */
_635:
  goto _636;

  do {     /* Syntactic loop '' to make GCC happy */
_636:
  _629 = btstack_linked_list_iterator_has_next((&_627));
  if ((((_629 == 0u)&1))) {
    goto _637;
  } else {
    goto _638;
  }

_638:
  _630 = btstack_linked_list_iterator_next((&_627));
  _631 = *(((uint16_t*)((&_630[((int32_t)1)]))));
  if ((((((uint16_t)_631) > ((uint16_t)_626))&1))) {
    goto _636;
  } else {
    goto _639;
  }

  } while (1); /* end of syntactic loop '' */
_639:
  _632 = ((struct l_struct_struct_OC_att_service_handler*)_630);
  _633 = *((&_632->field2));
  if ((((((uint16_t)_633) < ((uint16_t)_626))&1))) {
    goto _635;
  } else {
    goto _640;
  }

  } while (1); /* end of syntactic loop '' */
_637:
  _634__PHI_TEMPORARY = ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0);   /* for PHI node */
  goto _641;

_640:
  _634__PHI_TEMPORARY = _632;   /* for PHI node */
  goto _641;

_641:
  _634 = _634__PHI_TEMPORARY;
  return _634;
}


uint32_t gatt_server_get_get_handle_range_for_service_with_uuid16(uint16_t _642, uint16_t* _643, uint16_t* _644) {
  struct l_array_2_uint8_t _645;    /* Address-exposed local */
  struct l_struct_struct_OC_att_iterator _646;    /* Address-exposed local */
  uint8_t* _647;
  uint8_t* _648;
  uint32_t _649;
  uint8_t** _650;
  uint16_t* _651;
  uint16_t* _652;
  uint8_t** _653;
  bool _654;
  bool _654__PHI_TEMPORARY;
  uint16_t _655;
  uint16_t _655__PHI_TEMPORARY;
  uint16_t _656;
  uint16_t _656__PHI_TEMPORARY;
  uint32_t _657;
  uint32_t _658;
  bool _659;
  bool _659__PHI_TEMPORARY;
  uint16_t _660;
  uint16_t _661;
  uint8_t* _662;
  uint32_t _663;
  uint8_t* _664;
  uint8_t* _665;
  uint32_t _666;
  uint32_t _666__PHI_TEMPORARY;

  _647 = (&_645.array[((int32_t)0)]);
  little_endian_store_16(_647, 0, _642);
  _648 = ((uint8_t*)(&_646));
  _649 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_646))) = _649;
  _650 = (&_646.field0);
  if ((((_649 == 0u)&1))) {
    _666__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _667;
  } else {
    goto _668;
  }

_668:
  _651 = (&_646.field3);
  _652 = (&_646.field5);
  _653 = (&_646.field6);
  _654__PHI_TEMPORARY = 0;   /* for PHI node */
  _655__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _669;

  do {     /* Syntactic loop '' to make GCC happy */
_669:
  _654 = ((_654__PHI_TEMPORARY)&1);
  _655 = _655__PHI_TEMPORARY;
  _656__PHI_TEMPORARY = _655;   /* for PHI node */
  goto _670;

  do {     /* Syntactic loop '' to make GCC happy */
_670:
  _656 = _656__PHI_TEMPORARY;
  att_iterator_fetch_next((&_646));
  _657 = att_iterator_match_uuid16((&_646), 10240);
  if ((((_657 == 0u)&1))) {
    goto _671;
  } else {
    _659__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _672;
  }

_671:
  _658 = att_iterator_match_uuid16((&_646), 10241);
  _659__PHI_TEMPORARY = (((_658 != 0u)&1));   /* for PHI node */
  goto _672;

_672:
  _659 = ((_659__PHI_TEMPORARY)&1);
  _660 = *_651;
  if ((((_654 & (((_659 | (((_660 == ((uint16_t)0))&1)))&1)))&1))) {
    goto _673;
  } else {
    goto _674;
  }

_674:
  _661 = *_652;
  if (((((((_659 & (((_660 != ((uint16_t)0))&1)))&1)) & (((_661 == ((uint16_t)2))&1)))&1))) {
    goto _675;
  } else {
    goto _676;
  }

_675:
  _662 = *_653;
  _663 = memcmp(_647, _662, 2);
  if ((((_663 == 0u)&1))) {
    goto _677;
  } else {
    goto _676;
  }

_676:
  _664 = *_650;
  if ((((_664 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _678;
  } else {
    _656__PHI_TEMPORARY = _660;   /* for PHI node */
    goto _670;
  }

  } while (1); /* end of syntactic loop '' */
_677:
  *_643 = _660;
  _665 = *_650;
  if ((((_665 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _679;
  } else {
    _654__PHI_TEMPORARY = 1;   /* for PHI node */
    _655__PHI_TEMPORARY = _660;   /* for PHI node */
    goto _669;
  }

  } while (1); /* end of syntactic loop '' */
_673:
  *_644 = _656;
  _666__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _667;

_678:
  _666__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _667;

_679:
  _666__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _667;

_667:
  _666 = _666__PHI_TEMPORARY;
  return _666;
}


static uint32_t att_iterator_match_uuid16(struct l_struct_struct_OC_att_iterator* _680, uint16_t _681) {
  uint16_t _682;
  uint16_t _683;
  uint8_t* _684;
  uint32_t _685;
  uint16_t _686;
  uint16_t _687;
  bool _688;
  bool _688__PHI_TEMPORARY;

  _682 = *((&_680->field3));
  if ((((_682 == ((uint16_t)0))&1))) {
    _688__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _689;
  } else {
    goto _690;
  }

_690:
  _683 = *((&_680->field2));
  _684 = *((&_680->field4));
  if (((((llvm_and_u16(_683, 512)) == ((uint16_t)0))&1))) {
    goto _691;
  } else {
    goto _692;
  }

_692:
  _685 =  /*tail*/ is_Bluetooth_Base_UUID(_684);
  if ((((_685 == 0u)&1))) {
    _688__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _689;
  } else {
    goto _693;
  }

_693:
  _686 =  /*tail*/ little_endian_read_16(_684, 12);
  _688__PHI_TEMPORARY = (((_686 == _681)&1));   /* for PHI node */
  goto _689;

_691:
  _687 =  /*tail*/ little_endian_read_16(_684, 0);
  _688__PHI_TEMPORARY = (((_687 == _681)&1));   /* for PHI node */
  goto _689;

_689:
  _688 = ((_688__PHI_TEMPORARY)&1);
  return (((uint32_t)(bool)_688));
}


uint16_t gatt_server_get_value_handle_for_characteristic_with_uuid16(uint16_t _694, uint16_t _695, uint16_t _696) {
  struct l_struct_struct_OC_att_iterator _697;    /* Address-exposed local */
  uint8_t* _698;
  uint32_t _699;
  uint8_t** _700;
  uint16_t* _701;
  uint16_t _702;
  uint32_t _703;
  uint8_t* _704;
  uint16_t _705;
  uint16_t _705__PHI_TEMPORARY;
  uint16_t _706;
  uint16_t _706__PHI_TEMPORARY;

  _698 = ((uint8_t*)(&_697));
  _699 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_697))) = _699;
  _700 = (&_697.field0);
  if ((((_699 == 0u)&1))) {
    _706__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _707;
  } else {
    goto _708;
  }

_708:
  _701 = (&_697.field3);
  goto _709;

  do {     /* Syntactic loop '' to make GCC happy */
_709:
  att_iterator_fetch_next((&_697));
  _702 = *_701;
  if (((((((_702 != ((uint16_t)0))&1)) & (((((uint16_t)_702) < ((uint16_t)_694))&1)))&1))) {
    goto _710;
  } else {
    goto _711;
  }

_711:
  if ((((((uint16_t)(llvm_add_u16(_702, -1))) < ((uint16_t)_695))&1))) {
    goto _712;
  } else {
    _705__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _713;
  }

_712:
  _703 = att_iterator_match_uuid16((&_697), _696);
  if ((((_703 == 0u)&1))) {
    goto _710;
  } else {
    _705__PHI_TEMPORARY = _702;   /* for PHI node */
    goto _713;
  }

_710:
  _704 = *_700;
  if ((((_704 == ((uint8_t*)/*NULL*/0))&1))) {
    _705__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _713;
  } else {
    goto _709;
  }

  } while (1); /* end of syntactic loop '' */
_713:
  _705 = _705__PHI_TEMPORARY;
  _706__PHI_TEMPORARY = _705;   /* for PHI node */
  goto _707;

_707:
  _706 = _706__PHI_TEMPORARY;
  return _706;
}


uint16_t gatt_server_get_client_configuration_handle_for_characteristic_with_uuid16(uint16_t _714, uint16_t _715, uint16_t _716) {
  struct l_struct_struct_OC_att_iterator _717;    /* Address-exposed local */
  uint8_t* _718;
  uint32_t _719;
  uint8_t** _720;
  uint16_t* _721;
  uint32_t _722;
  uint32_t _722__PHI_TEMPORARY;
  uint16_t _723;
  uint32_t _724;
  uint32_t _725;
  uint32_t _726;
  uint32_t _727;
  uint32_t _728;
  uint32_t _728__PHI_TEMPORARY;
  uint8_t* _729;
  uint32_t _730;
  uint8_t* _731;
  uint16_t _732;
  uint16_t _732__PHI_TEMPORARY;
  uint16_t _733;
  uint16_t _733__PHI_TEMPORARY;

  _718 = ((uint8_t*)(&_717));
  _719 = *((uint32_t*)((&att_global_info.field3)));
  *(((uint32_t*)(&_717))) = _719;
  _720 = (&_717.field0);
  if ((((_719 == 0u)&1))) {
    _733__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _734;
  } else {
    goto _735;
  }

_735:
  _721 = (&_717.field3);
  _722__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _736;

  do {     /* Syntactic loop '' to make GCC happy */
_736:
  _722 = _722__PHI_TEMPORARY;
  goto _737;

  do {     /* Syntactic loop '' to make GCC happy */
_737:
  att_iterator_fetch_next((&_717));
  _723 = *_721;
  if (((((((_723 != ((uint16_t)0))&1)) & (((((uint16_t)_723) < ((uint16_t)_714))&1)))&1))) {
    goto _738;
  } else {
    goto _739;
  }

_739:
  if ((((((uint16_t)(llvm_add_u16(_723, -1))) < ((uint16_t)_715))&1))) {
    goto _740;
  } else {
    _732__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _741;
  }

_740:
  _724 = att_iterator_match_uuid16((&_717), _716);
  if ((((_724 == 0u)&1))) {
    goto _742;
  } else {
    goto _743;
  }

_742:
  _725 = att_iterator_match_uuid16((&_717), 10240);
  if ((((_725 == 0u)&1))) {
    goto _744;
  } else {
    goto _745;
  }

_744:
  _726 = att_iterator_match_uuid16((&_717), 10241);
  if ((((_726 == 0u)&1))) {
    goto _746;
  } else {
    goto _745;
  }

_746:
  _727 = att_iterator_match_uuid16((&_717), 10243);
  if ((((_727 == 0u)&1))) {
    goto _747;
  } else {
    goto _745;
  }

_747:
  _730 = att_iterator_match_uuid16((&_717), 10498);
  if ((((_730 == 0u)&1))) {
    goto _738;
  } else {
    _732__PHI_TEMPORARY = _723;   /* for PHI node */
    goto _741;
  }

_738:
  _731 = *_720;
  if ((((_731 == ((uint8_t*)/*NULL*/0))&1))) {
    _732__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _741;
  } else {
    goto _737;
  }

  } while (1); /* end of syntactic loop '' */
_743:
  _728__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _748;

_745:
  if ((((_722 == 0u)&1))) {
    _728__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _748;
  } else {
    goto _749;
  }

_748:
  _728 = _728__PHI_TEMPORARY;
  _729 = *_720;
  if ((((_729 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _749;
  } else {
    _722__PHI_TEMPORARY = _728;   /* for PHI node */
    goto _736;
  }

  } while (1); /* end of syntactic loop '' */
_741:
  _732 = _732__PHI_TEMPORARY;
  _733__PHI_TEMPORARY = _732;   /* for PHI node */
  goto _734;

_749:
  _733__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _734;

_734:
  _733 = _733__PHI_TEMPORARY;
  return _733;
}


uint16_t att_read_callback_handle_blob(uint8_t* _750, uint16_t _751, uint16_t _752, uint8_t* _753, uint16_t _754) {
  uint32_t _755;
  uint32_t _756;
  uint16_t _757;
  uint8_t* _758;
  uint16_t _759;
  uint16_t _759__PHI_TEMPORARY;

  if ((((_753 == ((uint8_t*)/*NULL*/0))&1))) {
    _759__PHI_TEMPORARY = _751;   /* for PHI node */
    goto _760;
  } else {
    goto _761;
  }

_761:
  _755 = ((uint32_t)(uint16_t)_752);
  _756 =  /*tail*/ btstack_min((llvm_sub_u32((((uint32_t)(uint16_t)_751)), _755)), (((uint32_t)(uint16_t)_754)));
  _757 = ((uint16_t)_756);
  _758 = memcpy(_753, ((&_750[((int32_t)_755)])), (_756 & 65535));
  _759__PHI_TEMPORARY = _757;   /* for PHI node */
  goto _760;

_760:
  _759 = _759__PHI_TEMPORARY;
  return _759;
}


uint16_t att_read_callback_handle_little_endian_32(uint32_t _762, uint16_t _763, uint8_t* _764, uint16_t _765) {
  struct l_array_4_uint8_t _766;    /* Address-exposed local */
  uint8_t* _767;
  uint16_t _768;

  _767 = (&_766.array[((int32_t)0)]);
  little_endian_store_32(_767, 0, _762);
  _768 = att_read_callback_handle_blob(_767, 4, _763, _764, _765);
  return _768;
}


uint16_t att_read_callback_handle_little_endian_16(uint16_t _769, uint16_t _770, uint8_t* _771, uint16_t _772) {
  struct l_array_2_uint8_t _773;    /* Address-exposed local */
  uint8_t* _774;
  uint16_t _775;

  _774 = (&_773.array[((int32_t)0)]);
  little_endian_store_16(_774, 0, _769);
  _775 = att_read_callback_handle_blob(_774, 2, _770, _771, _772);
  return _775;
}


uint16_t att_read_callback_handle_byte(uint8_t _776, uint16_t _777, uint8_t* _778, uint16_t _779) {
  struct l_array_1_uint8_t _780;    /* Address-exposed local */
  uint8_t* _781;
  uint16_t _782;

  _781 = (&_780.array[((int32_t)0)]);
  *_781 = _776;
  _782 = att_read_callback_handle_blob(_781, 1, _777, _778, _779);
  return _782;
}


static uint32_t att_iterator_match_uuid(struct l_struct_struct_OC_att_iterator* _783, uint8_t* _784, uint16_t _785) {
  uint16_t _786;
  uint16_t _787;
  uint32_t _788;
  uint16_t _789;
  uint8_t* _790;
  uint32_t _791;
  uint32_t _792;
  uint32_t _793;
  uint16_t _794;
  uint8_t* _795;
  uint16_t _796;
  uint32_t _797;
  uint32_t _798;
  uint32_t _798__PHI_TEMPORARY;

  _786 = *((&_783->field3));
  if ((((_786 == ((uint16_t)0))&1))) {
    _798__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _799;
  } else {
    goto _800;
  }

_800:
  if ((((_785 == ((uint16_t)2))&1))) {
    goto _801;
  } else {
    goto _802;
  }

_801:
  _787 =  /*tail*/ little_endian_read_16(_784, 0);
  _788 =  /*tail*/ att_iterator_match_uuid16(_783, _787);
  _798__PHI_TEMPORARY = _788;   /* for PHI node */
  goto _799;

_802:
  _789 = *((&_783->field2));
  if (((((llvm_and_u16(_789, 512)) == ((uint16_t)0))&1))) {
    goto _803;
  } else {
    goto _804;
  }

_804:
  _790 = *((&_783->field4));
  _791 =  /*tail*/ memcmp(_790, _784, 16);
  _792 = ((uint32_t)(bool)(((_791 == 0u)&1)));
  _798__PHI_TEMPORARY = _792;   /* for PHI node */
  goto _799;

_803:
  _793 =  /*tail*/ is_Bluetooth_Base_UUID(_784);
  if ((((_793 == 0u)&1))) {
    _798__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _799;
  } else {
    goto _805;
  }

_805:
  _794 =  /*tail*/ little_endian_read_16(_784, 12);
  _795 = *((&_783->field4));
  _796 =  /*tail*/ little_endian_read_16(_795, 0);
  _797 = ((uint32_t)(bool)(((_794 == _796)&1)));
  _798__PHI_TEMPORARY = _797;   /* for PHI node */
  goto _799;

_799:
  _798 = _798__PHI_TEMPORARY;
  return _798;
}


static uint8_t att_validate_security(struct l_struct_struct_OC_att_connection* _806, struct l_struct_struct_OC_att_iterator* _807) {
  uint16_t _808;
  uint32_t _809;
  uint32_t _810;
  uint8_t _811;
  uint8_t _812;
  uint8_t _813;
  uint8_t _814;
  uint8_t _815;
  uint8_t _815__PHI_TEMPORARY;

  _808 = *((&_807->field2));
  _809 = llvm_lshr_u32((((uint32_t)(uint16_t)_808)), 12);
  _810 = llvm_select_u32((((_809 == 0u)&1)), 0, (llvm_add_u32(_809, 1)));
  if (((((llvm_and_u16(_808, 1024)) == ((uint16_t)0))&1))) {
    goto _816;
  } else {
    goto _817;
  }

_817:
  _811 = *((&_806->field4));
  if ((((_811 == ((uint8_t)0))&1))) {
    _815__PHI_TEMPORARY = 5;   /* for PHI node */
    goto _818;
  } else {
    goto _816;
  }

_816:
  if (((((llvm_and_u16(_808, 2048)) == ((uint16_t)0))&1))) {
    goto _819;
  } else {
    goto _820;
  }

_820:
  _812 = *((&_806->field5));
  if ((((_812 == ((uint8_t)0))&1))) {
    _815__PHI_TEMPORARY = 8;   /* for PHI node */
    goto _818;
  } else {
    goto _819;
  }

_819:
  _813 = *((&_806->field3));
  if (((((((_813 == ((uint8_t)0))&1)) & (((~((((_809 == 0u)&1))))&1)))&1))) {
    _815__PHI_TEMPORARY = 15;   /* for PHI node */
    goto _818;
  } else {
    goto _821;
  }

_821:
  _814 = llvm_select_u8((((((uint32_t)_810) > ((uint32_t)(((uint32_t)(uint8_t)_813))))&1)), 12, 0);
  _815__PHI_TEMPORARY = _814;   /* for PHI node */
  goto _818;

_818:
  _815 = _815__PHI_TEMPORARY;
  return _815;
}


static void att_update_value_len(struct l_struct_struct_OC_att_iterator* _822, uint16_t _823) {
  uint16_t _824;
  uint16_t* _825;
  uint16_t _826;
  struct l_struct_struct_OC_att_service_handler* _827;
  l_fptr_1* _828;
  uint16_t _829;
  uint16_t _830;

  _824 = *((&_822->field2));
  if (((((llvm_and_u16(_824, 256)) == ((uint16_t)0))&1))) {
    goto _831;
  } else {
    goto _832;
  }

_832:
  _825 = (&_822->field3);
  _826 = *_825;
  _827 =  /*tail*/ att_service_handler_for_handle(_826);
  _828 = *(llvm_select_ppl_fptr_1((((_827 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1)), ((&att_global_info.field4)), ((&_827->field3))));
  if ((((_828 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _831;
  } else {
    goto _833;
  }

_833:
  _829 = *_825;
  _830 =  /*tail*/ _828(_823, _829, 0, ((uint8_t*)/*NULL*/0), 0);
  *((&_822->field5)) = _830;
  goto _831;

_831:
  return;
}


static uint32_t att_copy_value(struct l_struct_struct_OC_att_iterator* _834, uint16_t _835, uint8_t* _836, uint16_t _837, uint16_t _838) {
  uint16_t _839;
  uint16_t* _840;
  uint16_t _841;
  struct l_struct_struct_OC_att_service_handler* _842;
  l_fptr_1* _843;
  uint16_t _844;
  uint16_t _845;
  uint32_t _846;
  uint16_t _847;
  uint16_t _848;
  uint8_t* _849;
  uint32_t _850;
  uint8_t* _851;
  uint32_t _852;
  uint32_t _852__PHI_TEMPORARY;

  _839 = *((&_834->field2));
  if (((((llvm_and_u16(_839, 256)) == ((uint16_t)0))&1))) {
    goto _853;
  } else {
    goto _854;
  }

_854:
  _840 = (&_834->field3);
  _841 = *_840;
  _842 =  /*tail*/ att_service_handler_for_handle(_841);
  _843 = *(llvm_select_ppl_fptr_1((((_842 == ((struct l_struct_struct_OC_att_service_handler*)/*NULL*/0))&1)), ((&att_global_info.field4)), ((&_842->field3))));
  if ((((_843 == ((l_fptr_1*)/*NULL*/0))&1))) {
    _852__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _855;
  } else {
    goto _856;
  }

_856:
  _844 = *_840;
  _845 =  /*tail*/ _843(_838, _844, _835, _836, _837);
  _846 = ((uint32_t)(uint16_t)_845);
  _852__PHI_TEMPORARY = _846;   /* for PHI node */
  goto _855;

_853:
  _847 = *((&_834->field5));
  _848 = llvm_sub_u16(_847, _835);
  _849 = *((&_834->field6));
  _850 = ((uint32_t)(uint16_t)(llvm_select_u16((((((uint16_t)_848) > ((uint16_t)_837))&1)), _837, _848)));
  _851 = memcpy(_836, _849, _850);
  _852__PHI_TEMPORARY = _850;   /* for PHI node */
  goto _855;

_855:
  _852 = _852__PHI_TEMPORARY;
  return _852;
}


static uint32_t is_Bluetooth_Base_UUID(uint8_t* _857) {
  uint32_t _858;
  uint32_t _859;
  uint32_t _860;
  uint32_t _861;
  uint32_t _861__PHI_TEMPORARY;

  _858 =  /*tail*/ memcmp(_857, ((&bluetooth_base_uuid.array[((int32_t)0)])), 12);
  if ((((_858 == 0u)&1))) {
    goto _862;
  } else {
    _861__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _863;
  }

_862:
  _859 =  /*tail*/ memcmp(((&_857[((int32_t)14)])), ((&bluetooth_base_uuid.array[((int32_t)14)])), 2);
  _860 = ((uint32_t)(bool)(((_859 == 0u)&1)));
  _861__PHI_TEMPORARY = _860;   /* for PHI node */
  goto _863;

_863:
  _861 = _861__PHI_TEMPORARY;
  return _861;
}

