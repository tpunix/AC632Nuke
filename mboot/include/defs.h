
#ifndef _DEFS_H_
#define _DEFS_H_

/******************************************************************************/


typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
typedef unsigned long long u64;
typedef   signed char  s8;
typedef   signed short s16;
typedef   signed int   s32;
typedef   signed long long s64;


#define NULL ((void*)0)


#define BIT(x) (1<<x)


#define SEC_USED(x)     __attribute__((section(#x),used))
#define SEC(x)          __attribute__((section(#x)))
#define sec(x)          __attribute__((section(#x),used))
#define AT(x)           __attribute__((section(#x),used))
#define ALIGNED(x)	    __attribute__((aligned(x)))
#define _GNU_PACKED_	__attribute__((packed))
#define _NOINLINE_	    __attribute__((noinline))
#define _INLINE_	    __attribute__((always_inline))
#define _WEAK_	        __attribute__((weak))
#define _WEAKREF_	    __attribute__((weakref))
#define _NORETURN_      __attribute__((noreturn))
#define _NAKED_         __attribute__((naked))


/******************************************************************************/

#endif

