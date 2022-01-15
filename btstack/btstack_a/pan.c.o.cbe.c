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
struct l_struct_struct_OC_btstack_linked_item;
struct l_struct_struct_OC_run_loop;
struct l_struct_struct_OC_pan_cmd_deal_t;
struct l_struct_struct_OC_bt_sleep;

/* Function definitions */
typedef uint8_t* l_fptr_1(void);

typedef uint32_t l_fptr_3(int, ...);

typedef void l_fptr_2(struct l_struct_struct_OC_run_loop*);


/* Types Definitions */
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_struct_struct_OC_run_loop {
  struct l_struct_struct_OC_btstack_linked_item field0;
  l_fptr_2* field1;
  uint8_t* field2;
};
struct l_struct_struct_OC_pan_cmd_deal_t {
  struct l_struct_struct_OC_run_loop field0;
};
struct l_array_200_uint8_t {
  uint8_t array[200];
};
struct l_array_22_uint8_t {
  uint8_t array[22];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_bt_sleep {
  l_fptr_3* field0;
  l_fptr_3* field1;
  l_fptr_3* field2;
};
struct l_array_29_uint8_t {
  uint8_t array[29];
};
struct l_array_51_uint8_t {
  uint8_t array[51];
};
struct l_array_38_uint8_t {
  uint8_t array[38];
};
struct l_array_57_uint8_t {
  uint8_t array[57];
};
struct l_array_39_uint8_t {
  uint8_t array[39];
};
struct l_array_94_uint8_t {
  uint8_t array[94];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_24_uint8_t {
  uint8_t array[24];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_41_uint8_t {
  uint8_t array[41];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_array_100_uint8_t {
  uint8_t array[100];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};

/* External Global Variable Declarations */

/* Function Declarations */
void pan_create_nap_sdp_record(uint8_t*, uint32_t, uint16_t*, uint8_t*, uint8_t*, uint32_t, uint32_t, uint32_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void pan_create_service(uint8_t*, uint32_t, uint32_t, uint16_t*, uint8_t*, uint8_t*, uint32_t, uint32_t, uint32_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
void pan_create_gn_sdp_record(uint8_t*, uint32_t, uint16_t*, uint8_t*, uint8_t*, uint32_t, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void pan_create_panu_sdp_record(uint8_t*, uint32_t, uint16_t*, uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void pan_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void stack_run_loop_register(struct l_struct_struct_OC_run_loop*, l_fptr_2*, uint8_t*);
static void pan_operation_loop(struct l_struct_struct_OC_run_loop*) __ATTRIBUTELIST__((nothrow));
void bnep_init(void);
uint8_t bnep_register_service(l_fptr_4*, uint16_t, uint16_t);
static void pan_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
uint32_t pan_cmd_io_ctrl(uint8_t*, uint32_t, uint32_t, uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint8_t* bd_addr_to_str(uint8_t*);
uint32_t bnep_connect(l_fptr_4*, uint8_t*, uint16_t, uint16_t, uint16_t);
uint32_t bnep_send_for_addr(uint8_t*, uint8_t*, uint16_t);
void de_create_sequence(uint8_t*);
void de_add_number(uint8_t*, uint32_t, uint32_t, uint32_t);
uint8_t* de_push_sequence(uint8_t*);
void de_pop_sequence(uint8_t*, uint8_t*);
void de_add_data(uint8_t*, uint32_t, uint16_t, uint8_t*);
uint32_t strlen(uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint32_t putchar(uint32_t) __ATTRIBUTELIST__((nothrow));
void bnep_handle_can_send_now(uint16_t);
uint32_t little_endian_read_32(uint8_t*, uint32_t);
uint32_t big_endian_read_16(uint8_t*, uint32_t);
void hexdumpf(uint8_t*, uint32_t);
uint16_t little_endian_read_16(uint8_t*, uint32_t);
static void setup_ethernet_header(uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void big_endian_store_16(uint8_t*, uint16_t, uint16_t);
static uint16_t calc_internet_checksum(uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow));
void reverse_bd_addr(uint8_t*, uint8_t*);
uint8_t* bt_get_mac_addr(int, ...);
static uint32_t pan_loop_suspend(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t pan_loop_resume(void) __ATTRIBUTELIST__((nothrow, const));
static uint32_t pan_loop_release(void) __ATTRIBUTELIST__((nothrow));
void stack_run_loop_remove(struct l_struct_struct_OC_run_loop*);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
struct l_struct_struct_OC_pan_cmd_deal_t* pan __HIDDEN__;
struct l_array_200_uint8_t sdp_pan_service_data __HIDDEN__ = { "6\x00\xA3\t\x00\x00\n\x00\x01\x00\x02\t\x00\x01\x36\x00\x05\x1A\x00\x00\x11\x15\t\x00\x04\x36\x00\x1B\x36\x00\x06\x19\x01\x00\t\x00\x0F\x36\x00\x0F\x19\x00\x0F\t\x01\x00\x36\x00\x06\t\x08\x00\t\x08\x06\t\x00\x05\x36\x00\x03\x19\x10\x02\t\x00\x06\x36\x00\t\ten\t\x00j\t\x01\x00\t\x00\t6\x00\t6\x00\x06\x19\x11\x15\t\x01\x00\t\x01\x00%\x1CPersonal Ad-hoc User Service\t\x01\x01%\x1CPersonal Ad-hoc User Service\t\x03\n\t\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" };
struct l_struct_struct_OC_pan_cmd_deal_t pan_deal __ATTRIBUTE_WEAK__ __HIDDEN__;
static struct l_array_22_uint8_t _OC_str = { "Connecting to  %s...\n" };
static struct l_array_6_uint8_t remote_addr = { "\x00\x1B\xDC\a2\xEF" };
struct l_struct_struct_OC_bt_sleep bt_suspend_pan_loop_resumepan_loop_release __HIDDEN__ = { ((l_fptr_3*)pan_loop_suspend), ((l_fptr_3*)pan_loop_resume), ((l_fptr_3*)pan_loop_release) };
static struct l_array_29_uint8_t default_panu_service_name = { "Personal Ad-hoc User Service" };
static struct l_array_29_uint8_t default_nap_service_name = { "Network Access Point Service" };
static struct l_array_29_uint8_t default_gn_service_name = { "Group Ad-hoc Network Service" };
static struct l_array_29_uint8_t default_panu_service_desc = { "Personal Ad-hoc User Service" };
static struct l_array_51_uint8_t default_nap_service_desc = { "Personal Ad-hoc which provides access to a network" };
static struct l_array_38_uint8_t default_gn_service_desc = { "Personal Group Ad-hoc Network Service" };
static struct l_array_57_uint8_t _OC_str_OC_2 = { "SSP User Confirmation Request with numeric value '%06u'\n" };
static struct l_array_39_uint8_t _OC_str_OC_4 = { "BNEP channel open failed, status %02x\n" };
static struct l_array_94_uint8_t _OC_str_OC_5 = { "BNEP connection open succeeded to %s source UUID 0x%04x dest UUID: 0x%04x, max frame size %u\n" };
static struct l_array_14_uint8_t _OC_str_OC_9 = { "Dst Addr: %s\n" };
static struct l_array_14_uint8_t _OC_str_OC_10 = { "Src Addr: %s\n" };
static struct l_array_16_uint8_t _OC_str_OC_11 = { "Net Type: %04x\n" };
static struct l_array_24_uint8_t _OC_str_OC_12 = { "ICMP packet of type %x\n" };
static struct l_array_30_uint8_t _OC_str_OC_15 = { "Unknown IPv4 protocol type %x" };
static struct l_array_32_uint8_t _OC_str_OC_17 = { "IPv6 packet of protocol 0x%02x\n" };
static struct l_array_24_uint8_t _OC_str_OC_18 = { "Unknown network type %x" };
static struct l_array_20_uint8_t send_ping_response_ipv4_OC_ipv4_header = { "E\x00\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00" };
static struct l_array_23_uint8_t _OC_str_OC_19 = { "pan local BD-ADDR: %s\n" };
static struct l_array_21_uint8_t str = { "BNEP packet received" };
static struct l_array_16_uint8_t str_OC_20 = { "UDP IPv6 packet" };
static struct l_array_16_uint8_t str_OC_21 = { "UDP IPv4 packet" };
static struct l_array_41_uint8_t str_OC_22 = { "IPv4 Ping Request received, sending pong" };
static struct l_array_20_uint8_t str_OC_23 = { "BNEP channel closed" };
static struct l_array_45_uint8_t str_OC_24 = { "BNEP channel timeout! Channel will be closed" };
static struct l_array_34_uint8_t str_OC_25 = { "SSP User Confirmation Auto accept" };
static struct l_array_16_uint8_t str_OC_26 = { "BNEP Test ready" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint8_t llvm_shl_u8(uint8_t a, uint8_t b) {
  uint8_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}


/* Function Bodies */

void pan_create_nap_sdp_record(uint8_t* _1, uint32_t _2, uint16_t* _3, uint8_t* _4, uint8_t* _5, uint32_t _6, uint32_t _7, uint32_t _8, uint8_t* _9, uint8_t* _10) {
   /*tail*/ pan_create_service(_1, _2, 4374, _3, _4, _5, _6, _7, _8, _9, _10);
}


static void pan_create_service(uint8_t* _11, uint32_t _12, uint32_t _13, uint16_t* _14, uint8_t* _15, uint8_t* _16, uint32_t _17, uint32_t _18, uint32_t _19, uint8_t* _20, uint8_t* _21) {
  uint8_t* _22;
  uint8_t* _23;
  uint8_t* _24;
  uint8_t* _25;
  uint8_t* _26;
  uint16_t _27;
  uint16_t _28;
  uint16_t _28__PHI_TEMPORARY;
  uint16_t* _29;
  uint16_t* _29__PHI_TEMPORARY;
  uint16_t* _30;
  uint16_t _31;
  uint8_t* _32;
  uint8_t* _33;
  uint8_t* _34;
  uint8_t* _35;
  uint32_t _36;
  uint32_t _37;
  uint32_t _38;
  uint32_t _39;

   /*tail*/ de_create_sequence(_11);
   /*tail*/ de_add_number(_11, 1, 1, 0);
   /*tail*/ de_add_number(_11, 1, 2, _12);
   /*tail*/ de_add_number(_11, 1, 1, 1);
  _22 =  /*tail*/ de_push_sequence(_11);
   /*tail*/ de_add_number(_22, 3, 2, _13);
   /*tail*/ de_pop_sequence(_11, _22);
   /*tail*/ de_add_number(_11, 1, 1, 4);
  _23 =  /*tail*/ de_push_sequence(_11);
  _24 =  /*tail*/ de_push_sequence(_23);
   /*tail*/ de_add_number(_24, 3, 1, 256);
   /*tail*/ de_add_number(_24, 1, 1, 15);
   /*tail*/ de_pop_sequence(_23, _24);
  _25 =  /*tail*/ de_push_sequence(_23);
   /*tail*/ de_add_number(_25, 3, 1, 15);
   /*tail*/ de_add_number(_25, 1, 1, 256);
  _26 =  /*tail*/ de_push_sequence(_25);
  if ((((_14 == ((uint16_t*)/*NULL*/0))&1))) {
    goto _40;
  } else {
    goto _41;
  }

_41:
  _27 = *_14;
  if ((((_27 == ((uint16_t)0))&1))) {
    goto _40;
  } else {
    goto _42;
  }

_42:
  _28__PHI_TEMPORARY = _27;   /* for PHI node */
  _29__PHI_TEMPORARY = _14;   /* for PHI node */
  goto _43;

  do {     /* Syntactic loop '' to make GCC happy */
_43:
  _28 = _28__PHI_TEMPORARY;
  _29 = _29__PHI_TEMPORARY;
  _30 = (&_29[((int32_t)1)]);
   /*tail*/ de_add_number(_26, 1, 1, (((uint32_t)(uint16_t)_28)));
  _31 = *_30;
  if ((((_31 == ((uint16_t)0))&1))) {
    goto _44;
  } else {
    _28__PHI_TEMPORARY = _31;   /* for PHI node */
    _29__PHI_TEMPORARY = _30;   /* for PHI node */
    goto _43;
  }

  } while (1); /* end of syntactic loop '' */
_44:
  goto _40;

_40:
   /*tail*/ de_pop_sequence(_25, _26);
   /*tail*/ de_pop_sequence(_23, _25);
   /*tail*/ de_pop_sequence(_11, _23);
   /*tail*/ de_add_number(_11, 1, 1, 5);
  _32 =  /*tail*/ de_push_sequence(_11);
   /*tail*/ de_add_number(_32, 3, 1, 4098);
   /*tail*/ de_pop_sequence(_11, _32);
   /*tail*/ de_add_number(_11, 1, 1, 6);
  _33 =  /*tail*/ de_push_sequence(_11);
   /*tail*/ de_add_number(_33, 1, 1, 25966);
   /*tail*/ de_add_number(_33, 1, 1, 106);
   /*tail*/ de_add_number(_33, 1, 1, 256);
   /*tail*/ de_pop_sequence(_11, _33);
   /*tail*/ de_add_number(_11, 1, 1, 9);
  _34 =  /*tail*/ de_push_sequence(_11);
  _35 =  /*tail*/ de_push_sequence(_34);
   /*tail*/ de_add_number(_35, 3, 1, _13);
   /*tail*/ de_add_number(_35, 1, 1, 256);
   /*tail*/ de_pop_sequence(_34, _35);
   /*tail*/ de_pop_sequence(_11, _34);
   /*tail*/ de_add_number(_11, 1, 1, 256);
  if ((((_15 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _45;
  } else {
    goto _46;
  }

_46:
  _36 =  /*tail*/ strlen(_15);
   /*tail*/ de_add_data(_11, 4, (((uint16_t)_36)), _15);
  goto _47;

_45:
  switch (_13) {
  default:
    goto _47;
  case 4373u:
    goto _48;
  case 4374u:
    goto _49;
  case 4375u:
    goto _50;
  }

_48:
   /*tail*/ de_add_data(_11, 4, 28, ((&default_panu_service_name.array[((int32_t)0)])));
  goto _47;

_49:
   /*tail*/ de_add_data(_11, 4, 28, ((&default_nap_service_name.array[((int32_t)0)])));
  goto _47;

_50:
   /*tail*/ de_add_data(_11, 4, 28, ((&default_gn_service_name.array[((int32_t)0)])));
  goto _47;

_47:
   /*tail*/ de_add_number(_11, 1, 1, 257);
  if ((((_16 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _51;
  } else {
    goto _52;
  }

_52:
  _37 =  /*tail*/ strlen(_16);
   /*tail*/ de_add_data(_11, 4, (((uint16_t)_37)), _16);
  goto _53;

_51:
  switch (_13) {
  default:
    goto _53;
  case 4373u:
    goto _54;
  case 4374u:
    goto _55;
  case 4375u:
    goto _56;
  }

_54:
   /*tail*/ de_add_data(_11, 4, 28, ((&default_panu_service_desc.array[((int32_t)0)])));
  goto _53;

_55:
   /*tail*/ de_add_data(_11, 4, 50, ((&default_nap_service_desc.array[((int32_t)0)])));
  goto _53;

_56:
   /*tail*/ de_add_data(_11, 4, 37, ((&default_gn_service_desc.array[((int32_t)0)])));
  goto _53;

_53:
   /*tail*/ de_add_number(_11, 1, 1, 778);
   /*tail*/ de_add_number(_11, 1, 1, _17);
  if ((((_13 == 4373u)&1))) {
    goto _57;
  } else {
    goto _58;
  }

_58:
  if ((((_20 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _59;
  } else {
    goto _60;
  }

_60:
   /*tail*/ de_add_number(_11, 1, 1, 781);
  _38 =  /*tail*/ strlen(_20);
   /*tail*/ de_add_data(_11, 4, (((uint16_t)_38)), _20);
  goto _59;

_59:
  if ((((_21 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _61;
  } else {
    goto _62;
  }

_62:
   /*tail*/ de_add_number(_11, 1, 1, 782);
  _39 =  /*tail*/ strlen(_21);
   /*tail*/ de_add_data(_11, 4, (((uint16_t)_39)), _21);
  goto _61;

_61:
  if ((((_13 == 4375u)&1))) {
    goto _57;
  } else {
    goto _63;
  }

_63:
   /*tail*/ de_add_number(_11, 1, 1, 779);
   /*tail*/ de_add_number(_11, 1, 1, _18);
   /*tail*/ de_add_number(_11, 1, 1, 780);
   /*tail*/ de_add_number(_11, 1, 2, _19);
  goto _57;

_57:
  return;
}


void pan_create_gn_sdp_record(uint8_t* _64, uint32_t _65, uint16_t* _66, uint8_t* _67, uint8_t* _68, uint32_t _69, uint8_t* _70, uint8_t* _71) {
   /*tail*/ pan_create_service(_64, _65, 4375, _66, _67, _68, _69, 65535, 0, _70, _71);
}


void pan_create_panu_sdp_record(uint8_t* _72, uint32_t _73, uint16_t* _74, uint8_t* _75, uint8_t* _76, uint32_t _77) {
   /*tail*/ pan_create_service(_72, _73, 4373, _74, _75, _76, _77, 65535, 0, ((uint8_t*)/*NULL*/0), ((uint8_t*)/*NULL*/0));
}


void pan_init(void) {
  struct l_struct_struct_OC_pan_cmd_deal_t* _78;
  uint8_t _79;

  _78 = pan;
  if ((((_78 == ((struct l_struct_struct_OC_pan_cmd_deal_t*)/*NULL*/0))&1))) {
    goto _80;
  } else {
    goto _81;
  }

_80:
  pan = (&pan_deal);
   /*tail*/ stack_run_loop_register(((&pan_deal.field0)), pan_operation_loop, ((uint8_t*)(&pan_deal)));
   /*tail*/ bnep_init();
  _79 =  /*tail*/ bnep_register_service(pan_packet_handler, 4373, 1691);
  goto _81;

_81:
  return;
}


static void pan_operation_loop(struct l_struct_struct_OC_run_loop* _82) {
  uint32_t _83;

  _83 =  /*tail*/ putchar(77);
   /*tail*/ bnep_handle_can_send_now(0);
}


static void pan_packet_handler(uint8_t _84, uint16_t _85, uint8_t* _86, uint16_t _87) {
  struct l_array_100_uint8_t _88;    /* Address-exposed local */
  struct l_array_20_uint8_t _89;    /* Address-exposed local */
  uint64_t _90;    /* Address-exposed local */
  struct l_array_6_uint8_t _91;    /* Address-exposed local */
  struct l_array_6_uint8_t _92;    /* Address-exposed local */
  struct l_array_6_uint8_t _93;    /* Address-exposed local */
  uint8_t* _94;
  uint8_t* _95;
  uint8_t* _96;
  uint8_t _97;
  uint8_t _98;
  uint32_t _99;
  uint32_t _100;
  uint32_t _101;
  uint32_t _102;
  uint8_t _103;
  uint32_t _104;
  uint16_t _105;
  uint16_t _106;
  uint16_t _107;
  uint16_t _108;
  uint8_t* _109;
  uint8_t* _110;
  uint32_t _111;
  uint32_t _112;
  uint32_t _113;
  uint8_t* _114;
  uint8_t* _115;
  uint8_t* _116;
  uint32_t _117;
  uint32_t _118;
  uint8_t* _119;
  uint32_t _120;
  uint8_t* _121;
  uint32_t _122;
  uint32_t _123;
  uint32_t _124;
  uint8_t _125;
  uint32_t _126;
  uint8_t _127;
  uint8_t* _128;
  uint32_t _129;
  uint8_t* _130;
  uint8_t _131;
  uint32_t _132;
  uint32_t _133;
  uint32_t _134;
  uint8_t* _135;
  uint8_t* _136;
  uint8_t* _137;
  uint8_t* _138;
  uint16_t _139;
  uint8_t* _140;
  uint16_t _141;
  uint64_t _142;
  uint32_t _143;
  uint32_t _144;
  uint32_t _144__PHI_TEMPORARY;
  uint8_t* _145;
  uint8_t* _145__PHI_TEMPORARY;
  uint32_t _146;
  uint32_t _147;
  uint8_t _148;
  uint32_t _149;
  uint32_t _150;
  uint32_t _151;

  _94 = (&_91.array[((int32_t)0)]);
  _95 = (&_92.array[((int32_t)0)]);
  _96 = (&_93.array[((int32_t)0)]);
  switch (_84) {
  default:
    goto _152;
  case ((uint8_t)4):
    goto _153;
  case ((uint8_t)11):
    goto _154;
  }

_153:
  _97 = *_86;
  switch (_97) {
  default:
    goto _152;
  case ((uint8_t)96):
    goto _155;
  case ((uint8_t)51):
    goto _156;
  case ((uint8_t)-63):
    goto _157;
  case ((uint8_t)-61):
    goto _158;
  case ((uint8_t)-62):
    goto _159;
  }

_155:
  _98 = *((&_86[((int32_t)2)]));
  if ((((_98 == ((uint8_t)2))&1))) {
    goto _160;
  } else {
    goto _152;
  }

_160:
  _99 =  /*tail*/ puts(((&str_OC_26.array[((int32_t)0)])));
  goto _152;

_156:
  _100 =  /*tail*/ little_endian_read_32(_86, 8);
  _101 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), _100);
  _102 =  /*tail*/ puts(((&str_OC_25.array[((int32_t)0)])));
  goto _152;

_157:
  _103 = *((&_86[((int32_t)2)]));
  if ((((_103 == ((uint8_t)0))&1))) {
    goto _161;
  } else {
    goto _162;
  }

_162:
  _104 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), (((uint32_t)(uint8_t)_103)));
  goto _152;

_161:
  _105 =  /*tail*/ little_endian_read_16(_86, 3);
  _106 =  /*tail*/ little_endian_read_16(_86, 5);
  _107 =  /*tail*/ little_endian_read_16(_86, 7);
  _108 =  /*tail*/ little_endian_read_16(_86, 9);
  _109 = memcpy(_94, ((&_86[((int32_t)11)])), 6);
  _110 = bd_addr_to_str(_94);
  _111 = printf(((&_OC_str_OC_5.array[((int32_t)0)])), _110, (((uint32_t)(uint16_t)_106)), (((uint32_t)(uint16_t)_107)), (((uint32_t)(uint16_t)_108)));
  goto _152;

_158:
  _112 =  /*tail*/ puts(((&str_OC_24.array[((int32_t)0)])));
  goto _152;

_159:
  _113 =  /*tail*/ puts(((&str_OC_23.array[((int32_t)0)])));
  goto _152;

_154:
  _114 = memcpy(_96, _86, 6);
  _115 = (&_86[((int32_t)6)]);
  _116 = memcpy(_95, _115, 6);
  _117 =  /*tail*/ big_endian_read_16(_86, 12);
  _118 =  /*tail*/ puts(((&str.array[((int32_t)0)])));
  _119 = bd_addr_to_str(_96);
  _120 = printf(((&_OC_str_OC_9.array[((int32_t)0)])), _119);
  _121 = bd_addr_to_str(_95);
  _122 = printf(((&_OC_str_OC_10.array[((int32_t)0)])), _121);
  _123 = _117 & 65535;
  _124 = printf(((&_OC_str_OC_11.array[((int32_t)0)])), _123);
  switch ((((uint16_t)_117))) {
  default:
    goto _163;
  case ((uint16_t)2048):
    goto _164;
  case ((uint16_t)-31011):
    goto _165;
  }

_164:
  _125 = *((&_86[((int32_t)14)]));
  _126 = ((uint32_t)(uint8_t)(llvm_add_u8((llvm_and_u8((llvm_shl_u8(_125, 2)), 60)), 14)));
  _127 = *((&_86[((int32_t)23)]));
  switch (_127) {
  default:
    goto _166;
  case ((uint8_t)1):
    goto _167;
  case ((uint8_t)17):
    goto _168;
  }

_168:
  _128 = (&_86[((int32_t)_126)]);
  _129 = llvm_sub_u32((((uint32_t)(uint16_t)_87)), _126);
  _144__PHI_TEMPORARY = _129;   /* for PHI node */
  _145__PHI_TEMPORARY = _128;   /* for PHI node */
  goto _169;

_167:
  _130 = (&_86[((int32_t)_126)]);
  _131 = *_130;
  _132 = llvm_sub_u32((((uint32_t)(uint16_t)_87)), _126);
  hexdumpf(_130, _132);
  _133 = printf(((&_OC_str_OC_12.array[((int32_t)0)])), (((uint32_t)(uint8_t)_131)));
  if ((((_131 == ((uint8_t)8))&1))) {
    goto _170;
  } else {
    _144__PHI_TEMPORARY = _132;   /* for PHI node */
    _145__PHI_TEMPORARY = _130;   /* for PHI node */
    goto _169;
  }

_170:
  _134 = puts(((&str_OC_22.array[((int32_t)0)])));
  _135 = (&_88.array[((int32_t)0)]);
  _136 = (&_89.array[((int32_t)0)]);
  _137 = memcpy(_136, ((&send_ping_response_ipv4_OC_ipv4_header.array[((int32_t)0)])), 20);
  _138 = ((uint8_t*)(&_90));
  _90 = 0;
  setup_ethernet_header(_135, 2048);
  big_endian_store_16(_136, 2, 28);
  _139 = calc_internet_checksum(_136, 20);
  big_endian_store_16(_136, 10, _139);
  _140 = memcpy(((&_88.array[((int32_t)14)])), _136, 20);
  _141 = calc_internet_checksum(_138, 8);
  big_endian_store_16(_138, 2, _141);
  _142 = _90;
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_88.array[((int32_t)34)]))))) = _142;
  _143 = bnep_send_for_addr(((&remote_addr.array[((int32_t)0)])), _135, 42);
  _144__PHI_TEMPORARY = _132;   /* for PHI node */
  _145__PHI_TEMPORARY = _130;   /* for PHI node */
  goto _169;

_169:
  _144 = _144__PHI_TEMPORARY;
  _145 = _145__PHI_TEMPORARY;
  _146 = puts(((&str_OC_21.array[((int32_t)0)])));
  hexdumpf(_145, _144);
  goto _152;

_166:
  _147 = printf(((&_OC_str_OC_15.array[((int32_t)0)])), (((uint32_t)(uint8_t)_127)));
  goto _152;

_165:
  _148 = *_115;
  if ((((_148 == ((uint8_t)17))&1))) {
    goto _171;
  } else {
    goto _172;
  }

_171:
  _149 = puts(((&str_OC_20.array[((int32_t)0)])));
  hexdumpf(((&_86[((int32_t)40)])), (llvm_add_u32((((uint32_t)(uint16_t)_87)), -40)));
  goto _152;

_172:
  _150 = printf(((&_OC_str_OC_17.array[((int32_t)0)])), (((uint32_t)(uint8_t)_148)));
  hexdumpf(((&_86[((int32_t)14)])), (llvm_add_u32((((uint32_t)(uint16_t)_87)), -14)));
  goto _152;

_163:
  _151 = printf(((&_OC_str_OC_18.array[((int32_t)0)])), _123);
  goto _152;

_152:
  return;
}


uint32_t pan_cmd_io_ctrl(uint8_t* _173, uint32_t _174, uint32_t _175, uint8_t* _176) {
  struct l_array_100_uint8_t _177;    /* Address-exposed local */
  struct l_array_40_uint8_t _178;    /* Address-exposed local */
  uint64_t _179;    /* Address-exposed local */
  struct l_struct_struct_OC_pan_cmd_deal_t* _180;
  uint8_t* _181;
  uint32_t _182;
  uint8_t* _183;
  uint32_t _184;
  uint8_t* _185;
  uint8_t* _186;
  uint8_t* _187;
  uint8_t* _188;
  uint16_t _189;
  uint32_t _190;
  uint32_t _191;
  uint32_t _192;
  uint32_t _192__PHI_TEMPORARY;
  uint32_t _193;
  uint32_t _193__PHI_TEMPORARY;
  uint32_t _194;
  uint32_t _195;
  uint32_t _196;
  uint32_t _196__PHI_TEMPORARY;
  uint32_t _197;
  uint32_t _197__PHI_TEMPORARY;
  uint8_t* _198;
  uint16_t _199;
  uint64_t _200;
  uint32_t _201;
  uint32_t _202;
  uint32_t _203;
  uint32_t _203__PHI_TEMPORARY;

  _180 = pan;
  if ((((_180 == ((struct l_struct_struct_OC_pan_cmd_deal_t*)/*NULL*/0))&1))) {
    _203__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _204;
  } else {
    goto _205;
  }

_205:
  switch (_174) {
  default:
    _203__PHI_TEMPORARY = -1001;   /* for PHI node */
    goto _204;
  case 2u:
    goto _206;
  case 4u:
    goto _207;
  case 5u:
    goto _208;
  case 255u:
    goto _209;
  }

_206:
  _181 =  /*tail*/ bd_addr_to_str(_173);
  _182 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), _181);
  _183 = memcpy(((&remote_addr.array[((int32_t)0)])), _173, 6);
  _184 =  /*tail*/ bnep_connect(pan_packet_handler, _173, 15, 4373, 4374);
  goto _208;

_207:
  _185 = (&_177.array[((int32_t)0)]);
  _186 = (&_178.array[((int32_t)0)]);
  _187 = memset(((&_178.array[((int32_t)1)])), 0, 39);
  *_186 = 96u;
  *((&_178.array[((int32_t)6)])) = 58;
  *((&_178.array[((int32_t)7)])) = 1;
  _188 = ((uint8_t*)(&_179));
  _179 = 128;
  setup_ethernet_header(_185, 34525u);
  big_endian_store_16(_186, 4, 8);
  _189 = calc_internet_checksum(((&_178.array[((int32_t)8)])), 32);
  _190 = llvm_add_u32((((uint32_t)(uint16_t)_189)), 8);
  if ((((((uint32_t)_190) > ((uint32_t)65535u))&1))) {
    goto _210;
  } else {
    _193__PHI_TEMPORARY = _190;   /* for PHI node */
    goto _211;
  }

_210:
  _191 = llvm_add_u32((_190 & 65535), 1);
  _192__PHI_TEMPORARY = _191;   /* for PHI node */
  goto _212;

  do {     /* Syntactic loop '' to make GCC happy */
_212:
  _192 = _192__PHI_TEMPORARY;
  if ((((((uint32_t)_192) > ((uint32_t)65535u))&1))) {
    _192__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _212;
  } else {
    goto _213;
  }

  } while (1); /* end of syntactic loop '' */
_213:
  _193__PHI_TEMPORARY = _192;   /* for PHI node */
  goto _211;

_211:
  _193 = _193__PHI_TEMPORARY;
  _194 = llvm_add_u32((_193 & 65535), 14848);
  if ((((((uint32_t)_194) > ((uint32_t)65535u))&1))) {
    goto _214;
  } else {
    _197__PHI_TEMPORARY = _194;   /* for PHI node */
    goto _215;
  }

_214:
  _195 = llvm_add_u32(((llvm_add_u32(_193, 14848)) & 65535), 1);
  _196__PHI_TEMPORARY = _195;   /* for PHI node */
  goto _216;

  do {     /* Syntactic loop '' to make GCC happy */
_216:
  _196 = _196__PHI_TEMPORARY;
  if ((((((uint32_t)_196) > ((uint32_t)65535u))&1))) {
    _196__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _216;
  } else {
    goto _217;
  }

  } while (1); /* end of syntactic loop '' */
_217:
  _197__PHI_TEMPORARY = _196;   /* for PHI node */
  goto _215;

_215:
  _197 = _197__PHI_TEMPORARY;
  big_endian_store_16(_188, 2, (((uint16_t)_197)));
  _198 = memcpy(((&_177.array[((int32_t)14)])), _186, 40);
  _199 = calc_internet_checksum(_188, 8);
  big_endian_store_16(_188, 2, _199);
  _200 = _179;
  __UNALIGNED_LOAD__(uint64_t, 1, (((uint64_t*)((&_177.array[((int32_t)54)]))))) = _200;
  _201 = bnep_send_for_addr(((&remote_addr.array[((int32_t)0)])), _185, 62);
  goto _208;

_209:
  _202 =  /*tail*/ bnep_send_for_addr(_173, _176, (((uint16_t)_175)));
  goto _208;

_208:
  _203__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _204;

_204:
  _203 = _203__PHI_TEMPORARY;
  return _203;
}


static void setup_ethernet_header(uint8_t* _218, uint16_t _219) {
  struct l_array_6_uint8_t _220;    /* Address-exposed local */
  uint8_t* _221;
  uint8_t* _222;
  uint8_t* _223;
  uint8_t* _224;
  uint32_t _225;
  uint8_t* _226;
  uint8_t* _227;

  _221 = (&_220.array[((int32_t)0)]);
  _222 = memset(_221, 0, 6);
  _223 =  /*tail*/ ((l_fptr_1*)(void*)bt_get_mac_addr)();
  reverse_bd_addr(_223, _221);
  _224 = bd_addr_to_str(_221);
  _225 = printf(((&_OC_str_OC_19.array[((int32_t)0)])), _224);
  _226 = memset(_218, 0, 6);
  _227 = memcpy(((&_218[((int32_t)6)])), _221, 6);
  big_endian_store_16(_218, 12, _219);
}


static uint16_t calc_internet_checksum(uint8_t* _228, uint32_t _229) {
  uint32_t _230;
  uint32_t _230__PHI_TEMPORARY;
  uint32_t _231;
  uint32_t _231__PHI_TEMPORARY;
  uint8_t* _232;
  uint8_t* _232__PHI_TEMPORARY;
  uint32_t _233;
  uint32_t _234;
  uint32_t _235;
  uint32_t _235__PHI_TEMPORARY;
  uint32_t _236;
  uint32_t _237;
  uint32_t _237__PHI_TEMPORARY;
  uint8_t* _238;
  uint32_t _239;
  uint16_t _240;
  uint16_t _241;
  uint16_t _241__PHI_TEMPORARY;

  if ((((_229 == 0u)&1))) {
    _241__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _242;
  } else {
    goto _243;
  }

_243:
  _230__PHI_TEMPORARY = 0;   /* for PHI node */
  _231__PHI_TEMPORARY = _229;   /* for PHI node */
  _232__PHI_TEMPORARY = _228;   /* for PHI node */
  goto _244;

  do {     /* Syntactic loop '' to make GCC happy */
_244:
  _230 = _230__PHI_TEMPORARY;
  _231 = _231__PHI_TEMPORARY;
  _232 = _232__PHI_TEMPORARY;
  _233 =  /*tail*/ big_endian_read_16(_232, 0);
  _234 = llvm_add_u32((_233 & 65535), (_230 & 65535));
  if ((((((uint32_t)_234) > ((uint32_t)65535u))&1))) {
    goto _245;
  } else {
    _237__PHI_TEMPORARY = _234;   /* for PHI node */
    goto _246;
  }

_245:
  _235__PHI_TEMPORARY = _234;   /* for PHI node */
  goto _247;

  do {     /* Syntactic loop '' to make GCC happy */
_247:
  _235 = _235__PHI_TEMPORARY;
  _236 = llvm_add_u32((_235 & 65535), 1);
  if ((((((uint32_t)_236) > ((uint32_t)65535u))&1))) {
    _235__PHI_TEMPORARY = 65536;   /* for PHI node */
    goto _247;
  } else {
    goto _248;
  }

  } while (1); /* end of syntactic loop '' */
_248:
  _237__PHI_TEMPORARY = _236;   /* for PHI node */
  goto _246;

_246:
  _237 = _237__PHI_TEMPORARY;
  _238 = (&_232[((int32_t)2)]);
  _239 = llvm_add_u32(_231, -2);
  if ((((_239 == 0u)&1))) {
    goto _249;
  } else {
    _230__PHI_TEMPORARY = _237;   /* for PHI node */
    _231__PHI_TEMPORARY = _239;   /* for PHI node */
    _232__PHI_TEMPORARY = _238;   /* for PHI node */
    goto _244;
  }

  } while (1); /* end of syntactic loop '' */
_249:
  _240 = ((uint16_t)_237);
  _241__PHI_TEMPORARY = _240;   /* for PHI node */
  goto _242;

_242:
  _241 = _241__PHI_TEMPORARY;
  return _241;
}


static uint32_t pan_loop_suspend(void) {
  return 0;
}


static uint32_t pan_loop_resume(void) {
  return 0;
}


static uint32_t pan_loop_release(void) {
  struct l_struct_struct_OC_pan_cmd_deal_t* _250;

  _250 = pan;
  if ((((_250 == ((struct l_struct_struct_OC_pan_cmd_deal_t*)/*NULL*/0))&1))) {
    goto _251;
  } else {
    goto _252;
  }

_252:
   /*tail*/ stack_run_loop_remove(((&_250->field0)));
  pan = ((struct l_struct_struct_OC_pan_cmd_deal_t*)/*NULL*/0);
  goto _251;

_251:
  return 0;
}

