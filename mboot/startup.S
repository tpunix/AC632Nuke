
.section .stack, "a"
         .space 0x600
         .global _stack
_stack:


.section .startup.text, "ax"
    .align 2
    .global _start
    .type _start,@function
    .org 0

_start:
	sp = _stack    	// for idle
    ssp = _stack   	// for interrupt

	// clear bss
    r3 = bss_begin
    r1 = 0
    r2 = bss_size
    r2 >>= 2;
1:
    [r3++] = r1
	r2 = r2-1
    if(r2 != 0) goto 1b

    .extern main
    reti = main
    rti

