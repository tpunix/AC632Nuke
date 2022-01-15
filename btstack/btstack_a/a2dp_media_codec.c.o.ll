; ModuleID = 'a2dp_media_codec.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.a2dp_media_codec = type { i32, i32 (i32)*, i32 (i8*)*, i32 (i8*, i16)*, i32 (...)*, i32 (i8*)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
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

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@current_conn = internal unnamed_addr global i8* null, section ".bt_stack_data", align 4, !dbg !277
@channel = internal unnamed_addr global i8* null, section ".bt_stack_data", align 4, !dbg !279
@a2dp_media_get_packet_play_time.sample_rates = private unnamed_addr constant [4 x i16] [i16 16000, i16 32000, i16 -21436, i16 -17536], align 2
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [39 x i8] c"[pro-info] :===suspend %x channel %x\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"[pro-info] :===resume %x %x channel %x\0A\0A\00", align 1
@a2dp_1sbc_codec_private = hidden constant %struct.a2dp_media_codec { i32 0, i32 (i32)* @sbc_codec_inused, i32 (i8*)* @sbc_codec_init, i32 (i8*, i16)* @sbc_codec_start, i32 (...)* bitcast (i32 (i8*)* @sbc_codec_stop to i32 (...)*), i32 (i8*)* @sbc_codec_stop }, section ".a2dp_sink_media_codec", align 4, !dbg !272
@a2dp_2aac_sink_codec = hidden constant %struct.a2dp_media_codec { i32 2, i32 (i32)* @sbc_codec_inused, i32 (i8*)* @sbc_codec_init, i32 (i8*, i16)* @sbc_codec_start, i32 (...)* bitcast (i32 (i8*)* @sbc_codec_stop to i32 (...)*), i32 (i8*)* @sbc_codec_stop }, section ".a2dp_sink_media_codec", align 4, !dbg !275
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"[pro-info] :sbc_codec_init:%x %x channel %x\0A\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"<BT-log> :bitrate:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"<BT-log> :nchannels:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"<BT-log> :samplerate:%d\0A\00", align 1
@llvm.used = appending global [2 x i8*] [i8* bitcast (%struct.a2dp_media_codec* @a2dp_1sbc_codec_private to i8*), i8* bitcast (%struct.a2dp_media_codec* @a2dp_2aac_sink_codec to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [29 x i8] c"<BT-log> :a2dp aac capacity:\00"
@str.8 = private unnamed_addr constant [26 x i8] c"<BT-log> :sbc_codec_init\0A\00"

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_packet(i8**) local_unnamed_addr #0 section ".bt_stack_code" !dbg !285 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !290, metadata !DIExpression()), !dbg !293
  %2 = load i8*, i8** @current_conn, align 4, !dbg !294, !tbaa !296
  %3 = icmp eq i8* %2, null, !dbg !300
  br i1 %3, label %7, label %4, !dbg !301

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** @channel, align 4, !dbg !302, !tbaa !296
  %6 = tail call i32 @lmp_private_get_sbc_packet(i8* %5, i8** %0, i32 1) #7, !dbg !303
  call void @llvm.dbg.value(metadata i32 %6, metadata !292, metadata !DIExpression()), !dbg !304
  br label %7

; <label>:7:                                      ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ -22, %1 ]
  ret i32 %8, !dbg !305
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @lmp_private_get_sbc_packet(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_try_get_packet(i8**) local_unnamed_addr #0 section ".bt_stack_code" !dbg !307 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !309, metadata !DIExpression()), !dbg !312
  %2 = load i8*, i8** @current_conn, align 4, !dbg !313, !tbaa !296
  %3 = icmp eq i8* %2, null, !dbg !315
  br i1 %3, label %7, label %4, !dbg !316

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** @channel, align 4, !dbg !317, !tbaa !296
  %6 = tail call i32 @lmp_private_get_sbc_packet(i8* %5, i8** %0, i32 0) #7, !dbg !318
  call void @llvm.dbg.value(metadata i32 %6, metadata !311, metadata !DIExpression()), !dbg !319
  br label %7

; <label>:7:                                      ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ -22, %1 ]
  ret i32 %8, !dbg !320
}

; Function Attrs: nounwind optsize
define hidden i8* @a2dp_media_fetch_packet(i32*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !322 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !327, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %1, metadata !328, metadata !DIExpression()), !dbg !330
  %3 = load i8*, i8** @current_conn, align 4, !dbg !331, !tbaa !296
  %4 = icmp eq i8* %3, null, !dbg !333
  br i1 %4, label %8, label %5, !dbg !334

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** @channel, align 4, !dbg !335, !tbaa !296
  %7 = tail call i8* @lmp_private_fetch_sbc_packet(i8* %6, i32* %0, i8* %1, i32 0) #7, !dbg !336
  br label %8, !dbg !337

; <label>:8:                                      ; preds = %5, %2
  %9 = phi i8* [ %7, %5 ], [ null, %2 ]
  ret i8* %9, !dbg !338
}

; Function Attrs: optsize
declare i8* @lmp_private_fetch_sbc_packet(i8*, i32*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i8* @a2dp_media_fetch_packet_and_wait(i32*, i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !339 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8* %1, metadata !344, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %2, metadata !345, metadata !DIExpression()), !dbg !348
  %4 = load i8*, i8** @current_conn, align 4, !dbg !349, !tbaa !296
  %5 = icmp eq i8* %4, null, !dbg !351
  br i1 %5, label %9, label %6, !dbg !352

; <label>:6:                                      ; preds = %3
  %7 = load i8*, i8** @channel, align 4, !dbg !353, !tbaa !296
  %8 = tail call i8* @lmp_private_fetch_sbc_packet(i8* %7, i32* %0, i8* %1, i32 %2) #7, !dbg !354
  br label %9, !dbg !355

; <label>:9:                                      ; preds = %6, %3
  %10 = phi i8* [ %8, %6 ], [ null, %3 ]
  ret i8* %10, !dbg !356
}

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_packet_num() local_unnamed_addr #0 section ".bt_stack_code" !dbg !357 {
  %1 = load i8*, i8** @current_conn, align 4, !dbg !361, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !363
  br i1 %2, label %6, label %3, !dbg !364

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @channel, align 4, !dbg !365, !tbaa !296
  %5 = tail call i32 @lmp_private_get_sbc_packet_num(i8* %4) #7, !dbg !366
  br label %6, !dbg !367

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %7, !dbg !368
}

; Function Attrs: optsize
declare i32 @lmp_private_get_sbc_packet_num(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @a2dp_media_free_packet(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !369 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !373, metadata !DIExpression()), !dbg !374
  %2 = load i8*, i8** @channel, align 4, !dbg !375, !tbaa !296
  tail call void @lmp_private_free_sbc_packet(i8* %2, i8* %0) #7, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: optsize
declare void @lmp_private_free_sbc_packet(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_clear_packet() local_unnamed_addr #0 section ".bt_stack_code" !dbg !378 {
  %1 = load i8*, i8** @channel, align 4, !dbg !379, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !381
  br i1 %2, label %5, label %3, !dbg !382

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @lmp_private_clear_a2dp_packet(i8* nonnull %1, i16 zeroext 0) #7, !dbg !383
  br label %5, !dbg !384

; <label>:5:                                      ; preds = %3, %0
  ret i32 0, !dbg !385
}

; Function Attrs: optsize
declare i32 @lmp_private_clear_a2dp_packet(i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_total_data_len() local_unnamed_addr #0 section ".bt_stack_code" !dbg !386 {
  %1 = load i8*, i8** @channel, align 4, !dbg !387, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !389
  br i1 %2, label %5, label %3, !dbg !390

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @lmp_private_get_sbc_data_len(i8* nonnull %1) #7, !dbg !391
  br label %5, !dbg !392

; <label>:5:                                      ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6, !dbg !393
}

; Function Attrs: optsize
declare i32 @lmp_private_get_sbc_data_len(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_channel_exist() local_unnamed_addr #0 section ".bt_stack_code" !dbg !394 {
  %1 = load i8*, i8** @channel, align 4, !dbg !395, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !397
  br i1 %2, label %5, label %3, !dbg !398

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @lmp_private_a2dp_channel_exist(i8* nonnull %1) #7, !dbg !399
  br label %5, !dbg !400

; <label>:5:                                      ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6, !dbg !401
}

; Function Attrs: optsize
declare i32 @lmp_private_a2dp_channel_exist(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_total_buffer_size() local_unnamed_addr #0 section ".bt_stack_code" !dbg !402 {
  %1 = load i8*, i8** @channel, align 4, !dbg !403, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !405
  br i1 %2, label %5, label %3, !dbg !406

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @lmp_private_get_rx_buffer_total_size(i8* nonnull %1) #7, !dbg !407
  br label %5, !dbg !408

; <label>:5:                                      ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6, !dbg !409
}

; Function Attrs: optsize
declare i32 @lmp_private_get_rx_buffer_total_size(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_remain_buffer_size() local_unnamed_addr #0 section ".bt_stack_code" !dbg !410 {
  %1 = load i8*, i8** @channel, align 4, !dbg !411, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !413
  br i1 %2, label %5, label %3, !dbg !414

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @lmp_private_get_rx_buffer_remain_size(i8* nonnull %1) #7, !dbg !415
  br label %5, !dbg !416

; <label>:5:                                      ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6, !dbg !417
}

; Function Attrs: optsize
declare i32 @lmp_private_get_rx_buffer_remain_size(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_remain_play_time(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !418 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !422, metadata !DIExpression()), !dbg !423
  %2 = load i8*, i8** @channel, align 4, !dbg !424, !tbaa !296
  %3 = icmp eq i8* %2, null, !dbg !426
  br i1 %3, label %6, label %4, !dbg !427

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lmp_private_get_sbc_remain_time(i8* nonnull %2, i8 zeroext %0) #7, !dbg !428
  br label %6, !dbg !429

; <label>:6:                                      ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7, !dbg !430
}

; Function Attrs: optsize
declare i32 @lmp_private_get_sbc_remain_time(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_is_clearing_frame() local_unnamed_addr #0 section ".bt_stack_code" !dbg !431 {
  %1 = load i8*, i8** @channel, align 4, !dbg !432, !tbaa !296
  %2 = icmp eq i8* %1, null, !dbg !434
  br i1 %2, label %5, label %3, !dbg !435

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @lmp_private_is_clearing_a2dp_packet(i8* nonnull %1) #7, !dbg !436
  br label %5, !dbg !437

; <label>:5:                                      ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6, !dbg !438
}

; Function Attrs: optsize
declare i32 @lmp_private_is_clearing_a2dp_packet(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_clear_packet_before_seqn(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !439 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !443, metadata !DIExpression()), !dbg !444
  %2 = load i8*, i8** @channel, align 4, !dbg !445, !tbaa !296
  %3 = icmp eq i8* %2, null, !dbg !447
  br i1 %3, label %6, label %4, !dbg !448

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lmp_private_clear_a2dp_packet(i8* nonnull %2, i16 zeroext %0) #7, !dbg !449
  br label %6, !dbg !450

; <label>:6:                                      ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7, !dbg !451
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @a2dp_media_get_codec_type() local_unnamed_addr #3 section ".bt_stack_code" !dbg !452 {
  %1 = load %struct.a2dp_conn*, %struct.a2dp_conn** bitcast (i8** @current_conn to %struct.a2dp_conn**), align 4, !dbg !455, !tbaa !296
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %1, metadata !454, metadata !DIExpression()), !dbg !456
  %2 = icmp eq %struct.a2dp_conn* %1, null, !dbg !457
  br i1 %2, label %10, label %3, !dbg !459

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %1, i32 0, i32 2, i32 1, i32 1, !dbg !460
  %5 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %4, align 4, !dbg !460, !tbaa !462
  %6 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %5, i32 0, i32 3, !dbg !472
  %7 = load i8, i8* %6, align 2, !dbg !472
  %8 = lshr i8 %7, 4, !dbg !472
  %9 = zext i8 %8 to i32, !dbg !473
  br label %10, !dbg !474

; <label>:10:                                     ; preds = %3, %0
  %11 = phi i32 [ %9, %3 ], [ -22, %0 ]
  ret i32 %11, !dbg !475
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @a2dp_media_get_rtp_header_len(i8 zeroext, i8* nocapture readonly, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !476 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !480, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata i8* %1, metadata !481, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i32 %2, metadata !482, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i8* %1, metadata !487, metadata !DIExpression()), !dbg !492
  %4 = load i8, i8* %1, align 1, !dbg !493, !tbaa !494
  %5 = zext i8 %4 to i32, !dbg !493
  call void @llvm.dbg.value(metadata i32 %12, metadata !483, metadata !DIExpression()), !dbg !495
  %6 = shl nuw nsw i32 %5, 2, !dbg !496
  %7 = and i32 %6, 60, !dbg !496
  %8 = add nuw nsw i32 %7, 12, !dbg !497
  call void @llvm.dbg.value(metadata i32 %8, metadata !485, metadata !DIExpression()), !dbg !498
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !499
  call void @llvm.dbg.value(metadata i8* %9, metadata !481, metadata !DIExpression()), !dbg !489
  %10 = icmp eq i8 %0, 13, !dbg !500
  br i1 %10, label %41, label %11, !dbg !502

; <label>:11:                                     ; preds = %3
  %12 = and i32 %5, 16, !dbg !503
  %13 = icmp eq i32 %12, 0, !dbg !504
  br i1 %13, label %25, label %14, !dbg !506

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds i8, i8* %9, i32 2, !dbg !507
  %16 = load i8, i8* %15, align 1, !dbg !507, !tbaa !494
  %17 = zext i8 %16 to i32, !dbg !507
  %18 = shl nuw nsw i32 %17, 8, !dbg !507
  %19 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !507
  %20 = load i8, i8* %19, align 1, !dbg !507, !tbaa !494
  %21 = zext i8 %20 to i32, !dbg !507
  %22 = or i32 %18, %21, !dbg !507
  %23 = shl nuw nsw i32 %22, 2, !dbg !509
  %24 = add nuw nsw i32 %23, 4, !dbg !509
  call void @llvm.dbg.value(metadata i32 %24, metadata !483, metadata !DIExpression()), !dbg !495
  br label %25, !dbg !510

; <label>:25:                                     ; preds = %14, %11
  %26 = phi i32 [ %24, %14 ], [ 0, %11 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !483, metadata !DIExpression()), !dbg !495
  %27 = add nsw i32 %26, %8, !dbg !511
  %28 = or i32 %27, 1, !dbg !512
  call void @llvm.dbg.value(metadata i32 %28, metadata !486, metadata !DIExpression()), !dbg !491
  %29 = icmp eq i8 %0, 0, !dbg !513
  br i1 %29, label %30, label %41, !dbg !515

; <label>:30:                                     ; preds = %25
  br label %31, !dbg !491

; <label>:31:                                     ; preds = %36, %30
  %32 = phi i32 [ %37, %36 ], [ %28, %30 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !486, metadata !DIExpression()), !dbg !491
  %33 = getelementptr inbounds i8, i8* %1, i32 %32, !dbg !516
  %34 = load i8, i8* %33, align 1, !dbg !516, !tbaa !494
  %35 = icmp eq i8 %34, -100, !dbg !519
  br i1 %35, label %39, label %36, !dbg !520

; <label>:36:                                     ; preds = %31
  %37 = add nsw i32 %32, 1, !dbg !521
  call void @llvm.dbg.value(metadata i32 %37, metadata !486, metadata !DIExpression()), !dbg !491
  %38 = icmp sgt i32 %37, %2, !dbg !524
  br i1 %38, label %39, label %31, !dbg !525, !llvm.loop !526

; <label>:39:                                     ; preds = %36, %31
  %40 = phi i32 [ %32, %31 ], [ %2, %36 ]
  br label %41, !dbg !529

; <label>:41:                                     ; preds = %39, %25, %3
  %42 = phi i32 [ 0, %3 ], [ %28, %25 ], [ %40, %39 ]
  ret i32 %42, !dbg !529
}

; Function Attrs: nounwind optsize
define hidden i32 @a2dp_media_get_packet_play_time(i16 zeroext, i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !530 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !534, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i8* %1, metadata !535, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 %2, metadata !536, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 0, metadata !537, metadata !DIExpression()), !dbg !552
  %4 = tail call %struct.a2dp_conn* @__a2dp_conn_for_channel(i16 zeroext %0) #7, !dbg !553
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %4, metadata !538, metadata !DIExpression()), !dbg !554
  %5 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %4, i32 0, i32 2, i32 1, i32 1, !dbg !555
  %6 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %5, align 4, !dbg !555, !tbaa !462
  %7 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %6, i32 0, i32 3, !dbg !556
  %8 = load i8, i8* %7, align 2, !dbg !556
  %9 = lshr i8 %8, 4, !dbg !556
  call void @llvm.dbg.value(metadata i8 %9, metadata !539, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.declare(metadata [4 x i16]* @a2dp_media_get_packet_play_time.sample_rates, metadata !540, metadata !DIExpression()), !dbg !558
  %10 = trunc i8 %9 to i4, !dbg !559
  switch i4 %10, label %35 [
    i4 0, label %11
    i4 2, label %29
  ], !dbg !559

; <label>:11:                                     ; preds = %3
  %12 = tail call i32 @a2dp_media_get_rtp_header_len(i8 zeroext 0, i8* %1, i32 %2) #8, !dbg !560
  %13 = add nsw i32 %12, -1, !dbg !561
  call void @llvm.dbg.value(metadata i32 %13, metadata !544, metadata !DIExpression()), !dbg !562
  %14 = icmp slt i32 %13, %2, !dbg !563
  br i1 %14, label %15, label %35, !dbg !565

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds i8, i8* %1, i32 %13, !dbg !566
  %17 = load i8, i8* %16, align 1, !dbg !566, !tbaa !494
  %18 = and i8 %17, 15, !dbg !567
  call void @llvm.dbg.value(metadata i8 %18, metadata !547, metadata !DIExpression()), !dbg !568
  %19 = getelementptr inbounds i8, i8* %1, i32 %12, !dbg !569
  %20 = load i8, i8* %19, align 1, !dbg !569, !tbaa !494
  %21 = zext i8 %20 to i32, !dbg !569
  %22 = lshr i32 %21, 6, !dbg !570
  %23 = getelementptr inbounds [4 x i16], [4 x i16]* @a2dp_media_get_packet_play_time.sample_rates, i32 0, i32 %22, !dbg !571
  %24 = load i16, i16* %23, align 2, !dbg !571, !tbaa !572
  %25 = zext i16 %24 to i32, !dbg !571
  call void @llvm.dbg.value(metadata i32 %25, metadata !548, metadata !DIExpression()), !dbg !573
  %26 = zext i8 %18 to i32, !dbg !574
  %27 = mul nuw nsw i32 %26, 128000, !dbg !575
  %28 = udiv i32 %27, %25, !dbg !576
  call void @llvm.dbg.value(metadata i32 %28, metadata !537, metadata !DIExpression()), !dbg !552
  br label %35

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %4, i32 0, i32 3, i32 0, i32 2, !dbg !577
  %31 = load i32, i32* %30, align 4, !dbg !577, !tbaa !581
  %32 = icmp eq i32 %31, 0, !dbg !582
  br i1 %32, label %35, label %33, !dbg !583

; <label>:33:                                     ; preds = %29
  %34 = udiv i32 1024000, %31, !dbg !584
  call void @llvm.dbg.value(metadata i32 %34, metadata !537, metadata !DIExpression()), !dbg !552
  br label %35, !dbg !585

; <label>:35:                                     ; preds = %33, %29, %15, %11, %3
  %36 = phi i32 [ 0, %29 ], [ 0, %11 ], [ %34, %33 ], [ 0, %3 ], [ %28, %15 ]
  ret i32 %36, !dbg !586
}

; Function Attrs: optsize
declare %struct.a2dp_conn* @__a2dp_conn_for_channel(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @a2dp_media_suspend_resume(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !587 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !591, metadata !DIExpression()), !dbg !604
  switch i8 %0, label %70 [
    i8 1, label %2
    i8 2, label %18
    i8 3, label %48
  ], !dbg !605

; <label>:2:                                      ; preds = %1
  %3 = load i8*, i8** @current_conn, align 4, !dbg !606, !tbaa !296
  %4 = icmp ne i8* %3, null, !dbg !606
  %5 = load i8*, i8** @channel, align 4, !dbg !610
  %6 = icmp ne i8* %5, null, !dbg !610
  %7 = and i1 %4, %6, !dbg !612
  br i1 %7, label %8, label %70, !dbg !612

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* @profile_debug_enable, align 1, !dbg !613, !tbaa !494
  %10 = and i8 %9, 1, !dbg !613
  %11 = icmp eq i8 %10, 0, !dbg !613
  br i1 %11, label %17, label %12, !dbg !616

; <label>:12:                                     ; preds = %8
  %13 = ptrtoint i8* %3 to i32, !dbg !617
  %14 = ptrtoint i8* %5 to i32, !dbg !617
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %13, i32 %14) #8, !dbg !617
  %16 = load i8*, i8** @channel, align 4, !dbg !619, !tbaa !296
  tail call void @lmp_private_close_sbc_channel(i8* %16) #7, !dbg !620
  store i8* null, i8** @channel, align 4, !dbg !621, !tbaa !296
  br label %70, !dbg !622

; <label>:17:                                     ; preds = %8
  tail call void @lmp_private_close_sbc_channel(i8* nonnull %5) #7, !dbg !620
  store i8* null, i8** @channel, align 4, !dbg !621, !tbaa !296
  br label %70, !dbg !622

; <label>:18:                                     ; preds = %1
  %19 = load i8*, i8** @current_conn, align 4, !dbg !623, !tbaa !296
  %20 = icmp ne i8* %19, null, !dbg !623
  %21 = load i8*, i8** @channel, align 4, !dbg !624
  %22 = icmp eq i8* %21, null, !dbg !626
  %23 = and i1 %20, %22, !dbg !627
  br i1 %23, label %24, label %70, !dbg !627

; <label>:24:                                     ; preds = %18
  %25 = load i8, i8* @profile_debug_enable, align 1, !dbg !628, !tbaa !494
  %26 = and i8 %25, 1, !dbg !628
  %27 = icmp eq i8 %26, 0, !dbg !628
  br i1 %27, label %28, label %31, !dbg !630

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %19, i32 104, !dbg !631
  %30 = bitcast i8* %29 to i16*, !dbg !632
  br label %38, !dbg !630

; <label>:31:                                     ; preds = %24
  %32 = ptrtoint i8* %19 to i32, !dbg !633
  %33 = getelementptr inbounds i8, i8* %19, i32 104, !dbg !633
  %34 = bitcast i8* %33 to i16*, !dbg !633
  %35 = load i16, i16* %34, align 4, !dbg !633, !tbaa !635
  %36 = zext i16 %35 to i32, !dbg !633
  %37 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %32, i32 %36, i32 0) #8, !dbg !633
  br label %38, !dbg !633

; <label>:38:                                     ; preds = %31, %28
  %39 = phi i16* [ %30, %28 ], [ %34, %31 ], !dbg !632
  %40 = getelementptr inbounds i8, i8* %19, i32 68, !dbg !636
  %41 = bitcast i8* %40 to %struct._avdtp_local_sep**, !dbg !636
  %42 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %41, align 4, !dbg !636, !tbaa !462
  %43 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %42, i32 0, i32 3, !dbg !637
  %44 = load i8, i8* %43, align 2, !dbg !637
  %45 = lshr i8 %44, 4, !dbg !637
  call void @llvm.dbg.value(metadata i8 %45, metadata !597, metadata !DIExpression()), !dbg !638
  %46 = load i16, i16* %39, align 4, !dbg !632, !tbaa !635
  %47 = tail call i8* @lmp_private_open_sbc_channel(i8* nonnull %19, i16 zeroext %46, i8 zeroext %45) #7, !dbg !639
  store i8* %47, i8** @channel, align 4, !dbg !640, !tbaa !296
  br label %70, !dbg !641

; <label>:48:                                     ; preds = %1
  %49 = load i8*, i8** @channel, align 4
  %50 = load i8*, i8** @current_conn, align 4, !dbg !642, !tbaa !296
  %51 = icmp ne i8* %50, null, !dbg !642
  %52 = icmp eq i8* %49, null, !dbg !643
  %53 = and i1 %51, %52, !dbg !645
  br i1 %53, label %54, label %70, !dbg !645

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds i8, i8* %50, i32 68, !dbg !646
  %56 = bitcast i8* %55 to %struct._avdtp_local_sep**, !dbg !646
  %57 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %56, align 4, !dbg !646, !tbaa !462
  %58 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %57, i32 0, i32 3, !dbg !647
  %59 = load i8, i8* %58, align 2, !dbg !647
  %60 = lshr i8 %59, 4, !dbg !647
  call void @llvm.dbg.value(metadata i8 %60, metadata !603, metadata !DIExpression()), !dbg !648
  %61 = getelementptr inbounds i8, i8* %50, i32 104, !dbg !649
  %62 = bitcast i8* %61 to i16*, !dbg !650
  %63 = load i16, i16* %62, align 4, !dbg !650, !tbaa !635
  %64 = tail call i8* @lmp_private_open_sbc_channel(i8* nonnull %50, i16 zeroext %63, i8 zeroext %60) #7, !dbg !651
  store i8* %64, i8** @channel, align 4, !dbg !652, !tbaa !296
  %65 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %56, align 4, !dbg !653, !tbaa !462
  %66 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %65, i32 0, i32 3, !dbg !654
  %67 = load i8, i8* %66, align 2, !dbg !654
  %68 = lshr i8 %67, 4, !dbg !654
  %69 = zext i8 %68 to i32, !dbg !655
  tail call void @bt_event_update_to_user(i8* nonnull %50, i32 1129270784, i8 zeroext 48, i32 %69) #7, !dbg !656
  br label %70, !dbg !657

; <label>:70:                                     ; preds = %54, %48, %38, %18, %17, %12, %2, %1
  ret void, !dbg !658
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lmp_private_close_sbc_channel(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @lmp_private_open_sbc_channel(i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
define internal i32 @sbc_codec_inused(i32) #3 section ".bt_stack_code" !dbg !659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !661, metadata !DIExpression()), !dbg !662
  %2 = load i8*, i8** @channel, align 4, !dbg !663, !tbaa !296
  %3 = icmp ne i8* %2, null, !dbg !665
  %4 = zext i1 %3 to i32, !dbg !665
  ret i32 %4, !dbg !666
}

; Function Attrs: nounwind optsize
define internal i32 @sbc_codec_init(i8*) #0 section ".bt_stack_code" !dbg !667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !669, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i8 0, metadata !670, metadata !DIExpression()), !dbg !674
  %2 = getelementptr inbounds i8, i8* %0, i32 68, !dbg !675
  %3 = bitcast i8* %2 to %struct._avdtp_local_sep**, !dbg !675
  %4 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %3, align 4, !dbg !675, !tbaa !462
  %5 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %4, i32 0, i32 3, !dbg !676
  %6 = load i8, i8* %5, align 2, !dbg !676
  %7 = lshr i8 %6, 4, !dbg !676
  call void @llvm.dbg.value(metadata i8 %7, metadata !672, metadata !DIExpression()), !dbg !677
  %8 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !678, !tbaa !494
  %9 = icmp slt i8 %8, 0, !dbg !678
  br i1 %9, label %10, label %12, !dbg !680

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.8, i32 0, i32 0)), !dbg !681
  br label %12, !dbg !681

; <label>:12:                                     ; preds = %10, %1
  %13 = load i8*, i8** @channel, align 4, !dbg !683, !tbaa !296
  %14 = icmp eq i8* %13, null, !dbg !685
  br i1 %14, label %15, label %21, !dbg !686

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i32 104, !dbg !687
  %17 = bitcast i8* %16 to i16*, !dbg !689
  %18 = load i16, i16* %17, align 4, !dbg !689, !tbaa !635
  %19 = tail call i8* @lmp_private_open_sbc_channel(i8* nonnull %0, i16 zeroext %18, i8 zeroext %7) #7, !dbg !690
  store i8* %19, i8** @channel, align 4, !dbg !691, !tbaa !296
  %20 = tail call i32 @update_multi_bd_status(i8* nonnull %0, i8 zeroext 4, i8 zeroext -1) #7, !dbg !692
  br label %21, !dbg !693

; <label>:21:                                     ; preds = %15, %12
  %22 = load i8, i8* @profile_debug_enable, align 1, !dbg !694, !tbaa !494
  %23 = and i8 %22, 1, !dbg !694
  %24 = icmp eq i8 %23, 0, !dbg !694
  br i1 %24, label %33, label %25, !dbg !696

; <label>:25:                                     ; preds = %21
  %26 = ptrtoint i8* %0 to i32, !dbg !697
  %27 = getelementptr inbounds i8, i8* %0, i32 104, !dbg !697
  %28 = bitcast i8* %27 to i16*, !dbg !697
  %29 = load i16, i16* %28, align 4, !dbg !697, !tbaa !635
  %30 = zext i16 %29 to i32, !dbg !697
  %31 = load i32, i32* bitcast (i8** @channel to i32*), align 4, !dbg !697, !tbaa !296
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i32 %26, i32 %30, i32 %31) #8, !dbg !697
  br label %33, !dbg !697

; <label>:33:                                     ; preds = %25, %21
  store i8* %0, i8** @current_conn, align 4, !dbg !699, !tbaa !296
  %34 = icmp eq i8 %7, 13, !dbg !700
  call void @llvm.dbg.value(metadata i8 3, metadata !672, metadata !DIExpression()), !dbg !677
  %35 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !702, !tbaa !296
  %36 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %35, i32 0, i32 0, !dbg !704
  %37 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %36, align 4, !dbg !704, !tbaa !705
  %38 = icmp eq void (i8*, i32, i32)* %37, null, !dbg !702
  br i1 %38, label %40, label %39, !dbg !707

; <label>:39:                                     ; preds = %33
  tail call void %37(i8* nonnull %0, i32 14, i32 1) #7, !dbg !708
  br label %40, !dbg !710

; <label>:40:                                     ; preds = %39, %33
  tail call void @update_bt_current_status(i8* nonnull %0, i8 zeroext 0, i8 zeroext 47) #7, !dbg !711
  %41 = zext i8 %7 to i32, !dbg !712
  %42 = select i1 %34, i32 3, i32 %41, !dbg !712
  tail call void @bt_event_update_to_user(i8* nonnull %0, i32 1129270784, i8 zeroext 48, i32 %42) #7, !dbg !713
  %43 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %3, align 4, !dbg !714, !tbaa !462
  %44 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %43, i32 0, i32 3, !dbg !716
  %45 = load i8, i8* %44, align 2, !dbg !716
  %46 = and i8 %45, -16, !dbg !717
  %47 = icmp eq i8 %46, 32, !dbg !717
  %48 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !718
  %49 = icmp slt i8 %48, 0, !dbg !718
  %50 = and i1 %47, %49, !dbg !721
  br i1 %50, label %51, label %75, !dbg !721

; <label>:51:                                     ; preds = %40
  %52 = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str, i32 0, i32 0)), !dbg !722
  %53 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !724, !tbaa !494
  %54 = icmp slt i8 %53, 0, !dbg !724
  br i1 %54, label %55, label %75, !dbg !726

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds i8, i8* %0, i32 120, !dbg !727
  %57 = bitcast i8* %56 to i32*, !dbg !727
  %58 = load i32, i32* %57, align 4, !dbg !727, !tbaa !729
  %59 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %58) #8, !dbg !727
  %60 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !730, !tbaa !494
  %61 = icmp slt i8 %60, 0, !dbg !730
  br i1 %61, label %62, label %75, !dbg !732

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds i8, i8* %0, i32 124, !dbg !733
  %64 = load i8, i8* %63, align 4, !dbg !733
  %65 = and i8 %64, 15, !dbg !733
  %66 = zext i8 %65 to i32, !dbg !733
  %67 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %66) #8, !dbg !733
  %68 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !735, !tbaa !494
  %69 = icmp slt i8 %68, 0, !dbg !735
  br i1 %69, label %70, label %75, !dbg !737

; <label>:70:                                     ; preds = %62
  %71 = getelementptr inbounds i8, i8* %0, i32 108, !dbg !738
  %72 = bitcast i8* %71 to i32*, !dbg !738
  %73 = load i32, i32* %72, align 4, !dbg !738, !tbaa !581
  %74 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i32 %73) #8, !dbg !738
  br label %75, !dbg !738

; <label>:75:                                     ; preds = %70, %62, %55, %51, %40
  %76 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !740, !tbaa !296
  %77 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %76, i32 0, i32 7, !dbg !742
  %78 = load void (i32)*, void (i32)** %77, align 4, !dbg !742, !tbaa !743
  %79 = icmp eq void (i32)* %78, null, !dbg !744
  br i1 %79, label %86, label %80, !dbg !745

; <label>:80:                                     ; preds = %75
  %81 = tail call i32 @get_music_volume(i8* nonnull %0) #7, !dbg !746
  %82 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !748, !tbaa !296
  %83 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %82, i32 0, i32 7, !dbg !749
  %84 = load void (i32)*, void (i32)** %83, align 4, !dbg !749, !tbaa !743
  %85 = and i32 %81, 255, !dbg !750
  tail call void %84(i32 %85) #7, !dbg !748
  br label %86, !dbg !751

; <label>:86:                                     ; preds = %80, %75
  ret i32 0, !dbg !752
}

; Function Attrs: nounwind optsize readnone
define internal i32 @sbc_codec_start(i8* nocapture readnone, i16 zeroext) #5 section ".bt_stack_code" !dbg !753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !755, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i16 %1, metadata !756, metadata !DIExpression()), !dbg !758
  ret i32 0, !dbg !759
}

; Function Attrs: nounwind optsize
define internal i32 @sbc_codec_stop(i8*) #0 section ".bt_stack_code" !dbg !760 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !762, metadata !DIExpression()), !dbg !764
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !765, !tbaa !296
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 0, !dbg !767
  %4 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %3, align 4, !dbg !767, !tbaa !705
  %5 = icmp eq void (i8*, i32, i32)* %4, null, !dbg !765
  br i1 %5, label %7, label %6, !dbg !768

; <label>:6:                                      ; preds = %1
  tail call void %4(i8* %0, i32 14, i32 0) #7, !dbg !769
  br label %7, !dbg !771

; <label>:7:                                      ; preds = %6, %1
  tail call void @update_bt_current_status(i8* %0, i8 zeroext 0, i8 zeroext 45) #7, !dbg !772
  tail call void @bt_event_update_to_user(i8* %0, i32 1129270784, i8 zeroext 49, i32 0) #7, !dbg !773
  %8 = tail call zeroext i8 bitcast (i8 (...)* @find_a2dp_conn_number to i8 ()*)() #7, !dbg !774
  %9 = icmp ugt i8 %8, 1, !dbg !776
  br i1 %9, label %10, label %11, !dbg !777

; <label>:10:                                     ; preds = %7
  tail call void @os_time_dly(i32 2) #7, !dbg !778
  br label %11, !dbg !780

; <label>:11:                                     ; preds = %10, %7
  %12 = load i8*, i8** @channel, align 4, !dbg !781, !tbaa !296
  %13 = icmp eq i8* %12, null, !dbg !783
  br i1 %13, label %16, label %14, !dbg !784

; <label>:14:                                     ; preds = %11
  tail call void @lmp_private_close_sbc_channel(i8* nonnull %12) #7, !dbg !785
  %15 = tail call i32 @update_multi_bd_status(i8* %0, i8 zeroext 5, i8 zeroext -1) #7, !dbg !787
  store i8* null, i8** @channel, align 4, !dbg !788, !tbaa !296
  br label %16, !dbg !789

; <label>:16:                                     ; preds = %14, %11
  store i8* null, i8** @current_conn, align 4, !dbg !790, !tbaa !296
  ret i32 0, !dbg !791
}

; Function Attrs: optsize
declare i32 @update_multi_bd_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_bt_current_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_music_volume(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @find_a2dp_conn_number(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @os_time_dly(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!282, !283}
!llvm.ident = !{!284}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !281, line: 190, type: !229, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !82, globals: !271)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_media_codec.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !59, !76}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 299, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!8 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!9 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!10 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!11 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!12 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!13 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!14 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!15 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!16 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!17 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!18 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!19 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!20 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!21 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!22 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!23 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!24 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!25 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!26 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!27 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!28 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!29 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!30 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!31 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!32 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!33 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!34 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!35 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!36 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!37 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!38 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!39 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!40 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!41 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!42 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!43 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!44 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!45 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!46 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!47 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!48 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!49 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!50 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!51 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!52 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!53 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!54 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!55 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!56 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!57 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!58 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 6, size: 32, elements: !61)
!60 = !DIFile(filename: "../btstack/Host/include/bredr/multi_bd.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!62 = !DIEnumerator(name: "MULTI_BD_SCO_REQ", value: 1)
!63 = !DIEnumerator(name: "MULTI_BD_SCO_CONNECTED", value: 2)
!64 = !DIEnumerator(name: "MULTI_BD_SCO_DISCONN", value: 3)
!65 = !DIEnumerator(name: "MULTI_BD_A2DP_ACTIVE", value: 4)
!66 = !DIEnumerator(name: "MULTI_BD_A2DP_STOP", value: 5)
!67 = !DIEnumerator(name: "MULTI_BD_CALL_INCOMING", value: 6)
!68 = !DIEnumerator(name: "MULTI_BD_CALL_OUTGOING", value: 7)
!69 = !DIEnumerator(name: "MULTI_BD_CALL_HANGUP", value: 8)
!70 = !DIEnumerator(name: "MULTI_BD_SET_WORK_TIME", value: 9)
!71 = !DIEnumerator(name: "MULTI_BD_CLR_WORK_TIME", value: 10)
!72 = !DIEnumerator(name: "MULTI_BD_SCAN_STATUS", value: 11)
!73 = !DIEnumerator(name: "MULTI_BD_SIRI_ACTIVE", value: 12)
!74 = !DIEnumerator(name: "MULTI_BD_SIRI_STOP", value: 13)
!75 = !DIEnumerator(name: "MULTI_BD_A2DP_CONN_CH", value: 14)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 59, size: 32, elements: !78)
!77 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "A2DP_INDSTA_MUSIC_STA_CHANGED", value: 13)
!80 = !DIEnumerator(name: "A2DP_INDSTA_DECCODE_CHANGED", value: 14)
!81 = !DIEnumerator(name: "A2DP_INDSTA_MAX", value: 15)
!82 = !{!83, !84, !164, !124, !222}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_conn", file: !86, line: 237, size: 1024, elements: !87)
!86 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!87 = !{!88, !97, !105, !212}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !85, file: !86, line: 238, baseType: !89, size: 48)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !90, line: 7, baseType: !91)
!90 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 48, elements: !95)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !93, line: 44, baseType: !94)
!93 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !{!96}
!96 = !DISubrange(count: 6)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_core_data", scope: !85, file: !86, line: 239, baseType: !98, size: 8, offset: 48)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_core_data_t", file: !86, line: 229, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 225, size: 8, elements: !100)
!100 = !{!101, !103, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !99, file: !86, line: 226, baseType: !102, size: 1, flags: DIFlagBitField, extraData: i64 0)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 44, baseType: !94)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "discover_req", scope: !99, file: !86, line: 227, baseType: !102, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bqb_test_cnt", scope: !99, file: !86, line: 228, baseType: !102, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !85, file: !86, line: 240, baseType: !106, size: 768, offset: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avdtp", file: !107, line: 335, size: 768, elements: !108)
!107 = !DIFile(filename: "../btstack/Profile/include/bredr/avdtp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!108 = !{!109, !186}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "local_seps", scope: !106, file: !107, line: 337, baseType: !110, size: 448)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 448, elements: !184)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_local_sep", file: !107, line: 293, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_local_sep", file: !107, line: 282, size: 224, elements: !113)
!113 = !{!114, !166, !168, !178, !179, !180}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !112, file: !107, line: 283, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_sep_ind", file: !107, line: 350, size: 288, elements: !118)
!118 = !{!119, !125, !130, !143, !147, !148, !152, !156, !160}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !117, file: !107, line: 351, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !102, !83, !124}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !93, line: 44, baseType: !94)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "set_configuration", scope: !117, file: !107, line: 353, baseType: !126, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!127 = !DISubroutineType(types: !128)
!128 = !{!123, !129, !124, !102, !83}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !117, file: !107, line: 355, baseType: !131, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = !DISubroutineType(types: !133)
!133 = !{!123, !129, !134, !102}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_stream", file: !107, line: 280, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_stream", file: !107, line: 268, size: 8, elements: !137)
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rseid", scope: !136, file: !107, line: 270, baseType: !102, size: 4, flags: DIFlagBitField, extraData: i64 0)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "int_role", scope: !136, file: !107, line: 271, baseType: !102, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "open_acp", scope: !136, file: !107, line: 272, baseType: !102, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "starting", scope: !136, file: !107, line: 278, baseType: !102, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !136, file: !107, line: 279, baseType: !102, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !117, file: !107, line: 356, baseType: !144, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DISubroutineType(types: !146)
!146 = !{!123, !129, !134}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !117, file: !107, line: 357, baseType: !144, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !117, file: !107, line: 359, baseType: !149, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DISubroutineType(types: !151)
!151 = !{!123, !129, !134, !124}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !117, file: !107, line: 361, baseType: !153, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !129}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !117, file: !107, line: 362, baseType: !157, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!158 = !DISubroutineType(types: !159)
!159 = !{!123, null}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "delayreport", scope: !117, file: !107, line: 363, baseType: !161, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!162 = !DISubroutineType(types: !163)
!163 = !{!123, !102, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 46, baseType: !165)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !112, file: !107, line: 284, baseType: !167, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !112, file: !107, line: 286, baseType: !169, size: 16, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_info", file: !107, line: 124, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_info", file: !107, line: 117, size: 16, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !170, file: !107, line: 118, baseType: !102, size: 1, flags: DIFlagBitField, extraData: i64 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !170, file: !107, line: 119, baseType: !102, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "seid", scope: !170, file: !107, line: 120, baseType: !102, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rfa2", scope: !170, file: !107, line: 121, baseType: !102, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !107, line: 122, baseType: !102, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "media_type", scope: !170, file: !107, line: 123, baseType: !102, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !112, file: !107, line: 288, baseType: !102, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "codec_type", scope: !112, file: !107, line: 289, baseType: !102, size: 4, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !112, file: !107, line: 290, baseType: !181, size: 128, offset: 88)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 16)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "adp_core_data", scope: !106, file: !107, line: 338, baseType: !187, size: 320, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_core_data_t", file: !107, line: 333, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 318, size: 320, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !188, file: !107, line: 319, baseType: !135, size: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep", scope: !188, file: !107, line: 320, baseType: !129, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep_ind", scope: !188, file: !107, line: 321, baseType: !102, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !188, file: !107, line: 322, baseType: !164, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !188, file: !107, line: 323, baseType: !195, size: 64, offset: 96)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !201)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_req", file: !107, line: 129, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_req", file: !107, line: 126, size: 8, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !197, file: !107, line: 127, baseType: !102, size: 2, flags: DIFlagBitField, extraData: i64 0)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !197, file: !107, line: 128, baseType: !102, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!201 = !{!202}
!202 = !DISubrange(count: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !188, file: !107, line: 324, baseType: !181, size: 128, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "seid_ind", scope: !188, file: !107, line: 325, baseType: !102, size: 8, offset: 288)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pending_req", scope: !188, file: !107, line: 326, baseType: !102, size: 8, offset: 296)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "max_acp_seid", scope: !188, file: !107, line: 327, baseType: !102, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cur_acp_seid", scope: !188, file: !107, line: 328, baseType: !102, size: 4, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aac_codec_prior", scope: !188, file: !107, line: 329, baseType: !102, size: 4, offset: 312, flags: DIFlagBitField, extraData: i64 304)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !188, file: !107, line: 330, baseType: !102, size: 2, offset: 316, flags: DIFlagBitField, extraData: i64 304)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "get_discover", scope: !188, file: !107, line: 331, baseType: !102, size: 1, offset: 318, flags: DIFlagBitField, extraData: i64 304)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !188, file: !107, line: 332, baseType: !102, size: 1, offset: 319, flags: DIFlagBitField, extraData: i64 304)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !85, file: !86, line: 241, baseType: !213, size: 192, offset: 832)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media", file: !86, line: 215, size: 192, elements: !214)
!214 = !{!215, !224, !248, !267, !268, !269, !270}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "media_core_data", scope: !213, file: !86, line: 216, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "media_core_data_t", file: !86, line: 213, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 209, size: 64, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !217, file: !86, line: 210, baseType: !164, size: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cp_type", scope: !217, file: !86, line: 211, baseType: !164, size: 16, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !217, file: !86, line: 212, baseType: !222, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 48, baseType: !223)
!223 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !213, file: !86, line: 217, baseType: !225, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_probe", file: !86, line: 190, size: 192, elements: !227)
!227 = !{!228, !230, !237, !242, !246, !247}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !86, line: 192, baseType: !229, size: 32)
!229 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !226, file: !86, line: 193, baseType: !231, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = !DISubroutineType(types: !233)
!233 = !{!229, !83, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = !DISubroutineType(types: !236)
!236 = !{!229, !83, !124, !164}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !226, file: !86, line: 194, baseType: !238, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!239 = !DISubroutineType(types: !240)
!240 = !{!229, !241, !124, !164}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !226, file: !86, line: 195, baseType: !243, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!244 = !DISubroutineType(types: !245)
!245 = !{!229, null}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !226, file: !86, line: 196, baseType: !243, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !226, file: !86, line: 197, baseType: !243, size: 32, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !213, file: !86, line: 218, baseType: !249, size: 32, offset: 96)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_codec", file: !86, line: 200, size: 192, elements: !251)
!251 = !{!252, !253, !257, !261, !265, !266}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !250, file: !86, line: 201, baseType: !229, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !250, file: !86, line: 202, baseType: !254, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!255 = !DISubroutineType(types: !256)
!256 = !{!229, !229}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !250, file: !86, line: 203, baseType: !258, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!259 = !DISubroutineType(types: !260)
!260 = !{!229, !83}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !250, file: !86, line: 204, baseType: !262, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DISubroutineType(types: !264)
!264 = !{!229, !124, !164}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !250, file: !86, line: 205, baseType: !243, size: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !250, file: !86, line: 206, baseType: !258, size: 32, offset: 160)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !213, file: !86, line: 219, baseType: !222, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nchannels", scope: !213, file: !86, line: 220, baseType: !102, size: 4, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !213, file: !86, line: 221, baseType: !102, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !86, line: 222, baseType: !102, size: 8, offset: 168)
!271 = !{!0, !272, !275, !277, !279}
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "a2dp_1sbc_codec_private", scope: !2, file: !3, line: 555, type: !274, isLocal: false, isDefinition: true)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "a2dp_2aac_sink_codec", scope: !2, file: !3, line: 565, type: !274, isLocal: false, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "current_conn", scope: !2, file: !3, line: 22, type: !83, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "channel", scope: !2, file: !3, line: 21, type: !83, isLocal: true, isDefinition: true)
!281 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!282 = !{i32 2, !"Dwarf Version", i32 4}
!283 = !{i32 2, !"Debug Info Version", i32 3}
!284 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!285 = distinct !DISubprogram(name: "a2dp_media_get_packet", scope: !3, file: !3, line: 237, type: !286, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !289)
!286 = !DISubroutineType(types: !287)
!287 = !{!229, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!289 = !{!290, !291, !292}
!290 = !DILocalVariable(name: "frame", arg: 1, scope: !285, file: !3, line: 237, type: !288)
!291 = !DILocalVariable(name: "error_code", scope: !285, file: !3, line: 239, type: !229)
!292 = !DILocalVariable(name: "len", scope: !285, file: !3, line: 245, type: !229)
!293 = !DILocation(line: 237, column: 32, scope: !285)
!294 = !DILocation(line: 241, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !285, file: !3, line: 241, column: 9)
!296 = !{!297, !297, i64 0}
!297 = !{!"any pointer", !298, i64 0}
!298 = !{!"omnipotent char", !299, i64 0}
!299 = !{!"Simple C/C++ TBAA"}
!300 = !DILocation(line: 241, column: 22, scope: !295)
!301 = !DILocation(line: 241, column: 9, scope: !285)
!302 = !DILocation(line: 245, column: 42, scope: !285)
!303 = !DILocation(line: 245, column: 15, scope: !285)
!304 = !DILocation(line: 245, column: 9, scope: !285)
!305 = !DILocation(line: 254, column: 1, scope: !306)
!306 = !DILexicalBlockFile(scope: !285, file: !3, discriminator: 1)
!307 = distinct !DISubprogram(name: "a2dp_media_try_get_packet", scope: !3, file: !3, line: 256, type: !286, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !308)
!308 = !{!309, !310, !311}
!309 = !DILocalVariable(name: "frame", arg: 1, scope: !307, file: !3, line: 256, type: !288)
!310 = !DILocalVariable(name: "error_code", scope: !307, file: !3, line: 258, type: !229)
!311 = !DILocalVariable(name: "len", scope: !307, file: !3, line: 264, type: !229)
!312 = !DILocation(line: 256, column: 36, scope: !307)
!313 = !DILocation(line: 260, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !3, line: 260, column: 9)
!315 = !DILocation(line: 260, column: 22, scope: !314)
!316 = !DILocation(line: 260, column: 9, scope: !307)
!317 = !DILocation(line: 264, column: 42, scope: !307)
!318 = !DILocation(line: 264, column: 15, scope: !307)
!319 = !DILocation(line: 264, column: 9, scope: !307)
!320 = !DILocation(line: 273, column: 1, scope: !321)
!321 = !DILexicalBlockFile(scope: !307, file: !3, discriminator: 1)
!322 = distinct !DISubprogram(name: "a2dp_media_fetch_packet", scope: !3, file: !3, line: 275, type: !323, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !326)
!323 = !DISubroutineType(types: !324)
!324 = !{!83, !325, !83}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!326 = !{!327, !328}
!327 = !DILocalVariable(name: "len", arg: 1, scope: !322, file: !3, line: 275, type: !325)
!328 = !DILocalVariable(name: "prev_packet", arg: 2, scope: !322, file: !3, line: 275, type: !83)
!329 = !DILocation(line: 275, column: 36, scope: !322)
!330 = !DILocation(line: 275, column: 47, scope: !322)
!331 = !DILocation(line: 277, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !322, file: !3, line: 277, column: 9)
!333 = !DILocation(line: 277, column: 22, scope: !332)
!334 = !DILocation(line: 277, column: 9, scope: !322)
!335 = !DILocation(line: 281, column: 41, scope: !322)
!336 = !DILocation(line: 281, column: 12, scope: !322)
!337 = !DILocation(line: 281, column: 5, scope: !322)
!338 = !DILocation(line: 282, column: 1, scope: !322)
!339 = distinct !DISubprogram(name: "a2dp_media_fetch_packet_and_wait", scope: !3, file: !3, line: 284, type: !340, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!83, !325, !83, !229}
!342 = !{!343, !344, !345}
!343 = !DILocalVariable(name: "len", arg: 1, scope: !339, file: !3, line: 284, type: !325)
!344 = !DILocalVariable(name: "prev_packet", arg: 2, scope: !339, file: !3, line: 284, type: !83)
!345 = !DILocalVariable(name: "msec", arg: 3, scope: !339, file: !3, line: 284, type: !229)
!346 = !DILocation(line: 284, column: 45, scope: !339)
!347 = !DILocation(line: 284, column: 56, scope: !339)
!348 = !DILocation(line: 284, column: 73, scope: !339)
!349 = !DILocation(line: 286, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !339, file: !3, line: 286, column: 9)
!351 = !DILocation(line: 286, column: 22, scope: !350)
!352 = !DILocation(line: 286, column: 9, scope: !339)
!353 = !DILocation(line: 290, column: 41, scope: !339)
!354 = !DILocation(line: 290, column: 12, scope: !339)
!355 = !DILocation(line: 290, column: 5, scope: !339)
!356 = !DILocation(line: 291, column: 1, scope: !339)
!357 = distinct !DISubprogram(name: "a2dp_media_get_packet_num", scope: !3, file: !3, line: 294, type: !358, isLocal: false, isDefinition: true, scopeLine: 295, isOptimized: true, unit: !2, variables: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!229}
!360 = !{}
!361 = !DILocation(line: 296, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 296, column: 9)
!363 = !DILocation(line: 296, column: 22, scope: !362)
!364 = !DILocation(line: 296, column: 9, scope: !357)
!365 = !DILocation(line: 299, column: 43, scope: !357)
!366 = !DILocation(line: 299, column: 12, scope: !357)
!367 = !DILocation(line: 299, column: 5, scope: !357)
!368 = !DILocation(line: 300, column: 1, scope: !357)
!369 = distinct !DISubprogram(name: "a2dp_media_free_packet", scope: !3, file: !3, line: 303, type: !370, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !83}
!372 = !{!373}
!373 = !DILocalVariable(name: "_packet", arg: 1, scope: !369, file: !3, line: 303, type: !83)
!374 = !DILocation(line: 303, column: 35, scope: !369)
!375 = !DILocation(line: 305, column: 33, scope: !369)
!376 = !DILocation(line: 305, column: 5, scope: !369)
!377 = !DILocation(line: 306, column: 1, scope: !369)
!378 = distinct !DISubprogram(name: "a2dp_media_clear_packet", scope: !3, file: !3, line: 308, type: !358, isLocal: false, isDefinition: true, scopeLine: 309, isOptimized: true, unit: !2, variables: !360)
!379 = !DILocation(line: 310, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !3, line: 310, column: 9)
!381 = !DILocation(line: 310, column: 17, scope: !380)
!382 = !DILocation(line: 310, column: 9, scope: !378)
!383 = !DILocation(line: 313, column: 5, scope: !378)
!384 = !DILocation(line: 314, column: 5, scope: !378)
!385 = !DILocation(line: 315, column: 1, scope: !378)
!386 = distinct !DISubprogram(name: "a2dp_media_get_total_data_len", scope: !3, file: !3, line: 316, type: !358, isLocal: false, isDefinition: true, scopeLine: 317, isOptimized: true, unit: !2, variables: !360)
!387 = !DILocation(line: 318, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !386, file: !3, line: 318, column: 9)
!389 = !DILocation(line: 318, column: 17, scope: !388)
!390 = !DILocation(line: 318, column: 9, scope: !386)
!391 = !DILocation(line: 321, column: 12, scope: !386)
!392 = !DILocation(line: 321, column: 5, scope: !386)
!393 = !DILocation(line: 322, column: 1, scope: !386)
!394 = distinct !DISubprogram(name: "a2dp_media_channel_exist", scope: !3, file: !3, line: 324, type: !358, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !360)
!395 = !DILocation(line: 326, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !394, file: !3, line: 326, column: 9)
!397 = !DILocation(line: 326, column: 17, scope: !396)
!398 = !DILocation(line: 326, column: 9, scope: !394)
!399 = !DILocation(line: 329, column: 12, scope: !394)
!400 = !DILocation(line: 329, column: 5, scope: !394)
!401 = !DILocation(line: 330, column: 1, scope: !394)
!402 = distinct !DISubprogram(name: "a2dp_media_get_total_buffer_size", scope: !3, file: !3, line: 332, type: !358, isLocal: false, isDefinition: true, scopeLine: 333, isOptimized: true, unit: !2, variables: !360)
!403 = !DILocation(line: 334, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !3, line: 334, column: 9)
!405 = !DILocation(line: 334, column: 17, scope: !404)
!406 = !DILocation(line: 334, column: 9, scope: !402)
!407 = !DILocation(line: 337, column: 12, scope: !402)
!408 = !DILocation(line: 337, column: 5, scope: !402)
!409 = !DILocation(line: 338, column: 1, scope: !402)
!410 = distinct !DISubprogram(name: "a2dp_media_get_remain_buffer_size", scope: !3, file: !3, line: 340, type: !358, isLocal: false, isDefinition: true, scopeLine: 341, isOptimized: true, unit: !2, variables: !360)
!411 = !DILocation(line: 342, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !410, file: !3, line: 342, column: 9)
!413 = !DILocation(line: 342, column: 17, scope: !412)
!414 = !DILocation(line: 342, column: 9, scope: !410)
!415 = !DILocation(line: 345, column: 12, scope: !410)
!416 = !DILocation(line: 345, column: 5, scope: !410)
!417 = !DILocation(line: 346, column: 1, scope: !410)
!418 = distinct !DISubprogram(name: "a2dp_media_get_remain_play_time", scope: !3, file: !3, line: 348, type: !419, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!229, !102}
!421 = !{!422}
!422 = !DILocalVariable(name: "include_tws", arg: 1, scope: !418, file: !3, line: 348, type: !102)
!423 = !DILocation(line: 348, column: 40, scope: !418)
!424 = !DILocation(line: 350, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !3, line: 350, column: 9)
!426 = !DILocation(line: 350, column: 17, scope: !425)
!427 = !DILocation(line: 350, column: 9, scope: !418)
!428 = !DILocation(line: 353, column: 12, scope: !418)
!429 = !DILocation(line: 353, column: 5, scope: !418)
!430 = !DILocation(line: 354, column: 1, scope: !418)
!431 = distinct !DISubprogram(name: "a2dp_media_is_clearing_frame", scope: !3, file: !3, line: 356, type: !358, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !360)
!432 = !DILocation(line: 358, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !431, file: !3, line: 358, column: 9)
!434 = !DILocation(line: 358, column: 17, scope: !433)
!435 = !DILocation(line: 358, column: 9, scope: !431)
!436 = !DILocation(line: 361, column: 12, scope: !431)
!437 = !DILocation(line: 361, column: 5, scope: !431)
!438 = !DILocation(line: 362, column: 1, scope: !431)
!439 = distinct !DISubprogram(name: "a2dp_media_clear_packet_before_seqn", scope: !3, file: !3, line: 364, type: !440, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!229, !164}
!442 = !{!443}
!443 = !DILocalVariable(name: "seqn_number", arg: 1, scope: !439, file: !3, line: 364, type: !164)
!444 = !DILocation(line: 364, column: 45, scope: !439)
!445 = !DILocation(line: 366, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !439, file: !3, line: 366, column: 9)
!447 = !DILocation(line: 366, column: 17, scope: !446)
!448 = !DILocation(line: 366, column: 9, scope: !439)
!449 = !DILocation(line: 369, column: 12, scope: !439)
!450 = !DILocation(line: 369, column: 5, scope: !439)
!451 = !DILocation(line: 370, column: 1, scope: !439)
!452 = distinct !DISubprogram(name: "a2dp_media_get_codec_type", scope: !3, file: !3, line: 372, type: !358, isLocal: false, isDefinition: true, scopeLine: 373, isOptimized: true, unit: !2, variables: !453)
!453 = !{!454}
!454 = !DILocalVariable(name: "conn", scope: !452, file: !3, line: 374, type: !84)
!455 = !DILocation(line: 374, column: 50, scope: !452)
!456 = !DILocation(line: 374, column: 23, scope: !452)
!457 = !DILocation(line: 376, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !452, file: !3, line: 376, column: 9)
!459 = !DILocation(line: 376, column: 9, scope: !452)
!460 = !DILocation(line: 377, column: 44, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !3, line: 376, column: 15)
!462 = !{!463, !297, i64 68}
!463 = !{!"a2dp_conn", !298, i64 0, !464, i64 6, !465, i64 8, !469, i64 104}
!464 = !{!"", !298, i64 0, !298, i64 0, !298, i64 0}
!465 = !{!"avdtp", !298, i64 0, !466, i64 56}
!466 = !{!"", !467, i64 0, !297, i64 4, !298, i64 8, !468, i64 10, !298, i64 12, !298, i64 20, !298, i64 36, !298, i64 37, !298, i64 38, !298, i64 38, !298, i64 39, !298, i64 39, !298, i64 39, !298, i64 39}
!467 = !{!"_avdtp_stream", !298, i64 0, !298, i64 0, !298, i64 0, !298, i64 0, !298, i64 0}
!468 = !{!"short", !298, i64 0}
!469 = !{!"a2dp_media", !470, i64 0, !297, i64 8, !297, i64 12, !471, i64 16, !298, i64 20, !298, i64 20, !298, i64 21}
!470 = !{!"", !468, i64 0, !468, i64 2, !471, i64 4}
!471 = !{!"int", !298, i64 0}
!472 = !DILocation(line: 377, column: 55, scope: !461)
!473 = !DILocation(line: 377, column: 16, scope: !461)
!474 = !DILocation(line: 377, column: 9, scope: !461)
!475 = !DILocation(line: 380, column: 1, scope: !452)
!476 = distinct !DISubprogram(name: "a2dp_media_get_rtp_header_len", scope: !3, file: !3, line: 384, type: !477, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!229, !102, !124, !229}
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487}
!480 = !DILocalVariable(name: "coding_type", arg: 1, scope: !476, file: !3, line: 384, type: !102)
!481 = !DILocalVariable(name: "buf", arg: 2, scope: !476, file: !3, line: 384, type: !124)
!482 = !DILocalVariable(name: "len", arg: 3, scope: !476, file: !3, line: 384, type: !229)
!483 = !DILocalVariable(name: "ext", scope: !476, file: !3, line: 386, type: !229)
!484 = !DILocalVariable(name: "csrc", scope: !476, file: !3, line: 386, type: !229)
!485 = !DILocalVariable(name: "byte_len", scope: !476, file: !3, line: 387, type: !229)
!486 = !DILocalVariable(name: "header_len", scope: !476, file: !3, line: 388, type: !229)
!487 = !DILocalVariable(name: "data", scope: !476, file: !3, line: 389, type: !124)
!488 = !DILocation(line: 384, column: 38, scope: !476)
!489 = !DILocation(line: 384, column: 55, scope: !476)
!490 = !DILocation(line: 384, column: 64, scope: !476)
!491 = !DILocation(line: 388, column: 9, scope: !476)
!492 = !DILocation(line: 389, column: 9, scope: !476)
!493 = !DILocation(line: 391, column: 12, scope: !476)
!494 = !{!298, !298, i64 0}
!495 = !DILocation(line: 386, column: 9, scope: !476)
!496 = !DILocation(line: 394, column: 23, scope: !476)
!497 = !DILocation(line: 394, column: 19, scope: !476)
!498 = !DILocation(line: 387, column: 9, scope: !476)
!499 = !DILocation(line: 395, column: 9, scope: !476)
!500 = !DILocation(line: 397, column: 21, scope: !501)
!501 = distinct !DILexicalBlock(scope: !476, file: !3, line: 397, column: 9)
!502 = !DILocation(line: 397, column: 9, scope: !476)
!503 = !DILocation(line: 392, column: 19, scope: !476)
!504 = !DILocation(line: 401, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !476, file: !3, line: 401, column: 9)
!506 = !DILocation(line: 401, column: 9, scope: !476)
!507 = !DILocation(line: 402, column: 16, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !3, line: 401, column: 14)
!509 = !DILocation(line: 402, column: 35, scope: !508)
!510 = !DILocation(line: 403, column: 5, scope: !508)
!511 = !DILocation(line: 405, column: 27, scope: !476)
!512 = !DILocation(line: 405, column: 33, scope: !476)
!513 = !DILocation(line: 406, column: 21, scope: !514)
!514 = distinct !DILexicalBlock(scope: !476, file: !3, line: 406, column: 9)
!515 = !DILocation(line: 406, column: 9, scope: !476)
!516 = !DILocation(line: 407, column: 16, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !3, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 406, column: 40)
!519 = !DILocation(line: 407, column: 33, scope: !517)
!520 = !DILocation(line: 407, column: 9, scope: !517)
!521 = !DILocation(line: 408, column: 17, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 408, column: 17)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 407, column: 42)
!524 = !DILocation(line: 408, column: 30, scope: !522)
!525 = !DILocation(line: 408, column: 17, scope: !523)
!526 = distinct !{!526, !527, !528}
!527 = !DILocation(line: 407, column: 9, scope: !518)
!528 = !DILocation(line: 411, column: 9, scope: !518)
!529 = !DILocation(line: 415, column: 1, scope: !476)
!530 = distinct !DISubprogram(name: "a2dp_media_get_packet_play_time", scope: !3, file: !3, line: 417, type: !531, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!229, !164, !124, !229}
!533 = !{!534, !535, !536, !537, !538, !539, !540, !544, !547, !548}
!534 = !DILocalVariable(name: "channel", arg: 1, scope: !530, file: !3, line: 417, type: !164)
!535 = !DILocalVariable(name: "data", arg: 2, scope: !530, file: !3, line: 417, type: !124)
!536 = !DILocalVariable(name: "len", arg: 3, scope: !530, file: !3, line: 417, type: !229)
!537 = !DILocalVariable(name: "msec", scope: !530, file: !3, line: 419, type: !229)
!538 = !DILocalVariable(name: "conn", scope: !530, file: !3, line: 420, type: !84)
!539 = !DILocalVariable(name: "codec_type", scope: !530, file: !3, line: 421, type: !102)
!540 = !DILocalVariable(name: "sample_rates", scope: !530, file: !3, line: 422, type: !541)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 4)
!544 = !DILocalVariable(name: "offset", scope: !545, file: !3, line: 425, type: !229)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 424, column: 39)
!546 = distinct !DILexicalBlock(scope: !530, file: !3, line: 424, column: 9)
!547 = !DILocalVariable(name: "frame_num", scope: !545, file: !3, line: 429, type: !102)
!548 = !DILocalVariable(name: "samplerate", scope: !545, file: !3, line: 430, type: !229)
!549 = !DILocation(line: 417, column: 41, scope: !530)
!550 = !DILocation(line: 417, column: 54, scope: !530)
!551 = !DILocation(line: 417, column: 64, scope: !530)
!552 = !DILocation(line: 419, column: 9, scope: !530)
!553 = !DILocation(line: 420, column: 50, scope: !530)
!554 = !DILocation(line: 420, column: 23, scope: !530)
!555 = !DILocation(line: 421, column: 49, scope: !530)
!556 = !DILocation(line: 421, column: 60, scope: !530)
!557 = !DILocation(line: 421, column: 8, scope: !530)
!558 = !DILocation(line: 422, column: 9, scope: !530)
!559 = !DILocation(line: 424, column: 9, scope: !530)
!560 = !DILocation(line: 425, column: 22, scope: !545)
!561 = !DILocation(line: 425, column: 79, scope: !545)
!562 = !DILocation(line: 425, column: 13, scope: !545)
!563 = !DILocation(line: 426, column: 20, scope: !564)
!564 = distinct !DILexicalBlock(scope: !545, file: !3, line: 426, column: 13)
!565 = !DILocation(line: 426, column: 13, scope: !545)
!566 = !DILocation(line: 429, column: 24, scope: !545)
!567 = !DILocation(line: 429, column: 37, scope: !545)
!568 = !DILocation(line: 429, column: 12, scope: !545)
!569 = !DILocation(line: 430, column: 40, scope: !545)
!570 = !DILocation(line: 430, column: 57, scope: !545)
!571 = !DILocation(line: 430, column: 26, scope: !545)
!572 = !{!468, !468, i64 0}
!573 = !DILocation(line: 430, column: 13, scope: !545)
!574 = !DILocation(line: 432, column: 16, scope: !545)
!575 = !DILocation(line: 432, column: 32, scope: !545)
!576 = !DILocation(line: 432, column: 39, scope: !545)
!577 = !DILocation(line: 434, column: 41, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 434, column: 13)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 433, column: 49)
!580 = distinct !DILexicalBlock(scope: !546, file: !3, line: 433, column: 16)
!581 = !{!463, !471, i64 108}
!582 = !DILocation(line: 434, column: 52, scope: !578)
!583 = !DILocation(line: 434, column: 13, scope: !579)
!584 = !DILocation(line: 437, column: 28, scope: !579)
!585 = !DILocation(line: 438, column: 5, scope: !579)
!586 = !DILocation(line: 443, column: 1, scope: !530)
!587 = distinct !DISubprogram(name: "a2dp_media_suspend_resume", scope: !3, file: !3, line: 454, type: !588, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !102}
!590 = !{!591, !592, !597, !598, !603}
!591 = !DILocalVariable(name: "flag", arg: 1, scope: !587, file: !3, line: 454, type: !102)
!592 = !DILocalVariable(name: "conn", scope: !593, file: !3, line: 465, type: !84)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 464, column: 48)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 464, column: 13)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 463, column: 20)
!596 = distinct !DILexicalBlock(scope: !587, file: !3, line: 463, column: 9)
!597 = !DILocalVariable(name: "codec_type", scope: !593, file: !3, line: 468, type: !102)
!598 = !DILocalVariable(name: "conn", scope: !599, file: !3, line: 476, type: !84)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 475, column: 48)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 475, column: 13)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 474, column: 20)
!602 = distinct !DILexicalBlock(scope: !587, file: !3, line: 474, column: 9)
!603 = !DILocalVariable(name: "codec_type", scope: !599, file: !3, line: 477, type: !102)
!604 = !DILocation(line: 454, column: 35, scope: !587)
!605 = !DILocation(line: 456, column: 9, scope: !587)
!606 = !DILocation(line: 457, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 457, column: 13)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 456, column: 20)
!609 = distinct !DILexicalBlock(scope: !587, file: !3, line: 456, column: 9)
!610 = !DILocation(line: 457, column: 29, scope: !611)
!611 = !DILexicalBlockFile(scope: !607, file: !3, discriminator: 1)
!612 = !DILocation(line: 457, column: 26, scope: !607)
!613 = !DILocation(line: 458, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 458, column: 13)
!615 = distinct !DILexicalBlock(scope: !607, file: !3, line: 457, column: 38)
!616 = !DILocation(line: 458, column: 13, scope: !615)
!617 = !DILocation(line: 458, column: 13, scope: !618)
!618 = !DILexicalBlockFile(scope: !614, file: !3, discriminator: 1)
!619 = !DILocation(line: 459, column: 43, scope: !615)
!620 = !DILocation(line: 459, column: 13, scope: !615)
!621 = !DILocation(line: 460, column: 21, scope: !615)
!622 = !DILocation(line: 463, column: 9, scope: !587)
!623 = !DILocation(line: 464, column: 13, scope: !594)
!624 = !DILocation(line: 464, column: 30, scope: !625)
!625 = !DILexicalBlockFile(scope: !594, file: !3, discriminator: 1)
!626 = !DILocation(line: 464, column: 38, scope: !625)
!627 = !DILocation(line: 464, column: 26, scope: !594)
!628 = !DILocation(line: 466, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !593, file: !3, line: 466, column: 13)
!630 = !DILocation(line: 466, column: 13, scope: !593)
!631 = !DILocation(line: 470, column: 58, scope: !593)
!632 = !DILocation(line: 470, column: 80, scope: !593)
!633 = !DILocation(line: 466, column: 13, scope: !634)
!634 = !DILexicalBlockFile(scope: !629, file: !3, discriminator: 1)
!635 = !{!463, !468, i64 104}
!636 = !DILocation(line: 468, column: 57, scope: !593)
!637 = !DILocation(line: 468, column: 68, scope: !593)
!638 = !DILocation(line: 468, column: 16, scope: !593)
!639 = !DILocation(line: 469, column: 23, scope: !593)
!640 = !DILocation(line: 469, column: 21, scope: !593)
!641 = !DILocation(line: 474, column: 9, scope: !587)
!642 = !DILocation(line: 475, column: 13, scope: !600)
!643 = !DILocation(line: 475, column: 38, scope: !644)
!644 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 1)
!645 = !DILocation(line: 475, column: 26, scope: !600)
!646 = !DILocation(line: 477, column: 57, scope: !599)
!647 = !DILocation(line: 477, column: 68, scope: !599)
!648 = !DILocation(line: 477, column: 16, scope: !599)
!649 = !DILocation(line: 479, column: 58, scope: !599)
!650 = !DILocation(line: 479, column: 80, scope: !599)
!651 = !DILocation(line: 478, column: 23, scope: !599)
!652 = !DILocation(line: 478, column: 21, scope: !599)
!653 = !DILocation(line: 482, column: 93, scope: !599)
!654 = !DILocation(line: 482, column: 104, scope: !599)
!655 = !DILocation(line: 482, column: 65, scope: !599)
!656 = !DILocation(line: 481, column: 13, scope: !599)
!657 = !DILocation(line: 483, column: 9, scope: !599)
!658 = !DILocation(line: 485, column: 1, scope: !587)
!659 = distinct !DISubprogram(name: "sbc_codec_inused", scope: !3, file: !3, line: 446, type: !255, isLocal: true, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !660)
!660 = !{!661}
!661 = !DILocalVariable(name: "v", arg: 1, scope: !659, file: !3, line: 446, type: !229)
!662 = !DILocation(line: 446, column: 33, scope: !659)
!663 = !DILocation(line: 448, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 448, column: 9)
!665 = !DILocation(line: 452, column: 5, scope: !659)
!666 = !DILocation(line: 453, column: 1, scope: !659)
!667 = distinct !DISubprogram(name: "sbc_codec_init", scope: !3, file: !3, line: 487, type: !259, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !668)
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(name: "conn_ptr", arg: 1, scope: !667, file: !3, line: 487, type: !83)
!670 = !DILocalVariable(name: "dev_vol", scope: !667, file: !3, line: 489, type: !102)
!671 = !DILocalVariable(name: "conn", scope: !667, file: !3, line: 490, type: !84)
!672 = !DILocalVariable(name: "codec_type", scope: !667, file: !3, line: 491, type: !102)
!673 = !DILocation(line: 487, column: 33, scope: !667)
!674 = !DILocation(line: 489, column: 8, scope: !667)
!675 = !DILocation(line: 491, column: 49, scope: !667)
!676 = !DILocation(line: 491, column: 60, scope: !667)
!677 = !DILocation(line: 491, column: 8, scope: !667)
!678 = !DILocation(line: 493, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !667, file: !3, line: 493, column: 5)
!680 = !DILocation(line: 493, column: 5, scope: !667)
!681 = !DILocation(line: 493, column: 5, scope: !682)
!682 = !DILexicalBlockFile(scope: !679, file: !3, discriminator: 1)
!683 = !DILocation(line: 495, column: 9, scope: !684)
!684 = distinct !DILexicalBlock(scope: !667, file: !3, line: 495, column: 9)
!685 = !DILocation(line: 495, column: 17, scope: !684)
!686 = !DILocation(line: 495, column: 9, scope: !667)
!687 = !DILocation(line: 497, column: 54, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !3, line: 495, column: 26)
!689 = !DILocation(line: 497, column: 76, scope: !688)
!690 = !DILocation(line: 496, column: 19, scope: !688)
!691 = !DILocation(line: 496, column: 17, scope: !688)
!692 = !DILocation(line: 499, column: 9, scope: !688)
!693 = !DILocation(line: 500, column: 5, scope: !688)
!694 = !DILocation(line: 501, column: 5, scope: !695)
!695 = distinct !DILexicalBlock(scope: !667, file: !3, line: 501, column: 5)
!696 = !DILocation(line: 501, column: 5, scope: !667)
!697 = !DILocation(line: 501, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !695, file: !3, discriminator: 1)
!699 = !DILocation(line: 502, column: 18, scope: !667)
!700 = !DILocation(line: 503, column: 20, scope: !701)
!701 = distinct !DILexicalBlock(scope: !667, file: !3, line: 503, column: 9)
!702 = !DILocation(line: 506, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !667, file: !3, line: 506, column: 9)
!704 = !DILocation(line: 506, column: 25, scope: !703)
!705 = !{!706, !297, i64 0}
!706 = !{!"user_interface_handler", !297, i64 0, !297, i64 4, !297, i64 8, !297, i64 12, !297, i64 16, !297, i64 20, !297, i64 24, !297, i64 28, !297, i64 32, !297, i64 36, !297, i64 40, !297, i64 44, !297, i64 48, !297, i64 52, !297, i64 56}
!707 = !DILocation(line: 506, column: 9, scope: !667)
!708 = !DILocation(line: 507, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !703, file: !3, line: 506, column: 50)
!710 = !DILocation(line: 508, column: 5, scope: !709)
!711 = !DILocation(line: 509, column: 5, scope: !667)
!712 = !DILocation(line: 511, column: 57, scope: !667)
!713 = !DILocation(line: 510, column: 5, scope: !667)
!714 = !DILocation(line: 512, column: 37, scope: !715)
!715 = distinct !DILexicalBlock(scope: !667, file: !3, line: 512, column: 9)
!716 = !DILocation(line: 512, column: 48, scope: !715)
!717 = !DILocation(line: 512, column: 59, scope: !715)
!718 = !DILocation(line: 513, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 513, column: 9)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 512, column: 81)
!721 = !DILocation(line: 512, column: 9, scope: !667)
!722 = !DILocation(line: 513, column: 9, scope: !723)
!723 = !DILexicalBlockFile(scope: !719, file: !3, discriminator: 1)
!724 = !DILocation(line: 514, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 514, column: 9)
!726 = !DILocation(line: 514, column: 9, scope: !720)
!727 = !DILocation(line: 514, column: 9, scope: !728)
!728 = !DILexicalBlockFile(scope: !725, file: !3, discriminator: 1)
!729 = !{!463, !471, i64 120}
!730 = !DILocation(line: 515, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !720, file: !3, line: 515, column: 9)
!732 = !DILocation(line: 515, column: 9, scope: !720)
!733 = !DILocation(line: 515, column: 9, scope: !734)
!734 = !DILexicalBlockFile(scope: !731, file: !3, discriminator: 1)
!735 = !DILocation(line: 516, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !720, file: !3, line: 516, column: 9)
!737 = !DILocation(line: 516, column: 9, scope: !720)
!738 = !DILocation(line: 516, column: 9, scope: !739)
!739 = !DILexicalBlockFile(scope: !736, file: !3, discriminator: 1)
!740 = !DILocation(line: 518, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !667, file: !3, line: 518, column: 9)
!742 = !DILocation(line: 518, column: 25, scope: !741)
!743 = !{!706, !297, i64 28}
!744 = !DILocation(line: 518, column: 49, scope: !741)
!745 = !DILocation(line: 518, column: 9, scope: !667)
!746 = !DILocation(line: 519, column: 19, scope: !747)
!747 = distinct !DILexicalBlock(scope: !741, file: !3, line: 518, column: 58)
!748 = !DILocation(line: 520, column: 9, scope: !747)
!749 = !DILocation(line: 520, column: 25, scope: !747)
!750 = !DILocation(line: 520, column: 49, scope: !747)
!751 = !DILocation(line: 521, column: 5, scope: !747)
!752 = !DILocation(line: 522, column: 5, scope: !667)
!753 = distinct !DISubprogram(name: "sbc_codec_start", scope: !3, file: !3, line: 525, type: !263, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !754)
!754 = !{!755, !756}
!755 = !DILocalVariable(name: "packet", arg: 1, scope: !753, file: !3, line: 525, type: !124)
!756 = !DILocalVariable(name: "len", arg: 2, scope: !753, file: !3, line: 525, type: !164)
!757 = !DILocation(line: 525, column: 32, scope: !753)
!758 = !DILocation(line: 525, column: 44, scope: !753)
!759 = !DILocation(line: 528, column: 5, scope: !753)
!760 = distinct !DISubprogram(name: "sbc_codec_stop", scope: !3, file: !3, line: 531, type: !259, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !761)
!761 = !{!762, !763}
!762 = !DILocalVariable(name: "conn_ptr", arg: 1, scope: !760, file: !3, line: 531, type: !83)
!763 = !DILocalVariable(name: "conn", scope: !760, file: !3, line: 533, type: !84)
!764 = !DILocation(line: 531, column: 33, scope: !760)
!765 = !DILocation(line: 534, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 534, column: 9)
!767 = !DILocation(line: 534, column: 25, scope: !766)
!768 = !DILocation(line: 534, column: 9, scope: !760)
!769 = !DILocation(line: 535, column: 9, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 534, column: 50)
!771 = !DILocation(line: 536, column: 5, scope: !770)
!772 = !DILocation(line: 537, column: 5, scope: !760)
!773 = !DILocation(line: 538, column: 5, scope: !760)
!774 = !DILocation(line: 540, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !760, file: !3, line: 540, column: 9)
!776 = !DILocation(line: 540, column: 33, scope: !775)
!777 = !DILocation(line: 540, column: 9, scope: !760)
!778 = !DILocation(line: 542, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 540, column: 38)
!780 = !DILocation(line: 543, column: 5, scope: !779)
!781 = !DILocation(line: 544, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !760, file: !3, line: 544, column: 9)
!783 = !DILocation(line: 544, column: 17, scope: !782)
!784 = !DILocation(line: 544, column: 9, scope: !760)
!785 = !DILocation(line: 545, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 544, column: 26)
!787 = !DILocation(line: 546, column: 9, scope: !786)
!788 = !DILocation(line: 547, column: 17, scope: !786)
!789 = !DILocation(line: 548, column: 5, scope: !786)
!790 = !DILocation(line: 549, column: 18, scope: !760)
!791 = !DILocation(line: 552, column: 5, scope: !760)
