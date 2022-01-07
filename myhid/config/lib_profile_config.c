#include "system/includes.h"
#include "app_config.h"
#include "btcontroller_config.h"
#include "btstack/bt_profile_config.h"
#include "btstack/avctp_user.h"
#include "bt_common.h"

#define LOG_TAG     "[BT-CFG]"
#define LOG_ERROR_ENABLE
#define LOG_INFO_ENABLE
/* #define LOG_DUMP_ENABLE */
#include "debug.h"



const int config_stack_modules = BT_BTSTACK_CLASSIC;


#if (USER_SUPPORT_PROFILE_HID==1)
#else
extern const u8 sdp_pnp_service_data[];
SDP_RECORD_HANDLER_REGISTER(pnp_sdp_record_item) = {
    .service_record = (u8 *)sdp_pnp_service_data,
    .service_record_handle = 0x1000A,
};
#endif


u8 app_bredr_pool[1468] sec(.btstack_pool) ALIGNED(4);
u8 app_bredr_profile[1048] sec(.btstack_pool) ALIGNED(4);
u8 app_l2cap_pool[70] sec(.btstack_pool) ALIGNED(4);

u8 *get_bredr_pool_addr(void)
{
    u16 len = 0;

    if (STACK_MODULES_IS_SUPPORT(BT_BTSTACK_CLASSIC)) {
        len = get_bredr_pool_len();
        printf("bredr pool len %d\n", len);
        if (len > sizeof(app_bredr_pool)) {
            ASSERT(0, "bredr_pool is small\n");
        }
        return &app_bredr_pool;
    }
    return NULL;
}

u8 *get_le_pool_addr(void)
{
    return NULL;
}

u8 *get_l2cap_stack_addr(void)
{
    u16 len = 0;

    if (STACK_MODULES_IS_SUPPORT(BT_BTSTACK_CLASSIC) || STACK_MODULES_IS_SUPPORT(BT_BTSTACK_LE)) {
        len = get_l2cap_stack_len();
        printf("l2cap stack len %d\n", len);
        if (len > sizeof(app_l2cap_pool)) {
            ASSERT(0, "l2cap pool is small\n");
        }
        return &app_l2cap_pool;
    } else {
        return NULL;
    }
}

u8 *get_profile_pool_addr(void)
{
    u16 len = 0;

    if (STACK_MODULES_IS_SUPPORT(BT_BTSTACK_CLASSIC)) {

        len = get_profile_pool_len();
        printf("bredr profile pool len %d\n", len);
        if (len > sizeof(app_bredr_profile)) {
            ASSERT(0, "bredr_profile is small\n");
        }
        return &app_bredr_profile;
    }
    return NULL;
}

const u8 a2dp_mutual_support = 0;
const u8 more_addr_reconnect_support = 0;
const u8 more_hfp_cmd_support = 0;
const u8 more_avctp_cmd_support = 0;
const u8 hci_inquiry_support = 0;
const u8 btstack_emitter_support  = 0;  /*定义用于优化代码编译*/
const u8 adt_profile_support = 0;
const u8 pbg_support_enable = 0;

