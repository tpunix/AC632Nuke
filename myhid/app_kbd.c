/*********************************************************************************************
    *   Filename        : app_keyboard.c

    *   Description     :

    *   Author          :

    *   Email           :

    *   Last modifiled  : 2019-07-05 10:09

    *   Copyright:(c)JIELI  2011-2019  @ , All Rights Reserved.
*********************************************************************************************/
#include "system/app_core.h"
#include "system/includes.h"
#include "server/server_core.h"
#include "os/os_api.h"
#include "app_config.h"

#include "btstack/avctp_user.h"

#include "bt_common.h"

/*************************************************************************************************/


typedef struct {
	char *name;
	u32 ioreg;
	u8 shift;
	u8 state;
	u8 value;
	u8 pos;
}IOKEY;


static IOKEY iokeys[] = {
	{"MUTE", (u32)&JL_PORTA->IN, 7, 0, 0, 3, },
	{"VOL-", (u32)&JL_PORTA->IN, 8, 0, 0, 1, },
	{"VOL+", (u32)&JL_PORTA->IN, 9, 0, 0, 0, },
};


static int iokeys_num = sizeof(iokeys)/sizeof(IOKEY);

static int hidkey = 0, old_hidkey = 0;


static void hidkey_set(int pos, int val)
{
	int mask = 1<<pos;

	if(val){
		hidkey |= mask;
	}else{
		hidkey &= ~mask;
	}
}


static void key_timer_handle(void)
{
	IOKEY *key;
	int i, val;

	for(i=0; i<iokeys_num; i++){
		key = &iokeys[i];
		val = *(u32*)(key->ioreg);
		val = (val>>key->shift)&1;

		if(key->state==0){
			if(val==0){
				key->state = 1;
			}
		}else if(key->state<3){
			if(val==0){
				key->state += 1;
			}else{
				key->state = 0;
			}
		}else if(key->state==3){
			if(val==0){
				printf("\n%s Down!\n", key->name);
				key->value = 1;
				key->state = 4;
				hidkey_set(key->pos, 1);
			}else{
				key->state = 0;
			}
		}else if(key->state==4){
			if(val==1){
				printf("\n%s Up!\n", key->name);
				key->value = 0;
				key->state = 0;
				hidkey_set(key->pos, 0);
			}
		}

	}

	if(old_hidkey != hidkey){
		// Send
		hid_ibuf[0] = 1;
		hid_ibuf[1] = hidkey&0xff;
		hid_ibuf[2] = (hidkey>>8)&0xff;
		user_hidd_send_input(hid_ibuf, 3);
		old_hidkey = hidkey;
	}
}


/*************************************************************************************************/

static u8 kbd_report_map[] = {
    0x05, 0x0C,        // Usage Page (Consumer)
    0x09, 0x01,        // Usage (Consumer Control)
    0xA1, 0x01,        // Collection (Application)
    0x85, 0x01,        //   Report ID (1)
    0x09, 0xE9,        //   Usage (Volume Increment)
    0x09, 0xEA,        //   Usage (Volume Decrement)
    0x09, 0xCD,        //   Usage (Play/Pause)
    0x09, 0xE2,        //   Usage (Mute)
    0x09, 0xB6,        //   Usage (Scan Previous Track)
    0x09, 0xB5,        //   Usage (Scan Next Track)
    0x09, 0xB3,        //   Usage (Fast Forward)
    0x09, 0xB4,        //   Usage (Rewind)
    0x15, 0x00,        //   Logical Minimum (0)
    0x25, 0x01,        //   Logical Maximum (1)
    0x75, 0x01,        //   Report Size (1)
    0x95, 0x10,        //   Report Count (16)
    0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
    0xC0,              // End Collection
    // 35 bytes
};

static const hid_cfg_t kbd_hid_config = {
	.class_type = BD_CLASS_KEYBOARD,
	.report_map = kbd_report_map,
	.report_size = sizeof(kbd_report_map),
};



static const edr_init_cfg_t kbd_edr_config = {
	.page_timeout = 80000,
	.super_timeout = 80000,
	.io_capabilities = 3,
	.authentication_req = 2,
	.oob_data = 0,
	.profile_data = &kbd_hid_config,
};


/*************************************************************************************************/


extern void bt_pll_para(u32 osc, u32 sys, u8 low_power, u8 xosc);

// app 入口
static void kbd_app_start()
{
	printf("=======================================\n");
	printf("-------------HID DEMO-----------------\n");
	printf("=======================================\n");
	printf("app_file: %s\n", __FILE__);
	printf("  task: %s\n", os_current_task());

	clk_set("sys", BT_NORMAL_HZ);

	u32 sys_clk =  clk_get("sys");
	bt_pll_para(TCFG_CLOCK_OSC_HZ, sys_clk, 0, 0);

	bt_edr_start(&kbd_edr_config, 0);

	sys_timer_add(NULL, key_timer_handle, 10);
}


/*************************************************************************************************/



/*************************************************************************************************/

static int kbd_common_event_handler(struct bt_event *bt)
{
    printf("----%s reason %x %x", __FUNCTION__, bt->event, bt->value);
    return 0;
}

// app 线程事件处理
static int kbd_event_handler(struct application *app, struct sys_event *event)
{
	printf("\nkbd_event: %08x  arg=%08x\n", event->type, event->arg);

	switch (event->type) {
	case SYS_BT_EVENT:
		if ((u32)event->arg == SYS_BT_EVENT_TYPE_CON_STATUS) {
			if(event->u.bt.event == BT_STATUS_INIT_OK){
				printf("BT_STATUS_INIT_OK\n");
				bt_edr_start_post();

			}else{
				bt_comm_edr_status_event_handler(&event->u.bt);
			}
		} else if ((u32)event->arg == SYS_BT_EVENT_TYPE_HCI_STATUS) {
			bt_comm_edr_hci_event_handler(&event->u.bt);
		} else if ((u32)event->arg == SYS_BT_EVENT_FORM_COMMON) {
			return kbd_common_event_handler(&event->u.dev);
		}
		return 0;
	case SYS_DEVICE_EVENT:
		return 0;
	default:
		return 0;
	}

	return 0;
}


// app  状态处理
static int kbd_state_machine(struct application *app, enum app_state state, struct intent *it)
{
	printf("\nkbd_state: %08x");
	if(it){
		printf("  action: %d", it->action);
	}
	printf("\n");

	switch (state) {
	case APP_STA_CREATE:
		break;
	case APP_STA_START:
		if (!it) {
			break;
		}
		if(it->action == 9) {
			kbd_app_start();
		}
		break;
	case APP_STA_PAUSE:
		break;
	case APP_STA_RESUME:
		break;
	case APP_STA_STOP:
		break;
	case APP_STA_DESTROY:
		printf("APP_STA_DESTROY\n");
		break;
	}

	return 0;
}


/*************************************************************************************************/
// 是否进入sleep

static u8 kbd_idle_query(void)
{
	return 0;
}


REGISTER_LP_TARGET(app_kbd_lp_target) = {
	.name = "app_kbd_deal",
	.is_idle = kbd_idle_query,
};


/*************************************************************************************************/
// 注册app

static const struct application_operation app_kbd_ops = {
	.state_machine  = kbd_state_machine,
	.event_handler 	= kbd_event_handler,
};

REGISTER_APPLICATION(app_kbd) = {
	.name 	= "my_hid",
	.action	= 9,
	.ops 	= &app_kbd_ops,
	.state  = APP_STA_DESTROY,
};


