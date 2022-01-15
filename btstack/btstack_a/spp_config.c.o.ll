; ModuleID = 'spp_config.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.SPP_CONFIG_VAR = type { i8, %struct.spp_operation_t* }
%struct.spp_operation_t = type { i32 (i8*)*, i32 (i8*, i8*, i16)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 ()* }

@spp_config_var = common hidden global %struct.SPP_CONFIG_VAR zeroinitializer, align 4, !dbg !0

; Function Attrs: nounwind optsize
define hidden void @bt_3th_spp_status_callback(i8 zeroext) local_unnamed_addr #0 !dbg !58 {
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !62, metadata !DIExpression()), !dbg !63
  store i8 %0, i8* %2, align 1, !tbaa !64
  %3 = icmp eq i8 %0, 1, !dbg !67
  %4 = zext i1 %3 to i8, !dbg !67
  store i8 %4, i8* getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 0), align 4, !tbaa !68
  call void @llvm.dbg.value(metadata i8* %2, metadata !62, metadata !DIExpression(DW_OP_deref)), !dbg !63
  call void @bt_3th_event_send_to_user(i16 zeroext 2, i8* nonnull %2, i32 1) #5, !dbg !71
  ret void, !dbg !72
}

; Function Attrs: optsize
declare void @bt_3th_event_send_to_user(i16 zeroext, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @bt_3th_spp_fw_ready(i8* nocapture readnone) local_unnamed_addr #2 !dbg !73 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !78, metadata !DIExpression()), !dbg !79
  %2 = load i8, i8* getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 0), align 4, !dbg !80, !tbaa !68
  %3 = icmp ne i8 %2, 0, !dbg !81
  %4 = zext i1 %3 to i8, !dbg !82
  ret i8 %4, !dbg !83
}

; Function Attrs: nounwind optsize
define hidden i32 @bt_3th_spp_send(i8* nocapture readnone, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !84 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !89, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8* %1, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i16 %2, metadata !91, metadata !DIExpression()), !dbg !99
  %4 = load %struct.spp_operation_t*, %struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1), align 4, !dbg !100, !tbaa !101
  %5 = icmp ne %struct.spp_operation_t* %4, null, !dbg !102
  %6 = load i8, i8* getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 0), align 4, !dbg !103
  %7 = icmp eq i8 %6, 1, !dbg !105
  %8 = and i1 %5, %7, !dbg !106
  br i1 %8, label %9, label %16, !dbg !106

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.spp_operation_t, %struct.spp_operation_t* %4, i32 0, i32 1, !dbg !107
  %11 = load i32 (i8*, i8*, i16)*, i32 (i8*, i8*, i16)** %10, align 4, !dbg !107, !tbaa !108
  %12 = tail call i32 %11(i8* null, i8* %1, i16 zeroext %2) #5, !dbg !110
  call void @llvm.dbg.value(metadata i32 %12, metadata !92, metadata !DIExpression()), !dbg !111
  switch i32 %12, label %16 [
    i32 0, label %14
    i32 1, label %13
  ], !dbg !112

; <label>:13:                                     ; preds = %9
  br label %14, !dbg !113

; <label>:14:                                     ; preds = %13, %9
  %15 = phi i32 [ 0, %9 ], [ 1, %13 ]
  br label %16

; <label>:16:                                     ; preds = %14, %9, %3
  %17 = phi i32 [ %15, %14 ], [ -1, %9 ], [ -1, %3 ]
  ret i32 %17, !dbg !117
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_spp_callback_set(void ()*, void (i8*, i8*, i16)*, void (i8)*) local_unnamed_addr #0 !dbg !118 {
  call void @llvm.dbg.value(metadata void ()* %0, metadata !129, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata void (i8*, i8*, i16)* %1, metadata !130, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata void (i8)* %2, metadata !131, metadata !DIExpression()), !dbg !134
  %4 = load %struct.spp_operation_t*, %struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1), align 4, !dbg !135, !tbaa !101
  %5 = getelementptr inbounds %struct.spp_operation_t, %struct.spp_operation_t* %4, i32 0, i32 2, !dbg !136
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 4, !dbg !136, !tbaa !137
  %7 = bitcast void ()* %0 to i8*, !dbg !138
  %8 = tail call i32 %6(i8* null, i8* %7) #5, !dbg !139
  %9 = load %struct.spp_operation_t*, %struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1), align 4, !dbg !140, !tbaa !101
  %10 = getelementptr inbounds %struct.spp_operation_t, %struct.spp_operation_t* %9, i32 0, i32 3, !dbg !141
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 4, !dbg !141, !tbaa !142
  %12 = bitcast void (i8*, i8*, i16)* %1 to i8*, !dbg !143
  %13 = tail call i32 %11(i8* null, i8* %12) #5, !dbg !144
  %14 = load %struct.spp_operation_t*, %struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1), align 4, !dbg !145, !tbaa !101
  %15 = getelementptr inbounds %struct.spp_operation_t, %struct.spp_operation_t* %14, i32 0, i32 4, !dbg !146
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %15, align 4, !dbg !146, !tbaa !147
  %17 = bitcast void (i8)* %2 to i8*, !dbg !148
  %18 = tail call i32 %16(i8* null, i8* %17) #5, !dbg !149
  ret void, !dbg !150
}

; Function Attrs: nounwind optsize
define hidden i32 @bt_3th_spp_data_send(i8* nocapture readnone, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !155, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i8* %1, metadata !156, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i16 %2, metadata !157, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 0, metadata !158, metadata !DIExpression()), !dbg !162
  %4 = load %struct.spp_operation_t*, %struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1), align 4, !dbg !163, !tbaa !101
  %5 = icmp eq %struct.spp_operation_t* %4, null, !dbg !165
  br i1 %5, label %10, label %6, !dbg !166

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.spp_operation_t, %struct.spp_operation_t* %4, i32 0, i32 1, !dbg !167
  %8 = load i32 (i8*, i8*, i16)*, i32 (i8*, i8*, i16)** %7, align 4, !dbg !167, !tbaa !108
  %9 = tail call i32 %8(i8* null, i8* %1, i16 zeroext %2) #5, !dbg !169
  call void @llvm.dbg.value(metadata i32 %9, metadata !158, metadata !DIExpression()), !dbg !162
  br label %10, !dbg !170

; <label>:10:                                     ; preds = %6, %3
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !158, metadata !DIExpression()), !dbg !162
  ret i32 %11, !dbg !171
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @bt_3th_get_jl_spp_status() local_unnamed_addr #3 !dbg !172 {
  %1 = load i8, i8* getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 0), align 4, !dbg !176, !tbaa !68
  ret i8 %1, !dbg !177
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_spp_get_operation_table() local_unnamed_addr #0 !dbg !178 {
  tail call void @spp_get_operation_table(%struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1)) #5, !dbg !179
  ret void, !dbg !180
}

; Function Attrs: optsize
declare void @spp_get_operation_table(%struct.spp_operation_t**) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @bt_3th_spp_init() local_unnamed_addr #0 !dbg !181 {
  store i8 0, i8* getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 0), align 4, !dbg !182, !tbaa !68
  tail call void @spp_get_operation_table(%struct.spp_operation_t** getelementptr inbounds (%struct.SPP_CONFIG_VAR, %struct.SPP_CONFIG_VAR* @spp_config_var, i32 0, i32 1)) #5, !dbg !183
  tail call void @spp_data_deal_handle_register(void (i8, i16, i8*, i16)* nonnull @user_spp_data_handler) #5, !dbg !184
  ret void, !dbg !185
}

; Function Attrs: optsize
declare void @spp_data_deal_handle_register(void (i8, i16, i8*, i16)*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @user_spp_data_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "spp_config_var", scope: !2, file: !3, line: 15, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !26)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/spp_config.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 20, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/common/btstack_3th_protocol_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "BT_3TH_EVENT_COMMON_INIT", value: 0)
!9 = !DIEnumerator(name: "BT_3TH_EVENT_COMMON_BLE_STATUS", value: 1)
!10 = !DIEnumerator(name: "BT_3TH_EVENT_COMMON_SPP_STATUS", value: 2)
!11 = !DIEnumerator(name: "BT_3TH_EVENT_RCSP_DEV_SELECT", value: 100)
!12 = !DIEnumerator(name: "BT_3TH_EVENT_DUEROS_CONNECT", value: 200)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 19, size: 32, elements: !15)
!14 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/common/spp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "SPP_USER_ERR_NONE", value: 0)
!17 = !DIEnumerator(name: "SPP_USER_ERR_SEND_BUFF_BUSY", value: 1)
!18 = !DIEnumerator(name: "SPP_USER_ERR_SEND_OVER_LIMIT", value: 2)
!19 = !DIEnumerator(name: "SPP_USER_ERR_SEND_FAIL", value: 3)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 11, baseType: !25)
!24 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0}
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SPP_CONFIG_VAR", file: !3, line: 9, size: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "bt_3th_spp_status", scope: !27, file: !3, line: 10, baseType: !23, size: 8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "bt_3th_spp", scope: !27, file: !3, line: 11, baseType: !31, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spp_operation_t", file: !14, line: 10, size: 192, elements: !33)
!33 = !{!34, !39, !45, !49, !50, !51}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !32, file: !14, line: 11, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !21}
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !32, file: !14, line: 12, baseType: !40, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DISubroutineType(types: !42)
!42 = !{!38, !21, !21, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !24, line: 13, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "regist_wakeup_send", scope: !32, file: !14, line: 13, baseType: !46, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !21, !21}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "regist_recieve_cbk", scope: !32, file: !14, line: 14, baseType: !46, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "regist_state_cbk", scope: !32, file: !14, line: 15, baseType: !46, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "busy_state", scope: !32, file: !14, line: 16, baseType: !52, size: 32, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = !DISubroutineType(types: !54)
!54 = !{!38}
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!58 = distinct !DISubprogram(name: "bt_3th_spp_status_callback", scope: !3, file: !3, line: 19, type: !59, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !23}
!61 = !{!62}
!62 = !DILocalVariable(name: "status", arg: 1, scope: !58, file: !3, line: 19, type: !23)
!63 = !DILocation(line: 19, column: 36, scope: !58)
!64 = !{!65, !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 21, column: 5, scope: !58)
!68 = !{!69, !65, i64 0}
!69 = !{!"SPP_CONFIG_VAR", !65, i64 0, !70, i64 4}
!70 = !{!"any pointer", !65, i64 0}
!71 = !DILocation(line: 32, column: 5, scope: !58)
!72 = !DILocation(line: 33, column: 1, scope: !58)
!73 = distinct !DISubprogram(name: "bt_3th_spp_fw_ready", scope: !3, file: !3, line: 35, type: !74, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !77)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !21}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 11, baseType: !25)
!77 = !{!78}
!78 = !DILocalVariable(name: "priv", arg: 1, scope: !73, file: !3, line: 35, type: !21)
!79 = !DILocation(line: 35, column: 32, scope: !73)
!80 = !DILocation(line: 37, column: 21, scope: !73)
!81 = !DILocation(line: 37, column: 13, scope: !73)
!82 = !DILocation(line: 37, column: 12, scope: !73)
!83 = !DILocation(line: 37, column: 5, scope: !73)
!84 = distinct !DISubprogram(name: "bt_3th_spp_send", scope: !3, file: !3, line: 40, type: !85, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !21, !21, !43}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !24, line: 16, baseType: !38)
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "priv", arg: 1, scope: !84, file: !3, line: 40, type: !21)
!90 = !DILocalVariable(name: "data", arg: 2, scope: !84, file: !3, line: 40, type: !21)
!91 = !DILocalVariable(name: "len", arg: 3, scope: !84, file: !3, line: 40, type: !43)
!92 = !DILocalVariable(name: "err", scope: !93, file: !3, line: 47, type: !95)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 46, column: 75)
!94 = distinct !DILexicalBlock(scope: !84, file: !3, line: 46, column: 9)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 15, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DILocation(line: 40, column: 27, scope: !84)
!98 = !DILocation(line: 40, column: 39, scope: !84)
!99 = !DILocation(line: 40, column: 49, scope: !84)
!100 = !DILocation(line: 46, column: 18, scope: !94)
!101 = !{!69, !70, i64 4}
!102 = !DILocation(line: 46, column: 29, scope: !94)
!103 = !DILocation(line: 46, column: 50, scope: !104)
!104 = !DILexicalBlockFile(scope: !94, file: !3, discriminator: 1)
!105 = !DILocation(line: 46, column: 68, scope: !104)
!106 = !DILocation(line: 46, column: 38, scope: !94)
!107 = !DILocation(line: 47, column: 39, scope: !93)
!108 = !{!109, !70, i64 4}
!109 = !{!"spp_operation_t", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20}
!110 = !DILocation(line: 47, column: 19, scope: !93)
!111 = !DILocation(line: 47, column: 13, scope: !93)
!112 = !DILocation(line: 48, column: 13, scope: !93)
!113 = !DILocation(line: 51, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 50, column: 56)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 50, column: 20)
!116 = distinct !DILexicalBlock(scope: !93, file: !3, line: 48, column: 13)
!117 = !DILocation(line: 58, column: 1, scope: !84)
!118 = distinct !DISubprogram(name: "bt_3th_spp_callback_set", scope: !3, file: !3, line: 60, type: !119, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !128)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !121, !124, !127}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !21, !21, !43}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!128 = !{!129, !130, !131}
!129 = !DILocalVariable(name: "resume", arg: 1, scope: !118, file: !3, line: 60, type: !121)
!130 = !DILocalVariable(name: "recieve", arg: 2, scope: !118, file: !3, line: 60, type: !124)
!131 = !DILocalVariable(name: "status", arg: 3, scope: !118, file: !3, line: 60, type: !127)
!132 = !DILocation(line: 60, column: 37, scope: !118)
!133 = !DILocation(line: 60, column: 59, scope: !118)
!134 = !DILocation(line: 60, column: 97, scope: !118)
!135 = !DILocation(line: 62, column: 13, scope: !118)
!136 = !DILocation(line: 62, column: 25, scope: !118)
!137 = !{!109, !70, i64 8}
!138 = !DILocation(line: 62, column: 50, scope: !118)
!139 = !DILocation(line: 62, column: 5, scope: !118)
!140 = !DILocation(line: 63, column: 13, scope: !118)
!141 = !DILocation(line: 63, column: 25, scope: !118)
!142 = !{!109, !70, i64 12}
!143 = !DILocation(line: 63, column: 50, scope: !118)
!144 = !DILocation(line: 63, column: 5, scope: !118)
!145 = !DILocation(line: 64, column: 13, scope: !118)
!146 = !DILocation(line: 64, column: 25, scope: !118)
!147 = !{!109, !70, i64 16}
!148 = !DILocation(line: 64, column: 48, scope: !118)
!149 = !DILocation(line: 64, column: 5, scope: !118)
!150 = !DILocation(line: 65, column: 1, scope: !118)
!151 = distinct !DISubprogram(name: "bt_3th_spp_data_send", scope: !3, file: !3, line: 67, type: !152, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!38, !21, !22, !43}
!154 = !{!155, !156, !157, !158}
!155 = !DILocalVariable(name: "priv", arg: 1, scope: !151, file: !3, line: 67, type: !21)
!156 = !DILocalVariable(name: "buf", arg: 2, scope: !151, file: !3, line: 67, type: !22)
!157 = !DILocalVariable(name: "len", arg: 3, scope: !151, file: !3, line: 67, type: !43)
!158 = !DILocalVariable(name: "err", scope: !151, file: !3, line: 69, type: !38)
!159 = !DILocation(line: 67, column: 32, scope: !151)
!160 = !DILocation(line: 67, column: 42, scope: !151)
!161 = !DILocation(line: 67, column: 51, scope: !151)
!162 = !DILocation(line: 69, column: 9, scope: !151)
!163 = !DILocation(line: 70, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !151, file: !3, line: 70, column: 9)
!165 = !DILocation(line: 70, column: 28, scope: !164)
!166 = !DILocation(line: 70, column: 9, scope: !151)
!167 = !DILocation(line: 71, column: 35, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 70, column: 37)
!169 = !DILocation(line: 71, column: 15, scope: !168)
!170 = !DILocation(line: 72, column: 5, scope: !168)
!171 = !DILocation(line: 74, column: 5, scope: !151)
!172 = distinct !DISubprogram(name: "bt_3th_get_jl_spp_status", scope: !3, file: !3, line: 78, type: !173, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!23}
!175 = !{}
!176 = !DILocation(line: 80, column: 20, scope: !172)
!177 = !DILocation(line: 80, column: 5, scope: !172)
!178 = distinct !DISubprogram(name: "bt_3th_spp_get_operation_table", scope: !3, file: !3, line: 83, type: !122, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!179 = !DILocation(line: 85, column: 5, scope: !178)
!180 = !DILocation(line: 86, column: 1, scope: !178)
!181 = distinct !DISubprogram(name: "bt_3th_spp_init", scope: !3, file: !3, line: 88, type: !122, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!182 = !DILocation(line: 90, column: 31, scope: !181)
!183 = !DILocation(line: 91, column: 5, scope: !181)
!184 = !DILocation(line: 92, column: 5, scope: !181)
!185 = !DILocation(line: 93, column: 1, scope: !181)
