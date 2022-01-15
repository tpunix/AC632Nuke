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
struct l_struct_struct_OC_a2dp_media_probe;
struct l_struct_struct_OC_a2dp_media_codec;
struct l_struct_struct_OC_a2dp_core_data_t;
struct l_struct_struct_OC__avdtp_stream;
struct l_struct_struct_OC__avdtp_sep_ind;
struct l_struct_struct_OC__seid_info;
struct l_struct_struct_OC__avdtp_local_sep;
struct l_struct_struct_OC__seid_req;
struct l_struct_struct_OC_avdtp_core_data_t;
struct l_struct_struct_OC_avdtp;
struct l_struct_struct_OC_media_core_data_t;
struct l_struct_struct_OC_a2dp_media;
struct l_struct_struct_OC_a2dp_conn;
struct l_struct_struct_OC_a2dp_event_handler;

/* Function definitions */
typedef void l_fptr_17(struct l_struct_struct_OC_a2dp_conn*, uint8_t*, uint16_t);

typedef uint32_t l_fptr_4(uint8_t*, uint8_t*, uint16_t);

typedef uint8_t l_fptr_14(uint8_t, uint16_t);

typedef uint8_t l_fptr_9(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t);

typedef uint32_t l_fptr_1(uint8_t*);

typedef void l_fptr_12(struct l_struct_struct_OC__avdtp_local_sep*);

typedef void l_fptr_18(struct l_struct_struct_OC_a2dp_conn*, uint8_t*);

typedef uint8_t l_fptr_8(struct l_struct_struct_OC__avdtp_local_sep*, uint8_t*, uint8_t, uint8_t*);

typedef uint32_t l_fptr_15(struct l_struct_struct_OC_a2dp_conn*, uint32_t, uint8_t);

typedef uint32_t l_fptr_3(uint8_t*, uint16_t);

typedef uint32_t l_fptr_5(uint8_t*, l_fptr_4*);

typedef uint8_t l_fptr_11(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*, uint8_t*);

typedef uint32_t l_fptr_2(uint32_t);

typedef uint8_t l_fptr_10(struct l_struct_struct_OC__avdtp_local_sep*, struct l_struct_struct_OC__avdtp_stream*);

typedef void l_fptr_16(struct l_struct_struct_OC_a2dp_conn*);

typedef uint32_t l_fptr_6(int, ...);

typedef uint8_t l_fptr_13(int, ...);

typedef uint8_t l_fptr_7(uint8_t, uint8_t*, uint8_t*);


/* Types Definitions */
struct l_struct_struct_OC_a2dp_media_probe {
  uint32_t field0;
  l_fptr_5* field1;
  l_fptr_4* field2;
  l_fptr_6* field3;
  l_fptr_6* field4;
  l_fptr_6* field5;
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_struct_struct_OC__avdtp_stream {
  uint8_t field0;
};
struct l_struct_struct_OC__avdtp_sep_ind {
  l_fptr_7* field0;
  l_fptr_8* field1;
  l_fptr_9* field2;
  l_fptr_10* field3;
  l_fptr_10* field4;
  l_fptr_11* field5;
  l_fptr_12* field6;
  l_fptr_13* field7;
  l_fptr_14* field8;
};
struct l_array_2_struct_AC_l_struct_struct_OC__avdtp_local_sep {
  struct l_struct_struct_OC__avdtp_local_sep array[2];
};
struct l_struct_struct_OC__seid_req {
  uint8_t field0;
};
struct l_array_8_struct_AC_l_struct_struct_OC__seid_req {
  struct l_struct_struct_OC__seid_req array[8];
};
struct l_array_16_uint8_t {
  uint8_t array[16];
};
struct l_struct_struct_OC_avdtp_core_data_t {
  struct l_struct_struct_OC__avdtp_stream field0;
  struct l_struct_struct_OC__avdtp_local_sep* field1;
  uint8_t field2;
  uint16_t field3;
  struct l_array_8_struct_AC_l_struct_struct_OC__seid_req field4;
  struct l_array_16_uint8_t field5;
  uint8_t field6;
  uint8_t field7;
  uint16_t field8;
};
struct l_struct_struct_OC_avdtp {
  struct l_array_2_struct_AC_l_struct_struct_OC__avdtp_local_sep field0;
  struct l_struct_struct_OC_avdtp_core_data_t field1;
};
struct l_struct_struct_OC__seid_info {
  uint16_t field0;
};
struct l_struct_struct_OC__avdtp_local_sep {
  struct l_struct_struct_OC__avdtp_sep_ind* field0;
  struct l_struct_struct_OC_avdtp* field1;
  struct l_struct_struct_OC__seid_info field2;
  uint8_t field3;
  struct l_array_16_uint8_t field4;
};
struct l_struct_struct_OC_a2dp_media_codec {
  uint32_t field0;
  l_fptr_2* field1;
  l_fptr_1* field2;
  l_fptr_3* field3;
  l_fptr_6* field4;
  l_fptr_1* field5;
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_struct_struct_OC_a2dp_core_data_t {
  uint8_t field0;
};
struct l_struct_struct_OC_media_core_data_t {
  uint16_t field0;
  uint16_t field1;
  uint32_t field2;
};
struct l_struct_struct_OC_a2dp_media {
  struct l_struct_struct_OC_media_core_data_t field0;
  struct l_struct_struct_OC_a2dp_media_probe* field1;
  struct l_struct_struct_OC_a2dp_media_codec* field2;
  uint32_t field3;
  uint8_t field4;
  uint8_t field5;
};
struct l_struct_struct_OC_a2dp_conn {
  struct l_array_6_uint8_t field0;
  struct l_struct_struct_OC_a2dp_core_data_t field1;
  struct l_struct_struct_OC_avdtp field2;
  struct l_struct_struct_OC_a2dp_media field3;
};
struct l_struct_struct_OC_a2dp_event_handler {
  uint32_t field0;
  l_fptr_15* field1;
  l_fptr_16* field2;
  l_fptr_17* field3;
  l_fptr_18* field4;
  l_fptr_18* field5;
  l_fptr_16* field6;
};
struct l_array_21_uint8_t {
  uint8_t array[21];
};

/* External Global Variable Declarations */
extern char /* (empty) */ a2dp_sink_media_probe_begin;
extern char /* (empty) */ a2dp_sink_media_probe_end;
extern uint8_t l2cap_debug_enable;
extern char /* (empty) */ a2dp_sink_media_codec_begin;
extern char /* (empty) */ a2dp_sink_media_codec_end;

/* Function Declarations */
struct l_struct_struct_OC_a2dp_media_probe* __sink_media_probe(uint32_t) __ATTRIBUTELIST__((nothrow, pure)) __HIDDEN__;
void __sink_media_close(struct l_struct_struct_OC_a2dp_conn*) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
uint32_t puts(uint8_t*) __ATTRIBUTELIST__((nothrow));
static uint32_t __sink_channel_open(struct l_struct_struct_OC_a2dp_conn*, uint32_t, uint8_t) __ATTRIBUTELIST__((nothrow));
static void __sink_event_credits(struct l_struct_struct_OC_a2dp_conn*) __ATTRIBUTELIST__((nothrow, const));
static void __sink_media_packet(struct l_struct_struct_OC_a2dp_conn*, uint8_t*, uint16_t) __ATTRIBUTELIST__((nothrow));
static void __sink_media_suspend(struct l_struct_struct_OC_a2dp_conn*, uint8_t*) __ATTRIBUTELIST__((nothrow));


/* Global Variable Definitions and Initialization */
uint32_t app_info_debug_enable __ATTRIBUTE_WEAK__ __HIDDEN__ = 0;
static struct l_array_20_uint8_t _OC_str = { "__sink_media_close\n" };
static struct l_array_14_uint8_t _OC_str_OC_1 = { "codec closed\n" };
struct l_struct_struct_OC_a2dp_event_handler a2dp_sink_event_handler __HIDDEN__ = { 1, __sink_channel_open, __sink_event_credits, __sink_media_packet, ((l_fptr_18*)/*NULL*/0), __sink_media_suspend, ((l_fptr_16*)/*NULL*/0) };
static struct l_array_21_uint8_t _OC_str_OC_2 = { "sink: channel_close\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
  uint16_t r = a + b;
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
static __forceinline uint16_t llvm_shl_u16(uint16_t a, uint16_t b) {
  uint16_t r = a << b;
  return r;
}
static __forceinline uint8_t llvm_and_u8(uint8_t a, uint8_t b) {
  uint8_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_and_u16(uint16_t a, uint16_t b) {
  uint16_t r = a & b;
  return r;
}
static __forceinline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
  uint16_t r = a | b;
  return r;
}


/* Function Bodies */

struct l_struct_struct_OC_a2dp_media_probe* __sink_media_probe(uint32_t _1) {
  struct l_struct_struct_OC_a2dp_media_probe* _2;
  struct l_struct_struct_OC_a2dp_media_probe* _2__PHI_TEMPORARY;
  uint32_t _3;
  struct l_struct_struct_OC_a2dp_media_probe* _4;
  struct l_struct_struct_OC_a2dp_media_probe* _5;
  struct l_struct_struct_OC_a2dp_media_probe* _5__PHI_TEMPORARY;
  struct l_struct_struct_OC_a2dp_media_probe* _6;
  struct l_struct_struct_OC_a2dp_media_probe* _6__PHI_TEMPORARY;

  if ((((&a2dp_sink_media_probe_begin)) < ((&a2dp_sink_media_probe_end)))) {
    goto _7;
  } else {
    _6__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_media_probe*)/*NULL*/0);   /* for PHI node */
    goto _8;
  }

_7:
  _2__PHI_TEMPORARY = ((&a2dp_sink_media_probe_begin));   /* for PHI node */
  goto _9;

  do {     /* Syntactic loop '' to make GCC happy */
_9:
  _2 = _2__PHI_TEMPORARY;
  _3 = *((&_2->field0));
  if ((((_3 == _1)&1))) {
    _5__PHI_TEMPORARY = _2;   /* for PHI node */
    goto _10;
  } else {
    goto _11;
  }

_11:
  _4 = (&_2[((int32_t)1)]);
  if ((((((uint32_t)_4) < ((uint32_t)((&a2dp_sink_media_probe_end))))&1))) {
    _2__PHI_TEMPORARY = _4;   /* for PHI node */
    goto _9;
  } else {
    _5__PHI_TEMPORARY = ((struct l_struct_struct_OC_a2dp_media_probe*)/*NULL*/0);   /* for PHI node */
    goto _10;
  }

  } while (1); /* end of syntactic loop '' */
_10:
  _5 = _5__PHI_TEMPORARY;
  _6__PHI_TEMPORARY = _5;   /* for PHI node */
  goto _8;

_8:
  _6 = _6__PHI_TEMPORARY;
  return _6;
}


void __sink_media_close(struct l_struct_struct_OC_a2dp_conn* _12) {
  struct l_struct_struct_OC_a2dp_media_codec** _13;
  struct l_struct_struct_OC_a2dp_media_codec* _14;
  uint8_t _15;
  uint32_t _16;
  struct l_struct_struct_OC_a2dp_media_codec* _17;
  struct l_struct_struct_OC_a2dp_media_codec* _18;
  struct l_struct_struct_OC_a2dp_media_codec* _18__PHI_TEMPORARY;
  l_fptr_1* _19;
  uint32_t _20;
  uint8_t _21;
  uint32_t _22;

  _13 = (&_12->field3.field2);
  _14 = *_13;
  if ((((_14 == ((struct l_struct_struct_OC_a2dp_media_codec*)/*NULL*/0))&1))) {
    goto _23;
  } else {
    goto _24;
  }

_24:
  _15 = l2cap_debug_enable;
  if (((((llvm_and_u8(_15, 32)) == ((uint8_t)0))&1))) {
    _18__PHI_TEMPORARY = _14;   /* for PHI node */
    goto _25;
  } else {
    goto _26;
  }

_26:
  _16 =  /*tail*/ puts(((&_OC_str.array[((int32_t)0)])));
  _17 = *_13;
  if ((((_17 == ((struct l_struct_struct_OC_a2dp_media_codec*)/*NULL*/0))&1))) {
    goto _27;
  } else {
    _18__PHI_TEMPORARY = _17;   /* for PHI node */
    goto _25;
  }

_25:
  _18 = _18__PHI_TEMPORARY;
  _19 = *((&_18->field5));
  if ((((_19 == ((l_fptr_1*)/*NULL*/0))&1))) {
    goto _27;
  } else {
    goto _28;
  }

_28:
  _20 =  /*tail*/ _19(((&_12->field0.array[((int32_t)0)])));
  goto _27;

_27:
  *_13 = ((struct l_struct_struct_OC_a2dp_media_codec*)/*NULL*/0);
  _21 = l2cap_debug_enable;
  if (((((llvm_and_u8(_21, 32)) == ((uint8_t)0))&1))) {
    goto _23;
  } else {
    goto _29;
  }

_29:
  _22 =  /*tail*/ puts(((&_OC_str_OC_1.array[((int32_t)0)])));
  goto _23;

_23:
  return;
}


static uint32_t __sink_channel_open(struct l_struct_struct_OC_a2dp_conn* _30, uint32_t _31, uint8_t _32) {
  uint8_t _33;
  uint32_t _34;

  if ((((_31 == 0u)&1))) {
    goto _35;
  } else {
    goto _36;
  }

_36:
  _33 = l2cap_debug_enable;
  if (((((llvm_and_u8(_33, 32)) == ((uint8_t)0))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_38:
  _34 =  /*tail*/ puts(((&_OC_str_OC_2.array[((int32_t)0)])));
  goto _37;

_37:
   /*tail*/ __sink_media_close(_30);
  goto _35;

_35:
  return 0;
}


static void __sink_event_credits(struct l_struct_struct_OC_a2dp_conn* _39) {
  return;
}


static void __sink_media_packet(struct l_struct_struct_OC_a2dp_conn* _40, uint8_t* _41, uint16_t _42) {
  uint32_t _43;
  uint16_t _44;
  uint16_t _45;
  uint32_t _46;
  struct l_struct_struct_OC_a2dp_media_codec** _47;
  struct l_struct_struct_OC_a2dp_media_codec* _48;
  uint8_t _49;
  uint32_t _50;
  struct l_struct_struct_OC_a2dp_media_codec* _51;
  struct l_struct_struct_OC_a2dp_media_codec* _51__PHI_TEMPORARY;
  uint32_t _52;
  l_fptr_2** _53;
  l_fptr_2* _54;
  uint32_t _55;
  struct l_struct_struct_OC_a2dp_media_codec* _56;
  l_fptr_2* _57;
  uint32_t _58;
  l_fptr_1* _59;
  uint32_t _60;
  struct l_struct_struct_OC_a2dp_media_codec* _61;
  struct l_struct_struct_OC_a2dp_media_codec* _62;
  struct l_struct_struct_OC_a2dp_media_codec* _62__PHI_TEMPORARY;
  l_fptr_3* _63;
  uint32_t _64;

  _43 = ((uint32_t)(uint16_t)_42);
  if ((((((uint16_t)_42) < ((uint16_t)((uint16_t)12)))&1))) {
    goto _65;
  } else {
    goto _66;
  }

_66:
  _44 = __UNALIGNED_LOAD__(uint16_t, 1, (((uint16_t*)_41)));
  _45 = *((&_40->field3.field0.field1));
  _46 = llvm_add_u32((((uint32_t)(uint16_t)(llvm_or_u16((llvm_add_u16((llvm_and_u16((llvm_shl_u16(_44, 2)), 60)), 12)), 1)))), (((uint32_t)(bool)(((_45 != ((uint16_t)0))&1)))));
  if ((((((uint32_t)_43) < ((uint32_t)_46))&1))) {
    goto _65;
  } else {
    goto _67;
  }

_67:
  _47 = (&_40->field3.field2);
  _48 = *_47;
  if ((((_48 == ((struct l_struct_struct_OC_a2dp_media_codec*)/*NULL*/0))&1))) {
    goto _68;
  } else {
    _62__PHI_TEMPORARY = _48;   /* for PHI node */
    goto _69;
  }

_68:
  _49 = *((&_40->field3.field5));
  _50 = ((uint32_t)(uint8_t)_49);
  if ((((&a2dp_sink_media_codec_begin)) < ((&a2dp_sink_media_codec_end)))) {
    goto _70;
  } else {
    goto _71;
  }

_70:
  _51__PHI_TEMPORARY = ((&a2dp_sink_media_codec_begin));   /* for PHI node */
  goto _72;

  do {     /* Syntactic loop '' to make GCC happy */
_72:
  _51 = _51__PHI_TEMPORARY;
  _52 = *((&_51->field0));
  if ((((_52 == _50)&1))) {
    goto _73;
  } else {
    goto _74;
  }

_74:
  _56 = (&_51[((int32_t)1)]);
  if ((((((uint32_t)_56) < ((uint32_t)((&a2dp_sink_media_codec_end))))&1))) {
    _51__PHI_TEMPORARY = _56;   /* for PHI node */
    goto _72;
  } else {
    goto _75;
  }

  } while (1); /* end of syntactic loop '' */
_73:
  _53 = (&_51->field1);
  _54 = *_53;
  _55 =  /*tail*/ _54(0);
  if ((((_55 == 0u)&1))) {
    goto _76;
  } else {
    goto _71;
  }

_75:
  goto _71;

_71:
  *_47 = ((struct l_struct_struct_OC_a2dp_media_codec*)/*NULL*/0);
  goto _65;

_76:
  _57 = *_53;
  _58 =  /*tail*/ _57(1);
  *_47 = _51;
  _59 = *((&_51->field2));
  _60 =  /*tail*/ _59(((&_40->field0.array[((int32_t)0)])));
  _61 = *_47;
  _62__PHI_TEMPORARY = _61;   /* for PHI node */
  goto _69;

_69:
  _62 = _62__PHI_TEMPORARY;
  _63 = *((&_62->field3));
  _64 =  /*tail*/ _63(((&_41[((int32_t)_46)])), (((uint16_t)(llvm_sub_u32(_43, _46)))));
  goto _65;

_65:
  return;
}


static void __sink_media_suspend(struct l_struct_struct_OC_a2dp_conn* _77, uint8_t* _78) {
   /*tail*/ __sink_media_close(_77);
}

