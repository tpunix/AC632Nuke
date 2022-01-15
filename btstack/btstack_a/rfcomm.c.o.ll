; ModuleID = 'rfcomm.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/rfcomm.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.rfcomm_stack_t = type { void (i8*, i8, i16, i8*, i16)*, %struct.btstack_linked_item*, %struct.btstack_linked_item*, %struct.btstack_linked_item*, i16 }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.rfcomm_channel_t = type { %struct.btstack_linked_item, %struct.rfcomm_multiplexer_t*, %struct.rfc_channel_core_data_t, i16, %struct.rfcomm_service_t*, void (i8, i16, i8*, i16)*, i8* }
%struct.rfcomm_multiplexer_t = type { %struct.btstack_linked_item, i16, %struct.multiplexer_core_data_t }
%struct.multiplexer_core_data_t = type { [6 x i8], i16, i8, i8, i8, i8, i16 }
%struct.rfc_channel_core_data_t = type { i8, [6 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.rfcomm_rpn_data }
%struct.rfcomm_rpn_data = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rfcomm_service_t = type { %struct.btstack_linked_item, i8, i8, i8, i16, i8*, void (i8, i16, i8*, i16)* }
%struct.rfcomm_channel_event = type { i32 }
%struct.rfcomm_channel_event_pn = type { %struct.rfcomm_channel_event, i16, i8, i8 }
%struct.rfcomm_channel_event_rpn = type { %struct.rfcomm_channel_event, %struct.rfcomm_rpn_data }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@rfcomm_init_credits = internal unnamed_addr global i16 48, section ".bt_stack_data", align 2, !dbg !208
@rfcomm_credits_base = internal unnamed_addr global i8 5, section ".bt_stack_data", align 1, !dbg !210
@rfcomm_stack = internal unnamed_addr global %struct.rfcomm_stack_t* null, section ".bt_stack_bss", align 4, !dbg !192
@config_asser = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.1 = private unnamed_addr constant [116 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/rfcomm.c\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ASSERT-FAILD: multiplexer \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ASSERT-FAILD: channel \00", align 1
@rfcomm_debug_enable = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"[RFC-info] :rfcomm L2CAP_EVENT_CHANNEL_CLOSED  %u\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"<RFC-error> : rfcomm_service_for_channel get error %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"[RFC-info] :rfc channel size %d,%d\0A\0A\00", align 1
@str = private unnamed_addr constant [47 x i8] c"[RFC-info] :-----rfcomm_register_service  2222\00"
@str.17 = private unnamed_addr constant [48 x i8] c"[RFC-info] :-----rfcomm_register_service  11111\00"
@str.18 = private unnamed_addr constant [41 x i8] c"[RFC-info] :-----rfcomm_register_service\00"
@str.19 = private unnamed_addr constant [38 x i8] c"<RFC-error> :\0A -------rfc create err\0A\00"
@str.20 = private unnamed_addr constant [35 x i8] c"[RFC-info] :\0Arfc hfp conn open!!!\0A\00"
@str.21 = private unnamed_addr constant [51 x i8] c"<RFC-error> : rfcomm_channel_for_channel get error\00"
@str.22 = private unnamed_addr constant [72 x i8] c"<RFC-error> :rfcomm MONITOR_CHANNEL_CREATE but no multiplexer prepared\0A\00"
@str.23 = private unnamed_addr constant [35 x i8] c"[RFC-info] :rfcomm channel create\0A\00"
@str.24 = private unnamed_addr constant [40 x i8] c"[RFC-info] :Multiplexer up and running\0A\00"

; Function Attrs: nounwind optsize
define hidden void @rfcomm_change_credits_setting(i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !216 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !220, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i8 %1, metadata !221, metadata !DIExpression()), !dbg !223
  store i16 %0, i16* @rfcomm_init_credits, align 2, !dbg !224, !tbaa !225
  store i8 %1, i8* @rfcomm_credits_base, align 1, !dbg !229, !tbaa !230
  ret void, !dbg !231
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
define hidden %struct.rfcomm_channel_t* @rfcomm_channel_for_rfcomm_cid(i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !232 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !236, metadata !DIExpression()), !dbg !242
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !243, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !246
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !237, metadata !DIExpression()), !dbg !247
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !248
  br i1 %5, label %20, label %6, !dbg !248

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !250

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !251
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !237, metadata !DIExpression()), !dbg !247
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !248
  br i1 %10, label %18, label %11, !dbg !248, !llvm.loop !253

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %4, %6 ]
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %17, metadata !238, metadata !DIExpression()), !dbg !250
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 4, !dbg !256
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !256
  %15 = load i16, i16* %14, align 4, !dbg !256, !tbaa !258
  %16 = icmp eq i16 %15, %0, !dbg !263
  %17 = bitcast %struct.btstack_linked_item* %12 to %struct.rfcomm_channel_t*, !dbg !264
  br i1 %16, label %18, label %7

; <label>:18:                                     ; preds = %11, %7
  %19 = phi %struct.rfcomm_channel_t* [ %17, %11 ], [ null, %7 ]
  br label %20, !dbg !265

; <label>:20:                                     ; preds = %18, %1
  %21 = phi %struct.rfcomm_channel_t* [ null, %1 ], [ %19, %18 ]
  ret %struct.rfcomm_channel_t* %21, !dbg !265
}

; Function Attrs: alwaysinline nounwind optsize
define hidden void @rfcomm_init(%struct.rfcomm_stack_t*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !266 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_stack_t* %0, metadata !270, metadata !DIExpression()), !dbg !271
  store %struct.rfcomm_stack_t* %0, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !272, !tbaa !244
  %2 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %0, i32 0, i32 1, !dbg !273
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %0, i32 0, i32 0, !dbg !274
  %4 = bitcast %struct.btstack_linked_item** %2 to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 14, i32 4, i1 false), !dbg !276
  store void (i8*, i8, i16, i8*, i16)* @app_rfcomm_packet_handler, void (i8*, i8, i16, i8*, i16)** %3, align 4, !dbg !275, !tbaa !277
  ret void, !dbg !279
}

; Function Attrs: nounwind optsize readnone
define internal void @app_rfcomm_packet_handler(i8* nocapture, i8 zeroext, i16 zeroext, i8* nocapture, i16 zeroext) #4 section ".bt_stack_code" !dbg !280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !282, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8 %1, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i16 %2, metadata !284, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i8* %3, metadata !285, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i16 %4, metadata !286, metadata !DIExpression()), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @rfcomm_release() local_unnamed_addr #5 section ".bt_stack_code" !dbg !293 {
  ret void, !dbg !297
}

; Function Attrs: nounwind optsize
define hidden i32 @rfcomm_send_cretits_by_profile(i16 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !298 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !302, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i16 %1, metadata !303, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i8 %2, metadata !304, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i16 %0, metadata !236, metadata !DIExpression()), !dbg !309
  %4 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !311, !tbaa !244
  %5 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %4, i32 0, i32 2, !dbg !312
  %6 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %5, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !237, metadata !DIExpression()), !dbg !313
  %7 = icmp eq %struct.btstack_linked_item* %6, null, !dbg !314
  br i1 %7, label %29, label %8, !dbg !314

; <label>:8:                                      ; preds = %3
  br label %13, !dbg !315

; <label>:9:                                      ; preds = %13
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 0, i32 0, !dbg !316
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !237, metadata !DIExpression()), !dbg !313
  %12 = icmp eq %struct.btstack_linked_item* %11, null, !dbg !314
  br i1 %12, label %28, label %13, !dbg !314, !llvm.loop !253

; <label>:13:                                     ; preds = %9, %8
  %14 = phi %struct.btstack_linked_item* [ %11, %9 ], [ %6, %8 ]
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 4, !dbg !315
  %16 = bitcast %struct.btstack_linked_item* %15 to i16*, !dbg !315
  %17 = load i16, i16* %16, align 4, !dbg !315, !tbaa !258
  %18 = icmp eq i16 %17, %0, !dbg !317
  br i1 %18, label %19, label %9

; <label>:19:                                     ; preds = %13
  %20 = bitcast %struct.btstack_linked_item* %14 to %struct.rfcomm_channel_t*, !dbg !318
  %21 = icmp eq i8 %2, 0, !dbg !319
  %22 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 6
  %23 = bitcast %struct.btstack_linked_item* %22 to i8*
  %24 = zext i1 %21 to i8
  store i8 %24, i8* %23, align 4, !dbg !321, !tbaa !323
  %25 = trunc i16 %1 to i8
  %26 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %20, i32 0, i32 2, i32 7
  store i8 %25, i8* %26, align 2, !tbaa !324
  %27 = tail call i32 bitcast (i32 (...)* @stack_handout_credit to i32 ()*)() #13, !dbg !325
  br label %29, !dbg !326

; <label>:28:                                     ; preds = %9
  br label %29, !dbg !327

; <label>:29:                                     ; preds = %28, %19, %3
  %30 = phi i32 [ 0, %19 ], [ 115, %3 ], [ 115, %28 ]
  ret i32 %30, !dbg !327
}

; Function Attrs: optsize
declare i32 @stack_handout_credit(...) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden i32 @rfcomm_send_internal(i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !328 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !335, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i8* %1, metadata !336, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i16 %2, metadata !337, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i16 %0, metadata !236, metadata !DIExpression()), !dbg !346
  %4 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !348, !tbaa !244
  %5 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %4, i32 0, i32 2, !dbg !349
  %6 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %5, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !237, metadata !DIExpression()), !dbg !350
  %7 = icmp eq %struct.btstack_linked_item* %6, null, !dbg !351
  br i1 %7, label %47, label %8, !dbg !351

; <label>:8:                                      ; preds = %3
  br label %13, !dbg !352

; <label>:9:                                      ; preds = %13
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 0, i32 0, !dbg !353
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !237, metadata !DIExpression()), !dbg !350
  %12 = icmp eq %struct.btstack_linked_item* %11, null, !dbg !351
  br i1 %12, label %46, label %13, !dbg !351, !llvm.loop !253

; <label>:13:                                     ; preds = %9, %8
  %14 = phi %struct.btstack_linked_item* [ %11, %9 ], [ %6, %8 ]
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 4, !dbg !352
  %16 = bitcast %struct.btstack_linked_item* %15 to i16*, !dbg !352
  %17 = load i16, i16* %16, align 4, !dbg !352, !tbaa !258
  %18 = icmp eq i16 %17, %0, !dbg !354
  br i1 %18, label %19, label %9

; <label>:19:                                     ; preds = %13
  %20 = bitcast %struct.btstack_linked_item* %14 to %struct.rfcomm_channel_t*, !dbg !355
  %21 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %20, i32 0, i32 2, i32 6, !dbg !356
  %22 = load i8, i8* %21, align 1, !dbg !356, !tbaa !358
  %23 = icmp eq i8 %22, 0, !dbg !359
  br i1 %23, label %47, label %24, !dbg !360

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 5, !dbg !361
  %26 = bitcast %struct.btstack_linked_item* %25 to i8*, !dbg !361
  %27 = add i8 %22, -1, !dbg !362
  store i8 %27, i8* %21, align 1, !dbg !362, !tbaa !358
  store i8 15, i8* %26, align 4, !dbg !363, !tbaa !366
  call void @llvm.dbg.value(metadata i32 1, metadata !338, metadata !DIExpression()), !dbg !345
  %28 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !367
  %29 = bitcast %struct.btstack_linked_item* %28 to %struct.rfcomm_multiplexer_t**, !dbg !367
  %30 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %29, align 4, !dbg !367, !tbaa !368
  %31 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %20, i32 0, i32 2, i32 4, !dbg !369
  %32 = load i8, i8* %31, align 1, !dbg !369, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %30, metadata !371, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i8 %32, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %1, metadata !377, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i16 %2, metadata !378, metadata !DIExpression()), !dbg !384
  %33 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %30, i32 0, i32 2, i32 3, !dbg !385
  %34 = load i8, i8* %33, align 1, !dbg !385, !tbaa !386
  %35 = shl i8 %34, 1, !dbg !389
  %36 = shl i8 %32, 2, !dbg !390
  %37 = or i8 %36, %35, !dbg !391
  %38 = or i8 %37, 1, !dbg !391
  call void @llvm.dbg.value(metadata i8 %38, metadata !379, metadata !DIExpression()), !dbg !392
  %39 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %30, i8 zeroext %38, i8 zeroext -17, i8 zeroext 0, i8* %1, i16 zeroext %2) #13, !dbg !393
  call void @llvm.dbg.value(metadata i32 %39, metadata !340, metadata !DIExpression()), !dbg !394
  %40 = icmp eq i32 %39, 0, !dbg !395
  br i1 %40, label %47, label %41, !dbg !397

; <label>:41:                                     ; preds = %24
  %42 = load i8, i8* %21, align 1, !dbg !398, !tbaa !358
  %43 = add i8 %42, 1, !dbg !398
  store i8 %43, i8* %21, align 1, !dbg !398, !tbaa !358
  %44 = load i8, i8* %26, align 4, !dbg !400, !tbaa !366
  %45 = add i8 %44, 1, !dbg !400
  store i8 %45, i8* %26, align 4, !dbg !400, !tbaa !366
  br label %47, !dbg !401

; <label>:46:                                     ; preds = %9
  br label %47, !dbg !402

; <label>:47:                                     ; preds = %46, %41, %24, %19, %3
  %48 = phi i32 [ 114, %19 ], [ 0, %24 ], [ %39, %41 ], [ 115, %3 ], [ 115, %46 ]
  ret i32 %48, !dbg !402
}

; Function Attrs: nounwind optsize
define hidden void @rfcomm_create_channel2(i8*, void (i8, i16, i8*, i16)*, [6 x i8]*, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !408, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !409, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata [6 x i8]* %2, metadata !410, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8 %3, metadata !411, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i8 %4, metadata !412, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i8 %5, metadata !413, metadata !DIExpression()), !dbg !421
  %7 = tail call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_for_addr([6 x i8]* %2) #14, !dbg !422
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %7, metadata !414, metadata !DIExpression()), !dbg !423
  %8 = icmp eq %struct.rfcomm_multiplexer_t* %7, null, !dbg !424
  br i1 %8, label %9, label %25, !dbg !426

; <label>:9:                                      ; preds = %6
  %10 = tail call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_create_for_addr([6 x i8]* %2) #14, !dbg !427
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %10, metadata !414, metadata !DIExpression()), !dbg !423
  %11 = icmp eq %struct.rfcomm_multiplexer_t* %10, null, !dbg !429
  br i1 %11, label %12, label %19, !dbg !431

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* @config_asser, align 4, !dbg !432, !tbaa !437
  %14 = icmp eq i32 %13, 0, !dbg !432
  br i1 %14, label %18, label %15, !dbg !439

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i32 0, i32 0), i32 2046) #14, !dbg !441
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #14, !dbg !446
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #13, !dbg !448
  br label %55, !dbg !441

; <label>:18:                                     ; preds = %12
  tail call fastcc void @cpu_reset() #14, !dbg !450
  br label %55, !dbg !450

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %10, i32 0, i32 2, i32 3, !dbg !455
  store i8 1, i8* %20, align 1, !dbg !456, !tbaa !386
  %21 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %10, i32 0, i32 2, i32 2, !dbg !457
  %22 = load i8, i8* %21, align 2, !dbg !458
  %23 = and i8 %22, -16, !dbg !458
  %24 = or i8 %23, 2, !dbg !458
  store i8 %24, i8* %21, align 2, !dbg !458
  br label %25, !dbg !459

; <label>:25:                                     ; preds = %19, %6
  %26 = phi %struct.rfcomm_multiplexer_t* [ %7, %6 ], [ %10, %19 ]
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %26, metadata !414, metadata !DIExpression()), !dbg !423
  %27 = tail call fastcc %struct.rfcomm_channel_t* @rfcomm_channel_create(%struct.rfcomm_multiplexer_t* nonnull %26, %struct.rfcomm_service_t* null, i8 zeroext %3) #14, !dbg !460
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %27, metadata !415, metadata !DIExpression()), !dbg !461
  %28 = icmp eq %struct.rfcomm_channel_t* %27, null, !dbg !462
  br i1 %28, label %29, label %36, !dbg !464

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* @config_asser, align 4, !dbg !465, !tbaa !437
  %31 = icmp eq i32 %30, 0, !dbg !465
  br i1 %31, label %35, label %32, !dbg !470

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i32 0, i32 0), i32 2056) #14, !dbg !472
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #14, !dbg !477
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #13, !dbg !479
  br label %55, !dbg !472

; <label>:35:                                     ; preds = %29
  tail call fastcc void @cpu_reset() #14, !dbg !481
  br label %55, !dbg !481

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %27, i32 0, i32 6, !dbg !486
  store i8* %0, i8** %37, align 4, !dbg !487, !tbaa !488
  %38 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %27, i32 0, i32 2, i32 9, !dbg !489
  store i8 %4, i8* %38, align 4, !dbg !490, !tbaa !323
  %39 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %27, i32 0, i32 2, i32 7, !dbg !491
  store i8 %5, i8* %39, align 2, !dbg !492, !tbaa !324
  %40 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %27, i32 0, i32 5, !dbg !493
  store void (i8, i16, i8*, i16)* %1, void (i8, i16, i8*, i16)** %40, align 4, !dbg !494, !tbaa !495
  %41 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %26, i32 0, i32 2, i32 2, !dbg !496
  %42 = load i8, i8* %41, align 2, !dbg !496
  %43 = and i8 %42, 15, !dbg !496
  %44 = icmp eq i8 %43, 7, !dbg !498
  %45 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %27, i32 0, i32 2, i32 10
  br i1 %44, label %54, label %46, !dbg !499

; <label>:46:                                     ; preds = %36
  store i8 2, i8* %45, align 1, !dbg !500, !tbaa !502
  %47 = load i8, i8* %41, align 2, !dbg !503
  %48 = and i8 %47, 15, !dbg !503
  %49 = icmp eq i8 %48, 2, !dbg !505
  br i1 %49, label %50, label %55, !dbg !506

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 0, !dbg !507
  %52 = tail call zeroext i16 @l2cap_max_mtu() #13, !dbg !509
  %53 = tail call zeroext i8 @l2cap_create_channel_internal(i8* %0, void (i8, i16, i8*, i16)* nonnull @rfcomm_packet_handler, i8* %51, i16 zeroext 3, i16 zeroext %52) #13, !dbg !510
  br label %55, !dbg !512

; <label>:54:                                     ; preds = %36
  store i8 3, i8* %45, align 1, !dbg !513, !tbaa !502
  tail call fastcc void @rfcomm_run() #14, !dbg !514
  br label %55, !dbg !515

; <label>:55:                                     ; preds = %54, %50, %46, %35, %32, %18, %15
  ret void, !dbg !516
}

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_for_addr([6 x i8]* nocapture readonly) unnamed_addr #2 section ".bt_stack_code" !dbg !518 {
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !522, metadata !DIExpression()), !dbg !528
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !529, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 1, !dbg !530
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !523, metadata !DIExpression()), !dbg !531
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !532
  br i1 %5, label %20, label %6, !dbg !532

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0
  br label %12, !dbg !532

; <label>:8:                                      ; preds = %12
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %13, i32 0, i32 0, !dbg !534
  %10 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %9, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %10, metadata !523, metadata !DIExpression()), !dbg !531
  %11 = icmp eq %struct.btstack_linked_item* %10, null, !dbg !532
  br i1 %11, label %18, label %12, !dbg !532, !llvm.loop !536

; <label>:12:                                     ; preds = %8, %6
  %13 = phi %struct.btstack_linked_item* [ %4, %6 ], [ %10, %8 ]
  %14 = bitcast %struct.btstack_linked_item* %13 to %struct.rfcomm_multiplexer_t*, !dbg !539
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %14, metadata !524, metadata !DIExpression()), !dbg !540
  %15 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %14, i32 0, i32 2, i32 0, i32 0, !dbg !541
  %16 = tail call i32 @memcmp(i8* %7, i8* %15, i32 6) #14, !dbg !541
  %17 = icmp eq i32 %16, 0, !dbg !543
  br i1 %17, label %18, label %8

; <label>:18:                                     ; preds = %12, %8
  %19 = phi %struct.rfcomm_multiplexer_t* [ %14, %12 ], [ null, %8 ]
  br label %20, !dbg !544

; <label>:20:                                     ; preds = %18, %1
  %21 = phi %struct.rfcomm_multiplexer_t* [ null, %1 ], [ %19, %18 ]
  ret %struct.rfcomm_multiplexer_t* %21, !dbg !544
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_create_for_addr([6 x i8]* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !545 {
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !547, metadata !DIExpression()), !dbg !549
  %2 = tail call i8* @btstack_memory_rfcomm_multiplexer_get() #13, !dbg !550
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %5, metadata !548, metadata !DIExpression()), !dbg !551
  %3 = icmp eq i8* %2, null, !dbg !552
  br i1 %3, label %20, label %4, !dbg !554

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.rfcomm_multiplexer_t*, !dbg !550
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %5, metadata !555, metadata !DIExpression()), !dbg !560
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %2, i8 0, i32 20, i32 4, i1 false) #12, !dbg !562
  %6 = getelementptr inbounds i8, i8* %2, i32 14, !dbg !563
  store i8 1, i8* %6, align 2, !dbg !564
  %7 = getelementptr inbounds i8, i8* %2, i32 17, !dbg !565
  store i8 0, i8* %7, align 1, !dbg !566, !tbaa !567
  %8 = tail call zeroext i16 @l2cap_max_mtu() #13, !dbg !568
  call void @llvm.dbg.value(metadata i16 %8, metadata !569, metadata !DIExpression()), !dbg !575
  %9 = add i16 %8, -5, !dbg !578
  call void @llvm.dbg.value(metadata i16 %9, metadata !574, metadata !DIExpression()), !dbg !579
  %10 = icmp ugt i16 %9, 127, !dbg !580
  %11 = add i16 %8, -6, !dbg !582
  call void @llvm.dbg.value(metadata i16 %11, metadata !574, metadata !DIExpression()), !dbg !579
  %12 = select i1 %10, i16 %11, i16 %9, !dbg !584
  call void @llvm.dbg.value(metadata i16 %12, metadata !574, metadata !DIExpression()), !dbg !579
  %13 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !585
  %14 = bitcast i8* %13 to i16*, !dbg !585
  store i16 %12, i16* %14, align 4, !dbg !586, !tbaa !587
  %15 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !588
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0, !dbg !588
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 6, i32 1, i1 false), !dbg !588
  %17 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !589, !tbaa !244
  %18 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %17, i32 0, i32 1, !dbg !589
  %19 = bitcast i8* %2 to %struct.btstack_linked_item*, !dbg !589
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** %18, %struct.btstack_linked_item* %19) #13, !dbg !589
  br label %20, !dbg !590

; <label>:20:                                     ; preds = %4, %1
  %21 = phi %struct.rfcomm_multiplexer_t* [ %5, %4 ], [ null, %1 ]
  ret %struct.rfcomm_multiplexer_t* %21, !dbg !591
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #8 !dbg !592 {
  tail call void @p33_soft_reset() #13, !dbg !593
  ret void, !dbg !594
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.rfcomm_channel_t* @rfcomm_channel_create(%struct.rfcomm_multiplexer_t*, %struct.rfcomm_service_t*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !595 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !599, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.rfcomm_service_t* %1, metadata !600, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i8 %2, metadata !601, metadata !DIExpression()), !dbg !605
  %4 = tail call i8* @btstack_memory_rfcomm_channel_get() #13, !dbg !606
  %5 = bitcast i8* %4 to %struct.rfcomm_channel_t*, !dbg !606
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %5, metadata !602, metadata !DIExpression()), !dbg !607
  %6 = icmp eq i8* %4, null, !dbg !608
  br i1 %6, label %69, label %7, !dbg !610

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %5, metadata !611, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !616, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata %struct.rfcomm_service_t* %1, metadata !617, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8 %2, metadata !618, metadata !DIExpression()), !dbg !623
  %8 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !624, !tbaa !244
  %9 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %8, i32 0, i32 4, !dbg !626
  %10 = load i16, i16* %9, align 4, !dbg !626, !tbaa !627
  %11 = icmp eq i16 %10, 0, !dbg !628
  br i1 %11, label %12, label %13, !dbg !629

; <label>:12:                                     ; preds = %7
  store i16 1, i16* %9, align 4, !dbg !630, !tbaa !627
  br label %13, !dbg !632

; <label>:13:                                     ; preds = %12, %7
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 0, i32 52, i32 4, i1 false) #12, !dbg !633
  %14 = getelementptr inbounds i8, i8* %4, i32 25, !dbg !634
  store i8 1, i8* %14, align 1, !dbg !635, !tbaa !502
  %15 = getelementptr inbounds i8, i8* %4, i32 28, !dbg !636
  %16 = bitcast i8* %15 to i16*, !dbg !636
  store i16 0, i16* %16, align 4, !dbg !637, !tbaa !638
  %17 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !639
  %18 = bitcast i8* %17 to %struct.rfcomm_multiplexer_t**, !dbg !639
  store %struct.rfcomm_multiplexer_t* %0, %struct.rfcomm_multiplexer_t** %18, align 4, !dbg !640, !tbaa !368
  %19 = getelementptr inbounds i8, i8* %4, i32 40, !dbg !641
  %20 = bitcast i8* %19 to %struct.rfcomm_service_t**, !dbg !641
  store %struct.rfcomm_service_t* %1, %struct.rfcomm_service_t** %20, align 4, !dbg !642, !tbaa !643
  %21 = load i16, i16* %9, align 4, !dbg !644, !tbaa !627
  %22 = add i16 %21, 1, !dbg !644
  store i16 %22, i16* %9, align 4, !dbg !644, !tbaa !627
  %23 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !645
  %24 = bitcast i8* %23 to i16*, !dbg !645
  store i16 %21, i16* %24, align 4, !dbg !646, !tbaa !258
  %25 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 1, !dbg !647
  %26 = load i16, i16* %25, align 4, !dbg !647, !tbaa !587
  %27 = getelementptr inbounds i8, i8* %4, i32 38, !dbg !648
  %28 = bitcast i8* %27 to i16*, !dbg !648
  store i16 %26, i16* %28, align 2, !dbg !649, !tbaa !650
  %29 = getelementptr inbounds i8, i8* %4, i32 23, !dbg !651
  store i8 0, i8* %29, align 1, !dbg !652, !tbaa !653
  %30 = getelementptr inbounds i8, i8* %4, i32 21, !dbg !654
  store i8 0, i8* %30, align 1, !dbg !655, !tbaa !358
  %31 = getelementptr inbounds i8, i8* %4, i32 20, !dbg !656
  store i8 0, i8* %31, align 4, !dbg !657, !tbaa !366
  %32 = load i16, i16* @rfcomm_init_credits, align 2, !dbg !658, !tbaa !225
  %33 = trunc i16 %32 to i8, !dbg !658
  %34 = getelementptr inbounds i8, i8* %4, i32 22, !dbg !659
  store i8 %33, i8* %34, align 2, !dbg !660, !tbaa !324
  %35 = getelementptr inbounds i8, i8* %4, i32 24, !dbg !661
  store i8 0, i8* %35, align 4, !dbg !662, !tbaa !323
  %36 = icmp eq %struct.rfcomm_service_t* %1, null, !dbg !663
  br i1 %36, label %58, label %37, !dbg !665

; <label>:37:                                     ; preds = %13
  %38 = getelementptr inbounds %struct.rfcomm_service_t, %struct.rfcomm_service_t* %1, i32 0, i32 6, !dbg !666
  %39 = bitcast void (i8, i16, i8*, i16)** %38 to i32*, !dbg !666
  %40 = load i32, i32* %39, align 4, !dbg !666, !tbaa !668
  %41 = getelementptr inbounds i8, i8* %4, i32 44, !dbg !670
  %42 = bitcast i8* %41 to i32*, !dbg !671
  store i32 %40, i32* %42, align 4, !dbg !671, !tbaa !495
  %43 = getelementptr inbounds i8, i8* %4, i32 18, !dbg !672
  store i8 0, i8* %43, align 2, !dbg !673, !tbaa !674
  %44 = shl i8 %2, 1, !dbg !675
  %45 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 3, !dbg !676
  %46 = load i8, i8* %45, align 1, !dbg !676, !tbaa !386
  %47 = or i8 %46, %44, !dbg !677
  %48 = getelementptr inbounds i8, i8* %4, i32 19, !dbg !678
  store i8 %47, i8* %48, align 1, !dbg !679, !tbaa !370
  %49 = getelementptr inbounds %struct.rfcomm_service_t, %struct.rfcomm_service_t* %1, i32 0, i32 4, !dbg !680
  %50 = load i16, i16* %49, align 4, !dbg !680, !tbaa !682
  %51 = icmp ugt i16 %26, %50, !dbg !683
  br i1 %51, label %52, label %53, !dbg !684

; <label>:52:                                     ; preds = %37
  store i16 %50, i16* %28, align 2, !dbg !685, !tbaa !650
  br label %53, !dbg !687

; <label>:53:                                     ; preds = %52, %37
  %54 = getelementptr inbounds %struct.rfcomm_service_t, %struct.rfcomm_service_t* %1, i32 0, i32 2, !dbg !688
  %55 = load i8, i8* %54, align 1, !dbg !688, !tbaa !689
  store i8 %55, i8* %35, align 4, !dbg !690, !tbaa !323
  %56 = getelementptr inbounds %struct.rfcomm_service_t, %struct.rfcomm_service_t* %1, i32 0, i32 3, !dbg !691
  %57 = load i8, i8* %56, align 2, !dbg !691, !tbaa !692
  store i8 %57, i8* %34, align 2, !dbg !693, !tbaa !324
  br label %66, !dbg !694

; <label>:58:                                     ; preds = %13
  %59 = getelementptr inbounds i8, i8* %4, i32 18, !dbg !695
  store i8 1, i8* %59, align 2, !dbg !697, !tbaa !674
  %60 = shl i8 %2, 1, !dbg !698
  %61 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 3, !dbg !699
  %62 = load i8, i8* %61, align 1, !dbg !699, !tbaa !386
  %63 = or i8 %62, %60, !dbg !700
  %64 = xor i8 %63, 1, !dbg !700
  %65 = getelementptr inbounds i8, i8* %4, i32 19, !dbg !701
  store i8 %64, i8* %65, align 1, !dbg !702, !tbaa !370
  br label %66

; <label>:66:                                     ; preds = %58, %53
  %67 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %8, i32 0, i32 2, !dbg !703
  %68 = bitcast i8* %4 to %struct.btstack_linked_item*, !dbg !703
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** %67, %struct.btstack_linked_item* %68) #13, !dbg !703
  br label %69, !dbg !704

; <label>:69:                                     ; preds = %66, %3
  %70 = phi %struct.rfcomm_channel_t* [ %5, %66 ], [ null, %3 ]
  ret %struct.rfcomm_channel_t* %70, !dbg !705
}

; Function Attrs: optsize
declare zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal void @rfcomm_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".bt_stack_code" !dbg !706 {
  %5 = alloca %struct.rfcomm_channel_event, align 4
  %6 = alloca %struct.rfcomm_channel_event_pn, align 4
  %7 = alloca %struct.rfcomm_channel_event_rpn, align 4
  %8 = alloca %struct.rfcomm_channel_event, align 4
  %9 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8 %0, metadata !710, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i16 %1, metadata !711, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i8* %2, metadata !712, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i16 %3, metadata !713, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !745
  switch i8 %0, label %315 [
    i8 4, label %10
    i8 6, label %253
  ], !dbg !746

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !725, metadata !DIExpression()), !dbg !747
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %11) #12, !dbg !748
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* null, metadata !729, metadata !DIExpression()), !dbg !749
  %12 = load i8, i8* %2, align 1, !dbg !750, !tbaa !230
  switch i8 %12, label %310 [
    i8 114, label %13
    i8 112, label %55
    i8 116, label %150
    i8 108, label %196
    i8 113, label %197
    i8 121, label %234
  ], !dbg !751

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !752
  call void @bt_flip_addr(i8* nonnull %11, i8* %14) #13, !dbg !753
  %15 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !754
  %16 = load i8, i8* %15, align 1, !dbg !754, !tbaa !230
  %17 = zext i8 %16 to i16, !dbg !754
  %18 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !754
  %19 = load i8, i8* %18, align 1, !dbg !754, !tbaa !230
  %20 = zext i8 %19 to i16, !dbg !754
  %21 = shl nuw i16 %20, 8, !dbg !754
  %22 = or i16 %21, %17, !dbg !754
  call void @llvm.dbg.value(metadata i16 %22, metadata !728, metadata !DIExpression()), !dbg !755
  %23 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !756
  %24 = load i8, i8* %23, align 1, !dbg !756, !tbaa !230
  %25 = zext i8 %24 to i32, !dbg !756
  %26 = getelementptr inbounds i8, i8* %2, i32 11, !dbg !756
  %27 = load i8, i8* %26, align 1, !dbg !756, !tbaa !230
  %28 = zext i8 %27 to i32, !dbg !756
  %29 = shl nuw nsw i32 %28, 8, !dbg !756
  %30 = or i32 %29, %25, !dbg !756
  %31 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !757
  %32 = load i8, i8* %31, align 1, !dbg !757, !tbaa !230
  %33 = zext i8 %32 to i16, !dbg !757
  %34 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !757
  %35 = load i8, i8* %34, align 1, !dbg !757, !tbaa !230
  %36 = zext i8 %35 to i16, !dbg !757
  %37 = shl nuw i16 %36, 8, !dbg !757
  %38 = or i16 %37, %33, !dbg !757
  call void @llvm.dbg.value(metadata i16 %38, metadata !727, metadata !DIExpression()), !dbg !758
  %39 = icmp eq i32 %30, 3, !dbg !759
  br i1 %39, label %40, label %310, !dbg !761

; <label>:40:                                     ; preds = %13
  %41 = call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_for_addr([6 x i8]* nonnull %9) #13, !dbg !762
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %41, metadata !729, metadata !DIExpression()), !dbg !749
  %42 = icmp eq %struct.rfcomm_multiplexer_t* %41, null, !dbg !763
  br i1 %42, label %44, label %43, !dbg !765

; <label>:43:                                     ; preds = %40
  call void @l2cap_decline_connection_internal(i16 zeroext %38, i8 zeroext 4) #13, !dbg !766
  br label %307, !dbg !768

; <label>:44:                                     ; preds = %40
  %45 = call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_create_for_addr([6 x i8]* nonnull %9) #13, !dbg !769
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %45, metadata !729, metadata !DIExpression()), !dbg !749
  %46 = icmp eq %struct.rfcomm_multiplexer_t* %45, null, !dbg !770
  br i1 %46, label %47, label %48, !dbg !772

; <label>:47:                                     ; preds = %44
  call void @l2cap_decline_connection_internal(i16 zeroext %38, i8 zeroext 4) #13, !dbg !773
  br label %307, !dbg !775

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %45, i32 0, i32 2, i32 6, !dbg !776
  store i16 %22, i16* %49, align 2, !dbg !777, !tbaa !778
  %50 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %45, i32 0, i32 2, i32 1, !dbg !779
  store i16 %38, i16* %50, align 2, !dbg !780, !tbaa !781
  %51 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %45, i32 0, i32 2, i32 2, !dbg !782
  %52 = load i8, i8* %51, align 2, !dbg !783
  %53 = and i8 %52, -16, !dbg !783
  %54 = or i8 %53, 5, !dbg !783
  store i8 %54, i8* %51, align 2, !dbg !783
  call void @l2cap_accept_connection_internal(i16 zeroext %38) #13, !dbg !784
  br label %307, !dbg !785

; <label>:55:                                     ; preds = %10
  %56 = getelementptr inbounds i8, i8* %2, i32 11, !dbg !786
  %57 = load i8, i8* %56, align 1, !dbg !786, !tbaa !230
  %58 = zext i8 %57 to i32, !dbg !786
  %59 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !786
  %60 = load i8, i8* %59, align 1, !dbg !786, !tbaa !230
  %61 = zext i8 %60 to i32, !dbg !786
  %62 = shl nuw nsw i32 %61, 8, !dbg !786
  %63 = or i32 %62, %58, !dbg !786
  %64 = icmp eq i32 %63, 3, !dbg !788
  br i1 %64, label %65, label %310, !dbg !789

; <label>:65:                                     ; preds = %55
  %66 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !790
  %67 = load i8, i8* %66, align 1, !dbg !790, !tbaa !230
  call void @llvm.dbg.value(metadata i8 %67, metadata !730, metadata !DIExpression()), !dbg !791
  %68 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !792
  %69 = load i8, i8* %68, align 1, !dbg !792, !tbaa !230
  %70 = zext i8 %69 to i16, !dbg !792
  %71 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !792
  %72 = load i8, i8* %71, align 1, !dbg !792, !tbaa !230
  %73 = zext i8 %72 to i16, !dbg !792
  %74 = shl nuw i16 %73, 8, !dbg !792
  %75 = or i16 %74, %70, !dbg !792
  call void @llvm.dbg.value(metadata i16 %75, metadata !728, metadata !DIExpression()), !dbg !755
  %76 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !793
  %77 = load i8, i8* %76, align 1, !dbg !793, !tbaa !230
  %78 = zext i8 %77 to i16, !dbg !793
  %79 = getelementptr inbounds i8, i8* %2, i32 14, !dbg !793
  %80 = load i8, i8* %79, align 1, !dbg !793, !tbaa !230
  %81 = zext i8 %80 to i16, !dbg !793
  %82 = shl nuw i16 %81, 8, !dbg !793
  %83 = or i16 %82, %78, !dbg !793
  call void @llvm.dbg.value(metadata i16 %83, metadata !727, metadata !DIExpression()), !dbg !758
  %84 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !794
  call void @bt_flip_addr(i8* nonnull %11, i8* %84) #13, !dbg !795
  %85 = call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_for_addr([6 x i8]* nonnull %9) #13, !dbg !796
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %85, metadata !729, metadata !DIExpression()), !dbg !749
  %86 = icmp eq %struct.rfcomm_multiplexer_t* %85, null, !dbg !797
  br i1 %86, label %307, label %87, !dbg !799

; <label>:87:                                     ; preds = %65
  %88 = icmp eq i8 %67, 0, !dbg !800
  br i1 %88, label %122, label %89, !dbg !801

; <label>:89:                                     ; preds = %87
  %90 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !802, !tbaa !244
  %91 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %90, i32 0, i32 2, !dbg !803
  %92 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %91, align 4, !dbg !804, !tbaa !806
  %93 = icmp eq %struct.btstack_linked_item* %92, null, !dbg !807
  br i1 %93, label %121, label %94, !dbg !807

; <label>:94:                                     ; preds = %89
  %95 = bitcast %struct.btstack_linked_item** %91 to %struct.btstack_linked_item*, !dbg !808
  br label %100

; <label>:96:                                     ; preds = %106
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %107, metadata !731, metadata !DIExpression()), !dbg !809
  %97 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %107, i32 0, i32 0, !dbg !804
  %98 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %97, align 4, !dbg !804, !tbaa !806
  %99 = icmp eq %struct.btstack_linked_item* %98, null, !dbg !807
  br i1 %99, label %120, label %100, !dbg !807

; <label>:100:                                    ; preds = %96, %94
  %101 = phi %struct.btstack_linked_item* [ %98, %96 ], [ %92, %94 ]
  %102 = phi %struct.btstack_linked_item** [ %97, %96 ], [ %91, %94 ]
  %103 = phi %struct.btstack_linked_item* [ %107, %96 ], [ %95, %94 ]
  %104 = bitcast %struct.btstack_linked_item* %103 to i32**
  %105 = bitcast %struct.btstack_linked_item* %103 to i32*
  br label %106, !dbg !807

; <label>:106:                                    ; preds = %112, %100
  %107 = phi %struct.btstack_linked_item* [ %101, %100 ], [ %117, %112 ]
  %108 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %107, i32 1, !dbg !810
  %109 = bitcast %struct.btstack_linked_item* %108 to %struct.rfcomm_multiplexer_t**, !dbg !810
  %110 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %109, align 4, !dbg !810, !tbaa !368
  %111 = icmp eq %struct.rfcomm_multiplexer_t* %110, %85, !dbg !812
  br i1 %111, label %112, label %96, !dbg !813, !llvm.loop !814

; <label>:112:                                    ; preds = %106
  %113 = bitcast %struct.btstack_linked_item* %107 to %struct.rfcomm_channel_t*, !dbg !817
  call fastcc void @rfcomm_emit_channel_opened(%struct.rfcomm_channel_t* %113, i8 zeroext %67) #13, !dbg !818
  %114 = load i32*, i32** %104, align 4, !dbg !820, !tbaa !806
  %115 = load i32, i32* %114, align 4, !dbg !821, !tbaa !806
  store i32 %115, i32* %105, align 4, !dbg !822, !tbaa !806
  %116 = bitcast %struct.btstack_linked_item* %107 to i8*, !dbg !823
  call void @btstack_memory_rfcomm_channel_free(i8* %116) #13, !dbg !824
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* undef, metadata !731, metadata !DIExpression()), !dbg !809
  %117 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %102, align 4, !dbg !804, !tbaa !806
  %118 = icmp eq %struct.btstack_linked_item* %117, null, !dbg !807
  br i1 %118, label %119, label %106, !dbg !807, !llvm.loop !814

; <label>:119:                                    ; preds = %112
  br label %121, !dbg !825

; <label>:120:                                    ; preds = %96
  br label %121, !dbg !825

; <label>:121:                                    ; preds = %120, %119, %89
  call fastcc void @rfcomm_multiplexer_free(%struct.rfcomm_multiplexer_t* nonnull %85) #13, !dbg !825
  br label %307, !dbg !826

; <label>:122:                                    ; preds = %87
  %123 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %85, i32 0, i32 2, i32 2, !dbg !827
  %124 = load i8, i8* %123, align 2, !dbg !827
  %125 = and i8 %124, 15, !dbg !827
  %126 = icmp eq i8 %125, 2, !dbg !829
  br i1 %126, label %127, label %136, !dbg !830

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %85, i32 0, i32 2, i32 0, i32 0, !dbg !831
  %129 = call i32 @memcmp(i8* nonnull %11, i8* %128, i32 6) #13, !dbg !831
  %130 = icmp eq i32 %129, 0, !dbg !831
  br i1 %130, label %131, label %310, !dbg !834

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %85, i32 0, i32 2, i32 1, !dbg !835
  store i16 %83, i16* %132, align 2, !dbg !836, !tbaa !781
  %133 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %85, i32 0, i32 2, i32 6, !dbg !837
  store i16 %75, i16* %133, align 2, !dbg !838, !tbaa !778
  %134 = and i8 %124, -16, !dbg !839
  %135 = or i8 %134, 3, !dbg !839
  store i8 %135, i8* %123, align 2, !dbg !839
  br label %307, !dbg !840

; <label>:136:                                    ; preds = %122
  %137 = getelementptr inbounds i8, i8* %2, i32 17, !dbg !841
  %138 = load i8, i8* %137, align 1, !dbg !841, !tbaa !230
  %139 = zext i8 %138 to i16, !dbg !841
  %140 = getelementptr inbounds i8, i8* %2, i32 18, !dbg !841
  %141 = load i8, i8* %140, align 1, !dbg !841, !tbaa !230
  %142 = zext i8 %141 to i16, !dbg !841
  %143 = shl nuw i16 %142, 8, !dbg !841
  %144 = or i16 %143, %139, !dbg !841
  call void @llvm.dbg.value(metadata i16 %144, metadata !569, metadata !DIExpression()), !dbg !843
  %145 = add i16 %144, -5, !dbg !845
  call void @llvm.dbg.value(metadata i16 %145, metadata !574, metadata !DIExpression()), !dbg !846
  %146 = icmp ugt i16 %145, 127, !dbg !847
  %147 = add i16 %144, -6, !dbg !848
  call void @llvm.dbg.value(metadata i16 %147, metadata !574, metadata !DIExpression()), !dbg !846
  %148 = select i1 %146, i16 %147, i16 %145, !dbg !849
  call void @llvm.dbg.value(metadata i16 %148, metadata !574, metadata !DIExpression()), !dbg !846
  %149 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %85, i32 0, i32 1, !dbg !850
  store i16 %148, i16* %149, align 4, !dbg !851, !tbaa !587
  br label %307

; <label>:150:                                    ; preds = %10
  %151 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !852
  %152 = load i8, i8* %151, align 1, !dbg !852, !tbaa !230
  %153 = zext i8 %152 to i16, !dbg !852
  %154 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !852
  %155 = load i8, i8* %154, align 1, !dbg !852, !tbaa !230
  %156 = zext i8 %155 to i16, !dbg !852
  %157 = shl nuw i16 %156, 8, !dbg !852
  %158 = or i16 %157, %153, !dbg !852
  call void @llvm.dbg.value(metadata i16 %158, metadata !727, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i16 %158, metadata !853, metadata !DIExpression()), !dbg !863
  %159 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !865, !tbaa !244
  %160 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %159, i32 0, i32 1, !dbg !866
  %161 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %160, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %161, metadata !858, metadata !DIExpression()), !dbg !867
  %162 = icmp eq %struct.btstack_linked_item* %161, null, !dbg !868
  br i1 %162, label %310, label %163, !dbg !868

; <label>:163:                                    ; preds = %150
  br label %168, !dbg !870

; <label>:164:                                    ; preds = %168
  %165 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %169, i32 0, i32 0, !dbg !872
  %166 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %165, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %166, metadata !858, metadata !DIExpression()), !dbg !867
  %167 = icmp eq %struct.btstack_linked_item* %166, null, !dbg !868
  br i1 %167, label %308, label %168, !dbg !868, !llvm.loop !874

; <label>:168:                                    ; preds = %164, %163
  %169 = phi %struct.btstack_linked_item* [ %166, %164 ], [ %161, %163 ]
  %170 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %169, i32 3, !dbg !870
  %171 = bitcast %struct.btstack_linked_item* %170 to i16*, !dbg !870
  %172 = load i16, i16* %171, align 2, !dbg !870, !tbaa !781
  %173 = icmp eq i16 %172, %158, !dbg !877
  br i1 %173, label %174, label %164

; <label>:174:                                    ; preds = %168
  %175 = bitcast %struct.btstack_linked_item* %169 to %struct.rfcomm_multiplexer_t*, !dbg !878
  %176 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !879
  %177 = load i8, i8* %176, align 1, !dbg !879, !tbaa !230
  %178 = icmp eq i8 %177, 0, !dbg !881
  %179 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %175, i32 0, i32 2, i32 2
  %180 = load i8, i8* %179, align 2
  %181 = icmp ult i8 %180, 16, !dbg !882
  %182 = and i1 %178, %181, !dbg !884
  br i1 %182, label %307, label %183, !dbg !884

; <label>:183:                                    ; preds = %174
  %184 = lshr i8 %180, 4, !dbg !885
  %185 = add i8 %184, %177, !dbg !885
  %186 = shl i8 %185, 4, !dbg !885
  %187 = and i8 %180, 15, !dbg !885
  %188 = and i8 %185, 15, !dbg !886
  %189 = icmp ugt i8 %188, 12, !dbg !888
  %190 = select i1 %189, i8 -64, i8 %186, !dbg !889
  %191 = or i8 %190, %187, !dbg !889
  store i8 %191, i8* %179, align 2, !dbg !885
  tail call fastcc void @rfcomm_run() #13, !dbg !890
  %192 = load i8, i8* %179, align 2, !dbg !891
  %193 = and i8 %192, 15, !dbg !891
  %194 = icmp eq i8 %193, 7, !dbg !893
  br i1 %194, label %195, label %310, !dbg !894

; <label>:195:                                    ; preds = %183
  tail call fastcc void @rfcomm_hand_out_credits() #13, !dbg !895
  br label %307, !dbg !896

; <label>:196:                                    ; preds = %10
  tail call fastcc void @rfcomm_run() #13, !dbg !897
  br label %310, !dbg !898

; <label>:197:                                    ; preds = %10
  %198 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !899
  %199 = load i8, i8* %198, align 1, !dbg !899, !tbaa !230
  %200 = zext i8 %199 to i16, !dbg !899
  %201 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !899
  %202 = load i8, i8* %201, align 1, !dbg !899, !tbaa !230
  %203 = zext i8 %202 to i16, !dbg !899
  %204 = shl nuw i16 %203, 8, !dbg !899
  %205 = or i16 %204, %200, !dbg !899
  call void @llvm.dbg.value(metadata i16 %205, metadata !727, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i16 %205, metadata !853, metadata !DIExpression()), !dbg !900
  %206 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !902, !tbaa !244
  %207 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %206, i32 0, i32 1, !dbg !903
  %208 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %207, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %208, metadata !858, metadata !DIExpression()), !dbg !904
  %209 = icmp eq %struct.btstack_linked_item* %208, null, !dbg !905
  br i1 %209, label %310, label %210, !dbg !905

; <label>:210:                                    ; preds = %197
  br label %215, !dbg !906

; <label>:211:                                    ; preds = %215
  %212 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %216, i32 0, i32 0, !dbg !907
  %213 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %212, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %213, metadata !858, metadata !DIExpression()), !dbg !904
  %214 = icmp eq %struct.btstack_linked_item* %213, null, !dbg !905
  br i1 %214, label %309, label %215, !dbg !905, !llvm.loop !874

; <label>:215:                                    ; preds = %211, %210
  %216 = phi %struct.btstack_linked_item* [ %213, %211 ], [ %208, %210 ]
  %217 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %216, i32 3, !dbg !906
  %218 = bitcast %struct.btstack_linked_item* %217 to i16*, !dbg !906
  %219 = load i16, i16* %218, align 2, !dbg !906, !tbaa !781
  %220 = icmp eq i16 %219, %205, !dbg !908
  br i1 %220, label %221, label %211

; <label>:221:                                    ; preds = %215
  %222 = bitcast %struct.btstack_linked_item* %216 to %struct.rfcomm_multiplexer_t*, !dbg !909
  %223 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %222, i32 0, i32 2, i32 2, !dbg !910
  %224 = load i8, i8* %223, align 2, !dbg !910
  %225 = trunc i8 %224 to i4, !dbg !911
  switch i4 %225, label %310 [
    i4 5, label %226
    i4 4, label %226
    i4 7, label %226
  ], !dbg !911

; <label>:226:                                    ; preds = %221, %221, %221
  %227 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !912, !tbaa !230
  %228 = and i8 %227, 1, !dbg !912
  %229 = icmp eq i8 %228, 0, !dbg !912
  br i1 %229, label %233, label %230, !dbg !915

; <label>:230:                                    ; preds = %226
  %231 = zext i16 %205 to i32, !dbg !916
  %232 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i32 %231) #13, !dbg !916
  br label %233, !dbg !916

; <label>:233:                                    ; preds = %230, %226
  tail call fastcc void @rfcomm_multiplexer_finalize(%struct.rfcomm_multiplexer_t* nonnull %222) #13, !dbg !918
  br label %307, !dbg !919

; <label>:234:                                    ; preds = %10
  %235 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !920, !tbaa !230
  %236 = and i8 %235, 1, !dbg !920
  %237 = icmp eq i8 %236, 0, !dbg !920
  br i1 %237, label %240, label %238, !dbg !922

; <label>:238:                                    ; preds = %234
  %239 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.23, i32 0, i32 0)) #12, !dbg !923
  br label %240, !dbg !923

; <label>:240:                                    ; preds = %238, %234
  %241 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !925
  call void @bt_flip_addr(i8* nonnull %11, i8* %241) #13, !dbg !926
  %242 = call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_for_addr([6 x i8]* nonnull %9) #13, !dbg !927
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %242, metadata !729, metadata !DIExpression()), !dbg !749
  %243 = icmp eq %struct.rfcomm_multiplexer_t* %242, null, !dbg !928
  br i1 %243, label %244, label %307, !dbg !930

; <label>:244:                                    ; preds = %240
  %245 = call fastcc %struct.rfcomm_multiplexer_t* @rfcomm_multiplexer_create_for_addr([6 x i8]* nonnull %9) #13, !dbg !931
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %245, metadata !729, metadata !DIExpression()), !dbg !749
  %246 = icmp eq %struct.rfcomm_multiplexer_t* %245, null, !dbg !933
  br i1 %246, label %247, label %307, !dbg !935

; <label>:247:                                    ; preds = %244
  %248 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !936, !tbaa !230
  %249 = and i8 %248, 4, !dbg !936
  %250 = icmp eq i8 %249, 0, !dbg !936
  br i1 %250, label %307, label %251, !dbg !939

; <label>:251:                                    ; preds = %247
  %252 = call i32 @puts(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @str.22, i32 0, i32 0)) #12, !dbg !940
  br label %307, !dbg !940

; <label>:253:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !942, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i16 %1, metadata !853, metadata !DIExpression()), !dbg !957
  %254 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !959, !tbaa !244
  %255 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %254, i32 0, i32 1, !dbg !960
  %256 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %255, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %256, metadata !858, metadata !DIExpression()), !dbg !961
  %257 = icmp eq %struct.btstack_linked_item* %256, null, !dbg !962
  br i1 %257, label %342, label %258, !dbg !962

; <label>:258:                                    ; preds = %253
  br label %263, !dbg !963

; <label>:259:                                    ; preds = %263
  %260 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %264, i32 0, i32 0, !dbg !964
  %261 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %260, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %261, metadata !858, metadata !DIExpression()), !dbg !961
  %262 = icmp eq %struct.btstack_linked_item* %261, null, !dbg !962
  br i1 %262, label %312, label %263, !dbg !962, !llvm.loop !874

; <label>:263:                                    ; preds = %259, %258
  %264 = phi %struct.btstack_linked_item* [ %261, %259 ], [ %256, %258 ]
  %265 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %264, i32 3, !dbg !963
  %266 = bitcast %struct.btstack_linked_item* %265 to i16*, !dbg !963
  %267 = load i16, i16* %266, align 2, !dbg !963, !tbaa !781
  %268 = icmp eq i16 %267, %1, !dbg !965
  br i1 %268, label %269, label %259

; <label>:269:                                    ; preds = %263
  %270 = bitcast %struct.btstack_linked_item* %264 to %struct.rfcomm_multiplexer_t*, !dbg !966
  %271 = load i8, i8* %2, align 1, !dbg !967, !tbaa !230
  %272 = icmp ugt i8 %271, 3, !dbg !968
  br i1 %272, label %313, label %273, !dbg !970

; <label>:273:                                    ; preds = %269
  %274 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !971
  %275 = load i8, i8* %274, align 1, !dbg !971, !tbaa !230
  switch i8 %275, label %313 [
    i8 63, label %276
    i8 115, label %285
    i8 83, label %291
    i8 15, label %296
    i8 -17, label %297
  ], !dbg !972

; <label>:276:                                    ; preds = %273
  %277 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %270, i32 0, i32 2, i32 2, !dbg !973
  %278 = load i8, i8* %277, align 2, !dbg !973
  %279 = and i8 %278, 15, !dbg !973
  %280 = icmp eq i8 %279, 5, !dbg !976
  br i1 %280, label %281, label %313, !dbg !977

; <label>:281:                                    ; preds = %276
  %282 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %270, i32 0, i32 2, i32 3, !dbg !978
  store i8 0, i8* %282, align 1, !dbg !980, !tbaa !386
  %283 = and i8 %278, -16, !dbg !981
  %284 = or i8 %283, 6, !dbg !981
  store i8 %284, i8* %277, align 2, !dbg !981
  br label %311, !dbg !982

; <label>:285:                                    ; preds = %273
  %286 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %270, i32 0, i32 2, i32 2, !dbg !983
  %287 = load i8, i8* %286, align 2, !dbg !983
  %288 = and i8 %287, 15, !dbg !983
  %289 = icmp eq i8 %288, 4, !dbg !985
  br i1 %289, label %290, label %313, !dbg !986

; <label>:290:                                    ; preds = %285
  tail call fastcc void @rfcomm_multiplexer_opened(%struct.rfcomm_multiplexer_t* nonnull %270) #13, !dbg !987
  br label %311, !dbg !989

; <label>:291:                                    ; preds = %273
  %292 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %270, i32 0, i32 2, i32 2, !dbg !990
  %293 = load i8, i8* %292, align 2, !dbg !991
  %294 = and i8 %293, -16, !dbg !991
  %295 = or i8 %294, 8, !dbg !991
  store i8 %295, i8* %292, align 2, !dbg !991
  br label %311, !dbg !992

; <label>:296:                                    ; preds = %273
  tail call fastcc void @rfcomm_multiplexer_finalize(%struct.rfcomm_multiplexer_t* nonnull %270) #13, !dbg !993
  br label %311, !dbg !994

; <label>:297:                                    ; preds = %273
  %298 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !995
  %299 = load i8, i8* %298, align 1, !dbg !995, !tbaa !230
  %300 = and i8 %299, 1, !dbg !996
  %301 = sub nsw i8 4, %300, !dbg !997
  %302 = zext i8 %301 to i32, !dbg !998
  %303 = getelementptr inbounds i8, i8* %2, i32 %302, !dbg !998
  %304 = load i8, i8* %303, align 1, !dbg !998, !tbaa !230
  %305 = icmp eq i8 %304, -61, !dbg !1000
  br i1 %305, label %306, label %313, !dbg !1001

; <label>:306:                                    ; preds = %297
  tail call fastcc void @rfcomm_multiplexer_finalize(%struct.rfcomm_multiplexer_t* nonnull %270) #13, !dbg !1002
  br label %311, !dbg !1004

; <label>:307:                                    ; preds = %251, %247, %244, %240, %233, %195, %174, %136, %131, %121, %65, %48, %47, %43
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #12, !dbg !1005
  call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !745
  br label %311, !dbg !1006

; <label>:308:                                    ; preds = %164
  br label %310, !dbg !1005

; <label>:309:                                    ; preds = %211
  br label %310, !dbg !1005

; <label>:310:                                    ; preds = %309, %308, %221, %197, %196, %183, %150, %127, %55, %13, %10
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #12, !dbg !1005
  call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !745
  br label %313

; <label>:311:                                    ; preds = %307, %306, %296, %291, %290, %281
  call fastcc void @rfcomm_run() #14, !dbg !1007
  br label %534, !dbg !1010

; <label>:312:                                    ; preds = %259
  br label %313, !dbg !1011

; <label>:313:                                    ; preds = %312, %310, %297, %285, %276, %273, %269
  %314 = icmp eq i8 %0, 6, !dbg !1011
  br i1 %314, label %319, label %315, !dbg !1013

; <label>:315:                                    ; preds = %313, %4
  %316 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1014, !tbaa !244
  %317 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %316, i32 0, i32 0, !dbg !1016
  %318 = load void (i8*, i8, i16, i8*, i16)*, void (i8*, i8, i16, i8*, i16)** %317, align 4, !dbg !1016, !tbaa !277
  call void %318(i8* null, i8 zeroext %0, i16 zeroext %1, i8* %2, i16 zeroext %3) #13, !dbg !1017
  br label %534, !dbg !1018

; <label>:319:                                    ; preds = %313
  %320 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !tbaa !244
  %321 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %320, i32 0, i32 1
  %322 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %321, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata i16 %1, metadata !853, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %322, metadata !858, metadata !DIExpression()), !dbg !1021
  %323 = icmp eq %struct.btstack_linked_item* %322, null, !dbg !1022
  br i1 %323, label %342, label %324, !dbg !1022

; <label>:324:                                    ; preds = %319
  br label %329, !dbg !1023

; <label>:325:                                    ; preds = %329
  %326 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %330, i32 0, i32 0, !dbg !1024
  %327 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %326, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %327, metadata !858, metadata !DIExpression()), !dbg !1021
  %328 = icmp eq %struct.btstack_linked_item* %327, null, !dbg !1022
  br i1 %328, label %341, label %329, !dbg !1022, !llvm.loop !874

; <label>:329:                                    ; preds = %325, %324
  %330 = phi %struct.btstack_linked_item* [ %327, %325 ], [ %322, %324 ]
  %331 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %330, i32 3, !dbg !1023
  %332 = bitcast %struct.btstack_linked_item* %331 to i16*, !dbg !1023
  %333 = load i16, i16* %332, align 2, !dbg !1023, !tbaa !781
  %334 = icmp eq i16 %333, %1, !dbg !1025
  br i1 %334, label %335, label %325

; <label>:335:                                    ; preds = %329
  %336 = bitcast %struct.btstack_linked_item* %330 to %struct.rfcomm_multiplexer_t*, !dbg !1026
  %337 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %336, i32 0, i32 2, i32 2, !dbg !1027
  %338 = load i8, i8* %337, align 2, !dbg !1027
  %339 = and i8 %338, 15, !dbg !1027
  %340 = icmp eq i8 %339, 7, !dbg !1030
  br i1 %340, label %346, label %342, !dbg !1031

; <label>:341:                                    ; preds = %325
  br label %342, !dbg !1033

; <label>:342:                                    ; preds = %341, %335, %319, %253
  %343 = phi %struct.rfcomm_stack_t* [ %320, %319 ], [ %320, %335 ], [ %254, %253 ], [ %320, %341 ]
  %344 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %343, i32 0, i32 0, !dbg !1033
  %345 = load void (i8*, i8, i16, i8*, i16)*, void (i8*, i8, i16, i8*, i16)** %344, align 4, !dbg !1033, !tbaa !277
  call void %345(i8* null, i8 zeroext %0, i16 zeroext %1, i8* %2, i16 zeroext %3) #13, !dbg !1035
  br label %534, !dbg !1036

; <label>:346:                                    ; preds = %335
  %347 = load i8, i8* %2, align 1, !dbg !1037, !tbaa !230
  %348 = icmp ugt i8 %347, 3, !dbg !1038
  %349 = getelementptr inbounds i8, i8* %2, i32 1
  %350 = load i8, i8* %349, align 1, !tbaa !230
  br i1 %348, label %351, label %404, !dbg !1040

; <label>:351:                                    ; preds = %346
  switch i8 %350, label %404 [
    i8 -17, label %352
    i8 -1, label %352
  ], !dbg !1041

; <label>:352:                                    ; preds = %351, %351
  call void @llvm.dbg.value(metadata i8* %2, metadata !1043, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i16 %3, metadata !1049, metadata !DIExpression()), !dbg !1062
  %353 = lshr i8 %347, 2, !dbg !1063
  call void @llvm.dbg.value(metadata i8 %353, metadata !1050, metadata !DIExpression()), !dbg !1064
  %354 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1065
  %355 = load i8, i8* %354, align 1, !dbg !1065, !tbaa !230
  %356 = and i8 %355, 1, !dbg !1066
  %357 = icmp eq i8 %350, -1, !dbg !1067
  %358 = sub nsw i8 4, %356, !dbg !1068
  %359 = zext i8 %358 to i32, !dbg !1068
  %360 = zext i1 %357 to i8, !dbg !1069
  %361 = add nuw nsw i8 %358, %360, !dbg !1070
  call void @llvm.dbg.value(metadata i8 %361, metadata !1053, metadata !DIExpression()), !dbg !1071
  %362 = call fastcc %struct.rfcomm_channel_t* @rfcomm_channel_for_multiplexer_and_dlci(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %353) #13, !dbg !1072
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %362, metadata !1054, metadata !DIExpression()), !dbg !1073
  %363 = icmp eq %struct.rfcomm_channel_t* %362, null, !dbg !1074
  br i1 %363, label %403, label %364, !dbg !1076

; <label>:364:                                    ; preds = %352
  br i1 %357, label %365, label %373, !dbg !1077

; <label>:365:                                    ; preds = %364
  %366 = getelementptr inbounds i8, i8* %2, i32 %359, !dbg !1078
  %367 = load i8, i8* %366, align 1, !dbg !1078, !tbaa !230
  %368 = bitcast %struct.rfcomm_channel_event* %8 to i8*, !dbg !1079
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %368) #12, !dbg !1079
  %369 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %8, i32 0, i32 0, !dbg !1080
  store i32 11, i32* %369, align 4, !dbg !1080
  %370 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %362, i32 0, i32 2, i32 6, !dbg !1081
  %371 = load i8, i8* %370, align 1, !dbg !1082, !tbaa !358
  %372 = add i8 %371, %367, !dbg !1082
  store i8 %372, i8* %370, align 1, !dbg !1082, !tbaa !358
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %8, metadata !1058, metadata !DIExpression(DW_OP_deref)), !dbg !1080
  call fastcc void @rfcomm_channel_state_machine(%struct.rfcomm_channel_t* nonnull %362, %struct.rfcomm_channel_event* nonnull %8) #13, !dbg !1083
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %368) #12, !dbg !1084
  br label %373, !dbg !1085

; <label>:373:                                    ; preds = %365, %364
  %374 = zext i16 %3 to i32, !dbg !1086
  %375 = add nsw i32 %374, -1, !dbg !1088
  %376 = zext i8 %361 to i32, !dbg !1089
  %377 = icmp sgt i32 %375, %376, !dbg !1090
  br i1 %377, label %378, label %389, !dbg !1091

; <label>:378:                                    ; preds = %373
  %379 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %362, i32 0, i32 2, i32 8, !dbg !1092
  %380 = load i8, i8* %379, align 1, !dbg !1092, !tbaa !653
  %381 = icmp eq i8 %380, 0, !dbg !1095
  br i1 %381, label %384, label %382, !dbg !1096

; <label>:382:                                    ; preds = %378
  %383 = add i8 %380, -1, !dbg !1097
  store i8 %383, i8* %379, align 1, !dbg !1097, !tbaa !653
  br label %384, !dbg !1099

; <label>:384:                                    ; preds = %382, %378
  %385 = getelementptr inbounds i8, i8* %2, i32 %376, !dbg !1100
  %386 = add nuw nsw i32 %374, 65535, !dbg !1101
  %387 = sub nsw i32 %386, %376, !dbg !1102
  %388 = trunc i32 %387 to i16, !dbg !1103
  call fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* nonnull %362, i8 zeroext 7, i8* %385, i16 zeroext %388) #13, !dbg !1104
  br label %389, !dbg !1105

; <label>:389:                                    ; preds = %384, %373
  %390 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %362, i32 0, i32 2, i32 9, !dbg !1106
  %391 = load i8, i8* %390, align 4, !dbg !1106, !tbaa !323
  %392 = icmp eq i8 %391, 0, !dbg !1108
  br i1 %392, label %393, label %402, !dbg !1109

; <label>:393:                                    ; preds = %389
  %394 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %362, i32 0, i32 2, i32 8, !dbg !1110
  %395 = load i8, i8* %394, align 1, !dbg !1110, !tbaa !653
  %396 = load i8, i8* @rfcomm_credits_base, align 1, !dbg !1112, !tbaa !230
  %397 = icmp ult i8 %395, %396, !dbg !1113
  br i1 %397, label %398, label %402, !dbg !1114

; <label>:398:                                    ; preds = %393
  %399 = load i16, i16* @rfcomm_init_credits, align 2, !dbg !1116, !tbaa !225
  %400 = trunc i16 %399 to i8, !dbg !1116
  %401 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %362, i32 0, i32 2, i32 7, !dbg !1118
  store i8 %400, i8* %401, align 2, !dbg !1119, !tbaa !324
  br label %402, !dbg !1120

; <label>:402:                                    ; preds = %398, %393, %389
  call fastcc void @rfcomm_hand_out_credits() #13, !dbg !1121
  br label %403, !dbg !1122

; <label>:403:                                    ; preds = %402, %352
  call fastcc void @rfcomm_run() #14, !dbg !1123
  br label %534

; <label>:404:                                    ; preds = %351, %346
  call void @llvm.dbg.value(metadata i16 0, metadata !1124, metadata !DIExpression()), !dbg !1138
  %405 = lshr i8 %347, 2, !dbg !1140
  call void @llvm.dbg.value(metadata i8 %405, metadata !1129, metadata !DIExpression()), !dbg !1141
  %406 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1142
  %407 = load i8, i8* %406, align 1, !dbg !1142, !tbaa !230
  %408 = bitcast %struct.rfcomm_channel_event* %5 to i8*, !dbg !1143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %408) #12, !dbg !1143
  %409 = bitcast %struct.rfcomm_channel_event_pn* %6 to i8*, !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %409) #12, !dbg !1144
  %410 = bitcast %struct.rfcomm_channel_event_rpn* %7 to i8*, !dbg !1145
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %410) #12, !dbg !1145
  switch i8 %350, label %533 [
    i8 63, label %411
    i8 115, label %413
    i8 83, label %415
    i8 15, label %417
    i8 31, label %417
    i8 -1, label %419
    i8 -17, label %419
  ], !dbg !1146

; <label>:411:                                    ; preds = %404
  %412 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1147
  store i32 1, i32* %412, align 4, !dbg !1149, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %405, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1153
  br label %533, !dbg !1154

; <label>:413:                                    ; preds = %404
  %414 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1155
  store i32 2, i32* %414, align 4, !dbg !1156, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %405, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1157
  br label %533, !dbg !1158

; <label>:415:                                    ; preds = %404
  %416 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1159
  store i32 5, i32* %416, align 4, !dbg !1160, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %405, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1161
  br label %533, !dbg !1162

; <label>:417:                                    ; preds = %404, %404
  %418 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1163
  store i32 6, i32* %418, align 4, !dbg !1164, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %405, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1165
  br label %533, !dbg !1166

; <label>:419:                                    ; preds = %404, %404
  %420 = and i8 %407, 1, !dbg !1167
  %421 = sub nsw i8 4, %420, !dbg !1168
  %422 = icmp eq i8 %350, -1, !dbg !1169
  %423 = zext i1 %422 to i8, !dbg !1170
  %424 = add nuw nsw i8 %421, %423, !dbg !1171
  %425 = zext i8 %424 to i32, !dbg !1172
  %426 = getelementptr inbounds i8, i8* %2, i32 %425, !dbg !1173
  %427 = load i8, i8* %426, align 1, !dbg !1173, !tbaa !230
  switch i8 %427, label %533 [
    i8 -125, label %428
    i8 -127, label %453
    i8 -29, label %478
    i8 -31, label %484
    i8 -109, label %490
  ], !dbg !1174

; <label>:428:                                    ; preds = %419
  %429 = add nuw nsw i32 %425, 2, !dbg !1175
  %430 = getelementptr inbounds i8, i8* %2, i32 %429, !dbg !1177
  %431 = load i8, i8* %430, align 1, !dbg !1177, !tbaa !230
  call void @llvm.dbg.value(metadata i8 %431, metadata !1130, metadata !DIExpression()), !dbg !1178
  %432 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 0, i32 0, !dbg !1179
  store i32 3, i32* %432, align 4, !dbg !1180, !tbaa !1181
  %433 = add nuw nsw i32 %425, 4, !dbg !1183
  %434 = getelementptr inbounds i8, i8* %2, i32 %433, !dbg !1184
  %435 = load i8, i8* %434, align 1, !dbg !1184, !tbaa !230
  %436 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 2, !dbg !1185
  store i8 %435, i8* %436, align 2, !dbg !1186, !tbaa !1187
  %437 = add nuw nsw i32 %425, 6, !dbg !1188
  %438 = getelementptr inbounds i8, i8* %2, i32 %437, !dbg !1188
  %439 = load i8, i8* %438, align 1, !dbg !1188, !tbaa !230
  %440 = zext i8 %439 to i16, !dbg !1188
  %441 = add nuw nsw i32 %425, 7, !dbg !1188
  %442 = getelementptr inbounds i8, i8* %2, i32 %441, !dbg !1188
  %443 = load i8, i8* %442, align 1, !dbg !1188, !tbaa !230
  %444 = zext i8 %443 to i16, !dbg !1188
  %445 = shl nuw i16 %444, 8, !dbg !1188
  %446 = or i16 %445, %440, !dbg !1188
  %447 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 1, !dbg !1189
  store i16 %446, i16* %447, align 4, !dbg !1190, !tbaa !1191
  %448 = add nuw nsw i32 %425, 9, !dbg !1192
  %449 = getelementptr inbounds i8, i8* %2, i32 %448, !dbg !1193
  %450 = load i8, i8* %449, align 1, !dbg !1193, !tbaa !230
  %451 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 3, !dbg !1194
  store i8 %450, i8* %451, align 1, !dbg !1195, !tbaa !1196
  %452 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 0, !dbg !1197
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %431, %struct.rfcomm_channel_event* nonnull %452) #13, !dbg !1198
  br label %533, !dbg !1199

; <label>:453:                                    ; preds = %419
  %454 = add nuw nsw i32 %425, 2, !dbg !1200
  %455 = getelementptr inbounds i8, i8* %2, i32 %454, !dbg !1201
  %456 = load i8, i8* %455, align 1, !dbg !1201, !tbaa !230
  call void @llvm.dbg.value(metadata i8 %456, metadata !1130, metadata !DIExpression()), !dbg !1178
  %457 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 0, i32 0, !dbg !1202
  store i32 4, i32* %457, align 4, !dbg !1203, !tbaa !1181
  %458 = add nuw nsw i32 %425, 4, !dbg !1204
  %459 = getelementptr inbounds i8, i8* %2, i32 %458, !dbg !1205
  %460 = load i8, i8* %459, align 1, !dbg !1205, !tbaa !230
  %461 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 2, !dbg !1206
  store i8 %460, i8* %461, align 2, !dbg !1207, !tbaa !1187
  %462 = add nuw nsw i32 %425, 6, !dbg !1208
  %463 = getelementptr inbounds i8, i8* %2, i32 %462, !dbg !1208
  %464 = load i8, i8* %463, align 1, !dbg !1208, !tbaa !230
  %465 = zext i8 %464 to i16, !dbg !1208
  %466 = add nuw nsw i32 %425, 7, !dbg !1208
  %467 = getelementptr inbounds i8, i8* %2, i32 %466, !dbg !1208
  %468 = load i8, i8* %467, align 1, !dbg !1208, !tbaa !230
  %469 = zext i8 %468 to i16, !dbg !1208
  %470 = shl nuw i16 %469, 8, !dbg !1208
  %471 = or i16 %470, %465, !dbg !1208
  %472 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 1, !dbg !1209
  store i16 %471, i16* %472, align 4, !dbg !1210, !tbaa !1191
  %473 = add nuw nsw i32 %425, 9, !dbg !1211
  %474 = getelementptr inbounds i8, i8* %2, i32 %473, !dbg !1212
  %475 = load i8, i8* %474, align 1, !dbg !1212, !tbaa !230
  %476 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 3, !dbg !1213
  store i8 %475, i8* %476, align 1, !dbg !1214, !tbaa !1196
  %477 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %6, i32 0, i32 0, !dbg !1215
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %456, %struct.rfcomm_channel_event* nonnull %477) #13, !dbg !1216
  br label %533, !dbg !1217

; <label>:478:                                    ; preds = %419
  %479 = add nuw nsw i32 %425, 2, !dbg !1218
  %480 = getelementptr inbounds i8, i8* %2, i32 %479, !dbg !1219
  %481 = load i8, i8* %480, align 1, !dbg !1219, !tbaa !230
  %482 = lshr i8 %481, 2, !dbg !1220
  call void @llvm.dbg.value(metadata i8 %482, metadata !1130, metadata !DIExpression()), !dbg !1178
  %483 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1221
  store i32 7, i32* %483, align 4, !dbg !1222, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %482, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1223
  br label %533, !dbg !1224

; <label>:484:                                    ; preds = %419
  %485 = add nuw nsw i32 %425, 2, !dbg !1225
  %486 = getelementptr inbounds i8, i8* %2, i32 %485, !dbg !1226
  %487 = load i8, i8* %486, align 1, !dbg !1226, !tbaa !230
  %488 = lshr i8 %487, 2, !dbg !1227
  call void @llvm.dbg.value(metadata i8 %488, metadata !1130, metadata !DIExpression()), !dbg !1178
  %489 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1228
  store i32 8, i32* %489, align 4, !dbg !1229, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %488, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1230
  br label %533, !dbg !1231

; <label>:490:                                    ; preds = %419
  %491 = add nuw nsw i32 %425, 1, !dbg !1232
  %492 = getelementptr inbounds i8, i8* %2, i32 %491, !dbg !1233
  %493 = load i8, i8* %492, align 1, !dbg !1233, !tbaa !230
  %494 = lshr i8 %493, 1, !dbg !1234
  %495 = add nuw nsw i32 %425, 2, !dbg !1235
  %496 = getelementptr inbounds i8, i8* %2, i32 %495, !dbg !1236
  %497 = load i8, i8* %496, align 1, !dbg !1236, !tbaa !230
  %498 = lshr i8 %497, 2, !dbg !1237
  call void @llvm.dbg.value(metadata i8 %498, metadata !1130, metadata !DIExpression()), !dbg !1178
  %499 = trunc i8 %494 to i7, !dbg !1238
  switch i7 %499, label %533 [
    i7 1, label %500
    i7 8, label %502
  ], !dbg !1238

; <label>:500:                                    ; preds = %490
  %501 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %5, i32 0, i32 0, !dbg !1239
  store i32 10, i32* %501, align 4, !dbg !1241, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %5, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1152
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %498, %struct.rfcomm_channel_event* nonnull %5) #13, !dbg !1242
  br label %533, !dbg !1243

; <label>:502:                                    ; preds = %490
  %503 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 0, i32 0, !dbg !1244
  store i32 9, i32* %503, align 4, !dbg !1245, !tbaa !1246
  %504 = add nuw nsw i32 %425, 3, !dbg !1248
  %505 = getelementptr inbounds i8, i8* %2, i32 %504, !dbg !1249
  %506 = load i8, i8* %505, align 1, !dbg !1249, !tbaa !230
  %507 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 0, !dbg !1250
  store i8 %506, i8* %507, align 4, !dbg !1251, !tbaa !1252
  %508 = add nuw nsw i32 %425, 4, !dbg !1253
  %509 = getelementptr inbounds i8, i8* %2, i32 %508, !dbg !1254
  %510 = load i8, i8* %509, align 1, !dbg !1254, !tbaa !230
  %511 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 1, !dbg !1255
  store i8 %510, i8* %511, align 1, !dbg !1256, !tbaa !1257
  %512 = add nuw nsw i32 %425, 5, !dbg !1258
  %513 = getelementptr inbounds i8, i8* %2, i32 %512, !dbg !1259
  %514 = load i8, i8* %513, align 1, !dbg !1259, !tbaa !230
  %515 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 2, !dbg !1260
  store i8 %514, i8* %515, align 2, !dbg !1261, !tbaa !1262
  %516 = add nuw nsw i32 %425, 6, !dbg !1263
  %517 = getelementptr inbounds i8, i8* %2, i32 %516, !dbg !1264
  %518 = load i8, i8* %517, align 1, !dbg !1264, !tbaa !230
  %519 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 3, !dbg !1265
  store i8 %518, i8* %519, align 1, !dbg !1266, !tbaa !1267
  %520 = add nuw nsw i32 %425, 7, !dbg !1268
  %521 = getelementptr inbounds i8, i8* %2, i32 %520, !dbg !1269
  %522 = load i8, i8* %521, align 1, !dbg !1269, !tbaa !230
  %523 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 4, !dbg !1270
  store i8 %522, i8* %523, align 4, !dbg !1271, !tbaa !1272
  %524 = add nuw nsw i32 %425, 8, !dbg !1273
  %525 = getelementptr inbounds i8, i8* %2, i32 %524, !dbg !1274
  %526 = load i8, i8* %525, align 1, !dbg !1274, !tbaa !230
  %527 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 5, !dbg !1275
  store i8 %526, i8* %527, align 1, !dbg !1276, !tbaa !1277
  %528 = add nuw nsw i32 %425, 9, !dbg !1278
  %529 = getelementptr inbounds i8, i8* %2, i32 %528, !dbg !1279
  %530 = load i8, i8* %529, align 1, !dbg !1279, !tbaa !230
  %531 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 1, i32 6, !dbg !1280
  store i8 %530, i8* %531, align 2, !dbg !1281, !tbaa !1282
  %532 = getelementptr inbounds %struct.rfcomm_channel_event_rpn, %struct.rfcomm_channel_event_rpn* %7, i32 0, i32 0, !dbg !1283
  call fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t* nonnull %336, i8 zeroext %498, %struct.rfcomm_channel_event* nonnull %532) #13, !dbg !1284
  br label %533, !dbg !1285

; <label>:533:                                    ; preds = %502, %500, %490, %484, %478, %453, %428, %419, %417, %415, %413, %411, %404
  call fastcc void @rfcomm_run() #13, !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %410) #12, !dbg !1287
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %409) #12, !dbg !1287
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %408) #12, !dbg !1287
  br label %534, !dbg !1288

; <label>:534:                                    ; preds = %533, %403, %342, %315, %311
  ret void, !dbg !1289
}

; Function Attrs: optsize
declare zeroext i16 @l2cap_max_mtu() local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_run() unnamed_addr #0 section ".bt_stack_code" !dbg !1291 {
  %1 = alloca %struct.rfcomm_channel_event, align 4
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1302, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 1, !dbg !1304
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !dbg !1304, !tbaa !1305
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !1293, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !1293, metadata !DIExpression()), !dbg !1306
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !1307
  br i1 %5, label %54, label %6, !dbg !1307

; <label>:6:                                      ; preds = %0
  br label %7

; <label>:7:                                      ; preds = %17, %6
  %8 = phi %struct.btstack_linked_item* [ %11, %17 ], [ %4, %6 ]
  %9 = bitcast %struct.btstack_linked_item* %8 to %struct.rfcomm_multiplexer_t*
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !1309
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !dbg !1309, !tbaa !806
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !1294, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %9, metadata !1295, metadata !DIExpression()), !dbg !1313
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 3, !dbg !1314
  %13 = bitcast %struct.btstack_linked_item* %12 to i16*, !dbg !1314
  %14 = load i16, i16* %13, align 2, !dbg !1314, !tbaa !781
  %15 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %14) #13, !dbg !1316
  %16 = icmp eq i32 %15, 0, !dbg !1316
  br i1 %16, label %17, label %19, !dbg !1317

; <label>:17:                                     ; preds = %44, %36, %28, %24, %7
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !1293, metadata !DIExpression()), !dbg !1306
  %18 = icmp eq %struct.btstack_linked_item* %11, null, !dbg !1307
  br i1 %18, label %52, label %7, !dbg !1307, !llvm.loop !1318

; <label>:19:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !1321, metadata !DIExpression()), !dbg !1328
  %20 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %9, i32 0, i32 2, i32 5, !dbg !1330
  %21 = load i8, i8* %20, align 1, !dbg !1330, !tbaa !567
  %22 = icmp eq i8 %21, 0, !dbg !1332
  br i1 %22, label %24, label %23, !dbg !1333

; <label>:23:                                     ; preds = %19
  tail call fastcc void @rfcomm_send_dm_pf(%struct.rfcomm_multiplexer_t* nonnull %9, i8 zeroext %21) #13, !dbg !1334
  store i8 0, i8* %20, align 1, !dbg !1336, !tbaa !567
  br label %24, !dbg !1337

; <label>:24:                                     ; preds = %23, %19
  %25 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %9, i32 0, i32 2, i32 2, !dbg !1338
  %26 = load i8, i8* %25, align 2, !dbg !1338
  %27 = trunc i8 %26 to i4, !dbg !1339
  switch i4 %27, label %17 [
    i4 3, label %28
    i4 6, label %36
    i4 -8, label %44
  ], !dbg !1339

; <label>:28:                                     ; preds = %24
  %29 = and i8 %26, -16, !dbg !1340
  %30 = or i8 %29, 4, !dbg !1340
  store i8 %30, i8* %25, align 2, !dbg !1340
  %31 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %9, i32 0, i32 2, i32 3, !dbg !1343
  %32 = load i8, i8* %31, align 1, !dbg !1343, !tbaa !386
  %33 = shl i8 %32, 1, !dbg !1352
  %34 = or i8 %33, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i8 %34, metadata !1350, metadata !DIExpression()), !dbg !1354
  %35 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* nonnull %9, i8 zeroext %34, i8 zeroext 63, i8 zeroext 0, i8* null, i16 zeroext 0) #13, !dbg !1355
  br label %17, !dbg !1356

; <label>:36:                                     ; preds = %24
  %37 = and i8 %26, -16, !dbg !1357
  %38 = or i8 %37, 7, !dbg !1357
  store i8 %38, i8* %25, align 2, !dbg !1357
  %39 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %9, i32 0, i32 2, i32 3, !dbg !1359
  %40 = load i8, i8* %39, align 1, !dbg !1359, !tbaa !386
  %41 = shl i8 %40, 1, !dbg !1366
  %42 = xor i8 %41, 3, !dbg !1367
  call void @llvm.dbg.value(metadata i8 %42, metadata !1364, metadata !DIExpression()), !dbg !1368
  %43 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* nonnull %9, i8 zeroext %42, i8 zeroext 115, i8 zeroext 0, i8* null, i16 zeroext 0) #13, !dbg !1369
  tail call fastcc void @rfcomm_multiplexer_opened(%struct.rfcomm_multiplexer_t* nonnull %9) #13, !dbg !1370
  br label %17, !dbg !1371

; <label>:44:                                     ; preds = %24
  %45 = and i8 %26, -16, !dbg !1372
  %46 = or i8 %45, 1, !dbg !1372
  store i8 %46, i8* %25, align 2, !dbg !1372
  %47 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %9, i32 0, i32 2, i32 3, !dbg !1374
  %48 = load i8, i8* %47, align 1, !dbg !1374, !tbaa !386
  %49 = shl i8 %48, 1, !dbg !1376
  %50 = xor i8 %49, 3, !dbg !1377
  call void @llvm.dbg.value(metadata i8 %50, metadata !1364, metadata !DIExpression()), !dbg !1378
  %51 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* nonnull %9, i8 zeroext %50, i8 zeroext 115, i8 zeroext 0, i8* null, i16 zeroext 0) #13, !dbg !1379
  tail call fastcc void @rfcomm_multiplexer_finalize(%struct.rfcomm_multiplexer_t* nonnull %9) #13, !dbg !1380
  br label %17, !dbg !1381

; <label>:52:                                     ; preds = %17
  %53 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !tbaa !244
  br label %54, !dbg !1384

; <label>:54:                                     ; preds = %52, %0
  %55 = phi %struct.rfcomm_stack_t* [ %53, %52 ], [ %2, %0 ], !dbg !1384
  %56 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %55, i32 0, i32 2, !dbg !1385
  %57 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %56, align 4, !dbg !1385, !tbaa !1386
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %57, metadata !1293, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %57, metadata !1293, metadata !DIExpression()), !dbg !1306
  %58 = icmp eq %struct.btstack_linked_item* %57, null, !dbg !1387
  br i1 %58, label %78, label %59, !dbg !1387

; <label>:59:                                     ; preds = %54
  %60 = bitcast %struct.rfcomm_channel_event* %1 to i8*
  %61 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %1, i32 0, i32 0
  br label %62, !dbg !1387

; <label>:62:                                     ; preds = %75, %59
  %63 = phi %struct.btstack_linked_item* [ %57, %59 ], [ %68, %75 ]
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %74, metadata !1296, metadata !DIExpression()), !dbg !1389
  %64 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %63, i32 1, !dbg !1390
  %65 = bitcast %struct.btstack_linked_item* %64 to %struct.rfcomm_multiplexer_t**, !dbg !1390
  %66 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %65, align 4, !dbg !1390, !tbaa !368
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %66, metadata !1300, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %60) #12, !dbg !1392
  store i32 13, i32* %61, align 4, !dbg !1393
  %67 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %63, i32 0, i32 0, !dbg !1394
  %68 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %67, align 4, !dbg !1394, !tbaa !806
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %68, metadata !1294, metadata !DIExpression()), !dbg !1312
  %69 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %66, i32 0, i32 2, i32 1, !dbg !1395
  %70 = load i16, i16* %69, align 2, !dbg !1395, !tbaa !781
  %71 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %70) #13, !dbg !1397
  %72 = icmp eq i32 %71, 0, !dbg !1397
  br i1 %72, label %75, label %73, !dbg !1398

; <label>:73:                                     ; preds = %62
  %74 = bitcast %struct.btstack_linked_item* %63 to %struct.rfcomm_channel_t*
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %1, metadata !1301, metadata !DIExpression(DW_OP_deref)), !dbg !1393
  call fastcc void @rfcomm_channel_state_machine(%struct.rfcomm_channel_t* nonnull %74, %struct.rfcomm_channel_event* nonnull %1) #14, !dbg !1399
  br label %75, !dbg !1400

; <label>:75:                                     ; preds = %73, %62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60) #12, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %68, metadata !1293, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %68, metadata !1293, metadata !DIExpression()), !dbg !1306
  %76 = icmp eq %struct.btstack_linked_item* %68, null, !dbg !1387
  br i1 %76, label %77, label %62, !dbg !1387, !llvm.loop !1401

; <label>:77:                                     ; preds = %75
  br label %78, !dbg !1404

; <label>:78:                                     ; preds = %77, %54
  ret void, !dbg !1404
}

; Function Attrs: nounwind optsize
define hidden void @rfcomm_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, [6 x i8]*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1405 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1409, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata [6 x i8]* %2, metadata !1411, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 %3, metadata !1412, metadata !DIExpression()), !dbg !1416
  %5 = load i16, i16* @rfcomm_init_credits, align 2, !dbg !1417, !tbaa !225
  %6 = trunc i16 %5 to i8, !dbg !1417
  tail call void @rfcomm_create_channel2(i8* %0, void (i8, i16, i8*, i16)* %1, [6 x i8]* %2, i8 zeroext %3, i8 zeroext 0, i8 zeroext %6) #14, !dbg !1418
  ret void, !dbg !1419
}

; Function Attrs: nounwind optsize
define hidden void @rfcomm_disconnect_internal(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1420 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1424, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i16 %0, metadata !236, metadata !DIExpression()), !dbg !1427
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1429, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !1430
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !237, metadata !DIExpression()), !dbg !1431
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !1432
  br i1 %5, label %21, label %6, !dbg !1432

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !1433

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !1434
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !237, metadata !DIExpression()), !dbg !1431
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !1432
  br i1 %10, label %20, label %11, !dbg !1432, !llvm.loop !253

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 4, !dbg !1433
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !1433
  %15 = load i16, i16* %14, align 4, !dbg !1433, !tbaa !258
  %16 = icmp eq i16 %15, %0, !dbg !1435
  br i1 %16, label %17, label %7

; <label>:17:                                     ; preds = %11
  %18 = bitcast %struct.btstack_linked_item* %12 to %struct.rfcomm_channel_t*, !dbg !1436
  %19 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %18, i32 0, i32 2, i32 10, !dbg !1437
  store i8 11, i8* %19, align 1, !dbg !1440, !tbaa !502
  br label %21, !dbg !1441

; <label>:20:                                     ; preds = %7
  br label %21, !dbg !1442

; <label>:21:                                     ; preds = %20, %17, %1
  tail call fastcc void @rfcomm_run() #14, !dbg !1442
  ret void, !dbg !1443
}

; Function Attrs: nounwind optsize
define hidden void @rfcomm_register_service2(i8*, void (i8, i16, i8*, i16)*, i8 zeroext, i16 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1448, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !1449, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8 %2, metadata !1450, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i16 %3, metadata !1451, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8 %4, metadata !1452, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8 %5, metadata !1453, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %2, metadata !1461, metadata !DIExpression()), !dbg !1471
  %7 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1473, !tbaa !244
  %8 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %7, i32 0, i32 3, !dbg !1474
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !1466, metadata !DIExpression()), !dbg !1475
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !1476
  br i1 %10, label %23, label %11, !dbg !1476

; <label>:11:                                     ; preds = %6
  br label %16, !dbg !1478

; <label>:12:                                     ; preds = %16
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %17, i32 0, i32 0, !dbg !1480
  %14 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %13, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %14, metadata !1466, metadata !DIExpression()), !dbg !1475
  %15 = icmp eq %struct.btstack_linked_item* %14, null, !dbg !1476
  br i1 %15, label %22, label %16, !dbg !1476, !llvm.loop !1482

; <label>:16:                                     ; preds = %12, %11
  %17 = phi %struct.btstack_linked_item* [ %14, %12 ], [ %9, %11 ]
  %18 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %17, i32 1, !dbg !1478
  %19 = bitcast %struct.btstack_linked_item* %18 to i8*, !dbg !1478
  %20 = load i8, i8* %19, align 4, !dbg !1478, !tbaa !1485
  %21 = icmp eq i8 %20, %2, !dbg !1486
  br i1 %21, label %61, label %12

; <label>:22:                                     ; preds = %12
  br label %23, !dbg !1487

; <label>:23:                                     ; preds = %22, %6
  %24 = tail call i8* @btstack_memory_rfcomm_service_get() #13, !dbg !1487
  %25 = icmp eq i8* %24, null, !dbg !1488
  br i1 %25, label %62, label %26, !dbg !1490

; <label>:26:                                     ; preds = %23
  %27 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1491, !tbaa !244
  %28 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %27, i32 0, i32 3, !dbg !1491
  %29 = tail call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** %28) #13, !dbg !1491
  %30 = icmp eq i32 %29, 0, !dbg !1491
  br i1 %30, label %43, label %31, !dbg !1493

; <label>:31:                                     ; preds = %26
  %32 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1494, !tbaa !230
  %33 = and i8 %32, 1, !dbg !1494
  %34 = icmp eq i8 %33, 0, !dbg !1494
  br i1 %34, label %37, label %35, !dbg !1497

; <label>:35:                                     ; preds = %31
  %36 = tail call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @str.18, i32 0, i32 0)), !dbg !1498
  br label %37, !dbg !1498

; <label>:37:                                     ; preds = %35, %31
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @rfcomm_packet_handler, i16 zeroext 3, i16 zeroext -1) #13, !dbg !1500
  %38 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1501, !tbaa !230
  %39 = and i8 %38, 1, !dbg !1501
  %40 = icmp eq i8 %39, 0, !dbg !1501
  br i1 %40, label %43, label %41, !dbg !1503

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.17, i32 0, i32 0)), !dbg !1504
  br label %43, !dbg !1504

; <label>:43:                                     ; preds = %41, %37, %26
  %44 = getelementptr inbounds i8, i8* %24, i32 12, !dbg !1506
  %45 = bitcast i8* %44 to i8**, !dbg !1506
  store i8* %0, i8** %45, align 4, !dbg !1507, !tbaa !1508
  %46 = getelementptr inbounds i8, i8* %24, i32 4, !dbg !1509
  store i8 %2, i8* %46, align 4, !dbg !1510, !tbaa !1485
  %47 = getelementptr inbounds i8, i8* %24, i32 8, !dbg !1511
  %48 = bitcast i8* %47 to i16*, !dbg !1511
  store i16 %3, i16* %48, align 4, !dbg !1512, !tbaa !682
  %49 = getelementptr inbounds i8, i8* %24, i32 5, !dbg !1513
  store i8 %4, i8* %49, align 1, !dbg !1514, !tbaa !689
  %50 = getelementptr inbounds i8, i8* %24, i32 6, !dbg !1515
  store i8 %5, i8* %50, align 2, !dbg !1516, !tbaa !692
  %51 = getelementptr inbounds i8, i8* %24, i32 16, !dbg !1517
  %52 = bitcast i8* %51 to void (i8, i16, i8*, i16)**, !dbg !1517
  store void (i8, i16, i8*, i16)* %1, void (i8, i16, i8*, i16)** %52, align 4, !dbg !1518, !tbaa !668
  %53 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1519, !tbaa !244
  %54 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %53, i32 0, i32 3, !dbg !1519
  %55 = bitcast i8* %24 to %struct.btstack_linked_item*, !dbg !1519
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** %54, %struct.btstack_linked_item* %55) #13, !dbg !1519
  %56 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1520, !tbaa !230
  %57 = and i8 %56, 1, !dbg !1520
  %58 = icmp eq i8 %57, 0, !dbg !1520
  br i1 %58, label %62, label %59, !dbg !1522

; <label>:59:                                     ; preds = %43
  %60 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str, i32 0, i32 0)), !dbg !1523
  br label %62, !dbg !1523

; <label>:61:                                     ; preds = %16
  br label %62, !dbg !1525

; <label>:62:                                     ; preds = %61, %59, %43, %23
  ret void, !dbg !1525
}

; Function Attrs: optsize
declare i8* @btstack_memory_rfcomm_service_get() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @btstack_linked_list_empty(%struct.btstack_linked_item**) local_unnamed_addr #6

; Function Attrs: optsize
declare void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden void @rfcomm_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i8 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !1532, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %2, metadata !1533, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i16 %3, metadata !1534, metadata !DIExpression()), !dbg !1538
  %5 = load i16, i16* @rfcomm_init_credits, align 2, !dbg !1539, !tbaa !225
  %6 = trunc i16 %5 to i8, !dbg !1539
  tail call void @rfcomm_register_service2(i8* %0, void (i8, i16, i8*, i16)* %1, i8 zeroext %2, i16 zeroext %3, i8 zeroext 0, i8 zeroext %6) #14, !dbg !1540
  ret void, !dbg !1541
}

; Function Attrs: nounwind optsize
define hidden void @rfcomm_accept_connection_internal(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1542 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1544, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i16 %0, metadata !236, metadata !DIExpression()), !dbg !1547
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1549, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !1550
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !237, metadata !DIExpression()), !dbg !1551
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !1552
  br i1 %5, label %36, label %6, !dbg !1552

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !1553

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !1554
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !237, metadata !DIExpression()), !dbg !1551
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !1552
  br i1 %10, label %35, label %11, !dbg !1552, !llvm.loop !253

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 4, !dbg !1553
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !1553
  %15 = load i16, i16* %14, align 4, !dbg !1553, !tbaa !258
  %16 = icmp eq i16 %15, %0, !dbg !1555
  br i1 %16, label %17, label %7

; <label>:17:                                     ; preds = %11
  %18 = bitcast %struct.btstack_linked_item* %12 to %struct.rfcomm_channel_t*, !dbg !1556
  %19 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %18, i32 0, i32 2, i32 10, !dbg !1557
  %20 = load i8, i8* %19, align 1, !dbg !1557, !tbaa !502
  %21 = icmp eq i8 %20, 7, !dbg !1558
  br i1 %21, label %22, label %34, !dbg !1558

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 7, !dbg !1559
  %24 = bitcast %struct.btstack_linked_item* %23 to i16*, !dbg !1559
  %25 = load i16, i16* %24, align 4, !dbg !1561, !tbaa !638
  %26 = shl i16 %25, 5, !dbg !1562
  %27 = and i16 %26, 64, !dbg !1562
  %28 = or i16 %25, %27, !dbg !1562
  %29 = or i16 %28, 1, !dbg !1562
  store i16 %29, i16* %24, align 4, !dbg !1561, !tbaa !638
  %30 = and i16 %25, 8, !dbg !1563
  %31 = icmp eq i16 %30, 0, !dbg !1563
  br i1 %31, label %34, label %32, !dbg !1565

; <label>:32:                                     ; preds = %22
  %33 = or i16 %28, 513, !dbg !1566
  store i16 %33, i16* %24, align 4, !dbg !1566, !tbaa !638
  br label %34, !dbg !1568

; <label>:34:                                     ; preds = %32, %22, %17
  tail call fastcc void @rfcomm_run() #14, !dbg !1569
  br label %36, !dbg !1570

; <label>:35:                                     ; preds = %7
  br label %36, !dbg !1571

; <label>:36:                                     ; preds = %35, %34, %1
  ret void, !dbg !1571
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @is_rfcomm_other_conn(i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1573 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1579, metadata !DIExpression()), !dbg !1585
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1586, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !1587
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !1580, metadata !DIExpression()), !dbg !1588
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !1589
  br i1 %5, label %19, label %6, !dbg !1589

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !1591

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !1593
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !1580, metadata !DIExpression()), !dbg !1588
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !1589
  br i1 %10, label %17, label %11, !dbg !1589, !llvm.loop !1595

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 4, !dbg !1591
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !1591
  %15 = load i16, i16* %14, align 4, !dbg !1591, !tbaa !258
  %16 = icmp eq i16 %15, %0, !dbg !1598
  br i1 %16, label %7, label %17

; <label>:17:                                     ; preds = %11, %7
  %18 = phi i32 [ 0, %7 ], [ 1, %11 ]
  br label %19, !dbg !1599

; <label>:19:                                     ; preds = %17, %1
  %20 = phi i32 [ 0, %1 ], [ %18, %17 ]
  ret i32 %20, !dbg !1599
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_disconnect_rfcomm() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1600 {
  %1 = tail call zeroext i16 @l2cap_get_local_cid_via_psm(i16 zeroext 3) #13, !dbg !1603
  call void @llvm.dbg.value(metadata i16 %1, metadata !1602, metadata !DIExpression()), !dbg !1604
  %2 = icmp eq i16 %1, 0, !dbg !1605
  br i1 %2, label %4, label %3, !dbg !1607

; <label>:3:                                      ; preds = %0
  tail call void @l2cap_disconnect_internal(i16 zeroext %1, i8 zeroext 19) #13, !dbg !1608
  br label %4, !dbg !1610

; <label>:4:                                      ; preds = %3, %0
  ret void, !dbg !1611
}

; Function Attrs: optsize
declare zeroext i16 @l2cap_get_local_cid_via_psm(i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden void @BQB_send_rfcomm_disc() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1612 {
  %1 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1619, !tbaa !244
  %2 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %1, i32 0, i32 2, !dbg !1620
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !1614, metadata !DIExpression()), !dbg !1621
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !1622
  br i1 %4, label %68, label %5, !dbg !1622

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !1624

; <label>:6:                                      ; preds = %63, %5
  %7 = phi %struct.btstack_linked_item* [ %66, %63 ], [ %3, %5 ]
  %8 = phi %struct.rfcomm_stack_t* [ %64, %63 ], [ %1, %5 ], !dbg !1625
  %9 = phi %struct.btstack_linked_item* [ %61, %63 ], [ %3, %5 ]
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 12, !dbg !1624
  %11 = bitcast %struct.btstack_linked_item* %10 to i8**, !dbg !1624
  %12 = load i8*, i8** %11, align 4, !dbg !1624, !tbaa !488
  call void @llvm.dbg.value(metadata i8* %12, metadata !1631, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !1632, metadata !DIExpression()), !dbg !1640
  %13 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !1641
  br i1 %13, label %30, label %14, !dbg !1641

; <label>:14:                                     ; preds = %6
  br label %15, !dbg !1643

; <label>:15:                                     ; preds = %25, %14
  %16 = phi %struct.btstack_linked_item* [ %27, %25 ], [ %7, %14 ]
  %17 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 12, !dbg !1643
  %18 = bitcast %struct.btstack_linked_item* %17 to i8**, !dbg !1643
  %19 = load i8*, i8** %18, align 4, !dbg !1643, !tbaa !488
  %20 = icmp eq i8* %19, %12, !dbg !1645
  br i1 %20, label %21, label %25, !dbg !1646

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 2, !dbg !1647
  %23 = bitcast %struct.btstack_linked_item* %22 to %struct.rfc_channel_core_data_t*, !dbg !1647
  %24 = getelementptr inbounds %struct.rfc_channel_core_data_t, %struct.rfc_channel_core_data_t* %23, i32 0, i32 10, !dbg !1648
  store i8 11, i8* %24, align 1, !dbg !1649, !tbaa !502
  br label %25, !dbg !1650

; <label>:25:                                     ; preds = %21, %15
  %26 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 0, i32 0, !dbg !1651
  %27 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %26, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %27, metadata !1632, metadata !DIExpression()), !dbg !1640
  %28 = icmp eq %struct.btstack_linked_item* %27, null, !dbg !1641
  br i1 %28, label %29, label %15, !dbg !1641, !llvm.loop !1653

; <label>:29:                                     ; preds = %25
  br label %30, !dbg !1656

; <label>:30:                                     ; preds = %29, %6
  %31 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %8, i32 0, i32 3, !dbg !1656
  %32 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %31, align 4, !dbg !1657, !tbaa !806
  %33 = icmp eq %struct.btstack_linked_item* %32, null, !dbg !1659
  br i1 %33, label %59, label %34, !dbg !1659

; <label>:34:                                     ; preds = %30
  %35 = bitcast %struct.btstack_linked_item** %31 to %struct.btstack_linked_item*, !dbg !1660
  br label %40

; <label>:36:                                     ; preds = %45
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %46, metadata !1632, metadata !DIExpression()), !dbg !1640
  %37 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %46, i32 0, i32 0, !dbg !1657
  %38 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %37, align 4, !dbg !1657, !tbaa !806
  %39 = icmp eq %struct.btstack_linked_item* %38, null, !dbg !1659
  br i1 %39, label %58, label %40, !dbg !1659

; <label>:40:                                     ; preds = %36, %34
  %41 = phi %struct.btstack_linked_item* [ %38, %36 ], [ %32, %34 ]
  %42 = phi %struct.btstack_linked_item** [ %37, %36 ], [ %31, %34 ]
  %43 = phi %struct.btstack_linked_item* [ %46, %36 ], [ %35, %34 ]
  %44 = bitcast %struct.btstack_linked_item* %43 to i32*
  br label %45, !dbg !1659

; <label>:45:                                     ; preds = %51, %40
  %46 = phi %struct.btstack_linked_item* [ %41, %40 ], [ %55, %51 ]
  %47 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %46, i32 3, !dbg !1661
  %48 = bitcast %struct.btstack_linked_item* %47 to i8**, !dbg !1661
  %49 = load i8*, i8** %48, align 4, !dbg !1661, !tbaa !1508
  %50 = icmp eq i8* %49, %12, !dbg !1663
  br i1 %50, label %51, label %36, !dbg !1664, !llvm.loop !1665

; <label>:51:                                     ; preds = %45
  %52 = bitcast %struct.btstack_linked_item* %46 to i32*, !dbg !1668
  %53 = load i32, i32* %52, align 4, !dbg !1668, !tbaa !806
  store i32 %53, i32* %44, align 4, !dbg !1670, !tbaa !806
  %54 = bitcast %struct.btstack_linked_item* %46 to i8*, !dbg !1671
  tail call void @btstack_memory_rfcomm_service_free(i8* %54) #13, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* undef, metadata !1632, metadata !DIExpression()), !dbg !1640
  %55 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %42, align 4, !dbg !1657, !tbaa !806
  %56 = icmp eq %struct.btstack_linked_item* %55, null, !dbg !1659
  br i1 %56, label %57, label %45, !dbg !1659, !llvm.loop !1665

; <label>:57:                                     ; preds = %51
  br label %59, !dbg !1673

; <label>:58:                                     ; preds = %36
  br label %59, !dbg !1673

; <label>:59:                                     ; preds = %58, %57, %30
  tail call fastcc void @rfcomm_run() #13, !dbg !1673
  %60 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !1674
  %61 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %60, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %61, metadata !1614, metadata !DIExpression()), !dbg !1621
  %62 = icmp eq %struct.btstack_linked_item* %61, null, !dbg !1622
  br i1 %62, label %67, label %63, !dbg !1622, !llvm.loop !1676

; <label>:63:                                     ; preds = %59
  %64 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !tbaa !244
  %65 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %64, i32 0, i32 2
  %66 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %65, align 4, !tbaa !244
  br label %6, !dbg !1622

; <label>:67:                                     ; preds = %59
  br label %68, !dbg !1679

; <label>:68:                                     ; preds = %67, %0
  ret void, !dbg !1679
}

; Function Attrs: nounwind optsize
define hidden void @BQB_close_rfcomm_session() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1680 {
  %1 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1687, !tbaa !244
  %2 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %1, i32 0, i32 2, !dbg !1688
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !1682, metadata !DIExpression()), !dbg !1689
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !1690
  br i1 %4, label %20, label %5, !dbg !1690

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !1692

; <label>:6:                                      ; preds = %6, %5
  %7 = phi %struct.btstack_linked_item* [ %17, %6 ], [ %3, %5 ]
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 1, !dbg !1692
  %9 = bitcast %struct.btstack_linked_item* %8 to %struct.rfcomm_multiplexer_t**, !dbg !1692
  %10 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %9, align 4, !dbg !1692, !tbaa !368
  %11 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %10, i32 0, i32 2, i32 3, !dbg !1693
  %12 = load i8, i8* %11, align 1, !dbg !1693, !tbaa !386
  %13 = shl i8 %12, 1, !dbg !1700
  %14 = or i8 %13, 1, !dbg !1701
  call void @llvm.dbg.value(metadata i8 %14, metadata !1698, metadata !DIExpression()), !dbg !1702
  %15 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %10, i8 zeroext %14, i8 zeroext 83, i8 zeroext 0, i8* null, i16 zeroext 0) #13, !dbg !1703
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !1704
  %17 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %16, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %17, metadata !1682, metadata !DIExpression()), !dbg !1689
  %18 = icmp eq %struct.btstack_linked_item* %17, null, !dbg !1690
  br i1 %18, label %19, label %6, !dbg !1690, !llvm.loop !1706

; <label>:19:                                     ; preds = %6
  br label %20, !dbg !1709

; <label>:20:                                     ; preds = %19, %0
  ret void, !dbg !1709
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_send_disc(%struct.rfcomm_multiplexer_t* nocapture, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1694 {
  %3 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 3, !dbg !1710
  %4 = load i8, i8* %3, align 1, !dbg !1710, !tbaa !386
  %5 = shl i8 %4, 1, !dbg !1711
  %6 = shl i8 %1, 2, !dbg !1712
  %7 = or i8 %6, %5, !dbg !1713
  %8 = or i8 %7, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i8 %8, metadata !1698, metadata !DIExpression()), !dbg !1714
  %9 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %0, i8 zeroext %8, i8 zeroext 83, i8 zeroext 0, i8* null, i16 zeroext 0) #14, !dbg !1715
  ret void
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_send_rfcomm_data() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1716 {
  %1 = tail call zeroext i16 @l2cap_get_local_cid_via_psm(i16 zeroext 3) #13, !dbg !1719
  call void @llvm.dbg.value(metadata i16 %1, metadata !1718, metadata !DIExpression()), !dbg !1720
  %2 = icmp eq i16 %1, 0, !dbg !1721
  br i1 %2, label %5, label %3, !dbg !1723

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @l2cap_send_internal(i16 zeroext %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i16 zeroext 4, i8 zeroext 0) #13, !dbg !1724
  br label %5, !dbg !1726

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !1727
}

; Function Attrs: optsize
declare i32 @l2cap_send_internal(i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden i32 @rfc_channel_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1728 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1730, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i16 %1, metadata !1731, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 30, metadata !1732, metadata !DIExpression()), !dbg !1742
  %3 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1743, !tbaa !244
  %4 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %3, i32 0, i32 2, !dbg !1744
  %5 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %4, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !1734, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1741
  %6 = icmp eq %struct.btstack_linked_item* %5, null, !dbg !1746
  br i1 %6, label %49, label %7, !dbg !1746

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1748

; <label>:8:                                      ; preds = %27, %7
  %9 = phi %struct.btstack_linked_item* [ %41, %27 ], [ %5, %7 ]
  %10 = phi i8 [ %39, %27 ], [ 0, %7 ]
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 2, !dbg !1748
  %12 = bitcast %struct.btstack_linked_item* %11 to %struct.rfc_channel_core_data_t*, !dbg !1748
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 4, !dbg !1750
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !1750
  %15 = load i16, i16* %14, align 4, !dbg !1750, !tbaa !258
  %16 = tail call zeroext i8 @hfp_check_conn_for_rfcomm_id(i16 zeroext %15) #13, !dbg !1751
  %17 = icmp eq i8 %16, 0, !dbg !1751
  br i1 %17, label %18, label %27, !dbg !1752

; <label>:18:                                     ; preds = %8
  %19 = load i16, i16* %14, align 4, !dbg !1753, !tbaa !258
  %20 = tail call zeroext i8 @spp_check_conn_for_rfcomm_id(i16 zeroext %19) #13, !dbg !1756
  %21 = icmp eq i8 %20, 0, !dbg !1756
  br i1 %21, label %22, label %27, !dbg !1757

; <label>:22:                                     ; preds = %18
  %23 = load i16, i16* %14, align 4, !dbg !1759, !tbaa !258
  %24 = tail call zeroext i8 @iap_check_conn_for_rfcomm_id(i16 zeroext %23) #13, !dbg !1762
  %25 = icmp ne i8 %24, 0, !dbg !1762
  %26 = select i1 %25, i8 9, i8 0, !dbg !1763
  br label %27

; <label>:27:                                     ; preds = %22, %18, %8
  %28 = phi i8 [ 4, %8 ], [ %26, %22 ], [ 1, %18 ]
  %29 = bitcast %struct.btstack_linked_item* %11 to i8*
  store i8 %28, i8* %29, align 4, !tbaa !1765
  %30 = getelementptr inbounds %struct.rfc_channel_core_data_t, %struct.rfc_channel_core_data_t* %12, i32 0, i32 1, i32 0, !dbg !1766
  %31 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 1, !dbg !1767
  %32 = bitcast %struct.btstack_linked_item* %31 to %struct.rfcomm_multiplexer_t**, !dbg !1767
  %33 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %32, align 4, !dbg !1767, !tbaa !368
  %34 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %33, i32 0, i32 2, i32 0, i32 0, !dbg !1766
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %34, i32 6, i32 1, i1 false), !dbg !1766
  %35 = zext i8 %10 to i32, !dbg !1768
  %36 = mul nuw nsw i32 %35, 30, !dbg !1769
  %37 = or i32 %36, 1, !dbg !1770
  %38 = getelementptr inbounds i8, i8* %0, i32 %37, !dbg !1771
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* %29, i32 30, i32 1, i1 false), !dbg !1772
  %39 = add i8 %10, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i8 %39, metadata !1733, metadata !DIExpression()), !dbg !1741
  %40 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !1774
  %41 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %40, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %41, metadata !1734, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %39, metadata !1733, metadata !DIExpression()), !dbg !1741
  %42 = icmp eq %struct.btstack_linked_item* %41, null, !dbg !1746
  br i1 %42, label %43, label %8, !dbg !1746, !llvm.loop !1776

; <label>:43:                                     ; preds = %27
  %44 = icmp eq i8 %39, 0, !dbg !1779
  br i1 %44, label %49, label %45, !dbg !1781

; <label>:45:                                     ; preds = %43
  store i8 %39, i8* %0, align 1, !dbg !1782, !tbaa !230
  %46 = zext i8 %39 to i32, !dbg !1784
  %47 = mul nuw nsw i32 %46, 30, !dbg !1785
  %48 = or i32 %47, 1, !dbg !1786
  br label %49, !dbg !1787

; <label>:49:                                     ; preds = %45, %43, %2
  %50 = phi i32 [ %48, %45 ], [ 0, %43 ], [ 0, %2 ]
  ret i32 %50, !dbg !1788
}

; Function Attrs: optsize
declare zeroext i8 @hfp_check_conn_for_rfcomm_id(i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @spp_check_conn_for_rfcomm_id(i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @iap_check_conn_for_rfcomm_id(i16 zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #9

; Function Attrs: nounwind optsize
define hidden void @rfc_channel_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1793, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i16 %1, metadata !1794, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1810
  %3 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %3, metadata !1799, metadata !DIExpression()), !dbg !1812
  %4 = load i8, i8* %0, align 1, !dbg !1813, !tbaa !230
  %5 = icmp eq i8 %4, 0, !dbg !1815
  br i1 %5, label %131, label %6, !dbg !1816

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !1817

; <label>:7:                                      ; preds = %126, %6
  %8 = phi i8 [ %127, %126 ], [ 0, %6 ]
  %9 = zext i8 %8 to i32, !dbg !1817
  %10 = mul nuw nsw i32 %9, 30, !dbg !1819
  %11 = getelementptr inbounds i8, i8* %3, i32 %10, !dbg !1820
  %12 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1821, !tbaa !244
  %13 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %12, i32 0, i32 1, !dbg !1822
  %14 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %13, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %14, metadata !1800, metadata !DIExpression()), !dbg !1823
  %15 = icmp eq %struct.btstack_linked_item* %14, null, !dbg !1824
  br i1 %15, label %126, label %16, !dbg !1824

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds i8, i8* %11, i32 1
  br label %18, !dbg !1824

; <label>:18:                                     ; preds = %121, %16
  %19 = phi %struct.btstack_linked_item* [ %14, %16 ], [ %123, %121 ]
  %20 = bitcast %struct.btstack_linked_item* %19 to %struct.rfcomm_multiplexer_t*, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %20, metadata !1801, metadata !DIExpression()), !dbg !1827
  %21 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %20, i32 0, i32 2, i32 0, i32 0, !dbg !1828
  %22 = tail call i32 @memcmp(i8* %17, i8* %21, i32 6) #14, !dbg !1830
  %23 = icmp eq i32 %22, 0, !dbg !1830
  br i1 %23, label %24, label %121, !dbg !1831

; <label>:24:                                     ; preds = %18
  %25 = load i8, i8* %11, align 2, !dbg !1832, !tbaa !1834
  call void @llvm.dbg.value(metadata i16 30, metadata !1835, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata %struct.rfcomm_service_t* null, metadata !1843, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* null, metadata !1844, metadata !DIExpression()), !dbg !1848
  %26 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %20, i32 0, i32 2, i32 5, !dbg !1849
  %27 = load i8, i8* %26, align 1, !dbg !1849, !tbaa !567
  %28 = icmp eq i8 %27, 0, !dbg !1851
  br i1 %28, label %70, label %29, !dbg !1852

; <label>:29:                                     ; preds = %24
  %30 = lshr i8 %27, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i8 %30, metadata !1461, metadata !DIExpression()), !dbg !1855
  %31 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1857, !tbaa !244
  %32 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %31, i32 0, i32 3, !dbg !1858
  %33 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %32, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %33, metadata !1466, metadata !DIExpression()), !dbg !1859
  %34 = icmp eq %struct.btstack_linked_item* %33, null, !dbg !1860
  br i1 %34, label %47, label %35, !dbg !1860

; <label>:35:                                     ; preds = %29
  br label %40, !dbg !1861

; <label>:36:                                     ; preds = %40
  %37 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %41, i32 0, i32 0, !dbg !1862
  %38 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %37, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %38, metadata !1466, metadata !DIExpression()), !dbg !1859
  %39 = icmp eq %struct.btstack_linked_item* %38, null, !dbg !1860
  br i1 %39, label %46, label %40, !dbg !1860, !llvm.loop !1482

; <label>:40:                                     ; preds = %36, %35
  %41 = phi %struct.btstack_linked_item* [ %38, %36 ], [ %33, %35 ]
  %42 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %41, i32 1, !dbg !1861
  %43 = bitcast %struct.btstack_linked_item* %42 to i8*, !dbg !1861
  %44 = load i8, i8* %43, align 4, !dbg !1861, !tbaa !1485
  %45 = icmp eq i8 %44, %30, !dbg !1863
  br i1 %45, label %54, label %36

; <label>:46:                                     ; preds = %36
  br label %47, !dbg !1864

; <label>:47:                                     ; preds = %46, %29
  %48 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1864, !tbaa !230
  %49 = and i8 %48, 4, !dbg !1864
  %50 = icmp eq i8 %49, 0, !dbg !1864
  br i1 %50, label %121, label %51, !dbg !1868

; <label>:51:                                     ; preds = %47
  %52 = zext i8 %27 to i32, !dbg !1869
  %53 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0), i32 %52) #13, !dbg !1869
  br label %121, !dbg !1869

; <label>:54:                                     ; preds = %40
  %55 = bitcast %struct.btstack_linked_item* %41 to %struct.rfcomm_service_t*, !dbg !1871
  %56 = tail call fastcc %struct.rfcomm_channel_t* @rfcomm_channel_create(%struct.rfcomm_multiplexer_t* %20, %struct.rfcomm_service_t* nonnull %55, i8 zeroext %30) #13, !dbg !1872
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %56, metadata !1844, metadata !DIExpression()), !dbg !1848
  %57 = icmp eq %struct.rfcomm_channel_t* %56, null, !dbg !1873
  br i1 %57, label %58, label %64, !dbg !1875

; <label>:58:                                     ; preds = %54
  %59 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1876, !tbaa !230
  %60 = and i8 %59, 4, !dbg !1876
  %61 = icmp eq i8 %60, 0, !dbg !1876
  br i1 %61, label %121, label %62, !dbg !1879

; <label>:62:                                     ; preds = %58
  %63 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @str.21, i32 0, i32 0)) #12, !dbg !1880
  br label %121, !dbg !1880

; <label>:64:                                     ; preds = %54
  %65 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %41, i32 3, !dbg !1882
  %66 = bitcast %struct.btstack_linked_item* %65 to i32*, !dbg !1882
  %67 = load i32, i32* %66, align 4, !dbg !1882, !tbaa !1508
  %68 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %56, i32 0, i32 6, !dbg !1883
  %69 = bitcast i8** %68 to i32*, !dbg !1884
  store i32 %67, i32* %69, align 4, !dbg !1884, !tbaa !488
  br label %102, !dbg !1885

; <label>:70:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 %25, metadata !1461, metadata !DIExpression()), !dbg !1886
  %71 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1889, !tbaa !244
  %72 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %71, i32 0, i32 3, !dbg !1890
  %73 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %72, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %73, metadata !1466, metadata !DIExpression()), !dbg !1891
  %74 = icmp eq %struct.btstack_linked_item* %73, null, !dbg !1892
  br i1 %74, label %121, label %75, !dbg !1892

; <label>:75:                                     ; preds = %70
  br label %80, !dbg !1893

; <label>:76:                                     ; preds = %80
  %77 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %81, i32 0, i32 0, !dbg !1894
  %78 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %77, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %78, metadata !1466, metadata !DIExpression()), !dbg !1891
  %79 = icmp eq %struct.btstack_linked_item* %78, null, !dbg !1892
  br i1 %79, label %120, label %80, !dbg !1892, !llvm.loop !1482

; <label>:80:                                     ; preds = %76, %75
  %81 = phi %struct.btstack_linked_item* [ %78, %76 ], [ %73, %75 ]
  %82 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %81, i32 1, !dbg !1893
  %83 = bitcast %struct.btstack_linked_item* %82 to i8*, !dbg !1893
  %84 = load i8, i8* %83, align 4, !dbg !1893, !tbaa !1485
  %85 = icmp eq i8 %84, %25, !dbg !1895
  br i1 %85, label %86, label %76

; <label>:86:                                     ; preds = %80
  %87 = tail call fastcc %struct.rfcomm_channel_t* @rfcomm_channel_create(%struct.rfcomm_multiplexer_t* %20, %struct.rfcomm_service_t* null, i8 zeroext %25) #13, !dbg !1896
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %87, metadata !1844, metadata !DIExpression()), !dbg !1848
  %88 = icmp eq %struct.rfcomm_channel_t* %87, null, !dbg !1897
  br i1 %88, label %89, label %95, !dbg !1899

; <label>:89:                                     ; preds = %86
  %90 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1900, !tbaa !230
  %91 = and i8 %90, 4, !dbg !1900
  %92 = icmp eq i8 %91, 0, !dbg !1900
  br i1 %92, label %121, label %93, !dbg !1903

; <label>:93:                                     ; preds = %89
  %94 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.19, i32 0, i32 0)) #12, !dbg !1904
  br label %121, !dbg !1904

; <label>:95:                                     ; preds = %86
  %96 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %87, i32 0, i32 6, !dbg !1906
  store i8* null, i8** %96, align 4, !dbg !1907, !tbaa !488
  %97 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %81, i32 4, !dbg !1908
  %98 = bitcast %struct.btstack_linked_item* %97 to i32*, !dbg !1908
  %99 = load i32, i32* %98, align 4, !dbg !1908, !tbaa !668
  %100 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %87, i32 0, i32 5, !dbg !1909
  %101 = bitcast void (i8, i16, i8*, i16)** %100 to i32*, !dbg !1910
  store i32 %99, i32* %101, align 4, !dbg !1910, !tbaa !495
  br label %102

; <label>:102:                                    ; preds = %95, %64
  %103 = phi %struct.rfcomm_channel_t* [ %56, %64 ], [ %87, %95 ]
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %103, metadata !1844, metadata !DIExpression()), !dbg !1848
  %104 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1911, !tbaa !230
  %105 = and i8 %104, 1, !dbg !1911
  %106 = icmp eq i8 %105, 0, !dbg !1911
  br i1 %106, label %109, label %107, !dbg !1913

; <label>:107:                                    ; preds = %102
  %108 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32 30, i32 30) #13, !dbg !1914
  br label %109, !dbg !1914

; <label>:109:                                    ; preds = %107, %102
  %110 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %103, i32 0, i32 2, i32 0, !dbg !1916
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %110, i8* %11, i32 30, i32 1, i1 false) #12, !dbg !1916
  %111 = load i8, i8* %110, align 4, !dbg !1917, !tbaa !1765
  %112 = icmp eq i8 %111, 0, !dbg !1919
  br i1 %112, label %121, label %113, !dbg !1920

; <label>:113:                                    ; preds = %109
  %114 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !1921, !tbaa !230
  %115 = and i8 %114, 1, !dbg !1921
  %116 = icmp eq i8 %115, 0, !dbg !1921
  br i1 %116, label %119, label %117, !dbg !1924

; <label>:117:                                    ; preds = %113
  %118 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.20, i32 0, i32 0)) #12, !dbg !1925
  br label %119, !dbg !1925

; <label>:119:                                    ; preds = %117, %113
  tail call fastcc void @rfcomm_emit_channel_opened(%struct.rfcomm_channel_t* nonnull %103, i8 zeroext 117) #13, !dbg !1927
  br label %121, !dbg !1928

; <label>:120:                                    ; preds = %76
  br label %121, !dbg !1929

; <label>:121:                                    ; preds = %120, %119, %109, %93, %89, %70, %62, %58, %51, %47, %18
  %122 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 0, i32 0, !dbg !1929
  %123 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %122, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %123, metadata !1800, metadata !DIExpression()), !dbg !1823
  %124 = icmp eq %struct.btstack_linked_item* %123, null, !dbg !1824
  br i1 %124, label %125, label %18, !dbg !1824, !llvm.loop !1931

; <label>:125:                                    ; preds = %121
  br label %126, !dbg !1934

; <label>:126:                                    ; preds = %125, %7
  %127 = add i8 %8, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i8 %127, metadata !1795, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 %127, metadata !1795, metadata !DIExpression()), !dbg !1936
  %128 = load i8, i8* %0, align 1, !dbg !1937, !tbaa !230
  %129 = icmp ult i8 %127, %128, !dbg !1938
  br i1 %129, label %7, label %130, !dbg !1939, !llvm.loop !1941

; <label>:130:                                    ; preds = %126
  br label %131, !dbg !1944

; <label>:131:                                    ; preds = %130, %2
  ret void, !dbg !1944
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind optsize
define hidden i32 @rfc_multiplexer_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1948, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i16 %1, metadata !1949, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 14, metadata !1950, metadata !DIExpression()), !dbg !1960
  %3 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !1961, !tbaa !244
  %4 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %3, i32 0, i32 1, !dbg !1962
  %5 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %4, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !1952, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !1959
  %6 = icmp eq %struct.btstack_linked_item* %5, null, !dbg !1964
  br i1 %6, label %27, label %7, !dbg !1964

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1966

; <label>:8:                                      ; preds = %8, %7
  %9 = phi %struct.btstack_linked_item* [ %19, %8 ], [ %5, %7 ]
  %10 = phi i8 [ %17, %8 ], [ 0, %7 ]
  %11 = bitcast %struct.btstack_linked_item* %9 to %struct.rfcomm_multiplexer_t*, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %11, metadata !1953, metadata !DIExpression()), !dbg !1967
  %12 = zext i8 %10 to i32, !dbg !1968
  %13 = mul nuw nsw i32 %12, 14, !dbg !1969
  %14 = or i32 %13, 1, !dbg !1970
  %15 = getelementptr inbounds i8, i8* %0, i32 %14, !dbg !1971
  %16 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %11, i32 0, i32 2, i32 0, i32 0, !dbg !1972
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 14, i32 1, i1 false), !dbg !1972
  %17 = add i8 %10, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i8 %17, metadata !1951, metadata !DIExpression()), !dbg !1959
  %18 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !1974
  %19 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %18, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %19, metadata !1952, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %17, metadata !1951, metadata !DIExpression()), !dbg !1959
  %20 = icmp eq %struct.btstack_linked_item* %19, null, !dbg !1964
  br i1 %20, label %21, label %8, !dbg !1964, !llvm.loop !1976

; <label>:21:                                     ; preds = %8
  %22 = icmp eq i8 %17, 0, !dbg !1979
  br i1 %22, label %27, label %23, !dbg !1981

; <label>:23:                                     ; preds = %21
  store i8 %17, i8* %0, align 1, !dbg !1982, !tbaa !230
  %24 = zext i8 %17 to i32, !dbg !1984
  %25 = mul nuw nsw i32 %24, 14, !dbg !1985
  %26 = or i32 %25, 1, !dbg !1986
  br label %27, !dbg !1987

; <label>:27:                                     ; preds = %23, %21, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %21 ], [ 0, %2 ]
  ret i32 %28, !dbg !1988
}

; Function Attrs: nounwind optsize
define hidden void @rfc_multiplexer_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1991, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i16 %1, metadata !1992, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !2008
  %3 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %3, metadata !1997, metadata !DIExpression()), !dbg !2010
  %4 = load i8, i8* %0, align 1, !dbg !2011, !tbaa !230
  %5 = icmp eq i8 %4, 0, !dbg !2013
  br i1 %5, label %34, label %6, !dbg !2014

; <label>:6:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2015
  %7 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !tbaa !244
  %8 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %7, i32 0, i32 1
  br label %9, !dbg !2016

; <label>:9:                                      ; preds = %29, %6
  %10 = phi i8 [ %30, %29 ], [ 0, %6 ]
  %11 = zext i8 %10 to i32, !dbg !2016
  %12 = mul nuw nsw i32 %11, 14, !dbg !2018
  %13 = getelementptr inbounds i8, i8* %3, i32 %12, !dbg !2019
  %14 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %14, metadata !1998, metadata !DIExpression()), !dbg !2020
  %15 = icmp eq %struct.btstack_linked_item* %14, null, !dbg !2021
  br i1 %15, label %29, label %16, !dbg !2021

; <label>:16:                                     ; preds = %9
  br label %17, !dbg !2023

; <label>:17:                                     ; preds = %24, %16
  %18 = phi %struct.btstack_linked_item* [ %26, %24 ], [ %14, %16 ]
  %19 = bitcast %struct.btstack_linked_item* %18 to %struct.rfcomm_multiplexer_t*, !dbg !2023
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %19, metadata !1999, metadata !DIExpression()), !dbg !2024
  %20 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %19, i32 0, i32 2, i32 0, i32 0, !dbg !2025
  %21 = tail call i32 @memcmp(i8* %13, i8* %20, i32 6) #14, !dbg !2027
  %22 = icmp eq i32 %21, 0, !dbg !2027
  br i1 %22, label %23, label %24, !dbg !2028

; <label>:23:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %13, i32 14, i32 2, i1 false), !dbg !2029
  br label %24, !dbg !2031

; <label>:24:                                     ; preds = %23, %17
  %25 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %18, i32 0, i32 0, !dbg !2032
  %26 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %25, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %26, metadata !1998, metadata !DIExpression()), !dbg !2020
  %27 = icmp eq %struct.btstack_linked_item* %26, null, !dbg !2021
  br i1 %27, label %28, label %17, !dbg !2021, !llvm.loop !2034

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !2037

; <label>:29:                                     ; preds = %28, %9
  %30 = add i8 %10, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i8 %30, metadata !1993, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %30, metadata !1993, metadata !DIExpression()), !dbg !2015
  %31 = load i8, i8* %0, align 1, !dbg !2039, !tbaa !230
  %32 = icmp ult i8 %30, %31, !dbg !2040
  br i1 %32, label %9, label %33, !dbg !2041, !llvm.loop !2043

; <label>:33:                                     ; preds = %29
  br label %34, !dbg !2046

; <label>:34:                                     ; preds = %33, %2
  ret void, !dbg !2046
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* nocapture, i8 zeroext, i8 zeroext, i8 zeroext, i8* nocapture readonly, i16 zeroext) unnamed_addr #11 section ".bt_stack_code" !dbg !2048 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !2052, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 %1, metadata !2053, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %2, metadata !2054, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8 %3, metadata !2055, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %4, metadata !2056, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i16 %5, metadata !2057, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* null, metadata !2058, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* null, metadata !2059, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i16 0, metadata !2060, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 3, metadata !2061, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2074
  %7 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 1, !dbg !2075
  %8 = load i16, i16* %7, align 2, !dbg !2075, !tbaa !781
  %9 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %8) #13, !dbg !2077
  %10 = icmp eq i32 %9, 0, !dbg !2077
  br i1 %10, label %69, label %11, !dbg !2078

; <label>:11:                                     ; preds = %6
  %12 = zext i16 %5 to i32, !dbg !2079
  %13 = add i16 %5, 16, !dbg !2080
  %14 = tail call i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext %13) #13, !dbg !2081
  call void @llvm.dbg.value(metadata i8* %14, metadata !2058, metadata !DIExpression()), !dbg !2070
  %15 = getelementptr inbounds i8, i8* %14, i32 8, !dbg !2082
  call void @llvm.dbg.value(metadata i8* %15, metadata !2059, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i16 1, metadata !2060, metadata !DIExpression()), !dbg !2072
  store i8 %1, i8* %15, align 1, !dbg !2083, !tbaa !230
  call void @llvm.dbg.value(metadata i16 2, metadata !2060, metadata !DIExpression()), !dbg !2072
  %16 = getelementptr inbounds i8, i8* %14, i32 9, !dbg !2084
  store i8 %2, i8* %16, align 1, !dbg !2085, !tbaa !230
  %17 = icmp ult i16 %5, 128, !dbg !2086
  %18 = trunc i16 %5 to i8
  %19 = shl i8 %18, 1
  br i1 %17, label %20, label %22, !dbg !2088

; <label>:20:                                     ; preds = %11
  %21 = or i8 %19, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i16 3, metadata !2060, metadata !DIExpression()), !dbg !2072
  br label %26, !dbg !2091

; <label>:22:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i16 3, metadata !2060, metadata !DIExpression()), !dbg !2072
  %23 = getelementptr inbounds i8, i8* %14, i32 10, !dbg !2092
  store i8 %19, i8* %23, align 1, !dbg !2094, !tbaa !230
  %24 = lshr i16 %5, 7, !dbg !2095
  %25 = trunc i16 %24 to i8, !dbg !2095
  call void @llvm.dbg.value(metadata i16 4, metadata !2060, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 4, metadata !2061, metadata !DIExpression()), !dbg !2073
  br label %26

; <label>:26:                                     ; preds = %22, %20
  %27 = phi i32 [ 11, %22 ], [ 10, %20 ]
  %28 = phi i8 [ %25, %22 ], [ %21, %20 ]
  %29 = phi i16 [ 4, %22 ], [ 3, %20 ]
  %30 = getelementptr inbounds i8, i8* %14, i32 %27
  store i8 %28, i8* %30, align 1, !tbaa !230
  call void @llvm.dbg.value(metadata i16 %29, metadata !2060, metadata !DIExpression()), !dbg !2072
  %31 = icmp eq i8 %2, -1, !dbg !2096
  br i1 %31, label %32, label %36, !dbg !2098

; <label>:32:                                     ; preds = %26
  %33 = add nuw nsw i16 %29, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i16 %33, metadata !2060, metadata !DIExpression()), !dbg !2072
  %34 = zext i16 %29 to i32, !dbg !2101
  %35 = getelementptr inbounds i8, i8* %15, i32 %34, !dbg !2101
  store i8 %3, i8* %35, align 1, !dbg !2102, !tbaa !230
  br label %36, !dbg !2103

; <label>:36:                                     ; preds = %32, %26
  %37 = phi i16 [ %33, %32 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i16 %37, metadata !2060, metadata !DIExpression()), !dbg !2072
  %38 = icmp eq i16 %5, 0, !dbg !2104
  br i1 %38, label %43, label %39, !dbg !2106

; <label>:39:                                     ; preds = %36
  %40 = zext i16 %37 to i32, !dbg !2107
  %41 = getelementptr inbounds i8, i8* %15, i32 %40, !dbg !2107
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %4, i32 %12, i32 1, i1 false), !dbg !2109
  %42 = add i16 %37, %5, !dbg !2110
  call void @llvm.dbg.value(metadata i16 %42, metadata !2060, metadata !DIExpression()), !dbg !2072
  br label %43, !dbg !2111

; <label>:43:                                     ; preds = %39, %36
  %44 = phi i16 [ %42, %39 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i16 %44, metadata !2060, metadata !DIExpression()), !dbg !2072
  %45 = and i8 %2, -17, !dbg !2112
  %46 = icmp eq i8 %45, -17, !dbg !2114
  call void @llvm.dbg.value(metadata i8 2, metadata !2061, metadata !DIExpression()), !dbg !2073
  %47 = select i1 %46, i16 2, i16 %29, !dbg !2115
  %48 = tail call zeroext i8 @crc8_calc(i8* nonnull %15, i16 zeroext %47) #13, !dbg !2116
  %49 = add i16 %44, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i16 %49, metadata !2060, metadata !DIExpression()), !dbg !2072
  %50 = zext i16 %44 to i32, !dbg !2118
  %51 = getelementptr inbounds i8, i8* %15, i32 %50, !dbg !2118
  store i8 %48, i8* %51, align 1, !dbg !2119, !tbaa !230
  %52 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 2, !dbg !2120
  %53 = load i8, i8* %52, align 2, !dbg !2120
  %54 = lshr i8 %53, 4, !dbg !2120
  %55 = icmp eq i8 %54, 0, !dbg !2122
  br i1 %55, label %61, label %56, !dbg !2123

; <label>:56:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()), !dbg !2074
  %57 = shl nuw i8 %54, 4, !dbg !2124
  %58 = add i8 %57, -16, !dbg !2124
  %59 = and i8 %53, 15, !dbg !2124
  %60 = or i8 %58, %59, !dbg !2124
  store i8 %60, i8* %52, align 2, !dbg !2124
  br label %61, !dbg !2126

; <label>:61:                                     ; preds = %56, %43
  %62 = phi i8 [ 16, %56 ], [ 0, %43 ]
  %63 = load i16, i16* %7, align 2, !dbg !2127, !tbaa !781
  %64 = tail call i32 @l2cap_send_prepared(i8* nonnull %14, i16 zeroext %63, i16 zeroext %49, i8 zeroext 0) #13, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %64, metadata !2063, metadata !DIExpression()), !dbg !2129
  %65 = icmp eq i32 %64, 0, !dbg !2130
  br i1 %65, label %69, label %66, !dbg !2132

; <label>:66:                                     ; preds = %61
  %67 = load i8, i8* %52, align 2, !dbg !2133
  %68 = add i8 %67, %62, !dbg !2133
  store i8 %68, i8* %52, align 2, !dbg !2133
  br label %69, !dbg !2135

; <label>:69:                                     ; preds = %66, %61, %6
  %70 = phi i32 [ 87, %6 ], [ 0, %61 ], [ %64, %66 ]
  ret i32 %70, !dbg !2136
}

; Function Attrs: optsize
declare i32 @l2cap_can_send_packet_now(i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @crc8_calc(i8*, i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @l2cap_send_prepared(i8*, i16 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i8* @btstack_memory_rfcomm_multiplexer_get() local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #9

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #6

; Function Attrs: optsize
declare i8* @btstack_memory_rfcomm_channel_get() local_unnamed_addr #6

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #6

; Function Attrs: optsize
declare void @l2cap_decline_connection_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_emit_channel_opened(%struct.rfcomm_channel_t* nocapture readonly, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2137 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 %1, metadata !2142, metadata !DIExpression()), !dbg !2149
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0, !dbg !2150
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #12, !dbg !2150
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !2143, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2152
  %5 = icmp eq i8 %1, 117, !dbg !2153
  call void @llvm.dbg.value(metadata i8 1, metadata !2147, metadata !DIExpression()), !dbg !2152
  %6 = select i1 %5, i8 -119, i8 -128, !dbg !2155
  %7 = select i1 %5, i8 0, i8 %1, !dbg !2155
  store i8 %6, i8* %4, align 1, !dbg !2157, !tbaa !230
  call void @llvm.dbg.value(metadata i8 %7, metadata !2142, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 2, metadata !2147, metadata !DIExpression()), !dbg !2152
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 1, !dbg !2158
  store i8 14, i8* %8, align 1, !dbg !2159, !tbaa !230
  call void @llvm.dbg.value(metadata i8 3, metadata !2147, metadata !DIExpression()), !dbg !2152
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 2, !dbg !2160
  store i8 %7, i8* %9, align 1, !dbg !2161, !tbaa !230
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 3, !dbg !2162
  %11 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 1, !dbg !2163
  %12 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %11, align 4, !dbg !2163, !tbaa !368
  %13 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %12, i32 0, i32 2, i32 0, i32 0, !dbg !2164
  call void @bt_flip_addr(i8* %10, i8* %13) #13, !dbg !2165
  call void @llvm.dbg.value(metadata i8 9, metadata !2147, metadata !DIExpression()), !dbg !2152
  %14 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %11, align 4, !dbg !2166, !tbaa !368
  %15 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %14, i32 0, i32 2, i32 6, !dbg !2167
  %16 = load i16, i16* %15, align 2, !dbg !2167, !tbaa !778
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 9, i16 zeroext %16) #13, !dbg !2168
  call void @llvm.dbg.value(metadata i8 11, metadata !2147, metadata !DIExpression()), !dbg !2152
  %17 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2169
  %18 = load i8, i8* %17, align 1, !dbg !2169, !tbaa !370
  %19 = lshr i8 %18, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i8 12, metadata !2147, metadata !DIExpression()), !dbg !2152
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 11, !dbg !2171
  store i8 %19, i8* %20, align 1, !dbg !2172, !tbaa !230
  %21 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 2, !dbg !2173
  %22 = load i16, i16* %21, align 4, !dbg !2173, !tbaa !258
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 12, i16 zeroext %22) #13, !dbg !2174
  call void @llvm.dbg.value(metadata i8 14, metadata !2147, metadata !DIExpression()), !dbg !2152
  %23 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 3, !dbg !2175
  %24 = load i16, i16* %23, align 2, !dbg !2175, !tbaa !650
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 14, i16 zeroext %24) #13, !dbg !2176
  call void @llvm.dbg.value(metadata i8 16, metadata !2147, metadata !DIExpression()), !dbg !2152
  call fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* %0, i8 zeroext 4, i8* nonnull %4, i16 zeroext 16) #14, !dbg !2177
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #12, !dbg !2178
  ret void, !dbg !2178
}

; Function Attrs: optsize
declare void @btstack_memory_rfcomm_channel_free(i8*) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_multiplexer_free(%struct.rfcomm_multiplexer_t*) unnamed_addr #0 section ".bt_stack_code" !dbg !2179 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !2181, metadata !DIExpression()), !dbg !2182
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2183, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 1, !dbg !2183
  %4 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 0, !dbg !2183
  %5 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %3, %struct.btstack_linked_item* %4) #13, !dbg !2183
  %6 = bitcast %struct.rfcomm_multiplexer_t* %0 to i8*, !dbg !2184
  tail call void @btstack_memory_rfcomm_multiplexer_free(i8* %6) #13, !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_hand_out_credits() unnamed_addr #0 section ".bt_stack_code" !dbg !2187 {
  %1 = alloca [5 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %1, metadata !2194, metadata !DIExpression()), !dbg !2202
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2204, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !2205
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !2189, metadata !DIExpression()), !dbg !2206
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !2207
  br i1 %5, label %42, label %6, !dbg !2207

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 0
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 1
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 4
  br label %10, !dbg !2207

; <label>:10:                                     ; preds = %37, %6
  %11 = phi %struct.btstack_linked_item* [ %4, %6 ], [ %39, %37 ]
  %12 = bitcast %struct.btstack_linked_item* %11 to %struct.rfcomm_channel_t*, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %12, metadata !2190, metadata !DIExpression()), !dbg !2210
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 2, !dbg !2211
  %14 = bitcast %struct.btstack_linked_item* %13 to %struct.rfc_channel_core_data_t*, !dbg !2211
  %15 = getelementptr inbounds %struct.rfc_channel_core_data_t, %struct.rfc_channel_core_data_t* %14, i32 0, i32 10, !dbg !2213
  %16 = load i8, i8* %15, align 1, !dbg !2213, !tbaa !502
  %17 = icmp eq i8 %16, 9, !dbg !2214
  br i1 %17, label %18, label %37, !dbg !2215

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.rfc_channel_core_data_t, %struct.rfc_channel_core_data_t* %14, i32 0, i32 6, !dbg !2216
  %20 = load i8, i8* %19, align 1, !dbg !2216, !tbaa !358
  %21 = icmp eq i8 %20, 0, !dbg !2218
  br i1 %21, label %37, label %22, !dbg !2219

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 1, !dbg !2220
  %24 = bitcast %struct.btstack_linked_item* %23 to %struct.rfcomm_multiplexer_t**, !dbg !2220
  %25 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %24, align 4, !dbg !2220, !tbaa !368
  %26 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %25, i32 0, i32 2, i32 2, !dbg !2222
  %27 = load i8, i8* %26, align 2, !dbg !2222
  %28 = icmp ugt i8 %27, 15, !dbg !2223
  br i1 %28, label %29, label %37, !dbg !2224

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 5, !dbg !2225
  %31 = bitcast %struct.btstack_linked_item* %30 to i8*, !dbg !2225
  %32 = load i8, i8* %31, align 4, !dbg !2226, !tbaa !366
  %33 = add i8 %32, 1, !dbg !2226
  store i8 %33, i8* %31, align 4, !dbg !2226, !tbaa !366
  call void @llvm.dbg.value(metadata i8 1, metadata !2198, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %7) #12, !dbg !2228
  store i8 -124, i8* %7, align 1, !dbg !2229, !tbaa !230
  store i8 3, i8* %8, align 1, !dbg !2230, !tbaa !230
  %34 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 4, !dbg !2231
  %35 = bitcast %struct.btstack_linked_item* %34 to i16*, !dbg !2231
  %36 = load i16, i16* %35, align 4, !dbg !2231, !tbaa !258
  call void @bt_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %36) #13, !dbg !2232
  store i8 1, i8* %9, align 1, !dbg !2233, !tbaa !230
  call fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* nonnull %12, i8 zeroext 4, i8* nonnull %7, i16 zeroext 5) #13, !dbg !2234
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %7) #12, !dbg !2235
  br label %37, !dbg !2236

; <label>:37:                                     ; preds = %29, %22, %18, %10
  %38 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 0, i32 0, !dbg !2237
  %39 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %38, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %39, metadata !2189, metadata !DIExpression()), !dbg !2206
  %40 = icmp eq %struct.btstack_linked_item* %39, null, !dbg !2207
  br i1 %40, label %41, label %10, !dbg !2207, !llvm.loop !2239

; <label>:41:                                     ; preds = %37
  br label %42, !dbg !2242

; <label>:42:                                     ; preds = %41, %0
  ret void, !dbg !2242
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_multiplexer_finalize(%struct.rfcomm_multiplexer_t*) unnamed_addr #0 section ".bt_stack_code" !dbg !2243 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !2245, metadata !DIExpression()), !dbg !2251
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2252, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !2246, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !2246, metadata !DIExpression()), !dbg !2254
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !dbg !2255, !tbaa !806
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !2257
  br i1 %5, label %41, label %6, !dbg !2257

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.btstack_linked_item** %3 to %struct.btstack_linked_item*, !dbg !2258
  br label %12

; <label>:8:                                      ; preds = %18
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %19, metadata !2246, metadata !DIExpression()), !dbg !2254
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 0, i32 0, !dbg !2255
  %10 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %9, align 4, !dbg !2255, !tbaa !806
  %11 = icmp eq %struct.btstack_linked_item* %10, null, !dbg !2257
  br i1 %11, label %40, label %12, !dbg !2257

; <label>:12:                                     ; preds = %8, %6
  %13 = phi %struct.btstack_linked_item* [ %10, %8 ], [ %4, %6 ]
  %14 = phi %struct.btstack_linked_item** [ %9, %8 ], [ %3, %6 ]
  %15 = phi %struct.btstack_linked_item* [ %19, %8 ], [ %7, %6 ]
  %16 = bitcast %struct.btstack_linked_item* %15 to i32**
  %17 = bitcast %struct.btstack_linked_item* %15 to i32*
  br label %18, !dbg !2257

; <label>:18:                                     ; preds = %33, %12
  %19 = phi %struct.btstack_linked_item* [ %13, %12 ], [ %37, %33 ]
  %20 = bitcast %struct.btstack_linked_item* %19 to %struct.rfcomm_channel_t*, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %20, metadata !2247, metadata !DIExpression()), !dbg !2260
  %21 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 1, !dbg !2261
  %22 = bitcast %struct.btstack_linked_item* %21 to %struct.rfcomm_multiplexer_t**, !dbg !2261
  %23 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %22, align 4, !dbg !2261, !tbaa !368
  %24 = icmp eq %struct.rfcomm_multiplexer_t* %23, %0, !dbg !2263
  br i1 %24, label %25, label %8, !dbg !2264, !llvm.loop !2265

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 2, !dbg !2268
  %27 = bitcast %struct.btstack_linked_item* %26 to %struct.rfc_channel_core_data_t*, !dbg !2268
  %28 = getelementptr inbounds %struct.rfc_channel_core_data_t, %struct.rfc_channel_core_data_t* %27, i32 0, i32 10, !dbg !2271
  %29 = load i8, i8* %28, align 1, !dbg !2271, !tbaa !502
  %30 = icmp eq i8 %29, 9, !dbg !2272
  br i1 %30, label %31, label %32, !dbg !2273

; <label>:31:                                     ; preds = %25
  tail call fastcc void @rfcomm_emit_channel_closed(%struct.rfcomm_channel_t* nonnull %20) #14, !dbg !2274
  br label %33, !dbg !2276

; <label>:32:                                     ; preds = %25
  tail call fastcc void @rfcomm_emit_channel_opened(%struct.rfcomm_channel_t* nonnull %20, i8 zeroext 112) #14, !dbg !2277
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = load i32*, i32** %16, align 4, !dbg !2279, !tbaa !806
  %35 = load i32, i32* %34, align 4, !dbg !2280, !tbaa !806
  store i32 %35, i32* %17, align 4, !dbg !2281, !tbaa !806
  %36 = bitcast %struct.btstack_linked_item* %19 to i8*, !dbg !2282
  tail call void @btstack_memory_rfcomm_channel_free(i8* %36) #13, !dbg !2283
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* undef, metadata !2246, metadata !DIExpression()), !dbg !2254
  %37 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %14, align 4, !dbg !2255, !tbaa !806
  %38 = icmp eq %struct.btstack_linked_item* %37, null, !dbg !2257
  br i1 %38, label %39, label %18, !dbg !2257, !llvm.loop !2265

; <label>:39:                                     ; preds = %33
  br label %41, !dbg !2284

; <label>:40:                                     ; preds = %8
  br label %41, !dbg !2284

; <label>:41:                                     ; preds = %40, %39, %1
  %42 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 1, !dbg !2284
  %43 = load i16, i16* %42, align 2, !dbg !2284, !tbaa !781
  call void @llvm.dbg.value(metadata i16 %43, metadata !2249, metadata !DIExpression()), !dbg !2285
  tail call fastcc void @rfcomm_multiplexer_free(%struct.rfcomm_multiplexer_t* %0) #14, !dbg !2286
  tail call void @l2cap_disconnect_internal(i16 zeroext %43, i8 zeroext 19) #13, !dbg !2287
  ret void, !dbg !2288
}

; Function Attrs: optsize
declare void @bt_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* nocapture readonly, i8 zeroext, i8*, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2289 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2293, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %1, metadata !2294, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %2, metadata !2295, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i16 %3, metadata !2296, metadata !DIExpression()), !dbg !2300
  %5 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 5, !dbg !2301
  %6 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %5, align 4, !dbg !2301, !tbaa !495
  %7 = icmp eq void (i8, i16, i8*, i16)* %6, null, !dbg !2303
  br i1 %7, label %13, label %8, !dbg !2304

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 1, !dbg !2305
  %10 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %9, align 4, !dbg !2305, !tbaa !368
  %11 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %10, i32 0, i32 2, i32 1, !dbg !2307
  %12 = load i16, i16* %11, align 2, !dbg !2307, !tbaa !781
  tail call void %6(i8 zeroext %1, i16 zeroext %12, i8* %2, i16 zeroext %3) #13, !dbg !2308
  br label %21, !dbg !2309

; <label>:13:                                     ; preds = %4
  %14 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2310, !tbaa !244
  %15 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %14, i32 0, i32 0, !dbg !2312
  %16 = load void (i8*, i8, i16, i8*, i16)*, void (i8*, i8, i16, i8*, i16)** %15, align 4, !dbg !2312, !tbaa !277
  %17 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 6, !dbg !2313
  %18 = load i8*, i8** %17, align 4, !dbg !2313, !tbaa !488
  %19 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 2, !dbg !2314
  %20 = load i16, i16* %19, align 4, !dbg !2314, !tbaa !258
  tail call void %16(i8* %18, i8 zeroext %1, i16 zeroext %20, i8* %2, i16 zeroext %3) #13, !dbg !2315
  br label %21

; <label>:21:                                     ; preds = %13, %8
  ret void, !dbg !2316
}

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #6

; Function Attrs: optsize
declare void @btstack_memory_rfcomm_multiplexer_free(i8*) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_emit_channel_closed(%struct.rfcomm_channel_t* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !2317 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2321, metadata !DIExpression()), !dbg !2326
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12, !dbg !2327
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %2, metadata !2322, metadata !DIExpression()), !dbg !2328
  store i8 -127, i8* %3, align 1, !dbg !2329, !tbaa !230
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 1, !dbg !2330
  store i8 2, i8* %4, align 1, !dbg !2331, !tbaa !230
  %5 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 2, !dbg !2332
  %6 = load i16, i16* %5, align 4, !dbg !2332, !tbaa !258
  call void @bt_store_16(i8* nonnull %3, i16 zeroext 2, i16 zeroext %6) #13, !dbg !2333
  call fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* %0, i8 zeroext 4, i8* nonnull %3, i16 zeroext 4) #14, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12, !dbg !2335
  ret void, !dbg !2335
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_multiplexer_opened(%struct.rfcomm_multiplexer_t*) unnamed_addr #0 section ".bt_stack_code" !dbg !2336 {
  %2 = alloca %struct.rfcomm_channel_event, align 4
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !2338, metadata !DIExpression()), !dbg !2345
  %3 = bitcast %struct.rfcomm_channel_event* %2 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12, !dbg !2346
  %4 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %2, i32 0, i32 0, !dbg !2347
  store i32 12, i32* %4, align 4, !dbg !2347
  %5 = load i8, i8* @rfcomm_debug_enable, align 1, !dbg !2348, !tbaa !230
  %6 = and i8 %5, 1, !dbg !2348
  %7 = icmp eq i8 %6, 0, !dbg !2348
  br i1 %7, label %10, label %8, !dbg !2350

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.24, i32 0, i32 0)), !dbg !2351
  br label %10, !dbg !2351

; <label>:10:                                     ; preds = %8, %1
  %11 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 2, !dbg !2353
  %12 = load i8, i8* %11, align 2, !dbg !2354
  %13 = and i8 %12, -16, !dbg !2354
  %14 = or i8 %13, 7, !dbg !2354
  store i8 %14, i8* %11, align 2, !dbg !2354
  %15 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2355, !tbaa !244
  %16 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %15, i32 0, i32 2, !dbg !2356
  %17 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %16, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %17, metadata !2339, metadata !DIExpression()), !dbg !2357
  %18 = icmp eq %struct.btstack_linked_item* %17, null, !dbg !2358
  br i1 %18, label %33, label %19, !dbg !2358

; <label>:19:                                     ; preds = %10
  br label %20, !dbg !2360

; <label>:20:                                     ; preds = %28, %19
  %21 = phi %struct.btstack_linked_item* [ %30, %28 ], [ %17, %19 ]
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %27, metadata !2341, metadata !DIExpression()), !dbg !2360
  %22 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 1, !dbg !2361
  %23 = bitcast %struct.btstack_linked_item* %22 to %struct.rfcomm_multiplexer_t**, !dbg !2361
  %24 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %23, align 4, !dbg !2361, !tbaa !368
  %25 = icmp eq %struct.rfcomm_multiplexer_t* %24, %0, !dbg !2363
  br i1 %25, label %26, label %28, !dbg !2364

; <label>:26:                                     ; preds = %20
  %27 = bitcast %struct.btstack_linked_item* %21 to %struct.rfcomm_channel_t*, !dbg !2365
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %2, metadata !2340, metadata !DIExpression(DW_OP_deref)), !dbg !2347
  call fastcc void @rfcomm_channel_state_machine(%struct.rfcomm_channel_t* %27, %struct.rfcomm_channel_event* nonnull %2) #14, !dbg !2366
  br label %28, !dbg !2367

; <label>:28:                                     ; preds = %26, %20
  %29 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 0, i32 0, !dbg !2368
  %30 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %29, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %30, metadata !2339, metadata !DIExpression()), !dbg !2357
  %31 = icmp eq %struct.btstack_linked_item* %30, null, !dbg !2358
  br i1 %31, label %32, label %20, !dbg !2358, !llvm.loop !2370

; <label>:32:                                     ; preds = %28
  br label %33, !dbg !2373

; <label>:33:                                     ; preds = %32, %10
  tail call fastcc void @rfcomm_run() #14, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12, !dbg !2374
  ret void, !dbg !2374
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_channel_state_machine(%struct.rfcomm_channel_t*, %struct.rfcomm_channel_event* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !2375 {
  %3 = alloca [4 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %3, metadata !2405, metadata !DIExpression()), !dbg !2415
  %4 = alloca [10 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2419, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2435, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2451, metadata !DIExpression()), !dbg !2462
  %5 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2379, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %1, metadata !2380, metadata !DIExpression()), !dbg !2469
  %6 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 1, !dbg !2470
  %7 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %6, align 4, !dbg !2470, !tbaa !368
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %7, metadata !2381, metadata !DIExpression()), !dbg !2471
  %8 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %1, i32 0, i32 0, !dbg !2472
  %9 = load i32, i32* %8, align 4, !dbg !2472, !tbaa !1150
  switch i32 %9, label %71 [
    i32 5, label %10
    i32 6, label %12
    i32 9, label %13
    i32 10, label %20
    i32 13, label %31
  ], !dbg !2474

; <label>:10:                                     ; preds = %2
  tail call fastcc void @rfcomm_emit_channel_closed(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2475
  %11 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 10, !dbg !2477
  store i8 10, i8* %11, align 1, !dbg !2478, !tbaa !502
  br label %305, !dbg !2479

; <label>:12:                                     ; preds = %2
  tail call fastcc void @rfcomm_emit_channel_closed(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2480
  tail call fastcc void @rfcomm_channel_finalize(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2483
  br label %305, !dbg !2484

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 0, !dbg !2485
  %15 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %1, i32 1, !dbg !2486
  %16 = bitcast %struct.rfcomm_channel_event* %15 to i8*, !dbg !2485
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %16, i32 7, i32 2, i1 false), !dbg !2485
  %17 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2487
  %18 = load i16, i16* %17, align 4, !dbg !2488, !tbaa !638
  %19 = or i16 %18, 256, !dbg !2488
  store i16 %19, i16* %17, align 4, !dbg !2488, !tbaa !638
  br label %305

; <label>:20:                                     ; preds = %2
  tail call void @llvm.dbg.declare(metadata %struct.rfcomm_rpn_data* undef, metadata !2386, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 -96, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !2489
  call void @llvm.dbg.value(metadata i8 3, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !2489
  call void @llvm.dbg.value(metadata i8 -47, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !2489
  call void @llvm.dbg.value(metadata i8 -45, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !2489
  call void @llvm.dbg.value(metadata i8 127, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !2489
  call void @llvm.dbg.value(metadata i8 63, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !2489
  %21 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 0, !dbg !2490
  store i8 -96, i8* %21, align 1, !dbg !2490
  %22 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 1, !dbg !2490
  store i8 3, i8* %22, align 1, !dbg !2490
  %23 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 2, !dbg !2490
  store i8 0, i8* %23, align 1, !dbg !2490
  %24 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 3, !dbg !2490
  store i8 -47, i8* %24, align 1, !dbg !2490
  %25 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 4, !dbg !2490
  store i8 -45, i8* %25, align 1, !dbg !2490
  %26 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 5, !dbg !2490
  store i8 127, i8* %26, align 1, !dbg !2490
  %27 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 6, !dbg !2490
  store i8 63, i8* %27, align 1, !dbg !2490
  %28 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2491
  %29 = load i16, i16* %28, align 4, !dbg !2492, !tbaa !638
  %30 = or i16 %29, 256, !dbg !2492
  store i16 %30, i16* %28, align 4, !dbg !2492, !tbaa !638
  br label %305

; <label>:31:                                     ; preds = %2
  %32 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2493
  %33 = load i16, i16* %32, align 4, !dbg !2493, !tbaa !638
  %34 = and i16 %33, 256, !dbg !2494
  %35 = icmp eq i16 %34, 0, !dbg !2494
  br i1 %35, label %71, label %36, !dbg !2495

; <label>:36:                                     ; preds = %31
  %37 = and i16 %33, -257, !dbg !2496
  store i16 %37, i16* %32, align 4, !dbg !2496, !tbaa !638
  %38 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2497
  %39 = load i8, i8* %38, align 1, !dbg !2497, !tbaa !370
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %40) #12, !dbg !2498
  %41 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %7, i32 0, i32 2, i32 3, !dbg !2499
  %42 = load i8, i8* %41, align 1, !dbg !2499, !tbaa !386
  %43 = shl i8 %42, 1, !dbg !2500
  %44 = or i8 %43, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i8 %44, metadata !2460, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 1, metadata !2461, metadata !DIExpression()), !dbg !2503
  store i8 -111, i8* %40, align 1, !dbg !2504, !tbaa !230
  call void @llvm.dbg.value(metadata i8 2, metadata !2461, metadata !DIExpression()), !dbg !2503
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 1, !dbg !2505
  store i8 17, i8* %45, align 1, !dbg !2506, !tbaa !230
  %46 = shl i8 %39, 2, !dbg !2507
  %47 = or i8 %46, 3, !dbg !2508
  call void @llvm.dbg.value(metadata i8 3, metadata !2461, metadata !DIExpression()), !dbg !2503
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 2, !dbg !2509
  store i8 %47, i8* %48, align 1, !dbg !2510, !tbaa !230
  %49 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 0, !dbg !2511
  %50 = load i8, i8* %49, align 1, !dbg !2511, !tbaa !2512
  call void @llvm.dbg.value(metadata i8 4, metadata !2461, metadata !DIExpression()), !dbg !2503
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 3, !dbg !2513
  store i8 %50, i8* %51, align 1, !dbg !2514, !tbaa !230
  %52 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 1, !dbg !2515
  %53 = load i8, i8* %52, align 1, !dbg !2515, !tbaa !2516
  call void @llvm.dbg.value(metadata i8 5, metadata !2461, metadata !DIExpression()), !dbg !2503
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 4, !dbg !2517
  store i8 %53, i8* %54, align 1, !dbg !2518, !tbaa !230
  %55 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 2, !dbg !2519
  %56 = load i8, i8* %55, align 1, !dbg !2519, !tbaa !2520
  call void @llvm.dbg.value(metadata i8 6, metadata !2461, metadata !DIExpression()), !dbg !2503
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 5, !dbg !2521
  store i8 %56, i8* %57, align 1, !dbg !2522, !tbaa !230
  %58 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 3, !dbg !2523
  %59 = load i8, i8* %58, align 1, !dbg !2523, !tbaa !2524
  call void @llvm.dbg.value(metadata i8 7, metadata !2461, metadata !DIExpression()), !dbg !2503
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 6, !dbg !2525
  store i8 %59, i8* %60, align 1, !dbg !2526, !tbaa !230
  %61 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 4, !dbg !2527
  %62 = load i8, i8* %61, align 1, !dbg !2527, !tbaa !2528
  call void @llvm.dbg.value(metadata i8 8, metadata !2461, metadata !DIExpression()), !dbg !2503
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 7, !dbg !2529
  store i8 %62, i8* %63, align 1, !dbg !2530, !tbaa !230
  %64 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 5, !dbg !2531
  %65 = load i8, i8* %64, align 1, !dbg !2531, !tbaa !2532
  call void @llvm.dbg.value(metadata i8 9, metadata !2461, metadata !DIExpression()), !dbg !2503
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 8, !dbg !2533
  store i8 %65, i8* %66, align 1, !dbg !2534, !tbaa !230
  %67 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 13, i32 6, !dbg !2535
  %68 = load i8, i8* %67, align 1, !dbg !2535, !tbaa !2536
  call void @llvm.dbg.value(metadata i8 10, metadata !2461, metadata !DIExpression()), !dbg !2503
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 9, !dbg !2537
  store i8 %68, i8* %69, align 1, !dbg !2538, !tbaa !230
  %70 = call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %44, i8 zeroext -17, i8 zeroext 0, i8* nonnull %40, i16 zeroext 10) #13, !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %40) #12, !dbg !2540
  br label %305, !dbg !2541

; <label>:71:                                     ; preds = %31, %2
  %72 = bitcast %struct.rfcomm_channel_event* %1 to %struct.rfcomm_channel_event_pn*, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event_pn* %72, metadata !2382, metadata !DIExpression()), !dbg !2543
  %73 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 10, !dbg !2544
  %74 = load i8, i8* %73, align 1, !dbg !2544, !tbaa !502
  switch i8 %74, label %305 [
    i8 1, label %75
    i8 7, label %84
    i8 2, label %146
    i8 3, label %149
    i8 4, label %174
    i8 5, label %188
    i8 6, label %200
    i8 8, label %206
    i8 9, label %269
    i8 12, label %290
    i8 11, label %295
    i8 10, label %300
  ], !dbg !2545

; <label>:75:                                     ; preds = %71
  switch i32 %9, label %305 [
    i32 1, label %76
    i32 3, label %80
  ], !dbg !2546

; <label>:76:                                     ; preds = %75
  %77 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2547
  %78 = load i16, i16* %77, align 4, !dbg !2549, !tbaa !638
  %79 = or i16 %78, 8, !dbg !2549
  store i16 %79, i16* %77, align 4, !dbg !2549, !tbaa !638
  store i8 7, i8* %73, align 1, !dbg !2550, !tbaa !502
  tail call fastcc void @rfcomm_emit_connection_request(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2551
  br label %305, !dbg !2552

; <label>:80:                                     ; preds = %75
  tail call fastcc void @rfcomm_channel_accept_pn(%struct.rfcomm_channel_t* nonnull %0, %struct.rfcomm_channel_event_pn* nonnull %72) #14, !dbg !2553
  %81 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2554
  %82 = load i16, i16* %81, align 4, !dbg !2555, !tbaa !638
  %83 = or i16 %82, 2, !dbg !2555
  store i16 %83, i16* %81, align 4, !dbg !2555, !tbaa !638
  store i8 7, i8* %73, align 1, !dbg !2556, !tbaa !502
  tail call fastcc void @rfcomm_emit_connection_request(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2557
  br label %305, !dbg !2558

; <label>:84:                                     ; preds = %71
  switch i32 %9, label %305 [
    i32 1, label %85
    i32 3, label %93
    i32 13, label %101
  ], !dbg !2559

; <label>:85:                                     ; preds = %84
  %86 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2560
  %87 = load i16, i16* %86, align 4, !dbg !2561, !tbaa !638
  %88 = or i16 %87, 8, !dbg !2561
  store i16 %88, i16* %86, align 4, !dbg !2561, !tbaa !638
  %89 = and i16 %87, 1, !dbg !2562
  %90 = icmp eq i16 %89, 0, !dbg !2562
  br i1 %90, label %305, label %91, !dbg !2564

; <label>:91:                                     ; preds = %85
  %92 = or i16 %87, 520, !dbg !2565
  store i16 %92, i16* %86, align 4, !dbg !2565, !tbaa !638
  br label %305, !dbg !2567

; <label>:93:                                     ; preds = %84
  tail call fastcc void @rfcomm_channel_accept_pn(%struct.rfcomm_channel_t* nonnull %0, %struct.rfcomm_channel_event_pn* nonnull %72) #14, !dbg !2568
  %94 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2569
  %95 = load i16, i16* %94, align 4, !dbg !2570, !tbaa !638
  %96 = or i16 %95, 2, !dbg !2570
  store i16 %96, i16* %94, align 4, !dbg !2570, !tbaa !638
  %97 = and i16 %95, 1, !dbg !2571
  %98 = icmp eq i16 %97, 0, !dbg !2571
  br i1 %98, label %305, label %99, !dbg !2573

; <label>:99:                                     ; preds = %93
  %100 = or i16 %95, 66, !dbg !2574
  store i16 %100, i16* %94, align 4, !dbg !2574, !tbaa !638
  br label %305, !dbg !2576

; <label>:101:                                    ; preds = %84
  %102 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2577
  %103 = load i16, i16* %102, align 4, !dbg !2577, !tbaa !638
  %104 = zext i16 %103 to i32, !dbg !2578
  %105 = and i32 %104, 64, !dbg !2579
  %106 = icmp eq i32 %105, 0, !dbg !2579
  br i1 %106, label %133, label %107, !dbg !2580

; <label>:107:                                    ; preds = %101
  %108 = and i16 %103, -65, !dbg !2581
  store i16 %108, i16* %102, align 4, !dbg !2581, !tbaa !638
  %109 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2582
  %110 = load i8, i8* %109, align 1, !dbg !2582, !tbaa !370
  %111 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 11, !dbg !2583
  %112 = load i8, i8* %111, align 2, !dbg !2583, !tbaa !2584
  %113 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 3, !dbg !2585
  %114 = load i16, i16* %113, align 2, !dbg !2585, !tbaa !650
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %115) #12, !dbg !2586
  %116 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %7, i32 0, i32 2, i32 3, !dbg !2587
  %117 = load i8, i8* %116, align 1, !dbg !2587, !tbaa !386
  %118 = shl i8 %117, 1, !dbg !2588
  %119 = or i8 %118, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i8 %119, metadata !2444, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 1, metadata !2445, metadata !DIExpression()), !dbg !2591
  store i8 -127, i8* %115, align 1, !dbg !2592, !tbaa !230
  call void @llvm.dbg.value(metadata i8 2, metadata !2445, metadata !DIExpression()), !dbg !2591
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 1, !dbg !2593
  store i8 17, i8* %120, align 1, !dbg !2594, !tbaa !230
  call void @llvm.dbg.value(metadata i8 3, metadata !2445, metadata !DIExpression()), !dbg !2591
  %121 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 2, !dbg !2595
  store i8 %110, i8* %121, align 1, !dbg !2596, !tbaa !230
  call void @llvm.dbg.value(metadata i8 4, metadata !2445, metadata !DIExpression()), !dbg !2591
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 3, !dbg !2597
  store i8 -32, i8* %122, align 1, !dbg !2598, !tbaa !230
  call void @llvm.dbg.value(metadata i8 5, metadata !2445, metadata !DIExpression()), !dbg !2591
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 4, !dbg !2599
  store i8 %112, i8* %123, align 1, !dbg !2600, !tbaa !230
  call void @llvm.dbg.value(metadata i8 6, metadata !2445, metadata !DIExpression()), !dbg !2591
  %124 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 5, !dbg !2601
  store i8 0, i8* %124, align 1, !dbg !2602, !tbaa !230
  %125 = trunc i16 %114 to i8, !dbg !2603
  call void @llvm.dbg.value(metadata i8 7, metadata !2445, metadata !DIExpression()), !dbg !2591
  %126 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 6, !dbg !2604
  store i8 %125, i8* %126, align 1, !dbg !2605, !tbaa !230
  %127 = lshr i16 %114, 8, !dbg !2606
  %128 = trunc i16 %127 to i8, !dbg !2606
  call void @llvm.dbg.value(metadata i8 8, metadata !2445, metadata !DIExpression()), !dbg !2591
  %129 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 7, !dbg !2607
  store i8 %128, i8* %129, align 1, !dbg !2608, !tbaa !230
  call void @llvm.dbg.value(metadata i8 9, metadata !2445, metadata !DIExpression()), !dbg !2591
  %130 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 8, !dbg !2609
  store i8 0, i8* %130, align 1, !dbg !2610, !tbaa !230
  call void @llvm.dbg.value(metadata i8 10, metadata !2445, metadata !DIExpression()), !dbg !2591
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 9, !dbg !2611
  store i8 0, i8* %131, align 1, !dbg !2612, !tbaa !230
  %132 = call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %119, i8 zeroext -17, i8 zeroext 0, i8* nonnull %115, i16 zeroext 10) #13, !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %115) #12, !dbg !2614
  br label %140, !dbg !2615

; <label>:133:                                    ; preds = %101
  %134 = and i32 %104, 512, !dbg !2616
  %135 = icmp eq i32 %134, 0, !dbg !2616
  br i1 %135, label %140, label %136, !dbg !2619

; <label>:136:                                    ; preds = %133
  %137 = and i16 %103, -513, !dbg !2621
  store i16 %137, i16* %102, align 4, !dbg !2621, !tbaa !638
  %138 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2623
  %139 = load i8, i8* %138, align 1, !dbg !2623, !tbaa !370
  tail call fastcc void @rfcomm_send_ua(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %139) #14, !dbg !2624
  br label %140, !dbg !2625

; <label>:140:                                    ; preds = %136, %133, %107
  %141 = load i16, i16* %102, align 4, !dbg !2626, !tbaa !638
  %142 = and i16 %141, 9, !dbg !2628
  %143 = icmp eq i16 %142, 9, !dbg !2628
  br i1 %143, label %144, label %305, !dbg !2628

; <label>:144:                                    ; preds = %140
  %145 = or i16 %141, 5120, !dbg !2629
  store i16 %145, i16* %102, align 4, !dbg !2629, !tbaa !638
  store i8 8, i8* %73, align 1, !dbg !2631, !tbaa !502
  br label %305, !dbg !2632

; <label>:146:                                    ; preds = %71
  %147 = icmp eq i32 %9, 12, !dbg !2633
  br i1 %147, label %148, label %305, !dbg !2633

; <label>:148:                                    ; preds = %146
  store i8 3, i8* %73, align 1, !dbg !2634, !tbaa !502
  br label %305, !dbg !2636

; <label>:149:                                    ; preds = %71
  %150 = icmp eq i32 %9, 13, !dbg !2637
  br i1 %150, label %151, label %305, !dbg !2637

; <label>:151:                                    ; preds = %149
  store i8 4, i8* %73, align 1, !dbg !2638, !tbaa !502
  %152 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2639
  %153 = load i8, i8* %152, align 1, !dbg !2639, !tbaa !370
  %154 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 3, !dbg !2640
  %155 = load i16, i16* %154, align 2, !dbg !2640, !tbaa !650
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %156) #12, !dbg !2641
  %157 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %7, i32 0, i32 2, i32 3, !dbg !2642
  %158 = load i8, i8* %157, align 1, !dbg !2642, !tbaa !386
  %159 = shl i8 %158, 1, !dbg !2643
  %160 = or i8 %159, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i8 %160, metadata !2427, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 1, metadata !2428, metadata !DIExpression()), !dbg !2646
  store i8 -125, i8* %156, align 1, !dbg !2647, !tbaa !230
  call void @llvm.dbg.value(metadata i8 2, metadata !2428, metadata !DIExpression()), !dbg !2646
  %161 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 1, !dbg !2648
  store i8 17, i8* %161, align 1, !dbg !2649, !tbaa !230
  call void @llvm.dbg.value(metadata i8 3, metadata !2428, metadata !DIExpression()), !dbg !2646
  %162 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 2, !dbg !2650
  store i8 %153, i8* %162, align 1, !dbg !2651, !tbaa !230
  call void @llvm.dbg.value(metadata i8 4, metadata !2428, metadata !DIExpression()), !dbg !2646
  %163 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 3, !dbg !2652
  store i8 -16, i8* %163, align 1, !dbg !2653, !tbaa !230
  call void @llvm.dbg.value(metadata i8 5, metadata !2428, metadata !DIExpression()), !dbg !2646
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 4, !dbg !2654
  store i8 0, i8* %164, align 1, !dbg !2655, !tbaa !230
  call void @llvm.dbg.value(metadata i8 6, metadata !2428, metadata !DIExpression()), !dbg !2646
  %165 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 5, !dbg !2656
  store i8 0, i8* %165, align 1, !dbg !2657, !tbaa !230
  %166 = trunc i16 %155 to i8, !dbg !2658
  call void @llvm.dbg.value(metadata i8 7, metadata !2428, metadata !DIExpression()), !dbg !2646
  %167 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 6, !dbg !2659
  store i8 %166, i8* %167, align 1, !dbg !2660, !tbaa !230
  %168 = lshr i16 %155, 8, !dbg !2661
  %169 = trunc i16 %168 to i8, !dbg !2661
  call void @llvm.dbg.value(metadata i8 8, metadata !2428, metadata !DIExpression()), !dbg !2646
  %170 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 7, !dbg !2662
  store i8 %169, i8* %170, align 1, !dbg !2663, !tbaa !230
  call void @llvm.dbg.value(metadata i8 9, metadata !2428, metadata !DIExpression()), !dbg !2646
  %171 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 8, !dbg !2664
  store i8 0, i8* %171, align 1, !dbg !2665, !tbaa !230
  call void @llvm.dbg.value(metadata i8 10, metadata !2428, metadata !DIExpression()), !dbg !2646
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 9, !dbg !2666
  store i8 0, i8* %172, align 1, !dbg !2667, !tbaa !230
  %173 = call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %160, i8 zeroext -17, i8 zeroext 0, i8* nonnull %156, i16 zeroext 10) #13, !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %156) #12, !dbg !2669
  br label %305, !dbg !2670

; <label>:174:                                    ; preds = %71
  %175 = icmp eq i32 %9, 4, !dbg !2671
  br i1 %175, label %176, label %305, !dbg !2671

; <label>:176:                                    ; preds = %174
  %177 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 3, !dbg !2672
  %178 = load i16, i16* %177, align 2, !dbg !2672, !tbaa !650
  %179 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %1, i32 1, !dbg !2675
  %180 = bitcast %struct.rfcomm_channel_event* %179 to i16*, !dbg !2675
  %181 = load i16, i16* %180, align 4, !dbg !2675, !tbaa !1191
  %182 = icmp ugt i16 %178, %181, !dbg !2676
  br i1 %182, label %183, label %184, !dbg !2677

; <label>:183:                                    ; preds = %176
  store i16 %181, i16* %177, align 2, !dbg !2678, !tbaa !650
  br label %184, !dbg !2680

; <label>:184:                                    ; preds = %183, %176
  %185 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %72, i32 0, i32 3, !dbg !2681
  %186 = load i8, i8* %185, align 1, !dbg !2681, !tbaa !1196
  %187 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 6, !dbg !2682
  store i8 %186, i8* %187, align 1, !dbg !2683, !tbaa !358
  store i8 5, i8* %73, align 1, !dbg !2684, !tbaa !502
  br label %305, !dbg !2685

; <label>:188:                                    ; preds = %71
  %189 = icmp eq i32 %9, 13, !dbg !2686
  br i1 %189, label %190, label %305, !dbg !2686

; <label>:190:                                    ; preds = %188
  store i8 6, i8* %73, align 1, !dbg !2687, !tbaa !502
  %191 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2689
  %192 = load i8, i8* %191, align 1, !dbg !2689, !tbaa !370
  %193 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %7, i32 0, i32 2, i32 3, !dbg !2690
  %194 = load i8, i8* %193, align 1, !dbg !2690, !tbaa !386
  %195 = shl i8 %194, 1, !dbg !2692
  %196 = shl i8 %192, 2, !dbg !2693
  %197 = or i8 %196, %195, !dbg !2694
  %198 = or i8 %197, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i8 %198, metadata !1350, metadata !DIExpression()), !dbg !2695
  %199 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %198, i8 zeroext 63, i8 zeroext 0, i8* null, i16 zeroext 0) #13, !dbg !2696
  br label %305, !dbg !2697

; <label>:200:                                    ; preds = %71
  %201 = icmp eq i32 %9, 2, !dbg !2698
  br i1 %201, label %202, label %305, !dbg !2698

; <label>:202:                                    ; preds = %200
  store i8 8, i8* %73, align 1, !dbg !2699, !tbaa !502
  %203 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2701
  %204 = load i16, i16* %203, align 4, !dbg !2702, !tbaa !638
  %205 = or i16 %204, 5120, !dbg !2703
  store i16 %205, i16* %203, align 4, !dbg !2703, !tbaa !638
  br label %305, !dbg !2704

; <label>:206:                                    ; preds = %71
  switch i32 %9, label %207 [
    i32 7, label %209
    i32 8, label %213
    i32 13, label %217
  ], !dbg !2705

; <label>:207:                                    ; preds = %206
  %208 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2706
  br label %257, !dbg !2705

; <label>:209:                                    ; preds = %206
  %210 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2715
  %211 = load i16, i16* %210, align 4, !dbg !2716, !tbaa !638
  %212 = or i16 %211, 2064, !dbg !2717
  store i16 %212, i16* %210, align 4, !dbg !2717, !tbaa !638
  br label %257, !dbg !2718

; <label>:213:                                    ; preds = %206
  %214 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2719
  %215 = load i16, i16* %214, align 4, !dbg !2720, !tbaa !638
  %216 = or i16 %215, 32, !dbg !2720
  store i16 %216, i16* %214, align 4, !dbg !2720, !tbaa !638
  br label %257, !dbg !2721

; <label>:217:                                    ; preds = %206
  %218 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2722
  %219 = load i16, i16* %218, align 4, !dbg !2722, !tbaa !638
  %220 = zext i16 %219 to i32, !dbg !2723
  %221 = and i32 %220, 1024, !dbg !2724
  %222 = icmp eq i32 %221, 0, !dbg !2724
  br i1 %222, label %239, label %223, !dbg !2725

; <label>:223:                                    ; preds = %217
  %224 = and i16 %219, -9217, !dbg !2726
  %225 = or i16 %224, 8192, !dbg !2727
  store i16 %225, i16* %218, align 4, !dbg !2727, !tbaa !638
  %226 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2728
  %227 = load i8, i8* %226, align 1, !dbg !2728, !tbaa !370
  call void @llvm.dbg.value(metadata i8 -115, metadata !2412, metadata !DIExpression()), !dbg !2729
  %228 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %7, i32 0, i32 2, i32 3, !dbg !2730
  %229 = load i8, i8* %228, align 1, !dbg !2730, !tbaa !386
  %230 = shl i8 %229, 1, !dbg !2731
  %231 = or i8 %230, 1, !dbg !2732
  call void @llvm.dbg.value(metadata i8 %231, metadata !2413, metadata !DIExpression()), !dbg !2733
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0, !dbg !2734
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %232) #12, !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 1, metadata !2414, metadata !DIExpression()), !dbg !2735
  store i8 -29, i8* %232, align 1, !dbg !2736, !tbaa !230
  call void @llvm.dbg.value(metadata i8 2, metadata !2414, metadata !DIExpression()), !dbg !2735
  %233 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 1, !dbg !2737
  store i8 5, i8* %233, align 1, !dbg !2738, !tbaa !230
  %234 = shl i8 %227, 2, !dbg !2739
  %235 = or i8 %234, 3, !dbg !2740
  call void @llvm.dbg.value(metadata i8 3, metadata !2414, metadata !DIExpression()), !dbg !2735
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 2, !dbg !2741
  store i8 %235, i8* %236, align 1, !dbg !2742, !tbaa !230
  call void @llvm.dbg.value(metadata i8 4, metadata !2414, metadata !DIExpression()), !dbg !2735
  %237 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 3, !dbg !2743
  store i8 -115, i8* %237, align 1, !dbg !2744, !tbaa !230
  %238 = call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %231, i8 zeroext -17, i8 zeroext 0, i8* nonnull %232, i16 zeroext 4) #13, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %232) #12, !dbg !2746
  br label %257, !dbg !2747

; <label>:239:                                    ; preds = %217
  %240 = and i32 %220, 2048, !dbg !2748
  %241 = icmp eq i32 %240, 0, !dbg !2748
  br i1 %241, label %247, label %242, !dbg !2750

; <label>:242:                                    ; preds = %239
  %243 = and i16 %219, -18433, !dbg !2751
  %244 = or i16 %243, 16384, !dbg !2753
  store i16 %244, i16* %218, align 4, !dbg !2753, !tbaa !638
  %245 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2754
  %246 = load i8, i8* %245, align 1, !dbg !2754, !tbaa !370
  tail call fastcc void @rfcomm_send_uih_msc_rsp(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %246) #14, !dbg !2755
  br label %257, !dbg !2756

; <label>:247:                                    ; preds = %239
  %248 = and i32 %220, 4096, !dbg !2757
  %249 = icmp eq i32 %248, 0, !dbg !2757
  br i1 %249, label %257, label %250, !dbg !2758

; <label>:250:                                    ; preds = %247
  %251 = and i16 %219, 28671, !dbg !2759
  %252 = or i16 %251, -32768, !dbg !2760
  store i16 %252, i16* %218, align 4, !dbg !2760, !tbaa !638
  %253 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 7, !dbg !2761
  %254 = load i8, i8* %253, align 2, !dbg !2761, !tbaa !324
  %255 = icmp eq i8 %254, 0, !dbg !2762
  br i1 %255, label %257, label %256, !dbg !2763

; <label>:256:                                    ; preds = %250
  call void @llvm.dbg.value(metadata i8 %254, metadata !2389, metadata !DIExpression()), !dbg !2764
  store i8 0, i8* %253, align 2, !dbg !2765, !tbaa !324
  tail call fastcc void @rfcomm_channel_send_credits(%struct.rfcomm_channel_t* nonnull %0, i8 zeroext %254) #14, !dbg !2766
  br label %257, !dbg !2767

; <label>:257:                                    ; preds = %256, %250, %247, %242, %223, %213, %209, %207
  %258 = phi i16* [ %208, %207 ], [ %218, %250 ], [ %218, %247 ], [ %218, %256 ], [ %218, %242 ], [ %218, %223 ], [ %214, %213 ], [ %210, %209 ], !dbg !2706
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2712, metadata !DIExpression()), !dbg !2768
  %259 = load i16, i16* %258, align 4, !dbg !2706, !tbaa !638
  %260 = and i16 %259, -16352, !dbg !2769
  %261 = icmp eq i16 %260, -16352, !dbg !2769
  br i1 %261, label %262, label %305, !dbg !2769

; <label>:262:                                    ; preds = %257
  %263 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 6, !dbg !2770
  %264 = load i8, i8* %263, align 1, !dbg !2770, !tbaa !358
  %265 = icmp eq i8 %264, 0, !dbg !2772
  br i1 %265, label %305, label %266, !dbg !2774

; <label>:266:                                    ; preds = %262
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2775, metadata !DIExpression()), !dbg !2779
  store i8 9, i8* %73, align 1, !dbg !2782, !tbaa !502
  tail call fastcc void @rfcomm_emit_channel_opened(%struct.rfcomm_channel_t* nonnull %0, i8 zeroext 0) #13, !dbg !2783
  tail call fastcc void @rfcomm_hand_out_credits() #13, !dbg !2784
  %267 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %6, align 4, !dbg !2785, !tbaa !368
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %267, metadata !2778, metadata !DIExpression()), !dbg !2786
  %268 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %267, i32 0, i32 2, i32 4, !dbg !2787
  store i8 1, i8* %268, align 2, !dbg !2788, !tbaa !2789
  tail call fastcc void @rfcomm_run() #13, !dbg !2790
  br label %305, !dbg !2791

; <label>:269:                                    ; preds = %71
  switch i32 %9, label %305 [
    i32 7, label %270
    i32 13, label %274
    i32 11, label %288
  ], !dbg !2792

; <label>:270:                                    ; preds = %269
  %271 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2793
  %272 = load i16, i16* %271, align 4, !dbg !2794, !tbaa !638
  %273 = or i16 %272, 2048, !dbg !2794
  store i16 %273, i16* %271, align 4, !dbg !2794, !tbaa !638
  br label %305, !dbg !2795

; <label>:274:                                    ; preds = %269
  %275 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 12, !dbg !2796
  %276 = load i16, i16* %275, align 4, !dbg !2796, !tbaa !638
  %277 = and i16 %276, 2048, !dbg !2798
  %278 = icmp eq i16 %277, 0, !dbg !2798
  br i1 %278, label %283, label %279, !dbg !2799

; <label>:279:                                    ; preds = %274
  %280 = and i16 %276, -2049, !dbg !2800
  store i16 %280, i16* %275, align 4, !dbg !2800, !tbaa !638
  %281 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2802
  %282 = load i8, i8* %281, align 1, !dbg !2802, !tbaa !370
  tail call fastcc void @rfcomm_send_uih_msc_rsp(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %282) #14, !dbg !2803
  br label %305, !dbg !2804

; <label>:283:                                    ; preds = %274
  %284 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 7, !dbg !2805
  %285 = load i8, i8* %284, align 2, !dbg !2805, !tbaa !324
  %286 = icmp eq i8 %285, 0, !dbg !2806
  br i1 %286, label %305, label %287, !dbg !2807

; <label>:287:                                    ; preds = %283
  call void @llvm.dbg.value(metadata i8 %285, metadata !2396, metadata !DIExpression()), !dbg !2808
  store i8 0, i8* %284, align 2, !dbg !2809, !tbaa !324
  tail call fastcc void @rfcomm_channel_send_credits(%struct.rfcomm_channel_t* nonnull %0, i8 zeroext %285) #14, !dbg !2810
  br label %305

; <label>:288:                                    ; preds = %269
  %289 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i32 0, i32 0, !dbg !2811
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %289) #12, !dbg !2811
  tail call void @llvm.dbg.declare(metadata [1 x i8]* %5, metadata !2400, metadata !DIExpression()), !dbg !2812
  store i8 107, i8* %289, align 1, !dbg !2812
  call fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* nonnull %0, i8 zeroext 5, i8* nonnull %289, i16 zeroext 1) #14, !dbg !2813
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %289) #12, !dbg !2814
  br label %305

; <label>:290:                                    ; preds = %71
  %291 = icmp eq i32 %9, 13, !dbg !2815
  br i1 %291, label %292, label %305, !dbg !2815

; <label>:292:                                    ; preds = %290
  store i8 1, i8* %73, align 1, !dbg !2816, !tbaa !502
  %293 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2818
  %294 = load i8, i8* %293, align 1, !dbg !2818, !tbaa !370
  tail call fastcc void @rfcomm_send_dm_pf(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %294) #14, !dbg !2819
  tail call fastcc void @rfcomm_channel_finalize(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2820
  br label %305, !dbg !2821

; <label>:295:                                    ; preds = %71
  %296 = icmp eq i32 %9, 13, !dbg !2822
  br i1 %296, label %297, label %305, !dbg !2822

; <label>:297:                                    ; preds = %295
  store i8 1, i8* %73, align 1, !dbg !2823, !tbaa !502
  %298 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2825
  %299 = load i8, i8* %298, align 1, !dbg !2825, !tbaa !370
  tail call fastcc void @rfcomm_send_disc(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %299) #14, !dbg !2826
  tail call fastcc void @rfcomm_emit_channel_closed(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2827
  tail call fastcc void @rfcomm_channel_finalize(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2828
  br label %305, !dbg !2829

; <label>:300:                                    ; preds = %71
  %301 = icmp eq i32 %9, 13, !dbg !2830
  br i1 %301, label %302, label %305, !dbg !2830

; <label>:302:                                    ; preds = %300
  store i8 1, i8* %73, align 1, !dbg !2831, !tbaa !502
  %303 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2833
  %304 = load i8, i8* %303, align 1, !dbg !2833, !tbaa !370
  tail call fastcc void @rfcomm_send_ua(%struct.rfcomm_multiplexer_t* %7, i8 zeroext %304) #14, !dbg !2834
  tail call fastcc void @rfcomm_channel_finalize(%struct.rfcomm_channel_t* nonnull %0) #14, !dbg !2835
  br label %305, !dbg !2836

; <label>:305:                                    ; preds = %302, %300, %297, %295, %292, %290, %288, %287, %283, %279, %270, %269, %266, %262, %257, %202, %200, %190, %188, %184, %174, %151, %149, %148, %146, %144, %140, %99, %93, %91, %85, %84, %80, %76, %75, %71, %36, %20, %13, %12, %10
  ret void, !dbg !2837
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_channel_finalize(%struct.rfcomm_channel_t*) unnamed_addr #0 section ".bt_stack_code" !dbg !2839 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2841, metadata !DIExpression()), !dbg !2843
  %2 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2844, !tbaa !244
  %3 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %2, i32 0, i32 2, !dbg !2844
  %4 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 0, !dbg !2844
  %5 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %3, %struct.btstack_linked_item* %4) #13, !dbg !2844
  %6 = bitcast %struct.rfcomm_channel_t* %0 to i8*, !dbg !2845
  tail call void @btstack_memory_rfcomm_channel_free(i8* %6) #13, !dbg !2846
  ret void, !dbg !2847
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_emit_connection_request(%struct.rfcomm_channel_t* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !2848 {
  %2 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2850, metadata !DIExpression()), !dbg !2855
  %3 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 0, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %3) #12, !dbg !2856
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %2, metadata !2851, metadata !DIExpression()), !dbg !2857
  store i8 -126, i8* %3, align 1, !dbg !2858, !tbaa !230
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 1, !dbg !2859
  store i8 9, i8* %4, align 1, !dbg !2860, !tbaa !230
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 2, !dbg !2861
  %6 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 1, !dbg !2862
  %7 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %6, align 4, !dbg !2862, !tbaa !368
  %8 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %7, i32 0, i32 2, i32 0, i32 0, !dbg !2863
  call void @bt_flip_addr(i8* %5, i8* %8) #13, !dbg !2864
  %9 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2865
  %10 = load i8, i8* %9, align 1, !dbg !2865, !tbaa !370
  %11 = lshr i8 %10, 1, !dbg !2866
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 8, !dbg !2867
  store i8 %11, i8* %12, align 1, !dbg !2868, !tbaa !230
  %13 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 2, !dbg !2869
  %14 = load i16, i16* %13, align 4, !dbg !2869, !tbaa !258
  call void @bt_store_16(i8* nonnull %3, i16 zeroext 9, i16 zeroext %14) #13, !dbg !2870
  call fastcc void @rfcomm_channel_dispatch(%struct.rfcomm_channel_t* %0, i8 zeroext 4, i8* nonnull %3, i16 zeroext 11) #14, !dbg !2871
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %3) #12, !dbg !2872
  ret void, !dbg !2872
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_channel_accept_pn(%struct.rfcomm_channel_t* nocapture, %struct.rfcomm_channel_event_pn* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !2873 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2877, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event_pn* %1, metadata !2878, metadata !DIExpression()), !dbg !2880
  %3 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %1, i32 0, i32 2, !dbg !2881
  %4 = load i8, i8* %3, align 2, !dbg !2881, !tbaa !1187
  %5 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 11, !dbg !2882
  store i8 %4, i8* %5, align 2, !dbg !2883, !tbaa !2584
  %6 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %1, i32 0, i32 3, !dbg !2884
  %7 = load i8, i8* %6, align 1, !dbg !2884, !tbaa !1196
  %8 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 6, !dbg !2885
  store i8 %7, i8* %8, align 1, !dbg !2886, !tbaa !358
  %9 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 3, !dbg !2887
  %10 = load i16, i16* %9, align 2, !dbg !2887, !tbaa !650
  %11 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 1, !dbg !2889
  %12 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %11, align 4, !dbg !2889, !tbaa !368
  %13 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %12, i32 0, i32 1, !dbg !2890
  %14 = load i16, i16* %13, align 4, !dbg !2890, !tbaa !587
  %15 = icmp ugt i16 %10, %14, !dbg !2891
  br i1 %15, label %16, label %17, !dbg !2892

; <label>:16:                                     ; preds = %2
  store i16 %14, i16* %9, align 2, !dbg !2893, !tbaa !650
  br label %17, !dbg !2895

; <label>:17:                                     ; preds = %16, %2
  %18 = phi i16 [ %14, %16 ], [ %10, %2 ], !dbg !2896
  %19 = getelementptr inbounds %struct.rfcomm_channel_event_pn, %struct.rfcomm_channel_event_pn* %1, i32 0, i32 1, !dbg !2898
  %20 = load i16, i16* %19, align 4, !dbg !2898, !tbaa !1191
  %21 = icmp ugt i16 %18, %20, !dbg !2899
  br i1 %21, label %22, label %23, !dbg !2900

; <label>:22:                                     ; preds = %17
  store i16 %20, i16* %9, align 2, !dbg !2901, !tbaa !650
  br label %23, !dbg !2903

; <label>:23:                                     ; preds = %22, %17
  ret void, !dbg !2904
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_send_ua(%struct.rfcomm_multiplexer_t* nocapture, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1360 {
  %3 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 3, !dbg !2905
  %4 = load i8, i8* %3, align 1, !dbg !2905, !tbaa !386
  %5 = shl i8 %4, 1, !dbg !2906
  %6 = shl i8 %1, 2, !dbg !2907
  %7 = or i8 %5, %6, !dbg !2908
  %8 = xor i8 %7, 3, !dbg !2908
  call void @llvm.dbg.value(metadata i8 %8, metadata !1364, metadata !DIExpression()), !dbg !2909
  %9 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %0, i8 zeroext %8, i8 zeroext 115, i8 zeroext 0, i8* null, i16 zeroext 0) #14, !dbg !2910
  ret void
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_send_uih_msc_rsp(%struct.rfcomm_multiplexer_t* nocapture, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2911 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i8 -115, metadata !2915, metadata !DIExpression()), !dbg !2919
  %4 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 3, !dbg !2920
  %5 = load i8, i8* %4, align 1, !dbg !2920, !tbaa !386
  %6 = shl i8 %5, 1, !dbg !2921
  %7 = or i8 %6, 1, !dbg !2922
  call void @llvm.dbg.value(metadata i8 %7, metadata !2916, metadata !DIExpression()), !dbg !2923
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #12, !dbg !2924
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %3, metadata !2917, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 1, metadata !2918, metadata !DIExpression()), !dbg !2926
  store i8 -31, i8* %8, align 1, !dbg !2927, !tbaa !230
  call void @llvm.dbg.value(metadata i8 2, metadata !2918, metadata !DIExpression()), !dbg !2926
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 1, !dbg !2928
  store i8 5, i8* %9, align 1, !dbg !2929, !tbaa !230
  %10 = shl i8 %1, 2, !dbg !2930
  %11 = or i8 %10, 3, !dbg !2931
  call void @llvm.dbg.value(metadata i8 3, metadata !2918, metadata !DIExpression()), !dbg !2926
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 2, !dbg !2932
  store i8 %11, i8* %12, align 1, !dbg !2933, !tbaa !230
  call void @llvm.dbg.value(metadata i8 4, metadata !2918, metadata !DIExpression()), !dbg !2926
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 3, !dbg !2934
  store i8 -115, i8* %13, align 1, !dbg !2935, !tbaa !230
  %14 = call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %0, i8 zeroext %7, i8 zeroext -17, i8 zeroext 0, i8* nonnull %8, i16 zeroext 4) #14, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #12, !dbg !2937
  ret void
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_channel_send_credits(%struct.rfcomm_channel_t* nocapture, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2938 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %0, metadata !2940, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 %1, metadata !2941, metadata !DIExpression()), !dbg !2943
  %3 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 1, !dbg !2944
  %4 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %3, align 4, !dbg !2944, !tbaa !368
  %5 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 4, !dbg !2945
  %6 = load i8, i8* %5, align 1, !dbg !2945, !tbaa !370
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %4, metadata !2946, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 %6, metadata !2951, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8 %1, metadata !2952, metadata !DIExpression()), !dbg !2957
  %7 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %4, i32 0, i32 2, i32 3, !dbg !2958
  %8 = load i8, i8* %7, align 1, !dbg !2958, !tbaa !386
  %9 = shl i8 %8, 1, !dbg !2959
  %10 = shl i8 %6, 2, !dbg !2960
  %11 = or i8 %10, %9, !dbg !2961
  %12 = or i8 %11, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i8 %12, metadata !2953, metadata !DIExpression()), !dbg !2962
  %13 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %4, i8 zeroext %12, i8 zeroext -1, i8 zeroext %1, i8* null, i16 zeroext 0) #13, !dbg !2963
  %14 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %0, i32 0, i32 2, i32 8, !dbg !2964
  %15 = load i8, i8* %14, align 1, !dbg !2965, !tbaa !653
  %16 = add i8 %15, %1, !dbg !2965
  store i8 %16, i8* %14, align 1, !dbg !2965, !tbaa !653
  ret void, !dbg !2966
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_send_dm_pf(%struct.rfcomm_multiplexer_t* nocapture, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2967 {
  %3 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 3, !dbg !2972
  %4 = load i8, i8* %3, align 1, !dbg !2972, !tbaa !386
  %5 = shl i8 %4, 1, !dbg !2973
  %6 = shl i8 %1, 2, !dbg !2974
  %7 = or i8 %5, %6, !dbg !2975
  %8 = xor i8 %7, 3, !dbg !2975
  call void @llvm.dbg.value(metadata i8 %8, metadata !2971, metadata !DIExpression()), !dbg !2976
  %9 = tail call fastcc i32 @rfcomm_send_packet_for_multiplexer(%struct.rfcomm_multiplexer_t* %0, i8 zeroext %8, i8 zeroext 31, i8 zeroext 0, i8* null, i16 zeroext 0) #14, !dbg !2977
  ret void
}

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.rfcomm_channel_t* @rfcomm_channel_for_multiplexer_and_dlci(%struct.rfcomm_multiplexer_t* readnone, i8 zeroext) unnamed_addr #2 section ".bt_stack_code" !dbg !2978 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !2982, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 %1, metadata !2983, metadata !DIExpression()), !dbg !2990
  %3 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !2991, !tbaa !244
  %4 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %3, i32 0, i32 2, !dbg !2992
  %5 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %4, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !2984, metadata !DIExpression()), !dbg !2993
  %6 = icmp eq %struct.btstack_linked_item* %5, null, !dbg !2994
  br i1 %6, label %27, label %7, !dbg !2994

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !2996

; <label>:8:                                      ; preds = %20, %7
  %9 = phi %struct.btstack_linked_item* [ %22, %20 ], [ %5, %7 ]
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 2, !dbg !2996
  %11 = bitcast %struct.btstack_linked_item* %10 to %struct.rfc_channel_core_data_t*, !dbg !2996
  %12 = getelementptr inbounds %struct.rfc_channel_core_data_t, %struct.rfc_channel_core_data_t* %11, i32 0, i32 4, !dbg !2998
  %13 = load i8, i8* %12, align 1, !dbg !2998, !tbaa !370
  %14 = icmp eq i8 %13, %1, !dbg !2999
  br i1 %14, label %15, label %20, !dbg !3000

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 1, !dbg !3001
  %17 = bitcast %struct.btstack_linked_item* %16 to %struct.rfcomm_multiplexer_t**, !dbg !3001
  %18 = load %struct.rfcomm_multiplexer_t*, %struct.rfcomm_multiplexer_t** %17, align 4, !dbg !3001, !tbaa !368
  %19 = icmp eq %struct.rfcomm_multiplexer_t* %18, %0, !dbg !3003
  br i1 %19, label %24, label %20, !dbg !3004

; <label>:20:                                     ; preds = %15, %8
  %21 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !3006
  %22 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %21, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %22, metadata !2984, metadata !DIExpression()), !dbg !2993
  %23 = icmp eq %struct.btstack_linked_item* %22, null, !dbg !2994
  br i1 %23, label %26, label %8, !dbg !2994, !llvm.loop !3008

; <label>:24:                                     ; preds = %15
  %25 = bitcast %struct.btstack_linked_item* %9 to %struct.rfcomm_channel_t*, !dbg !3011
  br label %27, !dbg !3004

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !3012

; <label>:27:                                     ; preds = %26, %24, %2
  %28 = phi %struct.rfcomm_channel_t* [ %25, %24 ], [ null, %2 ], [ null, %26 ]
  ret %struct.rfcomm_channel_t* %28, !dbg !3012
}

; Function Attrs: nounwind optsize
define internal fastcc void @rfcomm_channel_state_machine_2(%struct.rfcomm_multiplexer_t*, i8 zeroext, %struct.rfcomm_channel_event* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !3013 {
  call void @llvm.dbg.value(metadata %struct.rfcomm_multiplexer_t* %0, metadata !3017, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 %1, metadata !3018, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_event* %2, metadata !3019, metadata !DIExpression()), !dbg !3024
  %4 = tail call fastcc %struct.rfcomm_channel_t* @rfcomm_channel_for_multiplexer_and_dlci(%struct.rfcomm_multiplexer_t* %0, i8 zeroext %1) #14, !dbg !3025
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %4, metadata !3021, metadata !DIExpression()), !dbg !3026
  %5 = icmp eq %struct.rfcomm_channel_t* %4, null, !dbg !3027
  br i1 %5, label %7, label %6, !dbg !3029

; <label>:6:                                      ; preds = %3
  tail call fastcc void @rfcomm_channel_state_machine(%struct.rfcomm_channel_t* nonnull %4, %struct.rfcomm_channel_event* %2) #14, !dbg !3030
  br label %46, !dbg !3032

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %1, 1, !dbg !3033
  call void @llvm.dbg.value(metadata i8 %8, metadata !1461, metadata !DIExpression()), !dbg !3034
  %9 = load %struct.rfcomm_stack_t*, %struct.rfcomm_stack_t** @rfcomm_stack, align 4, !dbg !3036, !tbaa !244
  %10 = getelementptr inbounds %struct.rfcomm_stack_t, %struct.rfcomm_stack_t* %9, i32 0, i32 3, !dbg !3037
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !1466, metadata !DIExpression()), !dbg !3038
  %12 = icmp eq %struct.btstack_linked_item* %11, null, !dbg !3039
  br i1 %12, label %25, label %13, !dbg !3039

; <label>:13:                                     ; preds = %7
  br label %18, !dbg !3040

; <label>:14:                                     ; preds = %18
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 0, i32 0, !dbg !3041
  %16 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %15, align 4, !tbaa !244
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %16, metadata !1466, metadata !DIExpression()), !dbg !3038
  %17 = icmp eq %struct.btstack_linked_item* %16, null, !dbg !3039
  br i1 %17, label %24, label %18, !dbg !3039, !llvm.loop !1482

; <label>:18:                                     ; preds = %14, %13
  %19 = phi %struct.btstack_linked_item* [ %16, %14 ], [ %11, %13 ]
  %20 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 1, !dbg !3040
  %21 = bitcast %struct.btstack_linked_item* %20 to i8*, !dbg !3040
  %22 = load i8, i8* %21, align 4, !dbg !3040, !tbaa !1485
  %23 = icmp eq i8 %22, %8, !dbg !3042
  br i1 %23, label %27, label %14

; <label>:24:                                     ; preds = %14
  br label %25, !dbg !3043

; <label>:25:                                     ; preds = %24, %7
  %26 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 5, !dbg !3043
  store i8 %1, i8* %26, align 1, !dbg !3046, !tbaa !567
  br label %46, !dbg !3047

; <label>:27:                                     ; preds = %18
  %28 = getelementptr inbounds %struct.rfcomm_channel_event, %struct.rfcomm_channel_event* %2, i32 0, i32 0, !dbg !3048
  %29 = load i32, i32* %28, align 4, !dbg !3048, !tbaa !1150
  switch i32 %29, label %36 [
    i32 1, label %30
    i32 3, label %30
    i32 10, label %30
    i32 9, label %30
  ], !dbg !3049

; <label>:30:                                     ; preds = %27, %27, %27, %27
  %31 = bitcast %struct.btstack_linked_item* %19 to %struct.rfcomm_service_t*, !dbg !3050
  %32 = tail call fastcc %struct.rfcomm_channel_t* @rfcomm_channel_create(%struct.rfcomm_multiplexer_t* %0, %struct.rfcomm_service_t* nonnull %31, i8 zeroext %8) #14, !dbg !3051
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %32, metadata !3021, metadata !DIExpression()), !dbg !3026
  %33 = icmp eq %struct.rfcomm_channel_t* %32, null, !dbg !3053
  br i1 %33, label %34, label %40, !dbg !3055

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 5, !dbg !3056
  store i8 %1, i8* %35, align 1, !dbg !3058, !tbaa !567
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %4, metadata !3021, metadata !DIExpression()), !dbg !3026
  br label %38, !dbg !3059

; <label>:36:                                     ; preds = %27
  call void @llvm.dbg.value(metadata %struct.rfcomm_channel_t* %4, metadata !3021, metadata !DIExpression()), !dbg !3026
  %37 = getelementptr inbounds %struct.rfcomm_multiplexer_t, %struct.rfcomm_multiplexer_t* %0, i32 0, i32 2, i32 5, !dbg !3060
  br label %38, !dbg !3059

; <label>:38:                                     ; preds = %36, %34
  %39 = phi i8* [ %37, %36 ], [ %35, %34 ], !dbg !3060
  store i8 %1, i8* %39, align 1, !dbg !3063, !tbaa !567
  br label %46, !dbg !3064

; <label>:40:                                     ; preds = %30
  %41 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %19, i32 3, !dbg !3065
  %42 = bitcast %struct.btstack_linked_item* %41 to i32*, !dbg !3065
  %43 = load i32, i32* %42, align 4, !dbg !3065, !tbaa !1508
  %44 = getelementptr inbounds %struct.rfcomm_channel_t, %struct.rfcomm_channel_t* %32, i32 0, i32 6, !dbg !3066
  %45 = bitcast i8** %44 to i32*, !dbg !3067
  store i32 %43, i32* %45, align 4, !dbg !3067, !tbaa !488
  tail call fastcc void @rfcomm_channel_state_machine(%struct.rfcomm_channel_t* nonnull %32, %struct.rfcomm_channel_event* nonnull %2) #14, !dbg !3068
  br label %46, !dbg !3069

; <label>:46:                                     ; preds = %40, %38, %25, %6
  ret void, !dbg !3070
}

; Function Attrs: optsize
declare void @btstack_memory_rfcomm_service_free(i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!213, !214}
!llvm.ident = !{!215}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !212, line: 190, type: !190, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !67, globals: !191)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/rfcomm.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !16, !30, !49, !64}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 69, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Protocol/include/bredr/rfcomm.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15}
!8 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_CLOSED", value: 1)
!9 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_W4_CONNECT", value: 2)
!10 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_SEND_SABM_0", value: 3)
!11 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_W4_UA_0", value: 4)
!12 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_W4_SABM_0", value: 5)
!13 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_SEND_UA_0", value: 6)
!14 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_OPEN", value: 7)
!15 = !DIEnumerator(name: "RFCOMM_MULTIPLEXER_SEND_UA_0_AND_DISC", value: 8)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 85, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "RFCOMM_CHANNEL_CLOSED", value: 1)
!19 = !DIEnumerator(name: "RFCOMM_CHANNEL_W4_MULTIPLEXER", value: 2)
!20 = !DIEnumerator(name: "RFCOMM_CHANNEL_SEND_UIH_PN", value: 3)
!21 = !DIEnumerator(name: "RFCOMM_CHANNEL_W4_PN_RSP", value: 4)
!22 = !DIEnumerator(name: "RFCOMM_CHANNEL_SEND_SABM_W4_UA", value: 5)
!23 = !DIEnumerator(name: "RFCOMM_CHANNEL_W4_UA", value: 6)
!24 = !DIEnumerator(name: "RFCOMM_CHANNEL_INCOMING_SETUP", value: 7)
!25 = !DIEnumerator(name: "RFCOMM_CHANNEL_DLC_SETUP", value: 8)
!26 = !DIEnumerator(name: "RFCOMM_CHANNEL_OPEN", value: 9)
!27 = !DIEnumerator(name: "RFCOMM_CHANNEL_SEND_UA_AFTER_DISC", value: 10)
!28 = !DIEnumerator(name: "RFCOMM_CHANNEL_SEND_DISC", value: 11)
!29 = !DIEnumerator(name: "RFCOMM_CHANNEL_SEND_DM", value: 12)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 101, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!32 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_NONE", value: 0)
!33 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_CLIENT_ACCEPTED", value: 1)
!34 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_RCVD_PN", value: 2)
!35 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_RCVD_RPN", value: 4)
!36 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_RCVD_SABM", value: 8)
!37 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_RCVD_MSC_CMD", value: 16)
!38 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_RCVD_MSC_RSP", value: 32)
!39 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_PN_RSP", value: 64)
!40 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_RPN_INFO", value: 128)
!41 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_RPN_RSP", value: 256)
!42 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_UA", value: 512)
!43 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_MSC_CMD", value: 1024)
!44 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_MSC_RSP", value: 2048)
!45 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SEND_CREDITS", value: 4096)
!46 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SENT_MSC_CMD", value: 8192)
!47 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SENT_MSC_RSP", value: 16384)
!48 = !DIEnumerator(name: "RFCOMM_CHANNEL_STATE_VAR_SENT_CREDITS", value: 32768)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 124, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!51 = !DIEnumerator(name: "CH_EVT_RCVD_SABM", value: 1)
!52 = !DIEnumerator(name: "CH_EVT_RCVD_UA", value: 2)
!53 = !DIEnumerator(name: "CH_EVT_RCVD_PN", value: 3)
!54 = !DIEnumerator(name: "CH_EVT_RCVD_PN_RSP", value: 4)
!55 = !DIEnumerator(name: "CH_EVT_RCVD_DISC", value: 5)
!56 = !DIEnumerator(name: "CH_EVT_RCVD_DM", value: 6)
!57 = !DIEnumerator(name: "CH_EVT_RCVD_MSC_CMD", value: 7)
!58 = !DIEnumerator(name: "CH_EVT_RCVD_MSC_RSP", value: 8)
!59 = !DIEnumerator(name: "CH_EVT_RCVD_RPN_CMD", value: 9)
!60 = !DIEnumerator(name: "CH_EVT_RCVD_RPN_REQ", value: 10)
!61 = !DIEnumerator(name: "CH_EVT_RCVD_CREDITS", value: 11)
!62 = !DIEnumerator(name: "CH_EVT_MULTIPLEXER_READY", value: 12)
!63 = !DIEnumerator(name: "CH_EVT_READY_TO_SEND", value: 13)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 80, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIEnumerator(name: "MULT_EV_READY_TO_SEND", value: 1)
!67 = !{!68, !76, !167, !157, !168, !82, !169, !115, !170, !181, !189, !147, !190}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !70, line: 100, baseType: !71)
!70 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !70, line: 55, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !70, line: 53, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !70, line: 54, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_channel_t", file: !6, line: 282, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 262, size: 416, elements: !79)
!79 = !{!80, !81, !117, !145, !146, !165, !166}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !78, file: !6, line: 264, baseType: !69, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "multiplexer", scope: !78, file: !6, line: 266, baseType: !82, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_multiplexer_t", file: !6, line: 221, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 211, size: 160, elements: !85)
!85 = !{!86, !87, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !84, file: !6, line: 213, baseType: !69, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !84, file: !6, line: 218, baseType: !88, size: 16, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 13, baseType: !90)
!89 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "multiplexer_core_data", scope: !84, file: !6, line: 219, baseType: !92, size: 112, offset: 48)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiplexer_core_data_t", file: !6, line: 207, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 191, size: 112, elements: !94)
!94 = !{!95, !106, !107, !109, !110, !111, !112, !113}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !93, file: !6, line: 192, baseType: !96, size: 48)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !97, line: 7, baseType: !98)
!97 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 48, elements: !104)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !100, line: 20, baseType: !101)
!100 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !102, line: 29, baseType: !103)
!102 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !{!105}
!105 = !DISubrange(count: 6)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_cid", scope: !93, file: !6, line: 193, baseType: !88, size: 16, offset: 48)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !93, file: !6, line: 196, baseType: !108, size: 4, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 11, baseType: !103)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_credits", scope: !93, file: !6, line: 197, baseType: !108, size: 4, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !93, file: !6, line: 200, baseType: !108, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "at_least_one_connection", scope: !93, file: !6, line: 202, baseType: !108, size: 8, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "send_dm_for_dlci", scope: !93, file: !6, line: 205, baseType: !108, size: 8, offset: 88)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !93, file: !6, line: 206, baseType: !114, size: 16, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !97, line: 9, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !100, line: 26, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !102, line: 43, baseType: !90)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rfc_channel_core_data", scope: !78, file: !6, line: 268, baseType: !118, size: 240, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfc_channel_core_data_t", file: !6, line: 259, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 223, size: 240, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rfc_channel_type", scope: !119, file: !6, line: 224, baseType: !108, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !119, file: !6, line: 225, baseType: !96, size: 48, offset: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_cid", scope: !119, file: !6, line: 226, baseType: !88, size: 16, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !119, file: !6, line: 227, baseType: !108, size: 8, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !119, file: !6, line: 228, baseType: !108, size: 8, offset: 88)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "packets_granted", scope: !119, file: !6, line: 231, baseType: !108, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "credits_outgoing", scope: !119, file: !6, line: 234, baseType: !108, size: 8, offset: 104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "new_credits_incoming", scope: !119, file: !6, line: 237, baseType: !108, size: 8, offset: 112)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "credits_incoming", scope: !119, file: !6, line: 240, baseType: !108, size: 8, offset: 120)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_flow_control", scope: !119, file: !6, line: 243, baseType: !108, size: 8, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !119, file: !6, line: 247, baseType: !108, size: 8, offset: 136)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pn_priority", scope: !119, file: !6, line: 250, baseType: !108, size: 8, offset: 144)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !119, file: !6, line: 254, baseType: !88, size: 16, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rpn_data", scope: !119, file: !6, line: 257, baseType: !135, size: 56, offset: 176)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_rpn_data_t", file: !6, line: 159, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rfcomm_rpn_data", file: !6, line: 151, size: 56, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "baud_rate", scope: !136, file: !6, line: 152, baseType: !108, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !6, line: 153, baseType: !108, size: 8, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !136, file: !6, line: 154, baseType: !108, size: 8, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "xon", scope: !136, file: !6, line: 155, baseType: !108, size: 8, offset: 24)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !136, file: !6, line: 156, baseType: !108, size: 8, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_mask_0", scope: !136, file: !6, line: 157, baseType: !108, size: 8, offset: 40)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_mask_1", scope: !136, file: !6, line: 158, baseType: !108, size: 8, offset: 48)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !78, file: !6, line: 271, baseType: !88, size: 16, offset: 304)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !78, file: !6, line: 274, baseType: !147, size: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_service_t", file: !6, line: 189, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 167, size: 160, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !149, file: !6, line: 169, baseType: !69, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "server_channel", scope: !149, file: !6, line: 172, baseType: !108, size: 8, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_flow_control", scope: !149, file: !6, line: 175, baseType: !108, size: 8, offset: 40)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_initial_credits", scope: !149, file: !6, line: 178, baseType: !108, size: 8, offset: 48)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !149, file: !6, line: 181, baseType: !88, size: 16, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !149, file: !6, line: 184, baseType: !157, size: 32, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !149, file: !6, line: 187, baseType: !159, size: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !160, line: 58, baseType: !161)
!160 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !99, !115, !164, !115}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !78, file: !6, line: 277, baseType: !159, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !78, file: !6, line: 280, baseType: !157, size: 32, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_channel_event_rpn_t", file: !6, line: 164, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rfcomm_channel_event_rpn", file: !6, line: 161, size: 96, elements: !173)
!173 = !{!174, !180}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !172, file: !6, line: 162, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_channel_event_t", file: !6, line: 142, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rfcomm_channel_event", file: !6, line: 140, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !6, line: 141, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "RFCOMM_CHANNEL_EVENT", file: !6, line: 138, baseType: !49)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !172, file: !6, line: 163, baseType: !135, size: 56, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_channel_event_pn_t", file: !6, line: 149, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rfcomm_channel_event_pn", file: !6, line: 144, size: 64, elements: !184)
!184 = !{!185, !186, !187, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !183, file: !6, line: 145, baseType: !175, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !183, file: !6, line: 146, baseType: !88, size: 16, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !183, file: !6, line: 147, baseType: !108, size: 8, offset: 48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "credits_outgoing", scope: !183, file: !6, line: 148, baseType: !108, size: 8, offset: 56)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !{!0, !192, !208, !210}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "rfcomm_stack", scope: !2, file: !3, line: 99, type: !194, isLocal: true, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_stack_t", file: !6, line: 299, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 286, size: 160, elements: !197)
!197 = !{!198, !202, !205, !206, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "app_packet_handler", scope: !196, file: !6, line: 288, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !157, !108, !88, !167, !88}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_multiplexers", scope: !196, file: !6, line: 291, baseType: !203, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !70, line: 101, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channels", scope: !196, file: !6, line: 293, baseType: !203, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_services", scope: !196, file: !6, line: 295, baseType: !203, size: 32, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_client_cid_generator", scope: !196, file: !6, line: 298, baseType: !88, size: 16, offset: 128)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "rfcomm_init_credits", scope: !2, file: !3, line: 93, type: !88, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "rfcomm_credits_base", scope: !2, file: !3, line: 94, type: !108, isLocal: true, isDefinition: true)
!212 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!213 = !{i32 2, !"Dwarf Version", i32 4}
!214 = !{i32 2, !"Debug Info Version", i32 3}
!215 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!216 = distinct !DISubprogram(name: "rfcomm_change_credits_setting", scope: !3, file: !3, line: 110, type: !217, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !88, !108}
!219 = !{!220, !221}
!220 = !DILocalVariable(name: "init_credits", arg: 1, scope: !216, file: !3, line: 110, type: !88)
!221 = !DILocalVariable(name: "base", arg: 2, scope: !216, file: !3, line: 110, type: !108)
!222 = !DILocation(line: 110, column: 40, scope: !216)
!223 = !DILocation(line: 110, column: 57, scope: !216)
!224 = !DILocation(line: 112, column: 25, scope: !216)
!225 = !{!226, !226, i64 0}
!226 = !{!"short", !227, i64 0}
!227 = !{!"omnipotent char", !228, i64 0}
!228 = !{!"Simple C/C++ TBAA"}
!229 = !DILocation(line: 113, column: 25, scope: !216)
!230 = !{!227, !227, i64 0}
!231 = !DILocation(line: 114, column: 1, scope: !216)
!232 = distinct !DISubprogram(name: "rfcomm_channel_for_rfcomm_cid", scope: !3, file: !3, line: 431, type: !233, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!76, !88}
!235 = !{!236, !237, !238}
!236 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !232, file: !3, line: 431, type: !88)
!237 = !DILocalVariable(name: "it", scope: !232, file: !3, line: 433, type: !68)
!238 = !DILocalVariable(name: "channel", scope: !239, file: !3, line: 435, type: !76)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 434, column: 84)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 434, column: 5)
!241 = distinct !DILexicalBlock(scope: !232, file: !3, line: 434, column: 5)
!242 = !DILocation(line: 431, column: 53, scope: !232)
!243 = !DILocation(line: 434, column: 33, scope: !241)
!244 = !{!245, !245, i64 0}
!245 = !{!"any pointer", !227, i64 0}
!246 = !DILocation(line: 434, column: 47, scope: !241)
!247 = !DILocation(line: 433, column: 20, scope: !232)
!248 = !DILocation(line: 434, column: 5, scope: !249)
!249 = !DILexicalBlockFile(scope: !241, file: !3, discriminator: 1)
!250 = !DILocation(line: 435, column: 27, scope: !239)
!251 = !DILocation(line: 434, column: 78, scope: !252)
!252 = !DILexicalBlockFile(scope: !240, file: !3, discriminator: 2)
!253 = distinct !{!253, !254, !255}
!254 = !DILocation(line: 434, column: 5, scope: !241)
!255 = !DILocation(line: 439, column: 5, scope: !241)
!256 = !DILocation(line: 436, column: 44, scope: !257)
!257 = distinct !DILexicalBlock(scope: !239, file: !3, line: 436, column: 13)
!258 = !{!259, !226, i64 16}
!259 = !{!"", !260, i64 0, !245, i64 4, !261, i64 8, !226, i64 38, !245, i64 40, !245, i64 44, !245, i64 48}
!260 = !{!"btstack_linked_item", !245, i64 0}
!261 = !{!"", !227, i64 0, !227, i64 1, !226, i64 8, !227, i64 10, !227, i64 11, !227, i64 12, !227, i64 13, !227, i64 14, !227, i64 15, !227, i64 16, !227, i64 17, !227, i64 18, !226, i64 20, !262, i64 22}
!262 = !{!"rfcomm_rpn_data", !227, i64 0, !227, i64 1, !227, i64 2, !227, i64 3, !227, i64 4, !227, i64 5, !227, i64 6}
!263 = !DILocation(line: 436, column: 55, scope: !257)
!264 = !DILocation(line: 435, column: 38, scope: !239)
!265 = !DILocation(line: 441, column: 1, scope: !232)
!266 = distinct !DISubprogram(name: "rfcomm_init", scope: !3, file: !3, line: 1945, type: !267, isLocal: false, isDefinition: true, scopeLine: 1946, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !194}
!269 = !{!270}
!270 = !DILocalVariable(name: "stack", arg: 1, scope: !266, file: !3, line: 1945, type: !194)
!271 = !DILocation(line: 1945, column: 34, scope: !266)
!272 = !DILocation(line: 1947, column: 18, scope: !266)
!273 = !DILocation(line: 1949, column: 19, scope: !266)
!274 = !DILocation(line: 1952, column: 19, scope: !266)
!275 = !DILocation(line: 1952, column: 38, scope: !266)
!276 = !DILocation(line: 1949, column: 39, scope: !266)
!277 = !{!278, !245, i64 0}
!278 = !{!"", !245, i64 0, !245, i64 4, !245, i64 8, !245, i64 12, !226, i64 16}
!279 = !DILocation(line: 1953, column: 1, scope: !266)
!280 = distinct !DISubprogram(name: "app_rfcomm_packet_handler", scope: !3, file: !3, line: 2226, type: !200, isLocal: true, isDefinition: true, scopeLine: 2227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DILocalVariable(name: "connection", arg: 1, scope: !280, file: !3, line: 2226, type: !157)
!283 = !DILocalVariable(name: "packet_type", arg: 2, scope: !280, file: !3, line: 2226, type: !108)
!284 = !DILocalVariable(name: "channel", arg: 3, scope: !280, file: !3, line: 2226, type: !88)
!285 = !DILocalVariable(name: "packet", arg: 4, scope: !280, file: !3, line: 2226, type: !167)
!286 = !DILocalVariable(name: "size", arg: 5, scope: !280, file: !3, line: 2226, type: !88)
!287 = !DILocation(line: 2226, column: 47, scope: !280)
!288 = !DILocation(line: 2226, column: 62, scope: !280)
!289 = !DILocation(line: 2226, column: 79, scope: !280)
!290 = !DILocation(line: 2226, column: 92, scope: !280)
!291 = !DILocation(line: 2226, column: 104, scope: !280)
!292 = !DILocation(line: 2257, column: 1, scope: !280)
!293 = distinct !DISubprogram(name: "rfcomm_release", scope: !3, file: !3, line: 1955, type: !294, isLocal: false, isDefinition: true, scopeLine: 1956, isOptimized: true, unit: !2, variables: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null}
!296 = !{}
!297 = !DILocation(line: 1957, column: 1, scope: !293)
!298 = distinct !DISubprogram(name: "rfcomm_send_cretits_by_profile", scope: !3, file: !3, line: 1960, type: !299, isLocal: false, isDefinition: true, scopeLine: 1961, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!190, !88, !88, !108}
!301 = !{!302, !303, !304, !305}
!302 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !298, file: !3, line: 1960, type: !88)
!303 = !DILocalVariable(name: "credit", arg: 2, scope: !298, file: !3, line: 1960, type: !88)
!304 = !DILocalVariable(name: "auto_flag", arg: 3, scope: !298, file: !3, line: 1960, type: !108)
!305 = !DILocalVariable(name: "channel", scope: !298, file: !3, line: 1962, type: !76)
!306 = !DILocation(line: 1960, column: 40, scope: !298)
!307 = !DILocation(line: 1960, column: 56, scope: !298)
!308 = !DILocation(line: 1960, column: 67, scope: !298)
!309 = !DILocation(line: 431, column: 53, scope: !232, inlinedAt: !310)
!310 = distinct !DILocation(line: 1962, column: 33, scope: !298)
!311 = !DILocation(line: 434, column: 33, scope: !241, inlinedAt: !310)
!312 = !DILocation(line: 434, column: 47, scope: !241, inlinedAt: !310)
!313 = !DILocation(line: 433, column: 20, scope: !232, inlinedAt: !310)
!314 = !DILocation(line: 434, column: 5, scope: !249, inlinedAt: !310)
!315 = !DILocation(line: 436, column: 44, scope: !257, inlinedAt: !310)
!316 = !DILocation(line: 434, column: 78, scope: !252, inlinedAt: !310)
!317 = !DILocation(line: 436, column: 55, scope: !257, inlinedAt: !310)
!318 = !DILocation(line: 435, column: 38, scope: !239, inlinedAt: !310)
!319 = !DILocation(line: 1967, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !298, file: !3, line: 1967, column: 9)
!321 = !DILocation(line: 1971, column: 62, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !3, line: 1970, column: 12)
!323 = !{!259, !227, i64 24}
!324 = !{!259, !227, i64 22}
!325 = !DILocation(line: 1977, column: 5, scope: !298)
!326 = !DILocation(line: 1979, column: 5, scope: !298)
!327 = !DILocation(line: 1980, column: 1, scope: !298)
!328 = distinct !DISubprogram(name: "rfcomm_send_internal", scope: !3, file: !3, line: 1983, type: !329, isLocal: false, isDefinition: true, scopeLine: 1984, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !334)
!329 = !DISubroutineType(types: !330)
!330 = !{!190, !88, !331, !88}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !328, file: !3, line: 1983, type: !88)
!336 = !DILocalVariable(name: "data", arg: 2, scope: !328, file: !3, line: 1983, type: !331)
!337 = !DILocalVariable(name: "len", arg: 3, scope: !328, file: !3, line: 1983, type: !88)
!338 = !DILocalVariable(name: "packets_granted_decreased", scope: !328, file: !3, line: 1985, type: !190)
!339 = !DILocalVariable(name: "channel", scope: !328, file: !3, line: 1986, type: !76)
!340 = !DILocalVariable(name: "result", scope: !341, file: !3, line: 2015, type: !190)
!341 = distinct !DILexicalBlock(scope: !328, file: !3, line: 2014, column: 5)
!342 = !DILocation(line: 1983, column: 30, scope: !328)
!343 = !DILocation(line: 1983, column: 54, scope: !328)
!344 = !DILocation(line: 1983, column: 64, scope: !328)
!345 = !DILocation(line: 1985, column: 9, scope: !328)
!346 = !DILocation(line: 431, column: 53, scope: !232, inlinedAt: !347)
!347 = distinct !DILocation(line: 1986, column: 33, scope: !328)
!348 = !DILocation(line: 434, column: 33, scope: !241, inlinedAt: !347)
!349 = !DILocation(line: 434, column: 47, scope: !241, inlinedAt: !347)
!350 = !DILocation(line: 433, column: 20, scope: !232, inlinedAt: !347)
!351 = !DILocation(line: 434, column: 5, scope: !249, inlinedAt: !347)
!352 = !DILocation(line: 436, column: 44, scope: !257, inlinedAt: !347)
!353 = !DILocation(line: 434, column: 78, scope: !252, inlinedAt: !347)
!354 = !DILocation(line: 436, column: 55, scope: !257, inlinedAt: !347)
!355 = !DILocation(line: 435, column: 38, scope: !239, inlinedAt: !347)
!356 = !DILocation(line: 1992, column: 41, scope: !357)
!357 = distinct !DILexicalBlock(scope: !328, file: !3, line: 1992, column: 9)
!358 = !{!259, !227, i64 21}
!359 = !DILocation(line: 1992, column: 10, scope: !357)
!360 = !DILocation(line: 1992, column: 9, scope: !328)
!361 = !DILocation(line: 1996, column: 36, scope: !328)
!362 = !DILocation(line: 2007, column: 52, scope: !328)
!363 = !DILocation(line: 2010, column: 55, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 2009, column: 57)
!365 = distinct !DILexicalBlock(scope: !328, file: !3, line: 2009, column: 9)
!366 = !{!259, !227, i64 20}
!367 = !DILocation(line: 2015, column: 52, scope: !341)
!368 = !{!259, !245, i64 4}
!369 = !DILocation(line: 2015, column: 96, scope: !341)
!370 = !{!259, !227, i64 19}
!371 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !372, file: !3, line: 701, type: !82)
!372 = distinct !DISubprogram(name: "rfcomm_send_uih_data", scope: !3, file: !3, line: 701, type: !373, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!190, !82, !108, !167, !88}
!375 = !{!371, !376, !377, !378, !379}
!376 = !DILocalVariable(name: "dlci", arg: 2, scope: !372, file: !3, line: 701, type: !108)
!377 = !DILocalVariable(name: "data", arg: 3, scope: !372, file: !3, line: 701, type: !167)
!378 = !DILocalVariable(name: "len", arg: 4, scope: !372, file: !3, line: 701, type: !88)
!379 = !DILocalVariable(name: "address", scope: !372, file: !3, line: 703, type: !108)
!380 = !DILocation(line: 701, column: 57, scope: !372, inlinedAt: !381)
!381 = distinct !DILocation(line: 2015, column: 22, scope: !341)
!382 = !DILocation(line: 701, column: 73, scope: !372, inlinedAt: !381)
!383 = !DILocation(line: 701, column: 83, scope: !372, inlinedAt: !381)
!384 = !DILocation(line: 701, column: 93, scope: !372, inlinedAt: !381)
!385 = !DILocation(line: 703, column: 65, scope: !372, inlinedAt: !381)
!386 = !{!387, !227, i64 15}
!387 = !{!"", !260, i64 0, !226, i64 4, !388, i64 6}
!388 = !{!"", !227, i64 0, !226, i64 6, !227, i64 8, !227, i64 8, !227, i64 9, !227, i64 10, !227, i64 11, !226, i64 12}
!389 = !DILocation(line: 703, column: 74, scope: !372, inlinedAt: !381)
!390 = !DILocation(line: 703, column: 88, scope: !372, inlinedAt: !381)
!391 = !DILocation(line: 703, column: 80, scope: !372, inlinedAt: !381)
!392 = !DILocation(line: 703, column: 8, scope: !372, inlinedAt: !381)
!393 = !DILocation(line: 704, column: 12, scope: !372, inlinedAt: !381)
!394 = !DILocation(line: 2015, column: 13, scope: !341)
!395 = !DILocation(line: 2017, column: 20, scope: !396)
!396 = distinct !DILexicalBlock(scope: !341, file: !3, line: 2017, column: 13)
!397 = !DILocation(line: 2017, column: 13, scope: !341)
!398 = !DILocation(line: 2018, column: 60, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 2017, column: 26)
!400 = !DILocation(line: 2019, column: 60, scope: !399)
!401 = !DILocation(line: 2021, column: 13, scope: !399)
!402 = !DILocation(line: 2031, column: 1, scope: !328)
!403 = distinct !DISubprogram(name: "rfcomm_create_channel2", scope: !3, file: !3, line: 2034, type: !404, isLocal: false, isDefinition: true, scopeLine: 2035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !407)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !157, !159, !406, !108, !108, !108}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 32)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415}
!408 = !DILocalVariable(name: "connection", arg: 1, scope: !403, file: !3, line: 2034, type: !157)
!409 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !403, file: !3, line: 2034, type: !159)
!410 = !DILocalVariable(name: "addr", arg: 3, scope: !403, file: !3, line: 2034, type: !406)
!411 = !DILocalVariable(name: "server_channel", arg: 4, scope: !403, file: !3, line: 2034, type: !108)
!412 = !DILocalVariable(name: "incoming_flow_control", arg: 5, scope: !403, file: !3, line: 2034, type: !108)
!413 = !DILocalVariable(name: "initial_credits", arg: 6, scope: !403, file: !3, line: 2034, type: !108)
!414 = !DILocalVariable(name: "multiplexer", scope: !403, file: !3, line: 2036, type: !82)
!415 = !DILocalVariable(name: "channel", scope: !403, file: !3, line: 2037, type: !76)
!416 = !DILocation(line: 2034, column: 35, scope: !403)
!417 = !DILocation(line: 2034, column: 72, scope: !403)
!418 = !DILocation(line: 2034, column: 99, scope: !403)
!419 = !DILocation(line: 2034, column: 108, scope: !403)
!420 = !DILocation(line: 2034, column: 127, scope: !403)
!421 = !DILocation(line: 2034, column: 153, scope: !403)
!422 = !DILocation(line: 2036, column: 41, scope: !403)
!423 = !DILocation(line: 2036, column: 27, scope: !403)
!424 = !DILocation(line: 2043, column: 10, scope: !425)
!425 = distinct !DILexicalBlock(scope: !403, file: !3, line: 2043, column: 9)
!426 = !DILocation(line: 2043, column: 9, scope: !403)
!427 = !DILocation(line: 2044, column: 23, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 2043, column: 23)
!429 = !DILocation(line: 2045, column: 14, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !3, line: 2045, column: 13)
!431 = !DILocation(line: 2045, column: 13, scope: !428)
!432 = !DILocation(line: 2046, column: 13, scope: !433)
!433 = !DILexicalBlockFile(scope: !434, file: !3, discriminator: 1)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 2046, column: 13)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 2046, column: 13)
!436 = distinct !DILexicalBlock(scope: !430, file: !3, line: 2045, column: 27)
!437 = !{!438, !438, i64 0}
!438 = !{!"int", !227, i64 0}
!439 = !DILocation(line: 2046, column: 13, scope: !440)
!440 = !DILexicalBlockFile(scope: !435, file: !3, discriminator: 1)
!441 = !DILocation(line: 2046, column: 13, scope: !442)
!442 = !DILexicalBlockFile(scope: !443, file: !3, discriminator: 3)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 2046, column: 13)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 2046, column: 13)
!445 = distinct !DILexicalBlock(scope: !434, file: !3, line: 2046, column: 13)
!446 = !DILocation(line: 2046, column: 13, scope: !447)
!447 = !DILexicalBlockFile(scope: !443, file: !3, discriminator: 9)
!448 = !DILocation(line: 2046, column: 13, scope: !449)
!449 = !DILexicalBlockFile(scope: !443, file: !3, discriminator: 10)
!450 = !DILocation(line: 2046, column: 13, scope: !451)
!451 = !DILexicalBlockFile(scope: !452, file: !3, discriminator: 6)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 2046, column: 13)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 2046, column: 13)
!454 = distinct !DILexicalBlock(scope: !434, file: !3, line: 2046, column: 13)
!455 = !DILocation(line: 2049, column: 44, scope: !428)
!456 = !DILocation(line: 2049, column: 53, scope: !428)
!457 = !DILocation(line: 2050, column: 44, scope: !428)
!458 = !DILocation(line: 2050, column: 50, scope: !428)
!459 = !DILocation(line: 2051, column: 5, scope: !428)
!460 = !DILocation(line: 2054, column: 15, scope: !403)
!461 = !DILocation(line: 2037, column: 23, scope: !403)
!462 = !DILocation(line: 2055, column: 10, scope: !463)
!463 = distinct !DILexicalBlock(scope: !403, file: !3, line: 2055, column: 9)
!464 = !DILocation(line: 2055, column: 9, scope: !403)
!465 = !DILocation(line: 2056, column: 9, scope: !466)
!466 = !DILexicalBlockFile(scope: !467, file: !3, discriminator: 1)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 2056, column: 9)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 2056, column: 9)
!469 = distinct !DILexicalBlock(scope: !463, file: !3, line: 2055, column: 19)
!470 = !DILocation(line: 2056, column: 9, scope: !471)
!471 = !DILexicalBlockFile(scope: !468, file: !3, discriminator: 1)
!472 = !DILocation(line: 2056, column: 9, scope: !473)
!473 = !DILexicalBlockFile(scope: !474, file: !3, discriminator: 3)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 2056, column: 9)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 2056, column: 9)
!476 = distinct !DILexicalBlock(scope: !467, file: !3, line: 2056, column: 9)
!477 = !DILocation(line: 2056, column: 9, scope: !478)
!478 = !DILexicalBlockFile(scope: !474, file: !3, discriminator: 9)
!479 = !DILocation(line: 2056, column: 9, scope: !480)
!480 = !DILexicalBlockFile(scope: !474, file: !3, discriminator: 10)
!481 = !DILocation(line: 2056, column: 9, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !3, discriminator: 6)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 2056, column: 9)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 2056, column: 9)
!485 = distinct !DILexicalBlock(scope: !467, file: !3, line: 2056, column: 9)
!486 = !DILocation(line: 2059, column: 14, scope: !403)
!487 = !DILocation(line: 2059, column: 25, scope: !403)
!488 = !{!259, !245, i64 48}
!489 = !DILocation(line: 2060, column: 36, scope: !403)
!490 = !DILocation(line: 2060, column: 58, scope: !403)
!491 = !DILocation(line: 2061, column: 36, scope: !403)
!492 = !DILocation(line: 2061, column: 58, scope: !403)
!493 = !DILocation(line: 2062, column: 14, scope: !403)
!494 = !DILocation(line: 2062, column: 29, scope: !403)
!495 = !{!259, !245, i64 44}
!496 = !DILocation(line: 2066, column: 44, scope: !497)
!497 = distinct !DILexicalBlock(scope: !403, file: !3, line: 2066, column: 9)
!498 = !DILocation(line: 2066, column: 50, scope: !497)
!499 = !DILocation(line: 2066, column: 9, scope: !403)
!500 = !DILocation(line: 2067, column: 46, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 2066, column: 78)
!502 = !{!259, !227, i64 25}
!503 = !DILocation(line: 2068, column: 48, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !3, line: 2068, column: 13)
!505 = !DILocation(line: 2068, column: 54, scope: !504)
!506 = !DILocation(line: 2068, column: 13, scope: !501)
!507 = !DILocation(line: 2069, column: 78, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !3, line: 2068, column: 88)
!509 = !DILocation(line: 2069, column: 97, scope: !508)
!510 = !DILocation(line: 2069, column: 13, scope: !511)
!511 = !DILexicalBlockFile(scope: !508, file: !3, discriminator: 1)
!512 = !DILocation(line: 2070, column: 9, scope: !508)
!513 = !DILocation(line: 2074, column: 42, scope: !403)
!514 = !DILocation(line: 2077, column: 5, scope: !403)
!515 = !DILocation(line: 2078, column: 1, scope: !403)
!516 = !DILocation(line: 2078, column: 1, scope: !517)
!517 = !DILexicalBlockFile(scope: !403, file: !3, discriminator: 2)
!518 = distinct !DISubprogram(name: "rfcomm_multiplexer_for_addr", scope: !3, file: !3, line: 320, type: !519, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!82, !406}
!521 = !{!522, !523, !524}
!522 = !DILocalVariable(name: "addr", arg: 1, scope: !518, file: !3, line: 320, type: !406)
!523 = !DILocalVariable(name: "it", scope: !518, file: !3, line: 322, type: !68)
!524 = !DILocalVariable(name: "multiplexer", scope: !525, file: !3, line: 324, type: !82)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 323, column: 88)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 323, column: 5)
!527 = distinct !DILexicalBlock(scope: !518, file: !3, line: 323, column: 5)
!528 = !DILocation(line: 320, column: 71, scope: !518)
!529 = !DILocation(line: 323, column: 33, scope: !527)
!530 = !DILocation(line: 323, column: 47, scope: !527)
!531 = !DILocation(line: 322, column: 20, scope: !518)
!532 = !DILocation(line: 323, column: 5, scope: !533)
!533 = !DILexicalBlockFile(scope: !527, file: !3, discriminator: 1)
!534 = !DILocation(line: 323, column: 82, scope: !535)
!535 = !DILexicalBlockFile(scope: !526, file: !3, discriminator: 2)
!536 = distinct !{!536, !537, !538}
!537 = !DILocation(line: 323, column: 5, scope: !527)
!538 = !DILocation(line: 328, column: 5, scope: !527)
!539 = !DILocation(line: 324, column: 46, scope: !525)
!540 = !DILocation(line: 324, column: 31, scope: !525)
!541 = !DILocation(line: 325, column: 13, scope: !542)
!542 = distinct !DILexicalBlock(scope: !525, file: !3, line: 325, column: 13)
!543 = !DILocation(line: 325, column: 79, scope: !542)
!544 = !DILocation(line: 330, column: 1, scope: !518)
!545 = distinct !DISubprogram(name: "rfcomm_multiplexer_create_for_addr", scope: !3, file: !3, line: 301, type: !519, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !546)
!546 = !{!547, !548}
!547 = !DILocalVariable(name: "addr", arg: 1, scope: !545, file: !3, line: 301, type: !406)
!548 = !DILocalVariable(name: "multiplexer", scope: !545, file: !3, line: 305, type: !82)
!549 = !DILocation(line: 301, column: 78, scope: !545)
!550 = !DILocation(line: 305, column: 41, scope: !545)
!551 = !DILocation(line: 305, column: 27, scope: !545)
!552 = !DILocation(line: 306, column: 10, scope: !553)
!553 = distinct !DILexicalBlock(scope: !545, file: !3, line: 306, column: 9)
!554 = !DILocation(line: 306, column: 9, scope: !545)
!555 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !556, file: !3, line: 289, type: !82)
!556 = distinct !DISubprogram(name: "rfcomm_multiplexer_initialize", scope: !3, file: !3, line: 289, type: !557, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !82}
!559 = !{!555}
!560 = !DILocation(line: 289, column: 67, scope: !556, inlinedAt: !561)
!561 = distinct !DILocation(line: 311, column: 5, scope: !545)
!562 = !DILocation(line: 292, column: 5, scope: !556, inlinedAt: !561)
!563 = !DILocation(line: 294, column: 40, scope: !556, inlinedAt: !561)
!564 = !DILocation(line: 295, column: 54, scope: !556, inlinedAt: !561)
!565 = !DILocation(line: 296, column: 40, scope: !556, inlinedAt: !561)
!566 = !DILocation(line: 296, column: 57, scope: !556, inlinedAt: !561)
!567 = !{!387, !227, i64 17}
!568 = !DILocation(line: 297, column: 71, scope: !556, inlinedAt: !561)
!569 = !DILocalVariable(name: "l2cap_mtu", arg: 1, scope: !570, file: !3, line: 273, type: !88)
!570 = distinct !DISubprogram(name: "rfcomm_max_frame_size_for_l2cap_mtu", scope: !3, file: !3, line: 273, type: !571, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!88, !88}
!573 = !{!569, !574}
!574 = !DILocalVariable(name: "max_frame_size", scope: !570, file: !3, line: 277, type: !88)
!575 = !DILocation(line: 273, column: 54, scope: !570, inlinedAt: !576)
!576 = distinct !DILocation(line: 297, column: 35, scope: !577, inlinedAt: !561)
!577 = !DILexicalBlockFile(scope: !556, file: !3, discriminator: 1)
!578 = !DILocation(line: 277, column: 36, scope: !570, inlinedAt: !576)
!579 = !DILocation(line: 277, column: 9, scope: !570, inlinedAt: !576)
!580 = !DILocation(line: 280, column: 24, scope: !581, inlinedAt: !576)
!581 = distinct !DILexicalBlock(scope: !570, file: !3, line: 280, column: 9)
!582 = !DILocation(line: 281, column: 23, scope: !583, inlinedAt: !576)
!583 = distinct !DILexicalBlock(scope: !581, file: !3, line: 280, column: 31)
!584 = !DILocation(line: 280, column: 9, scope: !570, inlinedAt: !576)
!585 = !DILocation(line: 297, column: 18, scope: !556, inlinedAt: !561)
!586 = !DILocation(line: 297, column: 33, scope: !556, inlinedAt: !561)
!587 = !{!387, !226, i64 4}
!588 = !DILocation(line: 312, column: 5, scope: !545)
!589 = !DILocation(line: 314, column: 5, scope: !545)
!590 = !DILocation(line: 316, column: 5, scope: !545)
!591 = !DILocation(line: 317, column: 1, scope: !545)
!592 = distinct !DISubprogram(name: "cpu_reset", scope: !89, file: !89, line: 145, type: !294, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !296)
!593 = !DILocation(line: 148, column: 5, scope: !592)
!594 = !DILocation(line: 149, column: 1, scope: !592)
!595 = distinct !DISubprogram(name: "rfcomm_channel_create", scope: !3, file: !3, line: 407, type: !596, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!76, !82, !147, !108}
!598 = !{!599, !600, !601, !602}
!599 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !595, file: !3, line: 407, type: !82)
!600 = !DILocalVariable(name: "service", arg: 2, scope: !595, file: !3, line: 408, type: !147)
!601 = !DILocalVariable(name: "server_channel", arg: 3, scope: !595, file: !3, line: 408, type: !108)
!602 = !DILocalVariable(name: "channel", scope: !595, file: !3, line: 411, type: !76)
!603 = !DILocation(line: 407, column: 72, scope: !595)
!604 = !DILocation(line: 408, column: 27, scope: !595)
!605 = !DILocation(line: 408, column: 39, scope: !595)
!606 = !DILocation(line: 416, column: 15, scope: !595)
!607 = !DILocation(line: 411, column: 23, scope: !595)
!608 = !DILocation(line: 417, column: 10, scope: !609)
!609 = distinct !DILexicalBlock(scope: !595, file: !3, line: 417, column: 9)
!610 = !DILocation(line: 417, column: 9, scope: !595)
!611 = !DILocalVariable(name: "channel", arg: 1, scope: !612, file: !3, line: 360, type: !76)
!612 = distinct !DISubprogram(name: "rfcomm_channel_initialize", scope: !3, file: !3, line: 360, type: !613, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !76, !82, !147, !108}
!615 = !{!611, !616, !617, !618}
!616 = !DILocalVariable(name: "multiplexer", arg: 2, scope: !612, file: !3, line: 360, type: !82)
!617 = !DILocalVariable(name: "service", arg: 3, scope: !612, file: !3, line: 361, type: !147)
!618 = !DILocalVariable(name: "server_channel", arg: 4, scope: !612, file: !3, line: 361, type: !108)
!619 = !DILocation(line: 360, column: 59, scope: !612, inlinedAt: !620)
!620 = distinct !DILocation(line: 422, column: 5, scope: !595)
!621 = !DILocation(line: 360, column: 90, scope: !612, inlinedAt: !620)
!622 = !DILocation(line: 361, column: 59, scope: !612, inlinedAt: !620)
!623 = !DILocation(line: 361, column: 71, scope: !612, inlinedAt: !620)
!624 = !DILocation(line: 365, column: 9, scope: !625, inlinedAt: !620)
!625 = distinct !DILexicalBlock(scope: !612, file: !3, line: 365, column: 9)
!626 = !DILocation(line: 365, column: 23, scope: !625, inlinedAt: !620)
!627 = !{!278, !226, i64 16}
!628 = !DILocation(line: 365, column: 51, scope: !625, inlinedAt: !620)
!629 = !DILocation(line: 365, column: 9, scope: !612, inlinedAt: !620)
!630 = !DILocation(line: 366, column: 9, scope: !631, inlinedAt: !620)
!631 = distinct !DILexicalBlock(scope: !625, file: !3, line: 365, column: 57)
!632 = !DILocation(line: 367, column: 5, scope: !631, inlinedAt: !620)
!633 = !DILocation(line: 370, column: 5, scope: !612, inlinedAt: !620)
!634 = !DILocation(line: 372, column: 36, scope: !612, inlinedAt: !620)
!635 = !DILocation(line: 372, column: 54, scope: !612, inlinedAt: !620)
!636 = !DILocation(line: 373, column: 36, scope: !612, inlinedAt: !620)
!637 = !DILocation(line: 373, column: 54, scope: !612, inlinedAt: !620)
!638 = !{!259, !226, i64 28}
!639 = !DILocation(line: 375, column: 14, scope: !612, inlinedAt: !620)
!640 = !DILocation(line: 375, column: 31, scope: !612, inlinedAt: !620)
!641 = !DILocation(line: 376, column: 14, scope: !612, inlinedAt: !620)
!642 = !DILocation(line: 376, column: 31, scope: !612, inlinedAt: !620)
!643 = !{!259, !245, i64 40}
!644 = !DILocation(line: 377, column: 96, scope: !612, inlinedAt: !620)
!645 = !DILocation(line: 377, column: 36, scope: !612, inlinedAt: !620)
!646 = !DILocation(line: 377, column: 53, scope: !612, inlinedAt: !620)
!647 = !DILocation(line: 378, column: 46, scope: !612, inlinedAt: !620)
!648 = !DILocation(line: 378, column: 14, scope: !612, inlinedAt: !620)
!649 = !DILocation(line: 378, column: 31, scope: !612, inlinedAt: !620)
!650 = !{!259, !226, i64 38}
!651 = !DILocation(line: 380, column: 36, scope: !612, inlinedAt: !620)
!652 = !DILocation(line: 380, column: 53, scope: !612, inlinedAt: !620)
!653 = !{!259, !227, i64 23}
!654 = !DILocation(line: 381, column: 36, scope: !612, inlinedAt: !620)
!655 = !DILocation(line: 381, column: 53, scope: !612, inlinedAt: !620)
!656 = !DILocation(line: 382, column: 36, scope: !612, inlinedAt: !620)
!657 = !DILocation(line: 382, column: 53, scope: !612, inlinedAt: !620)
!658 = !DILocation(line: 385, column: 60, scope: !612, inlinedAt: !620)
!659 = !DILocation(line: 385, column: 36, scope: !612, inlinedAt: !620)
!660 = !DILocation(line: 385, column: 58, scope: !612, inlinedAt: !620)
!661 = !DILocation(line: 386, column: 36, scope: !612, inlinedAt: !620)
!662 = !DILocation(line: 386, column: 58, scope: !612, inlinedAt: !620)
!663 = !DILocation(line: 388, column: 9, scope: !664, inlinedAt: !620)
!664 = distinct !DILexicalBlock(scope: !612, file: !3, line: 388, column: 9)
!665 = !DILocation(line: 388, column: 9, scope: !612, inlinedAt: !620)
!666 = !DILocation(line: 390, column: 44, scope: !667, inlinedAt: !620)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 388, column: 18)
!668 = !{!669, !245, i64 16}
!669 = !{!"", !260, i64 0, !227, i64 4, !227, i64 5, !227, i64 6, !226, i64 8, !245, i64 12, !245, i64 16}
!670 = !DILocation(line: 390, column: 18, scope: !667, inlinedAt: !620)
!671 = !DILocation(line: 390, column: 33, scope: !667, inlinedAt: !620)
!672 = !DILocation(line: 391, column: 40, scope: !667, inlinedAt: !620)
!673 = !DILocation(line: 391, column: 49, scope: !667, inlinedAt: !620)
!674 = !{!259, !227, i64 18}
!675 = !DILocation(line: 392, column: 63, scope: !667, inlinedAt: !620)
!676 = !DILocation(line: 392, column: 107, scope: !667, inlinedAt: !620)
!677 = !DILocation(line: 392, column: 69, scope: !667, inlinedAt: !620)
!678 = !DILocation(line: 392, column: 40, scope: !667, inlinedAt: !620)
!679 = !DILocation(line: 392, column: 45, scope: !667, inlinedAt: !620)
!680 = !DILocation(line: 393, column: 48, scope: !681, inlinedAt: !620)
!681 = distinct !DILexicalBlock(scope: !667, file: !3, line: 393, column: 13)
!682 = !{!669, !226, i64 8}
!683 = !DILocation(line: 393, column: 37, scope: !681, inlinedAt: !620)
!684 = !DILocation(line: 393, column: 13, scope: !667, inlinedAt: !620)
!685 = !DILocation(line: 394, column: 37, scope: !686, inlinedAt: !620)
!686 = distinct !DILexicalBlock(scope: !681, file: !3, line: 393, column: 64)
!687 = !DILocation(line: 395, column: 9, scope: !686, inlinedAt: !620)
!688 = !DILocation(line: 396, column: 73, scope: !667, inlinedAt: !620)
!689 = !{!669, !227, i64 5}
!690 = !DILocation(line: 396, column: 62, scope: !667, inlinedAt: !620)
!691 = !DILocation(line: 397, column: 73, scope: !667, inlinedAt: !620)
!692 = !{!669, !227, i64 6}
!693 = !DILocation(line: 397, column: 62, scope: !667, inlinedAt: !620)
!694 = !DILocation(line: 398, column: 5, scope: !667, inlinedAt: !620)
!695 = !DILocation(line: 400, column: 40, scope: !696, inlinedAt: !620)
!696 = distinct !DILexicalBlock(scope: !664, file: !3, line: 398, column: 12)
!697 = !DILocation(line: 400, column: 49, scope: !696, inlinedAt: !620)
!698 = !DILocation(line: 401, column: 63, scope: !696, inlinedAt: !620)
!699 = !DILocation(line: 401, column: 107, scope: !696, inlinedAt: !620)
!700 = !DILocation(line: 401, column: 69, scope: !696, inlinedAt: !620)
!701 = !DILocation(line: 401, column: 40, scope: !696, inlinedAt: !620)
!702 = !DILocation(line: 401, column: 45, scope: !696, inlinedAt: !620)
!703 = !DILocation(line: 425, column: 5, scope: !595)
!704 = !DILocation(line: 427, column: 5, scope: !595)
!705 = !DILocation(line: 428, column: 1, scope: !595)
!706 = distinct !DISubprogram(name: "rfcomm_packet_handler", scope: !3, file: !3, line: 1510, type: !707, isLocal: true, isDefinition: true, scopeLine: 1511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !108, !88, !167, !88}
!709 = !{!710, !711, !712, !713, !714, !715, !716}
!710 = !DILocalVariable(name: "packet_type", arg: 1, scope: !706, file: !3, line: 1510, type: !108)
!711 = !DILocalVariable(name: "channel", arg: 2, scope: !706, file: !3, line: 1510, type: !88)
!712 = !DILocalVariable(name: "packet", arg: 3, scope: !706, file: !3, line: 1510, type: !167)
!713 = !DILocalVariable(name: "size", arg: 4, scope: !706, file: !3, line: 1510, type: !88)
!714 = !DILocalVariable(name: "multiplexer", scope: !706, file: !3, line: 1514, type: !82)
!715 = !DILocalVariable(name: "handled", scope: !706, file: !3, line: 1515, type: !190)
!716 = !DILocalVariable(name: "frame_dlci", scope: !717, file: !3, line: 1550, type: !718)
!717 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1548, column: 5)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!719 = !DILocalVariable(name: "event_addr", scope: !720, file: !3, line: 848, type: !96)
!720 = distinct !DISubprogram(name: "rfcomm_multiplexer_hci_event_handler", scope: !3, file: !3, line: 846, type: !721, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{!190, !167, !88}
!723 = !{!724, !725, !719, !726, !727, !728, !729, !730, !731, !736}
!724 = !DILocalVariable(name: "packet", arg: 1, scope: !720, file: !3, line: 846, type: !167)
!725 = !DILocalVariable(name: "size", arg: 2, scope: !720, file: !3, line: 846, type: !88)
!726 = !DILocalVariable(name: "psm", scope: !720, file: !3, line: 849, type: !88)
!727 = !DILocalVariable(name: "l2cap_cid", scope: !720, file: !3, line: 850, type: !88)
!728 = !DILocalVariable(name: "con_handle", scope: !720, file: !3, line: 851, type: !114)
!729 = !DILocalVariable(name: "multiplexer", scope: !720, file: !3, line: 852, type: !82)
!730 = !DILocalVariable(name: "status", scope: !720, file: !3, line: 853, type: !108)
!731 = !DILocalVariable(name: "it", scope: !732, file: !3, line: 919, type: !68)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 917, column: 13)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 912, column: 21)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 912, column: 13)
!735 = distinct !DILexicalBlock(scope: !720, file: !3, line: 855, column: 24)
!736 = !DILocalVariable(name: "channel", scope: !737, file: !3, line: 921, type: !76)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 920, column: 34)
!738 = !DILocation(line: 848, column: 15, scope: !720, inlinedAt: !739)
!739 = distinct !DILocation(line: 1518, column: 19, scope: !740)
!740 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1516, column: 26)
!741 = !DILocation(line: 1510, column: 40, scope: !706)
!742 = !DILocation(line: 1510, column: 57, scope: !706)
!743 = !DILocation(line: 1510, column: 70, scope: !706)
!744 = !DILocation(line: 1510, column: 82, scope: !706)
!745 = !DILocation(line: 1515, column: 9, scope: !706)
!746 = !DILocation(line: 1516, column: 5, scope: !706)
!747 = !DILocation(line: 846, column: 67, scope: !720, inlinedAt: !739)
!748 = !DILocation(line: 848, column: 5, scope: !720, inlinedAt: !739)
!749 = !DILocation(line: 852, column: 27, scope: !720, inlinedAt: !739)
!750 = !DILocation(line: 855, column: 13, scope: !720, inlinedAt: !739)
!751 = !DILocation(line: 855, column: 5, scope: !720, inlinedAt: !739)
!752 = !DILocation(line: 860, column: 35, scope: !735, inlinedAt: !739)
!753 = !DILocation(line: 860, column: 9, scope: !735, inlinedAt: !739)
!754 = !DILocation(line: 861, column: 22, scope: !735, inlinedAt: !739)
!755 = !DILocation(line: 851, column: 22, scope: !720, inlinedAt: !739)
!756 = !DILocation(line: 862, column: 22, scope: !735, inlinedAt: !739)
!757 = !DILocation(line: 863, column: 22, scope: !735, inlinedAt: !739)
!758 = !DILocation(line: 850, column: 9, scope: !720, inlinedAt: !739)
!759 = !DILocation(line: 865, column: 17, scope: !760, inlinedAt: !739)
!760 = distinct !DILexicalBlock(scope: !735, file: !3, line: 865, column: 13)
!761 = !DILocation(line: 865, column: 13, scope: !735, inlinedAt: !739)
!762 = !DILocation(line: 869, column: 23, scope: !735, inlinedAt: !739)
!763 = !DILocation(line: 871, column: 13, scope: !764, inlinedAt: !739)
!764 = distinct !DILexicalBlock(scope: !735, file: !3, line: 871, column: 13)
!765 = !DILocation(line: 871, column: 13, scope: !735, inlinedAt: !739)
!766 = !DILocation(line: 873, column: 13, scope: !767, inlinedAt: !739)
!767 = distinct !DILexicalBlock(scope: !764, file: !3, line: 871, column: 26)
!768 = !DILocation(line: 874, column: 13, scope: !767, inlinedAt: !739)
!769 = !DILocation(line: 878, column: 23, scope: !735, inlinedAt: !739)
!770 = !DILocation(line: 879, column: 14, scope: !771, inlinedAt: !739)
!771 = distinct !DILexicalBlock(scope: !735, file: !3, line: 879, column: 13)
!772 = !DILocation(line: 879, column: 13, scope: !735, inlinedAt: !739)
!773 = !DILocation(line: 881, column: 13, scope: !774, inlinedAt: !739)
!774 = distinct !DILexicalBlock(scope: !771, file: !3, line: 879, column: 27)
!775 = !DILocation(line: 882, column: 13, scope: !774, inlinedAt: !739)
!776 = !DILocation(line: 885, column: 44, scope: !735, inlinedAt: !739)
!777 = !DILocation(line: 885, column: 55, scope: !735, inlinedAt: !739)
!778 = !{!387, !226, i64 18}
!779 = !DILocation(line: 886, column: 44, scope: !735, inlinedAt: !739)
!780 = !DILocation(line: 886, column: 54, scope: !735, inlinedAt: !739)
!781 = !{!387, !226, i64 12}
!782 = !DILocation(line: 887, column: 44, scope: !735, inlinedAt: !739)
!783 = !DILocation(line: 887, column: 50, scope: !735, inlinedAt: !739)
!784 = !DILocation(line: 890, column: 9, scope: !735, inlinedAt: !739)
!785 = !DILocation(line: 891, column: 9, scope: !735, inlinedAt: !739)
!786 = !DILocation(line: 895, column: 13, scope: !787, inlinedAt: !739)
!787 = distinct !DILexicalBlock(scope: !735, file: !3, line: 895, column: 13)
!788 = !DILocation(line: 895, column: 36, scope: !787, inlinedAt: !739)
!789 = !DILocation(line: 895, column: 13, scope: !735, inlinedAt: !739)
!790 = !DILocation(line: 898, column: 18, scope: !735, inlinedAt: !739)
!791 = !DILocation(line: 853, column: 8, scope: !720, inlinedAt: !739)
!792 = !DILocation(line: 902, column: 22, scope: !735, inlinedAt: !739)
!793 = !DILocation(line: 903, column: 21, scope: !735, inlinedAt: !739)
!794 = !DILocation(line: 904, column: 35, scope: !735, inlinedAt: !739)
!795 = !DILocation(line: 904, column: 9, scope: !735, inlinedAt: !739)
!796 = !DILocation(line: 905, column: 23, scope: !735, inlinedAt: !739)
!797 = !DILocation(line: 906, column: 14, scope: !798, inlinedAt: !739)
!798 = distinct !DILexicalBlock(scope: !735, file: !3, line: 906, column: 13)
!799 = !DILocation(line: 906, column: 13, scope: !735, inlinedAt: !739)
!800 = !DILocation(line: 912, column: 13, scope: !734, inlinedAt: !739)
!801 = !DILocation(line: 912, column: 13, scope: !735, inlinedAt: !739)
!802 = !DILocation(line: 919, column: 56, scope: !732, inlinedAt: !739)
!803 = !DILocation(line: 919, column: 70, scope: !732, inlinedAt: !739)
!804 = !DILocation(line: 920, column: 28, scope: !805, inlinedAt: !739)
!805 = !DILexicalBlockFile(scope: !732, file: !3, discriminator: 1)
!806 = !{!260, !245, i64 0}
!807 = !DILocation(line: 920, column: 17, scope: !805, inlinedAt: !739)
!808 = !DILocation(line: 919, column: 37, scope: !732, inlinedAt: !739)
!809 = !DILocation(line: 919, column: 32, scope: !732, inlinedAt: !739)
!810 = !DILocation(line: 922, column: 34, scope: !811, inlinedAt: !739)
!811 = distinct !DILexicalBlock(scope: !737, file: !3, line: 922, column: 25)
!812 = !DILocation(line: 922, column: 46, scope: !811, inlinedAt: !739)
!813 = !DILocation(line: 922, column: 25, scope: !737, inlinedAt: !739)
!814 = distinct !{!814, !815, !816}
!815 = !DILocation(line: 920, column: 17, scope: !732)
!816 = !DILocation(line: 929, column: 17, scope: !732)
!817 = !DILocation(line: 921, column: 49, scope: !737, inlinedAt: !739)
!818 = !DILocation(line: 923, column: 25, scope: !819, inlinedAt: !739)
!819 = distinct !DILexicalBlock(scope: !811, file: !3, line: 922, column: 62)
!820 = !DILocation(line: 924, column: 40, scope: !819, inlinedAt: !739)
!821 = !DILocation(line: 924, column: 46, scope: !819, inlinedAt: !739)
!822 = !DILocation(line: 924, column: 34, scope: !819, inlinedAt: !739)
!823 = !DILocation(line: 925, column: 60, scope: !819, inlinedAt: !739)
!824 = !DILocation(line: 925, column: 25, scope: !819, inlinedAt: !739)
!825 = !DILocation(line: 933, column: 13, scope: !733, inlinedAt: !739)
!826 = !DILocation(line: 934, column: 13, scope: !733, inlinedAt: !739)
!827 = !DILocation(line: 937, column: 48, scope: !828, inlinedAt: !739)
!828 = distinct !DILexicalBlock(scope: !735, file: !3, line: 937, column: 13)
!829 = !DILocation(line: 937, column: 54, scope: !828, inlinedAt: !739)
!830 = !DILocation(line: 937, column: 13, scope: !735, inlinedAt: !739)
!831 = !DILocation(line: 940, column: 17, scope: !832, inlinedAt: !739)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 940, column: 17)
!833 = distinct !DILexicalBlock(scope: !828, file: !3, line: 937, column: 88)
!834 = !DILocation(line: 940, column: 17, scope: !833, inlinedAt: !739)
!835 = !DILocation(line: 943, column: 48, scope: !833, inlinedAt: !739)
!836 = !DILocation(line: 943, column: 58, scope: !833, inlinedAt: !739)
!837 = !DILocation(line: 944, column: 48, scope: !833, inlinedAt: !739)
!838 = !DILocation(line: 944, column: 59, scope: !833, inlinedAt: !739)
!839 = !DILocation(line: 946, column: 54, scope: !833, inlinedAt: !739)
!840 = !DILocation(line: 947, column: 9, scope: !833, inlinedAt: !739)
!841 = !DILocation(line: 950, column: 79, scope: !842, inlinedAt: !739)
!842 = distinct !DILexicalBlock(scope: !828, file: !3, line: 947, column: 16)
!843 = !DILocation(line: 273, column: 54, scope: !570, inlinedAt: !844)
!844 = distinct !DILocation(line: 950, column: 43, scope: !842, inlinedAt: !739)
!845 = !DILocation(line: 277, column: 36, scope: !570, inlinedAt: !844)
!846 = !DILocation(line: 277, column: 9, scope: !570, inlinedAt: !844)
!847 = !DILocation(line: 280, column: 24, scope: !581, inlinedAt: !844)
!848 = !DILocation(line: 281, column: 23, scope: !583, inlinedAt: !844)
!849 = !DILocation(line: 280, column: 9, scope: !570, inlinedAt: !844)
!850 = !DILocation(line: 950, column: 26, scope: !842, inlinedAt: !739)
!851 = !DILocation(line: 950, column: 41, scope: !842, inlinedAt: !739)
!852 = !DILocation(line: 958, column: 21, scope: !735, inlinedAt: !739)
!853 = !DILocalVariable(name: "l2cap_cid", arg: 1, scope: !854, file: !3, line: 333, type: !88)
!854 = distinct !DISubprogram(name: "rfcomm_multiplexer_for_l2cap_cid", scope: !3, file: !3, line: 333, type: !855, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!82, !88}
!857 = !{!853, !858, !859}
!858 = !DILocalVariable(name: "it", scope: !854, file: !3, line: 335, type: !68)
!859 = !DILocalVariable(name: "multiplexer", scope: !860, file: !3, line: 337, type: !82)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 336, column: 88)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 336, column: 5)
!862 = distinct !DILexicalBlock(scope: !854, file: !3, line: 336, column: 5)
!863 = !DILocation(line: 333, column: 69, scope: !854, inlinedAt: !864)
!864 = distinct !DILocation(line: 959, column: 23, scope: !735, inlinedAt: !739)
!865 = !DILocation(line: 336, column: 33, scope: !862, inlinedAt: !864)
!866 = !DILocation(line: 336, column: 47, scope: !862, inlinedAt: !864)
!867 = !DILocation(line: 335, column: 20, scope: !854, inlinedAt: !864)
!868 = !DILocation(line: 336, column: 5, scope: !869, inlinedAt: !864)
!869 = !DILexicalBlockFile(scope: !862, file: !3, discriminator: 1)
!870 = !DILocation(line: 338, column: 48, scope: !871, inlinedAt: !864)
!871 = distinct !DILexicalBlock(scope: !860, file: !3, line: 338, column: 13)
!872 = !DILocation(line: 336, column: 82, scope: !873, inlinedAt: !864)
!873 = !DILexicalBlockFile(scope: !861, file: !3, discriminator: 2)
!874 = distinct !{!874, !875, !876}
!875 = !DILocation(line: 336, column: 5, scope: !862)
!876 = !DILocation(line: 341, column: 5, scope: !862)
!877 = !DILocation(line: 338, column: 58, scope: !871, inlinedAt: !864)
!878 = !DILocation(line: 337, column: 46, scope: !860, inlinedAt: !864)
!879 = !DILocation(line: 963, column: 14, scope: !880, inlinedAt: !739)
!880 = distinct !DILexicalBlock(scope: !735, file: !3, line: 963, column: 13)
!881 = !DILocation(line: 963, column: 24, scope: !880, inlinedAt: !739)
!882 = !DILocation(line: 963, column: 83, scope: !883, inlinedAt: !739)
!883 = !DILexicalBlockFile(scope: !880, file: !3, discriminator: 1)
!884 = !DILocation(line: 963, column: 30, scope: !880, inlinedAt: !739)
!885 = !DILocation(line: 967, column: 58, scope: !735, inlinedAt: !739)
!886 = !DILocation(line: 968, column: 48, scope: !887, inlinedAt: !739)
!887 = distinct !DILexicalBlock(scope: !735, file: !3, line: 968, column: 13)
!888 = !DILocation(line: 968, column: 62, scope: !887, inlinedAt: !739)
!889 = !DILocation(line: 968, column: 13, scope: !735, inlinedAt: !739)
!890 = !DILocation(line: 975, column: 9, scope: !735, inlinedAt: !739)
!891 = !DILocation(line: 977, column: 48, scope: !892, inlinedAt: !739)
!892 = distinct !DILexicalBlock(scope: !735, file: !3, line: 977, column: 13)
!893 = !DILocation(line: 977, column: 54, scope: !892, inlinedAt: !739)
!894 = !DILocation(line: 977, column: 13, scope: !735, inlinedAt: !739)
!895 = !DILocation(line: 980, column: 9, scope: !735, inlinedAt: !739)
!896 = !DILocation(line: 981, column: 9, scope: !735, inlinedAt: !739)
!897 = !DILocation(line: 985, column: 9, scope: !735, inlinedAt: !739)
!898 = !DILocation(line: 986, column: 9, scope: !735, inlinedAt: !739)
!899 = !DILocation(line: 991, column: 21, scope: !735, inlinedAt: !739)
!900 = !DILocation(line: 333, column: 69, scope: !854, inlinedAt: !901)
!901 = distinct !DILocation(line: 992, column: 23, scope: !735, inlinedAt: !739)
!902 = !DILocation(line: 336, column: 33, scope: !862, inlinedAt: !901)
!903 = !DILocation(line: 336, column: 47, scope: !862, inlinedAt: !901)
!904 = !DILocation(line: 335, column: 20, scope: !854, inlinedAt: !901)
!905 = !DILocation(line: 336, column: 5, scope: !869, inlinedAt: !901)
!906 = !DILocation(line: 338, column: 48, scope: !871, inlinedAt: !901)
!907 = !DILocation(line: 336, column: 82, scope: !873, inlinedAt: !901)
!908 = !DILocation(line: 338, column: 58, scope: !871, inlinedAt: !901)
!909 = !DILocation(line: 337, column: 46, scope: !860, inlinedAt: !901)
!910 = !DILocation(line: 996, column: 52, scope: !735, inlinedAt: !739)
!911 = !DILocation(line: 996, column: 9, scope: !735, inlinedAt: !739)
!912 = !DILocation(line: 1000, column: 13, scope: !913, inlinedAt: !739)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1000, column: 13)
!914 = distinct !DILexicalBlock(scope: !735, file: !3, line: 996, column: 59)
!915 = !DILocation(line: 1000, column: 13, scope: !914, inlinedAt: !739)
!916 = !DILocation(line: 1000, column: 13, scope: !917, inlinedAt: !739)
!917 = !DILexicalBlockFile(scope: !913, file: !3, discriminator: 1)
!918 = !DILocation(line: 1001, column: 13, scope: !914, inlinedAt: !739)
!919 = !DILocation(line: 1002, column: 13, scope: !914, inlinedAt: !739)
!920 = !DILocation(line: 1011, column: 9, scope: !921, inlinedAt: !739)
!921 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1011, column: 9)
!922 = !DILocation(line: 1011, column: 9, scope: !735, inlinedAt: !739)
!923 = !DILocation(line: 1011, column: 9, scope: !924, inlinedAt: !739)
!924 = !DILexicalBlockFile(scope: !921, file: !3, discriminator: 1)
!925 = !DILocation(line: 1013, column: 35, scope: !735, inlinedAt: !739)
!926 = !DILocation(line: 1013, column: 9, scope: !735, inlinedAt: !739)
!927 = !DILocation(line: 1015, column: 23, scope: !735, inlinedAt: !739)
!928 = !DILocation(line: 1016, column: 25, scope: !929, inlinedAt: !739)
!929 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1016, column: 13)
!930 = !DILocation(line: 1016, column: 13, scope: !735, inlinedAt: !739)
!931 = !DILocation(line: 1018, column: 27, scope: !932, inlinedAt: !739)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 1016, column: 34)
!933 = !DILocation(line: 1019, column: 18, scope: !934, inlinedAt: !739)
!934 = distinct !DILexicalBlock(scope: !932, file: !3, line: 1019, column: 17)
!935 = !DILocation(line: 1019, column: 17, scope: !932, inlinedAt: !739)
!936 = !DILocation(line: 1020, column: 17, scope: !937, inlinedAt: !739)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 1020, column: 17)
!938 = distinct !DILexicalBlock(scope: !934, file: !3, line: 1019, column: 31)
!939 = !DILocation(line: 1020, column: 17, scope: !938, inlinedAt: !739)
!940 = !DILocation(line: 1020, column: 17, scope: !941, inlinedAt: !739)
!941 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 1)
!942 = !DILocalVariable(name: "size", arg: 3, scope: !943, file: !3, line: 1033, type: !88)
!943 = distinct !DISubprogram(name: "rfcomm_multiplexer_l2cap_packet_handler", scope: !3, file: !3, line: 1033, type: !944, isLocal: true, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!190, !88, !167, !88}
!946 = !{!947, !948, !942, !949, !950, !952, !953, !954}
!947 = !DILocalVariable(name: "channel", arg: 1, scope: !943, file: !3, line: 1033, type: !88)
!948 = !DILocalVariable(name: "packet", arg: 2, scope: !943, file: !3, line: 1033, type: !167)
!949 = !DILocalVariable(name: "multiplexer", scope: !943, file: !3, line: 1037, type: !82)
!950 = !DILocalVariable(name: "length_offset", scope: !951, file: !3, line: 1042, type: !108)
!951 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1041, column: 5)
!952 = !DILocalVariable(name: "credit_offset", scope: !951, file: !3, line: 1043, type: !108)
!953 = !DILocalVariable(name: "payload_offset", scope: !951, file: !3, line: 1044, type: !108)
!954 = !DILocalVariable(name: "frame_dlci", scope: !951, file: !3, line: 1046, type: !108)
!955 = !DILocation(line: 1033, column: 83, scope: !943, inlinedAt: !956)
!956 = distinct !DILocation(line: 1521, column: 19, scope: !740)
!957 = !DILocation(line: 333, column: 69, scope: !854, inlinedAt: !958)
!958 = distinct !DILocation(line: 1037, column: 41, scope: !943, inlinedAt: !956)
!959 = !DILocation(line: 336, column: 33, scope: !862, inlinedAt: !958)
!960 = !DILocation(line: 336, column: 47, scope: !862, inlinedAt: !958)
!961 = !DILocation(line: 335, column: 20, scope: !854, inlinedAt: !958)
!962 = !DILocation(line: 336, column: 5, scope: !869, inlinedAt: !958)
!963 = !DILocation(line: 338, column: 48, scope: !871, inlinedAt: !958)
!964 = !DILocation(line: 336, column: 82, scope: !873, inlinedAt: !958)
!965 = !DILocation(line: 338, column: 58, scope: !871, inlinedAt: !958)
!966 = !DILocation(line: 337, column: 46, scope: !860, inlinedAt: !958)
!967 = !DILocation(line: 1046, column: 25, scope: !951, inlinedAt: !956)
!968 = !DILocation(line: 1047, column: 13, scope: !969, inlinedAt: !956)
!969 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1047, column: 13)
!970 = !DILocation(line: 1047, column: 13, scope: !951, inlinedAt: !956)
!971 = !DILocation(line: 1054, column: 27, scope: !951, inlinedAt: !956)
!972 = !DILocation(line: 1056, column: 9, scope: !951, inlinedAt: !956)
!973 = !DILocation(line: 1059, column: 52, scope: !974, inlinedAt: !956)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1059, column: 17)
!975 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1056, column: 28)
!976 = !DILocation(line: 1059, column: 58, scope: !974, inlinedAt: !956)
!977 = !DILocation(line: 1059, column: 17, scope: !975, inlinedAt: !956)
!978 = !DILocation(line: 1061, column: 52, scope: !979, inlinedAt: !956)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1059, column: 91)
!980 = !DILocation(line: 1061, column: 61, scope: !979, inlinedAt: !956)
!981 = !DILocation(line: 1062, column: 58, scope: !979, inlinedAt: !956)
!982 = !DILocation(line: 1063, column: 17, scope: !979, inlinedAt: !956)
!983 = !DILocation(line: 1068, column: 52, scope: !984, inlinedAt: !956)
!984 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1068, column: 17)
!985 = !DILocation(line: 1068, column: 58, scope: !984, inlinedAt: !956)
!986 = !DILocation(line: 1068, column: 17, scope: !975, inlinedAt: !956)
!987 = !DILocation(line: 1071, column: 17, scope: !988, inlinedAt: !956)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1068, column: 89)
!989 = !DILocation(line: 1072, column: 17, scope: !988, inlinedAt: !956)
!990 = !DILocation(line: 1079, column: 48, scope: !975, inlinedAt: !956)
!991 = !DILocation(line: 1079, column: 54, scope: !975, inlinedAt: !956)
!992 = !DILocation(line: 1080, column: 13, scope: !975, inlinedAt: !956)
!993 = !DILocation(line: 1086, column: 13, scope: !975, inlinedAt: !956)
!994 = !DILocation(line: 1087, column: 13, scope: !975, inlinedAt: !956)
!995 = !DILocation(line: 1053, column: 26, scope: !951, inlinedAt: !956)
!996 = !DILocation(line: 1053, column: 36, scope: !951, inlinedAt: !956)
!997 = !DILocation(line: 1055, column: 28, scope: !951, inlinedAt: !956)
!998 = !DILocation(line: 1090, column: 17, scope: !999, inlinedAt: !956)
!999 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1090, column: 17)
!1000 = !DILocation(line: 1090, column: 40, scope: !999, inlinedAt: !956)
!1001 = !DILocation(line: 1090, column: 17, scope: !975, inlinedAt: !956)
!1002 = !DILocation(line: 1094, column: 17, scope: !1003, inlinedAt: !956)
!1003 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1090, column: 62)
!1004 = !DILocation(line: 1095, column: 17, scope: !1003, inlinedAt: !956)
!1005 = !DILocation(line: 1030, column: 1, scope: !720, inlinedAt: !739)
!1006 = !DILocation(line: 1527, column: 9, scope: !706)
!1007 = !DILocation(line: 1528, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1527, column: 18)
!1009 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1527, column: 9)
!1010 = !DILocation(line: 1529, column: 9, scope: !1008)
!1011 = !DILocation(line: 1533, column: 21, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1533, column: 9)
!1013 = !DILocation(line: 1533, column: 9, scope: !706)
!1014 = !DILocation(line: 1534, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1533, column: 43)
!1016 = !DILocation(line: 1534, column: 25, scope: !1015)
!1017 = !DILocation(line: 1534, column: 9, scope: !1015)
!1018 = !DILocation(line: 1536, column: 9, scope: !1015)
!1019 = !DILocation(line: 333, column: 69, scope: !854, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 1538, column: 19, scope: !706)
!1021 = !DILocation(line: 335, column: 20, scope: !854, inlinedAt: !1020)
!1022 = !DILocation(line: 336, column: 5, scope: !869, inlinedAt: !1020)
!1023 = !DILocation(line: 338, column: 48, scope: !871, inlinedAt: !1020)
!1024 = !DILocation(line: 336, column: 82, scope: !873, inlinedAt: !1020)
!1025 = !DILocation(line: 338, column: 58, scope: !871, inlinedAt: !1020)
!1026 = !DILocation(line: 337, column: 46, scope: !860, inlinedAt: !1020)
!1027 = !DILocation(line: 1539, column: 60, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !3, discriminator: 1)
!1029 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1539, column: 9)
!1030 = !DILocation(line: 1539, column: 66, scope: !1028)
!1031 = !DILocation(line: 1539, column: 9, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !706, file: !3, discriminator: 1)
!1033 = !DILocation(line: 1540, column: 25, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1539, column: 94)
!1035 = !DILocation(line: 1540, column: 9, scope: !1034)
!1036 = !DILocation(line: 1543, column: 9, scope: !1034)
!1037 = !DILocation(line: 1550, column: 31, scope: !717)
!1038 = !DILocation(line: 1552, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !717, file: !3, line: 1552, column: 13)
!1040 = !DILocation(line: 1552, column: 24, scope: !1039)
!1041 = !DILocation(line: 1552, column: 55, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 1)
!1043 = !DILocalVariable(name: "packet", arg: 2, scope: !1044, file: !3, line: 1230, type: !167)
!1044 = distinct !DISubprogram(name: "rfcomm_channel_packet_handler_uih", scope: !3, file: !3, line: 1230, type: !1045, isLocal: true, isDefinition: true, scopeLine: 1231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !82, !167, !88}
!1047 = !{!1048, !1043, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1058}
!1048 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1044, file: !3, line: 1230, type: !82)
!1049 = !DILocalVariable(name: "size", arg: 3, scope: !1044, file: !3, line: 1230, type: !88)
!1050 = !DILocalVariable(name: "frame_dlci", scope: !1044, file: !3, line: 1232, type: !718)
!1051 = !DILocalVariable(name: "length_offset", scope: !1044, file: !3, line: 1233, type: !718)
!1052 = !DILocalVariable(name: "credit_offset", scope: !1044, file: !3, line: 1234, type: !718)
!1053 = !DILocalVariable(name: "payload_offset", scope: !1044, file: !3, line: 1235, type: !718)
!1054 = !DILocalVariable(name: "channel", scope: !1044, file: !3, line: 1237, type: !76)
!1055 = !DILocalVariable(name: "new_credits", scope: !1056, file: !3, line: 1246, type: !88)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 1243, column: 40)
!1057 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1243, column: 9)
!1058 = !DILocalVariable(name: "channel_event", scope: !1056, file: !3, line: 1247, type: !175)
!1059 = !DILocation(line: 1230, column: 88, scope: !1044, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 1553, column: 13, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 1552, column: 90)
!1062 = !DILocation(line: 1230, column: 100, scope: !1044, inlinedAt: !1060)
!1063 = !DILocation(line: 1232, column: 37, scope: !1044, inlinedAt: !1060)
!1064 = !DILocation(line: 1232, column: 14, scope: !1044, inlinedAt: !1060)
!1065 = !DILocation(line: 1233, column: 31, scope: !1044, inlinedAt: !1060)
!1066 = !DILocation(line: 1233, column: 41, scope: !1044, inlinedAt: !1060)
!1067 = !DILocation(line: 1234, column: 62, scope: !1044, inlinedAt: !1060)
!1068 = !DILocation(line: 1235, column: 33, scope: !1044, inlinedAt: !1060)
!1069 = !DILocation(line: 1235, column: 51, scope: !1044, inlinedAt: !1060)
!1070 = !DILocation(line: 1235, column: 49, scope: !1044, inlinedAt: !1060)
!1071 = !DILocation(line: 1235, column: 14, scope: !1044, inlinedAt: !1060)
!1072 = !DILocation(line: 1237, column: 33, scope: !1044, inlinedAt: !1060)
!1073 = !DILocation(line: 1237, column: 23, scope: !1044, inlinedAt: !1060)
!1074 = !DILocation(line: 1238, column: 10, scope: !1075, inlinedAt: !1060)
!1075 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1238, column: 9)
!1076 = !DILocation(line: 1238, column: 9, scope: !1044, inlinedAt: !1060)
!1077 = !DILocation(line: 1243, column: 9, scope: !1044, inlinedAt: !1060)
!1078 = !DILocation(line: 1246, column: 27, scope: !1056, inlinedAt: !1060)
!1079 = !DILocation(line: 1247, column: 9, scope: !1056, inlinedAt: !1060)
!1080 = !DILocation(line: 1247, column: 32, scope: !1056, inlinedAt: !1060)
!1081 = !DILocation(line: 1248, column: 40, scope: !1056, inlinedAt: !1060)
!1082 = !DILocation(line: 1248, column: 57, scope: !1056, inlinedAt: !1060)
!1083 = !DILocation(line: 1253, column: 9, scope: !1056, inlinedAt: !1060)
!1084 = !DILocation(line: 1254, column: 5, scope: !1057, inlinedAt: !1060)
!1085 = !DILocation(line: 1254, column: 5, scope: !1056, inlinedAt: !1060)
!1086 = !DILocation(line: 1257, column: 9, scope: !1087, inlinedAt: !1060)
!1087 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1257, column: 9)
!1088 = !DILocation(line: 1257, column: 14, scope: !1087, inlinedAt: !1060)
!1089 = !DILocation(line: 1257, column: 20, scope: !1087, inlinedAt: !1060)
!1090 = !DILocation(line: 1257, column: 18, scope: !1087, inlinedAt: !1060)
!1091 = !DILocation(line: 1257, column: 9, scope: !1044, inlinedAt: !1060)
!1092 = !DILocation(line: 1262, column: 44, scope: !1093, inlinedAt: !1060)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1262, column: 13)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 1257, column: 36)
!1095 = !DILocation(line: 1262, column: 61, scope: !1093, inlinedAt: !1060)
!1096 = !DILocation(line: 1262, column: 13, scope: !1094, inlinedAt: !1060)
!1097 = !DILocation(line: 1263, column: 60, scope: !1098, inlinedAt: !1060)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1262, column: 66)
!1099 = !DILocation(line: 1264, column: 9, scope: !1098, inlinedAt: !1060)
!1100 = !DILocation(line: 1267, column: 63, scope: !1094, inlinedAt: !1060)
!1101 = !DILocation(line: 1267, column: 92, scope: !1094, inlinedAt: !1060)
!1102 = !DILocation(line: 1267, column: 109, scope: !1094, inlinedAt: !1060)
!1103 = !DILocation(line: 1267, column: 87, scope: !1094, inlinedAt: !1060)
!1104 = !DILocation(line: 1267, column: 9, scope: !1094, inlinedAt: !1060)
!1105 = !DILocation(line: 1270, column: 5, scope: !1094, inlinedAt: !1060)
!1106 = !DILocation(line: 1273, column: 41, scope: !1107, inlinedAt: !1060)
!1107 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1273, column: 9)
!1108 = !DILocation(line: 1273, column: 10, scope: !1107, inlinedAt: !1060)
!1109 = !DILocation(line: 1273, column: 63, scope: !1107, inlinedAt: !1060)
!1110 = !DILocation(line: 1273, column: 97, scope: !1111, inlinedAt: !1060)
!1111 = !DILexicalBlockFile(scope: !1107, file: !3, discriminator: 1)
!1112 = !DILocation(line: 1273, column: 116, scope: !1111, inlinedAt: !1060)
!1113 = !DILocation(line: 1273, column: 114, scope: !1111, inlinedAt: !1060)
!1114 = !DILocation(line: 1273, column: 9, scope: !1115, inlinedAt: !1060)
!1115 = !DILexicalBlockFile(scope: !1044, file: !3, discriminator: 1)
!1116 = !DILocation(line: 1274, column: 63, scope: !1117, inlinedAt: !1060)
!1117 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1273, column: 137)
!1118 = !DILocation(line: 1274, column: 40, scope: !1117, inlinedAt: !1060)
!1119 = !DILocation(line: 1274, column: 61, scope: !1117, inlinedAt: !1060)
!1120 = !DILocation(line: 1275, column: 5, scope: !1117, inlinedAt: !1060)
!1121 = !DILocation(line: 1280, column: 5, scope: !1044, inlinedAt: !1060)
!1122 = !DILocation(line: 1281, column: 1, scope: !1044, inlinedAt: !1060)
!1123 = !DILocation(line: 1554, column: 13, scope: !1061)
!1124 = !DILocalVariable(name: "size", arg: 3, scope: !1125, file: !3, line: 1371, type: !88)
!1125 = distinct !DISubprogram(name: "rfcomm_channel_packet_handler", scope: !3, file: !3, line: 1371, type: !1045, isLocal: true, isDefinition: true, scopeLine: 1372, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1126)
!1126 = !{!1127, !1128, !1124, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1127 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1125, file: !3, line: 1371, type: !82)
!1128 = !DILocalVariable(name: "packet", arg: 2, scope: !1125, file: !3, line: 1371, type: !167)
!1129 = !DILocalVariable(name: "frame_dlci", scope: !1125, file: !3, line: 1375, type: !718)
!1130 = !DILocalVariable(name: "message_dlci", scope: !1125, file: !3, line: 1376, type: !108)
!1131 = !DILocalVariable(name: "message_len", scope: !1125, file: !3, line: 1377, type: !108)
!1132 = !DILocalVariable(name: "credit_offset", scope: !1125, file: !3, line: 1381, type: !718)
!1133 = !DILocalVariable(name: "length_offset", scope: !1125, file: !3, line: 1383, type: !718)
!1134 = !DILocalVariable(name: "payload_offset", scope: !1125, file: !3, line: 1386, type: !718)
!1135 = !DILocalVariable(name: "event", scope: !1125, file: !3, line: 1388, type: !175)
!1136 = !DILocalVariable(name: "event_pn", scope: !1125, file: !3, line: 1389, type: !182)
!1137 = !DILocalVariable(name: "event_rpn", scope: !1125, file: !3, line: 1390, type: !171)
!1138 = !DILocation(line: 1371, column: 97, scope: !1125, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 1559, column: 5, scope: !706)
!1140 = !DILocation(line: 1375, column: 37, scope: !1125, inlinedAt: !1139)
!1141 = !DILocation(line: 1375, column: 14, scope: !1125, inlinedAt: !1139)
!1142 = !DILocation(line: 1383, column: 31, scope: !1125, inlinedAt: !1139)
!1143 = !DILocation(line: 1388, column: 5, scope: !1125, inlinedAt: !1139)
!1144 = !DILocation(line: 1389, column: 5, scope: !1125, inlinedAt: !1139)
!1145 = !DILocation(line: 1390, column: 5, scope: !1125, inlinedAt: !1139)
!1146 = !DILocation(line: 1393, column: 5, scope: !1125, inlinedAt: !1139)
!1147 = !DILocation(line: 1396, column: 15, scope: !1148, inlinedAt: !1139)
!1148 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 1393, column: 24)
!1149 = !DILocation(line: 1396, column: 20, scope: !1148, inlinedAt: !1139)
!1150 = !{!1151, !227, i64 0}
!1151 = !{!"rfcomm_channel_event", !227, i64 0}
!1152 = !DILocation(line: 1388, column: 28, scope: !1125, inlinedAt: !1139)
!1153 = !DILocation(line: 1398, column: 9, scope: !1148, inlinedAt: !1139)
!1154 = !DILocation(line: 1399, column: 9, scope: !1148, inlinedAt: !1139)
!1155 = !DILocation(line: 1402, column: 15, scope: !1148, inlinedAt: !1139)
!1156 = !DILocation(line: 1402, column: 20, scope: !1148, inlinedAt: !1139)
!1157 = !DILocation(line: 1404, column: 9, scope: !1148, inlinedAt: !1139)
!1158 = !DILocation(line: 1405, column: 9, scope: !1148, inlinedAt: !1139)
!1159 = !DILocation(line: 1408, column: 15, scope: !1148, inlinedAt: !1139)
!1160 = !DILocation(line: 1408, column: 20, scope: !1148, inlinedAt: !1139)
!1161 = !DILocation(line: 1409, column: 9, scope: !1148, inlinedAt: !1139)
!1162 = !DILocation(line: 1410, column: 9, scope: !1148, inlinedAt: !1139)
!1163 = !DILocation(line: 1414, column: 15, scope: !1148, inlinedAt: !1139)
!1164 = !DILocation(line: 1414, column: 20, scope: !1148, inlinedAt: !1139)
!1165 = !DILocation(line: 1415, column: 9, scope: !1148, inlinedAt: !1139)
!1166 = !DILocation(line: 1416, column: 9, scope: !1148, inlinedAt: !1139)
!1167 = !DILocation(line: 1383, column: 41, scope: !1125, inlinedAt: !1139)
!1168 = !DILocation(line: 1386, column: 33, scope: !1125, inlinedAt: !1139)
!1169 = !DILocation(line: 1381, column: 62, scope: !1125, inlinedAt: !1139)
!1170 = !DILocation(line: 1386, column: 51, scope: !1125, inlinedAt: !1139)
!1171 = !DILocation(line: 1386, column: 49, scope: !1125, inlinedAt: !1139)
!1172 = !DILocation(line: 1421, column: 31, scope: !1148, inlinedAt: !1139)
!1173 = !DILocation(line: 1423, column: 17, scope: !1148, inlinedAt: !1139)
!1174 = !DILocation(line: 1423, column: 9, scope: !1148, inlinedAt: !1139)
!1175 = !DILocation(line: 1425, column: 50, scope: !1176, inlinedAt: !1139)
!1176 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 1423, column: 41)
!1177 = !DILocation(line: 1425, column: 28, scope: !1176, inlinedAt: !1139)
!1178 = !DILocation(line: 1376, column: 8, scope: !1125, inlinedAt: !1139)
!1179 = !DILocation(line: 1426, column: 28, scope: !1176, inlinedAt: !1139)
!1180 = !DILocation(line: 1426, column: 33, scope: !1176, inlinedAt: !1139)
!1181 = !{!1182, !227, i64 0}
!1182 = !{!"rfcomm_channel_event_pn", !1151, i64 0, !226, i64 4, !227, i64 6, !227, i64 7}
!1183 = !DILocation(line: 1427, column: 55, scope: !1176, inlinedAt: !1139)
!1184 = !DILocation(line: 1427, column: 33, scope: !1176, inlinedAt: !1139)
!1185 = !DILocation(line: 1427, column: 22, scope: !1176, inlinedAt: !1139)
!1186 = !DILocation(line: 1427, column: 31, scope: !1176, inlinedAt: !1139)
!1187 = !{!1182, !227, i64 6}
!1188 = !DILocation(line: 1428, column: 39, scope: !1176, inlinedAt: !1139)
!1189 = !DILocation(line: 1428, column: 22, scope: !1176, inlinedAt: !1139)
!1190 = !DILocation(line: 1428, column: 37, scope: !1176, inlinedAt: !1139)
!1191 = !{!1182, !226, i64 4}
!1192 = !DILocation(line: 1429, column: 63, scope: !1176, inlinedAt: !1139)
!1193 = !DILocation(line: 1429, column: 41, scope: !1176, inlinedAt: !1139)
!1194 = !DILocation(line: 1429, column: 22, scope: !1176, inlinedAt: !1139)
!1195 = !DILocation(line: 1429, column: 39, scope: !1176, inlinedAt: !1139)
!1196 = !{!1182, !227, i64 7}
!1197 = !DILocation(line: 1431, column: 71, scope: !1176, inlinedAt: !1139)
!1198 = !DILocation(line: 1431, column: 13, scope: !1176, inlinedAt: !1139)
!1199 = !DILocation(line: 1432, column: 13, scope: !1176, inlinedAt: !1139)
!1200 = !DILocation(line: 1435, column: 50, scope: !1176, inlinedAt: !1139)
!1201 = !DILocation(line: 1435, column: 28, scope: !1176, inlinedAt: !1139)
!1202 = !DILocation(line: 1436, column: 28, scope: !1176, inlinedAt: !1139)
!1203 = !DILocation(line: 1436, column: 33, scope: !1176, inlinedAt: !1139)
!1204 = !DILocation(line: 1437, column: 55, scope: !1176, inlinedAt: !1139)
!1205 = !DILocation(line: 1437, column: 33, scope: !1176, inlinedAt: !1139)
!1206 = !DILocation(line: 1437, column: 22, scope: !1176, inlinedAt: !1139)
!1207 = !DILocation(line: 1437, column: 31, scope: !1176, inlinedAt: !1139)
!1208 = !DILocation(line: 1438, column: 39, scope: !1176, inlinedAt: !1139)
!1209 = !DILocation(line: 1438, column: 22, scope: !1176, inlinedAt: !1139)
!1210 = !DILocation(line: 1438, column: 37, scope: !1176, inlinedAt: !1139)
!1211 = !DILocation(line: 1439, column: 63, scope: !1176, inlinedAt: !1139)
!1212 = !DILocation(line: 1439, column: 41, scope: !1176, inlinedAt: !1139)
!1213 = !DILocation(line: 1439, column: 22, scope: !1176, inlinedAt: !1139)
!1214 = !DILocation(line: 1439, column: 39, scope: !1176, inlinedAt: !1139)
!1215 = !DILocation(line: 1442, column: 71, scope: !1176, inlinedAt: !1139)
!1216 = !DILocation(line: 1442, column: 13, scope: !1176, inlinedAt: !1139)
!1217 = !DILocation(line: 1443, column: 13, scope: !1176, inlinedAt: !1139)
!1218 = !DILocation(line: 1446, column: 50, scope: !1176, inlinedAt: !1139)
!1219 = !DILocation(line: 1446, column: 28, scope: !1176, inlinedAt: !1139)
!1220 = !DILocation(line: 1446, column: 55, scope: !1176, inlinedAt: !1139)
!1221 = !DILocation(line: 1447, column: 19, scope: !1176, inlinedAt: !1139)
!1222 = !DILocation(line: 1447, column: 24, scope: !1176, inlinedAt: !1139)
!1223 = !DILocation(line: 1449, column: 13, scope: !1176, inlinedAt: !1139)
!1224 = !DILocation(line: 1450, column: 13, scope: !1176, inlinedAt: !1139)
!1225 = !DILocation(line: 1453, column: 50, scope: !1176, inlinedAt: !1139)
!1226 = !DILocation(line: 1453, column: 28, scope: !1176, inlinedAt: !1139)
!1227 = !DILocation(line: 1453, column: 55, scope: !1176, inlinedAt: !1139)
!1228 = !DILocation(line: 1454, column: 19, scope: !1176, inlinedAt: !1139)
!1229 = !DILocation(line: 1454, column: 24, scope: !1176, inlinedAt: !1139)
!1230 = !DILocation(line: 1456, column: 13, scope: !1176, inlinedAt: !1139)
!1231 = !DILocation(line: 1457, column: 13, scope: !1176, inlinedAt: !1139)
!1232 = !DILocation(line: 1421, column: 46, scope: !1148, inlinedAt: !1139)
!1233 = !DILocation(line: 1421, column: 24, scope: !1148, inlinedAt: !1139)
!1234 = !DILocation(line: 1421, column: 51, scope: !1148, inlinedAt: !1139)
!1235 = !DILocation(line: 1460, column: 50, scope: !1176, inlinedAt: !1139)
!1236 = !DILocation(line: 1460, column: 28, scope: !1176, inlinedAt: !1139)
!1237 = !DILocation(line: 1460, column: 55, scope: !1176, inlinedAt: !1139)
!1238 = !DILocation(line: 1461, column: 13, scope: !1176, inlinedAt: !1139)
!1239 = !DILocation(line: 1464, column: 23, scope: !1240, inlinedAt: !1139)
!1240 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 1461, column: 34)
!1241 = !DILocation(line: 1464, column: 28, scope: !1240, inlinedAt: !1139)
!1242 = !DILocation(line: 1465, column: 17, scope: !1240, inlinedAt: !1139)
!1243 = !DILocation(line: 1466, column: 17, scope: !1240, inlinedAt: !1139)
!1244 = !DILocation(line: 1469, column: 33, scope: !1240, inlinedAt: !1139)
!1245 = !DILocation(line: 1469, column: 38, scope: !1240, inlinedAt: !1139)
!1246 = !{!1247, !227, i64 0}
!1247 = !{!"rfcomm_channel_event_rpn", !1151, i64 0, !262, i64 4}
!1248 = !DILocation(line: 1470, column: 66, scope: !1240, inlinedAt: !1139)
!1249 = !DILocation(line: 1470, column: 44, scope: !1240, inlinedAt: !1139)
!1250 = !DILocation(line: 1470, column: 32, scope: !1240, inlinedAt: !1139)
!1251 = !DILocation(line: 1470, column: 42, scope: !1240, inlinedAt: !1139)
!1252 = !{!1247, !227, i64 4}
!1253 = !DILocation(line: 1471, column: 62, scope: !1240, inlinedAt: !1139)
!1254 = !DILocation(line: 1471, column: 40, scope: !1240, inlinedAt: !1139)
!1255 = !DILocation(line: 1471, column: 32, scope: !1240, inlinedAt: !1139)
!1256 = !DILocation(line: 1471, column: 38, scope: !1240, inlinedAt: !1139)
!1257 = !{!1247, !227, i64 5}
!1258 = !DILocation(line: 1472, column: 69, scope: !1240, inlinedAt: !1139)
!1259 = !DILocation(line: 1472, column: 47, scope: !1240, inlinedAt: !1139)
!1260 = !DILocation(line: 1472, column: 32, scope: !1240, inlinedAt: !1139)
!1261 = !DILocation(line: 1472, column: 45, scope: !1240, inlinedAt: !1139)
!1262 = !{!1247, !227, i64 6}
!1263 = !DILocation(line: 1473, column: 61, scope: !1240, inlinedAt: !1139)
!1264 = !DILocation(line: 1473, column: 39, scope: !1240, inlinedAt: !1139)
!1265 = !DILocation(line: 1473, column: 32, scope: !1240, inlinedAt: !1139)
!1266 = !DILocation(line: 1473, column: 37, scope: !1240, inlinedAt: !1139)
!1267 = !{!1247, !227, i64 7}
!1268 = !DILocation(line: 1474, column: 61, scope: !1240, inlinedAt: !1139)
!1269 = !DILocation(line: 1474, column: 39, scope: !1240, inlinedAt: !1139)
!1270 = !DILocation(line: 1474, column: 32, scope: !1240, inlinedAt: !1139)
!1271 = !DILocation(line: 1474, column: 37, scope: !1240, inlinedAt: !1139)
!1272 = !{!1247, !227, i64 8}
!1273 = !DILocation(line: 1475, column: 73, scope: !1240, inlinedAt: !1139)
!1274 = !DILocation(line: 1475, column: 51, scope: !1240, inlinedAt: !1139)
!1275 = !DILocation(line: 1475, column: 32, scope: !1240, inlinedAt: !1139)
!1276 = !DILocation(line: 1475, column: 49, scope: !1240, inlinedAt: !1139)
!1277 = !{!1247, !227, i64 9}
!1278 = !DILocation(line: 1476, column: 73, scope: !1240, inlinedAt: !1139)
!1279 = !DILocation(line: 1476, column: 51, scope: !1240, inlinedAt: !1139)
!1280 = !DILocation(line: 1476, column: 32, scope: !1240, inlinedAt: !1139)
!1281 = !DILocation(line: 1476, column: 49, scope: !1240, inlinedAt: !1139)
!1282 = !{!1247, !227, i64 10}
!1283 = !DILocation(line: 1477, column: 75, scope: !1240, inlinedAt: !1139)
!1284 = !DILocation(line: 1477, column: 17, scope: !1240, inlinedAt: !1139)
!1285 = !DILocation(line: 1478, column: 17, scope: !1240, inlinedAt: !1139)
!1286 = !DILocation(line: 1506, column: 5, scope: !1125, inlinedAt: !1139)
!1287 = !DILocation(line: 1507, column: 1, scope: !1125, inlinedAt: !1139)
!1288 = !DILocation(line: 1560, column: 1, scope: !706)
!1289 = !DILocation(line: 1560, column: 1, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !706, file: !3, discriminator: 2)
!1291 = distinct !DISubprogram(name: "rfcomm_run", scope: !3, file: !3, line: 1900, type: !294, isLocal: true, isDefinition: true, scopeLine: 1901, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1300, !1301}
!1293 = !DILocalVariable(name: "it", scope: !1291, file: !3, line: 1903, type: !68)
!1294 = !DILocalVariable(name: "next", scope: !1291, file: !3, line: 1904, type: !68)
!1295 = !DILocalVariable(name: "multiplexer", scope: !1291, file: !3, line: 1905, type: !82)
!1296 = !DILocalVariable(name: "channel", scope: !1297, file: !3, line: 1926, type: !76)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1922, column: 80)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 1922, column: 5)
!1299 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 1922, column: 5)
!1300 = !DILocalVariable(name: "multiplexer", scope: !1297, file: !3, line: 1927, type: !82)
!1301 = !DILocalVariable(name: "event", scope: !1297, file: !3, line: 1928, type: !175)
!1302 = !DILocation(line: 1907, column: 33, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 1907, column: 5)
!1304 = !DILocation(line: 1907, column: 47, scope: !1303)
!1305 = !{!278, !245, i64 4}
!1306 = !DILocation(line: 1903, column: 20, scope: !1291)
!1307 = !DILocation(line: 1907, column: 5, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1303, file: !3, discriminator: 1)
!1309 = !DILocation(line: 1909, column: 20, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 1907, column: 84)
!1311 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1907, column: 5)
!1312 = !DILocation(line: 1904, column: 20, scope: !1291)
!1313 = !DILocation(line: 1905, column: 27, scope: !1291)
!1314 = !DILocation(line: 1913, column: 75, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1913, column: 13)
!1316 = !DILocation(line: 1913, column: 14, scope: !1315)
!1317 = !DILocation(line: 1913, column: 13, scope: !1310)
!1318 = distinct !{!1318, !1319, !1320}
!1319 = !DILocation(line: 1907, column: 5, scope: !1303)
!1320 = !DILocation(line: 1920, column: 5, scope: !1303)
!1321 = !DILocalVariable(name: "event", arg: 2, scope: !1322, file: !3, line: 1108, type: !1325)
!1322 = distinct !DISubprogram(name: "rfcomm_multiplexer_state_machine", scope: !3, file: !3, line: 1108, type: !1323, isLocal: true, isDefinition: true, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1326)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !82, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "RFCOMM_MULTIPLEXER_EVENT", file: !6, line: 83, baseType: !64)
!1326 = !{!1327, !1321}
!1327 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1322, file: !3, line: 1108, type: !82)
!1328 = !DILocation(line: 1108, column: 108, scope: !1322, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 1919, column: 9, scope: !1310)
!1330 = !DILocation(line: 1112, column: 44, scope: !1331, inlinedAt: !1329)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 1112, column: 9)
!1332 = !DILocation(line: 1112, column: 9, scope: !1331, inlinedAt: !1329)
!1333 = !DILocation(line: 1112, column: 9, scope: !1322, inlinedAt: !1329)
!1334 = !DILocation(line: 1113, column: 9, scope: !1335, inlinedAt: !1329)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 1112, column: 62)
!1336 = !DILocation(line: 1114, column: 61, scope: !1335, inlinedAt: !1329)
!1337 = !DILocation(line: 1115, column: 5, scope: !1335, inlinedAt: !1329)
!1338 = !DILocation(line: 1117, column: 48, scope: !1322, inlinedAt: !1329)
!1339 = !DILocation(line: 1117, column: 5, scope: !1322, inlinedAt: !1329)
!1340 = !DILocation(line: 1122, column: 54, scope: !1341, inlinedAt: !1329)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1119, column: 24)
!1342 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 1117, column: 55)
!1343 = !DILocation(line: 558, column: 65, scope: !1344, inlinedAt: !1351)
!1344 = distinct !DISubprogram(name: "rfcomm_send_sabm", scope: !3, file: !3, line: 556, type: !1345, isLocal: true, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!190, !82, !108}
!1347 = !{!1348, !1349, !1350}
!1348 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1344, file: !3, line: 556, type: !82)
!1349 = !DILocalVariable(name: "dlci", arg: 2, scope: !1344, file: !3, line: 556, type: !108)
!1350 = !DILocalVariable(name: "address", scope: !1344, file: !3, line: 558, type: !108)
!1351 = distinct !DILocation(line: 1123, column: 13, scope: !1341, inlinedAt: !1329)
!1352 = !DILocation(line: 558, column: 74, scope: !1344, inlinedAt: !1351)
!1353 = !DILocation(line: 558, column: 80, scope: !1344, inlinedAt: !1351)
!1354 = !DILocation(line: 558, column: 8, scope: !1344, inlinedAt: !1351)
!1355 = !DILocation(line: 559, column: 12, scope: !1344, inlinedAt: !1351)
!1356 = !DILocation(line: 1124, column: 13, scope: !1341, inlinedAt: !1329)
!1357 = !DILocation(line: 1133, column: 54, scope: !1358, inlinedAt: !1329)
!1358 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1130, column: 24)
!1359 = !DILocation(line: 572, column: 66, scope: !1360, inlinedAt: !1365)
!1360 = distinct !DISubprogram(name: "rfcomm_send_ua", scope: !3, file: !3, line: 570, type: !1345, isLocal: true, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1360, file: !3, line: 570, type: !82)
!1363 = !DILocalVariable(name: "dlci", arg: 2, scope: !1360, file: !3, line: 570, type: !108)
!1364 = !DILocalVariable(name: "address", scope: !1360, file: !3, line: 572, type: !108)
!1365 = distinct !DILocation(line: 1134, column: 13, scope: !1358, inlinedAt: !1329)
!1366 = !DILocation(line: 572, column: 80, scope: !1360, inlinedAt: !1365)
!1367 = !DILocation(line: 572, column: 86, scope: !1360, inlinedAt: !1365)
!1368 = !DILocation(line: 572, column: 8, scope: !1360, inlinedAt: !1365)
!1369 = !DILocation(line: 573, column: 12, scope: !1360, inlinedAt: !1365)
!1370 = !DILocation(line: 1135, column: 13, scope: !1358, inlinedAt: !1329)
!1371 = !DILocation(line: 1136, column: 13, scope: !1358, inlinedAt: !1329)
!1372 = !DILocation(line: 1146, column: 54, scope: !1373, inlinedAt: !1329)
!1373 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1142, column: 24)
!1374 = !DILocation(line: 572, column: 66, scope: !1360, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 1147, column: 13, scope: !1373, inlinedAt: !1329)
!1376 = !DILocation(line: 572, column: 80, scope: !1360, inlinedAt: !1375)
!1377 = !DILocation(line: 572, column: 86, scope: !1360, inlinedAt: !1375)
!1378 = !DILocation(line: 572, column: 8, scope: !1360, inlinedAt: !1375)
!1379 = !DILocation(line: 573, column: 12, scope: !1360, inlinedAt: !1375)
!1380 = !DILocation(line: 1148, column: 13, scope: !1373, inlinedAt: !1329)
!1381 = !DILocation(line: 1150, column: 53, scope: !1382, inlinedAt: !1329)
!1382 = !DILexicalBlockFile(scope: !1383, file: !3, discriminator: 1)
!1383 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1150, column: 17)
!1384 = !DILocation(line: 1922, column: 33, scope: !1299)
!1385 = !DILocation(line: 1922, column: 47, scope: !1299)
!1386 = !{!278, !245, i64 8}
!1387 = !DILocation(line: 1922, column: 5, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1299, file: !3, discriminator: 1)
!1389 = !DILocation(line: 1926, column: 27, scope: !1297)
!1390 = !DILocation(line: 1927, column: 54, scope: !1297)
!1391 = !DILocation(line: 1927, column: 31, scope: !1297)
!1392 = !DILocation(line: 1928, column: 9, scope: !1297)
!1393 = !DILocation(line: 1928, column: 32, scope: !1297)
!1394 = !DILocation(line: 1930, column: 20, scope: !1297)
!1395 = !DILocation(line: 1932, column: 75, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1932, column: 13)
!1397 = !DILocation(line: 1932, column: 14, scope: !1396)
!1398 = !DILocation(line: 1932, column: 13, scope: !1297)
!1399 = !DILocation(line: 1936, column: 9, scope: !1297)
!1400 = !DILocation(line: 1938, column: 5, scope: !1298)
!1401 = distinct !{!1401, !1402, !1403}
!1402 = !DILocation(line: 1922, column: 5, scope: !1299)
!1403 = !DILocation(line: 1938, column: 5, scope: !1299)
!1404 = !DILocation(line: 1940, column: 1, scope: !1291)
!1405 = distinct !DISubprogram(name: "rfcomm_create_channel_internal", scope: !3, file: !3, line: 2081, type: !1406, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !157, !159, !406, !108}
!1408 = !{!1409, !1410, !1411, !1412}
!1409 = !DILocalVariable(name: "connection", arg: 1, scope: !1405, file: !3, line: 2081, type: !157)
!1410 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !1405, file: !3, line: 2081, type: !159)
!1411 = !DILocalVariable(name: "addr", arg: 3, scope: !1405, file: !3, line: 2081, type: !406)
!1412 = !DILocalVariable(name: "server_channel", arg: 4, scope: !1405, file: !3, line: 2081, type: !108)
!1413 = !DILocation(line: 2081, column: 43, scope: !1405)
!1414 = !DILocation(line: 2081, column: 80, scope: !1405)
!1415 = !DILocation(line: 2081, column: 107, scope: !1405)
!1416 = !DILocation(line: 2081, column: 116, scope: !1405)
!1417 = !DILocation(line: 2083, column: 81, scope: !1405)
!1418 = !DILocation(line: 2083, column: 5, scope: !1405)
!1419 = !DILocation(line: 2084, column: 1, scope: !1405)
!1420 = distinct !DISubprogram(name: "rfcomm_disconnect_internal", scope: !3, file: !3, line: 2087, type: !1421, isLocal: false, isDefinition: true, scopeLine: 2088, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !88}
!1423 = !{!1424, !1425}
!1424 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !1420, file: !3, line: 2087, type: !88)
!1425 = !DILocalVariable(name: "channel", scope: !1420, file: !3, line: 2089, type: !76)
!1426 = !DILocation(line: 2087, column: 37, scope: !1420)
!1427 = !DILocation(line: 431, column: 53, scope: !232, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 2091, column: 15, scope: !1420)
!1429 = !DILocation(line: 434, column: 33, scope: !241, inlinedAt: !1428)
!1430 = !DILocation(line: 434, column: 47, scope: !241, inlinedAt: !1428)
!1431 = !DILocation(line: 433, column: 20, scope: !232, inlinedAt: !1428)
!1432 = !DILocation(line: 434, column: 5, scope: !249, inlinedAt: !1428)
!1433 = !DILocation(line: 436, column: 44, scope: !257, inlinedAt: !1428)
!1434 = !DILocation(line: 434, column: 78, scope: !252, inlinedAt: !1428)
!1435 = !DILocation(line: 436, column: 55, scope: !257, inlinedAt: !1428)
!1436 = !DILocation(line: 435, column: 38, scope: !239, inlinedAt: !1428)
!1437 = !DILocation(line: 2093, column: 40, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 2092, column: 18)
!1439 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 2092, column: 9)
!1440 = !DILocation(line: 2093, column: 46, scope: !1438)
!1441 = !DILocation(line: 2094, column: 5, scope: !1438)
!1442 = !DILocation(line: 2097, column: 5, scope: !1420)
!1443 = !DILocation(line: 2098, column: 1, scope: !1420)
!1444 = distinct !DISubprogram(name: "rfcomm_register_service2", scope: !3, file: !3, line: 2102, type: !1445, isLocal: false, isDefinition: true, scopeLine: 2103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !157, !159, !108, !88, !108, !108}
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1448 = !DILocalVariable(name: "connection", arg: 1, scope: !1444, file: !3, line: 2102, type: !157)
!1449 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !1444, file: !3, line: 2102, type: !159)
!1450 = !DILocalVariable(name: "channel", arg: 3, scope: !1444, file: !3, line: 2102, type: !108)
!1451 = !DILocalVariable(name: "max_frame_size", arg: 4, scope: !1444, file: !3, line: 2102, type: !88)
!1452 = !DILocalVariable(name: "incoming_flow_control", arg: 5, scope: !1444, file: !3, line: 2102, type: !108)
!1453 = !DILocalVariable(name: "initial_credits", arg: 6, scope: !1444, file: !3, line: 2102, type: !108)
!1454 = !DILocalVariable(name: "service", scope: !1444, file: !3, line: 2105, type: !147)
!1455 = !DILocation(line: 2102, column: 37, scope: !1444)
!1456 = !DILocation(line: 2102, column: 74, scope: !1444)
!1457 = !DILocation(line: 2102, column: 93, scope: !1444)
!1458 = !DILocation(line: 2102, column: 106, scope: !1444)
!1459 = !DILocation(line: 2102, column: 125, scope: !1444)
!1460 = !DILocation(line: 2102, column: 151, scope: !1444)
!1461 = !DILocalVariable(name: "server_channel", arg: 1, scope: !1462, file: !3, line: 457, type: !108)
!1462 = distinct !DISubprogram(name: "rfcomm_service_for_channel", scope: !3, file: !3, line: 457, type: !1463, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!147, !108}
!1465 = !{!1461, !1466, !1467}
!1466 = !DILocalVariable(name: "it", scope: !1462, file: !3, line: 459, type: !68)
!1467 = !DILocalVariable(name: "service", scope: !1468, file: !3, line: 461, type: !147)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 460, column: 84)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 460, column: 5)
!1470 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 460, column: 5)
!1471 = !DILocation(line: 457, column: 58, scope: !1462, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 2109, column: 15, scope: !1444)
!1473 = !DILocation(line: 460, column: 33, scope: !1470, inlinedAt: !1472)
!1474 = !DILocation(line: 460, column: 47, scope: !1470, inlinedAt: !1472)
!1475 = !DILocation(line: 459, column: 20, scope: !1462, inlinedAt: !1472)
!1476 = !DILocation(line: 460, column: 5, scope: !1477, inlinedAt: !1472)
!1477 = !DILexicalBlockFile(scope: !1470, file: !3, discriminator: 1)
!1478 = !DILocation(line: 462, column: 22, scope: !1479, inlinedAt: !1472)
!1479 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 462, column: 13)
!1480 = !DILocation(line: 460, column: 78, scope: !1481, inlinedAt: !1472)
!1481 = !DILexicalBlockFile(scope: !1469, file: !3, discriminator: 2)
!1482 = distinct !{!1482, !1483, !1484}
!1483 = !DILocation(line: 460, column: 5, scope: !1470)
!1484 = !DILocation(line: 465, column: 5, scope: !1470)
!1485 = !{!669, !227, i64 4}
!1486 = !DILocation(line: 462, column: 37, scope: !1479, inlinedAt: !1472)
!1487 = !DILocation(line: 2115, column: 15, scope: !1444)
!1488 = !DILocation(line: 2116, column: 10, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 2116, column: 9)
!1490 = !DILocation(line: 2116, column: 9, scope: !1444)
!1491 = !DILocation(line: 2121, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 2121, column: 9)
!1493 = !DILocation(line: 2121, column: 9, scope: !1444)
!1494 = !DILocation(line: 2122, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 2122, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 2121, column: 60)
!1497 = !DILocation(line: 2122, column: 9, scope: !1496)
!1498 = !DILocation(line: 2122, column: 9, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1495, file: !3, discriminator: 1)
!1500 = !DILocation(line: 2123, column: 9, scope: !1496)
!1501 = !DILocation(line: 2124, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 2124, column: 9)
!1503 = !DILocation(line: 2124, column: 9, scope: !1496)
!1504 = !DILocation(line: 2124, column: 9, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1502, file: !3, discriminator: 1)
!1506 = !DILocation(line: 2128, column: 14, scope: !1444)
!1507 = !DILocation(line: 2128, column: 29, scope: !1444)
!1508 = !{!669, !245, i64 12}
!1509 = !DILocation(line: 2129, column: 14, scope: !1444)
!1510 = !DILocation(line: 2129, column: 29, scope: !1444)
!1511 = !DILocation(line: 2130, column: 14, scope: !1444)
!1512 = !DILocation(line: 2130, column: 29, scope: !1444)
!1513 = !DILocation(line: 2131, column: 14, scope: !1444)
!1514 = !DILocation(line: 2131, column: 36, scope: !1444)
!1515 = !DILocation(line: 2132, column: 14, scope: !1444)
!1516 = !DILocation(line: 2132, column: 39, scope: !1444)
!1517 = !DILocation(line: 2133, column: 14, scope: !1444)
!1518 = !DILocation(line: 2133, column: 29, scope: !1444)
!1519 = !DILocation(line: 2136, column: 5, scope: !1444)
!1520 = !DILocation(line: 2137, column: 5, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 2137, column: 5)
!1522 = !DILocation(line: 2137, column: 5, scope: !1444)
!1523 = !DILocation(line: 2137, column: 5, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1521, file: !3, discriminator: 1)
!1525 = !DILocation(line: 2140, column: 1, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1444, file: !3, discriminator: 2)
!1527 = distinct !DISubprogram(name: "rfcomm_register_service_internal", scope: !3, file: !3, line: 2143, type: !1528, isLocal: false, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !157, !159, !108, !88}
!1530 = !{!1531, !1532, !1533, !1534}
!1531 = !DILocalVariable(name: "connection", arg: 1, scope: !1527, file: !3, line: 2143, type: !157)
!1532 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !1527, file: !3, line: 2143, type: !159)
!1533 = !DILocalVariable(name: "channel", arg: 3, scope: !1527, file: !3, line: 2143, type: !108)
!1534 = !DILocalVariable(name: "max_frame_size", arg: 4, scope: !1527, file: !3, line: 2143, type: !88)
!1535 = !DILocation(line: 2143, column: 45, scope: !1527)
!1536 = !DILocation(line: 2143, column: 82, scope: !1527)
!1537 = !DILocation(line: 2143, column: 101, scope: !1527)
!1538 = !DILocation(line: 2143, column: 114, scope: !1527)
!1539 = !DILocation(line: 2145, column: 86, scope: !1527)
!1540 = !DILocation(line: 2145, column: 5, scope: !1527)
!1541 = !DILocation(line: 2146, column: 1, scope: !1527)
!1542 = distinct !DISubprogram(name: "rfcomm_accept_connection_internal", scope: !3, file: !3, line: 2149, type: !1421, isLocal: false, isDefinition: true, scopeLine: 2150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1543)
!1543 = !{!1544, !1545}
!1544 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !1542, file: !3, line: 2149, type: !88)
!1545 = !DILocalVariable(name: "channel", scope: !1542, file: !3, line: 2151, type: !76)
!1546 = !DILocation(line: 2149, column: 44, scope: !1542)
!1547 = !DILocation(line: 431, column: 53, scope: !232, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 2153, column: 15, scope: !1542)
!1549 = !DILocation(line: 434, column: 33, scope: !241, inlinedAt: !1548)
!1550 = !DILocation(line: 434, column: 47, scope: !241, inlinedAt: !1548)
!1551 = !DILocation(line: 433, column: 20, scope: !232, inlinedAt: !1548)
!1552 = !DILocation(line: 434, column: 5, scope: !249, inlinedAt: !1548)
!1553 = !DILocation(line: 436, column: 44, scope: !257, inlinedAt: !1548)
!1554 = !DILocation(line: 434, column: 78, scope: !252, inlinedAt: !1548)
!1555 = !DILocation(line: 436, column: 55, scope: !257, inlinedAt: !1548)
!1556 = !DILocation(line: 435, column: 38, scope: !239, inlinedAt: !1548)
!1557 = !DILocation(line: 2157, column: 44, scope: !1542)
!1558 = !DILocation(line: 2157, column: 5, scope: !1542)
!1559 = !DILocation(line: 2159, column: 40, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 2157, column: 51)
!1561 = !DILocation(line: 2159, column: 50, scope: !1560)
!1562 = !DILocation(line: 2160, column: 13, scope: !1560)
!1563 = !DILocation(line: 2163, column: 54, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 2163, column: 13)
!1565 = !DILocation(line: 2163, column: 13, scope: !1560)
!1566 = !DILocation(line: 2164, column: 54, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 2163, column: 92)
!1568 = !DILocation(line: 2165, column: 9, scope: !1567)
!1569 = !DILocation(line: 2172, column: 5, scope: !1542)
!1570 = !DILocation(line: 2173, column: 1, scope: !1542)
!1571 = !DILocation(line: 2173, column: 1, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1542, file: !3, discriminator: 2)
!1573 = distinct !DISubprogram(name: "is_rfcomm_other_conn", scope: !3, file: !3, line: 2259, type: !1574, isLocal: false, isDefinition: true, scopeLine: 2260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1578)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1576, !88}
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 15, baseType: !1577)
!1577 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1578 = !{!1579, !1580, !1581}
!1579 = !DILocalVariable(name: "channel_id", arg: 1, scope: !1573, file: !3, line: 2259, type: !88)
!1580 = !DILocalVariable(name: "it", scope: !1573, file: !3, line: 2261, type: !68)
!1581 = !DILocalVariable(name: "channel", scope: !1582, file: !3, line: 2264, type: !76)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 2263, column: 84)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 2263, column: 5)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 2263, column: 5)
!1585 = !DILocation(line: 2259, column: 30, scope: !1573)
!1586 = !DILocation(line: 2263, column: 33, scope: !1584)
!1587 = !DILocation(line: 2263, column: 47, scope: !1584)
!1588 = !DILocation(line: 2261, column: 20, scope: !1573)
!1589 = !DILocation(line: 2263, column: 5, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1584, file: !3, discriminator: 1)
!1591 = !DILocation(line: 2265, column: 44, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 2265, column: 13)
!1593 = !DILocation(line: 2263, column: 78, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1583, file: !3, discriminator: 2)
!1595 = distinct !{!1595, !1596, !1597}
!1596 = !DILocation(line: 2263, column: 5, scope: !1584)
!1597 = !DILocation(line: 2268, column: 5, scope: !1584)
!1598 = !DILocation(line: 2265, column: 55, scope: !1592)
!1599 = !DILocation(line: 2271, column: 1, scope: !1573)
!1600 = distinct !DISubprogram(name: "l2cap_disconnect_rfcomm", scope: !3, file: !3, line: 2273, type: !294, isLocal: false, isDefinition: true, scopeLine: 2274, isOptimized: true, unit: !2, variables: !1601)
!1601 = !{!1602}
!1602 = !DILocalVariable(name: "rfcomm_local_cid", scope: !1600, file: !3, line: 2275, type: !88)
!1603 = !DILocation(line: 2276, column: 24, scope: !1600)
!1604 = !DILocation(line: 2275, column: 9, scope: !1600)
!1605 = !DILocation(line: 2277, column: 26, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 2277, column: 9)
!1607 = !DILocation(line: 2277, column: 9, scope: !1600)
!1608 = !DILocation(line: 2278, column: 9, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 2277, column: 32)
!1610 = !DILocation(line: 2279, column: 5, scope: !1609)
!1611 = !DILocation(line: 2280, column: 1, scope: !1600)
!1612 = distinct !DISubprogram(name: "BQB_send_rfcomm_disc", scope: !3, file: !3, line: 2282, type: !294, isLocal: false, isDefinition: true, scopeLine: 2283, isOptimized: true, unit: !2, variables: !1613)
!1613 = !{!1614, !1615}
!1614 = !DILocalVariable(name: "it", scope: !1612, file: !3, line: 2285, type: !68)
!1615 = !DILocalVariable(name: "channel", scope: !1616, file: !3, line: 2287, type: !76)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 2286, column: 84)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 2286, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 2286, column: 5)
!1619 = !DILocation(line: 2286, column: 33, scope: !1618)
!1620 = !DILocation(line: 2286, column: 47, scope: !1618)
!1621 = !DILocation(line: 2285, column: 20, scope: !1612)
!1622 = !DILocation(line: 2286, column: 5, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1618, file: !3, discriminator: 1)
!1624 = !DILocation(line: 2289, column: 42, scope: !1616)
!1625 = !DILocation(line: 2183, column: 33, scope: !1626, inlinedAt: !1638)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 2183, column: 5)
!1627 = distinct !DISubprogram(name: "rfcomm_close_connection", scope: !3, file: !3, line: 2178, type: !1628, isLocal: true, isDefinition: true, scopeLine: 2179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !157}
!1630 = !{!1631, !1632, !1633, !1636}
!1631 = !DILocalVariable(name: "connection", arg: 1, scope: !1627, file: !3, line: 2178, type: !157)
!1632 = !DILocalVariable(name: "it", scope: !1627, file: !3, line: 2180, type: !68)
!1633 = !DILocalVariable(name: "channel", scope: !1634, file: !3, line: 2184, type: !76)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 2183, column: 84)
!1635 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 2183, column: 5)
!1636 = !DILocalVariable(name: "service", scope: !1637, file: !3, line: 2194, type: !147)
!1637 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 2193, column: 22)
!1638 = distinct !DILocation(line: 2289, column: 9, scope: !1616)
!1639 = !DILocation(line: 2178, column: 43, scope: !1627, inlinedAt: !1638)
!1640 = !DILocation(line: 2180, column: 20, scope: !1627, inlinedAt: !1638)
!1641 = !DILocation(line: 2183, column: 5, scope: !1642, inlinedAt: !1638)
!1642 = !DILexicalBlockFile(scope: !1626, file: !3, discriminator: 1)
!1643 = !DILocation(line: 2185, column: 22, scope: !1644, inlinedAt: !1638)
!1644 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 2185, column: 13)
!1645 = !DILocation(line: 2185, column: 33, scope: !1644, inlinedAt: !1638)
!1646 = !DILocation(line: 2185, column: 13, scope: !1634, inlinedAt: !1638)
!1647 = !DILocation(line: 2188, column: 18, scope: !1634, inlinedAt: !1638)
!1648 = !DILocation(line: 2188, column: 40, scope: !1634, inlinedAt: !1638)
!1649 = !DILocation(line: 2188, column: 46, scope: !1634, inlinedAt: !1638)
!1650 = !DILocation(line: 2189, column: 5, scope: !1635, inlinedAt: !1638)
!1651 = !DILocation(line: 2183, column: 78, scope: !1652, inlinedAt: !1638)
!1652 = !DILexicalBlockFile(scope: !1635, file: !3, discriminator: 2)
!1653 = distinct !{!1653, !1654, !1655}
!1654 = !DILocation(line: 2183, column: 5, scope: !1626)
!1655 = !DILocation(line: 2189, column: 5, scope: !1626)
!1656 = !DILocation(line: 2192, column: 43, scope: !1627, inlinedAt: !1638)
!1657 = !DILocation(line: 2193, column: 16, scope: !1658, inlinedAt: !1638)
!1658 = !DILexicalBlockFile(scope: !1627, file: !3, discriminator: 1)
!1659 = !DILocation(line: 2193, column: 5, scope: !1658, inlinedAt: !1638)
!1660 = !DILocation(line: 2192, column: 10, scope: !1627, inlinedAt: !1638)
!1661 = !DILocation(line: 2195, column: 22, scope: !1662, inlinedAt: !1638)
!1662 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 2195, column: 13)
!1663 = !DILocation(line: 2195, column: 33, scope: !1662, inlinedAt: !1638)
!1664 = !DILocation(line: 2195, column: 13, scope: !1637, inlinedAt: !1638)
!1665 = distinct !{!1665, !1666, !1667}
!1666 = !DILocation(line: 2193, column: 5, scope: !1627)
!1667 = !DILocation(line: 2201, column: 5, scope: !1627)
!1668 = !DILocation(line: 2196, column: 34, scope: !1669, inlinedAt: !1638)
!1669 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 2195, column: 48)
!1670 = !DILocation(line: 2196, column: 22, scope: !1669, inlinedAt: !1638)
!1671 = !DILocation(line: 2197, column: 48, scope: !1669, inlinedAt: !1638)
!1672 = !DILocation(line: 2197, column: 13, scope: !1669, inlinedAt: !1638)
!1673 = !DILocation(line: 2204, column: 5, scope: !1627, inlinedAt: !1638)
!1674 = !DILocation(line: 2286, column: 78, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1617, file: !3, discriminator: 2)
!1676 = distinct !{!1676, !1677, !1678}
!1677 = !DILocation(line: 2286, column: 5, scope: !1618)
!1678 = !DILocation(line: 2290, column: 5, scope: !1618)
!1679 = !DILocation(line: 2291, column: 1, scope: !1612)
!1680 = distinct !DISubprogram(name: "BQB_close_rfcomm_session", scope: !3, file: !3, line: 2293, type: !294, isLocal: false, isDefinition: true, scopeLine: 2294, isOptimized: true, unit: !2, variables: !1681)
!1681 = !{!1682, !1683}
!1682 = !DILocalVariable(name: "it", scope: !1680, file: !3, line: 2298, type: !68)
!1683 = !DILocalVariable(name: "channel", scope: !1684, file: !3, line: 2300, type: !76)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 2299, column: 84)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 2299, column: 5)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 2299, column: 5)
!1687 = !DILocation(line: 2299, column: 33, scope: !1686)
!1688 = !DILocation(line: 2299, column: 47, scope: !1686)
!1689 = !DILocation(line: 2298, column: 20, scope: !1680)
!1690 = !DILocation(line: 2299, column: 5, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1686, file: !3, discriminator: 1)
!1692 = !DILocation(line: 2301, column: 35, scope: !1684)
!1693 = !DILocation(line: 565, column: 65, scope: !1694, inlinedAt: !1699)
!1694 = distinct !DISubprogram(name: "rfcomm_send_disc", scope: !3, file: !3, line: 563, type: !1345, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1694, file: !3, line: 563, type: !82)
!1697 = !DILocalVariable(name: "dlci", arg: 2, scope: !1694, file: !3, line: 563, type: !108)
!1698 = !DILocalVariable(name: "address", scope: !1694, file: !3, line: 565, type: !108)
!1699 = distinct !DILocation(line: 2301, column: 9, scope: !1684)
!1700 = !DILocation(line: 565, column: 74, scope: !1694, inlinedAt: !1699)
!1701 = !DILocation(line: 565, column: 80, scope: !1694, inlinedAt: !1699)
!1702 = !DILocation(line: 565, column: 8, scope: !1694, inlinedAt: !1699)
!1703 = !DILocation(line: 566, column: 12, scope: !1694, inlinedAt: !1699)
!1704 = !DILocation(line: 2299, column: 78, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1685, file: !3, discriminator: 2)
!1706 = distinct !{!1706, !1707, !1708}
!1707 = !DILocation(line: 2299, column: 5, scope: !1686)
!1708 = !DILocation(line: 2302, column: 5, scope: !1686)
!1709 = !DILocation(line: 2303, column: 1, scope: !1680)
!1710 = !DILocation(line: 565, column: 65, scope: !1694)
!1711 = !DILocation(line: 565, column: 74, scope: !1694)
!1712 = !DILocation(line: 565, column: 88, scope: !1694)
!1713 = !DILocation(line: 565, column: 80, scope: !1694)
!1714 = !DILocation(line: 565, column: 8, scope: !1694)
!1715 = !DILocation(line: 566, column: 12, scope: !1694)
!1716 = distinct !DISubprogram(name: "l2cap_send_rfcomm_data", scope: !3, file: !3, line: 2304, type: !294, isLocal: false, isDefinition: true, scopeLine: 2305, isOptimized: true, unit: !2, variables: !1717)
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "rfcomm_local_cid", scope: !1716, file: !3, line: 2306, type: !88)
!1719 = !DILocation(line: 2308, column: 24, scope: !1716)
!1720 = !DILocation(line: 2306, column: 9, scope: !1716)
!1721 = !DILocation(line: 2309, column: 26, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 2309, column: 9)
!1723 = !DILocation(line: 2309, column: 9, scope: !1716)
!1724 = !DILocation(line: 2310, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 2309, column: 32)
!1726 = !DILocation(line: 2311, column: 5, scope: !1725)
!1727 = !DILocation(line: 2312, column: 1, scope: !1716)
!1728 = distinct !DISubprogram(name: "rfc_channel_core_data_for_send", scope: !3, file: !3, line: 2366, type: !721, isLocal: false, isDefinition: true, scopeLine: 2367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735}
!1730 = !DILocalVariable(name: "packet", arg: 1, scope: !1728, file: !3, line: 2366, type: !167)
!1731 = !DILocalVariable(name: "size", arg: 2, scope: !1728, file: !3, line: 2366, type: !88)
!1732 = !DILocalVariable(name: "len", scope: !1728, file: !3, line: 2368, type: !108)
!1733 = !DILocalVariable(name: "channel_cnt", scope: !1728, file: !3, line: 2369, type: !108)
!1734 = !DILocalVariable(name: "it", scope: !1728, file: !3, line: 2373, type: !68)
!1735 = !DILocalVariable(name: "channel", scope: !1736, file: !3, line: 2376, type: !76)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 2375, column: 84)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 2375, column: 5)
!1738 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 2375, column: 5)
!1739 = !DILocation(line: 2366, column: 40, scope: !1728)
!1740 = !DILocation(line: 2366, column: 52, scope: !1728)
!1741 = !DILocation(line: 2369, column: 8, scope: !1728)
!1742 = !DILocation(line: 2368, column: 8, scope: !1728)
!1743 = !DILocation(line: 2375, column: 33, scope: !1738)
!1744 = !DILocation(line: 2375, column: 47, scope: !1738)
!1745 = !DILocation(line: 2373, column: 20, scope: !1728)
!1746 = !DILocation(line: 2375, column: 5, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1738, file: !3, discriminator: 1)
!1748 = !DILocation(line: 2378, column: 51, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 2378, column: 13)
!1750 = !DILocation(line: 2378, column: 73, scope: !1749)
!1751 = !DILocation(line: 2378, column: 13, scope: !1749)
!1752 = !DILocation(line: 2378, column: 13, scope: !1736)
!1753 = !DILocation(line: 2381, column: 80, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1755, file: !3, discriminator: 1)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 2381, column: 20)
!1756 = !DILocation(line: 2381, column: 20, scope: !1754)
!1757 = !DILocation(line: 2381, column: 20, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1749, file: !3, discriminator: 1)
!1759 = !DILocation(line: 2384, column: 80, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1761, file: !3, discriminator: 1)
!1761 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 2384, column: 20)
!1762 = !DILocation(line: 2384, column: 20, scope: !1760)
!1763 = !DILocation(line: 2387, column: 9, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 2384, column: 93)
!1765 = !{!259, !227, i64 8}
!1766 = !DILocation(line: 2391, column: 9, scope: !1736)
!1767 = !DILocation(line: 2391, column: 71, scope: !1736)
!1768 = !DILocation(line: 2392, column: 30, scope: !1736)
!1769 = !DILocation(line: 2392, column: 28, scope: !1736)
!1770 = !DILocation(line: 2392, column: 42, scope: !1736)
!1771 = !DILocation(line: 2392, column: 17, scope: !1736)
!1772 = !DILocation(line: 2392, column: 9, scope: !1736)
!1773 = !DILocation(line: 2393, column: 20, scope: !1736)
!1774 = !DILocation(line: 2375, column: 78, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1737, file: !3, discriminator: 2)
!1776 = distinct !{!1776, !1777, !1778}
!1777 = !DILocation(line: 2375, column: 5, scope: !1738)
!1778 = !DILocation(line: 2394, column: 5, scope: !1738)
!1779 = !DILocation(line: 2396, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 2396, column: 9)
!1781 = !DILocation(line: 2396, column: 9, scope: !1728)
!1782 = !DILocation(line: 2397, column: 19, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 2396, column: 22)
!1784 = !DILocation(line: 2402, column: 19, scope: !1728)
!1785 = !DILocation(line: 2402, column: 17, scope: !1728)
!1786 = !DILocation(line: 2402, column: 31, scope: !1728)
!1787 = !DILocation(line: 2402, column: 5, scope: !1728)
!1788 = !DILocation(line: 2403, column: 1, scope: !1728)
!1789 = distinct !DISubprogram(name: "rfc_channel_core_data_for_set", scope: !3, file: !3, line: 2406, type: !1790, isLocal: false, isDefinition: true, scopeLine: 2407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !167, !88}
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1793 = !DILocalVariable(name: "packet", arg: 1, scope: !1789, file: !3, line: 2406, type: !167)
!1794 = !DILocalVariable(name: "size", arg: 2, scope: !1789, file: !3, line: 2406, type: !88)
!1795 = !DILocalVariable(name: "i", scope: !1789, file: !3, line: 2408, type: !108)
!1796 = !DILocalVariable(name: "len", scope: !1789, file: !3, line: 2409, type: !108)
!1797 = !DILocalVariable(name: "channel_cnt", scope: !1789, file: !3, line: 2410, type: !108)
!1798 = !DILocalVariable(name: "channel_data", scope: !1789, file: !3, line: 2411, type: !168)
!1799 = !DILocalVariable(name: "ptr", scope: !1789, file: !3, line: 2412, type: !167)
!1800 = !DILocalVariable(name: "it", scope: !1789, file: !3, line: 2420, type: !68)
!1801 = !DILocalVariable(name: "multiplexer", scope: !1802, file: !3, line: 2425, type: !82)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 2424, column: 92)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 2424, column: 9)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 2424, column: 9)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 2421, column: 37)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 2421, column: 5)
!1807 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 2421, column: 5)
!1808 = !DILocation(line: 2406, column: 40, scope: !1789)
!1809 = !DILocation(line: 2406, column: 52, scope: !1789)
!1810 = !DILocation(line: 2410, column: 8, scope: !1789)
!1811 = !DILocation(line: 2412, column: 22, scope: !1789)
!1812 = !DILocation(line: 2412, column: 9, scope: !1789)
!1813 = !DILocation(line: 2414, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 2414, column: 9)
!1815 = !DILocation(line: 2414, column: 19, scope: !1814)
!1816 = !DILocation(line: 2414, column: 9, scope: !1789)
!1817 = !DILocation(line: 2421, column: 17, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1806, file: !3, discriminator: 1)
!1819 = !DILocation(line: 2422, column: 60, scope: !1805)
!1820 = !DILocation(line: 2422, column: 56, scope: !1805)
!1821 = !DILocation(line: 2424, column: 37, scope: !1804)
!1822 = !DILocation(line: 2424, column: 51, scope: !1804)
!1823 = !DILocation(line: 2420, column: 20, scope: !1789)
!1824 = !DILocation(line: 2424, column: 9, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1804, file: !3, discriminator: 1)
!1826 = !DILocation(line: 2425, column: 50, scope: !1802)
!1827 = !DILocation(line: 2425, column: 35, scope: !1802)
!1828 = !DILocation(line: 2427, column: 52, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 2427, column: 17)
!1830 = !DILocation(line: 2427, column: 18, scope: !1829)
!1831 = !DILocation(line: 2427, column: 17, scope: !1802)
!1832 = !DILocation(line: 2428, column: 99, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 2427, column: 104)
!1834 = !{!261, !227, i64 0}
!1835 = !DILocalVariable(name: "size", arg: 3, scope: !1836, file: !3, line: 2317, type: !88)
!1836 = distinct !DISubprogram(name: "rfcomm_monitor_channel_create", scope: !3, file: !3, line: 2317, type: !1837, isLocal: true, isDefinition: true, scopeLine: 2318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !82, !167, !88, !108}
!1839 = !{!1840, !1841, !1835, !1842, !1843, !1844}
!1840 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !1836, file: !3, line: 2317, type: !82)
!1841 = !DILocalVariable(name: "packet", arg: 2, scope: !1836, file: !3, line: 2317, type: !167)
!1842 = !DILocalVariable(name: "channel_type", arg: 4, scope: !1836, file: !3, line: 2317, type: !108)
!1843 = !DILocalVariable(name: "service", scope: !1836, file: !3, line: 2321, type: !147)
!1844 = !DILocalVariable(name: "channel", scope: !1836, file: !3, line: 2322, type: !76)
!1845 = !DILocation(line: 2317, column: 96, scope: !1836, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 2428, column: 17, scope: !1833)
!1847 = !DILocation(line: 2321, column: 23, scope: !1836, inlinedAt: !1846)
!1848 = !DILocation(line: 2322, column: 23, scope: !1836, inlinedAt: !1846)
!1849 = !DILocation(line: 2324, column: 44, scope: !1850, inlinedAt: !1846)
!1850 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 2324, column: 9)
!1851 = !DILocation(line: 2324, column: 9, scope: !1850, inlinedAt: !1846)
!1852 = !DILocation(line: 2324, column: 9, scope: !1836, inlinedAt: !1846)
!1853 = !DILocation(line: 2326, column: 98, scope: !1854, inlinedAt: !1846)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 2324, column: 62)
!1855 = !DILocation(line: 457, column: 58, scope: !1462, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 2326, column: 19, scope: !1854, inlinedAt: !1846)
!1857 = !DILocation(line: 460, column: 33, scope: !1470, inlinedAt: !1856)
!1858 = !DILocation(line: 460, column: 47, scope: !1470, inlinedAt: !1856)
!1859 = !DILocation(line: 459, column: 20, scope: !1462, inlinedAt: !1856)
!1860 = !DILocation(line: 460, column: 5, scope: !1477, inlinedAt: !1856)
!1861 = !DILocation(line: 462, column: 22, scope: !1479, inlinedAt: !1856)
!1862 = !DILocation(line: 460, column: 78, scope: !1481, inlinedAt: !1856)
!1863 = !DILocation(line: 462, column: 37, scope: !1479, inlinedAt: !1856)
!1864 = !DILocation(line: 2328, column: 13, scope: !1865, inlinedAt: !1846)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 2328, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 2327, column: 23)
!1867 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 2327, column: 13)
!1868 = !DILocation(line: 2328, column: 13, scope: !1866, inlinedAt: !1846)
!1869 = !DILocation(line: 2328, column: 13, scope: !1870, inlinedAt: !1846)
!1870 = !DILexicalBlockFile(scope: !1865, file: !3, discriminator: 1)
!1871 = !DILocation(line: 461, column: 38, scope: !1468, inlinedAt: !1856)
!1872 = !DILocation(line: 2332, column: 19, scope: !1854, inlinedAt: !1846)
!1873 = !DILocation(line: 2333, column: 14, scope: !1874, inlinedAt: !1846)
!1874 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 2333, column: 13)
!1875 = !DILocation(line: 2333, column: 13, scope: !1854, inlinedAt: !1846)
!1876 = !DILocation(line: 2334, column: 13, scope: !1877, inlinedAt: !1846)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 2334, column: 13)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 2333, column: 23)
!1879 = !DILocation(line: 2334, column: 13, scope: !1878, inlinedAt: !1846)
!1880 = !DILocation(line: 2334, column: 13, scope: !1881, inlinedAt: !1846)
!1881 = !DILexicalBlockFile(scope: !1877, file: !3, discriminator: 1)
!1882 = !DILocation(line: 2338, column: 40, scope: !1854, inlinedAt: !1846)
!1883 = !DILocation(line: 2338, column: 18, scope: !1854, inlinedAt: !1846)
!1884 = !DILocation(line: 2338, column: 29, scope: !1854, inlinedAt: !1846)
!1885 = !DILocation(line: 2339, column: 5, scope: !1854, inlinedAt: !1846)
!1886 = !DILocation(line: 457, column: 58, scope: !1462, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 2340, column: 19, scope: !1888, inlinedAt: !1846)
!1888 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 2339, column: 12)
!1889 = !DILocation(line: 460, column: 33, scope: !1470, inlinedAt: !1887)
!1890 = !DILocation(line: 460, column: 47, scope: !1470, inlinedAt: !1887)
!1891 = !DILocation(line: 459, column: 20, scope: !1462, inlinedAt: !1887)
!1892 = !DILocation(line: 460, column: 5, scope: !1477, inlinedAt: !1887)
!1893 = !DILocation(line: 462, column: 22, scope: !1479, inlinedAt: !1887)
!1894 = !DILocation(line: 460, column: 78, scope: !1481, inlinedAt: !1887)
!1895 = !DILocation(line: 462, column: 37, scope: !1479, inlinedAt: !1887)
!1896 = !DILocation(line: 2345, column: 19, scope: !1888, inlinedAt: !1846)
!1897 = !DILocation(line: 2346, column: 14, scope: !1898, inlinedAt: !1846)
!1898 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 2346, column: 13)
!1899 = !DILocation(line: 2346, column: 13, scope: !1888, inlinedAt: !1846)
!1900 = !DILocation(line: 2347, column: 13, scope: !1901, inlinedAt: !1846)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 2347, column: 13)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 2346, column: 23)
!1903 = !DILocation(line: 2347, column: 13, scope: !1902, inlinedAt: !1846)
!1904 = !DILocation(line: 2347, column: 13, scope: !1905, inlinedAt: !1846)
!1905 = !DILexicalBlockFile(scope: !1901, file: !3, discriminator: 1)
!1906 = !DILocation(line: 2350, column: 18, scope: !1888, inlinedAt: !1846)
!1907 = !DILocation(line: 2350, column: 29, scope: !1888, inlinedAt: !1846)
!1908 = !DILocation(line: 2351, column: 44, scope: !1888, inlinedAt: !1846)
!1909 = !DILocation(line: 2351, column: 18, scope: !1888, inlinedAt: !1846)
!1910 = !DILocation(line: 2351, column: 33, scope: !1888, inlinedAt: !1846)
!1911 = !DILocation(line: 2354, column: 5, scope: !1912, inlinedAt: !1846)
!1912 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 2354, column: 5)
!1913 = !DILocation(line: 2354, column: 5, scope: !1836, inlinedAt: !1846)
!1914 = !DILocation(line: 2354, column: 5, scope: !1915, inlinedAt: !1846)
!1915 = !DILexicalBlockFile(scope: !1912, file: !3, discriminator: 1)
!1916 = !DILocation(line: 2355, column: 5, scope: !1836, inlinedAt: !1846)
!1917 = !DILocation(line: 2357, column: 40, scope: !1918, inlinedAt: !1846)
!1918 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 2357, column: 9)
!1919 = !DILocation(line: 2357, column: 9, scope: !1918, inlinedAt: !1846)
!1920 = !DILocation(line: 2357, column: 9, scope: !1836, inlinedAt: !1846)
!1921 = !DILocation(line: 2358, column: 9, scope: !1922, inlinedAt: !1846)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 2358, column: 9)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 2357, column: 58)
!1924 = !DILocation(line: 2358, column: 9, scope: !1923, inlinedAt: !1846)
!1925 = !DILocation(line: 2358, column: 9, scope: !1926, inlinedAt: !1846)
!1926 = !DILexicalBlockFile(scope: !1922, file: !3, discriminator: 1)
!1927 = !DILocation(line: 2359, column: 9, scope: !1923, inlinedAt: !1846)
!1928 = !DILocation(line: 2360, column: 5, scope: !1923, inlinedAt: !1846)
!1929 = !DILocation(line: 2424, column: 86, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1803, file: !3, discriminator: 2)
!1931 = distinct !{!1931, !1932, !1933}
!1932 = !DILocation(line: 2424, column: 9, scope: !1804)
!1933 = !DILocation(line: 2431, column: 9, scope: !1804)
!1934 = !DILocation(line: 2421, column: 33, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1806, file: !3, discriminator: 2)
!1936 = !DILocation(line: 2408, column: 8, scope: !1789)
!1937 = !DILocation(line: 2421, column: 21, scope: !1818)
!1938 = !DILocation(line: 2421, column: 19, scope: !1818)
!1939 = !DILocation(line: 2421, column: 5, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1807, file: !3, discriminator: 1)
!1941 = distinct !{!1941, !1942, !1943}
!1942 = !DILocation(line: 2421, column: 5, scope: !1807)
!1943 = !DILocation(line: 2432, column: 5, scope: !1807)
!1944 = !DILocation(line: 2433, column: 1, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1789, file: !3, discriminator: 2)
!1946 = distinct !DISubprogram(name: "rfc_multiplexer_core_data_for_send", scope: !3, file: !3, line: 2435, type: !721, isLocal: false, isDefinition: true, scopeLine: 2436, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953}
!1948 = !DILocalVariable(name: "packet", arg: 1, scope: !1946, file: !3, line: 2435, type: !167)
!1949 = !DILocalVariable(name: "size", arg: 2, scope: !1946, file: !3, line: 2435, type: !88)
!1950 = !DILocalVariable(name: "len", scope: !1946, file: !3, line: 2437, type: !108)
!1951 = !DILocalVariable(name: "channel_cnt", scope: !1946, file: !3, line: 2438, type: !108)
!1952 = !DILocalVariable(name: "it", scope: !1946, file: !3, line: 2442, type: !68)
!1953 = !DILocalVariable(name: "multiplexer", scope: !1954, file: !3, line: 2445, type: !82)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 2444, column: 88)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 2444, column: 5)
!1956 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 2444, column: 5)
!1957 = !DILocation(line: 2435, column: 44, scope: !1946)
!1958 = !DILocation(line: 2435, column: 56, scope: !1946)
!1959 = !DILocation(line: 2438, column: 8, scope: !1946)
!1960 = !DILocation(line: 2437, column: 8, scope: !1946)
!1961 = !DILocation(line: 2444, column: 33, scope: !1956)
!1962 = !DILocation(line: 2444, column: 47, scope: !1956)
!1963 = !DILocation(line: 2442, column: 20, scope: !1946)
!1964 = !DILocation(line: 2444, column: 5, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1956, file: !3, discriminator: 1)
!1966 = !DILocation(line: 2445, column: 46, scope: !1954)
!1967 = !DILocation(line: 2445, column: 31, scope: !1954)
!1968 = !DILocation(line: 2446, column: 30, scope: !1954)
!1969 = !DILocation(line: 2446, column: 28, scope: !1954)
!1970 = !DILocation(line: 2446, column: 42, scope: !1954)
!1971 = !DILocation(line: 2446, column: 17, scope: !1954)
!1972 = !DILocation(line: 2446, column: 9, scope: !1954)
!1973 = !DILocation(line: 2447, column: 20, scope: !1954)
!1974 = !DILocation(line: 2444, column: 82, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 2)
!1976 = distinct !{!1976, !1977, !1978}
!1977 = !DILocation(line: 2444, column: 5, scope: !1956)
!1978 = !DILocation(line: 2448, column: 5, scope: !1956)
!1979 = !DILocation(line: 2450, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 2450, column: 9)
!1981 = !DILocation(line: 2450, column: 9, scope: !1946)
!1982 = !DILocation(line: 2451, column: 19, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 2450, column: 22)
!1984 = !DILocation(line: 2456, column: 19, scope: !1946)
!1985 = !DILocation(line: 2456, column: 17, scope: !1946)
!1986 = !DILocation(line: 2456, column: 31, scope: !1946)
!1987 = !DILocation(line: 2456, column: 5, scope: !1946)
!1988 = !DILocation(line: 2457, column: 1, scope: !1946)
!1989 = distinct !DISubprogram(name: "rfc_multiplexer_core_data_for_set", scope: !3, file: !3, line: 2459, type: !1790, isLocal: false, isDefinition: true, scopeLine: 2460, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999}
!1991 = !DILocalVariable(name: "packet", arg: 1, scope: !1989, file: !3, line: 2459, type: !167)
!1992 = !DILocalVariable(name: "size", arg: 2, scope: !1989, file: !3, line: 2459, type: !88)
!1993 = !DILocalVariable(name: "i", scope: !1989, file: !3, line: 2461, type: !108)
!1994 = !DILocalVariable(name: "len", scope: !1989, file: !3, line: 2462, type: !108)
!1995 = !DILocalVariable(name: "channel_cnt", scope: !1989, file: !3, line: 2463, type: !108)
!1996 = !DILocalVariable(name: "multiplexer_data", scope: !1989, file: !3, line: 2464, type: !169)
!1997 = !DILocalVariable(name: "ptr", scope: !1989, file: !3, line: 2465, type: !167)
!1998 = !DILocalVariable(name: "it", scope: !1989, file: !3, line: 2473, type: !68)
!1999 = !DILocalVariable(name: "multiplexer", scope: !2000, file: !3, line: 2478, type: !82)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 2477, column: 92)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 2477, column: 9)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 2477, column: 9)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 2474, column: 37)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 2474, column: 5)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 2474, column: 5)
!2006 = !DILocation(line: 2459, column: 44, scope: !1989)
!2007 = !DILocation(line: 2459, column: 56, scope: !1989)
!2008 = !DILocation(line: 2463, column: 8, scope: !1989)
!2009 = !DILocation(line: 2465, column: 22, scope: !1989)
!2010 = !DILocation(line: 2465, column: 9, scope: !1989)
!2011 = !DILocation(line: 2467, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 2467, column: 9)
!2013 = !DILocation(line: 2467, column: 19, scope: !2012)
!2014 = !DILocation(line: 2467, column: 9, scope: !1989)
!2015 = !DILocation(line: 2461, column: 8, scope: !1989)
!2016 = !DILocation(line: 2474, column: 17, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2004, file: !3, discriminator: 1)
!2018 = !DILocation(line: 2475, column: 64, scope: !2003)
!2019 = !DILocation(line: 2475, column: 60, scope: !2003)
!2020 = !DILocation(line: 2473, column: 20, scope: !1989)
!2021 = !DILocation(line: 2477, column: 9, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2002, file: !3, discriminator: 1)
!2023 = !DILocation(line: 2478, column: 50, scope: !2000)
!2024 = !DILocation(line: 2478, column: 35, scope: !2000)
!2025 = !DILocation(line: 2480, column: 56, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 2480, column: 17)
!2027 = !DILocation(line: 2480, column: 18, scope: !2026)
!2028 = !DILocation(line: 2480, column: 17, scope: !2000)
!2029 = !DILocation(line: 2481, column: 17, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 2480, column: 108)
!2031 = !DILocation(line: 2483, column: 13, scope: !2030)
!2032 = !DILocation(line: 2477, column: 86, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2001, file: !3, discriminator: 2)
!2034 = distinct !{!2034, !2035, !2036}
!2035 = !DILocation(line: 2477, column: 9, scope: !2002)
!2036 = !DILocation(line: 2484, column: 9, scope: !2002)
!2037 = !DILocation(line: 2474, column: 33, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2004, file: !3, discriminator: 2)
!2039 = !DILocation(line: 2474, column: 21, scope: !2017)
!2040 = !DILocation(line: 2474, column: 19, scope: !2017)
!2041 = !DILocation(line: 2474, column: 5, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2005, file: !3, discriminator: 1)
!2043 = distinct !{!2043, !2044, !2045}
!2044 = !DILocation(line: 2474, column: 5, scope: !2005)
!2045 = !DILocation(line: 2485, column: 5, scope: !2005)
!2046 = !DILocation(line: 2486, column: 1, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !1989, file: !3, discriminator: 2)
!2048 = distinct !DISubprogram(name: "rfcomm_send_packet_for_multiplexer", scope: !3, file: !3, line: 476, type: !2049, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!190, !82, !108, !108, !108, !167, !88}
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2052 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2048, file: !3, line: 476, type: !82)
!2053 = !DILocalVariable(name: "address", arg: 2, scope: !2048, file: !3, line: 476, type: !108)
!2054 = !DILocalVariable(name: "control", arg: 3, scope: !2048, file: !3, line: 476, type: !108)
!2055 = !DILocalVariable(name: "credits", arg: 4, scope: !2048, file: !3, line: 476, type: !108)
!2056 = !DILocalVariable(name: "data", arg: 5, scope: !2048, file: !3, line: 476, type: !167)
!2057 = !DILocalVariable(name: "len", arg: 6, scope: !2048, file: !3, line: 476, type: !88)
!2058 = !DILocalVariable(name: "acl_buffer", scope: !2048, file: !3, line: 478, type: !167)
!2059 = !DILocalVariable(name: "rfcomm_out_buffer", scope: !2048, file: !3, line: 479, type: !167)
!2060 = !DILocalVariable(name: "pos", scope: !2048, file: !3, line: 480, type: !88)
!2061 = !DILocalVariable(name: "crc_fields", scope: !2048, file: !3, line: 481, type: !108)
!2062 = !DILocalVariable(name: "credits_taken", scope: !2048, file: !3, line: 482, type: !190)
!2063 = !DILocalVariable(name: "err", scope: !2048, file: !3, line: 483, type: !190)
!2064 = !DILocation(line: 476, column: 71, scope: !2048)
!2065 = !DILocation(line: 476, column: 87, scope: !2048)
!2066 = !DILocation(line: 476, column: 99, scope: !2048)
!2067 = !DILocation(line: 476, column: 111, scope: !2048)
!2068 = !DILocation(line: 476, column: 124, scope: !2048)
!2069 = !DILocation(line: 476, column: 134, scope: !2048)
!2070 = !DILocation(line: 478, column: 9, scope: !2048)
!2071 = !DILocation(line: 479, column: 9, scope: !2048)
!2072 = !DILocation(line: 480, column: 9, scope: !2048)
!2073 = !DILocation(line: 481, column: 8, scope: !2048)
!2074 = !DILocation(line: 482, column: 9, scope: !2048)
!2075 = !DILocation(line: 485, column: 71, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 485, column: 9)
!2077 = !DILocation(line: 485, column: 10, scope: !2076)
!2078 = !DILocation(line: 485, column: 9, scope: !2048)
!2079 = !DILocation(line: 488, column: 53, scope: !2048)
!2080 = !DILocation(line: 488, column: 81, scope: !2048)
!2081 = !DILocation(line: 488, column: 18, scope: !2048)
!2082 = !DILocation(line: 489, column: 36, scope: !2048)
!2083 = !DILocation(line: 491, column: 30, scope: !2048)
!2084 = !DILocation(line: 492, column: 5, scope: !2048)
!2085 = !DILocation(line: 492, column: 30, scope: !2048)
!2086 = !DILocation(line: 495, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 495, column: 9)
!2088 = !DILocation(line: 495, column: 9, scope: !2048)
!2089 = !DILocation(line: 496, column: 36, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 495, column: 20)
!2091 = !DILocation(line: 497, column: 5, scope: !2090)
!2092 = !DILocation(line: 498, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 497, column: 12)
!2094 = !DILocation(line: 498, column: 34, scope: !2093)
!2095 = !DILocation(line: 499, column: 36, scope: !2093)
!2096 = !DILocation(line: 504, column: 17, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 504, column: 9)
!2098 = !DILocation(line: 504, column: 9, scope: !2048)
!2099 = !DILocation(line: 505, column: 30, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 504, column: 38)
!2101 = !DILocation(line: 505, column: 9, scope: !2100)
!2102 = !DILocation(line: 505, column: 34, scope: !2100)
!2103 = !DILocation(line: 506, column: 5, scope: !2100)
!2104 = !DILocation(line: 509, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 509, column: 9)
!2106 = !DILocation(line: 509, column: 9, scope: !2048)
!2107 = !DILocation(line: 510, column: 17, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 509, column: 14)
!2109 = !DILocation(line: 510, column: 9, scope: !2108)
!2110 = !DILocation(line: 511, column: 13, scope: !2108)
!2111 = !DILocation(line: 512, column: 5, scope: !2108)
!2112 = !DILocation(line: 515, column: 18, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 515, column: 9)
!2114 = !DILocation(line: 515, column: 26, scope: !2113)
!2115 = !DILocation(line: 518, column: 62, scope: !2048)
!2116 = !DILocation(line: 518, column: 33, scope: !2048)
!2117 = !DILocation(line: 518, column: 26, scope: !2048)
!2118 = !DILocation(line: 518, column: 5, scope: !2048)
!2119 = !DILocation(line: 518, column: 30, scope: !2048)
!2120 = !DILocation(line: 521, column: 44, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 521, column: 9)
!2122 = !DILocation(line: 521, column: 9, scope: !2121)
!2123 = !DILocation(line: 521, column: 9, scope: !2048)
!2124 = !DILocation(line: 523, column: 57, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 521, column: 59)
!2126 = !DILocation(line: 524, column: 5, scope: !2125)
!2127 = !DILocation(line: 528, column: 78, scope: !2048)
!2128 = !DILocation(line: 528, column: 11, scope: !2048)
!2129 = !DILocation(line: 483, column: 9, scope: !2048)
!2130 = !DILocation(line: 530, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 530, column: 9)
!2132 = !DILocation(line: 530, column: 9, scope: !2048)
!2133 = !DILocation(line: 532, column: 58, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 530, column: 14)
!2135 = !DILocation(line: 533, column: 5, scope: !2134)
!2136 = !DILocation(line: 535, column: 1, scope: !2048)
!2137 = distinct !DISubprogram(name: "rfcomm_emit_channel_opened", scope: !3, file: !3, line: 152, type: !2138, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !76, !108}
!2140 = !{!2141, !2142, !2143, !2147}
!2141 = !DILocalVariable(name: "channel", arg: 1, scope: !2137, file: !3, line: 152, type: !76)
!2142 = !DILocalVariable(name: "status", arg: 2, scope: !2137, file: !3, line: 152, type: !108)
!2143 = !DILocalVariable(name: "event", scope: !2137, file: !3, line: 154, type: !2144)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 16)
!2147 = !DILocalVariable(name: "pos", scope: !2137, file: !3, line: 155, type: !108)
!2148 = !DILocation(line: 152, column: 60, scope: !2137)
!2149 = !DILocation(line: 152, column: 72, scope: !2137)
!2150 = !DILocation(line: 154, column: 5, scope: !2137)
!2151 = !DILocation(line: 154, column: 8, scope: !2137)
!2152 = !DILocation(line: 155, column: 8, scope: !2137)
!2153 = !DILocation(line: 160, column: 36, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 160, column: 9)
!2155 = !DILocation(line: 164, column: 5, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 160, column: 47)
!2157 = !DILocation(line: 162, column: 22, scope: !2156)
!2158 = !DILocation(line: 167, column: 5, scope: !2137)
!2159 = !DILocation(line: 167, column: 18, scope: !2137)
!2160 = !DILocation(line: 168, column: 5, scope: !2137)
!2161 = !DILocation(line: 168, column: 18, scope: !2137)
!2162 = !DILocation(line: 169, column: 19, scope: !2137)
!2163 = !DILocation(line: 169, column: 40, scope: !2137)
!2164 = !DILocation(line: 169, column: 31, scope: !2137)
!2165 = !DILocation(line: 169, column: 5, scope: !2137)
!2166 = !DILocation(line: 171, column: 39, scope: !2137)
!2167 = !DILocation(line: 171, column: 74, scope: !2137)
!2168 = !DILocation(line: 171, column: 5, scope: !2137)
!2169 = !DILocation(line: 173, column: 51, scope: !2137)
!2170 = !DILocation(line: 173, column: 56, scope: !2137)
!2171 = !DILocation(line: 173, column: 5, scope: !2137)
!2172 = !DILocation(line: 173, column: 18, scope: !2137)
!2173 = !DILocation(line: 174, column: 60, scope: !2137)
!2174 = !DILocation(line: 174, column: 5, scope: !2137)
!2175 = !DILocation(line: 176, column: 38, scope: !2137)
!2176 = !DILocation(line: 176, column: 5, scope: !2137)
!2177 = !DILocation(line: 178, column: 5, scope: !2137)
!2178 = !DILocation(line: 181, column: 1, scope: !2137)
!2179 = distinct !DISubprogram(name: "rfcomm_multiplexer_free", scope: !3, file: !3, line: 726, type: !557, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2180)
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2179, file: !3, line: 726, type: !82)
!2182 = !DILocation(line: 726, column: 61, scope: !2179)
!2183 = !DILocation(line: 728, column: 5, scope: !2179)
!2184 = !DILocation(line: 729, column: 44, scope: !2179)
!2185 = !DILocation(line: 729, column: 5, scope: !2179)
!2186 = !DILocation(line: 730, column: 1, scope: !2179)
!2187 = distinct !DISubprogram(name: "rfcomm_hand_out_credits", scope: !3, file: !3, line: 1166, type: !294, isLocal: true, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2188)
!2188 = !{!2189, !2190}
!2189 = !DILocalVariable(name: "it", scope: !2187, file: !3, line: 1168, type: !68)
!2190 = !DILocalVariable(name: "channel", scope: !2191, file: !3, line: 1170, type: !76)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 1169, column: 84)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1169, column: 5)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1169, column: 5)
!2194 = !DILocalVariable(name: "event", scope: !2195, file: !3, line: 243, type: !2199)
!2195 = distinct !DISubprogram(name: "rfcomm_emit_credits", scope: !3, file: !3, line: 241, type: !2138, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2196)
!2196 = !{!2197, !2198, !2194}
!2197 = !DILocalVariable(name: "channel", arg: 1, scope: !2195, file: !3, line: 241, type: !76)
!2198 = !DILocalVariable(name: "credits", arg: 2, scope: !2195, file: !3, line: 241, type: !108)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 40, elements: !2200)
!2200 = !{!2201}
!2201 = !DISubrange(count: 5)
!2202 = !DILocation(line: 243, column: 8, scope: !2195, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 1190, column: 9, scope: !2191)
!2204 = !DILocation(line: 1169, column: 33, scope: !2193)
!2205 = !DILocation(line: 1169, column: 47, scope: !2193)
!2206 = !DILocation(line: 1168, column: 20, scope: !2187)
!2207 = !DILocation(line: 1169, column: 5, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2193, file: !3, discriminator: 1)
!2209 = !DILocation(line: 1170, column: 37, scope: !2191)
!2210 = !DILocation(line: 1170, column: 27, scope: !2191)
!2211 = !DILocation(line: 1171, column: 22, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1171, column: 13)
!2213 = !DILocation(line: 1171, column: 44, scope: !2212)
!2214 = !DILocation(line: 1171, column: 50, scope: !2212)
!2215 = !DILocation(line: 1171, column: 13, scope: !2191)
!2216 = !DILocation(line: 1179, column: 45, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1179, column: 13)
!2218 = !DILocation(line: 1179, column: 14, scope: !2217)
!2219 = !DILocation(line: 1179, column: 13, scope: !2191)
!2220 = !DILocation(line: 1183, column: 23, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1183, column: 13)
!2222 = !DILocation(line: 1183, column: 58, scope: !2221)
!2223 = !DILocation(line: 1183, column: 14, scope: !2221)
!2224 = !DILocation(line: 1183, column: 13, scope: !2191)
!2225 = !DILocation(line: 1189, column: 40, scope: !2191)
!2226 = !DILocation(line: 1189, column: 56, scope: !2191)
!2227 = !DILocation(line: 241, column: 65, scope: !2195, inlinedAt: !2203)
!2228 = !DILocation(line: 243, column: 5, scope: !2195, inlinedAt: !2203)
!2229 = !DILocation(line: 246, column: 14, scope: !2195, inlinedAt: !2203)
!2230 = !DILocation(line: 247, column: 14, scope: !2195, inlinedAt: !2203)
!2231 = !DILocation(line: 248, column: 58, scope: !2195, inlinedAt: !2203)
!2232 = !DILocation(line: 248, column: 5, scope: !2195, inlinedAt: !2203)
!2233 = !DILocation(line: 249, column: 14, scope: !2195, inlinedAt: !2203)
!2234 = !DILocation(line: 250, column: 5, scope: !2195, inlinedAt: !2203)
!2235 = !DILocation(line: 253, column: 1, scope: !2195, inlinedAt: !2203)
!2236 = !DILocation(line: 1191, column: 5, scope: !2192)
!2237 = !DILocation(line: 1169, column: 78, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2192, file: !3, discriminator: 2)
!2239 = distinct !{!2239, !2240, !2241}
!2240 = !DILocation(line: 1169, column: 5, scope: !2193)
!2241 = !DILocation(line: 1191, column: 5, scope: !2193)
!2242 = !DILocation(line: 1192, column: 1, scope: !2187)
!2243 = distinct !DISubprogram(name: "rfcomm_multiplexer_finalize", scope: !3, file: !3, line: 733, type: !557, isLocal: true, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2244)
!2244 = !{!2245, !2246, !2247, !2249}
!2245 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2243, file: !3, line: 733, type: !82)
!2246 = !DILocalVariable(name: "it", scope: !2243, file: !3, line: 736, type: !68)
!2247 = !DILocalVariable(name: "channel", scope: !2248, file: !3, line: 743, type: !76)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 742, column: 22)
!2249 = !DILocalVariable(name: "l2cap_cid", scope: !2250, file: !3, line: 762, type: !88)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 760, column: 5)
!2251 = !DILocation(line: 733, column: 65, scope: !2243)
!2252 = !DILocation(line: 741, column: 29, scope: !2243)
!2253 = !DILocation(line: 741, column: 43, scope: !2243)
!2254 = !DILocation(line: 736, column: 20, scope: !2243)
!2255 = !DILocation(line: 742, column: 16, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2243, file: !3, discriminator: 1)
!2257 = !DILocation(line: 742, column: 5, scope: !2256)
!2258 = !DILocation(line: 741, column: 10, scope: !2243)
!2259 = !DILocation(line: 743, column: 37, scope: !2248)
!2260 = !DILocation(line: 743, column: 27, scope: !2248)
!2261 = !DILocation(line: 744, column: 22, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 744, column: 13)
!2263 = !DILocation(line: 744, column: 34, scope: !2262)
!2264 = !DILocation(line: 744, column: 13, scope: !2248)
!2265 = distinct !{!2265, !2266, !2267}
!2266 = !DILocation(line: 742, column: 5, scope: !2243)
!2267 = !DILocation(line: 758, column: 5, scope: !2243)
!2268 = !DILocation(line: 746, column: 26, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 746, column: 17)
!2270 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 744, column: 50)
!2271 = !DILocation(line: 746, column: 48, scope: !2269)
!2272 = !DILocation(line: 746, column: 54, scope: !2269)
!2273 = !DILocation(line: 746, column: 17, scope: !2270)
!2274 = !DILocation(line: 747, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 746, column: 78)
!2276 = !DILocation(line: 748, column: 13, scope: !2275)
!2277 = !DILocation(line: 749, column: 17, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 748, column: 20)
!2279 = !DILocation(line: 752, column: 28, scope: !2270)
!2280 = !DILocation(line: 752, column: 34, scope: !2270)
!2281 = !DILocation(line: 752, column: 22, scope: !2270)
!2282 = !DILocation(line: 754, column: 48, scope: !2270)
!2283 = !DILocation(line: 754, column: 13, scope: !2270)
!2284 = !DILocation(line: 762, column: 60, scope: !2250)
!2285 = !DILocation(line: 762, column: 13, scope: !2250)
!2286 = !DILocation(line: 765, column: 9, scope: !2250)
!2287 = !DILocation(line: 768, column: 9, scope: !2250)
!2288 = !DILocation(line: 770, column: 1, scope: !2243)
!2289 = distinct !DISubprogram(name: "rfcomm_channel_dispatch", scope: !3, file: !3, line: 117, type: !2290, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !76, !108, !167, !88}
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DILocalVariable(name: "channel", arg: 1, scope: !2289, file: !3, line: 117, type: !76)
!2294 = !DILocalVariable(name: "packet_type", arg: 2, scope: !2289, file: !3, line: 117, type: !108)
!2295 = !DILocalVariable(name: "data", arg: 3, scope: !2289, file: !3, line: 117, type: !167)
!2296 = !DILocalVariable(name: "size", arg: 4, scope: !2289, file: !3, line: 117, type: !88)
!2297 = !DILocation(line: 117, column: 57, scope: !2289)
!2298 = !DILocation(line: 117, column: 69, scope: !2289)
!2299 = !DILocation(line: 117, column: 86, scope: !2289)
!2300 = !DILocation(line: 117, column: 96, scope: !2289)
!2301 = !DILocation(line: 119, column: 18, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 119, column: 9)
!2303 = !DILocation(line: 119, column: 9, scope: !2302)
!2304 = !DILocation(line: 119, column: 9, scope: !2289)
!2305 = !DILocation(line: 120, column: 61, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 119, column: 34)
!2307 = !DILocation(line: 120, column: 96, scope: !2306)
!2308 = !DILocation(line: 120, column: 9, scope: !2306)
!2309 = !DILocation(line: 121, column: 5, scope: !2306)
!2310 = !DILocation(line: 122, column: 11, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 121, column: 12)
!2312 = !DILocation(line: 122, column: 25, scope: !2311)
!2313 = !DILocation(line: 122, column: 54, scope: !2311)
!2314 = !DILocation(line: 122, column: 110, scope: !2311)
!2315 = !DILocation(line: 122, column: 9, scope: !2311)
!2316 = !DILocation(line: 124, column: 1, scope: !2289)
!2317 = distinct !DISubprogram(name: "rfcomm_emit_channel_closed", scope: !3, file: !3, line: 227, type: !2318, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !76}
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "channel", arg: 1, scope: !2317, file: !3, line: 227, type: !76)
!2322 = !DILocalVariable(name: "event", scope: !2317, file: !3, line: 229, type: !2323)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 32, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 4)
!2326 = !DILocation(line: 227, column: 60, scope: !2317)
!2327 = !DILocation(line: 229, column: 5, scope: !2317)
!2328 = !DILocation(line: 229, column: 8, scope: !2317)
!2329 = !DILocation(line: 232, column: 14, scope: !2317)
!2330 = !DILocation(line: 233, column: 5, scope: !2317)
!2331 = !DILocation(line: 233, column: 14, scope: !2317)
!2332 = !DILocation(line: 234, column: 58, scope: !2317)
!2333 = !DILocation(line: 234, column: 5, scope: !2317)
!2334 = !DILocation(line: 235, column: 5, scope: !2317)
!2335 = !DILocation(line: 238, column: 1, scope: !2317)
!2336 = distinct !DISubprogram(name: "rfcomm_multiplexer_opened", scope: !3, file: !3, line: 817, type: !557, isLocal: true, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2337)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2336, file: !3, line: 817, type: !82)
!2339 = !DILocalVariable(name: "it", scope: !2336, file: !3, line: 820, type: !68)
!2340 = !DILocalVariable(name: "event", scope: !2336, file: !3, line: 821, type: !175)
!2341 = !DILocalVariable(name: "channel", scope: !2342, file: !3, line: 830, type: !76)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 829, column: 84)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 829, column: 5)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 829, column: 5)
!2345 = !DILocation(line: 817, column: 63, scope: !2336)
!2346 = !DILocation(line: 821, column: 5, scope: !2336)
!2347 = !DILocation(line: 821, column: 28, scope: !2336)
!2348 = !DILocation(line: 822, column: 5, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 822, column: 5)
!2350 = !DILocation(line: 822, column: 5, scope: !2336)
!2351 = !DILocation(line: 822, column: 5, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2349, file: !3, discriminator: 1)
!2353 = !DILocation(line: 823, column: 40, scope: !2336)
!2354 = !DILocation(line: 823, column: 46, scope: !2336)
!2355 = !DILocation(line: 829, column: 33, scope: !2344)
!2356 = !DILocation(line: 829, column: 47, scope: !2344)
!2357 = !DILocation(line: 820, column: 20, scope: !2336)
!2358 = !DILocation(line: 829, column: 5, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2344, file: !3, discriminator: 1)
!2360 = !DILocation(line: 830, column: 27, scope: !2342)
!2361 = !DILocation(line: 831, column: 22, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 831, column: 13)
!2363 = !DILocation(line: 831, column: 34, scope: !2362)
!2364 = !DILocation(line: 831, column: 13, scope: !2342)
!2365 = !DILocation(line: 830, column: 38, scope: !2342)
!2366 = !DILocation(line: 834, column: 9, scope: !2342)
!2367 = !DILocation(line: 835, column: 5, scope: !2343)
!2368 = !DILocation(line: 829, column: 78, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2343, file: !3, discriminator: 2)
!2370 = distinct !{!2370, !2371, !2372}
!2371 = !DILocation(line: 829, column: 5, scope: !2344)
!2372 = !DILocation(line: 835, column: 5, scope: !2344)
!2373 = !DILocation(line: 837, column: 5, scope: !2336)
!2374 = !DILocation(line: 839, column: 1, scope: !2336)
!2375 = distinct !DISubprogram(name: "rfcomm_channel_state_machine", scope: !3, file: !3, line: 1583, type: !2376, isLocal: true, isDefinition: true, scopeLine: 1584, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !76, !189}
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2386, !2389, !2396, !2400}
!2379 = !DILocalVariable(name: "channel", arg: 1, scope: !2375, file: !3, line: 1583, type: !76)
!2380 = !DILocalVariable(name: "event", arg: 2, scope: !2375, file: !3, line: 1583, type: !189)
!2381 = !DILocalVariable(name: "multiplexer", scope: !2375, file: !3, line: 1588, type: !82)
!2382 = !DILocalVariable(name: "event_pn", scope: !2375, file: !3, line: 1589, type: !181)
!2383 = !DILocalVariable(name: "event_rpn", scope: !2384, file: !3, line: 1616, type: !170)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1614, column: 45)
!2385 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1614, column: 9)
!2386 = !DILocalVariable(name: "rpn_data", scope: !2387, file: !3, line: 1625, type: !135)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1623, column: 45)
!2388 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1623, column: 9)
!2389 = !DILocalVariable(name: "new_credits", scope: !2390, file: !3, line: 1801, type: !108)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 1800, column: 74)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1800, column: 21)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1796, column: 99)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1796, column: 17)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1772, column: 30)
!2395 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1650, column: 51)
!2396 = !DILocalVariable(name: "new_credits", scope: !2397, file: !3, line: 1832, type: !108)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1831, column: 70)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1831, column: 17)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1820, column: 30)
!2400 = !DILocalVariable(name: "event", scope: !2401, file: !3, line: 1840, type: !2402)
!2401 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1838, column: 35)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 8, elements: !2403)
!2403 = !{!2404}
!2404 = !DISubrange(count: 1)
!2405 = !DILocalVariable(name: "payload", scope: !2406, file: !3, line: 587, type: !2323)
!2406 = distinct !DISubprogram(name: "rfcomm_send_uih_msc_cmd", scope: !3, file: !3, line: 584, type: !2407, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!190, !82, !108, !108}
!2409 = !{!2410, !2411, !2412, !2413, !2405, !2414}
!2410 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2406, file: !3, line: 584, type: !82)
!2411 = !DILocalVariable(name: "dlci", arg: 2, scope: !2406, file: !3, line: 584, type: !108)
!2412 = !DILocalVariable(name: "signals", arg: 3, scope: !2406, file: !3, line: 584, type: !108)
!2413 = !DILocalVariable(name: "address", scope: !2406, file: !3, line: 586, type: !108)
!2414 = !DILocalVariable(name: "pos", scope: !2406, file: !3, line: 588, type: !108)
!2415 = !DILocation(line: 587, column: 8, scope: !2406, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 1786, column: 17, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 1782, column: 99)
!2418 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1782, column: 17)
!2419 = !DILocalVariable(name: "payload", scope: !2420, file: !3, line: 612, type: !2429)
!2420 = distinct !DISubprogram(name: "rfcomm_send_uih_pn_command", scope: !3, file: !3, line: 610, type: !2421, isLocal: true, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!190, !82, !108, !88}
!2423 = !{!2424, !2425, !2426, !2419, !2427, !2428}
!2424 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2420, file: !3, line: 610, type: !82)
!2425 = !DILocalVariable(name: "dlci", arg: 2, scope: !2420, file: !3, line: 610, type: !108)
!2426 = !DILocalVariable(name: "max_frame_size", arg: 3, scope: !2420, file: !3, line: 610, type: !88)
!2427 = !DILocalVariable(name: "address", scope: !2420, file: !3, line: 613, type: !108)
!2428 = !DILocalVariable(name: "pos", scope: !2420, file: !3, line: 614, type: !108)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 80, elements: !2430)
!2430 = !{!2431}
!2431 = !DISubrange(count: 10)
!2432 = !DILocation(line: 612, column: 8, scope: !2420, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 1724, column: 13, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1720, column: 30)
!2435 = !DILocalVariable(name: "payload", scope: !2436, file: !3, line: 633, type: !2429)
!2436 = distinct !DISubprogram(name: "rfcomm_send_uih_pn_response", scope: !3, file: !3, line: 630, type: !2437, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!190, !82, !108, !108, !88}
!2439 = !{!2440, !2441, !2442, !2443, !2435, !2444, !2445}
!2440 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2436, file: !3, line: 630, type: !82)
!2441 = !DILocalVariable(name: "dlci", arg: 2, scope: !2436, file: !3, line: 630, type: !108)
!2442 = !DILocalVariable(name: "priority", arg: 3, scope: !2436, file: !3, line: 631, type: !108)
!2443 = !DILocalVariable(name: "max_frame_size", arg: 4, scope: !2436, file: !3, line: 631, type: !88)
!2444 = !DILocalVariable(name: "address", scope: !2436, file: !3, line: 634, type: !108)
!2445 = !DILocalVariable(name: "pos", scope: !2436, file: !3, line: 635, type: !108)
!2446 = !DILocation(line: 633, column: 8, scope: !2436, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 1690, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1687, column: 98)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1687, column: 17)
!2450 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1672, column: 30)
!2451 = !DILocalVariable(name: "payload", scope: !2452, file: !3, line: 652, type: !2429)
!2452 = distinct !DISubprogram(name: "rfcomm_send_uih_rpn_rsp", scope: !3, file: !3, line: 650, type: !2453, isLocal: true, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2456)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!190, !82, !108, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!2456 = !{!2457, !2458, !2459, !2451, !2460, !2461}
!2457 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2452, file: !3, line: 650, type: !82)
!2458 = !DILocalVariable(name: "dlci", arg: 2, scope: !2452, file: !3, line: 650, type: !108)
!2459 = !DILocalVariable(name: "rpn_data", arg: 3, scope: !2452, file: !3, line: 650, type: !2455)
!2460 = !DILocalVariable(name: "address", scope: !2452, file: !3, line: 653, type: !108)
!2461 = !DILocalVariable(name: "pos", scope: !2452, file: !3, line: 654, type: !108)
!2462 = !DILocation(line: 652, column: 8, scope: !2452, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 1643, column: 13, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1640, column: 95)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1640, column: 13)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1639, column: 46)
!2467 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1639, column: 9)
!2468 = !DILocation(line: 1583, column: 62, scope: !2375)
!2469 = !DILocation(line: 1583, column: 95, scope: !2375)
!2470 = !DILocation(line: 1588, column: 50, scope: !2375)
!2471 = !DILocation(line: 1588, column: 27, scope: !2375)
!2472 = !DILocation(line: 1591, column: 16, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1591, column: 9)
!2474 = !DILocation(line: 1591, column: 9, scope: !2375)
!2475 = !DILocation(line: 1592, column: 9, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1591, column: 42)
!2477 = !DILocation(line: 1593, column: 40, scope: !2476)
!2478 = !DILocation(line: 1593, column: 46, scope: !2476)
!2479 = !DILocation(line: 1594, column: 9, scope: !2476)
!2480 = !DILocation(line: 1601, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1598, column: 40)
!2482 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1598, column: 9)
!2483 = !DILocation(line: 1602, column: 9, scope: !2481)
!2484 = !DILocation(line: 1603, column: 9, scope: !2481)
!2485 = !DILocation(line: 1617, column: 9, scope: !2384)
!2486 = !DILocation(line: 1617, column: 70, scope: !2384)
!2487 = !DILocation(line: 1618, column: 40, scope: !2384)
!2488 = !DILocation(line: 1618, column: 50, scope: !2384)
!2489 = !DILocation(line: 1625, column: 27, scope: !2387)
!2490 = !DILocation(line: 1633, column: 9, scope: !2387)
!2491 = !DILocation(line: 1634, column: 40, scope: !2387)
!2492 = !DILocation(line: 1634, column: 50, scope: !2387)
!2493 = !DILocation(line: 1640, column: 44, scope: !2465)
!2494 = !DILocation(line: 1640, column: 54, scope: !2465)
!2495 = !DILocation(line: 1640, column: 13, scope: !2466)
!2496 = !DILocation(line: 1642, column: 54, scope: !2464)
!2497 = !DILocation(line: 1643, column: 81, scope: !2464)
!2498 = !DILocation(line: 652, column: 5, scope: !2452, inlinedAt: !2463)
!2499 = !DILocation(line: 653, column: 65, scope: !2452, inlinedAt: !2463)
!2500 = !DILocation(line: 653, column: 74, scope: !2452, inlinedAt: !2463)
!2501 = !DILocation(line: 653, column: 27, scope: !2452, inlinedAt: !2463)
!2502 = !DILocation(line: 653, column: 8, scope: !2452, inlinedAt: !2463)
!2503 = !DILocation(line: 654, column: 8, scope: !2452, inlinedAt: !2463)
!2504 = !DILocation(line: 655, column: 20, scope: !2452, inlinedAt: !2463)
!2505 = !DILocation(line: 656, column: 5, scope: !2452, inlinedAt: !2463)
!2506 = !DILocation(line: 656, column: 20, scope: !2452, inlinedAt: !2463)
!2507 = !DILocation(line: 657, column: 50, scope: !2452, inlinedAt: !2463)
!2508 = !DILocation(line: 657, column: 42, scope: !2452, inlinedAt: !2463)
!2509 = !DILocation(line: 657, column: 5, scope: !2452, inlinedAt: !2463)
!2510 = !DILocation(line: 657, column: 20, scope: !2452, inlinedAt: !2463)
!2511 = !DILocation(line: 658, column: 32, scope: !2452, inlinedAt: !2463)
!2512 = !{!262, !227, i64 0}
!2513 = !DILocation(line: 658, column: 5, scope: !2452, inlinedAt: !2463)
!2514 = !DILocation(line: 658, column: 20, scope: !2452, inlinedAt: !2463)
!2515 = !DILocation(line: 659, column: 32, scope: !2452, inlinedAt: !2463)
!2516 = !{!262, !227, i64 1}
!2517 = !DILocation(line: 659, column: 5, scope: !2452, inlinedAt: !2463)
!2518 = !DILocation(line: 659, column: 20, scope: !2452, inlinedAt: !2463)
!2519 = !DILocation(line: 660, column: 32, scope: !2452, inlinedAt: !2463)
!2520 = !{!262, !227, i64 2}
!2521 = !DILocation(line: 660, column: 5, scope: !2452, inlinedAt: !2463)
!2522 = !DILocation(line: 660, column: 20, scope: !2452, inlinedAt: !2463)
!2523 = !DILocation(line: 661, column: 32, scope: !2452, inlinedAt: !2463)
!2524 = !{!262, !227, i64 3}
!2525 = !DILocation(line: 661, column: 5, scope: !2452, inlinedAt: !2463)
!2526 = !DILocation(line: 661, column: 20, scope: !2452, inlinedAt: !2463)
!2527 = !DILocation(line: 662, column: 32, scope: !2452, inlinedAt: !2463)
!2528 = !{!262, !227, i64 4}
!2529 = !DILocation(line: 662, column: 5, scope: !2452, inlinedAt: !2463)
!2530 = !DILocation(line: 662, column: 20, scope: !2452, inlinedAt: !2463)
!2531 = !DILocation(line: 663, column: 32, scope: !2452, inlinedAt: !2463)
!2532 = !{!262, !227, i64 5}
!2533 = !DILocation(line: 663, column: 5, scope: !2452, inlinedAt: !2463)
!2534 = !DILocation(line: 663, column: 20, scope: !2452, inlinedAt: !2463)
!2535 = !DILocation(line: 664, column: 32, scope: !2452, inlinedAt: !2463)
!2536 = !{!262, !227, i64 6}
!2537 = !DILocation(line: 664, column: 5, scope: !2452, inlinedAt: !2463)
!2538 = !DILocation(line: 664, column: 20, scope: !2452, inlinedAt: !2463)
!2539 = !DILocation(line: 665, column: 12, scope: !2452, inlinedAt: !2463)
!2540 = !DILocation(line: 666, column: 1, scope: !2452, inlinedAt: !2463)
!2541 = !DILocation(line: 1644, column: 13, scope: !2464)
!2542 = !DILocation(line: 1648, column: 16, scope: !2375)
!2543 = !DILocation(line: 1589, column: 32, scope: !2375)
!2544 = !DILocation(line: 1650, column: 44, scope: !2375)
!2545 = !DILocation(line: 1650, column: 5, scope: !2375)
!2546 = !DILocation(line: 1652, column: 9, scope: !2395)
!2547 = !DILocation(line: 1655, column: 44, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1652, column: 30)
!2549 = !DILocation(line: 1655, column: 54, scope: !2548)
!2550 = !DILocation(line: 1656, column: 50, scope: !2548)
!2551 = !DILocation(line: 1657, column: 13, scope: !2548)
!2552 = !DILocation(line: 1658, column: 13, scope: !2548)
!2553 = !DILocation(line: 1660, column: 13, scope: !2548)
!2554 = !DILocation(line: 1662, column: 44, scope: !2548)
!2555 = !DILocation(line: 1662, column: 54, scope: !2548)
!2556 = !DILocation(line: 1663, column: 50, scope: !2548)
!2557 = !DILocation(line: 1664, column: 13, scope: !2548)
!2558 = !DILocation(line: 1665, column: 13, scope: !2548)
!2559 = !DILocation(line: 1672, column: 9, scope: !2395)
!2560 = !DILocation(line: 1674, column: 44, scope: !2450)
!2561 = !DILocation(line: 1674, column: 54, scope: !2450)
!2562 = !DILocation(line: 1675, column: 58, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1675, column: 17)
!2564 = !DILocation(line: 1675, column: 17, scope: !2450)
!2565 = !DILocation(line: 1676, column: 58, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1675, column: 102)
!2567 = !DILocation(line: 1677, column: 13, scope: !2566)
!2568 = !DILocation(line: 1680, column: 13, scope: !2450)
!2569 = !DILocation(line: 1681, column: 44, scope: !2450)
!2570 = !DILocation(line: 1681, column: 54, scope: !2450)
!2571 = !DILocation(line: 1682, column: 58, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1682, column: 17)
!2573 = !DILocation(line: 1682, column: 17, scope: !2450)
!2574 = !DILocation(line: 1683, column: 58, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1682, column: 102)
!2576 = !DILocation(line: 1684, column: 13, scope: !2575)
!2577 = !DILocation(line: 1687, column: 48, scope: !2449)
!2578 = !DILocation(line: 1687, column: 17, scope: !2449)
!2579 = !DILocation(line: 1687, column: 58, scope: !2449)
!2580 = !DILocation(line: 1687, column: 17, scope: !2450)
!2581 = !DILocation(line: 1689, column: 58, scope: !2448)
!2582 = !DILocation(line: 1690, column: 89, scope: !2448)
!2583 = !DILocation(line: 1690, column: 126, scope: !2448)
!2584 = !{!259, !227, i64 26}
!2585 = !DILocation(line: 1690, column: 148, scope: !2448)
!2586 = !DILocation(line: 633, column: 5, scope: !2436, inlinedAt: !2447)
!2587 = !DILocation(line: 634, column: 65, scope: !2436, inlinedAt: !2447)
!2588 = !DILocation(line: 634, column: 74, scope: !2436, inlinedAt: !2447)
!2589 = !DILocation(line: 634, column: 27, scope: !2436, inlinedAt: !2447)
!2590 = !DILocation(line: 634, column: 8, scope: !2436, inlinedAt: !2447)
!2591 = !DILocation(line: 635, column: 8, scope: !2436, inlinedAt: !2447)
!2592 = !DILocation(line: 636, column: 20, scope: !2436, inlinedAt: !2447)
!2593 = !DILocation(line: 637, column: 5, scope: !2436, inlinedAt: !2447)
!2594 = !DILocation(line: 637, column: 20, scope: !2436, inlinedAt: !2447)
!2595 = !DILocation(line: 638, column: 5, scope: !2436, inlinedAt: !2447)
!2596 = !DILocation(line: 638, column: 20, scope: !2436, inlinedAt: !2447)
!2597 = !DILocation(line: 639, column: 5, scope: !2436, inlinedAt: !2447)
!2598 = !DILocation(line: 639, column: 20, scope: !2436, inlinedAt: !2447)
!2599 = !DILocation(line: 640, column: 5, scope: !2436, inlinedAt: !2447)
!2600 = !DILocation(line: 640, column: 20, scope: !2436, inlinedAt: !2447)
!2601 = !DILocation(line: 641, column: 5, scope: !2436, inlinedAt: !2447)
!2602 = !DILocation(line: 641, column: 20, scope: !2436, inlinedAt: !2447)
!2603 = !DILocation(line: 642, column: 22, scope: !2436, inlinedAt: !2447)
!2604 = !DILocation(line: 642, column: 5, scope: !2436, inlinedAt: !2447)
!2605 = !DILocation(line: 642, column: 20, scope: !2436, inlinedAt: !2447)
!2606 = !DILocation(line: 643, column: 22, scope: !2436, inlinedAt: !2447)
!2607 = !DILocation(line: 643, column: 5, scope: !2436, inlinedAt: !2447)
!2608 = !DILocation(line: 643, column: 20, scope: !2436, inlinedAt: !2447)
!2609 = !DILocation(line: 644, column: 5, scope: !2436, inlinedAt: !2447)
!2610 = !DILocation(line: 644, column: 20, scope: !2436, inlinedAt: !2447)
!2611 = !DILocation(line: 645, column: 5, scope: !2436, inlinedAt: !2447)
!2612 = !DILocation(line: 645, column: 20, scope: !2436, inlinedAt: !2447)
!2613 = !DILocation(line: 646, column: 12, scope: !2436, inlinedAt: !2447)
!2614 = !DILocation(line: 647, column: 1, scope: !2436, inlinedAt: !2447)
!2615 = !DILocation(line: 1691, column: 13, scope: !2448)
!2616 = !DILocation(line: 1691, column: 65, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2618, file: !3, discriminator: 1)
!2618 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1691, column: 24)
!2619 = !DILocation(line: 1691, column: 24, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2449, file: !3, discriminator: 1)
!2621 = !DILocation(line: 1693, column: 58, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 1691, column: 101)
!2623 = !DILocation(line: 1694, column: 76, scope: !2622)
!2624 = !DILocation(line: 1694, column: 17, scope: !2622)
!2625 = !DILocation(line: 1695, column: 13, scope: !2622)
!2626 = !DILocation(line: 1696, column: 49, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1696, column: 17)
!2628 = !DILocation(line: 1696, column: 103, scope: !2627)
!2629 = !DILocation(line: 1698, column: 58, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1696, column: 187)
!2631 = !DILocation(line: 1699, column: 54, scope: !2630)
!2632 = !DILocation(line: 1700, column: 13, scope: !2630)
!2633 = !DILocation(line: 1709, column: 9, scope: !2395)
!2634 = !DILocation(line: 1712, column: 50, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1709, column: 30)
!2636 = !DILocation(line: 1713, column: 13, scope: !2635)
!2637 = !DILocation(line: 1720, column: 9, scope: !2395)
!2638 = !DILocation(line: 1723, column: 50, scope: !2434)
!2639 = !DILocation(line: 1724, column: 84, scope: !2434)
!2640 = !DILocation(line: 1724, column: 99, scope: !2434)
!2641 = !DILocation(line: 612, column: 5, scope: !2420, inlinedAt: !2433)
!2642 = !DILocation(line: 613, column: 65, scope: !2420, inlinedAt: !2433)
!2643 = !DILocation(line: 613, column: 74, scope: !2420, inlinedAt: !2433)
!2644 = !DILocation(line: 613, column: 27, scope: !2420, inlinedAt: !2433)
!2645 = !DILocation(line: 613, column: 8, scope: !2420, inlinedAt: !2433)
!2646 = !DILocation(line: 614, column: 8, scope: !2420, inlinedAt: !2433)
!2647 = !DILocation(line: 615, column: 20, scope: !2420, inlinedAt: !2433)
!2648 = !DILocation(line: 616, column: 5, scope: !2420, inlinedAt: !2433)
!2649 = !DILocation(line: 616, column: 20, scope: !2420, inlinedAt: !2433)
!2650 = !DILocation(line: 617, column: 5, scope: !2420, inlinedAt: !2433)
!2651 = !DILocation(line: 617, column: 20, scope: !2420, inlinedAt: !2433)
!2652 = !DILocation(line: 618, column: 5, scope: !2420, inlinedAt: !2433)
!2653 = !DILocation(line: 618, column: 20, scope: !2420, inlinedAt: !2433)
!2654 = !DILocation(line: 619, column: 5, scope: !2420, inlinedAt: !2433)
!2655 = !DILocation(line: 619, column: 20, scope: !2420, inlinedAt: !2433)
!2656 = !DILocation(line: 620, column: 5, scope: !2420, inlinedAt: !2433)
!2657 = !DILocation(line: 620, column: 20, scope: !2420, inlinedAt: !2433)
!2658 = !DILocation(line: 621, column: 22, scope: !2420, inlinedAt: !2433)
!2659 = !DILocation(line: 621, column: 5, scope: !2420, inlinedAt: !2433)
!2660 = !DILocation(line: 621, column: 20, scope: !2420, inlinedAt: !2433)
!2661 = !DILocation(line: 622, column: 22, scope: !2420, inlinedAt: !2433)
!2662 = !DILocation(line: 622, column: 5, scope: !2420, inlinedAt: !2433)
!2663 = !DILocation(line: 622, column: 20, scope: !2420, inlinedAt: !2433)
!2664 = !DILocation(line: 623, column: 5, scope: !2420, inlinedAt: !2433)
!2665 = !DILocation(line: 623, column: 20, scope: !2420, inlinedAt: !2433)
!2666 = !DILocation(line: 624, column: 5, scope: !2420, inlinedAt: !2433)
!2667 = !DILocation(line: 624, column: 20, scope: !2420, inlinedAt: !2433)
!2668 = !DILocation(line: 625, column: 12, scope: !2420, inlinedAt: !2433)
!2669 = !DILocation(line: 626, column: 1, scope: !2420, inlinedAt: !2433)
!2670 = !DILocation(line: 1725, column: 13, scope: !2434)
!2671 = !DILocation(line: 1732, column: 9, scope: !2395)
!2672 = !DILocation(line: 1735, column: 26, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1735, column: 17)
!2674 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1732, column: 30)
!2675 = !DILocation(line: 1735, column: 53, scope: !2673)
!2676 = !DILocation(line: 1735, column: 41, scope: !2673)
!2677 = !DILocation(line: 1735, column: 17, scope: !2674)
!2678 = !DILocation(line: 1736, column: 41, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1735, column: 69)
!2680 = !DILocation(line: 1737, column: 13, scope: !2679)
!2681 = !DILocation(line: 1739, column: 73, scope: !2674)
!2682 = !DILocation(line: 1739, column: 44, scope: !2674)
!2683 = !DILocation(line: 1739, column: 61, scope: !2674)
!2684 = !DILocation(line: 1740, column: 50, scope: !2674)
!2685 = !DILocation(line: 1741, column: 13, scope: !2674)
!2686 = !DILocation(line: 1748, column: 9, scope: !2395)
!2687 = !DILocation(line: 1751, column: 50, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1748, column: 30)
!2689 = !DILocation(line: 1752, column: 74, scope: !2688)
!2690 = !DILocation(line: 558, column: 65, scope: !1344, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1752, column: 13, scope: !2688)
!2692 = !DILocation(line: 558, column: 74, scope: !1344, inlinedAt: !2691)
!2693 = !DILocation(line: 558, column: 88, scope: !1344, inlinedAt: !2691)
!2694 = !DILocation(line: 558, column: 80, scope: !1344, inlinedAt: !2691)
!2695 = !DILocation(line: 558, column: 8, scope: !1344, inlinedAt: !2691)
!2696 = !DILocation(line: 559, column: 12, scope: !1344, inlinedAt: !2691)
!2697 = !DILocation(line: 1753, column: 13, scope: !2688)
!2698 = !DILocation(line: 1760, column: 9, scope: !2395)
!2699 = !DILocation(line: 1762, column: 50, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1760, column: 30)
!2701 = !DILocation(line: 1763, column: 44, scope: !2700)
!2702 = !DILocation(line: 1763, column: 54, scope: !2700)
!2703 = !DILocation(line: 1764, column: 54, scope: !2700)
!2704 = !DILocation(line: 1765, column: 13, scope: !2700)
!2705 = !DILocation(line: 1772, column: 9, scope: !2395)
!2706 = !DILocation(line: 1566, column: 41, scope: !2707, inlinedAt: !2713)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1566, column: 9)
!2708 = distinct !DISubprogram(name: "rfcomm_channel_ready_for_open", scope: !3, file: !3, line: 1563, type: !2709, isLocal: true, isDefinition: true, scopeLine: 1564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!190, !76}
!2711 = !{!2712}
!2712 = !DILocalVariable(name: "channel", arg: 1, scope: !2708, file: !3, line: 1563, type: !76)
!2713 = distinct !DILocation(line: 1813, column: 13, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1813, column: 13)
!2715 = !DILocation(line: 1774, column: 44, scope: !2394)
!2716 = !DILocation(line: 1774, column: 54, scope: !2394)
!2717 = !DILocation(line: 1775, column: 54, scope: !2394)
!2718 = !DILocation(line: 1776, column: 13, scope: !2394)
!2719 = !DILocation(line: 1778, column: 44, scope: !2394)
!2720 = !DILocation(line: 1778, column: 54, scope: !2394)
!2721 = !DILocation(line: 1779, column: 13, scope: !2394)
!2722 = !DILocation(line: 1782, column: 48, scope: !2418)
!2723 = !DILocation(line: 1782, column: 17, scope: !2418)
!2724 = !DILocation(line: 1782, column: 58, scope: !2418)
!2725 = !DILocation(line: 1782, column: 17, scope: !2394)
!2726 = !DILocation(line: 1784, column: 58, scope: !2417)
!2727 = !DILocation(line: 1785, column: 58, scope: !2417)
!2728 = !DILocation(line: 1786, column: 85, scope: !2417)
!2729 = !DILocation(line: 584, column: 85, scope: !2406, inlinedAt: !2416)
!2730 = !DILocation(line: 586, column: 65, scope: !2406, inlinedAt: !2416)
!2731 = !DILocation(line: 586, column: 74, scope: !2406, inlinedAt: !2416)
!2732 = !DILocation(line: 586, column: 27, scope: !2406, inlinedAt: !2416)
!2733 = !DILocation(line: 586, column: 8, scope: !2406, inlinedAt: !2416)
!2734 = !DILocation(line: 587, column: 5, scope: !2406, inlinedAt: !2416)
!2735 = !DILocation(line: 588, column: 8, scope: !2406, inlinedAt: !2416)
!2736 = !DILocation(line: 589, column: 20, scope: !2406, inlinedAt: !2416)
!2737 = !DILocation(line: 590, column: 5, scope: !2406, inlinedAt: !2416)
!2738 = !DILocation(line: 590, column: 20, scope: !2406, inlinedAt: !2416)
!2739 = !DILocation(line: 591, column: 50, scope: !2406, inlinedAt: !2416)
!2740 = !DILocation(line: 591, column: 42, scope: !2406, inlinedAt: !2416)
!2741 = !DILocation(line: 591, column: 5, scope: !2406, inlinedAt: !2416)
!2742 = !DILocation(line: 591, column: 20, scope: !2406, inlinedAt: !2416)
!2743 = !DILocation(line: 592, column: 5, scope: !2406, inlinedAt: !2416)
!2744 = !DILocation(line: 592, column: 20, scope: !2406, inlinedAt: !2416)
!2745 = !DILocation(line: 593, column: 12, scope: !2406, inlinedAt: !2416)
!2746 = !DILocation(line: 594, column: 1, scope: !2406, inlinedAt: !2416)
!2747 = !DILocation(line: 1787, column: 17, scope: !2417)
!2748 = !DILocation(line: 1789, column: 58, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1789, column: 17)
!2750 = !DILocation(line: 1789, column: 17, scope: !2394)
!2751 = !DILocation(line: 1791, column: 58, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1789, column: 99)
!2753 = !DILocation(line: 1792, column: 58, scope: !2752)
!2754 = !DILocation(line: 1793, column: 85, scope: !2752)
!2755 = !DILocation(line: 1793, column: 17, scope: !2752)
!2756 = !DILocation(line: 1794, column: 17, scope: !2752)
!2757 = !DILocation(line: 1796, column: 58, scope: !2393)
!2758 = !DILocation(line: 1796, column: 17, scope: !2394)
!2759 = !DILocation(line: 1798, column: 58, scope: !2392)
!2760 = !DILocation(line: 1799, column: 58, scope: !2392)
!2761 = !DILocation(line: 1800, column: 52, scope: !2391)
!2762 = !DILocation(line: 1800, column: 21, scope: !2391)
!2763 = !DILocation(line: 1800, column: 21, scope: !2392)
!2764 = !DILocation(line: 1801, column: 24, scope: !2390)
!2765 = !DILocation(line: 1802, column: 73, scope: !2390)
!2766 = !DILocation(line: 1803, column: 21, scope: !2390)
!2767 = !DILocation(line: 1804, column: 17, scope: !2390)
!2768 = !DILocation(line: 1563, column: 62, scope: !2708, inlinedAt: !2713)
!2769 = !DILocation(line: 1566, column: 9, scope: !2708, inlinedAt: !2713)
!2770 = !DILocation(line: 1575, column: 40, scope: !2771, inlinedAt: !2713)
!2771 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1575, column: 9)
!2772 = !DILocation(line: 1576, column: 9, scope: !2773, inlinedAt: !2713)
!2773 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1575, column: 63)
!2774 = !DILocation(line: 1813, column: 13, scope: !2395)
!2775 = !DILocalVariable(name: "rfChannel", arg: 1, scope: !2776, file: !3, line: 1204, type: !76)
!2776 = distinct !DISubprogram(name: "rfcomm_channel_opened", scope: !3, file: !3, line: 1204, type: !2318, isLocal: true, isDefinition: true, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2777)
!2777 = !{!2775, !2778}
!2778 = !DILocalVariable(name: "multiplexer", scope: !2776, file: !3, line: 1207, type: !82)
!2779 = !DILocation(line: 1204, column: 55, scope: !2776, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1815, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1813, column: 53)
!2782 = !DILocation(line: 1210, column: 44, scope: !2776, inlinedAt: !2780)
!2783 = !DILocation(line: 1211, column: 5, scope: !2776, inlinedAt: !2780)
!2784 = !DILocation(line: 1212, column: 5, scope: !2776, inlinedAt: !2780)
!2785 = !DILocation(line: 1215, column: 30, scope: !2776, inlinedAt: !2780)
!2786 = !DILocation(line: 1207, column: 27, scope: !2776, inlinedAt: !2780)
!2787 = !DILocation(line: 1223, column: 40, scope: !2776, inlinedAt: !2780)
!2788 = !DILocation(line: 1223, column: 64, scope: !2776, inlinedAt: !2780)
!2789 = !{!387, !227, i64 16}
!2790 = !DILocation(line: 1226, column: 5, scope: !2776, inlinedAt: !2780)
!2791 = !DILocation(line: 1816, column: 9, scope: !2781)
!2792 = !DILocation(line: 1820, column: 9, scope: !2395)
!2793 = !DILocation(line: 1822, column: 44, scope: !2399)
!2794 = !DILocation(line: 1822, column: 54, scope: !2399)
!2795 = !DILocation(line: 1823, column: 13, scope: !2399)
!2796 = !DILocation(line: 1825, column: 48, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1825, column: 17)
!2798 = !DILocation(line: 1825, column: 58, scope: !2797)
!2799 = !DILocation(line: 1825, column: 17, scope: !2399)
!2800 = !DILocation(line: 1827, column: 58, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1825, column: 99)
!2802 = !DILocation(line: 1828, column: 85, scope: !2801)
!2803 = !DILocation(line: 1828, column: 17, scope: !2801)
!2804 = !DILocation(line: 1829, column: 17, scope: !2801)
!2805 = !DILocation(line: 1831, column: 48, scope: !2398)
!2806 = !DILocation(line: 1831, column: 17, scope: !2398)
!2807 = !DILocation(line: 1831, column: 17, scope: !2399)
!2808 = !DILocation(line: 1832, column: 20, scope: !2397)
!2809 = !DILocation(line: 1833, column: 69, scope: !2397)
!2810 = !DILocation(line: 1834, column: 17, scope: !2397)
!2811 = !DILocation(line: 1840, column: 13, scope: !2401)
!2812 = !DILocation(line: 1840, column: 16, scope: !2401)
!2813 = !DILocation(line: 1841, column: 13, scope: !2401)
!2814 = !DILocation(line: 1845, column: 9, scope: !2399)
!2815 = !DILocation(line: 1852, column: 9, scope: !2395)
!2816 = !DILocation(line: 1856, column: 50, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1852, column: 30)
!2818 = !DILocation(line: 1857, column: 75, scope: !2817)
!2819 = !DILocation(line: 1857, column: 13, scope: !2817)
!2820 = !DILocation(line: 1858, column: 13, scope: !2817)
!2821 = !DILocation(line: 1859, column: 13, scope: !2817)
!2822 = !DILocation(line: 1866, column: 9, scope: !2395)
!2823 = !DILocation(line: 1868, column: 50, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1866, column: 30)
!2825 = !DILocation(line: 1869, column: 74, scope: !2824)
!2826 = !DILocation(line: 1869, column: 13, scope: !2824)
!2827 = !DILocation(line: 1870, column: 13, scope: !2824)
!2828 = !DILocation(line: 1871, column: 13, scope: !2824)
!2829 = !DILocation(line: 1872, column: 13, scope: !2824)
!2830 = !DILocation(line: 1879, column: 9, scope: !2395)
!2831 = !DILocation(line: 1882, column: 50, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1879, column: 30)
!2833 = !DILocation(line: 1883, column: 72, scope: !2832)
!2834 = !DILocation(line: 1883, column: 13, scope: !2832)
!2835 = !DILocation(line: 1884, column: 13, scope: !2832)
!2836 = !DILocation(line: 1885, column: 13, scope: !2832)
!2837 = !DILocation(line: 1894, column: 1, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2375, file: !3, discriminator: 2)
!2839 = distinct !DISubprogram(name: "rfcomm_channel_finalize", scope: !3, file: !3, line: 1303, type: !2318, isLocal: true, isDefinition: true, scopeLine: 1304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2840)
!2840 = !{!2841, !2842}
!2841 = !DILocalVariable(name: "channel", arg: 1, scope: !2839, file: !3, line: 1303, type: !76)
!2842 = !DILocalVariable(name: "multiplexer", scope: !2839, file: !3, line: 1306, type: !82)
!2843 = !DILocation(line: 1303, column: 57, scope: !2839)
!2844 = !DILocation(line: 1309, column: 5, scope: !2839)
!2845 = !DILocation(line: 1312, column: 40, scope: !2839)
!2846 = !DILocation(line: 1312, column: 5, scope: !2839)
!2847 = !DILocation(line: 1316, column: 1, scope: !2839)
!2848 = distinct !DISubprogram(name: "rfcomm_emit_connection_request", scope: !3, file: !3, line: 130, type: !2318, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2849)
!2849 = !{!2850, !2851}
!2850 = !DILocalVariable(name: "channel", arg: 1, scope: !2848, file: !3, line: 130, type: !76)
!2851 = !DILocalVariable(name: "event", scope: !2848, file: !3, line: 133, type: !2852)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 88, elements: !2853)
!2853 = !{!2854}
!2854 = !DISubrange(count: 11)
!2855 = !DILocation(line: 130, column: 64, scope: !2848)
!2856 = !DILocation(line: 133, column: 5, scope: !2848)
!2857 = !DILocation(line: 133, column: 8, scope: !2848)
!2858 = !DILocation(line: 137, column: 14, scope: !2848)
!2859 = !DILocation(line: 138, column: 5, scope: !2848)
!2860 = !DILocation(line: 138, column: 14, scope: !2848)
!2861 = !DILocation(line: 139, column: 19, scope: !2848)
!2862 = !DILocation(line: 139, column: 38, scope: !2848)
!2863 = !DILocation(line: 139, column: 29, scope: !2848)
!2864 = !DILocation(line: 139, column: 5, scope: !2848)
!2865 = !DILocation(line: 140, column: 47, scope: !2848)
!2866 = !DILocation(line: 140, column: 52, scope: !2848)
!2867 = !DILocation(line: 140, column: 5, scope: !2848)
!2868 = !DILocation(line: 140, column: 14, scope: !2848)
!2869 = !DILocation(line: 141, column: 58, scope: !2848)
!2870 = !DILocation(line: 141, column: 5, scope: !2848)
!2871 = !DILocation(line: 142, column: 5, scope: !2848)
!2872 = !DILocation(line: 145, column: 1, scope: !2848)
!2873 = distinct !DISubprogram(name: "rfcomm_channel_accept_pn", scope: !3, file: !3, line: 1284, type: !2874, isLocal: true, isDefinition: true, scopeLine: 1285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !76, !181}
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "channel", arg: 1, scope: !2873, file: !3, line: 1284, type: !76)
!2878 = !DILocalVariable(name: "event", arg: 2, scope: !2873, file: !3, line: 1284, type: !181)
!2879 = !DILocation(line: 1284, column: 58, scope: !2873)
!2880 = !DILocation(line: 1284, column: 94, scope: !2873)
!2881 = !DILocation(line: 1287, column: 57, scope: !2873)
!2882 = !DILocation(line: 1287, column: 36, scope: !2873)
!2883 = !DILocation(line: 1287, column: 48, scope: !2873)
!2884 = !DILocation(line: 1290, column: 62, scope: !2873)
!2885 = !DILocation(line: 1290, column: 36, scope: !2873)
!2886 = !DILocation(line: 1290, column: 53, scope: !2873)
!2887 = !DILocation(line: 1293, column: 18, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1293, column: 9)
!2889 = !DILocation(line: 1293, column: 44, scope: !2888)
!2890 = !DILocation(line: 1293, column: 57, scope: !2888)
!2891 = !DILocation(line: 1293, column: 33, scope: !2888)
!2892 = !DILocation(line: 1293, column: 9, scope: !2873)
!2893 = !DILocation(line: 1294, column: 33, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1293, column: 73)
!2895 = !DILocation(line: 1295, column: 5, scope: !2894)
!2896 = !DILocation(line: 1296, column: 18, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1296, column: 9)
!2898 = !DILocation(line: 1296, column: 42, scope: !2897)
!2899 = !DILocation(line: 1296, column: 33, scope: !2897)
!2900 = !DILocation(line: 1296, column: 9, scope: !2873)
!2901 = !DILocation(line: 1297, column: 33, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1296, column: 58)
!2903 = !DILocation(line: 1298, column: 5, scope: !2902)
!2904 = !DILocation(line: 1300, column: 1, scope: !2873)
!2905 = !DILocation(line: 572, column: 66, scope: !1360)
!2906 = !DILocation(line: 572, column: 80, scope: !1360)
!2907 = !DILocation(line: 572, column: 94, scope: !1360)
!2908 = !DILocation(line: 572, column: 86, scope: !1360)
!2909 = !DILocation(line: 572, column: 8, scope: !1360)
!2910 = !DILocation(line: 573, column: 12, scope: !1360)
!2911 = distinct !DISubprogram(name: "rfcomm_send_uih_msc_rsp", scope: !3, file: !3, line: 597, type: !2407, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918}
!2913 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2911, file: !3, line: 597, type: !82)
!2914 = !DILocalVariable(name: "dlci", arg: 2, scope: !2911, file: !3, line: 597, type: !108)
!2915 = !DILocalVariable(name: "signals", arg: 3, scope: !2911, file: !3, line: 597, type: !108)
!2916 = !DILocalVariable(name: "address", scope: !2911, file: !3, line: 599, type: !108)
!2917 = !DILocalVariable(name: "payload", scope: !2911, file: !3, line: 600, type: !2323)
!2918 = !DILocalVariable(name: "pos", scope: !2911, file: !3, line: 601, type: !108)
!2919 = !DILocation(line: 597, column: 85, scope: !2911)
!2920 = !DILocation(line: 599, column: 65, scope: !2911)
!2921 = !DILocation(line: 599, column: 74, scope: !2911)
!2922 = !DILocation(line: 599, column: 27, scope: !2911)
!2923 = !DILocation(line: 599, column: 8, scope: !2911)
!2924 = !DILocation(line: 600, column: 5, scope: !2911)
!2925 = !DILocation(line: 600, column: 8, scope: !2911)
!2926 = !DILocation(line: 601, column: 8, scope: !2911)
!2927 = !DILocation(line: 602, column: 20, scope: !2911)
!2928 = !DILocation(line: 603, column: 5, scope: !2911)
!2929 = !DILocation(line: 603, column: 20, scope: !2911)
!2930 = !DILocation(line: 604, column: 50, scope: !2911)
!2931 = !DILocation(line: 604, column: 42, scope: !2911)
!2932 = !DILocation(line: 604, column: 5, scope: !2911)
!2933 = !DILocation(line: 604, column: 20, scope: !2911)
!2934 = !DILocation(line: 605, column: 5, scope: !2911)
!2935 = !DILocation(line: 605, column: 20, scope: !2911)
!2936 = !DILocation(line: 606, column: 12, scope: !2911)
!2937 = !DILocation(line: 607, column: 1, scope: !2911)
!2938 = distinct !DISubprogram(name: "rfcomm_channel_send_credits", scope: !3, file: !3, line: 1195, type: !2138, isLocal: true, isDefinition: true, scopeLine: 1196, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2939)
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "channel", arg: 1, scope: !2938, file: !3, line: 1195, type: !76)
!2941 = !DILocalVariable(name: "credits", arg: 2, scope: !2938, file: !3, line: 1195, type: !108)
!2942 = !DILocation(line: 1195, column: 61, scope: !2938)
!2943 = !DILocation(line: 1195, column: 73, scope: !2938)
!2944 = !DILocation(line: 1197, column: 38, scope: !2938)
!2945 = !DILocation(line: 1197, column: 82, scope: !2938)
!2946 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2947, file: !3, line: 708, type: !82)
!2947 = distinct !DISubprogram(name: "rfcomm_send_uih_credits", scope: !3, file: !3, line: 708, type: !2948, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !82, !108, !108}
!2950 = !{!2946, !2951, !2952, !2953}
!2951 = !DILocalVariable(name: "dlci", arg: 2, scope: !2947, file: !3, line: 708, type: !108)
!2952 = !DILocalVariable(name: "credits", arg: 3, scope: !2947, file: !3, line: 708, type: !108)
!2953 = !DILocalVariable(name: "address", scope: !2947, file: !3, line: 710, type: !108)
!2954 = !DILocation(line: 708, column: 61, scope: !2947, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 1197, column: 5, scope: !2938)
!2956 = !DILocation(line: 708, column: 77, scope: !2947, inlinedAt: !2955)
!2957 = !DILocation(line: 708, column: 87, scope: !2947, inlinedAt: !2955)
!2958 = !DILocation(line: 710, column: 65, scope: !2947, inlinedAt: !2955)
!2959 = !DILocation(line: 710, column: 74, scope: !2947, inlinedAt: !2955)
!2960 = !DILocation(line: 710, column: 88, scope: !2947, inlinedAt: !2955)
!2961 = !DILocation(line: 710, column: 80, scope: !2947, inlinedAt: !2955)
!2962 = !DILocation(line: 710, column: 8, scope: !2947, inlinedAt: !2955)
!2963 = !DILocation(line: 711, column: 5, scope: !2947, inlinedAt: !2955)
!2964 = !DILocation(line: 1198, column: 36, scope: !2938)
!2965 = !DILocation(line: 1198, column: 53, scope: !2938)
!2966 = !DILocation(line: 1201, column: 1, scope: !2938)
!2967 = distinct !DISubprogram(name: "rfcomm_send_dm_pf", scope: !3, file: !3, line: 577, type: !1345, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2968)
!2968 = !{!2969, !2970, !2971}
!2969 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2967, file: !3, line: 577, type: !82)
!2970 = !DILocalVariable(name: "dlci", arg: 2, scope: !2967, file: !3, line: 577, type: !108)
!2971 = !DILocalVariable(name: "address", scope: !2967, file: !3, line: 579, type: !108)
!2972 = !DILocation(line: 579, column: 66, scope: !2967)
!2973 = !DILocation(line: 579, column: 80, scope: !2967)
!2974 = !DILocation(line: 579, column: 94, scope: !2967)
!2975 = !DILocation(line: 579, column: 86, scope: !2967)
!2976 = !DILocation(line: 579, column: 8, scope: !2967)
!2977 = !DILocation(line: 580, column: 12, scope: !2967)
!2978 = distinct !DISubprogram(name: "rfcomm_channel_for_multiplexer_and_dlci", scope: !3, file: !3, line: 444, type: !2979, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!76, !82, !108}
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !2978, file: !3, line: 444, type: !82)
!2983 = !DILocalVariable(name: "dlci", arg: 2, scope: !2978, file: !3, line: 444, type: !108)
!2984 = !DILocalVariable(name: "it", scope: !2978, file: !3, line: 446, type: !68)
!2985 = !DILocalVariable(name: "channel", scope: !2986, file: !3, line: 448, type: !76)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 447, column: 84)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 447, column: 5)
!2988 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 447, column: 5)
!2989 = !DILocation(line: 444, column: 90, scope: !2978)
!2990 = !DILocation(line: 444, column: 106, scope: !2978)
!2991 = !DILocation(line: 447, column: 33, scope: !2988)
!2992 = !DILocation(line: 447, column: 47, scope: !2988)
!2993 = !DILocation(line: 446, column: 20, scope: !2978)
!2994 = !DILocation(line: 447, column: 5, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !2988, file: !3, discriminator: 1)
!2996 = !DILocation(line: 449, column: 22, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 449, column: 13)
!2998 = !DILocation(line: 449, column: 44, scope: !2997)
!2999 = !DILocation(line: 449, column: 49, scope: !2997)
!3000 = !DILocation(line: 449, column: 57, scope: !2997)
!3001 = !DILocation(line: 449, column: 69, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !2997, file: !3, discriminator: 1)
!3003 = !DILocation(line: 449, column: 81, scope: !3002)
!3004 = !DILocation(line: 449, column: 13, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !2986, file: !3, discriminator: 1)
!3006 = !DILocation(line: 447, column: 78, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !2987, file: !3, discriminator: 2)
!3008 = distinct !{!3008, !3009, !3010}
!3009 = !DILocation(line: 447, column: 5, scope: !2988)
!3010 = !DILocation(line: 452, column: 5, scope: !2988)
!3011 = !DILocation(line: 448, column: 38, scope: !2986)
!3012 = !DILocation(line: 454, column: 1, scope: !2978)
!3013 = distinct !DISubprogram(name: "rfcomm_channel_state_machine_2", scope: !3, file: !3, line: 1319, type: !3014, isLocal: true, isDefinition: true, scopeLine: 1320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !82, !108, !189}
!3016 = !{!3017, !3018, !3019, !3020, !3021}
!3017 = !DILocalVariable(name: "multiplexer", arg: 1, scope: !3013, file: !3, line: 1319, type: !82)
!3018 = !DILocalVariable(name: "dlci", arg: 2, scope: !3013, file: !3, line: 1319, type: !108)
!3019 = !DILocalVariable(name: "event", arg: 3, scope: !3013, file: !3, line: 1319, type: !189)
!3020 = !DILocalVariable(name: "service", scope: !3013, file: !3, line: 1323, type: !147)
!3021 = !DILocalVariable(name: "channel", scope: !3013, file: !3, line: 1326, type: !76)
!3022 = !DILocation(line: 1319, column: 68, scope: !3013)
!3023 = !DILocation(line: 1319, column: 84, scope: !3013)
!3024 = !DILocation(line: 1319, column: 114, scope: !3013)
!3025 = !DILocation(line: 1326, column: 33, scope: !3013)
!3026 = !DILocation(line: 1326, column: 23, scope: !3013)
!3027 = !DILocation(line: 1330, column: 9, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1330, column: 9)
!3029 = !DILocation(line: 1330, column: 9, scope: !3013)
!3030 = !DILocation(line: 1331, column: 9, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1330, column: 18)
!3032 = !DILocation(line: 1332, column: 9, scope: !3031)
!3033 = !DILocation(line: 1336, column: 47, scope: !3013)
!3034 = !DILocation(line: 457, column: 58, scope: !1462, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1336, column: 15, scope: !3013)
!3036 = !DILocation(line: 460, column: 33, scope: !1470, inlinedAt: !3035)
!3037 = !DILocation(line: 460, column: 47, scope: !1470, inlinedAt: !3035)
!3038 = !DILocation(line: 459, column: 20, scope: !1462, inlinedAt: !3035)
!3039 = !DILocation(line: 460, column: 5, scope: !1477, inlinedAt: !3035)
!3040 = !DILocation(line: 462, column: 22, scope: !1479, inlinedAt: !3035)
!3041 = !DILocation(line: 460, column: 78, scope: !1481, inlinedAt: !3035)
!3042 = !DILocation(line: 462, column: 37, scope: !1479, inlinedAt: !3035)
!3043 = !DILocation(line: 1340, column: 44, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1338, column: 19)
!3045 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1338, column: 9)
!3046 = !DILocation(line: 1340, column: 61, scope: !3044)
!3047 = !DILocation(line: 1341, column: 9, scope: !3044)
!3048 = !DILocation(line: 1345, column: 20, scope: !3013)
!3049 = !DILocation(line: 1345, column: 5, scope: !3013)
!3050 = !DILocation(line: 461, column: 38, scope: !1468, inlinedAt: !3035)
!3051 = !DILocation(line: 1351, column: 19, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1345, column: 26)
!3053 = !DILocation(line: 1352, column: 14, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1352, column: 13)
!3055 = !DILocation(line: 1352, column: 13, scope: !3052)
!3056 = !DILocation(line: 1354, column: 48, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1352, column: 23)
!3058 = !DILocation(line: 1354, column: 65, scope: !3057)
!3059 = !DILocation(line: 1361, column: 9, scope: !3013)
!3060 = !DILocation(line: 1363, column: 44, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1361, column: 19)
!3062 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1361, column: 9)
!3063 = !DILocation(line: 1363, column: 61, scope: !3061)
!3064 = !DILocation(line: 1364, column: 9, scope: !3061)
!3065 = !DILocation(line: 1366, column: 36, scope: !3013)
!3066 = !DILocation(line: 1366, column: 14, scope: !3013)
!3067 = !DILocation(line: 1366, column: 25, scope: !3013)
!3068 = !DILocation(line: 1367, column: 5, scope: !3013)
!3069 = !DILocation(line: 1368, column: 1, scope: !3013)
!3070 = !DILocation(line: 1368, column: 1, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3013, file: !3, discriminator: 2)
