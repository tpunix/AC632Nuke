/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifdef _MSC_VER
#define __noreturn __declspec(noreturn)
#else
#define __noreturn __attribute__((noreturn))
#endif
#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
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
struct l_struct_struct_OC_hci_transport_config_uart_t;
struct l_struct_struct_OC_lp_target;
struct l_struct_struct_OC_hci_transport_t;
struct l_struct_union_OC_anon;
struct l_struct_struct_OC_xSTATIC_MINI_LIST_ITEM;
struct l_struct_struct_OC_xSTATIC_LIST;
struct l_struct_struct_OC_xSTATIC_QUEUE;

/* Function definitions */
typedef uint32_t l_fptr_5(void);

typedef void l_fptr_8(uint32_t, uint8_t*, uint32_t);

typedef void l_fptr_9(l_fptr_8*);

typedef void l_fptr_7(uint8_t*);

typedef void l_fptr_4(void);

typedef void l_fptr_1(void);

typedef void l_fptr_13(uint16_t, uint32_t);

typedef uint8_t l_fptr_6(void);

typedef uint8_t* l_fptr_2(void);

typedef uint32_t l_fptr_3(void);

typedef uint32_t l_fptr_12(uint32_t);

typedef uint32_t l_fptr_11(uint32_t, uint8_t*, uint32_t);

typedef uint32_t l_fptr_10(uint8_t);


/* Types Definitions */
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_26_uint8_t {
  uint8_t array[26];
};
struct l_struct_struct_OC_hci_transport_config_uart_t {
  uint32_t field0;
  uint32_t field1;
  uint32_t field2;
  uint32_t field3;
  uint8_t* field4;
};
struct l_array_18_uint8_t {
  uint8_t array[18];
};
struct l_array_23_uint8_t {
  uint8_t array[23];
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_107_uint8_t {
  uint8_t array[107];
};
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_struct_struct_OC_lp_target {
  uint8_t* field0;
  l_fptr_5* field1;
  l_fptr_6* field2;
};
struct l_array_13_uint8_t {
  uint8_t array[13];
};
struct l_struct_struct_OC_hci_transport_t {
  uint8_t* field0;
  l_fptr_7* field1;
  l_fptr_5* field2;
  l_fptr_5* field3;
  l_fptr_9* field4;
  l_fptr_10* field5;
  l_fptr_11* field6;
  l_fptr_12* field7;
  l_fptr_4* field8;
  l_fptr_13* field9;
};
struct l_array_3_uint8_t_KC_ {
  uint8_t* array[3];
};
struct l_struct_union_OC_anon {
  uint8_t* field0;
};
struct l_array_2_uint8_t_KC_ {
  uint8_t* array[2];
};
struct l_struct_struct_OC_xSTATIC_MINI_LIST_ITEM {
  uint32_t field0;
  struct l_array_2_uint8_t_KC_ field1;
};
struct l_struct_struct_OC_xSTATIC_LIST {
  uint32_t field0;
  uint8_t* field1;
  struct l_struct_struct_OC_xSTATIC_MINI_LIST_ITEM field2;
};
struct l_array_2_struct_AC_l_struct_struct_OC_xSTATIC_LIST {
  struct l_struct_struct_OC_xSTATIC_LIST array[2];
};
struct l_array_3_uint32_t {
  uint32_t array[3];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};
struct l_struct_struct_OC_xSTATIC_QUEUE {
  struct l_array_3_uint8_t_KC_ field0;
  struct l_struct_union_OC_anon field1;
  struct l_array_2_struct_AC_l_struct_struct_OC_xSTATIC_LIST field2;
  struct l_array_3_uint32_t field3;
  struct l_array_2_uint8_t field4;
  uint8_t field5;
  uint32_t field6;
  uint8_t field7;
};
struct l_array_2_uint32_t {
  uint32_t array[2];
};
struct l_array_32_uint32_t {
  uint32_t array[32];
};

/* External Global Variable Declarations */
extern uint32_t config_btctler_modules;
extern uint32_t config_btctler_mode;
extern uint32_t config_le_hci_connection_num;
extern uint32_t config_le_gatt_server_num;
extern uint32_t config_le_gatt_client_num;
extern uint32_t config_le_sm_support_enable;
extern uint32_t config_asser;
extern uint8_t l2cap_debug_enable;

/* Function Declarations */
void stack_run_loop_resume(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t os_taskq_post_type(uint8_t*, uint32_t, uint32_t, uint32_t*);
void stack_handout_credit(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btstack_send_msg_to_stack(uint32_t, uint32_t*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void btstack_task_init(void) __ATTRIBUTELIST__((noinline, nothrow)) __HIDDEN__;
void btstack_hci_init(int, ...);
void btstack_mem_init(void);
void btstack_bredr_le_init(void);
uint32_t hci_packet_handler(uint8_t, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t printf(uint8_t*, ...) __ATTRIBUTELIST__((nothrow));
uint32_t strcmp(uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow, pure));
uint8_t* os_current_task(int, ...);
void os_time_dly(uint32_t);
void ble_bqb_test_thread_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
void dut_le_hw_open(void);
void dut_hci_controller_init(struct l_struct_struct_OC_hci_transport_t*, uint8_t*);
struct l_struct_struct_OC_hci_transport_t* hci_transport_uart_instance(void);
uint32_t btstack_init(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t btctrler_task_init(uint8_t*, uint8_t*);
struct l_struct_struct_OC_hci_transport_t* hci_transport_h4_controller_instance(void);
uint32_t btctrler_task_ready(int, ...);
uint32_t task_create(l_fptr_7*, uint8_t*, uint8_t*);
static __noreturn void btstack_task(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t btstack_exit(void) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint8_t* malloc(uint32_t) __ATTRIBUTELIST__((nothrow));
void cpu_assert_debug(int, ...);
static void cpu_reset(void) __ATTRIBUTELIST__((nothrow));
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
void ble_stack_exit(uint32_t);
uint32_t btctrler_task_exit(int, ...);
uint32_t bredr_release(int, ...);
uint32_t putchar(uint32_t) __ATTRIBUTELIST__((nothrow));
void update_bt_current_status(uint8_t*, uint8_t, uint8_t);
uint32_t os_sem_create(struct l_struct_struct_OC_xSTATIC_QUEUE*, uint32_t);
uint32_t os_sem_pend(struct l_struct_struct_OC_xSTATIC_QUEUE*, uint32_t);
void free(uint8_t*) __ATTRIBUTELIST__((nothrow));
uint32_t task_kill(uint8_t*);
static uint8_t btstack_lowpower_idle_query(void) __ATTRIBUTELIST__((nothrow, pure));
static uint32_t cpu_in_irq(void) __ATTRIBUTELIST__((nothrow));
uint32_t os_taskq_pend(uint8_t*, uint32_t*, uint32_t);
void hci_event_handler(uint8_t*);
void hci_acl_handler(uint8_t*, uint16_t);
uint32_t os_sem_post(struct l_struct_struct_OC_xSTATIC_QUEUE*);
void l2cap_hand_out_credits_for_send(void);
void bt_profile_loop(void);
extern void ble_profile_loop(void) __EXTERNAL_WEAK__;
void p33_soft_reset(void);


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_8_uint8_t _OC_str = { "btstack" };
static struct l_array_26_uint8_t _OC_str_OC_1 = { "btprofile: qfull: %d, %d\n" };
static struct l_struct_struct_OC_hci_transport_config_uart_t config = { 0, 115200, 0, 0, ((uint8_t*)/*NULL*/0) };
static struct l_array_18_uint8_t _OC_str_OC_2 = { "le_support:%x %x\n" };
static struct l_array_23_uint8_t _OC_str_OC_3 = { "le_config:%x %x %x %x\n" };
static bool is_btstack_lowpower_active;
static bool btstack_task_create_flag;
static struct l_array_17_uint8_t _OC_str_OC_4 = { "file:%s, line:%d" };
static struct l_array_107_uint8_t _OC_str_OC_5 = { "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c" };
static struct l_array_19_uint8_t _OC_str_OC_6 = { "ASSERT-FAILD: sem " };
static struct l_array_20_uint8_t _OC_str_OC_7 = { "btstack_exit enter\n" };
static struct l_array_15_uint8_t _OC_str_OC_8 = { "ble_exit over\n" };
static struct l_array_21_uint8_t _OC_str_OC_9 = { "btctrler exit over \n" };
static struct l_array_20_uint8_t _OC_str_OC_10 = { "btstack exit over \n" };
static struct l_array_14_uint8_t _OC_str_OC_11 = { "btstack_exit\n" };
static struct l_array_21_uint8_t _OC_str_OC_12 = { "btstack_lowpwer_deal" };
struct l_struct_struct_OC_lp_target btstack_lowpower_target __HIDDEN__ = { ((&_OC_str_OC_12.array[((int32_t)0)])), ((l_fptr_5*)/*NULL*/0), btstack_lowpower_idle_query };
static struct l_array_13_uint8_t _OC_str_OC_13 = { "app init ok\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint8_t llvm_add_u8(uint8_t a, uint8_t b) {
  uint8_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
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


/* Function Bodies */

void stack_run_loop_resume(void) {
  uint32_t _1;

#line 54 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _1 =  /*tail*/ os_taskq_post_type(((&_OC_str.array[((int32_t)0)])), 255, 0, ((uint32_t*)/*NULL*/0));
}


void stack_handout_credit(void) {
  uint32_t _2;

#line 60 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _2 =  /*tail*/ os_taskq_post_type(((&_OC_str.array[((int32_t)0)])), 4194310, 0, ((uint32_t*)/*NULL*/0));
}


uint32_t btstack_send_msg_to_stack(uint32_t _3, uint32_t* _4) {
  uint32_t _5;

#line 62 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
  ;
#line 64 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _5 =  /*tail*/ os_taskq_post_type(((&_OC_str.array[((int32_t)0)])), 4194309, _3, _4);
  return _5;
}


void btstack_task_init(void) {
#line 73 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ ((l_fptr_1*)(void*)btstack_hci_init)();
#line 75 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ btstack_mem_init();
#line 77 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ btstack_bredr_le_init();
}


uint32_t hci_packet_handler(uint8_t _6, uint8_t* _7, uint16_t _8) {
  struct l_array_2_uint32_t _9;    /* Address-exposed local */
  uint8_t* _10;
  uint32_t _11;
  uint32_t _12;
  uint32_t _13;
  uint32_t* _14;
  uint32_t _15;
  uint32_t* _16;
  uint32_t* _17;
  uint32_t _18;
  uint32_t _19;
  uint32_t _20;
  uint32_t _20__PHI_TEMPORARY;
  uint32_t _21;
  uint32_t _22;
  uint32_t _23;
  uint8_t* _24;
  uint32_t _25;
  uint32_t _26;
  uint32_t _26__PHI_TEMPORARY;

#line 146 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
  ;
  ;
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 149 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _10 = ((uint8_t*)(&_9));
  ;
  _11 = ((uint32_t)(uint8_t)_6);
  _12 = ((uint32_t)(uint16_t)_8);
  _13 = llvm_lshr_u32((llvm_add_u32(_12, 3)), 2);
  _14 = ((uint32_t*)_7);
  _15 = ((uint32_t)(uintptr_t)_7);
  _16 = (&_9.array[((int32_t)0)]);
  _17 = (&_9.array[((int32_t)1)]);
  goto _27;

  do {     /* Syntactic loop '' to make GCC happy */
_27:
  switch (_6) {
  default:
    _26__PHI_TEMPORARY = 0;   /* for PHI node */
    goto _28;
  case ((uint8_t)4):
    goto _29;
  case ((uint8_t)2):
    goto _30;
  }

_30:
#line 157 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  *_16 = _15;
#line 158 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  *_17 = _12;
#line 159 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _19 = os_taskq_post_type(((&_OC_str.array[((int32_t)0)])), 4194306, 2, _16);
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
  _20__PHI_TEMPORARY = _19;   /* for PHI node */
  goto _31;

_29:
#line 153 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _18 = os_taskq_post_type(((&_OC_str.array[((int32_t)0)])), 4194305, _13, _14);
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
  _20__PHI_TEMPORARY = _18;   /* for PHI node */
  goto _31;

_31:
  _20 = _20__PHI_TEMPORARY;
  ;
#line 165 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  if ((((_20 == 21u)&1))) {
    goto _32;
  } else {
    _26__PHI_TEMPORARY = _20;   /* for PHI node */
    goto _28;
  }

_32:
#line 168 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _21 = cpu_in_irq();
  _22 = printf(((&_OC_str_OC_1.array[((int32_t)0)])), _11, _21);
#line 169 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _23 = cpu_in_irq();
  if ((((_23 == 0u)&1))) {
    goto _33;
  } else {
    _26__PHI_TEMPORARY = 21;   /* for PHI node */
    goto _28;
  }

_33:
#line 172 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _24 = ((l_fptr_2*)(void*)os_current_task)();
  _25 = strcmp(_24, ((&_OC_str.array[((int32_t)0)])));
  if ((((_25 == 0u)&1))) {
    _26__PHI_TEMPORARY = 21;   /* for PHI node */
    goto _28;
  } else {
    goto _34;
  }

_34:
#line 176 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  os_time_dly(2);
  goto _27;

  } while (1); /* end of syntactic loop '' */
_28:
  _26 = _26__PHI_TEMPORARY;
  return _26;
}


void ble_bqb_test_thread_init(void) {
  struct l_struct_struct_OC_hci_transport_t* _35;

#line 194 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ dut_le_hw_open();
#line 195 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _35 =  /*tail*/ hci_transport_uart_instance();
   /*tail*/ dut_hci_controller_init(_35, ((uint8_t*)(&config)));
}


uint32_t btstack_init(void) {
  uint32_t _36;
  uint32_t _37;
  uint32_t _38;
  uint32_t _39;
  uint32_t _40;
  uint32_t _41;
  uint32_t _42;
  uint32_t _43;
  struct l_struct_struct_OC_hci_transport_t* _44;
  uint32_t _45;
  struct l_struct_struct_OC_hci_transport_t* _46;
  uint32_t _47;
  uint32_t _48;
  uint32_t _49;
  uint32_t _50;
  uint32_t _51;
  uint32_t _51__PHI_TEMPORARY;

#line 200 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _36 = config_btctler_modules;
  _37 = config_btctler_mode;
  _38 =  /*tail*/ printf(((&_OC_str_OC_2.array[((int32_t)0)])), _36, _37);
#line 201 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _39 = config_le_hci_connection_num;
  _40 = config_le_gatt_server_num;
  _41 = config_le_gatt_client_num;
  _42 = config_le_sm_support_enable;
  _43 =  /*tail*/ printf(((&_OC_str_OC_3.array[((int32_t)0)])), _39, _40, _41, _42);
#line 203 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  if (((((_37 & 20) == 0u)&1))) {
    goto _52;
  } else {
    goto _53;
  }

_53:
#line 204 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _44 =  /*tail*/ hci_transport_uart_instance();
  _45 =  /*tail*/ btctrler_task_init((((uint8_t*)_44)), ((uint8_t*)(&config)));
  _51__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _54;

_52:
  is_btstack_lowpower_active = ((1) & 1);
  btstack_task_create_flag = ((1) & 1);
#line 210 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _46 =  /*tail*/ hci_transport_h4_controller_instance();
  _47 =  /*tail*/ btctrler_task_init((((uint8_t*)_46)), ((uint8_t*)/*NULL*/0));
#line 219 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _48 =  /*tail*/ ((l_fptr_3*)(void*)btctrler_task_ready)();
  if ((((_48 == 0u)&1))) {
    goto _55;
  } else {
    goto _56;
  }

_55:
  goto _57;

  do {     /* Syntactic loop '' to make GCC happy */
_57:
#line 220 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ os_time_dly(2);
#line 219 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _49 =  /*tail*/ ((l_fptr_3*)(void*)btctrler_task_ready)();
  if ((((_49 == 0u)&1))) {
    goto _57;
  } else {
    goto _58;
  }

  } while (1); /* end of syntactic loop '' */
_58:
  goto _56;

_56:
#line 222 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _50 =  /*tail*/ task_create(btstack_task, ((uint8_t*)/*NULL*/0), ((&_OC_str.array[((int32_t)0)])));
  _51__PHI_TEMPORARY = _50;   /* for PHI node */
  goto _54;

_54:
  _51 = _51__PHI_TEMPORARY;
  return _51;
}


static __noreturn void btstack_task(uint8_t* _59) {
  struct l_array_32_uint32_t _60;    /* Address-exposed local */
  uint8_t* _61;
  uint8_t _62;
  uint32_t _63;
  uint32_t* _64;
  uint32_t* _65;
  uint8_t* _66;
  uint8_t** _67;
  uint32_t* _68;
  struct l_struct_struct_OC_xSTATIC_QUEUE** _69;
  uint32_t _70;
  uint32_t _71;
  uint8_t* _72;
  uint32_t _73;
  struct l_struct_struct_OC_xSTATIC_QUEUE* _74;
  uint32_t _75;

#line 80 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 83 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _61 = ((uint8_t*)(&_60));
  ;
#line 85 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ btstack_task_init();
#line 87 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _62 = l2cap_debug_enable;
  if (((((llvm_and_u8(_62, 32)) == ((uint8_t)0))&1))) {
    goto _76;
  } else {
    goto _77;
  }

_77:
  _63 =  /*tail*/ puts(((&_OC_str_OC_13.array[((int32_t)0)])));
  goto _76;

_76:
#line 89 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 3, 43);
  is_btstack_lowpower_active = ((0) & 1);
  _64 = (&_60.array[((int32_t)0)]);
  _65 = (&_60.array[((int32_t)1)]);
  _66 = ((uint8_t*)_65);
  _67 = ((uint8_t**)_65);
  _68 = (&_60.array[((int32_t)2)]);
  _69 = ((struct l_struct_struct_OC_xSTATIC_QUEUE**)_65);
  goto _78;

  do {     /* Syntactic loop '' to make GCC happy */
_78:
#line 98 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _70 = os_taskq_pend(((uint8_t*)/*NULL*/0), _64, 32);
#line 82 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 100 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  if ((((_70 == 13u)&1))) {
    goto _79;
  } else {
    goto _80;
  }

_79:
#line 104 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _71 = *_64;
  switch (_71) {
  default:
    goto _81;
  case 4194305u:
    goto _82;
  case 4194306u:
    goto _83;
  case 4194308u:
    goto _84;
  case 4194310u:
    goto _85;
  }

_85:
#line 124 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  l2cap_hand_out_credits_for_send();
  goto _81;

_84:
#line 112 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _74 = *_69;
  _75 = os_sem_post(_74);
#line 113 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  os_time_dly(20);
  goto _81;

_83:
#line 109 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _72 = *_67;
  _73 = *_68;
  hci_acl_handler(_72, (((uint16_t)_73)));
  goto _81;

_82:
#line 106 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  hci_event_handler(_66);
  goto _81;

_81:
#line 133 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  bt_profile_loop();
  if ((ble_profile_loop != ((l_fptr_4*)/*NULL*/0))) {
    goto _86;
  } else {
    goto _80;
  }

_86:
#line 138 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ble_profile_loop();
  goto _80;

_80:
  goto _78;

  } while (1); /* end of syntactic loop '' */
}


uint32_t btstack_exit(void) {
  struct l_struct_struct_OC_xSTATIC_QUEUE* _87;    /* Address-exposed local */
  bool _88;
  uint8_t* _89;
  uint8_t* _90;
  uint8_t** _91;
  uint32_t _92;
  struct l_struct_struct_OC_xSTATIC_QUEUE* _93;
  uint32_t _94;
  uint32_t _95;
  uint32_t _96;
  uint32_t _97;
  uint32_t _98;
  uint32_t _99;
  uint8_t _100;
  uint8_t _100__PHI_TEMPORARY;
  uint32_t _101;
  uint32_t _102;
  uint8_t _103;
  uint32_t _104;
  uint32_t _105;
  uint32_t _106;
  struct l_struct_struct_OC_xSTATIC_QUEUE* _107;
  uint32_t _108;
  uint8_t* _109;
  uint8_t _110;
  uint32_t _111;
  uint32_t _112;
  uint32_t _113;
  uint32_t _113__PHI_TEMPORARY;

#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
  _88 = ((btstack_task_create_flag)&1);
  if (_88) {
    goto _114;
  } else {
    _113__PHI_TEMPORARY = 1;   /* for PHI node */
    goto _115;
  }

_114:
#line 235 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _89 = ((uint8_t*)(&_87));
  _90 =  /*tail*/ malloc(80);
  _91 = ((uint8_t**)(&_87));
  *_91 = _90;
#line 236 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _92 = config_asser;
  _93 = ((struct l_struct_struct_OC_xSTATIC_QUEUE*)_90);
  if ((((_92 == 0u)&1))) {
    goto _116;
  } else {
    goto _117;
  }

_117:
  if ((((_90 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _118;
  } else {
    goto _119;
  }

_119:
  _94 =  /*tail*/ printf(((&_OC_str_OC_4.array[((int32_t)0)])), ((&_OC_str_OC_5.array[((int32_t)0)])), 236);
  _95 =  /*tail*/ printf(((&_OC_str_OC_6.array[((int32_t)0)])));
   /*tail*/ ((l_fptr_1*)(void*)cpu_assert_debug)();
  goto _118;

_116:
  if ((((_90 != ((uint8_t*)/*NULL*/0))&1))) {
    goto _118;
  } else {
    goto _120;
  }

_120:
   /*tail*/ cpu_reset();
  goto _118;

_118:
#line 238 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _96 =  /*tail*/ puts(((&_OC_str_OC_7.array[((int32_t)0)])));
#line 239 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ ble_stack_exit(0);
#line 240 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _97 =  /*tail*/ puts(((&_OC_str_OC_8.array[((int32_t)0)])));
#line 241 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _98 =  /*tail*/ ((l_fptr_3*)(void*)btctrler_task_exit)();
#line 242 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _99 =  /*tail*/ puts(((&_OC_str_OC_9.array[((int32_t)0)])));
  _100__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _121;

  do {     /* Syntactic loop '' to make GCC happy */
_121:
  _100 = _100__PHI_TEMPORARY;
#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 244 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _101 =  /*tail*/ ((l_fptr_3*)(void*)bredr_release)();
  if ((((_101 == 0u)&1))) {
    goto _122;
  } else {
    goto _123;
  }

_123:
#line 245 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _102 =  /*tail*/ putchar(35);
#line 246 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ os_time_dly(20);
#line 248 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _103 = llvm_add_u8(_100, 1);
#line 229 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 250 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  if ((((((uint8_t)_103) > ((uint8_t)((uint8_t)15)))&1))) {
    goto _122;
  } else {
    _100__PHI_TEMPORARY = _103;   /* for PHI node */
    goto _121;
  }

  } while (1); /* end of syntactic loop '' */
_122:
#line 255 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _104 =  /*tail*/ puts(((&_OC_str_OC_10.array[((int32_t)0)])));
#line 257 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
   /*tail*/ update_bt_current_status(((uint8_t*)/*NULL*/0), 4, 0);
#line 235 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 259 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _105 =  /*tail*/ os_sem_create(_93, 0);
#line 260 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _106 = os_taskq_post_type(((&_OC_str.array[((int32_t)0)])), 4194308, 1, (((uint32_t*)(&_87))));
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _107 = _87;
#line 235 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  ;
#line 262 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _108 = os_sem_pend(_107, 0);
#line 263 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _109 = *_91;
  free(_109);
#line 265 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _110 = l2cap_debug_enable;
  if (((((llvm_and_u8(_110, 32)) == ((uint8_t)0))&1))) {
    goto _124;
  } else {
    goto _125;
  }

_125:
  _111 = puts(((&_OC_str_OC_11.array[((int32_t)0)])));
  goto _124;

_124:
#line 266 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  _112 = task_kill(((&_OC_str.array[((int32_t)0)])));
  btstack_task_create_flag = ((0) & 1);
  _113__PHI_TEMPORARY = 0;   /* for PHI node */
  goto _115;

_115:
  _113 = _113__PHI_TEMPORARY;
  return _113;
}


static void cpu_reset(void) {
#line 148 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
   /*tail*/ p33_soft_reset();
}


static uint8_t btstack_lowpower_idle_query(void) {
  bool _126;

  _126 = ((is_btstack_lowpower_active)&1);
#line 275 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
  return (((uint8_t)(bool)(((~(_126))&1))));
}


static uint32_t cpu_in_irq(void) {
  uint32_t _127;

#line 72 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
  __asm__ volatile ("%0 = icfg"
        :
        :);
#line 71 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
  ;
#line 73 "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make//jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h"
  return (_127 & 255);
}

