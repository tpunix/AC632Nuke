; ModuleID = 'remote_device_list.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/remote_device_list.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.remote_ctrl_t = type { i8, i8, i8, i8, [10 x i8] }
%struct.BLE_REMOTE_LIST_T = type { [16 x i8], [16 x i8], [6 x i8], i8, i8, [8 x i8], [2 x i8], i8, i8 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@config_le_sm_support_enable = external local_unnamed_addr constant i32, align 4
@remote_info_hdl = internal global %struct.remote_ctrl_t { i8 0, i8 0, i8 -1, i8 -1, [10 x i8] zeroinitializer }, section ".bt_stack_data", align 1, !dbg !14
@.str = private unnamed_addr constant [20 x i8] c"###fix ble list:%d\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"###reset ble list\00"

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_get_conn_addr_item(i8*, i8 zeroext, i8 zeroext, %struct.BLE_REMOTE_LIST_T*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !38 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !73, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i8 %1, metadata !74, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i8 %2, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %3, metadata !76, metadata !DIExpression()), !dbg !80
  %5 = tail call fastcc zeroext i8 @get_conn_addr_item(i8* %0, i8 zeroext %1, %struct.BLE_REMOTE_LIST_T* %3, i8 zeroext %2) #7, !dbg !81
  ret i8 %5, !dbg !82
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @get_conn_addr_item(i8*, i8 zeroext, %struct.BLE_REMOTE_LIST_T*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !83 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !87, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i8 %1, metadata !88, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %2, metadata !89, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 %3, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8 0, metadata !94, metadata !DIExpression()), !dbg !99
  %5 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !100, !tbaa !102
  %6 = icmp eq i8 %5, 0, !dbg !106
  br i1 %6, label %43, label %7, !dbg !107

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 0, i32 0, !dbg !108
  %9 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 2, i32 0, !dbg !118
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !119
  %10 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !120
  %11 = and i8 %10, 15, !dbg !120
  %12 = icmp eq i8 %11, 0, !dbg !122
  br i1 %12, label %43, label %13, !dbg !123

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i8 %3, -1
  %15 = icmp eq i8 %1, 0
  %16 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 3
  br label %17, !dbg !123

; <label>:17:                                     ; preds = %35, %13
  %18 = phi i32 [ 0, %13 ], [ %36, %35 ]
  %19 = trunc i32 %18 to i8, !dbg !125
  %20 = tail call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* %2, i8 zeroext %19) #7, !dbg !126
  %21 = icmp eq i8 %20, 0, !dbg !126
  br i1 %21, label %35, label %22, !dbg !127

; <label>:22:                                     ; preds = %17
  br i1 %14, label %28, label %23, !dbg !128

; <label>:23:                                     ; preds = %22
  %24 = load i8, i8* %16, align 1, !dbg !129
  %25 = lshr i8 %24, 4, !dbg !129
  %26 = and i8 %25, 1, !dbg !129
  %27 = icmp eq i8 %26, %3, !dbg !131
  br i1 %27, label %28, label %35, !dbg !132

; <label>:28:                                     ; preds = %23, %22
  br i1 %15, label %29, label %32, !dbg !134

; <label>:29:                                     ; preds = %28
  %30 = tail call i32 @memcmp(i8* %9, i8* %0, i32 6) #7, !dbg !135
  %31 = icmp eq i32 %30, 0, !dbg !138
  br i1 %31, label %41, label %35, !dbg !139

; <label>:32:                                     ; preds = %28
  %33 = tail call fastcc zeroext i8 @check_random_addr(i8* %0, i8* %8, i8* %9) #7, !dbg !140
  %34 = icmp eq i8 %33, 1, !dbg !141
  br i1 %34, label %41, label %35, !dbg !142

; <label>:35:                                     ; preds = %32, %29, %23, %17
  %36 = add i32 %18, 1, !dbg !144
  call void @llvm.dbg.value(metadata i32 %36, metadata !91, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i32 %36, metadata !91, metadata !DIExpression()), !dbg !119
  %37 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !120
  %38 = and i8 %37, 15, !dbg !120
  %39 = zext i8 %38 to i32, !dbg !146
  %40 = icmp ult i32 %36, %39, !dbg !122
  br i1 %40, label %17, label %41, !dbg !123, !llvm.loop !147

; <label>:41:                                     ; preds = %35, %32, %29
  %42 = phi i8 [ 1, %32 ], [ 1, %29 ], [ 0, %35 ]
  br label %43, !dbg !150

; <label>:43:                                     ; preds = %41, %7, %4
  %44 = phi i8 [ 0, %4 ], [ 0, %7 ], [ %42, %41 ]
  ret i8 %44, !dbg !150
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @ble_list_get_count() local_unnamed_addr #0 section ".bt_stack_code" !dbg !151 {
  %1 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !156, !tbaa !158
  %2 = icmp eq i32 %1, 0, !dbg !156
  br i1 %2, label %12, label %3, !dbg !160

; <label>:3:                                      ; preds = %0
  %4 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !161, !tbaa !102
  %5 = icmp ugt i8 %4, 10, !dbg !163
  br i1 %5, label %6, label %9, !dbg !164

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc zeroext i8 @reflash_remote_info(i8 zeroext 0) #7, !dbg !165
  %8 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !tbaa !102
  br label %9, !dbg !167

; <label>:9:                                      ; preds = %6, %3
  %10 = phi i8 [ %8, %6 ], [ %4, %3 ], !dbg !168
  %11 = zext i8 %10 to i16, !dbg !169
  br label %12, !dbg !170

; <label>:12:                                     ; preds = %9, %0
  %13 = phi i16 [ %11, %9 ], [ 0, %0 ]
  ret i16 %13, !dbg !171
}

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @reflash_remote_info(i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !172 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !180
  %2 = icmp eq i8 %0, 0, !dbg !181
  br i1 %2, label %3, label %14, !dbg !183

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @syscfg_read(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !184
  call void @llvm.dbg.value(metadata i32 %4, metadata !177, metadata !DIExpression()), !dbg !180
  %5 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), align 1, !dbg !186
  %6 = icmp ne i32 %4, 14, !dbg !189
  %7 = icmp ne i8 %5, 6, !dbg !189
  %8 = or i1 %6, %7, !dbg !189
  %9 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !190
  %10 = icmp ugt i8 %9, 10, !dbg !191
  %11 = or i1 %8, %10, !dbg !189
  br i1 %11, label %12, label %16, !dbg !189

; <label>:12:                                     ; preds = %3
  store i32 6662, i32* bitcast (%struct.remote_ctrl_t* @remote_info_hdl to i32*), align 1, !dbg !192
  tail call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 0), i8 -1, i32 10, i32 1, i1 false), !dbg !194
  %13 = tail call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !195
  br label %16, !dbg !196

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !197
  br label %16

; <label>:16:                                     ; preds = %14, %12, %3
  %17 = phi i8 [ 0, %12 ], [ 1, %3 ], [ 1, %14 ]
  ret i8 %17, !dbg !199
}

; Function Attrs: nounwind optsize
define hidden void @ble_list_config_reset(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !200 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i8 %1, metadata !205, metadata !DIExpression()), !dbg !207
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !208, !tbaa !158
  %4 = icmp eq i32 %3, 0, !dbg !208
  br i1 %4, label %28, label %5, !dbg !210

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc zeroext i8 @reflash_remote_info(i8 zeroext 0) #7, !dbg !211
  call void @llvm.dbg.value(metadata i8 10, metadata !204, metadata !DIExpression()), !dbg !206
  %7 = icmp ult i8 %0, 10, !dbg !212
  %8 = select i1 %7, i8 %0, i8 10, !dbg !212
  call void @llvm.dbg.value(metadata i8 %8, metadata !204, metadata !DIExpression()), !dbg !206
  %9 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !213
  %10 = and i8 %9, 15, !dbg !213
  %11 = icmp eq i8 %10, %8, !dbg !215
  br i1 %11, label %15, label %12, !dbg !216

; <label>:12:                                     ; preds = %5
  %13 = tail call zeroext i8 @ble_list_clear_all() #7, !dbg !217
  %14 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1
  br label %15, !dbg !219

; <label>:15:                                     ; preds = %12, %5
  %16 = phi i8 [ %9, %5 ], [ %14, %12 ], !dbg !220
  %17 = shl i8 %1, 4, !dbg !220
  %18 = and i8 %17, 48, !dbg !220
  %19 = and i8 %16, -64, !dbg !220
  %20 = or i8 %18, %8, !dbg !220
  %21 = or i8 %20, %19, !dbg !221
  store i8 %21, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !221
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !224
  %22 = tail call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !225
  %23 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !226
  %24 = and i8 %23, 15, !dbg !226
  %25 = icmp eq i8 %24, 0, !dbg !228
  br i1 %25, label %27, label %26, !dbg !229

; <label>:26:                                     ; preds = %15
  tail call void @sm_allow_ltk_reconstruction_without_le_device_db_entry(i32 0) #8, !dbg !230
  br label %28, !dbg !232

; <label>:27:                                     ; preds = %15
  tail call void @sm_allow_ltk_reconstruction_without_le_device_db_entry(i32 1) #8, !dbg !233
  br label %28

; <label>:28:                                     ; preds = %27, %26, %2
  ret void, !dbg !235
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_clear_all() local_unnamed_addr #0 section ".bt_stack_code" !dbg !236 {
  %1 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  %2 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %1, i32 0, i32 0, i32 0, !dbg !243
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %2) #6, !dbg !243
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !244, !tbaa !158
  %4 = icmp eq i32 %3, 0, !dbg !244
  br i1 %4, label %27, label %5, !dbg !246

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.value(metadata i8 0, metadata !240, metadata !DIExpression()), !dbg !247
  %6 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !248
  %7 = and i8 %6, 15, !dbg !248
  %8 = icmp eq i8 %7, 0, !dbg !252
  br i1 %8, label %25, label %9, !dbg !253

; <label>:9:                                      ; preds = %5
  br label %10, !dbg !255

; <label>:10:                                     ; preds = %18, %9
  %11 = phi i16 [ %20, %18 ], [ 0, %9 ]
  %12 = phi i8 [ %19, %18 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %1, metadata !242, metadata !DIExpression(DW_OP_deref)), !dbg !255
  %13 = call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* nonnull %1, i8 zeroext %12) #7, !dbg !256
  %14 = icmp eq i8 %13, 0, !dbg !256
  br i1 %14, label %18, label %15, !dbg !259

; <label>:15:                                     ; preds = %10
  call void @llvm.memset.p0i8.i32(i8* nonnull %2, i8 -1, i32 52, i32 1, i1 false), !dbg !260
  %16 = add nuw nsw i16 %11, 118, !dbg !262
  %17 = call i32 @syscfg_write(i16 zeroext %16, i8* nonnull %2, i16 zeroext 52) #8, !dbg !263
  br label %18, !dbg !264

; <label>:18:                                     ; preds = %15, %10
  %19 = add i8 %12, 1, !dbg !265
  call void @llvm.dbg.value(metadata i8 %19, metadata !240, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8 %19, metadata !240, metadata !DIExpression()), !dbg !247
  %20 = zext i8 %19 to i16, !dbg !267
  %21 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !248
  %22 = and i8 %21, 15, !dbg !248
  %23 = icmp ult i8 %19, %22, !dbg !252
  br i1 %23, label %10, label %24, !dbg !253, !llvm.loop !268

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !271

; <label>:25:                                     ; preds = %24, %5
  store i8 0, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !271, !tbaa !102
  store i8 0, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 3), align 1, !dbg !272, !tbaa !273
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 0), i8 -1, i32 10, i32 1, i1 false), !dbg !274
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !277
  %26 = call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !278
  br label %27, !dbg !279

; <label>:27:                                     ; preds = %25, %0
  %28 = phi i8 [ 1, %25 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %2) #6, !dbg !280
  ret i8 %28, !dbg !280
}

; Function Attrs: optsize
declare void @sm_allow_ltk_reconstruction_without_le_device_db_entry(i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !281 {
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %0, metadata !285, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8 %1, metadata !286, metadata !DIExpression()), !dbg !289
  %3 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !290
  %4 = and i8 %3, 15, !dbg !290
  %5 = icmp ugt i8 %4, %1, !dbg !292
  br i1 %5, label %6, label %18, !dbg !293

; <label>:6:                                      ; preds = %2
  %7 = zext i8 %1 to i16, !dbg !294
  %8 = add nuw nsw i16 %7, 118, !dbg !295
  %9 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %0, i32 0, i32 0, i32 0, !dbg !296
  %10 = tail call i32 @syscfg_read(i16 zeroext %8, i8* %9, i16 zeroext 52) #8, !dbg !297
  call void @llvm.dbg.value(metadata i32 %10, metadata !287, metadata !DIExpression()), !dbg !298
  %11 = icmp eq i32 %10, 52, !dbg !299
  br i1 %11, label %12, label %17, !dbg !301

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %0, i32 0, i32 3, !dbg !302
  %14 = load i8, i8* %13, align 1, !dbg !302
  %15 = and i8 %14, 15, !dbg !302
  %16 = icmp eq i8 %15, 10, !dbg !304
  br i1 %16, label %18, label %17, !dbg !305

; <label>:17:                                     ; preds = %12, %6
  br label %18, !dbg !307

; <label>:18:                                     ; preds = %17, %12, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %17 ], [ 1, %12 ]
  ret i8 %19, !dbg !308
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: optsize
declare i32 @syscfg_write(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_pair_add(i8 zeroext, i8*, i8 zeroext, i8*, i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !309 {
  %7 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  %8 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !313, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i8* %1, metadata !314, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i8 %2, metadata !315, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i8* %3, metadata !316, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i8* %4, metadata !317, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i8* %5, metadata !318, metadata !DIExpression()), !dbg !328
  %9 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !329, !tbaa !158
  %10 = icmp eq i32 %9, 0, !dbg !329
  br i1 %10, label %142, label %11, !dbg !331

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 0, i32 0, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %12) #6, !dbg !332
  %13 = icmp eq i8 %0, 0, !dbg !333
  %14 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !335
  %15 = load i8, i8* %14, align 1, !dbg !335
  br i1 %13, label %21, label %16, !dbg !337

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %5, align 1, !dbg !338, !tbaa !340
  %18 = and i8 %17, 3, !dbg !341
  %19 = and i8 %15, 12, !dbg !342
  %20 = or i8 %19, %18, !dbg !343
  call void @llvm.dbg.value(metadata i8 %20, metadata !320, metadata !DIExpression()), !dbg !344
  br label %21, !dbg !345

; <label>:21:                                     ; preds = %16, %11
  %22 = phi i8 [ %20, %16 ], [ %15, %11 ]
  call void @llvm.dbg.value(metadata i8 %22, metadata !320, metadata !DIExpression()), !dbg !344
  call void @llvm.memset.p0i8.i32(i8* nonnull %12, i8 -1, i32 52, i32 1, i1 false), !dbg !346
  call void @llvm.dbg.value(metadata i8* %1, metadata !347, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i8 %2, metadata !352, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8* %3, metadata !353, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i8 %22, metadata !354, metadata !DIExpression()), !dbg !363
  %23 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %7, i32 0, i32 0, i32 0, !dbg !364
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %23) #6, !dbg !364
  call void @llvm.dbg.value(metadata i8 0, metadata !357, metadata !DIExpression()), !dbg !365
  %24 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !366, !tbaa !102
  %25 = icmp eq i8 %24, 0, !dbg !368
  br i1 %25, label %72, label %26, !dbg !369

; <label>:26:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i8 0, metadata !357, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i32 0, metadata !355, metadata !DIExpression()), !dbg !370
  %27 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !371
  %28 = and i8 %27, 15, !dbg !371
  %29 = icmp eq i8 %28, 0, !dbg !375
  br i1 %29, label %72, label %30, !dbg !376

; <label>:30:                                     ; preds = %26
  %31 = icmp eq i8 %2, 0
  %32 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %7, i32 0, i32 2, i32 0
  %33 = and i8 %22, 4
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %7, i32 0, i32 4
  br label %36, !dbg !376

; <label>:36:                                     ; preds = %62, %30
  %37 = phi i32 [ 0, %30 ], [ %63, %62 ]
  %38 = trunc i32 %37 to i8, !dbg !378
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %7, metadata !356, metadata !DIExpression(DW_OP_deref)), !dbg !381
  %39 = call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* nonnull %7, i8 zeroext %38) #8, !dbg !382
  %40 = icmp eq i8 %39, 0, !dbg !382
  br i1 %40, label %62, label %41, !dbg !383

; <label>:41:                                     ; preds = %36
  br i1 %31, label %58, label %42, !dbg !384

; <label>:42:                                     ; preds = %41
  br i1 %34, label %43, label %51, !dbg !386

; <label>:43:                                     ; preds = %42
  %44 = load i8, i8* %35, align 1, !dbg !390, !tbaa !391
  %45 = and i8 %44, 4, !dbg !393
  %46 = icmp eq i8 %45, 0, !dbg !394
  br i1 %46, label %47, label %51, !dbg !395

; <label>:47:                                     ; preds = %43
  %48 = call i32 @memcmp(i8* nonnull %32, i8* %1, i32 6) #8, !dbg !397
  %49 = icmp eq i32 %48, 0, !dbg !397
  br i1 %49, label %50, label %62, !dbg !400

; <label>:50:                                     ; preds = %47
  call fastcc void @delete_device_by_index(i8 zeroext %38) #8, !dbg !401
  call void @llvm.dbg.value(metadata i8 1, metadata !357, metadata !DIExpression()), !dbg !365
  br label %62, !dbg !403

; <label>:51:                                     ; preds = %43, %42
  %52 = call i32 @memcmp(i8* %3, i8* nonnull %23, i32 16) #8, !dbg !404
  %53 = icmp eq i32 %52, 0, !dbg !407
  br i1 %53, label %54, label %62, !dbg !408

; <label>:54:                                     ; preds = %51
  %55 = call fastcc zeroext i8 @check_random_addr(i8* %1, i8* %3, i8* %32) #8, !dbg !409
  %56 = icmp eq i8 %55, 1, !dbg !410
  br i1 %56, label %57, label %62, !dbg !411

; <label>:57:                                     ; preds = %54
  call fastcc void @delete_device_by_index(i8 zeroext %38) #8, !dbg !413
  call void @llvm.dbg.value(metadata i8 1, metadata !357, metadata !DIExpression()), !dbg !365
  br label %62, !dbg !415

; <label>:58:                                     ; preds = %41
  %59 = call i32 @memcmp(i8* %32, i8* %1, i32 6) #8, !dbg !416
  %60 = icmp eq i32 %59, 0, !dbg !419
  br i1 %60, label %61, label %62, !dbg !420

; <label>:61:                                     ; preds = %58
  call fastcc void @delete_device_by_index(i8 zeroext %38) #8, !dbg !421
  call void @llvm.dbg.value(metadata i8 1, metadata !357, metadata !DIExpression()), !dbg !365
  br label %62, !dbg !423

; <label>:62:                                     ; preds = %61, %58, %57, %54, %51, %50, %47, %36
  %63 = add i32 %37, 1, !dbg !424
  call void @llvm.dbg.value(metadata i32 %63, metadata !355, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 %63, metadata !355, metadata !DIExpression()), !dbg !370
  %64 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !371
  %65 = and i8 %64, 15, !dbg !371
  %66 = zext i8 %65 to i32, !dbg !426
  %67 = icmp ult i32 %63, %66, !dbg !375
  br i1 %67, label %36, label %68, !dbg !376, !llvm.loop !427

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 3
  %70 = load i8, i8* %69, align 1
  %71 = and i8 %70, -33, !dbg !430
  br label %72, !dbg !430

; <label>:72:                                     ; preds = %68, %26, %21
  %73 = phi i8 [ %71, %68 ], [ -33, %21 ], [ -33, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %23) #6, !dbg !430
  %74 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 3, !dbg !431
  %75 = shl i8 %2, 5, !dbg !432
  %76 = and i8 %75, 32, !dbg !432
  %77 = or i8 %73, %76, !dbg !432
  store i8 %77, i8* %74, align 1, !dbg !432
  %78 = and i8 %22, 8, !dbg !433
  %79 = icmp eq i8 %78, 0, !dbg !433
  br i1 %79, label %82, label %80, !dbg !435

; <label>:80:                                     ; preds = %72
  %81 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 2, i32 0, !dbg !436
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %81, i8* %1, i32 6, i32 1, i1 false), !dbg !436
  br label %96, !dbg !438

; <label>:82:                                     ; preds = %72
  %83 = icmp eq i8 %2, 0, !dbg !439
  br i1 %83, label %91, label %84, !dbg !439

; <label>:84:                                     ; preds = %82
  %85 = load i8, i8* %1, align 1, !dbg !442, !tbaa !340
  %86 = and i8 %85, -64, !dbg !444
  %87 = icmp eq i8 %86, 64, !dbg !445
  br i1 %87, label %94, label %88, !dbg !446

; <label>:88:                                     ; preds = %84
  %89 = or i8 %22, 8, !dbg !448
  call void @llvm.dbg.value(metadata i8 %89, metadata !320, metadata !DIExpression()), !dbg !344
  %90 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 2, i32 0, !dbg !450
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %90, i8* nonnull %1, i32 6, i32 1, i1 false), !dbg !450
  br label %96, !dbg !451

; <label>:91:                                     ; preds = %82
  %92 = or i8 %22, 8, !dbg !452
  call void @llvm.dbg.value(metadata i8 %92, metadata !320, metadata !DIExpression()), !dbg !344
  %93 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 2, i32 0, !dbg !455
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %93, i8* %1, i32 6, i32 1, i1 false), !dbg !455
  br label %96, !dbg !456

; <label>:94:                                     ; preds = %84
  %95 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 2, i32 0, !dbg !457
  call void @llvm.memset.p0i8.i32(i8* %95, i8 -1, i32 6, i32 1, i1 false), !dbg !457
  br label %96

; <label>:96:                                     ; preds = %94, %91, %88, %80
  %97 = phi i8 [ %22, %80 ], [ %89, %88 ], [ %92, %91 ], [ %22, %94 ]
  call void @llvm.dbg.value(metadata i8 %97, metadata !320, metadata !DIExpression()), !dbg !344
  %98 = zext i8 %97 to i32, !dbg !459
  %99 = and i32 %98, 4, !dbg !461
  %100 = icmp eq i32 %99, 0, !dbg !461
  br i1 %100, label %102, label %101, !dbg !462

; <label>:101:                                    ; preds = %96
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %12, i8* %3, i32 16, i32 1, i1 false), !dbg !463
  br label %103, !dbg !465

; <label>:102:                                    ; preds = %96
  call void @llvm.memset.p0i8.i32(i8* nonnull %12, i8 -1, i32 16, i32 1, i1 false), !dbg !466
  br label %103

; <label>:103:                                    ; preds = %102, %101
  %104 = and i32 %98, 1, !dbg !468
  %105 = icmp eq i32 %104, 0, !dbg !468
  %106 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 1, i32 0
  br i1 %105, label %108, label %107, !dbg !470

; <label>:107:                                    ; preds = %103
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %106, i8* %4, i32 16, i32 1, i1 false), !dbg !471
  br label %109, !dbg !473

; <label>:108:                                    ; preds = %103
  call void @llvm.memset.p0i8.i32(i8* %106, i8 -1, i32 16, i32 1, i1 false), !dbg !474
  br label %109

; <label>:109:                                    ; preds = %108, %107
  %110 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 4, !dbg !476
  store i8 %97, i8* %110, align 1, !dbg !477, !tbaa !391
  %111 = and i8 %75, 32, !dbg !478
  %112 = shl i8 %0, 4, !dbg !479
  %113 = and i8 %112, 16, !dbg !479
  %114 = or i8 %113, %111, !dbg !479
  %115 = getelementptr inbounds i8, i8* %5, i32 2, !dbg !480
  %116 = load i8, i8* %115, align 1, !dbg !480, !tbaa !340
  %117 = shl i8 %116, 6, !dbg !481
  %118 = or i8 %114, %117, !dbg !481
  %119 = or i8 %118, 10, !dbg !481
  store i8 %119, i8* %74, align 1, !dbg !481
  %120 = getelementptr inbounds i8, i8* %5, i32 3, !dbg !482
  %121 = load i8, i8* %120, align 1, !dbg !482, !tbaa !340
  %122 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 7, !dbg !483
  store i8 %121, i8* %122, align 1, !dbg !484, !tbaa !485
  %123 = getelementptr inbounds i8, i8* %5, i32 4, !dbg !486
  %124 = load i8, i8* %123, align 1, !dbg !486, !tbaa !340
  %125 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 8, !dbg !487
  %126 = and i8 %124, 15, !dbg !488
  %127 = getelementptr inbounds i8, i8* %5, i32 5, !dbg !489
  %128 = load i8, i8* %127, align 1, !dbg !489, !tbaa !340
  %129 = shl i8 %128, 4, !dbg !490
  %130 = or i8 %129, %126, !dbg !490
  store i8 %130, i8* %125, align 1, !dbg !490
  %131 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 6, i32 0, !dbg !491
  %132 = getelementptr inbounds i8, i8* %5, i32 6, !dbg !492
  %133 = bitcast i8* %132 to i16*, !dbg !491
  %134 = bitcast i8* %131 to i16*, !dbg !491
  %135 = load i16, i16* %133, align 1, !dbg !491
  store i16 %135, i16* %134, align 1, !dbg !491
  %136 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %8, i32 0, i32 5, i32 0, !dbg !493
  %137 = getelementptr inbounds i8, i8* %5, i32 8, !dbg !494
  %138 = bitcast i8* %137 to i64*, !dbg !493
  %139 = bitcast i8* %136 to i64*, !dbg !493
  %140 = load i64, i64* %138, align 1, !dbg !493
  store i64 %140, i64* %139, align 1, !dbg !493
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %8, metadata !321, metadata !DIExpression(DW_OP_deref)), !dbg !495
  %141 = call fastcc zeroext i8 @add_new_device_to_list(%struct.BLE_REMOTE_LIST_T* nonnull %8) #7, !dbg !496
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %12) #6, !dbg !497
  br label %142

; <label>:142:                                    ; preds = %109, %6
  %143 = phi i8 [ %141, %109 ], [ 0, %6 ]
  ret i8 %143, !dbg !498
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @add_new_device_to_list(%struct.BLE_REMOTE_LIST_T*) unnamed_addr #0 section ".bt_stack_code" !dbg !500 {
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %0, metadata !504, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i8 -1, metadata !508, metadata !DIExpression()), !dbg !516
  %2 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !519, !tbaa !102
  %3 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !521
  %4 = and i8 %3, 15, !dbg !521
  %5 = icmp ult i8 %2, %4, !dbg !522
  br i1 %5, label %11, label %6, !dbg !523

; <label>:6:                                      ; preds = %1
  %7 = and i8 %3, 48, !dbg !524
  %8 = icmp eq i8 %7, 0, !dbg !527
  %9 = icmp eq i8 %4, 0, !dbg !528
  %10 = or i1 %8, %9, !dbg !531
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()), !dbg !532
  br i1 %10, label %41, label %11, !dbg !531

; <label>:11:                                     ; preds = %6, %1
  %12 = phi i32 [ 255, %1 ], [ 0, %6 ]
  %13 = zext i8 %4 to i32
  br label %14, !dbg !533

; <label>:14:                                     ; preds = %24, %11
  %15 = phi i32 [ 0, %11 ], [ %25, %24 ]
  %16 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %15, !dbg !535
  %17 = load i8, i8* %16, align 1, !dbg !535, !tbaa !340
  %18 = zext i8 %17 to i32, !dbg !535
  %19 = icmp eq i32 %18, %12, !dbg !538
  br i1 %19, label %20, label %24, !dbg !539

; <label>:20:                                     ; preds = %14
  %21 = icmp eq i32 %12, 255, !dbg !540
  %22 = trunc i32 %15 to i8
  br i1 %21, label %27, label %23, !dbg !543

; <label>:23:                                     ; preds = %20
  tail call fastcc void @delete_device_by_index(i8 zeroext %22) #8, !dbg !544
  br label %27, !dbg !546

; <label>:24:                                     ; preds = %14
  %25 = add nuw nsw i32 %15, 1, !dbg !547
  call void @llvm.dbg.value(metadata i32 %25, metadata !514, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 %25, metadata !514, metadata !DIExpression()), !dbg !532
  %26 = icmp slt i32 %25, %13, !dbg !528
  br i1 %26, label %14, label %40, !dbg !533, !llvm.loop !549

; <label>:27:                                     ; preds = %23, %20
  call void @llvm.dbg.value(metadata i8 %22, metadata !505, metadata !DIExpression()), !dbg !552
  %28 = trunc i32 %15 to i16, !dbg !553
  %29 = and i16 %28, 255, !dbg !553
  %30 = add nuw nsw i16 %29, 118, !dbg !554
  %31 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %0, i32 0, i32 0, i32 0, !dbg !555
  %32 = tail call i32 @syscfg_write(i16 zeroext %30, i8* %31, i16 zeroext 52) #8, !dbg !556
  call void @llvm.dbg.value(metadata i32 %32, metadata !506, metadata !DIExpression()), !dbg !557
  %33 = icmp sgt i32 %32, 0, !dbg !558
  br i1 %33, label %34, label %41, !dbg !560

; <label>:34:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %22, metadata !505, metadata !DIExpression()), !dbg !552
  store i8 %22, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 3), align 1, !dbg !561, !tbaa !273
  %35 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !563, !tbaa !102
  call void @llvm.dbg.value(metadata i8 %22, metadata !505, metadata !DIExpression()), !dbg !552
  %36 = and i32 %15, 255, !dbg !564
  %37 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %36, !dbg !564
  store i8 %35, i8* %37, align 1, !dbg !565, !tbaa !340
  %38 = add i8 %35, 1, !dbg !566
  store i8 %38, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !566, !tbaa !102
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !569
  %39 = tail call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !570
  br label %41, !dbg !571

; <label>:40:                                     ; preds = %24
  br label %41, !dbg !572

; <label>:41:                                     ; preds = %40, %34, %27, %6
  %42 = phi i8 [ 1, %34 ], [ 0, %27 ], [ 0, %6 ], [ 0, %40 ]
  ret i8 %42, !dbg !572
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_get_id_addr(i8*, i8 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !574 {
  %4 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !578, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i8 %1, metadata !579, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i8* %2, metadata !580, metadata !DIExpression()), !dbg !584
  %5 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !585, !tbaa !158
  %6 = icmp eq i32 %5, 0, !dbg !585
  br i1 %6, label %22, label %7, !dbg !587

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %4, i32 0, i32 0, i32 0, !dbg !588
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8) #6, !dbg !588
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %4, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !589
  %9 = call fastcc zeroext i8 @get_conn_addr_item(i8* %0, i8 zeroext %1, %struct.BLE_REMOTE_LIST_T* nonnull %4, i8 zeroext -1) #7, !dbg !590
  %10 = icmp eq i8 %9, 0, !dbg !590
  br i1 %10, label %20, label %11, !dbg !592

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i8* %2, null, !dbg !593
  br i1 %12, label %20, label %13, !dbg !596

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %4, i32 0, i32 4, !dbg !597
  %15 = load i8, i8* %14, align 1, !dbg !597, !tbaa !391
  %16 = and i8 %15, 8, !dbg !599
  %17 = icmp eq i8 %16, 0, !dbg !599
  br i1 %17, label %20, label %18, !dbg !600

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %4, i32 0, i32 2, i32 0, !dbg !602
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %2, i8* %19, i32 6, i32 1, i1 false), !dbg !602
  br label %20, !dbg !604

; <label>:20:                                     ; preds = %18, %13, %11, %7
  %21 = phi i8 [ 1, %13 ], [ 1, %11 ], [ 1, %18 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8) #6, !dbg !605
  br label %22

; <label>:22:                                     ; preds = %20, %3
  %23 = phi i8 [ %21, %20 ], [ 0, %3 ]
  ret i8 %23, !dbg !606
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_get_id_addr_extend(i8*, i8 zeroext, i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !608 {
  %5 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !610, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i8 %1, metadata !611, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i8* %2, metadata !612, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i8 %3, metadata !613, metadata !DIExpression()), !dbg !618
  %6 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !619, !tbaa !158
  %7 = icmp eq i32 %6, 0, !dbg !619
  br i1 %7, label %23, label %8, !dbg !621

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 0, i32 0, !dbg !622
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %9) #6, !dbg !622
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %5, metadata !614, metadata !DIExpression(DW_OP_deref)), !dbg !623
  %10 = call fastcc zeroext i8 @get_conn_addr_item(i8* %0, i8 zeroext %1, %struct.BLE_REMOTE_LIST_T* nonnull %5, i8 zeroext %3) #7, !dbg !624
  %11 = icmp eq i8 %10, 0, !dbg !624
  br i1 %11, label %21, label %12, !dbg !626

; <label>:12:                                     ; preds = %8
  %13 = icmp eq i8* %2, null, !dbg !627
  br i1 %13, label %21, label %14, !dbg !630

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 4, !dbg !631
  %16 = load i8, i8* %15, align 1, !dbg !631, !tbaa !391
  %17 = and i8 %16, 8, !dbg !633
  %18 = icmp eq i8 %17, 0, !dbg !633
  br i1 %18, label %21, label %19, !dbg !634

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 2, i32 0, !dbg !636
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %2, i8* %20, i32 6, i32 1, i1 false), !dbg !636
  br label %21, !dbg !638

; <label>:21:                                     ; preds = %19, %14, %12, %8
  %22 = phi i8 [ 1, %14 ], [ 1, %12 ], [ 1, %19 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %9) #6, !dbg !639
  br label %23

; <label>:23:                                     ; preds = %21, %4
  %24 = phi i8 [ %22, %21 ], [ 0, %4 ]
  ret i8 %24, !dbg !640
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_get_remote_type(i8*, i8 zeroext, i8* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !642 {
  %4 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !644, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8 %1, metadata !645, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8* %2, metadata !646, metadata !DIExpression()), !dbg !650
  %5 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !651, !tbaa !158
  %6 = icmp eq i32 %5, 0, !dbg !651
  br i1 %6, label %18, label %7, !dbg !653

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %4, i32 0, i32 0, i32 0, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8) #6, !dbg !654
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %4, metadata !647, metadata !DIExpression(DW_OP_deref)), !dbg !655
  %9 = call fastcc zeroext i8 @get_conn_addr_item(i8* %0, i8 zeroext %1, %struct.BLE_REMOTE_LIST_T* nonnull %4, i8 zeroext -1) #7, !dbg !656
  %10 = icmp eq i8 %9, 0, !dbg !656
  br i1 %10, label %15, label %11, !dbg !658

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %4, i32 0, i32 3, !dbg !659
  %13 = load i8, i8* %12, align 1, !dbg !659
  %14 = lshr i8 %13, 6, !dbg !659
  br label %15, !dbg !661

; <label>:15:                                     ; preds = %11, %7
  %16 = phi i8 [ %14, %11 ], [ 0, %7 ]
  %17 = phi i8 [ 1, %11 ], [ 0, %7 ]
  store i8 %16, i8* %2, align 1, !dbg !662, !tbaa !340
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8) #6, !dbg !663
  br label %18

; <label>:18:                                     ; preds = %15, %3
  %19 = phi i8 [ %17, %15 ], [ 0, %3 ]
  ret i8 %19, !dbg !664
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_check_addr_is_exist(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !666 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !670, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8 %1, metadata !671, metadata !DIExpression()), !dbg !673
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !674, !tbaa !158
  %4 = icmp eq i32 %3, 0, !dbg !674
  br i1 %4, label %7, label %5, !dbg !676

; <label>:5:                                      ; preds = %2
  %6 = tail call zeroext i8 @ble_list_get_id_addr(i8* %0, i8 zeroext %1, i8* null) #7, !dbg !677
  br label %7, !dbg !678

; <label>:7:                                      ; preds = %5, %2
  %8 = phi i8 [ %6, %5 ], [ 0, %2 ]
  ret i8 %8, !dbg !679
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_check_addr_is_exist_extend(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !680 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !684, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i8 %1, metadata !685, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i8 %2, metadata !686, metadata !DIExpression()), !dbg !689
  %4 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !690, !tbaa !158
  %5 = icmp eq i32 %4, 0, !dbg !690
  br i1 %5, label %8, label %6, !dbg !692

; <label>:6:                                      ; preds = %3
  %7 = tail call zeroext i8 @ble_list_get_id_addr_extend(i8* %0, i8 zeroext %1, i8* null, i8 zeroext %2) #7, !dbg !693
  br label %8, !dbg !694

; <label>:8:                                      ; preds = %6, %3
  %9 = phi i8 [ %7, %6 ], [ 0, %3 ]
  ret i8 %9, !dbg !695
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_reconnect_device_is_exist(i8*, i8 zeroext, i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !696 {
  %5 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !698, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8 %1, metadata !699, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i8* %2, metadata !700, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8 %3, metadata !701, metadata !DIExpression()), !dbg !708
  %6 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 0, i32 0, !dbg !709
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6) #6, !dbg !709
  call void @llvm.dbg.value(metadata i8 0, metadata !704, metadata !DIExpression()), !dbg !710
  %7 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !711, !tbaa !158
  %8 = icmp eq i32 %7, 0, !dbg !711
  %9 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !713
  %10 = icmp eq i8 %9, 0, !dbg !715
  %11 = or i1 %8, %10, !dbg !716
  br i1 %11, label %55, label %12, !dbg !716

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 1, i32 0, !dbg !717
  call void @llvm.dbg.value(metadata i8 0, metadata !704, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 0, metadata !703, metadata !DIExpression()), !dbg !726
  %14 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !727
  %15 = and i8 %14, 15, !dbg !727
  %16 = icmp eq i8 %15, 0, !dbg !729
  br i1 %16, label %55, label %17, !dbg !730

; <label>:17:                                     ; preds = %12
  %18 = icmp eq i8 %1, 0
  %19 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 2, i32 0
  %20 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 4
  br label %21, !dbg !730

; <label>:21:                                     ; preds = %47, %17
  %22 = phi i8 [ 0, %17 ], [ %48, %47 ]
  %23 = phi i8 [ 0, %17 ], [ %49, %47 ]
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %5, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !732
  %24 = call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* nonnull %5, i8 zeroext %23) #7, !dbg !733
  %25 = icmp eq i8 %24, 0, !dbg !733
  br i1 %25, label %47, label %26, !dbg !734

; <label>:26:                                     ; preds = %21
  br i1 %18, label %27, label %33, !dbg !735

; <label>:27:                                     ; preds = %26
  %28 = call i32 @memcmp(i8* %19, i8* %0, i32 6) #7, !dbg !736
  %29 = icmp eq i32 %28, 0, !dbg !739
  br i1 %29, label %30, label %47, !dbg !740

; <label>:30:                                     ; preds = %27
  %31 = call i32 @memcmp(i8* %13, i8* %2, i32 16) #7, !dbg !741
  %32 = icmp eq i32 %31, 0, !dbg !743
  br i1 %32, label %53, label %47, !dbg !744

; <label>:33:                                     ; preds = %26
  %34 = call fastcc zeroext i8 @check_random_addr(i8* %0, i8* nonnull %6, i8* %19) #7, !dbg !746
  %35 = icmp eq i8 %34, 1, !dbg !747
  br i1 %35, label %36, label %39, !dbg !748

; <label>:36:                                     ; preds = %33
  %37 = call i32 @memcmp(i8* %13, i8* %2, i32 16) #7, !dbg !749
  %38 = icmp eq i32 %37, 0, !dbg !750
  br i1 %38, label %53, label %39, !dbg !751

; <label>:39:                                     ; preds = %36, %33
  %40 = load i8, i8* %20, align 1, !dbg !753, !tbaa !391
  %41 = and i8 %40, 4, !dbg !756
  %42 = icmp eq i8 %41, 0, !dbg !757
  br i1 %42, label %43, label %47, !dbg !758

; <label>:43:                                     ; preds = %39
  %44 = call i32 @memcmp(i8* nonnull %13, i8* %2, i32 16) #7, !dbg !759
  %45 = icmp eq i32 %44, 0, !dbg !760
  call void @llvm.dbg.value(metadata i8 1, metadata !704, metadata !DIExpression()), !dbg !710
  %46 = select i1 %45, i8 1, i8 %22, !dbg !761
  br label %47, !dbg !761

; <label>:47:                                     ; preds = %43, %39, %30, %27, %21
  %48 = phi i8 [ %22, %30 ], [ %22, %27 ], [ %22, %39 ], [ %22, %21 ], [ %46, %43 ]
  call void @llvm.dbg.value(metadata i8 %48, metadata !704, metadata !DIExpression()), !dbg !710
  %49 = add i8 %23, 1, !dbg !763
  call void @llvm.dbg.value(metadata i8 %49, metadata !703, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 %48, metadata !704, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 %49, metadata !703, metadata !DIExpression()), !dbg !726
  %50 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !727
  %51 = and i8 %50, 15, !dbg !727
  %52 = icmp ult i8 %49, %51, !dbg !729
  br i1 %52, label %21, label %53, !dbg !730, !llvm.loop !765

; <label>:53:                                     ; preds = %47, %36, %30
  %54 = phi i8 [ 1, %36 ], [ 1, %30 ], [ %48, %47 ]
  br label %55, !dbg !768

; <label>:55:                                     ; preds = %53, %12, %4
  %56 = phi i8 [ 0, %4 ], [ 0, %12 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6) #6, !dbg !768
  ret i8 %56, !dbg !768
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @check_random_addr(i8*, i8*, i8* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !769 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [16 x i8], align 1
  %6 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !773, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i8* %1, metadata !774, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i8* %2, metadata !775, metadata !DIExpression()), !dbg !784
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i32 0, i32 0, !dbg !785
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #6, !dbg !785
  tail call void @llvm.dbg.declare(metadata [3 x i8]* %4, metadata !776, metadata !DIExpression()), !dbg !786
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #6, !dbg !787
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !780, metadata !DIExpression()), !dbg !788
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 0, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %9) #6, !dbg !789
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %6, metadata !781, metadata !DIExpression()), !dbg !790
  %10 = load i8, i8* %0, align 1, !dbg !791, !tbaa !340
  %11 = and i8 %10, -64, !dbg !793
  %12 = icmp eq i8 %11, 64, !dbg !794
  br i1 %12, label %15, label %13, !dbg !795

; <label>:13:                                     ; preds = %3
  %14 = tail call i32 @memcmp(i8* nonnull %0, i8* %2, i32 6) #7, !dbg !796
  br label %18, !dbg !799

; <label>:15:                                     ; preds = %3
  call void @swapX(i8* nonnull %0, i8* nonnull %9, i32 6) #8, !dbg !801
  call void @swap128(i8* %1, i8* nonnull %8) #8, !dbg !802
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 3, !dbg !803
  call void @irk_enc(i8* nonnull %8, i8* %16, i8* nonnull %7) #8, !dbg !804
  %17 = call i32 @memcmp(i8* nonnull %7, i8* nonnull %9, i32 3) #7, !dbg !805
  br label %18, !dbg !807

; <label>:18:                                     ; preds = %15, %13
  %19 = phi i32 [ %17, %15 ], [ %14, %13 ]
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i8
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %9) #6, !dbg !809
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #6, !dbg !809
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #6, !dbg !809
  ret i8 %21, !dbg !809
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_pair_is_allow(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !810 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !812, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8 %1, metadata !813, metadata !DIExpression()), !dbg !815
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !816, !tbaa !158
  %4 = icmp eq i32 %3, 0, !dbg !816
  br i1 %4, label %20, label %5, !dbg !818

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !819
  %7 = and i8 %6, 15, !dbg !819
  %8 = icmp ne i8 %7, 0, !dbg !821
  %9 = and i8 %6, 64, !dbg !822
  %10 = icmp eq i8 %9, 0, !dbg !824
  %11 = and i1 %8, %10, !dbg !825
  br i1 %11, label %12, label %20, !dbg !825

; <label>:12:                                     ; preds = %5
  %13 = and i8 %6, 48, !dbg !826
  %14 = icmp ne i8 %13, 0, !dbg !828
  %15 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !829
  %16 = icmp ult i8 %15, %7, !dbg !831
  %17 = or i1 %14, %16, !dbg !832
  br i1 %17, label %20, label %18, !dbg !832

; <label>:18:                                     ; preds = %12
  %19 = tail call zeroext i8 @ble_list_check_addr_is_exist(i8* %0, i8 zeroext %1) #7, !dbg !833
  br label %20, !dbg !834

; <label>:20:                                     ; preds = %18, %12, %5, %2
  %21 = phi i8 [ %19, %18 ], [ 0, %2 ], [ 0, %5 ], [ 1, %12 ]
  ret i8 %21, !dbg !835
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_pair_accept(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !836 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !838, metadata !DIExpression()), !dbg !840
  %2 = icmp eq i8 %0, 0, !dbg !841
  %3 = zext i1 %2 to i8, !dbg !841
  call void @llvm.dbg.value(metadata i8 %3, metadata !839, metadata !DIExpression()), !dbg !842
  %4 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !843, !tbaa !158
  %5 = icmp eq i32 %4, 0, !dbg !843
  br i1 %5, label %18, label %6, !dbg !845

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !846
  %8 = lshr i8 %7, 6, !dbg !846
  %9 = and i8 %8, 1, !dbg !846
  %10 = zext i8 %9 to i32, !dbg !848
  %11 = zext i1 %2 to i32, !dbg !849
  %12 = icmp eq i32 %10, %11, !dbg !850
  br i1 %12, label %18, label %13, !dbg !851

; <label>:13:                                     ; preds = %6
  %14 = shl nuw nsw i8 %3, 6, !dbg !852
  %15 = and i8 %7, -65, !dbg !852
  %16 = or i8 %15, %14, !dbg !852
  store i8 %16, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !852
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !856
  %17 = tail call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !857
  br label %18, !dbg !858

; <label>:18:                                     ; preds = %13, %6, %1
  %19 = phi i8 [ 0, %1 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %19, !dbg !859
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_bonding_remote(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !860 {
  %3 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !862, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i8 %1, metadata !863, metadata !DIExpression()), !dbg !866
  %4 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %3, i32 0, i32 0, i32 0, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %4) #6, !dbg !867
  %5 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !868, !tbaa !158
  %6 = icmp eq i32 %5, 0, !dbg !868
  br i1 %6, label %13, label %7, !dbg !870

; <label>:7:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %3, metadata !864, metadata !DIExpression(DW_OP_deref)), !dbg !871
  %8 = call fastcc zeroext i8 @get_conn_addr_item(i8* %0, i8 zeroext %1, %struct.BLE_REMOTE_LIST_T* nonnull %3, i8 zeroext -1) #7, !dbg !872
  %9 = icmp eq i8 %8, 0, !dbg !872
  br i1 %9, label %13, label %10, !dbg !874

; <label>:10:                                     ; preds = %7
  %11 = call zeroext i8 @ble_list_clear_all() #7, !dbg !875
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %3, metadata !864, metadata !DIExpression(DW_OP_deref)), !dbg !871
  %12 = call fastcc zeroext i8 @add_new_device_to_list(%struct.BLE_REMOTE_LIST_T* nonnull %3) #7, !dbg !877
  br label %13, !dbg !878

; <label>:13:                                     ; preds = %10, %7, %2
  %14 = phi i8 [ %12, %10 ], [ 0, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %4) #6, !dbg !879
  ret i8 %14, !dbg !879
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_get_last_id_addr(i8* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !880 {
  %2 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !882, metadata !DIExpression()), !dbg !885
  %3 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 0, i32 0, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %3) #6, !dbg !886
  %4 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !887, !tbaa !158
  %5 = icmp eq i32 %4, 0, !dbg !887
  %6 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !889
  %7 = icmp eq i8 %6, 0, !dbg !891
  %8 = or i1 %5, %7, !dbg !892
  br i1 %8, label %20, label %9, !dbg !892

; <label>:9:                                      ; preds = %1
  %10 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 3), align 1, !dbg !893, !tbaa !273
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %2, metadata !884, metadata !DIExpression(DW_OP_deref)), !dbg !895
  %11 = call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* nonnull %2, i8 zeroext %10) #7, !dbg !896
  %12 = icmp eq i8 %11, 0, !dbg !897
  br i1 %12, label %20, label %13, !dbg !898

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 4, !dbg !899
  %15 = load i8, i8* %14, align 1, !dbg !899, !tbaa !391
  %16 = and i8 %15, 8, !dbg !901
  %17 = icmp eq i8 %16, 0, !dbg !901
  br i1 %17, label %20, label %18, !dbg !902

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 2, i32 0, !dbg !903
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %19, i32 6, i32 1, i1 false), !dbg !903
  br label %20, !dbg !905

; <label>:20:                                     ; preds = %18, %13, %9, %1
  %21 = phi i8 [ 1, %18 ], [ 0, %1 ], [ 0, %9 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %3) #6, !dbg !906
  ret i8 %21, !dbg !906
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_list_delete_device(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !907 {
  %3 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !909, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8 %1, metadata !910, metadata !DIExpression()), !dbg !915
  %4 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %3, i32 0, i32 0, i32 0, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %4) #6, !dbg !916
  call void @llvm.dbg.value(metadata i8 0, metadata !913, metadata !DIExpression()), !dbg !917
  %5 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !918, !tbaa !158
  %6 = icmp eq i32 %5, 0, !dbg !918
  %7 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !920
  %8 = icmp eq i8 %7, 0, !dbg !922
  %9 = or i1 %6, %8, !dbg !923
  br i1 %9, label %42, label %10, !dbg !923

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !911, metadata !DIExpression()), !dbg !924
  %11 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !925
  %12 = and i8 %11, 15, !dbg !925
  %13 = icmp eq i8 %12, 0, !dbg !929
  br i1 %13, label %42, label %14, !dbg !930

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %3, i32 0, i32 3
  %16 = icmp eq i8 %1, 0
  %17 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %3, i32 0, i32 2, i32 0
  br label %18, !dbg !930

; <label>:18:                                     ; preds = %34, %14
  %19 = phi i32 [ 0, %14 ], [ %35, %34 ]
  %20 = trunc i32 %19 to i8, !dbg !932
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %3, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !935
  %21 = call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* nonnull %3, i8 zeroext %20) #7, !dbg !936
  %22 = icmp eq i8 %21, 0, !dbg !936
  br i1 %22, label %34, label %23, !dbg !937

; <label>:23:                                     ; preds = %18
  %24 = load i8, i8* %15, align 1, !dbg !938
  %25 = and i8 %24, 15, !dbg !938
  %26 = icmp eq i8 %25, 10, !dbg !941
  br i1 %26, label %27, label %34, !dbg !942

; <label>:27:                                     ; preds = %23
  br i1 %16, label %31, label %28, !dbg !943

; <label>:28:                                     ; preds = %27
  %29 = call fastcc zeroext i8 @check_random_addr(i8* %0, i8* nonnull %4, i8* nonnull %17) #7, !dbg !945
  %30 = icmp eq i8 %29, 1, !dbg !949
  br i1 %30, label %40, label %34, !dbg !950

; <label>:31:                                     ; preds = %27
  %32 = call i32 @memcmp(i8* %0, i8* nonnull %17, i32 6) #7, !dbg !951
  %33 = icmp eq i32 %32, 0, !dbg !954
  br i1 %33, label %40, label %34, !dbg !955

; <label>:34:                                     ; preds = %31, %28, %23, %18
  %35 = add i32 %19, 1, !dbg !956
  call void @llvm.dbg.value(metadata i32 %35, metadata !911, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %35, metadata !911, metadata !DIExpression()), !dbg !924
  %36 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !925
  %37 = and i8 %36, 15, !dbg !925
  %38 = zext i8 %37 to i32, !dbg !958
  %39 = icmp ult i32 %35, %38, !dbg !929
  br i1 %39, label %18, label %41, !dbg !930, !llvm.loop !959

; <label>:40:                                     ; preds = %31, %28
  call fastcc void @delete_device_by_index(i8 zeroext %20) #7, !dbg !962
  br label %42, !dbg !965

; <label>:41:                                     ; preds = %34
  br label %42, !dbg !966

; <label>:42:                                     ; preds = %41, %40, %10, %2
  %43 = phi i8 [ 0, %2 ], [ 1, %40 ], [ 0, %10 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %4) #6, !dbg !966
  ret i8 %43, !dbg !966
}

; Function Attrs: nounwind optsize
define internal fastcc void @delete_device_by_index(i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !967 {
  %2 = alloca [52 x i8], align 1
  %3 = getelementptr inbounds [52 x i8], [52 x i8]* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %3) #6, !dbg !974
  %4 = zext i8 %0 to i32, !dbg !975
  %5 = icmp ugt i8 %0, 9, !dbg !977
  br i1 %5, label %37, label %6, !dbg !978

; <label>:6:                                      ; preds = %1
  call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 -1, i32 52, i32 1, i1 false), !dbg !979
  %7 = add nuw nsw i32 %4, 118, !dbg !980
  %8 = trunc i32 %7 to i16, !dbg !981
  %9 = call i32 @syscfg_write(i16 zeroext %8, i8* nonnull %3, i16 zeroext 52) #8, !dbg !982
  %10 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %4, !dbg !983
  %11 = load i8, i8* %10, align 1, !dbg !983, !tbaa !340
  call void @llvm.dbg.value(metadata i8 %11, metadata !971, metadata !DIExpression()), !dbg !984
  store i8 -1, i8* %10, align 1, !dbg !985, !tbaa !340
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !986
  %12 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !987
  %13 = and i8 %12, 15, !dbg !987
  %14 = icmp eq i8 %13, 0, !dbg !990
  br i1 %14, label %18, label %15, !dbg !991

; <label>:15:                                     ; preds = %6
  %16 = zext i8 %13 to i32
  br label %21, !dbg !991

; <label>:17:                                     ; preds = %30
  br label %18, !dbg !993

; <label>:18:                                     ; preds = %17, %6
  %19 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !993, !tbaa !102
  %20 = icmp eq i8 %19, 0, !dbg !995
  br i1 %20, label %35, label %33, !dbg !996

; <label>:21:                                     ; preds = %30, %15
  %22 = phi i32 [ 0, %15 ], [ %31, %30 ]
  %23 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %22, !dbg !997
  %24 = load i8, i8* %23, align 1, !dbg !997, !tbaa !340
  %25 = icmp ne i8 %24, -1, !dbg !1000
  %26 = icmp ugt i8 %24, %11, !dbg !1001
  %27 = and i1 %25, %26, !dbg !1003
  br i1 %27, label %28, label %30, !dbg !1003

; <label>:28:                                     ; preds = %21
  %29 = add i8 %24, -1, !dbg !1004
  store i8 %29, i8* %23, align 1, !dbg !1004, !tbaa !340
  br label %30, !dbg !1006

; <label>:30:                                     ; preds = %28, %21
  %31 = add nuw nsw i32 %22, 1, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %31, metadata !972, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 %31, metadata !972, metadata !DIExpression()), !dbg !986
  %32 = icmp slt i32 %31, %16, !dbg !990
  br i1 %32, label %21, label %17, !dbg !991, !llvm.loop !1009

; <label>:33:                                     ; preds = %18
  %34 = add i8 %19, -1, !dbg !1012
  store i8 %34, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !1012, !tbaa !102
  br label %35, !dbg !1014

; <label>:35:                                     ; preds = %33, %18
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !1017
  %36 = call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !1018
  br label %37, !dbg !1019

; <label>:37:                                     ; preds = %35, %1
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %3) #6, !dbg !1020
  ret void
}

; Function Attrs: nounwind optsize
define hidden void @ble_list_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1021 {
  %1 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata i8 0, metadata !1025, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !1027, metadata !DIExpression()), !dbg !1036
  %2 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %1, i32 0, i32 0, i32 0, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %2) #6, !dbg !1037
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1038, !tbaa !158
  %4 = icmp eq i32 %3, 0, !dbg !1038
  br i1 %4, label %125, label %5, !dbg !1040

; <label>:5:                                      ; preds = %0
  %6 = tail call fastcc zeroext i8 @reflash_remote_info(i8 zeroext 0) #7, !dbg !1041
  %7 = icmp eq i8 %6, 1, !dbg !1042
  br i1 %7, label %8, label %116, !dbg !1043

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8 0, metadata !1027, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !1026, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, metadata !1025, metadata !DIExpression()), !dbg !1035
  %9 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !1045
  %10 = and i8 %9, 15, !dbg !1045
  %11 = icmp eq i8 %10, 0, !dbg !1049
  br i1 %11, label %46, label %12, !dbg !1050

; <label>:12:                                     ; preds = %8
  br label %13, !dbg !1052

; <label>:13:                                     ; preds = %37, %12
  %14 = phi i32 [ %41, %37 ], [ 0, %12 ]
  %15 = phi i8 [ %39, %37 ], [ 0, %12 ]
  %16 = phi i8 [ %40, %37 ], [ 0, %12 ]
  %17 = phi i8 [ %38, %37 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %1, metadata !1028, metadata !DIExpression(DW_OP_deref)), !dbg !1052
  %18 = call fastcc zeroext i8 @get_list_exist_item(%struct.BLE_REMOTE_LIST_T* nonnull %1, i8 zeroext %16) #7, !dbg !1053
  %19 = icmp eq i8 %18, 1, !dbg !1056
  %20 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %14
  %21 = load i8, i8* %20, align 1, !tbaa !340
  br i1 %19, label %22, label %33, !dbg !1057

; <label>:22:                                     ; preds = %13
  %23 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !1058
  %24 = and i8 %23, 15, !dbg !1058
  %25 = icmp ult i8 %21, %24, !dbg !1061
  br i1 %25, label %31, label %26, !dbg !1062

; <label>:26:                                     ; preds = %22
  %27 = or i8 %17, 1, !dbg !1063
  call void @llvm.dbg.value(metadata i8 %27, metadata !1025, metadata !DIExpression()), !dbg !1035
  store i8 -1, i8* %20, align 1, !dbg !1065, !tbaa !340
  call void @llvm.memset.p0i8.i32(i8* nonnull %2, i8 -1, i32 52, i32 1, i1 false), !dbg !1066
  %28 = add nuw nsw i32 %14, 118, !dbg !1067
  %29 = trunc i32 %28 to i16, !dbg !1068
  %30 = call i32 @syscfg_write(i16 zeroext %29, i8* nonnull %2, i16 zeroext 52) #8, !dbg !1069
  br label %37, !dbg !1070

; <label>:31:                                     ; preds = %22
  %32 = add i8 %15, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i8 %32, metadata !1027, metadata !DIExpression()), !dbg !1036
  br label %37

; <label>:33:                                     ; preds = %13
  %34 = icmp eq i8 %21, -1, !dbg !1073
  br i1 %34, label %37, label %35, !dbg !1076

; <label>:35:                                     ; preds = %33
  store i8 -1, i8* %20, align 1, !dbg !1077, !tbaa !340
  %36 = or i8 %17, 2, !dbg !1079
  call void @llvm.dbg.value(metadata i8 %36, metadata !1025, metadata !DIExpression()), !dbg !1035
  br label %46, !dbg !1080

; <label>:37:                                     ; preds = %33, %31, %26
  %38 = phi i8 [ %27, %26 ], [ %17, %31 ], [ %17, %33 ]
  %39 = phi i8 [ %15, %26 ], [ %32, %31 ], [ %15, %33 ]
  call void @llvm.dbg.value(metadata i8 %39, metadata !1027, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %38, metadata !1025, metadata !DIExpression()), !dbg !1035
  %40 = add i8 %16, 1, !dbg !1081
  call void @llvm.dbg.value(metadata i8 %40, metadata !1026, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8 %39, metadata !1027, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 %40, metadata !1026, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8 %38, metadata !1025, metadata !DIExpression()), !dbg !1035
  %41 = zext i8 %40 to i32, !dbg !1083
  %42 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !1045
  %43 = and i8 %42, 15, !dbg !1045
  %44 = icmp ult i8 %40, %43, !dbg !1049
  br i1 %44, label %13, label %45, !dbg !1050, !llvm.loop !1084

; <label>:45:                                     ; preds = %37
  br label %46, !dbg !1035

; <label>:46:                                     ; preds = %45, %35, %8
  %47 = phi i8 [ %15, %35 ], [ 0, %8 ], [ %39, %45 ]
  %48 = phi i8 [ %36, %35 ], [ 0, %8 ], [ %38, %45 ]
  call void @llvm.dbg.value(metadata i8 %48, metadata !1025, metadata !DIExpression()), !dbg !1035
  %49 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !1087, !tbaa !102
  %50 = icmp eq i8 %47, %49, !dbg !1089
  %51 = or i8 %48, -128, !dbg !1090
  call void @llvm.dbg.value(metadata i8 %51, metadata !1025, metadata !DIExpression()), !dbg !1035
  %52 = select i1 %50, i8 %48, i8 %51, !dbg !1092
  call void @llvm.dbg.value(metadata i8 %52, metadata !1025, metadata !DIExpression()), !dbg !1035
  %53 = icmp eq i8 %52, 0, !dbg !1093
  br i1 %53, label %119, label %54, !dbg !1094

; <label>:54:                                     ; preds = %46
  %55 = zext i8 %52 to i32, !dbg !1095
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 %55) #7, !dbg !1096
  call void @put_buf(i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i32 14) #8, !dbg !1097
  store i8 %47, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !1098, !tbaa !102
  call void @llvm.dbg.value(metadata i8 0, metadata !1029, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 0, metadata !1029, metadata !DIExpression()), !dbg !1099
  %57 = icmp eq i8 %47, 0, !dbg !1100
  %58 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1
  br i1 %57, label %67, label %59, !dbg !1102

; <label>:59:                                     ; preds = %54
  %60 = and i8 %58, 15
  %61 = icmp eq i8 %60, 0
  %62 = zext i8 %60 to i32
  br label %63, !dbg !1102

; <label>:63:                                     ; preds = %97, %59
  %64 = phi i8 [ 0, %59 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !1026, metadata !DIExpression()), !dbg !1044
  br i1 %61, label %97, label %65, !dbg !1103

; <label>:65:                                     ; preds = %63
  br label %76, !dbg !1107

; <label>:66:                                     ; preds = %97
  br label %67, !dbg !1099

; <label>:67:                                     ; preds = %66, %54
  call void @llvm.dbg.value(metadata i8 0, metadata !1029, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 0, metadata !1026, metadata !DIExpression()), !dbg !1044
  %68 = and i8 %58, 15, !dbg !1110
  %69 = icmp eq i8 %68, 0, !dbg !1114
  br i1 %69, label %113, label %70, !dbg !1115

; <label>:70:                                     ; preds = %67
  %71 = zext i8 %68 to i32, !dbg !1115
  br label %100, !dbg !1115

; <label>:72:                                     ; preds = %76
  call void @llvm.dbg.value(metadata i8 %82, metadata !1026, metadata !DIExpression()), !dbg !1044
  %73 = icmp ult i8 %82, %60, !dbg !1117
  br i1 %73, label %76, label %74, !dbg !1103, !llvm.loop !1118

; <label>:74:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i8 0, metadata !1026, metadata !DIExpression()), !dbg !1044
  br i1 %61, label %97, label %75, !dbg !1121

; <label>:75:                                     ; preds = %74
  br label %83, !dbg !1126

; <label>:76:                                     ; preds = %72, %65
  %77 = phi i8 [ %82, %72 ], [ 0, %65 ]
  %78 = zext i8 %77 to i32, !dbg !1107
  %79 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %78, !dbg !1130
  %80 = load i8, i8* %79, align 1, !dbg !1130, !tbaa !340
  %81 = icmp eq i8 %80, %64, !dbg !1133
  %82 = add nuw nsw i8 %77, 1, !dbg !1134
  call void @llvm.dbg.value(metadata i8 %82, metadata !1026, metadata !DIExpression()), !dbg !1044
  br i1 %81, label %96, label %72, !dbg !1136

; <label>:83:                                     ; preds = %92, %75
  %84 = phi i32 [ %93, %92 ], [ 0, %75 ]
  %85 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %84, !dbg !1126
  %86 = load i8, i8* %85, align 1, !dbg !1126, !tbaa !340
  %87 = icmp ne i8 %86, -1, !dbg !1137
  %88 = icmp ugt i8 %86, %64, !dbg !1138
  %89 = and i1 %87, %88, !dbg !1140
  br i1 %89, label %90, label %92, !dbg !1140

; <label>:90:                                     ; preds = %83
  %91 = add i8 %86, -1, !dbg !1141
  store i8 %91, i8* %85, align 1, !dbg !1141, !tbaa !340
  br label %92, !dbg !1143

; <label>:92:                                     ; preds = %90, %83
  %93 = add nuw nsw i32 %84, 1, !dbg !1144
  %94 = icmp eq i32 %93, %62, !dbg !1146
  br i1 %94, label %95, label %83, !dbg !1121, !llvm.loop !1148

; <label>:95:                                     ; preds = %92
  br label %97, !dbg !1151

; <label>:96:                                     ; preds = %76
  br label %97, !dbg !1151

; <label>:97:                                     ; preds = %96, %95, %74, %63
  %98 = add nuw i8 %64, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8 %98, metadata !1029, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %98, metadata !1029, metadata !DIExpression()), !dbg !1099
  %99 = icmp eq i8 %98, %47, !dbg !1100
  br i1 %99, label %66, label %63, !dbg !1102, !llvm.loop !1152

; <label>:100:                                    ; preds = %100, %70
  %101 = phi i32 [ 0, %70 ], [ %110, %100 ]
  %102 = phi i8 [ 0, %70 ], [ %109, %100 ]
  %103 = getelementptr inbounds %struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 4, i32 %101, !dbg !1155
  %104 = load i8, i8* %103, align 1, !dbg !1155, !tbaa !340
  %105 = icmp ne i8 %104, -1, !dbg !1158
  %106 = icmp ugt i8 %104, %102, !dbg !1159
  %107 = and i1 %105, %106, !dbg !1161
  call void @llvm.dbg.value(metadata i8 undef, metadata !1029, metadata !DIExpression()), !dbg !1099
  %108 = trunc i32 %101 to i8, !dbg !1161
  %109 = select i1 %107, i8 %108, i8 %102, !dbg !1161
  call void @llvm.dbg.value(metadata i8 %109, metadata !1029, metadata !DIExpression()), !dbg !1099
  %110 = add nuw nsw i32 %101, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i8 %109, metadata !1029, metadata !DIExpression()), !dbg !1099
  %111 = icmp ult i32 %110, %71, !dbg !1114
  br i1 %111, label %100, label %112, !dbg !1115, !llvm.loop !1164

; <label>:112:                                    ; preds = %100
  br label %113, !dbg !1167

; <label>:113:                                    ; preds = %112, %67
  %114 = phi i8 [ 0, %67 ], [ %109, %112 ]
  store i8 %47, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 2), align 1, !dbg !1167, !tbaa !102
  store i8 %114, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 3), align 1, !dbg !1168, !tbaa !273
  call void @put_buf(i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i32 14) #8, !dbg !1169
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !1172
  %115 = call i32 @syscfg_write(i16 zeroext 117, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 0), i16 zeroext 14) #8, !dbg !1173
  br label %119, !dbg !1174

; <label>:116:                                    ; preds = %5
  %117 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @str, i32 0, i32 0)), !dbg !1175
  %118 = tail call zeroext i8 @ble_list_clear_all() #7, !dbg !1177
  br label %119

; <label>:119:                                    ; preds = %116, %113, %46
  %120 = load i8, i8* getelementptr inbounds (%struct.remote_ctrl_t, %struct.remote_ctrl_t* @remote_info_hdl, i32 0, i32 1), align 1, !dbg !1178
  %121 = and i8 %120, 15, !dbg !1178
  %122 = icmp eq i8 %121, 0, !dbg !1180
  br i1 %122, label %124, label %123, !dbg !1181

; <label>:123:                                    ; preds = %119
  call void @sm_allow_ltk_reconstruction_without_le_device_db_entry(i32 0) #8, !dbg !1182
  br label %125, !dbg !1184

; <label>:124:                                    ; preds = %119
  call void @sm_allow_ltk_reconstruction_without_le_device_db_entry(i32 1) #8, !dbg !1185
  br label %125

; <label>:125:                                    ; preds = %124, %123, %0
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %2) #6, !dbg !1187
  ret void, !dbg !1188
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @syscfg_read(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @swapX(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @swap128(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @irk_enc(i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !33, line: 190, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/remote_device_list.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6, !8, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 11, baseType: !10)
!9 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!13 = !{!0, !14, !30}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "remote_info_hdl", scope: !2, file: !3, line: 91, type: !16, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "remote_ctrl_t", file: !3, line: 79, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 70, size: 112, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "info_tag", scope: !17, file: !3, line: 71, baseType: !8, size: 8)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_dev_max", scope: !17, file: !3, line: 72, baseType: !8, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_cover_allow", scope: !17, file: !3, line: 73, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pair_lock", scope: !17, file: !3, line: 74, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !17, file: !3, line: 75, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dev_count", scope: !17, file: !3, line: 76, baseType: !8, size: 8, offset: 16)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "last_vm_write_index", scope: !17, file: !3, line: 77, baseType: !8, size: 8, offset: 24)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "vm_dev_sn", scope: !17, file: !3, line: 78, baseType: !27, size: 80, offset: 32)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "remote_info_init", scope: !2, file: !3, line: 82, type: !32, isLocal: true, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!33 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{i32 2, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!38 = distinct !DISubprogram(name: "ble_list_get_conn_addr_item", scope: !3, file: !3, line: 351, type: !39, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !72)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !12, !8, !8, !42}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !9, line: 11, baseType: !10)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "BLE_REMOTE_LIST_T", file: !44, line: 62, baseType: !45)
!44 = !DIFile(filename: "../User/include/ble/remote_device_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 47, size: 416, elements: !46)
!46 = !{!47, !51, !52, !56, !57, !58, !59, !60, !61, !65, !69, !70, !71}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "irk_key", scope: !45, file: !44, line: 48, baseType: !48, size: 128)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ltk_key", scope: !45, file: !44, line: 49, baseType: !48, size: 128, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !45, file: !44, line: 50, baseType: !53, size: 48, offset: 256)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 6)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !45, file: !44, line: 51, baseType: !8, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !45, file: !44, line: 52, baseType: !8, size: 1, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "addr_type", scope: !45, file: !44, line: 53, baseType: !8, size: 1, offset: 309, flags: DIFlagBitField, extraData: i64 304)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "remote_type", scope: !45, file: !44, line: 54, baseType: !8, size: 2, offset: 310, flags: DIFlagBitField, extraData: i64 304)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "distribution", scope: !45, file: !44, line: 55, baseType: !8, size: 8, offset: 312)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "rand", scope: !45, file: !44, line: 57, baseType: !62, size: 64, offset: 320)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 8)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ediv", scope: !45, file: !44, line: 58, baseType: !66, size: 16, offset: 384)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 2)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_keysize", scope: !45, file: !44, line: 59, baseType: !8, size: 8, offset: 400)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !45, file: !44, line: 60, baseType: !8, size: 4, offset: 408, flags: DIFlagBitField, extraData: i64 408)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_state", scope: !45, file: !44, line: 61, baseType: !8, size: 4, offset: 412, flags: DIFlagBitField, extraData: i64 408)
!72 = !{!73, !74, !75, !76}
!73 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !38, file: !3, line: 351, type: !12)
!74 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !38, file: !3, line: 351, type: !8)
!75 = !DILocalVariable(name: "role", arg: 3, scope: !38, file: !3, line: 351, type: !8)
!76 = !DILocalVariable(name: "item", arg: 4, scope: !38, file: !3, line: 351, type: !42)
!77 = !DILocation(line: 351, column: 38, scope: !38)
!78 = !DILocation(line: 351, column: 52, scope: !38)
!79 = !DILocation(line: 351, column: 71, scope: !38)
!80 = !DILocation(line: 351, column: 96, scope: !38)
!81 = !DILocation(line: 353, column: 12, scope: !38)
!82 = !DILocation(line: 353, column: 5, scope: !38)
!83 = distinct !DISubprogram(name: "get_conn_addr_item", scope: !3, file: !3, line: 318, type: !84, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!41, !12, !8, !42, !8}
!86 = !{!87, !88, !89, !90, !91, !94}
!87 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !83, file: !3, line: 318, type: !12)
!88 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !83, file: !3, line: 318, type: !8)
!89 = !DILocalVariable(name: "item", arg: 3, scope: !83, file: !3, line: 318, type: !42)
!90 = !DILocalVariable(name: "role", arg: 4, scope: !83, file: !3, line: 318, type: !8)
!91 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 320, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 15, baseType: !93)
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DILocalVariable(name: "ret", scope: !83, file: !3, line: 321, type: !41)
!95 = !DILocation(line: 318, column: 36, scope: !83)
!96 = !DILocation(line: 318, column: 50, scope: !83)
!97 = !DILocation(line: 318, column: 85, scope: !83)
!98 = !DILocation(line: 318, column: 94, scope: !83)
!99 = !DILocation(line: 321, column: 10, scope: !83)
!100 = !DILocation(line: 323, column: 22, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !3, line: 323, column: 9)
!102 = !{!103, !104, i64 2}
!103 = !{!"", !104, i64 0, !104, i64 1, !104, i64 1, !104, i64 1, !104, i64 1, !104, i64 2, !104, i64 3, !104, i64 4}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !DILocation(line: 323, column: 11, scope: !101)
!107 = !DILocation(line: 323, column: 9, scope: !83)
!108 = !DILocation(line: 338, column: 61, scope: !109)
!109 = !DILexicalBlockFile(scope: !110, file: !3, discriminator: 1)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 338, column: 24)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 332, column: 24)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 330, column: 17)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 329, column: 43)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 329, column: 13)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 328, column: 47)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 328, column: 5)
!117 = distinct !DILexicalBlock(scope: !83, file: !3, line: 328, column: 5)
!118 = !DILocation(line: 338, column: 76, scope: !109)
!119 = !DILocation(line: 320, column: 9, scope: !83)
!120 = !DILocation(line: 328, column: 29, scope: !121)
!121 = !DILexicalBlockFile(scope: !116, file: !3, discriminator: 1)
!122 = !DILocation(line: 328, column: 19, scope: !121)
!123 = !DILocation(line: 328, column: 5, scope: !124)
!124 = !DILexicalBlockFile(scope: !117, file: !3, discriminator: 1)
!125 = !DILocation(line: 329, column: 39, scope: !114)
!126 = !DILocation(line: 329, column: 13, scope: !114)
!127 = !DILocation(line: 329, column: 13, scope: !115)
!128 = !DILocation(line: 330, column: 30, scope: !112)
!129 = !DILocation(line: 330, column: 47, scope: !130)
!130 = !DILexicalBlockFile(scope: !112, file: !3, discriminator: 1)
!131 = !DILocation(line: 330, column: 38, scope: !130)
!132 = !DILocation(line: 330, column: 17, scope: !133)
!133 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 1)
!134 = !DILocation(line: 332, column: 24, scope: !112)
!135 = !DILocation(line: 333, column: 26, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 333, column: 21)
!137 = distinct !DILexicalBlock(scope: !111, file: !3, line: 332, column: 45)
!138 = !DILocation(line: 333, column: 23, scope: !136)
!139 = !DILocation(line: 333, column: 21, scope: !137)
!140 = !DILocation(line: 338, column: 32, scope: !109)
!141 = !DILocation(line: 338, column: 29, scope: !109)
!142 = !DILocation(line: 338, column: 24, scope: !143)
!143 = !DILexicalBlockFile(scope: !111, file: !3, discriminator: 1)
!144 = !DILocation(line: 328, column: 43, scope: !145)
!145 = !DILexicalBlockFile(scope: !116, file: !3, discriminator: 2)
!146 = !DILocation(line: 328, column: 21, scope: !121)
!147 = distinct !{!147, !148, !149}
!148 = !DILocation(line: 328, column: 5, scope: !117)
!149 = !DILocation(line: 346, column: 5, scope: !117)
!150 = !DILocation(line: 349, column: 1, scope: !83)
!151 = distinct !DISubprogram(name: "ble_list_get_count", scope: !3, file: !3, line: 406, type: !152, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!152 = !DISubroutineType(types: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 13, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DILocation(line: 408, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !3, line: 408, column: 5)
!158 = !{!159, !159, i64 0}
!159 = !{!"int", !104, i64 0}
!160 = !DILocation(line: 408, column: 5, scope: !151)
!161 = !DILocation(line: 409, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !151, file: !3, line: 409, column: 9)
!163 = !DILocation(line: 409, column: 27, scope: !162)
!164 = !DILocation(line: 409, column: 9, scope: !151)
!165 = !DILocation(line: 410, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 409, column: 51)
!167 = !DILocation(line: 411, column: 5, scope: !166)
!168 = !DILocation(line: 413, column: 20, scope: !151)
!169 = !DILocation(line: 413, column: 12, scope: !151)
!170 = !DILocation(line: 413, column: 5, scope: !151)
!171 = !DILocation(line: 414, column: 1, scope: !151)
!172 = distinct !DISubprogram(name: "reflash_remote_info", scope: !3, file: !3, line: 210, type: !173, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!41, !8}
!175 = !{!176, !177}
!176 = !DILocalVariable(name: "act_rw", arg: 1, scope: !172, file: !3, line: 210, type: !8)
!177 = !DILocalVariable(name: "ret", scope: !172, file: !3, line: 212, type: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !9, line: 16, baseType: !34)
!179 = !DILocation(line: 210, column: 36, scope: !172)
!180 = !DILocation(line: 212, column: 9, scope: !172)
!181 = !DILocation(line: 216, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !172, file: !3, line: 216, column: 9)
!183 = !DILocation(line: 216, column: 9, scope: !172)
!184 = !DILocation(line: 218, column: 15, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 216, column: 22)
!186 = !DILocation(line: 220, column: 24, scope: !187)
!187 = !DILexicalBlockFile(scope: !188, file: !3, discriminator: 1)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 219, column: 13)
!189 = !DILocation(line: 220, column: 13, scope: !188)
!190 = !DILocation(line: 221, column: 24, scope: !187)
!191 = !DILocation(line: 221, column: 34, scope: !187)
!192 = !DILocation(line: 223, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 221, column: 58)
!194 = !DILocation(line: 224, column: 13, scope: !193)
!195 = !DILocation(line: 225, column: 13, scope: !193)
!196 = !DILocation(line: 226, column: 13, scope: !193)
!197 = !DILocation(line: 230, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !182, file: !3, line: 228, column: 12)
!199 = !DILocation(line: 234, column: 1, scope: !172)
!200 = distinct !DISubprogram(name: "ble_list_config_reset", scope: !3, file: !3, line: 418, type: !201, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !8, !8}
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "pair_devices_count", arg: 1, scope: !200, file: !3, line: 418, type: !8)
!205 = !DILocalVariable(name: "is_allow_cover", arg: 2, scope: !200, file: !3, line: 418, type: !8)
!206 = !DILocation(line: 418, column: 31, scope: !200)
!207 = !DILocation(line: 418, column: 54, scope: !200)
!208 = !DILocation(line: 420, column: 5, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !3, line: 420, column: 5)
!210 = !DILocation(line: 420, column: 5, scope: !200)
!211 = !DILocation(line: 421, column: 5, scope: !200)
!212 = !DILocation(line: 423, column: 9, scope: !200)
!213 = !DILocation(line: 427, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !200, file: !3, line: 427, column: 9)
!215 = !DILocation(line: 427, column: 29, scope: !214)
!216 = !DILocation(line: 427, column: 9, scope: !200)
!217 = !DILocation(line: 428, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 427, column: 52)
!219 = !DILocation(line: 429, column: 5, scope: !218)
!220 = !DILocation(line: 431, column: 29, scope: !200)
!221 = !DILocation(line: 432, column: 25, scope: !200)
!222 = !DILocation(line: 210, column: 36, scope: !172, inlinedAt: !223)
!223 = distinct !DILocation(line: 433, column: 5, scope: !200)
!224 = !DILocation(line: 212, column: 9, scope: !172, inlinedAt: !223)
!225 = !DILocation(line: 230, column: 9, scope: !198, inlinedAt: !223)
!226 = !DILocation(line: 435, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !200, file: !3, line: 435, column: 9)
!228 = !DILocation(line: 435, column: 9, scope: !227)
!229 = !DILocation(line: 435, column: 9, scope: !200)
!230 = !DILocation(line: 436, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 435, column: 30)
!232 = !DILocation(line: 437, column: 5, scope: !231)
!233 = !DILocation(line: 438, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !227, file: !3, line: 437, column: 12)
!235 = !DILocation(line: 441, column: 1, scope: !200)
!236 = distinct !DISubprogram(name: "ble_list_clear_all", scope: !3, file: !3, line: 444, type: !237, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!41}
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "i", scope: !236, file: !3, line: 446, type: !8)
!241 = !DILocalVariable(name: "ret", scope: !236, file: !3, line: 447, type: !178)
!242 = !DILocalVariable(name: "item", scope: !236, file: !3, line: 448, type: !43)
!243 = !DILocation(line: 448, column: 5, scope: !236)
!244 = !DILocation(line: 450, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !236, file: !3, line: 450, column: 5)
!246 = !DILocation(line: 450, column: 5, scope: !236)
!247 = !DILocation(line: 446, column: 8, scope: !236)
!248 = !DILocation(line: 458, column: 29, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !3, discriminator: 1)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 458, column: 5)
!251 = distinct !DILexicalBlock(scope: !236, file: !3, line: 458, column: 5)
!252 = !DILocation(line: 458, column: 19, scope: !249)
!253 = !DILocation(line: 458, column: 5, scope: !254)
!254 = !DILexicalBlockFile(scope: !251, file: !3, discriminator: 1)
!255 = !DILocation(line: 448, column: 23, scope: !236)
!256 = !DILocation(line: 459, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 459, column: 13)
!258 = distinct !DILexicalBlock(scope: !250, file: !3, line: 458, column: 47)
!259 = !DILocation(line: 459, column: 13, scope: !258)
!260 = !DILocation(line: 460, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 459, column: 44)
!262 = !DILocation(line: 462, column: 51, scope: !261)
!263 = !DILocation(line: 462, column: 13, scope: !261)
!264 = !DILocation(line: 463, column: 9, scope: !261)
!265 = !DILocation(line: 458, column: 43, scope: !266)
!266 = !DILexicalBlockFile(scope: !250, file: !3, discriminator: 2)
!267 = !DILocation(line: 458, column: 17, scope: !249)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 458, column: 5, scope: !251)
!270 = !DILocation(line: 464, column: 5, scope: !251)
!271 = !DILocation(line: 466, column: 23, scope: !236)
!272 = !DILocation(line: 467, column: 33, scope: !236)
!273 = !{!103, !104, i64 3}
!274 = !DILocation(line: 468, column: 5, scope: !236)
!275 = !DILocation(line: 210, column: 36, scope: !172, inlinedAt: !276)
!276 = distinct !DILocation(line: 469, column: 5, scope: !236)
!277 = !DILocation(line: 212, column: 9, scope: !172, inlinedAt: !276)
!278 = !DILocation(line: 230, column: 9, scope: !198, inlinedAt: !276)
!279 = !DILocation(line: 470, column: 5, scope: !236)
!280 = !DILocation(line: 471, column: 1, scope: !236)
!281 = distinct !DISubprogram(name: "get_list_exist_item", scope: !3, file: !3, line: 237, type: !282, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!41, !42, !8}
!284 = !{!285, !286, !287}
!285 = !DILocalVariable(name: "item", arg: 1, scope: !281, file: !3, line: 237, type: !42)
!286 = !DILocalVariable(name: "index", arg: 2, scope: !281, file: !3, line: 237, type: !8)
!287 = !DILocalVariable(name: "ret", scope: !281, file: !3, line: 243, type: !178)
!288 = !DILocation(line: 237, column: 52, scope: !281)
!289 = !DILocation(line: 237, column: 61, scope: !281)
!290 = !DILocation(line: 239, column: 18, scope: !291)
!291 = distinct !DILexicalBlock(scope: !281, file: !3, line: 239, column: 9)
!292 = !DILocation(line: 239, column: 15, scope: !291)
!293 = !DILocation(line: 239, column: 9, scope: !281)
!294 = !DILocation(line: 239, column: 9, scope: !291)
!295 = !DILocation(line: 243, column: 52, scope: !281)
!296 = !DILocation(line: 243, column: 61, scope: !281)
!297 = !DILocation(line: 243, column: 15, scope: !281)
!298 = !DILocation(line: 243, column: 9, scope: !281)
!299 = !DILocation(line: 244, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !281, file: !3, line: 244, column: 9)
!301 = !DILocation(line: 244, column: 32, scope: !300)
!302 = !DILocation(line: 244, column: 41, scope: !303)
!303 = !DILexicalBlockFile(scope: !300, file: !3, discriminator: 1)
!304 = !DILocation(line: 244, column: 46, scope: !303)
!305 = !DILocation(line: 244, column: 9, scope: !306)
!306 = !DILexicalBlockFile(scope: !281, file: !3, discriminator: 1)
!307 = !DILocation(line: 249, column: 5, scope: !281)
!308 = !DILocation(line: 250, column: 1, scope: !306)
!309 = distinct !DISubprogram(name: "ble_list_pair_add", scope: !3, file: !3, line: 500, type: !310, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!41, !8, !12, !8, !12, !12, !12}
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!313 = !DILocalVariable(name: "role", arg: 1, scope: !309, file: !3, line: 500, type: !8)
!314 = !DILocalVariable(name: "conn_addr", arg: 2, scope: !309, file: !3, line: 500, type: !12)
!315 = !DILocalVariable(name: "conn_addr_type", arg: 3, scope: !309, file: !3, line: 500, type: !8)
!316 = !DILocalVariable(name: "irk_key", arg: 4, scope: !309, file: !3, line: 500, type: !12)
!317 = !DILocalVariable(name: "ltk_key", arg: 5, scope: !309, file: !3, line: 500, type: !12)
!318 = !DILocalVariable(name: "ext_data", arg: 6, scope: !309, file: !3, line: 500, type: !12)
!319 = !DILocalVariable(name: "vm_index", scope: !309, file: !3, line: 504, type: !8)
!320 = !DILocalVariable(name: "distribution", scope: !309, file: !3, line: 505, type: !8)
!321 = !DILocalVariable(name: "item", scope: !309, file: !3, line: 506, type: !43)
!322 = !DILocalVariable(name: "ret", scope: !309, file: !3, line: 507, type: !178)
!323 = !DILocation(line: 500, column: 27, scope: !309)
!324 = !DILocation(line: 500, column: 37, scope: !309)
!325 = !DILocation(line: 500, column: 51, scope: !309)
!326 = !DILocation(line: 500, column: 71, scope: !309)
!327 = !DILocation(line: 500, column: 84, scope: !309)
!328 = !DILocation(line: 500, column: 97, scope: !309)
!329 = !DILocation(line: 502, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !309, file: !3, line: 502, column: 5)
!331 = !DILocation(line: 502, column: 5, scope: !309)
!332 = !DILocation(line: 506, column: 5, scope: !309)
!333 = !DILocation(line: 513, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !309, file: !3, line: 513, column: 9)
!335 = !DILocation(line: 519, column: 25, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !3, line: 517, column: 12)
!337 = !DILocation(line: 513, column: 9, scope: !309)
!338 = !DILocation(line: 515, column: 25, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 513, column: 15)
!340 = !{!104, !104, i64 0}
!341 = !DILocation(line: 515, column: 37, scope: !339)
!342 = !DILocation(line: 516, column: 37, scope: !339)
!343 = !DILocation(line: 515, column: 121, scope: !339)
!344 = !DILocation(line: 505, column: 8, scope: !309)
!345 = !DILocation(line: 517, column: 5, scope: !339)
!346 = !DILocation(line: 522, column: 5, scope: !309)
!347 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !348, file: !3, line: 357, type: !12)
!348 = distinct !DISubprogram(name: "delete_conn_addr_exist", scope: !3, file: !3, line: 357, type: !349, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{!41, !12, !8, !12, !8}
!351 = !{!347, !352, !353, !354, !355, !356, !357}
!352 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !348, file: !3, line: 357, type: !8)
!353 = !DILocalVariable(name: "irk_key", arg: 3, scope: !348, file: !3, line: 357, type: !12)
!354 = !DILocalVariable(name: "distribution", arg: 4, scope: !348, file: !3, line: 357, type: !8)
!355 = !DILocalVariable(name: "i", scope: !348, file: !3, line: 359, type: !92)
!356 = !DILocalVariable(name: "item", scope: !348, file: !3, line: 360, type: !43)
!357 = !DILocalVariable(name: "del_flag", scope: !348, file: !3, line: 361, type: !41)
!358 = !DILocation(line: 357, column: 40, scope: !348, inlinedAt: !359)
!359 = distinct !DILocation(line: 530, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !309, file: !3, line: 530, column: 9)
!361 = !DILocation(line: 357, column: 54, scope: !348, inlinedAt: !359)
!362 = !DILocation(line: 357, column: 74, scope: !348, inlinedAt: !359)
!363 = !DILocation(line: 357, column: 86, scope: !348, inlinedAt: !359)
!364 = !DILocation(line: 360, column: 5, scope: !348, inlinedAt: !359)
!365 = !DILocation(line: 361, column: 10, scope: !348, inlinedAt: !359)
!366 = !DILocation(line: 363, column: 22, scope: !367, inlinedAt: !359)
!367 = distinct !DILexicalBlock(scope: !348, file: !3, line: 363, column: 9)
!368 = !DILocation(line: 363, column: 11, scope: !367, inlinedAt: !359)
!369 = !DILocation(line: 363, column: 9, scope: !348, inlinedAt: !359)
!370 = !DILocation(line: 359, column: 9, scope: !348, inlinedAt: !359)
!371 = !DILocation(line: 368, column: 29, scope: !372, inlinedAt: !359)
!372 = !DILexicalBlockFile(scope: !373, file: !3, discriminator: 1)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 368, column: 5)
!374 = distinct !DILexicalBlock(scope: !348, file: !3, line: 368, column: 5)
!375 = !DILocation(line: 368, column: 19, scope: !372, inlinedAt: !359)
!376 = !DILocation(line: 368, column: 5, scope: !377, inlinedAt: !359)
!377 = !DILexicalBlockFile(scope: !374, file: !3, discriminator: 1)
!378 = !DILocation(line: 369, column: 40, scope: !379, inlinedAt: !359)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 369, column: 13)
!380 = distinct !DILexicalBlock(scope: !373, file: !3, line: 368, column: 47)
!381 = !DILocation(line: 360, column: 23, scope: !348, inlinedAt: !359)
!382 = !DILocation(line: 369, column: 13, scope: !379, inlinedAt: !359)
!383 = !DILocation(line: 369, column: 13, scope: !380, inlinedAt: !359)
!384 = !DILocation(line: 370, column: 17, scope: !385, inlinedAt: !359)
!385 = distinct !DILexicalBlock(scope: !379, file: !3, line: 369, column: 44)
!386 = !DILocation(line: 371, column: 80, scope: !387, inlinedAt: !359)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 371, column: 21)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 370, column: 33)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 370, column: 17)
!390 = !DILocation(line: 372, column: 27, scope: !387, inlinedAt: !359)
!391 = !{!392, !104, i64 39}
!392 = !{!"", !104, i64 0, !104, i64 16, !104, i64 32, !104, i64 38, !104, i64 38, !104, i64 38, !104, i64 38, !104, i64 39, !104, i64 40, !104, i64 48, !104, i64 50, !104, i64 51, !104, i64 51}
!393 = !DILocation(line: 372, column: 40, scope: !387, inlinedAt: !359)
!394 = !DILocation(line: 372, column: 80, scope: !387, inlinedAt: !359)
!395 = !DILocation(line: 371, column: 21, scope: !396, inlinedAt: !359)
!396 = !DILexicalBlockFile(scope: !388, file: !3, discriminator: 1)
!397 = !DILocation(line: 374, column: 26, scope: !398, inlinedAt: !359)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 374, column: 25)
!399 = distinct !DILexicalBlock(scope: !387, file: !3, line: 372, column: 86)
!400 = !DILocation(line: 374, column: 25, scope: !399, inlinedAt: !359)
!401 = !DILocation(line: 376, column: 25, scope: !402, inlinedAt: !359)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 374, column: 59)
!403 = !DILocation(line: 378, column: 21, scope: !402, inlinedAt: !359)
!404 = !DILocation(line: 381, column: 33, scope: !405, inlinedAt: !359)
!405 = !DILexicalBlockFile(scope: !406, file: !3, discriminator: 1)
!406 = distinct !DILexicalBlock(scope: !387, file: !3, line: 381, column: 28)
!407 = !DILocation(line: 381, column: 30, scope: !405, inlinedAt: !359)
!408 = !DILocation(line: 381, column: 67, scope: !405, inlinedAt: !359)
!409 = !DILocation(line: 382, column: 36, scope: !406, inlinedAt: !359)
!410 = !DILocation(line: 382, column: 33, scope: !406, inlinedAt: !359)
!411 = !DILocation(line: 381, column: 28, scope: !412, inlinedAt: !359)
!412 = !DILexicalBlockFile(scope: !387, file: !3, discriminator: 2)
!413 = !DILocation(line: 384, column: 21, scope: !414, inlinedAt: !359)
!414 = distinct !DILexicalBlock(scope: !406, file: !3, line: 382, column: 86)
!415 = !DILocation(line: 386, column: 17, scope: !414, inlinedAt: !359)
!416 = !DILocation(line: 390, column: 26, scope: !417, inlinedAt: !359)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 390, column: 21)
!418 = distinct !DILexicalBlock(scope: !389, file: !3, line: 389, column: 20)
!419 = !DILocation(line: 390, column: 23, scope: !417, inlinedAt: !359)
!420 = !DILocation(line: 390, column: 21, scope: !418, inlinedAt: !359)
!421 = !DILocation(line: 392, column: 21, scope: !422, inlinedAt: !359)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 390, column: 59)
!423 = !DILocation(line: 394, column: 17, scope: !422, inlinedAt: !359)
!424 = !DILocation(line: 368, column: 43, scope: !425, inlinedAt: !359)
!425 = !DILexicalBlockFile(scope: !373, file: !3, discriminator: 2)
!426 = !DILocation(line: 368, column: 21, scope: !372, inlinedAt: !359)
!427 = distinct !{!427, !428, !429}
!428 = !DILocation(line: 368, column: 5, scope: !374)
!429 = !DILocation(line: 399, column: 5, scope: !374)
!430 = !DILocation(line: 401, column: 1, scope: !348, inlinedAt: !359)
!431 = !DILocation(line: 536, column: 10, scope: !309)
!432 = !DILocation(line: 536, column: 20, scope: !309)
!433 = !DILocation(line: 537, column: 22, scope: !434)
!434 = distinct !DILexicalBlock(scope: !309, file: !3, line: 537, column: 9)
!435 = !DILocation(line: 537, column: 9, scope: !309)
!436 = !DILocation(line: 538, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 537, column: 70)
!438 = !DILocation(line: 539, column: 5, scope: !437)
!439 = !DILocation(line: 540, column: 28, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 540, column: 13)
!441 = distinct !DILexicalBlock(scope: !434, file: !3, line: 539, column: 12)
!442 = !DILocation(line: 540, column: 32, scope: !443)
!443 = !DILexicalBlockFile(scope: !440, file: !3, discriminator: 1)
!444 = !DILocation(line: 540, column: 45, scope: !443)
!445 = !DILocation(line: 540, column: 53, scope: !443)
!446 = !DILocation(line: 540, column: 13, scope: !447)
!447 = !DILexicalBlockFile(scope: !441, file: !3, discriminator: 1)
!448 = !DILocation(line: 543, column: 26, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !3, line: 540, column: 62)
!450 = !DILocation(line: 544, column: 13, scope: !449)
!451 = !DILocation(line: 545, column: 9, scope: !449)
!452 = !DILocation(line: 547, column: 26, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 545, column: 41)
!454 = distinct !DILexicalBlock(scope: !440, file: !3, line: 545, column: 20)
!455 = !DILocation(line: 548, column: 13, scope: !453)
!456 = !DILocation(line: 549, column: 9, scope: !453)
!457 = !DILocation(line: 550, column: 13, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 549, column: 16)
!459 = !DILocation(line: 554, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !309, file: !3, line: 554, column: 9)
!461 = !DILocation(line: 554, column: 22, scope: !460)
!462 = !DILocation(line: 554, column: 9, scope: !309)
!463 = !DILocation(line: 555, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !3, line: 554, column: 62)
!465 = !DILocation(line: 556, column: 5, scope: !464)
!466 = !DILocation(line: 557, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !460, file: !3, line: 556, column: 12)
!468 = !DILocation(line: 560, column: 22, scope: !469)
!469 = distinct !DILexicalBlock(scope: !309, file: !3, line: 560, column: 9)
!470 = !DILocation(line: 560, column: 9, scope: !309)
!471 = !DILocation(line: 561, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !3, line: 560, column: 64)
!473 = !DILocation(line: 562, column: 5, scope: !472)
!474 = !DILocation(line: 563, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !469, file: !3, line: 562, column: 12)
!476 = !DILocation(line: 566, column: 10, scope: !309)
!477 = !DILocation(line: 566, column: 23, scope: !309)
!478 = !DILocation(line: 567, column: 15, scope: !309)
!479 = !DILocation(line: 568, column: 15, scope: !309)
!480 = !DILocation(line: 569, column: 24, scope: !309)
!481 = !DILocation(line: 569, column: 22, scope: !309)
!482 = !DILocation(line: 571, column: 31, scope: !309)
!483 = !DILocation(line: 571, column: 10, scope: !309)
!484 = !DILocation(line: 571, column: 29, scope: !309)
!485 = !{!392, !104, i64 50}
!486 = !DILocation(line: 572, column: 26, scope: !309)
!487 = !DILocation(line: 572, column: 10, scope: !309)
!488 = !DILocation(line: 572, column: 24, scope: !309)
!489 = !DILocation(line: 573, column: 33, scope: !309)
!490 = !DILocation(line: 573, column: 31, scope: !309)
!491 = !DILocation(line: 574, column: 5, scope: !309)
!492 = !DILocation(line: 574, column: 24, scope: !309)
!493 = !DILocation(line: 575, column: 5, scope: !309)
!494 = !DILocation(line: 575, column: 24, scope: !309)
!495 = !DILocation(line: 506, column: 23, scope: !309)
!496 = !DILocation(line: 576, column: 12, scope: !309)
!497 = !DILocation(line: 577, column: 1, scope: !309)
!498 = !DILocation(line: 577, column: 1, scope: !499)
!499 = !DILexicalBlockFile(scope: !309, file: !3, discriminator: 1)
!500 = distinct !DISubprogram(name: "add_new_device_to_list", scope: !3, file: !3, line: 473, type: !501, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!41, !42}
!503 = !{!504, !505, !506}
!504 = !DILocalVariable(name: "item", arg: 1, scope: !500, file: !3, line: 473, type: !42)
!505 = !DILocalVariable(name: "vm_index", scope: !500, file: !3, line: 475, type: !8)
!506 = !DILocalVariable(name: "ret", scope: !500, file: !3, line: 486, type: !34)
!507 = !DILocation(line: 473, column: 55, scope: !500)
!508 = !DILocalVariable(name: "find_sn", scope: !509, file: !3, line: 292, type: !8)
!509 = distinct !DISubprogram(name: "get_list_new_index", scope: !3, file: !3, line: 290, type: !510, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!41, !12}
!512 = !{!513, !508, !514}
!513 = !DILocalVariable(name: "vm_index", arg: 1, scope: !509, file: !3, line: 290, type: !12)
!514 = !DILocalVariable(name: "i", scope: !515, file: !3, line: 302, type: !34)
!515 = distinct !DILexicalBlock(scope: !509, file: !3, line: 302, column: 5)
!516 = !DILocation(line: 292, column: 8, scope: !509, inlinedAt: !517)
!517 = distinct !DILocation(line: 478, column: 10, scope: !518)
!518 = distinct !DILexicalBlock(scope: !500, file: !3, line: 478, column: 9)
!519 = !DILocation(line: 294, column: 17, scope: !520, inlinedAt: !517)
!520 = distinct !DILexicalBlock(scope: !509, file: !3, line: 294, column: 9)
!521 = !DILocation(line: 294, column: 38, scope: !520, inlinedAt: !517)
!522 = !DILocation(line: 294, column: 27, scope: !520, inlinedAt: !517)
!523 = !DILocation(line: 294, column: 9, scope: !509, inlinedAt: !517)
!524 = !DILocation(line: 295, column: 22, scope: !525, inlinedAt: !517)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 295, column: 13)
!526 = distinct !DILexicalBlock(scope: !520, file: !3, line: 294, column: 51)
!527 = !DILocation(line: 295, column: 14, scope: !525, inlinedAt: !517)
!528 = !DILocation(line: 302, column: 23, scope: !529, inlinedAt: !517)
!529 = !DILexicalBlockFile(scope: !530, file: !3, discriminator: 1)
!530 = distinct !DILexicalBlock(scope: !515, file: !3, line: 302, column: 5)
!531 = !DILocation(line: 295, column: 13, scope: !526, inlinedAt: !517)
!532 = !DILocation(line: 302, column: 14, scope: !515, inlinedAt: !517)
!533 = !DILocation(line: 302, column: 5, scope: !534, inlinedAt: !517)
!534 = !DILexicalBlockFile(scope: !515, file: !3, discriminator: 1)
!535 = !DILocation(line: 303, column: 13, scope: !536, inlinedAt: !517)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 303, column: 13)
!537 = distinct !DILexicalBlock(scope: !530, file: !3, line: 302, column: 51)
!538 = !DILocation(line: 303, column: 34, scope: !536, inlinedAt: !517)
!539 = !DILocation(line: 303, column: 13, scope: !537, inlinedAt: !517)
!540 = !DILocation(line: 304, column: 25, scope: !541, inlinedAt: !517)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 304, column: 17)
!542 = distinct !DILexicalBlock(scope: !536, file: !3, line: 303, column: 46)
!543 = !DILocation(line: 304, column: 17, scope: !542, inlinedAt: !517)
!544 = !DILocation(line: 305, column: 17, scope: !545, inlinedAt: !517)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 304, column: 45)
!546 = !DILocation(line: 307, column: 13, scope: !545, inlinedAt: !517)
!547 = !DILocation(line: 302, column: 47, scope: !548, inlinedAt: !517)
!548 = !DILexicalBlockFile(scope: !530, file: !3, discriminator: 3)
!549 = distinct !{!549, !550, !551}
!550 = !DILocation(line: 302, column: 5, scope: !515)
!551 = !DILocation(line: 312, column: 5, scope: !515)
!552 = !DILocation(line: 475, column: 8, scope: !500)
!553 = !DILocation(line: 486, column: 55, scope: !500)
!554 = !DILocation(line: 486, column: 53, scope: !500)
!555 = !DILocation(line: 486, column: 65, scope: !500)
!556 = !DILocation(line: 486, column: 15, scope: !500)
!557 = !DILocation(line: 486, column: 9, scope: !500)
!558 = !DILocation(line: 487, column: 13, scope: !559)
!559 = distinct !DILexicalBlock(scope: !500, file: !3, line: 487, column: 9)
!560 = !DILocation(line: 487, column: 9, scope: !500)
!561 = !DILocation(line: 488, column: 37, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !3, line: 487, column: 18)
!563 = !DILocation(line: 489, column: 47, scope: !562)
!564 = !DILocation(line: 489, column: 9, scope: !562)
!565 = !DILocation(line: 489, column: 37, scope: !562)
!566 = !DILocation(line: 490, column: 26, scope: !562)
!567 = !DILocation(line: 210, column: 36, scope: !172, inlinedAt: !568)
!568 = distinct !DILocation(line: 491, column: 9, scope: !562)
!569 = !DILocation(line: 212, column: 9, scope: !172, inlinedAt: !568)
!570 = !DILocation(line: 230, column: 9, scope: !198, inlinedAt: !568)
!571 = !DILocation(line: 493, column: 9, scope: !562)
!572 = !DILocation(line: 497, column: 1, scope: !573)
!573 = !DILexicalBlockFile(scope: !500, file: !3, discriminator: 1)
!574 = distinct !DISubprogram(name: "ble_list_get_id_addr", scope: !3, file: !3, line: 580, type: !575, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!41, !12, !8, !12}
!577 = !{!578, !579, !580, !581}
!578 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !574, file: !3, line: 580, type: !12)
!579 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !574, file: !3, line: 580, type: !8)
!580 = !DILocalVariable(name: "id_addr", arg: 3, scope: !574, file: !3, line: 580, type: !12)
!581 = !DILocalVariable(name: "item", scope: !574, file: !3, line: 583, type: !43)
!582 = !DILocation(line: 580, column: 31, scope: !574)
!583 = !DILocation(line: 580, column: 45, scope: !574)
!584 = !DILocation(line: 580, column: 65, scope: !574)
!585 = !DILocation(line: 582, column: 5, scope: !586)
!586 = distinct !DILexicalBlock(scope: !574, file: !3, line: 582, column: 5)
!587 = !DILocation(line: 582, column: 5, scope: !574)
!588 = !DILocation(line: 583, column: 5, scope: !574)
!589 = !DILocation(line: 583, column: 23, scope: !574)
!590 = !DILocation(line: 584, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !574, file: !3, line: 584, column: 9)
!592 = !DILocation(line: 584, column: 9, scope: !574)
!593 = !DILocation(line: 585, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 585, column: 13)
!595 = distinct !DILexicalBlock(scope: !591, file: !3, line: 584, column: 69)
!596 = !DILocation(line: 585, column: 21, scope: !594)
!597 = !DILocation(line: 585, column: 30, scope: !598)
!598 = !DILexicalBlockFile(scope: !594, file: !3, discriminator: 1)
!599 = !DILocation(line: 585, column: 43, scope: !598)
!600 = !DILocation(line: 585, column: 13, scope: !601)
!601 = !DILexicalBlockFile(scope: !595, file: !3, discriminator: 1)
!602 = !DILocation(line: 586, column: 13, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !3, line: 585, column: 92)
!604 = !DILocation(line: 587, column: 9, scope: !603)
!605 = !DILocation(line: 592, column: 1, scope: !574)
!606 = !DILocation(line: 592, column: 1, scope: !607)
!607 = !DILexicalBlockFile(scope: !574, file: !3, discriminator: 1)
!608 = distinct !DISubprogram(name: "ble_list_get_id_addr_extend", scope: !3, file: !3, line: 594, type: !349, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !609)
!609 = !{!610, !611, !612, !613, !614}
!610 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !608, file: !3, line: 594, type: !12)
!611 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !608, file: !3, line: 594, type: !8)
!612 = !DILocalVariable(name: "id_addr", arg: 3, scope: !608, file: !3, line: 594, type: !12)
!613 = !DILocalVariable(name: "role", arg: 4, scope: !608, file: !3, line: 594, type: !8)
!614 = !DILocalVariable(name: "item", scope: !608, file: !3, line: 597, type: !43)
!615 = !DILocation(line: 594, column: 38, scope: !608)
!616 = !DILocation(line: 594, column: 52, scope: !608)
!617 = !DILocation(line: 594, column: 72, scope: !608)
!618 = !DILocation(line: 594, column: 84, scope: !608)
!619 = !DILocation(line: 596, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !608, file: !3, line: 596, column: 5)
!621 = !DILocation(line: 596, column: 5, scope: !608)
!622 = !DILocation(line: 597, column: 5, scope: !608)
!623 = !DILocation(line: 597, column: 23, scope: !608)
!624 = !DILocation(line: 598, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !608, file: !3, line: 598, column: 9)
!626 = !DILocation(line: 598, column: 9, scope: !608)
!627 = !DILocation(line: 599, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 599, column: 13)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 598, column: 69)
!630 = !DILocation(line: 599, column: 21, scope: !628)
!631 = !DILocation(line: 599, column: 30, scope: !632)
!632 = !DILexicalBlockFile(scope: !628, file: !3, discriminator: 1)
!633 = !DILocation(line: 599, column: 43, scope: !632)
!634 = !DILocation(line: 599, column: 13, scope: !635)
!635 = !DILexicalBlockFile(scope: !629, file: !3, discriminator: 1)
!636 = !DILocation(line: 600, column: 13, scope: !637)
!637 = distinct !DILexicalBlock(scope: !628, file: !3, line: 599, column: 92)
!638 = !DILocation(line: 601, column: 9, scope: !637)
!639 = !DILocation(line: 606, column: 1, scope: !608)
!640 = !DILocation(line: 606, column: 1, scope: !641)
!641 = !DILexicalBlockFile(scope: !608, file: !3, discriminator: 1)
!642 = distinct !DISubprogram(name: "ble_list_get_remote_type", scope: !3, file: !3, line: 610, type: !575, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !643)
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !642, file: !3, line: 610, type: !12)
!645 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !642, file: !3, line: 610, type: !8)
!646 = !DILocalVariable(name: "output_type", arg: 3, scope: !642, file: !3, line: 610, type: !12)
!647 = !DILocalVariable(name: "item", scope: !642, file: !3, line: 613, type: !43)
!648 = !DILocation(line: 610, column: 35, scope: !642)
!649 = !DILocation(line: 610, column: 49, scope: !642)
!650 = !DILocation(line: 610, column: 69, scope: !642)
!651 = !DILocation(line: 612, column: 5, scope: !652)
!652 = distinct !DILexicalBlock(scope: !642, file: !3, line: 612, column: 5)
!653 = !DILocation(line: 612, column: 5, scope: !642)
!654 = !DILocation(line: 613, column: 5, scope: !642)
!655 = !DILocation(line: 613, column: 23, scope: !642)
!656 = !DILocation(line: 614, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !642, file: !3, line: 614, column: 9)
!658 = !DILocation(line: 614, column: 9, scope: !642)
!659 = !DILocation(line: 615, column: 33, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !3, line: 614, column: 69)
!661 = !DILocation(line: 616, column: 9, scope: !660)
!662 = !DILocation(line: 615, column: 22, scope: !660)
!663 = !DILocation(line: 621, column: 1, scope: !642)
!664 = !DILocation(line: 621, column: 1, scope: !665)
!665 = !DILexicalBlockFile(scope: !642, file: !3, discriminator: 1)
!666 = distinct !DISubprogram(name: "ble_list_check_addr_is_exist", scope: !3, file: !3, line: 624, type: !667, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!41, !12, !8}
!669 = !{!670, !671}
!670 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !666, file: !3, line: 624, type: !12)
!671 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !666, file: !3, line: 624, type: !8)
!672 = !DILocation(line: 624, column: 39, scope: !666)
!673 = !DILocation(line: 624, column: 53, scope: !666)
!674 = !DILocation(line: 626, column: 5, scope: !675)
!675 = distinct !DILexicalBlock(scope: !666, file: !3, line: 626, column: 5)
!676 = !DILocation(line: 626, column: 5, scope: !666)
!677 = !DILocation(line: 627, column: 12, scope: !666)
!678 = !DILocation(line: 627, column: 5, scope: !666)
!679 = !DILocation(line: 628, column: 1, scope: !666)
!680 = distinct !DISubprogram(name: "ble_list_check_addr_is_exist_extend", scope: !3, file: !3, line: 631, type: !681, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!41, !12, !8, !8}
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !680, file: !3, line: 631, type: !12)
!685 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !680, file: !3, line: 631, type: !8)
!686 = !DILocalVariable(name: "role", arg: 3, scope: !680, file: !3, line: 631, type: !8)
!687 = !DILocation(line: 631, column: 46, scope: !680)
!688 = !DILocation(line: 631, column: 60, scope: !680)
!689 = !DILocation(line: 631, column: 79, scope: !680)
!690 = !DILocation(line: 633, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !680, file: !3, line: 633, column: 5)
!692 = !DILocation(line: 633, column: 5, scope: !680)
!693 = !DILocation(line: 634, column: 12, scope: !680)
!694 = !DILocation(line: 634, column: 5, scope: !680)
!695 = !DILocation(line: 635, column: 1, scope: !680)
!696 = distinct !DISubprogram(name: "ble_list_reconnect_device_is_exist", scope: !3, file: !3, line: 639, type: !349, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704}
!698 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !696, file: !3, line: 639, type: !12)
!699 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !696, file: !3, line: 639, type: !8)
!700 = !DILocalVariable(name: "ltk_key", arg: 3, scope: !696, file: !3, line: 639, type: !12)
!701 = !DILocalVariable(name: "role", arg: 4, scope: !696, file: !3, line: 639, type: !8)
!702 = !DILocalVariable(name: "item", scope: !696, file: !3, line: 641, type: !43)
!703 = !DILocalVariable(name: "i", scope: !696, file: !3, line: 642, type: !8)
!704 = !DILocalVariable(name: "ret", scope: !696, file: !3, line: 643, type: !41)
!705 = !DILocation(line: 639, column: 45, scope: !696)
!706 = !DILocation(line: 639, column: 59, scope: !696)
!707 = !DILocation(line: 639, column: 79, scope: !696)
!708 = !DILocation(line: 639, column: 91, scope: !696)
!709 = !DILocation(line: 641, column: 5, scope: !696)
!710 = !DILocation(line: 643, column: 10, scope: !696)
!711 = !DILocation(line: 645, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !696, file: !3, line: 645, column: 5)
!713 = !DILocation(line: 650, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !696, file: !3, line: 650, column: 9)
!715 = !DILocation(line: 650, column: 11, scope: !714)
!716 = !DILocation(line: 645, column: 5, scope: !696)
!717 = !DILocation(line: 665, column: 39, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !3, discriminator: 1)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 664, column: 24)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 658, column: 17)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 657, column: 44)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 657, column: 13)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 656, column: 47)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 656, column: 5)
!725 = distinct !DILexicalBlock(scope: !696, file: !3, line: 656, column: 5)
!726 = !DILocation(line: 642, column: 8, scope: !696)
!727 = !DILocation(line: 656, column: 29, scope: !728)
!728 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 1)
!729 = !DILocation(line: 656, column: 19, scope: !728)
!730 = !DILocation(line: 656, column: 5, scope: !731)
!731 = !DILexicalBlockFile(scope: !725, file: !3, discriminator: 1)
!732 = !DILocation(line: 641, column: 23, scope: !696)
!733 = !DILocation(line: 657, column: 13, scope: !722)
!734 = !DILocation(line: 657, column: 13, scope: !723)
!735 = !DILocation(line: 658, column: 17, scope: !721)
!736 = !DILocation(line: 659, column: 26, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 659, column: 21)
!738 = distinct !DILexicalBlock(scope: !720, file: !3, line: 658, column: 38)
!739 = !DILocation(line: 659, column: 23, scope: !737)
!740 = !DILocation(line: 659, column: 58, scope: !737)
!741 = !DILocation(line: 659, column: 66, scope: !742)
!742 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 1)
!743 = !DILocation(line: 659, column: 63, scope: !742)
!744 = !DILocation(line: 659, column: 21, scope: !745)
!745 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 1)
!746 = !DILocation(line: 664, column: 32, scope: !718)
!747 = !DILocation(line: 664, column: 29, scope: !718)
!748 = !DILocation(line: 665, column: 24, scope: !719)
!749 = !DILocation(line: 665, column: 32, scope: !718)
!750 = !DILocation(line: 665, column: 29, scope: !718)
!751 = !DILocation(line: 664, column: 24, scope: !752)
!752 = !DILexicalBlockFile(scope: !720, file: !3, discriminator: 2)
!753 = !DILocation(line: 670, column: 32, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 670, column: 21)
!755 = distinct !DILexicalBlock(scope: !719, file: !3, line: 669, column: 20)
!756 = !DILocation(line: 670, column: 45, scope: !754)
!757 = !DILocation(line: 670, column: 23, scope: !754)
!758 = !DILocation(line: 670, column: 85, scope: !754)
!759 = !DILocation(line: 671, column: 26, scope: !754)
!760 = !DILocation(line: 671, column: 23, scope: !754)
!761 = !DILocation(line: 670, column: 21, scope: !762)
!762 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 1)
!763 = !DILocation(line: 656, column: 43, scope: !764)
!764 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 2)
!765 = distinct !{!765, !766, !767}
!766 = !DILocation(line: 656, column: 5, scope: !725)
!767 = !DILocation(line: 677, column: 5, scope: !725)
!768 = !DILocation(line: 683, column: 1, scope: !696)
!769 = distinct !DISubprogram(name: "check_random_addr", scope: !3, file: !3, line: 163, type: !770, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!41, !12, !12, !12}
!772 = !{!773, !774, !775, !776, !780, !781}
!773 = !DILocalVariable(name: "addr_in", arg: 1, scope: !769, file: !3, line: 163, type: !12)
!774 = !DILocalVariable(name: "irk_key", arg: 2, scope: !769, file: !3, line: 163, type: !12)
!775 = !DILocalVariable(name: "addr_save", arg: 3, scope: !769, file: !3, line: 163, type: !12)
!776 = !DILocalVariable(name: "hash", scope: !769, file: !3, line: 165, type: !777)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 24, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 3)
!780 = !DILocalVariable(name: "check_irk_key", scope: !769, file: !3, line: 166, type: !48)
!781 = !DILocalVariable(name: "addr", scope: !769, file: !3, line: 167, type: !53)
!782 = !DILocation(line: 163, column: 35, scope: !769)
!783 = !DILocation(line: 163, column: 48, scope: !769)
!784 = !DILocation(line: 163, column: 61, scope: !769)
!785 = !DILocation(line: 165, column: 5, scope: !769)
!786 = !DILocation(line: 165, column: 8, scope: !769)
!787 = !DILocation(line: 166, column: 5, scope: !769)
!788 = !DILocation(line: 166, column: 8, scope: !769)
!789 = !DILocation(line: 167, column: 5, scope: !769)
!790 = !DILocation(line: 167, column: 8, scope: !769)
!791 = !DILocation(line: 171, column: 10, scope: !792)
!792 = distinct !DILexicalBlock(scope: !769, file: !3, line: 171, column: 9)
!793 = !DILocation(line: 171, column: 21, scope: !792)
!794 = !DILocation(line: 171, column: 29, scope: !792)
!795 = !DILocation(line: 171, column: 9, scope: !769)
!796 = !DILocation(line: 173, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 173, column: 13)
!798 = distinct !DILexicalBlock(scope: !792, file: !3, line: 171, column: 38)
!799 = !DILocation(line: 175, column: 13, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !3, line: 173, column: 45)
!801 = !DILocation(line: 182, column: 5, scope: !769)
!802 = !DILocation(line: 193, column: 5, scope: !769)
!803 = !DILocation(line: 194, column: 33, scope: !769)
!804 = !DILocation(line: 194, column: 5, scope: !769)
!805 = !DILocation(line: 199, column: 10, scope: !806)
!806 = distinct !DILexicalBlock(scope: !769, file: !3, line: 199, column: 9)
!807 = !DILocation(line: 201, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !806, file: !3, line: 199, column: 39)
!809 = !DILocation(line: 206, column: 1, scope: !769)
!810 = distinct !DISubprogram(name: "ble_list_pair_is_allow", scope: !3, file: !3, line: 686, type: !667, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !811)
!811 = !{!812, !813}
!812 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !810, file: !3, line: 686, type: !12)
!813 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !810, file: !3, line: 686, type: !8)
!814 = !DILocation(line: 686, column: 33, scope: !810)
!815 = !DILocation(line: 686, column: 47, scope: !810)
!816 = !DILocation(line: 688, column: 5, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !3, line: 688, column: 5)
!818 = !DILocation(line: 688, column: 5, scope: !810)
!819 = !DILocation(line: 689, column: 18, scope: !820)
!820 = distinct !DILexicalBlock(scope: !810, file: !3, line: 689, column: 9)
!821 = !DILocation(line: 689, column: 10, scope: !820)
!822 = !DILocation(line: 694, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !810, file: !3, line: 694, column: 9)
!824 = !DILocation(line: 694, column: 9, scope: !823)
!825 = !DILocation(line: 689, column: 9, scope: !810)
!826 = !DILocation(line: 699, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !810, file: !3, line: 699, column: 9)
!828 = !DILocation(line: 699, column: 9, scope: !827)
!829 = !DILocation(line: 699, column: 45, scope: !830)
!830 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 1)
!831 = !DILocation(line: 699, column: 55, scope: !830)
!832 = !DILocation(line: 699, column: 33, scope: !827)
!833 = !DILocation(line: 702, column: 12, scope: !810)
!834 = !DILocation(line: 702, column: 5, scope: !810)
!835 = !DILocation(line: 703, column: 1, scope: !810)
!836 = distinct !DISubprogram(name: "ble_list_pair_accept", scope: !3, file: !3, line: 706, type: !173, isLocal: false, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !837)
!837 = !{!838, !839}
!838 = !DILocalVariable(name: "enable", arg: 1, scope: !836, file: !3, line: 706, type: !8)
!839 = !DILocalVariable(name: "lock_set", scope: !836, file: !3, line: 708, type: !8)
!840 = !DILocation(line: 706, column: 30, scope: !836)
!841 = !DILocation(line: 708, column: 19, scope: !836)
!842 = !DILocation(line: 708, column: 8, scope: !836)
!843 = !DILocation(line: 710, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !836, file: !3, line: 710, column: 5)
!845 = !DILocation(line: 710, column: 5, scope: !836)
!846 = !DILocation(line: 713, column: 17, scope: !847)
!847 = distinct !DILexicalBlock(scope: !836, file: !3, line: 713, column: 9)
!848 = !DILocation(line: 713, column: 9, scope: !847)
!849 = !DILocation(line: 713, column: 30, scope: !847)
!850 = !DILocation(line: 713, column: 27, scope: !847)
!851 = !DILocation(line: 713, column: 9, scope: !836)
!852 = !DILocation(line: 714, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !847, file: !3, line: 713, column: 40)
!854 = !DILocation(line: 210, column: 36, scope: !172, inlinedAt: !855)
!855 = distinct !DILocation(line: 715, column: 9, scope: !853)
!856 = !DILocation(line: 212, column: 9, scope: !172, inlinedAt: !855)
!857 = !DILocation(line: 230, column: 9, scope: !198, inlinedAt: !855)
!858 = !DILocation(line: 716, column: 5, scope: !853)
!859 = !DILocation(line: 718, column: 1, scope: !836)
!860 = distinct !DISubprogram(name: "ble_list_bonding_remote", scope: !3, file: !3, line: 721, type: !667, isLocal: false, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !861)
!861 = !{!862, !863, !864}
!862 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !860, file: !3, line: 721, type: !12)
!863 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !860, file: !3, line: 721, type: !8)
!864 = !DILocalVariable(name: "item", scope: !860, file: !3, line: 723, type: !43)
!865 = !DILocation(line: 721, column: 34, scope: !860)
!866 = !DILocation(line: 721, column: 48, scope: !860)
!867 = !DILocation(line: 723, column: 5, scope: !860)
!868 = !DILocation(line: 725, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !860, file: !3, line: 725, column: 5)
!870 = !DILocation(line: 725, column: 5, scope: !860)
!871 = !DILocation(line: 723, column: 23, scope: !860)
!872 = !DILocation(line: 727, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !860, file: !3, line: 727, column: 9)
!874 = !DILocation(line: 727, column: 9, scope: !860)
!875 = !DILocation(line: 728, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 727, column: 69)
!877 = !DILocation(line: 729, column: 16, scope: !876)
!878 = !DILocation(line: 729, column: 9, scope: !876)
!879 = !DILocation(line: 733, column: 1, scope: !860)
!880 = distinct !DISubprogram(name: "ble_list_get_last_id_addr", scope: !3, file: !3, line: 736, type: !510, isLocal: false, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !881)
!881 = !{!882, !883, !884}
!882 = !DILocalVariable(name: "id_addr", arg: 1, scope: !880, file: !3, line: 736, type: !12)
!883 = !DILocalVariable(name: "i", scope: !880, file: !3, line: 738, type: !92)
!884 = !DILocalVariable(name: "item", scope: !880, file: !3, line: 739, type: !43)
!885 = !DILocation(line: 736, column: 36, scope: !880)
!886 = !DILocation(line: 739, column: 5, scope: !880)
!887 = !DILocation(line: 741, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !880, file: !3, line: 741, column: 5)
!889 = !DILocation(line: 743, column: 22, scope: !890)
!890 = distinct !DILexicalBlock(scope: !880, file: !3, line: 743, column: 9)
!891 = !DILocation(line: 743, column: 11, scope: !890)
!892 = !DILocation(line: 741, column: 5, scope: !880)
!893 = !DILocation(line: 748, column: 53, scope: !894)
!894 = distinct !DILexicalBlock(scope: !880, file: !3, line: 748, column: 9)
!895 = !DILocation(line: 739, column: 23, scope: !880)
!896 = !DILocation(line: 748, column: 18, scope: !894)
!897 = !DILocation(line: 748, column: 15, scope: !894)
!898 = !DILocation(line: 748, column: 9, scope: !880)
!899 = !DILocation(line: 753, column: 14, scope: !900)
!900 = distinct !DILexicalBlock(scope: !880, file: !3, line: 753, column: 9)
!901 = !DILocation(line: 753, column: 27, scope: !900)
!902 = !DILocation(line: 753, column: 9, scope: !880)
!903 = !DILocation(line: 754, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !3, line: 753, column: 75)
!905 = !DILocation(line: 755, column: 9, scope: !904)
!906 = !DILocation(line: 760, column: 1, scope: !880)
!907 = distinct !DISubprogram(name: "ble_list_delete_device", scope: !3, file: !3, line: 762, type: !667, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DILocalVariable(name: "conn_addr", arg: 1, scope: !907, file: !3, line: 762, type: !12)
!910 = !DILocalVariable(name: "conn_addr_type", arg: 2, scope: !907, file: !3, line: 762, type: !8)
!911 = !DILocalVariable(name: "i", scope: !907, file: !3, line: 764, type: !92)
!912 = !DILocalVariable(name: "item", scope: !907, file: !3, line: 765, type: !43)
!913 = !DILocalVariable(name: "find_flag", scope: !907, file: !3, line: 766, type: !41)
!914 = !DILocation(line: 762, column: 33, scope: !907)
!915 = !DILocation(line: 762, column: 47, scope: !907)
!916 = !DILocation(line: 765, column: 5, scope: !907)
!917 = !DILocation(line: 766, column: 10, scope: !907)
!918 = !DILocation(line: 768, column: 5, scope: !919)
!919 = distinct !DILexicalBlock(scope: !907, file: !3, line: 768, column: 5)
!920 = !DILocation(line: 770, column: 22, scope: !921)
!921 = distinct !DILexicalBlock(scope: !907, file: !3, line: 770, column: 9)
!922 = !DILocation(line: 770, column: 11, scope: !921)
!923 = !DILocation(line: 768, column: 5, scope: !907)
!924 = !DILocation(line: 764, column: 9, scope: !907)
!925 = !DILocation(line: 775, column: 29, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 775, column: 5)
!928 = distinct !DILexicalBlock(scope: !907, file: !3, line: 775, column: 5)
!929 = !DILocation(line: 775, column: 19, scope: !926)
!930 = !DILocation(line: 775, column: 5, scope: !931)
!931 = !DILexicalBlockFile(scope: !928, file: !3, discriminator: 1)
!932 = !DILocation(line: 776, column: 40, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 776, column: 13)
!934 = distinct !DILexicalBlock(scope: !927, file: !3, line: 775, column: 47)
!935 = !DILocation(line: 765, column: 23, scope: !907)
!936 = !DILocation(line: 776, column: 13, scope: !933)
!937 = !DILocation(line: 776, column: 13, scope: !934)
!938 = !DILocation(line: 777, column: 22, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 777, column: 17)
!940 = distinct !DILexicalBlock(scope: !933, file: !3, line: 776, column: 44)
!941 = !DILocation(line: 777, column: 27, scope: !939)
!942 = !DILocation(line: 777, column: 17, scope: !940)
!943 = !DILocation(line: 778, column: 21, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 777, column: 49)
!945 = !DILocation(line: 779, column: 33, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 779, column: 25)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 778, column: 37)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 778, column: 21)
!949 = !DILocation(line: 779, column: 30, scope: !946)
!950 = !DILocation(line: 779, column: 25, scope: !947)
!951 = !DILocation(line: 784, column: 30, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 784, column: 25)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 783, column: 24)
!954 = !DILocation(line: 784, column: 27, scope: !952)
!955 = !DILocation(line: 784, column: 25, scope: !953)
!956 = !DILocation(line: 775, column: 43, scope: !957)
!957 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 2)
!958 = !DILocation(line: 775, column: 21, scope: !926)
!959 = distinct !{!959, !960, !961}
!960 = !DILocation(line: 775, column: 5, scope: !928)
!961 = !DILocation(line: 791, column: 5, scope: !928)
!962 = !DILocation(line: 794, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 793, column: 20)
!964 = distinct !DILexicalBlock(scope: !907, file: !3, line: 793, column: 9)
!965 = !DILocation(line: 795, column: 5, scope: !963)
!966 = !DILocation(line: 797, column: 1, scope: !907)
!967 = distinct !DISubprogram(name: "delete_device_by_index", scope: !3, file: !3, line: 253, type: !173, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !968)
!968 = !{!969, !970, !971, !972}
!969 = !DILocalVariable(name: "index", arg: 1, scope: !967, file: !3, line: 253, type: !8)
!970 = !DILocalVariable(name: "item", scope: !967, file: !3, line: 255, type: !43)
!971 = !DILocalVariable(name: "dev_sn", scope: !967, file: !3, line: 256, type: !8)
!972 = !DILocalVariable(name: "i", scope: !973, file: !3, line: 272, type: !34)
!973 = distinct !DILexicalBlock(scope: !967, file: !3, line: 272, column: 5)
!974 = !DILocation(line: 255, column: 5, scope: !967)
!975 = !DILocation(line: 258, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !3, line: 258, column: 9)
!977 = !DILocation(line: 258, column: 15, scope: !976)
!978 = !DILocation(line: 258, column: 9, scope: !967)
!979 = !DILocation(line: 266, column: 5, scope: !967)
!980 = !DILocation(line: 267, column: 43, scope: !967)
!981 = !DILocation(line: 267, column: 23, scope: !967)
!982 = !DILocation(line: 267, column: 5, scope: !967)
!983 = !DILocation(line: 270, column: 14, scope: !967)
!984 = !DILocation(line: 256, column: 8, scope: !967)
!985 = !DILocation(line: 271, column: 30, scope: !967)
!986 = !DILocation(line: 272, column: 14, scope: !973)
!987 = !DILocation(line: 272, column: 33, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !3, discriminator: 1)
!989 = distinct !DILexicalBlock(scope: !973, file: !3, line: 272, column: 5)
!990 = !DILocation(line: 272, column: 23, scope: !988)
!991 = !DILocation(line: 272, column: 5, scope: !992)
!992 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 1)
!993 = !DILocation(line: 280, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !967, file: !3, line: 280, column: 9)
!995 = !DILocation(line: 280, column: 9, scope: !994)
!996 = !DILocation(line: 280, column: 9, scope: !967)
!997 = !DILocation(line: 273, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 273, column: 13)
!999 = distinct !DILexicalBlock(scope: !989, file: !3, line: 272, column: 51)
!1000 = !DILocation(line: 273, column: 34, scope: !998)
!1001 = !DILocation(line: 273, column: 77, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 1)
!1003 = !DILocation(line: 273, column: 53, scope: !998)
!1004 = !DILocation(line: 274, column: 33, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !998, file: !3, line: 273, column: 87)
!1006 = !DILocation(line: 275, column: 9, scope: !1005)
!1007 = !DILocation(line: 272, column: 47, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !989, file: !3, discriminator: 3)
!1009 = distinct !{!1009, !1010, !1011}
!1010 = !DILocation(line: 272, column: 5, scope: !973)
!1011 = !DILocation(line: 276, column: 5, scope: !973)
!1012 = !DILocation(line: 281, column: 26, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !994, file: !3, line: 280, column: 28)
!1014 = !DILocation(line: 282, column: 5, scope: !1013)
!1015 = !DILocation(line: 210, column: 36, scope: !172, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 285, column: 5, scope: !967)
!1017 = !DILocation(line: 212, column: 9, scope: !172, inlinedAt: !1016)
!1018 = !DILocation(line: 230, column: 9, scope: !198, inlinedAt: !1016)
!1019 = !DILocation(line: 286, column: 5, scope: !967)
!1020 = !DILocation(line: 287, column: 1, scope: !967)
!1021 = distinct !DISubprogram(name: "ble_list_init", scope: !3, file: !3, line: 800, type: !1022, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null}
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1034}
!1025 = !DILocalVariable(name: "err_info", scope: !1021, file: !3, line: 802, type: !8)
!1026 = !DILocalVariable(name: "i", scope: !1021, file: !3, line: 803, type: !8)
!1027 = !DILocalVariable(name: "count", scope: !1021, file: !3, line: 803, type: !8)
!1028 = !DILocalVariable(name: "item", scope: !1021, file: !3, line: 804, type: !43)
!1029 = !DILocalVariable(name: "j", scope: !1030, file: !3, line: 843, type: !8)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 837, column: 23)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 837, column: 13)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 810, column: 41)
!1033 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 810, column: 9)
!1034 = !DILocalVariable(name: "get_flag", scope: !1030, file: !3, line: 844, type: !8)
!1035 = !DILocation(line: 802, column: 8, scope: !1021)
!1036 = !DILocation(line: 803, column: 11, scope: !1021)
!1037 = !DILocation(line: 804, column: 5, scope: !1021)
!1038 = !DILocation(line: 806, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 806, column: 5)
!1040 = !DILocation(line: 806, column: 5, scope: !1021)
!1041 = !DILocation(line: 810, column: 17, scope: !1033)
!1042 = !DILocation(line: 810, column: 14, scope: !1033)
!1043 = !DILocation(line: 810, column: 9, scope: !1021)
!1044 = !DILocation(line: 803, column: 8, scope: !1021)
!1045 = !DILocation(line: 812, column: 33, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1047, file: !3, discriminator: 1)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 812, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 812, column: 9)
!1049 = !DILocation(line: 812, column: 23, scope: !1046)
!1050 = !DILocation(line: 812, column: 9, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 1)
!1052 = !DILocation(line: 804, column: 23, scope: !1021)
!1053 = !DILocation(line: 813, column: 25, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 813, column: 17)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 812, column: 51)
!1056 = !DILocation(line: 813, column: 22, scope: !1054)
!1057 = !DILocation(line: 813, column: 17, scope: !1055)
!1058 = !DILocation(line: 814, column: 53, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 814, column: 21)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 813, column: 56)
!1061 = !DILocation(line: 814, column: 42, scope: !1059)
!1062 = !DILocation(line: 814, column: 21, scope: !1060)
!1063 = !DILocation(line: 815, column: 30, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 814, column: 66)
!1065 = !DILocation(line: 817, column: 42, scope: !1064)
!1066 = !DILocation(line: 818, column: 21, scope: !1064)
!1067 = !DILocation(line: 819, column: 59, scope: !1064)
!1068 = !DILocation(line: 819, column: 39, scope: !1064)
!1069 = !DILocation(line: 819, column: 21, scope: !1064)
!1070 = !DILocation(line: 820, column: 17, scope: !1064)
!1071 = !DILocation(line: 821, column: 26, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 820, column: 24)
!1073 = !DILocation(line: 824, column: 42, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 824, column: 21)
!1075 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 823, column: 20)
!1076 = !DILocation(line: 824, column: 21, scope: !1075)
!1077 = !DILocation(line: 826, column: 42, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 824, column: 62)
!1079 = !DILocation(line: 827, column: 30, scope: !1078)
!1080 = !DILocation(line: 828, column: 21, scope: !1078)
!1081 = !DILocation(line: 812, column: 47, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1047, file: !3, discriminator: 2)
!1083 = !DILocation(line: 812, column: 21, scope: !1046)
!1084 = distinct !{!1084, !1085, !1086}
!1085 = !DILocation(line: 812, column: 9, scope: !1048)
!1086 = !DILocation(line: 831, column: 9, scope: !1048)
!1087 = !DILocation(line: 833, column: 30, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 833, column: 13)
!1089 = !DILocation(line: 833, column: 19, scope: !1088)
!1090 = !DILocation(line: 834, column: 22, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 833, column: 41)
!1092 = !DILocation(line: 833, column: 13, scope: !1032)
!1093 = !DILocation(line: 837, column: 13, scope: !1031)
!1094 = !DILocation(line: 837, column: 13, scope: !1032)
!1095 = !DILocation(line: 838, column: 44, scope: !1030)
!1096 = !DILocation(line: 838, column: 13, scope: !1030)
!1097 = !DILocation(line: 839, column: 13, scope: !1030)
!1098 = !DILocation(line: 840, column: 31, scope: !1030)
!1099 = !DILocation(line: 843, column: 16, scope: !1030)
!1100 = !DILocation(line: 845, column: 22, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 1)
!1102 = !DILocation(line: 845, column: 13, scope: !1101)
!1103 = !DILocation(line: 847, column: 17, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1105, file: !3, discriminator: 1)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 847, column: 17)
!1106 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 845, column: 31)
!1107 = !DILocation(line: 847, column: 29, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 1)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 847, column: 17)
!1110 = !DILocation(line: 865, column: 37, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !3, discriminator: 1)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 865, column: 13)
!1113 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 865, column: 13)
!1114 = !DILocation(line: 865, column: 27, scope: !1111)
!1115 = !DILocation(line: 865, column: 13, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1113, file: !3, discriminator: 1)
!1117 = !DILocation(line: 847, column: 31, scope: !1108)
!1118 = distinct !{!1118, !1119, !1120}
!1119 = !DILocation(line: 847, column: 17, scope: !1105)
!1120 = !DILocation(line: 852, column: 17, scope: !1105)
!1121 = !DILocation(line: 855, column: 21, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !3, discriminator: 1)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 855, column: 21)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 854, column: 32)
!1125 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 854, column: 21)
!1126 = !DILocation(line: 856, column: 29, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 856, column: 29)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 855, column: 63)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 855, column: 21)
!1130 = !DILocation(line: 848, column: 25, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 848, column: 25)
!1132 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 847, column: 59)
!1133 = !DILocation(line: 848, column: 46, scope: !1131)
!1134 = !DILocation(line: 847, column: 55, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 2)
!1136 = !DILocation(line: 848, column: 25, scope: !1132)
!1137 = !DILocation(line: 856, column: 50, scope: !1127)
!1138 = !DILocation(line: 856, column: 93, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1127, file: !3, discriminator: 1)
!1140 = !DILocation(line: 856, column: 69, scope: !1127)
!1141 = !DILocation(line: 857, column: 49, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 856, column: 98)
!1143 = !DILocation(line: 858, column: 25, scope: !1142)
!1144 = !DILocation(line: 855, column: 59, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1129, file: !3, discriminator: 2)
!1146 = !DILocation(line: 855, column: 35, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1129, file: !3, discriminator: 1)
!1148 = distinct !{!1148, !1149, !1150}
!1149 = !DILocation(line: 855, column: 21, scope: !1123)
!1150 = !DILocation(line: 859, column: 21, scope: !1123)
!1151 = !DILocation(line: 861, column: 17, scope: !1106)
!1152 = distinct !{!1152, !1153, !1154}
!1153 = !DILocation(line: 845, column: 13, scope: !1030)
!1154 = !DILocation(line: 862, column: 13, scope: !1030)
!1155 = !DILocation(line: 866, column: 21, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 866, column: 21)
!1157 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 865, column: 55)
!1158 = !DILocation(line: 866, column: 42, scope: !1156)
!1159 = !DILocation(line: 866, column: 85, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1156, file: !3, discriminator: 1)
!1161 = !DILocation(line: 866, column: 61, scope: !1156)
!1162 = !DILocation(line: 865, column: 51, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1112, file: !3, discriminator: 2)
!1164 = distinct !{!1164, !1165, !1166}
!1165 = !DILocation(line: 865, column: 13, scope: !1113)
!1166 = !DILocation(line: 869, column: 13, scope: !1113)
!1167 = !DILocation(line: 871, column: 31, scope: !1030)
!1168 = !DILocation(line: 872, column: 41, scope: !1030)
!1169 = !DILocation(line: 873, column: 13, scope: !1030)
!1170 = !DILocation(line: 210, column: 36, scope: !172, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 874, column: 13, scope: !1030)
!1172 = !DILocation(line: 212, column: 9, scope: !172, inlinedAt: !1171)
!1173 = !DILocation(line: 230, column: 9, scope: !198, inlinedAt: !1171)
!1174 = !DILocation(line: 875, column: 9, scope: !1030)
!1175 = !DILocation(line: 878, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 877, column: 12)
!1177 = !DILocation(line: 879, column: 9, scope: !1176)
!1178 = !DILocation(line: 885, column: 17, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 885, column: 9)
!1180 = !DILocation(line: 885, column: 9, scope: !1179)
!1181 = !DILocation(line: 885, column: 9, scope: !1021)
!1182 = !DILocation(line: 886, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 885, column: 30)
!1184 = !DILocation(line: 887, column: 5, scope: !1183)
!1185 = !DILocation(line: 888, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 887, column: 12)
!1187 = !DILocation(line: 891, column: 1, scope: !1021)
!1188 = !DILocation(line: 891, column: 1, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1021, file: !3, discriminator: 2)
