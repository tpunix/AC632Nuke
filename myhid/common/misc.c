#include "system/includes.h"
#include "server/server_core.h"


u16 update_result_get(void)
{
    return 0;
}

#if 0

u32 adc_get_voltage(u32 ch)
{
	printf("adc_get_voltage %d\n", ch);
	return 0;
}

u32 adc_sample(u32 ch)
{
	printf("adc_sample %d\n", ch);
	return 0;
}


void update_mode_api(u8 type, ...)
{

}

void update_loader_download_init(void)
{

}

void (*lmp_ch_update_resume_hdl)(void *priv) = NULL;

u8 update_id_info_fill_content(u8 *p, u16 allow_len)
{
    return 0;
}

void bt_lmp_update_loader_download_init(void)
{
}
#endif
