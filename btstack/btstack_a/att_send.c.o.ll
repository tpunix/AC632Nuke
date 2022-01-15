; ModuleID = 'att_send.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/att_send.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.att_ctl_t = type { %struct._cbuffer, %struct.user_send_head_t, [24 x %struct.server_ccc_cfg_t], [8 x %struct.dev_hdl_t], i8*, i16, i8, [6 x i8] }
%struct._cbuffer = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.__spinlock }
%struct.__spinlock = type { i32 }
%struct.user_send_head_t = type { i16, i16, i16 }
%struct.server_ccc_cfg_t = type { i16, i16 }
%struct.dev_hdl_t = type { i16, i16 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@att_s_hdl = internal unnamed_addr global %struct.att_ctl_t* null, section ".bt_stack_bss", align 4, !dbg !34
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"[ble-info] :att_send: %04x,%04x,%d,%d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"[ble-info] :mtu_size: %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ble_err_s:wlen=%d,err=%d,len=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[ble-info] :att_payload_size[%d]= %d \0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"att_send need_size >= %d+%d+%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"buf_size not enough!!!,need_size >= %d\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/att_send.c\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ASSERT-FAILD: 0 \00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"local_sendbuf_size not enough!!!,need_size >= %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"[ble-info] :att_cbuf_size = %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"[ble-info] :att_set_conn_handle:%04x,%d,%d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"max support devices is %d !!!\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"[ble-info] :cmd_send: %04x,%04x,%d,%d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"[ble-info] :-unknow_ret: %2x\0A\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"len=0?\00"

; Function Attrs: nounwind optsize
define hidden void @att_ccc_config_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !113 {
  %1 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !117, !tbaa !119
  %2 = icmp eq %struct.att_ctl_t* %1, null, !dbg !117
  br i1 %2, label %6, label %3, !dbg !123

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %1, i32 0, i32 2, i32 0, !dbg !124
  %5 = bitcast %struct.server_ccc_cfg_t* %4 to i8*, !dbg !124
  tail call void @llvm.memset.p0i8.i32(i8* %5, i8 0, i32 96, i32 2, i1 false), !dbg !124
  br label %6, !dbg !125

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !126
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

; Function Attrs: nounwind optsize
define hidden void @att_set_ccc_config(i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !128 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !132, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i16 %1, metadata !133, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i16 %0, metadata !135, metadata !DIExpression()), !dbg !140
  %3 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !141, !tbaa !119
  %4 = icmp eq %struct.att_ctl_t* %3, null, !dbg !141
  br i1 %4, label %49, label %5, !dbg !143

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %3, i32 0, i32 2, i32 0, !dbg !144
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %6, metadata !136, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %6, metadata !136, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !146
  br label %7, !dbg !147

; <label>:7:                                      ; preds = %25, %5
  %8 = phi %struct.server_ccc_cfg_t* [ %6, %5 ], [ %26, %25 ]
  %9 = phi i32 [ 0, %5 ], [ %27, %25 ]
  %10 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 0, i32 0, !dbg !150
  %11 = load i16, i16* %10, align 2, !dbg !150, !tbaa !154
  %12 = icmp eq i16 %11, %0, !dbg !157
  br i1 %12, label %13, label %25, !dbg !158

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i16 %1, 0, !dbg !159
  br i1 %14, label %21, label %15, !dbg !162

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 0, i32 1, !dbg !163
  %17 = load i16, i16* %16, align 2, !dbg !165
  %18 = and i16 %1, 15, !dbg !165
  %19 = and i16 %17, -16, !dbg !165
  %20 = or i16 %19, %18, !dbg !165
  store i16 %20, i16* %16, align 2, !dbg !165
  br label %49, !dbg !166

; <label>:21:                                     ; preds = %13
  store i16 0, i16* %10, align 2, !dbg !167, !tbaa !154
  %22 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 0, i32 1, !dbg !169
  %23 = load i16, i16* %22, align 2, !dbg !170
  %24 = and i16 %23, -16, !dbg !170
  store i16 %24, i16* %22, align 2, !dbg !170
  br label %49

; <label>:25:                                     ; preds = %7
  %26 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 1, !dbg !171
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %26, metadata !136, metadata !DIExpression()), !dbg !145
  %27 = add nuw nsw i32 %9, 1, !dbg !172
  call void @llvm.dbg.value(metadata i32 %27, metadata !134, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %26, metadata !136, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %27, metadata !134, metadata !DIExpression()), !dbg !146
  %28 = icmp slt i32 %27, 24, !dbg !174
  br i1 %28, label %7, label %29, !dbg !147, !llvm.loop !176

; <label>:29:                                     ; preds = %25
  %30 = icmp eq i16 %1, 0, !dbg !179
  br i1 %30, label %49, label %31, !dbg !181

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !182

; <label>:32:                                     ; preds = %44, %31
  %33 = phi %struct.server_ccc_cfg_t* [ %45, %44 ], [ %6, %31 ]
  %34 = phi i32 [ %46, %44 ], [ 0, %31 ]
  %35 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %33, i32 0, i32 0, !dbg !182
  %36 = load i16, i16* %35, align 2, !dbg !182, !tbaa !154
  %37 = icmp eq i16 %36, 0, !dbg !188
  br i1 %37, label %38, label %44, !dbg !189

; <label>:38:                                     ; preds = %32
  store i16 %0, i16* %35, align 2, !dbg !190, !tbaa !154
  %39 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %33, i32 0, i32 1, !dbg !192
  %40 = load i16, i16* %39, align 2, !dbg !193
  %41 = and i16 %1, 15, !dbg !193
  %42 = and i16 %40, -16, !dbg !193
  %43 = or i16 %42, %41, !dbg !193
  store i16 %43, i16* %39, align 2, !dbg !193
  br label %49, !dbg !194

; <label>:44:                                     ; preds = %32
  %45 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %33, i32 1, !dbg !195
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %45, metadata !136, metadata !DIExpression()), !dbg !145
  %46 = add nuw nsw i32 %34, 1, !dbg !196
  call void @llvm.dbg.value(metadata i32 %46, metadata !134, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %45, metadata !136, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %46, metadata !134, metadata !DIExpression()), !dbg !146
  %47 = icmp slt i32 %46, 24, !dbg !198
  br i1 %47, label %32, label %48, !dbg !200, !llvm.loop !202

; <label>:48:                                     ; preds = %44
  br label %49, !dbg !205

; <label>:49:                                     ; preds = %48, %38, %29, %21, %15, %2
  ret void, !dbg !205
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @att_get_ccc_config(i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !207 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !215, metadata !DIExpression()), !dbg !218
  %2 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !219, !tbaa !119
  %3 = icmp eq %struct.att_ctl_t* %2, null, !dbg !219
  br i1 %3, label %21, label %4, !dbg !221

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 2, i32 0, !dbg !222
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %5, metadata !217, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %5, metadata !217, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !224
  br label %6, !dbg !225

; <label>:6:                                      ; preds = %16, %4
  %7 = phi %struct.server_ccc_cfg_t* [ %5, %4 ], [ %17, %16 ]
  %8 = phi i32 [ 0, %4 ], [ %18, %16 ]
  %9 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %7, i32 0, i32 0, !dbg !228
  %10 = load i16, i16* %9, align 2, !dbg !228, !tbaa !154
  %11 = icmp eq i16 %10, %0, !dbg !232
  br i1 %11, label %12, label %16, !dbg !233

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %7, i32 0, i32 1, !dbg !234
  %14 = load i16, i16* %13, align 2, !dbg !234
  %15 = and i16 %14, 15, !dbg !234
  br label %21, !dbg !236

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %7, i32 1, !dbg !237
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %17, metadata !217, metadata !DIExpression()), !dbg !223
  %18 = add nuw nsw i32 %8, 1, !dbg !238
  call void @llvm.dbg.value(metadata i32 %18, metadata !216, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %17, metadata !217, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata i32 %18, metadata !216, metadata !DIExpression()), !dbg !224
  %19 = icmp slt i32 %18, 24, !dbg !240
  br i1 %19, label %6, label %20, !dbg !225, !llvm.loop !242

; <label>:20:                                     ; preds = %16
  br label %21, !dbg !245

; <label>:21:                                     ; preds = %20, %12, %1
  %22 = phi i16 [ 0, %1 ], [ %15, %12 ], [ 0, %20 ]
  ret i16 %22, !dbg !245
}

; Function Attrs: nounwind optsize
define hidden void @multi_att_ccc_config_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !247 {
  %1 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !248, !tbaa !119
  %2 = icmp eq %struct.att_ctl_t* %1, null, !dbg !248
  br i1 %2, label %6, label %3, !dbg !250

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %1, i32 0, i32 2, i32 0, !dbg !251
  %5 = bitcast %struct.server_ccc_cfg_t* %4 to i8*, !dbg !251
  tail call void @llvm.memset.p0i8.i32(i8* %5, i8 0, i32 96, i32 2, i1 false) #7, !dbg !251
  br label %6, !dbg !252

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !253
}

; Function Attrs: nounwind optsize
define hidden void @multi_att_set_ccc_config(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !254 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !258, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i16 %1, metadata !259, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i16 %2, metadata !260, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i16 %1, metadata !262, metadata !DIExpression()), !dbg !267
  %4 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !268, !tbaa !119
  %5 = icmp eq %struct.att_ctl_t* %4, null, !dbg !268
  br i1 %5, label %51, label %6, !dbg !270

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %4, i32 0, i32 2, i32 0, !dbg !271
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %7, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 0, metadata !261, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %7, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 0, metadata !261, metadata !DIExpression()), !dbg !273
  br label %8, !dbg !274

; <label>:8:                                      ; preds = %28, %6
  %9 = phi %struct.server_ccc_cfg_t* [ %7, %6 ], [ %29, %28 ]
  %10 = phi i32 [ 0, %6 ], [ %30, %28 ]
  %11 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %9, i32 0, i32 1, !dbg !277
  %12 = load i16, i16* %11, align 2, !dbg !277
  %13 = lshr i16 %12, 4, !dbg !277
  %14 = icmp eq i16 %13, %0, !dbg !281
  br i1 %14, label %15, label %28, !dbg !282

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %9, i32 0, i32 0, !dbg !283
  %17 = load i16, i16* %16, align 2, !dbg !283, !tbaa !154
  %18 = icmp eq i16 %17, %1, !dbg !285
  br i1 %18, label %19, label %28, !dbg !286

; <label>:19:                                     ; preds = %15
  %20 = icmp eq i16 %2, 0, !dbg !288
  br i1 %20, label %25, label %21, !dbg !291

; <label>:21:                                     ; preds = %19
  %22 = and i16 %2, 15, !dbg !292
  %23 = and i16 %12, -16, !dbg !292
  %24 = or i16 %23, %22, !dbg !292
  br label %26, !dbg !294

; <label>:25:                                     ; preds = %19
  store i16 0, i16* %16, align 2, !dbg !295, !tbaa !154
  br label %26

; <label>:26:                                     ; preds = %25, %21
  %27 = phi i16 [ 0, %25 ], [ %24, %21 ]
  store i16 %27, i16* %11, align 2, !dbg !292
  br label %51, !dbg !297

; <label>:28:                                     ; preds = %15, %8
  %29 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %9, i32 1, !dbg !298
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %29, metadata !263, metadata !DIExpression()), !dbg !272
  %30 = add nuw nsw i32 %10, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %30, metadata !261, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %29, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %30, metadata !261, metadata !DIExpression()), !dbg !273
  %31 = icmp slt i32 %30, 24, !dbg !301
  br i1 %31, label %8, label %32, !dbg !274, !llvm.loop !303

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i16 %2, 0, !dbg !306
  br i1 %33, label %51, label %34, !dbg !308

; <label>:34:                                     ; preds = %32
  br label %35, !dbg !309

; <label>:35:                                     ; preds = %46, %34
  %36 = phi %struct.server_ccc_cfg_t* [ %47, %46 ], [ %7, %34 ]
  %37 = phi i32 [ %48, %46 ], [ 0, %34 ]
  %38 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %36, i32 0, i32 1, !dbg !309
  %39 = load i16, i16* %38, align 2, !dbg !309
  %40 = icmp ult i16 %39, 16, !dbg !315
  br i1 %40, label %41, label %46, !dbg !316

; <label>:41:                                     ; preds = %35
  %42 = shl i16 %0, 4, !dbg !317
  %43 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %36, i32 0, i32 0, !dbg !319
  store i16 %1, i16* %43, align 2, !dbg !320, !tbaa !154
  %44 = and i16 %2, 15, !dbg !321
  %45 = or i16 %44, %42, !dbg !321
  store i16 %45, i16* %38, align 2, !dbg !321
  br label %51, !dbg !322

; <label>:46:                                     ; preds = %35
  %47 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %36, i32 1, !dbg !323
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %47, metadata !263, metadata !DIExpression()), !dbg !272
  %48 = add nuw nsw i32 %37, 1, !dbg !324
  call void @llvm.dbg.value(metadata i32 %48, metadata !261, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %47, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %48, metadata !261, metadata !DIExpression()), !dbg !273
  %49 = icmp slt i32 %48, 24, !dbg !326
  br i1 %49, label %35, label %50, !dbg !328, !llvm.loop !330

; <label>:50:                                     ; preds = %46
  br label %51, !dbg !333

; <label>:51:                                     ; preds = %50, %41, %32, %26, %3
  ret void, !dbg !333
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @multi_att_get_ccc_config(i16 zeroext, i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !335 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i16 %1, metadata !340, metadata !DIExpression()), !dbg !344
  %3 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !345, !tbaa !119
  %4 = icmp eq %struct.att_ctl_t* %3, null, !dbg !345
  br i1 %4, label %25, label %5, !dbg !347

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %3, i32 0, i32 2, i32 0, !dbg !348
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %6, metadata !342, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %6, metadata !342, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !350
  br label %7, !dbg !351

; <label>:7:                                      ; preds = %20, %5
  %8 = phi %struct.server_ccc_cfg_t* [ %6, %5 ], [ %21, %20 ]
  %9 = phi i32 [ 0, %5 ], [ %22, %20 ]
  %10 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 0, i32 1, !dbg !354
  %11 = load i16, i16* %10, align 2, !dbg !354
  %12 = lshr i16 %11, 4, !dbg !354
  %13 = icmp eq i16 %12, %0, !dbg !358
  br i1 %13, label %14, label %20, !dbg !359

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 0, i32 0, !dbg !360
  %16 = load i16, i16* %15, align 2, !dbg !360, !tbaa !154
  %17 = icmp eq i16 %16, %1, !dbg !362
  br i1 %17, label %18, label %20, !dbg !363

; <label>:18:                                     ; preds = %14
  %19 = and i16 %11, 15, !dbg !365
  br label %25, !dbg !367

; <label>:20:                                     ; preds = %14, %7
  %21 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %8, i32 1, !dbg !368
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %21, metadata !342, metadata !DIExpression()), !dbg !349
  %22 = add nuw nsw i32 %9, 1, !dbg !369
  call void @llvm.dbg.value(metadata i32 %22, metadata !341, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %21, metadata !342, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 %22, metadata !341, metadata !DIExpression()), !dbg !350
  %23 = icmp slt i32 %22, 24, !dbg !371
  br i1 %23, label %7, label %24, !dbg !351, !llvm.loop !373

; <label>:24:                                     ; preds = %20
  br label %25, !dbg !376

; <label>:25:                                     ; preds = %24, %18, %2
  %26 = phi i16 [ 0, %2 ], [ %19, %18 ], [ 0, %24 ]
  ret i16 %26, !dbg !376
}

; Function Attrs: nounwind optsize
define hidden i32 @multi_att_clear_ccc_config(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !378 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !382, metadata !DIExpression()), !dbg !385
  %2 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !386, !tbaa !119
  %3 = icmp eq %struct.att_ctl_t* %2, null, !dbg !386
  br i1 %3, label %20, label %4, !dbg !388

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 2, i32 0, !dbg !389
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %5, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %5, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !391
  br label %6, !dbg !392

; <label>:6:                                      ; preds = %15, %4
  %7 = phi %struct.server_ccc_cfg_t* [ %5, %4 ], [ %16, %15 ]
  %8 = phi i32 [ 0, %4 ], [ %17, %15 ]
  %9 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %7, i32 0, i32 1, !dbg !395
  %10 = load i16, i16* %9, align 2, !dbg !395
  %11 = lshr i16 %10, 4, !dbg !395
  %12 = icmp eq i16 %11, %0, !dbg !399
  br i1 %12, label %13, label %15, !dbg !400

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %7, i32 0, i32 0, !dbg !401
  store i16 0, i16* %14, align 2, !dbg !403, !tbaa !154
  store i16 0, i16* %9, align 2, !dbg !404
  br label %15, !dbg !405

; <label>:15:                                     ; preds = %13, %6
  %16 = getelementptr inbounds %struct.server_ccc_cfg_t, %struct.server_ccc_cfg_t* %7, i32 1, !dbg !406
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %16, metadata !384, metadata !DIExpression()), !dbg !390
  %17 = add nuw nsw i32 %8, 1, !dbg !407
  call void @llvm.dbg.value(metadata i32 %17, metadata !383, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.server_ccc_cfg_t* %16, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 %17, metadata !383, metadata !DIExpression()), !dbg !391
  %18 = icmp eq i32 %17, 24, !dbg !409
  br i1 %18, label %19, label %6, !dbg !392, !llvm.loop !411

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !414

; <label>:20:                                     ; preds = %19, %1
  ret i32 0, !dbg !414
}

; Function Attrs: nounwind optsize
define hidden void @att_request_can_send_now_event() local_unnamed_addr #0 section ".bt_stack_code" !dbg !416 {
  %1 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !419, !tbaa !119
  %2 = icmp eq %struct.att_ctl_t* %1, null, !dbg !419
  br i1 %2, label %18, label %3, !dbg !421

; <label>:3:                                      ; preds = %0
  br label %6, !dbg !422

; <label>:4:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i32 %11, metadata !433, metadata !DIExpression()), !dbg !435
  %5 = icmp slt i32 %11, 8, !dbg !436
  br i1 %5, label %6, label %17, !dbg !438, !llvm.loop !440

; <label>:6:                                      ; preds = %4, %3
  %7 = phi i32 [ %11, %4 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %1, i32 0, i32 3, i32 %7, i32 0, !dbg !422
  %9 = load i16, i16* %8, align 2, !dbg !422
  %10 = icmp ult i16 %9, 64, !dbg !443
  %11 = add nuw nsw i32 %7, 1, !dbg !444
  call void @llvm.dbg.value(metadata i32 %11, metadata !433, metadata !DIExpression()), !dbg !435
  br i1 %10, label %4, label %12, !dbg !446

; <label>:12:                                     ; preds = %6
  %13 = tail call zeroext i8 @get_ble_gatt_role() #9, !dbg !447
  switch i8 %13, label %18 [
    i8 0, label %14
    i8 1, label %15
    i8 2, label %16
  ], !dbg !450

; <label>:14:                                     ; preds = %12
  tail call void @att_server_request_can_send_now_event(i16 zeroext 1) #9, !dbg !451
  br label %18, !dbg !453

; <label>:15:                                     ; preds = %12
  tail call void @gatt_client_request_can_send_now_event(i16 zeroext 1) #9, !dbg !454
  br label %18, !dbg !455

; <label>:16:                                     ; preds = %12
  tail call void @att_server_request_can_send_now_event(i16 zeroext 1) #9, !dbg !456
  tail call void @gatt_client_request_can_send_now_event(i16 zeroext 1) #9, !dbg !457
  br label %18, !dbg !458

; <label>:17:                                     ; preds = %4
  br label %18, !dbg !459

; <label>:18:                                     ; preds = %17, %16, %15, %14, %12, %0
  ret void, !dbg !459
}

; Function Attrs: optsize
declare zeroext i8 @get_ble_gatt_role() local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_server_request_can_send_now_event(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gatt_client_request_can_send_now_event(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @user_data_cbuf_is_write_able(i16 zeroext, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !461 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !466, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i32 %1, metadata !467, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i16 20, metadata !470, metadata !DIExpression()), !dbg !476
  %3 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !477, !tbaa !119
  %4 = icmp eq %struct.att_ctl_t* %3, null, !dbg !477
  br i1 %4, label %51, label %5, !dbg !479

; <label>:5:                                      ; preds = %2
  br label %6, !dbg !480

; <label>:6:                                      ; preds = %12, %5
  %7 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %8 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %3, i32 0, i32 3, i32 %7, i32 0, !dbg !480
  %9 = load i16, i16* %8, align 2, !dbg !480
  %10 = lshr i16 %9, 6, !dbg !480
  %11 = icmp eq i16 %10, %0, !dbg !492
  br i1 %11, label %15, label %12, !dbg !493

; <label>:12:                                     ; preds = %6
  %13 = add nuw nsw i32 %7, 1, !dbg !494
  call void @llvm.dbg.value(metadata i32 %13, metadata !490, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32 %13, metadata !490, metadata !DIExpression()), !dbg !496
  %14 = icmp slt i32 %13, 8, !dbg !497
  br i1 %14, label %6, label %23, !dbg !499, !llvm.loop !501

; <label>:15:                                     ; preds = %6
  %16 = trunc i32 %7 to i8, !dbg !504
  call void @llvm.dbg.value(metadata i8 %16, metadata !471, metadata !DIExpression()), !dbg !506
  %17 = icmp ult i8 %16, 8, !dbg !507
  br i1 %17, label %18, label %24, !dbg !509

; <label>:18:                                     ; preds = %15
  %19 = and i32 %7, 255, !dbg !510
  %20 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %3, i32 0, i32 3, i32 %19, i32 1, !dbg !511
  %21 = load i16, i16* %20, align 2, !dbg !511, !tbaa !513
  call void @llvm.dbg.value(metadata i16 %21, metadata !470, metadata !DIExpression()), !dbg !476
  %22 = zext i16 %21 to i32, !dbg !515
  br label %24, !dbg !515

; <label>:23:                                     ; preds = %12
  br label %24, !dbg !516

; <label>:24:                                     ; preds = %23, %18, %15
  %25 = phi i32 [ %22, %18 ], [ 20, %15 ], [ 20, %23 ]
  call void @llvm.dbg.value(metadata i16 6, metadata !472, metadata !DIExpression()), !dbg !516
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #9, !dbg !517
  %26 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !518, !tbaa !119
  %27 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %26, i32 0, i32 0, !dbg !518
  %28 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %26, i32 0, i32 0, i32 7, !dbg !518
  %29 = load i32, i32* %28, align 4, !dbg !518, !tbaa !519
  %30 = tail call i32 @cbuf_get_data_size(%struct._cbuffer* %27) #9, !dbg !523
  %31 = sub i32 %29, %30, !dbg !524
  call void @llvm.dbg.value(metadata i32 %31, metadata !468, metadata !DIExpression()), !dbg !525
  %32 = icmp ult i32 %31, 7, !dbg !526
  br i1 %32, label %47, label %33, !dbg !528

; <label>:33:                                     ; preds = %24
  %34 = add nuw nsw i32 %25, 6, !dbg !529
  %35 = and i32 %34, 65535, !dbg !530
  %36 = icmp ult i32 %31, %35, !dbg !533
  br i1 %36, label %37, label %39, !dbg !534

; <label>:37:                                     ; preds = %33
  %38 = add i32 %31, -6, !dbg !536
  call void @llvm.dbg.value(metadata i32 %38, metadata !469, metadata !DIExpression()), !dbg !538
  br label %47, !dbg !539

; <label>:39:                                     ; preds = %33
  %40 = udiv i32 %31, %35, !dbg !540
  %41 = mul i32 %40, %25, !dbg !542
  call void @llvm.dbg.value(metadata i32 %41, metadata !469, metadata !DIExpression()), !dbg !538
  %42 = urem i32 %31, %35, !dbg !543
  call void @llvm.dbg.value(metadata i32 %42, metadata !468, metadata !DIExpression()), !dbg !525
  %43 = icmp ugt i32 %42, 6, !dbg !544
  br i1 %43, label %44, label %47, !dbg !546

; <label>:44:                                     ; preds = %39
  %45 = add nsw i32 %42, -6, !dbg !547
  %46 = add i32 %45, %41, !dbg !549
  call void @llvm.dbg.value(metadata i32 %46, metadata !469, metadata !DIExpression()), !dbg !538
  br label %47, !dbg !550

; <label>:47:                                     ; preds = %44, %39, %37, %24
  %48 = phi i32 [ %38, %37 ], [ %46, %44 ], [ %41, %39 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i32 %48, metadata !469, metadata !DIExpression()), !dbg !538
  %49 = icmp ult i32 %48, %1, !dbg !551
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !538
  %50 = select i1 %49, i32 0, i32 %48, !dbg !553
  call void @llvm.dbg.value(metadata i32 %50, metadata !469, metadata !DIExpression()), !dbg !538
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #9, !dbg !554
  br label %51

; <label>:51:                                     ; preds = %47, %2
  %52 = phi i32 [ %50, %47 ], [ 0, %2 ]
  ret i32 %52, !dbg !555
}

; Function Attrs: optsize
declare void @local_irq_disable(...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cbuf_get_data_size(%struct._cbuffer*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @local_irq_enable(...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @user_data_att_send(i16 zeroext, i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !557 {
  %6 = alloca %struct.user_send_head_t, align 2
  call void @llvm.dbg.value(metadata i16 %0, metadata !561, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i16 %1, metadata !562, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i8* %2, metadata !563, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i16 %3, metadata !564, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i8 %4, metadata !565, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i32 0, metadata !567, metadata !DIExpression()), !dbg !576
  %7 = bitcast %struct.user_send_head_t* %6 to i8*, !dbg !577
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #7, !dbg !577
  %8 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !578, !tbaa !119
  %9 = icmp eq %struct.att_ctl_t* %8, null, !dbg !578
  br i1 %9, label %109, label %10, !dbg !580

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %6, i32 0, i32 0, !dbg !581
  store i16 %0, i16* %11, align 2, !dbg !582, !tbaa !583
  %12 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %6, i32 0, i32 1, !dbg !585
  store i16 %1, i16* %12, align 2, !dbg !586, !tbaa !587
  %13 = icmp eq i16 %3, 0, !dbg !588
  br i1 %13, label %14, label %16, !dbg !590

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i32 0, i32 0)), !dbg !591
  br label %109, !dbg !593

; <label>:16:                                     ; preds = %10
  %17 = zext i8 %4 to i32, !dbg !594
  %18 = icmp eq i8 %4, 0, !dbg !596
  br i1 %18, label %19, label %26, !dbg !597

; <label>:19:                                     ; preds = %16
  %20 = add i16 %1, 1, !dbg !598
  %21 = tail call zeroext i16 @att_get_ccc_config(i16 zeroext %20) #10, !dbg !600
  %22 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %6, i32 0, i32 2, !dbg !601
  %23 = shl i16 %21, 12, !dbg !602
  store i16 %23, i16* %22, align 2, !dbg !602
  %24 = and i16 %21, 15, !dbg !603
  %25 = icmp eq i16 %24, 0, !dbg !605
  br i1 %25, label %109, label %30, !dbg !606

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %6, i32 0, i32 2, !dbg !607
  %28 = zext i8 %4 to i16, !dbg !609
  %29 = shl i16 %28, 12, !dbg !609
  store i16 %29, i16* %27, align 2, !dbg !609
  br label %30

; <label>:30:                                     ; preds = %26, %19
  %31 = phi i16 [ %23, %19 ], [ %29, %26 ]
  %32 = load i8, i8* @ble_debug_enable, align 1, !dbg !610, !tbaa !612
  %33 = and i8 %32, 1, !dbg !610
  %34 = icmp eq i8 %33, 0, !dbg !610
  br i1 %34, label %41, label %35, !dbg !613

; <label>:35:                                     ; preds = %30
  %36 = zext i16 %0 to i32, !dbg !614
  %37 = zext i16 %1 to i32, !dbg !614
  %38 = zext i16 %3 to i32, !dbg !614
  %39 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i32 %36, i32 %37, i32 %38, i32 %17) #10, !dbg !614
  %40 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !tbaa !119
  br label %41, !dbg !614

; <label>:41:                                     ; preds = %35, %30
  %42 = phi %struct.att_ctl_t* [ %8, %30 ], [ %40, %35 ], !dbg !616
  call void @llvm.dbg.value(metadata i16 20, metadata !569, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i16 %0, metadata !489, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !622
  br label %43, !dbg !623

; <label>:43:                                     ; preds = %49, %41
  %44 = phi i32 [ 0, %41 ], [ %50, %49 ]
  %45 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %42, i32 0, i32 3, i32 %44, i32 0, !dbg !624
  %46 = load i16, i16* %45, align 2, !dbg !624
  %47 = lshr i16 %46, 6, !dbg !624
  %48 = icmp eq i16 %47, %0, !dbg !625
  br i1 %48, label %52, label %49, !dbg !626

; <label>:49:                                     ; preds = %43
  %50 = add nuw nsw i32 %44, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %50, metadata !490, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 %50, metadata !490, metadata !DIExpression()), !dbg !622
  %51 = icmp slt i32 %50, 8, !dbg !628
  br i1 %51, label %43, label %59, !dbg !623, !llvm.loop !501

; <label>:52:                                     ; preds = %43
  %53 = trunc i32 %44 to i8, !dbg !629
  call void @llvm.dbg.value(metadata i8 %53, metadata !570, metadata !DIExpression()), !dbg !630
  %54 = icmp ult i8 %53, 8, !dbg !631
  br i1 %54, label %55, label %60, !dbg !632

; <label>:55:                                     ; preds = %52
  %56 = and i32 %44, 255, !dbg !633
  %57 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %42, i32 0, i32 3, i32 %56, i32 1, !dbg !634
  %58 = load i16, i16* %57, align 2, !dbg !634, !tbaa !513
  call void @llvm.dbg.value(metadata i16 %58, metadata !569, metadata !DIExpression()), !dbg !619
  br label %60, !dbg !635

; <label>:59:                                     ; preds = %49
  br label %60, !dbg !619

; <label>:60:                                     ; preds = %59, %55, %52
  %61 = phi i16 [ %58, %55 ], [ 20, %52 ], [ 20, %59 ]
  call void @llvm.dbg.value(metadata i16 %61, metadata !569, metadata !DIExpression()), !dbg !619
  %62 = load i8, i8* @ble_debug_enable, align 1, !dbg !636, !tbaa !612
  %63 = and i8 %62, 1, !dbg !636
  %64 = icmp eq i8 %63, 0, !dbg !636
  br i1 %64, label %68, label %65, !dbg !638

; <label>:65:                                     ; preds = %60
  %66 = zext i16 %61 to i32, !dbg !639
  %67 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %66) #10, !dbg !639
  br label %68, !dbg !639

; <label>:68:                                     ; preds = %65, %60
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #9, !dbg !641
  %69 = zext i16 %3 to i32, !dbg !642
  %70 = tail call i32 @user_data_cbuf_is_write_able(i16 zeroext %0, i32 %69) #10, !dbg !644
  %71 = icmp eq i32 %70, 0, !dbg !644
  br i1 %71, label %107, label %72, !dbg !645

; <label>:72:                                     ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !567, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %2, metadata !563, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i16 %3, metadata !564, metadata !DIExpression()), !dbg !574
  %73 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %6, i32 0, i32 2
  br label %74, !dbg !646

; <label>:74:                                     ; preds = %102, %72
  %75 = phi i16 [ %31, %72 ], [ %93, %102 ], !dbg !649
  %76 = phi i16 [ %3, %72 ], [ %103, %102 ]
  %77 = phi i8* [ %2, %72 ], [ %104, %102 ]
  %78 = icmp ugt i16 %76, %61, !dbg !651
  %79 = select i1 %78, i16 %61, i16 %76, !dbg !653
  call void @llvm.dbg.value(metadata i16 %79, metadata !566, metadata !DIExpression()), !dbg !655
  %80 = and i16 %79, 4095, !dbg !649
  %81 = and i16 %75, -4096, !dbg !649
  %82 = or i16 %81, %80, !dbg !649
  store i16 %82, i16* %73, align 2, !dbg !649
  call void @llvm.dbg.value(metadata %struct.user_send_head_t* %6, metadata !568, metadata !DIExpression(DW_OP_deref)), !dbg !656
  call void @llvm.dbg.value(metadata %struct.user_send_head_t* %6, metadata !657, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i8* %77, metadata !663, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i16 6, metadata !665, metadata !DIExpression()), !dbg !669
  %83 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !670, !tbaa !119
  %84 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %83, i32 0, i32 0, !dbg !671
  %85 = call i32 @cbuf_write(%struct._cbuffer* %84, i8* nonnull %7, i32 6) #9, !dbg !672
  %86 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !673, !tbaa !119
  %87 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %86, i32 0, i32 0, !dbg !674
  %88 = load i16, i16* %73, align 2, !dbg !675
  %89 = and i16 %88, 4095, !dbg !675
  %90 = zext i16 %89 to i32, !dbg !676
  %91 = call i32 @cbuf_write(%struct._cbuffer* %87, i8* %77, i32 %90) #9, !dbg !677
  %92 = add i32 %91, %85, !dbg !678
  %93 = load i16, i16* %73, align 2, !dbg !679
  %94 = and i16 %93, 4095, !dbg !679
  %95 = add nuw nsw i16 %94, 6, !dbg !681
  %96 = trunc i32 %92 to i16, !dbg !682
  %97 = icmp eq i16 %95, %96, !dbg !682
  call void @llvm.dbg.value(metadata i32 -97, metadata !567, metadata !DIExpression()), !dbg !576
  %98 = zext i16 %79 to i32
  br i1 %97, label %102, label %99, !dbg !683

; <label>:99:                                     ; preds = %74
  %100 = zext i16 %76 to i32, !dbg !684
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i32 %98, i32 -97, i32 %100) #10, !dbg !685
  call void bitcast (void (...)* @local_irq_enable to void ()*)() #9, !dbg !688
  br label %109, !dbg !689

; <label>:102:                                    ; preds = %74
  %103 = sub i16 %76, %79, !dbg !690
  call void @llvm.dbg.value(metadata i16 %103, metadata !564, metadata !DIExpression()), !dbg !574
  %104 = getelementptr inbounds i8, i8* %77, i32 %98, !dbg !691
  call void @llvm.dbg.value(metadata i8* %104, metadata !563, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i32 0, metadata !567, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %104, metadata !563, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i16 %103, metadata !564, metadata !DIExpression()), !dbg !574
  %105 = icmp eq i16 %103, 0, !dbg !692
  br i1 %105, label %106, label %74, !dbg !646, !llvm.loop !693

; <label>:106:                                    ; preds = %102
  br label %107, !dbg !576

; <label>:107:                                    ; preds = %106, %68
  %108 = phi i32 [ -97, %68 ], [ 0, %106 ]
  call void @llvm.dbg.value(metadata i32 %108, metadata !567, metadata !DIExpression()), !dbg !576
  call void bitcast (void (...)* @local_irq_enable to void ()*)() #9, !dbg !696
  br label %109, !dbg !697

; <label>:109:                                    ; preds = %107, %99, %19, %14, %5
  %110 = phi i32 [ -95, %14 ], [ -98, %5 ], [ -93, %19 ], [ -97, %99 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #7, !dbg !698
  ret i32 %110, !dbg !699
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_le_pakcet_sent_finish_flag() local_unnamed_addr #0 section ".bt_stack_code" !dbg !701 {
  call void @llvm.dbg.value(metadata i8 0, metadata !431, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i8 8, metadata !432, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i8 0, metadata !433, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !709
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()), !dbg !709
  %1 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !tbaa !119
  br label %4, !dbg !710

; <label>:2:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 %10, metadata !433, metadata !DIExpression()), !dbg !709
  %3 = icmp slt i32 %10, 8, !dbg !711
  br i1 %3, label %4, label %15, !dbg !710, !llvm.loop !440

; <label>:4:                                      ; preds = %2, %0
  %5 = phi i32 [ 0, %0 ], [ %10, %2 ]
  %6 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %1, i32 0, i32 3, i32 %5, i32 0, !dbg !712
  %7 = load i16, i16* %6, align 2, !dbg !712
  %8 = lshr i16 %7, 6, !dbg !712
  %9 = icmp eq i16 %8, 0, !dbg !713
  %10 = add nuw nsw i32 %5, 1, !dbg !714
  call void @llvm.dbg.value(metadata i32 %10, metadata !433, metadata !DIExpression()), !dbg !709
  br i1 %9, label %2, label %11, !dbg !715

; <label>:11:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i16 %8, metadata !705, metadata !DIExpression()), !dbg !716
  %12 = tail call zeroext i8 @hci_le_get_acl_packet_num(i16 zeroext %8) #9, !dbg !717
  %13 = icmp eq i8 %12, 0, !dbg !719
  %14 = zext i1 %13 to i8, !dbg !720
  br label %16, !dbg !720

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !722

; <label>:16:                                     ; preds = %15, %11
  %17 = phi i8 [ %14, %11 ], [ 1, %15 ]
  ret i8 %17, !dbg !722
}

; Function Attrs: optsize
declare zeroext i8 @hci_le_get_acl_packet_num(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_le_conn_disconnet_flag() local_unnamed_addr #0 section ".bt_stack_code" !dbg !723 {
  %1 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !726, !tbaa !119
  %2 = icmp eq %struct.att_ctl_t* %1, null, !dbg !726
  br i1 %2, label %18, label %3, !dbg !728

; <label>:3:                                      ; preds = %0
  br label %6, !dbg !729

; <label>:4:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i32 %12, metadata !433, metadata !DIExpression()), !dbg !731
  %5 = icmp slt i32 %12, 8, !dbg !732
  br i1 %5, label %6, label %17, !dbg !733, !llvm.loop !440

; <label>:6:                                      ; preds = %4, %3
  %7 = phi i32 [ %12, %4 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %1, i32 0, i32 3, i32 %7, i32 0, !dbg !729
  %9 = load i16, i16* %8, align 2, !dbg !729
  %10 = lshr i16 %9, 6, !dbg !729
  %11 = icmp eq i16 %10, 0, !dbg !734
  %12 = add nuw nsw i32 %7, 1, !dbg !735
  call void @llvm.dbg.value(metadata i32 %12, metadata !433, metadata !DIExpression()), !dbg !731
  br i1 %11, label %4, label %13, !dbg !736

; <label>:13:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i16 %10, metadata !725, metadata !DIExpression()), !dbg !737
  %14 = tail call zeroext i8 @hci_le_get_connect_flag(i16 zeroext %10) #9, !dbg !738
  %15 = icmp eq i8 %14, 0, !dbg !740
  %16 = zext i1 %15 to i8, !dbg !741
  br label %18, !dbg !741

; <label>:17:                                     ; preds = %4
  br label %18, !dbg !743

; <label>:18:                                     ; preds = %17, %13, %0
  %19 = phi i8 [ 1, %0 ], [ %16, %13 ], [ 1, %17 ]
  ret i8 %19, !dbg !743
}

; Function Attrs: optsize
declare zeroext i8 @hci_le_get_connect_flag(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @att_send_schedule() local_unnamed_addr #0 section ".bt_stack_code" !dbg !745 {
  %1 = alloca %struct.user_send_head_t, align 2
  call void @llvm.dbg.value(metadata i32 0, metadata !747, metadata !DIExpression()), !dbg !748
  %2 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !749, !tbaa !119
  %3 = icmp eq %struct.att_ctl_t* %2, null, !dbg !749
  br i1 %3, label %78, label %4, !dbg !751

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 6, !dbg !752
  %6 = load volatile i8, i8* %5, align 2, !dbg !752, !tbaa !754
  %7 = icmp eq i8 %6, 0, !dbg !756
  br i1 %7, label %22, label %8, !dbg !757

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 1, i32 0, !dbg !758
  %10 = load i16, i16* %9, align 4, !dbg !758, !tbaa !760
  %11 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 1, i32 2, !dbg !761
  %12 = load i16, i16* %11, align 4, !dbg !761
  %13 = lshr i16 %12, 12, !dbg !761
  %14 = trunc i16 %13 to i8, !dbg !762
  %15 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 1, i32 1, !dbg !763
  %16 = load i16, i16* %15, align 2, !dbg !763, !tbaa !764
  %17 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 4, !dbg !765
  %18 = load i8*, i8** %17, align 4, !dbg !765, !tbaa !766
  %19 = and i16 %12, 4095, !dbg !767
  %20 = tail call fastcc i32 @att_operation_cmd_send(i16 zeroext %10, i8 zeroext %14, i16 zeroext %16, i8* %18, i16 zeroext %19) #10, !dbg !768
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !748
  %21 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !tbaa !119
  br label %22, !dbg !769

; <label>:22:                                     ; preds = %8, %4
  %23 = phi %struct.att_ctl_t* [ %21, %8 ], [ %2, %4 ], !dbg !770
  %24 = phi i32 [ 1, %8 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !747, metadata !DIExpression()), !dbg !748
  %25 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %23, i32 0, i32 0, !dbg !772
  %26 = tail call i32 @cbuf_get_data_size(%struct._cbuffer* %25) #9, !dbg !773
  %27 = icmp eq i32 %26, 0, !dbg !773
  br i1 %27, label %75, label %28, !dbg !774

; <label>:28:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !775, metadata !DIExpression()), !dbg !781
  %29 = bitcast %struct.user_send_head_t* %1 to i8*, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %29) #7, !dbg !784
  %30 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %1, i32 0, i32 2
  %31 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.user_send_head_t, %struct.user_send_head_t* %1, i32 0, i32 1
  br label %33, !dbg !785

; <label>:33:                                     ; preds = %57, %28
  %34 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !786, !tbaa !119
  %35 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %34, i32 0, i32 6, !dbg !789
  %36 = load volatile i8, i8* %35, align 2, !dbg !789, !tbaa !754
  %37 = icmp eq i8 %36, 0, !dbg !786
  br i1 %37, label %38, label %73, !dbg !790

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %34, i32 0, i32 0, !dbg !791
  %40 = call i32 @cbuf_get_data_size(%struct._cbuffer* %39) #9, !dbg !793
  %41 = icmp eq i32 %40, 0, !dbg !794
  br i1 %41, label %73, label %42, !dbg !795

; <label>:42:                                     ; preds = %38
  %43 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !796, !tbaa !119
  %44 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %43, i32 0, i32 0, !dbg !797
  %45 = call i32 @cbuf_read(%struct._cbuffer* %44, i8* nonnull %29, i32 6) #9, !dbg !798
  %46 = load i16, i16* %30, align 2, !dbg !799
  %47 = and i16 %46, 4095, !dbg !799
  %48 = icmp eq i16 %47, 0, !dbg !801
  br i1 %48, label %57, label %49, !dbg !802

; <label>:49:                                     ; preds = %42
  %50 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !803, !tbaa !119
  %51 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %50, i32 0, i32 0, !dbg !805
  %52 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %50, i32 0, i32 4, !dbg !806
  %53 = load i8*, i8** %52, align 4, !dbg !806, !tbaa !766
  %54 = zext i16 %47 to i32, !dbg !807
  %55 = call i32 @cbuf_read(%struct._cbuffer* %51, i8* %53, i32 %54) #9, !dbg !808
  %56 = load i16, i16* %30, align 2
  br label %57, !dbg !809

; <label>:57:                                     ; preds = %49, %42
  %58 = phi i16 [ %46, %42 ], [ %56, %49 ], !dbg !810
  %59 = load i16, i16* %31, align 2, !dbg !811, !tbaa !583
  %60 = lshr i16 %58, 12, !dbg !810
  %61 = trunc i16 %60 to i8, !dbg !812
  %62 = load i16, i16* %32, align 2, !dbg !813, !tbaa !587
  %63 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !814, !tbaa !119
  %64 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %63, i32 0, i32 4, !dbg !815
  %65 = load i8*, i8** %64, align 4, !dbg !815, !tbaa !766
  %66 = and i16 %58, 4095, !dbg !816
  %67 = call fastcc i32 @att_operation_cmd_send(i16 zeroext %59, i8 zeroext %61, i16 zeroext %62, i8* %65, i16 zeroext %66) #9, !dbg !817
  call void @llvm.dbg.value(metadata i32 %67, metadata !775, metadata !DIExpression()), !dbg !781
  %68 = icmp eq i32 %67, 87, !dbg !818
  br i1 %68, label %69, label %33, !dbg !820, !llvm.loop !821

; <label>:69:                                     ; preds = %57
  %70 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !824, !tbaa !119
  %71 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %70, i32 0, i32 1, !dbg !826
  %72 = bitcast %struct.user_send_head_t* %71 to i8*, !dbg !827
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* nonnull %29, i32 6, i32 2, i1 false) #7, !dbg !827
  call void @llvm.dbg.value(metadata i32 2, metadata !775, metadata !DIExpression()), !dbg !781
  br label %74, !dbg !828

; <label>:73:                                     ; preds = %38, %33
  br label %74, !dbg !829

; <label>:74:                                     ; preds = %73, %69
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %29) #7, !dbg !829
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i32 %24, metadata !747, metadata !DIExpression()), !dbg !748
  br label %77, !dbg !830

; <label>:75:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %24, metadata !747, metadata !DIExpression()), !dbg !748
  %76 = icmp eq i32 %24, 0, !dbg !831
  br i1 %76, label %78, label %77, !dbg !830

; <label>:77:                                     ; preds = %75, %74
  call void @att_request_can_send_now_event() #10, !dbg !833
  br label %78, !dbg !835

; <label>:78:                                     ; preds = %77, %75, %0
  ret void, !dbg !836
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @att_operation_cmd_send(i16 zeroext, i8 zeroext, i16 zeroext, i8*, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !838 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !842, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i8 %1, metadata !843, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i16 %2, metadata !844, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i8* %3, metadata !845, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i16 %4, metadata !846, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i16 %0, metadata !489, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !858
  %6 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !tbaa !119
  br label %7, !dbg !859

; <label>:7:                                      ; preds = %13, %5
  %8 = phi i32 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %6, i32 0, i32 3, i32 %8, i32 0, !dbg !860
  %10 = load i16, i16* %9, align 2, !dbg !860
  %11 = lshr i16 %10, 6, !dbg !860
  %12 = icmp eq i16 %11, %0, !dbg !861
  br i1 %12, label %16, label %13, !dbg !862

; <label>:13:                                     ; preds = %7
  %14 = add nuw nsw i32 %8, 1, !dbg !863
  call void @llvm.dbg.value(metadata i32 %14, metadata !490, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 %14, metadata !490, metadata !DIExpression()), !dbg !858
  %15 = icmp slt i32 %14, 8, !dbg !864
  br i1 %15, label %7, label %55, !dbg !859, !llvm.loop !501

; <label>:16:                                     ; preds = %7
  %17 = trunc i32 %8 to i8, !dbg !865
  %18 = icmp ugt i8 %17, 8, !dbg !866
  br i1 %18, label %56, label %19, !dbg !867

; <label>:19:                                     ; preds = %16
  %20 = load i8, i8* @ble_debug_enable, align 1, !dbg !868, !tbaa !612
  %21 = and i8 %20, 1, !dbg !868
  %22 = icmp eq i8 %21, 0, !dbg !868
  br i1 %22, label %29, label %23, !dbg !870

; <label>:23:                                     ; preds = %19
  %24 = zext i16 %0 to i32, !dbg !871
  %25 = zext i16 %2 to i32, !dbg !871
  %26 = zext i16 %4 to i32, !dbg !871
  %27 = zext i8 %1 to i32, !dbg !871
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i32 %24, i32 %25, i32 %26, i32 %27) #10, !dbg !871
  br label %29, !dbg !871

; <label>:29:                                     ; preds = %23, %19
  switch i8 %1, label %56 [
    i8 1, label %30
    i8 2, label %32
    i8 6, label %34
    i8 5, label %37
    i8 3, label %40
    i8 4, label %43
  ], !dbg !873

; <label>:30:                                     ; preds = %29
  %31 = tail call i32 @att_server_notify(i16 zeroext %0, i16 zeroext %2, i8* %3, i16 zeroext %4) #9, !dbg !874
  call void @llvm.dbg.value(metadata i32 %31, metadata !847, metadata !DIExpression()), !dbg !854
  br label %46, !dbg !876

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @att_server_indicate(i16 zeroext %0, i16 zeroext %2, i8* %3, i16 zeroext %4) #9, !dbg !877
  call void @llvm.dbg.value(metadata i32 %33, metadata !847, metadata !DIExpression()), !dbg !854
  br label %46, !dbg !878

; <label>:34:                                     ; preds = %29
  %35 = tail call zeroext i8 @gatt_client_write_value_of_characteristic_without_response(i16 zeroext %0, i16 zeroext %2, i16 zeroext %4, i8* %3) #9, !dbg !879
  %36 = zext i8 %35 to i32, !dbg !879
  call void @llvm.dbg.value(metadata i32 %36, metadata !847, metadata !DIExpression()), !dbg !854
  br label %46, !dbg !880

; <label>:37:                                     ; preds = %29
  %38 = tail call zeroext i8 @gatt_client_write_value_of_characteristic(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %0, i16 zeroext %2, i16 zeroext %4, i8* %3) #9, !dbg !881
  %39 = zext i8 %38 to i32, !dbg !881
  call void @llvm.dbg.value(metadata i32 %39, metadata !847, metadata !DIExpression()), !dbg !854
  br label %46, !dbg !882

; <label>:40:                                     ; preds = %29
  %41 = tail call zeroext i8 @gatt_client_read_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %0, i16 zeroext %2) #9, !dbg !883
  %42 = zext i8 %41 to i32, !dbg !883
  call void @llvm.dbg.value(metadata i32 %42, metadata !847, metadata !DIExpression()), !dbg !854
  br label %46, !dbg !884

; <label>:43:                                     ; preds = %29
  %44 = tail call zeroext i8 @gatt_client_read_long_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %0, i16 zeroext %2) #9, !dbg !885
  %45 = zext i8 %44 to i32, !dbg !885
  call void @llvm.dbg.value(metadata i32 %45, metadata !847, metadata !DIExpression()), !dbg !854
  br label %46, !dbg !886

; <label>:46:                                     ; preds = %43, %40, %37, %34, %32, %30
  %47 = phi i32 [ %45, %43 ], [ %42, %40 ], [ %39, %37 ], [ %36, %34 ], [ %33, %32 ], [ %31, %30 ]
  call void @llvm.dbg.value(metadata i32 %47, metadata !847, metadata !DIExpression()), !dbg !854
  switch i32 %47, label %49 [
    i32 0, label %48
    i32 87, label %56
    i32 144, label %56
    i32 149, label %56
    i32 148, label %56
  ], !dbg !887

; <label>:48:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression()), !dbg !854
  br label %56, !dbg !888

; <label>:49:                                     ; preds = %46
  %50 = load i8, i8* @ble_debug_enable, align 1, !dbg !890, !tbaa !612
  %51 = and i8 %50, 1, !dbg !890
  %52 = icmp eq i8 %51, 0, !dbg !890
  br i1 %52, label %56, label %53, !dbg !892

; <label>:53:                                     ; preds = %49
  %54 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 %47) #10, !dbg !893
  br label %56, !dbg !893

; <label>:55:                                     ; preds = %13
  br label %56

; <label>:56:                                     ; preds = %55, %53, %49, %48, %46, %46, %46, %46, %29, %16
  %57 = phi i8 [ 0, %16 ], [ 0, %29 ], [ 0, %48 ], [ 1, %46 ], [ 1, %46 ], [ 1, %46 ], [ 1, %46 ], [ 1, %49 ], [ 1, %53 ], [ 0, %55 ]
  %58 = phi i32 [ 0, %16 ], [ 0, %29 ], [ 0, %48 ], [ 87, %46 ], [ 87, %46 ], [ 87, %46 ], [ 87, %46 ], [ 0, %49 ], [ 0, %53 ], [ 0, %55 ]
  %59 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !tbaa !119
  %60 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %59, i32 0, i32 6
  store volatile i8 %57, i8* %60, align 2, !tbaa !754
  ret i32 %58, !dbg !895
}

; Function Attrs: nounwind optsize
define hidden void @att_send_set_mtu_size(i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !896 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !900, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i16 %1, metadata !901, metadata !DIExpression()), !dbg !904
  %3 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !905, !tbaa !119
  %4 = icmp eq %struct.att_ctl_t* %3, null, !dbg !905
  br i1 %4, label %36, label %5, !dbg !907

; <label>:5:                                      ; preds = %2
  br label %6, !dbg !908

; <label>:6:                                      ; preds = %12, %5
  %7 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %8 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %3, i32 0, i32 3, i32 %7, i32 0, !dbg !908
  %9 = load i16, i16* %8, align 2, !dbg !908
  %10 = lshr i16 %9, 6, !dbg !908
  %11 = icmp eq i16 %10, %0, !dbg !910
  br i1 %11, label %15, label %12, !dbg !911

; <label>:12:                                     ; preds = %6
  %13 = add nuw nsw i32 %7, 1, !dbg !912
  call void @llvm.dbg.value(metadata i32 %13, metadata !490, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 %13, metadata !490, metadata !DIExpression()), !dbg !913
  %14 = icmp slt i32 %13, 8, !dbg !914
  br i1 %14, label %6, label %35, !dbg !915, !llvm.loop !501

; <label>:15:                                     ; preds = %6
  %16 = trunc i32 %7 to i8, !dbg !916
  call void @llvm.dbg.value(metadata i8 %16, metadata !902, metadata !DIExpression()), !dbg !917
  %17 = and i32 %7, 255, !dbg !918
  %18 = icmp ugt i8 %16, 8, !dbg !920
  br i1 %18, label %36, label %19, !dbg !921

; <label>:19:                                     ; preds = %15
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #9, !dbg !922
  %20 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !923, !tbaa !119
  %21 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %20, i32 0, i32 5, !dbg !925
  %22 = load i16, i16* %21, align 4, !dbg !925, !tbaa !926
  %23 = icmp ugt i16 %22, %1, !dbg !927
  %24 = select i1 %23, i16 %1, i16 %22, !dbg !928
  %25 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %20, i32 0, i32 3, i32 %17, i32 1
  store i16 %24, i16* %25, align 2, !tbaa !513
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #9, !dbg !930
  %26 = load i8, i8* @ble_debug_enable, align 1, !dbg !931, !tbaa !612
  %27 = and i8 %26, 1, !dbg !931
  %28 = icmp eq i8 %27, 0, !dbg !931
  br i1 %28, label %36, label %29, !dbg !933

; <label>:29:                                     ; preds = %19
  %30 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !934, !tbaa !119
  %31 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %30, i32 0, i32 3, i32 %17, i32 1, !dbg !934
  %32 = load i16, i16* %31, align 2, !dbg !934, !tbaa !513
  %33 = zext i16 %32 to i32, !dbg !934
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i32 %17, i32 %33) #10, !dbg !934
  br label %36, !dbg !934

; <label>:35:                                     ; preds = %12
  br label %36, !dbg !936

; <label>:36:                                     ; preds = %35, %29, %19, %15, %2
  ret void, !dbg !936
}

; Function Attrs: nounwind optsize
define hidden i32 @att_send_need_bufszie() local_unnamed_addr #0 section ".bt_stack_code" !dbg !938 {
  call void @llvm.dbg.value(metadata i32 214, metadata !942, metadata !DIExpression()), !dbg !943
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 20, i32 188) #10, !dbg !944
  ret i32 214, !dbg !945
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @att_need_ctrl_ramsize() local_unnamed_addr #5 section ".bt_stack_code" !dbg !946 {
  ret i32 188, !dbg !949
}

; Function Attrs: nounwind optsize
define hidden void @att_set_default_conn_handle(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !950 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !954, metadata !DIExpression()), !dbg !955
  %2 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !956, !tbaa !119
  %3 = icmp eq %struct.att_ctl_t* %2, null, !dbg !956
  br i1 %3, label %10, label %4, !dbg !958

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %2, i32 0, i32 3, i32 0, i32 0, !dbg !959
  %6 = load i16, i16* %5, align 2, !dbg !960
  %7 = shl i16 %0, 6, !dbg !960
  %8 = and i16 %6, 63, !dbg !960
  %9 = or i16 %8, %7, !dbg !960
  store i16 %9, i16* %5, align 2, !dbg !960
  br label %10, !dbg !961

; <label>:10:                                     ; preds = %4, %1
  ret void, !dbg !962
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @att_get_default_conn_handle() local_unnamed_addr #2 section ".bt_stack_code" !dbg !964 {
  %1 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !967, !tbaa !119
  %2 = icmp eq %struct.att_ctl_t* %1, null, !dbg !967
  br i1 %2, label %15, label %3, !dbg !969

; <label>:3:                                      ; preds = %0
  br label %6, !dbg !970

; <label>:4:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i32 %12, metadata !979, metadata !DIExpression()), !dbg !981
  %5 = icmp slt i32 %12, 8, !dbg !982
  br i1 %5, label %6, label %13, !dbg !984, !llvm.loop !986

; <label>:6:                                      ; preds = %4, %3
  %7 = phi i32 [ %12, %4 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %1, i32 0, i32 3, i32 %7, i32 0, !dbg !970
  %9 = load i16, i16* %8, align 2, !dbg !970
  %10 = lshr i16 %9, 6, !dbg !970
  %11 = icmp eq i16 %10, 0, !dbg !989
  %12 = add nuw nsw i32 %7, 1, !dbg !990
  call void @llvm.dbg.value(metadata i32 %12, metadata !979, metadata !DIExpression()), !dbg !981
  br i1 %11, label %4, label %13, !dbg !992

; <label>:13:                                     ; preds = %6, %4
  %14 = phi i16 [ 0, %4 ], [ %10, %6 ]
  br label %15, !dbg !993

; <label>:15:                                     ; preds = %13, %0
  %16 = phi i16 [ 0, %0 ], [ %14, %13 ]
  ret i16 %16, !dbg !993
}

; Function Attrs: nounwind optsize
define hidden void @att_send_init(i16 zeroext, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !994 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !998, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8* %1, metadata !999, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i16 %2, metadata !1000, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i16 %3, metadata !1001, metadata !DIExpression()), !dbg !1006
  store %struct.att_ctl_t* null, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !1007, !tbaa !119
  %5 = icmp ne i16 %0, 0, !dbg !1008
  %6 = icmp ne i8* %1, null, !dbg !1010
  %7 = and i1 %5, %6, !dbg !1012
  br i1 %7, label %8, label %76, !dbg !1012

; <label>:8:                                      ; preds = %4
  %9 = zext i16 %2 to i32, !dbg !1013
  call void @llvm.dbg.value(metadata i32 214, metadata !942, metadata !DIExpression()), !dbg !1015
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 20, i32 188) #9, !dbg !1017
  %11 = zext i16 %3 to i32, !dbg !1018
  %12 = add nuw nsw i32 %11, 214, !dbg !1019
  %13 = icmp ult i32 %9, %12, !dbg !1020
  br i1 %13, label %14, label %23, !dbg !1021

; <label>:14:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i32 214, metadata !942, metadata !DIExpression()), !dbg !1022
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 20, i32 188) #9, !dbg !1025
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 %12) #10, !dbg !1026
  %17 = load i32, i32* @config_asser, align 4, !dbg !1028, !tbaa !1032
  %18 = icmp eq i32 %17, 0, !dbg !1028
  br i1 %18, label %22, label %19, !dbg !1033

; <label>:19:                                     ; preds = %14
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i32 0, i32 0), i32 692) #10, !dbg !1035
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !1040
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1042
  br label %76, !dbg !1044

; <label>:22:                                     ; preds = %14
  tail call fastcc void @cpu_reset() #10, !dbg !1046
  br label %76

; <label>:23:                                     ; preds = %8
  %24 = icmp ult i16 %3, 20, !dbg !1051
  br i1 %24, label %25, label %33, !dbg !1053

; <label>:25:                                     ; preds = %23
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 20) #10, !dbg !1054
  %27 = load i32, i32* @config_asser, align 4, !dbg !1056, !tbaa !1032
  %28 = icmp eq i32 %27, 0, !dbg !1056
  br i1 %28, label %32, label %29, !dbg !1060

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i32 0, i32 0), i32 698) #10, !dbg !1062
  %31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !1067
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1069
  br label %76, !dbg !1071

; <label>:32:                                     ; preds = %25
  tail call fastcc void @cpu_reset() #10, !dbg !1073
  br label %76

; <label>:33:                                     ; preds = %23
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #9, !dbg !1078
  store i8* %1, i8** bitcast (%struct.att_ctl_t** @att_s_hdl to i8**), align 4, !dbg !1079, !tbaa !119
  %34 = getelementptr inbounds i8, i8* %1, i32 188, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %34, metadata !999, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i16 %49, metadata !1000, metadata !DIExpression()), !dbg !1005
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %1, i8 0, i32 188, i32 4, i1 false), !dbg !1081
  %35 = getelementptr inbounds i8, i8* %1, i32 172, !dbg !1082
  %36 = bitcast i8* %35 to i8**, !dbg !1082
  store i8* %34, i8** %36, align 4, !dbg !1083, !tbaa !766
  %37 = bitcast i8* %1 to %struct.att_ctl_t*, !dbg !1084
  %38 = getelementptr inbounds i8, i8* %1, i32 176, !dbg !1085
  %39 = bitcast i8* %38 to i16*, !dbg !1085
  store i16 %3, i16* %39, align 4, !dbg !1086, !tbaa !926
  call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 0, metadata !1002, metadata !DIExpression()), !dbg !1087
  br label %40, !dbg !1088

; <label>:40:                                     ; preds = %40, %33
  %41 = phi i32 [ 0, %33 ], [ %46, %40 ]
  %42 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %37, i32 0, i32 3, i32 %41, i32 1, !dbg !1091
  store i16 20, i16* %42, align 2, !dbg !1094, !tbaa !513
  %43 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %37, i32 0, i32 3, i32 %41, i32 0, !dbg !1095
  %44 = load i16, i16* %43, align 2, !dbg !1096
  %45 = or i16 %44, 60, !dbg !1096
  store i16 %45, i16* %43, align 2, !dbg !1096
  %46 = add nuw nsw i32 %41, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %46, metadata !1002, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 %46, metadata !1002, metadata !DIExpression()), !dbg !1087
  %47 = icmp eq i32 %46, 8, !dbg !1099
  br i1 %47, label %48, label %40, !dbg !1088, !llvm.loop !1101

; <label>:48:                                     ; preds = %40
  %49 = add i16 %2, -188, !dbg !1104
  %50 = getelementptr inbounds i8, i8* %34, i32 %11, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %50, metadata !999, metadata !DIExpression()), !dbg !1004
  %51 = sub i16 %49, %3, !dbg !1106
  call void @llvm.dbg.value(metadata i16 %51, metadata !1000, metadata !DIExpression()), !dbg !1005
  %52 = getelementptr inbounds i8, i8* %1, i32 42, !dbg !1107
  tail call void @llvm.memset.p0i8.i32(i8* %52, i8 0, i32 96, i32 2, i1 false) #7, !dbg !1107
  %53 = getelementptr inbounds i8, i8* %1, i32 178, !dbg !1109
  store volatile i8 0, i8* %53, align 2, !dbg !1110, !tbaa !754
  %54 = bitcast i8* %1 to %struct._cbuffer*, !dbg !1111
  %55 = zext i16 %51 to i32, !dbg !1112
  tail call void @cbuf_init(%struct._cbuffer* %54, i8* %50, i32 %55) #9, !dbg !1113
  %56 = add i16 %0, -1, !dbg !1114
  %57 = icmp ult i16 %56, -4097, !dbg !1114
  br i1 %57, label %58, label %67, !dbg !1114

; <label>:58:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i16 %0, metadata !954, metadata !DIExpression()), !dbg !1116
  %59 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !1119, !tbaa !119
  %60 = icmp eq %struct.att_ctl_t* %59, null, !dbg !1119
  br i1 %60, label %67, label %61, !dbg !1120

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %59, i32 0, i32 3, i32 0, i32 0, !dbg !1121
  %63 = load i16, i16* %62, align 2, !dbg !1122
  %64 = shl i16 %0, 6, !dbg !1122
  %65 = and i16 %63, 63, !dbg !1122
  %66 = or i16 %65, %64, !dbg !1122
  store i16 %66, i16* %62, align 2, !dbg !1122
  br label %67, !dbg !1123

; <label>:67:                                     ; preds = %61, %58, %48
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #9, !dbg !1124
  %68 = load i8, i8* @ble_debug_enable, align 1, !dbg !1125, !tbaa !612
  %69 = and i8 %68, 1, !dbg !1125
  %70 = icmp eq i8 %69, 0, !dbg !1125
  br i1 %70, label %76, label %71, !dbg !1127

; <label>:71:                                     ; preds = %67
  %72 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !1128, !tbaa !119
  %73 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %72, i32 0, i32 0, i32 7, !dbg !1128
  %74 = load i32, i32* %73, align 4, !dbg !1128, !tbaa !519
  %75 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i32 %74) #10, !dbg !1128
  br label %76, !dbg !1128

; <label>:76:                                     ; preds = %71, %67, %32, %29, %22, %19, %4
  ret void, !dbg !1130
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #6 !dbg !1132 {
  tail call void @p33_soft_reset() #9, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: optsize
declare void @cbuf_init(%struct._cbuffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @att_set_conn_handle(i16 zeroext, i32, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1135 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1139, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 %1, metadata !1140, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i32 %2, metadata !1141, metadata !DIExpression()), !dbg !1146
  %4 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !dbg !1147, !tbaa !119
  %5 = icmp eq %struct.att_ctl_t* %4, null, !dbg !1147
  br i1 %5, label %63, label %6, !dbg !1149

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1143, metadata !DIExpression()), !dbg !1150
  %7 = load i8, i8* @ble_debug_enable, align 1, !dbg !1151, !tbaa !612
  %8 = and i8 %7, 1, !dbg !1151
  %9 = icmp eq i8 %8, 0, !dbg !1151
  br i1 %9, label %13, label %10, !dbg !1153

; <label>:10:                                     ; preds = %6
  %11 = zext i16 %0 to i32, !dbg !1154
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i32 %11, i32 %1, i32 %2) #10, !dbg !1154
  br label %13, !dbg !1154

; <label>:13:                                     ; preds = %10, %6
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #9, !dbg !1156
  call void @llvm.dbg.value(metadata i32 0, metadata !1142, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i32 0, metadata !1142, metadata !DIExpression()), !dbg !1157
  %14 = load %struct.att_ctl_t*, %struct.att_ctl_t** @att_s_hdl, align 4, !tbaa !119
  br label %15, !dbg !1158

; <label>:15:                                     ; preds = %27, %13
  %16 = phi i32 [ 0, %13 ], [ %28, %27 ]
  %17 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %14, i32 0, i32 3, i32 %16, i32 0, !dbg !1161
  %18 = load i16, i16* %17, align 2, !dbg !1161
  %19 = and i16 %18, 3, !dbg !1161
  %20 = zext i16 %19 to i32, !dbg !1165
  %21 = icmp eq i32 %20, %2, !dbg !1166
  br i1 %21, label %22, label %27, !dbg !1167

; <label>:22:                                     ; preds = %15
  %23 = lshr i16 %18, 2, !dbg !1168
  %24 = and i16 %23, 15, !dbg !1168
  %25 = zext i16 %24 to i32, !dbg !1170
  %26 = icmp eq i32 %25, %1, !dbg !1171
  br i1 %26, label %30, label %27, !dbg !1172

; <label>:27:                                     ; preds = %22, %15
  %28 = add nuw nsw i32 %16, 1, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %28, metadata !1142, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i32 %28, metadata !1142, metadata !DIExpression()), !dbg !1157
  %29 = icmp slt i32 %28, 8, !dbg !1176
  br i1 %29, label %15, label %38, !dbg !1158, !llvm.loop !1178

; <label>:30:                                     ; preds = %22
  %31 = shl i16 %0, 6, !dbg !1181
  %32 = and i16 %18, 63, !dbg !1181
  %33 = or i16 %32, %31, !dbg !1181
  store i16 %33, i16* %17, align 2, !dbg !1181
  %34 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %14, i32 0, i32 3, i32 %1, i32 1, !dbg !1184
  store i16 20, i16* %34, align 2, !dbg !1185, !tbaa !513
  %35 = icmp eq i16 %0, 0, !dbg !1186
  br i1 %35, label %36, label %61, !dbg !1188

; <label>:36:                                     ; preds = %30
  %37 = or i16 %31, 60, !dbg !1189
  store i16 %37, i16* %17, align 2, !dbg !1189
  br label %61, !dbg !1191

; <label>:38:                                     ; preds = %27
  %39 = icmp eq i16 %0, 0, !dbg !1192
  br i1 %39, label %61, label %40, !dbg !1194

; <label>:40:                                     ; preds = %38
  br label %41, !dbg !1195

; <label>:41:                                     ; preds = %47, %40
  %42 = phi i32 [ %48, %47 ], [ 0, %40 ]
  %43 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %14, i32 0, i32 3, i32 %42, i32 0, !dbg !1195
  %44 = load i16, i16* %43, align 2, !dbg !1195
  %45 = and i16 %44, 60, !dbg !1195
  %46 = icmp eq i16 %45, 60, !dbg !1201
  br i1 %46, label %50, label %47, !dbg !1202

; <label>:47:                                     ; preds = %41
  %48 = add nuw nsw i32 %42, 1, !dbg !1203
  call void @llvm.dbg.value(metadata i32 %48, metadata !1142, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i32 %48, metadata !1142, metadata !DIExpression()), !dbg !1157
  %49 = icmp slt i32 %48, 8, !dbg !1205
  br i1 %49, label %41, label %60, !dbg !1207, !llvm.loop !1209

; <label>:50:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 undef, metadata !1142, metadata !DIExpression()), !dbg !1157
  %51 = trunc i32 %1 to i16, !dbg !1212
  %52 = shl i16 %51, 2, !dbg !1213
  %53 = shl i16 %0, 6, !dbg !1214
  %54 = and i16 %52, 60, !dbg !1214
  %55 = or i16 %54, %53, !dbg !1214
  %56 = getelementptr inbounds %struct.att_ctl_t, %struct.att_ctl_t* %14, i32 0, i32 3, i32 %1, i32 1, !dbg !1215
  store i16 20, i16* %56, align 2, !dbg !1216, !tbaa !513
  %57 = trunc i32 %2 to i16, !dbg !1217
  %58 = and i16 %57, 3, !dbg !1218
  %59 = or i16 %55, %58, !dbg !1218
  store i16 %59, i16* %43, align 2, !dbg !1218
  br label %61, !dbg !1219

; <label>:60:                                     ; preds = %47
  br label %61, !dbg !1150

; <label>:61:                                     ; preds = %60, %50, %38, %36, %30
  %62 = phi i32 [ 0, %50 ], [ 0, %30 ], [ 0, %36 ], [ -96, %38 ], [ -96, %60 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !1143, metadata !DIExpression()), !dbg !1150
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #9, !dbg !1220
  br label %63

; <label>:63:                                     ; preds = %61, %3
  %64 = phi i32 [ %62, %61 ], [ -98, %3 ]
  ret i32 %64, !dbg !1221
}

; Function Attrs: nounwind optsize
define hidden i32 @att_send_check_multi_dev(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1223 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1227, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %1, metadata !1228, metadata !DIExpression()), !dbg !1230
  %3 = zext i8 %0 to i32, !dbg !1231
  %4 = zext i8 %1 to i32, !dbg !1233
  %5 = add nuw nsw i32 %4, %3, !dbg !1234
  %6 = icmp ugt i32 %5, 9, !dbg !1235
  br i1 %6, label %7, label %15, !dbg !1236

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i32 8) #10, !dbg !1237
  %9 = load i32, i32* @config_asser, align 4, !dbg !1239, !tbaa !1032
  %10 = icmp eq i32 %9, 0, !dbg !1239
  br i1 %10, label %14, label %11, !dbg !1243

; <label>:11:                                     ; preds = %7
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.8, i32 0, i32 0), i32 794) #10, !dbg !1245
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !1250
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1252
  br label %15, !dbg !1254

; <label>:14:                                     ; preds = %7
  tail call fastcc void @cpu_reset() #10, !dbg !1256
  br label %15

; <label>:15:                                     ; preds = %14, %11, %2
  %16 = phi i32 [ -1, %11 ], [ -1, %14 ], [ 0, %2 ]
  ret i32 %16, !dbg !1261
}

; Function Attrs: optsize
declare i32 @cbuf_write(%struct._cbuffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @att_server_notify(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @att_server_indicate(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gatt_client_write_value_of_characteristic_without_response(i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gatt_client_write_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @user_client_gatt_event(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #3

; Function Attrs: optsize
declare zeroext i8 @gatt_client_read_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gatt_client_read_long_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cbuf_read(%struct._cbuffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!110, !111}
!llvm.ident = !{!112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !108, line: 190, type: !109, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !33)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/att_send.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 89, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/ble_api.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16}
!8 = !DIEnumerator(name: "BLE_CMD_RET_SUCESS", value: 0)
!9 = !DIEnumerator(name: "BLE_CMD_RET_BUSY", value: -100)
!10 = !DIEnumerator(name: "BLE_CMD_PARAM_OVERFLOW", value: -99)
!11 = !DIEnumerator(name: "BLE_CMD_OPT_FAIL", value: -98)
!12 = !DIEnumerator(name: "BLE_BUFFER_FULL", value: -97)
!13 = !DIEnumerator(name: "BLE_BUFFER_ERROR", value: -96)
!14 = !DIEnumerator(name: "BLE_CMD_PARAM_ERROR", value: -95)
!15 = !DIEnumerator(name: "BLE_CMD_STACK_NOT_RUN", value: -94)
!16 = !DIEnumerator(name: "BLE_CMD_CCC_FAIL", value: -93)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 45, size: 32, elements: !19)
!18 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/att.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27}
!20 = !DIEnumerator(name: "ATT_OP_AUTO_READ_CCC", value: 0)
!21 = !DIEnumerator(name: "ATT_OP_NOTIFY", value: 1)
!22 = !DIEnumerator(name: "ATT_OP_INDICATE", value: 2)
!23 = !DIEnumerator(name: "ATT_OP_READ", value: 3)
!24 = !DIEnumerator(name: "ATT_OP_READ_LONG", value: 4)
!25 = !DIEnumerator(name: "ATT_OP_WRITE", value: 5)
!26 = !DIEnumerator(name: "ATT_OP_WRITE_WITHOUT_RESPOND", value: 6)
!27 = !DIEnumerator(name: "ATT_OP_CMD_MAX", value: 15)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !{!0, !34}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "att_s_hdl", scope: !2, file: !3, line: 63, type: !36, isLocal: true, isDefinition: true)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_ctl_t", file: !3, line: 60, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 51, size: 1504, elements: !39)
!39 = !{!40, !66, !76, !86, !98, !101, !102, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "user_send_cbuf", scope: !38, file: !3, line: 52, baseType: !41, size: 288)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbuffer_t", file: !42, line: 26, baseType: !43)
!42 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/generic/circular_buf.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cbuffer", file: !42, line: 16, size: 288, elements: !44)
!44 = !{!45, !50, !51, !52, !53, !54, !57, !58, !59}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !43, file: !42, line: 17, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !48, line: 11, baseType: !49)
!48 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !43, file: !42, line: 18, baseType: !46, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !43, file: !42, line: 19, baseType: !46, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !43, file: !42, line: 20, baseType: !46, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_ptr", scope: !43, file: !42, line: 21, baseType: !46, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_len", scope: !43, file: !42, line: 22, baseType: !55, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !48, line: 15, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !43, file: !42, line: 23, baseType: !55, size: 32, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !43, file: !42, line: 24, baseType: !55, size: 32, offset: 224)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !43, file: !42, line: 25, baseType: !60, size: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 13, baseType: !62)
!61 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/spinlock.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__spinlock", file: !61, line: 9, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock", scope: !62, file: !61, line: 10, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ready_send_head", scope: !38, file: !3, line: 53, baseType: !67, size: 48, offset: 288)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_send_head_t", file: !68, line: 15, baseType: !69)
!68 = !DIFile(filename: "../User/include/ble/att_send.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 10, size: 48, elements: !70)
!70 = !{!71, !73, !74, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handle", scope: !69, file: !68, line: 11, baseType: !72, size: 16)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !48, line: 13, baseType: !32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "send_handle", scope: !69, file: !68, line: 12, baseType: !72, size: 16, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "send_len", scope: !69, file: !68, line: 13, baseType: !72, size: 12, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "send_type", scope: !69, file: !68, line: 14, baseType: !72, size: 4, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "client_configuration", scope: !38, file: !3, line: 54, baseType: !77, size: 768, offset: 336)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 768, elements: !84)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_ccc_cfg_t", file: !3, line: 41, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 37, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !79, file: !3, line: 38, baseType: !30, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !79, file: !3, line: 39, baseType: !30, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handle", scope: !79, file: !3, line: 40, baseType: !30, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!84 = !{!85}
!85 = !DISubrange(count: 24)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dev_hdl_ctrl", scope: !38, file: !3, line: 55, baseType: !87, size: 256, offset: 1104)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !96)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_hdl_t", file: !3, line: 49, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 44, size: 32, elements: !90)
!90 = !{!91, !93, !94, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "conn_role", scope: !89, file: !3, line: 45, baseType: !92, size: 2, flags: DIFlagBitField, extraData: i64 0)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 46, baseType: !32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "conn_index", scope: !89, file: !3, line: 46, baseType: !92, size: 4, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handle", scope: !89, file: !3, line: 47, baseType: !92, size: 10, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "att_payload_size", scope: !89, file: !3, line: 48, baseType: !92, size: 16, offset: 16)
!96 = !{!97}
!97 = !DISubrange(count: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "att_send_data", scope: !38, file: !3, line: 56, baseType: !99, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 44, baseType: !49)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "att_sendbuf_size", scope: !38, file: !3, line: 57, baseType: !92, size: 16, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "send_lock", scope: !38, file: !3, line: 58, baseType: !103, size: 8, offset: 1424)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !38, file: !3, line: 59, baseType: !105, size: 48, offset: 1432)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 48, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 6)
!108 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{i32 2, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!113 = distinct !DISubprogram(name: "att_ccc_config_init", scope: !3, file: !3, line: 135, type: !114, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null}
!116 = !{}
!117 = !DILocation(line: 137, column: 5, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !3, line: 137, column: 5)
!119 = !{!120, !120, i64 0}
!120 = !{!"any pointer", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 137, column: 5, scope: !113)
!124 = !DILocation(line: 138, column: 5, scope: !113)
!125 = !DILocation(line: 139, column: 1, scope: !113)
!126 = !DILocation(line: 139, column: 1, scope: !127)
!127 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 1)
!128 = distinct !DISubprogram(name: "att_set_ccc_config", scope: !3, file: !3, line: 142, type: !129, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !30, !30}
!131 = !{!132, !133, !134, !135, !136}
!132 = !DILocalVariable(name: "handle", arg: 1, scope: !128, file: !3, line: 142, type: !30)
!133 = !DILocalVariable(name: "cfg", arg: 2, scope: !128, file: !3, line: 142, type: !30)
!134 = !DILocalVariable(name: "cnt", scope: !128, file: !3, line: 144, type: !109)
!135 = !DILocalVariable(name: "find_handle", scope: !128, file: !3, line: 145, type: !30)
!136 = !DILocalVariable(name: "pt", scope: !128, file: !3, line: 146, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32)
!138 = !DILocation(line: 142, column: 34, scope: !128)
!139 = !DILocation(line: 142, column: 51, scope: !128)
!140 = !DILocation(line: 145, column: 14, scope: !128)
!141 = !DILocation(line: 148, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !128, file: !3, line: 148, column: 5)
!143 = !DILocation(line: 148, column: 5, scope: !128)
!144 = !DILocation(line: 151, column: 10, scope: !128)
!145 = !DILocation(line: 146, column: 23, scope: !128)
!146 = !DILocation(line: 144, column: 9, scope: !128)
!147 = !DILocation(line: 152, column: 5, scope: !148)
!148 = !DILexicalBlockFile(scope: !149, file: !3, discriminator: 1)
!149 = distinct !DILexicalBlock(scope: !128, file: !3, line: 152, column: 5)
!150 = !DILocation(line: 153, column: 32, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 153, column: 13)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 152, column: 52)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 152, column: 5)
!154 = !{!155, !156, i64 0}
!155 = !{!"", !156, i64 0, !156, i64 2, !156, i64 2}
!156 = !{!"short", !121, i64 0}
!157 = !DILocation(line: 153, column: 25, scope: !151)
!158 = !DILocation(line: 153, column: 13, scope: !152)
!159 = !DILocation(line: 154, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 154, column: 17)
!161 = distinct !DILexicalBlock(scope: !151, file: !3, line: 153, column: 40)
!162 = !DILocation(line: 154, column: 17, scope: !161)
!163 = !DILocation(line: 155, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 154, column: 22)
!165 = !DILocation(line: 155, column: 25, scope: !164)
!166 = !DILocation(line: 156, column: 13, scope: !164)
!167 = !DILocation(line: 157, column: 28, scope: !168)
!168 = distinct !DILexicalBlock(scope: !160, file: !3, line: 156, column: 20)
!169 = !DILocation(line: 158, column: 21, scope: !168)
!170 = !DILocation(line: 158, column: 25, scope: !168)
!171 = !DILocation(line: 163, column: 11, scope: !152)
!172 = !DILocation(line: 152, column: 48, scope: !173)
!173 = !DILexicalBlockFile(scope: !153, file: !3, discriminator: 2)
!174 = !DILocation(line: 152, column: 23, scope: !175)
!175 = !DILexicalBlockFile(scope: !153, file: !3, discriminator: 1)
!176 = distinct !{!176, !177, !178}
!177 = !DILocation(line: 152, column: 5, scope: !149)
!178 = !DILocation(line: 164, column: 5, scope: !149)
!179 = !DILocation(line: 167, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !128, file: !3, line: 167, column: 9)
!181 = !DILocation(line: 167, column: 9, scope: !128)
!182 = !DILocation(line: 171, column: 36, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 171, column: 17)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 170, column: 56)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 170, column: 9)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 170, column: 9)
!187 = distinct !DILexicalBlock(scope: !180, file: !3, line: 167, column: 14)
!188 = !DILocation(line: 171, column: 29, scope: !183)
!189 = !DILocation(line: 171, column: 17, scope: !184)
!190 = !DILocation(line: 172, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !3, line: 171, column: 44)
!192 = !DILocation(line: 173, column: 21, scope: !191)
!193 = !DILocation(line: 173, column: 25, scope: !191)
!194 = !DILocation(line: 174, column: 17, scope: !191)
!195 = !DILocation(line: 176, column: 15, scope: !184)
!196 = !DILocation(line: 170, column: 52, scope: !197)
!197 = !DILexicalBlockFile(scope: !185, file: !3, discriminator: 2)
!198 = !DILocation(line: 170, column: 27, scope: !199)
!199 = !DILexicalBlockFile(scope: !185, file: !3, discriminator: 1)
!200 = !DILocation(line: 170, column: 9, scope: !201)
!201 = !DILexicalBlockFile(scope: !186, file: !3, discriminator: 1)
!202 = distinct !{!202, !203, !204}
!203 = !DILocation(line: 170, column: 9, scope: !186)
!204 = !DILocation(line: 177, column: 9, scope: !186)
!205 = !DILocation(line: 179, column: 1, scope: !206)
!206 = !DILexicalBlockFile(scope: !128, file: !3, discriminator: 2)
!207 = distinct !DISubprogram(name: "att_get_ccc_config", scope: !3, file: !3, line: 182, type: !208, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !214)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !30}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !211, line: 26, baseType: !212)
!211 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !213, line: 43, baseType: !32)
!213 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!214 = !{!215, !216, !217}
!215 = !DILocalVariable(name: "handle", arg: 1, scope: !207, file: !3, line: 182, type: !30)
!216 = !DILocalVariable(name: "cnt", scope: !207, file: !3, line: 184, type: !109)
!217 = !DILocalVariable(name: "pt", scope: !207, file: !3, line: 190, type: !137)
!218 = !DILocation(line: 182, column: 38, scope: !207)
!219 = !DILocation(line: 186, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !207, file: !3, line: 186, column: 9)
!221 = !DILocation(line: 186, column: 9, scope: !207)
!222 = !DILocation(line: 190, column: 28, scope: !207)
!223 = !DILocation(line: 190, column: 23, scope: !207)
!224 = !DILocation(line: 184, column: 9, scope: !207)
!225 = !DILocation(line: 191, column: 5, scope: !226)
!226 = !DILexicalBlockFile(scope: !227, file: !3, discriminator: 1)
!227 = distinct !DILexicalBlock(scope: !207, file: !3, line: 191, column: 5)
!228 = !DILocation(line: 192, column: 27, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 192, column: 13)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 191, column: 52)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 191, column: 5)
!232 = !DILocation(line: 192, column: 20, scope: !229)
!233 = !DILocation(line: 192, column: 13, scope: !230)
!234 = !DILocation(line: 193, column: 35, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !3, line: 192, column: 35)
!236 = !DILocation(line: 193, column: 13, scope: !235)
!237 = !DILocation(line: 195, column: 11, scope: !230)
!238 = !DILocation(line: 191, column: 48, scope: !239)
!239 = !DILexicalBlockFile(scope: !231, file: !3, discriminator: 2)
!240 = !DILocation(line: 191, column: 23, scope: !241)
!241 = !DILexicalBlockFile(scope: !231, file: !3, discriminator: 1)
!242 = distinct !{!242, !243, !244}
!243 = !DILocation(line: 191, column: 5, scope: !227)
!244 = !DILocation(line: 196, column: 5, scope: !227)
!245 = !DILocation(line: 198, column: 1, scope: !246)
!246 = !DILexicalBlockFile(scope: !207, file: !3, discriminator: 1)
!247 = distinct !DISubprogram(name: "multi_att_ccc_config_init", scope: !3, file: !3, line: 202, type: !114, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!248 = !DILocation(line: 137, column: 5, scope: !118, inlinedAt: !249)
!249 = distinct !DILocation(line: 204, column: 5, scope: !247)
!250 = !DILocation(line: 137, column: 5, scope: !113, inlinedAt: !249)
!251 = !DILocation(line: 138, column: 5, scope: !113, inlinedAt: !249)
!252 = !DILocation(line: 139, column: 1, scope: !113, inlinedAt: !249)
!253 = !DILocation(line: 205, column: 1, scope: !247)
!254 = distinct !DISubprogram(name: "multi_att_set_ccc_config", scope: !3, file: !3, line: 208, type: !255, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !30, !30, !30}
!257 = !{!258, !259, !260, !261, !262, !263}
!258 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !254, file: !3, line: 208, type: !30)
!259 = !DILocalVariable(name: "att_handle", arg: 2, scope: !254, file: !3, line: 208, type: !30)
!260 = !DILocalVariable(name: "cfg", arg: 3, scope: !254, file: !3, line: 208, type: !30)
!261 = !DILocalVariable(name: "cnt", scope: !254, file: !3, line: 210, type: !109)
!262 = !DILocalVariable(name: "find_handle", scope: !254, file: !3, line: 211, type: !30)
!263 = !DILocalVariable(name: "pt", scope: !254, file: !3, line: 212, type: !137)
!264 = !DILocation(line: 208, column: 40, scope: !254)
!265 = !DILocation(line: 208, column: 62, scope: !254)
!266 = !DILocation(line: 208, column: 83, scope: !254)
!267 = !DILocation(line: 211, column: 14, scope: !254)
!268 = !DILocation(line: 214, column: 5, scope: !269)
!269 = distinct !DILexicalBlock(scope: !254, file: !3, line: 214, column: 5)
!270 = !DILocation(line: 214, column: 5, scope: !254)
!271 = !DILocation(line: 217, column: 10, scope: !254)
!272 = !DILocation(line: 212, column: 23, scope: !254)
!273 = !DILocation(line: 210, column: 9, scope: !254)
!274 = !DILocation(line: 218, column: 5, scope: !275)
!275 = !DILexicalBlockFile(scope: !276, file: !3, discriminator: 1)
!276 = distinct !DILexicalBlock(scope: !254, file: !3, line: 218, column: 5)
!277 = !DILocation(line: 219, column: 32, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 219, column: 13)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 218, column: 52)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 218, column: 5)
!281 = !DILocation(line: 219, column: 25, scope: !278)
!282 = !DILocation(line: 219, column: 44, scope: !278)
!283 = !DILocation(line: 219, column: 66, scope: !284)
!284 = !DILexicalBlockFile(scope: !278, file: !3, discriminator: 1)
!285 = !DILocation(line: 219, column: 59, scope: !284)
!286 = !DILocation(line: 219, column: 13, scope: !287)
!287 = !DILexicalBlockFile(scope: !279, file: !3, discriminator: 1)
!288 = !DILocation(line: 220, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 220, column: 17)
!290 = distinct !DILexicalBlock(scope: !278, file: !3, line: 219, column: 74)
!291 = !DILocation(line: 220, column: 17, scope: !290)
!292 = !DILocation(line: 222, column: 25, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 220, column: 22)
!294 = !DILocation(line: 223, column: 13, scope: !293)
!295 = !DILocation(line: 225, column: 28, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !3, line: 223, column: 20)
!297 = !DILocation(line: 230, column: 13, scope: !290)
!298 = !DILocation(line: 232, column: 11, scope: !279)
!299 = !DILocation(line: 218, column: 48, scope: !300)
!300 = !DILexicalBlockFile(scope: !280, file: !3, discriminator: 2)
!301 = !DILocation(line: 218, column: 23, scope: !302)
!302 = !DILexicalBlockFile(scope: !280, file: !3, discriminator: 1)
!303 = distinct !{!303, !304, !305}
!304 = !DILocation(line: 218, column: 5, scope: !276)
!305 = !DILocation(line: 233, column: 5, scope: !276)
!306 = !DILocation(line: 236, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !254, file: !3, line: 236, column: 9)
!308 = !DILocation(line: 236, column: 9, scope: !254)
!309 = !DILocation(line: 240, column: 36, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 240, column: 17)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 239, column: 56)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 239, column: 9)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 239, column: 9)
!314 = distinct !DILexicalBlock(scope: !307, file: !3, line: 236, column: 14)
!315 = !DILocation(line: 240, column: 29, scope: !310)
!316 = !DILocation(line: 240, column: 17, scope: !311)
!317 = !DILocation(line: 241, column: 33, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !3, line: 240, column: 49)
!319 = !DILocation(line: 242, column: 21, scope: !318)
!320 = !DILocation(line: 242, column: 28, scope: !318)
!321 = !DILocation(line: 243, column: 25, scope: !318)
!322 = !DILocation(line: 244, column: 17, scope: !318)
!323 = !DILocation(line: 246, column: 15, scope: !311)
!324 = !DILocation(line: 239, column: 52, scope: !325)
!325 = !DILexicalBlockFile(scope: !312, file: !3, discriminator: 2)
!326 = !DILocation(line: 239, column: 27, scope: !327)
!327 = !DILexicalBlockFile(scope: !312, file: !3, discriminator: 1)
!328 = !DILocation(line: 239, column: 9, scope: !329)
!329 = !DILexicalBlockFile(scope: !313, file: !3, discriminator: 1)
!330 = distinct !{!330, !331, !332}
!331 = !DILocation(line: 239, column: 9, scope: !313)
!332 = !DILocation(line: 247, column: 9, scope: !313)
!333 = !DILocation(line: 249, column: 1, scope: !334)
!334 = !DILexicalBlockFile(scope: !254, file: !3, discriminator: 2)
!335 = distinct !DISubprogram(name: "multi_att_get_ccc_config", scope: !3, file: !3, line: 252, type: !336, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!210, !30, !30}
!338 = !{!339, !340, !341, !342}
!339 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !335, file: !3, line: 252, type: !30)
!340 = !DILocalVariable(name: "att_handle", arg: 2, scope: !335, file: !3, line: 252, type: !30)
!341 = !DILocalVariable(name: "cnt", scope: !335, file: !3, line: 254, type: !109)
!342 = !DILocalVariable(name: "pt", scope: !335, file: !3, line: 260, type: !137)
!343 = !DILocation(line: 252, column: 44, scope: !335)
!344 = !DILocation(line: 252, column: 66, scope: !335)
!345 = !DILocation(line: 256, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !335, file: !3, line: 256, column: 9)
!347 = !DILocation(line: 256, column: 9, scope: !335)
!348 = !DILocation(line: 260, column: 28, scope: !335)
!349 = !DILocation(line: 260, column: 23, scope: !335)
!350 = !DILocation(line: 254, column: 9, scope: !335)
!351 = !DILocation(line: 261, column: 5, scope: !352)
!352 = !DILexicalBlockFile(scope: !353, file: !3, discriminator: 1)
!353 = distinct !DILexicalBlock(scope: !335, file: !3, line: 261, column: 5)
!354 = !DILocation(line: 262, column: 32, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 262, column: 13)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 261, column: 52)
!357 = distinct !DILexicalBlock(scope: !353, file: !3, line: 261, column: 5)
!358 = !DILocation(line: 262, column: 25, scope: !355)
!359 = !DILocation(line: 262, column: 44, scope: !355)
!360 = !DILocation(line: 262, column: 65, scope: !361)
!361 = !DILexicalBlockFile(scope: !355, file: !3, discriminator: 1)
!362 = !DILocation(line: 262, column: 58, scope: !361)
!363 = !DILocation(line: 262, column: 13, scope: !364)
!364 = !DILexicalBlockFile(scope: !356, file: !3, discriminator: 1)
!365 = !DILocation(line: 263, column: 35, scope: !366)
!366 = distinct !DILexicalBlock(scope: !355, file: !3, line: 262, column: 73)
!367 = !DILocation(line: 263, column: 13, scope: !366)
!368 = !DILocation(line: 265, column: 11, scope: !356)
!369 = !DILocation(line: 261, column: 48, scope: !370)
!370 = !DILexicalBlockFile(scope: !357, file: !3, discriminator: 2)
!371 = !DILocation(line: 261, column: 23, scope: !372)
!372 = !DILexicalBlockFile(scope: !357, file: !3, discriminator: 1)
!373 = distinct !{!373, !374, !375}
!374 = !DILocation(line: 261, column: 5, scope: !353)
!375 = !DILocation(line: 266, column: 5, scope: !353)
!376 = !DILocation(line: 268, column: 1, scope: !377)
!377 = !DILexicalBlockFile(scope: !335, file: !3, discriminator: 1)
!378 = distinct !DISubprogram(name: "multi_att_clear_ccc_config", scope: !3, file: !3, line: 270, type: !379, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!109, !30}
!381 = !{!382, !383, !384}
!382 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !378, file: !3, line: 270, type: !30)
!383 = !DILocalVariable(name: "cnt", scope: !378, file: !3, line: 272, type: !109)
!384 = !DILocalVariable(name: "pt", scope: !378, file: !3, line: 278, type: !137)
!385 = !DILocation(line: 270, column: 41, scope: !378)
!386 = !DILocation(line: 274, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !3, line: 274, column: 9)
!388 = !DILocation(line: 274, column: 9, scope: !378)
!389 = !DILocation(line: 278, column: 28, scope: !378)
!390 = !DILocation(line: 278, column: 23, scope: !378)
!391 = !DILocation(line: 272, column: 9, scope: !378)
!392 = !DILocation(line: 279, column: 5, scope: !393)
!393 = !DILexicalBlockFile(scope: !394, file: !3, discriminator: 1)
!394 = distinct !DILexicalBlock(scope: !378, file: !3, line: 279, column: 5)
!395 = !DILocation(line: 280, column: 32, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 280, column: 13)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 279, column: 52)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 279, column: 5)
!399 = !DILocation(line: 280, column: 25, scope: !396)
!400 = !DILocation(line: 280, column: 13, scope: !397)
!401 = !DILocation(line: 282, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !396, file: !3, line: 280, column: 45)
!403 = !DILocation(line: 282, column: 24, scope: !402)
!404 = !DILocation(line: 283, column: 21, scope: !402)
!405 = !DILocation(line: 284, column: 9, scope: !402)
!406 = !DILocation(line: 285, column: 11, scope: !397)
!407 = !DILocation(line: 279, column: 48, scope: !408)
!408 = !DILexicalBlockFile(scope: !398, file: !3, discriminator: 2)
!409 = !DILocation(line: 279, column: 23, scope: !410)
!410 = !DILexicalBlockFile(scope: !398, file: !3, discriminator: 1)
!411 = distinct !{!411, !412, !413}
!412 = !DILocation(line: 279, column: 5, scope: !394)
!413 = !DILocation(line: 286, column: 5, scope: !394)
!414 = !DILocation(line: 288, column: 1, scope: !415)
!415 = !DILexicalBlockFile(scope: !378, file: !3, discriminator: 1)
!416 = distinct !DISubprogram(name: "att_request_can_send_now_event", scope: !3, file: !3, line: 295, type: !114, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !417)
!417 = !{!418}
!418 = !DILocalVariable(name: "tmp_handle", scope: !416, file: !3, line: 299, type: !92)
!419 = !DILocation(line: 297, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !3, line: 297, column: 5)
!421 = !DILocation(line: 297, column: 5, scope: !416)
!422 = !DILocation(line: 126, column: 37, scope: !423, inlinedAt: !434)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 126, column: 13)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 125, column: 39)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 125, column: 5)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 125, column: 5)
!427 = distinct !DISubprogram(name: "just_att_handle_connected", scope: !3, file: !3, line: 123, type: !428, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!92, !100, !100}
!430 = !{!431, !432, !433}
!431 = !DILocalVariable(name: "start", arg: 1, scope: !427, file: !3, line: 123, type: !100)
!432 = !DILocalVariable(name: "end", arg: 2, scope: !427, file: !3, line: 123, type: !100)
!433 = !DILocalVariable(name: "i", scope: !426, file: !3, line: 125, type: !109)
!434 = distinct !DILocation(line: 299, column: 22, scope: !416)
!435 = !DILocation(line: 125, column: 14, scope: !426, inlinedAt: !434)
!436 = !DILocation(line: 125, column: 27, scope: !437, inlinedAt: !434)
!437 = !DILexicalBlockFile(scope: !425, file: !3, discriminator: 1)
!438 = !DILocation(line: 125, column: 5, scope: !439, inlinedAt: !434)
!439 = !DILexicalBlockFile(scope: !426, file: !3, discriminator: 1)
!440 = distinct !{!440, !441, !442}
!441 = !DILocation(line: 125, column: 5, scope: !426)
!442 = !DILocation(line: 129, column: 5, scope: !426)
!443 = !DILocation(line: 126, column: 13, scope: !423, inlinedAt: !434)
!444 = !DILocation(line: 125, column: 35, scope: !445, inlinedAt: !434)
!445 = !DILexicalBlockFile(scope: !425, file: !3, discriminator: 3)
!446 = !DILocation(line: 126, column: 13, scope: !424, inlinedAt: !434)
!447 = !DILocation(line: 301, column: 17, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 300, column: 21)
!449 = distinct !DILexicalBlock(scope: !416, file: !3, line: 300, column: 9)
!450 = !DILocation(line: 301, column: 9, scope: !448)
!451 = !DILocation(line: 304, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 301, column: 38)
!453 = !DILocation(line: 305, column: 13, scope: !452)
!454 = !DILocation(line: 308, column: 13, scope: !452)
!455 = !DILocation(line: 309, column: 13, scope: !452)
!456 = !DILocation(line: 312, column: 13, scope: !452)
!457 = !DILocation(line: 313, column: 13, scope: !452)
!458 = !DILocation(line: 314, column: 13, scope: !452)
!459 = !DILocation(line: 321, column: 1, scope: !460)
!460 = !DILexicalBlockFile(scope: !416, file: !3, discriminator: 1)
!461 = distinct !DISubprogram(name: "user_data_cbuf_is_write_able", scope: !3, file: !3, line: 324, type: !462, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !465)
!462 = !DISubroutineType(types: !463)
!463 = !{!55, !92, !464}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 48, baseType: !56)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473}
!466 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !461, file: !3, line: 324, type: !92)
!467 = !DILocalVariable(name: "len", arg: 2, scope: !461, file: !3, line: 324, type: !464)
!468 = !DILocalVariable(name: "buf_space", scope: !461, file: !3, line: 326, type: !464)
!469 = !DILocalVariable(name: "w_len", scope: !461, file: !3, line: 326, type: !464)
!470 = !DILocalVariable(name: "mtu_size", scope: !461, file: !3, line: 327, type: !92)
!471 = !DILocalVariable(name: "cur_index", scope: !461, file: !3, line: 333, type: !100)
!472 = !DILocalVariable(name: "head_size", scope: !461, file: !3, line: 339, type: !92)
!473 = !DILocalVariable(name: "pack_size", scope: !461, file: !3, line: 340, type: !92)
!474 = !DILocation(line: 324, column: 38, scope: !461)
!475 = !DILocation(line: 324, column: 55, scope: !461)
!476 = !DILocation(line: 327, column: 9, scope: !461)
!477 = !DILocation(line: 329, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !461, file: !3, line: 329, column: 9)
!479 = !DILocation(line: 329, column: 9, scope: !461)
!480 = !DILocation(line: 116, column: 52, scope: !481, inlinedAt: !491)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 116, column: 13)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 115, column: 47)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 115, column: 5)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 115, column: 5)
!485 = distinct !DISubprogram(name: "get_att_handle_index", scope: !3, file: !3, line: 113, type: !486, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!100, !92}
!488 = !{!489, !490}
!489 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !485, file: !3, line: 113, type: !92)
!490 = !DILocalVariable(name: "i", scope: !484, file: !3, line: 115, type: !109)
!491 = distinct !DILocation(line: 333, column: 20, scope: !461)
!492 = !DILocation(line: 116, column: 25, scope: !481, inlinedAt: !491)
!493 = !DILocation(line: 116, column: 13, scope: !482, inlinedAt: !491)
!494 = !DILocation(line: 115, column: 43, scope: !495, inlinedAt: !491)
!495 = !DILexicalBlockFile(scope: !483, file: !3, discriminator: 3)
!496 = !DILocation(line: 115, column: 14, scope: !484, inlinedAt: !491)
!497 = !DILocation(line: 115, column: 23, scope: !498, inlinedAt: !491)
!498 = !DILexicalBlockFile(scope: !483, file: !3, discriminator: 1)
!499 = !DILocation(line: 115, column: 5, scope: !500, inlinedAt: !491)
!500 = !DILexicalBlockFile(scope: !484, file: !3, discriminator: 1)
!501 = distinct !{!501, !502, !503}
!502 = !DILocation(line: 115, column: 5, scope: !484)
!503 = !DILocation(line: 119, column: 5, scope: !484)
!504 = !DILocation(line: 117, column: 20, scope: !505, inlinedAt: !491)
!505 = distinct !DILexicalBlock(scope: !481, file: !3, line: 116, column: 65)
!506 = !DILocation(line: 333, column: 8, scope: !461)
!507 = !DILocation(line: 335, column: 19, scope: !508)
!508 = distinct !DILexicalBlock(scope: !461, file: !3, line: 335, column: 9)
!509 = !DILocation(line: 335, column: 9, scope: !461)
!510 = !DILocation(line: 335, column: 9, scope: !508)
!511 = !DILocation(line: 336, column: 52, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !3, line: 335, column: 38)
!513 = !{!514, !156, i64 2}
!514 = !{!"", !156, i64 0, !156, i64 0, !156, i64 0, !156, i64 2}
!515 = !DILocation(line: 337, column: 5, scope: !512)
!516 = !DILocation(line: 339, column: 9, scope: !461)
!517 = !DILocation(line: 343, column: 5, scope: !461)
!518 = !DILocation(line: 344, column: 17, scope: !461)
!519 = !{!520, !521, i64 28}
!520 = !{!"_cbuffer", !120, i64 0, !120, i64 4, !120, i64 8, !120, i64 12, !120, i64 16, !521, i64 20, !521, i64 24, !521, i64 28, !522, i64 32}
!521 = !{!"int", !121, i64 0}
!522 = !{!"__spinlock", !521, i64 0}
!523 = !DILocation(line: 344, column: 59, scope: !461)
!524 = !DILocation(line: 344, column: 57, scope: !461)
!525 = !DILocation(line: 326, column: 9, scope: !461)
!526 = !DILocation(line: 345, column: 19, scope: !527)
!527 = distinct !DILexicalBlock(scope: !461, file: !3, line: 345, column: 9)
!528 = !DILocation(line: 345, column: 9, scope: !461)
!529 = !DILocation(line: 340, column: 46, scope: !461)
!530 = !DILocation(line: 347, column: 28, scope: !531)
!531 = !DILexicalBlockFile(scope: !532, file: !3, discriminator: 1)
!532 = distinct !DILexicalBlock(scope: !527, file: !3, line: 347, column: 16)
!533 = !DILocation(line: 347, column: 26, scope: !531)
!534 = !DILocation(line: 347, column: 16, scope: !535)
!535 = !DILexicalBlockFile(scope: !527, file: !3, discriminator: 1)
!536 = !DILocation(line: 348, column: 27, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !3, line: 347, column: 39)
!538 = !DILocation(line: 326, column: 20, scope: !461)
!539 = !DILocation(line: 349, column: 5, scope: !537)
!540 = !DILocation(line: 350, column: 28, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !3, line: 349, column: 12)
!542 = !DILocation(line: 350, column: 41, scope: !541)
!543 = !DILocation(line: 351, column: 31, scope: !541)
!544 = !DILocation(line: 352, column: 23, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 352, column: 13)
!546 = !DILocation(line: 352, column: 13, scope: !541)
!547 = !DILocation(line: 353, column: 33, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !3, line: 352, column: 36)
!549 = !DILocation(line: 353, column: 19, scope: !548)
!550 = !DILocation(line: 354, column: 9, scope: !548)
!551 = !DILocation(line: 356, column: 13, scope: !552)
!552 = distinct !DILexicalBlock(scope: !461, file: !3, line: 356, column: 9)
!553 = !DILocation(line: 356, column: 9, scope: !461)
!554 = !DILocation(line: 361, column: 5, scope: !461)
!555 = !DILocation(line: 363, column: 1, scope: !556)
!556 = !DILexicalBlockFile(scope: !461, file: !3, discriminator: 1)
!557 = distinct !DISubprogram(name: "user_data_att_send", scope: !3, file: !3, line: 383, type: !558, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!109, !92, !92, !99, !92, !100}
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!561 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !557, file: !3, line: 383, type: !92)
!562 = !DILocalVariable(name: "handle", arg: 2, scope: !557, file: !3, line: 383, type: !92)
!563 = !DILocalVariable(name: "data", arg: 3, scope: !557, file: !3, line: 383, type: !99)
!564 = !DILocalVariable(name: "len", arg: 4, scope: !557, file: !3, line: 383, type: !92)
!565 = !DILocalVariable(name: "send_type", arg: 5, scope: !557, file: !3, line: 383, type: !100)
!566 = !DILocalVariable(name: "wlen", scope: !557, file: !3, line: 385, type: !92)
!567 = !DILocalVariable(name: "ret_val", scope: !557, file: !3, line: 386, type: !464)
!568 = !DILocalVariable(name: "send_head", scope: !557, file: !3, line: 387, type: !67)
!569 = !DILocalVariable(name: "mtu_size", scope: !557, file: !3, line: 414, type: !92)
!570 = !DILocalVariable(name: "cur_index", scope: !557, file: !3, line: 415, type: !100)
!571 = !DILocation(line: 383, column: 28, scope: !557)
!572 = !DILocation(line: 383, column: 45, scope: !557)
!573 = !DILocation(line: 383, column: 57, scope: !557)
!574 = !DILocation(line: 383, column: 67, scope: !557)
!575 = !DILocation(line: 383, column: 75, scope: !557)
!576 = !DILocation(line: 386, column: 9, scope: !557)
!577 = !DILocation(line: 387, column: 5, scope: !557)
!578 = !DILocation(line: 389, column: 9, scope: !579)
!579 = distinct !DILexicalBlock(scope: !557, file: !3, line: 389, column: 9)
!580 = !DILocation(line: 389, column: 9, scope: !557)
!581 = !DILocation(line: 393, column: 15, scope: !557)
!582 = !DILocation(line: 393, column: 27, scope: !557)
!583 = !{!584, !156, i64 0}
!584 = !{!"", !156, i64 0, !156, i64 2, !156, i64 4, !156, i64 5}
!585 = !DILocation(line: 394, column: 15, scope: !557)
!586 = !DILocation(line: 394, column: 27, scope: !557)
!587 = !{!584, !156, i64 2}
!588 = !DILocation(line: 396, column: 10, scope: !589)
!589 = distinct !DILexicalBlock(scope: !557, file: !3, line: 396, column: 9)
!590 = !DILocation(line: 396, column: 9, scope: !557)
!591 = !DILocation(line: 397, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !3, line: 396, column: 15)
!593 = !DILocation(line: 398, column: 9, scope: !592)
!594 = !DILocation(line: 402, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !557, file: !3, line: 402, column: 9)
!596 = !DILocation(line: 402, column: 19, scope: !595)
!597 = !DILocation(line: 402, column: 9, scope: !557)
!598 = !DILocation(line: 403, column: 57, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !3, line: 402, column: 44)
!600 = !DILocation(line: 403, column: 31, scope: !599)
!601 = !DILocation(line: 403, column: 19, scope: !599)
!602 = !DILocation(line: 403, column: 29, scope: !599)
!603 = !DILocation(line: 404, column: 24, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !3, line: 404, column: 13)
!605 = !DILocation(line: 404, column: 14, scope: !604)
!606 = !DILocation(line: 404, column: 13, scope: !599)
!607 = !DILocation(line: 408, column: 19, scope: !608)
!608 = distinct !DILexicalBlock(scope: !595, file: !3, line: 407, column: 12)
!609 = !DILocation(line: 408, column: 29, scope: !608)
!610 = !DILocation(line: 411, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !557, file: !3, line: 411, column: 5)
!612 = !{!121, !121, i64 0}
!613 = !DILocation(line: 411, column: 5, scope: !557)
!614 = !DILocation(line: 411, column: 5, scope: !615)
!615 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 1)
!616 = !DILocation(line: 417, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 416, column: 38)
!618 = distinct !DILexicalBlock(scope: !557, file: !3, line: 416, column: 9)
!619 = !DILocation(line: 414, column: 9, scope: !557)
!620 = !DILocation(line: 113, column: 36, scope: !485, inlinedAt: !621)
!621 = distinct !DILocation(line: 415, column: 20, scope: !557)
!622 = !DILocation(line: 115, column: 14, scope: !484, inlinedAt: !621)
!623 = !DILocation(line: 115, column: 5, scope: !500, inlinedAt: !621)
!624 = !DILocation(line: 116, column: 52, scope: !481, inlinedAt: !621)
!625 = !DILocation(line: 116, column: 25, scope: !481, inlinedAt: !621)
!626 = !DILocation(line: 116, column: 13, scope: !482, inlinedAt: !621)
!627 = !DILocation(line: 115, column: 43, scope: !495, inlinedAt: !621)
!628 = !DILocation(line: 115, column: 23, scope: !498, inlinedAt: !621)
!629 = !DILocation(line: 117, column: 20, scope: !505, inlinedAt: !621)
!630 = !DILocation(line: 415, column: 8, scope: !557)
!631 = !DILocation(line: 416, column: 19, scope: !618)
!632 = !DILocation(line: 416, column: 9, scope: !557)
!633 = !DILocation(line: 416, column: 9, scope: !618)
!634 = !DILocation(line: 417, column: 52, scope: !617)
!635 = !DILocation(line: 418, column: 5, scope: !617)
!636 = !DILocation(line: 420, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !557, file: !3, line: 420, column: 5)
!638 = !DILocation(line: 420, column: 5, scope: !557)
!639 = !DILocation(line: 420, column: 5, scope: !640)
!640 = !DILexicalBlockFile(scope: !637, file: !3, discriminator: 1)
!641 = !DILocation(line: 423, column: 5, scope: !557)
!642 = !DILocation(line: 424, column: 51, scope: !643)
!643 = distinct !DILexicalBlock(scope: !557, file: !3, line: 424, column: 9)
!644 = !DILocation(line: 424, column: 9, scope: !643)
!645 = !DILocation(line: 424, column: 9, scope: !557)
!646 = !DILocation(line: 425, column: 9, scope: !647)
!647 = !DILexicalBlockFile(scope: !648, file: !3, discriminator: 1)
!648 = distinct !DILexicalBlock(scope: !643, file: !3, line: 424, column: 57)
!649 = !DILocation(line: 431, column: 32, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 425, column: 25)
!651 = !DILocation(line: 426, column: 21, scope: !652)
!652 = distinct !DILexicalBlock(scope: !650, file: !3, line: 426, column: 17)
!653 = !DILocation(line: 428, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !652, file: !3, line: 426, column: 33)
!655 = !DILocation(line: 385, column: 9, scope: !557)
!656 = !DILocation(line: 387, column: 22, scope: !557)
!657 = !DILocalVariable(name: "head", arg: 1, scope: !658, file: !3, line: 367, type: !661)
!658 = distinct !DISubprogram(name: "user_data_att_send_sub", scope: !3, file: !3, line: 367, type: !659, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !662)
!659 = !DISubroutineType(types: !660)
!660 = !{!464, !661, !99}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!662 = !{!657, !663, !664, !665}
!663 = !DILocalVariable(name: "data", arg: 2, scope: !658, file: !3, line: 367, type: !99)
!664 = !DILocalVariable(name: "wlen", scope: !658, file: !3, line: 369, type: !92)
!665 = !DILocalVariable(name: "head_size", scope: !658, file: !3, line: 370, type: !92)
!666 = !DILocation(line: 367, column: 60, scope: !658, inlinedAt: !667)
!667 = distinct !DILocation(line: 432, column: 23, scope: !650)
!668 = !DILocation(line: 367, column: 70, scope: !658, inlinedAt: !667)
!669 = !DILocation(line: 370, column: 9, scope: !658, inlinedAt: !667)
!670 = !DILocation(line: 372, column: 24, scope: !658, inlinedAt: !667)
!671 = !DILocation(line: 372, column: 32, scope: !658, inlinedAt: !667)
!672 = !DILocation(line: 372, column: 12, scope: !658, inlinedAt: !667)
!673 = !DILocation(line: 373, column: 25, scope: !658, inlinedAt: !667)
!674 = !DILocation(line: 373, column: 33, scope: !658, inlinedAt: !667)
!675 = !DILocation(line: 373, column: 61, scope: !658, inlinedAt: !667)
!676 = !DILocation(line: 373, column: 55, scope: !658, inlinedAt: !667)
!677 = !DILocation(line: 373, column: 13, scope: !658, inlinedAt: !667)
!678 = !DILocation(line: 373, column: 10, scope: !658, inlinedAt: !667)
!679 = !DILocation(line: 375, column: 23, scope: !680, inlinedAt: !667)
!680 = distinct !DILexicalBlock(scope: !658, file: !3, line: 375, column: 9)
!681 = !DILocation(line: 375, column: 32, scope: !680, inlinedAt: !667)
!682 = !DILocation(line: 375, column: 14, scope: !680, inlinedAt: !667)
!683 = !DILocation(line: 433, column: 17, scope: !650)
!684 = !DILocation(line: 425, column: 16, scope: !647)
!685 = !DILocation(line: 434, column: 17, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 433, column: 26)
!687 = distinct !DILexicalBlock(scope: !650, file: !3, line: 433, column: 17)
!688 = !DILocation(line: 436, column: 17, scope: !686)
!689 = !DILocation(line: 437, column: 17, scope: !686)
!690 = !DILocation(line: 439, column: 17, scope: !650)
!691 = !DILocation(line: 440, column: 18, scope: !650)
!692 = !DILocation(line: 425, column: 20, scope: !647)
!693 = distinct !{!693, !694, !695}
!694 = !DILocation(line: 425, column: 9, scope: !648)
!695 = !DILocation(line: 441, column: 9, scope: !648)
!696 = !DILocation(line: 446, column: 5, scope: !557)
!697 = !DILocation(line: 447, column: 5, scope: !557)
!698 = !DILocation(line: 448, column: 1, scope: !557)
!699 = !DILocation(line: 448, column: 1, scope: !700)
!700 = !DILexicalBlockFile(scope: !557, file: !3, discriminator: 1)
!701 = distinct !DISubprogram(name: "check_le_pakcet_sent_finish_flag", scope: !3, file: !3, line: 527, type: !702, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!100}
!704 = !{!705}
!705 = !DILocalVariable(name: "tmp_handle", scope: !701, file: !3, line: 530, type: !92)
!706 = !DILocation(line: 123, column: 41, scope: !427, inlinedAt: !707)
!707 = distinct !DILocation(line: 530, column: 22, scope: !701)
!708 = !DILocation(line: 123, column: 51, scope: !427, inlinedAt: !707)
!709 = !DILocation(line: 125, column: 14, scope: !426, inlinedAt: !707)
!710 = !DILocation(line: 125, column: 5, scope: !439, inlinedAt: !707)
!711 = !DILocation(line: 125, column: 27, scope: !437, inlinedAt: !707)
!712 = !DILocation(line: 126, column: 37, scope: !423, inlinedAt: !707)
!713 = !DILocation(line: 126, column: 13, scope: !423, inlinedAt: !707)
!714 = !DILocation(line: 125, column: 35, scope: !445, inlinedAt: !707)
!715 = !DILocation(line: 126, column: 13, scope: !424, inlinedAt: !707)
!716 = !DILocation(line: 530, column: 9, scope: !701)
!717 = !DILocation(line: 536, column: 14, scope: !718)
!718 = distinct !DILexicalBlock(scope: !701, file: !3, line: 536, column: 9)
!719 = !DILocation(line: 536, column: 11, scope: !718)
!720 = !DILocation(line: 537, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 536, column: 53)
!722 = !DILocation(line: 541, column: 1, scope: !701)
!723 = distinct !DISubprogram(name: "check_le_conn_disconnet_flag", scope: !3, file: !3, line: 544, type: !702, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !724)
!724 = !{!725}
!725 = !DILocalVariable(name: "tmp_handle", scope: !723, file: !3, line: 550, type: !92)
!726 = !DILocation(line: 546, column: 10, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !3, line: 546, column: 9)
!728 = !DILocation(line: 546, column: 9, scope: !723)
!729 = !DILocation(line: 126, column: 37, scope: !423, inlinedAt: !730)
!730 = distinct !DILocation(line: 550, column: 22, scope: !723)
!731 = !DILocation(line: 125, column: 14, scope: !426, inlinedAt: !730)
!732 = !DILocation(line: 125, column: 27, scope: !437, inlinedAt: !730)
!733 = !DILocation(line: 125, column: 5, scope: !439, inlinedAt: !730)
!734 = !DILocation(line: 126, column: 13, scope: !423, inlinedAt: !730)
!735 = !DILocation(line: 125, column: 35, scope: !445, inlinedAt: !730)
!736 = !DILocation(line: 126, column: 13, scope: !424, inlinedAt: !730)
!737 = !DILocation(line: 550, column: 9, scope: !723)
!738 = !DILocation(line: 556, column: 14, scope: !739)
!739 = distinct !DILexicalBlock(scope: !723, file: !3, line: 556, column: 9)
!740 = !DILocation(line: 556, column: 11, scope: !739)
!741 = !DILocation(line: 557, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !3, line: 556, column: 51)
!743 = !DILocation(line: 561, column: 1, scope: !744)
!744 = !DILexicalBlockFile(scope: !723, file: !3, discriminator: 1)
!745 = distinct !DISubprogram(name: "att_send_schedule", scope: !3, file: !3, line: 601, type: !114, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !746)
!746 = !{!747}
!747 = !DILocalVariable(name: "can_send_flag", scope: !745, file: !3, line: 603, type: !464)
!748 = !DILocation(line: 603, column: 9, scope: !745)
!749 = !DILocation(line: 605, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !3, line: 605, column: 5)
!751 = !DILocation(line: 605, column: 5, scope: !745)
!752 = !DILocation(line: 608, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !745, file: !3, line: 608, column: 9)
!754 = !{!755, !121, i64 178}
!755 = !{!"", !520, i64 0, !584, i64 36, !121, i64 42, !121, i64 138, !120, i64 172, !156, i64 176, !121, i64 178, !121, i64 179}
!756 = !DILocation(line: 608, column: 9, scope: !753)
!757 = !DILocation(line: 608, column: 9, scope: !745)
!758 = !DILocation(line: 609, column: 56, scope: !759)
!759 = distinct !DILexicalBlock(scope: !753, file: !3, line: 608, column: 28)
!760 = !{!755, !156, i64 36}
!761 = !DILocation(line: 609, column: 93, scope: !759)
!762 = !DILocation(line: 609, column: 69, scope: !759)
!763 = !DILocation(line: 609, column: 128, scope: !759)
!764 = !{!755, !156, i64 38}
!765 = !DILocation(line: 609, column: 149, scope: !759)
!766 = !{!755, !120, i64 172}
!767 = !DILocation(line: 609, column: 188, scope: !759)
!768 = !DILocation(line: 609, column: 9, scope: !759)
!769 = !DILocation(line: 611, column: 5, scope: !759)
!770 = !DILocation(line: 613, column: 29, scope: !771)
!771 = distinct !DILexicalBlock(scope: !745, file: !3, line: 613, column: 9)
!772 = !DILocation(line: 613, column: 37, scope: !771)
!773 = !DILocation(line: 613, column: 9, scope: !771)
!774 = !DILocation(line: 613, column: 9, scope: !745)
!775 = !DILocalVariable(name: "ret_val", scope: !776, file: !3, line: 567, type: !109)
!776 = distinct !DISubprogram(name: "user_att_send_streamer", scope: !3, file: !3, line: 565, type: !777, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{!109}
!779 = !{!775, !780}
!780 = !DILocalVariable(name: "user_head", scope: !776, file: !3, line: 568, type: !67)
!781 = !DILocation(line: 567, column: 9, scope: !776, inlinedAt: !782)
!782 = distinct !DILocation(line: 614, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !771, file: !3, line: 613, column: 54)
!784 = !DILocation(line: 568, column: 5, scope: !776, inlinedAt: !782)
!785 = !DILocation(line: 570, column: 5, scope: !776, inlinedAt: !782)
!786 = !DILocation(line: 572, column: 13, scope: !787, inlinedAt: !782)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 572, column: 13)
!788 = distinct !DILexicalBlock(scope: !776, file: !3, line: 570, column: 15)
!789 = !DILocation(line: 572, column: 21, scope: !787, inlinedAt: !782)
!790 = !DILocation(line: 572, column: 13, scope: !788, inlinedAt: !782)
!791 = !DILocation(line: 577, column: 46, scope: !792, inlinedAt: !782)
!792 = distinct !DILexicalBlock(scope: !788, file: !3, line: 577, column: 13)
!793 = !DILocation(line: 577, column: 18, scope: !792, inlinedAt: !782)
!794 = !DILocation(line: 577, column: 15, scope: !792, inlinedAt: !782)
!795 = !DILocation(line: 577, column: 13, scope: !788, inlinedAt: !782)
!796 = !DILocation(line: 581, column: 20, scope: !788, inlinedAt: !782)
!797 = !DILocation(line: 581, column: 28, scope: !788, inlinedAt: !782)
!798 = !DILocation(line: 581, column: 9, scope: !788, inlinedAt: !782)
!799 = !DILocation(line: 582, column: 23, scope: !800, inlinedAt: !782)
!800 = distinct !DILexicalBlock(scope: !788, file: !3, line: 582, column: 13)
!801 = !DILocation(line: 582, column: 13, scope: !800, inlinedAt: !782)
!802 = !DILocation(line: 582, column: 13, scope: !788, inlinedAt: !782)
!803 = !DILocation(line: 583, column: 24, scope: !804, inlinedAt: !782)
!804 = distinct !DILexicalBlock(scope: !800, file: !3, line: 582, column: 33)
!805 = !DILocation(line: 583, column: 32, scope: !804, inlinedAt: !782)
!806 = !DILocation(line: 583, column: 56, scope: !804, inlinedAt: !782)
!807 = !DILocation(line: 583, column: 71, scope: !804, inlinedAt: !782)
!808 = !DILocation(line: 583, column: 13, scope: !804, inlinedAt: !782)
!809 = !DILocation(line: 584, column: 9, scope: !804, inlinedAt: !782)
!810 = !DILocation(line: 586, column: 75, scope: !788, inlinedAt: !782)
!811 = !DILocation(line: 586, column: 52, scope: !788, inlinedAt: !782)
!812 = !DILocation(line: 586, column: 65, scope: !788, inlinedAt: !782)
!813 = !DILocation(line: 586, column: 96, scope: !788, inlinedAt: !782)
!814 = !DILocation(line: 586, column: 109, scope: !788, inlinedAt: !782)
!815 = !DILocation(line: 586, column: 117, scope: !788, inlinedAt: !782)
!816 = !DILocation(line: 586, column: 142, scope: !788, inlinedAt: !782)
!817 = !DILocation(line: 586, column: 19, scope: !788, inlinedAt: !782)
!818 = !DILocation(line: 588, column: 21, scope: !819, inlinedAt: !782)
!819 = distinct !DILexicalBlock(scope: !788, file: !3, line: 588, column: 13)
!820 = !DILocation(line: 588, column: 13, scope: !788, inlinedAt: !782)
!821 = distinct !{!821, !822, !823}
!822 = !DILocation(line: 570, column: 5, scope: !776)
!823 = !DILocation(line: 594, column: 5, scope: !776)
!824 = !DILocation(line: 590, column: 21, scope: !825, inlinedAt: !782)
!825 = distinct !DILexicalBlock(scope: !819, file: !3, line: 588, column: 50)
!826 = !DILocation(line: 590, column: 29, scope: !825, inlinedAt: !782)
!827 = !DILocation(line: 590, column: 13, scope: !825, inlinedAt: !782)
!828 = !DILocation(line: 592, column: 13, scope: !825, inlinedAt: !782)
!829 = !DILocation(line: 598, column: 1, scope: !776, inlinedAt: !782)
!830 = !DILocation(line: 618, column: 9, scope: !745)
!831 = !DILocation(line: 618, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !745, file: !3, line: 618, column: 9)
!833 = !DILocation(line: 619, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !3, line: 618, column: 24)
!835 = !DILocation(line: 620, column: 5, scope: !834)
!836 = !DILocation(line: 621, column: 1, scope: !837)
!837 = !DILexicalBlockFile(scope: !745, file: !3, discriminator: 2)
!838 = distinct !DISubprogram(name: "att_operation_cmd_send", scope: !3, file: !3, line: 452, type: !839, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!109, !92, !100, !92, !99, !92}
!841 = !{!842, !843, !844, !845, !846, !847, !848}
!842 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !838, file: !3, line: 452, type: !92)
!843 = !DILocalVariable(name: "send_type_flag", arg: 2, scope: !838, file: !3, line: 452, type: !100)
!844 = !DILocalVariable(name: "send_handle", arg: 3, scope: !838, file: !3, line: 452, type: !92)
!845 = !DILocalVariable(name: "buf", arg: 4, scope: !838, file: !3, line: 452, type: !99)
!846 = !DILocalVariable(name: "len", arg: 5, scope: !838, file: !3, line: 452, type: !92)
!847 = !DILocalVariable(name: "ret_val", scope: !838, file: !3, line: 454, type: !109)
!848 = !DILocalVariable(name: "param1", scope: !838, file: !3, line: 455, type: !464)
!849 = !DILocation(line: 452, column: 39, scope: !838)
!850 = !DILocation(line: 452, column: 55, scope: !838)
!851 = !DILocation(line: 452, column: 75, scope: !838)
!852 = !DILocation(line: 452, column: 92, scope: !838)
!853 = !DILocation(line: 452, column: 101, scope: !838)
!854 = !DILocation(line: 454, column: 9, scope: !838)
!855 = !DILocation(line: 113, column: 36, scope: !485, inlinedAt: !856)
!856 = distinct !DILocation(line: 457, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !838, file: !3, line: 457, column: 9)
!858 = !DILocation(line: 115, column: 14, scope: !484, inlinedAt: !856)
!859 = !DILocation(line: 115, column: 5, scope: !500, inlinedAt: !856)
!860 = !DILocation(line: 116, column: 52, scope: !481, inlinedAt: !856)
!861 = !DILocation(line: 116, column: 25, scope: !481, inlinedAt: !856)
!862 = !DILocation(line: 116, column: 13, scope: !482, inlinedAt: !856)
!863 = !DILocation(line: 115, column: 43, scope: !495, inlinedAt: !856)
!864 = !DILocation(line: 115, column: 23, scope: !498, inlinedAt: !856)
!865 = !DILocation(line: 117, column: 20, scope: !505, inlinedAt: !856)
!866 = !DILocation(line: 457, column: 43, scope: !857)
!867 = !DILocation(line: 457, column: 9, scope: !838)
!868 = !DILocation(line: 463, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !838, file: !3, line: 463, column: 5)
!870 = !DILocation(line: 463, column: 5, scope: !838)
!871 = !DILocation(line: 463, column: 5, scope: !872)
!872 = !DILexicalBlockFile(scope: !869, file: !3, discriminator: 1)
!873 = !DILocation(line: 465, column: 5, scope: !838)
!874 = !DILocation(line: 467, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !838, file: !3, line: 465, column: 29)
!876 = !DILocation(line: 468, column: 9, scope: !875)
!877 = !DILocation(line: 471, column: 19, scope: !875)
!878 = !DILocation(line: 472, column: 9, scope: !875)
!879 = !DILocation(line: 475, column: 19, scope: !875)
!880 = !DILocation(line: 476, column: 9, scope: !875)
!881 = !DILocation(line: 479, column: 19, scope: !875)
!882 = !DILocation(line: 480, column: 9, scope: !875)
!883 = !DILocation(line: 483, column: 19, scope: !875)
!884 = !DILocation(line: 484, column: 9, scope: !875)
!885 = !DILocation(line: 487, column: 19, scope: !875)
!886 = !DILocation(line: 488, column: 9, scope: !875)
!887 = !DILocation(line: 497, column: 5, scope: !838)
!888 = !DILocation(line: 503, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !838, file: !3, line: 497, column: 22)
!890 = !DILocation(line: 516, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !3, line: 516, column: 9)
!892 = !DILocation(line: 516, column: 9, scope: !889)
!893 = !DILocation(line: 516, column: 9, scope: !894)
!894 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 1)
!895 = !DILocation(line: 523, column: 1, scope: !838)
!896 = distinct !DISubprogram(name: "att_send_set_mtu_size", scope: !3, file: !3, line: 624, type: !897, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !92, !92}
!899 = !{!900, !901, !902}
!900 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !896, file: !3, line: 624, type: !92)
!901 = !DILocalVariable(name: "mtu_size", arg: 2, scope: !896, file: !3, line: 624, type: !92)
!902 = !DILocalVariable(name: "cur_index", scope: !896, file: !3, line: 629, type: !100)
!903 = !DILocation(line: 624, column: 32, scope: !896)
!904 = !DILocation(line: 624, column: 49, scope: !896)
!905 = !DILocation(line: 626, column: 5, scope: !906)
!906 = distinct !DILexicalBlock(scope: !896, file: !3, line: 626, column: 5)
!907 = !DILocation(line: 626, column: 5, scope: !896)
!908 = !DILocation(line: 116, column: 52, scope: !481, inlinedAt: !909)
!909 = distinct !DILocation(line: 629, column: 20, scope: !896)
!910 = !DILocation(line: 116, column: 25, scope: !481, inlinedAt: !909)
!911 = !DILocation(line: 116, column: 13, scope: !482, inlinedAt: !909)
!912 = !DILocation(line: 115, column: 43, scope: !495, inlinedAt: !909)
!913 = !DILocation(line: 115, column: 14, scope: !484, inlinedAt: !909)
!914 = !DILocation(line: 115, column: 23, scope: !498, inlinedAt: !909)
!915 = !DILocation(line: 115, column: 5, scope: !500, inlinedAt: !909)
!916 = !DILocation(line: 117, column: 20, scope: !505, inlinedAt: !909)
!917 = !DILocation(line: 629, column: 8, scope: !896)
!918 = !DILocation(line: 631, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !896, file: !3, line: 631, column: 9)
!920 = !DILocation(line: 631, column: 19, scope: !919)
!921 = !DILocation(line: 631, column: 9, scope: !896)
!922 = !DILocation(line: 635, column: 5, scope: !896)
!923 = !DILocation(line: 637, column: 20, scope: !924)
!924 = distinct !DILexicalBlock(scope: !896, file: !3, line: 637, column: 9)
!925 = !DILocation(line: 637, column: 28, scope: !924)
!926 = !{!755, !156, i64 176}
!927 = !DILocation(line: 637, column: 18, scope: !924)
!928 = !DILocation(line: 639, column: 5, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 637, column: 46)
!930 = !DILocation(line: 643, column: 5, scope: !896)
!931 = !DILocation(line: 644, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !896, file: !3, line: 644, column: 5)
!933 = !DILocation(line: 644, column: 5, scope: !896)
!934 = !DILocation(line: 644, column: 5, scope: !935)
!935 = !DILexicalBlockFile(scope: !932, file: !3, discriminator: 1)
!936 = !DILocation(line: 645, column: 1, scope: !937)
!937 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 1)
!938 = distinct !DISubprogram(name: "att_send_need_bufszie", scope: !3, file: !3, line: 648, type: !939, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!55}
!941 = !{!942}
!942 = !DILocalVariable(name: "size", scope: !938, file: !3, line: 650, type: !464)
!943 = !DILocation(line: 650, column: 9, scope: !938)
!944 = !DILocation(line: 651, column: 5, scope: !938)
!945 = !DILocation(line: 652, column: 5, scope: !938)
!946 = distinct !DISubprogram(name: "att_need_ctrl_ramsize", scope: !3, file: !3, line: 656, type: !947, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!947 = !DISubroutineType(types: !948)
!948 = !{!464}
!949 = !DILocation(line: 658, column: 5, scope: !946)
!950 = distinct !DISubprogram(name: "att_set_default_conn_handle", scope: !3, file: !3, line: 662, type: !951, isLocal: false, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !953)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !92}
!953 = !{!954}
!954 = !DILocalVariable(name: "handle", arg: 1, scope: !950, file: !3, line: 662, type: !92)
!955 = !DILocation(line: 662, column: 38, scope: !950)
!956 = !DILocation(line: 664, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !3, line: 664, column: 9)
!958 = !DILocation(line: 664, column: 9, scope: !950)
!959 = !DILocation(line: 667, column: 29, scope: !950)
!960 = !DILocation(line: 667, column: 41, scope: !950)
!961 = !DILocation(line: 668, column: 1, scope: !950)
!962 = !DILocation(line: 668, column: 1, scope: !963)
!963 = !DILexicalBlockFile(scope: !950, file: !3, discriminator: 1)
!964 = distinct !DISubprogram(name: "att_get_default_conn_handle", scope: !3, file: !3, line: 671, type: !965, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!965 = !DISubroutineType(types: !966)
!966 = !{!72}
!967 = !DILocation(line: 673, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !3, line: 673, column: 9)
!969 = !DILocation(line: 673, column: 9, scope: !964)
!970 = !DILocation(line: 95, column: 37, scope: !971, inlinedAt: !980)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 95, column: 13)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 94, column: 47)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 94, column: 5)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 94, column: 5)
!975 = distinct !DISubprogram(name: "get_att_handle_is_conn", scope: !3, file: !3, line: 92, type: !976, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!92}
!978 = !{!979}
!979 = !DILocalVariable(name: "i", scope: !974, file: !3, line: 94, type: !109)
!980 = distinct !DILocation(line: 676, column: 12, scope: !964)
!981 = !DILocation(line: 94, column: 14, scope: !974, inlinedAt: !980)
!982 = !DILocation(line: 94, column: 23, scope: !983, inlinedAt: !980)
!983 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 1)
!984 = !DILocation(line: 94, column: 5, scope: !985, inlinedAt: !980)
!985 = !DILexicalBlockFile(scope: !974, file: !3, discriminator: 1)
!986 = distinct !{!986, !987, !988}
!987 = !DILocation(line: 94, column: 5, scope: !974)
!988 = !DILocation(line: 98, column: 5, scope: !974)
!989 = !DILocation(line: 95, column: 13, scope: !971, inlinedAt: !980)
!990 = !DILocation(line: 94, column: 43, scope: !991, inlinedAt: !980)
!991 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 3)
!992 = !DILocation(line: 95, column: 13, scope: !972, inlinedAt: !980)
!993 = !DILocation(line: 677, column: 1, scope: !964)
!994 = distinct !DISubprogram(name: "att_send_init", scope: !3, file: !3, line: 680, type: !995, isLocal: false, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !92, !99, !92, !92}
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !994, file: !3, line: 680, type: !92)
!999 = !DILocalVariable(name: "tmp_buf", arg: 2, scope: !994, file: !3, line: 680, type: !99)
!1000 = !DILocalVariable(name: "buf_size", arg: 3, scope: !994, file: !3, line: 680, type: !92)
!1001 = !DILocalVariable(name: "local_sendbuf_size", arg: 4, scope: !994, file: !3, line: 680, type: !92)
!1002 = !DILocalVariable(name: "i", scope: !994, file: !3, line: 682, type: !109)
!1003 = !DILocation(line: 680, column: 24, scope: !994)
!1004 = !DILocation(line: 680, column: 41, scope: !994)
!1005 = !DILocation(line: 680, column: 54, scope: !994)
!1006 = !DILocation(line: 680, column: 68, scope: !994)
!1007 = !DILocation(line: 685, column: 15, scope: !994)
!1008 = !DILocation(line: 686, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !994, file: !3, line: 686, column: 9)
!1010 = !DILocation(line: 686, column: 29, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1009, file: !3, discriminator: 1)
!1012 = !DILocation(line: 686, column: 24, scope: !1009)
!1013 = !DILocation(line: 690, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !994, file: !3, line: 690, column: 9)
!1015 = !DILocation(line: 650, column: 9, scope: !938, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 690, column: 20, scope: !1014)
!1017 = !DILocation(line: 651, column: 5, scope: !938, inlinedAt: !1016)
!1018 = !DILocation(line: 690, column: 46, scope: !1014)
!1019 = !DILocation(line: 690, column: 44, scope: !1014)
!1020 = !DILocation(line: 690, column: 18, scope: !1014)
!1021 = !DILocation(line: 690, column: 9, scope: !994)
!1022 = !DILocation(line: 650, column: 9, scope: !938, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 691, column: 60, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 690, column: 66)
!1025 = !DILocation(line: 651, column: 5, scope: !938, inlinedAt: !1023)
!1026 = !DILocation(line: 691, column: 9, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1024, file: !3, discriminator: 1)
!1028 = !DILocation(line: 692, column: 9, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 1)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 692, column: 9)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 692, column: 9)
!1032 = !{!521, !521, i64 0}
!1033 = !DILocation(line: 692, column: 9, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 1)
!1035 = !DILocation(line: 692, column: 9, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 2)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 692, column: 9)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 692, column: 9)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 692, column: 9)
!1040 = !DILocation(line: 692, column: 9, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 6)
!1042 = !DILocation(line: 692, column: 9, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 7)
!1044 = !DILocation(line: 692, column: 9, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 2)
!1046 = !DILocation(line: 692, column: 9, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 3)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 692, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 692, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 692, column: 9)
!1051 = !DILocation(line: 696, column: 28, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !994, file: !3, line: 696, column: 9)
!1053 = !DILocation(line: 696, column: 9, scope: !994)
!1054 = !DILocation(line: 697, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 696, column: 48)
!1056 = !DILocation(line: 698, column: 9, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !3, discriminator: 1)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 698, column: 9)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 698, column: 9)
!1060 = !DILocation(line: 698, column: 9, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 1)
!1062 = !DILocation(line: 698, column: 9, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1064, file: !3, discriminator: 2)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 698, column: 9)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 698, column: 9)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 698, column: 9)
!1067 = !DILocation(line: 698, column: 9, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1064, file: !3, discriminator: 6)
!1069 = !DILocation(line: 698, column: 9, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1064, file: !3, discriminator: 7)
!1071 = !DILocation(line: 698, column: 9, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1066, file: !3, discriminator: 2)
!1073 = !DILocation(line: 698, column: 9, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !3, discriminator: 3)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 698, column: 9)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 698, column: 9)
!1077 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 698, column: 9)
!1078 = !DILocation(line: 703, column: 5, scope: !994)
!1079 = !DILocation(line: 705, column: 15, scope: !994)
!1080 = !DILocation(line: 706, column: 13, scope: !994)
!1081 = !DILocation(line: 708, column: 5, scope: !994)
!1082 = !DILocation(line: 710, column: 13, scope: !994)
!1083 = !DILocation(line: 710, column: 27, scope: !994)
!1084 = !DILocation(line: 711, column: 5, scope: !994)
!1085 = !DILocation(line: 711, column: 13, scope: !994)
!1086 = !DILocation(line: 711, column: 30, scope: !994)
!1087 = !DILocation(line: 682, column: 9, scope: !994)
!1088 = !DILocation(line: 713, column: 5, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1090, file: !3, discriminator: 1)
!1090 = distinct !DILexicalBlock(scope: !994, file: !3, line: 713, column: 5)
!1091 = !DILocation(line: 714, column: 33, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 713, column: 43)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 713, column: 5)
!1094 = !DILocation(line: 714, column: 50, scope: !1092)
!1095 = !DILocation(line: 715, column: 33, scope: !1092)
!1096 = !DILocation(line: 715, column: 44, scope: !1092)
!1097 = !DILocation(line: 713, column: 39, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 2)
!1099 = !DILocation(line: 713, column: 19, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 1)
!1101 = distinct !{!1101, !1102, !1103}
!1102 = !DILocation(line: 713, column: 5, scope: !1090)
!1103 = !DILocation(line: 716, column: 5, scope: !1090)
!1104 = !DILocation(line: 707, column: 14, scope: !994)
!1105 = !DILocation(line: 718, column: 13, scope: !994)
!1106 = !DILocation(line: 719, column: 14, scope: !994)
!1107 = !DILocation(line: 138, column: 5, scope: !113, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 721, column: 5, scope: !994)
!1109 = !DILocation(line: 722, column: 13, scope: !994)
!1110 = !DILocation(line: 722, column: 23, scope: !994)
!1111 = !DILocation(line: 723, column: 24, scope: !994)
!1112 = !DILocation(line: 723, column: 49, scope: !994)
!1113 = !DILocation(line: 723, column: 5, scope: !994)
!1114 = !DILocation(line: 725, column: 21, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !994, file: !3, line: 725, column: 9)
!1116 = !DILocation(line: 662, column: 38, scope: !950, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 726, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 725, column: 46)
!1119 = !DILocation(line: 664, column: 9, scope: !957, inlinedAt: !1117)
!1120 = !DILocation(line: 664, column: 9, scope: !950, inlinedAt: !1117)
!1121 = !DILocation(line: 667, column: 29, scope: !950, inlinedAt: !1117)
!1122 = !DILocation(line: 667, column: 41, scope: !950, inlinedAt: !1117)
!1123 = !DILocation(line: 668, column: 1, scope: !950, inlinedAt: !1117)
!1124 = !DILocation(line: 730, column: 5, scope: !994)
!1125 = !DILocation(line: 731, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !994, file: !3, line: 731, column: 5)
!1127 = !DILocation(line: 731, column: 5, scope: !994)
!1128 = !DILocation(line: 731, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1126, file: !3, discriminator: 1)
!1130 = !DILocation(line: 732, column: 1, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !994, file: !3, discriminator: 2)
!1132 = distinct !DISubprogram(name: "cpu_reset", scope: !48, file: !48, line: 145, type: !114, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!1133 = !DILocation(line: 148, column: 5, scope: !1132)
!1134 = !DILocation(line: 149, column: 1, scope: !1132)
!1135 = distinct !DISubprogram(name: "att_set_conn_handle", scope: !3, file: !3, line: 734, type: !1136, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!109, !92, !109, !109}
!1138 = !{!1139, !1140, !1141, !1142, !1143}
!1139 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !1135, file: !3, line: 734, type: !92)
!1140 = !DILocalVariable(name: "handle_index", arg: 2, scope: !1135, file: !3, line: 734, type: !109)
!1141 = !DILocalVariable(name: "role", arg: 3, scope: !1135, file: !3, line: 734, type: !109)
!1142 = !DILocalVariable(name: "i", scope: !1135, file: !3, line: 740, type: !109)
!1143 = !DILocalVariable(name: "ret", scope: !1135, file: !3, line: 741, type: !109)
!1144 = !DILocation(line: 734, column: 29, scope: !1135)
!1145 = !DILocation(line: 734, column: 46, scope: !1135)
!1146 = !DILocation(line: 734, column: 64, scope: !1135)
!1147 = !DILocation(line: 736, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 736, column: 9)
!1149 = !DILocation(line: 736, column: 9, scope: !1135)
!1150 = !DILocation(line: 741, column: 9, scope: !1135)
!1151 = !DILocation(line: 743, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 743, column: 5)
!1153 = !DILocation(line: 743, column: 5, scope: !1135)
!1154 = !DILocation(line: 743, column: 5, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1152, file: !3, discriminator: 1)
!1156 = !DILocation(line: 746, column: 5, scope: !1135)
!1157 = !DILocation(line: 740, column: 9, scope: !1135)
!1158 = !DILocation(line: 748, column: 5, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1160, file: !3, discriminator: 1)
!1160 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 748, column: 5)
!1161 = !DILocation(line: 749, column: 37, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 749, column: 13)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 748, column: 43)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 748, column: 5)
!1165 = !DILocation(line: 749, column: 13, scope: !1162)
!1166 = !DILocation(line: 749, column: 47, scope: !1162)
!1167 = !DILocation(line: 749, column: 55, scope: !1162)
!1168 = !DILocation(line: 749, column: 82, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1162, file: !3, discriminator: 1)
!1170 = !DILocation(line: 749, column: 58, scope: !1169)
!1171 = !DILocation(line: 749, column: 93, scope: !1169)
!1172 = !DILocation(line: 749, column: 13, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1163, file: !3, discriminator: 1)
!1174 = !DILocation(line: 748, column: 39, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 2)
!1176 = !DILocation(line: 748, column: 19, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 1)
!1178 = distinct !{!1178, !1179, !1180}
!1179 = !DILocation(line: 748, column: 5, scope: !1160)
!1180 = !DILocation(line: 752, column: 5, scope: !1160)
!1181 = !DILocation(line: 756, column: 45, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 754, column: 30)
!1183 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 754, column: 9)
!1184 = !DILocation(line: 757, column: 44, scope: !1182)
!1185 = !DILocation(line: 757, column: 61, scope: !1182)
!1186 = !DILocation(line: 758, column: 14, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 758, column: 13)
!1188 = !DILocation(line: 758, column: 13, scope: !1182)
!1189 = !DILocation(line: 760, column: 47, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 758, column: 27)
!1191 = !DILocation(line: 761, column: 9, scope: !1190)
!1192 = !DILocation(line: 766, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 766, column: 9)
!1194 = !DILocation(line: 766, column: 9, scope: !1135)
!1195 = !DILocation(line: 768, column: 41, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 768, column: 17)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 767, column: 47)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 767, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 767, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 766, column: 22)
!1201 = !DILocation(line: 768, column: 52, scope: !1196)
!1202 = !DILocation(line: 768, column: 17, scope: !1197)
!1203 = !DILocation(line: 767, column: 43, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1198, file: !3, discriminator: 2)
!1205 = !DILocation(line: 767, column: 23, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1198, file: !3, discriminator: 1)
!1207 = !DILocation(line: 767, column: 9, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1199, file: !3, discriminator: 1)
!1209 = distinct !{!1209, !1210, !1211}
!1210 = !DILocation(line: 767, column: 9, scope: !1199)
!1211 = !DILocation(line: 771, column: 9, scope: !1199)
!1212 = !DILocation(line: 779, column: 42, scope: !1135)
!1213 = !DILocation(line: 779, column: 40, scope: !1135)
!1214 = !DILocation(line: 780, column: 41, scope: !1135)
!1215 = !DILocation(line: 781, column: 40, scope: !1135)
!1216 = !DILocation(line: 781, column: 57, scope: !1135)
!1217 = !DILocation(line: 782, column: 41, scope: !1135)
!1218 = !DILocation(line: 782, column: 39, scope: !1135)
!1219 = !DILocation(line: 782, column: 5, scope: !1135)
!1220 = !DILocation(line: 786, column: 5, scope: !1135)
!1221 = !DILocation(line: 788, column: 1, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1135, file: !3, discriminator: 1)
!1223 = distinct !DISubprogram(name: "att_send_check_multi_dev", scope: !3, file: !3, line: 790, type: !1224, isLocal: false, isDefinition: true, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!109, !100, !100}
!1226 = !{!1227, !1228}
!1227 = !DILocalVariable(name: "server_max", arg: 1, scope: !1223, file: !3, line: 790, type: !100)
!1228 = !DILocalVariable(name: "client_max", arg: 2, scope: !1223, file: !3, line: 790, type: !100)
!1229 = !DILocation(line: 790, column: 33, scope: !1223)
!1230 = !DILocation(line: 790, column: 48, scope: !1223)
!1231 = !DILocation(line: 792, column: 9, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 792, column: 9)
!1233 = !DILocation(line: 792, column: 22, scope: !1232)
!1234 = !DILocation(line: 792, column: 20, scope: !1232)
!1235 = !DILocation(line: 792, column: 33, scope: !1232)
!1236 = !DILocation(line: 792, column: 9, scope: !1223)
!1237 = !DILocation(line: 793, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 792, column: 56)
!1239 = !DILocation(line: 794, column: 9, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !3, discriminator: 1)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 794, column: 9)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 794, column: 9)
!1243 = !DILocation(line: 794, column: 9, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1242, file: !3, discriminator: 1)
!1245 = !DILocation(line: 794, column: 9, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !3, discriminator: 2)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 794, column: 9)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 794, column: 9)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 794, column: 9)
!1250 = !DILocation(line: 794, column: 9, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1247, file: !3, discriminator: 5)
!1252 = !DILocation(line: 794, column: 9, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1247, file: !3, discriminator: 6)
!1254 = !DILocation(line: 794, column: 9, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1249, file: !3, discriminator: 2)
!1256 = !DILocation(line: 794, column: 9, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1258, file: !3, discriminator: 3)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 794, column: 9)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 794, column: 9)
!1260 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 794, column: 9)
!1261 = !DILocation(line: 798, column: 1, scope: !1223)
