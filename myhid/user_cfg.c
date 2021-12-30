#include "system/includes.h"
#include "app_config.h"


//======================================================================================//
//                                 		BTIF配置项表                               		//
//	参数1: 配置项名字                                			   						//
//	参数2: 配置项需要多少个byte存储														//
//	说明: 配置项ID注册到该表后该配置项将读写于BTIF区域, 其它没有注册到该表       		//
//		  的配置项则默认读写于VM区域.													//
//======================================================================================//
const struct btif_item btif_table[] = {
// 	 	item id 		   	   len   	//
    {CFG_BT_MAC_ADDR, 			6 },
    {CFG_BT_FRE_OFFSET,   		6 },   //测试盒矫正频偏值
    //{CFG_DAC_DTB,   			2 },
    //{CFG_MC_BIAS,   			1 },
    {0, 						0 },   //reserved cfg
};

//============================= VM 区域空间最大值 ======================================//
const int vm_max_size_config = VM_MAX_SIZE_CONFIG; //该宏在app_cfg中配置
//======================================================================================//

static u8 bt_mac_addr[] = {0x56, 0x44, 0x33, 0x22, 0x11, 0x00};
static char bt_edr_name[] = "JL_HID_DEBUG";

u8 *bt_get_mac_addr()
{
	printf("bt_get_mac_addr\n");
	return bt_mac_addr;
}

char *bt_get_local_name()
{
	printf("bt_get_local_name\n");
	return bt_edr_name;
}

char *bt_get_pin_code()
{
	printf("bt_get_pin_code\n");
    return "0000";
}

