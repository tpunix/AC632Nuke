; ModuleID = 'btstack_task.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.hci_transport_config_uart_t = type { i32, i32, i32, i32, i8* }
%struct.lp_target = type { i8*, i32 ()*, i8 ()* }
%struct.hci_transport_t = type { i8*, void (i8*)*, i32 ()*, i32 ()*, void (void (i32, i8*, i32)*)*, i32 (i8)*, i32 (i32, i8*, i32)*, i32 (i32)*, void ()*, void (i16, i32)* }
%struct.xSTATIC_QUEUE = type { [3 x i8*], %union.anon, [2 x %struct.xSTATIC_LIST], [3 x i32], [2 x i8], i8, i32, i8 }
%union.anon = type { i8* }
%struct.xSTATIC_LIST = type { i32, i8*, %struct.xSTATIC_MINI_LIST_ITEM }
%struct.xSTATIC_MINI_LIST_ITEM = type { i32, [2 x i8*] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"btstack\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"btprofile: qfull: %d, %d\0A\00", align 1
@config = internal global %struct.hci_transport_config_uart_t { i32 0, i32 115200, i32 0, i32 0, i8* null }, section ".bt_stack_data", align 4, !dbg !228
@.str.2 = private unnamed_addr constant [18 x i8] c"le_support:%x %x\0A\00", align 1
@config_btctler_modules = external local_unnamed_addr constant i32, align 4
@config_btctler_mode = external local_unnamed_addr constant i32, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"le_config:%x %x %x %x\0A\00", align 1
@config_le_hci_connection_num = external local_unnamed_addr constant i32, align 4
@config_le_gatt_server_num = external local_unnamed_addr constant i32, align 4
@config_le_gatt_client_num = external local_unnamed_addr constant i32, align 4
@config_le_sm_support_enable = external local_unnamed_addr constant i32, align 4
@is_btstack_lowpower_active = internal unnamed_addr global i1 false, section ".bt_stack_data", align 1
@btstack_task_create_flag = internal unnamed_addr global i1 false, section ".bt_stack_data", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ASSERT-FAILD: sem \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"btstack_exit enter\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ble_exit over\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"btctrler exit over \0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"btstack exit over \0A\00", align 1
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"btstack_exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"btstack_lowpwer_deal\00", align 1
@btstack_lowpower_target = hidden constant %struct.lp_target { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32 ()* null, i8 ()* @btstack_lowpower_idle_query }, section ".lp_target", align 4, !dbg !208
@.str.13 = private unnamed_addr constant [13 x i8] c"app init ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lp_target* @btstack_lowpower_target to i8*)], section "llvm.metadata"

; Function Attrs: nounwind optsize
define hidden void @stack_run_loop_resume() local_unnamed_addr #0 section ".bt_stack_code" !dbg !249 {
  %1 = tail call i32 @os_taskq_post_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 255, i32 0, i32* null) #10, !dbg !253
  ret void, !dbg !254
}

; Function Attrs: optsize
declare i32 @os_taskq_post_type(i8*, i32, i32, i32*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @stack_handout_credit() local_unnamed_addr #0 section ".bt_stack_code" !dbg !255 {
  %1 = tail call i32 @os_taskq_post_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4194310, i32 0, i32* null) #10, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: nounwind optsize
define hidden i32 @btstack_send_msg_to_stack(i32, i32*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !262, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32* %1, metadata !263, metadata !DIExpression()), !dbg !265
  %3 = tail call i32 @os_taskq_post_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4194309, i32 %0, i32* %1) #10, !dbg !266
  ret i32 %3, !dbg !267
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind optsize
define hidden void @btstack_task_init() local_unnamed_addr #3 section ".bt_stack_code" !dbg !268 {
  tail call void bitcast (void (...)* @btstack_hci_init to void ()*)() #10, !dbg !269
  tail call void @btstack_mem_init() #10, !dbg !270
  tail call void @btstack_bredr_le_init() #10, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: optsize
declare void @btstack_hci_init(...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @btstack_mem_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @btstack_bredr_le_init() local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden i32 @hci_packet_handler(i8 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !273 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i8* %1, metadata !280, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i16 %2, metadata !281, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !288
  %5 = bitcast [2 x i32]* %4 to i8*, !dbg !289
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !289
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !283, metadata !DIExpression()), !dbg !290
  %6 = zext i8 %0 to i32
  %7 = zext i16 %2 to i32
  %8 = add nuw nsw i32 %7, 3
  %9 = lshr i32 %8, 2
  %10 = bitcast i8* %1 to i32*
  %11 = ptrtoint i8* %1 to i32
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 0, i32 1
  br label %14, !dbg !291, !llvm.loop !292

; <label>:14:                                     ; preds = %31, %3
  switch i8 %0, label %32 [
    i8 4, label %15
    i8 2, label %17
  ], !dbg !294

; <label>:15:                                     ; preds = %14
  %16 = call i32 @os_taskq_post_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4194305, i32 %9, i32* %10) #10, !dbg !296
  call void @llvm.dbg.value(metadata i32 %16, metadata !282, metadata !DIExpression()), !dbg !288
  br label %19, !dbg !298

; <label>:17:                                     ; preds = %14
  store i32 %11, i32* %12, align 4, !dbg !299, !tbaa !300
  store i32 %7, i32* %13, align 4, !dbg !304, !tbaa !300
  %18 = call i32 @os_taskq_post_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4194306, i32 2, i32* nonnull %12) #10, !dbg !305
  call void @llvm.dbg.value(metadata i32 %18, metadata !282, metadata !DIExpression()), !dbg !288
  br label %19, !dbg !306

; <label>:19:                                     ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !282, metadata !DIExpression()), !dbg !288
  %21 = icmp eq i32 %20, 21, !dbg !307
  br i1 %21, label %22, label %32, !dbg !309

; <label>:22:                                     ; preds = %19
  %23 = call fastcc i32 @cpu_in_irq() #12, !dbg !310
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %6, i32 %23) #12, !dbg !311
  %25 = call fastcc i32 @cpu_in_irq() #12, !dbg !313
  %26 = icmp eq i32 %25, 0, !dbg !313
  br i1 %26, label %27, label %32, !dbg !315

; <label>:27:                                     ; preds = %22
  %28 = call i8* bitcast (i8* (...)* @os_current_task to i8* ()*)() #10, !dbg !316
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #12, !dbg !318
  %30 = icmp eq i32 %29, 0, !dbg !320
  br i1 %30, label %32, label %31, !dbg !321

; <label>:31:                                     ; preds = %27
  call void @os_time_dly(i32 2) #10, !dbg !322
  br label %14, !dbg !323

; <label>:32:                                     ; preds = %27, %22, %19, %14
  %33 = phi i32 [ 0, %14 ], [ 21, %27 ], [ 21, %22 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !324
  ret i32 %33, !dbg !324
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: optsize
declare i8* @os_current_task(...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @os_time_dly(i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @ble_bqb_test_thread_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !325 {
  tail call void @dut_le_hw_open() #10, !dbg !326
  %1 = tail call %struct.hci_transport_t* @hci_transport_uart_instance() #10, !dbg !327
  tail call void @dut_hci_controller_init(%struct.hci_transport_t* %1, i8* bitcast (%struct.hci_transport_config_uart_t* @config to i8*)) #10, !dbg !328
  ret void, !dbg !330
}

; Function Attrs: optsize
declare void @dut_le_hw_open() local_unnamed_addr #1

; Function Attrs: optsize
declare void @dut_hci_controller_init(%struct.hci_transport_t*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare %struct.hci_transport_t* @hci_transport_uart_instance() local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden i32 @btstack_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !331 {
  %1 = load i32, i32* @config_btctler_modules, align 4, !dbg !334, !tbaa !300
  %2 = load i32, i32* @config_btctler_mode, align 4, !dbg !335, !tbaa !300
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %1, i32 %2) #12, !dbg !336
  %4 = load i32, i32* @config_le_hci_connection_num, align 4, !dbg !337, !tbaa !300
  %5 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !338, !tbaa !300
  %6 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !339, !tbaa !300
  %7 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !340, !tbaa !300
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %4, i32 %5, i32 %6, i32 %7) #12, !dbg !341
  %9 = and i32 %2, 20, !dbg !342
  %10 = icmp eq i32 %9, 0, !dbg !342
  br i1 %10, label %15, label %11, !dbg !342

; <label>:11:                                     ; preds = %0
  %12 = tail call %struct.hci_transport_t* @hci_transport_uart_instance() #10, !dbg !344
  %13 = bitcast %struct.hci_transport_t* %12 to i8*, !dbg !346
  %14 = tail call i32 @btctrler_task_init(i8* %13, i8* bitcast (%struct.hci_transport_config_uart_t* @config to i8*)) #10, !dbg !347
  br label %28, !dbg !349

; <label>:15:                                     ; preds = %0
  store i1 true, i1* @is_btstack_lowpower_active, align 4
  store i1 true, i1* @btstack_task_create_flag, align 4
  %16 = tail call %struct.hci_transport_t* @hci_transport_h4_controller_instance() #10, !dbg !350
  %17 = bitcast %struct.hci_transport_t* %16 to i8*, !dbg !351
  %18 = tail call i32 @btctrler_task_init(i8* %17, i8* null) #10, !dbg !352
  %19 = tail call i32 bitcast (i32 (...)* @btctrler_task_ready to i32 ()*)() #10, !dbg !354
  %20 = icmp eq i32 %19, 0, !dbg !355
  br i1 %20, label %21, label %26, !dbg !356

; <label>:21:                                     ; preds = %15
  br label %22, !dbg !357

; <label>:22:                                     ; preds = %22, %21
  tail call void @os_time_dly(i32 2) #10, !dbg !357
  %23 = tail call i32 bitcast (i32 (...)* @btctrler_task_ready to i32 ()*)() #10, !dbg !354
  %24 = icmp eq i32 %23, 0, !dbg !355
  br i1 %24, label %22, label %25, !dbg !356, !llvm.loop !359

; <label>:25:                                     ; preds = %22
  br label %26, !dbg !362

; <label>:26:                                     ; preds = %25, %15
  %27 = tail call i32 @task_create(void (i8*)* nonnull @btstack_task, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #10, !dbg !362
  br label %28, !dbg !363

; <label>:28:                                     ; preds = %26, %11
  %29 = phi i32 [ 0, %11 ], [ %27, %26 ]
  ret i32 %29, !dbg !364
}

; Function Attrs: optsize
declare i32 @btctrler_task_init(i8*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare %struct.hci_transport_t* @hci_transport_h4_controller_instance() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @btctrler_task_ready(...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @task_create(void (i8*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
define internal void @btstack_task(i8* nocapture readnone) #6 section ".bt_stack_code" !dbg !365 {
  %2 = alloca [32 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !375
  %3 = bitcast [32 x i32]* %2 to i8*, !dbg !376
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #11, !dbg !376
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %2, metadata !371, metadata !DIExpression()), !dbg !377
  tail call void @btstack_task_init() #12, !dbg !378
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !379, !tbaa !381
  %5 = and i8 %4, 32, !dbg !379
  %6 = icmp eq i8 %5, 0, !dbg !379
  br i1 %6, label %9, label %7, !dbg !382

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !383
  br label %9, !dbg !383

; <label>:9:                                      ; preds = %7, %1
  tail call void @update_bt_current_status(i8* null, i8 zeroext 3, i8 zeroext 43) #10, !dbg !385
  store i1 false, i1* @is_btstack_lowpower_active, align 4
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i32 0, i32 0
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i32 0, i32 1
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i32* %11 to i8**
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i32 0, i32 2
  %15 = bitcast i32* %11 to %struct.xSTATIC_QUEUE**
  br label %16, !dbg !386

; <label>:16:                                     ; preds = %32, %9
  %17 = call i32 @os_taskq_pend(i8* null, i32* nonnull %10, i32 32) #10, !dbg !387
  call void @llvm.dbg.value(metadata i32 %17, metadata !370, metadata !DIExpression()), !dbg !389
  %18 = icmp eq i32 %17, 13, !dbg !390
  br i1 %18, label %19, label %32, !dbg !392

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %10, align 4, !dbg !393, !tbaa !300
  switch i32 %20, label %30 [
    i32 4194305, label %21
    i32 4194306, label %22
    i32 4194308, label %26
    i32 4194310, label %29
  ], !dbg !394

; <label>:21:                                     ; preds = %19
  call void @hci_event_handler(i8* nonnull %12) #10, !dbg !395
  br label %30, !dbg !397

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %13, align 4, !dbg !398, !tbaa !300
  %24 = load i32, i32* %14, align 4, !dbg !399, !tbaa !300
  %25 = trunc i32 %24 to i16, !dbg !399
  call void @hci_acl_handler(i8* %23, i16 zeroext %25) #10, !dbg !400
  br label %30, !dbg !401

; <label>:26:                                     ; preds = %19
  %27 = load %struct.xSTATIC_QUEUE*, %struct.xSTATIC_QUEUE** %15, align 4, !dbg !402, !tbaa !300
  %28 = call i32 @os_sem_post(%struct.xSTATIC_QUEUE* %27) #10, !dbg !403
  call void @os_time_dly(i32 20) #10, !dbg !404
  br label %30, !dbg !405

; <label>:29:                                     ; preds = %19
  call void @l2cap_hand_out_credits_for_send() #10, !dbg !406
  br label %30, !dbg !407

; <label>:30:                                     ; preds = %29, %26, %22, %21, %19
  call void @bt_profile_loop() #10, !dbg !408
  br i1 icmp ne (void ()* @ble_profile_loop, void ()* null), label %31, label %32, !dbg !409

; <label>:31:                                     ; preds = %30
  call void @ble_profile_loop() #10, !dbg !410
  br label %32, !dbg !413

; <label>:32:                                     ; preds = %31, %30, %16
  br label %16, !dbg !387, !llvm.loop !414
}

; Function Attrs: nounwind optsize
define hidden i32 @btstack_exit() local_unnamed_addr #0 section ".bt_stack_code" !dbg !416 {
  %1 = alloca %struct.xSTATIC_QUEUE*, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !418, metadata !DIExpression()), !dbg !420
  %2 = load i1, i1* @btstack_task_create_flag, align 4
  br i1 %2, label %3, label %45, !dbg !421

; <label>:3:                                      ; preds = %0
  %4 = bitcast %struct.xSTATIC_QUEUE** %1 to i8*, !dbg !422
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11, !dbg !422
  %5 = tail call i8* @malloc(i32 80) #12, !dbg !423
  %6 = bitcast %struct.xSTATIC_QUEUE** %1 to i8**, !dbg !424
  store i8* %5, i8** %6, align 4, !dbg !424, !tbaa !425
  %7 = load i32, i32* @config_asser, align 4, !dbg !427, !tbaa !300
  %8 = icmp eq i32 %7, 0, !dbg !427
  %9 = icmp ne i8* %5, null
  %10 = bitcast i8* %5 to %struct.xSTATIC_QUEUE*, !dbg !431
  br i1 %8, label %15, label %11, !dbg !431

; <label>:11:                                     ; preds = %3
  br i1 %9, label %17, label %12, !dbg !433

; <label>:12:                                     ; preds = %11
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i32 0, i32 0), i32 236) #12, !dbg !436
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #12, !dbg !440
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !442
  br label %17, !dbg !436

; <label>:15:                                     ; preds = %3
  br i1 %9, label %17, label %16, !dbg !444

; <label>:16:                                     ; preds = %15
  tail call fastcc void @cpu_reset() #12, !dbg !447
  br label %17, !dbg !447

; <label>:17:                                     ; preds = %16, %15, %12, %11
  %18 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !451
  tail call void @ble_stack_exit(i32 0) #10, !dbg !452
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #12, !dbg !453
  %20 = tail call i32 bitcast (i32 (...)* @btctrler_task_exit to i32 ()*)() #10, !dbg !454
  %21 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)) #12, !dbg !455
  br label %22, !dbg !456

; <label>:22:                                     ; preds = %26, %17
  %23 = phi i8 [ 0, %17 ], [ %28, %26 ]
  call void @llvm.dbg.value(metadata i8 %23, metadata !418, metadata !DIExpression()), !dbg !420
  %24 = tail call i32 bitcast (i32 (...)* @bredr_release to i32 ()*)() #10, !dbg !457
  %25 = icmp eq i32 %24, 0, !dbg !459
  br i1 %25, label %30, label %26, !dbg !459

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 @putchar(i32 35) #12, !dbg !460
  tail call void @os_time_dly(i32 20) #10, !dbg !462
  %28 = add nuw nsw i8 %23, 1, !dbg !463
  call void @llvm.dbg.value(metadata i8 %28, metadata !418, metadata !DIExpression()), !dbg !420
  %29 = icmp ugt i8 %28, 15, !dbg !464
  br i1 %29, label %30, label %22, !dbg !466, !llvm.loop !467

; <label>:30:                                     ; preds = %26, %22
  %31 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #12, !dbg !469
  tail call void @update_bt_current_status(i8* null, i8 zeroext 4, i8 zeroext 0) #10, !dbg !470
  call void @llvm.dbg.value(metadata %struct.xSTATIC_QUEUE* %10, metadata !419, metadata !DIExpression()), !dbg !424
  %32 = tail call i32 @os_sem_create(%struct.xSTATIC_QUEUE* %10, i32 0) #10, !dbg !471
  %33 = bitcast %struct.xSTATIC_QUEUE** %1 to i32*, !dbg !472
  %34 = call i32 @os_taskq_post_type(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4194308, i32 1, i32* nonnull %33) #10, !dbg !473
  %35 = load %struct.xSTATIC_QUEUE*, %struct.xSTATIC_QUEUE** %1, align 4, !dbg !474, !tbaa !425
  call void @llvm.dbg.value(metadata %struct.xSTATIC_QUEUE* %35, metadata !419, metadata !DIExpression()), !dbg !424
  %36 = call i32 @os_sem_pend(%struct.xSTATIC_QUEUE* %35, i32 0) #10, !dbg !475
  %37 = load i8*, i8** %6, align 4, !dbg !476, !tbaa !425
  call void @free(i8* %37) #12, !dbg !477
  %38 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !478, !tbaa !381
  %39 = and i8 %38, 32, !dbg !478
  %40 = icmp eq i8 %39, 0, !dbg !478
  br i1 %40, label %43, label %41, !dbg !480

; <label>:41:                                     ; preds = %30
  %42 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !481
  br label %43, !dbg !481

; <label>:43:                                     ; preds = %41, %30
  %44 = call i32 @task_kill(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #10, !dbg !483
  store i1 false, i1* @btstack_task_create_flag, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11, !dbg !484
  br label %45

; <label>:45:                                     ; preds = %43, %0
  %46 = phi i32 [ 0, %43 ], [ 1, %0 ]
  ret i32 %46, !dbg !485
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #7 !dbg !486 {
  tail call void @p33_soft_reset() #10, !dbg !487
  ret void, !dbg !488
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ble_stack_exit(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @btctrler_task_exit(...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @bredr_release(...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_bt_current_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @os_sem_create(%struct.xSTATIC_QUEUE*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @os_sem_pend(%struct.xSTATIC_QUEUE*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @task_kill(i8*) local_unnamed_addr #1

; Function Attrs: norecurse nounwind optsize readonly
define internal zeroext i8 @btstack_lowpower_idle_query() #8 section ".bt_stack_code" !dbg !489 {
  %1 = load i1, i1* @is_btstack_lowpower_active, align 4
  %2 = xor i1 %1, true, !dbg !492
  %3 = zext i1 %2 to i8, !dbg !492
  ret i8 %3, !dbg !493
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc i32 @cpu_in_irq() unnamed_addr #7 !dbg !494 {
  %1 = tail call i32 asm sideeffect "$0 = icfg", "=r"() #11, !dbg !497, !srcloc !498
  call void @llvm.dbg.value(metadata i32 %1, metadata !496, metadata !DIExpression()), !dbg !499
  %2 = and i32 %1, 255, !dbg !500
  ret i32 %2, !dbg !501
}

; Function Attrs: optsize
declare i32 @os_taskq_pend(i8*, i32*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hci_event_handler(i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hci_acl_handler(i8*, i16 zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @os_sem_post(%struct.xSTATIC_QUEUE*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @l2cap_hand_out_credits_for_send() local_unnamed_addr #1

; Function Attrs: optsize
declare void @bt_profile_loop() local_unnamed_addr #1

; Function Attrs: optsize
declare extern_weak void @ble_profile_loop() #1

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!246, !247}
!llvm.ident = !{!248}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !245, line: 190, type: !150, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !148, globals: !207)
!3 = !DIFile(filename: "../btcommon/btstack_task.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !14, !83, !137, !143}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_task.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "BTSTACK_HCI_EVENT", value: 4194305)
!9 = !DIEnumerator(name: "BTSTACK_HCI_ACL", value: 4194306)
!10 = !DIEnumerator(name: "BTSTACK_HCI_SOC", value: 4194307)
!11 = !DIEnumerator(name: "BTSTACK_TASK_EXIT", value: 4194308)
!12 = !DIEnumerator(name: "BTSTACK_LE_CONNECT_TIME_SET", value: 4194309)
!13 = !DIEnumerator(name: "BTSTACK_L2CAP_HANDOUT_CREDIT", value: 4194310)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 7, size: 32, elements: !16)
!15 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/os/os_error.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!17 = !DIEnumerator(name: "OS_NO_ERR", value: 0)
!18 = !DIEnumerator(name: "OS_TRUE", value: 1)
!19 = !DIEnumerator(name: "OS_ERR_EVENT_TYPE", value: 2)
!20 = !DIEnumerator(name: "OS_ERR_PEND_ISR", value: 3)
!21 = !DIEnumerator(name: "OS_ERR_POST_NULL_PTR", value: 4)
!22 = !DIEnumerator(name: "OS_ERR_PEVENT_NULL", value: 5)
!23 = !DIEnumerator(name: "OS_ERR_POST_ISR", value: 6)
!24 = !DIEnumerator(name: "OS_ERR_QUERY_ISR", value: 7)
!25 = !DIEnumerator(name: "OS_ERR_INVALID_OPT", value: 8)
!26 = !DIEnumerator(name: "OS_ERR_TASK_WAITING", value: 9)
!27 = !DIEnumerator(name: "OS_ERR_PDATA_NULL", value: 10)
!28 = !DIEnumerator(name: "OS_TIMEOUT", value: 11)
!29 = !DIEnumerator(name: "OS_TIMER", value: 12)
!30 = !DIEnumerator(name: "OS_TASKQ", value: 13)
!31 = !DIEnumerator(name: "OS_TASK_NOT_EXIST", value: 14)
!32 = !DIEnumerator(name: "OS_ERR_EVENT_NAME_TOO_LONG", value: 15)
!33 = !DIEnumerator(name: "OS_ERR_FLAG_NAME_TOO_LONG", value: 16)
!34 = !DIEnumerator(name: "OS_ERR_TASK_NAME_TOO_LONG", value: 17)
!35 = !DIEnumerator(name: "OS_ERR_PNAME_NULL", value: 18)
!36 = !DIEnumerator(name: "OS_ERR_TASK_CREATE_ISR", value: 19)
!37 = !DIEnumerator(name: "OS_MBOX_FULL", value: 20)
!38 = !DIEnumerator(name: "OS_Q_FULL", value: 21)
!39 = !DIEnumerator(name: "OS_Q_EMPTY", value: 22)
!40 = !DIEnumerator(name: "OS_Q_ERR", value: 23)
!41 = !DIEnumerator(name: "OS_ERR_NO_QBUF", value: 24)
!42 = !DIEnumerator(name: "OS_PRIO_EXIST", value: 25)
!43 = !DIEnumerator(name: "OS_PRIO_ERR", value: 26)
!44 = !DIEnumerator(name: "OS_PRIO_INVALID", value: 27)
!45 = !DIEnumerator(name: "OS_SEM_OVF", value: 28)
!46 = !DIEnumerator(name: "OS_TASK_DEL_ERR", value: 29)
!47 = !DIEnumerator(name: "OS_TASK_DEL_IDLE", value: 30)
!48 = !DIEnumerator(name: "OS_TASK_DEL_ISR", value: 31)
!49 = !DIEnumerator(name: "OS_NO_MORE_TCB", value: 32)
!50 = !DIEnumerator(name: "OS_TIME_NOT_DLY", value: 33)
!51 = !DIEnumerator(name: "OS_TIME_INVALID_MINUTES", value: 34)
!52 = !DIEnumerator(name: "OS_TIME_INVALID_SECONDS", value: 35)
!53 = !DIEnumerator(name: "OS_TIME_INVALID_MILLI", value: 36)
!54 = !DIEnumerator(name: "OS_TIME_ZERO_DLY", value: 37)
!55 = !DIEnumerator(name: "OS_TASK_SUSPEND_PRIO", value: 38)
!56 = !DIEnumerator(name: "OS_TASK_SUSPEND_IDLE", value: 39)
!57 = !DIEnumerator(name: "OS_TASK_RESUME_PRIO", value: 40)
!58 = !DIEnumerator(name: "OS_TASK_NOT_SUSPENDED", value: 41)
!59 = !DIEnumerator(name: "OS_MEM_INVALID_PART", value: 42)
!60 = !DIEnumerator(name: "OS_MEM_INVALID_BLKS", value: 43)
!61 = !DIEnumerator(name: "OS_MEM_INVALID_SIZE", value: 44)
!62 = !DIEnumerator(name: "OS_MEM_NO_FREE_BLKS", value: 45)
!63 = !DIEnumerator(name: "OS_MEM_FULL", value: 46)
!64 = !DIEnumerator(name: "OS_MEM_INVALID_PBLK", value: 47)
!65 = !DIEnumerator(name: "OS_MEM_INVALID_PMEM", value: 48)
!66 = !DIEnumerator(name: "OS_MEM_INVALID_PDATA", value: 49)
!67 = !DIEnumerator(name: "OS_MEM_INVALID_ADDR", value: 50)
!68 = !DIEnumerator(name: "OS_MEM_NAME_TOO_LONG", value: 51)
!69 = !DIEnumerator(name: "OS_ERR_MEM_NO_MEM", value: 52)
!70 = !DIEnumerator(name: "OS_ERR_NOT_MUTEX_OWNER", value: 53)
!71 = !DIEnumerator(name: "OS_TASK_OPT_ERR", value: 54)
!72 = !DIEnumerator(name: "OS_ERR_DEL_ISR", value: 55)
!73 = !DIEnumerator(name: "OS_ERR_CREATE_ISR", value: 56)
!74 = !DIEnumerator(name: "OS_FLAG_INVALID_PGRP", value: 57)
!75 = !DIEnumerator(name: "OS_FLAG_ERR_WAIT_TYPE", value: 58)
!76 = !DIEnumerator(name: "OS_FLAG_ERR_NOT_RDY", value: 59)
!77 = !DIEnumerator(name: "OS_FLAG_INVALID_OPT", value: 60)
!78 = !DIEnumerator(name: "OS_FLAG_GRP_DEPLETED", value: 61)
!79 = !DIEnumerator(name: "OS_ERR_PIP_LOWER", value: 62)
!80 = !DIEnumerator(name: "OS_ERR_MSG_POOL_EMPTY", value: 63)
!81 = !DIEnumerator(name: "OS_ERR_MSG_POOL_NULL_PTR", value: 64)
!82 = !DIEnumerator(name: "OS_ERR_MSG_POOL_FULL", value: 65)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 299, size: 32, elements: !85)
!84 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!86 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!87 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!88 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!89 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!90 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!91 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!92 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!93 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!94 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!95 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!96 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!97 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!98 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!99 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!100 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!101 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!102 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!103 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!104 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!105 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!106 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!107 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!108 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!109 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!110 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!111 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!112 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!113 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!114 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!115 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!116 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!117 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!118 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!119 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!120 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!121 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!122 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!123 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!124 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!125 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!126 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!127 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!128 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!129 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!130 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!131 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!132 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!133 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!134 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!135 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!136 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LOW_POWER_LEVEL", file: !138, line: 346, size: 32, elements: !139)
!138 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/power_interface.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "LOW_POWER_MODE_SLEEP", value: 0)
!141 = !DIEnumerator(name: "LOW_POWER_MODE_LIGHT_SLEEP", value: 1)
!142 = !DIEnumerator(name: "LOW_POWER_MODE_DEEP_SLEEP", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 184, size: 32, elements: !145)
!144 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btctrler/hci_transport.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!145 = !{!146, !147}
!146 = !DIEnumerator(name: "HCI_TRANSPORT_CONFIG_UART", value: 0)
!147 = !DIEnumerator(name: "HCI_TRANSPORT_CONFIG_USB", value: 1)
!148 = !{!149, !150, !151, !152, !156}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !154, line: 44, baseType: !155)
!154 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "OS_SEM", file: !158, line: 26, baseType: !159)
!158 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/os/os_type.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "StaticSemaphore_t", file: !160, line: 991, baseType: !161)
!160 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/os/FreeRTOS/FreeRTOS.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "StaticQueue_t", file: !160, line: 990, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xSTATIC_QUEUE", file: !160, line: 965, size: 640, elements: !163)
!163 = !{!164, !168, !176, !198, !200, !204, !205, !206}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pvDummy1", scope: !162, file: !160, line: 966, baseType: !165, size: 96)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 96, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 3)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !162, file: !160, line: 971, baseType: !169, size: 32, offset: 96)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !160, line: 968, size: 32, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pvDummy2", scope: !169, file: !160, line: 969, baseType: !151, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "uxDummy2", scope: !169, file: !160, line: 970, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "UBaseType_t", file: !174, line: 89, baseType: !175)
!174 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/os/FreeRTOS/q32s/portmacro.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!175 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "xDummy3", scope: !162, file: !160, line: 973, baseType: !177, size: 320, offset: 128)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 320, elements: !196)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "StaticList_t", file: !160, line: 892, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xSTATIC_LIST", file: !160, line: 888, size: 160, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "uxDummy1", scope: !179, file: !160, line: 889, baseType: !173, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pvDummy2", scope: !179, file: !160, line: 890, baseType: !151, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "xDummy3", scope: !179, file: !160, line: 891, baseType: !184, size: 96, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "StaticMiniListItem_t", file: !160, line: 885, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xSTATIC_MINI_LIST_ITEM", file: !160, line: 881, size: 96, elements: !186)
!186 = !{!187, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "xDummy1", scope: !185, file: !160, line: 882, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "TickType_t", file: !174, line: 96, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !190, line: 32, baseType: !191)
!190 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !192, line: 65, baseType: !193)
!192 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!193 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pvDummy2", scope: !185, file: !160, line: 883, baseType: !195, size: 64, offset: 32)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 2)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uxDummy4", scope: !162, file: !160, line: 974, baseType: !199, size: 96, offset: 448)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 96, elements: !166)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ucDummy5", scope: !162, file: !160, line: 975, baseType: !201, size: 16, offset: 544)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16, elements: !196)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !190, line: 20, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !192, line: 29, baseType: !155)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ucDummy6", scope: !162, file: !160, line: 978, baseType: !202, size: 8, offset: 560)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uxDummy8", scope: !162, file: !160, line: 986, baseType: !173, size: 32, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ucDummy9", scope: !162, file: !160, line: 987, baseType: !202, size: 8, offset: 608)
!207 = !{!0, !208, !228, !241, !243}
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "btstack_lowpower_target", scope: !2, file: !6, line: 278, type: !210, isLocal: false, isDefinition: true)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lp_target", file: !138, line: 357, size: 96, elements: !212)
!212 = !{!213, !216, !221}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !138, line: 358, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !211, file: !138, line: 359, baseType: !217, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_handler_t", file: !138, line: 355, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!219 = !DISubroutineType(types: !220)
!220 = !{!137}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !211, file: !138, line: 360, baseType: !222, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "idle_handler_t", file: !138, line: 354, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!224 = !DISubroutineType(types: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !227, line: 11, baseType: !155)
!227 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "config", scope: !2, file: !6, line: 181, type: !230, isLocal: true, isDefinition: true)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_transport_config_uart_t", file: !144, line: 199, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 193, size: 160, elements: !232)
!232 = !{!233, !235, !236, !237, !238}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !231, file: !144, line: 194, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_transport_config_type_t", file: !144, line: 187, baseType: !143)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate_init", scope: !231, file: !144, line: 195, baseType: !189, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate_main", scope: !231, file: !144, line: 196, baseType: !189, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flowcontrol", scope: !231, file: !144, line: 197, baseType: !150, size: 32, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !231, file: !144, line: 198, baseType: !239, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "is_btstack_lowpower_active", scope: !2, file: !6, line: 42, type: !153, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "btstack_task_create_flag", scope: !2, file: !6, line: 189, type: !153, isLocal: true, isDefinition: true)
!245 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!246 = !{i32 2, !"Dwarf Version", i32 4}
!247 = !{i32 2, !"Debug Info Version", i32 3}
!248 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!249 = distinct !DISubprogram(name: "stack_run_loop_resume", scope: !6, file: !6, line: 52, type: !250, isLocal: false, isDefinition: true, scopeLine: 53, isOptimized: true, unit: !2, variables: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{null}
!252 = !{}
!253 = !DILocation(line: 54, column: 5, scope: !249)
!254 = !DILocation(line: 55, column: 1, scope: !249)
!255 = distinct !DISubprogram(name: "stack_handout_credit", scope: !6, file: !6, line: 58, type: !250, isLocal: false, isDefinition: true, scopeLine: 59, isOptimized: true, unit: !2, variables: !252)
!256 = !DILocation(line: 60, column: 5, scope: !255)
!257 = !DILocation(line: 61, column: 1, scope: !255)
!258 = distinct !DISubprogram(name: "btstack_send_msg_to_stack", scope: !6, file: !6, line: 62, type: !259, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!150, !150, !149}
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "argc", arg: 1, scope: !258, file: !6, line: 62, type: !150)
!263 = !DILocalVariable(name: "argv", arg: 2, scope: !258, file: !6, line: 62, type: !149)
!264 = !DILocation(line: 62, column: 35, scope: !258)
!265 = !DILocation(line: 62, column: 46, scope: !258)
!266 = !DILocation(line: 64, column: 12, scope: !258)
!267 = !DILocation(line: 64, column: 5, scope: !258)
!268 = distinct !DISubprogram(name: "btstack_task_init", scope: !6, file: !6, line: 71, type: !250, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !252)
!269 = !DILocation(line: 73, column: 5, scope: !268)
!270 = !DILocation(line: 75, column: 5, scope: !268)
!271 = !DILocation(line: 77, column: 5, scope: !268)
!272 = !DILocation(line: 78, column: 1, scope: !268)
!273 = distinct !DISubprogram(name: "hci_packet_handler", scope: !6, file: !6, line: 146, type: !274, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !278)
!274 = !DISubroutineType(types: !275)
!275 = !{!150, !153, !152, !276}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !154, line: 46, baseType: !277)
!277 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!278 = !{!279, !280, !281, !282, !283}
!279 = !DILocalVariable(name: "type", arg: 1, scope: !273, file: !6, line: 146, type: !153)
!280 = !DILocalVariable(name: "packet", arg: 2, scope: !273, file: !6, line: 146, type: !152)
!281 = !DILocalVariable(name: "size", arg: 3, scope: !273, file: !6, line: 146, type: !276)
!282 = !DILocalVariable(name: "err", scope: !273, file: !6, line: 148, type: !150)
!283 = !DILocalVariable(name: "msg", scope: !273, file: !6, line: 149, type: !284)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !196)
!285 = !DILocation(line: 146, column: 27, scope: !273)
!286 = !DILocation(line: 146, column: 37, scope: !273)
!287 = !DILocation(line: 146, column: 49, scope: !273)
!288 = !DILocation(line: 148, column: 9, scope: !273)
!289 = !DILocation(line: 149, column: 5, scope: !273)
!290 = !DILocation(line: 149, column: 9, scope: !273)
!291 = !DILocation(line: 150, column: 5, scope: !273)
!292 = distinct !{!292, !291, !293}
!293 = !DILocation(line: 177, column: 15, scope: !273)
!294 = !DILocation(line: 151, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !273, file: !6, line: 150, column: 8)
!296 = !DILocation(line: 153, column: 19, scope: !297)
!297 = distinct !DILexicalBlock(scope: !295, file: !6, line: 151, column: 23)
!298 = !DILocation(line: 155, column: 13, scope: !297)
!299 = !DILocation(line: 157, column: 20, scope: !297)
!300 = !{!301, !301, i64 0}
!301 = !{!"int", !302, i64 0}
!302 = !{!"omnipotent char", !303, i64 0}
!303 = !{!"Simple C/C++ TBAA"}
!304 = !DILocation(line: 158, column: 20, scope: !297)
!305 = !DILocation(line: 159, column: 19, scope: !297)
!306 = !DILocation(line: 160, column: 13, scope: !297)
!307 = !DILocation(line: 165, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !295, file: !6, line: 165, column: 13)
!309 = !DILocation(line: 165, column: 13, scope: !295)
!310 = !DILocation(line: 168, column: 52, scope: !295)
!311 = !DILocation(line: 168, column: 9, scope: !312)
!312 = !DILexicalBlockFile(scope: !295, file: !6, discriminator: 1)
!313 = !DILocation(line: 169, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !295, file: !6, line: 169, column: 13)
!315 = !DILocation(line: 169, column: 13, scope: !295)
!316 = !DILocation(line: 172, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !295, file: !6, line: 172, column: 13)
!318 = !DILocation(line: 172, column: 14, scope: !319)
!319 = !DILexicalBlockFile(scope: !317, file: !6, discriminator: 1)
!320 = !DILocation(line: 172, column: 14, scope: !317)
!321 = !DILocation(line: 172, column: 13, scope: !295)
!322 = !DILocation(line: 176, column: 9, scope: !295)
!323 = !DILocation(line: 177, column: 5, scope: !312)
!324 = !DILocation(line: 179, column: 1, scope: !273)
!325 = distinct !DISubprogram(name: "ble_bqb_test_thread_init", scope: !6, file: !6, line: 192, type: !250, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !252)
!326 = !DILocation(line: 194, column: 5, scope: !325)
!327 = !DILocation(line: 195, column: 37, scope: !325)
!328 = !DILocation(line: 195, column: 5, scope: !329)
!329 = !DILexicalBlockFile(scope: !325, file: !6, discriminator: 1)
!330 = !DILocation(line: 196, column: 1, scope: !325)
!331 = distinct !DISubprogram(name: "btstack_init", scope: !6, file: !6, line: 198, type: !332, isLocal: false, isDefinition: true, scopeLine: 199, isOptimized: true, unit: !2, variables: !252)
!332 = !DISubroutineType(types: !333)
!333 = !{!150}
!334 = !DILocation(line: 200, column: 34, scope: !331)
!335 = !DILocation(line: 200, column: 58, scope: !331)
!336 = !DILocation(line: 200, column: 5, scope: !331)
!337 = !DILocation(line: 201, column: 39, scope: !331)
!338 = !DILocation(line: 201, column: 69, scope: !331)
!339 = !DILocation(line: 201, column: 96, scope: !331)
!340 = !DILocation(line: 201, column: 123, scope: !331)
!341 = !DILocation(line: 201, column: 5, scope: !331)
!342 = !DILocation(line: 203, column: 28, scope: !343)
!343 = distinct !DILexicalBlock(scope: !331, file: !6, line: 203, column: 9)
!344 = !DILocation(line: 204, column: 36, scope: !345)
!345 = distinct !DILexicalBlock(scope: !343, file: !6, line: 203, column: 51)
!346 = !DILocation(line: 204, column: 28, scope: !345)
!347 = !DILocation(line: 204, column: 9, scope: !348)
!348 = !DILexicalBlockFile(scope: !345, file: !6, discriminator: 1)
!349 = !DILocation(line: 205, column: 9, scope: !345)
!350 = !DILocation(line: 210, column: 32, scope: !331)
!351 = !DILocation(line: 210, column: 24, scope: !331)
!352 = !DILocation(line: 210, column: 5, scope: !353)
!353 = !DILexicalBlockFile(scope: !331, file: !6, discriminator: 1)
!354 = !DILocation(line: 219, column: 12, scope: !353)
!355 = !DILocation(line: 219, column: 34, scope: !353)
!356 = !DILocation(line: 219, column: 5, scope: !353)
!357 = !DILocation(line: 220, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !331, file: !6, line: 219, column: 40)
!359 = distinct !{!359, !360, !361}
!360 = !DILocation(line: 219, column: 5, scope: !331)
!361 = !DILocation(line: 221, column: 5, scope: !331)
!362 = !DILocation(line: 222, column: 12, scope: !331)
!363 = !DILocation(line: 222, column: 5, scope: !331)
!364 = !DILocation(line: 223, column: 1, scope: !331)
!365 = distinct !DISubprogram(name: "btstack_task", scope: !6, file: !6, line: 80, type: !366, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !151}
!368 = !{!369, !370, !371}
!369 = !DILocalVariable(name: "p", arg: 1, scope: !365, file: !6, line: 80, type: !151)
!370 = !DILocalVariable(name: "ret", scope: !365, file: !6, line: 82, type: !150)
!371 = !DILocalVariable(name: "msg", scope: !365, file: !6, line: 83, type: !372)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 32)
!375 = !DILocation(line: 80, column: 32, scope: !365)
!376 = !DILocation(line: 83, column: 5, scope: !365)
!377 = !DILocation(line: 83, column: 9, scope: !365)
!378 = !DILocation(line: 85, column: 5, scope: !365)
!379 = !DILocation(line: 87, column: 5, scope: !380)
!380 = distinct !DILexicalBlock(scope: !365, file: !6, line: 87, column: 5)
!381 = !{!302, !302, i64 0}
!382 = !DILocation(line: 87, column: 5, scope: !365)
!383 = !DILocation(line: 87, column: 5, scope: !384)
!384 = !DILexicalBlockFile(scope: !380, file: !6, discriminator: 1)
!385 = !DILocation(line: 89, column: 5, scope: !365)
!386 = !DILocation(line: 97, column: 5, scope: !365)
!387 = !DILocation(line: 98, column: 15, scope: !388)
!388 = distinct !DILexicalBlock(scope: !365, file: !6, line: 97, column: 15)
!389 = !DILocation(line: 82, column: 9, scope: !365)
!390 = !DILocation(line: 100, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !6, line: 100, column: 13)
!392 = !DILocation(line: 100, column: 13, scope: !388)
!393 = !DILocation(line: 104, column: 17, scope: !388)
!394 = !DILocation(line: 104, column: 9, scope: !388)
!395 = !DILocation(line: 106, column: 13, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !6, line: 104, column: 25)
!397 = !DILocation(line: 107, column: 13, scope: !396)
!398 = !DILocation(line: 109, column: 35, scope: !396)
!399 = !DILocation(line: 109, column: 43, scope: !396)
!400 = !DILocation(line: 109, column: 13, scope: !396)
!401 = !DILocation(line: 110, column: 13, scope: !396)
!402 = !DILocation(line: 112, column: 35, scope: !396)
!403 = !DILocation(line: 112, column: 13, scope: !396)
!404 = !DILocation(line: 113, column: 13, scope: !396)
!405 = !DILocation(line: 114, column: 13, scope: !396)
!406 = !DILocation(line: 124, column: 13, scope: !396)
!407 = !DILocation(line: 125, column: 13, scope: !396)
!408 = !DILocation(line: 133, column: 9, scope: !388)
!409 = !DILocation(line: 137, column: 13, scope: !388)
!410 = !DILocation(line: 138, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !6, line: 137, column: 31)
!412 = distinct !DILexicalBlock(scope: !388, file: !6, line: 137, column: 13)
!413 = !DILocation(line: 139, column: 9, scope: !411)
!414 = distinct !{!414, !386, !415}
!415 = !DILocation(line: 140, column: 5, scope: !365)
!416 = distinct !DISubprogram(name: "btstack_exit", scope: !6, file: !6, line: 227, type: !332, isLocal: false, isDefinition: true, scopeLine: 228, isOptimized: true, unit: !2, variables: !417)
!417 = !{!418, !419}
!418 = !DILocalVariable(name: "bt_disconn_cnt", scope: !416, file: !6, line: 229, type: !153)
!419 = !DILocalVariable(name: "sem", scope: !416, file: !6, line: 235, type: !156)
!420 = !DILocation(line: 229, column: 8, scope: !416)
!421 = !DILocation(line: 231, column: 9, scope: !416)
!422 = !DILocation(line: 235, column: 5, scope: !416)
!423 = !DILocation(line: 235, column: 19, scope: !416)
!424 = !DILocation(line: 235, column: 13, scope: !416)
!425 = !{!426, !426, i64 0}
!426 = !{!"any pointer", !302, i64 0}
!427 = !DILocation(line: 236, column: 5, scope: !428)
!428 = !DILexicalBlockFile(scope: !429, file: !6, discriminator: 1)
!429 = distinct !DILexicalBlock(scope: !430, file: !6, line: 236, column: 5)
!430 = distinct !DILexicalBlock(scope: !416, file: !6, line: 236, column: 5)
!431 = !DILocation(line: 236, column: 5, scope: !432)
!432 = !DILexicalBlockFile(scope: !430, file: !6, discriminator: 1)
!433 = !DILocation(line: 236, column: 5, scope: !434)
!434 = !DILexicalBlockFile(scope: !435, file: !6, discriminator: 2)
!435 = distinct !DILexicalBlock(scope: !429, file: !6, line: 236, column: 5)
!436 = !DILocation(line: 236, column: 5, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !6, discriminator: 3)
!438 = distinct !DILexicalBlock(scope: !439, file: !6, line: 236, column: 5)
!439 = distinct !DILexicalBlock(scope: !435, file: !6, line: 236, column: 5)
!440 = !DILocation(line: 236, column: 5, scope: !441)
!441 = !DILexicalBlockFile(scope: !438, file: !6, discriminator: 9)
!442 = !DILocation(line: 236, column: 5, scope: !443)
!443 = !DILexicalBlockFile(scope: !438, file: !6, discriminator: 10)
!444 = !DILocation(line: 236, column: 5, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !6, discriminator: 5)
!446 = distinct !DILexicalBlock(scope: !429, file: !6, line: 236, column: 5)
!447 = !DILocation(line: 236, column: 5, scope: !448)
!448 = !DILexicalBlockFile(scope: !449, file: !6, discriminator: 6)
!449 = distinct !DILexicalBlock(scope: !450, file: !6, line: 236, column: 5)
!450 = distinct !DILexicalBlock(scope: !446, file: !6, line: 236, column: 5)
!451 = !DILocation(line: 238, column: 5, scope: !416)
!452 = !DILocation(line: 239, column: 5, scope: !416)
!453 = !DILocation(line: 240, column: 5, scope: !416)
!454 = !DILocation(line: 241, column: 5, scope: !416)
!455 = !DILocation(line: 242, column: 5, scope: !416)
!456 = !DILocation(line: 244, column: 5, scope: !416)
!457 = !DILocation(line: 244, column: 12, scope: !458)
!458 = !DILexicalBlockFile(scope: !416, file: !6, discriminator: 1)
!459 = !DILocation(line: 244, column: 5, scope: !458)
!460 = !DILocation(line: 245, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !416, file: !6, line: 244, column: 29)
!462 = !DILocation(line: 246, column: 9, scope: !461)
!463 = !DILocation(line: 248, column: 23, scope: !461)
!464 = !DILocation(line: 250, column: 28, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !6, line: 250, column: 13)
!466 = !DILocation(line: 250, column: 13, scope: !461)
!467 = distinct !{!467, !456, !468}
!468 = !DILocation(line: 253, column: 5, scope: !416)
!469 = !DILocation(line: 255, column: 5, scope: !416)
!470 = !DILocation(line: 257, column: 5, scope: !416)
!471 = !DILocation(line: 259, column: 5, scope: !416)
!472 = !DILocation(line: 260, column: 62, scope: !416)
!473 = !DILocation(line: 260, column: 5, scope: !416)
!474 = !DILocation(line: 262, column: 17, scope: !416)
!475 = !DILocation(line: 262, column: 5, scope: !416)
!476 = !DILocation(line: 263, column: 10, scope: !416)
!477 = !DILocation(line: 263, column: 5, scope: !416)
!478 = !DILocation(line: 265, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !416, file: !6, line: 265, column: 5)
!480 = !DILocation(line: 265, column: 5, scope: !416)
!481 = !DILocation(line: 265, column: 5, scope: !482)
!482 = !DILexicalBlockFile(scope: !479, file: !6, discriminator: 1)
!483 = !DILocation(line: 266, column: 5, scope: !416)
!484 = !DILocation(line: 270, column: 1, scope: !416)
!485 = !DILocation(line: 270, column: 1, scope: !458)
!486 = distinct !DISubprogram(name: "cpu_reset", scope: !227, file: !227, line: 145, type: !250, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !252)
!487 = !DILocation(line: 148, column: 5, scope: !486)
!488 = !DILocation(line: 149, column: 1, scope: !486)
!489 = distinct !DISubprogram(name: "btstack_lowpower_idle_query", scope: !6, file: !6, line: 273, type: !490, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !252)
!490 = !DISubroutineType(types: !491)
!491 = !{!153}
!492 = !DILocation(line: 275, column: 12, scope: !489)
!493 = !DILocation(line: 275, column: 5, scope: !489)
!494 = distinct !DISubprogram(name: "cpu_in_irq", scope: !227, file: !227, line: 69, type: !332, isLocal: true, isDefinition: true, scopeLine: 70, isOptimized: true, unit: !2, variables: !495)
!495 = !{!496}
!496 = !DILocalVariable(name: "flag", scope: !494, file: !227, line: 71, type: !150)
!497 = !DILocation(line: 72, column: 5, scope: !494)
!498 = !{i32 35081}
!499 = !DILocation(line: 71, column: 9, scope: !494)
!500 = !DILocation(line: 73, column: 17, scope: !494)
!501 = !DILocation(line: 73, column: 5, scope: !494)
