; ModuleID = 'hfp_ag_profile.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hfp_ag_profile.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nounwind optsize readnone
define hidden i32 @hfp_ag_buf_init(i8* nocapture readnone, i32, i32) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 %1, metadata !28, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %2, metadata !29, metadata !DIExpression()), !dbg !32
  ret i32 -1006, !dbg !33
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @setup_hfp_ag_esco_link(i8* nocapture readnone) local_unnamed_addr #0 !dbg !34 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !43
  ret i32 -1006, !dbg !44
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !17, line: 190, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !16)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hfp_ag_profile.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 31, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15}
!8 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!9 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!10 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!11 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!12 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!13 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!14 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!15 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!16 = !{!0}
!17 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!22 = distinct !DISubprogram(name: "hfp_ag_buf_init", scope: !3, file: !3, line: 1239, type: !23, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!18, !25, !18, !18}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "buf", arg: 1, scope: !22, file: !3, line: 1239, type: !25)
!28 = !DILocalVariable(name: "size", arg: 2, scope: !22, file: !3, line: 1239, type: !18)
!29 = !DILocalVariable(name: "deal_flag", arg: 3, scope: !22, file: !3, line: 1239, type: !18)
!30 = !DILocation(line: 1239, column: 27, scope: !22)
!31 = !DILocation(line: 1239, column: 36, scope: !22)
!32 = !DILocation(line: 1239, column: 46, scope: !22)
!33 = !DILocation(line: 1241, column: 5, scope: !22)
!34 = distinct !DISubprogram(name: "setup_hfp_ag_esco_link", scope: !3, file: !3, line: 1243, type: !35, isLocal: false, isDefinition: true, scopeLine: 1244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !41)
!35 = !DISubroutineType(types: !36)
!36 = !{!18, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !39, line: 44, baseType: !40)
!39 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DILocalVariable(name: "addr", arg: 1, scope: !34, file: !3, line: 1243, type: !37)
!43 = !DILocation(line: 1243, column: 32, scope: !34)
!44 = !DILocation(line: 1245, column: 5, scope: !34)
