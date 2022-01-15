; ModuleID = 'utils.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/utils.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

@utl_bluetooth_base_uuid = hidden constant [16 x i8] c"\00\00\00\00\00\00\10\00\80\00\00\80_\9B4\FB", section ".bt_stack_const", align 1, !dbg !0
@utl_bd_addr_to_str_buffer = internal global [18 x i8] zeroinitializer, section ".bt_stack_bss", align 1, !dbg !26
@utl_crc8table = internal unnamed_addr constant [256 x i8] c"\00\91\E3r\07\96\E4u\0E\9F\ED|\09\98\EA{\1C\8D\FFn\1B\8A\F8i\12\83\F1`\15\84\F6g8\A9\DBJ?\AE\DCM6\A7\D5D1\A0\D2C$\B5\C7V#\B2\C0Q*\BB\C9X-\BC\CE_p\E1\93\02w\E6\94\05~\EF\9D\0Cy\E8\9A\0Bl\FD\8F\1Ek\FA\88\19b\F3\81\10e\F4\86\17H\D9\AB:O\DE\AC=F\D7\A54A\D0\A23T\C5\B7&S\C2\B0!Z\CB\B9(]\CC\BE/\E0q\03\92\E7v\04\95\EE\7F\0D\9C\E9x\0A\9B\FCm\1F\8E\FBj\18\89\F2c\11\80\F5d\16\87\D8I;\AA\DFN<\AD\D6G5\A4\D1@2\A3\C4U'\B6\C3R \B1\CA[)\B8\CD\5C.\BF\90\01s\E2\97\06t\E5\9E\0F}\EC\99\08z\EB\8C\1Do\FE\8B\1Ah\F9\82\13a\F0\85\14f\F7\A89K\DA\AF>L\DD\A67E\D4\A10B\D3\B4%W\C6\B3\22P\C1\BA+Y\C8\BD,^\CF", section ".bt_stack_const", align 1, !dbg !32

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @little_endian_read_16(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !46 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 %1, metadata !53, metadata !DIExpression()), !dbg !55
  %3 = getelementptr inbounds i8, i8* %0, i32 %1, !dbg !56
  %4 = load i8, i8* %3, align 1, !dbg !56, !tbaa !57
  %5 = zext i8 %4 to i16, !dbg !60
  %6 = add nsw i32 %1, 1, !dbg !61
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !62
  %8 = load i8, i8* %7, align 1, !dbg !62, !tbaa !57
  %9 = zext i8 %8 to i16, !dbg !63
  %10 = shl nuw i16 %9, 8, !dbg !64
  %11 = or i16 %10, %5, !dbg !65
  ret i16 %11, !dbg !66
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @little_endian_read_24(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !67 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 %1, metadata !72, metadata !DIExpression()), !dbg !74
  %3 = getelementptr inbounds i8, i8* %0, i32 %1, !dbg !75
  %4 = load i8, i8* %3, align 1, !dbg !75, !tbaa !57
  %5 = zext i8 %4 to i32, !dbg !76
  %6 = add nsw i32 %1, 1, !dbg !77
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !78
  %8 = load i8, i8* %7, align 1, !dbg !78, !tbaa !57
  %9 = zext i8 %8 to i32, !dbg !79
  %10 = shl nuw nsw i32 %9, 8, !dbg !80
  %11 = or i32 %10, %5, !dbg !81
  %12 = add nsw i32 %1, 2, !dbg !82
  %13 = getelementptr inbounds i8, i8* %0, i32 %12, !dbg !83
  %14 = load i8, i8* %13, align 1, !dbg !83, !tbaa !57
  %15 = zext i8 %14 to i32, !dbg !84
  %16 = shl nuw nsw i32 %15, 16, !dbg !85
  %17 = or i32 %11, %16, !dbg !86
  ret i32 %17, !dbg !87
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @little_endian_read_32(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !88 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %1, metadata !91, metadata !DIExpression()), !dbg !93
  %3 = getelementptr inbounds i8, i8* %0, i32 %1, !dbg !94
  %4 = load i8, i8* %3, align 1, !dbg !94, !tbaa !57
  %5 = zext i8 %4 to i32, !dbg !95
  %6 = add nsw i32 %1, 1, !dbg !96
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !97
  %8 = load i8, i8* %7, align 1, !dbg !97, !tbaa !57
  %9 = zext i8 %8 to i32, !dbg !98
  %10 = shl nuw nsw i32 %9, 8, !dbg !99
  %11 = or i32 %10, %5, !dbg !100
  %12 = add nsw i32 %1, 2, !dbg !101
  %13 = getelementptr inbounds i8, i8* %0, i32 %12, !dbg !102
  %14 = load i8, i8* %13, align 1, !dbg !102, !tbaa !57
  %15 = zext i8 %14 to i32, !dbg !103
  %16 = shl nuw nsw i32 %15, 16, !dbg !104
  %17 = or i32 %11, %16, !dbg !105
  %18 = add nsw i32 %1, 3, !dbg !106
  %19 = getelementptr inbounds i8, i8* %0, i32 %18, !dbg !107
  %20 = load i8, i8* %19, align 1, !dbg !107, !tbaa !57
  %21 = zext i8 %20 to i32, !dbg !108
  %22 = shl nuw i32 %21, 24, !dbg !109
  %23 = or i32 %17, %22, !dbg !110
  ret i32 %23, !dbg !111
}

; Function Attrs: nounwind optsize
define hidden void @little_endian_store_16(i8* nocapture, i16 zeroext, i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !117, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 %1, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i16 %2, metadata !119, metadata !DIExpression()), !dbg !122
  %4 = trunc i16 %2 to i8, !dbg !123
  %5 = add i16 %1, 1, !dbg !124
  call void @llvm.dbg.value(metadata i16 %5, metadata !118, metadata !DIExpression()), !dbg !121
  %6 = zext i16 %1 to i32, !dbg !125
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !125
  store i8 %4, i8* %7, align 1, !dbg !126, !tbaa !57
  %8 = lshr i16 %2, 8, !dbg !127
  %9 = trunc i16 %8 to i8, !dbg !127
  %10 = zext i16 %5 to i32, !dbg !128
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !128
  store i8 %9, i8* %11, align 1, !dbg !129, !tbaa !57
  ret void, !dbg !130
}

; Function Attrs: nounwind optsize
define hidden void @little_endian_store_32(i8* nocapture, i16 zeroext, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !131 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i16 %1, metadata !136, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 %2, metadata !137, metadata !DIExpression()), !dbg !140
  %4 = trunc i32 %2 to i8, !dbg !141
  %5 = add i16 %1, 1, !dbg !142
  call void @llvm.dbg.value(metadata i16 %5, metadata !136, metadata !DIExpression()), !dbg !139
  %6 = zext i16 %1 to i32, !dbg !143
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !143
  store i8 %4, i8* %7, align 1, !dbg !144, !tbaa !57
  %8 = lshr i32 %2, 8, !dbg !145
  %9 = trunc i32 %8 to i8, !dbg !146
  %10 = add i16 %1, 2, !dbg !147
  call void @llvm.dbg.value(metadata i16 %10, metadata !136, metadata !DIExpression()), !dbg !139
  %11 = zext i16 %5 to i32, !dbg !148
  %12 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !148
  store i8 %9, i8* %12, align 1, !dbg !149, !tbaa !57
  %13 = lshr i32 %2, 16, !dbg !150
  %14 = trunc i32 %13 to i8, !dbg !151
  %15 = add i16 %1, 3, !dbg !152
  call void @llvm.dbg.value(metadata i16 %15, metadata !136, metadata !DIExpression()), !dbg !139
  %16 = zext i16 %10 to i32, !dbg !153
  %17 = getelementptr inbounds i8, i8* %0, i32 %16, !dbg !153
  store i8 %14, i8* %17, align 1, !dbg !154, !tbaa !57
  %18 = lshr i32 %2, 24, !dbg !155
  %19 = trunc i32 %18 to i8, !dbg !156
  %20 = zext i16 %15 to i32, !dbg !157
  %21 = getelementptr inbounds i8, i8* %0, i32 %20, !dbg !157
  store i8 %19, i8* %21, align 1, !dbg !158, !tbaa !57
  ret void, !dbg !159
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @big_endian_read_16(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %1, metadata !163, metadata !DIExpression()), !dbg !165
  %3 = add nsw i32 %1, 1, !dbg !166
  %4 = getelementptr inbounds i8, i8* %0, i32 %3, !dbg !167
  %5 = load i8, i8* %4, align 1, !dbg !167, !tbaa !57
  %6 = zext i8 %5 to i32, !dbg !168
  %7 = getelementptr inbounds i8, i8* %0, i32 %1, !dbg !169
  %8 = load i8, i8* %7, align 1, !dbg !169, !tbaa !57
  %9 = zext i8 %8 to i32, !dbg !170
  %10 = shl nuw nsw i32 %9, 8, !dbg !171
  %11 = or i32 %10, %6, !dbg !172
  ret i32 %11, !dbg !173
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @big_endian_read_32(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !176, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %1, metadata !177, metadata !DIExpression()), !dbg !179
  %3 = add nsw i32 %1, 3, !dbg !180
  %4 = getelementptr inbounds i8, i8* %0, i32 %3, !dbg !181
  %5 = load i8, i8* %4, align 1, !dbg !181, !tbaa !57
  %6 = zext i8 %5 to i32, !dbg !182
  %7 = add nsw i32 %1, 2, !dbg !183
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !184
  %9 = load i8, i8* %8, align 1, !dbg !184, !tbaa !57
  %10 = zext i8 %9 to i32, !dbg !185
  %11 = shl nuw nsw i32 %10, 8, !dbg !186
  %12 = or i32 %11, %6, !dbg !187
  %13 = add nsw i32 %1, 1, !dbg !188
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !189
  %15 = load i8, i8* %14, align 1, !dbg !189, !tbaa !57
  %16 = zext i8 %15 to i32, !dbg !190
  %17 = shl nuw nsw i32 %16, 16, !dbg !191
  %18 = or i32 %12, %17, !dbg !192
  %19 = getelementptr inbounds i8, i8* %0, i32 %1, !dbg !193
  %20 = load i8, i8* %19, align 1, !dbg !193, !tbaa !57
  %21 = zext i8 %20 to i32, !dbg !194
  %22 = shl nuw i32 %21, 24, !dbg !195
  %23 = or i32 %18, %22, !dbg !196
  ret i32 %23, !dbg !197
}

; Function Attrs: nounwind optsize
define hidden void @big_endian_store_16(i8* nocapture, i16 zeroext, i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i16 %1, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i16 %2, metadata !202, metadata !DIExpression()), !dbg !205
  %4 = lshr i16 %2, 8, !dbg !206
  %5 = trunc i16 %4 to i8, !dbg !206
  %6 = add i16 %1, 1, !dbg !207
  call void @llvm.dbg.value(metadata i16 %6, metadata !201, metadata !DIExpression()), !dbg !204
  %7 = zext i16 %1 to i32, !dbg !208
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !208
  store i8 %5, i8* %8, align 1, !dbg !209, !tbaa !57
  %9 = trunc i16 %2 to i8, !dbg !210
  %10 = zext i16 %6 to i32, !dbg !211
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !211
  store i8 %9, i8* %11, align 1, !dbg !212, !tbaa !57
  ret void, !dbg !213
}

; Function Attrs: nounwind optsize
define hidden void @big_endian_store_32(i8* nocapture, i16 zeroext, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i16 %1, metadata !217, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 %2, metadata !218, metadata !DIExpression()), !dbg !221
  %4 = lshr i32 %2, 24, !dbg !222
  %5 = trunc i32 %4 to i8, !dbg !223
  %6 = add i16 %1, 1, !dbg !224
  call void @llvm.dbg.value(metadata i16 %6, metadata !217, metadata !DIExpression()), !dbg !220
  %7 = zext i16 %1 to i32, !dbg !225
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !225
  store i8 %5, i8* %8, align 1, !dbg !226, !tbaa !57
  %9 = lshr i32 %2, 16, !dbg !227
  %10 = trunc i32 %9 to i8, !dbg !228
  %11 = add i16 %1, 2, !dbg !229
  call void @llvm.dbg.value(metadata i16 %11, metadata !217, metadata !DIExpression()), !dbg !220
  %12 = zext i16 %6 to i32, !dbg !230
  %13 = getelementptr inbounds i8, i8* %0, i32 %12, !dbg !230
  store i8 %10, i8* %13, align 1, !dbg !231, !tbaa !57
  %14 = lshr i32 %2, 8, !dbg !232
  %15 = trunc i32 %14 to i8, !dbg !233
  %16 = add i16 %1, 3, !dbg !234
  call void @llvm.dbg.value(metadata i16 %16, metadata !217, metadata !DIExpression()), !dbg !220
  %17 = zext i16 %11 to i32, !dbg !235
  %18 = getelementptr inbounds i8, i8* %0, i32 %17, !dbg !235
  store i8 %15, i8* %18, align 1, !dbg !236, !tbaa !57
  %19 = trunc i32 %2 to i8, !dbg !237
  %20 = zext i16 %16 to i32, !dbg !238
  %21 = getelementptr inbounds i8, i8* %0, i32 %20, !dbg !238
  store i8 %19, i8* %21, align 1, !dbg !239, !tbaa !57
  ret void, !dbg !240
}

; Function Attrs: nounwind optsize
define hidden void @reverse_bytes(i8* nocapture readonly, i8* nocapture, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !241 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 %2, metadata !247, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !252
  %4 = icmp sgt i32 %2, 0, !dbg !253
  br i1 %4, label %5, label %16, !dbg !257

; <label>:5:                                      ; preds = %3
  %6 = add nsw i32 %2, -1
  br label %7, !dbg !257

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !259
  %10 = load i8, i8* %9, align 1, !dbg !259, !tbaa !57
  %11 = sub i32 %6, %8, !dbg !261
  %12 = getelementptr inbounds i8, i8* %1, i32 %11, !dbg !262
  store i8 %10, i8* %12, align 1, !dbg !263, !tbaa !57
  %13 = add nuw nsw i32 %8, 1, !dbg !264
  call void @llvm.dbg.value(metadata i32 %13, metadata !248, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 %13, metadata !248, metadata !DIExpression()), !dbg !252
  %14 = icmp eq i32 %13, %2, !dbg !253
  br i1 %14, label %15, label %7, !dbg !257, !llvm.loop !266

; <label>:15:                                     ; preds = %7
  br label %16, !dbg !269

; <label>:16:                                     ; preds = %15, %3
  ret void, !dbg !269
}

; Function Attrs: nounwind optsize
define hidden void @reverse_24(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8* %1, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 3, metadata !247, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !282
  br label %3, !dbg !283

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !284
  %6 = load i8, i8* %5, align 1, !dbg !284, !tbaa !57
  %7 = sub nuw nsw i32 2, %4, !dbg !285
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !286
  store i8 %6, i8* %8, align 1, !dbg !287, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !288
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !282
  %10 = icmp eq i32 %9, 3, !dbg !289
  br i1 %10, label %11, label %3, !dbg !283, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !290
}

; Function Attrs: nounwind optsize
define hidden void @reverse_48(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !291 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %1, metadata !294, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 6, metadata !247, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !301
  br label %3, !dbg !302

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !303
  %6 = load i8, i8* %5, align 1, !dbg !303, !tbaa !57
  %7 = sub nuw nsw i32 5, %4, !dbg !304
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !305
  store i8 %6, i8* %8, align 1, !dbg !306, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !307
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !301
  %10 = icmp eq i32 %9, 6, !dbg !308
  br i1 %10, label %11, label %3, !dbg !302, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !309
}

; Function Attrs: nounwind optsize
define hidden void @reverse_56(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i8* %1, metadata !313, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 7, metadata !247, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !320
  br label %3, !dbg !321

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !322
  %6 = load i8, i8* %5, align 1, !dbg !322, !tbaa !57
  %7 = sub nuw nsw i32 6, %4, !dbg !323
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !324
  store i8 %6, i8* %8, align 1, !dbg !325, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !326
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !320
  %10 = icmp eq i32 %9, 7, !dbg !327
  br i1 %10, label %11, label %3, !dbg !321, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !328
}

; Function Attrs: nounwind optsize
define hidden void @reverse_64(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %1, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 8, metadata !247, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !339
  br label %3, !dbg !340

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !341
  %6 = load i8, i8* %5, align 1, !dbg !341, !tbaa !57
  %7 = sub nuw nsw i32 7, %4, !dbg !342
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !343
  store i8 %6, i8* %8, align 1, !dbg !344, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !345
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !339
  %10 = icmp eq i32 %9, 8, !dbg !346
  br i1 %10, label %11, label %3, !dbg !340, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !347
}

; Function Attrs: nounwind optsize
define hidden void @reverse_128(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i8* %1, metadata !351, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i32 16, metadata !247, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !358
  br label %3, !dbg !359

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !360
  %6 = load i8, i8* %5, align 1, !dbg !360, !tbaa !57
  %7 = sub nuw nsw i32 15, %4, !dbg !361
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !362
  store i8 %6, i8* %8, align 1, !dbg !363, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !364
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !358
  %10 = icmp eq i32 %9, 16, !dbg !365
  br i1 %10, label %11, label %3, !dbg !359, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !366
}

; Function Attrs: nounwind optsize
define hidden void @reverse_256(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %1, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 32, metadata !247, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !377
  br label %3, !dbg !378

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !379
  %6 = load i8, i8* %5, align 1, !dbg !379, !tbaa !57
  %7 = sub nuw nsw i32 31, %4, !dbg !380
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !381
  store i8 %6, i8* %8, align 1, !dbg !382, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !383
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !377
  %10 = icmp eq i32 %9, 32, !dbg !384
  br i1 %10, label %11, label %3, !dbg !378, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !385
}

; Function Attrs: nounwind optsize
define hidden void @reverse_bd_addr(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8* %1, metadata !389, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 6, metadata !247, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !396
  br label %3, !dbg !397

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !398
  %6 = load i8, i8* %5, align 1, !dbg !398, !tbaa !57
  %7 = sub nuw nsw i32 5, %4, !dbg !399
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !400
  store i8 %6, i8* %8, align 1, !dbg !401, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !402
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %9, metadata !248, metadata !DIExpression()), !dbg !396
  %10 = icmp eq i32 %9, 6, !dbg !403
  br i1 %10, label %11, label %3, !dbg !397, !llvm.loop !266

; <label>:11:                                     ; preds = %3
  ret void, !dbg !404
}

; Function Attrs: nounwind optsize
define hidden void @bt_store_16(i8* nocapture, i16 zeroext, i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !405 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !407, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i16 %1, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i16 %2, metadata !409, metadata !DIExpression()), !dbg !412
  %4 = trunc i16 %2 to i8, !dbg !413
  %5 = add i16 %1, 1, !dbg !414
  call void @llvm.dbg.value(metadata i16 %5, metadata !408, metadata !DIExpression()), !dbg !411
  %6 = zext i16 %1 to i32, !dbg !415
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !415
  store i8 %4, i8* %7, align 1, !dbg !416, !tbaa !57
  %8 = lshr i16 %2, 8, !dbg !417
  %9 = trunc i16 %8 to i8, !dbg !417
  %10 = zext i16 %5 to i32, !dbg !418
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !418
  store i8 %9, i8* %11, align 1, !dbg !419, !tbaa !57
  ret void, !dbg !420
}

; Function Attrs: nounwind optsize
define hidden void @bt_store_32(i8* nocapture, i16 zeroext, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !423, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i16 %1, metadata !424, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 %2, metadata !425, metadata !DIExpression()), !dbg !428
  %4 = trunc i32 %2 to i8, !dbg !429
  %5 = add i16 %1, 1, !dbg !430
  call void @llvm.dbg.value(metadata i16 %5, metadata !424, metadata !DIExpression()), !dbg !427
  %6 = zext i16 %1 to i32, !dbg !431
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !431
  store i8 %4, i8* %7, align 1, !dbg !432, !tbaa !57
  %8 = lshr i32 %2, 8, !dbg !433
  %9 = trunc i32 %8 to i8, !dbg !434
  %10 = add i16 %1, 2, !dbg !435
  call void @llvm.dbg.value(metadata i16 %10, metadata !424, metadata !DIExpression()), !dbg !427
  %11 = zext i16 %5 to i32, !dbg !436
  %12 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !436
  store i8 %9, i8* %12, align 1, !dbg !437, !tbaa !57
  %13 = lshr i32 %2, 16, !dbg !438
  %14 = trunc i32 %13 to i8, !dbg !439
  %15 = add i16 %1, 3, !dbg !440
  call void @llvm.dbg.value(metadata i16 %15, metadata !424, metadata !DIExpression()), !dbg !427
  %16 = zext i16 %10 to i32, !dbg !441
  %17 = getelementptr inbounds i8, i8* %0, i32 %16, !dbg !441
  store i8 %14, i8* %17, align 1, !dbg !442, !tbaa !57
  %18 = lshr i32 %2, 24, !dbg !443
  %19 = trunc i32 %18 to i8, !dbg !444
  %20 = zext i16 %15 to i32, !dbg !445
  %21 = getelementptr inbounds i8, i8* %0, i32 %20, !dbg !445
  store i8 %19, i8* %21, align 1, !dbg !446, !tbaa !57
  ret void, !dbg !447
}

; Function Attrs: nounwind optsize
define hidden void @net_store_16(i8* nocapture, i16 zeroext, i16 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !448 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i16 %1, metadata !451, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i16 %2, metadata !452, metadata !DIExpression()), !dbg !455
  %4 = lshr i16 %2, 8, !dbg !456
  %5 = trunc i16 %4 to i8, !dbg !456
  %6 = add i16 %1, 1, !dbg !457
  call void @llvm.dbg.value(metadata i16 %6, metadata !451, metadata !DIExpression()), !dbg !454
  %7 = zext i16 %1 to i32, !dbg !458
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !458
  store i8 %5, i8* %8, align 1, !dbg !459, !tbaa !57
  %9 = trunc i16 %2 to i8, !dbg !460
  %10 = zext i16 %6 to i32, !dbg !461
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !461
  store i8 %9, i8* %11, align 1, !dbg !462, !tbaa !57
  ret void, !dbg !463
}

; Function Attrs: nounwind optsize
define hidden void @net_store_32(i8* nocapture, i16 zeroext, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !466, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i16 %1, metadata !467, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i32 %2, metadata !468, metadata !DIExpression()), !dbg !471
  %4 = lshr i32 %2, 24, !dbg !472
  %5 = trunc i32 %4 to i8, !dbg !473
  %6 = add i16 %1, 1, !dbg !474
  call void @llvm.dbg.value(metadata i16 %6, metadata !467, metadata !DIExpression()), !dbg !470
  %7 = zext i16 %1 to i32, !dbg !475
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !475
  store i8 %5, i8* %8, align 1, !dbg !476, !tbaa !57
  %9 = lshr i32 %2, 16, !dbg !477
  %10 = trunc i32 %9 to i8, !dbg !478
  %11 = add i16 %1, 2, !dbg !479
  call void @llvm.dbg.value(metadata i16 %11, metadata !467, metadata !DIExpression()), !dbg !470
  %12 = zext i16 %6 to i32, !dbg !480
  %13 = getelementptr inbounds i8, i8* %0, i32 %12, !dbg !480
  store i8 %10, i8* %13, align 1, !dbg !481, !tbaa !57
  %14 = lshr i32 %2, 8, !dbg !482
  %15 = trunc i32 %14 to i8, !dbg !483
  %16 = add i16 %1, 3, !dbg !484
  call void @llvm.dbg.value(metadata i16 %16, metadata !467, metadata !DIExpression()), !dbg !470
  %17 = zext i16 %11 to i32, !dbg !485
  %18 = getelementptr inbounds i8, i8* %0, i32 %17, !dbg !485
  store i8 %15, i8* %18, align 1, !dbg !486, !tbaa !57
  %19 = trunc i32 %2 to i8, !dbg !487
  %20 = zext i16 %16 to i32, !dbg !488
  %21 = getelementptr inbounds i8, i8* %0, i32 %20, !dbg !488
  store i8 %19, i8* %21, align 1, !dbg !489, !tbaa !57
  ret void, !dbg !490
}

; Function Attrs: nounwind optsize
define hidden void @bt_flip_addr(i8* nocapture, i8* nocapture readonly) local_unnamed_addr #1 section ".bt_stack_code" !dbg !491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !495, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %1, metadata !496, metadata !DIExpression()), !dbg !498
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 6, i32 1, i1 false), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind optsize
define hidden void @swapX(i8* nocapture readonly, i8* nocapture, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %2, metadata !505, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !510
  %4 = icmp sgt i32 %2, 0, !dbg !511
  br i1 %4, label %5, label %16, !dbg !515

; <label>:5:                                      ; preds = %3
  %6 = add nsw i32 %2, -1
  br label %7, !dbg !515

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !517
  %10 = load i8, i8* %9, align 1, !dbg !517, !tbaa !57
  %11 = sub i32 %6, %8, !dbg !519
  %12 = getelementptr inbounds i8, i8* %1, i32 %11, !dbg !520
  store i8 %10, i8* %12, align 1, !dbg !521, !tbaa !57
  %13 = add nuw nsw i32 %8, 1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %13, metadata !506, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i32 %13, metadata !506, metadata !DIExpression()), !dbg !510
  %14 = icmp eq i32 %13, %2, !dbg !511
  br i1 %14, label %15, label %7, !dbg !515, !llvm.loop !524

; <label>:15:                                     ; preds = %7
  br label %16, !dbg !527

; <label>:16:                                     ; preds = %15, %3
  ret void, !dbg !527
}

; Function Attrs: nounwind optsize
define hidden void @swap24(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !530, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %1, metadata !531, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 3, metadata !505, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !538
  br label %3, !dbg !539

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !540
  %6 = load i8, i8* %5, align 1, !dbg !540, !tbaa !57
  %7 = sub nuw nsw i32 2, %4, !dbg !541
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !542
  store i8 %6, i8* %8, align 1, !dbg !543, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !544
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !538
  %10 = icmp eq i32 %9, 3, !dbg !545
  br i1 %10, label %11, label %3, !dbg !539, !llvm.loop !524

; <label>:11:                                     ; preds = %3
  ret void, !dbg !546
}

; Function Attrs: nounwind optsize
define hidden void @swap32(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !547 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !549, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i8* %1, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 4, metadata !505, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !557
  br label %3, !dbg !558

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !559
  %6 = load i8, i8* %5, align 1, !dbg !559, !tbaa !57
  %7 = sub nuw nsw i32 3, %4, !dbg !560
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !561
  store i8 %6, i8* %8, align 1, !dbg !562, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !563
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !557
  %10 = icmp eq i32 %9, 4, !dbg !564
  br i1 %10, label %11, label %3, !dbg !558, !llvm.loop !524

; <label>:11:                                     ; preds = %3
  ret void, !dbg !565
}

; Function Attrs: nounwind optsize
define hidden void @swap48(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i8* %1, metadata !569, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 6, metadata !505, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !576
  br label %3, !dbg !577

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !578
  %6 = load i8, i8* %5, align 1, !dbg !578, !tbaa !57
  %7 = sub nuw nsw i32 5, %4, !dbg !579
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !580
  store i8 %6, i8* %8, align 1, !dbg !581, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !582
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !576
  %10 = icmp eq i32 %9, 6, !dbg !583
  br i1 %10, label %11, label %3, !dbg !577, !llvm.loop !524

; <label>:11:                                     ; preds = %3
  ret void, !dbg !584
}

; Function Attrs: nounwind optsize
define hidden void @swap56(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !585 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !587, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i8* %1, metadata !588, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 7, metadata !505, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !595
  br label %3, !dbg !596

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !597
  %6 = load i8, i8* %5, align 1, !dbg !597, !tbaa !57
  %7 = sub nuw nsw i32 6, %4, !dbg !598
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !599
  store i8 %6, i8* %8, align 1, !dbg !600, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !595
  %10 = icmp eq i32 %9, 7, !dbg !602
  br i1 %10, label %11, label %3, !dbg !596, !llvm.loop !524

; <label>:11:                                     ; preds = %3
  ret void, !dbg !603
}

; Function Attrs: nounwind optsize
define hidden void @swap64(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i8* %1, metadata !607, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 8, metadata !505, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !614
  br label %3, !dbg !615

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !616
  %6 = load i8, i8* %5, align 1, !dbg !616, !tbaa !57
  %7 = sub nuw nsw i32 7, %4, !dbg !617
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !618
  store i8 %6, i8* %8, align 1, !dbg !619, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !620
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !614
  %10 = icmp eq i32 %9, 8, !dbg !621
  br i1 %10, label %11, label %3, !dbg !615, !llvm.loop !524

; <label>:11:                                     ; preds = %3
  ret void, !dbg !622
}

; Function Attrs: nounwind optsize
define hidden void @swap128(i8* nocapture readonly, i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !623 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !625, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i8* %1, metadata !626, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 16, metadata !505, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !633
  br label %3, !dbg !634

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !635
  %6 = load i8, i8* %5, align 1, !dbg !635, !tbaa !57
  %7 = sub nuw nsw i32 15, %4, !dbg !636
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !637
  store i8 %6, i8* %8, align 1, !dbg !638, !tbaa !57
  %9 = add nuw nsw i32 %4, 1, !dbg !639
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 %9, metadata !506, metadata !DIExpression()), !dbg !633
  %10 = icmp eq i32 %9, 16, !dbg !640
  br i1 %10, label %11, label %3, !dbg !634, !llvm.loop !524

; <label>:11:                                     ; preds = %3
  ret void, !dbg !641
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @btstack_min(i32, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !642 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !646, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %1, metadata !647, metadata !DIExpression()), !dbg !649
  %3 = icmp ult i32 %0, %1, !dbg !650
  %4 = select i1 %3, i32 %0, i32 %1, !dbg !651
  ret i32 %4, !dbg !652
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @btstack_max(i32, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !654 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i32 %1, metadata !657, metadata !DIExpression()), !dbg !659
  %3 = icmp ugt i32 %0, %1, !dbg !660
  %4 = select i1 %3, i32 %0, i32 %1, !dbg !661
  ret i32 %4, !dbg !662
}

; Function Attrs: nounwind optsize readnone
define hidden signext i8 @char_for_nibble(i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !668, metadata !DIExpression()), !dbg !669
  %2 = icmp slt i32 %0, 10, !dbg !670
  br i1 %2, label %3, label %6, !dbg !672

; <label>:3:                                      ; preds = %1
  %4 = add nsw i32 %0, 48, !dbg !673
  %5 = trunc i32 %4 to i8, !dbg !675
  br label %12, !dbg !676

; <label>:6:                                      ; preds = %1
  %7 = add nsw i32 %0, -10, !dbg !677
  call void @llvm.dbg.value(metadata i32 %7, metadata !668, metadata !DIExpression()), !dbg !669
  %8 = icmp slt i32 %7, 6, !dbg !678
  br i1 %8, label %9, label %12, !dbg !680

; <label>:9:                                      ; preds = %6
  %10 = add nsw i32 %0, 55, !dbg !681
  %11 = trunc i32 %10 to i8, !dbg !683
  br label %12, !dbg !684

; <label>:12:                                     ; preds = %9, %6, %3
  %13 = phi i8 [ %5, %3 ], [ %11, %9 ], [ 63, %6 ]
  ret i8 %13, !dbg !685
}

; Function Attrs: nounwind optsize readnone
define hidden void @printf_hexdump(i8* nocapture, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !692, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 %1, metadata !693, metadata !DIExpression()), !dbg !695
  ret void, !dbg !696
}

; Function Attrs: nounwind optsize readnone
define hidden void @log_info_hexdump(i8* nocapture, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !699, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i32 %1, metadata !700, metadata !DIExpression()), !dbg !702
  ret void, !dbg !703
}

; Function Attrs: nounwind optsize readnone
define hidden void @hexdump(i8* nocapture, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !704 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %1, metadata !707, metadata !DIExpression()), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: nounwind optsize readnone
define hidden void @hexdumpf(i8* nocapture, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !713, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i32 %1, metadata !714, metadata !DIExpression()), !dbg !716
  ret void, !dbg !717
}

; Function Attrs: nounwind optsize readnone
define hidden void @log_key(i8* nocapture, i8* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !718 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !724, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8* %1, metadata !725, metadata !DIExpression()), !dbg !727
  ret void, !dbg !728
}

; Function Attrs: nounwind optsize
define hidden void @uuid_add_bluetooth_prefix(i8* nocapture, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !733, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 %1, metadata !734, metadata !DIExpression()), !dbg !736
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @utl_bluetooth_base_uuid, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !737
  call void @llvm.dbg.value(metadata i8* %0, metadata !216, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i16 0, metadata !217, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %1, metadata !218, metadata !DIExpression()), !dbg !741
  %3 = lshr i32 %1, 24, !dbg !742
  %4 = trunc i32 %3 to i8, !dbg !743
  call void @llvm.dbg.value(metadata i16 1, metadata !217, metadata !DIExpression()), !dbg !740
  store i8 %4, i8* %0, align 1, !dbg !744, !tbaa !57
  %5 = lshr i32 %1, 16, !dbg !745
  %6 = trunc i32 %5 to i8, !dbg !746
  call void @llvm.dbg.value(metadata i16 2, metadata !217, metadata !DIExpression()), !dbg !740
  %7 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !747
  store i8 %6, i8* %7, align 1, !dbg !748, !tbaa !57
  %8 = lshr i32 %1, 8, !dbg !749
  %9 = trunc i32 %8 to i8, !dbg !750
  call void @llvm.dbg.value(metadata i16 3, metadata !217, metadata !DIExpression()), !dbg !740
  %10 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !751
  store i8 %9, i8* %10, align 1, !dbg !752, !tbaa !57
  %11 = trunc i32 %1 to i8, !dbg !753
  %12 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !754
  store i8 %11, i8* %12, align 1, !dbg !755, !tbaa !57
  ret void, !dbg !756
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @uuid_has_bluetooth_prefix(i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !761, metadata !DIExpression()), !dbg !762
  %2 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !763
  %3 = tail call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @utl_bluetooth_base_uuid, i32 0, i32 4), i32 12) #6, !dbg !764
  %4 = icmp eq i32 %3, 0, !dbg !765
  %5 = zext i1 %4 to i32, !dbg !765
  ret i32 %5, !dbg !766
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i8* @bd_addr_to_str(i8* nocapture readonly) local_unnamed_addr #1 section ".bt_stack_code" !dbg !767 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !771, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @utl_bd_addr_to_str_buffer, i32 0, i32 0), metadata !772, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32 0, metadata !773, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 0, metadata !773, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @utl_bd_addr_to_str_buffer, i32 0, i32 0), metadata !772, metadata !DIExpression()), !dbg !775
  br label %2, !dbg !777

; <label>:2:                                      ; preds = %33, %1
  %3 = phi i32 [ 0, %1 ], [ %37, %33 ]
  %4 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @utl_bd_addr_to_str_buffer, i32 0, i32 0), %1 ], [ %36, %33 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %3, !dbg !780
  %6 = load i8, i8* %5, align 1, !dbg !780, !tbaa !57
  %7 = zext i8 %6 to i32, !dbg !780
  %8 = lshr i32 %7, 4, !dbg !783
  call void @llvm.dbg.value(metadata i32 %8, metadata !668, metadata !DIExpression()), !dbg !784
  %9 = icmp ult i8 %6, -96, !dbg !786
  br i1 %9, label %10, label %13, !dbg !787

; <label>:10:                                     ; preds = %2
  %11 = trunc i32 %8 to i8, !dbg !788
  %12 = or i8 %11, 48, !dbg !788
  br label %19, !dbg !789

; <label>:13:                                     ; preds = %2
  %14 = add nsw i32 %8, -10, !dbg !790
  call void @llvm.dbg.value(metadata i32 %14, metadata !668, metadata !DIExpression()), !dbg !784
  %15 = icmp slt i32 %14, 6, !dbg !791
  br i1 %15, label %16, label %19, !dbg !792

; <label>:16:                                     ; preds = %13
  %17 = add nuw nsw i32 %8, 55, !dbg !793
  %18 = trunc i32 %17 to i8, !dbg !794
  br label %19, !dbg !795

; <label>:19:                                     ; preds = %16, %13, %10
  %20 = phi i8 [ %12, %10 ], [ %18, %16 ], [ 63, %13 ]
  %21 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !796
  call void @llvm.dbg.value(metadata i8* %21, metadata !772, metadata !DIExpression()), !dbg !775
  store i8 %20, i8* %4, align 1, !dbg !797, !tbaa !57
  %22 = load i8, i8* %5, align 1, !dbg !798, !tbaa !57
  %23 = and i8 %22, 15, !dbg !799
  call void @llvm.dbg.value(metadata i32 %28, metadata !668, metadata !DIExpression()), !dbg !800
  %24 = icmp ult i8 %23, 10, !dbg !802
  br i1 %24, label %25, label %27, !dbg !803

; <label>:25:                                     ; preds = %19
  %26 = or i8 %23, 48, !dbg !804
  br label %33, !dbg !805

; <label>:27:                                     ; preds = %19
  %28 = zext i8 %23 to i32, !dbg !799
  %29 = add nsw i32 %28, -10, !dbg !806
  call void @llvm.dbg.value(metadata i32 %29, metadata !668, metadata !DIExpression()), !dbg !800
  %30 = icmp slt i32 %29, 6, !dbg !807
  %31 = add nuw nsw i8 %23, 55, !dbg !808
  %32 = select i1 %30, i8 %31, i8 63, !dbg !809
  br label %33, !dbg !809

; <label>:33:                                     ; preds = %27, %25
  %34 = phi i8 [ %26, %25 ], [ %32, %27 ]
  %35 = getelementptr inbounds i8, i8* %4, i32 2, !dbg !810
  call void @llvm.dbg.value(metadata i8* %35, metadata !772, metadata !DIExpression()), !dbg !775
  store i8 %34, i8* %21, align 1, !dbg !811, !tbaa !57
  %36 = getelementptr inbounds i8, i8* %4, i32 3, !dbg !812
  call void @llvm.dbg.value(metadata i8* %36, metadata !772, metadata !DIExpression()), !dbg !775
  store i8 58, i8* %35, align 1, !dbg !813, !tbaa !57
  %37 = add nuw nsw i32 %3, 1, !dbg !814
  call void @llvm.dbg.value(metadata i32 %37, metadata !773, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 %37, metadata !773, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8* %36, metadata !772, metadata !DIExpression()), !dbg !775
  %38 = icmp eq i32 %37, 6, !dbg !816
  br i1 %38, label %39, label %2, !dbg !777, !llvm.loop !818

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @utl_bd_addr_to_str_buffer, i32 0, i32 17), metadata !772, metadata !DIExpression()), !dbg !775
  store i8 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @utl_bd_addr_to_str_buffer, i32 0, i32 17), align 1, !dbg !821, !tbaa !57
  ret i8* getelementptr inbounds ([18 x i8], [18 x i8]* @utl_bd_addr_to_str_buffer, i32 0, i32 0), !dbg !822
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @is_authenticated_link_key(i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !823 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !828, metadata !DIExpression()), !dbg !829
  switch i32 %0, label %2 [
    i32 0, label %3
    i32 5, label %3
    i32 8, label %3
  ], !dbg !830

; <label>:2:                                      ; preds = %1
  br label %3, !dbg !831

; <label>:3:                                      ; preds = %2, %1, %1, %1
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4, !dbg !833
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @crc8(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !834 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !838, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i16 %1, metadata !839, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i8 -1, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i16 0, metadata !840, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8 -1, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i16 0, metadata !840, metadata !DIExpression()), !dbg !845
  %3 = icmp eq i16 %1, 0, !dbg !846
  br i1 %3, label %18, label %4, !dbg !850

; <label>:4:                                      ; preds = %2
  %5 = zext i16 %1 to i32
  br label %6, !dbg !852

; <label>:6:                                      ; preds = %6, %4
  %7 = phi i32 [ %15, %6 ], [ 0, %4 ]
  %8 = phi i8 [ %14, %6 ], [ -1, %4 ]
  %9 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !852
  %10 = load i8, i8* %9, align 1, !dbg !852, !tbaa !57
  %11 = xor i8 %10, %8, !dbg !854
  %12 = zext i8 %11 to i32, !dbg !854
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @utl_crc8table, i32 0, i32 %12, !dbg !855
  %14 = load i8, i8* %13, align 1, !dbg !855, !tbaa !57
  call void @llvm.dbg.value(metadata i8 %14, metadata !841, metadata !DIExpression()), !dbg !844
  %15 = add nuw nsw i32 %7, 1, !dbg !856
  call void @llvm.dbg.value(metadata i8 %14, metadata !841, metadata !DIExpression()), !dbg !844
  %16 = icmp eq i32 %15, %5, !dbg !846
  br i1 %16, label %17, label %6, !dbg !850, !llvm.loop !858

; <label>:17:                                     ; preds = %6
  br label %18, !dbg !861

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i8 [ -1, %2 ], [ %14, %17 ]
  ret i8 %19, !dbg !861
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @crc8_check(i8* nocapture readonly, i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !866, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i16 %1, metadata !867, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i8 %2, metadata !868, metadata !DIExpression()), !dbg !872
  %4 = tail call zeroext i8 @crc8(i8* %0, i16 zeroext %1) #6, !dbg !873
  call void @llvm.dbg.value(metadata i8 %4, metadata !869, metadata !DIExpression()), !dbg !874
  %5 = xor i8 %4, %2, !dbg !875
  %6 = icmp ne i8 %5, -1, !dbg !876
  %7 = zext i1 %6 to i8, !dbg !876
  ret i8 %7, !dbg !879
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @crc8_calc(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !882, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i16 %1, metadata !883, metadata !DIExpression()), !dbg !885
  %3 = tail call zeroext i8 @crc8(i8* %0, i16 zeroext %1) #6, !dbg !886
  %4 = xor i8 %3, -1, !dbg !887
  ret i8 %4, !dbg !888
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "utl_bluetooth_base_uuid", scope: !2, file: !28, line: 371, type: !40, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !25)
!3 = !DIFile(filename: "../btcommon/utils.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 75, size: 32, elements: !7)
!6 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16}
!8 = !DIEnumerator(name: "COMBINATION_KEY", value: 0)
!9 = !DIEnumerator(name: "LOCAL_UNIT_KEY", value: 1)
!10 = !DIEnumerator(name: "REMOTE_UNIT_KEY", value: 2)
!11 = !DIEnumerator(name: "DEBUG_COMBINATION_KEY", value: 3)
!12 = !DIEnumerator(name: "UNAUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P192", value: 4)
!13 = !DIEnumerator(name: "AUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P192", value: 5)
!14 = !DIEnumerator(name: "CHANGED_COMBINATION_KEY", value: 6)
!15 = !DIEnumerator(name: "UNAUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P256", value: 7)
!16 = !DIEnumerator(name: "AUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P256", value: 8)
!17 = !{!18, !21, !23}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 48, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!0, !26, !32}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "utl_bd_addr_to_str_buffer", scope: !2, file: !28, line: 401, type: !29, isLocal: true, isDefinition: true)
!28 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/utils.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 144, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 18)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "utl_crc8table", scope: !2, file: !28, line: 512, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !38)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 44, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39}
!39 = !DISubrange(count: 256)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 16)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!46 = distinct !DISubprogram(name: "little_endian_read_16", scope: !28, file: !28, line: 68, type: !47, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !51)
!47 = !DISubroutineType(types: !48)
!48 = !{!18, !49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "buffer", arg: 1, scope: !46, file: !28, line: 68, type: !49)
!53 = !DILocalVariable(name: "pos", arg: 2, scope: !46, file: !28, line: 68, type: !50)
!54 = !DILocation(line: 68, column: 47, scope: !46)
!55 = !DILocation(line: 68, column: 59, scope: !46)
!56 = !DILocation(line: 70, column: 24, scope: !46)
!57 = !{!58, !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 70, column: 12, scope: !46)
!61 = !DILocation(line: 70, column: 64, scope: !46)
!62 = !DILocation(line: 70, column: 51, scope: !46)
!63 = !DILocation(line: 70, column: 40, scope: !46)
!64 = !DILocation(line: 70, column: 70, scope: !46)
!65 = !DILocation(line: 70, column: 37, scope: !46)
!66 = !DILocation(line: 70, column: 5, scope: !46)
!67 = distinct !DISubprogram(name: "little_endian_read_24", scope: !28, file: !28, line: 72, type: !68, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!21, !49, !50}
!70 = !{!71, !72}
!71 = !DILocalVariable(name: "buffer", arg: 1, scope: !67, file: !28, line: 72, type: !49)
!72 = !DILocalVariable(name: "pos", arg: 2, scope: !67, file: !28, line: 72, type: !50)
!73 = !DILocation(line: 72, column: 47, scope: !67)
!74 = !DILocation(line: 72, column: 59, scope: !67)
!75 = !DILocation(line: 74, column: 24, scope: !67)
!76 = !DILocation(line: 74, column: 13, scope: !67)
!77 = !DILocation(line: 74, column: 64, scope: !67)
!78 = !DILocation(line: 74, column: 51, scope: !67)
!79 = !DILocation(line: 74, column: 41, scope: !67)
!80 = !DILocation(line: 74, column: 70, scope: !67)
!81 = !DILocation(line: 74, column: 37, scope: !67)
!82 = !DILocation(line: 74, column: 103, scope: !67)
!83 = !DILocation(line: 74, column: 90, scope: !67)
!84 = !DILocation(line: 74, column: 80, scope: !67)
!85 = !DILocation(line: 74, column: 109, scope: !67)
!86 = !DILocation(line: 74, column: 76, scope: !67)
!87 = !DILocation(line: 74, column: 5, scope: !67)
!88 = distinct !DISubprogram(name: "little_endian_read_32", scope: !28, file: !28, line: 76, type: !68, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !89)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "buffer", arg: 1, scope: !88, file: !28, line: 76, type: !49)
!91 = !DILocalVariable(name: "pos", arg: 2, scope: !88, file: !28, line: 76, type: !50)
!92 = !DILocation(line: 76, column: 47, scope: !88)
!93 = !DILocation(line: 76, column: 59, scope: !88)
!94 = !DILocation(line: 78, column: 24, scope: !88)
!95 = !DILocation(line: 78, column: 13, scope: !88)
!96 = !DILocation(line: 78, column: 64, scope: !88)
!97 = !DILocation(line: 78, column: 51, scope: !88)
!98 = !DILocation(line: 78, column: 41, scope: !88)
!99 = !DILocation(line: 78, column: 70, scope: !88)
!100 = !DILocation(line: 78, column: 37, scope: !88)
!101 = !DILocation(line: 78, column: 103, scope: !88)
!102 = !DILocation(line: 78, column: 90, scope: !88)
!103 = !DILocation(line: 78, column: 80, scope: !88)
!104 = !DILocation(line: 78, column: 109, scope: !88)
!105 = !DILocation(line: 78, column: 76, scope: !88)
!106 = !DILocation(line: 78, column: 144, scope: !88)
!107 = !DILocation(line: 78, column: 131, scope: !88)
!108 = !DILocation(line: 78, column: 120, scope: !88)
!109 = !DILocation(line: 78, column: 150, scope: !88)
!110 = !DILocation(line: 78, column: 116, scope: !88)
!111 = !DILocation(line: 78, column: 5, scope: !88)
!112 = distinct !DISubprogram(name: "little_endian_store_16", scope: !28, file: !28, line: 81, type: !113, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !18, !18}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!116 = !{!117, !118, !119}
!117 = !DILocalVariable(name: "buffer", arg: 1, scope: !112, file: !28, line: 81, type: !115)
!118 = !DILocalVariable(name: "pos", arg: 2, scope: !112, file: !28, line: 81, type: !18)
!119 = !DILocalVariable(name: "value", arg: 3, scope: !112, file: !28, line: 81, type: !18)
!120 = !DILocation(line: 81, column: 38, scope: !112)
!121 = !DILocation(line: 81, column: 55, scope: !112)
!122 = !DILocation(line: 81, column: 69, scope: !112)
!123 = !DILocation(line: 83, column: 21, scope: !112)
!124 = !DILocation(line: 83, column: 15, scope: !112)
!125 = !DILocation(line: 83, column: 5, scope: !112)
!126 = !DILocation(line: 83, column: 19, scope: !112)
!127 = !DILocation(line: 84, column: 21, scope: !112)
!128 = !DILocation(line: 84, column: 5, scope: !112)
!129 = !DILocation(line: 84, column: 19, scope: !112)
!130 = !DILocation(line: 85, column: 1, scope: !112)
!131 = distinct !DISubprogram(name: "little_endian_store_32", scope: !28, file: !28, line: 87, type: !132, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !115, !18, !21}
!134 = !{!135, !136, !137}
!135 = !DILocalVariable(name: "buffer", arg: 1, scope: !131, file: !28, line: 87, type: !115)
!136 = !DILocalVariable(name: "pos", arg: 2, scope: !131, file: !28, line: 87, type: !18)
!137 = !DILocalVariable(name: "value", arg: 3, scope: !131, file: !28, line: 87, type: !21)
!138 = !DILocation(line: 87, column: 38, scope: !131)
!139 = !DILocation(line: 87, column: 55, scope: !131)
!140 = !DILocation(line: 87, column: 69, scope: !131)
!141 = !DILocation(line: 89, column: 21, scope: !131)
!142 = !DILocation(line: 89, column: 15, scope: !131)
!143 = !DILocation(line: 89, column: 5, scope: !131)
!144 = !DILocation(line: 89, column: 19, scope: !131)
!145 = !DILocation(line: 90, column: 27, scope: !131)
!146 = !DILocation(line: 90, column: 21, scope: !131)
!147 = !DILocation(line: 90, column: 15, scope: !131)
!148 = !DILocation(line: 90, column: 5, scope: !131)
!149 = !DILocation(line: 90, column: 19, scope: !131)
!150 = !DILocation(line: 91, column: 27, scope: !131)
!151 = !DILocation(line: 91, column: 21, scope: !131)
!152 = !DILocation(line: 91, column: 15, scope: !131)
!153 = !DILocation(line: 91, column: 5, scope: !131)
!154 = !DILocation(line: 91, column: 19, scope: !131)
!155 = !DILocation(line: 92, column: 27, scope: !131)
!156 = !DILocation(line: 92, column: 21, scope: !131)
!157 = !DILocation(line: 92, column: 5, scope: !131)
!158 = !DILocation(line: 92, column: 19, scope: !131)
!159 = !DILocation(line: 93, column: 1, scope: !131)
!160 = distinct !DISubprogram(name: "big_endian_read_16", scope: !28, file: !28, line: 95, type: !68, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "buffer", arg: 1, scope: !160, file: !28, line: 95, type: !49)
!163 = !DILocalVariable(name: "pos", arg: 2, scope: !160, file: !28, line: 95, type: !50)
!164 = !DILocation(line: 95, column: 44, scope: !160)
!165 = !DILocation(line: 95, column: 56, scope: !160)
!166 = !DILocation(line: 97, column: 37, scope: !160)
!167 = !DILocation(line: 97, column: 24, scope: !160)
!168 = !DILocation(line: 97, column: 12, scope: !160)
!169 = !DILocation(line: 97, column: 57, scope: !160)
!170 = !DILocation(line: 97, column: 46, scope: !160)
!171 = !DILocation(line: 97, column: 74, scope: !160)
!172 = !DILocation(line: 97, column: 43, scope: !160)
!173 = !DILocation(line: 97, column: 5, scope: !160)
!174 = distinct !DISubprogram(name: "big_endian_read_32", scope: !28, file: !28, line: 100, type: !68, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!175 = !{!176, !177}
!176 = !DILocalVariable(name: "buffer", arg: 1, scope: !174, file: !28, line: 100, type: !49)
!177 = !DILocalVariable(name: "pos", arg: 2, scope: !174, file: !28, line: 100, type: !50)
!178 = !DILocation(line: 100, column: 44, scope: !174)
!179 = !DILocation(line: 100, column: 56, scope: !174)
!180 = !DILocation(line: 102, column: 37, scope: !174)
!181 = !DILocation(line: 102, column: 24, scope: !174)
!182 = !DILocation(line: 102, column: 13, scope: !174)
!183 = !DILocation(line: 102, column: 70, scope: !174)
!184 = !DILocation(line: 102, column: 57, scope: !174)
!185 = !DILocation(line: 102, column: 47, scope: !174)
!186 = !DILocation(line: 102, column: 76, scope: !174)
!187 = !DILocation(line: 102, column: 43, scope: !174)
!188 = !DILocation(line: 102, column: 109, scope: !174)
!189 = !DILocation(line: 102, column: 96, scope: !174)
!190 = !DILocation(line: 102, column: 86, scope: !174)
!191 = !DILocation(line: 102, column: 115, scope: !174)
!192 = !DILocation(line: 102, column: 82, scope: !174)
!193 = !DILocation(line: 102, column: 137, scope: !174)
!194 = !DILocation(line: 102, column: 126, scope: !174)
!195 = !DILocation(line: 102, column: 150, scope: !174)
!196 = !DILocation(line: 102, column: 122, scope: !174)
!197 = !DILocation(line: 102, column: 5, scope: !174)
!198 = distinct !DISubprogram(name: "big_endian_store_16", scope: !28, file: !28, line: 105, type: !113, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !199)
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(name: "buffer", arg: 1, scope: !198, file: !28, line: 105, type: !115)
!201 = !DILocalVariable(name: "pos", arg: 2, scope: !198, file: !28, line: 105, type: !18)
!202 = !DILocalVariable(name: "value", arg: 3, scope: !198, file: !28, line: 105, type: !18)
!203 = !DILocation(line: 105, column: 35, scope: !198)
!204 = !DILocation(line: 105, column: 52, scope: !198)
!205 = !DILocation(line: 105, column: 66, scope: !198)
!206 = !DILocation(line: 107, column: 21, scope: !198)
!207 = !DILocation(line: 107, column: 15, scope: !198)
!208 = !DILocation(line: 107, column: 5, scope: !198)
!209 = !DILocation(line: 107, column: 19, scope: !198)
!210 = !DILocation(line: 108, column: 21, scope: !198)
!211 = !DILocation(line: 108, column: 5, scope: !198)
!212 = !DILocation(line: 108, column: 19, scope: !198)
!213 = !DILocation(line: 109, column: 1, scope: !198)
!214 = distinct !DISubprogram(name: "big_endian_store_32", scope: !28, file: !28, line: 111, type: !132, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !215)
!215 = !{!216, !217, !218}
!216 = !DILocalVariable(name: "buffer", arg: 1, scope: !214, file: !28, line: 111, type: !115)
!217 = !DILocalVariable(name: "pos", arg: 2, scope: !214, file: !28, line: 111, type: !18)
!218 = !DILocalVariable(name: "value", arg: 3, scope: !214, file: !28, line: 111, type: !21)
!219 = !DILocation(line: 111, column: 35, scope: !214)
!220 = !DILocation(line: 111, column: 52, scope: !214)
!221 = !DILocation(line: 111, column: 66, scope: !214)
!222 = !DILocation(line: 113, column: 27, scope: !214)
!223 = !DILocation(line: 113, column: 21, scope: !214)
!224 = !DILocation(line: 113, column: 15, scope: !214)
!225 = !DILocation(line: 113, column: 5, scope: !214)
!226 = !DILocation(line: 113, column: 19, scope: !214)
!227 = !DILocation(line: 114, column: 27, scope: !214)
!228 = !DILocation(line: 114, column: 21, scope: !214)
!229 = !DILocation(line: 114, column: 15, scope: !214)
!230 = !DILocation(line: 114, column: 5, scope: !214)
!231 = !DILocation(line: 114, column: 19, scope: !214)
!232 = !DILocation(line: 115, column: 27, scope: !214)
!233 = !DILocation(line: 115, column: 21, scope: !214)
!234 = !DILocation(line: 115, column: 15, scope: !214)
!235 = !DILocation(line: 115, column: 5, scope: !214)
!236 = !DILocation(line: 115, column: 19, scope: !214)
!237 = !DILocation(line: 116, column: 21, scope: !214)
!238 = !DILocation(line: 116, column: 5, scope: !214)
!239 = !DILocation(line: 116, column: 19, scope: !214)
!240 = !DILocation(line: 117, column: 1, scope: !214)
!241 = distinct !DISubprogram(name: "reverse_bytes", scope: !28, file: !28, line: 120, type: !242, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !49, !115, !50}
!244 = !{!245, !246, !247, !248}
!245 = !DILocalVariable(name: "src", arg: 1, scope: !241, file: !28, line: 120, type: !49)
!246 = !DILocalVariable(name: "dst", arg: 2, scope: !241, file: !28, line: 120, type: !115)
!247 = !DILocalVariable(name: "len", arg: 3, scope: !241, file: !28, line: 120, type: !50)
!248 = !DILocalVariable(name: "i", scope: !241, file: !28, line: 122, type: !50)
!249 = !DILocation(line: 120, column: 35, scope: !241)
!250 = !DILocation(line: 120, column: 49, scope: !241)
!251 = !DILocation(line: 120, column: 58, scope: !241)
!252 = !DILocation(line: 122, column: 9, scope: !241)
!253 = !DILocation(line: 123, column: 19, scope: !254)
!254 = !DILexicalBlockFile(scope: !255, file: !28, discriminator: 1)
!255 = distinct !DILexicalBlock(scope: !256, file: !28, line: 123, column: 5)
!256 = distinct !DILexicalBlock(scope: !241, file: !28, line: 123, column: 5)
!257 = !DILocation(line: 123, column: 5, scope: !258)
!258 = !DILexicalBlockFile(scope: !256, file: !28, discriminator: 1)
!259 = !DILocation(line: 124, column: 28, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !28, line: 123, column: 31)
!261 = !DILocation(line: 124, column: 21, scope: !260)
!262 = !DILocation(line: 124, column: 9, scope: !260)
!263 = !DILocation(line: 124, column: 26, scope: !260)
!264 = !DILocation(line: 123, column: 27, scope: !265)
!265 = !DILexicalBlockFile(scope: !255, file: !28, discriminator: 2)
!266 = distinct !{!266, !267, !268}
!267 = !DILocation(line: 123, column: 5, scope: !256)
!268 = !DILocation(line: 125, column: 5, scope: !256)
!269 = !DILocation(line: 126, column: 1, scope: !241)
!270 = distinct !DISubprogram(name: "reverse_24", scope: !28, file: !28, line: 127, type: !271, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !49, !115}
!273 = !{!274, !275}
!274 = !DILocalVariable(name: "src", arg: 1, scope: !270, file: !28, line: 127, type: !49)
!275 = !DILocalVariable(name: "dst", arg: 2, scope: !270, file: !28, line: 127, type: !115)
!276 = !DILocation(line: 127, column: 32, scope: !270)
!277 = !DILocation(line: 127, column: 46, scope: !270)
!278 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !279)
!279 = distinct !DILocation(line: 129, column: 5, scope: !270)
!280 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !279)
!281 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !279)
!282 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !279)
!283 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !279)
!284 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !279)
!285 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !279)
!286 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !279)
!287 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !279)
!288 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !279)
!289 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !279)
!290 = !DILocation(line: 130, column: 1, scope: !270)
!291 = distinct !DISubprogram(name: "reverse_48", scope: !28, file: !28, line: 131, type: !271, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !292)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "src", arg: 1, scope: !291, file: !28, line: 131, type: !49)
!294 = !DILocalVariable(name: "dst", arg: 2, scope: !291, file: !28, line: 131, type: !115)
!295 = !DILocation(line: 131, column: 32, scope: !291)
!296 = !DILocation(line: 131, column: 46, scope: !291)
!297 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !298)
!298 = distinct !DILocation(line: 133, column: 5, scope: !291)
!299 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !298)
!300 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !298)
!301 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !298)
!302 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !298)
!303 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !298)
!304 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !298)
!305 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !298)
!306 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !298)
!307 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !298)
!308 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !298)
!309 = !DILocation(line: 134, column: 1, scope: !291)
!310 = distinct !DISubprogram(name: "reverse_56", scope: !28, file: !28, line: 135, type: !271, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "src", arg: 1, scope: !310, file: !28, line: 135, type: !49)
!313 = !DILocalVariable(name: "dst", arg: 2, scope: !310, file: !28, line: 135, type: !115)
!314 = !DILocation(line: 135, column: 32, scope: !310)
!315 = !DILocation(line: 135, column: 46, scope: !310)
!316 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !317)
!317 = distinct !DILocation(line: 137, column: 5, scope: !310)
!318 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !317)
!319 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !317)
!320 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !317)
!321 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !317)
!322 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !317)
!323 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !317)
!324 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !317)
!325 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !317)
!326 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !317)
!327 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !317)
!328 = !DILocation(line: 138, column: 1, scope: !310)
!329 = distinct !DISubprogram(name: "reverse_64", scope: !28, file: !28, line: 139, type: !271, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !330)
!330 = !{!331, !332}
!331 = !DILocalVariable(name: "src", arg: 1, scope: !329, file: !28, line: 139, type: !49)
!332 = !DILocalVariable(name: "dst", arg: 2, scope: !329, file: !28, line: 139, type: !115)
!333 = !DILocation(line: 139, column: 32, scope: !329)
!334 = !DILocation(line: 139, column: 46, scope: !329)
!335 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !336)
!336 = distinct !DILocation(line: 141, column: 5, scope: !329)
!337 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !336)
!338 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !336)
!339 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !336)
!340 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !336)
!341 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !336)
!342 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !336)
!343 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !336)
!344 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !336)
!345 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !336)
!346 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !336)
!347 = !DILocation(line: 142, column: 1, scope: !329)
!348 = distinct !DISubprogram(name: "reverse_128", scope: !28, file: !28, line: 143, type: !271, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !349)
!349 = !{!350, !351}
!350 = !DILocalVariable(name: "src", arg: 1, scope: !348, file: !28, line: 143, type: !49)
!351 = !DILocalVariable(name: "dst", arg: 2, scope: !348, file: !28, line: 143, type: !115)
!352 = !DILocation(line: 143, column: 33, scope: !348)
!353 = !DILocation(line: 143, column: 47, scope: !348)
!354 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !355)
!355 = distinct !DILocation(line: 145, column: 5, scope: !348)
!356 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !355)
!357 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !355)
!358 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !355)
!359 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !355)
!360 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !355)
!361 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !355)
!362 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !355)
!363 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !355)
!364 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !355)
!365 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !355)
!366 = !DILocation(line: 146, column: 1, scope: !348)
!367 = distinct !DISubprogram(name: "reverse_256", scope: !28, file: !28, line: 147, type: !271, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !368)
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "src", arg: 1, scope: !367, file: !28, line: 147, type: !49)
!370 = !DILocalVariable(name: "dst", arg: 2, scope: !367, file: !28, line: 147, type: !115)
!371 = !DILocation(line: 147, column: 33, scope: !367)
!372 = !DILocation(line: 147, column: 47, scope: !367)
!373 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !374)
!374 = distinct !DILocation(line: 149, column: 5, scope: !367)
!375 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !374)
!376 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !374)
!377 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !374)
!378 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !374)
!379 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !374)
!380 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !374)
!381 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !374)
!382 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !374)
!383 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !374)
!384 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !374)
!385 = !DILocation(line: 150, column: 1, scope: !367)
!386 = distinct !DISubprogram(name: "reverse_bd_addr", scope: !28, file: !28, line: 152, type: !271, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !387)
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "src", arg: 1, scope: !386, file: !28, line: 152, type: !49)
!389 = !DILocalVariable(name: "dest", arg: 2, scope: !386, file: !28, line: 152, type: !115)
!390 = !DILocation(line: 152, column: 38, scope: !386)
!391 = !DILocation(line: 152, column: 53, scope: !386)
!392 = !DILocation(line: 120, column: 35, scope: !241, inlinedAt: !393)
!393 = distinct !DILocation(line: 154, column: 5, scope: !386)
!394 = !DILocation(line: 120, column: 49, scope: !241, inlinedAt: !393)
!395 = !DILocation(line: 120, column: 58, scope: !241, inlinedAt: !393)
!396 = !DILocation(line: 122, column: 9, scope: !241, inlinedAt: !393)
!397 = !DILocation(line: 123, column: 5, scope: !258, inlinedAt: !393)
!398 = !DILocation(line: 124, column: 28, scope: !260, inlinedAt: !393)
!399 = !DILocation(line: 124, column: 21, scope: !260, inlinedAt: !393)
!400 = !DILocation(line: 124, column: 9, scope: !260, inlinedAt: !393)
!401 = !DILocation(line: 124, column: 26, scope: !260, inlinedAt: !393)
!402 = !DILocation(line: 123, column: 27, scope: !265, inlinedAt: !393)
!403 = !DILocation(line: 123, column: 19, scope: !254, inlinedAt: !393)
!404 = !DILocation(line: 155, column: 1, scope: !386)
!405 = distinct !DISubprogram(name: "bt_store_16", scope: !28, file: !28, line: 158, type: !113, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !406)
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(name: "buffer", arg: 1, scope: !405, file: !28, line: 158, type: !115)
!408 = !DILocalVariable(name: "pos", arg: 2, scope: !405, file: !28, line: 158, type: !18)
!409 = !DILocalVariable(name: "value", arg: 3, scope: !405, file: !28, line: 158, type: !18)
!410 = !DILocation(line: 158, column: 27, scope: !405)
!411 = !DILocation(line: 158, column: 44, scope: !405)
!412 = !DILocation(line: 158, column: 58, scope: !405)
!413 = !DILocation(line: 160, column: 21, scope: !405)
!414 = !DILocation(line: 160, column: 15, scope: !405)
!415 = !DILocation(line: 160, column: 5, scope: !405)
!416 = !DILocation(line: 160, column: 19, scope: !405)
!417 = !DILocation(line: 161, column: 21, scope: !405)
!418 = !DILocation(line: 161, column: 5, scope: !405)
!419 = !DILocation(line: 161, column: 19, scope: !405)
!420 = !DILocation(line: 162, column: 1, scope: !405)
!421 = distinct !DISubprogram(name: "bt_store_32", scope: !28, file: !28, line: 164, type: !132, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !422)
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(name: "buffer", arg: 1, scope: !421, file: !28, line: 164, type: !115)
!424 = !DILocalVariable(name: "pos", arg: 2, scope: !421, file: !28, line: 164, type: !18)
!425 = !DILocalVariable(name: "value", arg: 3, scope: !421, file: !28, line: 164, type: !21)
!426 = !DILocation(line: 164, column: 27, scope: !421)
!427 = !DILocation(line: 164, column: 44, scope: !421)
!428 = !DILocation(line: 164, column: 58, scope: !421)
!429 = !DILocation(line: 166, column: 21, scope: !421)
!430 = !DILocation(line: 166, column: 15, scope: !421)
!431 = !DILocation(line: 166, column: 5, scope: !421)
!432 = !DILocation(line: 166, column: 19, scope: !421)
!433 = !DILocation(line: 167, column: 27, scope: !421)
!434 = !DILocation(line: 167, column: 21, scope: !421)
!435 = !DILocation(line: 167, column: 15, scope: !421)
!436 = !DILocation(line: 167, column: 5, scope: !421)
!437 = !DILocation(line: 167, column: 19, scope: !421)
!438 = !DILocation(line: 168, column: 27, scope: !421)
!439 = !DILocation(line: 168, column: 21, scope: !421)
!440 = !DILocation(line: 168, column: 15, scope: !421)
!441 = !DILocation(line: 168, column: 5, scope: !421)
!442 = !DILocation(line: 168, column: 19, scope: !421)
!443 = !DILocation(line: 169, column: 27, scope: !421)
!444 = !DILocation(line: 169, column: 21, scope: !421)
!445 = !DILocation(line: 169, column: 5, scope: !421)
!446 = !DILocation(line: 169, column: 19, scope: !421)
!447 = !DILocation(line: 170, column: 1, scope: !421)
!448 = distinct !DISubprogram(name: "net_store_16", scope: !28, file: !28, line: 172, type: !113, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !449)
!449 = !{!450, !451, !452}
!450 = !DILocalVariable(name: "buffer", arg: 1, scope: !448, file: !28, line: 172, type: !115)
!451 = !DILocalVariable(name: "pos", arg: 2, scope: !448, file: !28, line: 172, type: !18)
!452 = !DILocalVariable(name: "value", arg: 3, scope: !448, file: !28, line: 172, type: !18)
!453 = !DILocation(line: 172, column: 28, scope: !448)
!454 = !DILocation(line: 172, column: 45, scope: !448)
!455 = !DILocation(line: 172, column: 59, scope: !448)
!456 = !DILocation(line: 174, column: 21, scope: !448)
!457 = !DILocation(line: 174, column: 15, scope: !448)
!458 = !DILocation(line: 174, column: 5, scope: !448)
!459 = !DILocation(line: 174, column: 19, scope: !448)
!460 = !DILocation(line: 175, column: 21, scope: !448)
!461 = !DILocation(line: 175, column: 5, scope: !448)
!462 = !DILocation(line: 175, column: 19, scope: !448)
!463 = !DILocation(line: 176, column: 1, scope: !448)
!464 = distinct !DISubprogram(name: "net_store_32", scope: !28, file: !28, line: 178, type: !132, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !465)
!465 = !{!466, !467, !468}
!466 = !DILocalVariable(name: "buffer", arg: 1, scope: !464, file: !28, line: 178, type: !115)
!467 = !DILocalVariable(name: "pos", arg: 2, scope: !464, file: !28, line: 178, type: !18)
!468 = !DILocalVariable(name: "value", arg: 3, scope: !464, file: !28, line: 178, type: !21)
!469 = !DILocation(line: 178, column: 28, scope: !464)
!470 = !DILocation(line: 178, column: 45, scope: !464)
!471 = !DILocation(line: 178, column: 59, scope: !464)
!472 = !DILocation(line: 180, column: 27, scope: !464)
!473 = !DILocation(line: 180, column: 21, scope: !464)
!474 = !DILocation(line: 180, column: 15, scope: !464)
!475 = !DILocation(line: 180, column: 5, scope: !464)
!476 = !DILocation(line: 180, column: 19, scope: !464)
!477 = !DILocation(line: 181, column: 27, scope: !464)
!478 = !DILocation(line: 181, column: 21, scope: !464)
!479 = !DILocation(line: 181, column: 15, scope: !464)
!480 = !DILocation(line: 181, column: 5, scope: !464)
!481 = !DILocation(line: 181, column: 19, scope: !464)
!482 = !DILocation(line: 182, column: 27, scope: !464)
!483 = !DILocation(line: 182, column: 21, scope: !464)
!484 = !DILocation(line: 182, column: 15, scope: !464)
!485 = !DILocation(line: 182, column: 5, scope: !464)
!486 = !DILocation(line: 182, column: 19, scope: !464)
!487 = !DILocation(line: 183, column: 21, scope: !464)
!488 = !DILocation(line: 183, column: 5, scope: !464)
!489 = !DILocation(line: 183, column: 19, scope: !464)
!490 = !DILocation(line: 184, column: 1, scope: !464)
!491 = distinct !DISubprogram(name: "bt_flip_addr", scope: !28, file: !28, line: 186, type: !492, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !115, !115}
!494 = !{!495, !496}
!495 = !DILocalVariable(name: "dest", arg: 1, scope: !491, file: !28, line: 186, type: !115)
!496 = !DILocalVariable(name: "src", arg: 2, scope: !491, file: !28, line: 186, type: !115)
!497 = !DILocation(line: 186, column: 29, scope: !491)
!498 = !DILocation(line: 186, column: 45, scope: !491)
!499 = !DILocation(line: 188, column: 5, scope: !491)
!500 = !DILocation(line: 195, column: 1, scope: !491)
!501 = distinct !DISubprogram(name: "swapX", scope: !28, file: !28, line: 198, type: !242, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(name: "src", arg: 1, scope: !501, file: !28, line: 198, type: !49)
!504 = !DILocalVariable(name: "dst", arg: 2, scope: !501, file: !28, line: 198, type: !115)
!505 = !DILocalVariable(name: "len", arg: 3, scope: !501, file: !28, line: 198, type: !50)
!506 = !DILocalVariable(name: "i", scope: !501, file: !28, line: 200, type: !50)
!507 = !DILocation(line: 198, column: 27, scope: !501)
!508 = !DILocation(line: 198, column: 41, scope: !501)
!509 = !DILocation(line: 198, column: 50, scope: !501)
!510 = !DILocation(line: 200, column: 9, scope: !501)
!511 = !DILocation(line: 201, column: 19, scope: !512)
!512 = !DILexicalBlockFile(scope: !513, file: !28, discriminator: 1)
!513 = distinct !DILexicalBlock(scope: !514, file: !28, line: 201, column: 5)
!514 = distinct !DILexicalBlock(scope: !501, file: !28, line: 201, column: 5)
!515 = !DILocation(line: 201, column: 5, scope: !516)
!516 = !DILexicalBlockFile(scope: !514, file: !28, discriminator: 1)
!517 = !DILocation(line: 202, column: 28, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !28, line: 201, column: 31)
!519 = !DILocation(line: 202, column: 21, scope: !518)
!520 = !DILocation(line: 202, column: 9, scope: !518)
!521 = !DILocation(line: 202, column: 26, scope: !518)
!522 = !DILocation(line: 201, column: 27, scope: !523)
!523 = !DILexicalBlockFile(scope: !513, file: !28, discriminator: 2)
!524 = distinct !{!524, !525, !526}
!525 = !DILocation(line: 201, column: 5, scope: !514)
!526 = !DILocation(line: 203, column: 5, scope: !514)
!527 = !DILocation(line: 204, column: 1, scope: !501)
!528 = distinct !DISubprogram(name: "swap24", scope: !28, file: !28, line: 205, type: !271, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !529)
!529 = !{!530, !531}
!530 = !DILocalVariable(name: "src", arg: 1, scope: !528, file: !28, line: 205, type: !49)
!531 = !DILocalVariable(name: "dst", arg: 2, scope: !528, file: !28, line: 205, type: !115)
!532 = !DILocation(line: 205, column: 27, scope: !528)
!533 = !DILocation(line: 205, column: 43, scope: !528)
!534 = !DILocation(line: 198, column: 27, scope: !501, inlinedAt: !535)
!535 = distinct !DILocation(line: 207, column: 5, scope: !528)
!536 = !DILocation(line: 198, column: 41, scope: !501, inlinedAt: !535)
!537 = !DILocation(line: 198, column: 50, scope: !501, inlinedAt: !535)
!538 = !DILocation(line: 200, column: 9, scope: !501, inlinedAt: !535)
!539 = !DILocation(line: 201, column: 5, scope: !516, inlinedAt: !535)
!540 = !DILocation(line: 202, column: 28, scope: !518, inlinedAt: !535)
!541 = !DILocation(line: 202, column: 21, scope: !518, inlinedAt: !535)
!542 = !DILocation(line: 202, column: 9, scope: !518, inlinedAt: !535)
!543 = !DILocation(line: 202, column: 26, scope: !518, inlinedAt: !535)
!544 = !DILocation(line: 201, column: 27, scope: !523, inlinedAt: !535)
!545 = !DILocation(line: 201, column: 19, scope: !512, inlinedAt: !535)
!546 = !DILocation(line: 208, column: 1, scope: !528)
!547 = distinct !DISubprogram(name: "swap32", scope: !28, file: !28, line: 209, type: !271, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !548)
!548 = !{!549, !550}
!549 = !DILocalVariable(name: "src", arg: 1, scope: !547, file: !28, line: 209, type: !49)
!550 = !DILocalVariable(name: "dst", arg: 2, scope: !547, file: !28, line: 209, type: !115)
!551 = !DILocation(line: 209, column: 27, scope: !547)
!552 = !DILocation(line: 209, column: 43, scope: !547)
!553 = !DILocation(line: 198, column: 27, scope: !501, inlinedAt: !554)
!554 = distinct !DILocation(line: 211, column: 5, scope: !547)
!555 = !DILocation(line: 198, column: 41, scope: !501, inlinedAt: !554)
!556 = !DILocation(line: 198, column: 50, scope: !501, inlinedAt: !554)
!557 = !DILocation(line: 200, column: 9, scope: !501, inlinedAt: !554)
!558 = !DILocation(line: 201, column: 5, scope: !516, inlinedAt: !554)
!559 = !DILocation(line: 202, column: 28, scope: !518, inlinedAt: !554)
!560 = !DILocation(line: 202, column: 21, scope: !518, inlinedAt: !554)
!561 = !DILocation(line: 202, column: 9, scope: !518, inlinedAt: !554)
!562 = !DILocation(line: 202, column: 26, scope: !518, inlinedAt: !554)
!563 = !DILocation(line: 201, column: 27, scope: !523, inlinedAt: !554)
!564 = !DILocation(line: 201, column: 19, scope: !512, inlinedAt: !554)
!565 = !DILocation(line: 212, column: 1, scope: !547)
!566 = distinct !DISubprogram(name: "swap48", scope: !28, file: !28, line: 213, type: !271, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !567)
!567 = !{!568, !569}
!568 = !DILocalVariable(name: "src", arg: 1, scope: !566, file: !28, line: 213, type: !49)
!569 = !DILocalVariable(name: "dst", arg: 2, scope: !566, file: !28, line: 213, type: !115)
!570 = !DILocation(line: 213, column: 27, scope: !566)
!571 = !DILocation(line: 213, column: 43, scope: !566)
!572 = !DILocation(line: 198, column: 27, scope: !501, inlinedAt: !573)
!573 = distinct !DILocation(line: 215, column: 5, scope: !566)
!574 = !DILocation(line: 198, column: 41, scope: !501, inlinedAt: !573)
!575 = !DILocation(line: 198, column: 50, scope: !501, inlinedAt: !573)
!576 = !DILocation(line: 200, column: 9, scope: !501, inlinedAt: !573)
!577 = !DILocation(line: 201, column: 5, scope: !516, inlinedAt: !573)
!578 = !DILocation(line: 202, column: 28, scope: !518, inlinedAt: !573)
!579 = !DILocation(line: 202, column: 21, scope: !518, inlinedAt: !573)
!580 = !DILocation(line: 202, column: 9, scope: !518, inlinedAt: !573)
!581 = !DILocation(line: 202, column: 26, scope: !518, inlinedAt: !573)
!582 = !DILocation(line: 201, column: 27, scope: !523, inlinedAt: !573)
!583 = !DILocation(line: 201, column: 19, scope: !512, inlinedAt: !573)
!584 = !DILocation(line: 216, column: 1, scope: !566)
!585 = distinct !DISubprogram(name: "swap56", scope: !28, file: !28, line: 217, type: !271, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !586)
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "src", arg: 1, scope: !585, file: !28, line: 217, type: !49)
!588 = !DILocalVariable(name: "dst", arg: 2, scope: !585, file: !28, line: 217, type: !115)
!589 = !DILocation(line: 217, column: 27, scope: !585)
!590 = !DILocation(line: 217, column: 43, scope: !585)
!591 = !DILocation(line: 198, column: 27, scope: !501, inlinedAt: !592)
!592 = distinct !DILocation(line: 219, column: 5, scope: !585)
!593 = !DILocation(line: 198, column: 41, scope: !501, inlinedAt: !592)
!594 = !DILocation(line: 198, column: 50, scope: !501, inlinedAt: !592)
!595 = !DILocation(line: 200, column: 9, scope: !501, inlinedAt: !592)
!596 = !DILocation(line: 201, column: 5, scope: !516, inlinedAt: !592)
!597 = !DILocation(line: 202, column: 28, scope: !518, inlinedAt: !592)
!598 = !DILocation(line: 202, column: 21, scope: !518, inlinedAt: !592)
!599 = !DILocation(line: 202, column: 9, scope: !518, inlinedAt: !592)
!600 = !DILocation(line: 202, column: 26, scope: !518, inlinedAt: !592)
!601 = !DILocation(line: 201, column: 27, scope: !523, inlinedAt: !592)
!602 = !DILocation(line: 201, column: 19, scope: !512, inlinedAt: !592)
!603 = !DILocation(line: 220, column: 1, scope: !585)
!604 = distinct !DISubprogram(name: "swap64", scope: !28, file: !28, line: 221, type: !271, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !605)
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "src", arg: 1, scope: !604, file: !28, line: 221, type: !49)
!607 = !DILocalVariable(name: "dst", arg: 2, scope: !604, file: !28, line: 221, type: !115)
!608 = !DILocation(line: 221, column: 27, scope: !604)
!609 = !DILocation(line: 221, column: 43, scope: !604)
!610 = !DILocation(line: 198, column: 27, scope: !501, inlinedAt: !611)
!611 = distinct !DILocation(line: 223, column: 5, scope: !604)
!612 = !DILocation(line: 198, column: 41, scope: !501, inlinedAt: !611)
!613 = !DILocation(line: 198, column: 50, scope: !501, inlinedAt: !611)
!614 = !DILocation(line: 200, column: 9, scope: !501, inlinedAt: !611)
!615 = !DILocation(line: 201, column: 5, scope: !516, inlinedAt: !611)
!616 = !DILocation(line: 202, column: 28, scope: !518, inlinedAt: !611)
!617 = !DILocation(line: 202, column: 21, scope: !518, inlinedAt: !611)
!618 = !DILocation(line: 202, column: 9, scope: !518, inlinedAt: !611)
!619 = !DILocation(line: 202, column: 26, scope: !518, inlinedAt: !611)
!620 = !DILocation(line: 201, column: 27, scope: !523, inlinedAt: !611)
!621 = !DILocation(line: 201, column: 19, scope: !512, inlinedAt: !611)
!622 = !DILocation(line: 224, column: 1, scope: !604)
!623 = distinct !DISubprogram(name: "swap128", scope: !28, file: !28, line: 225, type: !271, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !624)
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "src", arg: 1, scope: !623, file: !28, line: 225, type: !49)
!626 = !DILocalVariable(name: "dst", arg: 2, scope: !623, file: !28, line: 225, type: !115)
!627 = !DILocation(line: 225, column: 28, scope: !623)
!628 = !DILocation(line: 225, column: 45, scope: !623)
!629 = !DILocation(line: 198, column: 27, scope: !501, inlinedAt: !630)
!630 = distinct !DILocation(line: 227, column: 5, scope: !623)
!631 = !DILocation(line: 198, column: 41, scope: !501, inlinedAt: !630)
!632 = !DILocation(line: 198, column: 50, scope: !501, inlinedAt: !630)
!633 = !DILocation(line: 200, column: 9, scope: !501, inlinedAt: !630)
!634 = !DILocation(line: 201, column: 5, scope: !516, inlinedAt: !630)
!635 = !DILocation(line: 202, column: 28, scope: !518, inlinedAt: !630)
!636 = !DILocation(line: 202, column: 21, scope: !518, inlinedAt: !630)
!637 = !DILocation(line: 202, column: 9, scope: !518, inlinedAt: !630)
!638 = !DILocation(line: 202, column: 26, scope: !518, inlinedAt: !630)
!639 = !DILocation(line: 201, column: 27, scope: !523, inlinedAt: !630)
!640 = !DILocation(line: 201, column: 19, scope: !512, inlinedAt: !630)
!641 = !DILocation(line: 228, column: 1, scope: !623)
!642 = distinct !DISubprogram(name: "btstack_min", scope: !28, file: !28, line: 230, type: !643, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!21, !21, !21}
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "a", arg: 1, scope: !642, file: !28, line: 230, type: !21)
!647 = !DILocalVariable(name: "b", arg: 2, scope: !642, file: !28, line: 230, type: !21)
!648 = !DILocation(line: 230, column: 31, scope: !642)
!649 = !DILocation(line: 230, column: 43, scope: !642)
!650 = !DILocation(line: 232, column: 14, scope: !642)
!651 = !DILocation(line: 232, column: 12, scope: !642)
!652 = !DILocation(line: 232, column: 5, scope: !653)
!653 = !DILexicalBlockFile(scope: !642, file: !28, discriminator: 3)
!654 = distinct !DISubprogram(name: "btstack_max", scope: !28, file: !28, line: 235, type: !643, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !655)
!655 = !{!656, !657}
!656 = !DILocalVariable(name: "a", arg: 1, scope: !654, file: !28, line: 235, type: !21)
!657 = !DILocalVariable(name: "b", arg: 2, scope: !654, file: !28, line: 235, type: !21)
!658 = !DILocation(line: 235, column: 31, scope: !654)
!659 = !DILocation(line: 235, column: 43, scope: !654)
!660 = !DILocation(line: 237, column: 14, scope: !654)
!661 = !DILocation(line: 237, column: 12, scope: !654)
!662 = !DILocation(line: 237, column: 5, scope: !663)
!663 = !DILexicalBlockFile(scope: !654, file: !28, discriminator: 3)
!664 = distinct !DISubprogram(name: "char_for_nibble", scope: !28, file: !28, line: 240, type: !665, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!24, !50}
!667 = !{!668}
!668 = !DILocalVariable(name: "nibble", arg: 1, scope: !664, file: !28, line: 240, type: !50)
!669 = !DILocation(line: 240, column: 26, scope: !664)
!670 = !DILocation(line: 242, column: 16, scope: !671)
!671 = distinct !DILexicalBlock(scope: !664, file: !28, line: 242, column: 9)
!672 = !DILocation(line: 242, column: 9, scope: !664)
!673 = !DILocation(line: 243, column: 20, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !28, line: 242, column: 22)
!675 = !DILocation(line: 243, column: 16, scope: !674)
!676 = !DILocation(line: 243, column: 9, scope: !674)
!677 = !DILocation(line: 245, column: 12, scope: !664)
!678 = !DILocation(line: 246, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !664, file: !28, line: 246, column: 9)
!680 = !DILocation(line: 246, column: 9, scope: !664)
!681 = !DILocation(line: 247, column: 20, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !28, line: 246, column: 21)
!683 = !DILocation(line: 247, column: 16, scope: !682)
!684 = !DILocation(line: 247, column: 9, scope: !682)
!685 = !DILocation(line: 250, column: 1, scope: !664)
!686 = distinct !DISubprogram(name: "printf_hexdump", scope: !28, file: !28, line: 252, type: !687, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !691)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689, !50}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!691 = !{!692, !693}
!692 = !DILocalVariable(name: "data", arg: 1, scope: !686, file: !28, line: 252, type: !689)
!693 = !DILocalVariable(name: "size", arg: 2, scope: !686, file: !28, line: 252, type: !50)
!694 = !DILocation(line: 252, column: 33, scope: !686)
!695 = !DILocation(line: 252, column: 43, scope: !686)
!696 = !DILocation(line: 254, column: 5, scope: !686)
!697 = distinct !DISubprogram(name: "log_info_hexdump", scope: !28, file: !28, line: 264, type: !687, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !698)
!698 = !{!699, !700}
!699 = !DILocalVariable(name: "data", arg: 1, scope: !697, file: !28, line: 264, type: !689)
!700 = !DILocalVariable(name: "size", arg: 2, scope: !697, file: !28, line: 264, type: !50)
!701 = !DILocation(line: 264, column: 35, scope: !697)
!702 = !DILocation(line: 264, column: 45, scope: !697)
!703 = !DILocation(line: 302, column: 1, scope: !697)
!704 = distinct !DISubprogram(name: "hexdump", scope: !28, file: !28, line: 304, type: !687, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !705)
!705 = !{!706, !707}
!706 = !DILocalVariable(name: "data", arg: 1, scope: !704, file: !28, line: 304, type: !689)
!707 = !DILocalVariable(name: "size", arg: 2, scope: !704, file: !28, line: 304, type: !50)
!708 = !DILocation(line: 304, column: 26, scope: !704)
!709 = !DILocation(line: 304, column: 36, scope: !704)
!710 = !DILocation(line: 306, column: 5, scope: !704)
!711 = distinct !DISubprogram(name: "hexdumpf", scope: !28, file: !28, line: 333, type: !687, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !712)
!712 = !{!713, !714}
!713 = !DILocalVariable(name: "data", arg: 1, scope: !711, file: !28, line: 333, type: !689)
!714 = !DILocalVariable(name: "size", arg: 2, scope: !711, file: !28, line: 333, type: !50)
!715 = !DILocation(line: 333, column: 27, scope: !711)
!716 = !DILocation(line: 333, column: 37, scope: !711)
!717 = !DILocation(line: 335, column: 5, scope: !711)
!718 = distinct !DISubprogram(name: "log_key", scope: !28, file: !28, line: 362, type: !719, isLocal: false, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !723)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721, !115}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "name", arg: 1, scope: !718, file: !28, line: 362, type: !721)
!725 = !DILocalVariable(name: "key", arg: 2, scope: !718, file: !28, line: 362, type: !115)
!726 = !DILocation(line: 362, column: 26, scope: !718)
!727 = !DILocation(line: 362, column: 41, scope: !718)
!728 = !DILocation(line: 364, column: 5, scope: !718)
!729 = distinct !DISubprogram(name: "uuid_add_bluetooth_prefix", scope: !28, file: !28, line: 375, type: !730, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !115, !21}
!732 = !{!733, !734}
!733 = !DILocalVariable(name: "uuid", arg: 1, scope: !729, file: !28, line: 375, type: !115)
!734 = !DILocalVariable(name: "shortUUID", arg: 2, scope: !729, file: !28, line: 375, type: !21)
!735 = !DILocation(line: 375, column: 41, scope: !729)
!736 = !DILocation(line: 375, column: 56, scope: !729)
!737 = !DILocation(line: 377, column: 5, scope: !729)
!738 = !DILocation(line: 111, column: 35, scope: !214, inlinedAt: !739)
!739 = distinct !DILocation(line: 378, column: 5, scope: !729)
!740 = !DILocation(line: 111, column: 52, scope: !214, inlinedAt: !739)
!741 = !DILocation(line: 111, column: 66, scope: !214, inlinedAt: !739)
!742 = !DILocation(line: 113, column: 27, scope: !214, inlinedAt: !739)
!743 = !DILocation(line: 113, column: 21, scope: !214, inlinedAt: !739)
!744 = !DILocation(line: 113, column: 19, scope: !214, inlinedAt: !739)
!745 = !DILocation(line: 114, column: 27, scope: !214, inlinedAt: !739)
!746 = !DILocation(line: 114, column: 21, scope: !214, inlinedAt: !739)
!747 = !DILocation(line: 114, column: 5, scope: !214, inlinedAt: !739)
!748 = !DILocation(line: 114, column: 19, scope: !214, inlinedAt: !739)
!749 = !DILocation(line: 115, column: 27, scope: !214, inlinedAt: !739)
!750 = !DILocation(line: 115, column: 21, scope: !214, inlinedAt: !739)
!751 = !DILocation(line: 115, column: 5, scope: !214, inlinedAt: !739)
!752 = !DILocation(line: 115, column: 19, scope: !214, inlinedAt: !739)
!753 = !DILocation(line: 116, column: 21, scope: !214, inlinedAt: !739)
!754 = !DILocation(line: 116, column: 5, scope: !214, inlinedAt: !739)
!755 = !DILocation(line: 116, column: 19, scope: !214, inlinedAt: !739)
!756 = !DILocation(line: 379, column: 1, scope: !729)
!757 = distinct !DISubprogram(name: "uuid_has_bluetooth_prefix", scope: !28, file: !28, line: 381, type: !758, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!50, !115}
!760 = !{!761}
!761 = !DILocalVariable(name: "uuid128", arg: 1, scope: !757, file: !28, line: 381, type: !115)
!762 = !DILocation(line: 381, column: 40, scope: !757)
!763 = !DILocation(line: 383, column: 20, scope: !757)
!764 = !DILocation(line: 383, column: 12, scope: !757)
!765 = !DILocation(line: 383, column: 65, scope: !757)
!766 = !DILocation(line: 383, column: 5, scope: !757)
!767 = distinct !DISubprogram(name: "bd_addr_to_str", scope: !28, file: !28, line: 402, type: !768, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!23, !115}
!770 = !{!771, !772, !773}
!771 = !DILocalVariable(name: "addr", arg: 1, scope: !767, file: !28, line: 402, type: !115)
!772 = !DILocalVariable(name: "p", scope: !767, file: !28, line: 407, type: !23)
!773 = !DILocalVariable(name: "i", scope: !767, file: !28, line: 408, type: !50)
!774 = !DILocation(line: 402, column: 32, scope: !767)
!775 = !DILocation(line: 407, column: 11, scope: !767)
!776 = !DILocation(line: 408, column: 9, scope: !767)
!777 = !DILocation(line: 409, column: 5, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !28, discriminator: 1)
!779 = distinct !DILexicalBlock(scope: !767, file: !28, line: 409, column: 5)
!780 = !DILocation(line: 410, column: 33, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !28, line: 409, column: 30)
!782 = distinct !DILexicalBlock(scope: !779, file: !28, line: 409, column: 5)
!783 = !DILocation(line: 410, column: 41, scope: !781)
!784 = !DILocation(line: 240, column: 26, scope: !664, inlinedAt: !785)
!785 = distinct !DILocation(line: 410, column: 16, scope: !781)
!786 = !DILocation(line: 242, column: 16, scope: !671, inlinedAt: !785)
!787 = !DILocation(line: 242, column: 9, scope: !664, inlinedAt: !785)
!788 = !DILocation(line: 243, column: 16, scope: !674, inlinedAt: !785)
!789 = !DILocation(line: 243, column: 9, scope: !674, inlinedAt: !785)
!790 = !DILocation(line: 245, column: 12, scope: !664, inlinedAt: !785)
!791 = !DILocation(line: 246, column: 16, scope: !679, inlinedAt: !785)
!792 = !DILocation(line: 246, column: 9, scope: !664, inlinedAt: !785)
!793 = !DILocation(line: 247, column: 20, scope: !682, inlinedAt: !785)
!794 = !DILocation(line: 247, column: 16, scope: !682, inlinedAt: !785)
!795 = !DILocation(line: 247, column: 9, scope: !682, inlinedAt: !785)
!796 = !DILocation(line: 410, column: 11, scope: !781)
!797 = !DILocation(line: 410, column: 14, scope: !781)
!798 = !DILocation(line: 411, column: 33, scope: !781)
!799 = !DILocation(line: 411, column: 47, scope: !781)
!800 = !DILocation(line: 240, column: 26, scope: !664, inlinedAt: !801)
!801 = distinct !DILocation(line: 411, column: 16, scope: !781)
!802 = !DILocation(line: 242, column: 16, scope: !671, inlinedAt: !801)
!803 = !DILocation(line: 242, column: 9, scope: !664, inlinedAt: !801)
!804 = !DILocation(line: 243, column: 20, scope: !674, inlinedAt: !801)
!805 = !DILocation(line: 243, column: 9, scope: !674, inlinedAt: !801)
!806 = !DILocation(line: 245, column: 12, scope: !664, inlinedAt: !801)
!807 = !DILocation(line: 246, column: 16, scope: !679, inlinedAt: !801)
!808 = !DILocation(line: 247, column: 20, scope: !682, inlinedAt: !801)
!809 = !DILocation(line: 246, column: 9, scope: !664, inlinedAt: !801)
!810 = !DILocation(line: 411, column: 11, scope: !781)
!811 = !DILocation(line: 411, column: 14, scope: !781)
!812 = !DILocation(line: 412, column: 11, scope: !781)
!813 = !DILocation(line: 412, column: 14, scope: !781)
!814 = !DILocation(line: 409, column: 26, scope: !815)
!815 = !DILexicalBlockFile(scope: !782, file: !28, discriminator: 2)
!816 = !DILocation(line: 409, column: 19, scope: !817)
!817 = !DILexicalBlockFile(scope: !782, file: !28, discriminator: 1)
!818 = distinct !{!818, !819, !820}
!819 = !DILocation(line: 409, column: 5, scope: !779)
!820 = !DILocation(line: 413, column: 5, scope: !779)
!821 = !DILocation(line: 414, column: 10, scope: !767)
!822 = !DILocation(line: 415, column: 5, scope: !767)
!823 = distinct !DISubprogram(name: "is_authenticated_link_key", scope: !28, file: !28, line: 497, type: !824, isLocal: false, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !827)
!824 = !DISubroutineType(types: !825)
!825 = !{!50, !826}
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "link_key_type_t", file: !6, line: 85, baseType: !5)
!827 = !{!828}
!828 = !DILocalVariable(name: "link_key_type", arg: 1, scope: !823, file: !28, line: 497, type: !826)
!829 = !DILocation(line: 497, column: 47, scope: !823)
!830 = !DILocation(line: 499, column: 5, scope: !823)
!831 = !DILocation(line: 505, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !28, line: 499, column: 28)
!833 = !DILocation(line: 507, column: 1, scope: !823)
!834 = distinct !DISubprogram(name: "crc8", scope: !28, file: !28, line: 534, type: !835, isLocal: false, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!36, !115, !18}
!837 = !{!838, !839, !840, !841}
!838 = !DILocalVariable(name: "data", arg: 1, scope: !834, file: !28, line: 534, type: !115)
!839 = !DILocalVariable(name: "len", arg: 2, scope: !834, file: !28, line: 534, type: !18)
!840 = !DILocalVariable(name: "count", scope: !834, file: !28, line: 536, type: !18)
!841 = !DILocalVariable(name: "crc", scope: !834, file: !28, line: 537, type: !36)
!842 = !DILocation(line: 534, column: 23, scope: !834)
!843 = !DILocation(line: 534, column: 38, scope: !834)
!844 = !DILocation(line: 537, column: 13, scope: !834)
!845 = !DILocation(line: 536, column: 14, scope: !834)
!846 = !DILocation(line: 538, column: 27, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !28, discriminator: 1)
!848 = distinct !DILexicalBlock(scope: !849, file: !28, line: 538, column: 5)
!849 = distinct !DILexicalBlock(scope: !834, file: !28, line: 538, column: 5)
!850 = !DILocation(line: 538, column: 5, scope: !851)
!851 = !DILexicalBlockFile(scope: !849, file: !28, discriminator: 1)
!852 = !DILocation(line: 539, column: 35, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !28, line: 538, column: 43)
!854 = !DILocation(line: 539, column: 33, scope: !853)
!855 = !DILocation(line: 539, column: 15, scope: !853)
!856 = !DILocation(line: 538, column: 39, scope: !857)
!857 = !DILexicalBlockFile(scope: !848, file: !28, discriminator: 2)
!858 = distinct !{!858, !859, !860}
!859 = !DILocation(line: 538, column: 5, scope: !849)
!860 = !DILocation(line: 540, column: 5, scope: !849)
!861 = !DILocation(line: 541, column: 5, scope: !834)
!862 = distinct !DISubprogram(name: "crc8_check", scope: !28, file: !28, line: 545, type: !863, isLocal: false, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!36, !115, !18, !36}
!865 = !{!866, !867, !868, !869}
!866 = !DILocalVariable(name: "data", arg: 1, scope: !862, file: !28, line: 545, type: !115)
!867 = !DILocalVariable(name: "len", arg: 2, scope: !862, file: !28, line: 545, type: !18)
!868 = !DILocalVariable(name: "check_sum", arg: 3, scope: !862, file: !28, line: 545, type: !36)
!869 = !DILocalVariable(name: "crc", scope: !862, file: !28, line: 547, type: !36)
!870 = !DILocation(line: 545, column: 29, scope: !862)
!871 = !DILocation(line: 545, column: 44, scope: !862)
!872 = !DILocation(line: 545, column: 57, scope: !862)
!873 = !DILocation(line: 549, column: 11, scope: !862)
!874 = !DILocation(line: 547, column: 13, scope: !862)
!875 = !DILocation(line: 551, column: 29, scope: !862)
!876 = !DILocation(line: 553, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !28, line: 552, column: 25)
!878 = distinct !DILexicalBlock(scope: !862, file: !28, line: 552, column: 9)
!879 = !DILocation(line: 558, column: 1, scope: !862)
!880 = distinct !DISubprogram(name: "crc8_calc", scope: !28, file: !28, line: 561, type: !835, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !881)
!881 = !{!882, !883}
!882 = !DILocalVariable(name: "data", arg: 1, scope: !880, file: !28, line: 561, type: !115)
!883 = !DILocalVariable(name: "len", arg: 2, scope: !880, file: !28, line: 561, type: !18)
!884 = !DILocation(line: 561, column: 28, scope: !880)
!885 = !DILocation(line: 561, column: 43, scope: !880)
!886 = !DILocation(line: 564, column: 19, scope: !880)
!887 = !DILocation(line: 564, column: 17, scope: !880)
!888 = !DILocation(line: 564, column: 5, scope: !880)
