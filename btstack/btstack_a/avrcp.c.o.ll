; ModuleID = 'avrcp.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.respone_pdu_handler = type { i8, i8, i8 (%struct.avctp*, i8, i8, i8*, i32)* }
%struct.avctp = type { [6 x i8], i16, i8, %struct.control_pdu_handler*, %struct.respone_pdu_handler*, %struct.avrcp_core_data_t }
%struct.control_pdu_handler = type { i8, i8, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* }
%struct.avrcp_header = type <{ [3 x i8], i8, i8, i16, [0 x i8] }>
%struct.avrcp_core_data_t = type { i32, i8, i8, [5 x i8], i8, i8, [3 x i8], i8, i8, [9 x i8], [14 x %struct.avrcp_event_info] }
%struct.avrcp_event_info = type { i8 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [28 x i8] c"<BT-log> :Unknown event %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"<BT-log> :avrcp_register_notification %d %d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"avrcp_send_absolute_volume_cmd\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"avrcp_get_attributes\0A\00", align 1
@arp_deal_respone_handlers = internal constant [8 x %struct.respone_pdu_handler] [%struct.respone_pdu_handler { i8 16, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* @avrcp_get_capabilities_resp }, %struct.respone_pdu_handler { i8 49, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* @avrcp_handle_event }, %struct.respone_pdu_handler { i8 17, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* @avrcp_list_player_attributes_rsp }, %struct.respone_pdu_handler { i8 19, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* @avrcp_player_value_rsp }, %struct.respone_pdu_handler { i8 48, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* @avrcp_get_play_status_rsp }, %struct.respone_pdu_handler { i8 32, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* @avrcp_get_element_attributes_rsp }, %struct.respone_pdu_handler { i8 20, i8 0, i8 (%struct.avctp*, i8, i8, i8*, i32)* null }, %struct.respone_pdu_handler zeroinitializer], section ".bt_stack_const", align 4, !dbg !55
@arp_control_handlers = internal constant [7 x %struct.control_pdu_handler] [%struct.control_pdu_handler { i8 16, i8 1, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* @avrcp_handle_get_capabilities }, %struct.control_pdu_handler { i8 24, i8 1, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* null }, %struct.control_pdu_handler { i8 49, i8 3, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* @avrcp_handle_register_notification }, %struct.control_pdu_handler { i8 80, i8 0, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* @avrcp_handle_set_absolute_volume }, %struct.control_pdu_handler { i8 64, i8 0, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* null }, %struct.control_pdu_handler { i8 65, i8 0, i8 (%struct.avctp*, %struct.avrcp_header*, i8)* null }, %struct.control_pdu_handler zeroinitializer], section ".bt_stack_const", align 4, !dbg !154
@more_avctp_cmd_support = external local_unnamed_addr constant i8, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"<BT-log> :get_vol %d\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"<BT-log> :res key %d, value%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"<BT-log> :len %d %d->\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"<BT-log> :pos %d %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"<BT-log> :MY event %d  support %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"<BT-log> :update avrcp vol %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"<BT-log> :get phone vol %d\0A\0A\00", align 1

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_player_event(%struct.avctp*, i8 zeroext, i8* nocapture readnone) local_unnamed_addr #0 section ".bt_stack_code" !dbg !168 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !174, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i8 %1, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %2, metadata !176, metadata !DIExpression()), !dbg !186
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !187
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !187
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !177, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !189
  %6 = icmp eq %struct.avctp* %0, null, !dbg !190
  br i1 %6, label %43, label %7, !dbg !192

; <label>:7:                                      ; preds = %3
  %8 = zext i8 %1 to i32, !dbg !193
  %9 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %8, i32 0, !dbg !195
  %10 = load i8, i8* %9, align 1, !dbg !195
  %11 = and i8 %10, 2, !dbg !195
  %12 = icmp eq i8 %11, 0, !dbg !196
  br i1 %12, label %43, label %13, !dbg !197

; <label>:13:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !198, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !207
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 1, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 16, i32 1, i1 false), !dbg !209
  store i8 25, i8* %14, align 1, !dbg !210, !tbaa !211
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 2, !dbg !214
  store i8 88, i8* %15, align 1, !dbg !215, !tbaa !211
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 3, !dbg !216
  store i8 49, i8* %16, align 1, !dbg !217, !tbaa !218
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 7, !dbg !221
  store i8 %1, i8* %17, align 1, !dbg !222, !tbaa !211
  %18 = icmp eq i8 %1, 13, !dbg !223
  br i1 %18, label %19, label %38, !dbg !223

; <label>:19:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i16 2, metadata !182, metadata !DIExpression()), !dbg !224
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 8, !dbg !225
  store i8 100, i8* %20, align 1, !dbg !227, !tbaa !211
  %21 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !228, !tbaa !230
  %22 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %21, i32 0, i32 6, !dbg !232
  %23 = load i32 ()*, i32 ()** %22, align 4, !dbg !232, !tbaa !233
  %24 = icmp eq i32 ()* %23, null, !dbg !228
  br i1 %24, label %28, label %25, !dbg !235

; <label>:25:                                     ; preds = %19
  %26 = tail call i32 %23() #7, !dbg !236
  %27 = trunc i32 %26 to i8, !dbg !236
  store i8 %27, i8* %20, align 1, !dbg !238, !tbaa !211
  br label %28, !dbg !239

; <label>:28:                                     ; preds = %25, %19
  %29 = phi i8 [ 100, %19 ], [ %27, %25 ], !dbg !240
  %30 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 7, !dbg !241
  store i8 %29, i8* %30, align 4, !dbg !242, !tbaa !243
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 5, !dbg !247
  %32 = bitcast i8* %31 to i16*, !dbg !247
  store i16 512, i16* %32, align 1, !dbg !248, !tbaa !249
  %33 = load i8, i8* %9, align 1, !dbg !250
  %34 = lshr i8 %33, 4, !dbg !250
  %35 = call i32 @avctp_send_vendordep(%struct.avctp* nonnull %0, i8 zeroext %34, i8 zeroext 13, i8 zeroext 9, i8* nonnull %5, i32 9) #7, !dbg !251
  call void @llvm.dbg.value(metadata i32 %35, metadata !183, metadata !DIExpression()), !dbg !189
  %36 = load i8, i8* %9, align 1, !dbg !252
  %37 = and i8 %36, -3, !dbg !252
  store i8 %37, i8* %9, align 1, !dbg !252
  br label %43, !dbg !253

; <label>:38:                                     ; preds = %13
  %39 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !254, !tbaa !211
  %40 = icmp slt i8 %39, 0, !dbg !254
  br i1 %40, label %41, label %43, !dbg !256

; <label>:41:                                     ; preds = %38
  %42 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %8) #8, !dbg !257
  br label %43, !dbg !257

; <label>:43:                                     ; preds = %41, %38, %28, %7, %3
  %44 = phi i32 [ %35, %28 ], [ 0, %3 ], [ 0, %7 ], [ 0, %41 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !259
  ret i32 %44, !dbg !259
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @avctp_send_vendordep(%struct.avctp*, i8 zeroext, i8 zeroext, i8 zeroext, i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_register_notification(%struct.avctp*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !260 {
  %3 = alloca [12 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !264, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i8 %1, metadata !265, metadata !DIExpression()), !dbg !276
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 0, !dbg !277
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #6, !dbg !277
  tail call void @llvm.dbg.declare(metadata [12 x i8]* %3, metadata !266, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8 0, metadata !271, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata i8* %4, metadata !198, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !282
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 1, !dbg !283
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 12, i32 1, i1 false), !dbg !284
  store i8 25, i8* %5, align 1, !dbg !285, !tbaa !211
  %6 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 2, !dbg !286
  store i8 88, i8* %6, align 1, !dbg !287, !tbaa !211
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 3, !dbg !288
  store i8 49, i8* %7, align 1, !dbg !289, !tbaa !218
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 4, !dbg !290
  store i8 0, i8* %8, align 1, !dbg !291
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 7, !dbg !292
  store i8 %1, i8* %9, align 1, !dbg !293, !tbaa !211
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 8, !dbg !294
  store i8 0, i8* %10, align 1, !dbg !295, !tbaa !211
  %11 = zext i8 %1 to i32, !dbg !296
  %12 = icmp eq i8 %1, 5, !dbg !297
  br i1 %12, label %13, label %14, !dbg !298

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.value(metadata i32 1, metadata !272, metadata !DIExpression()), !dbg !299
  call void @net_store_32(i8* %9, i16 zeroext 1, i32 1) #7, !dbg !300
  br label %14, !dbg !301

; <label>:14:                                     ; preds = %13, %2
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i32 0, i32 5, !dbg !302
  %16 = bitcast i8* %15 to i16*, !dbg !302
  store i16 1280, i16* %16, align 1, !dbg !303, !tbaa !249
  %17 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !304, !tbaa !211
  %18 = icmp slt i8 %17, 0, !dbg !304
  br i1 %18, label %19, label %26, !dbg !306

; <label>:19:                                     ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 %11, i32 0) #8, !dbg !307
  %21 = load i16, i16* %16, align 1, !tbaa !249
  %22 = zext i16 %21 to i32, !dbg !307
  %23 = lshr i32 %22, 8, !dbg !307
  %24 = add nuw nsw i32 %23, 7, !dbg !307
  %25 = and i32 %24, 255, !dbg !307
  br label %26, !dbg !307

; <label>:26:                                     ; preds = %19, %14
  %27 = phi i32 [ %25, %19 ], [ 12, %14 ]
  %28 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %11, i32 0, !dbg !309
  %29 = load i8, i8* %28, align 1, !dbg !310
  %30 = or i8 %29, 8, !dbg !310
  store i8 %30, i8* %28, align 1, !dbg !310
  %31 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 3, i8 zeroext 9, i8* nonnull %4, i32 %27) #7, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #6, !dbg !312
  ret i32 %31, !dbg !313
}

; Function Attrs: optsize
declare void @net_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @avctp_send_vendordep_req(%struct.avctp*, i8 zeroext, i8 zeroext, i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_get_capabilities(%struct.avctp*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !314 {
  %2 = alloca i64, align 4
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !318, metadata !DIExpression()), !dbg !323
  %3 = bitcast i64* %2 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !324
  %4 = bitcast i64* %2 to %struct.avrcp_header*, !dbg !325
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %4, metadata !321, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i8* %3, metadata !198, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !329
  store i8 0, i8* %3, align 4, !dbg !330, !tbaa !211
  %5 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !331
  store i8 25, i8* %5, align 1, !dbg !332, !tbaa !211
  %6 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !333
  store i8 88, i8* %6, align 2, !dbg !334, !tbaa !211
  %7 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 1, !dbg !335
  store i8 16, i8* %7, align 1, !dbg !336, !tbaa !218
  %8 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 2, !dbg !337
  store i8 0, i8* %8, align 4, !dbg !338
  %9 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 4, i32 0, !dbg !339
  store i8 3, i8* %9, align 1, !dbg !340, !tbaa !211
  %10 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 3, !dbg !341
  store i16 256, i16* %10, align 1, !dbg !342, !tbaa !249
  call void @llvm.dbg.value(metadata i8 8, metadata !322, metadata !DIExpression()), !dbg !343
  %11 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 1, i8 zeroext 9, i8* nonnull %3, i32 8) #7, !dbg !344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !345
  ret i32 %11, !dbg !346
}

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_list_player_attributes(%struct.avctp*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !347 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !349, metadata !DIExpression()), !dbg !353
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 0, !dbg !354
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %3) #6, !dbg !354
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %2, metadata !350, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i8* %3, metadata !198, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !358
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 1, !dbg !359
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 7, i32 1, i1 false), !dbg !360
  store i8 25, i8* %4, align 1, !dbg !361, !tbaa !211
  %5 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 2, !dbg !362
  store i8 88, i8* %5, align 1, !dbg !363, !tbaa !211
  %6 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 3, !dbg !364
  store i8 17, i8* %6, align 1, !dbg !365, !tbaa !218
  %7 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 4, !dbg !366
  store i8 0, i8* %7, align 1, !dbg !367
  %8 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 1, i8 zeroext 9, i8* nonnull %3, i32 7) #7, !dbg !368
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %3) #6, !dbg !369
  ret i32 %8, !dbg !370
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @avrcp_set_player_value(%struct.avctp*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !371 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !375, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8 %1, metadata !376, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8 %2, metadata !377, metadata !DIExpression()), !dbg !386
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !387
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %5) #6, !dbg !387
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !378, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %5, metadata !198, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !391
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 1, !dbg !392
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !393
  store i8 0, i8* %7, align 1, !dbg !393
  store i8 25, i8* %6, align 1, !dbg !394, !tbaa !211
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 2, !dbg !395
  store i8 88, i8* %8, align 1, !dbg !396, !tbaa !211
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 3, !dbg !397
  store i8 20, i8* %9, align 1, !dbg !398, !tbaa !218
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 4, !dbg !399
  store i8 0, i8* %10, align 1, !dbg !400
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 7, !dbg !401
  store i8 1, i8* %11, align 1, !dbg !402, !tbaa !211
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 8, !dbg !403
  store i8 %1, i8* %12, align 1, !dbg !404, !tbaa !211
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 9, !dbg !405
  store i8 %2, i8* %13, align 1, !dbg !406, !tbaa !211
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 5, !dbg !407
  %15 = bitcast i8* %14 to i16*, !dbg !407
  store i16 768, i16* %15, align 1, !dbg !408, !tbaa !249
  call void @llvm.dbg.value(metadata i8 10, metadata !383, metadata !DIExpression()), !dbg !409
  %16 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 0, i8 zeroext 9, i8* nonnull %5, i32 10) #7, !dbg !410
  %17 = trunc i32 %16 to i8, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %5) #6, !dbg !411
  ret i8 %17, !dbg !412
}

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_send_absolute_volume_cmd(%struct.avctp*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !413 {
  %2 = alloca i64, align 4
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !415, metadata !DIExpression()), !dbg !419
  %3 = bitcast i64* %2 to i8*, !dbg !420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !420
  %4 = bitcast i64* %2 to %struct.avrcp_header*, !dbg !421
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %4, metadata !417, metadata !DIExpression()), !dbg !422
  store i64 0, i64* %2, align 4, !dbg !423
  %5 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !424, !tbaa !211
  %6 = and i8 %5, 32, !dbg !424
  %7 = icmp eq i8 %6, 0, !dbg !424
  br i1 %7, label %10, label %8, !dbg !426

; <label>:8:                                      ; preds = %1
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !427
  br label %10, !dbg !427

; <label>:10:                                     ; preds = %8, %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !198, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !431
  store i8 0, i8* %3, align 4, !dbg !432, !tbaa !211
  %11 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !433
  store i8 25, i8* %11, align 1, !dbg !434, !tbaa !211
  %12 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !435
  store i8 88, i8* %12, align 2, !dbg !436, !tbaa !211
  %13 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 1, !dbg !437
  store i8 80, i8* %13, align 1, !dbg !438, !tbaa !218
  %14 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 2, !dbg !439
  store i8 0, i8* %14, align 4, !dbg !440
  %15 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 4, i32 0, !dbg !441
  store i8 100, i8* %15, align 1, !dbg !442, !tbaa !211
  %16 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !443, !tbaa !230
  %17 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %16, i32 0, i32 6, !dbg !445
  %18 = load i32 ()*, i32 ()** %17, align 4, !dbg !445, !tbaa !233
  %19 = icmp eq i32 ()* %18, null, !dbg !443
  br i1 %19, label %23, label %20, !dbg !446

; <label>:20:                                     ; preds = %10
  %21 = tail call i32 %18() #7, !dbg !447
  %22 = trunc i32 %21 to i8, !dbg !447
  store i8 %22, i8* %15, align 1, !dbg !449, !tbaa !211
  br label %23, !dbg !450

; <label>:23:                                     ; preds = %20, %10
  %24 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %4, i32 0, i32 3, !dbg !451
  store i16 256, i16* %24, align 1, !dbg !452, !tbaa !249
  call void @llvm.dbg.value(metadata i8 8, metadata !418, metadata !DIExpression()), !dbg !453
  %25 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 0, i8 zeroext 9, i8* nonnull %3, i32 8) #7, !dbg !454
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !455
  ret i32 %25, !dbg !456
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define weak hidden void @emitter_rx_vol_change(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !457 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !461, metadata !DIExpression()), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nounwind optsize
define weak hidden void @avrcp_element_attr_rsp_ext_process(i8 zeroext, i32, i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !464 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !469, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 %1, metadata !470, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i8* %2, metadata !471, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i16 %3, metadata !472, metadata !DIExpression()), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: nounwind optsize
define weak hidden zeroext i8 @bt_music_total_time(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !482, metadata !DIExpression()), !dbg !483
  ret i8 0, !dbg !484
}

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_get_play_status(%struct.avctp*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !485 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !487, metadata !DIExpression()), !dbg !491
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 0, !dbg !492
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %3) #6, !dbg !492
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %2, metadata !488, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i8* %3, metadata !198, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !496
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 1, !dbg !497
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 7, i32 1, i1 false), !dbg !498
  store i8 25, i8* %4, align 1, !dbg !499, !tbaa !211
  %5 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 2, !dbg !500
  store i8 88, i8* %5, align 1, !dbg !501, !tbaa !211
  %6 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 3, !dbg !502
  store i8 48, i8* %6, align 1, !dbg !503, !tbaa !218
  %7 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 4, !dbg !504
  store i8 0, i8* %7, align 1, !dbg !505
  %8 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 1, i8 zeroext 9, i8* nonnull %3, i32 7) #7, !dbg !506
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %3) #6, !dbg !507
  ret i32 %8, !dbg !508
}

; Function Attrs: nounwind optsize
define hidden i32 @avrcp_get_element_attributes(%struct.avctp*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !509 {
  %2 = alloca [44 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !511, metadata !DIExpression()), !dbg !518
  %3 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 0, !dbg !519
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %3) #6, !dbg !519
  tail call void @llvm.dbg.declare(metadata [44 x i8]* %2, metadata !512, metadata !DIExpression()), !dbg !520
  call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 0, i32 44, i32 1, i1 false), !dbg !521
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !522, !tbaa !211
  %5 = and i8 %4, 32, !dbg !522
  %6 = icmp eq i8 %5, 0, !dbg !522
  br i1 %6, label %9, label %7, !dbg !524

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !525
  br label %9, !dbg !525

; <label>:9:                                      ; preds = %7, %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !198, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !529
  store i8 0, i8* %3, align 1, !dbg !530, !tbaa !211
  %10 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 1, !dbg !531
  store i8 25, i8* %10, align 1, !dbg !532, !tbaa !211
  %11 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 2, !dbg !533
  store i8 88, i8* %11, align 1, !dbg !534, !tbaa !211
  %12 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 3, !dbg !535
  store i8 32, i8* %12, align 1, !dbg !536, !tbaa !218
  %13 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 4, !dbg !537
  store i8 0, i8* %13, align 1, !dbg !538
  %14 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 5, !dbg !539
  %15 = bitcast i8* %14 to i16*, !dbg !539
  store i16 2304, i16* %15, align 1, !dbg !540, !tbaa !249
  %16 = getelementptr inbounds [44 x i8], [44 x i8]* %2, i32 0, i32 15, !dbg !541
  store i8 0, i8* %16, align 1, !dbg !542, !tbaa !211
  call void @llvm.dbg.value(metadata i8 16, metadata !517, metadata !DIExpression()), !dbg !543
  %17 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 1, i8 zeroext 9, i8* nonnull %3, i32 16) #7, !dbg !544
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %3) #6, !dbg !545
  ret i32 %17, !dbg !546
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden %struct.respone_pdu_handler* @get_arp_deal_respone_handlers() local_unnamed_addr #5 section ".bt_stack_code" !dbg !547 {
  ret %struct.respone_pdu_handler* getelementptr inbounds ([8 x %struct.respone_pdu_handler], [8 x %struct.respone_pdu_handler]* @arp_deal_respone_handlers, i32 0, i32 0), !dbg !551
}

; Function Attrs: nounwind optsize
define hidden i32 @handle_vendordep_pdu_res(%struct.avctp*, i8 zeroext, i8* nocapture readonly, i8* nocapture readonly, i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !552 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !556, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8 %1, metadata !557, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i8* %2, metadata !558, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %3, metadata !559, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* %4, metadata !560, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 %5, metadata !561, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata %struct.respone_pdu_handler* null, metadata !562, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i8* %4, metadata !572, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i32 %21, metadata !564, metadata !DIExpression()), !dbg !581
  %7 = load i8, i8* %2, align 1, !dbg !582, !tbaa !211
  %8 = icmp eq i8 %7, 9, !dbg !584
  br i1 %8, label %60, label %9, !dbg !585

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !586
  %11 = load i8, i8* %10, align 1, !dbg !586, !tbaa !211
  %12 = zext i8 %11 to i32, !dbg !586
  %13 = shl nuw nsw i32 %12, 8, !dbg !587
  %14 = load i8, i8* %4, align 1, !dbg !588, !tbaa !211
  %15 = zext i8 %14 to i32, !dbg !588
  %16 = shl nuw nsw i32 %15, 16, !dbg !589
  %17 = or i32 %16, %13, !dbg !590
  %18 = getelementptr inbounds i8, i8* %4, i32 2, !dbg !591
  %19 = load i8, i8* %18, align 1, !dbg !591, !tbaa !211
  %20 = zext i8 %19 to i32, !dbg !591
  %21 = or i32 %17, %20, !dbg !592
  %22 = icmp eq i8 %7, 10, !dbg !593
  %23 = icmp ne i32 %21, 6488, !dbg !595
  %24 = or i1 %22, %23, !dbg !597
  %25 = icmp slt i32 %5, 7, !dbg !598
  %26 = or i1 %25, %24, !dbg !597
  br i1 %26, label %60, label %27, !dbg !597

; <label>:27:                                     ; preds = %9
  %28 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 4, !dbg !600
  %29 = load %struct.respone_pdu_handler*, %struct.respone_pdu_handler** %28, align 4, !dbg !600, !tbaa !602
  call void @llvm.dbg.value(metadata %struct.respone_pdu_handler* %29, metadata !562, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata %struct.respone_pdu_handler* %29, metadata !562, metadata !DIExpression()), !dbg !571
  %30 = getelementptr inbounds %struct.respone_pdu_handler, %struct.respone_pdu_handler* %29, i32 0, i32 0, !dbg !603
  %31 = load i8, i8* %30, align 4, !dbg !603, !tbaa !606
  %32 = icmp eq i8 %31, 0, !dbg !608
  br i1 %32, label %48, label %33, !dbg !608

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds i8, i8* %4, i32 3
  %35 = load i8, i8* %34, align 1, !tbaa !218
  br label %36, !dbg !608

; <label>:36:                                     ; preds = %42, %33
  %37 = phi i8 [ %31, %33 ], [ %45, %42 ]
  %38 = phi %struct.respone_pdu_handler* [ %29, %33 ], [ %43, %42 ]
  %39 = icmp eq i8 %37, %35, !dbg !610
  br i1 %39, label %47, label %40, !dbg !613

; <label>:40:                                     ; preds = %36
  %41 = icmp eq i8 %37, 20, !dbg !614
  br i1 %41, label %59, label %42, !dbg !616

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.respone_pdu_handler, %struct.respone_pdu_handler* %38, i32 1, !dbg !617
  call void @llvm.dbg.value(metadata %struct.respone_pdu_handler* %43, metadata !562, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata %struct.respone_pdu_handler* %43, metadata !562, metadata !DIExpression()), !dbg !571
  %44 = getelementptr inbounds %struct.respone_pdu_handler, %struct.respone_pdu_handler* %43, i32 0, i32 0, !dbg !603
  %45 = load i8, i8* %44, align 4, !dbg !603, !tbaa !606
  %46 = icmp eq i8 %45, 0, !dbg !608
  br i1 %46, label %51, label %36, !dbg !608, !llvm.loop !619

; <label>:47:                                     ; preds = %36
  br label %48, !dbg !622

; <label>:48:                                     ; preds = %47, %27
  %49 = phi %struct.respone_pdu_handler* [ %29, %27 ], [ %38, %47 ]
  %50 = icmp eq %struct.respone_pdu_handler* %49, null, !dbg !622
  br i1 %50, label %60, label %52, !dbg !624

; <label>:51:                                     ; preds = %42
  br label %52, !dbg !625

; <label>:52:                                     ; preds = %51, %48
  %53 = phi %struct.respone_pdu_handler* [ %49, %48 ], [ %43, %51 ]
  %54 = getelementptr inbounds %struct.respone_pdu_handler, %struct.respone_pdu_handler* %53, i32 0, i32 2, !dbg !625
  %55 = load i8 (%struct.avctp*, i8, i8, i8*, i32)*, i8 (%struct.avctp*, i8, i8, i8*, i32)** %54, align 4, !dbg !625, !tbaa !626
  %56 = load i8, i8* %3, align 1, !dbg !627, !tbaa !211
  %57 = tail call zeroext i8 %55(%struct.avctp* %0, i8 zeroext %7, i8 zeroext %56, i8* nonnull %4, i32 %5) #7, !dbg !628
  %58 = zext i8 %57 to i32, !dbg !628
  br label %60, !dbg !629

; <label>:59:                                     ; preds = %40
  br label %60, !dbg !630

; <label>:60:                                     ; preds = %59, %52, %48, %9, %6
  %61 = phi i32 [ %58, %52 ], [ 0, %9 ], [ 0, %6 ], [ 0, %48 ], [ 0, %59 ]
  ret i32 %61, !dbg !630
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden %struct.control_pdu_handler* @get_arp_control_pdu_handlers() local_unnamed_addr #5 section ".bt_stack_code" !dbg !631 {
  ret %struct.control_pdu_handler* getelementptr inbounds ([7 x %struct.control_pdu_handler], [7 x %struct.control_pdu_handler]* @arp_control_handlers, i32 0, i32 0), !dbg !634
}

; Function Attrs: nounwind optsize
define hidden i32 @handle_vendordep_pdu(%struct.avctp*, i8 zeroext, i8* nocapture, i8* nocapture readnone, i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !635 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !637, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i8 %1, metadata !638, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %2, metadata !639, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8* %3, metadata !640, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8* %4, metadata !641, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i32 %5, metadata !642, metadata !DIExpression()), !dbg !651
  %7 = bitcast i8* %4 to %struct.avrcp_header*, !dbg !652
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %7, metadata !644, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i8* %4, metadata !572, metadata !DIExpression()), !dbg !654
  %8 = load i8, i8* %4, align 1, !dbg !656, !tbaa !211
  %9 = zext i8 %8 to i32, !dbg !656
  %10 = shl nuw nsw i32 %9, 16, !dbg !657
  %11 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !658
  %12 = load i8, i8* %11, align 1, !dbg !658, !tbaa !211
  %13 = zext i8 %12 to i32, !dbg !658
  %14 = shl nuw nsw i32 %13, 8, !dbg !659
  %15 = or i32 %14, %10, !dbg !660
  %16 = getelementptr inbounds i8, i8* %4, i32 2, !dbg !661
  %17 = load i8, i8* %16, align 1, !dbg !661, !tbaa !211
  %18 = zext i8 %17 to i32, !dbg !661
  %19 = or i32 %15, %18, !dbg !662
  call void @llvm.dbg.value(metadata i32 %19, metadata !645, metadata !DIExpression()), !dbg !663
  %20 = icmp eq i32 %19, 6488, !dbg !664
  br i1 %20, label %22, label %21, !dbg !666

; <label>:21:                                     ; preds = %6
  store i8 8, i8* %2, align 1, !dbg !667, !tbaa !211
  br label %74, !dbg !669

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !670
  store i8 0, i8* %23, align 1, !dbg !671
  %24 = icmp slt i32 %5, 7, !dbg !672
  br i1 %24, label %69, label %25, !dbg !674

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 3, !dbg !675
  %27 = load %struct.control_pdu_handler*, %struct.control_pdu_handler** %26, align 4, !dbg !675, !tbaa !677
  call void @llvm.dbg.value(metadata %struct.control_pdu_handler* %27, metadata !643, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.control_pdu_handler* %27, metadata !643, metadata !DIExpression()), !dbg !678
  %28 = getelementptr inbounds %struct.control_pdu_handler, %struct.control_pdu_handler* %27, i32 0, i32 0, !dbg !679
  %29 = load i8, i8* %28, align 4, !dbg !679, !tbaa !682
  %30 = icmp eq i8 %29, 0, !dbg !684
  br i1 %30, label %44, label %31, !dbg !684

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds i8, i8* %4, i32 3, !dbg !686
  %33 = load i8, i8* %32, align 1, !tbaa !218
  br label %34, !dbg !684

; <label>:34:                                     ; preds = %38, %31
  %35 = phi i8 [ %29, %31 ], [ %41, %38 ]
  %36 = phi %struct.control_pdu_handler* [ %27, %31 ], [ %39, %38 ]
  %37 = icmp eq i8 %35, %33, !dbg !689
  br i1 %37, label %43, label %38, !dbg !690

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.control_pdu_handler, %struct.control_pdu_handler* %36, i32 1, !dbg !691
  call void @llvm.dbg.value(metadata %struct.control_pdu_handler* %39, metadata !643, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.control_pdu_handler* %39, metadata !643, metadata !DIExpression()), !dbg !678
  %40 = getelementptr inbounds %struct.control_pdu_handler, %struct.control_pdu_handler* %39, i32 0, i32 0, !dbg !679
  %41 = load i8, i8* %40, align 4, !dbg !679, !tbaa !682
  %42 = icmp eq i8 %41, 0, !dbg !684
  br i1 %42, label %47, label %34, !dbg !684, !llvm.loop !693

; <label>:43:                                     ; preds = %34
  br label %44, !dbg !696

; <label>:44:                                     ; preds = %43, %25
  %45 = phi %struct.control_pdu_handler* [ %27, %25 ], [ %36, %43 ]
  %46 = icmp eq %struct.control_pdu_handler* %45, null, !dbg !696
  br i1 %46, label %69, label %48, !dbg !698

; <label>:47:                                     ; preds = %38
  br label %48, !dbg !699

; <label>:48:                                     ; preds = %47, %44
  %49 = phi %struct.control_pdu_handler* [ %45, %44 ], [ %39, %47 ]
  %50 = getelementptr inbounds %struct.control_pdu_handler, %struct.control_pdu_handler* %49, i32 0, i32 1, !dbg !699
  %51 = load i8, i8* %50, align 1, !dbg !699, !tbaa !701
  %52 = load i8, i8* %2, align 1, !dbg !702, !tbaa !211
  %53 = icmp eq i8 %51, %52, !dbg !703
  br i1 %53, label %54, label %69, !dbg !704

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds %struct.control_pdu_handler, %struct.control_pdu_handler* %49, i32 0, i32 2, !dbg !706
  %56 = load i8 (%struct.avctp*, %struct.avrcp_header*, i8)*, i8 (%struct.avctp*, %struct.avrcp_header*, i8)** %55, align 4, !dbg !706, !tbaa !708
  %57 = icmp eq i8 (%struct.avctp*, %struct.avrcp_header*, i8)* %56, null, !dbg !709
  br i1 %57, label %69, label %58, !dbg !710

; <label>:58:                                     ; preds = %54
  %59 = tail call zeroext i8 %56(%struct.avctp* %0, %struct.avrcp_header* nonnull %7, i8 zeroext %1) #7, !dbg !711
  store i8 %59, i8* %2, align 1, !dbg !712, !tbaa !211
  %60 = getelementptr inbounds i8, i8* %4, i32 5, !dbg !713
  %61 = bitcast i8* %60 to i16*, !dbg !713
  %62 = load i16, i16* %61, align 1, !dbg !713, !tbaa !249
  %63 = zext i16 %62 to i32, !dbg !713
  %64 = shl nuw nsw i32 %63, 8, !dbg !713
  %65 = and i32 %64, 65280, !dbg !713
  %66 = lshr i32 %63, 8, !dbg !713
  %67 = or i32 %65, %66, !dbg !713
  %68 = add nuw nsw i32 %67, 7, !dbg !714
  br label %74, !dbg !715

; <label>:69:                                     ; preds = %54, %48, %44, %22
  %70 = phi i8 [ 0, %22 ], [ 0, %48 ], [ 0, %44 ], [ 1, %54 ]
  %71 = getelementptr inbounds i8, i8* %4, i32 7
  store i8 %70, i8* %71, align 1, !tbaa !211
  %72 = getelementptr inbounds i8, i8* %4, i32 5, !dbg !716
  %73 = bitcast i8* %72 to i16*, !dbg !716
  store i16 256, i16* %73, align 1, !dbg !717, !tbaa !249
  store i8 10, i8* %2, align 1, !dbg !718, !tbaa !211
  br label %74, !dbg !719

; <label>:74:                                     ; preds = %69, %58, %21
  %75 = phi i32 [ 0, %21 ], [ 8, %69 ], [ %68, %58 ]
  ret i32 %75, !dbg !720
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_get_capabilities_resp(%struct.avctp*, i8 zeroext, i8 zeroext, i8* readonly, i32) #0 section ".bt_stack_code" !dbg !721 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !725, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8 %1, metadata !726, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8 %2, metadata !727, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %3, metadata !728, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %4, metadata !729, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i16 0, metadata !731, metadata !DIExpression()), !dbg !742
  %6 = icmp eq i8* %3, null, !dbg !743
  br i1 %6, label %40, label %7, !dbg !745

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !746
  %9 = load i8, i8* %8, align 1, !dbg !748, !tbaa !211
  %10 = icmp eq i8 %9, 3, !dbg !749
  br i1 %10, label %11, label %40, !dbg !750

; <label>:11:                                     ; preds = %7
  tail call void @set_cmd_pending_bit(%struct.avctp* %0, i32 14) #7, !dbg !752
  %12 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !753
  %13 = load i8, i8* %12, align 1, !dbg !753, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %13, metadata !732, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i8 %13, metadata !732, metadata !DIExpression()), !dbg !754
  %14 = icmp eq i8 %13, 0, !dbg !755
  br i1 %14, label %40, label %15, !dbg !757

; <label>:15:                                     ; preds = %11
  %16 = load i8, i8* @more_avctp_cmd_support, align 1
  %17 = icmp eq i8 %16, 0
  %18 = zext i8 %13 to i32, !dbg !757
  br label %19, !dbg !757

; <label>:19:                                     ; preds = %35, %15
  %20 = phi i32 [ %18, %15 ], [ %38, %35 ]
  %21 = add nuw nsw i32 %20, 1, !dbg !759
  %22 = getelementptr inbounds i8, i8* %8, i32 %21, !dbg !760
  %23 = load i8, i8* %22, align 1, !dbg !760, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %23, metadata !733, metadata !DIExpression()), !dbg !761
  %24 = zext i8 %23 to i32, !dbg !762
  %25 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %24, i32 0, !dbg !763
  %26 = load i8, i8* %25, align 1, !dbg !764
  %27 = or i8 %26, 4, !dbg !764
  store i8 %27, i8* %25, align 1, !dbg !764
  switch i8 %23, label %35 [
    i8 1, label %28
    i8 2, label %29
    i8 8, label %31
    i8 13, label %33
  ], !dbg !765

; <label>:28:                                     ; preds = %19
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 1) #7, !dbg !766
  br label %35, !dbg !768

; <label>:29:                                     ; preds = %19
  br i1 %17, label %35, label %30, !dbg !769

; <label>:30:                                     ; preds = %29
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 2) #7, !dbg !770
  br label %35, !dbg !773

; <label>:31:                                     ; preds = %19
  br i1 %17, label %35, label %32, !dbg !774

; <label>:32:                                     ; preds = %31
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 3) #7, !dbg !775
  br label %35, !dbg !778

; <label>:33:                                     ; preds = %19
  br i1 %17, label %35, label %34, !dbg !779

; <label>:34:                                     ; preds = %33
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 13) #7, !dbg !780
  br label %35, !dbg !783

; <label>:35:                                     ; preds = %34, %33, %32, %31, %30, %29, %28, %19
  %36 = trunc i32 %20 to i8, !dbg !784
  %37 = icmp eq i8 %36, 1, !dbg !755
  %38 = add nsw i32 %20, -1, !dbg !784
  br i1 %37, label %39, label %19, !dbg !757, !llvm.loop !786

; <label>:39:                                     ; preds = %35
  br label %40, !dbg !789

; <label>:40:                                     ; preds = %39, %11, %7, %5
  ret i8 0, !dbg !789
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_handle_event(%struct.avctp*, i8 zeroext, i8 zeroext, i8* readonly, i32) #0 section ".bt_stack_code" !dbg !790 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !792, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8 %1, metadata !793, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i8 %2, metadata !794, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i8* %3, metadata !795, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 %4, metadata !796, metadata !DIExpression()), !dbg !803
  %6 = bitcast i8* %3 to %struct.avrcp_header*, !dbg !804
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %6, metadata !797, metadata !DIExpression()), !dbg !805
  %7 = icmp eq i8 %1, 15, !dbg !806
  br i1 %7, label %12, label %8, !dbg !808

; <label>:8:                                      ; preds = %5
  %9 = icmp ne i8 %1, 13, !dbg !809
  %10 = icmp eq i8* %3, null, !dbg !811
  %11 = or i1 %9, %10, !dbg !812
  br i1 %11, label %90, label %14, !dbg !812

; <label>:12:                                     ; preds = %5
  %13 = icmp eq i8* %3, null, !dbg !811
  br i1 %13, label %90, label %35, !dbg !813

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !815
  %16 = load i8, i8* %15, align 1, !dbg !816, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %16, metadata !798, metadata !DIExpression()), !dbg !817
  %17 = zext i8 %16 to i32, !dbg !818
  %18 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %17, i32 0, !dbg !821
  %19 = load i8, i8* %18, align 1, !dbg !822
  %20 = and i8 %19, -9, !dbg !822
  store i8 %20, i8* %18, align 1, !dbg !822
  switch i8 %16, label %90 [
    i8 1, label %21
    i8 8, label %22
    i8 2, label %26
    i8 13, label %30
    i8 5, label %31
  ], !dbg !823

; <label>:21:                                     ; preds = %14
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 1) #7, !dbg !824
  br label %90, !dbg !826

; <label>:22:                                     ; preds = %14
  %23 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !827, !tbaa !211
  %24 = icmp eq i8 %23, 0, !dbg !827
  br i1 %24, label %90, label %25, !dbg !829

; <label>:25:                                     ; preds = %22
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 3) #7, !dbg !830
  br label %90, !dbg !832

; <label>:26:                                     ; preds = %14
  %27 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !833, !tbaa !211
  %28 = icmp eq i8 %27, 0, !dbg !833
  br i1 %28, label %90, label %29, !dbg !835

; <label>:29:                                     ; preds = %26
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 2) #7, !dbg !836
  br label %90, !dbg !838

; <label>:30:                                     ; preds = %14
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 13) #7, !dbg !839
  br label %90, !dbg !840

; <label>:31:                                     ; preds = %14
  %32 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !841, !tbaa !211
  %33 = icmp eq i8 %32, 0, !dbg !841
  br i1 %33, label %90, label %34, !dbg !843

; <label>:34:                                     ; preds = %31
  tail call void @set_cmd_pending_bit(%struct.avctp* nonnull %0, i32 9) #7, !dbg !844
  br label %90, !dbg !846

; <label>:35:                                     ; preds = %12
  %36 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !815
  %37 = load i8, i8* %36, align 1, !dbg !816, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %16, metadata !798, metadata !DIExpression()), !dbg !817
  switch i8 %37, label %90 [
    i8 13, label %38
    i8 1, label %48
    i8 2, label %80
    i8 8, label %85
  ], !dbg !847

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.value(metadata %struct.avctp* null, metadata !848, metadata !DIExpression()), !dbg !855
  %39 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !858
  %40 = load i8, i8* %39, align 1, !dbg !858, !tbaa !211
  %41 = and i8 %40, 127, !dbg !859
  call void @llvm.dbg.value(metadata i8 %41, metadata !854, metadata !DIExpression()), !dbg !860
  %42 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !861, !tbaa !211
  %43 = icmp slt i8 %42, 0, !dbg !861
  br i1 %43, label %44, label %47, !dbg !863

; <label>:44:                                     ; preds = %38
  %45 = zext i8 %41 to i32, !dbg !864
  %46 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 %45) #7, !dbg !864
  br label %47, !dbg !864

; <label>:47:                                     ; preds = %44, %38
  tail call void @emitter_rx_vol_change(i8 zeroext %41) #7, !dbg !866
  br label %90, !dbg !867

; <label>:48:                                     ; preds = %35
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !868, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %6, metadata !871, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i32 2, metadata !873, metadata !DIExpression()), !dbg !878
  %49 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !879
  %50 = load i8, i8* %49, align 1, !dbg !879, !tbaa !211
  %51 = icmp eq i8 %50, 1, !dbg !880
  %52 = select i1 %51, i32 1, i32 2, !dbg !880
  %53 = icmp eq i8 %50, 0, !dbg !880
  %54 = select i1 %53, i32 0, i32 %52, !dbg !880
  call void @llvm.dbg.value(metadata i32 %54, metadata !873, metadata !DIExpression()), !dbg !878
  %55 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 6, !dbg !881
  %56 = bitcast [3 x i8]* %55 to i24*, !dbg !881
  %57 = load i24, i24* %56, align 1, !dbg !881
  %58 = lshr i24 %57, 8, !dbg !881
  %59 = and i24 %58, 7, !dbg !881
  %60 = zext i24 %59 to i32, !dbg !881
  %61 = icmp eq i32 %60, %54, !dbg !883
  br i1 %61, label %90, label %62, !dbg !884

; <label>:62:                                     ; preds = %48
  %63 = trunc i32 %54 to i24, !dbg !885
  %64 = shl nuw nsw i24 %63, 8, !dbg !885
  %65 = and i24 %57, -1793, !dbg !885
  %66 = or i24 %64, %65, !dbg !885
  store i24 %66, i24* %56, align 1, !dbg !885
  %67 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !887, !tbaa !230
  %68 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %67, i32 0, i32 0, !dbg !889
  %69 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %68, align 4, !dbg !889, !tbaa !890
  %70 = icmp eq void (i8*, i32, i32)* %69, null, !dbg !887
  br i1 %70, label %74, label %71, !dbg !891

; <label>:71:                                     ; preds = %62
  %72 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 0, i32 0, !dbg !892
  tail call void %69(i8* %72, i32 16, i32 %54) #7, !dbg !894
  %73 = load i24, i24* %56, align 1
  br label %74, !dbg !895

; <label>:74:                                     ; preds = %71, %62
  %75 = phi i24 [ %66, %62 ], [ %73, %71 ]
  %76 = icmp eq i32 %54, 1, !dbg !896
  %77 = and i24 %75, -16385
  %78 = or i24 %75, 16384, !dbg !898
  %79 = select i1 %76, i24 %78, i24 %77, !dbg !900
  store i24 %79, i24* %56, align 1
  br label %90, !dbg !901

; <label>:80:                                     ; preds = %35
  %81 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !902, !tbaa !211
  %82 = icmp eq i8 %81, 0, !dbg !902
  br i1 %82, label %90, label %83, !dbg !904

; <label>:83:                                     ; preds = %80
  %84 = tail call i32 @avrcp_get_element_attributes(%struct.avctp* %0) #8, !dbg !905
  br label %90, !dbg !907

; <label>:85:                                     ; preds = %35
  %86 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !908, !tbaa !211
  %87 = icmp eq i8 %86, 0, !dbg !908
  br i1 %87, label %90, label %88, !dbg !910

; <label>:88:                                     ; preds = %85
  %89 = tail call fastcc zeroext i8 @set_remote_player_value(%struct.avctp* %0, %struct.avrcp_header* nonnull %6, i8 zeroext 1) #8, !dbg !911
  br label %90, !dbg !913

; <label>:90:                                     ; preds = %88, %85, %83, %80, %74, %48, %47, %35, %34, %31, %30, %29, %26, %25, %22, %21, %14, %12, %8
  %91 = phi i8 [ 0, %12 ], [ 0, %8 ], [ 0, %22 ], [ 0, %26 ], [ 0, %31 ], [ 0, %34 ], [ 0, %29 ], [ 0, %25 ], [ 0, %14 ], [ 0, %30 ], [ 0, %21 ], [ 1, %80 ], [ 1, %85 ], [ 1, %88 ], [ 1, %83 ], [ 1, %47 ], [ 1, %48 ], [ 1, %74 ], [ 1, %35 ]
  ret i8 %91, !dbg !914
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_list_player_attributes_rsp(%struct.avctp*, i8 zeroext, i8 zeroext, i8* nocapture readonly, i32) #0 section ".bt_stack_code" !dbg !915 {
  %6 = alloca [12 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [12 x i8]* %6, metadata !924, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !917, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8 %1, metadata !918, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata i8 %2, metadata !919, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i8* %3, metadata !920, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %4, metadata !921, metadata !DIExpression()), !dbg !940
  %7 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !941, !tbaa !211
  %8 = icmp eq i8 %7, 0, !dbg !941
  %9 = icmp eq i8 %1, 10, !dbg !943
  %10 = or i1 %9, %8, !dbg !945
  br i1 %10, label %47, label %11, !dbg !945

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !946
  %13 = load i8, i8* %12, align 1, !dbg !947, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %13, metadata !923, metadata !DIExpression()), !dbg !948
  %14 = getelementptr inbounds i8, i8* %3, i32 5, !dbg !949
  %15 = bitcast i8* %14 to i16*, !dbg !949
  %16 = load i16, i16* %15, align 1, !dbg !949, !tbaa !249
  %17 = zext i16 %16 to i32, !dbg !949
  %18 = shl nuw nsw i32 %17, 8, !dbg !949
  %19 = and i32 %18, 65280, !dbg !949
  %20 = lshr i32 %17, 8, !dbg !949
  %21 = or i32 %19, %20, !dbg !949
  %22 = zext i8 %13 to i32, !dbg !951
  %23 = icmp ult i32 %21, %22, !dbg !952
  br i1 %23, label %47, label %24, !dbg !953

; <label>:24:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !929, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i8* %40, metadata !930, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i8 %13, metadata !931, metadata !DIExpression()), !dbg !956
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %25) #6, !dbg !957
  call void @llvm.dbg.value(metadata i8* %25, metadata !198, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !960
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 1, !dbg !961
  call void @llvm.memset.p0i8.i64(i8* nonnull %25, i8 0, i64 12, i32 1, i1 false) #6, !dbg !962
  store i8 25, i8* %26, align 1, !dbg !963, !tbaa !211
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 2, !dbg !964
  store i8 88, i8* %27, align 1, !dbg !965, !tbaa !211
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 3, !dbg !966
  store i8 19, i8* %28, align 1, !dbg !967, !tbaa !218
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 4, !dbg !968
  store i8 0, i8* %29, align 1, !dbg !969
  %30 = add nuw nsw i32 %22, 1, !dbg !970
  %31 = shl nuw nsw i32 %30, 8, !dbg !970
  %32 = lshr i32 %30, 8, !dbg !970
  %33 = or i32 %31, %32, !dbg !970
  %34 = trunc i32 %33 to i16, !dbg !970
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 5, !dbg !971
  %36 = bitcast i8* %35 to i16*, !dbg !971
  store i16 %34, i16* %36, align 1, !dbg !972, !tbaa !249
  %37 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 7, !dbg !973
  store i8 %13, i8* %37, align 1, !dbg !974, !tbaa !211
  call void @llvm.dbg.value(metadata i32 0, metadata !933, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 0, metadata !933, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i8 %13, metadata !931, metadata !DIExpression()), !dbg !956
  %38 = icmp eq i8 %13, 0, !dbg !976
  br i1 %38, label %45, label %39, !dbg !980

; <label>:39:                                     ; preds = %24
  %40 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !982
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 8, !dbg !983
  %42 = add i8 %13, -1, !dbg !983
  %43 = zext i8 %42 to i32, !dbg !983
  %44 = add nuw nsw i32 %43, 1, !dbg !983
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %40, i32 %44, i32 1, i1 false) #6, !dbg !985
  br label %45, !dbg !986

; <label>:45:                                     ; preds = %39, %24
  %46 = call i32 @avctp_send_vendordep_req(%struct.avctp* %0, i8 zeroext 1, i8 zeroext 9, i8* nonnull %25, i32 12) #7, !dbg !986
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %25) #6, !dbg !987
  br label %47, !dbg !988

; <label>:47:                                     ; preds = %45, %11, %5
  ret i8 0, !dbg !989
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_player_value_rsp(%struct.avctp* nocapture, i8 zeroext, i8 zeroext, i8* readonly, i32) #0 section ".bt_stack_code" !dbg !990 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !992, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 %1, metadata !993, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8 %2, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %3, metadata !995, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 %4, metadata !996, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %13, metadata !997, metadata !DIExpression()), !dbg !1003
  %6 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1004, !tbaa !211
  %7 = icmp eq i8 %6, 0, !dbg !1004
  %8 = icmp eq i8* %3, null, !dbg !1006
  %9 = or i1 %8, %7, !dbg !1008
  %10 = icmp eq i8 %1, 10, !dbg !1009
  %11 = or i1 %10, %9, !dbg !1008
  br i1 %11, label %15, label %12, !dbg !1008

; <label>:12:                                     ; preds = %5
  %13 = bitcast i8* %3 to %struct.avrcp_header*, !dbg !1011
  %14 = tail call fastcc zeroext i8 @set_remote_player_value(%struct.avctp* %0, %struct.avrcp_header* %13, i8 zeroext 0) #8, !dbg !1012
  br label %15, !dbg !1013

; <label>:15:                                     ; preds = %12, %5
  %16 = phi i8 [ %14, %12 ], [ 0, %5 ]
  ret i8 %16, !dbg !1014
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_get_play_status_rsp(%struct.avctp* nocapture readnone, i8 zeroext, i8 zeroext, i8* readonly, i32) #0 section ".bt_stack_code" !dbg !1015 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1017, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i8 %1, metadata !1018, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %2, metadata !1019, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i8* %3, metadata !1020, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %4, metadata !1021, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !1025, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i16 0, metadata !1025, metadata !DIExpression()), !dbg !1037
  %6 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1038, !tbaa !211
  %7 = icmp eq i8 %6, 0, !dbg !1038
  %8 = icmp eq i8* %3, null, !dbg !1040
  %9 = or i1 %8, %7, !dbg !1042
  %10 = icmp eq i8 %1, 10, !dbg !1043
  %11 = or i1 %10, %9, !dbg !1042
  br i1 %11, label %82, label %12, !dbg !1042

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds i8, i8* %3, i32 10, !dbg !1045
  %14 = load i8, i8* %13, align 1, !dbg !1045, !tbaa !211
  %15 = zext i8 %14 to i32, !dbg !1045
  %16 = getelementptr inbounds i8, i8* %3, i32 9, !dbg !1045
  %17 = load i8, i8* %16, align 1, !dbg !1045, !tbaa !211
  %18 = zext i8 %17 to i32, !dbg !1045
  %19 = shl nuw nsw i32 %18, 8, !dbg !1045
  %20 = or i32 %19, %15, !dbg !1045
  %21 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !1045
  %22 = load i8, i8* %21, align 1, !dbg !1045, !tbaa !211
  %23 = zext i8 %22 to i32, !dbg !1045
  %24 = shl nuw nsw i32 %23, 16, !dbg !1045
  %25 = or i32 %20, %24, !dbg !1045
  %26 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !1045
  %27 = load i8, i8* %26, align 1, !dbg !1045, !tbaa !211
  %28 = zext i8 %27 to i32, !dbg !1045
  %29 = shl nuw i32 %28, 24, !dbg !1045
  %30 = or i32 %25, %29, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %30, metadata !1023, metadata !DIExpression()), !dbg !1046
  %31 = getelementptr inbounds i8, i8* %3, i32 14, !dbg !1047
  %32 = load i8, i8* %31, align 1, !dbg !1047, !tbaa !211
  %33 = zext i8 %32 to i32, !dbg !1047
  %34 = getelementptr inbounds i8, i8* %3, i32 13, !dbg !1047
  %35 = load i8, i8* %34, align 1, !dbg !1047, !tbaa !211
  %36 = zext i8 %35 to i32, !dbg !1047
  %37 = shl nuw nsw i32 %36, 8, !dbg !1047
  %38 = or i32 %37, %33, !dbg !1047
  %39 = getelementptr inbounds i8, i8* %3, i32 12, !dbg !1047
  %40 = load i8, i8* %39, align 1, !dbg !1047, !tbaa !211
  %41 = zext i8 %40 to i32, !dbg !1047
  %42 = shl nuw nsw i32 %41, 16, !dbg !1047
  %43 = or i32 %38, %42, !dbg !1047
  %44 = getelementptr inbounds i8, i8* %3, i32 11, !dbg !1047
  %45 = load i8, i8* %44, align 1, !dbg !1047, !tbaa !211
  %46 = zext i8 %45 to i32, !dbg !1047
  %47 = shl nuw i32 %46, 24, !dbg !1047
  %48 = or i32 %43, %47, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %48, metadata !1024, metadata !DIExpression()), !dbg !1048
  %49 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1049, !tbaa !230
  %50 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %49, i32 0, i32 8, !dbg !1051
  %51 = load void (i8, i32, i8*, i16)*, void (i8, i32, i8*, i16)** %50, align 4, !dbg !1051, !tbaa !1052
  %52 = icmp eq void (i8, i32, i8*, i16)* %51, null, !dbg !1049
  br i1 %52, label %61, label %53, !dbg !1053

; <label>:53:                                     ; preds = %12
  %54 = tail call zeroext i8 @bt_music_total_time(i32 %30) #8, !dbg !1054
  %55 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1056, !tbaa !230
  %56 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %55, i32 0, i32 8, !dbg !1057
  %57 = load void (i8, i32, i8*, i16)*, void (i8, i32, i8*, i16)** %56, align 4, !dbg !1057, !tbaa !1052
  tail call void %57(i8 zeroext 0, i32 %30, i8* null, i16 zeroext 0) #7, !dbg !1056
  %58 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1058, !tbaa !230
  %59 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %58, i32 0, i32 8, !dbg !1059
  %60 = load void (i8, i32, i8*, i16)*, void (i8, i32, i8*, i16)** %59, align 4, !dbg !1059, !tbaa !1052
  tail call void %60(i8 zeroext 0, i32 %48, i8* null, i16 zeroext 0) #7, !dbg !1058
  br label %82, !dbg !1060

; <label>:61:                                     ; preds = %12
  %62 = udiv i32 %30, 60000, !dbg !1061
  %63 = and i32 %62, 255, !dbg !1063
  %64 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1064, !tbaa !211
  %65 = icmp slt i8 %64, 0, !dbg !1064
  br i1 %65, label %66, label %82, !dbg !1066

; <label>:66:                                     ; preds = %61
  %67 = udiv i32 %30, 1000, !dbg !1067
  %68 = mul nsw i32 %63, -60, !dbg !1068
  %69 = add i32 %68, %67, !dbg !1068
  %70 = and i32 %69, 255, !dbg !1069
  %71 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %63, i32 %70) #8, !dbg !1069
  %72 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1071, !tbaa !211
  %73 = udiv i32 %48, 60000, !dbg !1073
  %74 = and i32 %73, 255, !dbg !1074
  %75 = icmp slt i8 %72, 0, !dbg !1071
  br i1 %75, label %76, label %82, !dbg !1075

; <label>:76:                                     ; preds = %66
  %77 = udiv i32 %48, 1000, !dbg !1076
  %78 = mul nsw i32 %74, -60, !dbg !1077
  %79 = add i32 %78, %77, !dbg !1077
  %80 = and i32 %79, 255, !dbg !1078
  %81 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %74, i32 %80) #8, !dbg !1078
  br label %82, !dbg !1078

; <label>:82:                                     ; preds = %76, %66, %61, %53, %5
  ret i8 0, !dbg !1080
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_get_element_attributes_rsp(%struct.avctp* nocapture readnone, i8 zeroext, i8 zeroext, i8*, i32) #0 section ".bt_stack_code" !dbg !1081 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %1, metadata !1084, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %2, metadata !1085, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %3, metadata !1086, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %4, metadata !1087, metadata !DIExpression()), !dbg !1100
  %6 = load i8, i8* @more_avctp_cmd_support, align 1, !dbg !1101, !tbaa !211
  %7 = icmp eq i8 %6, 0, !dbg !1101
  %8 = icmp eq i8* %3, null, !dbg !1103
  %9 = or i1 %8, %7, !dbg !1105
  %10 = icmp eq i8 %1, 10, !dbg !1106
  %11 = or i1 %10, %9, !dbg !1105
  br i1 %11, label %61, label %12, !dbg !1105

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds i8, i8* %3, i32 6, !dbg !1108
  %14 = load i8, i8* %13, align 1, !dbg !1108, !tbaa !211
  %15 = zext i8 %14 to i32, !dbg !1108
  %16 = getelementptr inbounds i8, i8* %3, i32 5, !dbg !1108
  %17 = load i8, i8* %16, align 1, !dbg !1108, !tbaa !211
  %18 = zext i8 %17 to i32, !dbg !1108
  %19 = shl nuw nsw i32 %18, 8, !dbg !1108
  %20 = or i32 %19, %15, !dbg !1108
  %21 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !1109
  %22 = load i8, i8* %21, align 1, !dbg !1109, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %22, metadata !1095, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i16 8, metadata !1090, metadata !DIExpression()), !dbg !1111
  br label %23, !dbg !1112

; <label>:23:                                     ; preds = %54, %12
  %24 = phi i32 [ 8, %12 ], [ %57, %54 ]
  %25 = phi i8 [ %22, %12 ], [ %58, %54 ]
  call void @llvm.dbg.value(metadata i8 %25, metadata !1095, metadata !DIExpression()), !dbg !1110
  %26 = and i32 %24, 65535, !dbg !1113
  %27 = icmp ult i32 %26, %20, !dbg !1115
  br i1 %27, label %28, label %60, !dbg !1116

; <label>:28:                                     ; preds = %23
  %29 = add nuw nsw i32 %26, 3, !dbg !1117
  %30 = getelementptr inbounds i8, i8* %3, i32 %29, !dbg !1117
  %31 = load i8, i8* %30, align 1, !dbg !1117, !tbaa !211
  %32 = add nsw i32 %24, 6, !dbg !1119
  %33 = and i32 %32, 65535, !dbg !1120
  %34 = add nuw nsw i32 %33, 1, !dbg !1120
  %35 = getelementptr inbounds i8, i8* %3, i32 %34, !dbg !1120
  %36 = load i8, i8* %35, align 1, !dbg !1120, !tbaa !211
  %37 = zext i8 %36 to i16, !dbg !1120
  %38 = getelementptr inbounds i8, i8* %3, i32 %33, !dbg !1120
  %39 = load i8, i8* %38, align 1, !dbg !1120, !tbaa !211
  %40 = zext i8 %39 to i16, !dbg !1120
  %41 = shl nuw i16 %40, 8, !dbg !1120
  %42 = or i16 %41, %37, !dbg !1120
  call void @llvm.dbg.value(metadata i16 %42, metadata !1094, metadata !DIExpression()), !dbg !1121
  %43 = add nsw i32 %24, 8, !dbg !1122
  %44 = zext i16 %42 to i32, !dbg !1123
  %45 = icmp eq i16 %42, 0, !dbg !1125
  br i1 %45, label %54, label %46, !dbg !1126

; <label>:46:                                     ; preds = %28
  %47 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1127, !tbaa !230
  %48 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %47, i32 0, i32 8, !dbg !1130
  %49 = load void (i8, i32, i8*, i16)*, void (i8, i32, i8*, i16)** %48, align 4, !dbg !1130, !tbaa !1052
  %50 = icmp eq void (i8, i32, i8*, i16)* %49, null, !dbg !1127
  br i1 %50, label %54, label %51, !dbg !1131

; <label>:51:                                     ; preds = %46
  %52 = and i32 %43, 65535, !dbg !1132
  %53 = getelementptr inbounds i8, i8* %3, i32 %52, !dbg !1132
  tail call void %49(i8 zeroext %31, i32 0, i8* %53, i16 zeroext %42) #7, !dbg !1134
  br label %54, !dbg !1135

; <label>:54:                                     ; preds = %51, %46, %28
  %55 = and i32 %43, 65535, !dbg !1136
  %56 = getelementptr inbounds i8, i8* %3, i32 %55, !dbg !1136
  tail call void @avrcp_element_attr_rsp_ext_process(i8 zeroext %31, i32 0, i8* %56, i16 zeroext %42) #8, !dbg !1137
  %57 = add nuw nsw i32 %44, %55, !dbg !1138
  %58 = add i8 %25, -1, !dbg !1139
  call void @llvm.dbg.value(metadata i8 %58, metadata !1095, metadata !DIExpression()), !dbg !1110
  %59 = icmp eq i8 %58, 0, !dbg !1140
  br i1 %59, label %60, label %23, !dbg !1142, !llvm.loop !1143

; <label>:60:                                     ; preds = %54, %23
  br label %61, !dbg !1145

; <label>:61:                                     ; preds = %60, %5
  ret i8 0, !dbg !1145
}

; Function Attrs: optsize
declare void @set_cmd_pending_bit(%struct.avctp*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @set_remote_player_value(%struct.avctp* nocapture, %struct.avrcp_header* nocapture readonly, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1146 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1150, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %1, metadata !1151, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i8 %2, metadata !1152, metadata !DIExpression()), !dbg !1157
  %4 = zext i8 %2 to i32, !dbg !1158
  %5 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 %4, !dbg !1158
  %6 = load i8, i8* %5, align 1, !dbg !1158, !tbaa !211
  call void @llvm.dbg.value(metadata i8 %6, metadata !1153, metadata !DIExpression()), !dbg !1159
  %7 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 0, !dbg !1160
  %8 = load i8, i8* %7, align 1, !dbg !1160, !tbaa !211
  %9 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 4, !dbg !1161
  store i8 %8, i8* %9, align 1, !dbg !1162, !tbaa !1163
  %10 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 5, !dbg !1164
  store i8 0, i8* %10, align 4, !dbg !1165, !tbaa !1166
  %11 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 3, !dbg !1167
  %12 = load i16, i16* %11, align 1, !dbg !1167, !tbaa !249
  %13 = zext i16 %12 to i32, !dbg !1169
  %14 = zext i8 %6 to i32, !dbg !1170
  %15 = shl nuw nsw i32 %14, 1, !dbg !1171
  %16 = icmp ult i32 %13, %15, !dbg !1172
  br i1 %16, label %55, label %17, !dbg !1173

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %20, metadata !1154, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %20, metadata !1154, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %6, metadata !1153, metadata !DIExpression()), !dbg !1159
  %18 = icmp eq i8 %6, 0, !dbg !1175
  br i1 %18, label %55, label %19, !dbg !1179

; <label>:19:                                     ; preds = %17
  %20 = add nuw nsw i32 %4, 1, !dbg !1181
  br label %21, !dbg !1182

; <label>:21:                                     ; preds = %38, %19
  %22 = phi i32 [ %52, %38 ], [ %20, %19 ]
  %23 = phi i8 [ %51, %38 ], [ %6, %19 ]
  %24 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1182, !tbaa !211
  %25 = icmp slt i8 %24, 0, !dbg !1182
  %26 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 %22
  br i1 %25, label %30, label %27, !dbg !1185

; <label>:27:                                     ; preds = %21
  %28 = add nuw nsw i32 %22, 1, !dbg !1186
  %29 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 %28, !dbg !1187
  br label %38, !dbg !1185

; <label>:30:                                     ; preds = %21
  %31 = load i8, i8* %26, align 1, !dbg !1188, !tbaa !211
  %32 = zext i8 %31 to i32, !dbg !1188
  %33 = add nuw nsw i32 %22, 1, !dbg !1188
  %34 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 %33, !dbg !1188
  %35 = load i8, i8* %34, align 1, !dbg !1188, !tbaa !211
  %36 = zext i8 %35 to i32, !dbg !1188
  %37 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 %32, i32 %36) #8, !dbg !1188
  br label %38, !dbg !1188

; <label>:38:                                     ; preds = %30, %27
  %39 = phi i8* [ %29, %27 ], [ %34, %30 ], !dbg !1187
  %40 = load i8, i8* %26, align 1, !dbg !1190, !tbaa !211
  %41 = zext i8 %40 to i32, !dbg !1190
  %42 = shl i32 1, %41, !dbg !1190
  %43 = load i8, i8* %10, align 4, !dbg !1191, !tbaa !1166
  %44 = zext i8 %43 to i32, !dbg !1191
  %45 = or i32 %44, %42, !dbg !1191
  %46 = trunc i32 %45 to i8, !dbg !1191
  store i8 %46, i8* %10, align 4, !dbg !1191, !tbaa !1166
  %47 = load i8, i8* %39, align 1, !dbg !1187, !tbaa !211
  %48 = load i8, i8* %26, align 1, !dbg !1192, !tbaa !211
  %49 = zext i8 %48 to i32, !dbg !1193
  %50 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 3, i32 %49, !dbg !1193
  store i8 %47, i8* %50, align 1, !dbg !1194, !tbaa !211
  %51 = add i8 %23, -1, !dbg !1195
  call void @llvm.dbg.value(metadata i8 %51, metadata !1153, metadata !DIExpression()), !dbg !1159
  %52 = add nsw i32 %22, 2, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %52, metadata !1154, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %52, metadata !1154, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %51, metadata !1153, metadata !DIExpression()), !dbg !1159
  %53 = icmp eq i8 %51, 0, !dbg !1175
  br i1 %53, label %54, label %21, !dbg !1179, !llvm.loop !1198

; <label>:54:                                     ; preds = %38
  br label %55, !dbg !1201

; <label>:55:                                     ; preds = %54, %17, %3
  %56 = phi i8 [ 0, %3 ], [ 1, %17 ], [ 1, %54 ]
  ret i8 %56, !dbg !1201
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_handle_get_capabilities(%struct.avctp* nocapture readonly, %struct.avrcp_header* nocapture, i8 zeroext) #0 section ".bt_stack_code" !dbg !1202 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1204, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %1, metadata !1205, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 %2, metadata !1206, metadata !DIExpression()), !dbg !1211
  %4 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 3, !dbg !1212
  %5 = load i16, i16* %4, align 1, !dbg !1212, !tbaa !249
  %6 = zext i16 %5 to i32, !dbg !1212
  %7 = shl nuw nsw i32 %6, 8, !dbg !1212
  %8 = lshr i32 %6, 8, !dbg !1212
  %9 = and i32 %7, 65280, !dbg !1213
  %10 = or i32 %9, %8, !dbg !1213
  %11 = icmp eq i32 %10, 1, !dbg !1215
  br i1 %11, label %14, label %12, !dbg !1216

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 0, !dbg !1217
  br label %57, !dbg !1216

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 1, !dbg !1218
  store i8 0, i8* %15, align 1, !dbg !1219, !tbaa !211
  %16 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 0, !dbg !1220
  %17 = load i8, i8* %16, align 1, !dbg !1220, !tbaa !211
  switch i8 %17, label %57 [
    i8 2, label %19
    i8 3, label %18
  ], !dbg !1221

; <label>:18:                                     ; preds = %14
  br label %23, !dbg !1222

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1208, metadata !DIExpression()), !dbg !1228
  %20 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 2, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %20, metadata !198, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 6488, metadata !204, metadata !DIExpression()), !dbg !1235
  store i8 0, i8* %20, align 1, !dbg !1236, !tbaa !211
  %21 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 3, !dbg !1237
  store i8 25, i8* %21, align 1, !dbg !1238, !tbaa !211
  %22 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 4, !dbg !1239
  store i8 88, i8* %22, align 1, !dbg !1240, !tbaa !211
  call void @llvm.dbg.value(metadata i32 1, metadata !1208, metadata !DIExpression()), !dbg !1228
  store i16 1280, i16* %4, align 1, !dbg !1241, !tbaa !249
  store i8 1, i8* %15, align 1, !dbg !1242, !tbaa !211
  br label %59, !dbg !1243

; <label>:23:                                     ; preds = %46, %18
  %24 = phi i32 [ %47, %46 ], [ 1, %18 ]
  %25 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %24, i32 0, !dbg !1222
  %26 = load i8, i8* %25, align 1, !dbg !1222
  %27 = and i8 %26, 1, !dbg !1222
  %28 = icmp eq i8 %27, 0, !dbg !1244
  br i1 %28, label %46, label %29, !dbg !1245

; <label>:29:                                     ; preds = %23
  %30 = load i8, i8* %15, align 1, !dbg !1246, !tbaa !211
  %31 = add i8 %30, 1, !dbg !1246
  store i8 %31, i8* %15, align 1, !dbg !1246, !tbaa !211
  %32 = trunc i32 %24 to i8, !dbg !1248
  %33 = zext i8 %31 to i32, !dbg !1249
  %34 = add nuw nsw i32 %33, 1, !dbg !1250
  %35 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 %34, !dbg !1251
  store i8 %32, i8* %35, align 1, !dbg !1252, !tbaa !211
  %36 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1253, !tbaa !211
  %37 = icmp slt i8 %36, 0, !dbg !1253
  br i1 %37, label %38, label %46, !dbg !1255

; <label>:38:                                     ; preds = %29
  %39 = load i8, i8* %15, align 1, !dbg !1256, !tbaa !211
  %40 = zext i8 %39 to i32, !dbg !1256
  %41 = add nuw nsw i32 %40, 1, !dbg !1256
  %42 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 %41, !dbg !1256
  %43 = load i8, i8* %42, align 1, !dbg !1256, !tbaa !211
  %44 = zext i8 %43 to i32, !dbg !1256
  %45 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i32 %40, i32 %44) #8, !dbg !1256
  br label %46, !dbg !1256

; <label>:46:                                     ; preds = %38, %29, %23
  %47 = add nuw nsw i32 %24, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %47, metadata !1208, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 %47, metadata !1208, metadata !DIExpression()), !dbg !1228
  %48 = icmp eq i32 %47, 14, !dbg !1260
  br i1 %48, label %49, label %23, !dbg !1262, !llvm.loop !1264

; <label>:49:                                     ; preds = %46
  %50 = load i8, i8* %15, align 1, !dbg !1267, !tbaa !211
  %51 = zext i8 %50 to i32, !dbg !1267
  %52 = add nuw nsw i32 %51, 2, !dbg !1267
  %53 = shl nuw nsw i32 %52, 8, !dbg !1267
  %54 = lshr i32 %52, 8, !dbg !1267
  %55 = or i32 %53, %54, !dbg !1267
  %56 = trunc i32 %55 to i16, !dbg !1267
  store i16 %56, i16* %4, align 1, !dbg !1268, !tbaa !249
  br label %59, !dbg !1269

; <label>:57:                                     ; preds = %14, %12
  %58 = phi i8* [ %13, %12 ], [ %16, %14 ], !dbg !1217
  store i16 256, i16* %4, align 1, !dbg !1270, !tbaa !249
  store i8 1, i8* %58, align 1, !dbg !1271, !tbaa !211
  br label %59, !dbg !1272

; <label>:59:                                     ; preds = %57, %49, %19
  %60 = phi i8 [ 10, %57 ], [ 12, %49 ], [ 12, %19 ]
  ret i8 %60, !dbg !1273
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_handle_register_notification(%struct.avctp* nocapture, %struct.avrcp_header* nocapture, i8 zeroext) #0 section ".bt_stack_code" !dbg !1274 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1276, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %1, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i8 %2, metadata !1278, metadata !DIExpression()), !dbg !1282
  %4 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 3, !dbg !1283
  %5 = load i16, i16* %4, align 1, !dbg !1283, !tbaa !249
  %6 = zext i16 %5 to i32, !dbg !1283
  %7 = shl nuw nsw i32 %6, 8, !dbg !1283
  %8 = lshr i32 %6, 8, !dbg !1283
  %9 = or i32 %7, %8, !dbg !1283
  %10 = and i32 %9, 65535, !dbg !1284
  %11 = icmp eq i32 %10, 5, !dbg !1286
  %12 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 0
  br i1 %11, label %13, label %66, !dbg !1287

; <label>:13:                                     ; preds = %3
  %14 = load i8, i8* %12, align 1, !dbg !1288, !tbaa !211
  %15 = zext i8 %14 to i32, !dbg !1290
  %16 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %15, i32 0, !dbg !1291
  %17 = load i8, i8* %16, align 1, !dbg !1291
  %18 = and i8 %17, 1, !dbg !1291
  %19 = icmp eq i8 %18, 0, !dbg !1292
  br i1 %19, label %66, label %20, !dbg !1293

; <label>:20:                                     ; preds = %13
  switch i8 %14, label %66 [
    i8 2, label %50
    i8 3, label %50
    i8 4, label %50
    i8 8, label %21
    i8 13, label %23
  ], !dbg !1294

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 1, !dbg !1295
  store i8 0, i8* %22, align 1, !dbg !1297, !tbaa !211
  call void @llvm.dbg.value(metadata i16 2, metadata !1279, metadata !DIExpression()), !dbg !1298
  br label %50, !dbg !1299

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 7, !dbg !1300
  %25 = load i8, i8* %24, align 4, !dbg !1300, !tbaa !243
  %26 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 1, !dbg !1301
  store i8 %25, i8* %26, align 1, !dbg !1302, !tbaa !211
  %27 = icmp eq i8 %25, -1, !dbg !1303
  br i1 %27, label %28, label %46, !dbg !1305

; <label>:28:                                     ; preds = %23
  %29 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1306, !tbaa !230
  %30 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %29, i32 0, i32 6, !dbg !1308
  %31 = load i32 ()*, i32 ()** %30, align 4, !dbg !1308, !tbaa !233
  %32 = icmp eq i32 ()* %31, null, !dbg !1306
  br i1 %32, label %44, label %33, !dbg !1309

; <label>:33:                                     ; preds = %28
  %34 = tail call i32 %31() #7, !dbg !1311
  %35 = trunc i32 %34 to i8, !dbg !1311
  %36 = and i32 %34, 255, !dbg !1313
  %37 = icmp ugt i32 %36, 120, !dbg !1315
  %38 = select i1 %37, i8 96, i8 %35, !dbg !1316
  store i8 %38, i8* %26, align 1, !dbg !1317, !tbaa !211
  store i8 %38, i8* %24, align 4, !dbg !1318, !tbaa !243
  %39 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1319, !tbaa !211
  %40 = icmp slt i8 %39, 0, !dbg !1319
  br i1 %40, label %41, label %44, !dbg !1321

; <label>:41:                                     ; preds = %33
  %42 = zext i8 %38 to i32, !dbg !1322
  %43 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i32 %42) #8, !dbg !1322
  br label %44, !dbg !1322

; <label>:44:                                     ; preds = %41, %33, %28
  %45 = load i8, i8* %26, align 1, !dbg !1324, !tbaa !211
  br label %46, !dbg !1324

; <label>:46:                                     ; preds = %44, %23
  %47 = phi i8 [ %45, %44 ], [ %25, %23 ], !dbg !1324
  %48 = icmp slt i8 %47, 0, !dbg !1326
  br i1 %48, label %49, label %50, !dbg !1327

; <label>:49:                                     ; preds = %46
  store i8 127, i8* %26, align 1, !dbg !1328, !tbaa !211
  br label %50, !dbg !1330

; <label>:50:                                     ; preds = %49, %46, %21, %20, %20, %20
  %51 = phi i32 [ 2, %21 ], [ %9, %20 ], [ %9, %20 ], [ %9, %20 ], [ 2, %49 ], [ 2, %46 ]
  %52 = load i8, i8* %12, align 1, !dbg !1331, !tbaa !211
  %53 = zext i8 %52 to i32, !dbg !1332
  %54 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %53, i32 0, !dbg !1333
  %55 = load i8, i8* %54, align 1, !dbg !1334
  %56 = or i8 %55, 2, !dbg !1334
  store i8 %56, i8* %54, align 1, !dbg !1334
  %57 = load i8, i8* %12, align 1, !dbg !1335, !tbaa !211
  %58 = zext i8 %57 to i32, !dbg !1336
  %59 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 10, i32 %58, i32 0, !dbg !1337
  %60 = load i8, i8* %59, align 1, !dbg !1338
  %61 = shl i8 %2, 4, !dbg !1338
  %62 = and i8 %60, 15, !dbg !1338
  %63 = or i8 %62, %61, !dbg !1338
  store i8 %63, i8* %59, align 1, !dbg !1338
  %64 = trunc i32 %51 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  store i16 %65, i16* %4, align 1, !dbg !1339, !tbaa !249
  br label %67, !dbg !1340

; <label>:66:                                     ; preds = %20, %13, %3
  store i16 256, i16* %4, align 1, !dbg !1341, !tbaa !249
  store i8 1, i8* %12, align 1, !dbg !1342, !tbaa !211
  br label %67, !dbg !1343

; <label>:67:                                     ; preds = %66, %50
  %68 = phi i8 [ 10, %66 ], [ 15, %50 ]
  ret i8 %68, !dbg !1344
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @avrcp_handle_set_absolute_volume(%struct.avctp* nocapture, %struct.avrcp_header* nocapture, i8 zeroext) #0 section ".bt_stack_code" !dbg !1345 {
  call void @llvm.dbg.value(metadata %struct.avctp* %0, metadata !1347, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata %struct.avrcp_header* %1, metadata !1348, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %2, metadata !1349, metadata !DIExpression()), !dbg !1357
  %4 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 3, !dbg !1358
  %5 = load i16, i16* %4, align 1, !dbg !1358, !tbaa !249
  %6 = zext i16 %5 to i32, !dbg !1358
  %7 = shl nuw nsw i32 %6, 8, !dbg !1358
  %8 = lshr i32 %6, 8, !dbg !1358
  %9 = and i32 %7, 65280, !dbg !1359
  %10 = or i32 %9, %8, !dbg !1359
  %11 = icmp eq i32 %10, 1, !dbg !1361
  br i1 %11, label %12, label %32, !dbg !1362

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 0, !dbg !1363
  %14 = load i8, i8* %13, align 1, !dbg !1363, !tbaa !211
  %15 = and i8 %14, 127, !dbg !1364
  call void @llvm.dbg.value(metadata i8 %15, metadata !1351, metadata !DIExpression()), !dbg !1365
  %16 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1366, !tbaa !230
  %17 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %16, i32 0, i32 7, !dbg !1367
  %18 = load void (i32)*, void (i32)** %17, align 4, !dbg !1367, !tbaa !1368
  %19 = icmp eq void (i32)* %18, null, !dbg !1369
  br i1 %19, label %34, label %20, !dbg !1370

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.avctp, %struct.avctp* %0, i32 0, i32 5, i32 7, !dbg !1371
  %22 = zext i8 %15 to i32, !dbg !1372
  store i8 %15, i8* %21, align 4, !dbg !1373, !tbaa !243
  %23 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1376, !tbaa !211
  %24 = icmp slt i8 %23, 0, !dbg !1376
  br i1 %24, label %25, label %30, !dbg !1378

; <label>:25:                                     ; preds = %20
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 %22) #8, !dbg !1379
  %27 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !230
  %28 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %27, i32 0, i32 7
  %29 = load void (i32)*, void (i32)** %28, align 4, !tbaa !1368
  br label %30, !dbg !1379

; <label>:30:                                     ; preds = %25, %20
  %31 = phi void (i32)* [ %29, %25 ], [ %18, %20 ], !dbg !1381
  tail call void %31(i32 %22) #7, !dbg !1383
  br label %34, !dbg !1384

; <label>:32:                                     ; preds = %3
  store i16 256, i16* %4, align 1, !dbg !1385, !tbaa !249
  %33 = getelementptr inbounds %struct.avrcp_header, %struct.avrcp_header* %1, i32 0, i32 4, i32 0, !dbg !1386
  store i8 1, i8* %33, align 1, !dbg !1387, !tbaa !211
  br label %34, !dbg !1388

; <label>:34:                                     ; preds = %32, %30, %12
  %35 = phi i8 [ 10, %32 ], [ 9, %12 ], [ 9, %30 ]
  ret i8 %35, !dbg !1389
}

; Function Attrs: nounwind readnone speculatable
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!165, !166}
!llvm.ident = !{!167}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !164, line: 190, type: !151, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !54)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/avrcp.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !13, !32, !40}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 209, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/avctp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "AVCTP_STATE_DISCONNECTED", value: 0)
!9 = !DIEnumerator(name: "AVCTP_STATE_CONNECTING", value: 1)
!10 = !DIEnumerator(name: "AVCTP_STATE_CONNECTED", value: 2)
!11 = !DIEnumerator(name: "AVCTP_STATE_BROWSING_CONNECTING", value: 3)
!12 = !DIEnumerator(name: "AVCTP_STATE_BROWSING_CONNECTED", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 217, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!15 = !DIEnumerator(name: "AVCTP_CMD_GET_CAPABILITIES", value: 0)
!16 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_STATUS", value: 1)
!17 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_TRACK", value: 2)
!18 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_SETTING", value: 3)
!19 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_LIST_ATTR", value: 4)
!20 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_SET_REP", value: 5)
!21 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_SET_SHUFFLE", value: 6)
!22 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_VOL_CHANGED", value: 7)
!23 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_STATUS_CHANGED", value: 8)
!24 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_EVENT_PLAYBACK_POS", value: 9)
!25 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_SEEK_RELEASE", value: 10)
!26 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_GET_PLAY_STATUS", value: 11)
!27 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_GET_MUSIC_INFO", value: 12)
!28 = !DIEnumerator(name: "AVCTP_CMD_REGISTER_BQB_VOL_CHANGED", value: 13)
!29 = !DIEnumerator(name: "AVCTP_CMD_CONNECT_A2DP_MEDIA", value: 14)
!30 = !DIEnumerator(name: "AVCTP_RESPONSE_ERROR_TYPE_1", value: 15)
!31 = !DIEnumerator(name: "AVCTP_CMD_MAX_OP_VALUE", value: 16)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 157, size: 32, elements: !34)
!33 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "A2DP_STATUS_IDLE", value: 0)
!36 = !DIEnumerator(name: "A2DP_STATUS_STARTING", value: 1)
!37 = !DIEnumerator(name: "A2DP_STATUS_SUSPENDING", value: 2)
!38 = !DIEnumerator(name: "A2DP_STATUS_FWD_SEEK", value: 3)
!39 = !DIEnumerator(name: "A2DP_STATUS_REV_SEEK", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 65, size: 32, elements: !42)
!41 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "AVCTP_INDSTA_CTRL_STA_CHANGED", value: 16)
!44 = !DIEnumerator(name: "AVCTP_INDSTA_MAX", value: 17)
!45 = !{!46, !47, !50, !52}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 48, baseType: !49)
!48 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 46, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !48, line: 44, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!0, !55, !154, !159}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "arp_deal_respone_handlers", scope: !2, file: !3, line: 779, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 512, elements: !152)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "respone_pdu_handler", file: !6, line: 252, size: 64, elements: !60)
!60 = !{!61, !63, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pdu_id", scope: !59, file: !6, line: 253, baseType: !62, size: 8)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !48, line: 44, baseType: !53)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !59, file: !6, line: 254, baseType: !62, size: 8, offset: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !59, file: !6, line: 255, baseType: !65, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!66 = !DISubroutineType(types: !67)
!67 = !{!62, !68, !62, !62, !150, !151}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avctp", file: !6, line: 296, size: 512, elements: !70)
!70 = !{!71, !77, !79, !80, !106, !108}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr", scope: !69, file: !6, line: 297, baseType: !72, size: 48)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !73, line: 66, baseType: !74)
!73 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 6)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "control_cid", scope: !69, file: !6, line: 298, baseType: !78, size: 16, offset: 48)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !48, line: 46, baseType: !51)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_conn_cnt", scope: !69, file: !6, line: 299, baseType: !52, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "arp_control_handlers", scope: !69, file: !6, line: 300, baseType: !81, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_pdu_handler", file: !6, line: 246, size: 64, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pdu_id", scope: !83, file: !6, line: 247, baseType: !62, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !83, file: !6, line: 248, baseType: !62, size: 8, offset: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !83, file: !6, line: 249, baseType: !88, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DISubroutineType(types: !90)
!90 = !{!62, !68, !91, !62}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avrcp_header", file: !3, line: 95, size: 56, elements: !93)
!93 = !{!94, !98, !99, !100, !101, !102}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "company_id", scope: !92, file: !3, line: 96, baseType: !95, size: 24)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 24, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pdu_id", scope: !92, file: !3, line: 97, baseType: !62, size: 8, offset: 24)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "packet_type", scope: !92, file: !3, line: 98, baseType: !62, size: 2, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !92, file: !3, line: 99, baseType: !62, size: 6, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "params_len", scope: !92, file: !3, line: 100, baseType: !50, size: 16, offset: 40)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !92, file: !3, line: 101, baseType: !103, offset: 56)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "arp_respone_handlers", scope: !69, file: !6, line: 301, baseType: !107, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "acp_core_data", scope: !69, file: !6, line: 306, baseType: !109, size: 352, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "avrcp_core_data_t", file: !6, line: 294, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 274, size: 352, elements: !111)
!111 = !{!112, !114, !115, !116, !120, !121, !122, !123, !125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !139}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pending_cmd", scope: !110, file: !6, line: 275, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !48, line: 48, baseType: !49)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pending_release_cnt", scope: !110, file: !6, line: 276, baseType: !62, size: 8, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pending_release_cmd", scope: !110, file: !6, line: 277, baseType: !62, size: 8, offset: 40)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "remote_player_setting_attr_value", scope: !110, file: !6, line: 278, baseType: !117, size: 40, offset: 48)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 40, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 5)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "remote_player_setting_cnt", scope: !110, file: !6, line: 279, baseType: !62, size: 8, offset: 88)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "remote_player_setting_attr", scope: !110, file: !6, line: 280, baseType: !62, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "remote_transaction", scope: !110, file: !6, line: 281, baseType: !62, size: 4, offset: 104, flags: DIFlagBitField, extraData: i64 104)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !110, file: !6, line: 282, baseType: !124, size: 3, offset: 108, flags: DIFlagBitField, extraData: i64 104)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "avctp_state_t", file: !6, line: 215, baseType: !5)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "initiator", scope: !110, file: !6, line: 283, baseType: !126, size: 1, offset: 111, flags: DIFlagBitField, extraData: i64 104)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 44, baseType: !53)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pre_sta", scope: !110, file: !6, line: 284, baseType: !52, size: 3, offset: 112, flags: DIFlagBitField, extraData: i64 104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_play_sta", scope: !110, file: !6, line: 285, baseType: !52, size: 3, offset: 115, flags: DIFlagBitField, extraData: i64 104)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "is_play_have_sent", scope: !110, file: !6, line: 286, baseType: !126, size: 1, offset: 118, flags: DIFlagBitField, extraData: i64 104)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "is_inuse", scope: !110, file: !6, line: 287, baseType: !126, size: 1, offset: 119, flags: DIFlagBitField, extraData: i64 104)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "pos_read", scope: !110, file: !6, line: 288, baseType: !52, size: 4, offset: 120, flags: DIFlagBitField, extraData: i64 104)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pos_write", scope: !110, file: !6, line: 289, baseType: !52, size: 4, offset: 124, flags: DIFlagBitField, extraData: i64 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "avrcp_volume", scope: !110, file: !6, line: 290, baseType: !52, size: 8, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_send_buf_len", scope: !110, file: !6, line: 291, baseType: !52, size: 8, offset: 136)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_opid_buf", scope: !110, file: !6, line: 292, baseType: !136, size: 72, offset: 144)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 72, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 9)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "avrcp_event", scope: !110, file: !6, line: 293, baseType: !140, size: 112, offset: 216)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 112, elements: !148)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avrcp_event_info", file: !6, line: 263, size: 8, elements: !142)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !141, file: !6, line: 264, baseType: !62, size: 1, flags: DIFlagBitField, extraData: i64 0)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "registered_events", scope: !141, file: !6, line: 265, baseType: !62, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "remote_supported_events", scope: !141, file: !6, line: 266, baseType: !62, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "remote_registered_events", scope: !141, file: !6, line: 267, baseType: !62, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "transaction_events", scope: !141, file: !6, line: 268, baseType: !62, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!148 = !{!149}
!149 = !DISubrange(count: 14)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 32)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !{!153}
!153 = !DISubrange(count: 8)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "arp_control_handlers", scope: !2, file: !3, line: 1084, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 448, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 7)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "arp_company_ids", scope: !2, file: !3, line: 955, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 1)
!164 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!165 = !{i32 2, !"Dwarf Version", i32 4}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!168 = distinct !DISubprogram(name: "avrcp_player_event", scope: !3, file: !3, line: 156, type: !169, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !173)
!169 = !DISubroutineType(types: !170)
!170 = !{!151, !68, !62, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!173 = !{!174, !175, !176, !177, !181, !182, !183}
!174 = !DILocalVariable(name: "conn", arg: 1, scope: !168, file: !3, line: 156, type: !68)
!175 = !DILocalVariable(name: "id", arg: 2, scope: !168, file: !3, line: 156, type: !62)
!176 = !DILocalVariable(name: "data", arg: 3, scope: !168, file: !3, line: 157, type: !171)
!177 = !DILocalVariable(name: "buf", scope: !168, file: !3, line: 159, type: !178)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DILocalVariable(name: "pdu", scope: !168, file: !3, line: 160, type: !91)
!182 = !DILocalVariable(name: "size", scope: !168, file: !3, line: 161, type: !50)
!183 = !DILocalVariable(name: "err", scope: !168, file: !3, line: 162, type: !151)
!184 = !DILocation(line: 156, column: 38, scope: !168)
!185 = !DILocation(line: 156, column: 52, scope: !168)
!186 = !DILocation(line: 157, column: 34, scope: !168)
!187 = !DILocation(line: 159, column: 5, scope: !168)
!188 = !DILocation(line: 159, column: 13, scope: !168)
!189 = !DILocation(line: 162, column: 9, scope: !168)
!190 = !DILocation(line: 164, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !168, file: !3, line: 164, column: 9)
!192 = !DILocation(line: 164, column: 9, scope: !168)
!193 = !DILocation(line: 168, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !168, file: !3, line: 168, column: 9)
!195 = !DILocation(line: 168, column: 47, scope: !194)
!196 = !DILocation(line: 168, column: 10, scope: !194)
!197 = !DILocation(line: 168, column: 9, scope: !168)
!198 = !DILocalVariable(name: "cid", arg: 1, scope: !199, file: !3, line: 146, type: !150)
!199 = distinct !DISubprogram(name: "set_company_id", scope: !3, file: !3, line: 146, type: !200, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !203)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !150, !202}
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!203 = !{!198, !204}
!204 = !DILocalVariable(name: "cid_in", arg: 2, scope: !199, file: !3, line: 146, type: !202)
!205 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !206)
!206 = distinct !DILocation(line: 173, column: 5, scope: !168)
!207 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !206)
!208 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !206)
!209 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !206)
!210 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !206)
!211 = !{!212, !212, i64 0}
!212 = !{!"omnipotent char", !213, i64 0}
!213 = !{!"Simple C/C++ TBAA"}
!214 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !206)
!215 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !206)
!216 = !DILocation(line: 175, column: 10, scope: !168)
!217 = !DILocation(line: 175, column: 17, scope: !168)
!218 = !{!219, !212, i64 3}
!219 = !{!"avrcp_header", !212, i64 0, !212, i64 3, !212, i64 4, !212, i64 4, !220, i64 5, !212, i64 7}
!220 = !{!"short", !212, i64 0}
!221 = !DILocation(line: 176, column: 10, scope: !168)
!222 = !DILocation(line: 176, column: 20, scope: !168)
!223 = !DILocation(line: 180, column: 5, scope: !168)
!224 = !DILocation(line: 161, column: 14, scope: !168)
!225 = !DILocation(line: 190, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !168, file: !3, line: 180, column: 17)
!227 = !DILocation(line: 190, column: 24, scope: !226)
!228 = !DILocation(line: 191, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 191, column: 13)
!230 = !{!231, !231, i64 0}
!231 = !{!"any pointer", !212, i64 0}
!232 = !DILocation(line: 191, column: 29, scope: !229)
!233 = !{!234, !231, i64 24}
!234 = !{!"user_interface_handler", !231, i64 0, !231, i64 4, !231, i64 8, !231, i64 12, !231, i64 16, !231, i64 20, !231, i64 24, !231, i64 28, !231, i64 32, !231, i64 36, !231, i64 40, !231, i64 44, !231, i64 48, !231, i64 52, !231, i64 56}
!235 = !DILocation(line: 191, column: 13, scope: !226)
!236 = !DILocation(line: 192, column: 31, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !3, line: 191, column: 59)
!238 = !DILocation(line: 192, column: 29, scope: !237)
!239 = !DILocation(line: 193, column: 9, scope: !237)
!240 = !DILocation(line: 194, column: 44, scope: !226)
!241 = !DILocation(line: 194, column: 29, scope: !226)
!242 = !DILocation(line: 194, column: 42, scope: !226)
!243 = !{!244, !212, i64 36}
!244 = !{!"avctp", !212, i64 0, !220, i64 6, !212, i64 8, !231, i64 12, !231, i64 16, !245, i64 20}
!245 = !{!"", !246, i64 0, !212, i64 4, !212, i64 5, !212, i64 6, !212, i64 11, !212, i64 12, !212, i64 13, !212, i64 13, !212, i64 13, !212, i64 14, !212, i64 14, !212, i64 14, !212, i64 14, !212, i64 15, !212, i64 15, !212, i64 16, !212, i64 17, !212, i64 18, !212, i64 27}
!246 = !{!"int", !212, i64 0}
!247 = !DILocation(line: 201, column: 10, scope: !168)
!248 = !DILocation(line: 201, column: 21, scope: !168)
!249 = !{!219, !220, i64 5}
!250 = !DILocation(line: 203, column: 68, scope: !168)
!251 = !DILocation(line: 202, column: 11, scope: !168)
!252 = !DILocation(line: 210, column: 59, scope: !168)
!253 = !DILocation(line: 212, column: 5, scope: !168)
!254 = !DILocation(line: 198, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !226, file: !3, line: 198, column: 9)
!256 = !DILocation(line: 198, column: 9, scope: !226)
!257 = !DILocation(line: 198, column: 9, scope: !258)
!258 = !DILexicalBlockFile(scope: !255, file: !3, discriminator: 1)
!259 = !DILocation(line: 213, column: 1, scope: !168)
!260 = distinct !DISubprogram(name: "avrcp_register_notification", scope: !3, file: !3, line: 216, type: !261, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!151, !68, !62}
!263 = !{!264, !265, !266, !270, !271, !272}
!264 = !DILocalVariable(name: "conn", arg: 1, scope: !260, file: !3, line: 216, type: !68)
!265 = !DILocalVariable(name: "event", arg: 2, scope: !260, file: !3, line: 216, type: !62)
!266 = !DILocalVariable(name: "buf", scope: !260, file: !3, line: 218, type: !267)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 96, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 12)
!270 = !DILocalVariable(name: "pdu", scope: !260, file: !3, line: 219, type: !91)
!271 = !DILocalVariable(name: "length", scope: !260, file: !3, line: 220, type: !62)
!272 = !DILocalVariable(name: "music_interval", scope: !273, file: !3, line: 235, type: !113)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 234, column: 52)
!274 = distinct !DILexicalBlock(scope: !260, file: !3, line: 234, column: 9)
!275 = !DILocation(line: 216, column: 47, scope: !260)
!276 = !DILocation(line: 216, column: 61, scope: !260)
!277 = !DILocation(line: 218, column: 5, scope: !260)
!278 = !DILocation(line: 218, column: 13, scope: !260)
!279 = !DILocation(line: 220, column: 13, scope: !260)
!280 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !281)
!281 = distinct !DILocation(line: 224, column: 5, scope: !260)
!282 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !281)
!283 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !281)
!284 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !281)
!285 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !281)
!286 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !281)
!287 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !281)
!288 = !DILocation(line: 225, column: 10, scope: !260)
!289 = !DILocation(line: 225, column: 17, scope: !260)
!290 = !DILocation(line: 226, column: 10, scope: !260)
!291 = !DILocation(line: 226, column: 22, scope: !260)
!292 = !DILocation(line: 227, column: 10, scope: !260)
!293 = !DILocation(line: 227, column: 20, scope: !260)
!294 = !DILocation(line: 228, column: 5, scope: !260)
!295 = !DILocation(line: 228, column: 20, scope: !260)
!296 = !DILocation(line: 234, column: 9, scope: !274)
!297 = !DILocation(line: 234, column: 15, scope: !274)
!298 = !DILocation(line: 234, column: 9, scope: !260)
!299 = !DILocation(line: 235, column: 13, scope: !273)
!300 = !DILocation(line: 238, column: 9, scope: !273)
!301 = !DILocation(line: 239, column: 5, scope: !273)
!302 = !DILocation(line: 241, column: 10, scope: !260)
!303 = !DILocation(line: 241, column: 21, scope: !260)
!304 = !DILocation(line: 242, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !260, file: !3, line: 242, column: 5)
!306 = !DILocation(line: 242, column: 5, scope: !260)
!307 = !DILocation(line: 242, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !305, file: !3, discriminator: 1)
!309 = !DILocation(line: 244, column: 44, scope: !260)
!310 = !DILocation(line: 244, column: 69, scope: !260)
!311 = !DILocation(line: 245, column: 12, scope: !260)
!312 = !DILocation(line: 247, column: 1, scope: !260)
!313 = !DILocation(line: 245, column: 5, scope: !260)
!314 = distinct !DISubprogram(name: "avrcp_get_capabilities", scope: !3, file: !3, line: 250, type: !315, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!151, !68}
!317 = !{!318, !319, !321, !322}
!318 = !DILocalVariable(name: "conn", arg: 1, scope: !314, file: !3, line: 250, type: !68)
!319 = !DILocalVariable(name: "buf", scope: !314, file: !3, line: 252, type: !320)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !152)
!321 = !DILocalVariable(name: "pdu", scope: !314, file: !3, line: 253, type: !91)
!322 = !DILocalVariable(name: "length", scope: !314, file: !3, line: 254, type: !62)
!323 = !DILocation(line: 250, column: 42, scope: !314)
!324 = !DILocation(line: 252, column: 5, scope: !314)
!325 = !DILocation(line: 253, column: 32, scope: !314)
!326 = !DILocation(line: 253, column: 26, scope: !314)
!327 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !328)
!328 = distinct !DILocation(line: 258, column: 5, scope: !314)
!329 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !328)
!330 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !328)
!331 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !328)
!332 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !328)
!333 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !328)
!334 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !328)
!335 = !DILocation(line: 259, column: 10, scope: !314)
!336 = !DILocation(line: 259, column: 17, scope: !314)
!337 = !DILocation(line: 260, column: 10, scope: !314)
!338 = !DILocation(line: 260, column: 22, scope: !314)
!339 = !DILocation(line: 261, column: 5, scope: !314)
!340 = !DILocation(line: 261, column: 20, scope: !314)
!341 = !DILocation(line: 262, column: 10, scope: !314)
!342 = !DILocation(line: 262, column: 21, scope: !314)
!343 = !DILocation(line: 254, column: 13, scope: !314)
!344 = !DILocation(line: 266, column: 12, scope: !314)
!345 = !DILocation(line: 268, column: 1, scope: !314)
!346 = !DILocation(line: 266, column: 5, scope: !314)
!347 = distinct !DISubprogram(name: "avrcp_list_player_attributes", scope: !3, file: !3, line: 271, type: !315, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !348)
!348 = !{!349, !350, !352}
!349 = !DILocalVariable(name: "conn", arg: 1, scope: !347, file: !3, line: 271, type: !68)
!350 = !DILocalVariable(name: "buf", scope: !347, file: !3, line: 273, type: !351)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 56, elements: !157)
!352 = !DILocalVariable(name: "pdu", scope: !347, file: !3, line: 274, type: !91)
!353 = !DILocation(line: 271, column: 48, scope: !347)
!354 = !DILocation(line: 273, column: 5, scope: !347)
!355 = !DILocation(line: 273, column: 13, scope: !347)
!356 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !357)
!357 = distinct !DILocation(line: 278, column: 5, scope: !347)
!358 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !357)
!359 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !357)
!360 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !357)
!361 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !357)
!362 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !357)
!363 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !357)
!364 = !DILocation(line: 279, column: 10, scope: !347)
!365 = !DILocation(line: 279, column: 17, scope: !347)
!366 = !DILocation(line: 280, column: 10, scope: !347)
!367 = !DILocation(line: 280, column: 22, scope: !347)
!368 = !DILocation(line: 282, column: 12, scope: !347)
!369 = !DILocation(line: 284, column: 1, scope: !347)
!370 = !DILocation(line: 282, column: 5, scope: !347)
!371 = distinct !DISubprogram(name: "avrcp_set_player_value", scope: !3, file: !3, line: 287, type: !372, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!126, !68, !62, !62}
!374 = !{!375, !376, !377, !378, !382, !383}
!375 = !DILocalVariable(name: "conn", arg: 1, scope: !371, file: !3, line: 287, type: !68)
!376 = !DILocalVariable(name: "attr", arg: 2, scope: !371, file: !3, line: 287, type: !62)
!377 = !DILocalVariable(name: "val", arg: 3, scope: !371, file: !3, line: 287, type: !62)
!378 = !DILocalVariable(name: "buf", scope: !371, file: !3, line: 289, type: !379)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 10)
!382 = !DILocalVariable(name: "pdu", scope: !371, file: !3, line: 290, type: !91)
!383 = !DILocalVariable(name: "length", scope: !371, file: !3, line: 291, type: !62)
!384 = !DILocation(line: 287, column: 43, scope: !371)
!385 = !DILocation(line: 287, column: 57, scope: !371)
!386 = !DILocation(line: 287, column: 71, scope: !371)
!387 = !DILocation(line: 289, column: 5, scope: !371)
!388 = !DILocation(line: 289, column: 13, scope: !371)
!389 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !390)
!390 = distinct !DILocation(line: 295, column: 5, scope: !371)
!391 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !390)
!392 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !390)
!393 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !390)
!394 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !390)
!395 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !390)
!396 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !390)
!397 = !DILocation(line: 296, column: 10, scope: !371)
!398 = !DILocation(line: 296, column: 17, scope: !371)
!399 = !DILocation(line: 297, column: 10, scope: !371)
!400 = !DILocation(line: 297, column: 22, scope: !371)
!401 = !DILocation(line: 298, column: 10, scope: !371)
!402 = !DILocation(line: 298, column: 20, scope: !371)
!403 = !DILocation(line: 299, column: 5, scope: !371)
!404 = !DILocation(line: 299, column: 20, scope: !371)
!405 = !DILocation(line: 300, column: 5, scope: !371)
!406 = !DILocation(line: 300, column: 20, scope: !371)
!407 = !DILocation(line: 301, column: 10, scope: !371)
!408 = !DILocation(line: 301, column: 21, scope: !371)
!409 = !DILocation(line: 291, column: 13, scope: !371)
!410 = !DILocation(line: 304, column: 12, scope: !371)
!411 = !DILocation(line: 306, column: 1, scope: !371)
!412 = !DILocation(line: 304, column: 5, scope: !371)
!413 = distinct !DISubprogram(name: "avrcp_send_absolute_volume_cmd", scope: !3, file: !3, line: 309, type: !315, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !414)
!414 = !{!415, !416, !417, !418}
!415 = !DILocalVariable(name: "conn", arg: 1, scope: !413, file: !3, line: 309, type: !68)
!416 = !DILocalVariable(name: "buf", scope: !413, file: !3, line: 312, type: !320)
!417 = !DILocalVariable(name: "pdu", scope: !413, file: !3, line: 313, type: !91)
!418 = !DILocalVariable(name: "length", scope: !413, file: !3, line: 314, type: !62)
!419 = !DILocation(line: 309, column: 50, scope: !413)
!420 = !DILocation(line: 312, column: 5, scope: !413)
!421 = !DILocation(line: 313, column: 32, scope: !413)
!422 = !DILocation(line: 313, column: 26, scope: !413)
!423 = !DILocation(line: 316, column: 5, scope: !413)
!424 = !DILocation(line: 317, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !413, file: !3, line: 317, column: 5)
!426 = !DILocation(line: 317, column: 5, scope: !413)
!427 = !DILocation(line: 317, column: 5, scope: !428)
!428 = !DILexicalBlockFile(scope: !425, file: !3, discriminator: 1)
!429 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !430)
!430 = distinct !DILocation(line: 318, column: 5, scope: !413)
!431 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !430)
!432 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !430)
!433 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !430)
!434 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !430)
!435 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !430)
!436 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !430)
!437 = !DILocation(line: 319, column: 10, scope: !413)
!438 = !DILocation(line: 319, column: 17, scope: !413)
!439 = !DILocation(line: 320, column: 10, scope: !413)
!440 = !DILocation(line: 320, column: 22, scope: !413)
!441 = !DILocation(line: 321, column: 5, scope: !413)
!442 = !DILocation(line: 321, column: 20, scope: !413)
!443 = !DILocation(line: 322, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !413, file: !3, line: 322, column: 9)
!445 = !DILocation(line: 322, column: 25, scope: !444)
!446 = !DILocation(line: 322, column: 9, scope: !413)
!447 = !DILocation(line: 323, column: 27, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !3, line: 322, column: 55)
!449 = !DILocation(line: 323, column: 25, scope: !448)
!450 = !DILocation(line: 324, column: 5, scope: !448)
!451 = !DILocation(line: 325, column: 10, scope: !413)
!452 = !DILocation(line: 325, column: 21, scope: !413)
!453 = !DILocation(line: 314, column: 13, scope: !413)
!454 = !DILocation(line: 329, column: 12, scope: !413)
!455 = !DILocation(line: 331, column: 1, scope: !413)
!456 = !DILocation(line: 329, column: 5, scope: !413)
!457 = distinct !DISubprogram(name: "emitter_rx_vol_change", scope: !3, file: !3, line: 336, type: !458, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !52}
!460 = !{!461}
!461 = !DILocalVariable(name: "vol", arg: 1, scope: !457, file: !3, line: 336, type: !52)
!462 = !DILocation(line: 336, column: 31, scope: !457)
!463 = !DILocation(line: 338, column: 1, scope: !457)
!464 = distinct !DISubprogram(name: "avrcp_element_attr_rsp_ext_process", scope: !3, file: !3, line: 436, type: !465, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !468)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !52, !113, !467, !78}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!468 = !{!469, !470, !471, !472}
!469 = !DILocalVariable(name: "type", arg: 1, scope: !464, file: !3, line: 436, type: !52)
!470 = !DILocalVariable(name: "time", arg: 2, scope: !464, file: !3, line: 436, type: !113)
!471 = !DILocalVariable(name: "info", arg: 3, scope: !464, file: !3, line: 436, type: !467)
!472 = !DILocalVariable(name: "len", arg: 4, scope: !464, file: !3, line: 436, type: !78)
!473 = !DILocation(line: 436, column: 66, scope: !464)
!474 = !DILocation(line: 436, column: 76, scope: !464)
!475 = !DILocation(line: 436, column: 86, scope: !464)
!476 = !DILocation(line: 436, column: 97, scope: !464)
!477 = !DILocation(line: 439, column: 1, scope: !464)
!478 = distinct !DISubprogram(name: "bt_music_total_time", scope: !3, file: !3, line: 498, type: !479, isLocal: false, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{!52, !113}
!481 = !{!482}
!482 = !DILocalVariable(name: "time", arg: 1, scope: !478, file: !3, line: 498, type: !113)
!483 = !DILocation(line: 498, column: 50, scope: !478)
!484 = !DILocation(line: 500, column: 5, scope: !478)
!485 = distinct !DISubprogram(name: "avrcp_get_play_status", scope: !3, file: !3, line: 566, type: !315, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DILocalVariable(name: "conn", arg: 1, scope: !485, file: !3, line: 566, type: !68)
!488 = !DILocalVariable(name: "buf", scope: !485, file: !3, line: 568, type: !351)
!489 = !DILocalVariable(name: "pdu", scope: !485, file: !3, line: 569, type: !91)
!490 = !DILocalVariable(name: "length", scope: !485, file: !3, line: 570, type: !62)
!491 = !DILocation(line: 566, column: 41, scope: !485)
!492 = !DILocation(line: 568, column: 5, scope: !485)
!493 = !DILocation(line: 568, column: 13, scope: !485)
!494 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !495)
!495 = distinct !DILocation(line: 574, column: 5, scope: !485)
!496 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !495)
!497 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !495)
!498 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !495)
!499 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !495)
!500 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !495)
!501 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !495)
!502 = !DILocation(line: 575, column: 10, scope: !485)
!503 = !DILocation(line: 575, column: 17, scope: !485)
!504 = !DILocation(line: 576, column: 10, scope: !485)
!505 = !DILocation(line: 576, column: 22, scope: !485)
!506 = !DILocation(line: 579, column: 12, scope: !485)
!507 = !DILocation(line: 581, column: 1, scope: !485)
!508 = !DILocation(line: 579, column: 5, scope: !485)
!509 = distinct !DISubprogram(name: "avrcp_get_element_attributes", scope: !3, file: !3, line: 587, type: !315, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !510)
!510 = !{!511, !512, !516, !517}
!511 = !DILocalVariable(name: "conn", arg: 1, scope: !509, file: !3, line: 587, type: !68)
!512 = !DILocalVariable(name: "buf", scope: !509, file: !3, line: 589, type: !513)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 352, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 44)
!516 = !DILocalVariable(name: "pdu", scope: !509, file: !3, line: 590, type: !91)
!517 = !DILocalVariable(name: "length", scope: !509, file: !3, line: 591, type: !62)
!518 = !DILocation(line: 587, column: 48, scope: !509)
!519 = !DILocation(line: 589, column: 5, scope: !509)
!520 = !DILocation(line: 589, column: 13, scope: !509)
!521 = !DILocation(line: 593, column: 5, scope: !509)
!522 = !DILocation(line: 594, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !509, file: !3, line: 594, column: 5)
!524 = !DILocation(line: 594, column: 5, scope: !509)
!525 = !DILocation(line: 594, column: 5, scope: !526)
!526 = !DILexicalBlockFile(scope: !523, file: !3, discriminator: 1)
!527 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !528)
!528 = distinct !DILocation(line: 595, column: 5, scope: !509)
!529 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !528)
!530 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !528)
!531 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !528)
!532 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !528)
!533 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !528)
!534 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !528)
!535 = !DILocation(line: 596, column: 10, scope: !509)
!536 = !DILocation(line: 596, column: 17, scope: !509)
!537 = !DILocation(line: 597, column: 10, scope: !509)
!538 = !DILocation(line: 597, column: 22, scope: !509)
!539 = !DILocation(line: 598, column: 10, scope: !509)
!540 = !DILocation(line: 598, column: 21, scope: !509)
!541 = !DILocation(line: 600, column: 5, scope: !509)
!542 = !DILocation(line: 600, column: 20, scope: !509)
!543 = !DILocation(line: 591, column: 13, scope: !509)
!544 = !DILocation(line: 602, column: 12, scope: !509)
!545 = !DILocation(line: 604, column: 1, scope: !509)
!546 = !DILocation(line: 602, column: 5, scope: !509)
!547 = distinct !DISubprogram(name: "get_arp_deal_respone_handlers", scope: !3, file: !3, line: 812, type: !548, isLocal: false, isDefinition: true, scopeLine: 813, isOptimized: true, unit: !2, variables: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!107}
!550 = !{}
!551 = !DILocation(line: 814, column: 5, scope: !547)
!552 = distinct !DISubprogram(name: "handle_vendordep_pdu_res", scope: !3, file: !3, line: 817, type: !553, isLocal: false, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!151, !68, !62, !150, !150, !150, !151}
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564}
!556 = !DILocalVariable(name: "conn", arg: 1, scope: !552, file: !3, line: 817, type: !68)
!557 = !DILocalVariable(name: "transaction", arg: 2, scope: !552, file: !3, line: 817, type: !62)
!558 = !DILocalVariable(name: "code", arg: 3, scope: !552, file: !3, line: 818, type: !150)
!559 = !DILocalVariable(name: "subunit", arg: 4, scope: !552, file: !3, line: 818, type: !150)
!560 = !DILocalVariable(name: "operands", arg: 5, scope: !552, file: !3, line: 819, type: !150)
!561 = !DILocalVariable(name: "operand_count", arg: 6, scope: !552, file: !3, line: 819, type: !151)
!562 = !DILocalVariable(name: "handler", scope: !552, file: !3, line: 821, type: !107)
!563 = !DILocalVariable(name: "pdu", scope: !552, file: !3, line: 822, type: !91)
!564 = !DILocalVariable(name: "company_id", scope: !552, file: !3, line: 823, type: !47)
!565 = !DILocation(line: 817, column: 44, scope: !552)
!566 = !DILocation(line: 817, column: 58, scope: !552)
!567 = !DILocation(line: 818, column: 39, scope: !552)
!568 = !DILocation(line: 818, column: 54, scope: !552)
!569 = !DILocation(line: 819, column: 39, scope: !552)
!570 = !DILocation(line: 819, column: 53, scope: !552)
!571 = !DILocation(line: 821, column: 39, scope: !552)
!572 = !DILocalVariable(name: "cid", arg: 1, scope: !573, file: !3, line: 136, type: !576)
!573 = distinct !DISubprogram(name: "get_company_id", scope: !3, file: !3, line: 136, type: !574, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !578)
!574 = !DISubroutineType(types: !575)
!575 = !{!47, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!578 = !{!572}
!579 = !DILocation(line: 136, column: 46, scope: !573, inlinedAt: !580)
!580 = distinct !DILocation(line: 823, column: 27, scope: !552)
!581 = !DILocation(line: 823, column: 14, scope: !552)
!582 = !DILocation(line: 825, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !552, file: !3, line: 825, column: 9)
!584 = !DILocation(line: 825, column: 15, scope: !583)
!585 = !DILocation(line: 826, column: 9, scope: !583)
!586 = !DILocation(line: 138, column: 27, scope: !573, inlinedAt: !580)
!587 = !DILocation(line: 138, column: 34, scope: !573, inlinedAt: !580)
!588 = !DILocation(line: 138, column: 12, scope: !573, inlinedAt: !580)
!589 = !DILocation(line: 138, column: 19, scope: !573, inlinedAt: !580)
!590 = !DILocation(line: 138, column: 25, scope: !573, inlinedAt: !580)
!591 = !DILocation(line: 138, column: 41, scope: !573, inlinedAt: !580)
!592 = !DILocation(line: 138, column: 39, scope: !573, inlinedAt: !580)
!593 = !DILocation(line: 826, column: 18, scope: !594)
!594 = !DILexicalBlockFile(scope: !583, file: !3, discriminator: 1)
!595 = !DILocation(line: 826, column: 54, scope: !596)
!596 = !DILexicalBlockFile(scope: !583, file: !3, discriminator: 2)
!597 = !DILocation(line: 826, column: 40, scope: !594)
!598 = !DILocation(line: 830, column: 23, scope: !599)
!599 = distinct !DILexicalBlock(scope: !552, file: !3, line: 830, column: 9)
!600 = !DILocation(line: 833, column: 26, scope: !601)
!601 = distinct !DILexicalBlock(scope: !552, file: !3, line: 833, column: 5)
!602 = !{!244, !231, i64 16}
!603 = !DILocation(line: 833, column: 57, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 833, column: 5)
!606 = !{!607, !212, i64 0}
!607 = !{!"respone_pdu_handler", !212, i64 0, !212, i64 1, !231, i64 4}
!608 = !DILocation(line: 833, column: 5, scope: !609)
!609 = !DILexicalBlockFile(scope: !601, file: !3, discriminator: 1)
!610 = !DILocation(line: 834, column: 29, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 834, column: 13)
!612 = distinct !DILexicalBlock(scope: !605, file: !3, line: 833, column: 76)
!613 = !DILocation(line: 834, column: 13, scope: !612)
!614 = !DILocation(line: 836, column: 36, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !3, line: 836, column: 20)
!616 = !DILocation(line: 836, column: 20, scope: !611)
!617 = !DILocation(line: 833, column: 72, scope: !618)
!618 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 2)
!619 = distinct !{!619, !620, !621}
!620 = !DILocation(line: 833, column: 5, scope: !601)
!621 = !DILocation(line: 839, column: 5, scope: !601)
!622 = !DILocation(line: 841, column: 10, scope: !623)
!623 = distinct !DILexicalBlock(scope: !552, file: !3, line: 841, column: 9)
!624 = !DILocation(line: 841, column: 18, scope: !623)
!625 = !DILocation(line: 846, column: 21, scope: !552)
!626 = !{!607, !231, i64 4}
!627 = !DILocation(line: 846, column: 39, scope: !552)
!628 = !DILocation(line: 846, column: 12, scope: !552)
!629 = !DILocation(line: 846, column: 5, scope: !552)
!630 = !DILocation(line: 847, column: 1, scope: !552)
!631 = distinct !DISubprogram(name: "get_arp_control_pdu_handlers", scope: !3, file: !3, line: 1118, type: !632, isLocal: false, isDefinition: true, scopeLine: 1119, isOptimized: true, unit: !2, variables: !550)
!632 = !DISubroutineType(types: !633)
!633 = !{!81}
!634 = !DILocation(line: 1120, column: 5, scope: !631)
!635 = distinct !DISubprogram(name: "handle_vendordep_pdu", scope: !3, file: !3, line: 1125, type: !553, isLocal: false, isDefinition: true, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645}
!637 = !DILocalVariable(name: "conn", arg: 1, scope: !635, file: !3, line: 1125, type: !68)
!638 = !DILocalVariable(name: "transaction", arg: 2, scope: !635, file: !3, line: 1125, type: !62)
!639 = !DILocalVariable(name: "code", arg: 3, scope: !635, file: !3, line: 1126, type: !150)
!640 = !DILocalVariable(name: "subunit", arg: 4, scope: !635, file: !3, line: 1126, type: !150)
!641 = !DILocalVariable(name: "operands", arg: 5, scope: !635, file: !3, line: 1127, type: !150)
!642 = !DILocalVariable(name: "operand_count", arg: 6, scope: !635, file: !3, line: 1127, type: !151)
!643 = !DILocalVariable(name: "handler", scope: !635, file: !3, line: 1130, type: !81)
!644 = !DILocalVariable(name: "pdu", scope: !635, file: !3, line: 1131, type: !91)
!645 = !DILocalVariable(name: "company_id", scope: !635, file: !3, line: 1132, type: !47)
!646 = !DILocation(line: 1125, column: 40, scope: !635)
!647 = !DILocation(line: 1125, column: 54, scope: !635)
!648 = !DILocation(line: 1126, column: 35, scope: !635)
!649 = !DILocation(line: 1126, column: 50, scope: !635)
!650 = !DILocation(line: 1127, column: 35, scope: !635)
!651 = !DILocation(line: 1127, column: 49, scope: !635)
!652 = !DILocation(line: 1131, column: 32, scope: !635)
!653 = !DILocation(line: 1131, column: 26, scope: !635)
!654 = !DILocation(line: 136, column: 46, scope: !573, inlinedAt: !655)
!655 = distinct !DILocation(line: 1132, column: 27, scope: !635)
!656 = !DILocation(line: 138, column: 12, scope: !573, inlinedAt: !655)
!657 = !DILocation(line: 138, column: 19, scope: !573, inlinedAt: !655)
!658 = !DILocation(line: 138, column: 27, scope: !573, inlinedAt: !655)
!659 = !DILocation(line: 138, column: 34, scope: !573, inlinedAt: !655)
!660 = !DILocation(line: 138, column: 25, scope: !573, inlinedAt: !655)
!661 = !DILocation(line: 138, column: 41, scope: !573, inlinedAt: !655)
!662 = !DILocation(line: 138, column: 39, scope: !573, inlinedAt: !655)
!663 = !DILocation(line: 1132, column: 14, scope: !635)
!664 = !DILocation(line: 1133, column: 20, scope: !665)
!665 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1133, column: 9)
!666 = !DILocation(line: 1133, column: 9, scope: !635)
!667 = !DILocation(line: 1134, column: 15, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1133, column: 37)
!669 = !DILocation(line: 1135, column: 9, scope: !668)
!670 = !DILocation(line: 1141, column: 10, scope: !635)
!671 = !DILocation(line: 1142, column: 15, scope: !635)
!672 = !DILocation(line: 1144, column: 23, scope: !673)
!673 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1144, column: 9)
!674 = !DILocation(line: 1144, column: 9, scope: !635)
!675 = !DILocation(line: 1149, column: 26, scope: !676)
!676 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1149, column: 5)
!677 = !{!244, !231, i64 12}
!678 = !DILocation(line: 1130, column: 39, scope: !635)
!679 = !DILocation(line: 1149, column: 57, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !3, discriminator: 1)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 1149, column: 5)
!682 = !{!683, !212, i64 0}
!683 = !{!"control_pdu_handler", !212, i64 0, !212, i64 1, !231, i64 4}
!684 = !DILocation(line: 1149, column: 5, scope: !685)
!685 = !DILexicalBlockFile(scope: !676, file: !3, discriminator: 1)
!686 = !DILocation(line: 1150, column: 37, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 1150, column: 13)
!688 = distinct !DILexicalBlock(scope: !681, file: !3, line: 1149, column: 76)
!689 = !DILocation(line: 1150, column: 29, scope: !687)
!690 = !DILocation(line: 1150, column: 13, scope: !688)
!691 = !DILocation(line: 1149, column: 72, scope: !692)
!692 = !DILexicalBlockFile(scope: !681, file: !3, discriminator: 2)
!693 = distinct !{!693, !694, !695}
!694 = !DILocation(line: 1149, column: 5, scope: !676)
!695 = !DILocation(line: 1155, column: 5, scope: !676)
!696 = !DILocation(line: 1157, column: 10, scope: !697)
!697 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1157, column: 9)
!698 = !DILocation(line: 1157, column: 18, scope: !697)
!699 = !DILocation(line: 1157, column: 30, scope: !700)
!700 = !DILexicalBlockFile(scope: !697, file: !3, discriminator: 1)
!701 = !{!683, !212, i64 1}
!702 = !DILocation(line: 1157, column: 38, scope: !700)
!703 = !DILocation(line: 1157, column: 35, scope: !700)
!704 = !DILocation(line: 1157, column: 9, scope: !705)
!705 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 1)
!706 = !DILocation(line: 1163, column: 19, scope: !707)
!707 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1163, column: 9)
!708 = !{!683, !231, i64 4}
!709 = !DILocation(line: 1163, column: 10, scope: !707)
!710 = !DILocation(line: 1163, column: 9, scope: !635)
!711 = !DILocation(line: 1169, column: 13, scope: !635)
!712 = !DILocation(line: 1169, column: 11, scope: !635)
!713 = !DILocation(line: 1180, column: 34, scope: !635)
!714 = !DILocation(line: 1180, column: 32, scope: !635)
!715 = !DILocation(line: 1180, column: 5, scope: !635)
!716 = !DILocation(line: 1183, column: 10, scope: !635)
!717 = !DILocation(line: 1183, column: 21, scope: !635)
!718 = !DILocation(line: 1184, column: 11, scope: !635)
!719 = !DILocation(line: 1186, column: 5, scope: !635)
!720 = !DILocation(line: 1187, column: 1, scope: !635)
!721 = distinct !DISubprogram(name: "avrcp_get_capabilities_resp", scope: !3, file: !3, line: 633, type: !722, isLocal: true, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{!126, !68, !62, !62, !150, !151}
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733}
!725 = !DILocalVariable(name: "conn", arg: 1, scope: !721, file: !3, line: 633, type: !68)
!726 = !DILocalVariable(name: "code", arg: 2, scope: !721, file: !3, line: 634, type: !62)
!727 = !DILocalVariable(name: "subunit", arg: 3, scope: !721, file: !3, line: 634, type: !62)
!728 = !DILocalVariable(name: "operands", arg: 4, scope: !721, file: !3, line: 635, type: !150)
!729 = !DILocalVariable(name: "operand_count", arg: 5, scope: !721, file: !3, line: 635, type: !151)
!730 = !DILocalVariable(name: "pdu", scope: !721, file: !3, line: 637, type: !91)
!731 = !DILocalVariable(name: "events", scope: !721, file: !3, line: 638, type: !50)
!732 = !DILocalVariable(name: "count", scope: !721, file: !3, line: 639, type: !62)
!733 = !DILocalVariable(name: "event", scope: !734, file: !3, line: 656, type: !62)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 655, column: 32)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 655, column: 5)
!736 = distinct !DILexicalBlock(scope: !721, file: !3, line: 655, column: 5)
!737 = !DILocation(line: 633, column: 55, scope: !721)
!738 = !DILocation(line: 634, column: 49, scope: !721)
!739 = !DILocation(line: 634, column: 63, scope: !721)
!740 = !DILocation(line: 635, column: 50, scope: !721)
!741 = !DILocation(line: 635, column: 64, scope: !721)
!742 = !DILocation(line: 638, column: 14, scope: !721)
!743 = !DILocation(line: 641, column: 13, scope: !744)
!744 = distinct !DILexicalBlock(scope: !721, file: !3, line: 641, column: 9)
!745 = !DILocation(line: 641, column: 21, scope: !744)
!746 = !DILocation(line: 641, column: 29, scope: !747)
!747 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!748 = !DILocation(line: 641, column: 24, scope: !747)
!749 = !DILocation(line: 641, column: 39, scope: !747)
!750 = !DILocation(line: 641, column: 9, scope: !751)
!751 = !DILexicalBlockFile(scope: !721, file: !3, discriminator: 1)
!752 = !DILocation(line: 645, column: 5, scope: !721)
!753 = !DILocation(line: 653, column: 13, scope: !721)
!754 = !DILocation(line: 639, column: 13, scope: !721)
!755 = !DILocation(line: 655, column: 18, scope: !756)
!756 = !DILexicalBlockFile(scope: !735, file: !3, discriminator: 1)
!757 = !DILocation(line: 655, column: 5, scope: !758)
!758 = !DILexicalBlockFile(scope: !736, file: !3, discriminator: 1)
!759 = !DILocation(line: 656, column: 39, scope: !734)
!760 = !DILocation(line: 656, column: 25, scope: !734)
!761 = !DILocation(line: 656, column: 17, scope: !734)
!762 = !DILocation(line: 658, column: 25, scope: !734)
!763 = !DILocation(line: 659, column: 48, scope: !734)
!764 = !DILocation(line: 659, column: 73, scope: !734)
!765 = !DILocation(line: 661, column: 9, scope: !734)
!766 = !DILocation(line: 663, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !734, file: !3, line: 661, column: 24)
!768 = !DILocation(line: 664, column: 13, scope: !767)
!769 = !DILocation(line: 666, column: 17, scope: !767)
!770 = !DILocation(line: 667, column: 17, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 666, column: 41)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 666, column: 17)
!773 = !DILocation(line: 668, column: 13, scope: !771)
!774 = !DILocation(line: 671, column: 17, scope: !767)
!775 = !DILocation(line: 672, column: 17, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 671, column: 41)
!777 = distinct !DILexicalBlock(scope: !767, file: !3, line: 671, column: 17)
!778 = !DILocation(line: 673, column: 13, scope: !776)
!779 = !DILocation(line: 684, column: 17, scope: !767)
!780 = !DILocation(line: 685, column: 17, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 684, column: 41)
!782 = distinct !DILexicalBlock(scope: !767, file: !3, line: 684, column: 17)
!783 = !DILocation(line: 686, column: 13, scope: !781)
!784 = !DILocation(line: 655, column: 28, scope: !785)
!785 = !DILexicalBlockFile(scope: !735, file: !3, discriminator: 2)
!786 = distinct !{!786, !787, !788}
!787 = !DILocation(line: 655, column: 5, scope: !736)
!788 = !DILocation(line: 689, column: 5, scope: !736)
!789 = !DILocation(line: 691, column: 1, scope: !721)
!790 = distinct !DISubprogram(name: "avrcp_handle_event", scope: !3, file: !3, line: 701, type: !722, isLocal: true, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798}
!792 = !DILocalVariable(name: "conn", arg: 1, scope: !790, file: !3, line: 701, type: !68)
!793 = !DILocalVariable(name: "code", arg: 2, scope: !790, file: !3, line: 702, type: !62)
!794 = !DILocalVariable(name: "subunit", arg: 3, scope: !790, file: !3, line: 702, type: !62)
!795 = !DILocalVariable(name: "operands", arg: 4, scope: !790, file: !3, line: 703, type: !150)
!796 = !DILocalVariable(name: "operand_count", arg: 5, scope: !790, file: !3, line: 703, type: !151)
!797 = !DILocalVariable(name: "pdu", scope: !790, file: !3, line: 705, type: !91)
!798 = !DILocalVariable(name: "event", scope: !790, file: !3, line: 706, type: !62)
!799 = !DILocation(line: 701, column: 46, scope: !790)
!800 = !DILocation(line: 702, column: 40, scope: !790)
!801 = !DILocation(line: 702, column: 54, scope: !790)
!802 = !DILocation(line: 703, column: 41, scope: !790)
!803 = !DILocation(line: 703, column: 55, scope: !790)
!804 = !DILocation(line: 705, column: 32, scope: !790)
!805 = !DILocation(line: 705, column: 26, scope: !790)
!806 = !DILocation(line: 708, column: 15, scope: !807)
!807 = distinct !DILexicalBlock(scope: !790, file: !3, line: 708, column: 9)
!808 = !DILocation(line: 708, column: 36, scope: !807)
!809 = !DILocation(line: 708, column: 44, scope: !810)
!810 = !DILexicalBlockFile(scope: !807, file: !3, discriminator: 1)
!811 = !DILocation(line: 709, column: 13, scope: !807)
!812 = !DILocation(line: 708, column: 66, scope: !810)
!813 = !DILocation(line: 708, column: 9, scope: !814)
!814 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 2)
!815 = !DILocation(line: 713, column: 18, scope: !790)
!816 = !DILocation(line: 713, column: 13, scope: !790)
!817 = !DILocation(line: 706, column: 13, scope: !790)
!818 = !DILocation(line: 718, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 715, column: 36)
!820 = distinct !DILexicalBlock(scope: !790, file: !3, line: 715, column: 9)
!821 = !DILocation(line: 718, column: 48, scope: !819)
!822 = !DILocation(line: 718, column: 73, scope: !819)
!823 = !DILocation(line: 719, column: 9, scope: !819)
!824 = !DILocation(line: 721, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !819, file: !3, line: 719, column: 24)
!826 = !DILocation(line: 722, column: 13, scope: !825)
!827 = !DILocation(line: 724, column: 17, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 724, column: 17)
!829 = !DILocation(line: 724, column: 17, scope: !825)
!830 = !DILocation(line: 725, column: 17, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 724, column: 41)
!832 = !DILocation(line: 726, column: 13, scope: !831)
!833 = !DILocation(line: 729, column: 17, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !3, line: 729, column: 17)
!835 = !DILocation(line: 729, column: 17, scope: !825)
!836 = !DILocation(line: 730, column: 17, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 729, column: 41)
!838 = !DILocation(line: 731, column: 13, scope: !837)
!839 = !DILocation(line: 734, column: 13, scope: !825)
!840 = !DILocation(line: 735, column: 13, scope: !825)
!841 = !DILocation(line: 737, column: 17, scope: !842)
!842 = distinct !DILexicalBlock(scope: !825, file: !3, line: 737, column: 17)
!843 = !DILocation(line: 737, column: 17, scope: !825)
!844 = !DILocation(line: 738, column: 17, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 737, column: 41)
!846 = !DILocation(line: 739, column: 13, scope: !845)
!847 = !DILocation(line: 745, column: 5, scope: !790)
!848 = !DILocalVariable(name: "conn", arg: 1, scope: !849, file: !3, line: 341, type: !68)
!849 = distinct !DISubprogram(name: "avrcp_volume_changed", scope: !3, file: !3, line: 341, type: !850, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !68, !91}
!852 = !{!848, !853, !854}
!853 = !DILocalVariable(name: "pdu", arg: 2, scope: !849, file: !3, line: 342, type: !91)
!854 = !DILocalVariable(name: "volume", scope: !849, file: !3, line: 344, type: !62)
!855 = !DILocation(line: 341, column: 48, scope: !849, inlinedAt: !856)
!856 = distinct !DILocation(line: 747, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !790, file: !3, line: 745, column: 20)
!858 = !DILocation(line: 345, column: 14, scope: !849, inlinedAt: !856)
!859 = !DILocation(line: 345, column: 29, scope: !849, inlinedAt: !856)
!860 = !DILocation(line: 344, column: 13, scope: !849, inlinedAt: !856)
!861 = !DILocation(line: 346, column: 5, scope: !862, inlinedAt: !856)
!862 = distinct !DILexicalBlock(scope: !849, file: !3, line: 346, column: 5)
!863 = !DILocation(line: 346, column: 5, scope: !849, inlinedAt: !856)
!864 = !DILocation(line: 346, column: 5, scope: !865, inlinedAt: !856)
!865 = !DILexicalBlockFile(scope: !862, file: !3, discriminator: 1)
!866 = !DILocation(line: 347, column: 5, scope: !849, inlinedAt: !856)
!867 = !DILocation(line: 748, column: 9, scope: !857)
!868 = !DILocalVariable(name: "conn", arg: 1, scope: !869, file: !3, line: 351, type: !68)
!869 = distinct !DISubprogram(name: "avrcp_status_changed", scope: !3, file: !3, line: 351, type: !850, isLocal: true, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !870)
!870 = !{!868, !871, !872, !873}
!871 = !DILocalVariable(name: "pdu", arg: 2, scope: !869, file: !3, line: 352, type: !91)
!872 = !DILocalVariable(name: "value", scope: !869, file: !3, line: 354, type: !62)
!873 = !DILocalVariable(name: "sta", scope: !869, file: !3, line: 355, type: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2DP_STATE", file: !33, line: 163, baseType: !32)
!875 = !DILocation(line: 351, column: 48, scope: !869, inlinedAt: !876)
!876 = distinct !DILocation(line: 751, column: 9, scope: !857)
!877 = !DILocation(line: 352, column: 55, scope: !869, inlinedAt: !876)
!878 = !DILocation(line: 355, column: 16, scope: !869, inlinedAt: !876)
!879 = !DILocation(line: 358, column: 13, scope: !869, inlinedAt: !876)
!880 = !DILocation(line: 359, column: 5, scope: !869, inlinedAt: !876)
!881 = !DILocation(line: 381, column: 29, scope: !882, inlinedAt: !876)
!882 = distinct !DILexicalBlock(scope: !869, file: !3, line: 381, column: 9)
!883 = !DILocation(line: 381, column: 37, scope: !882, inlinedAt: !876)
!884 = !DILocation(line: 381, column: 9, scope: !869, inlinedAt: !876)
!885 = !DILocation(line: 382, column: 37, scope: !886, inlinedAt: !876)
!886 = distinct !DILexicalBlock(scope: !882, file: !3, line: 381, column: 45)
!887 = !DILocation(line: 383, column: 13, scope: !888, inlinedAt: !876)
!888 = distinct !DILexicalBlock(scope: !886, file: !3, line: 383, column: 13)
!889 = !DILocation(line: 383, column: 29, scope: !888, inlinedAt: !876)
!890 = !{!234, !231, i64 0}
!891 = !DILocation(line: 383, column: 13, scope: !886, inlinedAt: !876)
!892 = !DILocation(line: 384, column: 53, scope: !893, inlinedAt: !876)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 383, column: 54)
!894 = !DILocation(line: 384, column: 13, scope: !893, inlinedAt: !876)
!895 = !DILocation(line: 385, column: 9, scope: !893, inlinedAt: !876)
!896 = !DILocation(line: 386, column: 17, scope: !897, inlinedAt: !876)
!897 = distinct !DILexicalBlock(scope: !886, file: !3, line: 386, column: 13)
!898 = !DILocation(line: 387, column: 51, scope: !899, inlinedAt: !876)
!899 = distinct !DILexicalBlock(scope: !897, file: !3, line: 386, column: 47)
!900 = !DILocation(line: 386, column: 13, scope: !886, inlinedAt: !876)
!901 = !DILocation(line: 391, column: 5, scope: !886, inlinedAt: !876)
!902 = !DILocation(line: 754, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !857, file: !3, line: 754, column: 13)
!904 = !DILocation(line: 754, column: 13, scope: !857)
!905 = !DILocation(line: 755, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 754, column: 37)
!907 = !DILocation(line: 756, column: 9, scope: !906)
!908 = !DILocation(line: 759, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !857, file: !3, line: 759, column: 13)
!910 = !DILocation(line: 759, column: 13, scope: !857)
!911 = !DILocation(line: 760, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !3, line: 759, column: 37)
!913 = !DILocation(line: 761, column: 9, scope: !912)
!914 = !DILocation(line: 777, column: 1, scope: !790)
!915 = distinct !DISubprogram(name: "avrcp_list_player_attributes_rsp", scope: !3, file: !3, line: 606, type: !722, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !916)
!916 = !{!917, !918, !919, !920, !921, !922, !923}
!917 = !DILocalVariable(name: "conn", arg: 1, scope: !915, file: !3, line: 606, type: !68)
!918 = !DILocalVariable(name: "code", arg: 2, scope: !915, file: !3, line: 607, type: !62)
!919 = !DILocalVariable(name: "subunit", arg: 3, scope: !915, file: !3, line: 607, type: !62)
!920 = !DILocalVariable(name: "operands", arg: 4, scope: !915, file: !3, line: 608, type: !150)
!921 = !DILocalVariable(name: "operand_count", arg: 5, scope: !915, file: !3, line: 608, type: !151)
!922 = !DILocalVariable(name: "pdu", scope: !915, file: !3, line: 610, type: !91)
!923 = !DILocalVariable(name: "count", scope: !915, file: !3, line: 611, type: !62)
!924 = !DILocalVariable(name: "buf", scope: !925, file: !3, line: 546, type: !267)
!925 = distinct !DISubprogram(name: "avrcp_get_current_player_value", scope: !3, file: !3, line: 543, type: !926, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !68, !150, !62}
!928 = !{!929, !930, !931, !924, !932, !933}
!929 = !DILocalVariable(name: "conn", arg: 1, scope: !925, file: !3, line: 543, type: !68)
!930 = !DILocalVariable(name: "attrs", arg: 2, scope: !925, file: !3, line: 544, type: !150)
!931 = !DILocalVariable(name: "count", arg: 3, scope: !925, file: !3, line: 544, type: !62)
!932 = !DILocalVariable(name: "pdu", scope: !925, file: !3, line: 547, type: !91)
!933 = !DILocalVariable(name: "i", scope: !925, file: !3, line: 548, type: !151)
!934 = !DILocation(line: 546, column: 13, scope: !925, inlinedAt: !935)
!935 = distinct !DILocation(line: 626, column: 5, scope: !915)
!936 = !DILocation(line: 606, column: 60, scope: !915)
!937 = !DILocation(line: 607, column: 17, scope: !915)
!938 = !DILocation(line: 607, column: 31, scope: !915)
!939 = !DILocation(line: 608, column: 18, scope: !915)
!940 = !DILocation(line: 608, column: 32, scope: !915)
!941 = !DILocation(line: 612, column: 10, scope: !942)
!942 = distinct !DILexicalBlock(scope: !915, file: !3, line: 612, column: 9)
!943 = !DILocation(line: 615, column: 14, scope: !944)
!944 = distinct !DILexicalBlock(scope: !915, file: !3, line: 615, column: 9)
!945 = !DILocation(line: 612, column: 9, scope: !915)
!946 = !DILocation(line: 619, column: 18, scope: !915)
!947 = !DILocation(line: 619, column: 13, scope: !915)
!948 = !DILocation(line: 611, column: 13, scope: !915)
!949 = !DILocation(line: 621, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !915, file: !3, line: 621, column: 9)
!951 = !DILocation(line: 621, column: 34, scope: !950)
!952 = !DILocation(line: 621, column: 32, scope: !950)
!953 = !DILocation(line: 621, column: 9, scope: !915)
!954 = !DILocation(line: 543, column: 58, scope: !925, inlinedAt: !935)
!955 = !DILocation(line: 544, column: 18, scope: !925, inlinedAt: !935)
!956 = !DILocation(line: 544, column: 33, scope: !925, inlinedAt: !935)
!957 = !DILocation(line: 546, column: 5, scope: !925, inlinedAt: !935)
!958 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !959)
!959 = distinct !DILocation(line: 552, column: 5, scope: !925, inlinedAt: !935)
!960 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !959)
!961 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !959)
!962 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !959)
!963 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !959)
!964 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !959)
!965 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !959)
!966 = !DILocation(line: 553, column: 10, scope: !925, inlinedAt: !935)
!967 = !DILocation(line: 553, column: 17, scope: !925, inlinedAt: !935)
!968 = !DILocation(line: 554, column: 10, scope: !925, inlinedAt: !935)
!969 = !DILocation(line: 554, column: 22, scope: !925, inlinedAt: !935)
!970 = !DILocation(line: 555, column: 23, scope: !925, inlinedAt: !935)
!971 = !DILocation(line: 555, column: 10, scope: !925, inlinedAt: !935)
!972 = !DILocation(line: 555, column: 21, scope: !925, inlinedAt: !935)
!973 = !DILocation(line: 556, column: 10, scope: !925, inlinedAt: !935)
!974 = !DILocation(line: 556, column: 20, scope: !925, inlinedAt: !935)
!975 = !DILocation(line: 548, column: 9, scope: !925, inlinedAt: !935)
!976 = !DILocation(line: 558, column: 23, scope: !977, inlinedAt: !935)
!977 = !DILexicalBlockFile(scope: !978, file: !3, discriminator: 1)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 558, column: 5)
!979 = distinct !DILexicalBlock(scope: !925, file: !3, line: 558, column: 5)
!980 = !DILocation(line: 558, column: 5, scope: !981, inlinedAt: !935)
!981 = !DILexicalBlockFile(scope: !979, file: !3, discriminator: 1)
!982 = !DILocation(line: 626, column: 43, scope: !915)
!983 = !DILocation(line: 559, column: 30, scope: !984, inlinedAt: !935)
!984 = distinct !DILexicalBlock(scope: !978, file: !3, line: 558, column: 42)
!985 = !DILocation(line: 559, column: 28, scope: !984, inlinedAt: !935)
!986 = !DILocation(line: 562, column: 5, scope: !925, inlinedAt: !935)
!987 = !DILocation(line: 564, column: 1, scope: !925, inlinedAt: !935)
!988 = !DILocation(line: 629, column: 5, scope: !915)
!989 = !DILocation(line: 630, column: 1, scope: !915)
!990 = distinct !DISubprogram(name: "avrcp_player_value_rsp", scope: !3, file: !3, line: 415, type: !722, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !991)
!991 = !{!992, !993, !994, !995, !996, !997}
!992 = !DILocalVariable(name: "conn", arg: 1, scope: !990, file: !3, line: 415, type: !68)
!993 = !DILocalVariable(name: "code", arg: 2, scope: !990, file: !3, line: 416, type: !62)
!994 = !DILocalVariable(name: "subunit", arg: 3, scope: !990, file: !3, line: 416, type: !62)
!995 = !DILocalVariable(name: "operands", arg: 4, scope: !990, file: !3, line: 417, type: !150)
!996 = !DILocalVariable(name: "operand_count", arg: 5, scope: !990, file: !3, line: 417, type: !151)
!997 = !DILocalVariable(name: "pdu", scope: !990, file: !3, line: 419, type: !91)
!998 = !DILocation(line: 415, column: 50, scope: !990)
!999 = !DILocation(line: 416, column: 44, scope: !990)
!1000 = !DILocation(line: 416, column: 58, scope: !990)
!1001 = !DILocation(line: 417, column: 45, scope: !990)
!1002 = !DILocation(line: 417, column: 59, scope: !990)
!1003 = !DILocation(line: 419, column: 26, scope: !990)
!1004 = !DILocation(line: 421, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !990, file: !3, line: 421, column: 9)
!1006 = !DILocation(line: 424, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !990, file: !3, line: 424, column: 9)
!1008 = !DILocation(line: 421, column: 9, scope: !990)
!1009 = !DILocation(line: 428, column: 14, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !990, file: !3, line: 428, column: 9)
!1011 = !DILocation(line: 419, column: 32, scope: !990)
!1012 = !DILocation(line: 432, column: 12, scope: !990)
!1013 = !DILocation(line: 432, column: 5, scope: !990)
!1014 = !DILocation(line: 433, column: 1, scope: !990)
!1015 = distinct !DISubprogram(name: "avrcp_get_play_status_rsp", scope: !3, file: !3, line: 504, type: !722, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1029, !1030, !1031}
!1017 = !DILocalVariable(name: "conn", arg: 1, scope: !1015, file: !3, line: 504, type: !68)
!1018 = !DILocalVariable(name: "code", arg: 2, scope: !1015, file: !3, line: 505, type: !62)
!1019 = !DILocalVariable(name: "subunit", arg: 3, scope: !1015, file: !3, line: 505, type: !62)
!1020 = !DILocalVariable(name: "operands", arg: 4, scope: !1015, file: !3, line: 506, type: !150)
!1021 = !DILocalVariable(name: "operand_count", arg: 5, scope: !1015, file: !3, line: 506, type: !151)
!1022 = !DILocalVariable(name: "pdu", scope: !1015, file: !3, line: 508, type: !91)
!1023 = !DILocalVariable(name: "song_length", scope: !1015, file: !3, line: 509, type: !113)
!1024 = !DILocalVariable(name: "song_position", scope: !1015, file: !3, line: 509, type: !113)
!1025 = !DILocalVariable(name: "info", scope: !1015, file: !3, line: 510, type: !1026)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 2)
!1029 = !DILocalVariable(name: "play_status", scope: !1015, file: !3, line: 511, type: !52)
!1030 = !DILocalVariable(name: "min", scope: !1015, file: !3, line: 512, type: !52)
!1031 = !DILocalVariable(name: "sec", scope: !1015, file: !3, line: 512, type: !52)
!1032 = !DILocation(line: 504, column: 53, scope: !1015)
!1033 = !DILocation(line: 505, column: 47, scope: !1015)
!1034 = !DILocation(line: 505, column: 61, scope: !1015)
!1035 = !DILocation(line: 506, column: 48, scope: !1015)
!1036 = !DILocation(line: 506, column: 62, scope: !1015)
!1037 = !DILocation(line: 510, column: 8, scope: !1015)
!1038 = !DILocation(line: 513, column: 10, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 513, column: 9)
!1040 = !DILocation(line: 516, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 516, column: 9)
!1042 = !DILocation(line: 513, column: 9, scope: !1015)
!1043 = !DILocation(line: 520, column: 14, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 520, column: 9)
!1045 = !DILocation(line: 525, column: 21, scope: !1015)
!1046 = !DILocation(line: 509, column: 9, scope: !1015)
!1047 = !DILocation(line: 526, column: 21, scope: !1015)
!1048 = !DILocation(line: 509, column: 22, scope: !1015)
!1049 = !DILocation(line: 528, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 528, column: 9)
!1051 = !DILocation(line: 528, column: 25, scope: !1050)
!1052 = !{!234, !231, i64 32}
!1053 = !DILocation(line: 528, column: 9, scope: !1015)
!1054 = !DILocation(line: 529, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 528, column: 40)
!1056 = !DILocation(line: 530, column: 9, scope: !1055)
!1057 = !DILocation(line: 530, column: 25, scope: !1055)
!1058 = !DILocation(line: 531, column: 9, scope: !1055)
!1059 = !DILocation(line: 531, column: 25, scope: !1055)
!1060 = !DILocation(line: 532, column: 5, scope: !1055)
!1061 = !DILocation(line: 533, column: 34, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 532, column: 12)
!1063 = !DILocation(line: 534, column: 37, scope: !1062)
!1064 = !DILocation(line: 535, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 535, column: 9)
!1066 = !DILocation(line: 535, column: 9, scope: !1062)
!1067 = !DILocation(line: 533, column: 27, scope: !1062)
!1068 = !DILocation(line: 534, column: 34, scope: !1062)
!1069 = !DILocation(line: 535, column: 9, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1065, file: !3, discriminator: 1)
!1071 = !DILocation(line: 538, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 538, column: 9)
!1073 = !DILocation(line: 536, column: 36, scope: !1062)
!1074 = !DILocation(line: 537, column: 39, scope: !1062)
!1075 = !DILocation(line: 538, column: 9, scope: !1062)
!1076 = !DILocation(line: 536, column: 29, scope: !1062)
!1077 = !DILocation(line: 537, column: 36, scope: !1062)
!1078 = !DILocation(line: 538, column: 9, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 1)
!1080 = !DILocation(line: 541, column: 1, scope: !1015)
!1081 = distinct !DISubprogram(name: "avrcp_get_element_attributes_rsp", scope: !3, file: !3, line: 442, type: !722, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095}
!1083 = !DILocalVariable(name: "conn", arg: 1, scope: !1081, file: !3, line: 442, type: !68)
!1084 = !DILocalVariable(name: "code", arg: 2, scope: !1081, file: !3, line: 443, type: !62)
!1085 = !DILocalVariable(name: "subunit", arg: 3, scope: !1081, file: !3, line: 443, type: !62)
!1086 = !DILocalVariable(name: "operands", arg: 4, scope: !1081, file: !3, line: 444, type: !150)
!1087 = !DILocalVariable(name: "operand_count", arg: 5, scope: !1081, file: !3, line: 444, type: !151)
!1088 = !DILocalVariable(name: "pdu", scope: !1081, file: !3, line: 446, type: !91)
!1089 = !DILocalVariable(name: "info_len", scope: !1081, file: !3, line: 447, type: !78)
!1090 = !DILocalVariable(name: "pos_beg", scope: !1081, file: !3, line: 448, type: !78)
!1091 = !DILocalVariable(name: "pos_end", scope: !1081, file: !3, line: 448, type: !78)
!1092 = !DILocalVariable(name: "attribute_id", scope: !1081, file: !3, line: 449, type: !113)
!1093 = !DILocalVariable(name: "character_set_id", scope: !1081, file: !3, line: 450, type: !78)
!1094 = !DILocalVariable(name: "attribute_len", scope: !1081, file: !3, line: 451, type: !78)
!1095 = !DILocalVariable(name: "number_of_attributes", scope: !1081, file: !3, line: 452, type: !52)
!1096 = !DILocation(line: 442, column: 60, scope: !1081)
!1097 = !DILocation(line: 443, column: 17, scope: !1081)
!1098 = !DILocation(line: 443, column: 31, scope: !1081)
!1099 = !DILocation(line: 444, column: 18, scope: !1081)
!1100 = !DILocation(line: 444, column: 32, scope: !1081)
!1101 = !DILocation(line: 453, column: 10, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 453, column: 9)
!1103 = !DILocation(line: 456, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 456, column: 9)
!1105 = !DILocation(line: 453, column: 9, scope: !1081)
!1106 = !DILocation(line: 460, column: 14, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 460, column: 9)
!1108 = !DILocation(line: 466, column: 16, scope: !1081)
!1109 = !DILocation(line: 467, column: 28, scope: !1081)
!1110 = !DILocation(line: 452, column: 9, scope: !1081)
!1111 = !DILocation(line: 448, column: 9, scope: !1081)
!1112 = !DILocation(line: 470, column: 5, scope: !1081)
!1113 = !DILocation(line: 470, column: 12, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1081, file: !3, discriminator: 1)
!1115 = !DILocation(line: 470, column: 20, scope: !1114)
!1116 = !DILocation(line: 470, column: 5, scope: !1114)
!1117 = !DILocation(line: 471, column: 24, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 470, column: 32)
!1119 = !DILocation(line: 474, column: 17, scope: !1118)
!1120 = !DILocation(line: 475, column: 25, scope: !1118)
!1121 = !DILocation(line: 451, column: 9, scope: !1081)
!1122 = !DILocation(line: 476, column: 17, scope: !1118)
!1123 = !DILocation(line: 480, column: 13, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 480, column: 13)
!1125 = !DILocation(line: 480, column: 27, scope: !1124)
!1126 = !DILocation(line: 480, column: 13, scope: !1118)
!1127 = !DILocation(line: 481, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 481, column: 17)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 480, column: 33)
!1130 = !DILocation(line: 481, column: 33, scope: !1128)
!1131 = !DILocation(line: 481, column: 17, scope: !1129)
!1132 = !DILocation(line: 482, column: 65, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 481, column: 48)
!1134 = !DILocation(line: 482, column: 17, scope: !1133)
!1135 = !DILocation(line: 483, column: 13, scope: !1133)
!1136 = !DILocation(line: 487, column: 62, scope: !1118)
!1137 = !DILocation(line: 487, column: 9, scope: !1118)
!1138 = !DILocation(line: 488, column: 17, scope: !1118)
!1139 = !DILocation(line: 489, column: 29, scope: !1118)
!1140 = !DILocation(line: 490, column: 34, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 490, column: 13)
!1142 = !DILocation(line: 490, column: 13, scope: !1118)
!1143 = distinct !{!1143, !1112, !1144}
!1144 = !DILocation(line: 493, column: 5, scope: !1081)
!1145 = !DILocation(line: 495, column: 1, scope: !1081)
!1146 = distinct !DISubprogram(name: "set_remote_player_value", scope: !3, file: !3, line: 394, type: !1147, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!126, !68, !91, !52}
!1149 = !{!1150, !1151, !1152, !1153, !1154}
!1150 = !DILocalVariable(name: "conn", arg: 1, scope: !1146, file: !3, line: 394, type: !68)
!1151 = !DILocalVariable(name: "pdu", arg: 2, scope: !1146, file: !3, line: 394, type: !91)
!1152 = !DILocalVariable(name: "count_index", arg: 3, scope: !1146, file: !3, line: 394, type: !52)
!1153 = !DILocalVariable(name: "count", scope: !1146, file: !3, line: 396, type: !62)
!1154 = !DILocalVariable(name: "i", scope: !1146, file: !3, line: 397, type: !151)
!1155 = !DILocation(line: 394, column: 51, scope: !1146)
!1156 = !DILocation(line: 394, column: 78, scope: !1146)
!1157 = !DILocation(line: 394, column: 86, scope: !1146)
!1158 = !DILocation(line: 398, column: 13, scope: !1146)
!1159 = !DILocation(line: 396, column: 13, scope: !1146)
!1160 = !DILocation(line: 399, column: 53, scope: !1146)
!1161 = !DILocation(line: 399, column: 25, scope: !1146)
!1162 = !DILocation(line: 399, column: 51, scope: !1146)
!1163 = !{!244, !212, i64 31}
!1164 = !DILocation(line: 400, column: 25, scope: !1146)
!1165 = !DILocation(line: 400, column: 52, scope: !1146)
!1166 = !{!244, !212, i64 32}
!1167 = !DILocation(line: 401, column: 14, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 401, column: 9)
!1169 = !DILocation(line: 401, column: 9, scope: !1168)
!1170 = !DILocation(line: 401, column: 27, scope: !1168)
!1171 = !DILocation(line: 401, column: 33, scope: !1168)
!1172 = !DILocation(line: 401, column: 25, scope: !1168)
!1173 = !DILocation(line: 401, column: 9, scope: !1146)
!1174 = !DILocation(line: 397, column: 9, scope: !1146)
!1175 = !DILocation(line: 405, column: 37, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1177, file: !3, discriminator: 1)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 405, column: 5)
!1178 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 405, column: 5)
!1179 = !DILocation(line: 405, column: 5, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1178, file: !3, discriminator: 1)
!1181 = !DILocation(line: 405, column: 26, scope: !1178)
!1182 = !DILocation(line: 408, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 408, column: 9)
!1184 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 405, column: 59)
!1185 = !DILocation(line: 408, column: 9, scope: !1184)
!1186 = !DILocation(line: 410, column: 94, scope: !1184)
!1187 = !DILocation(line: 410, column: 80, scope: !1184)
!1188 = !DILocation(line: 408, column: 9, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1183, file: !3, discriminator: 1)
!1190 = !DILocation(line: 409, column: 59, scope: !1184)
!1191 = !DILocation(line: 409, column: 56, scope: !1184)
!1192 = !DILocation(line: 410, column: 62, scope: !1184)
!1193 = !DILocation(line: 410, column: 9, scope: !1184)
!1194 = !DILocation(line: 410, column: 78, scope: !1184)
!1195 = !DILocation(line: 405, column: 47, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1177, file: !3, discriminator: 2)
!1197 = !DILocation(line: 405, column: 53, scope: !1196)
!1198 = distinct !{!1198, !1199, !1200}
!1199 = !DILocation(line: 405, column: 5, scope: !1178)
!1200 = !DILocation(line: 411, column: 5, scope: !1178)
!1201 = !DILocation(line: 413, column: 1, scope: !1146)
!1202 = distinct !DISubprogram(name: "avrcp_handle_get_capabilities", scope: !3, file: !3, line: 960, type: !89, isLocal: true, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208}
!1204 = !DILocalVariable(name: "conn", arg: 1, scope: !1202, file: !3, line: 960, type: !68)
!1205 = !DILocalVariable(name: "pdu", arg: 2, scope: !1202, file: !3, line: 961, type: !91)
!1206 = !DILocalVariable(name: "transaction", arg: 3, scope: !1202, file: !3, line: 962, type: !62)
!1207 = !DILocalVariable(name: "len", scope: !1202, file: !3, line: 964, type: !50)
!1208 = !DILocalVariable(name: "i", scope: !1202, file: !3, line: 965, type: !49)
!1209 = !DILocation(line: 960, column: 60, scope: !1202)
!1210 = !DILocation(line: 961, column: 30, scope: !1202)
!1211 = !DILocation(line: 962, column: 17, scope: !1202)
!1212 = !DILocation(line: 964, column: 20, scope: !1202)
!1213 = !DILocation(line: 966, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 966, column: 9)
!1215 = !DILocation(line: 966, column: 13, scope: !1214)
!1216 = !DILocation(line: 966, column: 9, scope: !1202)
!1217 = !DILocation(line: 995, column: 5, scope: !1202)
!1218 = !DILocation(line: 970, column: 5, scope: !1202)
!1219 = !DILocation(line: 970, column: 20, scope: !1202)
!1220 = !DILocation(line: 971, column: 13, scope: !1202)
!1221 = !DILocation(line: 971, column: 5, scope: !1202)
!1222 = !DILocation(line: 982, column: 52, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 982, column: 17)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 981, column: 49)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 981, column: 9)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 981, column: 9)
!1227 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 971, column: 29)
!1228 = !DILocation(line: 965, column: 18, scope: !1202)
!1229 = !DILocation(line: 974, column: 29, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 973, column: 61)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 973, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 973, column: 9)
!1233 = !DILocation(line: 146, column: 36, scope: !199, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 974, column: 13, scope: !1230)
!1235 = !DILocation(line: 146, column: 59, scope: !199, inlinedAt: !1234)
!1236 = !DILocation(line: 148, column: 12, scope: !199, inlinedAt: !1234)
!1237 = !DILocation(line: 149, column: 5, scope: !199, inlinedAt: !1234)
!1238 = !DILocation(line: 149, column: 12, scope: !199, inlinedAt: !1234)
!1239 = !DILocation(line: 150, column: 5, scope: !199, inlinedAt: !1234)
!1240 = !DILocation(line: 150, column: 12, scope: !199, inlinedAt: !1234)
!1241 = !DILocation(line: 977, column: 25, scope: !1227)
!1242 = !DILocation(line: 978, column: 24, scope: !1227)
!1243 = !DILocation(line: 979, column: 9, scope: !1227)
!1244 = !DILocation(line: 982, column: 17, scope: !1223)
!1245 = !DILocation(line: 982, column: 17, scope: !1224)
!1246 = !DILocation(line: 983, column: 31, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 982, column: 70)
!1248 = !DILocation(line: 984, column: 51, scope: !1247)
!1249 = !DILocation(line: 984, column: 29, scope: !1247)
!1250 = !DILocation(line: 984, column: 44, scope: !1247)
!1251 = !DILocation(line: 984, column: 17, scope: !1247)
!1252 = !DILocation(line: 984, column: 49, scope: !1247)
!1253 = !DILocation(line: 985, column: 17, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 985, column: 17)
!1255 = !DILocation(line: 985, column: 17, scope: !1247)
!1256 = !DILocation(line: 985, column: 17, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1254, file: !3, discriminator: 1)
!1258 = !DILocation(line: 981, column: 45, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1225, file: !3, discriminator: 2)
!1260 = !DILocation(line: 981, column: 23, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1225, file: !3, discriminator: 1)
!1262 = !DILocation(line: 981, column: 9, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1226, file: !3, discriminator: 1)
!1264 = distinct !{!1264, !1265, !1266}
!1265 = !DILocation(line: 981, column: 9, scope: !1226)
!1266 = !DILocation(line: 987, column: 9, scope: !1226)
!1267 = !DILocation(line: 988, column: 27, scope: !1227)
!1268 = !DILocation(line: 988, column: 25, scope: !1227)
!1269 = !DILocation(line: 990, column: 9, scope: !1227)
!1270 = !DILocation(line: 994, column: 21, scope: !1202)
!1271 = !DILocation(line: 995, column: 20, scope: !1202)
!1272 = !DILocation(line: 997, column: 5, scope: !1202)
!1273 = !DILocation(line: 998, column: 1, scope: !1202)
!1274 = distinct !DISubprogram(name: "avrcp_handle_register_notification", scope: !3, file: !3, line: 876, type: !89, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1275)
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DILocalVariable(name: "conn", arg: 1, scope: !1274, file: !3, line: 876, type: !68)
!1277 = !DILocalVariable(name: "pdu", arg: 2, scope: !1274, file: !3, line: 877, type: !91)
!1278 = !DILocalVariable(name: "transaction", arg: 3, scope: !1274, file: !3, line: 878, type: !62)
!1279 = !DILocalVariable(name: "len", scope: !1274, file: !3, line: 880, type: !50)
!1280 = !DILocation(line: 876, column: 65, scope: !1274)
!1281 = !DILocation(line: 877, column: 30, scope: !1274)
!1282 = !DILocation(line: 878, column: 17, scope: !1274)
!1283 = !DILocation(line: 880, column: 20, scope: !1274)
!1284 = !DILocation(line: 888, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 888, column: 9)
!1286 = !DILocation(line: 888, column: 13, scope: !1285)
!1287 = !DILocation(line: 888, column: 9, scope: !1274)
!1288 = !DILocation(line: 893, column: 43, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 893, column: 9)
!1290 = !DILocation(line: 893, column: 11, scope: !1289)
!1291 = !DILocation(line: 893, column: 59, scope: !1289)
!1292 = !DILocation(line: 893, column: 10, scope: !1289)
!1293 = !DILocation(line: 893, column: 9, scope: !1274)
!1294 = !DILocation(line: 897, column: 5, scope: !1274)
!1295 = !DILocation(line: 911, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 897, column: 29)
!1297 = !DILocation(line: 911, column: 24, scope: !1296)
!1298 = !DILocation(line: 880, column: 14, scope: !1274)
!1299 = !DILocation(line: 913, column: 9, scope: !1296)
!1300 = !DILocation(line: 920, column: 46, scope: !1296)
!1301 = !DILocation(line: 920, column: 9, scope: !1296)
!1302 = !DILocation(line: 920, column: 24, scope: !1296)
!1303 = !DILocation(line: 921, column: 29, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 921, column: 13)
!1305 = !DILocation(line: 921, column: 38, scope: !1304)
!1306 = !DILocation(line: 921, column: 41, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1304, file: !3, discriminator: 1)
!1308 = !DILocation(line: 921, column: 57, scope: !1307)
!1309 = !DILocation(line: 921, column: 13, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1296, file: !3, discriminator: 1)
!1311 = !DILocation(line: 922, column: 30, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 921, column: 87)
!1313 = !DILocation(line: 924, column: 17, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 924, column: 17)
!1315 = !DILocation(line: 924, column: 32, scope: !1314)
!1316 = !DILocation(line: 924, column: 17, scope: !1312)
!1317 = !DILocation(line: 922, column: 28, scope: !1312)
!1318 = !DILocation(line: 927, column: 46, scope: !1312)
!1319 = !DILocation(line: 928, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 928, column: 13)
!1321 = !DILocation(line: 928, column: 13, scope: !1312)
!1322 = !DILocation(line: 928, column: 13, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1320, file: !3, discriminator: 1)
!1324 = !DILocation(line: 930, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 930, column: 13)
!1326 = !DILocation(line: 930, column: 28, scope: !1325)
!1327 = !DILocation(line: 930, column: 13, scope: !1296)
!1328 = !DILocation(line: 931, column: 28, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 930, column: 35)
!1330 = !DILocation(line: 932, column: 9, scope: !1329)
!1331 = !DILocation(line: 942, column: 37, scope: !1274)
!1332 = !DILocation(line: 942, column: 5, scope: !1274)
!1333 = !DILocation(line: 942, column: 53, scope: !1274)
!1334 = !DILocation(line: 942, column: 72, scope: !1274)
!1335 = !DILocation(line: 943, column: 37, scope: !1274)
!1336 = !DILocation(line: 943, column: 5, scope: !1274)
!1337 = !DILocation(line: 943, column: 53, scope: !1274)
!1338 = !DILocation(line: 943, column: 72, scope: !1274)
!1339 = !DILocation(line: 944, column: 21, scope: !1274)
!1340 = !DILocation(line: 947, column: 5, scope: !1274)
!1341 = !DILocation(line: 950, column: 21, scope: !1274)
!1342 = !DILocation(line: 951, column: 20, scope: !1274)
!1343 = !DILocation(line: 952, column: 5, scope: !1274)
!1344 = !DILocation(line: 953, column: 1, scope: !1274)
!1345 = distinct !DISubprogram(name: "avrcp_handle_set_absolute_volume", scope: !3, file: !3, line: 1001, type: !89, isLocal: true, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352}
!1347 = !DILocalVariable(name: "conn", arg: 1, scope: !1345, file: !3, line: 1001, type: !68)
!1348 = !DILocalVariable(name: "pdu", arg: 2, scope: !1345, file: !3, line: 1002, type: !91)
!1349 = !DILocalVariable(name: "transaction", arg: 3, scope: !1345, file: !3, line: 1003, type: !62)
!1350 = !DILocalVariable(name: "len", scope: !1345, file: !3, line: 1006, type: !50)
!1351 = !DILocalVariable(name: "volume", scope: !1345, file: !3, line: 1007, type: !62)
!1352 = !DILocalVariable(name: "temp_result", scope: !1353, file: !3, line: 1019, type: !151)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1016, column: 58)
!1354 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1016, column: 9)
!1355 = !DILocation(line: 1001, column: 63, scope: !1345)
!1356 = !DILocation(line: 1002, column: 30, scope: !1345)
!1357 = !DILocation(line: 1003, column: 17, scope: !1345)
!1358 = !DILocation(line: 1006, column: 20, scope: !1345)
!1359 = !DILocation(line: 1009, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1009, column: 9)
!1361 = !DILocation(line: 1009, column: 13, scope: !1360)
!1362 = !DILocation(line: 1009, column: 9, scope: !1345)
!1363 = !DILocation(line: 1013, column: 14, scope: !1345)
!1364 = !DILocation(line: 1013, column: 29, scope: !1345)
!1365 = !DILocation(line: 1007, column: 13, scope: !1345)
!1366 = !DILocation(line: 1016, column: 9, scope: !1354)
!1367 = !DILocation(line: 1016, column: 25, scope: !1354)
!1368 = !{!234, !231, i64 28}
!1369 = !DILocation(line: 1016, column: 49, scope: !1354)
!1370 = !DILocation(line: 1016, column: 9, scope: !1345)
!1371 = !DILocation(line: 1019, column: 47, scope: !1353)
!1372 = !DILocation(line: 1019, column: 62, scope: !1353)
!1373 = !DILocation(line: 1025, column: 46, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 1024, column: 16)
!1375 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1021, column: 13)
!1376 = !DILocation(line: 1028, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1028, column: 9)
!1378 = !DILocation(line: 1028, column: 9, scope: !1353)
!1379 = !DILocation(line: 1028, column: 9, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1377, file: !3, discriminator: 1)
!1381 = !DILocation(line: 1038, column: 29, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1037, column: 9)
!1383 = !DILocation(line: 1038, column: 13, scope: !1382)
!1384 = !DILocation(line: 1040, column: 5, scope: !1353)
!1385 = !DILocation(line: 1045, column: 21, scope: !1345)
!1386 = !DILocation(line: 1046, column: 5, scope: !1345)
!1387 = !DILocation(line: 1046, column: 20, scope: !1345)
!1388 = !DILocation(line: 1047, column: 5, scope: !1345)
!1389 = !DILocation(line: 1048, column: 1, scope: !1345)
