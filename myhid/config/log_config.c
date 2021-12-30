/*********************************************************************************************
    *   Filename        : log_config.c

    *   Description     : Optimized Code & RAM (编译优化Log配置)

    *   Author          : Bingquan

    *   Email           : caibingquan@zh-jieli.com

    *   Last modifiled  : 2019-03-18 14:45

    *   Copyright:(c)JIELI  2011-2019  @ , All Rights Reserved.
*********************************************************************************************/
#include "system/includes.h"

/**
 * @brief Bluetooth Controller Log
 */
/*-----------------------------------------------------------*/
const char log_tag_const_v_SETUP AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_SETUP AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_SETUP AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_SETUP AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_SETUP AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_BOARD AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_BOARD AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_BOARD AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_BOARD AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_BOARD AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_UI AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_UI AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_d_UI AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_w_UI AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_UI AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_KEY_EVENT_DEAL AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_KEY_EVENT_DEAL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_KEY_EVENT_DEAL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_KEY_EVENT_DEAL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_KEY_EVENT_DEAL AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_APP_IDLE AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_APP_IDLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_APP_IDLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_APP_IDLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_APP_IDLE AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_APP AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_APP AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_APP AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_APP AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_APP AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_AT_CMD AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_AT_CMD AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_AT_CMD AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_AT_CMD AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_AT_CMD AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_USER_CFG AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_USER_CFG AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_USER_CFG AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_USER_CFG AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_USER_CFG AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_SPP_AND_LE AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_SPP_AND_LE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_SPP_AND_LE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_SPP_AND_LE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_SPP_AND_LE AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_AT_COM AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_AT_COM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_AT_COM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_AT_COM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_AT_COM AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_AT_CHAR_COM AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_AT_CHAR_COM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_AT_CHAR_COM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_AT_CHAR_COM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_AT_CHAR_COM AT(.LOG_TAG_CONST) = 1;


const char log_tag_const_v_LE_CTL AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_LE_CTL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_LE_CTL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_LE_CTL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_LE_CTL AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_USBSTACK AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_USBSTACK AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_d_USBSTACK AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_USBSTACK AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_USBSTACK AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_HID_KEY AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_HID_KEY AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_HID_KEY AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_HID_KEY AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_HID_KEY AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_APP_CHARGE AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_APP_CHARGE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_APP_CHARGE AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_w_APP_CHARGE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_APP_CHARGE AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_DONGLE AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_DONGLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_DONGLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_DONGLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_DONGLE AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_APP_POWER AT(.LOG_TAG_CONST) = FALSE;
const char log_tag_const_i_APP_POWER AT(.LOG_TAG_CONST) = TRUE;
const char log_tag_const_d_APP_POWER AT(.LOG_TAG_CONST) = FALSE;
const char log_tag_const_w_APP_POWER AT(.LOG_TAG_CONST) = TRUE;
const char log_tag_const_e_APP_POWER AT(.LOG_TAG_CONST) = TRUE;

const char log_tag_const_v_APP_TONE AT(.LOG_TAG_CONST) = FALSE;
const char log_tag_const_i_APP_TONE AT(.LOG_TAG_CONST) = TRUE;
const char log_tag_const_d_APP_TONE AT(.LOG_TAG_CONST) = FALSE;
const char log_tag_const_w_APP_TONE AT(.LOG_TAG_CONST) = TRUE;
const char log_tag_const_e_APP_TONE AT(.LOG_TAG_CONST) = TRUE;

const char log_tag_const_v_MULTI_CONN AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_MULTI_CONN AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_MULTI_CONN AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_MULTI_CONN AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_MULTI_CONN AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_COMM_EDR AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_COMM_EDR AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_COMM_EDR AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_COMM_EDR AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_COMM_EDR AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_COMM_BLE AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_COMM_BLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_COMM_BLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_COMM_BLE AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_COMM_BLE AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_NCON_24G AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_NCON_24G AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_NCON_24G AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_NCON_24G AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_NCON_24G AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_LLSYNC AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_LLSYNC AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_LLSYNC AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_LLSYNC AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_LLSYNC AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_CENTRAL AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_CENTRAL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_CENTRAL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_CENTRAL AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_CENTRAL AT(.LOG_TAG_CONST) = 1;


const char log_tag_const_v_BEACON AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_BEACON AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_BEACON AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_BEACON AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_BEACON AT(.LOG_TAG_CONST) = 1;


const char log_tag_const_v_GATT_COMM AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_GATT_COMM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_GATT_COMM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_GATT_COMM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_GATT_COMM AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_GATT_SERVER AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_GATT_SERVER AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_GATT_SERVER AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_GATT_SERVER AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_GATT_SERVER AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_GATT_CLIENT AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_GATT_CLIENT AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_GATT_CLIENT AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_GATT_CLIENT AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_GATT_CLIENT AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_SPP_TRANS AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_SPP_TRANS AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_SPP_TRANS AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_SPP_TRANS AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_SPP_TRANS AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_EDR_EM AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_EDR_EM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_EDR_EM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_EDR_EM AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_EDR_EM AT(.LOG_TAG_CONST) = 1;

const char log_tag_const_v_REMOTE_C AT(.LOG_TAG_CONST) = 0;
const char log_tag_const_i_REMOTE_C AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_d_REMOTE_C AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_w_REMOTE_C AT(.LOG_TAG_CONST) = 1;
const char log_tag_const_e_REMOTE_C AT(.LOG_TAG_CONST) = 1;

/* const char log_tag_const_v_ AT(.LOG_TAG_CONST) = 0; */
/* const char log_tag_const_i_ AT(.LOG_TAG_CONST) = 1; */
/* const char log_tag_const_d_ AT(.LOG_TAG_CONST) = 1; */
/* const char log_tag_const_w_ AT(.LOG_TAG_CONST) = 1; */
/* const char log_tag_const_e_ AT(.LOG_TAG_CONST) = 1; */





