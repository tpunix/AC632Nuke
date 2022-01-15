; ModuleID = 'btstack_sys_timer.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@str = private unnamed_addr constant [36 x i8] c"<BT-log> :not support timer setting\00"

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @bt_timer_schedule() local_unnamed_addr #0 section ".bt_stack_code" !dbg !16 {
  ret void, !dbg !20
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @btstack_get_timeout_ticks_for_unit(i32, i16 signext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !21 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i16 %1, metadata !34, metadata !DIExpression()), !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: nounwind optsize
define hidden i32 @btstack_get_timeout_for_ms(i32, i16 signext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !38 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i16 %1, metadata !43, metadata !DIExpression()), !dbg !45
  switch i16 %1, label %10 [
    i16 1, label %3
    i16 2, label %11
    i16 3, label %8
  ], !dbg !46

; <label>:3:                                      ; preds = %2
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !47, !tbaa !51
  %5 = icmp slt i8 %4, 0, !dbg !47
  br i1 %5, label %6, label %11, !dbg !54

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @str, i32 0, i32 0)), !dbg !55
  br label %11, !dbg !55

; <label>:8:                                      ; preds = %2
  %9 = mul i32 %0, 1000, !dbg !57
  br label %11, !dbg !61

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !62

; <label>:11:                                     ; preds = %10, %8, %6, %3, %2
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ], [ 10, %6 ], [ 10, %3 ], [ %0, %2 ]
  ret i32 %12, !dbg !63
}

; Function Attrs: nounwind optsize
define hidden void @btstack_set_timer(%struct.btstack_timer_source*, i16 signext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !64 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !92, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i16 %1, metadata !93, metadata !DIExpression()), !dbg !96
  %3 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 2, !dbg !97
  %4 = load i32, i32* %3, align 4, !dbg !97
  %5 = and i16 %1, 15, !dbg !98
  %6 = zext i16 %5 to i32, !dbg !98
  %7 = shl nuw nsw i32 %6, 16, !dbg !99
  %8 = and i32 %4, -983041, !dbg !99
  %9 = or i32 %8, %7, !dbg !99
  store i32 %9, i32* %3, align 4, !dbg !99
  %10 = and i32 %4, 65535, !dbg !100
  %11 = tail call i32 @btstack_get_timeout_for_ms(i32 %10, i16 signext %5) #6, !dbg !101
  call void @llvm.dbg.value(metadata i32 %11, metadata !94, metadata !DIExpression()), !dbg !102
  %12 = bitcast %struct.btstack_timer_source* %0 to i8*, !dbg !103
  %13 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 3, !dbg !104
  %14 = bitcast void (%struct.btstack_timer_source*)** %13 to void (i8*)**, !dbg !104
  %15 = load void (i8*)*, void (i8*)** %14, align 4, !dbg !104, !tbaa !105
  %16 = tail call zeroext i16 @sys_timer_add(i8* %12, void (i8*)* %15, i32 %11) #7, !dbg !110
  %17 = zext i16 %16 to i32, !dbg !110
  %18 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 1, !dbg !111
  store i32 %17, i32* %18, align 4, !dbg !112, !tbaa !113
  ret void, !dbg !114
}

; Function Attrs: optsize
declare zeroext i16 @sys_timer_add(i8*, void (i8*)*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* nocapture readonly) local_unnamed_addr #2 section ".bt_stack_code" !dbg !115 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !119, metadata !DIExpression()), !dbg !120
  %2 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 1, !dbg !121
  %3 = load i32, i32* %2, align 4, !dbg !121, !tbaa !113
  %4 = trunc i32 %3 to i16, !dbg !122
  tail call void @sys_timer_del(i16 zeroext %4) #7, !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: optsize
declare void @sys_timer_del(i16 zeroext) local_unnamed_addr #3

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @btstack_run_loop_embedded_execute_once() local_unnamed_addr #0 section ".bt_stack_code" !dbg !125 {
  ret void, !dbg !126
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @btstack_run_loop_embedded_get_ticks() local_unnamed_addr #0 section ".bt_stack_code" !dbg !127 {
  ret i32 0, !dbg !130
}

; Function Attrs: nounwind optsize readnone
define hidden void @bt_timer_resume_handler_register(void (...)* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !131 {
  call void @llvm.dbg.value(metadata void (...)* %0, metadata !138, metadata !DIExpression()), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !11, line: 190, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "../btcommon/btstack_sys_timer.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!10 = !{!0}
!11 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!16 = distinct !DISubprogram(name: "bt_timer_schedule", scope: !17, file: !17, line: 46, type: !18, isLocal: false, isDefinition: true, scopeLine: 47, isOptimized: true, unit: !2, variables: !4)
!17 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_sys_timer.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!18 = !DISubroutineType(types: !19)
!19 = !{null}
!20 = !DILocation(line: 51, column: 1, scope: !16)
!21 = distinct !DISubprogram(name: "btstack_get_timeout_ticks_for_unit", scope: !17, file: !17, line: 53, type: !22, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !32)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 32, baseType: !26)
!25 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 65, baseType: !28)
!27 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 48, baseType: !28)
!30 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !{!33, !34}
!33 = !DILocalVariable(name: "timeout", arg: 1, scope: !21, file: !17, line: 53, type: !29)
!34 = !DILocalVariable(name: "timer_type", arg: 2, scope: !21, file: !17, line: 53, type: !31)
!35 = !DILocation(line: 53, column: 54, scope: !21)
!36 = !DILocation(line: 53, column: 69, scope: !21)
!37 = !DILocation(line: 65, column: 5, scope: !21)
!38 = distinct !DISubprogram(name: "btstack_get_timeout_for_ms", scope: !17, file: !17, line: 67, type: !39, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!29, !29, !31}
!41 = !{!42, !43}
!42 = !DILocalVariable(name: "timeout", arg: 1, scope: !38, file: !17, line: 67, type: !29)
!43 = !DILocalVariable(name: "timer_type", arg: 2, scope: !38, file: !17, line: 67, type: !31)
!44 = !DILocation(line: 67, column: 46, scope: !38)
!45 = !DILocation(line: 67, column: 61, scope: !38)
!46 = !DILocation(line: 71, column: 9, scope: !38)
!47 = !DILocation(line: 72, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !17, line: 72, column: 9)
!49 = distinct !DILexicalBlock(scope: !50, file: !17, line: 71, column: 45)
!50 = distinct !DILexicalBlock(scope: !38, file: !17, line: 71, column: 9)
!51 = !{!52, !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 72, column: 9, scope: !49)
!55 = !DILocation(line: 72, column: 9, scope: !56)
!56 = !DILexicalBlockFile(scope: !48, file: !17, discriminator: 1)
!57 = !DILocation(line: 77, column: 25, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !17, line: 76, column: 51)
!59 = distinct !DILexicalBlock(scope: !60, file: !17, line: 76, column: 16)
!60 = distinct !DILexicalBlock(scope: !50, file: !17, line: 74, column: 16)
!61 = !DILocation(line: 77, column: 9, scope: !58)
!62 = !DILocation(line: 79, column: 5, scope: !38)
!63 = !DILocation(line: 81, column: 1, scope: !38)
!64 = distinct !DISubprogram(name: "btstack_set_timer", scope: !17, file: !17, line: 105, type: !65, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !91)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !31}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !69, line: 19, baseType: !70)
!69 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !69, line: 7, size: 160, elements: !71)
!71 = !{!72, !79, !80, !81, !82, !83, !84, !85, !90}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !70, file: !69, line: 8, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !74, line: 55, baseType: !75)
!74 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !74, line: 53, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !74, line: 54, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !70, file: !69, line: 10, baseType: !24, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !70, file: !69, line: 11, baseType: !24, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !70, file: !69, line: 12, baseType: !24, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !70, file: !69, line: 13, baseType: !24, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !70, file: !69, line: 14, baseType: !24, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !70, file: !69, line: 15, baseType: !24, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !70, file: !69, line: 17, baseType: !86, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !70, file: !69, line: 18, baseType: !9, size: 32, offset: 128)
!91 = !{!92, !93, !94}
!92 = !DILocalVariable(name: "ts", arg: 1, scope: !64, file: !17, line: 105, type: !67)
!93 = !DILocalVariable(name: "timer_type", arg: 2, scope: !64, file: !17, line: 105, type: !31)
!94 = !DILocalVariable(name: "timeout_interval", scope: !64, file: !17, line: 142, type: !28)
!95 = !DILocation(line: 105, column: 48, scope: !64)
!96 = !DILocation(line: 105, column: 58, scope: !64)
!97 = !DILocation(line: 142, column: 41, scope: !64)
!98 = !DILocation(line: 143, column: 33, scope: !64)
!99 = !DILocation(line: 143, column: 20, scope: !64)
!100 = !DILocation(line: 144, column: 55, scope: !64)
!101 = !DILocation(line: 144, column: 24, scope: !64)
!102 = !DILocation(line: 142, column: 18, scope: !64)
!103 = !DILocation(line: 145, column: 33, scope: !64)
!104 = !DILocation(line: 145, column: 59, scope: !64)
!105 = !{!106, !108, i64 12}
!106 = !{!"btstack_timer_source", !107, i64 0, !109, i64 4, !109, i64 8, !109, i64 10, !109, i64 10, !109, i64 10, !109, i64 10, !108, i64 12, !108, i64 16}
!107 = !{!"btstack_linked_item", !108, i64 0}
!108 = !{!"any pointer", !52, i64 0}
!109 = !{!"int", !52, i64 0}
!110 = !DILocation(line: 145, column: 19, scope: !64)
!111 = !DILocation(line: 145, column: 9, scope: !64)
!112 = !DILocation(line: 145, column: 17, scope: !64)
!113 = !{!106, !109, i64 4}
!114 = !DILocation(line: 148, column: 1, scope: !64)
!115 = distinct !DISubprogram(name: "btstack_run_loop_remove_timer", scope: !17, file: !17, line: 168, type: !116, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!12, !67}
!118 = !{!119}
!119 = !DILocalVariable(name: "ts", arg: 1, scope: !115, file: !17, line: 168, type: !67)
!120 = !DILocation(line: 168, column: 59, scope: !115)
!121 = !DILocation(line: 174, column: 23, scope: !115)
!122 = !DILocation(line: 174, column: 19, scope: !115)
!123 = !DILocation(line: 174, column: 5, scope: !115)
!124 = !DILocation(line: 176, column: 5, scope: !115)
!125 = distinct !DISubprogram(name: "btstack_run_loop_embedded_execute_once", scope: !17, file: !17, line: 195, type: !18, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!126 = !DILocation(line: 215, column: 1, scope: !125)
!127 = distinct !DISubprogram(name: "btstack_run_loop_embedded_get_ticks", scope: !17, file: !17, line: 216, type: !128, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!128 = !DISubroutineType(types: !129)
!129 = !{!29}
!130 = !DILocation(line: 221, column: 5, scope: !127)
!131 = distinct !DISubprogram(name: "bt_timer_resume_handler_register", scope: !17, file: !17, line: 227, type: !132, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !137)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DISubroutineType(types: !136)
!136 = !{null, null}
!137 = !{!138}
!138 = !DILocalVariable(name: "handler", arg: 1, scope: !131, file: !17, line: 227, type: !134)
!139 = !DILocation(line: 227, column: 46, scope: !131)
!140 = !DILocation(line: 232, column: 1, scope: !131)
