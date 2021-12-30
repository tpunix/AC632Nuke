

  local_irq_enable = ABSOLUTE(0x106d98);
  local_irq_disable = ABSOLUTE(0x106d9c);
  lp_signature_set = ABSOLUTE(0x106da0);
  os_init = ABSOLUTE(0x106da4);
  os_start = ABSOLUTE(0x106da8);
  os_get_curr_tcb_var = ABSOLUTE(0x106dac);
  os_task_create = ABSOLUTE(0x106db0);
  os_current_task_rom = ABSOLUTE(0x106db4);
  os_time_dly = ABSOLUTE(0x106db8);
  os_time_get = ABSOLUTE(0x106dbc);
  os_task_del_req = ABSOLUTE(0x106dc0);
  os_task_del_res = ABSOLUTE(0x106dc4);
  os_task_del = ABSOLUTE(0x106dc8);
  __os_taskq_pend = ABSOLUTE(0x106dcc);
  os_taskq_pend = ABSOLUTE(0x106dd0);
  os_task_pend = ABSOLUTE(0x106dd4);
  __os_taskq_post = ABSOLUTE(0x106dd8);
  os_taskq_post = ABSOLUTE(0x106ddc);
  os_taskq_post_type = ABSOLUTE(0x106de0);
  os_taskq_flush = ABSOLUTE(0x106de4);
  task_queue_post_event = ABSOLUTE(0x106de8);
  os_taskq_post_msg = ABSOLUTE(0x106dec);
  os_taskq_post_event = ABSOLUTE(0x106df0);
  os_taskq_accept = ABSOLUTE(0x106df4);
  os_taskq_del = ABSOLUTE(0x106df8);
  os_taskq_del_type = ABSOLUTE(0x106dfc);
  os_sem_create = ABSOLUTE(0x106e00);
  os_sem_del = ABSOLUTE(0x106e04);
  os_sem_pend = ABSOLUTE(0x106e08);
  os_sem_post = ABSOLUTE(0x106e0c);
  os_sem_set = ABSOLUTE(0x106e10);
  os_sem_valid = ABSOLUTE(0x106e14);
  os_sem_query = ABSOLUTE(0x106e18);
  os_mutex_create = ABSOLUTE(0x106e1c);
  os_mutex_del = ABSOLUTE(0x106e20);
  os_mutex_pend = ABSOLUTE(0x106e24);
  os_mutex_post = ABSOLUTE(0x106e28);
  os_mutex_valid = ABSOLUTE(0x106e2c);
  xTaskCreate = ABSOLUTE(0x106e30);
  xTaskGetCurrentTaskHandle = ABSOLUTE(0x106e34);
  xTaskGetTickCount = ABSOLUTE(0x106e38);
  xTaskGetHandle = ABSOLUTE(0x106e3c);
  vTaskDelete = ABSOLUTE(0x106e40);
  xTaskGetApplicationTaskTag = ABSOLUTE(0x106e44);
  vTaskSetApplicationTaskTag = ABSOLUTE(0x106e48);
  xQueueGenericCreateStatic = ABSOLUTE(0x106e4c);
  xQueueGenericReset = ABSOLUTE(0x106e50);
  xQueueGenericSend = ABSOLUTE(0x106e54);
  xQueueGenericSendFromISR = ABSOLUTE(0x106e58);
  xQueueGenericReceive = ABSOLUTE(0x106e5c);
  xQueueReceiveFromISR = ABSOLUTE(0x106e60);
  vQueueDelete = ABSOLUTE(0x106e64);
  uxQueueMessagesWaiting = ABSOLUTE(0x106e68);
  uxQueueMessagesWaitingFromISR = ABSOLUTE(0x106e6c);
  uxQueueSpacesAvailable = ABSOLUTE(0x106e70);
  pcTaskGetName = ABSOLUTE(0x106e74);
  prvGetExpectedIdleTime = ABSOLUTE(0x106e78);
  eTaskConfirmSleepModeStatus = ABSOLUTE(0x106e7c);
  vTaskStepTick = ABSOLUTE(0x106e80);
  pxPortInitialiseStack = ABSOLUTE(0x106e84);
  xPortStartScheduler = ABSOLUTE(0x106e88);
  vPortEndScheduler = ABSOLUTE(0x106e8c);
  vPortYield = ABSOLUTE(0x106e90);
  vPortExitCritical = ABSOLUTE(0x106e94);
  OS_ClrPending = ABSOLUTE(0x106e98);
  vTickISR = ABSOLUTE(0x106e9c);
  pmalloc_init = ABSOLUTE(0x106ea0);
  pmalloc = ABSOLUTE(0x106ea4);
  pfree = ABSOLUTE(0x106ea8);
  pmalloc_get_unused_pages = ABSOLUTE(0x106eac);
  get_physic_address = ABSOLUTE(0x106eb0);
  pmm_get_var = ABSOLUTE(0x106eb4);
  vmm_init_ = ABSOLUTE(0x106eb8);
  vmalloc_ = ABSOLUTE(0x106ebc);
  vfree_ = ABSOLUTE(0x106ec0);
  vmem_get_phy_adr = ABSOLUTE(0x106ec4);
  vmem_start = ABSOLUTE(0x106ec8);
  vmem_end = ABSOLUTE(0x106ecc);
  vmm_get_var = ABSOLUTE(0x106ed0);
  vmalloc_v2 = ABSOLUTE(0x106ed4);
  vfree_v2 = ABSOLUTE(0x106ed8);
  vcopy_ = ABSOLUTE(0x106edc);
  memmem = ABSOLUTE(0x106ee0);
  memcpy = ABSOLUTE(0x106ee4);
  memmove = ABSOLUTE(0x106ee8);
  memcmp = ABSOLUTE(0x106eec);
  memset = ABSOLUTE(0x106ef0);
  strcmp = ABSOLUTE(0x106ef4);
  strcpy = ABSOLUTE(0x106ef8);
  strlen = ABSOLUTE(0x106efc);
  strncmp = ABSOLUTE(0x106f00);
  strstr = ABSOLUTE(0x106f04);
  strchr = ABSOLUTE(0x106f08);
  IcuInitial = ABSOLUTE(0x106f0c);
  DcuInitial = ABSOLUTE(0x106f10);
  IcuCmdKst = ABSOLUTE(0x106f14);
  DcuCmdKst = ABSOLUTE(0x106f18);
  IcuCmdSend = ABSOLUTE(0x106f1c);
  DcuCmdSend = ABSOLUTE(0x106f20);
  sfc_suspend = ABSOLUTE(0x106f24);
  sfc_resume = ABSOLUTE(0x106f28);
  sfc_drop_cache = ABSOLUTE(0x106f2c);
  chip_crc16 = ABSOLUTE(0x106f30);
  CrcDecode = ABSOLUTE(0x106f34);
  mask_init = ABSOLUTE(0x106f38);
  wdt_clr = ABSOLUTE(0x106f3c);
  nvram_set_boot_state = ABSOLUTE(0x106f40);
  chip_reset = ABSOLUTE(0x106f44);
  the_debug_isr = ABSOLUTE(0x106f48);
  doe = ABSOLUTE(0x106f4c);
  _pll_init = ABSOLUTE(0x106f50);
  flash_poweron = ABSOLUTE(0x106f54);
  spi_unmount = ABSOLUTE(0x106f58);
  spi_port_io_init = ABSOLUTE(0x106f5c);
  LZ4_setStreamDecode = ABSOLUTE(0x106f60);
  LZ4_decompress_safe_continue = ABSOLUTE(0x106f64);
  LZ4_decompress_safe_usingDict = ABSOLUTE(0x106f68);
  _sdk_mkey_lock = ABSOLUTE(0x106f6c);
  g_hash_function = ABSOLUTE(0x106f70);
  f1_hash_function = ABSOLUTE(0x106f74);
  f2_hash_function = ABSOLUTE(0x106f78);
  f3_hash_function = ABSOLUTE(0x106f7c);
  h2_hash_function = ABSOLUTE(0x106f80);
  h3_hash_function = ABSOLUTE(0x106f84);
  h4_hash_function = ABSOLUTE(0x106f88);
  h5_hash_function = ABSOLUTE(0x106f8c);
  g_function = ABSOLUTE(0x106f90);
  f1_function = ABSOLUTE(0x106f94);
  f2_function = ABSOLUTE(0x106f98);
  f3_function = ABSOLUTE(0x106f9c);
  sha256Compute = ABSOLUTE(0x106fa0);
  uECC_compute_public_key = ABSOLUTE(0x106fa4);
  uECC_valid_public_key = ABSOLUTE(0x106fa8);
  uECC_make_key = ABSOLUTE(0x106fac);
  uECC_shared_secret = ABSOLUTE(0x106fb0);
  bi_initialize = ABSOLUTE(0x106fb4);
  bi_read_from_byte = ABSOLUTE(0x106fb8);
  bi_poly_mod2 = ABSOLUTE(0x106fbc);
  bi_poly_mul = ABSOLUTE(0x106fc0);
  trim = ABSOLUTE(0x106fc4);
  bi_wirte_to_byte = ABSOLUTE(0x106fc8);
  bi_free = ABSOLUTE(0x106fcc);
  bi_terminate = ABSOLUTE(0x106fd0);
  uECC_vli_isZero = ABSOLUTE(0x106fd4);
  uECC_vli_modSquare_fast = ABSOLUTE(0x106fd8);
  uECC_vli_modMult_fast = ABSOLUTE(0x106fdc);
  uECC_vli_modAdd = ABSOLUTE(0x106fe0);
  uECC_vli_modSub = ABSOLUTE(0x106fe4);
  uECC_vli_testBit = ABSOLUTE(0x106fe8);
  uECC_vli_add = ABSOLUTE(0x106fec);
  uECC_vli_rshift1 = ABSOLUTE(0x106ff0);
  uECC_vli_set = ABSOLUTE(0x106ff4);
  uECC_vli_sub = ABSOLUTE(0x106ff8);
  uECC_vli_cmp_unsafe = ABSOLUTE(0x106ffc);
  boot_arg_list = ABSOLUTE(0xfc00);
  _IRQ_MEM_ADDR = ABSOLUTE(0xff00);
  _MASK_MEM_BEGIN = ABSOLUTE(0xfbe0);
  _MASK_MEM_SIZE = ABSOLUTE(0x294);

  HWI_Install = ABSOLUTE(0x10517a);


MEMORY
{
	text_ram    :   ORIGIN = ENTRY_ADDR,  LENGTH = 32K 
}

ENTRY(_start);

SECTIONS
{
    . = ORIGIN(text_ram);
    .text :
    {
        *(.start*)
        *(.text*)
        *(.data*)
        *(.rodata*)
        . = ALIGN(32);
    } > text_ram

    .bss ALIGN(32) (NOLOAD):
    {
        *(.stack*)
        *(.bss)
        *(.usb_ep0)
        *(.usb_config_var)
        . = ALIGN(32);
    } > text_ram

    .bss_noinit ALIGN(32) (NOLOAD):
    {
        *(.bss_noinit)
        . = ALIGN(32);
    } > text_ram


    bss_begin  = ADDR(.bss);
    bss_size   = SIZEOF(.bss);
}


