; ModuleID = 'spp_profile.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/spp_profile.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.spp_profile_t = type { [1 x %struct.spp_conn_t] }
%struct.spp_conn_t = type { i16, i16, i16, i32, i8, [6 x i8] }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.spp_ioctrl_str = type { [6 x i8], i8, i32, i32, i8* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@spp_handl = internal unnamed_addr global %struct.spp_profile_t* null, section ".bt_stack_data", align 4, !dbg !40
@spp_mtu_size = internal unnamed_addr global i16 670, section ".bt_stack_data", align 2, !dbg !73
@bt_suspend_spp_resumespp_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @spp_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @spp_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @spp_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !27
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [28 x i8] c"****RFCOMM_DATA_PACKET****\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_spp_resumespp_release to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind optsize
define hidden void @spp_handl_init(%struct.spp_profile_t*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !79 {
  call void @llvm.dbg.value(metadata %struct.spp_profile_t* %0, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct.spp_profile_t* %0, %struct.spp_profile_t** @spp_handl, align 4, !dbg !85, !tbaa !86
  %2 = load i16, i16* @spp_mtu_size, align 2, !dbg !90, !tbaa !91
  tail call void @rfcomm_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @spp_packet_handler, i8 zeroext 1, i16 zeroext %2) #9, !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare void @rfcomm_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i8 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @spp_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #3 section ".bt_stack_code" !dbg !95 {
  %5 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !104, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8 %0, metadata !100, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i16 %1, metadata !101, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i8* %2, metadata !102, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16 %3, metadata !103, metadata !DIExpression()), !dbg !121
  switch i8 %0, label %106 [
    i8 4, label %6
    i8 7, label %69
  ], !dbg !122

; <label>:6:                                      ; preds = %4
  %7 = load i8, i8* %2, align 1, !dbg !123, !tbaa !124
  switch i8 %7, label %114 [
    i8 -126, label %8
    i8 -128, label %29
    i8 -127, label %32
    i8 -119, label %66
  ], !dbg !125

; <label>:8:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i16 0, metadata !111, metadata !DIExpression()), !dbg !126
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %9) #10, !dbg !127
  %10 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !128
  call void @bt_flip_addr(i8* nonnull %9, i8* %10) #9, !dbg !129
  %11 = call fastcc %struct.spp_conn_t* @__spp_conn_for_addr(i8* nonnull %9) #9, !dbg !130
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %11, metadata !112, metadata !DIExpression()), !dbg !131
  %12 = icmp eq %struct.spp_conn_t* %11, null, !dbg !132
  br i1 %12, label %13, label %16, !dbg !134

; <label>:13:                                     ; preds = %8
  %14 = call fastcc %struct.spp_conn_t* @__create_spp_conn(i8* nonnull %9) #9, !dbg !135
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %14, metadata !112, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %14, metadata !112, metadata !DIExpression()), !dbg !131
  %15 = icmp eq %struct.spp_conn_t* %14, null, !dbg !137
  br i1 %15, label %28, label %16, !dbg !139

; <label>:16:                                     ; preds = %13, %8
  %17 = phi %struct.spp_conn_t* [ %14, %13 ], [ %11, %8 ]
  %18 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %17, i32 0, i32 0, !dbg !140
  store i16 %1, i16* %18, align 4, !dbg !142, !tbaa !143
  %19 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !146
  %20 = load i8, i8* %19, align 1, !dbg !146, !tbaa !124
  %21 = zext i8 %20 to i16, !dbg !146
  %22 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !146
  %23 = load i8, i8* %22, align 1, !dbg !146, !tbaa !124
  %24 = zext i8 %23 to i16, !dbg !146
  %25 = shl nuw i16 %24, 8, !dbg !146
  %26 = or i16 %25, %21, !dbg !146
  %27 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %17, i32 0, i32 1, !dbg !147
  store i16 %26, i16* %27, align 2, !dbg !148, !tbaa !149
  call void @rfcomm_accept_connection_internal(i16 zeroext %26) #9, !dbg !150
  br label %28, !dbg !151

; <label>:28:                                     ; preds = %16, %13
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %9) #10, !dbg !152
  br label %114, !dbg !153

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !154
  %31 = load i8, i8* %30, align 1, !dbg !154, !tbaa !124
  tail call fastcc void @spp_channel_open(i8 zeroext %31, i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #11, !dbg !155
  br label %114, !dbg !156

; <label>:32:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i16 %1, metadata !157, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i16 %1, metadata !165, metadata !DIExpression()), !dbg !171
  %33 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !173
  %34 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %33, i32 0, i32 0, i32 0, !dbg !173
  %35 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %33, i32 0, i32 0, i32 1
  br label %36, !dbg !175

; <label>:36:                                     ; preds = %45, %32
  %37 = phi %struct.spp_conn_t* [ %34, %32 ], [ %46, %45 ]
  %38 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 0, i32 0, !dbg !177
  %39 = load i16, i16* %38, align 4, !dbg !177, !tbaa !143
  %40 = icmp eq i16 %39, %1, !dbg !181
  br i1 %40, label %41, label %45, !dbg !182

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 0, i32 4, !dbg !183
  %43 = load i8, i8* %42, align 4, !dbg !183, !tbaa !185
  %44 = icmp eq i8 %43, 0, !dbg !186
  br i1 %44, label %45, label %48, !dbg !187

; <label>:45:                                     ; preds = %41, %36
  %46 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 1, !dbg !189
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %46, metadata !170, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %46, metadata !170, metadata !DIExpression()), !dbg !191
  %47 = icmp ult %struct.spp_conn_t* %46, %35, !dbg !192
  br i1 %47, label %36, label %112, !dbg !175, !llvm.loop !194

; <label>:48:                                     ; preds = %41
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %37, metadata !162, metadata !DIExpression()), !dbg !197
  %49 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !198, !tbaa !86
  %50 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %49, i32 0, i32 5, !dbg !200
  %51 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %50, align 4, !dbg !200, !tbaa !201
  %52 = icmp eq void (i8*, i32, i32, i8)* %51, null, !dbg !198
  br i1 %52, label %56, label %53, !dbg !203

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 0, i32 5, i32 0
  tail call void %51(i8* %54, i32 0, i32 1, i8 zeroext 1) #9, !dbg !204
  %55 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !86
  br label %56, !dbg !206

; <label>:56:                                     ; preds = %53, %48
  %57 = phi %struct.user_interface_handler* [ %55, %53 ], [ %49, %48 ], !dbg !207
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %37, metadata !209, metadata !DIExpression()), !dbg !214
  %58 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 0, i32 1, !dbg !216
  store i16 0, i16* %58, align 2, !dbg !217, !tbaa !149
  %59 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 0, i32 2, !dbg !218
  store i16 0, i16* %59, align 4, !dbg !219, !tbaa !220
  %60 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %37, i32 0, i32 3, !dbg !221
  %61 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %57, i32 0, i32 4, !dbg !222
  %62 = bitcast i32* %60 to i8*, !dbg !222
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 11, i32 4, i1 false), !dbg !223
  %63 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %61, align 4, !dbg !222, !tbaa !224
  %64 = icmp eq void (i8, i16, i8*, i16)* %63, null, !dbg !225
  br i1 %64, label %114, label %65, !dbg !226

; <label>:65:                                     ; preds = %56
  tail call void %63(i8 zeroext 2, i16 zeroext 0, i8* null, i16 zeroext 0) #9, !dbg !227
  br label %114, !dbg !229

; <label>:66:                                     ; preds = %6
  %67 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !230
  %68 = load i8, i8* %67, align 1, !dbg !230, !tbaa !124
  tail call fastcc void @spp_channel_open(i8 zeroext %68, i16 zeroext %1, i8* nonnull %2, i8 zeroext 0) #11, !dbg !231
  br label %114, !dbg !232

; <label>:69:                                     ; preds = %4
  %70 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !233, !tbaa !124
  %71 = and i8 %70, 32, !dbg !233
  %72 = icmp eq i8 %71, 0, !dbg !233
  br i1 %72, label %76, label %73, !dbg !235

; <label>:73:                                     ; preds = %69
  %74 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #11, !dbg !236
  %75 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !124
  br label %76, !dbg !236

; <label>:76:                                     ; preds = %73, %69
  %77 = phi i8 [ %70, %69 ], [ %75, %73 ], !dbg !238
  %78 = and i8 %77, 64, !dbg !238
  %79 = icmp eq i8 %78, 0, !dbg !238
  br i1 %79, label %82, label %80, !dbg !240

; <label>:80:                                     ; preds = %76
  %81 = zext i16 %3 to i32, !dbg !241
  tail call void @put_buf(i8* %2, i32 %81) #9, !dbg !241
  br label %82, !dbg !241

; <label>:82:                                     ; preds = %80, %76
  call void @llvm.dbg.value(metadata i16 %1, metadata !165, metadata !DIExpression()), !dbg !243
  %83 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !254
  %84 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %83, i32 0, i32 0, i32 0, !dbg !254
  %85 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %83, i32 0, i32 0, i32 1
  br label %86, !dbg !255

; <label>:86:                                     ; preds = %95, %82
  %87 = phi %struct.spp_conn_t* [ %84, %82 ], [ %96, %95 ]
  %88 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %87, i32 0, i32 0, !dbg !256
  %89 = load i16, i16* %88, align 4, !dbg !256, !tbaa !143
  %90 = icmp eq i16 %89, %1, !dbg !257
  br i1 %90, label %91, label %95, !dbg !258

; <label>:91:                                     ; preds = %86
  %92 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %87, i32 0, i32 4, !dbg !259
  %93 = load i8, i8* %92, align 4, !dbg !259, !tbaa !185
  %94 = icmp eq i8 %93, 0, !dbg !260
  br i1 %94, label %95, label %98, !dbg !261

; <label>:95:                                     ; preds = %91, %86
  %96 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %87, i32 1, !dbg !262
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %96, metadata !170, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %96, metadata !170, metadata !DIExpression()), !dbg !263
  %97 = icmp ult %struct.spp_conn_t* %96, %85, !dbg !264
  br i1 %97, label %86, label %113, !dbg !255, !llvm.loop !194

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %87, metadata !252, metadata !DIExpression()), !dbg !265
  %99 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !266, !tbaa !86
  %100 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %99, i32 0, i32 4, !dbg !268
  %101 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %100, align 4, !dbg !268, !tbaa !224
  %102 = icmp eq void (i8, i16, i8*, i16)* %101, null, !dbg !269
  br i1 %102, label %114, label %103, !dbg !270

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %87, i32 0, i32 1, !dbg !271
  %105 = load i16, i16* %104, align 2, !dbg !271, !tbaa !149
  tail call void %101(i8 zeroext 7, i16 zeroext %105, i8* %2, i16 zeroext %3) #9, !dbg !273
  br label %114, !dbg !274

; <label>:106:                                    ; preds = %4
  %107 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !275, !tbaa !124
  %108 = and i8 %107, 64, !dbg !275
  %109 = icmp eq i8 %108, 0, !dbg !275
  br i1 %109, label %114, label %110, !dbg !277

; <label>:110:                                    ; preds = %106
  %111 = zext i16 %3 to i32, !dbg !278
  tail call void @put_buf(i8* %2, i32 %111) #9, !dbg !278
  br label %114, !dbg !278

; <label>:112:                                    ; preds = %45
  br label %114, !dbg !280

; <label>:113:                                    ; preds = %95
  br label %114, !dbg !280

; <label>:114:                                    ; preds = %113, %112, %110, %106, %103, %98, %66, %65, %56, %29, %28, %6
  ret void, !dbg !280
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @spp_set_mtu_size(i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !281 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !286, metadata !DIExpression()), !dbg !287
  %2 = icmp ugt i16 %0, 670, !dbg !288
  br i1 %2, label %4, label %3, !dbg !290

; <label>:3:                                      ; preds = %1
  store i16 %0, i16* @spp_mtu_size, align 2, !dbg !291, !tbaa !91
  br label %4, !dbg !292

; <label>:4:                                      ; preds = %3, %1
  %5 = phi i8 [ 1, %3 ], [ 0, %1 ]
  ret i8 %5, !dbg !293
}

; Function Attrs: nounwind optsize
define hidden i32 @spp_send_cmd_ioctrl(%struct.spp_ioctrl_str*) local_unnamed_addr #3 section ".bt_stack_code" !dbg !294 {
  call void @llvm.dbg.value(metadata %struct.spp_ioctrl_str* %0, metadata !307, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32 0, metadata !308, metadata !DIExpression()), !dbg !310
  %2 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 2, !dbg !311
  %3 = load i32, i32* %2, align 4, !dbg !311, !tbaa !312
  switch i32 %3, label %30 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %15
  ], !dbg !314

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 0, !dbg !315
  %6 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 1, !dbg !317
  %7 = load i8, i8* %6, align 2, !dbg !317, !tbaa !318
  tail call void @rfcomm_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @spp_packet_handler, [6 x i8]* %5, i8 zeroext %7) #9, !dbg !319
  br label %30, !dbg !320

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !321
  call void @llvm.dbg.value(metadata i8* %9, metadata !322, metadata !DIExpression()), !dbg !329
  %10 = tail call fastcc %struct.spp_conn_t* @__spp_conn_for_addr(i8* %9) #9, !dbg !331
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %10, metadata !328, metadata !DIExpression()), !dbg !332
  %11 = icmp eq %struct.spp_conn_t* %10, null, !dbg !333
  br i1 %11, label %30, label %12, !dbg !335

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %10, i32 0, i32 1, !dbg !336
  %14 = load i16, i16* %13, align 2, !dbg !336, !tbaa !149
  tail call void @rfcomm_disconnect_internal(i16 zeroext %14) #9, !dbg !338
  br label %30, !dbg !339

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !340
  call void @llvm.dbg.value(metadata i8* %16, metadata !341, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %26, metadata !346, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i16 %24, metadata !347, metadata !DIExpression()), !dbg !353
  %17 = tail call fastcc %struct.spp_conn_t* @__spp_conn_for_addr(i8* %16) #9, !dbg !354
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %17, metadata !348, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 0, metadata !349, metadata !DIExpression()), !dbg !356
  %18 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %17, i32 0, i32 1, !dbg !357
  %19 = load i16, i16* %18, align 2, !dbg !357, !tbaa !149
  %20 = icmp eq i16 %19, 0, !dbg !359
  br i1 %20, label %30, label %21, !dbg !360

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 3, !dbg !361
  %23 = load i32, i32* %22, align 4, !dbg !361, !tbaa !362
  %24 = trunc i32 %23 to i16, !dbg !363
  %25 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %0, i32 0, i32 4, !dbg !364
  %26 = load i8*, i8** %25, align 4, !dbg !364, !tbaa !365
  %27 = tail call i32 @rfcomm_send_internal(i16 zeroext %19, i8* %26, i16 zeroext %24) #9, !dbg !366
  call void @llvm.dbg.value(metadata i32 %27, metadata !349, metadata !DIExpression()), !dbg !356
  %28 = icmp ne i32 %27, 0, !dbg !367
  %29 = select i1 %28, i32 -1002, i32 0, !dbg !369
  call void @llvm.dbg.value(metadata i32 %29, metadata !349, metadata !DIExpression()), !dbg !356
  br label %30, !dbg !370

; <label>:30:                                     ; preds = %21, %15, %12, %8, %4, %1
  %31 = phi i32 [ -1001, %1 ], [ 0, %4 ], [ 0, %8 ], [ 0, %12 ], [ %29, %21 ], [ 0, %15 ]
  ret i32 %31, !dbg !371
}

; Function Attrs: optsize
declare void @rfcomm_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, [6 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @spp_check_conn_for_rfcomm_id(i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !372 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !376, metadata !DIExpression()), !dbg !378
  %2 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !379, !tbaa !86
  %3 = icmp eq %struct.spp_profile_t* %2, null, !dbg !381
  br i1 %3, label %21, label %4, !dbg !382

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %6, metadata !377, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %6, metadata !377, metadata !DIExpression()), !dbg !383
  %5 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %2, i32 0, i32 0, i32 1, !dbg !384
  %6 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %2, i32 0, i32 0, i32 0, !dbg !388
  br label %7, !dbg !389

; <label>:7:                                      ; preds = %16, %4
  %8 = phi %struct.spp_conn_t* [ %6, %4 ], [ %17, %16 ]
  %9 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %8, i32 0, i32 1, !dbg !391
  %10 = load i16, i16* %9, align 2, !dbg !391, !tbaa !149
  %11 = icmp eq i16 %10, %0, !dbg !394
  br i1 %11, label %12, label %16, !dbg !395

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %8, i32 0, i32 4, !dbg !396
  %14 = load i8, i8* %13, align 4, !dbg !396, !tbaa !185
  %15 = icmp eq i8 %14, 0, !dbg !398
  br i1 %15, label %16, label %19, !dbg !399

; <label>:16:                                     ; preds = %12, %7
  %17 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %8, i32 1, !dbg !401
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %17, metadata !377, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %17, metadata !377, metadata !DIExpression()), !dbg !383
  %18 = icmp ult %struct.spp_conn_t* %17, %5, !dbg !384
  br i1 %18, label %7, label %19, !dbg !389, !llvm.loop !403

; <label>:19:                                     ; preds = %16, %12
  %20 = phi i8 [ 1, %12 ], [ 0, %16 ]
  br label %21, !dbg !405

; <label>:21:                                     ; preds = %19, %1
  %22 = phi i8 [ 0, %1 ], [ %20, %19 ]
  ret i8 %22, !dbg !405
}

; Function Attrs: nounwind optsize
define hidden i32 @spp_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !406 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i16 %1, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8 0, metadata !412, metadata !DIExpression()), !dbg !415
  %3 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !416, !tbaa !86
  %4 = icmp eq %struct.spp_profile_t* %3, null, !dbg !418
  br i1 %4, label %7, label %5, !dbg !419

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 20, metadata !412, metadata !DIExpression()), !dbg !415
  %6 = bitcast %struct.spp_profile_t* %3 to i8*, !dbg !420
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %6, i32 20, i32 1, i1 false), !dbg !420
  br label %7, !dbg !421

; <label>:7:                                      ; preds = %5, %2
  %8 = phi i32 [ 20, %5 ], [ 0, %2 ]
  ret i32 %8, !dbg !422
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define hidden void @spp_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !427, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i16 %1, metadata !428, metadata !DIExpression()), !dbg !431
  %3 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !432, !tbaa !86
  %4 = icmp eq %struct.spp_profile_t* %3, null, !dbg !434
  br i1 %4, label %7, label %5, !dbg !435

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 20, metadata !429, metadata !DIExpression()), !dbg !436
  %6 = bitcast %struct.spp_profile_t* %3 to i8*, !dbg !437
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %0, i32 20, i32 1, i1 false), !dbg !437
  br label %7, !dbg !438

; <label>:7:                                      ; preds = %5, %2
  ret void, !dbg !439
}

; Function Attrs: nounwind optsize
define internal fastcc void @spp_channel_open(i8 zeroext, i16 zeroext, i8*, i8 zeroext) unnamed_addr #3 section ".bt_stack_code" !dbg !441 {
  %5 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !448, metadata !DIExpression()), !dbg !452
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !453
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #10, !dbg !453
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !450, metadata !DIExpression()), !dbg !454
  %7 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !455
  call void @bt_flip_addr(i8* nonnull %6, i8* %7) #9, !dbg !456
  %8 = call fastcc %struct.spp_conn_t* @__spp_conn_for_addr(i8* nonnull %6) #11, !dbg !457
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %8, metadata !451, metadata !DIExpression()), !dbg !458
  %9 = icmp eq %struct.spp_conn_t* %8, null, !dbg !459
  %10 = icmp eq i8 %0, 0
  br i1 %9, label %11, label %15, !dbg !461

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %59, !dbg !462

; <label>:12:                                     ; preds = %11
  %13 = call fastcc %struct.spp_conn_t* @__create_spp_conn(i8* nonnull %6) #11, !dbg !464
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %13, metadata !451, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %13, metadata !451, metadata !DIExpression()), !dbg !458
  %14 = icmp eq %struct.spp_conn_t* %13, null, !dbg !465
  br i1 %14, label %59, label %33, !dbg !467

; <label>:15:                                     ; preds = %4
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %13, metadata !451, metadata !DIExpression()), !dbg !458
  br i1 %10, label %33, label %16, !dbg !468

; <label>:16:                                     ; preds = %15
  %17 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !470, !tbaa !86
  %18 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %17, i32 0, i32 5, !dbg !474
  %19 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %18, align 4, !dbg !474, !tbaa !201
  %20 = icmp eq void (i8*, i32, i32, i8)* %19, null, !dbg !470
  %21 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %8, i32 0, i32 5, i32 0
  br i1 %20, label %24, label %22, !dbg !475

; <label>:22:                                     ; preds = %16
  call void %19(i8* %21, i32 0, i32 1, i8 zeroext %3) #9, !dbg !476
  %23 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !86
  br label %24, !dbg !478

; <label>:24:                                     ; preds = %22, %16
  %25 = phi %struct.user_interface_handler* [ %23, %22 ], [ %17, %16 ], !dbg !479
  %26 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %8, i32 0, i32 4, !dbg !481
  store i8 0, i8* %26, align 4, !dbg !482, !tbaa !185
  call void @llvm.memset.p0i8.i32(i8* %21, i8 0, i32 6, i32 1, i1 false), !dbg !483
  %27 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %25, i32 0, i32 4, !dbg !484
  %28 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %27, align 4, !dbg !484, !tbaa !224
  %29 = icmp eq void (i8, i16, i8*, i16)* %28, null, !dbg !485
  br i1 %29, label %59, label %30, !dbg !486

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %8, i32 0, i32 1, !dbg !487
  %32 = load i16, i16* %31, align 2, !dbg !487, !tbaa !149
  call void %28(i8 zeroext 2, i16 zeroext %32, i8* null, i16 zeroext 0) #9, !dbg !489
  br label %59, !dbg !490

; <label>:33:                                     ; preds = %15, %12
  %34 = phi %struct.spp_conn_t* [ %8, %15 ], [ %13, %12 ]
  %35 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %34, i32 0, i32 0, !dbg !491
  store i16 %1, i16* %35, align 4, !dbg !493, !tbaa !143
  %36 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !494
  %37 = load i8, i8* %36, align 1, !dbg !494, !tbaa !124
  %38 = zext i8 %37 to i16, !dbg !494
  %39 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !494
  %40 = load i8, i8* %39, align 1, !dbg !494, !tbaa !124
  %41 = zext i8 %40 to i16, !dbg !494
  %42 = shl nuw i16 %41, 8, !dbg !494
  %43 = or i16 %42, %38, !dbg !494
  %44 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %34, i32 0, i32 1, !dbg !495
  store i16 %43, i16* %44, align 2, !dbg !496, !tbaa !149
  %45 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !497, !tbaa !86
  %46 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %45, i32 0, i32 5, !dbg !499
  %47 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %46, align 4, !dbg !499, !tbaa !201
  %48 = icmp eq void (i8*, i32, i32, i8)* %47, null, !dbg !497
  br i1 %48, label %52, label %49, !dbg !500

; <label>:49:                                     ; preds = %33
  %50 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %34, i32 0, i32 5, i32 0, !dbg !501
  call void %47(i8* %50, i32 1, i32 1, i8 zeroext %3) #9, !dbg !503
  %51 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !86
  br label %52, !dbg !504

; <label>:52:                                     ; preds = %49, %33
  %53 = phi %struct.user_interface_handler* [ %45, %33 ], [ %51, %49 ], !dbg !505
  %54 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %53, i32 0, i32 4, !dbg !507
  %55 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %54, align 4, !dbg !507, !tbaa !224
  %56 = icmp eq void (i8, i16, i8*, i16)* %55, null, !dbg !508
  br i1 %56, label %59, label %57, !dbg !509

; <label>:57:                                     ; preds = %52
  %58 = load i16, i16* %44, align 2, !dbg !510, !tbaa !149
  call void %55(i8 zeroext 1, i16 zeroext %58, i8* null, i16 zeroext 0) #9, !dbg !512
  br label %59, !dbg !513

; <label>:59:                                     ; preds = %57, %52, %30, %24, %12, %11
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #10, !dbg !514
  ret void, !dbg !515
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.spp_conn_t* @__spp_conn_for_addr(i8* nocapture readonly) unnamed_addr #4 section ".bt_stack_code" !dbg !517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !521, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %3, metadata !522, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %3, metadata !522, metadata !DIExpression()), !dbg !524
  %2 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !525
  %3 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %2, i32 0, i32 0, i32 0, !dbg !525
  %4 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %2, i32 0, i32 0, i32 1
  br label %5, !dbg !527

; <label>:5:                                      ; preds = %14, %1
  %6 = phi %struct.spp_conn_t* [ %3, %1 ], [ %15, %14 ]
  %7 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 5, i32 0, !dbg !529
  %8 = tail call i32 @memcmp(i8* %7, i8* %0, i32 6) #11, !dbg !533
  %9 = icmp eq i32 %8, 0, !dbg !533
  br i1 %9, label %10, label %14, !dbg !534

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 4, !dbg !535
  %12 = load i8, i8* %11, align 4, !dbg !535, !tbaa !185
  %13 = icmp eq i8 %12, 0, !dbg !537
  br i1 %13, label %14, label %17, !dbg !538

; <label>:14:                                     ; preds = %10, %5
  %15 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 1, !dbg !540
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %15, metadata !522, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %15, metadata !522, metadata !DIExpression()), !dbg !524
  %16 = icmp ult %struct.spp_conn_t* %15, %4, !dbg !542
  br i1 %16, label %5, label %17, !dbg !527, !llvm.loop !544

; <label>:17:                                     ; preds = %14, %10
  %18 = phi %struct.spp_conn_t* [ %6, %10 ], [ null, %14 ]
  ret %struct.spp_conn_t* %18, !dbg !546
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.spp_conn_t* @__create_spp_conn(i8* nocapture readonly) unnamed_addr #3 section ".bt_stack_code" !dbg !547 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !549, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %3, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %3, metadata !550, metadata !DIExpression()), !dbg !552
  %2 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !553
  %3 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %2, i32 0, i32 0, i32 0, !dbg !553
  %4 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %2, i32 0, i32 0, i32 1
  br label %5, !dbg !555

; <label>:5:                                      ; preds = %15, %1
  %6 = phi %struct.spp_conn_t* [ %3, %1 ], [ %16, %15 ]
  %7 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 4, !dbg !557
  %8 = load i8, i8* %7, align 4, !dbg !557, !tbaa !185
  %9 = icmp eq i8 %8, 0, !dbg !561
  br i1 %9, label %10, label %15, !dbg !562

; <label>:10:                                     ; preds = %5
  store i8 1, i8* %7, align 4, !dbg !563, !tbaa !185
  %11 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 5, i32 0, !dbg !565
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %0, i32 6, i32 1, i1 false), !dbg !565
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* undef, metadata !209, metadata !DIExpression()), !dbg !566
  %12 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 1, !dbg !568
  store i16 0, i16* %12, align 2, !dbg !569, !tbaa !149
  %13 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 2, !dbg !570
  store i16 0, i16* %13, align 4, !dbg !571, !tbaa !220
  %14 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 0, i32 3, !dbg !572
  store i32 0, i32* %14, align 4, !dbg !573, !tbaa !574
  br label %19, !dbg !575

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %6, i32 1, !dbg !576
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %16, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %16, metadata !550, metadata !DIExpression()), !dbg !552
  %17 = icmp ult %struct.spp_conn_t* %16, %4, !dbg !578
  br i1 %17, label %5, label %18, !dbg !555, !llvm.loop !580

; <label>:18:                                     ; preds = %15
  br label %19, !dbg !582

; <label>:19:                                     ; preds = %18, %10
  %20 = phi %struct.spp_conn_t* [ %6, %10 ], [ null, %18 ]
  ret %struct.spp_conn_t* %20, !dbg !582
}

; Function Attrs: optsize
declare void @rfcomm_accept_connection_internal(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #5

; Function Attrs: optsize
declare void @rfcomm_disconnect_internal(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rfcomm_send_internal(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @spp_suspend() #8 section ".bt_stack_code" !dbg !583 {
  ret i32 0, !dbg !587
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @spp_resume() #8 section ".bt_stack_code" !dbg !588 {
  ret i32 0, !dbg !589
}

; Function Attrs: nounwind optsize
define internal i32 @spp_release() #3 section ".bt_stack_code" !dbg !590 {
  %1 = load %struct.spp_profile_t*, %struct.spp_profile_t** @spp_handl, align 4, !dbg !593, !tbaa !86
  %2 = icmp eq %struct.spp_profile_t* %1, null, !dbg !595
  br i1 %2, label %16, label %3, !dbg !596

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %5, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %5, metadata !592, metadata !DIExpression()), !dbg !597
  %4 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %1, i32 0, i32 0, i32 1, !dbg !598
  %5 = getelementptr inbounds %struct.spp_profile_t, %struct.spp_profile_t* %1, i32 0, i32 0, i32 0, !dbg !602
  br label %8, !dbg !603

; <label>:6:                                      ; preds = %8
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %13, metadata !592, metadata !DIExpression()), !dbg !597
  %7 = icmp ult %struct.spp_conn_t* %13, %4, !dbg !598
  br i1 %7, label %8, label %14, !dbg !603, !llvm.loop !605

; <label>:8:                                      ; preds = %6, %3
  %9 = phi %struct.spp_conn_t* [ %5, %3 ], [ %13, %6 ]
  %10 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %9, i32 0, i32 4, !dbg !607
  %11 = load i8, i8* %10, align 4, !dbg !607, !tbaa !185
  %12 = icmp eq i8 %11, 0, !dbg !610
  %13 = getelementptr inbounds %struct.spp_conn_t, %struct.spp_conn_t* %9, i32 1, !dbg !611
  call void @llvm.dbg.value(metadata %struct.spp_conn_t* %13, metadata !592, metadata !DIExpression()), !dbg !597
  br i1 %12, label %6, label %15, !dbg !613

; <label>:14:                                     ; preds = %6
  store %struct.spp_profile_t* null, %struct.spp_profile_t** @spp_handl, align 4, !dbg !614, !tbaa !86
  br label %16, !dbg !615

; <label>:15:                                     ; preds = %8
  br label %16, !dbg !616

; <label>:16:                                     ; preds = %15, %14, %0
  %17 = phi i32 [ 0, %0 ], [ 0, %14 ], [ 1, %15 ]
  ret i32 %17, !dbg !616
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !75, line: 190, type: !37, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !26)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/spp_profile.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
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
!16 = !{!17, !18, !23}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 26, baseType: !20)
!19 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !21, line: 43, baseType: !22)
!21 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!0, !27, !40, !73}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "bt_suspend_spp_resumespp_release", scope: !2, file: !3, line: 358, type: !29, isLocal: false, isDefinition: true)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !31, line: 313, size: 96, elements: !32)
!31 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!32 = !{!33, !38, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !30, file: !31, line: 314, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, null}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !30, file: !31, line: 315, baseType: !34, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !30, file: !31, line: 316, baseType: !34, size: 32, offset: 64)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "spp_handl", scope: !2, file: !3, line: 17, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_profile_t", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "../btstack/Profile/include/bredr/spp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 22, size: 160, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !45, file: !44, line: 23, baseType: !48, size: 160)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, elements: !71)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_conn_t", file: !44, line: 20, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 9, size: 160, elements: !51)
!51 = !{!52, !55, !56, !57, !60, !63}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !50, file: !44, line: 14, baseType: !53, size: 16)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !54, line: 13, baseType: !22)
!54 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_cid", scope: !50, file: !44, line: 15, baseType: !53, size: 16, offset: 16)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_send_cmd_handle", scope: !50, file: !44, line: 16, baseType: !53, size: 16, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_dlci", scope: !50, file: !44, line: 17, baseType: !58, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !54, line: 15, baseType: !59)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !50, file: !44, line: 18, baseType: !61, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !54, line: 11, baseType: !62)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !50, file: !44, line: 19, baseType: !64, size: 48, offset: 104)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !65, line: 7, baseType: !66)
!65 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 48, elements: !69)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 20, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 29, baseType: !62)
!69 = !{!70}
!70 = !DISubrange(count: 6)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "spp_mtu_size", scope: !2, file: !3, line: 249, type: !53, isLocal: true, isDefinition: true)
!75 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!76 = !{i32 2, !"Dwarf Version", i32 4}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!79 = distinct !DISubprogram(name: "spp_handl_init", scope: !3, file: !3, line: 252, type: !80, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !42}
!82 = !{!83}
!83 = !DILocalVariable(name: "handl", arg: 1, scope: !79, file: !3, line: 252, type: !42)
!84 = !DILocation(line: 252, column: 37, scope: !79)
!85 = !DILocation(line: 254, column: 15, scope: !79)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 255, column: 79, scope: !79)
!91 = !{!92, !92, i64 0}
!92 = !{!"short", !88, i64 0}
!93 = !DILocation(line: 255, column: 5, scope: !79)
!94 = !DILocation(line: 256, column: 1, scope: !79)
!95 = distinct !DISubprogram(name: "spp_packet_handler", scope: !3, file: !3, line: 198, type: !96, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !99)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !61, !53, !98, !53}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!99 = !{!100, !101, !102, !103}
!100 = !DILocalVariable(name: "packet_type", arg: 1, scope: !95, file: !3, line: 198, type: !61)
!101 = !DILocalVariable(name: "channel", arg: 2, scope: !95, file: !3, line: 198, type: !53)
!102 = !DILocalVariable(name: "packet", arg: 3, scope: !95, file: !3, line: 198, type: !98)
!103 = !DILocalVariable(name: "size", arg: 4, scope: !95, file: !3, line: 198, type: !53)
!104 = !DILocalVariable(name: "addr", scope: !105, file: !3, line: 79, type: !64)
!105 = distinct !DISubprogram(name: "spp_incoming_connection", scope: !3, file: !3, line: 77, type: !106, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !53, !98, !53}
!108 = !{!109, !110, !111, !104, !112}
!109 = !DILocalVariable(name: "channel", arg: 1, scope: !105, file: !3, line: 77, type: !53)
!110 = !DILocalVariable(name: "packet", arg: 2, scope: !105, file: !3, line: 77, type: !98)
!111 = !DILocalVariable(name: "size", arg: 3, scope: !105, file: !3, line: 77, type: !53)
!112 = !DILocalVariable(name: "conn", scope: !105, file: !3, line: 80, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!114 = !DILocation(line: 79, column: 15, scope: !105, inlinedAt: !115)
!115 = distinct !DILocation(line: 207, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 203, column: 28)
!117 = distinct !DILexicalBlock(scope: !95, file: !3, line: 201, column: 26)
!118 = !DILocation(line: 198, column: 35, scope: !95)
!119 = !DILocation(line: 198, column: 52, scope: !95)
!120 = !DILocation(line: 198, column: 65, scope: !95)
!121 = !DILocation(line: 198, column: 77, scope: !95)
!122 = !DILocation(line: 201, column: 5, scope: !95)
!123 = !DILocation(line: 203, column: 17, scope: !117)
!124 = !{!88, !88, i64 0}
!125 = !DILocation(line: 203, column: 9, scope: !117)
!126 = !DILocation(line: 77, column: 66, scope: !105, inlinedAt: !115)
!127 = !DILocation(line: 79, column: 5, scope: !105, inlinedAt: !115)
!128 = !DILocation(line: 82, column: 31, scope: !105, inlinedAt: !115)
!129 = !DILocation(line: 82, column: 5, scope: !105, inlinedAt: !115)
!130 = !DILocation(line: 84, column: 12, scope: !105, inlinedAt: !115)
!131 = !DILocation(line: 80, column: 17, scope: !105, inlinedAt: !115)
!132 = !DILocation(line: 85, column: 10, scope: !133, inlinedAt: !115)
!133 = distinct !DILexicalBlock(scope: !105, file: !3, line: 85, column: 9)
!134 = !DILocation(line: 85, column: 9, scope: !105, inlinedAt: !115)
!135 = !DILocation(line: 86, column: 16, scope: !136, inlinedAt: !115)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 85, column: 16)
!137 = !DILocation(line: 88, column: 9, scope: !138, inlinedAt: !115)
!138 = distinct !DILexicalBlock(scope: !105, file: !3, line: 88, column: 9)
!139 = !DILocation(line: 88, column: 9, scope: !105, inlinedAt: !115)
!140 = !DILocation(line: 89, column: 15, scope: !141, inlinedAt: !115)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 88, column: 15)
!142 = !DILocation(line: 89, column: 23, scope: !141, inlinedAt: !115)
!143 = !{!144, !92, i64 0}
!144 = !{!"", !92, i64 0, !92, i64 2, !92, i64 4, !145, i64 8, !88, i64 12, !88, i64 13}
!145 = !{!"int", !88, i64 0}
!146 = !DILocation(line: 90, column: 28, scope: !141, inlinedAt: !115)
!147 = !DILocation(line: 90, column: 15, scope: !141, inlinedAt: !115)
!148 = !DILocation(line: 90, column: 26, scope: !141, inlinedAt: !115)
!149 = !{!144, !92, i64 2}
!150 = !DILocation(line: 91, column: 9, scope: !141, inlinedAt: !115)
!151 = !DILocation(line: 92, column: 5, scope: !141, inlinedAt: !115)
!152 = !DILocation(line: 93, column: 1, scope: !105, inlinedAt: !115)
!153 = !DILocation(line: 208, column: 13, scope: !116)
!154 = !DILocation(line: 213, column: 30, scope: !116)
!155 = !DILocation(line: 213, column: 13, scope: !116)
!156 = !DILocation(line: 214, column: 13, scope: !116)
!157 = !DILocalVariable(name: "channel", arg: 1, scope: !158, file: !3, line: 134, type: !53)
!158 = distinct !DISubprogram(name: "__free_spp_conn", scope: !3, file: !3, line: 134, type: !159, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !53}
!161 = !{!157, !162}
!162 = !DILocalVariable(name: "conn", scope: !158, file: !3, line: 136, type: !113)
!163 = !DILocation(line: 134, column: 33, scope: !158, inlinedAt: !164)
!164 = distinct !DILocation(line: 219, column: 13, scope: !116)
!165 = !DILocalVariable(name: "channel", arg: 1, scope: !166, file: !3, line: 50, type: !53)
!166 = distinct !DISubprogram(name: "__spp_conn_for_channel", scope: !3, file: !3, line: 50, type: !167, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!113, !53}
!169 = !{!165, !170}
!170 = !DILocalVariable(name: "conn", scope: !166, file: !3, line: 52, type: !113)
!171 = !DILocation(line: 50, column: 47, scope: !166, inlinedAt: !172)
!172 = distinct !DILocation(line: 136, column: 24, scope: !158, inlinedAt: !164)
!173 = !DILocation(line: 54, column: 5, scope: !174, inlinedAt: !172)
!174 = distinct !DILexicalBlock(scope: !166, file: !3, line: 54, column: 5)
!175 = !DILocation(line: 54, column: 5, scope: !176, inlinedAt: !172)
!176 = !DILexicalBlockFile(scope: !174, file: !3, discriminator: 1)
!177 = !DILocation(line: 55, column: 19, scope: !178, inlinedAt: !172)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 55, column: 13)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 54, column: 34)
!180 = distinct !DILexicalBlock(scope: !174, file: !3, line: 54, column: 5)
!181 = !DILocation(line: 55, column: 27, scope: !178, inlinedAt: !172)
!182 = !DILocation(line: 55, column: 38, scope: !178, inlinedAt: !172)
!183 = !DILocation(line: 55, column: 47, scope: !184, inlinedAt: !172)
!184 = !DILexicalBlockFile(scope: !178, file: !3, discriminator: 1)
!185 = !{!144, !88, i64 12}
!186 = !DILocation(line: 55, column: 41, scope: !184, inlinedAt: !172)
!187 = !DILocation(line: 55, column: 13, scope: !188, inlinedAt: !172)
!188 = !DILexicalBlockFile(scope: !179, file: !3, discriminator: 1)
!189 = !DILocation(line: 54, column: 5, scope: !190, inlinedAt: !172)
!190 = !DILexicalBlockFile(scope: !180, file: !3, discriminator: 2)
!191 = !DILocation(line: 52, column: 17, scope: !166, inlinedAt: !172)
!192 = !DILocation(line: 54, column: 5, scope: !193, inlinedAt: !172)
!193 = !DILexicalBlockFile(scope: !180, file: !3, discriminator: 1)
!194 = distinct !{!194, !195, !196}
!195 = !DILocation(line: 54, column: 5, scope: !174)
!196 = !DILocation(line: 58, column: 5, scope: !174)
!197 = !DILocation(line: 136, column: 17, scope: !158, inlinedAt: !164)
!198 = !DILocation(line: 140, column: 9, scope: !199, inlinedAt: !164)
!199 = distinct !DILexicalBlock(scope: !158, file: !3, line: 140, column: 9)
!200 = !DILocation(line: 140, column: 25, scope: !199, inlinedAt: !164)
!201 = !{!202, !87, i64 20}
!202 = !{!"user_interface_handler", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !87, i64 48, !87, i64 52, !87, i64 56}
!203 = !DILocation(line: 140, column: 9, scope: !158, inlinedAt: !164)
!204 = !DILocation(line: 141, column: 9, scope: !205, inlinedAt: !164)
!205 = distinct !DILexicalBlock(scope: !199, file: !3, line: 140, column: 50)
!206 = !DILocation(line: 142, column: 5, scope: !205, inlinedAt: !164)
!207 = !DILocation(line: 146, column: 9, scope: !208, inlinedAt: !164)
!208 = distinct !DILexicalBlock(scope: !158, file: !3, line: 146, column: 9)
!209 = !DILocalVariable(name: "conn", arg: 1, scope: !210, file: !3, line: 22, type: !113)
!210 = distinct !DISubprogram(name: "spp_var_init", scope: !3, file: !3, line: 22, type: !211, isLocal: true, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !113}
!213 = !{!209}
!214 = !DILocation(line: 22, column: 38, scope: !210, inlinedAt: !215)
!215 = distinct !DILocation(line: 145, column: 5, scope: !158, inlinedAt: !164)
!216 = !DILocation(line: 24, column: 11, scope: !210, inlinedAt: !215)
!217 = !DILocation(line: 24, column: 22, scope: !210, inlinedAt: !215)
!218 = !DILocation(line: 25, column: 11, scope: !210, inlinedAt: !215)
!219 = !DILocation(line: 25, column: 33, scope: !210, inlinedAt: !215)
!220 = !{!144, !92, i64 4}
!221 = !DILocation(line: 26, column: 11, scope: !210, inlinedAt: !215)
!222 = !DILocation(line: 146, column: 25, scope: !208, inlinedAt: !164)
!223 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !215)
!224 = !{!202, !87, i64 16}
!225 = !DILocation(line: 146, column: 46, scope: !208, inlinedAt: !164)
!226 = !DILocation(line: 146, column: 9, scope: !158, inlinedAt: !164)
!227 = !DILocation(line: 147, column: 9, scope: !228, inlinedAt: !164)
!228 = distinct !DILexicalBlock(scope: !208, file: !3, line: 146, column: 55)
!229 = !DILocation(line: 148, column: 5, scope: !228, inlinedAt: !164)
!230 = !DILocation(line: 224, column: 30, scope: !116)
!231 = !DILocation(line: 224, column: 13, scope: !116)
!232 = !DILocation(line: 225, column: 13, scope: !116)
!233 = !DILocation(line: 236, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !117, file: !3, line: 236, column: 9)
!235 = !DILocation(line: 236, column: 9, scope: !117)
!236 = !DILocation(line: 236, column: 9, scope: !237)
!237 = !DILexicalBlockFile(scope: !234, file: !3, discriminator: 1)
!238 = !DILocation(line: 237, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !117, file: !3, line: 237, column: 9)
!240 = !DILocation(line: 237, column: 9, scope: !117)
!241 = !DILocation(line: 237, column: 9, scope: !242)
!242 = !DILexicalBlockFile(scope: !239, file: !3, discriminator: 1)
!243 = !DILocation(line: 50, column: 47, scope: !166, inlinedAt: !244)
!244 = distinct !DILocation(line: 177, column: 24, scope: !245, inlinedAt: !253)
!245 = distinct !DISubprogram(name: "spp_come_data_deal", scope: !3, file: !3, line: 175, type: !246, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{!37, !53, !98, !53}
!248 = !{!249, !250, !251, !252}
!249 = !DILocalVariable(name: "channel", arg: 1, scope: !245, file: !3, line: 175, type: !53)
!250 = !DILocalVariable(name: "packet", arg: 2, scope: !245, file: !3, line: 175, type: !98)
!251 = !DILocalVariable(name: "size", arg: 3, scope: !245, file: !3, line: 175, type: !53)
!252 = !DILocalVariable(name: "conn", scope: !245, file: !3, line: 177, type: !113)
!253 = distinct !DILocation(line: 238, column: 9, scope: !117)
!254 = !DILocation(line: 54, column: 5, scope: !174, inlinedAt: !244)
!255 = !DILocation(line: 54, column: 5, scope: !176, inlinedAt: !244)
!256 = !DILocation(line: 55, column: 19, scope: !178, inlinedAt: !244)
!257 = !DILocation(line: 55, column: 27, scope: !178, inlinedAt: !244)
!258 = !DILocation(line: 55, column: 38, scope: !178, inlinedAt: !244)
!259 = !DILocation(line: 55, column: 47, scope: !184, inlinedAt: !244)
!260 = !DILocation(line: 55, column: 41, scope: !184, inlinedAt: !244)
!261 = !DILocation(line: 55, column: 13, scope: !188, inlinedAt: !244)
!262 = !DILocation(line: 54, column: 5, scope: !190, inlinedAt: !244)
!263 = !DILocation(line: 52, column: 17, scope: !166, inlinedAt: !244)
!264 = !DILocation(line: 54, column: 5, scope: !193, inlinedAt: !244)
!265 = !DILocation(line: 177, column: 17, scope: !245, inlinedAt: !253)
!266 = !DILocation(line: 181, column: 9, scope: !267, inlinedAt: !253)
!267 = distinct !DILexicalBlock(scope: !245, file: !3, line: 181, column: 9)
!268 = !DILocation(line: 181, column: 25, scope: !267, inlinedAt: !253)
!269 = !DILocation(line: 181, column: 46, scope: !267, inlinedAt: !253)
!270 = !DILocation(line: 181, column: 9, scope: !245, inlinedAt: !253)
!271 = !DILocation(line: 182, column: 72, scope: !272, inlinedAt: !253)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 181, column: 55)
!273 = !DILocation(line: 182, column: 9, scope: !272, inlinedAt: !253)
!274 = !DILocation(line: 183, column: 5, scope: !272, inlinedAt: !253)
!275 = !DILocation(line: 243, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !117, file: !3, line: 243, column: 9)
!277 = !DILocation(line: 243, column: 9, scope: !117)
!278 = !DILocation(line: 243, column: 9, scope: !279)
!279 = !DILexicalBlockFile(scope: !276, file: !3, discriminator: 1)
!280 = !DILocation(line: 246, column: 1, scope: !95)
!281 = distinct !DISubprogram(name: "spp_set_mtu_size", scope: !3, file: !3, line: 259, type: !282, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !285)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !53}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 11, baseType: !62)
!285 = !{!286}
!286 = !DILocalVariable(name: "mtu_size", arg: 1, scope: !281, file: !3, line: 259, type: !53)
!287 = !DILocation(line: 259, column: 27, scope: !281)
!288 = !DILocation(line: 261, column: 18, scope: !289)
!289 = distinct !DILexicalBlock(scope: !281, file: !3, line: 261, column: 9)
!290 = !DILocation(line: 261, column: 9, scope: !281)
!291 = !DILocation(line: 264, column: 18, scope: !281)
!292 = !DILocation(line: 265, column: 5, scope: !281)
!293 = !DILocation(line: 266, column: 1, scope: !281)
!294 = distinct !DISubprogram(name: "spp_send_cmd_ioctrl", scope: !3, file: !3, line: 269, type: !295, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !306)
!295 = !DISubroutineType(types: !296)
!296 = !{!37, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_ioctrl_str", file: !44, line: 38, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 32, size: 160, elements: !300)
!300 = !{!301, !302, !303, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !299, file: !44, line: 33, baseType: !64, size: 48)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_cid", scope: !299, file: !44, line: 34, baseType: !61, size: 8, offset: 48)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !299, file: !44, line: 35, baseType: !37, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !299, file: !44, line: 36, baseType: !37, size: 32, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !299, file: !44, line: 37, baseType: !98, size: 32, offset: 128)
!306 = !{!307, !308}
!307 = !DILocalVariable(name: "io_str", arg: 1, scope: !294, file: !3, line: 269, type: !297)
!308 = !DILocalVariable(name: "error", scope: !294, file: !3, line: 271, type: !37)
!309 = !DILocation(line: 269, column: 42, scope: !294)
!310 = !DILocation(line: 271, column: 9, scope: !294)
!311 = !DILocation(line: 272, column: 21, scope: !294)
!312 = !{!313, !145, i64 8}
!313 = !{!"", !88, i64 0, !88, i64 6, !145, i64 8, !145, i64 12, !87, i64 16}
!314 = !DILocation(line: 272, column: 5, scope: !294)
!315 = !DILocation(line: 274, column: 75, scope: !316)
!316 = distinct !DILexicalBlock(scope: !294, file: !3, line: 272, column: 27)
!317 = !DILocation(line: 274, column: 89, scope: !316)
!318 = !{!313, !88, i64 6}
!319 = !DILocation(line: 274, column: 9, scope: !316)
!320 = !DILocation(line: 275, column: 9, scope: !316)
!321 = !DILocation(line: 277, column: 32, scope: !316)
!322 = !DILocalVariable(name: "addr", arg: 1, scope: !323, file: !3, line: 188, type: !326)
!323 = distinct !DISubprogram(name: "spp_disconnect_channel", scope: !3, file: !3, line: 188, type: !324, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !327)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!327 = !{!322, !328}
!328 = !DILocalVariable(name: "conn", scope: !323, file: !3, line: 190, type: !113)
!329 = !DILocation(line: 188, column: 46, scope: !323, inlinedAt: !330)
!330 = distinct !DILocation(line: 277, column: 9, scope: !316)
!331 = !DILocation(line: 190, column: 24, scope: !323, inlinedAt: !330)
!332 = !DILocation(line: 190, column: 17, scope: !323, inlinedAt: !330)
!333 = !DILocation(line: 191, column: 9, scope: !334, inlinedAt: !330)
!334 = distinct !DILexicalBlock(scope: !323, file: !3, line: 191, column: 9)
!335 = !DILocation(line: 191, column: 9, scope: !323, inlinedAt: !330)
!336 = !DILocation(line: 193, column: 42, scope: !337, inlinedAt: !330)
!337 = distinct !DILexicalBlock(scope: !334, file: !3, line: 191, column: 15)
!338 = !DILocation(line: 193, column: 9, scope: !337, inlinedAt: !330)
!339 = !DILocation(line: 194, column: 5, scope: !337, inlinedAt: !330)
!340 = !DILocation(line: 280, column: 35, scope: !316)
!341 = !DILocalVariable(name: "addr", arg: 1, scope: !342, file: !3, line: 159, type: !326)
!342 = distinct !DISubprogram(name: "spp_data_try_send", scope: !3, file: !3, line: 159, type: !343, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!37, !326, !98, !53}
!345 = !{!341, !346, !347, !348, !349}
!346 = !DILocalVariable(name: "buf", arg: 2, scope: !342, file: !3, line: 159, type: !98)
!347 = !DILocalVariable(name: "len", arg: 3, scope: !342, file: !3, line: 159, type: !53)
!348 = !DILocalVariable(name: "conn", scope: !342, file: !3, line: 161, type: !113)
!349 = !DILocalVariable(name: "err", scope: !342, file: !3, line: 162, type: !37)
!350 = !DILocation(line: 159, column: 40, scope: !342, inlinedAt: !351)
!351 = distinct !DILocation(line: 280, column: 17, scope: !316)
!352 = !DILocation(line: 159, column: 51, scope: !342, inlinedAt: !351)
!353 = !DILocation(line: 159, column: 60, scope: !342, inlinedAt: !351)
!354 = !DILocation(line: 161, column: 24, scope: !342, inlinedAt: !351)
!355 = !DILocation(line: 161, column: 17, scope: !342, inlinedAt: !351)
!356 = !DILocation(line: 162, column: 9, scope: !342, inlinedAt: !351)
!357 = !DILocation(line: 163, column: 15, scope: !358, inlinedAt: !351)
!358 = distinct !DILexicalBlock(scope: !342, file: !3, line: 163, column: 9)
!359 = !DILocation(line: 163, column: 26, scope: !358, inlinedAt: !351)
!360 = !DILocation(line: 163, column: 9, scope: !342, inlinedAt: !351)
!361 = !DILocation(line: 280, column: 75, scope: !316)
!362 = !{!313, !145, i64 12}
!363 = !DILocation(line: 280, column: 67, scope: !316)
!364 = !DILocation(line: 280, column: 57, scope: !316)
!365 = !{!313, !87, i64 16}
!366 = !DILocation(line: 166, column: 11, scope: !342, inlinedAt: !351)
!367 = !DILocation(line: 167, column: 9, scope: !368, inlinedAt: !351)
!368 = distinct !DILexicalBlock(scope: !342, file: !3, line: 167, column: 9)
!369 = !DILocation(line: 167, column: 9, scope: !342, inlinedAt: !351)
!370 = !DILocation(line: 173, column: 5, scope: !342, inlinedAt: !351)
!371 = !DILocation(line: 287, column: 1, scope: !294)
!372 = distinct !DISubprogram(name: "spp_check_conn_for_rfcomm_id", scope: !3, file: !3, line: 289, type: !373, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!61, !53}
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "rfcomm_cid", arg: 1, scope: !372, file: !3, line: 289, type: !53)
!377 = !DILocalVariable(name: "conn", scope: !372, file: !3, line: 291, type: !113)
!378 = !DILocation(line: 289, column: 37, scope: !372)
!379 = !DILocation(line: 293, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !372, file: !3, line: 293, column: 9)
!381 = !DILocation(line: 293, column: 19, scope: !380)
!382 = !DILocation(line: 293, column: 9, scope: !372)
!383 = !DILocation(line: 291, column: 17, scope: !372)
!384 = !DILocation(line: 297, column: 5, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !3, discriminator: 1)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 297, column: 5)
!387 = distinct !DILexicalBlock(scope: !372, file: !3, line: 297, column: 5)
!388 = !DILocation(line: 297, column: 5, scope: !387)
!389 = !DILocation(line: 297, column: 5, scope: !390)
!390 = !DILexicalBlockFile(scope: !387, file: !3, discriminator: 1)
!391 = !DILocation(line: 298, column: 19, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 298, column: 13)
!393 = distinct !DILexicalBlock(scope: !386, file: !3, line: 297, column: 34)
!394 = !DILocation(line: 298, column: 30, scope: !392)
!395 = !DILocation(line: 298, column: 44, scope: !392)
!396 = !DILocation(line: 298, column: 53, scope: !397)
!397 = !DILexicalBlockFile(scope: !392, file: !3, discriminator: 1)
!398 = !DILocation(line: 298, column: 47, scope: !397)
!399 = !DILocation(line: 298, column: 13, scope: !400)
!400 = !DILexicalBlockFile(scope: !393, file: !3, discriminator: 1)
!401 = !DILocation(line: 297, column: 5, scope: !402)
!402 = !DILexicalBlockFile(scope: !386, file: !3, discriminator: 2)
!403 = distinct !{!403, !388, !404}
!404 = !DILocation(line: 301, column: 5, scope: !387)
!405 = !DILocation(line: 303, column: 1, scope: !372)
!406 = distinct !DISubprogram(name: "spp_core_data_for_send", scope: !3, file: !3, line: 305, type: !407, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!37, !98, !53}
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "packet", arg: 1, scope: !406, file: !3, line: 305, type: !98)
!411 = !DILocalVariable(name: "size", arg: 2, scope: !406, file: !3, line: 305, type: !53)
!412 = !DILocalVariable(name: "len", scope: !406, file: !3, line: 307, type: !61)
!413 = !DILocation(line: 305, column: 32, scope: !406)
!414 = !DILocation(line: 305, column: 44, scope: !406)
!415 = !DILocation(line: 307, column: 8, scope: !406)
!416 = !DILocation(line: 309, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !406, file: !3, line: 309, column: 9)
!418 = !DILocation(line: 309, column: 19, scope: !417)
!419 = !DILocation(line: 309, column: 9, scope: !406)
!420 = !DILocation(line: 315, column: 5, scope: !406)
!421 = !DILocation(line: 317, column: 5, scope: !406)
!422 = !DILocation(line: 318, column: 1, scope: !406)
!423 = distinct !DISubprogram(name: "spp_core_data_for_set", scope: !3, file: !3, line: 320, type: !424, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !98, !53}
!426 = !{!427, !428, !429}
!427 = !DILocalVariable(name: "packet", arg: 1, scope: !423, file: !3, line: 320, type: !98)
!428 = !DILocalVariable(name: "size", arg: 2, scope: !423, file: !3, line: 320, type: !53)
!429 = !DILocalVariable(name: "len", scope: !423, file: !3, line: 322, type: !61)
!430 = !DILocation(line: 320, column: 32, scope: !423)
!431 = !DILocation(line: 320, column: 44, scope: !423)
!432 = !DILocation(line: 324, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !3, line: 324, column: 9)
!434 = !DILocation(line: 324, column: 19, scope: !433)
!435 = !DILocation(line: 324, column: 9, scope: !423)
!436 = !DILocation(line: 322, column: 8, scope: !423)
!437 = !DILocation(line: 329, column: 5, scope: !423)
!438 = !DILocation(line: 331, column: 1, scope: !423)
!439 = !DILocation(line: 331, column: 1, scope: !440)
!440 = !DILexicalBlockFile(scope: !423, file: !3, discriminator: 1)
!441 = distinct !DISubprogram(name: "spp_channel_open", scope: !3, file: !3, line: 95, type: !442, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !61, !53, !98, !53, !61}
!444 = !{!445, !446, !447, !448, !449, !450, !451}
!445 = !DILocalVariable(name: "open_flag", arg: 1, scope: !441, file: !3, line: 95, type: !61)
!446 = !DILocalVariable(name: "channel", arg: 2, scope: !441, file: !3, line: 95, type: !53)
!447 = !DILocalVariable(name: "packet", arg: 3, scope: !441, file: !3, line: 95, type: !98)
!448 = !DILocalVariable(name: "size", arg: 4, scope: !441, file: !3, line: 95, type: !53)
!449 = !DILocalVariable(name: "conn_type", arg: 5, scope: !441, file: !3, line: 95, type: !61)
!450 = !DILocalVariable(name: "addr", scope: !441, file: !3, line: 97, type: !64)
!451 = !DILocalVariable(name: "conn", scope: !441, file: !3, line: 98, type: !113)
!452 = !DILocation(line: 95, column: 73, scope: !441)
!453 = !DILocation(line: 97, column: 5, scope: !441)
!454 = !DILocation(line: 97, column: 15, scope: !441)
!455 = !DILocation(line: 100, column: 31, scope: !441)
!456 = !DILocation(line: 100, column: 5, scope: !441)
!457 = !DILocation(line: 102, column: 12, scope: !441)
!458 = !DILocation(line: 98, column: 17, scope: !441)
!459 = !DILocation(line: 103, column: 10, scope: !460)
!460 = distinct !DILexicalBlock(scope: !441, file: !3, line: 103, column: 9)
!461 = !DILocation(line: 103, column: 9, scope: !441)
!462 = !DILocation(line: 104, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 103, column: 16)
!464 = !DILocation(line: 107, column: 16, scope: !463)
!465 = !DILocation(line: 109, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !441, file: !3, line: 109, column: 9)
!467 = !DILocation(line: 109, column: 9, scope: !441)
!468 = !DILocation(line: 110, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !3, line: 109, column: 15)
!470 = !DILocation(line: 112, column: 17, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 112, column: 17)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 110, column: 24)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 110, column: 13)
!474 = !DILocation(line: 112, column: 33, scope: !471)
!475 = !DILocation(line: 112, column: 17, scope: !472)
!476 = !DILocation(line: 113, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !471, file: !3, line: 112, column: 58)
!478 = !DILocation(line: 114, column: 13, scope: !477)
!479 = !DILocation(line: 117, column: 17, scope: !480)
!480 = distinct !DILexicalBlock(scope: !472, file: !3, line: 117, column: 17)
!481 = !DILocation(line: 115, column: 19, scope: !472)
!482 = !DILocation(line: 115, column: 26, scope: !472)
!483 = !DILocation(line: 116, column: 13, scope: !472)
!484 = !DILocation(line: 117, column: 33, scope: !480)
!485 = !DILocation(line: 117, column: 54, scope: !480)
!486 = !DILocation(line: 117, column: 17, scope: !472)
!487 = !DILocation(line: 118, column: 63, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !3, line: 117, column: 63)
!489 = !DILocation(line: 118, column: 17, scope: !488)
!490 = !DILocation(line: 119, column: 13, scope: !488)
!491 = !DILocation(line: 121, column: 19, scope: !492)
!492 = distinct !DILexicalBlock(scope: !473, file: !3, line: 120, column: 16)
!493 = !DILocation(line: 121, column: 27, scope: !492)
!494 = !DILocation(line: 122, column: 32, scope: !492)
!495 = !DILocation(line: 122, column: 19, scope: !492)
!496 = !DILocation(line: 122, column: 30, scope: !492)
!497 = !DILocation(line: 124, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !492, file: !3, line: 124, column: 17)
!499 = !DILocation(line: 124, column: 33, scope: !498)
!500 = !DILocation(line: 124, column: 17, scope: !492)
!501 = !DILocation(line: 125, column: 57, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 124, column: 58)
!503 = !DILocation(line: 125, column: 17, scope: !502)
!504 = !DILocation(line: 126, column: 13, scope: !502)
!505 = !DILocation(line: 127, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !492, file: !3, line: 127, column: 17)
!507 = !DILocation(line: 127, column: 33, scope: !506)
!508 = !DILocation(line: 127, column: 54, scope: !506)
!509 = !DILocation(line: 127, column: 17, scope: !492)
!510 = !DILocation(line: 128, column: 63, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 127, column: 63)
!512 = !DILocation(line: 128, column: 17, scope: !511)
!513 = !DILocation(line: 129, column: 13, scope: !511)
!514 = !DILocation(line: 133, column: 1, scope: !441)
!515 = !DILocation(line: 133, column: 1, scope: !516)
!516 = !DILexicalBlockFile(scope: !441, file: !3, discriminator: 2)
!517 = distinct !DISubprogram(name: "__spp_conn_for_addr", scope: !3, file: !3, line: 29, type: !518, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!113, !326}
!520 = !{!521, !522}
!521 = !DILocalVariable(name: "addr", arg: 1, scope: !517, file: !3, line: 29, type: !326)
!522 = !DILocalVariable(name: "conn", scope: !517, file: !3, line: 31, type: !113)
!523 = !DILocation(line: 29, column: 50, scope: !517)
!524 = !DILocation(line: 31, column: 17, scope: !517)
!525 = !DILocation(line: 32, column: 5, scope: !526)
!526 = distinct !DILexicalBlock(scope: !517, file: !3, line: 32, column: 5)
!527 = !DILocation(line: 32, column: 5, scope: !528)
!528 = !DILexicalBlockFile(scope: !526, file: !3, discriminator: 1)
!529 = !DILocation(line: 33, column: 21, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 33, column: 13)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 32, column: 34)
!532 = distinct !DILexicalBlock(scope: !526, file: !3, line: 32, column: 5)
!533 = !DILocation(line: 33, column: 14, scope: !530)
!534 = !DILocation(line: 33, column: 43, scope: !530)
!535 = !DILocation(line: 33, column: 52, scope: !536)
!536 = !DILexicalBlockFile(scope: !530, file: !3, discriminator: 1)
!537 = !DILocation(line: 33, column: 46, scope: !536)
!538 = !DILocation(line: 33, column: 13, scope: !539)
!539 = !DILexicalBlockFile(scope: !531, file: !3, discriminator: 1)
!540 = !DILocation(line: 32, column: 5, scope: !541)
!541 = !DILexicalBlockFile(scope: !532, file: !3, discriminator: 2)
!542 = !DILocation(line: 32, column: 5, scope: !543)
!543 = !DILexicalBlockFile(scope: !532, file: !3, discriminator: 1)
!544 = distinct !{!544, !525, !545}
!545 = !DILocation(line: 36, column: 5, scope: !526)
!546 = !DILocation(line: 38, column: 1, scope: !517)
!547 = distinct !DISubprogram(name: "__create_spp_conn", scope: !3, file: !3, line: 61, type: !518, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !548)
!548 = !{!549, !550}
!549 = !DILocalVariable(name: "addr", arg: 1, scope: !547, file: !3, line: 61, type: !326)
!550 = !DILocalVariable(name: "conn", scope: !547, file: !3, line: 63, type: !113)
!551 = !DILocation(line: 61, column: 48, scope: !547)
!552 = !DILocation(line: 63, column: 17, scope: !547)
!553 = !DILocation(line: 65, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !3, line: 65, column: 5)
!555 = !DILocation(line: 65, column: 5, scope: !556)
!556 = !DILexicalBlockFile(scope: !554, file: !3, discriminator: 1)
!557 = !DILocation(line: 66, column: 20, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 66, column: 13)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 65, column: 34)
!560 = distinct !DILexicalBlock(scope: !554, file: !3, line: 65, column: 5)
!561 = !DILocation(line: 66, column: 14, scope: !558)
!562 = !DILocation(line: 66, column: 13, scope: !559)
!563 = !DILocation(line: 67, column: 26, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !3, line: 66, column: 28)
!565 = !DILocation(line: 68, column: 13, scope: !564)
!566 = !DILocation(line: 22, column: 38, scope: !210, inlinedAt: !567)
!567 = distinct !DILocation(line: 69, column: 13, scope: !564)
!568 = !DILocation(line: 24, column: 11, scope: !210, inlinedAt: !567)
!569 = !DILocation(line: 24, column: 22, scope: !210, inlinedAt: !567)
!570 = !DILocation(line: 25, column: 11, scope: !210, inlinedAt: !567)
!571 = !DILocation(line: 25, column: 33, scope: !210, inlinedAt: !567)
!572 = !DILocation(line: 26, column: 11, scope: !210, inlinedAt: !567)
!573 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !567)
!574 = !{!144, !145, i64 8}
!575 = !DILocation(line: 70, column: 13, scope: !564)
!576 = !DILocation(line: 65, column: 5, scope: !577)
!577 = !DILexicalBlockFile(scope: !560, file: !3, discriminator: 2)
!578 = !DILocation(line: 65, column: 5, scope: !579)
!579 = !DILexicalBlockFile(scope: !560, file: !3, discriminator: 1)
!580 = distinct !{!580, !553, !581}
!581 = !DILocation(line: 72, column: 5, scope: !554)
!582 = !DILocation(line: 75, column: 1, scope: !547)
!583 = distinct !DISubprogram(name: "spp_suspend", scope: !3, file: !3, line: 353, type: !584, isLocal: true, isDefinition: true, scopeLine: 354, isOptimized: true, unit: !2, variables: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!37}
!586 = !{}
!587 = !DILocation(line: 355, column: 5, scope: !583)
!588 = distinct !DISubprogram(name: "spp_resume", scope: !3, file: !3, line: 349, type: !584, isLocal: true, isDefinition: true, scopeLine: 350, isOptimized: true, unit: !2, variables: !586)
!589 = !DILocation(line: 351, column: 5, scope: !588)
!590 = distinct !DISubprogram(name: "spp_release", scope: !3, file: !3, line: 334, type: !584, isLocal: true, isDefinition: true, scopeLine: 335, isOptimized: true, unit: !2, variables: !591)
!591 = !{!592}
!592 = !DILocalVariable(name: "conn", scope: !590, file: !3, line: 339, type: !113)
!593 = !DILocation(line: 336, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !3, line: 336, column: 9)
!595 = !DILocation(line: 336, column: 19, scope: !594)
!596 = !DILocation(line: 336, column: 9, scope: !590)
!597 = !DILocation(line: 339, column: 17, scope: !590)
!598 = !DILocation(line: 340, column: 5, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 1)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 340, column: 5)
!601 = distinct !DILexicalBlock(scope: !590, file: !3, line: 340, column: 5)
!602 = !DILocation(line: 340, column: 5, scope: !601)
!603 = !DILocation(line: 340, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !601, file: !3, discriminator: 1)
!605 = distinct !{!605, !602, !606}
!606 = !DILocation(line: 344, column: 5, scope: !601)
!607 = !DILocation(line: 341, column: 19, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 341, column: 13)
!609 = distinct !DILexicalBlock(scope: !600, file: !3, line: 340, column: 34)
!610 = !DILocation(line: 341, column: 13, scope: !608)
!611 = !DILocation(line: 340, column: 5, scope: !612)
!612 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 2)
!613 = !DILocation(line: 341, column: 13, scope: !609)
!614 = !DILocation(line: 345, column: 15, scope: !590)
!615 = !DILocation(line: 346, column: 5, scope: !590)
!616 = !DILocation(line: 347, column: 1, scope: !617)
!617 = !DILexicalBlockFile(scope: !590, file: !3, discriminator: 1)
