



#if 0
////////////////////////////sdfile_file_head成员详细说明///////////////////////////////////////
typedef struct SDFILEJL_FILE_HEAD {
    u16 u16Crc;     // 结构体自身校验码
    u16 u16DataCrc; // 文件数据校验码
    u32 u32Address; // 数据存储地址
    u32 u32Length;  // 数据长度
    u8 u8Attribute; // 属性
    u8 u8Res;       // 保留数据
    u16 u16Index;   // 文件编号，从大到小排列，编号为0时，代表后面没有文件
    char szFileName[16];// 文件名
} JL_SDFILE_HEAD;

////////////////////////////flash_head成员详细说明///////////////////////////////////////
typedef struct SDFILEJL_FLASH_HEAD_V2 {
    u16 u16Crc;             // 结构体自身校验码
    u16 u16SizeForBurner;   // 为烧写器保留的空间大小
    char vid[4];    		// 存放VID信息，长度是4个byte
    u32 u32FlashSize;       // FLASH大小,由isd_download计算得出
    u8 u8FsVersion;         // flash类型：BR18(0)/BR22(1)
    u8 u8BlockAlingnModulus;// 对齐系数，对齐的值=对齐系数*256
    u8 u8Res;          		// 保留
    u8 u8SpecialOptFlag;    // 用于标记是否需要生成2种flash格式的标记位，目前只用1位
    char pid[16];    		// 存放PID信息，长度是16个byte
} SDFILEJL_FLASH_HEAD_V2;

#endif

typedef struct {
	void *handle;
	u32 offset;
	u32 unk;
	int (*read)(void *handle, void *buf, int offset, int length);
}BOOT_CTRL;

// 105e2c
void Run_App(BOOT_CTRL *bt)
{
	LZ4_streamDecode_t lz4d;
	u8 lz4_hdr[16];
	u8 bank_hdr[16];
	u8 fw1_hdr[32];
	u8 fw0_hdr[32];
	u16 crc;
	int len;

	// 读FLASH_HDR
	bt.read(bt.handle, fw0_hdr, bt.offset, 0x20);
	crc = chip_crc16(fw0_hdr+2, 0x1e);
	if(crc==0 || crc!=*(u16*)(fw0_hdr))
		return;

	// 读SDFILE_HDR
	bt.read(bt.handle, fw1_hdr, bt.offset+0x20, 0x20);

	u32 bank_offset = bt.offset + *(u32*)(fw1_hdr+4);

	// 读bank, 尝试4次
	for(i=0; i<4; i++){
		len = bt.read(bt.handle, bank_hdr, bank_offset, 0x10);
		if(len==0)
			continue;

		crc = chip_crc16(bank_hdr, 0x0e);
		if(crc==0)
			continue;
		if(crc==*(u16*)(bank_hdr+0x0e))
			break;
	}
	if(i==4)
		return;


	r0 = *(u32*)(sp+0x48);
	r1 = *(u32*)(sp+0x3c); // out.offset
	r8 = *(u32*)(sp+0x38); // out.load
	r9 = *(u16*)(sp+0x36); // out.size
	r5 = r1+r0; // fw.offset + out.offset
	r11 = r8;

	bank_load_addr = *(u32*)(bank_hdr+4);
	bank_data_offset = *(u32*)(bank_hdr+8);
	bank_size = *(u16*)(bank_hdr+2);
	temp_load_addr = bank_load_addr;

	int is_lz4 = fw1_hdr[12];
	if(is_lz4){
		// LZ4压缩, 读LZ4头部
		bt.read(bt.handle, lz4_hdr, bank_offset+bank_data_offset, 0x10);
		bank_load_addr = *(u32*)(lz4_hdr+8);
	}

	// 读出bank文件
	for(i=0; i<4; i++){
		len = bt.read(bt.handle, temp_load_addr, bank_offset+bank_data_offset, bank_size);
		if(len==0)
			continue;

		crc = *(u16*)(bank_hdr+12);
		if(crc!=JL_CRC.REG)
			continue;
		if(crc)
			break;
	}


	if(is_lz4){
		u32 dict_size = *(u32*)(lz4_hdr+0);
		u32 dict_addr = *(u32*)(lz4_hdr+4);
		lz4d.prefixEnd = dict_addr+dict_size;
		lz4d.prefixSize = dict_size;
		lz4d.extDictSize = 0;
		lz4d.externalDict = 0;

		max_size = temp_load_addr - bank_load_addr;
		// LZ4_decompress_safe_continue(LZ4_streamDecode_t *lz4d, char *src, char *dst, int comp_size, int max_decomp_size)
		len = LZ4_decompress_safe_continue(&lz4d, temp_load_addr+0x10, bank_load_Addr, bank_size-0x10, max_size);
		orig_size = *(u32*)(lz4_hdr+12);
		if(len!=orig_size)
			return;
	}

	icfg &= 0xfffffeff;
	cli();
	bank_load_addr(bt, bank_offset, boot_arg_list);

}


static u8 keylcode[] = {
	0xc3, 0xcf, 0xc0, 0xe8, 0xce, 0xd2, 0xb0, 0xae,
	0xc4, 0xe3, 0xa3, 0xac, 0xd3, 0xf1, 0xc1, 0xd6,
	0x53, 0x48, 0x41, 0x2d, 0x32, 0x35, 0x36, 0x00, // SHA-256
};

// 0x105726
void CrcDecode(u8 *buf, int size)
{
	JL_CRC.REG = 0xffff;
	JL_CRC.FIFO = 0xff;
	JL_CRC.FIFO = 0xff;

	int p = 0;

	while(size){
		JL_CRC.FIFO = keylcode[p];
		p = (p+1)&0x0f;
		csync();
		*buf++ ^= JL_CRC.REG;
		size--;
	};

}


void spi_port_io_init(void)
{
	// PD3: SPI0_CS
	JL_PORTD->OUT |= 0x08;
	JL_PORTD->DIR &= 0xfffffff7;
	JL_PORTD->PU  &= 0xfffffff7;
	JL_PORTD->PD  &= 0xfffffff7;

	// PD0: SPI0_CLK
	JL_PORTD->PU  &= 0xfffffffe;
	JL_PORTD->PD  &= 0xfffffffe;
	JL_PORTD->DIR &= 0xfffffffe;
	JL_OMAP->PD0_OUT = 0x43;

	// PD1: SPI0_DOUT
	JL_PORTD->PU  |= 0x02;
	JL_PORTD->PD  &= 0xfffffffd;
	JL_PORTD->DIR |= 0x02;
	JL_OMAP->PD1_OUT = 0x47;
	JL_IMAP->SPI0_DA0 = 0x16; // 22: PD1_IN

	// PD2: SPI0_DIN
	JL_PORTD->PU  |= 0x04;
	JL_PORTD->PD  &= 0xfffffffb;
	JL_PORTD->DIR |= 0x04;
	JL_OMAP->PD2_OUT = 0x4b;
	JL_IMAP->SPI0_DA1 = 0x17; // 23: PD2_IN
}


void SPI0_cs(int val)
{
	r1 = 0x1e5300; // JL_PORTD
	if(val){
		JL_PORTD->OUT |= 8;
	}else{
		JL_PORTD->OUT &= 0xfffffff7;
	}
	JL_PORTD->DIR &= 0xfffffff7;
}


void spi0_wait_ok(void)
{
	while((JL_SPI0->CON&0x8000)==0);
	JL_SPI0->CON |= 0x4000;
}


void SPI0_WriteByte(int val)
{
	JL_SPI0->CON &= 0xffffefff;
	JL_SPI0->BUF = val;
}


int SPI0_ReadByte(void)
{
	JL_SPI0->CON |= 0x1000;
	udelay(10);
	JL_SPI0->BUF = 0xff;
	spi0_wait_ok();
	return (u8)JL_SPI0->BUF;
}


// PD3: SFC_CS/SPI0_CS
void spi_cs_pu(int val)
{
	if(val){
		JL_PORTD->PU |= 8;
	}else{
		JL_PORTD->PU &= 0xfffffff7;
	}
}


// PD4: Flash供电
void flash_poweron(int tm)
{
	r1 = JL_PORTD->OUT;
	if(JL_PORTD->OUT&0x10)
		break;

	spi_cs_pu(1);
	JL_PORTD->PD &= 0xffffffef;
	JL_PORTD->PU |= 0x10;
	JL_PORTD->DIR |= 0x10;
	JL_PORTD->HD &= 0xffffffef;
	JL_PORTD->HD0 &= 0xffffffef;
	JL_PORTD->OUT |= 0x10;
	JL_PORTD->DIR &= 0xffffffef;
	mdelay(1);
	JL_PORTD->HD |= 0x10;
	JL_PORTD->HD0 |= 0x10;
	mdelay(tm);

}

int (*read)(void *handle, void *buf, int offset, int length);
int norflash_read(r0, r1, r2, r3)
{
	r0 = *(u8*)(r0+4);
	r4 = r3;
	r6 = r2;
	r5 = r1;

	if(r0){
		JL_PERIENC->ENCKEY = 0;
		JL_PERIENC->ENCCON = 0x83;
	}

	SPI0_cs(0);
	SPI0_WriteByte(0x03);
	SPI0_WriteByte((offset>>16)&0xff);
	SPI0_WriteByte((offset>>8)&0xff);
	SPI0_WriteByte((offset>>0)&0xff);

	JL_CRC->REG = 0;
	JL_SPI0->CON |= 0x1000;
	udelay(10);

	JL_SPI0->CON &= 0xfffff3ff; // 1bit
	JL_SPI0->ADR = buf;
	JL_SPI0->CNT = length&0xffff; // 写CNT启动DMA
	spi0_wait_ok();

	SPI0_cs(1);
	JL_PERIENC->ENCCON = 0;
	return 1;
}


int clk_get(char *clk_name)
{
	if(strcmp(clk_name, "sys")==0){
		return *(u32*)(0xfc08);
	}else if(strcmp(clk_name, "osc")==0){
		return *(u32*)(0xfc04);
	}else if(strcmp(clk_name, "uart")==0){
		return 0x016e3600;
	}else{
		return *(u32*)(0xfc08);
	}
}


void uart_upgrade_init(int r0)
{

	JL_PORTP->HD  |= 1;
	JL_PORTP->DIE |= 1;
	JL_PORTP->PD  &= 0xfffffffe;
	JL_PORTP->DIR |= 1;

	JL_IMAP->FI_UART0_RX = 0x1e; // PP0_IN
	JL_CLOCK->CON2 &= 0xfffff3ff;
	JL_CLOCK->CON2 |= 0x00000400;

	JL_UART0->CON0 = 0x3400;

	// TODO
	// TODO
	// TODO
	//
}


void main(void)
{
	osc_clk_init();
	mask_putchar = ut_empty; // 0xfce4

	r0 = nvram_boot_state();
	r9 = 0x13c0; // var_bss_begin
	r13 = 0x1e5400; // JL_USB_IO
	if(r0==0){
		r0 = 0xffff;
		*(u16*)(r9+4) = r0;

		JL_USB_IO->CON0 |= 0x04;
		JL_USB_IO->CON0 |= 0x08;
		JL_USB_IO->CON0 |= 0x100;
		JL_USB_IO->CON0 |= 0x200;
		r7 = 0;

		HWI_Install(7, usb_key_isr, 0);
		set_timer3_capture_dp(0);

		r6 = r13-0x4d00; // 1e0700: timer3
		JL_TIMER3->PRD = 0x07;
		JL_TIMER3->CNT = 0x00;
		JL_TIMER3->CON = 0x12;

		r8 = g_boot_soft_flag;
		r0 = *(u8*)(r8+1); // fbf8+1
		r4 = r6+0x5208; // 1e5908: JL_PORTP->DIR
		if((r0&0x10)==0){
			JL_PORTP->PU &= 0xfffffffe;
			JL_PORTP->PD |= 1;
			JL_PORTP->DIR |= 1;
			JL_PORTP->DIE |= 1;
			*(u32*)(r9+8) = 0;
		}

		reset_status();

		r10 = r4-0x01dc; // 1e572c JL_IMAP->FI_TMR1_CAP
		JL_IMAP->FI_TMR1_CAP = 0x1e;

		r5 = r4-0x5408; // 1e0500  JL_TIMER1
		JL_TIMER1->CON = 0x4000;

		HWI_Install(5, capture_isr, 0);
		*(u32*)(r9+0x0c) = 1;
		JL_TIMER1->CNT = 0;
		JL_TIMER1->PRD = 0;
		JL_TIMER1->CON = 0x42;


		set_cap_timeout(); // use TIMER2
		r2 = r4-0x5308; // 1e0600: JL_TIMER2
		while(1){
			if(JL_TIMER2->CON&0x8000)
				break;

			r0 = *(u16*)(r9+4);
			r0 = check_key_type(r0);
			if(r0==1)
				break;
			r0 = *(u16*)(r9+2);
			r0 = check_key_type(r0);
			if(r0==4)
				break;
		}

		r1 = 0x4000;
		JL_TIMER2->CON = 0x4000;
		JL_TIMER3->CON = 0x4000;
		JL_USB_IO->CON0 |= 0x04;
		JL_USB_IO->CON0 |= 0x08;
		JL_TIMER1->CON = 0x4000;
		JL_IMAP->FI_TMR1_CAP = 0;

		r1 = *(u8*)(r8+1); // fbf8+1
		if(r1==0){
			JL_PORTP->PD &= 0xfffffffe;
		}
	}

// 106164
	r2 = 0xfc00; // boot_arg_list;

	if(r0<3){
		check_usb_sof(3);
		goto _boot;
	}else if(r0<=4){
		uart_upgrade_init(0);
		goto _boot;
	}



// 106188
	r10 = 0;
	*(u8*)(boot_arg_list+0) = 0;

	r15 = 0xfbf0; // spi_port
	r7 = 0x106d10; // nvram_boot_tag+0x0c: "sys"
	r4 = 0xfbe0; // spi_flash_io
	r14 = r13+0xae00; // 1f0200-> JL_SFC
	r6 = r13-0x3800;  // 1e1c00-> JL_SPI0
	r8 = r6+0x3700;   // 1e5300-> JL_PORTD
	r11 = 0;

	while(1){
		wdt_clr();

		*(u8*)(spi_port+4) = 1;
		r0 = 0x106d00; // norflash_check_in.spi0_porta_config
		*(u32*)(spi_port+0) = r0;
		flash_poweron(0x0a);
		memmove(spi_flash_io, spi_flash_io_nor, 0x10);

		r3 = *(u32*)(spi_port+0);
		JL_SFC->CON = 0;
		JL_SPI0->CON = 0x20;
		JL_SPI0->BAUD = *(u8*)(r3+1); // [106d01]
		spi_port_io_init();

		r1 = *(u16*)(r3+0);
		if(r1&7){
			JL_SPI0>CON |= 8;
			JL_IOMAP->CON0 &= 0xfff7ffff;
		}else{
			JL_SPI0>CON &= 0xfffffff7;
			JL_IOMAP->CON0 |= 0x00080000;
		}
		JL_SPI0>CON |= 1;

		SPI0_cs(1);
		SPI0_cs(0);
		SPI0_WriteByte(0xab);
		SPI0_WriteByte(0xff);
		SPI0_WriteByte(0xff);
		SPI0_WriteByte(0xff);
		SPI0_ReadByte();
		SPI0_cs(1);

		r12 = 0xffffff6a;
		while(r12){
			SPI0_cs(0);
			SPI0_WriteByte(0x05);
			r5 = SPI0_ReadByte();
			SPI0_cs(1);
			if((r5&1)==0)
				break;
			mdelay(1);
			r12 += 1;
		}

		SPI0_cs(0);
		SPI0_WriteByte(0x66);
		SPI0_cs(1);

		SPI0_cs(0);
		SPI0_WriteByte(0x99);
		SPI0_cs(1);

		mdelay(2);


		r5 = 0;
		*(u32*)(spi_flash_io+4) = 0;
		while(r5!=0x14){
			Run_App(spi_flash_io); // norflash_read
			r0 = *(u32*)(nor_flash_boot_table+r5);
			*(u32*)(spi_flash_io+4) = r0;
			r5 += 4;
		}

		spi_unmount();
		JL_PORTD->HD  &= 0xffffffef;
		JL_PORTD->HD0 &= 0xffffffef;
		JL_PORTD->DIR |= 0x0010;
		JL_PORTD->PU  &= 0xffffffef;
		JL_PORTD->PD  |= 0x0010;
		JL_PORTD->OUT &= 0xffffffef;
		mdelay(1);
		spi_cs_pu(0);

		if(r11==0){
			r11 = 1;
			uart_upgrade_init(1);
		}
		r0 = check_usb_sof(0);
		if(r0)
			break;
	}

// 1062e8
// 既没有进入强制升级模式, 又从SPI启动失败. 自动进入USB升级模式.
_boot:

	r0 = 0x1a1895; // P11 space?
	r1 = *(u8*)(r0+0);
	r1 &= 0xf8;
	r1 |= 0x06;
	*(u8*)(r0+0) = r1;


	// 以下一段貌似是计算PLL参数的
	r1 = *(u32*)(r9+0x20); // var_bss_begin+0x20: 0x13e0
	r7 = 0xfc00; // boot_arg_list;
	*(u32*)(r7+4) = 0;

	r0 = r1-4000;
	r2 = r1;
	r3 = 4000;
	r1 = 4000000;
	while(1){
		r6 = r3-r2;
		if(r6<=-1)
			r6 = r0;

		if(r6<=1000){
			*(u32*)(r7+4) = r1;
			break;
		}

		r1 += 2000000;
		r0 -= 2000;
		r3 += 2000;
		if(r3>48000)
			break;
	}
	pll_init();
	mdelay(50);

	usb_slave_mode();
}





//////////////////////////////////
// 以下不是firm部分, 是SDK的lib //
//////////////////////////////////


u32 p33_rd_page(int page)
{
	page <<= 6;
	r3 = 0x1a18b0;
	P3_EFUSE_CON0 = page;

	r5 = 0;
	r6 = 0;
	r2 = 0;
	while(1){
		r0 = r5|0x82;
		P3_EFUSE_CON1 = r5;
		udelay(50);
		r0 = P3_EFUSE_RDAT;
		P3_EFUSE_CON1 = 0;

		r0 <<= r6;
		r2 |= r0;
		r6 += 8;
		r5 += 4;
		if(r6==0x20)
			break;
	}

	return r2;
}


u16 get_chip_key(void)
{
	return p33_rd_page(1);
}

void arch_init(void)
{
	sp -= 0x30;

	r8 = 0x5f40; // flash_arg.0
	r6 = 0;

	r4 = r8+0x7c; // 0x5fbc
	memset(r4, 0, 0x34);
	memset(0x5f70, 0, 0x14);

	*(u32*)(r8+0x38) = r4;

	r0 = get_chip_key();
	*(u16*)(r8+0x3c) = r4;
	csync();

	r0 = 0x1b0004; // JL_CMNG->CON1
	JL_CMNG->CON1 &= 0xffff0000;
	JL_CMNG->CON1 |= 0x00000285;
	csync();
	csync();
	JL_CMNG->CON1 &= 0x0000ffff;
	csync();
	csync();

	r4 = sp+0x10;
	norflash_read(r4, 0x40, 0x20);

	*(u32*)(sp+0) = 0;
	*(u32*)(sp+4) = 0;
	*(u32*)(sp+8) = 0;
	*(u32*)(sp+12) = 0;
	r4 = 0x34b6;
	r0 = dec_isd_cfg_ini(r4, sp);
	if(r0){
		r0 = *(u8*)(sp+0);
		r1 = *(u8*)(sp+2);
		r7 = r0-0x30;
		*(u8*)(r8+0) = r7;
		r0 = *(u8*)(sp+4);
		r1 -= 0x30;
		*(u8*)(r8+1) = r1;
		r5 = r1&0xff;
		r6 = r0-0x30;
	}else{
		r7 = 2;
		*(u8*)(r8+0) = r7;
		r5 = 3;
		*(u8*)(r8+1) = r5;
	}
	*(u8*)(r8+2) = r6;


	r1 = *(u32*)(r8+0x38);
	*(u32*)(r1+4) = 24000000;
	*(u32*)(r1+8) = 48000000;

	r0 = r4+4;
	r1 += 0x14;
	r0 = dec_isd_cfg_ini(r0, r1);

	r0 = *(u32*)(r8+0x38);
	r1 = 0xff;
	*(u8*)(r0+0x32) = r1;
	*(u8*)(r8+5) = r7;
	*(u8*)(r8+4) = r6;
	*(u8*)(r8+3) = r7;

// 下面都是SPI0初始化
	r0 = 0x1e1c00; // JL_SPI0
	JL_SPI0->CON = 0x28;

	r1 = r0+0x3814; // 0x1e5414 JL_IOMAP
	r2 = JL_IOMAP->CON0;
	if(r7&0xff){
		r2 &= 0xfff7ffff;
		JL_IOMAP->CON0 = r2;
	}else{
		r2 |= 0x00080000;
		JL_IOMAP->CON0 = r2;
		r1 = JL_SPI0->CON;
		r2 = r1&0xfffffff7;
		JL_SPI0->CON = r2;
	}
	JL_SPI0->BAUD = r5;

	r1 = r0+0x3700; // 1e5300 JL_PORTD
	// PD3: SPI0_CS
	JL_PORTD->OUT |= 0x08;
	JL_PORTD->DIR &= 0xfffffff7;
	JL_PORTD->PU  &= 0xfffffff7;
	JL_PORTD->PD  &= 0xfffffff7;
	// PD0: SPI0_CLK
	JL_PORTD->PU  &= 0xfffffffe;
	JL_PORTD->PD  &= 0xfffffffe;
	JL_PORTD->DIR &= 0xfffffffe;
	JL_OMAP->PD0_OUT = 0x43;
	// PD1: SPI0_DOUT
	JL_PORTD->PU  |= 0x02;
	JL_PORTD->PD  &= 0xfffffffd;
	JL_PORTD->DIR |= 0x02;
	JL_OMAP->PD1_OUT = 0x47;
	JL_IMAP->SPI0_DA0 = 0x16; // 22: PD1_IN
	// PD2: SPI0_DIN
	JL_PORTD->PU  |= 0x04;
	JL_PORTD->PD  &= 0xfffffffb;
	JL_PORTD->DIR |= 0x04;
	JL_OMAP->PD2_OUT = 0x4b;
	JL_IMAP->SPI0_DA1 = 0x17; // 23: PD2_IN

	if((r7&0xff)==4){
		r1 = r0+0x3508; // 1e5108 JL_PORTB
		r2 = r0 + 0x3a48; // JL_OMAP->PB8_OUT
		r3 = r0 + 0x3b44; // JL_IMAP->FI_SPI0_DA0
		JL_PORTB->DIR |= 0x0200;
		JL_PORTB->PU  |= 0x0200;
		JL_PORTB->PD  &= 0xfffffdff;
		JL_OMAP->PB9_OUT = 0x4f;
		JL_IMAP->FI_SPI0_DA2 = 0x14;

		JL_PORTB->DIR |= 0x0100;
		JL_PORTB->PU  |= 0x0100;
		JL_PORTB->PD  &= 0xfffffeff;
		JL_OMAP->PB8_OUT = 0x53;
		JL_IMAP->FI_SPI0_DA3 = 0x13;
	}

	JL_SPI0->CON |= 0x4001;

	spi_cs(1);

	spi_cs(0);
	spi_write_byte(0x9f);
	r3 = 3;
	while(r3){
		r4 = spi_read_byte();
		r3 -= 1;
	}
	spi_cs(1);

	spi_cs(0);
	spi_write_byte(0x4b);
	spi_write_byte(0);
	spi_write_byte(0);
	spi_write_byte(0);
	spi_write_byte(0);
	r3 = 16;
	while(r3){
		spi_read_byte();
		r3 -= 1;
	}
	spi_cs(1);

	r5 = 1;
	r0 = r4-0x10;
	r1 = 1;
	while(r1<=r0){
		r1 += 1;
		r5 <<= 1;
	}
	r0 = r5<<0x10;
	*(u32*)(r8+0x1c) = r0;

}


void p11_init(void)
{
	while(1){
		if((JL_PMU->STA&0x20)==0)
			continue;
		if((JL_PMU->STA&0x40))
			break;;
	}

	while(1){
		P11_DPCON0 = 0xff;
		P11_DPCON0 = 0xee;
		P11_DPCON0 = 0xab;
		P11_DPCON0 = 0x0e;
		P11_DPCON0 = 0x55;
		if(JL_PMU->STA&0x01)
			break;;
	}

}






//////////////////////////////////
// crc16                        //
//////////////////////////////////


static u16 crc16_table[] = {
	0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
	0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef
};


u16 crc16_calc(u8 *ptr, int len)
{
	u16 crc = 0;
	u8 d;

	if(len<=0)
		return 0;


	while(len){
		d = *ptr++;
		crc = crc16_table[(d>>4)^(crc>>12)] ^ (crc<<4);
		crc = crc16_table[(d&0x0f)^(crc>>12)]^(crc<<4);
		len -= 1;
	}

	return crc;
}


