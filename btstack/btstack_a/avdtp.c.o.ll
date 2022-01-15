; ModuleID = 'avdtp.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avdtp.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.avdtp = type { [2 x %struct._avdtp_local_sep], %struct.avdtp_core_data_t }
%struct._avdtp_local_sep = type { %struct._avdtp_sep_ind*, %struct.avdtp*, %struct._seid_info, i8, [16 x i8] }
%struct._avdtp_sep_ind = type { i8 (i8, i8*, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)*, void (%struct._avdtp_local_sep*)*, i8 (...)*, i8 (i8, i16)* }
%struct._avdtp_stream = type { i8 }
%struct._seid_info = type { i16 }
%struct.avdtp_core_data_t = type { %struct._avdtp_stream, %struct._avdtp_local_sep*, i8, i16, [8 x %struct._seid_req], [16 x i8], i8, i8, i16 }
%struct._seid_req = type { i8 }
%struct._avdtp_send_info = type { %struct._avdtp_single_header, [126 x i8] }
%struct._avdtp_single_header = type { i16 }
%struct._in_buf = type { i32, [128 x i8], i8, i8, i8, i8, i8 }
%struct._start_req = type { %struct._seid, [1 x %struct._seid] }
%struct._seid = type { i8 }
%struct._suspend_req = type { %struct._seid, [1 x %struct._seid] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [22 x i8] c"===open already  000\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"avdtp_abort_req\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"<BT-log> :acp reject:0x%x,0x%02x\0A\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avdtp.c\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"something wrong AVDTP send error:no resend\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"send abort\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Received AVDTP_START\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Received AVDTP_CLOSE\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Received AVDTP_SUSPEND\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Received AVDTP_ABORT\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"<BT-log> :Received unknown request id %d\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"<BT-log> :avdtp_start err:%x,state:%d\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"<BT-log> :suspend failed:%x\0A\0A\00", align 1
@a2dp_source_bqb_support = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"something wrong AVDTP send error:no resend 22\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"===open already  222\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"avdtp_cap\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"<BT-log> :get_cap_seid:%d    type:%d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"get_capability:AAC\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"===open already\0A\00", align 1
@str = private unnamed_addr constant [32 x i8] c"<BT-log> : AVDTP_DELAY_REPORT \0A\00"
@str.26 = private unnamed_addr constant [34 x i8] c"ASSERT-FAILD: 0 adp local sep err\00"
@str.27 = private unnamed_addr constant [30 x i8] c"ASSERT-FAILD: 0 adp local sep\00"
@str.28 = private unnamed_addr constant [33 x i8] c"<BT-log> :[avdtp]set config:AAC\0A\00"
@str.29 = private unnamed_addr constant [33 x i8] c"<BT-log> :[avdtp]set config:SBC\0A\00"
@str.30 = private unnamed_addr constant [63 x i8] c"<<<<<<<<<<<<<<<<<<<<<<<<<esco_busy AVDTP_SEP_IN_USE not_accept\00"

; Function Attrs: nounwind optsize readnone
define hidden void @avdtp_retry_send(%struct.avdtp* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !301 {
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !307, metadata !DIExpression()), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
define hidden %struct._avdtp_local_sep* @find_local_sep_by_seid(%struct.avdtp* readonly, i32) local_unnamed_addr #2 section ".bt_stack_code" !dbg !310 {
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %1, metadata !315, metadata !DIExpression()), !dbg !318
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !319
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %3, metadata !316, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %3, metadata !316, metadata !DIExpression()), !dbg !321
  %4 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !322
  br label %5, !dbg !325

; <label>:5:                                      ; preds = %13, %2
  %6 = phi %struct._avdtp_local_sep* [ %3, %2 ], [ %14, %13 ]
  %7 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %6, i32 0, i32 2, i32 0, !dbg !327
  %8 = load i16, i16* %7, align 4, !dbg !327
  %9 = lshr i16 %8, 2, !dbg !327
  %10 = and i16 %9, 63, !dbg !327
  %11 = zext i16 %10 to i32, !dbg !327
  %12 = icmp eq i32 %11, %1, !dbg !330
  br i1 %12, label %16, label %13, !dbg !331

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %6, i32 1, !dbg !332
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !321
  %15 = icmp ult %struct._avdtp_local_sep* %14, %4, !dbg !322
  br i1 %15, label %5, label %16, !dbg !325, !llvm.loop !334

; <label>:16:                                     ; preds = %13, %5
  %17 = phi %struct._avdtp_local_sep* [ %6, %5 ], [ null, %13 ]
  ret %struct._avdtp_local_sep* %17, !dbg !336
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_discover_req(%struct.avdtp*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !337 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !339, metadata !DIExpression()), !dbg !342
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 -1, i32 1, i32 5, i32 12, !dbg !343
  %4 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 8, !dbg !344
  %5 = load i16, i16* %4, align 2, !dbg !344
  %6 = and i16 %5, 16384, !dbg !344
  %7 = icmp eq i16 %6, 0, !dbg !346
  br i1 %7, label %17, label %8, !dbg !347

; <label>:8:                                      ; preds = %1
  %9 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !348, !tbaa !351
  %10 = and i8 %9, 32, !dbg !348
  %11 = icmp eq i8 %10, 0, !dbg !348
  br i1 %11, label %14, label %12, !dbg !354

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #9, !dbg !355
  br label %14, !dbg !355

; <label>:14:                                     ; preds = %12, %8
  %15 = bitcast i8* %3 to [6 x i8]*, !dbg !357
  %16 = tail call zeroext i8 @handle_a2dp_discover_flag([6 x i8]* %15, i8 zeroext 1) #10, !dbg !358
  br label %30, !dbg !359

; <label>:17:                                     ; preds = %1
  %18 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !360
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %18) #11, !dbg !360
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !381
  call void @llvm.memset.p0i8.i32(i8* nonnull %18, i8 0, i32 128, i32 1, i1 false) #11, !dbg !382
  %19 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !383
  store i8 1, i8* %19, align 1, !dbg !384, !tbaa !385
  call void @llvm.dbg.value(metadata i32 0, metadata !368, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !392
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, i32 0) #10, !dbg !393
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %18) #11, !dbg !394
  %20 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !395
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %20, metadata !340, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %20, metadata !340, metadata !DIExpression()), !dbg !397
  %21 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !398
  br label %22, !dbg !401

; <label>:22:                                     ; preds = %22, %17
  %23 = phi %struct._avdtp_local_sep* [ %20, %17 ], [ %27, %22 ]
  %24 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %23, i32 0, i32 3, !dbg !403
  %25 = load i8, i8* %24, align 2, !dbg !405
  %26 = and i8 %25, -16, !dbg !405
  store i8 %26, i8* %24, align 2, !dbg !405
  %27 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %23, i32 1, !dbg !406
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %27, metadata !340, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %27, metadata !340, metadata !DIExpression()), !dbg !397
  %28 = icmp ult %struct._avdtp_local_sep* %27, %21, !dbg !398
  br i1 %28, label %22, label %29, !dbg !401, !llvm.loop !408

; <label>:29:                                     ; preds = %22
  br label %30, !dbg !410

; <label>:30:                                     ; preds = %29, %14
  ret void, !dbg !410
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @handle_a2dp_discover_flag([6 x i8]*, i8 zeroext) local_unnamed_addr #5

; Function Attrs: nounwind optsize
define hidden void @avdtp_start_req(%struct.avdtp* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !412 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !416
  %4 = load i8, i8* %3, align 4, !dbg !416, !tbaa !418
  %5 = zext i8 %4 to i32, !dbg !419
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %5, i32 0, !dbg !420
  %7 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !421
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #11, !dbg !421
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !423
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 128, i32 1, i1 false) #11, !dbg !424
  %8 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !425
  store i8 7, i8* %8, align 1, !dbg !426, !tbaa !385
  %9 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 0, !dbg !427
  %10 = load i8, i8* %6, align 1, !dbg !427
  store i8 %10, i8* %9, align 1, !dbg !427
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !429
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 7, i32 1) #10, !dbg !430
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #11, !dbg !431
  ret void, !dbg !432
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_suspend_req(%struct.avdtp*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !433 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !435, metadata !DIExpression()), !dbg !436
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !437
  %4 = load i8, i8* %3, align 4, !dbg !437, !tbaa !418
  %5 = zext i8 %4 to i32, !dbg !439
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %5, i32 0, !dbg !440
  %7 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !441
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #11, !dbg !441
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !443
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 128, i32 1, i1 false) #11, !dbg !444
  %8 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !445
  store i8 9, i8* %8, align 1, !dbg !446, !tbaa !385
  %9 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 0, !dbg !447
  %10 = load i8, i8* %6, align 1, !dbg !447
  store i8 %10, i8* %9, align 1, !dbg !447
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 9, i32 1) #10, !dbg !450
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #11, !dbg !451
  call void @llvm.dbg.value(metadata i8* null, metadata !452, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !458, metadata !DIExpression()), !dbg !462
  %11 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !463
  %12 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %11, align 4, !dbg !463, !tbaa !464
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !459, metadata !DIExpression()), !dbg !465
  %13 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %12, i32 0, i32 3, !dbg !466
  %14 = load i8, i8* %13, align 2, !dbg !467
  %15 = and i8 %14, -16, !dbg !467
  %16 = or i8 %15, 2, !dbg !467
  store i8 %16, i8* %13, align 2, !dbg !467
  %17 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %12, i32 0, i32 0, !dbg !468
  %18 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %17, align 4, !dbg !468, !tbaa !469
  %19 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %18, i32 0, i32 4, !dbg !472
  %20 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)** %19, align 4, !dbg !472, !tbaa !473
  %21 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !475
  %22 = call zeroext i8 %20(%struct._avdtp_local_sep* %12, %struct._avdtp_stream* %21) #10, !dbg !476
  ret void, !dbg !477
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_close_req(%struct.avdtp* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !478 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !480, metadata !DIExpression()), !dbg !481
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !482
  %4 = load i8, i8* %3, align 4, !dbg !482, !tbaa !418
  %5 = zext i8 %4 to i32, !dbg !484
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %5, i32 0, !dbg !485
  %7 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !486
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #11, !dbg !486
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !488
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 128, i32 1, i1 false) #11, !dbg !489
  %8 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !490
  store i8 8, i8* %8, align 1, !dbg !491, !tbaa !385
  %9 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 0, !dbg !492
  %10 = load i8, i8* %6, align 1, !dbg !492
  store i8 %10, i8* %9, align 1, !dbg !492
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !494
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 8, i32 1) #10, !dbg !495
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #11, !dbg !496
  ret void, !dbg !497
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_abort_req(%struct.avdtp* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !498 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !500, metadata !DIExpression()), !dbg !501
  %3 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !502, !tbaa !351
  %4 = and i8 %3, 32, !dbg !502
  %5 = icmp eq i8 %4, 0, !dbg !502
  br i1 %5, label %8, label %6, !dbg !504

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #9, !dbg !505
  br label %8, !dbg !505

; <label>:8:                                      ; preds = %6, %1
  %9 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !507
  %10 = load i8, i8* %9, align 4, !dbg !507, !tbaa !418
  %11 = zext i8 %10 to i32, !dbg !509
  %12 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %11, i32 0, !dbg !510
  %13 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !511
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %13) #11, !dbg !511
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !513
  call void @llvm.memset.p0i8.i32(i8* nonnull %13, i8 0, i32 128, i32 1, i1 false) #11, !dbg !514
  %14 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !515
  store i8 10, i8* %14, align 1, !dbg !516, !tbaa !385
  %15 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 0, !dbg !517
  %16 = load i8, i8* %12, align 1, !dbg !517
  store i8 %16, i8* %15, align 1, !dbg !517
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !519
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 10, i32 1) #10, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %13) #11, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_get_configuation_req(%struct.avdtp* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !523 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !525, metadata !DIExpression()), !dbg !526
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !527
  %4 = load i8, i8* %3, align 4, !dbg !527, !tbaa !418
  %5 = zext i8 %4 to i32, !dbg !529
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %5, i32 0, !dbg !530
  %7 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #11, !dbg !531
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !533
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 128, i32 1, i1 false) #11, !dbg !534
  %8 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !535
  store i8 4, i8* %8, align 1, !dbg !536, !tbaa !385
  %9 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 0, !dbg !537
  %10 = load i8, i8* %6, align 1, !dbg !537
  store i8 %10, i8* %9, align 1, !dbg !537
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !539
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 4, i32 1) #10, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #11, !dbg !541
  ret void, !dbg !542
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_delay_report_req(%struct.avdtp* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !543 {
  %2 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !545, metadata !DIExpression()), !dbg !546
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !547
  %4 = load i8, i8* %3, align 4, !dbg !547, !tbaa !418
  %5 = zext i8 %4 to i32, !dbg !549
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %5, i32 0, !dbg !550
  %7 = bitcast %struct._avdtp_send_info* %2 to i8*, !dbg !551
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #11, !dbg !551
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !369, metadata !DIExpression()), !dbg !553
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 128, i32 1, i1 false) #11, !dbg !554
  %8 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !555
  store i8 13, i8* %8, align 1, !dbg !556, !tbaa !385
  %9 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 0, !dbg !557
  %10 = load i8, i8* %6, align 1, !dbg !557
  store i8 %10, i8* %9, align 1, !dbg !557
  %11 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 1, !dbg !558
  store i8 1, i8* %11, align 1, !dbg !561, !tbaa !351
  %12 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %2, i32 0, i32 1, i32 2, !dbg !562
  store i8 0, i8* %12, align 1, !dbg !563, !tbaa !351
  call void @llvm.dbg.value(metadata i32 3, metadata !368, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 3, metadata !368, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %2, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !565
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %2, i8 zeroext 0, i8 zeroext 0, i8 zeroext 13, i32 3) #10, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #11, !dbg !567
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optsize
define hidden zeroext i8 @avdtp_packet_handler(%struct.avdtp*, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #6 section ".bt_stack_code" !dbg !569 {
  %4 = alloca %struct._avdtp_send_info, align 1
  %5 = alloca %struct._avdtp_send_info, align 1
  %6 = alloca %struct._avdtp_send_info, align 1
  %7 = alloca %struct._avdtp_send_info, align 1
  %8 = alloca %struct._in_buf, align 4
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !573, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i8* %1, metadata !574, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i16 %2, metadata !575, metadata !DIExpression()), !dbg !592
  %9 = bitcast %struct._in_buf* %8 to i8*, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 140, i8* nonnull %9) #11, !dbg !593
  call void @llvm.memset.p0i8.i32(i8* nonnull %9, i8 0, i32 140, i32 4, i1 false), !dbg !594
  %10 = zext i16 %2 to i32, !dbg !595
  call void @llvm.dbg.value(metadata %struct._in_buf* %8, metadata !576, metadata !DIExpression(DW_OP_deref)), !dbg !596
  call void @llvm.dbg.value(metadata %struct._in_buf* %8, metadata !597, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i8* %1, metadata !604, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %10, metadata !605, metadata !DIExpression()), !dbg !614
  %11 = icmp eq i16 %2, 0, !dbg !615
  br i1 %11, label %322, label %12, !dbg !617

; <label>:12:                                     ; preds = %3
  %13 = load i8, i8* %1, align 1, !dbg !618
  %14 = lshr i8 %13, 2, !dbg !618
  %15 = trunc i8 %14 to i2, !dbg !619
  switch i2 %15, label %49 [
    i2 0, label %16
    i2 1, label %34
    i2 -2, label %322
    i2 -1, label %322
  ], !dbg !619

; <label>:16:                                     ; preds = %12
  %17 = icmp ult i16 %2, 2, !dbg !620
  br i1 %17, label %322, label %18, !dbg !623

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 6, !dbg !624
  store i8 0, i8* %19, align 4, !dbg !625, !tbaa !626
  %20 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 0, !dbg !629
  store i32 1, i32* %20, align 4, !dbg !630, !tbaa !631
  %21 = bitcast i8* %1 to i16*, !dbg !632
  %22 = load i16, i16* %21, align 1, !dbg !632
  %23 = trunc i16 %22 to i8, !dbg !632
  %24 = and i8 %23, 3, !dbg !632
  %25 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 4, !dbg !633
  store i8 %24, i8* %25, align 2, !dbg !634, !tbaa !635
  %26 = lshr i16 %22, 8, !dbg !636
  %27 = trunc i16 %26 to i8, !dbg !636
  %28 = and i8 %27, 63, !dbg !636
  %29 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 5, !dbg !637
  store i8 %28, i8* %29, align 1, !dbg !638, !tbaa !639
  %30 = lshr i16 %22, 4, !dbg !640
  %31 = trunc i16 %30 to i8, !dbg !640
  %32 = and i8 %31, 15, !dbg !640
  %33 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 3, !dbg !641
  store i8 %32, i8* %33, align 1, !dbg !642, !tbaa !643
  call void @llvm.dbg.value(metadata i32 2, metadata !606, metadata !DIExpression()), !dbg !644
  br label %50, !dbg !645

; <label>:34:                                     ; preds = %12
  %35 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 2, !dbg !646
  store i8 1, i8* %35, align 4, !dbg !648, !tbaa !649
  %36 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 6, !dbg !650
  store i8 0, i8* %36, align 4, !dbg !651, !tbaa !626
  %37 = lshr i8 %13, 4, !dbg !652
  %38 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 3, !dbg !653
  store i8 %37, i8* %38, align 1, !dbg !654, !tbaa !643
  %39 = and i8 %13, 3, !dbg !655
  %40 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 4, !dbg !656
  store i8 %39, i8* %40, align 2, !dbg !657, !tbaa !635
  %41 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !658
  %42 = load i8, i8* %41, align 1, !dbg !658, !tbaa !659
  %43 = zext i8 %42 to i32, !dbg !661
  %44 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 0, !dbg !662
  store i32 %43, i32* %44, align 4, !dbg !663, !tbaa !631
  %45 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !664
  %46 = load i8, i8* %45, align 1, !dbg !664
  %47 = and i8 %46, 63, !dbg !664
  %48 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 5, !dbg !665
  store i8 %47, i8* %48, align 1, !dbg !666, !tbaa !639
  call void @llvm.dbg.value(metadata i32 3, metadata !606, metadata !DIExpression()), !dbg !644
  br label %50, !dbg !667

; <label>:49:                                     ; preds = %12
  unreachable

; <label>:50:                                     ; preds = %34, %18
  %51 = phi i32 [ %43, %34 ], [ 1, %18 ], !dbg !668
  %52 = phi i32 [ 3, %34 ], [ 2, %18 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !606, metadata !DIExpression()), !dbg !644
  %53 = sub nsw i32 %10, %52, !dbg !670
  call void @llvm.dbg.value(metadata i32 %53, metadata !607, metadata !DIExpression()), !dbg !671
  %54 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 6, !dbg !672
  %55 = icmp ugt i32 %53, 128, !dbg !674
  br i1 %55, label %322, label %56, !dbg !675

; <label>:56:                                     ; preds = %50
  %57 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 1, i32 0, !dbg !676
  %58 = getelementptr inbounds i8, i8* %1, i32 %52, !dbg !677
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %57, i8* %58, i32 %53, i32 1, i1 false) #11, !dbg !678
  %59 = load i8, i8* %54, align 4, !dbg !679, !tbaa !626
  %60 = zext i8 %59 to i32, !dbg !679
  %61 = add nsw i32 %60, %53, !dbg !679
  %62 = trunc i32 %61 to i8, !dbg !679
  store i8 %62, i8* %54, align 4, !dbg !679, !tbaa !626
  %63 = icmp ugt i32 %51, 1, !dbg !680
  br i1 %63, label %64, label %67, !dbg !681

; <label>:64:                                     ; preds = %56
  %65 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 0, !dbg !668
  %66 = add nsw i32 %51, -1, !dbg !682
  store i32 %66, i32* %65, align 4, !dbg !682, !tbaa !631
  br label %322, !dbg !684

; <label>:67:                                     ; preds = %56
  %68 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 2, !dbg !686
  store i8 0, i8* %68, align 4, !dbg !687, !tbaa !649
  %69 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 4, !dbg !688
  %70 = load i8, i8* %69, align 2, !dbg !688, !tbaa !635
  %71 = zext i8 %70 to i32, !dbg !690
  switch i8 %70, label %157 [
    i8 0, label %75
    i8 2, label %72
  ], !dbg !691

; <label>:72:                                     ; preds = %67
  %73 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 5
  %74 = load i8, i8* %73, align 1, !tbaa !639
  br label %167, !dbg !691

; <label>:75:                                     ; preds = %67
  call void @llvm.dbg.value(metadata %struct._in_buf* %8, metadata !576, metadata !DIExpression(DW_OP_deref)), !dbg !596
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !692, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata %struct._in_buf* %8, metadata !697, metadata !DIExpression()), !dbg !706
  %76 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 3, !dbg !707
  %77 = load i8, i8* %76, align 1, !dbg !707, !tbaa !643
  call void @llvm.dbg.value(metadata i8 %77, metadata !698, metadata !DIExpression()), !dbg !708
  %78 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 5, !dbg !709
  %79 = load i8, i8* %78, align 1, !dbg !709, !tbaa !639
  call void @llvm.dbg.value(metadata i8 %79, metadata !699, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %57, metadata !700, metadata !DIExpression()), !dbg !711
  %80 = and i32 %61, 255, !dbg !712
  call void @llvm.dbg.value(metadata i32 %80, metadata !701, metadata !DIExpression()), !dbg !713
  %81 = zext i8 %79 to i32, !dbg !714
  switch i8 %79, label %127 [
    i8 1, label %82
    i8 2, label %83
    i8 12, label %85
    i8 3, label %87
    i8 4, label %88
    i8 5, label %90
    i8 6, label %91
    i8 7, label %93
    i8 8, label %101
    i8 9, label %110
    i8 10, label %119
  ], !dbg !715

; <label>:82:                                     ; preds = %75
  tail call fastcc void @avdtp_discover_cmd(%struct.avdtp* %0, i8 zeroext %77) #10, !dbg !716
  br label %153, !dbg !718

; <label>:83:                                     ; preds = %75
  %84 = bitcast i8* %57 to %struct._seid_req*, !dbg !719
  call fastcc void @avdtp_getcap_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._seid_req* %84, i32 %80, i8 zeroext 0) #10, !dbg !720
  br label %153, !dbg !721

; <label>:85:                                     ; preds = %75
  %86 = bitcast i8* %57 to %struct._seid_req*, !dbg !722
  call fastcc void @avdtp_getcap_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._seid_req* %86, i32 %80, i8 zeroext 1) #10, !dbg !723
  br label %153, !dbg !724

; <label>:87:                                     ; preds = %75
  call fastcc void @avdtp_setconf_cmd(%struct.avdtp* %0, i8 zeroext %77, i8* nonnull %57, i32 %80) #10, !dbg !725
  br label %153, !dbg !726

; <label>:88:                                     ; preds = %75
  %89 = bitcast i8* %57 to %struct._seid_req*, !dbg !727
  call fastcc void @avdtp_getconf_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._seid_req* %89, i32 %80) #10, !dbg !728
  br label %153, !dbg !729

; <label>:90:                                     ; preds = %75
  call fastcc void @avdtp_reconf_cmd(%struct.avdtp* %0, i8 zeroext %77, i8* nonnull %57, i32 %80) #10, !dbg !730
  br label %153, !dbg !731

; <label>:91:                                     ; preds = %75
  %92 = bitcast i8* %57 to %struct._seid_req*, !dbg !732
  call fastcc void @avdtp_open_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._seid_req* %92) #10, !dbg !733
  br label %153, !dbg !734

; <label>:93:                                     ; preds = %75
  %94 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !735, !tbaa !351
  %95 = and i8 %94, 32, !dbg !735
  %96 = icmp eq i8 %95, 0, !dbg !735
  br i1 %96, label %99, label %97, !dbg !737

; <label>:97:                                     ; preds = %93
  %98 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !738
  br label %99, !dbg !738

; <label>:99:                                     ; preds = %97, %93
  %100 = bitcast i8* %57 to %struct._start_req*, !dbg !740
  call fastcc void @avdtp_start_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._start_req* %100) #10, !dbg !741
  br label %153, !dbg !742

; <label>:101:                                    ; preds = %75
  %102 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !743, !tbaa !351
  %103 = and i8 %102, 32, !dbg !743
  %104 = icmp eq i8 %103, 0, !dbg !743
  br i1 %104, label %107, label %105, !dbg !745

; <label>:105:                                    ; preds = %101
  %106 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0)) #10, !dbg !746
  br label %107, !dbg !746

; <label>:107:                                    ; preds = %105, %101
  %108 = bitcast i8* %57 to %struct._seid_req*, !dbg !748
  %109 = call fastcc zeroext i8 @avdtp_close_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._seid_req* %108, i32 %80) #10, !dbg !749
  br label %153, !dbg !750

; <label>:110:                                    ; preds = %75
  %111 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !751, !tbaa !351
  %112 = and i8 %111, 32, !dbg !751
  %113 = icmp eq i8 %112, 0, !dbg !751
  br i1 %113, label %116, label %114, !dbg !753

; <label>:114:                                    ; preds = %110
  %115 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0)) #10, !dbg !754
  br label %116, !dbg !754

; <label>:116:                                    ; preds = %114, %110
  %117 = bitcast i8* %57 to %struct._suspend_req*, !dbg !756
  %118 = call fastcc zeroext i8 @avdtp_suspend_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._suspend_req* %117, i32 %80) #10, !dbg !757
  br label %153, !dbg !758

; <label>:119:                                    ; preds = %75
  %120 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !759, !tbaa !351
  %121 = and i8 %120, 32, !dbg !759
  %122 = icmp eq i8 %121, 0, !dbg !759
  br i1 %122, label %125, label %123, !dbg !761

; <label>:123:                                    ; preds = %119
  %124 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !762
  br label %125, !dbg !762

; <label>:125:                                    ; preds = %123, %119
  %126 = bitcast i8* %57 to %struct._seid_req*, !dbg !764
  call fastcc void @avdtp_abort_cmd(%struct.avdtp* %0, i8 zeroext %77, %struct._seid_req* %126, i32 %80) #10, !dbg !765
  br label %153, !dbg !766

; <label>:127:                                    ; preds = %75
  %128 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !767, !tbaa !351
  %129 = icmp slt i8 %128, 0, !dbg !767
  br i1 %129, label %130, label %132, !dbg !769

; <label>:130:                                    ; preds = %127
  %131 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %81) #10, !dbg !770
  br label %132, !dbg !770

; <label>:132:                                    ; preds = %130, %127
  %133 = bitcast %struct._avdtp_send_info* %4 to i8*, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %133) #11, !dbg !772
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !780, metadata !DIExpression()), !dbg !784
  call void @llvm.memset.p0i8.i32(i8* nonnull %133, i8 0, i32 128, i32 1, i1 false) #11, !dbg !785
  %134 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %4, i32 0, i32 1, i32 0, !dbg !786
  call void @llvm.dbg.value(metadata i8* %134, metadata !782, metadata !DIExpression()), !dbg !787
  %135 = load i8, i8* @a2dp_source_bqb_support, align 1, !dbg !788, !tbaa !351
  %136 = icmp eq i8 %135, 0, !dbg !788
  %137 = shl i8 %77, 4
  %138 = zext i1 %136 to i8, !dbg !790
  %139 = or i8 %138, %137, !dbg !790
  %140 = select i1 %136, i8 %79, i8 0, !dbg !790
  store i8 %139, i8* %134, align 1, !tbaa !351
  %141 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %4, i32 0, i32 1, i32 1
  store i8 %140, i8* %141, align 1, !tbaa !351
  %142 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 3, !dbg !791
  %143 = load i16, i16* %142, align 2, !dbg !791, !tbaa !793
  call void @llvm.dbg.value(metadata i16 %143, metadata !794, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i8* %134, metadata !799, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i32 2, metadata !800, metadata !DIExpression()), !dbg !805
  %144 = call i32 @l2cap_send_internal(i16 zeroext %143, i8* %134, i16 zeroext 2, i8 zeroext 0) #10, !dbg !806
  call void @llvm.dbg.value(metadata i32 %144, metadata !801, metadata !DIExpression()), !dbg !807
  %145 = icmp eq i32 %144, 0, !dbg !808
  br i1 %145, label %152, label %146, !dbg !809

; <label>:146:                                    ; preds = %132
  %147 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !810, !tbaa !351
  %148 = and i8 %147, 32, !dbg !810
  %149 = icmp eq i8 %148, 0, !dbg !810
  br i1 %149, label %152, label %150, !dbg !813

; <label>:150:                                    ; preds = %146
  %151 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !814
  br label %152, !dbg !814

; <label>:152:                                    ; preds = %150, %146, %132
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %133) #11, !dbg !816
  br label %153, !dbg !817

; <label>:153:                                    ; preds = %152, %125, %116, %107, %99, %91, %90, %88, %87, %85, %83, %82
  %154 = phi i8 [ 1, %152 ], [ 0, %125 ], [ %118, %116 ], [ %109, %107 ], [ 1, %99 ], [ 1, %91 ], [ 1, %90 ], [ 1, %88 ], [ 1, %87 ], [ 1, %85 ], [ 1, %83 ], [ 1, %82 ]
  %155 = icmp ne i8 %154, 0, !dbg !818
  %156 = zext i1 %155 to i8, !dbg !818
  br label %322, !dbg !818

; <label>:157:                                    ; preds = %67
  %158 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !820, !tbaa !351
  %159 = icmp slt i8 %158, 0, !dbg !820
  %160 = getelementptr inbounds %struct._in_buf, %struct._in_buf* %8, i32 0, i32 5
  %161 = load i8, i8* %160, align 1, !tbaa !639
  br i1 %159, label %162, label %165, !dbg !824

; <label>:162:                                    ; preds = %157
  %163 = zext i8 %161 to i32, !dbg !825
  %164 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %71, i32 %163) #9, !dbg !825
  br label %165, !dbg !825

; <label>:165:                                    ; preds = %162, %157
  %166 = icmp eq i8 %161, 9, !dbg !827
  br i1 %166, label %167, label %322, !dbg !829

; <label>:167:                                    ; preds = %165, %72
  %168 = phi i8 [ %74, %72 ], [ 9, %165 ], !dbg !830
  %169 = and i32 %61, 255, !dbg !831
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !832, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %168, metadata !837, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8* %57, metadata !838, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 %169, metadata !839, metadata !DIExpression()), !dbg !845
  %170 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !846
  %171 = load i8, i8* %170, align 1, !dbg !846, !tbaa !385
  %172 = icmp eq i8 %171, %168, !dbg !848
  br i1 %172, label %173, label %322, !dbg !849

; <label>:173:                                    ; preds = %167
  switch i8 %168, label %322 [
    i8 1, label %174
    i8 2, label %231
    i8 12, label %232
    i8 3, label %233
    i8 6, label %265
    i8 7, label %278
    i8 9, label %296
    i8 13, label %291
  ], !dbg !850

; <label>:174:                                    ; preds = %173
  call void @llvm.dbg.value(metadata i8 0, metadata !851, metadata !DIExpression()), !dbg !861
  %175 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 8, !dbg !864
  %176 = load i16, i16* %175, align 2, !dbg !865
  %177 = and i16 %176, -256, !dbg !866
  store i16 %177, i16* %175, align 2, !dbg !866
  %178 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 0, i32 0, !dbg !867
  store i8 0, i8* %178, align 4, !dbg !867
  %179 = lshr i32 %169, 1, !dbg !868
  call void @llvm.dbg.value(metadata i32 %179, metadata !860, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32 0, metadata !859, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 0, metadata !859, metadata !DIExpression()), !dbg !870
  %180 = icmp eq i32 %179, 0, !dbg !871
  br i1 %180, label %221, label %181, !dbg !875

; <label>:181:                                    ; preds = %174
  %182 = bitcast i8* %57 to %struct._seid_info*, !dbg !877
  br label %183, !dbg !878

; <label>:183:                                    ; preds = %215, %181
  %184 = phi i32 [ %216, %215 ], [ 0, %181 ]
  %185 = phi %struct._seid_info* [ %217, %215 ], [ %182, %181 ]
  %186 = getelementptr inbounds %struct._seid_info, %struct._seid_info* %185, i32 0, i32 0, !dbg !878
  %187 = load i16, i16* %186, align 1, !dbg !878
  %188 = icmp ugt i16 %187, 4095, !dbg !881
  br i1 %188, label %215, label %189, !dbg !882

; <label>:189:                                    ; preds = %183
  %190 = load i16, i16* %175, align 2, !dbg !883
  %191 = lshr i16 %190, 12, !dbg !883
  %192 = trunc i16 %191 to i2, !dbg !885
  switch i2 %192, label %199 [
    i2 1, label %193
    i2 0, label %196
  ], !dbg !885

; <label>:193:                                    ; preds = %189
  %194 = and i16 %187, 2050, !dbg !886
  %195 = icmp eq i16 %194, 0, !dbg !886
  br i1 %195, label %202, label %215, !dbg !886

; <label>:196:                                    ; preds = %189
  %197 = and i16 %187, 2050, !dbg !888
  %198 = icmp eq i16 %197, 2048, !dbg !888
  br i1 %198, label %202, label %215, !dbg !888

; <label>:199:                                    ; preds = %189
  %200 = and i16 %187, 2, !dbg !891
  %201 = icmp eq i16 %200, 0, !dbg !891
  br i1 %201, label %202, label %215, !dbg !893

; <label>:202:                                    ; preds = %199, %196, %193
  %203 = and i16 %190, 15, !dbg !894
  %204 = zext i16 %203 to i32, !dbg !894
  %205 = add i16 %190, 1, !dbg !894
  %206 = and i16 %205, 15, !dbg !894
  %207 = and i16 %190, -16, !dbg !894
  %208 = or i16 %206, %207, !dbg !894
  store i16 %208, i16* %175, align 2, !dbg !894
  %209 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %204, i32 0, !dbg !895
  %210 = load i8, i8* %209, align 1, !dbg !896
  %211 = trunc i16 %187 to i8, !dbg !896
  %212 = and i8 %211, -4, !dbg !896
  %213 = and i8 %210, 3, !dbg !896
  %214 = or i8 %213, %212, !dbg !896
  store i8 %214, i8* %209, align 1, !dbg !896
  br label %215, !dbg !897

; <label>:215:                                    ; preds = %202, %199, %196, %193, %183
  %216 = add nuw nsw i32 %184, 1, !dbg !898
  call void @llvm.dbg.value(metadata i32 %216, metadata !859, metadata !DIExpression()), !dbg !870
  %217 = getelementptr inbounds %struct._seid_info, %struct._seid_info* %185, i32 1, !dbg !900
  call void @llvm.dbg.value(metadata %struct._seid_info* %217, metadata !857, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 %216, metadata !859, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata %struct._seid_info* %217, metadata !857, metadata !DIExpression()), !dbg !901
  %218 = icmp eq i32 %216, %179, !dbg !871
  br i1 %218, label %219, label %183, !dbg !875, !llvm.loop !902

; <label>:219:                                    ; preds = %215
  %220 = load i16, i16* %175, align 2
  br label %221, !dbg !905

; <label>:221:                                    ; preds = %219, %174
  %222 = phi i16 [ %220, %219 ], [ %177, %174 ], !dbg !905
  %223 = and i16 %222, 15, !dbg !907
  %224 = icmp eq i16 %223, 0, !dbg !907
  br i1 %224, label %225, label %227, !dbg !908

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !909
  br label %297, !dbg !908

; <label>:227:                                    ; preds = %221
  %228 = bitcast %struct._avdtp_send_info* %7 to i8*, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %228) #11, !dbg !917
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !369, metadata !DIExpression()), !dbg !923
  call void @llvm.memset.p0i8.i32(i8* nonnull %228, i8 0, i32 128, i32 1, i1 false) #11, !dbg !924
  store i8 2, i8* %170, align 1, !dbg !925, !tbaa !385
  %229 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %7, i32 0, i32 1, i32 0, !dbg !926
  %230 = load i8, i8* %178, align 1, !dbg !926
  store i8 %230, i8* %229, align 1, !dbg !926
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !928
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %7, i8 zeroext 0, i8 zeroext 0, i8 zeroext 2, i32 1) #10, !dbg !929
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %228) #11, !dbg !930
  br label %296, !dbg !931

; <label>:231:                                    ; preds = %173
  call fastcc void @avdtp_get_capabilities_response(%struct.avdtp* nonnull %0, i8* nonnull %57, i32 %169, i8 zeroext 0) #10, !dbg !933
  call void @llvm.dbg.value(metadata i8 1, metadata !840, metadata !DIExpression()), !dbg !934
  br label %296, !dbg !935

; <label>:232:                                    ; preds = %173
  call fastcc void @avdtp_get_capabilities_response(%struct.avdtp* nonnull %0, i8* nonnull %57, i32 %169, i8 zeroext 1) #10, !dbg !936
  call void @llvm.dbg.value(metadata i8 1, metadata !840, metadata !DIExpression()), !dbg !934
  br label %296, !dbg !937

; <label>:233:                                    ; preds = %173
  call void @llvm.dbg.value(metadata i8* null, metadata !938, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 0, metadata !942, metadata !DIExpression()), !dbg !946
  %234 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 -1, i32 1, i32 5, i32 12, !dbg !947
  %235 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !948
  %236 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %235, align 4, !dbg !948, !tbaa !464
  %237 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %236, i32 0, i32 3, !dbg !950
  %238 = load i8, i8* %237, align 2, !dbg !950
  %239 = and i8 %238, 15, !dbg !950
  %240 = add nsw i8 %239, -1, !dbg !951
  %241 = icmp ult i8 %240, 2, !dbg !951
  br i1 %241, label %242, label %251, !dbg !951

; <label>:242:                                    ; preds = %233
  %243 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !952, !tbaa !351
  %244 = and i8 %243, 32, !dbg !952
  %245 = icmp eq i8 %244, 0, !dbg !952
  br i1 %245, label %248, label %246, !dbg !955

; <label>:246:                                    ; preds = %242
  %247 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0)) #10, !dbg !956
  br label %248, !dbg !956

; <label>:248:                                    ; preds = %246, %242
  %249 = bitcast i8* %234 to [6 x i8]*, !dbg !958
  %250 = tail call zeroext i8 @handle_a2dp_discover_flag([6 x i8]* %249, i8 zeroext 1) #10, !dbg !959
  br label %297, !dbg !960

; <label>:251:                                    ; preds = %233
  %252 = and i8 %238, -16, !dbg !961
  %253 = or i8 %252, 1, !dbg !961
  store i8 %253, i8* %237, align 2, !dbg !961
  %254 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %235, align 4, !dbg !962, !tbaa !464
  %255 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %254, i32 0, i32 2, i32 0, !dbg !963
  %256 = load i16, i16* %255, align 4, !dbg !964
  %257 = or i16 %256, 2, !dbg !964
  store i16 %257, i16* %255, align 4, !dbg !964
  %258 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !965
  %259 = load i8, i8* %258, align 4, !dbg !965, !tbaa !418
  %260 = zext i8 %259 to i32, !dbg !966
  %261 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %260, i32 0, !dbg !967
  %262 = bitcast %struct._avdtp_send_info* %6 to i8*, !dbg !968
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %262) #11, !dbg !968
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !369, metadata !DIExpression()), !dbg !970
  call void @llvm.memset.p0i8.i32(i8* nonnull %262, i8 0, i32 128, i32 1, i1 false) #11, !dbg !971
  store i8 6, i8* %170, align 1, !dbg !972, !tbaa !385
  %263 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %6, i32 0, i32 1, i32 0, !dbg !973
  %264 = load i8, i8* %261, align 1, !dbg !973
  store i8 %264, i8* %263, align 1, !dbg !973
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %6, i8 zeroext 0, i8 zeroext 0, i8 zeroext 6, i32 1) #10, !dbg !976
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %262) #11, !dbg !977
  br label %296, !dbg !978

; <label>:265:                                    ; preds = %173
  call void @llvm.dbg.value(metadata i8* null, metadata !979, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !987
  %266 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !988
  %267 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %266, align 4, !dbg !988, !tbaa !464
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %267, metadata !984, metadata !DIExpression()), !dbg !989
  %268 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %267, i32 0, i32 0, !dbg !990
  %269 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %268, align 4, !dbg !990, !tbaa !469
  %270 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %269, i32 0, i32 2, !dbg !991
  %271 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)** %270, align 4, !dbg !991, !tbaa !992
  %272 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !993
  %273 = tail call zeroext i8 %271(%struct._avdtp_local_sep* %267, %struct._avdtp_stream* %272, i8 zeroext 1) #10, !dbg !994
  %274 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %267, i32 0, i32 3, !dbg !995
  %275 = load i8, i8* %274, align 2, !dbg !996
  %276 = and i8 %275, -16, !dbg !996
  %277 = or i8 %276, 2, !dbg !996
  store i8 %277, i8* %274, align 2, !dbg !996
  call void @llvm.dbg.value(metadata i8 1, metadata !840, metadata !DIExpression()), !dbg !934
  br label %296, !dbg !997

; <label>:278:                                    ; preds = %173
  call void @llvm.dbg.value(metadata i8* null, metadata !998, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1006
  %279 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !1007
  %280 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %279, align 4, !dbg !1007, !tbaa !464
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %280, metadata !1003, metadata !DIExpression()), !dbg !1008
  %281 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %280, i32 0, i32 0, !dbg !1009
  %282 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %281, align 4, !dbg !1009, !tbaa !469
  %283 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %282, i32 0, i32 3, !dbg !1010
  %284 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)** %283, align 4, !dbg !1010, !tbaa !1011
  %285 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !1012
  %286 = tail call zeroext i8 %284(%struct._avdtp_local_sep* %280, %struct._avdtp_stream* %285) #10, !dbg !1013
  %287 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %280, i32 0, i32 3, !dbg !1014
  %288 = load i8, i8* %287, align 2, !dbg !1015
  %289 = and i8 %288, -16, !dbg !1015
  %290 = or i8 %289, 3, !dbg !1015
  store i8 %290, i8* %287, align 2, !dbg !1015
  call void @llvm.dbg.value(metadata i8 1, metadata !840, metadata !DIExpression()), !dbg !934
  br label %296, !dbg !1016

; <label>:291:                                    ; preds = %173
  %292 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1017, !tbaa !351
  %293 = icmp slt i8 %292, 0, !dbg !1017
  br i1 %293, label %294, label %296, !dbg !1019

; <label>:294:                                    ; preds = %291
  %295 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str, i32 0, i32 0)) #11, !dbg !1020
  br label %296, !dbg !1020

; <label>:296:                                    ; preds = %294, %291, %278, %265, %251, %232, %231, %227, %173
  call void @llvm.dbg.value(metadata i8 0, metadata !840, metadata !DIExpression()), !dbg !934
  br label %322, !dbg !1022

; <label>:297:                                    ; preds = %248, %225
  %298 = phi %struct._avdtp_local_sep** [ %226, %225 ], [ %235, %248 ], !dbg !909
  call void @llvm.dbg.value(metadata i8 0, metadata !840, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !912, metadata !DIExpression()), !dbg !1023
  %299 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %298, align 4, !dbg !909, !tbaa !464
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %299, metadata !913, metadata !DIExpression()), !dbg !1024
  %300 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1025, !tbaa !351
  %301 = and i8 %300, 32, !dbg !1025
  %302 = icmp eq i8 %301, 0, !dbg !1025
  br i1 %302, label %305, label %303, !dbg !1027

; <label>:303:                                    ; preds = %297
  %304 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #10, !dbg !1028
  br label %305, !dbg !1028

; <label>:305:                                    ; preds = %303, %297
  %306 = icmp eq %struct._avdtp_local_sep* %299, null, !dbg !1030
  br i1 %306, label %319, label %307, !dbg !1032

; <label>:307:                                    ; preds = %305
  %308 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !1033
  %309 = load i8, i8* %308, align 4, !dbg !1033, !tbaa !418
  %310 = zext i8 %309 to i32, !dbg !1035
  %311 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %310, i32 0, !dbg !1036
  %312 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %312) #11, !dbg !1037
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !369, metadata !DIExpression()), !dbg !1039
  call void @llvm.memset.p0i8.i32(i8* nonnull %312, i8 0, i32 128, i32 1, i1 false) #11, !dbg !1040
  store i8 10, i8* %170, align 1, !dbg !1041, !tbaa !385
  %313 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 0, !dbg !1042
  %314 = load i8, i8* %311, align 1, !dbg !1042
  store i8 %314, i8* %313, align 1, !dbg !1042
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !1044
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext 0, i8 zeroext 0, i8 zeroext 10, i32 1) #10, !dbg !1045
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %312) #11, !dbg !1046
  %315 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %299, i32 0, i32 0, !dbg !1047
  %316 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %315, align 4, !dbg !1047, !tbaa !469
  %317 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %316, i32 0, i32 6, !dbg !1048
  %318 = load void (%struct._avdtp_local_sep*)*, void (%struct._avdtp_local_sep*)** %317, align 4, !dbg !1048, !tbaa !1049
  call void %318(%struct._avdtp_local_sep* nonnull %299) #10, !dbg !1050
  br label %322, !dbg !1051

; <label>:319:                                    ; preds = %305
  %320 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 3, !dbg !1052
  %321 = load i16, i16* %320, align 2, !dbg !1052, !tbaa !793
  tail call void @l2cap_disconnect_internal(i16 zeroext %321, i8 zeroext 19) #10, !dbg !1055
  br label %322

; <label>:322:                                    ; preds = %319, %307, %296, %173, %167, %165, %153, %64, %50, %16, %12, %12, %3
  %323 = phi i8 [ 1, %64 ], [ %156, %153 ], [ 0, %165 ], [ 0, %167 ], [ 0, %173 ], [ 1, %296 ], [ 0, %307 ], [ 0, %319 ], [ 0, %3 ], [ 0, %16 ], [ 0, %50 ], [ 0, %12 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 140, i8* nonnull %9) #11, !dbg !1056
  ret i8 %323, !dbg !1056
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #7

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @avdtp_sep_init(%struct.avdtp*, i32, %struct._avdtp_sep_ind*, i8 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1057 {
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !1064, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %1, metadata !1065, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata %struct._avdtp_sep_ind* %2, metadata !1066, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8 %3, metadata !1067, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i32 0, metadata !1068, metadata !DIExpression()), !dbg !1074
  %5 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1075
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %5, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %5, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 0, metadata !1068, metadata !DIExpression()), !dbg !1074
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1078
  br label %7, !dbg !1081

; <label>:7:                                      ; preds = %32, %4
  %8 = phi %struct._avdtp_local_sep* [ %5, %4 ], [ %33, %32 ]
  %9 = phi i32 [ 0, %4 ], [ %14, %32 ]
  %10 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %8, i32 0, i32 2, i32 0, !dbg !1083
  %11 = load i16, i16* %10, align 4, !dbg !1083
  %12 = and i16 %11, 252, !dbg !1083
  %13 = icmp eq i16 %12, 0, !dbg !1086
  %14 = add nuw nsw i32 %9, 1
  br i1 %13, label %15, label %32, !dbg !1087

; <label>:15:                                     ; preds = %7
  %16 = trunc i32 %14 to i16, !dbg !1088
  %17 = shl i16 %16, 2, !dbg !1090
  %18 = and i16 %17, 252, !dbg !1090
  %19 = and i16 %11, 1795, !dbg !1090
  %20 = trunc i32 %1 to i16, !dbg !1091
  %21 = shl i16 %20, 11, !dbg !1092
  %22 = and i16 %21, 2048, !dbg !1093
  %23 = or i16 %18, %22, !dbg !1090
  %24 = or i16 %23, %19, !dbg !1093
  store i16 %24, i16* %10, align 4, !dbg !1093
  %25 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %8, i32 0, i32 0, !dbg !1094
  store %struct._avdtp_sep_ind* %2, %struct._avdtp_sep_ind** %25, align 4, !dbg !1095, !tbaa !469
  %26 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %8, i32 0, i32 1, !dbg !1096
  store %struct.avdtp* %0, %struct.avdtp** %26, align 4, !dbg !1097, !tbaa !1098
  %27 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %8, i32 0, i32 3, !dbg !1099
  %28 = load i8, i8* %27, align 2, !dbg !1100
  %29 = shl i8 %3, 4, !dbg !1100
  %30 = and i8 %28, 15, !dbg !1100
  %31 = or i8 %30, %29, !dbg !1100
  store i8 %31, i8* %27, align 2, !dbg !1100
  br label %36, !dbg !1101

; <label>:32:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i32 %14, metadata !1068, metadata !DIExpression()), !dbg !1074
  %33 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %8, i32 1, !dbg !1102
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %33, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %33, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 %14, metadata !1068, metadata !DIExpression()), !dbg !1074
  %34 = icmp ult %struct._avdtp_local_sep* %33, %6, !dbg !1078
  br i1 %34, label %7, label %35, !dbg !1081, !llvm.loop !1104

; <label>:35:                                     ; preds = %32
  br label %36, !dbg !1106

; <label>:36:                                     ; preds = %35, %15
  ret void, !dbg !1106
}

; Function Attrs: nounwind optsize
define hidden void @find_local_sep_for_tws(%struct.avdtp*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1107 {
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !1109, metadata !DIExpression()), !dbg !1111
  %2 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !1112
  %3 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %2, align 4, !dbg !1112, !tbaa !464
  %4 = icmp eq %struct._avdtp_local_sep* %3, null, !dbg !1114
  %5 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 2
  store i8 0, i8* %5, align 4, !tbaa !1115
  br i1 %4, label %25, label %6, !dbg !1116

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1117
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %7, metadata !1110, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %7, metadata !1110, metadata !DIExpression()), !dbg !1119
  %8 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1120
  br label %11, !dbg !1123

; <label>:9:                                      ; preds = %11
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %16, metadata !1110, metadata !DIExpression()), !dbg !1119
  %10 = icmp ult %struct._avdtp_local_sep* %16, %8, !dbg !1120
  br i1 %10, label %11, label %17, !dbg !1123, !llvm.loop !1125

; <label>:11:                                     ; preds = %9, %6
  %12 = phi i8 [ 0, %6 ], [ %14, %9 ], !dbg !1127
  %13 = phi %struct._avdtp_local_sep* [ %7, %6 ], [ %16, %9 ]
  %14 = add i8 %12, 1, !dbg !1127
  %15 = icmp eq %struct._avdtp_local_sep* %13, %3, !dbg !1129
  %16 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %13, i32 1, !dbg !1131
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %16, metadata !1110, metadata !DIExpression()), !dbg !1119
  br i1 %15, label %24, label %9, !dbg !1133

; <label>:17:                                     ; preds = %9
  store i8 %14, i8* %5, align 4, !dbg !1127, !tbaa !1115
  %18 = load i32, i32* @config_asser, align 4, !dbg !1134, !tbaa !1138
  %19 = icmp eq i32 %18, 0, !dbg !1134
  br i1 %19, label %23, label %20, !dbg !1139

; <label>:20:                                     ; preds = %17
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i32 0, i32 0), i32 1495) #9, !dbg !1141
  %22 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.26, i32 0, i32 0)), !dbg !1146
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !1148
  br label %25, !dbg !1150

; <label>:23:                                     ; preds = %17
  tail call fastcc void @cpu_reset() #9, !dbg !1152
  br label %25

; <label>:24:                                     ; preds = %11
  store i8 %14, i8* %5, align 4, !dbg !1127, !tbaa !1115
  br label %25, !dbg !1157

; <label>:25:                                     ; preds = %24, %23, %20, %1
  ret void, !dbg !1157
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #8 !dbg !1159 {
  tail call void @p33_soft_reset() #10, !dbg !1163
  ret void, !dbg !1164
}

; Function Attrs: nounwind optsize
define hidden void @set_local_sep_for_tws(%struct.avdtp*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1165 {
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !1167, metadata !DIExpression()), !dbg !1169
  %2 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !1170
  %3 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %2, align 4, !dbg !1170, !tbaa !464
  %4 = icmp eq %struct._avdtp_local_sep* %3, null, !dbg !1172
  br i1 %4, label %23, label %5, !dbg !1173

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 2, !dbg !1174
  %7 = load i8, i8* %6, align 4, !dbg !1174, !tbaa !1115
  %8 = icmp eq i8 %7, 0, !dbg !1176
  br i1 %8, label %23, label %9, !dbg !1177

; <label>:9:                                      ; preds = %5
  %10 = icmp ugt i8 %7, 2, !dbg !1179
  br i1 %10, label %11, label %18, !dbg !1181

; <label>:11:                                     ; preds = %9
  %12 = load i32, i32* @config_asser, align 4, !dbg !1182, !tbaa !1138
  %13 = icmp eq i32 %12, 0, !dbg !1182
  br i1 %13, label %17, label %14, !dbg !1187

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i32 0, i32 0), i32 1509) #9, !dbg !1189
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.27, i32 0, i32 0)), !dbg !1194
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !1196
  br label %18, !dbg !1198

; <label>:17:                                     ; preds = %11
  tail call fastcc void @cpu_reset() #9, !dbg !1200
  br label %18

; <label>:18:                                     ; preds = %17, %14, %9
  %19 = load i8, i8* %6, align 4, !dbg !1205, !tbaa !1115
  %20 = zext i8 %19 to i32, !dbg !1206
  %21 = add nsw i32 %20, -1, !dbg !1207
  %22 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 %21, !dbg !1208
  store %struct._avdtp_local_sep* %22, %struct._avdtp_local_sep** %2, align 4, !dbg !1209, !tbaa !464
  br label %23, !dbg !1210

; <label>:23:                                     ; preds = %18, %5, %1
  ret void, !dbg !1211
}

; Function Attrs: nounwind optsize
define hidden i32 @avdtp_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i16 %1, metadata !1216, metadata !DIExpression()), !dbg !1221
  %3 = tail call %struct.avdtp* @get_tws_phone_session() #10, !dbg !1222
  call void @llvm.dbg.value(metadata %struct.avdtp* %3, metadata !1219, metadata !DIExpression()), !dbg !1223
  %4 = icmp eq %struct.avdtp* %3, null, !dbg !1224
  br i1 %4, label %18, label %5, !dbg !1226

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 40, metadata !1217, metadata !DIExpression()), !dbg !1227
  tail call void @find_local_sep_for_tws(%struct.avdtp* nonnull %3) #9, !dbg !1228
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %3, i32 0, i32 1, i32 0, i32 0, !dbg !1229
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %6, i32 40, i32 1, i1 false), !dbg !1229
  call void @llvm.dbg.value(metadata i8 41, metadata !1217, metadata !DIExpression()), !dbg !1227
  %7 = getelementptr inbounds i8, i8* %0, i32 40, !dbg !1230
  store i8 2, i8* %7, align 1, !dbg !1231, !tbaa !351
  call void @llvm.dbg.value(metadata i8 0, metadata !1218, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 0, metadata !1218, metadata !DIExpression()), !dbg !1232
  br label %8, !dbg !1233

; <label>:8:                                      ; preds = %8, %5
  %9 = phi i32 [ 0, %5 ], [ %15, %8 ]
  %10 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %3, i32 0, i32 0, i32 %9, i32 3, !dbg !1236
  %11 = load i8, i8* %10, align 2, !dbg !1236
  %12 = and i8 %11, 15, !dbg !1236
  %13 = add nuw nsw i32 %9, 41, !dbg !1239
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !1240
  store i8 %12, i8* %14, align 1, !dbg !1241, !tbaa !351
  %15 = add nuw nsw i32 %9, 1, !dbg !1242
  %16 = icmp eq i32 %15, 2, !dbg !1244
  br i1 %16, label %17, label %8, !dbg !1233, !llvm.loop !1246

; <label>:17:                                     ; preds = %8
  br label %18, !dbg !1249

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i32 [ 0, %2 ], [ 43, %17 ]
  ret i32 %19, !dbg !1249
}

; Function Attrs: optsize
declare %struct.avdtp* @get_tws_phone_session() local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #7

; Function Attrs: nounwind optsize
define hidden void @avdtp_tws_local_sep_deal(%struct.avdtp*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1250 {
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !1252, metadata !DIExpression()), !dbg !1254
  %2 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, !dbg !1255
  %3 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !1256
  %4 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %3, align 4, !dbg !1256, !tbaa !464
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %4, metadata !1253, metadata !DIExpression()), !dbg !1257
  %5 = icmp eq %struct._avdtp_local_sep* %4, null, !dbg !1258
  br i1 %5, label %24, label %6, !dbg !1260

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %4, i32 0, i32 3, !dbg !1261
  %8 = load i8, i8* %7, align 2, !dbg !1261
  %9 = trunc i8 %8 to i4, !dbg !1262
  switch i4 %9, label %24 [
    i4 2, label %10
    i4 3, label %17
  ], !dbg !1262

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %4, i32 0, i32 0, !dbg !1263
  %12 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %11, align 4, !dbg !1263, !tbaa !469
  %13 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %12, i32 0, i32 2, !dbg !1265
  %14 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)** %13, align 4, !dbg !1265, !tbaa !992
  %15 = getelementptr inbounds %struct.avdtp_core_data_t, %struct.avdtp_core_data_t* %2, i32 0, i32 0, !dbg !1266
  %16 = tail call zeroext i8 %14(%struct._avdtp_local_sep* nonnull %4, %struct._avdtp_stream* %15, i8 zeroext 0) #10, !dbg !1267
  br label %24, !dbg !1268

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %4, i32 0, i32 0, !dbg !1269
  %19 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %18, align 4, !dbg !1269, !tbaa !469
  %20 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %19, i32 0, i32 3, !dbg !1270
  %21 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)** %20, align 4, !dbg !1270, !tbaa !1011
  %22 = getelementptr inbounds %struct.avdtp_core_data_t, %struct.avdtp_core_data_t* %2, i32 0, i32 0, !dbg !1271
  %23 = tail call zeroext i8 %21(%struct._avdtp_local_sep* nonnull %4, %struct._avdtp_stream* %22) #10, !dbg !1272
  br label %24, !dbg !1273

; <label>:24:                                     ; preds = %17, %10, %6, %1
  ret void, !dbg !1274
}

; Function Attrs: nounwind optsize
define hidden void @avdtp_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1276 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1280, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i16 %1, metadata !1281, metadata !DIExpression()), !dbg !1286
  %3 = tail call %struct.avdtp* @get_tws_phone_session() #10, !dbg !1287
  call void @llvm.dbg.value(metadata %struct.avdtp* %3, metadata !1284, metadata !DIExpression()), !dbg !1288
  %4 = icmp eq %struct.avdtp* %3, null, !dbg !1289
  br i1 %4, label %28, label %5, !dbg !1291

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 40, metadata !1282, metadata !DIExpression()), !dbg !1292
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %3, i32 0, i32 1, i32 0, i32 0, !dbg !1293
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %0, i32 40, i32 1, i1 false), !dbg !1293
  call void @llvm.dbg.value(metadata i8 0, metadata !1283, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 0, metadata !1283, metadata !DIExpression()), !dbg !1294
  %7 = getelementptr inbounds i8, i8* %0, i32 40, !dbg !1295
  %8 = load i8, i8* %7, align 1, !dbg !1295, !tbaa !351
  %9 = icmp eq i8 %8, 0, !dbg !1299
  br i1 %9, label %27, label %10, !dbg !1300

; <label>:10:                                     ; preds = %5
  br label %11, !dbg !1302

; <label>:11:                                     ; preds = %11, %10
  %12 = phi i32 [ %23, %11 ], [ 0, %10 ]
  %13 = phi i8 [ %22, %11 ], [ 0, %10 ]
  %14 = add nuw nsw i32 %12, 41, !dbg !1302
  %15 = getelementptr inbounds i8, i8* %0, i32 %14, !dbg !1304
  %16 = load i8, i8* %15, align 1, !dbg !1304, !tbaa !351
  %17 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %3, i32 0, i32 0, i32 %12, i32 3, !dbg !1305
  %18 = load i8, i8* %17, align 2, !dbg !1306
  %19 = and i8 %16, 15, !dbg !1306
  %20 = and i8 %18, -16, !dbg !1306
  %21 = or i8 %20, %19, !dbg !1306
  store i8 %21, i8* %17, align 2, !dbg !1306
  %22 = add i8 %13, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i8 %22, metadata !1283, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %22, metadata !1283, metadata !DIExpression()), !dbg !1294
  %23 = zext i8 %22 to i32, !dbg !1309
  %24 = load i8, i8* %7, align 1, !dbg !1295, !tbaa !351
  %25 = icmp ult i8 %22, %24, !dbg !1299
  br i1 %25, label %11, label %26, !dbg !1300, !llvm.loop !1310

; <label>:26:                                     ; preds = %11
  br label %27, !dbg !1313

; <label>:27:                                     ; preds = %26, %5
  tail call void @set_local_sep_for_tws(%struct.avdtp* nonnull %3) #9, !dbg !1313
  br label %28, !dbg !1314

; <label>:28:                                     ; preds = %27, %2
  ret void, !dbg !1315
}

; Function Attrs: nounwind optsize
define internal fastcc void @avdtp_send(%struct.avdtp* nocapture readonly, %struct._avdtp_send_info*, i8 zeroext, i8 zeroext, i8 zeroext, i32) unnamed_addr #3 section ".bt_stack_code" !dbg !1317 {
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %1, i32 0, i32 0, i32 0, !dbg !1328
  %8 = load i16, i16* %7, align 1, !dbg !1329
  %9 = shl i8 %2, 4, !dbg !1329
  %10 = and i16 %8, -16384, !dbg !1329
  %11 = and i8 %3, 3, !dbg !1330
  %12 = and i8 %4, 63, !dbg !1331
  %13 = zext i8 %12 to i16, !dbg !1331
  %14 = shl nuw nsw i16 %13, 8, !dbg !1331
  %15 = or i8 %11, %9, !dbg !1330
  %16 = zext i8 %15 to i16, !dbg !1330
  %17 = or i16 %16, %14, !dbg !1331
  %18 = or i16 %17, %10, !dbg !1332
  store i16 %18, i16* %7, align 1, !dbg !1332
  %19 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 3, !dbg !1333
  %20 = load i16, i16* %19, align 2, !dbg !1333, !tbaa !793
  %21 = bitcast %struct._avdtp_send_info* %1 to i8*, !dbg !1335
  %22 = add i32 %5, 2, !dbg !1336
  call void @llvm.dbg.value(metadata i16 %20, metadata !794, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %21, metadata !799, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 %22, metadata !800, metadata !DIExpression()), !dbg !1340
  %23 = trunc i32 %22 to i16, !dbg !1341
  %24 = tail call i32 @l2cap_send_internal(i16 zeroext %20, i8* %21, i16 zeroext %23, i8 zeroext 0) #10, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %24, metadata !801, metadata !DIExpression()), !dbg !1343
  %25 = icmp eq i32 %24, 0, !dbg !1344
  br i1 %25, label %32, label %26, !dbg !1345

; <label>:26:                                     ; preds = %6
  %27 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1346, !tbaa !351
  %28 = and i8 %27, 32, !dbg !1346
  %29 = icmp eq i8 %28, 0, !dbg !1346
  br i1 %29, label %32, label %30, !dbg !1349

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !1350
  br label %32, !dbg !1350

; <label>:32:                                     ; preds = %30, %26, %6
  ret void
}

; Function Attrs: optsize
declare i32 @l2cap_send_internal(i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_discover_cmd(%struct.avdtp*, i8 zeroext) unnamed_addr #6 section ".bt_stack_code" !dbg !1352 {
  %3 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1364
  %4 = bitcast %struct._avdtp_send_info* %3 to i8*, !dbg !1365
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #11, !dbg !1365
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %3, metadata !1360, metadata !DIExpression()), !dbg !1366
  call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 0, i32 128, i32 1, i1 false), !dbg !1367
  %5 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1368
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %5, metadata !1359, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %5, metadata !1359, metadata !DIExpression()), !dbg !1370
  %6 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1371
  br label %7, !dbg !1374

; <label>:7:                                      ; preds = %19, %2
  %8 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %9 = phi %struct._avdtp_local_sep* [ %5, %2 ], [ %21, %19 ]
  %10 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %9, i32 0, i32 2, i32 0, !dbg !1376
  %11 = load i16, i16* %10, align 4, !dbg !1376
  %12 = and i16 %11, 252, !dbg !1376
  %13 = icmp eq i16 %12, 0, !dbg !1379
  br i1 %13, label %19, label %14, !dbg !1380

; <label>:14:                                     ; preds = %7
  %15 = shl i32 %8, 1, !dbg !1381
  %16 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %3, i32 0, i32 1, i32 %15, !dbg !1383
  %17 = bitcast i8* %16 to i16*, !dbg !1384
  store i16 %11, i16* %17, align 1, !dbg !1384
  %18 = add nsw i32 %8, 1, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %18, metadata !1358, metadata !DIExpression()), !dbg !1364
  br label %19, !dbg !1386

; <label>:19:                                     ; preds = %14, %7
  %20 = phi i32 [ %18, %14 ], [ %8, %7 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !1358, metadata !DIExpression()), !dbg !1364
  %21 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %9, i32 1, !dbg !1387
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %21, metadata !1359, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %20, metadata !1358, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %21, metadata !1359, metadata !DIExpression()), !dbg !1370
  %22 = icmp ult %struct._avdtp_local_sep* %21, %6, !dbg !1371
  br i1 %22, label %7, label %23, !dbg !1374, !llvm.loop !1389

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 -1, i32 1, i32 5, i32 18, !dbg !1391
  %25 = load i8, i8* %24, align 2, !dbg !1393
  %26 = and i8 %25, 30, !dbg !1393
  %27 = icmp ugt i8 %26, 4, !dbg !1394
  br i1 %27, label %28, label %30, !dbg !1395

; <label>:28:                                     ; preds = %23
  %29 = and i8 %25, -31, !dbg !1396
  store i8 %29, i8* %24, align 2, !dbg !1396
  br label %30, !dbg !1398

; <label>:30:                                     ; preds = %28, %23
  %31 = shl i32 %20, 1, !dbg !1399
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %3, metadata !1362, metadata !DIExpression(DW_OP_deref)), !dbg !1401
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %3, i8 zeroext %1, i8 zeroext 2, i8 zeroext 1, i32 %31) #9, !dbg !1402
  %32 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 8, !dbg !1403
  %33 = load i16, i16* %32, align 2, !dbg !1404
  %34 = or i16 %33, 16384, !dbg !1404
  store i16 %34, i16* %32, align 2, !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #11, !dbg !1405
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_getcap_cmd(%struct.avdtp* readonly, i8 zeroext, %struct._seid_req* nocapture readonly, i32, i8 zeroext) unnamed_addr #6 section ".bt_stack_code" !dbg !1406 {
  %6 = alloca i8, align 1
  %7 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata i8* %6, metadata !1415, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #11, !dbg !1421
  %8 = bitcast %struct._avdtp_send_info* %7 to i8*, !dbg !1422
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #11, !dbg !1422
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !1417, metadata !DIExpression()), !dbg !1423
  call void @llvm.memset.p0i8.i32(i8* nonnull %8, i8 0, i32 128, i32 1, i1 false), !dbg !1424
  %9 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %7, i32 0, i32 1, i32 0, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %9, metadata !1419, metadata !DIExpression()), !dbg !1426
  %10 = icmp eq i32 %3, 0, !dbg !1427
  br i1 %10, label %43, label %11, !dbg !1429

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct._seid_req, %struct._seid_req* %2, i32 0, i32 0, !dbg !1430
  %13 = load i8, i8* %12, align 1, !dbg !1430
  %14 = lshr i8 %13, 2, !dbg !1430
  %15 = zext i8 %14 to i32, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %15, metadata !315, metadata !DIExpression()), !dbg !1434
  %16 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1435
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %16, metadata !316, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %16, metadata !316, metadata !DIExpression()), !dbg !1436
  %17 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1437
  br label %18, !dbg !1438

; <label>:18:                                     ; preds = %26, %11
  %19 = phi %struct._avdtp_local_sep* [ %16, %11 ], [ %27, %26 ]
  %20 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %19, i32 0, i32 2, i32 0, !dbg !1439
  %21 = load i16, i16* %20, align 4, !dbg !1439
  %22 = lshr i16 %21, 2, !dbg !1439
  %23 = and i16 %22, 63, !dbg !1439
  %24 = zext i16 %23 to i32, !dbg !1439
  %25 = icmp eq i32 %24, %15, !dbg !1440
  br i1 %25, label %29, label %26, !dbg !1441

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %19, i32 1, !dbg !1442
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %27, metadata !316, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %27, metadata !316, metadata !DIExpression()), !dbg !1436
  %28 = icmp ult %struct._avdtp_local_sep* %27, %17, !dbg !1437
  br i1 %28, label %18, label %42, !dbg !1438, !llvm.loop !334

; <label>:29:                                     ; preds = %18
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %19, metadata !1416, metadata !DIExpression()), !dbg !1443
  %30 = icmp eq %struct._avdtp_local_sep* %19, null, !dbg !1444
  br i1 %30, label %43, label %31, !dbg !1446

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %19, i32 0, i32 0, !dbg !1447
  %33 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %32, align 4, !dbg !1447, !tbaa !469
  %34 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %33, i32 0, i32 0, !dbg !1448
  %35 = load i8 (i8, i8*, i8*)*, i8 (i8, i8*, i8*)** %34, align 4, !dbg !1448, !tbaa !1449
  call void @llvm.dbg.value(metadata i8* %6, metadata !1415, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  %36 = call zeroext i8 %35(i8 zeroext %14, i8* %9, i8* nonnull %6) #10, !dbg !1450
  %37 = icmp eq i8 %4, 0, !dbg !1451
  %38 = load i8, i8* %6, align 1, !tbaa !351
  call void @llvm.dbg.value(metadata i8 %38, metadata !1415, metadata !DIExpression()), !dbg !1420
  %39 = zext i8 %38 to i32
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !1418, metadata !DIExpression(DW_OP_deref)), !dbg !1453
  br i1 %37, label %41, label %40, !dbg !1454

; <label>:40:                                     ; preds = %31
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %7, i8 zeroext %1, i8 zeroext 2, i8 zeroext 12, i32 %39) #9, !dbg !1455
  br label %48, !dbg !1458

; <label>:41:                                     ; preds = %31
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %7, i8 zeroext %1, i8 zeroext 2, i8 zeroext 2, i32 %39) #9, !dbg !1459
  br label %48, !dbg !1462

; <label>:42:                                     ; preds = %26
  br label %43

; <label>:43:                                     ; preds = %42, %29, %5
  %44 = phi i8 [ 17, %5 ], [ 18, %29 ], [ 18, %42 ]
  store i8 %44, i8* %9, align 1, !tbaa !351
  %45 = icmp eq i8 %4, 0, !dbg !1463
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !1418, metadata !DIExpression(DW_OP_deref)), !dbg !1453
  br i1 %45, label %47, label %46, !dbg !1465

; <label>:46:                                     ; preds = %43
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %7, i8 zeroext %1, i8 zeroext 3, i8 zeroext 12, i32 1) #9, !dbg !1466
  br label %48, !dbg !1468

; <label>:47:                                     ; preds = %43
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %7, i8 zeroext %1, i8 zeroext 3, i8 zeroext 2, i32 1) #9, !dbg !1469
  br label %48, !dbg !1471

; <label>:48:                                     ; preds = %47, %46, %41, %40
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #11, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %6, metadata !1415, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #11, !dbg !1472
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_setconf_cmd(%struct.avdtp*, i8 zeroext, i8*, i32) unnamed_addr #6 section ".bt_stack_code" !dbg !1473 {
  %5 = alloca %struct._avdtp_send_info, align 1
  %6 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !1488
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1488
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1485, metadata !DIExpression()), !dbg !1489
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !1490
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 0, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %7, metadata !1487, metadata !DIExpression()), !dbg !1492
  %8 = icmp ult i32 %3, 2, !dbg !1493
  br i1 %8, label %80, label %9, !dbg !1495

; <label>:9:                                      ; preds = %4
  %10 = bitcast i8* %2 to i16*, !dbg !1496
  %11 = load i16, i16* %10, align 1, !dbg !1496
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1497
  %12 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1499
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !316, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !316, metadata !DIExpression()), !dbg !1500
  %13 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1501
  br label %14, !dbg !1502

; <label>:14:                                     ; preds = %21, %9
  %15 = phi %struct._avdtp_local_sep* [ %12, %9 ], [ %22, %21 ]
  %16 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 2, i32 0, !dbg !1503
  %17 = load i16, i16* %16, align 4, !dbg !1503
  %18 = xor i16 %17, %11, !dbg !1504
  %19 = and i16 %18, 252, !dbg !1504
  %20 = icmp eq i16 %19, 0, !dbg !1504
  br i1 %20, label %24, label %21, !dbg !1505

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 1, !dbg !1506
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %22, metadata !316, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %22, metadata !316, metadata !DIExpression()), !dbg !1500
  %23 = icmp ult %struct._avdtp_local_sep* %22, %13, !dbg !1501
  br i1 %23, label %14, label %79, !dbg !1502, !llvm.loop !334

; <label>:24:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %15, metadata !1484, metadata !DIExpression()), !dbg !1507
  %25 = icmp eq %struct._avdtp_local_sep* %15, null, !dbg !1508
  br i1 %25, label %80, label %26, !dbg !1510

; <label>:26:                                     ; preds = %24
  %27 = and i16 %17, 2, !dbg !1511
  %28 = icmp eq i16 %27, 0, !dbg !1511
  br i1 %28, label %29, label %80, !dbg !1513

; <label>:29:                                     ; preds = %26
  %30 = lshr i16 %11, 10, !dbg !1514
  %31 = trunc i16 %30 to i8, !dbg !1514
  %32 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, i32 0, !dbg !1515
  %33 = load i8, i8* %32, align 1, !dbg !1516
  %34 = and i8 %31, 15, !dbg !1516
  %35 = and i8 %33, -16, !dbg !1516
  %36 = or i8 %34, %35, !dbg !1516
  store i8 %36, i8* %32, align 1, !dbg !1516
  %37 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !1517
  store i8 0, i8* %37, align 4, !dbg !1518, !tbaa !418
  %38 = load i16, i16* %10, align 1, !dbg !1519
  %39 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 0, i32 0, !dbg !1520
  %40 = load i8, i8* %39, align 4, !dbg !1521
  %41 = lshr i16 %38, 8, !dbg !1521
  %42 = trunc i16 %41 to i8, !dbg !1521
  %43 = and i8 %42, -4, !dbg !1521
  %44 = and i8 %40, 3, !dbg !1521
  %45 = or i8 %43, %44, !dbg !1521
  store i8 %45, i8* %39, align 4, !dbg !1521
  %46 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !1522
  store %struct._avdtp_local_sep* %15, %struct._avdtp_local_sep** %46, align 4, !dbg !1523, !tbaa !464
  %47 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 3, !dbg !1524
  %48 = load i8, i8* %47, align 2, !dbg !1524
  %49 = lshr i8 %48, 4, !dbg !1524
  %50 = trunc i8 %49 to i4, !dbg !1526
  switch i4 %50, label %61 [
    i4 0, label %51
    i4 2, label %56
  ], !dbg !1526

; <label>:51:                                     ; preds = %29
  %52 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1527, !tbaa !351
  %53 = icmp slt i8 %52, 0, !dbg !1527
  br i1 %53, label %54, label %61, !dbg !1530

; <label>:54:                                     ; preds = %51
  %55 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.29, i32 0, i32 0)), !dbg !1531
  br label %61, !dbg !1531

; <label>:56:                                     ; preds = %29
  %57 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1533, !tbaa !351
  %58 = icmp slt i8 %57, 0, !dbg !1533
  br i1 %58, label %59, label %61, !dbg !1537

; <label>:59:                                     ; preds = %56
  %60 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.28, i32 0, i32 0)), !dbg !1538
  br label %61, !dbg !1538

; <label>:61:                                     ; preds = %59, %56, %54, %51, %29
  %62 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 0, !dbg !1540
  %63 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %62, align 4, !dbg !1540, !tbaa !469
  %64 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %63, i32 0, i32 1, !dbg !1542
  %65 = load i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)** %64, align 4, !dbg !1542, !tbaa !1543
  %66 = icmp eq i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)* %65, null, !dbg !1544
  br i1 %66, label %73, label %67, !dbg !1545

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1546
  %69 = add i32 %3, 254, !dbg !1549
  %70 = trunc i32 %69 to i8, !dbg !1550
  %71 = tail call zeroext i8 %65(%struct._avdtp_local_sep* nonnull %15, i8* %68, i8 zeroext %70, i8* null) #10, !dbg !1551
  %72 = icmp eq i8 %71, 0, !dbg !1551
  br i1 %72, label %80, label %73, !dbg !1552

; <label>:73:                                     ; preds = %67, %61
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1486, metadata !DIExpression(DW_OP_deref)), !dbg !1553
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 2, i8 zeroext 3, i32 0) #9, !dbg !1554
  %74 = load i16, i16* %16, align 4, !dbg !1556
  %75 = or i16 %74, 2, !dbg !1556
  store i16 %75, i16* %16, align 4, !dbg !1556
  %76 = load i8, i8* %47, align 2, !dbg !1557
  %77 = and i8 %76, -16, !dbg !1557
  %78 = or i8 %77, 1, !dbg !1557
  store i8 %78, i8* %47, align 2, !dbg !1557
  br label %83, !dbg !1558

; <label>:79:                                     ; preds = %21
  br label %80, !dbg !1559

; <label>:80:                                     ; preds = %79, %67, %26, %24, %4
  %81 = phi i8 [ 17, %4 ], [ 18, %24 ], [ 19, %26 ], [ 35, %67 ], [ 18, %79 ]
  call void @llvm.dbg.value(metadata i8 %81, metadata !1481, metadata !DIExpression()), !dbg !1559
  %82 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 1, !dbg !1560
  store i8 %81, i8* %82, align 1, !dbg !1561, !tbaa !1562
  store i8 7, i8* %7, align 1, !dbg !1564, !tbaa !1565
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1486, metadata !DIExpression(DW_OP_deref)), !dbg !1553
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 3, i8 zeroext 3, i32 2) #9, !dbg !1566
  br label %83, !dbg !1567

; <label>:83:                                     ; preds = %80, %73
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1568
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_getconf_cmd(%struct.avdtp* readonly, i8 zeroext, %struct._seid_req* nocapture readonly, i32) unnamed_addr #6 section ".bt_stack_code" !dbg !1569 {
  %5 = alloca i8, align 1
  %6 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata i8* %5, metadata !1577, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #11, !dbg !1583
  call void @llvm.dbg.value(metadata i8 0, metadata !1577, metadata !DIExpression()), !dbg !1582
  store i8 0, i8* %5, align 1, !dbg !1582, !tbaa !351
  %7 = bitcast %struct._avdtp_send_info* %6 to i8*, !dbg !1584
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #11, !dbg !1584
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 128, i32 1, i1 false), !dbg !1586
  %8 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %6, i32 0, i32 1, i32 0, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %8, metadata !1581, metadata !DIExpression()), !dbg !1588
  %9 = icmp eq i32 %3, 0, !dbg !1589
  br i1 %9, label %43, label %10, !dbg !1591

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct._seid_req, %struct._seid_req* %2, i32 0, i32 0, !dbg !1592
  %12 = load i8, i8* %11, align 1, !dbg !1592
  %13 = lshr i8 %12, 2, !dbg !1592
  %14 = zext i8 %13 to i32, !dbg !1593
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %14, metadata !315, metadata !DIExpression()), !dbg !1596
  %15 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1597
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %15, metadata !316, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %15, metadata !316, metadata !DIExpression()), !dbg !1598
  %16 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1599
  br label %17, !dbg !1600

; <label>:17:                                     ; preds = %25, %10
  %18 = phi %struct._avdtp_local_sep* [ %15, %10 ], [ %26, %25 ]
  %19 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %18, i32 0, i32 2, i32 0, !dbg !1601
  %20 = load i16, i16* %19, align 4, !dbg !1601
  %21 = lshr i16 %20, 2, !dbg !1601
  %22 = and i16 %21, 63, !dbg !1601
  %23 = zext i16 %22 to i32, !dbg !1601
  %24 = icmp eq i32 %23, %14, !dbg !1602
  br i1 %24, label %28, label %25, !dbg !1603

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %18, i32 1, !dbg !1604
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %26, metadata !316, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %26, metadata !316, metadata !DIExpression()), !dbg !1598
  %27 = icmp ult %struct._avdtp_local_sep* %26, %16, !dbg !1599
  br i1 %27, label %17, label %42, !dbg !1600, !llvm.loop !334

; <label>:28:                                     ; preds = %17
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %18, metadata !1578, metadata !DIExpression()), !dbg !1605
  %29 = icmp eq %struct._avdtp_local_sep* %18, null, !dbg !1606
  br i1 %29, label %43, label %30, !dbg !1608

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %18, i32 0, i32 0, !dbg !1609
  %32 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %31, align 4, !dbg !1609, !tbaa !469
  %33 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %32, i32 0, i32 0, !dbg !1611
  %34 = load i8 (i8, i8*, i8*)*, i8 (i8, i8*, i8*)** %33, align 4, !dbg !1611, !tbaa !1449
  %35 = icmp eq i8 (i8, i8*, i8*)* %34, null, !dbg !1612
  br i1 %35, label %40, label %36, !dbg !1613

; <label>:36:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8* %5, metadata !1577, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  %37 = call zeroext i8 %34(i8 zeroext %13, i8* %8, i8* nonnull %5) #10, !dbg !1614
  %38 = load i8, i8* %5, align 1, !tbaa !351
  %39 = zext i8 %38 to i32, !dbg !1616
  br label %40, !dbg !1616

; <label>:40:                                     ; preds = %36, %30
  %41 = phi i32 [ 0, %30 ], [ %39, %36 ]
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !1580, metadata !DIExpression(DW_OP_deref)), !dbg !1617
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %6, i8 zeroext %1, i8 zeroext 2, i8 zeroext 4, i32 %41) #9, !dbg !1618
  br label %45, !dbg !1620

; <label>:42:                                     ; preds = %25
  br label %43

; <label>:43:                                     ; preds = %42, %28, %4
  %44 = phi i8 [ 17, %4 ], [ 18, %28 ], [ 18, %42 ]
  store i8 %44, i8* %8, align 1, !tbaa !351
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !1580, metadata !DIExpression(DW_OP_deref)), !dbg !1617
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %6, i8 zeroext %1, i8 zeroext 3, i8 zeroext 4, i32 1) #9, !dbg !1621
  br label %45, !dbg !1622

; <label>:45:                                     ; preds = %43, %40
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #11, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %5, metadata !1577, metadata !DIExpression(DW_OP_deref)), !dbg !1582
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #11, !dbg !1623
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_reconf_cmd(%struct.avdtp*, i8 zeroext, i8*, i32) unnamed_addr #6 section ".bt_stack_code" !dbg !1624 {
  %5 = alloca %struct._avdtp_send_info, align 1
  %6 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !1636
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1636
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1632, metadata !DIExpression()), !dbg !1637
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !1638
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 0, !dbg !1639
  call void @llvm.dbg.value(metadata i8* %7, metadata !1634, metadata !DIExpression()), !dbg !1640
  %8 = icmp ult i32 %3, 3, !dbg !1641
  br i1 %8, label %9, label %10, !dbg !1643

; <label>:9:                                      ; preds = %4
  store i8 17, i8* %7, align 1, !dbg !1644, !tbaa !351
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1646
  br label %55, !dbg !1647

; <label>:10:                                     ; preds = %4
  %11 = load i8, i8* %2, align 1, !dbg !1648
  %12 = lshr i8 %11, 2, !dbg !1648
  %13 = zext i8 %12 to i32, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %13, metadata !315, metadata !DIExpression()), !dbg !1652
  %14 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1653
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !1654
  %15 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1655
  br label %16, !dbg !1656

; <label>:16:                                     ; preds = %24, %10
  %17 = phi %struct._avdtp_local_sep* [ %14, %10 ], [ %25, %24 ]
  %18 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 2, i32 0, !dbg !1657
  %19 = load i16, i16* %18, align 4, !dbg !1657
  %20 = lshr i16 %19, 2, !dbg !1657
  %21 = and i16 %20, 63, !dbg !1657
  %22 = zext i16 %21 to i32, !dbg !1657
  %23 = icmp eq i32 %22, %13, !dbg !1658
  br i1 %23, label %27, label %24, !dbg !1659

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 1, !dbg !1660
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %25, metadata !316, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %25, metadata !316, metadata !DIExpression()), !dbg !1654
  %26 = icmp ult %struct._avdtp_local_sep* %25, %15, !dbg !1655
  br i1 %26, label %16, label %29, !dbg !1656, !llvm.loop !334

; <label>:27:                                     ; preds = %16
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %17, metadata !1635, metadata !DIExpression()), !dbg !1661
  %28 = icmp eq %struct._avdtp_local_sep* %17, null, !dbg !1662
  br i1 %28, label %30, label %32, !dbg !1664

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !1665

; <label>:30:                                     ; preds = %29, %27
  store i8 0, i8* %7, align 1, !dbg !1665, !tbaa !351
  %31 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 1, !dbg !1667
  store i8 18, i8* %31, align 1, !dbg !1668, !tbaa !351
  call void @llvm.dbg.value(metadata i8 2, metadata !1630, metadata !DIExpression()), !dbg !1646
  br label %55, !dbg !1669

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !1670
  %34 = load i8, i8* %33, align 1, !dbg !1670, !tbaa !1672
  %35 = icmp ugt i8 %34, 8, !dbg !1674
  br i1 %35, label %36, label %38, !dbg !1675

; <label>:36:                                     ; preds = %32
  store i8 %34, i8* %7, align 1, !dbg !1676, !tbaa !351
  %37 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 1, !dbg !1678
  store i8 23, i8* %37, align 1, !dbg !1679, !tbaa !351
  call void @llvm.dbg.value(metadata i8 2, metadata !1630, metadata !DIExpression()), !dbg !1646
  br label %55, !dbg !1680

; <label>:38:                                     ; preds = %32
  switch i8 %34, label %39 [
    i8 7, label %41
    i8 4, label %41
  ], !dbg !1681

; <label>:39:                                     ; preds = %38
  store i8 %34, i8* %7, align 1, !dbg !1684, !tbaa !351
  %40 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 1, !dbg !1686
  store i8 26, i8* %40, align 1, !dbg !1687, !tbaa !351
  call void @llvm.dbg.value(metadata i8 2, metadata !1630, metadata !DIExpression()), !dbg !1646
  br label %55, !dbg !1688

; <label>:41:                                     ; preds = %38, %38
  %42 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 0, !dbg !1689
  %43 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %42, align 4, !dbg !1689, !tbaa !469
  %44 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %43, i32 0, i32 1, !dbg !1691
  %45 = load i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)** %44, align 4, !dbg !1691, !tbaa !1543
  %46 = icmp eq i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)* %45, null, !dbg !1692
  br i1 %46, label %54, label %47, !dbg !1693

; <label>:47:                                     ; preds = %41
  %48 = add i32 %3, 255, !dbg !1694
  %49 = trunc i32 %48 to i8, !dbg !1697
  %50 = tail call zeroext i8 %45(%struct._avdtp_local_sep* nonnull %17, i8* %33, i8 zeroext %49, i8* null) #10, !dbg !1698
  %51 = icmp eq i8 %50, 0, !dbg !1698
  br i1 %51, label %52, label %54, !dbg !1699

; <label>:52:                                     ; preds = %47
  store i8 7, i8* %7, align 1, !dbg !1700, !tbaa !351
  %53 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 1, !dbg !1702
  store i8 35, i8* %53, align 1, !dbg !1703, !tbaa !351
  call void @llvm.dbg.value(metadata i8 2, metadata !1630, metadata !DIExpression()), !dbg !1646
  br label %55, !dbg !1704

; <label>:54:                                     ; preds = %47, %41
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1633, metadata !DIExpression(DW_OP_deref)), !dbg !1705
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 2, i8 zeroext 5, i32 0) #9, !dbg !1706
  br label %57, !dbg !1707

; <label>:55:                                     ; preds = %52, %39, %36, %30, %9
  %56 = phi i32 [ 1, %9 ], [ 2, %36 ], [ 2, %39 ], [ 2, %52 ], [ 2, %30 ]
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1633, metadata !DIExpression(DW_OP_deref)), !dbg !1705
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 3, i8 zeroext 5, i32 %56) #9, !dbg !1708
  br label %57, !dbg !1709

; <label>:57:                                     ; preds = %55, %54
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1710
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_open_cmd(%struct.avdtp*, i8 zeroext, %struct._seid_req* nocapture readonly) unnamed_addr #6 section ".bt_stack_code" !dbg !1711 {
  %4 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1716, metadata !DIExpression()), !dbg !1723
  %5 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !1724
  call void @llvm.dbg.value(metadata %struct._avdtp_stream* %5, metadata !1717, metadata !DIExpression()), !dbg !1725
  %6 = bitcast %struct._avdtp_send_info* %4 to i8*, !dbg !1726
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1726
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !1720, metadata !DIExpression()), !dbg !1727
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !1728
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %4, i32 0, i32 1, i32 0, !dbg !1729
  call void @llvm.dbg.value(metadata i8* %7, metadata !1722, metadata !DIExpression()), !dbg !1730
  %8 = getelementptr inbounds %struct._seid_req, %struct._seid_req* %2, i32 0, i32 0, !dbg !1731
  %9 = load i8, i8* %8, align 1, !dbg !1731
  %10 = lshr i8 %9, 2, !dbg !1731
  %11 = zext i8 %10 to i32, !dbg !1732
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i32 %11, metadata !315, metadata !DIExpression()), !dbg !1735
  %12 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1736
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !316, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !316, metadata !DIExpression()), !dbg !1737
  %13 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1738
  br label %14, !dbg !1739

; <label>:14:                                     ; preds = %22, %3
  %15 = phi %struct._avdtp_local_sep* [ %12, %3 ], [ %23, %22 ]
  %16 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 2, i32 0, !dbg !1740
  %17 = load i16, i16* %16, align 4, !dbg !1740
  %18 = lshr i16 %17, 2, !dbg !1740
  %19 = and i16 %18, 63, !dbg !1740
  %20 = zext i16 %19 to i32, !dbg !1740
  %21 = icmp eq i32 %20, %11, !dbg !1741
  br i1 %21, label %25, label %22, !dbg !1742

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 1, !dbg !1743
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %23, metadata !316, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %23, metadata !316, metadata !DIExpression()), !dbg !1737
  %24 = icmp ult %struct._avdtp_local_sep* %23, %13, !dbg !1738
  br i1 %24, label %14, label %50, !dbg !1739, !llvm.loop !334

; <label>:25:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %15, metadata !1718, metadata !DIExpression()), !dbg !1744
  %26 = icmp eq %struct._avdtp_local_sep* %15, null, !dbg !1745
  br i1 %26, label %51, label %27, !dbg !1747

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 3, !dbg !1748
  %29 = load i8, i8* %28, align 2, !dbg !1748
  %30 = and i8 %29, 15, !dbg !1748
  %31 = icmp eq i8 %30, 1, !dbg !1750
  br i1 %31, label %32, label %51, !dbg !1751

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 -1, i32 1, i32 5, i32 18, !dbg !1752
  %34 = load i8, i8* %33, align 2, !dbg !1753
  %35 = and i8 %34, -31, !dbg !1753
  store i8 %35, i8* %33, align 2, !dbg !1753
  %36 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 0, !dbg !1754
  %37 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %36, align 4, !dbg !1754, !tbaa !469
  %38 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %37, i32 0, i32 2, !dbg !1756
  %39 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)** %38, align 4, !dbg !1756, !tbaa !992
  %40 = icmp eq i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)* %39, null, !dbg !1757
  br i1 %40, label %43, label %41, !dbg !1758

; <label>:41:                                     ; preds = %32
  %42 = tail call zeroext i8 %39(%struct._avdtp_local_sep* nonnull %15, %struct._avdtp_stream* nonnull %5, i8 zeroext 1) #10, !dbg !1759
  br label %43, !dbg !1761

; <label>:43:                                     ; preds = %41, %32
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !1721, metadata !DIExpression(DW_OP_deref)), !dbg !1762
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %4, i8 zeroext %1, i8 zeroext 2, i8 zeroext 6, i32 0) #9, !dbg !1763
  %44 = getelementptr inbounds %struct._avdtp_stream, %struct._avdtp_stream* %5, i32 0, i32 0, !dbg !1765
  %45 = load i8, i8* %44, align 1, !dbg !1766
  %46 = or i8 %45, 32, !dbg !1766
  store i8 %46, i8* %44, align 1, !dbg !1766
  %47 = load i8, i8* %28, align 2, !dbg !1767
  %48 = and i8 %47, -16, !dbg !1767
  %49 = or i8 %48, 2, !dbg !1767
  store i8 %49, i8* %28, align 2, !dbg !1767
  br label %53, !dbg !1768

; <label>:50:                                     ; preds = %22
  br label %51

; <label>:51:                                     ; preds = %50, %27, %25
  %52 = phi i8 [ 18, %25 ], [ 49, %27 ], [ 18, %50 ]
  store i8 %52, i8* %7, align 1, !tbaa !351
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !1721, metadata !DIExpression(DW_OP_deref)), !dbg !1762
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %4, i8 zeroext %1, i8 zeroext 3, i8 zeroext 6, i32 1) #9, !dbg !1769
  br label %53, !dbg !1770

; <label>:53:                                     ; preds = %51, %43
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1771
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_start_cmd(%struct.avdtp*, i8 zeroext, %struct._start_req* nocapture readonly) unnamed_addr #6 section ".bt_stack_code" !dbg !1772 {
  %4 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1779, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1782, metadata !DIExpression()), !dbg !1790
  %5 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !1791
  call void @llvm.dbg.value(metadata %struct._avdtp_stream* %5, metadata !1784, metadata !DIExpression()), !dbg !1792
  %6 = bitcast %struct._avdtp_send_info* %4 to i8*, !dbg !1793
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1793
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !1786, metadata !DIExpression()), !dbg !1794
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !1795
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %4, i32 0, i32 1, i32 0, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %7, metadata !1788, metadata !DIExpression()), !dbg !1797
  %8 = getelementptr inbounds %struct._start_req, %struct._start_req* %2, i32 0, i32 0, i32 0, !dbg !1798
  %9 = load i8, i8* %8, align 1, !dbg !1798
  %10 = lshr i8 %9, 2, !dbg !1798
  call void @llvm.dbg.value(metadata i8 %10, metadata !1783, metadata !DIExpression()), !dbg !1799
  %11 = zext i8 %10 to i32, !dbg !1800
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 %11, metadata !315, metadata !DIExpression()), !dbg !1803
  %12 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1804
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !316, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %12, metadata !316, metadata !DIExpression()), !dbg !1805
  %13 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1806
  br label %14, !dbg !1807

; <label>:14:                                     ; preds = %22, %3
  %15 = phi %struct._avdtp_local_sep* [ %12, %3 ], [ %23, %22 ]
  %16 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 2, i32 0, !dbg !1808
  %17 = load i16, i16* %16, align 4, !dbg !1808
  %18 = lshr i16 %17, 2, !dbg !1808
  %19 = and i16 %18, 63, !dbg !1808
  %20 = zext i16 %19 to i32, !dbg !1808
  %21 = icmp eq i32 %20, %11, !dbg !1809
  br i1 %21, label %25, label %22, !dbg !1810

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 1, !dbg !1811
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %23, metadata !316, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %23, metadata !316, metadata !DIExpression()), !dbg !1805
  %24 = icmp ult %struct._avdtp_local_sep* %23, %13, !dbg !1806
  br i1 %24, label %14, label %56, !dbg !1807, !llvm.loop !334

; <label>:25:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %15, metadata !1785, metadata !DIExpression()), !dbg !1812
  %26 = icmp eq %struct._avdtp_local_sep* %15, null, !dbg !1813
  br i1 %26, label %57, label %27, !dbg !1815

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 3, !dbg !1816
  %29 = load i8, i8* %28, align 2, !dbg !1816
  %30 = and i8 %29, 15, !dbg !1816
  %31 = icmp eq i8 %30, 2, !dbg !1818
  br i1 %31, label %32, label %57, !dbg !1819

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct._avdtp_stream, %struct._avdtp_stream* %5, i32 0, i32 0, !dbg !1820
  %34 = load i8, i8* %33, align 1, !dbg !1821
  %35 = or i8 %34, 64, !dbg !1821
  store i8 %35, i8* %33, align 1, !dbg !1821
  %36 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %15, i32 0, i32 0, !dbg !1822
  %37 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %36, align 4, !dbg !1822, !tbaa !469
  %38 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %37, i32 0, i32 3, !dbg !1824
  %39 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)** %38, align 4, !dbg !1824, !tbaa !1011
  %40 = icmp eq i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)* %39, null, !dbg !1825
  br i1 %40, label %44, label %41, !dbg !1826

; <label>:41:                                     ; preds = %32
  %42 = tail call zeroext i8 %39(%struct._avdtp_local_sep* nonnull %15, %struct._avdtp_stream* nonnull %5) #10, !dbg !1827
  %43 = icmp eq i8 %42, 0, !dbg !1827
  br i1 %43, label %57, label %44, !dbg !1830

; <label>:44:                                     ; preds = %41, %32
  %45 = tail call zeroext i8 @lmp_get_conn_num() #10, !dbg !1831
  %46 = icmp eq i8 %45, 1, !dbg !1833
  br i1 %46, label %47, label %52, !dbg !1834

; <label>:47:                                     ; preds = %44
  %48 = tail call zeroext i8 @lmp_get_esco_conn_statu() #10, !dbg !1835
  %49 = icmp eq i8 %48, 0, !dbg !1835
  br i1 %49, label %52, label %50, !dbg !1837

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @puts(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @str.30, i32 0, i32 0)), !dbg !1839
  br label %52, !dbg !1841

; <label>:52:                                     ; preds = %50, %47, %44
  %53 = load i8, i8* %28, align 2, !dbg !1842
  %54 = and i8 %53, -16, !dbg !1842
  %55 = or i8 %54, 3, !dbg !1842
  store i8 %55, i8* %28, align 2, !dbg !1842
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !1787, metadata !DIExpression(DW_OP_deref)), !dbg !1843
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %4, i8 zeroext %1, i8 zeroext 2, i8 zeroext 7, i32 0) #9, !dbg !1844
  br label %72, !dbg !1845

; <label>:56:                                     ; preds = %22
  br label %57, !dbg !1790

; <label>:57:                                     ; preds = %56, %41, %27, %25
  %58 = phi %struct._avdtp_local_sep* [ %15, %41 ], [ null, %25 ], [ %15, %27 ], [ null, %56 ]
  %59 = phi i8 [ 0, %41 ], [ 18, %25 ], [ 49, %27 ], [ 18, %56 ]
  call void @llvm.dbg.value(metadata i8 %59, metadata !1782, metadata !DIExpression()), !dbg !1790
  %60 = shl nuw i8 %10, 2, !dbg !1846
  store i8 %60, i8* %7, align 1, !dbg !1846
  %61 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %4, i32 0, i32 1, i32 1, !dbg !1847
  store i8 %59, i8* %61, align 1, !dbg !1848, !tbaa !1849
  %62 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1851, !tbaa !351
  %63 = icmp slt i8 %62, 0, !dbg !1851
  br i1 %63, label %64, label %71, !dbg !1853

; <label>:64:                                     ; preds = %57
  %65 = zext i8 %59 to i32, !dbg !1854
  %66 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %58, i32 0, i32 3, !dbg !1854
  %67 = load i8, i8* %66, align 2, !dbg !1854
  %68 = and i8 %67, 15, !dbg !1854
  %69 = zext i8 %68 to i32, !dbg !1854
  %70 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i32 %65, i32 %69) #9, !dbg !1854
  br label %71, !dbg !1854

; <label>:71:                                     ; preds = %64, %57
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %4, metadata !1787, metadata !DIExpression(DW_OP_deref)), !dbg !1843
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %4, i8 zeroext %1, i8 zeroext 3, i8 zeroext 7, i32 2) #9, !dbg !1856
  br label %72, !dbg !1857

; <label>:72:                                     ; preds = %71, %52
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1858
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc zeroext i8 @avdtp_close_cmd(%struct.avdtp*, i8 zeroext, %struct._seid_req* nocapture readonly, i32) unnamed_addr #6 section ".bt_stack_code" !dbg !1859 {
  %5 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !1863, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %1, metadata !1864, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct._seid_req* %2, metadata !1865, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i32 %3, metadata !1866, metadata !DIExpression()), !dbg !1874
  %6 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !1875
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1875
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1868, metadata !DIExpression()), !dbg !1876
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !1877
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 0, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %7, metadata !1870, metadata !DIExpression()), !dbg !1879
  %8 = icmp eq i32 %3, 0, !dbg !1880
  br i1 %8, label %57, label %9, !dbg !1882

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct._seid_req, %struct._seid_req* %2, i32 0, i32 0, !dbg !1883
  %11 = load i8, i8* %10, align 1, !dbg !1883
  %12 = lshr i8 %11, 2, !dbg !1883
  %13 = zext i8 %12 to i32, !dbg !1884
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %13, metadata !315, metadata !DIExpression()), !dbg !1887
  %14 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1888
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !1889
  %15 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1890
  br label %16, !dbg !1891

; <label>:16:                                     ; preds = %24, %9
  %17 = phi %struct._avdtp_local_sep* [ %14, %9 ], [ %25, %24 ]
  %18 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 2, i32 0, !dbg !1892
  %19 = load i16, i16* %18, align 4, !dbg !1892
  %20 = lshr i16 %19, 2, !dbg !1892
  %21 = and i16 %20, 63, !dbg !1892
  %22 = zext i16 %21 to i32, !dbg !1892
  %23 = icmp eq i32 %22, %13, !dbg !1893
  br i1 %23, label %27, label %24, !dbg !1894

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 1, !dbg !1895
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %25, metadata !316, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %25, metadata !316, metadata !DIExpression()), !dbg !1889
  %26 = icmp ult %struct._avdtp_local_sep* %25, %15, !dbg !1890
  br i1 %26, label %16, label %53, !dbg !1891, !llvm.loop !334

; <label>:27:                                     ; preds = %16
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %17, metadata !1867, metadata !DIExpression()), !dbg !1896
  %28 = icmp eq %struct._avdtp_local_sep* %17, null, !dbg !1897
  br i1 %28, label %54, label %29, !dbg !1899

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 3, !dbg !1900
  %31 = load i8, i8* %30, align 2, !dbg !1900
  %32 = and i8 %31, 14, !dbg !1902
  %33 = icmp eq i8 %32, 2, !dbg !1902
  br i1 %33, label %34, label %54, !dbg !1902

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 0, !dbg !1903
  %36 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %35, align 4, !dbg !1903, !tbaa !469
  %37 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %36, i32 0, i32 5, !dbg !1905
  %38 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)** %37, align 4, !dbg !1905, !tbaa !1906
  %39 = icmp eq i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)* %38, null, !dbg !1907
  br i1 %39, label %44, label %40, !dbg !1908

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !1909
  %42 = call zeroext i8 %38(%struct._avdtp_local_sep* nonnull %17, %struct._avdtp_stream* %41, i8* %7) #10, !dbg !1911
  %43 = icmp eq i8 %42, 0, !dbg !1911
  br i1 %43, label %56, label %44, !dbg !1912

; <label>:44:                                     ; preds = %40, %34
  %45 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 8, !dbg !1914
  %46 = load i16, i16* %45, align 2, !dbg !1915
  %47 = and i16 %46, -16385, !dbg !1915
  store i16 %47, i16* %45, align 2, !dbg !1915
  %48 = load i8, i8* %30, align 2, !dbg !1916
  %49 = and i8 %48, -16, !dbg !1916
  %50 = or i8 %49, 4, !dbg !1916
  store i8 %50, i8* %30, align 2, !dbg !1916
  %51 = load i16, i16* %18, align 4, !dbg !1917
  %52 = and i16 %51, -3, !dbg !1917
  store i16 %52, i16* %18, align 4, !dbg !1917
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1869, metadata !DIExpression(DW_OP_deref)), !dbg !1918
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 2, i8 zeroext 8, i32 0) #9, !dbg !1919
  br label %57, !dbg !1921

; <label>:53:                                     ; preds = %24
  br label %54

; <label>:54:                                     ; preds = %53, %29, %27
  %55 = phi i8 [ 18, %27 ], [ 49, %29 ], [ 18, %53 ]
  store i8 %55, i8* %7, align 1, !tbaa !351
  br label %56, !dbg !1922

; <label>:56:                                     ; preds = %54, %40
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1869, metadata !DIExpression(DW_OP_deref)), !dbg !1918
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 3, i8 zeroext 8, i32 1) #9, !dbg !1923
  br label %57, !dbg !1924

; <label>:57:                                     ; preds = %56, %44, %4
  %58 = phi i8 [ 1, %56 ], [ 1, %44 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1925
  ret i8 %58, !dbg !1925
}

; Function Attrs: noinline nounwind optsize
define internal fastcc zeroext i8 @avdtp_suspend_cmd(%struct.avdtp*, i8 zeroext, %struct._suspend_req* nocapture readonly, i32) unnamed_addr #6 section ".bt_stack_code" !dbg !1926 {
  %5 = alloca %struct._avdtp_send_info, align 1
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !1930, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %1, metadata !1931, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata %struct._suspend_req* %2, metadata !1932, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %3, metadata !1933, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !1943
  %6 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !1944
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1944
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1936, metadata !DIExpression()), !dbg !1945
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !1946
  %7 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 0, !dbg !1947
  %8 = icmp eq i32 %3, 0, !dbg !1948
  br i1 %8, label %62, label %9, !dbg !1950

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct._suspend_req, %struct._suspend_req* %2, i32 0, i32 0, i32 0, !dbg !1951
  %11 = load i8, i8* %10, align 1, !dbg !1951
  %12 = lshr i8 %11, 2, !dbg !1951
  %13 = zext i8 %12 to i32, !dbg !1952
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 %13, metadata !315, metadata !DIExpression()), !dbg !1955
  %14 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !1956
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %14, metadata !316, metadata !DIExpression()), !dbg !1957
  %15 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !1958
  br label %16, !dbg !1959

; <label>:16:                                     ; preds = %24, %9
  %17 = phi %struct._avdtp_local_sep* [ %14, %9 ], [ %25, %24 ]
  %18 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 2, i32 0, !dbg !1960
  %19 = load i16, i16* %18, align 4, !dbg !1960
  %20 = lshr i16 %19, 2, !dbg !1960
  %21 = and i16 %20, 63, !dbg !1960
  %22 = zext i16 %21 to i32, !dbg !1960
  %23 = icmp eq i32 %22, %13, !dbg !1961
  br i1 %23, label %27, label %24, !dbg !1962

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 1, !dbg !1963
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %25, metadata !316, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %25, metadata !316, metadata !DIExpression()), !dbg !1957
  %26 = icmp ult %struct._avdtp_local_sep* %25, %15, !dbg !1958
  br i1 %26, label %16, label %56, !dbg !1959, !llvm.loop !334

; <label>:27:                                     ; preds = %16
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %17, metadata !1935, metadata !DIExpression()), !dbg !1964
  %28 = icmp eq %struct._avdtp_local_sep* %17, null, !dbg !1965
  br i1 %28, label %57, label %29, !dbg !1967

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 3, !dbg !1968
  %31 = load i8, i8* %30, align 2, !dbg !1968
  %32 = and i8 %31, 15, !dbg !1968
  %33 = zext i8 %32 to i32, !dbg !1970
  %34 = icmp eq i8 %32, 3, !dbg !1971
  br i1 %34, label %40, label %35, !dbg !1972

; <label>:35:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i8 49, metadata !1934, metadata !DIExpression()), !dbg !1943
  %36 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1973, !tbaa !351
  %37 = icmp slt i8 %36, 0, !dbg !1973
  br i1 %37, label %38, label %57, !dbg !1976

; <label>:38:                                     ; preds = %35
  %39 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i32 %33) #9, !dbg !1977
  br label %57, !dbg !1977

; <label>:40:                                     ; preds = %29
  %41 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %17, i32 0, i32 0, !dbg !1979
  %42 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %41, align 4, !dbg !1979, !tbaa !469
  %43 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %42, i32 0, i32 4, !dbg !1981
  %44 = load i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)** %43, align 4, !dbg !1981, !tbaa !473
  %45 = icmp eq i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)* %44, null, !dbg !1982
  br i1 %45, label %52, label %46, !dbg !1983

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 0, !dbg !1984
  %48 = tail call zeroext i8 %44(%struct._avdtp_local_sep* nonnull %17, %struct._avdtp_stream* %47) #10, !dbg !1987
  %49 = icmp eq i8 %48, 0, !dbg !1987
  br i1 %49, label %57, label %50, !dbg !1988

; <label>:50:                                     ; preds = %46
  %51 = load i8, i8* %30, align 2
  br label %52, !dbg !1988

; <label>:52:                                     ; preds = %50, %40
  %53 = phi i8 [ %51, %50 ], [ %31, %40 ], !dbg !1989
  %54 = and i8 %53, -16, !dbg !1989
  %55 = or i8 %54, 2, !dbg !1989
  store i8 %55, i8* %30, align 2, !dbg !1989
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1937, metadata !DIExpression(DW_OP_deref)), !dbg !1990
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 2, i8 zeroext 9, i32 0) #9, !dbg !1991
  br label %62, !dbg !1992

; <label>:56:                                     ; preds = %24
  br label %57, !dbg !1943

; <label>:57:                                     ; preds = %56, %46, %38, %35, %27
  %58 = phi i8 [ 49, %38 ], [ 49, %35 ], [ 0, %46 ], [ 18, %27 ], [ 18, %56 ]
  call void @llvm.dbg.value(metadata i8 %58, metadata !1934, metadata !DIExpression()), !dbg !1943
  %59 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 1, !dbg !1993
  store i8 %58, i8* %59, align 1, !dbg !1994, !tbaa !1849
  %60 = load i8, i8* %10, align 1, !dbg !1995
  %61 = and i8 %60, -4, !dbg !1996
  store i8 %61, i8* %7, align 1, !dbg !1996
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !1937, metadata !DIExpression(DW_OP_deref)), !dbg !1990
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 3, i8 zeroext 9, i32 2) #9, !dbg !1997
  br label %62, !dbg !1998

; <label>:62:                                     ; preds = %57, %52, %4
  %63 = phi i8 [ 1, %57 ], [ 1, %52 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !1999
  ret i8 %63, !dbg !1999
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @avdtp_abort_cmd(%struct.avdtp*, i8 zeroext, %struct._seid_req* nocapture readonly, i32) unnamed_addr #6 section ".bt_stack_code" !dbg !2000 {
  %5 = alloca %struct._avdtp_send_info, align 1
  %6 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !2009
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #11, !dbg !2009
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !2007, metadata !DIExpression()), !dbg !2010
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 128, i32 1, i1 false), !dbg !2011
  %7 = icmp eq i32 %3, 0, !dbg !2012
  br i1 %7, label %41, label %8, !dbg !2014

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct._seid_req, %struct._seid_req* %2, i32 0, i32 0, !dbg !2015
  %10 = load i8, i8* %9, align 1, !dbg !2015
  %11 = lshr i8 %10, 2, !dbg !2015
  %12 = zext i8 %11 to i32, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.avdtp* %0, metadata !314, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 %12, metadata !315, metadata !DIExpression()), !dbg !2019
  %13 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !2020
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %13, metadata !316, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %13, metadata !316, metadata !DIExpression()), !dbg !2021
  %14 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !2022
  br label %15, !dbg !2023

; <label>:15:                                     ; preds = %23, %8
  %16 = phi %struct._avdtp_local_sep* [ %13, %8 ], [ %24, %23 ]
  %17 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %16, i32 0, i32 2, i32 0, !dbg !2024
  %18 = load i16, i16* %17, align 4, !dbg !2024
  %19 = lshr i16 %18, 2, !dbg !2024
  %20 = and i16 %19, 63, !dbg !2024
  %21 = zext i16 %20 to i32, !dbg !2024
  %22 = icmp eq i32 %21, %12, !dbg !2025
  br i1 %22, label %26, label %23, !dbg !2026

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %16, i32 1, !dbg !2027
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %24, metadata !316, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %24, metadata !316, metadata !DIExpression()), !dbg !2021
  %25 = icmp ult %struct._avdtp_local_sep* %24, %14, !dbg !2022
  br i1 %25, label %15, label %40, !dbg !2023, !llvm.loop !334

; <label>:26:                                     ; preds = %15
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %16, metadata !2006, metadata !DIExpression()), !dbg !2028
  %27 = icmp eq %struct._avdtp_local_sep* %16, null, !dbg !2029
  br i1 %27, label %41, label %28, !dbg !2031

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !2008, metadata !DIExpression(DW_OP_deref)), !dbg !2032
  call fastcc void @avdtp_send(%struct.avdtp* %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext %1, i8 zeroext 2, i8 zeroext 10, i32 0) #9, !dbg !2033
  %29 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %16, i32 0, i32 0, !dbg !2035
  %30 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %29, align 4, !dbg !2035, !tbaa !469
  %31 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %30, i32 0, i32 6, !dbg !2037
  %32 = load void (%struct._avdtp_local_sep*)*, void (%struct._avdtp_local_sep*)** %31, align 4, !dbg !2037, !tbaa !1049
  %33 = icmp eq void (%struct._avdtp_local_sep*)* %32, null, !dbg !2038
  br i1 %33, label %35, label %34, !dbg !2039

; <label>:34:                                     ; preds = %28
  call void %32(%struct._avdtp_local_sep* nonnull %16) #10, !dbg !2040
  br label %35, !dbg !2042

; <label>:35:                                     ; preds = %34, %28
  %36 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %16, i32 0, i32 3, !dbg !2043
  %37 = load i8, i8* %36, align 2, !dbg !2044
  %38 = and i8 %37, -16, !dbg !2044
  %39 = or i8 %38, 5, !dbg !2044
  store i8 %39, i8* %36, align 2, !dbg !2044
  br label %41, !dbg !2045

; <label>:40:                                     ; preds = %23
  br label %41, !dbg !2046

; <label>:41:                                     ; preds = %40, %35, %26, %4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #11, !dbg !2046
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @lmp_get_conn_num() local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @lmp_get_esco_conn_statu() local_unnamed_addr #5

; Function Attrs: nounwind optsize
define internal fastcc void @avdtp_get_capabilities_response(%struct.avdtp*, i8*, i32, i8 zeroext) unnamed_addr #3 section ".bt_stack_code" !dbg !2047 {
  %5 = alloca %struct._avdtp_send_info, align 1
  %6 = alloca %struct._avdtp_send_info, align 1
  %7 = alloca %struct._avdtp_send_info, align 1
  %8 = alloca [32 x i8], align 2
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #11, !dbg !2068
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %8, metadata !2055, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2070
  %10 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 5, i32 0, !dbg !2071
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* null, metadata !2063, metadata !DIExpression()), !dbg !2072
  %11 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 -1, i32 1, i32 5, i32 12, !dbg !2073
  %12 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 1, !dbg !2074
  %13 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %12, align 4, !dbg !2074, !tbaa !464
  %14 = icmp eq %struct._avdtp_local_sep* %13, null, !dbg !2076
  br i1 %14, label %30, label %15, !dbg !2077

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %13, i32 0, i32 3, !dbg !2078
  %17 = load i8, i8* %16, align 2, !dbg !2078
  %18 = and i8 %17, 15, !dbg !2078
  %19 = add nsw i8 %18, -1, !dbg !2081
  %20 = icmp ult i8 %19, 2, !dbg !2081
  br i1 %20, label %21, label %30, !dbg !2081

; <label>:21:                                     ; preds = %15
  %22 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2082, !tbaa !351
  %23 = and i8 %22, 32, !dbg !2082
  %24 = icmp eq i8 %23, 0, !dbg !2082
  br i1 %24, label %27, label %25, !dbg !2085

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !2086
  br label %27, !dbg !2086

; <label>:27:                                     ; preds = %25, %21
  %28 = bitcast i8* %11 to [6 x i8]*, !dbg !2088
  %29 = tail call zeroext i8 @handle_a2dp_discover_flag([6 x i8]* %28, i8 zeroext 1) #10, !dbg !2089
  br label %178, !dbg !2090

; <label>:30:                                     ; preds = %15, %4
  %31 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 0, !dbg !2091
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %31, metadata !2063, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %31, metadata !2063, metadata !DIExpression()), !dbg !2072
  %32 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 0, i32 2, !dbg !2093
  %33 = trunc i32 %2 to i8
  br label %34, !dbg !2096

; <label>:34:                                     ; preds = %103, %30
  %35 = phi %struct._avdtp_local_sep* [ %31, %30 ], [ %104, %103 ]
  %36 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2098, !tbaa !351
  %37 = and i8 %36, 32, !dbg !2098
  %38 = icmp eq i8 %37, 0, !dbg !2098
  br i1 %38, label %41, label %39, !dbg !2101

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #9, !dbg !2102
  br label %41, !dbg !2102

; <label>:41:                                     ; preds = %39, %34
  %42 = icmp eq %struct._avdtp_local_sep* %35, null, !dbg !2104
  br i1 %42, label %103, label %43, !dbg !2106

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %35, i32 0, i32 0, !dbg !2107
  %45 = load %struct._avdtp_sep_ind*, %struct._avdtp_sep_ind** %44, align 4, !dbg !2107, !tbaa !469
  %46 = icmp eq %struct._avdtp_sep_ind* %45, null, !dbg !2109
  br i1 %46, label %103, label %47, !dbg !2110

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct._avdtp_sep_ind, %struct._avdtp_sep_ind* %45, i32 0, i32 1, !dbg !2112
  %49 = load i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)** %48, align 4, !dbg !2112, !tbaa !1543
  %50 = tail call zeroext i8 %49(%struct._avdtp_local_sep* nonnull %35, i8* %1, i8 zeroext %33, i8* %10) #10, !dbg !2114
  %51 = icmp eq i8 %50, 0, !dbg !2114
  br i1 %51, label %103, label %52, !dbg !2115

; <label>:52:                                     ; preds = %47
  %53 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2116, !tbaa !351
  %54 = icmp slt i8 %53, 0, !dbg !2116
  %55 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 8
  br i1 %54, label %56, label %66, !dbg !2119

; <label>:56:                                     ; preds = %52
  %57 = load i16, i16* %55, align 2, !dbg !2120
  %58 = lshr i16 %57, 4, !dbg !2120
  %59 = and i16 %58, 15, !dbg !2120
  %60 = zext i16 %59 to i32, !dbg !2120
  %61 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %35, i32 0, i32 3, !dbg !2120
  %62 = load i8, i8* %61, align 2, !dbg !2120
  %63 = lshr i8 %62, 4, !dbg !2120
  %64 = zext i8 %63 to i32, !dbg !2120
  %65 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 %60, i32 %64) #9, !dbg !2120
  br label %66, !dbg !2120

; <label>:66:                                     ; preds = %56, %52
  %67 = load i16, i16* %55, align 2, !dbg !2122
  %68 = lshr i16 %67, 8, !dbg !2122
  %69 = trunc i16 %68 to i4, !dbg !2124
  switch i4 %69, label %70 [
    i4 -6, label %77
    i4 -5, label %77
    i4 -4, label %77
    i4 -1, label %77
  ], !dbg !2124

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %35, i32 0, i32 4, i32 0, !dbg !2125
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %71, i8* nonnull %10, i32 16, i32 1, i1 false), !dbg !2125
  store %struct._avdtp_local_sep* %35, %struct._avdtp_local_sep** %12, align 4, !dbg !2127, !tbaa !464
  %72 = load i16, i16* %55, align 2, !dbg !2128
  %73 = lshr i16 %72, 4, !dbg !2128
  %74 = trunc i16 %73 to i8, !dbg !2128
  %75 = and i8 %74, 15, !dbg !2128
  %76 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !2129
  store i8 %75, i8* %76, align 4, !dbg !2130, !tbaa !418
  br label %77, !dbg !2131

; <label>:77:                                     ; preds = %70, %66, %66, %66, %66
  %78 = phi i16 [ %67, %66 ], [ %67, %66 ], [ %67, %66 ], [ %67, %66 ], [ %72, %70 ], !dbg !2132
  %79 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %35, i32 0, i32 3, !dbg !2135
  %80 = load i8, i8* %79, align 2, !dbg !2135
  %81 = and i8 %80, -16, !dbg !2136
  %82 = icmp ne i8 %81, 32, !dbg !2136
  %83 = and i16 %78, 3840, !dbg !2132
  %84 = icmp eq i16 %83, 2816, !dbg !2137
  %85 = or i1 %82, %84, !dbg !2138
  br i1 %85, label %109, label %86, !dbg !2138

; <label>:86:                                     ; preds = %77
  %87 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2139, !tbaa !351
  %88 = and i8 %87, 32, !dbg !2139
  %89 = icmp eq i8 %88, 0, !dbg !2139
  br i1 %89, label %93, label %90, !dbg !2142

; <label>:90:                                     ; preds = %86
  %91 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !2143
  %92 = load i16, i16* %55, align 2
  br label %93, !dbg !2143

; <label>:93:                                     ; preds = %90, %86
  %94 = phi i16 [ %78, %86 ], [ %92, %90 ], !dbg !2145
  %95 = and i16 %94, -3841, !dbg !2145
  %96 = or i16 %95, 2560, !dbg !2145
  store i16 %96, i16* %55, align 2, !dbg !2145
  %97 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %35, i32 0, i32 4, i32 0, !dbg !2146
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %97, i8* %10, i32 16, i32 1, i1 false), !dbg !2146
  store %struct._avdtp_local_sep* %35, %struct._avdtp_local_sep** %12, align 4, !dbg !2147, !tbaa !464
  %98 = load i16, i16* %55, align 2, !dbg !2148
  %99 = lshr i16 %98, 4, !dbg !2148
  %100 = trunc i16 %99 to i8, !dbg !2148
  %101 = and i8 %100, 15, !dbg !2148
  %102 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !2149
  store i8 %101, i8* %102, align 4, !dbg !2150, !tbaa !418
  br label %109, !dbg !2151

; <label>:103:                                    ; preds = %47, %43, %41
  %104 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %35, i32 1, !dbg !2152
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %104, metadata !2063, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct._avdtp_local_sep* %104, metadata !2063, metadata !DIExpression()), !dbg !2072
  %105 = icmp ult %struct._avdtp_local_sep* %104, %32, !dbg !2093
  br i1 %105, label %34, label %106, !dbg !2096, !llvm.loop !2154

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 8
  %108 = load i16, i16* %107, align 2
  br label %109, !dbg !2156

; <label>:109:                                    ; preds = %106, %93, %77
  %110 = phi i16* [ %107, %106 ], [ %55, %77 ], [ %55, %93 ], !dbg !2157
  %111 = phi i16 [ %108, %106 ], [ %78, %77 ], [ %98, %93 ], !dbg !2158
  %112 = load %struct._avdtp_local_sep*, %struct._avdtp_local_sep** %12, align 4, !dbg !2156, !tbaa !464
  %113 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %112, i32 0, i32 4, i32 0, !dbg !2159
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %113, i32 16, i32 1, i1 false), !dbg !2159
  %114 = lshr i16 %111, 4, !dbg !2158
  %115 = add nuw nsw i16 %114, 1, !dbg !2158
  %116 = and i16 %115, 15, !dbg !2158
  %117 = shl nuw nsw i16 %116, 4, !dbg !2158
  %118 = and i16 %111, -241, !dbg !2158
  %119 = or i16 %117, %118, !dbg !2158
  store i16 %119, i16* %110, align 2, !dbg !2158
  %120 = and i16 %111, 15, !dbg !2160
  %121 = icmp ult i16 %116, %120, !dbg !2161
  br i1 %121, label %164, label %122, !dbg !2162

; <label>:122:                                    ; preds = %109
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 2, !dbg !2163
  call void @llvm.memset.p0i8.i32(i8* nonnull %9, i8 0, i32 32, i32 2, i1 false), !dbg !2164
  %124 = and i16 %111, 16384, !dbg !2165
  %125 = icmp eq i16 %124, 0, !dbg !2167
  br i1 %125, label %126, label %178, !dbg !2168

; <label>:126:                                    ; preds = %122
  %127 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 6, !dbg !2169
  %128 = load i8, i8* %127, align 4, !dbg !2169, !tbaa !418
  %129 = zext i8 %128 to i32, !dbg !2170
  %130 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %129, i32 0, !dbg !2171
  %131 = load i8, i8* %130, align 1, !dbg !2171
  %132 = and i8 %131, -4, !dbg !2172
  %133 = bitcast [32 x i8]* %8 to i16*, !dbg !2173
  %134 = zext i8 %132 to i16, !dbg !2172
  %135 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %112, i32 0, i32 2, i32 0, !dbg !2174
  %136 = load i16, i16* %135, align 4, !dbg !2174
  %137 = lshr i16 %136, 2, !dbg !2174
  %138 = shl i16 %137, 10, !dbg !2175
  %139 = or i16 %138, %134, !dbg !2175
  store i16 %139, i16* %133, align 2, !dbg !2175
  store i8 1, i8* %123, align 2, !dbg !2176, !tbaa !2177
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 4, !dbg !2179
  %141 = getelementptr inbounds %struct._avdtp_local_sep, %struct._avdtp_local_sep* %112, i32 0, i32 4, i32 1, !dbg !2180
  %142 = load i8, i8* %141, align 1, !dbg !2180, !tbaa !2181
  %143 = zext i8 %142 to i32, !dbg !2182
  %144 = add nuw nsw i32 %143, 2, !dbg !2183
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* %113, i32 %144, i32 1, i1 false), !dbg !2184
  %145 = add i8 %142, 4, !dbg !2185
  call void @llvm.dbg.value(metadata i8 %145, metadata !2059, metadata !DIExpression()), !dbg !2070
  %146 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 -1, i32 1, i32 5, i32 118, !dbg !2186
  %147 = bitcast i8* %146 to i16*, !dbg !2186
  %148 = load i16, i16* %147, align 2, !dbg !2186, !tbaa !2188
  %149 = icmp eq i16 %148, 2, !dbg !2193
  br i1 %149, label %150, label %157, !dbg !2194

; <label>:150:                                    ; preds = %126
  %151 = zext i8 %145 to i32, !dbg !2195
  %152 = getelementptr inbounds i8, i8* %123, i32 %151, !dbg !2197
  store i8 4, i8* %152, align 1, !dbg !2198, !tbaa !2177
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !2199
  store i8 2, i8* %153, align 1, !dbg !2200, !tbaa !2181
  %154 = getelementptr inbounds i8, i8* %152, i32 2, !dbg !2201
  %155 = bitcast i8* %154 to i16*, !dbg !2202
  store i16 2, i16* %155, align 1, !dbg !2202
  %156 = add i8 %142, 8, !dbg !2203
  call void @llvm.dbg.value(metadata i8 %156, metadata !2059, metadata !DIExpression()), !dbg !2070
  br label %157, !dbg !2204

; <label>:157:                                    ; preds = %150, %126
  %158 = phi i8 [ %156, %150 ], [ %145, %126 ]
  call void @llvm.dbg.value(metadata i8 %158, metadata !2059, metadata !DIExpression()), !dbg !2070
  %159 = zext i8 %158 to i32, !dbg !2205
  %160 = add nuw nsw i32 %159, 2, !dbg !2207
  %161 = bitcast %struct._avdtp_send_info* %7 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %161) #11, !dbg !2208
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !369, metadata !DIExpression()), !dbg !2210
  call void @llvm.memset.p0i8.i32(i8* nonnull %161, i8 0, i32 128, i32 1, i1 false) #11, !dbg !2211
  %162 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !2212
  store i8 3, i8* %162, align 1, !dbg !2213, !tbaa !385
  %163 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %7, i32 0, i32 1, i32 0, !dbg !2214
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %163, i8* nonnull %9, i32 %160, i32 1, i1 false) #11, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %160, metadata !368, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %7, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %7, i8 zeroext 0, i8 zeroext 0, i8 zeroext 3, i32 %160) #10, !dbg !2217
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %161) #11, !dbg !2218
  br label %178

; <label>:164:                                    ; preds = %109
  %165 = icmp eq i8 %3, 0, !dbg !2219
  %166 = zext i16 %116 to i32
  %167 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 4, i32 %166, i32 0
  br i1 %165, label %173, label %168, !dbg !2222

; <label>:168:                                    ; preds = %164
  %169 = bitcast %struct._avdtp_send_info* %6 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %169) #11, !dbg !2223
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !369, metadata !DIExpression()), !dbg !2227
  call void @llvm.memset.p0i8.i32(i8* nonnull %169, i8 0, i32 128, i32 1, i1 false) #11, !dbg !2228
  %170 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !2229
  store i8 12, i8* %170, align 1, !dbg !2230, !tbaa !385
  %171 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %6, i32 0, i32 1, i32 0, !dbg !2231
  %172 = load i8, i8* %167, align 1, !dbg !2231
  store i8 %172, i8* %171, align 1, !dbg !2231
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %6, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !2233
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %6, i8 zeroext 0, i8 zeroext 0, i8 zeroext 12, i32 1) #10, !dbg !2234
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %169) #11, !dbg !2235
  br label %178, !dbg !2236

; <label>:173:                                    ; preds = %164
  %174 = bitcast %struct._avdtp_send_info* %5 to i8*, !dbg !2237
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %174) #11, !dbg !2237
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !369, metadata !DIExpression()), !dbg !2241
  call void @llvm.memset.p0i8.i32(i8* nonnull %174, i8 0, i32 128, i32 1, i1 false) #11, !dbg !2242
  %175 = getelementptr inbounds %struct.avdtp, %struct.avdtp* %0, i32 0, i32 1, i32 7, !dbg !2243
  store i8 2, i8* %175, align 1, !dbg !2244, !tbaa !385
  %176 = getelementptr inbounds %struct._avdtp_send_info, %struct._avdtp_send_info* %5, i32 0, i32 1, i32 0, !dbg !2245
  %177 = load i8, i8* %167, align 1, !dbg !2245
  store i8 %177, i8* %176, align 1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 1, metadata !368, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata %struct._avdtp_send_info* %5, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  call fastcc void @avdtp_send(%struct.avdtp* nonnull %0, %struct._avdtp_send_info* nonnull %5, i8 zeroext 0, i8 zeroext 0, i8 zeroext 2, i32 1) #10, !dbg !2248
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %174) #11, !dbg !2249
  br label %178, !dbg !2250

; <label>:178:                                    ; preds = %173, %168, %157, %122, %27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #11, !dbg !2251
  ret void
}

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!298, !299}
!llvm.ident = !{!300}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !297, line: 190, type: !168, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !296)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avdtp.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 58, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/avdtp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "AVDTP_STATE_IDLE", value: 0)
!9 = !DIEnumerator(name: "AVDTP_STATE_CONFIGURED", value: 1)
!10 = !DIEnumerator(name: "AVDTP_STATE_OPEN", value: 2)
!11 = !DIEnumerator(name: "AVDTP_STATE_STREAMING", value: 3)
!12 = !DIEnumerator(name: "AVDTP_STATE_CLOSING", value: 4)
!13 = !DIEnumerator(name: "AVDTP_STATE_ABORTING", value: 5)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_avdtp_parse_result", file: !6, line: 51, size: 32, elements: !15)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PARSE_ERROR", value: 0)
!17 = !DIEnumerator(name: "PARSE_FRAGMENT", value: 1)
!18 = !DIEnumerator(name: "PARSE_SUCCESS", value: 2)
!19 = !{!20, !210, !212, !62, !63, !213, !220, !229, !239, !240, !248, !262, !268, !274, !282, !68, !289, !290}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_conn", file: !22, line: 237, size: 1024, elements: !23)
!22 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!23 = !{!24, !35, !44, !151}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !21, file: !22, line: 238, baseType: !25, size: 48)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !26, line: 7, baseType: !27)
!26 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 48, elements: !33)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !29, line: 20, baseType: !30)
!29 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !31, line: 29, baseType: !32)
!31 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 6)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_core_data", scope: !21, file: !22, line: 239, baseType: !36, size: 8, offset: 48)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_core_data_t", file: !22, line: 229, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 225, size: 8, elements: !38)
!38 = !{!39, !42, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !37, file: !22, line: 226, baseType: !40, size: 1, flags: DIFlagBitField, extraData: i64 0)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 11, baseType: !32)
!41 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!42 = !DIDerivedType(tag: DW_TAG_member, name: "discover_req", scope: !37, file: !22, line: 227, baseType: !40, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "bqb_test_cnt", scope: !37, file: !22, line: 228, baseType: !40, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !21, file: !22, line: 240, baseType: !45, size: 768, offset: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avdtp", file: !6, line: 335, size: 768, elements: !46)
!46 = !{!47, !125}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "local_seps", scope: !45, file: !6, line: 337, baseType: !48, size: 448)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 448, elements: !123)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_local_sep", file: !6, line: 293, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_local_sep", file: !6, line: 282, size: 224, elements: !51)
!51 = !{!52, !105, !107, !117, !118, !119}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !50, file: !6, line: 283, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_sep_ind", file: !6, line: 350, size: 288, elements: !56)
!56 = !{!57, !64, !69, !82, !86, !87, !91, !95, !99}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !55, file: !6, line: 351, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !40, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 11, baseType: !32)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "set_configuration", scope: !55, file: !6, line: 353, baseType: !65, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!66 = !DISubroutineType(types: !67)
!67 = !{!61, !68, !63, !40, !62}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !55, file: !6, line: 355, baseType: !70, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!71 = !DISubroutineType(types: !72)
!72 = !{!61, !68, !73, !40}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_stream", file: !6, line: 280, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_stream", file: !6, line: 268, size: 8, elements: !76)
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rseid", scope: !75, file: !6, line: 270, baseType: !40, size: 4, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "int_role", scope: !75, file: !6, line: 271, baseType: !40, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "open_acp", scope: !75, file: !6, line: 272, baseType: !40, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "starting", scope: !75, file: !6, line: 278, baseType: !40, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !75, file: !6, line: 279, baseType: !40, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !55, file: !6, line: 356, baseType: !83, size: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32)
!84 = !DISubroutineType(types: !85)
!85 = !{!61, !68, !73}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !55, file: !6, line: 357, baseType: !83, size: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !55, file: !6, line: 359, baseType: !88, size: 32, offset: 160)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DISubroutineType(types: !90)
!90 = !{!61, !68, !73, !63}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !55, file: !6, line: 361, baseType: !92, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !68}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !55, file: !6, line: 362, baseType: !96, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DISubroutineType(types: !98)
!98 = !{!61, null}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "delayreport", scope: !55, file: !6, line: 363, baseType: !100, size: 32, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!101 = !DISubroutineType(types: !102)
!102 = !{!61, !40, !103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !41, line: 13, baseType: !104)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !50, file: !6, line: 284, baseType: !106, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !50, file: !6, line: 286, baseType: !108, size: 16, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_info", file: !6, line: 124, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_info", file: !6, line: 117, size: 16, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !109, file: !6, line: 118, baseType: !40, size: 1, flags: DIFlagBitField, extraData: i64 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !109, file: !6, line: 119, baseType: !40, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "seid", scope: !109, file: !6, line: 120, baseType: !40, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "rfa2", scope: !109, file: !6, line: 121, baseType: !40, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !6, line: 122, baseType: !40, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "media_type", scope: !109, file: !6, line: 123, baseType: !40, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !50, file: !6, line: 288, baseType: !40, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "codec_type", scope: !50, file: !6, line: 289, baseType: !40, size: 4, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !50, file: !6, line: 290, baseType: !120, size: 128, offset: 88)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 16)
!123 = !{!124}
!124 = !DISubrange(count: 2)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "adp_core_data", scope: !45, file: !6, line: 338, baseType: !126, size: 320, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_core_data_t", file: !6, line: 333, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 318, size: 320, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !127, file: !6, line: 319, baseType: !74, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep", scope: !127, file: !6, line: 320, baseType: !68, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep_ind", scope: !127, file: !6, line: 321, baseType: !40, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !127, file: !6, line: 322, baseType: !103, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !127, file: !6, line: 323, baseType: !134, size: 64, offset: 96)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !140)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_req", file: !6, line: 129, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_req", file: !6, line: 126, size: 8, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !136, file: !6, line: 127, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !136, file: !6, line: 128, baseType: !40, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!140 = !{!141}
!141 = !DISubrange(count: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !127, file: !6, line: 324, baseType: !120, size: 128, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "seid_ind", scope: !127, file: !6, line: 325, baseType: !40, size: 8, offset: 288)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pending_req", scope: !127, file: !6, line: 326, baseType: !40, size: 8, offset: 296)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "max_acp_seid", scope: !127, file: !6, line: 327, baseType: !40, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cur_acp_seid", scope: !127, file: !6, line: 328, baseType: !40, size: 4, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "aac_codec_prior", scope: !127, file: !6, line: 329, baseType: !40, size: 4, offset: 312, flags: DIFlagBitField, extraData: i64 304)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !127, file: !6, line: 330, baseType: !40, size: 2, offset: 316, flags: DIFlagBitField, extraData: i64 304)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "get_discover", scope: !127, file: !6, line: 331, baseType: !40, size: 1, offset: 318, flags: DIFlagBitField, extraData: i64 304)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !127, file: !6, line: 332, baseType: !40, size: 1, offset: 319, flags: DIFlagBitField, extraData: i64 304)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !21, file: !22, line: 241, baseType: !152, size: 192, offset: 832)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media", file: !22, line: 215, size: 192, elements: !153)
!153 = !{!154, !163, !187, !206, !207, !208, !209}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "media_core_data", scope: !152, file: !22, line: 216, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "media_core_data_t", file: !22, line: 213, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 209, size: 64, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !156, file: !22, line: 210, baseType: !103, size: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cp_type", scope: !156, file: !22, line: 211, baseType: !103, size: 16, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !156, file: !22, line: 212, baseType: !161, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !41, line: 15, baseType: !162)
!162 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !152, file: !22, line: 217, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_probe", file: !22, line: 190, size: 192, elements: !166)
!166 = !{!167, !169, !176, !181, !185, !186}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !22, line: 192, baseType: !168, size: 32)
!168 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !165, file: !22, line: 193, baseType: !170, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DISubroutineType(types: !172)
!172 = !{!168, !62, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DISubroutineType(types: !175)
!175 = !{!168, !62, !63, !103}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !165, file: !22, line: 194, baseType: !177, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DISubroutineType(types: !179)
!179 = !{!168, !180, !63, !103}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !165, file: !22, line: 195, baseType: !182, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DISubroutineType(types: !184)
!184 = !{!168, null}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !165, file: !22, line: 196, baseType: !182, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !165, file: !22, line: 197, baseType: !182, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !152, file: !22, line: 218, baseType: !188, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_codec", file: !22, line: 200, size: 192, elements: !190)
!190 = !{!191, !192, !196, !200, !204, !205}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !22, line: 201, baseType: !168, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !189, file: !22, line: 202, baseType: !193, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DISubroutineType(types: !195)
!195 = !{!168, !168}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !189, file: !22, line: 203, baseType: !197, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DISubroutineType(types: !199)
!199 = !{!168, !62}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !189, file: !22, line: 204, baseType: !201, size: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = !DISubroutineType(types: !203)
!203 = !{!168, !63, !103}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !189, file: !22, line: 205, baseType: !182, size: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !189, file: !22, line: 206, baseType: !197, size: 32, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !152, file: !22, line: 219, baseType: !161, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nchannels", scope: !152, file: !22, line: 220, baseType: !40, size: 4, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !152, file: !22, line: 221, baseType: !40, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !22, line: 222, baseType: !40, size: 8, offset: 168)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!211 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!212 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_common_header", file: !6, line: 87, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_common_header", file: !6, line: 83, size: 8, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !215, file: !6, line: 84, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "packet_type", scope: !215, file: !6, line: 85, baseType: !40, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !215, file: !6, line: 86, baseType: !40, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_single_header", file: !6, line: 95, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_single_header", file: !6, line: 89, size: 16, elements: !223)
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !222, file: !6, line: 90, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "packet_type", scope: !222, file: !6, line: 91, baseType: !40, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !222, file: !6, line: 92, baseType: !40, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "signal_id", scope: !222, file: !6, line: 93, baseType: !40, size: 6, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !222, file: !6, line: 94, baseType: !40, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_start_header", file: !6, line: 104, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_start_header", file: !6, line: 97, size: 24, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !231, file: !6, line: 98, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "packet_type", scope: !231, file: !6, line: 99, baseType: !40, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !231, file: !6, line: 100, baseType: !40, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "no_of_packets", scope: !231, file: !6, line: 101, baseType: !40, size: 8, offset: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "signal_id", scope: !231, file: !6, line: 102, baseType: !40, size: 6, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !231, file: !6, line: 103, baseType: !40, size: 2, offset: 22, flags: DIFlagBitField, extraData: i64 16)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "setconf_req", file: !6, line: 136, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_setconf_req", file: !6, line: 131, size: 16, elements: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !242, file: !6, line: 132, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !242, file: !6, line: 133, baseType: !40, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rfa1", scope: !242, file: !6, line: 134, baseType: !40, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "int_seid", scope: !242, file: !6, line: 135, baseType: !40, size: 6, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "start_req", file: !6, line: 261, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_start_req", file: !6, line: 258, size: 16, elements: !251)
!251 = !{!252, !258}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "first_seid", scope: !250, file: !6, line: 259, baseType: !253, size: 8)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid", file: !6, line: 115, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid", file: !6, line: 112, size: 8, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !254, file: !6, line: 113, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "seid", scope: !254, file: !6, line: 114, baseType: !40, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "other_seids", scope: !250, file: !6, line: 260, baseType: !259, size: 8, offset: 8)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 8, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 1)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "suspend_req", file: !6, line: 266, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_suspend_req", file: !6, line: 263, size: 16, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "first_seid", scope: !264, file: !6, line: 264, baseType: !253, size: 8)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "other_seids", scope: !264, file: !6, line: 265, baseType: !259, size: 8, offset: 8)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "conf_rej", file: !6, line: 76, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conf_rej", file: !6, line: 73, size: 16, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !270, file: !6, line: 74, baseType: !40, size: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !270, file: !6, line: 75, baseType: !40, size: 8, offset: 8)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "reconf_req", file: !6, line: 150, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reconf_req", file: !6, line: 144, size: 24, elements: !277)
!277 = !{!278, !279, !280, !281}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !276, file: !6, line: 145, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !276, file: !6, line: 146, baseType: !40, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "serv_cap", scope: !276, file: !6, line: 148, baseType: !40, size: 8, offset: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "serv_cap_len", scope: !276, file: !6, line: 149, baseType: !40, size: 8, offset: 16)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream_rej", file: !6, line: 142, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stream_rej", file: !6, line: 138, size: 16, elements: !285)
!285 = !{!286, !287, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !284, file: !6, line: 139, baseType: !40, size: 2, flags: DIFlagBitField, extraData: i64 0)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !284, file: !6, line: 140, baseType: !40, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !284, file: !6, line: 141, baseType: !40, size: 8, offset: 8)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_service_capability", file: !6, line: 71, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_service_capability", file: !6, line: 68, size: 16, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !292, file: !6, line: 69, baseType: !40, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !292, file: !6, line: 70, baseType: !40, size: 8, offset: 8)
!296 = !{!0}
!297 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!298 = !{i32 2, !"Dwarf Version", i32 4}
!299 = !{i32 2, !"Debug Info Version", i32 3}
!300 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!301 = distinct !DISubprogram(name: "avdtp_retry_send", scope: !3, file: !3, line: 82, type: !302, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !306)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_t", file: !6, line: 345, baseType: !45)
!306 = !{!307}
!307 = !DILocalVariable(name: "session", arg: 1, scope: !301, file: !3, line: 82, type: !304)
!308 = !DILocation(line: 82, column: 32, scope: !301)
!309 = !DILocation(line: 93, column: 1, scope: !301)
!310 = distinct !DISubprogram(name: "find_local_sep_by_seid", scope: !3, file: !3, line: 193, type: !311, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{!68, !304, !168}
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(name: "session", arg: 1, scope: !310, file: !3, line: 193, type: !304)
!315 = !DILocalVariable(name: "seid", arg: 2, scope: !310, file: !3, line: 193, type: !168)
!316 = !DILocalVariable(name: "sep", scope: !310, file: !3, line: 195, type: !68)
!317 = !DILocation(line: 193, column: 50, scope: !310)
!318 = !DILocation(line: 193, column: 63, scope: !310)
!319 = !DILocation(line: 197, column: 5, scope: !320)
!320 = distinct !DILexicalBlock(scope: !310, file: !3, line: 197, column: 5)
!321 = !DILocation(line: 195, column: 22, scope: !310)
!322 = !DILocation(line: 197, column: 5, scope: !323)
!323 = !DILexicalBlockFile(scope: !324, file: !3, discriminator: 1)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 197, column: 5)
!325 = !DILocation(line: 197, column: 5, scope: !326)
!326 = !DILexicalBlockFile(scope: !320, file: !3, discriminator: 1)
!327 = !DILocation(line: 198, column: 23, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 198, column: 13)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 197, column: 28)
!330 = !DILocation(line: 198, column: 28, scope: !328)
!331 = !DILocation(line: 198, column: 13, scope: !329)
!332 = !DILocation(line: 197, column: 5, scope: !333)
!333 = !DILexicalBlockFile(scope: !324, file: !3, discriminator: 2)
!334 = distinct !{!334, !319, !335}
!335 = !DILocation(line: 201, column: 5, scope: !320)
!336 = !DILocation(line: 205, column: 1, scope: !310)
!337 = distinct !DISubprogram(name: "avdtp_discover_req", scope: !3, file: !3, line: 1036, type: !302, isLocal: false, isDefinition: true, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !338)
!338 = !{!339, !340, !341}
!339 = !DILocalVariable(name: "session", arg: 1, scope: !337, file: !3, line: 1036, type: !304)
!340 = !DILocalVariable(name: "sep", scope: !337, file: !3, line: 1038, type: !68)
!341 = !DILocalVariable(name: "conn", scope: !337, file: !3, line: 1039, type: !20)
!342 = !DILocation(line: 1036, column: 34, scope: !337)
!343 = !DILocation(line: 1039, column: 30, scope: !337)
!344 = !DILocation(line: 1040, column: 32, scope: !345)
!345 = distinct !DILexicalBlock(scope: !337, file: !3, line: 1040, column: 9)
!346 = !DILocation(line: 1040, column: 45, scope: !345)
!347 = !DILocation(line: 1040, column: 9, scope: !337)
!348 = !DILocation(line: 1041, column: 9, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 1041, column: 9)
!350 = distinct !DILexicalBlock(scope: !345, file: !3, line: 1040, column: 54)
!351 = !{!352, !352, i64 0}
!352 = !{!"omnipotent char", !353, i64 0}
!353 = !{!"Simple C/C++ TBAA"}
!354 = !DILocation(line: 1041, column: 9, scope: !350)
!355 = !DILocation(line: 1041, column: 9, scope: !356)
!356 = !DILexicalBlockFile(scope: !349, file: !3, discriminator: 1)
!357 = !DILocation(line: 1043, column: 42, scope: !350)
!358 = !DILocation(line: 1043, column: 9, scope: !350)
!359 = !DILocation(line: 1044, column: 9, scope: !350)
!360 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !380)
!361 = distinct !DISubprogram(name: "send_request", scope: !3, file: !3, line: 984, type: !362, isLocal: true, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!168, !304, !40, !62, !168}
!364 = !{!365, !366, !367, !368, !369, !379}
!365 = !DILocalVariable(name: "session", arg: 1, scope: !361, file: !3, line: 984, type: !304)
!366 = !DILocalVariable(name: "signal_id", arg: 2, scope: !361, file: !3, line: 984, type: !40)
!367 = !DILocalVariable(name: "buffer", arg: 3, scope: !361, file: !3, line: 984, type: !62)
!368 = !DILocalVariable(name: "size", arg: 4, scope: !361, file: !3, line: 984, type: !168)
!369 = !DILocalVariable(name: "send_buf_ptr", scope: !361, file: !3, line: 986, type: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_send_info", file: !6, line: 312, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_send_info", file: !6, line: 309, size: 1024, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !372, file: !6, line: 310, baseType: !221, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !372, file: !6, line: 311, baseType: !376, size: 1008, offset: 16)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1008, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 126)
!379 = !DILocalVariable(name: "t_send", scope: !361, file: !3, line: 990, type: !371)
!380 = distinct !DILocation(line: 1048, column: 5, scope: !337)
!381 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !380)
!382 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !380)
!383 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !380)
!384 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !380)
!385 = !{!386, !352, i64 93}
!386 = !{!"avdtp", !352, i64 0, !387, i64 56}
!387 = !{!"", !388, i64 0, !389, i64 4, !352, i64 8, !390, i64 10, !352, i64 12, !352, i64 20, !352, i64 36, !352, i64 37, !352, i64 38, !352, i64 38, !352, i64 39, !352, i64 39, !352, i64 39, !352, i64 39}
!388 = !{!"_avdtp_stream", !352, i64 0, !352, i64 0, !352, i64 0, !352, i64 0, !352, i64 0}
!389 = !{!"any pointer", !352, i64 0}
!390 = !{!"short", !352, i64 0}
!391 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !380)
!392 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !380)
!393 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !380)
!394 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !380)
!395 = !DILocation(line: 1052, column: 5, scope: !396)
!396 = distinct !DILexicalBlock(scope: !337, file: !3, line: 1052, column: 5)
!397 = !DILocation(line: 1038, column: 22, scope: !337)
!398 = !DILocation(line: 1052, column: 5, scope: !399)
!399 = !DILexicalBlockFile(scope: !400, file: !3, discriminator: 1)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 1052, column: 5)
!401 = !DILocation(line: 1052, column: 5, scope: !402)
!402 = !DILexicalBlockFile(scope: !396, file: !3, discriminator: 1)
!403 = !DILocation(line: 1053, column: 14, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 1052, column: 28)
!405 = !DILocation(line: 1053, column: 20, scope: !404)
!406 = !DILocation(line: 1052, column: 5, scope: !407)
!407 = !DILexicalBlockFile(scope: !400, file: !3, discriminator: 2)
!408 = distinct !{!408, !395, !409}
!409 = !DILocation(line: 1054, column: 5, scope: !396)
!410 = !DILocation(line: 1055, column: 1, scope: !411)
!411 = !DILexicalBlockFile(scope: !337, file: !3, discriminator: 2)
!412 = distinct !DISubprogram(name: "avdtp_start_req", scope: !3, file: !3, line: 1058, type: !302, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !413)
!413 = !{!414}
!414 = !DILocalVariable(name: "session", arg: 1, scope: !412, file: !3, line: 1058, type: !304)
!415 = !DILocation(line: 1058, column: 31, scope: !412)
!416 = !DILocation(line: 1061, column: 100, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 1061, column: 9)
!418 = !{!386, !352, i64 92}
!419 = !DILocation(line: 1061, column: 45, scope: !417)
!420 = !DILocation(line: 1061, column: 44, scope: !417)
!421 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !422)
!422 = distinct !DILocation(line: 1061, column: 9, scope: !417)
!423 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !422)
!424 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !422)
!425 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !422)
!426 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !422)
!427 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !422)
!428 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !422)
!429 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !422)
!430 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !422)
!431 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !422)
!432 = !DILocation(line: 1064, column: 1, scope: !412)
!433 = distinct !DISubprogram(name: "avdtp_suspend_req", scope: !3, file: !3, line: 1068, type: !302, isLocal: false, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !434)
!434 = !{!435}
!435 = !DILocalVariable(name: "session", arg: 1, scope: !433, file: !3, line: 1068, type: !304)
!436 = !DILocation(line: 1068, column: 33, scope: !433)
!437 = !DILocation(line: 1071, column: 102, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !3, line: 1071, column: 9)
!439 = !DILocation(line: 1071, column: 47, scope: !438)
!440 = !DILocation(line: 1071, column: 46, scope: !438)
!441 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !442)
!442 = distinct !DILocation(line: 1071, column: 9, scope: !438)
!443 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !442)
!444 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !442)
!445 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !442)
!446 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !442)
!447 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !442)
!448 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !442)
!449 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !442)
!450 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !442)
!451 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !442)
!452 = !DILocalVariable(name: "packet", arg: 2, scope: !453, file: !3, line: 1340, type: !63)
!453 = distinct !DISubprogram(name: "avdtp_suspend_response", scope: !3, file: !3, line: 1340, type: !454, isLocal: true, isDefinition: true, scopeLine: 1341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!61, !304, !63, !161}
!456 = !{!457, !452, !458, !459}
!457 = !DILocalVariable(name: "session", arg: 1, scope: !453, file: !3, line: 1340, type: !304)
!458 = !DILocalVariable(name: "size", arg: 3, scope: !453, file: !3, line: 1340, type: !161)
!459 = !DILocalVariable(name: "local_sep", scope: !453, file: !3, line: 1342, type: !68)
!460 = !DILocation(line: 1340, column: 59, scope: !453, inlinedAt: !461)
!461 = distinct !DILocation(line: 1075, column: 5, scope: !433)
!462 = !DILocation(line: 1340, column: 71, scope: !453, inlinedAt: !461)
!463 = !DILocation(line: 1342, column: 57, scope: !453, inlinedAt: !461)
!464 = !{!386, !389, i64 60}
!465 = !DILocation(line: 1342, column: 22, scope: !453, inlinedAt: !461)
!466 = !DILocation(line: 1343, column: 16, scope: !453, inlinedAt: !461)
!467 = !DILocation(line: 1343, column: 22, scope: !453, inlinedAt: !461)
!468 = !DILocation(line: 1344, column: 16, scope: !453, inlinedAt: !461)
!469 = !{!470, !389, i64 0}
!470 = !{!"_avdtp_local_sep", !389, i64 0, !389, i64 4, !471, i64 8, !352, i64 10, !352, i64 10, !352, i64 11}
!471 = !{!"_seid_info", !352, i64 0, !352, i64 0, !352, i64 0, !352, i64 1, !352, i64 1, !352, i64 1}
!472 = !DILocation(line: 1344, column: 21, scope: !453, inlinedAt: !461)
!473 = !{!474, !389, i64 16}
!474 = !{!"_avdtp_sep_ind", !389, i64 0, !389, i64 4, !389, i64 8, !389, i64 12, !389, i64 16, !389, i64 20, !389, i64 24, !389, i64 28, !389, i64 32}
!475 = !DILocation(line: 1344, column: 64, scope: !453, inlinedAt: !461)
!476 = !DILocation(line: 1344, column: 5, scope: !453, inlinedAt: !461)
!477 = !DILocation(line: 1076, column: 1, scope: !433)
!478 = distinct !DISubprogram(name: "avdtp_close_req", scope: !3, file: !3, line: 1079, type: !302, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !479)
!479 = !{!480}
!480 = !DILocalVariable(name: "session", arg: 1, scope: !478, file: !3, line: 1079, type: !304)
!481 = !DILocation(line: 1079, column: 31, scope: !478)
!482 = !DILocation(line: 1082, column: 100, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 1082, column: 9)
!484 = !DILocation(line: 1082, column: 45, scope: !483)
!485 = !DILocation(line: 1082, column: 44, scope: !483)
!486 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !487)
!487 = distinct !DILocation(line: 1082, column: 9, scope: !483)
!488 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !487)
!489 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !487)
!490 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !487)
!491 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !487)
!492 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !487)
!493 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !487)
!494 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !487)
!495 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !487)
!496 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !487)
!497 = !DILocation(line: 1085, column: 1, scope: !478)
!498 = distinct !DISubprogram(name: "avdtp_abort_req", scope: !3, file: !3, line: 1088, type: !302, isLocal: false, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !499)
!499 = !{!500}
!500 = !DILocalVariable(name: "session", arg: 1, scope: !498, file: !3, line: 1088, type: !304)
!501 = !DILocation(line: 1088, column: 31, scope: !498)
!502 = !DILocation(line: 1090, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 1090, column: 5)
!504 = !DILocation(line: 1090, column: 5, scope: !498)
!505 = !DILocation(line: 1090, column: 5, scope: !506)
!506 = !DILexicalBlockFile(scope: !503, file: !3, discriminator: 1)
!507 = !DILocation(line: 1091, column: 100, scope: !508)
!508 = distinct !DILexicalBlock(scope: !498, file: !3, line: 1091, column: 9)
!509 = !DILocation(line: 1091, column: 45, scope: !508)
!510 = !DILocation(line: 1091, column: 44, scope: !508)
!511 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !512)
!512 = distinct !DILocation(line: 1091, column: 9, scope: !508)
!513 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !512)
!514 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !512)
!515 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !512)
!516 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !512)
!517 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !512)
!518 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !512)
!519 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !512)
!520 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !512)
!521 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !512)
!522 = !DILocation(line: 1094, column: 1, scope: !498)
!523 = distinct !DISubprogram(name: "avdtp_get_configuation_req", scope: !3, file: !3, line: 1097, type: !302, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !524)
!524 = !{!525}
!525 = !DILocalVariable(name: "session", arg: 1, scope: !523, file: !3, line: 1097, type: !304)
!526 = !DILocation(line: 1097, column: 42, scope: !523)
!527 = !DILocation(line: 1099, column: 112, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 1099, column: 9)
!529 = !DILocation(line: 1099, column: 57, scope: !528)
!530 = !DILocation(line: 1099, column: 56, scope: !528)
!531 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !532)
!532 = distinct !DILocation(line: 1099, column: 9, scope: !528)
!533 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !532)
!534 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !532)
!535 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !532)
!536 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !532)
!537 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !532)
!538 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !532)
!539 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !532)
!540 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !532)
!541 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !532)
!542 = !DILocation(line: 1102, column: 1, scope: !523)
!543 = distinct !DISubprogram(name: "avdtp_delay_report_req", scope: !3, file: !3, line: 1104, type: !302, isLocal: false, isDefinition: true, scopeLine: 1105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !544)
!544 = !{!545}
!545 = !DILocalVariable(name: "session", arg: 1, scope: !543, file: !3, line: 1104, type: !304)
!546 = !DILocation(line: 1104, column: 38, scope: !543)
!547 = !DILocation(line: 1107, column: 107, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !3, line: 1107, column: 9)
!549 = !DILocation(line: 1107, column: 52, scope: !548)
!550 = !DILocation(line: 1107, column: 51, scope: !548)
!551 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !552)
!552 = distinct !DILocation(line: 1107, column: 9, scope: !548)
!553 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !552)
!554 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !552)
!555 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !552)
!556 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !552)
!557 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !552)
!558 = !DILocation(line: 998, column: 9, scope: !559, inlinedAt: !552)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 997, column: 42)
!560 = distinct !DILexicalBlock(scope: !361, file: !3, line: 997, column: 9)
!561 = !DILocation(line: 998, column: 37, scope: !559, inlinedAt: !552)
!562 = !DILocation(line: 999, column: 9, scope: !559, inlinedAt: !552)
!563 = !DILocation(line: 999, column: 37, scope: !559, inlinedAt: !552)
!564 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !552)
!565 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !552)
!566 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !552)
!567 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !552)
!568 = !DILocation(line: 1110, column: 1, scope: !543)
!569 = distinct !DISubprogram(name: "avdtp_packet_handler", scope: !3, file: !3, line: 1410, type: !570, isLocal: false, isDefinition: true, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{!61, !304, !63, !103}
!572 = !{!573, !574, !575, !576}
!573 = !DILocalVariable(name: "session", arg: 1, scope: !569, file: !3, line: 1410, type: !304)
!574 = !DILocalVariable(name: "packet", arg: 2, scope: !569, file: !3, line: 1410, type: !63)
!575 = !DILocalVariable(name: "size", arg: 3, scope: !569, file: !3, line: 1410, type: !103)
!576 = !DILocalVariable(name: "in", scope: !569, file: !3, line: 1412, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_buf", file: !6, line: 305, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_in_buf", file: !6, line: 297, size: 1120, elements: !579)
!579 = !{!580, !581, !585, !586, !587, !588, !589}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "no_of_packets", scope: !578, file: !6, line: 298, baseType: !168, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !578, file: !6, line: 299, baseType: !582, size: 1024, offset: 32)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1024, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !578, file: !6, line: 300, baseType: !40, size: 8, offset: 1056)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !578, file: !6, line: 301, baseType: !40, size: 8, offset: 1064)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !578, file: !6, line: 302, baseType: !40, size: 8, offset: 1072)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "signal_id", scope: !578, file: !6, line: 303, baseType: !40, size: 8, offset: 1080)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !578, file: !6, line: 304, baseType: !40, size: 8, offset: 1088)
!590 = !DILocation(line: 1410, column: 36, scope: !569)
!591 = !DILocation(line: 1410, column: 49, scope: !569)
!592 = !DILocation(line: 1410, column: 61, scope: !569)
!593 = !DILocation(line: 1412, column: 5, scope: !569)
!594 = !DILocation(line: 1413, column: 5, scope: !569)
!595 = !DILocation(line: 1416, column: 43, scope: !569)
!596 = !DILocation(line: 1412, column: 12, scope: !569)
!597 = !DILocalVariable(name: "in", arg: 1, scope: !598, file: !3, line: 851, type: !602)
!598 = distinct !DISubprogram(name: "avdtp_parse_data", scope: !3, file: !3, line: 851, type: !599, isLocal: true, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !603)
!599 = !DISubroutineType(types: !600)
!600 = !{!601, !602, !62, !161}
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_parse_result", file: !6, line: 55, baseType: !14)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 32)
!603 = !{!597, !604, !605, !606, !607, !608, !609, !610}
!604 = !DILocalVariable(name: "buf", arg: 2, scope: !598, file: !3, line: 851, type: !62)
!605 = !DILocalVariable(name: "size", arg: 3, scope: !598, file: !3, line: 851, type: !161)
!606 = !DILocalVariable(name: "skip_size", scope: !598, file: !3, line: 853, type: !161)
!607 = !DILocalVariable(name: "payload_size", scope: !598, file: !3, line: 854, type: !161)
!608 = !DILocalVariable(name: "header", scope: !598, file: !3, line: 855, type: !213)
!609 = !DILocalVariable(name: "single", scope: !598, file: !3, line: 856, type: !220)
!610 = !DILocalVariable(name: "start", scope: !598, file: !3, line: 857, type: !229)
!611 = !DILocation(line: 851, column: 52, scope: !598, inlinedAt: !612)
!612 = distinct !DILocation(line: 1416, column: 13, scope: !569)
!613 = !DILocation(line: 851, column: 62, scope: !598, inlinedAt: !612)
!614 = !DILocation(line: 851, column: 71, scope: !598, inlinedAt: !612)
!615 = !DILocation(line: 859, column: 14, scope: !616, inlinedAt: !612)
!616 = distinct !DILexicalBlock(scope: !598, file: !3, line: 859, column: 9)
!617 = !DILocation(line: 859, column: 9, scope: !598, inlinedAt: !612)
!618 = !DILocation(line: 863, column: 21, scope: !598, inlinedAt: !612)
!619 = !DILocation(line: 863, column: 5, scope: !598, inlinedAt: !612)
!620 = !DILocation(line: 865, column: 18, scope: !621, inlinedAt: !612)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 865, column: 13)
!622 = distinct !DILexicalBlock(scope: !598, file: !3, line: 863, column: 34)
!623 = !DILocation(line: 865, column: 13, scope: !622, inlinedAt: !612)
!624 = !DILocation(line: 873, column: 13, scope: !622, inlinedAt: !612)
!625 = !DILocation(line: 873, column: 23, scope: !622, inlinedAt: !612)
!626 = !{!627, !352, i64 136}
!627 = !{!"_in_buf", !628, i64 0, !352, i64 4, !352, i64 132, !352, i64 133, !352, i64 134, !352, i64 135, !352, i64 136}
!628 = !{!"int", !352, i64 0}
!629 = !DILocation(line: 874, column: 13, scope: !622, inlinedAt: !612)
!630 = !DILocation(line: 874, column: 27, scope: !622, inlinedAt: !612)
!631 = !{!627, !628, i64 0}
!632 = !DILocation(line: 875, column: 36, scope: !622, inlinedAt: !612)
!633 = !DILocation(line: 875, column: 13, scope: !622, inlinedAt: !612)
!634 = !DILocation(line: 875, column: 26, scope: !622, inlinedAt: !612)
!635 = !{!627, !352, i64 134}
!636 = !DILocation(line: 876, column: 33, scope: !622, inlinedAt: !612)
!637 = !DILocation(line: 876, column: 13, scope: !622, inlinedAt: !612)
!638 = !DILocation(line: 876, column: 23, scope: !622, inlinedAt: !612)
!639 = !{!627, !352, i64 135}
!640 = !DILocation(line: 877, column: 35, scope: !622, inlinedAt: !612)
!641 = !DILocation(line: 877, column: 13, scope: !622, inlinedAt: !612)
!642 = !DILocation(line: 877, column: 25, scope: !622, inlinedAt: !612)
!643 = !{!627, !352, i64 133}
!644 = !DILocation(line: 853, column: 9, scope: !598, inlinedAt: !612)
!645 = !DILocation(line: 881, column: 9, scope: !622, inlinedAt: !612)
!646 = !DILocation(line: 886, column: 17, scope: !647, inlinedAt: !612)
!647 = distinct !DILexicalBlock(scope: !622, file: !3, line: 886, column: 13)
!648 = !DILocation(line: 889, column: 20, scope: !622, inlinedAt: !612)
!649 = !{!627, !352, i64 132}
!650 = !DILocation(line: 890, column: 13, scope: !622, inlinedAt: !612)
!651 = !DILocation(line: 890, column: 23, scope: !622, inlinedAt: !612)
!652 = !DILocation(line: 891, column: 35, scope: !622, inlinedAt: !612)
!653 = !DILocation(line: 891, column: 13, scope: !622, inlinedAt: !612)
!654 = !DILocation(line: 891, column: 25, scope: !622, inlinedAt: !612)
!655 = !DILocation(line: 892, column: 36, scope: !622, inlinedAt: !612)
!656 = !DILocation(line: 892, column: 13, scope: !622, inlinedAt: !612)
!657 = !DILocation(line: 892, column: 26, scope: !622, inlinedAt: !612)
!658 = !DILocation(line: 893, column: 36, scope: !622, inlinedAt: !612)
!659 = !{!660, !352, i64 1}
!660 = !{!"_avdtp_start_header", !352, i64 0, !352, i64 0, !352, i64 0, !352, i64 1, !352, i64 2, !352, i64 2}
!661 = !DILocation(line: 893, column: 29, scope: !622, inlinedAt: !612)
!662 = !DILocation(line: 893, column: 13, scope: !622, inlinedAt: !612)
!663 = !DILocation(line: 893, column: 27, scope: !622, inlinedAt: !612)
!664 = !DILocation(line: 894, column: 32, scope: !622, inlinedAt: !612)
!665 = !DILocation(line: 894, column: 13, scope: !622, inlinedAt: !612)
!666 = !DILocation(line: 894, column: 23, scope: !622, inlinedAt: !612)
!667 = !DILocation(line: 898, column: 9, scope: !622, inlinedAt: !612)
!668 = !DILocation(line: 953, column: 13, scope: !669, inlinedAt: !612)
!669 = distinct !DILexicalBlock(scope: !598, file: !3, line: 953, column: 9)
!670 = !DILocation(line: 944, column: 25, scope: !598, inlinedAt: !612)
!671 = !DILocation(line: 854, column: 9, scope: !598, inlinedAt: !612)
!672 = !DILocation(line: 946, column: 13, scope: !673, inlinedAt: !612)
!673 = distinct !DILexicalBlock(scope: !598, file: !3, line: 946, column: 9)
!674 = !DILocation(line: 946, column: 38, scope: !673, inlinedAt: !612)
!675 = !DILocation(line: 946, column: 9, scope: !598, inlinedAt: !612)
!676 = !DILocation(line: 950, column: 20, scope: !598, inlinedAt: !612)
!677 = !DILocation(line: 950, column: 47, scope: !598, inlinedAt: !612)
!678 = !DILocation(line: 950, column: 5, scope: !598, inlinedAt: !612)
!679 = !DILocation(line: 951, column: 19, scope: !598, inlinedAt: !612)
!680 = !DILocation(line: 953, column: 27, scope: !669, inlinedAt: !612)
!681 = !DILocation(line: 953, column: 9, scope: !598, inlinedAt: !612)
!682 = !DILocation(line: 954, column: 26, scope: !683, inlinedAt: !612)
!683 = distinct !DILexicalBlock(scope: !669, file: !3, line: 953, column: 32)
!684 = !DILocation(line: 1422, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1416, column: 50)
!686 = !DILocation(line: 958, column: 9, scope: !598, inlinedAt: !612)
!687 = !DILocation(line: 958, column: 16, scope: !598, inlinedAt: !612)
!688 = !DILocation(line: 1428, column: 12, scope: !689)
!689 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1428, column: 9)
!690 = !DILocation(line: 1428, column: 9, scope: !689)
!691 = !DILocation(line: 1428, column: 9, scope: !569)
!692 = !DILocalVariable(name: "session", arg: 1, scope: !693, file: !3, line: 783, type: !304)
!693 = distinct !DISubprogram(name: "avdtp_parse_cmd", scope: !3, file: !3, line: 783, type: !694, isLocal: true, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!61, !304, !602}
!696 = !{!692, !697, !698, !699, !700, !701}
!697 = !DILocalVariable(name: "in", arg: 2, scope: !693, file: !3, line: 783, type: !602)
!698 = !DILocalVariable(name: "transaction", scope: !693, file: !3, line: 785, type: !40)
!699 = !DILocalVariable(name: "signal_id", scope: !693, file: !3, line: 786, type: !40)
!700 = !DILocalVariable(name: "buf", scope: !693, file: !3, line: 787, type: !62)
!701 = !DILocalVariable(name: "size", scope: !693, file: !3, line: 788, type: !168)
!702 = !DILocation(line: 783, column: 38, scope: !693, inlinedAt: !703)
!703 = distinct !DILocation(line: 1429, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 1429, column: 13)
!705 = distinct !DILexicalBlock(scope: !689, file: !3, line: 1428, column: 52)
!706 = !DILocation(line: 783, column: 55, scope: !693, inlinedAt: !703)
!707 = !DILocation(line: 785, column: 26, scope: !693, inlinedAt: !703)
!708 = !DILocation(line: 785, column: 8, scope: !693, inlinedAt: !703)
!709 = !DILocation(line: 786, column: 24, scope: !693, inlinedAt: !703)
!710 = !DILocation(line: 786, column: 8, scope: !693, inlinedAt: !703)
!711 = !DILocation(line: 787, column: 11, scope: !693, inlinedAt: !703)
!712 = !DILocation(line: 788, column: 16, scope: !693, inlinedAt: !703)
!713 = !DILocation(line: 788, column: 9, scope: !693, inlinedAt: !703)
!714 = !DILocation(line: 790, column: 13, scope: !693, inlinedAt: !703)
!715 = !DILocation(line: 790, column: 5, scope: !693, inlinedAt: !703)
!716 = !DILocation(line: 794, column: 16, scope: !717, inlinedAt: !703)
!717 = distinct !DILexicalBlock(scope: !693, file: !3, line: 790, column: 24)
!718 = !DILocation(line: 794, column: 9, scope: !717, inlinedAt: !703)
!719 = !DILocation(line: 798, column: 55, scope: !717, inlinedAt: !703)
!720 = !DILocation(line: 798, column: 16, scope: !717, inlinedAt: !703)
!721 = !DILocation(line: 798, column: 9, scope: !717, inlinedAt: !703)
!722 = !DILocation(line: 802, column: 55, scope: !717, inlinedAt: !703)
!723 = !DILocation(line: 802, column: 16, scope: !717, inlinedAt: !703)
!724 = !DILocation(line: 802, column: 9, scope: !717, inlinedAt: !703)
!725 = !DILocation(line: 806, column: 16, scope: !717, inlinedAt: !703)
!726 = !DILocation(line: 806, column: 9, scope: !717, inlinedAt: !703)
!727 = !DILocation(line: 810, column: 56, scope: !717, inlinedAt: !703)
!728 = !DILocation(line: 810, column: 16, scope: !717, inlinedAt: !703)
!729 = !DILocation(line: 810, column: 9, scope: !717, inlinedAt: !703)
!730 = !DILocation(line: 814, column: 16, scope: !717, inlinedAt: !703)
!731 = !DILocation(line: 814, column: 9, scope: !717, inlinedAt: !703)
!732 = !DILocation(line: 818, column: 53, scope: !717, inlinedAt: !703)
!733 = !DILocation(line: 818, column: 16, scope: !717, inlinedAt: !703)
!734 = !DILocation(line: 818, column: 9, scope: !717, inlinedAt: !703)
!735 = !DILocation(line: 820, column: 9, scope: !736, inlinedAt: !703)
!736 = distinct !DILexicalBlock(scope: !717, file: !3, line: 820, column: 9)
!737 = !DILocation(line: 820, column: 9, scope: !717, inlinedAt: !703)
!738 = !DILocation(line: 820, column: 9, scope: !739, inlinedAt: !703)
!739 = !DILexicalBlockFile(scope: !736, file: !3, discriminator: 1)
!740 = !DILocation(line: 822, column: 54, scope: !717, inlinedAt: !703)
!741 = !DILocation(line: 822, column: 16, scope: !717, inlinedAt: !703)
!742 = !DILocation(line: 822, column: 9, scope: !717, inlinedAt: !703)
!743 = !DILocation(line: 824, column: 9, scope: !744, inlinedAt: !703)
!744 = distinct !DILexicalBlock(scope: !717, file: !3, line: 824, column: 9)
!745 = !DILocation(line: 824, column: 9, scope: !717, inlinedAt: !703)
!746 = !DILocation(line: 824, column: 9, scope: !747, inlinedAt: !703)
!747 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!748 = !DILocation(line: 826, column: 54, scope: !717, inlinedAt: !703)
!749 = !DILocation(line: 826, column: 16, scope: !717, inlinedAt: !703)
!750 = !DILocation(line: 826, column: 9, scope: !717, inlinedAt: !703)
!751 = !DILocation(line: 828, column: 9, scope: !752, inlinedAt: !703)
!752 = distinct !DILexicalBlock(scope: !717, file: !3, line: 828, column: 9)
!753 = !DILocation(line: 828, column: 9, scope: !717, inlinedAt: !703)
!754 = !DILocation(line: 828, column: 9, scope: !755, inlinedAt: !703)
!755 = !DILexicalBlockFile(scope: !752, file: !3, discriminator: 1)
!756 = !DILocation(line: 830, column: 56, scope: !717, inlinedAt: !703)
!757 = !DILocation(line: 830, column: 16, scope: !717, inlinedAt: !703)
!758 = !DILocation(line: 830, column: 9, scope: !717, inlinedAt: !703)
!759 = !DILocation(line: 832, column: 9, scope: !760, inlinedAt: !703)
!760 = distinct !DILexicalBlock(scope: !717, file: !3, line: 832, column: 9)
!761 = !DILocation(line: 832, column: 9, scope: !717, inlinedAt: !703)
!762 = !DILocation(line: 832, column: 9, scope: !763, inlinedAt: !703)
!763 = !DILexicalBlockFile(scope: !760, file: !3, discriminator: 1)
!764 = !DILocation(line: 834, column: 54, scope: !717, inlinedAt: !703)
!765 = !DILocation(line: 834, column: 16, scope: !717, inlinedAt: !703)
!766 = !DILocation(line: 834, column: 9, scope: !717, inlinedAt: !703)
!767 = !DILocation(line: 844, column: 9, scope: !768, inlinedAt: !703)
!768 = distinct !DILexicalBlock(scope: !717, file: !3, line: 844, column: 9)
!769 = !DILocation(line: 844, column: 9, scope: !717, inlinedAt: !703)
!770 = !DILocation(line: 844, column: 9, scope: !771, inlinedAt: !703)
!771 = !DILexicalBlockFile(scope: !768, file: !3, discriminator: 1)
!772 = !DILocation(line: 165, column: 5, scope: !773, inlinedAt: !783)
!773 = distinct !DISubprogram(name: "avdtp_unknown_cmd", scope: !3, file: !3, line: 157, type: !774, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!61, !304, !40, !40}
!776 = !{!777, !778, !779, !780, !781, !782}
!777 = !DILocalVariable(name: "session", arg: 1, scope: !773, file: !3, line: 157, type: !304)
!778 = !DILocalVariable(name: "transaction", arg: 2, scope: !773, file: !3, line: 157, type: !40)
!779 = !DILocalVariable(name: "signal_id", arg: 3, scope: !773, file: !3, line: 157, type: !40)
!780 = !DILocalVariable(name: "send_buf_ptr", scope: !773, file: !3, line: 161, type: !370)
!781 = !DILocalVariable(name: "t_send", scope: !773, file: !3, line: 165, type: !371)
!782 = !DILocalVariable(name: "send", scope: !773, file: !3, line: 169, type: !63)
!783 = distinct !DILocation(line: 845, column: 16, scope: !717, inlinedAt: !703)
!784 = !DILocation(line: 161, column: 22, scope: !773, inlinedAt: !783)
!785 = !DILocation(line: 168, column: 5, scope: !773, inlinedAt: !783)
!786 = !DILocation(line: 169, column: 16, scope: !773, inlinedAt: !783)
!787 = !DILocation(line: 169, column: 9, scope: !773, inlinedAt: !783)
!788 = !DILocation(line: 172, column: 9, scope: !789, inlinedAt: !783)
!789 = distinct !DILexicalBlock(scope: !773, file: !3, line: 172, column: 9)
!790 = !DILocation(line: 172, column: 9, scope: !773, inlinedAt: !783)
!791 = !DILocation(line: 180, column: 42, scope: !792, inlinedAt: !783)
!792 = distinct !DILexicalBlock(scope: !773, file: !3, line: 180, column: 9)
!793 = !{!386, !390, i64 66}
!794 = !DILocalVariable(name: "channel", arg: 1, scope: !795, file: !3, line: 49, type: !103)
!795 = distinct !DISubprogram(name: "try_send", scope: !3, file: !3, line: 49, type: !796, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{!61, !103, !62, !161}
!798 = !{!794, !799, !800, !801}
!799 = !DILocalVariable(name: "data", arg: 2, scope: !795, file: !3, line: 49, type: !62)
!800 = !DILocalVariable(name: "len", arg: 3, scope: !795, file: !3, line: 49, type: !161)
!801 = !DILocalVariable(name: "err", scope: !795, file: !3, line: 51, type: !168)
!802 = !DILocation(line: 49, column: 26, scope: !795, inlinedAt: !803)
!803 = distinct !DILocation(line: 180, column: 10, scope: !792, inlinedAt: !783)
!804 = !DILocation(line: 49, column: 41, scope: !795, inlinedAt: !803)
!805 = !DILocation(line: 49, column: 51, scope: !795, inlinedAt: !803)
!806 = !DILocation(line: 55, column: 11, scope: !795, inlinedAt: !803)
!807 = !DILocation(line: 51, column: 9, scope: !795, inlinedAt: !803)
!808 = !DILocation(line: 58, column: 16, scope: !795, inlinedAt: !803)
!809 = !DILocation(line: 180, column: 9, scope: !773, inlinedAt: !783)
!810 = !DILocation(line: 184, column: 9, scope: !811, inlinedAt: !783)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 184, column: 9)
!812 = distinct !DILexicalBlock(scope: !792, file: !3, line: 180, column: 61)
!813 = !DILocation(line: 184, column: 9, scope: !812, inlinedAt: !783)
!814 = !DILocation(line: 184, column: 9, scope: !815, inlinedAt: !783)
!815 = !DILexicalBlockFile(scope: !811, file: !3, discriminator: 1)
!816 = !DILocation(line: 189, column: 1, scope: !773, inlinedAt: !783)
!817 = !DILocation(line: 845, column: 9, scope: !717, inlinedAt: !703)
!818 = !DILocation(line: 1430, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1429, column: 45)
!820 = !DILocation(line: 1436, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1436, column: 9)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 1435, column: 51)
!823 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1435, column: 9)
!824 = !DILocation(line: 1436, column: 9, scope: !822)
!825 = !DILocation(line: 1436, column: 9, scope: !826)
!826 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 1)
!827 = !DILocation(line: 1440, column: 26, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1440, column: 13)
!829 = !DILocation(line: 1440, column: 13, scope: !822)
!830 = !DILocation(line: 1445, column: 45, scope: !569)
!831 = !DILocation(line: 1445, column: 64, scope: !569)
!832 = !DILocalVariable(name: "session", arg: 1, scope: !833, file: !3, line: 1351, type: !304)
!833 = distinct !DISubprogram(name: "avdtp_parse_response", scope: !3, file: !3, line: 1351, type: !834, isLocal: true, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!61, !304, !40, !63, !161}
!836 = !{!832, !837, !838, !839, !840}
!837 = !DILocalVariable(name: "signal_id", arg: 2, scope: !833, file: !3, line: 1351, type: !40)
!838 = !DILocalVariable(name: "packet", arg: 3, scope: !833, file: !3, line: 1351, type: !63)
!839 = !DILocalVariable(name: "size", arg: 4, scope: !833, file: !3, line: 1351, type: !161)
!840 = !DILocalVariable(name: "res", scope: !833, file: !3, line: 1353, type: !61)
!841 = !DILocation(line: 1351, column: 44, scope: !833, inlinedAt: !842)
!842 = distinct !DILocation(line: 1445, column: 12, scope: !569)
!843 = !DILocation(line: 1351, column: 56, scope: !833, inlinedAt: !842)
!844 = !DILocation(line: 1351, column: 71, scope: !833, inlinedAt: !842)
!845 = !DILocation(line: 1351, column: 83, scope: !833, inlinedAt: !842)
!846 = !DILocation(line: 1355, column: 32, scope: !847, inlinedAt: !842)
!847 = distinct !DILexicalBlock(scope: !833, file: !3, line: 1355, column: 9)
!848 = !DILocation(line: 1355, column: 44, scope: !847, inlinedAt: !842)
!849 = !DILocation(line: 1355, column: 9, scope: !833, inlinedAt: !842)
!850 = !DILocation(line: 1362, column: 5, scope: !833, inlinedAt: !842)
!851 = !DILocalVariable(name: "get_all", arg: 4, scope: !852, file: !3, line: 1112, type: !61)
!852 = distinct !DISubprogram(name: "avdtp_discover_response", scope: !3, file: !3, line: 1112, type: !853, isLocal: true, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!61, !304, !289, !161, !61}
!855 = !{!856, !857, !858, !851, !859, !860}
!856 = !DILocalVariable(name: "session", arg: 1, scope: !852, file: !3, line: 1112, type: !304)
!857 = !DILocalVariable(name: "resp", arg: 2, scope: !852, file: !3, line: 1112, type: !289)
!858 = !DILocalVariable(name: "size", arg: 3, scope: !852, file: !3, line: 1112, type: !161)
!859 = !DILocalVariable(name: "i", scope: !852, file: !3, line: 1114, type: !161)
!860 = !DILocalVariable(name: "sep_count", scope: !852, file: !3, line: 1115, type: !161)
!861 = !DILocation(line: 1112, column: 88, scope: !852, inlinedAt: !862)
!862 = distinct !DILocation(line: 1365, column: 15, scope: !863, inlinedAt: !842)
!863 = distinct !DILexicalBlock(scope: !833, file: !3, line: 1362, column: 49)
!864 = !DILocation(line: 1117, column: 28, scope: !852, inlinedAt: !862)
!865 = !DILocation(line: 1117, column: 41, scope: !852, inlinedAt: !862)
!866 = !DILocation(line: 1118, column: 41, scope: !852, inlinedAt: !862)
!867 = !DILocation(line: 1119, column: 5, scope: !852, inlinedAt: !862)
!868 = !DILocation(line: 1121, column: 22, scope: !852, inlinedAt: !862)
!869 = !DILocation(line: 1115, column: 9, scope: !852, inlinedAt: !862)
!870 = !DILocation(line: 1114, column: 9, scope: !852, inlinedAt: !862)
!871 = !DILocation(line: 1123, column: 19, scope: !872, inlinedAt: !862)
!872 = !DILexicalBlockFile(scope: !873, file: !3, discriminator: 1)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 1123, column: 5)
!874 = distinct !DILexicalBlock(scope: !852, file: !3, line: 1123, column: 5)
!875 = !DILocation(line: 1123, column: 5, scope: !876, inlinedAt: !862)
!876 = !DILexicalBlockFile(scope: !874, file: !3, discriminator: 1)
!877 = !DILocation(line: 1365, column: 48, scope: !863, inlinedAt: !842)
!878 = !DILocation(line: 1124, column: 19, scope: !879, inlinedAt: !862)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1124, column: 13)
!880 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1123, column: 45)
!881 = !DILocation(line: 1124, column: 30, scope: !879, inlinedAt: !862)
!882 = !DILocation(line: 1124, column: 13, scope: !880, inlinedAt: !862)
!883 = !DILocation(line: 1127, column: 36, scope: !884, inlinedAt: !862)
!884 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1127, column: 13)
!885 = !DILocation(line: 1127, column: 13, scope: !880, inlinedAt: !862)
!886 = !DILocation(line: 1128, column: 17, scope: !887, inlinedAt: !862)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1127, column: 55)
!888 = !DILocation(line: 1132, column: 17, scope: !889, inlinedAt: !862)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 1131, column: 64)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1131, column: 20)
!891 = !DILocation(line: 1136, column: 13, scope: !892, inlinedAt: !862)
!892 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1136, column: 13)
!893 = !DILocation(line: 1136, column: 13, scope: !880, inlinedAt: !862)
!894 = !DILocation(line: 1140, column: 76, scope: !880, inlinedAt: !862)
!895 = !DILocation(line: 1140, column: 80, scope: !880, inlinedAt: !862)
!896 = !DILocation(line: 1140, column: 89, scope: !880, inlinedAt: !862)
!897 = !DILocation(line: 1141, column: 5, scope: !880, inlinedAt: !862)
!898 = !DILocation(line: 1123, column: 33, scope: !899, inlinedAt: !862)
!899 = !DILexicalBlockFile(scope: !873, file: !3, discriminator: 2)
!900 = !DILocation(line: 1123, column: 41, scope: !899, inlinedAt: !862)
!901 = !DILocation(line: 1112, column: 67, scope: !852, inlinedAt: !862)
!902 = distinct !{!902, !903, !904}
!903 = !DILocation(line: 1123, column: 5, scope: !874)
!904 = !DILocation(line: 1141, column: 5, scope: !874)
!905 = !DILocation(line: 1143, column: 32, scope: !906, inlinedAt: !862)
!906 = distinct !DILexicalBlock(scope: !852, file: !3, line: 1143, column: 9)
!907 = !DILocation(line: 1143, column: 9, scope: !906, inlinedAt: !862)
!908 = !DILocation(line: 1143, column: 9, scope: !852, inlinedAt: !862)
!909 = !DILocation(line: 1017, column: 57, scope: !910, inlinedAt: !914)
!910 = distinct !DISubprogram(name: "finalize_discovery", scope: !3, file: !3, line: 1015, type: !302, isLocal: true, isDefinition: true, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !911)
!911 = !{!912, !913}
!912 = !DILocalVariable(name: "session", arg: 1, scope: !910, file: !3, line: 1015, type: !304)
!913 = !DILocalVariable(name: "local_sep", scope: !910, file: !3, line: 1017, type: !68)
!914 = distinct !DILocation(line: 1403, column: 9, scope: !915, inlinedAt: !842)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 1401, column: 15)
!916 = distinct !DILexicalBlock(scope: !833, file: !3, line: 1401, column: 9)
!917 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !918)
!918 = distinct !DILocation(line: 1150, column: 17, scope: !919, inlinedAt: !862)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1150, column: 17)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1149, column: 16)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1144, column: 13)
!922 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1143, column: 46)
!923 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !918)
!924 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !918)
!925 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !918)
!926 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !918)
!927 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !918)
!928 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !918)
!929 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !918)
!930 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !918)
!931 = !DILocation(line: 1152, column: 17, scope: !932, inlinedAt: !862)
!932 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1151, column: 91)
!933 = !DILocation(line: 1369, column: 15, scope: !863, inlinedAt: !842)
!934 = !DILocation(line: 1353, column: 11, scope: !833, inlinedAt: !842)
!935 = !DILocation(line: 1370, column: 9, scope: !863, inlinedAt: !842)
!936 = !DILocation(line: 1373, column: 15, scope: !863, inlinedAt: !842)
!937 = !DILocation(line: 1374, column: 9, scope: !863, inlinedAt: !842)
!938 = !DILocalVariable(name: "packet", arg: 2, scope: !939, file: !3, line: 1292, type: !63)
!939 = distinct !DISubprogram(name: "avdtp_set_configuation_response", scope: !3, file: !3, line: 1292, type: !454, isLocal: true, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !940)
!940 = !{!941, !938, !942, !943}
!941 = !DILocalVariable(name: "session", arg: 1, scope: !939, file: !3, line: 1292, type: !304)
!942 = !DILocalVariable(name: "size", arg: 3, scope: !939, file: !3, line: 1292, type: !161)
!943 = !DILocalVariable(name: "conn", scope: !939, file: !3, line: 1295, type: !20)
!944 = !DILocation(line: 1292, column: 68, scope: !939, inlinedAt: !945)
!945 = distinct !DILocation(line: 1377, column: 15, scope: !863, inlinedAt: !842)
!946 = !DILocation(line: 1292, column: 80, scope: !939, inlinedAt: !945)
!947 = !DILocation(line: 1295, column: 30, scope: !939, inlinedAt: !945)
!948 = !DILocation(line: 1296, column: 32, scope: !949, inlinedAt: !945)
!949 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1296, column: 9)
!950 = !DILocation(line: 1296, column: 43, scope: !949, inlinedAt: !945)
!951 = !DILocation(line: 1297, column: 9, scope: !949, inlinedAt: !945)
!952 = !DILocation(line: 1299, column: 9, scope: !953, inlinedAt: !945)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 1299, column: 9)
!954 = distinct !DILexicalBlock(scope: !949, file: !3, line: 1297, column: 79)
!955 = !DILocation(line: 1299, column: 9, scope: !954, inlinedAt: !945)
!956 = !DILocation(line: 1299, column: 9, scope: !957, inlinedAt: !945)
!957 = !DILexicalBlockFile(scope: !953, file: !3, discriminator: 1)
!958 = !DILocation(line: 1300, column: 42, scope: !954, inlinedAt: !945)
!959 = !DILocation(line: 1300, column: 9, scope: !954, inlinedAt: !945)
!960 = !DILocation(line: 1301, column: 9, scope: !954, inlinedAt: !945)
!961 = !DILocation(line: 1303, column: 45, scope: !939, inlinedAt: !945)
!962 = !DILocation(line: 1304, column: 28, scope: !939, inlinedAt: !945)
!963 = !DILocation(line: 1304, column: 44, scope: !939, inlinedAt: !945)
!964 = !DILocation(line: 1304, column: 50, scope: !939, inlinedAt: !945)
!965 = !DILocation(line: 1307, column: 81, scope: !939, inlinedAt: !945)
!966 = !DILocation(line: 1307, column: 26, scope: !939, inlinedAt: !945)
!967 = !DILocation(line: 1307, column: 25, scope: !939, inlinedAt: !945)
!968 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !969)
!969 = distinct !DILocation(line: 1306, column: 12, scope: !939, inlinedAt: !945)
!970 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !969)
!971 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !969)
!972 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !969)
!973 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !969)
!974 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !969)
!975 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !969)
!976 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !969)
!977 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !969)
!978 = !DILocation(line: 1306, column: 5, scope: !939, inlinedAt: !945)
!979 = !DILocalVariable(name: "packet", arg: 2, scope: !980, file: !3, line: 1311, type: !63)
!980 = distinct !DISubprogram(name: "avdtp_open_response", scope: !3, file: !3, line: 1311, type: !454, isLocal: true, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !981)
!981 = !{!982, !979, !983, !984}
!982 = !DILocalVariable(name: "session", arg: 1, scope: !980, file: !3, line: 1311, type: !304)
!983 = !DILocalVariable(name: "size", arg: 3, scope: !980, file: !3, line: 1311, type: !161)
!984 = !DILocalVariable(name: "local_sep", scope: !980, file: !3, line: 1313, type: !68)
!985 = !DILocation(line: 1311, column: 56, scope: !980, inlinedAt: !986)
!986 = distinct !DILocation(line: 1381, column: 15, scope: !863, inlinedAt: !842)
!987 = !DILocation(line: 1311, column: 68, scope: !980, inlinedAt: !986)
!988 = !DILocation(line: 1313, column: 57, scope: !980, inlinedAt: !986)
!989 = !DILocation(line: 1313, column: 22, scope: !980, inlinedAt: !986)
!990 = !DILocation(line: 1317, column: 16, scope: !980, inlinedAt: !986)
!991 = !DILocation(line: 1317, column: 21, scope: !980, inlinedAt: !986)
!992 = !{!474, !389, i64 8}
!993 = !DILocation(line: 1317, column: 61, scope: !980, inlinedAt: !986)
!994 = !DILocation(line: 1317, column: 5, scope: !980, inlinedAt: !986)
!995 = !DILocation(line: 1320, column: 16, scope: !980, inlinedAt: !986)
!996 = !DILocation(line: 1320, column: 22, scope: !980, inlinedAt: !986)
!997 = !DILocation(line: 1382, column: 9, scope: !863, inlinedAt: !842)
!998 = !DILocalVariable(name: "packet", arg: 2, scope: !999, file: !3, line: 1327, type: !63)
!999 = distinct !DISubprogram(name: "avdtp_start_response", scope: !3, file: !3, line: 1327, type: !454, isLocal: true, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1000)
!1000 = !{!1001, !998, !1002, !1003}
!1001 = !DILocalVariable(name: "session", arg: 1, scope: !999, file: !3, line: 1327, type: !304)
!1002 = !DILocalVariable(name: "size", arg: 3, scope: !999, file: !3, line: 1327, type: !161)
!1003 = !DILocalVariable(name: "local_sep", scope: !999, file: !3, line: 1329, type: !68)
!1004 = !DILocation(line: 1327, column: 57, scope: !999, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 1385, column: 15, scope: !863, inlinedAt: !842)
!1006 = !DILocation(line: 1327, column: 69, scope: !999, inlinedAt: !1005)
!1007 = !DILocation(line: 1329, column: 57, scope: !999, inlinedAt: !1005)
!1008 = !DILocation(line: 1329, column: 22, scope: !999, inlinedAt: !1005)
!1009 = !DILocation(line: 1331, column: 16, scope: !999, inlinedAt: !1005)
!1010 = !DILocation(line: 1331, column: 21, scope: !999, inlinedAt: !1005)
!1011 = !{!474, !389, i64 12}
!1012 = !DILocation(line: 1331, column: 62, scope: !999, inlinedAt: !1005)
!1013 = !DILocation(line: 1331, column: 5, scope: !999, inlinedAt: !1005)
!1014 = !DILocation(line: 1333, column: 16, scope: !999, inlinedAt: !1005)
!1015 = !DILocation(line: 1333, column: 22, scope: !999, inlinedAt: !1005)
!1016 = !DILocation(line: 1386, column: 9, scope: !863, inlinedAt: !842)
!1017 = !DILocation(line: 1394, column: 9, scope: !1018, inlinedAt: !842)
!1018 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1394, column: 9)
!1019 = !DILocation(line: 1394, column: 9, scope: !863, inlinedAt: !842)
!1020 = !DILocation(line: 1394, column: 9, scope: !1021, inlinedAt: !842)
!1021 = !DILexicalBlockFile(scope: !1018, file: !3, discriminator: 1)
!1022 = !DILocation(line: 1401, column: 9, scope: !833, inlinedAt: !842)
!1023 = !DILocation(line: 1015, column: 41, scope: !910, inlinedAt: !914)
!1024 = !DILocation(line: 1017, column: 22, scope: !910, inlinedAt: !914)
!1025 = !DILocation(line: 1019, column: 5, scope: !1026, inlinedAt: !914)
!1026 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1019, column: 5)
!1027 = !DILocation(line: 1019, column: 5, scope: !910, inlinedAt: !914)
!1028 = !DILocation(line: 1019, column: 5, scope: !1029, inlinedAt: !914)
!1029 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1030 = !DILocation(line: 1020, column: 9, scope: !1031, inlinedAt: !914)
!1031 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1020, column: 9)
!1032 = !DILocation(line: 1020, column: 9, scope: !910, inlinedAt: !914)
!1033 = !DILocation(line: 1021, column: 100, scope: !1034, inlinedAt: !914)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 1020, column: 20)
!1035 = !DILocation(line: 1021, column: 45, scope: !1034, inlinedAt: !914)
!1036 = !DILocation(line: 1021, column: 44, scope: !1034, inlinedAt: !914)
!1037 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 1021, column: 9, scope: !1034, inlinedAt: !914)
!1039 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !1038)
!1040 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !1038)
!1041 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !1038)
!1042 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !1038)
!1043 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !1038)
!1044 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !1038)
!1045 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !1038)
!1046 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !1038)
!1047 = !DILocation(line: 1022, column: 20, scope: !1034, inlinedAt: !914)
!1048 = !DILocation(line: 1022, column: 25, scope: !1034, inlinedAt: !914)
!1049 = !{!474, !389, i64 24}
!1050 = !DILocation(line: 1022, column: 9, scope: !1034, inlinedAt: !914)
!1051 = !DILocation(line: 1023, column: 5, scope: !1034, inlinedAt: !914)
!1052 = !DILocation(line: 1029, column: 62, scope: !1053, inlinedAt: !914)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 1028, column: 9)
!1054 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 1023, column: 12)
!1055 = !DILocation(line: 1029, column: 13, scope: !1053, inlinedAt: !914)
!1056 = !DILocation(line: 1446, column: 1, scope: !569)
!1057 = distinct !DISubprogram(name: "avdtp_sep_init", scope: !3, file: !3, line: 1449, type: !1058, isLocal: false, isDefinition: true, scopeLine: 1450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1063)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !304, !168, !1060, !40}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_sep_ind", file: !6, line: 364, baseType: !55)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069}
!1064 = !DILocalVariable(name: "session", arg: 1, scope: !1057, file: !3, line: 1449, type: !304)
!1065 = !DILocalVariable(name: "type", arg: 2, scope: !1057, file: !3, line: 1449, type: !168)
!1066 = !DILocalVariable(name: "sep_ind", arg: 3, scope: !1057, file: !3, line: 1449, type: !1060)
!1067 = !DILocalVariable(name: "codec_type", arg: 4, scope: !1057, file: !3, line: 1449, type: !40)
!1068 = !DILocalVariable(name: "i", scope: !1057, file: !3, line: 1451, type: !168)
!1069 = !DILocalVariable(name: "sep", scope: !1057, file: !3, line: 1454, type: !68)
!1070 = !DILocation(line: 1449, column: 30, scope: !1057)
!1071 = !DILocation(line: 1449, column: 43, scope: !1057)
!1072 = !DILocation(line: 1449, column: 70, scope: !1057)
!1073 = !DILocation(line: 1449, column: 82, scope: !1057)
!1074 = !DILocation(line: 1451, column: 9, scope: !1057)
!1075 = !DILocation(line: 1456, column: 5, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 1456, column: 5)
!1077 = !DILocation(line: 1454, column: 22, scope: !1057)
!1078 = !DILocation(line: 1456, column: 5, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1080, file: !3, discriminator: 1)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 1456, column: 5)
!1081 = !DILocation(line: 1456, column: 5, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1076, file: !3, discriminator: 1)
!1083 = !DILocation(line: 1457, column: 23, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 1457, column: 13)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1456, column: 28)
!1086 = !DILocation(line: 1457, column: 28, scope: !1084)
!1087 = !DILocation(line: 1457, column: 13, scope: !1085)
!1088 = !DILocation(line: 1458, column: 30, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1457, column: 34)
!1090 = !DILocation(line: 1458, column: 28, scope: !1089)
!1091 = !DILocation(line: 1459, column: 30, scope: !1089)
!1092 = !DILocation(line: 1459, column: 28, scope: !1089)
!1093 = !DILocation(line: 1460, column: 34, scope: !1089)
!1094 = !DILocation(line: 1461, column: 18, scope: !1089)
!1095 = !DILocation(line: 1461, column: 22, scope: !1089)
!1096 = !DILocation(line: 1462, column: 18, scope: !1089)
!1097 = !DILocation(line: 1462, column: 26, scope: !1089)
!1098 = !{!470, !389, i64 4}
!1099 = !DILocation(line: 1463, column: 18, scope: !1089)
!1100 = !DILocation(line: 1463, column: 29, scope: !1089)
!1101 = !DILocation(line: 1464, column: 13, scope: !1089)
!1102 = !DILocation(line: 1456, column: 5, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1080, file: !3, discriminator: 2)
!1104 = distinct !{!1104, !1075, !1105}
!1105 = !DILocation(line: 1468, column: 5, scope: !1076)
!1106 = !DILocation(line: 1469, column: 1, scope: !1057)
!1107 = distinct !DISubprogram(name: "find_local_sep_for_tws", scope: !3, file: !3, line: 1473, type: !302, isLocal: false, isDefinition: true, scopeLine: 1474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1108)
!1108 = !{!1109, !1110}
!1109 = !DILocalVariable(name: "session", arg: 1, scope: !1107, file: !3, line: 1473, type: !304)
!1110 = !DILocalVariable(name: "sep", scope: !1107, file: !3, line: 1475, type: !68)
!1111 = !DILocation(line: 1473, column: 38, scope: !1107)
!1112 = !DILocation(line: 1477, column: 32, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1477, column: 9)
!1114 = !DILocation(line: 1477, column: 42, scope: !1113)
!1115 = !{!386, !352, i64 64}
!1116 = !DILocation(line: 1477, column: 9, scope: !1107)
!1117 = !DILocation(line: 1488, column: 5, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1488, column: 5)
!1119 = !DILocation(line: 1475, column: 22, scope: !1107)
!1120 = !DILocation(line: 1488, column: 5, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 1)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1488, column: 5)
!1123 = !DILocation(line: 1488, column: 5, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1118, file: !3, discriminator: 1)
!1125 = distinct !{!1125, !1117, !1126}
!1126 = !DILocation(line: 1493, column: 5, scope: !1118)
!1127 = !DILocation(line: 1489, column: 45, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1488, column: 28)
!1129 = !DILocation(line: 1490, column: 17, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 1490, column: 13)
!1131 = !DILocation(line: 1488, column: 5, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 2)
!1133 = !DILocation(line: 1490, column: 13, scope: !1128)
!1134 = !DILocation(line: 1495, column: 5, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1136, file: !3, discriminator: 1)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1495, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1495, column: 5)
!1138 = !{!628, !628, i64 0}
!1139 = !DILocation(line: 1495, column: 5, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1137, file: !3, discriminator: 1)
!1141 = !DILocation(line: 1495, column: 5, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1143, file: !3, discriminator: 2)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 1495, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1495, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1495, column: 5)
!1146 = !DILocation(line: 1495, column: 5, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1143, file: !3, discriminator: 6)
!1148 = !DILocation(line: 1495, column: 5, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1143, file: !3, discriminator: 7)
!1150 = !DILocation(line: 1495, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 2)
!1152 = !DILocation(line: 1495, column: 5, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1154, file: !3, discriminator: 3)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 1495, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1495, column: 5)
!1156 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1495, column: 5)
!1157 = !DILocation(line: 1497, column: 1, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1107, file: !3, discriminator: 2)
!1159 = distinct !DISubprogram(name: "cpu_reset", scope: !41, file: !41, line: 145, type: !1160, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null}
!1162 = !{}
!1163 = !DILocation(line: 148, column: 5, scope: !1159)
!1164 = !DILocation(line: 149, column: 1, scope: !1159)
!1165 = distinct !DISubprogram(name: "set_local_sep_for_tws", scope: !3, file: !3, line: 1499, type: !302, isLocal: false, isDefinition: true, scopeLine: 1500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1166)
!1166 = !{!1167, !1168}
!1167 = !DILocalVariable(name: "session", arg: 1, scope: !1165, file: !3, line: 1499, type: !304)
!1168 = !DILocalVariable(name: "sep", scope: !1165, file: !3, line: 1501, type: !68)
!1169 = !DILocation(line: 1499, column: 37, scope: !1165)
!1170 = !DILocation(line: 1503, column: 33, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 1503, column: 9)
!1172 = !DILocation(line: 1503, column: 43, scope: !1171)
!1173 = !DILocation(line: 1503, column: 52, scope: !1171)
!1174 = !DILocation(line: 1503, column: 79, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1171, file: !3, discriminator: 1)
!1176 = !DILocation(line: 1503, column: 94, scope: !1175)
!1177 = !DILocation(line: 1503, column: 9, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1165, file: !3, discriminator: 1)
!1179 = !DILocation(line: 1508, column: 46, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 1508, column: 9)
!1181 = !DILocation(line: 1508, column: 9, scope: !1165)
!1182 = !DILocation(line: 1509, column: 9, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !3, discriminator: 1)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 1509, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 1509, column: 9)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 1508, column: 64)
!1187 = !DILocation(line: 1509, column: 9, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1185, file: !3, discriminator: 1)
!1189 = !DILocation(line: 1509, column: 9, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 2)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1509, column: 9)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 1509, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 1509, column: 9)
!1194 = !DILocation(line: 1509, column: 9, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 6)
!1196 = !DILocation(line: 1509, column: 9, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 7)
!1198 = !DILocation(line: 1509, column: 9, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1193, file: !3, discriminator: 2)
!1200 = !DILocation(line: 1509, column: 9, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1202, file: !3, discriminator: 3)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1509, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 1509, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 1509, column: 9)
!1205 = !DILocation(line: 1512, column: 84, scope: !1165)
!1206 = !DILocation(line: 1512, column: 61, scope: !1165)
!1207 = !DILocation(line: 1512, column: 98, scope: !1165)
!1208 = !DILocation(line: 1512, column: 41, scope: !1165)
!1209 = !DILocation(line: 1512, column: 38, scope: !1165)
!1210 = !DILocation(line: 1519, column: 1, scope: !1165)
!1211 = !DILocation(line: 1519, column: 1, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1165, file: !3, discriminator: 2)
!1213 = distinct !DISubprogram(name: "avdtp_core_data_for_send", scope: !3, file: !3, line: 1522, type: !202, isLocal: false, isDefinition: true, scopeLine: 1523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219}
!1215 = !DILocalVariable(name: "packet", arg: 1, scope: !1213, file: !3, line: 1522, type: !63)
!1216 = !DILocalVariable(name: "size", arg: 2, scope: !1213, file: !3, line: 1522, type: !103)
!1217 = !DILocalVariable(name: "len", scope: !1213, file: !3, line: 1524, type: !40)
!1218 = !DILocalVariable(name: "i", scope: !1213, file: !3, line: 1524, type: !40)
!1219 = !DILocalVariable(name: "session", scope: !1213, file: !3, line: 1525, type: !304)
!1220 = !DILocation(line: 1522, column: 34, scope: !1213)
!1221 = !DILocation(line: 1522, column: 46, scope: !1213)
!1222 = !DILocation(line: 1525, column: 24, scope: !1213)
!1223 = !DILocation(line: 1525, column: 14, scope: !1213)
!1224 = !DILocation(line: 1527, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1527, column: 9)
!1226 = !DILocation(line: 1527, column: 9, scope: !1213)
!1227 = !DILocation(line: 1524, column: 8, scope: !1213)
!1228 = !DILocation(line: 1533, column: 5, scope: !1213)
!1229 = !DILocation(line: 1535, column: 5, scope: !1213)
!1230 = !DILocation(line: 1541, column: 5, scope: !1213)
!1231 = !DILocation(line: 1541, column: 19, scope: !1213)
!1232 = !DILocation(line: 1524, column: 13, scope: !1213)
!1233 = !DILocation(line: 1543, column: 5, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !3, discriminator: 1)
!1235 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1543, column: 5)
!1236 = !DILocation(line: 1544, column: 50, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1543, column: 42)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 1543, column: 5)
!1239 = !DILocation(line: 1544, column: 20, scope: !1237)
!1240 = !DILocation(line: 1544, column: 9, scope: !1237)
!1241 = !DILocation(line: 1544, column: 25, scope: !1237)
!1242 = !DILocation(line: 1543, column: 38, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1238, file: !3, discriminator: 2)
!1244 = !DILocation(line: 1543, column: 19, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1238, file: !3, discriminator: 1)
!1246 = distinct !{!1246, !1247, !1248}
!1247 = !DILocation(line: 1543, column: 5, scope: !1235)
!1248 = !DILocation(line: 1545, column: 5, scope: !1235)
!1249 = !DILocation(line: 1551, column: 1, scope: !1213)
!1250 = distinct !DISubprogram(name: "avdtp_tws_local_sep_deal", scope: !3, file: !3, line: 1553, type: !302, isLocal: false, isDefinition: true, scopeLine: 1554, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1251)
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "session", arg: 1, scope: !1250, file: !3, line: 1553, type: !304)
!1253 = !DILocalVariable(name: "local_sep", scope: !1250, file: !3, line: 1555, type: !68)
!1254 = !DILocation(line: 1553, column: 40, scope: !1250)
!1255 = !DILocation(line: 1555, column: 43, scope: !1250)
!1256 = !DILocation(line: 1555, column: 57, scope: !1250)
!1257 = !DILocation(line: 1555, column: 22, scope: !1250)
!1258 = !DILocation(line: 1558, column: 10, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1558, column: 9)
!1260 = !DILocation(line: 1558, column: 9, scope: !1250)
!1261 = !DILocation(line: 1562, column: 24, scope: !1250)
!1262 = !DILocation(line: 1562, column: 5, scope: !1250)
!1263 = !DILocation(line: 1564, column: 20, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1562, column: 31)
!1265 = !DILocation(line: 1564, column: 25, scope: !1264)
!1266 = !DILocation(line: 1564, column: 65, scope: !1264)
!1267 = !DILocation(line: 1564, column: 9, scope: !1264)
!1268 = !DILocation(line: 1565, column: 9, scope: !1264)
!1269 = !DILocation(line: 1569, column: 20, scope: !1264)
!1270 = !DILocation(line: 1569, column: 25, scope: !1264)
!1271 = !DILocation(line: 1569, column: 66, scope: !1264)
!1272 = !DILocation(line: 1569, column: 9, scope: !1264)
!1273 = !DILocation(line: 1570, column: 9, scope: !1264)
!1274 = !DILocation(line: 1578, column: 1, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1250, file: !3, discriminator: 2)
!1276 = distinct !DISubprogram(name: "avdtp_core_data_for_set", scope: !3, file: !3, line: 1580, type: !1277, isLocal: false, isDefinition: true, scopeLine: 1581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !63, !103}
!1279 = !{!1280, !1281, !1282, !1283, !1284}
!1280 = !DILocalVariable(name: "packet", arg: 1, scope: !1276, file: !3, line: 1580, type: !63)
!1281 = !DILocalVariable(name: "size", arg: 2, scope: !1276, file: !3, line: 1580, type: !103)
!1282 = !DILocalVariable(name: "len", scope: !1276, file: !3, line: 1582, type: !40)
!1283 = !DILocalVariable(name: "i", scope: !1276, file: !3, line: 1582, type: !40)
!1284 = !DILocalVariable(name: "session", scope: !1276, file: !3, line: 1583, type: !304)
!1285 = !DILocation(line: 1580, column: 34, scope: !1276)
!1286 = !DILocation(line: 1580, column: 46, scope: !1276)
!1287 = !DILocation(line: 1583, column: 24, scope: !1276)
!1288 = !DILocation(line: 1583, column: 14, scope: !1276)
!1289 = !DILocation(line: 1585, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 1585, column: 9)
!1291 = !DILocation(line: 1585, column: 9, scope: !1276)
!1292 = !DILocation(line: 1582, column: 8, scope: !1276)
!1293 = !DILocation(line: 1591, column: 5, scope: !1276)
!1294 = !DILocation(line: 1582, column: 13, scope: !1276)
!1295 = !DILocation(line: 1593, column: 21, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1593, column: 5)
!1298 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 1593, column: 5)
!1299 = !DILocation(line: 1593, column: 19, scope: !1296)
!1300 = !DILocation(line: 1593, column: 5, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1298, file: !3, discriminator: 1)
!1302 = !DILocation(line: 1594, column: 55, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1593, column: 39)
!1304 = !DILocation(line: 1594, column: 40, scope: !1303)
!1305 = !DILocation(line: 1594, column: 32, scope: !1303)
!1306 = !DILocation(line: 1594, column: 38, scope: !1303)
!1307 = !DILocation(line: 1593, column: 35, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 2)
!1309 = !DILocation(line: 1593, column: 17, scope: !1296)
!1310 = distinct !{!1310, !1311, !1312}
!1311 = !DILocation(line: 1593, column: 5, scope: !1298)
!1312 = !DILocation(line: 1595, column: 5, scope: !1298)
!1313 = !DILocation(line: 1597, column: 5, scope: !1276)
!1314 = !DILocation(line: 1600, column: 1, scope: !1276)
!1315 = !DILocation(line: 1600, column: 1, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1276, file: !3, discriminator: 2)
!1317 = distinct !DISubprogram(name: "avdtp_send", scope: !3, file: !3, line: 62, type: !1318, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!61, !304, !370, !40, !40, !40, !161}
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1321 = !DILocalVariable(name: "session", arg: 1, scope: !1317, file: !3, line: 62, type: !304)
!1322 = !DILocalVariable(name: "send", arg: 2, scope: !1317, file: !3, line: 62, type: !370)
!1323 = !DILocalVariable(name: "transaction", arg: 3, scope: !1317, file: !3, line: 62, type: !40)
!1324 = !DILocalVariable(name: "message_type", arg: 4, scope: !1317, file: !3, line: 62, type: !40)
!1325 = !DILocalVariable(name: "signal_id", arg: 5, scope: !1317, file: !3, line: 62, type: !40)
!1326 = !DILocalVariable(name: "len", arg: 6, scope: !1317, file: !3, line: 62, type: !161)
!1327 = !DILocalVariable(name: "single", scope: !1317, file: !3, line: 64, type: !220)
!1328 = !DILocation(line: 65, column: 13, scope: !1317)
!1329 = !DILocation(line: 65, column: 25, scope: !1317)
!1330 = !DILocation(line: 66, column: 26, scope: !1317)
!1331 = !DILocation(line: 67, column: 23, scope: !1317)
!1332 = !DILocation(line: 68, column: 25, scope: !1317)
!1333 = !DILocation(line: 71, column: 42, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 71, column: 9)
!1335 = !DILocation(line: 71, column: 51, scope: !1334)
!1336 = !DILocation(line: 71, column: 85, scope: !1334)
!1337 = !DILocation(line: 49, column: 26, scope: !795, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 71, column: 10, scope: !1334)
!1339 = !DILocation(line: 49, column: 41, scope: !795, inlinedAt: !1338)
!1340 = !DILocation(line: 49, column: 51, scope: !795, inlinedAt: !1338)
!1341 = !DILocation(line: 55, column: 46, scope: !795, inlinedAt: !1338)
!1342 = !DILocation(line: 55, column: 11, scope: !795, inlinedAt: !1338)
!1343 = !DILocation(line: 51, column: 9, scope: !795, inlinedAt: !1338)
!1344 = !DILocation(line: 58, column: 16, scope: !795, inlinedAt: !1338)
!1345 = !DILocation(line: 71, column: 9, scope: !1317)
!1346 = !DILocation(line: 75, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 75, column: 9)
!1348 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 71, column: 93)
!1349 = !DILocation(line: 75, column: 9, scope: !1348)
!1350 = !DILocation(line: 75, column: 9, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1347, file: !3, discriminator: 1)
!1352 = distinct !DISubprogram(name: "avdtp_discover_cmd", scope: !3, file: !3, line: 209, type: !1353, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!61, !304, !40}
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1356 = !DILocalVariable(name: "session", arg: 1, scope: !1352, file: !3, line: 209, type: !304)
!1357 = !DILocalVariable(name: "transaction", arg: 2, scope: !1352, file: !3, line: 209, type: !40)
!1358 = !DILocalVariable(name: "i", scope: !1352, file: !3, line: 211, type: !168)
!1359 = !DILocalVariable(name: "sep", scope: !1352, file: !3, line: 212, type: !68)
!1360 = !DILocalVariable(name: "send_buf_ptr", scope: !1352, file: !3, line: 213, type: !370)
!1361 = !DILocalVariable(name: "conn", scope: !1352, file: !3, line: 214, type: !20)
!1362 = !DILocalVariable(name: "t_send", scope: !1352, file: !3, line: 218, type: !371)
!1363 = !DILocalVariable(name: "send", scope: !1352, file: !3, line: 222, type: !63)
!1364 = !DILocation(line: 211, column: 9, scope: !1352)
!1365 = !DILocation(line: 218, column: 5, scope: !1352)
!1366 = !DILocation(line: 213, column: 22, scope: !1352)
!1367 = !DILocation(line: 221, column: 5, scope: !1352)
!1368 = !DILocation(line: 224, column: 5, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 224, column: 5)
!1370 = !DILocation(line: 212, column: 22, scope: !1352)
!1371 = !DILocation(line: 224, column: 5, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !3, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 224, column: 5)
!1374 = !DILocation(line: 224, column: 5, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1369, file: !3, discriminator: 1)
!1376 = !DILocation(line: 225, column: 23, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 225, column: 13)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 224, column: 28)
!1379 = !DILocation(line: 225, column: 28, scope: !1377)
!1380 = !DILocation(line: 225, column: 13, scope: !1378)
!1381 = !DILocation(line: 226, column: 29, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 225, column: 34)
!1383 = !DILocation(line: 226, column: 25, scope: !1382)
!1384 = !DILocation(line: 226, column: 13, scope: !1382)
!1385 = !DILocation(line: 227, column: 14, scope: !1382)
!1386 = !DILocation(line: 228, column: 9, scope: !1382)
!1387 = !DILocation(line: 224, column: 5, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1373, file: !3, discriminator: 2)
!1389 = distinct !{!1389, !1368, !1390}
!1390 = !DILocation(line: 229, column: 5, scope: !1369)
!1391 = !DILocation(line: 230, column: 15, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 230, column: 9)
!1393 = !DILocation(line: 230, column: 30, scope: !1392)
!1394 = !DILocation(line: 230, column: 43, scope: !1392)
!1395 = !DILocation(line: 230, column: 9, scope: !1352)
!1396 = !DILocation(line: 231, column: 43, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 230, column: 48)
!1398 = !DILocation(line: 232, column: 5, scope: !1397)
!1399 = !DILocation(line: 234, column: 39, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 233, column: 9)
!1401 = !DILocation(line: 218, column: 21, scope: !1352)
!1402 = !DILocation(line: 233, column: 10, scope: !1400)
!1403 = !DILocation(line: 237, column: 28, scope: !1352)
!1404 = !DILocation(line: 237, column: 41, scope: !1352)
!1405 = !DILocation(line: 240, column: 1, scope: !1352)
!1406 = distinct !DISubprogram(name: "avdtp_getcap_cmd", scope: !3, file: !3, line: 243, type: !1407, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!61, !304, !40, !239, !161, !61}
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1410 = !DILocalVariable(name: "session", arg: 1, scope: !1406, file: !3, line: 243, type: !304)
!1411 = !DILocalVariable(name: "transaction", arg: 2, scope: !1406, file: !3, line: 243, type: !40)
!1412 = !DILocalVariable(name: "req", arg: 3, scope: !1406, file: !3, line: 243, type: !239)
!1413 = !DILocalVariable(name: "size", arg: 4, scope: !1406, file: !3, line: 243, type: !161)
!1414 = !DILocalVariable(name: "get_all", arg: 5, scope: !1406, file: !3, line: 243, type: !61)
!1415 = !DILocalVariable(name: "length", scope: !1406, file: !3, line: 245, type: !40)
!1416 = !DILocalVariable(name: "local_sep", scope: !1406, file: !3, line: 246, type: !68)
!1417 = !DILocalVariable(name: "send_buf_ptr", scope: !1406, file: !3, line: 248, type: !370)
!1418 = !DILocalVariable(name: "t_send", scope: !1406, file: !3, line: 252, type: !371)
!1419 = !DILocalVariable(name: "send", scope: !1406, file: !3, line: 256, type: !63)
!1420 = !DILocation(line: 245, column: 8, scope: !1406)
!1421 = !DILocation(line: 245, column: 5, scope: !1406)
!1422 = !DILocation(line: 252, column: 5, scope: !1406)
!1423 = !DILocation(line: 248, column: 22, scope: !1406)
!1424 = !DILocation(line: 255, column: 5, scope: !1406)
!1425 = !DILocation(line: 256, column: 16, scope: !1406)
!1426 = !DILocation(line: 256, column: 9, scope: !1406)
!1427 = !DILocation(line: 259, column: 14, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 259, column: 9)
!1429 = !DILocation(line: 259, column: 9, scope: !1406)
!1430 = !DILocation(line: 264, column: 54, scope: !1406)
!1431 = !DILocation(line: 264, column: 49, scope: !1406)
!1432 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 264, column: 17, scope: !1406)
!1434 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1433)
!1435 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1433)
!1436 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1433)
!1437 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1433)
!1438 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1433)
!1439 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1433)
!1440 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1433)
!1441 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1433)
!1442 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1433)
!1443 = !DILocation(line: 246, column: 22, scope: !1406)
!1444 = !DILocation(line: 265, column: 10, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 265, column: 9)
!1446 = !DILocation(line: 265, column: 9, scope: !1406)
!1447 = !DILocation(line: 270, column: 16, scope: !1406)
!1448 = !DILocation(line: 270, column: 21, scope: !1406)
!1449 = !{!474, !389, i64 0}
!1450 = !DILocation(line: 270, column: 5, scope: !1406)
!1451 = !DILocation(line: 272, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 272, column: 9)
!1453 = !DILocation(line: 252, column: 21, scope: !1406)
!1454 = !DILocation(line: 272, column: 9, scope: !1406)
!1455 = !DILocation(line: 273, column: 14, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 273, column: 13)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 272, column: 18)
!1458 = !DILocation(line: 273, column: 13, scope: !1457)
!1459 = !DILocation(line: 278, column: 14, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 278, column: 13)
!1461 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 277, column: 12)
!1462 = !DILocation(line: 278, column: 13, scope: !1461)
!1463 = !DILocation(line: 288, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 288, column: 9)
!1465 = !DILocation(line: 288, column: 9, scope: !1406)
!1466 = !DILocation(line: 289, column: 16, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 288, column: 18)
!1468 = !DILocation(line: 289, column: 9, scope: !1467)
!1469 = !DILocation(line: 292, column: 16, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 291, column: 12)
!1471 = !DILocation(line: 292, column: 9, scope: !1470)
!1472 = !DILocation(line: 296, column: 1, scope: !1406)
!1473 = distinct !DISubprogram(name: "avdtp_setconf_cmd", scope: !3, file: !3, line: 300, type: !1474, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!61, !304, !40, !62, !161}
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1477 = !DILocalVariable(name: "session", arg: 1, scope: !1473, file: !3, line: 300, type: !304)
!1478 = !DILocalVariable(name: "transaction", arg: 2, scope: !1473, file: !3, line: 300, type: !40)
!1479 = !DILocalVariable(name: "data", arg: 3, scope: !1473, file: !3, line: 300, type: !62)
!1480 = !DILocalVariable(name: "size", arg: 4, scope: !1473, file: !3, line: 300, type: !161)
!1481 = !DILocalVariable(name: "error", scope: !1473, file: !3, line: 302, type: !40)
!1482 = !DILocalVariable(name: "req", scope: !1473, file: !3, line: 303, type: !240)
!1483 = !DILocalVariable(name: "stream", scope: !1473, file: !3, line: 304, type: !73)
!1484 = !DILocalVariable(name: "local_sep", scope: !1473, file: !3, line: 305, type: !68)
!1485 = !DILocalVariable(name: "send_buf_ptr", scope: !1473, file: !3, line: 306, type: !370)
!1486 = !DILocalVariable(name: "t_send", scope: !1473, file: !3, line: 310, type: !371)
!1487 = !DILocalVariable(name: "send", scope: !1473, file: !3, line: 314, type: !63)
!1488 = !DILocation(line: 310, column: 5, scope: !1473)
!1489 = !DILocation(line: 306, column: 22, scope: !1473)
!1490 = !DILocation(line: 313, column: 5, scope: !1473)
!1491 = !DILocation(line: 314, column: 16, scope: !1473)
!1492 = !DILocation(line: 314, column: 9, scope: !1473)
!1493 = !DILocation(line: 316, column: 14, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 316, column: 9)
!1495 = !DILocation(line: 316, column: 9, scope: !1473)
!1496 = !DILocation(line: 321, column: 54, scope: !1473)
!1497 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 321, column: 17, scope: !1473)
!1499 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1498)
!1500 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1498)
!1501 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1498)
!1502 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1498)
!1503 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1498)
!1504 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1498)
!1505 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1498)
!1506 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1498)
!1507 = !DILocation(line: 305, column: 22, scope: !1473)
!1508 = !DILocation(line: 322, column: 10, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 322, column: 9)
!1510 = !DILocation(line: 322, column: 9, scope: !1473)
!1511 = !DILocation(line: 326, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 326, column: 9)
!1513 = !DILocation(line: 326, column: 9, scope: !1473)
!1514 = !DILocation(line: 331, column: 26, scope: !1473)
!1515 = !DILocation(line: 331, column: 13, scope: !1473)
!1516 = !DILocation(line: 331, column: 19, scope: !1473)
!1517 = !DILocation(line: 332, column: 28, scope: !1473)
!1518 = !DILocation(line: 332, column: 37, scope: !1473)
!1519 = !DILocation(line: 333, column: 56, scope: !1473)
!1520 = !DILocation(line: 333, column: 40, scope: !1473)
!1521 = !DILocation(line: 333, column: 49, scope: !1473)
!1522 = !DILocation(line: 334, column: 28, scope: !1473)
!1523 = !DILocation(line: 334, column: 38, scope: !1473)
!1524 = !DILocation(line: 336, column: 20, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 336, column: 9)
!1526 = !DILocation(line: 336, column: 9, scope: !1473)
!1527 = !DILocation(line: 337, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 337, column: 9)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 336, column: 50)
!1530 = !DILocation(line: 337, column: 9, scope: !1529)
!1531 = !DILocation(line: 337, column: 9, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1528, file: !3, discriminator: 1)
!1533 = !DILocation(line: 339, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 339, column: 9)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 338, column: 60)
!1536 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 338, column: 16)
!1537 = !DILocation(line: 339, column: 9, scope: !1535)
!1538 = !DILocation(line: 339, column: 9, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1534, file: !3, discriminator: 1)
!1540 = !DILocation(line: 342, column: 20, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 342, column: 9)
!1542 = !DILocation(line: 342, column: 25, scope: !1541)
!1543 = !{!474, !389, i64 4}
!1544 = !DILocation(line: 342, column: 9, scope: !1541)
!1545 = !DILocation(line: 342, column: 9, scope: !1473)
!1546 = !DILocation(line: 343, column: 70, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 343, column: 13)
!1548 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 342, column: 44)
!1549 = !DILocation(line: 344, column: 53, scope: !1547)
!1550 = !DILocation(line: 344, column: 48, scope: !1547)
!1551 = !DILocation(line: 343, column: 14, scope: !1547)
!1552 = !DILocation(line: 343, column: 13, scope: !1548)
!1553 = !DILocation(line: 310, column: 21, scope: !1473)
!1554 = !DILocation(line: 350, column: 10, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 350, column: 9)
!1556 = !DILocation(line: 356, column: 27, scope: !1473)
!1557 = !DILocation(line: 359, column: 22, scope: !1473)
!1558 = !DILocation(line: 362, column: 5, scope: !1473)
!1559 = !DILocation(line: 302, column: 8, scope: !1473)
!1560 = !DILocation(line: 365, column: 25, scope: !1473)
!1561 = !DILocation(line: 365, column: 31, scope: !1473)
!1562 = !{!1563, !352, i64 1}
!1563 = !{!"_conf_rej", !352, i64 0, !352, i64 1}
!1564 = !DILocation(line: 366, column: 34, scope: !1473)
!1565 = !{!1563, !352, i64 0}
!1566 = !DILocation(line: 367, column: 12, scope: !1473)
!1567 = !DILocation(line: 367, column: 5, scope: !1473)
!1568 = !DILocation(line: 368, column: 1, scope: !1473)
!1569 = distinct !DISubprogram(name: "avdtp_getconf_cmd", scope: !3, file: !3, line: 371, type: !1570, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!61, !304, !40, !239, !161}
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1573 = !DILocalVariable(name: "session", arg: 1, scope: !1569, file: !3, line: 371, type: !304)
!1574 = !DILocalVariable(name: "transaction", arg: 2, scope: !1569, file: !3, line: 371, type: !40)
!1575 = !DILocalVariable(name: "req", arg: 3, scope: !1569, file: !3, line: 371, type: !239)
!1576 = !DILocalVariable(name: "size", arg: 4, scope: !1569, file: !3, line: 371, type: !161)
!1577 = !DILocalVariable(name: "length", scope: !1569, file: !3, line: 373, type: !40)
!1578 = !DILocalVariable(name: "local_sep", scope: !1569, file: !3, line: 374, type: !68)
!1579 = !DILocalVariable(name: "send_buf_ptr", scope: !1569, file: !3, line: 376, type: !370)
!1580 = !DILocalVariable(name: "t_send", scope: !1569, file: !3, line: 380, type: !371)
!1581 = !DILocalVariable(name: "send", scope: !1569, file: !3, line: 384, type: !63)
!1582 = !DILocation(line: 373, column: 8, scope: !1569)
!1583 = !DILocation(line: 373, column: 5, scope: !1569)
!1584 = !DILocation(line: 380, column: 5, scope: !1569)
!1585 = !DILocation(line: 376, column: 22, scope: !1569)
!1586 = !DILocation(line: 383, column: 5, scope: !1569)
!1587 = !DILocation(line: 384, column: 16, scope: !1569)
!1588 = !DILocation(line: 384, column: 9, scope: !1569)
!1589 = !DILocation(line: 386, column: 14, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 386, column: 9)
!1591 = !DILocation(line: 386, column: 9, scope: !1569)
!1592 = !DILocation(line: 391, column: 54, scope: !1569)
!1593 = !DILocation(line: 391, column: 49, scope: !1569)
!1594 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 391, column: 17, scope: !1569)
!1596 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1595)
!1597 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1595)
!1598 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1595)
!1599 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1595)
!1600 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1595)
!1601 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1595)
!1602 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1595)
!1603 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1595)
!1604 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1595)
!1605 = !DILocation(line: 374, column: 22, scope: !1569)
!1606 = !DILocation(line: 392, column: 10, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 392, column: 9)
!1608 = !DILocation(line: 392, column: 9, scope: !1569)
!1609 = !DILocation(line: 396, column: 20, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 396, column: 9)
!1611 = !DILocation(line: 396, column: 25, scope: !1610)
!1612 = !DILocation(line: 396, column: 9, scope: !1610)
!1613 = !DILocation(line: 396, column: 9, scope: !1569)
!1614 = !DILocation(line: 397, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 396, column: 41)
!1616 = !DILocation(line: 398, column: 5, scope: !1615)
!1617 = !DILocation(line: 380, column: 21, scope: !1569)
!1618 = !DILocation(line: 399, column: 10, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 399, column: 9)
!1620 = !DILocation(line: 404, column: 5, scope: !1569)
!1621 = !DILocation(line: 407, column: 12, scope: !1569)
!1622 = !DILocation(line: 407, column: 5, scope: !1569)
!1623 = !DILocation(line: 409, column: 1, scope: !1569)
!1624 = distinct !DISubprogram(name: "avdtp_reconf_cmd", scope: !3, file: !3, line: 412, type: !1474, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1626 = !DILocalVariable(name: "session", arg: 1, scope: !1624, file: !3, line: 412, type: !304)
!1627 = !DILocalVariable(name: "transaction", arg: 2, scope: !1624, file: !3, line: 412, type: !40)
!1628 = !DILocalVariable(name: "data", arg: 3, scope: !1624, file: !3, line: 412, type: !62)
!1629 = !DILocalVariable(name: "size", arg: 4, scope: !1624, file: !3, line: 412, type: !161)
!1630 = !DILocalVariable(name: "send_len", scope: !1624, file: !3, line: 414, type: !40)
!1631 = !DILocalVariable(name: "reconf", scope: !1624, file: !3, line: 415, type: !274)
!1632 = !DILocalVariable(name: "send_buf_ptr", scope: !1624, file: !3, line: 417, type: !370)
!1633 = !DILocalVariable(name: "t_send", scope: !1624, file: !3, line: 421, type: !371)
!1634 = !DILocalVariable(name: "send", scope: !1624, file: !3, line: 425, type: !63)
!1635 = !DILocalVariable(name: "local_sep", scope: !1624, file: !3, line: 427, type: !68)
!1636 = !DILocation(line: 421, column: 5, scope: !1624)
!1637 = !DILocation(line: 417, column: 22, scope: !1624)
!1638 = !DILocation(line: 424, column: 5, scope: !1624)
!1639 = !DILocation(line: 425, column: 16, scope: !1624)
!1640 = !DILocation(line: 425, column: 9, scope: !1624)
!1641 = !DILocation(line: 428, column: 14, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 428, column: 9)
!1643 = !DILocation(line: 428, column: 9, scope: !1624)
!1644 = !DILocation(line: 429, column: 17, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 428, column: 36)
!1646 = !DILocation(line: 414, column: 8, scope: !1624)
!1647 = !DILocation(line: 431, column: 9, scope: !1645)
!1648 = !DILocation(line: 433, column: 57, scope: !1624)
!1649 = !DILocation(line: 433, column: 49, scope: !1624)
!1650 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 433, column: 17, scope: !1624)
!1652 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1651)
!1653 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1651)
!1654 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1651)
!1655 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1651)
!1656 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1651)
!1657 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1651)
!1658 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1651)
!1659 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1651)
!1660 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1651)
!1661 = !DILocation(line: 427, column: 22, scope: !1624)
!1662 = !DILocation(line: 434, column: 10, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 434, column: 9)
!1664 = !DILocation(line: 434, column: 9, scope: !1624)
!1665 = !DILocation(line: 435, column: 17, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 434, column: 21)
!1667 = !DILocation(line: 436, column: 9, scope: !1666)
!1668 = !DILocation(line: 436, column: 17, scope: !1666)
!1669 = !DILocation(line: 438, column: 9, scope: !1666)
!1670 = !DILocation(line: 440, column: 17, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 440, column: 9)
!1672 = !{!1673, !352, i64 1}
!1673 = !{!"_reconf_req", !352, i64 0, !352, i64 0, !352, i64 1, !352, i64 2}
!1674 = !DILocation(line: 440, column: 26, scope: !1671)
!1675 = !DILocation(line: 440, column: 9, scope: !1624)
!1676 = !DILocation(line: 441, column: 17, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 440, column: 51)
!1678 = !DILocation(line: 442, column: 9, scope: !1677)
!1679 = !DILocation(line: 442, column: 17, scope: !1677)
!1680 = !DILocation(line: 444, column: 9, scope: !1677)
!1681 = !DILocation(line: 447, column: 13, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 446, column: 13)
!1683 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 445, column: 12)
!1684 = !DILocation(line: 448, column: 21, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 447, column: 62)
!1686 = !DILocation(line: 449, column: 13, scope: !1685)
!1687 = !DILocation(line: 449, column: 21, scope: !1685)
!1688 = !DILocation(line: 451, column: 13, scope: !1685)
!1689 = !DILocation(line: 454, column: 20, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 454, column: 9)
!1691 = !DILocation(line: 454, column: 25, scope: !1690)
!1692 = !DILocation(line: 454, column: 9, scope: !1690)
!1693 = !DILocation(line: 454, column: 9, scope: !1624)
!1694 = !DILocation(line: 455, column: 80, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 455, column: 13)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 454, column: 44)
!1697 = !DILocation(line: 455, column: 75, scope: !1695)
!1698 = !DILocation(line: 455, column: 14, scope: !1695)
!1699 = !DILocation(line: 455, column: 13, scope: !1696)
!1700 = !DILocation(line: 456, column: 21, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 455, column: 92)
!1702 = !DILocation(line: 457, column: 13, scope: !1701)
!1703 = !DILocation(line: 457, column: 21, scope: !1701)
!1704 = !DILocation(line: 459, column: 13, scope: !1701)
!1705 = !DILocation(line: 421, column: 21, scope: !1624)
!1706 = !DILocation(line: 462, column: 12, scope: !1624)
!1707 = !DILocation(line: 462, column: 5, scope: !1624)
!1708 = !DILocation(line: 465, column: 12, scope: !1624)
!1709 = !DILocation(line: 465, column: 5, scope: !1624)
!1710 = !DILocation(line: 466, column: 1, scope: !1624)
!1711 = distinct !DISubprogram(name: "avdtp_open_cmd", scope: !3, file: !3, line: 469, type: !1570, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1713 = !DILocalVariable(name: "session", arg: 1, scope: !1711, file: !3, line: 469, type: !304)
!1714 = !DILocalVariable(name: "transaction", arg: 2, scope: !1711, file: !3, line: 469, type: !40)
!1715 = !DILocalVariable(name: "req", arg: 3, scope: !1711, file: !3, line: 469, type: !239)
!1716 = !DILocalVariable(name: "size", arg: 4, scope: !1711, file: !3, line: 469, type: !161)
!1717 = !DILocalVariable(name: "stream", scope: !1711, file: !3, line: 471, type: !73)
!1718 = !DILocalVariable(name: "local_sep", scope: !1711, file: !3, line: 472, type: !68)
!1719 = !DILocalVariable(name: "conn", scope: !1711, file: !3, line: 473, type: !20)
!1720 = !DILocalVariable(name: "send_buf_ptr", scope: !1711, file: !3, line: 475, type: !370)
!1721 = !DILocalVariable(name: "t_send", scope: !1711, file: !3, line: 479, type: !371)
!1722 = !DILocalVariable(name: "send", scope: !1711, file: !3, line: 483, type: !63)
!1723 = !DILocation(line: 469, column: 81, scope: !1711)
!1724 = !DILocation(line: 471, column: 52, scope: !1711)
!1725 = !DILocation(line: 471, column: 19, scope: !1711)
!1726 = !DILocation(line: 479, column: 5, scope: !1711)
!1727 = !DILocation(line: 475, column: 22, scope: !1711)
!1728 = !DILocation(line: 482, column: 5, scope: !1711)
!1729 = !DILocation(line: 483, column: 16, scope: !1711)
!1730 = !DILocation(line: 483, column: 9, scope: !1711)
!1731 = !DILocation(line: 485, column: 54, scope: !1711)
!1732 = !DILocation(line: 485, column: 49, scope: !1711)
!1733 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 485, column: 17, scope: !1711)
!1735 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1734)
!1736 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1734)
!1737 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1734)
!1738 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1734)
!1739 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1734)
!1740 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1734)
!1741 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1734)
!1742 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1734)
!1743 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1734)
!1744 = !DILocation(line: 472, column: 22, scope: !1711)
!1745 = !DILocation(line: 486, column: 10, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 486, column: 9)
!1747 = !DILocation(line: 486, column: 9, scope: !1711)
!1748 = !DILocation(line: 491, column: 20, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 491, column: 9)
!1750 = !DILocation(line: 491, column: 26, scope: !1749)
!1751 = !DILocation(line: 491, column: 9, scope: !1711)
!1752 = !DILocation(line: 496, column: 11, scope: !1711)
!1753 = !DILocation(line: 496, column: 39, scope: !1711)
!1754 = !DILocation(line: 497, column: 20, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 497, column: 9)
!1756 = !DILocation(line: 497, column: 25, scope: !1755)
!1757 = !DILocation(line: 497, column: 9, scope: !1755)
!1758 = !DILocation(line: 497, column: 9, scope: !1711)
!1759 = !DILocation(line: 498, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 497, column: 31)
!1761 = !DILocation(line: 499, column: 5, scope: !1760)
!1762 = !DILocation(line: 479, column: 21, scope: !1711)
!1763 = !DILocation(line: 501, column: 10, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 501, column: 9)
!1765 = !DILocation(line: 505, column: 13, scope: !1711)
!1766 = !DILocation(line: 505, column: 22, scope: !1711)
!1767 = !DILocation(line: 508, column: 22, scope: !1711)
!1768 = !DILocation(line: 510, column: 5, scope: !1711)
!1769 = !DILocation(line: 514, column: 12, scope: !1711)
!1770 = !DILocation(line: 514, column: 5, scope: !1711)
!1771 = !DILocation(line: 515, column: 1, scope: !1711)
!1772 = distinct !DISubprogram(name: "avdtp_start_cmd", scope: !3, file: !3, line: 518, type: !1773, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!61, !304, !40, !248, !162}
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1776 = !DILocalVariable(name: "session", arg: 1, scope: !1772, file: !3, line: 518, type: !304)
!1777 = !DILocalVariable(name: "transaction", arg: 2, scope: !1772, file: !3, line: 518, type: !40)
!1778 = !DILocalVariable(name: "req", arg: 3, scope: !1772, file: !3, line: 518, type: !248)
!1779 = !DILocalVariable(name: "size", arg: 4, scope: !1772, file: !3, line: 518, type: !162)
!1780 = !DILocalVariable(name: "pseid", scope: !1772, file: !3, line: 520, type: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!1782 = !DILocalVariable(name: "err", scope: !1772, file: !3, line: 521, type: !40)
!1783 = !DILocalVariable(name: "failed_seid", scope: !1772, file: !3, line: 522, type: !40)
!1784 = !DILocalVariable(name: "stream", scope: !1772, file: !3, line: 523, type: !73)
!1785 = !DILocalVariable(name: "local_sep", scope: !1772, file: !3, line: 524, type: !68)
!1786 = !DILocalVariable(name: "send_buf_ptr", scope: !1772, file: !3, line: 526, type: !370)
!1787 = !DILocalVariable(name: "t_send", scope: !1772, file: !3, line: 530, type: !371)
!1788 = !DILocalVariable(name: "send", scope: !1772, file: !3, line: 534, type: !63)
!1789 = !DILocation(line: 518, column: 92, scope: !1772)
!1790 = !DILocation(line: 521, column: 8, scope: !1772)
!1791 = !DILocation(line: 523, column: 52, scope: !1772)
!1792 = !DILocation(line: 523, column: 19, scope: !1772)
!1793 = !DILocation(line: 530, column: 5, scope: !1772)
!1794 = !DILocation(line: 526, column: 22, scope: !1772)
!1795 = !DILocation(line: 533, column: 5, scope: !1772)
!1796 = !DILocation(line: 534, column: 16, scope: !1772)
!1797 = !DILocation(line: 534, column: 9, scope: !1772)
!1798 = !DILocation(line: 545, column: 26, scope: !1772)
!1799 = !DILocation(line: 522, column: 8, scope: !1772)
!1800 = !DILocation(line: 547, column: 49, scope: !1772)
!1801 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 547, column: 17, scope: !1772)
!1803 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1802)
!1804 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1802)
!1805 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1802)
!1806 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1802)
!1807 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1802)
!1808 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1802)
!1809 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1802)
!1810 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1802)
!1811 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1802)
!1812 = !DILocation(line: 524, column: 22, scope: !1772)
!1813 = !DILocation(line: 548, column: 10, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 548, column: 9)
!1815 = !DILocation(line: 548, column: 9, scope: !1772)
!1816 = !DILocation(line: 554, column: 20, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 554, column: 9)
!1818 = !DILocation(line: 554, column: 26, scope: !1817)
!1819 = !DILocation(line: 554, column: 9, scope: !1772)
!1820 = !DILocation(line: 558, column: 13, scope: !1772)
!1821 = !DILocation(line: 558, column: 22, scope: !1772)
!1822 = !DILocation(line: 560, column: 20, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 560, column: 9)
!1824 = !DILocation(line: 560, column: 25, scope: !1823)
!1825 = !DILocation(line: 560, column: 9, scope: !1823)
!1826 = !DILocation(line: 560, column: 9, scope: !1772)
!1827 = !DILocation(line: 561, column: 14, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 561, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 560, column: 32)
!1830 = !DILocation(line: 561, column: 13, scope: !1829)
!1831 = !DILocation(line: 567, column: 10, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 567, column: 9)
!1833 = !DILocation(line: 567, column: 29, scope: !1832)
!1834 = !DILocation(line: 567, column: 35, scope: !1832)
!1835 = !DILocation(line: 567, column: 38, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1832, file: !3, discriminator: 1)
!1837 = !DILocation(line: 567, column: 9, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1772, file: !3, discriminator: 1)
!1839 = !DILocation(line: 568, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 567, column: 65)
!1841 = !DILocation(line: 572, column: 5, scope: !1840)
!1842 = !DILocation(line: 575, column: 22, scope: !1772)
!1843 = !DILocation(line: 530, column: 21, scope: !1772)
!1844 = !DILocation(line: 578, column: 12, scope: !1772)
!1845 = !DILocation(line: 578, column: 5, scope: !1772)
!1846 = !DILocation(line: 582, column: 36, scope: !1772)
!1847 = !DILocation(line: 583, column: 27, scope: !1772)
!1848 = !DILocation(line: 583, column: 33, scope: !1772)
!1849 = !{!1850, !352, i64 1}
!1850 = !{!"_stream_rej", !352, i64 0, !352, i64 0, !352, i64 1}
!1851 = !DILocation(line: 584, column: 5, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 584, column: 5)
!1853 = !DILocation(line: 584, column: 5, scope: !1772)
!1854 = !DILocation(line: 584, column: 5, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1852, file: !3, discriminator: 1)
!1856 = !DILocation(line: 585, column: 12, scope: !1772)
!1857 = !DILocation(line: 585, column: 5, scope: !1772)
!1858 = !DILocation(line: 587, column: 1, scope: !1772)
!1859 = distinct !DISubprogram(name: "avdtp_close_cmd", scope: !3, file: !3, line: 590, type: !1860, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!61, !304, !40, !239, !162}
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870}
!1863 = !DILocalVariable(name: "session", arg: 1, scope: !1859, file: !3, line: 590, type: !304)
!1864 = !DILocalVariable(name: "transaction", arg: 2, scope: !1859, file: !3, line: 590, type: !40)
!1865 = !DILocalVariable(name: "req", arg: 3, scope: !1859, file: !3, line: 590, type: !239)
!1866 = !DILocalVariable(name: "size", arg: 4, scope: !1859, file: !3, line: 590, type: !162)
!1867 = !DILocalVariable(name: "local_sep", scope: !1859, file: !3, line: 592, type: !68)
!1868 = !DILocalVariable(name: "send_buf_ptr", scope: !1859, file: !3, line: 594, type: !370)
!1869 = !DILocalVariable(name: "t_send", scope: !1859, file: !3, line: 598, type: !371)
!1870 = !DILocalVariable(name: "err", scope: !1859, file: !3, line: 602, type: !63)
!1871 = !DILocation(line: 590, column: 38, scope: !1859)
!1872 = !DILocation(line: 590, column: 50, scope: !1859)
!1873 = !DILocation(line: 590, column: 73, scope: !1859)
!1874 = !DILocation(line: 590, column: 91, scope: !1859)
!1875 = !DILocation(line: 598, column: 5, scope: !1859)
!1876 = !DILocation(line: 594, column: 22, scope: !1859)
!1877 = !DILocation(line: 601, column: 5, scope: !1859)
!1878 = !DILocation(line: 602, column: 15, scope: !1859)
!1879 = !DILocation(line: 602, column: 9, scope: !1859)
!1880 = !DILocation(line: 604, column: 14, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 604, column: 9)
!1882 = !DILocation(line: 604, column: 9, scope: !1859)
!1883 = !DILocation(line: 608, column: 54, scope: !1859)
!1884 = !DILocation(line: 608, column: 49, scope: !1859)
!1885 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 608, column: 17, scope: !1859)
!1887 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1886)
!1888 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1886)
!1889 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1886)
!1890 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1886)
!1891 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1886)
!1892 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1886)
!1893 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1886)
!1894 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1886)
!1895 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1886)
!1896 = !DILocation(line: 592, column: 22, scope: !1859)
!1897 = !DILocation(line: 609, column: 10, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 609, column: 9)
!1899 = !DILocation(line: 609, column: 9, scope: !1859)
!1900 = !DILocation(line: 614, column: 20, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 614, column: 9)
!1902 = !DILocation(line: 614, column: 46, scope: !1901)
!1903 = !DILocation(line: 619, column: 20, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 619, column: 9)
!1905 = !DILocation(line: 619, column: 25, scope: !1904)
!1906 = !{!474, !389, i64 20}
!1907 = !DILocation(line: 619, column: 9, scope: !1904)
!1908 = !DILocation(line: 619, column: 31, scope: !1904)
!1909 = !DILocation(line: 619, column: 92, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1904, file: !3, discriminator: 1)
!1911 = !DILocation(line: 619, column: 35, scope: !1910)
!1912 = !DILocation(line: 619, column: 9, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1859, file: !3, discriminator: 1)
!1914 = !DILocation(line: 622, column: 28, scope: !1859)
!1915 = !DILocation(line: 622, column: 41, scope: !1859)
!1916 = !DILocation(line: 624, column: 22, scope: !1859)
!1917 = !DILocation(line: 625, column: 27, scope: !1859)
!1918 = !DILocation(line: 598, column: 21, scope: !1859)
!1919 = !DILocation(line: 626, column: 10, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 626, column: 9)
!1921 = !DILocation(line: 630, column: 5, scope: !1859)
!1922 = !DILocation(line: 634, column: 23, scope: !1859)
!1923 = !DILocation(line: 634, column: 12, scope: !1859)
!1924 = !DILocation(line: 634, column: 5, scope: !1859)
!1925 = !DILocation(line: 636, column: 1, scope: !1859)
!1926 = distinct !DISubprogram(name: "avdtp_suspend_cmd", scope: !3, file: !3, line: 639, type: !1927, isLocal: true, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!61, !304, !40, !262, !162}
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938}
!1930 = !DILocalVariable(name: "session", arg: 1, scope: !1926, file: !3, line: 639, type: !304)
!1931 = !DILocalVariable(name: "transaction", arg: 2, scope: !1926, file: !3, line: 639, type: !40)
!1932 = !DILocalVariable(name: "req", arg: 3, scope: !1926, file: !3, line: 639, type: !262)
!1933 = !DILocalVariable(name: "size", arg: 4, scope: !1926, file: !3, line: 639, type: !162)
!1934 = !DILocalVariable(name: "err", scope: !1926, file: !3, line: 641, type: !40)
!1935 = !DILocalVariable(name: "local_sep", scope: !1926, file: !3, line: 642, type: !68)
!1936 = !DILocalVariable(name: "send_buf_ptr", scope: !1926, file: !3, line: 644, type: !370)
!1937 = !DILocalVariable(name: "t_send", scope: !1926, file: !3, line: 648, type: !371)
!1938 = !DILocalVariable(name: "rej", scope: !1926, file: !3, line: 652, type: !282)
!1939 = !DILocation(line: 639, column: 40, scope: !1926)
!1940 = !DILocation(line: 639, column: 52, scope: !1926)
!1941 = !DILocation(line: 639, column: 78, scope: !1926)
!1942 = !DILocation(line: 639, column: 96, scope: !1926)
!1943 = !DILocation(line: 641, column: 8, scope: !1926)
!1944 = !DILocation(line: 648, column: 5, scope: !1926)
!1945 = !DILocation(line: 644, column: 22, scope: !1926)
!1946 = !DILocation(line: 651, column: 5, scope: !1926)
!1947 = !DILocation(line: 652, column: 37, scope: !1926)
!1948 = !DILocation(line: 654, column: 14, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 654, column: 9)
!1950 = !DILocation(line: 654, column: 9, scope: !1926)
!1951 = !DILocation(line: 659, column: 65, scope: !1926)
!1952 = !DILocation(line: 659, column: 49, scope: !1926)
!1953 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 659, column: 17, scope: !1926)
!1955 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !1954)
!1956 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !1954)
!1957 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !1954)
!1958 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !1954)
!1959 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !1954)
!1960 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !1954)
!1961 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !1954)
!1962 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !1954)
!1963 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !1954)
!1964 = !DILocation(line: 642, column: 22, scope: !1926)
!1965 = !DILocation(line: 660, column: 10, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 660, column: 9)
!1967 = !DILocation(line: 660, column: 9, scope: !1926)
!1968 = !DILocation(line: 665, column: 20, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 665, column: 9)
!1970 = !DILocation(line: 665, column: 9, scope: !1969)
!1971 = !DILocation(line: 665, column: 26, scope: !1969)
!1972 = !DILocation(line: 665, column: 9, scope: !1926)
!1973 = !DILocation(line: 667, column: 9, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 667, column: 9)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 665, column: 52)
!1976 = !DILocation(line: 667, column: 9, scope: !1975)
!1977 = !DILocation(line: 667, column: 9, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1974, file: !3, discriminator: 1)
!1979 = !DILocation(line: 671, column: 20, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 671, column: 9)
!1981 = !DILocation(line: 671, column: 25, scope: !1980)
!1982 = !DILocation(line: 671, column: 9, scope: !1980)
!1983 = !DILocation(line: 671, column: 9, scope: !1926)
!1984 = !DILocation(line: 672, column: 73, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 672, column: 13)
!1986 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 671, column: 34)
!1987 = !DILocation(line: 672, column: 14, scope: !1985)
!1988 = !DILocation(line: 672, column: 13, scope: !1986)
!1989 = !DILocation(line: 678, column: 22, scope: !1926)
!1990 = !DILocation(line: 648, column: 21, scope: !1926)
!1991 = !DILocation(line: 680, column: 12, scope: !1926)
!1992 = !DILocation(line: 680, column: 5, scope: !1926)
!1993 = !DILocation(line: 684, column: 10, scope: !1926)
!1994 = !DILocation(line: 684, column: 16, scope: !1926)
!1995 = !DILocation(line: 685, column: 37, scope: !1926)
!1996 = !DILocation(line: 685, column: 19, scope: !1926)
!1997 = !DILocation(line: 686, column: 12, scope: !1926)
!1998 = !DILocation(line: 686, column: 5, scope: !1926)
!1999 = !DILocation(line: 689, column: 1, scope: !1926)
!2000 = distinct !DISubprogram(name: "avdtp_abort_cmd", scope: !3, file: !3, line: 692, type: !1860, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2001)
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008}
!2002 = !DILocalVariable(name: "session", arg: 1, scope: !2000, file: !3, line: 692, type: !304)
!2003 = !DILocalVariable(name: "transaction", arg: 2, scope: !2000, file: !3, line: 692, type: !40)
!2004 = !DILocalVariable(name: "req", arg: 3, scope: !2000, file: !3, line: 692, type: !239)
!2005 = !DILocalVariable(name: "size", arg: 4, scope: !2000, file: !3, line: 692, type: !162)
!2006 = !DILocalVariable(name: "local_sep", scope: !2000, file: !3, line: 694, type: !68)
!2007 = !DILocalVariable(name: "send_buf_ptr", scope: !2000, file: !3, line: 696, type: !370)
!2008 = !DILocalVariable(name: "t_send", scope: !2000, file: !3, line: 700, type: !371)
!2009 = !DILocation(line: 700, column: 5, scope: !2000)
!2010 = !DILocation(line: 696, column: 22, scope: !2000)
!2011 = !DILocation(line: 703, column: 5, scope: !2000)
!2012 = !DILocation(line: 705, column: 14, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 705, column: 9)
!2014 = !DILocation(line: 705, column: 9, scope: !2000)
!2015 = !DILocation(line: 710, column: 54, scope: !2000)
!2016 = !DILocation(line: 710, column: 49, scope: !2000)
!2017 = !DILocation(line: 193, column: 50, scope: !310, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 710, column: 17, scope: !2000)
!2019 = !DILocation(line: 193, column: 63, scope: !310, inlinedAt: !2018)
!2020 = !DILocation(line: 197, column: 5, scope: !320, inlinedAt: !2018)
!2021 = !DILocation(line: 195, column: 22, scope: !310, inlinedAt: !2018)
!2022 = !DILocation(line: 197, column: 5, scope: !323, inlinedAt: !2018)
!2023 = !DILocation(line: 197, column: 5, scope: !326, inlinedAt: !2018)
!2024 = !DILocation(line: 198, column: 23, scope: !328, inlinedAt: !2018)
!2025 = !DILocation(line: 198, column: 28, scope: !328, inlinedAt: !2018)
!2026 = !DILocation(line: 198, column: 13, scope: !329, inlinedAt: !2018)
!2027 = !DILocation(line: 197, column: 5, scope: !333, inlinedAt: !2018)
!2028 = !DILocation(line: 694, column: 22, scope: !2000)
!2029 = !DILocation(line: 711, column: 10, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 711, column: 9)
!2031 = !DILocation(line: 711, column: 9, scope: !2000)
!2032 = !DILocation(line: 700, column: 21, scope: !2000)
!2033 = !DILocation(line: 716, column: 10, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 716, column: 9)
!2035 = !DILocation(line: 720, column: 20, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 720, column: 9)
!2037 = !DILocation(line: 720, column: 25, scope: !2036)
!2038 = !DILocation(line: 720, column: 9, scope: !2036)
!2039 = !DILocation(line: 720, column: 9, scope: !2000)
!2040 = !DILocation(line: 721, column: 9, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 720, column: 32)
!2042 = !DILocation(line: 722, column: 5, scope: !2041)
!2043 = !DILocation(line: 724, column: 16, scope: !2000)
!2044 = !DILocation(line: 724, column: 22, scope: !2000)
!2045 = !DILocation(line: 726, column: 5, scope: !2000)
!2046 = !DILocation(line: 727, column: 1, scope: !2000)
!2047 = distinct !DISubprogram(name: "avdtp_get_capabilities_response", scope: !3, file: !3, line: 1162, type: !2048, isLocal: true, isDefinition: true, scopeLine: 1163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!61, !304, !63, !161, !61}
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2059, !2060, !2061, !2062, !2063, !2064, !2065}
!2051 = !DILocalVariable(name: "session", arg: 1, scope: !2047, file: !3, line: 1162, type: !304)
!2052 = !DILocalVariable(name: "packet", arg: 2, scope: !2047, file: !3, line: 1162, type: !63)
!2053 = !DILocalVariable(name: "size", arg: 3, scope: !2047, file: !3, line: 1162, type: !161)
!2054 = !DILocalVariable(name: "get_all", arg: 4, scope: !2047, file: !3, line: 1162, type: !61)
!2055 = !DILocalVariable(name: "buf", scope: !2047, file: !3, line: 1164, type: !2056)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 32)
!2059 = !DILocalVariable(name: "cap_len", scope: !2047, file: !3, line: 1165, type: !40)
!2060 = !DILocalVariable(name: "req", scope: !2047, file: !3, line: 1166, type: !240)
!2061 = !DILocalVariable(name: "service_cap", scope: !2047, file: !3, line: 1167, type: !290)
!2062 = !DILocalVariable(name: "config", scope: !2047, file: !3, line: 1168, type: !290)
!2063 = !DILocalVariable(name: "local_sep", scope: !2047, file: !3, line: 1169, type: !68)
!2064 = !DILocalVariable(name: "conn", scope: !2047, file: !3, line: 1170, type: !20)
!2065 = !DILocalVariable(name: "local_config", scope: !2066, file: !3, line: 1238, type: !290)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 1236, column: 87)
!2067 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1236, column: 9)
!2068 = !DILocation(line: 1164, column: 5, scope: !2047)
!2069 = !DILocation(line: 1164, column: 8, scope: !2047)
!2070 = !DILocation(line: 1165, column: 8, scope: !2047)
!2071 = !DILocation(line: 1168, column: 68, scope: !2047)
!2072 = !DILocation(line: 1169, column: 22, scope: !2047)
!2073 = !DILocation(line: 1170, column: 30, scope: !2047)
!2074 = !DILocation(line: 1171, column: 32, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1171, column: 9)
!2076 = !DILocation(line: 1171, column: 9, scope: !2075)
!2077 = !DILocation(line: 1171, column: 9, scope: !2047)
!2078 = !DILocation(line: 1172, column: 47, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1172, column: 13)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1171, column: 43)
!2081 = !DILocation(line: 1173, column: 13, scope: !2079)
!2082 = !DILocation(line: 1175, column: 13, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 1175, column: 13)
!2084 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1173, column: 83)
!2085 = !DILocation(line: 1175, column: 13, scope: !2084)
!2086 = !DILocation(line: 1175, column: 13, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2083, file: !3, discriminator: 1)
!2088 = !DILocation(line: 1177, column: 46, scope: !2084)
!2089 = !DILocation(line: 1177, column: 13, scope: !2084)
!2090 = !DILocation(line: 1178, column: 13, scope: !2084)
!2091 = !DILocation(line: 1182, column: 5, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1182, column: 5)
!2093 = !DILocation(line: 1182, column: 5, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2095, file: !3, discriminator: 1)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 1182, column: 5)
!2096 = !DILocation(line: 1182, column: 5, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2092, file: !3, discriminator: 1)
!2098 = !DILocation(line: 1183, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1183, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 1182, column: 34)
!2101 = !DILocation(line: 1183, column: 9, scope: !2100)
!2102 = !DILocation(line: 1183, column: 9, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2099, file: !3, discriminator: 1)
!2104 = !DILocation(line: 1184, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1184, column: 13)
!2106 = !DILocation(line: 1184, column: 33, scope: !2105)
!2107 = !DILocation(line: 1184, column: 48, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2105, file: !3, discriminator: 1)
!2109 = !DILocation(line: 1184, column: 52, scope: !2108)
!2110 = !DILocation(line: 1184, column: 13, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2100, file: !3, discriminator: 1)
!2112 = !DILocation(line: 1188, column: 29, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1188, column: 13)
!2114 = !DILocation(line: 1188, column: 13, scope: !2113)
!2115 = !DILocation(line: 1188, column: 13, scope: !2100)
!2116 = !DILocation(line: 1189, column: 13, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1189, column: 13)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1188, column: 81)
!2119 = !DILocation(line: 1189, column: 13, scope: !2118)
!2120 = !DILocation(line: 1189, column: 13, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2117, file: !3, discriminator: 1)
!2122 = !DILocation(line: 1190, column: 40, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1190, column: 17)
!2124 = !DILocation(line: 1190, column: 63, scope: !2123)
!2125 = !DILocation(line: 1191, column: 17, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 1190, column: 211)
!2127 = !DILocation(line: 1192, column: 50, scope: !2126)
!2128 = !DILocation(line: 1193, column: 74, scope: !2126)
!2129 = !DILocation(line: 1193, column: 40, scope: !2126)
!2130 = !DILocation(line: 1193, column: 49, scope: !2126)
!2131 = !DILocation(line: 1194, column: 13, scope: !2126)
!2132 = !DILocation(line: 1196, column: 87, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2134, file: !3, discriminator: 1)
!2134 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1196, column: 17)
!2135 = !DILocation(line: 1196, column: 28, scope: !2134)
!2136 = !DILocation(line: 1196, column: 39, scope: !2134)
!2137 = !DILocation(line: 1196, column: 103, scope: !2133)
!2138 = !DILocation(line: 1196, column: 60, scope: !2134)
!2139 = !DILocation(line: 1197, column: 17, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 1197, column: 17)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1196, column: 111)
!2142 = !DILocation(line: 1197, column: 17, scope: !2141)
!2143 = !DILocation(line: 1197, column: 17, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2140, file: !3, discriminator: 1)
!2145 = !DILocation(line: 1198, column: 56, scope: !2141)
!2146 = !DILocation(line: 1199, column: 17, scope: !2141)
!2147 = !DILocation(line: 1200, column: 50, scope: !2141)
!2148 = !DILocation(line: 1201, column: 74, scope: !2141)
!2149 = !DILocation(line: 1201, column: 40, scope: !2141)
!2150 = !DILocation(line: 1201, column: 49, scope: !2141)
!2151 = !DILocation(line: 1202, column: 13, scope: !2141)
!2152 = !DILocation(line: 1182, column: 5, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2095, file: !3, discriminator: 2)
!2154 = distinct !{!2154, !2091, !2155}
!2155 = !DILocation(line: 1231, column: 5, scope: !2092)
!2156 = !DILocation(line: 1234, column: 66, scope: !2047)
!2157 = !DILocation(line: 1236, column: 34, scope: !2067)
!2158 = !DILocation(line: 1236, column: 9, scope: !2067)
!2159 = !DILocation(line: 1234, column: 5, scope: !2047)
!2160 = !DILocation(line: 1236, column: 73, scope: !2067)
!2161 = !DILocation(line: 1236, column: 47, scope: !2067)
!2162 = !DILocation(line: 1236, column: 9, scope: !2047)
!2163 = !DILocation(line: 1240, column: 56, scope: !2066)
!2164 = !DILocation(line: 1242, column: 9, scope: !2066)
!2165 = !DILocation(line: 1243, column: 36, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1243, column: 13)
!2167 = !DILocation(line: 1243, column: 49, scope: !2166)
!2168 = !DILocation(line: 1243, column: 13, scope: !2066)
!2169 = !DILocation(line: 1247, column: 80, scope: !2066)
!2170 = !DILocation(line: 1247, column: 25, scope: !2066)
!2171 = !DILocation(line: 1247, column: 90, scope: !2066)
!2172 = !DILocation(line: 1247, column: 23, scope: !2066)
!2173 = !DILocation(line: 1247, column: 14, scope: !2066)
!2174 = !DILocation(line: 1248, column: 64, scope: !2066)
!2175 = !DILocation(line: 1248, column: 23, scope: !2066)
!2176 = !DILocation(line: 1250, column: 31, scope: !2066)
!2177 = !{!2178, !352, i64 0}
!2178 = !{!"_avdtp_service_capability", !352, i64 0, !352, i64 1}
!2179 = !DILocation(line: 1251, column: 28, scope: !2066)
!2180 = !DILocation(line: 1251, column: 85, scope: !2066)
!2181 = !{!2178, !352, i64 1}
!2182 = !DILocation(line: 1251, column: 71, scope: !2066)
!2183 = !DILocation(line: 1251, column: 69, scope: !2066)
!2184 = !DILocation(line: 1251, column: 9, scope: !2066)
!2185 = !DILocation(line: 1253, column: 21, scope: !2066)
!2186 = !DILocation(line: 1255, column: 41, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1255, column: 13)
!2188 = !{!2189, !390, i64 106}
!2189 = !{!"a2dp_conn", !352, i64 0, !2190, i64 6, !386, i64 8, !2191, i64 104}
!2190 = !{!"", !352, i64 0, !352, i64 0, !352, i64 0}
!2191 = !{!"a2dp_media", !2192, i64 0, !389, i64 8, !389, i64 12, !628, i64 16, !352, i64 20, !352, i64 20, !352, i64 21}
!2192 = !{!"", !390, i64 0, !390, i64 2, !628, i64 4}
!2193 = !DILocation(line: 1255, column: 49, scope: !2187)
!2194 = !DILocation(line: 1255, column: 13, scope: !2066)
!2195 = !DILocation(line: 1256, column: 78, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1255, column: 74)
!2197 = !DILocation(line: 1256, column: 76, scope: !2196)
!2198 = !DILocation(line: 1257, column: 35, scope: !2196)
!2199 = !DILocation(line: 1258, column: 26, scope: !2196)
!2200 = !DILocation(line: 1258, column: 33, scope: !2196)
!2201 = !DILocation(line: 1259, column: 32, scope: !2196)
!2202 = !DILocation(line: 1259, column: 13, scope: !2196)
!2203 = !DILocation(line: 1260, column: 21, scope: !2196)
!2204 = !DILocation(line: 1262, column: 9, scope: !2196)
!2205 = !DILocation(line: 1270, column: 48, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1269, column: 13)
!2207 = !DILocation(line: 1270, column: 46, scope: !2206)
!2208 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 1269, column: 13, scope: !2206)
!2210 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !2209)
!2211 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !2209)
!2212 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !2209)
!2213 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !2209)
!2214 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !2209)
!2215 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !2209)
!2216 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !2209)
!2217 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !2209)
!2218 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !2209)
!2219 = !DILocation(line: 1275, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1275, column: 13)
!2221 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 1273, column: 12)
!2222 = !DILocation(line: 1275, column: 13, scope: !2221)
!2223 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 1276, column: 17, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 1276, column: 17)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 1275, column: 22)
!2227 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !2224)
!2228 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !2224)
!2229 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !2224)
!2230 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !2224)
!2231 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !2224)
!2232 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !2224)
!2233 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !2224)
!2234 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !2224)
!2235 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !2224)
!2236 = !DILocation(line: 1276, column: 17, scope: !2226)
!2237 = !DILocation(line: 990, column: 5, scope: !361, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 1281, column: 17, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1281, column: 17)
!2240 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 1280, column: 16)
!2241 = !DILocation(line: 986, column: 22, scope: !361, inlinedAt: !2238)
!2242 = !DILocation(line: 993, column: 5, scope: !361, inlinedAt: !2238)
!2243 = !DILocation(line: 995, column: 28, scope: !361, inlinedAt: !2238)
!2244 = !DILocation(line: 995, column: 40, scope: !361, inlinedAt: !2238)
!2245 = !DILocation(line: 996, column: 5, scope: !361, inlinedAt: !2238)
!2246 = !DILocation(line: 984, column: 75, scope: !361, inlinedAt: !2238)
!2247 = !DILocation(line: 990, column: 21, scope: !361, inlinedAt: !2238)
!2248 = !DILocation(line: 1003, column: 5, scope: !361, inlinedAt: !2238)
!2249 = !DILocation(line: 1011, column: 1, scope: !361, inlinedAt: !2238)
!2250 = !DILocation(line: 1281, column: 17, scope: !2240)
!2251 = !DILocation(line: 1289, column: 1, scope: !2047)
