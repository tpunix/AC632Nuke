; ModuleID = 'iap_profile.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@bt_suspend_iap_resumeiap_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @iap_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @iap_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @iap_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_iap_resumeiap_release to i8*)], section "llvm.metadata"

; Function Attrs: nounwind optsize
define hidden void @iap_data_deal_handle_register(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !81 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !89, metadata !DIExpression()), !dbg !90
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !91, !tbaa !92
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 13, !dbg !96
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %3, align 4, !dbg !97, !tbaa !98
  ret void, !dbg !100
}

; Function Attrs: nounwind optsize readnone
define hidden zeroext i8 @iap_check_conn_for_rfcomm_id(i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !101 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !105, metadata !DIExpression()), !dbg !108
  ret i8 0, !dbg !109
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @iap_core_data_for_send(i8* nocapture readnone, i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i16 %1, metadata !115, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i8 0, metadata !116, metadata !DIExpression()), !dbg !119
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind optsize readnone
define hidden void @iap_core_data_for_set(i8* nocapture, i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !121 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !125, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i16 %1, metadata !126, metadata !DIExpression()), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @iap_suspend() #2 section ".bt_stack_code" !dbg !132 {
  ret i32 0, !dbg !135
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @iap_resume() #2 section ".bt_stack_code" !dbg !136 {
  ret i32 0, !dbg !137
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @iap_release() #2 section ".bt_stack_code" !dbg !138 {
  ret i32 0, !dbg !141
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !77, line: 190, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/iap_profile.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !{!0, !8, !21}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "bt_suspend_iap_resumeiap_release", scope: !2, file: !3, line: 464, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !12, line: 313, size: 96, elements: !13)
!12 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!13 = !{!14, !19, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !11, file: !12, line: 314, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, null}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !11, file: !12, line: 315, baseType: !15, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !11, file: !12, line: 316, baseType: !15, size: 32, offset: 64)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "iap_handl", scope: !2, file: !3, line: 19, type: !23, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "iap_profile_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "../btstack/Profile/include/bredr/iap_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 21, size: 288, elements: !27)
!27 = !{!28, !45}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !26, file: !25, line: 22, baseType: !29, size: 96)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !30, line: 9, size: 96, elements: !31)
!30 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!31 = !{!32, !39, !44}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !29, file: !30, line: 10, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !34, line: 55, baseType: !35)
!34 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !34, line: 53, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !34, line: 54, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !29, file: !30, line: 11, baseType: !40, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !29, file: !30, line: 12, baseType: !6, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !26, file: !25, line: 23, baseType: !46, size: 192, offset: 96)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !75)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "iap_conn_t", file: !25, line: 19, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 11, size: 192, elements: !49)
!49 = !{!50, !53, !57, !58, !59, !62, !65}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "iap_send_list", scope: !48, file: !25, line: 12, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !34, line: 101, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !48, file: !25, line: 13, baseType: !54, size: 16, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 13, baseType: !56)
!55 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_cid", scope: !48, file: !25, line: 14, baseType: !54, size: 16, offset: 48)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_send_cmd_handle", scope: !48, file: !25, line: 15, baseType: !54, size: 16, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_dlci", scope: !48, file: !25, line: 16, baseType: !60, size: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !55, line: 15, baseType: !61)
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !48, file: !25, line: 17, baseType: !63, size: 8, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 11, baseType: !64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !48, file: !25, line: 18, baseType: !66, size: 48, offset: 136)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !67, line: 7, baseType: !68)
!67 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 48, elements: !73)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 20, baseType: !71)
!70 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !72, line: 29, baseType: !64)
!72 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!73 = !{!74}
!74 = !DISubrange(count: 6)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!81 = distinct !DISubprogram(name: "iap_data_deal_handle_register", scope: !3, file: !3, line: 389, type: !82, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !63, !54, !87, !54}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!88 = !{!89}
!89 = !DILocalVariable(name: "handler", arg: 1, scope: !81, file: !3, line: 389, type: !84)
!90 = !DILocation(line: 389, column: 43, scope: !81)
!91 = !DILocation(line: 391, column: 5, scope: !81)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !DILocation(line: 391, column: 21, scope: !81)
!97 = !DILocation(line: 391, column: 42, scope: !81)
!98 = !{!99, !93, i64 52}
!99 = !{!"user_interface_handler", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24, !93, i64 28, !93, i64 32, !93, i64 36, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !93, i64 56}
!100 = !DILocation(line: 392, column: 1, scope: !81)
!101 = distinct !DISubprogram(name: "iap_check_conn_for_rfcomm_id", scope: !3, file: !3, line: 394, type: !102, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!63, !54}
!104 = !{!105, !106}
!105 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !101, file: !3, line: 394, type: !54)
!106 = !DILocalVariable(name: "conn", scope: !101, file: !3, line: 396, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!108 = !DILocation(line: 394, column: 37, scope: !101)
!109 = !DILocation(line: 408, column: 1, scope: !101)
!110 = distinct !DISubprogram(name: "iap_core_data_for_send", scope: !3, file: !3, line: 410, type: !111, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!18, !87, !54}
!113 = !{!114, !115, !116}
!114 = !DILocalVariable(name: "packet", arg: 1, scope: !110, file: !3, line: 410, type: !87)
!115 = !DILocalVariable(name: "size", arg: 2, scope: !110, file: !3, line: 410, type: !54)
!116 = !DILocalVariable(name: "len", scope: !110, file: !3, line: 412, type: !63)
!117 = !DILocation(line: 410, column: 32, scope: !110)
!118 = !DILocation(line: 410, column: 44, scope: !110)
!119 = !DILocation(line: 412, column: 8, scope: !110)
!120 = !DILocation(line: 423, column: 1, scope: !110)
!121 = distinct !DISubprogram(name: "iap_core_data_for_set", scope: !3, file: !3, line: 425, type: !122, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !87, !54}
!124 = !{!125, !126, !127}
!125 = !DILocalVariable(name: "packet", arg: 1, scope: !121, file: !3, line: 425, type: !87)
!126 = !DILocalVariable(name: "size", arg: 2, scope: !121, file: !3, line: 425, type: !54)
!127 = !DILocalVariable(name: "len", scope: !121, file: !3, line: 427, type: !63)
!128 = !DILocation(line: 425, column: 32, scope: !121)
!129 = !DILocation(line: 425, column: 44, scope: !121)
!130 = !DILocation(line: 436, column: 1, scope: !131)
!131 = !DILexicalBlockFile(scope: !121, file: !3, discriminator: 1)
!132 = distinct !DISubprogram(name: "iap_suspend", scope: !3, file: !3, line: 459, type: !133, isLocal: true, isDefinition: true, scopeLine: 460, isOptimized: true, unit: !2, variables: !4)
!133 = !DISubroutineType(types: !134)
!134 = !{!18}
!135 = !DILocation(line: 461, column: 5, scope: !132)
!136 = distinct !DISubprogram(name: "iap_resume", scope: !3, file: !3, line: 455, type: !133, isLocal: true, isDefinition: true, scopeLine: 456, isOptimized: true, unit: !2, variables: !4)
!137 = !DILocation(line: 457, column: 5, scope: !136)
!138 = distinct !DISubprogram(name: "iap_release", scope: !3, file: !3, line: 439, type: !133, isLocal: true, isDefinition: true, scopeLine: 440, isOptimized: true, unit: !2, variables: !139)
!139 = !{!140}
!140 = !DILocalVariable(name: "conn", scope: !138, file: !3, line: 444, type: !107)
!141 = !DILocation(line: 453, column: 1, scope: !142)
!142 = !DILexicalBlockFile(scope: !138, file: !3, discriminator: 1)
