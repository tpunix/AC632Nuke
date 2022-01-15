; ModuleID = 'ble_config.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.BLE_CONFIG_VAR = type { i32, %struct.ble_server_operation_t* }
%struct.ble_server_operation_t = type { i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i8*, i16)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i32)* }

@ble_config_var = common hidden global %struct.BLE_CONFIG_VAR zeroinitializer, align 4, !dbg !0

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @bt_3th_ble_ready(i8* nocapture readnone) local_unnamed_addr #0 !dbg !84 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !89, metadata !DIExpression()), !dbg !90
  %2 = load i32, i32* getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 0), align 4, !dbg !91, !tbaa !93
  %3 = icmp eq i32 %2, 33, !dbg !98
  %4 = zext i1 %3 to i8, !dbg !99
  ret i8 %4, !dbg !101
}

; Function Attrs: nounwind optsize
define hidden i32 @bt_3th_ble_send(i8* nocapture readnone, i8*, i16 zeroext) local_unnamed_addr #1 !dbg !102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i8* %1, metadata !108, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i16 %2, metadata !109, metadata !DIExpression()), !dbg !117
  %4 = load i32, i32* getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 0), align 4, !dbg !118, !tbaa !93
  %5 = icmp eq i32 %4, 33, !dbg !119
  %6 = load %struct.ble_server_operation_t*, %struct.ble_server_operation_t** getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 1), align 4, !dbg !120
  %7 = icmp ne %struct.ble_server_operation_t* %6, null, !dbg !121
  %8 = and i1 %5, %7, !dbg !122
  br i1 %8, label %9, label %18, !dbg !122

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.ble_server_operation_t, %struct.ble_server_operation_t* %6, i32 0, i32 3, !dbg !123
  %11 = load i32 (i8*, i8*, i16)*, i32 (i8*, i8*, i16)** %10, align 4, !dbg !123, !tbaa !125
  %12 = icmp eq i32 (i8*, i8*, i16)* %11, null, !dbg !127
  br i1 %12, label %18, label %13, !dbg !128

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 %11(i8* null, i8* %1, i16 zeroext %2) #5, !dbg !130
  call void @llvm.dbg.value(metadata i32 %14, metadata !110, metadata !DIExpression()), !dbg !131
  switch i32 %14, label %18 [
    i32 0, label %16
    i32 1, label %15
  ], !dbg !132

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !133

; <label>:16:                                     ; preds = %15, %13
  %17 = phi i32 [ 0, %13 ], [ 1, %15 ]
  br label %18

; <label>:18:                                     ; preds = %16, %13, %9, %3
  %19 = phi i32 [ %17, %16 ], [ -1, %13 ], [ -1, %9 ], [ -1, %3 ]
  ret i32 %19, !dbg !137
}

; Function Attrs: nounwind optsize
define hidden i32 @bt_3th_ble_data_send(i8* nocapture readnone, i8*, i16 zeroext) local_unnamed_addr #1 !dbg !138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !142, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i8* %1, metadata !143, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i16 %2, metadata !144, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 0, metadata !145, metadata !DIExpression()), !dbg !149
  %4 = load %struct.ble_server_operation_t*, %struct.ble_server_operation_t** getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 1), align 4, !dbg !150, !tbaa !152
  %5 = icmp eq %struct.ble_server_operation_t* %4, null, !dbg !153
  br i1 %5, label %10, label %6, !dbg !154

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.ble_server_operation_t, %struct.ble_server_operation_t* %4, i32 0, i32 3, !dbg !155
  %8 = load i32 (i8*, i8*, i16)*, i32 (i8*, i8*, i16)** %7, align 4, !dbg !155, !tbaa !125
  %9 = tail call i32 %8(i8* null, i8* %1, i16 zeroext %2) #5, !dbg !157
  call void @llvm.dbg.value(metadata i32 %9, metadata !145, metadata !DIExpression()), !dbg !149
  br label %10, !dbg !158

; <label>:10:                                     ; preds = %6, %3
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !145, metadata !DIExpression()), !dbg !149
  ret i32 %11, !dbg !159
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_ble_status_callback(i8* nocapture readnone, i32) local_unnamed_addr #1 !dbg !160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %1, metadata !165, metadata !DIExpression()), !dbg !167
  store i32 %1, i32* getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 0), align 4, !dbg !168, !tbaa !93
  tail call void @bt_3th_event_send_to_user(i16 zeroext 1, i8* bitcast (%struct.BLE_CONFIG_VAR* @ble_config_var to i8*), i32 1) #5, !dbg !169
  ret void, !dbg !170
}

; Function Attrs: optsize
declare void @bt_3th_event_send_to_user(i16 zeroext, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define weak hidden void @ble_get_server_operation_table(%struct.ble_server_operation_t**) local_unnamed_addr #1 !dbg !171 {
  call void @llvm.dbg.value(metadata %struct.ble_server_operation_t** %0, metadata !176, metadata !DIExpression()), !dbg !177
  ret void, !dbg !178
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_ble_get_operation_table() local_unnamed_addr #1 !dbg !179 {
  tail call void @ble_get_server_operation_table(%struct.ble_server_operation_t** getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 1)) #6, !dbg !183
  ret void, !dbg !184
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_ble_callback_set(void ()*, void (i8*, i8*, i16)*, void (i8*, i32)*) local_unnamed_addr #1 !dbg !185 {
  call void @llvm.dbg.value(metadata void ()* %0, metadata !194, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata void (i8*, i8*, i16)* %1, metadata !195, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata void (i8*, i32)* %2, metadata !196, metadata !DIExpression()), !dbg !199
  %4 = load %struct.ble_server_operation_t*, %struct.ble_server_operation_t** getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 1), align 4, !dbg !200, !tbaa !152
  %5 = getelementptr inbounds %struct.ble_server_operation_t, %struct.ble_server_operation_t* %4, i32 0, i32 4, !dbg !201
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 4, !dbg !201, !tbaa !202
  %7 = bitcast void ()* %0 to i8*, !dbg !203
  %8 = tail call i32 %6(i8* null, i8* %7) #5, !dbg !204
  %9 = load %struct.ble_server_operation_t*, %struct.ble_server_operation_t** getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 1), align 4, !dbg !205, !tbaa !152
  %10 = getelementptr inbounds %struct.ble_server_operation_t, %struct.ble_server_operation_t* %9, i32 0, i32 5, !dbg !206
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 4, !dbg !206, !tbaa !207
  %12 = bitcast void (i8*, i8*, i16)* %1 to i8*, !dbg !208
  %13 = tail call i32 %11(i8* null, i8* %12) #5, !dbg !209
  %14 = load %struct.ble_server_operation_t*, %struct.ble_server_operation_t** getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 1), align 4, !dbg !210, !tbaa !152
  %15 = getelementptr inbounds %struct.ble_server_operation_t, %struct.ble_server_operation_t* %14, i32 0, i32 6, !dbg !211
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %15, align 4, !dbg !211, !tbaa !212
  %17 = bitcast void (i8*, i32)* %2 to i8*, !dbg !213
  %18 = tail call i32 %16(i8* null, i8* %17) #5, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden i32 @bt_3th_get_jl_ble_status() local_unnamed_addr #3 !dbg !216 {
  %1 = load i32, i32* getelementptr inbounds (%struct.BLE_CONFIG_VAR, %struct.BLE_CONFIG_VAR* @ble_config_var, i32 0, i32 0), align 4, !dbg !219, !tbaa !93
  ret i32 %1, !dbg !220
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ble_config_var", scope: !2, file: !3, line: 10, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !46)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/ble_config.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !24, !32}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 6, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/common/ble_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!8 = !DIEnumerator(name: "BLE_ST_NULL", value: 0)
!9 = !DIEnumerator(name: "BLE_ST_INIT_OK", value: 1)
!10 = !DIEnumerator(name: "BLE_ST_IDLE", value: 2)
!11 = !DIEnumerator(name: "BLE_ST_CONNECT", value: 3)
!12 = !DIEnumerator(name: "BLE_ST_SEND_DISCONN", value: 4)
!13 = !DIEnumerator(name: "BLE_ST_DISCONN", value: 5)
!14 = !DIEnumerator(name: "BLE_ST_CONNECT_FAIL", value: 6)
!15 = !DIEnumerator(name: "BLE_ST_CONNECTION_UPDATE_OK", value: 7)
!16 = !DIEnumerator(name: "BLE_ST_ADV", value: 32)
!17 = !DIEnumerator(name: "BLE_ST_NOTIFY_IDICATE", value: 33)
!18 = !DIEnumerator(name: "BLE_ST_SCAN", value: 64)
!19 = !DIEnumerator(name: "BLE_ST_CREATE_CONN", value: 65)
!20 = !DIEnumerator(name: "BLE_ST_SEND_CREATE_CONN_CANNEL", value: 66)
!21 = !DIEnumerator(name: "BLE_ST_SEARCH_COMPLETE", value: 67)
!22 = !DIEnumerator(name: "BLE_ST_SEND_STACK_EXIT", value: 96)
!23 = !DIEnumerator(name: "BLE_ST_STACK_EXIT_COMPLETE", value: 97)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 29, size: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "APP_BLE_NO_ERROR", value: 0)
!27 = !DIEnumerator(name: "APP_BLE_BUFF_FULL", value: 1)
!28 = !DIEnumerator(name: "APP_BLE_BUFF_ERROR", value: 2)
!29 = !DIEnumerator(name: "APP_BLE_OPERATION_ERROR", value: 3)
!30 = !DIEnumerator(name: "APP_BLE_IS_DISCONN", value: 4)
!31 = !DIEnumerator(name: "APP_BLE_NO_WRITE_CCC", value: 5)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 20, size: 32, elements: !34)
!33 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/common/btstack_3th_protocol_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "BT_3TH_EVENT_COMMON_INIT", value: 0)
!36 = !DIEnumerator(name: "BT_3TH_EVENT_COMMON_BLE_STATUS", value: 1)
!37 = !DIEnumerator(name: "BT_3TH_EVENT_COMMON_SPP_STATUS", value: 2)
!38 = !DIEnumerator(name: "BT_3TH_EVENT_RCSP_DEV_SELECT", value: 100)
!39 = !DIEnumerator(name: "BT_3TH_EVENT_DUEROS_CONNECT", value: 200)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 11, baseType: !45)
!44 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!0}
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BLE_CONFIG_VAR", file: !6, line: 38, size: 64, elements: !48)
!48 = !{!49, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "JL_ble_status", scope: !47, file: !6, line: 39, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ble_state_e", file: !6, line: 27, baseType: !5)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rcsp_ble", scope: !47, file: !6, line: 40, baseType: !52, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ble_server_operation_t", file: !54, line: 72, size: 256, elements: !55)
!54 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/le_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!55 = !{!56, !63, !67, !68, !74, !78, !79, !80}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "adv_enable", scope: !53, file: !54, line: 73, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !41, !61}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 15, baseType: !62)
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !53, file: !54, line: 74, baseType: !64, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32)
!65 = !DISubroutineType(types: !66)
!66 = !{!60, !41}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "get_buffer_vaild", scope: !53, file: !54, line: 75, baseType: !64, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !53, file: !54, line: 76, baseType: !69, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DISubroutineType(types: !71)
!71 = !{!60, !41, !41, !72}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 13, baseType: !73)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "regist_wakeup_send", scope: !53, file: !54, line: 77, baseType: !75, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32)
!76 = !DISubroutineType(types: !77)
!77 = !{!60, !41, !41}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "regist_recieve_cbk", scope: !53, file: !54, line: 78, baseType: !75, size: 32, offset: 160)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "regist_state_cbk", scope: !53, file: !54, line: 79, baseType: !75, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "latency_enable", scope: !53, file: !54, line: 80, baseType: !57, size: 32, offset: 224)
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!84 = distinct !DISubprogram(name: "bt_3th_ble_ready", scope: !3, file: !3, line: 14, type: !85, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !41}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 11, baseType: !45)
!88 = !{!89}
!89 = !DILocalVariable(name: "priv", arg: 1, scope: !84, file: !3, line: 14, type: !41)
!90 = !DILocation(line: 14, column: 29, scope: !84)
!91 = !DILocation(line: 16, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !3, line: 16, column: 9)
!93 = !{!94, !95, i64 0}
!94 = !{!"BLE_CONFIG_VAR", !95, i64 0, !97, i64 4}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!"any pointer", !95, i64 0}
!98 = !DILocation(line: 16, column: 31, scope: !92)
!99 = !DILocation(line: 17, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !3, line: 16, column: 57)
!101 = !DILocation(line: 20, column: 1, scope: !84)
!102 = distinct !DISubprogram(name: "bt_3th_ble_send", scope: !3, file: !3, line: 22, type: !103, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !106)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !41, !41, !72}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !44, line: 16, baseType: !60)
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: "priv", arg: 1, scope: !102, file: !3, line: 22, type: !41)
!108 = !DILocalVariable(name: "data", arg: 2, scope: !102, file: !3, line: 22, type: !41)
!109 = !DILocalVariable(name: "len", arg: 3, scope: !102, file: !3, line: 22, type: !72)
!110 = !DILocalVariable(name: "err", scope: !111, file: !3, line: 27, type: !60)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 26, column: 62)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 26, column: 13)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 25, column: 57)
!114 = distinct !DILexicalBlock(scope: !102, file: !3, line: 25, column: 9)
!115 = !DILocation(line: 22, column: 27, scope: !102)
!116 = !DILocation(line: 22, column: 39, scope: !102)
!117 = !DILocation(line: 22, column: 49, scope: !102)
!118 = !DILocation(line: 25, column: 17, scope: !114)
!119 = !DILocation(line: 25, column: 31, scope: !114)
!120 = !DILocation(line: 26, column: 21, scope: !112)
!121 = !DILocation(line: 26, column: 13, scope: !112)
!122 = !DILocation(line: 25, column: 9, scope: !102)
!123 = !DILocation(line: 26, column: 51, scope: !124)
!124 = !DILexicalBlockFile(scope: !112, file: !3, discriminator: 1)
!125 = !{!126, !97, i64 12}
!126 = !{!"ble_server_operation_t", !97, i64 0, !97, i64 4, !97, i64 8, !97, i64 12, !97, i64 16, !97, i64 20, !97, i64 24, !97, i64 28}
!127 = !DILocation(line: 26, column: 33, scope: !124)
!128 = !DILocation(line: 26, column: 13, scope: !129)
!129 = !DILexicalBlockFile(scope: !113, file: !3, discriminator: 1)
!130 = !DILocation(line: 27, column: 23, scope: !111)
!131 = !DILocation(line: 27, column: 17, scope: !111)
!132 = !DILocation(line: 35, column: 17, scope: !111)
!133 = !DILocation(line: 38, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 37, column: 50)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 37, column: 24)
!136 = distinct !DILexicalBlock(scope: !111, file: !3, line: 35, column: 17)
!137 = !DILocation(line: 47, column: 1, scope: !102)
!138 = distinct !DISubprogram(name: "bt_3th_ble_data_send", scope: !3, file: !3, line: 49, type: !139, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!60, !41, !42, !72}
!141 = !{!142, !143, !144, !145}
!142 = !DILocalVariable(name: "priv", arg: 1, scope: !138, file: !3, line: 49, type: !41)
!143 = !DILocalVariable(name: "buf", arg: 2, scope: !138, file: !3, line: 49, type: !42)
!144 = !DILocalVariable(name: "len", arg: 3, scope: !138, file: !3, line: 49, type: !72)
!145 = !DILocalVariable(name: "err", scope: !138, file: !3, line: 51, type: !60)
!146 = !DILocation(line: 49, column: 32, scope: !138)
!147 = !DILocation(line: 49, column: 42, scope: !138)
!148 = !DILocation(line: 49, column: 51, scope: !138)
!149 = !DILocation(line: 51, column: 9, scope: !138)
!150 = !DILocation(line: 52, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !138, file: !3, line: 52, column: 9)
!152 = !{!94, !97, i64 4}
!153 = !DILocation(line: 52, column: 26, scope: !151)
!154 = !DILocation(line: 52, column: 9, scope: !138)
!155 = !DILocation(line: 53, column: 33, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !3, line: 52, column: 35)
!157 = !DILocation(line: 53, column: 15, scope: !156)
!158 = !DILocation(line: 54, column: 5, scope: !156)
!159 = !DILocation(line: 56, column: 5, scope: !138)
!160 = distinct !DISubprogram(name: "bt_3th_ble_status_callback", scope: !3, file: !3, line: 60, type: !161, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !41, !50}
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "priv", arg: 1, scope: !160, file: !3, line: 60, type: !41)
!165 = !DILocalVariable(name: "status", arg: 2, scope: !160, file: !3, line: 60, type: !50)
!166 = !DILocation(line: 60, column: 39, scope: !160)
!167 = !DILocation(line: 60, column: 57, scope: !160)
!168 = !DILocation(line: 62, column: 27, scope: !160)
!169 = !DILocation(line: 78, column: 5, scope: !160)
!170 = !DILocation(line: 79, column: 1, scope: !160)
!171 = distinct !DISubprogram(name: "ble_get_server_operation_table", scope: !3, file: !3, line: 82, type: !172, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!175 = !{!176}
!176 = !DILocalVariable(name: "interface_pt", arg: 1, scope: !171, file: !3, line: 82, type: !174)
!177 = !DILocation(line: 82, column: 69, scope: !171)
!178 = !DILocation(line: 84, column: 5, scope: !171)
!179 = distinct !DISubprogram(name: "bt_3th_ble_get_operation_table", scope: !3, file: !3, line: 87, type: !180, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{null}
!182 = !{}
!183 = !DILocation(line: 89, column: 5, scope: !179)
!184 = !DILocation(line: 90, column: 1, scope: !179)
!185 = distinct !DISubprogram(name: "bt_3th_ble_callback_set", scope: !3, file: !3, line: 93, type: !186, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !193)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188, !189, !192}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !41, !41, !72}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!193 = !{!194, !195, !196}
!194 = !DILocalVariable(name: "resume", arg: 1, scope: !185, file: !3, line: 93, type: !188)
!195 = !DILocalVariable(name: "recieve", arg: 2, scope: !185, file: !3, line: 93, type: !189)
!196 = !DILocalVariable(name: "status", arg: 3, scope: !185, file: !3, line: 93, type: !192)
!197 = !DILocation(line: 93, column: 37, scope: !185)
!198 = !DILocation(line: 93, column: 59, scope: !185)
!199 = !DILocation(line: 93, column: 97, scope: !185)
!200 = !DILocation(line: 95, column: 13, scope: !185)
!201 = !DILocation(line: 95, column: 23, scope: !185)
!202 = !{!126, !97, i64 16}
!203 = !DILocation(line: 95, column: 48, scope: !185)
!204 = !DILocation(line: 95, column: 5, scope: !185)
!205 = !DILocation(line: 96, column: 13, scope: !185)
!206 = !DILocation(line: 96, column: 23, scope: !185)
!207 = !{!126, !97, i64 20}
!208 = !DILocation(line: 96, column: 48, scope: !185)
!209 = !DILocation(line: 96, column: 5, scope: !185)
!210 = !DILocation(line: 97, column: 13, scope: !185)
!211 = !DILocation(line: 97, column: 23, scope: !185)
!212 = !{!126, !97, i64 24}
!213 = !DILocation(line: 97, column: 46, scope: !185)
!214 = !DILocation(line: 97, column: 5, scope: !185)
!215 = !DILocation(line: 98, column: 1, scope: !185)
!216 = distinct !DISubprogram(name: "bt_3th_get_jl_ble_status", scope: !3, file: !3, line: 100, type: !217, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !182)
!217 = !DISubroutineType(types: !218)
!218 = !{!50}
!219 = !DILocation(line: 102, column: 20, scope: !216)
!220 = !DILocation(line: 102, column: 5, scope: !216)
