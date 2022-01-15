; ModuleID = 'btstack_linked_list.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }

; Function Attrs: nounwind optsize readonly
define hidden i32 @btstack_linked_list_empty(%struct.btstack_linked_item** nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !15 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %0, align 4, !dbg !25, !tbaa !26
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !30
  %4 = zext i1 %3 to i32, !dbg !30
  ret i32 %4, !dbg !31
}

; Function Attrs: nounwind optsize readonly
define hidden %struct.btstack_linked_item* @btstack_linked_list_get_last_item(%struct.btstack_linked_item** nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !32 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* null, metadata !37, metadata !DIExpression()), !dbg !40
  br label %2, !dbg !41

; <label>:2:                                      ; preds = %2, %1
  %3 = phi %struct.btstack_linked_item* [ null, %1 ], [ %5, %2 ]
  %4 = phi %struct.btstack_linked_item** [ %0, %1 ], [ %7, %2 ]
  %5 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %4, align 4, !tbaa !26
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !38, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !37, metadata !DIExpression()), !dbg !40
  %6 = icmp eq %struct.btstack_linked_item* %5, null, !dbg !44
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !37, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !37, metadata !DIExpression()), !dbg !40
  %7 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %5, i32 0, i32 0, !dbg !46
  br i1 %6, label %8, label %2, !dbg !44, !llvm.loop !49

; <label>:8:                                      ; preds = %2
  ret %struct.btstack_linked_item* %3, !dbg !52
}

; Function Attrs: nounwind optsize
define hidden void @btstack_linked_list_add(%struct.btstack_linked_item** nocapture, %struct.btstack_linked_item*) local_unnamed_addr #1 section ".bt_stack_code" !dbg !53 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !57, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %1, metadata !58, metadata !DIExpression()), !dbg !61
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %0, align 4, !tbaa !26
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !59, metadata !DIExpression()), !dbg !62
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !63
  %5 = ptrtoint %struct.btstack_linked_item* %3 to i32, !dbg !63
  br i1 %4, label %15, label %6, !dbg !63

; <label>:6:                                      ; preds = %2
  br label %11, !dbg !66

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !70
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !26
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !59, metadata !DIExpression()), !dbg !62
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !63
  br i1 %10, label %14, label %11, !dbg !63, !llvm.loop !72

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %3, %6 ]
  %13 = icmp eq %struct.btstack_linked_item* %12, %1, !dbg !66
  br i1 %13, label %17, label %7, !dbg !75

; <label>:14:                                     ; preds = %7
  br label %15, !dbg !76

; <label>:15:                                     ; preds = %14, %2
  %16 = bitcast %struct.btstack_linked_item* %1 to i32*, !dbg !76
  store i32 %5, i32* %16, align 4, !dbg !76, !tbaa !77
  store %struct.btstack_linked_item* %1, %struct.btstack_linked_item** %0, align 4, !dbg !79, !tbaa !26
  br label %18, !dbg !80

; <label>:17:                                     ; preds = %11
  br label %18, !dbg !81

; <label>:18:                                     ; preds = %17, %15
  ret void, !dbg !81
}

; Function Attrs: nounwind optsize
define hidden void @btstack_linked_list_add_tail(%struct.btstack_linked_item** nocapture, %struct.btstack_linked_item*) local_unnamed_addr #1 section ".bt_stack_code" !dbg !83 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %1, metadata !86, metadata !DIExpression()), !dbg !89
  %3 = bitcast %struct.btstack_linked_item** %0 to %struct.btstack_linked_item*, !dbg !90
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !87, metadata !DIExpression()), !dbg !92
  br label %4, !dbg !93

; <label>:4:                                      ; preds = %9, %2
  %5 = phi %struct.btstack_linked_item* [ %3, %2 ], [ %7, %9 ]
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !87, metadata !DIExpression()), !dbg !92
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %5, i32 0, i32 0, !dbg !94
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !dbg !94, !tbaa !77
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !97
  br i1 %8, label %11, label %9, !dbg !97

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.btstack_linked_item* %7, %1, !dbg !99
  br i1 %10, label %13, label %4, !dbg !102, !llvm.loop !103

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %1, i32 0, i32 0, !dbg !106
  store %struct.btstack_linked_item* null, %struct.btstack_linked_item** %12, align 4, !dbg !107, !tbaa !77
  store %struct.btstack_linked_item* %1, %struct.btstack_linked_item** %6, align 4, !dbg !108, !tbaa !77
  br label %14, !dbg !109

; <label>:13:                                     ; preds = %9
  br label %14, !dbg !110

; <label>:14:                                     ; preds = %13, %11
  ret void, !dbg !110
}

; Function Attrs: nounwind optsize
define hidden i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item* readonly) local_unnamed_addr #1 section ".bt_stack_code" !dbg !112 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !116, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %1, metadata !117, metadata !DIExpression()), !dbg !120
  %3 = icmp eq %struct.btstack_linked_item* %1, null, !dbg !121
  br i1 %3, label %18, label %4, !dbg !123

; <label>:4:                                      ; preds = %2
  %5 = bitcast %struct.btstack_linked_item** %0 to %struct.btstack_linked_item*, !dbg !124
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !118, metadata !DIExpression()), !dbg !126
  br label %6, !dbg !127

; <label>:6:                                      ; preds = %9, %4
  %7 = phi %struct.btstack_linked_item* [ %5, %4 ], [ %11, %9 ]
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !118, metadata !DIExpression()), !dbg !126
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !128
  br i1 %8, label %17, label %9, !dbg !128

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !130
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !dbg !130, !tbaa !77
  %12 = icmp eq %struct.btstack_linked_item* %11, %1, !dbg !134
  br i1 %12, label %13, label %6, !dbg !135, !llvm.loop !136

; <label>:13:                                     ; preds = %9
  %14 = bitcast %struct.btstack_linked_item* %1 to i32*, !dbg !139
  %15 = load i32, i32* %14, align 4, !dbg !139, !tbaa !77
  %16 = bitcast %struct.btstack_linked_item* %7 to i32*, !dbg !141
  store i32 %15, i32* %16, align 4, !dbg !141, !tbaa !77
  br label %18, !dbg !142

; <label>:17:                                     ; preds = %6
  br label %18, !dbg !143

; <label>:18:                                     ; preds = %17, %13, %2
  %19 = phi i32 [ -1, %2 ], [ 0, %13 ], [ -1, %17 ]
  ret i32 %19, !dbg !143
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @btstack_linked_list_count(%struct.btstack_linked_item** nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !145 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !147, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 0, metadata !149, metadata !DIExpression()), !dbg !151
  %2 = bitcast %struct.btstack_linked_item** %0 to %struct.btstack_linked_item*, !dbg !152
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !148, metadata !DIExpression()), !dbg !154
  br label %3, !dbg !155

; <label>:3:                                      ; preds = %3, %1
  %4 = phi %struct.btstack_linked_item* [ %2, %1 ], [ %7, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %9, %3 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !148, metadata !DIExpression()), !dbg !154
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %4, i32 0, i32 0, !dbg !156
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !dbg !156, !tbaa !77
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !159
  %9 = add nuw nsw i32 %5, 1, !dbg !161
  call void @llvm.dbg.value(metadata i32 %9, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !148, metadata !DIExpression()), !dbg !154
  br i1 %8, label %10, label %3, !dbg !159, !llvm.loop !163

; <label>:10:                                     ; preds = %3
  ret i32 %5, !dbg !166
}

; Function Attrs: nounwind optsize readonly
define hidden %struct.btstack_linked_item* @btstack_linked_list_get_first_item(%struct.btstack_linked_item** nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !167 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !169, metadata !DIExpression()), !dbg !170
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %0, align 4, !dbg !171, !tbaa !26
  ret %struct.btstack_linked_item* %2, !dbg !172
}

; Function Attrs: nounwind optsize
define hidden %struct.btstack_linked_item* @btstack_linked_list_pop(%struct.btstack_linked_item** nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !173 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %0, metadata !175, metadata !DIExpression()), !dbg !177
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %0, align 4, !dbg !178, !tbaa !26
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !176, metadata !DIExpression()), !dbg !179
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !180
  br i1 %3, label %8, label %4, !dbg !182

; <label>:4:                                      ; preds = %1
  %5 = bitcast %struct.btstack_linked_item* %2 to i32*, !dbg !183
  %6 = load i32, i32* %5, align 4, !dbg !183, !tbaa !77
  %7 = bitcast %struct.btstack_linked_item** %0 to i32*, !dbg !184
  store i32 %6, i32* %7, align 4, !dbg !184, !tbaa !26
  br label %8, !dbg !185

; <label>:8:                                      ; preds = %4, %1
  %9 = phi %struct.btstack_linked_item* [ %2, %4 ], [ null, %1 ]
  ret %struct.btstack_linked_item* %9, !dbg !186
}

; Function Attrs: nounwind optsize
define hidden void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nocapture, %struct.btstack_linked_item**) local_unnamed_addr #1 section ".bt_stack_code" !dbg !187 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %0, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item** %1, metadata !199, metadata !DIExpression()), !dbg !201
  %3 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 0, !dbg !202
  store i32 0, i32* %3, align 4, !dbg !203, !tbaa !204
  %4 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 1, !dbg !207
  %5 = bitcast %struct.btstack_linked_item** %4 to %struct.btstack_linked_item***, !dbg !208
  store %struct.btstack_linked_item** %1, %struct.btstack_linked_item*** %5, align 4, !dbg !208, !tbaa !209
  %6 = bitcast %struct.btstack_linked_item** %1 to i32*, !dbg !210
  %7 = load i32, i32* %6, align 4, !dbg !210, !tbaa !26
  %8 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 2, !dbg !211
  %9 = bitcast %struct.btstack_linked_item** %8 to i32*, !dbg !212
  store i32 %7, i32* %9, align 4, !dbg !212, !tbaa !213
  ret void, !dbg !214
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !215 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %0, metadata !219, metadata !DIExpression()), !dbg !220
  %2 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 0, !dbg !221
  %3 = load i32, i32* %2, align 4, !dbg !221, !tbaa !204
  %4 = icmp eq i32 %3, 0, !dbg !223
  br i1 %4, label %5, label %7, !dbg !224

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 2, !dbg !225
  br label %17, !dbg !227

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 1, !dbg !228
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !dbg !228, !tbaa !209
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !230
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !dbg !230, !tbaa !77
  %12 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 2, !dbg !231
  %13 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %12, align 4, !dbg !231, !tbaa !213
  %14 = icmp eq %struct.btstack_linked_item* %11, %13, !dbg !232
  br i1 %14, label %15, label %20, !dbg !233

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 0, i32 0, !dbg !234
  br label %17, !dbg !235

; <label>:17:                                     ; preds = %15, %5
  %18 = phi %struct.btstack_linked_item** [ %16, %15 ], [ %6, %5 ]
  %19 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %18, align 4, !tbaa !26
  br label %20

; <label>:20:                                     ; preds = %17, %7
  %21 = phi %struct.btstack_linked_item* [ %11, %7 ], [ %19, %17 ]
  %22 = icmp ne %struct.btstack_linked_item* %21, null
  %23 = zext i1 %22 to i32
  ret i32 %23, !dbg !236
}

; Function Attrs: nounwind optsize
define hidden %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !237 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %0, metadata !241, metadata !DIExpression()), !dbg !242
  %2 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 0, !dbg !243
  %3 = load i32, i32* %2, align 4, !dbg !243, !tbaa !204
  %4 = icmp eq i32 %3, 0, !dbg !245
  br i1 %4, label %18, label %5, !dbg !246

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 1, !dbg !247
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !dbg !247, !tbaa !209
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !250
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !dbg !250, !tbaa !77
  %10 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 2, !dbg !251
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !dbg !251, !tbaa !213
  %12 = icmp eq %struct.btstack_linked_item* %9, %11, !dbg !252
  br i1 %12, label %13, label %16, !dbg !253

; <label>:13:                                     ; preds = %5
  store %struct.btstack_linked_item* %9, %struct.btstack_linked_item** %6, align 4, !dbg !254, !tbaa !209
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !256
  %15 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %14, align 4, !dbg !256, !tbaa !77
  br label %16, !dbg !257

; <label>:16:                                     ; preds = %13, %5
  %17 = phi %struct.btstack_linked_item* [ %15, %13 ], [ %9, %5 ]
  store %struct.btstack_linked_item* %17, %struct.btstack_linked_item** %10, align 4, !tbaa !213
  br label %21, !dbg !258

; <label>:18:                                     ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !259, !tbaa !204
  %19 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 2
  %20 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %19, align 4, !tbaa !213
  br label %21

; <label>:21:                                     ; preds = %18, %16
  %22 = phi %struct.btstack_linked_item* [ %20, %18 ], [ %17, %16 ], !dbg !261
  ret %struct.btstack_linked_item* %22, !dbg !262
}

; Function Attrs: nounwind optsize
define hidden void @btstack_linked_list_iterator_remove(%struct.btstack_linked_list_iterator_t* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !263 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %0, metadata !267, metadata !DIExpression()), !dbg !268
  %2 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 2, !dbg !269
  %3 = bitcast %struct.btstack_linked_item** %2 to i32**, !dbg !269
  %4 = load i32*, i32** %3, align 4, !dbg !269, !tbaa !213
  %5 = load i32, i32* %4, align 4, !dbg !270, !tbaa !77
  %6 = bitcast %struct.btstack_linked_item** %2 to i32*, !dbg !271
  store i32 %5, i32* %6, align 4, !dbg !271, !tbaa !213
  %7 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 1, !dbg !272
  %8 = bitcast %struct.btstack_linked_item** %7 to i32**, !dbg !272
  %9 = load i32*, i32** %8, align 4, !dbg !272, !tbaa !209
  store i32 %5, i32* %9, align 4, !dbg !273, !tbaa !77
  %10 = getelementptr inbounds %struct.btstack_linked_list_iterator_t, %struct.btstack_linked_list_iterator_t* %0, i32 0, i32 0, !dbg !274
  store i32 0, i32* %10, align 4, !dbg !275, !tbaa !204
  ret void, !dbg !276
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "../btcommon/btstack_linked_list.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !7, line: 55, baseType: !8)
!7 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !7, line: 53, size: 32, elements: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !7, line: 54, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!15 = distinct !DISubprogram(name: "btstack_linked_list_empty", scope: !16, file: !16, line: 58, type: !17, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !22)
!16 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_linked_list.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_t", file: !7, line: 58, baseType: !5)
!22 = !{!23}
!23 = !DILocalVariable(name: "list", arg: 1, scope: !15, file: !16, line: 58, type: !20)
!24 = !DILocation(line: 58, column: 55, scope: !15)
!25 = !DILocation(line: 60, column: 12, scope: !15)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 60, column: 18, scope: !15)
!31 = !DILocation(line: 60, column: 5, scope: !15)
!32 = distinct !DISubprogram(name: "btstack_linked_list_get_last_item", scope: !16, file: !16, line: 66, type: !33, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !20}
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: "list", arg: 1, scope: !32, file: !16, line: 66, type: !20)
!37 = !DILocalVariable(name: "lastItem", scope: !32, file: !16, line: 68, type: !5)
!38 = !DILocalVariable(name: "it", scope: !32, file: !16, line: 69, type: !5)
!39 = !DILocation(line: 66, column: 81, scope: !32)
!40 = !DILocation(line: 68, column: 28, scope: !32)
!41 = !DILocation(line: 70, column: 10, scope: !42)
!42 = distinct !DILexicalBlock(scope: !32, file: !16, line: 70, column: 5)
!43 = !DILocation(line: 69, column: 28, scope: !32)
!44 = !DILocation(line: 70, column: 5, scope: !45)
!45 = !DILexicalBlockFile(scope: !42, file: !16, discriminator: 1)
!46 = !DILocation(line: 70, column: 36, scope: !47)
!47 = !DILexicalBlockFile(scope: !48, file: !16, discriminator: 2)
!48 = distinct !DILexicalBlock(scope: !42, file: !16, line: 70, column: 5)
!49 = distinct !{!49, !50, !51}
!50 = !DILocation(line: 70, column: 5, scope: !42)
!51 = !DILocation(line: 74, column: 5, scope: !42)
!52 = !DILocation(line: 75, column: 5, scope: !32)
!53 = distinct !DISubprogram(name: "btstack_linked_list_add", scope: !16, file: !16, line: 82, type: !54, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !20, !5}
!56 = !{!57, !58, !59}
!57 = !DILocalVariable(name: "list", arg: 1, scope: !53, file: !16, line: 82, type: !20)
!58 = !DILocalVariable(name: "item", arg: 2, scope: !53, file: !16, line: 82, type: !5)
!59 = !DILocalVariable(name: "it", scope: !53, file: !16, line: 85, type: !5)
!60 = !DILocation(line: 82, column: 53, scope: !53)
!61 = !DILocation(line: 82, column: 82, scope: !53)
!62 = !DILocation(line: 85, column: 28, scope: !53)
!63 = !DILocation(line: 86, column: 5, scope: !64)
!64 = !DILexicalBlockFile(scope: !65, file: !16, discriminator: 1)
!65 = distinct !DILexicalBlock(scope: !53, file: !16, line: 86, column: 5)
!66 = !DILocation(line: 87, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !16, line: 87, column: 13)
!68 = distinct !DILexicalBlock(scope: !69, file: !16, line: 86, column: 42)
!69 = distinct !DILexicalBlock(scope: !65, file: !16, line: 86, column: 5)
!70 = !DILocation(line: 86, column: 36, scope: !71)
!71 = !DILexicalBlockFile(scope: !69, file: !16, discriminator: 2)
!72 = distinct !{!72, !73, !74}
!73 = !DILocation(line: 86, column: 5, scope: !65)
!74 = !DILocation(line: 90, column: 5, scope: !65)
!75 = !DILocation(line: 87, column: 13, scope: !68)
!76 = !DILocation(line: 92, column: 16, scope: !53)
!77 = !{!78, !27, i64 0}
!78 = !{!"btstack_linked_item", !27, i64 0}
!79 = !DILocation(line: 93, column: 11, scope: !53)
!80 = !DILocation(line: 94, column: 1, scope: !53)
!81 = !DILocation(line: 94, column: 1, scope: !82)
!82 = !DILexicalBlockFile(scope: !53, file: !16, discriminator: 2)
!83 = distinct !DISubprogram(name: "btstack_linked_list_add_tail", scope: !16, file: !16, line: 96, type: !54, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !84)
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(name: "list", arg: 1, scope: !83, file: !16, line: 96, type: !20)
!86 = !DILocalVariable(name: "item", arg: 2, scope: !83, file: !16, line: 96, type: !5)
!87 = !DILocalVariable(name: "it", scope: !83, file: !16, line: 99, type: !5)
!88 = !DILocation(line: 96, column: 58, scope: !83)
!89 = !DILocation(line: 96, column: 87, scope: !83)
!90 = !DILocation(line: 100, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !83, file: !16, line: 100, column: 5)
!92 = !DILocation(line: 99, column: 28, scope: !83)
!93 = !DILocation(line: 100, column: 10, scope: !91)
!94 = !DILocation(line: 100, column: 51, scope: !95)
!95 = !DILexicalBlockFile(scope: !96, file: !16, discriminator: 1)
!96 = distinct !DILexicalBlock(scope: !91, file: !16, line: 100, column: 5)
!97 = !DILocation(line: 100, column: 5, scope: !98)
!98 = !DILexicalBlockFile(scope: !91, file: !16, discriminator: 1)
!99 = !DILocation(line: 101, column: 22, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !16, line: 101, column: 13)
!101 = distinct !DILexicalBlock(scope: !96, file: !16, line: 100, column: 73)
!102 = !DILocation(line: 101, column: 13, scope: !101)
!103 = distinct !{!103, !104, !105}
!104 = !DILocation(line: 100, column: 5, scope: !91)
!105 = !DILocation(line: 104, column: 5, scope: !91)
!106 = !DILocation(line: 105, column: 11, scope: !83)
!107 = !DILocation(line: 105, column: 16, scope: !83)
!108 = !DILocation(line: 106, column: 14, scope: !83)
!109 = !DILocation(line: 107, column: 1, scope: !83)
!110 = !DILocation(line: 107, column: 1, scope: !111)
!111 = !DILexicalBlockFile(scope: !83, file: !16, discriminator: 2)
!112 = distinct !DISubprogram(name: "btstack_linked_list_remove", scope: !16, file: !16, line: 109, type: !113, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!19, !20, !5}
!115 = !{!116, !117, !118}
!116 = !DILocalVariable(name: "list", arg: 1, scope: !112, file: !16, line: 109, type: !20)
!117 = !DILocalVariable(name: "item", arg: 2, scope: !112, file: !16, line: 109, type: !5)
!118 = !DILocalVariable(name: "it", scope: !112, file: !16, line: 114, type: !5)
!119 = !DILocation(line: 109, column: 56, scope: !112)
!120 = !DILocation(line: 109, column: 85, scope: !112)
!121 = !DILocation(line: 111, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !112, file: !16, line: 111, column: 9)
!123 = !DILocation(line: 111, column: 9, scope: !112)
!124 = !DILocation(line: 115, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !112, file: !16, line: 115, column: 5)
!126 = !DILocation(line: 114, column: 28, scope: !112)
!127 = !DILocation(line: 115, column: 10, scope: !125)
!128 = !DILocation(line: 115, column: 5, scope: !129)
!129 = !DILexicalBlockFile(scope: !125, file: !16, discriminator: 1)
!130 = !DILocation(line: 116, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !16, line: 116, column: 13)
!132 = distinct !DILexicalBlock(scope: !133, file: !16, line: 115, column: 67)
!133 = distinct !DILexicalBlock(scope: !125, file: !16, line: 115, column: 5)
!134 = !DILocation(line: 116, column: 22, scope: !131)
!135 = !DILocation(line: 116, column: 13, scope: !132)
!136 = distinct !{!136, !137, !138}
!137 = !DILocation(line: 115, column: 5, scope: !125)
!138 = !DILocation(line: 120, column: 5, scope: !125)
!139 = !DILocation(line: 117, column: 31, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !16, line: 116, column: 31)
!141 = !DILocation(line: 117, column: 22, scope: !140)
!142 = !DILocation(line: 118, column: 13, scope: !140)
!143 = !DILocation(line: 122, column: 1, scope: !144)
!144 = !DILexicalBlockFile(scope: !112, file: !16, discriminator: 1)
!145 = distinct !DISubprogram(name: "btstack_linked_list_count", scope: !16, file: !16, line: 127, type: !17, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !146)
!146 = !{!147, !148, !149}
!147 = !DILocalVariable(name: "list", arg: 1, scope: !145, file: !16, line: 127, type: !20)
!148 = !DILocalVariable(name: "it", scope: !145, file: !16, line: 129, type: !5)
!149 = !DILocalVariable(name: "counter", scope: !145, file: !16, line: 130, type: !19)
!150 = !DILocation(line: 127, column: 54, scope: !145)
!151 = !DILocation(line: 130, column: 9, scope: !145)
!152 = !DILocation(line: 131, column: 15, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !16, line: 131, column: 5)
!154 = !DILocation(line: 129, column: 28, scope: !145)
!155 = !DILocation(line: 131, column: 10, scope: !153)
!156 = !DILocation(line: 131, column: 51, scope: !157)
!157 = !DILexicalBlockFile(scope: !158, file: !16, discriminator: 1)
!158 = distinct !DILexicalBlock(scope: !153, file: !16, line: 131, column: 5)
!159 = !DILocation(line: 131, column: 5, scope: !160)
!160 = !DILexicalBlockFile(scope: !153, file: !16, discriminator: 1)
!161 = !DILocation(line: 132, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !16, line: 131, column: 73)
!163 = distinct !{!163, !164, !165}
!164 = !DILocation(line: 131, column: 5, scope: !153)
!165 = !DILocation(line: 133, column: 5, scope: !153)
!166 = !DILocation(line: 134, column: 5, scope: !145)
!167 = distinct !DISubprogram(name: "btstack_linked_list_get_first_item", scope: !16, file: !16, line: 138, type: !33, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !168)
!168 = !{!169}
!169 = !DILocalVariable(name: "list", arg: 1, scope: !167, file: !16, line: 138, type: !20)
!170 = !DILocation(line: 138, column: 82, scope: !167)
!171 = !DILocation(line: 140, column: 12, scope: !167)
!172 = !DILocation(line: 140, column: 5, scope: !167)
!173 = distinct !DISubprogram(name: "btstack_linked_list_pop", scope: !16, file: !16, line: 144, type: !33, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !174)
!174 = !{!175, !176}
!175 = !DILocalVariable(name: "list", arg: 1, scope: !173, file: !16, line: 144, type: !20)
!176 = !DILocalVariable(name: "item", scope: !173, file: !16, line: 146, type: !5)
!177 = !DILocation(line: 144, column: 71, scope: !173)
!178 = !DILocation(line: 146, column: 35, scope: !173)
!179 = !DILocation(line: 146, column: 28, scope: !173)
!180 = !DILocation(line: 147, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !16, line: 147, column: 9)
!182 = !DILocation(line: 147, column: 9, scope: !173)
!183 = !DILocation(line: 150, column: 19, scope: !173)
!184 = !DILocation(line: 150, column: 11, scope: !173)
!185 = !DILocation(line: 151, column: 5, scope: !173)
!186 = !DILocation(line: 152, column: 1, scope: !173)
!187 = distinct !DISubprogram(name: "btstack_linked_list_iterator_init", scope: !16, file: !16, line: 159, type: !188, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !197)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190, !20}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !7, line: 65, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 61, size: 96, elements: !193)
!193 = !{!194, !195, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !192, file: !7, line: 62, baseType: !19, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !192, file: !7, line: 63, baseType: !5, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !192, file: !7, line: 64, baseType: !5, size: 32, offset: 64)
!197 = !{!198, !199}
!198 = !DILocalVariable(name: "it", arg: 1, scope: !187, file: !16, line: 159, type: !190)
!199 = !DILocalVariable(name: "head", arg: 2, scope: !187, file: !16, line: 159, type: !20)
!200 = !DILocation(line: 159, column: 72, scope: !187)
!201 = !DILocation(line: 159, column: 99, scope: !187)
!202 = !DILocation(line: 161, column: 9, scope: !187)
!203 = !DILocation(line: 161, column: 25, scope: !187)
!204 = !{!205, !206, i64 0}
!205 = !{!"", !206, i64 0, !27, i64 4, !27, i64 8}
!206 = !{!"int", !28, i64 0}
!207 = !DILocation(line: 162, column: 9, scope: !187)
!208 = !DILocation(line: 162, column: 14, scope: !187)
!209 = !{!205, !27, i64 4}
!210 = !DILocation(line: 163, column: 16, scope: !187)
!211 = !DILocation(line: 163, column: 9, scope: !187)
!212 = !DILocation(line: 163, column: 14, scope: !187)
!213 = !{!205, !27, i64 8}
!214 = !DILocation(line: 164, column: 1, scope: !187)
!215 = distinct !DISubprogram(name: "btstack_linked_list_iterator_has_next", scope: !16, file: !16, line: 166, type: !216, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!19, !190}
!218 = !{!219}
!219 = !DILocalVariable(name: "it", arg: 1, scope: !215, file: !16, line: 166, type: !190)
!220 = !DILocation(line: 166, column: 75, scope: !215)
!221 = !DILocation(line: 169, column: 14, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !16, line: 169, column: 9)
!223 = !DILocation(line: 169, column: 10, scope: !222)
!224 = !DILocation(line: 169, column: 9, scope: !215)
!225 = !DILocation(line: 170, column: 20, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !16, line: 169, column: 31)
!227 = !DILocation(line: 170, column: 9, scope: !226)
!228 = !DILocation(line: 172, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !215, file: !16, line: 172, column: 9)
!230 = !DILocation(line: 172, column: 19, scope: !229)
!231 = !DILocation(line: 172, column: 31, scope: !229)
!232 = !DILocation(line: 172, column: 24, scope: !229)
!233 = !DILocation(line: 172, column: 9, scope: !215)
!234 = !DILocation(line: 177, column: 22, scope: !215)
!235 = !DILocation(line: 177, column: 5, scope: !215)
!236 = !DILocation(line: 178, column: 1, scope: !215)
!237 = distinct !DISubprogram(name: "btstack_linked_list_iterator_next", scope: !16, file: !16, line: 180, type: !238, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!5, !190}
!240 = !{!241}
!241 = !DILocalVariable(name: "it", arg: 1, scope: !237, file: !16, line: 180, type: !190)
!242 = !DILocation(line: 180, column: 90, scope: !237)
!243 = !DILocation(line: 182, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !16, line: 182, column: 9)
!245 = !DILocation(line: 182, column: 9, scope: !244)
!246 = !DILocation(line: 182, column: 9, scope: !237)
!247 = !DILocation(line: 183, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !16, line: 183, column: 13)
!249 = distinct !DILexicalBlock(scope: !244, file: !16, line: 182, column: 30)
!250 = !DILocation(line: 183, column: 23, scope: !248)
!251 = !DILocation(line: 183, column: 35, scope: !248)
!252 = !DILocation(line: 183, column: 28, scope: !248)
!253 = !DILocation(line: 183, column: 13, scope: !249)
!254 = !DILocation(line: 184, column: 22, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !16, line: 183, column: 41)
!256 = !DILocation(line: 185, column: 34, scope: !255)
!257 = !DILocation(line: 186, column: 9, scope: !255)
!258 = !DILocation(line: 190, column: 5, scope: !249)
!259 = !DILocation(line: 191, column: 29, scope: !260)
!260 = distinct !DILexicalBlock(scope: !244, file: !16, line: 190, column: 12)
!261 = !DILocation(line: 193, column: 16, scope: !237)
!262 = !DILocation(line: 193, column: 5, scope: !237)
!263 = distinct !DISubprogram(name: "btstack_linked_list_iterator_remove", scope: !16, file: !16, line: 196, type: !264, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !190}
!266 = !{!267}
!267 = !DILocalVariable(name: "it", arg: 1, scope: !263, file: !16, line: 196, type: !190)
!268 = !DILocation(line: 196, column: 74, scope: !263)
!269 = !DILocation(line: 198, column: 20, scope: !263)
!270 = !DILocation(line: 198, column: 26, scope: !263)
!271 = !DILocation(line: 198, column: 14, scope: !263)
!272 = !DILocation(line: 199, column: 9, scope: !263)
!273 = !DILocation(line: 199, column: 20, scope: !263)
!274 = !DILocation(line: 200, column: 9, scope: !263)
!275 = !DILocation(line: 200, column: 25, scope: !263)
!276 = !DILocation(line: 201, column: 1, scope: !263)
