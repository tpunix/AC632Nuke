/*********************************************************************************************
    *   Filename        : p11.h

    *   Description     :

    *   Author          : Bingquan

    *   Email           : caibingquan@zh-jieli.com

    *   Last modifiled  : 2019-12-09 10:21

    *   Copyright:(c)JIELI  2011-2019  @ , All Rights Reserved.
*********************************************************************************************/
#ifndef __P11__
#define __P11__

#include "defs.h"

#define P11_ACCESS(x)   (*(volatile u8 *)(0x1A0000 + x))

/*xdata区域*/
#define P11_P2M_ACCESS(x)      P11_ACCESS(0xf6c + x)
#define P11_M2P_ACCESS(x)      P11_ACCESS(0xfac + x)
#define P11_CTM(x)      	   P11_ACCESS(0x1E00 + x)
/*sfr区域*/
#define P11_SFR(x)      	   P11_ACCESS(0x1F00 + x)

//===========================================================================//
//
//                             standard SFR
//
//===========================================================================//

//  0x80 - 0x87
//******************************
#define    P11_DPCON0          P11_SFR(0x80)
#define    P11_SP              P11_SFR(0x81)
#define    P11_DP0L            P11_SFR(0x82)
#define    P11_DP0H            P11_SFR(0x83)
#define    P11_DP1L            P11_SFR(0x84)
#define    P11_DP1H            P11_SFR(0x85)
#define    P11_SPH             P11_SFR(0x86)
#define    P11_PDATA           P11_SFR(0x87)

//  0x88 - 0x8F
//******************************
#define    P11_WDT_CON0        P11_SFR(0x88)
#define    P11_WDT_CON1        P11_SFR(0x89)
#define    P11_PWR_CON         P11_SFR(0x8a)
#define    P11_CLK_CON0        P11_SFR(0x8b)
#define    P11_CLK_CON1        P11_SFR(0x8c)
#define    P11_BTOSC_CON       P11_SFR(0x8d)
#define    P11_RST_SRC         P11_SFR(0x8e)
#define    P11_SYS_DIV         P11_SFR(0x8f)

//  0xA0 - 0xA7
//******************************
#define    P11_SDIV_DA0        P11_SFR(0xa0)
#define    P11_SDIV_DA1        P11_SFR(0xa1)
#define    P11_SDIV_DA2        P11_SFR(0xa2)
#define    P11_SDIV_DA3        P11_SFR(0xa3)
#define    P11_SDIV_DB0        P11_SFR(0xa4)
#define    P11_SDIV_DB1        P11_SFR(0xa5)
#define    P11_SDIV_DB2        P11_SFR(0xa6)
#define    P11_SDIV_DB3        P11_SFR(0xa7)

//  0xA8 - 0xAF
//******************************
#define    P11_IE0             P11_SFR(0xa8)
#define    P11_IE1             P11_SFR(0xa9)
#define    P11_IPCON0L         P11_SFR(0xaa)
#define    P11_IPCON0H         P11_SFR(0xab)
#define    P11_IPCON1L         P11_SFR(0xac)
#define    P11_IPCON1H         P11_SFR(0xad)
#define    P11_INT_BASE        P11_SFR(0xae)
#define    P11_SINT_CON        P11_SFR(0xaf)

//  0xB0 - 0xB7
//******************************
#define    P11_TMR3_CON0       P11_SFR(0xb0)
#define    P11_TMR3_CON1       P11_SFR(0xb1)
#define    P11_TMR3_CON2       P11_SFR(0xb2)
#define    P11_TMR3_PRD0       P11_SFR(0xb3)
#define    P11_TMR3_PRD1       P11_SFR(0xb4)
#define    P11_TMR3_PRD2       P11_SFR(0xb5)
#define    P11_TMR3_PRD3       P11_SFR(0xb6)

//  0xB8 - 0xBF
//******************************
#define    P11_TMR3_CNT0       P11_SFR(0xb8)
#define    P11_TMR3_CNT1       P11_SFR(0xb9)
#define    P11_TMR3_CNT2       P11_SFR(0xba)
#define    P11_TMR3_CNT3       P11_SFR(0xbb)
//  0xC0 - 0xC7
//******************************
#define    P11_LC_MPC_CON      P11_SFR(0xc0)
#define    P11_PORT_CON0       P11_SFR(0xc1)
#define    P11_PORT_CON1       P11_SFR(0xc2)
#define    P11_MEM_PWR_CON     P11_SFR(0xc3)
#define    P11_WKUP_CON0       P11_SFR(0xc4)
#define    P11_WKUP_CON1       P11_SFR(0xc5)
#define    P11_LCTM_CON        P11_SFR(0xc6)
#define    P11_SDIV_CON        P11_SFR(0xc7)

//  0xC8 - 0xCF
//******************************
#define    P11_UART_CON0       P11_SFR(0xc8)
#define    P11_UART_CON1       P11_SFR(0xc9)
#define    P11_UART_STA        P11_SFR(0xca)
#define    P11_UART_BUF        P11_SFR(0xcb)
#define    P11_UART_BAUD       P11_SFR(0xcc)
#define    P11_TMR2_CON0       P11_SFR(0xcd)
#define    P11_TMR2_CON1       P11_SFR(0xce)
#define    P11_TMR2_CON2       P11_SFR(0xcf)

//  0xD0 - 0xD7
//******************************
#define    P11_PSW             P11_SFR(0xd0 P Z OV RS0 RS1 F1 AC CY)
#define    P11_TMR0_CON0       P11_SFR(0xd1)
#define    P11_TMR0_CON1       P11_SFR(0xd2)
#define    P11_TMR0_CON2       P11_SFR(0xd3)
#define    P11_TMR0_PRD0       P11_SFR(0xd4)
#define    P11_TMR0_PRD1       P11_SFR(0xd5)
#define    P11_TMR0_PRD2       P11_SFR(0xd6)
#define    P11_TMR0_PRD3       P11_SFR(0xd7)

//  0xD8 - 0xDF
//******************************
#define    P11_TMR0_RSC0       P11_SFR(0xd8)
#define    P11_TMR0_RSC1       P11_SFR(0xd9)
#define    P11_TMR0_RSC2       P11_SFR(0xda)
#define    P11_TMR0_RSC3       P11_SFR(0xdb)
#define    P11_TMR0_CNT0       P11_SFR(0xdc)
#define    P11_TMR0_CNT1       P11_SFR(0xdd)
#define    P11_TMR0_CNT2       P11_SFR(0xde)
#define    P11_TMR0_CNT3       P11_SFR(0xdf)

//  0xE0 - 0xE7
//******************************
#define    P11_ACC             P11_SFR(0xe0)
#define    P11_TMR1_CON0       P11_SFR(0xe1)
#define    P11_TMR1_CON1       P11_SFR(0xe2)
#define    P11_TMR1_CON2       P11_SFR(0xe3)
#define    P11_TMR1_PRD0       P11_SFR(0xe4)
#define    P11_TMR1_PRD1       P11_SFR(0xe5)
#define    P11_TMR1_RSC0       P11_SFR(0xe6)
#define    P11_TMR1_RSC1       P11_SFR(0xe7)

//  0xE8 - 0xEF
//******************************
#define    P11_TMR1_CNT0       P11_SFR(0xe8)
#define    P11_TMR1_CNT1       P11_SFR(0xe9)
#define    P11_TMR2_PRD0       P11_SFR(0xea)
#define    P11_TMR2_PRD1       P11_SFR(0xeb)
#define    P11_TMR2_RSC0       P11_SFR(0xec)
#define    P11_TMR2_RSC1       P11_SFR(0xed)
#define    P11_TMR2_CNT0       P11_SFR(0xee)
#define    P11_TMR2_CNT1       P11_SFR(0xef)

//  0xF0 - 0xF7
//******************************
#define    P11_BREG            P11_SFR(0xf0)
#define    P11_P2M_INT_IE      P11_SFR(0xf1)
#define    P11_P2M_INT_SET     P11_SFR(0xf2)
#define    P11_P2M_INT_CLR     P11_SFR(0xf3)
#define    P11_P2M_INT_PND     P11_SFR(0xf4)
#define    P11_P2M_CLK_CON0    P11_SFR(0xf5)
#define    P11_P11_SYS_CON0    P11_SFR(0xf6)
#define    P11_P11_SYS_CON1    P11_SFR(0xf7)

//  0xF8 - 0xFF
//******************************
#define    P11_SYS_CON2    	   P11_SFR(0xf8)
#define    P11_M2P_INT_IE      P11_SFR(0xf9)
#define    P11_M2P_INT_SET     P11_SFR(0xfa)
#define    P11_M2P_INT_CLR     P11_SFR(0xfb)
#define    P11_M2P_INT_PND     P11_SFR(0xfc)
//#define    P11_                P11_SFR(0xfd)
//#define    P11_                P11_SFR(0xfe)
#define    P11_SIM_END         P11_SFR(0xff)

#define P33_TEST_ENABLE()           P11_P11_SYS_CON0 |= BIT(5)
#define P33_TEST_DISABLE()          P11_P11_SYS_CON0 &= ~BIT(5)

//===========================================================================//
//
//                             LPCTM SFR
//
//===========================================================================//

#define    LCTM_MOD          	 P11_CTM(0x00)
#define    LCTM_TMR          	 P11_CTM(0x01)
#define    LCTM_TIME_BASE_H  	 P11_CTM(0x02)
#define    LCTM_TIME_BASE_L  	 P11_CTM(0x03)

#define    LCTM_CHL0_ANA         P11_CTM(0x04)
#define    LCTM_CHL0_CON0        P11_CTM(0x05)
#define    LCTM_CHL0_CON1        P11_CTM(0x06)
#define    LCTM_CHL0_CON2        P11_CTM(0x07)
#define    LCTM_CHL0_CON3        P11_CTM(0x08)
#define    LCTM_CHL0_HS_PRD      P11_CTM(0x09)
#define    LCTM_CHL0_LS_PRD      P11_CTM(0x0a)
#define    LCTM_CHL0_DET_TIME_H  P11_CTM(0x0b)
#define    LCTM_CHL0_DET_TIME_L  P11_CTM(0x0c)
#define    LCTM_CHL0_TEMP_H      P11_CTM(0x0d)
#define    LCTM_CHL0_TEMP_L      P11_CTM(0x0e)
#define    LCTM_CHL0_STA_H       P11_CTM(0x0f)
#define    LCTM_CHL0_STA_L       P11_CTM(0x10)
#define    LCTM_CHL0_EDGE_H      P11_CTM(0x11)
#define    LCTM_CHL0_EDGE_L      P11_CTM(0x12)
#define    LCTM_CHL0_SHORT_H     P11_CTM(0x13)
#define    LCTM_CHL0_SHORT_L     P11_CTM(0x14)
#define    LCTM_CHL0_LONG_H      P11_CTM(0x15)
#define    LCTM_CHL0_LONG_L      P11_CTM(0x16)
#define    LCTM_CHL0_HOLD_H      P11_CTM(0x17)
#define    LCTM_CHL0_HOLD_L      P11_CTM(0x18)
#define    LCTM_CHL0_RES_L       P11_CTM(0x19)
#define    LCTM_CHL0_RES_H       P11_CTM(0x1a)

#define    LCTM_CHL1_ANA         P11_CTM(0x1b)
#define    LCTM_CHL1_CON0        P11_CTM(0x1c)
#define    LCTM_CHL1_CON1        P11_CTM(0x1d)
#define    LCTM_CHL1_CON2        P11_CTM(0x1e)
#define    LCTM_CHL1_HS_PRD      P11_CTM(0x1f)
#define    LCTM_CHL1_LS_PRD      P11_CTM(0x20)
#define    LCTM_CHL1_DET_TIME_H  P11_CTM(0x21)
#define    LCTM_CHL1_DET_TIME_L  P11_CTM(0x22)
#define    LCTM_CHL1_TEMP_H      P11_CTM(0x23)
#define    LCTM_CHL1_TEMP_L      P11_CTM(0x24)
#define    LCTM_CHL1_STA_H       P11_CTM(0x25)
#define    LCTM_CHL1_STA_L       P11_CTM(0x26)
#define    LCTM_CHL1_EDGE_H      P11_CTM(0x27)
#define    LCTM_CHL1_EDGE_L      P11_CTM(0x28)
#define    LCTM_CHL1_RES_L       P11_CTM(0x29)
#define    LCTM_CHL1_RES_H       P11_CTM(0x2a)

#define LP_PWR_IDLE(x)              SFR(P11_PWR_CON, 0, 1, x)
#define LP_PWR_STANDBY(x)           SFR(P11_PWR_CON, 1, 1, x)
#define LP_PWR_SLEEP(x)             SFR(P11_PWR_CON, 2, 1, x)
#define LP_PWR_SSMODE(x)            SFR(P11_PWR_CON, 3, 1, x)
#define LP_PWR_SOFT_RESET(x)        SFR(P11_PWR_CON, 4, 1, x)
#define LP_PWR_INIT_FLAG()          (P11_PWR_CON & BIT(5))
#define LP_PWR_RST_FLAG_CLR(x)      SFR(P11_PWR_CON, 6, 1, x)
#define LP_PWR_RST_FLAG()           (P11_PWR_CON & BIT(7))

#define LP_SOFT_FLAG_GET()          (P11_SYS_CON0 & BIT(0))
#define LP_SOFT_FLAG_SET(x)         SFR(P11_SYS_CON0, 0, 1, x)
#define LP_M2P_ACCESS_EN(x)         SFR(P11_SYS_CON0, 1, 1, x)
#define LP_PORT_WKUP_IE(x)          SFR(P11_SYS_CON0, 6, 1, x)
#define LP_PORT_WKUP_PND()          (P11_SYS_CON0 & BIT(7))

#define P11_ISOLATE(x)              SFR(P11_SYS_CON2, 0, 1, x)
#define P11_RX_DISABLE(x)           SFR(P11_SYS_CON2, 1, 1, x)
#define P11_TX_DISABLE(x)           SFR(P11_SYS_CON2, 2, 1, x)
#define P11_P2M_RESET(x)            SFR(P11_SYS_CON2, 3, 1, x)
#define P11_M2P_RESET_MASK(x)       SFR(P11_SYS_CON2, 4, 1, x)
#define P11_RESET_SYS(x)            SFR(P11_SYS_CON2, 6, 1, x)
#define SYS_RESET_P11(x)            SFR(P11_SYS_CON2, 7, 1, x)

#define LP_TMR0_EN(x)               SFR(P11_TMR0_CON0, 0, 1, x)
#define LP_TMR0_CTU(x)              SFR(P11_TMR0_CON0, 1, 1, x)
#define LP_TMR0_P11_WKUP_IE(x)      SFR(P11_TMR0_CON0, 2, 1, x)
#define LP_TMR0_P11_TO_IE(x)        SFR(P11_TMR0_CON0, 3, 1, x)
#define LP_TMR0_CLR_P11_WKUP(x)     SFR(P11_TMR0_CON0, 4, 1, x)
#define LP_TMR0_P11_WKUP(x)         (P11_TMR0_CON0 & BIT(5))
#define LP_TMR0_CLR_P11_TO(x)       SFR(P11_TMR0_CON0, 6, 1, x)
#define LP_TMR0_P11_TO(x)           (P11_TMR0_CON0 & BIT(7))

#define LP_TMR0_SW_KICK_START(x)    SFR(P11_TMR0_CON1, 0, 1, x)
#define LP_TMR0_HW_KICK_START(x)    SFR(P11_TMR0_CON1, 1, 1, x)
#define LP_TMR0_WKUP_IE(x)          SFR(P11_TMR0_CON1, 2, 1, x)
#define LP_TMR0_TO_IE(x)            SFR(P11_TMR0_CON1, 3, 1, x)
#define LP_TMR0_CLR_MSYS_WKUP(x)    SFR(P11_TMR0_CON1, 4, 1, x)
#define LP_TMR0_MSYS_WKUP(x)        (P11_TMR0_CON1 & BIT(5))
#define LP_TMR0_CLR_MSYS_TO(x)      SFR(P11_TMR0_CON1, 6, 1, x)
#define LP_TMR0_MSYS_TO(x)          (P11_TMR0_CON1 & BIT(7))

#define LP_TMR0_CLK_SEL(x)          SFR(P11_TMR0_CON2, 0, 2, x)
#define LP_TMR0_CLK_DIV(x)          SFR(P11_TMR0_CON2, 2, 2, x)
#define LP_TMR0_KST(x)              SFR(P11_TMR0_CON2, 4, 1, x)
#define LP_TMR0_RUN()               (P11_TMR0_CON2 & BIT(5))
#define LP_TMR0_SAMPLE_KST(x)       SFR(P11_TMR0_CON2, 6, 1, x)
#define LP_TMR0_SAMPLE_DONE()       (P11_TMR0_CON2 & BIT(7))

//===========================================================================//
//
//                            P2M_MEM(跟p11同步)
//
//===========================================================================//
#define P2M_WKUP_SRC                P11_P2M_ACCESS(0)
#define P2M_WKUP_PND                P11_P2M_ACCESS(1)
#define P2M_WKUP_LEVEL              P11_P2M_ACCESS(2)
#define P2M_REPLY_COMMON_CMD        P11_P2M_ACCESS(3)
#define P2M_RTC_CMD					P11_P2M_ACCESS(4)
#define P2M_SOFTOFF	                P11_P2M_ACCESS(5)

//===========================================================================//
//
//                            M2P_MEM(跟P11同步)
//
//===========================================================================//
#define M2P_LRC_PRD                 P11_M2P_ACCESS(0)
#define M2P_WDVDD                   P11_M2P_ACCESS(1)
#define M2P_LRC_TMR_50us  	        P11_M2P_ACCESS(2)
#define M2P_LRC_TMR_200us 	        P11_M2P_ACCESS(3)
#define M2P_LRC_TMR_600us 	        P11_M2P_ACCESS(4)
#define M2P_VDDIO_KEEP 	            P11_M2P_ACCESS(5)
#define M2P_LRC_KEEP 	            P11_M2P_ACCESS(6)
#define M2P_COMMON_CMD            	P11_M2P_ACCESS(7)
#define M2P_FREQUENCY_RCL			P11_M2P_ACCESS(8)
#define M2P_FREQUENCY_RCH			P11_M2P_ACCESS(9)
#define M2P_RTC_DAT0				P11_M2P_ACCESS(10)
#define M2P_RTC_DAT1				P11_M2P_ACCESS(11)
#define M2P_RTC_DAT2				P11_M2P_ACCESS(12)
#define M2P_RTC_DAT3				P11_M2P_ACCESS(13)
#define M2P_RTC_DAT4				P11_M2P_ACCESS(14)
#define M2P_RTC_ALARM0              P11_M2P_ACCESS(15)
#define M2P_RTC_ALARM1              P11_M2P_ACCESS(16)
#define M2P_RTC_ALARM2              P11_M2P_ACCESS(17)
#define M2P_RTC_ALARM3              P11_M2P_ACCESS(18)
#define M2P_RTC_ALARM4              P11_M2P_ACCESS(19)
#define M2P_RTC_ALARM_EN            P11_M2P_ACCESS(20)
#define M2P_RTC_TRIM_TIME           P11_M2P_ACCESS(21)
#define M2P_LRC_FEQL				P11_M2P_ACCESS(22)
#define M2P_LRC_FEQH				P11_M2P_ACCESS(23)
#define M2P_RTC_KEEP				P11_M2P_ACCESS(24)

//===========================================================================//
//
//              	M2P和P2M中断索引(跟P11同步)
//
//===========================================================================//
enum {
    M2P_LP_INDEX    = 0,
    M2P_PF_INDEX,
    M2P_P33_INDEX,
    M2P_SF_INDEX,
    M2P_CCMD_INDEX,       //common cmd
};

enum {
    P2M_LP_INDEX    = 0,
    P2M_PF_INDEX,
    P2M_WK_INDEX    = 1,
    P2M_WDT_INDEX,
    P2M_LP_INDEX2,
    P2M_REPLY_CCMD_INDEX,  //reply common cmd
    P2M_RTC_INDEX,
};

//===========================================================================//
//
//              	M2P_CMD和P2M_CMD(跟P11同步)
//
//===========================================================================//
enum {
    CLOSE_P33_INTERRUPT = 1,
    OPEN_P33_INTERRUPT,
    OPEN_RTC_INIT,
    OPEN_RTC_INTERRUPT,
    CLOSE_RTC_INTERRUPT,
};


void wdt_isr(void);

#define MSYS_TO_P11_COMMON_CMD(cmd) \
	local_irq_disable();	 \
	M2P_COMMON_CMD = cmd; \
	P11_M2P_INT_SET = BIT(M2P_CCMD_INDEX); \
	do {								  \
		asm("csync");                     \
	}									  \
	while( !((P11_P2M_INT_PND & BIT(P2M_REPLY_CCMD_INDEX)) && (P2M_REPLY_COMMON_CMD == cmd)) ); \
	P11_P2M_INT_CLR = BIT(P2M_REPLY_CCMD_INDEX); \
	local_irq_enable();

#endif


