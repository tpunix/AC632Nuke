; ModuleID = 'mesh_hci.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_hci.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.anon = type { [32 x i8], %union.anon }
%union.anon = type { [64 x i8] }
%struct.uECC_Curve_t = type opaque

@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@log_tag_const_i_MESH_HCI = external local_unnamed_addr constant i8, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[Info]: [MESH_HCI]last_clk=%d MHZ\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[Info]: [MESH_HCI]SYS_SPEED_UP=%d MHZ\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[Info]: [MESH_HCI]SYS_SPEED_RESUME=%d MHZ\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@ecc = internal global %struct.anon zeroinitializer, align 1, !dbg !0
@.str.5 = private unnamed_addr constant [30 x i8] c"[Info]: [MESH_HCI]--func=%s\0D\0A\00", align 1
@__FUNCTION__.ll_generate_dh_key = private unnamed_addr constant [19 x i8] c"ll_generate_dh_key\00", align 1
@log_tag_const_e_MESH_HCI = external local_unnamed_addr constant i8, align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"<Error>: [MESH_HCI]public key is not valid (ret %d)\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"<Error>: [MESH_HCI]ll_generate_dh_key TC_CRYPTO_FAIL\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"1LB\00", align 1
@__FUNCTION__.generate_keys = private unnamed_addr constant [14 x i8] c"generate_keys\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"<Error>: [MESH_HCI]Failed to create ECC public/private pair\0D\0A\00", align 1
@debug_private_key = internal constant [8 x i32] [i32 -851699011, i32 1486469286, i32 -348080231, i32 1258250363, i32 -770687152, i32 1959375843, i32 -1547346120, i32 1061811924], align 4, !dbg !16
@.str.10 = private unnamed_addr constant [33 x i8] c"[Info]: [MESH_HCI]ATT MTU = %u\0D\0A\00", align 1

; Function Attrs: nounwind optsize
define hidden void @ll_read_local_p256_public_key() local_unnamed_addr #0 !dbg !38 {
  %1 = tail call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !49
  call void @llvm.dbg.value(metadata i32 %1, metadata !47, metadata !DIExpression()), !dbg !49
  %2 = load i8, i8* @log_tag_const_i_MESH_HCI, align 1, !dbg !50, !tbaa !52
  %3 = icmp eq i8 %2, 0, !dbg !50
  br i1 %3, label %4, label %6, !dbg !49

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @clk_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 120000000) #5, !dbg !55
  br label %9, !dbg !55

; <label>:6:                                      ; preds = %0
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %1) #5, !dbg !57
  %7 = tail call i32 @clk_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 120000000) #5, !dbg !55
  %8 = tail call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !59
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %8) #5, !dbg !62
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.generate_keys, i32 0, i32 0)) #5, !dbg !64
  br label %9, !dbg !64, !llvm.loop !75

; <label>:9:                                      ; preds = %6, %4
  %10 = phi i1 [ false, %6 ], [ true, %4 ]
  br label %11, !dbg !78

; <label>:11:                                     ; preds = %21, %9
  %12 = tail call %struct.uECC_Curve_t* @uECC_secp256r1() #5, !dbg !78
  %13 = tail call i32 @uECC_make_key(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 0, i32 0), %struct.uECC_Curve_t* %12) #5, !dbg !79
  call void @llvm.dbg.value(metadata i32 %13, metadata !71, metadata !DIExpression()), !dbg !81
  br i1 %10, label %15, label %14, !dbg !82

; <label>:14:                                     ; preds = %11
  tail call void @printf_buf(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 0, i32 0), i32 32) #5, !dbg !83
  tail call void @printf_buf(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), i32 64) #5, !dbg !86
  br label %15, !dbg !86

; <label>:15:                                     ; preds = %14, %11
  %16 = icmp eq i32 %13, 0, !dbg !89
  br i1 %16, label %17, label %21, !dbg !91

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* @log_tag_const_e_MESH_HCI, align 1, !dbg !92, !tbaa !52
  %19 = icmp eq i8 %18, 0, !dbg !92
  br i1 %19, label %25, label %20, !dbg !95

; <label>:20:                                     ; preds = %17
  tail call void (i32, i8*, i8*, ...) @log_print(i32 4, i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !96
  br label %25

; <label>:21:                                     ; preds = %15
  %22 = tail call i32 @memcmp(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 0, i32 0), i8* bitcast ([8 x i32]* @debug_private_key to i8*), i32 32) #5, !dbg !98
  %23 = icmp eq i32 %22, 0, !dbg !100
  br i1 %23, label %11, label %24, !dbg !101, !llvm.loop !75

; <label>:24:                                     ; preds = %21
  br label %25, !dbg !103

; <label>:25:                                     ; preds = %24, %20, %17
  %26 = phi i32 [ 31, %20 ], [ 31, %17 ], [ 0, %24 ]
  %27 = tail call i32 @clk_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %1) #5, !dbg !103
  br i1 %3, label %30, label %28, !dbg !103

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !104
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i32 %29) #5, !dbg !107
  br label %30, !dbg !104

; <label>:30:                                     ; preds = %28, %25
  %31 = tail call zeroext i8 (i8, i8*, ...) @__hci_emit_le_meta_event(i8 zeroext 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %26, i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0)) #5, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @clk_get(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @log_print(i32, i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @clk_set(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @__hci_emit_le_meta_event(i8 zeroext, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @ll_generate_dh_key(i8*, i32) local_unnamed_addr #0 !dbg !111 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !117, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %1, metadata !118, metadata !DIExpression()), !dbg !126
  %4 = load i8, i8* @log_tag_const_i_MESH_HCI, align 1, !dbg !127, !tbaa !52
  %5 = icmp eq i8 %4, 0, !dbg !127
  br i1 %5, label %6, label %9, !dbg !129

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !130
  call void @llvm.dbg.value(metadata i32 %10, metadata !119, metadata !DIExpression()), !dbg !130
  %8 = tail call i32 @clk_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 120000000) #5, !dbg !131
  br label %13, !dbg !131

; <label>:9:                                      ; preds = %2
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.ll_generate_dh_key, i32 0, i32 0)) #5, !dbg !133
  %10 = tail call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !130
  call void @llvm.dbg.value(metadata i32 %10, metadata !119, metadata !DIExpression()), !dbg !130
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %10) #5, !dbg !135
  %11 = tail call i32 @clk_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 120000000) #5, !dbg !131
  %12 = tail call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !138
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %12) #5, !dbg !141
  br label %13, !dbg !138

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i32 [ %7, %6 ], [ %10, %9 ]
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #6, !dbg !143
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !122, metadata !DIExpression()), !dbg !144
  tail call void @sys_memcpy_swap(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), i8* %0, i32 32) #5, !dbg !145
  %16 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !146
  tail call void @sys_memcpy_swap(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 32), i8* %16, i32 32) #5, !dbg !147
  %17 = tail call %struct.uECC_Curve_t* @uECC_secp256r1() #5, !dbg !148
  %18 = tail call i32 @uECC_valid_public_key(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), %struct.uECC_Curve_t* %17) #5, !dbg !149
  call void @llvm.dbg.value(metadata i32 %18, metadata !124, metadata !DIExpression()), !dbg !151
  %19 = icmp slt i32 %18, 0, !dbg !152
  br i1 %19, label %20, label %25, !dbg !154

; <label>:20:                                     ; preds = %13
  %21 = load i8, i8* @log_tag_const_e_MESH_HCI, align 1, !dbg !155, !tbaa !52
  %22 = icmp eq i8 %21, 0, !dbg !155
  br i1 %22, label %23, label %24, !dbg !158

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i8 31, metadata !121, metadata !DIExpression()), !dbg !159
  call void @llvm.memset.p0i8.i32(i8* nonnull %15, i8 0, i32 32, i32 1, i1 false), !dbg !160
  br label %34, !dbg !163

; <label>:24:                                     ; preds = %20
  tail call void (i32, i8*, i8*, ...) @log_print(i32 4, i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i32 %18) #5, !dbg !164
  call void @llvm.dbg.value(metadata i8 31, metadata !121, metadata !DIExpression()), !dbg !159
  call void @llvm.memset.p0i8.i32(i8* nonnull %15, i8 0, i32 32, i32 1, i1 false), !dbg !160
  br label %32, !dbg !163

; <label>:25:                                     ; preds = %13
  %26 = tail call %struct.uECC_Curve_t* @uECC_secp256r1() #5, !dbg !166
  %27 = tail call i32 @uECC_shared_secret(i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 0, i32 0), i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), %struct.uECC_Curve_t* %26) #5, !dbg !168
  call void @llvm.dbg.value(metadata i32 %27, metadata !124, metadata !DIExpression()), !dbg !151
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33, !dbg !169

; <label>:29:                                     ; preds = %25
  %30 = load i8, i8* @log_tag_const_e_MESH_HCI, align 1, !tbaa !52
  call void @llvm.dbg.value(metadata i8 31, metadata !121, metadata !DIExpression()), !dbg !159
  call void @llvm.memset.p0i8.i32(i8* nonnull %15, i8 0, i32 32, i32 1, i1 false), !dbg !160
  %31 = icmp eq i8 %30, 0, !dbg !170
  br i1 %31, label %34, label %32, !dbg !163

; <label>:32:                                     ; preds = %29, %24
  tail call void (i32, i8*, i8*, ...) @log_print(i32 4, i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !172
  br label %34, !dbg !172

; <label>:33:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i8 0, metadata !121, metadata !DIExpression()), !dbg !159
  call void @sys_memcpy_swap(i8* nonnull %15, i8* getelementptr inbounds (%struct.anon, %struct.anon* @ecc, i32 0, i32 1, i32 0, i32 0), i32 32) #5, !dbg !174
  br label %34

; <label>:34:                                     ; preds = %33, %32, %29, %23
  %35 = phi i32 [ 31, %32 ], [ 31, %29 ], [ 0, %33 ], [ 31, %23 ]
  %36 = call zeroext i8 (i8, i8*, ...) @__hci_emit_le_meta_event(i8 zeroext 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %35, i32 32, i8* nonnull %15) #5, !dbg !176
  %37 = call i32 @clk_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %14) #5, !dbg !177
  br i1 %5, label %40, label %38, !dbg !177

; <label>:38:                                     ; preds = %34
  %39 = call i32 @clk_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !178
  call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i32 %39) #5, !dbg !181
  br label %40, !dbg !178

; <label>:40:                                     ; preds = %38, %34
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #6, !dbg !183
  ret void, !dbg !183
}

; Function Attrs: optsize
declare void @sys_memcpy_swap(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uECC_valid_public_key(i8*, %struct.uECC_Curve_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.uECC_Curve_t* @uECC_secp256r1() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uECC_shared_secret(i8*, i8*, i8*, %struct.uECC_Curve_t*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: nounwind optsize
define hidden void @mesh_hci_init() local_unnamed_addr #0 !dbg !184 {
  tail call void @hci_event_callback_set(void (i8, i16, i8*, i16)* bitcast (void (i8, i8, i8*, i16)* @lib_hci_event_callback to void (i8, i16, i8*, i16)*)) #5, !dbg !185
  tail call void @att_server_register_packet_handler(void (i8, i16, i8*, i16)* bitcast (void (i8, i8, i8*, i16)* @lib_hci_event_callback to void (i8, i16, i8*, i16)*)) #5, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: optsize
declare void @hci_event_callback_set(void (i8, i16, i8*, i16)*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @lib_hci_event_callback(i8 zeroext, i8 zeroext, i8*, i16 zeroext) #0 !dbg !188 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !195, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i8 %1, metadata !196, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8* %2, metadata !197, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i16 %3, metadata !198, metadata !DIExpression()), !dbg !203
  tail call void @mesh_hci_event_callback(i8 zeroext %0, i8 zeroext %1, i8* %2, i16 zeroext %3) #5, !dbg !204
  %5 = icmp eq i8 %0, 4, !dbg !205
  br i1 %5, label %6, label %18, !dbg !205

; <label>:6:                                      ; preds = %4
  %7 = load i8, i8* %2, align 1, !dbg !206, !tbaa !52
  switch i8 %7, label %18 [
    i8 -73, label %8
    i8 -75, label %10
    i8 -30, label %17
  ], !dbg !208

; <label>:8:                                      ; preds = %6
  %9 = tail call zeroext i16 @hci_get_conn_handle() #5, !dbg !209
  tail call void @notify_remain_data(i16 zeroext %9) #5, !dbg !211
  br label %18, !dbg !213

; <label>:10:                                     ; preds = %6
  %11 = load i8, i8* @log_tag_const_i_MESH_HCI, align 1, !dbg !214, !tbaa !52
  %12 = icmp eq i8 %11, 0, !dbg !214
  br i1 %12, label %14, label %13, !dbg !216

; <label>:13:                                     ; preds = %10
  tail call void (i32, i8*, i8*, ...) @log_print(i32 2, i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i32 0) #5, !dbg !217
  br label %14, !dbg !217

; <label>:14:                                     ; preds = %13, %10
  call void @llvm.dbg.value(metadata i8* %2, metadata !219, metadata !DIExpression()), !dbg !233
  %15 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 4) #5, !dbg !235
  %16 = add i16 %15, -3, !dbg !236
  call void @llvm.dbg.value(metadata i16 %16, metadata !199, metadata !DIExpression()), !dbg !237
  tail call void @hci_set_mtu_callback(i16 zeroext %16) #5, !dbg !238
  br label %18, !dbg !239

; <label>:17:                                     ; preds = %6
  tail call void @handle_scan_callback(i8* nonnull %2, i16 zeroext %3) #5, !dbg !240
  br label %18, !dbg !241

; <label>:18:                                     ; preds = %17, %14, %8, %6, %4
  ret void, !dbg !242
}

; Function Attrs: optsize
declare void @att_server_register_packet_handler(void (i8, i16, i8*, i16)*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uECC_make_key(i8*, i8*, %struct.uECC_Curve_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @printf_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mesh_hci_event_callback(i8 zeroext, i8 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @notify_remain_data(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @hci_get_conn_handle() local_unnamed_addr #2

; Function Attrs: optsize
declare void @hci_set_mtu_callback(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @handle_scan_callback(i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ecc", scope: !2, file: !3, line: 71, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/mesh/lib_adaptation/mesh_hci.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_hci_cp_le_generate_dhkey", file: !3, line: 73, size: 512, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !3, line: 74, baseType: !10, size: 512)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !3, line: 56, baseType: !12)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!14}
!14 = !DISubrange(count: 64)
!15 = !{!0, !16}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "debug_private_key", scope: !2, file: !3, line: 78, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !22)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !3, line: 59, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23}
!23 = !DISubrange(count: 8)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 64, size: 768, elements: !25)
!25 = !{!26, !30}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "private_key", scope: !24, file: !3, line: 65, baseType: !27, size: 256)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, scope: !24, file: !3, line: 67, baseType: !31, size: 512, offset: 256)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !24, file: !3, line: 67, size: 512, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "pk", scope: !31, file: !3, line: 68, baseType: !10, size: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "dhkey", scope: !31, file: !3, line: 69, baseType: !27, size: 256)
!35 = !{i32 2, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!38 = distinct !DISubprogram(name: "ll_read_local_p256_public_key", scope: !3, file: !3, line: 131, type: !39, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null}
!41 = !{!42, !45, !47}
!42 = !DILocalVariable(name: "status", scope: !38, file: !3, line: 133, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 11, baseType: !12)
!44 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!45 = !DILocalVariable(name: "key", scope: !38, file: !3, line: 134, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !13)
!47 = !DILocalVariable(name: "last_clk", scope: !38, file: !3, line: 136, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 15, baseType: !21)
!49 = !DILocation(line: 136, column: 5, scope: !38)
!50 = !DILocation(line: 136, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !38, file: !3, line: 136, column: 5)
!52 = !{!53, !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 136, column: 5, scope: !56)
!56 = !DILexicalBlockFile(scope: !38, file: !3, discriminator: 2)
!57 = !DILocation(line: 136, column: 5, scope: !58)
!58 = !DILexicalBlockFile(scope: !51, file: !3, discriminator: 1)
!59 = !DILocation(line: 136, column: 5, scope: !60)
!60 = !DILexicalBlockFile(scope: !61, file: !3, discriminator: 3)
!61 = distinct !DILexicalBlock(scope: !38, file: !3, line: 136, column: 5)
!62 = !DILocation(line: 136, column: 5, scope: !63)
!63 = !DILexicalBlockFile(scope: !61, file: !3, discriminator: 4)
!64 = !DILocation(line: 102, column: 5, scope: !65, inlinedAt: !74)
!65 = !DILexicalBlockFile(scope: !66, file: !3, discriminator: 1)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 102, column: 5)
!67 = distinct !DISubprogram(name: "generate_keys", scope: !3, file: !3, line: 100, type: !68, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!11}
!70 = !{!71}
!71 = !DILocalVariable(name: "rc", scope: !72, file: !3, line: 106, type: !73)
!72 = distinct !DILexicalBlock(scope: !67, file: !3, line: 105, column: 8)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = distinct !DILocation(line: 137, column: 14, scope: !38)
!75 = distinct !{!75, !76, !77}
!76 = !DILocation(line: 105, column: 5, scope: !67)
!77 = !DILocation(line: 121, column: 65, scope: !67)
!78 = !DILocation(line: 109, column: 53, scope: !72, inlinedAt: !74)
!79 = !DILocation(line: 109, column: 14, scope: !80, inlinedAt: !74)
!80 = !DILexicalBlockFile(scope: !72, file: !3, discriminator: 1)
!81 = !DILocation(line: 106, column: 13, scope: !72, inlinedAt: !74)
!82 = !DILocation(line: 113, column: 9, scope: !72, inlinedAt: !74)
!83 = !DILocation(line: 113, column: 9, scope: !84, inlinedAt: !74)
!84 = !DILexicalBlockFile(scope: !85, file: !3, discriminator: 1)
!85 = distinct !DILexicalBlock(scope: !72, file: !3, line: 113, column: 9)
!86 = !DILocation(line: 114, column: 9, scope: !87, inlinedAt: !74)
!87 = !DILexicalBlockFile(scope: !88, file: !3, discriminator: 1)
!88 = distinct !DILexicalBlock(scope: !72, file: !3, line: 114, column: 9)
!89 = !DILocation(line: 115, column: 16, scope: !90, inlinedAt: !74)
!90 = distinct !DILexicalBlock(scope: !72, file: !3, line: 115, column: 13)
!91 = !DILocation(line: 115, column: 13, scope: !72, inlinedAt: !74)
!92 = !DILocation(line: 116, column: 13, scope: !93, inlinedAt: !74)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 116, column: 13)
!94 = distinct !DILexicalBlock(scope: !90, file: !3, line: 115, column: 35)
!95 = !DILocation(line: 116, column: 13, scope: !94, inlinedAt: !74)
!96 = !DILocation(line: 116, column: 13, scope: !97, inlinedAt: !74)
!97 = !DILexicalBlockFile(scope: !93, file: !3, discriminator: 1)
!98 = !DILocation(line: 121, column: 14, scope: !99, inlinedAt: !74)
!99 = !DILexicalBlockFile(scope: !67, file: !3, discriminator: 3)
!100 = !DILocation(line: 121, column: 61, scope: !99, inlinedAt: !74)
!101 = !DILocation(line: 121, column: 5, scope: !102, inlinedAt: !74)
!102 = !DILexicalBlockFile(scope: !72, file: !3, discriminator: 3)
!103 = !DILocation(line: 138, column: 5, scope: !38)
!104 = !DILocation(line: 138, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !106, file: !3, discriminator: 1)
!106 = distinct !DILexicalBlock(scope: !38, file: !3, line: 138, column: 5)
!107 = !DILocation(line: 138, column: 5, scope: !108)
!108 = !DILexicalBlockFile(scope: !106, file: !3, discriminator: 2)
!109 = !DILocation(line: 146, column: 5, scope: !38)
!110 = !DILocation(line: 151, column: 1, scope: !38)
!111 = distinct !DISubprogram(name: "ll_generate_dh_key", scope: !3, file: !3, line: 153, type: !112, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !48}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!116 = !{!117, !118, !119, !120, !121, !122, !124}
!117 = !DILocalVariable(name: "data", arg: 1, scope: !111, file: !3, line: 153, type: !114)
!118 = !DILocalVariable(name: "size", arg: 2, scope: !111, file: !3, line: 153, type: !48)
!119 = !DILocalVariable(name: "last_clk", scope: !111, file: !3, line: 157, type: !48)
!120 = !DILocalVariable(name: "cmd", scope: !111, file: !3, line: 159, type: !6)
!121 = !DILocalVariable(name: "status", scope: !111, file: !3, line: 160, type: !43)
!122 = !DILocalVariable(name: "dhkey", scope: !111, file: !3, line: 161, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !28)
!124 = !DILocalVariable(name: "ret", scope: !111, file: !3, line: 162, type: !73)
!125 = !DILocation(line: 153, column: 35, scope: !111)
!126 = !DILocation(line: 153, column: 45, scope: !111)
!127 = !DILocation(line: 155, column: 5, scope: !128)
!128 = distinct !DILexicalBlock(scope: !111, file: !3, line: 155, column: 5)
!129 = !DILocation(line: 155, column: 5, scope: !111)
!130 = !DILocation(line: 157, column: 5, scope: !111)
!131 = !DILocation(line: 157, column: 5, scope: !132)
!132 = !DILexicalBlockFile(scope: !111, file: !3, discriminator: 2)
!133 = !DILocation(line: 155, column: 5, scope: !134)
!134 = !DILexicalBlockFile(scope: !128, file: !3, discriminator: 1)
!135 = !DILocation(line: 157, column: 5, scope: !136)
!136 = !DILexicalBlockFile(scope: !137, file: !3, discriminator: 1)
!137 = distinct !DILexicalBlock(scope: !111, file: !3, line: 157, column: 5)
!138 = !DILocation(line: 157, column: 5, scope: !139)
!139 = !DILexicalBlockFile(scope: !140, file: !3, discriminator: 3)
!140 = distinct !DILexicalBlock(scope: !111, file: !3, line: 157, column: 5)
!141 = !DILocation(line: 157, column: 5, scope: !142)
!142 = !DILexicalBlockFile(scope: !140, file: !3, discriminator: 4)
!143 = !DILocation(line: 161, column: 5, scope: !111)
!144 = !DILocation(line: 161, column: 8, scope: !111)
!145 = !DILocation(line: 166, column: 5, scope: !111)
!146 = !DILocation(line: 167, column: 35, scope: !111)
!147 = !DILocation(line: 167, column: 5, scope: !111)
!148 = !DILocation(line: 172, column: 41, scope: !111)
!149 = !DILocation(line: 172, column: 11, scope: !150)
!150 = !DILexicalBlockFile(scope: !111, file: !3, discriminator: 1)
!151 = !DILocation(line: 162, column: 9, scope: !111)
!152 = !DILocation(line: 176, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !111, file: !3, line: 176, column: 9)
!154 = !DILocation(line: 176, column: 9, scope: !111)
!155 = !DILocation(line: 177, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 177, column: 9)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 176, column: 18)
!158 = !DILocation(line: 177, column: 9, scope: !157)
!159 = !DILocation(line: 160, column: 8, scope: !111)
!160 = !DILocation(line: 194, column: 15, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 192, column: 19)
!162 = distinct !DILexicalBlock(scope: !111, file: !3, line: 192, column: 9)
!163 = !DILocation(line: 195, column: 9, scope: !161)
!164 = !DILocation(line: 177, column: 9, scope: !165)
!165 = !DILexicalBlockFile(scope: !156, file: !3, discriminator: 1)
!166 = !DILocation(line: 184, column: 34, scope: !167)
!167 = distinct !DILexicalBlock(scope: !153, file: !3, line: 179, column: 12)
!168 = !DILocation(line: 183, column: 15, scope: !167)
!169 = !DILocation(line: 192, column: 9, scope: !111)
!170 = !DILocation(line: 195, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !3, line: 195, column: 9)
!172 = !DILocation(line: 195, column: 9, scope: !173)
!173 = !DILexicalBlockFile(scope: !171, file: !3, discriminator: 1)
!174 = !DILocation(line: 201, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !162, file: !3, line: 196, column: 12)
!176 = !DILocation(line: 204, column: 5, scope: !111)
!177 = !DILocation(line: 210, column: 5, scope: !111)
!178 = !DILocation(line: 210, column: 5, scope: !179)
!179 = !DILexicalBlockFile(scope: !180, file: !3, discriminator: 1)
!180 = distinct !DILexicalBlock(scope: !111, file: !3, line: 210, column: 5)
!181 = !DILocation(line: 210, column: 5, scope: !182)
!182 = !DILexicalBlockFile(scope: !180, file: !3, discriminator: 2)
!183 = !DILocation(line: 211, column: 1, scope: !111)
!184 = distinct !DISubprogram(name: "mesh_hci_init", scope: !3, file: !3, line: 239, type: !39, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!185 = !DILocation(line: 242, column: 5, scope: !184)
!186 = !DILocation(line: 245, column: 5, scope: !184)
!187 = !DILocation(line: 246, column: 1, scope: !184)
!188 = distinct !DISubprogram(name: "lib_hci_event_callback", scope: !3, file: !3, line: 213, type: !189, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !194)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !43, !43, !191, !192}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 13, baseType: !193)
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !{!195, !196, !197, !198, !199}
!195 = !DILocalVariable(name: "packet_type", arg: 1, scope: !188, file: !3, line: 213, type: !43)
!196 = !DILocalVariable(name: "channel", arg: 2, scope: !188, file: !3, line: 213, type: !43)
!197 = !DILocalVariable(name: "packet", arg: 3, scope: !188, file: !3, line: 213, type: !191)
!198 = !DILocalVariable(name: "size", arg: 4, scope: !188, file: !3, line: 213, type: !192)
!199 = !DILocalVariable(name: "mtu", scope: !188, file: !3, line: 215, type: !192)
!200 = !DILocation(line: 213, column: 39, scope: !188)
!201 = !DILocation(line: 213, column: 55, scope: !188)
!202 = !DILocation(line: 213, column: 68, scope: !188)
!203 = !DILocation(line: 213, column: 80, scope: !188)
!204 = !DILocation(line: 217, column: 5, scope: !188)
!205 = !DILocation(line: 219, column: 5, scope: !188)
!206 = !DILocation(line: 221, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !188, file: !3, line: 219, column: 26)
!208 = !DILocation(line: 221, column: 9, scope: !207)
!209 = !DILocation(line: 223, column: 32, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !3, line: 221, column: 28)
!211 = !DILocation(line: 223, column: 13, scope: !212)
!212 = !DILexicalBlockFile(scope: !210, file: !3, discriminator: 1)
!213 = !DILocation(line: 224, column: 13, scope: !210)
!214 = !DILocation(line: 226, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !3, line: 226, column: 13)
!216 = !DILocation(line: 226, column: 13, scope: !210)
!217 = !DILocation(line: 226, column: 13, scope: !218)
!218 = !DILexicalBlockFile(scope: !215, file: !3, discriminator: 1)
!219 = !DILocalVariable(name: "event", arg: 1, scope: !220, file: !221, line: 2311, type: !228)
!220 = distinct !DISubprogram(name: "att_event_mtu_exchange_complete_get_MTU", scope: !221, file: !221, line: 2311, type: !222, isLocal: true, isDefinition: true, scopeLine: 2312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !232)
!221 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !228}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !225, line: 26, baseType: !226)
!225 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !227, line: 43, baseType: !193)
!227 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !225, line: 20, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !227, line: 29, baseType: !12)
!232 = !{!219}
!233 = !DILocation(line: 2311, column: 83, scope: !220, inlinedAt: !234)
!234 = distinct !DILocation(line: 227, column: 19, scope: !210)
!235 = !DILocation(line: 2313, column: 16, scope: !220, inlinedAt: !234)
!236 = !DILocation(line: 227, column: 67, scope: !210)
!237 = !DILocation(line: 215, column: 9, scope: !188)
!238 = !DILocation(line: 228, column: 13, scope: !210)
!239 = !DILocation(line: 229, column: 13, scope: !210)
!240 = !DILocation(line: 233, column: 13, scope: !210)
!241 = !DILocation(line: 234, column: 13, scope: !210)
!242 = !DILocation(line: 237, column: 1, scope: !188)
