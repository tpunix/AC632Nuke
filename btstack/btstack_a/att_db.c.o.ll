; ModuleID = 'att_db.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_db.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.att_info_t = type { void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)*, i8, i8*, i16 (i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)*, i8, i16, %struct.btstack_linked_item*, %struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t, void (i8, i16, i8*, i16)*, %struct.btstack_linked_item*, i8 }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.att_iterator = type { i8*, i16, i16, i16, i8*, i16, i8* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }
%struct.att_service_handler = type { %struct.btstack_linked_item*, i16, i16, i16 (i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@att_global_info = external global %struct.att_info_t, align 4
@bluetooth_base_uuid = internal constant [16 x i8] c"\FB4\9B_\80\00\00\80\00\10\00\00\00\00\00\00", align 1, !dbg !43

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_uuid_for_handle(i16 zeroext) local_unnamed_addr #0 !dbg !53 {
  %2 = alloca %struct.att_iterator, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !57, metadata !DIExpression()), !dbg !71
  %3 = bitcast %struct.att_iterator* %2 to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !72
  call void @llvm.dbg.value(metadata %struct.att_iterator* %2, metadata !58, metadata !DIExpression(DW_OP_deref)), !dbg !73
  %4 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %2, i16 zeroext %0) #7, !dbg !74
  call void @llvm.dbg.value(metadata i32 %4, metadata !70, metadata !DIExpression()), !dbg !75
  %5 = icmp eq i32 %4, 0, !dbg !76
  br i1 %5, label %15, label %6, !dbg !78

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %2, i32 0, i32 2, !dbg !79
  %8 = load i16, i16* %7, align 2, !dbg !79, !tbaa !81
  %9 = and i16 %8, 512, !dbg !87
  %10 = icmp eq i16 %9, 0, !dbg !87
  br i1 %10, label %11, label %15, !dbg !88

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %2, i32 0, i32 4, !dbg !89
  %13 = load i8*, i8** %12, align 4, !dbg !89, !tbaa !90
  %14 = tail call zeroext i16 @little_endian_read_16(i8* %13, i32 0) #8, !dbg !91
  br label %15, !dbg !92

; <label>:15:                                     ; preds = %11, %6, %1
  %16 = phi i16 [ %14, %11 ], [ 0, %1 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !93
  ret i16 %16, !dbg !93
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define internal fastcc i32 @att_find_handle(%struct.att_iterator* nocapture, i16 zeroext) unnamed_addr #0 !dbg !94 {
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i16 %1, metadata !100, metadata !DIExpression()), !dbg !102
  %3 = icmp eq i16 %1, 0, !dbg !103
  br i1 %3, label %19, label %4, !dbg !105

; <label>:4:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !106, metadata !DIExpression()), !dbg !111
  %5 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !113, !tbaa !114
  %6 = bitcast %struct.att_iterator* %0 to i32*, !dbg !118
  store i32 %5, i32* %6, align 4, !dbg !118, !tbaa !119
  %7 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 0
  %8 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 3
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !120, metadata !DIExpression()), !dbg !125
  %9 = icmp eq i32 %5, 0, !dbg !128
  br i1 %9, label %19, label %10, !dbg !129

; <label>:10:                                     ; preds = %4
  br label %11, !dbg !130

; <label>:11:                                     ; preds = %14, %10
  tail call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %0) #7, !dbg !130
  %12 = load i16, i16* %8, align 4, !dbg !132, !tbaa !134
  %13 = icmp eq i16 %12, %1, !dbg !135
  br i1 %13, label %17, label %14, !dbg !136, !llvm.loop !137

; <label>:14:                                     ; preds = %11
  %15 = load i8*, i8** %7, align 4, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !120, metadata !DIExpression()), !dbg !125
  %16 = icmp eq i8* %15, null, !dbg !128
  br i1 %16, label %17, label %11, !dbg !129

; <label>:17:                                     ; preds = %14, %11
  %18 = phi i32 [ 0, %14 ], [ 1, %11 ]
  br label %19, !dbg !140

; <label>:19:                                     ; preds = %17, %4, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %18, %17 ]
  ret i32 %20, !dbg !140
}

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @att_set_db(i8*) local_unnamed_addr #0 !dbg !141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !145, metadata !DIExpression()), !dbg !146
  store i8* %0, i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3), align 4, !dbg !147, !tbaa !114
  ret void, !dbg !150
}

; Function Attrs: nounwind optsize
define hidden void @att_set_read_callback(i16 (i16, i16, i16, i8*, i16)*) local_unnamed_addr #0 !dbg !151 {
  call void @llvm.dbg.value(metadata i16 (i16, i16, i16, i8*, i16)* %0, metadata !160, metadata !DIExpression()), !dbg !161
  store i16 (i16, i16, i16, i8*, i16)* %0, i16 (i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 4), align 4, !dbg !162, !tbaa !163
  ret void, !dbg !164
}

; Function Attrs: nounwind optsize
define hidden void @att_set_write_callback(i32 (i16, i16, i16, i16, i8*, i16)*) local_unnamed_addr #0 !dbg !165 {
  call void @llvm.dbg.value(metadata i32 (i16, i16, i16, i16, i8*, i16)* %0, metadata !173, metadata !DIExpression()), !dbg !174
  store i32 (i16, i16, i16, i16, i8*, i16)* %0, i32 (i16, i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 5), align 4, !dbg !175, !tbaa !176
  ret void, !dbg !177
}

; Function Attrs: nounwind optsize
define hidden void @att_dump_attributes() local_unnamed_addr #0 !dbg !178 {
  %1 = alloca %struct.att_iterator, align 4
  %2 = alloca [16 x i8], align 1
  %3 = bitcast %struct.att_iterator* %1 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !185
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !186
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !106, metadata !DIExpression()), !dbg !187
  %4 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !189, !tbaa !114
  %5 = bitcast %struct.att_iterator* %1 to i32*, !dbg !190
  store i32 %4, i32* %5, align 4, !dbg !190, !tbaa !119
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0, !dbg !191
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6, !dbg !191
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !183, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !186
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !120, metadata !DIExpression()), !dbg !193
  %7 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %1, i32 0, i32 0, !dbg !196
  %8 = icmp eq i32 %4, 0, !dbg !197
  br i1 %8, label %26, label %9, !dbg !198

; <label>:9:                                      ; preds = %0
  %10 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %1, i32 0, i32 4
  br label %13, !dbg !198

; <label>:13:                                     ; preds = %22, %9
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !186
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %1) #7, !dbg !199
  %14 = load i16, i16* %10, align 4, !dbg !201, !tbaa !134
  %15 = icmp eq i16 %14, 0, !dbg !203
  br i1 %15, label %25, label %16, !dbg !204

; <label>:16:                                     ; preds = %13
  %17 = load i16, i16* %11, align 2, !dbg !205, !tbaa !81
  %18 = and i16 %17, 512, !dbg !207
  %19 = icmp eq i16 %18, 0, !dbg !207
  br i1 %19, label %22, label %20, !dbg !208

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %12, align 4, !dbg !209, !tbaa !90
  call void @reverse_128(i8* %21, i8* nonnull %6) #8, !dbg !211
  br label %22, !dbg !212

; <label>:22:                                     ; preds = %20, %16
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !186
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !120, metadata !DIExpression()), !dbg !193
  %23 = load i8*, i8** %7, align 4, !dbg !196, !tbaa !119
  %24 = icmp eq i8* %23, null, !dbg !197
  br i1 %24, label %25, label %13, !dbg !198, !llvm.loop !213

; <label>:25:                                     ; preds = %22, %13
  br label %26, !dbg !216

; <label>:26:                                     ; preds = %25, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6, !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !216
  ret void, !dbg !217
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_iterator_fetch_next(%struct.att_iterator* nocapture) unnamed_addr #0 !dbg !219 {
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !221, metadata !DIExpression()), !dbg !222
  %2 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 0, !dbg !223
  %3 = load i8*, i8** %2, align 4, !dbg !223, !tbaa !119
  %4 = tail call zeroext i16 @little_endian_read_16(i8* %3, i32 0) #8, !dbg !224
  %5 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 1, !dbg !225
  store i16 %4, i16* %5, align 4, !dbg !226, !tbaa !227
  %6 = icmp eq i16 %4, 0, !dbg !228
  br i1 %6, label %7, label %9, !dbg !230

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 2, !dbg !231
  store i16 0, i16* %8, align 2, !dbg !233, !tbaa !81
  br label %27, !dbg !234

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 4, !dbg !235, !tbaa !119
  %11 = tail call zeroext i16 @little_endian_read_16(i8* %10, i32 2) #8, !dbg !236
  %12 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 2, !dbg !237
  store i16 %11, i16* %12, align 2, !dbg !238, !tbaa !81
  %13 = load i8*, i8** %2, align 4, !dbg !239, !tbaa !119
  %14 = tail call zeroext i16 @little_endian_read_16(i8* %13, i32 4) #8, !dbg !240
  %15 = load i8*, i8** %2, align 4, !dbg !241, !tbaa !119
  %16 = getelementptr inbounds i8, i8* %15, i32 6, !dbg !242
  %17 = load i16, i16* %12, align 2, !dbg !243, !tbaa !81
  %18 = and i16 %17, 512, !dbg !245
  %19 = icmp eq i16 %18, 0, !dbg !245
  %20 = load i16, i16* %5, align 4, !tbaa !227
  %21 = select i1 %19, i16 -8, i16 -22, !dbg !246
  %22 = select i1 %19, i32 8, i32 22, !dbg !246
  %23 = add i16 %21, %20
  %24 = getelementptr inbounds i8, i8* %15, i32 %22
  %25 = zext i16 %20 to i32, !dbg !247
  %26 = getelementptr inbounds i8, i8* %15, i32 %25, !dbg !248
  br label %27, !dbg !249

; <label>:27:                                     ; preds = %9, %7
  %28 = phi i16 [ %14, %9 ], [ 0, %7 ]
  %29 = phi i8* [ %16, %9 ], [ null, %7 ]
  %30 = phi i16 [ %23, %9 ], [ 0, %7 ]
  %31 = phi i8* [ %24, %9 ], [ null, %7 ]
  %32 = phi i8* [ %26, %9 ], [ null, %7 ]
  %33 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 3, !dbg !250
  store i16 %28, i16* %33, align 4, !dbg !251
  %34 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 4, !dbg !252
  store i8* %29, i8** %34, align 4, !dbg !253
  %35 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 5
  store i16 %30, i16* %35, align 4
  %36 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 6
  store i8* %31, i8** %36, align 4
  store i8* %32, i8** %2, align 4, !dbg !254, !tbaa !119
  ret void, !dbg !255
}

; Function Attrs: optsize
declare void @reverse_128(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @att_clear_transaction_queue(%struct.att_connection* nocapture readonly) local_unnamed_addr #0 !dbg !257 {
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !271, metadata !DIExpression()), !dbg !272
  tail call fastcc void @att_notify_write_callbacks(%struct.att_connection* %0, i16 zeroext 3) #7, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_notify_write_callbacks(%struct.att_connection* nocapture readonly, i16 zeroext) unnamed_addr #0 !dbg !275 {
  %3 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !279, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i16 %1, metadata !280, metadata !DIExpression()), !dbg !293
  %4 = bitcast %struct.btstack_linked_list_iterator_t* %3 to i8*, !dbg !294
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #6, !dbg !294
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !295
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %3, %struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 8)) #8, !dbg !296
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !295
  %5 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #8, !dbg !297
  %6 = icmp eq i32 %5, 0, !dbg !299
  br i1 %6, label %22, label %7, !dbg !299

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0
  br label %9, !dbg !299

; <label>:9:                                      ; preds = %15, %7
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !295
  %10 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #8, !dbg !300
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 3, !dbg !301
  %12 = bitcast %struct.btstack_linked_item* %11 to i32 (i16, i16, i16, i16, i8*, i16)**, !dbg !301
  %13 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** %12, align 4, !dbg !301, !tbaa !303
  %14 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %13, null, !dbg !305
  br i1 %14, label %15, label %18, !dbg !306

; <label>:15:                                     ; preds = %18, %9
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !295
  %16 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #8, !dbg !297
  %17 = icmp eq i32 %16, 0, !dbg !299
  br i1 %17, label %21, label %9, !dbg !299, !llvm.loop !307

; <label>:18:                                     ; preds = %9
  %19 = load i16, i16* %8, align 2, !dbg !310, !tbaa !311
  %20 = call i32 %13(i16 zeroext %19, i16 zeroext 0, i16 zeroext %1, i16 zeroext 0, i8* null, i16 zeroext 0) #8, !dbg !313
  br label %15, !dbg !309

; <label>:21:                                     ; preds = %15
  br label %22, !dbg !314

; <label>:22:                                     ; preds = %21, %2
  %23 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 5), align 4, !dbg !314, !tbaa !176
  %24 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %23, null, !dbg !316
  br i1 %24, label %29, label %25, !dbg !317

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !318
  %27 = load i16, i16* %26, align 2, !dbg !318, !tbaa !311
  %28 = call i32 %23(i16 zeroext %27, i16 zeroext 0, i16 zeroext %1, i16 zeroext 0, i8* null, i16 zeroext 0) #8, !dbg !319
  br label %29, !dbg !320

; <label>:29:                                     ; preds = %25, %22
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #6, !dbg !320
  ret void, !dbg !321
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_prepare_handle_value_notification(%struct.att_connection* nocapture readonly, i16 zeroext, i8* nocapture readonly, i16 zeroext, i8*) local_unnamed_addr #0 !dbg !323 {
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !327, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata i16 %1, metadata !328, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %2, metadata !329, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i16 %3, metadata !330, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i8* %4, metadata !331, metadata !DIExpression()), !dbg !336
  store i8 27, i8* %4, align 1, !dbg !337, !tbaa !338
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !339, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i16 %1, metadata !342, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %2, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i16 %3, metadata !344, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %4, metadata !345, metadata !DIExpression()), !dbg !351
  tail call void @little_endian_store_16(i8* %4, i16 zeroext 1, i16 zeroext %1) #8, !dbg !352
  %6 = zext i16 %3 to i32, !dbg !353
  %7 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 1, !dbg !355
  %8 = load i16, i16* %7, align 2, !dbg !355, !tbaa !356
  %9 = zext i16 %8 to i32, !dbg !357
  %10 = add nsw i32 %9, -3, !dbg !358
  %11 = icmp sgt i32 %6, %10, !dbg !359
  %12 = trunc i32 %10 to i16, !dbg !360
  call void @llvm.dbg.value(metadata i16 %12, metadata !344, metadata !DIExpression()), !dbg !350
  %13 = select i1 %11, i16 %12, i16 %3, !dbg !362
  call void @llvm.dbg.value(metadata i16 %13, metadata !344, metadata !DIExpression()), !dbg !350
  %14 = getelementptr inbounds i8, i8* %4, i32 3, !dbg !363
  %15 = zext i16 %13 to i32, !dbg !364
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %2, i32 %15, i32 1, i1 false) #6, !dbg !365
  %16 = add i16 %13, 3, !dbg !366
  ret i16 %16, !dbg !367
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_prepare_handle_value_indication(%struct.att_connection* nocapture readonly, i16 zeroext, i8* nocapture readonly, i16 zeroext, i8*) local_unnamed_addr #0 !dbg !368 {
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !370, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i16 %1, metadata !371, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %2, metadata !372, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i16 %3, metadata !373, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %4, metadata !374, metadata !DIExpression()), !dbg !379
  store i8 29, i8* %4, align 1, !dbg !380, !tbaa !338
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !339, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i16 %1, metadata !342, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %2, metadata !343, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i16 %3, metadata !344, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8* %4, metadata !345, metadata !DIExpression()), !dbg !386
  tail call void @little_endian_store_16(i8* %4, i16 zeroext 1, i16 zeroext %1) #8, !dbg !387
  %6 = zext i16 %3 to i32, !dbg !388
  %7 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 1, !dbg !389
  %8 = load i16, i16* %7, align 2, !dbg !389, !tbaa !356
  %9 = zext i16 %8 to i32, !dbg !390
  %10 = add nsw i32 %9, -3, !dbg !391
  %11 = icmp sgt i32 %6, %10, !dbg !392
  %12 = trunc i32 %10 to i16, !dbg !393
  call void @llvm.dbg.value(metadata i16 %12, metadata !344, metadata !DIExpression()), !dbg !385
  %13 = select i1 %11, i16 %12, i16 %3, !dbg !394
  call void @llvm.dbg.value(metadata i16 %13, metadata !344, metadata !DIExpression()), !dbg !385
  %14 = getelementptr inbounds i8, i8* %4, i32 3, !dbg !395
  %15 = zext i16 %13 to i32, !dbg !396
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %2, i32 %15, i32 1, i1 false) #6, !dbg !397
  %16 = add i16 %13, 3, !dbg !398
  ret i16 %16, !dbg !399
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_handle_request(%struct.att_connection*, i8*, i16 zeroext, i8*) local_unnamed_addr #0 !dbg !400 {
  %5 = alloca %struct.att_iterator, align 4
  %6 = alloca %struct.btstack_linked_list_iterator_t, align 4
  %7 = alloca %struct.att_iterator, align 4
  %8 = alloca %struct.att_iterator, align 4
  %9 = alloca %struct.att_iterator, align 4
  %10 = alloca %struct.att_iterator, align 4
  %11 = alloca %struct.att_iterator, align 4
  %12 = alloca %struct.att_iterator, align 4
  %13 = alloca %struct.att_iterator, align 4
  %14 = alloca %struct.att_iterator, align 4
  %15 = alloca %struct.att_iterator, align 4
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !404, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i8* %1, metadata !405, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i16 %2, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i8* %3, metadata !407, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i16 0, metadata !408, metadata !DIExpression()), !dbg !414
  %16 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 1, !dbg !415
  %17 = load i16, i16* %16, align 2, !dbg !415, !tbaa !356
  call void @llvm.dbg.value(metadata i16 %17, metadata !409, metadata !DIExpression()), !dbg !416
  %18 = load i8, i8* %1, align 1, !dbg !417, !tbaa !338
  switch i8 %18, label %786 [
    i8 2, label %19
    i8 3, label %30
    i8 4, label %39
    i8 6, label %110
    i8 8, label %193
    i8 10, label %317
    i8 12, label %363
    i8 14, label %419
    i8 16, label %484
    i8 18, label %599
    i8 22, label %652
    i8 24, label %716
    i8 82, label %759
  ], !dbg !418

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !419, metadata !DIExpression()), !dbg !426
  %20 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !429
  call void @llvm.dbg.value(metadata i16 %20, metadata !425, metadata !DIExpression()), !dbg !430
  %21 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 2, !dbg !431
  %22 = load i16, i16* %21, align 2, !dbg !431, !tbaa !433
  %23 = icmp ult i16 %20, %22, !dbg !434
  %24 = select i1 %23, i16 %20, i16 %22, !dbg !435
  store i16 %24, i16* %16, align 2, !tbaa !356
  store i8 3, i8* %3, align 1, !dbg !437, !tbaa !338
  %25 = load i16, i16* %16, align 2, !dbg !438, !tbaa !356
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 1, i16 zeroext %25) #8, !dbg !439
  %26 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !440
  %27 = load i16, i16* %26, align 2, !dbg !440, !tbaa !311
  %28 = load i16, i16* %16, align 2, !dbg !441, !tbaa !356
  %29 = tail call i32 @gatt_client_sync_mtu(i16 zeroext %27, i16 zeroext %28) #8, !dbg !442
  call void @llvm.dbg.value(metadata i16 3, metadata !408, metadata !DIExpression()), !dbg !414
  br label %786, !dbg !443

; <label>:30:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !444, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i8* null, metadata !449, metadata !DIExpression()), !dbg !453
  %31 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !454
  call void @llvm.dbg.value(metadata i16 %31, metadata !450, metadata !DIExpression()), !dbg !455
  %32 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 2, !dbg !456
  %33 = load i16, i16* %32, align 2, !dbg !456, !tbaa !433
  %34 = icmp ult i16 %31, %33, !dbg !458
  %35 = select i1 %34, i16 %31, i16 %33, !dbg !459
  store i16 %35, i16* %16, align 2, !tbaa !356
  %36 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !461
  %37 = load i16, i16* %36, align 2, !dbg !461, !tbaa !311
  %38 = tail call i32 @gatt_client_sync_mtu(i16 zeroext %37, i16 zeroext %35) #8, !dbg !462
  call void @llvm.dbg.value(metadata i16 0, metadata !408, metadata !DIExpression()), !dbg !414
  br label %786, !dbg !463

; <label>:39:                                     ; preds = %4
  call void @llvm.dbg.value(metadata %struct.att_connection* null, metadata !464, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 0, metadata !470, metadata !DIExpression()), !dbg !475
  %40 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !476
  %41 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 3) #8, !dbg !477
  call void @llvm.dbg.value(metadata %struct.att_connection* null, metadata !479, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 4, metadata !488, metadata !DIExpression()), !dbg !497
  %42 = add i16 %40, -1, !dbg !498
  %43 = icmp ult i16 %42, %41, !dbg !498
  br i1 %43, label %47, label %44, !dbg !498

; <label>:44:                                     ; preds = %39
  store i8 1, i8* %3, align 1, !dbg !500, !tbaa !338
  %45 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !519
  store i8 4, i8* %45, align 1, !dbg !520, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %40) #8, !dbg !521
  %46 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !522
  store i8 1, i8* %46, align 1, !dbg !523, !tbaa !338
  br label %786, !dbg !524

; <label>:47:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i16 1, metadata !489, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i16 0, metadata !490, metadata !DIExpression()), !dbg !526
  %48 = bitcast %struct.att_iterator* %15 to i8*, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %48) #6, !dbg !527
  call void @llvm.dbg.value(metadata %struct.att_iterator* %15, metadata !491, metadata !DIExpression(DW_OP_deref)), !dbg !528
  call void @llvm.dbg.value(metadata %struct.att_iterator* %15, metadata !106, metadata !DIExpression()), !dbg !529
  %49 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !531, !tbaa !114
  %50 = bitcast %struct.att_iterator* %15 to i32*, !dbg !532
  store i32 %49, i32* %50, align 4, !dbg !532, !tbaa !119
  %51 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %15, i32 0, i32 0
  %52 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %15, i32 0, i32 3
  %53 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %15, i32 0, i32 2
  %54 = zext i16 %17 to i32
  %55 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %15, i32 0, i32 4
  br label %56, !dbg !533

; <label>:56:                                     ; preds = %93, %47
  %57 = phi i16 [ %97, %93 ], [ 1, %47 ]
  %58 = phi i16 [ %87, %93 ], [ 0, %47 ]
  br label %59, !dbg !526

; <label>:59:                                     ; preds = %66, %56
  call void @llvm.dbg.value(metadata i16 %58, metadata !490, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i16 %57, metadata !489, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata %struct.att_iterator* %15, metadata !491, metadata !DIExpression(DW_OP_deref)), !dbg !528
  call void @llvm.dbg.value(metadata %struct.att_iterator* %15, metadata !120, metadata !DIExpression()), !dbg !534
  %60 = load i8*, i8** %51, align 4, !dbg !537, !tbaa !119
  %61 = icmp eq i8* %60, null, !dbg !538
  br i1 %61, label %98, label %62, !dbg !539

; <label>:62:                                     ; preds = %59
  call void @llvm.dbg.value(metadata %struct.att_iterator* %15, metadata !491, metadata !DIExpression(DW_OP_deref)), !dbg !528
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %15) #8, !dbg !540
  %63 = load i16, i16* %52, align 4, !dbg !541, !tbaa !134
  %64 = add i16 %63, -1, !dbg !543
  %65 = icmp ult i16 %64, %41, !dbg !543
  br i1 %65, label %66, label %98, !dbg !543

; <label>:66:                                     ; preds = %62
  %67 = icmp ult i16 %63, %40, !dbg !544
  br i1 %67, label %59, label %68, !dbg !546, !llvm.loop !547

; <label>:68:                                     ; preds = %66
  %69 = load i16, i16* %53, align 2, !dbg !550, !tbaa !81
  %70 = and i16 %69, 512, !dbg !551
  %71 = icmp ne i16 %70, 0, !dbg !552
  %72 = select i1 %71, i16 16, i16 2, !dbg !552
  call void @llvm.dbg.value(metadata i16 %72, metadata !492, metadata !DIExpression()), !dbg !553
  %73 = zext i16 %57 to i32, !dbg !554
  %74 = icmp ult i16 %57, 2, !dbg !556
  %75 = icmp eq i16 %72, %58, !dbg !557
  %76 = or i1 %74, %75, !dbg !560
  br i1 %76, label %77, label %99, !dbg !560

; <label>:77:                                     ; preds = %68
  %78 = icmp eq i16 %57, 1, !dbg !561
  br i1 %78, label %79, label %85, !dbg !563

; <label>:79:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i16 %72, metadata !490, metadata !DIExpression()), !dbg !526
  %80 = zext i16 %70 to i32, !dbg !564
  %81 = lshr exact i32 %80, 9, !dbg !564
  %82 = add nuw nsw i32 %81, 1, !dbg !564
  %83 = trunc i32 %82 to i8, !dbg !564
  %84 = getelementptr inbounds i8, i8* %3, i32 %73, !dbg !566
  store i8 %83, i8* %84, align 1, !dbg !567, !tbaa !338
  br label %85, !dbg !568

; <label>:85:                                     ; preds = %79, %77
  %86 = phi i16 [ 2, %79 ], [ %57, %77 ]
  %87 = phi i16 [ %72, %79 ], [ %58, %77 ]
  call void @llvm.dbg.value(metadata i16 %87, metadata !490, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i16 %86, metadata !489, metadata !DIExpression()), !dbg !525
  %88 = zext i16 %86 to i32, !dbg !569
  %89 = add nuw nsw i32 %88, 2, !dbg !571
  %90 = zext i16 %87 to i32, !dbg !572
  %91 = add nuw nsw i32 %89, %90, !dbg !573
  %92 = icmp ugt i32 %91, %54, !dbg !574
  br i1 %92, label %105, label %93, !dbg !575

; <label>:93:                                     ; preds = %85
  tail call void @little_endian_store_16(i8* %3, i16 zeroext %86, i16 zeroext %63) #8, !dbg !576
  %94 = and i32 %89, 65535, !dbg !577
  %95 = getelementptr inbounds i8, i8* %3, i32 %94, !dbg !578
  %96 = load i8*, i8** %55, align 4, !dbg !579, !tbaa !90
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %95, i8* %96, i32 %90, i32 1, i1 false) #6, !dbg !580
  %97 = trunc i32 %91 to i16, !dbg !581
  call void @llvm.dbg.value(metadata i16 %97, metadata !489, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i16 %87, metadata !490, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i16 %97, metadata !489, metadata !DIExpression()), !dbg !525
  br label %56

; <label>:98:                                     ; preds = %62, %59
  br label %100, !dbg !525

; <label>:99:                                     ; preds = %68
  br label %100, !dbg !525

; <label>:100:                                    ; preds = %99, %98
  call void @llvm.dbg.value(metadata i16 %57, metadata !489, metadata !DIExpression()), !dbg !525
  %101 = icmp eq i16 %57, 1, !dbg !582
  br i1 %101, label %102, label %106, !dbg !584

; <label>:102:                                    ; preds = %100
  store i8 1, i8* %3, align 1, !dbg !585, !tbaa !338
  %103 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !594
  store i8 4, i8* %103, align 1, !dbg !595, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %40) #8, !dbg !596
  %104 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !597
  store i8 10, i8* %104, align 1, !dbg !598, !tbaa !338
  br label %108, !dbg !599

; <label>:105:                                    ; preds = %85
  br label %106, !dbg !600

; <label>:106:                                    ; preds = %105, %100
  %107 = phi i16 [ %57, %100 ], [ %86, %105 ]
  store i8 5, i8* %3, align 1, !dbg !600, !tbaa !338
  br label %108, !dbg !601

; <label>:108:                                    ; preds = %106, %102
  %109 = phi i16 [ 5, %102 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %48) #6, !dbg !602
  br label %786

; <label>:110:                                    ; preds = %4
  call void @llvm.dbg.value(metadata %struct.att_connection* null, metadata !603, metadata !DIExpression()), !dbg !611
  %111 = add i16 %2, -7, !dbg !613
  %112 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !614
  %113 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 3) #8, !dbg !615
  %114 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 5) #8, !dbg !616
  %115 = getelementptr inbounds i8, i8* %1, i32 7, !dbg !618
  call void @llvm.dbg.value(metadata %struct.att_connection* null, metadata !619, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8 6, metadata !631, metadata !DIExpression()), !dbg !638
  %116 = add i16 %112, -1, !dbg !639
  %117 = icmp ult i16 %116, %113, !dbg !639
  br i1 %117, label %121, label %118, !dbg !639

; <label>:118:                                    ; preds = %110
  store i8 1, i8* %3, align 1, !dbg !641, !tbaa !338
  %119 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !645
  store i8 6, i8* %119, align 1, !dbg !646, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %112) #8, !dbg !647
  %120 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !648
  store i8 1, i8* %120, align 1, !dbg !649, !tbaa !338
  br label %786, !dbg !650

; <label>:121:                                    ; preds = %110
  call void @llvm.dbg.value(metadata i16 1, metadata !632, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i16 0, metadata !633, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i16 0, metadata !634, metadata !DIExpression()), !dbg !653
  %122 = bitcast %struct.att_iterator* %14 to i8*, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %122) #6, !dbg !654
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !655
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !106, metadata !DIExpression()), !dbg !656
  %123 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !658, !tbaa !114
  %124 = bitcast %struct.att_iterator* %14 to i32*, !dbg !659
  store i32 %123, i32* %124, align 4, !dbg !659, !tbaa !119
  %125 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %14, i32 0, i32 0
  %126 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %14, i32 0, i32 3
  %127 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %14, i32 0, i32 5
  %128 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %14, i32 0, i32 6
  %129 = zext i16 %17 to i32
  %130 = zext i16 %111 to i32
  br label %131, !dbg !660

; <label>:131:                                    ; preds = %163, %121
  %132 = phi i16 [ 1, %121 ], [ %164, %163 ]
  %133 = phi i16 [ 0, %121 ], [ %165, %163 ]
  %134 = phi i16 [ 0, %121 ], [ %166, %163 ]
  br label %135, !dbg !653

; <label>:135:                                    ; preds = %138, %131
  call void @llvm.dbg.value(metadata i16 %134, metadata !634, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i16 %133, metadata !633, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i16 %132, metadata !632, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !655
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !120, metadata !DIExpression()), !dbg !661
  %136 = load i8*, i8** %125, align 4, !dbg !664, !tbaa !119
  %137 = icmp eq i8* %136, null, !dbg !665
  br i1 %137, label %181, label %138, !dbg !666

; <label>:138:                                    ; preds = %135
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !655
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %14) #8, !dbg !667
  %139 = load i16, i16* %126, align 4, !dbg !669, !tbaa !134
  %140 = icmp ne i16 %139, 0, !dbg !671
  %141 = icmp ult i16 %139, %112, !dbg !672
  %142 = and i1 %140, %141, !dbg !674
  br i1 %142, label %135, label %143, !dbg !674, !llvm.loop !675

; <label>:143:                                    ; preds = %138
  %144 = icmp ugt i16 %139, %113, !dbg !678
  br i1 %144, label %182, label %145, !dbg !680

; <label>:145:                                    ; preds = %143
  %146 = icmp eq i16 %133, 0, !dbg !681
  br i1 %146, label %160, label %147, !dbg !683

; <label>:147:                                    ; preds = %145
  %148 = icmp eq i16 %139, 0, !dbg !684
  br i1 %148, label %155, label %149, !dbg !685

; <label>:149:                                    ; preds = %147
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !655
  %150 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %14, i16 zeroext 10240) #8, !dbg !686
  %151 = icmp eq i32 %150, 0, !dbg !686
  br i1 %151, label %152, label %155, !dbg !688

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !655
  %153 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %14, i16 zeroext 10241) #8, !dbg !689
  %154 = icmp eq i32 %153, 0, !dbg !689
  br i1 %154, label %167, label %155, !dbg !691

; <label>:155:                                    ; preds = %152, %149, %147
  tail call void @little_endian_store_16(i8* %3, i16 zeroext %132, i16 zeroext %134) #8, !dbg !693
  %156 = add i16 %132, 2, !dbg !695
  call void @llvm.dbg.value(metadata i16 %156, metadata !632, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i16 0, metadata !633, metadata !DIExpression()), !dbg !652
  %157 = zext i16 %156 to i32, !dbg !696
  %158 = add nuw nsw i32 %157, 4, !dbg !698
  %159 = icmp ugt i32 %158, %129, !dbg !699
  br i1 %159, label %182, label %160, !dbg !700

; <label>:160:                                    ; preds = %155, %145
  %161 = phi i16 [ %156, %155 ], [ %132, %145 ]
  call void @llvm.dbg.value(metadata i16 0, metadata !633, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i16 %161, metadata !632, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i16 %139, metadata !634, metadata !DIExpression()), !dbg !653
  %162 = icmp eq i16 %139, 0, !dbg !701
  br i1 %162, label %163, label %167, !dbg !703

; <label>:163:                                    ; preds = %179, %175, %167, %160
  %164 = phi i16 [ %161, %160 ], [ %169, %167 ], [ %169, %175 ], [ %180, %179 ]
  %165 = phi i16 [ 0, %160 ], [ %168, %167 ], [ %168, %175 ], [ 1, %179 ]
  %166 = phi i16 [ 0, %160 ], [ %139, %167 ], [ %139, %175 ], [ %139, %179 ]
  br label %131, !dbg !653, !llvm.loop !675

; <label>:167:                                    ; preds = %160, %152
  %168 = phi i16 [ 0, %160 ], [ %133, %152 ]
  %169 = phi i16 [ %161, %160 ], [ %132, %152 ]
  call void @llvm.dbg.value(metadata %struct.att_iterator* %14, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !655
  %170 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %14, i16 zeroext %114) #8, !dbg !704
  %171 = icmp ne i32 %170, 0, !dbg !704
  %172 = load i16, i16* %127, align 4, !dbg !706
  %173 = icmp eq i16 %172, %111, !dbg !708
  %174 = and i1 %171, %173, !dbg !709
  br i1 %174, label %175, label %163, !dbg !709

; <label>:175:                                    ; preds = %167
  %176 = load i8*, i8** %128, align 4, !dbg !710, !tbaa !712
  %177 = tail call i32 @memcmp(i8* %115, i8* %176, i32 %130) #8, !dbg !713
  %178 = icmp eq i32 %177, 0, !dbg !714
  br i1 %178, label %179, label %163, !dbg !715

; <label>:179:                                    ; preds = %175
  tail call void @little_endian_store_16(i8* %3, i16 zeroext %169, i16 zeroext %139) #8, !dbg !717
  %180 = add i16 %169, 2, !dbg !719
  call void @llvm.dbg.value(metadata i16 %180, metadata !632, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i16 1, metadata !633, metadata !DIExpression()), !dbg !652
  br label %163, !dbg !720

; <label>:181:                                    ; preds = %135
  br label %184, !dbg !651

; <label>:182:                                    ; preds = %155, %143
  %183 = phi i16 [ %156, %155 ], [ %132, %143 ]
  br label %184, !dbg !651

; <label>:184:                                    ; preds = %182, %181
  %185 = phi i16 [ %132, %181 ], [ %183, %182 ]
  call void @llvm.dbg.value(metadata i16 %185, metadata !632, metadata !DIExpression()), !dbg !651
  %186 = icmp eq i16 %185, 1, !dbg !721
  br i1 %186, label %187, label %190, !dbg !723

; <label>:187:                                    ; preds = %184
  store i8 1, i8* %3, align 1, !dbg !724, !tbaa !338
  %188 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !728
  store i8 6, i8* %188, align 1, !dbg !729, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %112) #8, !dbg !730
  %189 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !731
  store i8 10, i8* %189, align 1, !dbg !732, !tbaa !338
  br label %191, !dbg !733

; <label>:190:                                    ; preds = %184
  store i8 7, i8* %3, align 1, !dbg !734, !tbaa !338
  br label %191, !dbg !735

; <label>:191:                                    ; preds = %190, %187
  %192 = phi i16 [ 5, %187 ], [ %185, %190 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %122) #6, !dbg !736
  br label %786

; <label>:193:                                    ; preds = %4
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !737, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %1, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i16 %2, metadata !741, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8* %3, metadata !742, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i16 %17, metadata !743, metadata !DIExpression()), !dbg !750
  %194 = icmp ult i16 %2, 8, !dbg !751
  %195 = select i1 %194, i16 2, i16 16, !dbg !753
  %196 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !755
  %197 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 3) #8, !dbg !756
  %198 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !758
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !759, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %3, metadata !764, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i16 %17, metadata !765, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i16 %196, metadata !766, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i16 %197, metadata !767, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 %195, metadata !768, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8* %198, metadata !769, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 8, metadata !770, metadata !DIExpression()), !dbg !788
  %199 = add i16 %196, -1, !dbg !789
  %200 = icmp ult i16 %199, %197, !dbg !789
  br i1 %200, label %204, label %201, !dbg !789

; <label>:201:                                    ; preds = %193
  store i8 1, i8* %3, align 1, !dbg !791, !tbaa !338
  %202 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !795
  store i8 8, i8* %202, align 1, !dbg !796, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %196) #8, !dbg !797
  %203 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !798
  store i8 1, i8* %203, align 1, !dbg !799, !tbaa !338
  br label %786, !dbg !800

; <label>:204:                                    ; preds = %193
  call void @llvm.dbg.value(metadata i16 1, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i16 0, metadata !772, metadata !DIExpression()), !dbg !802
  %205 = bitcast %struct.att_iterator* %13 to i8*, !dbg !803
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %205) #6, !dbg !803
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !106, metadata !DIExpression()), !dbg !805
  %206 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !807, !tbaa !114
  %207 = bitcast %struct.att_iterator* %13 to i32*, !dbg !808
  store i32 %206, i32* %207, align 4, !dbg !808, !tbaa !119
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 0, metadata !775, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i16 0, metadata !775, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 0, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 1, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !120, metadata !DIExpression()), !dbg !811
  %208 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %13, i32 0, i32 0, !dbg !814
  %209 = icmp eq i32 %206, 0, !dbg !815
  br i1 %209, label %210, label %212, !dbg !816

; <label>:210:                                    ; preds = %204
  call void @llvm.dbg.value(metadata i8 %300, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 undef, metadata !771, metadata !DIExpression()), !dbg !801
  store i8 1, i8* %3, align 1, !dbg !817, !tbaa !338
  %211 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !820
  store i8 8, i8* %211, align 1, !dbg !821, !tbaa !338
  br label %313, !dbg !822

; <label>:212:                                    ; preds = %204
  %213 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %13, i32 0, i32 3
  %214 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %13, i32 0, i32 2
  %215 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0
  %216 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %13, i32 0, i32 5
  %217 = zext i16 %17 to i32
  %218 = add i16 %17, -4
  %219 = trunc i16 %218 to i8
  %220 = add i8 %219, 2
  %221 = getelementptr inbounds i8, i8* %3, i32 1
  br label %222, !dbg !816

; <label>:222:                                    ; preds = %280, %212
  %223 = phi i16 [ 0, %212 ], [ %227, %280 ]
  %224 = phi i16 [ 0, %212 ], [ %272, %280 ]
  %225 = phi i16 [ 1, %212 ], [ %289, %280 ]
  br label %226, !dbg !816

; <label>:226:                                    ; preds = %246, %222
  %227 = phi i16 [ %223, %222 ], [ %248, %246 ]
  br label %228, !dbg !816

; <label>:228:                                    ; preds = %233, %226
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %13) #8, !dbg !823
  %229 = load i16, i16* %213, align 4, !dbg !824, !tbaa !134
  %230 = icmp eq i16 %229, 0, !dbg !826
  br i1 %230, label %292, label %231, !dbg !827

; <label>:231:                                    ; preds = %228
  %232 = icmp ult i16 %229, %196, !dbg !828
  br i1 %232, label %233, label %236, !dbg !830

; <label>:233:                                    ; preds = %238, %231
  call void @llvm.dbg.value(metadata i16 %227, metadata !775, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 %224, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 %225, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !120, metadata !DIExpression()), !dbg !811
  %234 = load i8*, i8** %208, align 4, !dbg !814, !tbaa !119
  %235 = icmp eq i8* %234, null, !dbg !815
  br i1 %235, label %292, label %228, !dbg !816, !llvm.loop !831

; <label>:236:                                    ; preds = %231
  %237 = icmp ugt i16 %229, %197, !dbg !834
  br i1 %237, label %292, label %238, !dbg !836

; <label>:238:                                    ; preds = %236
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  %239 = call fastcc i32 @att_iterator_match_uuid(%struct.att_iterator* nonnull %13, i8* %198, i16 zeroext %195) #8, !dbg !837
  %240 = icmp eq i32 %239, 0, !dbg !837
  br i1 %240, label %233, label %241, !dbg !839

; <label>:241:                                    ; preds = %238
  %242 = load i16, i16* %214, align 2, !dbg !840, !tbaa !81
  %243 = zext i16 %242 to i32, !dbg !842
  %244 = and i32 %243, 2, !dbg !843
  %245 = icmp eq i32 %244, 0, !dbg !844
  br i1 %245, label %246, label %251, !dbg !845

; <label>:246:                                    ; preds = %241
  %247 = icmp eq i16 %227, 0, !dbg !846
  call void @llvm.dbg.value(metadata i16 %229, metadata !775, metadata !DIExpression()), !dbg !810
  %248 = select i1 %247, i16 %229, i16 %227, !dbg !849
  call void @llvm.dbg.value(metadata i16 %248, metadata !775, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 undef, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 %225, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !120, metadata !DIExpression()), !dbg !811
  %249 = load i8*, i8** %208, align 4, !dbg !814, !tbaa !119
  %250 = icmp eq i8* %249, null, !dbg !815
  br i1 %250, label %293, label %226, !dbg !816

; <label>:251:                                    ; preds = %241
  %252 = and i32 %243, 1, !dbg !850
  %253 = icmp eq i32 %252, 0, !dbg !852
  br i1 %253, label %254, label %257, !dbg !853

; <label>:254:                                    ; preds = %251
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  %255 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* %0, %struct.att_iterator* nonnull %13) #8, !dbg !854
  call void @llvm.dbg.value(metadata i8 %255, metadata !774, metadata !DIExpression()), !dbg !809
  %256 = icmp eq i8 %255, 0, !dbg !856
  br i1 %256, label %257, label %294, !dbg !858

; <label>:257:                                    ; preds = %254, %251
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !809
  %258 = load i16, i16* %215, align 2, !dbg !859, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call fastcc void @att_update_value_len(%struct.att_iterator* nonnull %13, i16 zeroext %258) #8, !dbg !860
  %259 = load i16, i16* %216, align 4, !dbg !861, !tbaa !862
  %260 = add i16 %259, 2, !dbg !863
  call void @llvm.dbg.value(metadata i16 %260, metadata !776, metadata !DIExpression()), !dbg !864
  %261 = zext i16 %225 to i32, !dbg !865
  %262 = icmp ult i16 %225, 2, !dbg !867
  %263 = icmp eq i16 %224, %260, !dbg !868
  %264 = or i1 %262, %263, !dbg !871
  br i1 %264, label %265, label %294, !dbg !871

; <label>:265:                                    ; preds = %257
  %266 = icmp eq i16 %225, 1, !dbg !872
  br i1 %266, label %267, label %270, !dbg !874

; <label>:267:                                    ; preds = %265
  call void @llvm.dbg.value(metadata i16 %260, metadata !772, metadata !DIExpression()), !dbg !802
  %268 = trunc i16 %260 to i8, !dbg !875
  %269 = getelementptr inbounds i8, i8* %3, i32 %261, !dbg !877
  store i8 %268, i8* %269, align 1, !dbg !878, !tbaa !338
  br label %270, !dbg !879

; <label>:270:                                    ; preds = %267, %265
  %271 = phi i16 [ 2, %267 ], [ %225, %265 ]
  %272 = phi i16 [ %260, %267 ], [ %224, %265 ]
  call void @llvm.dbg.value(metadata i16 %272, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 %271, metadata !771, metadata !DIExpression()), !dbg !801
  %273 = zext i16 %271 to i32, !dbg !880
  %274 = zext i16 %272 to i32, !dbg !882
  %275 = add nuw nsw i32 %274, %273, !dbg !883
  %276 = icmp ugt i32 %275, %217, !dbg !884
  br i1 %276, label %277, label %280, !dbg !885

; <label>:277:                                    ; preds = %270
  %278 = icmp ugt i16 %271, 2, !dbg !886
  br i1 %278, label %302, label %279, !dbg !889

; <label>:279:                                    ; preds = %277
  store i16 %218, i16* %216, align 4, !dbg !890, !tbaa !862
  store i8 %220, i8* %221, align 1, !dbg !891, !tbaa !338
  br label %280, !dbg !892

; <label>:280:                                    ; preds = %279, %270
  %281 = phi i16 [ %259, %270 ], [ %218, %279 ], !dbg !893
  %282 = load i16, i16* %213, align 4, !dbg !894, !tbaa !134
  tail call void @little_endian_store_16(i8* %3, i16 zeroext %271, i16 zeroext %282) #8, !dbg !895
  %283 = add i16 %271, 2, !dbg !896
  call void @llvm.dbg.value(metadata i16 %283, metadata !771, metadata !DIExpression()), !dbg !801
  %284 = zext i16 %283 to i32, !dbg !897
  %285 = getelementptr inbounds i8, i8* %3, i32 %284, !dbg !898
  %286 = load i16, i16* %215, align 2, !dbg !899, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  %287 = call fastcc i32 @att_copy_value(%struct.att_iterator* nonnull %13, i16 zeroext 0, i8* %285, i16 zeroext %281, i16 zeroext %286) #8, !dbg !900
  %288 = add i32 %287, %284, !dbg !901
  %289 = trunc i32 %288 to i16, !dbg !901
  call void @llvm.dbg.value(metadata i16 %289, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i16 %272, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 %289, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i16 %227, metadata !775, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 %272, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 %289, metadata !771, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !804
  call void @llvm.dbg.value(metadata %struct.att_iterator* %13, metadata !120, metadata !DIExpression()), !dbg !811
  %290 = load i8*, i8** %208, align 4, !dbg !814, !tbaa !119
  %291 = icmp eq i8* %290, null, !dbg !815
  br i1 %291, label %294, label %222, !dbg !816

; <label>:292:                                    ; preds = %236, %233, %228
  br label %297, !dbg !809

; <label>:293:                                    ; preds = %246
  br label %297, !dbg !809

; <label>:294:                                    ; preds = %280, %257, %254
  %295 = phi i16 [ %289, %280 ], [ %225, %254 ], [ %225, %257 ]
  %296 = phi i8 [ 0, %280 ], [ %255, %254 ], [ 0, %257 ]
  br label %297, !dbg !809

; <label>:297:                                    ; preds = %294, %293, %292
  %298 = phi i16 [ %225, %292 ], [ %225, %293 ], [ %295, %294 ]
  %299 = phi i16 [ %227, %292 ], [ %248, %293 ], [ %227, %294 ]
  %300 = phi i8 [ 0, %292 ], [ 0, %293 ], [ %296, %294 ]
  call void @llvm.dbg.value(metadata i8 %300, metadata !774, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 undef, metadata !771, metadata !DIExpression()), !dbg !801
  %301 = icmp ugt i16 %298, 1, !dbg !902
  br i1 %301, label %303, label %305, !dbg !904

; <label>:302:                                    ; preds = %277
  br label %303, !dbg !905

; <label>:303:                                    ; preds = %302, %297
  %304 = phi i16 [ %298, %297 ], [ %271, %302 ]
  store i8 9, i8* %3, align 1, !dbg !905, !tbaa !338
  br label %315, !dbg !907

; <label>:305:                                    ; preds = %297
  %306 = icmp eq i8 %300, 0, !dbg !908
  br i1 %306, label %309, label %307, !dbg !910

; <label>:307:                                    ; preds = %305
  store i8 1, i8* %3, align 1, !dbg !911, !tbaa !338
  store i8 8, i8* %221, align 1, !dbg !914, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %196) #8, !dbg !915
  %308 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !916
  store i8 %300, i8* %308, align 1, !dbg !917, !tbaa !338
  br label %315, !dbg !918

; <label>:309:                                    ; preds = %305
  %310 = icmp eq i16 %299, 0, !dbg !919
  store i8 1, i8* %3, align 1, !dbg !817, !tbaa !338
  store i8 8, i8* %221, align 1, !dbg !821, !tbaa !338
  br i1 %310, label %313, label %311, !dbg !822

; <label>:311:                                    ; preds = %309
  tail call void @little_endian_store_16(i8* nonnull %3, i16 zeroext 2, i16 zeroext %299) #8, !dbg !921
  %312 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !930
  store i8 2, i8* %312, align 1, !dbg !931, !tbaa !338
  br label %315, !dbg !932

; <label>:313:                                    ; preds = %309, %210
  tail call void @little_endian_store_16(i8* nonnull %3, i16 zeroext 2, i16 zeroext %196) #8, !dbg !933
  %314 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !934
  store i8 10, i8* %314, align 1, !dbg !935, !tbaa !338
  br label %315, !dbg !936

; <label>:315:                                    ; preds = %313, %311, %307, %303
  %316 = phi i16 [ %304, %303 ], [ 5, %307 ], [ 5, %311 ], [ 5, %313 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %205) #6, !dbg !937
  br label %786

; <label>:317:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !938, metadata !DIExpression()), !dbg !945
  %318 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !947
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !948, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i8* %3, metadata !953, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata i16 %17, metadata !954, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i16 %318, metadata !955, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i8 10, metadata !956, metadata !DIExpression()), !dbg !970
  %319 = bitcast %struct.att_iterator* %12 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %319) #6, !dbg !971
  call void @llvm.dbg.value(metadata %struct.att_iterator* %12, metadata !957, metadata !DIExpression(DW_OP_deref)), !dbg !972
  %320 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %12, i16 zeroext %318) #8, !dbg !973
  call void @llvm.dbg.value(metadata i32 %320, metadata !958, metadata !DIExpression()), !dbg !974
  %321 = icmp eq i32 %320, 0, !dbg !975
  br i1 %321, label %322, label %325, !dbg !977

; <label>:322:                                    ; preds = %317
  store i8 1, i8* %3, align 1, !dbg !978, !tbaa !338
  %323 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !982
  store i8 10, i8* %323, align 1, !dbg !983, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %318) #8, !dbg !984
  %324 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !985
  store i8 1, i8* %324, align 1, !dbg !986, !tbaa !338
  br label %361, !dbg !987

; <label>:325:                                    ; preds = %317
  %326 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %12, i32 0, i32 2, !dbg !988
  %327 = load i16, i16* %326, align 2, !dbg !988, !tbaa !81
  %328 = zext i16 %327 to i32, !dbg !990
  %329 = and i32 %328, 2, !dbg !991
  %330 = icmp eq i32 %329, 0, !dbg !992
  br i1 %330, label %331, label %334, !dbg !993

; <label>:331:                                    ; preds = %325
  store i8 1, i8* %3, align 1, !dbg !994, !tbaa !338
  %332 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !998
  store i8 10, i8* %332, align 1, !dbg !999, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %318) #8, !dbg !1000
  %333 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1001
  store i8 2, i8* %333, align 1, !dbg !1002, !tbaa !338
  br label %361, !dbg !1003

; <label>:334:                                    ; preds = %325
  %335 = and i32 %328, 1, !dbg !1004
  %336 = icmp eq i32 %335, 0, !dbg !1005
  br i1 %336, label %337, label %343, !dbg !1006

; <label>:337:                                    ; preds = %334
  call void @llvm.dbg.value(metadata %struct.att_iterator* %12, metadata !957, metadata !DIExpression(DW_OP_deref)), !dbg !972
  %338 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* nonnull %0, %struct.att_iterator* nonnull %12) #8, !dbg !1007
  call void @llvm.dbg.value(metadata i8 %338, metadata !959, metadata !DIExpression()), !dbg !1008
  %339 = icmp eq i8 %338, 0, !dbg !1009
  br i1 %339, label %343, label %340, !dbg !1011

; <label>:340:                                    ; preds = %337
  store i8 1, i8* %3, align 1, !dbg !1012, !tbaa !338
  %341 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1015
  store i8 10, i8* %341, align 1, !dbg !1016, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %318) #8, !dbg !1017
  %342 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1018
  store i8 %338, i8* %342, align 1, !dbg !1019, !tbaa !338
  br label %361

; <label>:343:                                    ; preds = %337, %334
  %344 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !1020
  %345 = load i16, i16* %344, align 2, !dbg !1020, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %12, metadata !957, metadata !DIExpression(DW_OP_deref)), !dbg !972
  call fastcc void @att_update_value_len(%struct.att_iterator* nonnull %12, i16 zeroext %345) #8, !dbg !1021
  call void @llvm.dbg.value(metadata i16 1, metadata !962, metadata !DIExpression()), !dbg !1022
  %346 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %12, i32 0, i32 5, !dbg !1023
  %347 = load i16, i16* %346, align 4, !dbg !1023, !tbaa !862
  %348 = zext i16 %347 to i32, !dbg !1025
  %349 = add nuw nsw i32 %348, 1, !dbg !1026
  %350 = zext i16 %17 to i32, !dbg !1027
  %351 = icmp ugt i32 %349, %350, !dbg !1028
  br i1 %351, label %352, label %354, !dbg !1029

; <label>:352:                                    ; preds = %343
  %353 = add i16 %17, -1, !dbg !1030
  store i16 %353, i16* %346, align 4, !dbg !1032, !tbaa !862
  br label %354, !dbg !1033

; <label>:354:                                    ; preds = %352, %343
  %355 = phi i16 [ %353, %352 ], [ %347, %343 ], !dbg !1034
  %356 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1035
  %357 = load i16, i16* %344, align 2, !dbg !1036, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %12, metadata !957, metadata !DIExpression(DW_OP_deref)), !dbg !972
  %358 = call fastcc i32 @att_copy_value(%struct.att_iterator* nonnull %12, i16 zeroext 0, i8* %356, i16 zeroext %355, i16 zeroext %357) #8, !dbg !1037
  %359 = add i32 %358, 1, !dbg !1038
  %360 = trunc i32 %359 to i16, !dbg !1038
  call void @llvm.dbg.value(metadata i16 %360, metadata !962, metadata !DIExpression()), !dbg !1022
  store i8 11, i8* %3, align 1, !dbg !1039, !tbaa !338
  br label %361

; <label>:361:                                    ; preds = %354, %340, %331, %322
  %362 = phi i16 [ 5, %331 ], [ %360, %354 ], [ 5, %322 ], [ 5, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %319) #6, !dbg !1040
  call void @llvm.dbg.value(metadata i16 %362, metadata !408, metadata !DIExpression()), !dbg !414
  br label %786, !dbg !1041

; <label>:363:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !1042, metadata !DIExpression()), !dbg !1049
  %364 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !1051
  %365 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 3) #8, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !1054, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i8* %3, metadata !1057, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i16 %17, metadata !1058, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i16 %364, metadata !1059, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i16 %365, metadata !1060, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8 12, metadata !1061, metadata !DIExpression()), !dbg !1076
  %366 = bitcast %struct.att_iterator* %11 to i8*, !dbg !1077
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %366) #6, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.att_iterator* %11, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1078
  %367 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %11, i16 zeroext %364) #8, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %367, metadata !1063, metadata !DIExpression()), !dbg !1080
  %368 = icmp eq i32 %367, 0, !dbg !1081
  br i1 %368, label %369, label %372, !dbg !1083

; <label>:369:                                    ; preds = %363
  store i8 1, i8* %3, align 1, !dbg !1084, !tbaa !338
  %370 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1088
  store i8 12, i8* %370, align 1, !dbg !1089, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %364) #8, !dbg !1090
  %371 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1091
  store i8 1, i8* %371, align 1, !dbg !1092, !tbaa !338
  br label %417, !dbg !1093

; <label>:372:                                    ; preds = %363
  %373 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %11, i32 0, i32 2, !dbg !1094
  %374 = load i16, i16* %373, align 2, !dbg !1094, !tbaa !81
  %375 = zext i16 %374 to i32, !dbg !1096
  %376 = and i32 %375, 2, !dbg !1097
  %377 = icmp eq i32 %376, 0, !dbg !1098
  br i1 %377, label %378, label %381, !dbg !1099

; <label>:378:                                    ; preds = %372
  store i8 1, i8* %3, align 1, !dbg !1100, !tbaa !338
  %379 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1104
  store i8 12, i8* %379, align 1, !dbg !1105, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %364) #8, !dbg !1106
  %380 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1107
  store i8 2, i8* %380, align 1, !dbg !1108, !tbaa !338
  br label %417, !dbg !1109

; <label>:381:                                    ; preds = %372
  %382 = and i32 %375, 1, !dbg !1110
  %383 = icmp eq i32 %382, 0, !dbg !1111
  br i1 %383, label %384, label %390, !dbg !1112

; <label>:384:                                    ; preds = %381
  call void @llvm.dbg.value(metadata %struct.att_iterator* %11, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1078
  %385 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* nonnull %0, %struct.att_iterator* nonnull %11) #8, !dbg !1113
  call void @llvm.dbg.value(metadata i8 %385, metadata !1064, metadata !DIExpression()), !dbg !1114
  %386 = icmp eq i8 %385, 0, !dbg !1115
  br i1 %386, label %390, label %387, !dbg !1117

; <label>:387:                                    ; preds = %384
  store i8 1, i8* %3, align 1, !dbg !1118, !tbaa !338
  %388 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1121
  store i8 12, i8* %388, align 1, !dbg !1122, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %364) #8, !dbg !1123
  %389 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1124
  store i8 %385, i8* %389, align 1, !dbg !1125, !tbaa !338
  br label %417

; <label>:390:                                    ; preds = %384, %381
  %391 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !1126
  %392 = load i16, i16* %391, align 2, !dbg !1126, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %11, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1078
  call fastcc void @att_update_value_len(%struct.att_iterator* nonnull %11, i16 zeroext %392) #8, !dbg !1127
  %393 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %11, i32 0, i32 5, !dbg !1128
  %394 = load i16, i16* %393, align 4, !dbg !1128, !tbaa !862
  %395 = icmp ult i16 %394, %365, !dbg !1130
  br i1 %395, label %396, label %399, !dbg !1131

; <label>:396:                                    ; preds = %390
  call void @llvm.dbg.value(metadata i16 12, metadata !1132, metadata !DIExpression()), !dbg !1137
  store i8 1, i8* %3, align 1, !dbg !1140, !tbaa !338
  %397 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1142
  store i8 12, i8* %397, align 1, !dbg !1143, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %364) #8, !dbg !1144
  %398 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1145
  store i8 7, i8* %398, align 1, !dbg !1146, !tbaa !338
  br label %417, !dbg !1147

; <label>:399:                                    ; preds = %390
  %400 = zext i16 %365 to i32, !dbg !1148
  %401 = zext i16 %394 to i32, !dbg !1149
  call void @llvm.dbg.value(metadata i16 1, metadata !1067, metadata !DIExpression()), !dbg !1150
  %402 = sub nsw i32 1, %400, !dbg !1151
  %403 = add nsw i32 %402, %401, !dbg !1153
  %404 = zext i16 %17 to i32, !dbg !1154
  %405 = icmp sgt i32 %403, %404, !dbg !1155
  br i1 %405, label %406, label %409, !dbg !1156

; <label>:406:                                    ; preds = %399
  %407 = add i16 %17, -1, !dbg !1157
  %408 = add i16 %407, %365, !dbg !1159
  store i16 %408, i16* %393, align 4, !dbg !1160, !tbaa !862
  br label %409, !dbg !1161

; <label>:409:                                    ; preds = %406, %399
  %410 = phi i16 [ %408, %406 ], [ %394, %399 ], !dbg !1162
  %411 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1163
  %412 = sub i16 %410, %365, !dbg !1164
  %413 = load i16, i16* %391, align 2, !dbg !1165, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %11, metadata !1062, metadata !DIExpression(DW_OP_deref)), !dbg !1078
  %414 = call fastcc i32 @att_copy_value(%struct.att_iterator* nonnull %11, i16 zeroext %365, i8* %411, i16 zeroext %412, i16 zeroext %413) #8, !dbg !1166
  %415 = add i32 %414, 1, !dbg !1167
  %416 = trunc i32 %415 to i16, !dbg !1167
  call void @llvm.dbg.value(metadata i16 %416, metadata !1067, metadata !DIExpression()), !dbg !1150
  store i8 13, i8* %3, align 1, !dbg !1168, !tbaa !338
  br label %417

; <label>:417:                                    ; preds = %409, %396, %387, %378, %369
  %418 = phi i16 [ 5, %378 ], [ 5, %396 ], [ %416, %409 ], [ 5, %369 ], [ 5, %387 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %366) #6, !dbg !1169
  call void @llvm.dbg.value(metadata i16 %418, metadata !408, metadata !DIExpression()), !dbg !414
  br label %786, !dbg !1170

; <label>:419:                                    ; preds = %4
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !1171, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %1, metadata !1174, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i16 %2, metadata !1175, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %3, metadata !1176, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i16 %17, metadata !1177, metadata !DIExpression()), !dbg !1184
  %420 = zext i16 %2 to i32, !dbg !1185
  %421 = add nuw nsw i32 %420, 131071, !dbg !1186
  %422 = lshr i32 %421, 1, !dbg !1187
  %423 = trunc i32 %422 to i16, !dbg !1188
  %424 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1189
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !1190, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %3, metadata !1195, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i16 %17, metadata !1196, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i16 %423, metadata !1197, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %424, metadata !1198, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 14, metadata !1199, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i16 1, metadata !1200, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i16 0, metadata !1203, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !1201, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i16 1, metadata !1200, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 0, metadata !1201, metadata !DIExpression()), !dbg !1220
  %425 = and i32 %422, 65535, !dbg !1221
  %426 = icmp eq i16 %423, 0, !dbg !1223
  br i1 %426, label %482, label %427, !dbg !1224

; <label>:427:                                    ; preds = %419
  %428 = bitcast %struct.att_iterator* %10 to i8*
  %429 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %10, i32 0, i32 2
  %430 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0
  %431 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %10, i32 0, i32 5
  %432 = zext i16 %17 to i32
  %433 = add i16 %17, -1
  br label %434, !dbg !1224

; <label>:434:                                    ; preds = %472, %427
  %435 = phi i32 [ 1, %427 ], [ %477, %472 ]
  %436 = phi i32 [ 0, %427 ], [ %478, %472 ]
  %437 = shl i32 %436, 1, !dbg !1226
  %438 = tail call zeroext i16 @little_endian_read_16(i8* %424, i32 %437) #8, !dbg !1227
  call void @llvm.dbg.value(metadata i16 %438, metadata !1203, metadata !DIExpression()), !dbg !1219
  %439 = icmp eq i16 %438, 0, !dbg !1228
  br i1 %439, label %440, label %443, !dbg !1230

; <label>:440:                                    ; preds = %434
  store i8 1, i8* %3, align 1, !dbg !1231, !tbaa !338
  %441 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1235
  store i8 14, i8* %441, align 1, !dbg !1236, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext 0) #8, !dbg !1237
  %442 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1238
  store i8 1, i8* %442, align 1, !dbg !1239, !tbaa !338
  br label %786, !dbg !1240

; <label>:443:                                    ; preds = %434
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %428) #6, !dbg !1241
  call void @llvm.dbg.value(metadata %struct.att_iterator* %10, metadata !1204, metadata !DIExpression(DW_OP_deref)), !dbg !1242
  %444 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %10, i16 zeroext %438) #8, !dbg !1243
  call void @llvm.dbg.value(metadata i32 %444, metadata !1208, metadata !DIExpression()), !dbg !1244
  %445 = icmp eq i32 %444, 0, !dbg !1245
  br i1 %445, label %446, label %449, !dbg !1247

; <label>:446:                                    ; preds = %443
  store i8 1, i8* %3, align 1, !dbg !1248, !tbaa !338
  %447 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1252
  store i8 14, i8* %447, align 1, !dbg !1253, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %438) #8, !dbg !1254
  %448 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1255
  store i8 1, i8* %448, align 1, !dbg !1256, !tbaa !338
  call void @llvm.dbg.value(metadata i16 %481, metadata !1200, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %428) #6, !dbg !1257
  br label %786

; <label>:449:                                    ; preds = %443
  %450 = load i16, i16* %429, align 2, !dbg !1258, !tbaa !81
  %451 = zext i16 %450 to i32, !dbg !1260
  %452 = and i32 %451, 2, !dbg !1261
  %453 = icmp eq i32 %452, 0, !dbg !1262
  br i1 %453, label %468, label %454, !dbg !1263

; <label>:454:                                    ; preds = %449
  %455 = and i32 %451, 1, !dbg !1264
  %456 = icmp eq i32 %455, 0, !dbg !1266
  br i1 %456, label %457, label %460, !dbg !1267

; <label>:457:                                    ; preds = %454
  call void @llvm.dbg.value(metadata %struct.att_iterator* %10, metadata !1204, metadata !DIExpression(DW_OP_deref)), !dbg !1242
  %458 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* nonnull %0, %struct.att_iterator* nonnull %10) #8, !dbg !1268
  call void @llvm.dbg.value(metadata i8 %458, metadata !1202, metadata !DIExpression()), !dbg !1218
  %459 = icmp eq i8 %458, 0, !dbg !1270
  br i1 %459, label %460, label %468, !dbg !1272

; <label>:460:                                    ; preds = %457, %454
  %461 = load i16, i16* %430, align 2, !dbg !1273, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %10, metadata !1204, metadata !DIExpression(DW_OP_deref)), !dbg !1242
  call fastcc void @att_update_value_len(%struct.att_iterator* nonnull %10, i16 zeroext %461) #8, !dbg !1274
  %462 = and i32 %435, 65535, !dbg !1275
  %463 = load i16, i16* %431, align 4, !dbg !1277, !tbaa !862
  %464 = zext i16 %463 to i32, !dbg !1278
  %465 = add nuw nsw i32 %464, %462, !dbg !1279
  %466 = icmp ugt i32 %465, %432, !dbg !1280
  br i1 %466, label %467, label %472, !dbg !1281

; <label>:467:                                    ; preds = %460
  store i16 %433, i16* %431, align 4, !dbg !1282, !tbaa !862
  br label %472, !dbg !1284

; <label>:468:                                    ; preds = %457, %449
  %469 = phi i8 [ %458, %457 ], [ 2, %449 ]
  call void @llvm.dbg.value(metadata i16 %481, metadata !1200, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %428) #6, !dbg !1257
  call void @llvm.dbg.value(metadata i16 undef, metadata !1200, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1218
  store i8 1, i8* %3, align 1, !dbg !1285, !tbaa !338
  %470 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1289
  store i8 14, i8* %470, align 1, !dbg !1290, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %438) #8, !dbg !1291
  %471 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1292
  store i8 %469, i8* %471, align 1, !dbg !1293, !tbaa !338
  br label %786, !dbg !1294

; <label>:472:                                    ; preds = %467, %460
  %473 = phi i16 [ %433, %467 ], [ %463, %460 ], !dbg !1295
  %474 = getelementptr inbounds i8, i8* %3, i32 %462, !dbg !1296
  %475 = load i16, i16* %430, align 2, !dbg !1297, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.att_iterator* %10, metadata !1204, metadata !DIExpression(DW_OP_deref)), !dbg !1242
  %476 = call fastcc i32 @att_copy_value(%struct.att_iterator* nonnull %10, i16 zeroext 0, i8* %474, i16 zeroext %473, i16 zeroext %475) #8, !dbg !1298
  %477 = add i32 %476, %462, !dbg !1299
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %428) #6, !dbg !1257
  %478 = add nuw nsw i32 %436, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %478, metadata !1201, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %478, metadata !1201, metadata !DIExpression()), !dbg !1220
  %479 = icmp slt i32 %478, %425, !dbg !1223
  br i1 %479, label %434, label %480, !dbg !1224, !llvm.loop !1302

; <label>:480:                                    ; preds = %472
  %481 = trunc i32 %477 to i16, !dbg !1299
  br label %482, !dbg !1217

; <label>:482:                                    ; preds = %480, %419
  %483 = phi i16 [ 1, %419 ], [ %481, %480 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1200, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1218
  store i8 15, i8* %3, align 1, !dbg !1305, !tbaa !338
  br label %786, !dbg !1306

; <label>:484:                                    ; preds = %4
  call void @llvm.dbg.value(metadata %struct.att_connection* null, metadata !1307, metadata !DIExpression()), !dbg !1315
  %485 = icmp ult i16 %2, 8, !dbg !1317
  %486 = select i1 %485, i16 2, i16 16, !dbg !1319
  %487 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !1321
  %488 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 3) #8, !dbg !1322
  %489 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.att_connection* null, metadata !1325, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 16, metadata !1334, metadata !DIExpression()), !dbg !1350
  %490 = add i16 %487, -1, !dbg !1351
  %491 = icmp ult i16 %490, %488, !dbg !1351
  br i1 %491, label %495, label %492, !dbg !1351

; <label>:492:                                    ; preds = %484
  store i8 1, i8* %3, align 1, !dbg !1353, !tbaa !338
  %493 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1357
  store i8 16, i8* %493, align 1, !dbg !1358, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %487) #8, !dbg !1359
  %494 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1360
  store i8 1, i8* %494, align 1, !dbg !1361, !tbaa !338
  br label %786, !dbg !1362

; <label>:495:                                    ; preds = %484
  call void @llvm.dbg.value(metadata i16 %486, metadata !1363, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %489, metadata !1368, metadata !DIExpression()), !dbg !1371
  br i1 %485, label %499, label %496, !dbg !1372

; <label>:496:                                    ; preds = %495
  %497 = tail call fastcc i32 @is_Bluetooth_Base_UUID(i8* %489) #8, !dbg !1373
  %498 = icmp eq i32 %497, 0, !dbg !1373
  br i1 %498, label %504, label %499, !dbg !1375

; <label>:499:                                    ; preds = %496, %495
  %500 = phi i32 [ 0, %495 ], [ 12, %496 ]
  %501 = tail call zeroext i16 @little_endian_read_16(i8* %489, i32 %500) #8, !dbg !1376
  call void @llvm.dbg.value(metadata i16 %501, metadata !1335, metadata !DIExpression()), !dbg !1377
  %502 = and i16 %501, -2, !dbg !1378
  %503 = icmp eq i16 %502, 10240, !dbg !1378
  br i1 %503, label %507, label %504, !dbg !1378

; <label>:504:                                    ; preds = %499, %496
  store i8 1, i8* %3, align 1, !dbg !1380, !tbaa !338
  %505 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1383
  store i8 16, i8* %505, align 1, !dbg !1384, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %487) #8, !dbg !1385
  %506 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1386
  store i8 16, i8* %506, align 1, !dbg !1387, !tbaa !338
  br label %786, !dbg !1388

; <label>:507:                                    ; preds = %499
  call void @llvm.dbg.value(metadata i16 1, metadata !1336, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i16 0, metadata !1337, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i16 0, metadata !1338, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i16 0, metadata !1339, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* null, metadata !1340, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i16 0, metadata !1341, metadata !DIExpression()), !dbg !1394
  %508 = bitcast %struct.att_iterator* %9 to i8*, !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %508) #6, !dbg !1395
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !1342, metadata !DIExpression(DW_OP_deref)), !dbg !1396
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !106, metadata !DIExpression()), !dbg !1397
  %509 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !1399, !tbaa !114
  %510 = bitcast %struct.att_iterator* %9 to i32*, !dbg !1400
  store i32 %509, i32* %510, align 4, !dbg !1400, !tbaa !119
  %511 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %9, i32 0, i32 0
  %512 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %9, i32 0, i32 3
  %513 = zext i16 %17 to i32
  %514 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %9, i32 0, i32 5
  %515 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %9, i32 0, i32 6
  br label %516, !dbg !1401

; <label>:516:                                    ; preds = %582, %507
  %517 = phi i16 [ 1, %507 ], [ %583, %582 ]
  %518 = phi i16 [ 0, %507 ], [ %584, %582 ]
  %519 = phi i16 [ 0, %507 ], [ 1, %582 ]
  %520 = phi i16 [ 0, %507 ], [ %532, %582 ]
  %521 = phi i8* [ null, %507 ], [ %585, %582 ]
  %522 = zext i16 %518 to i32
  %523 = add nsw i32 %522, -4
  br label %524, !dbg !1394

; <label>:524:                                    ; preds = %561, %516
  %525 = phi i16 [ %517, %516 ], [ %562, %561 ]
  %526 = phi i16 [ %519, %516 ], [ %563, %561 ]
  %527 = phi i16 [ %520, %516 ], [ %564, %561 ]
  br label %528, !dbg !1394

; <label>:528:                                    ; preds = %531, %524
  call void @llvm.dbg.value(metadata i16 %527, metadata !1341, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8* %521, metadata !1340, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i16 %520, metadata !1339, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i16 %526, metadata !1338, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i16 %518, metadata !1337, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i16 %525, metadata !1336, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !1342, metadata !DIExpression(DW_OP_deref)), !dbg !1396
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !120, metadata !DIExpression()), !dbg !1402
  %529 = load i8*, i8** %511, align 4, !dbg !1405, !tbaa !119
  %530 = icmp eq i8* %529, null, !dbg !1406
  br i1 %530, label %586, label %531, !dbg !1407

; <label>:531:                                    ; preds = %528
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !1342, metadata !DIExpression(DW_OP_deref)), !dbg !1396
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %9) #8, !dbg !1408
  %532 = load i16, i16* %512, align 4, !dbg !1409, !tbaa !134
  %533 = icmp ne i16 %532, 0, !dbg !1411
  %534 = icmp ult i16 %532, %487, !dbg !1412
  %535 = and i1 %533, %534, !dbg !1414
  br i1 %535, label %528, label %536, !dbg !1414, !llvm.loop !1415

; <label>:536:                                    ; preds = %531
  %537 = icmp ugt i16 %532, %488, !dbg !1418
  br i1 %537, label %587, label %538, !dbg !1420

; <label>:538:                                    ; preds = %536
  %539 = icmp eq i16 %526, 0, !dbg !1421
  br i1 %539, label %558, label %540, !dbg !1423

; <label>:540:                                    ; preds = %538
  %541 = icmp eq i16 %532, 0, !dbg !1424
  br i1 %541, label %548, label %542, !dbg !1425

; <label>:542:                                    ; preds = %540
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !1342, metadata !DIExpression(DW_OP_deref)), !dbg !1396
  %543 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %9, i16 zeroext 10240) #8, !dbg !1426
  %544 = icmp eq i32 %543, 0, !dbg !1426
  br i1 %544, label %545, label %548, !dbg !1428

; <label>:545:                                    ; preds = %542
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !1342, metadata !DIExpression(DW_OP_deref)), !dbg !1396
  %546 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %9, i16 zeroext 10241) #8, !dbg !1429
  %547 = icmp eq i32 %546, 0, !dbg !1429
  br i1 %547, label %565, label %548, !dbg !1431

; <label>:548:                                    ; preds = %545, %542, %540
  tail call void @little_endian_store_16(i8* %3, i16 zeroext %525, i16 zeroext %520) #8, !dbg !1433
  %549 = add i16 %525, 2, !dbg !1435
  call void @llvm.dbg.value(metadata i16 %549, metadata !1336, metadata !DIExpression()), !dbg !1389
  tail call void @little_endian_store_16(i8* %3, i16 zeroext %549, i16 zeroext %527) #8, !dbg !1436
  %550 = add i16 %525, 4, !dbg !1437
  call void @llvm.dbg.value(metadata i16 %550, metadata !1336, metadata !DIExpression()), !dbg !1389
  %551 = zext i16 %550 to i32, !dbg !1438
  %552 = getelementptr inbounds i8, i8* %3, i32 %551, !dbg !1439
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %552, i8* %521, i32 %523, i32 1, i1 false) #6, !dbg !1440
  %553 = add nsw i32 %551, %523, !dbg !1441
  %554 = trunc i32 %553 to i16, !dbg !1441
  call void @llvm.dbg.value(metadata i16 %554, metadata !1336, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i16 0, metadata !1338, metadata !DIExpression()), !dbg !1391
  %555 = and i32 %553, 65535, !dbg !1442
  %556 = add nuw nsw i32 %555, %522, !dbg !1444
  %557 = icmp ugt i32 %556, %513, !dbg !1445
  br i1 %557, label %587, label %558, !dbg !1446

; <label>:558:                                    ; preds = %548, %538
  %559 = phi i16 [ %554, %548 ], [ %525, %538 ]
  call void @llvm.dbg.value(metadata i16 0, metadata !1338, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i16 %559, metadata !1336, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i16 %532, metadata !1341, metadata !DIExpression()), !dbg !1394
  %560 = icmp eq i16 %532, 0, !dbg !1447
  br i1 %560, label %561, label %565, !dbg !1448

; <label>:561:                                    ; preds = %565, %558
  %562 = phi i16 [ %567, %565 ], [ %559, %558 ]
  %563 = phi i16 [ %566, %565 ], [ 0, %558 ]
  %564 = phi i16 [ %532, %565 ], [ 0, %558 ]
  br label %524, !dbg !1394, !llvm.loop !1415

; <label>:565:                                    ; preds = %558, %545
  %566 = phi i16 [ 0, %558 ], [ %526, %545 ]
  %567 = phi i16 [ %559, %558 ], [ %525, %545 ]
  call void @llvm.dbg.value(metadata %struct.att_iterator* %9, metadata !1342, metadata !DIExpression(DW_OP_deref)), !dbg !1396
  %568 = call fastcc i32 @att_iterator_match_uuid(%struct.att_iterator* nonnull %9, i8* %489, i16 zeroext %486) #8, !dbg !1449
  %569 = icmp eq i32 %568, 0, !dbg !1449
  br i1 %569, label %561, label %570, !dbg !1451

; <label>:570:                                    ; preds = %565
  %571 = load i16, i16* %514, align 4, !dbg !1452, !tbaa !862
  %572 = add i16 %571, 4, !dbg !1453
  call void @llvm.dbg.value(metadata i16 %572, metadata !1343, metadata !DIExpression()), !dbg !1454
  %573 = zext i16 %567 to i32, !dbg !1455
  %574 = icmp ult i16 %567, 2, !dbg !1457
  %575 = icmp eq i16 %572, %518, !dbg !1458
  %576 = or i1 %574, %575, !dbg !1461
  br i1 %576, label %577, label %589, !dbg !1461

; <label>:577:                                    ; preds = %570
  %578 = icmp eq i16 %567, 1, !dbg !1462
  br i1 %578, label %579, label %582, !dbg !1464

; <label>:579:                                    ; preds = %577
  call void @llvm.dbg.value(metadata i16 %572, metadata !1337, metadata !DIExpression()), !dbg !1390
  %580 = trunc i16 %572 to i8, !dbg !1465
  %581 = getelementptr inbounds i8, i8* %3, i32 %573, !dbg !1467
  store i8 %580, i8* %581, align 1, !dbg !1468, !tbaa !338
  br label %582, !dbg !1469

; <label>:582:                                    ; preds = %579, %577
  %583 = phi i16 [ 2, %579 ], [ %567, %577 ]
  %584 = phi i16 [ %572, %579 ], [ %518, %577 ]
  call void @llvm.dbg.value(metadata i16 %584, metadata !1337, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i16 %583, metadata !1336, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i16 %532, metadata !1339, metadata !DIExpression()), !dbg !1392
  %585 = load i8*, i8** %515, align 4, !dbg !1470, !tbaa !712
  call void @llvm.dbg.value(metadata i8* %585, metadata !1340, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i16 1, metadata !1338, metadata !DIExpression()), !dbg !1391
  br label %516

; <label>:586:                                    ; preds = %528
  br label %590, !dbg !1389

; <label>:587:                                    ; preds = %548, %536
  %588 = phi i16 [ %525, %536 ], [ %554, %548 ]
  br label %590, !dbg !1389

; <label>:589:                                    ; preds = %570
  br label %590, !dbg !1389

; <label>:590:                                    ; preds = %589, %587, %586
  %591 = phi i16 [ %525, %586 ], [ %588, %587 ], [ %567, %589 ]
  call void @llvm.dbg.value(metadata i16 %591, metadata !1336, metadata !DIExpression()), !dbg !1389
  %592 = icmp eq i16 %591, 1, !dbg !1471
  br i1 %592, label %593, label %596, !dbg !1473

; <label>:593:                                    ; preds = %590
  store i8 1, i8* %3, align 1, !dbg !1474, !tbaa !338
  %594 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1478
  store i8 16, i8* %594, align 1, !dbg !1479, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %487) #8, !dbg !1480
  %595 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1481
  store i8 10, i8* %595, align 1, !dbg !1482, !tbaa !338
  br label %597, !dbg !1483

; <label>:596:                                    ; preds = %590
  store i8 17, i8* %3, align 1, !dbg !1484, !tbaa !338
  br label %597, !dbg !1485

; <label>:597:                                    ; preds = %596, %593
  %598 = phi i16 [ 5, %593 ], [ %591, %596 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %508) #6, !dbg !1486
  br label %786

; <label>:599:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !1487, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i8 18, metadata !1494, metadata !DIExpression()), !dbg !1502
  %600 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !1503
  call void @llvm.dbg.value(metadata i16 %600, metadata !1495, metadata !DIExpression()), !dbg !1504
  %601 = bitcast %struct.att_iterator* %8 to i8*, !dbg !1505
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %601) #6, !dbg !1505
  call void @llvm.dbg.value(metadata %struct.att_iterator* %8, metadata !1496, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  %602 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %8, i16 zeroext %600) #8, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %602, metadata !1497, metadata !DIExpression()), !dbg !1508
  %603 = icmp eq i32 %602, 0, !dbg !1509
  br i1 %603, label %604, label %607, !dbg !1511

; <label>:604:                                    ; preds = %599
  store i8 1, i8* %3, align 1, !dbg !1512, !tbaa !338
  %605 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1516
  store i8 18, i8* %605, align 1, !dbg !1517, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %600) #8, !dbg !1518
  %606 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1519
  store i8 1, i8* %606, align 1, !dbg !1520, !tbaa !338
  br label %650, !dbg !1521

; <label>:607:                                    ; preds = %599
  call void @llvm.dbg.value(metadata i16 %600, metadata !1522, metadata !DIExpression()), !dbg !1528
  %608 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %600) #8, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.att_service_handler* %608, metadata !1527, metadata !DIExpression()), !dbg !1531
  %609 = icmp eq %struct.att_service_handler* %608, null, !dbg !1532
  %610 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %608, i32 0, i32 4, !dbg !1534
  %611 = select i1 %609, i32 (i16, i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 5), i32 (i16, i16, i16, i16, i8*, i16)** %610, !dbg !1536
  %612 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** %611, align 4, !tbaa !1537
  call void @llvm.dbg.value(metadata i32 (i16, i16, i16, i16, i8*, i16)* %612, metadata !1498, metadata !DIExpression()), !dbg !1538
  %613 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %612, null, !dbg !1539
  br i1 %613, label %614, label %617, !dbg !1541

; <label>:614:                                    ; preds = %607
  store i8 1, i8* %3, align 1, !dbg !1542, !tbaa !338
  %615 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1551
  store i8 18, i8* %615, align 1, !dbg !1552, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %600) #8, !dbg !1553
  %616 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1554
  store i8 3, i8* %616, align 1, !dbg !1555, !tbaa !338
  br label %650, !dbg !1556

; <label>:617:                                    ; preds = %607
  %618 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %8, i32 0, i32 2, !dbg !1557
  %619 = load i16, i16* %618, align 2, !dbg !1557, !tbaa !81
  %620 = zext i16 %619 to i32, !dbg !1559
  %621 = and i32 %620, 8, !dbg !1560
  %622 = icmp eq i32 %621, 0, !dbg !1561
  br i1 %622, label %623, label %626, !dbg !1562

; <label>:623:                                    ; preds = %617
  store i8 1, i8* %3, align 1, !dbg !1563, !tbaa !338
  %624 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1567
  store i8 18, i8* %624, align 1, !dbg !1568, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %600) #8, !dbg !1569
  %625 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1570
  store i8 3, i8* %625, align 1, !dbg !1571, !tbaa !338
  br label %650, !dbg !1572

; <label>:626:                                    ; preds = %617
  %627 = and i32 %620, 256, !dbg !1573
  %628 = icmp eq i32 %627, 0, !dbg !1575
  br i1 %628, label %629, label %632, !dbg !1576

; <label>:629:                                    ; preds = %626
  store i8 1, i8* %3, align 1, !dbg !1577, !tbaa !338
  %630 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1581
  store i8 18, i8* %630, align 1, !dbg !1582, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %600) #8, !dbg !1583
  %631 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1584
  store i8 3, i8* %631, align 1, !dbg !1585, !tbaa !338
  br label %650, !dbg !1586

; <label>:632:                                    ; preds = %626
  call void @llvm.dbg.value(metadata %struct.att_iterator* %8, metadata !1496, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  %633 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* nonnull %0, %struct.att_iterator* nonnull %8) #8, !dbg !1587
  call void @llvm.dbg.value(metadata i8 %633, metadata !1499, metadata !DIExpression()), !dbg !1588
  %634 = icmp eq i8 %633, 0, !dbg !1589
  br i1 %634, label %638, label %635, !dbg !1591

; <label>:635:                                    ; preds = %632
  store i8 1, i8* %3, align 1, !dbg !1592, !tbaa !338
  %636 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1595
  store i8 18, i8* %636, align 1, !dbg !1596, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %600) #8, !dbg !1597
  %637 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1598
  store i8 %633, i8* %637, align 1, !dbg !1599, !tbaa !338
  br label %650, !dbg !1600

; <label>:638:                                    ; preds = %632
  %639 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !1601
  %640 = load i16, i16* %639, align 2, !dbg !1601, !tbaa !311
  %641 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1602
  %642 = add i16 %2, -3, !dbg !1603
  %643 = tail call i32 %612(i16 zeroext %640, i16 zeroext %600, i16 zeroext 0, i16 zeroext 0, i8* %641, i16 zeroext %642) #8, !dbg !1604
  %644 = trunc i32 %643 to i8, !dbg !1604
  call void @llvm.dbg.value(metadata i8 %644, metadata !1499, metadata !DIExpression()), !dbg !1588
  %645 = icmp eq i8 %644, 0, !dbg !1605
  br i1 %645, label %649, label %646, !dbg !1607

; <label>:646:                                    ; preds = %638
  store i8 1, i8* %3, align 1, !dbg !1608, !tbaa !338
  %647 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1611
  store i8 18, i8* %647, align 1, !dbg !1612, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %600) #8, !dbg !1613
  %648 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1614
  store i8 %644, i8* %648, align 1, !dbg !1615, !tbaa !338
  br label %650, !dbg !1616

; <label>:649:                                    ; preds = %638
  store i8 19, i8* %3, align 1, !dbg !1617, !tbaa !338
  br label %650, !dbg !1618

; <label>:650:                                    ; preds = %649, %646, %635, %629, %623, %614, %604
  %651 = phi i16 [ 5, %604 ], [ 5, %623 ], [ 5, %629 ], [ 5, %614 ], [ 5, %635 ], [ 5, %646 ], [ 1, %649 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %601) #6, !dbg !1619
  call void @llvm.dbg.value(metadata i16 %651, metadata !408, metadata !DIExpression()), !dbg !414
  br label %786, !dbg !1620

; <label>:652:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !1621, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 22, metadata !1628, metadata !DIExpression()), !dbg !1637
  %653 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !1638
  call void @llvm.dbg.value(metadata i16 %653, metadata !1629, metadata !DIExpression()), !dbg !1639
  %654 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 3) #8, !dbg !1640
  call void @llvm.dbg.value(metadata i16 %654, metadata !1630, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i16 %653, metadata !1522, metadata !DIExpression()), !dbg !1642
  %655 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %653) #8, !dbg !1644
  call void @llvm.dbg.value(metadata %struct.att_service_handler* %655, metadata !1527, metadata !DIExpression()), !dbg !1645
  %656 = icmp eq %struct.att_service_handler* %655, null, !dbg !1646
  %657 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %655, i32 0, i32 4, !dbg !1647
  %658 = select i1 %656, i32 (i16, i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 5), i32 (i16, i16, i16, i16, i8*, i16)** %657, !dbg !1648
  %659 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** %658, align 4, !tbaa !1537
  call void @llvm.dbg.value(metadata i32 (i16, i16, i16, i16, i8*, i16)* %659, metadata !1631, metadata !DIExpression()), !dbg !1649
  %660 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %659, null, !dbg !1650
  br i1 %660, label %661, label %664, !dbg !1652

; <label>:661:                                    ; preds = %652
  store i8 1, i8* %3, align 1, !dbg !1653, !tbaa !338
  %662 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1657
  store i8 22, i8* %662, align 1, !dbg !1658, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %653) #8, !dbg !1659
  %663 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1660
  store i8 3, i8* %663, align 1, !dbg !1661, !tbaa !338
  br label %786, !dbg !1662

; <label>:664:                                    ; preds = %652
  %665 = bitcast %struct.att_iterator* %7 to i8*, !dbg !1663
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %665) #6, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.att_iterator* %7, metadata !1632, metadata !DIExpression(DW_OP_deref)), !dbg !1664
  %666 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %7, i16 zeroext %653) #8, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %666, metadata !1633, metadata !DIExpression()), !dbg !1666
  %667 = icmp eq i32 %666, 0, !dbg !1667
  br i1 %667, label %668, label %671, !dbg !1669

; <label>:668:                                    ; preds = %664
  store i8 1, i8* %3, align 1, !dbg !1670, !tbaa !338
  %669 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1674
  store i8 22, i8* %669, align 1, !dbg !1675, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %653) #8, !dbg !1676
  %670 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1677
  store i8 1, i8* %670, align 1, !dbg !1678, !tbaa !338
  br label %714, !dbg !1679

; <label>:671:                                    ; preds = %664
  %672 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %7, i32 0, i32 2, !dbg !1680
  %673 = load i16, i16* %672, align 2, !dbg !1680, !tbaa !81
  %674 = zext i16 %673 to i32, !dbg !1682
  %675 = and i32 %674, 8, !dbg !1683
  %676 = icmp eq i32 %675, 0, !dbg !1684
  br i1 %676, label %677, label %680, !dbg !1685

; <label>:677:                                    ; preds = %671
  store i8 1, i8* %3, align 1, !dbg !1686, !tbaa !338
  %678 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1690
  store i8 22, i8* %678, align 1, !dbg !1691, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %653) #8, !dbg !1692
  %679 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1693
  store i8 3, i8* %679, align 1, !dbg !1694, !tbaa !338
  br label %714, !dbg !1695

; <label>:680:                                    ; preds = %671
  %681 = and i32 %674, 256, !dbg !1696
  %682 = icmp eq i32 %681, 0, !dbg !1698
  br i1 %682, label %683, label %686, !dbg !1699

; <label>:683:                                    ; preds = %680
  store i8 1, i8* %3, align 1, !dbg !1700, !tbaa !338
  %684 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1704
  store i8 22, i8* %684, align 1, !dbg !1705, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %653) #8, !dbg !1706
  %685 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1707
  store i8 3, i8* %685, align 1, !dbg !1708, !tbaa !338
  br label %714, !dbg !1709

; <label>:686:                                    ; preds = %680
  call void @llvm.dbg.value(metadata %struct.att_iterator* %7, metadata !1632, metadata !DIExpression(DW_OP_deref)), !dbg !1664
  %687 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* nonnull %0, %struct.att_iterator* nonnull %7) #8, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %687, metadata !1634, metadata !DIExpression()), !dbg !1711
  %688 = icmp eq i8 %687, 0, !dbg !1712
  br i1 %688, label %692, label %689, !dbg !1714

; <label>:689:                                    ; preds = %686
  store i8 1, i8* %3, align 1, !dbg !1715, !tbaa !338
  %690 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1718
  store i8 22, i8* %690, align 1, !dbg !1719, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %653) #8, !dbg !1720
  %691 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1721
  store i8 %687, i8* %691, align 1, !dbg !1722, !tbaa !338
  br label %714, !dbg !1723

; <label>:692:                                    ; preds = %686
  %693 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !1724
  %694 = load i16, i16* %693, align 2, !dbg !1724, !tbaa !311
  %695 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !1725
  %696 = zext i16 %2 to i32, !dbg !1726
  %697 = add i16 %2, -5, !dbg !1727
  %698 = tail call i32 %659(i16 zeroext %694, i16 zeroext %653, i16 zeroext 1, i16 zeroext %654, i8* %695, i16 zeroext %697) #8, !dbg !1728
  %699 = trunc i32 %698 to i8, !dbg !1728
  call void @llvm.dbg.value(metadata i8 %699, metadata !1634, metadata !DIExpression()), !dbg !1711
  switch i8 %699, label %710 [
    i8 0, label %713
    i8 7, label %700
    i8 13, label %700
  ], !dbg !1729

; <label>:700:                                    ; preds = %692, %692
  call void @llvm.dbg.value(metadata i8 %699, metadata !1730, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i16 %653, metadata !1735, metadata !DIExpression()), !dbg !1739
  %701 = icmp ne i8 %699, 13, !dbg !1740
  %702 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1742
  %703 = icmp eq i8 %702, %699, !dbg !1744
  %704 = or i1 %701, %703, !dbg !1745
  br i1 %704, label %705, label %709, !dbg !1745

; <label>:705:                                    ; preds = %700
  %706 = icmp eq i8 %699, 7, !dbg !1746
  %707 = icmp eq i8 %702, 0, !dbg !1748
  %708 = and i1 %706, %707, !dbg !1750
  br i1 %708, label %709, label %713, !dbg !1750

; <label>:709:                                    ; preds = %705, %700
  store i8 %699, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !tbaa !1751
  store i16 %653, i16* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 7), align 2, !tbaa !1752
  br label %713, !dbg !1753

; <label>:710:                                    ; preds = %692
  store i8 1, i8* %3, align 1, !dbg !1754, !tbaa !338
  %711 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1756
  store i8 22, i8* %711, align 1, !dbg !1757, !tbaa !338
  tail call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %653) #8, !dbg !1758
  %712 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1759
  store i8 %699, i8* %712, align 1, !dbg !1760, !tbaa !338
  br label %714, !dbg !1761

; <label>:713:                                    ; preds = %709, %705, %692
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* nonnull %1, i32 %696, i32 1, i1 false) #6, !dbg !1762
  store i8 23, i8* %3, align 1, !dbg !1763, !tbaa !338
  br label %714, !dbg !1764

; <label>:714:                                    ; preds = %713, %710, %689, %683, %677, %668
  %715 = phi i16 [ 5, %677 ], [ 5, %683 ], [ 5, %668 ], [ 5, %689 ], [ 5, %710 ], [ %2, %713 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %665) #6, !dbg !1765
  br label %786

; <label>:716:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !1766, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i16 0, metadata !1772, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 24, metadata !1773, metadata !DIExpression()), !dbg !1783
  %717 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1784
  %718 = load i8, i8* %717, align 1, !dbg !1784, !tbaa !338
  %719 = icmp eq i8 %718, 0, !dbg !1784
  br i1 %719, label %757, label %720, !dbg !1785

; <label>:720:                                    ; preds = %716
  %721 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1786, !tbaa !1751
  %722 = icmp eq i8 %721, 0, !dbg !1788
  br i1 %722, label %723, label %751, !dbg !1789

; <label>:723:                                    ; preds = %720
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !1790, metadata !DIExpression()), !dbg !1799
  %724 = bitcast %struct.btstack_linked_list_iterator_t* %6 to i8*, !dbg !1802
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %724) #6, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1803
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %6, %struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 8)) #8, !dbg !1804
  %725 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0
  br label %726, !dbg !1805

; <label>:726:                                    ; preds = %736, %723
  br label %727, !dbg !1803

; <label>:727:                                    ; preds = %730, %726
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1803
  %728 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %6) #8, !dbg !1806
  %729 = icmp eq i32 %728, 0, !dbg !1808
  br i1 %729, label %742, label %730, !dbg !1808

; <label>:730:                                    ; preds = %727
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1803
  %731 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %6) #8, !dbg !1809
  %732 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %731, i32 3, !dbg !1810
  %733 = bitcast %struct.btstack_linked_item* %732 to i32 (i16, i16, i16, i16, i8*, i16)**, !dbg !1810
  %734 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** %733, align 4, !dbg !1810, !tbaa !303
  %735 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %734, null, !dbg !1812
  br i1 %735, label %727, label %736, !dbg !1813, !llvm.loop !1814

; <label>:736:                                    ; preds = %730
  %737 = load i16, i16* %725, align 2, !dbg !1817, !tbaa !311
  %738 = call i32 %734(i16 zeroext %737, i16 zeroext 0, i16 zeroext 4, i16 zeroext 0, i8* null, i16 zeroext 0) #8, !dbg !1818
  %739 = trunc i32 %738 to i8, !dbg !1818
  call void @llvm.dbg.value(metadata i8 %739, metadata !1798, metadata !DIExpression()), !dbg !1819
  %740 = icmp eq i8 %739, 0, !dbg !1820
  br i1 %740, label %726, label %741

; <label>:741:                                    ; preds = %736
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %724) #6, !dbg !1822
  store i8 %739, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1823, !tbaa !1751
  br label %751, !dbg !1824

; <label>:742:                                    ; preds = %727
  %743 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 5), align 4, !dbg !1825, !tbaa !176
  %744 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %743, null, !dbg !1827
  br i1 %744, label %745, label %746, !dbg !1828

; <label>:745:                                    ; preds = %742
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %724) #6, !dbg !1822
  store i8 0, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1823, !tbaa !1751
  br label %756, !dbg !1824

; <label>:746:                                    ; preds = %742
  %747 = load i16, i16* %725, align 2, !dbg !1829, !tbaa !311
  %748 = call i32 %743(i16 zeroext %747, i16 zeroext 0, i16 zeroext 4, i16 zeroext 0, i8* null, i16 zeroext 0) #8, !dbg !1830
  %749 = trunc i32 %748 to i8, !dbg !1830
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %724) #6, !dbg !1822
  store i8 %749, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1823, !tbaa !1751
  %750 = icmp eq i8 %749, 0, !dbg !1831
  br i1 %750, label %756, label %751, !dbg !1824

; <label>:751:                                    ; preds = %746, %741, %720
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !271, metadata !DIExpression()), !dbg !1832
  call fastcc void @att_notify_write_callbacks(%struct.att_connection* nonnull %0, i16 zeroext 3) #8, !dbg !1834
  %752 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1835, !tbaa !1751
  call void @llvm.dbg.value(metadata i8 %752, metadata !1774, metadata !DIExpression()), !dbg !1836
  %753 = load i16, i16* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 7), align 2, !dbg !1837, !tbaa !1752
  call void @llvm.dbg.value(metadata i16 %753, metadata !1779, metadata !DIExpression()), !dbg !1838
  store i8 0, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 6), align 4, !dbg !1839, !tbaa !1751
  store i16 0, i16* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 7), align 2, !dbg !1842, !tbaa !1752
  store i8 1, i8* %3, align 1, !dbg !1843, !tbaa !338
  %754 = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1845
  store i8 24, i8* %754, align 1, !dbg !1846, !tbaa !338
  call void @little_endian_store_16(i8* %3, i16 zeroext 2, i16 zeroext %753) #8, !dbg !1847
  %755 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1848
  store i8 %752, i8* %755, align 1, !dbg !1849, !tbaa !338
  br label %786

; <label>:756:                                    ; preds = %746, %745
  call fastcc void @att_notify_write_callbacks(%struct.att_connection* %0, i16 zeroext 2) #8, !dbg !1850
  br label %758, !dbg !1851

; <label>:757:                                    ; preds = %716
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !271, metadata !DIExpression()), !dbg !1852
  tail call fastcc void @att_notify_write_callbacks(%struct.att_connection* nonnull %0, i16 zeroext 3) #8, !dbg !1855
  br label %758

; <label>:758:                                    ; preds = %757, %756
  store i8 25, i8* %3, align 1, !dbg !1856, !tbaa !338
  br label %786, !dbg !1857

; <label>:759:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i8* null, metadata !1858, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i16 0, metadata !1866, metadata !DIExpression()), !dbg !1873
  %760 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %1, i32 1) #8, !dbg !1874
  call void @llvm.dbg.value(metadata i16 %760, metadata !1867, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i16 %760, metadata !1522, metadata !DIExpression()), !dbg !1876
  %761 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %760) #8, !dbg !1878
  call void @llvm.dbg.value(metadata %struct.att_service_handler* %761, metadata !1527, metadata !DIExpression()), !dbg !1879
  %762 = icmp eq %struct.att_service_handler* %761, null, !dbg !1880
  %763 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %761, i32 0, i32 4, !dbg !1881
  %764 = select i1 %762, i32 (i16, i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 5), i32 (i16, i16, i16, i16, i8*, i16)** %763, !dbg !1882
  %765 = load i32 (i16, i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)** %764, align 4, !tbaa !1537
  call void @llvm.dbg.value(metadata i32 (i16, i16, i16, i16, i8*, i16)* %765, metadata !1868, metadata !DIExpression()), !dbg !1883
  %766 = icmp eq i32 (i16, i16, i16, i16, i8*, i16)* %765, null, !dbg !1884
  br i1 %766, label %786, label %767, !dbg !1886

; <label>:767:                                    ; preds = %759
  %768 = bitcast %struct.att_iterator* %5 to i8*, !dbg !1887
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %768) #6, !dbg !1887
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1869, metadata !DIExpression(DW_OP_deref)), !dbg !1888
  %769 = call fastcc i32 @att_find_handle(%struct.att_iterator* nonnull %5, i16 zeroext %760) #8, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %769, metadata !1870, metadata !DIExpression()), !dbg !1890
  %770 = icmp eq i32 %769, 0, !dbg !1891
  br i1 %770, label %785, label %771, !dbg !1893

; <label>:771:                                    ; preds = %767
  %772 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %5, i32 0, i32 2, !dbg !1894
  %773 = load i16, i16* %772, align 2, !dbg !1894, !tbaa !81
  %774 = and i16 %773, 260, !dbg !1896
  %775 = icmp eq i16 %774, 260, !dbg !1896
  br i1 %775, label %776, label %785, !dbg !1896

; <label>:776:                                    ; preds = %771
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1869, metadata !DIExpression(DW_OP_deref)), !dbg !1888
  %777 = call fastcc zeroext i8 @att_validate_security(%struct.att_connection* nonnull %0, %struct.att_iterator* nonnull %5) #8, !dbg !1897
  %778 = icmp eq i8 %777, 0, !dbg !1897
  br i1 %778, label %779, label %785, !dbg !1899

; <label>:779:                                    ; preds = %776
  %780 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 0, !dbg !1900
  %781 = load i16, i16* %780, align 2, !dbg !1900, !tbaa !311
  %782 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1901
  %783 = add i16 %2, -3, !dbg !1902
  %784 = tail call i32 %765(i16 zeroext %781, i16 zeroext %760, i16 zeroext 0, i16 zeroext 0, i8* %782, i16 zeroext %783) #8, !dbg !1903
  br label %785, !dbg !1904

; <label>:785:                                    ; preds = %779, %776, %771, %767
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %768) #6, !dbg !1904
  br label %786

; <label>:786:                                    ; preds = %785, %759, %758, %751, %714, %661, %650, %597, %504, %492, %482, %468, %446, %440, %417, %361, %315, %201, %191, %118, %108, %44, %30, %19, %4
  %787 = phi i16 [ 0, %4 ], [ %651, %650 ], [ %418, %417 ], [ %362, %361 ], [ 0, %30 ], [ 3, %19 ], [ 5, %44 ], [ %109, %108 ], [ 5, %118 ], [ %192, %191 ], [ 5, %201 ], [ %316, %315 ], [ 5, %440 ], [ 5, %468 ], [ %483, %482 ], [ 5, %446 ], [ 5, %492 ], [ 5, %504 ], [ %598, %597 ], [ %715, %714 ], [ 5, %661 ], [ 5, %751 ], [ 1, %758 ], [ 0, %759 ], [ 0, %785 ]
  call void @llvm.dbg.value(metadata i16 %787, metadata !408, metadata !DIExpression()), !dbg !414
  ret i16 %787, !dbg !1905
}

; Function Attrs: nounwind optsize
define hidden void @att_register_service_handler(%struct.att_service_handler*) local_unnamed_addr #0 !dbg !1906 {
  call void @llvm.dbg.value(metadata %struct.att_service_handler* %0, metadata !1910, metadata !DIExpression()), !dbg !1911
  %2 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %0, i32 0, i32 1, !dbg !1912
  %3 = load i16, i16* %2, align 4, !dbg !1912, !tbaa !1914
  %4 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %3) #7, !dbg !1915
  %5 = icmp eq %struct.att_service_handler* %4, null, !dbg !1915
  br i1 %5, label %6, label %13, !dbg !1916

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %0, i32 0, i32 2, !dbg !1917
  %8 = load i16, i16* %7, align 2, !dbg !1917, !tbaa !1918
  %9 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %8) #7, !dbg !1919
  %10 = icmp eq %struct.att_service_handler* %9, null, !dbg !1919
  br i1 %10, label %11, label %13, !dbg !1920

; <label>:11:                                     ; preds = %6
  %12 = bitcast %struct.att_service_handler* %0 to %struct.btstack_linked_item*, !dbg !1922
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 8), %struct.btstack_linked_item* %12) #8, !dbg !1922
  br label %13, !dbg !1923

; <label>:13:                                     ; preds = %11, %6, %1
  ret void, !dbg !1924
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext) unnamed_addr #0 !dbg !1925 {
  %2 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !1929, metadata !DIExpression()), !dbg !1933
  %3 = bitcast %struct.btstack_linked_list_iterator_t* %2 to i8*, !dbg !1934
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %3) #6, !dbg !1934
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %2, metadata !1930, metadata !DIExpression(DW_OP_deref)), !dbg !1935
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %2, %struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 8)) #8, !dbg !1936
  br label %4, !dbg !1937

; <label>:4:                                      ; preds = %14, %1
  br label %5, !dbg !1935

; <label>:5:                                      ; preds = %8, %4
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %2, metadata !1930, metadata !DIExpression(DW_OP_deref)), !dbg !1935
  %6 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %2) #8, !dbg !1938
  %7 = icmp eq i32 %6, 0, !dbg !1940
  br i1 %7, label %19, label %8, !dbg !1940

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %2, metadata !1930, metadata !DIExpression(DW_OP_deref)), !dbg !1935
  %9 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %2) #8, !dbg !1941
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 1, !dbg !1942
  %11 = bitcast %struct.btstack_linked_item* %10 to i16*, !dbg !1942
  %12 = load i16, i16* %11, align 4, !dbg !1942, !tbaa !1914
  %13 = icmp ugt i16 %12, %0, !dbg !1944
  br i1 %13, label %5, label %14, !dbg !1945, !llvm.loop !1946

; <label>:14:                                     ; preds = %8
  %15 = bitcast %struct.btstack_linked_item* %9 to %struct.att_service_handler*, !dbg !1948
  %16 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %15, i32 0, i32 2, !dbg !1949
  %17 = load i16, i16* %16, align 2, !dbg !1949, !tbaa !1918
  %18 = icmp ult i16 %17, %0, !dbg !1951
  br i1 %18, label %4, label %20

; <label>:19:                                     ; preds = %5
  br label %21, !dbg !1952

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !1952

; <label>:21:                                     ; preds = %20, %19
  %22 = phi %struct.att_service_handler* [ null, %19 ], [ %15, %20 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %3) #6, !dbg !1952
  ret %struct.att_service_handler* %22, !dbg !1952
}

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @gatt_server_get_get_handle_range_for_service_with_uuid16(i16 zeroext, i16* nocapture, i16* nocapture) local_unnamed_addr #0 !dbg !1953 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca %struct.att_iterator, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !1958, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i16* %1, metadata !1959, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i16* %2, metadata !1960, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i16 0, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i16 0, metadata !1962, metadata !DIExpression()), !dbg !1975
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i32 0, i32 0, !dbg !1976
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #6, !dbg !1976
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %4, metadata !1963, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i32 2, metadata !1967, metadata !DIExpression()), !dbg !1978
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 0, i16 zeroext %0) #8, !dbg !1979
  %7 = bitcast %struct.att_iterator* %5 to i8*, !dbg !1980
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #6, !dbg !1980
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !106, metadata !DIExpression()), !dbg !1982
  %8 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !1984, !tbaa !114
  %9 = bitcast %struct.att_iterator* %5 to i32*, !dbg !1985
  store i32 %8, i32* %9, align 4, !dbg !1985, !tbaa !119
  call void @llvm.dbg.value(metadata i16 0, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i16 0, metadata !1962, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !120, metadata !DIExpression()), !dbg !1986
  %10 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %5, i32 0, i32 0, !dbg !1989
  %11 = icmp eq i32 %8, 0, !dbg !1990
  br i1 %11, label %51, label %12, !dbg !1991

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %5, i32 0, i32 5
  %15 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %5, i32 0, i32 6
  br label %16, !dbg !1991

; <label>:16:                                     ; preds = %45, %12
  %17 = phi i1 [ false, %12 ], [ true, %45 ]
  %18 = phi i16 [ 0, %12 ], [ %28, %45 ]
  br label %19, !dbg !1991

; <label>:19:                                     ; preds = %42, %16
  %20 = phi i16 [ %18, %16 ], [ %28, %42 ]
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %5) #7, !dbg !1992
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  %21 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %5, i16 zeroext 10240) #7, !dbg !1993
  %22 = icmp eq i32 %21, 0, !dbg !1993
  br i1 %22, label %23, label %26, !dbg !1994

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  %24 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %5, i16 zeroext 10241) #7, !dbg !1995
  %25 = icmp ne i32 %24, 0, !dbg !1997
  br label %26, !dbg !1997

; <label>:26:                                     ; preds = %23, %19
  %27 = phi i1 [ true, %19 ], [ %25, %23 ]
  %28 = load i16, i16* %13, align 4, !tbaa !134
  %29 = icmp eq i16 %28, 0, !dbg !1998
  %30 = or i1 %27, %29, !dbg !2000
  %31 = and i1 %17, %30, !dbg !2001
  br i1 %31, label %48, label %32, !dbg !2001

; <label>:32:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i16 %28, metadata !1962, metadata !DIExpression()), !dbg !1975
  %33 = icmp ne i16 %28, 0, !dbg !2002
  %34 = and i1 %27, %33, !dbg !2004
  %35 = load i16, i16* %14, align 4, !dbg !2005
  %36 = icmp eq i16 %35, 2, !dbg !2007
  %37 = and i1 %34, %36, !dbg !2004
  br i1 %37, label %38, label %42, !dbg !2004

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %15, align 4, !dbg !2008, !tbaa !712
  %40 = call i32 @memcmp(i8* nonnull %6, i8* %39, i32 2) #7, !dbg !2010
  %41 = icmp eq i32 %40, 0, !dbg !2011
  br i1 %41, label %45, label %42, !dbg !2012

; <label>:42:                                     ; preds = %38, %32
  call void @llvm.dbg.value(metadata i16 undef, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i16 %28, metadata !1962, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !120, metadata !DIExpression()), !dbg !1986
  %43 = load i8*, i8** %10, align 4, !dbg !1989, !tbaa !119
  %44 = icmp eq i8* %43, null, !dbg !1990
  br i1 %44, label %49, label %19, !dbg !1991

; <label>:45:                                     ; preds = %38
  store i16 %28, i16* %1, align 2, !dbg !2014, !tbaa !2016
  call void @llvm.dbg.value(metadata i16 1, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i16 1, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i16 %28, metadata !1962, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1981
  call void @llvm.dbg.value(metadata %struct.att_iterator* %5, metadata !120, metadata !DIExpression()), !dbg !1986
  %46 = load i8*, i8** %10, align 4, !dbg !1989, !tbaa !119
  %47 = icmp eq i8* %46, null, !dbg !1990
  br i1 %47, label %50, label %16, !dbg !1991

; <label>:48:                                     ; preds = %26
  store i16 %20, i16* %2, align 2, !dbg !2017, !tbaa !2016
  call void @llvm.dbg.value(metadata i16 undef, metadata !1961, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i16 undef, metadata !1962, metadata !DIExpression()), !dbg !1975
  br label %51

; <label>:49:                                     ; preds = %42
  br label %51, !dbg !2019

; <label>:50:                                     ; preds = %45
  br label %51, !dbg !2019

; <label>:51:                                     ; preds = %50, %49, %48, %3
  %52 = phi i32 [ 1, %48 ], [ 0, %3 ], [ 0, %49 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #6, !dbg !2019
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #6, !dbg !2019
  ret i32 %52, !dbg !2019
}

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nocapture readonly, i16 zeroext) unnamed_addr #0 !dbg !2020 {
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !2022, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i16 %1, metadata !2023, metadata !DIExpression()), !dbg !2025
  %3 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 3, !dbg !2026
  %4 = load i16, i16* %3, align 4, !dbg !2026, !tbaa !134
  %5 = icmp eq i16 %4, 0, !dbg !2028
  br i1 %5, label %22, label %6, !dbg !2029

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 2, !dbg !2030
  %8 = load i16, i16* %7, align 2, !dbg !2030, !tbaa !81
  %9 = and i16 %8, 512, !dbg !2032
  %10 = icmp eq i16 %9, 0, !dbg !2032
  %11 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 4
  %12 = load i8*, i8** %11, align 4, !tbaa !90
  br i1 %10, label %19, label %13, !dbg !2033

; <label>:13:                                     ; preds = %6
  %14 = tail call fastcc i32 @is_Bluetooth_Base_UUID(i8* %12) #7, !dbg !2034
  %15 = icmp eq i32 %14, 0, !dbg !2034
  br i1 %15, label %22, label %16, !dbg !2037

; <label>:16:                                     ; preds = %13
  %17 = tail call zeroext i16 @little_endian_read_16(i8* %12, i32 12) #8, !dbg !2038
  %18 = icmp eq i16 %17, %1, !dbg !2039
  br label %22, !dbg !2040

; <label>:19:                                     ; preds = %6
  %20 = tail call zeroext i16 @little_endian_read_16(i8* %12, i32 0) #8, !dbg !2041
  %21 = icmp eq i16 %20, %1, !dbg !2042
  br label %22, !dbg !2043

; <label>:22:                                     ; preds = %19, %16, %13, %2
  %23 = phi i1 [ %18, %16 ], [ %21, %19 ], [ false, %2 ], [ false, %13 ]
  %24 = zext i1 %23 to i32
  ret i32 %24, !dbg !2044
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i16 @gatt_server_get_value_handle_for_characteristic_with_uuid16(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2045 {
  %4 = alloca %struct.att_iterator, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i16 %1, metadata !2050, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i16 %2, metadata !2051, metadata !DIExpression()), !dbg !2055
  %5 = bitcast %struct.att_iterator* %4 to i8*, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2052, metadata !DIExpression(DW_OP_deref)), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !106, metadata !DIExpression()), !dbg !2058
  %6 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !2060, !tbaa !114
  %7 = bitcast %struct.att_iterator* %4 to i32*, !dbg !2061
  store i32 %6, i32* %7, align 4, !dbg !2061, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2052, metadata !DIExpression(DW_OP_deref)), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !120, metadata !DIExpression()), !dbg !2062
  %8 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %4, i32 0, i32 0, !dbg !2065
  %9 = icmp eq i32 %6, 0, !dbg !2066
  br i1 %9, label %28, label %10, !dbg !2067

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %4, i32 0, i32 3
  br label %12, !dbg !2067

; <label>:12:                                     ; preds = %23, %10
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2052, metadata !DIExpression(DW_OP_deref)), !dbg !2057
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %4) #7, !dbg !2068
  %13 = load i16, i16* %11, align 4, !dbg !2070, !tbaa !134
  %14 = icmp ne i16 %13, 0, !dbg !2072
  %15 = icmp ult i16 %13, %0, !dbg !2073
  %16 = and i1 %14, %15, !dbg !2075
  br i1 %16, label %23, label %17, !dbg !2075

; <label>:17:                                     ; preds = %12
  %18 = add i16 %13, -1, !dbg !2076
  %19 = icmp ult i16 %18, %1, !dbg !2076
  br i1 %19, label %20, label %26, !dbg !2076

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2052, metadata !DIExpression(DW_OP_deref)), !dbg !2057
  %21 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %4, i16 zeroext %2) #7, !dbg !2077
  %22 = icmp eq i32 %21, 0, !dbg !2077
  br i1 %22, label %23, label %26, !dbg !2079

; <label>:23:                                     ; preds = %20, %12
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2052, metadata !DIExpression(DW_OP_deref)), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !120, metadata !DIExpression()), !dbg !2062
  %24 = load i8*, i8** %8, align 4, !dbg !2065, !tbaa !119
  %25 = icmp eq i8* %24, null, !dbg !2066
  br i1 %25, label %26, label %12, !dbg !2067, !llvm.loop !2080

; <label>:26:                                     ; preds = %23, %20, %17
  %27 = phi i16 [ 0, %17 ], [ 0, %23 ], [ %13, %20 ]
  br label %28, !dbg !2083

; <label>:28:                                     ; preds = %26, %3
  %29 = phi i16 [ 0, %3 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !2083
  ret i16 %29, !dbg !2083
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @gatt_server_get_client_configuration_handle_for_characteristic_with_uuid16(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2084 {
  %4 = alloca %struct.att_iterator, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !2086, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i16 %1, metadata !2087, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i16 %2, metadata !2088, metadata !DIExpression()), !dbg !2093
  %5 = bitcast %struct.att_iterator* %4 to i8*, !dbg !2094
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !2094
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !106, metadata !DIExpression()), !dbg !2096
  %6 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 3) to i32*), align 4, !dbg !2098, !tbaa !114
  %7 = bitcast %struct.att_iterator* %4 to i32*, !dbg !2099
  store i32 %6, i32* %7, align 4, !dbg !2099, !tbaa !119
  call void @llvm.dbg.value(metadata i32 0, metadata !2090, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !2090, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !120, metadata !DIExpression()), !dbg !2101
  %8 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %4, i32 0, i32 0, !dbg !2104
  %9 = icmp eq i32 %6, 0, !dbg !2105
  br i1 %9, label %50, label %10, !dbg !2106

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %4, i32 0, i32 3
  br label %12, !dbg !2106

; <label>:12:                                     ; preds = %37, %10
  %13 = phi i32 [ 0, %10 ], [ %38, %37 ]
  br label %14, !dbg !2106

; <label>:14:                                     ; preds = %44, %12
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call fastcc void @att_iterator_fetch_next(%struct.att_iterator* nonnull %4) #7, !dbg !2107
  %15 = load i16, i16* %11, align 4, !dbg !2109, !tbaa !134
  %16 = icmp ne i16 %15, 0, !dbg !2111
  %17 = icmp ult i16 %15, %0, !dbg !2112
  %18 = and i1 %16, %17, !dbg !2114
  br i1 %18, label %44, label %19, !dbg !2114

; <label>:19:                                     ; preds = %14
  %20 = add i16 %15, -1, !dbg !2115
  %21 = icmp ult i16 %20, %1, !dbg !2115
  br i1 %21, label %22, label %47, !dbg !2115

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  %23 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %4, i16 zeroext %2) #7, !dbg !2116
  %24 = icmp eq i32 %23, 0, !dbg !2116
  br i1 %24, label %25, label %36, !dbg !2118, !llvm.loop !2119

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  %26 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %4, i16 zeroext 10240) #7, !dbg !2122
  %27 = icmp eq i32 %26, 0, !dbg !2122
  br i1 %27, label %28, label %34, !dbg !2124

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  %29 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %4, i16 zeroext 10241) #7, !dbg !2125
  %30 = icmp eq i32 %29, 0, !dbg !2125
  br i1 %30, label %31, label %34, !dbg !2127

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  %32 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %4, i16 zeroext 10243) #7, !dbg !2128
  %33 = icmp eq i32 %32, 0, !dbg !2128
  br i1 %33, label %41, label %34, !dbg !2129

; <label>:34:                                     ; preds = %31, %28, %25
  %35 = icmp eq i32 %13, 0, !dbg !2131
  br i1 %35, label %37, label %49, !dbg !2134

; <label>:36:                                     ; preds = %22
  br label %37, !dbg !2100

; <label>:37:                                     ; preds = %36, %34
  %38 = phi i32 [ 0, %34 ], [ 1, %36 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !2090, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !120, metadata !DIExpression()), !dbg !2101
  %39 = load i8*, i8** %8, align 4, !dbg !2104, !tbaa !119
  %40 = icmp eq i8* %39, null, !dbg !2105
  br i1 %40, label %49, label %12, !dbg !2106, !llvm.loop !2119

; <label>:41:                                     ; preds = %31
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  %42 = call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %4, i16 zeroext 10498) #7, !dbg !2135
  %43 = icmp eq i32 %42, 0, !dbg !2135
  br i1 %43, label %44, label %47, !dbg !2137

; <label>:44:                                     ; preds = %41, %14
  call void @llvm.dbg.value(metadata i32 %13, metadata !2090, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !2089, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.att_iterator* %4, metadata !120, metadata !DIExpression()), !dbg !2101
  %45 = load i8*, i8** %8, align 4, !dbg !2104, !tbaa !119
  %46 = icmp eq i8* %45, null, !dbg !2105
  br i1 %46, label %47, label %14, !dbg !2106, !llvm.loop !2119

; <label>:47:                                     ; preds = %44, %41, %19
  %48 = phi i16 [ 0, %19 ], [ 0, %44 ], [ %15, %41 ]
  br label %50, !dbg !2138

; <label>:49:                                     ; preds = %37, %34
  br label %50, !dbg !2138

; <label>:50:                                     ; preds = %49, %47, %3
  %51 = phi i16 [ 0, %3 ], [ %48, %47 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !2138
  ret i16 %51, !dbg !2138
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_read_callback_handle_blob(i8* nocapture readonly, i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !2139 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2143, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i16 %1, metadata !2144, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i16 %2, metadata !2145, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %3, metadata !2146, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i16 %4, metadata !2147, metadata !DIExpression()), !dbg !2155
  %6 = icmp eq i8* %3, null, !dbg !2156
  br i1 %6, label %16, label %7, !dbg !2157

; <label>:7:                                      ; preds = %5
  %8 = zext i16 %1 to i32, !dbg !2158
  %9 = zext i16 %2 to i32, !dbg !2159
  %10 = sub nsw i32 %8, %9, !dbg !2160
  %11 = zext i16 %4 to i32, !dbg !2161
  %12 = tail call i32 @btstack_min(i32 %10, i32 %11) #8, !dbg !2162
  %13 = trunc i32 %12 to i16, !dbg !2162
  call void @llvm.dbg.value(metadata i16 %13, metadata !2148, metadata !DIExpression()), !dbg !2163
  %14 = getelementptr inbounds i8, i8* %0, i32 %9, !dbg !2164
  %15 = and i32 %12, 65535, !dbg !2165
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* %14, i32 %15, i32 1, i1 false), !dbg !2166
  br label %16

; <label>:16:                                     ; preds = %7, %5
  %17 = phi i16 [ %13, %7 ], [ %1, %5 ]
  ret i16 %17, !dbg !2167
}

; Function Attrs: optsize
declare i32 @btstack_min(i32, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_read_callback_handle_little_endian_32(i32, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !2168 {
  %5 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2174, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i16 %1, metadata !2175, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %2, metadata !2176, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i16 %3, metadata !2177, metadata !DIExpression()), !dbg !2185
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6, !dbg !2186
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %5, metadata !2178, metadata !DIExpression()), !dbg !2187
  call void @little_endian_store_32(i8* nonnull %6, i16 zeroext 0, i32 %0) #8, !dbg !2188
  %7 = call zeroext i16 @att_read_callback_handle_blob(i8* nonnull %6, i16 zeroext 4, i16 zeroext %1, i8* %2, i16 zeroext %3) #7, !dbg !2189
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6, !dbg !2190
  ret i16 %7, !dbg !2191
}

; Function Attrs: optsize
declare void @little_endian_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_read_callback_handle_little_endian_16(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !2192 {
  %5 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !2196, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i16 %1, metadata !2197, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %2, metadata !2198, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i16 %3, metadata !2199, metadata !DIExpression()), !dbg !2204
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i32 0, i32 0, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #6, !dbg !2205
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !2200, metadata !DIExpression()), !dbg !2206
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 0, i16 zeroext %0) #8, !dbg !2207
  %7 = call zeroext i16 @att_read_callback_handle_blob(i8* nonnull %6, i16 zeroext 2, i16 zeroext %1, i8* %2, i16 zeroext %3) #7, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #6, !dbg !2209
  ret i16 %7, !dbg !2210
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @att_read_callback_handle_byte(i8 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !2211 {
  %5 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !2215, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i16 %1, metadata !2216, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %2, metadata !2217, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i16 %3, metadata !2218, metadata !DIExpression()), !dbg !2226
  %6 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i32 0, i32 0, !dbg !2227
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #6, !dbg !2227
  tail call void @llvm.dbg.declare(metadata [1 x i8]* %5, metadata !2219, metadata !DIExpression()), !dbg !2228
  store i8 %0, i8* %6, align 1, !dbg !2229, !tbaa !338
  %7 = call zeroext i16 @att_read_callback_handle_blob(i8* nonnull %6, i16 zeroext 1, i16 zeroext %1, i8* %2, i16 zeroext %3) #7, !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #6, !dbg !2231
  ret i16 %7, !dbg !2232
}

; Function Attrs: optsize
declare void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t*, %struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gatt_client_sync_mtu(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc i32 @att_iterator_match_uuid(%struct.att_iterator* nocapture readonly, i8*, i16 zeroext) unnamed_addr #0 !dbg !2233 {
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %1, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i16 %2, metadata !2239, metadata !DIExpression()), !dbg !2242
  %4 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 3, !dbg !2243
  %5 = load i16, i16* %4, align 4, !dbg !2243, !tbaa !134
  %6 = icmp eq i16 %5, 0, !dbg !2245
  br i1 %6, label %33, label %7, !dbg !2246

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i16 %2, 2, !dbg !2247
  br i1 %8, label %9, label %12, !dbg !2249

; <label>:9:                                      ; preds = %7
  %10 = tail call zeroext i16 @little_endian_read_16(i8* %1, i32 0) #8, !dbg !2250
  %11 = tail call fastcc i32 @att_iterator_match_uuid16(%struct.att_iterator* nonnull %0, i16 zeroext %10) #7, !dbg !2252
  br label %33, !dbg !2254

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 2, !dbg !2255
  %14 = load i16, i16* %13, align 2, !dbg !2255, !tbaa !81
  %15 = and i16 %14, 512, !dbg !2257
  %16 = icmp eq i16 %15, 0, !dbg !2257
  br i1 %16, label %23, label %17, !dbg !2258

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 4, !dbg !2259
  %19 = load i8*, i8** %18, align 4, !dbg !2259, !tbaa !90
  %20 = tail call i32 @memcmp(i8* %19, i8* %1, i32 16) #7, !dbg !2261
  %21 = icmp eq i32 %20, 0, !dbg !2262
  %22 = zext i1 %21 to i32, !dbg !2262
  br label %33, !dbg !2263

; <label>:23:                                     ; preds = %12
  %24 = tail call fastcc i32 @is_Bluetooth_Base_UUID(i8* %1) #7, !dbg !2264
  %25 = icmp eq i32 %24, 0, !dbg !2264
  br i1 %25, label %33, label %26, !dbg !2266

; <label>:26:                                     ; preds = %23
  %27 = tail call zeroext i16 @little_endian_read_16(i8* %1, i32 12) #8, !dbg !2267
  %28 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 4, !dbg !2268
  %29 = load i8*, i8** %28, align 4, !dbg !2268, !tbaa !90
  %30 = tail call zeroext i16 @little_endian_read_16(i8* %29, i32 0) #8, !dbg !2269
  %31 = icmp eq i16 %27, %30, !dbg !2271
  %32 = zext i1 %31 to i32, !dbg !2271
  br label %33, !dbg !2272

; <label>:33:                                     ; preds = %26, %23, %17, %9, %3
  %34 = phi i32 [ %11, %9 ], [ %22, %17 ], [ %32, %26 ], [ 0, %3 ], [ 0, %23 ]
  ret i32 %34, !dbg !2273
}

; Function Attrs: nounwind optsize readonly
define internal fastcc zeroext i8 @att_validate_security(%struct.att_connection* nocapture readonly, %struct.att_iterator* nocapture readonly) unnamed_addr #5 !dbg !2274 {
  call void @llvm.dbg.value(metadata %struct.att_connection* %0, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata %struct.att_iterator* %1, metadata !2279, metadata !DIExpression()), !dbg !2282
  %3 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %1, i32 0, i32 2, !dbg !2283
  %4 = load i16, i16* %3, align 2, !dbg !2283, !tbaa !81
  %5 = zext i16 %4 to i32, !dbg !2284
  %6 = lshr i32 %5, 12, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %6, metadata !2280, metadata !DIExpression()), !dbg !2286
  %7 = icmp eq i32 %6, 0, !dbg !2287
  %8 = add nuw nsw i32 %6, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %8, metadata !2280, metadata !DIExpression()), !dbg !2286
  %9 = select i1 %7, i32 0, i32 %8, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %9, metadata !2280, metadata !DIExpression()), !dbg !2286
  %10 = and i16 %4, 1024, !dbg !2292
  %11 = icmp eq i16 %10, 0, !dbg !2292
  br i1 %11, label %16, label %12, !dbg !2294

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 4, !dbg !2295
  %14 = load i8, i8* %13, align 1, !dbg !2295, !tbaa !2297
  %15 = icmp eq i8 %14, 0, !dbg !2298
  br i1 %15, label %33, label %16, !dbg !2299

; <label>:16:                                     ; preds = %12, %2
  %17 = and i16 %4, 2048, !dbg !2301
  %18 = icmp eq i16 %17, 0, !dbg !2301
  br i1 %18, label %23, label %19, !dbg !2303

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 5, !dbg !2304
  %21 = load i8, i8* %20, align 2, !dbg !2304, !tbaa !2306
  %22 = icmp eq i8 %21, 0, !dbg !2307
  br i1 %22, label %33, label %23, !dbg !2308

; <label>:23:                                     ; preds = %19, %16
  %24 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %0, i32 0, i32 3
  %25 = load i8, i8* %24, align 2, !tbaa !2309
  %26 = xor i1 %7, true, !dbg !2310
  %27 = icmp eq i8 %25, 0, !dbg !2312
  %28 = and i1 %27, %26, !dbg !2310
  br i1 %28, label %33, label %29, !dbg !2310

; <label>:29:                                     ; preds = %23
  %30 = zext i8 %25 to i32, !dbg !2314
  %31 = icmp ugt i32 %9, %30, !dbg !2316
  %32 = select i1 %31, i8 12, i8 0, !dbg !2317
  br label %33, !dbg !2317

; <label>:33:                                     ; preds = %29, %23, %19, %12
  %34 = phi i8 [ 5, %12 ], [ 8, %19 ], [ %32, %29 ], [ 15, %23 ]
  ret i8 %34, !dbg !2319
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_update_value_len(%struct.att_iterator* nocapture, i16 zeroext) unnamed_addr #0 !dbg !2320 {
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !2326, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i16 %1, metadata !2327, metadata !DIExpression()), !dbg !2330
  %3 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 2, !dbg !2331
  %4 = load i16, i16* %3, align 2, !dbg !2331, !tbaa !81
  %5 = and i16 %4, 256, !dbg !2333
  %6 = icmp eq i16 %5, 0, !dbg !2334
  br i1 %6, label %20, label %7, !dbg !2335

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 3, !dbg !2336
  %9 = load i16, i16* %8, align 4, !dbg !2336, !tbaa !134
  call void @llvm.dbg.value(metadata i16 %9, metadata !2337, metadata !DIExpression()), !dbg !2343
  %10 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %9) #8, !dbg !2345
  call void @llvm.dbg.value(metadata %struct.att_service_handler* %10, metadata !2342, metadata !DIExpression()), !dbg !2346
  %11 = icmp eq %struct.att_service_handler* %10, null, !dbg !2347
  %12 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %10, i32 0, i32 3, !dbg !2349
  %13 = select i1 %11, i16 (i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 4), i16 (i16, i16, i16, i8*, i16)** %12, !dbg !2351
  %14 = load i16 (i16, i16, i16, i8*, i16)*, i16 (i16, i16, i16, i8*, i16)** %13, align 4, !tbaa !1537
  call void @llvm.dbg.value(metadata i16 (i16, i16, i16, i8*, i16)* %14, metadata !2328, metadata !DIExpression()), !dbg !2352
  %15 = icmp eq i16 (i16, i16, i16, i8*, i16)* %14, null, !dbg !2353
  br i1 %15, label %20, label %16, !dbg !2355

; <label>:16:                                     ; preds = %7
  %17 = load i16, i16* %8, align 4, !dbg !2356, !tbaa !134
  %18 = tail call zeroext i16 %14(i16 zeroext %1, i16 zeroext %17, i16 zeroext 0, i8* null, i16 zeroext 0) #8, !dbg !2357
  %19 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 5, !dbg !2358
  store i16 %18, i16* %19, align 4, !dbg !2359, !tbaa !862
  br label %20, !dbg !2360

; <label>:20:                                     ; preds = %16, %7, %2
  ret void, !dbg !2361
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @att_copy_value(%struct.att_iterator* nocapture readonly, i16 zeroext, i8*, i16 zeroext, i16 zeroext) unnamed_addr #0 !dbg !2363 {
  call void @llvm.dbg.value(metadata %struct.att_iterator* %0, metadata !2367, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i16 %1, metadata !2368, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %2, metadata !2369, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i16 %3, metadata !2370, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i16 %4, metadata !2371, metadata !DIExpression()), !dbg !2380
  %6 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 2, !dbg !2381
  %7 = load i16, i16* %6, align 2, !dbg !2381, !tbaa !81
  %8 = and i16 %7, 256, !dbg !2382
  %9 = icmp eq i16 %8, 0, !dbg !2382
  br i1 %9, label %23, label %10, !dbg !2383

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 3, !dbg !2384
  %12 = load i16, i16* %11, align 4, !dbg !2384, !tbaa !134
  call void @llvm.dbg.value(metadata i16 %12, metadata !2337, metadata !DIExpression()), !dbg !2385
  %13 = tail call fastcc %struct.att_service_handler* @att_service_handler_for_handle(i16 zeroext %12) #8, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.att_service_handler* %13, metadata !2342, metadata !DIExpression()), !dbg !2388
  %14 = icmp eq %struct.att_service_handler* %13, null, !dbg !2389
  %15 = getelementptr inbounds %struct.att_service_handler, %struct.att_service_handler* %13, i32 0, i32 3, !dbg !2390
  %16 = select i1 %14, i16 (i16, i16, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 4), i16 (i16, i16, i16, i8*, i16)** %15, !dbg !2391
  %17 = load i16 (i16, i16, i16, i8*, i16)*, i16 (i16, i16, i16, i8*, i16)** %16, align 4, !tbaa !1537
  call void @llvm.dbg.value(metadata i16 (i16, i16, i16, i8*, i16)* %17, metadata !2372, metadata !DIExpression()), !dbg !2392
  %18 = icmp eq i16 (i16, i16, i16, i8*, i16)* %17, null, !dbg !2393
  br i1 %18, label %32, label %19, !dbg !2395

; <label>:19:                                     ; preds = %10
  %20 = load i16, i16* %11, align 4, !dbg !2396, !tbaa !134
  %21 = tail call zeroext i16 %17(i16 zeroext %4, i16 zeroext %20, i16 zeroext %1, i8* %2, i16 zeroext %3) #8, !dbg !2397
  %22 = zext i16 %21 to i32, !dbg !2397
  br label %32, !dbg !2398

; <label>:23:                                     ; preds = %5
  %24 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 5, !dbg !2399
  %25 = load i16, i16* %24, align 4, !dbg !2399, !tbaa !862
  %26 = sub i16 %25, %1, !dbg !2400
  call void @llvm.dbg.value(metadata i16 %26, metadata !2375, metadata !DIExpression()), !dbg !2401
  %27 = icmp ugt i16 %26, %3, !dbg !2402
  call void @llvm.dbg.value(metadata i16 %3, metadata !2375, metadata !DIExpression()), !dbg !2401
  %28 = select i1 %27, i16 %3, i16 %26, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %28, metadata !2375, metadata !DIExpression()), !dbg !2401
  %29 = getelementptr inbounds %struct.att_iterator, %struct.att_iterator* %0, i32 0, i32 6, !dbg !2405
  %30 = load i8*, i8** %29, align 4, !dbg !2405, !tbaa !712
  %31 = zext i16 %28 to i32, !dbg !2406
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %30, i32 %31, i32 1, i1 false), !dbg !2407
  br label %32

; <label>:32:                                     ; preds = %23, %19, %10
  %33 = phi i32 [ %31, %23 ], [ %22, %19 ], [ 0, %10 ]
  ret i32 %33, !dbg !2408
}

; Function Attrs: nounwind optsize readonly
define internal fastcc i32 @is_Bluetooth_Base_UUID(i8* nocapture readonly) unnamed_addr #5 !dbg !2410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()), !dbg !2415
  %2 = tail call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @bluetooth_base_uuid, i32 0, i32 0), i32 12) #7, !dbg !2416
  %3 = icmp eq i32 %2, 0, !dbg !2416
  br i1 %3, label %4, label %9, !dbg !2418

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i32 14, !dbg !2419
  %6 = tail call i32 @memcmp(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @bluetooth_base_uuid, i32 0, i32 14), i32 2) #7, !dbg !2421
  %7 = icmp eq i32 %6, 0, !dbg !2421
  %8 = zext i1 %7 to i32, !dbg !2422
  br label %9, !dbg !2422

; <label>:9:                                      ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10, !dbg !2423
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !49, line: 190, type: !41, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !42)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_db.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6, !14, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !8, line: 100, baseType: !9)
!8 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !8, line: 55, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !8, line: 53, size: 32, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !8, line: 54, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_service_handler_t", file: !17, line: 79, baseType: !18)
!17 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_service_handler", file: !17, line: 73, size: 128, elements: !19)
!19 = !{!20, !21, !25, !26, !36}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !18, file: !17, line: 74, baseType: !6, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "start_handle", scope: !18, file: !17, line: 75, baseType: !22, size: 16, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "end_handle", scope: !18, file: !17, line: 76, baseType: !22, size: 16, offset: 48)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "read_callback", scope: !18, file: !17, line: 77, baseType: !27, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_read_callback_t", file: !17, line: 51, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = !DISubroutineType(types: !30)
!30 = !{!22, !31, !22, !22, !33, !22}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !32, line: 60, baseType: !22)
!32 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 44, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "write_callback", scope: !18, file: !17, line: 78, baseType: !37, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_write_callback_t", file: !17, line: 70, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !31, !22, !22, !22, !33, !22}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !{!0, !43}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "bluetooth_base_uuid", scope: !2, file: !3, line: 59, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !47)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!53 = distinct !DISubprogram(name: "att_uuid_for_handle", scope: !3, file: !3, line: 236, type: !54, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!22, !22}
!56 = !{!57, !58, !70}
!57 = !DILocalVariable(name: "attribute_handle", arg: 1, scope: !53, file: !3, line: 236, type: !22)
!58 = !DILocalVariable(name: "it", scope: !53, file: !3, line: 238, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_iterator_t", file: !3, line: 110, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_iterator", file: !3, line: 100, size: 192, elements: !61)
!61 = !{!62, !64, !65, !66, !67, !68, !69}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "att_ptr", scope: !60, file: !3, line: 102, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !3, line: 104, baseType: !22, size: 16, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !3, line: 105, baseType: !22, size: 16, offset: 48)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !60, file: !3, line: 106, baseType: !22, size: 16, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !60, file: !3, line: 107, baseType: !63, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value_len", scope: !60, file: !3, line: 108, baseType: !22, size: 16, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !60, file: !3, line: 109, baseType: !63, size: 32, offset: 160)
!70 = !DILocalVariable(name: "ok", scope: !53, file: !3, line: 239, type: !41)
!71 = !DILocation(line: 236, column: 39, scope: !53)
!72 = !DILocation(line: 238, column: 5, scope: !53)
!73 = !DILocation(line: 238, column: 20, scope: !53)
!74 = !DILocation(line: 239, column: 14, scope: !53)
!75 = !DILocation(line: 239, column: 9, scope: !53)
!76 = !DILocation(line: 240, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !53, file: !3, line: 240, column: 9)
!78 = !DILocation(line: 240, column: 9, scope: !53)
!79 = !DILocation(line: 243, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !53, file: !3, line: 243, column: 9)
!81 = !{!82, !86, i64 6}
!82 = !{!"att_iterator", !83, i64 0, !86, i64 4, !86, i64 6, !86, i64 8, !83, i64 12, !86, i64 16, !83, i64 20}
!83 = !{!"any pointer", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!"short", !84, i64 0}
!87 = !DILocation(line: 243, column: 18, scope: !80)
!88 = !DILocation(line: 243, column: 9, scope: !53)
!89 = !DILocation(line: 246, column: 37, scope: !53)
!90 = !{!82, !83, i64 12}
!91 = !DILocation(line: 246, column: 12, scope: !53)
!92 = !DILocation(line: 246, column: 5, scope: !53)
!93 = !DILocation(line: 247, column: 1, scope: !53)
!94 = distinct !DISubprogram(name: "att_find_handle", scope: !3, file: !3, line: 184, type: !95, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{!41, !97, !22}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!98 = !{!99, !100}
!99 = !DILocalVariable(name: "it", arg: 1, scope: !94, file: !3, line: 184, type: !97)
!100 = !DILocalVariable(name: "handle", arg: 2, scope: !94, file: !3, line: 184, type: !22)
!101 = !DILocation(line: 184, column: 44, scope: !94)
!102 = !DILocation(line: 184, column: 57, scope: !94)
!103 = !DILocation(line: 186, column: 16, scope: !104)
!104 = distinct !DILexicalBlock(scope: !94, file: !3, line: 186, column: 9)
!105 = !DILocation(line: 186, column: 9, scope: !94)
!106 = !DILocalVariable(name: "it", arg: 1, scope: !107, file: !3, line: 112, type: !97)
!107 = distinct !DISubprogram(name: "att_iterator_init", scope: !3, file: !3, line: 112, type: !108, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !97}
!110 = !{!106}
!111 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !112)
!112 = distinct !DILocation(line: 189, column: 5, scope: !94)
!113 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !112)
!114 = !{!115, !83, i64 12}
!115 = !{!"", !83, i64 0, !83, i64 4, !84, i64 8, !84, i64 8, !84, i64 8, !84, i64 8, !83, i64 12, !83, i64 16, !83, i64 20, !84, i64 24, !86, i64 26, !83, i64 28, !116, i64 32, !116, i64 40, !83, i64 48, !83, i64 52, !84, i64 56, !84, i64 56, !84, i64 56}
!116 = !{!"", !117, i64 0, !83, i64 4}
!117 = !{!"btstack_linked_item", !83, i64 0}
!118 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !112)
!119 = !{!82, !83, i64 0}
!120 = !DILocalVariable(name: "it", arg: 1, scope: !121, file: !3, line: 117, type: !97)
!121 = distinct !DISubprogram(name: "att_iterator_has_next", scope: !3, file: !3, line: 117, type: !122, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!41, !97}
!124 = !{!120}
!125 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !126)
!126 = distinct !DILocation(line: 190, column: 12, scope: !127)
!127 = !DILexicalBlockFile(scope: !94, file: !3, discriminator: 1)
!128 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !126)
!129 = !DILocation(line: 190, column: 5, scope: !127)
!130 = !DILocation(line: 191, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !94, file: !3, line: 190, column: 39)
!132 = !DILocation(line: 192, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !3, line: 192, column: 13)
!134 = !{!82, !86, i64 8}
!135 = !DILocation(line: 192, column: 24, scope: !133)
!136 = !DILocation(line: 192, column: 13, scope: !131)
!137 = distinct !{!137, !138, !139}
!138 = !DILocation(line: 190, column: 5, scope: !94)
!139 = !DILocation(line: 196, column: 5, scope: !94)
!140 = !DILocation(line: 198, column: 1, scope: !94)
!141 = distinct !DISubprogram(name: "att_set_db", scope: !3, file: !3, line: 285, type: !142, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !63}
!144 = !{!145}
!145 = !DILocalVariable(name: "db", arg: 1, scope: !141, file: !3, line: 285, type: !63)
!146 = !DILocation(line: 285, column: 32, scope: !141)
!147 = !DILocation(line: 288, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 287, column: 17)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 287, column: 9)
!150 = !DILocation(line: 290, column: 1, scope: !141)
!151 = distinct !DISubprogram(name: "att_set_read_callback", scope: !3, file: !3, line: 292, type: !152, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !159)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_read_callback_t", file: !155, line: 116, baseType: !156)
!155 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/att.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DISubroutineType(types: !158)
!158 = !{!22, !22, !22, !22, !33, !22}
!159 = !{!160}
!160 = !DILocalVariable(name: "callback", arg: 1, scope: !151, file: !3, line: 292, type: !154)
!161 = !DILocation(line: 292, column: 48, scope: !151)
!162 = !DILocation(line: 294, column: 31, scope: !151)
!163 = !{!115, !83, i64 16}
!164 = !DILocation(line: 295, column: 1, scope: !151)
!165 = distinct !DISubprogram(name: "att_set_write_callback", scope: !3, file: !3, line: 297, type: !166, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !172)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_write_callback_t", file: !155, line: 127, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!170 = !DISubroutineType(types: !171)
!171 = !{!41, !22, !22, !22, !22, !33, !22}
!172 = !{!173}
!173 = !DILocalVariable(name: "callback", arg: 1, scope: !165, file: !3, line: 297, type: !168)
!174 = !DILocation(line: 297, column: 50, scope: !165)
!175 = !DILocation(line: 299, column: 32, scope: !165)
!176 = !{!115, !83, i64 20}
!177 = !DILocation(line: 300, column: 1, scope: !165)
!178 = distinct !DISubprogram(name: "att_dump_attributes", scope: !3, file: !3, line: 302, type: !179, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{null}
!181 = !{!182, !183}
!182 = !DILocalVariable(name: "it", scope: !178, file: !3, line: 304, type: !59)
!183 = !DILocalVariable(name: "uuid128", scope: !178, file: !3, line: 306, type: !184)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !47)
!185 = !DILocation(line: 304, column: 5, scope: !178)
!186 = !DILocation(line: 304, column: 20, scope: !178)
!187 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !188)
!188 = distinct !DILocation(line: 305, column: 5, scope: !178)
!189 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !188)
!190 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !188)
!191 = !DILocation(line: 306, column: 5, scope: !178)
!192 = !DILocation(line: 306, column: 13, scope: !178)
!193 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !194)
!194 = distinct !DILocation(line: 307, column: 12, scope: !195)
!195 = !DILexicalBlockFile(scope: !178, file: !3, discriminator: 1)
!196 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !194)
!197 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !194)
!198 = !DILocation(line: 307, column: 5, scope: !195)
!199 = !DILocation(line: 308, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !178, file: !3, line: 307, column: 40)
!201 = !DILocation(line: 309, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !3, line: 309, column: 13)
!203 = !DILocation(line: 309, column: 23, scope: !202)
!204 = !DILocation(line: 309, column: 13, scope: !200)
!205 = !DILocation(line: 314, column: 16, scope: !206)
!206 = distinct !DILexicalBlock(scope: !200, file: !3, line: 314, column: 13)
!207 = !DILocation(line: 314, column: 22, scope: !206)
!208 = !DILocation(line: 314, column: 13, scope: !200)
!209 = !DILocation(line: 315, column: 28, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 314, column: 46)
!211 = !DILocation(line: 315, column: 13, scope: !210)
!212 = !DILocation(line: 317, column: 9, scope: !210)
!213 = distinct !{!213, !214, !215}
!214 = !DILocation(line: 307, column: 5, scope: !178)
!215 = !DILocation(line: 322, column: 5, scope: !178)
!216 = !DILocation(line: 323, column: 1, scope: !178)
!217 = !DILocation(line: 323, column: 1, scope: !218)
!218 = !DILexicalBlockFile(scope: !178, file: !3, discriminator: 2)
!219 = distinct !DISubprogram(name: "att_iterator_fetch_next", scope: !3, file: !3, line: 122, type: !108, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !220)
!220 = !{!221}
!221 = !DILocalVariable(name: "it", arg: 1, scope: !219, file: !3, line: 122, type: !97)
!222 = !DILocation(line: 122, column: 53, scope: !219)
!223 = !DILocation(line: 124, column: 44, scope: !219)
!224 = !DILocation(line: 124, column: 18, scope: !219)
!225 = !DILocation(line: 124, column: 9, scope: !219)
!226 = !DILocation(line: 124, column: 16, scope: !219)
!227 = !{!82, !86, i64 4}
!228 = !DILocation(line: 125, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !219, file: !3, line: 125, column: 9)
!230 = !DILocation(line: 125, column: 9, scope: !219)
!231 = !DILocation(line: 126, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 125, column: 24)
!233 = !DILocation(line: 126, column: 19, scope: !232)
!234 = !DILocation(line: 132, column: 9, scope: !232)
!235 = !DILocation(line: 134, column: 44, scope: !219)
!236 = !DILocation(line: 134, column: 18, scope: !219)
!237 = !DILocation(line: 134, column: 9, scope: !219)
!238 = !DILocation(line: 134, column: 16, scope: !219)
!239 = !DILocation(line: 135, column: 44, scope: !219)
!240 = !DILocation(line: 135, column: 18, scope: !219)
!241 = !DILocation(line: 136, column: 23, scope: !219)
!242 = !DILocation(line: 136, column: 19, scope: !219)
!243 = !DILocation(line: 138, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !219, file: !3, line: 138, column: 9)
!245 = !DILocation(line: 138, column: 19, scope: !244)
!246 = !DILocation(line: 138, column: 9, scope: !219)
!247 = !DILocation(line: 146, column: 20, scope: !219)
!248 = !DILocation(line: 146, column: 17, scope: !219)
!249 = !DILocation(line: 147, column: 1, scope: !219)
!250 = !DILocation(line: 135, column: 9, scope: !219)
!251 = !DILocation(line: 135, column: 16, scope: !219)
!252 = !DILocation(line: 136, column: 9, scope: !219)
!253 = !DILocation(line: 136, column: 16, scope: !219)
!254 = !DILocation(line: 131, column: 21, scope: !232)
!255 = !DILocation(line: 147, column: 1, scope: !256)
!256 = !DILexicalBlockFile(scope: !219, file: !3, discriminator: 1)
!257 = distinct !DISubprogram(name: "att_clear_transaction_queue", scope: !3, file: !3, line: 1173, type: !258, isLocal: false, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !270)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !17, line: 41, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !17, line: 34, size: 80, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !262, file: !17, line: 35, baseType: !31, size: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !262, file: !17, line: 36, baseType: !22, size: 16, offset: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !262, file: !17, line: 37, baseType: !22, size: 16, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !262, file: !17, line: 38, baseType: !34, size: 8, offset: 48)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !262, file: !17, line: 39, baseType: !34, size: 8, offset: 56)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !262, file: !17, line: 40, baseType: !34, size: 8, offset: 64)
!270 = !{!271}
!271 = !DILocalVariable(name: "att_connection", arg: 1, scope: !257, file: !3, line: 1173, type: !260)
!272 = !DILocation(line: 1173, column: 52, scope: !257)
!273 = !DILocation(line: 1175, column: 5, scope: !257)
!274 = !DILocation(line: 1176, column: 1, scope: !257)
!275 = distinct !DISubprogram(name: "att_notify_write_callbacks", scope: !3, file: !3, line: 1131, type: !276, isLocal: true, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !260, !22}
!278 = !{!279, !280, !281, !290}
!279 = !DILocalVariable(name: "att_connection", arg: 1, scope: !275, file: !3, line: 1131, type: !260)
!280 = !DILocalVariable(name: "transaction_mode", arg: 2, scope: !275, file: !3, line: 1131, type: !22)
!281 = !DILocalVariable(name: "it", scope: !275, file: !3, line: 1134, type: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_iterator_t", file: !8, line: 102, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !8, line: 65, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 61, size: 96, elements: !285)
!285 = !{!286, !287, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !284, file: !8, line: 62, baseType: !41, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !284, file: !8, line: 63, baseType: !288, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !284, file: !8, line: 64, baseType: !288, size: 32, offset: 64)
!290 = !DILocalVariable(name: "handler", scope: !291, file: !3, line: 1137, type: !15)
!291 = distinct !DILexicalBlock(scope: !275, file: !3, line: 1136, column: 48)
!292 = !DILocation(line: 1131, column: 58, scope: !275)
!293 = !DILocation(line: 1131, column: 83, scope: !275)
!294 = !DILocation(line: 1134, column: 5, scope: !275)
!295 = !DILocation(line: 1134, column: 28, scope: !275)
!296 = !DILocation(line: 1135, column: 5, scope: !275)
!297 = !DILocation(line: 1136, column: 12, scope: !298)
!298 = !DILexicalBlockFile(scope: !275, file: !3, discriminator: 1)
!299 = !DILocation(line: 1136, column: 5, scope: !298)
!300 = !DILocation(line: 1137, column: 68, scope: !291)
!301 = !DILocation(line: 1138, column: 23, scope: !302)
!302 = distinct !DILexicalBlock(scope: !291, file: !3, line: 1138, column: 13)
!303 = !{!304, !83, i64 12}
!304 = !{!"att_service_handler", !83, i64 0, !86, i64 4, !86, i64 6, !83, i64 8, !83, i64 12}
!305 = !DILocation(line: 1138, column: 14, scope: !302)
!306 = !DILocation(line: 1138, column: 13, scope: !291)
!307 = distinct !{!307, !308, !309}
!308 = !DILocation(line: 1136, column: 5, scope: !275)
!309 = !DILocation(line: 1142, column: 5, scope: !275)
!310 = !DILocation(line: 1141, column: 52, scope: !291)
!311 = !{!312, !86, i64 0}
!312 = !{!"att_connection", !86, i64 0, !86, i64 2, !86, i64 4, !84, i64 6, !84, i64 7, !84, i64 8}
!313 = !DILocation(line: 1141, column: 9, scope: !291)
!314 = !DILocation(line: 1143, column: 18, scope: !315)
!315 = distinct !DILexicalBlock(scope: !275, file: !3, line: 1143, column: 9)
!316 = !DILocation(line: 1143, column: 10, scope: !315)
!317 = !DILocation(line: 1143, column: 9, scope: !275)
!318 = !DILocation(line: 1146, column: 48, scope: !275)
!319 = !DILocation(line: 1146, column: 5, scope: !275)
!320 = !DILocation(line: 1147, column: 1, scope: !275)
!321 = !DILocation(line: 1147, column: 1, scope: !322)
!322 = !DILexicalBlockFile(scope: !275, file: !3, discriminator: 2)
!323 = distinct !DISubprogram(name: "att_prepare_handle_value_notification", scope: !3, file: !3, line: 1258, type: !324, isLocal: false, isDefinition: true, scopeLine: 1263, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!22, !260, !22, !33, !22, !33}
!326 = !{!327, !328, !329, !330, !331}
!327 = !DILocalVariable(name: "att_connection", arg: 1, scope: !323, file: !3, line: 1258, type: !260)
!328 = !DILocalVariable(name: "handle", arg: 2, scope: !323, file: !3, line: 1259, type: !22)
!329 = !DILocalVariable(name: "value", arg: 3, scope: !323, file: !3, line: 1260, type: !33)
!330 = !DILocalVariable(name: "value_len", arg: 4, scope: !323, file: !3, line: 1261, type: !22)
!331 = !DILocalVariable(name: "response_buffer", arg: 5, scope: !323, file: !3, line: 1262, type: !33)
!332 = !DILocation(line: 1258, column: 66, scope: !323)
!333 = !DILocation(line: 1259, column: 18, scope: !323)
!334 = !DILocation(line: 1260, column: 18, scope: !323)
!335 = !DILocation(line: 1261, column: 18, scope: !323)
!336 = !DILocation(line: 1262, column: 18, scope: !323)
!337 = !DILocation(line: 1265, column: 24, scope: !323)
!338 = !{!84, !84, i64 0}
!339 = !DILocalVariable(name: "att_connection", arg: 1, scope: !340, file: !3, line: 1243, type: !260)
!340 = distinct !DISubprogram(name: "prepare_handle_value", scope: !3, file: !3, line: 1243, type: !324, isLocal: true, isDefinition: true, scopeLine: 1248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !341)
!341 = !{!339, !342, !343, !344, !345}
!342 = !DILocalVariable(name: "handle", arg: 2, scope: !340, file: !3, line: 1244, type: !22)
!343 = !DILocalVariable(name: "value", arg: 3, scope: !340, file: !3, line: 1245, type: !33)
!344 = !DILocalVariable(name: "value_len", arg: 4, scope: !340, file: !3, line: 1246, type: !22)
!345 = !DILocalVariable(name: "response_buffer", arg: 5, scope: !340, file: !3, line: 1247, type: !33)
!346 = !DILocation(line: 1243, column: 56, scope: !340, inlinedAt: !347)
!347 = distinct !DILocation(line: 1266, column: 12, scope: !323)
!348 = !DILocation(line: 1244, column: 47, scope: !340, inlinedAt: !347)
!349 = !DILocation(line: 1245, column: 47, scope: !340, inlinedAt: !347)
!350 = !DILocation(line: 1246, column: 47, scope: !340, inlinedAt: !347)
!351 = !DILocation(line: 1247, column: 47, scope: !340, inlinedAt: !347)
!352 = !DILocation(line: 1249, column: 5, scope: !340, inlinedAt: !347)
!353 = !DILocation(line: 1250, column: 9, scope: !354, inlinedAt: !347)
!354 = distinct !DILexicalBlock(scope: !340, file: !3, line: 1250, column: 9)
!355 = !DILocation(line: 1250, column: 37, scope: !354, inlinedAt: !347)
!356 = !{!312, !86, i64 2}
!357 = !DILocation(line: 1250, column: 21, scope: !354, inlinedAt: !347)
!358 = !DILocation(line: 1250, column: 41, scope: !354, inlinedAt: !347)
!359 = !DILocation(line: 1250, column: 19, scope: !354, inlinedAt: !347)
!360 = !DILocation(line: 1251, column: 21, scope: !361, inlinedAt: !347)
!361 = distinct !DILexicalBlock(scope: !354, file: !3, line: 1250, column: 46)
!362 = !DILocation(line: 1250, column: 9, scope: !340, inlinedAt: !347)
!363 = !DILocation(line: 1253, column: 13, scope: !340, inlinedAt: !347)
!364 = !DILocation(line: 1253, column: 40, scope: !340, inlinedAt: !347)
!365 = !DILocation(line: 1253, column: 5, scope: !340, inlinedAt: !347)
!366 = !DILocation(line: 1254, column: 22, scope: !340, inlinedAt: !347)
!367 = !DILocation(line: 1266, column: 5, scope: !323)
!368 = distinct !DISubprogram(name: "att_prepare_handle_value_indication", scope: !3, file: !3, line: 1270, type: !324, isLocal: false, isDefinition: true, scopeLine: 1275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DILocalVariable(name: "att_connection", arg: 1, scope: !368, file: !3, line: 1270, type: !260)
!371 = !DILocalVariable(name: "handle", arg: 2, scope: !368, file: !3, line: 1271, type: !22)
!372 = !DILocalVariable(name: "value", arg: 3, scope: !368, file: !3, line: 1272, type: !33)
!373 = !DILocalVariable(name: "value_len", arg: 4, scope: !368, file: !3, line: 1273, type: !22)
!374 = !DILocalVariable(name: "response_buffer", arg: 5, scope: !368, file: !3, line: 1274, type: !33)
!375 = !DILocation(line: 1270, column: 64, scope: !368)
!376 = !DILocation(line: 1271, column: 18, scope: !368)
!377 = !DILocation(line: 1272, column: 18, scope: !368)
!378 = !DILocation(line: 1273, column: 18, scope: !368)
!379 = !DILocation(line: 1274, column: 18, scope: !368)
!380 = !DILocation(line: 1277, column: 24, scope: !368)
!381 = !DILocation(line: 1243, column: 56, scope: !340, inlinedAt: !382)
!382 = distinct !DILocation(line: 1278, column: 12, scope: !368)
!383 = !DILocation(line: 1244, column: 47, scope: !340, inlinedAt: !382)
!384 = !DILocation(line: 1245, column: 47, scope: !340, inlinedAt: !382)
!385 = !DILocation(line: 1246, column: 47, scope: !340, inlinedAt: !382)
!386 = !DILocation(line: 1247, column: 47, scope: !340, inlinedAt: !382)
!387 = !DILocation(line: 1249, column: 5, scope: !340, inlinedAt: !382)
!388 = !DILocation(line: 1250, column: 9, scope: !354, inlinedAt: !382)
!389 = !DILocation(line: 1250, column: 37, scope: !354, inlinedAt: !382)
!390 = !DILocation(line: 1250, column: 21, scope: !354, inlinedAt: !382)
!391 = !DILocation(line: 1250, column: 41, scope: !354, inlinedAt: !382)
!392 = !DILocation(line: 1250, column: 19, scope: !354, inlinedAt: !382)
!393 = !DILocation(line: 1251, column: 21, scope: !361, inlinedAt: !382)
!394 = !DILocation(line: 1250, column: 9, scope: !340, inlinedAt: !382)
!395 = !DILocation(line: 1253, column: 13, scope: !340, inlinedAt: !382)
!396 = !DILocation(line: 1253, column: 40, scope: !340, inlinedAt: !382)
!397 = !DILocation(line: 1253, column: 5, scope: !340, inlinedAt: !382)
!398 = !DILocation(line: 1254, column: 22, scope: !340, inlinedAt: !382)
!399 = !DILocation(line: 1278, column: 5, scope: !368)
!400 = distinct !DISubprogram(name: "att_handle_request", scope: !3, file: !3, line: 1282, type: !401, isLocal: false, isDefinition: true, scopeLine: 1286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{!22, !260, !33, !22, !33}
!403 = !{!404, !405, !406, !407, !408, !409}
!404 = !DILocalVariable(name: "att_connection", arg: 1, scope: !400, file: !3, line: 1282, type: !260)
!405 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !400, file: !3, line: 1283, type: !33)
!406 = !DILocalVariable(name: "request_len", arg: 3, scope: !400, file: !3, line: 1284, type: !22)
!407 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !400, file: !3, line: 1285, type: !33)
!408 = !DILocalVariable(name: "response_len", scope: !400, file: !3, line: 1287, type: !22)
!409 = !DILocalVariable(name: "response_buffer_size", scope: !400, file: !3, line: 1288, type: !22)
!410 = !DILocation(line: 1282, column: 47, scope: !400)
!411 = !DILocation(line: 1283, column: 38, scope: !400)
!412 = !DILocation(line: 1284, column: 38, scope: !400)
!413 = !DILocation(line: 1285, column: 38, scope: !400)
!414 = !DILocation(line: 1287, column: 14, scope: !400)
!415 = !DILocation(line: 1288, column: 53, scope: !400)
!416 = !DILocation(line: 1288, column: 14, scope: !400)
!417 = !DILocation(line: 1290, column: 13, scope: !400)
!418 = !DILocation(line: 1290, column: 5, scope: !400)
!419 = !DILocalVariable(name: "request_len", arg: 3, scope: !420, file: !3, line: 407, type: !22)
!420 = distinct !DISubprogram(name: "handle_exchange_mtu_request", scope: !3, file: !3, line: 407, type: !401, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !421)
!421 = !{!422, !423, !419, !424, !425}
!422 = !DILocalVariable(name: "att_connection", arg: 1, scope: !420, file: !3, line: 407, type: !260)
!423 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !420, file: !3, line: 407, type: !33)
!424 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !420, file: !3, line: 408, type: !33)
!425 = !DILocalVariable(name: "client_rx_mtu", scope: !420, file: !3, line: 413, type: !22)
!426 = !DILocation(line: 407, column: 114, scope: !420, inlinedAt: !427)
!427 = distinct !DILocation(line: 1292, column: 24, scope: !428)
!428 = distinct !DILexicalBlock(scope: !400, file: !3, line: 1290, column: 32)
!429 = !DILocation(line: 413, column: 30, scope: !420, inlinedAt: !427)
!430 = !DILocation(line: 413, column: 14, scope: !420, inlinedAt: !427)
!431 = !DILocation(line: 416, column: 41, scope: !432, inlinedAt: !427)
!432 = distinct !DILexicalBlock(scope: !420, file: !3, line: 416, column: 9)
!433 = !{!312, !86, i64 4}
!434 = !DILocation(line: 416, column: 23, scope: !432, inlinedAt: !427)
!435 = !DILocation(line: 418, column: 5, scope: !436, inlinedAt: !427)
!436 = distinct !DILexicalBlock(scope: !432, file: !3, line: 416, column: 50)
!437 = !DILocation(line: 422, column: 24, scope: !420, inlinedAt: !427)
!438 = !DILocation(line: 423, column: 64, scope: !420, inlinedAt: !427)
!439 = !DILocation(line: 423, column: 5, scope: !420, inlinedAt: !427)
!440 = !DILocation(line: 424, column: 42, scope: !420, inlinedAt: !427)
!441 = !DILocation(line: 424, column: 70, scope: !420, inlinedAt: !427)
!442 = !DILocation(line: 424, column: 5, scope: !420, inlinedAt: !427)
!443 = !DILocation(line: 1293, column: 9, scope: !428)
!444 = !DILocalVariable(name: "request_len", arg: 3, scope: !445, file: !3, line: 428, type: !22)
!445 = distinct !DISubprogram(name: "handle_exchange_mtu_response", scope: !3, file: !3, line: 428, type: !401, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !446)
!446 = !{!447, !448, !444, !449, !450}
!447 = !DILocalVariable(name: "att_connection", arg: 1, scope: !445, file: !3, line: 428, type: !260)
!448 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !445, file: !3, line: 428, type: !33)
!449 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !445, file: !3, line: 429, type: !33)
!450 = !DILocalVariable(name: "client_rx_mtu", scope: !445, file: !3, line: 433, type: !22)
!451 = !DILocation(line: 428, column: 115, scope: !445, inlinedAt: !452)
!452 = distinct !DILocation(line: 1296, column: 24, scope: !428)
!453 = !DILocation(line: 429, column: 18, scope: !445, inlinedAt: !452)
!454 = !DILocation(line: 433, column: 30, scope: !445, inlinedAt: !452)
!455 = !DILocation(line: 433, column: 14, scope: !445, inlinedAt: !452)
!456 = !DILocation(line: 436, column: 41, scope: !457, inlinedAt: !452)
!457 = distinct !DILexicalBlock(scope: !445, file: !3, line: 436, column: 9)
!458 = !DILocation(line: 436, column: 23, scope: !457, inlinedAt: !452)
!459 = !DILocation(line: 438, column: 5, scope: !460, inlinedAt: !452)
!460 = distinct !DILexicalBlock(scope: !457, file: !3, line: 436, column: 50)
!461 = !DILocation(line: 441, column: 42, scope: !445, inlinedAt: !452)
!462 = !DILocation(line: 441, column: 5, scope: !445, inlinedAt: !452)
!463 = !DILocation(line: 1297, column: 9, scope: !428)
!464 = !DILocalVariable(name: "att_connection", arg: 1, scope: !465, file: !3, line: 522, type: !260)
!465 = distinct !DISubprogram(name: "handle_find_information_request", scope: !3, file: !3, line: 522, type: !466, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!22, !260, !33, !22, !33, !22}
!468 = !{!464, !469, !470, !471, !472}
!469 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !465, file: !3, line: 522, type: !33)
!470 = !DILocalVariable(name: "request_len", arg: 3, scope: !465, file: !3, line: 522, type: !22)
!471 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !465, file: !3, line: 523, type: !33)
!472 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !465, file: !3, line: 523, type: !22)
!473 = !DILocation(line: 522, column: 67, scope: !465, inlinedAt: !474)
!474 = distinct !DILocation(line: 1300, column: 24, scope: !428)
!475 = !DILocation(line: 522, column: 118, scope: !465, inlinedAt: !474)
!476 = !DILocation(line: 526, column: 100, scope: !465, inlinedAt: !474)
!477 = !DILocation(line: 526, column: 142, scope: !478, inlinedAt: !474)
!478 = !DILexicalBlockFile(scope: !465, file: !3, discriminator: 1)
!479 = !DILocalVariable(name: "att_connection", arg: 1, scope: !480, file: !3, line: 452, type: !260)
!480 = distinct !DISubprogram(name: "handle_find_information_request2", scope: !3, file: !3, line: 452, type: !481, isLocal: true, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!22, !260, !33, !22, !22, !22}
!483 = !{!479, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!484 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !480, file: !3, line: 452, type: !33)
!485 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !480, file: !3, line: 452, type: !22)
!486 = !DILocalVariable(name: "start_handle", arg: 4, scope: !480, file: !3, line: 453, type: !22)
!487 = !DILocalVariable(name: "end_handle", arg: 5, scope: !480, file: !3, line: 453, type: !22)
!488 = !DILocalVariable(name: "request_type", scope: !480, file: !3, line: 459, type: !34)
!489 = !DILocalVariable(name: "offset", scope: !480, file: !3, line: 465, type: !22)
!490 = !DILocalVariable(name: "uuid_len", scope: !480, file: !3, line: 466, type: !22)
!491 = !DILocalVariable(name: "it", scope: !480, file: !3, line: 468, type: !59)
!492 = !DILocalVariable(name: "this_uuid_len", scope: !493, file: !3, line: 484, type: !22)
!493 = distinct !DILexicalBlock(scope: !480, file: !3, line: 470, column: 40)
!494 = !DILocation(line: 452, column: 68, scope: !480, inlinedAt: !495)
!495 = distinct !DILocation(line: 526, column: 12, scope: !496, inlinedAt: !474)
!496 = !DILexicalBlockFile(scope: !465, file: !3, discriminator: 2)
!497 = !DILocation(line: 459, column: 13, scope: !480, inlinedAt: !495)
!498 = !DILocation(line: 461, column: 35, scope: !499, inlinedAt: !495)
!499 = distinct !DILexicalBlock(scope: !480, file: !3, line: 461, column: 9)
!500 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !509)
!501 = distinct !DISubprogram(name: "setup_error", scope: !3, file: !3, line: 347, type: !502, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!22, !33, !22, !22, !34}
!504 = !{!505, !506, !507, !508}
!505 = !DILocalVariable(name: "response_buffer", arg: 1, scope: !501, file: !3, line: 347, type: !33)
!506 = !DILocalVariable(name: "request", arg: 2, scope: !501, file: !3, line: 347, type: !22)
!507 = !DILocalVariable(name: "handle", arg: 3, scope: !501, file: !3, line: 347, type: !22)
!508 = !DILocalVariable(name: "error_code", arg: 4, scope: !501, file: !3, line: 347, type: !34)
!509 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !517)
!510 = distinct !DISubprogram(name: "setup_error_invalid_handle", scope: !3, file: !3, line: 371, type: !511, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!22, !33, !22, !22}
!513 = !{!514, !515, !516}
!514 = !DILocalVariable(name: "response_buffer", arg: 1, scope: !510, file: !3, line: 371, type: !33)
!515 = !DILocalVariable(name: "request", arg: 2, scope: !510, file: !3, line: 371, type: !22)
!516 = !DILocalVariable(name: "handle", arg: 3, scope: !510, file: !3, line: 371, type: !22)
!517 = distinct !DILocation(line: 462, column: 16, scope: !518, inlinedAt: !495)
!518 = distinct !DILexicalBlock(scope: !499, file: !3, line: 461, column: 57)
!519 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !509)
!520 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !509)
!521 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !509)
!522 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !509)
!523 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !509)
!524 = !DILocation(line: 462, column: 9, scope: !518, inlinedAt: !495)
!525 = !DILocation(line: 465, column: 14, scope: !480, inlinedAt: !495)
!526 = !DILocation(line: 466, column: 14, scope: !480, inlinedAt: !495)
!527 = !DILocation(line: 468, column: 5, scope: !480, inlinedAt: !495)
!528 = !DILocation(line: 468, column: 20, scope: !480, inlinedAt: !495)
!529 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !530)
!530 = distinct !DILocation(line: 469, column: 5, scope: !480, inlinedAt: !495)
!531 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !530)
!532 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !530)
!533 = !DILocation(line: 470, column: 5, scope: !480, inlinedAt: !495)
!534 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !535)
!535 = distinct !DILocation(line: 470, column: 12, scope: !536, inlinedAt: !495)
!536 = !DILexicalBlockFile(scope: !480, file: !3, discriminator: 1)
!537 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !535)
!538 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !535)
!539 = !DILocation(line: 470, column: 5, scope: !536, inlinedAt: !495)
!540 = !DILocation(line: 471, column: 9, scope: !493, inlinedAt: !495)
!541 = !DILocation(line: 472, column: 17, scope: !542, inlinedAt: !495)
!542 = distinct !DILexicalBlock(scope: !493, file: !3, line: 472, column: 13)
!543 = !DILocation(line: 472, column: 13, scope: !493, inlinedAt: !495)
!544 = !DILocation(line: 478, column: 23, scope: !545, inlinedAt: !495)
!545 = distinct !DILexicalBlock(scope: !493, file: !3, line: 478, column: 13)
!546 = !DILocation(line: 478, column: 13, scope: !493, inlinedAt: !495)
!547 = distinct !{!547, !548, !549}
!548 = !DILocation(line: 470, column: 5, scope: !480)
!549 = !DILocation(line: 512, column: 5, scope: !480)
!550 = !DILocation(line: 484, column: 38, scope: !493, inlinedAt: !495)
!551 = !DILocation(line: 484, column: 44, scope: !493, inlinedAt: !495)
!552 = !DILocation(line: 484, column: 34, scope: !493, inlinedAt: !495)
!553 = !DILocation(line: 484, column: 18, scope: !493, inlinedAt: !495)
!554 = !DILocation(line: 487, column: 13, scope: !555, inlinedAt: !495)
!555 = distinct !DILexicalBlock(scope: !493, file: !3, line: 487, column: 13)
!556 = !DILocation(line: 487, column: 20, scope: !555, inlinedAt: !495)
!557 = !DILocation(line: 488, column: 31, scope: !558, inlinedAt: !495)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 488, column: 17)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 487, column: 25)
!560 = !DILocation(line: 487, column: 13, scope: !493, inlinedAt: !495)
!561 = !DILocation(line: 494, column: 20, scope: !562, inlinedAt: !495)
!562 = distinct !DILexicalBlock(scope: !493, file: !3, line: 494, column: 13)
!563 = !DILocation(line: 494, column: 13, scope: !493, inlinedAt: !495)
!564 = !DILocation(line: 497, column: 39, scope: !565, inlinedAt: !495)
!565 = distinct !DILexicalBlock(scope: !562, file: !3, line: 494, column: 26)
!566 = !DILocation(line: 497, column: 13, scope: !565, inlinedAt: !495)
!567 = !DILocation(line: 497, column: 37, scope: !565, inlinedAt: !495)
!568 = !DILocation(line: 499, column: 9, scope: !565, inlinedAt: !495)
!569 = !DILocation(line: 502, column: 13, scope: !570, inlinedAt: !495)
!570 = distinct !DILexicalBlock(scope: !493, file: !3, line: 502, column: 13)
!571 = !DILocation(line: 502, column: 20, scope: !570, inlinedAt: !495)
!572 = !DILocation(line: 502, column: 26, scope: !570, inlinedAt: !495)
!573 = !DILocation(line: 502, column: 24, scope: !570, inlinedAt: !495)
!574 = !DILocation(line: 502, column: 35, scope: !570, inlinedAt: !495)
!575 = !DILocation(line: 502, column: 13, scope: !493, inlinedAt: !495)
!576 = !DILocation(line: 507, column: 9, scope: !493, inlinedAt: !495)
!577 = !DILocation(line: 510, column: 34, scope: !493, inlinedAt: !495)
!578 = !DILocation(line: 510, column: 32, scope: !493, inlinedAt: !495)
!579 = !DILocation(line: 510, column: 45, scope: !493, inlinedAt: !495)
!580 = !DILocation(line: 510, column: 9, scope: !493, inlinedAt: !495)
!581 = !DILocation(line: 511, column: 16, scope: !493, inlinedAt: !495)
!582 = !DILocation(line: 514, column: 16, scope: !583, inlinedAt: !495)
!583 = distinct !DILexicalBlock(scope: !480, file: !3, line: 514, column: 9)
!584 = !DILocation(line: 514, column: 9, scope: !480, inlinedAt: !495)
!585 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !586)
!586 = distinct !DILocation(line: 368, column: 12, scope: !587, inlinedAt: !592)
!587 = distinct !DISubprogram(name: "setup_error_atribute_not_found", scope: !3, file: !3, line: 366, type: !511, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !588)
!588 = !{!589, !590, !591}
!589 = !DILocalVariable(name: "response_buffer", arg: 1, scope: !587, file: !3, line: 366, type: !33)
!590 = !DILocalVariable(name: "request", arg: 2, scope: !587, file: !3, line: 366, type: !22)
!591 = !DILocalVariable(name: "start_handle", arg: 3, scope: !587, file: !3, line: 366, type: !22)
!592 = distinct !DILocation(line: 515, column: 16, scope: !593, inlinedAt: !495)
!593 = distinct !DILexicalBlock(scope: !583, file: !3, line: 514, column: 22)
!594 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !586)
!595 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !586)
!596 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !586)
!597 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !586)
!598 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !586)
!599 = !DILocation(line: 515, column: 9, scope: !593, inlinedAt: !495)
!600 = !DILocation(line: 518, column: 24, scope: !480, inlinedAt: !495)
!601 = !DILocation(line: 519, column: 5, scope: !480, inlinedAt: !495)
!602 = !DILocation(line: 520, column: 1, scope: !480, inlinedAt: !495)
!603 = !DILocalVariable(name: "att_connection", arg: 1, scope: !604, file: !3, line: 607, type: !260)
!604 = distinct !DISubprogram(name: "handle_find_by_type_value_request", scope: !3, file: !3, line: 607, type: !466, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !605)
!605 = !{!603, !606, !607, !608, !609, !610}
!606 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !604, file: !3, line: 607, type: !33)
!607 = !DILocalVariable(name: "request_len", arg: 3, scope: !604, file: !3, line: 607, type: !22)
!608 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !604, file: !3, line: 608, type: !33)
!609 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !604, file: !3, line: 608, type: !22)
!610 = !DILocalVariable(name: "attribute_len", scope: !604, file: !3, line: 610, type: !41)
!611 = !DILocation(line: 607, column: 69, scope: !604, inlinedAt: !612)
!612 = distinct !DILocation(line: 1303, column: 24, scope: !428)
!613 = !DILocation(line: 610, column: 37, scope: !604, inlinedAt: !612)
!614 = !DILocation(line: 611, column: 102, scope: !604, inlinedAt: !612)
!615 = !DILocation(line: 612, column: 13, scope: !604, inlinedAt: !612)
!616 = !DILocation(line: 612, column: 55, scope: !617, inlinedAt: !612)
!617 = !DILexicalBlockFile(scope: !604, file: !3, discriminator: 1)
!618 = !DILocation(line: 612, column: 113, scope: !604, inlinedAt: !612)
!619 = !DILocalVariable(name: "att_connection", arg: 1, scope: !620, file: !3, line: 541, type: !260)
!620 = distinct !DISubprogram(name: "handle_find_by_type_value_request2", scope: !3, file: !3, line: 541, type: !621, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!22, !260, !33, !22, !22, !22, !22, !22, !33}
!623 = !{!619, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!624 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !620, file: !3, line: 541, type: !33)
!625 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !620, file: !3, line: 541, type: !22)
!626 = !DILocalVariable(name: "start_handle", arg: 4, scope: !620, file: !3, line: 542, type: !22)
!627 = !DILocalVariable(name: "end_handle", arg: 5, scope: !620, file: !3, line: 542, type: !22)
!628 = !DILocalVariable(name: "attribute_type", arg: 6, scope: !620, file: !3, line: 543, type: !22)
!629 = !DILocalVariable(name: "attribute_len", arg: 7, scope: !620, file: !3, line: 543, type: !22)
!630 = !DILocalVariable(name: "attribute_value", arg: 8, scope: !620, file: !3, line: 543, type: !33)
!631 = !DILocalVariable(name: "request_type", scope: !620, file: !3, line: 550, type: !34)
!632 = !DILocalVariable(name: "offset", scope: !620, file: !3, line: 556, type: !22)
!633 = !DILocalVariable(name: "in_group", scope: !620, file: !3, line: 557, type: !22)
!634 = !DILocalVariable(name: "prev_handle", scope: !620, file: !3, line: 558, type: !22)
!635 = !DILocalVariable(name: "it", scope: !620, file: !3, line: 560, type: !59)
!636 = !DILocation(line: 541, column: 70, scope: !620, inlinedAt: !637)
!637 = distinct !DILocation(line: 611, column: 12, scope: !617, inlinedAt: !612)
!638 = !DILocation(line: 550, column: 13, scope: !620, inlinedAt: !637)
!639 = !DILocation(line: 552, column: 35, scope: !640, inlinedAt: !637)
!640 = distinct !DILexicalBlock(scope: !620, file: !3, line: 552, column: 9)
!641 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !642)
!642 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !643)
!643 = distinct !DILocation(line: 553, column: 16, scope: !644, inlinedAt: !637)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 552, column: 57)
!645 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !642)
!646 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !642)
!647 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !642)
!648 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !642)
!649 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !642)
!650 = !DILocation(line: 553, column: 9, scope: !644, inlinedAt: !637)
!651 = !DILocation(line: 556, column: 14, scope: !620, inlinedAt: !637)
!652 = !DILocation(line: 557, column: 14, scope: !620, inlinedAt: !637)
!653 = !DILocation(line: 558, column: 14, scope: !620, inlinedAt: !637)
!654 = !DILocation(line: 560, column: 5, scope: !620, inlinedAt: !637)
!655 = !DILocation(line: 560, column: 20, scope: !620, inlinedAt: !637)
!656 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !657)
!657 = distinct !DILocation(line: 561, column: 5, scope: !620, inlinedAt: !637)
!658 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !657)
!659 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !657)
!660 = !DILocation(line: 562, column: 5, scope: !620, inlinedAt: !637)
!661 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !662)
!662 = distinct !DILocation(line: 562, column: 12, scope: !663, inlinedAt: !637)
!663 = !DILexicalBlockFile(scope: !620, file: !3, discriminator: 1)
!664 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !662)
!665 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !662)
!666 = !DILocation(line: 562, column: 5, scope: !663, inlinedAt: !637)
!667 = !DILocation(line: 563, column: 9, scope: !668, inlinedAt: !637)
!668 = distinct !DILexicalBlock(scope: !620, file: !3, line: 562, column: 40)
!669 = !DILocation(line: 565, column: 16, scope: !670, inlinedAt: !637)
!670 = distinct !DILexicalBlock(scope: !668, file: !3, line: 565, column: 13)
!671 = !DILocation(line: 565, column: 13, scope: !670, inlinedAt: !637)
!672 = !DILocation(line: 565, column: 36, scope: !673, inlinedAt: !637)
!673 = !DILexicalBlockFile(scope: !670, file: !3, discriminator: 1)
!674 = !DILocation(line: 565, column: 23, scope: !670, inlinedAt: !637)
!675 = distinct !{!675, !676, !677}
!676 = !DILocation(line: 562, column: 5, scope: !620)
!677 = !DILocation(line: 597, column: 5, scope: !620)
!678 = !DILocation(line: 568, column: 23, scope: !679, inlinedAt: !637)
!679 = distinct !DILexicalBlock(scope: !668, file: !3, line: 568, column: 13)
!680 = !DILocation(line: 568, column: 13, scope: !668, inlinedAt: !637)
!681 = !DILocation(line: 573, column: 13, scope: !682, inlinedAt: !637)
!682 = distinct !DILexicalBlock(scope: !668, file: !3, line: 573, column: 13)
!683 = !DILocation(line: 573, column: 22, scope: !682, inlinedAt: !637)
!684 = !DILocation(line: 574, column: 24, scope: !682, inlinedAt: !637)
!685 = !DILocation(line: 574, column: 29, scope: !682, inlinedAt: !637)
!686 = !DILocation(line: 574, column: 32, scope: !687, inlinedAt: !637)
!687 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 1)
!688 = !DILocation(line: 574, column: 90, scope: !687, inlinedAt: !637)
!689 = !DILocation(line: 574, column: 93, scope: !690, inlinedAt: !637)
!690 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 2)
!691 = !DILocation(line: 573, column: 13, scope: !692, inlinedAt: !637)
!692 = !DILexicalBlockFile(scope: !668, file: !3, discriminator: 1)
!693 = !DILocation(line: 577, column: 13, scope: !694, inlinedAt: !637)
!694 = distinct !DILexicalBlock(scope: !682, file: !3, line: 574, column: 155)
!695 = !DILocation(line: 578, column: 20, scope: !694, inlinedAt: !637)
!696 = !DILocation(line: 582, column: 17, scope: !697, inlinedAt: !637)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 582, column: 17)
!698 = !DILocation(line: 582, column: 24, scope: !697, inlinedAt: !637)
!699 = !DILocation(line: 582, column: 28, scope: !697, inlinedAt: !637)
!700 = !DILocation(line: 582, column: 17, scope: !694, inlinedAt: !637)
!701 = !DILocation(line: 591, column: 13, scope: !702, inlinedAt: !637)
!702 = distinct !DILexicalBlock(scope: !668, file: !3, line: 591, column: 13)
!703 = !DILocation(line: 591, column: 23, scope: !702, inlinedAt: !637)
!704 = !DILocation(line: 591, column: 26, scope: !705, inlinedAt: !637)
!705 = !DILexicalBlockFile(scope: !702, file: !3, discriminator: 1)
!706 = !DILocation(line: 591, column: 96, scope: !707, inlinedAt: !637)
!707 = !DILexicalBlockFile(scope: !702, file: !3, discriminator: 2)
!708 = !DILocation(line: 591, column: 90, scope: !707, inlinedAt: !637)
!709 = !DILocation(line: 591, column: 73, scope: !705, inlinedAt: !637)
!710 = !DILocation(line: 591, column: 136, scope: !711, inlinedAt: !637)
!711 = !DILexicalBlockFile(scope: !702, file: !3, discriminator: 3)
!712 = !{!82, !83, i64 20}
!713 = !DILocation(line: 591, column: 109, scope: !711, inlinedAt: !637)
!714 = !DILocation(line: 591, column: 157, scope: !711, inlinedAt: !637)
!715 = !DILocation(line: 591, column: 13, scope: !716, inlinedAt: !637)
!716 = !DILexicalBlockFile(scope: !668, file: !3, discriminator: 3)
!717 = !DILocation(line: 593, column: 13, scope: !718, inlinedAt: !637)
!718 = distinct !DILexicalBlock(scope: !702, file: !3, line: 591, column: 163)
!719 = !DILocation(line: 594, column: 20, scope: !718, inlinedAt: !637)
!720 = !DILocation(line: 596, column: 9, scope: !718, inlinedAt: !637)
!721 = !DILocation(line: 599, column: 16, scope: !722, inlinedAt: !637)
!722 = distinct !DILexicalBlock(scope: !620, file: !3, line: 599, column: 9)
!723 = !DILocation(line: 599, column: 9, scope: !620, inlinedAt: !637)
!724 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !725)
!725 = distinct !DILocation(line: 368, column: 12, scope: !587, inlinedAt: !726)
!726 = distinct !DILocation(line: 600, column: 16, scope: !727, inlinedAt: !637)
!727 = distinct !DILexicalBlock(scope: !722, file: !3, line: 599, column: 22)
!728 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !725)
!729 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !725)
!730 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !725)
!731 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !725)
!732 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !725)
!733 = !DILocation(line: 600, column: 9, scope: !727, inlinedAt: !637)
!734 = !DILocation(line: 603, column: 24, scope: !620, inlinedAt: !637)
!735 = !DILocation(line: 604, column: 5, scope: !620, inlinedAt: !637)
!736 = !DILocation(line: 605, column: 1, scope: !620, inlinedAt: !637)
!737 = !DILocalVariable(name: "att_connection", arg: 1, scope: !738, file: !3, line: 726, type: !260)
!738 = distinct !DISubprogram(name: "handle_read_by_type_request", scope: !3, file: !3, line: 726, type: !466, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !739)
!739 = !{!737, !740, !741, !742, !743, !744}
!740 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !738, file: !3, line: 726, type: !33)
!741 = !DILocalVariable(name: "request_len", arg: 3, scope: !738, file: !3, line: 726, type: !22)
!742 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !738, file: !3, line: 727, type: !33)
!743 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !738, file: !3, line: 727, type: !22)
!744 = !DILocalVariable(name: "attribute_type_len", scope: !738, file: !3, line: 729, type: !41)
!745 = !DILocation(line: 726, column: 63, scope: !738, inlinedAt: !746)
!746 = distinct !DILocation(line: 1306, column: 24, scope: !428)
!747 = !DILocation(line: 726, column: 88, scope: !738, inlinedAt: !746)
!748 = !DILocation(line: 726, column: 114, scope: !738, inlinedAt: !746)
!749 = !DILocation(line: 727, column: 18, scope: !738, inlinedAt: !746)
!750 = !DILocation(line: 727, column: 44, scope: !738, inlinedAt: !746)
!751 = !DILocation(line: 730, column: 21, scope: !752, inlinedAt: !746)
!752 = distinct !DILexicalBlock(scope: !738, file: !3, line: 730, column: 9)
!753 = !DILocation(line: 732, column: 5, scope: !754, inlinedAt: !746)
!754 = distinct !DILexicalBlock(scope: !752, file: !3, line: 730, column: 27)
!755 = !DILocation(line: 735, column: 96, scope: !738, inlinedAt: !746)
!756 = !DILocation(line: 735, column: 138, scope: !757, inlinedAt: !746)
!757 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 1)
!758 = !DILocation(line: 735, column: 201, scope: !738, inlinedAt: !746)
!759 = !DILocalVariable(name: "att_connection", arg: 1, scope: !760, file: !3, line: 618, type: !260)
!760 = distinct !DISubprogram(name: "handle_read_by_type_request2", scope: !3, file: !3, line: 618, type: !761, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!22, !260, !33, !22, !22, !22, !22, !33}
!763 = !{!759, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !778}
!764 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !760, file: !3, line: 618, type: !33)
!765 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !760, file: !3, line: 618, type: !22)
!766 = !DILocalVariable(name: "start_handle", arg: 4, scope: !760, file: !3, line: 619, type: !22)
!767 = !DILocalVariable(name: "end_handle", arg: 5, scope: !760, file: !3, line: 619, type: !22)
!768 = !DILocalVariable(name: "attribute_type_len", arg: 6, scope: !760, file: !3, line: 620, type: !22)
!769 = !DILocalVariable(name: "attribute_type", arg: 7, scope: !760, file: !3, line: 620, type: !33)
!770 = !DILocalVariable(name: "request_type", scope: !760, file: !3, line: 625, type: !34)
!771 = !DILocalVariable(name: "offset", scope: !760, file: !3, line: 631, type: !22)
!772 = !DILocalVariable(name: "pair_len", scope: !760, file: !3, line: 632, type: !22)
!773 = !DILocalVariable(name: "it", scope: !760, file: !3, line: 634, type: !59)
!774 = !DILocalVariable(name: "error_code", scope: !760, file: !3, line: 636, type: !34)
!775 = !DILocalVariable(name: "first_matching_but_unreadable_handle", scope: !760, file: !3, line: 637, type: !22)
!776 = !DILocalVariable(name: "this_pair_len", scope: !777, file: !3, line: 676, type: !22)
!777 = distinct !DILexicalBlock(scope: !760, file: !3, line: 639, column: 40)
!778 = !DILocalVariable(name: "bytes_copied", scope: !777, file: !3, line: 702, type: !22)
!779 = !DILocation(line: 618, column: 64, scope: !760, inlinedAt: !780)
!780 = distinct !DILocation(line: 735, column: 12, scope: !781, inlinedAt: !746)
!781 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 2)
!782 = !DILocation(line: 618, column: 89, scope: !760, inlinedAt: !780)
!783 = !DILocation(line: 618, column: 115, scope: !760, inlinedAt: !780)
!784 = !DILocation(line: 619, column: 18, scope: !760, inlinedAt: !780)
!785 = !DILocation(line: 619, column: 41, scope: !760, inlinedAt: !780)
!786 = !DILocation(line: 620, column: 18, scope: !760, inlinedAt: !780)
!787 = !DILocation(line: 620, column: 47, scope: !760, inlinedAt: !780)
!788 = !DILocation(line: 625, column: 13, scope: !760, inlinedAt: !780)
!789 = !DILocation(line: 627, column: 35, scope: !790, inlinedAt: !780)
!790 = distinct !DILexicalBlock(scope: !760, file: !3, line: 627, column: 9)
!791 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !792)
!792 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !793)
!793 = distinct !DILocation(line: 628, column: 16, scope: !794, inlinedAt: !780)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 627, column: 57)
!795 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !792)
!796 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !792)
!797 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !792)
!798 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !792)
!799 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !792)
!800 = !DILocation(line: 628, column: 9, scope: !794, inlinedAt: !780)
!801 = !DILocation(line: 631, column: 14, scope: !760, inlinedAt: !780)
!802 = !DILocation(line: 632, column: 14, scope: !760, inlinedAt: !780)
!803 = !DILocation(line: 634, column: 5, scope: !760, inlinedAt: !780)
!804 = !DILocation(line: 634, column: 20, scope: !760, inlinedAt: !780)
!805 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !806)
!806 = distinct !DILocation(line: 635, column: 5, scope: !760, inlinedAt: !780)
!807 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !806)
!808 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !806)
!809 = !DILocation(line: 636, column: 13, scope: !760, inlinedAt: !780)
!810 = !DILocation(line: 637, column: 14, scope: !760, inlinedAt: !780)
!811 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !812)
!812 = distinct !DILocation(line: 639, column: 12, scope: !813, inlinedAt: !780)
!813 = !DILexicalBlockFile(scope: !760, file: !3, discriminator: 1)
!814 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !812)
!815 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !812)
!816 = !DILocation(line: 639, column: 5, scope: !813, inlinedAt: !780)
!817 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !818)
!818 = distinct !DILocation(line: 368, column: 12, scope: !587, inlinedAt: !819)
!819 = distinct !DILocation(line: 723, column: 12, scope: !760, inlinedAt: !780)
!820 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !818)
!821 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !818)
!822 = !DILocation(line: 718, column: 9, scope: !760, inlinedAt: !780)
!823 = !DILocation(line: 640, column: 9, scope: !777, inlinedAt: !780)
!824 = !DILocation(line: 642, column: 17, scope: !825, inlinedAt: !780)
!825 = distinct !DILexicalBlock(scope: !777, file: !3, line: 642, column: 13)
!826 = !DILocation(line: 642, column: 14, scope: !825, inlinedAt: !780)
!827 = !DILocation(line: 642, column: 13, scope: !777, inlinedAt: !780)
!828 = !DILocation(line: 645, column: 23, scope: !829, inlinedAt: !780)
!829 = distinct !DILexicalBlock(scope: !777, file: !3, line: 645, column: 13)
!830 = !DILocation(line: 645, column: 13, scope: !777, inlinedAt: !780)
!831 = distinct !{!831, !832, !833}
!832 = !DILocation(line: 639, column: 5, scope: !760)
!833 = !DILocation(line: 704, column: 5, scope: !760)
!834 = !DILocation(line: 648, column: 23, scope: !835, inlinedAt: !780)
!835 = distinct !DILexicalBlock(scope: !777, file: !3, line: 648, column: 13)
!836 = !DILocation(line: 648, column: 13, scope: !777, inlinedAt: !780)
!837 = !DILocation(line: 653, column: 14, scope: !838, inlinedAt: !780)
!838 = distinct !DILexicalBlock(scope: !777, file: !3, line: 653, column: 13)
!839 = !DILocation(line: 653, column: 13, scope: !777, inlinedAt: !780)
!840 = !DILocation(line: 658, column: 17, scope: !841, inlinedAt: !780)
!841 = distinct !DILexicalBlock(scope: !777, file: !3, line: 658, column: 13)
!842 = !DILocation(line: 658, column: 14, scope: !841, inlinedAt: !780)
!843 = !DILocation(line: 658, column: 23, scope: !841, inlinedAt: !780)
!844 = !DILocation(line: 658, column: 44, scope: !841, inlinedAt: !780)
!845 = !DILocation(line: 658, column: 13, scope: !777, inlinedAt: !780)
!846 = !DILocation(line: 659, column: 54, scope: !847, inlinedAt: !780)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 659, column: 17)
!848 = distinct !DILexicalBlock(scope: !841, file: !3, line: 658, column: 50)
!849 = !DILocation(line: 659, column: 17, scope: !848, inlinedAt: !780)
!850 = !DILocation(line: 666, column: 23, scope: !851, inlinedAt: !780)
!851 = distinct !DILexicalBlock(scope: !777, file: !3, line: 666, column: 13)
!852 = !DILocation(line: 666, column: 67, scope: !851, inlinedAt: !780)
!853 = !DILocation(line: 666, column: 13, scope: !777, inlinedAt: !780)
!854 = !DILocation(line: 667, column: 26, scope: !855, inlinedAt: !780)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 666, column: 73)
!856 = !DILocation(line: 668, column: 17, scope: !857, inlinedAt: !780)
!857 = distinct !DILexicalBlock(scope: !855, file: !3, line: 668, column: 17)
!858 = !DILocation(line: 668, column: 17, scope: !855, inlinedAt: !780)
!859 = !DILocation(line: 673, column: 51, scope: !777, inlinedAt: !780)
!860 = !DILocation(line: 673, column: 9, scope: !777, inlinedAt: !780)
!861 = !DILocation(line: 676, column: 41, scope: !777, inlinedAt: !780)
!862 = !{!82, !86, i64 16}
!863 = !DILocation(line: 676, column: 36, scope: !777, inlinedAt: !780)
!864 = !DILocation(line: 676, column: 18, scope: !777, inlinedAt: !780)
!865 = !DILocation(line: 677, column: 13, scope: !866, inlinedAt: !780)
!866 = distinct !DILexicalBlock(scope: !777, file: !3, line: 677, column: 13)
!867 = !DILocation(line: 677, column: 20, scope: !866, inlinedAt: !780)
!868 = !DILocation(line: 678, column: 26, scope: !869, inlinedAt: !780)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 678, column: 17)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 677, column: 25)
!871 = !DILocation(line: 677, column: 13, scope: !777, inlinedAt: !780)
!872 = !DILocation(line: 684, column: 20, scope: !873, inlinedAt: !780)
!873 = distinct !DILexicalBlock(scope: !777, file: !3, line: 684, column: 13)
!874 = !DILocation(line: 684, column: 13, scope: !777, inlinedAt: !780)
!875 = !DILocation(line: 686, column: 39, scope: !876, inlinedAt: !780)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 684, column: 26)
!877 = !DILocation(line: 686, column: 13, scope: !876, inlinedAt: !780)
!878 = !DILocation(line: 686, column: 37, scope: !876, inlinedAt: !780)
!879 = !DILocation(line: 688, column: 9, scope: !876, inlinedAt: !780)
!880 = !DILocation(line: 691, column: 13, scope: !881, inlinedAt: !780)
!881 = distinct !DILexicalBlock(scope: !777, file: !3, line: 691, column: 13)
!882 = !DILocation(line: 691, column: 22, scope: !881, inlinedAt: !780)
!883 = !DILocation(line: 691, column: 20, scope: !881, inlinedAt: !780)
!884 = !DILocation(line: 691, column: 31, scope: !881, inlinedAt: !780)
!885 = !DILocation(line: 691, column: 13, scope: !777, inlinedAt: !780)
!886 = !DILocation(line: 692, column: 24, scope: !887, inlinedAt: !780)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 692, column: 17)
!888 = distinct !DILexicalBlock(scope: !881, file: !3, line: 691, column: 55)
!889 = !DILocation(line: 692, column: 17, scope: !888, inlinedAt: !780)
!890 = !DILocation(line: 695, column: 26, scope: !888, inlinedAt: !780)
!891 = !DILocation(line: 696, column: 32, scope: !888, inlinedAt: !780)
!892 = !DILocation(line: 697, column: 9, scope: !888, inlinedAt: !780)
!893 = !DILocation(line: 702, column: 85, scope: !777, inlinedAt: !780)
!894 = !DILocation(line: 700, column: 60, scope: !777, inlinedAt: !780)
!895 = !DILocation(line: 700, column: 9, scope: !777, inlinedAt: !780)
!896 = !DILocation(line: 701, column: 16, scope: !777, inlinedAt: !780)
!897 = !DILocation(line: 702, column: 74, scope: !777, inlinedAt: !780)
!898 = !DILocation(line: 702, column: 72, scope: !777, inlinedAt: !780)
!899 = !DILocation(line: 702, column: 112, scope: !777, inlinedAt: !780)
!900 = !DILocation(line: 702, column: 33, scope: !777, inlinedAt: !780)
!901 = !DILocation(line: 703, column: 16, scope: !777, inlinedAt: !780)
!902 = !DILocation(line: 707, column: 16, scope: !903, inlinedAt: !780)
!903 = distinct !DILexicalBlock(scope: !760, file: !3, line: 707, column: 9)
!904 = !DILocation(line: 707, column: 9, scope: !760, inlinedAt: !780)
!905 = !DILocation(line: 708, column: 28, scope: !906, inlinedAt: !780)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 707, column: 21)
!907 = !DILocation(line: 709, column: 9, scope: !906, inlinedAt: !780)
!908 = !DILocation(line: 713, column: 9, scope: !909, inlinedAt: !780)
!909 = distinct !DILexicalBlock(scope: !760, file: !3, line: 713, column: 9)
!910 = !DILocation(line: 713, column: 9, scope: !760, inlinedAt: !780)
!911 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !912)
!912 = distinct !DILocation(line: 714, column: 16, scope: !913, inlinedAt: !780)
!913 = distinct !DILexicalBlock(scope: !909, file: !3, line: 713, column: 21)
!914 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !912)
!915 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !912)
!916 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !912)
!917 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !912)
!918 = !DILocation(line: 714, column: 9, scope: !913, inlinedAt: !780)
!919 = !DILocation(line: 718, column: 9, scope: !920, inlinedAt: !780)
!920 = distinct !DILexicalBlock(scope: !760, file: !3, line: 718, column: 9)
!921 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !922)
!922 = distinct !DILocation(line: 358, column: 12, scope: !923, inlinedAt: !928)
!923 = distinct !DISubprogram(name: "setup_error_read_not_permitted", scope: !3, file: !3, line: 356, type: !511, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !924)
!924 = !{!925, !926, !927}
!925 = !DILocalVariable(name: "response_buffer", arg: 1, scope: !923, file: !3, line: 356, type: !33)
!926 = !DILocalVariable(name: "request", arg: 2, scope: !923, file: !3, line: 356, type: !22)
!927 = !DILocalVariable(name: "start_handle", arg: 3, scope: !923, file: !3, line: 356, type: !22)
!928 = distinct !DILocation(line: 719, column: 16, scope: !929, inlinedAt: !780)
!929 = distinct !DILexicalBlock(scope: !920, file: !3, line: 718, column: 47)
!930 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !922)
!931 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !922)
!932 = !DILocation(line: 719, column: 9, scope: !929, inlinedAt: !780)
!933 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !818)
!934 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !818)
!935 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !818)
!936 = !DILocation(line: 723, column: 5, scope: !760, inlinedAt: !780)
!937 = !DILocation(line: 724, column: 1, scope: !760, inlinedAt: !780)
!938 = !DILocalVariable(name: "request_len", arg: 3, scope: !939, file: !3, line: 782, type: !22)
!939 = distinct !DISubprogram(name: "handle_read_request", scope: !3, file: !3, line: 782, type: !466, isLocal: true, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !940)
!940 = !{!941, !942, !938, !943, !944}
!941 = !DILocalVariable(name: "att_connection", arg: 1, scope: !939, file: !3, line: 782, type: !260)
!942 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !939, file: !3, line: 782, type: !33)
!943 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !939, file: !3, line: 783, type: !33)
!944 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !939, file: !3, line: 783, type: !22)
!945 = !DILocation(line: 782, column: 106, scope: !939, inlinedAt: !946)
!946 = distinct !DILocation(line: 1309, column: 24, scope: !428)
!947 = !DILocation(line: 786, column: 88, scope: !939, inlinedAt: !946)
!948 = !DILocalVariable(name: "att_connection", arg: 1, scope: !949, file: !3, line: 741, type: !260)
!949 = distinct !DISubprogram(name: "handle_read_request2", scope: !3, file: !3, line: 741, type: !950, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!22, !260, !33, !22, !22}
!952 = !{!948, !953, !954, !955, !956, !957, !958, !959, !962, !963}
!953 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !949, file: !3, line: 741, type: !33)
!954 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !949, file: !3, line: 741, type: !22)
!955 = !DILocalVariable(name: "handle", arg: 4, scope: !949, file: !3, line: 741, type: !22)
!956 = !DILocalVariable(name: "request_type", scope: !949, file: !3, line: 745, type: !34)
!957 = !DILocalVariable(name: "it", scope: !949, file: !3, line: 747, type: !59)
!958 = !DILocalVariable(name: "ok", scope: !949, file: !3, line: 748, type: !41)
!959 = !DILocalVariable(name: "error_code", scope: !960, file: !3, line: 760, type: !34)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 759, column: 69)
!961 = distinct !DILexicalBlock(scope: !949, file: !3, line: 759, column: 9)
!962 = !DILocalVariable(name: "offset", scope: !949, file: !3, line: 768, type: !22)
!963 = !DILocalVariable(name: "bytes_copied", scope: !949, file: !3, line: 775, type: !22)
!964 = !DILocation(line: 741, column: 56, scope: !949, inlinedAt: !965)
!965 = distinct !DILocation(line: 786, column: 12, scope: !966, inlinedAt: !946)
!966 = !DILexicalBlockFile(scope: !939, file: !3, discriminator: 1)
!967 = !DILocation(line: 741, column: 81, scope: !949, inlinedAt: !965)
!968 = !DILocation(line: 741, column: 107, scope: !949, inlinedAt: !965)
!969 = !DILocation(line: 741, column: 138, scope: !949, inlinedAt: !965)
!970 = !DILocation(line: 745, column: 13, scope: !949, inlinedAt: !965)
!971 = !DILocation(line: 747, column: 5, scope: !949, inlinedAt: !965)
!972 = !DILocation(line: 747, column: 20, scope: !949, inlinedAt: !965)
!973 = !DILocation(line: 748, column: 14, scope: !949, inlinedAt: !965)
!974 = !DILocation(line: 748, column: 9, scope: !949, inlinedAt: !965)
!975 = !DILocation(line: 749, column: 10, scope: !976, inlinedAt: !965)
!976 = distinct !DILexicalBlock(scope: !949, file: !3, line: 749, column: 9)
!977 = !DILocation(line: 749, column: 9, scope: !949, inlinedAt: !965)
!978 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !979)
!979 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !980)
!980 = distinct !DILocation(line: 750, column: 16, scope: !981, inlinedAt: !965)
!981 = distinct !DILexicalBlock(scope: !976, file: !3, line: 749, column: 14)
!982 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !979)
!983 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !979)
!984 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !979)
!985 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !979)
!986 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !979)
!987 = !DILocation(line: 750, column: 9, scope: !981, inlinedAt: !965)
!988 = !DILocation(line: 754, column: 13, scope: !989, inlinedAt: !965)
!989 = distinct !DILexicalBlock(scope: !949, file: !3, line: 754, column: 9)
!990 = !DILocation(line: 754, column: 10, scope: !989, inlinedAt: !965)
!991 = !DILocation(line: 754, column: 19, scope: !989, inlinedAt: !965)
!992 = !DILocation(line: 754, column: 40, scope: !989, inlinedAt: !965)
!993 = !DILocation(line: 754, column: 9, scope: !949, inlinedAt: !965)
!994 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !995)
!995 = distinct !DILocation(line: 358, column: 12, scope: !923, inlinedAt: !996)
!996 = distinct !DILocation(line: 755, column: 16, scope: !997, inlinedAt: !965)
!997 = distinct !DILexicalBlock(scope: !989, file: !3, line: 754, column: 46)
!998 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !995)
!999 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !995)
!1000 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !995)
!1001 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !995)
!1002 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !995)
!1003 = !DILocation(line: 755, column: 9, scope: !997, inlinedAt: !965)
!1004 = !DILocation(line: 759, column: 19, scope: !961, inlinedAt: !965)
!1005 = !DILocation(line: 759, column: 63, scope: !961, inlinedAt: !965)
!1006 = !DILocation(line: 759, column: 9, scope: !949, inlinedAt: !965)
!1007 = !DILocation(line: 760, column: 30, scope: !960, inlinedAt: !965)
!1008 = !DILocation(line: 760, column: 17, scope: !960, inlinedAt: !965)
!1009 = !DILocation(line: 761, column: 13, scope: !1010, inlinedAt: !965)
!1010 = distinct !DILexicalBlock(scope: !960, file: !3, line: 761, column: 13)
!1011 = !DILocation(line: 761, column: 13, scope: !960, inlinedAt: !965)
!1012 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 762, column: 20, scope: !1014, inlinedAt: !965)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 761, column: 25)
!1015 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1013)
!1016 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1013)
!1017 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1013)
!1018 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1013)
!1019 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1013)
!1020 = !DILocation(line: 766, column: 47, scope: !949, inlinedAt: !965)
!1021 = !DILocation(line: 766, column: 5, scope: !949, inlinedAt: !965)
!1022 = !DILocation(line: 768, column: 14, scope: !949, inlinedAt: !965)
!1023 = !DILocation(line: 770, column: 21, scope: !1024, inlinedAt: !965)
!1024 = distinct !DILexicalBlock(scope: !949, file: !3, line: 770, column: 9)
!1025 = !DILocation(line: 770, column: 18, scope: !1024, inlinedAt: !965)
!1026 = !DILocation(line: 770, column: 16, scope: !1024, inlinedAt: !965)
!1027 = !DILocation(line: 770, column: 33, scope: !1024, inlinedAt: !965)
!1028 = !DILocation(line: 770, column: 31, scope: !1024, inlinedAt: !965)
!1029 = !DILocation(line: 770, column: 9, scope: !949, inlinedAt: !965)
!1030 = !DILocation(line: 771, column: 45, scope: !1031, inlinedAt: !965)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 770, column: 55)
!1032 = !DILocation(line: 771, column: 22, scope: !1031, inlinedAt: !965)
!1033 = !DILocation(line: 772, column: 5, scope: !1031, inlinedAt: !965)
!1034 = !DILocation(line: 775, column: 81, scope: !949, inlinedAt: !965)
!1035 = !DILocation(line: 775, column: 68, scope: !949, inlinedAt: !965)
!1036 = !DILocation(line: 775, column: 108, scope: !949, inlinedAt: !965)
!1037 = !DILocation(line: 775, column: 29, scope: !949, inlinedAt: !965)
!1038 = !DILocation(line: 776, column: 12, scope: !949, inlinedAt: !965)
!1039 = !DILocation(line: 778, column: 24, scope: !949, inlinedAt: !965)
!1040 = !DILocation(line: 780, column: 1, scope: !949, inlinedAt: !965)
!1041 = !DILocation(line: 1310, column: 9, scope: !428)
!1042 = !DILocalVariable(name: "request_len", arg: 3, scope: !1043, file: !3, line: 836, type: !22)
!1043 = distinct !DISubprogram(name: "handle_read_blob_request", scope: !3, file: !3, line: 836, type: !466, isLocal: true, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1044)
!1044 = !{!1045, !1046, !1042, !1047, !1048}
!1045 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1043, file: !3, line: 836, type: !260)
!1046 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1043, file: !3, line: 836, type: !33)
!1047 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1043, file: !3, line: 837, type: !33)
!1048 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1043, file: !3, line: 837, type: !22)
!1049 = !DILocation(line: 836, column: 111, scope: !1043, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 1312, column: 24, scope: !428)
!1051 = !DILocation(line: 840, column: 93, scope: !1043, inlinedAt: !1050)
!1052 = !DILocation(line: 840, column: 135, scope: !1053, inlinedAt: !1050)
!1053 = !DILexicalBlockFile(scope: !1043, file: !3, discriminator: 1)
!1054 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1055, file: !3, line: 792, type: !260)
!1055 = distinct !DISubprogram(name: "handle_read_blob_request2", scope: !3, file: !3, line: 792, type: !481, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1056)
!1056 = !{!1054, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1067, !1068}
!1057 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !1055, file: !3, line: 792, type: !33)
!1058 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !1055, file: !3, line: 792, type: !22)
!1059 = !DILocalVariable(name: "handle", arg: 4, scope: !1055, file: !3, line: 792, type: !22)
!1060 = !DILocalVariable(name: "value_offset", arg: 5, scope: !1055, file: !3, line: 792, type: !22)
!1061 = !DILocalVariable(name: "request_type", scope: !1055, file: !3, line: 795, type: !34)
!1062 = !DILocalVariable(name: "it", scope: !1055, file: !3, line: 797, type: !59)
!1063 = !DILocalVariable(name: "ok", scope: !1055, file: !3, line: 798, type: !41)
!1064 = !DILocalVariable(name: "error_code", scope: !1065, file: !3, line: 810, type: !34)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 809, column: 69)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 809, column: 9)
!1067 = !DILocalVariable(name: "offset", scope: !1055, file: !3, line: 823, type: !22)
!1068 = !DILocalVariable(name: "bytes_copied", scope: !1055, file: !3, line: 829, type: !22)
!1069 = !DILocation(line: 792, column: 61, scope: !1055, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 840, column: 12, scope: !1071, inlinedAt: !1050)
!1071 = !DILexicalBlockFile(scope: !1043, file: !3, discriminator: 2)
!1072 = !DILocation(line: 792, column: 86, scope: !1055, inlinedAt: !1070)
!1073 = !DILocation(line: 792, column: 112, scope: !1055, inlinedAt: !1070)
!1074 = !DILocation(line: 792, column: 143, scope: !1055, inlinedAt: !1070)
!1075 = !DILocation(line: 792, column: 160, scope: !1055, inlinedAt: !1070)
!1076 = !DILocation(line: 795, column: 13, scope: !1055, inlinedAt: !1070)
!1077 = !DILocation(line: 797, column: 5, scope: !1055, inlinedAt: !1070)
!1078 = !DILocation(line: 797, column: 20, scope: !1055, inlinedAt: !1070)
!1079 = !DILocation(line: 798, column: 14, scope: !1055, inlinedAt: !1070)
!1080 = !DILocation(line: 798, column: 9, scope: !1055, inlinedAt: !1070)
!1081 = !DILocation(line: 799, column: 10, scope: !1082, inlinedAt: !1070)
!1082 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 799, column: 9)
!1083 = !DILocation(line: 799, column: 9, scope: !1055, inlinedAt: !1070)
!1084 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 800, column: 16, scope: !1087, inlinedAt: !1070)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 799, column: 14)
!1088 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1085)
!1089 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1085)
!1090 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1085)
!1091 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1085)
!1092 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1085)
!1093 = !DILocation(line: 800, column: 9, scope: !1087, inlinedAt: !1070)
!1094 = !DILocation(line: 804, column: 13, scope: !1095, inlinedAt: !1070)
!1095 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 804, column: 9)
!1096 = !DILocation(line: 804, column: 10, scope: !1095, inlinedAt: !1070)
!1097 = !DILocation(line: 804, column: 19, scope: !1095, inlinedAt: !1070)
!1098 = !DILocation(line: 804, column: 40, scope: !1095, inlinedAt: !1070)
!1099 = !DILocation(line: 804, column: 9, scope: !1055, inlinedAt: !1070)
!1100 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 358, column: 12, scope: !923, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 805, column: 16, scope: !1103, inlinedAt: !1070)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 804, column: 46)
!1104 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1101)
!1105 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1101)
!1106 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1101)
!1107 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1101)
!1108 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1101)
!1109 = !DILocation(line: 805, column: 9, scope: !1103, inlinedAt: !1070)
!1110 = !DILocation(line: 809, column: 19, scope: !1066, inlinedAt: !1070)
!1111 = !DILocation(line: 809, column: 63, scope: !1066, inlinedAt: !1070)
!1112 = !DILocation(line: 809, column: 9, scope: !1055, inlinedAt: !1070)
!1113 = !DILocation(line: 810, column: 30, scope: !1065, inlinedAt: !1070)
!1114 = !DILocation(line: 810, column: 17, scope: !1065, inlinedAt: !1070)
!1115 = !DILocation(line: 811, column: 13, scope: !1116, inlinedAt: !1070)
!1116 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 811, column: 13)
!1117 = !DILocation(line: 811, column: 13, scope: !1065, inlinedAt: !1070)
!1118 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 812, column: 20, scope: !1120, inlinedAt: !1070)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 811, column: 25)
!1121 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1119)
!1122 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1119)
!1123 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1119)
!1124 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1119)
!1125 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1119)
!1126 = !DILocation(line: 816, column: 47, scope: !1055, inlinedAt: !1070)
!1127 = !DILocation(line: 816, column: 5, scope: !1055, inlinedAt: !1070)
!1128 = !DILocation(line: 818, column: 27, scope: !1129, inlinedAt: !1070)
!1129 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 818, column: 9)
!1130 = !DILocation(line: 818, column: 22, scope: !1129, inlinedAt: !1070)
!1131 = !DILocation(line: 818, column: 9, scope: !1055, inlinedAt: !1070)
!1132 = !DILocalVariable(name: "request", arg: 2, scope: !1133, file: !3, line: 376, type: !22)
!1133 = distinct !DISubprogram(name: "setup_error_invalid_offset", scope: !3, file: !3, line: 376, type: !511, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1134)
!1134 = !{!1135, !1132, !1136}
!1135 = !DILocalVariable(name: "response_buffer", arg: 1, scope: !1133, file: !3, line: 376, type: !33)
!1136 = !DILocalVariable(name: "handle", arg: 3, scope: !1133, file: !3, line: 376, type: !22)
!1137 = !DILocation(line: 376, column: 86, scope: !1133, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 819, column: 16, scope: !1139, inlinedAt: !1070)
!1139 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 818, column: 38)
!1140 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 378, column: 12, scope: !1133, inlinedAt: !1138)
!1142 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1141)
!1143 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1141)
!1144 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1141)
!1145 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1141)
!1146 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1141)
!1147 = !DILocation(line: 819, column: 9, scope: !1139, inlinedAt: !1070)
!1148 = !DILocation(line: 818, column: 9, scope: !1129, inlinedAt: !1070)
!1149 = !DILocation(line: 818, column: 24, scope: !1129, inlinedAt: !1070)
!1150 = !DILocation(line: 823, column: 14, scope: !1055, inlinedAt: !1070)
!1151 = !DILocation(line: 824, column: 16, scope: !1152, inlinedAt: !1070)
!1152 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 824, column: 9)
!1153 = !DILocation(line: 824, column: 31, scope: !1152, inlinedAt: !1070)
!1154 = !DILocation(line: 824, column: 48, scope: !1152, inlinedAt: !1070)
!1155 = !DILocation(line: 824, column: 46, scope: !1152, inlinedAt: !1070)
!1156 = !DILocation(line: 824, column: 9, scope: !1055, inlinedAt: !1070)
!1157 = !DILocation(line: 825, column: 45, scope: !1158, inlinedAt: !1070)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 824, column: 70)
!1159 = !DILocation(line: 825, column: 49, scope: !1158, inlinedAt: !1070)
!1160 = !DILocation(line: 825, column: 22, scope: !1158, inlinedAt: !1070)
!1161 = !DILocation(line: 826, column: 5, scope: !1158, inlinedAt: !1070)
!1162 = !DILocation(line: 829, column: 92, scope: !1055, inlinedAt: !1070)
!1163 = !DILocation(line: 829, column: 79, scope: !1055, inlinedAt: !1070)
!1164 = !DILocation(line: 829, column: 102, scope: !1055, inlinedAt: !1070)
!1165 = !DILocation(line: 829, column: 134, scope: !1055, inlinedAt: !1070)
!1166 = !DILocation(line: 829, column: 29, scope: !1055, inlinedAt: !1070)
!1167 = !DILocation(line: 830, column: 12, scope: !1055, inlinedAt: !1070)
!1168 = !DILocation(line: 832, column: 24, scope: !1055, inlinedAt: !1070)
!1169 = !DILocation(line: 834, column: 1, scope: !1055, inlinedAt: !1070)
!1170 = !DILocation(line: 1313, column: 9, scope: !428)
!1171 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1172, file: !3, line: 907, type: !260)
!1172 = distinct !DISubprogram(name: "handle_read_multiple_request", scope: !3, file: !3, line: 907, type: !466, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1173)
!1173 = !{!1171, !1174, !1175, !1176, !1177, !1178}
!1174 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1172, file: !3, line: 907, type: !33)
!1175 = !DILocalVariable(name: "request_len", arg: 3, scope: !1172, file: !3, line: 907, type: !22)
!1176 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1172, file: !3, line: 908, type: !33)
!1177 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1172, file: !3, line: 908, type: !22)
!1178 = !DILocalVariable(name: "num_handles", scope: !1172, file: !3, line: 910, type: !41)
!1179 = !DILocation(line: 907, column: 64, scope: !1172, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 1315, column: 24, scope: !428)
!1181 = !DILocation(line: 907, column: 89, scope: !1172, inlinedAt: !1180)
!1182 = !DILocation(line: 907, column: 115, scope: !1172, inlinedAt: !1180)
!1183 = !DILocation(line: 908, column: 18, scope: !1172, inlinedAt: !1180)
!1184 = !DILocation(line: 908, column: 44, scope: !1172, inlinedAt: !1180)
!1185 = !DILocation(line: 910, column: 24, scope: !1172, inlinedAt: !1180)
!1186 = !DILocation(line: 910, column: 36, scope: !1172, inlinedAt: !1180)
!1187 = !DILocation(line: 910, column: 41, scope: !1172, inlinedAt: !1180)
!1188 = !DILocation(line: 911, column: 97, scope: !1172, inlinedAt: !1180)
!1189 = !DILocation(line: 911, column: 111, scope: !1172, inlinedAt: !1180)
!1190 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1191, file: !3, line: 846, type: !260)
!1191 = distinct !DISubprogram(name: "handle_read_multiple_request2", scope: !3, file: !3, line: 846, type: !1192, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!22, !260, !33, !22, !22, !33}
!1194 = !{!1190, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1209}
!1195 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !1191, file: !3, line: 846, type: !33)
!1196 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !1191, file: !3, line: 846, type: !22)
!1197 = !DILocalVariable(name: "num_handles", arg: 4, scope: !1191, file: !3, line: 846, type: !22)
!1198 = !DILocalVariable(name: "handles", arg: 5, scope: !1191, file: !3, line: 846, type: !33)
!1199 = !DILocalVariable(name: "request_type", scope: !1191, file: !3, line: 849, type: !34)
!1200 = !DILocalVariable(name: "offset", scope: !1191, file: !3, line: 856, type: !22)
!1201 = !DILocalVariable(name: "i", scope: !1191, file: !3, line: 858, type: !41)
!1202 = !DILocalVariable(name: "error_code", scope: !1191, file: !3, line: 859, type: !34)
!1203 = !DILocalVariable(name: "handle", scope: !1191, file: !3, line: 860, type: !22)
!1204 = !DILocalVariable(name: "it", scope: !1205, file: !3, line: 868, type: !59)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 861, column: 39)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 861, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 861, column: 5)
!1208 = !DILocalVariable(name: "ok", scope: !1205, file: !3, line: 870, type: !41)
!1209 = !DILocalVariable(name: "bytes_copied", scope: !1205, file: !3, line: 896, type: !22)
!1210 = !DILocation(line: 846, column: 65, scope: !1191, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 911, column: 12, scope: !1172, inlinedAt: !1180)
!1212 = !DILocation(line: 846, column: 90, scope: !1191, inlinedAt: !1211)
!1213 = !DILocation(line: 846, column: 116, scope: !1191, inlinedAt: !1211)
!1214 = !DILocation(line: 846, column: 147, scope: !1191, inlinedAt: !1211)
!1215 = !DILocation(line: 846, column: 169, scope: !1191, inlinedAt: !1211)
!1216 = !DILocation(line: 849, column: 13, scope: !1191, inlinedAt: !1211)
!1217 = !DILocation(line: 856, column: 14, scope: !1191, inlinedAt: !1211)
!1218 = !DILocation(line: 859, column: 13, scope: !1191, inlinedAt: !1211)
!1219 = !DILocation(line: 860, column: 14, scope: !1191, inlinedAt: !1211)
!1220 = !DILocation(line: 858, column: 9, scope: !1191, inlinedAt: !1211)
!1221 = !DILocation(line: 861, column: 21, scope: !1222, inlinedAt: !1211)
!1222 = !DILexicalBlockFile(scope: !1206, file: !3, discriminator: 1)
!1223 = !DILocation(line: 861, column: 19, scope: !1222, inlinedAt: !1211)
!1224 = !DILocation(line: 861, column: 5, scope: !1225, inlinedAt: !1211)
!1225 = !DILexicalBlockFile(scope: !1207, file: !3, discriminator: 1)
!1226 = !DILocation(line: 862, column: 51, scope: !1205, inlinedAt: !1211)
!1227 = !DILocation(line: 862, column: 18, scope: !1205, inlinedAt: !1211)
!1228 = !DILocation(line: 864, column: 20, scope: !1229, inlinedAt: !1211)
!1229 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 864, column: 13)
!1230 = !DILocation(line: 864, column: 13, scope: !1205, inlinedAt: !1211)
!1231 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 865, column: 20, scope: !1234, inlinedAt: !1211)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 864, column: 26)
!1235 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1232)
!1236 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1232)
!1237 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1232)
!1238 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1232)
!1239 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1232)
!1240 = !DILocation(line: 865, column: 13, scope: !1234, inlinedAt: !1211)
!1241 = !DILocation(line: 868, column: 9, scope: !1205, inlinedAt: !1211)
!1242 = !DILocation(line: 868, column: 24, scope: !1205, inlinedAt: !1211)
!1243 = !DILocation(line: 870, column: 18, scope: !1205, inlinedAt: !1211)
!1244 = !DILocation(line: 870, column: 13, scope: !1205, inlinedAt: !1211)
!1245 = !DILocation(line: 871, column: 14, scope: !1246, inlinedAt: !1211)
!1246 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 871, column: 13)
!1247 = !DILocation(line: 871, column: 13, scope: !1205, inlinedAt: !1211)
!1248 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 872, column: 20, scope: !1251, inlinedAt: !1211)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 871, column: 18)
!1252 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1249)
!1253 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1249)
!1254 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1249)
!1255 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1249)
!1256 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1249)
!1257 = !DILocation(line: 898, column: 5, scope: !1206, inlinedAt: !1211)
!1258 = !DILocation(line: 876, column: 17, scope: !1259, inlinedAt: !1211)
!1259 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 876, column: 13)
!1260 = !DILocation(line: 876, column: 14, scope: !1259, inlinedAt: !1211)
!1261 = !DILocation(line: 876, column: 23, scope: !1259, inlinedAt: !1211)
!1262 = !DILocation(line: 876, column: 44, scope: !1259, inlinedAt: !1211)
!1263 = !DILocation(line: 876, column: 13, scope: !1205, inlinedAt: !1211)
!1264 = !DILocation(line: 882, column: 23, scope: !1265, inlinedAt: !1211)
!1265 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 882, column: 13)
!1266 = !DILocation(line: 882, column: 67, scope: !1265, inlinedAt: !1211)
!1267 = !DILocation(line: 882, column: 13, scope: !1205, inlinedAt: !1211)
!1268 = !DILocation(line: 883, column: 26, scope: !1269, inlinedAt: !1211)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 882, column: 73)
!1270 = !DILocation(line: 884, column: 17, scope: !1271, inlinedAt: !1211)
!1271 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 884, column: 17)
!1272 = !DILocation(line: 884, column: 17, scope: !1269, inlinedAt: !1211)
!1273 = !DILocation(line: 888, column: 51, scope: !1205, inlinedAt: !1211)
!1274 = !DILocation(line: 888, column: 9, scope: !1205, inlinedAt: !1211)
!1275 = !DILocation(line: 891, column: 13, scope: !1276, inlinedAt: !1211)
!1276 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 891, column: 13)
!1277 = !DILocation(line: 891, column: 25, scope: !1276, inlinedAt: !1211)
!1278 = !DILocation(line: 891, column: 22, scope: !1276, inlinedAt: !1211)
!1279 = !DILocation(line: 891, column: 20, scope: !1276, inlinedAt: !1211)
!1280 = !DILocation(line: 891, column: 35, scope: !1276, inlinedAt: !1211)
!1281 = !DILocation(line: 891, column: 13, scope: !1205, inlinedAt: !1211)
!1282 = !DILocation(line: 892, column: 26, scope: !1283, inlinedAt: !1211)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 891, column: 59)
!1284 = !DILocation(line: 893, column: 9, scope: !1283, inlinedAt: !1211)
!1285 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 901, column: 16, scope: !1287, inlinedAt: !1211)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 900, column: 21)
!1288 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 900, column: 9)
!1289 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1286)
!1290 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1286)
!1291 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1286)
!1292 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1286)
!1293 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1286)
!1294 = !DILocation(line: 901, column: 9, scope: !1287, inlinedAt: !1211)
!1295 = !DILocation(line: 896, column: 85, scope: !1205, inlinedAt: !1211)
!1296 = !DILocation(line: 896, column: 72, scope: !1205, inlinedAt: !1211)
!1297 = !DILocation(line: 896, column: 112, scope: !1205, inlinedAt: !1211)
!1298 = !DILocation(line: 896, column: 33, scope: !1205, inlinedAt: !1211)
!1299 = !DILocation(line: 897, column: 16, scope: !1205, inlinedAt: !1211)
!1300 = !DILocation(line: 861, column: 35, scope: !1301, inlinedAt: !1211)
!1301 = !DILexicalBlockFile(scope: !1206, file: !3, discriminator: 2)
!1302 = distinct !{!1302, !1303, !1304}
!1303 = !DILocation(line: 861, column: 5, scope: !1207)
!1304 = !DILocation(line: 898, column: 5, scope: !1207)
!1305 = !DILocation(line: 904, column: 24, scope: !1191, inlinedAt: !1211)
!1306 = !DILocation(line: 905, column: 5, scope: !1191, inlinedAt: !1211)
!1307 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1308, file: !3, line: 1028, type: !260)
!1308 = distinct !DISubprogram(name: "handle_read_by_group_type_request", scope: !3, file: !3, line: 1028, type: !466, isLocal: true, isDefinition: true, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1309)
!1309 = !{!1307, !1310, !1311, !1312, !1313, !1314}
!1310 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1308, file: !3, line: 1028, type: !33)
!1311 = !DILocalVariable(name: "request_len", arg: 3, scope: !1308, file: !3, line: 1028, type: !22)
!1312 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1308, file: !3, line: 1029, type: !33)
!1313 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1308, file: !3, line: 1029, type: !22)
!1314 = !DILocalVariable(name: "attribute_type_len", scope: !1308, file: !3, line: 1031, type: !41)
!1315 = !DILocation(line: 1028, column: 69, scope: !1308, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 1318, column: 24, scope: !428)
!1317 = !DILocation(line: 1032, column: 21, scope: !1318, inlinedAt: !1316)
!1318 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1032, column: 9)
!1319 = !DILocation(line: 1034, column: 5, scope: !1320, inlinedAt: !1316)
!1320 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1032, column: 27)
!1321 = !DILocation(line: 1037, column: 102, scope: !1308, inlinedAt: !1316)
!1322 = !DILocation(line: 1037, column: 144, scope: !1323, inlinedAt: !1316)
!1323 = !DILexicalBlockFile(scope: !1308, file: !3, discriminator: 1)
!1324 = !DILocation(line: 1037, column: 207, scope: !1308, inlinedAt: !1316)
!1325 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1326, file: !3, line: 930, type: !260)
!1326 = distinct !DISubprogram(name: "handle_read_by_group_type_request2", scope: !3, file: !3, line: 930, type: !761, isLocal: true, isDefinition: true, scopeLine: 933, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1327)
!1327 = !{!1325, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1328 = !DILocalVariable(name: "response_buffer", arg: 2, scope: !1326, file: !3, line: 930, type: !33)
!1329 = !DILocalVariable(name: "response_buffer_size", arg: 3, scope: !1326, file: !3, line: 930, type: !22)
!1330 = !DILocalVariable(name: "start_handle", arg: 4, scope: !1326, file: !3, line: 931, type: !22)
!1331 = !DILocalVariable(name: "end_handle", arg: 5, scope: !1326, file: !3, line: 931, type: !22)
!1332 = !DILocalVariable(name: "attribute_type_len", arg: 6, scope: !1326, file: !3, line: 932, type: !22)
!1333 = !DILocalVariable(name: "attribute_type", arg: 7, scope: !1326, file: !3, line: 932, type: !33)
!1334 = !DILocalVariable(name: "request_type", scope: !1326, file: !3, line: 939, type: !34)
!1335 = !DILocalVariable(name: "uuid16", scope: !1326, file: !3, line: 946, type: !22)
!1336 = !DILocalVariable(name: "offset", scope: !1326, file: !3, line: 951, type: !22)
!1337 = !DILocalVariable(name: "pair_len", scope: !1326, file: !3, line: 952, type: !22)
!1338 = !DILocalVariable(name: "in_group", scope: !1326, file: !3, line: 953, type: !22)
!1339 = !DILocalVariable(name: "group_start_handle", scope: !1326, file: !3, line: 954, type: !22)
!1340 = !DILocalVariable(name: "group_start_value", scope: !1326, file: !3, line: 955, type: !63)
!1341 = !DILocalVariable(name: "prev_handle", scope: !1326, file: !3, line: 956, type: !22)
!1342 = !DILocalVariable(name: "it", scope: !1326, file: !3, line: 958, type: !59)
!1343 = !DILocalVariable(name: "this_pair_len", scope: !1344, file: !3, line: 999, type: !22)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 996, column: 92)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 996, column: 13)
!1346 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 960, column: 40)
!1347 = !DILocation(line: 930, column: 70, scope: !1326, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 1037, column: 12, scope: !1349, inlinedAt: !1316)
!1349 = !DILexicalBlockFile(scope: !1308, file: !3, discriminator: 2)
!1350 = !DILocation(line: 939, column: 13, scope: !1326, inlinedAt: !1348)
!1351 = !DILocation(line: 941, column: 35, scope: !1352, inlinedAt: !1348)
!1352 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 941, column: 9)
!1353 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 942, column: 16, scope: !1356, inlinedAt: !1348)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 941, column: 57)
!1357 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1354)
!1358 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1354)
!1359 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1354)
!1360 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1354)
!1361 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1354)
!1362 = !DILocation(line: 942, column: 9, scope: !1356, inlinedAt: !1348)
!1363 = !DILocalVariable(name: "uuid_len", arg: 1, scope: !1364, file: !3, line: 89, type: !22)
!1364 = distinct !DISubprogram(name: "uuid16_from_uuid", scope: !3, file: !3, line: 89, type: !1365, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!22, !22, !33}
!1367 = !{!1363, !1368}
!1368 = !DILocalVariable(name: "uuid", arg: 2, scope: !1364, file: !3, line: 89, type: !33)
!1369 = !DILocation(line: 89, column: 43, scope: !1364, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 946, column: 23, scope: !1326, inlinedAt: !1348)
!1371 = !DILocation(line: 89, column: 62, scope: !1364, inlinedAt: !1370)
!1372 = !DILocation(line: 91, column: 9, scope: !1364, inlinedAt: !1370)
!1373 = !DILocation(line: 94, column: 10, scope: !1374, inlinedAt: !1370)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 94, column: 9)
!1375 = !DILocation(line: 94, column: 9, scope: !1364, inlinedAt: !1370)
!1376 = !DILocation(line: 97, column: 12, scope: !1364, inlinedAt: !1370)
!1377 = !DILocation(line: 946, column: 14, scope: !1326, inlinedAt: !1348)
!1378 = !DILocation(line: 947, column: 45, scope: !1379, inlinedAt: !1348)
!1379 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 947, column: 9)
!1380 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 948, column: 16, scope: !1382, inlinedAt: !1348)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 947, column: 87)
!1383 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1381)
!1384 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1381)
!1385 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1381)
!1386 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1381)
!1387 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1381)
!1388 = !DILocation(line: 948, column: 9, scope: !1382, inlinedAt: !1348)
!1389 = !DILocation(line: 951, column: 14, scope: !1326, inlinedAt: !1348)
!1390 = !DILocation(line: 952, column: 14, scope: !1326, inlinedAt: !1348)
!1391 = !DILocation(line: 953, column: 14, scope: !1326, inlinedAt: !1348)
!1392 = !DILocation(line: 954, column: 14, scope: !1326, inlinedAt: !1348)
!1393 = !DILocation(line: 955, column: 20, scope: !1326, inlinedAt: !1348)
!1394 = !DILocation(line: 956, column: 14, scope: !1326, inlinedAt: !1348)
!1395 = !DILocation(line: 958, column: 5, scope: !1326, inlinedAt: !1348)
!1396 = !DILocation(line: 958, column: 20, scope: !1326, inlinedAt: !1348)
!1397 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 959, column: 5, scope: !1326, inlinedAt: !1348)
!1399 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !1398)
!1400 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !1398)
!1401 = !DILocation(line: 960, column: 5, scope: !1326, inlinedAt: !1348)
!1402 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 960, column: 12, scope: !1404, inlinedAt: !1348)
!1404 = !DILexicalBlockFile(scope: !1326, file: !3, discriminator: 1)
!1405 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !1403)
!1406 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !1403)
!1407 = !DILocation(line: 960, column: 5, scope: !1404, inlinedAt: !1348)
!1408 = !DILocation(line: 961, column: 9, scope: !1346, inlinedAt: !1348)
!1409 = !DILocation(line: 963, column: 16, scope: !1410, inlinedAt: !1348)
!1410 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 963, column: 13)
!1411 = !DILocation(line: 963, column: 13, scope: !1410, inlinedAt: !1348)
!1412 = !DILocation(line: 963, column: 36, scope: !1413, inlinedAt: !1348)
!1413 = !DILexicalBlockFile(scope: !1410, file: !3, discriminator: 1)
!1414 = !DILocation(line: 963, column: 23, scope: !1410, inlinedAt: !1348)
!1415 = distinct !{!1415, !1416, !1417}
!1416 = !DILocation(line: 960, column: 5, scope: !1326)
!1417 = !DILocation(line: 1019, column: 5, scope: !1326)
!1418 = !DILocation(line: 966, column: 23, scope: !1419, inlinedAt: !1348)
!1419 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 966, column: 13)
!1420 = !DILocation(line: 966, column: 13, scope: !1346, inlinedAt: !1348)
!1421 = !DILocation(line: 973, column: 13, scope: !1422, inlinedAt: !1348)
!1422 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 973, column: 13)
!1423 = !DILocation(line: 973, column: 22, scope: !1422, inlinedAt: !1348)
!1424 = !DILocation(line: 974, column: 24, scope: !1422, inlinedAt: !1348)
!1425 = !DILocation(line: 974, column: 29, scope: !1422, inlinedAt: !1348)
!1426 = !DILocation(line: 974, column: 32, scope: !1427, inlinedAt: !1348)
!1427 = !DILexicalBlockFile(scope: !1422, file: !3, discriminator: 1)
!1428 = !DILocation(line: 974, column: 90, scope: !1427, inlinedAt: !1348)
!1429 = !DILocation(line: 974, column: 93, scope: !1430, inlinedAt: !1348)
!1430 = !DILexicalBlockFile(scope: !1422, file: !3, discriminator: 2)
!1431 = !DILocation(line: 973, column: 13, scope: !1432, inlinedAt: !1348)
!1432 = !DILexicalBlockFile(scope: !1346, file: !3, discriminator: 1)
!1433 = !DILocation(line: 977, column: 13, scope: !1434, inlinedAt: !1348)
!1434 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 974, column: 155)
!1435 = !DILocation(line: 978, column: 20, scope: !1434, inlinedAt: !1348)
!1436 = !DILocation(line: 979, column: 13, scope: !1434, inlinedAt: !1348)
!1437 = !DILocation(line: 980, column: 20, scope: !1434, inlinedAt: !1348)
!1438 = !DILocation(line: 981, column: 38, scope: !1434, inlinedAt: !1348)
!1439 = !DILocation(line: 981, column: 36, scope: !1434, inlinedAt: !1348)
!1440 = !DILocation(line: 981, column: 13, scope: !1434, inlinedAt: !1348)
!1441 = !DILocation(line: 982, column: 20, scope: !1434, inlinedAt: !1348)
!1442 = !DILocation(line: 986, column: 17, scope: !1443, inlinedAt: !1348)
!1443 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 986, column: 17)
!1444 = !DILocation(line: 986, column: 24, scope: !1443, inlinedAt: !1348)
!1445 = !DILocation(line: 986, column: 35, scope: !1443, inlinedAt: !1348)
!1446 = !DILocation(line: 986, column: 17, scope: !1434, inlinedAt: !1348)
!1447 = !DILocation(line: 996, column: 13, scope: !1345, inlinedAt: !1348)
!1448 = !DILocation(line: 996, column: 23, scope: !1345, inlinedAt: !1348)
!1449 = !DILocation(line: 996, column: 26, scope: !1450, inlinedAt: !1348)
!1450 = !DILexicalBlockFile(scope: !1345, file: !3, discriminator: 1)
!1451 = !DILocation(line: 996, column: 13, scope: !1432, inlinedAt: !1348)
!1452 = !DILocation(line: 999, column: 45, scope: !1344, inlinedAt: !1348)
!1453 = !DILocation(line: 999, column: 40, scope: !1344, inlinedAt: !1348)
!1454 = !DILocation(line: 999, column: 22, scope: !1344, inlinedAt: !1348)
!1455 = !DILocation(line: 1000, column: 17, scope: !1456, inlinedAt: !1348)
!1456 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1000, column: 17)
!1457 = !DILocation(line: 1000, column: 24, scope: !1456, inlinedAt: !1348)
!1458 = !DILocation(line: 1001, column: 35, scope: !1459, inlinedAt: !1348)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1001, column: 21)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1000, column: 29)
!1461 = !DILocation(line: 1000, column: 17, scope: !1344, inlinedAt: !1348)
!1462 = !DILocation(line: 1009, column: 24, scope: !1463, inlinedAt: !1348)
!1463 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1009, column: 17)
!1464 = !DILocation(line: 1009, column: 17, scope: !1344, inlinedAt: !1348)
!1465 = !DILocation(line: 1011, column: 43, scope: !1466, inlinedAt: !1348)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1009, column: 30)
!1467 = !DILocation(line: 1011, column: 17, scope: !1466, inlinedAt: !1348)
!1468 = !DILocation(line: 1011, column: 41, scope: !1466, inlinedAt: !1348)
!1469 = !DILocation(line: 1013, column: 13, scope: !1466, inlinedAt: !1348)
!1470 = !DILocation(line: 1016, column: 37, scope: !1344, inlinedAt: !1348)
!1471 = !DILocation(line: 1021, column: 16, scope: !1472, inlinedAt: !1348)
!1472 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1021, column: 9)
!1473 = !DILocation(line: 1021, column: 9, scope: !1326, inlinedAt: !1348)
!1474 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 368, column: 12, scope: !587, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 1022, column: 16, scope: !1477, inlinedAt: !1348)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1021, column: 22)
!1478 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1475)
!1479 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1475)
!1480 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1475)
!1481 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1475)
!1482 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1475)
!1483 = !DILocation(line: 1022, column: 9, scope: !1477, inlinedAt: !1348)
!1484 = !DILocation(line: 1025, column: 24, scope: !1326, inlinedAt: !1348)
!1485 = !DILocation(line: 1026, column: 5, scope: !1326, inlinedAt: !1348)
!1486 = !DILocation(line: 1027, column: 1, scope: !1326, inlinedAt: !1348)
!1487 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1488, file: !3, line: 1043, type: !22)
!1488 = distinct !DISubprogram(name: "handle_write_request", scope: !3, file: !3, line: 1042, type: !466, isLocal: true, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1487, !1494, !1495, !1496, !1497, !1498, !1499}
!1490 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1488, file: !3, line: 1042, type: !260)
!1491 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1488, file: !3, line: 1042, type: !33)
!1492 = !DILocalVariable(name: "request_len", arg: 3, scope: !1488, file: !3, line: 1042, type: !22)
!1493 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1488, file: !3, line: 1043, type: !33)
!1494 = !DILocalVariable(name: "request_type", scope: !1488, file: !3, line: 1048, type: !34)
!1495 = !DILocalVariable(name: "handle", scope: !1488, file: !3, line: 1050, type: !22)
!1496 = !DILocalVariable(name: "it", scope: !1488, file: !3, line: 1051, type: !59)
!1497 = !DILocalVariable(name: "ok", scope: !1488, file: !3, line: 1052, type: !41)
!1498 = !DILocalVariable(name: "callback", scope: !1488, file: !3, line: 1056, type: !168)
!1499 = !DILocalVariable(name: "error_code", scope: !1488, file: !3, line: 1067, type: !34)
!1500 = !DILocation(line: 1043, column: 73, scope: !1488, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 1321, column: 24, scope: !428)
!1502 = !DILocation(line: 1048, column: 13, scope: !1488, inlinedAt: !1501)
!1503 = !DILocation(line: 1050, column: 23, scope: !1488, inlinedAt: !1501)
!1504 = !DILocation(line: 1050, column: 14, scope: !1488, inlinedAt: !1501)
!1505 = !DILocation(line: 1051, column: 5, scope: !1488, inlinedAt: !1501)
!1506 = !DILocation(line: 1051, column: 20, scope: !1488, inlinedAt: !1501)
!1507 = !DILocation(line: 1052, column: 14, scope: !1488, inlinedAt: !1501)
!1508 = !DILocation(line: 1052, column: 9, scope: !1488, inlinedAt: !1501)
!1509 = !DILocation(line: 1053, column: 10, scope: !1510, inlinedAt: !1501)
!1510 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1053, column: 9)
!1511 = !DILocation(line: 1053, column: 9, scope: !1488, inlinedAt: !1501)
!1512 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 1054, column: 16, scope: !1515, inlinedAt: !1501)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1053, column: 14)
!1516 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1513)
!1517 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1513)
!1518 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1513)
!1519 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1513)
!1520 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1513)
!1521 = !DILocation(line: 1054, column: 9, scope: !1515, inlinedAt: !1501)
!1522 = !DILocalVariable(name: "handle", arg: 1, scope: !1523, file: !3, line: 226, type: !22)
!1523 = distinct !DISubprogram(name: "att_write_callback_for_handle", scope: !3, file: !3, line: 226, type: !1524, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!168, !22}
!1526 = !{!1522, !1527}
!1527 = !DILocalVariable(name: "handler", scope: !1523, file: !3, line: 228, type: !15)
!1528 = !DILocation(line: 226, column: 68, scope: !1523, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 1056, column: 37, scope: !1488, inlinedAt: !1501)
!1530 = !DILocation(line: 228, column: 38, scope: !1523, inlinedAt: !1529)
!1531 = !DILocation(line: 228, column: 28, scope: !1523, inlinedAt: !1529)
!1532 = !DILocation(line: 229, column: 9, scope: !1533, inlinedAt: !1529)
!1533 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 229, column: 9)
!1534 = !DILocation(line: 230, column: 25, scope: !1535, inlinedAt: !1529)
!1535 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 229, column: 18)
!1536 = !DILocation(line: 229, column: 9, scope: !1523, inlinedAt: !1529)
!1537 = !{!83, !83, i64 0}
!1538 = !DILocation(line: 1056, column: 26, scope: !1488, inlinedAt: !1501)
!1539 = !DILocation(line: 1057, column: 10, scope: !1540, inlinedAt: !1501)
!1540 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1057, column: 9)
!1541 = !DILocation(line: 1057, column: 9, scope: !1488, inlinedAt: !1501)
!1542 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 363, column: 12, scope: !1544, inlinedAt: !1549)
!1544 = distinct !DISubprogram(name: "setup_error_write_not_permitted", scope: !3, file: !3, line: 361, type: !511, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DILocalVariable(name: "response_buffer", arg: 1, scope: !1544, file: !3, line: 361, type: !33)
!1547 = !DILocalVariable(name: "request", arg: 2, scope: !1544, file: !3, line: 361, type: !22)
!1548 = !DILocalVariable(name: "start_handle", arg: 3, scope: !1544, file: !3, line: 361, type: !22)
!1549 = distinct !DILocation(line: 1058, column: 16, scope: !1550, inlinedAt: !1501)
!1550 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 1057, column: 20)
!1551 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1543)
!1552 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1543)
!1553 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1543)
!1554 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1543)
!1555 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1543)
!1556 = !DILocation(line: 1058, column: 9, scope: !1550, inlinedAt: !1501)
!1557 = !DILocation(line: 1060, column: 13, scope: !1558, inlinedAt: !1501)
!1558 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1060, column: 9)
!1559 = !DILocation(line: 1060, column: 10, scope: !1558, inlinedAt: !1501)
!1560 = !DILocation(line: 1060, column: 19, scope: !1558, inlinedAt: !1501)
!1561 = !DILocation(line: 1060, column: 41, scope: !1558, inlinedAt: !1501)
!1562 = !DILocation(line: 1060, column: 9, scope: !1488, inlinedAt: !1501)
!1563 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 363, column: 12, scope: !1544, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 1061, column: 16, scope: !1566, inlinedAt: !1501)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1060, column: 47)
!1567 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1564)
!1568 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1564)
!1569 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1564)
!1570 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1564)
!1571 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1564)
!1572 = !DILocation(line: 1061, column: 9, scope: !1566, inlinedAt: !1501)
!1573 = !DILocation(line: 1063, column: 19, scope: !1574, inlinedAt: !1501)
!1574 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1063, column: 9)
!1575 = !DILocation(line: 1063, column: 43, scope: !1574, inlinedAt: !1501)
!1576 = !DILocation(line: 1063, column: 9, scope: !1488, inlinedAt: !1501)
!1577 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 363, column: 12, scope: !1544, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 1064, column: 16, scope: !1580, inlinedAt: !1501)
!1580 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1063, column: 49)
!1581 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1578)
!1582 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1578)
!1583 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1578)
!1584 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1578)
!1585 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1578)
!1586 = !DILocation(line: 1064, column: 9, scope: !1580, inlinedAt: !1501)
!1587 = !DILocation(line: 1067, column: 26, scope: !1488, inlinedAt: !1501)
!1588 = !DILocation(line: 1067, column: 13, scope: !1488, inlinedAt: !1501)
!1589 = !DILocation(line: 1068, column: 9, scope: !1590, inlinedAt: !1501)
!1590 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1068, column: 9)
!1591 = !DILocation(line: 1068, column: 9, scope: !1488, inlinedAt: !1501)
!1592 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 1069, column: 16, scope: !1594, inlinedAt: !1501)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1068, column: 21)
!1595 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1593)
!1596 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1593)
!1597 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1593)
!1598 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1593)
!1599 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1593)
!1600 = !DILocation(line: 1069, column: 9, scope: !1594, inlinedAt: !1501)
!1601 = !DILocation(line: 1071, column: 46, scope: !1488, inlinedAt: !1501)
!1602 = !DILocation(line: 1071, column: 111, scope: !1488, inlinedAt: !1501)
!1603 = !DILocation(line: 1071, column: 128, scope: !1488, inlinedAt: !1501)
!1604 = !DILocation(line: 1071, column: 18, scope: !1488, inlinedAt: !1501)
!1605 = !DILocation(line: 1072, column: 9, scope: !1606, inlinedAt: !1501)
!1606 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1072, column: 9)
!1607 = !DILocation(line: 1072, column: 9, scope: !1488, inlinedAt: !1501)
!1608 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 1073, column: 16, scope: !1610, inlinedAt: !1501)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 1072, column: 21)
!1611 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1609)
!1612 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1609)
!1613 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1609)
!1614 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1609)
!1615 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1609)
!1616 = !DILocation(line: 1073, column: 9, scope: !1610, inlinedAt: !1501)
!1617 = !DILocation(line: 1075, column: 24, scope: !1488, inlinedAt: !1501)
!1618 = !DILocation(line: 1076, column: 5, scope: !1488, inlinedAt: !1501)
!1619 = !DILocation(line: 1077, column: 1, scope: !1488, inlinedAt: !1501)
!1620 = !DILocation(line: 1322, column: 9, scope: !428)
!1621 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1622, file: !3, line: 1082, type: !22)
!1622 = distinct !DISubprogram(name: "handle_prepare_write_request", scope: !3, file: !3, line: 1081, type: !466, isLocal: true, isDefinition: true, scopeLine: 1083, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1621, !1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1624 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1622, file: !3, line: 1081, type: !260)
!1625 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1622, file: !3, line: 1081, type: !33)
!1626 = !DILocalVariable(name: "request_len", arg: 3, scope: !1622, file: !3, line: 1081, type: !22)
!1627 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1622, file: !3, line: 1082, type: !33)
!1628 = !DILocalVariable(name: "request_type", scope: !1622, file: !3, line: 1087, type: !34)
!1629 = !DILocalVariable(name: "handle", scope: !1622, file: !3, line: 1089, type: !22)
!1630 = !DILocalVariable(name: "offset", scope: !1622, file: !3, line: 1090, type: !22)
!1631 = !DILocalVariable(name: "callback", scope: !1622, file: !3, line: 1091, type: !168)
!1632 = !DILocalVariable(name: "it", scope: !1622, file: !3, line: 1095, type: !59)
!1633 = !DILocalVariable(name: "ok", scope: !1622, file: !3, line: 1096, type: !41)
!1634 = !DILocalVariable(name: "error_code", scope: !1622, file: !3, line: 1107, type: !34)
!1635 = !DILocation(line: 1082, column: 44, scope: !1622, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 1324, column: 24, scope: !428)
!1637 = !DILocation(line: 1087, column: 13, scope: !1622, inlinedAt: !1636)
!1638 = !DILocation(line: 1089, column: 23, scope: !1622, inlinedAt: !1636)
!1639 = !DILocation(line: 1089, column: 14, scope: !1622, inlinedAt: !1636)
!1640 = !DILocation(line: 1090, column: 23, scope: !1622, inlinedAt: !1636)
!1641 = !DILocation(line: 1090, column: 14, scope: !1622, inlinedAt: !1636)
!1642 = !DILocation(line: 226, column: 68, scope: !1523, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 1091, column: 37, scope: !1622, inlinedAt: !1636)
!1644 = !DILocation(line: 228, column: 38, scope: !1523, inlinedAt: !1643)
!1645 = !DILocation(line: 228, column: 28, scope: !1523, inlinedAt: !1643)
!1646 = !DILocation(line: 229, column: 9, scope: !1533, inlinedAt: !1643)
!1647 = !DILocation(line: 230, column: 25, scope: !1535, inlinedAt: !1643)
!1648 = !DILocation(line: 229, column: 9, scope: !1523, inlinedAt: !1643)
!1649 = !DILocation(line: 1091, column: 26, scope: !1622, inlinedAt: !1636)
!1650 = !DILocation(line: 1092, column: 10, scope: !1651, inlinedAt: !1636)
!1651 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1092, column: 9)
!1652 = !DILocation(line: 1092, column: 9, scope: !1622, inlinedAt: !1636)
!1653 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 363, column: 12, scope: !1544, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 1093, column: 16, scope: !1656, inlinedAt: !1636)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 1092, column: 20)
!1657 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1654)
!1658 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1654)
!1659 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1654)
!1660 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1654)
!1661 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1654)
!1662 = !DILocation(line: 1093, column: 9, scope: !1656, inlinedAt: !1636)
!1663 = !DILocation(line: 1095, column: 5, scope: !1622, inlinedAt: !1636)
!1664 = !DILocation(line: 1095, column: 20, scope: !1622, inlinedAt: !1636)
!1665 = !DILocation(line: 1096, column: 14, scope: !1622, inlinedAt: !1636)
!1666 = !DILocation(line: 1096, column: 9, scope: !1622, inlinedAt: !1636)
!1667 = !DILocation(line: 1097, column: 10, scope: !1668, inlinedAt: !1636)
!1668 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1097, column: 9)
!1669 = !DILocation(line: 1097, column: 9, scope: !1622, inlinedAt: !1636)
!1670 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 373, column: 12, scope: !510, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 1098, column: 16, scope: !1673, inlinedAt: !1636)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 1097, column: 14)
!1674 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1671)
!1675 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1671)
!1676 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1671)
!1677 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1671)
!1678 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1671)
!1679 = !DILocation(line: 1098, column: 9, scope: !1673, inlinedAt: !1636)
!1680 = !DILocation(line: 1100, column: 13, scope: !1681, inlinedAt: !1636)
!1681 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1100, column: 9)
!1682 = !DILocation(line: 1100, column: 10, scope: !1681, inlinedAt: !1636)
!1683 = !DILocation(line: 1100, column: 19, scope: !1681, inlinedAt: !1636)
!1684 = !DILocation(line: 1100, column: 41, scope: !1681, inlinedAt: !1636)
!1685 = !DILocation(line: 1100, column: 9, scope: !1622, inlinedAt: !1636)
!1686 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 363, column: 12, scope: !1544, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 1101, column: 16, scope: !1689, inlinedAt: !1636)
!1689 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 1100, column: 47)
!1690 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1687)
!1691 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1687)
!1692 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1687)
!1693 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1687)
!1694 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1687)
!1695 = !DILocation(line: 1101, column: 9, scope: !1689, inlinedAt: !1636)
!1696 = !DILocation(line: 1103, column: 19, scope: !1697, inlinedAt: !1636)
!1697 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1103, column: 9)
!1698 = !DILocation(line: 1103, column: 43, scope: !1697, inlinedAt: !1636)
!1699 = !DILocation(line: 1103, column: 9, scope: !1622, inlinedAt: !1636)
!1700 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 363, column: 12, scope: !1544, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 1104, column: 16, scope: !1703, inlinedAt: !1636)
!1703 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1103, column: 49)
!1704 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1701)
!1705 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1701)
!1706 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1701)
!1707 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1701)
!1708 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1701)
!1709 = !DILocation(line: 1104, column: 9, scope: !1703, inlinedAt: !1636)
!1710 = !DILocation(line: 1107, column: 26, scope: !1622, inlinedAt: !1636)
!1711 = !DILocation(line: 1107, column: 13, scope: !1622, inlinedAt: !1636)
!1712 = !DILocation(line: 1108, column: 9, scope: !1713, inlinedAt: !1636)
!1713 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1108, column: 9)
!1714 = !DILocation(line: 1108, column: 9, scope: !1622, inlinedAt: !1636)
!1715 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 1109, column: 16, scope: !1717, inlinedAt: !1636)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1108, column: 21)
!1718 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1716)
!1719 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1716)
!1720 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1716)
!1721 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1716)
!1722 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1716)
!1723 = !DILocation(line: 1109, column: 9, scope: !1717, inlinedAt: !1636)
!1724 = !DILocation(line: 1112, column: 46, scope: !1622, inlinedAt: !1636)
!1725 = !DILocation(line: 1112, column: 118, scope: !1622, inlinedAt: !1636)
!1726 = !DILocation(line: 1112, column: 123, scope: !1622, inlinedAt: !1636)
!1727 = !DILocation(line: 1112, column: 135, scope: !1622, inlinedAt: !1636)
!1728 = !DILocation(line: 1112, column: 18, scope: !1622, inlinedAt: !1636)
!1729 = !DILocation(line: 1113, column: 5, scope: !1622, inlinedAt: !1636)
!1730 = !DILocalVariable(name: "error_code", arg: 1, scope: !1731, file: !3, line: 331, type: !34)
!1731 = distinct !DISubprogram(name: "att_prepare_write_update_errors", scope: !3, file: !3, line: 331, type: !1732, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !34, !22}
!1734 = !{!1730, !1735}
!1735 = !DILocalVariable(name: "handle", arg: 2, scope: !1731, file: !3, line: 331, type: !22)
!1736 = !DILocation(line: 331, column: 53, scope: !1731, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 1119, column: 9, scope: !1738, inlinedAt: !1636)
!1738 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1113, column: 25)
!1739 = !DILocation(line: 331, column: 74, scope: !1731, inlinedAt: !1737)
!1740 = !DILocation(line: 334, column: 20, scope: !1741, inlinedAt: !1737)
!1741 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 334, column: 9)
!1742 = !DILocation(line: 334, column: 89, scope: !1743, inlinedAt: !1737)
!1743 = !DILexicalBlockFile(scope: !1741, file: !3, discriminator: 1)
!1744 = !DILocation(line: 334, column: 78, scope: !1743, inlinedAt: !1737)
!1745 = !DILocation(line: 334, column: 64, scope: !1741, inlinedAt: !1737)
!1746 = !DILocation(line: 340, column: 20, scope: !1747, inlinedAt: !1737)
!1747 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 340, column: 9)
!1748 = !DILocation(line: 340, column: 88, scope: !1749, inlinedAt: !1737)
!1749 = !DILexicalBlockFile(scope: !1747, file: !3, discriminator: 1)
!1750 = !DILocation(line: 340, column: 48, scope: !1747, inlinedAt: !1737)
!1751 = !{!115, !84, i64 24}
!1752 = !{!115, !86, i64 26}
!1753 = !DILocation(line: 345, column: 1, scope: !1731, inlinedAt: !1737)
!1754 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 1122, column: 16, scope: !1738, inlinedAt: !1636)
!1756 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1755)
!1757 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1755)
!1758 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1755)
!1759 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1755)
!1760 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1755)
!1761 = !DILocation(line: 1122, column: 9, scope: !1738, inlinedAt: !1636)
!1762 = !DILocation(line: 1126, column: 5, scope: !1622, inlinedAt: !1636)
!1763 = !DILocation(line: 1127, column: 24, scope: !1622, inlinedAt: !1636)
!1764 = !DILocation(line: 1128, column: 5, scope: !1622, inlinedAt: !1636)
!1765 = !DILocation(line: 1129, column: 1, scope: !1622, inlinedAt: !1636)
!1766 = !DILocalVariable(name: "request_len", arg: 3, scope: !1767, file: !3, line: 1180, type: !22)
!1767 = distinct !DISubprogram(name: "handle_execute_write_request", scope: !3, file: !3, line: 1180, type: !466, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1768)
!1768 = !{!1769, !1770, !1766, !1771, !1772, !1773, !1774, !1779}
!1769 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1767, file: !3, line: 1180, type: !260)
!1770 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1767, file: !3, line: 1180, type: !33)
!1771 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1767, file: !3, line: 1181, type: !33)
!1772 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1767, file: !3, line: 1181, type: !22)
!1773 = !DILocalVariable(name: "request_type", scope: !1767, file: !3, line: 1187, type: !34)
!1774 = !DILocalVariable(name: "error_code", scope: !1775, file: !3, line: 1196, type: !34)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1194, column: 51)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1194, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 1188, column: 28)
!1778 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1188, column: 9)
!1779 = !DILocalVariable(name: "handle", scope: !1775, file: !3, line: 1197, type: !22)
!1780 = !DILocation(line: 1180, column: 115, scope: !1767, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 1327, column: 24, scope: !428)
!1782 = !DILocation(line: 1181, column: 44, scope: !1767, inlinedAt: !1781)
!1783 = !DILocation(line: 1187, column: 13, scope: !1767, inlinedAt: !1781)
!1784 = !DILocation(line: 1188, column: 9, scope: !1778, inlinedAt: !1781)
!1785 = !DILocation(line: 1188, column: 9, scope: !1767, inlinedAt: !1781)
!1786 = !DILocation(line: 1190, column: 21, scope: !1787, inlinedAt: !1781)
!1787 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1190, column: 13)
!1788 = !DILocation(line: 1190, column: 50, scope: !1787, inlinedAt: !1781)
!1789 = !DILocation(line: 1190, column: 13, scope: !1777, inlinedAt: !1781)
!1790 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1791, file: !3, line: 1150, type: !260)
!1791 = distinct !DISubprogram(name: "att_validate_prepared_write", scope: !3, file: !3, line: 1150, type: !1792, isLocal: true, isDefinition: true, scopeLine: 1151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!34, !260}
!1794 = !{!1790, !1795, !1796, !1798}
!1795 = !DILocalVariable(name: "it", scope: !1791, file: !3, line: 1152, type: !282)
!1796 = !DILocalVariable(name: "handler", scope: !1797, file: !3, line: 1155, type: !15)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 1154, column: 48)
!1798 = !DILocalVariable(name: "error_code", scope: !1797, file: !3, line: 1159, type: !34)
!1799 = !DILocation(line: 1150, column: 62, scope: !1791, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 1191, column: 52, scope: !1801, inlinedAt: !1781)
!1801 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1190, column: 56)
!1802 = !DILocation(line: 1152, column: 5, scope: !1791, inlinedAt: !1800)
!1803 = !DILocation(line: 1152, column: 28, scope: !1791, inlinedAt: !1800)
!1804 = !DILocation(line: 1153, column: 5, scope: !1791, inlinedAt: !1800)
!1805 = !DILocation(line: 1154, column: 5, scope: !1791, inlinedAt: !1800)
!1806 = !DILocation(line: 1154, column: 12, scope: !1807, inlinedAt: !1800)
!1807 = !DILexicalBlockFile(scope: !1791, file: !3, discriminator: 1)
!1808 = !DILocation(line: 1154, column: 5, scope: !1807, inlinedAt: !1800)
!1809 = !DILocation(line: 1155, column: 68, scope: !1797, inlinedAt: !1800)
!1810 = !DILocation(line: 1156, column: 23, scope: !1811, inlinedAt: !1800)
!1811 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1156, column: 13)
!1812 = !DILocation(line: 1156, column: 14, scope: !1811, inlinedAt: !1800)
!1813 = !DILocation(line: 1156, column: 13, scope: !1797, inlinedAt: !1800)
!1814 = distinct !{!1814, !1815, !1816}
!1815 = !DILocation(line: 1154, column: 5, scope: !1791)
!1816 = !DILocation(line: 1163, column: 5, scope: !1791)
!1817 = !DILocation(line: 1159, column: 73, scope: !1797, inlinedAt: !1800)
!1818 = !DILocation(line: 1159, column: 30, scope: !1797, inlinedAt: !1800)
!1819 = !DILocation(line: 1159, column: 17, scope: !1797, inlinedAt: !1800)
!1820 = !DILocation(line: 1160, column: 13, scope: !1821, inlinedAt: !1800)
!1821 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1160, column: 13)
!1822 = !DILocation(line: 1168, column: 1, scope: !1791, inlinedAt: !1800)
!1823 = !DILocation(line: 1191, column: 50, scope: !1801, inlinedAt: !1781)
!1824 = !DILocation(line: 1194, column: 13, scope: !1777, inlinedAt: !1781)
!1825 = !DILocation(line: 1164, column: 18, scope: !1826, inlinedAt: !1800)
!1826 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 1164, column: 9)
!1827 = !DILocation(line: 1164, column: 10, scope: !1826, inlinedAt: !1800)
!1828 = !DILocation(line: 1164, column: 9, scope: !1791, inlinedAt: !1800)
!1829 = !DILocation(line: 1167, column: 55, scope: !1791, inlinedAt: !1800)
!1830 = !DILocation(line: 1167, column: 12, scope: !1791, inlinedAt: !1800)
!1831 = !DILocation(line: 1194, column: 13, scope: !1776, inlinedAt: !1781)
!1832 = !DILocation(line: 1173, column: 52, scope: !257, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 1195, column: 13, scope: !1775, inlinedAt: !1781)
!1834 = !DILocation(line: 1175, column: 5, scope: !257, inlinedAt: !1833)
!1835 = !DILocation(line: 1196, column: 43, scope: !1775, inlinedAt: !1781)
!1836 = !DILocation(line: 1196, column: 22, scope: !1775, inlinedAt: !1781)
!1837 = !DILocation(line: 1197, column: 43, scope: !1775, inlinedAt: !1781)
!1838 = !DILocation(line: 1197, column: 22, scope: !1775, inlinedAt: !1781)
!1839 = !DILocation(line: 327, column: 42, scope: !1840, inlinedAt: !1841)
!1840 = distinct !DISubprogram(name: "att_prepare_write_reset", scope: !3, file: !3, line: 325, type: !179, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!1841 = distinct !DILocation(line: 1198, column: 13, scope: !1775, inlinedAt: !1781)
!1842 = !DILocation(line: 328, column: 44, scope: !1840, inlinedAt: !1841)
!1843 = !DILocation(line: 349, column: 24, scope: !501, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 1199, column: 20, scope: !1775, inlinedAt: !1781)
!1845 = !DILocation(line: 350, column: 5, scope: !501, inlinedAt: !1844)
!1846 = !DILocation(line: 350, column: 24, scope: !501, inlinedAt: !1844)
!1847 = !DILocation(line: 351, column: 5, scope: !501, inlinedAt: !1844)
!1848 = !DILocation(line: 352, column: 5, scope: !501, inlinedAt: !1844)
!1849 = !DILocation(line: 352, column: 24, scope: !501, inlinedAt: !1844)
!1850 = !DILocation(line: 1201, column: 9, scope: !1777, inlinedAt: !1781)
!1851 = !DILocation(line: 1202, column: 5, scope: !1777, inlinedAt: !1781)
!1852 = !DILocation(line: 1173, column: 52, scope: !257, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 1203, column: 9, scope: !1854, inlinedAt: !1781)
!1854 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 1202, column: 12)
!1855 = !DILocation(line: 1175, column: 5, scope: !257, inlinedAt: !1853)
!1856 = !DILocation(line: 1205, column: 24, scope: !1767, inlinedAt: !1781)
!1857 = !DILocation(line: 1206, column: 5, scope: !1767, inlinedAt: !1781)
!1858 = !DILocalVariable(name: "response_buffer", arg: 4, scope: !1859, file: !3, line: 1213, type: !33)
!1859 = distinct !DISubprogram(name: "handle_write_command", scope: !3, file: !3, line: 1212, type: !1860, isLocal: true, isDefinition: true, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !260, !33, !22, !33, !22}
!1862 = !{!1863, !1864, !1865, !1858, !1866, !1867, !1868, !1869, !1870}
!1863 = !DILocalVariable(name: "att_connection", arg: 1, scope: !1859, file: !3, line: 1212, type: !260)
!1864 = !DILocalVariable(name: "request_buffer", arg: 2, scope: !1859, file: !3, line: 1212, type: !33)
!1865 = !DILocalVariable(name: "request_len", arg: 3, scope: !1859, file: !3, line: 1212, type: !22)
!1866 = !DILocalVariable(name: "response_buffer_size", arg: 5, scope: !1859, file: !3, line: 1213, type: !22)
!1867 = !DILocalVariable(name: "handle", scope: !1859, file: !3, line: 1219, type: !22)
!1868 = !DILocalVariable(name: "callback", scope: !1859, file: !3, line: 1220, type: !168)
!1869 = !DILocalVariable(name: "it", scope: !1859, file: !3, line: 1225, type: !59)
!1870 = !DILocalVariable(name: "ok", scope: !1859, file: !3, line: 1226, type: !41)
!1871 = !DILocation(line: 1213, column: 43, scope: !1859, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 1330, column: 9, scope: !428)
!1873 = !DILocation(line: 1213, column: 69, scope: !1859, inlinedAt: !1872)
!1874 = !DILocation(line: 1219, column: 23, scope: !1859, inlinedAt: !1872)
!1875 = !DILocation(line: 1219, column: 14, scope: !1859, inlinedAt: !1872)
!1876 = !DILocation(line: 226, column: 68, scope: !1523, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 1220, column: 37, scope: !1859, inlinedAt: !1872)
!1878 = !DILocation(line: 228, column: 38, scope: !1523, inlinedAt: !1877)
!1879 = !DILocation(line: 228, column: 28, scope: !1523, inlinedAt: !1877)
!1880 = !DILocation(line: 229, column: 9, scope: !1533, inlinedAt: !1877)
!1881 = !DILocation(line: 230, column: 25, scope: !1535, inlinedAt: !1877)
!1882 = !DILocation(line: 229, column: 9, scope: !1523, inlinedAt: !1877)
!1883 = !DILocation(line: 1220, column: 26, scope: !1859, inlinedAt: !1872)
!1884 = !DILocation(line: 1221, column: 10, scope: !1885, inlinedAt: !1872)
!1885 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1221, column: 9)
!1886 = !DILocation(line: 1221, column: 9, scope: !1859, inlinedAt: !1872)
!1887 = !DILocation(line: 1225, column: 5, scope: !1859, inlinedAt: !1872)
!1888 = !DILocation(line: 1225, column: 20, scope: !1859, inlinedAt: !1872)
!1889 = !DILocation(line: 1226, column: 14, scope: !1859, inlinedAt: !1872)
!1890 = !DILocation(line: 1226, column: 9, scope: !1859, inlinedAt: !1872)
!1891 = !DILocation(line: 1227, column: 10, scope: !1892, inlinedAt: !1872)
!1892 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1227, column: 9)
!1893 = !DILocation(line: 1227, column: 9, scope: !1859, inlinedAt: !1872)
!1894 = !DILocation(line: 1230, column: 13, scope: !1895, inlinedAt: !1872)
!1895 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1230, column: 9)
!1896 = !DILocation(line: 1230, column: 9, scope: !1859, inlinedAt: !1872)
!1897 = !DILocation(line: 1236, column: 9, scope: !1898, inlinedAt: !1872)
!1898 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1236, column: 9)
!1899 = !DILocation(line: 1236, column: 9, scope: !1859, inlinedAt: !1872)
!1900 = !DILocation(line: 1239, column: 33, scope: !1859, inlinedAt: !1872)
!1901 = !DILocation(line: 1239, column: 98, scope: !1859, inlinedAt: !1872)
!1902 = !DILocation(line: 1239, column: 115, scope: !1859, inlinedAt: !1872)
!1903 = !DILocation(line: 1239, column: 5, scope: !1859, inlinedAt: !1872)
!1904 = !DILocation(line: 1240, column: 1, scope: !1859, inlinedAt: !1872)
!1905 = !DILocation(line: 1342, column: 5, scope: !400)
!1906 = distinct !DISubprogram(name: "att_register_service_handler", scope: !3, file: !3, line: 1349, type: !1907, isLocal: false, isDefinition: true, scopeLine: 1350, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !15}
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "handler", arg: 1, scope: !1906, file: !3, line: 1349, type: !15)
!1911 = !DILocation(line: 1349, column: 58, scope: !1906)
!1912 = !DILocation(line: 1351, column: 49, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 1351, column: 9)
!1914 = !{!304, !86, i64 4}
!1915 = !DILocation(line: 1351, column: 9, scope: !1913)
!1916 = !DILocation(line: 1351, column: 63, scope: !1913)
!1917 = !DILocation(line: 1352, column: 49, scope: !1913)
!1918 = !{!304, !86, i64 6}
!1919 = !DILocation(line: 1352, column: 9, scope: !1913)
!1920 = !DILocation(line: 1351, column: 9, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1906, file: !3, discriminator: 1)
!1922 = !DILocation(line: 1356, column: 5, scope: !1906)
!1923 = !DILocation(line: 1357, column: 1, scope: !1906)
!1924 = !DILocation(line: 1357, column: 1, scope: !1921)
!1925 = distinct !DISubprogram(name: "att_service_handler_for_handle", scope: !3, file: !3, line: 200, type: !1926, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!15, !22}
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "handle", arg: 1, scope: !1925, file: !3, line: 200, type: !22)
!1930 = !DILocalVariable(name: "it", scope: !1925, file: !3, line: 202, type: !282)
!1931 = !DILocalVariable(name: "handler", scope: !1932, file: !3, line: 205, type: !15)
!1932 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 204, column: 48)
!1933 = !DILocation(line: 200, column: 71, scope: !1925)
!1934 = !DILocation(line: 202, column: 5, scope: !1925)
!1935 = !DILocation(line: 202, column: 28, scope: !1925)
!1936 = !DILocation(line: 203, column: 5, scope: !1925)
!1937 = !DILocation(line: 204, column: 5, scope: !1925)
!1938 = !DILocation(line: 204, column: 12, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1925, file: !3, discriminator: 1)
!1940 = !DILocation(line: 204, column: 5, scope: !1939)
!1941 = !DILocation(line: 205, column: 68, scope: !1932)
!1942 = !DILocation(line: 206, column: 22, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 206, column: 13)
!1944 = !DILocation(line: 206, column: 35, scope: !1943)
!1945 = !DILocation(line: 206, column: 13, scope: !1932)
!1946 = distinct !{!1946, !1937, !1947}
!1947 = !DILocation(line: 213, column: 5, scope: !1925)
!1948 = !DILocation(line: 205, column: 42, scope: !1932)
!1949 = !DILocation(line: 209, column: 22, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 209, column: 13)
!1951 = !DILocation(line: 209, column: 35, scope: !1950)
!1952 = !DILocation(line: 215, column: 1, scope: !1925)
!1953 = distinct !DISubprogram(name: "gatt_server_get_get_handle_range_for_service_with_uuid16", scope: !3, file: !3, line: 1360, type: !1954, isLocal: false, isDefinition: true, scopeLine: 1361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1957)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!41, !22, !1956, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1967, !1968, !1969}
!1958 = !DILocalVariable(name: "uuid16", arg: 1, scope: !1953, file: !3, line: 1360, type: !22)
!1959 = !DILocalVariable(name: "start_handle", arg: 2, scope: !1953, file: !3, line: 1360, type: !1956)
!1960 = !DILocalVariable(name: "end_handle", arg: 3, scope: !1953, file: !3, line: 1360, type: !1956)
!1961 = !DILocalVariable(name: "in_group", scope: !1953, file: !3, line: 1362, type: !22)
!1962 = !DILocalVariable(name: "prev_handle", scope: !1953, file: !3, line: 1363, type: !22)
!1963 = !DILocalVariable(name: "attribute_value", scope: !1953, file: !3, line: 1365, type: !1964)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16, elements: !1965)
!1965 = !{!1966}
!1966 = !DISubrange(count: 2)
!1967 = !DILocalVariable(name: "attribute_len", scope: !1953, file: !3, line: 1366, type: !41)
!1968 = !DILocalVariable(name: "it", scope: !1953, file: !3, line: 1369, type: !59)
!1969 = !DILocalVariable(name: "new_service_started", scope: !1970, file: !3, line: 1373, type: !41)
!1970 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 1371, column: 40)
!1971 = !DILocation(line: 1360, column: 71, scope: !1953)
!1972 = !DILocation(line: 1360, column: 89, scope: !1953)
!1973 = !DILocation(line: 1360, column: 113, scope: !1953)
!1974 = !DILocation(line: 1362, column: 14, scope: !1953)
!1975 = !DILocation(line: 1363, column: 14, scope: !1953)
!1976 = !DILocation(line: 1365, column: 5, scope: !1953)
!1977 = !DILocation(line: 1365, column: 13, scope: !1953)
!1978 = !DILocation(line: 1366, column: 9, scope: !1953)
!1979 = !DILocation(line: 1367, column: 5, scope: !1953)
!1980 = !DILocation(line: 1369, column: 5, scope: !1953)
!1981 = !DILocation(line: 1369, column: 20, scope: !1953)
!1982 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 1370, column: 5, scope: !1953)
!1984 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !1983)
!1985 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !1983)
!1986 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 1371, column: 12, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1953, file: !3, discriminator: 1)
!1989 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !1987)
!1990 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !1987)
!1991 = !DILocation(line: 1371, column: 5, scope: !1988)
!1992 = !DILocation(line: 1372, column: 9, scope: !1970)
!1993 = !DILocation(line: 1373, column: 35, scope: !1970)
!1994 = !DILocation(line: 1373, column: 93, scope: !1970)
!1995 = !DILocation(line: 1373, column: 96, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1970, file: !3, discriminator: 1)
!1997 = !DILocation(line: 1373, column: 93, scope: !1996)
!1998 = !DILocation(line: 1377, column: 24, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1376, column: 13)
!2000 = !DILocation(line: 1377, column: 29, scope: !1999)
!2001 = !DILocation(line: 1376, column: 22, scope: !1999)
!2002 = !DILocation(line: 1386, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1386, column: 13)
!2004 = !DILocation(line: 1386, column: 23, scope: !2003)
!2005 = !DILocation(line: 1386, column: 69, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2003, file: !3, discriminator: 2)
!2007 = !DILocation(line: 1386, column: 63, scope: !2006)
!2008 = !DILocation(line: 1386, column: 109, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2003, file: !3, discriminator: 3)
!2010 = !DILocation(line: 1386, column: 82, scope: !2009)
!2011 = !DILocation(line: 1386, column: 130, scope: !2009)
!2012 = !DILocation(line: 1386, column: 13, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !1970, file: !3, discriminator: 3)
!2014 = !DILocation(line: 1387, column: 27, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1386, column: 136)
!2016 = !{!86, !86, i64 0}
!2017 = !DILocation(line: 1378, column: 25, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1377, column: 54)
!2019 = !DILocation(line: 1392, column: 1, scope: !1953)
!2020 = distinct !DISubprogram(name: "att_iterator_match_uuid16", scope: !3, file: !3, line: 149, type: !95, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2021)
!2021 = !{!2022, !2023}
!2022 = !DILocalVariable(name: "it", arg: 1, scope: !2020, file: !3, line: 149, type: !97)
!2023 = !DILocalVariable(name: "uuid", arg: 2, scope: !2020, file: !3, line: 149, type: !22)
!2024 = !DILocation(line: 149, column: 54, scope: !2020)
!2025 = !DILocation(line: 149, column: 67, scope: !2020)
!2026 = !DILocation(line: 151, column: 13, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 151, column: 9)
!2028 = !DILocation(line: 151, column: 20, scope: !2027)
!2029 = !DILocation(line: 151, column: 9, scope: !2020)
!2030 = !DILocation(line: 154, column: 13, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 154, column: 9)
!2032 = !DILocation(line: 154, column: 19, scope: !2031)
!2033 = !DILocation(line: 154, column: 9, scope: !2020)
!2034 = !DILocation(line: 155, column: 14, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 155, column: 13)
!2036 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 154, column: 43)
!2037 = !DILocation(line: 155, column: 13, scope: !2036)
!2038 = !DILocation(line: 158, column: 16, scope: !2036)
!2039 = !DILocation(line: 158, column: 52, scope: !2036)
!2040 = !DILocation(line: 158, column: 9, scope: !2036)
!2041 = !DILocation(line: 160, column: 12, scope: !2020)
!2042 = !DILocation(line: 160, column: 48, scope: !2020)
!2043 = !DILocation(line: 160, column: 5, scope: !2020)
!2044 = !DILocation(line: 161, column: 1, scope: !2020)
!2045 = distinct !DISubprogram(name: "gatt_server_get_value_handle_for_characteristic_with_uuid16", scope: !3, file: !3, line: 1395, type: !2046, isLocal: false, isDefinition: true, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!22, !22, !22, !22}
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DILocalVariable(name: "start_handle", arg: 1, scope: !2045, file: !3, line: 1395, type: !22)
!2050 = !DILocalVariable(name: "end_handle", arg: 2, scope: !2045, file: !3, line: 1395, type: !22)
!2051 = !DILocalVariable(name: "uuid16", arg: 3, scope: !2045, file: !3, line: 1395, type: !22)
!2052 = !DILocalVariable(name: "it", scope: !2045, file: !3, line: 1397, type: !59)
!2053 = !DILocation(line: 1395, column: 79, scope: !2045)
!2054 = !DILocation(line: 1395, column: 102, scope: !2045)
!2055 = !DILocation(line: 1395, column: 123, scope: !2045)
!2056 = !DILocation(line: 1397, column: 5, scope: !2045)
!2057 = !DILocation(line: 1397, column: 20, scope: !2045)
!2058 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 1398, column: 5, scope: !2045)
!2060 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !2059)
!2061 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !2059)
!2062 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 1399, column: 12, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2045, file: !3, discriminator: 1)
!2065 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !2063)
!2066 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !2063)
!2067 = !DILocation(line: 1399, column: 5, scope: !2064)
!2068 = !DILocation(line: 1400, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1399, column: 40)
!2070 = !DILocation(line: 1401, column: 16, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 1401, column: 13)
!2072 = !DILocation(line: 1401, column: 13, scope: !2071)
!2073 = !DILocation(line: 1401, column: 36, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2071, file: !3, discriminator: 1)
!2075 = !DILocation(line: 1401, column: 23, scope: !2071)
!2076 = !DILocation(line: 1404, column: 13, scope: !2069)
!2077 = !DILocation(line: 1410, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 1410, column: 13)
!2079 = !DILocation(line: 1410, column: 13, scope: !2069)
!2080 = distinct !{!2080, !2081, !2082}
!2081 = !DILocation(line: 1399, column: 5, scope: !2045)
!2082 = !DILocation(line: 1413, column: 5, scope: !2045)
!2083 = !DILocation(line: 1415, column: 1, scope: !2045)
!2084 = distinct !DISubprogram(name: "gatt_server_get_client_configuration_handle_for_characteristic_with_uuid16", scope: !3, file: !3, line: 1418, type: !2046, isLocal: false, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090}
!2086 = !DILocalVariable(name: "start_handle", arg: 1, scope: !2084, file: !3, line: 1418, type: !22)
!2087 = !DILocalVariable(name: "end_handle", arg: 2, scope: !2084, file: !3, line: 1418, type: !22)
!2088 = !DILocalVariable(name: "uuid16", arg: 3, scope: !2084, file: !3, line: 1418, type: !22)
!2089 = !DILocalVariable(name: "it", scope: !2084, file: !3, line: 1420, type: !59)
!2090 = !DILocalVariable(name: "characteristic_found", scope: !2084, file: !3, line: 1422, type: !41)
!2091 = !DILocation(line: 1418, column: 94, scope: !2084)
!2092 = !DILocation(line: 1418, column: 117, scope: !2084)
!2093 = !DILocation(line: 1418, column: 138, scope: !2084)
!2094 = !DILocation(line: 1420, column: 5, scope: !2084)
!2095 = !DILocation(line: 1420, column: 20, scope: !2084)
!2096 = !DILocation(line: 112, column: 47, scope: !107, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 1421, column: 5, scope: !2084)
!2098 = !DILocation(line: 114, column: 27, scope: !107, inlinedAt: !2097)
!2099 = !DILocation(line: 114, column: 17, scope: !107, inlinedAt: !2097)
!2100 = !DILocation(line: 1422, column: 9, scope: !2084)
!2101 = !DILocation(line: 117, column: 50, scope: !121, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 1423, column: 12, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2084, file: !3, discriminator: 1)
!2104 = !DILocation(line: 119, column: 16, scope: !121, inlinedAt: !2102)
!2105 = !DILocation(line: 119, column: 24, scope: !121, inlinedAt: !2102)
!2106 = !DILocation(line: 1423, column: 5, scope: !2103)
!2107 = !DILocation(line: 1424, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 1423, column: 40)
!2109 = !DILocation(line: 1425, column: 16, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 1425, column: 13)
!2111 = !DILocation(line: 1425, column: 13, scope: !2110)
!2112 = !DILocation(line: 1425, column: 36, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2110, file: !3, discriminator: 1)
!2114 = !DILocation(line: 1425, column: 23, scope: !2110)
!2115 = !DILocation(line: 1428, column: 13, scope: !2108)
!2116 = !DILocation(line: 1434, column: 13, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 1434, column: 13)
!2118 = !DILocation(line: 1434, column: 13, scope: !2108)
!2119 = distinct !{!2119, !2120, !2121}
!2120 = !DILocation(line: 1423, column: 5, scope: !2084)
!2121 = !DILocation(line: 1449, column: 5, scope: !2084)
!2122 = !DILocation(line: 1438, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 1438, column: 13)
!2124 = !DILocation(line: 1439, column: 13, scope: !2123)
!2125 = !DILocation(line: 1439, column: 16, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2123, file: !3, discriminator: 1)
!2127 = !DILocation(line: 1440, column: 13, scope: !2123)
!2128 = !DILocation(line: 1440, column: 16, scope: !2126)
!2129 = !DILocation(line: 1438, column: 13, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2108, file: !3, discriminator: 1)
!2131 = !DILocation(line: 1441, column: 17, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 1441, column: 17)
!2133 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 1440, column: 75)
!2134 = !DILocation(line: 1441, column: 17, scope: !2133)
!2135 = !DILocation(line: 1446, column: 13, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 1446, column: 13)
!2137 = !DILocation(line: 1446, column: 13, scope: !2108)
!2138 = !DILocation(line: 1451, column: 1, scope: !2084)
!2139 = distinct !DISubprogram(name: "att_read_callback_handle_blob", scope: !3, file: !3, line: 1454, type: !2140, isLocal: false, isDefinition: true, scopeLine: 1455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!22, !63, !22, !22, !33, !22}
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148}
!2143 = !DILocalVariable(name: "blob", arg: 1, scope: !2139, file: !3, line: 1454, type: !63)
!2144 = !DILocalVariable(name: "blob_size", arg: 2, scope: !2139, file: !3, line: 1454, type: !22)
!2145 = !DILocalVariable(name: "offset", arg: 3, scope: !2139, file: !3, line: 1454, type: !22)
!2146 = !DILocalVariable(name: "buffer", arg: 4, scope: !2139, file: !3, line: 1454, type: !33)
!2147 = !DILocalVariable(name: "buffer_size", arg: 5, scope: !2139, file: !3, line: 1454, type: !22)
!2148 = !DILocalVariable(name: "bytes_to_copy", scope: !2149, file: !3, line: 1457, type: !22)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1456, column: 17)
!2150 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 1456, column: 9)
!2151 = !DILocation(line: 1454, column: 55, scope: !2139)
!2152 = !DILocation(line: 1454, column: 70, scope: !2139)
!2153 = !DILocation(line: 1454, column: 90, scope: !2139)
!2154 = !DILocation(line: 1454, column: 107, scope: !2139)
!2155 = !DILocation(line: 1454, column: 124, scope: !2139)
!2156 = !DILocation(line: 1456, column: 9, scope: !2150)
!2157 = !DILocation(line: 1456, column: 9, scope: !2139)
!2158 = !DILocation(line: 1457, column: 46, scope: !2149)
!2159 = !DILocation(line: 1457, column: 58, scope: !2149)
!2160 = !DILocation(line: 1457, column: 56, scope: !2149)
!2161 = !DILocation(line: 1457, column: 66, scope: !2149)
!2162 = !DILocation(line: 1457, column: 34, scope: !2149)
!2163 = !DILocation(line: 1457, column: 18, scope: !2149)
!2164 = !DILocation(line: 1458, column: 25, scope: !2149)
!2165 = !DILocation(line: 1458, column: 39, scope: !2149)
!2166 = !DILocation(line: 1458, column: 9, scope: !2149)
!2167 = !DILocation(line: 1463, column: 1, scope: !2139)
!2168 = distinct !DISubprogram(name: "att_read_callback_handle_little_endian_32", scope: !3, file: !3, line: 1465, type: !2169, isLocal: false, isDefinition: true, scopeLine: 1466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2173)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!22, !2171, !22, !33, !22}
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 48, baseType: !2172)
!2172 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!2173 = !{!2174, !2175, !2176, !2177, !2178}
!2174 = !DILocalVariable(name: "value", arg: 1, scope: !2168, file: !3, line: 1465, type: !2171)
!2175 = !DILocalVariable(name: "offset", arg: 2, scope: !2168, file: !3, line: 1465, type: !22)
!2176 = !DILocalVariable(name: "buffer", arg: 3, scope: !2168, file: !3, line: 1465, type: !33)
!2177 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !2168, file: !3, line: 1465, type: !22)
!2178 = !DILocalVariable(name: "value_buffer", scope: !2168, file: !3, line: 1467, type: !2179)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !2180)
!2180 = !{!2181}
!2181 = !DISubrange(count: 4)
!2182 = !DILocation(line: 1465, column: 61, scope: !2168)
!2183 = !DILocation(line: 1465, column: 77, scope: !2168)
!2184 = !DILocation(line: 1465, column: 94, scope: !2168)
!2185 = !DILocation(line: 1465, column: 111, scope: !2168)
!2186 = !DILocation(line: 1467, column: 5, scope: !2168)
!2187 = !DILocation(line: 1467, column: 13, scope: !2168)
!2188 = !DILocation(line: 1468, column: 5, scope: !2168)
!2189 = !DILocation(line: 1469, column: 12, scope: !2168)
!2190 = !DILocation(line: 1470, column: 1, scope: !2168)
!2191 = !DILocation(line: 1469, column: 5, scope: !2168)
!2192 = distinct !DISubprogram(name: "att_read_callback_handle_little_endian_16", scope: !3, file: !3, line: 1472, type: !2193, isLocal: false, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!22, !22, !22, !33, !22}
!2195 = !{!2196, !2197, !2198, !2199, !2200}
!2196 = !DILocalVariable(name: "value", arg: 1, scope: !2192, file: !3, line: 1472, type: !22)
!2197 = !DILocalVariable(name: "offset", arg: 2, scope: !2192, file: !3, line: 1472, type: !22)
!2198 = !DILocalVariable(name: "buffer", arg: 3, scope: !2192, file: !3, line: 1472, type: !33)
!2199 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !2192, file: !3, line: 1472, type: !22)
!2200 = !DILocalVariable(name: "value_buffer", scope: !2192, file: !3, line: 1474, type: !1964)
!2201 = !DILocation(line: 1472, column: 61, scope: !2192)
!2202 = !DILocation(line: 1472, column: 77, scope: !2192)
!2203 = !DILocation(line: 1472, column: 94, scope: !2192)
!2204 = !DILocation(line: 1472, column: 111, scope: !2192)
!2205 = !DILocation(line: 1474, column: 5, scope: !2192)
!2206 = !DILocation(line: 1474, column: 13, scope: !2192)
!2207 = !DILocation(line: 1475, column: 5, scope: !2192)
!2208 = !DILocation(line: 1476, column: 12, scope: !2192)
!2209 = !DILocation(line: 1477, column: 1, scope: !2192)
!2210 = !DILocation(line: 1476, column: 5, scope: !2192)
!2211 = distinct !DISubprogram(name: "att_read_callback_handle_byte", scope: !3, file: !3, line: 1479, type: !2212, isLocal: false, isDefinition: true, scopeLine: 1480, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!22, !34, !22, !33, !22}
!2214 = !{!2215, !2216, !2217, !2218, !2219}
!2215 = !DILocalVariable(name: "value", arg: 1, scope: !2211, file: !3, line: 1479, type: !34)
!2216 = !DILocalVariable(name: "offset", arg: 2, scope: !2211, file: !3, line: 1479, type: !22)
!2217 = !DILocalVariable(name: "buffer", arg: 3, scope: !2211, file: !3, line: 1479, type: !33)
!2218 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !2211, file: !3, line: 1479, type: !22)
!2219 = !DILocalVariable(name: "value_buffer", scope: !2211, file: !3, line: 1481, type: !2220)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !2221)
!2221 = !{!2222}
!2222 = !DISubrange(count: 1)
!2223 = !DILocation(line: 1479, column: 48, scope: !2211)
!2224 = !DILocation(line: 1479, column: 64, scope: !2211)
!2225 = !DILocation(line: 1479, column: 81, scope: !2211)
!2226 = !DILocation(line: 1479, column: 98, scope: !2211)
!2227 = !DILocation(line: 1481, column: 5, scope: !2211)
!2228 = !DILocation(line: 1481, column: 13, scope: !2211)
!2229 = !DILocation(line: 1482, column: 21, scope: !2211)
!2230 = !DILocation(line: 1483, column: 12, scope: !2211)
!2231 = !DILocation(line: 1484, column: 1, scope: !2211)
!2232 = !DILocation(line: 1483, column: 5, scope: !2211)
!2233 = distinct !DISubprogram(name: "att_iterator_match_uuid", scope: !3, file: !3, line: 163, type: !2234, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!41, !97, !33, !22}
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "it", arg: 1, scope: !2233, file: !3, line: 163, type: !97)
!2238 = !DILocalVariable(name: "uuid", arg: 2, scope: !2233, file: !3, line: 163, type: !33)
!2239 = !DILocalVariable(name: "uuid_len", arg: 3, scope: !2233, file: !3, line: 163, type: !22)
!2240 = !DILocation(line: 163, column: 52, scope: !2233)
!2241 = !DILocation(line: 163, column: 65, scope: !2233)
!2242 = !DILocation(line: 163, column: 80, scope: !2233)
!2243 = !DILocation(line: 165, column: 13, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 165, column: 9)
!2245 = !DILocation(line: 165, column: 20, scope: !2244)
!2246 = !DILocation(line: 165, column: 9, scope: !2233)
!2247 = !DILocation(line: 169, column: 18, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 169, column: 9)
!2249 = !DILocation(line: 169, column: 9, scope: !2233)
!2250 = !DILocation(line: 170, column: 46, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 169, column: 24)
!2252 = !DILocation(line: 170, column: 16, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2251, file: !3, discriminator: 1)
!2254 = !DILocation(line: 170, column: 9, scope: !2251)
!2255 = !DILocation(line: 173, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 173, column: 9)
!2257 = !DILocation(line: 173, column: 19, scope: !2256)
!2258 = !DILocation(line: 173, column: 9, scope: !2233)
!2259 = !DILocation(line: 174, column: 27, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 173, column: 43)
!2261 = !DILocation(line: 174, column: 16, scope: !2260)
!2262 = !DILocation(line: 174, column: 43, scope: !2260)
!2263 = !DILocation(line: 174, column: 9, scope: !2260)
!2264 = !DILocation(line: 177, column: 10, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 177, column: 9)
!2266 = !DILocation(line: 177, column: 9, scope: !2233)
!2267 = !DILocation(line: 180, column: 12, scope: !2233)
!2268 = !DILocation(line: 180, column: 73, scope: !2233)
!2269 = !DILocation(line: 180, column: 47, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2233, file: !3, discriminator: 1)
!2271 = !DILocation(line: 180, column: 44, scope: !2233)
!2272 = !DILocation(line: 180, column: 5, scope: !2233)
!2273 = !DILocation(line: 181, column: 1, scope: !2233)
!2274 = distinct !DISubprogram(name: "att_validate_security", scope: !3, file: !3, line: 381, type: !2275, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!34, !260, !97}
!2277 = !{!2278, !2279, !2280}
!2278 = !DILocalVariable(name: "att_connection", arg: 1, scope: !2274, file: !3, line: 381, type: !260)
!2279 = !DILocalVariable(name: "it", arg: 2, scope: !2274, file: !3, line: 381, type: !97)
!2280 = !DILocalVariable(name: "required_encryption_size", scope: !2274, file: !3, line: 383, type: !41)
!2281 = !DILocation(line: 381, column: 56, scope: !2274)
!2282 = !DILocation(line: 381, column: 88, scope: !2274)
!2283 = !DILocation(line: 383, column: 40, scope: !2274)
!2284 = !DILocation(line: 383, column: 36, scope: !2274)
!2285 = !DILocation(line: 383, column: 46, scope: !2274)
!2286 = !DILocation(line: 383, column: 9, scope: !2274)
!2287 = !DILocation(line: 384, column: 9, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 384, column: 9)
!2289 = !DILocation(line: 385, column: 33, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 384, column: 35)
!2291 = !DILocation(line: 384, column: 9, scope: !2274)
!2292 = !DILocation(line: 389, column: 20, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 389, column: 9)
!2294 = !DILocation(line: 389, column: 60, scope: !2293)
!2295 = !DILocation(line: 389, column: 79, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2293, file: !3, discriminator: 1)
!2297 = !{!312, !84, i64 7}
!2298 = !DILocation(line: 389, column: 93, scope: !2296)
!2299 = !DILocation(line: 389, column: 9, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2274, file: !3, discriminator: 1)
!2301 = !DILocation(line: 392, column: 20, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 392, column: 9)
!2303 = !DILocation(line: 392, column: 59, scope: !2302)
!2304 = !DILocation(line: 392, column: 78, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2302, file: !3, discriminator: 1)
!2306 = !{!312, !84, i64 8}
!2307 = !DILocation(line: 392, column: 89, scope: !2305)
!2308 = !DILocation(line: 392, column: 9, scope: !2300)
!2309 = !{!312, !84, i64 6}
!2310 = !DILocation(line: 395, column: 38, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 395, column: 9)
!2312 = !DILocation(line: 395, column: 77, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2311, file: !3, discriminator: 1)
!2314 = !DILocation(line: 398, column: 36, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 398, column: 9)
!2316 = !DILocation(line: 398, column: 34, scope: !2315)
!2317 = !DILocation(line: 399, column: 9, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 398, column: 73)
!2319 = !DILocation(line: 402, column: 1, scope: !2274)
!2320 = distinct !DISubprogram(name: "att_update_value_len", scope: !3, file: !3, line: 250, type: !2321, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2325)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !97, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !2324, line: 9, baseType: !22)
!2324 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!2325 = !{!2326, !2327, !2328}
!2326 = !DILocalVariable(name: "it", arg: 1, scope: !2320, file: !3, line: 250, type: !97)
!2327 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2320, file: !3, line: 250, type: !2323)
!2328 = !DILocalVariable(name: "callback", scope: !2320, file: !3, line: 255, type: !154)
!2329 = !DILocation(line: 250, column: 50, scope: !2320)
!2330 = !DILocation(line: 250, column: 71, scope: !2320)
!2331 = !DILocation(line: 252, column: 14, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 252, column: 9)
!2333 = !DILocation(line: 252, column: 20, scope: !2332)
!2334 = !DILocation(line: 252, column: 44, scope: !2332)
!2335 = !DILocation(line: 252, column: 9, scope: !2320)
!2336 = !DILocation(line: 255, column: 69, scope: !2320)
!2337 = !DILocalVariable(name: "handle", arg: 1, scope: !2338, file: !3, line: 217, type: !22)
!2338 = distinct !DISubprogram(name: "att_read_callback_for_handle", scope: !3, file: !3, line: 217, type: !2339, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!154, !22}
!2341 = !{!2337, !2342}
!2342 = !DILocalVariable(name: "handler", scope: !2338, file: !3, line: 219, type: !15)
!2343 = !DILocation(line: 217, column: 66, scope: !2338, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 255, column: 36, scope: !2320)
!2345 = !DILocation(line: 219, column: 38, scope: !2338, inlinedAt: !2344)
!2346 = !DILocation(line: 219, column: 28, scope: !2338, inlinedAt: !2344)
!2347 = !DILocation(line: 220, column: 9, scope: !2348, inlinedAt: !2344)
!2348 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 220, column: 9)
!2349 = !DILocation(line: 221, column: 25, scope: !2350, inlinedAt: !2344)
!2350 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 220, column: 18)
!2351 = !DILocation(line: 220, column: 9, scope: !2338, inlinedAt: !2344)
!2352 = !DILocation(line: 255, column: 25, scope: !2320)
!2353 = !DILocation(line: 256, column: 10, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 256, column: 9)
!2355 = !DILocation(line: 256, column: 9, scope: !2320)
!2356 = !DILocation(line: 259, column: 49, scope: !2320)
!2357 = !DILocation(line: 259, column: 21, scope: !2320)
!2358 = !DILocation(line: 259, column: 9, scope: !2320)
!2359 = !DILocation(line: 259, column: 19, scope: !2320)
!2360 = !DILocation(line: 260, column: 5, scope: !2320)
!2361 = !DILocation(line: 261, column: 1, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2320, file: !3, discriminator: 1)
!2363 = distinct !DISubprogram(name: "att_copy_value", scope: !3, file: !3, line: 264, type: !2364, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!41, !97, !22, !33, !22, !2323}
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2375}
!2367 = !DILocalVariable(name: "it", arg: 1, scope: !2363, file: !3, line: 264, type: !97)
!2368 = !DILocalVariable(name: "offset", arg: 2, scope: !2363, file: !3, line: 264, type: !22)
!2369 = !DILocalVariable(name: "buffer", arg: 3, scope: !2363, file: !3, line: 264, type: !33)
!2370 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !2363, file: !3, line: 264, type: !22)
!2371 = !DILocalVariable(name: "con_handle", arg: 5, scope: !2363, file: !3, line: 264, type: !2323)
!2372 = !DILocalVariable(name: "callback", scope: !2373, file: !3, line: 269, type: !154)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 268, column: 43)
!2374 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 268, column: 9)
!2375 = !DILocalVariable(name: "bytes_to_copy", scope: !2363, file: !3, line: 277, type: !22)
!2376 = !DILocation(line: 264, column: 43, scope: !2363)
!2377 = !DILocation(line: 264, column: 56, scope: !2363)
!2378 = !DILocation(line: 264, column: 73, scope: !2363)
!2379 = !DILocation(line: 264, column: 90, scope: !2363)
!2380 = !DILocation(line: 264, column: 120, scope: !2363)
!2381 = !DILocation(line: 268, column: 13, scope: !2374)
!2382 = !DILocation(line: 268, column: 19, scope: !2374)
!2383 = !DILocation(line: 268, column: 9, scope: !2363)
!2384 = !DILocation(line: 269, column: 73, scope: !2373)
!2385 = !DILocation(line: 217, column: 66, scope: !2338, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 269, column: 40, scope: !2373)
!2387 = !DILocation(line: 219, column: 38, scope: !2338, inlinedAt: !2386)
!2388 = !DILocation(line: 219, column: 28, scope: !2338, inlinedAt: !2386)
!2389 = !DILocation(line: 220, column: 9, scope: !2348, inlinedAt: !2386)
!2390 = !DILocation(line: 221, column: 25, scope: !2350, inlinedAt: !2386)
!2391 = !DILocation(line: 220, column: 9, scope: !2338, inlinedAt: !2386)
!2392 = !DILocation(line: 269, column: 29, scope: !2373)
!2393 = !DILocation(line: 270, column: 14, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 270, column: 13)
!2395 = !DILocation(line: 270, column: 13, scope: !2373)
!2396 = !DILocation(line: 273, column: 44, scope: !2373)
!2397 = !DILocation(line: 273, column: 16, scope: !2373)
!2398 = !DILocation(line: 273, column: 9, scope: !2373)
!2399 = !DILocation(line: 277, column: 34, scope: !2363)
!2400 = !DILocation(line: 277, column: 44, scope: !2363)
!2401 = !DILocation(line: 277, column: 14, scope: !2363)
!2402 = !DILocation(line: 278, column: 23, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 278, column: 9)
!2404 = !DILocation(line: 278, column: 9, scope: !2363)
!2405 = !DILocation(line: 281, column: 24, scope: !2363)
!2406 = !DILocation(line: 281, column: 31, scope: !2363)
!2407 = !DILocation(line: 281, column: 5, scope: !2363)
!2408 = !DILocation(line: 283, column: 1, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2363, file: !3, discriminator: 1)
!2410 = distinct !DISubprogram(name: "is_Bluetooth_Base_UUID", scope: !3, file: !3, line: 77, type: !2411, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!41, !63}
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "uuid", arg: 1, scope: !2410, file: !3, line: 77, type: !63)
!2415 = !DILocation(line: 77, column: 50, scope: !2410)
!2416 = !DILocation(line: 79, column: 9, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 79, column: 9)
!2418 = !DILocation(line: 79, column: 9, scope: !2410)
!2419 = !DILocation(line: 82, column: 17, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 82, column: 9)
!2421 = !DILocation(line: 82, column: 9, scope: !2420)
!2422 = !DILocation(line: 85, column: 5, scope: !2410)
!2423 = !DILocation(line: 87, column: 1, scope: !2410)
