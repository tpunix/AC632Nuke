; ModuleID = 'a2dp_source.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.a2dp_conn = type { [6 x i8], %struct.a2dp_core_data_t, %struct.avdtp, %struct.a2dp_media }
%struct.a2dp_core_data_t = type { i8 }
%struct.avdtp = type { [2 x %struct._avdtp_local_sep], %struct.avdtp_core_data_t }
%struct._avdtp_local_sep = type { %struct._avdtp_sep_ind*, %struct.avdtp*, %struct._seid_info, i8, [16 x i8] }
%struct._avdtp_sep_ind = type { i8 (i8, i8*, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)*, void (%struct._avdtp_local_sep*)*, i8 (...)*, i8 (i8, i16)* }
%struct._avdtp_stream = type { i8 }
%struct._seid_info = type { i16 }
%struct.avdtp_core_data_t = type { %struct._avdtp_stream, %struct._avdtp_local_sep*, i8, i16, [8 x %struct._seid_req], [16 x i8], i8, i8, i16 }
%struct._seid_req = type { i8 }
%struct.a2dp_media = type { %struct.media_core_data_t, %struct.a2dp_media_probe*, %struct.a2dp_media_codec*, i32, i8, i8 }
%struct.media_core_data_t = type { i16, i16, i32 }
%struct.a2dp_media_probe = type { i32, i32 (i8*, i32 (i8*, i8*, i16)*)*, i32 (i8*, i8*, i16)*, i32 (...)*, i32 (...)*, i32 (...)* }
%struct.a2dp_media_codec = type { i32, i32 (i32)*, i32 (i8*)*, i32 (i8*, i16)*, i32 (...)*, i32 (i8*)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nounwind optsize readnone
define hidden i32 @a2dp_source_init(i8* nocapture readnone, i16 zeroext, i32) local_unnamed_addr #0 !dbg !11 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i16 %1, metadata !20, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %2, metadata !21, metadata !DIExpression()), !dbg !24
  ret i32 -1, !dbg !25
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i8 @get_a2dp_source_support() local_unnamed_addr #1 !dbg !26 {
  ret i8 0, !dbg !31
}

; Function Attrs: nounwind optsize readnone
define hidden void @__emitter_send_media_toggle(i8* nocapture, i8 zeroext) local_unnamed_addr #0 !dbg !32 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8 %1, metadata !38, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nounwind optsize readnone
define hidden void @a2dp_media_packet_info(%struct.a2dp_conn* nocapture, i8 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !42 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8 %1, metadata !227, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i16 %2, metadata !228, metadata !DIExpression()), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nounwind optsize readnone
define hidden void @sbc_param_init(%struct.a2dp_conn* nocapture, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !233 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !237, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8 %1, metadata !238, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i8 %2, metadata !239, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i8 %3, metadata !240, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8 %4, metadata !241, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8 %5, metadata !242, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i8 %6, metadata !243, metadata !DIExpression()), !dbg !250
  ret void, !dbg !251
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !6, line: 190, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_source.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!11 = distinct !DISubprogram(name: "a2dp_source_init", scope: !3, file: !3, line: 1022, type: !12, isLocal: false, isDefinition: true, scopeLine: 1023, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!7, !14, !15, !7}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(name: "buf", arg: 1, scope: !11, file: !3, line: 1022, type: !14)
!20 = !DILocalVariable(name: "len", arg: 2, scope: !11, file: !3, line: 1022, type: !15)
!21 = !DILocalVariable(name: "deal_flag", arg: 3, scope: !11, file: !3, line: 1022, type: !7)
!22 = !DILocation(line: 1022, column: 28, scope: !11)
!23 = !DILocation(line: 1022, column: 37, scope: !11)
!24 = !DILocation(line: 1022, column: 46, scope: !11)
!25 = !DILocation(line: 1024, column: 5, scope: !11)
!26 = distinct !DISubprogram(name: "get_a2dp_source_support", scope: !3, file: !3, line: 1026, type: !27, isLocal: false, isDefinition: true, scopeLine: 1027, isOptimized: true, unit: !2, variables: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 44, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DILocation(line: 1028, column: 5, scope: !26)
!32 = distinct !DISubprogram(name: "__emitter_send_media_toggle", scope: !3, file: !3, line: 1031, type: !33, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !29}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "addr", arg: 1, scope: !32, file: !3, line: 1031, type: !35)
!38 = !DILocalVariable(name: "toggle", arg: 2, scope: !32, file: !3, line: 1031, type: !29)
!39 = !DILocation(line: 1031, column: 38, scope: !32)
!40 = !DILocation(line: 1031, column: 47, scope: !32)
!41 = !DILocation(line: 1033, column: 1, scope: !32)
!42 = distinct !DISubprogram(name: "a2dp_media_packet_info", scope: !3, file: !3, line: 1035, type: !43, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !225)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !29, !15}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_conn", file: !47, line: 237, size: 1024, elements: !48)
!47 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!48 = !{!49, !56, !63, !167}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !46, file: !47, line: 238, baseType: !50, size: 48)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !51, line: 7, baseType: !52)
!51 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !54)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 44, baseType: !30)
!54 = !{!55}
!55 = !DISubrange(count: 6)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_core_data", scope: !46, file: !47, line: 239, baseType: !57, size: 8, offset: 48)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_core_data_t", file: !47, line: 229, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 225, size: 8, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !58, file: !47, line: 226, baseType: !29, size: 1, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "discover_req", scope: !58, file: !47, line: 227, baseType: !29, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "bqb_test_cnt", scope: !58, file: !47, line: 228, baseType: !29, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !46, file: !47, line: 240, baseType: !64, size: 768, offset: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avdtp", file: !65, line: 335, size: 768, elements: !66)
!65 = !DIFile(filename: "../btstack/Profile/include/bredr/avdtp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!66 = !{!67, !141}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "local_seps", scope: !64, file: !65, line: 337, baseType: !68, size: 448)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 448, elements: !139)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_local_sep", file: !65, line: 293, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_local_sep", file: !65, line: 282, size: 224, elements: !71)
!71 = !{!72, !121, !123, !133, !134, !135}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !70, file: !65, line: 283, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_sep_ind", file: !65, line: 350, size: 288, elements: !76)
!76 = !{!77, !82, !87, !100, !104, !105, !109, !113, !117}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !75, file: !65, line: 351, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !29, !14, !35}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !16, line: 44, baseType: !30)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "set_configuration", scope: !75, file: !65, line: 353, baseType: !83, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32)
!84 = !DISubroutineType(types: !85)
!85 = !{!81, !86, !35, !29, !14}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !75, file: !65, line: 355, baseType: !88, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DISubroutineType(types: !90)
!90 = !{!81, !86, !91, !29}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_stream", file: !65, line: 280, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_stream", file: !65, line: 268, size: 8, elements: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "rseid", scope: !93, file: !65, line: 270, baseType: !29, size: 4, flags: DIFlagBitField, extraData: i64 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "int_role", scope: !93, file: !65, line: 271, baseType: !29, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "open_acp", scope: !93, file: !65, line: 272, baseType: !29, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "starting", scope: !93, file: !65, line: 278, baseType: !29, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !93, file: !65, line: 279, baseType: !29, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !75, file: !65, line: 356, baseType: !101, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DISubroutineType(types: !103)
!103 = !{!81, !86, !91}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !75, file: !65, line: 357, baseType: !101, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !75, file: !65, line: 359, baseType: !106, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DISubroutineType(types: !108)
!108 = !{!81, !86, !91, !35}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !75, file: !65, line: 361, baseType: !110, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !86}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !75, file: !65, line: 362, baseType: !114, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 32)
!115 = !DISubroutineType(types: !116)
!116 = !{!81, null}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "delayreport", scope: !75, file: !65, line: 363, baseType: !118, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!119 = !DISubroutineType(types: !120)
!120 = !{!81, !29, !15}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !70, file: !65, line: 284, baseType: !122, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !70, file: !65, line: 286, baseType: !124, size: 16, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_info", file: !65, line: 124, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_info", file: !65, line: 117, size: 16, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !125, file: !65, line: 118, baseType: !29, size: 1, flags: DIFlagBitField, extraData: i64 0)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !125, file: !65, line: 119, baseType: !29, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "seid", scope: !125, file: !65, line: 120, baseType: !29, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rfa2", scope: !125, file: !65, line: 121, baseType: !29, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !65, line: 122, baseType: !29, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "media_type", scope: !125, file: !65, line: 123, baseType: !29, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !70, file: !65, line: 288, baseType: !29, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "codec_type", scope: !70, file: !65, line: 289, baseType: !29, size: 4, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !70, file: !65, line: 290, baseType: !136, size: 128, offset: 88)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 16)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "adp_core_data", scope: !64, file: !65, line: 338, baseType: !142, size: 320, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_core_data_t", file: !65, line: 333, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 318, size: 320, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !143, file: !65, line: 319, baseType: !92, size: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep", scope: !143, file: !65, line: 320, baseType: !86, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep_ind", scope: !143, file: !65, line: 321, baseType: !29, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !143, file: !65, line: 322, baseType: !15, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !143, file: !65, line: 323, baseType: !150, size: 64, offset: 96)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !156)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_req", file: !65, line: 129, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_req", file: !65, line: 126, size: 8, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !152, file: !65, line: 127, baseType: !29, size: 2, flags: DIFlagBitField, extraData: i64 0)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !152, file: !65, line: 128, baseType: !29, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !143, file: !65, line: 324, baseType: !136, size: 128, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "seid_ind", scope: !143, file: !65, line: 325, baseType: !29, size: 8, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pending_req", scope: !143, file: !65, line: 326, baseType: !29, size: 8, offset: 296)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "max_acp_seid", scope: !143, file: !65, line: 327, baseType: !29, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cur_acp_seid", scope: !143, file: !65, line: 328, baseType: !29, size: 4, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aac_codec_prior", scope: !143, file: !65, line: 329, baseType: !29, size: 4, offset: 312, flags: DIFlagBitField, extraData: i64 304)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !143, file: !65, line: 330, baseType: !29, size: 2, offset: 316, flags: DIFlagBitField, extraData: i64 304)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "get_discover", scope: !143, file: !65, line: 331, baseType: !29, size: 1, offset: 318, flags: DIFlagBitField, extraData: i64 304)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !143, file: !65, line: 332, baseType: !29, size: 1, offset: 319, flags: DIFlagBitField, extraData: i64 304)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !46, file: !47, line: 241, baseType: !168, size: 192, offset: 832)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media", file: !47, line: 215, size: 192, elements: !169)
!169 = !{!170, !179, !202, !221, !222, !223, !224}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "media_core_data", scope: !168, file: !47, line: 216, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "media_core_data_t", file: !47, line: 213, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 209, size: 64, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !172, file: !47, line: 210, baseType: !15, size: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cp_type", scope: !172, file: !47, line: 211, baseType: !15, size: 16, offset: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !172, file: !47, line: 212, baseType: !177, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 48, baseType: !178)
!178 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !168, file: !47, line: 217, baseType: !180, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_probe", file: !47, line: 190, size: 192, elements: !182)
!182 = !{!183, !184, !191, !196, !200, !201}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !47, line: 192, baseType: !7, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !181, file: !47, line: 193, baseType: !185, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!186 = !DISubroutineType(types: !187)
!187 = !{!7, !14, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DISubroutineType(types: !190)
!190 = !{!7, !14, !35, !15}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !181, file: !47, line: 194, baseType: !192, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DISubroutineType(types: !194)
!194 = !{!7, !195, !35, !15}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !181, file: !47, line: 195, baseType: !197, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DISubroutineType(types: !199)
!199 = !{!7, null}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !181, file: !47, line: 196, baseType: !197, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !181, file: !47, line: 197, baseType: !197, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !168, file: !47, line: 218, baseType: !203, size: 32, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_codec", file: !47, line: 200, size: 192, elements: !205)
!205 = !{!206, !207, !211, !215, !219, !220}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !47, line: 201, baseType: !7, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !204, file: !47, line: 202, baseType: !208, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DISubroutineType(types: !210)
!210 = !{!7, !7}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !204, file: !47, line: 203, baseType: !212, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!213 = !DISubroutineType(types: !214)
!214 = !{!7, !14}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !204, file: !47, line: 204, baseType: !216, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!217 = !DISubroutineType(types: !218)
!218 = !{!7, !35, !15}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !204, file: !47, line: 205, baseType: !197, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !204, file: !47, line: 206, baseType: !212, size: 32, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !168, file: !47, line: 219, baseType: !177, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nchannels", scope: !168, file: !47, line: 220, baseType: !29, size: 4, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !168, file: !47, line: 221, baseType: !29, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !47, line: 222, baseType: !29, size: 8, offset: 168)
!225 = !{!226, !227, !228}
!226 = !DILocalVariable(name: "a2dp_conn", arg: 1, scope: !42, file: !3, line: 1035, type: !45)
!227 = !DILocalVariable(name: "cp_type", arg: 2, scope: !42, file: !3, line: 1035, type: !29)
!228 = !DILocalVariable(name: "remote_mtu", arg: 3, scope: !42, file: !3, line: 1035, type: !15)
!229 = !DILocation(line: 1035, column: 47, scope: !42)
!230 = !DILocation(line: 1035, column: 61, scope: !42)
!231 = !DILocation(line: 1035, column: 74, scope: !42)
!232 = !DILocation(line: 1037, column: 1, scope: !42)
!233 = distinct !DISubprogram(name: "sbc_param_init", scope: !3, file: !3, line: 1038, type: !234, isLocal: false, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !45, !29, !29, !29, !29, !29, !29}
!236 = !{!237, !238, !239, !240, !241, !242, !243}
!237 = !DILocalVariable(name: "conn", arg: 1, scope: !233, file: !3, line: 1038, type: !45)
!238 = !DILocalVariable(name: "channel_mode", arg: 2, scope: !233, file: !3, line: 1038, type: !29)
!239 = !DILocalVariable(name: "block_length", arg: 3, scope: !233, file: !3, line: 1038, type: !29)
!240 = !DILocalVariable(name: "subbands", arg: 4, scope: !233, file: !3, line: 1038, type: !29)
!241 = !DILocalVariable(name: "allocation_method", arg: 5, scope: !233, file: !3, line: 1038, type: !29)
!242 = !DILocalVariable(name: "frequency", arg: 6, scope: !233, file: !3, line: 1039, type: !29)
!243 = !DILocalVariable(name: "max_bitpool", arg: 7, scope: !233, file: !3, line: 1039, type: !29)
!244 = !DILocation(line: 1038, column: 39, scope: !233)
!245 = !DILocation(line: 1038, column: 48, scope: !233)
!246 = !DILocation(line: 1038, column: 65, scope: !233)
!247 = !DILocation(line: 1038, column: 82, scope: !233)
!248 = !DILocation(line: 1038, column: 95, scope: !233)
!249 = !DILocation(line: 1039, column: 24, scope: !233)
!250 = !DILocation(line: 1039, column: 38, scope: !233)
!251 = !DILocation(line: 1041, column: 1, scope: !233)
