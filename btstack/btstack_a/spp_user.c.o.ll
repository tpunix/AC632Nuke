; ModuleID = 'spp_user.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.spp_operation_t = type { i32 (i8*)*, i32 (i8*, i8*, i16)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 ()* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@spp_recieve_cbk = hidden local_unnamed_addr global void (i8*, i8*, i16)* null, align 4, !dbg !170
@spp_state_cbk = hidden local_unnamed_addr global void (i8)* null, align 4, !dbg !181
@user_spp_send_busy = internal global i8 0, align 1, !dbg !186
@user_spp_send_wakeup = internal unnamed_addr global void ()* null, align 4, !dbg !189
@user_spp_send_pool = internal unnamed_addr global i8* null, align 4, !dbg !194
@.str.3 = private unnamed_addr constant [20 x i8] c"\0A-spp_rx(%d)######:\00", align 1
@spp_operation = internal constant %struct.spp_operation_t { i32 (i8*)* bitcast (void (i8*)* @user_spp_disconnect to i32 (i8*)*), i32 (i8*, i8*, i16)* bitcast (i32 (i8*, i8*, i32)* @user_spp_send to i32 (i8*, i8*, i16)*), i32 (i8*, i8*)* bitcast (void (i8*, i8*)* @user_spp_regiser_wakeup_send to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (void (i8*, i8*)* @user_spp_regiser_recieve to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (void (i8*, i8*)* @user_spp_regiest_state_cbk to i32 (i8*, i8*)*), i32 ()* @user_spp_busy_state }, align 4, !dbg !196
@.str.5 = private unnamed_addr constant [33 x i8] c"SPP_USER_ERR_SEND_OVER_LIMIT,%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\0A-spp_tx(%d):\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SPP_BUFF NULL!!!\00", align 1
@str = private unnamed_addr constant [40 x i8] c"spp disconnect ########################\00"
@str.8 = private unnamed_addr constant [37 x i8] c"spp connect ########################\00"
@str.9 = private unnamed_addr constant [24 x i8] c"SPP_BUFF MALLOC FAIL!!!\00"
@str.10 = private unnamed_addr constant [28 x i8] c"SPP_USER_ERR_SEND_BUFF_BUSY\00"

; Function Attrs: nounwind optsize
define hidden void @user_spp_send_ok_callback(i32) local_unnamed_addr #0 !dbg !226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !230, metadata !DIExpression()), !dbg !231
  store volatile i8 0, i8* @user_spp_send_busy, align 1, !dbg !232, !tbaa !233
  %2 = load i32, i32* @app_info_debug_enable, align 4, !dbg !236, !tbaa !238
  %3 = and i32 %2, 8, !dbg !236
  %4 = icmp eq i32 %3, 0, !dbg !236
  br i1 %4, label %7, label %5, !dbg !240

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @putchar(i32 75) #7, !dbg !241
  br label %7, !dbg !241

; <label>:7:                                      ; preds = %5, %1
  %8 = load void ()*, void ()** @user_spp_send_wakeup, align 4, !dbg !243, !tbaa !245
  %9 = icmp eq void ()* %8, null, !dbg !243
  br i1 %9, label %11, label %10, !dbg !247

; <label>:10:                                     ; preds = %7
  tail call void %8() #8, !dbg !248
  br label %11, !dbg !250

; <label>:11:                                     ; preds = %10, %7
  ret void, !dbg !251
}

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define weak hidden i32 @user_spp_state_specific(i8 zeroext) local_unnamed_addr #0 !dbg !252 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !256, metadata !DIExpression()), !dbg !257
  ret i32 0, !dbg !258
}

; Function Attrs: nounwind optsize
define hidden void @user_spp_data_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !259 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !263, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i16 %1, metadata !264, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i8* %2, metadata !265, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i16 %3, metadata !266, metadata !DIExpression()), !dbg !270
  switch i8 %0, label %50 [
    i8 1, label %5
    i8 2, label %19
    i8 7, label %30
  ], !dbg !271

; <label>:5:                                      ; preds = %4
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.8, i32 0, i32 0)), !dbg !272
  store volatile i8 0, i8* @user_spp_send_busy, align 1, !dbg !274, !tbaa !233
  %7 = load i8*, i8** @user_spp_send_pool, align 4, !dbg !275, !tbaa !245
  %8 = icmp eq i8* %7, null, !dbg !277
  br i1 %8, label %9, label %14, !dbg !278

; <label>:9:                                      ; preds = %5
  %10 = tail call i8* @malloc(i32 660) #7, !dbg !279
  store i8* %10, i8** @user_spp_send_pool, align 4, !dbg !281, !tbaa !245
  %11 = icmp eq i8* %10, null, !dbg !282
  br i1 %11, label %12, label %14, !dbg !284

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.9, i32 0, i32 0)), !dbg !285
  br label %14, !dbg !287

; <label>:14:                                     ; preds = %12, %9, %5
  tail call void @bt_3th_spp_state_handle(i8 zeroext 1) #8, !dbg !288
  %15 = tail call i32 @user_spp_state_specific(i8 zeroext 1) #7, !dbg !289
  call void @llvm.dbg.value(metadata i8 1, metadata !290, metadata !DIExpression()), !dbg !293
  %16 = load void (i8)*, void (i8)** @spp_state_cbk, align 4, !dbg !295, !tbaa !245
  %17 = icmp eq void (i8)* %16, null, !dbg !295
  br i1 %17, label %50, label %18, !dbg !297

; <label>:18:                                     ; preds = %14
  tail call void %16(i8 zeroext 1) #8, !dbg !298
  br label %50, !dbg !300

; <label>:19:                                     ; preds = %4
  %20 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str, i32 0, i32 0)), !dbg !301
  %21 = load i8*, i8** @user_spp_send_pool, align 4, !dbg !302, !tbaa !245
  %22 = icmp eq i8* %21, null, !dbg !302
  br i1 %22, label %24, label %23, !dbg !304

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %21) #7, !dbg !305
  store i8* null, i8** @user_spp_send_pool, align 4, !dbg !307, !tbaa !245
  br label %24, !dbg !308

; <label>:24:                                     ; preds = %23, %19
  call void @llvm.dbg.value(metadata i8 2, metadata !290, metadata !DIExpression()), !dbg !309
  %25 = load void (i8)*, void (i8)** @spp_state_cbk, align 4, !dbg !311, !tbaa !245
  %26 = icmp eq void (i8)* %25, null, !dbg !311
  br i1 %26, label %28, label %27, !dbg !312

; <label>:27:                                     ; preds = %24
  tail call void %25(i8 zeroext 2) #8, !dbg !313
  br label %28, !dbg !314

; <label>:28:                                     ; preds = %27, %24
  tail call void @bt_3th_spp_state_handle(i8 zeroext 2) #8, !dbg !315
  %29 = tail call i32 @user_spp_state_specific(i8 zeroext 2) #7, !dbg !316
  br label %50, !dbg !317

; <label>:30:                                     ; preds = %4
  %31 = load i32, i32* @app_info_debug_enable, align 4, !dbg !318, !tbaa !238
  %32 = and i32 %31, 8, !dbg !318
  %33 = icmp eq i32 %32, 0, !dbg !318
  br i1 %33, label %38, label %34, !dbg !320

; <label>:34:                                     ; preds = %30
  %35 = zext i16 %3 to i32, !dbg !321
  %36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %35) #7, !dbg !323
  %37 = load i32, i32* @app_info_debug_enable, align 4, !tbaa !238
  br label %38, !dbg !323

; <label>:38:                                     ; preds = %34, %30
  %39 = phi i32 [ %31, %30 ], [ %37, %34 ], !dbg !324
  %40 = and i32 %39, 8, !dbg !324
  %41 = icmp eq i32 %40, 0, !dbg !324
  br i1 %41, label %44, label %42, !dbg !326

; <label>:42:                                     ; preds = %38
  %43 = zext i16 %3 to i32, !dbg !327
  tail call void @put_buf(i8* %2, i32 %43) #8, !dbg !327
  br label %44, !dbg !327

; <label>:44:                                     ; preds = %42, %38
  %45 = load void (i8*, i8*, i16)*, void (i8*, i8*, i16)** @spp_recieve_cbk, align 4, !dbg !330, !tbaa !245
  %46 = icmp eq void (i8*, i8*, i16)* %45, null, !dbg !330
  br i1 %46, label %50, label %47, !dbg !332

; <label>:47:                                     ; preds = %44
  %48 = zext i16 %1 to i32, !dbg !333
  %49 = inttoptr i32 %48 to i8*, !dbg !333
  tail call void %45(i8* %49, i8* %2, i16 zeroext %3) #8, !dbg !335
  br label %50, !dbg !336

; <label>:50:                                     ; preds = %47, %44, %28, %18, %14, %4
  ret void, !dbg !337
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bt_3th_spp_state_handle(i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @spp_get_operation_table(%struct.spp_operation_t** nocapture) local_unnamed_addr #0 !dbg !338 {
  call void @llvm.dbg.value(metadata %struct.spp_operation_t** %0, metadata !344, metadata !DIExpression()), !dbg !345
  store volatile i8 0, i8* @user_spp_send_busy, align 1, !dbg !346, !tbaa !233
  store %struct.spp_operation_t* @spp_operation, %struct.spp_operation_t** %0, align 4, !dbg !347, !tbaa !245
  ret void, !dbg !348
}

; Function Attrs: nounwind optsize
define internal void @user_spp_disconnect(i8* nocapture readnone) #0 !dbg !349 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !353, metadata !DIExpression()), !dbg !354
  store volatile i8 0, i8* @user_spp_send_busy, align 1, !dbg !355, !tbaa !233
  call void @llvm.dbg.value(metadata i8 3, metadata !290, metadata !DIExpression()), !dbg !356
  %2 = load void (i8)*, void (i8)** @spp_state_cbk, align 4, !dbg !358, !tbaa !245
  %3 = icmp eq void (i8)* %2, null, !dbg !358
  br i1 %3, label %5, label %4, !dbg !359

; <label>:4:                                      ; preds = %1
  tail call void %2(i8 zeroext 3) #8, !dbg !360
  br label %5, !dbg !361

; <label>:5:                                      ; preds = %4, %1
  %6 = tail call i32 @user_send_cmd_prepare(i32 112, i16 zeroext 0, i8* null) #8, !dbg !362
  ret void, !dbg !363
}

; Function Attrs: nounwind optsize
define internal i32 @user_spp_send(i8* nocapture readnone, i8*, i32) #0 !dbg !364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %1, metadata !371, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %2, metadata !372, metadata !DIExpression()), !dbg !378
  %4 = load volatile i8, i8* @user_spp_send_busy, align 1, !dbg !379, !tbaa !233
  %5 = icmp eq i8 %4, 1, !dbg !381
  br i1 %5, label %6, label %8, !dbg !382

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.10, i32 0, i32 0)), !dbg !383
  br label %36, !dbg !385

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i32 %2, 0, !dbg !386
  br i1 %9, label %36, label %10, !dbg !387

; <label>:10:                                     ; preds = %8
  %11 = icmp ugt i32 %2, 660, !dbg !388
  br i1 %11, label %12, label %14, !dbg !390

; <label>:12:                                     ; preds = %10
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %2) #7, !dbg !391
  br label %36, !dbg !393

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* @app_info_debug_enable, align 4, !dbg !394, !tbaa !238
  %16 = and i32 %15, 8, !dbg !394
  %17 = icmp eq i32 %16, 0, !dbg !394
  br i1 %17, label %21, label %18, !dbg !396

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %2) #7, !dbg !397
  %20 = load i32, i32* @app_info_debug_enable, align 4, !tbaa !238
  br label %21, !dbg !397

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %18 ], !dbg !399
  %23 = and i32 %22, 8, !dbg !399
  %24 = icmp eq i32 %23, 0, !dbg !399
  br i1 %24, label %26, label %25, !dbg !401

; <label>:25:                                     ; preds = %21
  tail call void @put_buf(i8* %1, i32 %2) #8, !dbg !402
  br label %26, !dbg !402

; <label>:26:                                     ; preds = %25, %21
  %27 = load i8*, i8** @user_spp_send_pool, align 4, !dbg !405, !tbaa !245
  %28 = icmp eq i8* %27, null, !dbg !407
  br i1 %28, label %29, label %31, !dbg !408

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !409
  br label %36, !dbg !411

; <label>:31:                                     ; preds = %26
  store volatile i8 1, i8* @user_spp_send_busy, align 1, !dbg !412, !tbaa !233
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %27, i8* %1, i32 %2, i32 1, i1 false), !dbg !413
  %32 = trunc i32 %2 to i16, !dbg !414
  %33 = tail call i32 @user_send_cmd_prepare(i32 109, i16 zeroext %32, i8* nonnull %27) #8, !dbg !415
  call void @llvm.dbg.value(metadata i32 %33, metadata !373, metadata !DIExpression()), !dbg !416
  %34 = icmp eq i32 %33, 0, !dbg !417
  br i1 %34, label %36, label %35, !dbg !419

; <label>:35:                                     ; preds = %31
  store volatile i8 0, i8* @user_spp_send_busy, align 1, !dbg !420, !tbaa !233
  br label %36

; <label>:36:                                     ; preds = %35, %31, %29, %12, %8, %6
  %37 = phi i32 [ 1, %6 ], [ 2, %12 ], [ 2, %29 ], [ 3, %35 ], [ 0, %31 ], [ 0, %8 ]
  ret i32 %37, !dbg !422
}

; Function Attrs: nounwind optsize
define internal void @user_spp_regiser_wakeup_send(i8* nocapture readnone, i8*) #0 !dbg !423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %1, metadata !428, metadata !DIExpression()), !dbg !430
  store i8* %1, i8** bitcast (void ()** @user_spp_send_wakeup to i8**), align 4, !dbg !431, !tbaa !245
  ret void, !dbg !432
}

; Function Attrs: nounwind optsize
define internal void @user_spp_regiser_recieve(i8* nocapture readnone, i8*) #0 !dbg !433 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !435, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i8* %1, metadata !436, metadata !DIExpression()), !dbg !438
  store i8* %1, i8** bitcast (void (i8*, i8*, i16)** @spp_recieve_cbk to i8**), align 4, !dbg !439, !tbaa !245
  ret void, !dbg !440
}

; Function Attrs: nounwind optsize
define internal void @user_spp_regiest_state_cbk(i8* nocapture readnone, i8*) #0 !dbg !441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()), !dbg !446
  store i8* %1, i8** bitcast (void (i8)** @spp_state_cbk to i8**), align 4, !dbg !447, !tbaa !245
  ret void, !dbg !448
}

; Function Attrs: norecurse nounwind optsize
define internal i32 @user_spp_busy_state() #3 !dbg !449 {
  %1 = load volatile i8, i8* @user_spp_send_busy, align 1, !dbg !451, !tbaa !233
  %2 = zext i8 %1 to i32, !dbg !451
  ret i32 %2, !dbg !452
}

; Function Attrs: optsize
declare i32 @user_send_cmd_prepare(i32, i16 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!223, !224}
!llvm.ident = !{!225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !222, line: 190, type: !205, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167, globals: !169)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_user.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !14, !161}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 26, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/common/spp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "SPP_USER_ST_NULL", value: 0)
!9 = !DIEnumerator(name: "SPP_USER_ST_CONNECT", value: 1)
!10 = !DIEnumerator(name: "SPP_USER_ST_DISCONN", value: 2)
!11 = !DIEnumerator(name: "SPP_USER_ST_WAIT_DISC", value: 3)
!12 = !DIEnumerator(name: "SPP_USER_ST_CONNECT_OTA", value: 4)
!13 = !DIEnumerator(name: "SPP_USER_ST_DISCONN_OTA", value: 5)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 12, size: 32, elements: !16)
!15 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!17 = !DIEnumerator(name: "USER_CTRL_START_CONNECTION", value: 0)
!18 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR", value: 1)
!19 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR_MANUALLY", value: 2)
!20 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_SPP_VIA_ADDR", value: 3)
!21 = !DIEnumerator(name: "USER_CTRL_DISCONNECTION_HCI", value: 4)
!22 = !DIEnumerator(name: "USER_CTRL_CONNECTION_CANCEL", value: 5)
!23 = !DIEnumerator(name: "USER_CTRL_READ_REMOTE_NAME", value: 6)
!24 = !DIEnumerator(name: "USER_CTRL_PAUSE_MUSIC", value: 7)
!25 = !DIEnumerator(name: "USER_CTRL_SCO_LINK", value: 8)
!26 = !DIEnumerator(name: "USER_CTRL_CONN_SCO", value: 9)
!27 = !DIEnumerator(name: "USER_CTRL_DISCONN_SCO", value: 10)
!28 = !DIEnumerator(name: "USER_CTRL_DISCONN_SDP_MASTER", value: 11)
!29 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_DISABLE", value: 12)
!30 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_ENABLE", value: 13)
!31 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_DISABLE", value: 14)
!32 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_ENABLE", value: 15)
!33 = !DIEnumerator(name: "USER_CTRL_SEARCH_DEVICE", value: 16)
!34 = !DIEnumerator(name: "USER_CTRL_INQUIRY_CANCEL", value: 17)
!35 = !DIEnumerator(name: "USER_CTRL_PAGE_CANCEL", value: 18)
!36 = !DIEnumerator(name: "USER_CTRL_SNIFF_IN", value: 19)
!37 = !DIEnumerator(name: "USER_CTRL_SNIFF_EXIT", value: 20)
!38 = !DIEnumerator(name: "USER_CTRL_ALL_SNIFF_EXIT", value: 21)
!39 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_BEGIN", value: 22)
!40 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_UP", value: 23)
!41 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_DOWN", value: 24)
!42 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_SET_VOLUME", value: 25)
!43 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_GET_VOLUME", value: 26)
!44 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_ANSWER", value: 27)
!45 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_HANGUP", value: 28)
!46 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_LAST_NO", value: 29)
!47 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_CURRENT", value: 30)
!48 = !DIEnumerator(name: "USER_CTRL_HFP_DTMF_TONES", value: 31)
!49 = !DIEnumerator(name: "USER_CTRL_DIAL_NUMBER", value: 32)
!50 = !DIEnumerator(name: "USER_CTRL_SEND_BATTERY", value: 33)
!51 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_STATUS", value: 34)
!52 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_OPEN", value: 35)
!53 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_CLOSE", value: 36)
!54 = !DIEnumerator(name: "USER_CTRL_HFP_GET_PHONE_DATE_TIME", value: 37)
!55 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_SEND_BIA", value: 38)
!56 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_GET_MANUFACTURER", value: 39)
!57 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_UPDATE_BATTARY", value: 40)
!58 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1", value: 41)
!59 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2", value: 42)
!60 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1X", value: 43)
!61 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2X", value: 44)
!62 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER3", value: 45)
!63 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_REJECT", value: 46)
!64 = !DIEnumerator(name: "USER_CTRL_HFP_DISCONNECT", value: 47)
!65 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_END", value: 48)
!66 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_BEGIN", value: 49)
!67 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PLAY", value: 50)
!68 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PAUSE", value: 51)
!69 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_STOP", value: 52)
!70 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_NEXT", value: 53)
!71 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PREV", value: 54)
!72 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_FORWARD", value: 55)
!73 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REWIND", value: 56)
!74 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REPEAT_MODE", value: 57)
!75 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SHUFFLE_MODE", value: 58)
!76 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_PLAY_TIME", value: 59)
!77 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SEND_VOL", value: 60)
!78 = !DIEnumerator(name: "USER_CTRL_AVCTP_DISCONNECT", value: 61)
!79 = !DIEnumerator(name: "USER_CTRL_AVCTP_CONN", value: 62)
!80 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_END", value: 63)
!81 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_BEGIN", value: 64)
!82 = !DIEnumerator(name: "USER_CTRL_AUTO_CONN_A2DP", value: 65)
!83 = !DIEnumerator(name: "USER_CTRL_CONN_A2DP", value: 66)
!84 = !DIEnumerator(name: "USER_CTRL_DISCONN_A2DP", value: 67)
!85 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_START", value: 68)
!86 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_CLOSE", value: 69)
!87 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_SUSPEND", value: 70)
!88 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_GET_CONFIGURATION", value: 71)
!89 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_ABORT", value: 72)
!90 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_END", value: 73)
!91 = !DIEnumerator(name: "USER_CTRL_POWER_OFF", value: 74)
!92 = !DIEnumerator(name: "USER_CTRL_POWER_ON", value: 75)
!93 = !DIEnumerator(name: "USER_CTRL_HID_CMD_BEGIN", value: 76)
!94 = !DIEnumerator(name: "USER_CTRL_HID_CONN", value: 77)
!95 = !DIEnumerator(name: "USER_CTRL_HID_ANDROID", value: 78)
!96 = !DIEnumerator(name: "USER_CTRL_HID_IOS", value: 79)
!97 = !DIEnumerator(name: "USER_CTRL_HID_BOTH", value: 80)
!98 = !DIEnumerator(name: "USER_CTRL_HID_DISCONNECT", value: 81)
!99 = !DIEnumerator(name: "USER_CTRL_HID_HOME", value: 82)
!100 = !DIEnumerator(name: "USER_CTRL_HID_RETURN", value: 83)
!101 = !DIEnumerator(name: "USER_CTRL_HID_LEFTARROW", value: 84)
!102 = !DIEnumerator(name: "USER_CTRL_HID_RIGHTARROW", value: 85)
!103 = !DIEnumerator(name: "USER_CTRL_HID_VOL_UP", value: 86)
!104 = !DIEnumerator(name: "USER_CTRL_HID_VOL_DOWN", value: 87)
!105 = !DIEnumerator(name: "USER_CTRL_HID_SEND_DATA", value: 88)
!106 = !DIEnumerator(name: "USER_CTRL_HID_CMD_END", value: 89)
!107 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_BEGIN", value: 90)
!108 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN", value: 91)
!109 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN", value: 92)
!110 = !DIEnumerator(name: "USER_CTRL_MONITOR", value: 93)
!111 = !DIEnumerator(name: "USER_CTRL_TWS_CONNEC_VIA_ADDR", value: 94)
!112 = !DIEnumerator(name: "USER_CTRL_TWS_COTROL_CDM", value: 95)
!113 = !DIEnumerator(name: "USER_CTRL_TWS_CLEAR_INFO", value: 96)
!114 = !DIEnumerator(name: "USER_CTRL_TWS_DISCONNECTION_HCI", value: 97)
!115 = !DIEnumerator(name: "USER_CTRL_TWS_START_CONNECTION", value: 98)
!116 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM", value: 99)
!117 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_SBC_CDM", value: 100)
!118 = !DIEnumerator(name: "USER_CTRL_TWS_RESTART_SBC_CDM", value: 101)
!119 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_CANCEL", value: 102)
!120 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN_CANCEL", value: 103)
!121 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM_FUN", value: 104)
!122 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_START", value: 105)
!123 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_CLOSE", value: 106)
!124 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_END", value: 107)
!125 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_BEGIN", value: 108)
!126 = !DIEnumerator(name: "USER_CTRL_SPP_SEND_DATA", value: 109)
!127 = !DIEnumerator(name: "USER_CTRL_SPP_TRY_SEND_DATA", value: 110)
!128 = !DIEnumerator(name: "USER_CTRL_SPP_UPDATA_DATA", value: 111)
!129 = !DIEnumerator(name: "USER_CTRL_SPP_DISCONNECT", value: 112)
!130 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_END", value: 113)
!131 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_BEGIN", value: 114)
!132 = !DIEnumerator(name: "USER_CTRL_PBG_SEND_DATA", value: 115)
!133 = !DIEnumerator(name: "USER_CTRL_PBG_TRY_SEND_DATA", value: 116)
!134 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_END", value: 117)
!135 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_BEGIN", value: 118)
!136 = !DIEnumerator(name: "USER_CTRL_ADT_CONNECT", value: 119)
!137 = !DIEnumerator(name: "USER_CTRL_ADT_KEY_MIC_OPEN", value: 120)
!138 = !DIEnumerator(name: "USER_CTRL_ADT_SEND_DATA", value: 121)
!139 = !DIEnumerator(name: "USER_CTRL_ADT_TRY_SEND_DATA", value: 122)
!140 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_END", value: 123)
!141 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_BEGIN", value: 124)
!142 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_PART", value: 125)
!143 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_ALL", value: 126)
!144 = !DIEnumerator(name: "USER_CTRL_PBAP_STOP_READING", value: 127)
!145 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_END", value: 128)
!146 = !DIEnumerator(name: "USER_CTRL_DEL_ALL_REMOTE_INFO", value: 129)
!147 = !DIEnumerator(name: "USER_CTRL_TEST_KEY", value: 130)
!148 = !DIEnumerator(name: "USER_CTRL_SEND_USER_INFO", value: 131)
!149 = !DIEnumerator(name: "USER_CTRL_KEYPRESS", value: 132)
!150 = !DIEnumerator(name: "USER_CTRL_PAIR", value: 133)
!151 = !DIEnumerator(name: "USER_CTRL_AFH_CHANNEL", value: 134)
!152 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_CREATE", value: 135)
!153 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_DEL", value: 136)
!154 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_INC", value: 137)
!155 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_DEC", value: 138)
!156 = !DIEnumerator(name: "USER_CTRL_CMD_CHANGE_PROFILE_MODE", value: 139)
!157 = !DIEnumerator(name: "USER_CTRL_CMD_RESERVE_INDEX4", value: 140)
!158 = !DIEnumerator(name: "USER_CTRL_CMD_RESUME_STACK", value: 141)
!159 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_MUSIC_INFO", value: 142)
!160 = !DIEnumerator(name: "USER_CTRL_LAST", value: 143)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 19, size: 32, elements: !162)
!162 = !{!163, !164, !165, !166}
!163 = !DIEnumerator(name: "SPP_USER_ERR_NONE", value: 0)
!164 = !DIEnumerator(name: "SPP_USER_ERR_SEND_BUFF_BUSY", value: 1)
!165 = !DIEnumerator(name: "SPP_USER_ERR_SEND_OVER_LIMIT", value: 2)
!166 = !DIEnumerator(name: "SPP_USER_ERR_SEND_FAIL", value: 3)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!169 = !{!0, !170, !181, !186, !189, !194, !196}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "spp_recieve_cbk", scope: !2, file: !3, line: 20, type: !172, isLocal: false, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !168, !175, !179}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !177, line: 44, baseType: !178)
!177 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !177, line: 46, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "spp_state_cbk", scope: !2, file: !3, line: 21, type: !183, isLocal: false, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !176}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "user_spp_send_busy", scope: !2, file: !3, line: 19, type: !188, isLocal: true, isDefinition: true)
!188 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "user_spp_send_wakeup", scope: !2, file: !3, line: 18, type: !191, isLocal: true, isDefinition: true)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 32)
!192 = !DISubroutineType(types: !193)
!193 = !{null}
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "user_spp_send_pool", scope: !2, file: !3, line: 17, type: !175, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "spp_operation", scope: !2, file: !3, line: 155, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spp_operation_t", file: !6, line: 10, size: 192, elements: !200)
!200 = !{!201, !206, !212, !216, !217, !218}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !199, file: !6, line: 11, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !168}
!205 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !199, file: !6, line: 12, baseType: !207, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!208 = !DISubroutineType(types: !209)
!209 = !{!205, !168, !168, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !211, line: 13, baseType: !180)
!211 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "regist_wakeup_send", scope: !199, file: !6, line: 13, baseType: !213, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DISubroutineType(types: !215)
!215 = !{!205, !168, !168}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "regist_recieve_cbk", scope: !199, file: !6, line: 14, baseType: !213, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "regist_state_cbk", scope: !199, file: !6, line: 15, baseType: !213, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "busy_state", scope: !199, file: !6, line: 16, baseType: !219, size: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!220 = !DISubroutineType(types: !221)
!221 = !{!205}
!222 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!223 = !{i32 2, !"Dwarf Version", i32 4}
!224 = !{i32 2, !"Debug Info Version", i32 3}
!225 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!226 = distinct !DISubprogram(name: "user_spp_send_ok_callback", scope: !3, file: !3, line: 24, type: !227, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !205}
!229 = !{!230}
!230 = !DILocalVariable(name: "err_code", arg: 1, scope: !226, file: !3, line: 24, type: !205)
!231 = !DILocation(line: 24, column: 36, scope: !226)
!232 = !DILocation(line: 26, column: 24, scope: !226)
!233 = !{!234, !234, i64 0}
!234 = !{!"omnipotent char", !235, i64 0}
!235 = !{!"Simple C/C++ TBAA"}
!236 = !DILocation(line: 27, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !226, file: !3, line: 27, column: 5)
!238 = !{!239, !239, i64 0}
!239 = !{!"int", !234, i64 0}
!240 = !DILocation(line: 27, column: 5, scope: !226)
!241 = !DILocation(line: 27, column: 5, scope: !242)
!242 = !DILexicalBlockFile(scope: !237, file: !3, discriminator: 1)
!243 = !DILocation(line: 28, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !226, file: !3, line: 28, column: 9)
!245 = !{!246, !246, i64 0}
!246 = !{!"any pointer", !234, i64 0}
!247 = !DILocation(line: 28, column: 9, scope: !226)
!248 = !DILocation(line: 29, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 28, column: 31)
!250 = !DILocation(line: 30, column: 5, scope: !249)
!251 = !DILocation(line: 31, column: 1, scope: !226)
!252 = distinct !DISubprogram(name: "user_spp_state_specific", scope: !3, file: !3, line: 99, type: !253, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!205, !176}
!255 = !{!256}
!256 = !DILocalVariable(name: "type", arg: 1, scope: !252, file: !3, line: 99, type: !176)
!257 = !DILocation(line: 99, column: 32, scope: !252)
!258 = !DILocation(line: 101, column: 5, scope: !252)
!259 = distinct !DISubprogram(name: "user_spp_data_handler", scope: !3, file: !3, line: 106, type: !260, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !176, !179, !175, !179}
!262 = !{!263, !264, !265, !266}
!263 = !DILocalVariable(name: "packet_type", arg: 1, scope: !259, file: !3, line: 106, type: !176)
!264 = !DILocalVariable(name: "ch", arg: 2, scope: !259, file: !3, line: 106, type: !179)
!265 = !DILocalVariable(name: "packet", arg: 3, scope: !259, file: !3, line: 106, type: !175)
!266 = !DILocalVariable(name: "size", arg: 4, scope: !259, file: !3, line: 106, type: !179)
!267 = !DILocation(line: 106, column: 31, scope: !259)
!268 = !DILocation(line: 106, column: 48, scope: !259)
!269 = !DILocation(line: 106, column: 56, scope: !259)
!270 = !DILocation(line: 106, column: 68, scope: !259)
!271 = !DILocation(line: 108, column: 5, scope: !259)
!272 = !DILocation(line: 110, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !259, file: !3, line: 108, column: 26)
!274 = !DILocation(line: 111, column: 28, scope: !273)
!275 = !DILocation(line: 112, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 112, column: 13)
!277 = !DILocation(line: 112, column: 18, scope: !276)
!278 = !DILocation(line: 112, column: 13, scope: !273)
!279 = !DILocation(line: 113, column: 34, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 112, column: 41)
!281 = !DILocation(line: 113, column: 32, scope: !280)
!282 = !DILocation(line: 114, column: 22, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 114, column: 17)
!284 = !DILocation(line: 114, column: 17, scope: !280)
!285 = !DILocation(line: 115, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 114, column: 45)
!287 = !DILocation(line: 116, column: 13, scope: !286)
!288 = !DILocation(line: 119, column: 9, scope: !273)
!289 = !DILocation(line: 120, column: 9, scope: !273)
!290 = !DILocalVariable(name: "new_state", arg: 1, scope: !291, file: !3, line: 33, type: !176)
!291 = distinct !DISubprogram(name: "user_spp_state_cbk", scope: !3, file: !3, line: 33, type: !184, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !292)
!292 = !{!290}
!293 = !DILocation(line: 33, column: 35, scope: !291, inlinedAt: !294)
!294 = distinct !DILocation(line: 121, column: 9, scope: !273)
!295 = !DILocation(line: 35, column: 9, scope: !296, inlinedAt: !294)
!296 = distinct !DILexicalBlock(scope: !291, file: !3, line: 35, column: 9)
!297 = !DILocation(line: 35, column: 9, scope: !291, inlinedAt: !294)
!298 = !DILocation(line: 36, column: 9, scope: !299, inlinedAt: !294)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 35, column: 24)
!300 = !DILocation(line: 37, column: 5, scope: !299, inlinedAt: !294)
!301 = !DILocation(line: 124, column: 9, scope: !273)
!302 = !DILocation(line: 125, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !273, file: !3, line: 125, column: 13)
!304 = !DILocation(line: 125, column: 13, scope: !273)
!305 = !DILocation(line: 126, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 125, column: 33)
!307 = !DILocation(line: 127, column: 32, scope: !306)
!308 = !DILocation(line: 128, column: 9, scope: !306)
!309 = !DILocation(line: 33, column: 35, scope: !291, inlinedAt: !310)
!310 = distinct !DILocation(line: 130, column: 9, scope: !273)
!311 = !DILocation(line: 35, column: 9, scope: !296, inlinedAt: !310)
!312 = !DILocation(line: 35, column: 9, scope: !291, inlinedAt: !310)
!313 = !DILocation(line: 36, column: 9, scope: !299, inlinedAt: !310)
!314 = !DILocation(line: 37, column: 5, scope: !299, inlinedAt: !310)
!315 = !DILocation(line: 132, column: 9, scope: !273)
!316 = !DILocation(line: 133, column: 9, scope: !273)
!317 = !DILocation(line: 134, column: 9, scope: !273)
!318 = !DILocation(line: 136, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !273, file: !3, line: 136, column: 9)
!320 = !DILocation(line: 136, column: 9, scope: !273)
!321 = !DILocation(line: 136, column: 47, scope: !322)
!322 = !DILexicalBlockFile(scope: !319, file: !3, discriminator: 1)
!323 = !DILocation(line: 136, column: 9, scope: !322)
!324 = !DILocation(line: 137, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !273, file: !3, line: 137, column: 9)
!326 = !DILocation(line: 137, column: 9, scope: !273)
!327 = !DILocation(line: 137, column: 9, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !3, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 137, column: 9)
!330 = !DILocation(line: 139, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !273, file: !3, line: 139, column: 13)
!332 = !DILocation(line: 139, column: 13, scope: !273)
!333 = !DILocation(line: 140, column: 29, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !3, line: 139, column: 30)
!335 = !DILocation(line: 140, column: 13, scope: !334)
!336 = !DILocation(line: 141, column: 9, scope: !334)
!337 = !DILocation(line: 147, column: 1, scope: !259)
!338 = distinct !DISubprogram(name: "spp_get_operation_table", scope: !3, file: !3, line: 165, type: !339, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !343)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!343 = !{!344}
!344 = !DILocalVariable(name: "interface_pt", arg: 1, scope: !338, file: !3, line: 165, type: !341)
!345 = !DILocation(line: 165, column: 55, scope: !338)
!346 = !DILocation(line: 167, column: 24, scope: !338)
!347 = !DILocation(line: 168, column: 19, scope: !338)
!348 = !DILocation(line: 169, column: 1, scope: !338)
!349 = distinct !DISubprogram(name: "user_spp_disconnect", scope: !3, file: !3, line: 46, type: !350, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !168}
!352 = !{!353}
!353 = !DILocalVariable(name: "priv", arg: 1, scope: !349, file: !3, line: 46, type: !168)
!354 = !DILocation(line: 46, column: 39, scope: !349)
!355 = !DILocation(line: 48, column: 24, scope: !349)
!356 = !DILocation(line: 33, column: 35, scope: !291, inlinedAt: !357)
!357 = distinct !DILocation(line: 49, column: 5, scope: !349)
!358 = !DILocation(line: 35, column: 9, scope: !296, inlinedAt: !357)
!359 = !DILocation(line: 35, column: 9, scope: !291, inlinedAt: !357)
!360 = !DILocation(line: 36, column: 9, scope: !299, inlinedAt: !357)
!361 = !DILocation(line: 37, column: 5, scope: !299, inlinedAt: !357)
!362 = !DILocation(line: 50, column: 5, scope: !349)
!363 = !DILocation(line: 51, column: 1, scope: !349)
!364 = distinct !DISubprogram(name: "user_spp_send", scope: !3, file: !3, line: 65, type: !365, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !369)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !168, !175, !367}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !177, line: 48, baseType: !368)
!368 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!369 = !{!370, !371, !372, !373}
!370 = !DILocalVariable(name: "priv", arg: 1, scope: !364, file: !3, line: 65, type: !168)
!371 = !DILocalVariable(name: "buf", arg: 2, scope: !364, file: !3, line: 65, type: !175)
!372 = !DILocalVariable(name: "len", arg: 3, scope: !364, file: !3, line: 65, type: !367)
!373 = !DILocalVariable(name: "ret", scope: !374, file: !3, line: 88, type: !367)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 72, column: 14)
!375 = distinct !DILexicalBlock(scope: !364, file: !3, line: 72, column: 9)
!376 = !DILocation(line: 65, column: 32, scope: !364)
!377 = !DILocation(line: 65, column: 42, scope: !364)
!378 = !DILocation(line: 65, column: 51, scope: !364)
!379 = !DILocation(line: 67, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !364, file: !3, line: 67, column: 9)
!381 = !DILocation(line: 67, column: 28, scope: !380)
!382 = !DILocation(line: 67, column: 9, scope: !364)
!383 = !DILocation(line: 68, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !3, line: 67, column: 34)
!385 = !DILocation(line: 69, column: 9, scope: !384)
!386 = !DILocation(line: 72, column: 9, scope: !375)
!387 = !DILocation(line: 72, column: 9, scope: !364)
!388 = !DILocation(line: 73, column: 17, scope: !389)
!389 = distinct !DILexicalBlock(scope: !374, file: !3, line: 73, column: 13)
!390 = !DILocation(line: 73, column: 13, scope: !374)
!391 = !DILocation(line: 74, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 73, column: 44)
!393 = !DILocation(line: 75, column: 13, scope: !392)
!394 = !DILocation(line: 78, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !374, file: !3, line: 78, column: 9)
!396 = !DILocation(line: 78, column: 9, scope: !374)
!397 = !DILocation(line: 78, column: 9, scope: !398)
!398 = !DILexicalBlockFile(scope: !395, file: !3, discriminator: 1)
!399 = !DILocation(line: 79, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !374, file: !3, line: 79, column: 9)
!401 = !DILocation(line: 79, column: 9, scope: !374)
!402 = !DILocation(line: 79, column: 9, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !3, discriminator: 1)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 79, column: 9)
!405 = !DILocation(line: 81, column: 21, scope: !406)
!406 = distinct !DILexicalBlock(scope: !374, file: !3, line: 81, column: 13)
!407 = !DILocation(line: 81, column: 18, scope: !406)
!408 = !DILocation(line: 81, column: 13, scope: !374)
!409 = !DILocation(line: 82, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 81, column: 41)
!411 = !DILocation(line: 83, column: 13, scope: !410)
!412 = !DILocation(line: 86, column: 28, scope: !374)
!413 = !DILocation(line: 87, column: 9, scope: !374)
!414 = !DILocation(line: 88, column: 66, scope: !374)
!415 = !DILocation(line: 88, column: 19, scope: !374)
!416 = !DILocation(line: 88, column: 13, scope: !374)
!417 = !DILocation(line: 89, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !374, file: !3, line: 89, column: 13)
!419 = !DILocation(line: 89, column: 13, scope: !374)
!420 = !DILocation(line: 90, column: 32, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !3, line: 89, column: 18)
!422 = !DILocation(line: 96, column: 1, scope: !364)
!423 = distinct !DISubprogram(name: "user_spp_regiser_wakeup_send", scope: !3, file: !3, line: 41, type: !424, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !168, !168}
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "priv", arg: 1, scope: !423, file: !3, line: 41, type: !168)
!428 = !DILocalVariable(name: "cbk", arg: 2, scope: !423, file: !3, line: 41, type: !168)
!429 = !DILocation(line: 41, column: 48, scope: !423)
!430 = !DILocation(line: 41, column: 60, scope: !423)
!431 = !DILocation(line: 43, column: 26, scope: !423)
!432 = !DILocation(line: 44, column: 1, scope: !423)
!433 = distinct !DISubprogram(name: "user_spp_regiser_recieve", scope: !3, file: !3, line: 59, type: !424, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !434)
!434 = !{!435, !436}
!435 = !DILocalVariable(name: "priv", arg: 1, scope: !433, file: !3, line: 59, type: !168)
!436 = !DILocalVariable(name: "cbk", arg: 2, scope: !433, file: !3, line: 59, type: !168)
!437 = !DILocation(line: 59, column: 44, scope: !433)
!438 = !DILocation(line: 59, column: 56, scope: !433)
!439 = !DILocation(line: 61, column: 21, scope: !433)
!440 = !DILocation(line: 62, column: 1, scope: !433)
!441 = distinct !DISubprogram(name: "user_spp_regiest_state_cbk", scope: !3, file: !3, line: 53, type: !424, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !442)
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "priv", arg: 1, scope: !441, file: !3, line: 53, type: !168)
!444 = !DILocalVariable(name: "cbk", arg: 2, scope: !441, file: !3, line: 53, type: !168)
!445 = !DILocation(line: 53, column: 46, scope: !441)
!446 = !DILocation(line: 53, column: 58, scope: !441)
!447 = !DILocation(line: 55, column: 19, scope: !441)
!448 = !DILocation(line: 56, column: 1, scope: !441)
!449 = distinct !DISubprogram(name: "user_spp_busy_state", scope: !3, file: !3, line: 150, type: !220, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !450)
!450 = !{}
!451 = !DILocation(line: 152, column: 12, scope: !449)
!452 = !DILocation(line: 152, column: 5, scope: !449)
