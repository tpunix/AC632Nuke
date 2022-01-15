; ModuleID = 'obex.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.Obex_connect = type <{ i8, i16, i8, i8, i16, [0 x i8] }>

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@obex_connection_req.UUID = internal constant [16 x i8] c"ya5\F0\F0\C5\11\D8\09f\08\00 \0C\9Af", align 1, !dbg !90
@send_cmd_buf = common hidden global [50 x i8] zeroinitializer, align 1, !dbg !128
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [24 x i8] c"<BT-log> :herd %d, %d \0A\00", align 1
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[pro-info] :send err %d\0A\00", align 1
@send_accept_opp_put_cmd.oppOpcode2 = private unnamed_addr constant [5 x i8] c"\90\00\03\00\00", align 1
@send_success_ending.oppOpcode3 = private unnamed_addr constant [5 x i8] c"\A0\00\03\00\00", align 1
@send_continue_respone.opCode = private unnamed_addr constant [10 x i8] c"\83\00\08\CB\00\00\00\00\00\00", align 1
@send_abort_cmd.opCode = private unnamed_addr constant [5 x i8] c"\FF\00\03\00\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"[pro-info] :total len: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"[pro-info] :header %d not support or parse err\0A\00", align 1

; Function Attrs: nounwind optsize
define hidden zeroext i8 @obex_connection_req(i16 zeroext, i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 !dbg !92 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !100, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i8* %1, metadata !101, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8 %2, metadata !102, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.declare(metadata %struct.Obex_connect* undef, metadata !103, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i8 -128, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !140
  call void @llvm.dbg.value(metadata i16 7, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 16)), !dbg !140
  call void @llvm.dbg.value(metadata i8 16, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !140
  call void @llvm.dbg.value(metadata i8 0, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !140
  %4 = tail call zeroext i16 @_swap16(i16 zeroext 1014) #5, !dbg !141
  call void @llvm.dbg.value(metadata i16 %4, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 16)), !dbg !140
  call void @llvm.dbg.value(metadata i16 7, metadata !121, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i16 7, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 16)), !dbg !140
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !143
  %5 = zext i8 %2 to i32, !dbg !144
  %6 = icmp eq i8 %2, 0, !dbg !148
  br i1 %6, label %32, label %7, !dbg !149

; <label>:7:                                      ; preds = %3
  br label %8, !dbg !151

; <label>:8:                                      ; preds = %27, %7
  %9 = phi i16 [ %28, %27 ], [ 7, %7 ]
  %10 = phi i32 [ %29, %27 ], [ 0, %7 ]
  %11 = getelementptr inbounds i8, i8* %1, i32 %10, !dbg !151
  %12 = load i8, i8* %11, align 1, !dbg !151, !tbaa !153
  %13 = icmp eq i8 %12, 70, !dbg !156
  br i1 %13, label %14, label %27, !dbg !156

; <label>:14:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i16 16, metadata !123, metadata !DIExpression()), !dbg !157
  %15 = tail call zeroext i16 @fill_targer(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 0), i16 zeroext 7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @obex_connection_req.UUID, i32 0, i32 0), i8 zeroext 16) #6, !dbg !158
  call void @llvm.dbg.value(metadata i16 %15, metadata !122, metadata !DIExpression()), !dbg !160
  %16 = add i16 %15, -1, !dbg !161
  %17 = tail call zeroext i16 @_swap16(i16 zeroext %16) #5, !dbg !161
  call void @llvm.dbg.value(metadata i16 %17, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 16)), !dbg !140
  %18 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !162, !tbaa !153
  %19 = icmp slt i8 %18, 0, !dbg !162
  br i1 %19, label %20, label %27, !dbg !164

; <label>:20:                                     ; preds = %14
  %21 = zext i16 %17 to i32, !dbg !165
  %22 = shl nuw nsw i32 %21, 8, !dbg !165
  %23 = and i32 %22, 65280, !dbg !165
  %24 = lshr i32 %21, 8, !dbg !165
  %25 = or i32 %23, %24, !dbg !165
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 16, i32 %25) #6, !dbg !165
  br label %27, !dbg !165

; <label>:27:                                     ; preds = %20, %14, %8
  %28 = phi i16 [ %17, %20 ], [ %17, %14 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i16 %28, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 16)), !dbg !140
  %29 = add nuw nsw i32 %10, 1, !dbg !167
  call void @llvm.dbg.value(metadata i32 %29, metadata !119, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i16 %28, metadata !103, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 16)), !dbg !140
  call void @llvm.dbg.value(metadata i32 %29, metadata !119, metadata !DIExpression()), !dbg !143
  %30 = icmp eq i32 %29, %5, !dbg !148
  br i1 %30, label %31, label %8, !dbg !149, !llvm.loop !169

; <label>:31:                                     ; preds = %27
  br label %32, !dbg !172

; <label>:32:                                     ; preds = %31, %3
  %33 = phi i16 [ 7, %3 ], [ %28, %31 ]
  store i8 -128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 0), align 1, !dbg !172
  store i16 %33, i16* bitcast (i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 1) to i16*), align 1, !dbg !172
  store i8 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 3), align 1, !dbg !172
  store i8 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 4), align 1, !dbg !172
  store i16 %4, i16* bitcast (i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 5) to i16*), align 1, !dbg !172
  %34 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !173, !tbaa !153
  %35 = and i8 %34, 64, !dbg !173
  %36 = icmp eq i8 %35, 0, !dbg !173
  br i1 %36, label %43, label %37, !dbg !175

; <label>:37:                                     ; preds = %32
  %38 = zext i16 %33 to i32, !dbg !176
  %39 = shl nuw nsw i32 %38, 8, !dbg !176
  %40 = and i32 %39, 65280, !dbg !176
  %41 = lshr i32 %38, 8, !dbg !176
  %42 = or i32 %40, %41, !dbg !176
  tail call void @put_buf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 0), i32 %42) #5, !dbg !176
  br label %43, !dbg !176

; <label>:43:                                     ; preds = %37, %32
  %44 = icmp eq i16 %0, 0, !dbg !178
  br i1 %44, label %49, label %45, !dbg !180

; <label>:45:                                     ; preds = %43
  %46 = tail call i16 @llvm.bswap.i16(i16 %33)
  %47 = tail call i32 @rfcomm_send_internal(i16 zeroext %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 0), i16 zeroext %46) #5, !dbg !181
  %48 = trunc i32 %47 to i8, !dbg !181
  br label %49, !dbg !183

; <label>:49:                                     ; preds = %45, %43
  %50 = phi i8 [ %48, %45 ], [ 1, %43 ]
  ret i8 %50, !dbg !184
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare zeroext i16 @_swap16(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_targer(i8*, i16 zeroext, i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 !dbg !185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !189, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i16 %1, metadata !190, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i8* %2, metadata !191, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i8 %3, metadata !192, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i16 0, metadata !193, metadata !DIExpression()), !dbg !198
  %5 = add i16 %1, 1, !dbg !199
  call void @llvm.dbg.value(metadata i16 %5, metadata !190, metadata !DIExpression()), !dbg !195
  %6 = zext i16 %1 to i32, !dbg !200
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !200
  store i8 70, i8* %7, align 1, !dbg !201, !tbaa !153
  %8 = zext i8 %3 to i32, !dbg !202
  %9 = add nuw nsw i32 %8, 3, !dbg !203
  %10 = trunc i32 %9 to i16, !dbg !204
  tail call void @net_store_16(i8* %0, i16 zeroext %5, i16 zeroext %10) #5, !dbg !205
  %11 = add i16 %1, 3, !dbg !206
  call void @llvm.dbg.value(metadata i16 %11, metadata !190, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i16 0, metadata !193, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i16 0, metadata !193, metadata !DIExpression()), !dbg !198
  %12 = icmp eq i8 %3, 0, !dbg !207
  %13 = zext i16 %11 to i32
  br i1 %12, label %26, label %14, !dbg !211

; <label>:14:                                     ; preds = %4
  br label %15, !dbg !213

; <label>:15:                                     ; preds = %15, %14
  %16 = phi i32 [ %23, %15 ], [ 0, %14 ]
  %17 = phi i16 [ %22, %15 ], [ 0, %14 ]
  %18 = getelementptr inbounds i8, i8* %2, i32 %16, !dbg !213
  %19 = load i8, i8* %18, align 1, !dbg !213, !tbaa !153
  %20 = add nuw nsw i32 %16, %13, !dbg !215
  %21 = getelementptr inbounds i8, i8* %0, i32 %20, !dbg !216
  store i8 %19, i8* %21, align 1, !dbg !217, !tbaa !153
  %22 = add i16 %17, 1, !dbg !218
  call void @llvm.dbg.value(metadata i16 %22, metadata !193, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i16 %22, metadata !193, metadata !DIExpression()), !dbg !198
  %23 = zext i16 %22 to i32, !dbg !220
  %24 = icmp ult i32 %23, %8, !dbg !207
  br i1 %24, label %15, label %25, !dbg !211, !llvm.loop !221

; <label>:25:                                     ; preds = %15
  br label %26, !dbg !224

; <label>:26:                                     ; preds = %25, %4
  %27 = phi i16 [ 0, %4 ], [ %22, %25 ]
  %28 = phi i32 [ 0, %4 ], [ %23, %25 ]
  %29 = add nuw nsw i32 %28, %13, !dbg !224
  %30 = getelementptr inbounds i8, i8* %0, i32 %29, !dbg !225
  store i8 0, i8* %30, align 1, !dbg !226, !tbaa !153
  call void @llvm.dbg.value(metadata i16 %31, metadata !193, metadata !DIExpression()), !dbg !198
  %31 = add i16 %1, 4, !dbg !227
  %32 = add i16 %31, %27, !dbg !228
  ret i16 %32, !dbg !229
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rfcomm_send_internal(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @send_accept_opp_connection(i16 zeroext) local_unnamed_addr #0 !dbg !230 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !234, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.declare(metadata %struct.Obex_connect* undef, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i8 -96, metadata !235, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !237
  %2 = tail call zeroext i16 @_swap16(i16 zeroext 7) #5, !dbg !238
  call void @llvm.dbg.value(metadata i16 %2, metadata !235, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 16)), !dbg !237
  call void @llvm.dbg.value(metadata i8 16, metadata !235, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !237
  call void @llvm.dbg.value(metadata i8 0, metadata !235, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !237
  %3 = tail call zeroext i16 @_swap16(i16 zeroext 1014) #5, !dbg !239
  call void @llvm.dbg.value(metadata i16 %3, metadata !235, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 16)), !dbg !237
  store i8 -96, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 0), align 1, !dbg !240
  store i16 %2, i16* bitcast (i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 1) to i16*), align 1, !dbg !240
  store i8 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 3), align 1, !dbg !240
  store i8 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 4), align 1, !dbg !240
  store i16 %3, i16* bitcast (i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 5) to i16*), align 1, !dbg !240
  %4 = icmp eq i16 %0, 0, !dbg !241
  br i1 %4, label %9, label %5, !dbg !243

; <label>:5:                                      ; preds = %1
  %6 = tail call i16 @llvm.bswap.i16(i16 %2)
  %7 = tail call i32 @rfcomm_send_internal(i16 zeroext %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @send_cmd_buf, i32 0, i32 0), i16 zeroext %6) #5, !dbg !244
  %8 = trunc i32 %7 to i8, !dbg !244
  br label %9, !dbg !246

; <label>:9:                                      ; preds = %5, %1
  %10 = phi i8 [ %8, %5 ], [ 1, %1 ]
  ret i8 %10, !dbg !247
}

; Function Attrs: nounwind optsize
define hidden void @send_accept_disconnection(i16 zeroext) local_unnamed_addr #0 !dbg !248 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !252, metadata !DIExpression()), !dbg !259
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !260
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #7, !dbg !260
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !253, metadata !DIExpression()), !dbg !261
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @send_success_ending.oppOpcode3, i32 0, i32 0), i32 5, i32 1, i1 false), !dbg !261
  call void @llvm.dbg.value(metadata i32 0, metadata !258, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata i32 0, metadata !258, metadata !DIExpression()), !dbg !262
  br label %4, !dbg !263

; <label>:4:                                      ; preds = %14, %1
  %5 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %6 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %3, i16 zeroext 3) #5, !dbg !266
  call void @llvm.dbg.value(metadata i32 %6, metadata !257, metadata !DIExpression()), !dbg !269
  %7 = icmp eq i32 %6, 0, !dbg !270
  br i1 %7, label %17, label %8, !dbg !272

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* @profile_debug_enable, align 1, !dbg !273, !tbaa !153
  %10 = and i8 %9, 1, !dbg !273
  %11 = icmp eq i8 %10, 0, !dbg !273
  br i1 %11, label %14, label %12, !dbg !276

; <label>:12:                                     ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %6) #6, !dbg !277
  br label %14, !dbg !277

; <label>:14:                                     ; preds = %12, %8
  %15 = add nuw nsw i32 %5, 1, !dbg !279
  call void @llvm.dbg.value(metadata i32 %15, metadata !258, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata i32 %15, metadata !258, metadata !DIExpression()), !dbg !262
  %16 = icmp slt i32 %15, 3, !dbg !281
  br i1 %16, label %4, label %17, !dbg !263, !llvm.loop !283

; <label>:17:                                     ; preds = %14, %4
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #7, !dbg !286
  ret void, !dbg !286
}

; Function Attrs: nounwind optsize
define hidden void @send_accept_opp_put_cmd(i16 zeroext) local_unnamed_addr #0 !dbg !287 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !289, metadata !DIExpression()), !dbg !293
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !294
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #7, !dbg !294
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !290, metadata !DIExpression()), !dbg !295
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @send_accept_opp_put_cmd.oppOpcode2, i32 0, i32 0), i32 5, i32 1, i1 false), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !292, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 0, metadata !292, metadata !DIExpression()), !dbg !296
  br label %4, !dbg !297

; <label>:4:                                      ; preds = %14, %1
  %5 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %6 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %3, i16 zeroext 3) #5, !dbg !300
  call void @llvm.dbg.value(metadata i32 %6, metadata !291, metadata !DIExpression()), !dbg !303
  %7 = icmp eq i32 %6, 0, !dbg !304
  br i1 %7, label %17, label %8, !dbg !306

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* @profile_debug_enable, align 1, !dbg !307, !tbaa !153
  %10 = and i8 %9, 1, !dbg !307
  %11 = icmp eq i8 %10, 0, !dbg !307
  br i1 %11, label %14, label %12, !dbg !310

; <label>:12:                                     ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %6) #6, !dbg !311
  br label %14, !dbg !311

; <label>:14:                                     ; preds = %12, %8
  %15 = add nuw nsw i32 %5, 1, !dbg !313
  call void @llvm.dbg.value(metadata i32 %15, metadata !292, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %15, metadata !292, metadata !DIExpression()), !dbg !296
  %16 = icmp slt i32 %15, 3, !dbg !315
  br i1 %16, label %4, label %17, !dbg !297, !llvm.loop !317

; <label>:17:                                     ; preds = %14, %4
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #7, !dbg !320
  ret void, !dbg !320
}

; Function Attrs: nounwind optsize
define hidden void @send_success_ending(i16 zeroext) local_unnamed_addr #0 !dbg !321 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !323, metadata !DIExpression()), !dbg !325
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !326
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #7, !dbg !326
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !324, metadata !DIExpression()), !dbg !327
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @send_success_ending.oppOpcode3, i32 0, i32 0), i32 5, i32 1, i1 false), !dbg !327
  %4 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %3, i16 zeroext 3) #5, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #7, !dbg !329
  ret void, !dbg !329
}

; Function Attrs: nounwind optsize
define hidden void @send_continue_respone(i16 zeroext, i32) local_unnamed_addr #0 !dbg !330 {
  %3 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !335, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %1, metadata !336, metadata !DIExpression()), !dbg !342
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !343
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #7, !dbg !343
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !337, metadata !DIExpression()), !dbg !344
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @send_continue_respone.opCode, i32 0, i32 0), i32 10, i32 1, i1 false), !dbg !344
  call void @net_store_32(i8* nonnull %4, i16 zeroext 4, i32 %1) #5, !dbg !345
  %5 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %4, i16 zeroext 8) #5, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #7, !dbg !347
  ret void, !dbg !347
}

; Function Attrs: optsize
declare void @net_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @send_abort_cmd(i16 zeroext) local_unnamed_addr #0 !dbg !348 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !350, metadata !DIExpression()), !dbg !352
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !353
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #7, !dbg !353
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !351, metadata !DIExpression()), !dbg !354
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @send_abort_cmd.opCode, i32 0, i32 0), i32 5, i32 1, i1 false), !dbg !354
  %4 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %3, i16 zeroext 3) #5, !dbg !355
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #7, !dbg !356
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize
define hidden i32 @fill_unicode_name(i8*, i16 zeroext, i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 !dbg !357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !362, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i16 %1, metadata !363, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i8* %2, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i8 %3, metadata !365, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i16 0, metadata !366, metadata !DIExpression()), !dbg !371
  %5 = add i16 %1, 1, !dbg !372
  call void @llvm.dbg.value(metadata i16 %5, metadata !363, metadata !DIExpression()), !dbg !368
  %6 = zext i16 %1 to i32, !dbg !373
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !373
  store i8 1, i8* %7, align 1, !dbg !374, !tbaa !153
  %8 = zext i8 %3 to i32, !dbg !375
  %9 = shl nuw nsw i32 %8, 1, !dbg !376
  %10 = add nuw nsw i32 %9, 5, !dbg !377
  %11 = trunc i32 %10 to i16, !dbg !378
  tail call void @net_store_16(i8* %0, i16 zeroext %5, i16 zeroext %11) #5, !dbg !379
  %12 = add i16 %1, 3, !dbg !380
  call void @llvm.dbg.value(metadata i16 %12, metadata !363, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i16 0, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i16 0, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i16 %12, metadata !363, metadata !DIExpression()), !dbg !368
  %13 = icmp eq i8 %3, 0, !dbg !381
  %14 = add i16 %1, 4
  call void @llvm.dbg.value(metadata i16 %14, metadata !363, metadata !DIExpression()), !dbg !368
  %15 = zext i16 %12 to i32
  %16 = getelementptr inbounds i8, i8* %0, i32 %15
  store i8 0, i8* %16, align 1, !tbaa !153
  br i1 %13, label %35, label %17, !dbg !385

; <label>:17:                                     ; preds = %4
  br label %18, !dbg !387

; <label>:18:                                     ; preds = %18, %17
  %19 = phi i16 [ %31, %18 ], [ %14, %17 ]
  %20 = phi i32 [ %29, %18 ], [ 0, %17 ]
  %21 = phi i16 [ %28, %18 ], [ 0, %17 ]
  %22 = phi i16 [ %25, %18 ], [ %12, %17 ]
  %23 = getelementptr inbounds i8, i8* %2, i32 %20, !dbg !387
  %24 = load i8, i8* %23, align 1, !dbg !387, !tbaa !153
  %25 = add i16 %22, 2, !dbg !389
  call void @llvm.dbg.value(metadata i16 %25, metadata !363, metadata !DIExpression()), !dbg !368
  %26 = zext i16 %19 to i32, !dbg !390
  %27 = getelementptr inbounds i8, i8* %0, i32 %26, !dbg !390
  store i8 %24, i8* %27, align 1, !dbg !391, !tbaa !153
  %28 = add i16 %21, 1, !dbg !392
  call void @llvm.dbg.value(metadata i16 %28, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i16 %28, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i16 %25, metadata !363, metadata !DIExpression()), !dbg !368
  %29 = zext i16 %28 to i32, !dbg !394
  %30 = icmp ult i32 %29, %8, !dbg !381
  %31 = add i16 %22, 3
  call void @llvm.dbg.value(metadata i16 %31, metadata !363, metadata !DIExpression()), !dbg !368
  %32 = zext i16 %25 to i32
  %33 = getelementptr inbounds i8, i8* %0, i32 %32
  store i8 0, i8* %33, align 1, !tbaa !153
  br i1 %30, label %18, label %34, !dbg !385, !llvm.loop !395

; <label>:34:                                     ; preds = %18
  br label %35, !dbg !398

; <label>:35:                                     ; preds = %34, %4
  %36 = phi i16 [ %12, %4 ], [ %25, %34 ]
  %37 = phi i16 [ %14, %4 ], [ %31, %34 ]
  %38 = add i16 %36, 2, !dbg !398
  call void @llvm.dbg.value(metadata i16 %38, metadata !363, metadata !DIExpression()), !dbg !368
  %39 = zext i16 %37 to i32, !dbg !399
  %40 = getelementptr inbounds i8, i8* %0, i32 %39, !dbg !399
  store i8 0, i8* %40, align 1, !dbg !400, !tbaa !153
  %41 = zext i16 %38 to i32, !dbg !401
  ret i32 %41, !dbg !402
}

; Function Attrs: optsize
declare void @net_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @fill_empty_name(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i16 %1, metadata !408, metadata !DIExpression()), !dbg !410
  %3 = tail call i32 @fill_unicode_name(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8 zeroext 0) #6, !dbg !411
  ret i32 %3, !dbg !412
}

; Function Attrs: nounwind optsize
define hidden i32 @fill_type(i8*, i16 zeroext, i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 !dbg !413 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !415, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i16 %1, metadata !416, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %2, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i8 %3, metadata !418, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i16 0, metadata !419, metadata !DIExpression()), !dbg !424
  %5 = add i16 %1, 1, !dbg !425
  call void @llvm.dbg.value(metadata i16 %5, metadata !416, metadata !DIExpression()), !dbg !421
  %6 = zext i16 %1 to i32, !dbg !426
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !426
  store i8 66, i8* %7, align 1, !dbg !427, !tbaa !153
  %8 = zext i8 %3 to i32, !dbg !428
  %9 = add nuw nsw i32 %8, 4, !dbg !429
  %10 = trunc i32 %9 to i16, !dbg !430
  tail call void @net_store_16(i8* %0, i16 zeroext %5, i16 zeroext %10) #5, !dbg !431
  %11 = add i16 %1, 3, !dbg !432
  call void @llvm.dbg.value(metadata i16 %11, metadata !416, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i16 0, metadata !419, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i16 0, metadata !419, metadata !DIExpression()), !dbg !424
  %12 = icmp eq i8 %3, 0, !dbg !433
  %13 = zext i16 %11 to i32
  br i1 %12, label %28, label %14, !dbg !437

; <label>:14:                                     ; preds = %4
  br label %15, !dbg !439

; <label>:15:                                     ; preds = %15, %14
  %16 = phi i32 [ %23, %15 ], [ 0, %14 ]
  %17 = phi i16 [ %22, %15 ], [ 0, %14 ]
  %18 = getelementptr inbounds i8, i8* %2, i32 %16, !dbg !439
  %19 = load i8, i8* %18, align 1, !dbg !439, !tbaa !153
  %20 = add nuw nsw i32 %16, %13, !dbg !441
  %21 = getelementptr inbounds i8, i8* %0, i32 %20, !dbg !442
  store i8 %19, i8* %21, align 1, !dbg !443, !tbaa !153
  %22 = add i16 %17, 1, !dbg !444
  call void @llvm.dbg.value(metadata i16 %22, metadata !419, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i16 %22, metadata !419, metadata !DIExpression()), !dbg !424
  %23 = zext i16 %22 to i32, !dbg !446
  %24 = icmp ult i32 %23, %8, !dbg !433
  br i1 %24, label %15, label %25, !dbg !437, !llvm.loop !447

; <label>:25:                                     ; preds = %15
  %26 = add i16 %17, 2, !dbg !450
  %27 = zext i16 %26 to i32, !dbg !450
  br label %28, !dbg !450

; <label>:28:                                     ; preds = %25, %4
  %29 = phi i32 [ %27, %25 ], [ 1, %4 ]
  %30 = phi i32 [ %23, %25 ], [ 0, %4 ]
  %31 = add nuw nsw i32 %30, %13, !dbg !451
  %32 = getelementptr inbounds i8, i8* %0, i32 %31, !dbg !452
  store i8 0, i8* %32, align 1, !dbg !453, !tbaa !153
  %33 = add nuw nsw i32 %29, %13, !dbg !454
  ret i32 %33, !dbg !455
}

; Function Attrs: nounwind optsize
define hidden i32 @fill_who_HI(i8* nocapture, i16 zeroext, i8* nocapture readonly, i32) local_unnamed_addr #0 !dbg !456 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i16 %1, metadata !461, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i8* %2, metadata !462, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %3, metadata !463, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 0, metadata !464, metadata !DIExpression()), !dbg !469
  %5 = add i16 %1, 1, !dbg !470
  call void @llvm.dbg.value(metadata i16 %5, metadata !461, metadata !DIExpression()), !dbg !466
  %6 = zext i16 %1 to i32, !dbg !471
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !471
  store i8 74, i8* %7, align 1, !dbg !472, !tbaa !153
  %8 = add i16 %1, 2, !dbg !473
  call void @llvm.dbg.value(metadata i16 %8, metadata !461, metadata !DIExpression()), !dbg !466
  %9 = zext i16 %5 to i32, !dbg !474
  %10 = getelementptr inbounds i8, i8* %0, i32 %9, !dbg !474
  store i8 0, i8* %10, align 1, !dbg !475, !tbaa !153
  %11 = add i32 %3, 3, !dbg !476
  %12 = trunc i32 %11 to i8, !dbg !477
  %13 = add i16 %1, 3, !dbg !478
  call void @llvm.dbg.value(metadata i16 %13, metadata !461, metadata !DIExpression()), !dbg !466
  %14 = zext i16 %8 to i32, !dbg !479
  %15 = getelementptr inbounds i8, i8* %0, i32 %14, !dbg !479
  store i8 %12, i8* %15, align 1, !dbg !480, !tbaa !153
  call void @llvm.dbg.value(metadata i32 0, metadata !464, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i32 0, metadata !464, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i16 %13, metadata !461, metadata !DIExpression()), !dbg !466
  %16 = icmp eq i32 %3, 0, !dbg !481
  br i1 %16, label %33, label %17, !dbg !485

; <label>:17:                                     ; preds = %4
  %18 = add i32 %3, 65535, !dbg !487
  %19 = trunc i32 %18 to i16, !dbg !487
  %20 = add i16 %19, %1, !dbg !487
  br label %21, !dbg !487

; <label>:21:                                     ; preds = %21, %17
  %22 = phi i32 [ %29, %21 ], [ 0, %17 ]
  %23 = phi i16 [ %26, %21 ], [ %13, %17 ]
  %24 = getelementptr inbounds i8, i8* %2, i32 %22, !dbg !487
  %25 = load i8, i8* %24, align 1, !dbg !487, !tbaa !153
  %26 = add i16 %23, 1, !dbg !489
  call void @llvm.dbg.value(metadata i16 %26, metadata !461, metadata !DIExpression()), !dbg !466
  %27 = zext i16 %23 to i32, !dbg !490
  %28 = getelementptr inbounds i8, i8* %0, i32 %27, !dbg !490
  store i8 %25, i8* %28, align 1, !dbg !491, !tbaa !153
  %29 = add nuw i32 %22, 1, !dbg !492
  call void @llvm.dbg.value(metadata i32 %29, metadata !464, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i32 %29, metadata !464, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i16 %26, metadata !461, metadata !DIExpression()), !dbg !466
  %30 = icmp eq i32 %29, %3, !dbg !481
  br i1 %30, label %31, label %21, !dbg !485, !llvm.loop !494

; <label>:31:                                     ; preds = %21
  %32 = add i16 %20, 4, !dbg !487
  br label %33, !dbg !497

; <label>:33:                                     ; preds = %31, %4
  %34 = phi i16 [ %13, %4 ], [ %32, %31 ]
  %35 = zext i16 %34 to i32, !dbg !497
  ret i32 %35, !dbg !498
}

; Function Attrs: nounwind optsize
define hidden i32 @fill_length_of_object(i8*, i16 zeroext, i32) local_unnamed_addr #0 !dbg !499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i16 %1, metadata !504, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32 %2, metadata !505, metadata !DIExpression()), !dbg !508
  %4 = add i16 %1, 1, !dbg !509
  call void @llvm.dbg.value(metadata i16 %4, metadata !504, metadata !DIExpression()), !dbg !507
  %5 = zext i16 %1 to i32, !dbg !510
  %6 = getelementptr inbounds i8, i8* %0, i32 %5, !dbg !510
  store i8 -61, i8* %6, align 1, !dbg !511, !tbaa !153
  tail call void @net_store_32(i8* %0, i16 zeroext %4, i32 %2) #5, !dbg !512
  %7 = zext i16 %4 to i32, !dbg !513
  %8 = add nuw nsw i32 %7, 4, !dbg !514
  ret i32 %8, !dbg !515
}

; Function Attrs: nounwind optsize
define hidden i32 @prase_put_packet(i8* nocapture readonly, i16 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !516 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !521, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i16 %1, metadata !522, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8 %2, metadata !523, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.value(metadata i32 0, metadata !524, metadata !DIExpression()), !dbg !529
  %4 = icmp eq i8 %2, 0, !dbg !530
  br i1 %4, label %7, label %5, !dbg !532

; <label>:5:                                      ; preds = %3
  %6 = zext i16 %1 to i32
  br label %16, !dbg !529

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !533
  %9 = load i8, i8* %8, align 1, !dbg !533, !tbaa !153
  %10 = zext i8 %9 to i32, !dbg !533
  %11 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !533
  %12 = load i8, i8* %11, align 1, !dbg !533, !tbaa !153
  %13 = zext i8 %12 to i32, !dbg !533
  %14 = shl nuw nsw i32 %13, 8, !dbg !533
  %15 = or i32 %14, %10, !dbg !533
  br label %109, !dbg !535

; <label>:16:                                     ; preds = %102, %5
  %17 = phi i32 [ %105, %102 ], [ 3, %5 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !524, metadata !DIExpression()), !dbg !529
  %18 = icmp slt i32 %17, %6, !dbg !536
  br i1 %18, label %19, label %107, !dbg !538

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !525, metadata !DIExpression()), !dbg !539
  %20 = getelementptr inbounds i8, i8* %0, i32 %17, !dbg !540
  %21 = load i8, i8* %20, align 1, !dbg !540, !tbaa !153
  switch i8 %21, label %95 [
    i8 -64, label %102
    i8 1, label %22
    i8 66, label %33
    i8 -61, label %44
    i8 72, label %73
    i8 73, label %73
    i8 -53, label %102
    i8 76, label %84
  ], !dbg !542

; <label>:22:                                     ; preds = %19
  %23 = add nsw i32 %17, 1, !dbg !543
  %24 = add nsw i32 %17, 2, !dbg !543
  %25 = getelementptr inbounds i8, i8* %0, i32 %24, !dbg !543
  %26 = load i8, i8* %25, align 1, !dbg !543, !tbaa !153
  %27 = zext i8 %26 to i32, !dbg !543
  %28 = getelementptr inbounds i8, i8* %0, i32 %23, !dbg !543
  %29 = load i8, i8* %28, align 1, !dbg !543, !tbaa !153
  %30 = zext i8 %29 to i32, !dbg !543
  %31 = shl nuw nsw i32 %30, 8, !dbg !543
  %32 = or i32 %31, %27, !dbg !543
  br label %102, !dbg !545

; <label>:33:                                     ; preds = %19
  %34 = add nsw i32 %17, 1, !dbg !546
  %35 = add nsw i32 %17, 2, !dbg !546
  %36 = getelementptr inbounds i8, i8* %0, i32 %35, !dbg !546
  %37 = load i8, i8* %36, align 1, !dbg !546, !tbaa !153
  %38 = zext i8 %37 to i32, !dbg !546
  %39 = getelementptr inbounds i8, i8* %0, i32 %34, !dbg !546
  %40 = load i8, i8* %39, align 1, !dbg !546, !tbaa !153
  %41 = zext i8 %40 to i32, !dbg !546
  %42 = shl nuw nsw i32 %41, 8, !dbg !546
  %43 = or i32 %42, %38, !dbg !546
  br label %102, !dbg !547

; <label>:44:                                     ; preds = %19
  %45 = load i8, i8* @profile_debug_enable, align 1, !dbg !548, !tbaa !153
  %46 = and i8 %45, 1, !dbg !548
  %47 = icmp eq i8 %46, 0, !dbg !548
  br i1 %47, label %102, label %48, !dbg !550

; <label>:48:                                     ; preds = %44
  %49 = add nsw i32 %17, 1, !dbg !551
  %50 = add nsw i32 %17, 4, !dbg !551
  %51 = getelementptr inbounds i8, i8* %0, i32 %50, !dbg !551
  %52 = load i8, i8* %51, align 1, !dbg !551, !tbaa !153
  %53 = zext i8 %52 to i32, !dbg !551
  %54 = add nsw i32 %17, 3, !dbg !551
  %55 = getelementptr inbounds i8, i8* %0, i32 %54, !dbg !551
  %56 = load i8, i8* %55, align 1, !dbg !551, !tbaa !153
  %57 = zext i8 %56 to i32, !dbg !551
  %58 = shl nuw nsw i32 %57, 8, !dbg !551
  %59 = or i32 %58, %53, !dbg !551
  %60 = add nsw i32 %17, 2, !dbg !551
  %61 = getelementptr inbounds i8, i8* %0, i32 %60, !dbg !551
  %62 = load i8, i8* %61, align 1, !dbg !551, !tbaa !153
  %63 = zext i8 %62 to i32, !dbg !551
  %64 = shl nuw nsw i32 %63, 16, !dbg !551
  %65 = or i32 %59, %64, !dbg !551
  %66 = getelementptr inbounds i8, i8* %0, i32 %49, !dbg !551
  %67 = load i8, i8* %66, align 1, !dbg !551, !tbaa !153
  %68 = zext i8 %67 to i32, !dbg !551
  %69 = shl nuw i32 %68, 24, !dbg !551
  %70 = or i32 %65, %69, !dbg !551
  %71 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %70) #6, !dbg !551
  %72 = load i8, i8* %20, align 1, !tbaa !153
  br label %102, !dbg !551

; <label>:73:                                     ; preds = %19, %19
  %74 = add nsw i32 %17, 1, !dbg !553
  %75 = add nsw i32 %17, 2, !dbg !553
  %76 = getelementptr inbounds i8, i8* %0, i32 %75, !dbg !553
  %77 = load i8, i8* %76, align 1, !dbg !553, !tbaa !153
  %78 = zext i8 %77 to i32, !dbg !553
  %79 = getelementptr inbounds i8, i8* %0, i32 %74, !dbg !553
  %80 = load i8, i8* %79, align 1, !dbg !553, !tbaa !153
  %81 = zext i8 %80 to i32, !dbg !553
  %82 = shl nuw nsw i32 %81, 8, !dbg !553
  %83 = or i32 %82, %78, !dbg !553
  br label %102, !dbg !554

; <label>:84:                                     ; preds = %19
  %85 = add nsw i32 %17, 1, !dbg !555
  %86 = add nsw i32 %17, 2, !dbg !555
  %87 = getelementptr inbounds i8, i8* %0, i32 %86, !dbg !555
  %88 = load i8, i8* %87, align 1, !dbg !555, !tbaa !153
  %89 = zext i8 %88 to i32, !dbg !555
  %90 = getelementptr inbounds i8, i8* %0, i32 %85, !dbg !555
  %91 = load i8, i8* %90, align 1, !dbg !555, !tbaa !153
  %92 = zext i8 %91 to i32, !dbg !555
  %93 = shl nuw nsw i32 %92, 8, !dbg !555
  %94 = or i32 %93, %89, !dbg !555
  br label %102, !dbg !556

; <label>:95:                                     ; preds = %19
  %96 = load i8, i8* @profile_debug_enable, align 1, !dbg !557, !tbaa !153
  %97 = and i8 %96, 1, !dbg !557
  %98 = icmp eq i8 %97, 0, !dbg !557
  br i1 %98, label %109, label %99, !dbg !559

; <label>:99:                                     ; preds = %95
  %100 = zext i8 %21 to i32, !dbg !540
  %101 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i32 %100) #6, !dbg !560
  br label %109, !dbg !560

; <label>:102:                                    ; preds = %84, %73, %48, %44, %33, %22, %19, %19
  %103 = phi i8 [ 76, %84 ], [ %21, %73 ], [ 66, %33 ], [ 1, %22 ], [ %21, %19 ], [ -61, %44 ], [ %72, %48 ], [ %21, %19 ], !dbg !562
  %104 = phi i32 [ %94, %84 ], [ %83, %73 ], [ %43, %33 ], [ %32, %22 ], [ 5, %19 ], [ 5, %44 ], [ 5, %48 ], [ 5, %19 ]
  %105 = add nsw i32 %104, %17
  call void @llvm.dbg.value(metadata i32 %105, metadata !524, metadata !DIExpression()), !dbg !529
  %106 = icmp eq i8 %103, %2, !dbg !564
  br i1 %106, label %107, label %16, !dbg !565, !llvm.loop !566

; <label>:107:                                    ; preds = %102, %16
  %108 = phi i32 [ 0, %16 ], [ %17, %102 ]
  br label %109, !dbg !569

; <label>:109:                                    ; preds = %107, %99, %95, %7
  %110 = phi i32 [ %15, %7 ], [ 0, %95 ], [ 0, %99 ], [ %108, %107 ]
  ret i32 %110, !dbg !569
}

; Function Attrs: nounwind readnone speculatable
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!134, !135}
!llvm.ident = !{!136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !133, line: 190, type: !120, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !89)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/obex.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !18, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 6, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/obex.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!8 = !DIEnumerator(name: "OBEX_OPCODE_CONNECT", value: 128)
!9 = !DIEnumerator(name: "OBEX_OPCODE_DISCONNECT", value: 129)
!10 = !DIEnumerator(name: "OBEX_OPCODE_PUT", value: 2)
!11 = !DIEnumerator(name: "OBEX_OPCODE_FINAL_PUT", value: 130)
!12 = !DIEnumerator(name: "OBEX_OPCODE_GET", value: 3)
!13 = !DIEnumerator(name: "OBEX_OPCODE_FINAL_GET", value: 131)
!14 = !DIEnumerator(name: "OBEX_OPCODE_SETPATH", value: 133)
!15 = !DIEnumerator(name: "OBEX_OPCODE_ACTION", value: 134)
!16 = !DIEnumerator(name: "OBEX_OPCODE_SESSION", value: 135)
!17 = !DIEnumerator(name: "OBEX_OPCODE_ABORT", value: 255)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 20, size: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!20 = !DIEnumerator(name: "OBEX_RESPONSE_CONTINUE", value: 16)
!21 = !DIEnumerator(name: "OBEX_RESPONSE_SUCCESS", value: 32)
!22 = !DIEnumerator(name: "OBEX_RESPONSE_CREATED", value: 33)
!23 = !DIEnumerator(name: "OBEX_RESPONSE_ACCEPTED", value: 34)
!24 = !DIEnumerator(name: "OBEX_RESPONSE_NON_AUTHORITATIVE", value: 35)
!25 = !DIEnumerator(name: "OBEX_RESPONSE_NO_CONTENT", value: 36)
!26 = !DIEnumerator(name: "OBEX_RESPONSE_RESET_CONTENT", value: 37)
!27 = !DIEnumerator(name: "OBEX_RESPONSE_PARTIAL_CONTENT", value: 38)
!28 = !DIEnumerator(name: "OBEX_RESPONSE_MULTIPLE_CHOICES", value: 48)
!29 = !DIEnumerator(name: "OBEX_RESPONSE_MOVED_PERMANENTLY", value: 49)
!30 = !DIEnumerator(name: "OBEX_RESPONSE_MOVED_TEMPORARILY", value: 50)
!31 = !DIEnumerator(name: "OBEX_RESPONSE_SEE_OTHER", value: 51)
!32 = !DIEnumerator(name: "OBEX_RESPONSE_NOT_MODIFIED", value: 52)
!33 = !DIEnumerator(name: "OBEX_RESPONSE_USE_PROXY", value: 53)
!34 = !DIEnumerator(name: "OBEX_RESPONSE_BAD_REQUEST", value: 64)
!35 = !DIEnumerator(name: "OBEX_RESPONSE_UNAUTHORIZED", value: 65)
!36 = !DIEnumerator(name: "OBEX_RESPONSE_PAYMENT_REQUIRED", value: 66)
!37 = !DIEnumerator(name: "OBEX_RESPONSE_FORBIDDEN", value: 67)
!38 = !DIEnumerator(name: "OBEX_RESPONSE_NOT_FOUND", value: 68)
!39 = !DIEnumerator(name: "OBEX_RESPONSE_METHOD_NOT_ALLOWED", value: 69)
!40 = !DIEnumerator(name: "OBEX_RESPONSE_NOT_ACCEPTABLE", value: 70)
!41 = !DIEnumerator(name: "OBEX_RESPONSE_PROXY_AUTH_REQUIRED", value: 71)
!42 = !DIEnumerator(name: "OBEX_RESPONSE_REQUEST_TIME_OUT", value: 72)
!43 = !DIEnumerator(name: "OBEX_RESPONSE_CONFLICT", value: 73)
!44 = !DIEnumerator(name: "OBEX_RESPONSE_GONE", value: 74)
!45 = !DIEnumerator(name: "OBEX_RESPONSE_LENGTH_REQUIRED", value: 75)
!46 = !DIEnumerator(name: "OBEX_RESPONSE_PRECONDITION_FAILED", value: 76)
!47 = !DIEnumerator(name: "OBEX_RESPONSE_REQ_ENTITY_TOO_LARGE", value: 77)
!48 = !DIEnumerator(name: "OBEX_RESPONSE_REQ_URL_TOO_LARGE", value: 78)
!49 = !DIEnumerator(name: "OBEX_RESPONSE_INTERNAL_SERVER_ERROR", value: 80)
!50 = !DIEnumerator(name: "OBEX_RESPONSE_BAD_GATEWAY", value: 82)
!51 = !DIEnumerator(name: "OBEX_RESPONSE_NOT_IMPLEMENTED", value: 83)
!52 = !DIEnumerator(name: "OBEX_RESPONSE_GATEWAY_TIMEOUT", value: 84)
!53 = !DIEnumerator(name: "OBEX_RESPONSE_VERSION_NOT_SUPPORTED", value: 85)
!54 = !DIEnumerator(name: "OBEX_RESPONSE_DATABASE_FULL", value: 96)
!55 = !DIEnumerator(name: "OBEX_RESPONSE_DATABASE_LOCKED", value: 97)
!56 = !DIEnumerator(name: "OBEX_RESPONSE_SET_HIGH_BIT", value: 128)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 62, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!59 = !DIEnumerator(name: "OBEX_HEADER_COUNT", value: 192)
!60 = !DIEnumerator(name: "OBEX_HEADER_OBJNAME", value: 1)
!61 = !DIEnumerator(name: "OBEX_HEADER_TYPE", value: 66)
!62 = !DIEnumerator(name: "OBEX_HEADER_LENGTH", value: 195)
!63 = !DIEnumerator(name: "OBEX_HEADER_TIME", value: 68)
!64 = !DIEnumerator(name: "OBEX_HEADER_DESCRIPTION", value: 5)
!65 = !DIEnumerator(name: "OBEX_HEADER_TARGET", value: 70)
!66 = !DIEnumerator(name: "OBEX_HEADER_HTTP", value: 71)
!67 = !DIEnumerator(name: "OBEX_HEADER_BODY", value: 72)
!68 = !DIEnumerator(name: "OBEX_HEADER_ENDOFBODY", value: 73)
!69 = !DIEnumerator(name: "OBEX_HEADER_WHO", value: 74)
!70 = !DIEnumerator(name: "OBEX_HEADER_CONNECTION_ID", value: 203)
!71 = !DIEnumerator(name: "OBEX_HEADER_APP_PARAMETERS", value: 76)
!72 = !DIEnumerator(name: "OBEX_HEADER_AUTH_CHALLENGE", value: 77)
!73 = !DIEnumerator(name: "OBEX_HEADER_AUTH_RESPONSE", value: 78)
!74 = !DIEnumerator(name: "OBEX_HEADER_CREATOR_ID", value: 207)
!75 = !DIEnumerator(name: "OBEX_HEADER_WAN_UUID", value: 80)
!76 = !DIEnumerator(name: "OBEX_HEADER_OBJ_CLASS", value: 81)
!77 = !DIEnumerator(name: "OBEX_HEADER_SESSION_PARAM", value: 82)
!78 = !DIEnumerator(name: "OBEX_HEADER_SESSION_SEQUENCE_NUM", value: 147)
!79 = !{!80, !82, !84, !87}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 48, baseType: !88)
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !{!0, !90, !128}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "UUID", scope: !92, file: !3, line: 32, type: !124, isLocal: true, isDefinition: true)
!92 = distinct !DISubprogram(name: "obex_connection_req", scope: !3, file: !3, line: 25, type: !93, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !99)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !97, !98, !95}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 44, baseType: !96)
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !85, line: 46, baseType: !86)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!99 = !{!100, !101, !102, !103, !119, !121, !122, !123}
!100 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !92, file: !3, line: 25, type: !97)
!101 = !DILocalVariable(name: "head_type", arg: 2, scope: !92, file: !3, line: 25, type: !98)
!102 = !DILocalVariable(name: "number", arg: 3, scope: !92, file: !3, line: 25, type: !95)
!103 = !DILocalVariable(name: "conn_op", scope: !92, file: !3, line: 27, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "Obex_connect_t", file: !6, line: 93, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Obex_connect", file: !6, line: 86, size: 56, elements: !106)
!106 = !{!107, !110, !112, !113, !114, !115}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !105, file: !6, line: 87, baseType: !108, size: 8)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 11, baseType: !96)
!109 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_len", scope: !105, file: !6, line: 88, baseType: !111, size: 16, offset: 8)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 13, baseType: !86)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !105, file: !6, line: 89, baseType: !108, size: 8, offset: 24)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !105, file: !6, line: 90, baseType: !108, size: 8, offset: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "max_pkt_len", scope: !105, file: !6, line: 91, baseType: !111, size: 16, offset: 40)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "data_optional_headers", scope: !105, file: !6, line: 92, baseType: !116, offset: 56)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 0)
!119 = !DILocalVariable(name: "i", scope: !92, file: !3, line: 28, type: !120)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DILocalVariable(name: "begin_index", scope: !92, file: !3, line: 29, type: !97)
!122 = !DILocalVariable(name: "end_index", scope: !92, file: !3, line: 30, type: !97)
!123 = !DILocalVariable(name: "head_len", scope: !92, file: !3, line: 31, type: !97)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "send_cmd_buf", scope: !2, file: !3, line: 22, type: !130, isLocal: false, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 400, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 50)
!133 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!134 = !{i32 2, !"Dwarf Version", i32 4}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!137 = !DILocation(line: 25, column: 28, scope: !92)
!138 = !DILocation(line: 25, column: 51, scope: !92)
!139 = !DILocation(line: 25, column: 65, scope: !92)
!140 = !DILocation(line: 27, column: 20, scope: !92)
!141 = !DILocation(line: 39, column: 27, scope: !92)
!142 = !DILocation(line: 29, column: 9, scope: !92)
!143 = !DILocation(line: 28, column: 9, scope: !92)
!144 = !DILocation(line: 42, column: 22, scope: !145)
!145 = !DILexicalBlockFile(scope: !146, file: !3, discriminator: 1)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 42, column: 5)
!147 = distinct !DILexicalBlock(scope: !92, file: !3, line: 42, column: 5)
!148 = !DILocation(line: 42, column: 20, scope: !145)
!149 = !DILocation(line: 42, column: 5, scope: !150)
!150 = !DILexicalBlockFile(scope: !147, file: !3, discriminator: 1)
!151 = !DILocation(line: 43, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !3, line: 42, column: 36)
!153 = !{!154, !154, i64 0}
!154 = !{!"omnipotent char", !155, i64 0}
!155 = !{!"Simple C/C++ TBAA"}
!156 = !DILocation(line: 43, column: 9, scope: !152)
!157 = !DILocation(line: 31, column: 9, scope: !92)
!158 = !DILocation(line: 47, column: 25, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !3, line: 43, column: 31)
!160 = !DILocation(line: 30, column: 9, scope: !92)
!161 = !DILocation(line: 48, column: 31, scope: !159)
!162 = !DILocation(line: 49, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 49, column: 13)
!164 = !DILocation(line: 49, column: 13, scope: !159)
!165 = !DILocation(line: 49, column: 13, scope: !166)
!166 = !DILexicalBlockFile(scope: !163, file: !3, discriminator: 1)
!167 = !DILocation(line: 42, column: 32, scope: !168)
!168 = !DILexicalBlockFile(scope: !146, file: !3, discriminator: 2)
!169 = distinct !{!169, !170, !171}
!170 = !DILocation(line: 42, column: 5, scope: !147)
!171 = !DILocation(line: 54, column: 5, scope: !147)
!172 = !DILocation(line: 55, column: 5, scope: !92)
!173 = !DILocation(line: 56, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !92, file: !3, line: 56, column: 5)
!175 = !DILocation(line: 56, column: 5, scope: !92)
!176 = !DILocation(line: 56, column: 5, scope: !177)
!177 = !DILexicalBlockFile(scope: !174, file: !3, discriminator: 1)
!178 = !DILocation(line: 57, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !92, file: !3, line: 57, column: 9)
!180 = !DILocation(line: 57, column: 9, scope: !92)
!181 = !DILocation(line: 58, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 57, column: 28)
!183 = !DILocation(line: 58, column: 9, scope: !182)
!184 = !DILocation(line: 61, column: 1, scope: !92)
!185 = distinct !DISubprogram(name: "fill_targer", scope: !3, file: !3, line: 161, type: !186, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!97, !98, !97, !80, !95}
!188 = !{!189, !190, !191, !192, !193}
!189 = !DILocalVariable(name: "pkt", arg: 1, scope: !185, file: !3, line: 161, type: !98)
!190 = !DILocalVariable(name: "pos", arg: 2, scope: !185, file: !3, line: 161, type: !97)
!191 = !DILocalVariable(name: "UUID", arg: 3, scope: !185, file: !3, line: 161, type: !80)
!192 = !DILocalVariable(name: "len", arg: 4, scope: !185, file: !3, line: 161, type: !95)
!193 = !DILocalVariable(name: "i", scope: !185, file: !3, line: 163, type: !97)
!194 = !DILocation(line: 161, column: 21, scope: !185)
!195 = !DILocation(line: 161, column: 30, scope: !185)
!196 = !DILocation(line: 161, column: 41, scope: !185)
!197 = !DILocation(line: 161, column: 50, scope: !185)
!198 = !DILocation(line: 163, column: 9, scope: !185)
!199 = !DILocation(line: 164, column: 12, scope: !185)
!200 = !DILocation(line: 164, column: 5, scope: !185)
!201 = !DILocation(line: 164, column: 16, scope: !185)
!202 = !DILocation(line: 165, column: 29, scope: !185)
!203 = !DILocation(line: 165, column: 33, scope: !185)
!204 = !DILocation(line: 165, column: 28, scope: !185)
!205 = !DILocation(line: 165, column: 5, scope: !185)
!206 = !DILocation(line: 167, column: 8, scope: !185)
!207 = !DILocation(line: 168, column: 19, scope: !208)
!208 = !DILexicalBlockFile(scope: !209, file: !3, discriminator: 1)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 168, column: 5)
!210 = distinct !DILexicalBlock(scope: !185, file: !3, line: 168, column: 5)
!211 = !DILocation(line: 168, column: 5, scope: !212)
!212 = !DILexicalBlockFile(scope: !210, file: !3, discriminator: 1)
!213 = !DILocation(line: 169, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 168, column: 32)
!215 = !DILocation(line: 169, column: 17, scope: !214)
!216 = !DILocation(line: 169, column: 9, scope: !214)
!217 = !DILocation(line: 169, column: 22, scope: !214)
!218 = !DILocation(line: 168, column: 28, scope: !219)
!219 = !DILexicalBlockFile(scope: !209, file: !3, discriminator: 2)
!220 = !DILocation(line: 168, column: 17, scope: !208)
!221 = distinct !{!221, !222, !223}
!222 = !DILocation(line: 168, column: 5, scope: !210)
!223 = !DILocation(line: 170, column: 5, scope: !210)
!224 = !DILocation(line: 171, column: 13, scope: !185)
!225 = !DILocation(line: 171, column: 5, scope: !185)
!226 = !DILocation(line: 171, column: 18, scope: !185)
!227 = !DILocation(line: 172, column: 5, scope: !185)
!228 = !DILocation(line: 173, column: 17, scope: !185)
!229 = !DILocation(line: 173, column: 5, scope: !185)
!230 = distinct !DISubprogram(name: "send_accept_opp_connection", scope: !3, file: !3, line: 63, type: !231, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!108, !97}
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !230, file: !3, line: 63, type: !97)
!235 = !DILocalVariable(name: "conn_op", scope: !230, file: !3, line: 66, type: !104)
!236 = !DILocation(line: 63, column: 35, scope: !230)
!237 = !DILocation(line: 66, column: 20, scope: !230)
!238 = !DILocation(line: 68, column: 23, scope: !230)
!239 = !DILocation(line: 71, column: 27, scope: !230)
!240 = !DILocation(line: 72, column: 5, scope: !230)
!241 = !DILocation(line: 73, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !230, file: !3, line: 73, column: 9)
!243 = !DILocation(line: 73, column: 9, scope: !230)
!244 = !DILocation(line: 74, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !3, line: 73, column: 28)
!246 = !DILocation(line: 74, column: 9, scope: !245)
!247 = !DILocation(line: 77, column: 1, scope: !230)
!248 = distinct !DISubprogram(name: "send_accept_disconnection", scope: !3, file: !3, line: 79, type: !249, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !97}
!251 = !{!252, !253, !257, !258}
!252 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !248, file: !3, line: 79, type: !97)
!253 = !DILocalVariable(name: "oppOpcode1", scope: !248, file: !3, line: 81, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 40, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 5)
!257 = !DILocalVariable(name: "err", scope: !248, file: !3, line: 82, type: !120)
!258 = !DILocalVariable(name: "i", scope: !248, file: !3, line: 83, type: !120)
!259 = !DILocation(line: 79, column: 36, scope: !248)
!260 = !DILocation(line: 81, column: 5, scope: !248)
!261 = !DILocation(line: 81, column: 8, scope: !248)
!262 = !DILocation(line: 83, column: 9, scope: !248)
!263 = !DILocation(line: 85, column: 5, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !3, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !248, file: !3, line: 85, column: 5)
!266 = !DILocation(line: 86, column: 15, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 85, column: 29)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 85, column: 5)
!269 = !DILocation(line: 82, column: 9, scope: !248)
!270 = !DILocation(line: 87, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 87, column: 13)
!272 = !DILocation(line: 87, column: 13, scope: !267)
!273 = !DILocation(line: 90, column: 13, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 90, column: 13)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 89, column: 16)
!276 = !DILocation(line: 90, column: 13, scope: !275)
!277 = !DILocation(line: 90, column: 13, scope: !278)
!278 = !DILexicalBlockFile(scope: !274, file: !3, discriminator: 1)
!279 = !DILocation(line: 85, column: 25, scope: !280)
!280 = !DILexicalBlockFile(scope: !268, file: !3, discriminator: 2)
!281 = !DILocation(line: 85, column: 19, scope: !282)
!282 = !DILexicalBlockFile(scope: !268, file: !3, discriminator: 1)
!283 = distinct !{!283, !284, !285}
!284 = !DILocation(line: 85, column: 5, scope: !265)
!285 = !DILocation(line: 92, column: 5, scope: !265)
!286 = !DILocation(line: 94, column: 1, scope: !248)
!287 = distinct !DISubprogram(name: "send_accept_opp_put_cmd", scope: !3, file: !3, line: 96, type: !249, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !288)
!288 = !{!289, !290, !291, !292}
!289 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !287, file: !3, line: 96, type: !97)
!290 = !DILocalVariable(name: "oppOpcode2", scope: !287, file: !3, line: 98, type: !254)
!291 = !DILocalVariable(name: "err", scope: !287, file: !3, line: 99, type: !120)
!292 = !DILocalVariable(name: "i", scope: !287, file: !3, line: 100, type: !120)
!293 = !DILocation(line: 96, column: 34, scope: !287)
!294 = !DILocation(line: 98, column: 5, scope: !287)
!295 = !DILocation(line: 98, column: 8, scope: !287)
!296 = !DILocation(line: 100, column: 9, scope: !287)
!297 = !DILocation(line: 102, column: 5, scope: !298)
!298 = !DILexicalBlockFile(scope: !299, file: !3, discriminator: 1)
!299 = distinct !DILexicalBlock(scope: !287, file: !3, line: 102, column: 5)
!300 = !DILocation(line: 103, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 102, column: 29)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 102, column: 5)
!303 = !DILocation(line: 99, column: 9, scope: !287)
!304 = !DILocation(line: 104, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 104, column: 13)
!306 = !DILocation(line: 104, column: 13, scope: !301)
!307 = !DILocation(line: 107, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 107, column: 13)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 106, column: 16)
!310 = !DILocation(line: 107, column: 13, scope: !309)
!311 = !DILocation(line: 107, column: 13, scope: !312)
!312 = !DILexicalBlockFile(scope: !308, file: !3, discriminator: 1)
!313 = !DILocation(line: 102, column: 25, scope: !314)
!314 = !DILexicalBlockFile(scope: !302, file: !3, discriminator: 2)
!315 = !DILocation(line: 102, column: 19, scope: !316)
!316 = !DILexicalBlockFile(scope: !302, file: !3, discriminator: 1)
!317 = distinct !{!317, !318, !319}
!318 = !DILocation(line: 102, column: 5, scope: !299)
!319 = !DILocation(line: 109, column: 5, scope: !299)
!320 = !DILocation(line: 110, column: 1, scope: !287)
!321 = distinct !DISubprogram(name: "send_success_ending", scope: !3, file: !3, line: 112, type: !249, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !322)
!322 = !{!323, !324}
!323 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !321, file: !3, line: 112, type: !97)
!324 = !DILocalVariable(name: "oppOpcode3", scope: !321, file: !3, line: 114, type: !254)
!325 = !DILocation(line: 112, column: 30, scope: !321)
!326 = !DILocation(line: 114, column: 5, scope: !321)
!327 = !DILocation(line: 114, column: 8, scope: !321)
!328 = !DILocation(line: 115, column: 5, scope: !321)
!329 = !DILocation(line: 116, column: 1, scope: !321)
!330 = distinct !DISubprogram(name: "send_continue_respone", scope: !3, file: !3, line: 118, type: !331, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !334)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !97, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 48, baseType: !88)
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !330, file: !3, line: 118, type: !97)
!336 = !DILocalVariable(name: "conn_id", arg: 2, scope: !330, file: !3, line: 118, type: !333)
!337 = !DILocalVariable(name: "opCode", scope: !330, file: !3, line: 120, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 80, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 10)
!341 = !DILocation(line: 118, column: 32, scope: !330)
!342 = !DILocation(line: 118, column: 55, scope: !330)
!343 = !DILocation(line: 120, column: 5, scope: !330)
!344 = !DILocation(line: 120, column: 8, scope: !330)
!345 = !DILocation(line: 121, column: 5, scope: !330)
!346 = !DILocation(line: 122, column: 5, scope: !330)
!347 = !DILocation(line: 123, column: 1, scope: !330)
!348 = distinct !DISubprogram(name: "send_abort_cmd", scope: !3, file: !3, line: 125, type: !249, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !349)
!349 = !{!350, !351}
!350 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !348, file: !3, line: 125, type: !97)
!351 = !DILocalVariable(name: "opCode", scope: !348, file: !3, line: 127, type: !254)
!352 = !DILocation(line: 125, column: 25, scope: !348)
!353 = !DILocation(line: 127, column: 5, scope: !348)
!354 = !DILocation(line: 127, column: 8, scope: !348)
!355 = !DILocation(line: 128, column: 5, scope: !348)
!356 = !DILocation(line: 129, column: 1, scope: !348)
!357 = distinct !DISubprogram(name: "fill_unicode_name", scope: !3, file: !3, line: 134, type: !358, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !361)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !98, !97, !80, !95}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 15, baseType: !88)
!361 = !{!362, !363, !364, !365, !366}
!362 = !DILocalVariable(name: "name", arg: 1, scope: !357, file: !3, line: 134, type: !98)
!363 = !DILocalVariable(name: "pos", arg: 2, scope: !357, file: !3, line: 134, type: !97)
!364 = !DILocalVariable(name: "nameInfo", arg: 3, scope: !357, file: !3, line: 134, type: !80)
!365 = !DILocalVariable(name: "len", arg: 4, scope: !357, file: !3, line: 134, type: !95)
!366 = !DILocalVariable(name: "i", scope: !357, file: !3, line: 137, type: !97)
!367 = !DILocation(line: 134, column: 27, scope: !357)
!368 = !DILocation(line: 134, column: 37, scope: !357)
!369 = !DILocation(line: 134, column: 48, scope: !357)
!370 = !DILocation(line: 134, column: 61, scope: !357)
!371 = !DILocation(line: 137, column: 9, scope: !357)
!372 = !DILocation(line: 138, column: 13, scope: !357)
!373 = !DILocation(line: 138, column: 5, scope: !357)
!374 = !DILocation(line: 138, column: 17, scope: !357)
!375 = !DILocation(line: 139, column: 35, scope: !357)
!376 = !DILocation(line: 139, column: 32, scope: !357)
!377 = !DILocation(line: 139, column: 44, scope: !357)
!378 = !DILocation(line: 139, column: 29, scope: !357)
!379 = !DILocation(line: 139, column: 5, scope: !357)
!380 = !DILocation(line: 141, column: 8, scope: !357)
!381 = !DILocation(line: 142, column: 19, scope: !382)
!382 = !DILexicalBlockFile(scope: !383, file: !3, discriminator: 1)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 142, column: 5)
!384 = distinct !DILexicalBlock(scope: !357, file: !3, line: 142, column: 5)
!385 = !DILocation(line: 142, column: 5, scope: !386)
!386 = !DILexicalBlockFile(scope: !384, file: !3, discriminator: 1)
!387 = !DILocation(line: 144, column: 23, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !3, line: 142, column: 31)
!389 = !DILocation(line: 144, column: 17, scope: !388)
!390 = !DILocation(line: 144, column: 9, scope: !388)
!391 = !DILocation(line: 144, column: 21, scope: !388)
!392 = !DILocation(line: 142, column: 27, scope: !393)
!393 = !DILexicalBlockFile(scope: !383, file: !3, discriminator: 2)
!394 = !DILocation(line: 142, column: 17, scope: !382)
!395 = distinct !{!395, !396, !397}
!396 = !DILocation(line: 142, column: 5, scope: !384)
!397 = !DILocation(line: 145, column: 5, scope: !384)
!398 = !DILocation(line: 147, column: 13, scope: !357)
!399 = !DILocation(line: 147, column: 5, scope: !357)
!400 = !DILocation(line: 147, column: 17, scope: !357)
!401 = !DILocation(line: 148, column: 12, scope: !357)
!402 = !DILocation(line: 148, column: 5, scope: !357)
!403 = distinct !DISubprogram(name: "fill_empty_name", scope: !3, file: !3, line: 154, type: !404, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!360, !98, !97}
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "name", arg: 1, scope: !403, file: !3, line: 154, type: !98)
!408 = !DILocalVariable(name: "pos", arg: 2, scope: !403, file: !3, line: 154, type: !97)
!409 = !DILocation(line: 154, column: 25, scope: !403)
!410 = !DILocation(line: 154, column: 35, scope: !403)
!411 = !DILocation(line: 156, column: 12, scope: !403)
!412 = !DILocation(line: 156, column: 5, scope: !403)
!413 = distinct !DISubprogram(name: "fill_type", scope: !3, file: !3, line: 179, type: !358, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !414)
!414 = !{!415, !416, !417, !418, !419}
!415 = !DILocalVariable(name: "type", arg: 1, scope: !413, file: !3, line: 179, type: !98)
!416 = !DILocalVariable(name: "pos", arg: 2, scope: !413, file: !3, line: 179, type: !97)
!417 = !DILocalVariable(name: "typeStr", arg: 3, scope: !413, file: !3, line: 179, type: !80)
!418 = !DILocalVariable(name: "len", arg: 4, scope: !413, file: !3, line: 179, type: !95)
!419 = !DILocalVariable(name: "i", scope: !413, file: !3, line: 181, type: !97)
!420 = !DILocation(line: 179, column: 19, scope: !413)
!421 = !DILocation(line: 179, column: 29, scope: !413)
!422 = !DILocation(line: 179, column: 40, scope: !413)
!423 = !DILocation(line: 179, column: 52, scope: !413)
!424 = !DILocation(line: 181, column: 9, scope: !413)
!425 = !DILocation(line: 182, column: 13, scope: !413)
!426 = !DILocation(line: 182, column: 5, scope: !413)
!427 = !DILocation(line: 182, column: 17, scope: !413)
!428 = !DILocation(line: 183, column: 30, scope: !413)
!429 = !DILocation(line: 183, column: 34, scope: !413)
!430 = !DILocation(line: 183, column: 29, scope: !413)
!431 = !DILocation(line: 183, column: 5, scope: !413)
!432 = !DILocation(line: 185, column: 8, scope: !413)
!433 = !DILocation(line: 186, column: 19, scope: !434)
!434 = !DILexicalBlockFile(scope: !435, file: !3, discriminator: 1)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 186, column: 5)
!436 = distinct !DILexicalBlock(scope: !413, file: !3, line: 186, column: 5)
!437 = !DILocation(line: 186, column: 5, scope: !438)
!438 = !DILexicalBlockFile(scope: !436, file: !3, discriminator: 1)
!439 = !DILocation(line: 187, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !435, file: !3, line: 186, column: 32)
!441 = !DILocation(line: 187, column: 18, scope: !440)
!442 = !DILocation(line: 187, column: 9, scope: !440)
!443 = !DILocation(line: 187, column: 23, scope: !440)
!444 = !DILocation(line: 186, column: 28, scope: !445)
!445 = !DILexicalBlockFile(scope: !435, file: !3, discriminator: 2)
!446 = !DILocation(line: 186, column: 17, scope: !434)
!447 = distinct !{!447, !448, !449}
!448 = !DILocation(line: 186, column: 5, scope: !436)
!449 = !DILocation(line: 188, column: 5, scope: !436)
!450 = !DILocation(line: 189, column: 10, scope: !413)
!451 = !DILocation(line: 189, column: 14, scope: !413)
!452 = !DILocation(line: 189, column: 5, scope: !413)
!453 = !DILocation(line: 189, column: 19, scope: !413)
!454 = !DILocation(line: 191, column: 17, scope: !413)
!455 = !DILocation(line: 191, column: 5, scope: !413)
!456 = distinct !DISubprogram(name: "fill_who_HI", scope: !3, file: !3, line: 194, type: !457, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!333, !98, !97, !98, !333}
!459 = !{!460, !461, !462, !463, !464}
!460 = !DILocalVariable(name: "op", arg: 1, scope: !456, file: !3, line: 194, type: !98)
!461 = !DILocalVariable(name: "pos", arg: 2, scope: !456, file: !3, line: 194, type: !97)
!462 = !DILocalVariable(name: "uuid", arg: 3, scope: !456, file: !3, line: 194, type: !98)
!463 = !DILocalVariable(name: "uuid_len", arg: 4, scope: !456, file: !3, line: 194, type: !333)
!464 = !DILocalVariable(name: "loopi", scope: !456, file: !3, line: 196, type: !333)
!465 = !DILocation(line: 194, column: 21, scope: !456)
!466 = !DILocation(line: 194, column: 29, scope: !456)
!467 = !DILocation(line: 194, column: 38, scope: !456)
!468 = !DILocation(line: 194, column: 48, scope: !456)
!469 = !DILocation(line: 196, column: 9, scope: !456)
!470 = !DILocation(line: 197, column: 11, scope: !456)
!471 = !DILocation(line: 197, column: 5, scope: !456)
!472 = !DILocation(line: 197, column: 15, scope: !456)
!473 = !DILocation(line: 198, column: 11, scope: !456)
!474 = !DILocation(line: 198, column: 5, scope: !456)
!475 = !DILocation(line: 198, column: 15, scope: !456)
!476 = !DILocation(line: 199, column: 26, scope: !456)
!477 = !DILocation(line: 199, column: 17, scope: !456)
!478 = !DILocation(line: 199, column: 11, scope: !456)
!479 = !DILocation(line: 199, column: 5, scope: !456)
!480 = !DILocation(line: 199, column: 15, scope: !456)
!481 = !DILocation(line: 200, column: 27, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !3, discriminator: 1)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 200, column: 5)
!484 = distinct !DILexicalBlock(scope: !456, file: !3, line: 200, column: 5)
!485 = !DILocation(line: 200, column: 5, scope: !486)
!486 = !DILexicalBlockFile(scope: !484, file: !3, discriminator: 1)
!487 = !DILocation(line: 201, column: 21, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !3, line: 200, column: 48)
!489 = !DILocation(line: 201, column: 15, scope: !488)
!490 = !DILocation(line: 201, column: 9, scope: !488)
!491 = !DILocation(line: 201, column: 19, scope: !488)
!492 = !DILocation(line: 200, column: 44, scope: !493)
!493 = !DILexicalBlockFile(scope: !483, file: !3, discriminator: 2)
!494 = distinct !{!494, !495, !496}
!495 = !DILocation(line: 200, column: 5, scope: !484)
!496 = !DILocation(line: 202, column: 5, scope: !484)
!497 = !DILocation(line: 203, column: 12, scope: !456)
!498 = !DILocation(line: 203, column: 5, scope: !456)
!499 = distinct !DISubprogram(name: "fill_length_of_object", scope: !3, file: !3, line: 209, type: !500, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!360, !98, !97, !333}
!502 = !{!503, !504, !505}
!503 = !DILocalVariable(name: "op", arg: 1, scope: !499, file: !3, line: 209, type: !98)
!504 = !DILocalVariable(name: "pos", arg: 2, scope: !499, file: !3, line: 209, type: !97)
!505 = !DILocalVariable(name: "obj_len", arg: 3, scope: !499, file: !3, line: 209, type: !333)
!506 = !DILocation(line: 209, column: 31, scope: !499)
!507 = !DILocation(line: 209, column: 39, scope: !499)
!508 = !DILocation(line: 209, column: 48, scope: !499)
!509 = !DILocation(line: 212, column: 11, scope: !499)
!510 = !DILocation(line: 212, column: 5, scope: !499)
!511 = !DILocation(line: 212, column: 15, scope: !499)
!512 = !DILocation(line: 213, column: 5, scope: !499)
!513 = !DILocation(line: 214, column: 13, scope: !499)
!514 = !DILocation(line: 214, column: 17, scope: !499)
!515 = !DILocation(line: 214, column: 5, scope: !499)
!516 = distinct !DISubprogram(name: "prase_put_packet", scope: !3, file: !3, line: 227, type: !517, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !520)
!517 = !DISubroutineType(types: !518)
!518 = !{!120, !519, !97, !95}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!520 = !{!521, !522, !523, !524, !525}
!521 = !DILocalVariable(name: "packet", arg: 1, scope: !516, file: !3, line: 227, type: !519)
!522 = !DILocalVariable(name: "size", arg: 2, scope: !516, file: !3, line: 227, type: !97)
!523 = !DILocalVariable(name: "header_name", arg: 3, scope: !516, file: !3, line: 227, type: !95)
!524 = !DILocalVariable(name: "i", scope: !516, file: !3, line: 229, type: !120)
!525 = !DILocalVariable(name: "header_name_index", scope: !516, file: !3, line: 230, type: !120)
!526 = !DILocation(line: 227, column: 32, scope: !516)
!527 = !DILocation(line: 227, column: 44, scope: !516)
!528 = !DILocation(line: 227, column: 53, scope: !516)
!529 = !DILocation(line: 229, column: 9, scope: !516)
!530 = !DILocation(line: 232, column: 21, scope: !531)
!531 = distinct !DILexicalBlock(scope: !516, file: !3, line: 232, column: 9)
!532 = !DILocation(line: 232, column: 9, scope: !516)
!533 = !DILocation(line: 233, column: 16, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !3, line: 232, column: 27)
!535 = !DILocation(line: 233, column: 9, scope: !534)
!536 = !DILocation(line: 236, column: 14, scope: !537)
!537 = !DILexicalBlockFile(scope: !516, file: !3, discriminator: 1)
!538 = !DILocation(line: 236, column: 5, scope: !537)
!539 = !DILocation(line: 230, column: 9, scope: !516)
!540 = !DILocation(line: 238, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !516, file: !3, line: 236, column: 22)
!542 = !DILocation(line: 238, column: 9, scope: !541)
!543 = !DILocation(line: 245, column: 21, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !3, line: 238, column: 28)
!545 = !DILocation(line: 246, column: 13, scope: !544)
!546 = !DILocation(line: 248, column: 21, scope: !544)
!547 = !DILocation(line: 249, column: 13, scope: !544)
!548 = !DILocation(line: 251, column: 13, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !3, line: 251, column: 13)
!550 = !DILocation(line: 251, column: 13, scope: !544)
!551 = !DILocation(line: 251, column: 13, scope: !552)
!552 = !DILexicalBlockFile(scope: !549, file: !3, discriminator: 1)
!553 = !DILocation(line: 262, column: 21, scope: !544)
!554 = !DILocation(line: 263, column: 13, scope: !544)
!555 = !DILocation(line: 269, column: 21, scope: !544)
!556 = !DILocation(line: 270, column: 13, scope: !544)
!557 = !DILocation(line: 279, column: 13, scope: !558)
!558 = distinct !DILexicalBlock(scope: !544, file: !3, line: 279, column: 13)
!559 = !DILocation(line: 279, column: 13, scope: !544)
!560 = !DILocation(line: 279, column: 13, scope: !561)
!561 = !DILexicalBlockFile(scope: !558, file: !3, discriminator: 1)
!562 = !DILocation(line: 283, column: 13, scope: !563)
!563 = distinct !DILexicalBlock(scope: !541, file: !3, line: 283, column: 13)
!564 = !DILocation(line: 283, column: 39, scope: !563)
!565 = !DILocation(line: 283, column: 13, scope: !541)
!566 = distinct !{!566, !567, !568}
!567 = !DILocation(line: 236, column: 5, scope: !516)
!568 = !DILocation(line: 286, column: 5, scope: !516)
!569 = !DILocation(line: 288, column: 1, scope: !516)
