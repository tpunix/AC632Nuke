; ModuleID = 'run_loop.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/run_loop.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.run_loop = type { %struct.btstack_linked_item, void (%struct.run_loop*)*, i8* }

@stack_run_loop_head = internal global %struct.btstack_linked_item* null, section ".bt_stack_data", align 4, !dbg !0

; Function Attrs: nounwind optsize
define hidden void @stack_run_loop_register(%struct.run_loop*, void (%struct.run_loop*)*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !30 {
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !34, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata void (%struct.run_loop*)* %1, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i8* %2, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** @stack_run_loop_head, metadata !40, metadata !DIExpression()), !dbg !49
  %4 = getelementptr inbounds %struct.run_loop, %struct.run_loop* %0, i32 0, i32 1, !dbg !51
  store void (%struct.run_loop*)* %1, void (%struct.run_loop*)** %4, align 4, !dbg !52, !tbaa !53
  %5 = getelementptr inbounds %struct.run_loop, %struct.run_loop* %0, i32 0, i32 2, !dbg !59
  store i8* %2, i8** %5, align 4, !dbg !60, !tbaa !61
  %6 = getelementptr inbounds %struct.run_loop, %struct.run_loop* %0, i32 0, i32 0, !dbg !62
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** nonnull @stack_run_loop_head, %struct.btstack_linked_item* %6) #3, !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nounwind optsize
define hidden void @stack_run_loop_remove(%struct.run_loop*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !65 {
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !67, metadata !DIExpression()), !dbg !68
  %2 = getelementptr inbounds %struct.run_loop, %struct.run_loop* %0, i32 0, i32 0, !dbg !69
  %3 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** nonnull @stack_run_loop_head, %struct.btstack_linked_item* %2) #3, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @bt_profile_loop() local_unnamed_addr #0 section ".bt_stack_code" !dbg !72 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** @stack_run_loop_head, metadata !75, metadata !DIExpression()), !dbg !82
  tail call void @btstack_run_loop_embedded_execute_once() #3, !dbg !84
  %1 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @stack_run_loop_head, align 4, !tbaa !85
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %1, metadata !81, metadata !DIExpression()), !dbg !86
  %2 = icmp eq %struct.btstack_linked_item* %1, null, !dbg !87
  br i1 %2, label %17, label %3, !dbg !87

; <label>:3:                                      ; preds = %0
  br label %4, !dbg !90

; <label>:4:                                      ; preds = %12, %3
  %5 = phi %struct.btstack_linked_item* [ %14, %12 ], [ %1, %3 ]
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %5, i32 1, !dbg !90
  %7 = bitcast %struct.btstack_linked_item* %6 to void (%struct.run_loop*)**, !dbg !90
  %8 = load void (%struct.run_loop*)*, void (%struct.run_loop*)** %7, align 4, !dbg !90, !tbaa !53
  %9 = icmp eq void (%struct.run_loop*)* %8, null, !dbg !94
  br i1 %9, label %12, label %10, !dbg !95

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.btstack_linked_item* %5 to %struct.run_loop*, !dbg !96
  tail call void %8(%struct.run_loop* %11) #3, !dbg !97
  br label %12, !dbg !99

; <label>:12:                                     ; preds = %10, %4
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %5, i32 0, i32 0, !dbg !100
  %14 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %13, align 4, !tbaa !85
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %14, metadata !81, metadata !DIExpression()), !dbg !86
  %15 = icmp eq %struct.btstack_linked_item* %14, null, !dbg !87
  br i1 %15, label %16, label %4, !dbg !87, !llvm.loop !102

; <label>:16:                                     ; preds = %12
  br label %17, !dbg !105

; <label>:17:                                     ; preds = %16, %0
  ret void, !dbg !105
}

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @btstack_run_loop_embedded_execute_once() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stack_run_loop_head", scope: !2, file: !24, line: 12, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !23)
!3 = !DIFile(filename: "../btcommon/run_loop.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !8, line: 9, size: 96, elements: !9)
!8 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!9 = !{!10, !17, !21}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !7, file: !8, line: 10, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !12, line: 55, baseType: !13)
!12 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !12, line: 53, size: 32, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !12, line: 54, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !7, file: !8, line: 11, baseType: !18, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !6}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !7, file: !8, line: 12, baseType: !22, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!23 = !{!0}
!24 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/run_loop.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_t", file: !12, line: 58, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!30 = distinct !DISubprogram(name: "stack_run_loop_register", scope: !24, file: !24, line: 44, type: !31, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !6, !18, !22}
!33 = !{!34, !35, !36}
!34 = !DILocalVariable(name: "loop", arg: 1, scope: !30, file: !24, line: 44, type: !6)
!35 = !DILocalVariable(name: "run", arg: 2, scope: !30, file: !24, line: 44, type: !18)
!36 = !DILocalVariable(name: "var", arg: 3, scope: !30, file: !24, line: 44, type: !22)
!37 = !DILocation(line: 44, column: 47, scope: !30)
!38 = !DILocation(line: 44, column: 59, scope: !30)
!39 = !DILocation(line: 44, column: 94, scope: !30)
!40 = !DILocalVariable(name: "head", arg: 1, scope: !41, file: !24, line: 16, type: !44)
!41 = distinct !DISubprogram(name: "__run_loop_register", scope: !24, file: !24, line: 16, type: !42, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !45)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !6, !18, !22}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!45 = !{!40, !46, !47, !48}
!46 = !DILocalVariable(name: "loop", arg: 2, scope: !41, file: !24, line: 16, type: !6)
!47 = !DILocalVariable(name: "run", arg: 3, scope: !41, file: !24, line: 17, type: !18)
!48 = !DILocalVariable(name: "var", arg: 4, scope: !41, file: !24, line: 17, type: !22)
!49 = !DILocation(line: 16, column: 56, scope: !41, inlinedAt: !50)
!50 = distinct !DILocation(line: 49, column: 5, scope: !30)
!51 = !DILocation(line: 20, column: 11, scope: !41, inlinedAt: !50)
!52 = !DILocation(line: 20, column: 15, scope: !41, inlinedAt: !50)
!53 = !{!54, !56, i64 4}
!54 = !{!"run_loop", !55, i64 0, !56, i64 4, !56, i64 8}
!55 = !{!"btstack_linked_item", !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 21, column: 11, scope: !41, inlinedAt: !50)
!60 = !DILocation(line: 21, column: 15, scope: !41, inlinedAt: !50)
!61 = !{!54, !56, i64 8}
!62 = !DILocation(line: 22, column: 47, scope: !41, inlinedAt: !50)
!63 = !DILocation(line: 22, column: 5, scope: !41, inlinedAt: !50)
!64 = !DILocation(line: 50, column: 1, scope: !30)
!65 = distinct !DISubprogram(name: "stack_run_loop_remove", scope: !24, file: !24, line: 52, type: !19, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !66)
!66 = !{!67}
!67 = !DILocalVariable(name: "loop", arg: 1, scope: !65, file: !24, line: 52, type: !6)
!68 = !DILocation(line: 52, column: 45, scope: !65)
!69 = !DILocation(line: 54, column: 63, scope: !65)
!70 = !DILocation(line: 54, column: 5, scope: !65)
!71 = !DILocation(line: 55, column: 1, scope: !65)
!72 = distinct !DISubprogram(name: "bt_profile_loop", scope: !24, file: !24, line: 57, type: !73, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !DILocalVariable(name: "head", arg: 1, scope: !76, file: !24, line: 27, type: !44)
!76 = distinct !DISubprogram(name: "__run_loop_schedule", scope: !24, file: !24, line: 27, type: !77, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !44}
!79 = !{!75, !80, !81}
!80 = !DILocalVariable(name: "p", scope: !76, file: !24, line: 29, type: !6)
!81 = !DILocalVariable(name: "it", scope: !76, file: !24, line: 30, type: !26)
!82 = !DILocation(line: 27, column: 56, scope: !76, inlinedAt: !83)
!83 = distinct !DILocation(line: 59, column: 5, scope: !72)
!84 = !DILocation(line: 31, column: 5, scope: !76, inlinedAt: !83)
!85 = !{!56, !56, i64 0}
!86 = !DILocation(line: 30, column: 28, scope: !76, inlinedAt: !83)
!87 = !DILocation(line: 32, column: 5, scope: !88, inlinedAt: !83)
!88 = !DILexicalBlockFile(scope: !89, file: !24, discriminator: 1)
!89 = distinct !DILexicalBlock(scope: !76, file: !24, line: 32, column: 5)
!90 = !DILocation(line: 37, column: 16, scope: !91, inlinedAt: !83)
!91 = distinct !DILexicalBlock(scope: !92, file: !24, line: 37, column: 13)
!92 = distinct !DILexicalBlock(scope: !93, file: !24, line: 32, column: 42)
!93 = distinct !DILexicalBlock(scope: !89, file: !24, line: 32, column: 5)
!94 = !DILocation(line: 37, column: 13, scope: !91, inlinedAt: !83)
!95 = !DILocation(line: 37, column: 13, scope: !92, inlinedAt: !83)
!96 = !DILocation(line: 34, column: 13, scope: !92, inlinedAt: !83)
!97 = !DILocation(line: 38, column: 13, scope: !98, inlinedAt: !83)
!98 = distinct !DILexicalBlock(scope: !91, file: !24, line: 37, column: 21)
!99 = !DILocation(line: 39, column: 9, scope: !98, inlinedAt: !83)
!100 = !DILocation(line: 32, column: 36, scope: !101, inlinedAt: !83)
!101 = !DILexicalBlockFile(scope: !93, file: !24, discriminator: 2)
!102 = distinct !{!102, !103, !104}
!103 = !DILocation(line: 32, column: 5, scope: !89)
!104 = !DILocation(line: 41, column: 5, scope: !89)
!105 = !DILocation(line: 60, column: 1, scope: !72)
