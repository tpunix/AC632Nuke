
#ifndef __BD19__
#define __BD19__

//===============================================================================//
//
//      sfr define
//
//===============================================================================//

#define hs_base            0x1f0000
#define ls_base            0x1e0000

#define __RW               volatile       // read write
#define __RO               volatile const // only read
#define __WO               volatile       // only write

#define __u8               unsigned int   // u8  to u32 special for struct
#define __u16              unsigned int   // u16 to u32 special for struct
#define __u32              unsigned int

#define __s8(x)            char(x); char(reserved_1_##x); char(reserved_2_##x); char(reserved_3_##x)
#define __s16(x)           short(x); short(reserved_1_##x)
#define __s32(x)           int(x)

#define map_adr(grp, adr)  ((64 * grp + adr) * 4)     // grp(0x0-0xff), adr(0x0-0x3f)

//===============================================================================//
//
//      high speed sfr address define
//
//===============================================================================//

//............. 0x0000 - 0x00ff............ for hemu
typedef struct {
    __RW __u32 WREN;
    __RW __u32 CON0;
    __RW __u32 CON1;
    __RW __u32 CON2;
    __RW __u32 CON3;
    __RW __u32 MSG0;
    __RW __u32 MSG1;
    __RW __u32 MSG2;
    __RW __u32 MSG3;
    __RO __u32 ID;
} JL_HEMU_TypeDef;

#define JL_HEMU_BASE                 (hs_base + map_adr(0x00, 0x00))
#define JL_HEMU                      ((JL_HEMU_TypeDef    *)JL_HEMU_BASE)


//............. 0x0200 - 0x02ff............ for sfc
typedef struct {
    __RW __u32 CON;
    __WO __u32 BAUD;
    __WO __u32 CODE;
    __WO __u32 BASE_ADR;
    __WO __u32 QUCNT;
    __RW __u8  ENC_CON;
    __RW __u16 ENC_KEY;
    __WO __u32 UNENC_ADRH;
    __WO __u32 UNENC_ADRL;
} JL_SFC_TypeDef;

#define JL_SFC_BASE                     (hs_base + map_adr(0x02, 0x00))
#define JL_SFC                          ((JL_SFC_TypeDef    *)JL_SFC_BASE)

////............. 0x0500 - 0x05ff............ for psram

//............. 0x1200 - 0x12ff............ for CORDIC
typedef struct {
    __RW __u32 CON;
    __RW __u32 XDAT;
    __RW __u32 YDAT;
} JL_CORDIC_TypeDef;

#define JL_CORDIC_BASE                     (hs_base + map_adr(0x12, 0x00))
#define JL_CORDIC                          ((JL_CORDIC_TypeDef  *)JL_CORDIC_BASE)





//............. 0x1300 - 0x13ff............ for dcp
typedef struct {
    __RW __u32 CON;
    __RW __u32 ADR;
} JL_DCP_TypeDef;

#define JL_DCP_BASE                     (hs_base + map_adr(0x13, 0x00))
#define JL_DCP                          ((JL_DCP_TypeDef  *)JL_DCP_BASE)


//............. 0x1500 - 0x15ff............ for eq

//............. 0x1600 - 0x16ff............ for src

//............. 0x1700 - 0x17ff............ for fm

//............. 0x1800 - 0x18ff............ for

//............. 0x1900 - 0x19ff............ for fft

//............. 0x2100 - 0x21ff............ for wireless
typedef struct {
    __RW __u32 CON0;
    __RW __u32 CON3;
    __RW __u32 LOFC_CON;
    __RW __u32 LOFC_RES;
    __RW __u32 DBG_CON;
} JL_WL_TypeDef;

#define JL_WL_BASE                      (hs_base + map_adr(0x21, 0x00))
#define JL_WL                           ((JL_WL_TypeDef     *)JL_WL_BASE)

//............. 0x2200 - 0x22ff............
typedef struct {
    __RW __u32 CON0;
} JL_WL_AUD_TypeDef;

#define JL_WL_AUD_BASE                  (hs_base + map_adr(0x22, 0x00))
#define JL_WL_AUD                       ((JL_WL_AUD_TypeDef *)JL_WL_AUD_BASE)

//............. 0x2300 - 0x23ff............ aud

//............. 0x2400 - 0x24ff............ for anc

//............. 0x2500 - 0x25ff............ for audio_sync

//............. 0x2600 - 0x26ff............ for src_sync

//............. 0x2700 - 0x27ff............ pdm

//............. 0x2800 - 0x28ff............ pdm
typedef struct {
    __RW __u32 CON;
    __RW __u32 SEL;
    __RW __u32 DP;
    __RW __u32 DAT_VLD0;
    __RW __u32 DAT_VLD1;
    __RW __u32 DAT_VLD2;
    __RW __u32 DAT_VLD3;
} JL_WL_MBIST_TypeDef;

#define JL_WL_MBIST_BASE                  (hs_base + map_adr(0x28, 0x00))
#define JL_WL_MBIST                       ((JL_WL_MBIST_TypeDef *)JL_WL_MBIST_BASE)

//===============================================================================//
//
//      low speed sfr address define
//
//===============================================================================//

//............. 0x0000 - 0x00ff............ for syscfg
typedef struct {
    __RW __u32 PWR_CON;
    __RW __u32 HTC_CON;
    __RW __u32 SYS_DIV;
    __RW __u32 CLK_CON0;
    __RW __u32 CLK_CON1;
    __RW __u32 CLK_CON2;
    __RW __u32 CLK_CON3;
    __RW __u32 CLK_CON4;
    __RW __u32 CLK_CON5;
} JL_CLOCK_TypeDef;

#define JL_CLOCK_BASE                   (ls_base + map_adr(0x00, 0x00))
#define JL_CLOCK                        ((JL_CLOCK_TypeDef      *)JL_CLOCK_BASE)

typedef struct {
    __RW __u32 RST_SRC;
} JL_RST_TypeDef;

#define JL_RST_BASE                  (ls_base + map_adr(0x00, 0x30))
#define JL_RST                       ((JL_RST_TypeDef     *)JL_RST_BASE)

//............. 0x0100 - 0x01ff............
typedef struct {
    __RW __u32 MODE_CON;
} JL_MODE_TypeDef;

#define JL_MODE_BASE                  (ls_base + map_adr(0x01, 0x00))
#define JL_MODE                       ((JL_MODE_TypeDef     *)JL_MODE_BASE)

//............. 0x0200 - 0x02ff............
typedef struct {
    __WO __u32 CHIP_ID;
    __WO __u32 MBIST_CON;
} JL_SYSTEM_TypeDef;

#define JL_SYSTEM_BASE                  (ls_base + map_adr(0x02, 0x00))
#define JL_SYSTEM                       ((JL_SYSTEM_TypeDef     *)JL_SYSTEM_BASE)

//............. 0x0300 - 0x03ff............
typedef struct {
    __RW __u32 WREN;
    __RW __u32 CON0;
    __RW __u32 CON1;
    __RW __u32 CON2;
    __RW __u32 CON3;
    __RW __u32 MSG0;
    __RW __u32 MSG1;
    __RW __u32 MSG2;
    __RW __u32 MSG3;
    __RO __u32 ID;
} JL_LEMU_TypeDef;

#define JL_LEMU_BASE                  (ls_base + map_adr(0x03, 0x00))
#define JL_LEMU                       ((JL_LEMU_TypeDef    *)JL_LEMU_BASE)

//............. 0x0400 - 0x09ff............
typedef struct {
    __RW __u32 CON;
    __RW __u32 CNT;
    __RW __u32 PRD;
    __RW __u32 PWM;
} JL_TIMER_TypeDef;

#define JL_TIMER0_BASE                  (ls_base + map_adr(0x04, 0x00))
#define JL_TIMER0                       ((JL_TIMER_TypeDef     *)JL_TIMER0_BASE)

#define JL_TIMER1_BASE                  (ls_base + map_adr(0x05, 0x00))
#define JL_TIMER1                       ((JL_TIMER_TypeDef     *)JL_TIMER1_BASE)

#define JL_TIMER2_BASE                  (ls_base + map_adr(0x06, 0x00))
#define JL_TIMER2                       ((JL_TIMER_TypeDef     *)JL_TIMER2_BASE)

#define JL_TIMER3_BASE                  (ls_base + map_adr(0x07, 0x00))
#define JL_TIMER3                       ((JL_TIMER_TypeDef     *)JL_TIMER3_BASE)

//............. 0x1000 - 0x10ff............
typedef struct {
    __RW __u32 CON;
    __RW __u32 VAL;
} JL_PCNT_TypeDef;

#define JL_PCNT_BASE                    (ls_base + map_adr(0x10, 0x00))
#define JL_PCNT                         ((JL_PCNT_TypeDef       *)JL_PCNT_BASE)

//............. 0x1100 - 0x11ff............
typedef struct {
    __RW __u32 CON;
    __RO __u32 NUM;
} JL_GPCNT_TypeDef;

#define JL_GPCNT_BASE                   (ls_base + map_adr(0x11, 0x00))
#define JL_GPCNT                        ((JL_GPCNT_TypeDef     *)JL_GPCNT_BASE)


//............. 0x1400 - 0x17ff............ sd0

//............. 0x1800 - 0x18ff............
typedef struct {
    __RW __u32 CON0;
    __RW __u32 CON1;
    __WO __u32 EP0_CNT;
    __WO __u32 EP1_CNT;
    __WO __u32 EP2_CNT;
    __WO __u32 EP3_CNT;
    __WO __u32 EP4_CNT;
    __WO __u32 EP0_ADR;
    __WO __u32 EP1_TADR;
    __WO __u32 EP1_RADR;
    __WO __u32 EP2_TADR;
    __WO __u32 EP2_RADR;
    __WO __u32 EP3_TADR;
    __WO __u32 EP3_RADR;
    __WO __u32 EP4_TADR;
    __WO __u32 EP4_RADR;
    __RW __u32 TXDLY_CON;
    __RW __u32 EP1_RLEN;
    __RW __u32 EP2_RLEN;
    __RW __u32 EP3_RLEN;
    __RW __u32 EP4_RLEN;
    __RW __u32 EP1_MTX_PRD;
    __RW __u32 EP1_MRX_PRD;
    __RO __u32 EP1_MTX_NUM;
    __RO __u32 EP1_MRX_NUM;
} JL_USB_TypeDef;

#define JL_USB_BASE                     (ls_base + map_adr(0x18, 0x00))
#define JL_USB                          ((JL_USB_TypeDef       *)JL_USB_BASE)

#define JL_USB1_BASE                    (ls_base + map_adr(0x5a, 0x00))
#define JL_USB1                         ((JL_USB_TypeDef       *)JL_USB1_BASE)

//............. 0x1900 - 0x19ff............
typedef struct {
    __RW __u32 WLA_CON0 ;
    __RW __u32 WLA_CON1 ;
    __RW __u32 WLA_CON2 ;
    __RW __u32 WLA_CON3 ;
    __RW __u32 WLA_CON4 ;
    __RW __u32 WLA_CON5 ;
    __RW __u32 WLA_CON6 ;
    __RW __u32 WLA_CON7 ;
    __RW __u32 WLA_CON8 ;
    __RW __u32 WLA_CON9 ;
    __RW __u32 WLA_CON10;
    __RW __u32 WLA_CON11;
    __RW __u32 WLA_CON12;
    __RW __u32 WLA_CON13;
    __RW __u32 WLA_CON14;
    __RW __u32 WLA_CON15;
    __RW __u32 WLA_CON16;
    __RW __u32 WLA_CON17;
    __RW __u32 WLA_CON18;
    __RW __u32 WLA_CON19;
    __RW __u32 WLA_CON20;
    __RW __u32 WLA_CON21;
    __RW __u32 WLA_CON22;
    __RW __u32 WLA_CON23;
    __RW __u32 WLA_CON24;
    __RW __u32 WLA_CON25;
    __RW __u32 WLA_CON26;
    __RW __u32 WLA_CON27;
    __RW __u32 WLA_CON28;
    __RW __u32 WLA_CON29;
    __RO __u32 WLA_CON30;
    __RO __u32 WLA_CON31;
    __RO __u32 WLA_CON32;
    __RO __u32 WLA_CON33;
    __RO __u32 WLA_CON34;
    __RO __u32 WLA_CON35;
    __RO __u32 WLA_CON36;
    __RO __u32 WLA_CON37;
    __RO __u32 WLA_CON38;
    __RO __u32 WLA_CON39;
} JL_WLA_TypeDef;

#define JL_WLA_BASE                     (ls_base + map_adr(0x19, 0x00))
#define JL_WLA                          ((JL_WLA_TypeDef       *)JL_WLA_BASE)

//............. 0x1a00 - 0x1aff............ ADDA

//............. 0x1c00 - 0x1eff............
typedef struct {
    __RW __u32 CON;
    __WO __u32 BAUD;
    __RW __u32 BUF;
    __WO __u32 ADR;
    __WO __u32 CNT;
} JL_SPI_TypeDef;

#define JL_SPI0_BASE                    (ls_base + map_adr(0x1c, 0x00))
#define JL_SPI0                         ((JL_SPI_TypeDef      *)JL_SPI0_BASE)

#define JL_SPI1_BASE                    (ls_base + map_adr(0x1d, 0x00))
#define JL_SPI1                         ((JL_SPI_TypeDef      *)JL_SPI1_BASE)

#define JL_SPI2_BASE                    (ls_base + map_adr(0x1e, 0x00))
#define JL_SPI2                         ((JL_SPI_TypeDef      *)JL_SPI2_BASE)

//............. 0x2000 - 0x22ff............
typedef struct {
    __RW __u16 CON0;
    __RW __u16 CON1;
    __WO __u16 BAUD;
    __RW __u8  BUF;
    __RW __u32 OTCNT;
    __RW __u32 TXADR;
    __WO __u16 TXCNT;
    __RW __u32 RXSADR;
    __RW __u32 RXEADR;
    __RW __u32 RXCNT;
    __RO __u16 HRXCNT;
    __RW __u16 CON2;
} JL_UART_TypeDef;

#define JL_UART0_BASE                   (ls_base + map_adr(0x20, 0x00))
#define JL_UART0                        ((JL_UART_TypeDef       *)JL_UART0_BASE)

#define JL_UART1_BASE                   (ls_base + map_adr(0x21, 0x00))
#define JL_UART1                        ((JL_UART_TypeDef       *)JL_UART1_BASE)

#define JL_UART2_BASE                   (ls_base + map_adr(0x22, 0x00))
#define JL_UART2                        ((JL_UART_TypeDef       *)JL_UART2_BASE)

//............. 0x2400 - 0x24ff............
typedef struct {
    __RW __u16 CON0;
    __RW __u8  BUF;
    __WO __u16 BAUD;
    __RW __u32 ADR;
    __RW __u32 CNT;
} JL_IIC_TypeDef;

#define JL_IIC_BASE                     (ls_base + map_adr(0x24, 0x00))
#define JL_IIC                          ((JL_IIC_TypeDef       *)JL_IIC_BASE)

//............. 0x2700 - 0x27ff............
typedef struct {
    __RW __u32 CLK;
} JL_LEDCK_TypeDef;
#define JL_LEDCK_BASE                    (ls_base + map_adr(0x27,0x00))
#define JL_LEDCK                         ((JL_LEDCK_TypeDef     *)JL_LEDCK_BASE)

typedef struct {
    __RW __u32 CON;
    __RW __u32 FD;
    __RW __u32 LP;
    __RW __u32 TIX;
    __RW __u32 RSTX;
    __RW __u32 ADR;
} JL_LEDC_TypeDef;
#define JL_LEDC0_BASE                    (ls_base + map_adr(0x27, 0x01))
#define JL_LEDC0                         ((JL_LEDC_TypeDef      *)JL_LEDC0_BASE)

#define JL_LEDC1_BASE                    (ls_base + map_adr(0x27, 0x07))
#define JL_LEDC1                         ((JL_LEDC_TypeDef      *)JL_LEDC1_BASE)

//............. 0x2800 - 0x28ff............ PAP

//............. 0x2b00 - 0x2bff............ ss

//............. 0x2c00 - 0x2cff............
typedef struct {
    __RW __u8  CON;
    __RW __u8  DAT;
    __RW __u8  SMP;
} JL_RDEC_TypeDef;

#define JL_RDEC0_BASE                   (ls_base + map_adr(0x2c, 0x00))
#define JL_RDEC0                        ((JL_RDEC_TypeDef       *)JL_RDEC0_BASE)

#define JL_RDEC1_BASE                   (ls_base + map_adr(0x44, 0x00))
#define JL_RDEC1                        ((JL_RDEC_TypeDef       *)JL_RDEC1_BASE)

#define JL_RDEC2_BASE                   (ls_base + map_adr(0x45, 0x00))
#define JL_RDEC2                        ((JL_RDEC_TypeDef       *)JL_RDEC2_BASE)

//#define JL_RDEC3_BASE                   (ls_base + map_adr(0x4f, 0x00))
//#define JL_RDEC3                        ((JL_RDEC_TypeDef       *)JL_RDEC3_BASE)

//............. 0x2e00 - 0x2eff............ IIS

//............. 0x3000 - 0x30ff............
typedef struct {
    __RW __u32 TMR0_CON;
    __RW __u32 TMR0_CNT;
    __RW __u32 TMR0_PR;
    __RW __u32 TMR1_CON;
    __RW __u32 TMR1_CNT;
    __RW __u32 TMR1_PR;
    __RW __u32 TMR2_CON;
    __RW __u32 TMR2_CNT;
    __RW __u32 TMR2_PR;
    __RW __u32 TMR3_CON;
    __RW __u32 TMR3_CNT;
    __RW __u32 TMR3_PR;
    __RW __u32 TMR4_CON;
    __RW __u32 TMR4_CNT;
    __RW __u32 TMR4_PR;
    __RW __u32 TMR5_CON;
    __RW __u32 TMR5_CNT;
    __RW __u32 TMR5_PR;
    __RW __u32 TMR6_CON;
    __RW __u32 TMR6_CNT;
    __RW __u32 TMR6_PR;
    __RW __u32 TMR7_CON;
    __RW __u32 TMR7_CNT;
    __RW __u32 TMR7_PR;
    __RW __u32 FPINCON;
    __RW __u32 CH0_CON0;
    __RW __u32 CH0_CON1;
    __RW __u32 CH0_CMPH;
    __RW __u32 CH0_CMPL;
    __RW __u32 CH1_CON0;
    __RW __u32 CH1_CON1;
    __RW __u32 CH1_CMPH;
    __RW __u32 CH1_CMPL;
    __RW __u32 CH2_CON0;
    __RW __u32 CH2_CON1;
    __RW __u32 CH2_CMPH;
    __RW __u32 CH2_CMPL;
    __RW __u32 CH3_CON0;
    __RW __u32 CH3_CON1;
    __RW __u32 CH3_CMPH;
    __RW __u32 CH3_CMPL;
    __RW __u32 CH4_CON0;
    __RW __u32 CH4_CON1;
    __RW __u32 CH4_CMPH;
    __RW __u32 CH4_CMPL;
    __RW __u32 CH5_CON0;
    __RW __u32 CH5_CON1;
    __RW __u32 CH5_CMPH;
    __RW __u32 CH5_CMPL;
    __RW __u32 CH6_CON0;
    __RW __u32 CH6_CON1;
    __RW __u32 CH6_CMPH;
    __RW __u32 CH6_CMPL;
    __RW __u32 CH7_CON0;
    __RW __u32 CH7_CON1;
    __RW __u32 CH7_CMPH;
    __RW __u32 CH7_CMPL;
    __RW __u32 MCPWM_CON0;
} JL_MCPWM_TypeDef;

#define JL_MCPWM_BASE                   (ls_base + map_adr(0x30, 0x00))
#define JL_MCPWM                        ((JL_MCPWM_TypeDef     *)JL_MCPWM_BASE)

//............. 0x3100 - 0x31ff............
typedef struct {
    __RW __u32 CON;
    __RO __u32 RES;
} JL_ADC_TypeDef;

#define JL_ADC_BASE                     (ls_base + map_adr(0x31, 0x00))
#define JL_ADC                          ((JL_ADC_TypeDef       *)JL_ADC_BASE)

//............. 0x3200 - 0x32ff............
typedef struct {
    __RW __u32 RFLT_CON;
} JL_IR_TypeDef;

#define JL_IR_BASE                      (ls_base + map_adr(0x32, 0x00))
#define JL_IR                           ((JL_IR_TypeDef         *)JL_IR_BASE)

//............. 0x3300 - 0x33ff............
// Used by ALNK1

//............. 0x3400 - 0x34ff............
typedef struct {
    __RW __u32 CON;
} JL_OSA_TypeDef;

#define JL_OSA_BASE                     (ls_base + map_adr(0x34, 0x00))
#define JL_OSA                          ((JL_OSA_TypeDef          *)JL_OSA_BASE)

//............. 0x3500 - 0x35ff............
typedef struct {
    __WO __u32 FIFO;
    __RW __u32 REG;
} JL_CRC_TypeDef;

#define JL_CRC_BASE                     (ls_base + map_adr(0x35, 0x00))
#define JL_CRC                          ((JL_CRC_TypeDef       *)JL_CRC_BASE)


//............. 0x3600 - 0x36ff............
typedef struct {
    __WO __u32 CON;
    __RW __u32 NUM;
} JL_LRCT_TypeDef;

#define JL_LRCT_BASE                    (ls_base + map_adr(0x36, 0x00))
#define JL_LRCT                         ((JL_LRCT_TypeDef     *)JL_LRCT_BASE)

//............. 0x3700 - 0x37ff............ EFUSE

//............. 0x3b00 - 0x3bff............
typedef struct {
    __RO __u32 R64L;
    __RO __u32 R64H;
} JL_RAND_TypeDef;

#define JL_RAND_BASE                    (ls_base + map_adr(0x3b, 0x00))
#define JL_RAND                         ((JL_RAND_TypeDef   *)JL_RAND_BASE)

//............. 0x3c00 - 0x3cff............ CTM

//............. 0x3e00 - 0x3eff............ for p33
typedef struct {
    __RW __u32 PMU_CON;
    __RW __u32 PMU_STA;
} JL_PMU_TypeDef;

#define JL_PMU_BASE                 (ls_base + map_adr(0x3e, 0x00))
#define JL_PMU                      ((JL_PMU_TypeDef        *)JL_PMU_BASE)

//............. 0x3f00 - 0x3fff............ for dma

//............. 0x4000 - 0x40ff............ FM

//............. 0x4100 - 0x41ff............ for lsb peri(spi0/sd0)
typedef struct {
    __RW __u8  ENCCON ;
    __WO __u16 ENCKEY ;
    __WO __u16 ENCADR ;
} JL_PERIENC_TypeDef;

#define JL_PERIENC_BASE             (ls_base + map_adr(0x41, 0x00))
#define JL_PERIENC                  ((JL_PERIENC_TypeDef *)JL_PERIENC_BASE)

//............. 0x4200 - 0x42ff............ for sbc

//............. 0x4300 - 0x43ff............ for aes
typedef struct {
    __RW __u32 CON;
    __RW __u32 DATIN;
    __WO __u32 KEY;
    __RW __u32 ENCRES0;
    __RW __u32 ENCRES1;
    __RW __u32 ENCRES2;
    __RW __u32 ENCRES3;
    __WO __u32 NONCE;
    __WO __u8  HEADER;
    __WO __u32 SRCADR;
    __WO __u32 DSTADR;
    __WO __u32 CTCNT;
    __WO __u32 TAGLEN;
    __RO __u32 TAGRES0;
    __RO __u32 TAGRES1;
    __RO __u32 TAGRES2;
    __RO __u32 TAGRES3;
} JL_AES_TypeDef;

#define JL_AES_BASE               (ls_base + map_adr(0x43, 0x00))
#define JL_AES                    ((JL_AES_TypeDef *)JL_AES_BASE)

//............. 0x4400 - 0x44ff............
//Used by rdec1

//............. 0x4500 - 0x45ff............
//Used by rdec2

//............. 0x4600 - 0x46ff............ for mbist

//............. 0x4700 - 0x47ff............ for pll_ctl
typedef struct {
    __RW __u32 PLL_CON0;
    __RW __u32 PLL_CON1;
    __RW __u32 PLL_CON2;
    __RW __u32 PLL_CON3;
    __RW __u32 PLL_CON4;
    __RW __u32 PLL_INTF0;
    __RW __u32 PLL_INTF1;
} JL_PLL_TypeDef;

#define JL_PLL_BASE                   (ls_base + map_adr(0x47, 0x00))
#define JL_PLL                        ((JL_PLL_TypeDef      *)JL_PLL_BASE)


//............. 0x4800 - 0x48ff............ for aac


//............. 0x4a00 - 0x4fff............ for sie
typedef struct {
    __RW __u32 FADDR;
    __RW __u32 POWER;
    __RO __u32 INTRTX1;
    __RO __u32 INTRTX2;
    __RO __u32 INTRRX1;
    __RO __u32 INTRRX2;
    __RO __u32 INTRUSB;
    __RW __u32 INTRTX1E;
    __RW __u32 INTRTX2E;
    __RW __u32 INTRRX1E;
    __RW __u32 INTRRX2E;
    __RW __u32 INTRUSBE;
    __RO __u32 FRAME1;
    __RO __u32 FRAME2;
    __RO __u32 RESERVED14;
    __RW __u32 DEVCTL;
    __RO __u32 RESERVED10_0x16[0x16 - 0x10 + 1];

} JL_USB_SIE_TypeDef;

#define JL_USB_SIE_BASE                  (ls_base + map_adr(0x4a, 0x00))
#define JL_USB_SIE                       ((JL_USB_SIE_TypeDef *)JL_USB_SIE_BASE)

#define JL_USB1_SIE_BASE                  (ls_base + map_adr(0x5b, 0x00))
#define JL_USB1_SIE                       ((JL_USB_SIE_TypeDef *)JL_USB1_SIE_BASE)

typedef struct {
    __RO __u32 RESERVED0;
    __RW __u32 CSR0;
    __RO __u32 RESERVED2_5[5 - 1];
    __RO __u32 COUNT0;

} JL_USB_EP0_TypeDef;

#define JL_USB_EP0_BASE                   (ls_base + map_adr(0x4a, 0x10))
#define JL_USB_EP0                        ((JL_USB_EP0_TypeDef *)JL_USB_EP0_BASE)

#define JL_USB1_EP0_BASE                   (ls_base + map_adr(0x5b, 0x10))
#define JL_USB1_EP0                        ((JL_USB_EP0_TypeDef *)JL_USB1_EP0_BASE)


typedef struct {
    __RW __u32 TXMAXP;
    __RW __u32 TXCSR1;
    __RW __u32 TXCSR2;
    __RW __u32 RXMAXP;
    __RW __u32 RXCSR1;
    __RW __u32 RXCSR2;
    __RO __u32 RXCOUNT1;
    __RO __u32 RXCOUNT2;
    __RW __u32 TXTYPE;
    __RO __u32 TXINTERVAL;
    __RW __u32 RXTYPE;
    __RO __u32 RXINTERVAL;

} JL_USB_EP_TypeDef;

#define JL_USB_EP1_BASE                   (ls_base + map_adr(0x4b, 0x10))
#define JL_USB_EP1                        ((JL_USB_EP_TypeDef *)JL_USB_EP1_BASE)

#define JL_USB_EP2_BASE                   (ls_base + map_adr(0x4c, 0x10))
#define JL_USB_EP2                        ((JL_USB_EP_TypeDef *)JL_USB_EP2_BASE)

#define JL_USB_EP3_BASE                   (ls_base + map_adr(0x4d, 0x10))
#define JL_USB_EP3                        ((JL_USB_EP_TypeDef *)JL_USB_EP3_BASE)

#define JL_USB_EP4_BASE                   (ls_base + map_adr(0x4e, 0x10))
#define JL_USB_EP4                        ((JL_USB_EP_TypeDef *)JL_USB_EP4_BASE)

#define JL_USB1_EP1_BASE                   (ls_base + map_adr(0x5c, 0x10))
#define JL_USB1_EP1                        ((JL_USB_EP_TypeDef *)JL_USB1_EP1_BASE)

#define JL_USB1_EP2_BASE                   (ls_base + map_adr(0x5d, 0x10))
#define JL_USB1_EP2                        ((JL_USB_EP_TypeDef *)JL_USB1_EP2_BASE)

#define JL_USB1_EP3_BASE                   (ls_base + map_adr(0x5e, 0x10))
#define JL_USB1_EP3                        ((JL_USB_EP_TypeDef *)JL_USB1_EP3_BASE)

#define JL_USB1_EP4_BASE                   (ls_base + map_adr(0x5f, 0x10))
#define JL_USB1_EP4                        ((JL_USB_EP_TypeDef *)JL_USB1_EP4_BASE)


//............. 0x5000 - 0x53ff............ for port
typedef struct {
    __RW __u32 OUT;
    __RO __u32 IN;
    __RW __u32 DIR;
    __RW __u32 DIE;
    __RW __u32 PU;
    __RW __u32 PD;
    __RW __u32 HD0;
    __RW __u32 HD;
    __RW __u32 DIEH;
} JL_PORT_TypeDef;

#define JL_PORTA_BASE                   (ls_base + map_adr(0x50, 0x00))
#define JL_PORTA                        ((JL_PORT_TypeDef *)JL_PORTA_BASE)

#define JL_PORTB_BASE                   (ls_base + map_adr(0x51, 0x00))
#define JL_PORTB                        ((JL_PORT_TypeDef *)JL_PORTB_BASE)

#define JL_PORTD_BASE                   (ls_base + map_adr(0x53, 0x00))
#define JL_PORTD                        ((JL_PORT_TypeDef *)JL_PORTD_BASE)

#define JL_PORTP_BASE                   (ls_base + map_adr(0x59, 0x00))
#define JL_PORTP                        ((JL_PORT_TypeDef *)JL_PORTP_BASE)

typedef struct {
    __RW __u32 CON0;
} JL_USB_IO_TypeDef;

#define JL_USB_IO_BASE                  (ls_base + map_adr(0x54, 0x00))
#define JL_USB_IO                       ((JL_USB_IO_TypeDef    *)JL_USB_IO_BASE)

#define JL_USB1_IO_BASE                  (ls_base + map_adr(0x54, 0x09))
#define JL_USB1_IO                       ((JL_USB_IO_TypeDef    *)JL_USB1_IO_BASE)

typedef struct {
    __RW __u32 CON0;
    __RW __u32 CON1;
    __RW __u32 CON2;
    __RW __u32 CON3;
} JL_WAKEUP_TypeDef;

#define JL_WAKEUP_BASE               (ls_base + map_adr(0x54, 0x01))
#define JL_WAKEUP                    ((JL_WAKEUP_TypeDef			*)JL_WAKEUP_BASE)

typedef struct {
    __RW __u32 CON0;
    __RW __u32 CON1;
    __RW __u32 CON2;
    __RW __u32 CON3;
} JL_IOMAP_TypeDef;

#define JL_IOMAP_BASE                   (ls_base + map_adr(0x54, 0x05))
#define JL_IOMAP                        ((JL_IOMAP_TypeDef      *)JL_IOMAP_BASE)

typedef struct {
    __RW __u32 CON0;
    __RW __u32 CON1;
    __RW __u32 CON2;
    __RW __u32 CON3;
    __RW __u32 BRI_PRDL;
    __RW __u32 BRI_PRDH;
    __RW __u32 BRI_DUTY0L;
    __RW __u32 BRI_DUTY0H;
    __RW __u32 BRI_DUTY1L;
    __RW __u32 BRI_DUTY1H;
    __RW __u32 PRD_DIVL;
    __RW __u32 DUTY0;
    __RW __u32 DUTY1;
    __RW __u32 DUTY2;
    __RW __u32 DUTY3;
    __RO __u32 CNT_RD;
} JL_PLED_TypeDef;

#define JL_PLED_BASE                   (ls_base + map_adr(0x55, 0x00))
#define JL_PLED                        ((JL_PLED_TypeDef      *)JL_PLED_BASE)

//typedef struct {
//    __RW __u32 CON0;
//    __RW __u32 SEG_IOEN0;
//    __RW __u32 SEG_IOEN1;
//} JL_LCD_TypeDef;
//
//#define JL_LCD_BASE                   (ls_base + map_adr(0x53, 0x00))
//#define JL_LCD                        ((JL_LCD_TypeDef      *)JL_LCD_BASE)
//.............  Full Speed USB ...................
//  #define FADDR                   0x00
//  #define POWER                   0x01
//  #define INTRTX1                 0x02
//  #define INTRTX2                 0x03
//  #define INTRRX1                 0x04
//  #define INTRRX2                 0x05
//  #define INTRUSB                 0x06
//  #define INTRTX1E                0x07
//  #define INTRTX2E                0x08
//  #define INTRRX1E                0x09
//  #define INTRRX2E                0x0a
//  #define INTRUSBE                0x0b
//  #define FRAME1                  0x0c
//  #define FRAME2                  0x0d
//  #define INDEX                   0x0e
//  #define DEVCTL                  0x0f
//  #define TXMAXP                  0x10
//  #define CSR0                    0x11
//  #define TXCSR1                  0x11
//  #define TXCSR2                  0x12
//  #define RXMAXP                  0x13
//  #define RXCSR1                  0x14
//  #define RXCSR2                  0x15
//  #define COUNT0                  0x16
//  #define RXCOUNT1                0x16
//  #define RXCOUNT2                0x17
//  #define TXTYPE                  0x18
//  #define TXINTERVAL              0x19
//  #define RXTYPE                  0x1a
//  #define RXINTERVAL              0x1b


//===============================================================================//
//
//      output function define
//
//===============================================================================//
#define FO_GP_OCH0          0
#define FO_GP_OCH1          1
#define FO_GP_OCH2          2
#define FO_GP_OCH3          3
#define FO_GP_OCH4          4
#define FO_GP_OCH5          5
#define FO_GP_OCH6          6
#define FO_GP_OCH7          7
#define FO_GP_OCH8          8
#define FO_GP_OCH9          9
#define FO_GP_OCH10         10
#define FO_GP_OCH11         11
#define FO_TMR0_PWM         12
#define FO_TMR1_PWM         13
#define FO_TMR2_PWM         14
#define FO_TMR3_PWM         15
#define FO_SPI0_CLK         16
#define FO_SPI0_DA0         17
#define FO_SPI0_DA1         18
#define FO_SPI0_DA2         19
#define FO_SPI0_DA3         20
#define FO_SPI1_CLK         21
#define FO_SPI1_DA0         22
#define FO_SPI1_DA1         23
#define FO_SPI1_DA2         24
#define FO_SPI1_DA3         25
#define FO_SPI2_CLK         26
#define FO_SPI2_DA0         27
#define FO_SPI2_DA1         28
#define FO_SPI2_DA2         29
#define FO_SPI2_DA3         30
#define FO_MCPWM_CH0L       31
#define FO_MCPWM_CH0H       32
#define FO_MCPWM_CH1L       33
#define FO_MCPWM_CH1H       34
#define FO_MCPWM_CH2L       35
#define FO_MCPWM_CH2H       36
#define FO_MCPWM_CH3L       37
#define FO_MCPWM_CH3H       38
#define FO_IIC_SCL          39
#define FO_IIC_SDA          40
#define FO_LEDC0_DO         41
#define FO_LEDC1_DO         42
#define FO_UART0_TX         43
#define FO_UART1_TX         44
#define FO_UART1_RTS        45
#define FO_UART2_TX         46
#define FO_CHAIN_OUT0       47
#define FO_CHAIN_OUT1       48
#define FO_CHAIN_OUT2       49
#define FO_CHAIN_OUT3       50

//===============================================================================//
//
//      IO output select sfr
//
//===============================================================================//
typedef struct {
    __RW __u8 PA0_OUT; // 00
    __RW __u8 PA1_OUT;
    __RW __u8 PA2_OUT;
    __RW __u8 PA3_OUT;
    __RW __u8 PA4_OUT; // 10
    __RW __u8 PA5_OUT;
    __RW __u8 PA6_OUT;
    __RW __u8 PA7_OUT;
    __RW __u8 PA8_OUT; // 20
    __RW __u8 PA9_OUT;
    __RW __u8 PB0_OUT;
    __RW __u8 PB1_OUT;
    __RW __u8 PB2_OUT; // 30
    __RW __u8 PB3_OUT;
    __RW __u8 PB4_OUT;
    __RW __u8 PB5_OUT;
    __RW __u8 PB6_OUT; // 40
    __RW __u8 PB7_OUT;
    __RW __u8 PB8_OUT;
    __RW __u8 PB9_OUT;
    __RW __u8 PD0_OUT; // 50
    __RW __u8 PD1_OUT;
    __RW __u8 PD2_OUT;
    __RW __u8 PD3_OUT;
    __RW __u8 PD4_OUT; // 60
    __RW __u8 USBDP_OUT;
    __RW __u8 USBDM_OUT;
    __RW __u8 USB1DP_OUT;
    __RW __u8 USB1DM_OUT; // 70
    __RW __u8 PP0_OUT;
} JL_OMAP_TypeDef;

#define JL_OMAP_BASE      (ls_base + map_adr(0x56, 0x00))
#define JL_OMAP           ((JL_OMAP_TypeDef   *)JL_OMAP_BASE)



//===============================================================================//
//
//      input IO define
//
//===============================================================================//
#define PA0_IN      1
#define PA1_IN      2
#define PA2_IN      3
#define PA3_IN      4
#define PA4_IN      5
#define PA5_IN      6
#define PA6_IN      7
#define PA7_IN      8
#define PA8_IN      9
#define PA9_IN      10
#define PB0_IN      11
#define PB1_IN      12
#define PB2_IN      13
#define PB3_IN      14
#define PB4_IN      15
#define PB5_IN      16
#define PB6_IN      17
#define PB7_IN      18
#define PB8_IN      19
#define PB9_IN      20
#define PD0_IN      21
#define PD1_IN      22
#define PD2_IN      23
#define PD3_IN      24
#define PD4_IN      25
#define USBDP_IN    26
#define USBDM_IN    27
#define USB1DP_IN   28
#define USB1DM_IN   29
#define PP0_IN      30

//  Only for p33 port mux in (without crossbar)
//************************************************
#define P00_IN      31

//===============================================================================//
//
//      function input select sfr
//
//===============================================================================//
typedef struct {
    __RW __u8 FI_GP_ICH0   ; // 00
    __RW __u8 FI_GP_ICH1   ;
    __RW __u8 FI_GP_ICH2   ;
    __RW __u8 FI_GP_ICH3   ;
    __RW __u8 FI_GP_ICH4   ; // 10
    __RW __u8 FI_GP_ICH5   ;
    __RW __u8 FI_GP_ICH6   ;
    __RW __u8 FI_GP_ICH7   ;
    __RW __u8 FI_TMR0_CIN  ; // 20
    __RW __u8 FI_TMR0_CAP  ;
    __RW __u8 FI_TMR1_CIN  ;
    __RW __u8 FI_TMR1_CAP  ;
    __RW __u8 FI_TMR2_CIN  ; // 30
    __RW __u8 FI_TMR2_CAP  ;
    __RW __u8 FI_TMR3_CIN  ;
    __RW __u8 FI_TMR3_CAP  ;
    __RW __u8 FI_SPI0_CLK  ; // 40
    __RW __u8 FI_SPI0_DA0  ;
    __RW __u8 FI_SPI0_DA1  ;
    __RW __u8 FI_SPI0_DA2  ;
    __RW __u8 FI_SPI0_DA3  ; // 50
    __RW __u8 FI_SPI1_CLK  ;
    __RW __u8 FI_SPI1_DA0  ;
    __RW __u8 FI_SPI1_DA1  ;
    __RW __u8 FI_SPI1_DA2  ; // 60
    __RW __u8 FI_SPI1_DA3  ;
    __RW __u8 FI_SPI2_CLK  ;
    __RW __u8 FI_SPI2_DA0  ;
    __RW __u8 FI_SPI2_DA1  ; // 70
    __RW __u8 FI_SPI2_DA2  ;
    __RW __u8 FI_SPI2_DA3  ;
    __RW __u8 FI_MCPWM_TMR0_CLKI;
    __RW __u8 FI_MCPWM_TMR1_CLKI; // 80
    __RW __u8 FI_MCPWM_TMR2_CLKI;
    __RW __u8 FI_MCPWM_TMR3_CLKI;
    __RW __u8 FI_MCPWM_FPIN_A   ;
    __RW __u8 FI_MCPWM_FPIN_B   ; // 90
    __RW __u8 FI_MCPWM_FPIN_C   ;
    __RW __u8 FI_MCPWM_FPIN_D   ;
    __RW __u8 FI_IIC_SCL   ;
    __RW __u8 FI_IIC_SDA   ; // A0
    __RW __u8 FI_UART0_RX  ;
    __RW __u8 FI_UART1_RX  ;
    __RW __u8 FI_UART1_CTS ;
    __RW __u8 FI_UART2_RX  ; // B0
    __RW __u8 FI_RDEC0_DAT0;
    __RW __u8 FI_RDEC0_DAT1;
    __RW __u8 FI_RDEC1_DAT0;
    __RW __u8 FI_RDEC1_DAT1; //C0
    __RW __u8 FI_RDEC2_DAT0;
    __RW __u8 FI_RDEC2_DAT1;
    __RW __u8 FI_CHAIN_IN0      ;
    __RW __u8 FI_CHAIN_IN1      ; // D0
    __RW __u8 FI_CHAIN_IN2      ;
    __RW __u8 FI_CHAIN_IN3      ;
    __RW __u8 FI_CHAIN_RST      ;
    __RW __u8 FI_TOTAL; // E0
} JL_IMAP_TypeDef;

#define JL_IMAP_BASE      (ls_base + map_adr(0x57, 0x00))
#define JL_IMAP           ((JL_IMAP_TypeDef   *)JL_IMAP_BASE)


//===============================================================================//
//
//      gpio
//
//===============================================================================//

#define IO_GROUP_NUM 		16


#define IO_PORTA_00 				(IO_GROUP_NUM * 0 + 0)
#define IO_PORTA_01 				(IO_GROUP_NUM * 0 + 1)
#define IO_PORTA_02 				(IO_GROUP_NUM * 0 + 2)
#define IO_PORTA_03 				(IO_GROUP_NUM * 0 + 3)
#define IO_PORTA_04 				(IO_GROUP_NUM * 0 + 4)
#define IO_PORTA_05 				(IO_GROUP_NUM * 0 + 5)
#define IO_PORTA_06 				(IO_GROUP_NUM * 0 + 6)
#define IO_PORTA_07 				(IO_GROUP_NUM * 0 + 7)
#define IO_PORTA_08 				(IO_GROUP_NUM * 0 + 8)
#define IO_PORTA_09 				(IO_GROUP_NUM * 0 + 9)
#define IO_PORTA_10 				(IO_GROUP_NUM * 0 + 10)
#define IO_PORTA_11 				(IO_GROUP_NUM * 0 + 11)
#define IO_PORTA_12 				(IO_GROUP_NUM * 0 + 12)
#define IO_PORTA_13 				(IO_GROUP_NUM * 0 + 13)
#define IO_PORTA_14 				(IO_GROUP_NUM * 0 + 14)
#define IO_PORTA_15 				(IO_GROUP_NUM * 0 + 15)

#define IO_PORTB_00 				(IO_GROUP_NUM * 1 + 0)
#define IO_PORTB_01 				(IO_GROUP_NUM * 1 + 1)
#define IO_PORTB_02 				(IO_GROUP_NUM * 1 + 2)
#define IO_PORTB_03 				(IO_GROUP_NUM * 1 + 3)
#define IO_PORTB_04 				(IO_GROUP_NUM * 1 + 4)
#define IO_PORTB_05 				(IO_GROUP_NUM * 1 + 5)
#define IO_PORTB_06 				(IO_GROUP_NUM * 1 + 6)
#define IO_PORTB_07 				(IO_GROUP_NUM * 1 + 7)
#define IO_PORTB_08 				(IO_GROUP_NUM * 1 + 8)
#define IO_PORTB_09 				(IO_GROUP_NUM * 1 + 9)
#define IO_PORTB_10 				(IO_GROUP_NUM * 1 + 10)
#define IO_PORTB_11 				(IO_GROUP_NUM * 1 + 11)
#define IO_PORTB_12 				(IO_GROUP_NUM * 1 + 12)
#define IO_PORTB_13 				(IO_GROUP_NUM * 1 + 13)
#define IO_PORTB_14 				(IO_GROUP_NUM * 1 + 14)
#define IO_PORTB_15 				(IO_GROUP_NUM * 1 + 15)

#define IO_PORTD_00 				(IO_GROUP_NUM * 2 + 0)
#define IO_PORTD_01 				(IO_GROUP_NUM * 2 + 1)
#define IO_PORTD_02 				(IO_GROUP_NUM * 2 + 2)
#define IO_PORTD_03 				(IO_GROUP_NUM * 2 + 3)
#define IO_PORTD_04 				(IO_GROUP_NUM * 2 + 4)

#define IO_PORTP_00 				(IO_GROUP_NUM * 3 + 0)

#define IO_MAX_NUM 					(IO_PORTP_00+1)


#define USB_IO_OFFSET               0
#define IO_PORT_DP                  (IO_MAX_NUM + USB_IO_OFFSET)
#define IO_PORT_DM                  (IO_MAX_NUM + USB_IO_OFFSET + 1)

#define USB1_IO_OFFSET              2
#define IO_PORT_DP1                 (IO_MAX_NUM + USB1_IO_OFFSET)
#define IO_PORT_DM1                 (IO_MAX_NUM + USB1_IO_OFFSET + 1)

#define P33_IO_OFFSET               4
#define IO_VBTCH_DET                (IO_MAX_NUM + P33_IO_OFFSET + 0)
#define IO_LDOIN_DET                (IO_MAX_NUM + P33_IO_OFFSET + 1)
#define IO_P00_DET                  (IO_MAX_NUM + P33_IO_OFFSET + 2)

#define IO_PORT_MAX					(IO_P00_DET + 1)

#define GPIOA                       (IO_GROUP_NUM * 0)
#define GPIOB                       (IO_GROUP_NUM * 1)
#define GPIOC                       (IO_GROUP_NUM * 2)
#define GPIOUSB                     (IO_MAX_NUM + USB_IO_OFFSET)
#define GPIOUSB1                    (IO_MAX_NUM + USB1_IO_OFFSET)


#endif



