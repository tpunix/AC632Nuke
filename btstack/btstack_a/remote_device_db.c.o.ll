; ModuleID = 'remote_device_db.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/remote_device_db.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.database_file = type { i32 (...)*, void (...)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, void (i32, i32)*, i32 ()*, i32 (...)* }
%struct._remote_database = type { i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], [16 x i8] }

@temp_link_key_flag = hidden global i8 0, section ".bt_stack_data", align 1, !dbg !0
@temp_device_connect_linkkey = hidden local_unnamed_addr global [16 x i8] zeroinitializer, section ".bt_stack_bss", align 1, !dbg !47
@own_private_linkkey = internal unnamed_addr constant [16 x i8] c"\06w_\87\91\8D\D4#\00]\F1\D8\CF\0C\14+", section ".bt_stack_const", align 1, !dbg !56
@CONFIG_BTCTLER_FAST_CONNECT_ENABLE = external local_unnamed_addr constant i32, align 4
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@dbf_file = internal unnamed_addr global %struct.database_file* null, section ".bt_stack_bss", align 4, !dbg !14
@more_addr_reconnect_support = external local_unnamed_addr constant i8, align 1
@last_device_connect_linkkey = hidden local_unnamed_addr global [16 x i8] zeroinitializer, section ".bt_stack_bss", align 1, !dbg !54

; Function Attrs: nounwind optsize
define hidden void @set_temp_link_key(i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !64 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !70
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @temp_device_connect_linkkey, i32 0, i32 0), i8* %0, i32 16, i32 1, i1 false), !dbg !71
  store volatile i8 1, i8* @temp_link_key_flag, align 1, !dbg !72, !tbaa !73
  ret void, !dbg !76
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind optsize
define hidden i32 @get_support_profile([6 x i8]* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !77 {
  %3 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !88, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8 %1, metadata !89, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !113
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !114
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !91, metadata !DIExpression(DW_OP_deref)), !dbg !115
  %5 = call fastcc i32 @get_database(%struct._remote_database* nonnull %3, [6 x i8]* %0, i8 zeroext %1) #6, !dbg !116
  %6 = icmp eq i32 %5, 0, !dbg !116
  %7 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 6, !dbg !118
  %8 = load i8, i8* %7, align 1, !dbg !118
  call void @llvm.dbg.value(metadata i8 %8, metadata !90, metadata !DIExpression()), !dbg !113
  %9 = zext i8 %8 to i32
  %10 = select i1 %6, i32 3, i32 %9, !dbg !120
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !121
  ret i32 %10, !dbg !122
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @get_database(%struct._remote_database*, [6 x i8]* nocapture readonly, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !123 {
  call void @llvm.dbg.value(metadata %struct._remote_database* %0, metadata !128, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata [6 x i8]* %1, metadata !129, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i8 %2, metadata !130, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 0, metadata !132, metadata !DIExpression()), !dbg !136
  %4 = load i32 ()**, i32 ()*** bitcast (%struct.database_file** @dbf_file to i32 ()***), align 4, !dbg !137, !tbaa !139
  %5 = load i32 ()*, i32 ()** %4, align 4, !dbg !141, !tbaa !142
  %6 = tail call i32 %5() #7, !dbg !137
  %7 = icmp eq i32 %6, 0, !dbg !137
  br i1 %7, label %37, label %8, !dbg !144

; <label>:8:                                      ; preds = %3
  %9 = bitcast %struct._remote_database* %0 to i8*
  %10 = zext i8 %2 to i32
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 8, i32 0
  br label %13, !dbg !145

; <label>:13:                                     ; preds = %19, %8
  %14 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !145, !tbaa !139
  %15 = getelementptr inbounds %struct.database_file, %struct.database_file* %14, i32 0, i32 2, !dbg !147
  %16 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %15, align 4, !dbg !147, !tbaa !148
  %17 = tail call i32 %16(i8* %9, i32 32, i32 %10) #7, !dbg !145
  call void @llvm.dbg.value(metadata i32 %17, metadata !131, metadata !DIExpression()), !dbg !149
  %18 = icmp eq i32 %17, 32, !dbg !150
  br i1 %18, label %19, label %30, !dbg !152

; <label>:19:                                     ; preds = %13
  %20 = tail call i32 @memcmp(i8* %11, i8* %12, i32 6) #6, !dbg !153
  %21 = icmp eq i32 %20, 0, !dbg !153
  br i1 %21, label %22, label %13, !dbg !155, !llvm.loop !156

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 0, !dbg !159
  %24 = load i16, i16* %23, align 1, !dbg !159, !tbaa !162
  %25 = getelementptr %struct._remote_database, %struct._remote_database* %0, i32 0, i32 1, !dbg !165
  %26 = bitcast i16* %25 to i8*, !dbg !165
  %27 = tail call zeroext i16 @chip_crc16(i8* %26, i32 30) #7, !dbg !165
  %28 = icmp eq i16 %24, %27, !dbg !166
  call void @llvm.dbg.value(metadata i32 1, metadata !132, metadata !DIExpression()), !dbg !136
  %29 = zext i1 %28 to i32, !dbg !167
  br label %31, !dbg !167

; <label>:30:                                     ; preds = %13
  br label %31, !dbg !136

; <label>:31:                                     ; preds = %30, %22
  %32 = phi i32 [ %29, %22 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !132, metadata !DIExpression()), !dbg !136
  %33 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !168, !tbaa !139
  %34 = getelementptr inbounds %struct.database_file, %struct.database_file* %33, i32 0, i32 1, !dbg !169
  %35 = bitcast void (...)** %34 to void ()**, !dbg !169
  %36 = load void ()*, void ()** %35, align 4, !dbg !169, !tbaa !170
  tail call void %36() #7, !dbg !168
  br label %37, !dbg !171

; <label>:37:                                     ; preds = %31, %3
  %38 = phi i32 [ %32, %31 ], [ 0, %3 ]
  ret i32 %38, !dbg !172
}

; Function Attrs: nounwind optsize
define hidden void @put_support_profile([6 x i8]* nocapture readonly, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !173 {
  %4 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i8 %1, metadata !178, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i8 %2, metadata !179, metadata !DIExpression()), !dbg !183
  %5 = bitcast %struct._remote_database* %4 to i8*, !dbg !184
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #5, !dbg !184
  call void @llvm.dbg.value(metadata %struct._remote_database* %4, metadata !180, metadata !DIExpression(DW_OP_deref)), !dbg !185
  %6 = call fastcc i32 @get_database(%struct._remote_database* nonnull %4, [6 x i8]* %0, i8 zeroext %2) #6, !dbg !186
  %7 = icmp eq i32 %6, 0, !dbg !186
  br i1 %7, label %10, label %8, !dbg !188

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 6, !dbg !189
  store i8 %1, i8* %9, align 1, !dbg !191, !tbaa !192
  call void @llvm.dbg.value(metadata %struct._remote_database* %4, metadata !180, metadata !DIExpression(DW_OP_deref)), !dbg !185
  call fastcc void @put_database(%struct._remote_database* nonnull %4, i8 zeroext %2) #6, !dbg !193
  br label %10, !dbg !194

; <label>:10:                                     ; preds = %8, %3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #5, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nounwind optsize
define internal fastcc void @put_database(%struct._remote_database*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !197 {
  %3 = alloca %struct._remote_database, align 2
  %4 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !205, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i16 -1, metadata !206, metadata !DIExpression()), !dbg !215
  tail call void @llvm.dbg.declare(metadata [3 x i16]* undef, metadata !207, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i16 0, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 0, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 0, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !216
  %5 = bitcast %struct._remote_database* %3 to i8*, !dbg !217
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #5, !dbg !217
  %6 = bitcast %struct._remote_database* %4 to i8*, !dbg !218
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5, !dbg !218
  call void @llvm.dbg.value(metadata i16 0, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata %struct._remote_database* %4, metadata !212, metadata !DIExpression(DW_OP_deref)), !dbg !220
  %7 = call fastcc i32 @get_last_database(%struct._remote_database* nonnull %4, i8 zeroext %1) #6, !dbg !221
  %8 = icmp eq i32 %7, 0, !dbg !221
  br i1 %8, label %55, label %9, !dbg !223

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 8, i32 0, !dbg !224
  %11 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 8, i32 0, !dbg !224
  %12 = call i32 @memcmp(i8* %10, i8* %11, i32 6) #6, !dbg !224
  %13 = icmp eq i32 %12, 0, !dbg !224
  br i1 %13, label %14, label %55, !dbg !227

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 9, i32 0, !dbg !228
  %16 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 9, i32 0, !dbg !228
  %17 = call i32 @memcmp(i8* %15, i8* %16, i32 16) #6, !dbg !228
  %18 = icmp eq i32 %17, 0, !dbg !228
  br i1 %18, label %19, label %55, !dbg !229

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 4, !dbg !230
  %21 = load i8, i8* %20, align 1, !dbg !230, !tbaa !231
  %22 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 4, !dbg !232
  %23 = load i8, i8* %22, align 1, !dbg !232, !tbaa !231
  %24 = icmp eq i8 %21, %23, !dbg !233
  br i1 %24, label %25, label %55, !dbg !234

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 5, !dbg !235
  %27 = load i8, i8* %26, align 1, !dbg !235, !tbaa !236
  %28 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 5, !dbg !237
  %29 = load i8, i8* %28, align 1, !dbg !237, !tbaa !236
  %30 = icmp eq i8 %27, %29, !dbg !238
  br i1 %30, label %31, label %55, !dbg !239

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 2, !dbg !240
  %33 = load i8, i8* %32, align 1, !dbg !240, !tbaa !241
  %34 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 2, !dbg !242
  %35 = load i8, i8* %34, align 1, !dbg !242, !tbaa !241
  %36 = icmp eq i8 %33, %35, !dbg !243
  br i1 %36, label %37, label %55, !dbg !244

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 6, !dbg !245
  %39 = load i8, i8* %38, align 1, !dbg !245, !tbaa !192
  %40 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 6, !dbg !246
  %41 = load i8, i8* %40, align 1, !dbg !246, !tbaa !192
  %42 = icmp eq i8 %39, %41, !dbg !247
  br i1 %42, label %43, label %55, !dbg !248

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 7, !dbg !249
  %45 = load i8, i8* %44, align 1, !dbg !249, !tbaa !250
  %46 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 7, !dbg !251
  %47 = load i8, i8* %46, align 1, !dbg !251, !tbaa !250
  %48 = icmp eq i8 %45, %47, !dbg !252
  br i1 %48, label %49, label %55, !dbg !253

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 3, !dbg !254
  %51 = load i8, i8* %50, align 1, !dbg !254, !tbaa !255
  %52 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 3, !dbg !256
  %53 = load i8, i8* %52, align 1, !dbg !256, !tbaa !255
  %54 = icmp eq i8 %51, %53, !dbg !257
  br i1 %54, label %222, label %55, !dbg !258

; <label>:55:                                     ; preds = %49, %43, %37, %31, %25, %19, %14, %9, %2
  %56 = load i32 ()**, i32 ()*** bitcast (%struct.database_file** @dbf_file to i32 ()***), align 4, !dbg !260, !tbaa !139
  %57 = load i32 ()*, i32 ()** %56, align 4, !dbg !262, !tbaa !142
  %58 = tail call i32 %57() #7, !dbg !260
  %59 = icmp eq i32 %58, 0, !dbg !260
  br i1 %59, label %222, label %60, !dbg !263

; <label>:60:                                     ; preds = %55
  %61 = zext i8 %1 to i32
  %62 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 1
  %63 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 0
  %64 = bitcast i16* %62 to i8*
  %65 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 8, i32 0
  %66 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 8, i32 0
  %67 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 9, i32 0
  %68 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 9, i32 0
  %69 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 4
  %70 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 5
  %71 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 3
  %72 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 7
  %73 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 6
  br label %74, !dbg !219

; <label>:74:                                     ; preds = %164, %60
  %75 = phi i16 [ 0, %60 ], [ %154, %164 ]
  %76 = phi i16 [ -1, %60 ], [ %150, %164 ]
  %77 = phi i16 [ 0, %60 ], [ %151, %164 ]
  %78 = phi i16 [ 0, %60 ], [ %103, %164 ]
  %79 = phi i16 [ 0, %60 ], [ %165, %164 ]
  %80 = phi i16 [ 0, %60 ], [ %166, %164 ]
  %81 = icmp eq i16 %79, 0
  br label %82, !dbg !219

; <label>:82:                                     ; preds = %145, %74
  %83 = phi i16 [ %154, %145 ], [ %75, %74 ]
  %84 = phi i16 [ %150, %145 ], [ %76, %74 ]
  %85 = phi i16 [ %151, %145 ], [ %77, %74 ]
  %86 = phi i16 [ %103, %145 ], [ %78, %74 ]
  %87 = phi i16 [ %152, %145 ], [ %80, %74 ]
  call void @llvm.dbg.value(metadata i16 %87, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i16 %79, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %86, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %85, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %84, metadata !206, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i16 %83, metadata !205, metadata !DIExpression()), !dbg !214
  %88 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !264, !tbaa !139
  %89 = getelementptr inbounds %struct.database_file, %struct.database_file* %88, i32 0, i32 6, !dbg !266
  %90 = bitcast i32 (...)** %89 to i32 ()**, !dbg !266
  %91 = load i32 ()*, i32 ()** %90, align 4, !dbg !266, !tbaa !267
  %92 = call i32 %91() #7, !dbg !264
  %93 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !268, !tbaa !139
  %94 = getelementptr inbounds %struct.database_file, %struct.database_file* %93, i32 0, i32 2, !dbg !269
  %95 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %94, align 4, !dbg !269, !tbaa !148
  %96 = call i32 %95(i8* nonnull %5, i32 32, i32 %61) #7, !dbg !268
  %97 = and i32 %96, 65535, !dbg !270
  %98 = icmp eq i32 %97, 32, !dbg !272
  br i1 %98, label %99, label %169, !dbg !273

; <label>:99:                                     ; preds = %82
  br label %100, !dbg !273

; <label>:100:                                    ; preds = %108, %99
  %101 = phi i32 [ %115, %108 ], [ %92, %99 ]
  %102 = phi i16 [ %110, %108 ], [ %87, %99 ]
  %103 = phi i16 [ %109, %108 ], [ %86, %99 ]
  br label %104, !dbg !273

; <label>:104:                                    ; preds = %126, %100
  %105 = phi i32 [ %101, %100 ], [ %138, %126 ]
  %106 = load i16, i16* %62, align 2, !dbg !274, !tbaa !276
  %107 = icmp eq i16 %106, -1, !dbg !277
  br i1 %107, label %108, label %122, !dbg !278

; <label>:108:                                    ; preds = %104
  %109 = trunc i32 %105 to i16, !dbg !264
  call void @llvm.dbg.value(metadata i16 undef, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !216
  %110 = or i16 %102, 2, !dbg !279
  call void @llvm.dbg.value(metadata i16 %110, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i16 %110, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i16 %79, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %85, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %84, metadata !206, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i16 %83, metadata !205, metadata !DIExpression()), !dbg !214
  %111 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !264, !tbaa !139
  %112 = getelementptr inbounds %struct.database_file, %struct.database_file* %111, i32 0, i32 6, !dbg !266
  %113 = bitcast i32 (...)** %112 to i32 ()**, !dbg !266
  %114 = load i32 ()*, i32 ()** %113, align 4, !dbg !266, !tbaa !267
  %115 = call i32 %114() #7, !dbg !264
  %116 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !268, !tbaa !139
  %117 = getelementptr inbounds %struct.database_file, %struct.database_file* %116, i32 0, i32 2, !dbg !269
  %118 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %117, align 4, !dbg !269, !tbaa !148
  %119 = call i32 %118(i8* nonnull %5, i32 32, i32 %61) #7, !dbg !268
  %120 = and i32 %119, 65535, !dbg !270
  %121 = icmp eq i32 %120, 32, !dbg !272
  br i1 %121, label %100, label %168, !dbg !273, !llvm.loop !281

; <label>:122:                                    ; preds = %104
  %123 = load i16, i16* %63, align 2, !dbg !284, !tbaa !162
  %124 = call zeroext i16 @chip_crc16(i8* nonnull %64, i32 30) #7, !dbg !286
  %125 = icmp eq i16 %123, %124, !dbg !287
  br i1 %125, label %145, label %126, !dbg !288

; <label>:126:                                    ; preds = %122
  %127 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !289, !tbaa !139
  %128 = getelementptr inbounds %struct.database_file, %struct.database_file* %127, i32 0, i32 4, !dbg !291
  %129 = load void (i32, i32)*, void (i32, i32)** %128, align 4, !dbg !291, !tbaa !292
  call void %129(i32 2, i32 32) #7, !dbg !289
  call void @llvm.memset.p0i8.i32(i8* nonnull %5, i8 -1, i32 32, i32 2, i1 false), !dbg !293
  %130 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !294, !tbaa !139
  %131 = getelementptr inbounds %struct.database_file, %struct.database_file* %130, i32 0, i32 3, !dbg !295
  %132 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %131, align 4, !dbg !295, !tbaa !296
  %133 = call i32 %132(i8* nonnull %5, i32 32, i32 %61) #7, !dbg !294
  call void @llvm.dbg.value(metadata i16 %102, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i16 %79, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %103, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %85, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %84, metadata !206, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i16 %83, metadata !205, metadata !DIExpression()), !dbg !214
  %134 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !264, !tbaa !139
  %135 = getelementptr inbounds %struct.database_file, %struct.database_file* %134, i32 0, i32 6, !dbg !266
  %136 = bitcast i32 (...)** %135 to i32 ()**, !dbg !266
  %137 = load i32 ()*, i32 ()** %136, align 4, !dbg !266, !tbaa !267
  %138 = call i32 %137() #7, !dbg !264
  %139 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !268, !tbaa !139
  %140 = getelementptr inbounds %struct.database_file, %struct.database_file* %139, i32 0, i32 2, !dbg !269
  %141 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %140, align 4, !dbg !269, !tbaa !148
  %142 = call i32 %141(i8* nonnull %5, i32 32, i32 %61) #7, !dbg !268
  %143 = and i32 %142, 65535, !dbg !270
  %144 = icmp eq i32 %143, 32, !dbg !272
  br i1 %144, label %104, label %167, !dbg !273, !llvm.loop !281

; <label>:145:                                    ; preds = %122
  %146 = trunc i32 %105 to i16, !dbg !264
  %147 = load i16, i16* %62, align 2, !dbg !297, !tbaa !276
  %148 = icmp ugt i16 %84, %147, !dbg !299
  call void @llvm.dbg.value(metadata i16 %147, metadata !206, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i16 undef, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !216
  %149 = or i16 %102, 4, !dbg !300
  call void @llvm.dbg.value(metadata i16 %149, metadata !213, metadata !DIExpression()), !dbg !219
  %150 = select i1 %148, i16 %147, i16 %84, !dbg !302
  %151 = select i1 %148, i16 %146, i16 %85, !dbg !302
  %152 = select i1 %148, i16 %149, i16 %102, !dbg !302
  call void @llvm.dbg.value(metadata i16 %152, metadata !213, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i16 %151, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !216
  call void @llvm.dbg.value(metadata i16 %150, metadata !206, metadata !DIExpression()), !dbg !215
  %153 = icmp ult i16 %83, %147, !dbg !303
  call void @llvm.dbg.value(metadata i16 %147, metadata !205, metadata !DIExpression()), !dbg !214
  %154 = select i1 %153, i16 %147, i16 %83, !dbg !305
  call void @llvm.dbg.value(metadata i16 %154, metadata !205, metadata !DIExpression()), !dbg !214
  br i1 %81, label %155, label %82, !dbg !306, !llvm.loop !281

; <label>:155:                                    ; preds = %145
  %156 = call i32 @memcmp(i8* %65, i8* nonnull %66, i32 6) #6, !dbg !308
  %157 = icmp eq i32 %156, 0, !dbg !308
  br i1 %157, label %158, label %164, !dbg !310

; <label>:158:                                    ; preds = %155
  %159 = call i32 @memcmp(i8* %67, i8* nonnull %68, i32 16) #6, !dbg !312
  %160 = icmp eq i32 %159, 0, !dbg !312
  br i1 %160, label %162, label %161, !dbg !315

; <label>:161:                                    ; preds = %158
  store i8 -1, i8* %69, align 1, !dbg !316, !tbaa !231
  store i8 -1, i8* %70, align 1, !dbg !318, !tbaa !236
  store i8 0, i8* %71, align 1, !dbg !319, !tbaa !255
  store i8 0, i8* %72, align 1, !dbg !320, !tbaa !250
  store i8 3, i8* %73, align 1, !dbg !321, !tbaa !192
  br label %162, !dbg !322

; <label>:162:                                    ; preds = %161, %158
  call void @llvm.dbg.value(metadata i16 undef, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !216
  %163 = or i16 %152, 1, !dbg !323
  call void @llvm.dbg.value(metadata i16 %163, metadata !213, metadata !DIExpression()), !dbg !219
  br label %164, !dbg !324

; <label>:164:                                    ; preds = %162, %155
  %165 = phi i16 [ %146, %162 ], [ 0, %155 ]
  %166 = phi i16 [ %163, %162 ], [ %152, %155 ]
  br label %74, !llvm.loop !281

; <label>:167:                                    ; preds = %126
  br label %170, !dbg !325

; <label>:168:                                    ; preds = %108
  br label %170, !dbg !325

; <label>:169:                                    ; preds = %82
  br label %170, !dbg !325

; <label>:170:                                    ; preds = %169, %168, %167
  %171 = phi i16 [ %103, %167 ], [ %109, %168 ], [ %86, %169 ]
  %172 = phi i16 [ %102, %167 ], [ %110, %168 ], [ %87, %169 ]
  %173 = add i16 %83, 1, !dbg !325
  %174 = getelementptr %struct._remote_database, %struct._remote_database* %0, i32 0, i32 1, !dbg !326
  %175 = icmp eq i16 %173, -1, !dbg !327
  %176 = select i1 %175, i16 1, i16 %173, !dbg !329
  store i16 %176, i16* %174, align 1, !dbg !330, !tbaa !276
  %177 = bitcast %struct._remote_database* %0 to i8*, !dbg !331
  %178 = bitcast i16* %174 to i8*, !dbg !331
  %179 = call zeroext i16 @chip_crc16(i8* %178, i32 30) #7, !dbg !331
  %180 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 0, i32 0, !dbg !332
  store i16 %179, i16* %180, align 1, !dbg !333, !tbaa !162
  %181 = zext i16 %172 to i32, !dbg !334
  %182 = icmp eq i16 %172, 0, !dbg !336
  br i1 %182, label %183, label %191, !dbg !337

; <label>:183:                                    ; preds = %170
  %184 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !338, !tbaa !139
  %185 = getelementptr inbounds %struct.database_file, %struct.database_file* %184, i32 0, i32 6, !dbg !340
  %186 = bitcast i32 (...)** %185 to i32 ()**, !dbg !340
  %187 = load i32 ()*, i32 ()** %186, align 4, !dbg !340, !tbaa !267
  %188 = call i32 %187() #7, !dbg !338
  %189 = add i32 %188, 65504, !dbg !341
  %190 = trunc i32 %189 to i16, !dbg !338
  call void @llvm.dbg.value(metadata i16 %190, metadata !204, metadata !DIExpression()), !dbg !342
  br label %208, !dbg !343

; <label>:191:                                    ; preds = %170
  %192 = and i32 %181, 1, !dbg !344
  %193 = icmp eq i32 %192, 0, !dbg !344
  br i1 %193, label %194, label %208, !dbg !347

; <label>:194:                                    ; preds = %191
  %195 = and i32 %181, 2, !dbg !349
  %196 = icmp eq i32 %195, 0, !dbg !349
  br i1 %196, label %197, label %208, !dbg !352

; <label>:197:                                    ; preds = %194
  %198 = and i32 %181, 4, !dbg !353
  %199 = icmp eq i32 %198, 0, !dbg !353
  br i1 %199, label %200, label %208, !dbg !356

; <label>:200:                                    ; preds = %197
  %201 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !357, !tbaa !139
  %202 = getelementptr inbounds %struct.database_file, %struct.database_file* %201, i32 0, i32 6, !dbg !359
  %203 = bitcast i32 (...)** %202 to i32 ()**, !dbg !359
  %204 = load i32 ()*, i32 ()** %203, align 4, !dbg !359, !tbaa !267
  %205 = call i32 %204() #7, !dbg !357
  %206 = add i32 %205, 65504, !dbg !360
  %207 = trunc i32 %206 to i16, !dbg !357
  call void @llvm.dbg.value(metadata i16 %207, metadata !204, metadata !DIExpression()), !dbg !342
  br label %208

; <label>:208:                                    ; preds = %200, %197, %194, %191, %183
  %209 = phi i16 [ %190, %183 ], [ %207, %200 ], [ %79, %191 ], [ %171, %194 ], [ %85, %197 ]
  call void @llvm.dbg.value(metadata i16 %209, metadata !204, metadata !DIExpression()), !dbg !342
  %210 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !361, !tbaa !139
  %211 = getelementptr inbounds %struct.database_file, %struct.database_file* %210, i32 0, i32 4, !dbg !362
  %212 = load void (i32, i32)*, void (i32, i32)** %211, align 4, !dbg !362, !tbaa !292
  %213 = zext i16 %209 to i32, !dbg !363
  call void %212(i32 0, i32 %213) #7, !dbg !361
  %214 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !364, !tbaa !139
  %215 = getelementptr inbounds %struct.database_file, %struct.database_file* %214, i32 0, i32 3, !dbg !365
  %216 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %215, align 4, !dbg !365, !tbaa !296
  %217 = call i32 %216(i8* %177, i32 32, i32 %61) #7, !dbg !364
  %218 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !366, !tbaa !139
  %219 = getelementptr inbounds %struct.database_file, %struct.database_file* %218, i32 0, i32 1, !dbg !367
  %220 = bitcast void (...)** %219 to void ()**, !dbg !367
  %221 = load void ()*, void ()** %220, align 4, !dbg !367, !tbaa !170
  call void %221() #7, !dbg !366
  br label %222, !dbg !368

; <label>:222:                                    ; preds = %208, %55, %49
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5, !dbg !369
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #5, !dbg !369
  ret void
}

; Function Attrs: nounwind optsize
define hidden i32 @get_link_key([6 x i8]* nocapture readonly, [16 x i8]* nocapture, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !370 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !375, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata [16 x i8]* %1, metadata !376, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i8 %2, metadata !377, metadata !DIExpression()), !dbg !382
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !383
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5, !dbg !383
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !378, metadata !DIExpression()), !dbg !384
  %7 = bitcast %struct._remote_database* %5 to i8*, !dbg !385
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #5, !dbg !385
  %8 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !386
  %9 = icmp eq i8 %8, 0, !dbg !386
  br i1 %9, label %12, label %10, !dbg !388

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0, !dbg !389
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @own_private_linkkey, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !389
  br label %29, !dbg !391

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* @CONFIG_BTCTLER_FAST_CONNECT_ENABLE, align 4, !dbg !392, !tbaa !394
  %14 = icmp eq i32 %13, 0, !dbg !392
  br i1 %14, label %15, label %29, !dbg !396

; <label>:15:                                     ; preds = %12
  %16 = load volatile i8, i8* @temp_link_key_flag, align 1, !dbg !397, !tbaa !73
  %17 = icmp eq i8 %16, 0, !dbg !397
  br i1 %17, label %20, label %18, !dbg !399

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0, !dbg !400
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @temp_device_connect_linkkey, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !400
  br label %29, !dbg !402

; <label>:20:                                     ; preds = %15
  call void @llvm.dbg.value(metadata %struct._remote_database* %5, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !403
  %21 = call fastcc i32 @get_database(%struct._remote_database* nonnull %5, [6 x i8]* %0, i8 zeroext %2) #6, !dbg !404
  %22 = icmp eq i32 %21, 0, !dbg !404
  br i1 %22, label %29, label %23, !dbg !406

; <label>:23:                                     ; preds = %20
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 16, i32 1, i1 false), !dbg !407
  %24 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 9, i32 0, !dbg !408
  %25 = call i32 @memcmp(i8* nonnull %6, i8* %24, i32 16) #6, !dbg !410
  %26 = icmp eq i32 %25, 0, !dbg !410
  br i1 %26, label %29, label %27, !dbg !411

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0, !dbg !412
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %24, i32 16, i32 1, i1 false), !dbg !412
  br label %29, !dbg !413

; <label>:29:                                     ; preds = %27, %23, %20, %18, %12, %10
  %30 = phi i32 [ 1, %10 ], [ 1, %18 ], [ 1, %27 ], [ 0, %12 ], [ 0, %20 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #5, !dbg !414
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5, !dbg !414
  ret i32 %30, !dbg !414
}

; Function Attrs: optsize
declare zeroext i8 @get_remote_test_flag(...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @put_link_key([6 x i8]* nocapture readonly, [16 x i8]* nocapture readonly, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !415 {
  %5 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !419, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata [16 x i8]* %1, metadata !420, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8 %2, metadata !421, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8 %3, metadata !422, metadata !DIExpression()), !dbg !427
  %6 = bitcast %struct._remote_database* %5 to i8*, !dbg !428
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5, !dbg !428
  %7 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !429
  %8 = icmp eq i8 %7, 0, !dbg !429
  br i1 %8, label %9, label %29, !dbg !431

; <label>:9:                                      ; preds = %4
  %10 = load volatile i8, i8* @temp_link_key_flag, align 1, !dbg !432, !tbaa !73
  %11 = icmp eq i8 %10, 0, !dbg !432
  %12 = load i32, i32* @CONFIG_BTCTLER_FAST_CONNECT_ENABLE, align 4, !dbg !434
  %13 = icmp eq i32 %12, 0, !dbg !434
  %14 = and i1 %11, %13, !dbg !436
  br i1 %14, label %15, label %29, !dbg !436

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct._remote_database* %5, metadata !423, metadata !DIExpression(DW_OP_deref)), !dbg !437
  %16 = call fastcc i32 @get_database(%struct._remote_database* nonnull %5, [6 x i8]* %0, i8 zeroext %3) #6, !dbg !438
  %17 = icmp eq i32 %16, 0, !dbg !438
  br i1 %17, label %18, label %24, !dbg !440

; <label>:18:                                     ; preds = %15
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 32, i32 1, i1 false), !dbg !441
  %19 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 5, !dbg !443
  store i8 -1, i8* %19, align 1, !dbg !444, !tbaa !236
  %20 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 4, !dbg !445
  store i8 -1, i8* %20, align 1, !dbg !446, !tbaa !231
  %21 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 3, !dbg !447
  store i8 0, i8* %21, align 1, !dbg !448, !tbaa !255
  %22 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 7, !dbg !449
  store i8 0, i8* %22, align 1, !dbg !450, !tbaa !250
  %23 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 6, !dbg !451
  store i8 3, i8* %23, align 1, !dbg !452, !tbaa !192
  br label %24, !dbg !453

; <label>:24:                                     ; preds = %18, %15
  %25 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 8, i32 0, !dbg !454
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0, !dbg !454
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 6, i32 1, i1 false), !dbg !454
  %27 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 9, i32 0, !dbg !455
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0, !dbg !455
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 16, i32 1, i1 false), !dbg !455
  call void @llvm.dbg.value(metadata %struct._remote_database* %5, metadata !423, metadata !DIExpression(DW_OP_deref)), !dbg !437
  call fastcc void @put_database(%struct._remote_database* nonnull %5, i8 zeroext %3) #6, !dbg !456
  br label %29, !dbg !457

; <label>:29:                                     ; preds = %24, %9, %4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5, !dbg !457
  ret void, !dbg !458
}

; Function Attrs: nounwind optsize
define hidden void @updata_last_link_key([6 x i8]* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !460 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !464, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8 %1, metadata !465, metadata !DIExpression()), !dbg !468
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0, !dbg !469
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5, !dbg !469
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !466, metadata !DIExpression()), !dbg !470
  %5 = call i32 @get_link_key([6 x i8]* %0, [16 x i8]* nonnull %3, i8 zeroext %1) #6, !dbg !471
  %6 = icmp eq i32 %5, 0, !dbg !471
  br i1 %6, label %8, label %7, !dbg !473

; <label>:7:                                      ; preds = %2
  call void @put_link_key([6 x i8]* %0, [16 x i8]* nonnull %3, i8 zeroext undef, i8 zeroext %1) #6, !dbg !474
  br label %8, !dbg !476

; <label>:8:                                      ; preds = %7, %2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5, !dbg !477
  ret void, !dbg !477
}

; Function Attrs: nounwind optsize
define hidden void @delete_link_key([6 x i8]* readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !478 {
  %3 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i8 %1, metadata !481, metadata !DIExpression()), !dbg !483
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !484
  %5 = load i32 ()**, i32 ()*** bitcast (%struct.database_file** @dbf_file to i32 ()***), align 4, !dbg !492, !tbaa !139
  %6 = load i32 ()*, i32 ()** %5, align 4, !dbg !494, !tbaa !142
  %7 = tail call i32 %6() #7, !dbg !492
  %8 = icmp eq i32 %7, 0, !dbg !492
  br i1 %8, label %52, label %9, !dbg !495

; <label>:9:                                      ; preds = %2
  %10 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !496, !tbaa !139
  %11 = getelementptr inbounds %struct.database_file, %struct.database_file* %10, i32 0, i32 2, !dbg !498
  %12 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %11, align 4, !dbg !498, !tbaa !148
  %13 = zext i8 %1 to i32, !dbg !499
  %14 = call i32 %12(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !496
  call void @llvm.dbg.value(metadata i32 %14, metadata !489, metadata !DIExpression()), !dbg !500
  %15 = icmp eq i32 %14, 32, !dbg !501
  br i1 %15, label %16, label %47, !dbg !503

; <label>:16:                                     ; preds = %9
  %17 = icmp eq [6 x i8]* %0, null
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0
  %19 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 8, i32 0
  br label %20, !dbg !503

; <label>:20:                                     ; preds = %40, %16
  br i1 %17, label %32, label %21, !dbg !504

; <label>:21:                                     ; preds = %20
  %22 = call i32 @memcmp(i8* %18, i8* %19, i32 6) #7, !dbg !505
  %23 = icmp eq i32 %22, 0, !dbg !505
  br i1 %23, label %24, label %40, !dbg !509

; <label>:24:                                     ; preds = %21
  %25 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !510, !tbaa !139
  %26 = getelementptr inbounds %struct.database_file, %struct.database_file* %25, i32 0, i32 4, !dbg !512
  %27 = load void (i32, i32)*, void (i32, i32)** %26, align 4, !dbg !512, !tbaa !292
  call void %27(i32 2, i32 32) #7, !dbg !510
  call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 -1, i32 32, i32 1, i1 false) #5, !dbg !513
  %28 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !514, !tbaa !139
  %29 = getelementptr inbounds %struct.database_file, %struct.database_file* %28, i32 0, i32 3, !dbg !515
  %30 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %29, align 4, !dbg !515, !tbaa !296
  %31 = call i32 %30(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !514
  br label %47, !dbg !516

; <label>:32:                                     ; preds = %20
  %33 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !517, !tbaa !139
  %34 = getelementptr inbounds %struct.database_file, %struct.database_file* %33, i32 0, i32 4, !dbg !519
  %35 = load void (i32, i32)*, void (i32, i32)** %34, align 4, !dbg !519, !tbaa !292
  call void %35(i32 2, i32 32) #7, !dbg !517
  call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 -1, i32 32, i32 1, i1 false) #5, !dbg !520
  %36 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !521, !tbaa !139
  %37 = getelementptr inbounds %struct.database_file, %struct.database_file* %36, i32 0, i32 3, !dbg !522
  %38 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %37, align 4, !dbg !522, !tbaa !296
  %39 = call i32 %38(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !521
  br label %40

; <label>:40:                                     ; preds = %32, %21
  %41 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !496, !tbaa !139
  %42 = getelementptr inbounds %struct.database_file, %struct.database_file* %41, i32 0, i32 2, !dbg !498
  %43 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %42, align 4, !dbg !498, !tbaa !148
  %44 = call i32 %43(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !496
  call void @llvm.dbg.value(metadata i32 %44, metadata !489, metadata !DIExpression()), !dbg !500
  %45 = icmp eq i32 %44, 32, !dbg !501
  br i1 %45, label %20, label %46, !dbg !503, !llvm.loop !523

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !526

; <label>:47:                                     ; preds = %46, %24, %9
  %48 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !526, !tbaa !139
  %49 = getelementptr inbounds %struct.database_file, %struct.database_file* %48, i32 0, i32 1, !dbg !527
  %50 = bitcast void (...)** %49 to void ()**, !dbg !527
  %51 = load void ()*, void ()** %50, align 4, !dbg !527, !tbaa !170
  call void %51() #7, !dbg !526
  br label %52, !dbg !528

; <label>:52:                                     ; preds = %47, %2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @handle_a2dp_discover_flag([6 x i8]* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !531 {
  %3 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !535, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i8 %1, metadata !536, metadata !DIExpression()), !dbg !539
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !540
  %5 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !541
  %6 = icmp eq i8 %5, 0, !dbg !541
  br i1 %6, label %7, label %22, !dbg !543

; <label>:7:                                      ; preds = %2
  %8 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !544, !tbaa !139
  %9 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 9, !dbg !546
  %10 = load i32, i32* %9, align 1, !dbg !546
  %11 = and i32 %10, 1048576, !dbg !544
  %12 = icmp eq i32 %11, 0, !dbg !544
  br i1 %12, label %13, label %22, !dbg !547

; <label>:13:                                     ; preds = %7
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !537, metadata !DIExpression(DW_OP_deref)), !dbg !548
  %14 = call fastcc i32 @get_database(%struct._remote_database* nonnull %3, [6 x i8]* %0, i8 zeroext 0) #6, !dbg !549
  %15 = icmp eq i32 %14, 0, !dbg !549
  br i1 %15, label %22, label %16, !dbg !551

; <label>:16:                                     ; preds = %13
  %17 = icmp eq i8 %1, -1, !dbg !552
  %18 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 3
  br i1 %17, label %19, label %21, !dbg !554

; <label>:19:                                     ; preds = %16
  %20 = load i8, i8* %18, align 1, !dbg !555, !tbaa !255
  br label %22, !dbg !557

; <label>:21:                                     ; preds = %16
  store i8 %1, i8* %18, align 1, !dbg !558, !tbaa !255
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !537, metadata !DIExpression(DW_OP_deref)), !dbg !548
  call fastcc void @put_database(%struct._remote_database* nonnull %3, i8 zeroext 0) #6, !dbg !560
  br label %22, !dbg !561

; <label>:22:                                     ; preds = %21, %19, %13, %7, %2
  %23 = phi i8 [ %20, %19 ], [ 0, %21 ], [ 0, %2 ], [ 0, %7 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !562
  ret i8 %23, !dbg !562
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @handle_att_connect_flag([6 x i8]* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !563 {
  %3 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !565, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8 %1, metadata !566, metadata !DIExpression()), !dbg !569
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !570
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !570
  %5 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !571
  %6 = icmp eq i8 %5, 0, !dbg !571
  br i1 %6, label %7, label %23, !dbg !573

; <label>:7:                                      ; preds = %2
  %8 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !574, !tbaa !139
  %9 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 9, !dbg !576
  %10 = load i32, i32* %9, align 1, !dbg !576
  %11 = and i32 %10, 1048576, !dbg !574
  %12 = icmp eq i32 %11, 0, !dbg !574
  br i1 %12, label %13, label %23, !dbg !577

; <label>:13:                                     ; preds = %7
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !567, metadata !DIExpression(DW_OP_deref)), !dbg !578
  %14 = call fastcc i32 @get_database(%struct._remote_database* nonnull %3, [6 x i8]* %0, i8 zeroext 0) #6, !dbg !579
  %15 = icmp eq i32 %14, 0, !dbg !579
  br i1 %15, label %23, label %16, !dbg !581

; <label>:16:                                     ; preds = %13
  %17 = icmp eq i8 %1, -1, !dbg !582
  %18 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 7
  %19 = load i8, i8* %18, align 1, !tbaa !250
  br i1 %17, label %23, label %20, !dbg !584

; <label>:20:                                     ; preds = %16
  %21 = icmp eq i8 %19, %1, !dbg !585
  br i1 %21, label %23, label %22, !dbg !588

; <label>:22:                                     ; preds = %20
  store i8 %1, i8* %18, align 1, !dbg !589, !tbaa !250
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !567, metadata !DIExpression(DW_OP_deref)), !dbg !578
  call fastcc void @put_database(%struct._remote_database* nonnull %3, i8 zeroext 0) #6, !dbg !591
  br label %23, !dbg !592

; <label>:23:                                     ; preds = %22, %20, %16, %13, %7, %2
  %24 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 0, %13 ], [ %19, %16 ], [ 0, %20 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !593
  ret i8 %24, !dbg !593
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @hfp_volume_interface(i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !594 {
  %3 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !598, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i8 %1, metadata !599, metadata !DIExpression()), !dbg !602
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !603
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !603
  %5 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !604
  %6 = icmp eq i8 %5, 0, !dbg !604
  br i1 %6, label %7, label %28, !dbg !606

; <label>:7:                                      ; preds = %2
  %8 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !607, !tbaa !139
  %9 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 9, !dbg !609
  %10 = load i32, i32* %9, align 1, !dbg !609
  %11 = and i32 %10, 1048576, !dbg !607
  %12 = icmp eq i32 %11, 0, !dbg !607
  br i1 %12, label %13, label %28, !dbg !610

; <label>:13:                                     ; preds = %7
  %14 = bitcast i8* %0 to [6 x i8]*, !dbg !611
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !600, metadata !DIExpression(DW_OP_deref)), !dbg !613
  %15 = call fastcc i32 @get_database(%struct._remote_database* nonnull %3, [6 x i8]* %14, i8 zeroext 0) #6, !dbg !614
  %16 = icmp eq i32 %15, 0, !dbg !614
  br i1 %16, label %28, label %17, !dbg !615

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i8 %1, -1, !dbg !616
  br i1 %18, label %19, label %21, !dbg !618

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 5, !dbg !619
  br label %25, !dbg !618

; <label>:21:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8 15, metadata !599, metadata !DIExpression()), !dbg !602
  %22 = icmp ult i8 %1, 15, !dbg !620
  %23 = select i1 %22, i8 %1, i8 15, !dbg !620
  call void @llvm.dbg.value(metadata i8 %23, metadata !599, metadata !DIExpression()), !dbg !602
  %24 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 5, !dbg !622
  store i8 %23, i8* %24, align 1, !dbg !623, !tbaa !236
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !600, metadata !DIExpression(DW_OP_deref)), !dbg !613
  call fastcc void @put_database(%struct._remote_database* nonnull %3, i8 zeroext 0) #6, !dbg !624
  br label %25

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i8* [ %20, %19 ], [ %24, %21 ], !dbg !619
  %27 = load i8, i8* %26, align 1, !dbg !619, !tbaa !236
  br label %28, !dbg !625

; <label>:28:                                     ; preds = %25, %13, %7, %2
  %29 = phi i8 [ %27, %25 ], [ -1, %2 ], [ -1, %7 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !626
  ret i8 %29, !dbg !626
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @avrcp_volume_interface(i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !627 {
  %3 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !629, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8 %1, metadata !630, metadata !DIExpression()), !dbg !633
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !634
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !634
  %5 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !635
  %6 = icmp eq i8 %5, 0, !dbg !635
  br i1 %6, label %7, label %28, !dbg !637

; <label>:7:                                      ; preds = %2
  %8 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !638, !tbaa !139
  %9 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 9, !dbg !640
  %10 = load i32, i32* %9, align 1, !dbg !640
  %11 = and i32 %10, 1048576, !dbg !638
  %12 = icmp eq i32 %11, 0, !dbg !638
  br i1 %12, label %13, label %28, !dbg !641

; <label>:13:                                     ; preds = %7
  %14 = bitcast i8* %0 to [6 x i8]*, !dbg !642
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !631, metadata !DIExpression(DW_OP_deref)), !dbg !644
  %15 = call fastcc i32 @get_database(%struct._remote_database* nonnull %3, [6 x i8]* %14, i8 zeroext 0) #6, !dbg !645
  %16 = icmp eq i32 %15, 0, !dbg !645
  br i1 %16, label %28, label %17, !dbg !646

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i8 %1, -1, !dbg !647
  br i1 %18, label %19, label %21, !dbg !649

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 4, !dbg !650
  br label %25, !dbg !649

; <label>:21:                                     ; preds = %17
  %22 = icmp slt i8 %1, 0, !dbg !651
  call void @llvm.dbg.value(metadata i8 127, metadata !630, metadata !DIExpression()), !dbg !633
  %23 = select i1 %22, i8 127, i8 %1, !dbg !654
  call void @llvm.dbg.value(metadata i8 %23, metadata !630, metadata !DIExpression()), !dbg !633
  %24 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 4, !dbg !655
  store i8 %23, i8* %24, align 1, !dbg !656, !tbaa !231
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !631, metadata !DIExpression(DW_OP_deref)), !dbg !644
  call fastcc void @put_database(%struct._remote_database* nonnull %3, i8 zeroext 0) #6, !dbg !657
  br label %25

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i8* [ %20, %19 ], [ %24, %21 ], !dbg !650
  %27 = load i8, i8* %26, align 1, !dbg !650, !tbaa !231
  br label %28, !dbg !658

; <label>:28:                                     ; preds = %25, %13, %7, %2
  %29 = phi i8 [ %27, %25 ], [ -1, %2 ], [ -1, %7 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !659
  ret i8 %29, !dbg !659
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @handle_remote_dev_type([6 x i8]* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !660 {
  %3 = alloca %struct._remote_database, align 1
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !662, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8 %1, metadata !663, metadata !DIExpression()), !dbg !668
  %5 = bitcast %struct._remote_database* %3 to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #5, !dbg !669
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !670
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5, !dbg !670
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !665, metadata !DIExpression()), !dbg !671
  %7 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !672
  %8 = icmp eq i8 %7, 0, !dbg !673
  br i1 %8, label %9, label %30, !dbg !675

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !664, metadata !DIExpression(DW_OP_deref)), !dbg !676
  %10 = call fastcc i32 @get_database(%struct._remote_database* nonnull %3, [6 x i8]* %0, i8 zeroext 0) #6, !dbg !677
  %11 = icmp eq i32 %10, 0, !dbg !677
  %12 = icmp eq i8 %1, -1
  br i1 %11, label %13, label %22, !dbg !679

; <label>:13:                                     ; preds = %9
  br i1 %12, label %30, label %14, !dbg !680

; <label>:14:                                     ; preds = %13
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 16, i32 1, i1 false), !dbg !682
  call void @llvm.memset.p0i8.i32(i8* nonnull %5, i8 0, i32 32, i32 1, i1 false), !dbg !685
  %15 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 8, i32 0, !dbg !686
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0, !dbg !686
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 6, i32 1, i1 false), !dbg !686
  %17 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 5, !dbg !687
  store i8 -1, i8* %17, align 1, !dbg !688, !tbaa !236
  %18 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 4, !dbg !689
  store i8 -1, i8* %18, align 1, !dbg !690, !tbaa !231
  %19 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 6, !dbg !691
  store i8 3, i8* %19, align 1, !dbg !692, !tbaa !192
  call void @put_link_key([6 x i8]* %0, [16 x i8]* nonnull %4, i8 zeroext undef, i8 zeroext 0) #6, !dbg !693
  %20 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !241
  br label %25, !dbg !694

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 2
  %24 = load i8, i8* %23, align 1, !tbaa !241
  br i1 %12, label %30, label %25, !dbg !694

; <label>:25:                                     ; preds = %22, %14
  %26 = phi i8 [ %21, %14 ], [ %24, %22 ]
  %27 = phi i8* [ %20, %14 ], [ %23, %22 ]
  %28 = icmp eq i8 %26, %1, !dbg !695
  br i1 %28, label %30, label %29, !dbg !699

; <label>:29:                                     ; preds = %25
  store i8 %1, i8* %27, align 1, !dbg !700, !tbaa !241
  call void @llvm.dbg.value(metadata %struct._remote_database* %3, metadata !664, metadata !DIExpression(DW_OP_deref)), !dbg !676
  call fastcc void @put_database(%struct._remote_database* nonnull %3, i8 zeroext 0) #6, !dbg !701
  br label %30, !dbg !702

; <label>:30:                                     ; preds = %29, %25, %22, %13, %2
  %31 = phi i8 [ 0, %29 ], [ 0, %2 ], [ 0, %13 ], [ %24, %22 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5, !dbg !703
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #5, !dbg !703
  ret i8 %31, !dbg !703
}

; Function Attrs: nounwind optsize
define hidden void @remote_device_db_init_opt(%struct.database_file*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !704 {
  call void @llvm.dbg.value(metadata %struct.database_file* %0, metadata !708, metadata !DIExpression()), !dbg !709
  store %struct.database_file* %0, %struct.database_file** @dbf_file, align 4, !dbg !710, !tbaa !139
  ret void, !dbg !711
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @restore_remote_device_info_opt([6 x i8]* nocapture, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !712 {
  %4 = alloca %struct._remote_database, align 1
  %5 = alloca [10 x %struct._remote_database], align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !716, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i8 %1, metadata !717, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8 %2, metadata !718, metadata !DIExpression()), !dbg !730
  %6 = bitcast %struct._remote_database* %4 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5, !dbg !731
  call void @llvm.dbg.value(metadata i8 0, metadata !721, metadata !DIExpression()), !dbg !732
  %7 = bitcast [10 x %struct._remote_database]* %5 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %7) #5, !dbg !733
  tail call void @llvm.dbg.declare(metadata [10 x %struct._remote_database]* %5, metadata !724, metadata !DIExpression()), !dbg !734
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 320, i32 1, i1 false), !dbg !735
  %8 = load i8, i8* @more_addr_reconnect_support, align 1, !dbg !736, !tbaa !73
  %9 = icmp ne i8 %8, 0, !dbg !736
  %10 = add i8 %1, -2, !dbg !738
  %11 = icmp ult i8 %10, 8, !dbg !738
  %12 = and i1 %11, %9, !dbg !741
  br i1 %12, label %13, label %29, !dbg !741

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %5, i32 0, i32 0, !dbg !735
  %15 = zext i8 %1 to i32, !dbg !742
  %16 = call fastcc i32 @get_last_N_database(%struct._remote_database* nonnull %14, i32 %15, i8 zeroext %2, i8 zeroext 0) #6, !dbg !743
  %17 = trunc i32 %16 to i8, !dbg !743
  call void @llvm.dbg.value(metadata i8 %17, metadata !721, metadata !DIExpression()), !dbg !732
  %18 = and i32 %16, 255, !dbg !745
  call void @llvm.dbg.value(metadata i32 %18, metadata !723, metadata !DIExpression()), !dbg !746
  %19 = icmp eq i32 %18, 0, !dbg !747
  br i1 %19, label %36, label %20, !dbg !749

; <label>:20:                                     ; preds = %13
  br label %21, !dbg !750

; <label>:21:                                     ; preds = %21, %20
  %22 = phi i32 [ %24, %21 ], [ %18, %20 ]
  %23 = phi i32 [ %27, %21 ], [ 0, %20 ]
  %24 = add nsw i32 %22, -1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %24, metadata !723, metadata !DIExpression()), !dbg !746
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 %24, i32 0, !dbg !755
  %26 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %5, i32 0, i32 %23, i32 8, i32 0, !dbg !755
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 6, i32 1, i1 false), !dbg !755
  %27 = add nuw nsw i32 %23, 1, !dbg !756
  call void @llvm.dbg.value(metadata i32 %27, metadata !722, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 %24, metadata !723, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i32 %27, metadata !722, metadata !DIExpression()), !dbg !758
  %28 = icmp eq i32 %27, %18, !dbg !759
  br i1 %28, label %35, label %21, !dbg !761, !llvm.loop !763

; <label>:29:                                     ; preds = %3
  call void @llvm.dbg.value(metadata %struct._remote_database* %4, metadata !719, metadata !DIExpression(DW_OP_deref)), !dbg !766
  %30 = call fastcc i32 @get_last_database(%struct._remote_database* nonnull %4, i8 zeroext %2) #6, !dbg !767
  %31 = icmp eq i32 %30, 0, !dbg !767
  br i1 %31, label %36, label %32, !dbg !770

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0, !dbg !771
  %34 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %4, i32 0, i32 8, i32 0, !dbg !771
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 6, i32 1, i1 false), !dbg !771
  call void @llvm.dbg.value(metadata i8 1, metadata !720, metadata !DIExpression()), !dbg !773
  br label %36

; <label>:35:                                     ; preds = %21
  br label %36, !dbg !774

; <label>:36:                                     ; preds = %35, %32, %29, %13
  %37 = phi i8 [ 0, %13 ], [ 1, %32 ], [ 0, %29 ], [ %17, %35 ]
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %7) #5, !dbg !774
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5, !dbg !774
  ret i8 %37, !dbg !774
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @get_last_N_database(%struct._remote_database* nocapture, i32, i8 zeroext, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !775 {
  %5 = alloca %struct._remote_database, align 2
  %6 = alloca [10 x %struct._remote_database], align 1
  call void @llvm.dbg.value(metadata %struct._remote_database* %0, metadata !779, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i32 %1, metadata !780, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8 %2, metadata !781, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %3, metadata !782, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 0, metadata !786, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()), !dbg !797
  %7 = bitcast %struct._remote_database* %5 to i8*, !dbg !798
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #5, !dbg !798
  %8 = bitcast [10 x %struct._remote_database]* %6 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %8) #5, !dbg !799
  tail call void @llvm.dbg.declare(metadata [10 x %struct._remote_database]* %6, metadata !790, metadata !DIExpression()), !dbg !800
  %9 = load i32 ()**, i32 ()*** bitcast (%struct.database_file** @dbf_file to i32 ()***), align 4, !dbg !801, !tbaa !139
  %10 = load i32 ()*, i32 ()** %9, align 4, !dbg !803, !tbaa !142
  %11 = tail call i32 %10() #7, !dbg !801
  %12 = icmp eq i32 %11, 0, !dbg !801
  br i1 %12, label %103, label %13, !dbg !804

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !786, metadata !DIExpression()), !dbg !795
  %14 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !805, !tbaa !139
  %15 = getelementptr inbounds %struct.database_file, %struct.database_file* %14, i32 0, i32 2, !dbg !807
  %16 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %15, align 4, !dbg !807, !tbaa !148
  %17 = zext i8 %2 to i32, !dbg !808
  %18 = call i32 %16(i8* nonnull %7, i32 32, i32 %17) #7, !dbg !805
  call void @llvm.dbg.value(metadata i32 %18, metadata !783, metadata !DIExpression()), !dbg !809
  %19 = icmp eq i32 %18, 32, !dbg !810
  br i1 %19, label %20, label %67, !dbg !812

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 0
  %23 = bitcast i16* %21 to i8*
  %24 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 6
  br label %25, !dbg !812

; <label>:25:                                     ; preds = %48, %20
  %26 = phi i32 [ 0, %20 ], [ %49, %48 ]
  br label %27, !dbg !812

; <label>:27:                                     ; preds = %30, %25
  %28 = load i16, i16* %21, align 2, !dbg !813, !tbaa !276
  %29 = icmp eq i16 %28, -1, !dbg !815
  br i1 %29, label %30, label %36, !dbg !816

; <label>:30:                                     ; preds = %55, %41, %36, %27
  call void @llvm.dbg.value(metadata i32 %26, metadata !786, metadata !DIExpression()), !dbg !795
  %31 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !805, !tbaa !139
  %32 = getelementptr inbounds %struct.database_file, %struct.database_file* %31, i32 0, i32 2, !dbg !807
  %33 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %32, align 4, !dbg !807, !tbaa !148
  %34 = call i32 %33(i8* nonnull %7, i32 32, i32 %17) #7, !dbg !805
  call void @llvm.dbg.value(metadata i32 %34, metadata !783, metadata !DIExpression()), !dbg !809
  %35 = icmp eq i32 %34, 32, !dbg !810
  br i1 %35, label %27, label %65, !dbg !812, !llvm.loop !817

; <label>:36:                                     ; preds = %27
  %37 = load i16, i16* %22, align 2, !dbg !820, !tbaa !162
  %38 = call zeroext i16 @chip_crc16(i8* nonnull %23, i32 30) #7, !dbg !822
  %39 = icmp eq i16 %37, %38, !dbg !823
  br i1 %39, label %40, label %30, !dbg !824

; <label>:40:                                     ; preds = %36
  switch i8 %3, label %62 [
    i8 1, label %41
    i8 2, label %55
  ], !dbg !825

; <label>:41:                                     ; preds = %40
  %42 = load i8, i8* %24, align 2, !dbg !826, !tbaa !192
  %43 = and i8 %42, 48, !dbg !830
  %44 = icmp eq i8 %43, 0, !dbg !830
  br i1 %44, label %30, label %45, !dbg !831

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %26, !dbg !832
  %47 = bitcast %struct._remote_database* %46 to i8*, !dbg !834
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %47, i8* nonnull %7, i32 32, i32 1, i1 false), !dbg !834
  call void @llvm.dbg.value(metadata i32 %49, metadata !786, metadata !DIExpression()), !dbg !795
  br label %48, !dbg !835

; <label>:48:                                     ; preds = %62, %59, %45
  %49 = add nuw nsw i32 %26, 1
  call void @llvm.dbg.value(metadata i32 %49, metadata !786, metadata !DIExpression()), !dbg !795
  %50 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !805, !tbaa !139
  %51 = getelementptr inbounds %struct.database_file, %struct.database_file* %50, i32 0, i32 2, !dbg !807
  %52 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %51, align 4, !dbg !807, !tbaa !148
  %53 = call i32 %52(i8* nonnull %7, i32 32, i32 %17) #7, !dbg !805
  call void @llvm.dbg.value(metadata i32 %53, metadata !783, metadata !DIExpression()), !dbg !809
  %54 = icmp eq i32 %53, 32, !dbg !810
  br i1 %54, label %25, label %66, !dbg !812, !llvm.loop !817

; <label>:55:                                     ; preds = %40
  %56 = load i8, i8* %24, align 2, !dbg !836, !tbaa !192
  %57 = and i8 %56, 3, !dbg !840
  %58 = icmp eq i8 %57, 0, !dbg !840
  br i1 %58, label %30, label %59, !dbg !841

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %26, !dbg !842
  %61 = bitcast %struct._remote_database* %60 to i8*, !dbg !844
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %61, i8* nonnull %7, i32 32, i32 1, i1 false), !dbg !844
  br label %48, !dbg !845

; <label>:62:                                     ; preds = %40
  %63 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %26, !dbg !846
  %64 = bitcast %struct._remote_database* %63 to i8*, !dbg !848
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %64, i8* nonnull %7, i32 32, i32 1, i1 false), !dbg !848
  br label %48

; <label>:65:                                     ; preds = %30
  br label %67, !dbg !849

; <label>:66:                                     ; preds = %48
  br label %67, !dbg !849

; <label>:67:                                     ; preds = %66, %65, %13
  %68 = phi i32 [ 0, %13 ], [ %26, %65 ], [ %49, %66 ]
  %69 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !849, !tbaa !139
  %70 = getelementptr inbounds %struct.database_file, %struct.database_file* %69, i32 0, i32 1, !dbg !850
  %71 = bitcast void (...)** %70 to void ()**, !dbg !850
  %72 = load void ()*, void ()** %71, align 4, !dbg !850, !tbaa !170
  call void %72() #7, !dbg !849
  %73 = icmp slt i32 %68, %1, !dbg !851
  call void @llvm.dbg.value(metadata i32 undef, metadata !780, metadata !DIExpression()), !dbg !792
  %74 = select i1 %73, i32 %68, i32 %1, !dbg !853
  call void @llvm.dbg.value(metadata i32 %74, metadata !780, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()), !dbg !854
  %75 = icmp sgt i32 %74, 0, !dbg !855
  br i1 %75, label %76, label %103, !dbg !860

; <label>:76:                                     ; preds = %67
  %77 = icmp sgt i32 %68, 0
  br label %78, !dbg !860

; <label>:78:                                     ; preds = %93, %76
  %79 = phi i32 [ 0, %76 ], [ %100, %93 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !785, metadata !DIExpression()), !dbg !862
  br i1 %77, label %80, label %93, !dbg !863

; <label>:80:                                     ; preds = %78
  br label %81, !dbg !867

; <label>:81:                                     ; preds = %81, %80
  %82 = phi i32 [ %89, %81 ], [ 0, %80 ]
  %83 = phi i32 [ %90, %81 ], [ 0, %80 ]
  %84 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %82, i32 1, !dbg !867
  %85 = load i16, i16* %84, align 1, !dbg !867, !tbaa !276
  %86 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %83, i32 1, !dbg !871
  %87 = load i16, i16* %86, align 1, !dbg !871, !tbaa !276
  %88 = icmp ult i16 %85, %87, !dbg !872
  call void @llvm.dbg.value(metadata i32 %83, metadata !787, metadata !DIExpression()), !dbg !796
  %89 = select i1 %88, i32 %83, i32 %82, !dbg !873
  call void @llvm.dbg.value(metadata i32 %89, metadata !787, metadata !DIExpression()), !dbg !796
  %90 = add nuw nsw i32 %83, 1, !dbg !874
  call void @llvm.dbg.value(metadata i32 %90, metadata !785, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata i32 %89, metadata !787, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %90, metadata !785, metadata !DIExpression()), !dbg !862
  %91 = icmp eq i32 %90, %68, !dbg !876
  br i1 %91, label %92, label %81, !dbg !863, !llvm.loop !878

; <label>:92:                                     ; preds = %81
  br label %93, !dbg !881

; <label>:93:                                     ; preds = %92, %78
  %94 = phi i32 [ 0, %78 ], [ %89, %92 ]
  %95 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %0, i32 %79, !dbg !881
  %96 = bitcast %struct._remote_database* %95 to i8*, !dbg !882
  %97 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %94, !dbg !883
  %98 = bitcast %struct._remote_database* %97 to i8*, !dbg !882
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %96, i8* %98, i32 32, i32 1, i1 false), !dbg !882
  %99 = getelementptr inbounds [10 x %struct._remote_database], [10 x %struct._remote_database]* %6, i32 0, i32 %94, i32 1, !dbg !884
  store i16 0, i16* %99, align 1, !dbg !885, !tbaa !276
  %100 = add nuw nsw i32 %79, 1, !dbg !886
  call void @llvm.dbg.value(metadata i32 %100, metadata !784, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 %100, metadata !784, metadata !DIExpression()), !dbg !854
  %101 = icmp slt i32 %100, %74, !dbg !855
  br i1 %101, label %78, label %102, !dbg !860, !llvm.loop !888

; <label>:102:                                    ; preds = %93
  br label %103, !dbg !891

; <label>:103:                                    ; preds = %102, %67, %4
  %104 = phi i32 [ 0, %4 ], [ %74, %67 ], [ %74, %102 ]
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %8) #5, !dbg !891
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #5, !dbg !891
  ret i32 %104, !dbg !891
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @get_last_database(%struct._remote_database* nocapture, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !892 {
  %3 = alloca %struct._remote_database, align 2
  call void @llvm.dbg.value(metadata %struct._remote_database* %0, metadata !894, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8 %1, metadata !895, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 0, metadata !897, metadata !DIExpression()), !dbg !901
  %4 = bitcast %struct._remote_database* %3 to i8*, !dbg !902
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #5, !dbg !902
  %5 = load i32 ()**, i32 ()*** bitcast (%struct.database_file** @dbf_file to i32 ()***), align 4, !dbg !903, !tbaa !139
  %6 = load i32 ()*, i32 ()** %5, align 4, !dbg !905, !tbaa !142
  %7 = tail call i32 %6() #7, !dbg !903
  %8 = icmp eq i32 %7, 0, !dbg !903
  br i1 %8, label %68, label %9, !dbg !906

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !897, metadata !DIExpression()), !dbg !901
  %10 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !907, !tbaa !139
  %11 = getelementptr inbounds %struct.database_file, %struct.database_file* %10, i32 0, i32 2, !dbg !909
  %12 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %11, align 4, !dbg !909, !tbaa !148
  %13 = zext i8 %1 to i32, !dbg !910
  %14 = call i32 %12(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !907
  call void @llvm.dbg.value(metadata i32 %14, metadata !896, metadata !DIExpression()), !dbg !911
  %15 = icmp eq i32 %14, 32, !dbg !912
  br i1 %15, label %16, label %62, !dbg !914

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %3, i32 0, i32 0
  %19 = bitcast i16* %17 to i8*
  %20 = bitcast %struct._remote_database* %0 to i8*
  br label %21, !dbg !914

; <label>:21:                                     ; preds = %44, %16
  %22 = phi i32 [ 0, %16 ], [ %45, %44 ]
  br label %23, !dbg !914

; <label>:23:                                     ; preds = %26, %21
  %24 = load i16, i16* %17, align 2, !dbg !915, !tbaa !276
  %25 = icmp eq i16 %24, -1, !dbg !917
  br i1 %25, label %26, label %32, !dbg !918

; <label>:26:                                     ; preds = %32, %23
  call void @llvm.dbg.value(metadata i32 %22, metadata !897, metadata !DIExpression()), !dbg !901
  %27 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !907, !tbaa !139
  %28 = getelementptr inbounds %struct.database_file, %struct.database_file* %27, i32 0, i32 2, !dbg !909
  %29 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %28, align 4, !dbg !909, !tbaa !148
  %30 = call i32 %29(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !907
  call void @llvm.dbg.value(metadata i32 %30, metadata !896, metadata !DIExpression()), !dbg !911
  %31 = icmp eq i32 %30, 32, !dbg !912
  br i1 %31, label %23, label %60, !dbg !914, !llvm.loop !919

; <label>:32:                                     ; preds = %23
  %33 = load i16, i16* %18, align 2, !dbg !922, !tbaa !162
  %34 = call zeroext i16 @chip_crc16(i8* nonnull %19, i32 30) #7, !dbg !924
  %35 = icmp eq i16 %33, %34, !dbg !925
  br i1 %35, label %36, label %26, !dbg !926

; <label>:36:                                     ; preds = %32
  %37 = load i16, i16* %17, align 2, !dbg !927, !tbaa !276
  %38 = zext i16 %37 to i32, !dbg !929
  %39 = icmp slt i32 %22, %38, !dbg !930
  br i1 %39, label %40, label %41, !dbg !931

; <label>:40:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i32 %38, metadata !897, metadata !DIExpression()), !dbg !901
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %4, i32 32, i32 1, i1 false), !dbg !932
  br label %41, !dbg !934

; <label>:41:                                     ; preds = %40, %36
  %42 = phi i32 [ %38, %40 ], [ %22, %36 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !897, metadata !DIExpression()), !dbg !901
  %43 = icmp eq i16 %37, -1, !dbg !935
  br i1 %43, label %44, label %51, !dbg !937

; <label>:44:                                     ; preds = %59, %55, %51, %41
  %45 = phi i32 [ %42, %55 ], [ %57, %59 ], [ %42, %51 ], [ %42, %41 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !897, metadata !DIExpression()), !dbg !901
  %46 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !907, !tbaa !139
  %47 = getelementptr inbounds %struct.database_file, %struct.database_file* %46, i32 0, i32 2, !dbg !909
  %48 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %47, align 4, !dbg !909, !tbaa !148
  %49 = call i32 %48(i8* nonnull %4, i32 32, i32 %13) #7, !dbg !907
  call void @llvm.dbg.value(metadata i32 %49, metadata !896, metadata !DIExpression()), !dbg !911
  %50 = icmp eq i32 %49, 32, !dbg !912
  br i1 %50, label %21, label %61, !dbg !914, !llvm.loop !919

; <label>:51:                                     ; preds = %41
  %52 = load i16, i16* %18, align 2, !dbg !938, !tbaa !162
  %53 = call zeroext i16 @chip_crc16(i8* nonnull %19, i32 30) #7, !dbg !940
  %54 = icmp eq i16 %52, %53, !dbg !941
  br i1 %54, label %55, label %44, !dbg !942

; <label>:55:                                     ; preds = %51
  %56 = load i16, i16* %17, align 2, !dbg !943, !tbaa !276
  %57 = zext i16 %56 to i32, !dbg !945
  %58 = icmp slt i32 %42, %57, !dbg !946
  br i1 %58, label %59, label %44, !dbg !947

; <label>:59:                                     ; preds = %55
  call void @llvm.dbg.value(metadata i32 %57, metadata !897, metadata !DIExpression()), !dbg !901
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %4, i32 32, i32 1, i1 false), !dbg !948
  br label %44, !dbg !950

; <label>:60:                                     ; preds = %26
  br label %62, !dbg !951

; <label>:61:                                     ; preds = %44
  br label %62, !dbg !951

; <label>:62:                                     ; preds = %61, %60, %9
  %63 = phi i32 [ 0, %9 ], [ %22, %60 ], [ %45, %61 ]
  %64 = load %struct.database_file*, %struct.database_file** @dbf_file, align 4, !dbg !951, !tbaa !139
  %65 = getelementptr inbounds %struct.database_file, %struct.database_file* %64, i32 0, i32 1, !dbg !952
  %66 = bitcast void (...)** %65 to void ()**, !dbg !952
  %67 = load void ()*, void ()** %66, align 4, !dbg !952, !tbaa !170
  call void %67() #7, !dbg !951
  br label %68, !dbg !953

; <label>:68:                                     ; preds = %62, %2
  %69 = phi i32 [ %63, %62 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #5, !dbg !954
  ret i32 %69, !dbg !954
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @restore_remote_device_info_profile([6 x i8]* nocapture, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !955 {
  %5 = alloca %struct._remote_database, align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !959, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i8 %1, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8 %2, metadata !961, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata i8 %3, metadata !962, metadata !DIExpression()), !dbg !968
  %6 = bitcast %struct._remote_database* %5 to i8*, !dbg !969
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5, !dbg !969
  %7 = zext i8 %1 to i32, !dbg !970
  call void @llvm.dbg.value(metadata %struct._remote_database* %5, metadata !963, metadata !DIExpression(DW_OP_deref)), !dbg !971
  %8 = call fastcc i32 @get_last_N_database(%struct._remote_database* nonnull %5, i32 %7, i8 zeroext %2, i8 zeroext %3) #6, !dbg !972
  %9 = trunc i32 %8 to i8, !dbg !972
  call void @llvm.dbg.value(metadata i8 %9, metadata !964, metadata !DIExpression()), !dbg !973
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0, !dbg !974
  %11 = getelementptr inbounds %struct._remote_database, %struct._remote_database* %5, i32 0, i32 8, i32 0, !dbg !974
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 6, i32 1, i1 false), !dbg !974
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5, !dbg !975
  ret i8 %9, !dbg !976
}

; Function Attrs: optsize
declare zeroext i16 @chip_crc16(i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "temp_link_key_flag", scope: !2, file: !3, line: 205, type: !60, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/remote_device_db.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 14, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Host/include/bredr/user_interface.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "DB_ID_REMOTE", value: 0)
!9 = !DIEnumerator(name: "DB_ID_EMITTER", value: 1)
!10 = !DIEnumerator(name: "DB_ID_TWS", value: 2)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!13 = !{!0, !14, !47, !54, !56}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "dbf_file", scope: !2, file: !3, line: 30, type: !16, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "database_file", file: !19, line: 47, size: 224, elements: !20)
!19 = !DIFile(filename: "../User/include/bredr/remote_device_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!20 = !{!21, !26, !30, !37, !38, !42, !46}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !18, file: !19, line: 48, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, null}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !18, file: !19, line: 49, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, null}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !18, file: !19, line: 50, baseType: !31, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = !DISubroutineType(types: !33)
!33 = !{!25, !12, !25, !34}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !35, line: 48, baseType: !36)
!35 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !18, file: !19, line: 51, baseType: !31, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !18, file: !19, line: 52, baseType: !39, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !25, !25}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "getlen", scope: !18, file: !19, line: 53, baseType: !43, size: 32, offset: 160)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = !DISubroutineType(types: !45)
!45 = !{!25}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "get_fpos", scope: !18, file: !19, line: 54, baseType: !22, size: 32, offset: 192)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "temp_device_connect_linkkey", scope: !2, file: !3, line: 206, type: !49, isLocal: false, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !52)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !35, line: 44, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !{!53}
!53 = !DISubrange(count: 16)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "last_device_connect_linkkey", scope: !2, file: !3, line: 248, type: !49, isLocal: false, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "own_private_linkkey", scope: !2, file: !3, line: 200, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !52)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!61 = !{i32 2, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!64 = distinct !DISubprogram(name: "set_temp_link_key", scope: !3, file: !3, line: 207, type: !65, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!68 = !{!69}
!69 = !DILocalVariable(name: "linkkey", arg: 1, scope: !64, file: !3, line: 207, type: !67)
!70 = !DILocation(line: 207, column: 28, scope: !64)
!71 = !DILocation(line: 209, column: 5, scope: !64)
!72 = !DILocation(line: 210, column: 24, scope: !64)
!73 = !{!74, !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 211, column: 1, scope: !64)
!77 = distinct !DISubprogram(name: "get_support_profile", scope: !3, file: !3, line: 213, type: !78, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !87)
!78 = !DISubroutineType(types: !79)
!79 = !{!25, !80, !50}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !82, line: 7, baseType: !83)
!82 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 48, elements: !85)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 44, baseType: !51)
!85 = !{!86}
!86 = !DISubrange(count: 6)
!87 = !{!88, !89, !90, !91}
!88 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !77, file: !3, line: 213, type: !80)
!89 = !DILocalVariable(name: "id", arg: 2, scope: !77, file: !3, line: 213, type: !50)
!90 = !DILocalVariable(name: "profile", scope: !77, file: !3, line: 215, type: !50)
!91 = !DILocalVariable(name: "remote_db", scope: !77, file: !3, line: 216, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "remote_database_t", file: !19, line: 69, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_remote_database", file: !19, line: 58, size: 256, elements: !94)
!94 = !{!95, !98, !99, !100, !101, !102, !103, !104, !105, !108}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !93, file: !19, line: 59, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !35, line: 46, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !93, file: !19, line: 60, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !93, file: !19, line: 61, baseType: !50, size: 8, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_discover_by_remote", scope: !93, file: !19, line: 62, baseType: !50, size: 8, offset: 40)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_volume", scope: !93, file: !19, line: 63, baseType: !50, size: 8, offset: 48)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_volume", scope: !93, file: !19, line: 64, baseType: !50, size: 8, offset: 56)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "support_profile", scope: !93, file: !19, line: 65, baseType: !50, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pair_connect_att", scope: !93, file: !19, line: 66, baseType: !50, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mac_addr", scope: !93, file: !19, line: 67, baseType: !106, size: 48, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !107, line: 66, baseType: !83)
!107 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "link_key", scope: !93, file: !19, line: 68, baseType: !109, size: 128, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "link_key_t", file: !107, line: 73, baseType: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !52)
!111 = !DILocation(line: 213, column: 36, scope: !77)
!112 = !DILocation(line: 213, column: 48, scope: !77)
!113 = !DILocation(line: 215, column: 8, scope: !77)
!114 = !DILocation(line: 216, column: 5, scope: !77)
!115 = !DILocation(line: 216, column: 23, scope: !77)
!116 = !DILocation(line: 217, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !77, file: !3, line: 217, column: 9)
!118 = !DILocation(line: 222, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !3, line: 220, column: 12)
!120 = !DILocation(line: 217, column: 9, scope: !77)
!121 = !DILocation(line: 228, column: 1, scope: !77)
!122 = !DILocation(line: 227, column: 5, scope: !77)
!123 = distinct !DISubprogram(name: "get_database", scope: !3, file: !3, line: 32, type: !124, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !127)
!124 = !DISubroutineType(types: !125)
!125 = !{!25, !126, !80, !50}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DILocalVariable(name: "db", arg: 1, scope: !123, file: !3, line: 32, type: !126)
!129 = !DILocalVariable(name: "bd_addr", arg: 2, scope: !123, file: !3, line: 32, type: !80)
!130 = !DILocalVariable(name: "id", arg: 3, scope: !123, file: !3, line: 32, type: !50)
!131 = !DILocalVariable(name: "len", scope: !123, file: !3, line: 34, type: !25)
!132 = !DILocalVariable(name: "res", scope: !123, file: !3, line: 35, type: !25)
!133 = !DILocation(line: 32, column: 44, scope: !123)
!134 = !DILocation(line: 32, column: 59, scope: !123)
!135 = !DILocation(line: 32, column: 71, scope: !123)
!136 = !DILocation(line: 35, column: 9, scope: !123)
!137 = !DILocation(line: 37, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !123, file: !3, line: 37, column: 9)
!139 = !{!140, !140, i64 0}
!140 = !{!"any pointer", !74, i64 0}
!141 = !DILocation(line: 37, column: 20, scope: !138)
!142 = !{!143, !140, i64 0}
!143 = !{!"database_file", !140, i64 0, !140, i64 4, !140, i64 8, !140, i64 12, !140, i64 16, !140, i64 20, !140, i64 24}
!144 = !DILocation(line: 37, column: 9, scope: !123)
!145 = !DILocation(line: 42, column: 15, scope: !146)
!146 = distinct !DILexicalBlock(scope: !123, file: !3, line: 41, column: 15)
!147 = !DILocation(line: 42, column: 25, scope: !146)
!148 = !{!143, !140, i64 8}
!149 = !DILocation(line: 34, column: 9, scope: !123)
!150 = !DILocation(line: 43, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 43, column: 13)
!152 = !DILocation(line: 43, column: 13, scope: !146)
!153 = !DILocation(line: 47, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !3, line: 47, column: 13)
!155 = !DILocation(line: 47, column: 13, scope: !146)
!156 = distinct !{!156, !157, !158}
!157 = !DILocation(line: 41, column: 5, scope: !123)
!158 = !DILocation(line: 56, column: 5, scope: !123)
!159 = !DILocation(line: 48, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 48, column: 17)
!161 = distinct !DILexicalBlock(scope: !154, file: !3, line: 47, column: 50)
!162 = !{!163, !164, i64 0}
!163 = !{!"_remote_database", !164, i64 0, !164, i64 2, !74, i64 4, !74, i64 5, !74, i64 6, !74, i64 7, !74, i64 8, !74, i64 9, !74, i64 10, !74, i64 16}
!164 = !{!"short", !74, i64 0}
!165 = !DILocation(line: 48, column: 28, scope: !160)
!166 = !DILocation(line: 48, column: 25, scope: !160)
!167 = !DILocation(line: 48, column: 17, scope: !161)
!168 = !DILocation(line: 58, column: 5, scope: !123)
!169 = !DILocation(line: 58, column: 15, scope: !123)
!170 = !{!143, !140, i64 4}
!171 = !DILocation(line: 60, column: 5, scope: !123)
!172 = !DILocation(line: 61, column: 1, scope: !123)
!173 = distinct !DISubprogram(name: "put_support_profile", scope: !3, file: !3, line: 230, type: !174, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !80, !50, !50}
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !173, file: !3, line: 230, type: !80)
!178 = !DILocalVariable(name: "profile", arg: 2, scope: !173, file: !3, line: 230, type: !50)
!179 = !DILocalVariable(name: "id", arg: 3, scope: !173, file: !3, line: 230, type: !50)
!180 = !DILocalVariable(name: "remote_db", scope: !173, file: !3, line: 232, type: !92)
!181 = !DILocation(line: 230, column: 37, scope: !173)
!182 = !DILocation(line: 230, column: 50, scope: !173)
!183 = !DILocation(line: 230, column: 62, scope: !173)
!184 = !DILocation(line: 232, column: 5, scope: !173)
!185 = !DILocation(line: 232, column: 23, scope: !173)
!186 = !DILocation(line: 233, column: 10, scope: !187)
!187 = distinct !DILexicalBlock(scope: !173, file: !3, line: 233, column: 9)
!188 = !DILocation(line: 233, column: 9, scope: !173)
!189 = !DILocation(line: 236, column: 19, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !3, line: 235, column: 12)
!191 = !DILocation(line: 236, column: 35, scope: !190)
!192 = !{!163, !74, i64 8}
!193 = !DILocation(line: 241, column: 5, scope: !173)
!194 = !DILocation(line: 243, column: 1, scope: !173)
!195 = !DILocation(line: 243, column: 1, scope: !196)
!196 = !DILexicalBlockFile(scope: !173, file: !3, discriminator: 2)
!197 = distinct !DISubprogram(name: "put_database", scope: !3, file: !3, line: 64, type: !198, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!25, !126, !50}
!200 = !{!201, !202, !203, !204, !205, !206, !207, !211, !212, !213}
!201 = !DILocalVariable(name: "db", arg: 1, scope: !197, file: !3, line: 64, type: !126)
!202 = !DILocalVariable(name: "id", arg: 2, scope: !197, file: !3, line: 64, type: !50)
!203 = !DILocalVariable(name: "len", scope: !197, file: !3, line: 66, type: !96)
!204 = !DILocalVariable(name: "pos", scope: !197, file: !3, line: 67, type: !96)
!205 = !DILocalVariable(name: "max_timestamp", scope: !197, file: !3, line: 68, type: !96)
!206 = !DILocalVariable(name: "min_timestamp", scope: !197, file: !3, line: 69, type: !96)
!207 = !DILocalVariable(name: "w_pos", scope: !197, file: !3, line: 70, type: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 48, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 3)
!211 = !DILocalVariable(name: "r_db", scope: !197, file: !3, line: 71, type: !92)
!212 = !DILocalVariable(name: "db_newest", scope: !197, file: !3, line: 72, type: !92)
!213 = !DILocalVariable(name: "priority", scope: !197, file: !3, line: 73, type: !96)
!214 = !DILocation(line: 68, column: 9, scope: !197)
!215 = !DILocation(line: 69, column: 9, scope: !197)
!216 = !DILocation(line: 70, column: 9, scope: !197)
!217 = !DILocation(line: 71, column: 5, scope: !197)
!218 = !DILocation(line: 72, column: 5, scope: !197)
!219 = !DILocation(line: 73, column: 9, scope: !197)
!220 = !DILocation(line: 72, column: 23, scope: !197)
!221 = !DILocation(line: 75, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !197, file: !3, line: 75, column: 9)
!223 = !DILocation(line: 75, column: 9, scope: !197)
!224 = !DILocation(line: 76, column: 14, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 76, column: 13)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 75, column: 44)
!227 = !DILocation(line: 76, column: 60, scope: !225)
!228 = !DILocation(line: 77, column: 14, scope: !225)
!229 = !DILocation(line: 77, column: 63, scope: !225)
!230 = !DILocation(line: 78, column: 17, scope: !225)
!231 = !{!163, !74, i64 6}
!232 = !DILocation(line: 78, column: 42, scope: !225)
!233 = !DILocation(line: 78, column: 29, scope: !225)
!234 = !DILocation(line: 78, column: 54, scope: !225)
!235 = !DILocation(line: 79, column: 17, scope: !225)
!236 = !{!163, !74, i64 7}
!237 = !DILocation(line: 79, column: 42, scope: !225)
!238 = !DILocation(line: 79, column: 29, scope: !225)
!239 = !DILocation(line: 79, column: 54, scope: !225)
!240 = !DILocation(line: 80, column: 17, scope: !225)
!241 = !{!163, !74, i64 4}
!242 = !DILocation(line: 80, column: 40, scope: !225)
!243 = !DILocation(line: 80, column: 27, scope: !225)
!244 = !DILocation(line: 80, column: 50, scope: !225)
!245 = !DILocation(line: 81, column: 17, scope: !225)
!246 = !DILocation(line: 81, column: 47, scope: !225)
!247 = !DILocation(line: 81, column: 34, scope: !225)
!248 = !DILocation(line: 81, column: 63, scope: !225)
!249 = !DILocation(line: 82, column: 17, scope: !225)
!250 = !{!163, !74, i64 9}
!251 = !DILocation(line: 82, column: 48, scope: !225)
!252 = !DILocation(line: 82, column: 35, scope: !225)
!253 = !DILocation(line: 82, column: 65, scope: !225)
!254 = !DILocation(line: 83, column: 17, scope: !225)
!255 = !{!163, !74, i64 5}
!256 = !DILocation(line: 83, column: 55, scope: !225)
!257 = !DILocation(line: 83, column: 42, scope: !225)
!258 = !DILocation(line: 76, column: 13, scope: !259)
!259 = !DILexicalBlockFile(scope: !226, file: !3, discriminator: 1)
!260 = !DILocation(line: 88, column: 10, scope: !261)
!261 = distinct !DILexicalBlock(scope: !197, file: !3, line: 88, column: 9)
!262 = !DILocation(line: 88, column: 20, scope: !261)
!263 = !DILocation(line: 88, column: 9, scope: !197)
!264 = !DILocation(line: 93, column: 15, scope: !265)
!265 = distinct !DILexicalBlock(scope: !197, file: !3, line: 92, column: 15)
!266 = !DILocation(line: 93, column: 25, scope: !265)
!267 = !{!143, !140, i64 24}
!268 = !DILocation(line: 95, column: 15, scope: !265)
!269 = !DILocation(line: 95, column: 25, scope: !265)
!270 = !DILocation(line: 96, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !3, line: 96, column: 13)
!272 = !DILocation(line: 96, column: 17, scope: !271)
!273 = !DILocation(line: 96, column: 13, scope: !265)
!274 = !DILocation(line: 100, column: 18, scope: !275)
!275 = distinct !DILexicalBlock(scope: !265, file: !3, line: 100, column: 13)
!276 = !{!163, !164, i64 2}
!277 = !DILocation(line: 100, column: 28, scope: !275)
!278 = !DILocation(line: 100, column: 13, scope: !265)
!279 = !DILocation(line: 102, column: 22, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !3, line: 100, column: 39)
!281 = distinct !{!281, !282, !283}
!282 = !DILocation(line: 92, column: 5, scope: !197)
!283 = !DILocation(line: 137, column: 5, scope: !197)
!284 = !DILocation(line: 106, column: 18, scope: !285)
!285 = distinct !DILexicalBlock(scope: !265, file: !3, line: 106, column: 13)
!286 = !DILocation(line: 106, column: 25, scope: !285)
!287 = !DILocation(line: 106, column: 22, scope: !285)
!288 = !DILocation(line: 106, column: 13, scope: !265)
!289 = !DILocation(line: 108, column: 13, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 106, column: 65)
!291 = !DILocation(line: 108, column: 23, scope: !290)
!292 = !{!143, !140, i64 16}
!293 = !DILocation(line: 109, column: 13, scope: !290)
!294 = !DILocation(line: 110, column: 13, scope: !290)
!295 = !DILocation(line: 110, column: 23, scope: !290)
!296 = !{!143, !140, i64 12}
!297 = !DILocation(line: 113, column: 34, scope: !298)
!298 = distinct !DILexicalBlock(scope: !265, file: !3, line: 113, column: 13)
!299 = !DILocation(line: 113, column: 27, scope: !298)
!300 = !DILocation(line: 116, column: 22, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 113, column: 45)
!302 = !DILocation(line: 113, column: 13, scope: !265)
!303 = !DILocation(line: 120, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !265, file: !3, line: 120, column: 13)
!305 = !DILocation(line: 120, column: 13, scope: !265)
!306 = !DILocation(line: 124, column: 23, scope: !307)
!307 = distinct !DILexicalBlock(scope: !265, file: !3, line: 124, column: 13)
!308 = !DILocation(line: 124, column: 27, scope: !309)
!309 = !DILexicalBlockFile(scope: !307, file: !3, discriminator: 1)
!310 = !DILocation(line: 124, column: 13, scope: !311)
!311 = !DILexicalBlockFile(scope: !265, file: !3, discriminator: 1)
!312 = !DILocation(line: 125, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 125, column: 17)
!314 = distinct !DILexicalBlock(scope: !307, file: !3, line: 124, column: 69)
!315 = !DILocation(line: 125, column: 17, scope: !314)
!316 = !DILocation(line: 126, column: 33, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 125, column: 62)
!318 = !DILocation(line: 127, column: 33, scope: !317)
!319 = !DILocation(line: 128, column: 46, scope: !317)
!320 = !DILocation(line: 129, column: 38, scope: !317)
!321 = !DILocation(line: 130, column: 37, scope: !317)
!322 = !DILocation(line: 132, column: 13, scope: !317)
!323 = !DILocation(line: 134, column: 22, scope: !314)
!324 = !DILocation(line: 136, column: 9, scope: !314)
!325 = !DILocation(line: 139, column: 35, scope: !197)
!326 = !DILocation(line: 139, column: 9, scope: !197)
!327 = !DILocation(line: 140, column: 23, scope: !328)
!328 = distinct !DILexicalBlock(scope: !197, file: !3, line: 140, column: 9)
!329 = !DILocation(line: 140, column: 9, scope: !197)
!330 = !DILocation(line: 139, column: 19, scope: !197)
!331 = !DILocation(line: 143, column: 15, scope: !197)
!332 = !DILocation(line: 143, column: 9, scope: !197)
!333 = !DILocation(line: 143, column: 13, scope: !197)
!334 = !DILocation(line: 146, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !197, file: !3, line: 146, column: 9)
!336 = !DILocation(line: 146, column: 18, scope: !335)
!337 = !DILocation(line: 146, column: 9, scope: !197)
!338 = !DILocation(line: 147, column: 15, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 146, column: 24)
!340 = !DILocation(line: 147, column: 25, scope: !339)
!341 = !DILocation(line: 147, column: 36, scope: !339)
!342 = !DILocation(line: 67, column: 9, scope: !197)
!343 = !DILocation(line: 148, column: 5, scope: !339)
!344 = !DILocation(line: 148, column: 25, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !3, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !335, file: !3, line: 148, column: 16)
!347 = !DILocation(line: 148, column: 16, scope: !348)
!348 = !DILexicalBlockFile(scope: !335, file: !3, discriminator: 1)
!349 = !DILocation(line: 150, column: 25, scope: !350)
!350 = !DILexicalBlockFile(scope: !351, file: !3, discriminator: 1)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 150, column: 16)
!352 = !DILocation(line: 150, column: 16, scope: !345)
!353 = !DILocation(line: 152, column: 25, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !3, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 152, column: 16)
!356 = !DILocation(line: 152, column: 16, scope: !350)
!357 = !DILocation(line: 155, column: 15, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !3, line: 154, column: 12)
!359 = !DILocation(line: 155, column: 25, scope: !358)
!360 = !DILocation(line: 155, column: 36, scope: !358)
!361 = !DILocation(line: 159, column: 5, scope: !197)
!362 = !DILocation(line: 159, column: 15, scope: !197)
!363 = !DILocation(line: 159, column: 23, scope: !197)
!364 = !DILocation(line: 160, column: 5, scope: !197)
!365 = !DILocation(line: 160, column: 15, scope: !197)
!366 = !DILocation(line: 162, column: 5, scope: !197)
!367 = !DILocation(line: 162, column: 15, scope: !197)
!368 = !DILocation(line: 164, column: 5, scope: !197)
!369 = !DILocation(line: 165, column: 1, scope: !197)
!370 = distinct !DISubprogram(name: "get_link_key", scope: !3, file: !3, line: 249, type: !371, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !374)
!371 = !DISubroutineType(types: !372)
!372 = !{!25, !80, !373, !50}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !370, file: !3, line: 249, type: !80)
!376 = !DILocalVariable(name: "link_key", arg: 2, scope: !370, file: !3, line: 249, type: !373)
!377 = !DILocalVariable(name: "id", arg: 3, scope: !370, file: !3, line: 249, type: !50)
!378 = !DILocalVariable(name: "empty_linkkey", scope: !370, file: !3, line: 251, type: !49)
!379 = !DILocalVariable(name: "remote_db", scope: !370, file: !3, line: 252, type: !92)
!380 = !DILocation(line: 249, column: 29, scope: !370)
!381 = !DILocation(line: 249, column: 50, scope: !370)
!382 = !DILocation(line: 249, column: 63, scope: !370)
!383 = !DILocation(line: 251, column: 5, scope: !370)
!384 = !DILocation(line: 251, column: 8, scope: !370)
!385 = !DILocation(line: 252, column: 5, scope: !370)
!386 = !DILocation(line: 256, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !370, file: !3, line: 256, column: 9)
!388 = !DILocation(line: 256, column: 9, scope: !370)
!389 = !DILocation(line: 257, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 256, column: 33)
!391 = !DILocation(line: 258, column: 9, scope: !390)
!392 = !DILocation(line: 261, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !370, file: !3, line: 261, column: 9)
!394 = !{!395, !395, i64 0}
!395 = !{!"int", !74, i64 0}
!396 = !DILocation(line: 261, column: 9, scope: !370)
!397 = !DILocation(line: 265, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !370, file: !3, line: 265, column: 9)
!399 = !DILocation(line: 265, column: 9, scope: !370)
!400 = !DILocation(line: 266, column: 9, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 265, column: 29)
!402 = !DILocation(line: 267, column: 9, scope: !401)
!403 = !DILocation(line: 252, column: 23, scope: !370)
!404 = !DILocation(line: 270, column: 10, scope: !405)
!405 = distinct !DILexicalBlock(scope: !370, file: !3, line: 270, column: 9)
!406 = !DILocation(line: 270, column: 9, scope: !370)
!407 = !DILocation(line: 280, column: 5, scope: !370)
!408 = !DILocation(line: 281, column: 32, scope: !409)
!409 = distinct !DILexicalBlock(scope: !370, file: !3, line: 281, column: 9)
!410 = !DILocation(line: 281, column: 10, scope: !409)
!411 = !DILocation(line: 281, column: 9, scope: !370)
!412 = !DILocation(line: 286, column: 5, scope: !370)
!413 = !DILocation(line: 288, column: 5, scope: !370)
!414 = !DILocation(line: 302, column: 1, scope: !370)
!415 = distinct !DISubprogram(name: "put_link_key", scope: !3, file: !3, line: 304, type: !416, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !80, !373, !50, !50}
!418 = !{!419, !420, !421, !422, !423}
!419 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !415, file: !3, line: 304, type: !80)
!420 = !DILocalVariable(name: "link_key", arg: 2, scope: !415, file: !3, line: 304, type: !373)
!421 = !DILocalVariable(name: "sr", arg: 3, scope: !415, file: !3, line: 304, type: !50)
!422 = !DILocalVariable(name: "id", arg: 4, scope: !415, file: !3, line: 304, type: !50)
!423 = !DILocalVariable(name: "remote_db", scope: !415, file: !3, line: 306, type: !92)
!424 = !DILocation(line: 304, column: 30, scope: !415)
!425 = !DILocation(line: 304, column: 51, scope: !415)
!426 = !DILocation(line: 304, column: 64, scope: !415)
!427 = !DILocation(line: 304, column: 71, scope: !415)
!428 = !DILocation(line: 306, column: 5, scope: !415)
!429 = !DILocation(line: 308, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !415, file: !3, line: 308, column: 9)
!431 = !DILocation(line: 308, column: 9, scope: !415)
!432 = !DILocation(line: 312, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !415, file: !3, line: 312, column: 9)
!434 = !DILocation(line: 316, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !415, file: !3, line: 316, column: 9)
!436 = !DILocation(line: 312, column: 9, scope: !415)
!437 = !DILocation(line: 306, column: 23, scope: !415)
!438 = !DILocation(line: 320, column: 10, scope: !439)
!439 = distinct !DILexicalBlock(scope: !415, file: !3, line: 320, column: 9)
!440 = !DILocation(line: 320, column: 9, scope: !415)
!441 = !DILocation(line: 321, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 320, column: 49)
!443 = !DILocation(line: 322, column: 19, scope: !442)
!444 = !DILocation(line: 322, column: 30, scope: !442)
!445 = !DILocation(line: 323, column: 19, scope: !442)
!446 = !DILocation(line: 323, column: 31, scope: !442)
!447 = !DILocation(line: 324, column: 19, scope: !442)
!448 = !DILocation(line: 324, column: 43, scope: !442)
!449 = !DILocation(line: 325, column: 19, scope: !442)
!450 = !DILocation(line: 325, column: 36, scope: !442)
!451 = !DILocation(line: 326, column: 19, scope: !442)
!452 = !DILocation(line: 326, column: 35, scope: !442)
!453 = !DILocation(line: 327, column: 5, scope: !442)
!454 = !DILocation(line: 328, column: 5, scope: !415)
!455 = !DILocation(line: 329, column: 5, scope: !415)
!456 = !DILocation(line: 336, column: 5, scope: !415)
!457 = !DILocation(line: 337, column: 1, scope: !415)
!458 = !DILocation(line: 337, column: 1, scope: !459)
!459 = !DILexicalBlockFile(scope: !415, file: !3, discriminator: 2)
!460 = distinct !DISubprogram(name: "updata_last_link_key", scope: !3, file: !3, line: 340, type: !461, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !80, !50}
!463 = !{!464, !465, !466}
!464 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !460, file: !3, line: 340, type: !80)
!465 = !DILocalVariable(name: "id", arg: 2, scope: !460, file: !3, line: 340, type: !50)
!466 = !DILocalVariable(name: "link_key", scope: !460, file: !3, line: 343, type: !109)
!467 = !DILocation(line: 340, column: 38, scope: !460)
!468 = !DILocation(line: 340, column: 50, scope: !460)
!469 = !DILocation(line: 343, column: 5, scope: !460)
!470 = !DILocation(line: 343, column: 16, scope: !460)
!471 = !DILocation(line: 344, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !460, file: !3, line: 344, column: 9)
!473 = !DILocation(line: 344, column: 9, scope: !460)
!474 = !DILocation(line: 345, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !3, line: 344, column: 48)
!476 = !DILocation(line: 346, column: 5, scope: !475)
!477 = !DILocation(line: 347, column: 1, scope: !460)
!478 = distinct !DISubprogram(name: "delete_link_key", scope: !3, file: !3, line: 349, type: !461, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !479)
!479 = !{!480, !481}
!480 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !478, file: !3, line: 349, type: !80)
!481 = !DILocalVariable(name: "id", arg: 2, scope: !478, file: !3, line: 349, type: !50)
!482 = !DILocation(line: 349, column: 33, scope: !478)
!483 = !DILocation(line: 349, column: 45, scope: !478)
!484 = !DILocation(line: 170, column: 5, scope: !485, inlinedAt: !491)
!485 = distinct !DISubprogram(name: "delete_database", scope: !3, file: !3, line: 167, type: !78, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !485, file: !3, line: 167, type: !80)
!488 = !DILocalVariable(name: "id", arg: 2, scope: !485, file: !3, line: 167, type: !50)
!489 = !DILocalVariable(name: "len", scope: !485, file: !3, line: 169, type: !25)
!490 = !DILocalVariable(name: "db", scope: !485, file: !3, line: 170, type: !92)
!491 = distinct !DILocation(line: 353, column: 5, scope: !478)
!492 = !DILocation(line: 172, column: 10, scope: !493, inlinedAt: !491)
!493 = distinct !DILexicalBlock(scope: !485, file: !3, line: 172, column: 9)
!494 = !DILocation(line: 172, column: 20, scope: !493, inlinedAt: !491)
!495 = !DILocation(line: 172, column: 9, scope: !485, inlinedAt: !491)
!496 = !DILocation(line: 177, column: 15, scope: !497, inlinedAt: !491)
!497 = distinct !DILexicalBlock(scope: !485, file: !3, line: 176, column: 15)
!498 = !DILocation(line: 177, column: 25, scope: !497, inlinedAt: !491)
!499 = !DILocation(line: 177, column: 47, scope: !497, inlinedAt: !491)
!500 = !DILocation(line: 169, column: 9, scope: !485, inlinedAt: !491)
!501 = !DILocation(line: 178, column: 17, scope: !502, inlinedAt: !491)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 178, column: 13)
!503 = !DILocation(line: 178, column: 13, scope: !497, inlinedAt: !491)
!504 = !DILocation(line: 181, column: 13, scope: !497, inlinedAt: !491)
!505 = !DILocation(line: 182, column: 18, scope: !506, inlinedAt: !491)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 182, column: 17)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 181, column: 30)
!508 = distinct !DILexicalBlock(scope: !497, file: !3, line: 181, column: 13)
!509 = !DILocation(line: 182, column: 17, scope: !507, inlinedAt: !491)
!510 = !DILocation(line: 183, column: 17, scope: !511, inlinedAt: !491)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 182, column: 53)
!512 = !DILocation(line: 183, column: 27, scope: !511, inlinedAt: !491)
!513 = !DILocation(line: 184, column: 17, scope: !511, inlinedAt: !491)
!514 = !DILocation(line: 185, column: 17, scope: !511, inlinedAt: !491)
!515 = !DILocation(line: 185, column: 27, scope: !511, inlinedAt: !491)
!516 = !DILocation(line: 186, column: 17, scope: !511, inlinedAt: !491)
!517 = !DILocation(line: 189, column: 13, scope: !518, inlinedAt: !491)
!518 = distinct !DILexicalBlock(scope: !508, file: !3, line: 188, column: 16)
!519 = !DILocation(line: 189, column: 23, scope: !518, inlinedAt: !491)
!520 = !DILocation(line: 190, column: 13, scope: !518, inlinedAt: !491)
!521 = !DILocation(line: 191, column: 13, scope: !518, inlinedAt: !491)
!522 = !DILocation(line: 191, column: 23, scope: !518, inlinedAt: !491)
!523 = distinct !{!523, !524, !525}
!524 = !DILocation(line: 176, column: 5, scope: !485)
!525 = !DILocation(line: 193, column: 5, scope: !485)
!526 = !DILocation(line: 195, column: 5, scope: !485, inlinedAt: !491)
!527 = !DILocation(line: 195, column: 15, scope: !485, inlinedAt: !491)
!528 = !DILocation(line: 197, column: 5, scope: !485, inlinedAt: !491)
!529 = !DILocation(line: 198, column: 1, scope: !485, inlinedAt: !491)
!530 = !DILocation(line: 354, column: 1, scope: !478)
!531 = distinct !DISubprogram(name: "handle_a2dp_discover_flag", scope: !3, file: !3, line: 481, type: !532, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!50, !80, !50}
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !531, file: !3, line: 481, type: !80)
!536 = !DILocalVariable(name: "cmd", arg: 2, scope: !531, file: !3, line: 481, type: !50)
!537 = !DILocalVariable(name: "remote_db", scope: !531, file: !3, line: 483, type: !92)
!538 = !DILocation(line: 481, column: 41, scope: !531)
!539 = !DILocation(line: 481, column: 53, scope: !531)
!540 = !DILocation(line: 483, column: 5, scope: !531)
!541 = !DILocation(line: 484, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !531, file: !3, line: 484, column: 9)
!543 = !DILocation(line: 484, column: 9, scope: !531)
!544 = !DILocation(line: 487, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !531, file: !3, line: 487, column: 9)
!546 = !DILocation(line: 487, column: 29, scope: !545)
!547 = !DILocation(line: 487, column: 9, scope: !531)
!548 = !DILocation(line: 483, column: 23, scope: !531)
!549 = !DILocation(line: 490, column: 10, scope: !550)
!550 = distinct !DILexicalBlock(scope: !531, file: !3, line: 490, column: 9)
!551 = !DILocation(line: 490, column: 9, scope: !531)
!552 = !DILocation(line: 493, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !531, file: !3, line: 493, column: 9)
!554 = !DILocation(line: 493, column: 9, scope: !531)
!555 = !DILocation(line: 496, column: 26, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 493, column: 22)
!557 = !DILocation(line: 496, column: 9, scope: !556)
!558 = !DILocation(line: 498, column: 43, scope: !559)
!559 = distinct !DILexicalBlock(scope: !553, file: !3, line: 497, column: 12)
!560 = !DILocation(line: 500, column: 9, scope: !559)
!561 = !DILocation(line: 502, column: 5, scope: !531)
!562 = !DILocation(line: 503, column: 1, scope: !531)
!563 = distinct !DISubprogram(name: "handle_att_connect_flag", scope: !3, file: !3, line: 505, type: !532, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !563, file: !3, line: 505, type: !80)
!566 = !DILocalVariable(name: "cmd", arg: 2, scope: !563, file: !3, line: 505, type: !50)
!567 = !DILocalVariable(name: "remote_db", scope: !563, file: !3, line: 507, type: !92)
!568 = !DILocation(line: 505, column: 39, scope: !563)
!569 = !DILocation(line: 505, column: 51, scope: !563)
!570 = !DILocation(line: 507, column: 5, scope: !563)
!571 = !DILocation(line: 508, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !563, file: !3, line: 508, column: 9)
!573 = !DILocation(line: 508, column: 9, scope: !563)
!574 = !DILocation(line: 511, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !563, file: !3, line: 511, column: 9)
!576 = !DILocation(line: 511, column: 29, scope: !575)
!577 = !DILocation(line: 511, column: 9, scope: !563)
!578 = !DILocation(line: 507, column: 23, scope: !563)
!579 = !DILocation(line: 514, column: 10, scope: !580)
!580 = distinct !DILexicalBlock(scope: !563, file: !3, line: 514, column: 9)
!581 = !DILocation(line: 514, column: 9, scope: !563)
!582 = !DILocation(line: 517, column: 13, scope: !583)
!583 = distinct !DILexicalBlock(scope: !563, file: !3, line: 517, column: 9)
!584 = !DILocation(line: 517, column: 9, scope: !563)
!585 = !DILocation(line: 523, column: 40, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 523, column: 13)
!587 = distinct !DILexicalBlock(scope: !583, file: !3, line: 521, column: 12)
!588 = !DILocation(line: 523, column: 13, scope: !587)
!589 = !DILocation(line: 524, column: 40, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 523, column: 48)
!591 = !DILocation(line: 525, column: 13, scope: !590)
!592 = !DILocation(line: 527, column: 9, scope: !590)
!593 = !DILocation(line: 530, column: 1, scope: !563)
!594 = distinct !DISubprogram(name: "hfp_volume_interface", scope: !3, file: !3, line: 533, type: !595, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!50, !12, !50}
!597 = !{!598, !599, !600}
!598 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !594, file: !3, line: 533, type: !12)
!599 = !DILocalVariable(name: "param", arg: 2, scope: !594, file: !3, line: 533, type: !50)
!600 = !DILocalVariable(name: "remote_db", scope: !594, file: !3, line: 535, type: !92)
!601 = !DILocation(line: 533, column: 31, scope: !594)
!602 = !DILocation(line: 533, column: 43, scope: !594)
!603 = !DILocation(line: 535, column: 5, scope: !594)
!604 = !DILocation(line: 536, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !594, file: !3, line: 536, column: 9)
!606 = !DILocation(line: 536, column: 9, scope: !594)
!607 = !DILocation(line: 539, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !594, file: !3, line: 539, column: 9)
!609 = !DILocation(line: 539, column: 29, scope: !608)
!610 = !DILocation(line: 539, column: 9, scope: !594)
!611 = !DILocation(line: 542, column: 35, scope: !612)
!612 = distinct !DILexicalBlock(scope: !594, file: !3, line: 542, column: 9)
!613 = !DILocation(line: 535, column: 23, scope: !594)
!614 = !DILocation(line: 542, column: 10, scope: !612)
!615 = !DILocation(line: 542, column: 9, scope: !594)
!616 = !DILocation(line: 545, column: 15, scope: !617)
!617 = distinct !DILexicalBlock(scope: !594, file: !3, line: 545, column: 9)
!618 = !DILocation(line: 545, column: 9, scope: !594)
!619 = !DILocation(line: 555, column: 22, scope: !594)
!620 = !DILocation(line: 548, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 547, column: 12)
!622 = !DILocation(line: 551, column: 19, scope: !621)
!623 = !DILocation(line: 551, column: 30, scope: !621)
!624 = !DILocation(line: 553, column: 9, scope: !621)
!625 = !DILocation(line: 555, column: 5, scope: !594)
!626 = !DILocation(line: 556, column: 1, scope: !594)
!627 = distinct !DISubprogram(name: "avrcp_volume_interface", scope: !3, file: !3, line: 557, type: !595, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !628)
!628 = !{!629, !630, !631}
!629 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !627, file: !3, line: 557, type: !12)
!630 = !DILocalVariable(name: "param", arg: 2, scope: !627, file: !3, line: 557, type: !50)
!631 = !DILocalVariable(name: "remote_db", scope: !627, file: !3, line: 559, type: !92)
!632 = !DILocation(line: 557, column: 33, scope: !627)
!633 = !DILocation(line: 557, column: 45, scope: !627)
!634 = !DILocation(line: 559, column: 5, scope: !627)
!635 = !DILocation(line: 560, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !627, file: !3, line: 560, column: 9)
!637 = !DILocation(line: 560, column: 9, scope: !627)
!638 = !DILocation(line: 563, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !627, file: !3, line: 563, column: 9)
!640 = !DILocation(line: 563, column: 29, scope: !639)
!641 = !DILocation(line: 563, column: 9, scope: !627)
!642 = !DILocation(line: 566, column: 35, scope: !643)
!643 = distinct !DILexicalBlock(scope: !627, file: !3, line: 566, column: 9)
!644 = !DILocation(line: 559, column: 23, scope: !627)
!645 = !DILocation(line: 566, column: 10, scope: !643)
!646 = !DILocation(line: 566, column: 9, scope: !627)
!647 = !DILocation(line: 569, column: 15, scope: !648)
!648 = distinct !DILexicalBlock(scope: !627, file: !3, line: 569, column: 9)
!649 = !DILocation(line: 569, column: 9, scope: !627)
!650 = !DILocation(line: 579, column: 22, scope: !627)
!651 = !DILocation(line: 572, column: 19, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 572, column: 13)
!653 = distinct !DILexicalBlock(scope: !648, file: !3, line: 571, column: 12)
!654 = !DILocation(line: 572, column: 13, scope: !653)
!655 = !DILocation(line: 575, column: 19, scope: !653)
!656 = !DILocation(line: 575, column: 31, scope: !653)
!657 = !DILocation(line: 577, column: 9, scope: !653)
!658 = !DILocation(line: 579, column: 5, scope: !627)
!659 = !DILocation(line: 580, column: 1, scope: !627)
!660 = distinct !DISubprogram(name: "handle_remote_dev_type", scope: !3, file: !3, line: 582, type: !532, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !661)
!661 = !{!662, !663, !664, !665, !666}
!662 = !DILocalVariable(name: "bd_addr", arg: 1, scope: !660, file: !3, line: 582, type: !80)
!663 = !DILocalVariable(name: "param", arg: 2, scope: !660, file: !3, line: 582, type: !50)
!664 = !DILocalVariable(name: "remote_db", scope: !660, file: !3, line: 584, type: !92)
!665 = !DILocalVariable(name: "link_key", scope: !660, file: !3, line: 585, type: !109)
!666 = !DILocalVariable(name: "check", scope: !660, file: !3, line: 586, type: !25)
!667 = !DILocation(line: 582, column: 38, scope: !660)
!668 = !DILocation(line: 582, column: 50, scope: !660)
!669 = !DILocation(line: 584, column: 5, scope: !660)
!670 = !DILocation(line: 585, column: 5, scope: !660)
!671 = !DILocation(line: 585, column: 16, scope: !660)
!672 = !DILocation(line: 586, column: 17, scope: !660)
!673 = !DILocation(line: 587, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !660, file: !3, line: 587, column: 9)
!675 = !DILocation(line: 587, column: 9, scope: !660)
!676 = !DILocation(line: 584, column: 23, scope: !660)
!677 = !DILocation(line: 590, column: 10, scope: !678)
!678 = distinct !DILexicalBlock(scope: !660, file: !3, line: 590, column: 9)
!679 = !DILocation(line: 590, column: 9, scope: !660)
!680 = !DILocation(line: 592, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 590, column: 59)
!682 = !DILocation(line: 596, column: 13, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 594, column: 16)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 592, column: 13)
!685 = !DILocation(line: 597, column: 13, scope: !683)
!686 = !DILocation(line: 598, column: 13, scope: !683)
!687 = !DILocation(line: 599, column: 23, scope: !683)
!688 = !DILocation(line: 599, column: 34, scope: !683)
!689 = !DILocation(line: 600, column: 23, scope: !683)
!690 = !DILocation(line: 600, column: 35, scope: !683)
!691 = !DILocation(line: 601, column: 23, scope: !683)
!692 = !DILocation(line: 601, column: 39, scope: !683)
!693 = !DILocation(line: 602, column: 13, scope: !683)
!694 = !DILocation(line: 605, column: 9, scope: !660)
!695 = !DILocation(line: 610, column: 32, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 610, column: 13)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 609, column: 12)
!698 = distinct !DILexicalBlock(scope: !660, file: !3, line: 605, column: 9)
!699 = !DILocation(line: 610, column: 13, scope: !697)
!700 = !DILocation(line: 614, column: 28, scope: !697)
!701 = !DILocation(line: 616, column: 9, scope: !697)
!702 = !DILocation(line: 618, column: 5, scope: !660)
!703 = !DILocation(line: 619, column: 1, scope: !660)
!704 = distinct !DISubprogram(name: "remote_device_db_init_opt", scope: !3, file: !3, line: 621, type: !705, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !16}
!707 = !{!708}
!708 = !DILocalVariable(name: "_file", arg: 1, scope: !704, file: !3, line: 621, type: !16)
!709 = !DILocation(line: 621, column: 60, scope: !704)
!710 = !DILocation(line: 623, column: 14, scope: !704)
!711 = !DILocation(line: 624, column: 1, scope: !704)
!712 = distinct !DISubprogram(name: "restore_remote_device_info_opt", scope: !3, file: !3, line: 626, type: !713, isLocal: false, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{!50, !80, !50, !50}
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724}
!716 = !DILocalVariable(name: "mac_addr", arg: 1, scope: !712, file: !3, line: 626, type: !80)
!717 = !DILocalVariable(name: "conn_device_num", arg: 2, scope: !712, file: !3, line: 626, type: !50)
!718 = !DILocalVariable(name: "id", arg: 3, scope: !712, file: !3, line: 626, type: !50)
!719 = !DILocalVariable(name: "db", scope: !712, file: !3, line: 629, type: !92)
!720 = !DILocalVariable(name: "get_dev_number", scope: !712, file: !3, line: 630, type: !50)
!721 = !DILocalVariable(name: "current_search_index", scope: !712, file: !3, line: 632, type: !50)
!722 = !DILocalVariable(name: "loopi", scope: !712, file: !3, line: 633, type: !25)
!723 = !DILocalVariable(name: "loopj", scope: !712, file: !3, line: 633, type: !25)
!724 = !DILocalVariable(name: "temp_db", scope: !712, file: !3, line: 634, type: !725)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2560, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 10)
!728 = !DILocation(line: 626, column: 46, scope: !712)
!729 = !DILocation(line: 626, column: 59, scope: !712)
!730 = !DILocation(line: 626, column: 79, scope: !712)
!731 = !DILocation(line: 629, column: 5, scope: !712)
!732 = !DILocation(line: 632, column: 8, scope: !712)
!733 = !DILocation(line: 634, column: 5, scope: !712)
!734 = !DILocation(line: 634, column: 23, scope: !712)
!735 = !DILocation(line: 635, column: 5, scope: !712)
!736 = !DILocation(line: 636, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !712, file: !3, line: 636, column: 9)
!738 = !DILocation(line: 637, column: 35, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 637, column: 13)
!740 = distinct !DILexicalBlock(scope: !737, file: !3, line: 636, column: 38)
!741 = !DILocation(line: 636, column: 9, scope: !712)
!742 = !DILocation(line: 637, column: 14, scope: !739)
!743 = !DILocation(line: 638, column: 36, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 637, column: 78)
!745 = !DILocation(line: 639, column: 21, scope: !744)
!746 = !DILocation(line: 633, column: 16, scope: !712)
!747 = !DILocation(line: 640, column: 38, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !3, line: 640, column: 17)
!749 = !DILocation(line: 640, column: 17, scope: !744)
!750 = !DILocation(line: 644, column: 37, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 643, column: 72)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 643, column: 17)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 643, column: 17)
!754 = distinct !DILexicalBlock(scope: !748, file: !3, line: 642, column: 20)
!755 = !DILocation(line: 644, column: 21, scope: !751)
!756 = !DILocation(line: 643, column: 68, scope: !757)
!757 = !DILexicalBlockFile(scope: !752, file: !3, discriminator: 2)
!758 = !DILocation(line: 633, column: 9, scope: !712)
!759 = !DILocation(line: 643, column: 39, scope: !760)
!760 = !DILexicalBlockFile(scope: !752, file: !3, discriminator: 1)
!761 = !DILocation(line: 643, column: 17, scope: !762)
!762 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 1)
!763 = distinct !{!763, !764, !765}
!764 = !DILocation(line: 643, column: 17, scope: !753)
!765 = !DILocation(line: 646, column: 17, scope: !753)
!766 = !DILocation(line: 629, column: 23, scope: !712)
!767 = !DILocation(line: 654, column: 14, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 654, column: 13)
!769 = distinct !DILexicalBlock(scope: !712, file: !3, line: 652, column: 5)
!770 = !DILocation(line: 654, column: 13, scope: !769)
!771 = !DILocation(line: 657, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 656, column: 16)
!773 = !DILocation(line: 630, column: 8, scope: !712)
!774 = !DILocation(line: 666, column: 1, scope: !712)
!775 = distinct !DISubprogram(name: "get_last_N_database", scope: !3, file: !3, line: 358, type: !776, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{!25, !126, !25, !50, !50}
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!779 = !DILocalVariable(name: "db", arg: 1, scope: !775, file: !3, line: 358, type: !126)
!780 = !DILocalVariable(name: "num", arg: 2, scope: !775, file: !3, line: 358, type: !25)
!781 = !DILocalVariable(name: "id", arg: 3, scope: !775, file: !3, line: 358, type: !50)
!782 = !DILocalVariable(name: "profile", arg: 4, scope: !775, file: !3, line: 358, type: !50)
!783 = !DILocalVariable(name: "len", scope: !775, file: !3, line: 360, type: !25)
!784 = !DILocalVariable(name: "loop_i", scope: !775, file: !3, line: 360, type: !25)
!785 = !DILocalVariable(name: "loop_j", scope: !775, file: !3, line: 360, type: !25)
!786 = !DILocalVariable(name: "record_total_number", scope: !775, file: !3, line: 361, type: !25)
!787 = !DILocalVariable(name: "max_index", scope: !775, file: !3, line: 362, type: !25)
!788 = !DILocalVariable(name: "stereo_last_database", scope: !775, file: !3, line: 363, type: !25)
!789 = !DILocalVariable(name: "r_db", scope: !775, file: !3, line: 364, type: !92)
!790 = !DILocalVariable(name: "temp_r_db", scope: !775, file: !3, line: 365, type: !725)
!791 = !DILocation(line: 358, column: 50, scope: !775)
!792 = !DILocation(line: 358, column: 60, scope: !775)
!793 = !DILocation(line: 358, column: 68, scope: !775)
!794 = !DILocation(line: 358, column: 75, scope: !775)
!795 = !DILocation(line: 361, column: 9, scope: !775)
!796 = !DILocation(line: 362, column: 9, scope: !775)
!797 = !DILocation(line: 363, column: 9, scope: !775)
!798 = !DILocation(line: 364, column: 5, scope: !775)
!799 = !DILocation(line: 365, column: 5, scope: !775)
!800 = !DILocation(line: 365, column: 23, scope: !775)
!801 = !DILocation(line: 369, column: 10, scope: !802)
!802 = distinct !DILexicalBlock(scope: !775, file: !3, line: 369, column: 9)
!803 = !DILocation(line: 369, column: 20, scope: !802)
!804 = !DILocation(line: 369, column: 9, scope: !775)
!805 = !DILocation(line: 374, column: 15, scope: !806)
!806 = distinct !DILexicalBlock(scope: !775, file: !3, line: 373, column: 15)
!807 = !DILocation(line: 374, column: 25, scope: !806)
!808 = !DILocation(line: 374, column: 51, scope: !806)
!809 = !DILocation(line: 360, column: 9, scope: !775)
!810 = !DILocation(line: 375, column: 17, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !3, line: 375, column: 13)
!812 = !DILocation(line: 375, column: 13, scope: !806)
!813 = !DILocation(line: 379, column: 18, scope: !814)
!814 = distinct !DILexicalBlock(scope: !806, file: !3, line: 379, column: 13)
!815 = !DILocation(line: 379, column: 28, scope: !814)
!816 = !DILocation(line: 379, column: 13, scope: !806)
!817 = distinct !{!817, !818, !819}
!818 = !DILocation(line: 373, column: 5, scope: !775)
!819 = !DILocation(line: 404, column: 5, scope: !775)
!820 = !DILocation(line: 382, column: 18, scope: !821)
!821 = distinct !DILexicalBlock(scope: !806, file: !3, line: 382, column: 13)
!822 = !DILocation(line: 382, column: 25, scope: !821)
!823 = !DILocation(line: 382, column: 22, scope: !821)
!824 = !DILocation(line: 382, column: 13, scope: !806)
!825 = !DILocation(line: 389, column: 13, scope: !806)
!826 = !DILocation(line: 390, column: 22, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 390, column: 17)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 389, column: 37)
!829 = distinct !DILexicalBlock(scope: !806, file: !3, line: 389, column: 13)
!830 = !DILocation(line: 390, column: 38, scope: !827)
!831 = !DILocation(line: 390, column: 17, scope: !828)
!832 = !DILocation(line: 391, column: 25, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !3, line: 390, column: 85)
!834 = !DILocation(line: 391, column: 17, scope: !833)
!835 = !DILocation(line: 394, column: 13, scope: !833)
!836 = !DILocation(line: 396, column: 22, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 396, column: 17)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 395, column: 46)
!839 = distinct !DILexicalBlock(scope: !829, file: !3, line: 395, column: 20)
!840 = !DILocation(line: 396, column: 38, scope: !837)
!841 = !DILocation(line: 396, column: 17, scope: !838)
!842 = !DILocation(line: 397, column: 25, scope: !843)
!843 = distinct !DILexicalBlock(scope: !837, file: !3, line: 396, column: 87)
!844 = !DILocation(line: 397, column: 17, scope: !843)
!845 = !DILocation(line: 399, column: 13, scope: !843)
!846 = !DILocation(line: 401, column: 21, scope: !847)
!847 = distinct !DILexicalBlock(scope: !839, file: !3, line: 400, column: 16)
!848 = !DILocation(line: 401, column: 13, scope: !847)
!849 = !DILocation(line: 406, column: 5, scope: !775)
!850 = !DILocation(line: 406, column: 15, scope: !775)
!851 = !DILocation(line: 408, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !775, file: !3, line: 408, column: 9)
!853 = !DILocation(line: 408, column: 9, scope: !775)
!854 = !DILocation(line: 360, column: 14, scope: !775)
!855 = !DILocation(line: 415, column: 33, scope: !856)
!856 = !DILexicalBlockFile(scope: !857, file: !3, discriminator: 1)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 415, column: 9)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 415, column: 9)
!859 = distinct !DILexicalBlock(scope: !775, file: !3, line: 413, column: 5)
!860 = !DILocation(line: 415, column: 9, scope: !861)
!861 = !DILexicalBlockFile(scope: !858, file: !3, discriminator: 1)
!862 = !DILocation(line: 360, column: 22, scope: !775)
!863 = !DILocation(line: 417, column: 13, scope: !864)
!864 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 1)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 417, column: 13)
!866 = distinct !DILexicalBlock(scope: !857, file: !3, line: 415, column: 50)
!867 = !DILocation(line: 418, column: 42, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 418, column: 21)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 417, column: 70)
!870 = distinct !DILexicalBlock(scope: !865, file: !3, line: 417, column: 13)
!871 = !DILocation(line: 418, column: 72, scope: !868)
!872 = !DILocation(line: 418, column: 52, scope: !868)
!873 = !DILocation(line: 418, column: 21, scope: !869)
!874 = !DILocation(line: 417, column: 66, scope: !875)
!875 = !DILexicalBlockFile(scope: !870, file: !3, discriminator: 2)
!876 = !DILocation(line: 417, column: 37, scope: !877)
!877 = !DILexicalBlockFile(scope: !870, file: !3, discriminator: 1)
!878 = distinct !{!878, !879, !880}
!879 = !DILocation(line: 417, column: 13, scope: !865)
!880 = !DILocation(line: 421, column: 13, scope: !865)
!881 = !DILocation(line: 422, column: 21, scope: !866)
!882 = !DILocation(line: 422, column: 13, scope: !866)
!883 = !DILocation(line: 422, column: 34, scope: !866)
!884 = !DILocation(line: 423, column: 34, scope: !866)
!885 = !DILocation(line: 423, column: 44, scope: !866)
!886 = !DILocation(line: 415, column: 46, scope: !887)
!887 = !DILexicalBlockFile(scope: !857, file: !3, discriminator: 2)
!888 = distinct !{!888, !889, !890}
!889 = !DILocation(line: 415, column: 9, scope: !858)
!890 = !DILocation(line: 424, column: 9, scope: !858)
!891 = !DILocation(line: 428, column: 1, scope: !775)
!892 = distinct !DISubprogram(name: "get_last_database", scope: !3, file: !3, line: 431, type: !198, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !893)
!893 = !{!894, !895, !896, !897, !898}
!894 = !DILocalVariable(name: "db", arg: 1, scope: !892, file: !3, line: 431, type: !126)
!895 = !DILocalVariable(name: "id", arg: 2, scope: !892, file: !3, line: 431, type: !50)
!896 = !DILocalVariable(name: "len", scope: !892, file: !3, line: 433, type: !25)
!897 = !DILocalVariable(name: "max_timestamp", scope: !892, file: !3, line: 434, type: !25)
!898 = !DILocalVariable(name: "r_db", scope: !892, file: !3, line: 435, type: !92)
!899 = !DILocation(line: 431, column: 49, scope: !892)
!900 = !DILocation(line: 431, column: 56, scope: !892)
!901 = !DILocation(line: 434, column: 9, scope: !892)
!902 = !DILocation(line: 435, column: 5, scope: !892)
!903 = !DILocation(line: 438, column: 10, scope: !904)
!904 = distinct !DILexicalBlock(scope: !892, file: !3, line: 438, column: 9)
!905 = !DILocation(line: 438, column: 20, scope: !904)
!906 = !DILocation(line: 438, column: 9, scope: !892)
!907 = !DILocation(line: 443, column: 15, scope: !908)
!908 = distinct !DILexicalBlock(scope: !892, file: !3, line: 442, column: 15)
!909 = !DILocation(line: 443, column: 25, scope: !908)
!910 = !DILocation(line: 443, column: 51, scope: !908)
!911 = !DILocation(line: 433, column: 9, scope: !892)
!912 = !DILocation(line: 444, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 444, column: 13)
!914 = !DILocation(line: 444, column: 13, scope: !908)
!915 = !DILocation(line: 448, column: 18, scope: !916)
!916 = distinct !DILexicalBlock(scope: !908, file: !3, line: 448, column: 13)
!917 = !DILocation(line: 448, column: 28, scope: !916)
!918 = !DILocation(line: 448, column: 13, scope: !908)
!919 = distinct !{!919, !920, !921}
!920 = !DILocation(line: 442, column: 5, scope: !892)
!921 = !DILocation(line: 473, column: 5, scope: !892)
!922 = !DILocation(line: 451, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !908, file: !3, line: 451, column: 13)
!924 = !DILocation(line: 451, column: 25, scope: !923)
!925 = !DILocation(line: 451, column: 22, scope: !923)
!926 = !DILocation(line: 451, column: 13, scope: !908)
!927 = !DILocation(line: 456, column: 34, scope: !928)
!928 = distinct !DILexicalBlock(scope: !908, file: !3, line: 456, column: 13)
!929 = !DILocation(line: 456, column: 29, scope: !928)
!930 = !DILocation(line: 456, column: 27, scope: !928)
!931 = !DILocation(line: 456, column: 13, scope: !908)
!932 = !DILocation(line: 458, column: 13, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 456, column: 45)
!934 = !DILocation(line: 459, column: 9, scope: !933)
!935 = !DILocation(line: 460, column: 28, scope: !936)
!936 = distinct !DILexicalBlock(scope: !908, file: !3, line: 460, column: 13)
!937 = !DILocation(line: 460, column: 13, scope: !908)
!938 = !DILocation(line: 464, column: 18, scope: !939)
!939 = distinct !DILexicalBlock(scope: !908, file: !3, line: 464, column: 13)
!940 = !DILocation(line: 464, column: 25, scope: !939)
!941 = !DILocation(line: 464, column: 22, scope: !939)
!942 = !DILocation(line: 464, column: 13, scope: !908)
!943 = !DILocation(line: 468, column: 34, scope: !944)
!944 = distinct !DILexicalBlock(scope: !908, file: !3, line: 468, column: 13)
!945 = !DILocation(line: 468, column: 29, scope: !944)
!946 = !DILocation(line: 468, column: 27, scope: !944)
!947 = !DILocation(line: 468, column: 13, scope: !908)
!948 = !DILocation(line: 470, column: 13, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !3, line: 468, column: 45)
!950 = !DILocation(line: 471, column: 9, scope: !949)
!951 = !DILocation(line: 475, column: 5, scope: !892)
!952 = !DILocation(line: 475, column: 15, scope: !892)
!953 = !DILocation(line: 477, column: 5, scope: !892)
!954 = !DILocation(line: 478, column: 1, scope: !892)
!955 = distinct !DISubprogram(name: "restore_remote_device_info_profile", scope: !3, file: !3, line: 668, type: !956, isLocal: false, isDefinition: true, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!50, !80, !50, !50, !50}
!958 = !{!959, !960, !961, !962, !963, !964}
!959 = !DILocalVariable(name: "mac_addr", arg: 1, scope: !955, file: !3, line: 668, type: !80)
!960 = !DILocalVariable(name: "device_num", arg: 2, scope: !955, file: !3, line: 668, type: !50)
!961 = !DILocalVariable(name: "id", arg: 3, scope: !955, file: !3, line: 668, type: !50)
!962 = !DILocalVariable(name: "profile", arg: 4, scope: !955, file: !3, line: 668, type: !50)
!963 = !DILocalVariable(name: "temp_db", scope: !955, file: !3, line: 670, type: !92)
!964 = !DILocalVariable(name: "num", scope: !955, file: !3, line: 671, type: !50)
!965 = !DILocation(line: 668, column: 50, scope: !955)
!966 = !DILocation(line: 668, column: 63, scope: !955)
!967 = !DILocation(line: 668, column: 78, scope: !955)
!968 = !DILocation(line: 668, column: 85, scope: !955)
!969 = !DILocation(line: 670, column: 5, scope: !955)
!970 = !DILocation(line: 671, column: 44, scope: !955)
!971 = !DILocation(line: 670, column: 23, scope: !955)
!972 = !DILocation(line: 671, column: 14, scope: !955)
!973 = !DILocation(line: 671, column: 8, scope: !955)
!974 = !DILocation(line: 673, column: 5, scope: !955)
!975 = !DILocation(line: 677, column: 1, scope: !955)
!976 = !DILocation(line: 676, column: 5, scope: !955)
