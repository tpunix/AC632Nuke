
#include "app_config.h"
#include "system/includes.h"
#include "bt_common.h"


/*************************************************************************************************/
/* LOW POWER config */

const struct low_power_param power_param = {
	.config         = TCFG_LOWPOWER_LOWPOWER_SEL,          //0：sniff时芯片不进入低功耗  1：sniff时芯片进入powerdown
	.btosc_hz       = TCFG_CLOCK_OSC_HZ,                   //外接晶振频率
	.delay_us       = TCFG_CLOCK_SYS_HZ / 1000000L,        //提供给低功耗模块的延时(不需要需修改)
	.btosc_disable  = TCFG_LOWPOWER_BTOSC_DISABLE,         //进入低功耗时BTOSC是否保持
	.vddiom_lev     = TCFG_LOWPOWER_VDDIOM_LEVEL,          //强VDDIO等级,可选：2.0V  2.2V  2.4V  2.6V  2.8V  3.0V  3.2V  3.6V
	.vddiow_lev     = TCFG_LOWPOWER_VDDIOW_LEVEL,          //弱VDDIO等级,可选：2.1V  2.4V  2.8V  3.2V
	.osc_type       = TCFG_LOWPOWER_OSC_TYPE,
	.lpctmu_en 		= -1,
	.vd13_cap_en    = TCFG_VD13_CAP_EN,
};


const struct wakeup_param wk_param;


/*************************************************************************************************/
/* UART config */

UART0_PLATFORM_DATA_BEGIN(uart0_data)
    .tx_pin = IO_PORT_DP,                     //串口打印TX引脚选择
    .rx_pin = -1,                             //串口打印RX引脚选择
    .baudrate = 115200,                       //串口波特率
    .flags = UART_DEBUG,                      //串口用来打印需要把改参数设置为UART_DEBUG
UART0_PLATFORM_DATA_END()

void debug_uart_init(const struct uart_platform_data *data)
{
	if (data) {
		uart_init(data);
	} else {
		uart_init(&uart0_data);
	}
}


/*************************************************************************************************/
/* power callback */

static void aport_wakeup_callback(u8 index, u8 gpio, u8 edge)
{
	printf("\naport_wakeup_callback! index=%d gpio=%d edge=%d\n", index, gpio, edge);
}


static void port_wakeup_callback(u8 index, u8 gpio)
{
	printf("\nport_wakeup_callback! index=%d gpio=%d\n", index, gpio);
}


static void sleep_enter_callback(u8 step)
{
	printf("\nsleep_enter_callback! step=%d\n", step);
}


static void sleep_exit_callback(u32 usec)
{
	printf("\nsleep_exit_callback! usec=%d\n", usec);
}


static void board_set_soft_poweroff(void)
{
	printf("\nboard_set_soft_poweroff!\n");
}


/*************************************************************************************************/


static void keyio_pd(int kio)
{
	gpio_direction_input(kio);
	gpio_set_pull_down(kio, 0);
	gpio_set_pull_up(kio, 1);
	gpio_set_die(kio, 1);
}


static void board_devices_init(void)
{
	keyio_pd(IO_PORTA_07);
	keyio_pd(IO_PORTA_08);
	keyio_pd(IO_PORTA_09);
}


/*************************************************************************************************/


void board_init(void)
{

	printf("\nboard_init!\n");

	power_init(&power_param);
	power_set_callback(TCFG_LOWPOWER_LOWPOWER_SEL, sleep_enter_callback, sleep_exit_callback, board_set_soft_poweroff);
	power_keep_dacvdd_en(0);
	power_wakeup_init(&wk_param);
	aport_edge_wkup_set_callback(aport_wakeup_callback);
	port_edge_wkup_set_callback(port_wakeup_callback);

	printf("-- adc_vbg_init --\n");
	adc_vbg_init();
	printf("-- adc_init --\n");
	adc_init();

	cfg_file_parse(0);

	printf("-- devices_init --\n");
	devices_init();

	printf("-- power_set_mode --\n");
	power_set_mode(TCFG_LOWPOWER_POWER_SEL);

	board_devices_init();

	printf("\nboard_init done.\n");
}

