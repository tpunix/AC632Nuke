/*********************************************************************************************
    *   Filename        : app_main.c

    *   Description     :

    *   Author          : Bingquan

    *   Email           : caibingquan@zh-jieli.com

    *   Last modifiled  : 2019-05-11 14:54

    *   Copyright:(c)JIELI  2011-2019  @ , All Rights Reserved.
*********************************************************************************************/
#include "system/includes.h"


/*任务列表 */
const struct task_info task_info_table[] = {
	{"app_core",            1,     640,   128  },
	{"sys_event",           7,     256,   0    },
	{"btctrler",            4,     512,   256  },
	{"btencry",             1,     512,   128  },
	{"btstack",             3,     768,   256  },
	{"systimer",		    7,	   128,   0    },
	{0, 0},
};



__attribute__((weak)) u8 get_charge_online_flag(void)
{
    return 0;
}

void app_main()
{
	struct intent it;

	printf(">>>>>>>>>>>>>>>>>app_main...\n");
	init_intent(&it);

	it.name = "my_hid";
	it.action = 9;
	printf("run app>>> %s", it.name);
	start_app(&it);
}

int eSystemConfirmStopStatus(void)
{
	/* 系统进入在未来时间里，无任务超时唤醒，可根据用户选择系统停止，或者系统定时唤醒(100ms) */
	//1:Endless Sleep
	//0:100 ms wakeup
	/* log_info("100ms wakeup"); */
	return 1;
}


#if 0
static int err;

__attribute__((used)) int *__errno()
{
    return &err;
}
#endif

