
#ifndef _MBOOT_H_
#define _MBOOT_H_

#include "defs.h"


/******************************************************************************/


void udelay(u32 usec);
void mdelay(u32 msec);
void delay(volatile u32 t);


/******************************************************************************/


void hex_dump32(u32 addr, int len);
void hex_dump16(u32 addr, int len);
void hex_dump(u32 addr, int len);

int printk(char *fmt, ...);
int sprintf(char *buf, char *fmt, ...);
void putc(char c);


void *memset(void *s, int v, int n);
void *memcpy(void *to, void *from, int n);
char *strcpy(char *dst, char *src);
char *strncpy(char *dst, char *src, int n);
int  strcmp(char *s1, char *s2);
int  strncmp(char *s1, char *s2, int n);
int  strlen(char *s);
int  strtoul(char *str, char **endptr, int requestedbase, int *ret);


/******************************************************************************/


/******************************************************************************/


/******************************************************************************/


/******************************************************************************/




/******************************************************************************/



#endif

