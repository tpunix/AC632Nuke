#ifndef BOARD_CONFIG_H
#define BOARD_CONFIG_H


//*********************************************************************************//
//                                  Global配置                                     //
//*********************************************************************************//


#define CONFIG_CHIP_NAME                        AC632N              //除了SDK发布者,请不要修改
#define CONFIG_PID                              AC632N              //烧写或强制升级之前可以修改,之后升级要保持一致
#define CONFIG_VID                              0.01				//烧写或强制升级之前可以修改,之后升级要保持一致


#define CONFIG_RESET_PIN                        PB01 //io pin
#define CONFIG_RESET_TIME                       00   //unit:second
#define CONFIG_RESET_LEVEL                      0	 //tigger level(0/1)



//flash size vaule definition
#define FLASH_SIZE_256K							0x40000
#define FLASH_SIZE_512K							0x80000
#define FLASH_SIZE_1M							0x100000
#define FLASH_SIZE_2M							0x200000
#define FLASH_SIZE_4M							0x400000

#define CONFIG_FLASH_SIZE                       FLASH_SIZE_1M    //配置FLASH大小



#define TCFG_USER_EDR_ENABLE                1

#define USER_SUPPORT_PROFILE_HID    1
#define USER_SUPPORT_PROFILE_PNP    1

#define TCFG_BD_NUM                 1


//*********************************************************************************//
//                                  时钟配置                                       //
//*********************************************************************************//
#define TCFG_CLOCK_SYS_SRC					SYS_CLOCK_INPUT_PLL_BT_OSC   //系统时钟源选择
#define TCFG_CLOCK_SYS_HZ					24000000                     //系统时钟设置
#define TCFG_CLOCK_OSC_HZ					24000000                     //外界晶振频率设置
/* #define TCFG_CLOCK_MODE                     CLOCK_MODE_USR//CLOCK_MODE_ADAPTIVE */
#define TCFG_CLOCK_MODE                     CLOCK_MODE_ADAPTIVE


#define BT_NORMAL_HZ	                    (48 * 1000000L)


//*********************************************************************************//
//                                  低功耗配置                                     //
//*********************************************************************************//
#define TCFG_LOWPOWER_POWER_SEL				PWR_LDO15//
#define TCFG_LOWPOWER_BTOSC_DISABLE			0                            //低功耗模式下BTOSC是否保持
#define TCFG_LOWPOWER_LOWPOWER_SEL			SLEEP_EN                     //SNIFF状态下芯片是否进入powerdown
/*强VDDIO等级配置,可选：
    VDDIOM_VOL_20V    VDDIOM_VOL_22V    VDDIOM_VOL_24V    VDDIOM_VOL_26V
    VDDIOM_VOL_30V    VDDIOM_VOL_30V    VDDIOM_VOL_32V    VDDIOM_VOL_36V*/
#define TCFG_LOWPOWER_VDDIOM_LEVEL			VDDIOM_VOL_30V
/*弱VDDIO等级配置，可选：
    VDDIOW_VOL_21V    VDDIOW_VOL_24V    VDDIOW_VOL_28V    VDDIOW_VOL_32V*/
#define TCFG_LOWPOWER_VDDIOW_LEVEL			VDDIOW_VOL_28V               //弱VDDIO等级配置
#define TCFG_LOWPOWER_OSC_TYPE              OSC_TYPE_LRC
#define TCFG_VD13_CAP_EN					1

#endif

