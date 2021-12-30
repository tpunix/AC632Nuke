
#include "ac632n.h"
#include "mboot.h"


/******************************************************************************/


void udelay(u32 usec)
{
    JL_TIMER0->CON = BIT(14);
    JL_TIMER0->CNT = 0;
    JL_TIMER0->PRD = 48 * usec; //1us
    JL_TIMER0->CON =  BIT(0);
    while ((JL_TIMER0->CON & BIT(15)) == 0);
    JL_TIMER0->CON = BIT(14);
}

void mdelay(u32 msec)
{
    for (int i = 0; i < msec; i++) {
        udelay(1000);
    }
}

void delay(volatile u32 t)
{
    while (t--) {
        asm("nop");
    }
}


/******************************************************************************/


#if 0

// PA9 as UART
//#define UDLY 2  // before pll_init
#define UDLY 8  // after  pll_init
void putc(char c)
{
	int i;

	JL_PORTA->OUT &= ~BIT(9);
	udelay(UDLY);

	for(i=0; i<8; i++){
		if(c&1){
			JL_PORTA->OUT |=  BIT(9);
		}else{
			JL_PORTA->OUT &= ~BIT(9);
		}
		udelay(UDLY);
		c >>= 1;
	}

	JL_PORTA->OUT |=  BIT(9);
	udelay(60);
}

#endif

static void do_dump(u32 addr, int len, int width)
{
	int i;

	i = 0;
	while(i<len){
		if((i%16)==0){
			printk("\n%08x : ", addr);
		}else if((i%8)==0){
			printk("- ");
		}

		if(width==1){
			printk("%02x ", *(u8*)(addr));
		}else if(width==2){
			printk("%04x ", *(u16*)(addr));
		}else{
			printk("%08x ", *(u32*)(addr));
		}
		i += width;
		addr += width;
	}
	printk("\n");
}


void hex_dump32(u32 addr, int len)
{
	do_dump(addr, len, 4);
}


void hex_dump16(u32 addr, int len)
{
	do_dump(addr, len, 2);
}

void hex_dump(u32 addr, int len)
{
	do_dump(addr, len, 1);
}


/******************************************************************************/

#define DUART JL_UART0
#define FO_DUART_TX FO_UART0_TX
#define FI_DUART_RX FI_UART0_RX


void uart0_init(int baud)
{
	// std24M
	JL_CLOCK->CLK_CON2 &= 0xfffff3ff;

	JL_USB->CON0 &= ~BIT(0);
	JL_USB_IO->CON0 = 0x582a;
	JL_OMAP->USBDP_OUT = (FO_DUART_TX<<2)|3;
	JL_IMAP->FI_DUART_RX = USBDM_IN;

	DUART->BAUD = 24000000 / baud / 4 - 1;
	DUART->CON0 = BIT(13) | BIT(12) | BIT(10) | BIT(0);
}


void putc(char ch)
{
	DUART->BUF = ch;
	__asm__ volatile("csync");
	while ((DUART->CON0 & BIT(15)) == 0);
	DUART->CON0 |= BIT(13);
}


/******************************************************************************/

void _pll_init(void);
extern u8 boot_arg_list[];

void sys_clk_init(int osc_freq, int sys_freq)
{
	JL_SPI0->BAUD = 3;
	*(u32*)(boot_arg_list+4) = osc_freq;
	*(u32*)(boot_arg_list+8) = sys_freq;

	if(JL_PLL->PLL_CON0&1)
		return;
	_pll_init();

	JL_CLOCK->CLK_CON1 &= 0xffffff0f;
	JL_CLOCK->CLK_CON1 |= 0x00000080;
	udelay(10);

	JL_CLOCK->CLK_CON1 &= 0xfffff8ff;
	JL_CLOCK->CLK_CON1 |= 0x00000600;
	udelay(10);
}


void arch_init(void)
{
	u32 d;

	// JL_CMNG->CON1
	d = *(u32*)(0x1b0004);
	d &= 0xffff0000;
	d |= 0x00000285;
	*(u32*)(0x1b0004) = d;
	__asm__ volatile("csync");
	__asm__ volatile("csync");
	*(u32*)(0x1b0004) = d&0x0000ffff;
	__asm__ volatile("csync");
	__asm__ volatile("csync");

	__asm__ volatile("r0 = icfg");
	__asm__ volatile("r0 |= 0x0200");
	__asm__ volatile("icfg = r0");

}

void p11_init(void)
{
	while(1){
		if((JL_PMU->PMU_STA&0x20)==0)
			continue;
		if((JL_PMU->PMU_STA&0x40))
			break;;
	}

	while(1){
		P11_DPCON0 = 0xff;
		P11_DPCON0 = 0xee;
		P11_DPCON0 = 0xab;
		P11_DPCON0 = 0x0e;
		P11_DPCON0 = 0x55;
		if(JL_PMU->PMU_STA&0x01)
			break;;
	}

}


/******************************************************************************/



int main(void)
{
	// Set PA9 as Output
	JL_PORTA->OUT |=  BIT(9);
	JL_PORTA->DIR &= ~BIT(9);

	sys_clk_init(24000000, 48000000);
	uart0_init(115200);

	printk("\n\nAC632Nuke!\n");

	arch_init();
	p11_init();
	printk("JL_PMU->PMU_STA: %08x\n", JL_PMU->PMU_STA);
	printk("JL_CMNG->CON1: %08x\n", *(u32*)(0x1b0004));
	P11_WDT_CON0 = 0x1f;

	while(1){
		putc('U');
		mdelay(1000);
		P11_WDT_CON0 |= BIT(6);
		printk("P11_WDT_CON0: %02x\n", P11_WDT_CON0);
	};
}

