; ModuleID = 'database_file.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.syscfg_file = type { i32 (i32, i32)*, i32 (i8*, i32)*, i32 (i8*, i32)*, i32 (i32, i32)*, i32 (...)* }
%struct.db_entry_t = type { i8, i8 }
%struct.database_file = type { i32 (...)*, void (...)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, void (i32, i32)*, i32 ()*, i32 (...)* }

@dbf_syscfg_remote_db_addr = internal unnamed_addr global i32 0, section ".bt_stack_data", align 4, !dbg !0
@dbf_bt_rw_file = internal unnamed_addr global %struct.syscfg_file* null, section ".bt_stack_data", align 4, !dbg !39
@dbf_entry_info = hidden local_unnamed_addr global [3 x %struct.db_entry_t] [%struct.db_entry_t { i8 0, i8 10 }, %struct.db_entry_t { i8 10, i8 10 }, %struct.db_entry_t { i8 20, i8 1 }], section ".bt_stack_data", align 1, !dbg !26
@dbf_remote_db_file = internal constant %struct.database_file { i32 (...)* bitcast (i32 ()* @db_file_open to i32 (...)*), void (...)* bitcast (void ()* @db_file_close to void (...)*), i32 (i8*, i32, i32)* @db_file_read, i32 (i8*, i32, i32)* @db_file_write, void (i32, i32)* @db_file_seek, i32 ()* @db_file_getlen, i32 (...)* bitcast (i32 (i32)* @db_file_fptr to i32 (...)*) }, section ".bt_stack_const", align 4, !dbg !41
@dbf_fptr = internal unnamed_addr global i16 0, section ".bt_stack_bss", align 2, !dbg !68

; Function Attrs: nounwind optsize
define hidden void @set_bt_vm_interface(i32, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !75 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i8* %1, metadata !80, metadata !DIExpression()), !dbg !82
  store i32 %0, i32* @dbf_syscfg_remote_db_addr, align 4, !dbg !83, !tbaa !84
  store i8* %1, i8** bitcast (%struct.syscfg_file** @dbf_bt_rw_file to i8**), align 4, !dbg !88, !tbaa !89
  ret void, !dbg !91
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden nonnull %struct.database_file* @open_remote_db_file_opt() local_unnamed_addr #1 section ".bt_stack_code" !dbg !92 {
  ret %struct.database_file* @dbf_remote_db_file, !dbg !96
}

; Function Attrs: nounwind optsize
define internal i32 @db_file_read(i8*, i32, i32) #0 section ".bt_stack_code" !dbg !97 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !99, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 %1, metadata !100, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i32 %2, metadata !101, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8 0, metadata !102, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8 0, metadata !103, metadata !DIExpression()), !dbg !113
  %4 = icmp ugt i32 %2, 2, !dbg !114
  br i1 %4, label %52, label %5, !dbg !116

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* @dbf_syscfg_remote_db_addr, align 4, !dbg !117, !tbaa !84
  %7 = getelementptr inbounds [3 x %struct.db_entry_t], [3 x %struct.db_entry_t]* @dbf_entry_info, i32 0, i32 %2, i32 0, !dbg !118
  %8 = load i8, i8* %7, align 1, !dbg !118, !tbaa !119
  %9 = zext i8 %8 to i32, !dbg !121
  %10 = add i32 %9, %6, !dbg !122
  %11 = getelementptr inbounds [3 x %struct.db_entry_t], [3 x %struct.db_entry_t]* @dbf_entry_info, i32 0, i32 %2, i32 1, !dbg !123
  %12 = load i8, i8* %11, align 1, !dbg !123, !tbaa !124
  call void @llvm.dbg.value(metadata i8 %12, metadata !102, metadata !DIExpression()), !dbg !112
  %13 = load i16, i16* @dbf_fptr, align 2, !dbg !125, !tbaa !127
  %14 = zext i16 %13 to i32, !dbg !125
  %15 = add nsw i32 %14, %1, !dbg !129
  %16 = zext i8 %12 to i32, !dbg !130
  %17 = shl nuw nsw i32 %16, 5, !dbg !131
  %18 = icmp ugt i32 %15, %17, !dbg !132
  br i1 %18, label %52, label %19, !dbg !133

; <label>:19:                                     ; preds = %5
  %20 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !134, !tbaa !89
  %21 = icmp eq %struct.syscfg_file* %20, null, !dbg !135
  br i1 %21, label %46, label %22, !dbg !136

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i32 32, metadata !107, metadata !DIExpression()), !dbg !137
  %23 = and i32 %10, 255, !dbg !138
  %24 = lshr i16 %13, 5, !dbg !139
  %25 = zext i16 %24 to i32, !dbg !139
  %26 = add nuw nsw i32 %25, %23, !dbg !140
  call void @llvm.dbg.value(metadata i32 %26, metadata !108, metadata !DIExpression()), !dbg !141
  %27 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %20, i32 0, i32 0, !dbg !142
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 4, !dbg !142, !tbaa !144
  %29 = tail call i32 %28(i32 %26, i32 32) #5, !dbg !146
  %30 = icmp eq i32 %29, 0, !dbg !146
  br i1 %30, label %52, label %31, !dbg !147

; <label>:31:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !148
  %32 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !149, !tbaa !89
  %33 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %32, i32 0, i32 3, !dbg !150
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 4, !dbg !150, !tbaa !151
  %35 = tail call i32 %34(i32 0, i32 0) #5, !dbg !149
  %36 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !152, !tbaa !89
  %37 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %36, i32 0, i32 1, !dbg !153
  %38 = load i32 (i8*, i32)*, i32 (i8*, i32)** %37, align 4, !dbg !153, !tbaa !154
  %39 = tail call i32 %38(i8* %0, i32 %1) #5, !dbg !152
  call void @llvm.dbg.value(metadata i32 %39, metadata !100, metadata !DIExpression()), !dbg !110
  %40 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !155, !tbaa !89
  %41 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %40, i32 0, i32 4, !dbg !156
  %42 = bitcast i32 (...)** %41 to i32 ()**, !dbg !156
  %43 = load i32 ()*, i32 ()** %42, align 4, !dbg !156, !tbaa !157
  %44 = tail call i32 %43() #5, !dbg !155
  %45 = load i16, i16* @dbf_fptr, align 2, !tbaa !127
  br label %46

; <label>:46:                                     ; preds = %31, %19
  %47 = phi i16 [ %13, %19 ], [ %45, %31 ], !dbg !158
  %48 = phi i32 [ %1, %19 ], [ %39, %31 ]
  call void @llvm.dbg.value(metadata i32 %48, metadata !100, metadata !DIExpression()), !dbg !110
  %49 = zext i16 %47 to i32, !dbg !158
  %50 = add nsw i32 %49, %48, !dbg !158
  %51 = trunc i32 %50 to i16, !dbg !158
  store i16 %51, i16* @dbf_fptr, align 2, !dbg !158, !tbaa !127
  br label %52, !dbg !159

; <label>:52:                                     ; preds = %46, %22, %5, %3
  %53 = phi i32 [ %48, %46 ], [ 0, %3 ], [ 0, %5 ], [ 0, %22 ]
  ret i32 %53, !dbg !160
}

; Function Attrs: nounwind optsize
define internal i32 @db_file_write(i8*, i32, i32) #0 section ".bt_stack_code" !dbg !161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !163, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32 %1, metadata !164, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i32 %2, metadata !165, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8 0, metadata !166, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8 0, metadata !167, metadata !DIExpression()), !dbg !177
  %4 = icmp ugt i32 %2, 2, !dbg !178
  br i1 %4, label %52, label %5, !dbg !180

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* @dbf_syscfg_remote_db_addr, align 4, !dbg !181, !tbaa !84
  %7 = getelementptr inbounds [3 x %struct.db_entry_t], [3 x %struct.db_entry_t]* @dbf_entry_info, i32 0, i32 %2, i32 0, !dbg !182
  %8 = load i8, i8* %7, align 1, !dbg !182, !tbaa !119
  %9 = zext i8 %8 to i32, !dbg !183
  %10 = add i32 %9, %6, !dbg !184
  %11 = getelementptr inbounds [3 x %struct.db_entry_t], [3 x %struct.db_entry_t]* @dbf_entry_info, i32 0, i32 %2, i32 1, !dbg !185
  %12 = load i8, i8* %11, align 1, !dbg !185, !tbaa !124
  call void @llvm.dbg.value(metadata i8 %12, metadata !166, metadata !DIExpression()), !dbg !176
  %13 = load i16, i16* @dbf_fptr, align 2, !dbg !186, !tbaa !127
  %14 = zext i16 %13 to i32, !dbg !186
  %15 = add nsw i32 %14, %1, !dbg !188
  %16 = zext i8 %12 to i32, !dbg !189
  %17 = shl nuw nsw i32 %16, 5, !dbg !190
  %18 = icmp ugt i32 %15, %17, !dbg !191
  br i1 %18, label %52, label %19, !dbg !192

; <label>:19:                                     ; preds = %5
  %20 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !193, !tbaa !89
  %21 = icmp eq %struct.syscfg_file* %20, null, !dbg !194
  br i1 %21, label %46, label %22, !dbg !195

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i32 32, metadata !171, metadata !DIExpression()), !dbg !196
  %23 = and i32 %10, 255, !dbg !197
  %24 = lshr i16 %13, 5, !dbg !198
  %25 = zext i16 %24 to i32, !dbg !198
  %26 = add nuw nsw i32 %25, %23, !dbg !199
  call void @llvm.dbg.value(metadata i32 %26, metadata !172, metadata !DIExpression()), !dbg !200
  %27 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %20, i32 0, i32 0, !dbg !201
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 4, !dbg !201, !tbaa !144
  %29 = tail call i32 %28(i32 %26, i32 32) #5, !dbg !203
  %30 = icmp eq i32 %29, 0, !dbg !203
  br i1 %30, label %52, label %31, !dbg !204

; <label>:31:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !168, metadata !DIExpression()), !dbg !205
  %32 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !206, !tbaa !89
  %33 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %32, i32 0, i32 3, !dbg !207
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 4, !dbg !207, !tbaa !151
  %35 = tail call i32 %34(i32 0, i32 0) #5, !dbg !206
  %36 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !208, !tbaa !89
  %37 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %36, i32 0, i32 2, !dbg !209
  %38 = load i32 (i8*, i32)*, i32 (i8*, i32)** %37, align 4, !dbg !209, !tbaa !210
  %39 = tail call i32 %38(i8* %0, i32 %1) #5, !dbg !208
  call void @llvm.dbg.value(metadata i32 %39, metadata !164, metadata !DIExpression()), !dbg !174
  %40 = load %struct.syscfg_file*, %struct.syscfg_file** @dbf_bt_rw_file, align 4, !dbg !211, !tbaa !89
  %41 = getelementptr inbounds %struct.syscfg_file, %struct.syscfg_file* %40, i32 0, i32 4, !dbg !212
  %42 = bitcast i32 (...)** %41 to i32 ()**, !dbg !212
  %43 = load i32 ()*, i32 ()** %42, align 4, !dbg !212, !tbaa !157
  %44 = tail call i32 %43() #5, !dbg !211
  %45 = load i16, i16* @dbf_fptr, align 2, !tbaa !127
  br label %46

; <label>:46:                                     ; preds = %31, %19
  %47 = phi i16 [ %13, %19 ], [ %45, %31 ], !dbg !213
  %48 = phi i32 [ %1, %19 ], [ %39, %31 ]
  call void @llvm.dbg.value(metadata i32 %48, metadata !164, metadata !DIExpression()), !dbg !174
  %49 = zext i16 %47 to i32, !dbg !213
  %50 = add nsw i32 %49, %48, !dbg !213
  %51 = trunc i32 %50 to i16, !dbg !213
  store i16 %51, i16* @dbf_fptr, align 2, !dbg !213, !tbaa !127
  br label %52, !dbg !214

; <label>:52:                                     ; preds = %46, %22, %5, %3
  %53 = phi i32 [ %48, %46 ], [ 0, %3 ], [ 0, %5 ], [ 0, %22 ]
  ret i32 %53, !dbg !215
}

; Function Attrs: nounwind optsize
define internal void @db_file_seek(i32, i32) #0 section ".bt_stack_code" !dbg !216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 %1, metadata !219, metadata !DIExpression()), !dbg !221
  %3 = icmp eq i32 %0, 0, !dbg !222
  br i1 %3, label %11, label %4, !dbg !224

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i32 %0, 1, !dbg !225
  %6 = load i16, i16* @dbf_fptr, align 2, !tbaa !127
  %7 = zext i16 %6 to i32
  %8 = sub i32 0, %1, !dbg !228
  %9 = select i1 %5, i32 %1, i32 %8, !dbg !228
  %10 = add i32 %7, %9, !dbg !228
  br label %11

; <label>:11:                                     ; preds = %4, %2
  %12 = phi i32 [ %10, %4 ], [ %1, %2 ]
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* @dbf_fptr, align 2, !tbaa !127
  ret void, !dbg !230
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @db_file_getlen() #1 section ".bt_stack_code" !dbg !231 {
  ret i32 320, !dbg !232
}

; Function Attrs: nounwind optsize readonly
define internal i32 @db_file_fptr(i32) #2 section ".bt_stack_code" !dbg !233 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !237, metadata !DIExpression()), !dbg !238
  %2 = load i16, i16* @dbf_fptr, align 2, !dbg !239, !tbaa !127
  %3 = zext i16 %2 to i32, !dbg !239
  ret i32 %3, !dbg !240
}

; Function Attrs: norecurse nounwind optsize
define internal i32 @db_file_open() #3 section ".bt_stack_code" !dbg !241 {
  store i16 0, i16* @dbf_fptr, align 2, !dbg !242, !tbaa !127
  ret i32 1, !dbg !243
}

; Function Attrs: norecurse nounwind optsize readnone
define internal void @db_file_close() #1 section ".bt_stack_code" !dbg !244 {
  ret void, !dbg !247
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dbf_syscfg_remote_db_addr", scope: !2, file: !3, line: 28, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !25)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/database_file.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6, !18}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscfg_file", file: !3, line: 17, size: 160, elements: !8)
!8 = !{!9, !14, !19, !20, !21}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !7, file: !3, line: 18, baseType: !10, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !7, file: !3, line: 19, baseType: !15, size: 32, offset: 32)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DISubroutineType(types: !17)
!17 = !{!13, !18, !13}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !7, file: !3, line: 20, baseType: !15, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !7, file: !3, line: 21, baseType: !10, size: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !7, file: !3, line: 22, baseType: !22, size: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DISubroutineType(types: !24)
!24 = !{!13, null}
!25 = !{!26, !0, !39, !41, !68}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "dbf_entry_info", scope: !2, file: !3, line: 57, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 48, elements: !37)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "db_entry_t", file: !3, line: 52, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 49, size: 16, elements: !31)
!31 = !{!32, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !30, file: !3, line: 50, baseType: !33, size: 8)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !34, line: 44, baseType: !35)
!34 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !3, line: 51, baseType: !33, size: 8, offset: 8)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "dbf_bt_rw_file", scope: !2, file: !3, line: 24, type: !6, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "dbf_remote_db_file", scope: !2, file: !3, line: 156, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "database_file", file: !45, line: 47, size: 224, elements: !46)
!45 = !DIFile(filename: "../User/include/bredr/remote_device_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!46 = !{!47, !48, !52, !58, !59, !63, !67}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !44, file: !45, line: 48, baseType: !22, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !44, file: !45, line: 49, baseType: !49, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DISubroutineType(types: !51)
!51 = !{null, null}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !44, file: !45, line: 50, baseType: !53, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!54 = !DISubroutineType(types: !55)
!55 = !{!13, !18, !13, !56}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !34, line: 48, baseType: !57)
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !44, file: !45, line: 51, baseType: !53, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !44, file: !45, line: 52, baseType: !60, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !13, !13}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "getlen", scope: !44, file: !45, line: 53, baseType: !64, size: 32, offset: 160)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32)
!65 = !DISubroutineType(types: !66)
!66 = !{!13}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "get_fpos", scope: !44, file: !45, line: 54, baseType: !22, size: 32, offset: 192)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "dbf_fptr", scope: !2, file: !3, line: 29, type: !70, isLocal: true, isDefinition: true)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !34, line: 46, baseType: !71)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !{i32 2, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!75 = distinct !DISubprogram(name: "set_bt_vm_interface", scope: !3, file: !3, line: 31, type: !76, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !56, !18}
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "vm_index", arg: 1, scope: !75, file: !3, line: 31, type: !56)
!80 = !DILocalVariable(name: "interface", arg: 2, scope: !75, file: !3, line: 31, type: !18)
!81 = !DILocation(line: 31, column: 30, scope: !75)
!82 = !DILocation(line: 31, column: 46, scope: !75)
!83 = !DILocation(line: 34, column: 31, scope: !75)
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !DILocation(line: 35, column: 20, scope: !75)
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !86, i64 0}
!91 = !DILocation(line: 37, column: 1, scope: !75)
!92 = distinct !DISubprogram(name: "open_remote_db_file_opt", scope: !3, file: !3, line: 166, type: !93, isLocal: false, isDefinition: true, scopeLine: 167, isOptimized: true, unit: !2, variables: !4)
!93 = !DISubroutineType(types: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!96 = !DILocation(line: 168, column: 5, scope: !92)
!97 = distinct !DISubprogram(name: "db_file_read", scope: !3, file: !3, line: 62, type: !54, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !107, !108}
!99 = !DILocalVariable(name: "buf", arg: 1, scope: !97, file: !3, line: 62, type: !18)
!100 = !DILocalVariable(name: "len", arg: 2, scope: !97, file: !3, line: 62, type: !13)
!101 = !DILocalVariable(name: "db_id", arg: 3, scope: !97, file: !3, line: 62, type: !56)
!102 = !DILocalVariable(name: "db_len", scope: !97, file: !3, line: 64, type: !33)
!103 = !DILocalVariable(name: "db_offset", scope: !97, file: !3, line: 65, type: !33)
!104 = !DILocalVariable(name: "pos", scope: !105, file: !3, line: 79, type: !13)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 78, column: 33)
!106 = distinct !DILexicalBlock(scope: !97, file: !3, line: 78, column: 9)
!107 = !DILocalVariable(name: "tag_len", scope: !105, file: !3, line: 80, type: !56)
!108 = !DILocalVariable(name: "tag_id", scope: !105, file: !3, line: 81, type: !56)
!109 = !DILocation(line: 62, column: 31, scope: !97)
!110 = !DILocation(line: 62, column: 40, scope: !97)
!111 = !DILocation(line: 62, column: 49, scope: !97)
!112 = !DILocation(line: 64, column: 8, scope: !97)
!113 = !DILocation(line: 65, column: 8, scope: !97)
!114 = !DILocation(line: 66, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !3, line: 66, column: 9)
!116 = !DILocation(line: 66, column: 9, scope: !97)
!117 = !DILocation(line: 69, column: 17, scope: !97)
!118 = !DILocation(line: 69, column: 67, scope: !97)
!119 = !{!120, !86, i64 0}
!120 = !{!"", !86, i64 0, !86, i64 1}
!121 = !DILocation(line: 69, column: 45, scope: !97)
!122 = !DILocation(line: 69, column: 43, scope: !97)
!123 = !DILocation(line: 70, column: 36, scope: !97)
!124 = !{!120, !86, i64 1}
!125 = !DILocation(line: 72, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !97, file: !3, line: 72, column: 9)
!127 = !{!128, !128, i64 0}
!128 = !{!"short", !86, i64 0}
!129 = !DILocation(line: 72, column: 18, scope: !126)
!130 = !DILocation(line: 72, column: 26, scope: !126)
!131 = !DILocation(line: 72, column: 33, scope: !126)
!132 = !DILocation(line: 72, column: 24, scope: !126)
!133 = !DILocation(line: 72, column: 9, scope: !97)
!134 = !DILocation(line: 78, column: 9, scope: !106)
!135 = !DILocation(line: 78, column: 24, scope: !106)
!136 = !DILocation(line: 78, column: 9, scope: !97)
!137 = !DILocation(line: 80, column: 13, scope: !105)
!138 = !DILocation(line: 81, column: 23, scope: !105)
!139 = !DILocation(line: 81, column: 44, scope: !105)
!140 = !DILocation(line: 81, column: 33, scope: !105)
!141 = !DILocation(line: 81, column: 13, scope: !105)
!142 = !DILocation(line: 82, column: 31, scope: !143)
!143 = distinct !DILexicalBlock(scope: !105, file: !3, line: 82, column: 13)
!144 = !{!145, !90, i64 0}
!145 = !{!"syscfg_file", !90, i64 0, !90, i64 4, !90, i64 8, !90, i64 12, !90, i64 16}
!146 = !DILocation(line: 82, column: 14, scope: !143)
!147 = !DILocation(line: 82, column: 13, scope: !105)
!148 = !DILocation(line: 79, column: 13, scope: !105)
!149 = !DILocation(line: 87, column: 9, scope: !105)
!150 = !DILocation(line: 87, column: 26, scope: !105)
!151 = !{!145, !90, i64 12}
!152 = !DILocation(line: 88, column: 15, scope: !105)
!153 = !DILocation(line: 88, column: 32, scope: !105)
!154 = !{!145, !90, i64 4}
!155 = !DILocation(line: 89, column: 9, scope: !105)
!156 = !DILocation(line: 89, column: 26, scope: !105)
!157 = !{!145, !90, i64 16}
!158 = !DILocation(line: 92, column: 14, scope: !97)
!159 = !DILocation(line: 93, column: 5, scope: !97)
!160 = !DILocation(line: 94, column: 1, scope: !97)
!161 = distinct !DISubprogram(name: "db_file_write", scope: !3, file: !3, line: 96, type: !54, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !171, !172}
!163 = !DILocalVariable(name: "buf", arg: 1, scope: !161, file: !3, line: 96, type: !18)
!164 = !DILocalVariable(name: "len", arg: 2, scope: !161, file: !3, line: 96, type: !13)
!165 = !DILocalVariable(name: "db_id", arg: 3, scope: !161, file: !3, line: 96, type: !56)
!166 = !DILocalVariable(name: "db_len", scope: !161, file: !3, line: 98, type: !33)
!167 = !DILocalVariable(name: "db_offset", scope: !161, file: !3, line: 99, type: !33)
!168 = !DILocalVariable(name: "pos", scope: !169, file: !3, line: 116, type: !13)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 115, column: 33)
!170 = distinct !DILexicalBlock(scope: !161, file: !3, line: 115, column: 9)
!171 = !DILocalVariable(name: "tag_len", scope: !169, file: !3, line: 117, type: !56)
!172 = !DILocalVariable(name: "tag_id", scope: !169, file: !3, line: 118, type: !56)
!173 = !DILocation(line: 96, column: 32, scope: !161)
!174 = !DILocation(line: 96, column: 41, scope: !161)
!175 = !DILocation(line: 96, column: 50, scope: !161)
!176 = !DILocation(line: 98, column: 8, scope: !161)
!177 = !DILocation(line: 99, column: 8, scope: !161)
!178 = !DILocation(line: 101, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !161, file: !3, line: 101, column: 9)
!180 = !DILocation(line: 101, column: 9, scope: !161)
!181 = !DILocation(line: 104, column: 17, scope: !161)
!182 = !DILocation(line: 104, column: 67, scope: !161)
!183 = !DILocation(line: 104, column: 45, scope: !161)
!184 = !DILocation(line: 104, column: 43, scope: !161)
!185 = !DILocation(line: 105, column: 36, scope: !161)
!186 = !DILocation(line: 108, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !161, file: !3, line: 108, column: 9)
!188 = !DILocation(line: 108, column: 18, scope: !187)
!189 = !DILocation(line: 108, column: 26, scope: !187)
!190 = !DILocation(line: 108, column: 33, scope: !187)
!191 = !DILocation(line: 108, column: 24, scope: !187)
!192 = !DILocation(line: 108, column: 9, scope: !161)
!193 = !DILocation(line: 115, column: 9, scope: !170)
!194 = !DILocation(line: 115, column: 24, scope: !170)
!195 = !DILocation(line: 115, column: 9, scope: !161)
!196 = !DILocation(line: 117, column: 13, scope: !169)
!197 = !DILocation(line: 118, column: 23, scope: !169)
!198 = !DILocation(line: 118, column: 44, scope: !169)
!199 = !DILocation(line: 118, column: 33, scope: !169)
!200 = !DILocation(line: 118, column: 13, scope: !169)
!201 = !DILocation(line: 120, column: 31, scope: !202)
!202 = distinct !DILexicalBlock(scope: !169, file: !3, line: 120, column: 13)
!203 = !DILocation(line: 120, column: 14, scope: !202)
!204 = !DILocation(line: 120, column: 13, scope: !169)
!205 = !DILocation(line: 116, column: 13, scope: !169)
!206 = !DILocation(line: 125, column: 9, scope: !169)
!207 = !DILocation(line: 125, column: 25, scope: !169)
!208 = !DILocation(line: 126, column: 15, scope: !169)
!209 = !DILocation(line: 126, column: 31, scope: !169)
!210 = !{!145, !90, i64 8}
!211 = !DILocation(line: 127, column: 9, scope: !169)
!212 = !DILocation(line: 127, column: 25, scope: !169)
!213 = !DILocation(line: 130, column: 14, scope: !161)
!214 = !DILocation(line: 132, column: 5, scope: !161)
!215 = !DILocation(line: 133, column: 1, scope: !161)
!216 = distinct !DISubprogram(name: "db_file_seek", scope: !3, file: !3, line: 135, type: !61, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !217)
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "mode", arg: 1, scope: !216, file: !3, line: 135, type: !13)
!219 = !DILocalVariable(name: "pos", arg: 2, scope: !216, file: !3, line: 135, type: !13)
!220 = !DILocation(line: 135, column: 30, scope: !216)
!221 = !DILocation(line: 135, column: 40, scope: !216)
!222 = !DILocation(line: 137, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !3, line: 137, column: 9)
!224 = !DILocation(line: 137, column: 9, scope: !216)
!225 = !DILocation(line: 139, column: 21, scope: !226)
!226 = !DILexicalBlockFile(scope: !227, file: !3, discriminator: 1)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 139, column: 16)
!228 = !DILocation(line: 139, column: 16, scope: !229)
!229 = !DILexicalBlockFile(scope: !223, file: !3, discriminator: 1)
!230 = !DILocation(line: 144, column: 1, scope: !216)
!231 = distinct !DISubprogram(name: "db_file_getlen", scope: !3, file: !3, line: 146, type: !65, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!232 = !DILocation(line: 148, column: 5, scope: !231)
!233 = distinct !DISubprogram(name: "db_file_fptr", scope: !3, file: !3, line: 151, type: !234, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{!13, !13}
!236 = !{!237}
!237 = !DILocalVariable(name: "pos", arg: 1, scope: !233, file: !3, line: 151, type: !13)
!238 = !DILocation(line: 151, column: 29, scope: !233)
!239 = !DILocation(line: 153, column: 12, scope: !233)
!240 = !DILocation(line: 153, column: 5, scope: !233)
!241 = distinct !DISubprogram(name: "db_file_open", scope: !3, file: !3, line: 39, type: !65, isLocal: true, isDefinition: true, scopeLine: 40, isOptimized: true, unit: !2, variables: !4)
!242 = !DILocation(line: 41, column: 14, scope: !241)
!243 = !DILocation(line: 42, column: 5, scope: !241)
!244 = distinct !DISubprogram(name: "db_file_close", scope: !3, file: !3, line: 45, type: !245, isLocal: true, isDefinition: true, scopeLine: 46, isOptimized: true, unit: !2, variables: !4)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !DILocation(line: 47, column: 1, scope: !244)
