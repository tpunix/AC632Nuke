/*
 * string.c
 */

#include <stdarg.h>

void *memset(void *s, int v, int n)
{
    register char *p = (char *)s;

    while(1){
        if(--n<0)
            break;
        *p++ = (char)v;
    }

    return s;
}

void *memcpy(void *to, void *from, int n)
{
    register char *t = (char *)to;

    while(1){
        if(--n<0)
            break;
        *t++ = *(char*)from++;
    }

    return to;
}

char *strcpy(char *dst, char *src)
{
    register char *d = dst;
    register char t;

    do{
        t = *src++;
        *d++ = t;
    }while(t);

    return dst;
}

char *strncpy(char *dst, char *src, int n)
{
    register char *d = dst;
    register char t;

    do{
        if(--n<0)
            break;
        t = *src++;
        *d++ = t;
    }while(t);

    return dst;
}

int strcmp(char *s1, char *s2)
{
    int r;
    int t;

    while(1){
        t = (int)*s1++;
        r = t - (int)*s2++;
        if(r)
            break;
        if(t==0)
            break;
    }

    return r;
}

int strncmp(char *s1, char *s2, int n)
{
    register int r = 0;
    register int t;

    while(1){
        if(--n<0)
            break;
        t = (int)*s1++;
        r = t - (int)*s2++;
        if(r)
            break;
        if(t==0)
            break;
    }

    return r;
}

int strlen(char *s)
{
    register char *p = s;

    while(*p++);

    return p-s-1;
}


int strtoul(char *str, char **endptr, int requestedbase, int *ret)
{
	int num;
	int c, digit, retv;
	int base;

	base = 10;
	num = 0;
	retv = 0;

	if(str==0 || *str==0){
		retv = 2;
		goto exit;
	}

	if(requestedbase)
		base = requestedbase;
	if(str[0]=='0' && str[1]=='x'){
		base = 16;
		str += 2;
	}

	while ((c = *str) != 0) {
		if (c >= '0' && c <= '9') {
			digit = c - '0';
		} else if (c >= 'a' && c <= 'z') {
			digit = c - 'a' + 10;
		} else if (c >= 'A' && c <= 'Z') {
			digit = c - 'A' + 10;
		} else {
			retv = 3;
			break;
		}
		if (digit >= base) {
			retv = 4;
			break;
		}
		num *= base;
		num += digit;
		str++;
	}

exit:
	if(ret)
		*ret = retv;
	if(endptr)
		*endptr = str;

	return num;
}

