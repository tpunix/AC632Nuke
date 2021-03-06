#ifndef APP_CONFIG_H
#define APP_CONFIG_H


/*************************************************************************************************/
/* 系统打印总开关 */

#ifdef CONFIG_RELEASE_ENABLE
#define LIB_DEBUG    0
#else
#define LIB_DEBUG    0
#endif
#define CONFIG_DEBUG_LIB(x)         (x & LIB_DEBUG)


#define CONFIG_DEBUG_ENABLE


/*************************************************************************************************/


#define SNIFF_MODE_RESET_ANCHOR             1  //1: 键盘鼠标sniff模式,固定小周期发包,多按键响应快
                                               //0: 待机固定500ms sniff周期,待机功耗较低,按键唤醒有延时


/*************************************************************************************************/


#include "board_config.h"


/*************************************************************************************************/


#define CONFIG_BT_RX_BUFF_SIZE  (5 * 512)
#define CONFIG_BT_TX_BUFF_SIZE  (5 * 512)


/*************************************************************************************************/


#endif

