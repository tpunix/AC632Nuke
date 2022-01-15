; ModuleID = 'a2dp.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct._avdtp_media_codec_capability = type { i8, i8 }
%struct._mpeg24_codec_cap = type { %struct._avdtp_media_codec_capability, i8, i8, i8, i8, i8, i8 }
%struct._a2dp_aptx_cap = type { %struct._avdtp_media_codec_capability, %struct.a2dp_vendor_codec_t, i8 }
%struct.a2dp_vendor_codec_t = type <{ i32, i16 }>
%struct._a2dp_ldac_cap = type { %struct._avdtp_media_codec_capability, %struct.a2dp_vendor_codec_t, i8, i8 }
%struct._a2dp_lc3_cap = type { %struct._avdtp_media_codec_capability, %struct.a2dp_vendor_codec_t, i8, i8 }
%struct.a2dp_stack_t = type { [1 x %struct.a2dp_conn] }
%struct.a2dp_conn = type { [6 x i8], %struct.a2dp_core_data_t, %struct.avdtp, %struct.a2dp_media }
%struct.a2dp_core_data_t = type { i8 }
%struct.avdtp = type { [2 x %struct._avdtp_local_sep], %struct.avdtp_core_data_t }
%struct._avdtp_local_sep = type { %struct._avdtp_sep_ind*, %struct.avdtp*, %struct._seid_info, i8, [16 x i8] }
%struct._avdtp_sep_ind = type { i8 (i8, i8*, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)*, void (%struct._avdtp_local_sep*)*, i8 (...)*, i8 (i8, i16)* }
%struct._avdtp_stream = type { i8 }
%struct._seid_info = type { i16 }
%struct.avdtp_core_data_t = type { %struct._avdtp_stream, %struct._avdtp_local_sep*, i8, i16, [8 x %struct._seid_req], [16 x i8], i8, i8, i16 }
%struct._seid_req = type { i8 }
%struct.a2dp_media = type { %struct.media_core_data_t, %struct.a2dp_media_probe*, %struct.a2dp_media_codec*, i32, i8, i8 }
%struct.media_core_data_t = type { i16, i16, i32 }
%struct.a2dp_media_probe = type { i32, i32 (i8*, i32 (i8*, i8*, i16)*)*, i32 (i8*, i8*, i16)*, i32 (...)*, i32 (...)*, i32 (...)* }
%struct.a2dp_media_codec = type { i32, i32 (i32)*, i32 (i8*)*, i32 (i8*, i16)*, i32 (...)*, i32 (i8*)* }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.a2dp_event_handler = type { i32, i32 (%struct.a2dp_conn*, i32, i8)*, void (%struct.a2dp_conn*)*, void (%struct.a2dp_conn*, i8*, i16)*, void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct._sbc_codec_cap = type { %struct._avdtp_media_codec_capability, i16, i8, i8 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@a2dp_sbc = hidden local_unnamed_addr constant { %struct._avdtp_media_codec_capability, i8, i8, i8, i8 } { %struct._avdtp_media_codec_capability zeroinitializer, i8 -1, i8 -1, i8 2, i8 53 }, section ".bt_stack_const", align 1, !dbg !420
@a2dp_mpeg_acc = hidden local_unnamed_addr global %struct._mpeg24_codec_cap { %struct._avdtp_media_codec_capability { i8 0, i8 2 }, i8 -128, i8 1, i8 -116, i8 -124, i8 -30, i8 0 }, section ".bt_stack_data", align 1, !dbg !423
@a2dp_aptx = hidden local_unnamed_addr constant %struct._a2dp_aptx_cap { %struct._avdtp_media_codec_capability { i8 0, i8 -1 }, %struct.a2dp_vendor_codec_t <{ i32 79, i16 1 }>, i8 34 }, section ".bt_stack_const", align 1, !dbg !425
@a2dp_ldac = hidden local_unnamed_addr constant %struct._a2dp_ldac_cap { %struct._avdtp_media_codec_capability { i8 0, i8 -1 }, %struct.a2dp_vendor_codec_t <{ i32 301, i16 170 }>, i8 60, i8 7 }, section ".bt_stack_const", align 1, !dbg !442
@a2dp_lc3 = hidden local_unnamed_addr constant %struct._a2dp_lc3_cap { %struct._avdtp_media_codec_capability { i8 0, i8 -1 }, %struct.a2dp_vendor_codec_t <{ i32 1494, i16 1 }>, i8 48, i8 7 }, section ".bt_stack_const", align 1, !dbg !452
@a2dp_stack = internal unnamed_addr global %struct.a2dp_stack_t* null, section ".bt_stack_data", align 4, !dbg !477
@reconnect_after_disconnect = hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !462
@a2dp_status_update = internal unnamed_addr global void (i8)* null, section ".bt_stack_data", align 4, !dbg !487
@try_cmd_step = hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !464
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [37 x i8] c"<BT-log> :wait to send discover %d\0A\0A\00", align 1
@a2dp_wait_remote_discovecr = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !466
@bt_suspend_a2dp_resumea2dp_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @a2dp_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @a2dp_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @a2dp_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !468
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@btstack_emitter_support = external local_unnamed_addr constant i8, align 1
@a2dp_source_media_codec_begin = external global [0 x %struct.a2dp_media_codec], align 4
@a2dp_source_media_codec_end = external global [0 x %struct.a2dp_media_codec], align 4
@a2dp_sep_ind_sbc = internal constant %struct._avdtp_sep_ind { i8 (i8, i8*, i8*)* @a2dp_getcap_ind_sbc, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)* @a2dp_set_configure_ind_sbc, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)* @a2dp_open_ind, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)* @a2dp_start_ind, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)* @a2dp_suspend_ind, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)* @a2dp_close_ind, void (%struct._avdtp_local_sep*)* @a2dp_abort, i8 (...)* null, i8 (i8, i16)* null }, section ".bt_stack_const", align 4, !dbg !492
@a2dp_sink_media_codec_begin = external global [0 x %struct.a2dp_media_codec], align 4
@a2dp_sink_media_codec_end = external global [0 x %struct.a2dp_media_codec], align 4
@CONFIG_BTSTACK_SUPPORT_AAC = external local_unnamed_addr constant i32, align 4
@a2dp_sep_ind_mpeg24 = internal constant %struct._avdtp_sep_ind { i8 (i8, i8*, i8*)* @a2dp_getcap_ind_mpeg24, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)* @a2dp_set_configure_ind_mpeg24, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)* @a2dp_open_ind, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)* @a2dp_start_ind, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)* @a2dp_suspend_ind, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)* @a2dp_close_ind, void (%struct._avdtp_local_sep*)* @a2dp_abort, i8 (...)* null, i8 (i8, i16)* null }, section ".bt_stack_const", align 4, !dbg !507
@.str.1 = private unnamed_addr constant [38 x i8] c"<BT-log> :a2dp_sbc.max_bitpool=0x%x\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"<BT-log> :CP_TYPE:0x%04x %s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"<BT-log> :remote max_bitpool %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"<BT-log> :fre %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"<BT-log> :sbc_bitpool2222 %d\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DTCP\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SCMS-T\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@a2dp_event_handler_begin = external global [0 x %struct.a2dp_event_handler], align 4
@a2dp_event_handler_end = external global [0 x %struct.a2dp_event_handler], align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"a2dp_release ok\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"<BT-log> :avdtp state err:%x\0A\00", align 1
@CONFIG_BTCTLER_TWS_ENABLE = external local_unnamed_addr constant i32, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"-----a2dp incoming_conn\0A\00", align 1
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"avdtp_channel_open\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@a2dp_source_bqb_support = external local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"a2dp_media_open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_a2dp_resumea2dp_release to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [36 x i8] c"[pro-info] :a2dp_channel open deal\0A\00"
@str.16 = private unnamed_addr constant [32 x i8] c"<BT-log> :try to connect again\0A\00"

; Function Attrs: nounwind optsize
define hidden void @__set_aac_bitrate(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !517, metadata !DIExpression()), !dbg !519
  %2 = load i8, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 4), align 1, !dbg !520, !tbaa !521
  %3 = and i8 %2, -128, !dbg !526
  call void @llvm.dbg.value(metadata i8 %3, metadata !518, metadata !DIExpression()), !dbg !527
  %4 = lshr i32 %0, 16, !dbg !528
  %5 = and i32 %4, 127, !dbg !529
  %6 = zext i8 %3 to i32, !dbg !530
  %7 = or i32 %6, %5, !dbg !531
  %8 = trunc i32 %7 to i8, !dbg !532
  store i8 %8, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 4), align 1, !dbg !533, !tbaa !521
  %9 = lshr i32 %0, 8, !dbg !534
  %10 = trunc i32 %9 to i8, !dbg !535
  store i8 %10, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 5), align 1, !dbg !536, !tbaa !537
  %11 = trunc i32 %0 to i8, !dbg !538
  store i8 %11, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 6), align 1, !dbg !539, !tbaa !540
  ret void, !dbg !541
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @find_a2dp_conn_number() local_unnamed_addr #2 section ".bt_stack_code" !dbg !542 {
  call void @llvm.dbg.value(metadata i8 0, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i8 0, metadata !547, metadata !DIExpression()), !dbg !548
  %1 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !549, !tbaa !551
  %2 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 0, i32 1, i32 0
  %3 = load i8, i8* %2, align 2
  call void @llvm.dbg.value(metadata i8 %4, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i8 %4, metadata !547, metadata !DIExpression()), !dbg !548
  %4 = and i8 %3, 1, !dbg !553
  ret i8 %4, !dbg !557
}

; Function Attrs: nounwind optsize
define hidden void @a2dp_connect_status_register(void (i8)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !558 {
  call void @llvm.dbg.value(metadata void (i8)* %0, metadata !562, metadata !DIExpression()), !dbg !563
  store void (i8)* %0, void (i8)** @a2dp_status_update, align 4, !dbg !564, !tbaa !551
  ret void, !dbg !565
}

; Function Attrs: nounwind optsize readonly
define hidden %struct.a2dp_conn* @__a2dp_conn_for_addr(i8* nocapture readonly) local_unnamed_addr #2 section ".bt_stack_code" !dbg !566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !570, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %3, metadata !571, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %3, metadata !571, metadata !DIExpression()), !dbg !573
  %2 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !574
  %3 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %2, i32 0, i32 0, i32 0, !dbg !574
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %2, i32 0, i32 0, i32 1
  br label %5, !dbg !576

; <label>:5:                                      ; preds = %10, %1
  %6 = phi %struct.a2dp_conn* [ %3, %1 ], [ %11, %10 ]
  %7 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 0, i32 0, !dbg !578
  %8 = tail call i32 @memcmp(i8* %7, i8* %0, i32 6) #10, !dbg !582
  %9 = icmp eq i32 %8, 0, !dbg !582
  br i1 %9, label %13, label %10, !dbg !583

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 1, !dbg !584
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %11, metadata !571, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %11, metadata !571, metadata !DIExpression()), !dbg !573
  %12 = icmp ult %struct.a2dp_conn* %11, %4, !dbg !586
  br i1 %12, label %5, label %13, !dbg !576, !llvm.loop !588

; <label>:13:                                     ; preds = %10, %5
  %14 = phi %struct.a2dp_conn* [ %6, %5 ], [ null, %10 ]
  ret %struct.a2dp_conn* %14, !dbg !590
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
define hidden %struct.a2dp_conn* @__a2dp_conn_for_channel(i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !591 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !595, metadata !DIExpression()), !dbg !597
  %2 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !598, !tbaa !551
  %3 = icmp eq %struct.a2dp_stack_t* %2, null, !dbg !600
  br i1 %3, label %21, label %4, !dbg !601

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %6, metadata !596, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %6, metadata !596, metadata !DIExpression()), !dbg !602
  %5 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %2, i32 0, i32 0, i32 1, !dbg !603
  %6 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %2, i32 0, i32 0, i32 0, !dbg !607
  br label %7, !dbg !608

; <label>:7:                                      ; preds = %16, %4
  %8 = phi %struct.a2dp_conn* [ %6, %4 ], [ %17, %16 ]
  %9 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %8, i32 0, i32 2, i32 1, i32 3, !dbg !610
  %10 = load i16, i16* %9, align 2, !dbg !610, !tbaa !613
  %11 = icmp eq i16 %10, %0, !dbg !623
  br i1 %11, label %19, label %12, !dbg !624

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %8, i32 0, i32 3, i32 0, i32 0, !dbg !625
  %14 = load i16, i16* %13, align 4, !dbg !625, !tbaa !627
  %15 = icmp eq i16 %14, %0, !dbg !628
  br i1 %15, label %19, label %16, !dbg !629

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %8, i32 1, !dbg !631
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %17, metadata !596, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %17, metadata !596, metadata !DIExpression()), !dbg !602
  %18 = icmp ult %struct.a2dp_conn* %17, %5, !dbg !603
  br i1 %18, label %7, label %19, !dbg !608, !llvm.loop !633

; <label>:19:                                     ; preds = %16, %12, %7
  %20 = phi %struct.a2dp_conn* [ %8, %12 ], [ %8, %7 ], [ null, %16 ]
  br label %21, !dbg !635

; <label>:21:                                     ; preds = %19, %1
  %22 = phi %struct.a2dp_conn* [ null, %1 ], [ %20, %19 ]
  ret %struct.a2dp_conn* %22, !dbg !635
}

; Function Attrs: nounwind optsize
define hidden void @__close_all_a2dp_media_coder() local_unnamed_addr #0 section ".bt_stack_code" !dbg !636 {
  %1 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !641, !tbaa !551
  %2 = icmp eq %struct.a2dp_stack_t* %1, null, !dbg !643
  br i1 %2, label %12, label %3, !dbg !644

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* null, metadata !640, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %4, metadata !640, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %4, metadata !640, metadata !DIExpression()), !dbg !645
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 0, !dbg !646
  br label %5, !dbg !648

; <label>:5:                                      ; preds = %5, %3
  %6 = phi %struct.a2dp_conn* [ %7, %5 ], [ %4, %3 ]
  tail call void @__sink_media_close(%struct.a2dp_conn* %6) #11, !dbg !648
  %7 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 1, !dbg !651
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %7, metadata !640, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %7, metadata !640, metadata !DIExpression()), !dbg !645
  %8 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !653, !tbaa !551
  %9 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %8, i32 0, i32 0, i32 1, !dbg !653
  %10 = icmp ult %struct.a2dp_conn* %7, %9, !dbg !653
  br i1 %10, label %5, label %11, !dbg !655, !llvm.loop !657

; <label>:11:                                     ; preds = %5
  br label %12, !dbg !659

; <label>:12:                                     ; preds = %11, %0
  ret void, !dbg !659
}

; Function Attrs: optsize
declare void @__sink_media_close(%struct.a2dp_conn*) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden zeroext i8 @__a2dp_conn_send_discover_cnt() local_unnamed_addr #0 section ".bt_stack_code" !dbg !661 {
  call void @llvm.dbg.value(metadata i8 0, metadata !663, metadata !DIExpression()), !dbg !665
  %1 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !666, !tbaa !551
  %2 = icmp eq %struct.a2dp_stack_t* %1, null, !dbg !668
  br i1 %2, label %53, label %3, !dbg !669

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %4, metadata !664, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %4, metadata !664, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i8 0, metadata !663, metadata !DIExpression()), !dbg !665
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 0, !dbg !671
  br label %5, !dbg !673

; <label>:5:                                      ; preds = %44, %3
  %6 = phi %struct.a2dp_conn* [ %46, %44 ], [ %4, %3 ]
  %7 = phi i8 [ %45, %44 ], [ 0, %3 ]
  %8 = icmp eq %struct.a2dp_conn* %6, null, !dbg !673
  br i1 %8, label %44, label %9, !dbg !677

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 2, !dbg !678
  %11 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 2, i32 1, i32 3, !dbg !680
  %12 = load i16, i16* %11, align 2, !dbg !680, !tbaa !613
  %13 = icmp eq i16 %12, 0, !dbg !681
  br i1 %13, label %44, label %14, !dbg !682

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 1, i32 0, !dbg !684
  %16 = load i8, i8* %15, align 2, !dbg !684
  %17 = lshr i8 %16, 1, !dbg !684
  %18 = and i8 %17, 15, !dbg !684
  %19 = icmp ugt i8 %18, 2, !dbg !687
  br i1 %19, label %20, label %44, !dbg !688

; <label>:20:                                     ; preds = %14
  %21 = shl nuw i8 %17, 1, !dbg !689
  %22 = add i8 %21, 30, !dbg !689
  %23 = and i8 %22, 30, !dbg !689
  %24 = and i8 %16, -31, !dbg !689
  %25 = or i8 %23, %24, !dbg !689
  store i8 %25, i8* %15, align 2, !dbg !689
  %26 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !691, !tbaa !693
  %27 = icmp slt i8 %26, 0, !dbg !691
  br i1 %27, label %28, label %34, !dbg !694

; <label>:28:                                     ; preds = %20
  %29 = lshr exact i8 %22, 1, !dbg !695
  %30 = and i8 %29, 15, !dbg !695
  %31 = zext i8 %30 to i32, !dbg !695
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 %31) #10, !dbg !695
  %33 = load i8, i8* %15, align 2
  br label %34, !dbg !695

; <label>:34:                                     ; preds = %28, %20
  %35 = phi i8 [ %33, %28 ], [ %25, %20 ], !dbg !697
  %36 = and i8 %35, 30, !dbg !697
  %37 = icmp eq i8 %36, 4, !dbg !699
  br i1 %37, label %38, label %44, !dbg !700

; <label>:38:                                     ; preds = %34
  %39 = and i8 %35, -31, !dbg !701
  %40 = or i8 %39, 2, !dbg !701
  store i8 %40, i8* %15, align 2, !dbg !701
  %41 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 2, i32 1, i32 0, i32 0, !dbg !703
  %42 = load i8, i8* %41, align 4, !dbg !704
  %43 = or i8 %42, 16, !dbg !704
  store i8 %43, i8* %41, align 4, !dbg !704
  tail call void @avdtp_discover_req(%struct.avdtp* nonnull %10) #11, !dbg !705
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #11, !dbg !706
  br label %44, !dbg !707

; <label>:44:                                     ; preds = %38, %34, %14, %9, %5
  %45 = phi i8 [ %7, %14 ], [ %7, %9 ], [ %7, %5 ], [ 1, %38 ], [ 1, %34 ]
  call void @llvm.dbg.value(metadata i8 %45, metadata !663, metadata !DIExpression()), !dbg !665
  %46 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 1, !dbg !708
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %46, metadata !664, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %46, metadata !664, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i8 %45, metadata !663, metadata !DIExpression()), !dbg !665
  %47 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !710, !tbaa !551
  %48 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %47, i32 0, i32 0, i32 1, !dbg !710
  %49 = icmp ult %struct.a2dp_conn* %46, %48, !dbg !710
  br i1 %49, label %5, label %50, !dbg !712, !llvm.loop !714

; <label>:50:                                     ; preds = %44
  %51 = icmp ne i8 %45, 0, !dbg !716
  %52 = zext i1 %51 to i8, !dbg !716
  br label %53, !dbg !716

; <label>:53:                                     ; preds = %50, %0
  %54 = phi i8 [ 0, %0 ], [ %52, %50 ]
  ret i8 %54, !dbg !717
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @avdtp_discover_req(%struct.avdtp*) local_unnamed_addr #4

; Function Attrs: optsize
declare void @stack_run_loop_resume(...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_send_cmd(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !718 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %1, metadata !723, metadata !DIExpression()), !dbg !726
  %3 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !727, !tbaa !551
  %4 = icmp eq %struct.a2dp_stack_t* %3, null, !dbg !729
  br i1 %4, label %71, label %5, !dbg !730

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %1, 50, !dbg !731
  br i1 %6, label %7, label %60, !dbg !733

; <label>:7:                                      ; preds = %5
  %8 = tail call %struct.a2dp_conn* @__a2dp_conn_for_addr(i8* %0) #11, !dbg !734
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %8, metadata !740, metadata !DIExpression()), !dbg !743
  %9 = icmp eq %struct.a2dp_conn* %8, null, !dbg !744
  br i1 %9, label %10, label %13, !dbg !746

; <label>:10:                                     ; preds = %7
  %11 = tail call fastcc %struct.a2dp_conn* @__create_a2dp_conn(i8* %0) #11, !dbg !747
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %11, metadata !740, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %11, metadata !740, metadata !DIExpression()), !dbg !743
  %12 = icmp eq %struct.a2dp_conn* %11, null, !dbg !749
  br i1 %12, label %71, label %13, !dbg !751

; <label>:13:                                     ; preds = %10, %7
  %14 = phi %struct.a2dp_conn* [ %11, %10 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 2, i32 1, !dbg !752
  %16 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 2, i32 1, i32 3, !dbg !755
  %17 = load i16, i16* %16, align 2, !dbg !755, !tbaa !613
  %18 = icmp eq i16 %17, 0, !dbg !756
  br i1 %18, label %19, label %48, !dbg !757

; <label>:19:                                     ; preds = %13
  %20 = load i8, i8* @a2dp_wait_remote_discovecr, align 1, !dbg !758, !tbaa !693
  %21 = icmp eq i8 %20, 0, !dbg !758
  br i1 %21, label %27, label %22, !dbg !761

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 1, i32 0, !dbg !762
  %24 = load i8, i8* %23, align 2, !dbg !764
  %25 = and i8 %24, -31, !dbg !764
  %26 = or i8 %25, 18, !dbg !764
  br label %36, !dbg !765

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 0, !dbg !766
  %29 = tail call zeroext i8 @handle_a2dp_discover_flag([6 x i8]* %28, i8 zeroext -1) #11, !dbg !769
  %30 = icmp ne i8 %29, 0, !dbg !769
  %31 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 1, i32 0
  %32 = load i8, i8* %31, align 2
  %33 = and i8 %32, -31
  %34 = select i1 %30, i8 22, i8 4, !dbg !770
  %35 = or i8 %33, %34
  br label %36

; <label>:36:                                     ; preds = %27, %22
  %37 = phi i8* [ %31, %27 ], [ %23, %22 ]
  %38 = phi i8 [ %35, %27 ], [ %26, %22 ]
  store i8 %38, i8* %37, align 2
  %39 = and i8 %38, 30, !dbg !771
  %40 = icmp ugt i8 %39, 4, !dbg !773
  br i1 %40, label %41, label %43, !dbg !774

; <label>:41:                                     ; preds = %36
  %42 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #11, !dbg !775
  br label %43, !dbg !777

; <label>:43:                                     ; preds = %41, %36
  %44 = getelementptr inbounds %struct.avdtp_core_data_t, %struct.avdtp_core_data_t* %15, i32 0, i32 0, i32 0, !dbg !778
  %45 = load i8, i8* %44, align 4, !dbg !779
  %46 = or i8 %45, 16, !dbg !779
  store i8 %46, i8* %44, align 4, !dbg !779
  %47 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__a2dp_packet_handler, i8* %0, i16 zeroext 25, i16 zeroext -1) #11, !dbg !780
  br label %71, !dbg !781

; <label>:48:                                     ; preds = %13
  %49 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 3, i32 0, i32 0, !dbg !782
  %50 = load i16, i16* %49, align 4, !dbg !782, !tbaa !627
  %51 = icmp eq i16 %50, 0, !dbg !785
  br i1 %51, label %52, label %71, !dbg !786

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 1, i32 0, !dbg !788
  %54 = load i8, i8* %53, align 2, !dbg !790
  %55 = and i8 %54, -31, !dbg !790
  %56 = or i8 %55, 2, !dbg !790
  store i8 %56, i8* %53, align 2, !dbg !790
  %57 = getelementptr inbounds %struct.avdtp_core_data_t, %struct.avdtp_core_data_t* %15, i32 0, i32 0, i32 0, !dbg !791
  %58 = load i8, i8* %57, align 4, !dbg !792
  %59 = or i8 %58, 16, !dbg !792
  store i8 %59, i8* %57, align 4, !dbg !792
  tail call fastcc void @a2dp_event_credits(i16 zeroext %17) #11, !dbg !793
  br label %71, !dbg !794

; <label>:60:                                     ; preds = %5
  %61 = tail call %struct.a2dp_conn* @__a2dp_conn_for_addr(i8* %0) #10, !dbg !795
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %61, metadata !724, metadata !DIExpression()), !dbg !796
  %62 = icmp eq %struct.a2dp_conn* %61, null, !dbg !797
  br i1 %62, label %71, label %63, !dbg !799

; <label>:63:                                     ; preds = %60
  switch i32 %1, label %71 [
    i32 51, label %64
    i32 13, label %69
  ], !dbg !800

; <label>:64:                                     ; preds = %63
  %65 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %61, i32 0, i32 3, i32 0, i32 0, !dbg !803
  %66 = load i16, i16* %65, align 4, !dbg !803, !tbaa !627
  tail call void @l2cap_disconnect_internal(i16 zeroext %66, i8 zeroext 19) #11, !dbg !805
  %67 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %61, i32 0, i32 2, i32 1, i32 3, !dbg !806
  %68 = load i16, i16* %67, align 2, !dbg !806, !tbaa !613
  tail call void @l2cap_disconnect_internal(i16 zeroext %68, i8 zeroext 19) #11, !dbg !807
  br label %71, !dbg !808

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %61, i32 0, i32 2, !dbg !809
  tail call void @avdtp_delay_report_req(%struct.avdtp* %70) #11, !dbg !810
  br label %71, !dbg !811

; <label>:71:                                     ; preds = %69, %64, %63, %60, %52, %48, %43, %10, %2
  %72 = phi i32 [ -1000, %2 ], [ -1000, %60 ], [ 0, %64 ], [ 0, %69 ], [ 0, %63 ], [ 0, %10 ], [ 0, %43 ], [ 0, %48 ], [ 0, %52 ]
  ret i32 %72, !dbg !812
}

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @avdtp_delay_report_req(%struct.avdtp*) local_unnamed_addr #4

; Function Attrs: alwaysinline nounwind optsize
define hidden void @a2dp_init(%struct.a2dp_stack_t*) local_unnamed_addr #6 section ".bt_stack_code" !dbg !813 {
  call void @llvm.dbg.value(metadata %struct.a2dp_stack_t* %0, metadata !817, metadata !DIExpression()), !dbg !818
  store %struct.a2dp_stack_t* %0, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !819, !tbaa !551
  %2 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !820
  tail call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 128, i32 4, i1 false), !dbg !820
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__a2dp_packet_handler, i16 zeroext 25, i16 zeroext -1) #11, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #7

; Function Attrs: optsize
declare void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal void @__a2dp_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".bt_stack_code" !dbg !823 {
  %5 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !832, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 %0, metadata !827, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i16 %1, metadata !828, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i8* %2, metadata !829, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i16 %3, metadata !830, metadata !DIExpression()), !dbg !858
  switch i8 %0, label %170 [
    i8 4, label %6
    i8 6, label %9
  ], !dbg !859

; <label>:6:                                      ; preds = %4
  %7 = load i8, i8* %2, align 1, !dbg !860, !tbaa !693
  switch i8 %7, label %170 [
    i8 116, label %8
    i8 114, label %77
    i8 112, label %120
    i8 121, label %168
    i8 113, label %164
  ], !dbg !863

; <label>:8:                                      ; preds = %6
  tail call fastcc void @a2dp_event_credits(i16 zeroext %1) #10, !dbg !864
  br label %170, !dbg !866

; <label>:9:                                      ; preds = %4
  %10 = tail call %struct.a2dp_conn* @__a2dp_conn_for_channel(i16 zeroext %1) #11, !dbg !867
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %10, metadata !853, metadata !DIExpression()), !dbg !868
  %11 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %10, i32 0, i32 2, i32 1, i32 3, !dbg !869
  %12 = load i16, i16* %11, align 2, !dbg !869, !tbaa !613
  %13 = icmp eq i16 %12, %1, !dbg !871
  br i1 %13, label %14, label %17, !dbg !872

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %10, i32 0, i32 2, !dbg !873
  %16 = tail call zeroext i8 @avdtp_packet_handler(%struct.avdtp* %15, i8* %2, i16 zeroext %3) #11, !dbg !874
  br label %170, !dbg !876

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %10, i32 0, i32 3, i32 0, i32 0, !dbg !877
  %19 = load i16, i16* %18, align 4, !dbg !877, !tbaa !627
  %20 = icmp eq i16 %19, %1, !dbg !880
  br i1 %20, label %21, label %170, !dbg !881

; <label>:21:                                     ; preds = %17
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %10, metadata !883, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %2, metadata !888, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i16 %3, metadata !889, metadata !DIExpression()), !dbg !915
  %22 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %10, i32 0, i32 2, i32 1, i32 1, !dbg !916
  %23 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %22, align 4, !dbg !916, !tbaa !918
  %24 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %23, i32 0, i32 3, !dbg !919
  %25 = load i8, i8* %24, align 2, !dbg !919
  %26 = and i8 %25, 15, !dbg !919
  %27 = zext i8 %26 to i32, !dbg !920
  %28 = icmp eq i8 %26, 3, !dbg !921
  br i1 %28, label %34, label %29, !dbg !922

; <label>:29:                                     ; preds = %21
  %30 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !923, !tbaa !693
  %31 = icmp slt i8 %30, 0, !dbg !923
  br i1 %31, label %32, label %170, !dbg !926

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 %27) #11, !dbg !927
  br label %170, !dbg !927

; <label>:34:                                     ; preds = %21
  %35 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !929, !tbaa !551
  %36 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %35, i32 0, i32 9, !dbg !931
  %37 = load volatile i32, i32* %36, align 1, !dbg !931
  %38 = trunc i32 %37 to i16, !dbg !929
  %39 = icmp slt i16 %38, 0, !dbg !929
  br i1 %39, label %170, label %40, !dbg !932

; <label>:40:                                     ; preds = %34
  %41 = tail call i32 @mic_coder_busy_flag() #11, !dbg !933
  %42 = tail call i32 bitcast (i32 (...)* @filter_out_sbc_data_en to i32 ()*)() #11, !dbg !935
  %43 = icmp eq i32 %42, 0, !dbg !935
  br i1 %43, label %44, label %170, !dbg !937

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* @CONFIG_BTCTLER_TWS_ENABLE, align 4, !dbg !938, !tbaa !940
  %46 = icmp eq i32 %45, 0, !dbg !938
  br i1 %46, label %47, label %50, !dbg !941

; <label>:47:                                     ; preds = %54, %50, %44
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !890, metadata !DIExpression()), !dbg !942
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %48, label %170, !dbg !943

; <label>:48:                                     ; preds = %47
  %49 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %10, i32 0, i32 2, i32 1, i32 8
  br label %60, !dbg !943

; <label>:50:                                     ; preds = %44
  %51 = tail call i32 bitcast (i32 (...)* @tws_api_get_tws_state to i32 ()*)() #11, !dbg !946
  %52 = and i32 %51, 2, !dbg !949
  %53 = icmp eq i32 %52, 0, !dbg !949
  br i1 %53, label %47, label %54, !dbg !950

; <label>:54:                                     ; preds = %50
  %55 = tail call i32 bitcast (i32 (...)* @tws_api_get_tws_state to i32 ()*)() #11, !dbg !951
  %56 = and i32 %55, 64, !dbg !953
  %57 = icmp eq i32 %56, 0, !dbg !953
  br i1 %57, label %58, label %47, !dbg !954

; <label>:58:                                     ; preds = %54
  %59 = tail call i32 @putchar(i32 77) #11, !dbg !956
  br label %170, !dbg !958

; <label>:60:                                     ; preds = %74, %48
  %61 = phi %struct.a2dp_event_handler* [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %48 ], [ %75, %74 ]
  %62 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %61, i32 0, i32 0, !dbg !959
  %63 = load i32, i32* %62, align 4, !dbg !959, !tbaa !963
  %64 = load i16, i16* %49, align 2, !dbg !965
  %65 = lshr i16 %64, 12, !dbg !965
  %66 = and i16 %65, 3, !dbg !965
  %67 = zext i16 %66 to i32, !dbg !965
  %68 = icmp eq i32 %63, %67, !dbg !966
  br i1 %68, label %69, label %74, !dbg !967

; <label>:69:                                     ; preds = %60
  %70 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %61, i32 0, i32 3, !dbg !968
  %71 = load void (%struct.a2dp_conn*, i8*, i16)*, void (%struct.a2dp_conn*, i8*, i16)** %70, align 4, !dbg !968, !tbaa !971
  %72 = icmp eq void (%struct.a2dp_conn*, i8*, i16)* %71, null, !dbg !972
  br i1 %72, label %74, label %73, !dbg !973

; <label>:73:                                     ; preds = %69
  tail call void %71(%struct.a2dp_conn* nonnull %10, i8* %2, i16 zeroext %3) #11, !dbg !974
  br label %74, !dbg !976

; <label>:74:                                     ; preds = %73, %69, %60
  %75 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %61, i32 1, !dbg !977
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %75, metadata !890, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %75, metadata !890, metadata !DIExpression()), !dbg !942
  %76 = icmp ult %struct.a2dp_event_handler* %75, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !979
  br i1 %76, label %60, label %169, !dbg !943, !llvm.loop !981

; <label>:77:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i16 0, metadata !839, metadata !DIExpression()), !dbg !984
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !985
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %78) #12, !dbg !985
  %79 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !986, !tbaa !693
  %80 = and i8 %79, 32, !dbg !986
  %81 = icmp eq i8 %80, 0, !dbg !986
  br i1 %81, label %84, label %82, !dbg !988

; <label>:82:                                     ; preds = %77
  %83 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #11, !dbg !989
  br label %84, !dbg !989

; <label>:84:                                     ; preds = %82, %77
  %85 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !991
  call void @bt_flip_addr(i8* nonnull %78, i8* %85) #11, !dbg !992
  %86 = call %struct.a2dp_conn* @__a2dp_conn_for_addr(i8* nonnull %78) #11, !dbg !993
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %86, metadata !840, metadata !DIExpression()), !dbg !994
  %87 = icmp eq %struct.a2dp_conn* %86, null, !dbg !995
  br i1 %87, label %88, label %91, !dbg !997

; <label>:88:                                     ; preds = %84
  %89 = call fastcc %struct.a2dp_conn* @__create_a2dp_conn(i8* nonnull %78) #11, !dbg !998
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %89, metadata !840, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %89, metadata !840, metadata !DIExpression()), !dbg !994
  %90 = icmp eq %struct.a2dp_conn* %89, null, !dbg !1000
  br i1 %90, label %119, label %91, !dbg !1002

; <label>:91:                                     ; preds = %88, %84
  %92 = phi %struct.a2dp_conn* [ %89, %88 ], [ %86, %84 ]
  %93 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1003, !tbaa !693
  %94 = icmp eq i8 %93, 0, !dbg !1003
  br i1 %94, label %110, label %95, !dbg !1006

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %92, i32 0, i32 2, i32 1, i32 8, !dbg !1007
  %97 = load i16, i16* %96, align 2, !dbg !1007
  %98 = and i16 %97, 12288, !dbg !1007
  %99 = icmp eq i16 %98, 0, !dbg !1010
  br i1 %99, label %100, label %110, !dbg !1011

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %92, i32 0, i32 2, i32 1, i32 0, i32 0, !dbg !1012
  %102 = load i8, i8* %101, align 4, !dbg !1012
  %103 = and i8 %102, 16, !dbg !1012
  %104 = icmp eq i8 %103, 0, !dbg !1015
  br i1 %104, label %110, label %105, !dbg !1016

; <label>:105:                                    ; preds = %100
  %106 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %92, i32 0, i32 2, i32 1, i32 3, !dbg !1017
  %107 = load i16, i16* %106, align 2, !dbg !1017, !tbaa !613
  %108 = icmp eq i16 %107, 0, !dbg !1019
  br i1 %108, label %109, label %110, !dbg !1020

; <label>:109:                                    ; preds = %105
  call void @l2cap_decline_connection_internal(i16 zeroext %1, i8 zeroext 4) #11, !dbg !1022
  br label %119, !dbg !1024

; <label>:110:                                    ; preds = %105, %100, %95, %91
  %111 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %92, i32 0, i32 2, i32 1, i32 3, !dbg !1025
  %112 = load i16, i16* %111, align 2, !dbg !1025, !tbaa !613
  %113 = icmp eq i16 %112, 0, !dbg !1027
  br i1 %113, label %118, label %114, !dbg !1028

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %92, i32 0, i32 3, i32 0, i32 0, !dbg !1029
  %116 = load i16, i16* %115, align 4, !dbg !1029, !tbaa !627
  %117 = icmp eq i16 %116, 0, !dbg !1031
  br i1 %117, label %118, label %119, !dbg !1032

; <label>:118:                                    ; preds = %114, %110
  call void @l2cap_accept_connection_internal(i16 zeroext %1) #11, !dbg !1034
  br label %119, !dbg !1036

; <label>:119:                                    ; preds = %118, %114, %109, %88
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %78) #12, !dbg !1037
  br label %170, !dbg !1038

; <label>:120:                                    ; preds = %6
  %121 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1039
  %122 = load i8, i8* %121, align 1, !dbg !1039, !tbaa !693
  %123 = icmp eq i8 %122, 0, !dbg !1041
  br i1 %123, label %124, label %125, !dbg !1042

; <label>:124:                                    ; preds = %120
  tail call fastcc void @a2dp_channel_open_success(i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #11, !dbg !1043
  br label %170, !dbg !1045

; <label>:125:                                    ; preds = %120
  call void @llvm.dbg.value(metadata i16 0, metadata !1046, metadata !DIExpression()), !dbg !1053
  %126 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !1056
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %126) #12, !dbg !1056
  %127 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !1057
  call void @bt_flip_addr(i8* nonnull %126, i8* %127) #11, !dbg !1058
  %128 = call %struct.a2dp_conn* @__a2dp_conn_for_addr(i8* nonnull %126) #11, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %128, metadata !1052, metadata !DIExpression()), !dbg !1060
  %129 = icmp eq %struct.a2dp_conn* %128, null, !dbg !1061
  br i1 %129, label %131, label %130, !dbg !1063

; <label>:130:                                    ; preds = %125
  call fastcc void @__close_channel(%struct.a2dp_conn* nonnull %128, i16 zeroext %1) #11, !dbg !1064
  br label %131, !dbg !1066

; <label>:131:                                    ; preds = %130, %125
  %132 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1067, !tbaa !693
  %133 = icmp eq i8 %132, 0, !dbg !1067
  br i1 %133, label %163, label %134, !dbg !1069

; <label>:134:                                    ; preds = %131
  %135 = load i8, i8* %121, align 1, !dbg !1070, !tbaa !693
  %136 = icmp eq i8 %135, 80, !dbg !1073
  br i1 %136, label %163, label %137, !dbg !1074

; <label>:137:                                    ; preds = %134
  %138 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %128, i32 0, i32 2, i32 1, i32 8, !dbg !1075
  %139 = load i16, i16* %138, align 2, !dbg !1075
  %140 = and i16 %139, 12288, !dbg !1075
  %141 = icmp eq i16 %140, 0, !dbg !1078
  br i1 %141, label %142, label %163, !dbg !1079

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %128, i32 0, i32 2, i32 1, i32 0, i32 0, !dbg !1080
  %144 = load i8, i8* %143, align 4, !dbg !1080
  %145 = and i8 %144, 16, !dbg !1080
  %146 = icmp eq i8 %145, 0, !dbg !1083
  br i1 %146, label %163, label %147, !dbg !1084

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %128, i32 0, i32 2, i32 1, i32 3, !dbg !1085
  %149 = load i16, i16* %148, align 2, !dbg !1085, !tbaa !613
  %150 = icmp eq i16 %149, 0, !dbg !1087
  br i1 %150, label %151, label %163, !dbg !1088

; <label>:151:                                    ; preds = %147
  %152 = load i8, i8* @reconnect_after_disconnect, align 1, !dbg !1090, !tbaa !693
  %153 = icmp ult i8 %152, 2, !dbg !1093
  br i1 %153, label %154, label %162, !dbg !1094

; <label>:154:                                    ; preds = %151
  %155 = add i8 %152, 1, !dbg !1095
  store i8 %155, i8* @reconnect_after_disconnect, align 1, !dbg !1095, !tbaa !693
  %156 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1097, !tbaa !693
  %157 = icmp slt i8 %156, 0, !dbg !1097
  br i1 %157, label %158, label %160, !dbg !1099

; <label>:158:                                    ; preds = %154
  %159 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.16, i32 0, i32 0)) #12, !dbg !1100
  br label %160, !dbg !1100

; <label>:160:                                    ; preds = %158, %154
  %161 = call i32 @a2dp_send_cmd(i8* nonnull %126, i32 50) #11, !dbg !1102
  br label %163, !dbg !1103

; <label>:162:                                    ; preds = %151
  store i8 0, i8* @reconnect_after_disconnect, align 1, !dbg !1104, !tbaa !693
  br label %163

; <label>:163:                                    ; preds = %162, %160, %147, %142, %137, %134, %131
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %126) #12, !dbg !1106
  br label %170

; <label>:164:                                    ; preds = %6
  call void @llvm.dbg.value(metadata i16 %1, metadata !1107, metadata !DIExpression()), !dbg !1113
  %165 = tail call %struct.a2dp_conn* @__a2dp_conn_for_channel(i16 zeroext %1) #11, !dbg !1115
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %165, metadata !1112, metadata !DIExpression()), !dbg !1116
  %166 = icmp eq %struct.a2dp_conn* %165, null, !dbg !1117
  br i1 %166, label %170, label %167, !dbg !1119

; <label>:167:                                    ; preds = %164
  tail call fastcc void @__close_channel(%struct.a2dp_conn* nonnull %165, i16 zeroext %1) #11, !dbg !1120
  br label %170, !dbg !1122

; <label>:168:                                    ; preds = %6
  tail call fastcc void @a2dp_channel_open_success(i16 zeroext %1, i8* nonnull %2, i8 zeroext 0) #11, !dbg !1123
  br label %170, !dbg !1124

; <label>:169:                                    ; preds = %74
  br label %170, !dbg !1125

; <label>:170:                                    ; preds = %169, %168, %167, %164, %163, %124, %119, %58, %47, %40, %34, %32, %29, %17, %14, %8, %6, %4
  ret void, !dbg !1125
}

; Function Attrs: nounwind optsize readonly
define hidden %struct.avdtp* @get_tws_phone_session() local_unnamed_addr #2 section ".bt_stack_code" !dbg !1127 {
  %1 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !1132
  %2 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 0, !dbg !1132
  %3 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 1
  br label %4, !dbg !1140

; <label>:4:                                      ; preds = %10, %0
  %5 = phi %struct.a2dp_conn* [ %2, %0 ], [ %11, %10 ]
  %6 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %5, i32 0, i32 1, i32 0, !dbg !1142
  %7 = load i8, i8* %6, align 2, !dbg !1142
  %8 = and i8 %7, 1, !dbg !1142
  %9 = icmp eq i8 %8, 0, !dbg !1146
  br i1 %9, label %10, label %13, !dbg !1147

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %5, i32 1, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %11, metadata !1138, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %11, metadata !1138, metadata !DIExpression()), !dbg !1150
  %12 = icmp ult %struct.a2dp_conn* %11, %3, !dbg !1151
  br i1 %12, label %4, label %13, !dbg !1140, !llvm.loop !1153

; <label>:13:                                     ; preds = %10, %4
  %14 = phi %struct.a2dp_conn* [ %5, %4 ], [ null, %10 ]
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %14, metadata !1131, metadata !DIExpression()), !dbg !1156
  %15 = icmp eq %struct.a2dp_conn* %14, null, !dbg !1157
  %16 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %14, i32 0, i32 2, !dbg !1159
  %17 = select i1 %15, %struct.avdtp* null, %struct.avdtp* %16, !dbg !1161
  ret %struct.avdtp* %17, !dbg !1162
}

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1165, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i16 %1, metadata !1166, metadata !DIExpression()), !dbg !1171
  %3 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !1172
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %3, i32 0, i32 0, i32 0, !dbg !1172
  %5 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %3, i32 0, i32 0, i32 1
  br label %6, !dbg !1174

; <label>:6:                                      ; preds = %12, %2
  %7 = phi %struct.a2dp_conn* [ %4, %2 ], [ %13, %12 ]
  %8 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 0, i32 1, i32 0, !dbg !1175
  %9 = load i8, i8* %8, align 2, !dbg !1175
  %10 = and i8 %9, 1, !dbg !1175
  %11 = icmp eq i8 %10, 0, !dbg !1176
  br i1 %11, label %12, label %15, !dbg !1177

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 1, !dbg !1178
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %13, metadata !1138, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %13, metadata !1138, metadata !DIExpression()), !dbg !1179
  %14 = icmp ult %struct.a2dp_conn* %13, %5, !dbg !1180
  br i1 %14, label %6, label %23, !dbg !1174, !llvm.loop !1153

; <label>:15:                                     ; preds = %6
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %7, metadata !1169, metadata !DIExpression()), !dbg !1181
  %16 = icmp eq %struct.a2dp_conn* %7, null, !dbg !1182
  br i1 %16, label %24, label %17, !dbg !1184

; <label>:17:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8 1, metadata !1167, metadata !DIExpression()), !dbg !1185
  store i8 %9, i8* %0, align 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8 8, metadata !1168, metadata !DIExpression()), !dbg !1187
  %18 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1188
  %19 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 0, i32 3, i32 0, !dbg !1189
  %20 = bitcast %struct.media_core_data_t* %19 to i64*, !dbg !1190
  %21 = bitcast i8* %18 to i64*, !dbg !1190
  %22 = load i64, i64* %20, align 1, !dbg !1190
  store i64 %22, i64* %21, align 1, !dbg !1190
  br label %24, !dbg !1191

; <label>:23:                                     ; preds = %12
  br label %24, !dbg !1192

; <label>:24:                                     ; preds = %23, %17, %15
  %25 = phi i32 [ 9, %17 ], [ 0, %15 ], [ 0, %23 ]
  ret i32 %25, !dbg !1192
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #7

; Function Attrs: nounwind optsize
define hidden void @a2dp_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1197, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i16 %1, metadata !1198, metadata !DIExpression()), !dbg !1202
  %3 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !1203
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %3, i32 0, i32 0, i32 0, !dbg !1203
  %5 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %3, i32 0, i32 0, i32 1
  br label %6, !dbg !1205

; <label>:6:                                      ; preds = %12, %2
  %7 = phi %struct.a2dp_conn* [ %4, %2 ], [ %13, %12 ]
  %8 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 0, i32 1, i32 0, !dbg !1206
  %9 = load i8, i8* %8, align 2, !dbg !1206
  %10 = and i8 %9, 1, !dbg !1206
  %11 = icmp eq i8 %10, 0, !dbg !1207
  br i1 %11, label %12, label %15, !dbg !1208

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 1, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %13, metadata !1138, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %13, metadata !1138, metadata !DIExpression()), !dbg !1210
  %14 = icmp ult %struct.a2dp_conn* %13, %5, !dbg !1211
  br i1 %14, label %6, label %25, !dbg !1205, !llvm.loop !1153

; <label>:15:                                     ; preds = %6
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %7, metadata !1200, metadata !DIExpression()), !dbg !1212
  %16 = icmp eq %struct.a2dp_conn* %7, null, !dbg !1213
  br i1 %16, label %26, label %17, !dbg !1215

; <label>:17:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8 1, metadata !1199, metadata !DIExpression()), !dbg !1216
  %18 = load i8, i8* %0, align 1, !dbg !1217
  store i8 %18, i8* %8, align 1, !dbg !1217
  %19 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 0, i32 3, i32 0, !dbg !1218
  %20 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1219
  %21 = bitcast i8* %20 to i64*, !dbg !1220
  %22 = bitcast %struct.media_core_data_t* %19 to i64*, !dbg !1220
  %23 = load i64, i64* %21, align 1, !dbg !1220
  store i64 %23, i64* %22, align 1, !dbg !1220
  %24 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %7, i32 0, i32 2, !dbg !1221
  tail call void @avdtp_tws_local_sep_deal(%struct.avdtp* %24) #11, !dbg !1222
  br label %26, !dbg !1223

; <label>:25:                                     ; preds = %12
  br label %26, !dbg !1224

; <label>:26:                                     ; preds = %25, %17, %15
  ret void, !dbg !1224
}

; Function Attrs: optsize
declare void @avdtp_tws_local_sep_deal(%struct.avdtp*) local_unnamed_addr #4

; Function Attrs: nounwind optsize readnone
define hidden i32 @music_player_ctrl(i8* nocapture readnone, i8 zeroext) local_unnamed_addr #8 section ".bt_stack_code" !dbg !1226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1230, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %1, metadata !1231, metadata !DIExpression()), !dbg !1233
  ret i32 0, !dbg !1234
}

; Function Attrs: nounwind optsize readnone
define hidden void @__a2dp_lock_media_code(i8* nocapture) local_unnamed_addr #8 section ".bt_stack_code" !dbg !1235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1239, metadata !DIExpression()), !dbg !1240
  ret void, !dbg !1241
}

; Function Attrs: nounwind optsize readnone
define hidden void @__a2dp_unlock_media_code(i8* nocapture) local_unnamed_addr #8 section ".bt_stack_code" !dbg !1242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1244, metadata !DIExpression()), !dbg !1245
  ret void, !dbg !1246
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.a2dp_conn* @__create_a2dp_conn(i8* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !1247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1249, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 0, metadata !1250, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %3, metadata !1251, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %3, metadata !1251, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 undef, metadata !1250, metadata !DIExpression()), !dbg !1254
  %2 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !1256
  %3 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %2, i32 0, i32 0, i32 0, !dbg !1256
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %2, i32 0, i32 0, i32 1
  br label %5, !dbg !1258

; <label>:5:                                      ; preds = %81, %1
  %6 = phi %struct.a2dp_conn* [ %3, %1 ], [ %82, %81 ]
  %7 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 1, i32 0, !dbg !1260
  %8 = load i8, i8* %7, align 2, !dbg !1260
  %9 = and i8 %8, 1, !dbg !1260
  %10 = icmp eq i8 %9, 0, !dbg !1264
  br i1 %10, label %11, label %81, !dbg !1265

; <label>:11:                                     ; preds = %5
  %12 = or i8 %8, 1, !dbg !1266
  store i8 %12, i8* %7, align 2, !dbg !1266
  %13 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 0, i32 0, !dbg !1268
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %0, i32 6, i32 1, i1 false), !dbg !1268
  %14 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 2, !dbg !1269
  %15 = bitcast %struct.avdtp* %14 to i8*, !dbg !1270
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 120, i32 4, i1 false), !dbg !1272
  %16 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1270, !tbaa !551
  %17 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %16, i32 0, i32 5, !dbg !1273
  %18 = load i16, i16* %17, align 4, !dbg !1273, !tbaa !1274
  %19 = zext i16 %18 to i32, !dbg !1270
  %20 = and i32 %19, 32, !dbg !1276
  %21 = icmp eq i32 %20, 0, !dbg !1276
  br i1 %21, label %44, label %22, !dbg !1277

; <label>:22:                                     ; preds = %11
  %23 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1278, !tbaa !693
  %24 = icmp eq i8 %23, 0, !dbg !1278
  br i1 %24, label %86, label %25, !dbg !1281

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 2, i32 1, i32 8, !dbg !1282
  store i16 0, i16* %26, align 2, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_source_media_codec_begin, i32 0, i32 0), metadata !1252, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_source_media_codec_begin, i32 0, i32 0), metadata !1252, metadata !DIExpression()), !dbg !1285
  br i1 icmp ult (%struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_source_media_codec_begin, i32 0, i32 0), %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_source_media_codec_end, i32 0, i32 0)), label %27, label %39, !dbg !1286

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1289

; <label>:28:                                     ; preds = %34, %27
  %29 = phi %struct.a2dp_media_codec* [ %35, %34 ], [ getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_source_media_codec_begin, i32 0, i32 0), %27 ]
  %30 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %29, i32 0, i32 0, !dbg !1289
  %31 = load i32, i32* %30, align 4, !dbg !1289, !tbaa !1293
  %32 = icmp eq i32 %31, 0, !dbg !1295
  br i1 %32, label %33, label %34, !dbg !1296

; <label>:33:                                     ; preds = %28
  tail call void @avdtp_sep_init(%struct.avdtp* %14, i32 0, %struct._avdtp_sep_ind* nonnull @a2dp_sep_ind_sbc, i8 zeroext 0) #11, !dbg !1297
  br label %34, !dbg !1299

; <label>:34:                                     ; preds = %33, %28
  %35 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %29, i32 1, !dbg !1300
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %35, metadata !1252, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %35, metadata !1252, metadata !DIExpression()), !dbg !1285
  %36 = icmp ult %struct.a2dp_media_codec* %35, getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_source_media_codec_end, i32 0, i32 0), !dbg !1302
  br i1 %36, label %28, label %37, !dbg !1286, !llvm.loop !1304

; <label>:37:                                     ; preds = %34
  %38 = load i8, i8* %7, align 2
  br label %39, !dbg !1307

; <label>:39:                                     ; preds = %37, %25
  %40 = phi i8 [ %38, %37 ], [ %12, %25 ], !dbg !1307
  %41 = and i8 %40, -31, !dbg !1307
  %42 = or i8 %41, 22, !dbg !1307
  store i8 %42, i8* %7, align 2, !dbg !1307
  %43 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #11, !dbg !1308
  br label %86, !dbg !1309

; <label>:44:                                     ; preds = %11
  %45 = and i32 %19, 2, !dbg !1310
  %46 = icmp eq i32 %45, 0, !dbg !1310
  br i1 %46, label %86, label %47, !dbg !1313

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 0, i32 2, i32 1, i32 8, !dbg !1315
  store i16 4096, i16* %48, align 2, !dbg !1317
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), metadata !1252, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), metadata !1252, metadata !DIExpression()), !dbg !1285
  br i1 icmp ult (%struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_end, i32 0, i32 0)), label %49, label %86, !dbg !1318

; <label>:49:                                     ; preds = %47
  br label %54, !dbg !1321

; <label>:50:                                     ; preds = %60
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), metadata !1252, metadata !DIExpression()), !dbg !1285
  br i1 icmp ult (%struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_end, i32 0, i32 0)), label %51, label %86, !dbg !1325

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* @CONFIG_BTSTACK_SUPPORT_AAC, align 4
  %53 = icmp eq i32 %52, 0
  br label %63, !dbg !1325

; <label>:54:                                     ; preds = %60, %49
  %55 = phi %struct.a2dp_media_codec* [ %61, %60 ], [ getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), %49 ]
  %56 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %55, i32 0, i32 0, !dbg !1321
  %57 = load i32, i32* %56, align 4, !dbg !1321, !tbaa !1293
  %58 = icmp eq i32 %57, 0, !dbg !1328
  br i1 %58, label %59, label %60, !dbg !1329

; <label>:59:                                     ; preds = %54
  tail call void @avdtp_sep_init(%struct.avdtp* %14, i32 1, %struct._avdtp_sep_ind* nonnull @a2dp_sep_ind_sbc, i8 zeroext 0) #11, !dbg !1330
  br label %60, !dbg !1332

; <label>:60:                                     ; preds = %59, %54
  %61 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %55, i32 1, !dbg !1333
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %61, metadata !1252, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %61, metadata !1252, metadata !DIExpression()), !dbg !1285
  %62 = icmp ult %struct.a2dp_media_codec* %61, getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_end, i32 0, i32 0), !dbg !1335
  br i1 %62, label %54, label %50, !dbg !1318, !llvm.loop !1337

; <label>:63:                                     ; preds = %78, %51
  %64 = phi %struct.a2dp_media_codec* [ getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), %51 ], [ %79, %78 ]
  %65 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %64, i32 0, i32 0, !dbg !1340
  %66 = load i32, i32* %65, align 4, !dbg !1340, !tbaa !1293
  %67 = icmp eq i32 %66, 2, !dbg !1344
  br i1 %67, label %68, label %78, !dbg !1345

; <label>:68:                                     ; preds = %63
  br i1 %53, label %77, label %69, !dbg !1346

; <label>:69:                                     ; preds = %68
  %70 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1348, !tbaa !551
  %71 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %70, i32 0, i32 9, !dbg !1352
  %72 = load i32, i32* %71, align 1, !dbg !1352
  %73 = trunc i32 %72 to i8, !dbg !1348
  %74 = icmp slt i8 %73, 0, !dbg !1348
  br i1 %74, label %75, label %76, !dbg !1353

; <label>:75:                                     ; preds = %69
  tail call void @avdtp_sep_init(%struct.avdtp* %14, i32 1, %struct._avdtp_sep_ind* nonnull @a2dp_sep_ind_mpeg24, i8 zeroext 2) #11, !dbg !1354
  br label %78, !dbg !1356

; <label>:76:                                     ; preds = %69
  tail call void @avdtp_sep_init(%struct.avdtp* %14, i32 1, %struct._avdtp_sep_ind* nonnull @a2dp_sep_ind_sbc, i8 zeroext 0) #11, !dbg !1357
  br label %78

; <label>:77:                                     ; preds = %68
  tail call void @avdtp_sep_init(%struct.avdtp* %14, i32 1, %struct._avdtp_sep_ind* nonnull @a2dp_sep_ind_sbc, i8 zeroext 0) #11, !dbg !1359
  br label %78

; <label>:78:                                     ; preds = %77, %76, %75, %63
  %79 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %64, i32 1, !dbg !1361
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %79, metadata !1252, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %79, metadata !1252, metadata !DIExpression()), !dbg !1285
  %80 = icmp ult %struct.a2dp_media_codec* %79, getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_end, i32 0, i32 0), !dbg !1363
  br i1 %80, label %63, label %84, !dbg !1325, !llvm.loop !1365

; <label>:81:                                     ; preds = %5
  %82 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %6, i32 1, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %82, metadata !1251, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %82, metadata !1251, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 undef, metadata !1250, metadata !DIExpression()), !dbg !1254
  %83 = icmp ult %struct.a2dp_conn* %82, %4, !dbg !1370
  br i1 %83, label %5, label %85, !dbg !1258, !llvm.loop !1372

; <label>:84:                                     ; preds = %78
  br label %86, !dbg !1374

; <label>:85:                                     ; preds = %81
  br label %86, !dbg !1374

; <label>:86:                                     ; preds = %85, %84, %50, %47, %44, %39, %22
  %87 = phi %struct.a2dp_conn* [ %6, %22 ], [ %6, %44 ], [ %6, %39 ], [ %6, %47 ], [ %6, %50 ], [ %6, %84 ], [ null, %85 ]
  ret %struct.a2dp_conn* %87, !dbg !1374
}

; Function Attrs: optsize
declare zeroext i8 @handle_a2dp_discover_flag([6 x i8]*, i8 zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @user_send_cmd_prepare(i32, i16 zeroext, i8*) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc void @a2dp_event_credits(i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1375 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1377, metadata !DIExpression()), !dbg !1380
  %2 = tail call %struct.a2dp_conn* @__a2dp_conn_for_channel(i16 zeroext %0) #10, !dbg !1381
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %2, metadata !1378, metadata !DIExpression()), !dbg !1382
  %3 = icmp eq %struct.a2dp_conn* %2, null, !dbg !1383
  br i1 %3, label %34, label %4, !dbg !1385

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %2, i32 0, i32 2, !dbg !1386
  tail call void @avdtp_retry_send(%struct.avdtp* %5) #11, !dbg !1387
  %6 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %2, i32 0, i32 1, i32 0, !dbg !1388
  %7 = load i8, i8* %6, align 2, !dbg !1388
  %8 = and i8 %7, 30, !dbg !1388
  %9 = icmp eq i8 %8, 4, !dbg !1390
  br i1 %9, label %10, label %13, !dbg !1391

; <label>:10:                                     ; preds = %4
  %11 = and i8 %7, -31, !dbg !1392
  %12 = or i8 %11, 2, !dbg !1392
  store i8 %12, i8* %6, align 2, !dbg !1392
  tail call void @avdtp_discover_req(%struct.avdtp* %5) #11, !dbg !1394
  br label %13, !dbg !1395

; <label>:13:                                     ; preds = %10, %4
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1379, metadata !DIExpression()), !dbg !1396
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %14, label %34, !dbg !1397

; <label>:14:                                     ; preds = %13
  %15 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %2, i32 0, i32 2, i32 1, i32 8
  br label %16, !dbg !1397

; <label>:16:                                     ; preds = %30, %14
  %17 = phi %struct.a2dp_event_handler* [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %14 ], [ %31, %30 ]
  %18 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %17, i32 0, i32 0, !dbg !1400
  %19 = load i32, i32* %18, align 4, !dbg !1400, !tbaa !963
  %20 = load i16, i16* %15, align 2, !dbg !1404
  %21 = lshr i16 %20, 12, !dbg !1404
  %22 = and i16 %21, 3, !dbg !1404
  %23 = zext i16 %22 to i32, !dbg !1404
  %24 = icmp eq i32 %19, %23, !dbg !1405
  br i1 %24, label %25, label %30, !dbg !1406

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %17, i32 0, i32 2, !dbg !1407
  %27 = load void (%struct.a2dp_conn*)*, void (%struct.a2dp_conn*)** %26, align 4, !dbg !1407, !tbaa !1410
  %28 = icmp eq void (%struct.a2dp_conn*)* %27, null, !dbg !1411
  br i1 %28, label %30, label %29, !dbg !1412

; <label>:29:                                     ; preds = %25
  tail call void %27(%struct.a2dp_conn* nonnull %2) #11, !dbg !1413
  br label %30, !dbg !1415

; <label>:30:                                     ; preds = %29, %25, %16
  %31 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %17, i32 1, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %31, metadata !1379, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %31, metadata !1379, metadata !DIExpression()), !dbg !1396
  %32 = icmp ult %struct.a2dp_event_handler* %31, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !1418
  br i1 %32, label %16, label %33, !dbg !1397, !llvm.loop !1420

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !1423

; <label>:34:                                     ; preds = %33, %13, %1
  ret void, !dbg !1423
}

; Function Attrs: optsize
declare void @avdtp_sep_init(%struct.avdtp*, i32, %struct._avdtp_sep_ind*, i8 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_getcap_ind_sbc(i8 zeroext, i8* nocapture, i8* nocapture) #0 section ".bt_stack_code" !dbg !498 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !500, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i8* %1, metadata !501, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8* %2, metadata !502, metadata !DIExpression()), !dbg !1427
  tail call void @llvm.dbg.declare(metadata %struct._sbc_codec_cap* undef, metadata !503, metadata !DIExpression()), !dbg !1428
  store i8 1, i8* %1, align 1, !dbg !1429, !tbaa !1430
  %4 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1432
  store i8 0, i8* %4, align 1, !dbg !1433, !tbaa !1434
  %5 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1435
  store i8 2, i8* %2, align 1, !dbg !1436, !tbaa !693
  store i8 7, i8* %5, align 1, !dbg !1437, !tbaa !1430
  %6 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1438
  store i8 6, i8* %6, align 1, !dbg !1439, !tbaa !1434
  %7 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !1440
  %8 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1441, !tbaa !551
  %9 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 7, !dbg !1442
  %10 = load i8, i8* %9, align 1, !dbg !1442, !tbaa !1443
  call void @llvm.dbg.value(metadata i8 %10, metadata !503, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1428
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* getelementptr inbounds ({ %struct._avdtp_media_codec_capability, i8, i8, i8, i8 }, { %struct._avdtp_media_codec_capability, i8, i8, i8, i8 }* @a2dp_sbc, i32 0, i32 0, i32 0), i32 5, i32 1, i1 false), !dbg !1444
  %11 = getelementptr inbounds i8, i8* %1, i32 9, !dbg !1444
  store i8 %10, i8* %11, align 1, !dbg !1444
  %12 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1445, !tbaa !693
  %13 = icmp slt i8 %12, 0, !dbg !1445
  br i1 %13, label %14, label %17, !dbg !1447

; <label>:14:                                     ; preds = %3
  %15 = zext i8 %10 to i32, !dbg !1448
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %15) #10, !dbg !1448
  br label %17, !dbg !1448

; <label>:17:                                     ; preds = %14, %3
  %18 = getelementptr inbounds i8, i8* %1, i32 10, !dbg !1450
  %19 = load i8, i8* %2, align 1, !dbg !1451, !tbaa !693
  %20 = add i8 %19, 8, !dbg !1451
  store i8 %20, i8* %2, align 1, !dbg !1451, !tbaa !693
  store i8 4, i8* %18, align 1, !dbg !1452, !tbaa !1430
  %21 = getelementptr inbounds i8, i8* %1, i32 11, !dbg !1453
  store i8 2, i8* %21, align 1, !dbg !1454, !tbaa !1434
  %22 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !1455
  %23 = bitcast i8* %22 to i16*, !dbg !1456
  store i16 2, i16* %23, align 1, !dbg !1456
  %24 = load i8, i8* %2, align 1, !dbg !1457, !tbaa !693
  %25 = add i8 %24, 4, !dbg !1457
  store i8 %25, i8* %2, align 1, !dbg !1457, !tbaa !693
  ret i8 1, !dbg !1458
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_set_configure_ind_sbc(%struct._avdtp_local_sep* nocapture readonly, i8* nocapture readonly, i8 zeroext, i8*) #0 section ".bt_stack_code" !dbg !1459 {
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1461, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8* %1, metadata !1462, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %2, metadata !1463, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %3, metadata !1464, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8 0, metadata !1469, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i16 0, metadata !1473, metadata !DIExpression()), !dbg !1479
  %5 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1480
  %6 = bitcast %struct.avdtp** %5 to i8**, !dbg !1480
  %7 = load i8*, i8** %6, align 4, !dbg !1480, !tbaa !1481
  %8 = getelementptr inbounds i8, i8* %7, i32 -8, !dbg !1480
  %9 = bitcast i8* %8 to %struct.a2dp_conn*, !dbg !1480
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %9, metadata !1471, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 0, metadata !1468, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %1, metadata !1462, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i8 0, metadata !1469, metadata !DIExpression()), !dbg !1478
  %10 = zext i8 %2 to i32, !dbg !1486
  %11 = icmp eq i8 %2, 0, !dbg !1490
  br i1 %11, label %174, label %12, !dbg !1491

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %7, i32 98
  %14 = bitcast i8* %13 to i16*
  %15 = icmp eq i8* %3, null
  %16 = getelementptr inbounds i8, i8* %7, i32 117
  %17 = getelementptr inbounds i8, i8* %3, i32 1
  %18 = getelementptr inbounds i8, i8* %3, i32 2
  %19 = bitcast i8* %18 to %struct._sbc_codec_cap*
  %20 = getelementptr inbounds i8, i8* %3, i32 4
  %21 = bitcast i8* %20 to i16*
  %22 = getelementptr inbounds i8, i8* %7, i32 100
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 2, i32 0
  %25 = getelementptr inbounds i8, i8* %3, i32 6
  %26 = getelementptr inbounds i8, i8* %3, i32 7
  br label %27, !dbg !1491

; <label>:27:                                     ; preds = %163, %12
  %28 = phi i8* [ %1, %12 ], [ %166, %163 ]
  %29 = phi i8 [ 0, %12 ], [ %164, %163 ]
  %30 = phi i32 [ 0, %12 ], [ %168, %163 ]
  %31 = load i8, i8* %28, align 1, !dbg !1493, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %31, metadata !1466, metadata !DIExpression()), !dbg !1495
  %32 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1496
  %33 = load i8, i8* %32, align 1, !dbg !1496, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %33, metadata !1467, metadata !DIExpression()), !dbg !1497
  %34 = add nsw i32 %30, 2, !dbg !1498
  %35 = getelementptr inbounds i8, i8* %28, i32 2, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %35, metadata !1462, metadata !DIExpression()), !dbg !1475
  switch i8 %31, label %163 [
    i8 4, label %36
    i8 1, label %56
    i8 7, label %58
  ], !dbg !1500

; <label>:36:                                     ; preds = %27
  %37 = icmp ult i8 %33, 2, !dbg !1501
  br i1 %37, label %172, label %38, !dbg !1505

; <label>:38:                                     ; preds = %36
  %39 = load i8, i8* %35, align 1, !dbg !1506, !tbaa !693
  %40 = zext i8 %39 to i16, !dbg !1506
  %41 = getelementptr inbounds i8, i8* %28, i32 3, !dbg !1507
  %42 = load i8, i8* %41, align 1, !dbg !1507, !tbaa !693
  %43 = zext i8 %42 to i16, !dbg !1507
  %44 = shl nuw i16 %43, 8, !dbg !1508
  %45 = or i16 %44, %40, !dbg !1509
  call void @llvm.dbg.value(metadata i16 %45, metadata !1473, metadata !DIExpression()), !dbg !1479
  %46 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1510, !tbaa !693
  %47 = icmp slt i8 %46, 0, !dbg !1510
  br i1 %47, label %48, label %55, !dbg !1512

; <label>:48:                                     ; preds = %38
  %49 = zext i16 %45 to i32, !dbg !1513
  call void @llvm.dbg.value(metadata i16 %45, metadata !1515, metadata !DIExpression()), !dbg !1522
  %50 = icmp eq i16 %45, 2, !dbg !1524
  %51 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), !dbg !1524
  %52 = icmp eq i16 %45, 1, !dbg !1524
  %53 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %51, !dbg !1524
  %54 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %49, i8* %53) #10, !dbg !1525
  br label %55, !dbg !1513

; <label>:55:                                     ; preds = %48, %38
  store i16 %45, i16* %14, align 2, !dbg !1527, !tbaa !1528
  br label %163, !dbg !1529

; <label>:56:                                     ; preds = %27
  %57 = icmp eq i8 %33, 0, !dbg !1530
  br i1 %57, label %163, label %172, !dbg !1534

; <label>:58:                                     ; preds = %27
  %59 = zext i8 %33 to i32, !dbg !1535
  %60 = add nuw nsw i32 %59, 2, !dbg !1539
  %61 = icmp ult i32 %10, %60, !dbg !1540
  br i1 %61, label %172, label %62, !dbg !1541

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds i8, i8* %28, i32 3, !dbg !1542
  %64 = load i8, i8* %63, align 1, !dbg !1542, !tbaa !1544
  %65 = icmp eq i8 %64, 0, !dbg !1545
  br i1 %65, label %66, label %163, !dbg !1546

; <label>:66:                                     ; preds = %62
  br i1 %15, label %125, label %67, !dbg !1547

; <label>:67:                                     ; preds = %66
  store i8 7, i8* %3, align 1, !dbg !1549, !tbaa !693
  store i8 6, i8* %17, align 1, !dbg !1552, !tbaa !693
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %35, i32 6, i32 1, i1 false), !dbg !1553
  call void @llvm.dbg.value(metadata %struct._sbc_codec_cap* %19, metadata !1470, metadata !DIExpression()), !dbg !1554
  %68 = load i16, i16* %21, align 1, !dbg !1555
  %69 = and i16 %68, 16, !dbg !1557
  %70 = icmp eq i16 %69, 0, !dbg !1557
  br i1 %70, label %80, label %71, !dbg !1558

; <label>:71:                                     ; preds = %67
  %72 = load i16, i16* %24, align 4, !dbg !1559
  %73 = and i16 %72, 2048, !dbg !1559
  %74 = icmp eq i16 %73, 0, !dbg !1562
  %75 = and i16 %68, -241
  br i1 %74, label %78, label %76, !dbg !1563

; <label>:76:                                     ; preds = %71
  %77 = or i16 %75, 16, !dbg !1564
  br label %83, !dbg !1566

; <label>:78:                                     ; preds = %71
  %79 = or i16 %75, 32, !dbg !1567
  br label %83

; <label>:80:                                     ; preds = %67
  %81 = and i16 %68, -241, !dbg !1569
  %82 = or i16 %81, 32, !dbg !1569
  br label %83

; <label>:83:                                     ; preds = %80, %78, %76
  %84 = phi i16 [ %77, %76 ], [ %79, %78 ], [ %82, %80 ]
  %85 = phi i32 [ 48000, %76 ], [ 44100, %78 ], [ 44100, %80 ]
  store i16 %84, i16* %21, align 1
  store i32 %85, i32* %23, align 4, !tbaa !1571
  %86 = load i16, i16* %24, align 4, !dbg !1572
  %87 = and i16 %86, 2048, !dbg !1572
  %88 = icmp eq i16 %87, 0, !dbg !1574
  %89 = load i16, i16* %21, align 1
  br i1 %88, label %104, label %90, !dbg !1575

; <label>:90:                                     ; preds = %83
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1576
  %91 = and i16 %89, 15
  %92 = zext i16 %91 to i32
  br label %95, !dbg !1577

; <label>:93:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i32 %100, metadata !1465, metadata !DIExpression()), !dbg !1576
  %94 = icmp ult i32 %100, 4, !dbg !1581
  br i1 %94, label %95, label %108, !dbg !1577, !llvm.loop !1584

; <label>:95:                                     ; preds = %93, %90
  %96 = phi i32 [ 0, %90 ], [ %100, %93 ]
  %97 = shl i32 1, %96, !dbg !1587
  %98 = and i32 %92, %97, !dbg !1590
  %99 = icmp eq i32 %98, 0, !dbg !1590
  %100 = add nuw nsw i32 %96, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %100, metadata !1465, metadata !DIExpression()), !dbg !1576
  br i1 %99, label %93, label %101, !dbg !1593

; <label>:101:                                    ; preds = %95
  %102 = trunc i32 %97 to i16, !dbg !1594
  %103 = and i16 %102, 15, !dbg !1596
  br label %104, !dbg !1597

; <label>:104:                                    ; preds = %101, %83
  %105 = phi i16 [ %103, %101 ], [ 1, %83 ]
  %106 = and i16 %89, -16
  %107 = or i16 %106, %105
  store i16 %107, i16* %21, align 1
  br label %109, !dbg !1598

; <label>:108:                                    ; preds = %93
  br label %109, !dbg !1599

; <label>:109:                                    ; preds = %108, %104
  %110 = phi i16 [ %107, %104 ], [ %89, %108 ], !dbg !1598
  %111 = and i16 %110, 255, !dbg !1599
  %112 = or i16 %111, 5376, !dbg !1599
  store i16 %112, i16* %21, align 1, !dbg !1599
  store i8 2, i8* %25, align 1, !dbg !1600, !tbaa !1601
  %113 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1603, !tbaa !551
  %114 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %113, i32 0, i32 7, !dbg !1605
  %115 = load i8, i8* %114, align 1, !dbg !1605, !tbaa !1443
  %116 = load i8, i8* %26, align 1, !dbg !1606, !tbaa !1607
  %117 = zext i8 %116 to i32, !dbg !1608
  %118 = icmp ugt i8 %115, %116, !dbg !1609
  br i1 %118, label %120, label %119, !dbg !1610

; <label>:119:                                    ; preds = %109
  store i8 %115, i8* %26, align 1, !dbg !1611, !tbaa !1607
  br label %144, !dbg !1613

; <label>:120:                                    ; preds = %109
  %121 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1614, !tbaa !693
  %122 = icmp slt i8 %121, 0, !dbg !1614
  br i1 %122, label %123, label %144, !dbg !1617

; <label>:123:                                    ; preds = %120
  %124 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %117) #10, !dbg !1618
  br label %144, !dbg !1618

; <label>:125:                                    ; preds = %66
  %126 = bitcast i8* %35 to %struct._sbc_codec_cap*, !dbg !1620
  call void @llvm.dbg.value(metadata %struct._sbc_codec_cap* %126, metadata !1470, metadata !DIExpression()), !dbg !1554
  %127 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1622, !tbaa !693
  %128 = icmp slt i8 %127, 0, !dbg !1622
  br i1 %128, label %129, label %144, !dbg !1624

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %28, i32 4, !dbg !1625
  %131 = bitcast i8* %130 to i16*, !dbg !1625
  %132 = load i16, i16* %131, align 1, !dbg !1625
  %133 = lshr i16 %132, 4, !dbg !1625
  %134 = and i16 %133, 15, !dbg !1625
  %135 = zext i16 %134 to i32, !dbg !1625
  %136 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %135) #10, !dbg !1625
  %137 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1627, !tbaa !693
  %138 = icmp slt i8 %137, 0, !dbg !1627
  br i1 %138, label %139, label %144, !dbg !1629

; <label>:139:                                    ; preds = %129
  %140 = getelementptr inbounds i8, i8* %28, i32 7, !dbg !1630
  %141 = load i8, i8* %140, align 1, !dbg !1630, !tbaa !1607
  %142 = zext i8 %141 to i32, !dbg !1630
  %143 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 %142) #10, !dbg !1630
  br label %144, !dbg !1630

; <label>:144:                                    ; preds = %139, %129, %125, %123, %120, %119
  %145 = phi %struct._sbc_codec_cap* [ %19, %119 ], [ %19, %123 ], [ %19, %120 ], [ %126, %139 ], [ %126, %129 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata %struct._sbc_codec_cap* %145, metadata !1470, metadata !DIExpression()), !dbg !1554
  store i8 0, i8* %16, align 1, !dbg !1632, !tbaa !1633
  %146 = getelementptr inbounds %struct._sbc_codec_cap, %struct._sbc_codec_cap* %145, i32 0, i32 1, !dbg !1634
  %147 = load i16, i16* %146, align 1, !dbg !1634
  %148 = trunc i16 %147 to i8, !dbg !1634
  %149 = and i8 %148, 15, !dbg !1634
  %150 = lshr i16 %147, 12, !dbg !1635
  %151 = trunc i16 %150 to i8, !dbg !1635
  %152 = lshr i16 %147, 10, !dbg !1636
  %153 = trunc i16 %152 to i8, !dbg !1636
  %154 = and i8 %153, 3, !dbg !1636
  %155 = lshr i16 %147, 8, !dbg !1637
  %156 = trunc i16 %155 to i8, !dbg !1637
  %157 = and i8 %156, 3, !dbg !1637
  %158 = lshr i16 %147, 4, !dbg !1638
  %159 = trunc i16 %158 to i8, !dbg !1638
  %160 = and i8 %159, 15, !dbg !1638
  %161 = getelementptr inbounds %struct._sbc_codec_cap, %struct._sbc_codec_cap* %145, i32 0, i32 3, !dbg !1639
  %162 = load i8, i8* %161, align 1, !dbg !1639, !tbaa !1607
  tail call void @sbc_param_init(%struct.a2dp_conn* %9, i8 zeroext %149, i8 zeroext %151, i8 zeroext %154, i8 zeroext %157, i8 zeroext %160, i8 zeroext %162) #11, !dbg !1640
  call void @llvm.dbg.value(metadata i8 1, metadata !1469, metadata !DIExpression()), !dbg !1478
  br label %163, !dbg !1641

; <label>:163:                                    ; preds = %144, %62, %56, %55, %27
  %164 = phi i8 [ %29, %56 ], [ 1, %144 ], [ %29, %62 ], [ %29, %27 ], [ %29, %55 ]
  call void @llvm.dbg.value(metadata i8 %164, metadata !1469, metadata !DIExpression()), !dbg !1478
  %165 = zext i8 %33 to i32, !dbg !1642
  %166 = getelementptr inbounds i8, i8* %35, i32 %165, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %166, metadata !1462, metadata !DIExpression()), !dbg !1475
  %167 = and i32 %34, 255, !dbg !1644
  %168 = add nuw nsw i32 %165, %167, !dbg !1644
  call void @llvm.dbg.value(metadata i8* %166, metadata !1462, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i8 %164, metadata !1469, metadata !DIExpression()), !dbg !1478
  %169 = add nsw i32 %34, %165, !dbg !1645
  %170 = and i32 %169, 255, !dbg !1645
  %171 = icmp ult i32 %170, %10, !dbg !1490
  br i1 %171, label %27, label %172, !dbg !1491, !llvm.loop !1646

; <label>:172:                                    ; preds = %163, %58, %56, %36
  %173 = phi i8 [ %164, %163 ], [ 0, %58 ], [ 0, %56 ], [ 0, %36 ]
  br label %174, !dbg !1649

; <label>:174:                                    ; preds = %172, %4
  %175 = phi i8 [ 0, %4 ], [ %173, %172 ]
  ret i8 %175, !dbg !1649
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_open_ind(%struct._avdtp_local_sep* nocapture readonly, %struct._avdtp_stream* nocapture readonly, i8 zeroext) #0 section ".bt_stack_code" !dbg !1650 {
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1652, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata %struct._avdtp_stream* %1, metadata !1653, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %2, metadata !1654, metadata !DIExpression()), !dbg !1659
  %4 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1660
  %5 = bitcast %struct.avdtp** %4 to i8**, !dbg !1660
  %6 = load i8*, i8** %5, align 4, !dbg !1660, !tbaa !1481
  %7 = getelementptr inbounds i8, i8* %6, i32 -8, !dbg !1660
  %8 = getelementptr inbounds %struct._avdtp_stream, %struct._avdtp_stream* %1, i32 0, i32 0, !dbg !1661
  %9 = load i8, i8* %8, align 1, !dbg !1661
  %10 = and i8 %9, 16, !dbg !1661
  %11 = icmp eq i8 %10, 0, !dbg !1663
  br i1 %11, label %22, label %12, !dbg !1664

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %6, i32 -2, !dbg !1665
  %14 = load i8, i8* %13, align 2, !dbg !1667
  %15 = and i8 %14, 30, !dbg !1667
  %16 = icmp eq i8 %15, 2, !dbg !1668
  br i1 %16, label %17, label %22, !dbg !1669

; <label>:17:                                     ; preds = %12
  %18 = and i8 %14, -31, !dbg !1671
  store i8 %18, i8* %13, align 2, !dbg !1671
  %19 = icmp eq i8 %2, 0, !dbg !1673
  br i1 %19, label %22, label %20, !dbg !1675

; <label>:20:                                     ; preds = %17
  %21 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__a2dp_packet_handler, i8* nonnull %7, i16 zeroext 25, i16 zeroext -1) #11, !dbg !1676
  br label %22, !dbg !1678

; <label>:22:                                     ; preds = %20, %17, %12, %3
  ret i8 1, !dbg !1679
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_start_ind(%struct._avdtp_local_sep* nocapture readonly, %struct._avdtp_stream* nocapture readnone) #0 section ".bt_stack_code" !dbg !1680 {
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1682, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata %struct._avdtp_stream* %1, metadata !1683, metadata !DIExpression()), !dbg !1687
  %3 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1688
  %4 = bitcast %struct.avdtp** %3 to i8**, !dbg !1688
  %5 = load i8*, i8** %4, align 4, !dbg !1688, !tbaa !1481
  %6 = getelementptr inbounds i8, i8* %5, i32 -8, !dbg !1688
  %7 = bitcast i8* %6 to %struct.a2dp_conn*, !dbg !1688
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %7, metadata !1685, metadata !DIExpression()), !dbg !1689
  %8 = getelementptr inbounds i8, i8* %5, i32 94, !dbg !1690
  %9 = bitcast i8* %8 to i16*, !dbg !1690
  %10 = load i16, i16* %9, align 2, !dbg !1690
  %11 = and i16 %10, 12288, !dbg !1690
  %12 = icmp eq i16 %11, 4096, !dbg !1692
  br i1 %12, label %13, label %14, !dbg !1693

; <label>:13:                                     ; preds = %2
  tail call void @__sink_media_close(%struct.a2dp_conn* %7) #11, !dbg !1694
  br label %14, !dbg !1696

; <label>:14:                                     ; preds = %13, %2
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1684, metadata !DIExpression()), !dbg !1697
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %15, label %34, !dbg !1698

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1701

; <label>:16:                                     ; preds = %30, %15
  %17 = phi %struct.a2dp_event_handler* [ %31, %30 ], [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %15 ]
  %18 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %17, i32 0, i32 0, !dbg !1701
  %19 = load i32, i32* %18, align 4, !dbg !1701, !tbaa !963
  %20 = load i16, i16* %9, align 2, !dbg !1705
  %21 = lshr i16 %20, 12, !dbg !1705
  %22 = and i16 %21, 3, !dbg !1705
  %23 = zext i16 %22 to i32, !dbg !1705
  %24 = icmp eq i32 %19, %23, !dbg !1706
  br i1 %24, label %25, label %30, !dbg !1707

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %17, i32 0, i32 4, !dbg !1708
  %27 = load void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*, i8*)** %26, align 4, !dbg !1708, !tbaa !1711
  %28 = icmp eq void (%struct.a2dp_conn*, i8*)* %27, null, !dbg !1712
  br i1 %28, label %30, label %29, !dbg !1713

; <label>:29:                                     ; preds = %25
  tail call void %27(%struct.a2dp_conn* nonnull %7, i8* nonnull %6) #11, !dbg !1714
  br label %30, !dbg !1716

; <label>:30:                                     ; preds = %29, %25, %16
  %31 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %17, i32 1, !dbg !1717
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %31, metadata !1684, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %31, metadata !1684, metadata !DIExpression()), !dbg !1697
  %32 = icmp ult %struct.a2dp_event_handler* %31, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !1719
  br i1 %32, label %16, label %33, !dbg !1698, !llvm.loop !1721

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !1724

; <label>:34:                                     ; preds = %33, %14
  ret i8 1, !dbg !1724
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_suspend_ind(%struct._avdtp_local_sep* nocapture readonly, %struct._avdtp_stream* nocapture readnone) #0 section ".bt_stack_code" !dbg !1725 {
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1727, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata %struct._avdtp_stream* %1, metadata !1728, metadata !DIExpression()), !dbg !1732
  %3 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1733
  %4 = bitcast %struct.avdtp** %3 to i8**, !dbg !1733
  %5 = load i8*, i8** %4, align 4, !dbg !1733, !tbaa !1481
  %6 = getelementptr inbounds i8, i8* %5, i32 -8, !dbg !1733
  %7 = bitcast i8* %6 to %struct.a2dp_conn*, !dbg !1733
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %7, metadata !1730, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1729, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1729, metadata !DIExpression()), !dbg !1735
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %8, label %29, !dbg !1736

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %5, i32 94
  %10 = bitcast i8* %9 to i16*
  br label %11, !dbg !1736

; <label>:11:                                     ; preds = %25, %8
  %12 = phi %struct.a2dp_event_handler* [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %8 ], [ %26, %25 ]
  %13 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %12, i32 0, i32 0, !dbg !1739
  %14 = load i32, i32* %13, align 4, !dbg !1739, !tbaa !963
  %15 = load i16, i16* %10, align 2, !dbg !1743
  %16 = lshr i16 %15, 12, !dbg !1743
  %17 = and i16 %16, 3, !dbg !1743
  %18 = zext i16 %17 to i32, !dbg !1743
  %19 = icmp eq i32 %14, %18, !dbg !1744
  br i1 %19, label %20, label %25, !dbg !1745

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %12, i32 0, i32 5, !dbg !1746
  %22 = load void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*, i8*)** %21, align 4, !dbg !1746, !tbaa !1749
  %23 = icmp eq void (%struct.a2dp_conn*, i8*)* %22, null, !dbg !1750
  br i1 %23, label %25, label %24, !dbg !1751

; <label>:24:                                     ; preds = %20
  tail call void %22(%struct.a2dp_conn* nonnull %7, i8* nonnull %6) #11, !dbg !1752
  br label %25, !dbg !1754

; <label>:25:                                     ; preds = %24, %20, %11
  %26 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %12, i32 1, !dbg !1755
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %26, metadata !1729, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %26, metadata !1729, metadata !DIExpression()), !dbg !1735
  %27 = icmp ult %struct.a2dp_event_handler* %26, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !1757
  br i1 %27, label %11, label %28, !dbg !1736, !llvm.loop !1759

; <label>:28:                                     ; preds = %25
  br label %29, !dbg !1762

; <label>:29:                                     ; preds = %28, %2
  ret i8 1, !dbg !1762
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_close_ind(%struct._avdtp_local_sep* nocapture readonly, %struct._avdtp_stream* nocapture readnone, i8* nocapture readnone) #0 section ".bt_stack_code" !dbg !1763 {
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1765, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata %struct._avdtp_stream* %1, metadata !1766, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %2, metadata !1767, metadata !DIExpression()), !dbg !1772
  %4 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1773
  %5 = bitcast %struct.avdtp** %4 to i8**, !dbg !1773
  %6 = load i8*, i8** %5, align 4, !dbg !1773, !tbaa !1481
  %7 = getelementptr inbounds i8, i8* %6, i32 -8, !dbg !1773
  %8 = bitcast i8* %7 to %struct.a2dp_conn*, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %8, metadata !1769, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1768, metadata !DIExpression()), !dbg !1775
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %9, label %30, !dbg !1776

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i8, i8* %6, i32 94
  %11 = bitcast i8* %10 to i16*
  br label %12, !dbg !1776

; <label>:12:                                     ; preds = %26, %9
  %13 = phi %struct.a2dp_event_handler* [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %9 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %13, i32 0, i32 0, !dbg !1779
  %15 = load i32, i32* %14, align 4, !dbg !1779, !tbaa !963
  %16 = load i16, i16* %11, align 2, !dbg !1784
  %17 = lshr i16 %16, 12, !dbg !1784
  %18 = and i16 %17, 3, !dbg !1784
  %19 = zext i16 %18 to i32, !dbg !1784
  %20 = icmp eq i32 %15, %19, !dbg !1785
  br i1 %20, label %21, label %26, !dbg !1786

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %13, i32 0, i32 5, !dbg !1788
  %23 = load void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*, i8*)** %22, align 4, !dbg !1788, !tbaa !1749
  %24 = icmp eq void (%struct.a2dp_conn*, i8*)* %23, null, !dbg !1791
  br i1 %24, label %26, label %25, !dbg !1792

; <label>:25:                                     ; preds = %21
  tail call void %23(%struct.a2dp_conn* nonnull %8, i8* nonnull %7) #11, !dbg !1793
  br label %26, !dbg !1795

; <label>:26:                                     ; preds = %25, %21, %12
  %27 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %13, i32 1, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %27, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %27, metadata !1768, metadata !DIExpression()), !dbg !1775
  %28 = icmp ult %struct.a2dp_event_handler* %27, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !1798
  br i1 %28, label %12, label %29, !dbg !1776, !llvm.loop !1800

; <label>:29:                                     ; preds = %26
  br label %30, !dbg !1803

; <label>:30:                                     ; preds = %29, %3
  ret i8 1, !dbg !1803
}

; Function Attrs: nounwind optsize
define internal void @a2dp_abort(%struct._avdtp_local_sep* nocapture readonly) #0 section ".bt_stack_code" !dbg !1804 {
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1806, metadata !DIExpression()), !dbg !1808
  %2 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1809
  %3 = bitcast %struct.avdtp** %2 to i8**, !dbg !1809
  %4 = load i8*, i8** %3, align 4, !dbg !1809, !tbaa !1481
  %5 = getelementptr inbounds i8, i8* %4, i32 -8, !dbg !1809
  %6 = bitcast i8* %5 to %struct.a2dp_conn*, !dbg !1809
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %6, metadata !1807, metadata !DIExpression()), !dbg !1810
  tail call fastcc void @__media_close(%struct.a2dp_conn* %6) #10, !dbg !1811
  %7 = tail call i32 @a2dp_send_cmd(i8* %5, i32 51) #10, !dbg !1812
  store i8 1, i8* @reconnect_after_disconnect, align 1, !dbg !1813, !tbaa !693
  ret void, !dbg !1814
}

; Function Attrs: optsize
declare void @sbc_param_init(%struct.a2dp_conn*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc void @__media_close(%struct.a2dp_conn*) unnamed_addr #0 section ".bt_stack_code" !dbg !1815 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !1818, metadata !DIExpression()), !dbg !1820
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %2, label %23, !dbg !1821

; <label>:2:                                      ; preds = %1
  %3 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 2, i32 1, i32 8
  br label %4, !dbg !1821

; <label>:4:                                      ; preds = %19, %2
  %5 = phi %struct.a2dp_event_handler* [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %2 ], [ %20, %19 ]
  %6 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %5, i32 0, i32 0, !dbg !1824
  %7 = load i32, i32* %6, align 4, !dbg !1824, !tbaa !963
  %8 = load i16, i16* %3, align 2, !dbg !1828
  %9 = lshr i16 %8, 12, !dbg !1828
  %10 = and i16 %9, 3, !dbg !1828
  %11 = zext i16 %10 to i32, !dbg !1828
  %12 = icmp eq i32 %7, %11, !dbg !1829
  br i1 %12, label %13, label %19, !dbg !1830

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %5, i32 0, i32 1, !dbg !1831
  %15 = load i32 (%struct.a2dp_conn*, i32, i8)*, i32 (%struct.a2dp_conn*, i32, i8)** %14, align 4, !dbg !1831, !tbaa !1834
  %16 = icmp eq i32 (%struct.a2dp_conn*, i32, i8)* %15, null, !dbg !1835
  br i1 %16, label %19, label %17, !dbg !1836

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 %15(%struct.a2dp_conn* nonnull %0, i32 -1, i8 zeroext 1) #11, !dbg !1837
  br label %19, !dbg !1839

; <label>:19:                                     ; preds = %17, %13, %4
  %20 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %5, i32 1, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %20, metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %20, metadata !1818, metadata !DIExpression()), !dbg !1820
  %21 = icmp ult %struct.a2dp_event_handler* %20, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !1842
  br i1 %21, label %4, label %22, !dbg !1821, !llvm.loop !1844

; <label>:22:                                     ; preds = %19
  br label %23, !dbg !1847

; <label>:23:                                     ; preds = %22, %1
  ret void, !dbg !1847
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_getcap_ind_mpeg24(i8 zeroext, i8* nocapture, i8* nocapture) #0 section ".bt_stack_code" !dbg !1848 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1850, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %1, metadata !1851, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %2, metadata !1852, metadata !DIExpression()), !dbg !1856
  store i8 1, i8* %1, align 1, !dbg !1857, !tbaa !1430
  %4 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1858
  store i8 0, i8* %4, align 1, !dbg !1859, !tbaa !1434
  %5 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1860
  store i8 2, i8* %2, align 1, !dbg !1861, !tbaa !693
  store i8 7, i8* %5, align 1, !dbg !1862, !tbaa !1430
  %6 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1863
  store i8 8, i8* %6, align 1, !dbg !1864, !tbaa !1434
  %7 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !1865
  %8 = bitcast i8* %7 to i64*, !dbg !1866
  %9 = load i64, i64* bitcast (%struct._mpeg24_codec_cap* @a2dp_mpeg_acc to i64*), align 1, !dbg !1866
  store i64 %9, i64* %8, align 1, !dbg !1866
  %10 = load i8, i8* %2, align 1, !dbg !1867, !tbaa !693
  %11 = add i8 %10, 10, !dbg !1867
  store i8 %11, i8* %2, align 1, !dbg !1867, !tbaa !693
  ret i8 1, !dbg !1868
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @a2dp_set_configure_ind_mpeg24(%struct._avdtp_local_sep* nocapture readonly, i8* nocapture readonly, i8 zeroext, i8*) #0 section ".bt_stack_code" !dbg !1869 {
  %5 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %0, metadata !1871, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %1, metadata !1872, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %2, metadata !1873, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8* %3, metadata !1874, metadata !DIExpression()), !dbg !1889
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0, !dbg !1890
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %6) #12, !dbg !1890
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !1882, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 0, metadata !1878, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* %1, metadata !1872, metadata !DIExpression()), !dbg !1887
  %7 = zext i8 %2 to i32, !dbg !1893
  %8 = icmp eq i8 %2, 0, !dbg !1897
  br i1 %8, label %124, label %9, !dbg !1898

; <label>:9:                                      ; preds = %4
  br label %10, !dbg !1900

; <label>:10:                                     ; preds = %115, %9
  %11 = phi i8* [ %117, %115 ], [ %1, %9 ]
  %12 = phi i32 [ %119, %115 ], [ 0, %9 ]
  %13 = load i8, i8* %11, align 1, !dbg !1900, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %13, metadata !1876, metadata !DIExpression()), !dbg !1902
  %14 = getelementptr inbounds i8, i8* %11, i32 1, !dbg !1903
  %15 = load i8, i8* %14, align 1, !dbg !1903, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %15, metadata !1877, metadata !DIExpression()), !dbg !1904
  %16 = add nsw i32 %12, 2, !dbg !1905
  %17 = getelementptr inbounds i8, i8* %11, i32 2, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %17, metadata !1872, metadata !DIExpression()), !dbg !1887
  switch i8 %13, label %115 [
    i8 1, label %18
    i8 7, label %20
  ], !dbg !1907

; <label>:18:                                     ; preds = %10
  %19 = icmp eq i8 %15, 0, !dbg !1908
  br i1 %19, label %115, label %123, !dbg !1912

; <label>:20:                                     ; preds = %10
  %21 = zext i8 %15 to i32, !dbg !1913
  %22 = add nuw nsw i32 %21, 2, !dbg !1917
  %23 = icmp ult i32 %7, %22, !dbg !1918
  br i1 %23, label %123, label %24, !dbg !1919

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %11, i32 3, !dbg !1920
  %26 = load i8, i8* %25, align 1, !dbg !1920, !tbaa !1544
  %27 = icmp eq i8 %26, 2, !dbg !1922
  br i1 %27, label %28, label %115, !dbg !1923

; <label>:28:                                     ; preds = %24
  %29 = icmp eq i8* %3, null, !dbg !1924
  br i1 %29, label %74, label %30, !dbg !1927

; <label>:30:                                     ; preds = %28
  store i8 7, i8* %3, align 1, !dbg !1928, !tbaa !693
  %31 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1930
  store i8 8, i8* %31, align 1, !dbg !1931, !tbaa !693
  %32 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !1932
  %33 = bitcast i8* %17 to i64*, !dbg !1933
  %34 = bitcast i8* %32 to i64*, !dbg !1933
  %35 = load i64, i64* %33, align 1, !dbg !1933
  store i64 %35, i64* %34, align 1, !dbg !1933
  %36 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1934
  store i8 -128, i8* %36, align 1, !dbg !1935, !tbaa !1936
  %37 = getelementptr inbounds i8, i8* %3, i32 6, !dbg !1937
  %38 = lshr i64 %35, 32, !dbg !1937
  %39 = trunc i64 %38 to i8, !dbg !1937
  %40 = icmp slt i8 %39, 0, !dbg !1939
  %41 = getelementptr inbounds i8, i8* %3, i32 5
  br i1 %40, label %42, label %45, !dbg !1940

; <label>:42:                                     ; preds = %30
  store i8 0, i8* %41, align 1, !dbg !1941, !tbaa !1943
  %43 = and i8 %39, 15, !dbg !1944
  %44 = or i8 %43, -128, !dbg !1944
  br label %47, !dbg !1945

; <label>:45:                                     ; preds = %30
  store i8 1, i8* %41, align 1, !dbg !1946, !tbaa !1943
  %46 = and i8 %39, 15, !dbg !1948
  br label %47

; <label>:47:                                     ; preds = %45, %42
  %48 = phi i8 [ %46, %45 ], [ %44, %42 ]
  store i8 %48, i8* %37, align 1, !dbg !1944
  call void @llvm.dbg.value(metadata i32 0, metadata !1875, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 0, metadata !1875, metadata !DIExpression()), !dbg !1949
  %49 = lshr i8 %48, 2
  %50 = and i8 %49, 3
  %51 = zext i8 %50 to i32
  br label %54, !dbg !1950

; <label>:52:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i32 %59, metadata !1875, metadata !DIExpression()), !dbg !1949
  %53 = icmp ult i32 %59, 4, !dbg !1953
  br i1 %53, label %54, label %66, !dbg !1950, !llvm.loop !1956

; <label>:54:                                     ; preds = %52, %47
  %55 = phi i32 [ 0, %47 ], [ %59, %52 ]
  %56 = shl i32 1, %55, !dbg !1959
  %57 = and i32 %51, %56, !dbg !1962
  %58 = icmp eq i32 %57, 0, !dbg !1962
  %59 = add nuw nsw i32 %55, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %59, metadata !1875, metadata !DIExpression()), !dbg !1949
  br i1 %58, label %52, label %60, !dbg !1965

; <label>:60:                                     ; preds = %54
  %61 = trunc i32 %56 to i8, !dbg !1966
  %62 = shl i8 %61, 2, !dbg !1968
  %63 = and i8 %62, 12, !dbg !1968
  %64 = and i8 %48, -13, !dbg !1968
  %65 = or i8 %64, %63, !dbg !1968
  store i8 %65, i8* %37, align 1, !dbg !1968
  br label %67, !dbg !1969

; <label>:66:                                     ; preds = %52
  br label %67, !dbg !1970

; <label>:67:                                     ; preds = %66, %60
  %68 = load i8, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 6), align 1, !dbg !1970, !tbaa !540
  %69 = getelementptr inbounds i8, i8* %3, i32 9, !dbg !1971
  store i8 %68, i8* %69, align 1, !dbg !1972, !tbaa !540
  %70 = load i8, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 4), align 1, !dbg !1973, !tbaa !521
  %71 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !1974
  store i8 %70, i8* %71, align 1, !dbg !1975, !tbaa !521
  %72 = load i8, i8* getelementptr inbounds (%struct._mpeg24_codec_cap, %struct._mpeg24_codec_cap* @a2dp_mpeg_acc, i32 0, i32 5), align 1, !dbg !1976, !tbaa !537
  %73 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !1977
  store i8 %72, i8* %73, align 1, !dbg !1978, !tbaa !537
  br label %80, !dbg !1979

; <label>:74:                                     ; preds = %28
  store i8 7, i8* %6, align 1, !dbg !1980, !tbaa !693
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 1, !dbg !1982
  store i8 8, i8* %75, align 1, !dbg !1983, !tbaa !693
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 2, !dbg !1984
  %77 = bitcast i8* %17 to i64*, !dbg !1985
  %78 = bitcast i8* %76 to i64*, !dbg !1985
  %79 = load i64, i64* %77, align 1, !dbg !1985
  store i64 %79, i64* %78, align 1, !dbg !1985
  br label %80

; <label>:80:                                     ; preds = %74, %67
  %81 = phi i8* [ %32, %67 ], [ %76, %74 ]
  %82 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %0, i32 0, i32 1, !dbg !1986
  %83 = bitcast %struct.avdtp** %82 to i8**, !dbg !1986
  %84 = load i8*, i8** %83, align 4, !dbg !1986, !tbaa !1481
  %85 = getelementptr inbounds i8, i8* %81, i32 4, !dbg !1987
  %86 = load i8, i8* %85, align 1, !dbg !1987
  %87 = icmp slt i8 %86, 0, !dbg !1989
  %88 = getelementptr inbounds i8, i8* %84, i32 100
  %89 = bitcast i8* %88 to i32*
  %90 = select i1 %87, i32 48000, i32 44100, !dbg !1990
  store i32 %90, i32* %89, align 4, !tbaa !1571
  %91 = load i8, i8* %85, align 1, !dbg !1991
  %92 = lshr i8 %91, 2, !dbg !1991
  %93 = and i8 %92, 1, !dbg !1993
  %94 = getelementptr inbounds i8, i8* %84, i32 116
  %95 = load i8, i8* %94, align 4
  %96 = and i8 %95, -16
  %97 = add nuw nsw i8 %93, 1, !dbg !1994
  %98 = or i8 %97, %96
  store i8 %98, i8* %94, align 4
  %99 = getelementptr inbounds i8, i8* %81, i32 5, !dbg !1995
  %100 = load i8, i8* %99, align 1, !dbg !1995, !tbaa !521
  %101 = and i8 %100, 127, !dbg !1996
  %102 = zext i8 %101 to i32, !dbg !1996
  %103 = shl nuw nsw i32 %102, 16, !dbg !1997
  %104 = getelementptr inbounds i8, i8* %81, i32 6, !dbg !1998
  %105 = load i8, i8* %104, align 1, !dbg !1998, !tbaa !537
  %106 = zext i8 %105 to i32, !dbg !1999
  %107 = shl nuw nsw i32 %106, 8, !dbg !2000
  %108 = or i32 %103, %107, !dbg !2001
  %109 = getelementptr inbounds i8, i8* %81, i32 7, !dbg !2002
  %110 = load i8, i8* %109, align 1, !dbg !2002, !tbaa !540
  %111 = zext i8 %110 to i32, !dbg !2003
  %112 = or i32 %108, %111, !dbg !2004
  %113 = getelementptr inbounds i8, i8* %84, i32 112, !dbg !2005
  %114 = bitcast i8* %113 to i32*, !dbg !2005
  store i32 %112, i32* %114, align 4, !dbg !2006, !tbaa !2007
  br label %124, !dbg !2008

; <label>:115:                                    ; preds = %24, %18, %10
  %116 = zext i8 %15 to i32, !dbg !2009
  %117 = getelementptr inbounds i8, i8* %17, i32 %116, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %117, metadata !1872, metadata !DIExpression()), !dbg !1887
  %118 = and i32 %16, 255, !dbg !2011
  %119 = add nuw nsw i32 %116, %118, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %117, metadata !1872, metadata !DIExpression()), !dbg !1887
  %120 = add nsw i32 %16, %116, !dbg !2012
  %121 = and i32 %120, 255, !dbg !2012
  %122 = icmp ult i32 %121, %7, !dbg !1897
  br i1 %122, label %10, label %123, !dbg !1898, !llvm.loop !2013

; <label>:123:                                    ; preds = %115, %20, %18
  br label %124, !dbg !2016

; <label>:124:                                    ; preds = %123, %80, %4
  %125 = phi i8 [ 1, %80 ], [ 0, %4 ], [ 0, %123 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %6) #12, !dbg !2016
  ret i8 %125, !dbg !2016
}

; Function Attrs: optsize
declare void @avdtp_retry_send(%struct.avdtp*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @a2dp_suspend() #9 section ".bt_stack_code" !dbg !2017 {
  ret i32 0, !dbg !2021
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @a2dp_resume() #9 section ".bt_stack_code" !dbg !2022 {
  ret i32 0, !dbg !2023
}

; Function Attrs: nounwind optsize
define internal i32 @a2dp_release() #0 section ".bt_stack_code" !dbg !2024 {
  %1 = load %struct.a2dp_stack_t*, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !2027, !tbaa !551
  %2 = icmp eq %struct.a2dp_stack_t* %1, null, !dbg !2029
  br i1 %2, label %18, label %3, !dbg !2030

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %5, metadata !2026, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %5, metadata !2026, metadata !DIExpression()), !dbg !2031
  %4 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 1, !dbg !2032
  %5 = getelementptr inbounds %struct.a2dp_stack_t, %struct.a2dp_stack_t* %1, i32 0, i32 0, i32 0, !dbg !2036
  br label %8, !dbg !2037

; <label>:6:                                      ; preds = %8
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %14, metadata !2026, metadata !DIExpression()), !dbg !2031
  %7 = icmp ult %struct.a2dp_conn* %14, %4, !dbg !2032
  br i1 %7, label %8, label %15, !dbg !2037, !llvm.loop !2039

; <label>:8:                                      ; preds = %6, %3
  %9 = phi %struct.a2dp_conn* [ %5, %3 ], [ %14, %6 ]
  %10 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %9, i32 0, i32 1, i32 0, !dbg !2041
  %11 = load i8, i8* %10, align 2, !dbg !2041
  %12 = and i8 %11, 1, !dbg !2041
  %13 = icmp eq i8 %12, 0, !dbg !2044
  %14 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %9, i32 1, !dbg !2045
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %14, metadata !2026, metadata !DIExpression()), !dbg !2031
  br i1 %13, label %6, label %17, !dbg !2047

; <label>:15:                                     ; preds = %6
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !2048
  store %struct.a2dp_stack_t* null, %struct.a2dp_stack_t** @a2dp_stack, align 4, !dbg !2049, !tbaa !551
  br label %18, !dbg !2050

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !2051

; <label>:18:                                     ; preds = %17, %15, %0
  %19 = phi i32 [ 0, %15 ], [ 0, %0 ], [ 1, %17 ]
  ret i32 %19, !dbg !2051
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @avdtp_packet_handler(%struct.avdtp*, i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc void @a2dp_channel_open_success(i16 zeroext, i8*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2052 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !2058, metadata !DIExpression()), !dbg !2064
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !2065
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #12, !dbg !2065
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !2060, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i16 32, metadata !2063, metadata !DIExpression()), !dbg !2067
  %6 = load i8, i8* @profile_debug_enable, align 1, !dbg !2068, !tbaa !693
  %7 = and i8 %6, 1, !dbg !2068
  %8 = icmp eq i8 %7, 0, !dbg !2068
  br i1 %8, label %11, label %9, !dbg !2070

; <label>:9:                                      ; preds = %3
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @str, i32 0, i32 0)), !dbg !2071
  br label %11, !dbg !2071

; <label>:11:                                     ; preds = %9, %3
  %12 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !2073
  call void @bt_flip_addr(i8* nonnull %5, i8* %12) #11, !dbg !2074
  %13 = call %struct.a2dp_conn* @__a2dp_conn_for_addr(i8* nonnull %5) #10, !dbg !2075
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %13, metadata !2061, metadata !DIExpression()), !dbg !2076
  %14 = icmp eq %struct.a2dp_conn* %13, null, !dbg !2077
  br i1 %14, label %15, label %17, !dbg !2079

; <label>:15:                                     ; preds = %11
  %16 = call fastcc %struct.a2dp_conn* @__create_a2dp_conn(i8* nonnull %5) #10, !dbg !2080
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %16, metadata !2061, metadata !DIExpression()), !dbg !2076
  br label %17, !dbg !2082

; <label>:17:                                     ; preds = %15, %11
  %18 = phi %struct.a2dp_conn* [ %13, %11 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %18, metadata !2061, metadata !DIExpression()), !dbg !2076
  %19 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 2, i32 1, i32 3, !dbg !2083
  %20 = load i16, i16* %19, align 2, !dbg !2083, !tbaa !613
  %21 = icmp eq i16 %20, 0, !dbg !2085
  br i1 %21, label %22, label %80, !dbg !2086

; <label>:22:                                     ; preds = %17
  %23 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2087, !tbaa !693
  %24 = and i8 %23, 32, !dbg !2087
  %25 = icmp eq i8 %24, 0, !dbg !2087
  br i1 %25, label %28, label %26, !dbg !2090

; <label>:26:                                     ; preds = %22
  %27 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !2091
  br label %28, !dbg !2091

; <label>:28:                                     ; preds = %26, %22
  store i16 %0, i16* %19, align 2, !dbg !2093, !tbaa !613
  %29 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 2, i32 1, i32 8, !dbg !2094
  call void @llvm.dbg.value(metadata i16 8192, metadata !2063, metadata !DIExpression()), !dbg !2067
  %30 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2096, !tbaa !551
  %31 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %30, i32 0, i32 5, !dbg !2098
  %32 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %31, align 4, !dbg !2098, !tbaa !2099
  %33 = icmp eq void (i8*, i32, i32, i8)* %32, null, !dbg !2096
  br i1 %33, label %40, label %34, !dbg !2101

; <label>:34:                                     ; preds = %28
  %35 = load i16, i16* %29, align 2, !dbg !2094
  %36 = and i16 %35, 12288, !dbg !2094
  %37 = icmp eq i16 %36, 0, !dbg !2102
  %38 = select i1 %37, i32 8192, i32 32, !dbg !2103
  %39 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 0, i32 0, !dbg !2104
  call void %32(i8* %39, i32 1, i32 %38, i8 zeroext %2) #11, !dbg !2106
  br label %40, !dbg !2107

; <label>:40:                                     ; preds = %34, %28
  %41 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 2, i32 1, i32 0, i32 0, !dbg !2108
  %42 = load i8, i8* %41, align 4, !dbg !2108
  %43 = and i8 %42, 16, !dbg !2108
  %44 = icmp eq i8 %43, 0, !dbg !2110
  br i1 %44, label %45, label %50, !dbg !2111

; <label>:45:                                     ; preds = %40
  %46 = load i16, i16* %29, align 2, !dbg !2112
  %47 = and i16 %46, 12288, !dbg !2112
  %48 = icmp ne i16 %47, 0, !dbg !2114
  %49 = or i1 %48, icmp uge (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), !dbg !2114
  br i1 %49, label %71, label %51, !dbg !2114

; <label>:50:                                     ; preds = %40
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !2062, metadata !DIExpression()), !dbg !2116
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %51, label %71, !dbg !2117

; <label>:51:                                     ; preds = %50, %45
  br label %52, !dbg !2121

; <label>:52:                                     ; preds = %67, %51
  %53 = phi %struct.a2dp_event_handler* [ %68, %67 ], [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %51 ]
  %54 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %53, i32 0, i32 0, !dbg !2121
  %55 = load i32, i32* %54, align 4, !dbg !2121, !tbaa !963
  %56 = load i16, i16* %29, align 2, !dbg !2125
  %57 = lshr i16 %56, 12, !dbg !2125
  %58 = and i16 %57, 3, !dbg !2125
  %59 = zext i16 %58 to i32, !dbg !2125
  %60 = icmp eq i32 %55, %59, !dbg !2126
  br i1 %60, label %61, label %67, !dbg !2127

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %53, i32 0, i32 1, !dbg !2128
  %63 = load i32 (%struct.a2dp_conn*, i32, i8)*, i32 (%struct.a2dp_conn*, i32, i8)** %62, align 4, !dbg !2128, !tbaa !1834
  %64 = icmp eq i32 (%struct.a2dp_conn*, i32, i8)* %63, null, !dbg !2131
  br i1 %64, label %67, label %65, !dbg !2132

; <label>:65:                                     ; preds = %61
  %66 = call i32 %63(%struct.a2dp_conn* nonnull %18, i32 1, i8 zeroext %2) #11, !dbg !2133
  br label %67, !dbg !2135

; <label>:67:                                     ; preds = %65, %61, %52
  %68 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %53, i32 1, !dbg !2136
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %68, metadata !2062, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %68, metadata !2062, metadata !DIExpression()), !dbg !2116
  %69 = icmp ult %struct.a2dp_event_handler* %68, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !2138
  br i1 %69, label %52, label %70, !dbg !2117, !llvm.loop !2140

; <label>:70:                                     ; preds = %67
  br label %71, !dbg !2143

; <label>:71:                                     ; preds = %70, %50, %45
  store i8 0, i8* @reconnect_after_disconnect, align 1, !dbg !2143, !tbaa !693
  %72 = load i8, i8* @a2dp_source_bqb_support, align 1, !dbg !2144, !tbaa !693
  %73 = icmp eq i8 %72, 0, !dbg !2144
  br i1 %73, label %148, label %74, !dbg !2146

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 1, i32 0, !dbg !2147
  %76 = load i8, i8* %75, align 2, !dbg !2149
  %77 = and i8 %76, -31, !dbg !2149
  %78 = or i8 %77, 24, !dbg !2149
  store i8 %78, i8* %75, align 2, !dbg !2149
  %79 = call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #11, !dbg !2150
  br label %148, !dbg !2151

; <label>:80:                                     ; preds = %17
  %81 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 3, i32 0, i32 0, !dbg !2152
  %82 = load i16, i16* %81, align 4, !dbg !2152, !tbaa !627
  %83 = icmp eq i16 %82, 0, !dbg !2155
  br i1 %83, label %84, label %148, !dbg !2156

; <label>:84:                                     ; preds = %80
  %85 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2158, !tbaa !693
  %86 = and i8 %85, 32, !dbg !2158
  %87 = icmp eq i8 %86, 0, !dbg !2158
  br i1 %87, label %90, label %88, !dbg !2161

; <label>:88:                                     ; preds = %84
  %89 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !2162
  br label %90, !dbg !2162

; <label>:90:                                     ; preds = %88, %84
  store i16 %0, i16* %81, align 4, !dbg !2164, !tbaa !627
  %91 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2165, !tbaa !551
  %92 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %91, i32 0, i32 5, !dbg !2167
  %93 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %92, align 4, !dbg !2167, !tbaa !2099
  %94 = icmp eq void (i8*, i32, i32, i8)* %93, null, !dbg !2165
  br i1 %94, label %97, label %95, !dbg !2168

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 0, i32 0, !dbg !2169
  call void %93(i8* %96, i32 1, i32 4, i8 zeroext %2) #11, !dbg !2171
  br label %97, !dbg !2172

; <label>:97:                                     ; preds = %95, %90
  %98 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 2, i32 1, i32 8, !dbg !2173
  %99 = load i16, i16* %98, align 2, !dbg !2173
  %100 = and i16 %99, 12288, !dbg !2173
  %101 = icmp eq i16 %100, 0, !dbg !2175
  br i1 %101, label %102, label %114, !dbg !2176

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %18, i32 0, i32 3, i32 0, i32 1, !dbg !2177
  %104 = load i16, i16* %103, align 2, !dbg !2177, !tbaa !1528
  %105 = trunc i16 %104 to i8, !dbg !2179
  %106 = getelementptr inbounds i8, i8* %1, i32 19, !dbg !2180
  %107 = load i8, i8* %106, align 1, !dbg !2180, !tbaa !693
  %108 = zext i8 %107 to i16, !dbg !2180
  %109 = getelementptr inbounds i8, i8* %1, i32 20, !dbg !2180
  %110 = load i8, i8* %109, align 1, !dbg !2180, !tbaa !693
  %111 = zext i8 %110 to i16, !dbg !2180
  %112 = shl nuw i16 %111, 8, !dbg !2180
  %113 = or i16 %112, %108, !dbg !2180
  call void @a2dp_media_packet_info(%struct.a2dp_conn* nonnull %18, i8 zeroext %105, i16 zeroext %113) #11, !dbg !2181
  br label %114, !dbg !2182

; <label>:114:                                    ; preds = %102, %97
  %115 = load void (i8)*, void (i8)** @a2dp_status_update, align 4, !dbg !2183, !tbaa !551
  %116 = icmp eq void (i8)* %115, null, !dbg !2183
  br i1 %116, label %118, label %117, !dbg !2185

; <label>:117:                                    ; preds = %114
  call void %115(i8 zeroext 1) #11, !dbg !2186
  br label %118, !dbg !2188

; <label>:118:                                    ; preds = %117, %114
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), metadata !2062, metadata !DIExpression()), !dbg !2116
  br i1 icmp ult (%struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %struct.a2dp_event_handler* getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0)), label %119, label %139, !dbg !2189

; <label>:119:                                    ; preds = %118
  br label %120, !dbg !2192

; <label>:120:                                    ; preds = %135, %119
  %121 = phi %struct.a2dp_event_handler* [ %136, %135 ], [ getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_begin, i32 0, i32 0), %119 ]
  %122 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %121, i32 0, i32 0, !dbg !2192
  %123 = load i32, i32* %122, align 4, !dbg !2192, !tbaa !963
  %124 = load i16, i16* %98, align 2, !dbg !2196
  %125 = lshr i16 %124, 12, !dbg !2196
  %126 = and i16 %125, 3, !dbg !2196
  %127 = zext i16 %126 to i32, !dbg !2196
  %128 = icmp eq i32 %123, %127, !dbg !2197
  br i1 %128, label %129, label %135, !dbg !2198

; <label>:129:                                    ; preds = %120
  %130 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %121, i32 0, i32 1, !dbg !2199
  %131 = load i32 (%struct.a2dp_conn*, i32, i8)*, i32 (%struct.a2dp_conn*, i32, i8)** %130, align 4, !dbg !2199, !tbaa !1834
  %132 = icmp eq i32 (%struct.a2dp_conn*, i32, i8)* %131, null, !dbg !2202
  br i1 %132, label %135, label %133, !dbg !2203

; <label>:133:                                    ; preds = %129
  %134 = call i32 %131(%struct.a2dp_conn* nonnull %18, i32 2, i8 zeroext %2) #11, !dbg !2204
  br label %135, !dbg !2206

; <label>:135:                                    ; preds = %133, %129, %120
  %136 = getelementptr inbounds %struct.a2dp_event_handler, %struct.a2dp_event_handler* %121, i32 1, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %136, metadata !2062, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata %struct.a2dp_event_handler* %136, metadata !2062, metadata !DIExpression()), !dbg !2116
  %137 = icmp ult %struct.a2dp_event_handler* %136, getelementptr inbounds ([0 x %struct.a2dp_event_handler], [0 x %struct.a2dp_event_handler]* @a2dp_event_handler_end, i32 0, i32 0), !dbg !2209
  br i1 %137, label %120, label %138, !dbg !2189, !llvm.loop !2211

; <label>:138:                                    ; preds = %135
  br label %139, !dbg !2214

; <label>:139:                                    ; preds = %138, %118
  %140 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2214, !tbaa !551
  %141 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %140, i32 0, i32 9, !dbg !2216
  %142 = load i32, i32* %141, align 1, !dbg !2216
  %143 = and i32 %142, 8388608, !dbg !2214
  %144 = icmp eq i32 %143, 0, !dbg !2214
  br i1 %144, label %148, label %145, !dbg !2217

; <label>:145:                                    ; preds = %139
  %146 = load i16, i16* %81, align 4, !dbg !2218, !tbaa !627
  call void @l2cap_disconnect_internal(i16 zeroext %146, i8 zeroext 19) #11, !dbg !2220
  %147 = load i16, i16* %19, align 2, !dbg !2221, !tbaa !613
  call void @l2cap_disconnect_internal(i16 zeroext %147, i8 zeroext 19) #11, !dbg !2222
  br label %148, !dbg !2223

; <label>:148:                                    ; preds = %145, %139, %80, %74, %71
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #12, !dbg !2224
  ret void, !dbg !2224
}

; Function Attrs: optsize
declare i32 @mic_coder_busy_flag() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @filter_out_sbc_data_en(...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @tws_api_get_tws_state(...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) local_unnamed_addr #5

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #4

; Function Attrs: optsize
declare void @l2cap_decline_connection_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @a2dp_media_packet_info(%struct.a2dp_conn*, i8 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc void @__close_channel(%struct.a2dp_conn*, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2225 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !2229, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i16 %1, metadata !2230, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i16 32, metadata !2231, metadata !DIExpression()), !dbg !2236
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !2237
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %4) #12, !dbg !2237
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !2232, metadata !DIExpression()), !dbg !2238
  call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 0, i32 6, i32 1, i1 false), !dbg !2238
  %5 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 2, i32 1, i32 3, !dbg !2239
  %6 = load i16, i16* %5, align 2, !dbg !2239, !tbaa !613
  %7 = icmp eq i16 %6, %1, !dbg !2241
  br i1 %7, label %8, label %25, !dbg !2242

; <label>:8:                                      ; preds = %2
  store i16 0, i16* %5, align 2, !dbg !2243, !tbaa !2251
  %9 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 2, i32 1, i32 8, !dbg !2252
  call void @llvm.dbg.value(metadata i16 8192, metadata !2231, metadata !DIExpression()), !dbg !2236
  %10 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2254, !tbaa !551
  %11 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %10, i32 0, i32 5, !dbg !2256
  %12 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %11, align 4, !dbg !2256, !tbaa !2099
  %13 = icmp eq void (i8*, i32, i32, i8)* %12, null, !dbg !2254
  br i1 %13, label %20, label %14, !dbg !2257

; <label>:14:                                     ; preds = %8
  %15 = load i16, i16* %9, align 2, !dbg !2252
  %16 = and i16 %15, 12288, !dbg !2252
  %17 = icmp eq i16 %16, 0, !dbg !2258
  %18 = select i1 %17, i32 8192, i32 32, !dbg !2259
  %19 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 0, i32 0, !dbg !2260
  tail call void %12(i8* %19, i32 0, i32 %18, i8 zeroext 1) #11, !dbg !2262
  br label %20, !dbg !2263

; <label>:20:                                     ; preds = %14, %8
  %21 = load i16, i16* %9, align 2, !dbg !2264
  %22 = and i16 %21, 12288, !dbg !2264
  %23 = icmp eq i16 %22, 0, !dbg !2266
  br i1 %23, label %24, label %40, !dbg !2267

; <label>:24:                                     ; preds = %20
  tail call fastcc void @__media_close(%struct.a2dp_conn* nonnull %0) #10, !dbg !2268
  br label %40, !dbg !2270

; <label>:25:                                     ; preds = %2
  %26 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 3, i32 0, i32 0, !dbg !2271
  %27 = load i16, i16* %26, align 4, !dbg !2271, !tbaa !627
  %28 = icmp eq i16 %27, %1, !dbg !2274
  br i1 %28, label %29, label %40, !dbg !2275

; <label>:29:                                     ; preds = %25
  store i16 0, i16* %26, align 4, !dbg !2277, !tbaa !627
  tail call fastcc void @__media_close(%struct.a2dp_conn* nonnull %0) #10, !dbg !2279
  %30 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2280, !tbaa !551
  %31 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %30, i32 0, i32 5, !dbg !2282
  %32 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %31, align 4, !dbg !2282, !tbaa !2099
  %33 = icmp eq void (i8*, i32, i32, i8)* %32, null, !dbg !2280
  br i1 %33, label %36, label %34, !dbg !2283

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 0, i32 0, !dbg !2284
  tail call void %32(i8* %35, i32 0, i32 4, i8 zeroext 1) #11, !dbg !2286
  br label %36, !dbg !2287

; <label>:36:                                     ; preds = %34, %29
  %37 = load void (i8)*, void (i8)** @a2dp_status_update, align 4, !dbg !2288, !tbaa !551
  %38 = icmp eq void (i8)* %37, null, !dbg !2288
  br i1 %38, label %40, label %39, !dbg !2290

; <label>:39:                                     ; preds = %36
  tail call void %37(i8 zeroext 0) #11, !dbg !2291
  br label %40, !dbg !2293

; <label>:40:                                     ; preds = %39, %36, %25, %24, %20
  %41 = load i16, i16* %5, align 2, !dbg !2294, !tbaa !613
  %42 = icmp eq i16 %41, 0, !dbg !2296
  br i1 %42, label %43, label %53, !dbg !2297

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 3, i32 0, i32 0, !dbg !2298
  %45 = load i16, i16* %44, align 4, !dbg !2298, !tbaa !627
  %46 = icmp eq i16 %45, 0, !dbg !2300
  br i1 %46, label %47, label %53, !dbg !2301

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 0, i32 0, !dbg !2303
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %48, i32 6, i32 1, i1 false), !dbg !2303
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !2305, metadata !DIExpression()), !dbg !2308
  tail call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 7, i32 4, i1 false) #12, !dbg !2310
  %49 = load i8, i8* @reconnect_after_disconnect, align 1, !dbg !2311, !tbaa !693
  %50 = icmp eq i8 %49, 0, !dbg !2311
  br i1 %50, label %53, label %51, !dbg !2313

; <label>:51:                                     ; preds = %47
  store i8 0, i8* @reconnect_after_disconnect, align 1, !dbg !2314, !tbaa !693
  %52 = call i32 @a2dp_send_cmd(i8* nonnull %4, i32 50) #10, !dbg !2316
  br label %53, !dbg !2317

; <label>:53:                                     ; preds = %51, %47, %43, %40
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %4) #12, !dbg !2318
  ret void, !dbg !2318
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!510, !511}
!llvm.ident = !{!512}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !509, line: 190, type: !340, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !186, globals: !419)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !16, !30, !177}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 31, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15}
!8 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!9 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!10 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!11 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!12 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!13 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!14 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!15 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 164, size: 32, elements: !18)
!17 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!19 = !DIEnumerator(name: "A2DP_CMD_CONNECT", value: 50)
!20 = !DIEnumerator(name: "A2DP_CMD_DISCONNECT", value: 51)
!21 = !DIEnumerator(name: "A2DP_CMD_START", value: 52)
!22 = !DIEnumerator(name: "A2DP_CMD_CLOSE", value: 53)
!23 = !DIEnumerator(name: "A2DP_CMD_SUSPEND", value: 54)
!24 = !DIEnumerator(name: "A2DP_CMD_GET_CONFIGURATION", value: 55)
!25 = !DIEnumerator(name: "A2DP_CMD_ABORT", value: 56)
!26 = !DIEnumerator(name: "A2DP_CMD_EMITTER_START_CMD", value: 57)
!27 = !DIEnumerator(name: "A2DP_CMD_EMITTER_SUSPEND_CMD", value: 58)
!28 = !DIEnumerator(name: "A2DP_CMD_EMITTER_CLOSE_CMD", value: 59)
!29 = !DIEnumerator(name: "A2DP_CMD_CONNECT_MEDIA_CHANNEL", value: 60)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 12, size: 32, elements: !32)
!31 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!33 = !DIEnumerator(name: "USER_CTRL_START_CONNECTION", value: 0)
!34 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR", value: 1)
!35 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR_MANUALLY", value: 2)
!36 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_SPP_VIA_ADDR", value: 3)
!37 = !DIEnumerator(name: "USER_CTRL_DISCONNECTION_HCI", value: 4)
!38 = !DIEnumerator(name: "USER_CTRL_CONNECTION_CANCEL", value: 5)
!39 = !DIEnumerator(name: "USER_CTRL_READ_REMOTE_NAME", value: 6)
!40 = !DIEnumerator(name: "USER_CTRL_PAUSE_MUSIC", value: 7)
!41 = !DIEnumerator(name: "USER_CTRL_SCO_LINK", value: 8)
!42 = !DIEnumerator(name: "USER_CTRL_CONN_SCO", value: 9)
!43 = !DIEnumerator(name: "USER_CTRL_DISCONN_SCO", value: 10)
!44 = !DIEnumerator(name: "USER_CTRL_DISCONN_SDP_MASTER", value: 11)
!45 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_DISABLE", value: 12)
!46 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_ENABLE", value: 13)
!47 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_DISABLE", value: 14)
!48 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_ENABLE", value: 15)
!49 = !DIEnumerator(name: "USER_CTRL_SEARCH_DEVICE", value: 16)
!50 = !DIEnumerator(name: "USER_CTRL_INQUIRY_CANCEL", value: 17)
!51 = !DIEnumerator(name: "USER_CTRL_PAGE_CANCEL", value: 18)
!52 = !DIEnumerator(name: "USER_CTRL_SNIFF_IN", value: 19)
!53 = !DIEnumerator(name: "USER_CTRL_SNIFF_EXIT", value: 20)
!54 = !DIEnumerator(name: "USER_CTRL_ALL_SNIFF_EXIT", value: 21)
!55 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_BEGIN", value: 22)
!56 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_UP", value: 23)
!57 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_DOWN", value: 24)
!58 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_SET_VOLUME", value: 25)
!59 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_GET_VOLUME", value: 26)
!60 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_ANSWER", value: 27)
!61 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_HANGUP", value: 28)
!62 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_LAST_NO", value: 29)
!63 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_CURRENT", value: 30)
!64 = !DIEnumerator(name: "USER_CTRL_HFP_DTMF_TONES", value: 31)
!65 = !DIEnumerator(name: "USER_CTRL_DIAL_NUMBER", value: 32)
!66 = !DIEnumerator(name: "USER_CTRL_SEND_BATTERY", value: 33)
!67 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_STATUS", value: 34)
!68 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_OPEN", value: 35)
!69 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_CLOSE", value: 36)
!70 = !DIEnumerator(name: "USER_CTRL_HFP_GET_PHONE_DATE_TIME", value: 37)
!71 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_SEND_BIA", value: 38)
!72 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_GET_MANUFACTURER", value: 39)
!73 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_UPDATE_BATTARY", value: 40)
!74 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1", value: 41)
!75 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2", value: 42)
!76 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1X", value: 43)
!77 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2X", value: 44)
!78 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER3", value: 45)
!79 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_REJECT", value: 46)
!80 = !DIEnumerator(name: "USER_CTRL_HFP_DISCONNECT", value: 47)
!81 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_END", value: 48)
!82 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_BEGIN", value: 49)
!83 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PLAY", value: 50)
!84 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PAUSE", value: 51)
!85 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_STOP", value: 52)
!86 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_NEXT", value: 53)
!87 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PREV", value: 54)
!88 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_FORWARD", value: 55)
!89 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REWIND", value: 56)
!90 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REPEAT_MODE", value: 57)
!91 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SHUFFLE_MODE", value: 58)
!92 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_PLAY_TIME", value: 59)
!93 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SEND_VOL", value: 60)
!94 = !DIEnumerator(name: "USER_CTRL_AVCTP_DISCONNECT", value: 61)
!95 = !DIEnumerator(name: "USER_CTRL_AVCTP_CONN", value: 62)
!96 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_END", value: 63)
!97 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_BEGIN", value: 64)
!98 = !DIEnumerator(name: "USER_CTRL_AUTO_CONN_A2DP", value: 65)
!99 = !DIEnumerator(name: "USER_CTRL_CONN_A2DP", value: 66)
!100 = !DIEnumerator(name: "USER_CTRL_DISCONN_A2DP", value: 67)
!101 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_START", value: 68)
!102 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_CLOSE", value: 69)
!103 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_SUSPEND", value: 70)
!104 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_GET_CONFIGURATION", value: 71)
!105 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_ABORT", value: 72)
!106 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_END", value: 73)
!107 = !DIEnumerator(name: "USER_CTRL_POWER_OFF", value: 74)
!108 = !DIEnumerator(name: "USER_CTRL_POWER_ON", value: 75)
!109 = !DIEnumerator(name: "USER_CTRL_HID_CMD_BEGIN", value: 76)
!110 = !DIEnumerator(name: "USER_CTRL_HID_CONN", value: 77)
!111 = !DIEnumerator(name: "USER_CTRL_HID_ANDROID", value: 78)
!112 = !DIEnumerator(name: "USER_CTRL_HID_IOS", value: 79)
!113 = !DIEnumerator(name: "USER_CTRL_HID_BOTH", value: 80)
!114 = !DIEnumerator(name: "USER_CTRL_HID_DISCONNECT", value: 81)
!115 = !DIEnumerator(name: "USER_CTRL_HID_HOME", value: 82)
!116 = !DIEnumerator(name: "USER_CTRL_HID_RETURN", value: 83)
!117 = !DIEnumerator(name: "USER_CTRL_HID_LEFTARROW", value: 84)
!118 = !DIEnumerator(name: "USER_CTRL_HID_RIGHTARROW", value: 85)
!119 = !DIEnumerator(name: "USER_CTRL_HID_VOL_UP", value: 86)
!120 = !DIEnumerator(name: "USER_CTRL_HID_VOL_DOWN", value: 87)
!121 = !DIEnumerator(name: "USER_CTRL_HID_SEND_DATA", value: 88)
!122 = !DIEnumerator(name: "USER_CTRL_HID_CMD_END", value: 89)
!123 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_BEGIN", value: 90)
!124 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN", value: 91)
!125 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN", value: 92)
!126 = !DIEnumerator(name: "USER_CTRL_MONITOR", value: 93)
!127 = !DIEnumerator(name: "USER_CTRL_TWS_CONNEC_VIA_ADDR", value: 94)
!128 = !DIEnumerator(name: "USER_CTRL_TWS_COTROL_CDM", value: 95)
!129 = !DIEnumerator(name: "USER_CTRL_TWS_CLEAR_INFO", value: 96)
!130 = !DIEnumerator(name: "USER_CTRL_TWS_DISCONNECTION_HCI", value: 97)
!131 = !DIEnumerator(name: "USER_CTRL_TWS_START_CONNECTION", value: 98)
!132 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM", value: 99)
!133 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_SBC_CDM", value: 100)
!134 = !DIEnumerator(name: "USER_CTRL_TWS_RESTART_SBC_CDM", value: 101)
!135 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_CANCEL", value: 102)
!136 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN_CANCEL", value: 103)
!137 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM_FUN", value: 104)
!138 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_START", value: 105)
!139 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_CLOSE", value: 106)
!140 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_END", value: 107)
!141 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_BEGIN", value: 108)
!142 = !DIEnumerator(name: "USER_CTRL_SPP_SEND_DATA", value: 109)
!143 = !DIEnumerator(name: "USER_CTRL_SPP_TRY_SEND_DATA", value: 110)
!144 = !DIEnumerator(name: "USER_CTRL_SPP_UPDATA_DATA", value: 111)
!145 = !DIEnumerator(name: "USER_CTRL_SPP_DISCONNECT", value: 112)
!146 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_END", value: 113)
!147 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_BEGIN", value: 114)
!148 = !DIEnumerator(name: "USER_CTRL_PBG_SEND_DATA", value: 115)
!149 = !DIEnumerator(name: "USER_CTRL_PBG_TRY_SEND_DATA", value: 116)
!150 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_END", value: 117)
!151 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_BEGIN", value: 118)
!152 = !DIEnumerator(name: "USER_CTRL_ADT_CONNECT", value: 119)
!153 = !DIEnumerator(name: "USER_CTRL_ADT_KEY_MIC_OPEN", value: 120)
!154 = !DIEnumerator(name: "USER_CTRL_ADT_SEND_DATA", value: 121)
!155 = !DIEnumerator(name: "USER_CTRL_ADT_TRY_SEND_DATA", value: 122)
!156 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_END", value: 123)
!157 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_BEGIN", value: 124)
!158 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_PART", value: 125)
!159 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_ALL", value: 126)
!160 = !DIEnumerator(name: "USER_CTRL_PBAP_STOP_READING", value: 127)
!161 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_END", value: 128)
!162 = !DIEnumerator(name: "USER_CTRL_DEL_ALL_REMOTE_INFO", value: 129)
!163 = !DIEnumerator(name: "USER_CTRL_TEST_KEY", value: 130)
!164 = !DIEnumerator(name: "USER_CTRL_SEND_USER_INFO", value: 131)
!165 = !DIEnumerator(name: "USER_CTRL_KEYPRESS", value: 132)
!166 = !DIEnumerator(name: "USER_CTRL_PAIR", value: 133)
!167 = !DIEnumerator(name: "USER_CTRL_AFH_CHANNEL", value: 134)
!168 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_CREATE", value: 135)
!169 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_DEL", value: 136)
!170 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_INC", value: 137)
!171 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_DEC", value: 138)
!172 = !DIEnumerator(name: "USER_CTRL_CMD_CHANGE_PROFILE_MODE", value: 139)
!173 = !DIEnumerator(name: "USER_CTRL_CMD_RESERVE_INDEX4", value: 140)
!174 = !DIEnumerator(name: "USER_CTRL_CMD_RESUME_STACK", value: 141)
!175 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_MUSIC_INFO", value: 142)
!176 = !DIEnumerator(name: "USER_CTRL_LAST", value: 143)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !178, line: 58, size: 32, elements: !179)
!178 = !DIFile(filename: "../btstack/Profile/include/bredr/avdtp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DIEnumerator(name: "AVDTP_STATE_IDLE", value: 0)
!181 = !DIEnumerator(name: "AVDTP_STATE_CONFIGURED", value: 1)
!182 = !DIEnumerator(name: "AVDTP_STATE_OPEN", value: 2)
!183 = !DIEnumerator(name: "AVDTP_STATE_STREAMING", value: 3)
!184 = !DIEnumerator(name: "AVDTP_STATE_CLOSING", value: 4)
!185 = !DIEnumerator(name: "AVDTP_STATE_ABORTING", value: 5)
!186 = !{!187, !188, !197, !198, !382, !384, !385, !392, !404, !275, !417}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_service_capability", file: !178, line: 71, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_service_capability", file: !178, line: 68, size: 16, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !190, file: !178, line: 69, baseType: !193, size: 8)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !194, line: 11, baseType: !195)
!194 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!195 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !190, file: !178, line: 70, baseType: !193, size: 8, offset: 8)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_conn", file: !17, line: 237, size: 1024, elements: !200)
!200 = !{!201, !211, !218, !323}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !199, file: !17, line: 238, baseType: !202, size: 48)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !203, line: 66, baseType: !204)
!203 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 48, elements: !209)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !206, line: 20, baseType: !207)
!206 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !208, line: 29, baseType: !195)
!208 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!209 = !{!210}
!210 = !DISubrange(count: 6)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_core_data", scope: !199, file: !17, line: 239, baseType: !212, size: 8, offset: 48)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_core_data_t", file: !17, line: 229, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 225, size: 8, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !213, file: !17, line: 226, baseType: !193, size: 1, flags: DIFlagBitField, extraData: i64 0)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "discover_req", scope: !213, file: !17, line: 227, baseType: !193, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bqb_test_cnt", scope: !213, file: !17, line: 228, baseType: !193, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !199, file: !17, line: 240, baseType: !219, size: 768, offset: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avdtp", file: !178, line: 335, size: 768, elements: !220)
!220 = !{!221, !297}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "local_seps", scope: !219, file: !178, line: 337, baseType: !222, size: 448)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 448, elements: !295)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_local_sep", file: !178, line: 293, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_local_sep", file: !178, line: 282, size: 224, elements: !225)
!225 = !{!226, !277, !279, !289, !290, !291}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !224, file: !178, line: 283, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_sep_ind", file: !178, line: 350, size: 288, elements: !230)
!230 = !{!231, !236, !241, !254, !258, !259, !263, !267, !271}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !229, file: !178, line: 351, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !193, !187, !197}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !194, line: 11, baseType: !195)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "set_configuration", scope: !229, file: !178, line: 353, baseType: !237, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!238 = !DISubroutineType(types: !239)
!239 = !{!235, !240, !197, !193, !187}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !229, file: !178, line: 355, baseType: !242, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!243 = !DISubroutineType(types: !244)
!244 = !{!235, !240, !245, !193}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_stream", file: !178, line: 280, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_stream", file: !178, line: 268, size: 8, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rseid", scope: !247, file: !178, line: 270, baseType: !193, size: 4, flags: DIFlagBitField, extraData: i64 0)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "int_role", scope: !247, file: !178, line: 271, baseType: !193, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "open_acp", scope: !247, file: !178, line: 272, baseType: !193, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "starting", scope: !247, file: !178, line: 278, baseType: !193, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !247, file: !178, line: 279, baseType: !193, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !229, file: !178, line: 356, baseType: !255, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!256 = !DISubroutineType(types: !257)
!257 = !{!235, !240, !245}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !229, file: !178, line: 357, baseType: !255, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !229, file: !178, line: 359, baseType: !260, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DISubroutineType(types: !262)
!262 = !{!235, !240, !245, !197}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !229, file: !178, line: 361, baseType: !264, size: 32, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !240}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !229, file: !178, line: 362, baseType: !268, size: 32, offset: 224)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DISubroutineType(types: !270)
!270 = !{!235, null}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "delayreport", scope: !229, file: !178, line: 363, baseType: !272, size: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 32)
!273 = !DISubroutineType(types: !274)
!274 = !{!235, !193, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !194, line: 13, baseType: !276)
!276 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !224, file: !178, line: 284, baseType: !278, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !224, file: !178, line: 286, baseType: !280, size: 16, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_info", file: !178, line: 124, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_info", file: !178, line: 117, size: 16, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !281, file: !178, line: 118, baseType: !193, size: 1, flags: DIFlagBitField, extraData: i64 0)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !281, file: !178, line: 119, baseType: !193, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "seid", scope: !281, file: !178, line: 120, baseType: !193, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rfa2", scope: !281, file: !178, line: 121, baseType: !193, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !178, line: 122, baseType: !193, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "media_type", scope: !281, file: !178, line: 123, baseType: !193, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !178, line: 288, baseType: !193, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "codec_type", scope: !224, file: !178, line: 289, baseType: !193, size: 4, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !224, file: !178, line: 290, baseType: !292, size: 128, offset: 88)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 16)
!295 = !{!296}
!296 = !DISubrange(count: 2)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "adp_core_data", scope: !219, file: !178, line: 338, baseType: !298, size: 320, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_core_data_t", file: !178, line: 333, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 318, size: 320, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !299, file: !178, line: 319, baseType: !246, size: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep", scope: !299, file: !178, line: 320, baseType: !240, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep_ind", scope: !299, file: !178, line: 321, baseType: !193, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !299, file: !178, line: 322, baseType: !275, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !299, file: !178, line: 323, baseType: !306, size: 64, offset: 96)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !312)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_req", file: !178, line: 129, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_req", file: !178, line: 126, size: 8, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !308, file: !178, line: 127, baseType: !193, size: 2, flags: DIFlagBitField, extraData: i64 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !308, file: !178, line: 128, baseType: !193, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!312 = !{!313}
!313 = !DISubrange(count: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !299, file: !178, line: 324, baseType: !292, size: 128, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "seid_ind", scope: !299, file: !178, line: 325, baseType: !193, size: 8, offset: 288)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pending_req", scope: !299, file: !178, line: 326, baseType: !193, size: 8, offset: 296)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "max_acp_seid", scope: !299, file: !178, line: 327, baseType: !193, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "cur_acp_seid", scope: !299, file: !178, line: 328, baseType: !193, size: 4, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "aac_codec_prior", scope: !299, file: !178, line: 329, baseType: !193, size: 4, offset: 312, flags: DIFlagBitField, extraData: i64 304)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !299, file: !178, line: 330, baseType: !193, size: 2, offset: 316, flags: DIFlagBitField, extraData: i64 304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_discover", scope: !299, file: !178, line: 331, baseType: !193, size: 1, offset: 318, flags: DIFlagBitField, extraData: i64 304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !299, file: !178, line: 332, baseType: !193, size: 1, offset: 319, flags: DIFlagBitField, extraData: i64 304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !199, file: !17, line: 241, baseType: !324, size: 192, offset: 832)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media", file: !17, line: 215, size: 192, elements: !325)
!325 = !{!326, !335, !359, !378, !379, !380, !381}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "media_core_data", scope: !324, file: !17, line: 216, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "media_core_data_t", file: !17, line: 213, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 209, size: 64, elements: !329)
!329 = !{!330, !331, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !328, file: !17, line: 210, baseType: !275, size: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cp_type", scope: !328, file: !17, line: 211, baseType: !275, size: 16, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !328, file: !17, line: 212, baseType: !333, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !194, line: 15, baseType: !334)
!334 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !324, file: !17, line: 217, baseType: !336, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_probe", file: !17, line: 190, size: 192, elements: !338)
!338 = !{!339, !341, !348, !353, !357, !358}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !337, file: !17, line: 192, baseType: !340, size: 32)
!340 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !337, file: !17, line: 193, baseType: !342, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = !DISubroutineType(types: !344)
!344 = !{!340, !187, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!346 = !DISubroutineType(types: !347)
!347 = !{!340, !187, !197, !275}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !337, file: !17, line: 194, baseType: !349, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!350 = !DISubroutineType(types: !351)
!351 = !{!340, !352, !197, !275}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !337, file: !17, line: 195, baseType: !354, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 32)
!355 = !DISubroutineType(types: !356)
!356 = !{!340, null}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !337, file: !17, line: 196, baseType: !354, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !337, file: !17, line: 197, baseType: !354, size: 32, offset: 160)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !324, file: !17, line: 218, baseType: !360, size: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_codec", file: !17, line: 200, size: 192, elements: !362)
!362 = !{!363, !364, !368, !372, !376, !377}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !17, line: 201, baseType: !340, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !361, file: !17, line: 202, baseType: !365, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = !DISubroutineType(types: !367)
!367 = !{!340, !340}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !361, file: !17, line: 203, baseType: !369, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = !DISubroutineType(types: !371)
!371 = !{!340, !187}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !361, file: !17, line: 204, baseType: !373, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DISubroutineType(types: !375)
!375 = !{!340, !197, !275}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !361, file: !17, line: 205, baseType: !354, size: 32, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !361, file: !17, line: 206, baseType: !369, size: 32, offset: 160)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !324, file: !17, line: 219, baseType: !333, size: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nchannels", scope: !324, file: !17, line: 220, baseType: !193, size: 4, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !324, file: !17, line: 221, baseType: !193, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !324, file: !17, line: 222, baseType: !193, size: 8, offset: 168)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!384 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_media_codec_capability", file: !178, line: 162, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_media_codec_capability", file: !178, line: 158, size: 16, elements: !388)
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !387, file: !178, line: 159, baseType: !193, size: 4, flags: DIFlagBitField, extraData: i64 0)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "media_type", scope: !387, file: !178, line: 160, baseType: !193, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "media_codec_type", scope: !387, file: !178, line: 161, baseType: !193, size: 8, offset: 8)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbc_codec_cap", file: !17, line: 46, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sbc_codec_cap", file: !17, line: 37, size: 48, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !394, file: !17, line: 38, baseType: !386, size: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !394, file: !17, line: 39, baseType: !193, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !394, file: !17, line: 40, baseType: !193, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_method", scope: !394, file: !17, line: 41, baseType: !193, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "subbands", scope: !394, file: !17, line: 42, baseType: !193, size: 2, offset: 26, flags: DIFlagBitField, extraData: i64 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !394, file: !17, line: 43, baseType: !193, size: 4, offset: 28, flags: DIFlagBitField, extraData: i64 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "min_bitpool", scope: !394, file: !17, line: 44, baseType: !193, size: 8, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "max_bitpool", scope: !394, file: !17, line: 45, baseType: !193, size: 8, offset: 40)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpeg24_codec_cap", file: !17, line: 70, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mpeg24_codec_cap", file: !17, line: 60, size: 64, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !406, file: !17, line: 61, baseType: !386, size: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !406, file: !17, line: 62, baseType: !193, size: 8, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_l", scope: !406, file: !17, line: 63, baseType: !193, size: 8, offset: 24)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rfa", scope: !406, file: !17, line: 64, baseType: !193, size: 2, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !406, file: !17, line: 65, baseType: !193, size: 2, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_h", scope: !406, file: !17, line: 66, baseType: !193, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate_h", scope: !406, file: !17, line: 67, baseType: !193, size: 8, offset: 40)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate_m", scope: !406, file: !17, line: 68, baseType: !193, size: 8, offset: 48)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate_l", scope: !406, file: !17, line: 69, baseType: !193, size: 8, offset: 56)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !206, line: 26, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !208, line: 43, baseType: !276)
!419 = !{!0, !420, !423, !425, !442, !452, !462, !464, !466, !468, !477, !487, !492, !496, !507}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "a2dp_sbc", scope: !2, file: !3, line: 62, type: !422, isLocal: false, isDefinition: true)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "a2dp_mpeg_acc", scope: !2, file: !3, line: 73, type: !405, isLocal: false, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "a2dp_aptx", scope: !2, file: !3, line: 86, type: !427, isLocal: false, isDefinition: true)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_aptx_cap", file: !17, line: 81, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_a2dp_aptx_cap", file: !17, line: 72, size: 72, elements: !430)
!430 = !{!431, !432, !440, !441}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !429, file: !17, line: 73, baseType: !386, size: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !429, file: !17, line: 74, baseType: !433, size: 48, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_vendor_codec_t", file: !17, line: 33, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 30, size: 48, elements: !435)
!435 = !{!436, !439}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !434, file: !17, line: 31, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !206, line: 32, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !208, line: 65, baseType: !334)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "codec_id", scope: !434, file: !17, line: 32, baseType: !417, size: 16, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !429, file: !17, line: 75, baseType: !205, size: 4, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !429, file: !17, line: 76, baseType: !205, size: 4, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "a2dp_ldac", scope: !2, file: !3, line: 92, type: !444, isLocal: false, isDefinition: true)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_ldac_cap", file: !17, line: 89, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_a2dp_ldac_cap", file: !17, line: 83, size: 80, elements: !447)
!447 = !{!448, !449, !450, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !446, file: !17, line: 84, baseType: !386, size: 16)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !446, file: !17, line: 85, baseType: !433, size: 48, offset: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !446, file: !17, line: 87, baseType: !205, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !446, file: !17, line: 88, baseType: !205, size: 8, offset: 72)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "a2dp_lc3", scope: !2, file: !3, line: 99, type: !454, isLocal: false, isDefinition: true)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_lc3_cap", file: !17, line: 97, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_a2dp_lc3_cap", file: !17, line: 91, size: 80, elements: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !456, file: !17, line: 92, baseType: !386, size: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !456, file: !17, line: 93, baseType: !433, size: 48, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !456, file: !17, line: 95, baseType: !205, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !456, file: !17, line: 96, baseType: !205, size: 8, offset: 72)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "reconnect_after_disconnect", scope: !2, file: !3, line: 415, type: !193, isLocal: false, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "try_cmd_step", scope: !2, file: !3, line: 1464, type: !193, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "a2dp_wait_remote_discovecr", scope: !2, file: !3, line: 1539, type: !193, isLocal: false, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "bt_suspend_a2dp_resumea2dp_release", scope: !2, file: !3, line: 1698, type: !470, isLocal: false, isDefinition: true)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !472, line: 313, size: 96, elements: !473)
!472 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !471, file: !472, line: 314, baseType: !354, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !471, file: !472, line: 315, baseType: !354, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !471, file: !472, line: 316, baseType: !354, size: 32, offset: 64)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "a2dp_stack", scope: !2, file: !3, line: 20, type: !479, isLocal: true, isDefinition: true)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_stack_t", file: !17, line: 250, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 247, size: 1024, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !481, file: !17, line: 248, baseType: !484, size: 1024)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 1024, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 1)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "a2dp_status_update", scope: !2, file: !3, line: 417, type: !489, isLocal: true, isDefinition: true)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 32)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !193}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "a2dp_sep_ind_sbc", scope: !2, file: !3, line: 937, type: !494, isLocal: true, isDefinition: true)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_sep_ind", file: !178, line: 364, baseType: !229)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "content_protect", scope: !498, file: !3, line: 776, type: !505, isLocal: true, isDefinition: true)
!498 = distinct !DISubprogram(name: "a2dp_getcap_ind_sbc", scope: !3, file: !3, line: 772, type: !233, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !499)
!499 = !{!500, !501, !502, !503, !504}
!500 = !DILocalVariable(name: "seid", arg: 1, scope: !498, file: !3, line: 772, type: !193)
!501 = !DILocalVariable(name: "user_data", arg: 2, scope: !498, file: !3, line: 772, type: !187)
!502 = !DILocalVariable(name: "data_len", arg: 3, scope: !498, file: !3, line: 772, type: !197)
!503 = !DILocalVariable(name: "temp_a2dp_sbc", scope: !498, file: !3, line: 774, type: !393)
!504 = !DILocalVariable(name: "service_cap", scope: !498, file: !3, line: 775, type: !188)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 16, elements: !295)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "a2dp_sep_ind_mpeg24", scope: !2, file: !3, line: 1069, type: !494, isLocal: true, isDefinition: true)
!509 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!510 = !{i32 2, !"Dwarf Version", i32 4}
!511 = !{i32 2, !"Debug Info Version", i32 3}
!512 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!513 = distinct !DISubprogram(name: "__set_aac_bitrate", scope: !3, file: !3, line: 141, type: !514, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !333}
!516 = !{!517, !518}
!517 = !DILocalVariable(name: "bitrate", arg: 1, scope: !513, file: !3, line: 141, type: !333)
!518 = !DILocalVariable(name: "vbr_bit", scope: !513, file: !3, line: 143, type: !193)
!519 = !DILocation(line: 141, column: 28, scope: !513)
!520 = !DILocation(line: 143, column: 32, scope: !513)
!521 = !{!522, !524, i64 5}
!522 = !{!"_mpeg24_codec_cap", !523, i64 0, !524, i64 2, !524, i64 3, !524, i64 4, !524, i64 4, !524, i64 4, !524, i64 5, !524, i64 6, !524, i64 7}
!523 = !{!"_avdtp_media_codec_capability", !524, i64 0, !524, i64 0, !524, i64 1}
!524 = !{!"omnipotent char", !525, i64 0}
!525 = !{!"Simple C/C++ TBAA"}
!526 = !DILocation(line: 143, column: 42, scope: !513)
!527 = !DILocation(line: 143, column: 8, scope: !513)
!528 = !DILocation(line: 145, column: 41, scope: !513)
!529 = !DILocation(line: 145, column: 48, scope: !513)
!530 = !DILocation(line: 145, column: 58, scope: !513)
!531 = !DILocation(line: 145, column: 56, scope: !513)
!532 = !DILocation(line: 145, column: 31, scope: !513)
!533 = !DILocation(line: 145, column: 29, scope: !513)
!534 = !DILocation(line: 146, column: 40, scope: !513)
!535 = !DILocation(line: 146, column: 31, scope: !513)
!536 = !DILocation(line: 146, column: 29, scope: !513)
!537 = !{!522, !524, i64 6}
!538 = !DILocation(line: 147, column: 31, scope: !513)
!539 = !DILocation(line: 147, column: 29, scope: !513)
!540 = !{!522, !524, i64 7}
!541 = !DILocation(line: 151, column: 1, scope: !513)
!542 = distinct !DISubprogram(name: "find_a2dp_conn_number", scope: !3, file: !3, line: 175, type: !543, isLocal: false, isDefinition: true, scopeLine: 176, isOptimized: true, unit: !2, variables: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!193}
!545 = !{!546, !547}
!546 = !DILocalVariable(name: "conn", scope: !542, file: !3, line: 177, type: !198)
!547 = !DILocalVariable(name: "num", scope: !542, file: !3, line: 178, type: !193)
!548 = !DILocation(line: 178, column: 8, scope: !542)
!549 = !DILocation(line: 179, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !542, file: !3, line: 179, column: 5)
!551 = !{!552, !552, i64 0}
!552 = !{!"any pointer", !524, i64 0}
!553 = !DILocation(line: 180, column: 34, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 180, column: 13)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 179, column: 35)
!556 = distinct !DILexicalBlock(scope: !550, file: !3, line: 179, column: 5)
!557 = !DILocation(line: 184, column: 5, scope: !542)
!558 = distinct !DISubprogram(name: "a2dp_connect_status_register", scope: !3, file: !3, line: 418, type: !559, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !489}
!561 = !{!562}
!562 = !DILocalVariable(name: "cbk", arg: 1, scope: !558, file: !3, line: 418, type: !489)
!563 = !DILocation(line: 418, column: 42, scope: !558)
!564 = !DILocation(line: 420, column: 24, scope: !558)
!565 = !DILocation(line: 421, column: 1, scope: !558)
!566 = distinct !DISubprogram(name: "__a2dp_conn_for_addr", scope: !3, file: !3, line: 465, type: !567, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!198, !352}
!569 = !{!570, !571}
!570 = !DILocalVariable(name: "addr", arg: 1, scope: !566, file: !3, line: 465, type: !352)
!571 = !DILocalVariable(name: "conn", scope: !566, file: !3, line: 467, type: !198)
!572 = !DILocation(line: 465, column: 50, scope: !566)
!573 = !DILocation(line: 467, column: 23, scope: !566)
!574 = !DILocation(line: 469, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !3, line: 469, column: 5)
!576 = !DILocation(line: 469, column: 5, scope: !577)
!577 = !DILexicalBlockFile(scope: !575, file: !3, discriminator: 1)
!578 = !DILocation(line: 470, column: 21, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 470, column: 13)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 469, column: 35)
!581 = distinct !DILexicalBlock(scope: !575, file: !3, line: 469, column: 5)
!582 = !DILocation(line: 470, column: 14, scope: !579)
!583 = !DILocation(line: 470, column: 13, scope: !580)
!584 = !DILocation(line: 469, column: 5, scope: !585)
!585 = !DILexicalBlockFile(scope: !581, file: !3, discriminator: 2)
!586 = !DILocation(line: 469, column: 5, scope: !587)
!587 = !DILexicalBlockFile(scope: !581, file: !3, discriminator: 1)
!588 = distinct !{!588, !574, !589}
!589 = !DILocation(line: 473, column: 5, scope: !575)
!590 = !DILocation(line: 476, column: 1, scope: !566)
!591 = distinct !DISubprogram(name: "__a2dp_conn_for_channel", scope: !3, file: !3, line: 478, type: !592, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!198, !275}
!594 = !{!595, !596}
!595 = !DILocalVariable(name: "channel", arg: 1, scope: !591, file: !3, line: 478, type: !275)
!596 = !DILocalVariable(name: "conn", scope: !591, file: !3, line: 480, type: !198)
!597 = !DILocation(line: 478, column: 47, scope: !591)
!598 = !DILocation(line: 482, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !591, file: !3, line: 482, column: 9)
!600 = !DILocation(line: 482, column: 20, scope: !599)
!601 = !DILocation(line: 482, column: 9, scope: !591)
!602 = !DILocation(line: 480, column: 23, scope: !591)
!603 = !DILocation(line: 486, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 486, column: 5)
!606 = distinct !DILexicalBlock(scope: !591, file: !3, line: 486, column: 5)
!607 = !DILocation(line: 486, column: 5, scope: !606)
!608 = !DILocation(line: 486, column: 5, scope: !609)
!609 = !DILexicalBlockFile(scope: !606, file: !3, discriminator: 1)
!610 = !DILocation(line: 487, column: 41, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 487, column: 13)
!612 = distinct !DILexicalBlock(scope: !605, file: !3, line: 486, column: 35)
!613 = !{!614, !619, i64 74}
!614 = !{!"a2dp_conn", !524, i64 0, !615, i64 6, !616, i64 8, !620, i64 104}
!615 = !{!"", !524, i64 0, !524, i64 0, !524, i64 0}
!616 = !{!"avdtp", !524, i64 0, !617, i64 56}
!617 = !{!"", !618, i64 0, !552, i64 4, !524, i64 8, !619, i64 10, !524, i64 12, !524, i64 20, !524, i64 36, !524, i64 37, !524, i64 38, !524, i64 38, !524, i64 39, !524, i64 39, !524, i64 39, !524, i64 39}
!618 = !{!"_avdtp_stream", !524, i64 0, !524, i64 0, !524, i64 0, !524, i64 0, !524, i64 0}
!619 = !{!"short", !524, i64 0}
!620 = !{!"a2dp_media", !621, i64 0, !552, i64 8, !552, i64 12, !622, i64 16, !524, i64 20, !524, i64 20, !524, i64 21}
!621 = !{!"", !619, i64 0, !619, i64 2, !622, i64 4}
!622 = !{!"int", !524, i64 0}
!623 = !DILocation(line: 487, column: 49, scope: !611)
!624 = !DILocation(line: 487, column: 60, scope: !611)
!625 = !DILocation(line: 487, column: 91, scope: !626)
!626 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 1)
!627 = !{!614, !619, i64 104}
!628 = !DILocation(line: 487, column: 99, scope: !626)
!629 = !DILocation(line: 487, column: 13, scope: !630)
!630 = !DILexicalBlockFile(scope: !612, file: !3, discriminator: 1)
!631 = !DILocation(line: 486, column: 5, scope: !632)
!632 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 2)
!633 = distinct !{!633, !607, !634}
!634 = !DILocation(line: 490, column: 5, scope: !606)
!635 = !DILocation(line: 493, column: 1, scope: !591)
!636 = distinct !DISubprogram(name: "__close_all_a2dp_media_coder", scope: !3, file: !3, line: 675, type: !637, isLocal: false, isDefinition: true, scopeLine: 676, isOptimized: true, unit: !2, variables: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{null}
!639 = !{!640}
!640 = !DILocalVariable(name: "conn", scope: !636, file: !3, line: 680, type: !198)
!641 = !DILocation(line: 677, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !3, line: 677, column: 9)
!643 = !DILocation(line: 677, column: 20, scope: !642)
!644 = !DILocation(line: 677, column: 9, scope: !636)
!645 = !DILocation(line: 680, column: 23, scope: !636)
!646 = !DILocation(line: 681, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !636, file: !3, line: 681, column: 5)
!648 = !DILocation(line: 682, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 681, column: 35)
!650 = distinct !DILexicalBlock(scope: !647, file: !3, line: 681, column: 5)
!651 = !DILocation(line: 681, column: 5, scope: !652)
!652 = !DILexicalBlockFile(scope: !650, file: !3, discriminator: 2)
!653 = !DILocation(line: 681, column: 5, scope: !654)
!654 = !DILexicalBlockFile(scope: !650, file: !3, discriminator: 1)
!655 = !DILocation(line: 681, column: 5, scope: !656)
!656 = !DILexicalBlockFile(scope: !647, file: !3, discriminator: 1)
!657 = distinct !{!657, !646, !658}
!658 = !DILocation(line: 683, column: 5, scope: !647)
!659 = !DILocation(line: 684, column: 1, scope: !660)
!660 = !DILexicalBlockFile(scope: !636, file: !3, discriminator: 1)
!661 = distinct !DISubprogram(name: "__a2dp_conn_send_discover_cnt", scope: !3, file: !3, line: 1465, type: !543, isLocal: false, isDefinition: true, scopeLine: 1466, isOptimized: true, unit: !2, variables: !662)
!662 = !{!663, !664}
!663 = !DILocalVariable(name: "a2dp_discover_req_status", scope: !661, file: !3, line: 1467, type: !193)
!664 = !DILocalVariable(name: "conn", scope: !661, file: !3, line: 1468, type: !198)
!665 = !DILocation(line: 1467, column: 8, scope: !661)
!666 = !DILocation(line: 1469, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !3, line: 1469, column: 9)
!668 = !DILocation(line: 1469, column: 20, scope: !667)
!669 = !DILocation(line: 1469, column: 9, scope: !661)
!670 = !DILocation(line: 1468, column: 23, scope: !661)
!671 = !DILocation(line: 1515, column: 5, scope: !672)
!672 = distinct !DILexicalBlock(scope: !661, file: !3, line: 1515, column: 5)
!673 = !DILocation(line: 1516, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 1516, column: 13)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 1515, column: 35)
!676 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1515, column: 5)
!677 = !DILocation(line: 1516, column: 18, scope: !674)
!678 = !DILocation(line: 1516, column: 28, scope: !679)
!679 = !DILexicalBlockFile(scope: !674, file: !3, discriminator: 1)
!680 = !DILocation(line: 1516, column: 50, scope: !679)
!681 = !DILocation(line: 1516, column: 59, scope: !679)
!682 = !DILocation(line: 1516, column: 13, scope: !683)
!683 = !DILexicalBlockFile(scope: !675, file: !3, discriminator: 1)
!684 = !DILocation(line: 1517, column: 38, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 1517, column: 17)
!686 = distinct !DILexicalBlock(scope: !674, file: !3, line: 1516, column: 65)
!687 = !DILocation(line: 1517, column: 51, scope: !685)
!688 = !DILocation(line: 1517, column: 17, scope: !686)
!689 = !DILocation(line: 1518, column: 50, scope: !690)
!690 = distinct !DILexicalBlock(scope: !685, file: !3, line: 1517, column: 57)
!691 = !DILocation(line: 1519, column: 17, scope: !692)
!692 = distinct !DILexicalBlock(scope: !690, file: !3, line: 1519, column: 17)
!693 = !{!524, !524, i64 0}
!694 = !DILocation(line: 1519, column: 17, scope: !690)
!695 = !DILocation(line: 1519, column: 17, scope: !696)
!696 = !DILexicalBlockFile(scope: !692, file: !3, discriminator: 1)
!697 = !DILocation(line: 1520, column: 47, scope: !698)
!698 = distinct !DILexicalBlock(scope: !690, file: !3, line: 1520, column: 21)
!699 = !DILocation(line: 1520, column: 23, scope: !698)
!700 = !DILocation(line: 1520, column: 21, scope: !690)
!701 = !DILocation(line: 1521, column: 55, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !3, line: 1520, column: 61)
!703 = !DILocation(line: 1522, column: 56, scope: !702)
!704 = !DILocation(line: 1522, column: 65, scope: !702)
!705 = !DILocation(line: 1523, column: 21, scope: !702)
!706 = !DILocation(line: 1524, column: 21, scope: !702)
!707 = !DILocation(line: 1525, column: 17, scope: !702)
!708 = !DILocation(line: 1515, column: 5, scope: !709)
!709 = !DILexicalBlockFile(scope: !676, file: !3, discriminator: 2)
!710 = !DILocation(line: 1515, column: 5, scope: !711)
!711 = !DILexicalBlockFile(scope: !676, file: !3, discriminator: 1)
!712 = !DILocation(line: 1515, column: 5, scope: !713)
!713 = !DILexicalBlockFile(scope: !672, file: !3, discriminator: 1)
!714 = distinct !{!714, !671, !715}
!715 = !DILocation(line: 1530, column: 5, scope: !672)
!716 = !DILocation(line: 1536, column: 5, scope: !661)
!717 = !DILocation(line: 1537, column: 1, scope: !661)
!718 = distinct !DISubprogram(name: "a2dp_send_cmd", scope: !3, file: !3, line: 1598, type: !719, isLocal: false, isDefinition: true, scopeLine: 1599, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!340, !352, !333}
!721 = !{!722, !723, !724}
!722 = !DILocalVariable(name: "addr", arg: 1, scope: !718, file: !3, line: 1598, type: !352)
!723 = !DILocalVariable(name: "cmd", arg: 2, scope: !718, file: !3, line: 1598, type: !333)
!724 = !DILocalVariable(name: "conn", scope: !718, file: !3, line: 1600, type: !198)
!725 = !DILocation(line: 1598, column: 29, scope: !718)
!726 = !DILocation(line: 1598, column: 39, scope: !718)
!727 = !DILocation(line: 1601, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1601, column: 9)
!729 = !DILocation(line: 1601, column: 20, scope: !728)
!730 = !DILocation(line: 1601, column: 9, scope: !718)
!731 = !DILocation(line: 1604, column: 26, scope: !732)
!732 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1604, column: 9)
!733 = !DILocation(line: 1604, column: 9, scope: !718)
!734 = !DILocation(line: 1545, column: 12, scope: !735, inlinedAt: !741)
!735 = distinct !DISubprogram(name: "a2dp_connection", scope: !3, file: !3, line: 1541, type: !736, isLocal: true, isDefinition: true, scopeLine: 1542, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!340, !352}
!738 = !{!739, !740}
!739 = !DILocalVariable(name: "addr", arg: 1, scope: !735, file: !3, line: 1541, type: !352)
!740 = !DILocalVariable(name: "conn", scope: !735, file: !3, line: 1543, type: !198)
!741 = distinct !DILocation(line: 1605, column: 16, scope: !742)
!742 = distinct !DILexicalBlock(scope: !732, file: !3, line: 1604, column: 34)
!743 = !DILocation(line: 1543, column: 23, scope: !735, inlinedAt: !741)
!744 = !DILocation(line: 1547, column: 10, scope: !745, inlinedAt: !741)
!745 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1547, column: 9)
!746 = !DILocation(line: 1547, column: 9, scope: !735, inlinedAt: !741)
!747 = !DILocation(line: 1548, column: 16, scope: !748, inlinedAt: !741)
!748 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1547, column: 16)
!749 = !DILocation(line: 1551, column: 9, scope: !750, inlinedAt: !741)
!750 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1551, column: 9)
!751 = !DILocation(line: 1551, column: 9, scope: !735, inlinedAt: !741)
!752 = !DILocation(line: 1552, column: 27, scope: !753, inlinedAt: !741)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 1552, column: 13)
!754 = distinct !DILexicalBlock(scope: !750, file: !3, line: 1551, column: 15)
!755 = !DILocation(line: 1552, column: 41, scope: !753, inlinedAt: !741)
!756 = !DILocation(line: 1552, column: 49, scope: !753, inlinedAt: !741)
!757 = !DILocation(line: 1552, column: 13, scope: !754, inlinedAt: !741)
!758 = !DILocation(line: 1553, column: 17, scope: !759, inlinedAt: !741)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 1553, column: 17)
!760 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1552, column: 55)
!761 = !DILocation(line: 1553, column: 17, scope: !760, inlinedAt: !741)
!762 = !DILocation(line: 1554, column: 38, scope: !763, inlinedAt: !741)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1553, column: 45)
!764 = !DILocation(line: 1554, column: 51, scope: !763, inlinedAt: !741)
!765 = !DILocation(line: 1555, column: 13, scope: !763, inlinedAt: !741)
!766 = !DILocation(line: 1556, column: 54, scope: !767, inlinedAt: !741)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 1556, column: 21)
!768 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1555, column: 20)
!769 = !DILocation(line: 1556, column: 21, scope: !767, inlinedAt: !741)
!770 = !DILocation(line: 1556, column: 21, scope: !768, inlinedAt: !741)
!771 = !DILocation(line: 1564, column: 38, scope: !772, inlinedAt: !741)
!772 = distinct !DILexicalBlock(scope: !760, file: !3, line: 1564, column: 17)
!773 = !DILocation(line: 1564, column: 51, scope: !772, inlinedAt: !741)
!774 = !DILocation(line: 1564, column: 17, scope: !760, inlinedAt: !741)
!775 = !DILocation(line: 1565, column: 17, scope: !776, inlinedAt: !741)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 1564, column: 56)
!777 = !DILocation(line: 1566, column: 13, scope: !776, inlinedAt: !741)
!778 = !DILocation(line: 1568, column: 48, scope: !760, inlinedAt: !741)
!779 = !DILocation(line: 1568, column: 57, scope: !760, inlinedAt: !741)
!780 = !DILocation(line: 1569, column: 13, scope: !760, inlinedAt: !741)
!781 = !DILocation(line: 1571, column: 9, scope: !760, inlinedAt: !741)
!782 = !DILocation(line: 1571, column: 48, scope: !783, inlinedAt: !741)
!783 = !DILexicalBlockFile(scope: !784, file: !3, discriminator: 1)
!784 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1571, column: 20)
!785 = !DILocation(line: 1571, column: 56, scope: !783, inlinedAt: !741)
!786 = !DILocation(line: 1571, column: 20, scope: !787, inlinedAt: !741)
!787 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 1)
!788 = !DILocation(line: 1575, column: 34, scope: !789, inlinedAt: !741)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1571, column: 62)
!790 = !DILocation(line: 1575, column: 47, scope: !789, inlinedAt: !741)
!791 = !DILocation(line: 1576, column: 48, scope: !789, inlinedAt: !741)
!792 = !DILocation(line: 1576, column: 57, scope: !789, inlinedAt: !741)
!793 = !DILocation(line: 1577, column: 13, scope: !789, inlinedAt: !741)
!794 = !DILocation(line: 1578, column: 9, scope: !789, inlinedAt: !741)
!795 = !DILocation(line: 1608, column: 12, scope: !718)
!796 = !DILocation(line: 1600, column: 23, scope: !718)
!797 = !DILocation(line: 1609, column: 14, scope: !798)
!798 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1609, column: 9)
!799 = !DILocation(line: 1609, column: 9, scope: !718)
!800 = !DILocation(line: 1613, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 1612, column: 15)
!802 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1612, column: 9)
!803 = !DILocation(line: 1615, column: 67, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1613, column: 22)
!805 = !DILocation(line: 1615, column: 13, scope: !804)
!806 = !DILocation(line: 1616, column: 67, scope: !804)
!807 = !DILocation(line: 1616, column: 13, scope: !804)
!808 = !DILocation(line: 1617, column: 13, scope: !804)
!809 = !DILocation(line: 1653, column: 43, scope: !804)
!810 = !DILocation(line: 1653, column: 13, scope: !804)
!811 = !DILocation(line: 1654, column: 13, scope: !804)
!812 = !DILocation(line: 1659, column: 1, scope: !718)
!813 = distinct !DISubprogram(name: "a2dp_init", scope: !3, file: !3, line: 1765, type: !814, isLocal: false, isDefinition: true, scopeLine: 1766, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !479}
!816 = !{!817}
!817 = !DILocalVariable(name: "stack", arg: 1, scope: !813, file: !3, line: 1765, type: !479)
!818 = !DILocation(line: 1765, column: 30, scope: !813)
!819 = !DILocation(line: 1767, column: 16, scope: !813)
!820 = !DILocation(line: 1769, column: 5, scope: !813)
!821 = !DILocation(line: 1772, column: 5, scope: !813)
!822 = !DILocation(line: 1773, column: 1, scope: !813)
!823 = distinct !DISubprogram(name: "__a2dp_packet_handler", scope: !3, file: !3, line: 1749, type: !824, isLocal: true, isDefinition: true, scopeLine: 1750, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !193, !275, !197, !275}
!826 = !{!827, !828, !829, !830, !831}
!827 = !DILocalVariable(name: "packet_type", arg: 1, scope: !823, file: !3, line: 1749, type: !193)
!828 = !DILocalVariable(name: "channel", arg: 2, scope: !823, file: !3, line: 1749, type: !275)
!829 = !DILocalVariable(name: "packet", arg: 3, scope: !823, file: !3, line: 1749, type: !197)
!830 = !DILocalVariable(name: "size", arg: 4, scope: !823, file: !3, line: 1749, type: !275)
!831 = !DILocalVariable(name: "conn", scope: !823, file: !3, line: 1751, type: !198)
!832 = !DILocalVariable(name: "addr", scope: !833, file: !3, line: 501, type: !841)
!833 = distinct !DISubprogram(name: "a2dp_incoming_connection", scope: !3, file: !3, line: 499, type: !834, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !275, !197, !275}
!836 = !{!837, !838, !839, !832, !840}
!837 = !DILocalVariable(name: "channel", arg: 1, scope: !833, file: !3, line: 499, type: !275)
!838 = !DILocalVariable(name: "packet", arg: 2, scope: !833, file: !3, line: 499, type: !197)
!839 = !DILocalVariable(name: "size", arg: 3, scope: !833, file: !3, line: 499, type: !275)
!840 = !DILocalVariable(name: "conn", scope: !833, file: !3, line: 502, type: !198)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !842, line: 7, baseType: !204)
!842 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!843 = !DILocation(line: 501, column: 15, scope: !833, inlinedAt: !844)
!844 = distinct !DILocation(line: 1718, column: 13, scope: !845, inlinedAt: !854)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 1716, column: 28)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 1705, column: 26)
!847 = distinct !DISubprogram(name: "a2dp_packet_handler", scope: !3, file: !3, line: 1702, type: !824, isLocal: true, isDefinition: true, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !848)
!848 = !{!849, !850, !851, !852, !853}
!849 = !DILocalVariable(name: "packet_type", arg: 1, scope: !847, file: !3, line: 1702, type: !193)
!850 = !DILocalVariable(name: "channel", arg: 2, scope: !847, file: !3, line: 1702, type: !275)
!851 = !DILocalVariable(name: "packet", arg: 3, scope: !847, file: !3, line: 1702, type: !197)
!852 = !DILocalVariable(name: "size", arg: 4, scope: !847, file: !3, line: 1702, type: !275)
!853 = !DILocalVariable(name: "conn", scope: !847, file: !3, line: 1704, type: !198)
!854 = distinct !DILocation(line: 1761, column: 5, scope: !823)
!855 = !DILocation(line: 1749, column: 38, scope: !823)
!856 = !DILocation(line: 1749, column: 55, scope: !823)
!857 = !DILocation(line: 1749, column: 68, scope: !823)
!858 = !DILocation(line: 1749, column: 80, scope: !823)
!859 = !DILocation(line: 1753, column: 9, scope: !823)
!860 = !DILocation(line: 1754, column: 17, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1753, column: 42)
!862 = distinct !DILexicalBlock(scope: !823, file: !3, line: 1753, column: 9)
!863 = !DILocation(line: 1754, column: 9, scope: !861)
!864 = !DILocation(line: 1756, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 1754, column: 28)
!866 = !DILocation(line: 1757, column: 13, scope: !865)
!867 = !DILocation(line: 1707, column: 16, scope: !846, inlinedAt: !854)
!868 = !DILocation(line: 1704, column: 23, scope: !847, inlinedAt: !854)
!869 = !DILocation(line: 1708, column: 41, scope: !870, inlinedAt: !854)
!870 = distinct !DILexicalBlock(scope: !846, file: !3, line: 1708, column: 13)
!871 = !DILocation(line: 1708, column: 49, scope: !870, inlinedAt: !854)
!872 = !DILocation(line: 1708, column: 13, scope: !846, inlinedAt: !854)
!873 = !DILocation(line: 1708, column: 19, scope: !870, inlinedAt: !854)
!874 = !DILocation(line: 1709, column: 13, scope: !875, inlinedAt: !854)
!875 = distinct !DILexicalBlock(scope: !870, file: !3, line: 1708, column: 61)
!876 = !DILocation(line: 1710, column: 9, scope: !875, inlinedAt: !854)
!877 = !DILocation(line: 1710, column: 48, scope: !878, inlinedAt: !854)
!878 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 1)
!879 = distinct !DILexicalBlock(scope: !870, file: !3, line: 1710, column: 20)
!880 = !DILocation(line: 1710, column: 56, scope: !878, inlinedAt: !854)
!881 = !DILocation(line: 1710, column: 20, scope: !882, inlinedAt: !854)
!882 = !DILexicalBlockFile(scope: !870, file: !3, discriminator: 1)
!883 = !DILocalVariable(name: "conn", arg: 1, scope: !884, file: !3, line: 224, type: !198)
!884 = distinct !DISubprogram(name: "a2dp_media_packet", scope: !3, file: !3, line: 224, type: !885, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !198, !197, !275}
!887 = !{!883, !888, !889, !890}
!888 = !DILocalVariable(name: "packet", arg: 2, scope: !884, file: !3, line: 224, type: !197)
!889 = !DILocalVariable(name: "size", arg: 3, scope: !884, file: !3, line: 224, type: !275)
!890 = !DILocalVariable(name: "handler", scope: !884, file: !3, line: 236, type: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 32)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_event_handler", file: !17, line: 252, size: 224, elements: !893)
!893 = !{!894, !895, !899, !903, !905, !909, !910}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !892, file: !17, line: 253, baseType: !340, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "channel_open", scope: !892, file: !17, line: 254, baseType: !896, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 32)
!897 = !DISubroutineType(types: !898)
!898 = !{!340, !198, !340, !193}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "event_credits", scope: !892, file: !17, line: 255, baseType: !900, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 32)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !198}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "media_packet", scope: !892, file: !17, line: 256, baseType: !904, size: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !892, file: !17, line: 257, baseType: !906, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 32)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !198, !352}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !892, file: !17, line: 258, baseType: !906, size: 32, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !892, file: !17, line: 259, baseType: !900, size: 32, offset: 192)
!911 = !DILocation(line: 224, column: 49, scope: !884, inlinedAt: !912)
!912 = distinct !DILocation(line: 1711, column: 13, scope: !913, inlinedAt: !854)
!913 = distinct !DILexicalBlock(scope: !879, file: !3, line: 1710, column: 68)
!914 = !DILocation(line: 224, column: 59, scope: !884, inlinedAt: !912)
!915 = !DILocation(line: 224, column: 71, scope: !884, inlinedAt: !912)
!916 = !DILocation(line: 231, column: 37, scope: !917, inlinedAt: !912)
!917 = distinct !DILexicalBlock(scope: !884, file: !3, line: 231, column: 9)
!918 = !{!614, !552, i64 68}
!919 = !DILocation(line: 231, column: 48, scope: !917, inlinedAt: !912)
!920 = !DILocation(line: 231, column: 9, scope: !917, inlinedAt: !912)
!921 = !DILocation(line: 231, column: 54, scope: !917, inlinedAt: !912)
!922 = !DILocation(line: 231, column: 9, scope: !884, inlinedAt: !912)
!923 = !DILocation(line: 232, column: 9, scope: !924, inlinedAt: !912)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 232, column: 9)
!925 = distinct !DILexicalBlock(scope: !917, file: !3, line: 231, column: 80)
!926 = !DILocation(line: 232, column: 9, scope: !925, inlinedAt: !912)
!927 = !DILocation(line: 232, column: 9, scope: !928, inlinedAt: !912)
!928 = !DILexicalBlockFile(scope: !924, file: !3, discriminator: 1)
!929 = !DILocation(line: 237, column: 9, scope: !930, inlinedAt: !912)
!930 = distinct !DILexicalBlock(scope: !884, file: !3, line: 237, column: 9)
!931 = !DILocation(line: 237, column: 29, scope: !930, inlinedAt: !912)
!932 = !DILocation(line: 237, column: 9, scope: !884, inlinedAt: !912)
!933 = !DILocation(line: 241, column: 9, scope: !934, inlinedAt: !912)
!934 = distinct !DILexicalBlock(scope: !884, file: !3, line: 241, column: 9)
!935 = !DILocation(line: 247, column: 9, scope: !936, inlinedAt: !912)
!936 = distinct !DILexicalBlock(scope: !884, file: !3, line: 247, column: 9)
!937 = !DILocation(line: 247, column: 9, scope: !884, inlinedAt: !912)
!938 = !DILocation(line: 254, column: 9, scope: !939, inlinedAt: !912)
!939 = distinct !DILexicalBlock(scope: !884, file: !3, line: 254, column: 9)
!940 = !{!622, !622, i64 0}
!941 = !DILocation(line: 254, column: 9, scope: !884, inlinedAt: !912)
!942 = !DILocation(line: 236, column: 32, scope: !884, inlinedAt: !912)
!943 = !DILocation(line: 274, column: 5, scope: !944, inlinedAt: !912)
!944 = !DILexicalBlockFile(scope: !945, file: !3, discriminator: 1)
!945 = distinct !DILexicalBlock(scope: !884, file: !3, line: 274, column: 5)
!946 = !DILocation(line: 255, column: 14, scope: !947, inlinedAt: !912)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 255, column: 13)
!948 = distinct !DILexicalBlock(scope: !939, file: !3, line: 254, column: 36)
!949 = !DILocation(line: 255, column: 37, scope: !947, inlinedAt: !912)
!950 = !DILocation(line: 255, column: 65, scope: !947, inlinedAt: !912)
!951 = !DILocation(line: 255, column: 70, scope: !952, inlinedAt: !912)
!952 = !DILexicalBlockFile(scope: !947, file: !3, discriminator: 1)
!953 = !DILocation(line: 255, column: 93, scope: !952, inlinedAt: !912)
!954 = !DILocation(line: 255, column: 13, scope: !955, inlinedAt: !912)
!955 = !DILexicalBlockFile(scope: !948, file: !3, discriminator: 1)
!956 = !DILocation(line: 257, column: 13, scope: !957, inlinedAt: !912)
!957 = distinct !DILexicalBlock(scope: !947, file: !3, line: 255, column: 118)
!958 = !DILocation(line: 258, column: 13, scope: !957, inlinedAt: !912)
!959 = !DILocation(line: 275, column: 22, scope: !960, inlinedAt: !912)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 275, column: 13)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 274, column: 42)
!962 = distinct !DILexicalBlock(scope: !945, file: !3, line: 274, column: 5)
!963 = !{!964, !622, i64 0}
!964 = !{!"a2dp_event_handler", !622, i64 0, !552, i64 4, !552, i64 8, !552, i64 12, !552, i64 16, !552, i64 20, !552, i64 24}
!965 = !DILocation(line: 275, column: 58, scope: !960, inlinedAt: !912)
!966 = !DILocation(line: 275, column: 27, scope: !960, inlinedAt: !912)
!967 = !DILocation(line: 275, column: 13, scope: !961, inlinedAt: !912)
!968 = !DILocation(line: 276, column: 26, scope: !969, inlinedAt: !912)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 276, column: 17)
!970 = distinct !DILexicalBlock(scope: !960, file: !3, line: 275, column: 64)
!971 = !{!964, !552, i64 12}
!972 = !DILocation(line: 276, column: 17, scope: !969, inlinedAt: !912)
!973 = !DILocation(line: 276, column: 17, scope: !970, inlinedAt: !912)
!974 = !DILocation(line: 277, column: 17, scope: !975, inlinedAt: !912)
!975 = distinct !DILexicalBlock(scope: !969, file: !3, line: 276, column: 40)
!976 = !DILocation(line: 278, column: 13, scope: !975, inlinedAt: !912)
!977 = !DILocation(line: 274, column: 5, scope: !978, inlinedAt: !912)
!978 = !DILexicalBlockFile(scope: !962, file: !3, discriminator: 2)
!979 = !DILocation(line: 274, column: 5, scope: !980, inlinedAt: !912)
!980 = !DILexicalBlockFile(scope: !962, file: !3, discriminator: 1)
!981 = distinct !{!981, !982, !983}
!982 = !DILocation(line: 274, column: 5, scope: !945)
!983 = !DILocation(line: 280, column: 5, scope: !945)
!984 = !DILocation(line: 499, column: 67, scope: !833, inlinedAt: !844)
!985 = !DILocation(line: 501, column: 5, scope: !833, inlinedAt: !844)
!986 = !DILocation(line: 504, column: 5, scope: !987, inlinedAt: !844)
!987 = distinct !DILexicalBlock(scope: !833, file: !3, line: 504, column: 5)
!988 = !DILocation(line: 504, column: 5, scope: !833, inlinedAt: !844)
!989 = !DILocation(line: 504, column: 5, scope: !990, inlinedAt: !844)
!990 = !DILexicalBlockFile(scope: !987, file: !3, discriminator: 1)
!991 = !DILocation(line: 506, column: 31, scope: !833, inlinedAt: !844)
!992 = !DILocation(line: 506, column: 5, scope: !833, inlinedAt: !844)
!993 = !DILocation(line: 508, column: 12, scope: !833, inlinedAt: !844)
!994 = !DILocation(line: 502, column: 23, scope: !833, inlinedAt: !844)
!995 = !DILocation(line: 509, column: 10, scope: !996, inlinedAt: !844)
!996 = distinct !DILexicalBlock(scope: !833, file: !3, line: 509, column: 9)
!997 = !DILocation(line: 509, column: 9, scope: !833, inlinedAt: !844)
!998 = !DILocation(line: 510, column: 16, scope: !999, inlinedAt: !844)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 509, column: 16)
!1000 = !DILocation(line: 512, column: 9, scope: !1001, inlinedAt: !844)
!1001 = distinct !DILexicalBlock(scope: !833, file: !3, line: 512, column: 9)
!1002 = !DILocation(line: 512, column: 9, scope: !833, inlinedAt: !844)
!1003 = !DILocation(line: 513, column: 13, scope: !1004, inlinedAt: !844)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 513, column: 13)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 512, column: 15)
!1006 = !DILocation(line: 513, column: 13, scope: !1005, inlinedAt: !844)
!1007 = !DILocation(line: 514, column: 45, scope: !1008, inlinedAt: !844)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 514, column: 17)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 513, column: 35)
!1010 = !DILocation(line: 514, column: 50, scope: !1008, inlinedAt: !844)
!1011 = !DILocation(line: 514, column: 17, scope: !1009, inlinedAt: !844)
!1012 = !DILocation(line: 515, column: 56, scope: !1013, inlinedAt: !844)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 515, column: 21)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 514, column: 66)
!1015 = !DILocation(line: 515, column: 21, scope: !1013, inlinedAt: !844)
!1016 = !DILocation(line: 516, column: 21, scope: !1013, inlinedAt: !844)
!1017 = !DILocation(line: 516, column: 53, scope: !1018, inlinedAt: !844)
!1018 = !DILexicalBlockFile(scope: !1013, file: !3, discriminator: 1)
!1019 = !DILocation(line: 516, column: 61, scope: !1018, inlinedAt: !844)
!1020 = !DILocation(line: 515, column: 21, scope: !1021, inlinedAt: !844)
!1021 = !DILexicalBlockFile(scope: !1014, file: !3, discriminator: 1)
!1022 = !DILocation(line: 520, column: 21, scope: !1023, inlinedAt: !844)
!1023 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 516, column: 68)
!1024 = !DILocation(line: 521, column: 21, scope: !1023, inlinedAt: !844)
!1025 = !DILocation(line: 525, column: 41, scope: !1026, inlinedAt: !844)
!1026 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 525, column: 13)
!1027 = !DILocation(line: 525, column: 49, scope: !1026, inlinedAt: !844)
!1028 = !DILocation(line: 525, column: 54, scope: !1026, inlinedAt: !844)
!1029 = !DILocation(line: 525, column: 85, scope: !1030, inlinedAt: !844)
!1030 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1031 = !DILocation(line: 525, column: 93, scope: !1030, inlinedAt: !844)
!1032 = !DILocation(line: 525, column: 13, scope: !1033, inlinedAt: !844)
!1033 = !DILexicalBlockFile(scope: !1005, file: !3, discriminator: 1)
!1034 = !DILocation(line: 526, column: 13, scope: !1035, inlinedAt: !844)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 525, column: 99)
!1036 = !DILocation(line: 527, column: 9, scope: !1035, inlinedAt: !844)
!1037 = !DILocation(line: 529, column: 1, scope: !833, inlinedAt: !844)
!1038 = !DILocation(line: 1719, column: 13, scope: !845, inlinedAt: !854)
!1039 = !DILocation(line: 1721, column: 17, scope: !1040, inlinedAt: !854)
!1040 = distinct !DILexicalBlock(scope: !845, file: !3, line: 1721, column: 17)
!1041 = !DILocation(line: 1721, column: 27, scope: !1040, inlinedAt: !854)
!1042 = !DILocation(line: 1721, column: 17, scope: !845, inlinedAt: !854)
!1043 = !DILocation(line: 1722, column: 17, scope: !1044, inlinedAt: !854)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1721, column: 33)
!1045 = !DILocation(line: 1723, column: 13, scope: !1044, inlinedAt: !854)
!1046 = !DILocalVariable(name: "size", arg: 3, scope: !1047, file: !3, line: 635, type: !275)
!1047 = distinct !DISubprogram(name: "a2dp_channel_open_faild", scope: !3, file: !3, line: 635, type: !834, isLocal: true, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1048)
!1048 = !{!1049, !1050, !1046, !1051, !1052}
!1049 = !DILocalVariable(name: "channel", arg: 1, scope: !1047, file: !3, line: 635, type: !275)
!1050 = !DILocalVariable(name: "packet", arg: 2, scope: !1047, file: !3, line: 635, type: !197)
!1051 = !DILocalVariable(name: "addr", scope: !1047, file: !3, line: 637, type: !841)
!1052 = !DILocalVariable(name: "conn", scope: !1047, file: !3, line: 638, type: !198)
!1053 = !DILocation(line: 635, column: 66, scope: !1047, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 1724, column: 17, scope: !1055, inlinedAt: !854)
!1055 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1723, column: 20)
!1056 = !DILocation(line: 637, column: 5, scope: !1047, inlinedAt: !1054)
!1057 = !DILocation(line: 640, column: 31, scope: !1047, inlinedAt: !1054)
!1058 = !DILocation(line: 640, column: 5, scope: !1047, inlinedAt: !1054)
!1059 = !DILocation(line: 642, column: 12, scope: !1047, inlinedAt: !1054)
!1060 = !DILocation(line: 638, column: 23, scope: !1047, inlinedAt: !1054)
!1061 = !DILocation(line: 643, column: 9, scope: !1062, inlinedAt: !1054)
!1062 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 643, column: 9)
!1063 = !DILocation(line: 643, column: 9, scope: !1047, inlinedAt: !1054)
!1064 = !DILocation(line: 644, column: 9, scope: !1065, inlinedAt: !1054)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 643, column: 15)
!1066 = !DILocation(line: 645, column: 5, scope: !1065, inlinedAt: !1054)
!1067 = !DILocation(line: 648, column: 9, scope: !1068, inlinedAt: !1054)
!1068 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 648, column: 9)
!1069 = !DILocation(line: 648, column: 9, scope: !1047, inlinedAt: !1054)
!1070 = !DILocation(line: 649, column: 13, scope: !1071, inlinedAt: !1054)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 649, column: 13)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 648, column: 31)
!1073 = !DILocation(line: 649, column: 23, scope: !1071, inlinedAt: !1054)
!1074 = !DILocation(line: 649, column: 13, scope: !1072, inlinedAt: !1054)
!1075 = !DILocation(line: 650, column: 45, scope: !1076, inlinedAt: !1054)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 650, column: 17)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 649, column: 65)
!1078 = !DILocation(line: 650, column: 50, scope: !1076, inlinedAt: !1054)
!1079 = !DILocation(line: 650, column: 17, scope: !1077, inlinedAt: !1054)
!1080 = !DILocation(line: 651, column: 56, scope: !1081, inlinedAt: !1054)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 651, column: 21)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 650, column: 66)
!1083 = !DILocation(line: 651, column: 21, scope: !1081, inlinedAt: !1054)
!1084 = !DILocation(line: 652, column: 21, scope: !1081, inlinedAt: !1054)
!1085 = !DILocation(line: 652, column: 53, scope: !1086, inlinedAt: !1054)
!1086 = !DILexicalBlockFile(scope: !1081, file: !3, discriminator: 1)
!1087 = !DILocation(line: 652, column: 61, scope: !1086, inlinedAt: !1054)
!1088 = !DILocation(line: 651, column: 21, scope: !1089, inlinedAt: !1054)
!1089 = !DILexicalBlockFile(scope: !1082, file: !3, discriminator: 1)
!1090 = !DILocation(line: 653, column: 25, scope: !1091, inlinedAt: !1054)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 653, column: 25)
!1092 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 652, column: 68)
!1093 = !DILocation(line: 653, column: 52, scope: !1091, inlinedAt: !1054)
!1094 = !DILocation(line: 653, column: 25, scope: !1092, inlinedAt: !1054)
!1095 = !DILocation(line: 654, column: 51, scope: !1096, inlinedAt: !1054)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 653, column: 57)
!1097 = !DILocation(line: 655, column: 25, scope: !1098, inlinedAt: !1054)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 655, column: 25)
!1099 = !DILocation(line: 655, column: 25, scope: !1096, inlinedAt: !1054)
!1100 = !DILocation(line: 655, column: 25, scope: !1101, inlinedAt: !1054)
!1101 = !DILexicalBlockFile(scope: !1098, file: !3, discriminator: 1)
!1102 = !DILocation(line: 656, column: 25, scope: !1096, inlinedAt: !1054)
!1103 = !DILocation(line: 657, column: 21, scope: !1096, inlinedAt: !1054)
!1104 = !DILocation(line: 658, column: 52, scope: !1105, inlinedAt: !1054)
!1105 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 657, column: 28)
!1106 = !DILocation(line: 664, column: 1, scope: !1047, inlinedAt: !1054)
!1107 = !DILocalVariable(name: "channel", arg: 1, scope: !1108, file: !3, line: 666, type: !275)
!1108 = distinct !DISubprogram(name: "a2dp_channel_close", scope: !3, file: !3, line: 666, type: !1109, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !275}
!1111 = !{!1107, !1112}
!1112 = !DILocalVariable(name: "conn", scope: !1108, file: !3, line: 668, type: !198)
!1113 = !DILocation(line: 666, column: 36, scope: !1108, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 1731, column: 13, scope: !845, inlinedAt: !854)
!1115 = !DILocation(line: 668, column: 30, scope: !1108, inlinedAt: !1114)
!1116 = !DILocation(line: 668, column: 23, scope: !1108, inlinedAt: !1114)
!1117 = !DILocation(line: 670, column: 9, scope: !1118, inlinedAt: !1114)
!1118 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 670, column: 9)
!1119 = !DILocation(line: 670, column: 9, scope: !1108, inlinedAt: !1114)
!1120 = !DILocation(line: 671, column: 9, scope: !1121, inlinedAt: !1114)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 670, column: 15)
!1122 = !DILocation(line: 672, column: 5, scope: !1121, inlinedAt: !1114)
!1123 = !DILocation(line: 1736, column: 13, scope: !845, inlinedAt: !854)
!1124 = !DILocation(line: 1737, column: 13, scope: !845, inlinedAt: !854)
!1125 = !DILocation(line: 1762, column: 1, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !823, file: !3, discriminator: 2)
!1127 = distinct !DISubprogram(name: "get_tws_phone_session", scope: !3, file: !3, line: 1789, type: !1128, isLocal: false, isDefinition: true, scopeLine: 1790, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1130)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!278}
!1130 = !{!1131}
!1131 = !DILocalVariable(name: "conn", scope: !1127, file: !3, line: 1791, type: !198)
!1132 = !DILocation(line: 1780, column: 5, scope: !1133, inlinedAt: !1139)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1780, column: 5)
!1134 = distinct !DISubprogram(name: "__a2dp_conn_for_tws", scope: !3, file: !3, line: 1776, type: !1135, isLocal: true, isDefinition: true, scopeLine: 1777, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!198}
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "conn", scope: !1134, file: !3, line: 1778, type: !198)
!1139 = distinct !DILocation(line: 1791, column: 30, scope: !1127)
!1140 = !DILocation(line: 1780, column: 5, scope: !1141, inlinedAt: !1139)
!1141 = !DILexicalBlockFile(scope: !1133, file: !3, discriminator: 1)
!1142 = !DILocation(line: 1781, column: 35, scope: !1143, inlinedAt: !1139)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 1781, column: 13)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1780, column: 35)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 1780, column: 5)
!1146 = !DILocation(line: 1781, column: 13, scope: !1143, inlinedAt: !1139)
!1147 = !DILocation(line: 1781, column: 13, scope: !1144, inlinedAt: !1139)
!1148 = !DILocation(line: 1780, column: 5, scope: !1149, inlinedAt: !1139)
!1149 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 2)
!1150 = !DILocation(line: 1778, column: 23, scope: !1134, inlinedAt: !1139)
!1151 = !DILocation(line: 1780, column: 5, scope: !1152, inlinedAt: !1139)
!1152 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 1)
!1153 = distinct !{!1153, !1154, !1155}
!1154 = !DILocation(line: 1780, column: 5, scope: !1133)
!1155 = !DILocation(line: 1784, column: 5, scope: !1133)
!1156 = !DILocation(line: 1791, column: 23, scope: !1127)
!1157 = !DILocation(line: 1793, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1793, column: 9)
!1159 = !DILocation(line: 1794, column: 23, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 1793, column: 15)
!1161 = !DILocation(line: 1793, column: 9, scope: !1127)
!1162 = !DILocation(line: 1798, column: 1, scope: !1127)
!1163 = distinct !DISubprogram(name: "a2dp_core_data_for_send", scope: !3, file: !3, line: 1800, type: !374, isLocal: false, isDefinition: true, scopeLine: 1801, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169}
!1165 = !DILocalVariable(name: "packet", arg: 1, scope: !1163, file: !3, line: 1800, type: !197)
!1166 = !DILocalVariable(name: "size", arg: 2, scope: !1163, file: !3, line: 1800, type: !275)
!1167 = !DILocalVariable(name: "len1", scope: !1163, file: !3, line: 1802, type: !193)
!1168 = !DILocalVariable(name: "len2", scope: !1163, file: !3, line: 1802, type: !193)
!1169 = !DILocalVariable(name: "conn", scope: !1163, file: !3, line: 1803, type: !198)
!1170 = !DILocation(line: 1800, column: 33, scope: !1163)
!1171 = !DILocation(line: 1800, column: 45, scope: !1163)
!1172 = !DILocation(line: 1780, column: 5, scope: !1133, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 1803, column: 30, scope: !1163)
!1174 = !DILocation(line: 1780, column: 5, scope: !1141, inlinedAt: !1173)
!1175 = !DILocation(line: 1781, column: 35, scope: !1143, inlinedAt: !1173)
!1176 = !DILocation(line: 1781, column: 13, scope: !1143, inlinedAt: !1173)
!1177 = !DILocation(line: 1781, column: 13, scope: !1144, inlinedAt: !1173)
!1178 = !DILocation(line: 1780, column: 5, scope: !1149, inlinedAt: !1173)
!1179 = !DILocation(line: 1778, column: 23, scope: !1134, inlinedAt: !1173)
!1180 = !DILocation(line: 1780, column: 5, scope: !1152, inlinedAt: !1173)
!1181 = !DILocation(line: 1803, column: 23, scope: !1163)
!1182 = !DILocation(line: 1805, column: 14, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1805, column: 9)
!1184 = !DILocation(line: 1805, column: 9, scope: !1163)
!1185 = !DILocation(line: 1802, column: 8, scope: !1163)
!1186 = !DILocation(line: 1810, column: 5, scope: !1163)
!1187 = !DILocation(line: 1802, column: 14, scope: !1163)
!1188 = !DILocation(line: 1813, column: 13, scope: !1163)
!1189 = !DILocation(line: 1813, column: 40, scope: !1163)
!1190 = !DILocation(line: 1813, column: 5, scope: !1163)
!1191 = !DILocation(line: 1815, column: 5, scope: !1163)
!1192 = !DILocation(line: 1816, column: 1, scope: !1163)
!1193 = distinct !DISubprogram(name: "a2dp_core_data_for_set", scope: !3, file: !3, line: 1819, type: !1194, isLocal: false, isDefinition: true, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !197, !275}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "packet", arg: 1, scope: !1193, file: !3, line: 1819, type: !197)
!1198 = !DILocalVariable(name: "size", arg: 2, scope: !1193, file: !3, line: 1819, type: !275)
!1199 = !DILocalVariable(name: "len", scope: !1193, file: !3, line: 1821, type: !193)
!1200 = !DILocalVariable(name: "conn", scope: !1193, file: !3, line: 1822, type: !198)
!1201 = !DILocation(line: 1819, column: 33, scope: !1193)
!1202 = !DILocation(line: 1819, column: 45, scope: !1193)
!1203 = !DILocation(line: 1780, column: 5, scope: !1133, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 1822, column: 30, scope: !1193)
!1205 = !DILocation(line: 1780, column: 5, scope: !1141, inlinedAt: !1204)
!1206 = !DILocation(line: 1781, column: 35, scope: !1143, inlinedAt: !1204)
!1207 = !DILocation(line: 1781, column: 13, scope: !1143, inlinedAt: !1204)
!1208 = !DILocation(line: 1781, column: 13, scope: !1144, inlinedAt: !1204)
!1209 = !DILocation(line: 1780, column: 5, scope: !1149, inlinedAt: !1204)
!1210 = !DILocation(line: 1778, column: 23, scope: !1134, inlinedAt: !1204)
!1211 = !DILocation(line: 1780, column: 5, scope: !1152, inlinedAt: !1204)
!1212 = !DILocation(line: 1822, column: 23, scope: !1193)
!1213 = !DILocation(line: 1824, column: 14, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 1824, column: 9)
!1215 = !DILocation(line: 1824, column: 9, scope: !1193)
!1216 = !DILocation(line: 1821, column: 8, scope: !1193)
!1217 = !DILocation(line: 1829, column: 5, scope: !1193)
!1218 = !DILocation(line: 1831, column: 25, scope: !1193)
!1219 = !DILocation(line: 1831, column: 49, scope: !1193)
!1220 = !DILocation(line: 1831, column: 5, scope: !1193)
!1221 = !DILocation(line: 1833, column: 37, scope: !1193)
!1222 = !DILocation(line: 1833, column: 5, scope: !1193)
!1223 = !DILocation(line: 1836, column: 1, scope: !1193)
!1224 = !DILocation(line: 1836, column: 1, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1193, file: !3, discriminator: 2)
!1226 = distinct !DISubprogram(name: "music_player_ctrl", scope: !3, file: !3, line: 1997, type: !1227, isLocal: false, isDefinition: true, scopeLine: 1998, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1229)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!340, !197, !193}
!1229 = !{!1230, !1231}
!1230 = !DILocalVariable(name: "addr", arg: 1, scope: !1226, file: !3, line: 1997, type: !197)
!1231 = !DILocalVariable(name: "ctrl", arg: 2, scope: !1226, file: !3, line: 1997, type: !193)
!1232 = !DILocation(line: 1997, column: 27, scope: !1226)
!1233 = !DILocation(line: 1997, column: 36, scope: !1226)
!1234 = !DILocation(line: 1999, column: 5, scope: !1226)
!1235 = distinct !DISubprogram(name: "__a2dp_lock_media_code", scope: !3, file: !3, line: 2002, type: !1236, isLocal: false, isDefinition: true, scopeLine: 2003, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !352}
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "addr", arg: 1, scope: !1235, file: !3, line: 2002, type: !352)
!1240 = !DILocation(line: 2002, column: 39, scope: !1235)
!1241 = !DILocation(line: 2005, column: 1, scope: !1235)
!1242 = distinct !DISubprogram(name: "__a2dp_unlock_media_code", scope: !3, file: !3, line: 2006, type: !1236, isLocal: false, isDefinition: true, scopeLine: 2007, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "addr", arg: 1, scope: !1242, file: !3, line: 2006, type: !352)
!1245 = !DILocation(line: 2006, column: 41, scope: !1242)
!1246 = !DILocation(line: 2008, column: 1, scope: !1242)
!1247 = distinct !DISubprogram(name: "__create_a2dp_conn", scope: !3, file: !3, line: 284, type: !567, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1248)
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DILocalVariable(name: "addr", arg: 1, scope: !1247, file: !3, line: 284, type: !352)
!1250 = !DILocalVariable(name: "send_ind", scope: !1247, file: !3, line: 286, type: !340)
!1251 = !DILocalVariable(name: "conn", scope: !1247, file: !3, line: 287, type: !198)
!1252 = !DILocalVariable(name: "codec", scope: !1247, file: !3, line: 288, type: !360)
!1253 = !DILocation(line: 284, column: 55, scope: !1247)
!1254 = !DILocation(line: 286, column: 9, scope: !1247)
!1255 = !DILocation(line: 287, column: 23, scope: !1247)
!1256 = !DILocation(line: 290, column: 5, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 290, column: 5)
!1258 = !DILocation(line: 290, column: 5, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1257, file: !3, discriminator: 1)
!1260 = !DILocation(line: 291, column: 35, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 291, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 290, column: 35)
!1263 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 290, column: 5)
!1264 = !DILocation(line: 291, column: 14, scope: !1261)
!1265 = !DILocation(line: 291, column: 13, scope: !1262)
!1266 = !DILocation(line: 292, column: 41, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 291, column: 43)
!1268 = !DILocation(line: 294, column: 13, scope: !1267)
!1269 = !DILocation(line: 295, column: 27, scope: !1267)
!1270 = !DILocation(line: 298, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 298, column: 17)
!1272 = !DILocation(line: 296, column: 13, scope: !1267)
!1273 = !DILocation(line: 298, column: 37, scope: !1271)
!1274 = !{!1275, !619, i64 12}
!1275 = !{!"_stack_config", !622, i64 0, !619, i64 4, !619, i64 6, !619, i64 8, !619, i64 10, !619, i64 12, !524, i64 14, !524, i64 15, !524, i64 16, !524, i64 17, !524, i64 17, !524, i64 17, !524, i64 17, !524, i64 18, !524, i64 18, !524, i64 18, !524, i64 18, !524, i64 18, !524, i64 18, !524, i64 18, !524, i64 18, !524, i64 19, !524, i64 19, !524, i64 19, !524, i64 19, !524, i64 19, !524, i64 19, !524, i64 19, !524, i64 19, !524, i64 20, !524, i64 20, !524, i64 20, !524, i64 21, !524, i64 22, !524, i64 23, !524, i64 24, !524, i64 25, !524, i64 31, !524, i64 31}
!1276 = !DILocation(line: 298, column: 64, scope: !1271)
!1277 = !DILocation(line: 298, column: 17, scope: !1267)
!1278 = !DILocation(line: 300, column: 21, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 300, column: 21)
!1280 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 298, column: 89)
!1281 = !DILocation(line: 300, column: 21, scope: !1280)
!1282 = !DILocation(line: 301, column: 49, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 300, column: 43)
!1284 = !DILocation(line: 301, column: 54, scope: !1283)
!1285 = !DILocation(line: 288, column: 30, scope: !1247)
!1286 = !DILocation(line: 302, column: 21, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1288, file: !3, discriminator: 1)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 302, column: 21)
!1289 = !DILocation(line: 303, column: 36, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 303, column: 29)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 302, column: 66)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 302, column: 21)
!1293 = !{!1294, !622, i64 0}
!1294 = !{!"a2dp_media_codec", !622, i64 0, !552, i64 4, !552, i64 8, !552, i64 12, !552, i64 16, !552, i64 20}
!1295 = !DILocation(line: 303, column: 41, scope: !1290)
!1296 = !DILocation(line: 303, column: 29, scope: !1291)
!1297 = !DILocation(line: 304, column: 29, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 303, column: 60)
!1299 = !DILocation(line: 306, column: 25, scope: !1298)
!1300 = !DILocation(line: 302, column: 21, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1292, file: !3, discriminator: 2)
!1302 = !DILocation(line: 302, column: 21, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1292, file: !3, discriminator: 1)
!1304 = distinct !{!1304, !1305, !1306}
!1305 = !DILocation(line: 302, column: 21, scope: !1288)
!1306 = !DILocation(line: 319, column: 21, scope: !1288)
!1307 = !DILocation(line: 320, column: 55, scope: !1283)
!1308 = !DILocation(line: 322, column: 21, scope: !1283)
!1309 = !DILocation(line: 324, column: 17, scope: !1283)
!1310 = !DILocation(line: 325, column: 71, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !3, discriminator: 1)
!1312 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 325, column: 24)
!1313 = !DILocation(line: 325, column: 24, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1271, file: !3, discriminator: 1)
!1315 = !DILocation(line: 327, column: 45, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 325, column: 98)
!1317 = !DILocation(line: 327, column: 50, scope: !1316)
!1318 = !DILocation(line: 329, column: 17, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !3, discriminator: 1)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 329, column: 17)
!1321 = !DILocation(line: 330, column: 32, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 330, column: 25)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 329, column: 60)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 329, column: 17)
!1325 = !DILocation(line: 336, column: 17, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 1)
!1327 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 336, column: 17)
!1328 = !DILocation(line: 330, column: 37, scope: !1322)
!1329 = !DILocation(line: 330, column: 25, scope: !1323)
!1330 = !DILocation(line: 331, column: 25, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 330, column: 56)
!1332 = !DILocation(line: 333, column: 21, scope: !1331)
!1333 = !DILocation(line: 329, column: 17, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1324, file: !3, discriminator: 2)
!1335 = !DILocation(line: 329, column: 17, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1324, file: !3, discriminator: 1)
!1337 = distinct !{!1337, !1338, !1339}
!1338 = !DILocation(line: 329, column: 17, scope: !1320)
!1339 = !DILocation(line: 334, column: 17, scope: !1320)
!1340 = !DILocation(line: 337, column: 32, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 337, column: 25)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 336, column: 60)
!1343 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 336, column: 17)
!1344 = !DILocation(line: 337, column: 37, scope: !1341)
!1345 = !DILocation(line: 337, column: 25, scope: !1342)
!1346 = !DILocation(line: 339, column: 29, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 337, column: 60)
!1348 = !DILocation(line: 340, column: 33, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 340, column: 33)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 339, column: 57)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 339, column: 29)
!1352 = !DILocation(line: 340, column: 53, scope: !1349)
!1353 = !DILocation(line: 340, column: 33, scope: !1350)
!1354 = !DILocation(line: 341, column: 33, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 340, column: 66)
!1356 = !DILocation(line: 343, column: 29, scope: !1355)
!1357 = !DILocation(line: 344, column: 33, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 343, column: 36)
!1359 = !DILocation(line: 348, column: 29, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 347, column: 32)
!1361 = !DILocation(line: 336, column: 17, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1343, file: !3, discriminator: 2)
!1363 = !DILocation(line: 336, column: 17, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1343, file: !3, discriminator: 1)
!1365 = distinct !{!1365, !1366, !1367}
!1366 = !DILocation(line: 336, column: 17, scope: !1327)
!1367 = !DILocation(line: 352, column: 17, scope: !1327)
!1368 = !DILocation(line: 290, column: 5, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 2)
!1370 = !DILocation(line: 290, column: 5, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 1)
!1372 = distinct !{!1372, !1256, !1373}
!1373 = !DILocation(line: 402, column: 5, scope: !1257)
!1374 = !DILocation(line: 405, column: 1, scope: !1247)
!1375 = distinct !DISubprogram(name: "a2dp_event_credits", scope: !3, file: !3, line: 608, type: !1109, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DILocalVariable(name: "channel", arg: 1, scope: !1375, file: !3, line: 608, type: !275)
!1378 = !DILocalVariable(name: "conn", scope: !1375, file: !3, line: 610, type: !198)
!1379 = !DILocalVariable(name: "handler", scope: !1375, file: !3, line: 611, type: !891)
!1380 = !DILocation(line: 608, column: 36, scope: !1375)
!1381 = !DILocation(line: 613, column: 12, scope: !1375)
!1382 = !DILocation(line: 610, column: 23, scope: !1375)
!1383 = !DILocation(line: 614, column: 14, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 614, column: 9)
!1385 = !DILocation(line: 614, column: 9, scope: !1375)
!1386 = !DILocation(line: 618, column: 29, scope: !1375)
!1387 = !DILocation(line: 618, column: 5, scope: !1375)
!1388 = !DILocation(line: 620, column: 35, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 620, column: 9)
!1390 = !DILocation(line: 620, column: 11, scope: !1389)
!1391 = !DILocation(line: 620, column: 9, scope: !1375)
!1392 = !DILocation(line: 621, column: 43, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 620, column: 49)
!1394 = !DILocation(line: 622, column: 9, scope: !1393)
!1395 = !DILocation(line: 623, column: 5, scope: !1393)
!1396 = !DILocation(line: 611, column: 32, scope: !1375)
!1397 = !DILocation(line: 624, column: 5, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1399, file: !3, discriminator: 1)
!1399 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 624, column: 5)
!1400 = !DILocation(line: 625, column: 22, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 625, column: 13)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 624, column: 42)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 624, column: 5)
!1404 = !DILocation(line: 625, column: 58, scope: !1401)
!1405 = !DILocation(line: 625, column: 27, scope: !1401)
!1406 = !DILocation(line: 625, column: 13, scope: !1402)
!1407 = !DILocation(line: 626, column: 26, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 626, column: 17)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 625, column: 64)
!1410 = !{!964, !552, i64 8}
!1411 = !DILocation(line: 626, column: 17, scope: !1408)
!1412 = !DILocation(line: 626, column: 17, scope: !1409)
!1413 = !DILocation(line: 627, column: 17, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 626, column: 41)
!1415 = !DILocation(line: 628, column: 13, scope: !1414)
!1416 = !DILocation(line: 624, column: 5, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1403, file: !3, discriminator: 2)
!1418 = !DILocation(line: 624, column: 5, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1403, file: !3, discriminator: 1)
!1420 = distinct !{!1420, !1421, !1422}
!1421 = !DILocation(line: 624, column: 5, scope: !1399)
!1422 = !DILocation(line: 630, column: 5, scope: !1399)
!1423 = !DILocation(line: 631, column: 1, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1375, file: !3, discriminator: 2)
!1425 = !DILocation(line: 772, column: 36, scope: !498)
!1426 = !DILocation(line: 772, column: 48, scope: !498)
!1427 = !DILocation(line: 772, column: 63, scope: !498)
!1428 = !DILocation(line: 774, column: 19, scope: !498)
!1429 = !DILocation(line: 779, column: 27, scope: !498)
!1430 = !{!1431, !524, i64 0}
!1431 = !{!"_avdtp_service_capability", !524, i64 0, !524, i64 1}
!1432 = !DILocation(line: 780, column: 18, scope: !498)
!1433 = !DILocation(line: 780, column: 25, scope: !498)
!1434 = !{!1431, !524, i64 1}
!1435 = !DILocation(line: 781, column: 16, scope: !498)
!1436 = !DILocation(line: 782, column: 15, scope: !498)
!1437 = !DILocation(line: 784, column: 27, scope: !498)
!1438 = !DILocation(line: 785, column: 18, scope: !498)
!1439 = !DILocation(line: 785, column: 25, scope: !498)
!1440 = !DILocation(line: 786, column: 16, scope: !498)
!1441 = !DILocation(line: 789, column: 33, scope: !498)
!1442 = !DILocation(line: 789, column: 53, scope: !498)
!1443 = !{!1275, !524, i64 15}
!1444 = !DILocation(line: 790, column: 5, scope: !498)
!1445 = !DILocation(line: 791, column: 5, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !498, file: !3, line: 791, column: 5)
!1447 = !DILocation(line: 791, column: 5, scope: !498)
!1448 = !DILocation(line: 791, column: 5, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1446, file: !3, discriminator: 1)
!1450 = !DILocation(line: 792, column: 66, scope: !498)
!1451 = !DILocation(line: 793, column: 15, scope: !498)
!1452 = !DILocation(line: 795, column: 27, scope: !498)
!1453 = !DILocation(line: 796, column: 18, scope: !498)
!1454 = !DILocation(line: 796, column: 25, scope: !498)
!1455 = !DILocation(line: 797, column: 16, scope: !498)
!1456 = !DILocation(line: 798, column: 5, scope: !498)
!1457 = !DILocation(line: 800, column: 15, scope: !498)
!1458 = !DILocation(line: 801, column: 5, scope: !498)
!1459 = distinct !DISubprogram(name: "a2dp_set_configure_ind_sbc", scope: !3, file: !3, line: 817, type: !238, isLocal: true, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1461 = !DILocalVariable(name: "lsep", arg: 1, scope: !1459, file: !3, line: 817, type: !240)
!1462 = !DILocalVariable(name: "caps", arg: 2, scope: !1459, file: !3, line: 817, type: !197)
!1463 = !DILocalVariable(name: "cap_len", arg: 3, scope: !1459, file: !3, line: 818, type: !193)
!1464 = !DILocalVariable(name: "config", arg: 4, scope: !1459, file: !3, line: 818, type: !187)
!1465 = !DILocalVariable(name: "i", scope: !1459, file: !3, line: 820, type: !333)
!1466 = !DILocalVariable(name: "category", scope: !1459, file: !3, line: 821, type: !193)
!1467 = !DILocalVariable(name: "length", scope: !1459, file: !3, line: 822, type: !193)
!1468 = !DILocalVariable(name: "process", scope: !1459, file: !3, line: 823, type: !193)
!1469 = !DILocalVariable(name: "return_flag", scope: !1459, file: !3, line: 824, type: !193)
!1470 = !DILocalVariable(name: "sbc_cap", scope: !1459, file: !3, line: 825, type: !392)
!1471 = !DILocalVariable(name: "conn", scope: !1459, file: !3, line: 826, type: !198)
!1472 = !DILocalVariable(name: "codec", scope: !1459, file: !3, line: 827, type: !385)
!1473 = !DILocalVariable(name: "cp_type", scope: !1459, file: !3, line: 828, type: !275)
!1474 = !DILocation(line: 817, column: 57, scope: !1459)
!1475 = !DILocation(line: 817, column: 67, scope: !1459)
!1476 = !DILocation(line: 818, column: 43, scope: !1459)
!1477 = !DILocation(line: 818, column: 58, scope: !1459)
!1478 = !DILocation(line: 824, column: 8, scope: !1459)
!1479 = !DILocation(line: 828, column: 9, scope: !1459)
!1480 = !DILocation(line: 830, column: 12, scope: !1459)
!1481 = !{!1482, !552, i64 4}
!1482 = !{!"_avdtp_local_sep", !552, i64 0, !552, i64 4, !1483, i64 8, !524, i64 10, !524, i64 10, !524, i64 11}
!1483 = !{!"_seid_info", !524, i64 0, !524, i64 0, !524, i64 0, !524, i64 1, !524, i64 1, !524, i64 1}
!1484 = !DILocation(line: 826, column: 23, scope: !1459)
!1485 = !DILocation(line: 823, column: 8, scope: !1459)
!1486 = !DILocation(line: 831, column: 33, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1488, file: !3, discriminator: 1)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 831, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 831, column: 5)
!1490 = !DILocation(line: 831, column: 31, scope: !1487)
!1491 = !DILocation(line: 831, column: 5, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1489, file: !3, discriminator: 1)
!1493 = !DILocation(line: 832, column: 20, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 831, column: 43)
!1495 = !DILocation(line: 821, column: 8, scope: !1459)
!1496 = !DILocation(line: 833, column: 18, scope: !1494)
!1497 = !DILocation(line: 822, column: 8, scope: !1459)
!1498 = !DILocation(line: 835, column: 17, scope: !1494)
!1499 = !DILocation(line: 836, column: 14, scope: !1494)
!1500 = !DILocation(line: 838, column: 13, scope: !1494)
!1501 = !DILocation(line: 839, column: 24, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 839, column: 17)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 838, column: 51)
!1504 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 838, column: 13)
!1505 = !DILocation(line: 839, column: 17, scope: !1503)
!1506 = !DILocation(line: 848, column: 23, scope: !1503)
!1507 = !DILocation(line: 848, column: 34, scope: !1503)
!1508 = !DILocation(line: 848, column: 42, scope: !1503)
!1509 = !DILocation(line: 848, column: 31, scope: !1503)
!1510 = !DILocation(line: 849, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 849, column: 13)
!1512 = !DILocation(line: 849, column: 13, scope: !1503)
!1513 = !DILocation(line: 849, column: 13, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 1)
!1515 = !DILocalVariable(name: "cp", arg: 1, scope: !1516, file: !3, line: 804, type: !275)
!1516 = distinct !DISubprogram(name: "cptype2str", scope: !3, file: !3, line: 804, type: !1517, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1521)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1519, !275}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!1521 = !{!1515}
!1522 = !DILocation(line: 804, column: 35, scope: !1516, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 849, column: 13, scope: !1514)
!1524 = !DILocation(line: 806, column: 5, scope: !1516, inlinedAt: !1523)
!1525 = !DILocation(line: 849, column: 13, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 2)
!1527 = !DILocation(line: 850, column: 49, scope: !1503)
!1528 = !{!614, !619, i64 106}
!1529 = !DILocation(line: 852, column: 13, scope: !1494)
!1530 = !DILocation(line: 853, column: 24, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 853, column: 17)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 852, column: 48)
!1533 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 852, column: 13)
!1534 = !DILocation(line: 853, column: 17, scope: !1532)
!1535 = !DILocation(line: 857, column: 27, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 857, column: 17)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 856, column: 51)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 856, column: 20)
!1539 = !DILocation(line: 857, column: 34, scope: !1536)
!1540 = !DILocation(line: 857, column: 25, scope: !1536)
!1541 = !DILocation(line: 857, column: 17, scope: !1537)
!1542 = !DILocation(line: 861, column: 24, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 861, column: 17)
!1544 = !{!523, !524, i64 1}
!1545 = !DILocation(line: 861, column: 41, scope: !1543)
!1546 = !DILocation(line: 861, column: 17, scope: !1537)
!1547 = !DILocation(line: 862, column: 21, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 861, column: 60)
!1549 = !DILocation(line: 863, column: 39, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 862, column: 29)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 862, column: 21)
!1552 = !DILocation(line: 864, column: 39, scope: !1550)
!1553 = !DILocation(line: 865, column: 21, scope: !1550)
!1554 = !DILocation(line: 825, column: 20, scope: !1459)
!1555 = !DILocation(line: 867, column: 34, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 867, column: 25)
!1557 = !DILocation(line: 867, column: 44, scope: !1556)
!1558 = !DILocation(line: 867, column: 25, scope: !1550)
!1559 = !DILocation(line: 868, column: 40, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 868, column: 29)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 867, column: 71)
!1562 = !DILocation(line: 868, column: 45, scope: !1560)
!1563 = !DILocation(line: 868, column: 29, scope: !1561)
!1564 = !DILocation(line: 869, column: 48, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 868, column: 69)
!1566 = !DILocation(line: 871, column: 25, scope: !1565)
!1567 = !DILocation(line: 872, column: 48, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 871, column: 33)
!1569 = !DILocation(line: 878, column: 44, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 877, column: 28)
!1571 = !{!614, !622, i64 108}
!1572 = !DILocation(line: 881, column: 36, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 881, column: 25)
!1574 = !DILocation(line: 881, column: 41, scope: !1573)
!1575 = !DILocation(line: 881, column: 25, scope: !1550)
!1576 = !DILocation(line: 820, column: 9, scope: !1459)
!1577 = !DILocation(line: 882, column: 25, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1579, file: !3, discriminator: 1)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 882, column: 25)
!1580 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 881, column: 65)
!1581 = !DILocation(line: 882, column: 39, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1583, file: !3, discriminator: 1)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 882, column: 25)
!1584 = distinct !{!1584, !1585, !1586}
!1585 = !DILocation(line: 882, column: 25, scope: !1579)
!1586 = !DILocation(line: 887, column: 25, scope: !1579)
!1587 = !DILocation(line: 883, column: 57, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 883, column: 33)
!1589 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 882, column: 49)
!1590 = !DILocation(line: 883, column: 55, scope: !1588)
!1591 = !DILocation(line: 882, column: 45, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1583, file: !3, discriminator: 2)
!1593 = !DILocation(line: 883, column: 33, scope: !1589)
!1594 = !DILocation(line: 884, column: 57, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 883, column: 65)
!1596 = !DILocation(line: 884, column: 55, scope: !1595)
!1597 = !DILocation(line: 885, column: 33, scope: !1595)
!1598 = !DILocation(line: 892, column: 43, scope: !1550)
!1599 = !DILocation(line: 894, column: 48, scope: !1550)
!1600 = !DILocation(line: 895, column: 42, scope: !1550)
!1601 = !{!1602, !524, i64 4}
!1602 = !{!"_sbc_codec_cap", !523, i64 0, !524, i64 2, !524, i64 2, !524, i64 3, !524, i64 3, !524, i64 3, !524, i64 4, !524, i64 5}
!1603 = !DILocation(line: 899, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 899, column: 25)
!1605 = !DILocation(line: 899, column: 45, scope: !1604)
!1606 = !DILocation(line: 899, column: 74, scope: !1604)
!1607 = !{!1602, !524, i64 5}
!1608 = !DILocation(line: 899, column: 65, scope: !1604)
!1609 = !DILocation(line: 899, column: 62, scope: !1604)
!1610 = !DILocation(line: 899, column: 25, scope: !1550)
!1611 = !DILocation(line: 900, column: 46, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 899, column: 87)
!1613 = !DILocation(line: 901, column: 21, scope: !1612)
!1614 = !DILocation(line: 902, column: 25, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 902, column: 25)
!1616 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 901, column: 28)
!1617 = !DILocation(line: 902, column: 25, scope: !1616)
!1618 = !DILocation(line: 902, column: 25, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1615, file: !3, discriminator: 1)
!1620 = !DILocation(line: 906, column: 31, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 904, column: 24)
!1622 = !DILocation(line: 907, column: 21, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 907, column: 21)
!1624 = !DILocation(line: 907, column: 21, scope: !1621)
!1625 = !DILocation(line: 907, column: 21, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 1)
!1627 = !DILocation(line: 916, column: 21, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 916, column: 21)
!1629 = !DILocation(line: 916, column: 21, scope: !1621)
!1630 = !DILocation(line: 916, column: 21, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1628, file: !3, discriminator: 1)
!1632 = !DILocation(line: 918, column: 34, scope: !1548)
!1633 = !{!614, !524, i64 125}
!1634 = !DILocation(line: 920, column: 41, scope: !1548)
!1635 = !DILocation(line: 921, column: 41, scope: !1548)
!1636 = !DILocation(line: 922, column: 41, scope: !1548)
!1637 = !DILocation(line: 923, column: 41, scope: !1548)
!1638 = !DILocation(line: 924, column: 41, scope: !1548)
!1639 = !DILocation(line: 925, column: 41, scope: !1548)
!1640 = !DILocation(line: 919, column: 17, scope: !1548)
!1641 = !DILocation(line: 927, column: 13, scope: !1548)
!1642 = !DILocation(line: 930, column: 17, scope: !1494)
!1643 = !DILocation(line: 930, column: 14, scope: !1494)
!1644 = !DILocation(line: 931, column: 17, scope: !1494)
!1645 = !DILocation(line: 831, column: 23, scope: !1487)
!1646 = distinct !{!1646, !1647, !1648}
!1647 = !DILocation(line: 831, column: 5, scope: !1489)
!1648 = !DILocation(line: 932, column: 5, scope: !1489)
!1649 = !DILocation(line: 935, column: 1, scope: !1459)
!1650 = distinct !DISubprogram(name: "a2dp_open_ind", scope: !3, file: !3, line: 685, type: !243, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1656}
!1652 = !DILocalVariable(name: "lsep", arg: 1, scope: !1650, file: !3, line: 685, type: !240)
!1653 = !DILocalVariable(name: "stream", arg: 2, scope: !1650, file: !3, line: 685, type: !245)
!1654 = !DILocalVariable(name: "conn_type", arg: 3, scope: !1650, file: !3, line: 685, type: !193)
!1655 = !DILocalVariable(name: "handler", scope: !1650, file: !3, line: 687, type: !891)
!1656 = !DILocalVariable(name: "conn", scope: !1650, file: !3, line: 688, type: !198)
!1657 = !DILocation(line: 685, column: 44, scope: !1650)
!1658 = !DILocation(line: 685, column: 64, scope: !1650)
!1659 = !DILocation(line: 685, column: 75, scope: !1650)
!1660 = !DILocation(line: 688, column: 30, scope: !1650)
!1661 = !DILocation(line: 689, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 689, column: 9)
!1663 = !DILocation(line: 689, column: 9, scope: !1662)
!1664 = !DILocation(line: 689, column: 26, scope: !1662)
!1665 = !DILocation(line: 689, column: 36, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1662, file: !3, discriminator: 1)
!1667 = !DILocation(line: 689, column: 51, scope: !1666)
!1668 = !DILocation(line: 689, column: 64, scope: !1666)
!1669 = !DILocation(line: 689, column: 9, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1650, file: !3, discriminator: 1)
!1671 = !DILocation(line: 690, column: 43, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 689, column: 71)
!1673 = !DILocation(line: 691, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 691, column: 13)
!1675 = !DILocation(line: 691, column: 13, scope: !1672)
!1676 = !DILocation(line: 692, column: 13, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 691, column: 26)
!1678 = !DILocation(line: 693, column: 9, scope: !1677)
!1679 = !DILocation(line: 695, column: 5, scope: !1650)
!1680 = distinct !DISubprogram(name: "a2dp_start_ind", scope: !3, file: !3, line: 720, type: !256, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1681)
!1681 = !{!1682, !1683, !1684, !1685}
!1682 = !DILocalVariable(name: "lsep", arg: 1, scope: !1680, file: !3, line: 720, type: !240)
!1683 = !DILocalVariable(name: "stream", arg: 2, scope: !1680, file: !3, line: 720, type: !245)
!1684 = !DILocalVariable(name: "handler", scope: !1680, file: !3, line: 722, type: !891)
!1685 = !DILocalVariable(name: "conn", scope: !1680, file: !3, line: 723, type: !198)
!1686 = !DILocation(line: 720, column: 45, scope: !1680)
!1687 = !DILocation(line: 720, column: 65, scope: !1680)
!1688 = !DILocation(line: 723, column: 30, scope: !1680)
!1689 = !DILocation(line: 723, column: 23, scope: !1680)
!1690 = !DILocation(line: 725, column: 37, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 725, column: 9)
!1692 = !DILocation(line: 725, column: 42, scope: !1691)
!1693 = !DILocation(line: 725, column: 9, scope: !1680)
!1694 = !DILocation(line: 726, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 725, column: 56)
!1696 = !DILocation(line: 727, column: 5, scope: !1695)
!1697 = !DILocation(line: 722, column: 32, scope: !1680)
!1698 = !DILocation(line: 729, column: 5, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !3, discriminator: 1)
!1700 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 729, column: 5)
!1701 = !DILocation(line: 730, column: 22, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 730, column: 13)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 729, column: 42)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 729, column: 5)
!1705 = !DILocation(line: 730, column: 58, scope: !1702)
!1706 = !DILocation(line: 730, column: 27, scope: !1702)
!1707 = !DILocation(line: 730, column: 13, scope: !1703)
!1708 = !DILocation(line: 731, column: 26, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 731, column: 17)
!1710 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 730, column: 64)
!1711 = !{!964, !552, i64 16}
!1712 = !DILocation(line: 731, column: 17, scope: !1709)
!1713 = !DILocation(line: 731, column: 17, scope: !1710)
!1714 = !DILocation(line: 732, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 731, column: 33)
!1716 = !DILocation(line: 733, column: 13, scope: !1715)
!1717 = !DILocation(line: 729, column: 5, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1704, file: !3, discriminator: 2)
!1719 = !DILocation(line: 729, column: 5, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1704, file: !3, discriminator: 1)
!1721 = distinct !{!1721, !1722, !1723}
!1722 = !DILocation(line: 729, column: 5, scope: !1700)
!1723 = !DILocation(line: 735, column: 5, scope: !1700)
!1724 = !DILocation(line: 737, column: 5, scope: !1680)
!1725 = distinct !DISubprogram(name: "a2dp_suspend_ind", scope: !3, file: !3, line: 741, type: !256, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1726)
!1726 = !{!1727, !1728, !1729, !1730}
!1727 = !DILocalVariable(name: "lsep", arg: 1, scope: !1725, file: !3, line: 741, type: !240)
!1728 = !DILocalVariable(name: "stream", arg: 2, scope: !1725, file: !3, line: 741, type: !245)
!1729 = !DILocalVariable(name: "handler", scope: !1725, file: !3, line: 743, type: !891)
!1730 = !DILocalVariable(name: "conn", scope: !1725, file: !3, line: 744, type: !198)
!1731 = !DILocation(line: 741, column: 47, scope: !1725)
!1732 = !DILocation(line: 741, column: 67, scope: !1725)
!1733 = !DILocation(line: 744, column: 30, scope: !1725)
!1734 = !DILocation(line: 744, column: 23, scope: !1725)
!1735 = !DILocation(line: 743, column: 32, scope: !1725)
!1736 = !DILocation(line: 749, column: 5, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1738, file: !3, discriminator: 1)
!1738 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 749, column: 5)
!1739 = !DILocation(line: 750, column: 22, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 750, column: 13)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 749, column: 42)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 749, column: 5)
!1743 = !DILocation(line: 750, column: 58, scope: !1740)
!1744 = !DILocation(line: 750, column: 27, scope: !1740)
!1745 = !DILocation(line: 750, column: 13, scope: !1741)
!1746 = !DILocation(line: 751, column: 26, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 751, column: 17)
!1748 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 750, column: 64)
!1749 = !{!964, !552, i64 20}
!1750 = !DILocation(line: 751, column: 17, scope: !1747)
!1751 = !DILocation(line: 751, column: 17, scope: !1748)
!1752 = !DILocation(line: 752, column: 17, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 751, column: 35)
!1754 = !DILocation(line: 753, column: 13, scope: !1753)
!1755 = !DILocation(line: 749, column: 5, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1742, file: !3, discriminator: 2)
!1757 = !DILocation(line: 749, column: 5, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1742, file: !3, discriminator: 1)
!1759 = distinct !{!1759, !1760, !1761}
!1760 = !DILocation(line: 749, column: 5, scope: !1738)
!1761 = !DILocation(line: 755, column: 5, scope: !1738)
!1762 = !DILocation(line: 757, column: 5, scope: !1725)
!1763 = distinct !DISubprogram(name: "a2dp_close_ind", scope: !3, file: !3, line: 701, type: !261, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1764)
!1764 = !{!1765, !1766, !1767, !1768, !1769}
!1765 = !DILocalVariable(name: "lsep", arg: 1, scope: !1763, file: !3, line: 701, type: !240)
!1766 = !DILocalVariable(name: "stream", arg: 2, scope: !1763, file: !3, line: 701, type: !245)
!1767 = !DILocalVariable(name: "err", arg: 3, scope: !1763, file: !3, line: 701, type: !197)
!1768 = !DILocalVariable(name: "handler", scope: !1763, file: !3, line: 704, type: !891)
!1769 = !DILocalVariable(name: "conn", scope: !1763, file: !3, line: 705, type: !198)
!1770 = !DILocation(line: 701, column: 45, scope: !1763)
!1771 = !DILocation(line: 701, column: 65, scope: !1763)
!1772 = !DILocation(line: 701, column: 77, scope: !1763)
!1773 = !DILocation(line: 705, column: 30, scope: !1763)
!1774 = !DILocation(line: 705, column: 23, scope: !1763)
!1775 = !DILocation(line: 704, column: 32, scope: !1763)
!1776 = !DILocation(line: 709, column: 5, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1778, file: !3, discriminator: 1)
!1778 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 709, column: 5)
!1779 = !DILocation(line: 710, column: 31, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1781, file: !3, discriminator: 1)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 710, column: 13)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 709, column: 42)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 709, column: 5)
!1784 = !DILocation(line: 710, column: 67, scope: !1780)
!1785 = !DILocation(line: 710, column: 36, scope: !1780)
!1786 = !DILocation(line: 710, column: 13, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1782, file: !3, discriminator: 1)
!1788 = !DILocation(line: 711, column: 26, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 711, column: 17)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 710, column: 74)
!1791 = !DILocation(line: 711, column: 17, scope: !1789)
!1792 = !DILocation(line: 711, column: 17, scope: !1790)
!1793 = !DILocation(line: 712, column: 17, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 711, column: 35)
!1795 = !DILocation(line: 713, column: 13, scope: !1794)
!1796 = !DILocation(line: 709, column: 5, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1783, file: !3, discriminator: 2)
!1798 = !DILocation(line: 709, column: 5, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1783, file: !3, discriminator: 1)
!1800 = distinct !{!1800, !1801, !1802}
!1801 = !DILocation(line: 709, column: 5, scope: !1778)
!1802 = !DILocation(line: 715, column: 5, scope: !1778)
!1803 = !DILocation(line: 716, column: 5, scope: !1763)
!1804 = distinct !DISubprogram(name: "a2dp_abort", scope: !3, file: !3, line: 761, type: !265, isLocal: true, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1805)
!1805 = !{!1806, !1807}
!1806 = !DILocalVariable(name: "lsep", arg: 1, scope: !1804, file: !3, line: 761, type: !240)
!1807 = !DILocalVariable(name: "conn", scope: !1804, file: !3, line: 763, type: !198)
!1808 = !DILocation(line: 761, column: 41, scope: !1804)
!1809 = !DILocation(line: 763, column: 30, scope: !1804)
!1810 = !DILocation(line: 763, column: 23, scope: !1804)
!1811 = !DILocation(line: 765, column: 5, scope: !1804)
!1812 = !DILocation(line: 766, column: 5, scope: !1804)
!1813 = !DILocation(line: 767, column: 32, scope: !1804)
!1814 = !DILocation(line: 768, column: 1, scope: !1804)
!1815 = distinct !DISubprogram(name: "__media_close", scope: !3, file: !3, line: 202, type: !901, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1816)
!1816 = !{!1817, !1818}
!1817 = !DILocalVariable(name: "conn", arg: 1, scope: !1815, file: !3, line: 202, type: !198)
!1818 = !DILocalVariable(name: "handler", scope: !1815, file: !3, line: 204, type: !891)
!1819 = !DILocation(line: 202, column: 45, scope: !1815)
!1820 = !DILocation(line: 204, column: 32, scope: !1815)
!1821 = !DILocation(line: 209, column: 5, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1823, file: !3, discriminator: 1)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 209, column: 5)
!1824 = !DILocation(line: 210, column: 22, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 210, column: 13)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 209, column: 42)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 209, column: 5)
!1828 = !DILocation(line: 210, column: 58, scope: !1825)
!1829 = !DILocation(line: 210, column: 27, scope: !1825)
!1830 = !DILocation(line: 210, column: 13, scope: !1826)
!1831 = !DILocation(line: 211, column: 26, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 211, column: 17)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 210, column: 64)
!1834 = !{!964, !552, i64 4}
!1835 = !DILocation(line: 211, column: 17, scope: !1832)
!1836 = !DILocation(line: 211, column: 17, scope: !1833)
!1837 = !DILocation(line: 212, column: 17, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 211, column: 40)
!1839 = !DILocation(line: 213, column: 13, scope: !1838)
!1840 = !DILocation(line: 209, column: 5, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1827, file: !3, discriminator: 2)
!1842 = !DILocation(line: 209, column: 5, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1827, file: !3, discriminator: 1)
!1844 = distinct !{!1844, !1845, !1846}
!1845 = !DILocation(line: 209, column: 5, scope: !1823)
!1846 = !DILocation(line: 215, column: 5, scope: !1823)
!1847 = !DILocation(line: 216, column: 1, scope: !1815)
!1848 = distinct !DISubprogram(name: "a2dp_getcap_ind_mpeg24", scope: !3, file: !3, line: 952, type: !233, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1849)
!1849 = !{!1850, !1851, !1852, !1853}
!1850 = !DILocalVariable(name: "seid", arg: 1, scope: !1848, file: !3, line: 952, type: !193)
!1851 = !DILocalVariable(name: "user_data", arg: 2, scope: !1848, file: !3, line: 952, type: !187)
!1852 = !DILocalVariable(name: "data_len", arg: 3, scope: !1848, file: !3, line: 952, type: !197)
!1853 = !DILocalVariable(name: "service_cap", scope: !1848, file: !3, line: 954, type: !188)
!1854 = !DILocation(line: 952, column: 39, scope: !1848)
!1855 = !DILocation(line: 952, column: 51, scope: !1848)
!1856 = !DILocation(line: 952, column: 66, scope: !1848)
!1857 = !DILocation(line: 958, column: 27, scope: !1848)
!1858 = !DILocation(line: 959, column: 18, scope: !1848)
!1859 = !DILocation(line: 959, column: 25, scope: !1848)
!1860 = !DILocation(line: 960, column: 16, scope: !1848)
!1861 = !DILocation(line: 961, column: 15, scope: !1848)
!1862 = !DILocation(line: 963, column: 27, scope: !1848)
!1863 = !DILocation(line: 964, column: 18, scope: !1848)
!1864 = !DILocation(line: 964, column: 25, scope: !1848)
!1865 = !DILocation(line: 965, column: 16, scope: !1848)
!1866 = !DILocation(line: 966, column: 5, scope: !1848)
!1867 = !DILocation(line: 968, column: 15, scope: !1848)
!1868 = !DILocation(line: 974, column: 5, scope: !1848)
!1869 = distinct !DISubprogram(name: "a2dp_set_configure_ind_mpeg24", scope: !3, file: !3, line: 979, type: !238, isLocal: true, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882}
!1871 = !DILocalVariable(name: "lsep", arg: 1, scope: !1869, file: !3, line: 979, type: !240)
!1872 = !DILocalVariable(name: "caps", arg: 2, scope: !1869, file: !3, line: 979, type: !197)
!1873 = !DILocalVariable(name: "cap_len", arg: 3, scope: !1869, file: !3, line: 980, type: !193)
!1874 = !DILocalVariable(name: "config", arg: 4, scope: !1869, file: !3, line: 980, type: !187)
!1875 = !DILocalVariable(name: "i", scope: !1869, file: !3, line: 982, type: !333)
!1876 = !DILocalVariable(name: "category", scope: !1869, file: !3, line: 983, type: !193)
!1877 = !DILocalVariable(name: "length", scope: !1869, file: !3, line: 984, type: !193)
!1878 = !DILocalVariable(name: "process", scope: !1869, file: !3, line: 985, type: !193)
!1879 = !DILocalVariable(name: "codec", scope: !1869, file: !3, line: 986, type: !385)
!1880 = !DILocalVariable(name: "mpeg24_cap", scope: !1869, file: !3, line: 987, type: !404)
!1881 = !DILocalVariable(name: "conn", scope: !1869, file: !3, line: 988, type: !198)
!1882 = !DILocalVariable(name: "temp_config", scope: !1869, file: !3, line: 989, type: !1883)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 80, elements: !1884)
!1884 = !{!1885}
!1885 = !DISubrange(count: 10)
!1886 = !DILocation(line: 979, column: 60, scope: !1869)
!1887 = !DILocation(line: 979, column: 70, scope: !1869)
!1888 = !DILocation(line: 980, column: 12, scope: !1869)
!1889 = !DILocation(line: 980, column: 27, scope: !1869)
!1890 = !DILocation(line: 989, column: 5, scope: !1869)
!1891 = !DILocation(line: 989, column: 8, scope: !1869)
!1892 = !DILocation(line: 985, column: 8, scope: !1869)
!1893 = !DILocation(line: 990, column: 33, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !3, discriminator: 1)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 990, column: 5)
!1896 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 990, column: 5)
!1897 = !DILocation(line: 990, column: 31, scope: !1894)
!1898 = !DILocation(line: 990, column: 5, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1896, file: !3, discriminator: 1)
!1900 = !DILocation(line: 991, column: 20, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 990, column: 43)
!1902 = !DILocation(line: 983, column: 8, scope: !1869)
!1903 = !DILocation(line: 992, column: 18, scope: !1901)
!1904 = !DILocation(line: 984, column: 8, scope: !1869)
!1905 = !DILocation(line: 994, column: 17, scope: !1901)
!1906 = !DILocation(line: 995, column: 14, scope: !1901)
!1907 = !DILocation(line: 997, column: 13, scope: !1901)
!1908 = !DILocation(line: 998, column: 24, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 998, column: 17)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 997, column: 48)
!1911 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 997, column: 13)
!1912 = !DILocation(line: 998, column: 17, scope: !1910)
!1913 = !DILocation(line: 1002, column: 27, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 1002, column: 17)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 1001, column: 51)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1001, column: 20)
!1917 = !DILocation(line: 1002, column: 34, scope: !1914)
!1918 = !DILocation(line: 1002, column: 25, scope: !1914)
!1919 = !DILocation(line: 1002, column: 17, scope: !1915)
!1920 = !DILocation(line: 1006, column: 24, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 1006, column: 17)
!1922 = !DILocation(line: 1006, column: 41, scope: !1921)
!1923 = !DILocation(line: 1006, column: 17, scope: !1915)
!1924 = !DILocation(line: 1011, column: 21, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 1011, column: 21)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1006, column: 63)
!1927 = !DILocation(line: 1011, column: 21, scope: !1926)
!1928 = !DILocation(line: 1012, column: 39, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1011, column: 29)
!1930 = !DILocation(line: 1013, column: 21, scope: !1929)
!1931 = !DILocation(line: 1013, column: 39, scope: !1929)
!1932 = !DILocation(line: 1014, column: 41, scope: !1929)
!1933 = !DILocation(line: 1014, column: 21, scope: !1929)
!1934 = !DILocation(line: 1016, column: 33, scope: !1929)
!1935 = !DILocation(line: 1016, column: 45, scope: !1929)
!1936 = !{!522, !524, i64 2}
!1937 = !DILocation(line: 1017, column: 37, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1017, column: 25)
!1939 = !DILocation(line: 1017, column: 49, scope: !1938)
!1940 = !DILocation(line: 1017, column: 25, scope: !1929)
!1941 = !DILocation(line: 1018, column: 49, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1017, column: 79)
!1943 = !{!522, !524, i64 3}
!1944 = !DILocation(line: 1019, column: 49, scope: !1942)
!1945 = !DILocation(line: 1020, column: 21, scope: !1942)
!1946 = !DILocation(line: 1021, column: 49, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1020, column: 28)
!1948 = !DILocation(line: 1022, column: 49, scope: !1947)
!1949 = !DILocation(line: 982, column: 9, scope: !1869)
!1950 = !DILocation(line: 1025, column: 21, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1952, file: !3, discriminator: 1)
!1952 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1025, column: 21)
!1953 = !DILocation(line: 1025, column: 35, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 1)
!1955 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 1025, column: 21)
!1956 = distinct !{!1956, !1957, !1958}
!1957 = !DILocation(line: 1025, column: 21, scope: !1952)
!1958 = !DILocation(line: 1030, column: 21, scope: !1952)
!1959 = !DILocation(line: 1026, column: 52, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1026, column: 29)
!1961 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 1025, column: 45)
!1962 = !DILocation(line: 1026, column: 50, scope: !1960)
!1963 = !DILocation(line: 1025, column: 41, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 2)
!1965 = !DILocation(line: 1026, column: 29, scope: !1961)
!1966 = !DILocation(line: 1027, column: 52, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 1026, column: 60)
!1968 = !DILocation(line: 1027, column: 50, scope: !1967)
!1969 = !DILocation(line: 1028, column: 29, scope: !1967)
!1970 = !DILocation(line: 1031, column: 59, scope: !1929)
!1971 = !DILocation(line: 1031, column: 33, scope: !1929)
!1972 = !DILocation(line: 1031, column: 43, scope: !1929)
!1973 = !DILocation(line: 1032, column: 59, scope: !1929)
!1974 = !DILocation(line: 1032, column: 33, scope: !1929)
!1975 = !DILocation(line: 1032, column: 43, scope: !1929)
!1976 = !DILocation(line: 1033, column: 59, scope: !1929)
!1977 = !DILocation(line: 1033, column: 33, scope: !1929)
!1978 = !DILocation(line: 1033, column: 43, scope: !1929)
!1979 = !DILocation(line: 1034, column: 17, scope: !1929)
!1980 = !DILocation(line: 1035, column: 44, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1034, column: 24)
!1982 = !DILocation(line: 1036, column: 21, scope: !1981)
!1983 = !DILocation(line: 1036, column: 44, scope: !1981)
!1984 = !DILocation(line: 1037, column: 29, scope: !1981)
!1985 = !DILocation(line: 1037, column: 21, scope: !1981)
!1986 = !DILocation(line: 1040, column: 24, scope: !1926)
!1987 = !DILocation(line: 1042, column: 33, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 1042, column: 21)
!1989 = !DILocation(line: 1042, column: 45, scope: !1988)
!1990 = !DILocation(line: 1042, column: 21, scope: !1926)
!1991 = !DILocation(line: 1050, column: 33, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 1050, column: 21)
!1993 = !DILocation(line: 1050, column: 42, scope: !1992)
!1994 = !DILocation(line: 1050, column: 21, scope: !1926)
!1995 = !DILocation(line: 1056, column: 53, scope: !1926)
!1996 = !DILocation(line: 1056, column: 63, scope: !1926)
!1997 = !DILocation(line: 1056, column: 71, scope: !1926)
!1998 = !DILocation(line: 1057, column: 52, scope: !1926)
!1999 = !DILocation(line: 1057, column: 40, scope: !1926)
!2000 = !DILocation(line: 1057, column: 62, scope: !1926)
!2001 = !DILocation(line: 1056, column: 78, scope: !1926)
!2002 = !DILocation(line: 1057, column: 82, scope: !1926)
!2003 = !DILocation(line: 1057, column: 70, scope: !1926)
!2004 = !DILocation(line: 1057, column: 68, scope: !1926)
!2005 = !DILocation(line: 1056, column: 29, scope: !1926)
!2006 = !DILocation(line: 1056, column: 37, scope: !1926)
!2007 = !{!614, !622, i64 120}
!2008 = !DILocation(line: 1059, column: 17, scope: !1926)
!2009 = !DILocation(line: 1062, column: 17, scope: !1901)
!2010 = !DILocation(line: 1062, column: 14, scope: !1901)
!2011 = !DILocation(line: 1063, column: 17, scope: !1901)
!2012 = !DILocation(line: 990, column: 23, scope: !1894)
!2013 = distinct !{!2013, !2014, !2015}
!2014 = !DILocation(line: 990, column: 5, scope: !1896)
!2015 = !DILocation(line: 1064, column: 5, scope: !1896)
!2016 = !DILocation(line: 1067, column: 1, scope: !1869)
!2017 = distinct !DISubprogram(name: "a2dp_suspend", scope: !3, file: !3, line: 1683, type: !2018, isLocal: true, isDefinition: true, scopeLine: 1684, isOptimized: true, unit: !2, variables: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!340}
!2020 = !{}
!2021 = !DILocation(line: 1689, column: 1, scope: !2017)
!2022 = distinct !DISubprogram(name: "a2dp_resume", scope: !3, file: !3, line: 1690, type: !2018, isLocal: true, isDefinition: true, scopeLine: 1691, isOptimized: true, unit: !2, variables: !2020)
!2023 = !DILocation(line: 1696, column: 1, scope: !2022)
!2024 = distinct !DISubprogram(name: "a2dp_release", scope: !3, file: !3, line: 1668, type: !2018, isLocal: true, isDefinition: true, scopeLine: 1669, isOptimized: true, unit: !2, variables: !2025)
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "conn", scope: !2024, file: !3, line: 1670, type: !198)
!2027 = !DILocation(line: 1671, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1671, column: 9)
!2029 = !DILocation(line: 1671, column: 20, scope: !2028)
!2030 = !DILocation(line: 1671, column: 9, scope: !2024)
!2031 = !DILocation(line: 1670, column: 23, scope: !2024)
!2032 = !DILocation(line: 1674, column: 5, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2034, file: !3, discriminator: 1)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 1674, column: 5)
!2035 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1674, column: 5)
!2036 = !DILocation(line: 1674, column: 5, scope: !2035)
!2037 = !DILocation(line: 1674, column: 5, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2035, file: !3, discriminator: 1)
!2039 = distinct !{!2039, !2036, !2040}
!2040 = !DILocation(line: 1678, column: 5, scope: !2035)
!2041 = !DILocation(line: 1675, column: 34, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 1675, column: 13)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1674, column: 35)
!2044 = !DILocation(line: 1675, column: 13, scope: !2042)
!2045 = !DILocation(line: 1674, column: 5, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2034, file: !3, discriminator: 2)
!2047 = !DILocation(line: 1675, column: 13, scope: !2043)
!2048 = !DILocation(line: 1679, column: 5, scope: !2024)
!2049 = !DILocation(line: 1680, column: 16, scope: !2024)
!2050 = !DILocation(line: 1681, column: 5, scope: !2024)
!2051 = !DILocation(line: 1682, column: 1, scope: !2024)
!2052 = distinct !DISubprogram(name: "a2dp_channel_open_success", scope: !3, file: !3, line: 532, type: !2053, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !275, !197, !275, !193}
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2056 = !DILocalVariable(name: "channel", arg: 1, scope: !2052, file: !3, line: 532, type: !275)
!2057 = !DILocalVariable(name: "packet", arg: 2, scope: !2052, file: !3, line: 532, type: !197)
!2058 = !DILocalVariable(name: "size", arg: 3, scope: !2052, file: !3, line: 532, type: !275)
!2059 = !DILocalVariable(name: "conn_type", arg: 4, scope: !2052, file: !3, line: 532, type: !193)
!2060 = !DILocalVariable(name: "addr", scope: !2052, file: !3, line: 534, type: !841)
!2061 = !DILocalVariable(name: "conn", scope: !2052, file: !3, line: 535, type: !198)
!2062 = !DILocalVariable(name: "handler", scope: !2052, file: !3, line: 536, type: !891)
!2063 = !DILocalVariable(name: "channel_type", scope: !2052, file: !3, line: 537, type: !275)
!2064 = !DILocation(line: 532, column: 68, scope: !2052)
!2065 = !DILocation(line: 534, column: 5, scope: !2052)
!2066 = !DILocation(line: 534, column: 15, scope: !2052)
!2067 = !DILocation(line: 537, column: 9, scope: !2052)
!2068 = !DILocation(line: 539, column: 5, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 539, column: 5)
!2070 = !DILocation(line: 539, column: 5, scope: !2052)
!2071 = !DILocation(line: 539, column: 5, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2069, file: !3, discriminator: 1)
!2073 = !DILocation(line: 541, column: 31, scope: !2052)
!2074 = !DILocation(line: 541, column: 5, scope: !2052)
!2075 = !DILocation(line: 543, column: 12, scope: !2052)
!2076 = !DILocation(line: 535, column: 23, scope: !2052)
!2077 = !DILocation(line: 545, column: 10, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 545, column: 9)
!2079 = !DILocation(line: 545, column: 9, scope: !2052)
!2080 = !DILocation(line: 546, column: 16, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 545, column: 16)
!2082 = !DILocation(line: 547, column: 5, scope: !2081)
!2083 = !DILocation(line: 548, column: 37, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 548, column: 9)
!2085 = !DILocation(line: 548, column: 45, scope: !2084)
!2086 = !DILocation(line: 548, column: 9, scope: !2052)
!2087 = !DILocation(line: 549, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 549, column: 9)
!2089 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 548, column: 51)
!2090 = !DILocation(line: 549, column: 9, scope: !2089)
!2091 = !DILocation(line: 549, column: 9, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2088, file: !3, discriminator: 1)
!2093 = !DILocation(line: 550, column: 45, scope: !2089)
!2094 = !DILocation(line: 551, column: 41, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 551, column: 13)
!2096 = !DILocation(line: 554, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 554, column: 13)
!2098 = !DILocation(line: 554, column: 29, scope: !2097)
!2099 = !{!2100, !552, i64 20}
!2100 = !{!"user_interface_handler", !552, i64 0, !552, i64 4, !552, i64 8, !552, i64 12, !552, i64 16, !552, i64 20, !552, i64 24, !552, i64 28, !552, i64 32, !552, i64 36, !552, i64 40, !552, i64 44, !552, i64 48, !552, i64 52, !552, i64 56}
!2101 = !DILocation(line: 554, column: 13, scope: !2089)
!2102 = !DILocation(line: 551, column: 46, scope: !2095)
!2103 = !DILocation(line: 551, column: 13, scope: !2089)
!2104 = !DILocation(line: 555, column: 53, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 554, column: 54)
!2106 = !DILocation(line: 555, column: 13, scope: !2105)
!2107 = !DILocation(line: 556, column: 9, scope: !2105)
!2108 = !DILocation(line: 557, column: 48, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 557, column: 13)
!2110 = !DILocation(line: 557, column: 13, scope: !2109)
!2111 = !DILocation(line: 558, column: 13, scope: !2109)
!2112 = !DILocation(line: 558, column: 45, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2109, file: !3, discriminator: 1)
!2114 = !DILocation(line: 557, column: 13, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2089, file: !3, discriminator: 1)
!2116 = !DILocation(line: 536, column: 32, scope: !2052)
!2117 = !DILocation(line: 559, column: 13, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !3, discriminator: 1)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 559, column: 13)
!2120 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 558, column: 67)
!2121 = !DILocation(line: 560, column: 30, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 560, column: 21)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 559, column: 50)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 559, column: 13)
!2125 = !DILocation(line: 560, column: 66, scope: !2122)
!2126 = !DILocation(line: 560, column: 35, scope: !2122)
!2127 = !DILocation(line: 560, column: 21, scope: !2123)
!2128 = !DILocation(line: 562, column: 34, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 562, column: 25)
!2130 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 560, column: 72)
!2131 = !DILocation(line: 562, column: 25, scope: !2129)
!2132 = !DILocation(line: 562, column: 25, scope: !2130)
!2133 = !DILocation(line: 563, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 562, column: 48)
!2135 = !DILocation(line: 564, column: 21, scope: !2134)
!2136 = !DILocation(line: 559, column: 13, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2124, file: !3, discriminator: 2)
!2138 = !DILocation(line: 559, column: 13, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2124, file: !3, discriminator: 1)
!2140 = distinct !{!2140, !2141, !2142}
!2141 = !DILocation(line: 559, column: 13, scope: !2119)
!2142 = !DILocation(line: 566, column: 13, scope: !2119)
!2143 = !DILocation(line: 568, column: 36, scope: !2089)
!2144 = !DILocation(line: 569, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 569, column: 13)
!2146 = !DILocation(line: 569, column: 13, scope: !2089)
!2147 = !DILocation(line: 571, column: 34, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 569, column: 38)
!2149 = !DILocation(line: 571, column: 47, scope: !2148)
!2150 = !DILocation(line: 572, column: 13, scope: !2148)
!2151 = !DILocation(line: 573, column: 9, scope: !2148)
!2152 = !DILocation(line: 579, column: 44, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2154, file: !3, discriminator: 1)
!2154 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 579, column: 16)
!2155 = !DILocation(line: 579, column: 52, scope: !2153)
!2156 = !DILocation(line: 579, column: 16, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2084, file: !3, discriminator: 1)
!2158 = !DILocation(line: 580, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 580, column: 9)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 579, column: 58)
!2161 = !DILocation(line: 580, column: 9, scope: !2160)
!2162 = !DILocation(line: 580, column: 9, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2159, file: !3, discriminator: 1)
!2164 = !DILocation(line: 581, column: 45, scope: !2160)
!2165 = !DILocation(line: 582, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 582, column: 13)
!2167 = !DILocation(line: 582, column: 29, scope: !2166)
!2168 = !DILocation(line: 582, column: 13, scope: !2160)
!2169 = !DILocation(line: 583, column: 53, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 582, column: 54)
!2171 = !DILocation(line: 583, column: 13, scope: !2170)
!2172 = !DILocation(line: 584, column: 9, scope: !2170)
!2173 = !DILocation(line: 586, column: 41, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 586, column: 13)
!2175 = !DILocation(line: 586, column: 46, scope: !2174)
!2176 = !DILocation(line: 586, column: 13, scope: !2160)
!2177 = !DILocation(line: 587, column: 70, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 586, column: 62)
!2179 = !DILocation(line: 587, column: 42, scope: !2178)
!2180 = !DILocation(line: 587, column: 79, scope: !2178)
!2181 = !DILocation(line: 587, column: 13, scope: !2178)
!2182 = !DILocation(line: 588, column: 9, scope: !2178)
!2183 = !DILocation(line: 590, column: 13, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 590, column: 13)
!2185 = !DILocation(line: 590, column: 13, scope: !2160)
!2186 = !DILocation(line: 591, column: 13, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 590, column: 33)
!2188 = !DILocation(line: 592, column: 9, scope: !2187)
!2189 = !DILocation(line: 594, column: 9, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2191, file: !3, discriminator: 1)
!2191 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 594, column: 9)
!2192 = !DILocation(line: 595, column: 26, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 595, column: 17)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 594, column: 46)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 594, column: 9)
!2196 = !DILocation(line: 595, column: 62, scope: !2193)
!2197 = !DILocation(line: 595, column: 31, scope: !2193)
!2198 = !DILocation(line: 595, column: 17, scope: !2194)
!2199 = !DILocation(line: 596, column: 30, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 596, column: 21)
!2201 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 595, column: 68)
!2202 = !DILocation(line: 596, column: 21, scope: !2200)
!2203 = !DILocation(line: 596, column: 21, scope: !2201)
!2204 = !DILocation(line: 597, column: 21, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 596, column: 44)
!2206 = !DILocation(line: 598, column: 17, scope: !2205)
!2207 = !DILocation(line: 594, column: 9, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2195, file: !3, discriminator: 2)
!2209 = !DILocation(line: 594, column: 9, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2195, file: !3, discriminator: 1)
!2211 = distinct !{!2211, !2212, !2213}
!2212 = !DILocation(line: 594, column: 9, scope: !2191)
!2213 = !DILocation(line: 600, column: 9, scope: !2191)
!2214 = !DILocation(line: 601, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 601, column: 13)
!2216 = !DILocation(line: 601, column: 33, scope: !2215)
!2217 = !DILocation(line: 601, column: 13, scope: !2160)
!2218 = !DILocation(line: 602, column: 67, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 601, column: 66)
!2220 = !DILocation(line: 602, column: 13, scope: !2219)
!2221 = !DILocation(line: 603, column: 67, scope: !2219)
!2222 = !DILocation(line: 603, column: 13, scope: !2219)
!2223 = !DILocation(line: 604, column: 9, scope: !2219)
!2224 = !DILocation(line: 606, column: 1, scope: !2052)
!2225 = distinct !DISubprogram(name: "__close_channel", scope: !3, file: !3, line: 423, type: !2226, isLocal: true, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !198, !275}
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DILocalVariable(name: "conn", arg: 1, scope: !2225, file: !3, line: 423, type: !198)
!2230 = !DILocalVariable(name: "channel", arg: 2, scope: !2225, file: !3, line: 423, type: !275)
!2231 = !DILocalVariable(name: "channel_type", scope: !2225, file: !3, line: 425, type: !275)
!2232 = !DILocalVariable(name: "temp_addr", scope: !2225, file: !3, line: 427, type: !2233)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 48, elements: !209)
!2234 = !DILocation(line: 423, column: 47, scope: !2225)
!2235 = !DILocation(line: 423, column: 57, scope: !2225)
!2236 = !DILocation(line: 425, column: 9, scope: !2225)
!2237 = !DILocation(line: 427, column: 5, scope: !2225)
!2238 = !DILocation(line: 427, column: 8, scope: !2225)
!2239 = !DILocation(line: 428, column: 37, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 428, column: 9)
!2241 = !DILocation(line: 428, column: 45, scope: !2240)
!2242 = !DILocation(line: 428, column: 9, scope: !2225)
!2243 = !DILocation(line: 155, column: 36, scope: !2244, inlinedAt: !2249)
!2244 = distinct !DISubprogram(name: "__avdtp_session_close", scope: !3, file: !3, line: 153, type: !2245, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !278}
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "session", arg: 1, scope: !2244, file: !3, line: 153, type: !278)
!2249 = distinct !DILocation(line: 429, column: 9, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 428, column: 57)
!2251 = !{!616, !619, i64 66}
!2252 = !DILocation(line: 430, column: 41, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 430, column: 13)
!2254 = !DILocation(line: 433, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 433, column: 13)
!2256 = !DILocation(line: 433, column: 29, scope: !2255)
!2257 = !DILocation(line: 433, column: 13, scope: !2250)
!2258 = !DILocation(line: 430, column: 46, scope: !2253)
!2259 = !DILocation(line: 430, column: 13, scope: !2250)
!2260 = !DILocation(line: 434, column: 53, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 433, column: 54)
!2262 = !DILocation(line: 434, column: 13, scope: !2261)
!2263 = !DILocation(line: 435, column: 9, scope: !2261)
!2264 = !DILocation(line: 436, column: 41, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 436, column: 13)
!2266 = !DILocation(line: 436, column: 46, scope: !2265)
!2267 = !DILocation(line: 436, column: 13, scope: !2250)
!2268 = !DILocation(line: 438, column: 13, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 436, column: 62)
!2270 = !DILocation(line: 439, column: 9, scope: !2269)
!2271 = !DILocation(line: 440, column: 44, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2273, file: !3, discriminator: 1)
!2273 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 440, column: 16)
!2274 = !DILocation(line: 440, column: 52, scope: !2272)
!2275 = !DILocation(line: 440, column: 16, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2240, file: !3, discriminator: 1)
!2277 = !DILocation(line: 441, column: 45, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 440, column: 64)
!2279 = !DILocation(line: 442, column: 9, scope: !2278)
!2280 = !DILocation(line: 443, column: 13, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 443, column: 13)
!2282 = !DILocation(line: 443, column: 29, scope: !2281)
!2283 = !DILocation(line: 443, column: 13, scope: !2278)
!2284 = !DILocation(line: 444, column: 53, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 443, column: 54)
!2286 = !DILocation(line: 444, column: 13, scope: !2285)
!2287 = !DILocation(line: 445, column: 9, scope: !2285)
!2288 = !DILocation(line: 447, column: 13, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 447, column: 13)
!2290 = !DILocation(line: 447, column: 13, scope: !2278)
!2291 = !DILocation(line: 448, column: 13, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 447, column: 33)
!2293 = !DILocation(line: 449, column: 9, scope: !2292)
!2294 = !DILocation(line: 453, column: 37, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 453, column: 9)
!2296 = !DILocation(line: 453, column: 45, scope: !2295)
!2297 = !DILocation(line: 453, column: 50, scope: !2295)
!2298 = !DILocation(line: 453, column: 81, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2295, file: !3, discriminator: 1)
!2300 = !DILocation(line: 453, column: 89, scope: !2299)
!2301 = !DILocation(line: 453, column: 9, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2225, file: !3, discriminator: 1)
!2303 = !DILocation(line: 454, column: 9, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 453, column: 95)
!2305 = !DILocalVariable(name: "conn", arg: 1, scope: !2306, file: !3, line: 408, type: !198)
!2306 = distinct !DISubprogram(name: "__free_a2dp_conn", scope: !3, file: !3, line: 408, type: !901, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2307)
!2307 = !{!2305}
!2308 = !DILocation(line: 408, column: 48, scope: !2306, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 455, column: 9, scope: !2304)
!2310 = !DILocation(line: 413, column: 5, scope: !2306, inlinedAt: !2309)
!2311 = !DILocation(line: 456, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 456, column: 13)
!2313 = !DILocation(line: 456, column: 13, scope: !2304)
!2314 = !DILocation(line: 457, column: 40, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 456, column: 41)
!2316 = !DILocation(line: 458, column: 13, scope: !2315)
!2317 = !DILocation(line: 459, column: 9, scope: !2315)
!2318 = !DILocation(line: 461, column: 1, scope: !2225)
