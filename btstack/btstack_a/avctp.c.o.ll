; ModuleID = 'avctp.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avctp.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.avctp_stack_t = type { i8, i8, i16, [1 x %struct.avctp], %struct.run_loop }
%struct.avctp = type { [6 x i8], i16, i8, %struct.control_pdu_handler*, %struct.respone_pdu_handler*, %struct.avrcp_core_data_t }
%struct.control_pdu_handler = type { i8, i8, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* }
%struct.avrcp_header = type opaque
%struct.respone_pdu_handler = type { i8, i8, i8 (%struct.avctp*, i8, i8, i8*, i32)* }
%struct.avrcp_core_data_t = type { i32, i8, i8, [5 x i8], i8, i8, [3 x i8], i8, i8, [9 x i8], [14 x %struct.avrcp_event_info] }
%struct.avrcp_event_info = type { i8 }
%struct.run_loop = type { %struct.btstack_linked_item, void (%struct.run_loop*)*, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.profile_cmd_handle = type { i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i8*)*, i32 (i8*)* }
%struct.iovec = type { [50 x i8], i32 }
%struct.avctp_header = type <{ i8, i16 }>
%struct.avc_header = type <{ i16, i8 }>

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@acp_stack = internal unnamed_addr global %struct.avctp_stack_t* null, section ".bt_stack_data", align 4, !dbg !219
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@avctp_conn_timer = hidden global %struct.btstack_timer_source zeroinitializer, section ".bt_stack_bss", align 4, !dbg !191
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@bt_suspend_avctp_resumeavctp_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @avctp_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @avctp_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @avctp_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !179
@avctp_run_loop_busy = internal unnamed_addr global i1 false, section ".bt_stack_data", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"<BT-log> :avctp_struct size %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"<pro-error> :avctp cmd failed:%d , lockcid:%d, no resend please check \0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__create_avctp_conn\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"<BT-log> :get avrcp_volume from vm %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"<BT-log> :save avrcp_volume to vm %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"avctp_release ok\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"[pro-info] :avctp MONITOR_CHANNEL_CREATE addr %s handle 0x%x psm %u,cid 0x%02x \0A\00", align 1
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@.str.12 = private unnamed_addr constant [64 x i8] c"<BT-log> :now is have avctp channel conn %d,why come again %d\0A\0A\00", align 1
@more_avctp_cmd_support = external local_unnamed_addr constant i8, align 1
@profile_cmd_hdl_str = external local_unnamed_addr global %struct.profile_cmd_handle, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_avctp_resumeavctp_release to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [31 x i8] c"[pro-info] :wait to auto play\0A\00"
@str.13 = private unnamed_addr constant [33 x i8] c"<BT-log> :avctp add timer again\0A\00"
@str.14 = private unnamed_addr constant [27 x i8] c"[pro-info] :avctp cmd ok \0A\00"

; Function Attrs: nounwind optsize
define hidden i32 @avctp_send_vendordep(%struct.avctp*, i8 zeroext, i8 zeroext, i8 zeroext, i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !328 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !332, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8 %1, metadata !333, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i8 %2, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i8 %3, metadata !335, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i8* %4, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 %5, metadata !337, metadata !DIExpression()), !dbg !343
  %7 = tail call fastcc i32 @avctp_send(%struct.avctp* %0, i8 zeroext %1, i8 zeroext 1, i8 zeroext %2, i8 zeroext %3, i8 zeroext 0, i8* %4, i32 %5) #8, !dbg !344
  ret i32 %7, !dbg !345
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define internal fastcc i32 @avctp_send(%struct.avctp*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8* nocapture readonly, i32) unnamed_addr #0 section ".bt_stack_code" !dbg !346 {
  %9 = alloca [2 x %struct.iovec], align 4
  %10 = alloca [80 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !350, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8 %1, metadata !351, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i8 %2, metadata !352, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i8 %3, metadata !353, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i8 %4, metadata !354, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8 %5, metadata !355, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %6, metadata !356, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 %7, metadata !357, metadata !DIExpression()), !dbg !385
  %11 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 0, i32 0, i32 0, !dbg !386
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11), !dbg !386
  tail call void @llvm.dbg.declare(metadata [2 x %struct.iovec]* %9, metadata !358, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !388
  %12 = icmp eq %struct.avctp* %0, null, !dbg !389
  br i1 %12, label %45, label %13, !dbg !391

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 0, i32 1, !dbg !392
  store i32 6, i32* %14, align 4, !dbg !392
  %15 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 1, i32 1, !dbg !393
  store i32 %7, i32* %15, align 4, !dbg !393
  %16 = add nsw i32 %7, 6, !dbg !394
  %17 = icmp sgt i32 %16, 80, !dbg !396
  br i1 %17, label %45, label %18, !dbg !397

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 1, i32 0, i32 0, !dbg !398
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %6, i32 %7, i32 1, i1 false), !dbg !398
  call void @llvm.dbg.value(metadata %struct.avctp_header* undef, metadata !369, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct.avc_header* undef, metadata !370, metadata !DIExpression()), !dbg !400
  %20 = shl i8 %1, 4, !dbg !401
  %21 = shl i8 %2, 1, !dbg !402
  %22 = and i8 %21, 2, !dbg !402
  %23 = or i8 %22, %20, !dbg !402
  store i8 %23, i8* %11, align 4, !dbg !402
  %24 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 0, i32 0, i32 1, !dbg !403
  %25 = bitcast i8* %24 to i16*, !dbg !403
  store i16 3601, i16* %25, align 1, !dbg !403
  %26 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 0, i32 0, i32 3, !dbg !404
  %27 = bitcast i8* %26 to i16*, !dbg !404
  %28 = and i8 %3, 15, !dbg !404
  %29 = zext i8 %28 to i16, !dbg !404
  %30 = zext i8 %4 to i16, !dbg !405
  %31 = shl i16 %30, 11, !dbg !405
  %32 = or i16 %31, %29, !dbg !405
  store i16 %32, i16* %27, align 1, !dbg !405
  %33 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i32 0, i32 0, i32 0, i32 5, !dbg !406
  store i8 %5, i8* %33, align 1, !dbg !406
  %34 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 8, !dbg !407
  %35 = load i8, i8* %34, align 1, !dbg !407, !tbaa !408
  %36 = icmp eq i8 %35, 0, !dbg !416
  br i1 %36, label %37, label %45, !dbg !417

; <label>:37:                                     ; preds = %18
  %38 = load i32, i32* %15, align 4, !dbg !418
  %39 = add nsw i32 %38, 6, !dbg !419
  %40 = trunc i32 %39 to i8, !dbg !420
  store i8 %40, i8* %34, align 1, !dbg !421, !tbaa !408
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 0, !dbg !422
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %41) #9, !dbg !422
  tail call void @llvm.dbg.declare(metadata [80 x i8]* %10, metadata !372, metadata !DIExpression()), !dbg !423
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 6, !dbg !424
  call void @llvm.memset.p0i8.i32(i8* %42, i8 0, i32 74, i32 1, i1 false), !dbg !424
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %41, i8* nonnull %11, i32 6, i32 1, i1 false), !dbg !424
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 6, !dbg !425
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %19, i32 %38, i32 1, i1 false), !dbg !426
  %44 = call fastcc i32 @avctp_cmd_try_send_no_resend(%struct.avctp* nonnull %0, i8* nonnull %41) #8, !dbg !427
  call void @llvm.dbg.value(metadata i32 %44, metadata !371, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %41) #9, !dbg !428
  br label %45, !dbg !429

; <label>:45:                                     ; preds = %37, %18, %13, %8
  %46 = phi i32 [ 0, %8 ], [ 0, %13 ], [ %44, %37 ], [ 87, %18 ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11), !dbg !430
  ret i32 %46, !dbg !430
}

; Function Attrs: nounwind optsize
define hidden i32 @avctp_send_vendordep_req(%struct.avctp*, i8 zeroext, i8 zeroext, i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !431 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !435, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i8 %1, metadata !436, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8 %2, metadata !437, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %3, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 %4, metadata !439, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !446
  %6 = icmp eq %struct.avctp* %0, null, !dbg !447
  br i1 %6, label %18, label %7, !dbg !449

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 6, !dbg !450
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !450
  %10 = load i24, i24* %9, align 1, !dbg !451
  %11 = trunc i24 %10 to i8, !dbg !451
  %12 = add i8 %11, 1, !dbg !451
  %13 = and i8 %12, 15, !dbg !451
  %14 = zext i8 %13 to i24, !dbg !451
  %15 = and i24 %10, -16, !dbg !451
  %16 = or i24 %14, %15, !dbg !451
  store i24 %16, i24* %9, align 1, !dbg !451
  %17 = tail call fastcc i32 @avctp_send(%struct.avctp* nonnull %0, i8 zeroext %13, i8 zeroext 0, i8 zeroext %1, i8 zeroext %2, i8 zeroext 0, i8* %3, i32 %4) #8, !dbg !452
  call void @llvm.dbg.value(metadata i32 %17, metadata !440, metadata !DIExpression()), !dbg !446
  br label %18, !dbg !453

; <label>:18:                                     ; preds = %7, %5
  %19 = phi i32 [ %17, %7 ], [ 0, %5 ]
  ret i32 %19, !dbg !454
}

; Function Attrs: nounwind optsize
define weak hidden void @emitter_rx_avctp_opid_deal(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !455 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !459, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i8 %1, metadata !460, metadata !DIExpression()), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nounwind optsize
define hidden void @set_cmd_pending_bit(%struct.avctp*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !464 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !471, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 %1, metadata !472, metadata !DIExpression()), !dbg !474
  %3 = icmp ugt i32 %1, 15, !dbg !475
  %4 = icmp eq %struct.avctp* %0, null, !dbg !477
  %5 = or i1 %4, %3, !dbg !479
  br i1 %5, label %11, label %6, !dbg !479

; <label>:6:                                      ; preds = %2
  %7 = shl i32 1, %1, !dbg !480
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 0, !dbg !481
  %9 = load i32, i32* %8, align 4, !dbg !482, !tbaa !483
  %10 = or i32 %9, %7, !dbg !482
  store i32 %10, i32* %8, align 4, !dbg !482, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !484
  br label %11, !dbg !485

; <label>:11:                                     ; preds = %6, %2
  ret void, !dbg !486
}

; Function Attrs: optsize
declare void @stack_run_loop_resume(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @avctp_try_send(i8* nocapture readonly, i32, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !493, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %1, metadata !494, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %2, metadata !495, metadata !DIExpression()), !dbg !499
  %4 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !500, !tbaa !502
  %5 = icmp eq %struct.avctp_stack_t* %4, null, !dbg !503
  br i1 %5, label %108, label %6, !dbg !504

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i32 %1, 241, !dbg !505
  br i1 %7, label %8, label %34, !dbg !507

; <label>:8:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i8 1, metadata !508, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i8 1, metadata !515, metadata !DIExpression()), !dbg !522
  %9 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #10, !dbg !523
  call void @llvm.dbg.value(metadata %struct.avctp* %9, metadata !517, metadata !DIExpression()), !dbg !524
  %10 = icmp eq %struct.avctp* %9, null, !dbg !525
  br i1 %10, label %11, label %108, !dbg !529

; <label>:11:                                     ; preds = %8
  %12 = tail call fastcc %struct.avctp* @__create_avctp_conn(i8* %0) #10, !dbg !530
  call void @llvm.dbg.value(metadata %struct.avctp* %12, metadata !517, metadata !DIExpression()), !dbg !524
  %13 = icmp eq %struct.avctp* %12, null, !dbg !532
  br i1 %13, label %108, label %14, !dbg !534

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 1, !dbg !535
  %16 = load i16, i16* %15, align 2, !dbg !535, !tbaa !537
  %17 = icmp eq i16 %16, 0, !dbg !538
  br i1 %17, label %18, label %108, !dbg !539

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !541, !tbaa !544
  %20 = and i8 %19, 32, !dbg !541
  %21 = icmp eq i8 %20, 0, !dbg !541
  br i1 %21, label %24, label %22, !dbg !545

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !546
  br label %24, !dbg !546

; <label>:24:                                     ; preds = %22, %18
  %25 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 6, !dbg !548
  %26 = bitcast [3 x i8]* %25 to i24*, !dbg !548
  %27 = load i24, i24* %26, align 1, !dbg !549
  %28 = or i24 %27, 128, !dbg !549
  store i24 %28, i24* %26, align 1, !dbg !549
  %29 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 0, i32 0, !dbg !550
  %30 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__avctp_packet_handler, i8* %29, i16 zeroext 23, i16 zeroext -1) #10, !dbg !551
  call void @llvm.dbg.value(metadata i8 %30, metadata !516, metadata !DIExpression()), !dbg !552
  %31 = load i24, i24* %26, align 1, !dbg !553
  %32 = and i24 %31, -113, !dbg !553
  %33 = or i24 %32, 16, !dbg !553
  store i24 %33, i24* %26, align 1, !dbg !553
  br label %108, !dbg !554

; <label>:34:                                     ; preds = %6
  %35 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !555
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !496, metadata !DIExpression()), !dbg !556
  %36 = icmp eq %struct.avctp* %35, null, !dbg !557
  br i1 %36, label %108, label %37, !dbg !559

; <label>:37:                                     ; preds = %34
  switch i32 %1, label %90 [
    i32 113, label %38
    i32 114, label %45
    i32 115, label %52
    i32 117, label %59
    i32 118, label %67
    i32 121, label %75
    i32 240, label %107
    i32 116, label %83
  ], !dbg !560

; <label>:38:                                     ; preds = %37
  %39 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !561
  %40 = load i32, i32* %39, align 4, !dbg !561, !tbaa !483
  %41 = and i32 %40, 64, !dbg !564
  %42 = icmp eq i32 %41, 0, !dbg !564
  br i1 %42, label %43, label %107, !dbg !565

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32 6, metadata !472, metadata !DIExpression()), !dbg !568
  %44 = or i32 %40, 64, !dbg !569
  store i32 %44, i32* %39, align 4, !dbg !569, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !570
  br label %107, !dbg !571

; <label>:45:                                     ; preds = %37
  %46 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !572
  %47 = load i32, i32* %46, align 4, !dbg !572, !tbaa !483
  %48 = and i32 %47, 32, !dbg !574
  %49 = icmp eq i32 %48, 0, !dbg !574
  br i1 %49, label %50, label %107, !dbg !575

; <label>:50:                                     ; preds = %45
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 5, metadata !472, metadata !DIExpression()), !dbg !578
  %51 = or i32 %47, 32, !dbg !579
  store i32 %51, i32* %46, align 4, !dbg !579, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !580
  br label %107, !dbg !581

; <label>:52:                                     ; preds = %37
  %53 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !582
  %54 = load i32, i32* %53, align 4, !dbg !582, !tbaa !483
  %55 = and i32 %54, 16, !dbg !584
  %56 = icmp eq i32 %55, 0, !dbg !584
  br i1 %56, label %57, label %107, !dbg !585

; <label>:57:                                     ; preds = %52
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i32 4, metadata !472, metadata !DIExpression()), !dbg !588
  %58 = or i32 %54, 16, !dbg !589
  store i32 %58, i32* %53, align 4, !dbg !589, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !590
  br label %107, !dbg !591

; <label>:59:                                     ; preds = %37
  %60 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !592
  %61 = load i32, i32* %60, align 4, !dbg !592, !tbaa !483
  %62 = and i32 %61, 1024, !dbg !594
  %63 = icmp eq i32 %62, 0, !dbg !594
  br i1 %63, label %64, label %107, !dbg !595

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 1, !dbg !596
  store i8 0, i8* %65, align 4, !dbg !597, !tbaa !598
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i32 10, metadata !472, metadata !DIExpression()), !dbg !601
  %66 = or i32 %61, 1024, !dbg !602
  store i32 %66, i32* %60, align 4, !dbg !602, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !603
  br label %107, !dbg !604

; <label>:67:                                     ; preds = %37
  %68 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !605
  %69 = load i32, i32* %68, align 4, !dbg !605, !tbaa !483
  %70 = and i32 %69, 2048, !dbg !607
  %71 = icmp eq i32 %70, 0, !dbg !607
  br i1 %71, label %72, label %107, !dbg !608

; <label>:72:                                     ; preds = %67
  %73 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 1, !dbg !609
  store i8 0, i8* %73, align 4, !dbg !610, !tbaa !598
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 11, metadata !472, metadata !DIExpression()), !dbg !613
  %74 = or i32 %69, 2048, !dbg !614
  store i32 %74, i32* %68, align 4, !dbg !614, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !615
  br label %107, !dbg !616

; <label>:75:                                     ; preds = %37
  %76 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !617
  %77 = load i32, i32* %76, align 4, !dbg !617, !tbaa !483
  %78 = and i32 %77, 4096, !dbg !619
  %79 = icmp eq i32 %78, 0, !dbg !619
  br i1 %79, label %80, label %107, !dbg !620

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 1, !dbg !621
  store i8 0, i8* %81, align 4, !dbg !622, !tbaa !598
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 12, metadata !472, metadata !DIExpression()), !dbg !625
  %82 = or i32 %77, 4096, !dbg !626
  store i32 %82, i32* %76, align 4, !dbg !626, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !627
  br label %107, !dbg !628

; <label>:83:                                     ; preds = %37
  %84 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 0, !dbg !629
  %85 = load i32, i32* %84, align 4, !dbg !629, !tbaa !483
  %86 = trunc i32 %85 to i8, !dbg !631
  %87 = icmp slt i8 %86, 0, !dbg !631
  br i1 %87, label %107, label %88, !dbg !632

; <label>:88:                                     ; preds = %83
  call void @llvm.dbg.value(metadata %struct.avctp* %35, metadata !471, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 7, metadata !472, metadata !DIExpression()), !dbg !635
  %89 = or i32 %85, 128, !dbg !636
  store i32 %89, i32* %84, align 4, !dbg !636, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !637
  br label %107, !dbg !638

; <label>:90:                                     ; preds = %37
  %91 = trunc i32 %1 to i8, !dbg !639
  %92 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 6, !dbg !640
  %93 = bitcast [3 x i8]* %92 to i24*, !dbg !640
  %94 = load i24, i24* %93, align 1, !dbg !641
  %95 = lshr i24 %94, 20, !dbg !641
  %96 = trunc i24 %95 to i8, !dbg !641
  %97 = add nuw nsw i8 %96, 1, !dbg !641
  %98 = zext i8 %97 to i24, !dbg !641
  %99 = shl i24 %98, 20, !dbg !641
  %100 = and i24 %94, 1048575, !dbg !641
  %101 = or i24 %99, %100, !dbg !641
  store i24 %101, i24* %93, align 1, !dbg !641
  %102 = zext i24 %95 to i32, !dbg !642
  %103 = getelementptr inbounds %struct.avctp, %struct.avctp* %35, i32 0, i32 5, i32 9, i32 %102, !dbg !642
  store i8 %91, i8* %103, align 1, !dbg !643, !tbaa !544
  %104 = and i8 %97, 15, !dbg !644
  %105 = icmp ugt i8 %104, 8, !dbg !646
  br i1 %105, label %106, label %107, !dbg !647

; <label>:106:                                    ; preds = %90
  store i24 %100, i24* %93, align 1, !dbg !648
  br label %107, !dbg !650

; <label>:107:                                    ; preds = %106, %90, %88, %83, %80, %75, %72, %67, %64, %59, %57, %52, %50, %45, %43, %38, %37
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !651
  br label %108, !dbg !652

; <label>:108:                                    ; preds = %107, %34, %24, %14, %11, %8, %3
  %109 = phi i32 [ -1000, %3 ], [ 0, %107 ], [ -1000, %34 ], [ 0, %8 ], [ 0, %11 ], [ 0, %14 ], [ 0, %24 ]
  ret i32 %109, !dbg !653
}

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.avctp* @__avctp_conn_for_addr(i8* nocapture readonly) unnamed_addr #3 section ".bt_stack_code" !dbg !655 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !659, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata %struct.avctp* %3, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata %struct.avctp* %3, metadata !660, metadata !DIExpression()), !dbg !662
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !663
  %3 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %2, i32 0, i32 3, i32 0, !dbg !663
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %2, i32 0, i32 3, i32 1
  br label %5, !dbg !665

; <label>:5:                                      ; preds = %16, %1
  %6 = phi %struct.avctp* [ %3, %1 ], [ %17, %16 ]
  %7 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 0, i32 0, !dbg !667
  %8 = tail call i32 @memcmp(i8* %7, i8* %0, i32 6) #8, !dbg !671
  %9 = icmp eq i32 %8, 0, !dbg !671
  br i1 %9, label %10, label %16, !dbg !672

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 6, !dbg !673
  %12 = bitcast [3 x i8]* %11 to i24*, !dbg !673
  %13 = load i24, i24* %12, align 1, !dbg !673
  %14 = trunc i24 %13 to i16, !dbg !675
  %15 = icmp slt i16 %14, 0, !dbg !675
  br i1 %15, label %19, label %16, !dbg !676

; <label>:16:                                     ; preds = %10, %5
  %17 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 1, !dbg !678
  call void @llvm.dbg.value(metadata %struct.avctp* %17, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata %struct.avctp* %17, metadata !660, metadata !DIExpression()), !dbg !662
  %18 = icmp ult %struct.avctp* %17, %4, !dbg !680
  br i1 %18, label %5, label %19, !dbg !665, !llvm.loop !682

; <label>:19:                                     ; preds = %16, %10
  %20 = phi %struct.avctp* [ %6, %10 ], [ null, %16 ]
  ret %struct.avctp* %20, !dbg !684
}

; Function Attrs: nounwind optsize
define hidden i32 @auto_pause_music_player(i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !689, metadata !DIExpression()), !dbg !691
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !692, !tbaa !502
  %3 = icmp eq %struct.avctp_stack_t* %2, null, !dbg !694
  br i1 %3, label %18, label %4, !dbg !695

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !696
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !690, metadata !DIExpression()), !dbg !697
  %6 = icmp eq %struct.avctp* %5, null, !dbg !698
  br i1 %6, label %18, label %7, !dbg !700

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %5, i32 0, i32 5, i32 6, !dbg !701
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !701
  %10 = load i24, i24* %9, align 1, !dbg !701
  %11 = trunc i24 %10 to i16, !dbg !703
  %12 = icmp sgt i16 %11, -1, !dbg !704
  %13 = and i24 %10, 30720, !dbg !704
  %14 = icmp ne i24 %13, 18432, !dbg !704
  %15 = or i1 %14, %12, !dbg !704
  br i1 %15, label %18, label %16, !dbg !704

; <label>:16:                                     ; preds = %7
  %17 = tail call i32 @avctp_try_send(i8* %0, i32 70, i32 undef) #8, !dbg !705
  br label %18, !dbg !709

; <label>:18:                                     ; preds = %16, %7, %4, %1
  %19 = phi i32 [ -1, %1 ], [ %17, %16 ], [ -1, %4 ], [ -1, %7 ]
  ret i32 %19, !dbg !710
}

; Function Attrs: nounwind optsize
define hidden i32 @avctp_reset_pending_release_cnt(i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !714, metadata !DIExpression()), !dbg !716
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !717, !tbaa !502
  %3 = icmp eq %struct.avctp_stack_t* %2, null, !dbg !719
  br i1 %3, label %12, label %4, !dbg !720

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !721
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !715, metadata !DIExpression()), !dbg !722
  %6 = icmp eq %struct.avctp* %5, null, !dbg !723
  br i1 %6, label %12, label %7, !dbg !725

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %5, i32 0, i32 5, i32 1, !dbg !726
  %9 = load i8, i8* %8, align 4, !dbg !726, !tbaa !598
  %10 = icmp eq i8 %9, 0, !dbg !728
  br i1 %10, label %12, label %11, !dbg !729

; <label>:11:                                     ; preds = %7
  store i8 30, i8* %8, align 4, !dbg !730, !tbaa !598
  br label %12, !dbg !732

; <label>:12:                                     ; preds = %11, %7, %4, %1
  %13 = phi i32 [ -1, %1 ], [ 1, %11 ], [ -1, %4 ], [ 0, %7 ]
  ret i32 %13, !dbg !733
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @get_music_volume(i8* nocapture readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !737, metadata !DIExpression()), !dbg !739
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !740, !tbaa !502
  %3 = icmp eq %struct.avctp_stack_t* %2, null, !dbg !742
  br i1 %3, label %11, label %4, !dbg !743

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !744
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !738, metadata !DIExpression()), !dbg !745
  %6 = icmp eq %struct.avctp* %5, null, !dbg !746
  br i1 %6, label %11, label %7, !dbg !748

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %5, i32 0, i32 5, i32 7, !dbg !749
  %9 = load i8, i8* %8, align 4, !dbg !749, !tbaa !750
  %10 = zext i8 %9 to i32, !dbg !751
  br label %11, !dbg !752

; <label>:11:                                     ; preds = %7, %4, %1
  %12 = phi i32 [ -1, %1 ], [ %10, %7 ], [ 255, %4 ]
  ret i32 %12, !dbg !753
}

; Function Attrs: nounwind optsize
define hidden i32 @auto_start_music_player(i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !759, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i8 %1, metadata !760, metadata !DIExpression()), !dbg !763
  %3 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !764, !tbaa !502
  %4 = icmp eq %struct.avctp_stack_t* %3, null, !dbg !766
  br i1 %4, label %33, label %5, !dbg !767

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !768
  call void @llvm.dbg.value(metadata %struct.avctp* %6, metadata !761, metadata !DIExpression()), !dbg !769
  %7 = icmp eq %struct.avctp* %6, null, !dbg !770
  br i1 %7, label %33, label %8, !dbg !772

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 6, !dbg !773
  %10 = bitcast [3 x i8]* %9 to i24*, !dbg !773
  %11 = load i24, i24* %10, align 1, !dbg !773
  %12 = trunc i24 %11 to i16, !dbg !775
  %13 = icmp slt i16 %12, 0, !dbg !775
  br i1 %13, label %14, label %27, !dbg !776

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 1, !dbg !777
  %16 = load i16, i16* %15, align 2, !dbg !777, !tbaa !537
  %17 = icmp eq i16 %16, 0, !dbg !779
  br i1 %17, label %27, label %18, !dbg !780

; <label>:18:                                     ; preds = %14
  %19 = icmp eq i8 %1, 0, !dbg !782
  br i1 %19, label %22, label %20, !dbg !785

; <label>:20:                                     ; preds = %18
  %21 = tail call i32 @avctp_try_send(i8* %0, i32 68, i32 undef) #8, !dbg !786
  br label %33, !dbg !788

; <label>:22:                                     ; preds = %18
  %23 = and i24 %11, 14336, !dbg !789
  %24 = icmp eq i24 %23, 2048, !dbg !791
  br i1 %24, label %33, label %25, !dbg !792

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @avctp_try_send(i8* %0, i32 68, i32 undef) #8, !dbg !793
  br label %33, !dbg !795

; <label>:27:                                     ; preds = %14, %8
  %28 = load i8, i8* @profile_debug_enable, align 1, !dbg !796, !tbaa !544
  %29 = and i8 %28, 1, !dbg !796
  %30 = icmp eq i8 %29, 0, !dbg !796
  br i1 %30, label %33, label %31, !dbg !799

; <label>:31:                                     ; preds = %27
  %32 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str, i32 0, i32 0)), !dbg !800
  br label %33, !dbg !800

; <label>:33:                                     ; preds = %31, %27, %25, %22, %20, %5, %2
  %34 = phi i32 [ -1, %2 ], [ %21, %20 ], [ %26, %25 ], [ -1, %5 ], [ -1, %22 ], [ -1, %27 ], [ -1, %31 ]
  ret i32 %34, !dbg !802
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @avctp_timer_init(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !803 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !808
  %2 = load i32, i32* getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @avctp_conn_timer, i32 0, i32 1), align 4, !dbg !809, !tbaa !811
  %3 = icmp eq i32 %2, 0, !dbg !814
  br i1 %3, label %4, label %9, !dbg !815

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @avctp_conn_timer, i32 0, i32 2), align 4, !dbg !816
  %6 = and i32 %0, 65535, !dbg !816
  %7 = and i32 %5, -65536, !dbg !816
  %8 = or i32 %7, %6, !dbg !816
  store i32 %8, i32* getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @avctp_conn_timer, i32 0, i32 2), align 4, !dbg !816
  store void (%struct.btstack_timer_source*)* @avctp_half_second_detect, void (%struct.btstack_timer_source*)** getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @avctp_conn_timer, i32 0, i32 3), align 4, !dbg !818, !tbaa !819
  tail call void @btstack_set_timer(%struct.btstack_timer_source* nonnull @avctp_conn_timer, i16 signext 130) #10, !dbg !820
  br label %14, !dbg !821

; <label>:9:                                      ; preds = %1
  %10 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !822, !tbaa !544
  %11 = icmp slt i8 %10, 0, !dbg !822
  br i1 %11, label %12, label %14, !dbg !825

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.13, i32 0, i32 0)), !dbg !826
  br label %14, !dbg !826

; <label>:14:                                     ; preds = %12, %9, %4
  ret void, !dbg !828
}

; Function Attrs: nounwind optsize
define internal void @avctp_half_second_detect(%struct.btstack_timer_source* nocapture readnone) #0 section ".bt_stack_code" !dbg !829 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !834, metadata !DIExpression()), !dbg !836
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !837, !tbaa !502
  call void @llvm.dbg.value(metadata %struct.avctp* %3, metadata !835, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata %struct.avctp* %3, metadata !835, metadata !DIExpression()), !dbg !839
  %3 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %2, i32 0, i32 3, i32 0, !dbg !837
  br label %4, !dbg !840

; <label>:4:                                      ; preds = %24, %1
  %5 = phi %struct.avctp_stack_t* [ %25, %24 ], [ %2, %1 ]
  %6 = phi %struct.avctp* [ %26, %24 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 6, !dbg !840
  %8 = bitcast [3 x i8]* %7 to i24*, !dbg !840
  %9 = load i24, i24* %8, align 1, !dbg !840
  %10 = trunc i24 %9 to i16, !dbg !844
  %11 = icmp slt i16 %10, 0, !dbg !844
  br i1 %11, label %12, label %24, !dbg !845

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 1, !dbg !846
  %14 = load i16, i16* %13, align 2, !dbg !846, !tbaa !537
  %15 = icmp eq i16 %14, 0, !dbg !849
  br i1 %15, label %16, label %24, !dbg !850

; <label>:16:                                     ; preds = %12
  %17 = or i24 %9, 128, !dbg !851
  store i24 %17, i24* %8, align 1, !dbg !851
  %18 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 0, i32 0, !dbg !853
  %19 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__avctp_packet_handler, i8* %18, i16 zeroext 23, i16 zeroext -1) #10, !dbg !854
  %20 = load i24, i24* %8, align 1, !dbg !855
  %21 = and i24 %20, -113, !dbg !855
  %22 = or i24 %21, 16, !dbg !855
  store i24 %22, i24* %8, align 1, !dbg !855
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !856
  %23 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !tbaa !502
  br label %24, !dbg !857

; <label>:24:                                     ; preds = %16, %12, %4
  %25 = phi %struct.avctp_stack_t* [ %5, %4 ], [ %23, %16 ], [ %5, %12 ], !dbg !858
  %26 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 1, !dbg !860
  call void @llvm.dbg.value(metadata %struct.avctp* %26, metadata !835, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata %struct.avctp* %26, metadata !835, metadata !DIExpression()), !dbg !839
  %27 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %25, i32 0, i32 3, i32 1, !dbg !858
  %28 = icmp ult %struct.avctp* %26, %27, !dbg !858
  br i1 %28, label %4, label %29, !dbg !862, !llvm.loop !864

; <label>:29:                                     ; preds = %24
  ret void, !dbg !866
}

; Function Attrs: optsize
declare void @btstack_set_timer(%struct.btstack_timer_source*, i16 signext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @remove_avctp_timer() local_unnamed_addr #0 section ".bt_stack_code" !dbg !867 {
  %1 = load i32, i32* getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @avctp_conn_timer, i32 0, i32 1), align 4, !dbg !871, !tbaa !811
  %2 = icmp eq i32 %1, 0, !dbg !873
  br i1 %2, label %5, label %3, !dbg !874

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* nonnull @avctp_conn_timer) #10, !dbg !875
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.btstack_timer_source* @avctp_conn_timer to i8*), i8 0, i32 20, i32 4, i1 false), !dbg !877
  br label %5, !dbg !878

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !879
}

; Function Attrs: optsize
declare i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define hidden void @avctp_init(%struct.avctp_stack_t*, void (i8, i8)* nocapture readnone, void (i8, i8)* nocapture readnone, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !880 {
  call void @llvm.dbg.value(metadata %struct.avctp_stack_t* %0, metadata !885, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata void (i8, i8)* %1, metadata !886, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata void (i8, i8)* %2, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i8* %3, metadata !888, metadata !DIExpression()), !dbg !893
  store %struct.avctp_stack_t* %0, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !894, !tbaa !502
  store i1 false, i1* @avctp_run_loop_busy, align 4
  %5 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !895, !tbaa !544
  %6 = icmp slt i8 %5, 0, !dbg !895
  br i1 %6, label %7, label %9, !dbg !897

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 80) #8, !dbg !898
  br label %9, !dbg !898

; <label>:9:                                      ; preds = %7, %4
  %10 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !900, !tbaa !502
  %11 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %10, i32 0, i32 3, i32 0, i32 0, i32 0, !dbg !902
  tail call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 64, i32 4, i1 false) #9, !dbg !911
  %12 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %10, i32 0, i32 3, i32 0, i32 5, i32 6, !dbg !912
  %13 = bitcast [3 x i8]* %12 to i24*, !dbg !912
  store i24 0, i24* %13, align 1, !dbg !913
  %14 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %10, i32 0, i32 3, i32 0, i32 5, i32 8, !dbg !914
  store i8 0, i8* %14, align 1, !dbg !915, !tbaa !408
  %15 = tail call zeroext i16 @l2cap_max_mtu() #10, !dbg !916
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__avctp_packet_handler, i16 zeroext 23, i16 zeroext %15) #10, !dbg !917
  %16 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !919, !tbaa !502
  %17 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %16, i32 0, i32 4, !dbg !920
  tail call void @stack_run_loop_register(%struct.run_loop* %17, void (%struct.run_loop*)* nonnull @avctp_send_key_loop, i8* %3) #10, !dbg !921
  ret void, !dbg !922
}

; Function Attrs: optsize
declare void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @__avctp_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".bt_stack_code" !dbg !923 {
  %5 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !936, metadata !DIExpression()), !dbg !945
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [100 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %8, metadata !962, metadata !DIExpression()), !dbg !988
  %9 = alloca i64, align 4
  %10 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %10, metadata !957, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8 %0, metadata !927, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i16 %1, metadata !928, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %2, metadata !929, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i16 %3, metadata !930, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i16 0, metadata !933, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i16 0, metadata !934, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i16 0, metadata !935, metadata !DIExpression()), !dbg !997
  %11 = icmp eq i8 %0, 4, !dbg !998
  br i1 %11, label %12, label %17, !dbg !1000

; <label>:12:                                     ; preds = %4
  %13 = load i8, i8* %2, align 1, !dbg !1001, !tbaa !544
  %14 = icmp eq i8 %13, 116, !dbg !1003
  br i1 %14, label %279, label %15, !dbg !1003

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i8 %0, metadata !953, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i16 %1, metadata !954, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %2, metadata !955, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i16 %3, metadata !956, metadata !DIExpression()), !dbg !1007
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i32 0, i32 0, !dbg !1008
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %16) #9, !dbg !1008
  call void @llvm.dbg.value(metadata i16 0, metadata !958, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i16 0, metadata !959, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i16 0, metadata !960, metadata !DIExpression()), !dbg !1011
  switch i8 %13, label %277 [
    i8 112, label %183
    i8 113, label %186
    i8 114, label %206
    i8 121, label %242
  ], !dbg !1012

; <label>:17:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8 %0, metadata !953, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i16 %1, metadata !954, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %2, metadata !955, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i16 %3, metadata !956, metadata !DIExpression()), !dbg !1007
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i32 0, i32 0, !dbg !1008
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %18) #9, !dbg !1008
  call void @llvm.dbg.value(metadata i16 0, metadata !958, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i16 0, metadata !959, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i16 0, metadata !960, metadata !DIExpression()), !dbg !1011
  %19 = icmp eq i8 %0, 6, !dbg !1013
  br i1 %19, label %20, label %277, !dbg !1013

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i16 %1, metadata !965, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8* %2, metadata !966, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i16 %3, metadata !967, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i16 %1, metadata !1017, metadata !DIExpression()), !dbg !1023
  %21 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1025
  %22 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %21, i32 0, i32 3, i32 0, !dbg !1025
  %23 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %21, i32 0, i32 3, i32 1
  br label %24, !dbg !1027

; <label>:24:                                     ; preds = %35, %20
  %25 = phi %struct.avctp* [ %22, %20 ], [ %36, %35 ]
  %26 = getelementptr inbounds %struct.avctp, %struct.avctp* %25, i32 0, i32 1, !dbg !1029
  %27 = load i16, i16* %26, align 2, !dbg !1029, !tbaa !537
  %28 = icmp eq i16 %27, %1, !dbg !1033
  br i1 %28, label %29, label %35, !dbg !1034

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.avctp, %struct.avctp* %25, i32 0, i32 5, i32 6, !dbg !1035
  %31 = bitcast [3 x i8]* %30 to i24*, !dbg !1035
  %32 = load i24, i24* %31, align 1, !dbg !1035
  %33 = trunc i24 %32 to i16, !dbg !1037
  %34 = icmp slt i16 %33, 0, !dbg !1037
  br i1 %34, label %38, label %35, !dbg !1038

; <label>:35:                                     ; preds = %29, %24
  %36 = getelementptr inbounds %struct.avctp, %struct.avctp* %25, i32 1, !dbg !1040
  call void @llvm.dbg.value(metadata %struct.avctp* %36, metadata !1022, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata %struct.avctp* %36, metadata !1022, metadata !DIExpression()), !dbg !1042
  %37 = icmp ult %struct.avctp* %36, %23, !dbg !1043
  br i1 %37, label %24, label %38, !dbg !1027, !llvm.loop !1045

; <label>:38:                                     ; preds = %35, %29
  %39 = phi %struct.avctp* [ %25, %29 ], [ null, %35 ]
  call void @llvm.dbg.value(metadata %struct.avctp* %39, metadata !968, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #9, !dbg !1050
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !1051
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #9, !dbg !1052
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i32 0, i32 0, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %40) #9, !dbg !1053
  call void @llvm.dbg.value(metadata i8* null, metadata !975, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 0, metadata !976, metadata !DIExpression()), !dbg !1055
  %41 = icmp eq %struct.avctp* %39, null, !dbg !1056
  br i1 %41, label %182, label %42, !dbg !1058

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i16 6, metadata !973, metadata !DIExpression()), !dbg !1059
  %43 = add i16 %3, -6, !dbg !1060
  call void @llvm.dbg.value(metadata i16 %43, metadata !974, metadata !DIExpression()), !dbg !1061
  %44 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !1062
  %45 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %45, metadata !966, metadata !DIExpression()), !dbg !1015
  %46 = bitcast i8* %44 to i16*, !dbg !1064
  %47 = load i16, i16* %46, align 1, !dbg !1064
  %48 = trunc i16 %47 to i8, !dbg !1064
  %49 = and i8 %48, 15, !dbg !1064
  call void @llvm.dbg.value(metadata i8 %49, metadata !971, metadata !DIExpression()), !dbg !1049
  store i8 %49, i8* %6, align 1, !dbg !1065, !tbaa !544
  %50 = lshr i16 %47, 11, !dbg !1066
  %51 = trunc i16 %50 to i8, !dbg !1066
  call void @llvm.dbg.value(metadata i8 %51, metadata !972, metadata !DIExpression()), !dbg !1051
  store i8 %51, i8* %7, align 1, !dbg !1067, !tbaa !544
  call void @llvm.memset.p0i8.i32(i8* nonnull %40, i8 0, i32 100, i32 1, i1 false) #9, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %45, metadata !975, metadata !DIExpression()), !dbg !1054
  %52 = load i8, i8* %2, align 1, !dbg !1069
  %53 = and i8 %52, 12, !dbg !1069
  %54 = icmp eq i8 %53, 0, !dbg !1070
  br i1 %54, label %55, label %182, !dbg !1071

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !1072
  %57 = bitcast i8* %56 to i16*, !dbg !1072
  %58 = load i16, i16* %57, align 1, !dbg !1072, !tbaa !1073
  %59 = zext i16 %58 to i32, !dbg !1072
  %60 = shl nuw nsw i32 %59, 8, !dbg !1072
  %61 = and i32 %60, 65280, !dbg !1072
  %62 = lshr i32 %59, 8, !dbg !1072
  %63 = or i32 %61, %62, !dbg !1072
  %64 = icmp eq i32 %63, 4366, !dbg !1075
  br i1 %64, label %65, label %176, !dbg !1076

; <label>:65:                                     ; preds = %55
  %66 = and i8 %52, 2, !dbg !1077
  %67 = icmp eq i8 %66, 0, !dbg !1080
  %68 = getelementptr inbounds i8, i8* %2, i32 5
  %69 = load i8, i8* %68, align 1, !tbaa !1081
  br i1 %67, label %94, label %70, !dbg !1083

; <label>:70:                                     ; preds = %65
  switch i8 %69, label %182 [
    i8 0, label %71
    i8 124, label %80
  ], !dbg !1084

; <label>:71:                                     ; preds = %70
  %72 = zext i16 %43 to i32, !dbg !1086
  %73 = icmp ult i16 %43, 90, !dbg !1089
  br i1 %73, label %74, label %77, !dbg !1090

; <label>:74:                                     ; preds = %71
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %40, i8* nonnull %45, i32 %72, i32 1, i1 false) #9, !dbg !1091
  %75 = lshr i8 %52, 4, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !1051
  %76 = call i32 @handle_vendordep_pdu_res(%struct.avctp* nonnull %39, i8 zeroext %75, i8* nonnull %6, i8* nonnull %7, i8* nonnull %40, i32 %72) #10, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %76, metadata !976, metadata !DIExpression()), !dbg !1055
  br label %182, !dbg !1095

; <label>:77:                                     ; preds = %71
  %78 = lshr i8 %52, 4, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !1051
  %79 = call i32 @handle_vendordep_pdu_res(%struct.avctp* nonnull %39, i8 zeroext %78, i8* nonnull %6, i8* nonnull %7, i8* nonnull %45, i32 %72) #10, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %79, metadata !976, metadata !DIExpression()), !dbg !1055
  br label %182

; <label>:80:                                     ; preds = %70
  call void @llvm.dbg.value(metadata i8 %49, metadata !971, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8 0, metadata !1099, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 0, metadata !1108, metadata !DIExpression()), !dbg !1112
  %81 = icmp eq i8 %49, 9, !dbg !1113
  br i1 %81, label %82, label %182, !dbg !1115

; <label>:82:                                     ; preds = %80
  %83 = load i8, i8* %45, align 1, !dbg !1116, !tbaa !544
  %84 = icmp slt i8 %83, 0, !dbg !1118
  br i1 %84, label %182, label %85, !dbg !1119

; <label>:85:                                     ; preds = %82
  %86 = and i8 %83, -2, !dbg !1120
  %87 = icmp eq i8 %86, 72, !dbg !1120
  br i1 %87, label %88, label %92, !dbg !1120

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds %struct.avctp, %struct.avctp* %39, i32 0, i32 5, i32 1, !dbg !1122
  store i8 30, i8* %89, align 4, !dbg !1124, !tbaa !598
  %90 = load i8, i8* %45, align 1, !dbg !1125, !tbaa !544
  %91 = getelementptr inbounds %struct.avctp, %struct.avctp* %39, i32 0, i32 5, i32 2, !dbg !1126
  store i8 %90, i8* %91, align 1, !dbg !1127, !tbaa !1128
  br label %182, !dbg !1129

; <label>:92:                                     ; preds = %85
  %93 = tail call fastcc i32 @avctp_passthrough_release(%struct.avctp* nonnull %39, i8 zeroext %83) #10, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %93, metadata !1108, metadata !DIExpression()), !dbg !1112
  br label %182, !dbg !1131

; <label>:94:                                     ; preds = %65
  switch i8 %69, label %182 [
    i8 0, label %95
    i8 48, label %109
    i8 49, label %124
    i8 124, label %137
  ], !dbg !1132

; <label>:95:                                     ; preds = %94
  %96 = zext i16 %43 to i32, !dbg !1134
  %97 = icmp ult i16 %43, 90, !dbg !1137
  br i1 %97, label %98, label %99, !dbg !1138

; <label>:98:                                     ; preds = %95
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %40, i8* nonnull %45, i32 %96, i32 1, i1 false) #9, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !1051
  call void @llvm.dbg.value(metadata i8* %40, metadata !975, metadata !DIExpression()), !dbg !1054
  br label %99, !dbg !1141

; <label>:99:                                     ; preds = %98, %95
  %100 = phi i8* [ %40, %98 ], [ %45, %95 ]
  %101 = lshr i8 %52, 4
  %102 = call i32 @handle_vendordep_pdu(%struct.avctp* nonnull %39, i8 zeroext %101, i8* nonnull %6, i8* nonnull %7, i8* nonnull %100, i32 %96) #10, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %102, metadata !976, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %100, metadata !975, metadata !DIExpression()), !dbg !1054
  %103 = load i8, i8* %6, align 1, !dbg !1144, !tbaa !544
  call void @llvm.dbg.value(metadata i8 %103, metadata !971, metadata !DIExpression()), !dbg !1049
  %104 = load i16, i16* %46, align 1, !dbg !1145
  %105 = and i8 %103, 15, !dbg !1145
  %106 = zext i8 %105 to i16, !dbg !1145
  %107 = and i16 %104, -16, !dbg !1145
  %108 = or i16 %107, %106, !dbg !1145
  store i16 %108, i16* %46, align 1, !dbg !1145
  br label %162, !dbg !1146

; <label>:109:                                    ; preds = %94
  %110 = zext i16 %43 to i32, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.dbg.value(metadata %struct.avctp* null, metadata !1148, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i8 0, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8* null, metadata !1155, metadata !DIExpression()), !dbg !1161
  %111 = icmp eq i8 %49, 1, !dbg !1162
  br i1 %111, label %113, label %112, !dbg !1164

; <label>:112:                                    ; preds = %109
  store i8 10, i8* %6, align 1, !dbg !1165, !tbaa !544
  br label %119, !dbg !1167

; <label>:113:                                    ; preds = %109
  store i8 12, i8* %6, align 1, !dbg !1168, !tbaa !544
  %114 = icmp eq i16 %43, 0, !dbg !1169
  br i1 %114, label %119, label %115, !dbg !1171

; <label>:115:                                    ; preds = %113
  store i8 7, i8* %45, align 1, !dbg !1172, !tbaa !544
  %116 = icmp eq i16 %43, 1, !dbg !1174
  br i1 %116, label %119, label %117, !dbg !1176

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !1177
  store i8 72, i8* %118, align 1, !dbg !1179, !tbaa !544
  br label %119, !dbg !1180

; <label>:119:                                    ; preds = %117, %115, %113, %112
  %120 = phi i16 [ 10, %112 ], [ 12, %117 ], [ 12, %115 ], [ 12, %113 ]
  %121 = phi i32 [ 0, %112 ], [ %110, %117 ], [ 1, %115 ], [ 0, %113 ]
  call void @llvm.dbg.value(metadata i32 %121, metadata !976, metadata !DIExpression()), !dbg !1055
  %122 = and i16 %47, -16, !dbg !1181
  %123 = or i16 %120, %122, !dbg !1181
  store i16 %123, i16* %46, align 1, !dbg !1181
  br label %162, !dbg !1182

; <label>:124:                                    ; preds = %94
  %125 = zext i16 %43 to i32, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.dbg.value(metadata %struct.avctp* null, metadata !1184, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8* null, metadata !1189, metadata !DIExpression()), !dbg !1195
  %126 = icmp eq i8 %49, 1, !dbg !1196
  br i1 %126, label %128, label %127, !dbg !1198

; <label>:127:                                    ; preds = %124
  store i8 10, i8* %6, align 1, !dbg !1199, !tbaa !544
  br label %132, !dbg !1201

; <label>:128:                                    ; preds = %124
  store i8 12, i8* %6, align 1, !dbg !1202, !tbaa !544
  %129 = icmp ugt i16 %43, 1, !dbg !1203
  br i1 %129, label %130, label %132, !dbg !1205

; <label>:130:                                    ; preds = %128
  %131 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !1206
  store i8 72, i8* %131, align 1, !dbg !1208, !tbaa !544
  br label %132, !dbg !1209

; <label>:132:                                    ; preds = %130, %128, %127
  %133 = phi i16 [ 10, %127 ], [ 12, %130 ], [ 12, %128 ]
  %134 = phi i32 [ 0, %127 ], [ %125, %130 ], [ %125, %128 ]
  call void @llvm.dbg.value(metadata i32 %134, metadata !976, metadata !DIExpression()), !dbg !1055
  %135 = and i16 %47, -16, !dbg !1210
  %136 = or i16 %133, %135, !dbg !1210
  store i16 %136, i16* %46, align 1, !dbg !1210
  br label %162, !dbg !1211

; <label>:137:                                    ; preds = %94
  %138 = zext i16 %43 to i32, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !1051
  call void @llvm.dbg.value(metadata i8 0, metadata !1213, metadata !DIExpression()), !dbg !1224
  %139 = icmp eq i8 %49, 0, !dbg !1226
  %140 = icmp eq i8 %51, 9, !dbg !1228
  %141 = and i1 %139, %140, !dbg !1230
  br i1 %141, label %142, label %151, !dbg !1230

; <label>:142:                                    ; preds = %137
  %143 = icmp eq i16 %43, 0, !dbg !1231
  br i1 %143, label %151, label %144, !dbg !1233

; <label>:144:                                    ; preds = %142
  %145 = load i8, i8* %45, align 1, !dbg !1234, !tbaa !544
  %146 = icmp slt i8 %145, 0, !dbg !1236
  br i1 %146, label %151, label %147, !dbg !1237

; <label>:147:                                    ; preds = %144
  %148 = zext i8 %145 to i32, !dbg !1234
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1238
  %149 = getelementptr inbounds %struct.avctp, %struct.avctp* %39, i32 0, i32 0, i32 0, !dbg !1239
  tail call void @bt_event_update_to_user(i8* %149, i32 1129270784, i8 zeroext 37, i32 %148) #10, !dbg !1241
  %150 = load i16, i16* %46, align 1
  br label %151

; <label>:151:                                    ; preds = %147, %144, %142, %137
  %152 = phi i16 [ %47, %137 ], [ %47, %144 ], [ %150, %147 ], [ %47, %142 ], !dbg !1242
  %153 = phi i8 [ 10, %137 ], [ 9, %144 ], [ 9, %147 ], [ 9, %142 ]
  %154 = phi i32 [ 0, %137 ], [ %138, %144 ], [ %138, %147 ], [ 0, %142 ]
  store i8 %153, i8* %6, align 1, !dbg !1243, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %154, metadata !976, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8 %153, metadata !971, metadata !DIExpression()), !dbg !1049
  %155 = zext i8 %153 to i16, !dbg !1242
  %156 = and i16 %152, -16, !dbg !1242
  %157 = or i16 %155, %156, !dbg !1242
  store i16 %157, i16* %46, align 1, !dbg !1242
  %158 = load i8, i8* %45, align 1, !dbg !1245, !tbaa !544
  %159 = icmp slt i8 %158, 0, !dbg !1247
  br i1 %159, label %160, label %162, !dbg !1248

; <label>:160:                                    ; preds = %151
  %161 = and i8 %158, 127, !dbg !1249
  tail call void @emitter_rx_avctp_opid_deal(i8 zeroext %161, i8 zeroext 0) #10, !dbg !1251
  br label %162, !dbg !1252

; <label>:162:                                    ; preds = %160, %151, %132, %119, %99
  %163 = phi i8* [ %45, %160 ], [ %45, %151 ], [ %45, %132 ], [ %45, %119 ], [ %100, %99 ]
  %164 = phi i32 [ %154, %160 ], [ %154, %151 ], [ %134, %132 ], [ %121, %119 ], [ %102, %99 ]
  call void @llvm.dbg.value(metadata i32 %164, metadata !976, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %163, metadata !975, metadata !DIExpression()), !dbg !1054
  %165 = icmp eq i32 %164, 0, !dbg !1253
  br i1 %165, label %182, label %166, !dbg !1255

; <label>:166:                                    ; preds = %162
  %167 = load i8, i8* %2, align 1, !dbg !1256
  %168 = lshr i8 %167, 4, !dbg !1256
  %169 = load i16, i16* %46, align 1, !dbg !1258
  %170 = trunc i16 %169 to i8, !dbg !1258
  %171 = and i8 %170, 15, !dbg !1258
  %172 = lshr i16 %169, 11, !dbg !1259
  %173 = trunc i16 %172 to i8, !dbg !1259
  %174 = load i8, i8* %68, align 1, !dbg !1260, !tbaa !1081
  %175 = call fastcc i32 @avctp_send(%struct.avctp* nonnull %39, i8 zeroext %168, i8 zeroext 1, i8 zeroext %171, i8 zeroext %173, i8 zeroext %174, i8* nonnull %163, i32 %164) #10, !dbg !1261
  br label %182, !dbg !1262

; <label>:176:                                    ; preds = %55
  call void @llvm.dbg.value(metadata i16 0, metadata !974, metadata !DIExpression()), !dbg !1061
  %177 = and i8 %52, -16, !dbg !1263
  %178 = or i8 %177, 3, !dbg !1264
  store i8 %178, i8* %2, align 1, !dbg !1264
  %179 = getelementptr inbounds %struct.avctp, %struct.avctp* %39, i32 0, i32 5, i32 8, !dbg !1265
  store i8 3, i8* %179, align 1, !dbg !1266, !tbaa !408
  %180 = bitcast i64* %9 to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %180) #9, !dbg !1267
  store i64 0, i64* %9, align 4, !dbg !1268
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %180, i8* nonnull %2, i32 3, i32 1, i1 false) #9, !dbg !1269
  %181 = call fastcc i32 @avctp_cmd_try_send_no_resend(%struct.avctp* nonnull %39, i8* nonnull %180) #10, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %180) #9, !dbg !1271
  br label %182

; <label>:182:                                    ; preds = %176, %166, %162, %94, %92, %88, %82, %80, %77, %74, %70, %42, %38
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %40) #9, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %7, metadata !972, metadata !DIExpression(DW_OP_deref)), !dbg !1051
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #9, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %6, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !1049
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #9, !dbg !1272
  br label %277, !dbg !1273

; <label>:183:                                    ; preds = %15
  %184 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1274
  %185 = load i8, i8* %184, align 1, !dbg !1274, !tbaa !544
  tail call fastcc void @avctp_channel_open(i8 zeroext %185, i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #10, !dbg !1275
  br label %277, !dbg !1276

; <label>:186:                                    ; preds = %15
  call void @llvm.dbg.value(metadata i16 %1, metadata !1017, metadata !DIExpression()), !dbg !1277
  %187 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1279
  %188 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %187, i32 0, i32 3, i32 0, !dbg !1279
  %189 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %187, i32 0, i32 3, i32 1
  br label %190, !dbg !1280

; <label>:190:                                    ; preds = %201, %186
  %191 = phi %struct.avctp* [ %188, %186 ], [ %202, %201 ]
  %192 = getelementptr inbounds %struct.avctp, %struct.avctp* %191, i32 0, i32 1, !dbg !1281
  %193 = load i16, i16* %192, align 2, !dbg !1281, !tbaa !537
  %194 = icmp eq i16 %193, %1, !dbg !1282
  br i1 %194, label %195, label %201, !dbg !1283

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds %struct.avctp, %struct.avctp* %191, i32 0, i32 5, i32 6, !dbg !1284
  %197 = bitcast [3 x i8]* %196 to i24*, !dbg !1284
  %198 = load i24, i24* %197, align 1, !dbg !1284
  %199 = trunc i24 %198 to i16, !dbg !1285
  %200 = icmp slt i16 %199, 0, !dbg !1285
  br i1 %200, label %204, label %201, !dbg !1286

; <label>:201:                                    ; preds = %195, %190
  %202 = getelementptr inbounds %struct.avctp, %struct.avctp* %191, i32 1, !dbg !1287
  call void @llvm.dbg.value(metadata %struct.avctp* %202, metadata !1022, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata %struct.avctp* %202, metadata !1022, metadata !DIExpression()), !dbg !1288
  %203 = icmp ult %struct.avctp* %202, %189, !dbg !1289
  br i1 %203, label %190, label %204, !dbg !1280, !llvm.loop !1045

; <label>:204:                                    ; preds = %201, %195
  %205 = phi %struct.avctp* [ %191, %195 ], [ null, %201 ]
  tail call fastcc void @__free_avctp_conn(%struct.avctp* %205, i8 zeroext 1) #10, !dbg !1290
  br label %277, !dbg !1292

; <label>:206:                                    ; preds = %15
  %207 = tail call i32 @__bt_profile_enable(i32 8) #10, !dbg !1293
  %208 = icmp eq i32 %207, 0, !dbg !1293
  br i1 %208, label %241, label %209, !dbg !1294

; <label>:209:                                    ; preds = %206
  call void @llvm.dbg.value(metadata i16 0, metadata !943, metadata !DIExpression()), !dbg !1295
  %210 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %210) #9, !dbg !1296
  %211 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1297
  call void @bt_flip_addr(i8* nonnull %210, i8* %211) #10, !dbg !1298
  %212 = call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* nonnull %210) #10, !dbg !1299
  call void @llvm.dbg.value(metadata %struct.avctp* %212, metadata !944, metadata !DIExpression()), !dbg !1300
  %213 = icmp eq %struct.avctp* %212, null, !dbg !1301
  br i1 %213, label %223, label %214, !dbg !1303

; <label>:214:                                    ; preds = %209
  %215 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1304, !tbaa !544
  %216 = icmp slt i8 %215, 0, !dbg !1304
  br i1 %216, label %217, label %226, !dbg !1307

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.avctp, %struct.avctp* %212, i32 0, i32 1, !dbg !1308
  %219 = load i16, i16* %218, align 2, !dbg !1308, !tbaa !537
  %220 = zext i16 %219 to i32, !dbg !1308
  %221 = zext i16 %1 to i32, !dbg !1308
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i32 0, i32 0), i32 %220, i32 %221) #10, !dbg !1308
  br label %226, !dbg !1308

; <label>:223:                                    ; preds = %209
  %224 = call fastcc %struct.avctp* @__create_avctp_conn(i8* nonnull %210) #10, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.avctp* %224, metadata !944, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata %struct.avctp* %224, metadata !944, metadata !DIExpression()), !dbg !1300
  %225 = icmp eq %struct.avctp* %224, null, !dbg !1312
  br i1 %225, label %240, label %226, !dbg !1314

; <label>:226:                                    ; preds = %223, %217, %214
  %227 = phi %struct.avctp* [ %224, %223 ], [ %212, %217 ], [ %212, %214 ]
  %228 = getelementptr inbounds %struct.avctp, %struct.avctp* %227, i32 0, i32 1, !dbg !1315
  %229 = load i16, i16* %228, align 2, !dbg !1315, !tbaa !537
  %230 = icmp eq i16 %229, 0, !dbg !1317
  br i1 %230, label %231, label %240, !dbg !1318

; <label>:231:                                    ; preds = %226
  %232 = getelementptr inbounds %struct.avctp, %struct.avctp* %227, i32 0, i32 2, !dbg !1320
  store i8 0, i8* %232, align 4, !dbg !1322, !tbaa !1323
  store i16 %1, i16* %228, align 2, !dbg !1324, !tbaa !537
  %233 = getelementptr inbounds %struct.avctp, %struct.avctp* %227, i32 0, i32 5, i32 6, !dbg !1325
  %234 = bitcast [3 x i8]* %233 to i24*, !dbg !1325
  %235 = load i24, i24* %234, align 1, !dbg !1326
  %236 = and i24 %235, -129, !dbg !1326
  store i24 %236, i24* %234, align 1, !dbg !1326
  call void @l2cap_accept_connection_internal(i16 zeroext %1) #10, !dbg !1327
  %237 = load i24, i24* %234, align 1, !dbg !1328
  %238 = and i24 %237, -113, !dbg !1328
  %239 = or i24 %238, 16, !dbg !1328
  store i24 %239, i24* %234, align 1, !dbg !1328
  br label %240, !dbg !1329

; <label>:240:                                    ; preds = %231, %226, %223
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %210) #9, !dbg !1330
  br label %277, !dbg !1331

; <label>:241:                                    ; preds = %206
  tail call void @l2cap_decline_connection_internal(i16 zeroext %1, i8 zeroext 4) #10, !dbg !1332
  br label %277

; <label>:242:                                    ; preds = %15
  %243 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !1334
  call void @bt_flip_addr(i8* nonnull %16, i8* %243) #10, !dbg !1335
  %244 = load i8, i8* @profile_debug_enable, align 1, !dbg !1336, !tbaa !544
  %245 = and i8 %244, 1, !dbg !1336
  %246 = icmp eq i8 %245, 0, !dbg !1336
  br i1 %246, label %274, label %247, !dbg !1338

; <label>:247:                                    ; preds = %242
  %248 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !1339
  %249 = load i8, i8* %248, align 1, !dbg !1339, !tbaa !544
  %250 = getelementptr inbounds i8, i8* %2, i32 14, !dbg !1339
  %251 = load i8, i8* %250, align 1, !dbg !1339, !tbaa !544
  %252 = zext i8 %249 to i32, !dbg !1339
  %253 = zext i8 %251 to i32, !dbg !1339
  %254 = shl nuw nsw i32 %253, 8, !dbg !1339
  %255 = or i32 %254, %252, !dbg !1339
  %256 = getelementptr inbounds i8, i8* %2, i32 11, !dbg !1340
  %257 = load i8, i8* %256, align 1, !dbg !1340, !tbaa !544
  %258 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !1340
  %259 = load i8, i8* %258, align 1, !dbg !1340, !tbaa !544
  %260 = zext i8 %257 to i32, !dbg !1340
  %261 = zext i8 %259 to i32, !dbg !1340
  %262 = shl nuw nsw i32 %261, 8, !dbg !1340
  %263 = or i32 %262, %260, !dbg !1340
  %264 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !1341
  %265 = load i8, i8* %264, align 1, !dbg !1341, !tbaa !544
  %266 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !1341
  %267 = load i8, i8* %266, align 1, !dbg !1341, !tbaa !544
  %268 = zext i8 %265 to i32, !dbg !1341
  %269 = zext i8 %267 to i32, !dbg !1341
  %270 = shl nuw nsw i32 %269, 8, !dbg !1341
  %271 = or i32 %270, %268, !dbg !1341
  %272 = call i8* @bd_addr_to_str(i8* nonnull %16) #10, !dbg !1342
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i32 0, i32 0), i8* %272, i32 %271, i32 %263, i32 %255) #10, !dbg !1344
  br label %274, !dbg !1342

; <label>:274:                                    ; preds = %247, %242
  %275 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1346
  %276 = load i8, i8* %275, align 1, !dbg !1346, !tbaa !544
  call fastcc void @avctp_channel_open(i8 zeroext %276, i16 zeroext %1, i8* nonnull %2, i8 zeroext 0) #10, !dbg !1347
  br label %277, !dbg !1348

; <label>:277:                                    ; preds = %274, %241, %240, %204, %183, %182, %17, %15
  %278 = phi i8* [ %18, %17 ], [ %18, %182 ], [ %16, %15 ], [ %16, %183 ], [ %16, %204 ], [ %16, %240 ], [ %16, %241 ], [ %16, %274 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %278) #9, !dbg !1349
  br label %279, !dbg !1350

; <label>:279:                                    ; preds = %277, %12
  ret void, !dbg !1351
}

; Function Attrs: optsize
declare zeroext i16 @l2cap_max_mtu() local_unnamed_addr #2

; Function Attrs: optsize
declare void @stack_run_loop_register(%struct.run_loop*, void (%struct.run_loop*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @avctp_send_key_loop(%struct.run_loop* nocapture readnone) #0 section ".bt_stack_code" !dbg !1353 {
  %2 = alloca [2 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %2, metadata !1363, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !1355, metadata !DIExpression()), !dbg !1383
  %3 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1384, !tbaa !502
  %4 = icmp eq %struct.avctp_stack_t* %3, null, !dbg !1386
  br i1 %4, label %288, label %5, !dbg !1387

; <label>:5:                                      ; preds = %1
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #10, !dbg !1388
  store i1 true, i1* @avctp_run_loop_busy, align 4
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #10, !dbg !1389
  %6 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1390, !tbaa !502
  call void @llvm.dbg.value(metadata %struct.avctp* %7, metadata !1356, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata %struct.avctp* %7, metadata !1356, metadata !DIExpression()), !dbg !1391
  %7 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %6, i32 0, i32 3, i32 0, !dbg !1390
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i32 0, i32 0
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i32 0, i32 1
  br label %10, !dbg !1392

; <label>:10:                                     ; preds = %281, %5
  %11 = phi %struct.avctp_stack_t* [ %6, %5 ], [ %283, %281 ], !dbg !1394
  %12 = phi %struct.avctp* [ %7, %5 ], [ %282, %281 ]
  %13 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 6, !dbg !1397
  %14 = bitcast [3 x i8]* %13 to i24*, !dbg !1397
  %15 = load i24, i24* %14, align 1, !dbg !1397
  %16 = trunc i24 %15 to i16, !dbg !1399
  %17 = icmp sgt i16 %16, -1, !dbg !1399
  br i1 %17, label %281, label %18, !dbg !1400

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 1, !dbg !1401
  %20 = load i16, i16* %19, align 2, !dbg !1401, !tbaa !537
  %21 = icmp eq i16 %20, 0, !dbg !1403
  br i1 %21, label %281, label %22, !dbg !1404

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %11, i32 0, i32 0, !dbg !1406
  %24 = load i8, i8* %23, align 4, !dbg !1406, !tbaa !1408
  %25 = icmp eq i8 %24, 0, !dbg !1411
  br i1 %25, label %28, label %26, !dbg !1412

; <label>:26:                                     ; preds = %22
  %27 = add i8 %24, -1, !dbg !1413
  store i8 %27, i8* %23, align 4, !dbg !1413, !tbaa !1408
  br label %28, !dbg !1415

; <label>:28:                                     ; preds = %26, %22
  %29 = phi i8 [ 0, %22 ], [ %27, %26 ], !dbg !1416
  %30 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 0, !dbg !1417
  %31 = load i32, i32* %30, align 4, !dbg !1417, !tbaa !483
  %32 = icmp ne i32 %31, 0, !dbg !1418
  %33 = icmp eq i8 %29, 0, !dbg !1419
  %34 = and i1 %32, %33, !dbg !1420
  br i1 %34, label %35, label %211, !dbg !1420

; <label>:35:                                     ; preds = %28
  br label %36, !dbg !1421

; <label>:36:                                     ; preds = %207, %35
  %37 = phi i32 [ %208, %207 ], [ 0, %35 ]
  %38 = shl i32 1, %37, !dbg !1421
  %39 = and i32 %31, %38, !dbg !1427
  %40 = icmp eq i32 %39, 0, !dbg !1427
  br i1 %40, label %207, label %41, !dbg !1428

; <label>:41:                                     ; preds = %36
  switch i32 %37, label %287 [
    i32 0, label %42
    i32 1, label %50
    i32 2, label %58
    i32 3, label %66
    i32 13, label %77
    i32 9, label %88
    i32 4, label %99
    i32 5, label %107
    i32 6, label %128
    i32 11, label %152
    i32 12, label %163
    i32 7, label %174
    i32 10, label %182
    i32 14, label %194
  ], !dbg !1429

; <label>:42:                                     ; preds = %41
  %43 = tail call i32 @avrcp_get_capabilities(%struct.avctp* nonnull %12) #10, !dbg !1431
  %44 = icmp eq i32 %43, 0, !dbg !1434
  br i1 %44, label %45, label %287, !dbg !1435

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %30, align 4, !dbg !1436, !tbaa !483
  %47 = and i32 %46, -2, !dbg !1436
  store i32 %47, i32* %30, align 4, !dbg !1436, !tbaa !483
  %48 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1438, !tbaa !502
  %49 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %48, i32 0, i32 0, !dbg !1439
  store i8 0, i8* %49, align 4, !dbg !1440, !tbaa !1408
  br label %287, !dbg !1441

; <label>:50:                                     ; preds = %41
  %51 = tail call i32 @avrcp_register_notification(%struct.avctp* nonnull %12, i8 zeroext 1) #10, !dbg !1442
  %52 = icmp eq i32 %51, 0, !dbg !1444
  br i1 %52, label %53, label %287, !dbg !1445

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %30, align 4, !dbg !1446, !tbaa !483
  %55 = and i32 %54, -3, !dbg !1446
  store i32 %55, i32* %30, align 4, !dbg !1446, !tbaa !483
  %56 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1448, !tbaa !502
  %57 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %56, i32 0, i32 0, !dbg !1449
  store i8 0, i8* %57, align 4, !dbg !1450, !tbaa !1408
  br label %287, !dbg !1451

; <label>:58:                                     ; preds = %41
  %59 = tail call i32 @avrcp_register_notification(%struct.avctp* nonnull %12, i8 zeroext 2) #10, !dbg !1452
  %60 = icmp eq i32 %59, 0, !dbg !1454
  br i1 %60, label %61, label %287, !dbg !1455

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %30, align 4, !dbg !1456, !tbaa !483
  %63 = and i32 %62, -5, !dbg !1456
  store i32 %63, i32* %30, align 4, !dbg !1456, !tbaa !483
  %64 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1458, !tbaa !502
  %65 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %64, i32 0, i32 0, !dbg !1459
  store i8 0, i8* %65, align 4, !dbg !1460, !tbaa !1408
  br label %287, !dbg !1461

; <label>:66:                                     ; preds = %41
  %67 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1462, !tbaa !544
  %68 = icmp eq i8 %67, 0, !dbg !1462
  br i1 %68, label %287, label %69, !dbg !1464

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @avrcp_register_notification(%struct.avctp* nonnull %12, i8 zeroext 8) #10, !dbg !1465
  %71 = icmp eq i32 %70, 0, !dbg !1468
  br i1 %71, label %72, label %287, !dbg !1469

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %30, align 4, !dbg !1470, !tbaa !483
  %74 = and i32 %73, -9, !dbg !1470
  store i32 %74, i32* %30, align 4, !dbg !1470, !tbaa !483
  %75 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1472, !tbaa !502
  %76 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %75, i32 0, i32 0, !dbg !1473
  store i8 0, i8* %76, align 4, !dbg !1474, !tbaa !1408
  br label %287, !dbg !1475

; <label>:77:                                     ; preds = %41
  %78 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1476, !tbaa !544
  %79 = icmp eq i8 %78, 0, !dbg !1476
  br i1 %79, label %287, label %80, !dbg !1478

; <label>:80:                                     ; preds = %77
  %81 = tail call i32 @avrcp_register_notification(%struct.avctp* nonnull %12, i8 zeroext 13) #10, !dbg !1479
  %82 = icmp eq i32 %81, 0, !dbg !1482
  br i1 %82, label %83, label %287, !dbg !1483

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %30, align 4, !dbg !1484, !tbaa !483
  %85 = and i32 %84, -8193, !dbg !1484
  store i32 %85, i32* %30, align 4, !dbg !1484, !tbaa !483
  %86 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1486, !tbaa !502
  %87 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %86, i32 0, i32 0, !dbg !1487
  store i8 0, i8* %87, align 4, !dbg !1488, !tbaa !1408
  br label %287, !dbg !1489

; <label>:88:                                     ; preds = %41
  %89 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1490, !tbaa !544
  %90 = icmp eq i8 %89, 0, !dbg !1490
  br i1 %90, label %287, label %91, !dbg !1492

; <label>:91:                                     ; preds = %88
  %92 = tail call i32 @avrcp_register_notification(%struct.avctp* nonnull %12, i8 zeroext 5) #10, !dbg !1493
  %93 = icmp eq i32 %92, 0, !dbg !1496
  br i1 %93, label %94, label %287, !dbg !1497

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %30, align 4, !dbg !1498, !tbaa !483
  %96 = and i32 %95, -513, !dbg !1498
  store i32 %96, i32* %30, align 4, !dbg !1498, !tbaa !483
  %97 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1500, !tbaa !502
  %98 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %97, i32 0, i32 0, !dbg !1501
  store i8 0, i8* %98, align 4, !dbg !1502, !tbaa !1408
  br label %287, !dbg !1503

; <label>:99:                                     ; preds = %41
  %100 = tail call i32 @avrcp_list_player_attributes(%struct.avctp* nonnull %12) #10, !dbg !1504
  %101 = icmp eq i32 %100, 0, !dbg !1506
  br i1 %101, label %102, label %287, !dbg !1507

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %30, align 4, !dbg !1508, !tbaa !483
  %104 = and i32 %103, -17, !dbg !1508
  store i32 %104, i32* %30, align 4, !dbg !1508, !tbaa !483
  %105 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1510, !tbaa !502
  %106 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %105, i32 0, i32 0, !dbg !1511
  store i8 0, i8* %106, align 4, !dbg !1512, !tbaa !1408
  br label %287, !dbg !1513

; <label>:107:                                    ; preds = %41
  call void @llvm.dbg.value(metadata %struct.avctp* undef, metadata !1514, metadata !DIExpression()), !dbg !1519
  %108 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 5, !dbg !1522
  %109 = load i8, i8* %108, align 4, !dbg !1522, !tbaa !1524
  %110 = and i8 %109, 4, !dbg !1525
  %111 = icmp eq i8 %110, 0, !dbg !1525
  br i1 %111, label %123, label %112, !dbg !1526

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 3, i32 2, !dbg !1527
  %114 = load i8, i8* %113, align 2, !dbg !1530, !tbaa !544
  %115 = add i8 %114, 1, !dbg !1530
  %116 = icmp ugt i8 %115, 3, !dbg !1531
  %117 = select i1 %116, i8 1, i8 %115, !dbg !1532
  store i8 %117, i8* %113, align 2, !dbg !1530, !tbaa !544
  %118 = tail call zeroext i8 @avrcp_set_player_value(%struct.avctp* nonnull %12, i8 zeroext 2, i8 zeroext %117) #10, !dbg !1533
  %119 = icmp eq i8 %118, 0, !dbg !1534
  br i1 %119, label %120, label %287, !dbg !1535

; <label>:120:                                    ; preds = %112
  %121 = load i32, i32* %30, align 4, !tbaa !483
  %122 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !tbaa !502
  br label %123, !dbg !1535

; <label>:123:                                    ; preds = %120, %107
  %124 = phi %struct.avctp_stack_t* [ %122, %120 ], [ %11, %107 ], !dbg !1536
  %125 = phi i32 [ %121, %120 ], [ %31, %107 ], !dbg !1538
  %126 = and i32 %125, -33, !dbg !1538
  store i32 %126, i32* %30, align 4, !dbg !1538, !tbaa !483
  %127 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %124, i32 0, i32 0, !dbg !1539
  store i8 0, i8* %127, align 4, !dbg !1540, !tbaa !1408
  br label %287, !dbg !1541

; <label>:128:                                    ; preds = %41
  %129 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1542, !tbaa !544
  %130 = icmp eq i8 %129, 0, !dbg !1542
  br i1 %130, label %287, label %131, !dbg !1544

; <label>:131:                                    ; preds = %128
  call void @llvm.dbg.value(metadata %struct.avctp* undef, metadata !1545, metadata !DIExpression()), !dbg !1548
  %132 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 5, !dbg !1552
  %133 = load i8, i8* %132, align 4, !dbg !1552, !tbaa !1524
  %134 = and i8 %133, 8, !dbg !1554
  %135 = icmp eq i8 %134, 0, !dbg !1554
  br i1 %135, label %147, label %136, !dbg !1555

; <label>:136:                                    ; preds = %131
  %137 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 3, i32 3, !dbg !1556
  %138 = load i8, i8* %137, align 1, !dbg !1559, !tbaa !544
  %139 = add i8 %138, 1, !dbg !1559
  %140 = icmp ugt i8 %139, 2, !dbg !1560
  %141 = select i1 %140, i8 1, i8 %139, !dbg !1561
  store i8 %141, i8* %137, align 1, !dbg !1559, !tbaa !544
  %142 = tail call zeroext i8 @avrcp_set_player_value(%struct.avctp* nonnull %12, i8 zeroext 3, i8 zeroext %141) #10, !dbg !1562
  %143 = icmp eq i8 %142, 0, !dbg !1563
  br i1 %143, label %144, label %287, !dbg !1564

; <label>:144:                                    ; preds = %136
  %145 = load i32, i32* %30, align 4, !tbaa !483
  %146 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !tbaa !502
  br label %147, !dbg !1564

; <label>:147:                                    ; preds = %144, %131
  %148 = phi %struct.avctp_stack_t* [ %146, %144 ], [ %11, %131 ], !dbg !1565
  %149 = phi i32 [ %145, %144 ], [ %31, %131 ], !dbg !1567
  %150 = and i32 %149, -65, !dbg !1567
  store i32 %150, i32* %30, align 4, !dbg !1567, !tbaa !483
  %151 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %148, i32 0, i32 0, !dbg !1568
  store i8 0, i8* %151, align 4, !dbg !1569, !tbaa !1408
  br label %287, !dbg !1570

; <label>:152:                                    ; preds = %41
  %153 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1571, !tbaa !544
  %154 = icmp eq i8 %153, 0, !dbg !1571
  br i1 %154, label %287, label %155, !dbg !1573

; <label>:155:                                    ; preds = %152
  %156 = tail call i32 @avrcp_get_play_status(%struct.avctp* nonnull %12) #10, !dbg !1574
  %157 = icmp eq i32 %156, 0, !dbg !1577
  br i1 %157, label %158, label %287, !dbg !1578

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %30, align 4, !dbg !1579, !tbaa !483
  %160 = and i32 %159, -2049, !dbg !1579
  store i32 %160, i32* %30, align 4, !dbg !1579, !tbaa !483
  %161 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1581, !tbaa !502
  %162 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %161, i32 0, i32 0, !dbg !1582
  store i8 0, i8* %162, align 4, !dbg !1583, !tbaa !1408
  br label %287, !dbg !1584

; <label>:163:                                    ; preds = %41
  %164 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1585, !tbaa !544
  %165 = icmp eq i8 %164, 0, !dbg !1585
  br i1 %165, label %287, label %166, !dbg !1587

; <label>:166:                                    ; preds = %163
  %167 = tail call i32 @avrcp_get_element_attributes(%struct.avctp* nonnull %12) #10, !dbg !1588
  %168 = icmp eq i32 %167, 0, !dbg !1591
  br i1 %168, label %169, label %287, !dbg !1592

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %30, align 4, !dbg !1593, !tbaa !483
  %171 = and i32 %170, -4097, !dbg !1593
  store i32 %171, i32* %30, align 4, !dbg !1593, !tbaa !483
  %172 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1595, !tbaa !502
  %173 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %172, i32 0, i32 0, !dbg !1596
  store i8 0, i8* %173, align 4, !dbg !1597, !tbaa !1408
  br label %287, !dbg !1598

; <label>:174:                                    ; preds = %41
  %175 = tail call i32 @avrcp_player_event(%struct.avctp* nonnull %12, i8 zeroext 13, i8* null) #10, !dbg !1599
  %176 = icmp eq i32 %175, 0, !dbg !1601
  br i1 %176, label %177, label %287, !dbg !1602

; <label>:177:                                    ; preds = %174
  %178 = load i32, i32* %30, align 4, !dbg !1603, !tbaa !483
  %179 = and i32 %178, -129, !dbg !1603
  store i32 %179, i32* %30, align 4, !dbg !1603, !tbaa !483
  %180 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1605, !tbaa !502
  %181 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %180, i32 0, i32 0, !dbg !1606
  store i8 0, i8* %181, align 4, !dbg !1607, !tbaa !1408
  br label %287, !dbg !1608

; <label>:182:                                    ; preds = %41
  %183 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 2, !dbg !1609
  %184 = load i8, i8* %183, align 1, !dbg !1609, !tbaa !1128
  %185 = icmp eq i8 %184, 0, !dbg !1611
  br i1 %185, label %287, label %186, !dbg !1612

; <label>:186:                                    ; preds = %182
  %187 = tail call fastcc i32 @avctp_passthrough_release(%struct.avctp* nonnull %12, i8 zeroext %184) #8, !dbg !1613
  %188 = icmp eq i32 %187, 0, !dbg !1615
  br i1 %188, label %189, label %287, !dbg !1616

; <label>:189:                                    ; preds = %186
  store i8 0, i8* %183, align 1, !dbg !1618, !tbaa !1128
  %190 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1620, !tbaa !502
  %191 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %190, i32 0, i32 0, !dbg !1621
  store i8 0, i8* %191, align 4, !dbg !1622, !tbaa !1408
  %192 = load i32, i32* %30, align 4, !dbg !1623, !tbaa !483
  %193 = and i32 %192, -1025, !dbg !1623
  store i32 %193, i32* %30, align 4, !dbg !1623, !tbaa !483
  br label %287, !dbg !1624

; <label>:194:                                    ; preds = %41
  %195 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 5), align 4, !dbg !1625, !tbaa !1627
  %196 = icmp eq i32 (i8*, i32)* %195, null, !dbg !1629
  br i1 %196, label %202, label %197, !dbg !1630

; <label>:197:                                    ; preds = %194
  %198 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 0, i32 0, !dbg !1631
  %199 = tail call i32 %195(i8* %198, i32 60) #10, !dbg !1633
  %200 = load i32, i32* %30, align 4, !tbaa !483
  %201 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !tbaa !502
  br label %202, !dbg !1634

; <label>:202:                                    ; preds = %197, %194
  %203 = phi %struct.avctp_stack_t* [ %11, %194 ], [ %201, %197 ], !dbg !1635
  %204 = phi i32 [ %31, %194 ], [ %200, %197 ], !dbg !1636
  %205 = and i32 %204, -16385, !dbg !1636
  store i32 %205, i32* %30, align 4, !dbg !1636, !tbaa !483
  %206 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %203, i32 0, i32 0, !dbg !1637
  store i8 0, i8* %206, align 4, !dbg !1638, !tbaa !1408
  br label %287, !dbg !1639

; <label>:207:                                    ; preds = %36
  %208 = add nuw nsw i32 %37, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %208, metadata !1357, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 %208, metadata !1357, metadata !DIExpression()), !dbg !1642
  %209 = icmp slt i32 %208, 16, !dbg !1643
  br i1 %209, label %36, label %210, !dbg !1645, !llvm.loop !1647

; <label>:210:                                    ; preds = %207
  br label %211, !dbg !1650

; <label>:211:                                    ; preds = %210, %28
  %212 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 1, !dbg !1650
  %213 = load i8, i8* %212, align 4, !dbg !1650, !tbaa !598
  %214 = icmp eq i8 %213, 0, !dbg !1652
  br i1 %214, label %221, label %215, !dbg !1653

; <label>:215:                                    ; preds = %211
  %216 = add i8 %213, -1, !dbg !1654
  store i8 %216, i8* %212, align 4, !dbg !1654, !tbaa !598
  %217 = icmp eq i8 %216, 1, !dbg !1656
  br i1 %217, label %218, label %220, !dbg !1658

; <label>:218:                                    ; preds = %215
  store i8 0, i8* %212, align 4, !dbg !1659, !tbaa !598
  call void @llvm.dbg.value(metadata %struct.avctp* undef, metadata !471, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i32 10, metadata !472, metadata !DIExpression()), !dbg !1663
  %219 = or i32 %31, 1024, !dbg !1664
  store i32 %219, i32* %30, align 4, !dbg !1664, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !1665
  br label %220, !dbg !1666

; <label>:220:                                    ; preds = %218, %215
  tail call void @os_time_dly(i32 1) #10, !dbg !1667
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !1668
  br label %221, !dbg !1669

; <label>:221:                                    ; preds = %220, %211
  %222 = load i24, i24* %14, align 1, !dbg !1670
  %223 = lshr i24 %222, 16, !dbg !1670
  %224 = and i24 %223, 15, !dbg !1670
  %225 = zext i24 %224 to i32, !dbg !1670
  %226 = lshr i24 %222, 20, !dbg !1672
  %227 = icmp eq i24 %224, %226, !dbg !1673
  br i1 %227, label %281, label %228, !dbg !1674

; <label>:228:                                    ; preds = %221
  %229 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1675, !tbaa !502
  %230 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %229, i32 0, i32 0, !dbg !1677
  %231 = load i8, i8* %230, align 4, !dbg !1677, !tbaa !1408
  %232 = icmp eq i8 %231, 0, !dbg !1678
  br i1 %232, label %233, label %281, !dbg !1679

; <label>:233:                                    ; preds = %228
  %234 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 9, i32 %225, !dbg !1681
  %235 = load i8, i8* %234, align 1, !dbg !1681, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.avctp* %12, metadata !1378, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %235, metadata !1379, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1380, metadata !DIExpression()), !dbg !1684
  %236 = load i8, i8* %212, align 4, !dbg !1685, !tbaa !598
  %237 = icmp eq i8 %236, 0, !dbg !1687
  br i1 %237, label %246, label %238, !dbg !1688

; <label>:238:                                    ; preds = %233
  %239 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 0, i32 5, i32 2, !dbg !1689
  %240 = load i8, i8* %239, align 1, !dbg !1689, !tbaa !1128
  %241 = icmp eq i8 %240, %235, !dbg !1692
  br i1 %241, label %242, label %243, !dbg !1693

; <label>:242:                                    ; preds = %238
  store i8 30, i8* %212, align 4, !dbg !1694, !tbaa !598
  br label %267, !dbg !1696

; <label>:243:                                    ; preds = %238
  store i8 0, i8* %212, align 4, !dbg !1697, !tbaa !598
  call void @llvm.dbg.value(metadata %struct.avctp* undef, metadata !471, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 10, metadata !472, metadata !DIExpression()), !dbg !1701
  %244 = load i32, i32* %30, align 4, !dbg !1702, !tbaa !483
  %245 = or i32 %244, 1024, !dbg !1702
  store i32 %245, i32* %30, align 4, !dbg !1702, !tbaa !483
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !1703
  br label %267, !dbg !1704

; <label>:246:                                    ; preds = %233
  %247 = icmp eq i8 %235, 68, !dbg !1705
  br i1 %247, label %248, label %252, !dbg !1707

; <label>:248:                                    ; preds = %246
  %249 = and i24 %222, 16384, !dbg !1708
  %250 = icmp eq i24 %249, 0, !dbg !1710
  call void @llvm.dbg.value(metadata i8 70, metadata !1379, metadata !DIExpression()), !dbg !1683
  %251 = select i1 %250, i8 68, i8 70, !dbg !1711
  br label %252, !dbg !1711

; <label>:252:                                    ; preds = %248, %246
  %253 = phi i8 [ %235, %246 ], [ %251, %248 ]
  call void @llvm.dbg.value(metadata i8 %253, metadata !1379, metadata !DIExpression()), !dbg !1683
  switch i8 %253, label %256 [
    i8 68, label %254
    i8 70, label %254
  ], !dbg !1713

; <label>:254:                                    ; preds = %252, %252
  %255 = xor i24 %222, 16384, !dbg !1715
  store i24 %255, i24* %14, align 1, !dbg !1715
  br label %256, !dbg !1717

; <label>:256:                                    ; preds = %254, %252
  %257 = phi i24 [ %255, %254 ], [ %222, %252 ], !dbg !1718
  call void @llvm.dbg.value(metadata %struct.avctp* %12, metadata !1368, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 %253, metadata !1369, metadata !DIExpression()), !dbg !1720
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %8) #9, !dbg !1721
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !1722
  %258 = trunc i24 %257 to i8, !dbg !1718
  %259 = add i8 %258, 1, !dbg !1718
  %260 = and i8 %259, 15, !dbg !1718
  %261 = zext i8 %260 to i24, !dbg !1718
  %262 = and i24 %257, -16, !dbg !1718
  %263 = or i24 %261, %262, !dbg !1718
  store i24 %263, i24* %14, align 1, !dbg !1718
  %264 = and i8 %253, 127, !dbg !1723
  store i8 %264, i8* %8, align 1, !dbg !1724, !tbaa !544
  store i8 0, i8* %9, align 1, !dbg !1725, !tbaa !544
  %265 = call fastcc i32 @avctp_send(%struct.avctp* nonnull %12, i8 zeroext %260, i8 zeroext 0, i8 zeroext 0, i8 zeroext 9, i8 zeroext 124, i8* nonnull %8, i32 2) #10, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %265, metadata !1370, metadata !DIExpression()), !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %8) #9, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %265, metadata !1380, metadata !DIExpression()), !dbg !1684
  %266 = icmp eq i32 %265, 0, !dbg !1728
  br i1 %266, label %267, label %281, !dbg !1729

; <label>:267:                                    ; preds = %256, %243, %242
  %268 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1730, !tbaa !502
  %269 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %268, i32 0, i32 0, !dbg !1732
  store i8 0, i8* %269, align 4, !dbg !1733, !tbaa !1408
  %270 = load i24, i24* %14, align 1, !dbg !1734
  %271 = lshr i24 %270, 16, !dbg !1734
  %272 = trunc i24 %271 to i8, !dbg !1734
  %273 = add i8 %272, 1, !dbg !1734
  %274 = and i8 %273, 15, !dbg !1734
  %275 = zext i8 %274 to i24, !dbg !1734
  %276 = shl nuw nsw i24 %275, 16, !dbg !1734
  %277 = and i24 %270, -983041, !dbg !1734
  %278 = icmp ugt i8 %274, 8, !dbg !1736
  %279 = select i1 %278, i24 0, i24 %276, !dbg !1737
  %280 = or i24 %279, %277, !dbg !1737
  store i24 %280, i24* %14, align 1, !dbg !1738
  br label %281, !dbg !1737

; <label>:281:                                    ; preds = %267, %256, %228, %221, %18, %10
  %282 = getelementptr inbounds %struct.avctp, %struct.avctp* %12, i32 1, !dbg !1740
  call void @llvm.dbg.value(metadata %struct.avctp* %282, metadata !1356, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata %struct.avctp* %282, metadata !1356, metadata !DIExpression()), !dbg !1391
  %283 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1742, !tbaa !502
  %284 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %283, i32 0, i32 3, i32 1, !dbg !1742
  %285 = icmp ult %struct.avctp* %282, %284, !dbg !1742
  br i1 %285, label %10, label %286, !dbg !1392, !llvm.loop !1744

; <label>:286:                                    ; preds = %281
  br label %287

; <label>:287:                                    ; preds = %286, %202, %189, %186, %182, %177, %174, %169, %166, %163, %158, %155, %152, %147, %136, %128, %123, %112, %102, %99, %94, %91, %88, %83, %80, %77, %72, %69, %66, %61, %58, %53, %50, %45, %42, %41
  store i1 false, i1* @avctp_run_loop_busy, align 4
  br label %288, !dbg !1746

; <label>:288:                                    ; preds = %287, %1
  ret void, !dbg !1746
}

; Function Attrs: nounwind optsize
define hidden i32 @avctp_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1748 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1752, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i16 %1, metadata !1753, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1754, metadata !DIExpression()), !dbg !1758
  %3 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1759
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %3, i32 0, i32 3, i32 0, !dbg !1759
  %5 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %3, i32 0, i32 3, i32 1
  br label %6, !dbg !1767

; <label>:6:                                      ; preds = %13, %2
  %7 = phi %struct.avctp* [ %4, %2 ], [ %14, %13 ]
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 0, i32 5, i32 6, !dbg !1769
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !1769
  %10 = load i24, i24* %9, align 1, !dbg !1769
  %11 = trunc i24 %10 to i16, !dbg !1773
  %12 = icmp slt i16 %11, 0, !dbg !1773
  br i1 %12, label %16, label %13, !dbg !1774

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 1, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.avctp* %14, metadata !1765, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata %struct.avctp* %14, metadata !1765, metadata !DIExpression()), !dbg !1777
  %15 = icmp ult %struct.avctp* %14, %5, !dbg !1778
  br i1 %15, label %6, label %19, !dbg !1767, !llvm.loop !1780

; <label>:16:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i8 44, metadata !1754, metadata !DIExpression()), !dbg !1758
  %17 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 0, i32 5, !dbg !1783
  %18 = bitcast %struct.avrcp_core_data_t* %17 to i8*, !dbg !1784
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %18, i32 44, i32 1, i1 false), !dbg !1784
  br label %20, !dbg !1785

; <label>:19:                                     ; preds = %13
  br label %20, !dbg !1786

; <label>:20:                                     ; preds = %19, %16
  %21 = phi i32 [ 44, %16 ], [ 0, %19 ]
  ret i32 %21, !dbg !1786
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define hidden void @avctp_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1787 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1791, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i16 %1, metadata !1792, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1793, metadata !DIExpression()), !dbg !1797
  %3 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1798
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %3, i32 0, i32 3, i32 0, !dbg !1798
  %5 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %3, i32 0, i32 3, i32 1
  br label %6, !dbg !1800

; <label>:6:                                      ; preds = %13, %2
  %7 = phi %struct.avctp* [ %4, %2 ], [ %14, %13 ]
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 0, i32 5, i32 6, !dbg !1801
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !1801
  %10 = load i24, i24* %9, align 1, !dbg !1801
  %11 = trunc i24 %10 to i16, !dbg !1802
  %12 = icmp slt i16 %11, 0, !dbg !1802
  br i1 %12, label %16, label %13, !dbg !1803

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 1, !dbg !1804
  call void @llvm.dbg.value(metadata %struct.avctp* %14, metadata !1765, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata %struct.avctp* %14, metadata !1765, metadata !DIExpression()), !dbg !1805
  %15 = icmp ult %struct.avctp* %14, %5, !dbg !1806
  br i1 %15, label %6, label %19, !dbg !1800, !llvm.loop !1780

; <label>:16:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i8 44, metadata !1793, metadata !DIExpression()), !dbg !1797
  %17 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 0, i32 5, !dbg !1807
  %18 = bitcast %struct.avrcp_core_data_t* %17 to i8*, !dbg !1808
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %0, i32 44, i32 1, i1 false), !dbg !1808
  br label %20, !dbg !1809

; <label>:19:                                     ; preds = %13
  br label %20, !dbg !1810

; <label>:20:                                     ; preds = %19, %16
  ret void, !dbg !1810
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @avctp_cmd_send_state() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1812 {
  %1 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1817, !tbaa !502
  %2 = icmp eq %struct.avctp_stack_t* %1, null, !dbg !1819
  br i1 %2, label %30, label %3, !dbg !1820

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !1816, metadata !DIExpression()), !dbg !1821
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %1, i32 0, i32 3, i32 1, !dbg !1822
  %5 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %1, i32 0, i32 3, i32 0, !dbg !1826
  %6 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %1, i32 0, i32 0, !dbg !1827
  br label %7, !dbg !1831

; <label>:7:                                      ; preds = %25, %3
  %8 = phi %struct.avctp* [ %5, %3 ], [ %26, %25 ]
  %9 = getelementptr inbounds %struct.avctp, %struct.avctp* %8, i32 0, i32 5, i32 6, !dbg !1833
  %10 = bitcast [3 x i8]* %9 to i24*, !dbg !1833
  %11 = load i24, i24* %10, align 1, !dbg !1833
  %12 = trunc i24 %11 to i16, !dbg !1835
  %13 = icmp sgt i16 %12, -1, !dbg !1835
  br i1 %13, label %25, label %14, !dbg !1836

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds %struct.avctp, %struct.avctp* %8, i32 0, i32 1, !dbg !1837
  %16 = load i16, i16* %15, align 2, !dbg !1837, !tbaa !537
  %17 = icmp eq i16 %16, 0, !dbg !1839
  br i1 %17, label %25, label %18, !dbg !1840

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.avctp, %struct.avctp* %8, i32 0, i32 5, i32 0, !dbg !1842
  %20 = load i32, i32* %19, align 4, !dbg !1842, !tbaa !483
  %21 = icmp eq i32 %20, 0, !dbg !1843
  br i1 %21, label %22, label %28, !dbg !1844

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %6, align 4, !dbg !1827, !tbaa !1408
  %24 = icmp eq i8 %23, 0, !dbg !1845
  br i1 %24, label %25, label %28, !dbg !1846

; <label>:25:                                     ; preds = %22, %14, %7
  %26 = getelementptr inbounds %struct.avctp, %struct.avctp* %8, i32 1, !dbg !1847
  call void @llvm.dbg.value(metadata %struct.avctp* %26, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata %struct.avctp* %26, metadata !1816, metadata !DIExpression()), !dbg !1821
  %27 = icmp ult %struct.avctp* %26, %4, !dbg !1822
  br i1 %27, label %7, label %28, !dbg !1831, !llvm.loop !1849

; <label>:28:                                     ; preds = %25, %22, %18
  %29 = phi i8 [ 1, %22 ], [ 1, %18 ], [ 0, %25 ]
  br label %30, !dbg !1851

; <label>:30:                                     ; preds = %28, %0
  %31 = phi i8 [ 0, %0 ], [ %29, %28 ]
  ret i8 %31, !dbg !1851
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @avctp_get_remote_vol_sync(i8* nocapture readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1852 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1856, metadata !DIExpression()), !dbg !1858
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1859, !tbaa !502
  %3 = icmp eq %struct.avctp_stack_t* %2, null, !dbg !1861
  br i1 %3, label %12, label %4, !dbg !1862

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !1857, metadata !DIExpression()), !dbg !1864
  %6 = icmp eq %struct.avctp* %5, null, !dbg !1865
  br i1 %6, label %12, label %7, !dbg !1867

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %5, i32 0, i32 5, i32 10, i32 13, i32 0, !dbg !1868
  %9 = load i8, i8* %8, align 1, !dbg !1868
  %10 = lshr i8 %9, 1, !dbg !1868
  %11 = and i8 %10, 1, !dbg !1868
  br label %12, !dbg !1870

; <label>:12:                                     ; preds = %7, %4, %1
  %13 = phi i8 [ %11, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i8 %13, !dbg !1871
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @get_pp_key_statue(i8* nocapture readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1874, metadata !DIExpression()), !dbg !1876
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1877, !tbaa !502
  %3 = icmp eq %struct.avctp_stack_t* %2, null, !dbg !1879
  br i1 %3, label %14, label %4, !dbg !1880

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* %0) #8, !dbg !1881
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !1875, metadata !DIExpression()), !dbg !1882
  %6 = icmp eq %struct.avctp* %5, null, !dbg !1883
  br i1 %6, label %14, label %7, !dbg !1885

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %5, i32 0, i32 5, i32 6, !dbg !1886
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !1886
  %10 = load i24, i24* %9, align 1, !dbg !1886
  %11 = lshr i24 %10, 14, !dbg !1886
  %12 = and i24 %11, 1, !dbg !1886
  %13 = zext i24 %12 to i32, !dbg !1886
  br label %14, !dbg !1887

; <label>:14:                                     ; preds = %7, %4, %1
  %15 = phi i32 [ 1, %1 ], [ %13, %7 ], [ 1, %4 ]
  ret i32 %15, !dbg !1888
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @avctp_cmd_try_send_no_resend(%struct.avctp*, i8*) unnamed_addr #0 section ".bt_stack_code" !dbg !1890 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %1, metadata !1895, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i32 0, metadata !1896, metadata !DIExpression()), !dbg !1899
  %3 = icmp eq %struct.avctp* %0, null, !dbg !1900
  br i1 %3, label %28, label %4, !dbg !1902

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 8, !dbg !1903
  %6 = load i8, i8* %5, align 1, !dbg !1903, !tbaa !408
  %7 = icmp eq i8 %6, 0, !dbg !1905
  br i1 %7, label %28, label %8, !dbg !1906

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 1, !dbg !1907
  %10 = load i16, i16* %9, align 2, !dbg !1907, !tbaa !537
  %11 = zext i8 %6 to i16, !dbg !1908
  %12 = tail call i32 @l2cap_send_internal(i16 zeroext %10, i8* %1, i16 zeroext %11, i8 zeroext 0) #10, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %12, metadata !1896, metadata !DIExpression()), !dbg !1899
  %13 = icmp eq i32 %12, 0, !dbg !1910
  %14 = load i8, i8* @profile_debug_enable, align 1, !tbaa !544
  br i1 %13, label %22, label %15, !dbg !1912

; <label>:15:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i32 -1002, metadata !1896, metadata !DIExpression()), !dbg !1899
  %16 = and i8 %14, 4, !dbg !1913
  %17 = icmp eq i8 %16, 0, !dbg !1913
  br i1 %17, label %28, label %18, !dbg !1916

; <label>:18:                                     ; preds = %15
  %19 = load i16, i16* %9, align 2, !dbg !1917, !tbaa !537
  %20 = zext i16 %19 to i32, !dbg !1917
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i32 0, i32 0), i32 -1002, i32 %20) #8, !dbg !1917
  br label %28, !dbg !1917

; <label>:22:                                     ; preds = %8
  %23 = and i8 %14, 1, !dbg !1919
  %24 = icmp eq i8 %23, 0, !dbg !1919
  br i1 %24, label %27, label %25, !dbg !1922

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.14, i32 0, i32 0)), !dbg !1923
  br label %27, !dbg !1923

; <label>:27:                                     ; preds = %25, %22
  store i8 0, i8* %5, align 1, !dbg !1925, !tbaa !408
  br label %28

; <label>:28:                                     ; preds = %27, %18, %15, %4, %2
  %29 = phi i32 [ 0, %2 ], [ 0, %4 ], [ -1002, %18 ], [ -1002, %15 ], [ 0, %27 ]
  ret i32 %29, !dbg !1926
}

; Function Attrs: optsize
declare i32 @l2cap_send_internal(i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc %struct.avctp* @__create_avctp_conn(i8* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !1927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1929, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata %struct.avctp* %3, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata %struct.avctp* %3, metadata !1930, metadata !DIExpression()), !dbg !1932
  %2 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !1933
  %3 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %2, i32 0, i32 3, i32 0, !dbg !1933
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %2, i32 0, i32 3, i32 1
  br label %5, !dbg !1935

; <label>:5:                                      ; preds = %43, %1
  %6 = phi %struct.avctp* [ %3, %1 ], [ %44, %43 ]
  %7 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 6, !dbg !1937
  %8 = bitcast [3 x i8]* %7 to i24*, !dbg !1937
  %9 = load i24, i24* %8, align 1, !dbg !1937
  %10 = trunc i24 %9 to i16, !dbg !1941
  %11 = icmp slt i16 %10, 0, !dbg !1941
  br i1 %11, label %43, label %12, !dbg !1942

; <label>:12:                                     ; preds = %5
  call void @llvm.dbg.value(metadata %struct.avctp* undef, metadata !907, metadata !DIExpression()), !dbg !1943
  %13 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 0, i32 0, !dbg !1946
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 64, i32 4, i1 false) #9, !dbg !1947
  store i24 32768, i24* %8, align 1, !dbg !1948
  %14 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 1, !dbg !1949
  store i8 0, i8* %14, align 4, !dbg !1950, !tbaa !598
  %15 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 2, !dbg !1951
  store i8 0, i8* %15, align 1, !dbg !1952, !tbaa !1128
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %0, i32 6, i32 1, i1 false), !dbg !1953
  %16 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1954, !tbaa !502
  %17 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %16, i32 0, i32 7, !dbg !1956
  %18 = load void (i32)*, void (i32)** %17, align 4, !dbg !1956, !tbaa !1957
  %19 = icmp eq void (i32)* %18, null, !dbg !1959
  br i1 %19, label %28, label %20, !dbg !1960

; <label>:20:                                     ; preds = %12
  %21 = tail call zeroext i8 @avrcp_volume_interface(i8* %13, i8 zeroext -1) #10, !dbg !1961
  %22 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 7, !dbg !1963
  store i8 %21, i8* %22, align 4, !dbg !1964, !tbaa !750
  %23 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1965, !tbaa !544
  %24 = icmp slt i8 %23, 0, !dbg !1965
  br i1 %24, label %25, label %28, !dbg !1967

; <label>:25:                                     ; preds = %20
  %26 = zext i8 %21 to i32, !dbg !1968
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 %26) #8, !dbg !1968
  br label %28, !dbg !1968

; <label>:28:                                     ; preds = %25, %20, %12
  %29 = tail call zeroext i8 bitcast (i8 (...)* @is_support_vol_sync to i8 ()*)() #10, !dbg !1970
  %30 = icmp eq i8 %29, 0, !dbg !1970
  %31 = select i1 %30, i32 6, i32 13, !dbg !1972
  %32 = select i1 %30, i32 12, i32 6, !dbg !1972
  %33 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 10, i32 %31, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = or i8 %34, 1
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 5, i32 10, i32 %32, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = or i8 %37, 1
  store i8 %38, i8* %36, align 1
  %39 = tail call %struct.control_pdu_handler* bitcast (%struct.control_pdu_handler* (...)* @get_arp_control_pdu_handlers to %struct.control_pdu_handler* ()*)() #10, !dbg !1973
  %40 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 3, !dbg !1974
  store %struct.control_pdu_handler* %39, %struct.control_pdu_handler** %40, align 4, !dbg !1975, !tbaa !1976
  %41 = tail call %struct.respone_pdu_handler* bitcast (%struct.respone_pdu_handler* (...)* @get_arp_deal_respone_handlers to %struct.respone_pdu_handler* ()*)() #10, !dbg !1977
  %42 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 0, i32 4, !dbg !1978
  store %struct.respone_pdu_handler* %41, %struct.respone_pdu_handler** %42, align 4, !dbg !1979, !tbaa !1980
  br label %47, !dbg !1981

; <label>:43:                                     ; preds = %5
  %44 = getelementptr inbounds %struct.avctp, %struct.avctp* %6, i32 1, !dbg !1982
  call void @llvm.dbg.value(metadata %struct.avctp* %44, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata %struct.avctp* %44, metadata !1930, metadata !DIExpression()), !dbg !1932
  %45 = icmp ult %struct.avctp* %44, %4, !dbg !1984
  br i1 %45, label %5, label %46, !dbg !1935, !llvm.loop !1986

; <label>:46:                                     ; preds = %43
  br label %47, !dbg !1988

; <label>:47:                                     ; preds = %46, %28
  %48 = phi %struct.avctp* [ %6, %28 ], [ null, %46 ]
  ret %struct.avctp* %48, !dbg !1988
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc void @__free_avctp_conn(%struct.avctp*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1989 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1993, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 %1, metadata !1994, metadata !DIExpression()), !dbg !1996
  %3 = icmp eq %struct.avctp* %0, null, !dbg !1997
  br i1 %3, label %45, label %4, !dbg !1999

; <label>:4:                                      ; preds = %2
  %5 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2000, !tbaa !502
  %6 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %5, i32 0, i32 6, !dbg !2002
  %7 = load i32 ()*, i32 ()** %6, align 4, !dbg !2002, !tbaa !2003
  %8 = icmp eq i32 ()* %7, null, !dbg !2000
  br i1 %8, label %25, label %9, !dbg !2004

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 7, !dbg !2005
  %11 = load i8, i8* %10, align 4, !dbg !2005, !tbaa !750
  %12 = zext i8 %11 to i32, !dbg !2007
  %13 = icmp eq i8 %11, -1, !dbg !2008
  br i1 %13, label %25, label %14, !dbg !2009

; <label>:14:                                     ; preds = %9
  %15 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2011, !tbaa !544
  %16 = icmp slt i8 %15, 0, !dbg !2011
  br i1 %16, label %17, label %20, !dbg !2014

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 %12) #8, !dbg !2015
  %19 = load i8, i8* %10, align 4, !tbaa !750
  br label %20, !dbg !2015

; <label>:20:                                     ; preds = %17, %14
  %21 = phi i8 [ %19, %17 ], [ %11, %14 ], !dbg !2017
  %22 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 0, i32 0, !dbg !2018
  %23 = tail call zeroext i8 @avrcp_volume_interface(i8* %22, i8 zeroext %21) #10, !dbg !2019
  %24 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !502
  br label %25, !dbg !2020

; <label>:25:                                     ; preds = %20, %9, %4
  %26 = phi %struct.user_interface_handler* [ %5, %9 ], [ %5, %4 ], [ %24, %20 ], !dbg !2021
  %27 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %26, i32 0, i32 0, !dbg !2023
  %28 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %27, align 4, !dbg !2023, !tbaa !2024
  %29 = icmp eq void (i8*, i32, i32)* %28, null, !dbg !2021
  br i1 %29, label %33, label %30, !dbg !2025

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 0, i32 0, !dbg !2026
  tail call void %28(i8* %31, i32 16, i32 0) #10, !dbg !2028
  %32 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !502
  br label %33, !dbg !2029

; <label>:33:                                     ; preds = %30, %25
  %34 = phi %struct.user_interface_handler* [ %26, %25 ], [ %32, %30 ], !dbg !2030
  %35 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %34, i32 0, i32 5, !dbg !2032
  %36 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %35, align 4, !dbg !2032, !tbaa !2033
  %37 = icmp eq void (i8*, i32, i32, i8)* %36, null, !dbg !2030
  %38 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 0, i32 0
  br i1 %37, label %40, label %39, !dbg !2034

; <label>:39:                                     ; preds = %33
  tail call void %36(i8* %38, i32 0, i32 8, i8 zeroext %1) #10, !dbg !2035
  br label %40, !dbg !2037

; <label>:40:                                     ; preds = %39, %33
  %41 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 6, !dbg !2038
  %42 = bitcast [3 x i8]* %41 to i24*, !dbg !2038
  %43 = load i24, i24* %42, align 1, !dbg !2039
  %44 = and i24 %43, -32769, !dbg !2039
  store i24 %44, i24* %42, align 1, !dbg !2039
  store i1 false, i1* @avctp_run_loop_busy, align 4
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !907, metadata !DIExpression()), !dbg !2040
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 64, i32 4, i1 false), !dbg !2042
  tail call void @remove_avctp_timer() #8, !dbg !2043
  br label %45, !dbg !2044

; <label>:45:                                     ; preds = %40, %2
  ret void, !dbg !2045
}

; Function Attrs: optsize
declare zeroext i8 @avrcp_volume_interface(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_support_vol_sync(...) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.control_pdu_handler* @get_arp_control_pdu_handlers(...) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.respone_pdu_handler* @get_arp_deal_respone_handlers(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal i32 @avctp_suspend() #0 section ".bt_stack_code" !dbg !2046 {
  %1 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !2051, !tbaa !502
  %2 = icmp eq %struct.avctp_stack_t* %1, null, !dbg !2053
  br i1 %2, label %26, label %3, !dbg !2054

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.avctp* %4, metadata !2050, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata %struct.avctp* %4, metadata !2050, metadata !DIExpression()), !dbg !2055
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %1, i32 0, i32 3, i32 0, !dbg !2056
  br label %5, !dbg !2058

; <label>:5:                                      ; preds = %20, %3
  %6 = phi %struct.avctp_stack_t* [ %21, %20 ], [ %1, %3 ]
  %7 = phi %struct.avctp* [ %22, %20 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 0, i32 5, i32 6, !dbg !2058
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !2058
  %10 = load i24, i24* %9, align 1, !dbg !2058
  %11 = trunc i24 %10 to i16, !dbg !2062
  %12 = icmp sgt i16 %11, -1, !dbg !2063
  %13 = and i24 %10, 30720, !dbg !2063
  %14 = icmp ne i24 %13, 18432, !dbg !2063
  %15 = or i1 %14, %12, !dbg !2063
  br i1 %15, label %20, label %16, !dbg !2063

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 0, i32 0, i32 0, !dbg !2064
  %18 = tail call i32 @avctp_try_send(i8* %17, i32 70, i32 undef) #8, !dbg !2068
  %19 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !tbaa !502
  br label %20, !dbg !2069

; <label>:20:                                     ; preds = %16, %5
  %21 = phi %struct.avctp_stack_t* [ %6, %5 ], [ %19, %16 ], !dbg !2070
  %22 = getelementptr inbounds %struct.avctp, %struct.avctp* %7, i32 1, !dbg !2072
  call void @llvm.dbg.value(metadata %struct.avctp* %22, metadata !2050, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata %struct.avctp* %22, metadata !2050, metadata !DIExpression()), !dbg !2055
  %23 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %21, i32 0, i32 3, i32 1, !dbg !2070
  %24 = icmp ult %struct.avctp* %22, %23, !dbg !2070
  br i1 %24, label %5, label %25, !dbg !2074, !llvm.loop !2076

; <label>:25:                                     ; preds = %20
  br label %26, !dbg !2078

; <label>:26:                                     ; preds = %25, %0
  ret i32 0, !dbg !2078
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @avctp_resume() #7 section ".bt_stack_code" !dbg !2079 {
  ret i32 0, !dbg !2080
}

; Function Attrs: nounwind optsize
define internal i32 @avctp_release() #0 section ".bt_stack_code" !dbg !2081 {
  %1 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !2084, !tbaa !502
  %2 = icmp eq %struct.avctp_stack_t* %1, null, !dbg !2086
  br i1 %2, label %23, label %3, !dbg !2087

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !2083, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata %struct.avctp* %5, metadata !2083, metadata !DIExpression()), !dbg !2088
  %4 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %1, i32 0, i32 3, i32 1, !dbg !2089
  %5 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %1, i32 0, i32 3, i32 0, !dbg !2093
  br label %8, !dbg !2094

; <label>:6:                                      ; preds = %15
  call void @llvm.dbg.value(metadata %struct.avctp* %17, metadata !2083, metadata !DIExpression()), !dbg !2088
  %7 = icmp ult %struct.avctp* %17, %4, !dbg !2089
  br i1 %7, label %8, label %18, !dbg !2094, !llvm.loop !2096

; <label>:8:                                      ; preds = %6, %3
  %9 = phi %struct.avctp* [ %5, %3 ], [ %17, %6 ]
  %10 = getelementptr inbounds %struct.avctp, %struct.avctp* %9, i32 0, i32 5, i32 6, !dbg !2098
  %11 = bitcast [3 x i8]* %10 to i24*, !dbg !2098
  %12 = load i24, i24* %11, align 1, !dbg !2098
  %13 = trunc i24 %12 to i16, !dbg !2101
  %14 = icmp slt i16 %13, 0, !dbg !2101
  br i1 %14, label %22, label %15, !dbg !2102

; <label>:15:                                     ; preds = %8
  %16 = load i1, i1* @avctp_run_loop_busy, align 4
  %17 = getelementptr inbounds %struct.avctp, %struct.avctp* %9, i32 1, !dbg !2103
  call void @llvm.dbg.value(metadata %struct.avctp* %17, metadata !2083, metadata !DIExpression()), !dbg !2088
  br i1 %16, label %22, label %6, !dbg !2105

; <label>:18:                                     ; preds = %6
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !2107
  %20 = load %struct.avctp_stack_t*, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !2108, !tbaa !502
  %21 = getelementptr inbounds %struct.avctp_stack_t, %struct.avctp_stack_t* %20, i32 0, i32 4, !dbg !2109
  tail call void @stack_run_loop_remove(%struct.run_loop* %21) #10, !dbg !2110
  store %struct.avctp_stack_t* null, %struct.avctp_stack_t** @acp_stack, align 4, !dbg !2111, !tbaa !502
  store i1 false, i1* @avctp_run_loop_busy, align 4
  br label %23, !dbg !2112

; <label>:22:                                     ; preds = %15, %8
  br label %23, !dbg !2113

; <label>:23:                                     ; preds = %22, %18, %0
  %24 = phi i32 [ 0, %18 ], [ 0, %0 ], [ 1, %22 ]
  ret i32 %24, !dbg !2113
}

; Function Attrs: optsize
declare void @stack_run_loop_remove(%struct.run_loop*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @avctp_channel_open(i8 zeroext, i16 zeroext, i8*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2114 {
  %5 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !2121, metadata !DIExpression()), !dbg !2127
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !2128
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #9, !dbg !2128
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !2125, metadata !DIExpression()), !dbg !2129
  %7 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !2130
  call void @bt_flip_addr(i8* nonnull %6, i8* %7) #10, !dbg !2131
  %8 = call fastcc %struct.avctp* @__avctp_conn_for_addr(i8* nonnull %6) #8, !dbg !2132
  call void @llvm.dbg.value(metadata %struct.avctp* %8, metadata !2126, metadata !DIExpression()), !dbg !2133
  %9 = icmp eq %struct.avctp* %8, null, !dbg !2134
  %10 = icmp eq i8 %0, 0
  br i1 %9, label %11, label %15, !dbg !2136

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %42, !dbg !2137

; <label>:12:                                     ; preds = %11
  %13 = call fastcc %struct.avctp* @__create_avctp_conn(i8* nonnull %6) #8, !dbg !2139
  call void @llvm.dbg.value(metadata %struct.avctp* %13, metadata !2126, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata %struct.avctp* %13, metadata !2126, metadata !DIExpression()), !dbg !2133
  %14 = icmp eq %struct.avctp* %13, null, !dbg !2140
  br i1 %14, label %42, label %17, !dbg !2142

; <label>:15:                                     ; preds = %4
  call void @llvm.dbg.value(metadata %struct.avctp* %13, metadata !2126, metadata !DIExpression()), !dbg !2133
  br i1 %10, label %17, label %16, !dbg !2143

; <label>:16:                                     ; preds = %15
  call fastcc void @__free_avctp_conn(%struct.avctp* nonnull %8, i8 zeroext %3) #8, !dbg !2145
  br label %42, !dbg !2148

; <label>:17:                                     ; preds = %15, %12
  %18 = phi %struct.avctp* [ %8, %15 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.avctp, %struct.avctp* %18, i32 0, i32 1, !dbg !2149
  store i16 %1, i16* %19, align 2, !dbg !2151, !tbaa !537
  %20 = getelementptr inbounds %struct.avctp, %struct.avctp* %18, i32 0, i32 5, i32 6, !dbg !2152
  %21 = bitcast [3 x i8]* %20 to i24*, !dbg !2152
  %22 = load i24, i24* %21, align 1, !dbg !2153
  %23 = and i24 %22, -113, !dbg !2153
  %24 = or i24 %23, 32, !dbg !2153
  store i24 %24, i24* %21, align 1, !dbg !2153
  %25 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2154, !tbaa !502
  %26 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %25, i32 0, i32 5, !dbg !2156
  %27 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %26, align 4, !dbg !2156, !tbaa !2033
  %28 = icmp eq void (i8*, i32, i32, i8)* %27, null, !dbg !2154
  br i1 %28, label %31, label %29, !dbg !2157

; <label>:29:                                     ; preds = %17
  %30 = getelementptr inbounds %struct.avctp, %struct.avctp* %18, i32 0, i32 0, i32 0, !dbg !2158
  call void %27(i8* %30, i32 1, i32 8, i8 zeroext %3) #10, !dbg !2160
  br label %31, !dbg !2161

; <label>:31:                                     ; preds = %29, %17
  call void @remove_avctp_timer() #8, !dbg !2162
  call void @llvm.dbg.value(metadata %struct.avctp* %13, metadata !471, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 0, metadata !472, metadata !DIExpression()), !dbg !2165
  %32 = getelementptr inbounds %struct.avctp, %struct.avctp* %18, i32 0, i32 5, i32 0, !dbg !2166
  %33 = load i32, i32* %32, align 4, !dbg !2167, !tbaa !483
  %34 = or i32 %33, 1, !dbg !2167
  store i32 %34, i32* %32, align 4, !dbg !2167, !tbaa !483
  call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !2168
  %35 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2169, !tbaa !502
  %36 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %35, i32 0, i32 9, !dbg !2171
  %37 = load i32, i32* %36, align 1, !dbg !2171
  %38 = and i32 %37, 2097152, !dbg !2169
  %39 = icmp eq i32 %38, 0, !dbg !2169
  br i1 %39, label %42, label %40, !dbg !2172

; <label>:40:                                     ; preds = %31
  %41 = call i32 @auto_start_music_player(i8* nonnull %6, i8 zeroext 0) #8, !dbg !2173
  br label %42, !dbg !2175

; <label>:42:                                     ; preds = %40, %31, %16, %12, %11
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #9, !dbg !2176
  ret void, !dbg !2177
}

; Function Attrs: optsize
declare i32 @__bt_profile_enable(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @l2cap_decline_connection_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @bd_addr_to_str(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @handle_vendordep_pdu_res(%struct.avctp*, i8 zeroext, i8*, i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @handle_vendordep_pdu(%struct.avctp*, i8 zeroext, i8*, i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc i32 @avctp_passthrough_release(%struct.avctp*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2179 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %1, metadata !2182, metadata !DIExpression()), !dbg !2186
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i32 0, i32 0, !dbg !2187
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %4) #9, !dbg !2187
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !2183, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 0, metadata !2184, metadata !DIExpression()), !dbg !2189
  %5 = icmp eq %struct.avctp* %0, null, !dbg !2190
  br i1 %5, label %19, label %6, !dbg !2192

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 6, !dbg !2193
  %8 = bitcast [3 x i8]* %7 to i24*, !dbg !2193
  %9 = load i24, i24* %8, align 1, !dbg !2194
  %10 = trunc i24 %9 to i8, !dbg !2194
  %11 = add i8 %10, 1, !dbg !2194
  %12 = and i8 %11, 15, !dbg !2194
  %13 = zext i8 %12 to i24, !dbg !2194
  %14 = and i24 %9, -16, !dbg !2194
  %15 = or i24 %13, %14, !dbg !2194
  store i24 %15, i24* %8, align 1, !dbg !2194
  %16 = or i8 %1, -128, !dbg !2195
  store i8 %16, i8* %4, align 1, !dbg !2196, !tbaa !544
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i32 0, i32 1, !dbg !2197
  store i8 0, i8* %17, align 1, !dbg !2198, !tbaa !544
  %18 = call fastcc i32 @avctp_send(%struct.avctp* nonnull %0, i8 zeroext %12, i8 zeroext 0, i8 zeroext 0, i8 zeroext 9, i8 zeroext 124, i8* nonnull %4, i32 2) #8, !dbg !2199
  call void @llvm.dbg.value(metadata i32 %18, metadata !2184, metadata !DIExpression()), !dbg !2189
  br label %19, !dbg !2200

; <label>:19:                                     ; preds = %6, %2
  %20 = phi i32 [ %18, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %4) #9, !dbg !2201
  ret i32 %20, !dbg !2201
}

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @local_irq_disable(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @local_irq_enable(...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @avrcp_get_capabilities(%struct.avctp*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @avrcp_register_notification(%struct.avctp*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @avrcp_list_player_attributes(%struct.avctp*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @avrcp_get_play_status(%struct.avctp*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @avrcp_get_element_attributes(%struct.avctp*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @avrcp_player_event(%struct.avctp*, i8 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @os_time_dly(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @avrcp_set_player_value(%struct.avctp*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!325, !326}
!llvm.ident = !{!327}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !324, line: 190, type: !150, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !148, globals: !178)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avctp.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !13, !24, !43, !69, !77, !81, !135}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 209, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/avctp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "AVCTP_STATE_DISCONNECTED", value: 0)
!9 = !DIEnumerator(name: "AVCTP_STATE_CONNECTING", value: 1)
!10 = !DIEnumerator(name: "AVCTP_STATE_CONNECTED", value: 2)
!11 = !DIEnumerator(name: "AVCTP_STATE_BROWSING_CONNECTING", value: 3)
!12 = !DIEnumerator(name: "AVCTP_STATE_BROWSING_CONNECTED", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 31, size: 32, elements: !15)
!14 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23}
!16 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!17 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!18 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!19 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!20 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!21 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!22 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!23 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 217, size: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!26 = !DIEnumerator(name: "AVCTP_CMD_GET_CAPABILITIES", value: 0)
!27 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_STATUS", value: 1)
!28 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_TRACK", value: 2)
!29 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_SETTING", value: 3)
!30 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_LIST_ATTR", value: 4)
!31 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_SET_REP", value: 5)
!32 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_SET_SHUFFLE", value: 6)
!33 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_VOL_CHANGED", value: 7)
!34 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_STATUS_CHANGED", value: 8)
!35 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_PLAYBACK_POS", value: 9)
!36 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_SEEK_RELEASE", value: 10)
!37 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_GET_PLAY_STATUS", value: 11)
!38 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_GET_MUSIC_INFO", value: 12)
!39 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_BQB_VOL_CHANGED", value: 13)
!40 = !DIEnumerator(name: "AVCTP_CMD_CONNECT_A2DP_MEDIA", value: 14)
!41 = !DIEnumerator(name: "AVCTP_RESPONSE_ERROR_TYPE_1", value: 15)
!42 = !DIEnumerator(name: "AVCTP_CMD_MAX_OP_VALUE", value: 16)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!45 = !DIEnumerator(name: "AVCTP_OPID_VOLUME_UP", value: 65)
!46 = !DIEnumerator(name: "AVCTP_OPID_VOLUME_DOWN", value: 66)
!47 = !DIEnumerator(name: "AVCTP_OPID_MUTE", value: 67)
!48 = !DIEnumerator(name: "AVCTP_OPID_PLAY", value: 68)
!49 = !DIEnumerator(name: "AVCTP_OPID_STOP", value: 69)
!50 = !DIEnumerator(name: "AVCTP_OPID_PAUSE", value: 70)
!51 = !DIEnumerator(name: "AVCTP_OPID_FAST_FORWARD", value: 73)
!52 = !DIEnumerator(name: "AVCTP_OPID_REWIND", value: 72)
!53 = !DIEnumerator(name: "AVCTP_OPID_NEXT", value: 75)
!54 = !DIEnumerator(name: "AVCTP_OPID_PREV", value: 76)
!55 = !DIEnumerator(name: "AVCTP_OPID_F1", value: 113)
!56 = !DIEnumerator(name: "AVCTP_OPID_F2", value: 114)
!57 = !DIEnumerator(name: "AVCTP_OPID_F3", value: 115)
!58 = !DIEnumerator(name: "AVCTP_OPID_F4", value: 116)
!59 = !DIEnumerator(name: "AVCTP_OPID_F5", value: 117)
!60 = !DIEnumerator(name: "AVCTP_OPID_F6", value: 118)
!61 = !DIEnumerator(name: "AVCTP_OPID_F7", value: 119)
!62 = !DIEnumerator(name: "AVCTP_OPID_F8", value: 120)
!63 = !DIEnumerator(name: "AVCTP_OPID_F9", value: 121)
!64 = !DIEnumerator(name: "AVCTP_OPID_F10", value: 122)
!65 = !DIEnumerator(name: "AVCTP_OPID_DISCONN", value: 240)
!66 = !DIEnumerator(name: "AVCTP_OPID_CONN", value: 241)
!67 = !DIEnumerator(name: "AVCTP_OPID_HOOK_A2DP_DISCONN", value: 242)
!68 = !DIEnumerator(name: "AVCTP_OPID_HOOK_A2DP_CONN", value: 243)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 157, size: 32, elements: !71)
!70 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIEnumerator(name: "A2DP_STATUS_IDLE", value: 0)
!73 = !DIEnumerator(name: "A2DP_STATUS_STARTING", value: 1)
!74 = !DIEnumerator(name: "A2DP_STATUS_SUSPENDING", value: 2)
!75 = !DIEnumerator(name: "A2DP_STATUS_FWD_SEEK", value: 3)
!76 = !DIEnumerator(name: "A2DP_STATUS_REV_SEEK", value: 4)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 65, size: 32, elements: !78)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "AVCTP_INDSTA_CTRL_STA_CHANGED", value: 16)
!80 = !DIEnumerator(name: "AVCTP_INDSTA_MAX", value: 17)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 299, size: 32, elements: !83)
!82 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!84 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!85 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!86 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!87 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!88 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!89 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!90 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!91 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!92 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!93 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!94 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!95 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!96 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!97 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!98 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!99 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!100 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!101 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!102 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!103 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!104 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!105 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!106 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!107 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!108 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!109 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!110 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!111 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!112 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!113 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!114 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!115 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!116 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!117 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!118 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!119 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!120 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!121 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!122 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!123 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!124 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!125 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!126 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!127 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!128 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!129 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!130 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!131 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!132 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!133 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!134 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 164, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!137 = !DIEnumerator(name: "A2DP_CMD_CONNECT", value: 50)
!138 = !DIEnumerator(name: "A2DP_CMD_DISCONNECT", value: 51)
!139 = !DIEnumerator(name: "A2DP_CMD_START", value: 52)
!140 = !DIEnumerator(name: "A2DP_CMD_CLOSE", value: 53)
!141 = !DIEnumerator(name: "A2DP_CMD_SUSPEND", value: 54)
!142 = !DIEnumerator(name: "A2DP_CMD_GET_CONFIGURATION", value: 55)
!143 = !DIEnumerator(name: "A2DP_CMD_ABORT", value: 56)
!144 = !DIEnumerator(name: "A2DP_CMD_EMITTER_START_CMD", value: 57)
!145 = !DIEnumerator(name: "A2DP_CMD_EMITTER_SUSPEND_CMD", value: 58)
!146 = !DIEnumerator(name: "A2DP_CMD_EMITTER_CLOSE_CMD", value: 59)
!147 = !DIEnumerator(name: "A2DP_CMD_CONNECT_MEDIA_CHANNEL", value: 60)
!148 = !{!149, !150, !151, !167, !164, !175}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avctp_header", file: !6, line: 168, size: 24, elements: !153)
!153 = !{!154, !160, !161, !162, !163}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ipid", scope: !152, file: !6, line: 169, baseType: !155, size: 1, flags: DIFlagBitField, extraData: i64 0)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !156, line: 20, baseType: !157)
!156 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !158, line: 29, baseType: !159)
!158 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!159 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cr", scope: !152, file: !6, line: 170, baseType: !155, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "packet_type", scope: !152, file: !6, line: 171, baseType: !155, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !152, file: !6, line: 172, baseType: !155, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !152, file: !6, line: 173, baseType: !164, size: 16, offset: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !156, line: 26, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !158, line: 43, baseType: !166)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avc_header", file: !6, line: 177, size: 24, elements: !169)
!169 = !{!170, !171, !172, !173, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !168, file: !6, line: 178, baseType: !155, size: 4, flags: DIFlagBitField, extraData: i64 0)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_hdr0", scope: !168, file: !6, line: 179, baseType: !155, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "subunit_id", scope: !168, file: !6, line: 180, baseType: !155, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "subunit_type", scope: !168, file: !6, line: 181, baseType: !155, size: 5, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !168, file: !6, line: 182, baseType: !155, size: 8, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !177, line: 11, baseType: !159)
!177 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!178 = !{!0, !179, !191, !219, !322}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "bt_suspend_avctp_resumeavctp_release", scope: !2, file: !3, line: 1315, type: !181, isLocal: false, isDefinition: true)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !183, line: 313, size: 96, elements: !184)
!183 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!184 = !{!185, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !182, file: !183, line: 314, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 32)
!187 = !DISubroutineType(types: !188)
!188 = !{!150, null}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !182, file: !183, line: 315, baseType: !186, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !182, file: !183, line: 316, baseType: !186, size: 32, offset: 64)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "avctp_conn_timer", scope: !2, file: !3, line: 1190, type: !193, isLocal: false, isDefinition: true)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !194, line: 19, baseType: !195)
!194 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !194, line: 7, size: 160, elements: !196)
!196 = !{!197, !204, !208, !209, !210, !211, !212, !213, !218}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !195, file: !194, line: 8, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !199, line: 55, baseType: !200)
!199 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !199, line: 53, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !199, line: 54, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !195, file: !194, line: 10, baseType: !205, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 32, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !158, line: 65, baseType: !207)
!207 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !195, file: !194, line: 11, baseType: !205, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !195, file: !194, line: 12, baseType: !205, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !195, file: !194, line: 13, baseType: !205, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !195, file: !194, line: 14, baseType: !205, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !195, file: !194, line: 15, baseType: !205, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !195, file: !194, line: 17, baseType: !214, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !195, file: !194, line: 18, baseType: !149, size: 32, offset: 128)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "acp_stack", scope: !2, file: !3, line: 24, type: !221, isLocal: true, isDefinition: true)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "avctp_stack_t", file: !6, line: 318, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 312, size: 640, elements: !224)
!224 = !{!225, !226, !227, !229, !311}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "acp_send_cmd_cnt", scope: !223, file: !6, line: 313, baseType: !176, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reserve_1", scope: !223, file: !6, line: 314, baseType: !176, size: 8, offset: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "reserve_2", scope: !223, file: !6, line: 315, baseType: !228, size: 16, offset: 16)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !177, line: 13, baseType: !166)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !223, file: !6, line: 316, baseType: !230, size: 512, offset: 32)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 512, elements: !309)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avctp", file: !6, line: 296, size: 512, elements: !232)
!232 = !{!233, !239, !240, !241, !255, !267}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr", scope: !231, file: !6, line: 297, baseType: !234, size: 48)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !235, line: 7, baseType: !236)
!235 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 48, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 6)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "control_cid", scope: !231, file: !6, line: 298, baseType: !228, size: 16, offset: 48)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_conn_cnt", scope: !231, file: !6, line: 299, baseType: !176, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arp_control_handlers", scope: !231, file: !6, line: 300, baseType: !242, size: 32, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_pdu_handler", file: !6, line: 246, size: 64, elements: !245)
!245 = !{!246, !247, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pdu_id", scope: !244, file: !6, line: 247, baseType: !155, size: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !244, file: !6, line: 248, baseType: !155, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !244, file: !6, line: 249, baseType: !249, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = !DISubroutineType(types: !251)
!251 = !{!155, !252, !253, !155}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 32)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "avrcp_header", file: !6, line: 238, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arp_respone_handlers", scope: !231, file: !6, line: 301, baseType: !256, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "respone_pdu_handler", file: !6, line: 252, size: 64, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pdu_id", scope: !258, file: !6, line: 253, baseType: !155, size: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !258, file: !6, line: 254, baseType: !155, size: 8, offset: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !258, file: !6, line: 255, baseType: !263, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!264 = !DISubroutineType(types: !265)
!265 = !{!155, !252, !155, !155, !266, !150}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "acp_core_data", scope: !231, file: !6, line: 306, baseType: !268, size: 352, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "avrcp_core_data_t", file: !6, line: 294, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 274, size: 352, elements: !270)
!270 = !{!271, !273, !274, !275, !279, !280, !281, !282, !284, !286, !287, !288, !289, !290, !291, !292, !293, !294, !298}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pending_cmd", scope: !269, file: !6, line: 275, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !177, line: 15, baseType: !207)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pending_release_cnt", scope: !269, file: !6, line: 276, baseType: !155, size: 8, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pending_release_cmd", scope: !269, file: !6, line: 277, baseType: !155, size: 8, offset: 40)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "remote_player_setting_attr_value", scope: !269, file: !6, line: 278, baseType: !276, size: 40, offset: 48)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 40, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 5)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "remote_player_setting_cnt", scope: !269, file: !6, line: 279, baseType: !155, size: 8, offset: 88)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "remote_player_setting_attr", scope: !269, file: !6, line: 280, baseType: !155, size: 8, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "remote_transaction", scope: !269, file: !6, line: 281, baseType: !155, size: 4, offset: 104, flags: DIFlagBitField, extraData: i64 104)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !6, line: 282, baseType: !283, size: 3, offset: 108, flags: DIFlagBitField, extraData: i64 104)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "avctp_state_t", file: !6, line: 215, baseType: !5)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "initiator", scope: !269, file: !6, line: 283, baseType: !285, size: 1, offset: 111, flags: DIFlagBitField, extraData: i64 104)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !177, line: 11, baseType: !159)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pre_sta", scope: !269, file: !6, line: 284, baseType: !176, size: 3, offset: 112, flags: DIFlagBitField, extraData: i64 104)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_play_sta", scope: !269, file: !6, line: 285, baseType: !176, size: 3, offset: 115, flags: DIFlagBitField, extraData: i64 104)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_play_have_sent", scope: !269, file: !6, line: 286, baseType: !285, size: 1, offset: 118, flags: DIFlagBitField, extraData: i64 104)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_inuse", scope: !269, file: !6, line: 287, baseType: !285, size: 1, offset: 119, flags: DIFlagBitField, extraData: i64 104)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pos_read", scope: !269, file: !6, line: 288, baseType: !176, size: 4, offset: 120, flags: DIFlagBitField, extraData: i64 104)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pos_write", scope: !269, file: !6, line: 289, baseType: !176, size: 4, offset: 124, flags: DIFlagBitField, extraData: i64 104)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "avrcp_volume", scope: !269, file: !6, line: 290, baseType: !176, size: 8, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_send_buf_len", scope: !269, file: !6, line: 291, baseType: !176, size: 8, offset: 136)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_opid_buf", scope: !269, file: !6, line: 292, baseType: !295, size: 72, offset: 144)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 72, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 9)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "avrcp_event", scope: !269, file: !6, line: 293, baseType: !299, size: 112, offset: 216)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 112, elements: !307)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avrcp_event_info", file: !6, line: 263, size: 8, elements: !301)
!301 = !{!302, !303, !304, !305, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !300, file: !6, line: 264, baseType: !155, size: 1, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "registered_events", scope: !300, file: !6, line: 265, baseType: !155, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "remote_supported_events", scope: !300, file: !6, line: 266, baseType: !155, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "remote_registered_events", scope: !300, file: !6, line: 267, baseType: !155, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "transaction_events", scope: !300, file: !6, line: 268, baseType: !155, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!307 = !{!308}
!308 = !DISubrange(count: 14)
!309 = !{!310}
!310 = !DISubrange(count: 1)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !223, file: !6, line: 317, baseType: !312, size: 96, offset: 544)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !313, line: 9, size: 96, elements: !314)
!313 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!314 = !{!315, !316, !321}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !312, file: !313, line: 10, baseType: !198, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !312, file: !313, line: 11, baseType: !317, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !312, file: !313, line: 12, baseType: !149, size: 32, offset: 64)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "avctp_run_loop_busy", scope: !2, file: !3, line: 25, type: !176, isLocal: true, isDefinition: true)
!324 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!325 = !{i32 2, !"Dwarf Version", i32 4}
!326 = !{i32 2, !"Debug Info Version", i32 3}
!327 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!328 = distinct !DISubprogram(name: "avctp_send_vendordep", scope: !3, file: !3, line: 206, type: !329, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!150, !252, !155, !155, !155, !266, !150}
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DILocalVariable(name: "conn", arg: 1, scope: !328, file: !3, line: 206, type: !252)
!333 = !DILocalVariable(name: "transaction", arg: 2, scope: !328, file: !3, line: 206, type: !155)
!334 = !DILocalVariable(name: "code", arg: 3, scope: !328, file: !3, line: 207, type: !155)
!335 = !DILocalVariable(name: "subunit", arg: 4, scope: !328, file: !3, line: 207, type: !155)
!336 = !DILocalVariable(name: "operands", arg: 5, scope: !328, file: !3, line: 208, type: !266)
!337 = !DILocalVariable(name: "operand_count", arg: 6, scope: !328, file: !3, line: 208, type: !150)
!338 = !DILocation(line: 206, column: 40, scope: !328)
!339 = !DILocation(line: 206, column: 54, scope: !328)
!340 = !DILocation(line: 207, column: 34, scope: !328)
!341 = !DILocation(line: 207, column: 48, scope: !328)
!342 = !DILocation(line: 208, column: 35, scope: !328)
!343 = !DILocation(line: 208, column: 49, scope: !328)
!344 = !DILocation(line: 210, column: 12, scope: !328)
!345 = !DILocation(line: 210, column: 5, scope: !328)
!346 = distinct !DISubprogram(name: "avctp_send", scope: !3, file: !3, line: 157, type: !347, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!150, !252, !155, !155, !155, !155, !155, !266, !150}
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !369, !370, !371, !372}
!350 = !DILocalVariable(name: "conn", arg: 1, scope: !346, file: !3, line: 157, type: !252)
!351 = !DILocalVariable(name: "transaction", arg: 2, scope: !346, file: !3, line: 157, type: !155)
!352 = !DILocalVariable(name: "cr", arg: 3, scope: !346, file: !3, line: 158, type: !155)
!353 = !DILocalVariable(name: "code", arg: 4, scope: !346, file: !3, line: 158, type: !155)
!354 = !DILocalVariable(name: "subunit", arg: 5, scope: !346, file: !3, line: 159, type: !155)
!355 = !DILocalVariable(name: "opcode", arg: 6, scope: !346, file: !3, line: 159, type: !155)
!356 = !DILocalVariable(name: "operands", arg: 7, scope: !346, file: !3, line: 160, type: !266)
!357 = !DILocalVariable(name: "operand_count", arg: 8, scope: !346, file: !3, line: 160, type: !150)
!358 = !DILocalVariable(name: "ctrl_io", scope: !346, file: !3, line: 162, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 896, elements: !367)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !6, line: 241, size: 448, elements: !361)
!361 = !{!362, !366}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !360, file: !6, line: 242, baseType: !363, size: 400)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 400, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 50)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !360, file: !6, line: 243, baseType: !150, size: 32, offset: 416)
!367 = !{!368}
!368 = !DISubrange(count: 2)
!369 = !DILocalVariable(name: "avctp_h", scope: !346, file: !3, line: 163, type: !151)
!370 = !DILocalVariable(name: "avc", scope: !346, file: !3, line: 164, type: !167)
!371 = !DILocalVariable(name: "err", scope: !346, file: !3, line: 165, type: !150)
!372 = !DILocalVariable(name: "avctp_send_buf", scope: !373, file: !3, line: 193, type: !375)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 186, column: 54)
!374 = distinct !DILexicalBlock(scope: !346, file: !3, line: 186, column: 9)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 640, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 80)
!378 = !DILocation(line: 157, column: 37, scope: !346)
!379 = !DILocation(line: 157, column: 51, scope: !346)
!380 = !DILocation(line: 158, column: 31, scope: !346)
!381 = !DILocation(line: 158, column: 43, scope: !346)
!382 = !DILocation(line: 159, column: 31, scope: !346)
!383 = !DILocation(line: 159, column: 48, scope: !346)
!384 = !DILocation(line: 160, column: 32, scope: !346)
!385 = !DILocation(line: 160, column: 46, scope: !346)
!386 = !DILocation(line: 162, column: 5, scope: !346)
!387 = !DILocation(line: 162, column: 18, scope: !346)
!388 = !DILocation(line: 165, column: 9, scope: !346)
!389 = !DILocation(line: 166, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !346, file: !3, line: 166, column: 9)
!391 = !DILocation(line: 166, column: 9, scope: !346)
!392 = !DILocation(line: 169, column: 24, scope: !346)
!393 = !DILocation(line: 170, column: 24, scope: !346)
!394 = !DILocation(line: 171, column: 34, scope: !395)
!395 = distinct !DILexicalBlock(scope: !346, file: !3, line: 171, column: 9)
!396 = !DILocation(line: 171, column: 12, scope: !395)
!397 = !DILocation(line: 171, column: 9, scope: !346)
!398 = !DILocation(line: 175, column: 5, scope: !346)
!399 = !DILocation(line: 163, column: 26, scope: !346)
!400 = !DILocation(line: 164, column: 24, scope: !346)
!401 = !DILocation(line: 179, column: 26, scope: !346)
!402 = !DILocation(line: 181, column: 17, scope: !346)
!403 = !DILocation(line: 182, column: 18, scope: !346)
!404 = !DILocation(line: 183, column: 15, scope: !346)
!405 = !DILocation(line: 184, column: 23, scope: !346)
!406 = !DILocation(line: 185, column: 17, scope: !346)
!407 = !DILocation(line: 186, column: 29, scope: !374)
!408 = !{!409, !410, i64 37}
!409 = !{!"avctp", !410, i64 0, !412, i64 6, !410, i64 8, !413, i64 12, !413, i64 16, !414, i64 20}
!410 = !{!"omnipotent char", !411, i64 0}
!411 = !{!"Simple C/C++ TBAA"}
!412 = !{!"short", !410, i64 0}
!413 = !{!"any pointer", !410, i64 0}
!414 = !{!"", !415, i64 0, !410, i64 4, !410, i64 5, !410, i64 6, !410, i64 11, !410, i64 12, !410, i64 13, !410, i64 13, !410, i64 13, !410, i64 14, !410, i64 14, !410, i64 14, !410, i64 14, !410, i64 15, !410, i64 15, !410, i64 16, !410, i64 17, !410, i64 18, !410, i64 27}
!415 = !{!"int", !410, i64 0}
!416 = !DILocation(line: 186, column: 48, scope: !374)
!417 = !DILocation(line: 186, column: 9, scope: !346)
!418 = !DILocation(line: 187, column: 82, scope: !373)
!419 = !DILocation(line: 187, column: 69, scope: !373)
!420 = !DILocation(line: 187, column: 50, scope: !373)
!421 = !DILocation(line: 187, column: 48, scope: !373)
!422 = !DILocation(line: 193, column: 9, scope: !373)
!423 = !DILocation(line: 193, column: 12, scope: !373)
!424 = !DILocation(line: 195, column: 9, scope: !373)
!425 = !DILocation(line: 196, column: 17, scope: !373)
!426 = !DILocation(line: 196, column: 9, scope: !373)
!427 = !DILocation(line: 197, column: 15, scope: !373)
!428 = !DILocation(line: 199, column: 5, scope: !374)
!429 = !DILocation(line: 199, column: 5, scope: !373)
!430 = !DILocation(line: 203, column: 1, scope: !346)
!431 = distinct !DISubprogram(name: "avctp_send_vendordep_req", scope: !3, file: !3, line: 215, type: !432, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!150, !252, !155, !155, !266, !150}
!434 = !{!435, !436, !437, !438, !439, !440}
!435 = !DILocalVariable(name: "conn", arg: 1, scope: !431, file: !3, line: 215, type: !252)
!436 = !DILocalVariable(name: "code", arg: 2, scope: !431, file: !3, line: 215, type: !155)
!437 = !DILocalVariable(name: "subunit", arg: 3, scope: !431, file: !3, line: 216, type: !155)
!438 = !DILocalVariable(name: "operands", arg: 4, scope: !431, file: !3, line: 216, type: !266)
!439 = !DILocalVariable(name: "operand_count", arg: 5, scope: !431, file: !3, line: 217, type: !150)
!440 = !DILocalVariable(name: "err", scope: !431, file: !3, line: 219, type: !150)
!441 = !DILocation(line: 215, column: 44, scope: !431)
!442 = !DILocation(line: 215, column: 58, scope: !431)
!443 = !DILocation(line: 216, column: 38, scope: !431)
!444 = !DILocation(line: 216, column: 56, scope: !431)
!445 = !DILocation(line: 217, column: 34, scope: !431)
!446 = !DILocation(line: 219, column: 9, scope: !431)
!447 = !DILocation(line: 220, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !431, file: !3, line: 220, column: 9)
!449 = !DILocation(line: 220, column: 9, scope: !431)
!450 = !DILocation(line: 224, column: 25, scope: !431)
!451 = !DILocation(line: 224, column: 43, scope: !431)
!452 = !DILocation(line: 225, column: 11, scope: !431)
!453 = !DILocation(line: 227, column: 5, scope: !431)
!454 = !DILocation(line: 228, column: 1, scope: !431)
!455 = distinct !DISubprogram(name: "emitter_rx_avctp_opid_deal", scope: !3, file: !3, line: 541, type: !456, isLocal: false, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !176, !176}
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "cmd", arg: 1, scope: !455, file: !3, line: 541, type: !176)
!460 = !DILocalVariable(name: "id", arg: 2, scope: !455, file: !3, line: 541, type: !176)
!461 = !DILocation(line: 541, column: 36, scope: !455)
!462 = !DILocation(line: 541, column: 44, scope: !455)
!463 = !DILocation(line: 544, column: 1, scope: !455)
!464 = distinct !DISubprogram(name: "set_cmd_pending_bit", scope: !3, file: !3, line: 666, type: !465, isLocal: false, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !470)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467, !469}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "avctp_t", file: !6, line: 310, baseType: !231)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "avctp_cmd_pending_bit", file: !6, line: 235, baseType: !24)
!470 = !{!471, !472}
!471 = !DILocalVariable(name: "conn", arg: 1, scope: !464, file: !3, line: 666, type: !467)
!472 = !DILocalVariable(name: "index", arg: 2, scope: !464, file: !3, line: 666, type: !469)
!473 = !DILocation(line: 666, column: 35, scope: !464)
!474 = !DILocation(line: 666, column: 63, scope: !464)
!475 = !DILocation(line: 668, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !464, file: !3, line: 668, column: 9)
!477 = !DILocation(line: 671, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !464, file: !3, line: 671, column: 9)
!479 = !DILocation(line: 668, column: 9, scope: !464)
!480 = !DILocation(line: 674, column: 40, scope: !464)
!481 = !DILocation(line: 674, column: 25, scope: !464)
!482 = !DILocation(line: 674, column: 37, scope: !464)
!483 = !{!409, !415, i64 20}
!484 = !DILocation(line: 675, column: 5, scope: !464)
!485 = !DILocation(line: 676, column: 1, scope: !464)
!486 = !DILocation(line: 676, column: 1, scope: !487)
!487 = !DILexicalBlockFile(scope: !464, file: !3, discriminator: 1)
!488 = distinct !DISubprogram(name: "avctp_try_send", scope: !3, file: !3, line: 873, type: !489, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !492)
!489 = !DISubroutineType(types: !490)
!490 = !{!150, !266, !491, !272}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "AVCTP_OPID_TYPE", file: !6, line: 107, baseType: !43)
!492 = !{!493, !494, !495, !496}
!493 = !DILocalVariable(name: "addr", arg: 1, scope: !488, file: !3, line: 873, type: !266)
!494 = !DILocalVariable(name: "opid", arg: 2, scope: !488, file: !3, line: 873, type: !491)
!495 = !DILocalVariable(name: "param", arg: 3, scope: !488, file: !3, line: 873, type: !272)
!496 = !DILocalVariable(name: "conn", scope: !488, file: !3, line: 883, type: !467)
!497 = !DILocation(line: 873, column: 30, scope: !488)
!498 = !DILocation(line: 873, column: 52, scope: !488)
!499 = !DILocation(line: 873, column: 62, scope: !488)
!500 = !DILocation(line: 875, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !488, file: !3, line: 875, column: 9)
!502 = !{!413, !413, i64 0}
!503 = !DILocation(line: 875, column: 19, scope: !501)
!504 = !DILocation(line: 875, column: 9, scope: !488)
!505 = !DILocation(line: 878, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !488, file: !3, line: 878, column: 9)
!507 = !DILocation(line: 878, column: 9, scope: !488)
!508 = !DILocalVariable(name: "status", arg: 2, scope: !509, file: !3, line: 1228, type: !176)
!509 = distinct !DISubprogram(name: "avctp_hook_a2dp_connection_changed", scope: !3, file: !3, line: 1228, type: !510, isLocal: true, isDefinition: true, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !266, !176, !272, !176}
!512 = !{!513, !508, !514, !515, !516, !517}
!513 = !DILocalVariable(name: "temp_dev_addr", arg: 1, scope: !509, file: !3, line: 1228, type: !266)
!514 = !DILocalVariable(name: "time", arg: 3, scope: !509, file: !3, line: 1228, type: !272)
!515 = !DILocalVariable(name: "conn_type", arg: 4, scope: !509, file: !3, line: 1228, type: !176)
!516 = !DILocalVariable(name: "ret", scope: !509, file: !3, line: 1230, type: !176)
!517 = !DILocalVariable(name: "conn", scope: !509, file: !3, line: 1231, type: !467)
!518 = !DILocation(line: 1228, column: 77, scope: !509, inlinedAt: !519)
!519 = distinct !DILocation(line: 879, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !506, file: !3, line: 878, column: 34)
!521 = !DILocation(line: 1228, column: 89, scope: !509, inlinedAt: !519)
!522 = !DILocation(line: 1228, column: 98, scope: !509, inlinedAt: !519)
!523 = !DILocation(line: 1237, column: 12, scope: !509, inlinedAt: !519)
!524 = !DILocation(line: 1231, column: 14, scope: !509, inlinedAt: !519)
!525 = !DILocation(line: 1240, column: 14, scope: !526, inlinedAt: !519)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 1240, column: 13)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 1238, column: 22)
!528 = distinct !DILexicalBlock(scope: !509, file: !3, line: 1238, column: 9)
!529 = !DILocation(line: 1240, column: 13, scope: !527, inlinedAt: !519)
!530 = !DILocation(line: 1241, column: 20, scope: !531, inlinedAt: !519)
!531 = distinct !DILexicalBlock(scope: !526, file: !3, line: 1240, column: 20)
!532 = !DILocation(line: 1242, column: 17, scope: !533, inlinedAt: !519)
!533 = distinct !DILexicalBlock(scope: !531, file: !3, line: 1242, column: 17)
!534 = !DILocation(line: 1242, column: 22, scope: !533, inlinedAt: !519)
!535 = !DILocation(line: 1242, column: 32, scope: !536, inlinedAt: !519)
!536 = !DILexicalBlockFile(scope: !533, file: !3, discriminator: 1)
!537 = !{!409, !412, i64 6}
!538 = !DILocation(line: 1242, column: 44, scope: !536, inlinedAt: !519)
!539 = !DILocation(line: 1242, column: 17, scope: !540, inlinedAt: !519)
!540 = !DILexicalBlockFile(scope: !531, file: !3, discriminator: 1)
!541 = !DILocation(line: 1243, column: 17, scope: !542, inlinedAt: !519)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 1243, column: 17)
!543 = distinct !DILexicalBlock(scope: !533, file: !3, line: 1242, column: 51)
!544 = !{!410, !410, i64 0}
!545 = !DILocation(line: 1243, column: 17, scope: !543, inlinedAt: !519)
!546 = !DILocation(line: 1243, column: 17, scope: !547, inlinedAt: !519)
!547 = !DILexicalBlockFile(scope: !542, file: !3, discriminator: 1)
!548 = !DILocation(line: 1244, column: 37, scope: !543, inlinedAt: !519)
!549 = !DILocation(line: 1244, column: 47, scope: !543, inlinedAt: !519)
!550 = !DILocation(line: 1245, column: 83, scope: !543, inlinedAt: !519)
!551 = !DILocation(line: 1245, column: 23, scope: !543, inlinedAt: !519)
!552 = !DILocation(line: 1230, column: 8, scope: !509, inlinedAt: !519)
!553 = !DILocation(line: 1247, column: 43, scope: !543, inlinedAt: !519)
!554 = !DILocation(line: 1248, column: 13, scope: !543, inlinedAt: !519)
!555 = !DILocation(line: 883, column: 21, scope: !488)
!556 = !DILocation(line: 883, column: 14, scope: !488)
!557 = !DILocation(line: 884, column: 14, scope: !558)
!558 = distinct !DILexicalBlock(scope: !488, file: !3, line: 884, column: 9)
!559 = !DILocation(line: 884, column: 9, scope: !488)
!560 = !DILocation(line: 887, column: 5, scope: !488)
!561 = !DILocation(line: 890, column: 33, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 890, column: 13)
!563 = distinct !DILexicalBlock(scope: !488, file: !3, line: 887, column: 19)
!564 = !DILocation(line: 890, column: 45, scope: !562)
!565 = !DILocation(line: 890, column: 13, scope: !563)
!566 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !567)
!567 = distinct !DILocation(line: 893, column: 9, scope: !563)
!568 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !567)
!569 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !567)
!570 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !567)
!571 = !DILocation(line: 894, column: 9, scope: !563)
!572 = !DILocation(line: 896, column: 33, scope: !573)
!573 = distinct !DILexicalBlock(scope: !563, file: !3, line: 896, column: 13)
!574 = !DILocation(line: 896, column: 45, scope: !573)
!575 = !DILocation(line: 896, column: 13, scope: !563)
!576 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !577)
!577 = distinct !DILocation(line: 899, column: 9, scope: !563)
!578 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !577)
!579 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !577)
!580 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !577)
!581 = !DILocation(line: 900, column: 9, scope: !563)
!582 = !DILocation(line: 902, column: 33, scope: !583)
!583 = distinct !DILexicalBlock(scope: !563, file: !3, line: 902, column: 13)
!584 = !DILocation(line: 902, column: 45, scope: !583)
!585 = !DILocation(line: 902, column: 13, scope: !563)
!586 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !587)
!587 = distinct !DILocation(line: 905, column: 9, scope: !563)
!588 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !587)
!589 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !587)
!590 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !587)
!591 = !DILocation(line: 906, column: 9, scope: !563)
!592 = !DILocation(line: 908, column: 33, scope: !593)
!593 = distinct !DILexicalBlock(scope: !563, file: !3, line: 908, column: 13)
!594 = !DILocation(line: 908, column: 45, scope: !593)
!595 = !DILocation(line: 908, column: 13, scope: !563)
!596 = !DILocation(line: 911, column: 29, scope: !563)
!597 = !DILocation(line: 911, column: 49, scope: !563)
!598 = !{!409, !410, i64 24}
!599 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !600)
!600 = distinct !DILocation(line: 912, column: 9, scope: !563)
!601 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !600)
!602 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !600)
!603 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !600)
!604 = !DILocation(line: 913, column: 9, scope: !563)
!605 = !DILocation(line: 915, column: 33, scope: !606)
!606 = distinct !DILexicalBlock(scope: !563, file: !3, line: 915, column: 13)
!607 = !DILocation(line: 915, column: 45, scope: !606)
!608 = !DILocation(line: 915, column: 13, scope: !563)
!609 = !DILocation(line: 918, column: 29, scope: !563)
!610 = !DILocation(line: 918, column: 49, scope: !563)
!611 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !612)
!612 = distinct !DILocation(line: 919, column: 9, scope: !563)
!613 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !612)
!614 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !612)
!615 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !612)
!616 = !DILocation(line: 920, column: 9, scope: !563)
!617 = !DILocation(line: 922, column: 33, scope: !618)
!618 = distinct !DILexicalBlock(scope: !563, file: !3, line: 922, column: 13)
!619 = !DILocation(line: 922, column: 45, scope: !618)
!620 = !DILocation(line: 922, column: 13, scope: !563)
!621 = !DILocation(line: 925, column: 29, scope: !563)
!622 = !DILocation(line: 925, column: 49, scope: !563)
!623 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !624)
!624 = distinct !DILocation(line: 926, column: 9, scope: !563)
!625 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !624)
!626 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !624)
!627 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !624)
!628 = !DILocation(line: 927, column: 9, scope: !563)
!629 = !DILocation(line: 941, column: 33, scope: !630)
!630 = distinct !DILexicalBlock(scope: !563, file: !3, line: 941, column: 13)
!631 = !DILocation(line: 941, column: 45, scope: !630)
!632 = !DILocation(line: 941, column: 13, scope: !563)
!633 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !634)
!634 = distinct !DILocation(line: 944, column: 9, scope: !563)
!635 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !634)
!636 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !634)
!637 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !634)
!638 = !DILocation(line: 945, column: 9, scope: !563)
!639 = !DILocation(line: 958, column: 79, scope: !563)
!640 = !DILocation(line: 958, column: 64, scope: !563)
!641 = !DILocation(line: 958, column: 73, scope: !563)
!642 = !DILocation(line: 958, column: 9, scope: !563)
!643 = !DILocation(line: 958, column: 77, scope: !563)
!644 = !DILocation(line: 959, column: 33, scope: !645)
!645 = distinct !DILexicalBlock(scope: !563, file: !3, line: 959, column: 13)
!646 = !DILocation(line: 959, column: 43, scope: !645)
!647 = !DILocation(line: 959, column: 13, scope: !563)
!648 = !DILocation(line: 960, column: 43, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !3, line: 959, column: 66)
!650 = !DILocation(line: 961, column: 9, scope: !649)
!651 = !DILocation(line: 964, column: 5, scope: !488)
!652 = !DILocation(line: 965, column: 5, scope: !488)
!653 = !DILocation(line: 968, column: 1, scope: !654)
!654 = !DILexicalBlockFile(scope: !488, file: !3, discriminator: 1)
!655 = distinct !DISubprogram(name: "__avctp_conn_for_addr", scope: !3, file: !3, line: 37, type: !656, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!467, !266}
!658 = !{!659, !660}
!659 = !DILocalVariable(name: "addr", arg: 1, scope: !655, file: !3, line: 37, type: !266)
!660 = !DILocalVariable(name: "conn", scope: !655, file: !3, line: 39, type: !467)
!661 = !DILocation(line: 37, column: 49, scope: !655)
!662 = !DILocation(line: 39, column: 14, scope: !655)
!663 = !DILocation(line: 40, column: 5, scope: !664)
!664 = distinct !DILexicalBlock(scope: !655, file: !3, line: 40, column: 5)
!665 = !DILocation(line: 40, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !664, file: !3, discriminator: 1)
!667 = !DILocation(line: 41, column: 21, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 41, column: 13)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 40, column: 36)
!670 = distinct !DILexicalBlock(scope: !664, file: !3, line: 40, column: 5)
!671 = !DILocation(line: 41, column: 14, scope: !668)
!672 = !DILocation(line: 41, column: 56, scope: !668)
!673 = !DILocation(line: 41, column: 79, scope: !674)
!674 = !DILexicalBlockFile(scope: !668, file: !3, discriminator: 1)
!675 = !DILocation(line: 41, column: 59, scope: !674)
!676 = !DILocation(line: 41, column: 13, scope: !677)
!677 = !DILexicalBlockFile(scope: !669, file: !3, discriminator: 1)
!678 = !DILocation(line: 40, column: 5, scope: !679)
!679 = !DILexicalBlockFile(scope: !670, file: !3, discriminator: 2)
!680 = !DILocation(line: 40, column: 5, scope: !681)
!681 = !DILexicalBlockFile(scope: !670, file: !3, discriminator: 1)
!682 = distinct !{!682, !663, !683}
!683 = !DILocation(line: 44, column: 5, scope: !664)
!684 = !DILocation(line: 46, column: 1, scope: !655)
!685 = distinct !DISubprogram(name: "auto_pause_music_player", scope: !3, file: !3, line: 969, type: !686, isLocal: false, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{!150, !266}
!688 = !{!689, !690}
!689 = !DILocalVariable(name: "addr", arg: 1, scope: !685, file: !3, line: 969, type: !266)
!690 = !DILocalVariable(name: "conn", scope: !685, file: !3, line: 974, type: !467)
!691 = !DILocation(line: 969, column: 39, scope: !685)
!692 = !DILocation(line: 971, column: 9, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 971, column: 9)
!694 = !DILocation(line: 971, column: 20, scope: !693)
!695 = !DILocation(line: 971, column: 9, scope: !685)
!696 = !DILocation(line: 974, column: 21, scope: !685)
!697 = !DILocation(line: 974, column: 14, scope: !685)
!698 = !DILocation(line: 975, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !685, file: !3, line: 975, column: 9)
!700 = !DILocation(line: 975, column: 9, scope: !685)
!701 = !DILocation(line: 979, column: 30, scope: !702)
!702 = distinct !DILexicalBlock(scope: !685, file: !3, line: 979, column: 9)
!703 = !DILocation(line: 979, column: 39, scope: !702)
!704 = !DILocation(line: 979, column: 45, scope: !702)
!705 = !DILocation(line: 983, column: 20, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 982, column: 57)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 982, column: 13)
!708 = distinct !DILexicalBlock(scope: !702, file: !3, line: 979, column: 109)
!709 = !DILocation(line: 983, column: 13, scope: !706)
!710 = !DILocation(line: 988, column: 1, scope: !711)
!711 = !DILexicalBlockFile(scope: !685, file: !3, discriminator: 1)
!712 = distinct !DISubprogram(name: "avctp_reset_pending_release_cnt", scope: !3, file: !3, line: 990, type: !686, isLocal: false, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !713)
!713 = !{!714, !715}
!714 = !DILocalVariable(name: "addr", arg: 1, scope: !712, file: !3, line: 990, type: !266)
!715 = !DILocalVariable(name: "conn", scope: !712, file: !3, line: 996, type: !467)
!716 = !DILocation(line: 990, column: 47, scope: !712)
!717 = !DILocation(line: 992, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !712, file: !3, line: 992, column: 9)
!719 = !DILocation(line: 992, column: 20, scope: !718)
!720 = !DILocation(line: 992, column: 9, scope: !712)
!721 = !DILocation(line: 996, column: 21, scope: !712)
!722 = !DILocation(line: 996, column: 14, scope: !712)
!723 = !DILocation(line: 997, column: 14, scope: !724)
!724 = distinct !DILexicalBlock(scope: !712, file: !3, line: 997, column: 9)
!725 = !DILocation(line: 997, column: 9, scope: !712)
!726 = !DILocation(line: 1000, column: 29, scope: !727)
!727 = distinct !DILexicalBlock(scope: !712, file: !3, line: 1000, column: 9)
!728 = !DILocation(line: 1000, column: 9, scope: !727)
!729 = !DILocation(line: 1000, column: 9, scope: !712)
!730 = !DILocation(line: 1001, column: 49, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 1000, column: 50)
!732 = !DILocation(line: 1002, column: 9, scope: !731)
!733 = !DILocation(line: 1005, column: 1, scope: !734)
!734 = !DILexicalBlockFile(scope: !712, file: !3, discriminator: 1)
!735 = distinct !DISubprogram(name: "get_music_volume", scope: !3, file: !3, line: 1006, type: !686, isLocal: false, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !736)
!736 = !{!737, !738}
!737 = !DILocalVariable(name: "addr", arg: 1, scope: !735, file: !3, line: 1006, type: !266)
!738 = !DILocalVariable(name: "conn", scope: !735, file: !3, line: 1011, type: !467)
!739 = !DILocation(line: 1006, column: 32, scope: !735)
!740 = !DILocation(line: 1008, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1008, column: 9)
!742 = !DILocation(line: 1008, column: 20, scope: !741)
!743 = !DILocation(line: 1008, column: 9, scope: !735)
!744 = !DILocation(line: 1011, column: 21, scope: !735)
!745 = !DILocation(line: 1011, column: 14, scope: !735)
!746 = !DILocation(line: 1012, column: 14, scope: !747)
!747 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1012, column: 9)
!748 = !DILocation(line: 1012, column: 9, scope: !735)
!749 = !DILocation(line: 1022, column: 32, scope: !735)
!750 = !{!409, !410, i64 36}
!751 = !DILocation(line: 1022, column: 12, scope: !735)
!752 = !DILocation(line: 1022, column: 5, scope: !735)
!753 = !DILocation(line: 1023, column: 1, scope: !754)
!754 = !DILexicalBlockFile(scope: !735, file: !3, discriminator: 1)
!755 = distinct !DISubprogram(name: "auto_start_music_player", scope: !3, file: !3, line: 1027, type: !756, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!150, !266, !176}
!758 = !{!759, !760, !761}
!759 = !DILocalVariable(name: "addr", arg: 1, scope: !755, file: !3, line: 1027, type: !266)
!760 = !DILocalVariable(name: "ignore_a2dp_sta", arg: 2, scope: !755, file: !3, line: 1027, type: !176)
!761 = !DILocalVariable(name: "conn", scope: !755, file: !3, line: 1032, type: !467)
!762 = !DILocation(line: 1027, column: 39, scope: !755)
!763 = !DILocation(line: 1027, column: 48, scope: !755)
!764 = !DILocation(line: 1029, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1029, column: 9)
!766 = !DILocation(line: 1029, column: 19, scope: !765)
!767 = !DILocation(line: 1029, column: 9, scope: !755)
!768 = !DILocation(line: 1032, column: 21, scope: !755)
!769 = !DILocation(line: 1032, column: 14, scope: !755)
!770 = !DILocation(line: 1033, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1033, column: 9)
!772 = !DILocation(line: 1033, column: 9, scope: !755)
!773 = !DILocation(line: 1037, column: 29, scope: !774)
!774 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1037, column: 9)
!775 = !DILocation(line: 1037, column: 38, scope: !774)
!776 = !DILocation(line: 1037, column: 43, scope: !774)
!777 = !DILocation(line: 1037, column: 53, scope: !778)
!778 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!779 = !DILocation(line: 1037, column: 65, scope: !778)
!780 = !DILocation(line: 1037, column: 9, scope: !781)
!781 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 1)
!782 = !DILocation(line: 1038, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1038, column: 13)
!784 = distinct !DILexicalBlock(scope: !774, file: !3, line: 1037, column: 72)
!785 = !DILocation(line: 1038, column: 13, scope: !784)
!786 = !DILocation(line: 1039, column: 20, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !3, line: 1038, column: 30)
!788 = !DILocation(line: 1039, column: 13, scope: !787)
!789 = !DILocation(line: 1040, column: 40, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !3, line: 1040, column: 20)
!791 = !DILocation(line: 1040, column: 54, scope: !790)
!792 = !DILocation(line: 1040, column: 20, scope: !783)
!793 = !DILocation(line: 1041, column: 20, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 1040, column: 79)
!795 = !DILocation(line: 1041, column: 13, scope: !794)
!796 = !DILocation(line: 1044, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 1044, column: 9)
!798 = distinct !DILexicalBlock(scope: !774, file: !3, line: 1043, column: 12)
!799 = !DILocation(line: 1044, column: 9, scope: !798)
!800 = !DILocation(line: 1044, column: 9, scope: !801)
!801 = !DILexicalBlockFile(scope: !797, file: !3, discriminator: 1)
!802 = !DILocation(line: 1047, column: 1, scope: !781)
!803 = distinct !DISubprogram(name: "avctp_timer_init", scope: !3, file: !3, line: 1208, type: !804, isLocal: false, isDefinition: true, scopeLine: 1209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !150}
!806 = !{!807}
!807 = !DILocalVariable(name: "wait_time", arg: 1, scope: !803, file: !3, line: 1208, type: !150)
!808 = !DILocation(line: 1208, column: 27, scope: !803)
!809 = !DILocation(line: 1210, column: 26, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !3, line: 1210, column: 9)
!811 = !{!812, !415, i64 4}
!812 = !{!"btstack_timer_source", !813, i64 0, !415, i64 4, !415, i64 8, !415, i64 10, !415, i64 10, !415, i64 10, !415, i64 10, !413, i64 12, !413, i64 16}
!813 = !{!"btstack_linked_item", !413, i64 0}
!814 = !DILocation(line: 1210, column: 34, scope: !810)
!815 = !DILocation(line: 1210, column: 9, scope: !803)
!816 = !DILocation(line: 1211, column: 43, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1210, column: 40)
!818 = !DILocation(line: 1212, column: 34, scope: !817)
!819 = !{!812, !413, i64 12}
!820 = !DILocation(line: 1213, column: 9, scope: !817)
!821 = !DILocation(line: 1214, column: 5, scope: !817)
!822 = !DILocation(line: 1215, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 1215, column: 9)
!824 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1214, column: 12)
!825 = !DILocation(line: 1215, column: 9, scope: !824)
!826 = !DILocation(line: 1215, column: 9, scope: !827)
!827 = !DILexicalBlockFile(scope: !823, file: !3, discriminator: 1)
!828 = !DILocation(line: 1217, column: 1, scope: !803)
!829 = distinct !DISubprogram(name: "avctp_half_second_detect", scope: !3, file: !3, line: 1191, type: !830, isLocal: true, isDefinition: true, scopeLine: 1192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !833)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "ts", arg: 1, scope: !829, file: !3, line: 1191, type: !832)
!835 = !DILocalVariable(name: "conn", scope: !829, file: !3, line: 1193, type: !467)
!836 = !DILocation(line: 1191, column: 62, scope: !829)
!837 = !DILocation(line: 1194, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !829, file: !3, line: 1194, column: 5)
!839 = !DILocation(line: 1193, column: 14, scope: !829)
!840 = !DILocation(line: 1195, column: 33, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 1195, column: 13)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 1194, column: 36)
!843 = distinct !DILexicalBlock(scope: !838, file: !3, line: 1194, column: 5)
!844 = !DILocation(line: 1195, column: 13, scope: !841)
!845 = !DILocation(line: 1195, column: 13, scope: !842)
!846 = !DILocation(line: 1197, column: 23, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1197, column: 17)
!848 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1195, column: 43)
!849 = !DILocation(line: 1197, column: 35, scope: !847)
!850 = !DILocation(line: 1197, column: 17, scope: !848)
!851 = !DILocation(line: 1198, column: 47, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !3, line: 1197, column: 41)
!853 = !DILocation(line: 1199, column: 77, scope: !852)
!854 = !DILocation(line: 1199, column: 17, scope: !852)
!855 = !DILocation(line: 1201, column: 43, scope: !852)
!856 = !DILocation(line: 1202, column: 17, scope: !852)
!857 = !DILocation(line: 1203, column: 13, scope: !852)
!858 = !DILocation(line: 1194, column: 5, scope: !859)
!859 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 1)
!860 = !DILocation(line: 1194, column: 5, scope: !861)
!861 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 2)
!862 = !DILocation(line: 1194, column: 5, scope: !863)
!863 = !DILexicalBlockFile(scope: !838, file: !3, discriminator: 1)
!864 = distinct !{!864, !837, !865}
!865 = !DILocation(line: 1205, column: 5, scope: !838)
!866 = !DILocation(line: 1206, column: 1, scope: !829)
!867 = distinct !DISubprogram(name: "remove_avctp_timer", scope: !3, file: !3, line: 1219, type: !868, isLocal: false, isDefinition: true, scopeLine: 1220, isOptimized: true, unit: !2, variables: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null}
!870 = !{}
!871 = !DILocation(line: 1221, column: 26, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !3, line: 1221, column: 9)
!873 = !DILocation(line: 1221, column: 9, scope: !872)
!874 = !DILocation(line: 1221, column: 9, scope: !867)
!875 = !DILocation(line: 1222, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 1221, column: 35)
!877 = !DILocation(line: 1223, column: 9, scope: !876)
!878 = !DILocation(line: 1225, column: 5, scope: !876)
!879 = !DILocation(line: 1226, column: 1, scope: !867)
!880 = distinct !DISubprogram(name: "avctp_init", scope: !3, file: !3, line: 1401, type: !881, isLocal: false, isDefinition: true, scopeLine: 1405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !884)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !221, !883, !883, !149}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DILocalVariable(name: "stack", arg: 1, scope: !880, file: !3, line: 1401, type: !221)
!886 = !DILocalVariable(name: "deal_income_rsp", arg: 2, scope: !880, file: !3, line: 1402, type: !883)
!887 = !DILocalVariable(name: "deal_income_opid", arg: 3, scope: !880, file: !3, line: 1403, type: !883)
!888 = !DILocalVariable(name: "var", arg: 4, scope: !880, file: !3, line: 1404, type: !149)
!889 = !DILocalVariable(name: "conn", scope: !880, file: !3, line: 1406, type: !467)
!890 = !DILocation(line: 1401, column: 32, scope: !880)
!891 = !DILocation(line: 1402, column: 24, scope: !880)
!892 = !DILocation(line: 1403, column: 24, scope: !880)
!893 = !DILocation(line: 1404, column: 23, scope: !880)
!894 = !DILocation(line: 1407, column: 15, scope: !880)
!895 = !DILocation(line: 1411, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1411, column: 5)
!897 = !DILocation(line: 1411, column: 5, scope: !880)
!898 = !DILocation(line: 1411, column: 5, scope: !899)
!899 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 1)
!900 = !DILocation(line: 1412, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1412, column: 5)
!902 = !DILocation(line: 370, column: 1, scope: !903, inlinedAt: !908)
!903 = distinct !DISubprogram(name: "avctp_conn_init", scope: !3, file: !3, line: 366, type: !904, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !252}
!906 = !{!907}
!907 = !DILocalVariable(name: "conn", arg: 1, scope: !903, file: !3, line: 366, type: !252)
!908 = distinct !DILocation(line: 1413, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1412, column: 36)
!910 = distinct !DILexicalBlock(scope: !901, file: !3, line: 1412, column: 5)
!911 = !DILocation(line: 369, column: 31, scope: !903, inlinedAt: !908)
!912 = !DILocation(line: 1414, column: 29, scope: !909)
!913 = !DILocation(line: 1415, column: 39, scope: !909)
!914 = !DILocation(line: 1416, column: 29, scope: !909)
!915 = !DILocation(line: 1416, column: 48, scope: !909)
!916 = !DILocation(line: 1418, column: 78, scope: !880)
!917 = !DILocation(line: 1418, column: 5, scope: !918)
!918 = !DILexicalBlockFile(scope: !880, file: !3, discriminator: 1)
!919 = !DILocation(line: 1419, column: 30, scope: !880)
!920 = !DILocation(line: 1419, column: 41, scope: !880)
!921 = !DILocation(line: 1419, column: 5, scope: !880)
!922 = !DILocation(line: 1420, column: 1, scope: !880)
!923 = distinct !DISubprogram(name: "__avctp_packet_handler", scope: !3, file: !3, line: 1381, type: !924, isLocal: true, isDefinition: true, scopeLine: 1382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !926)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !176, !228, !175, !228}
!926 = !{!927, !928, !929, !930, !931, !933, !934, !935}
!927 = !DILocalVariable(name: "packet_type", arg: 1, scope: !923, file: !3, line: 1381, type: !176)
!928 = !DILocalVariable(name: "channel", arg: 2, scope: !923, file: !3, line: 1381, type: !228)
!929 = !DILocalVariable(name: "packet", arg: 3, scope: !923, file: !3, line: 1381, type: !175)
!930 = !DILocalVariable(name: "size", arg: 4, scope: !923, file: !3, line: 1381, type: !228)
!931 = !DILocalVariable(name: "event_addr", scope: !923, file: !3, line: 1383, type: !932)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 48, elements: !237)
!933 = !DILocalVariable(name: "con_handle", scope: !923, file: !3, line: 1384, type: !228)
!934 = !DILocalVariable(name: "psm", scope: !923, file: !3, line: 1385, type: !228)
!935 = !DILocalVariable(name: "l2cap_cid", scope: !923, file: !3, line: 1386, type: !228)
!936 = !DILocalVariable(name: "addr", scope: !937, file: !3, line: 436, type: !234)
!937 = distinct !DISubprogram(name: "avctp_incoming_connection", scope: !3, file: !3, line: 434, type: !938, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !228, !175, !228}
!940 = !{!941, !942, !943, !936, !944}
!941 = !DILocalVariable(name: "channel", arg: 1, scope: !937, file: !3, line: 434, type: !228)
!942 = !DILocalVariable(name: "packet", arg: 2, scope: !937, file: !3, line: 434, type: !175)
!943 = !DILocalVariable(name: "size", arg: 3, scope: !937, file: !3, line: 434, type: !228)
!944 = !DILocalVariable(name: "conn", scope: !937, file: !3, line: 437, type: !467)
!945 = !DILocation(line: 436, column: 15, scope: !937, inlinedAt: !946)
!946 = distinct !DILocation(line: 1345, column: 17, scope: !947, inlinedAt: !961)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 1344, column: 67)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 1344, column: 17)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1333, column: 28)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1327, column: 26)
!951 = distinct !DISubprogram(name: "avctp_packet_handler", scope: !3, file: !3, line: 1319, type: !924, isLocal: true, isDefinition: true, scopeLine: 1320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960}
!953 = !DILocalVariable(name: "packet_type", arg: 1, scope: !951, file: !3, line: 1319, type: !176)
!954 = !DILocalVariable(name: "channel", arg: 2, scope: !951, file: !3, line: 1319, type: !228)
!955 = !DILocalVariable(name: "packet", arg: 3, scope: !951, file: !3, line: 1319, type: !175)
!956 = !DILocalVariable(name: "size", arg: 4, scope: !951, file: !3, line: 1319, type: !228)
!957 = !DILocalVariable(name: "event_addr", scope: !951, file: !3, line: 1321, type: !932)
!958 = !DILocalVariable(name: "con_handle", scope: !951, file: !3, line: 1322, type: !228)
!959 = !DILocalVariable(name: "psm", scope: !951, file: !3, line: 1323, type: !228)
!960 = !DILocalVariable(name: "l2cap_cid", scope: !951, file: !3, line: 1324, type: !228)
!961 = distinct !DILocation(line: 1398, column: 5, scope: !923)
!962 = !DILocalVariable(name: "packet_temp_buf", scope: !963, file: !3, line: 556, type: !985)
!963 = distinct !DISubprogram(name: "avctp_packet_data_handle", scope: !3, file: !3, line: 547, type: !938, isLocal: true, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !962, !975, !976, !977}
!965 = !DILocalVariable(name: "channel", arg: 1, scope: !963, file: !3, line: 547, type: !228)
!966 = !DILocalVariable(name: "packet", arg: 2, scope: !963, file: !3, line: 547, type: !175)
!967 = !DILocalVariable(name: "size", arg: 3, scope: !963, file: !3, line: 547, type: !228)
!968 = !DILocalVariable(name: "conn", scope: !963, file: !3, line: 549, type: !467)
!969 = !DILocalVariable(name: "avctp_h", scope: !963, file: !3, line: 551, type: !151)
!970 = !DILocalVariable(name: "avrcp_h", scope: !963, file: !3, line: 552, type: !167)
!971 = !DILocalVariable(name: "code", scope: !963, file: !3, line: 553, type: !155)
!972 = !DILocalVariable(name: "type", scope: !963, file: !3, line: 554, type: !155)
!973 = !DILocalVariable(name: "iov_len_0", scope: !963, file: !3, line: 555, type: !228)
!974 = !DILocalVariable(name: "iov_len_1", scope: !963, file: !3, line: 555, type: !228)
!975 = !DILocalVariable(name: "send_ptr", scope: !963, file: !3, line: 557, type: !175)
!976 = !DILocalVariable(name: "res_len", scope: !963, file: !3, line: 558, type: !150)
!977 = !DILocalVariable(name: "avctp_send_buf", scope: !978, file: !3, line: 652, type: !982)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 642, column: 16)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 575, column: 13)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 574, column: 55)
!981 = distinct !DILexicalBlock(scope: !963, file: !3, line: 574, column: 9)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 8)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 800, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 100)
!988 = !DILocation(line: 556, column: 9, scope: !963, inlinedAt: !989)
!989 = distinct !DILocation(line: 1329, column: 9, scope: !950, inlinedAt: !961)
!990 = !DILocation(line: 1321, column: 8, scope: !951, inlinedAt: !961)
!991 = !DILocation(line: 1381, column: 39, scope: !923)
!992 = !DILocation(line: 1381, column: 56, scope: !923)
!993 = !DILocation(line: 1381, column: 69, scope: !923)
!994 = !DILocation(line: 1381, column: 81, scope: !923)
!995 = !DILocation(line: 1384, column: 9, scope: !923)
!996 = !DILocation(line: 1385, column: 9, scope: !923)
!997 = !DILocation(line: 1386, column: 9, scope: !923)
!998 = !DILocation(line: 1389, column: 21, scope: !999)
!999 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1389, column: 9)
!1000 = !DILocation(line: 1389, column: 9, scope: !923)
!1001 = !DILocation(line: 1390, column: 17, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1389, column: 42)
!1003 = !DILocation(line: 1390, column: 9, scope: !1002)
!1004 = !DILocation(line: 1319, column: 37, scope: !951, inlinedAt: !961)
!1005 = !DILocation(line: 1319, column: 54, scope: !951, inlinedAt: !961)
!1006 = !DILocation(line: 1319, column: 67, scope: !951, inlinedAt: !961)
!1007 = !DILocation(line: 1319, column: 79, scope: !951, inlinedAt: !961)
!1008 = !DILocation(line: 1321, column: 5, scope: !951, inlinedAt: !961)
!1009 = !DILocation(line: 1322, column: 9, scope: !951, inlinedAt: !961)
!1010 = !DILocation(line: 1323, column: 9, scope: !951, inlinedAt: !961)
!1011 = !DILocation(line: 1324, column: 9, scope: !951, inlinedAt: !961)
!1012 = !DILocation(line: 1333, column: 9, scope: !950, inlinedAt: !961)
!1013 = !DILocation(line: 1327, column: 5, scope: !951, inlinedAt: !961)
!1014 = !DILocation(line: 547, column: 42, scope: !963, inlinedAt: !989)
!1015 = !DILocation(line: 547, column: 55, scope: !963, inlinedAt: !989)
!1016 = !DILocation(line: 547, column: 67, scope: !963, inlinedAt: !989)
!1017 = !DILocalVariable(name: "channel", arg: 1, scope: !1018, file: !3, line: 48, type: !228)
!1018 = distinct !DISubprogram(name: "__avctp_conn_for_channel", scope: !3, file: !3, line: 48, type: !1019, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!467, !228}
!1021 = !{!1017, !1022}
!1022 = !DILocalVariable(name: "conn", scope: !1018, file: !3, line: 50, type: !467)
!1023 = !DILocation(line: 48, column: 46, scope: !1018, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 549, column: 21, scope: !963, inlinedAt: !989)
!1025 = !DILocation(line: 51, column: 5, scope: !1026, inlinedAt: !1024)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 51, column: 5)
!1027 = !DILocation(line: 51, column: 5, scope: !1028, inlinedAt: !1024)
!1028 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1029 = !DILocation(line: 52, column: 19, scope: !1030, inlinedAt: !1024)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 52, column: 13)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 51, column: 36)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 51, column: 5)
!1033 = !DILocation(line: 52, column: 31, scope: !1030, inlinedAt: !1024)
!1034 = !DILocation(line: 52, column: 42, scope: !1030, inlinedAt: !1024)
!1035 = !DILocation(line: 52, column: 65, scope: !1036, inlinedAt: !1024)
!1036 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 1)
!1037 = !DILocation(line: 52, column: 45, scope: !1036, inlinedAt: !1024)
!1038 = !DILocation(line: 52, column: 13, scope: !1039, inlinedAt: !1024)
!1039 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 1)
!1040 = !DILocation(line: 51, column: 5, scope: !1041, inlinedAt: !1024)
!1041 = !DILexicalBlockFile(scope: !1032, file: !3, discriminator: 2)
!1042 = !DILocation(line: 50, column: 14, scope: !1018, inlinedAt: !1024)
!1043 = !DILocation(line: 51, column: 5, scope: !1044, inlinedAt: !1024)
!1044 = !DILexicalBlockFile(scope: !1032, file: !3, discriminator: 1)
!1045 = distinct !{!1045, !1046, !1047}
!1046 = !DILocation(line: 51, column: 5, scope: !1026)
!1047 = !DILocation(line: 55, column: 5, scope: !1026)
!1048 = !DILocation(line: 549, column: 14, scope: !963, inlinedAt: !989)
!1049 = !DILocation(line: 553, column: 13, scope: !963, inlinedAt: !989)
!1050 = !DILocation(line: 553, column: 5, scope: !963, inlinedAt: !989)
!1051 = !DILocation(line: 554, column: 13, scope: !963, inlinedAt: !989)
!1052 = !DILocation(line: 554, column: 5, scope: !963, inlinedAt: !989)
!1053 = !DILocation(line: 556, column: 5, scope: !963, inlinedAt: !989)
!1054 = !DILocation(line: 557, column: 10, scope: !963, inlinedAt: !989)
!1055 = !DILocation(line: 558, column: 9, scope: !963, inlinedAt: !989)
!1056 = !DILocation(line: 560, column: 14, scope: !1057, inlinedAt: !989)
!1057 = distinct !DILexicalBlock(scope: !963, file: !3, line: 560, column: 9)
!1058 = !DILocation(line: 560, column: 9, scope: !963, inlinedAt: !989)
!1059 = !DILocation(line: 555, column: 9, scope: !963, inlinedAt: !989)
!1060 = !DILocation(line: 564, column: 44, scope: !963, inlinedAt: !989)
!1061 = !DILocation(line: 555, column: 20, scope: !963, inlinedAt: !989)
!1062 = !DILocation(line: 567, column: 45, scope: !963, inlinedAt: !989)
!1063 = !DILocation(line: 568, column: 12, scope: !963, inlinedAt: !989)
!1064 = !DILocation(line: 569, column: 21, scope: !963, inlinedAt: !989)
!1065 = !DILocation(line: 569, column: 10, scope: !963, inlinedAt: !989)
!1066 = !DILocation(line: 570, column: 21, scope: !963, inlinedAt: !989)
!1067 = !DILocation(line: 570, column: 10, scope: !963, inlinedAt: !989)
!1068 = !DILocation(line: 571, column: 5, scope: !963, inlinedAt: !989)
!1069 = !DILocation(line: 574, column: 18, scope: !981, inlinedAt: !989)
!1070 = !DILocation(line: 574, column: 30, scope: !981, inlinedAt: !989)
!1071 = !DILocation(line: 574, column: 9, scope: !963, inlinedAt: !989)
!1072 = !DILocation(line: 575, column: 13, scope: !979, inlinedAt: !989)
!1073 = !{!1074, !412, i64 1}
!1074 = !{!"avctp_header", !410, i64 0, !410, i64 0, !410, i64 0, !410, i64 0, !412, i64 1}
!1075 = !DILocation(line: 575, column: 33, scope: !979, inlinedAt: !989)
!1076 = !DILocation(line: 575, column: 13, scope: !980, inlinedAt: !989)
!1077 = !DILocation(line: 576, column: 26, scope: !1078, inlinedAt: !989)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 576, column: 17)
!1079 = distinct !DILexicalBlock(scope: !979, file: !3, line: 575, column: 58)
!1080 = !DILocation(line: 576, column: 17, scope: !1078, inlinedAt: !989)
!1081 = !{!1082, !410, i64 2}
!1082 = !{!"avc_header", !410, i64 0, !410, i64 0, !410, i64 1, !410, i64 1, !410, i64 2}
!1083 = !DILocation(line: 576, column: 17, scope: !1079, inlinedAt: !989)
!1084 = !DILocation(line: 578, column: 17, scope: !1085, inlinedAt: !989)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 576, column: 30)
!1086 = !DILocation(line: 580, column: 25, scope: !1087, inlinedAt: !989)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 580, column: 25)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 578, column: 42)
!1089 = !DILocation(line: 580, column: 35, scope: !1087, inlinedAt: !989)
!1090 = !DILocation(line: 580, column: 25, scope: !1088, inlinedAt: !989)
!1091 = !DILocation(line: 581, column: 25, scope: !1092, inlinedAt: !989)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 580, column: 41)
!1093 = !DILocation(line: 582, column: 75, scope: !1092, inlinedAt: !989)
!1094 = !DILocation(line: 582, column: 35, scope: !1092, inlinedAt: !989)
!1095 = !DILocation(line: 585, column: 21, scope: !1092, inlinedAt: !989)
!1096 = !DILocation(line: 586, column: 75, scope: !1097, inlinedAt: !989)
!1097 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 585, column: 28)
!1098 = !DILocation(line: 586, column: 35, scope: !1097, inlinedAt: !989)
!1099 = !DILocalVariable(name: "subunit", arg: 3, scope: !1100, file: !3, line: 345, type: !155)
!1100 = distinct !DISubprogram(name: "avctp_passthrough_rsp", scope: !3, file: !3, line: 344, type: !1101, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!285, !252, !155, !155, !266, !150}
!1103 = !{!1104, !1105, !1099, !1106, !1107, !1108}
!1104 = !DILocalVariable(name: "conn", arg: 1, scope: !1100, file: !3, line: 344, type: !252)
!1105 = !DILocalVariable(name: "code", arg: 2, scope: !1100, file: !3, line: 344, type: !155)
!1106 = !DILocalVariable(name: "operands", arg: 4, scope: !1100, file: !3, line: 345, type: !266)
!1107 = !DILocalVariable(name: "operand_count", arg: 5, scope: !1100, file: !3, line: 346, type: !150)
!1108 = !DILocalVariable(name: "err", scope: !1100, file: !3, line: 348, type: !150)
!1109 = !DILocation(line: 345, column: 43, scope: !1100, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 591, column: 21, scope: !1088, inlinedAt: !989)
!1111 = !DILocation(line: 346, column: 39, scope: !1100, inlinedAt: !1110)
!1112 = !DILocation(line: 348, column: 9, scope: !1100, inlinedAt: !1110)
!1113 = !DILocation(line: 349, column: 14, scope: !1114, inlinedAt: !1110)
!1114 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 349, column: 9)
!1115 = !DILocation(line: 349, column: 9, scope: !1100, inlinedAt: !1110)
!1116 = !DILocation(line: 352, column: 9, scope: !1117, inlinedAt: !1110)
!1117 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 352, column: 9)
!1118 = !DILocation(line: 352, column: 21, scope: !1117, inlinedAt: !1110)
!1119 = !DILocation(line: 352, column: 9, scope: !1100, inlinedAt: !1110)
!1120 = !DILocation(line: 356, column: 41, scope: !1121, inlinedAt: !1110)
!1121 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 356, column: 9)
!1122 = !DILocation(line: 358, column: 29, scope: !1123, inlinedAt: !1110)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 357, column: 36)
!1124 = !DILocation(line: 358, column: 49, scope: !1123, inlinedAt: !1110)
!1125 = !DILocation(line: 359, column: 51, scope: !1123, inlinedAt: !1110)
!1126 = !DILocation(line: 359, column: 29, scope: !1123, inlinedAt: !1110)
!1127 = !DILocation(line: 359, column: 49, scope: !1123, inlinedAt: !1110)
!1128 = !{!409, !410, i64 25}
!1129 = !DILocation(line: 360, column: 9, scope: !1123, inlinedAt: !1110)
!1130 = !DILocation(line: 362, column: 11, scope: !1100, inlinedAt: !1110)
!1131 = !DILocation(line: 363, column: 5, scope: !1100, inlinedAt: !1110)
!1132 = !DILocation(line: 598, column: 17, scope: !1133, inlinedAt: !989)
!1133 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 596, column: 20)
!1134 = !DILocation(line: 600, column: 25, scope: !1135, inlinedAt: !989)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 600, column: 25)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 598, column: 42)
!1137 = !DILocation(line: 600, column: 35, scope: !1135, inlinedAt: !989)
!1138 = !DILocation(line: 600, column: 25, scope: !1136, inlinedAt: !989)
!1139 = !DILocation(line: 601, column: 25, scope: !1140, inlinedAt: !989)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 600, column: 41)
!1141 = !DILocation(line: 604, column: 21, scope: !1140, inlinedAt: !989)
!1142 = !DILocation(line: 605, column: 35, scope: !1143, inlinedAt: !989)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 604, column: 28)
!1144 = !DILocation(line: 607, column: 37, scope: !1136, inlinedAt: !989)
!1145 = !DILocation(line: 607, column: 35, scope: !1136, inlinedAt: !989)
!1146 = !DILocation(line: 609, column: 21, scope: !1136, inlinedAt: !989)
!1147 = !DILocation(line: 612, column: 98, scope: !1136, inlinedAt: !989)
!1148 = !DILocalVariable(name: "conn", arg: 1, scope: !1149, file: !3, line: 103, type: !252)
!1149 = distinct !DISubprogram(name: "handle_unit_info", scope: !3, file: !3, line: 103, type: !1150, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1152)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!150, !252, !155, !266, !266, !266, !150}
!1152 = !{!1148, !1153, !1154, !1155, !1156, !1157}
!1153 = !DILocalVariable(name: "transaction", arg: 2, scope: !1149, file: !3, line: 103, type: !155)
!1154 = !DILocalVariable(name: "code", arg: 3, scope: !1149, file: !3, line: 104, type: !266)
!1155 = !DILocalVariable(name: "subunit", arg: 4, scope: !1149, file: !3, line: 104, type: !266)
!1156 = !DILocalVariable(name: "operands", arg: 5, scope: !1149, file: !3, line: 105, type: !266)
!1157 = !DILocalVariable(name: "operand_count", arg: 6, scope: !1149, file: !3, line: 105, type: !150)
!1158 = !DILocation(line: 103, column: 43, scope: !1149, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 612, column: 31, scope: !1136, inlinedAt: !989)
!1160 = !DILocation(line: 103, column: 57, scope: !1149, inlinedAt: !1159)
!1161 = !DILocation(line: 104, column: 53, scope: !1149, inlinedAt: !1159)
!1162 = !DILocation(line: 107, column: 15, scope: !1163, inlinedAt: !1159)
!1163 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 107, column: 9)
!1164 = !DILocation(line: 107, column: 9, scope: !1149, inlinedAt: !1159)
!1165 = !DILocation(line: 108, column: 15, scope: !1166, inlinedAt: !1159)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 107, column: 36)
!1167 = !DILocation(line: 109, column: 9, scope: !1166, inlinedAt: !1159)
!1168 = !DILocation(line: 112, column: 11, scope: !1149, inlinedAt: !1159)
!1169 = !DILocation(line: 118, column: 23, scope: !1170, inlinedAt: !1159)
!1170 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 118, column: 9)
!1171 = !DILocation(line: 118, column: 9, scope: !1149, inlinedAt: !1159)
!1172 = !DILocation(line: 119, column: 21, scope: !1173, inlinedAt: !1159)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 118, column: 29)
!1174 = !DILocation(line: 121, column: 23, scope: !1175, inlinedAt: !1159)
!1175 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 121, column: 9)
!1176 = !DILocation(line: 121, column: 9, scope: !1149, inlinedAt: !1159)
!1177 = !DILocation(line: 122, column: 9, scope: !1178, inlinedAt: !1159)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 121, column: 29)
!1179 = !DILocation(line: 122, column: 21, scope: !1178, inlinedAt: !1159)
!1180 = !DILocation(line: 123, column: 5, scope: !1178, inlinedAt: !1159)
!1181 = !DILocation(line: 613, column: 35, scope: !1136, inlinedAt: !989)
!1182 = !DILocation(line: 615, column: 21, scope: !1136, inlinedAt: !989)
!1183 = !DILocation(line: 617, column: 101, scope: !1136, inlinedAt: !989)
!1184 = !DILocalVariable(name: "conn", arg: 1, scope: !1185, file: !3, line: 131, type: !252)
!1185 = distinct !DISubprogram(name: "handle_subunit_info", scope: !3, file: !3, line: 131, type: !1150, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1186)
!1186 = !{!1184, !1187, !1188, !1189, !1190, !1191}
!1187 = !DILocalVariable(name: "transaction", arg: 2, scope: !1185, file: !3, line: 132, type: !155)
!1188 = !DILocalVariable(name: "code", arg: 3, scope: !1185, file: !3, line: 132, type: !266)
!1189 = !DILocalVariable(name: "subunit", arg: 4, scope: !1185, file: !3, line: 133, type: !266)
!1190 = !DILocalVariable(name: "operands", arg: 5, scope: !1185, file: !3, line: 133, type: !266)
!1191 = !DILocalVariable(name: "operand_count", arg: 6, scope: !1185, file: !3, line: 134, type: !150)
!1192 = !DILocation(line: 131, column: 46, scope: !1185, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 617, column: 31, scope: !1136, inlinedAt: !989)
!1194 = !DILocation(line: 132, column: 40, scope: !1185, inlinedAt: !1193)
!1195 = !DILocation(line: 133, column: 41, scope: !1185, inlinedAt: !1193)
!1196 = !DILocation(line: 136, column: 15, scope: !1197, inlinedAt: !1193)
!1197 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 136, column: 9)
!1198 = !DILocation(line: 136, column: 9, scope: !1185, inlinedAt: !1193)
!1199 = !DILocation(line: 137, column: 15, scope: !1200, inlinedAt: !1193)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 136, column: 36)
!1201 = !DILocation(line: 138, column: 9, scope: !1200, inlinedAt: !1193)
!1202 = !DILocation(line: 141, column: 11, scope: !1185, inlinedAt: !1193)
!1203 = !DILocation(line: 147, column: 23, scope: !1204, inlinedAt: !1193)
!1204 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 147, column: 9)
!1205 = !DILocation(line: 147, column: 9, scope: !1185, inlinedAt: !1193)
!1206 = !DILocation(line: 148, column: 9, scope: !1207, inlinedAt: !1193)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 147, column: 29)
!1208 = !DILocation(line: 148, column: 21, scope: !1207, inlinedAt: !1193)
!1209 = !DILocation(line: 149, column: 5, scope: !1207, inlinedAt: !1193)
!1210 = !DILocation(line: 618, column: 35, scope: !1136, inlinedAt: !989)
!1211 = !DILocation(line: 620, column: 21, scope: !1136, inlinedAt: !989)
!1212 = !DILocation(line: 623, column: 106, scope: !1136, inlinedAt: !989)
!1213 = !DILocalVariable(name: "transaction", arg: 2, scope: !1214, file: !3, line: 501, type: !176)
!1214 = distinct !DISubprogram(name: "handle_panel_passthrough", scope: !3, file: !3, line: 501, type: !1215, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1217)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!150, !252, !176, !175, !266, !175, !150}
!1217 = !{!1218, !1213, !1219, !1220, !1221, !1222, !1223}
!1218 = !DILocalVariable(name: "conn", arg: 1, scope: !1214, file: !3, line: 501, type: !252)
!1219 = !DILocalVariable(name: "code", arg: 3, scope: !1214, file: !3, line: 502, type: !175)
!1220 = !DILocalVariable(name: "subunit", arg: 4, scope: !1214, file: !3, line: 502, type: !266)
!1221 = !DILocalVariable(name: "operands", arg: 5, scope: !1214, file: !3, line: 502, type: !175)
!1222 = !DILocalVariable(name: "operand_count", arg: 6, scope: !1214, file: !3, line: 503, type: !150)
!1223 = !DILocalVariable(name: "pressed", scope: !1214, file: !3, line: 505, type: !150)
!1224 = !DILocation(line: 501, column: 60, scope: !1214, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 623, column: 31, scope: !1136, inlinedAt: !989)
!1226 = !DILocation(line: 506, column: 15, scope: !1227, inlinedAt: !1225)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 506, column: 9)
!1228 = !DILocation(line: 506, column: 48, scope: !1229, inlinedAt: !1225)
!1229 = !DILexicalBlockFile(scope: !1227, file: !3, discriminator: 1)
!1230 = !DILocation(line: 506, column: 36, scope: !1227, inlinedAt: !1225)
!1231 = !DILocation(line: 510, column: 23, scope: !1232, inlinedAt: !1225)
!1232 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 510, column: 9)
!1233 = !DILocation(line: 510, column: 9, scope: !1214, inlinedAt: !1225)
!1234 = !DILocation(line: 513, column: 9, scope: !1235, inlinedAt: !1225)
!1235 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 513, column: 9)
!1236 = !DILocation(line: 513, column: 21, scope: !1235, inlinedAt: !1225)
!1237 = !DILocation(line: 513, column: 9, scope: !1214, inlinedAt: !1225)
!1238 = !DILocation(line: 505, column: 9, scope: !1214, inlinedAt: !1225)
!1239 = !DILocation(line: 530, column: 33, scope: !1240, inlinedAt: !1225)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 515, column: 12)
!1241 = !DILocation(line: 530, column: 9, scope: !1240, inlinedAt: !1225)
!1242 = !DILocation(line: 624, column: 35, scope: !1136, inlinedAt: !989)
!1243 = !DILocation(line: 507, column: 15, scope: !1244, inlinedAt: !1225)
!1244 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 506, column: 70)
!1245 = !DILocation(line: 627, column: 25, scope: !1246, inlinedAt: !989)
!1246 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 627, column: 25)
!1247 = !DILocation(line: 627, column: 35, scope: !1246, inlinedAt: !989)
!1248 = !DILocation(line: 627, column: 25, scope: !1136, inlinedAt: !989)
!1249 = !DILocation(line: 628, column: 62, scope: !1250, inlinedAt: !989)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 627, column: 43)
!1251 = !DILocation(line: 628, column: 25, scope: !1250, inlinedAt: !989)
!1252 = !DILocation(line: 629, column: 21, scope: !1250, inlinedAt: !989)
!1253 = !DILocation(line: 637, column: 29, scope: !1254, inlinedAt: !989)
!1254 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 637, column: 21)
!1255 = !DILocation(line: 637, column: 21, scope: !1133, inlinedAt: !989)
!1256 = !DILocation(line: 638, column: 47, scope: !1257, inlinedAt: !989)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 637, column: 35)
!1258 = !DILocation(line: 639, column: 41, scope: !1257, inlinedAt: !989)
!1259 = !DILocation(line: 639, column: 56, scope: !1257, inlinedAt: !989)
!1260 = !DILocation(line: 639, column: 79, scope: !1257, inlinedAt: !989)
!1261 = !DILocation(line: 638, column: 21, scope: !1257, inlinedAt: !989)
!1262 = !DILocation(line: 640, column: 17, scope: !1257, inlinedAt: !989)
!1263 = !DILocation(line: 645, column: 25, scope: !978, inlinedAt: !989)
!1264 = !DILocation(line: 646, column: 27, scope: !978, inlinedAt: !989)
!1265 = !DILocation(line: 647, column: 33, scope: !978, inlinedAt: !989)
!1266 = !DILocation(line: 647, column: 52, scope: !978, inlinedAt: !989)
!1267 = !DILocation(line: 652, column: 13, scope: !978, inlinedAt: !989)
!1268 = !DILocation(line: 653, column: 13, scope: !978, inlinedAt: !989)
!1269 = !DILocation(line: 654, column: 13, scope: !978, inlinedAt: !989)
!1270 = !DILocation(line: 655, column: 13, scope: !978, inlinedAt: !989)
!1271 = !DILocation(line: 658, column: 9, scope: !979, inlinedAt: !989)
!1272 = !DILocation(line: 664, column: 1, scope: !963, inlinedAt: !989)
!1273 = !DILocation(line: 1330, column: 9, scope: !950, inlinedAt: !961)
!1274 = !DILocation(line: 1335, column: 32, scope: !949, inlinedAt: !961)
!1275 = !DILocation(line: 1335, column: 13, scope: !949, inlinedAt: !961)
!1276 = !DILocation(line: 1336, column: 13, scope: !949, inlinedAt: !961)
!1277 = !DILocation(line: 48, column: 46, scope: !1018, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 1340, column: 31, scope: !949, inlinedAt: !961)
!1279 = !DILocation(line: 51, column: 5, scope: !1026, inlinedAt: !1278)
!1280 = !DILocation(line: 51, column: 5, scope: !1028, inlinedAt: !1278)
!1281 = !DILocation(line: 52, column: 19, scope: !1030, inlinedAt: !1278)
!1282 = !DILocation(line: 52, column: 31, scope: !1030, inlinedAt: !1278)
!1283 = !DILocation(line: 52, column: 42, scope: !1030, inlinedAt: !1278)
!1284 = !DILocation(line: 52, column: 65, scope: !1036, inlinedAt: !1278)
!1285 = !DILocation(line: 52, column: 45, scope: !1036, inlinedAt: !1278)
!1286 = !DILocation(line: 52, column: 13, scope: !1039, inlinedAt: !1278)
!1287 = !DILocation(line: 51, column: 5, scope: !1041, inlinedAt: !1278)
!1288 = !DILocation(line: 50, column: 14, scope: !1018, inlinedAt: !1278)
!1289 = !DILocation(line: 51, column: 5, scope: !1044, inlinedAt: !1278)
!1290 = !DILocation(line: 1340, column: 13, scope: !1291, inlinedAt: !961)
!1291 = !DILexicalBlockFile(scope: !949, file: !3, discriminator: 1)
!1292 = !DILocation(line: 1341, column: 13, scope: !949, inlinedAt: !961)
!1293 = !DILocation(line: 1344, column: 17, scope: !948, inlinedAt: !961)
!1294 = !DILocation(line: 1344, column: 17, scope: !949, inlinedAt: !961)
!1295 = !DILocation(line: 434, column: 68, scope: !937, inlinedAt: !946)
!1296 = !DILocation(line: 436, column: 5, scope: !937, inlinedAt: !946)
!1297 = !DILocation(line: 439, column: 31, scope: !937, inlinedAt: !946)
!1298 = !DILocation(line: 439, column: 5, scope: !937, inlinedAt: !946)
!1299 = !DILocation(line: 441, column: 12, scope: !937, inlinedAt: !946)
!1300 = !DILocation(line: 437, column: 14, scope: !937, inlinedAt: !946)
!1301 = !DILocation(line: 442, column: 10, scope: !1302, inlinedAt: !946)
!1302 = distinct !DILexicalBlock(scope: !937, file: !3, line: 442, column: 9)
!1303 = !DILocation(line: 442, column: 9, scope: !937, inlinedAt: !946)
!1304 = !DILocation(line: 445, column: 9, scope: !1305, inlinedAt: !946)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 445, column: 9)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 444, column: 12)
!1307 = !DILocation(line: 445, column: 9, scope: !1306, inlinedAt: !946)
!1308 = !DILocation(line: 445, column: 9, scope: !1309, inlinedAt: !946)
!1309 = !DILexicalBlockFile(scope: !1305, file: !3, discriminator: 1)
!1310 = !DILocation(line: 443, column: 16, scope: !1311, inlinedAt: !946)
!1311 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 442, column: 16)
!1312 = !DILocation(line: 447, column: 9, scope: !1313, inlinedAt: !946)
!1313 = distinct !DILexicalBlock(scope: !937, file: !3, line: 447, column: 9)
!1314 = !DILocation(line: 447, column: 14, scope: !1313, inlinedAt: !946)
!1315 = !DILocation(line: 447, column: 24, scope: !1316, inlinedAt: !946)
!1316 = !DILexicalBlockFile(scope: !1313, file: !3, discriminator: 1)
!1317 = !DILocation(line: 447, column: 36, scope: !1316, inlinedAt: !946)
!1318 = !DILocation(line: 447, column: 9, scope: !1319, inlinedAt: !946)
!1319 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 1)
!1320 = !DILocation(line: 448, column: 15, scope: !1321, inlinedAt: !946)
!1321 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 447, column: 43)
!1322 = !DILocation(line: 448, column: 30, scope: !1321, inlinedAt: !946)
!1323 = !{!409, !410, i64 8}
!1324 = !DILocation(line: 449, column: 27, scope: !1321, inlinedAt: !946)
!1325 = !DILocation(line: 450, column: 29, scope: !1321, inlinedAt: !946)
!1326 = !DILocation(line: 450, column: 39, scope: !1321, inlinedAt: !946)
!1327 = !DILocation(line: 451, column: 9, scope: !1321, inlinedAt: !946)
!1328 = !DILocation(line: 452, column: 35, scope: !1321, inlinedAt: !946)
!1329 = !DILocation(line: 453, column: 5, scope: !1321, inlinedAt: !946)
!1330 = !DILocation(line: 454, column: 1, scope: !937, inlinedAt: !946)
!1331 = !DILocation(line: 1346, column: 13, scope: !947, inlinedAt: !961)
!1332 = !DILocation(line: 1347, column: 17, scope: !1333, inlinedAt: !961)
!1333 = distinct !DILexicalBlock(scope: !948, file: !3, line: 1346, column: 20)
!1334 = !DILocation(line: 1359, column: 39, scope: !949, inlinedAt: !961)
!1335 = !DILocation(line: 1359, column: 13, scope: !949, inlinedAt: !961)
!1336 = !DILocation(line: 1363, column: 13, scope: !1337, inlinedAt: !961)
!1337 = distinct !DILexicalBlock(scope: !949, file: !3, line: 1363, column: 13)
!1338 = !DILocation(line: 1363, column: 13, scope: !949, inlinedAt: !961)
!1339 = !DILocation(line: 1362, column: 25, scope: !949, inlinedAt: !961)
!1340 = !DILocation(line: 1361, column: 26, scope: !949, inlinedAt: !961)
!1341 = !DILocation(line: 1360, column: 26, scope: !949, inlinedAt: !961)
!1342 = !DILocation(line: 1363, column: 13, scope: !1343, inlinedAt: !961)
!1343 = !DILexicalBlockFile(scope: !1337, file: !3, discriminator: 1)
!1344 = !DILocation(line: 1363, column: 13, scope: !1345, inlinedAt: !961)
!1345 = !DILexicalBlockFile(scope: !1337, file: !3, discriminator: 2)
!1346 = !DILocation(line: 1365, column: 32, scope: !949, inlinedAt: !961)
!1347 = !DILocation(line: 1365, column: 13, scope: !949, inlinedAt: !961)
!1348 = !DILocation(line: 1366, column: 13, scope: !949, inlinedAt: !961)
!1349 = !DILocation(line: 1379, column: 1, scope: !951, inlinedAt: !961)
!1350 = !DILocation(line: 1399, column: 1, scope: !923)
!1351 = !DILocation(line: 1399, column: 1, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !923, file: !3, discriminator: 2)
!1353 = distinct !DISubprogram(name: "avctp_send_key_loop", scope: !3, file: !3, line: 700, type: !318, isLocal: true, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1354)
!1354 = !{!1355, !1356, !1357, !1358}
!1355 = !DILocalVariable(name: "loop", arg: 1, scope: !1353, file: !3, line: 700, type: !320)
!1356 = !DILocalVariable(name: "conn", scope: !1353, file: !3, line: 702, type: !467)
!1357 = !DILocalVariable(name: "i", scope: !1353, file: !3, line: 703, type: !150)
!1358 = !DILocalVariable(name: "opid", scope: !1359, file: !3, line: 854, type: !491)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 853, column: 9)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 713, column: 36)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 713, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 713, column: 5)
!1363 = !DILocalVariable(name: "operands", scope: !1364, file: !3, line: 276, type: !1371)
!1364 = distinct !DISubprogram(name: "avctp_passthrough_press", scope: !3, file: !3, line: 274, type: !1365, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!150, !252, !155}
!1367 = !{!1368, !1369, !1363, !1370}
!1368 = !DILocalVariable(name: "conn", arg: 1, scope: !1364, file: !3, line: 274, type: !252)
!1369 = !DILocalVariable(name: "op", arg: 2, scope: !1364, file: !3, line: 274, type: !155)
!1370 = !DILocalVariable(name: "err", scope: !1364, file: !3, line: 277, type: !150)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 16, elements: !367)
!1372 = !DILocation(line: 276, column: 13, scope: !1364, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 320, column: 11, scope: !1374, inlinedAt: !1381)
!1374 = distinct !DISubprogram(name: "avctp_send_passthrough", scope: !3, file: !3, line: 293, type: !1375, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!150, !467, !155}
!1377 = !{!1378, !1379, !1380}
!1378 = !DILocalVariable(name: "conn", arg: 1, scope: !1374, file: !3, line: 293, type: !467)
!1379 = !DILocalVariable(name: "op", arg: 2, scope: !1374, file: !3, line: 293, type: !155)
!1380 = !DILocalVariable(name: "err", scope: !1374, file: !3, line: 295, type: !150)
!1381 = distinct !DILocation(line: 859, column: 33, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 859, column: 17)
!1383 = !DILocation(line: 700, column: 50, scope: !1353)
!1384 = !DILocation(line: 705, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 705, column: 9)
!1386 = !DILocation(line: 705, column: 20, scope: !1385)
!1387 = !DILocation(line: 705, column: 9, scope: !1353)
!1388 = !DILocation(line: 709, column: 5, scope: !1353)
!1389 = !DILocation(line: 711, column: 5, scope: !1353)
!1390 = !DILocation(line: 713, column: 5, scope: !1362)
!1391 = !DILocation(line: 702, column: 14, scope: !1353)
!1392 = !DILocation(line: 713, column: 5, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1362, file: !3, discriminator: 1)
!1394 = !DILocation(line: 722, column: 54, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !3, discriminator: 1)
!1396 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 722, column: 13)
!1397 = !DILocation(line: 714, column: 33, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 714, column: 13)
!1399 = !DILocation(line: 714, column: 42, scope: !1398)
!1400 = !DILocation(line: 715, column: 13, scope: !1398)
!1401 = !DILocation(line: 715, column: 22, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1398, file: !3, discriminator: 1)
!1403 = !DILocation(line: 715, column: 34, scope: !1402)
!1404 = !DILocation(line: 714, column: 13, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1360, file: !3, discriminator: 1)
!1406 = !DILocation(line: 718, column: 24, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 718, column: 13)
!1408 = !{!1409, !410, i64 0}
!1409 = !{!"", !410, i64 0, !410, i64 1, !412, i64 2, !410, i64 4, !1410, i64 68}
!1410 = !{!"run_loop", !813, i64 0, !413, i64 4, !413, i64 8}
!1411 = !DILocation(line: 718, column: 41, scope: !1407)
!1412 = !DILocation(line: 718, column: 13, scope: !1360)
!1413 = !DILocation(line: 719, column: 40, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 718, column: 46)
!1415 = !DILocation(line: 720, column: 9, scope: !1414)
!1416 = !DILocation(line: 722, column: 65, scope: !1395)
!1417 = !DILocation(line: 722, column: 33, scope: !1396)
!1418 = !DILocation(line: 722, column: 45, scope: !1396)
!1419 = !DILocation(line: 722, column: 82, scope: !1395)
!1420 = !DILocation(line: 722, column: 50, scope: !1396)
!1421 = !DILocation(line: 724, column: 58, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 724, column: 21)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 723, column: 58)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 723, column: 13)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 723, column: 13)
!1426 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 722, column: 89)
!1427 = !DILocation(line: 724, column: 53, scope: !1422)
!1428 = !DILocation(line: 724, column: 21, scope: !1423)
!1429 = !DILocation(line: 726, column: 21, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 724, column: 65)
!1431 = !DILocation(line: 729, column: 45, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 729, column: 29)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 726, column: 32)
!1434 = !DILocation(line: 729, column: 42, scope: !1432)
!1435 = !DILocation(line: 729, column: 29, scope: !1433)
!1436 = !DILocation(line: 730, column: 61, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 729, column: 75)
!1438 = !DILocation(line: 731, column: 29, scope: !1437)
!1439 = !DILocation(line: 731, column: 40, scope: !1437)
!1440 = !DILocation(line: 731, column: 57, scope: !1437)
!1441 = !DILocation(line: 732, column: 25, scope: !1437)
!1442 = !DILocation(line: 735, column: 45, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 735, column: 29)
!1444 = !DILocation(line: 735, column: 42, scope: !1443)
!1445 = !DILocation(line: 735, column: 29, scope: !1433)
!1446 = !DILocation(line: 736, column: 61, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 735, column: 108)
!1448 = !DILocation(line: 737, column: 29, scope: !1447)
!1449 = !DILocation(line: 737, column: 40, scope: !1447)
!1450 = !DILocation(line: 737, column: 57, scope: !1447)
!1451 = !DILocation(line: 738, column: 25, scope: !1447)
!1452 = !DILocation(line: 741, column: 45, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 741, column: 29)
!1454 = !DILocation(line: 741, column: 42, scope: !1453)
!1455 = !DILocation(line: 741, column: 29, scope: !1433)
!1456 = !DILocation(line: 742, column: 61, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 741, column: 107)
!1458 = !DILocation(line: 743, column: 29, scope: !1457)
!1459 = !DILocation(line: 743, column: 40, scope: !1457)
!1460 = !DILocation(line: 743, column: 57, scope: !1457)
!1461 = !DILocation(line: 744, column: 25, scope: !1457)
!1462 = !DILocation(line: 747, column: 29, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 747, column: 29)
!1464 = !DILocation(line: 747, column: 29, scope: !1433)
!1465 = !DILocation(line: 748, column: 49, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 748, column: 33)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 747, column: 53)
!1468 = !DILocation(line: 748, column: 46, scope: !1466)
!1469 = !DILocation(line: 748, column: 33, scope: !1467)
!1470 = !DILocation(line: 749, column: 65, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 748, column: 114)
!1472 = !DILocation(line: 750, column: 33, scope: !1471)
!1473 = !DILocation(line: 750, column: 44, scope: !1471)
!1474 = !DILocation(line: 750, column: 61, scope: !1471)
!1475 = !DILocation(line: 751, column: 29, scope: !1471)
!1476 = !DILocation(line: 755, column: 29, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 755, column: 29)
!1478 = !DILocation(line: 755, column: 29, scope: !1433)
!1479 = !DILocation(line: 756, column: 49, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 756, column: 33)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 755, column: 53)
!1482 = !DILocation(line: 756, column: 46, scope: !1480)
!1483 = !DILocation(line: 756, column: 33, scope: !1481)
!1484 = !DILocation(line: 757, column: 65, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 756, column: 112)
!1486 = !DILocation(line: 758, column: 33, scope: !1485)
!1487 = !DILocation(line: 758, column: 44, scope: !1485)
!1488 = !DILocation(line: 758, column: 61, scope: !1485)
!1489 = !DILocation(line: 759, column: 29, scope: !1485)
!1490 = !DILocation(line: 763, column: 29, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 763, column: 29)
!1492 = !DILocation(line: 763, column: 29, scope: !1433)
!1493 = !DILocation(line: 764, column: 49, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 764, column: 33)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 763, column: 53)
!1496 = !DILocation(line: 764, column: 46, scope: !1494)
!1497 = !DILocation(line: 764, column: 33, scope: !1495)
!1498 = !DILocation(line: 765, column: 65, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 764, column: 118)
!1500 = !DILocation(line: 766, column: 33, scope: !1499)
!1501 = !DILocation(line: 766, column: 44, scope: !1499)
!1502 = !DILocation(line: 766, column: 61, scope: !1499)
!1503 = !DILocation(line: 767, column: 29, scope: !1499)
!1504 = !DILocation(line: 771, column: 45, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 771, column: 29)
!1506 = !DILocation(line: 771, column: 42, scope: !1505)
!1507 = !DILocation(line: 771, column: 29, scope: !1433)
!1508 = !DILocation(line: 772, column: 61, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 771, column: 81)
!1510 = !DILocation(line: 773, column: 29, scope: !1509)
!1511 = !DILocation(line: 773, column: 40, scope: !1509)
!1512 = !DILocation(line: 773, column: 57, scope: !1509)
!1513 = !DILocation(line: 774, column: 25, scope: !1509)
!1514 = !DILocalVariable(name: "conn", arg: 1, scope: !1515, file: !3, line: 678, type: !467)
!1515 = distinct !DISubprogram(name: "avrcp_set_repeat_mode", scope: !3, file: !3, line: 678, type: !1516, isLocal: true, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!150, !467}
!1518 = !{!1514}
!1519 = !DILocation(line: 678, column: 43, scope: !1515, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 777, column: 45, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 777, column: 29)
!1522 = !DILocation(line: 680, column: 29, scope: !1523, inlinedAt: !1520)
!1523 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 680, column: 9)
!1524 = !{!409, !410, i64 32}
!1525 = !DILocation(line: 680, column: 56, scope: !1523, inlinedAt: !1520)
!1526 = !DILocation(line: 680, column: 9, scope: !1515, inlinedAt: !1520)
!1527 = !DILocation(line: 681, column: 16, scope: !1528, inlinedAt: !1520)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 681, column: 13)
!1529 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 680, column: 92)
!1530 = !DILocation(line: 681, column: 13, scope: !1528, inlinedAt: !1520)
!1531 = !DILocation(line: 681, column: 99, scope: !1528, inlinedAt: !1520)
!1532 = !DILocation(line: 681, column: 13, scope: !1529, inlinedAt: !1520)
!1533 = !DILocation(line: 684, column: 16, scope: !1529, inlinedAt: !1520)
!1534 = !DILocation(line: 777, column: 42, scope: !1521)
!1535 = !DILocation(line: 777, column: 29, scope: !1433)
!1536 = !DILocation(line: 779, column: 29, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 777, column: 74)
!1538 = !DILocation(line: 778, column: 61, scope: !1537)
!1539 = !DILocation(line: 779, column: 40, scope: !1537)
!1540 = !DILocation(line: 779, column: 57, scope: !1537)
!1541 = !DILocation(line: 780, column: 25, scope: !1537)
!1542 = !DILocation(line: 783, column: 29, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 783, column: 29)
!1544 = !DILocation(line: 783, column: 29, scope: !1433)
!1545 = !DILocalVariable(name: "conn", arg: 1, scope: !1546, file: !3, line: 689, type: !467)
!1546 = distinct !DISubprogram(name: "avrcp_set_shuffle_mode", scope: !3, file: !3, line: 689, type: !1516, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1547)
!1547 = !{!1545}
!1548 = !DILocation(line: 689, column: 44, scope: !1546, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 784, column: 49, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 784, column: 33)
!1551 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 783, column: 53)
!1552 = !DILocation(line: 691, column: 29, scope: !1553, inlinedAt: !1549)
!1553 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 691, column: 9)
!1554 = !DILocation(line: 691, column: 56, scope: !1553, inlinedAt: !1549)
!1555 = !DILocation(line: 691, column: 9, scope: !1546, inlinedAt: !1549)
!1556 = !DILocation(line: 692, column: 16, scope: !1557, inlinedAt: !1549)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 692, column: 13)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 691, column: 88)
!1559 = !DILocation(line: 692, column: 13, scope: !1557, inlinedAt: !1549)
!1560 = !DILocation(line: 692, column: 95, scope: !1557, inlinedAt: !1549)
!1561 = !DILocation(line: 692, column: 13, scope: !1558, inlinedAt: !1549)
!1562 = !DILocation(line: 695, column: 16, scope: !1558, inlinedAt: !1549)
!1563 = !DILocation(line: 784, column: 46, scope: !1550)
!1564 = !DILocation(line: 784, column: 33, scope: !1551)
!1565 = !DILocation(line: 786, column: 33, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 784, column: 79)
!1567 = !DILocation(line: 785, column: 65, scope: !1566)
!1568 = !DILocation(line: 786, column: 44, scope: !1566)
!1569 = !DILocation(line: 786, column: 61, scope: !1566)
!1570 = !DILocation(line: 787, column: 29, scope: !1566)
!1571 = !DILocation(line: 791, column: 29, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 791, column: 29)
!1573 = !DILocation(line: 791, column: 29, scope: !1433)
!1574 = !DILocation(line: 792, column: 49, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 792, column: 33)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 791, column: 53)
!1577 = !DILocation(line: 792, column: 46, scope: !1575)
!1578 = !DILocation(line: 792, column: 33, scope: !1576)
!1579 = !DILocation(line: 793, column: 65, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 792, column: 78)
!1581 = !DILocation(line: 794, column: 33, scope: !1580)
!1582 = !DILocation(line: 794, column: 44, scope: !1580)
!1583 = !DILocation(line: 794, column: 61, scope: !1580)
!1584 = !DILocation(line: 795, column: 29, scope: !1580)
!1585 = !DILocation(line: 799, column: 29, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 799, column: 29)
!1587 = !DILocation(line: 799, column: 29, scope: !1433)
!1588 = !DILocation(line: 800, column: 49, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 800, column: 33)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 799, column: 53)
!1591 = !DILocation(line: 800, column: 46, scope: !1589)
!1592 = !DILocation(line: 800, column: 33, scope: !1590)
!1593 = !DILocation(line: 801, column: 65, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 800, column: 85)
!1595 = !DILocation(line: 802, column: 33, scope: !1594)
!1596 = !DILocation(line: 802, column: 44, scope: !1594)
!1597 = !DILocation(line: 802, column: 61, scope: !1594)
!1598 = !DILocation(line: 803, column: 29, scope: !1594)
!1599 = !DILocation(line: 808, column: 45, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 808, column: 29)
!1601 = !DILocation(line: 808, column: 42, scope: !1600)
!1602 = !DILocation(line: 808, column: 29, scope: !1433)
!1603 = !DILocation(line: 809, column: 61, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 808, column: 105)
!1605 = !DILocation(line: 810, column: 29, scope: !1604)
!1606 = !DILocation(line: 810, column: 40, scope: !1604)
!1607 = !DILocation(line: 810, column: 57, scope: !1604)
!1608 = !DILocation(line: 811, column: 25, scope: !1604)
!1609 = !DILocation(line: 822, column: 49, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 822, column: 29)
!1611 = !DILocation(line: 822, column: 29, scope: !1610)
!1612 = !DILocation(line: 822, column: 69, scope: !1610)
!1613 = !DILocation(line: 822, column: 89, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1610, file: !3, discriminator: 1)
!1615 = !DILocation(line: 822, column: 86, scope: !1614)
!1616 = !DILocation(line: 822, column: 29, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1433, file: !3, discriminator: 1)
!1618 = !DILocation(line: 823, column: 69, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 822, column: 164)
!1620 = !DILocation(line: 824, column: 29, scope: !1619)
!1621 = !DILocation(line: 824, column: 40, scope: !1619)
!1622 = !DILocation(line: 824, column: 57, scope: !1619)
!1623 = !DILocation(line: 825, column: 61, scope: !1619)
!1624 = !DILocation(line: 826, column: 25, scope: !1619)
!1625 = !DILocation(line: 831, column: 49, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 831, column: 29)
!1627 = !{!1628, !413, i64 20}
!1628 = !{!"profile_cmd_handle", !413, i64 0, !413, i64 4, !413, i64 8, !413, i64 12, !413, i64 16, !413, i64 20, !413, i64 24, !413, i64 28, !413, i64 32, !413, i64 36, !413, i64 40}
!1629 = !DILocation(line: 831, column: 29, scope: !1626)
!1630 = !DILocation(line: 831, column: 29, scope: !1433)
!1631 = !DILocation(line: 832, column: 63, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 831, column: 64)
!1633 = !DILocation(line: 832, column: 29, scope: !1632)
!1634 = !DILocation(line: 833, column: 25, scope: !1632)
!1635 = !DILocation(line: 835, column: 25, scope: !1433)
!1636 = !DILocation(line: 834, column: 57, scope: !1433)
!1637 = !DILocation(line: 835, column: 36, scope: !1433)
!1638 = !DILocation(line: 835, column: 53, scope: !1433)
!1639 = !DILocation(line: 836, column: 25, scope: !1433)
!1640 = !DILocation(line: 723, column: 54, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1424, file: !3, discriminator: 2)
!1642 = !DILocation(line: 703, column: 9, scope: !1353)
!1643 = !DILocation(line: 723, column: 27, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1424, file: !3, discriminator: 1)
!1645 = !DILocation(line: 723, column: 13, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1425, file: !3, discriminator: 1)
!1647 = distinct !{!1647, !1648, !1649}
!1648 = !DILocation(line: 723, column: 13, scope: !1425)
!1649 = !DILocation(line: 841, column: 13, scope: !1425)
!1650 = !DILocation(line: 843, column: 33, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 843, column: 13)
!1652 = !DILocation(line: 843, column: 53, scope: !1651)
!1653 = !DILocation(line: 843, column: 13, scope: !1360)
!1654 = !DILocation(line: 844, column: 52, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 843, column: 58)
!1656 = !DILocation(line: 845, column: 57, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 845, column: 17)
!1658 = !DILocation(line: 845, column: 17, scope: !1655)
!1659 = !DILocation(line: 846, column: 57, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 845, column: 63)
!1661 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 848, column: 17, scope: !1660)
!1663 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !1662)
!1664 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !1662)
!1665 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !1662)
!1666 = !DILocation(line: 849, column: 13, scope: !1660)
!1667 = !DILocation(line: 850, column: 13, scope: !1655)
!1668 = !DILocation(line: 851, column: 13, scope: !1655)
!1669 = !DILocation(line: 852, column: 9, scope: !1655)
!1670 = !DILocation(line: 855, column: 37, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 855, column: 17)
!1672 = !DILocation(line: 855, column: 69, scope: !1671)
!1673 = !DILocation(line: 855, column: 46, scope: !1671)
!1674 = !DILocation(line: 855, column: 79, scope: !1671)
!1675 = !DILocation(line: 855, column: 82, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1671, file: !3, discriminator: 1)
!1677 = !DILocation(line: 855, column: 93, scope: !1676)
!1678 = !DILocation(line: 855, column: 110, scope: !1676)
!1679 = !DILocation(line: 855, column: 17, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1359, file: !3, discriminator: 1)
!1681 = !DILocation(line: 858, column: 20, scope: !1359)
!1682 = !DILocation(line: 293, column: 44, scope: !1374, inlinedAt: !1381)
!1683 = !DILocation(line: 293, column: 58, scope: !1374, inlinedAt: !1381)
!1684 = !DILocation(line: 295, column: 9, scope: !1374, inlinedAt: !1381)
!1685 = !DILocation(line: 299, column: 29, scope: !1686, inlinedAt: !1381)
!1686 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 299, column: 9)
!1687 = !DILocation(line: 299, column: 9, scope: !1686, inlinedAt: !1381)
!1688 = !DILocation(line: 299, column: 9, scope: !1374, inlinedAt: !1381)
!1689 = !DILocation(line: 300, column: 33, scope: !1690, inlinedAt: !1381)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 300, column: 13)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 299, column: 50)
!1692 = !DILocation(line: 300, column: 53, scope: !1690, inlinedAt: !1381)
!1693 = !DILocation(line: 300, column: 13, scope: !1691, inlinedAt: !1381)
!1694 = !DILocation(line: 301, column: 53, scope: !1695, inlinedAt: !1381)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 300, column: 60)
!1696 = !DILocation(line: 302, column: 13, scope: !1695, inlinedAt: !1381)
!1697 = !DILocation(line: 304, column: 53, scope: !1698, inlinedAt: !1381)
!1698 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 303, column: 16)
!1699 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 305, column: 13, scope: !1698, inlinedAt: !1381)
!1701 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !1700)
!1702 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !1700)
!1703 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !1700)
!1704 = !DILocation(line: 306, column: 13, scope: !1698, inlinedAt: !1381)
!1705 = !DILocation(line: 310, column: 12, scope: !1706, inlinedAt: !1381)
!1706 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 310, column: 9)
!1707 = !DILocation(line: 310, column: 31, scope: !1706, inlinedAt: !1381)
!1708 = !DILocation(line: 310, column: 54, scope: !1709, inlinedAt: !1381)
!1709 = !DILexicalBlockFile(scope: !1706, file: !3, discriminator: 1)
!1710 = !DILocation(line: 310, column: 34, scope: !1709, inlinedAt: !1381)
!1711 = !DILocation(line: 310, column: 9, scope: !1712, inlinedAt: !1381)
!1712 = !DILexicalBlockFile(scope: !1374, file: !3, discriminator: 1)
!1713 = !DILocation(line: 313, column: 31, scope: !1714, inlinedAt: !1381)
!1714 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 313, column: 9)
!1715 = !DILocation(line: 314, column: 47, scope: !1716, inlinedAt: !1381)
!1716 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 313, column: 58)
!1717 = !DILocation(line: 315, column: 5, scope: !1716, inlinedAt: !1381)
!1718 = !DILocation(line: 282, column: 43, scope: !1364, inlinedAt: !1373)
!1719 = !DILocation(line: 274, column: 50, scope: !1364, inlinedAt: !1373)
!1720 = !DILocation(line: 274, column: 64, scope: !1364, inlinedAt: !1373)
!1721 = !DILocation(line: 276, column: 5, scope: !1364, inlinedAt: !1373)
!1722 = !DILocation(line: 277, column: 9, scope: !1364, inlinedAt: !1373)
!1723 = !DILocation(line: 284, column: 22, scope: !1364, inlinedAt: !1373)
!1724 = !DILocation(line: 284, column: 17, scope: !1364, inlinedAt: !1373)
!1725 = !DILocation(line: 285, column: 17, scope: !1364, inlinedAt: !1373)
!1726 = !DILocation(line: 287, column: 11, scope: !1364, inlinedAt: !1373)
!1727 = !DILocation(line: 291, column: 1, scope: !1364, inlinedAt: !1373)
!1728 = !DILocation(line: 859, column: 30, scope: !1382)
!1729 = !DILocation(line: 859, column: 17, scope: !1359)
!1730 = !DILocation(line: 860, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 859, column: 69)
!1732 = !DILocation(line: 860, column: 28, scope: !1731)
!1733 = !DILocation(line: 860, column: 45, scope: !1731)
!1734 = !DILocation(line: 861, column: 21, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 861, column: 21)
!1736 = !DILocation(line: 861, column: 52, scope: !1735)
!1737 = !DILocation(line: 861, column: 21, scope: !1731)
!1738 = !DILocation(line: 862, column: 50, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 861, column: 75)
!1740 = !DILocation(line: 713, column: 5, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1361, file: !3, discriminator: 2)
!1742 = !DILocation(line: 713, column: 5, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1361, file: !3, discriminator: 1)
!1744 = distinct !{!1744, !1390, !1745}
!1745 = !DILocation(line: 866, column: 5, scope: !1362)
!1746 = !DILocation(line: 869, column: 1, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1353, file: !3, discriminator: 2)
!1748 = distinct !DISubprogram(name: "avctp_core_data_for_send", scope: !3, file: !3, line: 1435, type: !1749, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!150, !175, !228}
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DILocalVariable(name: "packet", arg: 1, scope: !1748, file: !3, line: 1435, type: !175)
!1753 = !DILocalVariable(name: "size", arg: 2, scope: !1748, file: !3, line: 1435, type: !228)
!1754 = !DILocalVariable(name: "len", scope: !1748, file: !3, line: 1437, type: !176)
!1755 = !DILocalVariable(name: "conn", scope: !1748, file: !3, line: 1438, type: !467)
!1756 = !DILocation(line: 1435, column: 34, scope: !1748)
!1757 = !DILocation(line: 1435, column: 46, scope: !1748)
!1758 = !DILocation(line: 1437, column: 8, scope: !1748)
!1759 = !DILocation(line: 1427, column: 5, scope: !1760, inlinedAt: !1766)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 1427, column: 5)
!1761 = distinct !DISubprogram(name: "__avctp_conn_for_tws", scope: !3, file: !3, line: 1424, type: !1762, isLocal: true, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!467}
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "conn", scope: !1761, file: !3, line: 1426, type: !467)
!1766 = distinct !DILocation(line: 1440, column: 12, scope: !1748)
!1767 = !DILocation(line: 1427, column: 5, scope: !1768, inlinedAt: !1766)
!1768 = !DILexicalBlockFile(scope: !1760, file: !3, discriminator: 1)
!1769 = !DILocation(line: 1428, column: 33, scope: !1770, inlinedAt: !1766)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1428, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1427, column: 36)
!1772 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 1427, column: 5)
!1773 = !DILocation(line: 1428, column: 13, scope: !1770, inlinedAt: !1766)
!1774 = !DILocation(line: 1428, column: 13, scope: !1771, inlinedAt: !1766)
!1775 = !DILocation(line: 1427, column: 5, scope: !1776, inlinedAt: !1766)
!1776 = !DILexicalBlockFile(scope: !1772, file: !3, discriminator: 2)
!1777 = !DILocation(line: 1426, column: 14, scope: !1761, inlinedAt: !1766)
!1778 = !DILocation(line: 1427, column: 5, scope: !1779, inlinedAt: !1766)
!1779 = !DILexicalBlockFile(scope: !1772, file: !3, discriminator: 1)
!1780 = distinct !{!1780, !1781, !1782}
!1781 = !DILocation(line: 1427, column: 5, scope: !1760)
!1782 = !DILocation(line: 1431, column: 5, scope: !1760)
!1783 = !DILocation(line: 1449, column: 27, scope: !1748)
!1784 = !DILocation(line: 1449, column: 5, scope: !1748)
!1785 = !DILocation(line: 1451, column: 5, scope: !1748)
!1786 = !DILocation(line: 1452, column: 1, scope: !1748)
!1787 = distinct !DISubprogram(name: "avctp_core_data_for_set", scope: !3, file: !3, line: 1454, type: !1788, isLocal: false, isDefinition: true, scopeLine: 1455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !175, !228}
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DILocalVariable(name: "packet", arg: 1, scope: !1787, file: !3, line: 1454, type: !175)
!1792 = !DILocalVariable(name: "size", arg: 2, scope: !1787, file: !3, line: 1454, type: !228)
!1793 = !DILocalVariable(name: "len", scope: !1787, file: !3, line: 1456, type: !176)
!1794 = !DILocalVariable(name: "conn", scope: !1787, file: !3, line: 1457, type: !467)
!1795 = !DILocation(line: 1454, column: 34, scope: !1787)
!1796 = !DILocation(line: 1454, column: 46, scope: !1787)
!1797 = !DILocation(line: 1456, column: 8, scope: !1787)
!1798 = !DILocation(line: 1427, column: 5, scope: !1760, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 1459, column: 12, scope: !1787)
!1800 = !DILocation(line: 1427, column: 5, scope: !1768, inlinedAt: !1799)
!1801 = !DILocation(line: 1428, column: 33, scope: !1770, inlinedAt: !1799)
!1802 = !DILocation(line: 1428, column: 13, scope: !1770, inlinedAt: !1799)
!1803 = !DILocation(line: 1428, column: 13, scope: !1771, inlinedAt: !1799)
!1804 = !DILocation(line: 1427, column: 5, scope: !1776, inlinedAt: !1799)
!1805 = !DILocation(line: 1426, column: 14, scope: !1761, inlinedAt: !1799)
!1806 = !DILocation(line: 1427, column: 5, scope: !1779, inlinedAt: !1799)
!1807 = !DILocation(line: 1468, column: 19, scope: !1787)
!1808 = !DILocation(line: 1468, column: 5, scope: !1787)
!1809 = !DILocation(line: 1470, column: 1, scope: !1787)
!1810 = !DILocation(line: 1470, column: 1, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1787, file: !3, discriminator: 2)
!1812 = distinct !DISubprogram(name: "avctp_cmd_send_state", scope: !3, file: !3, line: 1472, type: !1813, isLocal: false, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!176}
!1815 = !{!1816}
!1816 = !DILocalVariable(name: "conn", scope: !1812, file: !3, line: 1474, type: !467)
!1817 = !DILocation(line: 1476, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 1476, column: 9)
!1819 = !DILocation(line: 1476, column: 19, scope: !1818)
!1820 = !DILocation(line: 1476, column: 9, scope: !1812)
!1821 = !DILocation(line: 1474, column: 14, scope: !1812)
!1822 = !DILocation(line: 1480, column: 5, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1824, file: !3, discriminator: 1)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1480, column: 5)
!1825 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 1480, column: 5)
!1826 = !DILocation(line: 1480, column: 5, scope: !1825)
!1827 = !DILocation(line: 1486, column: 67, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !3, discriminator: 1)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1486, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1480, column: 36)
!1831 = !DILocation(line: 1480, column: 5, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1825, file: !3, discriminator: 1)
!1833 = !DILocation(line: 1481, column: 33, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1481, column: 13)
!1835 = !DILocation(line: 1481, column: 42, scope: !1834)
!1836 = !DILocation(line: 1482, column: 13, scope: !1834)
!1837 = !DILocation(line: 1482, column: 22, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1834, file: !3, discriminator: 1)
!1839 = !DILocation(line: 1482, column: 34, scope: !1838)
!1840 = !DILocation(line: 1481, column: 13, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1830, file: !3, discriminator: 1)
!1842 = !DILocation(line: 1486, column: 34, scope: !1829)
!1843 = !DILocation(line: 1486, column: 46, scope: !1829)
!1844 = !DILocation(line: 1486, column: 52, scope: !1829)
!1845 = !DILocation(line: 1486, column: 84, scope: !1828)
!1846 = !DILocation(line: 1486, column: 13, scope: !1841)
!1847 = !DILocation(line: 1480, column: 5, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1824, file: !3, discriminator: 2)
!1849 = distinct !{!1849, !1826, !1850}
!1850 = !DILocation(line: 1489, column: 5, scope: !1825)
!1851 = !DILocation(line: 1491, column: 1, scope: !1812)
!1852 = distinct !DISubprogram(name: "avctp_get_remote_vol_sync", scope: !3, file: !3, line: 1495, type: !1853, isLocal: false, isDefinition: true, scopeLine: 1496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!176, !266}
!1855 = !{!1856, !1857}
!1856 = !DILocalVariable(name: "addr", arg: 1, scope: !1852, file: !3, line: 1495, type: !266)
!1857 = !DILocalVariable(name: "conn", scope: !1852, file: !3, line: 1497, type: !467)
!1858 = !DILocation(line: 1495, column: 40, scope: !1852)
!1859 = !DILocation(line: 1498, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 1498, column: 9)
!1861 = !DILocation(line: 1498, column: 19, scope: !1860)
!1862 = !DILocation(line: 1498, column: 9, scope: !1852)
!1863 = !DILocation(line: 1502, column: 12, scope: !1852)
!1864 = !DILocation(line: 1497, column: 14, scope: !1852)
!1865 = !DILocation(line: 1504, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 1504, column: 9)
!1867 = !DILocation(line: 1504, column: 9, scope: !1852)
!1868 = !DILocation(line: 1505, column: 76, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1504, column: 15)
!1870 = !DILocation(line: 1505, column: 9, scope: !1869)
!1871 = !DILocation(line: 1509, column: 1, scope: !1852)
!1872 = distinct !DISubprogram(name: "get_pp_key_statue", scope: !3, file: !3, line: 1512, type: !686, isLocal: false, isDefinition: true, scopeLine: 1513, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1873)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "addr", arg: 1, scope: !1872, file: !3, line: 1512, type: !266)
!1875 = !DILocalVariable(name: "conn", scope: !1872, file: !3, line: 1517, type: !467)
!1876 = !DILocation(line: 1512, column: 33, scope: !1872)
!1877 = !DILocation(line: 1514, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 1514, column: 9)
!1879 = !DILocation(line: 1514, column: 20, scope: !1878)
!1880 = !DILocation(line: 1514, column: 9, scope: !1872)
!1881 = !DILocation(line: 1517, column: 21, scope: !1872)
!1882 = !DILocation(line: 1517, column: 14, scope: !1872)
!1883 = !DILocation(line: 1518, column: 14, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 1518, column: 9)
!1885 = !DILocation(line: 1518, column: 9, scope: !1872)
!1886 = !DILocation(line: 1521, column: 32, scope: !1872)
!1887 = !DILocation(line: 1521, column: 5, scope: !1872)
!1888 = !DILocation(line: 1522, column: 1, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1872, file: !3, discriminator: 1)
!1890 = distinct !DISubprogram(name: "avctp_cmd_try_send_no_resend", scope: !3, file: !3, line: 81, type: !1891, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!150, !252, !175}
!1893 = !{!1894, !1895, !1896}
!1894 = !DILocalVariable(name: "conn", arg: 1, scope: !1890, file: !3, line: 81, type: !252)
!1895 = !DILocalVariable(name: "avctp_send_buf", arg: 2, scope: !1890, file: !3, line: 81, type: !175)
!1896 = !DILocalVariable(name: "err", scope: !1890, file: !3, line: 83, type: !150)
!1897 = !DILocation(line: 81, column: 55, scope: !1890)
!1898 = !DILocation(line: 81, column: 65, scope: !1890)
!1899 = !DILocation(line: 83, column: 9, scope: !1890)
!1900 = !DILocation(line: 84, column: 14, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 84, column: 9)
!1902 = !DILocation(line: 84, column: 9, scope: !1890)
!1903 = !DILocation(line: 87, column: 30, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 87, column: 9)
!1905 = !DILocation(line: 87, column: 10, scope: !1904)
!1906 = !DILocation(line: 87, column: 9, scope: !1890)
!1907 = !DILocation(line: 90, column: 37, scope: !1890)
!1908 = !DILocation(line: 90, column: 66, scope: !1890)
!1909 = !DILocation(line: 90, column: 11, scope: !1890)
!1910 = !DILocation(line: 91, column: 9, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 91, column: 9)
!1912 = !DILocation(line: 91, column: 9, scope: !1890)
!1913 = !DILocation(line: 93, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 93, column: 9)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 91, column: 14)
!1916 = !DILocation(line: 93, column: 9, scope: !1915)
!1917 = !DILocation(line: 93, column: 9, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1914, file: !3, discriminator: 1)
!1919 = !DILocation(line: 95, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 95, column: 9)
!1921 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 94, column: 12)
!1922 = !DILocation(line: 95, column: 9, scope: !1921)
!1923 = !DILocation(line: 95, column: 9, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1920, file: !3, discriminator: 1)
!1925 = !DILocation(line: 96, column: 48, scope: !1921)
!1926 = !DILocation(line: 99, column: 1, scope: !1890)
!1927 = distinct !DISubprogram(name: "__create_avctp_conn", scope: !3, file: !3, line: 372, type: !656, isLocal: true, isDefinition: true, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1928)
!1928 = !{!1929, !1930}
!1929 = !DILocalVariable(name: "addr", arg: 1, scope: !1927, file: !3, line: 372, type: !266)
!1930 = !DILocalVariable(name: "conn", scope: !1927, file: !3, line: 374, type: !467)
!1931 = !DILocation(line: 372, column: 47, scope: !1927)
!1932 = !DILocation(line: 374, column: 14, scope: !1927)
!1933 = !DILocation(line: 376, column: 5, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 376, column: 5)
!1935 = !DILocation(line: 376, column: 5, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1934, file: !3, discriminator: 1)
!1937 = !DILocation(line: 377, column: 34, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 377, column: 13)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 376, column: 36)
!1940 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 376, column: 5)
!1941 = !DILocation(line: 377, column: 14, scope: !1938)
!1942 = !DILocation(line: 377, column: 13, scope: !1939)
!1943 = !DILocation(line: 366, column: 43, scope: !903, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 378, column: 13, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 377, column: 44)
!1946 = !DILocation(line: 370, column: 1, scope: !903, inlinedAt: !1944)
!1947 = !DILocation(line: 369, column: 31, scope: !903, inlinedAt: !1944)
!1948 = !DILocation(line: 379, column: 42, scope: !1945)
!1949 = !DILocation(line: 380, column: 33, scope: !1945)
!1950 = !DILocation(line: 380, column: 53, scope: !1945)
!1951 = !DILocation(line: 381, column: 33, scope: !1945)
!1952 = !DILocation(line: 381, column: 54, scope: !1945)
!1953 = !DILocation(line: 382, column: 13, scope: !1945)
!1954 = !DILocation(line: 383, column: 17, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 383, column: 17)
!1956 = !DILocation(line: 383, column: 33, scope: !1955)
!1957 = !{!1958, !413, i64 28}
!1958 = !{!"user_interface_handler", !413, i64 0, !413, i64 4, !413, i64 8, !413, i64 12, !413, i64 16, !413, i64 20, !413, i64 24, !413, i64 28, !413, i64 32, !413, i64 36, !413, i64 40, !413, i64 44, !413, i64 48, !413, i64 52, !413, i64 56}
!1959 = !DILocation(line: 383, column: 57, scope: !1955)
!1960 = !DILocation(line: 383, column: 17, scope: !1945)
!1961 = !DILocation(line: 384, column: 52, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 383, column: 66)
!1963 = !DILocation(line: 384, column: 37, scope: !1962)
!1964 = !DILocation(line: 384, column: 50, scope: !1962)
!1965 = !DILocation(line: 385, column: 17, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 385, column: 17)
!1967 = !DILocation(line: 385, column: 17, scope: !1962)
!1968 = !DILocation(line: 385, column: 17, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1966, file: !3, discriminator: 1)
!1970 = !DILocation(line: 388, column: 17, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 388, column: 17)
!1972 = !DILocation(line: 388, column: 17, scope: !1945)
!1973 = !DILocation(line: 400, column: 42, scope: !1945)
!1974 = !DILocation(line: 400, column: 19, scope: !1945)
!1975 = !DILocation(line: 400, column: 40, scope: !1945)
!1976 = !{!409, !413, i64 12}
!1977 = !DILocation(line: 401, column: 42, scope: !1945)
!1978 = !DILocation(line: 401, column: 19, scope: !1945)
!1979 = !DILocation(line: 401, column: 40, scope: !1945)
!1980 = !{!409, !413, i64 16}
!1981 = !DILocation(line: 402, column: 13, scope: !1945)
!1982 = !DILocation(line: 376, column: 5, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1940, file: !3, discriminator: 2)
!1984 = !DILocation(line: 376, column: 5, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1940, file: !3, discriminator: 1)
!1986 = distinct !{!1986, !1933, !1987}
!1987 = !DILocation(line: 404, column: 5, scope: !1934)
!1988 = !DILocation(line: 407, column: 1, scope: !1927)
!1989 = distinct !DISubprogram(name: "__free_avctp_conn", scope: !3, file: !3, line: 409, type: !1990, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !467, !176}
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "conn", arg: 1, scope: !1989, file: !3, line: 409, type: !467)
!1994 = !DILocalVariable(name: "con_type", arg: 2, scope: !1989, file: !3, line: 409, type: !176)
!1995 = !DILocation(line: 409, column: 40, scope: !1989)
!1996 = !DILocation(line: 409, column: 49, scope: !1989)
!1997 = !DILocation(line: 411, column: 14, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 411, column: 9)
!1999 = !DILocation(line: 411, column: 9, scope: !1989)
!2000 = !DILocation(line: 414, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 414, column: 9)
!2002 = !DILocation(line: 414, column: 25, scope: !2001)
!2003 = !{!1958, !413, i64 24}
!2004 = !DILocation(line: 414, column: 54, scope: !2001)
!2005 = !DILocation(line: 414, column: 78, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2001, file: !3, discriminator: 1)
!2007 = !DILocation(line: 414, column: 58, scope: !2006)
!2008 = !DILocation(line: 414, column: 91, scope: !2006)
!2009 = !DILocation(line: 414, column: 9, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1989, file: !3, discriminator: 1)
!2011 = !DILocation(line: 415, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 415, column: 9)
!2013 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 414, column: 101)
!2014 = !DILocation(line: 415, column: 9, scope: !2013)
!2015 = !DILocation(line: 415, column: 9, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2012, file: !3, discriminator: 1)
!2017 = !DILocation(line: 416, column: 69, scope: !2013)
!2018 = !DILocation(line: 416, column: 32, scope: !2013)
!2019 = !DILocation(line: 416, column: 9, scope: !2013)
!2020 = !DILocation(line: 417, column: 5, scope: !2013)
!2021 = !DILocation(line: 418, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 418, column: 9)
!2023 = !DILocation(line: 418, column: 25, scope: !2022)
!2024 = !{!1958, !413, i64 0}
!2025 = !DILocation(line: 418, column: 9, scope: !1989)
!2026 = !DILocation(line: 419, column: 49, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 418, column: 50)
!2028 = !DILocation(line: 419, column: 9, scope: !2027)
!2029 = !DILocation(line: 420, column: 5, scope: !2027)
!2030 = !DILocation(line: 421, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 421, column: 9)
!2032 = !DILocation(line: 421, column: 25, scope: !2031)
!2033 = !{!1958, !413, i64 20}
!2034 = !DILocation(line: 421, column: 9, scope: !1989)
!2035 = !DILocation(line: 422, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 421, column: 50)
!2037 = !DILocation(line: 423, column: 5, scope: !2036)
!2038 = !DILocation(line: 426, column: 25, scope: !1989)
!2039 = !DILocation(line: 426, column: 34, scope: !1989)
!2040 = !DILocation(line: 366, column: 43, scope: !903, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 429, column: 5, scope: !1989)
!2042 = !DILocation(line: 369, column: 31, scope: !903, inlinedAt: !2041)
!2043 = !DILocation(line: 430, column: 5, scope: !1989)
!2044 = !DILocation(line: 431, column: 1, scope: !1989)
!2045 = !DILocation(line: 431, column: 1, scope: !2010)
!2046 = distinct !DISubprogram(name: "avctp_suspend", scope: !3, file: !3, line: 1297, type: !2047, isLocal: true, isDefinition: true, scopeLine: 1298, isOptimized: true, unit: !2, variables: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!150}
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "conn", scope: !2046, file: !3, line: 1299, type: !467)
!2051 = !DILocation(line: 1300, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1300, column: 9)
!2053 = !DILocation(line: 1300, column: 19, scope: !2052)
!2054 = !DILocation(line: 1300, column: 9, scope: !2046)
!2055 = !DILocation(line: 1299, column: 14, scope: !2046)
!2056 = !DILocation(line: 1303, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1303, column: 5)
!2058 = !DILocation(line: 1304, column: 34, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 1304, column: 13)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1303, column: 36)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 1303, column: 5)
!2062 = !DILocation(line: 1304, column: 43, scope: !2059)
!2063 = !DILocation(line: 1304, column: 49, scope: !2059)
!2064 = !DILocation(line: 1308, column: 32, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1307, column: 61)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 1307, column: 17)
!2067 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1304, column: 113)
!2068 = !DILocation(line: 1308, column: 17, scope: !2065)
!2069 = !DILocation(line: 1309, column: 13, scope: !2065)
!2070 = !DILocation(line: 1303, column: 5, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2061, file: !3, discriminator: 1)
!2072 = !DILocation(line: 1303, column: 5, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2061, file: !3, discriminator: 2)
!2074 = !DILocation(line: 1303, column: 5, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2057, file: !3, discriminator: 1)
!2076 = distinct !{!2076, !2056, !2077}
!2077 = !DILocation(line: 1311, column: 5, scope: !2057)
!2078 = !DILocation(line: 1313, column: 1, scope: !2046)
!2079 = distinct !DISubprogram(name: "avctp_resume", scope: !3, file: !3, line: 1293, type: !2047, isLocal: true, isDefinition: true, scopeLine: 1294, isOptimized: true, unit: !2, variables: !870)
!2080 = !DILocation(line: 1295, column: 5, scope: !2079)
!2081 = distinct !DISubprogram(name: "avctp_release", scope: !3, file: !3, line: 1275, type: !2047, isLocal: true, isDefinition: true, scopeLine: 1276, isOptimized: true, unit: !2, variables: !2082)
!2082 = !{!2083}
!2083 = !DILocalVariable(name: "conn", scope: !2081, file: !3, line: 1277, type: !467)
!2084 = !DILocation(line: 1279, column: 9, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 1279, column: 9)
!2086 = !DILocation(line: 1279, column: 19, scope: !2085)
!2087 = !DILocation(line: 1279, column: 9, scope: !2081)
!2088 = !DILocation(line: 1277, column: 14, scope: !2081)
!2089 = !DILocation(line: 1282, column: 5, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2091, file: !3, discriminator: 1)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 1282, column: 5)
!2092 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 1282, column: 5)
!2093 = !DILocation(line: 1282, column: 5, scope: !2092)
!2094 = !DILocation(line: 1282, column: 5, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2092, file: !3, discriminator: 1)
!2096 = distinct !{!2096, !2093, !2097}
!2097 = !DILocation(line: 1286, column: 5, scope: !2092)
!2098 = !DILocation(line: 1283, column: 34, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1283, column: 13)
!2100 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 1282, column: 36)
!2101 = !DILocation(line: 1283, column: 13, scope: !2099)
!2102 = !DILocation(line: 1283, column: 44, scope: !2099)
!2103 = !DILocation(line: 1282, column: 5, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2091, file: !3, discriminator: 2)
!2105 = !DILocation(line: 1283, column: 13, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2100, file: !3, discriminator: 1)
!2107 = !DILocation(line: 1287, column: 5, scope: !2081)
!2108 = !DILocation(line: 1288, column: 28, scope: !2081)
!2109 = !DILocation(line: 1288, column: 39, scope: !2081)
!2110 = !DILocation(line: 1288, column: 5, scope: !2081)
!2111 = !DILocation(line: 1289, column: 15, scope: !2081)
!2112 = !DILocation(line: 1291, column: 5, scope: !2081)
!2113 = !DILocation(line: 1292, column: 1, scope: !2081)
!2114 = distinct !DISubprogram(name: "avctp_channel_open", scope: !3, file: !3, line: 457, type: !2115, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !176, !228, !175, !228, !176}
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2125, !2126}
!2118 = !DILocalVariable(name: "open_flag", arg: 1, scope: !2114, file: !3, line: 457, type: !176)
!2119 = !DILocalVariable(name: "channel", arg: 2, scope: !2114, file: !3, line: 457, type: !228)
!2120 = !DILocalVariable(name: "packet", arg: 3, scope: !2114, file: !3, line: 457, type: !175)
!2121 = !DILocalVariable(name: "size", arg: 4, scope: !2114, file: !3, line: 457, type: !228)
!2122 = !DILocalVariable(name: "conn_type", arg: 5, scope: !2114, file: !3, line: 457, type: !176)
!2123 = !DILocalVariable(name: "tws_info_temp_buf", scope: !2114, file: !3, line: 459, type: !2124)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 160, elements: !277)
!2125 = !DILocalVariable(name: "addr", scope: !2114, file: !3, line: 460, type: !234)
!2126 = !DILocalVariable(name: "conn", scope: !2114, file: !3, line: 461, type: !467)
!2127 = !DILocation(line: 457, column: 75, scope: !2114)
!2128 = !DILocation(line: 460, column: 5, scope: !2114)
!2129 = !DILocation(line: 460, column: 15, scope: !2114)
!2130 = !DILocation(line: 465, column: 31, scope: !2114)
!2131 = !DILocation(line: 465, column: 5, scope: !2114)
!2132 = !DILocation(line: 466, column: 12, scope: !2114)
!2133 = !DILocation(line: 461, column: 14, scope: !2114)
!2134 = !DILocation(line: 467, column: 10, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 467, column: 9)
!2136 = !DILocation(line: 467, column: 9, scope: !2114)
!2137 = !DILocation(line: 468, column: 13, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 467, column: 16)
!2139 = !DILocation(line: 471, column: 16, scope: !2138)
!2140 = !DILocation(line: 473, column: 9, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 473, column: 9)
!2142 = !DILocation(line: 473, column: 9, scope: !2114)
!2143 = !DILocation(line: 474, column: 13, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 473, column: 15)
!2145 = !DILocation(line: 476, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 474, column: 24)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 474, column: 13)
!2148 = !DILocation(line: 477, column: 9, scope: !2146)
!2149 = !DILocation(line: 478, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 477, column: 16)
!2151 = !DILocation(line: 478, column: 31, scope: !2150)
!2152 = !DILocation(line: 480, column: 33, scope: !2150)
!2153 = !DILocation(line: 480, column: 39, scope: !2150)
!2154 = !DILocation(line: 481, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 481, column: 17)
!2156 = !DILocation(line: 481, column: 33, scope: !2155)
!2157 = !DILocation(line: 481, column: 17, scope: !2150)
!2158 = !DILocation(line: 482, column: 57, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 481, column: 58)
!2160 = !DILocation(line: 482, column: 17, scope: !2159)
!2161 = !DILocation(line: 483, column: 13, scope: !2159)
!2162 = !DILocation(line: 484, column: 13, scope: !2150)
!2163 = !DILocation(line: 666, column: 35, scope: !464, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 486, column: 13, scope: !2150)
!2165 = !DILocation(line: 666, column: 63, scope: !464, inlinedAt: !2164)
!2166 = !DILocation(line: 674, column: 25, scope: !464, inlinedAt: !2164)
!2167 = !DILocation(line: 674, column: 37, scope: !464, inlinedAt: !2164)
!2168 = !DILocation(line: 675, column: 5, scope: !464, inlinedAt: !2164)
!2169 = !DILocation(line: 490, column: 17, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 490, column: 17)
!2171 = !DILocation(line: 490, column: 37, scope: !2170)
!2172 = !DILocation(line: 490, column: 17, scope: !2150)
!2173 = !DILocation(line: 491, column: 17, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 490, column: 56)
!2175 = !DILocation(line: 492, column: 13, scope: !2174)
!2176 = !DILocation(line: 495, column: 1, scope: !2114)
!2177 = !DILocation(line: 495, column: 1, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2114, file: !3, discriminator: 2)
!2179 = distinct !DISubprogram(name: "avctp_passthrough_release", scope: !3, file: !3, line: 325, type: !1365, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2180)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DILocalVariable(name: "conn", arg: 1, scope: !2179, file: !3, line: 325, type: !252)
!2182 = !DILocalVariable(name: "op", arg: 2, scope: !2179, file: !3, line: 325, type: !155)
!2183 = !DILocalVariable(name: "operands", scope: !2179, file: !3, line: 327, type: !1371)
!2184 = !DILocalVariable(name: "err", scope: !2179, file: !3, line: 328, type: !150)
!2185 = !DILocation(line: 325, column: 52, scope: !2179)
!2186 = !DILocation(line: 325, column: 66, scope: !2179)
!2187 = !DILocation(line: 327, column: 5, scope: !2179)
!2188 = !DILocation(line: 327, column: 13, scope: !2179)
!2189 = !DILocation(line: 328, column: 9, scope: !2179)
!2190 = !DILocation(line: 329, column: 14, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 329, column: 9)
!2192 = !DILocation(line: 329, column: 9, scope: !2179)
!2193 = !DILocation(line: 333, column: 25, scope: !2179)
!2194 = !DILocation(line: 333, column: 43, scope: !2179)
!2195 = !DILocation(line: 335, column: 22, scope: !2179)
!2196 = !DILocation(line: 335, column: 17, scope: !2179)
!2197 = !DILocation(line: 336, column: 5, scope: !2179)
!2198 = !DILocation(line: 336, column: 17, scope: !2179)
!2199 = !DILocation(line: 337, column: 11, scope: !2179)
!2200 = !DILocation(line: 340, column: 5, scope: !2179)
!2201 = !DILocation(line: 341, column: 1, scope: !2179)
