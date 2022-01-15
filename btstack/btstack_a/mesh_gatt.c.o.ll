; ModuleID = 'mesh_gatt.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.lbuff_head = type opaque
%struct.lbuff_head_btctrler = type { %struct.list_head, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@log_tag_const_i_MESH_GATT = external local_unnamed_addr constant i8, align 1
@.str = private unnamed_addr constant [31 x i8] c"[Info]: [MESH_GATT]--func=%s\0D\0A\00", align 1
@__FUNCTION__.notify_remain_data = private unnamed_addr constant [19 x i8] c"notify_remain_data\00", align 1
@mesh_notify_lbuf_head = internal unnamed_addr global %struct.lbuff_head* null, align 4, !dbg !0
@log_tag_const_e_MESH_GATT = external local_unnamed_addr constant i8, align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"<Error>: [MESH_GATT]notify error 1 : 0x%x\0D\0A\00", align 1
@__FUNCTION__.mesh_gatt_notify = private unnamed_addr constant [17 x i8] c"mesh_gatt_notify\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"<Error>: [MESH_GATT]notify error 0 : 0x%x\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"<Error>: [MESH_GATT]Notify_data alloc NULL\0D\0A\00", align 1

; Function Attrs: nounwind optsize
define hidden void @notify_remain_data(i16 zeroext) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i32 0, metadata !34, metadata !DIExpression()), !dbg !38
  %2 = load i8, i8* @log_tag_const_i_MESH_GATT, align 1, !dbg !39, !tbaa !41
  %3 = icmp eq i8 %2, 0, !dbg !39
  br i1 %3, label %5, label %4, !dbg !44

; <label>:4:                                      ; preds = %1
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.notify_remain_data, i32 0, i32 0)) #4, !dbg !45
  br label %5, !dbg !45

; <label>:5:                                      ; preds = %4, %1
  %6 = load %struct.lbuff_head_btctrler*, %struct.lbuff_head_btctrler** bitcast (%struct.lbuff_head** @mesh_notify_lbuf_head to %struct.lbuff_head_btctrler**), align 4, !dbg !47, !tbaa !48
  %7 = tail call i8* @lbuf_pop_btctrler(%struct.lbuff_head_btctrler* %6) #4, !dbg !50
  %8 = icmp eq i8* %7, null, !dbg !51
  br i1 %8, label %27, label %9, !dbg !53

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %7, i32 4
  %11 = getelementptr inbounds i8, i8* %7, i32 2
  %12 = bitcast i8* %11 to i16*
  br i1 %3, label %16, label %13, !dbg !54

; <label>:13:                                     ; preds = %9
  %14 = load i16, i16* %12, align 2, !dbg !55, !tbaa !58
  %15 = zext i16 %14 to i32, !dbg !55
  tail call void @printf_buf(i8* %10, i32 %15) #4, !dbg !55
  br label %16, !dbg !55

; <label>:16:                                     ; preds = %13, %9
  %17 = bitcast i8* %7 to i16*, !dbg !61
  %18 = load i16, i16* %17, align 2, !dbg !61, !tbaa !62
  %19 = load i16, i16* %12, align 2, !dbg !63, !tbaa !58
  %20 = tail call i32 @att_server_notify(i16 zeroext %0, i16 zeroext %18, i8* %10, i16 zeroext %19) #4, !dbg !64
  call void @llvm.dbg.value(metadata i32 %20, metadata !34, metadata !DIExpression()), !dbg !38
  %21 = icmp ne i32 %20, 0, !dbg !65
  %22 = load i8, i8* @log_tag_const_e_MESH_GATT, align 1, !dbg !67
  %23 = icmp ne i8 %22, 0, !dbg !67
  %24 = and i1 %21, %23, !dbg !70
  br i1 %24, label %25, label %26, !dbg !70

; <label>:25:                                     ; preds = %16
  tail call void (i32, i8*, i8*, ...) @log_print(i32 4, i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %20) #4, !dbg !71
  br label %26, !dbg !71

; <label>:26:                                     ; preds = %25, %16
  tail call void @lbuf_free_btctrler(i8* nonnull %7) #4, !dbg !73
  tail call void @att_server_request_can_send_now_event(i16 zeroext %0) #4, !dbg !74
  br label %27, !dbg !75

; <label>:27:                                     ; preds = %26, %5
  ret void, !dbg !76
}

; Function Attrs: optsize
declare void @log_print(i32, i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @lbuf_pop_btctrler(%struct.lbuff_head_btctrler*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @printf_buf(i8*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @att_server_notify(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lbuf_free_btctrler(i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @att_server_request_can_send_now_event(i16 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden i32 @mesh_gatt_notify(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !78 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !85, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i16 %1, metadata !86, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i8* %2, metadata !87, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i16 %3, metadata !88, metadata !DIExpression()), !dbg !96
  %5 = load i8, i8* @log_tag_const_i_MESH_GATT, align 1, !dbg !97, !tbaa !41
  %6 = icmp eq i8 %5, 0, !dbg !97
  br i1 %6, label %9, label %7, !dbg !99

; <label>:7:                                      ; preds = %4
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.mesh_gatt_notify, i32 0, i32 0)) #4, !dbg !100
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !102
  %8 = zext i16 %3 to i32, !dbg !103
  tail call void @printf_buf(i8* %2, i32 %8) #4, !dbg !103
  br label %9, !dbg !103

; <label>:9:                                      ; preds = %7, %4
  %10 = tail call i32 @att_server_notify(i16 zeroext %0, i16 zeroext %1, i8* %2, i16 zeroext %3) #4, !dbg !106
  call void @llvm.dbg.value(metadata i32 %10, metadata !89, metadata !DIExpression()), !dbg !102
  %11 = icmp eq i32 %10, 0, !dbg !107
  br i1 %11, label %29, label %12, !dbg !108

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* @log_tag_const_e_MESH_GATT, align 1, !dbg !109, !tbaa !41
  %14 = icmp eq i8 %13, 0, !dbg !109
  br i1 %14, label %16, label %15, !dbg !111

; <label>:15:                                     ; preds = %12
  tail call void (i32, i8*, i8*, ...) @log_print(i32 4, i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i32 %10) #4, !dbg !112
  br label %16, !dbg !112

; <label>:16:                                     ; preds = %15, %12
  %17 = load %struct.lbuff_head_btctrler*, %struct.lbuff_head_btctrler** bitcast (%struct.lbuff_head** @mesh_notify_lbuf_head to %struct.lbuff_head_btctrler**), align 4, !dbg !114, !tbaa !48
  %18 = zext i16 %3 to i32, !dbg !115
  %19 = add nuw nsw i32 %18, 4, !dbg !116
  %20 = tail call i8* @lbuf_alloc_btctrler(%struct.lbuff_head_btctrler* %17, i32 %19) #4, !dbg !117
  %21 = icmp eq i8* %20, null, !dbg !118
  br i1 %21, label %22, label %24, !dbg !120

; <label>:22:                                     ; preds = %16
  br i1 %14, label %30, label %23, !dbg !121

; <label>:23:                                     ; preds = %22
  tail call void (i32, i8*, i8*, ...) @log_print(i32 4, i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !123
  br label %30, !dbg !123

; <label>:24:                                     ; preds = %16
  %25 = bitcast i8* %20 to i16*, !dbg !126
  store i16 %1, i16* %25, align 2, !dbg !127, !tbaa !62
  %26 = getelementptr inbounds i8, i8* %20, i32 4, !dbg !128
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %2, i32 %18, i32 1, i1 false), !dbg !129
  %27 = getelementptr inbounds i8, i8* %20, i32 2, !dbg !130
  %28 = bitcast i8* %27 to i16*, !dbg !130
  store i16 %3, i16* %28, align 2, !dbg !131, !tbaa !58
  tail call void @lbuf_push_btctrler(i8* nonnull %20) #4, !dbg !132
  br label %30

; <label>:29:                                     ; preds = %9
  tail call void @att_server_request_can_send_now_event(i16 zeroext %0) #4, !dbg !133
  br label %30

; <label>:30:                                     ; preds = %29, %24, %23, %22
  %31 = phi i32 [ 1, %23 ], [ 1, %22 ], [ 0, %24 ], [ 0, %29 ]
  ret i32 %31, !dbg !135
}

; Function Attrs: optsize
declare i8* @lbuf_alloc_btctrler(%struct.lbuff_head_btctrler*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: optsize
declare void @lbuf_push_btctrler(i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @mesh_gatt_set_callback(i8*, i8*) local_unnamed_addr #0 !dbg !136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !140, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i8* %1, metadata !141, metadata !DIExpression()), !dbg !143
  %3 = bitcast i8* %0 to i16 (i16, i16, i16, i8*, i16)*, !dbg !144
  tail call void @att_set_read_callback(i16 (i16, i16, i16, i8*, i16)* %3) #4, !dbg !145
  %4 = bitcast i8* %1 to i32 (i16, i16, i16, i16, i8*, i16)*, !dbg !146
  tail call void @att_set_write_callback(i32 (i16, i16, i16, i16, i8*, i16)* %4) #4, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: optsize
declare void @att_set_read_callback(i16 (i16, i16, i16, i8*, i16)*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @att_set_write_callback(i32 (i16, i16, i16, i16, i8*, i16)*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @mesh_gatt_change_profile(i8*) local_unnamed_addr #0 !dbg !149 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !153, metadata !DIExpression()), !dbg !154
  tail call void @att_set_db(i8* %0) #4, !dbg !155
  ret void, !dbg !156
}

; Function Attrs: optsize
declare void @att_set_db(i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @mesh_gatt_init(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !157 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i16 %1, metadata !163, metadata !DIExpression()), !dbg !165
  %3 = zext i16 %1 to i32, !dbg !166
  %4 = tail call %struct.lbuff_head_btctrler* @lbuf_init_btctrler(i8* %0, i32 %3) #4, !dbg !167
  store %struct.lbuff_head_btctrler* %4, %struct.lbuff_head_btctrler** bitcast (%struct.lbuff_head** @mesh_notify_lbuf_head to %struct.lbuff_head_btctrler**), align 4, !dbg !168, !tbaa !48
  tail call void @le_device_db_init() #4, !dbg !169
  tail call void @att_server_init(i8* null, i16 (i16, i16, i16, i8*, i16)* null, i32 (i16, i16, i16, i16, i8*, i16)* null) #4, !dbg !170
  ret void, !dbg !171
}

; Function Attrs: optsize
declare %struct.lbuff_head_btctrler* @lbuf_init_btctrler(i8*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @le_device_db_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @att_server_init(i8*, i16 (i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mesh_notify_lbuf_head", scope: !2, file: !3, line: 36, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !23)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_gatt.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6, !7, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3, line: 22, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__mesh_gatt_notify_data", file: !3, line: 30, size: 32, elements: !12)
!12 = !{!13, !17, !18}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "att_handle", scope: !11, file: !3, line: 31, baseType: !14, size: 16)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!16 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !11, file: !3, line: 32, baseType: !14, size: 16, offset: 16)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !11, file: !3, line: 33, baseType: !19, offset: 32)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 44, baseType: !9)
!21 = !{!22}
!22 = !DISubrange(count: 0)
!23 = !{!0}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "lbuff_head", file: !3, line: 36, flags: DIFlagFwdDecl)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!29 = distinct !DISubprogram(name: "notify_remain_data", scope: !3, file: !3, line: 38, type: !30, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !14}
!32 = !{!33, !34, !36}
!33 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !29, file: !3, line: 38, type: !14)
!34 = !DILocalVariable(name: "err", scope: !29, file: !3, line: 40, type: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocalVariable(name: "notify_data", scope: !29, file: !3, line: 44, type: !10)
!37 = !DILocation(line: 38, column: 29, scope: !29)
!38 = !DILocation(line: 40, column: 9, scope: !29)
!39 = !DILocation(line: 42, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !3, line: 42, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 42, column: 5, scope: !29)
!45 = !DILocation(line: 42, column: 5, scope: !46)
!46 = !DILexicalBlockFile(scope: !40, file: !3, discriminator: 1)
!47 = !DILocation(line: 46, column: 28, scope: !29)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !42, i64 0}
!50 = !DILocation(line: 46, column: 19, scope: !29)
!51 = !DILocation(line: 47, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !29, file: !3, line: 47, column: 9)
!53 = !DILocation(line: 47, column: 9, scope: !29)
!54 = !DILocation(line: 51, column: 5, scope: !29)
!55 = !DILocation(line: 51, column: 5, scope: !56)
!56 = !DILexicalBlockFile(scope: !57, file: !3, discriminator: 1)
!57 = distinct !DILexicalBlock(scope: !29, file: !3, line: 51, column: 5)
!58 = !{!59, !60, i64 2}
!59 = !{!"__mesh_gatt_notify_data", !60, i64 0, !60, i64 2, !42, i64 4}
!60 = !{!"short", !42, i64 0}
!61 = !DILocation(line: 53, column: 42, scope: !29)
!62 = !{!59, !60, i64 0}
!63 = !DILocation(line: 55, column: 42, scope: !29)
!64 = !DILocation(line: 52, column: 11, scope: !29)
!65 = !DILocation(line: 56, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !29, file: !3, line: 56, column: 9)
!67 = !DILocation(line: 57, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 57, column: 9)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 56, column: 14)
!70 = !DILocation(line: 56, column: 9, scope: !29)
!71 = !DILocation(line: 57, column: 9, scope: !72)
!72 = !DILexicalBlockFile(scope: !68, file: !3, discriminator: 1)
!73 = !DILocation(line: 60, column: 5, scope: !29)
!74 = !DILocation(line: 62, column: 5, scope: !29)
!75 = !DILocation(line: 63, column: 1, scope: !29)
!76 = !DILocation(line: 63, column: 1, scope: !77)
!77 = !DILexicalBlockFile(scope: !29, file: !3, discriminator: 2)
!78 = distinct !DISubprogram(name: "mesh_gatt_notify", scope: !3, file: !3, line: 65, type: !79, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !84)
!79 = !DISubroutineType(types: !80)
!80 = !{!35, !14, !14, !81, !83}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !3, line: 24, baseType: !16)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DILocalVariable(name: "conn_handle", arg: 1, scope: !78, file: !3, line: 65, type: !14)
!86 = !DILocalVariable(name: "att_handle", arg: 2, scope: !78, file: !3, line: 65, type: !14)
!87 = !DILocalVariable(name: "data", arg: 3, scope: !78, file: !3, line: 65, type: !81)
!88 = !DILocalVariable(name: "len", arg: 4, scope: !78, file: !3, line: 65, type: !83)
!89 = !DILocalVariable(name: "err", scope: !78, file: !3, line: 69, type: !35)
!90 = !DILocalVariable(name: "notify_data", scope: !91, file: !3, line: 80, type: !10)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 77, column: 14)
!92 = distinct !DILexicalBlock(scope: !78, file: !3, line: 77, column: 9)
!93 = !DILocation(line: 65, column: 26, scope: !78)
!94 = !DILocation(line: 65, column: 43, scope: !78)
!95 = !DILocation(line: 65, column: 67, scope: !78)
!96 = !DILocation(line: 65, column: 79, scope: !78)
!97 = !DILocation(line: 67, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !78, file: !3, line: 67, column: 5)
!99 = !DILocation(line: 67, column: 5, scope: !78)
!100 = !DILocation(line: 67, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !98, file: !3, discriminator: 1)
!102 = !DILocation(line: 69, column: 9, scope: !78)
!103 = !DILocation(line: 71, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !105, file: !3, discriminator: 1)
!105 = distinct !DILexicalBlock(scope: !78, file: !3, line: 71, column: 5)
!106 = !DILocation(line: 73, column: 11, scope: !78)
!107 = !DILocation(line: 77, column: 9, scope: !92)
!108 = !DILocation(line: 77, column: 9, scope: !78)
!109 = !DILocation(line: 78, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !91, file: !3, line: 78, column: 9)
!111 = !DILocation(line: 78, column: 9, scope: !91)
!112 = !DILocation(line: 78, column: 9, scope: !113)
!113 = !DILexicalBlockFile(scope: !110, file: !3, discriminator: 1)
!114 = !DILocation(line: 83, column: 34, scope: !91)
!115 = !DILocation(line: 83, column: 80, scope: !91)
!116 = !DILocation(line: 83, column: 78, scope: !91)
!117 = !DILocation(line: 83, column: 23, scope: !91)
!118 = !DILocation(line: 85, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !91, file: !3, line: 85, column: 13)
!120 = !DILocation(line: 85, column: 13, scope: !91)
!121 = !DILocation(line: 86, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 85, column: 34)
!123 = !DILocation(line: 86, column: 13, scope: !124)
!124 = !DILexicalBlockFile(scope: !125, file: !3, discriminator: 1)
!125 = distinct !DILexicalBlock(scope: !122, file: !3, line: 86, column: 13)
!126 = !DILocation(line: 90, column: 22, scope: !91)
!127 = !DILocation(line: 90, column: 33, scope: !91)
!128 = !DILocation(line: 91, column: 29, scope: !91)
!129 = !DILocation(line: 91, column: 9, scope: !91)
!130 = !DILocation(line: 92, column: 22, scope: !91)
!131 = !DILocation(line: 92, column: 26, scope: !91)
!132 = !DILocation(line: 93, column: 9, scope: !91)
!133 = !DILocation(line: 95, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !92, file: !3, line: 94, column: 12)
!135 = !DILocation(line: 99, column: 1, scope: !78)
!136 = distinct !DISubprogram(name: "mesh_gatt_set_callback", scope: !3, file: !3, line: 101, type: !137, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !6, !6}
!139 = !{!140, !141}
!140 = !DILocalVariable(name: "read_cb", arg: 1, scope: !136, file: !3, line: 101, type: !6)
!141 = !DILocalVariable(name: "write_cb", arg: 2, scope: !136, file: !3, line: 101, type: !6)
!142 = !DILocation(line: 101, column: 35, scope: !136)
!143 = !DILocation(line: 101, column: 50, scope: !136)
!144 = !DILocation(line: 103, column: 27, scope: !136)
!145 = !DILocation(line: 103, column: 5, scope: !136)
!146 = !DILocation(line: 105, column: 28, scope: !136)
!147 = !DILocation(line: 105, column: 5, scope: !136)
!148 = !DILocation(line: 106, column: 1, scope: !136)
!149 = distinct !DISubprogram(name: "mesh_gatt_change_profile", scope: !3, file: !3, line: 108, type: !150, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !6}
!152 = !{!153}
!153 = !DILocalVariable(name: "data", arg: 1, scope: !149, file: !3, line: 108, type: !6)
!154 = !DILocation(line: 108, column: 37, scope: !149)
!155 = !DILocation(line: 110, column: 5, scope: !149)
!156 = !DILocation(line: 111, column: 1, scope: !149)
!157 = distinct !DISubprogram(name: "mesh_gatt_init", scope: !3, file: !3, line: 113, type: !158, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160, !14}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "buf", arg: 1, scope: !157, file: !3, line: 113, type: !160)
!163 = !DILocalVariable(name: "len", arg: 2, scope: !157, file: !3, line: 113, type: !14)
!164 = !DILocation(line: 113, column: 25, scope: !157)
!165 = !DILocation(line: 113, column: 34, scope: !157)
!166 = !DILocation(line: 115, column: 44, scope: !157)
!167 = !DILocation(line: 115, column: 29, scope: !157)
!168 = !DILocation(line: 115, column: 27, scope: !157)
!169 = !DILocation(line: 117, column: 5, scope: !157)
!170 = !DILocation(line: 119, column: 5, scope: !157)
!171 = !DILocation(line: 120, column: 1, scope: !157)
