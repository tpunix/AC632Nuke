/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
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
struct l_struct_struct_OC_user_interface_handler;
struct l_struct_struct_OC_bnep_net_filter_t;
struct l_struct_struct_OC_bnep_multi_filter_t;
struct l_struct_struct_OC_btstack_timer_source;
struct l_struct_struct_OC_bnep_channel_t;
struct l_struct_struct_OC_bnep_service_t;
struct l_struct_struct_OC_resend_t;

/* Function definitions */
typedef uint32_t l_fptr_10(uint8_t*, uint8_t, uint8_t);

typedef uint8_t* l_fptr_3(void);

typedef void l_fptr_1(uint8_t*, uint32_t, uint32_t, uint8_t);

typedef void l_fptr_4(uint8_t*, uint32_t, uint32_t);

typedef void l_fptr_2(uint8_t, uint16_t, uint8_t*, uint16_t);

typedef void l_fptr_12(uint8_t);

typedef uint8_t l_fptr_13(uint8_t*, uint8_t, uint8_t*, uint32_t, uint8_t);

typedef void l_fptr_8(uint32_t);

typedef uint32_t l_fptr_7(void);

typedef void l_fptr_11(void);

typedef void l_fptr_6(uint8_t*, uint32_t);

typedef void l_fptr_9(uint8_t, uint32_t, uint8_t*, uint16_t);

typedef void l_fptr_5(uint8_t, uint8_t*, uint8_t*);

typedef void l_fptr_14(struct l_struct_struct_OC_btstack_timer_source*);


/* Types Definitions */
struct l_array_65_uint8_t {
  uint8_t array[65];
};
struct l_array_72_uint8_t {
  uint8_t array[72];
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};
struct l_array_58_uint8_t {
  uint8_t array[58];
};
struct l_array_34_uint8_t {
  uint8_t array[34];
};
struct l_struct_struct_OC_btstack_linked_item {
  struct l_struct_struct_OC_btstack_linked_item* field0;
};
struct l_array_32_uint8_t {
  uint8_t array[32];
};
struct l_array_40_uint8_t {
  uint8_t array[40];
};
struct l_array_61_uint8_t {
  uint8_t array[61];
};
struct l_array_112_uint8_t {
  uint8_t array[112];
};
struct l_array_104_uint8_t {
  uint8_t array[104];
};
struct l_array_95_uint8_t {
  uint8_t array[95];
};
struct l_struct_struct_OC_user_interface_handler {
  l_fptr_4* field0;
  l_fptr_5* field1;
  l_fptr_6* field2;
  l_fptr_7* field3;
  l_fptr_2* field4;
  l_fptr_1* field5;
  l_fptr_7* field6;
  l_fptr_8* field7;
  l_fptr_9* field8;
  l_fptr_10* field9;
  l_fptr_11* field10;
  l_fptr_12* field11;
  l_fptr_13* field12;
  l_fptr_2* field13;
  l_fptr_7* field14;
};
struct l_array_60_uint8_t {
  uint8_t array[60];
};
struct l_array_47_uint8_t {
  uint8_t array[47];
};
struct l_array_75_uint8_t {
  uint8_t array[75];
};
struct l_array_56_uint8_t {
  uint8_t array[56];
};
struct l_array_62_uint8_t {
  uint8_t array[62];
};
struct l_array_84_uint8_t {
  uint8_t array[84];
};
struct l_array_97_uint8_t {
  uint8_t array[97];
};
struct l_array_98_uint8_t {
  uint8_t array[98];
};
struct l_array_78_uint8_t {
  uint8_t array[78];
};
struct l_array_76_uint8_t {
  uint8_t array[76];
};
struct l_array_73_uint8_t {
  uint8_t array[73];
};
struct l_array_68_uint8_t {
  uint8_t array[68];
};
struct l_array_63_uint8_t {
  uint8_t array[63];
};
struct l_array_77_uint8_t {
  uint8_t array[77];
};
struct l_array_87_uint8_t {
  uint8_t array[87];
};
struct l_array_59_uint8_t {
  uint8_t array[59];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_52_uint8_t {
  uint8_t array[52];
};
struct l_array_86_uint8_t {
  uint8_t array[86];
};
struct l_array_96_uint8_t {
  uint8_t array[96];
};
struct l_array_67_uint8_t {
  uint8_t array[67];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_array_30_uint8_t {
  uint8_t array[30];
};
struct l_array_69_uint8_t {
  uint8_t array[69];
};
struct l_array_81_uint8_t {
  uint8_t array[81];
};
struct l_array_45_uint8_t {
  uint8_t array[45];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_struct_struct_OC_bnep_net_filter_t {
  uint16_t field0;
  uint16_t field1;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_bnep_multi_filter_t {
  struct l_array_6_uint8_t field0;
  struct l_array_6_uint8_t field1;
};
struct l_struct_struct_OC_btstack_timer_source {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  l_fptr_14* field3;
  uint8_t* field4;
};
struct l_array_8_struct_AC_l_struct_struct_OC_bnep_net_filter_t {
  struct l_struct_struct_OC_bnep_net_filter_t array[8];
};
struct l_array_8_struct_AC_l_struct_struct_OC_bnep_multi_filter_t {
  struct l_struct_struct_OC_bnep_multi_filter_t array[8];
};
struct l_struct_struct_OC_bnep_channel_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint32_t field1;
  uint32_t field2;
  uint16_t field3;
  uint8_t* field4;
  struct l_array_6_uint8_t field5;
  struct l_array_6_uint8_t field6;
  uint16_t field7;
  uint16_t field8;
  uint16_t field9;
  uint16_t field10;
  uint8_t field11;
  uint16_t field12;
  struct l_array_8_struct_AC_l_struct_struct_OC_bnep_net_filter_t field13;
  uint16_t field14;
  struct l_struct_struct_OC_bnep_net_filter_t* field15;
  uint16_t field16;
  struct l_array_8_struct_AC_l_struct_struct_OC_bnep_multi_filter_t field17;
  uint16_t field18;
  struct l_struct_struct_OC_bnep_multi_filter_t* field19;
  uint16_t field20;
  struct l_struct_struct_OC_btstack_timer_source field21;
  uint32_t field22;
  uint32_t field23;
  l_fptr_2* field24;
  uint8_t field25;
  struct l_struct_struct_OC_btstack_linked_item* field26;
  uint32_t field27;
};
struct l_struct_struct_OC_bnep_service_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  uint16_t field2;
  l_fptr_2* field3;
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_struct_struct_OC_resend_t {
  struct l_struct_struct_OC_btstack_linked_item field0;
  uint16_t field1;
  /* void field2 */};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};

/* External Global Variable Declarations */
extern uint8_t profile_debug_enable;
extern uint8_t l2cap_debug_enable;
extern struct l_struct_struct_OC_user_interface_handler* user_interface;

/* Function Declarations */
uint32_t bnep_can_send_packet_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_can_send_packet_now(uint16_t);
void bnep_request_can_send_now_event(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t bnep_send(uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t big_endian_read_16(uint8_t*, uint32_t);
uint32_t memcmp(uint8_t*, uint8_t*, uint32_t) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* hci_get_outgoing_acl_packet_buffer(uint16_t);
void big_endian_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t l2cap_send_prepared(uint8_t*, uint16_t, uint16_t, uint8_t);
uint32_t bnep_set_net_type_filter(uint16_t, struct l_struct_struct_OC_bnep_net_filter_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t bnep_set_multicast_filter(uint16_t, struct l_struct_struct_OC_bnep_multi_filter_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bnep_packet_handler(uint8_t, uint16_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void bnep_handle_can_send_now(uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t putchar(uint32_t) __ATTRIBUTELIST__((nothrow));
void bnep_init(void) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
void bnep_set_required_security_level(uint8_t) __ATTRIBUTELIST__((nothrow, const)) __HIDDEN__;
uint32_t bnep_connect(l_fptr_2*, uint8_t*, uint16_t, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* bd_addr_to_str(uint8_t*);
static struct l_struct_struct_OC_bnep_channel_t* bnep_channel_create_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t l2cap_create_channel_internal(uint8_t*, l_fptr_2*, uint8_t*, uint16_t, uint16_t);
uint16_t l2cap_max_mtu(void);
uint32_t bnep_send_for_addr(uint8_t*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void put_buf(uint8_t*, uint32_t);
static struct l_struct_struct_OC_bnep_channel_t* bnep_channel_for_addr(uint8_t*) __ATTRIBUTELIST__((nothrow));
void btstack_linked_list_add_tail(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void bnep_disconnect(uint8_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
static void bnep_channel_finalize(struct l_struct_struct_OC_bnep_channel_t*) __ATTRIBUTELIST__((nothrow));
uint8_t bnep_register_service(l_fptr_2*, uint16_t, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
struct l_struct_struct_OC_bnep_service_t* btstack_memory_bnep_service_get(void);
void l2cap_register_service_internal(uint8_t*, l_fptr_2*, uint16_t, uint16_t);
void btstack_linked_list_add(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
uint16_t little_endian_read_16(uint8_t*, uint32_t);
void l2cap_decline_connection_internal(uint16_t, uint8_t);
void l2cap_accept_connection_internal(uint16_t);
static void bnep_emit_open_channel_complete(struct l_struct_struct_OC_bnep_channel_t*, uint8_t) __ATTRIBUTELIST__((nothrow));
static uint16_t bnep_max_frame_size_for_l2cap_mtu(uint16_t) __ATTRIBUTELIST__((nothrow));
void little_endian_store_16(uint8_t*, uint16_t, uint16_t);
uint32_t btstack_linked_list_remove(struct l_struct_struct_OC_btstack_linked_item**, struct l_struct_struct_OC_btstack_linked_item*);
void btstack_memory_bnep_channel_free(struct l_struct_struct_OC_bnep_channel_t*);
static uint32_t bnep_handle_control_packet(struct l_struct_struct_OC_bnep_channel_t*, uint8_t*, uint16_t, uint32_t) __ATTRIBUTELIST__((nothrow));
static void bnep_send_connection_response(struct l_struct_struct_OC_bnep_channel_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void bnep_send_filter_net_type_set(struct l_struct_struct_OC_bnep_channel_t*, struct l_struct_struct_OC_bnep_net_filter_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void bnep_send_filter_multi_addr_set(struct l_struct_struct_OC_bnep_channel_t*, struct l_struct_struct_OC_bnep_multi_filter_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t l2cap_send_internal(uint16_t, uint8_t*, uint16_t, uint8_t);
struct l_struct_struct_OC_bnep_channel_t* btstack_memory_bnep_channel_get(void);
uint8_t* bt_get_mac_addr(int, ...);
void l2cap_disconnect_internal(uint16_t, uint8_t);
void reverse_bd_addr(uint8_t*, uint8_t*);
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint32_t);
uint8_t* memset(uint8_t*, uint32_t, uint32_t);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_65_uint8_t _OC_str = { "<pro-error> :bnep_can_send_packet_now cid 0x%02x doesn't exist!\n" };
static struct l_array_72_uint8_t _OC_str_OC_1 = { "<pro-error> :bnep_request_can_send_now_event cid 0x%02x doesn't exist!\n" };
static struct l_array_50_uint8_t _OC_str_OC_2 = { "<pro-error> :bnep_send cid 0x%02x doesn't exist!\n" };
static struct l_array_58_uint8_t _OC_str_OC_3 = { "<pro-error> :bnep_send: Max frame size (%d) exceeded: %d\n" };
static struct l_array_34_uint8_t _OC_str_OC_4 = { "<pro-error> :bnep_send: error %d\n" };
static struct l_array_65_uint8_t _OC_str_OC_5 = { "<pro-error> :bnep_set_net_type_filter cid 0x%02x doesn't exist!\n" };
static struct l_struct_struct_OC_btstack_linked_item* bnep_channels;
static struct l_array_32_uint8_t _OC_str_OC_6 = { "<BT-log> :BNEP_CONNECT addr %s\n" };
static struct l_array_32_uint8_t _OC_str_OC_8 = { "<BT-log> :BNEP_CONNECT err %x\n\n" };
static struct l_array_40_uint8_t _OC_str_OC_11 = { "<BT-log> :BNEP_REGISTER_SERVICE mtu %d\n" };
static struct l_array_61_uint8_t _OC_str_OC_12 = { "<BT-log> :BNEP_REGISTER_SERVICE: Invalid service UUID: %04x\n" };
static struct l_struct_struct_OC_btstack_linked_item* bnep_services;
static struct l_array_112_uint8_t _OC_str_OC_13 = { "<pro-error> :INCOMING_CONNECTION (l2cap_cid 0x%02x) for BLUETOOTH_PSM_BNEP => decline - channel already exists\n" };
static struct l_array_104_uint8_t _OC_str_OC_14 = { "<pro-error> :INCOMING_CONNECTION (l2cap_cid 0x%02x) for BLUETOOTH_PSM_BNEP => decline - no memory left\n" };
static struct l_array_95_uint8_t _OC_str_OC_15 = { "<BT-log> :L2CAP_EVENT_INCOMING_CONNECTION (l2cap_cid 0x%02x) for BLUETOOTH_PSM_BNEP => accept\n" };
static struct l_array_72_uint8_t _OC_str_OC_16 = { "<BT-log> :L2CAP_EVENT_CHANNEL_OPENED for BLUETOOTH_PSM_BNEP, status %u\n" };
static struct l_array_60_uint8_t _OC_str_OC_19 = { "<pro-error> :L2CAP_EVENT_CHANNEL_OPENED: Invalid state: %d\n" };
static struct l_array_60_uint8_t _OC_str_OC_20 = { "<BT-log> :L2CAP_EVENT_CHANNEL_CLOSED cid 0x%0x, channel %p\n" };
static struct l_array_47_uint8_t _OC_str_OC_21 = { "<BT-log> :L2CAP_EVENT_CHANNEL_CLOSED state %u\n" };
static struct l_array_75_uint8_t _OC_str_OC_22 = { "<BT-log> :BNEP_EVENT_CHANNEL_OPENED status 0x%02x bd_addr: %s, handler %p\n" };
static struct l_array_56_uint8_t _OC_str_OC_23 = { "<BT-log> :bnep_max_frame_size_for_l2cap_mtu:  %u -> %u\n" };
static struct l_array_62_uint8_t _OC_str_OC_27 = { "<BT-log> :BNEP_CONTROL: Type: %d, size: %d, is_extension: %d\n" };
static struct l_array_84_uint8_t _OC_str_OC_28 = { "<pro-error> :BNEP_CONTROL: Received COMMAND_NOT_UNDERSTOOD: l2cap_cid: %d, cmd: %d\n" };
static struct l_array_97_uint8_t _OC_str_OC_29 = { "<pro-error> :BNEP_CONTROL: Received SETUP_CONNECTION_REQUEST in extension header: l2cap_cid: %d\n" };
static struct l_array_98_uint8_t _OC_str_OC_30 = { "<pro-error> :BNEP_CONTROL: Received SETUP_CONNECTION_RESPONSE in extension header: l2cap_cid: %d\n" };
static struct l_array_78_uint8_t _OC_str_OC_31 = { "<pro-error> :BNEP_CONTROL: Invalid bnep control type: l2cap_cid: %d, cmd: %d\n" };
static struct l_array_75_uint8_t _OC_str_OC_32 = { "<pro-error> :BNEP_CONNECTION_REQUEST: ignored in state %d, l2cap_cid: %d!\n" };
static struct l_array_76_uint8_t _OC_str_OC_33 = { "<pro-error> :BNEP_CONNECTION_REQUEST: Invalid UUID size %d, l2cap_cid: %d!\n" };
static struct l_array_78_uint8_t _OC_str_OC_34 = { "<pro-error> :BNEP_CONNECTION_REQUEST: Invalid destination service UUID: %04x\n" };
static struct l_array_73_uint8_t _OC_str_OC_35 = { "<pro-error> :BNEP_CONNECTION_REQUEST: Invalid source service UUID: %04x\n" };
static struct l_array_68_uint8_t _OC_str_OC_36 = { "<pro-error> :BNEP_CONNECTION_RESPONSE: Ignored in channel state %d\n" };
static struct l_array_63_uint8_t _OC_str_OC_37 = { "<BT-log> :BNEP_CONNECTION_RESPONSE: Channel established to %s\n" };
static struct l_array_73_uint8_t _OC_str_OC_38 = { "<pro-error> :BNEP_CONNECTION_RESPONSE: Connection to %s failed. Err: %d\n" };
static struct l_array_68_uint8_t _OC_str_OC_39 = { "<pro-error> :BNEP_FILTER_NET_TYPE_SET: Ignored in channel state %d\n" };
static struct l_array_75_uint8_t _OC_str_OC_41 = { "<pro-error> :BNEP_FILTER_NET_TYPE_SET: Invalid filter: start: %d, end: %d\n" };
static struct l_array_68_uint8_t _OC_str_OC_42 = { "<BT-log> :BNEP_FILTER_NET_TYPE_SET: Add filter: start: %d, end: %d\n" };
static struct l_array_73_uint8_t _OC_str_OC_43 = { "<pro-error> :BNEP_FILTER_NET_TYPE_RESPONSE: Ignored in channel state %d\n" };
static struct l_array_77_uint8_t _OC_str_OC_44 = { "<BT-log> :BNEP_FILTER_NET_TYPE_RESPONSE: Net filter set successfully for %s\n" };
static struct l_array_87_uint8_t _OC_str_OC_45 = { "<pro-error> :BNEP_FILTER_NET_TYPE_RESPONSE: Net filter setting for %s failed. Err: %d\n" };
static struct l_array_63_uint8_t _OC_str_OC_46 = { "<pro-error> :BNEP_MULTI_ADDR_SET: Ignored in channel state %d\n" };
static struct l_array_61_uint8_t _OC_str_OC_48 = { "<pro-error> :BNEP_MULTI_ADDR_SET: Invalid filter: start: %s\n" };
static struct l_array_59_uint8_t _OC_str_OC_49 = { "<pro-error> :BNEP_MULTI_ADDR_SET: Invalid filter: end: %s\n" };
static struct l_array_54_uint8_t _OC_str_OC_50 = { "<BT-log> :BNEP_MULTI_ADDR_SET: Add filter: start: %s\n" };
static struct l_array_52_uint8_t _OC_str_OC_51 = { "<BT-log> :BNEP_MULTI_ADDR_SET: Add filter: end: %s\n" };
static struct l_array_68_uint8_t _OC_str_OC_52 = { "<pro-error> :BNEP_MULTI_ADDR_RESPONSE: Ignored in channel state %d\n" };
static struct l_array_86_uint8_t _OC_str_OC_53 = { "<BT-log> :BNEP_MULTI_ADDR_RESPONSE: Multicast address filter set successfully for %s\n" };
static struct l_array_96_uint8_t _OC_str_OC_54 = { "<pro-error> :BNEP_MULTI_ADDR_RESPONSE: Multicast address filter setting for %s failed. Err: %d\n" };
static struct l_array_67_uint8_t _OC_str_OC_55 = { "<BT-log> :bnep_state_machine: state %u, state var: %02x, event %u\n" };
static struct l_array_16_uint8_t _OC_str_OC_56 = { "%s send len %d\n" };
static struct l_array_30_uint8_t __func___OC_bnep_send_filter_net_type_set = { "bnep_send_filter_net_type_set" };
static struct l_array_61_uint8_t _OC_str_OC_57 = { "<BT-log> :BNEP_EVENT_CHANNEL_CLOSED bd_addr: %s, handler %p\n" };
static struct l_array_69_uint8_t str = { "<pro-error> :L2CAP_EVENT_CHANNEL_OPENED but no BNEP channel prepared" };
static struct l_array_58_uint8_t str_OC_58 = { "<BT-log> :L2CAP_EVENT_CHANNEL_OPENED: outgoing connection" };
static struct l_array_77_uint8_t str_OC_59 = { "<pro-error> :BNEP pkt handler: Unknown extension type ignored, data dropped!" };
static struct l_array_81_uint8_t str_OC_60 = { "<pro-error> :BNEP pkt handler: Ignore invalid control packet in extension header" };
static struct l_array_72_uint8_t str_OC_61 = { "<pro-error> :BNEP pkt handler: Invalid extension length! Packet ignored" };
static struct l_array_45_uint8_t str_OC_62 = { "<BT-log> :BNEP_CONNECT create channel = NULL" };
static struct l_array_40_uint8_t str_OC_63 = { "<pro-error> :malloc for bnep send fail\n" };
static struct l_array_26_uint8_t str_OC_64 = { "<BT-log> :BNEP_DISCONNECT" };
static struct l_array_52_uint8_t str_OC_65 = { "<BT-log> :BNEP_FILTER_NET_TYPE_SET: Too many filter" };
static struct l_array_47_uint8_t str_OC_66 = { "<BT-log> :BNEP_MULTI_ADDR_SET: Too many filter" };


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
static __forceinline uint16_t llvm_mul_u16(uint16_t a, uint16_t b) {
  uint16_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_udiv_u32(uint32_t a, uint32_t b) {
  uint32_t r = a / b;
  return r;
}
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint32_t llvm_lshr_u32(uint32_t a, uint32_t b) {
  uint32_t r = a >> b;
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

uint32_t bnep_can_send_packet_now(uint16_t _1) {
  struct l_struct_struct_OC_btstack_linked_item* _2;
  struct l_struct_struct_OC_btstack_linked_item* _3;
  struct l_struct_struct_OC_btstack_linked_item* _4;
  struct l_struct_struct_OC_btstack_linked_item* _4__PHI_TEMPORARY;
  uint16_t _5;
  uint8_t _6;
  uint32_t _7;
  uint32_t _8;
  uint32_t _9;
  uint32_t _9__PHI_TEMPORARY;

  _2 = bnep_channels;
  if ((((_2 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _10;
  } else {
    goto _11;
  }

_11:
  _4__PHI_TEMPORARY = _2;   /* for PHI node */
  goto _12;

  do {     /* Syntactic loop '' to make GCC happy */
_12:
  _4 = _4__PHI_TEMPORARY;
  _5 = *(((uint16_t*)((&_4[((int32_t)8)]))));
  if ((((_5 == _1)&1))) {
    goto _13;
  } else {
    goto _14;
  }

_14:
  _3 = *((&_4->field0));
  if ((((_3 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _15;
  } else {
    _4__PHI_TEMPORARY = _3;   /* for PHI node */
    goto _12;
  }

  } while (1); /* end of syntactic loop '' */
_15:
  goto _10;

_10:
  _6 = profile_debug_enable;
  if (((((llvm_and_u8(_6, 4)) == ((uint8_t)0))&1))) {
    _9__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _16;
  } else {
    goto _17;
  }

_17:
  _7 =  /*tail*/ printf(((&_OC_str.array[((int32_t)0)])), (((uint32_t)(uint16_t)_1)));
  _9__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _16;

_13:
  _8 =  /*tail*/ l2cap_can_send_packet_now(_1);
  _9__PHI_TEMPORARY = _8;   /* for PHI node */
  goto _16;

_16:
  _9 = _9__PHI_TEMPORARY;
  return _9;
}


void bnep_request_can_send_now_event(uint16_t _18) {
  struct l_struct_struct_OC_btstack_linked_item* _19;
  struct l_struct_struct_OC_btstack_linked_item* _20;
  struct l_struct_struct_OC_btstack_linked_item* _21;
  struct l_struct_struct_OC_btstack_linked_item* _21__PHI_TEMPORARY;
  uint16_t _22;
  uint8_t _23;
  uint32_t _24;

  _19 = bnep_channels;
  if ((((_19 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _25;
  } else {
    goto _26;
  }

_26:
  _21__PHI_TEMPORARY = _19;   /* for PHI node */
  goto _27;

  do {     /* Syntactic loop '' to make GCC happy */
_27:
  _21 = _21__PHI_TEMPORARY;
  _22 = *(((uint16_t*)((&_21[((int32_t)8)]))));
  if ((((_22 == _18)&1))) {
    goto _28;
  } else {
    goto _29;
  }

_29:
  _20 = *((&_21->field0));
  if ((((_20 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _30;
  } else {
    _21__PHI_TEMPORARY = _20;   /* for PHI node */
    goto _27;
  }

  } while (1); /* end of syntactic loop '' */
_30:
  goto _25;

_25:
  _23 = profile_debug_enable;
  if (((((llvm_and_u8(_23, 4)) == ((uint8_t)0))&1))) {
    goto _31;
  } else {
    goto _32;
  }

_32:
  _24 =  /*tail*/ printf(((&_OC_str_OC_1.array[((int32_t)0)])), (((uint32_t)(uint16_t)_18)));
  goto _31;

_28:
  *(((uint8_t*)((&_21[((int32_t)56)])))) = 1;
  goto _31;

_31:
  return;
}


uint32_t bnep_send(uint16_t _33, uint8_t* _34, uint16_t _35) {
  struct l_array_6_uint8_t _36;    /* Address-exposed local */
  struct l_array_6_uint8_t _37;    /* Address-exposed local */
  uint8_t* _38;
  uint8_t* _39;
  struct l_struct_struct_OC_btstack_linked_item* _40;
  struct l_struct_struct_OC_btstack_linked_item* _41;
  struct l_struct_struct_OC_btstack_linked_item* _42;
  struct l_struct_struct_OC_btstack_linked_item* _42__PHI_TEMPORARY;
  uint16_t* _43;
  uint16_t _44;
  uint8_t _45;
  uint32_t _46;
  struct l_struct_struct_OC_bnep_channel_t* _47;
  uint32_t _48;
  uint32_t _49;
  uint8_t* _50;
  uint8_t* _51;
  uint32_t _52;
  uint16_t _53;
  uint32_t _54;
  uint32_t _55;
  uint32_t _55__PHI_TEMPORARY;
  uint16_t _56;
  uint16_t _57;
  uint32_t _58;
  uint32_t _59;
  uint32_t _59__PHI_TEMPORARY;
  uint16_t _60;
  uint16_t _61;
  uint32_t _62;
  uint8_t _63;
  uint16_t _64;
  uint32_t _65;
  uint32_t _66;
  uint32_t _66__PHI_TEMPORARY;
  uint32_t _67;
  uint32_t _68;
  uint32_t _69;
  uint16_t _70;
  uint16_t _70__PHI_TEMPORARY;
  uint32_t _71;
  uint32_t _72;
  uint32_t _73;
  uint16_t _74;
  uint32_t _75;
  uint8_t _76;
  uint32_t _77;
  uint8_t* _78;
  uint8_t* _79;
  bool _80;
  uint8_t _81;
  uint8_t _82;
  uint8_t _82__PHI_TEMPORARY;
  uint8_t* _83;
  uint16_t _84;
  uint16_t _84__PHI_TEMPORARY;
  uint8_t* _85;
  uint16_t _86;
  uint16_t _87;
  uint16_t _87__PHI_TEMPORARY;
  uint16_t _88;
  uint8_t* _89;
  uint16_t _90;
  uint32_t _91;
  uint8_t _92;
  uint32_t _93;
  uint32_t _94;
  uint32_t _94__PHI_TEMPORARY;

  _38 = (&_36.array[((int32_t)0)]);
  _39 = (&_37.array[((int32_t)0)]);
  _40 = bnep_channels;
  if ((((_40 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _95;
  } else {
    goto _96;
  }

_96:
  _42__PHI_TEMPORARY = _40;   /* for PHI node */
  goto _97;

  do {     /* Syntactic loop '' to make GCC happy */
_97:
  _42 = _42__PHI_TEMPORARY;
  _43 = ((uint16_t*)((&_42[((int32_t)8)])));
  _44 = *_43;
  if ((((_44 == _33)&1))) {
    goto _98;
  } else {
    goto _99;
  }

_99:
  _41 = *((&_42->field0));
  if ((((_41 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _100;
  } else {
    _42__PHI_TEMPORARY = _41;   /* for PHI node */
    goto _97;
  }

  } while (1); /* end of syntactic loop '' */
_100:
  goto _95;

_95:
  _45 = profile_debug_enable;
  if (((((llvm_and_u8(_45, 4)) == ((uint8_t)0))&1))) {
    _94__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _101;
  } else {
    goto _102;
  }

_102:
  _46 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), (((uint32_t)(uint16_t)_33)));
  _94__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _101;

_98:
  _47 = ((struct l_struct_struct_OC_bnep_channel_t*)_42);
  _48 = *(((uint32_t*)((&_42[((int32_t)1)]))));
  if ((((_48 == 4u)&1))) {
    goto _103;
  } else {
    _94__PHI_TEMPORARY = 161;   /* for PHI node */
    goto _101;
  }

_103:
  _49 =  /*tail*/ l2cap_can_send_packet_now(_33);
  if ((((_49 == 0u)&1))) {
    _94__PHI_TEMPORARY = 87;   /* for PHI node */
    goto _101;
  } else {
    goto _104;
  }

_104:
  _50 = memcpy(_38, _34, 6);
  _51 = memcpy(_39, ((&_34[((int32_t)6)])), 6);
  _52 =  /*tail*/ big_endian_read_16(_34, 12);
  _53 = llvm_add_u16(_35, -14);
  if (((((_52 & 65535) == 33024u)&1))) {
    goto _105;
  } else {
    _55__PHI_TEMPORARY = _52;   /* for PHI node */
    goto _106;
  }

_105:
  if ((((((uint16_t)_53) < ((uint16_t)((uint16_t)4)))&1))) {
    _94__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _101;
  } else {
    goto _107;
  }

_107:
  _54 =  /*tail*/ big_endian_read_16(_34, 16);
  _55__PHI_TEMPORARY = _54;   /* for PHI node */
  goto _106;

_106:
  _55 = _55__PHI_TEMPORARY;
  _56 = ((uint16_t)_55);
  _57 = *(((uint16_t*)((&_42[((int32_t)19)]))));
  if ((((_57 == ((uint16_t)0))&1))) {
    goto _108;
  } else {
    goto _109;
  }

_109:
  _58 = ((uint32_t)(uint16_t)_57);
  _59__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _110;

  do {     /* Syntactic loop '' to make GCC happy */
_110:
  _59 = _59__PHI_TEMPORARY;
  _60 = *((&_47->field13.array[((int32_t)_59)].field0));
  if ((((((uint16_t)_60) > ((uint16_t)_56))&1))) {
    goto _111;
  } else {
    goto _112;
  }

_112:
  _61 = *((&_47->field13.array[((int32_t)_59)].field1));
  if ((((((uint16_t)_61) < ((uint16_t)_56))&1))) {
    goto _111;
  } else {
    goto _113;
  }

_111:
  _62 = llvm_add_u32(_59, 1);
  if ((((((int32_t)_62) < ((int32_t)_58))&1))) {
    _59__PHI_TEMPORARY = _62;   /* for PHI node */
    goto _110;
  } else {
    goto _114;
  }

  } while (1); /* end of syntactic loop '' */
_113:
  goto _108;

_108:
  _63 = *_38;
  if (((((llvm_and_u8(_63, 1)) == ((uint8_t)0))&1))) {
    _70__PHI_TEMPORARY = _53;   /* for PHI node */
    goto _115;
  } else {
    goto _116;
  }

_116:
  _64 = *((&_47->field18));
  if ((((_64 == ((uint16_t)0))&1))) {
    _70__PHI_TEMPORARY = _53;   /* for PHI node */
    goto _115;
  } else {
    goto _117;
  }

_117:
  _65 = ((uint32_t)(uint16_t)_64);
  _66__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _118;

  do {     /* Syntactic loop '' to make GCC happy */
_118:
  _66 = _66__PHI_TEMPORARY;
  _67 = memcmp(_38, ((&_47->field17.array[((int32_t)_66)].field0.array[((int32_t)0)])), 6);
  if ((((((int32_t)_67) > ((int32_t)4294967295u))&1))) {
    goto _119;
  } else {
    goto _120;
  }

_119:
  _68 = memcmp(_38, ((&_47->field17.array[((int32_t)_66)].field1.array[((int32_t)0)])), 6);
  if ((((((int32_t)_68) < ((int32_t)1u))&1))) {
    goto _121;
  } else {
    goto _120;
  }

_120:
  _69 = llvm_add_u32(_66, 1);
  if ((((((int32_t)_69) < ((int32_t)_65))&1))) {
    _66__PHI_TEMPORARY = _69;   /* for PHI node */
    goto _118;
  } else {
    goto _122;
  }

  } while (1); /* end of syntactic loop '' */
_122:
  goto _123;

_114:
  goto _123;

_123:
  if (((((((((uint16_t)_53) > ((uint16_t)((uint16_t)3)))&1)) & ((((_55 & 65535) == 33024u)&1)))&1))) {
    _70__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _115;
  } else {
    _94__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _101;
  }

_121:
  _70__PHI_TEMPORARY = _53;   /* for PHI node */
  goto _115;

_115:
  _70 = _70__PHI_TEMPORARY;
  _71 = memcmp(_39, (((uint8_t*)((&_42[((int32_t)5)])))), 6);
  _72 = memcmp(_38, ((&_47->field6.array[((int32_t)0)])), 6);
  _73 = ((uint32_t)(uint16_t)_70);
  _74 = *(((uint16_t*)((&_42[((int32_t)3)]))));
  _75 = ((uint32_t)(uint16_t)_74);
  if ((((((uint16_t)_70) > ((uint16_t)_74))&1))) {
    goto _124;
  } else {
    goto _125;
  }

_124:
  _76 = profile_debug_enable;
  if (((((llvm_and_u8(_76, 4)) == ((uint8_t)0))&1))) {
    _94__PHI_TEMPORARY = 162;   /* for PHI node */
    goto _101;
  } else {
    goto _126;
  }

_126:
  _77 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), _75, _73);
  _94__PHI_TEMPORARY = 162;   /* for PHI node */
  goto _101;

_125:
  _78 =  /*tail*/ hci_get_outgoing_acl_packet_buffer((llvm_add_u16(_70, 28)));
  _79 = (&_78[((int32_t)8)]);
  if (((((((_71 != 0u)&1)) & (((_72 != 0u)&1)))&1))) {
    _82__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _127;
  } else {
    goto _128;
  }

_128:
  _80 = ((~((((_71 != 0u)&1))))&1);
  if (((((((_72 != 0u)&1)) | _80)&1))) {
    goto _129;
  } else {
    _82__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _127;
  }

_129:
  _81 = llvm_select_u8(((((((_72 != 0u)&1)) & _80)&1)), 4, 2);
  _82__PHI_TEMPORARY = _81;   /* for PHI node */
  goto _127;

_127:
  _82 = _82__PHI_TEMPORARY;
  *_79 = _82;
  if ((((_72 != 0u)&1))) {
    goto _130;
  } else {
    _84__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _131;
  }

_130:
  _83 = memcpy(((&_78[((int32_t)9)])), _38, 6);
  _84__PHI_TEMPORARY = 7;   /* for PHI node */
  goto _131;

_131:
  _84 = _84__PHI_TEMPORARY;
  if ((((_71 != 0u)&1))) {
    goto _132;
  } else {
    _87__PHI_TEMPORARY = _84;   /* for PHI node */
    goto _133;
  }

_132:
  _85 = memcpy(((&_79[((int32_t)(((uint32_t)(uint16_t)_84)))])), _39, 6);
  _86 = llvm_add_u16(_84, 6);
  _87__PHI_TEMPORARY = _86;   /* for PHI node */
  goto _133;

_133:
  _87 = _87__PHI_TEMPORARY;
   /*tail*/ big_endian_store_16(_79, _87, _56);
  _88 = llvm_add_u16(_87, 2);
  _89 = memcpy(((&_79[((int32_t)(((uint32_t)(uint16_t)_88)))])), ((&_34[((int32_t)14)])), _73);
  _90 = *_43;
  _91 =  /*tail*/ l2cap_send_prepared(_78, _90, (llvm_add_u16(_88, _70)), 0);
  if ((((_91 == 0u)&1))) {
    _94__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _101;
  } else {
    goto _134;
  }

_134:
  _92 = profile_debug_enable;
  if (((((llvm_and_u8(_92, 4)) == ((uint8_t)0))&1))) {
    _94__PHI_TEMPORARY = _91;   /* for PHI node */
    goto _101;
  } else {
    goto _135;
  }

_135:
  _93 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), _91);
  _94__PHI_TEMPORARY = _91;   /* for PHI node */
  goto _101;

_101:
  _94 = _94__PHI_TEMPORARY;
  return _94;
}


uint32_t bnep_set_net_type_filter(uint16_t _136, struct l_struct_struct_OC_bnep_net_filter_t* _137, uint16_t _138) {
  struct l_struct_struct_OC_btstack_linked_item* _139;
  struct l_struct_struct_OC_btstack_linked_item* _140;
  struct l_struct_struct_OC_btstack_linked_item* _141;
  struct l_struct_struct_OC_btstack_linked_item* _141__PHI_TEMPORARY;
  uint16_t _142;
  uint8_t _143;
  uint32_t _144;
  uint32_t _145;
  uint32_t* _146;
  uint32_t _147;
  uint32_t _148;
  uint32_t _148__PHI_TEMPORARY;

  if ((((_137 == ((struct l_struct_struct_OC_bnep_net_filter_t*)/*NULL*/0))&1))) {
    _148__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _149;
  } else {
    goto _150;
  }

_150:
  _139 = bnep_channels;
  if ((((_139 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _151;
  } else {
    goto _152;
  }

_152:
  _141__PHI_TEMPORARY = _139;   /* for PHI node */
  goto _153;

  do {     /* Syntactic loop '' to make GCC happy */
_153:
  _141 = _141__PHI_TEMPORARY;
  _142 = *(((uint16_t*)((&_141[((int32_t)8)]))));
  if ((((_142 == _136)&1))) {
    goto _154;
  } else {
    goto _155;
  }

_155:
  _140 = *((&_141->field0));
  if ((((_140 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _156;
  } else {
    _141__PHI_TEMPORARY = _140;   /* for PHI node */
    goto _153;
  }

  } while (1); /* end of syntactic loop '' */
_156:
  goto _151;

_151:
  _143 = profile_debug_enable;
  if (((((llvm_and_u8(_143, 4)) == ((uint8_t)0))&1))) {
    _148__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _149;
  } else {
    goto _157;
  }

_157:
  _144 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint16_t)_136)));
  _148__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _149;

_154:
  _145 = *(((uint32_t*)((&_141[((int32_t)1)]))));
  if ((((_145 == 4u)&1))) {
    goto _158;
  } else {
    _148__PHI_TEMPORARY = 161;   /* for PHI node */
    goto _149;
  }

_158:
  if ((((((uint16_t)_138) > ((uint16_t)((uint16_t)421)))&1))) {
    _148__PHI_TEMPORARY = 162;   /* for PHI node */
    goto _149;
  } else {
    goto _159;
  }

_159:
  *(((struct l_struct_struct_OC_bnep_net_filter_t**)((&_141[((int32_t)20)])))) = _137;
  *(((uint16_t*)((&_141[((int32_t)21)])))) = _138;
  _146 = ((uint32_t*)((&_141[((int32_t)2)])));
  _147 = *_146;
  *_146 = (_147 | 8);
  _148__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _149;

_149:
  _148 = _148__PHI_TEMPORARY;
  return _148;
}


uint32_t bnep_set_multicast_filter(uint16_t _160, struct l_struct_struct_OC_bnep_multi_filter_t* _161, uint16_t _162) {
  struct l_struct_struct_OC_btstack_linked_item* _163;
  struct l_struct_struct_OC_btstack_linked_item* _164;
  struct l_struct_struct_OC_btstack_linked_item* _165;
  struct l_struct_struct_OC_btstack_linked_item* _165__PHI_TEMPORARY;
  uint16_t _166;
  uint8_t _167;
  uint32_t _168;
  uint32_t _169;
  uint32_t* _170;
  uint32_t _171;
  uint32_t _172;
  uint32_t _172__PHI_TEMPORARY;

  if ((((_161 == ((struct l_struct_struct_OC_bnep_multi_filter_t*)/*NULL*/0))&1))) {
    _172__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _173;
  } else {
    goto _174;
  }

_174:
  _163 = bnep_channels;
  if ((((_163 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _175;
  } else {
    goto _176;
  }

_176:
  _165__PHI_TEMPORARY = _163;   /* for PHI node */
  goto _177;

  do {     /* Syntactic loop '' to make GCC happy */
_177:
  _165 = _165__PHI_TEMPORARY;
  _166 = *(((uint16_t*)((&_165[((int32_t)8)]))));
  if ((((_166 == _160)&1))) {
    goto _178;
  } else {
    goto _179;
  }

_179:
  _164 = *((&_165->field0));
  if ((((_164 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _180;
  } else {
    _165__PHI_TEMPORARY = _164;   /* for PHI node */
    goto _177;
  }

  } while (1); /* end of syntactic loop '' */
_180:
  goto _175;

_175:
  _167 = profile_debug_enable;
  if (((((llvm_and_u8(_167, 4)) == ((uint8_t)0))&1))) {
    _172__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _173;
  } else {
    goto _181;
  }

_181:
  _168 =  /*tail*/ printf(((&_OC_str_OC_5.array[((int32_t)0)])), (((uint32_t)(uint16_t)_160)));
  _172__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _173;

_178:
  _169 = *(((uint32_t*)((&_165[((int32_t)1)]))));
  if ((((_169 == 4u)&1))) {
    goto _182;
  } else {
    _172__PHI_TEMPORARY = 161;   /* for PHI node */
    goto _173;
  }

_182:
  if ((((((uint16_t)_162) > ((uint16_t)((uint16_t)140)))&1))) {
    _172__PHI_TEMPORARY = 162;   /* for PHI node */
    goto _173;
  } else {
    goto _183;
  }

_183:
  *(((struct l_struct_struct_OC_bnep_multi_filter_t**)((&_165[((int32_t)46)])))) = _161;
  *(((uint16_t*)((&_165[((int32_t)47)])))) = _162;
  _170 = ((uint32_t*)((&_165[((int32_t)2)])));
  _171 = *_170;
  *_170 = (_171 | 32);
  _172__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _173;

_173:
  _172 = _172__PHI_TEMPORARY;
  return _172;
}


void bnep_packet_handler(uint8_t _184, uint16_t _185, uint8_t* _186, uint16_t _187) {
  struct l_array_6_uint8_t _188;    /* Address-exposed local */
  struct l_array_6_uint8_t _189;    /* Address-exposed local */
  uint8_t* _190;
  uint8_t _191;
  uint8_t* _192;
  uint16_t _193;
  uint16_t _194;
  uint16_t _195;
  struct l_struct_struct_OC_bnep_channel_t* _196;
  uint8_t _197;
  uint32_t _198;
  struct l_struct_struct_OC_bnep_channel_t* _199;
  uint8_t _200;
  uint32_t _201;
  uint8_t _202;
  uint32_t _203;
  uint8_t _204;
  uint8_t _205;
  uint32_t _206;
  uint16_t _207;
  uint16_t _208;
  uint8_t* _209;
  struct l_struct_struct_OC_bnep_channel_t* _210;
  uint8_t _211;
  uint32_t _212;
  uint32_t _213;
  struct l_struct_struct_OC_user_interface_handler* _214;
  l_fptr_1* _215;
  uint32_t* _216;
  uint32_t _217;
  uint8_t _218;
  uint32_t _219;
  uint32_t* _220;
  uint32_t _221;
  uint16_t _222;
  uint16_t _223;
  uint16_t _224;
  uint16_t _225;
  uint8_t _226;
  uint32_t _227;
  uint16_t _228;
  uint16_t _229;
  struct l_struct_struct_OC_btstack_linked_item* _230;
  struct l_struct_struct_OC_btstack_linked_item* _231;
  struct l_struct_struct_OC_btstack_linked_item* _232;
  struct l_struct_struct_OC_btstack_linked_item* _232__PHI_TEMPORARY;
  uint16_t _233;
  struct l_struct_struct_OC_bnep_channel_t* _234;
  struct l_struct_struct_OC_bnep_channel_t* _235;
  struct l_struct_struct_OC_bnep_channel_t* _235__PHI_TEMPORARY;
  struct l_struct_struct_OC_bnep_channel_t* _236;
  struct l_struct_struct_OC_bnep_channel_t* _236__PHI_TEMPORARY;
  uint8_t _237;
  uint32_t _238;
  struct l_struct_struct_OC_user_interface_handler* _239;
  l_fptr_1* _240;
  uint8_t _241;
  uint32_t* _242;
  uint32_t _243;
  uint32_t _244;
  uint32_t _245;
  uint8_t* _246;
  uint8_t* _247;
  struct l_struct_struct_OC_btstack_linked_item* _248;
  struct l_struct_struct_OC_btstack_linked_item* _249;
  struct l_struct_struct_OC_btstack_linked_item* _250;
  struct l_struct_struct_OC_btstack_linked_item* _250__PHI_TEMPORARY;
  uint16_t* _251;
  uint16_t _252;
  struct l_struct_struct_OC_bnep_channel_t* _253;
  uint32_t _254;
  uint8_t _255;
  uint8_t _256;
  uint8_t* _257;
  uint8_t* _258;
  uint32_t _259;
  uint16_t _260;
  uint8_t* _261;
  uint8_t* _262;
  uint32_t _263;
  uint16_t _264;
  uint8_t* _265;
  uint8_t* _266;
  uint32_t _267;
  uint16_t _268;
  uint8_t* _269;
  uint8_t* _270;
  uint32_t _271;
  uint16_t _272;
  uint32_t _273;
  uint16_t _274;
  uint16_t _275;
  uint16_t _275__PHI_TEMPORARY;
  uint16_t _276;
  uint16_t _276__PHI_TEMPORARY;
  uint16_t _277;
  uint16_t _277__PHI_TEMPORARY;
  uint8_t _278;
  uint8_t _279;
  uint32_t _280;
  uint32_t _281;
  uint8_t _282;
  uint32_t _283;
  uint32_t _284;
  uint8_t _285;
  uint32_t _286;
  uint8_t _287;
  uint32_t _288;
  uint16_t _289;
  uint16_t _290;
  uint16_t _290__PHI_TEMPORARY;
  uint32_t _291;
  uint8_t* _292;
  uint8_t* _293;
  uint8_t* _294;
  uint8_t* _295;
  l_fptr_2* _296;
  uint16_t _297;

  switch (_184) {
  default:
    goto _298;
  case ((uint8_t)4):
    goto _299;
  case ((uint8_t)6):
    goto _300;
  }

_299:
  _190 = (&_189.array[((int32_t)0)]);
  _191 = *_186;
  switch (_191) {
  default:
    goto _301;
  case ((uint8_t)114):
    goto _302;
  case ((uint8_t)112):
    goto _303;
  case ((uint8_t)116):
    goto _304;
  case ((uint8_t)120):
    goto _304;
  case ((uint8_t)113):
    goto _305;
  }

_302:
  _192 = memcpy(_190, ((&_186[((int32_t)3)])), 6);
  _193 =  /*tail*/ little_endian_read_16(_186, 8);
  _194 =  /*tail*/ little_endian_read_16(_186, 10);
  _195 =  /*tail*/ little_endian_read_16(_186, 12);
  if ((((_194 == ((uint16_t)15))&1))) {
    goto _306;
  } else {
    goto _301;
  }

_306:
  _196 = bnep_channel_for_addr(_190);
  if ((((_196 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    goto _307;
  } else {
    goto _308;
  }

_308:
  _197 = profile_debug_enable;
  if (((((llvm_and_u8(_197, 4)) == ((uint8_t)0))&1))) {
    goto _309;
  } else {
    goto _310;
  }

_310:
  _198 = printf(((&_OC_str_OC_13.array[((int32_t)0)])), (((uint32_t)(uint16_t)_195)));
  goto _309;

_309:
  l2cap_decline_connection_internal(_195, 7);
  goto _301;

_307:
  _199 = bnep_channel_create_for_addr(_190);
  if ((((_199 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    goto _311;
  } else {
    goto _312;
  }

_311:
  _200 = profile_debug_enable;
  if (((((llvm_and_u8(_200, 4)) == ((uint8_t)0))&1))) {
    goto _313;
  } else {
    goto _314;
  }

_314:
  _201 = printf(((&_OC_str_OC_14.array[((int32_t)0)])), (((uint32_t)(uint16_t)_195)));
  goto _313;

_313:
  l2cap_decline_connection_internal(_195, 4);
  goto _301;

_312:
  *((&_199->field8)) = _193;
  *((&_199->field7)) = _195;
  *((&_199->field1)) = 2;
  _202 = l2cap_debug_enable;
  if ((((((int8_t)_202) < ((int8_t)((uint8_t)0)))&1))) {
    goto _315;
  } else {
    goto _316;
  }

_315:
  _203 = printf(((&_OC_str_OC_15.array[((int32_t)0)])), (((uint32_t)(uint16_t)_195)));
  goto _316;

_316:
  l2cap_accept_connection_internal(_195);
  goto _301;

_303:
  _204 = *((&_186[((int32_t)2)]));
  _205 = l2cap_debug_enable;
  if ((((((int8_t)_205) < ((int8_t)((uint8_t)0)))&1))) {
    goto _317;
  } else {
    goto _318;
  }

_317:
  _206 =  /*tail*/ printf(((&_OC_str_OC_16.array[((int32_t)0)])), (((uint32_t)(uint8_t)_204)));
  goto _318;

_318:
  _207 =  /*tail*/ little_endian_read_16(_186, 9);
  _208 =  /*tail*/ little_endian_read_16(_186, 13);
  _209 = memcpy(_190, ((&_186[((int32_t)3)])), 6);
  _210 = bnep_channel_for_addr(_190);
  if ((((_210 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    goto _319;
  } else {
    goto _320;
  }

_319:
  _211 = profile_debug_enable;
  if (((((llvm_and_u8(_211, 4)) == ((uint8_t)0))&1))) {
    goto _301;
  } else {
    goto _321;
  }

_321:
  _212 = puts(((&str.array[((int32_t)0)])));
  goto _301;

_320:
  if ((((_204 == ((uint8_t)0))&1))) {
    goto _322;
  } else {
    goto _323;
  }

_323:
  bnep_emit_open_channel_complete(_210, _204);
  _213 = btstack_linked_list_remove((&bnep_channels), ((&_210->field0)));
  btstack_memory_bnep_channel_free(_210);
  goto _301;

_322:
  _214 = user_interface;
  _215 = *((&_214->field5));
  if ((((_215 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _324;
  } else {
    goto _325;
  }

_325:
  _215(_190, 1, 2048, 1);
  goto _324;

_324:
  _216 = (&_210->field1);
  _217 = *_216;
  switch (_217) {
  default:
    goto _326;
  case 1u:
    goto _327;
  case 2u:
    goto _328;
  }

_327:
  _218 = l2cap_debug_enable;
  if ((((((int8_t)_218) < ((int8_t)((uint8_t)0)))&1))) {
    goto _329;
  } else {
    goto _330;
  }

_329:
  _219 = puts(((&str_OC_58.array[((int32_t)0)])));
  goto _330;

_330:
  *((&_210->field7)) = _208;
  *((&_210->field8)) = _207;
  *_216 = 3;
  _220 = (&_210->field2);
  _221 = *_220;
  *_220 = (_221 | 2);
  _222 = little_endian_read_16(_186, 17);
  _223 = bnep_max_frame_size_for_l2cap_mtu(_222);
  *((&_210->field3)) = _223;
  goto _301;

_328:
  _224 = little_endian_read_16(_186, 17);
  _225 = bnep_max_frame_size_for_l2cap_mtu(_224);
  *((&_210->field3)) = _225;
  goto _301;

_326:
  _226 = profile_debug_enable;
  if (((((llvm_and_u8(_226, 4)) == ((uint8_t)0))&1))) {
    goto _301;
  } else {
    goto _331;
  }

_331:
  _227 = printf(((&_OC_str_OC_19.array[((int32_t)0)])), _217);
  goto _301;

_304:
  _228 =  /*tail*/ little_endian_read_16(_186, 2);
   /*tail*/ bnep_handle_can_send_now(_228);
  goto _301;

_305:
  _229 =  /*tail*/ little_endian_read_16(_186, 2);
  _230 = bnep_channels;
  if ((((_230 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _236__PHI_TEMPORARY = ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _332;
  } else {
    goto _333;
  }

_333:
  _232__PHI_TEMPORARY = _230;   /* for PHI node */
  goto _334;

  do {     /* Syntactic loop '' to make GCC happy */
_334:
  _232 = _232__PHI_TEMPORARY;
  _233 = *(((uint16_t*)((&_232[((int32_t)8)]))));
  _234 = ((struct l_struct_struct_OC_bnep_channel_t*)_232);
  if ((((_233 == _229)&1))) {
    _235__PHI_TEMPORARY = _234;   /* for PHI node */
    goto _335;
  } else {
    goto _336;
  }

_336:
  _231 = *((&_232->field0));
  if ((((_231 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _235__PHI_TEMPORARY = ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _335;
  } else {
    _232__PHI_TEMPORARY = _231;   /* for PHI node */
    goto _334;
  }

  } while (1); /* end of syntactic loop '' */
_335:
  _235 = _235__PHI_TEMPORARY;
  _236__PHI_TEMPORARY = _235;   /* for PHI node */
  goto _332;

_332:
  _236 = _236__PHI_TEMPORARY;
  _237 = l2cap_debug_enable;
  if ((((((int8_t)_237) < ((int8_t)((uint8_t)0)))&1))) {
    goto _337;
  } else {
    goto _338;
  }

_337:
  _238 =  /*tail*/ printf(((&_OC_str_OC_20.array[((int32_t)0)])), (((uint32_t)(uint16_t)_229)), _236);
  goto _338;

_338:
  if ((((_236 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    goto _301;
  } else {
    goto _339;
  }

_339:
  _239 = user_interface;
  _240 = *((&_239->field5));
  if ((((_240 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _340;
  } else {
    goto _341;
  }

_341:
   /*tail*/ _240(((&_236->field6.array[((int32_t)0)])), 0, 2048, 1);
  goto _340;

_340:
  _241 = l2cap_debug_enable;
  _242 = (&_236->field1);
  if ((((((int8_t)_241) < ((int8_t)((uint8_t)0)))&1))) {
    goto _342;
  } else {
    goto _343;
  }

_342:
  _243 = *_242;
  _244 =  /*tail*/ printf(((&_OC_str_OC_21.array[((int32_t)0)])), _243);
  goto _343;

_343:
  _245 = *_242;
  if ((((((uint32_t)(llvm_add_u32(_245, -2))) < ((uint32_t)3u))&1))) {
    goto _344;
  } else {
    goto _301;
  }

_344:
   /*tail*/ bnep_channel_finalize(_236);
  goto _301;

_301:
  goto _298;

_300:
  _246 = (&_189.array[((int32_t)0)]);
  _247 = (&_188.array[((int32_t)0)]);
  _248 = bnep_channels;
  if ((((_248 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _345;
  } else {
    goto _346;
  }

_346:
  _250__PHI_TEMPORARY = _248;   /* for PHI node */
  goto _347;

  do {     /* Syntactic loop '' to make GCC happy */
_347:
  _250 = _250__PHI_TEMPORARY;
  _251 = ((uint16_t*)((&_250[((int32_t)8)])));
  _252 = *_251;
  if ((((_252 == _185)&1))) {
    goto _348;
  } else {
    goto _349;
  }

_349:
  _249 = *((&_250->field0));
  if ((((_249 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _350;
  } else {
    _250__PHI_TEMPORARY = _249;   /* for PHI node */
    goto _347;
  }

  } while (1); /* end of syntactic loop '' */
_348:
  _253 = ((struct l_struct_struct_OC_bnep_channel_t*)_250);
  _254 = ((uint32_t)(uint16_t)_187);
  if ((((((uint16_t)_187) < ((uint16_t)((uint16_t)2)))&1))) {
    goto _345;
  } else {
    goto _351;
  }

_351:
  _255 = *_186;
  _256 = llvm_and_u8(_255, 127u);
  switch ((((((uint8_t)_255))&127))) {
  default:
    _275__PHI_TEMPORARY = 1;   /* for PHI node */
    _276__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _352;
  case ((uint8_t)0):
    goto _353;
  case ((uint8_t)2):
    goto _354;
  case ((uint8_t)3):
    goto _355;
  case ((uint8_t)4):
    goto _356;
  case ((uint8_t)1):
    goto _357;
  }

_353:
  _257 = memcpy(_247, ((&_186[((int32_t)1)])), 6);
  _258 = memcpy(_246, ((&_186[((int32_t)7)])), 6);
  _259 =  /*tail*/ big_endian_read_16(_186, 13);
  _260 = ((uint16_t)_259);
  _275__PHI_TEMPORARY = 15;   /* for PHI node */
  _276__PHI_TEMPORARY = _260;   /* for PHI node */
  goto _352;

_354:
  _261 = memcpy(_247, (((uint8_t*)((&_250[((int32_t)5)])))), 6);
  _262 = memcpy(_246, ((&_253->field6.array[((int32_t)0)])), 6);
  _263 =  /*tail*/ big_endian_read_16(_186, 1);
  _264 = ((uint16_t)_263);
  _275__PHI_TEMPORARY = 3;   /* for PHI node */
  _276__PHI_TEMPORARY = _264;   /* for PHI node */
  goto _352;

_355:
  _265 = memcpy(_247, (((uint8_t*)((&_250[((int32_t)5)])))), 6);
  _266 = memcpy(_246, ((&_186[((int32_t)1)])), 6);
  _267 =  /*tail*/ big_endian_read_16(_186, 7);
  _268 = ((uint16_t)_267);
  _275__PHI_TEMPORARY = 9;   /* for PHI node */
  _276__PHI_TEMPORARY = _268;   /* for PHI node */
  goto _352;

_356:
  _269 = memcpy(_247, ((&_186[((int32_t)1)])), 6);
  _270 = memcpy(_246, ((&_253->field6.array[((int32_t)0)])), 6);
  _271 =  /*tail*/ big_endian_read_16(_186, 7);
  _272 = ((uint16_t)_271);
  _275__PHI_TEMPORARY = 9;   /* for PHI node */
  _276__PHI_TEMPORARY = _272;   /* for PHI node */
  goto _352;

_357:
  _273 =  /*tail*/ bnep_handle_control_packet(_253, ((&_186[((int32_t)1)])), (llvm_add_u16(_187, -1)), 0);
  _274 = ((uint16_t)(llvm_add_u32(_273, 1)));
  _275__PHI_TEMPORARY = _274;   /* for PHI node */
  _276__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _352;

_352:
  _275 = _275__PHI_TEMPORARY;
  _276 = _276__PHI_TEMPORARY;
  if ((((((int8_t)_255) < ((int8_t)((uint8_t)0)))&1))) {
    goto _358;
  } else {
    _290__PHI_TEMPORARY = _275;   /* for PHI node */
    goto _359;
  }

_358:
  _277__PHI_TEMPORARY = _275;   /* for PHI node */
  goto _360;

  do {     /* Syntactic loop '' to make GCC happy */
_360:
  _277 = _277__PHI_TEMPORARY;
  _278 = *((&_186[((int32_t)(((uint32_t)(uint16_t)_277)))]));
  _279 = *((&_186[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_277, 1)))))]));
  _280 = ((uint32_t)(uint16_t)(llvm_add_u16(_277, 2)));
  _281 = ((uint32_t)(uint8_t)_279);
  if ((((((int32_t)(llvm_sub_u32(_254, _280))) < ((int32_t)_281))&1))) {
    goto _361;
  } else {
    goto _362;
  }

_362:
  if (((((llvm_and_u8(_278, 127u)) == ((uint8_t)0))&1))) {
    goto _363;
  } else {
    goto _364;
  }

_364:
  _287 = profile_debug_enable;
  if (((((llvm_and_u8(_287, 4)) == ((uint8_t)0))&1))) {
    goto _365;
  } else {
    goto _366;
  }

_366:
  _288 =  /*tail*/ puts(((&str_OC_59.array[((int32_t)0)])));
  goto _365;

_363:
  _284 =  /*tail*/ bnep_handle_control_packet(_253, ((&_186[((int32_t)_280)])), (((uint16_t)(uint8_t)_279)), 1);
  if ((((_281 == _284)&1))) {
    goto _365;
  } else {
    goto _367;
  }

_367:
  _285 = profile_debug_enable;
  if (((((llvm_and_u8(_285, 4)) == ((uint8_t)0))&1))) {
    goto _365;
  } else {
    goto _368;
  }

_368:
  _286 =  /*tail*/ puts(((&str_OC_60.array[((int32_t)0)])));
  goto _365;

_365:
  _289 = ((uint16_t)(llvm_add_u32(_281, _280)));
  if ((((((int8_t)_278) < ((int8_t)((uint8_t)0)))&1))) {
    _277__PHI_TEMPORARY = _289;   /* for PHI node */
    goto _360;
  } else {
    goto _369;
  }

  } while (1); /* end of syntactic loop '' */
_361:
  _282 = profile_debug_enable;
  if (((((llvm_and_u8(_282, 4)) == ((uint8_t)0))&1))) {
    goto _345;
  } else {
    goto _370;
  }

_370:
  _283 =  /*tail*/ puts(((&str_OC_61.array[((int32_t)0)])));
  goto _345;

_369:
  _290__PHI_TEMPORARY = _289;   /* for PHI node */
  goto _359;

_359:
  _290 = _290__PHI_TEMPORARY;
  if (((((((_256 == ((uint8_t)1))&1)) | (((_276 == ((uint16_t)-1))&1)))&1))) {
    goto _345;
  } else {
    goto _371;
  }

_371:
  _291 = *(((uint32_t*)((&_250[((int32_t)1)]))));
  if ((((_291 == 4u)&1))) {
    goto _372;
  } else {
    goto _345;
  }

_372:
  _292 = (&_186[((int32_t)(((uint32_t)(uint16_t)_290)))]);
  _293 = (&_292[((int32_t)-14)]);
  _294 = memcpy(_293, _247, 6);
  _295 = memcpy(((&_292[((int32_t)-8)])), _246, 6);
   /*tail*/ big_endian_store_16(_293, 12, _276);
  _296 = *(((l_fptr_2**)((&_250[((int32_t)55)]))));
  if ((((_296 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _345;
  } else {
    goto _373;
  }

_373:
  _297 = *_251;
   /*tail*/ _296(11, _297, _293, (llvm_sub_u16((llvm_add_u16(_187, 14)), _290)));
  goto _345;

_350:
  goto _345;

_345:
  goto _298;

_298:
  return;
}


void bnep_handle_can_send_now(uint16_t _374) {
  struct l_array_10_uint8_t _375;    /* Address-exposed local */
  struct l_array_4_uint8_t _376;    /* Address-exposed local */
  struct l_struct_struct_OC_btstack_linked_item* _377;
  uint8_t* _378;
  uint8_t* _379;
  uint8_t* _380;
  uint8_t* _381;
  uint8_t* _382;
  struct l_struct_struct_OC_btstack_linked_item* _383;
  struct l_struct_struct_OC_btstack_linked_item* _383__PHI_TEMPORARY;
  struct l_struct_struct_OC_bnep_channel_t* _384;
  struct l_struct_struct_OC_btstack_linked_item* _385;
  uint16_t* _386;
  uint16_t _387;
  uint8_t _388;
  uint16_t* _389;
  uint16_t* _390;
  uint16_t* _390__PHI_TEMPORARY;
  uint32_t _391;
  uint16_t _392;
  uint32_t _393;
  uint8_t _394;
  uint32_t* _395;
  uint32_t _396;
  uint32_t* _397;
  uint32_t _398;
  uint32_t _399;
  uint32_t* _400;
  uint32_t* _400__PHI_TEMPORARY;
  uint32_t _401;
  uint8_t _402;
  uint32_t _403;
  uint16_t _404;
  uint32_t _405;
  uint16_t _406;
  uint32_t _407;
  uint16_t _408;
  uint16_t _409;
  uint16_t _410;
  uint32_t _411;
  uint16_t _412;
  uint32_t _413;
  uint32_t _414;
  uint32_t _415;
  uint32_t _415__PHI_TEMPORARY;
  uint32_t* _416;
  uint32_t _417;
  uint16_t _418;
  uint16_t* _419;
  uint16_t _420;
  struct l_struct_struct_OC_bnep_net_filter_t** _421;
  struct l_struct_struct_OC_bnep_net_filter_t* _422;
  uint16_t _423;
  uint32_t _424;
  uint16_t _425;
  uint32_t _426;
  uint16_t _427;
  uint32_t _428;
  uint16_t* _429;
  uint16_t _430;
  struct l_struct_struct_OC_bnep_multi_filter_t** _431;
  struct l_struct_struct_OC_bnep_multi_filter_t* _432;
  uint16_t _433;
  uint32_t _434;
  uint16_t _435;
  uint32_t _436;
  uint16_t _437;
  uint32_t _438;
  uint8_t* _439;
  uint8_t _440;
  struct l_struct_struct_OC_btstack_linked_item** _441;
  struct l_struct_struct_OC_btstack_linked_item* _442;
  uint16_t _443;
  uint16_t _444;
  uint32_t _445;
  uint32_t _446;
  l_fptr_2** _447;
  l_fptr_2* _448;
  uint16_t _449;
  l_fptr_2* _450;

  _377 = bnep_channels;
  if ((((_377 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _451;
  } else {
    goto _452;
  }

_452:
  _378 = (&_376.array[((int32_t)0)]);
  _379 = (&_376.array[((int32_t)1)]);
  _380 = (&_375.array[((int32_t)0)]);
  _381 = (&_375.array[((int32_t)1)]);
  _382 = (&_375.array[((int32_t)2)]);
  _383__PHI_TEMPORARY = _377;   /* for PHI node */
  goto _453;

  do {     /* Syntactic loop '' to make GCC happy */
_453:
  _383 = _383__PHI_TEMPORARY;
  _384 = ((struct l_struct_struct_OC_bnep_channel_t*)_383);
  _385 = *((&_383->field0));
  if ((((_374 == ((uint16_t)0))&1))) {
    goto _454;
  } else {
    goto _455;
  }

_455:
  _386 = ((uint16_t*)((&_383[((int32_t)8)])));
  _387 = *_386;
  if ((((_387 == _374)&1))) {
    _390__PHI_TEMPORARY = _386;   /* for PHI node */
    goto _456;
  } else {
    goto _457;
  }

_454:
  _388 = *(((uint8_t*)((&_383[((int32_t)56)]))));
  if ((((_388 == ((uint8_t)0))&1))) {
    goto _457;
  } else {
    goto _458;
  }

_458:
  _389 = ((uint16_t*)((&_383[((int32_t)8)])));
  _390__PHI_TEMPORARY = _389;   /* for PHI node */
  goto _456;

_456:
  _390 = _390__PHI_TEMPORARY;
  _391 = putchar(88);
  _392 = *_390;
  _393 = l2cap_can_send_packet_now(_392);
  if ((((_393 == 0u)&1))) {
    goto _459;
  } else {
    goto _460;
  }

_460:
  _394 = l2cap_debug_enable;
  if ((((((int8_t)_394) < ((int8_t)((uint8_t)0)))&1))) {
    goto _461;
  } else {
    goto _462;
  }

_462:
  _395 = ((uint32_t*)((&_383[((int32_t)2)])));
  _400__PHI_TEMPORARY = _395;   /* for PHI node */
  goto _463;

_461:
  _396 = *(((uint32_t*)((&_383[((int32_t)1)]))));
  _397 = ((uint32_t*)((&_383[((int32_t)2)])));
  _398 = *_397;
  _399 = printf(((&_OC_str_OC_55.array[((int32_t)0)])), _396, _398, 0);
  _400__PHI_TEMPORARY = _397;   /* for PHI node */
  goto _463;

_463:
  _400 = _400__PHI_TEMPORARY;
  _401 = *_400;
  if (((((_401 & 1) == 0u)&1))) {
    goto _464;
  } else {
    goto _465;
  }

_465:
  *_400 = (_401 & -2);
  _402 = *(((uint8_t*)((&_383[((int32_t)10)]))));
  _403 = *(((uint32_t*)((&_383[((int32_t)1)]))));
  if ((((_403 == 1u)&1))) {
    goto _466;
  } else {
    goto _467;
  }

_467:
  _404 = *_390;
  _405 = l2cap_can_send_packet_now(_404);
  if ((((_405 == 0u)&1))) {
    goto _466;
  } else {
    goto _468;
  }

_468:
  *_380 = 1;
  *_381 = 0;
  *_382 = _402;
  _406 = *_390;
  _407 = l2cap_send_internal(_406, _380, 3, 0);
  goto _466;

_466:
  goto _457;

_464:
  if (((((_401 & 2) == 0u)&1))) {
    _415__PHI_TEMPORARY = _401;   /* for PHI node */
    goto _469;
  } else {
    goto _470;
  }

_470:
  *_400 = (_401 & -3);
  *(((uint32_t*)((&_383[((int32_t)1)])))) = 3;
  _408 = *(((uint16_t*)((&_383[((int32_t)9)]))));
  _409 = *((&_384->field10));
  _410 = *_390;
  _411 = l2cap_can_send_packet_now(_410);
  if ((((_411 == 0u)&1))) {
    goto _471;
  } else {
    goto _472;
  }

_472:
  *_380 = 1;
  *_381 = 1;
  *_382 = 2;
  big_endian_store_16(_380, 3, _409);
  big_endian_store_16(_380, 5, _408);
  _412 = *_390;
  _413 = l2cap_send_internal(_412, _380, 7, 0);
  goto _471;

_471:
  _414 = *_400;
  _415__PHI_TEMPORARY = _414;   /* for PHI node */
  goto _469;

_469:
  _415 = _415__PHI_TEMPORARY;
  if (((((_415 & 4) == 0u)&1))) {
    goto _473;
  } else {
    goto _474;
  }

_474:
  _416 = ((uint32_t*)((&_383[((int32_t)1)])));
  _417 = *_416;
  _418 = *((&_384->field12));
  if ((((((uint32_t)(llvm_add_u32(_417, -1))) < ((uint32_t)2u))&1))) {
    goto _475;
  } else {
    goto _476;
  }

_476:
  *_400 = (_415 & -5);
  bnep_send_connection_response(_384, _418);
  goto _457;

_475:
  *_416 = 4;
  *_400 = (_415 & -5);
  bnep_send_connection_response(_384, _418);
  bnep_emit_open_channel_complete(_384, 0);
  goto _457;

_473:
  if (((((_415 & 8) == 0u)&1))) {
    goto _477;
  } else {
    goto _478;
  }

_478:
  *_400 = (_415 & -9);
  _419 = ((uint16_t*)((&_383[((int32_t)21)])));
  _420 = *_419;
  if ((((_420 == ((uint16_t)0))&1))) {
    goto _457;
  } else {
    goto _479;
  }

_479:
  _421 = ((struct l_struct_struct_OC_bnep_net_filter_t**)((&_383[((int32_t)20)])));
  _422 = *_421;
  if ((((_422 == ((struct l_struct_struct_OC_bnep_net_filter_t*)/*NULL*/0))&1))) {
    goto _457;
  } else {
    goto _480;
  }

_480:
  bnep_send_filter_net_type_set(_384, _422, _420);
  *_419 = 0;
  *_421 = ((struct l_struct_struct_OC_bnep_net_filter_t*)/*NULL*/0);
  goto _457;

_477:
  if (((((_415 & 16) == 0u)&1))) {
    goto _481;
  } else {
    goto _482;
  }

_482:
  *_400 = (_415 & -17);
  _423 = *((&_384->field12));
  _424 = *(((uint32_t*)((&_383[((int32_t)1)]))));
  if ((((_424 == 1u)&1))) {
    goto _483;
  } else {
    goto _484;
  }

_484:
  _425 = *_390;
  _426 = l2cap_can_send_packet_now(_425);
  if ((((_426 == 0u)&1))) {
    goto _483;
  } else {
    goto _485;
  }

_485:
  *_380 = 1;
  *_381 = 4;
  big_endian_store_16(_380, 2, _423);
  _427 = *_390;
  _428 = l2cap_send_internal(_427, _380, 4, 0);
  goto _483;

_483:
  goto _457;

_481:
  if (((((_415 & 32) == 0u)&1))) {
    goto _486;
  } else {
    goto _487;
  }

_487:
  *_400 = (_415 & -33);
  _429 = ((uint16_t*)((&_383[((int32_t)47)])));
  _430 = *_429;
  if ((((_430 == ((uint16_t)0))&1))) {
    goto _457;
  } else {
    goto _488;
  }

_488:
  _431 = ((struct l_struct_struct_OC_bnep_multi_filter_t**)((&_383[((int32_t)46)])));
  _432 = *_431;
  if ((((_432 == ((struct l_struct_struct_OC_bnep_multi_filter_t*)/*NULL*/0))&1))) {
    goto _457;
  } else {
    goto _489;
  }

_489:
  bnep_send_filter_multi_addr_set(_384, _432, _430);
  *_429 = 0;
  *_431 = ((struct l_struct_struct_OC_bnep_multi_filter_t*)/*NULL*/0);
  goto _457;

_486:
  if (((((_415 & 64) == 0u)&1))) {
    goto _490;
  } else {
    goto _491;
  }

_491:
  *_400 = (_415 & -65);
  _433 = *((&_384->field12));
  _434 = *(((uint32_t*)((&_383[((int32_t)1)]))));
  if ((((_434 == 1u)&1))) {
    goto _492;
  } else {
    goto _493;
  }

_493:
  _435 = *_390;
  _436 = l2cap_can_send_packet_now(_435);
  if ((((_436 == 0u)&1))) {
    goto _492;
  } else {
    goto _494;
  }

_494:
  *_380 = 1;
  *_381 = 6;
  big_endian_store_16(_380, 2, _433);
  _437 = *_390;
  _438 = l2cap_send_internal(_437, _380, 4, 0);
  goto _492;

_492:
  goto _457;

_490:
  _439 = ((uint8_t*)((&_383[((int32_t)56)])));
  _440 = *_439;
  if ((((_440 == ((uint8_t)0))&1))) {
    goto _457;
  } else {
    goto _495;
  }

_495:
  _441 = (&_383[((int32_t)57)].field0);
  _442 = *_441;
  if ((((_442 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _496;
  } else {
    goto _497;
  }

_497:
  _443 = *_390;
  _444 = *(((uint16_t*)((&_442[((int32_t)1)]))));
  _445 = bnep_send(_443, ((&(((struct l_struct_struct_OC_resend_t*)_442))->field2)), _444);
  if ((((_445 == 0u)&1))) {
    goto _498;
  } else {
    goto _457;
  }

_498:
  _446 = btstack_linked_list_remove(_441, _442);
  free((((uint8_t*)_442)));
  goto _457;

_496:
  *_439 = 0;
  _447 = ((l_fptr_2**)((&_383[((int32_t)55)])));
  _448 = *_447;
  if ((((_448 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _457;
  } else {
    goto _499;
  }

_499:
  *_378 = -60;
  *_379 = 2;
  _449 = *_390;
  little_endian_store_16(_378, 2, _449);
  _450 = *_447;
  _450(4, 0, _378, 4);
  goto _457;

_457:
  if ((((_385 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _459;
  } else {
    _383__PHI_TEMPORARY = _385;   /* for PHI node */
    goto _453;
  }

  } while (1); /* end of syntactic loop '' */
_459:
  goto _451;

_451:
  return;
}


void bnep_init(void) {
  return;
}


void bnep_set_required_security_level(uint8_t _500) {
  return;
}


uint32_t bnep_connect(l_fptr_2* _501, uint8_t* _502, uint16_t _503, uint16_t _504, uint16_t _505) {
  uint8_t _506;
  uint8_t* _507;
  uint32_t _508;
  struct l_struct_struct_OC_bnep_channel_t* _509;
  uint8_t _510;
  uint32_t _511;
  uint16_t _512;
  uint8_t _513;
  uint8_t _514;
  uint32_t _515;
  uint32_t _516;
  uint32_t _516__PHI_TEMPORARY;

  _506 = l2cap_debug_enable;
  if ((((((int8_t)_506) < ((int8_t)((uint8_t)0)))&1))) {
    goto _517;
  } else {
    goto _518;
  }

_517:
  _507 =  /*tail*/ bd_addr_to_str(_502);
  _508 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])), _507);
  goto _518;

_518:
  _509 =  /*tail*/ bnep_channel_create_for_addr(_502);
  if ((((_509 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    goto _519;
  } else {
    goto _520;
  }

_519:
  _510 = l2cap_debug_enable;
  if ((((((int8_t)_510) < ((int8_t)((uint8_t)0)))&1))) {
    goto _521;
  } else {
    _516__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _522;
  }

_521:
  _511 =  /*tail*/ puts(((&str_OC_62.array[((int32_t)0)])));
  _516__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _522;

_520:
  *((&_509->field9)) = _504;
  *((&_509->field10)) = _505;
  *((&_509->field24)) = _501;
  _512 =  /*tail*/ l2cap_max_mtu();
  _513 =  /*tail*/ l2cap_create_channel_internal(((uint8_t*)/*NULL*/0), bnep_packet_handler, _502, _503, _512);
  if ((((_513 == ((uint8_t)0))&1))) {
    goto _523;
  } else {
    _516__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _522;
  }

_523:
  _514 = l2cap_debug_enable;
  if ((((((int8_t)_514) < ((int8_t)((uint8_t)0)))&1))) {
    goto _524;
  } else {
    _516__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _522;
  }

_524:
  _515 =  /*tail*/ printf(((&_OC_str_OC_8.array[((int32_t)0)])), 0);
  _516__PHI_TEMPORARY = -1;   /* for PHI node */
  goto _522;

_522:
  _516 = _516__PHI_TEMPORARY;
  return _516;
}


static struct l_struct_struct_OC_bnep_channel_t* bnep_channel_create_for_addr(uint8_t* _525) {
  struct l_struct_struct_OC_bnep_channel_t* _526;
  uint16_t _527;
  uint16_t _528;
  uint8_t* _529;
  uint8_t* _530;
  uint8_t* _531;
  struct l_struct_struct_OC_bnep_channel_t* _532;
  struct l_struct_struct_OC_bnep_channel_t* _532__PHI_TEMPORARY;

  _526 =  /*tail*/ btstack_memory_bnep_channel_get();
  if ((((_526 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    _532__PHI_TEMPORARY = ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _533;
  } else {
    goto _534;
  }

_534:
  *((&_526->field1)) = 1;
  _527 =  /*tail*/ l2cap_max_mtu();
  _528 =  /*tail*/ bnep_max_frame_size_for_l2cap_mtu(_527);
  *((&_526->field3)) = _528;
  _529 = memcpy(((&_526->field6.array[((int32_t)0)])), _525, 6);
  _530 =  /*tail*/ ((l_fptr_3*)(void*)bt_get_mac_addr)();
  _531 = memcpy(((&_526->field5.array[((int32_t)0)])), _530, 6);
  *((&_526->field14)) = 0;
  *((&_526->field18)) = 0;
  *((&_526->field23)) = 0;
   /*tail*/ btstack_linked_list_add((&bnep_channels), ((&_526->field0)));
  _532__PHI_TEMPORARY = _526;   /* for PHI node */
  goto _533;

_533:
  _532 = _532__PHI_TEMPORARY;
  return _532;
}


uint32_t bnep_send_for_addr(uint8_t* _535, uint8_t* _536, uint16_t _537) {
  uint32_t _538;
  uint32_t _539;
  uint8_t* _540;
  uint8_t _541;
  uint32_t _542;
  uint8_t* _543;
  uint8_t* _544;
  struct l_struct_struct_OC_bnep_channel_t* _545;
  uint32_t _546;
  uint32_t _546__PHI_TEMPORARY;

  _538 = ((uint32_t)(uint16_t)_537);
  if ((((_537 == ((uint16_t)0))&1))) {
    _546__PHI_TEMPORARY = -1;   /* for PHI node */
    goto _547;
  } else {
    goto _548;
  }

_548:
  _539 = llvm_add_u32(_538, 8);
  _540 =  /*tail*/ malloc(_539);
  if ((((_540 == ((uint8_t*)/*NULL*/0))&1))) {
    goto _549;
  } else {
    goto _550;
  }

_549:
  _541 = profile_debug_enable;
  if (((((llvm_and_u8(_541, 4)) == ((uint8_t)0))&1))) {
    _546__PHI_TEMPORARY = -2;   /* for PHI node */
    goto _547;
  } else {
    goto _551;
  }

_551:
  _542 =  /*tail*/ puts(((&str_OC_63.array[((int32_t)0)])));
  _546__PHI_TEMPORARY = -2;   /* for PHI node */
  goto _547;

_550:
   /*tail*/ put_buf(_536, _538);
  _543 = memset(_540, 0, _539);
  *(((uint16_t*)((&_540[((int32_t)4)])))) = _537;
  _544 = memcpy(((&_540[((int32_t)6)])), _536, _538);
  _545 =  /*tail*/ bnep_channel_for_addr(_535);
  if ((((_545 == ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0))&1))) {
    _546__PHI_TEMPORARY = -3;   /* for PHI node */
    goto _547;
  } else {
    goto _552;
  }

_552:
   /*tail*/ btstack_linked_list_add_tail(((&_545->field26)), (((struct l_struct_struct_OC_btstack_linked_item*)_540)));
  *((&_545->field25)) = 1;
  _546__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _547;

_547:
  _546 = _546__PHI_TEMPORARY;
  return _546;
}


static struct l_struct_struct_OC_bnep_channel_t* bnep_channel_for_addr(uint8_t* _553) {
  struct l_struct_struct_OC_btstack_linked_item* _554;
  struct l_struct_struct_OC_btstack_linked_item* _555;
  struct l_struct_struct_OC_btstack_linked_item* _556;
  struct l_struct_struct_OC_btstack_linked_item* _556__PHI_TEMPORARY;
  struct l_struct_struct_OC_bnep_channel_t* _557;
  uint8_t* _558;
  uint32_t _559;
  struct l_struct_struct_OC_bnep_channel_t* _560;
  struct l_struct_struct_OC_bnep_channel_t* _560__PHI_TEMPORARY;
  struct l_struct_struct_OC_bnep_channel_t* _561;
  struct l_struct_struct_OC_bnep_channel_t* _561__PHI_TEMPORARY;

  _554 = bnep_channels;
  if ((((_554 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _561__PHI_TEMPORARY = ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _562;
  } else {
    goto _563;
  }

_563:
  _556__PHI_TEMPORARY = _554;   /* for PHI node */
  goto _564;

  do {     /* Syntactic loop '' to make GCC happy */
_564:
  _556 = _556__PHI_TEMPORARY;
  _557 = ((struct l_struct_struct_OC_bnep_channel_t*)_556);
   /*tail*/ put_buf(_553, 6);
  _558 = (&_557->field6.array[((int32_t)0)]);
   /*tail*/ put_buf(_558, 6);
  _559 =  /*tail*/ memcmp(_553, _558, 6);
  if ((((_559 == 0u)&1))) {
    _560__PHI_TEMPORARY = _557;   /* for PHI node */
    goto _565;
  } else {
    goto _566;
  }

_566:
  _555 = *((&_556->field0));
  if ((((_555 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _560__PHI_TEMPORARY = ((struct l_struct_struct_OC_bnep_channel_t*)/*NULL*/0);   /* for PHI node */
    goto _565;
  } else {
    _556__PHI_TEMPORARY = _555;   /* for PHI node */
    goto _564;
  }

  } while (1); /* end of syntactic loop '' */
_565:
  _560 = _560__PHI_TEMPORARY;
  _561__PHI_TEMPORARY = _560;   /* for PHI node */
  goto _562;

_562:
  _561 = _561__PHI_TEMPORARY;
  return _561;
}


void bnep_disconnect(uint8_t* _567) {
  uint8_t _568;
  uint32_t _569;
  struct l_struct_struct_OC_bnep_channel_t* _570;

  _568 = l2cap_debug_enable;
  if ((((((int8_t)_568) < ((int8_t)((uint8_t)0)))&1))) {
    goto _571;
  } else {
    goto _572;
  }

_571:
  _569 =  /*tail*/ puts(((&str_OC_64.array[((int32_t)0)])));
  goto _572;

_572:
  _570 =  /*tail*/ bnep_channel_for_addr(_567);
   /*tail*/ bnep_channel_finalize(_570);
}


static void bnep_channel_finalize(struct l_struct_struct_OC_bnep_channel_t* _573) {
  struct l_array_14_uint8_t _574;    /* Address-exposed local */
  uint32_t _575;
  uint8_t _576;
  l_fptr_2** _577;
  uint8_t* _578;
  l_fptr_2** _579;
  l_fptr_2* _580;
  uint32_t _581;
  l_fptr_2** _582;
  l_fptr_2** _582__PHI_TEMPORARY;
  l_fptr_2* _583;
  uint8_t* _584;
  uint16_t _585;
  uint16_t _586;
  uint16_t _587;
  l_fptr_2* _588;
  struct l_struct_struct_OC_btstack_linked_item** _589;
  struct l_struct_struct_OC_btstack_linked_item* _590;
  struct l_struct_struct_OC_btstack_linked_item* _591;
  struct l_struct_struct_OC_btstack_linked_item* _591__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _592;
  uint32_t _593;
  uint16_t _594;
  uint32_t _595;

  _575 = *((&_573->field1));
  if ((((_575 == 4u)&1))) {
    goto _596;
  } else {
    goto _597;
  }

_596:
  _576 = l2cap_debug_enable;
  if ((((((int8_t)_576) < ((int8_t)((uint8_t)0)))&1))) {
    goto _598;
  } else {
    goto _599;
  }

_599:
  _577 = (&_573->field24);
  _582__PHI_TEMPORARY = _577;   /* for PHI node */
  goto _600;

_598:
  _578 =  /*tail*/ bd_addr_to_str(((&_573->field6.array[((int32_t)0)])));
  _579 = (&_573->field24);
  _580 = *_579;
  _581 =  /*tail*/ printf(((&_OC_str_OC_57.array[((int32_t)0)])), _578, _580);
  _582__PHI_TEMPORARY = _579;   /* for PHI node */
  goto _600;

_600:
  _582 = _582__PHI_TEMPORARY;
  _583 = *_582;
  if ((((_583 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _597;
  } else {
    goto _601;
  }

_601:
  _584 = (&_574.array[((int32_t)0)]);
  *_584 = -62;
  *((&_574.array[((int32_t)1)])) = 12;
  _585 = *((&_573->field7));
  little_endian_store_16(_584, 2, _585);
  _586 = *((&_573->field9));
  little_endian_store_16(_584, 4, _586);
  _587 = *((&_573->field10));
  little_endian_store_16(_584, 6, _587);
  reverse_bd_addr(((&_573->field6.array[((int32_t)0)])), ((&_574.array[((int32_t)8)])));
  _588 = *_582;
  _588(4, 0, _584, 14);
  goto _597;

_597:
  _589 = (&_573->field26);
  _590 = *_589;
  if ((((_590 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _602;
  } else {
    goto _603;
  }

_603:
  _591__PHI_TEMPORARY = _590;   /* for PHI node */
  goto _604;

  do {     /* Syntactic loop '' to make GCC happy */
_604:
  _591 = _591__PHI_TEMPORARY;
  _592 = *((&_591->field0));
  _593 = btstack_linked_list_remove(_589, _591);
  free((((uint8_t*)_591)));
  if ((((_592 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _605;
  } else {
    _591__PHI_TEMPORARY = _592;   /* for PHI node */
    goto _604;
  }

  } while (1); /* end of syntactic loop '' */
_605:
  goto _602;

_602:
  _594 = *((&_573->field7));
  _595 = btstack_linked_list_remove((&bnep_channels), ((&_573->field0)));
  btstack_memory_bnep_channel_free(_573);
  l2cap_disconnect_internal(_594, 19);
}


uint8_t bnep_register_service(l_fptr_2* _606, uint16_t _607, uint16_t _608) {
  uint8_t _609;
  uint32_t _610;
  struct l_struct_struct_OC_btstack_linked_item* _611;
  struct l_struct_struct_OC_btstack_linked_item* _612;
  struct l_struct_struct_OC_btstack_linked_item* _613;
  struct l_struct_struct_OC_btstack_linked_item* _613__PHI_TEMPORARY;
  uint16_t _614;
  uint32_t _615;
  uint8_t _616;
  uint32_t _617;
  struct l_struct_struct_OC_bnep_service_t* _618;
  uint8_t _619;
  uint8_t _619__PHI_TEMPORARY;

  _609 = l2cap_debug_enable;
  if ((((((int8_t)_609) < ((int8_t)((uint8_t)0)))&1))) {
    goto _620;
  } else {
    goto _621;
  }

_620:
  _610 =  /*tail*/ printf(((&_OC_str_OC_11.array[((int32_t)0)])), (((uint32_t)(uint16_t)_608)));
  goto _621;

_621:
  _611 = bnep_services;
  if ((((_611 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _622;
  } else {
    goto _623;
  }

_623:
  _613__PHI_TEMPORARY = _611;   /* for PHI node */
  goto _624;

  do {     /* Syntactic loop '' to make GCC happy */
_624:
  _613 = _613__PHI_TEMPORARY;
  _614 = *(((uint16_t*)((&_613[((int32_t)1)]))));
  if ((((_614 == _607)&1))) {
    goto _625;
  } else {
    goto _626;
  }

_626:
  _612 = *((&_613->field0));
  if ((((_612 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _627;
  } else {
    _613__PHI_TEMPORARY = _612;   /* for PHI node */
    goto _624;
  }

  } while (1); /* end of syntactic loop '' */
_627:
  goto _622;

_622:
  _615 = ((uint32_t)(uint16_t)_607);
  if ((((((uint16_t)(llvm_add_u16(_607, -4373))) < ((uint16_t)((uint16_t)3)))&1))) {
    goto _628;
  } else {
    goto _629;
  }

_629:
  _616 = l2cap_debug_enable;
  if ((((((int8_t)_616) < ((int8_t)((uint8_t)0)))&1))) {
    goto _630;
  } else {
    _619__PHI_TEMPORARY = 160u;   /* for PHI node */
    goto _631;
  }

_630:
  _617 =  /*tail*/ printf(((&_OC_str_OC_12.array[((int32_t)0)])), _615);
  _619__PHI_TEMPORARY = 160u;   /* for PHI node */
  goto _631;

_628:
  _618 =  /*tail*/ btstack_memory_bnep_service_get();
  if ((((_618 == ((struct l_struct_struct_OC_bnep_service_t*)/*NULL*/0))&1))) {
    _619__PHI_TEMPORARY = 86u;   /* for PHI node */
    goto _631;
  } else {
    goto _632;
  }

_632:
   /*tail*/ l2cap_register_service_internal(((uint8_t*)/*NULL*/0), bnep_packet_handler, 15, -1);
  *((&_618->field2)) = _608;
  *((&_618->field1)) = _607;
  *((&_618->field3)) = _606;
   /*tail*/ btstack_linked_list_add((&bnep_services), ((&_618->field0)));
  _619__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _631;

_625:
  _619__PHI_TEMPORARY = 160u;   /* for PHI node */
  goto _631;

_631:
  _619 = _619__PHI_TEMPORARY;
  return _619;
}


static void bnep_emit_open_channel_complete(struct l_struct_struct_OC_bnep_channel_t* _633, uint8_t _634) {
  struct l_array_19_uint8_t _635;    /* Address-exposed local */
  uint8_t _636;
  l_fptr_2** _637;
  uint8_t* _638;
  l_fptr_2** _639;
  l_fptr_2* _640;
  uint32_t _641;
  l_fptr_2** _642;
  l_fptr_2** _642__PHI_TEMPORARY;
  l_fptr_2* _643;
  uint8_t* _644;
  uint16_t _645;
  uint16_t _646;
  uint16_t _647;
  uint16_t _648;
  uint8_t* _649;
  uint16_t _650;
  l_fptr_2* _651;

  _636 = l2cap_debug_enable;
  if ((((((int8_t)_636) < ((int8_t)((uint8_t)0)))&1))) {
    goto _652;
  } else {
    goto _653;
  }

_653:
  _637 = (&_633->field24);
  _642__PHI_TEMPORARY = _637;   /* for PHI node */
  goto _654;

_652:
  _638 =  /*tail*/ bd_addr_to_str(((&_633->field6.array[((int32_t)0)])));
  _639 = (&_633->field24);
  _640 = *_639;
  _641 =  /*tail*/ printf(((&_OC_str_OC_22.array[((int32_t)0)])), (((uint32_t)(uint8_t)_634)), _638, _640);
  _642__PHI_TEMPORARY = _639;   /* for PHI node */
  goto _654;

_654:
  _642 = _642__PHI_TEMPORARY;
  _643 = *_642;
  if ((((_643 == ((l_fptr_2*)/*NULL*/0))&1))) {
    goto _655;
  } else {
    goto _656;
  }

_656:
  _644 = (&_635.array[((int32_t)0)]);
  *_644 = -63;
  *((&_635.array[((int32_t)1)])) = 17;
  *((&_635.array[((int32_t)2)])) = _634;
  _645 = *((&_633->field7));
  little_endian_store_16(_644, 3, _645);
  _646 = *((&_633->field9));
  little_endian_store_16(_644, 5, _646);
  _647 = *((&_633->field10));
  little_endian_store_16(_644, 7, _647);
  _648 = *((&_633->field3));
  little_endian_store_16(_644, 9, _648);
  _649 = memcpy(((&_635.array[((int32_t)11)])), ((&_633->field6.array[((int32_t)0)])), 6);
  _650 = *((&_633->field8));
  little_endian_store_16(_644, 17, _650);
  _651 = *_642;
  _651(4, 0, _644, 19);
  goto _655;

_655:
  return;
}


static uint16_t bnep_max_frame_size_for_l2cap_mtu(uint16_t _657) {
  uint16_t _658;
  uint8_t _659;
  uint32_t _660;

  _658 = llvm_add_u16(_657, -15);
  _659 = l2cap_debug_enable;
  if ((((((int8_t)_659) < ((int8_t)((uint8_t)0)))&1))) {
    goto _661;
  } else {
    goto _662;
  }

_661:
  _660 =  /*tail*/ printf(((&_OC_str_OC_23.array[((int32_t)0)])), (((uint32_t)(uint16_t)_657)), (((uint32_t)(uint16_t)_658)));
  goto _662;

_662:
  return _658;
}


static uint32_t bnep_handle_control_packet(struct l_struct_struct_OC_bnep_channel_t* _663, uint8_t* _664, uint16_t _665, uint32_t _666) {
  uint8_t _667;
  uint8_t _668;
  uint32_t _669;
  uint32_t _670;
  uint8_t _671;
  uint16_t _672;
  uint8_t _673;
  uint32_t _674;
  uint8_t _675;
  uint16_t _676;
  uint32_t _677;
  uint8_t _678;
  uint32_t _679;
  uint32_t _680;
  uint32_t _681;
  uint8_t _682;
  uint16_t _683;
  uint32_t _684;
  uint8_t _685;
  uint16_t _686;
  uint32_t _687;
  uint32_t _688;
  uint32_t _688__PHI_TEMPORARY;
  uint32_t _689;
  uint16_t* _690;
  uint32_t _691;
  uint16_t _692;
  uint16_t* _693;
  uint16_t _694;
  uint32_t _695;
  uint8_t _696;
  uint32_t _697;
  uint16_t _698;
  uint16_t _699;
  uint16_t _699__PHI_TEMPORARY;
  uint16_t _700;
  uint16_t _700__PHI_TEMPORARY;
  uint16_t _701;
  uint16_t _701__PHI_TEMPORARY;
  uint32_t _702;
  uint8_t _703;
  uint32_t _704;
  uint16_t _705;
  uint16_t _706;
  uint16_t _706__PHI_TEMPORARY;
  uint16_t _707;
  uint16_t _707__PHI_TEMPORARY;
  uint16_t _708;
  uint16_t _708__PHI_TEMPORARY;
  struct l_struct_struct_OC_btstack_linked_item* _709;
  struct l_struct_struct_OC_btstack_linked_item* _710;
  struct l_struct_struct_OC_btstack_linked_item* _711;
  struct l_struct_struct_OC_btstack_linked_item* _711__PHI_TEMPORARY;
  uint16_t _712;
  uint32_t _713;
  uint16_t _714;
  uint16_t _715;
  uint16_t _715__PHI_TEMPORARY;
  uint32_t* _716;
  uint32_t _717;
  uint8_t _718;
  uint16_t _719;
  uint32_t _720;
  uint32_t* _721;
  uint32_t _722;
  uint8_t _723;
  uint32_t _724;
  uint32_t _725;
  uint32_t _726;
  uint8_t _727;
  uint8_t* _728;
  uint32_t _729;
  uint8_t _730;
  uint8_t* _731;
  uint32_t _732;
  uint32_t _733;
  uint32_t _734;
  uint32_t _735;
  uint32_t _736;
  uint32_t _737;
  uint8_t _738;
  uint32_t _739;
  uint32_t _740;
  uint8_t _741;
  uint32_t _742;
  uint16_t* _743;
  uint32_t _744;
  uint32_t _744__PHI_TEMPORARY;
  uint16_t _745;
  uint16_t _745__PHI_TEMPORARY;
  uint32_t _746;
  uint32_t _747;
  uint16_t _748;
  uint32_t _749;
  uint16_t _750;
  uint16_t _751;
  uint32_t _752;
  uint16_t _753;
  uint32_t _754;
  uint32_t _755;
  uint8_t _756;
  uint32_t _757;
  uint8_t _758;
  uint32_t _759;
  uint16_t _760;
  uint16_t _761;
  uint16_t _761__PHI_TEMPORARY;
  uint16_t _762;
  uint16_t _762__PHI_TEMPORARY;
  uint32_t _763;
  uint16_t _764;
  uint16_t _764__PHI_TEMPORARY;
  uint32_t* _765;
  uint32_t _766;
  uint32_t _767;
  uint32_t _768;
  uint8_t _769;
  uint32_t _770;
  uint32_t _771;
  uint32_t _772;
  uint8_t _773;
  uint8_t* _774;
  uint32_t _775;
  uint8_t _776;
  uint8_t* _777;
  uint32_t _778;
  uint32_t _779;
  uint32_t _780;
  uint32_t _781;
  uint32_t _782;
  uint32_t _783;
  uint8_t _784;
  uint32_t _785;
  uint32_t _786;
  uint8_t _787;
  uint32_t _788;
  uint16_t* _789;
  uint8_t* _790;
  uint16_t _791;
  uint16_t _791__PHI_TEMPORARY;
  uint32_t _792;
  uint32_t _792__PHI_TEMPORARY;
  uint16_t _793;
  uint16_t _793__PHI_TEMPORARY;
  uint8_t* _794;
  uint8_t* _795;
  uint16_t _796;
  uint8_t* _797;
  uint16_t _798;
  uint32_t _799;
  uint8_t* _800;
  uint32_t _801;
  uint8_t _802;
  uint8_t* _803;
  uint32_t _804;
  uint8_t _805;
  uint8_t _806;
  uint8_t _806__PHI_TEMPORARY;
  uint16_t _807;
  uint8_t* _808;
  uint32_t _809;
  uint8_t _810;
  uint8_t* _811;
  uint32_t _812;
  uint8_t _813;
  uint16_t _814;
  uint8_t* _815;
  uint32_t _816;
  uint16_t _817;
  uint16_t _818;
  uint16_t _818__PHI_TEMPORARY;
  uint32_t _819;
  uint16_t _820;
  uint16_t _821;
  uint16_t _821__PHI_TEMPORARY;
  uint32_t* _822;
  uint32_t _823;
  uint32_t _824;
  uint32_t _825;
  uint8_t _826;
  uint32_t _827;
  uint32_t _828;
  uint32_t _829;
  uint8_t _830;
  uint8_t* _831;
  uint32_t _832;
  uint8_t _833;
  uint8_t* _834;
  uint32_t _835;
  uint8_t _836;
  uint16_t _837;
  uint32_t _838;
  uint32_t _839;
  uint32_t _839__PHI_TEMPORARY;
  uint32_t _840;
  uint32_t* _841;
  uint32_t _842;
  uint32_t _843;
  uint32_t _843__PHI_TEMPORARY;

  _667 = *_664;
  *((&_663->field11)) = _667;
  _668 = l2cap_debug_enable;
  _669 = ((uint32_t)(uint8_t)_667);
  if ((((((int8_t)_668) < ((int8_t)((uint8_t)0)))&1))) {
    goto _844;
  } else {
    goto _845;
  }

_844:
  _670 =  /*tail*/ printf(((&_OC_str_OC_27.array[((int32_t)0)])), _669, (((uint32_t)(uint16_t)_665)), _666);
  goto _845;

_845:
  switch (_667) {
  default:
    goto _846;
  case ((uint8_t)0):
    goto _847;
  case ((uint8_t)1):
    goto _848;
  case ((uint8_t)2):
    goto _849;
  case ((uint8_t)3):
    goto _850;
  case ((uint8_t)4):
    goto _851;
  case ((uint8_t)5):
    goto _852;
  case ((uint8_t)6):
    goto _853;
  }

_847:
  _671 = profile_debug_enable;
  if (((((llvm_and_u8(_671, 4)) == ((uint8_t)0))&1))) {
    goto _854;
  } else {
    goto _855;
  }

_855:
  _672 = *((&_663->field7));
  _673 = *((&_664[((int32_t)3)]));
  _674 =  /*tail*/ printf(((&_OC_str_OC_28.array[((int32_t)0)])), (((uint32_t)(uint16_t)_672)), (((uint32_t)(uint8_t)_673)));
  goto _854;

_854:
   /*tail*/ bnep_channel_finalize(_663);
  _843__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _856;

_848:
  if ((((_666 == 0u)&1))) {
    goto _857;
  } else {
    goto _858;
  }

_858:
  _675 = profile_debug_enable;
  if (((((llvm_and_u8(_675, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _856;
  } else {
    goto _859;
  }

_859:
  _676 = *((&_663->field7));
  _677 =  /*tail*/ printf(((&_OC_str_OC_29.array[((int32_t)0)])), (((uint32_t)(uint16_t)_676)));
  _843__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _856;

_857:
  _678 = *((&_664[((int32_t)1)]));
  _679 = ((uint32_t)(uint8_t)_678);
  _680 = llvm_add_u32((_679 << 1), 2);
  if ((((((uint32_t)(((uint32_t)(uint16_t)_665))) < ((uint32_t)_680))&1))) {
    goto _860;
  } else {
    goto _861;
  }

_861:
  _681 = *((&_663->field1));
  switch (_681) {
  default:
    goto _862;
  case 2u:
    goto _863;
  case 4u:
    goto _863;
  }

_862:
  _682 = profile_debug_enable;
  if (((((llvm_and_u8(_682, 4)) == ((uint8_t)0))&1))) {
    goto _860;
  } else {
    goto _864;
  }

_864:
  _683 = *((&_663->field7));
  _684 =  /*tail*/ printf(((&_OC_str_OC_32.array[((int32_t)0)])), _681, (((uint32_t)(uint16_t)_683)));
  goto _860;

_863:
  switch (_678) {
  default:
    goto _865;
  case ((uint8_t)2):
    _688__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _866;
  case ((uint8_t)4):
    goto _867;
  case ((uint8_t)16):
    goto _867;
  }

_867:
  _688__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _866;

_865:
  _685 = profile_debug_enable;
  if (((((llvm_and_u8(_685, 4)) == ((uint8_t)0))&1))) {
    _715__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _868;
  } else {
    goto _869;
  }

_869:
  _686 = *((&_663->field7));
  _687 =  /*tail*/ printf(((&_OC_str_OC_33.array[((int32_t)0)])), _681, (((uint32_t)(uint16_t)_686)));
  _715__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _868;

_866:
  _688 = _688__PHI_TEMPORARY;
  _689 =  /*tail*/ big_endian_read_16(_664, _688);
  _690 = (&_663->field10);
  *_690 = (((uint16_t)_689));
  _691 =  /*tail*/ big_endian_read_16(_664, (llvm_add_u32(_688, _679)));
  _692 = ((uint16_t)_691);
  _693 = (&_663->field9);
  *_693 = _692;
  _694 = *_690;
  _695 = ((uint32_t)(uint16_t)_694);
  if ((((((uint16_t)(llvm_add_u16(_694, -4373))) < ((uint16_t)((uint16_t)3)))&1))) {
    _700__PHI_TEMPORARY = _694;   /* for PHI node */
    _701__PHI_TEMPORARY = _692;   /* for PHI node */
    goto _870;
  } else {
    goto _871;
  }

_871:
  _696 = profile_debug_enable;
  if (((((llvm_and_u8(_696, 4)) == ((uint8_t)0))&1))) {
    _699__PHI_TEMPORARY = _692;   /* for PHI node */
    goto _872;
  } else {
    goto _873;
  }

_873:
  _697 =  /*tail*/ printf(((&_OC_str_OC_34.array[((int32_t)0)])), _695);
  _698 = *_693;
  _699__PHI_TEMPORARY = _698;   /* for PHI node */
  goto _872;

_872:
  _699 = _699__PHI_TEMPORARY;
  *_690 = 0;
  _700__PHI_TEMPORARY = 0;   /* for PHI node */
  _701__PHI_TEMPORARY = _699;   /* for PHI node */
  goto _870;

_870:
  _700 = _700__PHI_TEMPORARY;
  _701 = _701__PHI_TEMPORARY;
  _702 = ((uint32_t)(uint16_t)_701);
  if ((((((uint16_t)(llvm_add_u16(_701, -4373))) < ((uint16_t)((uint16_t)3)))&1))) {
    _707__PHI_TEMPORARY = _701;   /* for PHI node */
    _708__PHI_TEMPORARY = _700;   /* for PHI node */
    goto _874;
  } else {
    goto _875;
  }

_875:
  _703 = profile_debug_enable;
  if (((((llvm_and_u8(_703, 4)) == ((uint8_t)0))&1))) {
    _706__PHI_TEMPORARY = _700;   /* for PHI node */
    goto _876;
  } else {
    goto _877;
  }

_877:
  _704 =  /*tail*/ printf(((&_OC_str_OC_35.array[((int32_t)0)])), _702);
  _705 = *_690;
  _706__PHI_TEMPORARY = _705;   /* for PHI node */
  goto _876;

_876:
  _706 = _706__PHI_TEMPORARY;
  *_693 = 0;
  _707__PHI_TEMPORARY = 0;   /* for PHI node */
  _708__PHI_TEMPORARY = _706;   /* for PHI node */
  goto _874;

_874:
  _707 = _707__PHI_TEMPORARY;
  _708 = _708__PHI_TEMPORARY;
  _709 = bnep_services;
  if ((((_709 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    _715__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _868;
  } else {
    goto _878;
  }

_878:
  _711__PHI_TEMPORARY = _709;   /* for PHI node */
  goto _879;

  do {     /* Syntactic loop '' to make GCC happy */
_879:
  _711 = _711__PHI_TEMPORARY;
  _712 = *(((uint16_t*)((&_711[((int32_t)1)]))));
  if ((((_712 == _708)&1))) {
    goto _880;
  } else {
    goto _881;
  }

_881:
  _710 = *((&_711->field0));
  if ((((_710 == ((struct l_struct_struct_OC_btstack_linked_item*)/*NULL*/0))&1))) {
    goto _882;
  } else {
    _711__PHI_TEMPORARY = _710;   /* for PHI node */
    goto _879;
  }

  } while (1); /* end of syntactic loop '' */
_880:
  _713 = *(((uint32_t*)((&_711[((int32_t)2)]))));
  *(((uint32_t*)((&_663->field24)))) = _713;
  if ((((_707 == ((uint16_t)4373))&1))) {
    _715__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _868;
  } else {
    goto _883;
  }

_883:
  _714 = llvm_select_u16((((_708 == ((uint16_t)4373))&1)), 0, 2);
  _715__PHI_TEMPORARY = _714;   /* for PHI node */
  goto _868;

_882:
  _715__PHI_TEMPORARY = 1;   /* for PHI node */
  goto _868;

_868:
  _715 = _715__PHI_TEMPORARY;
  _716 = (&_663->field2);
  _717 = *_716;
  *_716 = (_717 | 4);
  *((&_663->field12)) = _715;
  _839__PHI_TEMPORARY = _680;   /* for PHI node */
  goto _884;

_849:
  if ((((_666 == 0u)&1))) {
    goto _885;
  } else {
    goto _886;
  }

_886:
  _718 = profile_debug_enable;
  if (((((llvm_and_u8(_718, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _856;
  } else {
    goto _887;
  }

_887:
  _719 = *((&_663->field7));
  _720 =  /*tail*/ printf(((&_OC_str_OC_30.array[((int32_t)0)])), (((uint32_t)(uint16_t)_719)));
  _843__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _856;

_885:
  if ((((((uint16_t)_665) < ((uint16_t)((uint16_t)3)))&1))) {
    goto _860;
  } else {
    goto _888;
  }

_888:
  _721 = (&_663->field1);
  _722 = *_721;
  if ((((_722 == 3u)&1))) {
    goto _889;
  } else {
    goto _890;
  }

_890:
  _723 = profile_debug_enable;
  if (((((llvm_and_u8(_723, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  } else {
    goto _891;
  }

_891:
  _724 =  /*tail*/ printf(((&_OC_str_OC_36.array[((int32_t)0)])), _722);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_889:
  _725 =  /*tail*/ big_endian_read_16(_664, 1);
  _726 = _725 & 65535;
  if ((((_726 == 0u)&1))) {
    goto _892;
  } else {
    goto _893;
  }

_892:
  _727 = l2cap_debug_enable;
  if ((((((int8_t)_727) < ((int8_t)((uint8_t)0)))&1))) {
    goto _894;
  } else {
    goto _895;
  }

_894:
  _728 =  /*tail*/ bd_addr_to_str(((&_663->field6.array[((int32_t)0)])));
  _729 =  /*tail*/ printf(((&_OC_str_OC_37.array[((int32_t)0)])), _728);
  goto _895;

_895:
  *_721 = 4;
   /*tail*/ bnep_emit_open_channel_complete(_663, 0);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_893:
  _730 = profile_debug_enable;
  if (((((llvm_and_u8(_730, 4)) == ((uint8_t)0))&1))) {
    goto _896;
  } else {
    goto _897;
  }

_897:
  _731 =  /*tail*/ bd_addr_to_str(((&_663->field6.array[((int32_t)0)])));
  _732 =  /*tail*/ printf(((&_OC_str_OC_38.array[((int32_t)0)])), _731, _726);
  goto _896;

_896:
   /*tail*/ bnep_channel_finalize(_663);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_850:
  if ((((((uint16_t)_665) < ((uint16_t)((uint16_t)3)))&1))) {
    goto _860;
  } else {
    goto _898;
  }

_898:
  _733 =  /*tail*/ big_endian_read_16(_664, 1);
  _734 = _733 & 65535;
  _735 = llvm_add_u32(_734, 3);
  if ((((((uint32_t)(((uint32_t)(uint16_t)_665))) < ((uint32_t)_735))&1))) {
    goto _860;
  } else {
    goto _899;
  }

_899:
  _736 = *((&_663->field1));
  switch (_736) {
  default:
    goto _900;
  case 4u:
    goto _901;
  case 2u:
    goto _902;
  }

_902:
  _737 = *((&_663->field2));
  if (((((_737 & 4) == 0u)&1))) {
    goto _900;
  } else {
    goto _901;
  }

_900:
  _738 = profile_debug_enable;
  if (((((llvm_and_u8(_738, 4)) == ((uint8_t)0))&1))) {
    _839__PHI_TEMPORARY = _735;   /* for PHI node */
    goto _884;
  } else {
    goto _903;
  }

_903:
  _739 =  /*tail*/ printf(((&_OC_str_OC_39.array[((int32_t)0)])), _736);
  _839__PHI_TEMPORARY = _735;   /* for PHI node */
  goto _884;

_901:
  _740 = llvm_lshr_u32(_734, 2);
  if ((((((uint32_t)_734) > ((uint32_t)35u))&1))) {
    goto _904;
  } else {
    goto _905;
  }

_904:
  _741 = l2cap_debug_enable;
  if ((((((int8_t)_741) < ((int8_t)((uint8_t)0)))&1))) {
    goto _906;
  } else {
    _764__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _907;
  }

_906:
  _742 =  /*tail*/ puts(((&str_OC_65.array[((int32_t)0)])));
  _764__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _907;

_905:
  _743 = (&_663->field14);
  *_743 = 0;
  if ((((_740 == 0u)&1))) {
    _764__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _907;
  } else {
    goto _908;
  }

_908:
  _744__PHI_TEMPORARY = 0;   /* for PHI node */
  _745__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _909;

  do {     /* Syntactic loop '' to make GCC happy */
_909:
  _744 = _744__PHI_TEMPORARY;
  _745 = _745__PHI_TEMPORARY;
  _746 = (_744 << 2) | 3;
  _747 =  /*tail*/ big_endian_read_16(_664, _746);
  _748 = *_743;
  *((&_663->field13.array[((int32_t)(((uint32_t)(uint16_t)_748)))].field0)) = (((uint16_t)_747));
  _749 =  /*tail*/ big_endian_read_16(_664, (llvm_add_u32(_746, 2)));
  _750 = ((uint16_t)_749);
  _751 = *_743;
  _752 = ((uint32_t)(uint16_t)_751);
  *((&_663->field13.array[((int32_t)_752)].field1)) = _750;
  _753 = *((&_663->field13.array[((int32_t)_752)].field0));
  _754 = ((uint32_t)(uint16_t)_753);
  _755 = _749 & 65535;
  if ((((((uint16_t)_753) > ((uint16_t)_750))&1))) {
    goto _910;
  } else {
    goto _911;
  }

_911:
  _758 = l2cap_debug_enable;
  if ((((((int8_t)_758) < ((int8_t)((uint8_t)0)))&1))) {
    goto _912;
  } else {
    _761__PHI_TEMPORARY = _751;   /* for PHI node */
    goto _913;
  }

_912:
  _759 =  /*tail*/ printf(((&_OC_str_OC_42.array[((int32_t)0)])), _754, _755);
  _760 = *_743;
  _761__PHI_TEMPORARY = _760;   /* for PHI node */
  goto _913;

_913:
  _761 = _761__PHI_TEMPORARY;
  *_743 = (llvm_add_u16(_761, 1));
  _762__PHI_TEMPORARY = _745;   /* for PHI node */
  goto _914;

_910:
  _756 = profile_debug_enable;
  if (((((llvm_and_u8(_756, 4)) == ((uint8_t)0))&1))) {
    _762__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _914;
  } else {
    goto _915;
  }

_915:
  _757 =  /*tail*/ printf(((&_OC_str_OC_41.array[((int32_t)0)])), _754, _755);
  _762__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _914;

_914:
  _762 = _762__PHI_TEMPORARY;
  _763 = llvm_add_u32(_744, 1);
  if ((((_763 == _740)&1))) {
    goto _916;
  } else {
    _744__PHI_TEMPORARY = _763;   /* for PHI node */
    _745__PHI_TEMPORARY = _762;   /* for PHI node */
    goto _909;
  }

  } while (1); /* end of syntactic loop '' */
_916:
  _764__PHI_TEMPORARY = _762;   /* for PHI node */
  goto _907;

_907:
  _764 = _764__PHI_TEMPORARY;
  _765 = (&_663->field2);
  _766 = *_765;
  *_765 = (_766 | 16);
  *((&_663->field12)) = _764;
  _839__PHI_TEMPORARY = _735;   /* for PHI node */
  goto _884;

_851:
  if ((((((uint16_t)_665) < ((uint16_t)((uint16_t)3)))&1))) {
    goto _860;
  } else {
    goto _917;
  }

_917:
  _767 = *((&_663->field1));
  switch (_767) {
  default:
    goto _918;
  case 4u:
    goto _919;
  case 2u:
    goto _920;
  }

_920:
  _768 = *((&_663->field2));
  if (((((_768 & 4) == 0u)&1))) {
    goto _918;
  } else {
    goto _919;
  }

_918:
  _769 = profile_debug_enable;
  if (((((llvm_and_u8(_769, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  } else {
    goto _921;
  }

_921:
  _770 =  /*tail*/ printf(((&_OC_str_OC_43.array[((int32_t)0)])), _767);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_919:
  _771 =  /*tail*/ big_endian_read_16(_664, 1);
  _772 = _771 & 65535;
  if ((((_772 == 0u)&1))) {
    goto _922;
  } else {
    goto _923;
  }

_922:
  _773 = l2cap_debug_enable;
  if ((((((int8_t)_773) < ((int8_t)((uint8_t)0)))&1))) {
    goto _924;
  } else {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  }

_924:
  _774 =  /*tail*/ bd_addr_to_str(((&_663->field6.array[((int32_t)0)])));
  _775 =  /*tail*/ printf(((&_OC_str_OC_44.array[((int32_t)0)])), _774);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_923:
  _776 = profile_debug_enable;
  if (((((llvm_and_u8(_776, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  } else {
    goto _925;
  }

_925:
  _777 =  /*tail*/ bd_addr_to_str(((&_663->field6.array[((int32_t)0)])));
  _778 =  /*tail*/ printf(((&_OC_str_OC_45.array[((int32_t)0)])), _777, _772);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_852:
  if ((((((uint16_t)_665) < ((uint16_t)((uint16_t)3)))&1))) {
    goto _860;
  } else {
    goto _926;
  }

_926:
  _779 =  /*tail*/ big_endian_read_16(_664, 1);
  _780 = _779 & 65535;
  _781 = llvm_add_u32(_780, 3);
  if ((((((uint32_t)(((uint32_t)(uint16_t)_665))) < ((uint32_t)_781))&1))) {
    goto _860;
  } else {
    goto _927;
  }

_927:
  _782 = *((&_663->field1));
  switch (_782) {
  default:
    goto _928;
  case 4u:
    goto _929;
  case 2u:
    goto _930;
  }

_930:
  _783 = *((&_663->field2));
  if (((((_783 & 4) == 0u)&1))) {
    goto _928;
  } else {
    goto _929;
  }

_928:
  _784 = profile_debug_enable;
  if (((((llvm_and_u8(_784, 4)) == ((uint8_t)0))&1))) {
    _839__PHI_TEMPORARY = _781;   /* for PHI node */
    goto _884;
  } else {
    goto _931;
  }

_931:
  _785 =  /*tail*/ printf(((&_OC_str_OC_46.array[((int32_t)0)])), _782);
  _839__PHI_TEMPORARY = _781;   /* for PHI node */
  goto _884;

_929:
  _786 = llvm_udiv_u32(_780, 12);
  if ((((((uint32_t)_780) > ((uint32_t)107u))&1))) {
    goto _932;
  } else {
    goto _933;
  }

_932:
  _787 = l2cap_debug_enable;
  if ((((((int8_t)_787) < ((int8_t)((uint8_t)0)))&1))) {
    goto _934;
  } else {
    _821__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _935;
  }

_934:
  _788 =  /*tail*/ puts(((&str_OC_66.array[((int32_t)0)])));
  _821__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _935;

_933:
  _789 = (&_663->field18);
  *_789 = 0;
  if ((((((uint32_t)_780) > ((uint32_t)11u))&1))) {
    goto _936;
  } else {
    _821__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _935;
  }

_936:
  _790 = (&_664[((int32_t)3)]);
  _791__PHI_TEMPORARY = 0;   /* for PHI node */
  _792__PHI_TEMPORARY = 0;   /* for PHI node */
  _793__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _937;

  do {     /* Syntactic loop '' to make GCC happy */
_937:
  _791 = _791__PHI_TEMPORARY;
  _792 = _792__PHI_TEMPORARY;
  _793 = _793__PHI_TEMPORARY;
  _794 = (&_790[((int32_t)(llvm_mul_u32(_792, 12)))]);
  _795 = memcpy(((&_663->field17.array[((int32_t)(((uint32_t)(uint16_t)_791)))].field0.array[((int32_t)0)])), _794, 6);
  _796 = *_789;
  _797 = memcpy(((&_663->field17.array[((int32_t)(((uint32_t)(uint16_t)_796)))].field1.array[((int32_t)0)])), ((&_794[((int32_t)6)])), 6);
  _798 = *_789;
  _799 = ((uint32_t)(uint16_t)_798);
  _800 = (&_663->field17.array[((int32_t)_799)].field0.array[((int32_t)0)]);
  _801 =  /*tail*/ memcmp(_800, ((&_663->field17.array[((int32_t)_799)].field1.array[((int32_t)0)])), 6);
  if ((((((int32_t)_801) > ((int32_t)0u))&1))) {
    goto _938;
  } else {
    goto _939;
  }

_939:
  _810 = l2cap_debug_enable;
  if ((((((int8_t)_810) < ((int8_t)((uint8_t)0)))&1))) {
    goto _940;
  } else {
    goto _941;
  }

_940:
  _811 =  /*tail*/ bd_addr_to_str(_800);
  _812 =  /*tail*/ printf(((&_OC_str_OC_50.array[((int32_t)0)])), _811);
  _813 = l2cap_debug_enable;
  if ((((((int8_t)_813) < ((int8_t)((uint8_t)0)))&1))) {
    goto _942;
  } else {
    goto _941;
  }

_942:
  _814 = *_789;
  _815 =  /*tail*/ bd_addr_to_str(((&_663->field17.array[((int32_t)(((uint32_t)(uint16_t)_814)))].field1.array[((int32_t)0)])));
  _816 =  /*tail*/ printf(((&_OC_str_OC_51.array[((int32_t)0)])), _815);
  goto _941;

_941:
  _817 = *_789;
  *_789 = (llvm_add_u16(_817, 1));
  _818__PHI_TEMPORARY = _793;   /* for PHI node */
  goto _943;

_938:
  _802 = profile_debug_enable;
  if (((((llvm_and_u8(_802, 4)) == ((uint8_t)0))&1))) {
    _806__PHI_TEMPORARY = _802;   /* for PHI node */
    goto _944;
  } else {
    goto _945;
  }

_945:
  _803 =  /*tail*/ bd_addr_to_str(_800);
  _804 =  /*tail*/ printf(((&_OC_str_OC_48.array[((int32_t)0)])), _803);
  _805 = profile_debug_enable;
  _806__PHI_TEMPORARY = _805;   /* for PHI node */
  goto _944;

_944:
  _806 = _806__PHI_TEMPORARY;
  if (((((llvm_and_u8(_806, 4)) == ((uint8_t)0))&1))) {
    _818__PHI_TEMPORARY = 2;   /* for PHI node */
    goto _943;
  } else {
    goto _946;
  }

_946:
  _807 = *_789;
  _808 =  /*tail*/ bd_addr_to_str(((&_663->field17.array[((int32_t)(((uint32_t)(uint16_t)_807)))].field1.array[((int32_t)0)])));
  _809 =  /*tail*/ printf(((&_OC_str_OC_49.array[((int32_t)0)])), _808);
  _818__PHI_TEMPORARY = 2;   /* for PHI node */
  goto _943;

_943:
  _818 = _818__PHI_TEMPORARY;
  _819 = llvm_add_u32(_792, 1);
  if ((((((uint32_t)_819) < ((uint32_t)_786))&1))) {
    goto _947;
  } else {
    goto _948;
  }

_947:
  _820 = *_789;
  _791__PHI_TEMPORARY = _820;   /* for PHI node */
  _792__PHI_TEMPORARY = _819;   /* for PHI node */
  _793__PHI_TEMPORARY = _818;   /* for PHI node */
  goto _937;

  } while (1); /* end of syntactic loop '' */
_948:
  _821__PHI_TEMPORARY = _818;   /* for PHI node */
  goto _935;

_935:
  _821 = _821__PHI_TEMPORARY;
  _822 = (&_663->field2);
  _823 = *_822;
  *_822 = (_823 | 64);
  *((&_663->field12)) = _821;
  _839__PHI_TEMPORARY = _781;   /* for PHI node */
  goto _884;

_853:
  if ((((((uint16_t)_665) < ((uint16_t)((uint16_t)3)))&1))) {
    goto _860;
  } else {
    goto _949;
  }

_949:
  _824 = *((&_663->field1));
  switch (_824) {
  default:
    goto _950;
  case 4u:
    goto _951;
  case 2u:
    goto _952;
  }

_952:
  _825 = *((&_663->field2));
  if (((((_825 & 4) == 0u)&1))) {
    goto _950;
  } else {
    goto _951;
  }

_950:
  _826 = profile_debug_enable;
  if (((((llvm_and_u8(_826, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  } else {
    goto _953;
  }

_953:
  _827 =  /*tail*/ printf(((&_OC_str_OC_52.array[((int32_t)0)])), _824);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_951:
  _828 =  /*tail*/ big_endian_read_16(_664, 1);
  _829 = _828 & 65535;
  if ((((_829 == 0u)&1))) {
    goto _954;
  } else {
    goto _955;
  }

_954:
  _830 = l2cap_debug_enable;
  if ((((((int8_t)_830) < ((int8_t)((uint8_t)0)))&1))) {
    goto _956;
  } else {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  }

_956:
  _831 =  /*tail*/ bd_addr_to_str(((&_663->field6.array[((int32_t)0)])));
  _832 =  /*tail*/ printf(((&_OC_str_OC_53.array[((int32_t)0)])), _831);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_955:
  _833 = profile_debug_enable;
  if (((((llvm_and_u8(_833, 4)) == ((uint8_t)0))&1))) {
    _843__PHI_TEMPORARY = 3;   /* for PHI node */
    goto _856;
  } else {
    goto _957;
  }

_957:
  _834 =  /*tail*/ bd_addr_to_str(((&_663->field6.array[((int32_t)0)])));
  _835 =  /*tail*/ printf(((&_OC_str_OC_54.array[((int32_t)0)])), _834, _829);
  _843__PHI_TEMPORARY = 3;   /* for PHI node */
  goto _856;

_846:
  _836 = profile_debug_enable;
  if (((((llvm_and_u8(_836, 4)) == ((uint8_t)0))&1))) {
    goto _860;
  } else {
    goto _958;
  }

_958:
  _837 = *((&_663->field7));
  _838 =  /*tail*/ printf(((&_OC_str_OC_31.array[((int32_t)0)])), (((uint32_t)(uint16_t)_837)), _669);
  goto _860;

_884:
  _839 = _839__PHI_TEMPORARY;
  _840 = _839 & 65535;
  if ((((_840 == 0u)&1))) {
    goto _860;
  } else {
    _843__PHI_TEMPORARY = _840;   /* for PHI node */
    goto _856;
  }

_860:
  _841 = (&_663->field2);
  _842 = *_841;
  *_841 = (_842 | 1);
  _843__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _856;

_856:
  _843 = _843__PHI_TEMPORARY;
  return _843;
}


static void bnep_send_connection_response(struct l_struct_struct_OC_bnep_channel_t* _959, uint16_t _960) {
  struct l_array_10_uint8_t _961;    /* Address-exposed local */
  uint8_t* _962;
  uint32_t _963;
  uint16_t* _964;
  uint16_t _965;
  uint32_t _966;
  uint16_t _967;
  uint32_t _968;

  _962 = (&_961.array[((int32_t)0)]);
  _963 = *((&_959->field1));
  if ((((_963 == 1u)&1))) {
    goto _969;
  } else {
    goto _970;
  }

_970:
  _964 = (&_959->field7);
  _965 = *_964;
  _966 =  /*tail*/ l2cap_can_send_packet_now(_965);
  if ((((_966 == 0u)&1))) {
    goto _969;
  } else {
    goto _971;
  }

_971:
  *_962 = 1;
  *((&_961.array[((int32_t)1)])) = 2;
  big_endian_store_16(_962, 2, _960);
  _967 = *_964;
  _968 = l2cap_send_internal(_967, _962, 4, 0);
  goto _969;

_969:
  return;
}


static void bnep_send_filter_net_type_set(struct l_struct_struct_OC_bnep_channel_t* _972, struct l_struct_struct_OC_bnep_net_filter_t* _973, uint16_t _974) {
  uint32_t _975;
  uint32_t _976;
  uint8_t* _977;
  uint32_t _978;
  uint16_t* _979;
  uint16_t _980;
  uint32_t _981;
  uint32_t _982;
  uint16_t _983;
  uint32_t _984;
  uint32_t _984__PHI_TEMPORARY;
  uint16_t _985;
  uint16_t _985__PHI_TEMPORARY;
  uint16_t _986;
  uint16_t _987;
  uint32_t _988;
  uint16_t _989;
  uint16_t _990;
  uint16_t _990__PHI_TEMPORARY;
  uint16_t _991;
  uint32_t _992;

  _975 = ((uint32_t)(uint16_t)_974);
  _976 = _975 << 2;
  _977 = (uint8_t*) alloca(sizeof(uint8_t) * ((llvm_add_u32(_976, 8))));
  _978 = *((&_972->field1));
  if ((((_978 == 1u)&1))) {
    goto _993;
  } else {
    goto _994;
  }

_994:
  _979 = (&_972->field7);
  _980 = *_979;
  _981 =  /*tail*/ l2cap_can_send_packet_now(_980);
  if ((((_981 == 0u)&1))) {
    goto _993;
  } else {
    goto _995;
  }

_995:
  *_977 = 1;
  *((&_977[((int32_t)1)])) = 3;
  big_endian_store_16(_977, 2, (((uint16_t)_976)));
  _982 = printf(((&_OC_str_OC_56.array[((int32_t)0)])), ((&__func___OC_bnep_send_filter_net_type_set.array[((int32_t)0)])), _975);
  if ((((_974 == ((uint16_t)0))&1))) {
    _990__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _996;
  } else {
    goto _997;
  }

_997:
  _983 = llvm_shl_u16(_974, 2);
  _984__PHI_TEMPORARY = 0;   /* for PHI node */
  _985__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _998;

  do {     /* Syntactic loop '' to make GCC happy */
_998:
  _984 = _984__PHI_TEMPORARY;
  _985 = _985__PHI_TEMPORARY;
  _986 = *((&_973[((int32_t)_984)].field0));
  big_endian_store_16(_977, _985, _986);
  _987 = *((&_973[((int32_t)_984)].field1));
  big_endian_store_16(_977, (llvm_or_u16(_985, 2)), _987);
  _988 = llvm_add_u32(_984, 1);
  if ((((_988 == _975)&1))) {
    goto _999;
  } else {
    _984__PHI_TEMPORARY = _988;   /* for PHI node */
    _985__PHI_TEMPORARY = (llvm_add_u16(_985, 4));   /* for PHI node */
    goto _998;
  }

  } while (1); /* end of syntactic loop '' */
_999:
  _989 = llvm_add_u16(_983, 4);
  _990__PHI_TEMPORARY = _989;   /* for PHI node */
  goto _996;

_996:
  _990 = _990__PHI_TEMPORARY;
  _991 = *_979;
  _992 = l2cap_send_internal(_991, _977, _990, 0);
  goto _993;

_993:
  return;
}


static void bnep_send_filter_multi_addr_set(struct l_struct_struct_OC_bnep_channel_t* _1000, struct l_struct_struct_OC_bnep_multi_filter_t* _1001, uint16_t _1002) {
  uint32_t _1003;
  uint32_t _1004;
  uint8_t* _1005;
  uint32_t _1006;
  uint16_t* _1007;
  uint16_t _1008;
  uint32_t _1009;
  uint16_t _1010;
  uint32_t _1011;
  uint32_t _1011__PHI_TEMPORARY;
  uint16_t _1012;
  uint16_t _1012__PHI_TEMPORARY;
  uint8_t* _1013;
  uint8_t* _1014;
  uint32_t _1015;
  uint16_t _1016;
  uint16_t _1017;
  uint16_t _1017__PHI_TEMPORARY;
  uint16_t _1018;
  uint32_t _1019;

  _1003 = ((uint32_t)(uint16_t)_1002);
  _1004 = llvm_mul_u32(_1003, 12);
  _1005 = (uint8_t*) alloca(sizeof(uint8_t) * ((llvm_add_u32(_1004, 8))));
  _1006 = *((&_1000->field1));
  if ((((_1006 == 1u)&1))) {
    goto _1020;
  } else {
    goto _1021;
  }

_1021:
  _1007 = (&_1000->field7);
  _1008 = *_1007;
  _1009 =  /*tail*/ l2cap_can_send_packet_now(_1008);
  if ((((_1009 == 0u)&1))) {
    goto _1020;
  } else {
    goto _1022;
  }

_1022:
  *_1005 = 1;
  *((&_1005[((int32_t)1)])) = 5;
  big_endian_store_16(_1005, 2, (((uint16_t)_1004)));
  if ((((_1002 == ((uint16_t)0))&1))) {
    _1017__PHI_TEMPORARY = 4;   /* for PHI node */
    goto _1023;
  } else {
    goto _1024;
  }

_1024:
  _1010 = llvm_mul_u16(_1002, 12);
  _1011__PHI_TEMPORARY = 0;   /* for PHI node */
  _1012__PHI_TEMPORARY = 4;   /* for PHI node */
  goto _1025;

  do {     /* Syntactic loop '' to make GCC happy */
_1025:
  _1011 = _1011__PHI_TEMPORARY;
  _1012 = _1012__PHI_TEMPORARY;
  _1013 = memcpy(((&_1005[((int32_t)(((uint32_t)(uint16_t)_1012)))])), ((&_1001[((int32_t)_1011)].field0.array[((int32_t)0)])), 6);
  _1014 = memcpy(((&_1005[((int32_t)(((uint32_t)(uint16_t)(llvm_add_u16(_1012, 6)))))])), ((&_1001[((int32_t)_1011)].field1.array[((int32_t)0)])), 6);
  _1015 = llvm_add_u32(_1011, 1);
  if ((((_1015 == _1003)&1))) {
    goto _1026;
  } else {
    _1011__PHI_TEMPORARY = _1015;   /* for PHI node */
    _1012__PHI_TEMPORARY = (llvm_add_u16(_1012, 12));   /* for PHI node */
    goto _1025;
  }

  } while (1); /* end of syntactic loop '' */
_1026:
  _1016 = llvm_add_u16(_1010, 4);
  _1017__PHI_TEMPORARY = _1016;   /* for PHI node */
  goto _1023;

_1023:
  _1017 = _1017__PHI_TEMPORARY;
  _1018 = *_1007;
  _1019 = l2cap_send_internal(_1018, _1005, _1017, 0);
  goto _1020;

_1020:
  return;
}

