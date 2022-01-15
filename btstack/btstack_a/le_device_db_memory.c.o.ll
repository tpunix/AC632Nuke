; ModuleID = 'le_device_db_memory.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.le_db_info_t = type { [8 x %struct.le_device_memory_db*] }
%struct.le_device_memory_db = type { i32, [6 x i8], [16 x i8], [16 x i8], i16, [8 x i8], i8, i8, i8 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@config_le_sm_support_enable = external local_unnamed_addr constant i32, align 4
@config_le_hci_connection_num = external local_unnamed_addr constant i32, align 4
@config_asser = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.1 = private unnamed_addr constant [122 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"ASSERT-FAILD: MAX_NR_LE_DEVICE_DB_ENTRIES >= CONFIG_MAX_DEVICE_DB_NUM device db not match\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ASSERT-FAILD: db_pt device db malloc fail\00", align 1
@le_global_db_info = hidden local_unnamed_addr global %struct.le_db_info_t zeroinitializer, section ".ble_db_bss", align 4, !dbg !6
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@str = private unnamed_addr constant [37 x i8] c"<ble-error> :le_device_db_info full\0A\00"

; Function Attrs: nounwind optsize
define hidden void @le_device_db_init() local_unnamed_addr #0 section ".ble_db_code" !dbg !48 {
  %1 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !54, !tbaa !56
  %2 = icmp eq i32 %1, 0, !dbg !54
  br i1 %2, label %42, label %3, !dbg !60

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @config_le_hci_connection_num, align 4, !dbg !61, !tbaa !56
  %5 = icmp eq i32 %4, 0, !dbg !61
  br i1 %5, label %42, label %6, !dbg !63

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* @config_asser, align 4, !dbg !64, !tbaa !56
  %8 = icmp eq i32 %7, 0, !dbg !64
  %9 = icmp slt i32 %4, 9
  br i1 %8, label %14, label %10, !dbg !69

; <label>:10:                                     ; preds = %6
  br i1 %9, label %16, label %11, !dbg !71

; <label>:11:                                     ; preds = %10
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i32 0, i32 0), i32 113) #9, !dbg !74
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !78
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !80
  br label %16, !dbg !74

; <label>:14:                                     ; preds = %6
  br i1 %9, label %24, label %15, !dbg !82

; <label>:15:                                     ; preds = %14
  tail call fastcc void @cpu_reset() #9, !dbg !85
  br label %24, !dbg !85

; <label>:16:                                     ; preds = %11, %10
  %17 = mul i32 %4, 56, !dbg !89
  %18 = tail call i8* @malloc(i32 %17) #9, !dbg !90
  %19 = bitcast i8* %18 to %struct.le_device_memory_db*, !dbg !90
  call void @llvm.dbg.value(metadata %struct.le_device_memory_db* %19, metadata !53, metadata !DIExpression()), !dbg !91
  %20 = icmp eq i8* %18, null
  br i1 %20, label %21, label %30, !dbg !92

; <label>:21:                                     ; preds = %16
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i32 0, i32 0), i32 116) #9, !dbg !97
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !101
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !103
  br label %30, !dbg !97

; <label>:24:                                     ; preds = %15, %14
  %25 = mul i32 %4, 56, !dbg !89
  %26 = tail call i8* @malloc(i32 %25) #9, !dbg !90
  %27 = bitcast i8* %26 to %struct.le_device_memory_db*, !dbg !90
  call void @llvm.dbg.value(metadata %struct.le_device_memory_db* %19, metadata !53, metadata !DIExpression()), !dbg !91
  %28 = icmp eq i8* %26, null
  br i1 %28, label %29, label %30, !dbg !105

; <label>:29:                                     ; preds = %24
  tail call fastcc void @cpu_reset() #9, !dbg !108
  br label %30, !dbg !108

; <label>:30:                                     ; preds = %29, %24, %21, %16
  %31 = phi %struct.le_device_memory_db* [ %27, %24 ], [ %27, %29 ], [ %19, %16 ], [ %19, %21 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !112
  %32 = icmp sgt i32 %4, 0, !dbg !113
  br i1 %32, label %33, label %42, !dbg !117

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !119

; <label>:34:                                     ; preds = %34, %33
  %35 = phi i32 [ %39, %34 ], [ 0, %33 ]
  %36 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %31, i32 %35, !dbg !119
  %37 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %35, !dbg !121
  store %struct.le_device_memory_db* %36, %struct.le_device_memory_db** %37, align 4, !dbg !122, !tbaa !123
  call void @llvm.dbg.value(metadata i32 %35, metadata !125, metadata !DIExpression()), !dbg !130
  %38 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %36, i32 0, i32 0, !dbg !132
  store i32 255, i32* %38, align 4, !dbg !133, !tbaa !134
  %39 = add nuw nsw i32 %35, 1, !dbg !137
  call void @llvm.dbg.value(metadata i32 %39, metadata !52, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %39, metadata !52, metadata !DIExpression()), !dbg !112
  %40 = icmp slt i32 %39, %4, !dbg !113
  br i1 %40, label %34, label %41, !dbg !117, !llvm.loop !139

; <label>:41:                                     ; preds = %34
  br label %42, !dbg !142

; <label>:42:                                     ; preds = %41, %30, %3, %0
  ret void, !dbg !142
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #3 !dbg !144 {
  tail call void @p33_soft_reset() #10, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @le_device_db_remove(i32) local_unnamed_addr #0 section ".ble_db_code" !dbg !126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !125, metadata !DIExpression()), !dbg !148
  %2 = icmp slt i32 %0, 0, !dbg !149
  br i1 %2, label %7, label %3, !dbg !151

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %0, !dbg !152
  %5 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %4, align 4, !dbg !152, !tbaa !123
  %6 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %5, i32 0, i32 0, !dbg !153
  store i32 255, i32* %6, align 4, !dbg !154, !tbaa !134
  br label %7, !dbg !155

; <label>:7:                                      ; preds = %3, %1
  ret void, !dbg !156
}

; Function Attrs: nounwind optsize
define hidden void @le_device_db_exit() local_unnamed_addr #0 section ".ble_db_code" !dbg !158 {
  %1 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !159, !tbaa !56
  %2 = icmp ne i32 %1, 0, !dbg !159
  %3 = load i32, i32* @config_le_hci_connection_num, align 4, !dbg !161
  %4 = icmp ne i32 %3, 0, !dbg !161
  %5 = and i1 %2, %4, !dbg !163
  %6 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** getelementptr inbounds (%struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 0), align 4, !dbg !164
  %7 = icmp ne %struct.le_device_memory_db* %6, null, !dbg !164
  %8 = and i1 %5, %7, !dbg !163
  br i1 %8, label %9, label %11, !dbg !163

; <label>:9:                                      ; preds = %0
  %10 = bitcast %struct.le_device_memory_db* %6 to i8*, !dbg !167
  tail call void @free(i8* %10) #9, !dbg !169
  store %struct.le_device_memory_db* null, %struct.le_device_memory_db** getelementptr inbounds (%struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 0), align 4, !dbg !170, !tbaa !123
  br label %11, !dbg !171

; <label>:11:                                     ; preds = %9, %0
  ret void, !dbg !172
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind optsize readnone
define hidden void @le_device_db_set_local_bd_addr(i8* nocapture) local_unnamed_addr #4 section ".ble_db_code" !dbg !173 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !178, metadata !DIExpression()), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @le_device_db_count() local_unnamed_addr #5 section ".ble_db_code" !dbg !181 {
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !187
  %1 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !188, !tbaa !56
  %2 = icmp ne i32 %1, 0, !dbg !188
  %3 = load i32, i32* @config_le_hci_connection_num, align 4, !dbg !190
  %4 = icmp sgt i32 %3, 0, !dbg !194
  %5 = and i1 %2, %4, !dbg !195
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !196
  br i1 %5, label %6, label %20, !dbg !195

; <label>:6:                                      ; preds = %0
  br label %7, !dbg !197

; <label>:7:                                      ; preds = %7, %6
  %8 = phi i32 [ %16, %7 ], [ 0, %6 ]
  %9 = phi i32 [ %17, %7 ], [ 0, %6 ]
  %10 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %9, !dbg !197
  %11 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %10, align 4, !dbg !197, !tbaa !123
  %12 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 0, !dbg !200
  %13 = load i32, i32* %12, align 4, !dbg !200, !tbaa !134
  %14 = icmp ne i32 %13, 255, !dbg !201
  %15 = zext i1 %14 to i32, !dbg !201
  %16 = add nsw i32 %15, %8, !dbg !201
  call void @llvm.dbg.value(metadata i32 %16, metadata !186, metadata !DIExpression()), !dbg !187
  %17 = add nuw nsw i32 %9, 1, !dbg !202
  call void @llvm.dbg.value(metadata i32 %17, metadata !185, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 %16, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %17, metadata !185, metadata !DIExpression()), !dbg !196
  %18 = icmp slt i32 %17, %3, !dbg !194
  br i1 %18, label %7, label %19, !dbg !204, !llvm.loop !206

; <label>:19:                                     ; preds = %7
  br label %20, !dbg !209

; <label>:20:                                     ; preds = %19, %0
  %21 = phi i32 [ 0, %0 ], [ %16, %19 ]
  ret i32 %21, !dbg !209
}

; Function Attrs: nounwind optsize
define hidden i32 @le_device_db_add(i32, i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_db_code" !dbg !210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !214, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i8* %1, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i8* %2, metadata !216, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 -1, metadata !218, metadata !DIExpression()), !dbg !222
  %4 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !223, !tbaa !56
  %5 = icmp eq i32 %4, 0, !dbg !223
  br i1 %5, label %33, label %6, !dbg !225

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !226
  %7 = load i32, i32* @config_le_hci_connection_num, align 4, !dbg !227, !tbaa !56
  %8 = icmp sgt i32 %7, 0, !dbg !231
  br i1 %8, label %9, label %23, !dbg !232

; <label>:9:                                      ; preds = %6
  br label %10, !dbg !234

; <label>:10:                                     ; preds = %17, %9
  %11 = phi i32 [ %18, %17 ], [ 0, %9 ]
  %12 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %11, !dbg !234
  %13 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %12, align 4, !dbg !234, !tbaa !123
  %14 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %13, i32 0, i32 0, !dbg !237
  %15 = load i32, i32* %14, align 4, !dbg !237, !tbaa !134
  %16 = icmp eq i32 %15, 255, !dbg !238
  br i1 %16, label %20, label %17, !dbg !239

; <label>:17:                                     ; preds = %10
  %18 = add nuw nsw i32 %11, 1, !dbg !240
  call void @llvm.dbg.value(metadata i32 %18, metadata !217, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %18, metadata !217, metadata !DIExpression()), !dbg !226
  %19 = icmp slt i32 %18, %7, !dbg !231
  br i1 %19, label %10, label %22, !dbg !232, !llvm.loop !242

; <label>:20:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i32 undef, metadata !218, metadata !DIExpression()), !dbg !222
  %21 = icmp slt i32 %11, 0, !dbg !245
  br i1 %21, label %23, label %29, !dbg !247

; <label>:22:                                     ; preds = %17
  br label %23, !dbg !248

; <label>:23:                                     ; preds = %22, %20, %6
  %24 = load i8, i8* @ble_debug_enable, align 1, !dbg !248, !tbaa !251
  %25 = and i8 %24, 4, !dbg !248
  %26 = icmp eq i8 %25, 0, !dbg !248
  br i1 %26, label %33, label %27, !dbg !252

; <label>:27:                                     ; preds = %23
  %28 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str, i32 0, i32 0)), !dbg !253
  br label %33, !dbg !253

; <label>:29:                                     ; preds = %20
  store i32 %0, i32* %14, align 4, !dbg !255, !tbaa !134
  %30 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %13, i32 0, i32 1, i32 0, !dbg !256
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %1, i32 6, i32 1, i1 false), !dbg !256
  %31 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %12, align 4, !dbg !257, !tbaa !123
  %32 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %31, i32 0, i32 2, i32 0, !dbg !258
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %2, i32 16, i32 1, i1 false), !dbg !258
  br label %33, !dbg !259

; <label>:33:                                     ; preds = %29, %27, %23, %3
  %34 = phi i32 [ %11, %29 ], [ -1, %3 ], [ -1, %23 ], [ -1, %27 ]
  ret i32 %34, !dbg !260
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #6

; Function Attrs: nounwind optsize
define hidden void @le_device_db_info(i32, i32*, i8*, i8*) local_unnamed_addr #0 section ".ble_db_code" !dbg !261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !266, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32* %1, metadata !267, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i8* %2, metadata !268, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i8* %3, metadata !269, metadata !DIExpression()), !dbg !273
  %5 = icmp slt i32 %0, 0, !dbg !274
  %6 = icmp ne i32* %1, null
  br i1 %5, label %7, label %15, !dbg !276

; <label>:7:                                      ; preds = %4
  br i1 %6, label %8, label %9, !dbg !277

; <label>:8:                                      ; preds = %7
  store i32 255, i32* %1, align 4, !dbg !279, !tbaa !56
  br label %9, !dbg !282

; <label>:9:                                      ; preds = %8, %7
  %10 = icmp eq i8* %2, null, !dbg !283
  br i1 %10, label %12, label %11, !dbg !285

; <label>:11:                                     ; preds = %9
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %2, i8 0, i32 6, i32 1, i1 false), !dbg !286
  br label %12, !dbg !288

; <label>:12:                                     ; preds = %11, %9
  %13 = icmp eq i8* %3, null, !dbg !289
  br i1 %13, label %33, label %14, !dbg !291

; <label>:14:                                     ; preds = %12
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 0, i32 16, i32 1, i1 false), !dbg !292
  br label %33, !dbg !294

; <label>:15:                                     ; preds = %4
  br i1 %6, label %16, label %21, !dbg !295

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %0, !dbg !296
  %18 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %17, align 4, !dbg !296, !tbaa !123
  %19 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %18, i32 0, i32 0, !dbg !299
  %20 = load i32, i32* %19, align 4, !dbg !299, !tbaa !134
  store i32 %20, i32* %1, align 4, !dbg !300, !tbaa !56
  br label %21, !dbg !301

; <label>:21:                                     ; preds = %16, %15
  %22 = icmp eq i8* %2, null, !dbg !302
  br i1 %22, label %27, label %23, !dbg !304

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %0, !dbg !305
  %25 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %24, align 4, !dbg !305, !tbaa !123
  %26 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %25, i32 0, i32 1, i32 0, !dbg !307
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %2, i8* %26, i32 6, i32 1, i1 false), !dbg !307
  br label %27, !dbg !308

; <label>:27:                                     ; preds = %23, %21
  %28 = icmp eq i8* %3, null, !dbg !309
  br i1 %28, label %33, label %29, !dbg !311

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %0, !dbg !312
  %31 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %30, align 4, !dbg !312, !tbaa !123
  %32 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %31, i32 0, i32 2, i32 0, !dbg !314
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* %32, i32 16, i32 1, i1 false), !dbg !314
  br label %33, !dbg !315

; <label>:33:                                     ; preds = %29, %27, %14, %12
  ret void, !dbg !316
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #6

; Function Attrs: nounwind optsize
define hidden void @le_device_db_encryption_set(i32, i16 zeroext, i8* readonly, i8* readonly, i32, i32, i32) local_unnamed_addr #0 section ".ble_db_code" !dbg !317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !321, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i16 %1, metadata !322, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i8* %2, metadata !323, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %3, metadata !324, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata i32 %4, metadata !325, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 %5, metadata !326, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %6, metadata !327, metadata !DIExpression()), !dbg !335
  %8 = icmp slt i32 %0, 0, !dbg !336
  br i1 %8, label %30, label %9, !dbg !338

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %0, !dbg !339
  %11 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %10, align 4, !dbg !339, !tbaa !123
  call void @llvm.dbg.value(metadata %struct.le_device_memory_db* %11, metadata !328, metadata !DIExpression()), !dbg !340
  %12 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 4, !dbg !341
  store i16 %1, i16* %12, align 2, !dbg !342, !tbaa !343
  %13 = icmp eq i8* %2, null, !dbg !344
  br i1 %13, label %19, label %14, !dbg !346

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 5, i32 0, !dbg !347
  %16 = bitcast i8* %2 to i64*, !dbg !347
  %17 = bitcast i8* %15 to i64*, !dbg !347
  %18 = load i64, i64* %16, align 1, !dbg !347
  store i64 %18, i64* %17, align 1, !dbg !347
  br label %19, !dbg !349

; <label>:19:                                     ; preds = %14, %9
  %20 = icmp eq i8* %3, null, !dbg !350
  br i1 %20, label %23, label %21, !dbg !352

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 3, i32 0, !dbg !353
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* nonnull %3, i32 16, i32 1, i1 false), !dbg !353
  br label %23, !dbg !355

; <label>:23:                                     ; preds = %21, %19
  %24 = trunc i32 %4 to i8, !dbg !356
  %25 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 6, !dbg !357
  store i8 %24, i8* %25, align 4, !dbg !358, !tbaa !359
  %26 = trunc i32 %5 to i8, !dbg !360
  %27 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 7, !dbg !361
  store i8 %26, i8* %27, align 1, !dbg !362, !tbaa !363
  %28 = trunc i32 %6 to i8, !dbg !364
  %29 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 8, !dbg !365
  store i8 %28, i8* %29, align 2, !dbg !366, !tbaa !367
  br label %30, !dbg !368

; <label>:30:                                     ; preds = %23, %7
  ret void, !dbg !369
}

; Function Attrs: nounwind optsize
define hidden void @le_device_db_encryption_get(i32, i16*, i8*, i8*, i32*, i32*, i32*) local_unnamed_addr #0 section ".ble_db_code" !dbg !371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !376, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i16* %1, metadata !377, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8* %2, metadata !378, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i8* %3, metadata !379, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i32* %4, metadata !380, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32* %5, metadata !381, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32* %6, metadata !382, metadata !DIExpression()), !dbg !390
  %8 = icmp slt i32 %0, 0, !dbg !391
  br i1 %8, label %45, label %9, !dbg !393

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.le_db_info_t, %struct.le_db_info_t* @le_global_db_info, i32 0, i32 0, i32 %0, !dbg !394
  %11 = load %struct.le_device_memory_db*, %struct.le_device_memory_db** %10, align 4, !dbg !394, !tbaa !123
  call void @llvm.dbg.value(metadata %struct.le_device_memory_db* %11, metadata !383, metadata !DIExpression()), !dbg !395
  %12 = icmp eq i16* %1, null, !dbg !396
  br i1 %12, label %16, label %13, !dbg !398

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 4, !dbg !399
  %15 = load i16, i16* %14, align 2, !dbg !399, !tbaa !343
  store i16 %15, i16* %1, align 2, !dbg !401, !tbaa !402
  br label %16, !dbg !403

; <label>:16:                                     ; preds = %13, %9
  %17 = icmp eq i8* %2, null, !dbg !404
  br i1 %17, label %23, label %18, !dbg !406

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 5, i32 0, !dbg !407
  %20 = bitcast i8* %19 to i64*, !dbg !407
  %21 = bitcast i8* %2 to i64*, !dbg !407
  %22 = load i64, i64* %20, align 1, !dbg !407
  store i64 %22, i64* %21, align 1, !dbg !407
  br label %23, !dbg !409

; <label>:23:                                     ; preds = %18, %16
  %24 = icmp eq i8* %3, null, !dbg !410
  br i1 %24, label %27, label %25, !dbg !412

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 3, i32 0, !dbg !413
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* %26, i32 16, i32 1, i1 false), !dbg !413
  br label %27, !dbg !415

; <label>:27:                                     ; preds = %25, %23
  %28 = icmp eq i32* %4, null, !dbg !416
  br i1 %28, label %33, label %29, !dbg !418

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 6, !dbg !419
  %31 = load i8, i8* %30, align 4, !dbg !419, !tbaa !359
  %32 = zext i8 %31 to i32, !dbg !421
  store i32 %32, i32* %4, align 4, !dbg !422, !tbaa !56
  br label %33, !dbg !423

; <label>:33:                                     ; preds = %29, %27
  %34 = icmp eq i32* %5, null, !dbg !424
  br i1 %34, label %39, label %35, !dbg !426

; <label>:35:                                     ; preds = %33
  %36 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 7, !dbg !427
  %37 = load i8, i8* %36, align 1, !dbg !427, !tbaa !363
  %38 = zext i8 %37 to i32, !dbg !429
  store i32 %38, i32* %5, align 4, !dbg !430, !tbaa !56
  br label %39, !dbg !431

; <label>:39:                                     ; preds = %35, %33
  %40 = icmp eq i32* %6, null, !dbg !432
  br i1 %40, label %45, label %41, !dbg !434

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.le_device_memory_db, %struct.le_device_memory_db* %11, i32 0, i32 8, !dbg !435
  %43 = load i8, i8* %42, align 2, !dbg !435, !tbaa !367
  %44 = zext i8 %43 to i32, !dbg !437
  store i32 %44, i32* %6, align 4, !dbg !438, !tbaa !56
  br label %45, !dbg !439

; <label>:45:                                     ; preds = %41, %39, %7
  ret void, !dbg !440
}

; Function Attrs: nounwind optsize readnone
define hidden void @le_device_db_dump() local_unnamed_addr #4 section ".ble_db_code" !dbg !442 {
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !44, line: 190, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BLE/le_device_db_memory.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "le_global_db_info", scope: !2, file: !3, line: 97, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_db_info_t", file: !3, line: 95, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 93, size: 256, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "le_devices", scope: !9, file: !3, line: 94, baseType: !12, size: 256)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !39)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_device_memory_db_t", file: !3, line: 85, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "le_device_memory_db", file: !3, line: 59, size: 448, elements: !16)
!16 = !{!17, !19, !28, !33, !34, !37, !41, !42, !43}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "addr_type", scope: !15, file: !3, line: 62, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !15, file: !3, line: 63, baseType: !20, size: 48, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !21, line: 66, baseType: !22)
!21 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !26)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 44, baseType: !25)
!24 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27}
!27 = !DISubrange(count: 6)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "irk", scope: !15, file: !3, line: 64, baseType: !29, size: 128, offset: 80)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_key_t", file: !21, line: 90, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ltk", scope: !15, file: !3, line: 68, baseType: !29, size: 128, offset: 208)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ediv", scope: !15, file: !3, line: 69, baseType: !35, size: 16, offset: 336)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !24, line: 46, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "rand", scope: !15, file: !3, line: 70, baseType: !38, size: 64, offset: 352)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !15, file: !3, line: 71, baseType: !23, size: 8, offset: 416)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !15, file: !3, line: 72, baseType: !23, size: 8, offset: 424)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !15, file: !3, line: 73, baseType: !23, size: 8, offset: 432)
!44 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!45 = !{i32 2, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!48 = distinct !DISubprogram(name: "le_device_db_init", scope: !3, file: !3, line: 103, type: !49, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "i", scope: !48, file: !3, line: 105, type: !18)
!53 = !DILocalVariable(name: "db_pt", scope: !48, file: !3, line: 106, type: !13)
!54 = !DILocation(line: 108, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !3, line: 108, column: 9)
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 108, column: 9, scope: !48)
!61 = !DILocation(line: 112, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !48, file: !3, line: 112, column: 9)
!63 = !DILocation(line: 112, column: 9, scope: !48)
!64 = !DILocation(line: 113, column: 9, scope: !65)
!65 = !DILexicalBlockFile(scope: !66, file: !3, discriminator: 1)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 113, column: 9)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 113, column: 9)
!68 = distinct !DILexicalBlock(scope: !62, file: !3, line: 112, column: 35)
!69 = !DILocation(line: 113, column: 9, scope: !70)
!70 = !DILexicalBlockFile(scope: !67, file: !3, discriminator: 1)
!71 = !DILocation(line: 113, column: 9, scope: !72)
!72 = !DILexicalBlockFile(scope: !73, file: !3, discriminator: 2)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 113, column: 9)
!74 = !DILocation(line: 113, column: 9, scope: !75)
!75 = !DILexicalBlockFile(scope: !76, file: !3, discriminator: 3)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 113, column: 9)
!77 = distinct !DILexicalBlock(scope: !73, file: !3, line: 113, column: 9)
!78 = !DILocation(line: 113, column: 9, scope: !79)
!79 = !DILexicalBlockFile(scope: !76, file: !3, discriminator: 9)
!80 = !DILocation(line: 113, column: 9, scope: !81)
!81 = !DILexicalBlockFile(scope: !76, file: !3, discriminator: 10)
!82 = !DILocation(line: 113, column: 9, scope: !83)
!83 = !DILexicalBlockFile(scope: !84, file: !3, discriminator: 5)
!84 = distinct !DILexicalBlock(scope: !66, file: !3, line: 113, column: 9)
!85 = !DILocation(line: 113, column: 9, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !3, discriminator: 6)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 113, column: 9)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 113, column: 9)
!89 = !DILocation(line: 115, column: 54, scope: !68)
!90 = !DILocation(line: 115, column: 17, scope: !68)
!91 = !DILocation(line: 106, column: 28, scope: !48)
!92 = !DILocation(line: 116, column: 9, scope: !93)
!93 = !DILexicalBlockFile(scope: !94, file: !3, discriminator: 2)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 116, column: 9)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 116, column: 9)
!96 = distinct !DILexicalBlock(scope: !68, file: !3, line: 116, column: 9)
!97 = !DILocation(line: 116, column: 9, scope: !98)
!98 = !DILexicalBlockFile(scope: !99, file: !3, discriminator: 3)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 116, column: 9)
!100 = distinct !DILexicalBlock(scope: !94, file: !3, line: 116, column: 9)
!101 = !DILocation(line: 116, column: 9, scope: !102)
!102 = !DILexicalBlockFile(scope: !99, file: !3, discriminator: 9)
!103 = !DILocation(line: 116, column: 9, scope: !104)
!104 = !DILexicalBlockFile(scope: !99, file: !3, discriminator: 10)
!105 = !DILocation(line: 116, column: 9, scope: !106)
!106 = !DILexicalBlockFile(scope: !107, file: !3, discriminator: 5)
!107 = distinct !DILexicalBlock(scope: !95, file: !3, line: 116, column: 9)
!108 = !DILocation(line: 116, column: 9, scope: !109)
!109 = !DILexicalBlockFile(scope: !110, file: !3, discriminator: 6)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 116, column: 9)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 116, column: 9)
!112 = !DILocation(line: 105, column: 9, scope: !48)
!113 = !DILocation(line: 118, column: 23, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !3, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 118, column: 9)
!116 = distinct !DILexicalBlock(scope: !68, file: !3, line: 118, column: 9)
!117 = !DILocation(line: 118, column: 9, scope: !118)
!118 = !DILexicalBlockFile(scope: !116, file: !3, discriminator: 1)
!119 = !DILocation(line: 119, column: 38, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !3, line: 118, column: 56)
!121 = !DILocation(line: 119, column: 13, scope: !120)
!122 = !DILocation(line: 119, column: 35, scope: !120)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !58, i64 0}
!125 = !DILocalVariable(name: "index", arg: 1, scope: !126, file: !3, line: 163, type: !18)
!126 = distinct !DISubprogram(name: "le_device_db_remove", scope: !3, file: !3, line: 163, type: !127, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !18}
!129 = !{!125}
!130 = !DILocation(line: 163, column: 30, scope: !126, inlinedAt: !131)
!131 = distinct !DILocation(line: 120, column: 13, scope: !120)
!132 = !DILocation(line: 169, column: 32, scope: !126, inlinedAt: !131)
!133 = !DILocation(line: 169, column: 42, scope: !126, inlinedAt: !131)
!134 = !{!135, !57, i64 0}
!135 = !{!"le_device_memory_db", !57, i64 0, !58, i64 4, !58, i64 10, !58, i64 26, !136, i64 42, !58, i64 44, !58, i64 52, !58, i64 53, !58, i64 54}
!136 = !{!"short", !58, i64 0}
!137 = !DILocation(line: 118, column: 52, scope: !138)
!138 = !DILexicalBlockFile(scope: !115, file: !3, discriminator: 2)
!139 = distinct !{!139, !140, !141}
!140 = !DILocation(line: 118, column: 9, scope: !116)
!141 = !DILocation(line: 121, column: 9, scope: !116)
!142 = !DILocation(line: 123, column: 1, scope: !143)
!143 = !DILexicalBlockFile(scope: !48, file: !3, discriminator: 2)
!144 = distinct !DISubprogram(name: "cpu_reset", scope: !145, file: !145, line: 145, type: !49, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!145 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!146 = !DILocation(line: 148, column: 5, scope: !144)
!147 = !DILocation(line: 149, column: 1, scope: !144)
!148 = !DILocation(line: 163, column: 30, scope: !126)
!149 = !DILocation(line: 165, column: 15, scope: !150)
!150 = distinct !DILexicalBlock(scope: !126, file: !3, line: 165, column: 9)
!151 = !DILocation(line: 165, column: 9, scope: !126)
!152 = !DILocation(line: 169, column: 5, scope: !126)
!153 = !DILocation(line: 169, column: 32, scope: !126)
!154 = !DILocation(line: 169, column: 42, scope: !126)
!155 = !DILocation(line: 170, column: 1, scope: !126)
!156 = !DILocation(line: 170, column: 1, scope: !157)
!157 = !DILexicalBlockFile(scope: !126, file: !3, discriminator: 1)
!158 = distinct !DISubprogram(name: "le_device_db_exit", scope: !3, file: !3, line: 125, type: !49, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!159 = !DILocation(line: 127, column: 10, scope: !160)
!160 = distinct !DILexicalBlock(scope: !158, file: !3, line: 127, column: 9)
!161 = !DILocation(line: 131, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 131, column: 9)
!163 = !DILocation(line: 127, column: 9, scope: !158)
!164 = !DILocation(line: 132, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 132, column: 13)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 131, column: 35)
!167 = !DILocation(line: 133, column: 18, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 132, column: 36)
!169 = !DILocation(line: 133, column: 13, scope: !168)
!170 = !DILocation(line: 134, column: 35, scope: !168)
!171 = !DILocation(line: 135, column: 9, scope: !168)
!172 = !DILocation(line: 137, column: 1, scope: !158)
!173 = distinct !DISubprogram(name: "le_device_db_set_local_bd_addr", scope: !3, file: !3, line: 139, type: !174, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !177)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!177 = !{!178}
!178 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !173, file: !3, line: 139, type: !176)
!179 = !DILocation(line: 139, column: 47, scope: !173)
!180 = !DILocation(line: 142, column: 1, scope: !173)
!181 = distinct !DISubprogram(name: "le_device_db_count", scope: !3, file: !3, line: 145, type: !182, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!18}
!184 = !{!185, !186}
!185 = !DILocalVariable(name: "i", scope: !181, file: !3, line: 147, type: !18)
!186 = !DILocalVariable(name: "counter", scope: !181, file: !3, line: 148, type: !18)
!187 = !DILocation(line: 148, column: 9, scope: !181)
!188 = !DILocation(line: 150, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !3, line: 150, column: 9)
!190 = !DILocation(line: 154, column: 21, scope: !191)
!191 = !DILexicalBlockFile(scope: !192, file: !3, discriminator: 1)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 154, column: 5)
!193 = distinct !DILexicalBlock(scope: !181, file: !3, line: 154, column: 5)
!194 = !DILocation(line: 154, column: 19, scope: !191)
!195 = !DILocation(line: 150, column: 9, scope: !181)
!196 = !DILocation(line: 147, column: 9, scope: !181)
!197 = !DILocation(line: 155, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 155, column: 13)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 154, column: 52)
!200 = !DILocation(line: 155, column: 36, scope: !198)
!201 = !DILocation(line: 155, column: 13, scope: !199)
!202 = !DILocation(line: 154, column: 48, scope: !203)
!203 = !DILexicalBlockFile(scope: !192, file: !3, discriminator: 2)
!204 = !DILocation(line: 154, column: 5, scope: !205)
!205 = !DILexicalBlockFile(scope: !193, file: !3, discriminator: 1)
!206 = distinct !{!206, !207, !208}
!207 = !DILocation(line: 154, column: 5, scope: !193)
!208 = !DILocation(line: 158, column: 5, scope: !193)
!209 = !DILocation(line: 160, column: 1, scope: !181)
!210 = distinct !DISubprogram(name: "le_device_db_add", scope: !3, file: !3, line: 172, type: !211, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!18, !18, !176, !176}
!213 = !{!214, !215, !216, !217, !218}
!214 = !DILocalVariable(name: "addr_type", arg: 1, scope: !210, file: !3, line: 172, type: !18)
!215 = !DILocalVariable(name: "addr", arg: 2, scope: !210, file: !3, line: 172, type: !176)
!216 = !DILocalVariable(name: "irk", arg: 3, scope: !210, file: !3, line: 172, type: !176)
!217 = !DILocalVariable(name: "i", scope: !210, file: !3, line: 174, type: !18)
!218 = !DILocalVariable(name: "index", scope: !210, file: !3, line: 175, type: !18)
!219 = !DILocation(line: 172, column: 26, scope: !210)
!220 = !DILocation(line: 172, column: 47, scope: !210)
!221 = !DILocation(line: 172, column: 62, scope: !210)
!222 = !DILocation(line: 175, column: 9, scope: !210)
!223 = !DILocation(line: 177, column: 10, scope: !224)
!224 = distinct !DILexicalBlock(scope: !210, file: !3, line: 177, column: 9)
!225 = !DILocation(line: 177, column: 9, scope: !210)
!226 = !DILocation(line: 174, column: 9, scope: !210)
!227 = !DILocation(line: 181, column: 21, scope: !228)
!228 = !DILexicalBlockFile(scope: !229, file: !3, discriminator: 1)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 181, column: 5)
!230 = distinct !DILexicalBlock(scope: !210, file: !3, line: 181, column: 5)
!231 = !DILocation(line: 181, column: 19, scope: !228)
!232 = !DILocation(line: 181, column: 5, scope: !233)
!233 = !DILexicalBlockFile(scope: !230, file: !3, discriminator: 1)
!234 = !DILocation(line: 182, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 182, column: 13)
!236 = distinct !DILexicalBlock(scope: !229, file: !3, line: 181, column: 52)
!237 = !DILocation(line: 182, column: 36, scope: !235)
!238 = !DILocation(line: 182, column: 46, scope: !235)
!239 = !DILocation(line: 182, column: 13, scope: !236)
!240 = !DILocation(line: 181, column: 48, scope: !241)
!241 = !DILexicalBlockFile(scope: !229, file: !3, discriminator: 2)
!242 = distinct !{!242, !243, !244}
!243 = !DILocation(line: 181, column: 5, scope: !230)
!244 = !DILocation(line: 186, column: 5, scope: !230)
!245 = !DILocation(line: 188, column: 15, scope: !246)
!246 = distinct !DILexicalBlock(scope: !210, file: !3, line: 188, column: 9)
!247 = !DILocation(line: 188, column: 9, scope: !210)
!248 = !DILocation(line: 189, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 189, column: 9)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 188, column: 20)
!251 = !{!58, !58, i64 0}
!252 = !DILocation(line: 189, column: 9, scope: !250)
!253 = !DILocation(line: 189, column: 9, scope: !254)
!254 = !DILexicalBlockFile(scope: !249, file: !3, discriminator: 1)
!255 = !DILocation(line: 196, column: 42, scope: !210)
!256 = !DILocation(line: 197, column: 5, scope: !210)
!257 = !DILocation(line: 198, column: 12, scope: !210)
!258 = !DILocation(line: 198, column: 5, scope: !210)
!259 = !DILocation(line: 202, column: 5, scope: !210)
!260 = !DILocation(line: 203, column: 1, scope: !210)
!261 = distinct !DISubprogram(name: "le_device_db_info", scope: !3, file: !3, line: 207, type: !262, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !265)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !18, !264, !176, !176}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(name: "index", arg: 1, scope: !261, file: !3, line: 207, type: !18)
!267 = !DILocalVariable(name: "addr_type", arg: 2, scope: !261, file: !3, line: 207, type: !264)
!268 = !DILocalVariable(name: "addr", arg: 3, scope: !261, file: !3, line: 207, type: !176)
!269 = !DILocalVariable(name: "irk", arg: 4, scope: !261, file: !3, line: 207, type: !176)
!270 = !DILocation(line: 207, column: 28, scope: !261)
!271 = !DILocation(line: 207, column: 40, scope: !261)
!272 = !DILocation(line: 207, column: 61, scope: !261)
!273 = !DILocation(line: 207, column: 76, scope: !261)
!274 = !DILocation(line: 209, column: 15, scope: !275)
!275 = distinct !DILexicalBlock(scope: !261, file: !3, line: 209, column: 9)
!276 = !DILocation(line: 209, column: 9, scope: !261)
!277 = !DILocation(line: 211, column: 13, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !3, line: 209, column: 20)
!279 = !DILocation(line: 212, column: 24, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 211, column: 24)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 211, column: 13)
!282 = !DILocation(line: 213, column: 9, scope: !280)
!283 = !DILocation(line: 214, column: 13, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !3, line: 214, column: 13)
!285 = !DILocation(line: 214, column: 13, scope: !278)
!286 = !DILocation(line: 215, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 214, column: 19)
!288 = !DILocation(line: 216, column: 9, scope: !287)
!289 = !DILocation(line: 217, column: 13, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !3, line: 217, column: 13)
!291 = !DILocation(line: 217, column: 13, scope: !278)
!292 = !DILocation(line: 218, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !3, line: 217, column: 18)
!294 = !DILocation(line: 219, column: 9, scope: !293)
!295 = !DILocation(line: 223, column: 9, scope: !261)
!296 = !DILocation(line: 224, column: 22, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 223, column: 20)
!298 = distinct !DILexicalBlock(scope: !261, file: !3, line: 223, column: 9)
!299 = !DILocation(line: 224, column: 49, scope: !297)
!300 = !DILocation(line: 224, column: 20, scope: !297)
!301 = !DILocation(line: 225, column: 5, scope: !297)
!302 = !DILocation(line: 226, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !261, file: !3, line: 226, column: 9)
!304 = !DILocation(line: 226, column: 9, scope: !261)
!305 = !DILocation(line: 227, column: 22, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 226, column: 15)
!307 = !DILocation(line: 227, column: 9, scope: !306)
!308 = !DILocation(line: 228, column: 5, scope: !306)
!309 = !DILocation(line: 229, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !261, file: !3, line: 229, column: 9)
!311 = !DILocation(line: 229, column: 9, scope: !261)
!312 = !DILocation(line: 230, column: 21, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 229, column: 14)
!314 = !DILocation(line: 230, column: 9, scope: !313)
!315 = !DILocation(line: 231, column: 5, scope: !313)
!316 = !DILocation(line: 232, column: 1, scope: !261)
!317 = distinct !DISubprogram(name: "le_device_db_encryption_set", scope: !3, file: !3, line: 234, type: !318, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !18, !35, !176, !176, !18, !18, !18}
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328}
!321 = !DILocalVariable(name: "index", arg: 1, scope: !317, file: !3, line: 234, type: !18)
!322 = !DILocalVariable(name: "ediv", arg: 2, scope: !317, file: !3, line: 234, type: !35)
!323 = !DILocalVariable(name: "rand", arg: 3, scope: !317, file: !3, line: 234, type: !176)
!324 = !DILocalVariable(name: "ltk", arg: 4, scope: !317, file: !3, line: 234, type: !176)
!325 = !DILocalVariable(name: "key_size", arg: 5, scope: !317, file: !3, line: 234, type: !18)
!326 = !DILocalVariable(name: "authenticated", arg: 6, scope: !317, file: !3, line: 234, type: !18)
!327 = !DILocalVariable(name: "authorized", arg: 7, scope: !317, file: !3, line: 234, type: !18)
!328 = !DILocalVariable(name: "device", scope: !317, file: !3, line: 242, type: !13)
!329 = !DILocation(line: 234, column: 38, scope: !317)
!330 = !DILocation(line: 234, column: 54, scope: !317)
!331 = !DILocation(line: 234, column: 68, scope: !317)
!332 = !DILocation(line: 234, column: 86, scope: !317)
!333 = !DILocation(line: 234, column: 95, scope: !317)
!334 = !DILocation(line: 234, column: 109, scope: !317)
!335 = !DILocation(line: 234, column: 128, scope: !317)
!336 = !DILocation(line: 238, column: 15, scope: !337)
!337 = distinct !DILexicalBlock(scope: !317, file: !3, line: 238, column: 9)
!338 = !DILocation(line: 238, column: 9, scope: !317)
!339 = !DILocation(line: 242, column: 37, scope: !317)
!340 = !DILocation(line: 242, column: 28, scope: !317)
!341 = !DILocation(line: 243, column: 13, scope: !317)
!342 = !DILocation(line: 243, column: 18, scope: !317)
!343 = !{!135, !136, i64 42}
!344 = !DILocation(line: 244, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !317, file: !3, line: 244, column: 9)
!346 = !DILocation(line: 244, column: 9, scope: !317)
!347 = !DILocation(line: 245, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 244, column: 15)
!349 = !DILocation(line: 246, column: 5, scope: !348)
!350 = !DILocation(line: 247, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !317, file: !3, line: 247, column: 9)
!352 = !DILocation(line: 247, column: 9, scope: !317)
!353 = !DILocation(line: 248, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !3, line: 247, column: 14)
!355 = !DILocation(line: 249, column: 5, scope: !354)
!356 = !DILocation(line: 250, column: 24, scope: !317)
!357 = !DILocation(line: 250, column: 13, scope: !317)
!358 = !DILocation(line: 250, column: 22, scope: !317)
!359 = !{!135, !58, i64 52}
!360 = !DILocation(line: 251, column: 29, scope: !317)
!361 = !DILocation(line: 251, column: 13, scope: !317)
!362 = !DILocation(line: 251, column: 27, scope: !317)
!363 = !{!135, !58, i64 53}
!364 = !DILocation(line: 252, column: 26, scope: !317)
!365 = !DILocation(line: 252, column: 13, scope: !317)
!366 = !DILocation(line: 252, column: 24, scope: !317)
!367 = !{!135, !58, i64 54}
!368 = !DILocation(line: 253, column: 1, scope: !317)
!369 = !DILocation(line: 253, column: 1, scope: !370)
!370 = !DILexicalBlockFile(scope: !317, file: !3, discriminator: 1)
!371 = distinct !DISubprogram(name: "le_device_db_encryption_get", scope: !3, file: !3, line: 255, type: !372, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !375)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !18, !374, !176, !176, !264, !264, !264}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383}
!376 = !DILocalVariable(name: "index", arg: 1, scope: !371, file: !3, line: 255, type: !18)
!377 = !DILocalVariable(name: "ediv", arg: 2, scope: !371, file: !3, line: 255, type: !374)
!378 = !DILocalVariable(name: "rand", arg: 3, scope: !371, file: !3, line: 255, type: !176)
!379 = !DILocalVariable(name: "ltk", arg: 4, scope: !371, file: !3, line: 255, type: !176)
!380 = !DILocalVariable(name: "key_size", arg: 5, scope: !371, file: !3, line: 255, type: !264)
!381 = !DILocalVariable(name: "authenticated", arg: 6, scope: !371, file: !3, line: 255, type: !264)
!382 = !DILocalVariable(name: "authorized", arg: 7, scope: !371, file: !3, line: 255, type: !264)
!383 = !DILocalVariable(name: "device", scope: !371, file: !3, line: 261, type: !13)
!384 = !DILocation(line: 255, column: 38, scope: !371)
!385 = !DILocation(line: 255, column: 55, scope: !371)
!386 = !DILocation(line: 255, column: 69, scope: !371)
!387 = !DILocation(line: 255, column: 87, scope: !371)
!388 = !DILocation(line: 255, column: 97, scope: !371)
!389 = !DILocation(line: 255, column: 112, scope: !371)
!390 = !DILocation(line: 255, column: 132, scope: !371)
!391 = !DILocation(line: 257, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !371, file: !3, line: 257, column: 9)
!393 = !DILocation(line: 257, column: 9, scope: !371)
!394 = !DILocation(line: 261, column: 37, scope: !371)
!395 = !DILocation(line: 261, column: 28, scope: !371)
!396 = !DILocation(line: 264, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !371, file: !3, line: 264, column: 9)
!398 = !DILocation(line: 264, column: 9, scope: !371)
!399 = !DILocation(line: 265, column: 25, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 264, column: 15)
!401 = !DILocation(line: 265, column: 15, scope: !400)
!402 = !{!136, !136, i64 0}
!403 = !DILocation(line: 266, column: 5, scope: !400)
!404 = !DILocation(line: 267, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !371, file: !3, line: 267, column: 9)
!406 = !DILocation(line: 267, column: 9, scope: !371)
!407 = !DILocation(line: 268, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 267, column: 15)
!409 = !DILocation(line: 269, column: 5, scope: !408)
!410 = !DILocation(line: 270, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !371, file: !3, line: 270, column: 9)
!412 = !DILocation(line: 270, column: 9, scope: !371)
!413 = !DILocation(line: 271, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !3, line: 270, column: 14)
!415 = !DILocation(line: 272, column: 5, scope: !414)
!416 = !DILocation(line: 273, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !371, file: !3, line: 273, column: 9)
!418 = !DILocation(line: 273, column: 9, scope: !371)
!419 = !DILocation(line: 274, column: 29, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 273, column: 19)
!421 = !DILocation(line: 274, column: 21, scope: !420)
!422 = !DILocation(line: 274, column: 19, scope: !420)
!423 = !DILocation(line: 275, column: 5, scope: !420)
!424 = !DILocation(line: 276, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !371, file: !3, line: 276, column: 9)
!426 = !DILocation(line: 276, column: 9, scope: !371)
!427 = !DILocation(line: 277, column: 34, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 276, column: 24)
!429 = !DILocation(line: 277, column: 26, scope: !428)
!430 = !DILocation(line: 277, column: 24, scope: !428)
!431 = !DILocation(line: 278, column: 5, scope: !428)
!432 = !DILocation(line: 279, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !371, file: !3, line: 279, column: 9)
!434 = !DILocation(line: 279, column: 9, scope: !371)
!435 = !DILocation(line: 280, column: 31, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 279, column: 21)
!437 = !DILocation(line: 280, column: 23, scope: !436)
!438 = !DILocation(line: 280, column: 21, scope: !436)
!439 = !DILocation(line: 281, column: 5, scope: !436)
!440 = !DILocation(line: 282, column: 1, scope: !441)
!441 = !DILexicalBlockFile(scope: !371, file: !3, discriminator: 1)
!442 = distinct !DISubprogram(name: "le_device_db_dump", scope: !3, file: !3, line: 369, type: !49, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !443)
!443 = !{!444}
!444 = !DILocalVariable(name: "i", scope: !442, file: !3, line: 372, type: !18)
!445 = !DILocation(line: 372, column: 9, scope: !442)
!446 = !DILocation(line: 384, column: 1, scope: !442)
