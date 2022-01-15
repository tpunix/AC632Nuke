; ModuleID = 'att_dispatch.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.att_info_t = type { void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)*, i8, i8*, i16 (i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)*, i8, i16, %struct.btstack_linked_item*, %struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t, void (i8, i16, i8*, i16)*, %struct.btstack_linked_item*, i8 }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@att_global_info = hidden local_unnamed_addr global %struct.att_info_t zeroinitializer, section ".ble_att_bss", align 4, !dbg !6

; Function Attrs: nounwind optsize
define hidden void @att_global_info_init() local_unnamed_addr #0 section ".ble_att_code" !dbg !72 {
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.att_info_t* @att_global_info to i8*), i8 0, i32 60, i32 4, i1 false), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

; Function Attrs: nounwind optsize
define hidden void @att_dispatch_register_client(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".ble_att_code" !dbg !77 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !81, metadata !DIExpression()), !dbg !82
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 0), align 4, !dbg !83, !tbaa !84
  tail call void @l2cap_register_fixed_channel(void (i8, i16, i8*, i16)* nonnull @att_packet_handler, i16 zeroext 4) #4, !dbg !92
  ret void, !dbg !93
}

; Function Attrs: optsize
declare void @l2cap_register_fixed_channel(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @att_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_att_code" !dbg !94 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !96, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i16 %1, metadata !97, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8* %2, metadata !98, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i16 %3, metadata !99, metadata !DIExpression()), !dbg !103
  switch i8 %0, label %62 [
    i8 8, label %5
    i8 4, label %25
  ], !dbg !104

; <label>:5:                                      ; preds = %4
  %6 = load i8, i8* %2, align 1, !dbg !105, !tbaa !108
  %7 = and i8 %6, 1, !dbg !109
  %8 = icmp eq i8 %7, 0, !dbg !109
  br i1 %8, label %17, label %9, !dbg !110

; <label>:9:                                      ; preds = %5
  %10 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 0), align 4, !dbg !111, !tbaa !84
  %11 = icmp eq void (i8, i16, i8*, i16)* %10, null, !dbg !114
  br i1 %11, label %12, label %16, !dbg !115

; <label>:12:                                     ; preds = %9
  %13 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 1), align 4, !dbg !116, !tbaa !119
  %14 = icmp eq void (i8, i16, i8*, i16)* %13, null, !dbg !120
  br i1 %14, label %62, label %15, !dbg !121

; <label>:15:                                     ; preds = %12
  tail call void %13(i8 zeroext 8, i16 zeroext %1, i8* nonnull %2, i16 zeroext %3) #4, !dbg !122
  br label %62, !dbg !124

; <label>:16:                                     ; preds = %9
  tail call void %10(i8 zeroext 8, i16 zeroext %1, i8* nonnull %2, i16 zeroext %3) #4, !dbg !125
  br label %62, !dbg !126

; <label>:17:                                     ; preds = %5
  %18 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 1), align 4, !dbg !127, !tbaa !119
  %19 = icmp eq void (i8, i16, i8*, i16)* %18, null, !dbg !130
  br i1 %19, label %20, label %24, !dbg !131

; <label>:20:                                     ; preds = %17
  %21 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 0), align 4, !dbg !132, !tbaa !84
  %22 = icmp eq void (i8, i16, i8*, i16)* %21, null, !dbg !135
  br i1 %22, label %62, label %23, !dbg !136

; <label>:23:                                     ; preds = %20
  tail call void %21(i8 zeroext 8, i16 zeroext %1, i8* nonnull %2, i16 zeroext %3) #4, !dbg !137
  br label %62, !dbg !138

; <label>:24:                                     ; preds = %17
  tail call void %18(i8 zeroext 8, i16 zeroext %1, i8* nonnull %2, i16 zeroext %3) #4, !dbg !139
  br label %62

; <label>:25:                                     ; preds = %4
  %26 = load i8, i8* %2, align 1, !dbg !140, !tbaa !108
  %27 = icmp eq i8 %26, 120, !dbg !142
  br i1 %27, label %28, label %62, !dbg !143

; <label>:28:                                     ; preds = %25
  %29 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !144
  %30 = and i8 %29, 4, !dbg !144
  %31 = icmp eq i8 %30, 0, !dbg !146
  br i1 %31, label %32, label %62, !dbg !147

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 @hci_can_send_acl_le_packet_now() #4, !dbg !149
  %34 = icmp eq i32 %33, 0, !dbg !149
  br i1 %34, label %62, label %35, !dbg !151

; <label>:35:                                     ; preds = %32
  %36 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !152
  %37 = or i8 %36, 4, !dbg !152
  store i8 %37, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !152
  %38 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 1), align 4, !dbg !153, !tbaa !119
  %39 = icmp eq void (i8, i16, i8*, i16)* %38, null, !dbg !155
  %40 = and i8 %36, 2, !dbg !156
  %41 = icmp eq i8 %40, 0, !dbg !158
  %42 = or i1 %41, %39, !dbg !159
  br i1 %42, label %50, label %43, !dbg !159

; <label>:43:                                     ; preds = %35
  %44 = and i8 %37, -3, !dbg !160
  store i8 %44, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !160
  tail call void %38(i8 zeroext 4, i16 zeroext %1, i8* nonnull %2, i16 zeroext %3) #4, !dbg !162
  %45 = tail call i32 @hci_can_send_acl_le_packet_now() #4, !dbg !163
  %46 = icmp eq i32 %45, 0, !dbg !163
  br i1 %46, label %47, label %50, !dbg !165

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !166
  %49 = and i8 %48, -5, !dbg !166
  store i8 %49, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !166
  br label %62, !dbg !168

; <label>:50:                                     ; preds = %43, %35
  %51 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 0), align 4, !dbg !169, !tbaa !84
  %52 = icmp eq void (i8, i16, i8*, i16)* %51, null, !dbg !171
  br i1 %52, label %59, label %53, !dbg !172

; <label>:53:                                     ; preds = %50
  %54 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !173
  %55 = and i8 %54, 1, !dbg !173
  %56 = icmp eq i8 %55, 0, !dbg !175
  br i1 %56, label %59, label %57, !dbg !176

; <label>:57:                                     ; preds = %53
  %58 = and i8 %54, -2, !dbg !177
  store i8 %58, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !177
  tail call void %51(i8 zeroext 4, i16 zeroext %1, i8* nonnull %2, i16 zeroext %3) #4, !dbg !179
  br label %59, !dbg !180

; <label>:59:                                     ; preds = %57, %53, %50
  %60 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !181
  %61 = and i8 %60, -5, !dbg !181
  store i8 %61, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !181
  br label %62, !dbg !182

; <label>:62:                                     ; preds = %59, %47, %32, %28, %25, %24, %23, %20, %16, %15, %12, %4
  ret void, !dbg !183
}

; Function Attrs: nounwind optsize
define hidden void @att_dispatch_register_server(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".ble_att_code" !dbg !184 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !186, metadata !DIExpression()), !dbg !187
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 1), align 4, !dbg !188, !tbaa !119
  tail call void @l2cap_register_fixed_channel(void (i8, i16, i8*, i16)* nonnull @att_packet_handler, i16 zeroext 4) #4, !dbg !189
  ret void, !dbg !190
}

; Function Attrs: nounwind optsize
define hidden i32 @att_dispatch_client_can_send_now(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !191 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !197, metadata !DIExpression()), !dbg !198
  %2 = tail call i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext %0, i16 zeroext 4) #4, !dbg !199
  ret i32 %2, !dbg !200
}

; Function Attrs: optsize
declare i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @att_dispatch_server_can_send_now(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !201 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !203, metadata !DIExpression()), !dbg !204
  %2 = tail call i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext %0, i16 zeroext 4) #4, !dbg !205
  ret i32 %2, !dbg !206
}

; Function Attrs: nounwind optsize
define hidden void @att_dispatch_client_request_can_send_now_event(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !207 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !211, metadata !DIExpression()), !dbg !212
  %2 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !213
  %3 = or i8 %2, 1, !dbg !213
  store i8 %3, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !213
  tail call void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext %0, i16 zeroext 4) #4, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: optsize
declare void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @att_dispatch_server_request_can_send_now_event(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !216 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !218, metadata !DIExpression()), !dbg !219
  %2 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !220
  %3 = or i8 %2, 2, !dbg !220
  store i8 %3, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 2), align 4, !dbg !220
  tail call void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext %0, i16 zeroext 4) #4, !dbg !221
  ret void, !dbg !222
}

; Function Attrs: optsize
declare i32 @hci_can_send_acl_le_packet_now() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !68, line: 190, type: !43, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_dispatch.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "att_global_info", scope: !2, file: !3, line: 70, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_info_t", file: !9, line: 82, baseType: !10)
!9 = !DIFile(filename: "../btstack/Protocol/include/ble/att_dispatch.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 56, size: 480, elements: !11)
!11 = !{!12, !24, !25, !26, !27, !28, !29, !32, !38, !44, !45, !46, !55, !62, !63, !64, !65, !66, !67}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "att_client_handler", scope: !10, file: !9, line: 58, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !14, line: 58, baseType: !15)
!14 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !21, !23, !21}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 44, baseType: !20)
!19 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 46, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "att_server_handler", scope: !10, file: !9, line: 59, baseType: !13, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "att_client_waiting_for_can_send", scope: !10, file: !9, line: 60, baseType: !18, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "att_server_waiting_for_can_send", scope: !10, file: !9, line: 61, baseType: !18, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "att_can_send_doing", scope: !10, file: !9, line: 62, baseType: !18, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "att_bits_reserverd", scope: !10, file: !9, line: 63, baseType: !18, size: 5, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "att_db", scope: !10, file: !9, line: 66, baseType: !30, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "att_read_callback", scope: !10, file: !9, line: 67, baseType: !33, size: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_read_callback_t", file: !34, line: 116, baseType: !35)
!34 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/att.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DISubroutineType(types: !37)
!37 = !{!21, !21, !21, !21, !23, !21}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "att_write_callback", scope: !10, file: !9, line: 68, baseType: !39, size: 32, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_write_callback_t", file: !34, line: 127, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !21, !21, !21, !21, !23, !21}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "att_prepare_write_error_code", scope: !10, file: !9, line: 69, baseType: !18, size: 8, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "att_prepare_write_error_handle", scope: !10, file: !9, line: 70, baseType: !21, size: 16, offset: 208)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "service_handlers", scope: !10, file: !9, line: 71, baseType: !47, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !48, line: 101, baseType: !49)
!48 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !48, line: 55, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !48, line: 53, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !51, file: !48, line: 54, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hci_event_callback_registration", scope: !10, file: !9, line: 74, baseType: !56, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_callback_registration_t", file: !14, line: 64, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 61, size: 64, elements: !58)
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !57, file: !14, line: 62, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !48, line: 100, baseType: !50)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !57, file: !14, line: 63, baseType: !13, size: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sm_event_callback_registration", scope: !10, file: !9, line: 75, baseType: !56, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "server_packet_handler", scope: !10, file: !9, line: 76, baseType: !13, size: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "can_send_now_server", scope: !10, file: !9, line: 77, baseType: !47, size: 32, offset: 416)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "server_wait_for_can_send", scope: !10, file: !9, line: 78, baseType: !18, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "server_flow_enable", scope: !10, file: !9, line: 79, baseType: !18, size: 1, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "server_bits_reserverd", scope: !10, file: !9, line: 80, baseType: !18, size: 6, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!68 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!72 = distinct !DISubprogram(name: "att_global_info_init", scope: !3, file: !3, line: 74, type: !73, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !DILocation(line: 76, column: 5, scope: !72)
!76 = !DILocation(line: 77, column: 1, scope: !72)
!77 = distinct !DISubprogram(name: "att_dispatch_register_client", scope: !3, file: !3, line: 144, type: !78, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !13}
!80 = !{!81}
!81 = !DILocalVariable(name: "packet_handler", arg: 1, scope: !77, file: !3, line: 144, type: !13)
!82 = !DILocation(line: 144, column: 60, scope: !77)
!83 = !DILocation(line: 146, column: 32, scope: !77)
!84 = !{!85, !86, i64 0}
!85 = !{!"", !86, i64 0, !86, i64 4, !87, i64 8, !87, i64 8, !87, i64 8, !87, i64 8, !86, i64 12, !86, i64 16, !86, i64 20, !87, i64 24, !89, i64 26, !86, i64 28, !90, i64 32, !90, i64 40, !86, i64 48, !86, i64 52, !87, i64 56, !87, i64 56, !87, i64 56}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!"short", !87, i64 0}
!90 = !{!"", !91, i64 0, !86, i64 4}
!91 = !{!"btstack_linked_item", !86, i64 0}
!92 = !DILocation(line: 147, column: 5, scope: !77)
!93 = !DILocation(line: 148, column: 1, scope: !77)
!94 = distinct !DISubprogram(name: "att_packet_handler", scope: !3, file: !3, line: 79, type: !16, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(name: "packet_type", arg: 1, scope: !94, file: !3, line: 79, type: !18)
!97 = !DILocalVariable(name: "handle", arg: 2, scope: !94, file: !3, line: 79, type: !21)
!98 = !DILocalVariable(name: "packet", arg: 3, scope: !94, file: !3, line: 79, type: !23)
!99 = !DILocalVariable(name: "size", arg: 4, scope: !94, file: !3, line: 79, type: !21)
!100 = !DILocation(line: 79, column: 40, scope: !94)
!101 = !DILocation(line: 79, column: 62, scope: !94)
!102 = !DILocation(line: 79, column: 79, scope: !94)
!103 = !DILocation(line: 79, column: 96, scope: !94)
!104 = !DILocation(line: 81, column: 5, scope: !94)
!105 = !DILocation(line: 84, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 84, column: 13)
!107 = distinct !DILexicalBlock(scope: !94, file: !3, line: 81, column: 26)
!108 = !{!87, !87, i64 0}
!109 = !DILocation(line: 84, column: 23, scope: !106)
!110 = !DILocation(line: 84, column: 13, scope: !107)
!111 = !DILocation(line: 86, column: 26, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 86, column: 17)
!113 = distinct !DILexicalBlock(scope: !106, file: !3, line: 84, column: 28)
!114 = !DILocation(line: 86, column: 18, scope: !112)
!115 = !DILocation(line: 86, column: 17, scope: !113)
!116 = !DILocation(line: 87, column: 29, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 87, column: 21)
!118 = distinct !DILexicalBlock(scope: !112, file: !3, line: 86, column: 46)
!119 = !{!85, !86, i64 4}
!120 = !DILocation(line: 87, column: 21, scope: !117)
!121 = !DILocation(line: 87, column: 21, scope: !118)
!122 = !DILocation(line: 89, column: 21, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !3, line: 87, column: 49)
!124 = !DILocation(line: 90, column: 17, scope: !123)
!125 = !DILocation(line: 93, column: 13, scope: !113)
!126 = !DILocation(line: 94, column: 9, scope: !113)
!127 = !DILocation(line: 96, column: 26, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 96, column: 17)
!129 = distinct !DILexicalBlock(scope: !106, file: !3, line: 94, column: 16)
!130 = !DILocation(line: 96, column: 18, scope: !128)
!131 = !DILocation(line: 96, column: 17, scope: !129)
!132 = !DILocation(line: 98, column: 30, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 98, column: 21)
!134 = distinct !DILexicalBlock(scope: !128, file: !3, line: 96, column: 46)
!135 = !DILocation(line: 98, column: 22, scope: !133)
!136 = !DILocation(line: 98, column: 21, scope: !134)
!137 = !DILocation(line: 101, column: 17, scope: !134)
!138 = !DILocation(line: 102, column: 17, scope: !134)
!139 = !DILocation(line: 104, column: 13, scope: !129)
!140 = !DILocation(line: 108, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !107, file: !3, line: 108, column: 13)
!142 = !DILocation(line: 108, column: 23, scope: !141)
!143 = !DILocation(line: 108, column: 51, scope: !141)
!144 = !DILocation(line: 108, column: 62, scope: !145)
!145 = !DILexicalBlockFile(scope: !141, file: !3, discriminator: 1)
!146 = !DILocation(line: 108, column: 54, scope: !145)
!147 = !DILocation(line: 108, column: 13, scope: !148)
!148 = !DILexicalBlockFile(scope: !107, file: !3, discriminator: 1)
!149 = !DILocation(line: 112, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !107, file: !3, line: 112, column: 13)
!151 = !DILocation(line: 112, column: 13, scope: !107)
!152 = !DILocation(line: 117, column: 36, scope: !107)
!153 = !DILocation(line: 118, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !107, file: !3, line: 118, column: 13)
!155 = !DILocation(line: 118, column: 13, scope: !154)
!156 = !DILocation(line: 118, column: 51, scope: !157)
!157 = !DILexicalBlockFile(scope: !154, file: !3, discriminator: 1)
!158 = !DILocation(line: 118, column: 43, scope: !157)
!159 = !DILocation(line: 118, column: 40, scope: !154)
!160 = !DILocation(line: 119, column: 53, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !3, line: 118, column: 84)
!162 = !DILocation(line: 120, column: 13, scope: !161)
!163 = !DILocation(line: 122, column: 18, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !3, line: 122, column: 17)
!165 = !DILocation(line: 122, column: 17, scope: !161)
!166 = !DILocation(line: 123, column: 44, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 122, column: 52)
!168 = !DILocation(line: 124, column: 17, scope: !167)
!169 = !DILocation(line: 128, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !107, file: !3, line: 128, column: 13)
!171 = !DILocation(line: 128, column: 13, scope: !170)
!172 = !DILocation(line: 128, column: 40, scope: !170)
!173 = !DILocation(line: 128, column: 51, scope: !174)
!174 = !DILexicalBlockFile(scope: !170, file: !3, discriminator: 1)
!175 = !DILocation(line: 128, column: 43, scope: !174)
!176 = !DILocation(line: 128, column: 13, scope: !148)
!177 = !DILocation(line: 129, column: 53, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !3, line: 128, column: 84)
!179 = !DILocation(line: 130, column: 13, scope: !178)
!180 = !DILocation(line: 131, column: 9, scope: !178)
!181 = !DILocation(line: 132, column: 36, scope: !107)
!182 = !DILocation(line: 133, column: 9, scope: !107)
!183 = !DILocation(line: 138, column: 1, scope: !94)
!184 = distinct !DISubprogram(name: "att_dispatch_register_server", scope: !3, file: !3, line: 154, type: !78, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !185)
!185 = !{!186}
!186 = !DILocalVariable(name: "packet_handler", arg: 1, scope: !184, file: !3, line: 154, type: !13)
!187 = !DILocation(line: 154, column: 60, scope: !184)
!188 = !DILocation(line: 156, column: 32, scope: !184)
!189 = !DILocation(line: 157, column: 5, scope: !184)
!190 = !DILocation(line: 158, column: 1, scope: !184)
!191 = distinct !DISubprogram(name: "att_dispatch_client_can_send_now", scope: !3, file: !3, line: 164, type: !192, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !196)
!192 = !DISubroutineType(types: !193)
!193 = !{!43, !194}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !195, line: 9, baseType: !21)
!195 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!196 = !{!197}
!197 = !DILocalVariable(name: "con_handle", arg: 1, scope: !191, file: !3, line: 164, type: !194)
!198 = !DILocation(line: 164, column: 55, scope: !191)
!199 = !DILocation(line: 166, column: 12, scope: !191)
!200 = !DILocation(line: 166, column: 5, scope: !191)
!201 = distinct !DISubprogram(name: "att_dispatch_server_can_send_now", scope: !3, file: !3, line: 173, type: !192, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !202)
!202 = !{!203}
!203 = !DILocalVariable(name: "con_handle", arg: 1, scope: !201, file: !3, line: 173, type: !194)
!204 = !DILocation(line: 173, column: 55, scope: !201)
!205 = !DILocation(line: 175, column: 12, scope: !201)
!206 = !DILocation(line: 175, column: 5, scope: !201)
!207 = distinct !DISubprogram(name: "att_dispatch_client_request_can_send_now_event", scope: !3, file: !3, line: 184, type: !208, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !194}
!210 = !{!211}
!211 = !DILocalVariable(name: "con_handle", arg: 1, scope: !207, file: !3, line: 184, type: !194)
!212 = !DILocation(line: 184, column: 70, scope: !207)
!213 = !DILocation(line: 186, column: 45, scope: !207)
!214 = !DILocation(line: 187, column: 5, scope: !207)
!215 = !DILocation(line: 188, column: 1, scope: !207)
!216 = distinct !DISubprogram(name: "att_dispatch_server_request_can_send_now_event", scope: !3, file: !3, line: 196, type: !208, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !217)
!217 = !{!218}
!218 = !DILocalVariable(name: "con_handle", arg: 1, scope: !216, file: !3, line: 196, type: !194)
!219 = !DILocation(line: 196, column: 70, scope: !216)
!220 = !DILocation(line: 198, column: 45, scope: !216)
!221 = !DILocation(line: 199, column: 5, scope: !216)
!222 = !DILocation(line: 200, column: 1, scope: !216)
