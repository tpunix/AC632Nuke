; ModuleID = 'l2cap_signaling.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@l2cap_signaling_commands_format = internal unnamed_addr constant [22 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)], section ".bt_stack_const", align 4, !dbg !26
@.str = private unnamed_addr constant [3 x i8] c"2D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2222\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"22D\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"222D\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"22222\00", align 1

; Function Attrs: nounwind optsize
define hidden zeroext i16 @l2cap_outgoing_acl_len(i32, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !39 {
  %3 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !50, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i8* %1, metadata !51, metadata !DIExpression()), !dbg !60
  store i8* %1, i8** %3, align 4, !tbaa !61
  call void @llvm.dbg.value(metadata i16 8, metadata !52, metadata !DIExpression()), !dbg !65
  %4 = add i32 %0, -1, !dbg !66
  %5 = getelementptr inbounds [22 x i8*], [22 x i8*]* @l2cap_signaling_commands_format, i32 0, i32 %4, !dbg !67
  %6 = load i8*, i8** %5, align 4, !dbg !67, !tbaa !61
  call void @llvm.dbg.value(metadata i8* %6, metadata !53, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i16 8, metadata !52, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %6, metadata !53, metadata !DIExpression()), !dbg !68
  %7 = load i8, i8* %6, align 1, !dbg !69, !tbaa !71
  %8 = icmp eq i8 %7, 0, !dbg !72
  br i1 %8, label %32, label %9, !dbg !72

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !73

; <label>:10:                                     ; preds = %26, %9
  %11 = phi i8 [ %29, %26 ], [ %7, %9 ]
  %12 = phi i16 [ %27, %26 ], [ 8, %9 ]
  %13 = phi i8* [ %28, %26 ], [ %6, %9 ]
  %14 = sext i8 %11 to i32, !dbg !73
  switch i32 %14, label %26 [
    i32 49, label %15
    i32 50, label %15
    i32 68, label %21
  ], !dbg !75

; <label>:15:                                     ; preds = %10, %10
  %16 = va_arg i8** %3, i32, !dbg !76
  call void @llvm.dbg.value(metadata i32 %16, metadata !56, metadata !DIExpression()), !dbg !78
  %17 = load i8, i8* %13, align 1, !dbg !79, !tbaa !71
  %18 = icmp eq i8 %17, 50, !dbg !81
  %19 = select i1 %18, i16 2, i16 1, !dbg !82
  %20 = add i16 %19, %12, !dbg !82
  br label %26, !dbg !82

; <label>:21:                                     ; preds = %10
  %22 = va_arg i8** %3, i32, !dbg !83
  call void @llvm.dbg.value(metadata i32 %22, metadata !56, metadata !DIExpression()), !dbg !78
  %23 = zext i16 %12 to i32, !dbg !84
  %24 = add i32 %22, %23, !dbg !84
  %25 = trunc i32 %24 to i16, !dbg !84
  call void @llvm.dbg.value(metadata i16 %25, metadata !52, metadata !DIExpression()), !dbg !65
  br label %26, !dbg !85

; <label>:26:                                     ; preds = %21, %15, %10
  %27 = phi i16 [ %12, %10 ], [ %25, %21 ], [ %20, %15 ]
  call void @llvm.dbg.value(metadata i16 %27, metadata !52, metadata !DIExpression()), !dbg !65
  %28 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !86
  call void @llvm.dbg.value(metadata i8* %28, metadata !53, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i16 %27, metadata !52, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %28, metadata !53, metadata !DIExpression()), !dbg !68
  %29 = load i8, i8* %28, align 1, !dbg !69, !tbaa !71
  %30 = icmp eq i8 %29, 0, !dbg !72
  br i1 %30, label %31, label %10, !dbg !72, !llvm.loop !87

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !90

; <label>:32:                                     ; preds = %31, %2
  %33 = phi i16 [ 8, %2 ], [ %27, %31 ]
  %34 = bitcast i8** %3 to i8*, !dbg !90
  call void @llvm.va_end(i8* nonnull %34), !dbg !90
  ret i16 %33, !dbg !91
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind optsize
define hidden zeroext i16 @l2cap_create_signaling_internal_bredr(i8*, i16 zeroext, i32, i8 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !92 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i16 %1, metadata !107, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %2, metadata !108, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8 %3, metadata !109, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %4, metadata !110, metadata !DIExpression()), !dbg !115
  %6 = zext i8 %3 to i32, !dbg !116
  %7 = tail call fastcc zeroext i16 @l2cap_create_signaling_internal(i8* %0, i16 zeroext %1, i16 zeroext 1, i32 %2, i32 %6, i8* %4) #5, !dbg !117
  ret i16 %7, !dbg !118
}

; Function Attrs: nounwind optsize
define internal fastcc zeroext i16 @l2cap_create_signaling_internal(i8*, i16 zeroext, i16 zeroext, i32, i32, i8*) unnamed_addr #0 section ".bt_stack_code" !dbg !119 {
  %7 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !125, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i16 %1, metadata !126, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i16 %2, metadata !127, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %3, metadata !128, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32 %4, metadata !129, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i8* %5, metadata !130, metadata !DIExpression()), !dbg !140
  store i8* %5, i8** %7, align 4, !tbaa !61
  %8 = or i16 %1, 8192, !dbg !141
  tail call void @bt_store_16(i8* %0, i16 zeroext 0, i16 zeroext %8) #6, !dbg !142
  tail call void @bt_store_16(i8* %0, i16 zeroext 6, i16 zeroext %2) #6, !dbg !143
  %9 = trunc i32 %3 to i8, !dbg !144
  %10 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !145
  store i8 %9, i8* %10, align 1, !dbg !146, !tbaa !71
  %11 = trunc i32 %4 to i8, !dbg !147
  %12 = getelementptr inbounds i8, i8* %0, i32 9, !dbg !148
  store i8 %11, i8* %12, align 1, !dbg !149, !tbaa !71
  call void @llvm.dbg.value(metadata i16 12, metadata !131, metadata !DIExpression()), !dbg !150
  %13 = add i32 %3, -1, !dbg !151
  %14 = getelementptr inbounds [22 x i8*], [22 x i8*]* @l2cap_signaling_commands_format, i32 0, i32 %13, !dbg !152
  %15 = load i8*, i8** %14, align 4, !dbg !152, !tbaa !61
  call void @llvm.dbg.value(metadata i8* %15, metadata !132, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i16 12, metadata !131, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i8* %15, metadata !132, metadata !DIExpression()), !dbg !153
  %16 = load i8, i8* %15, align 1, !dbg !154, !tbaa !71
  %17 = icmp eq i8 %16, 0, !dbg !156
  br i1 %17, label %51, label %18, !dbg !156

; <label>:18:                                     ; preds = %6
  br label %19, !dbg !157

; <label>:19:                                     ; preds = %45, %18
  %20 = phi i8 [ %48, %45 ], [ %16, %18 ]
  %21 = phi i16 [ %46, %45 ], [ 12, %18 ]
  %22 = phi i8* [ %47, %45 ], [ %15, %18 ]
  %23 = sext i8 %20 to i32, !dbg !157
  switch i32 %23, label %45 [
    i32 49, label %24
    i32 50, label %24
    i32 68, label %38
  ], !dbg !159

; <label>:24:                                     ; preds = %19, %19
  %25 = va_arg i8** %7, i32, !dbg !160
  call void @llvm.dbg.value(metadata i32 %25, metadata !133, metadata !DIExpression()), !dbg !162
  %26 = trunc i32 %25 to i8, !dbg !163
  %27 = add i16 %21, 1, !dbg !164
  call void @llvm.dbg.value(metadata i16 %27, metadata !131, metadata !DIExpression()), !dbg !150
  %28 = zext i16 %21 to i32, !dbg !165
  %29 = getelementptr inbounds i8, i8* %0, i32 %28, !dbg !165
  store i8 %26, i8* %29, align 1, !dbg !166, !tbaa !71
  %30 = load i8, i8* %22, align 1, !dbg !167, !tbaa !71
  %31 = icmp eq i8 %30, 50, !dbg !169
  br i1 %31, label %32, label %45, !dbg !170

; <label>:32:                                     ; preds = %24
  %33 = lshr i32 %25, 8, !dbg !171
  %34 = trunc i32 %33 to i8, !dbg !173
  %35 = add i16 %21, 2, !dbg !174
  call void @llvm.dbg.value(metadata i16 %35, metadata !131, metadata !DIExpression()), !dbg !150
  %36 = zext i16 %27 to i32, !dbg !175
  %37 = getelementptr inbounds i8, i8* %0, i32 %36, !dbg !175
  store i8 %34, i8* %37, align 1, !dbg !176, !tbaa !71
  br label %45, !dbg !177

; <label>:38:                                     ; preds = %19
  %39 = va_arg i8** %7, i32, !dbg !178
  call void @llvm.dbg.value(metadata i32 %39, metadata !133, metadata !DIExpression()), !dbg !162
  %40 = va_arg i8** %7, i8*, !dbg !179
  call void @llvm.dbg.value(metadata i8* %40, metadata !134, metadata !DIExpression()), !dbg !180
  %41 = zext i16 %21 to i32, !dbg !181
  %42 = getelementptr inbounds i8, i8* %0, i32 %41, !dbg !181
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %40, i32 %39, i32 1, i1 false), !dbg !182
  %43 = add i32 %39, %41, !dbg !183
  %44 = trunc i32 %43 to i16, !dbg !183
  call void @llvm.dbg.value(metadata i16 %44, metadata !131, metadata !DIExpression()), !dbg !150
  br label %45, !dbg !184

; <label>:45:                                     ; preds = %38, %32, %24, %19
  %46 = phi i16 [ %21, %19 ], [ %44, %38 ], [ %35, %32 ], [ %27, %24 ]
  call void @llvm.dbg.value(metadata i16 %46, metadata !131, metadata !DIExpression()), !dbg !150
  %47 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !185
  call void @llvm.dbg.value(metadata i8* %47, metadata !132, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i16 %46, metadata !131, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i8* %47, metadata !132, metadata !DIExpression()), !dbg !153
  %48 = load i8, i8* %47, align 1, !dbg !154, !tbaa !71
  %49 = icmp eq i8 %48, 0, !dbg !156
  br i1 %49, label %50, label %19, !dbg !156, !llvm.loop !186

; <label>:50:                                     ; preds = %45
  br label %51, !dbg !189

; <label>:51:                                     ; preds = %50, %6
  %52 = phi i16 [ 12, %6 ], [ %46, %50 ]
  %53 = bitcast i8** %7 to i8*, !dbg !189
  call void @llvm.va_end(i8* nonnull %53), !dbg !189
  %54 = add i16 %52, -4, !dbg !190
  call void @bt_store_16(i8* %0, i16 zeroext 2, i16 zeroext %54) #6, !dbg !191
  %55 = add i16 %52, -8, !dbg !192
  call void @bt_store_16(i8* %0, i16 zeroext 4, i16 zeroext %55) #6, !dbg !193
  %56 = add i16 %52, -12, !dbg !194
  call void @bt_store_16(i8* %0, i16 zeroext 10, i16 zeroext %56) #6, !dbg !195
  ret i16 %52, !dbg !196
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @l2cap_create_signaling_internal_le(i8*, i16 zeroext, i32, i8 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i16 %1, metadata !200, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %2, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i8 %3, metadata !202, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i8* %4, metadata !203, metadata !DIExpression()), !dbg !208
  %6 = zext i8 %3 to i32, !dbg !209
  %7 = tail call fastcc zeroext i16 @l2cap_create_signaling_internal(i8* %0, i16 zeroext %1, i16 zeroext 5, i32 %2, i32 %6, i8* %4) #5, !dbg !210
  ret i16 %7, !dbg !211
}

; Function Attrs: optsize
declare void @bt_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !34, line: 190, type: !35, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !25)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap_signaling.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 52, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Host/include/common/l2cap_signaling.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!8 = !DIEnumerator(name: "COMMAND_REJECT", value: 1)
!9 = !DIEnumerator(name: "CONNECTION_REQUEST", value: 2)
!10 = !DIEnumerator(name: "CONNECTION_RESPONSE", value: 3)
!11 = !DIEnumerator(name: "CONFIGURE_REQUEST", value: 4)
!12 = !DIEnumerator(name: "CONFIGURE_RESPONSE", value: 5)
!13 = !DIEnumerator(name: "DISCONNECTION_REQUEST", value: 6)
!14 = !DIEnumerator(name: "DISCONNECTION_RESPONSE", value: 7)
!15 = !DIEnumerator(name: "ECHO_REQUEST", value: 8)
!16 = !DIEnumerator(name: "ECHO_RESPONSE", value: 9)
!17 = !DIEnumerator(name: "INFORMATION_REQUEST", value: 10)
!18 = !DIEnumerator(name: "INFORMATION_RESPONSE", value: 11)
!19 = !DIEnumerator(name: "CONNECTION_PARAMETER_UPDATE_REQUEST", value: 18)
!20 = !DIEnumerator(name: "CONNECTION_PARAMETER_UPDATE_RESPONSE", value: 19)
!21 = !DIEnumerator(name: "LE_CREDIT_BASED_CONNECTION_REQUEST", value: 20)
!22 = !DIEnumerator(name: "LE_CREDIT_BASED_CONNECTION_RESPONSE", value: 21)
!23 = !DIEnumerator(name: "LE_FLOW_CONTROL_CREDIT", value: 22)
!24 = !DIEnumerator(name: "COMMAND_REJECT_LE", value: 31)
!25 = !{!0, !26}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "l2cap_signaling_commands_format", scope: !2, file: !3, line: 55, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 704, elements: !32)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 22)
!34 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{i32 2, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!39 = distinct !DISubprogram(name: "l2cap_outgoing_acl_len", scope: !3, file: !3, line: 150, type: !40, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !49)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 13, baseType: !44)
!43 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "L2CAP_SIGNALING_COMMANDS", file: !6, line: 71, baseType: !5)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 30, baseType: !48)
!47 = !DIFile(filename: "/opt/q32s/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 190, baseType: !30)
!49 = !{!50, !51, !52, !53, !56}
!50 = !DILocalVariable(name: "cmd", arg: 1, scope: !39, file: !3, line: 150, type: !45)
!51 = !DILocalVariable(name: "argptr", arg: 2, scope: !39, file: !3, line: 150, type: !46)
!52 = !DILocalVariable(name: "pos", scope: !39, file: !3, line: 153, type: !42)
!53 = !DILocalVariable(name: "format", scope: !39, file: !3, line: 154, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!56 = !DILocalVariable(name: "word", scope: !39, file: !3, line: 155, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 15, baseType: !58)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DILocation(line: 150, column: 53, scope: !39)
!60 = !DILocation(line: 150, column: 66, scope: !39)
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !DILocation(line: 153, column: 9, scope: !39)
!66 = !DILocation(line: 159, column: 50, scope: !39)
!67 = !DILocation(line: 159, column: 14, scope: !39)
!68 = !DILocation(line: 154, column: 17, scope: !39)
!69 = !DILocation(line: 160, column: 12, scope: !70)
!70 = !DILexicalBlockFile(scope: !39, file: !3, discriminator: 1)
!71 = !{!63, !63, i64 0}
!72 = !DILocation(line: 160, column: 5, scope: !70)
!73 = !DILocation(line: 161, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !39, file: !3, line: 160, column: 21)
!75 = !DILocation(line: 161, column: 9, scope: !74)
!76 = !DILocation(line: 164, column: 20, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 161, column: 26)
!78 = !DILocation(line: 155, column: 9, scope: !39)
!79 = !DILocation(line: 167, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !3, line: 167, column: 17)
!81 = !DILocation(line: 167, column: 25, scope: !80)
!82 = !DILocation(line: 167, column: 17, scope: !77)
!83 = !DILocation(line: 173, column: 20, scope: !77)
!84 = !DILocation(line: 174, column: 17, scope: !77)
!85 = !DILocation(line: 175, column: 13, scope: !77)
!86 = !DILocation(line: 179, column: 15, scope: !74)
!87 = distinct !{!87, !88, !89}
!88 = !DILocation(line: 160, column: 5, scope: !39)
!89 = !DILocation(line: 180, column: 5, scope: !39)
!90 = !DILocation(line: 181, column: 5, scope: !39)
!91 = !DILocation(line: 183, column: 5, scope: !39)
!92 = distinct !DISubprogram(name: "l2cap_create_signaling_internal_bredr", scope: !3, file: !3, line: 186, type: !93, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !105)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !99, !103, !45, !100, !46}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 26, baseType: !97)
!96 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !98, line: 43, baseType: !44)
!98 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 20, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !98, line: 29, baseType: !102)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !104, line: 9, baseType: !95)
!104 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!105 = !{!106, !107, !108, !109, !110}
!106 = !DILocalVariable(name: "acl_buffer", arg: 1, scope: !92, file: !3, line: 186, type: !99)
!107 = !DILocalVariable(name: "handle", arg: 2, scope: !92, file: !3, line: 186, type: !103)
!108 = !DILocalVariable(name: "cmd", arg: 3, scope: !92, file: !3, line: 186, type: !45)
!109 = !DILocalVariable(name: "identifier", arg: 4, scope: !92, file: !3, line: 186, type: !100)
!110 = !DILocalVariable(name: "argptr", arg: 5, scope: !92, file: !3, line: 186, type: !46)
!111 = !DILocation(line: 186, column: 57, scope: !92)
!112 = !DILocation(line: 186, column: 86, scope: !92)
!113 = !DILocation(line: 186, column: 119, scope: !92)
!114 = !DILocation(line: 186, column: 132, scope: !92)
!115 = !DILocation(line: 186, column: 152, scope: !92)
!116 = !DILocation(line: 188, column: 72, scope: !92)
!117 = !DILocation(line: 188, column: 12, scope: !92)
!118 = !DILocation(line: 188, column: 5, scope: !92)
!119 = distinct !DISubprogram(name: "l2cap_create_signaling_internal", scope: !3, file: !3, line: 84, type: !120, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !124)
!120 = !DISubroutineType(types: !121)
!121 = !{!42, !122, !103, !95, !45, !57, !46}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 11, baseType: !102)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!125 = !DILocalVariable(name: "acl_buffer", arg: 1, scope: !119, file: !3, line: 84, type: !122)
!126 = !DILocalVariable(name: "handle", arg: 2, scope: !119, file: !3, line: 84, type: !103)
!127 = !DILocalVariable(name: "cid", arg: 3, scope: !119, file: !3, line: 84, type: !95)
!128 = !DILocalVariable(name: "cmd", arg: 4, scope: !119, file: !3, line: 84, type: !45)
!129 = !DILocalVariable(name: "identifier", arg: 5, scope: !119, file: !3, line: 84, type: !57)
!130 = !DILocalVariable(name: "argptr", arg: 6, scope: !119, file: !3, line: 84, type: !46)
!131 = !DILocalVariable(name: "pos", scope: !119, file: !3, line: 87, type: !42)
!132 = !DILocalVariable(name: "format", scope: !119, file: !3, line: 88, type: !54)
!133 = !DILocalVariable(name: "word", scope: !119, file: !3, line: 89, type: !57)
!134 = !DILocalVariable(name: "ptr", scope: !119, file: !3, line: 90, type: !122)
!135 = !DILocation(line: 84, column: 48, scope: !119)
!136 = !DILocation(line: 84, column: 77, scope: !119)
!137 = !DILocation(line: 84, column: 94, scope: !119)
!138 = !DILocation(line: 84, column: 124, scope: !119)
!139 = !DILocation(line: 84, column: 133, scope: !119)
!140 = !DILocation(line: 84, column: 153, scope: !119)
!141 = !DILocation(line: 93, column: 39, scope: !119)
!142 = !DILocation(line: 93, column: 5, scope: !119)
!143 = !DILocation(line: 95, column: 5, scope: !119)
!144 = !DILocation(line: 97, column: 21, scope: !119)
!145 = !DILocation(line: 97, column: 5, scope: !119)
!146 = !DILocation(line: 97, column: 19, scope: !119)
!147 = !DILocation(line: 99, column: 21, scope: !119)
!148 = !DILocation(line: 99, column: 5, scope: !119)
!149 = !DILocation(line: 99, column: 19, scope: !119)
!150 = !DILocation(line: 87, column: 9, scope: !119)
!151 = !DILocation(line: 103, column: 50, scope: !119)
!152 = !DILocation(line: 103, column: 14, scope: !119)
!153 = !DILocation(line: 88, column: 17, scope: !119)
!154 = !DILocation(line: 104, column: 12, scope: !155)
!155 = !DILexicalBlockFile(scope: !119, file: !3, discriminator: 1)
!156 = !DILocation(line: 104, column: 5, scope: !155)
!157 = !DILocation(line: 105, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !119, file: !3, line: 104, column: 21)
!159 = !DILocation(line: 105, column: 9, scope: !158)
!160 = !DILocation(line: 108, column: 20, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !3, line: 105, column: 26)
!162 = !DILocation(line: 89, column: 9, scope: !119)
!163 = !DILocation(line: 110, column: 33, scope: !161)
!164 = !DILocation(line: 110, column: 27, scope: !161)
!165 = !DILocation(line: 110, column: 13, scope: !161)
!166 = !DILocation(line: 110, column: 31, scope: !161)
!167 = !DILocation(line: 111, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !3, line: 111, column: 17)
!169 = !DILocation(line: 111, column: 25, scope: !168)
!170 = !DILocation(line: 111, column: 17, scope: !161)
!171 = !DILocation(line: 112, column: 42, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 111, column: 33)
!173 = !DILocation(line: 112, column: 37, scope: !172)
!174 = !DILocation(line: 112, column: 31, scope: !172)
!175 = !DILocation(line: 112, column: 17, scope: !172)
!176 = !DILocation(line: 112, column: 35, scope: !172)
!177 = !DILocation(line: 113, column: 13, scope: !172)
!178 = !DILocation(line: 117, column: 20, scope: !161)
!179 = !DILocation(line: 119, column: 20, scope: !161)
!180 = !DILocation(line: 90, column: 9, scope: !119)
!181 = !DILocation(line: 122, column: 21, scope: !161)
!182 = !DILocation(line: 122, column: 13, scope: !161)
!183 = !DILocation(line: 124, column: 17, scope: !161)
!184 = !DILocation(line: 125, column: 13, scope: !161)
!185 = !DILocation(line: 129, column: 15, scope: !158)
!186 = distinct !{!186, !187, !188}
!187 = !DILocation(line: 104, column: 5, scope: !119)
!188 = !DILocation(line: 130, column: 5, scope: !119)
!189 = !DILocation(line: 131, column: 5, scope: !119)
!190 = !DILocation(line: 137, column: 37, scope: !119)
!191 = !DILocation(line: 137, column: 5, scope: !119)
!192 = !DILocation(line: 139, column: 41, scope: !119)
!193 = !DILocation(line: 139, column: 5, scope: !119)
!194 = !DILocation(line: 141, column: 37, scope: !119)
!195 = !DILocation(line: 141, column: 5, scope: !119)
!196 = !DILocation(line: 147, column: 5, scope: !119)
!197 = distinct !DISubprogram(name: "l2cap_create_signaling_internal_le", scope: !3, file: !3, line: 192, type: !93, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DILocalVariable(name: "acl_buffer", arg: 1, scope: !197, file: !3, line: 192, type: !99)
!200 = !DILocalVariable(name: "handle", arg: 2, scope: !197, file: !3, line: 192, type: !103)
!201 = !DILocalVariable(name: "cmd", arg: 3, scope: !197, file: !3, line: 192, type: !45)
!202 = !DILocalVariable(name: "identifier", arg: 4, scope: !197, file: !3, line: 192, type: !100)
!203 = !DILocalVariable(name: "argptr", arg: 5, scope: !197, file: !3, line: 192, type: !46)
!204 = !DILocation(line: 192, column: 54, scope: !197)
!205 = !DILocation(line: 192, column: 83, scope: !197)
!206 = !DILocation(line: 192, column: 116, scope: !197)
!207 = !DILocation(line: 192, column: 129, scope: !197)
!208 = !DILocation(line: 192, column: 149, scope: !197)
!209 = !DILocation(line: 194, column: 72, scope: !197)
!210 = !DILocation(line: 194, column: 12, scope: !197)
!211 = !DILocation(line: 194, column: 5, scope: !197)
