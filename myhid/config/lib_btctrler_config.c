/*********************************************************************************************
    *   Filename        : btctrler_config.c

    *   Description     : Optimized Code & RAM (编译优化配置)

    *   Author          : Bingquan

    *   Email           : caibingquan@zh-jieli.com

    *   Last modifiled  : 2019-03-18 14:39

    *   Copyright:(c)JIELI  2011-2019  @ , All Rights Reserved.
*********************************************************************************************/
#include "app_config.h"
#include "system/includes.h"
#include "btcontroller_config.h"

/**
 * @brief Bluetooth Module
 */
#if (TCFG_USER_BLE_ENABLE)

#if (TCFG_USER_EDR_ENABLE)
const int config_btctler_modules        = BT_MODULE_CLASSIC | BT_MODULE_LE;
#else
const int config_btctler_modules        = BT_MODULE_LE;
#endif

#else
#if (TCFG_USER_EDR_ENABLE)
const int config_btctler_modules        = BT_MODULE_CLASSIC;
#else
const int config_btctler_modules        = 0;
#endif
#endif

#ifdef CONFIG_NEW_BREDR_ENABLE
const int CONFIG_TWS_RUN_SLOT                   = 200;
const int CONFIG_PHONE_RUN_SLOT                 = 120;
const int CONFIG_TWS_LOW_LATENCY_RUN_SLOT       = 16;
const int CONFIG_PHONE_LOW_LATENCY_RUN_SLOT     = 150;
#endif

const int config_btctler_le_tws         = 0;
const int CONFIG_BTCTLER_TWS_ENABLE     = 0;
const int CONFIG_TWS_AFH_ENABLE         = 0;
const int CONFIG_LOW_LATENCY_ENABLE     = 1;
const int CONFIG_BTCTLER_FAST_CONNECT_ENABLE     = 0;

#if (CONFIG_BT_MODE != BT_NORMAL)
const int config_btctler_hci_standard   = 1;
#else
const int config_btctler_hci_standard   = 0;
#endif

const int config_btctler_mode        = CONFIG_BT_MODE;

const int CONFIG_TWS_POWER_BALANCE_ENABLE   = 0;

//固定使用正常发射功率的等级:0-使用不同模式的各自等级;1~10-固定发射功率等级
const int config_force_bt_pwr_tab_using_normal_level  = 0;
const int CONFIG_BLE_SYNC_WORD_BIT = 30;
const int CONFIG_LNA_CHECK_VAL = -60;
const int CONFIG_DUT_POWER                  = 10;

const int CONFIG_TWS_SUPER_TIMEOUT          = 2000;
const int CONFIG_BTCTLER_QOS_ENABLE         = 1;
const int CONFIG_A2DP_DATA_CACHE_LOW        = 120;
const int CONFIG_A2DP_DATA_CACHE_HI         = 160;
const int CONFIG_A2DP_DATA_CACHE_LOW_AAC    = 100;
const int CONFIG_A2DP_DATA_CACHE_HI_AAC     = 150;
const int CONFIG_A2DP_DATA_CACHE_LOW_SBC    = 120;
const int CONFIG_A2DP_DATA_CACHE_HI_SBC     = 160;
const int CONFIG_A2DP_DELAY_TIME            = 200;
const int CONFIG_A2DP_DELAY_TIME_LO         = 100;
const int CONFIG_A2DP_SBC_DELAY_TIME_LO     = 80;

const int CONFIG_PAGE_POWER                 = 4;
const int CONFIG_PAGE_SCAN_POWER            = 7;
const int CONFIG_INQUIRY_POWER              = 7;
const int CONFIG_INQUIRY_SCAN_POWER         = 7;


/*-----------------------------------------------------------*/

/**
 * @brief Bluetooth Classic setting
 */
const u8 rx_fre_offset_adjust_enable = 1;

const int config_bredr_fcc_fix_fre = 0;
const int ble_disable_wait_enable = 1;                      //不开启wait_enable会导致升级调用ll_destory的时候出现BT访问mmu异常

const int config_btctler_eir_version_info_len = 0;

const int CONFIG_TEST_DUT_CODE            = 1;
const int CONFIG_TEST_FCC_CODE            = 1;
const int CONFIG_TEST_DUT_ONLY_BOX_CODE   = 0;

const int CONFIG_BREDR_INQUIRY   =  0;
const int CONFIG_INQUIRY_PAGE_OFFSET_ADJUST =  0;


const int CONFIG_ESCO_MUX_RX_BULK_ENABLE  =  0;
const int CONFIG_LMP_NAME_REQ_ENABLE  =  1;
const int CONFIG_LMP_PASSKEY_ENABLE  =  1;
const int CONFIG_LMP_MASTER_ESCO_ENABLE  =  1;
const int CONFIG_WIFI_DETECT_ENABLE = 0;

const int config_bt_function  =  0;

///bredr 强制 做 maseter
const int config_btctler_bredr_master = 0;
const int config_btctler_dual_a2dp  = 0;

///afh maseter 使用app设置的map 通过USER_CTRL_AFH_CHANNEL 设置
const int config_bredr_afh_user = 0;

//bt PLL 温度跟随trim
const int config_bt_temperature_pll_trim = 0;

#if CONFIG_APP_STANDARD_KEYBOARD
const int config_delete_link_key          = 0;           //配置是否连接失败返回PIN or Link Key Missing时删除linkKey
#else
const int config_delete_link_key          = 1;
#endif
/*-----------------------------------------------------------*/
/**
 * @brief Bluetooth LE setting
 */
#if TCFG_USER_BLE_ENABLE

#if CONFIG_APP_REMOTE_24G_S
#define SET_SELECT_PHY_CFG   LE_2M_PHY|LE_CODED_PHY
#else
#define SET_SELECT_PHY_CFG   0
#endif

#if CONFIG_BT_SM_SUPPORT_ENABLE
#define SET_ENCRYPTION_CFG   LE_ENCRYPTION
#else
#define SET_ENCRYPTION_CFG   0
#endif

#if CONFIG_BT_GATT_SERVER_NUM
#define SET_SLAVE_ROLS_CFG   (LE_ADV | LE_SLAVE)
#else
#define SET_SLAVE_ROLS_CFG   0
#endif

#if CONFIG_BT_GATT_CLIENT_NUM
#define SET_MASTER_ROLS_CFG   (LE_SCAN | LE_INIT | LE_MASTER)
const int config_btctler_le_afh_en = 1;
const int config_btctler_le_master_multilink = (CONFIG_BT_GATT_CLIENT_NUM > 1);
#else
#define SET_MASTER_ROLS_CFG   0
const int config_btctler_le_afh_en = 0;
const int config_btctler_le_master_multilink = 0;
#endif

const uint64_t config_btctler_le_features = SET_ENCRYPTION_CFG | SET_SELECT_PHY_CFG;
const int config_btctler_le_roles    = SET_SLAVE_ROLS_CFG | SET_MASTER_ROLS_CFG;
const int config_btctler_le_hw_nums = CONFIG_BT_GATT_CONNECTION_NUM;
const int config_btctler_le_rx_nums = (CONFIG_BT_GATT_CONNECTION_NUM * 3) + 2;
const int config_btctler_le_acl_packet_length = 27;
const int config_btctler_le_acl_total_nums = (CONFIG_BT_GATT_CONNECTION_NUM * 3);

#else
//no support ble
const uint64_t config_btctler_le_features = 0;
const int config_btctler_le_roles    = 0;
const int config_btctler_le_hw_nums = 0;
const int config_btctler_le_rx_nums = 0;
const int config_btctler_le_acl_packet_length = 0;
const int config_btctler_le_acl_total_nums = 0;
const int config_btctler_le_master_multilink = 0;
#endif

// LE
const int config_btctler_le_slave_conn_update_winden = 500;//range:100 to 2500

// LE vendor baseband
const u32 config_vendor_le_bb = 0;

/*-----------------------------------------------------------*/
/**
 * @brief Bluetooth Analog setting
 */
/*-----------------------------------------------------------*/
#if TCFG_USER_BLE_ENABLE
const int config_btctler_single_carrier_en = 1;   ////单模ble才设置
#else
const int config_btctler_single_carrier_en = 0;
#endif

#if SNIFF_MODE_RESET_ANCHOR
const int sniff_support_reset_anchor_point = 1;   //sniff状态下是否支持reset到最近一次通信点，用于HID
#else
const int sniff_support_reset_anchor_point = 0;   //sniff状态下是否支持reset到最近一次通信点，用于HID
#endif
const int sniff_long_interval = (500 / 0.625);    //sniff状态下进入long interval的通信间隔(ms)

/**
 * @brief Log (Verbose/Info/Debug/Warn/Error)
 */
/*-----------------------------------------------------------*/
//RF part
const char log_tag_const_v_Analog AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_Analog AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_Analog AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_Analog AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_e_Analog AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);

const char log_tag_const_v_RF AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_RF AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_RF AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_RF AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_e_RF AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);

//Classic part
const char log_tag_const_v_HCI_LMP AT(.LOG_TAG_CONST)  = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_HCI_LMP AT(.LOG_TAG_CONST)  = CONFIG_DEBUG_LIB(1);
const char log_tag_const_d_HCI_LMP AT(.LOG_TAG_CONST)  = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_HCI_LMP AT(.LOG_TAG_CONST)  = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_HCI_LMP AT(.LOG_TAG_CONST)  = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_i_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_d_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

//LE part
const char log_tag_const_v_LE_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LE_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LE_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_LE_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LE_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LE5_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LE5_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LE5_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LE5_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LE5_BB AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_HCI_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_HCI_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_HCI_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_HCI_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_HCI_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_E AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_E AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_E AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_E AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_E AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_M AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_M AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_M AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_M AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_M AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_EXT_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_EXT_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_EXT_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_EXT_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_EXT_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_EXT_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_EXT_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_EXT_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_EXT_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_EXT_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_EXT_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_EXT_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_EXT_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_EXT_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_EXT_INIT AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_TWS_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_TWS_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_TWS_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_TWS_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_TWS_ADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_TWS_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_TWS_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_TWS_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_TWS_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_TWS_SCAN AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_S AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_S AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_d_LL_S AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_S AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_S AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_RL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_RL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_d_LL_RL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_RL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_RL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_WL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_WL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_d_LL_WL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_WL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_WL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_AES AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_AES AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_AES AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_AES AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_AES AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_PADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_PADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_PADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_PADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_PADV AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_DX AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_DX AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_DX AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_DX AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_DX AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_PHY AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_PHY AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_LL_PHY AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_LL_PHY AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_PHY AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_LL_AFH AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_LL_AFH AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_d_LL_AFH AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_LL_AFH AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_LL_AFH AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

//HCI part
const char log_tag_const_v_Thread AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_Thread AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_Thread AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_Thread AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_Thread AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_HCI_STD AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_HCI_STD AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_HCI_STD AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_HCI_STD AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_HCI_STD AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_HCI_LL5 AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_HCI_LL5 AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_HCI_LL5 AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_w_HCI_LL5 AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_HCI_LL5 AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_BL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_BL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_BL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_BL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_e_BL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);
const char log_tag_const_c_BL AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(1);

const char log_tag_const_v_TWS_LE AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_TWS_LE AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_TWS_LE AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_TWS_LE AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_e_TWS_LE AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_c_TWS_LE AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);


const char log_tag_const_v_TWS_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_TWS_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_TWS_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_TWS_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_e_TWS_LMP AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);

const char log_tag_const_v_TWS AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_TWS AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_TWS AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_TWS AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_e_TWS AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);

const char log_tag_const_v_TWS_ESCO AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_i_TWS_ESCO AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_d_TWS_ESCO AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_w_TWS_ESCO AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);
const char log_tag_const_e_TWS_ESCO AT(.LOG_TAG_CONST) = CONFIG_DEBUG_LIB(0);


