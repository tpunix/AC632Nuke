/*
 *
 * printk.c
 *
 * printk for bootbox
 *
 * support format:
 *  %c
 *  %s
 *  %[[0]n]x
 *  %[[0]n]X
 *  %[[0]n]d
 *
 */

#include "mboot.h"
#include <stdarg.h>

#if 1
static int dec_table[10] = {
    1000000000,
     100000000,
      10000000,
       1000000,
        100000,
         10000,
          1000,
           100,
            10,
             1,
};

static int hex_table[8] = {
    0x10000000,
     0x1000000,
      0x100000,
       0x10000,
        0x1000,
         0x100,
          0x10,
           0x1,
};


static int itostr(char *buf, int in_data, int base, int upper, int sign)
{
	int first, limit, len, i, j;
	int *table;
	unsigned int data;
	char *str;

	data = in_data;
	table = hex_table;
	len = 8;
	if(base==10){
		table = dec_table;
		len = 10;
		if(sign && in_data<0)
			data = -data;
	}

	first = 0;
	str = buf;
	for(i=0; i<len; i++){
		limit = table[i];
		for(j=0; data>=limit; j++, data-=limit);
		if(j==0 && first==0)
			continue;

		first = 1;
		if(j<10){
			j += '0';
		}else{
			j -= 10;
			if(upper){
				j += 'A';
			}else{
				j += 'a';
			}
		}
		*str++ = j;
	}
	if(first==0)
		*str++ = '0';

	len = str-buf;
	return len;
}

#else

static int itostr(char *buf, int in_data, int base, int upper, int sign)
{
	int res, len, i;
	unsigned int data;
	char *str;

	data = in_data;
	if(base==10 && sign && in_data<0){
		data = -data;
	}

	str = buf;
	do{
		res = data%base;
		data = data/base;
		if(res<10){
			res += '0';
		}else{
			if(upper){
				res += 'A'-10;
			}else{
				res += 'a'-10;
			}
		}
		*str++ = res;
	}while(data);
	len = str-buf;

	/* reverse digital order */
	for(i=0; i<len/2; i++){
		res = buf[i];
		buf[i] = buf[len-1-i]; 
		buf[len-1-i] = res; 
	}

	return len;
}

#endif

/*
 * vsnprintf - Format a string and place it in a buffer
 * @buf: The buffer to place the result into
 * @size: The size of the buffer, including the trailing null space
 * @fmt: The format string to use
 * @args: Arguments for the format string
 */

#define OUT_C(c) \
	if(str<end){ \
		*str++ = (c); \
	}

int vsnprintf(char *buf, int size, char *fmt, va_list args)
{
	char ch, *s, *str, *end, *sstr;
	char digital_buf[32];
	int zero_pad, left_adj, add_sign, field_width, sign;
	int i, base, upper, len;

	if(!buf || !fmt ||!size){
		return 0;
	}

	str = buf;
	end = buf+size;

	while(*fmt){
		if(*fmt!='%'){
			OUT_C(*fmt++);
			continue;
		}

		/* skip '%' */
		sstr = fmt;
		fmt++;

		/* %% */
		if(*fmt=='%'){
			OUT_C(*fmt++);
			continue;
		}

		/* get flag */
		zero_pad = ' ';
		left_adj = 0;
		add_sign = 0;
		while((ch=*fmt)){

			if(*fmt=='0'){
				zero_pad = '0';
			}else if(*fmt=='-'){
				left_adj = 1;
			}else if(*fmt=='#'){
			}else if(*fmt==' '){
				if(add_sign!='+')
					add_sign = ' ';
			}else if(*fmt=='+'){
				add_sign = '+';
			}else{
				break;
			}
			fmt++;
		}

		/* get field width: m.n */
		field_width = 0;
		/* get m */
		while(*fmt && *fmt>'0' && *fmt<='9'){
			field_width = field_width*10+(*fmt-'0');
			fmt++;
		}
		/* skip n */

		/* get format char */
		upper = 0;
		base = 0;
		sign = 0;
		len = 0;
		s = digital_buf;
		while((ch=*fmt)){
			fmt++;
			switch(ch){
			/* hexadecimal */
			case 'p':
			case 'X':
				upper = 1;
			case 'x':
				base = 16;
				break;

			/* decimal */
			case 'd':
			case 'i':
				sign = 1;
			case 'u':
				base = 10;
				break;

			/* character */
			case 'c':
				digital_buf[0] = (unsigned char) va_arg(args, int);
				len = 1;
				break;

			/* string */
			case 's':
				s = va_arg(args, char *);
				if(!s) s = "<NUL>";
				len = strlen(s);
				break;

			/* bad format */
			default:
				s = sstr;
				len = fmt-sstr;
				break;
			}
			break;
		}

		if(base){
			i = va_arg(args, int);
			if(base==10 && sign){
				if(i<0){
					add_sign = '-';
				}
			}else{
				add_sign = 0;
			}

			len = itostr(digital_buf, i, base, upper, sign);
		}else{
			zero_pad = ' ';
			add_sign = 0;
		}

		if(s){
			if(len>=field_width){
				field_width = len;
				if(add_sign)
					field_width++;
			}
			for(i=0; i<field_width; i++){
				if(left_adj){
					if(i<len){
						OUT_C(*s++);
					}else{
						OUT_C(' ');
					}
				}else{
					if(add_sign && (zero_pad=='0' || i==(field_width-len-1))){
						OUT_C(add_sign);
						add_sign = 0;
						continue;
					}
					if(i<(field_width-len)){
						OUT_C(zero_pad);
					}else{
						OUT_C(*s++);
					}
				}
			}
		}
	}

	OUT_C(0);
	return str-buf;
}

int printk(char *fmt, ...)
{
	va_list args;
	int printed_len;
	char printk_buf[128];
	char *p;

	/* Emit the output into the temporary buffer */
	va_start(args, fmt);
	printed_len = vsnprintf(printk_buf, sizeof(printk_buf), fmt, args);
	va_end(args);

	for (p = printk_buf; *p; p++) {
		if (*p == '\n')
			putc('\r');
		putc(*p);
	}

	return printed_len;
}

int sprintf(char *buf, char *fmt, ...)
{
	va_list args;
	int printed_len;

	va_start(args, fmt);
	printed_len = vsnprintf(buf, 1024, fmt, args);
	va_end(args);

	return printed_len;
}

