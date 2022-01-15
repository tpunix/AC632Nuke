; ModuleID = 'sdp_master.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_master.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.sdp_stack_t = type { %struct.sdp_core_data_t }
%struct.sdp_core_data_t = type { i16, i16, i16, i8, i8, i8 }
%struct.profile_cmd_handle = type { i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i8*)*, i32 (i8*)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.hfp_ioctrl_str = type { [6 x i8], i32, i8, %union.anon }
%union.anon = type { i32, [28 x i8] }
%struct.spp_ioctrl_str = type { [6 x i8], i8, i32, i32, i8* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@config_asser = external local_unnamed_addr constant i32, align 4
@sdp_stack = external local_unnamed_addr global %struct.sdp_stack_t*, align 4
@.str = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.1 = private unnamed_addr constant [120 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_master.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ASSERT-FAILD: sdp_master != NULL \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SDP_ErrorResponse %x\0A\00", align 1
@profile_cmd_hdl_str = external local_unnamed_addr global %struct.profile_cmd_handle, align 4
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@sdp_data_ptr = internal unnamed_addr global i8* null, section ".bt_stack_data", align 4, !dbg !145
@sdp_data_len = internal unnamed_addr global i16 0, section ".bt_stack_data", align 2, !dbg !147
@.str.9 = private unnamed_addr constant [25 x i8] c"why sdp get addr failed\0A\00", align 1
@btstack_emitter_support = external local_unnamed_addr constant i8, align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"sdp info len end===%d===:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"<BT-log> :get rfcomm id %d\0A\00", align 1
@AMA_re_establish = internal constant [16 x i8] c"\93\1C~\8AT\0FF\86\B7\98\E8\DF\0A*\D9\F7", section ".bt_stack_const", align 1, !dbg !137
@iap2_re_establish = internal constant [16 x i8] c"\00\00\00\00\DE\CA\FA\DE\DE\CA\DE\AF\DE\CA\CA\FE", section ".bt_stack_const", align 1, !dbg !143
@str = private unnamed_addr constant [29 x i8] c"<BT-log> :send get dun info\0A\00"
@str.12 = private unnamed_addr constant [49 x i8] c"<BT-log> :=========sdp free disconnect=========\0A\00"
@str.13 = private unnamed_addr constant [35 x i8] c"<BT-log> :getting UUID_L2CAP info\0A\00"
@str.14 = private unnamed_addr constant [20 x i8] c"second get IAP uuid\00"
@str.15 = private unnamed_addr constant [23 x i8] c"<BT-log> :connect hfp\0A\00"

; Function Attrs: alwaysinline nounwind optsize
define hidden void @sdp_master_init(i8* nocapture readnone) local_unnamed_addr #0 section ".bt_stack_code" !dbg !154 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !158, metadata !DIExpression()), !dbg !159
  %2 = load i32, i32* @config_asser, align 4, !dbg !160, !tbaa !164
  %3 = icmp eq i32 %2, 0, !dbg !160
  %4 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !tbaa !168
  %5 = icmp ne %struct.sdp_stack_t* %4, null
  br i1 %3, label %10, label %6, !dbg !170

; <label>:6:                                      ; preds = %1
  br i1 %5, label %12, label %7, !dbg !172

; <label>:7:                                      ; preds = %6
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i32 0, i32 0), i32 35) #8, !dbg !175
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !179
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !181
  br label %12, !dbg !175

; <label>:10:                                     ; preds = %1
  br i1 %5, label %12, label %11, !dbg !183

; <label>:11:                                     ; preds = %10
  tail call fastcc void @cpu_reset() #8, !dbg !186
  br label %12, !dbg !186

; <label>:12:                                     ; preds = %11, %10, %7, %6
  %13 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !190, !tbaa !168
  %14 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %13, i32 0, i32 0, i32 5, !dbg !191
  store i8 1, i8* %14, align 2, !dbg !192, !tbaa !193
  %15 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %13, i32 0, i32 0, i32 4, !dbg !197
  store i8 0, i8* %15, align 1, !dbg !198, !tbaa !199
  %16 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %13, i32 0, i32 0, i32 1, !dbg !200
  store i16 0, i16* %16, align 2, !dbg !201, !tbaa !202
  %17 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %13, i32 0, i32 0, i32 3, !dbg !203
  store i8 0, i8* %17, align 2, !dbg !204, !tbaa !205
  ret void, !dbg !206
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #4 !dbg !207 {
  tail call void @p33_soft_reset() #9, !dbg !212
  ret void, !dbg !213
}

; Function Attrs: alwaysinline norecurse nounwind optsize readonly
define hidden zeroext i8 @check_sdp_master_channel_state() local_unnamed_addr #5 section ".bt_stack_code" !dbg !214 {
  %1 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !217, !tbaa !168
  %2 = icmp eq %struct.sdp_stack_t* %1, null, !dbg !217
  br i1 %2, label %7, label %3, !dbg !219

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %1, i32 0, i32 0, i32 1, !dbg !220
  %5 = load i16, i16* %4, align 2, !dbg !220, !tbaa !202
  %6 = trunc i16 %5 to i8, !dbg !222
  br label %7, !dbg !223

; <label>:7:                                      ; preds = %3, %0
  %8 = phi i8 [ %6, %3 ], [ 0, %0 ]
  ret i8 %8, !dbg !224
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sdp_master_channel_disconnect() local_unnamed_addr #6 section ".bt_stack_code" !dbg !225 {
  %1 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !226, !tbaa !168
  %2 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %1, i32 0, i32 0, i32 1, !dbg !228
  %3 = load i16, i16* %2, align 2, !dbg !228, !tbaa !202
  %4 = icmp eq i16 %3, 0, !dbg !226
  br i1 %4, label %6, label %5, !dbg !229

; <label>:5:                                      ; preds = %0
  tail call void @l2cap_disconnect_internal(i16 zeroext %3, i8 zeroext 19) #9, !dbg !230
  br label %6, !dbg !232

; <label>:6:                                      ; preds = %5, %0
  %7 = phi i8 [ 1, %5 ], [ 0, %0 ]
  ret i8 %7, !dbg !233
}

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @sdp_send_cmd_iotl(i8*, i32, i32) local_unnamed_addr #6 section ".bt_stack_code" !dbg !234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %1, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %2, metadata !242, metadata !DIExpression()), !dbg !245
  %4 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !246, !tbaa !168
  %5 = icmp eq %struct.sdp_stack_t* %4, null, !dbg !248
  br i1 %5, label %23, label %6, !dbg !249

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %4, i32 0, i32 0, i32 3, !dbg !250
  %8 = load i8, i8* %7, align 2, !dbg !250, !tbaa !205
  %9 = icmp eq i8 %8, 0, !dbg !252
  br i1 %9, label %10, label %23, !dbg !253

; <label>:10:                                     ; preds = %6
  switch i32 %1, label %23 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %16
  ], !dbg !254

; <label>:11:                                     ; preds = %10
  %12 = trunc i32 %2 to i16, !dbg !255
  %13 = tail call fastcc i32 @launch_initiative_connection(i8* %0, i16 zeroext %12) #8, !dbg !257
  br label %23, !dbg !258

; <label>:14:                                     ; preds = %10
  %15 = tail call zeroext i8 @sdp_master_channel_disconnect() #8, !dbg !259
  br label %23, !dbg !260

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %4, i32 0, i32 0, i32 1, !dbg !261
  %18 = load i16, i16* %17, align 2, !dbg !261, !tbaa !202
  %19 = icmp eq i16 %18, 0, !dbg !271
  br i1 %19, label %21, label %20, !dbg !272

; <label>:20:                                     ; preds = %16
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %18, i16 zeroext 4608, i8* null) #9, !dbg !273
  br label %23, !dbg !275

; <label>:21:                                     ; preds = %16
  %22 = tail call fastcc i32 @launch_initiative_connection(i8* %0, i16 zeroext 4608) #9, !dbg !276
  br label %23

; <label>:23:                                     ; preds = %21, %20, %14, %11, %10, %6, %3
  %24 = phi i32 [ %13, %11 ], [ -1, %3 ], [ -2, %6 ], [ 0, %10 ], [ 0, %14 ], [ 0, %20 ], [ 0, %21 ]
  ret i32 %24, !dbg !278
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @launch_initiative_connection(i8*, i16 zeroext) unnamed_addr #6 section ".bt_stack_code" !dbg !279 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i16 %1, metadata !284, metadata !DIExpression()), !dbg !286
  %3 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !287, !tbaa !168
  %4 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %3, i32 0, i32 0, i32 1, !dbg !289
  %5 = load i16, i16* %4, align 2, !dbg !289, !tbaa !202
  %6 = icmp eq i16 %5, 0, !dbg !290
  br i1 %6, label %9, label %7, !dbg !291

; <label>:7:                                      ; preds = %2
  %8 = tail call zeroext i8 @sdp_master_channel_disconnect() #8, !dbg !292
  br label %14, !dbg !294

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %3, i32 0, i32 0, i32 3, !dbg !295
  store i8 1, i8* %10, align 2, !dbg !297, !tbaa !205
  %11 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @sdp_master_packet_handler, i8* %0, i16 zeroext 1, i16 zeroext -1) #9, !dbg !298
  %12 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !299, !tbaa !168
  %13 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %12, i32 0, i32 0, i32 2, !dbg !300
  store i16 %1, i16* %13, align 2, !dbg !301, !tbaa !302
  br label %14, !dbg !303

; <label>:14:                                     ; preds = %9, %7
  %15 = phi i32 [ -2, %7 ], [ 0, %9 ]
  ret i32 %15, !dbg !304
}

; Function Attrs: alwaysinline norecurse nounwind optsize readonly
define hidden zeroext i8 @sdp_tws_connect_hfp_check() local_unnamed_addr #5 section ".bt_stack_code" !dbg !305 {
  %1 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !306, !tbaa !168
  %2 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %1, i32 0, i32 0, i32 2, !dbg !308
  %3 = load i16, i16* %2, align 2, !dbg !308, !tbaa !302
  %4 = icmp eq i16 %3, 4383, !dbg !309
  %5 = zext i1 %4 to i8, !dbg !310
  ret i8 %5, !dbg !312
}

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @sdp_master_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #6 section ".bt_stack_code" !dbg !313 {
  %5 = alloca %struct.hfp_ioctrl_str, align 4
  %6 = alloca %struct.spp_ioctrl_str, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !317, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i16 %1, metadata !318, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i8* %2, metadata !319, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i16 %3, metadata !320, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i16 0, metadata !323, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !324, metadata !DIExpression()), !dbg !385
  switch i8 %0, label %517 [
    i8 6, label %7
    i8 4, label %420
  ], !dbg !386

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %2, align 1, !dbg !387, !tbaa !388
  call void @llvm.dbg.value(metadata i16 %418, metadata !322, metadata !DIExpression()), !dbg !389
  switch i8 %8, label %410 [
    i8 1, label %9
    i8 3, label %517
    i8 5, label %517
    i8 7, label %23
  ], !dbg !390

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !391
  %11 = load i8, i8* %10, align 1, !dbg !391, !tbaa !388
  %12 = zext i8 %11 to i32, !dbg !391
  %13 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !391
  %14 = load i8, i8* %13, align 1, !dbg !391, !tbaa !388
  %15 = zext i8 %14 to i32, !dbg !391
  %16 = shl nuw nsw i32 %15, 8, !dbg !391
  %17 = or i32 %16, %12, !dbg !391
  %18 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %17) #8, !dbg !392
  %19 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !393, !tbaa !168
  %20 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %19, i32 0, i32 0, i32 1, !dbg !394
  %21 = load i16, i16* %20, align 2, !dbg !394, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %21, i8 zeroext 19) #9, !dbg !395
  %22 = tail call i32 bitcast (i32 (...)* @connect_pending_connnecting_sdp_handler to i32 ()*)() #9, !dbg !396
  br label %517, !dbg !397

; <label>:23:                                     ; preds = %7
  %24 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !398
  %25 = load i8, i8* %24, align 1, !dbg !398, !tbaa !388
  %26 = zext i8 %25 to i32, !dbg !398
  %27 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !398
  %28 = load i8, i8* %27, align 1, !dbg !398, !tbaa !388
  %29 = zext i8 %28 to i32, !dbg !398
  %30 = shl nuw nsw i32 %29, 8, !dbg !398
  %31 = or i32 %30, %26, !dbg !398
  %32 = add nuw nsw i32 %31, 7, !dbg !399
  %33 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !400
  %34 = trunc i32 %31 to i16, !dbg !401
  %35 = and i32 %32, 65535, !dbg !402
  %36 = getelementptr inbounds i8, i8* %2, i32 %35, !dbg !402
  call void @llvm.dbg.value(metadata i8* %33, metadata !403, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i16 %34, metadata !408, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i8* %36, metadata !409, metadata !DIExpression()), !dbg !420
  %37 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !421, !tbaa !168
  %38 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %37, i32 0, i32 0, i32 1, !dbg !422
  %39 = load i16, i16* %38, align 2, !dbg !422, !tbaa !202
  %40 = tail call [6 x i8]* @l2cap_get_btaddr_via_local_cid(i16 zeroext %39) #9, !dbg !423
  call void @llvm.dbg.value(metadata [6 x i8]* %40, metadata !410, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i16 4, metadata !411, metadata !DIExpression()), !dbg !425
  %41 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !426, !tbaa !168
  %42 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %41, i32 0, i32 0, i32 2, !dbg !428
  %43 = load i16, i16* %42, align 2, !dbg !428, !tbaa !302
  switch i16 %43, label %82 [
    i16 4374, label %44
    i16 4608, label %60
  ], !dbg !429

; <label>:44:                                     ; preds = %23
  %45 = load i8, i8* %33, align 1, !dbg !430, !tbaa !388
  switch i8 %45, label %279 [
    i8 54, label %46
    i8 53, label %55
  ], !dbg !433

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !434
  %48 = load i8, i8* %47, align 1, !dbg !434, !tbaa !388
  %49 = icmp eq i8 %48, 0, !dbg !436
  br i1 %49, label %50, label %279, !dbg !437

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !438
  %52 = load i8, i8* %51, align 1, !dbg !438, !tbaa !388
  %53 = icmp eq i8 %52, 0, !dbg !440
  br i1 %53, label %54, label %279, !dbg !441

; <label>:54:                                     ; preds = %50
  store i16 0, i16* %42, align 2, !dbg !443, !tbaa !302
  br label %279, !dbg !445

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !446
  %57 = load i8, i8* %56, align 1, !dbg !446, !tbaa !388
  %58 = icmp eq i8 %57, 0, !dbg !449
  br i1 %58, label %59, label %279, !dbg !450

; <label>:59:                                     ; preds = %55
  store i16 0, i16* %42, align 2, !dbg !451, !tbaa !302
  br label %279, !dbg !453

; <label>:60:                                     ; preds = %23
  store i16 0, i16* %42, align 2, !dbg !454, !tbaa !302
  %61 = tail call i32 @de_get_element_type(i8* %33) #9, !dbg !455
  call void @llvm.dbg.value(metadata i32 %61, metadata !412, metadata !DIExpression()), !dbg !456
  %62 = icmp eq i32 %61, 6, !dbg !457
  br i1 %62, label %63, label %279, !dbg !459

; <label>:63:                                     ; preds = %60
  %64 = tail call i32 @de_get_header_size(i8* %33) #9, !dbg !460
  %65 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !461, !tbaa !168
  %66 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %65, i32 0, i32 0, i32 1, !dbg !462
  %67 = load i16, i16* %66, align 2, !dbg !462, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %67, i8 zeroext 19) #9, !dbg !463
  %68 = icmp eq [6 x i8]* %40, null, !dbg !464
  br i1 %68, label %74, label %69, !dbg !466

; <label>:69:                                     ; preds = %63
  %70 = and i32 %64, 255, !dbg !467
  %71 = getelementptr inbounds i8, i8* %33, i32 %70, !dbg !467
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %40, i32 0, i32 0, !dbg !469
  %73 = tail call zeroext i16 @sdp_decode_attributes_response(i8* %71, i8* %72) #9, !dbg !470
  br label %80, !dbg !471

; <label>:74:                                     ; preds = %63
  %75 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !472, !tbaa !388
  %76 = and i8 %75, 32, !dbg !472
  %77 = icmp eq i8 %76, 0, !dbg !472
  br i1 %77, label %80, label %78, !dbg !475

; <label>:78:                                     ; preds = %74
  %79 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !476
  br label %80, !dbg !476

; <label>:80:                                     ; preds = %78, %74, %69
  %81 = tail call i32 bitcast (i32 (...)* @connect_pending_connnecting_sdp_handler to i32 ()*)() #9, !dbg !478
  br label %279

; <label>:82:                                     ; preds = %23
  %83 = load i8, i8* @btstack_emitter_support, align 1, !dbg !479, !tbaa !388
  %84 = icmp ne i8 %83, 0, !dbg !479
  %85 = icmp eq i16 %43, 256, !dbg !481
  %86 = and i1 %85, %84, !dbg !484
  br i1 %86, label %87, label %220, !dbg !484

; <label>:87:                                     ; preds = %82
  %88 = load i8*, i8** @sdp_data_ptr, align 4, !dbg !485, !tbaa !168
  %89 = icmp eq i8* %88, null, !dbg !488
  br i1 %89, label %90, label %92, !dbg !489

; <label>:90:                                     ; preds = %87
  %91 = tail call i8* @malloc(i32 1024) #9, !dbg !490
  store i8* %91, i8** @sdp_data_ptr, align 4, !dbg !492, !tbaa !168
  br label %92, !dbg !493

; <label>:92:                                     ; preds = %90, %87
  %93 = phi i8* [ %88, %87 ], [ %91, %90 ], !dbg !494
  %94 = load i8, i8* %36, align 1, !dbg !497, !tbaa !388
  %95 = icmp eq i8 %94, 0, !dbg !498
  %96 = icmp ne i8* %93, null
  br i1 %95, label %111, label %97, !dbg !499

; <label>:97:                                     ; preds = %92
  br i1 %96, label %98, label %107, !dbg !500

; <label>:98:                                     ; preds = %97
  %99 = load i16, i16* @sdp_data_len, align 2, !dbg !503, !tbaa !505
  %100 = zext i16 %99 to i32, !dbg !503
  %101 = add nuw nsw i32 %100, %31, !dbg !506
  %102 = icmp ult i32 %101, 1024, !dbg !507
  br i1 %102, label %103, label %107, !dbg !508

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds i8, i8* %93, i32 %100, !dbg !510
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %104, i8* nonnull %33, i32 %31, i32 1, i1 false) #10, !dbg !512
  %105 = add i16 %99, %34, !dbg !513
  store i16 %105, i16* @sdp_data_len, align 2, !dbg !513, !tbaa !505
  %106 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !tbaa !168
  br label %107, !dbg !514

; <label>:107:                                    ; preds = %103, %98, %97
  %108 = phi %struct.sdp_stack_t* [ %41, %97 ], [ %41, %98 ], [ %106, %103 ], !dbg !515
  %109 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %108, i32 0, i32 0, i32 1, !dbg !516
  %110 = load i16, i16* %109, align 2, !dbg !516, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %110, i16 zeroext 256, i8* nonnull %36) #9, !dbg !517
  br label %279, !dbg !518

; <label>:111:                                    ; preds = %92
  %112 = load i16, i16* @sdp_data_len, align 2, !tbaa !505
  br i1 %96, label %113, label %120, !dbg !519

; <label>:113:                                    ; preds = %111
  %114 = zext i16 %112 to i32, !dbg !521
  %115 = add nuw nsw i32 %114, %31, !dbg !523
  %116 = icmp ult i32 %115, 1024, !dbg !524
  br i1 %116, label %117, label %120, !dbg !525

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds i8, i8* %93, i32 %114, !dbg !527
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %118, i8* nonnull %33, i32 %31, i32 1, i1 false) #10, !dbg !529
  %119 = add i16 %112, %34, !dbg !530
  store i16 %119, i16* @sdp_data_len, align 2, !dbg !530, !tbaa !505
  br label %120, !dbg !531

; <label>:120:                                    ; preds = %117, %113, %111
  %121 = phi i16 [ %119, %117 ], [ %112, %113 ], [ %112, %111 ], !dbg !532
  %122 = zext i16 %121 to i32, !dbg !532
  %123 = tail call i32 @de_get_data_size(i8* %93) #9, !dbg !533
  %124 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 %122, i32 %123) #9, !dbg !534
  %125 = load i8*, i8** @sdp_data_ptr, align 4, !dbg !535, !tbaa !168
  %126 = tail call i32 @de_get_data_size(i8* %125) #9, !dbg !537
  %127 = icmp eq i32 %126, 0, !dbg !538
  br i1 %127, label %128, label %136, !dbg !539

; <label>:128:                                    ; preds = %120
  %129 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !540, !tbaa !168
  %130 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %129, i32 0, i32 9, !dbg !543
  %131 = load i32, i32* %130, align 1, !dbg !543
  %132 = and i32 %131, 1048576, !dbg !540
  %133 = icmp ne i32 %132, 0, !dbg !540
  %134 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %129, i32 0, i32 5
  %135 = select i1 %133, i16 48, i16 3
  store i16 %135, i16* %134, align 4, !tbaa !544
  br label %142, !dbg !546

; <label>:136:                                    ; preds = %120
  %137 = load i8*, i8** @sdp_data_ptr, align 4, !dbg !547, !tbaa !168
  %138 = load i16, i16* @sdp_data_len, align 2, !dbg !549, !tbaa !505
  %139 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !550, !tbaa !168
  %140 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %139, i32 0, i32 0, i32 4, !dbg !551
  %141 = tail call zeroext i16 @sdp_decode_p_attributes_response(i8* %137, i16 zeroext %138, i16 zeroext 0, i8* %140) #9, !dbg !552
  br label %142

; <label>:142:                                    ; preds = %136, %128
  %143 = load i8*, i8** @sdp_data_ptr, align 4, !dbg !553, !tbaa !168
  %144 = icmp eq i8* %143, null, !dbg !553
  br i1 %144, label %146, label %145, !dbg !555

; <label>:145:                                    ; preds = %142
  tail call void @free(i8* nonnull %143) #9, !dbg !556
  store i8* null, i8** @sdp_data_ptr, align 4, !dbg !558, !tbaa !168
  store i16 0, i16* @sdp_data_len, align 2, !dbg !559, !tbaa !505
  br label %146, !dbg !560

; <label>:146:                                    ; preds = %145, %142
  %147 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !561, !tbaa !388
  %148 = icmp slt i8 %147, 0, !dbg !561
  br i1 %148, label %149, label %155, !dbg !563

; <label>:149:                                    ; preds = %146
  %150 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !564, !tbaa !168
  %151 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %150, i32 0, i32 0, i32 4, !dbg !564
  %152 = load i8, i8* %151, align 1, !dbg !564, !tbaa !199
  %153 = zext i8 %152 to i32, !dbg !564
  %154 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i32 %153) #9, !dbg !564
  br label %155, !dbg !564

; <label>:155:                                    ; preds = %149, %146
  %156 = tail call i32 bitcast (i32 (...)* @connect_pending_connnecting_sdp_handler to i32 ()*)() #9, !dbg !566
  %157 = icmp eq i32 %156, 0, !dbg !566
  br i1 %157, label %158, label %205, !dbg !568

; <label>:158:                                    ; preds = %155
  %159 = tail call i32 @__bt_profile_enable(i32 16) #9, !dbg !569
  %160 = icmp eq i32 %159, 0, !dbg !569
  br i1 %160, label %170, label %161, !dbg !574

; <label>:161:                                    ; preds = %158
  %162 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !575, !tbaa !168
  %163 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %162, i32 0, i32 5, !dbg !578
  %164 = load i16, i16* %163, align 4, !dbg !578, !tbaa !544
  %165 = and i16 %164, 8, !dbg !579
  %166 = icmp eq i16 %165, 0, !dbg !579
  br i1 %166, label %170, label %167, !dbg !580

; <label>:167:                                    ; preds = %161
  %168 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !581, !tbaa !168
  %169 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %168, i32 0, i32 0, i32 2, !dbg !583
  store i16 17, i16* %169, align 2, !dbg !584, !tbaa !302
  br label %209, !dbg !585

; <label>:170:                                    ; preds = %161, %158
  %171 = tail call i32 @__bt_profile_enable(i32 2) #9, !dbg !586
  %172 = icmp eq i32 %171, 0, !dbg !586
  br i1 %172, label %182, label %173, !dbg !588

; <label>:173:                                    ; preds = %170
  %174 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !589, !tbaa !168
  %175 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %174, i32 0, i32 5, !dbg !592
  %176 = load i16, i16* %175, align 4, !dbg !592, !tbaa !544
  %177 = and i16 %176, 1, !dbg !593
  %178 = icmp eq i16 %177, 0, !dbg !593
  br i1 %178, label %182, label %179, !dbg !594

; <label>:179:                                    ; preds = %173
  %180 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !595, !tbaa !168
  %181 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %180, i32 0, i32 0, i32 2, !dbg !597
  store i16 4383, i16* %181, align 2, !dbg !598, !tbaa !302
  br label %209, !dbg !599

; <label>:182:                                    ; preds = %173, %170
  %183 = tail call i32 @__bt_profile_enable(i32 4) #9, !dbg !600
  %184 = icmp eq i32 %183, 0, !dbg !600
  br i1 %184, label %201, label %185, !dbg !602

; <label>:185:                                    ; preds = %182
  %186 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !603, !tbaa !168
  %187 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %186, i32 0, i32 5, !dbg !606
  %188 = load i16, i16* %187, align 4, !dbg !606, !tbaa !544
  %189 = zext i16 %188 to i32, !dbg !603
  %190 = and i32 %189, 32, !dbg !607
  %191 = icmp eq i32 %190, 0, !dbg !607
  br i1 %191, label %195, label %192, !dbg !608

; <label>:192:                                    ; preds = %185
  %193 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !609, !tbaa !168
  %194 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %193, i32 0, i32 0, i32 2, !dbg !611
  store i16 4363, i16* %194, align 2, !dbg !612, !tbaa !302
  br label %209, !dbg !613

; <label>:195:                                    ; preds = %185
  %196 = and i32 %189, 2, !dbg !614
  %197 = icmp eq i32 %196, 0, !dbg !614
  br i1 %197, label %201, label %198, !dbg !616

; <label>:198:                                    ; preds = %195
  %199 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !617, !tbaa !168
  %200 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %199, i32 0, i32 0, i32 2, !dbg !619
  store i16 25, i16* %200, align 2, !dbg !620, !tbaa !302
  br label %209, !dbg !621

; <label>:201:                                    ; preds = %195, %182
  %202 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !622, !tbaa !168
  %203 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %202, i32 0, i32 0, i32 1, !dbg !623
  %204 = load i16, i16* %203, align 2, !dbg !623, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %204, i8 zeroext 19) #9, !dbg !624
  br label %209, !dbg !625

; <label>:205:                                    ; preds = %155
  %206 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !626, !tbaa !168
  %207 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %206, i32 0, i32 0, i32 1, !dbg !628
  %208 = load i16, i16* %207, align 2, !dbg !628, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %208, i8 zeroext 19) #9, !dbg !629
  br label %209

; <label>:209:                                    ; preds = %205, %201, %198, %192, %179, %167
  %210 = icmp eq [6 x i8]* %40, null, !dbg !630
  br i1 %210, label %279, label %211, !dbg !632

; <label>:211:                                    ; preds = %209
  %212 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !633, !tbaa !168
  %213 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %212, i32 0, i32 9, !dbg !635
  %214 = load i32, i32* %213, align 1, !dbg !636
  %215 = and i32 %214, -4194305, !dbg !636
  store i32 %215, i32* %213, align 1, !dbg !636
  %216 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %212, i32 0, i32 5, !dbg !637
  %217 = load i16, i16* %216, align 4, !dbg !637, !tbaa !544
  %218 = trunc i16 %217 to i8, !dbg !638
  %219 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_dev_info_index to i8 ()*)() #9, !dbg !639
  tail call void @put_support_profile([6 x i8]* nonnull %40, i8 zeroext %218, i8 zeroext %219) #9, !dbg !640
  br label %279, !dbg !641

; <label>:220:                                    ; preds = %82
  switch i16 %43, label %279 [
    i16 4383, label %221
    i16 4353, label %221
    i16 4399, label %221
    i16 4382, label %221
    i16 -2087, label %221
    i16 -310, label %221
    i16 25, label %262
  ], !dbg !642

; <label>:221:                                    ; preds = %220, %220, %220, %220, %220, %220
  %222 = load i8, i8* %33, align 1, !dbg !644, !tbaa !388
  %223 = icmp eq i8 %222, 53, !dbg !647
  br i1 %223, label %227, label %224, !dbg !648

; <label>:224:                                    ; preds = %227, %221
  call void @llvm.dbg.value(metadata i16 4, metadata !411, metadata !DIExpression()), !dbg !425
  %225 = icmp ugt i16 %34, 4, !dbg !649
  br i1 %225, label %226, label %279, !dbg !652

; <label>:226:                                    ; preds = %224
  br label %233, !dbg !653

; <label>:227:                                    ; preds = %221
  %228 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !656
  %229 = load i8, i8* %228, align 1, !dbg !656, !tbaa !388
  %230 = icmp eq i8 %229, 0, !dbg !658
  br i1 %230, label %231, label %224, !dbg !659

; <label>:231:                                    ; preds = %227
  %232 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %41, i32 0, i32 0, i32 4, !dbg !661
  store i8 0, i8* %232, align 1, !dbg !663, !tbaa !199
  br label %279, !dbg !664

; <label>:233:                                    ; preds = %253, %226
  %234 = phi i32 [ %254, %253 ], [ 4, %226 ]
  %235 = add nsw i32 %234, -3, !dbg !653
  %236 = getelementptr inbounds i8, i8* %33, i32 %235, !dbg !665
  %237 = load i8, i8* %236, align 1, !dbg !665, !tbaa !388
  %238 = icmp eq i8 %237, 25, !dbg !666
  br i1 %238, label %239, label %253, !dbg !667

; <label>:239:                                    ; preds = %233
  %240 = add nsw i32 %234, -2, !dbg !668
  %241 = getelementptr inbounds i8, i8* %33, i32 %240, !dbg !670
  %242 = load i8, i8* %241, align 1, !dbg !670, !tbaa !388
  %243 = icmp eq i8 %242, 0, !dbg !671
  br i1 %243, label %244, label %253, !dbg !672

; <label>:244:                                    ; preds = %239
  %245 = add nsw i32 %234, -1, !dbg !673
  %246 = getelementptr inbounds i8, i8* %33, i32 %245, !dbg !674
  %247 = load i8, i8* %246, align 1, !dbg !674, !tbaa !388
  %248 = icmp eq i8 %247, 3, !dbg !675
  br i1 %248, label %249, label %253, !dbg !676

; <label>:249:                                    ; preds = %244
  %250 = getelementptr inbounds i8, i8* %33, i32 %234, !dbg !677
  %251 = load i8, i8* %250, align 1, !dbg !677, !tbaa !388
  %252 = icmp eq i8 %251, 8, !dbg !678
  br i1 %252, label %256, label %253, !dbg !679

; <label>:253:                                    ; preds = %249, %244, %239, %233
  %254 = add nuw nsw i32 %234, 1, !dbg !681
  %255 = icmp ult i32 %254, %31, !dbg !649
  br i1 %255, label %233, label %278, !dbg !652, !llvm.loop !682

; <label>:256:                                    ; preds = %249
  %257 = add i32 %234, 1, !dbg !685
  %258 = and i32 %257, 65535, !dbg !688
  %259 = getelementptr inbounds i8, i8* %33, i32 %258, !dbg !688
  %260 = load i8, i8* %259, align 1, !dbg !688, !tbaa !388
  %261 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %41, i32 0, i32 0, i32 4, !dbg !689
  store i8 %260, i8* %261, align 1, !dbg !690, !tbaa !199
  br label %279, !dbg !691

; <label>:262:                                    ; preds = %220
  %263 = load i8, i8* %33, align 1, !dbg !692, !tbaa !388
  switch i8 %263, label %279 [
    i8 54, label %264
    i8 53, label %273
  ], !dbg !696

; <label>:264:                                    ; preds = %262
  %265 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !697
  %266 = load i8, i8* %265, align 1, !dbg !697, !tbaa !388
  %267 = icmp eq i8 %266, 0, !dbg !699
  br i1 %267, label %268, label %279, !dbg !700

; <label>:268:                                    ; preds = %264
  %269 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !701
  %270 = load i8, i8* %269, align 1, !dbg !701, !tbaa !388
  %271 = icmp eq i8 %270, 0, !dbg !703
  br i1 %271, label %272, label %279, !dbg !704

; <label>:272:                                    ; preds = %268
  store i16 0, i16* %42, align 2, !dbg !706, !tbaa !302
  br label %279, !dbg !708

; <label>:273:                                    ; preds = %262
  %274 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !709
  %275 = load i8, i8* %274, align 1, !dbg !709, !tbaa !388
  %276 = icmp eq i8 %275, 0, !dbg !712
  br i1 %276, label %277, label %279, !dbg !713

; <label>:277:                                    ; preds = %273
  store i16 0, i16* %42, align 2, !dbg !714, !tbaa !302
  br label %279, !dbg !716

; <label>:278:                                    ; preds = %253
  br label %279, !dbg !717

; <label>:279:                                    ; preds = %278, %277, %273, %272, %268, %264, %262, %256, %231, %224, %220, %211, %209, %107, %80, %60, %59, %55, %54, %50, %46, %44
  %280 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !717, !tbaa !168
  %281 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %280, i32 0, i32 0, i32 1, !dbg !718
  %282 = load i16, i16* %281, align 2, !dbg !718, !tbaa !202
  %283 = tail call [6 x i8]* @l2cap_get_btaddr_via_local_cid(i16 zeroext %282) #9, !dbg !719
  call void @llvm.dbg.value(metadata [6 x i8]* %283, metadata !325, metadata !DIExpression()), !dbg !720
  %284 = icmp eq [6 x i8]* %283, null, !dbg !721
  br i1 %284, label %517, label %285, !dbg !722

; <label>:285:                                    ; preds = %279
  %286 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !723, !tbaa !168
  %287 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %286, i32 0, i32 0, i32 2, !dbg !724
  %288 = load i16, i16* %287, align 2, !dbg !724, !tbaa !302
  switch i16 %288, label %407 [
    i16 4399, label %289
    i16 4383, label %295
    i16 4382, label %295
    i16 25, label %347
    i16 4363, label %347
    i16 4353, label %353
    i16 -2087, label %353
    i16 17, label %378
    i16 4374, label %384
    i16 -310, label %390
    i16 256, label %402
  ], !dbg !725

; <label>:289:                                    ; preds = %285
  %290 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %286, i32 0, i32 0, i32 4, !dbg !726
  %291 = load i8, i8* %290, align 1, !dbg !726, !tbaa !199
  %292 = icmp eq i8 %291, 0, !dbg !728
  br i1 %292, label %407, label %293, !dbg !729

; <label>:293:                                    ; preds = %289
  %294 = tail call zeroext i8 @sdp_master_channel_disconnect() #8, !dbg !731
  br label %517, !dbg !733

; <label>:295:                                    ; preds = %285, %285
  %296 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %286, i32 0, i32 0, i32 4, !dbg !734
  %297 = load i8, i8* %296, align 1, !dbg !734, !tbaa !199
  %298 = icmp eq i8 %297, 0, !dbg !735
  br i1 %298, label %329, label %299, !dbg !736

; <label>:299:                                    ; preds = %295
  call void @llvm.dbg.value(metadata i32 -1, metadata !324, metadata !DIExpression()), !dbg !385
  %300 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %5, i32 0, i32 0, i32 0, !dbg !737
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %300) #10, !dbg !737
  %301 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %5, i32 0, i32 1, !dbg !738
  store i32 22, i32* %301, align 4, !dbg !739, !tbaa !740
  %302 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %5, i32 0, i32 2, !dbg !742
  store i8 %297, i8* %302, align 4, !dbg !743, !tbaa !744
  store i8 0, i8* %296, align 1, !dbg !745, !tbaa !199
  %303 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !746
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %300, i8* %303, i32 6, i32 1, i1 false), !dbg !746
  %304 = load i16, i16* %287, align 2, !dbg !747, !tbaa !302
  %305 = icmp eq i16 %304, 4383, !dbg !749
  br i1 %305, label %306, label %311, !dbg !750

; <label>:306:                                    ; preds = %299
  %307 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 0), align 4, !dbg !751, !tbaa !754
  %308 = icmp eq i32 (i8*)* %307, null, !dbg !756
  br i1 %308, label %324, label %309, !dbg !757

; <label>:309:                                    ; preds = %306
  %310 = call i32 %307(i8* nonnull %300) #9, !dbg !758
  call void @llvm.dbg.value(metadata i32 %310, metadata !324, metadata !DIExpression()), !dbg !385
  br label %321, !dbg !760

; <label>:311:                                    ; preds = %299
  %312 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !761, !tbaa !388
  %313 = icmp slt i8 %312, 0, !dbg !761
  br i1 %313, label %314, label %316, !dbg !764

; <label>:314:                                    ; preds = %311
  %315 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.15, i32 0, i32 0)), !dbg !765
  br label %316, !dbg !765

; <label>:316:                                    ; preds = %314, %311
  %317 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 6), align 4, !dbg !767, !tbaa !769
  %318 = icmp eq i32 (i8*)* %317, null, !dbg !770
  br i1 %318, label %324, label %319, !dbg !771

; <label>:319:                                    ; preds = %316
  %320 = call i32 %317(i8* nonnull %300) #9, !dbg !772
  call void @llvm.dbg.value(metadata i32 %320, metadata !324, metadata !DIExpression()), !dbg !385
  br label %321, !dbg !774

; <label>:321:                                    ; preds = %319, %309
  %322 = phi i32 [ %310, %309 ], [ %320, %319 ]
  call void @llvm.dbg.value(metadata i32 %322, metadata !324, metadata !DIExpression()), !dbg !385
  %323 = icmp slt i32 %322, 0, !dbg !775
  br i1 %323, label %324, label %328, !dbg !777

; <label>:324:                                    ; preds = %321, %316, %306
  %325 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !778, !tbaa !168
  %326 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %325, i32 0, i32 0, i32 1, !dbg !780
  %327 = load i16, i16* %326, align 2, !dbg !780, !tbaa !202
  call void @l2cap_disconnect_internal(i16 zeroext %327, i8 zeroext 19) #9, !dbg !781
  br label %328, !dbg !782

; <label>:328:                                    ; preds = %324, %321
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %300) #10, !dbg !783
  br label %517, !dbg !784

; <label>:329:                                    ; preds = %295
  %330 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !785, !tbaa !168
  %331 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %330, i32 0, i32 5, !dbg !788
  %332 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %331, align 4, !dbg !788, !tbaa !789
  %333 = icmp eq void (i8*, i32, i32, i8)* %332, null, !dbg !785
  br i1 %333, label %336, label %334, !dbg !791

; <label>:334:                                    ; preds = %329
  %335 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !792
  tail call void %332(i8* %335, i32 2, i32 2, i8 zeroext 0) #9, !dbg !794
  br label %336, !dbg !795

; <label>:336:                                    ; preds = %334, %329
  %337 = tail call i32 @__bt_profile_enable(i32 4) #9, !dbg !796
  %338 = icmp eq i32 %337, 0, !dbg !796
  %339 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !tbaa !168
  br i1 %338, label %344, label %340, !dbg !798

; <label>:340:                                    ; preds = %336
  %341 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %339, i32 0, i32 0, i32 2, !dbg !799
  store i16 25, i16* %341, align 2, !dbg !801, !tbaa !302
  %342 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %339, i32 0, i32 0, i32 1, !dbg !802
  %343 = load i16, i16* %342, align 2, !dbg !802, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %343, i16 zeroext 25, i8* null) #8, !dbg !803
  br label %517, !dbg !804

; <label>:344:                                    ; preds = %336
  %345 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %339, i32 0, i32 0, i32 1, !dbg !805
  %346 = load i16, i16* %345, align 2, !dbg !805, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %346, i8 zeroext 19) #9, !dbg !807
  br label %517

; <label>:347:                                    ; preds = %285, %285
  %348 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 5), align 4, !dbg !808, !tbaa !811
  %349 = icmp eq i32 (i8*, i32)* %348, null, !dbg !812
  br i1 %349, label %517, label %350, !dbg !813

; <label>:350:                                    ; preds = %347
  %351 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !814
  %352 = tail call i32 %348(i8* %351, i32 50) #9, !dbg !816
  br label %517, !dbg !817

; <label>:353:                                    ; preds = %285, %285
  %354 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %286, i32 0, i32 0, i32 4, !dbg !818
  %355 = load i8, i8* %354, align 1, !dbg !818, !tbaa !199
  %356 = icmp eq i8 %355, 0, !dbg !819
  br i1 %356, label %367, label %357, !dbg !820

; <label>:357:                                    ; preds = %353
  %358 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %6, i32 0, i32 0, i32 0, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %358) #10, !dbg !821
  %359 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %6, i32 0, i32 1, !dbg !822
  store i8 %355, i8* %359, align 2, !dbg !823, !tbaa !824
  %360 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %6, i32 0, i32 2, !dbg !826
  store i32 1, i32* %360, align 4, !dbg !827, !tbaa !828
  %361 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !829
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %358, i8* %361, i32 6, i32 1, i1 false), !dbg !829
  %362 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 2), align 4, !dbg !830, !tbaa !832
  %363 = icmp eq i32 (i8*)* %362, null, !dbg !833
  br i1 %363, label %366, label %364, !dbg !834

; <label>:364:                                    ; preds = %357
  %365 = call i32 %362(i8* nonnull %358) #9, !dbg !835
  br label %366, !dbg !837

; <label>:366:                                    ; preds = %364, %357
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %358) #10, !dbg !838
  br label %517, !dbg !839

; <label>:367:                                    ; preds = %353
  %368 = icmp eq i16 %288, -2087, !dbg !840
  br i1 %368, label %369, label %375, !dbg !843

; <label>:369:                                    ; preds = %367
  %370 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.14, i32 0, i32 0)), !dbg !844
  %371 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !846, !tbaa !168
  %372 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %371, i32 0, i32 0, i32 2, !dbg !847
  store i16 -310, i16* %372, align 2, !dbg !848, !tbaa !302
  %373 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %371, i32 0, i32 0, i32 1, !dbg !849
  %374 = load i16, i16* %373, align 2, !dbg !849, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %374, i16 zeroext -310, i8* null) #8, !dbg !850
  br label %517, !dbg !851

; <label>:375:                                    ; preds = %367
  %376 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %286, i32 0, i32 0, i32 1, !dbg !852
  %377 = load i16, i16* %376, align 2, !dbg !852, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %377, i8 zeroext 19) #9, !dbg !854
  br label %517

; <label>:378:                                    ; preds = %285
  %379 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !dbg !855, !tbaa !859
  %380 = icmp eq i32 (i8*, i32)* %379, null, !dbg !860
  br i1 %380, label %517, label %381, !dbg !861

; <label>:381:                                    ; preds = %378
  %382 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !862
  %383 = tail call i32 %379(i8* %382, i32 8) #9, !dbg !864
  br label %517, !dbg !865

; <label>:384:                                    ; preds = %285
  %385 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 9), align 4, !dbg !866, !tbaa !870
  %386 = icmp eq i32 (i8*, i32, i32, i8*)* %385, null, !dbg !871
  br i1 %386, label %517, label %387, !dbg !872

; <label>:387:                                    ; preds = %384
  %388 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !873
  %389 = tail call i32 %385(i8* %388, i32 2, i32 0, i8* null) #9, !dbg !875
  br label %517, !dbg !876

; <label>:390:                                    ; preds = %285
  %391 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !877, !tbaa !168
  %392 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %391, i32 0, i32 5, !dbg !882
  %393 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %392, align 4, !dbg !882, !tbaa !789
  %394 = icmp eq void (i8*, i32, i32, i8)* %393, null, !dbg !877
  br i1 %394, label %398, label %395, !dbg !883

; <label>:395:                                    ; preds = %390
  %396 = getelementptr inbounds [6 x i8], [6 x i8]* %283, i32 0, i32 0, !dbg !884
  tail call void %393(i8* %396, i32 2, i32 4096, i8 zeroext 0) #9, !dbg !886
  %397 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !tbaa !168
  br label %398, !dbg !887

; <label>:398:                                    ; preds = %395, %390
  %399 = phi %struct.sdp_stack_t* [ %286, %390 ], [ %397, %395 ], !dbg !888
  %400 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %399, i32 0, i32 0, i32 1, !dbg !889
  %401 = load i16, i16* %400, align 2, !dbg !889, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %401, i8 zeroext 19) #9, !dbg !890
  br label %517, !dbg !891

; <label>:402:                                    ; preds = %285
  %403 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !892, !tbaa !388
  %404 = icmp slt i8 %403, 0, !dbg !892
  br i1 %404, label %405, label %517, !dbg !896

; <label>:405:                                    ; preds = %402
  %406 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.13, i32 0, i32 0)), !dbg !897
  br label %517, !dbg !897

; <label>:407:                                    ; preds = %289, %285
  %408 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %286, i32 0, i32 0, i32 1, !dbg !899
  %409 = load i16, i16* %408, align 2, !dbg !899, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %409, i8 zeroext 19) #9, !dbg !901
  br label %517

; <label>:410:                                    ; preds = %7
  %411 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !902
  %412 = load i8, i8* %411, align 1, !dbg !902, !tbaa !388
  %413 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !902
  %414 = load i8, i8* %413, align 1, !dbg !902, !tbaa !388
  %415 = zext i8 %412 to i16, !dbg !902
  %416 = zext i8 %414 to i16, !dbg !902
  %417 = shl nuw i16 %416, 8, !dbg !902
  %418 = or i16 %417, %415, !dbg !902
  %419 = tail call i32 @sdp_create_error_response(i16 zeroext %1, i16 zeroext %418, i16 zeroext 3) #9, !dbg !903
  br label %517, !dbg !904

; <label>:420:                                    ; preds = %4
  %421 = load i8, i8* %2, align 1, !dbg !905, !tbaa !388
  switch i8 %421, label %517 [
    i8 113, label %495
    i8 112, label %422
    i8 116, label %430
  ], !dbg !906

; <label>:422:                                    ; preds = %420
  %423 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !907, !tbaa !168
  %424 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %423, i32 0, i32 0, i32 3, !dbg !908
  store i8 0, i8* %424, align 2, !dbg !909, !tbaa !205
  %425 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !910
  %426 = load i8, i8* %425, align 1, !dbg !910, !tbaa !388
  %427 = icmp eq i8 %426, 0, !dbg !910
  br i1 %427, label %517, label %428, !dbg !912

; <label>:428:                                    ; preds = %422
  %429 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %423, i32 0, i32 0, i32 1, !dbg !913
  store i16 0, i16* %429, align 2, !dbg !915, !tbaa !202
  br label %517, !dbg !916

; <label>:430:                                    ; preds = %420
  %431 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !917, !tbaa !168
  %432 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %431, i32 0, i32 0, i32 1, !dbg !918
  %433 = load i16, i16* %432, align 2, !dbg !918, !tbaa !202
  %434 = icmp eq i16 %433, 0, !dbg !919
  br i1 %434, label %435, label %517, !dbg !920

; <label>:435:                                    ; preds = %430
  store i16 %1, i16* %432, align 2, !dbg !921, !tbaa !202
  %436 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %431, i32 0, i32 0, i32 2, !dbg !922
  %437 = load i16, i16* %436, align 2, !dbg !922, !tbaa !302
  switch i16 %437, label %517 [
    i16 0, label %443
    i16 4399, label %438
    i16 4608, label %439
    i16 -310, label %440
    i16 -2087, label %441
    i16 4353, label %442
  ], !dbg !924

; <label>:438:                                    ; preds = %435
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext 4399, i8* null) #8, !dbg !925
  br label %517, !dbg !929

; <label>:439:                                    ; preds = %435
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext 4608, i8* null) #8, !dbg !930
  br label %517, !dbg !933

; <label>:440:                                    ; preds = %435
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext -310, i8* null) #8, !dbg !934
  br label %517, !dbg !937

; <label>:441:                                    ; preds = %435
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext -2087, i8* null) #8, !dbg !938
  br label %517, !dbg !941

; <label>:442:                                    ; preds = %435
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext 4353, i8* null) #8, !dbg !942
  br label %517, !dbg !945

; <label>:443:                                    ; preds = %435
  %444 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !946, !tbaa !168
  %445 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %444, i32 0, i32 9, !dbg !949
  %446 = load i32, i32* %445, align 1, !dbg !949
  %447 = and i32 %446, 1048576, !dbg !946
  %448 = icmp eq i32 %447, 0, !dbg !946
  br i1 %448, label %450, label %449, !dbg !950

; <label>:449:                                    ; preds = %443
  store i16 256, i16* %436, align 2, !dbg !951, !tbaa !302
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext 256, i8* null) #8, !dbg !953
  br label %517, !dbg !954

; <label>:450:                                    ; preds = %443
  %451 = and i32 %446, 64, !dbg !955
  %452 = icmp eq i32 %451, 0, !dbg !955
  br i1 %452, label %454, label %453, !dbg !958

; <label>:453:                                    ; preds = %450
  store i16 17, i16* %436, align 2, !dbg !960, !tbaa !302
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %1, i16 zeroext 17, i8* null) #8, !dbg !962
  br label %517, !dbg !963

; <label>:454:                                    ; preds = %450
  %455 = tail call i32 @__bt_profile_enable(i32 2) #9, !dbg !964
  %456 = icmp eq i32 %455, 0, !dbg !964
  br i1 %456, label %462, label %457, !dbg !967

; <label>:457:                                    ; preds = %454
  %458 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !968, !tbaa !168
  %459 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %458, i32 0, i32 0, i32 2, !dbg !970
  store i16 4383, i16* %459, align 2, !dbg !971, !tbaa !302
  %460 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %458, i32 0, i32 0, i32 1, !dbg !972
  %461 = load i16, i16* %460, align 2, !dbg !972, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %461, i16 zeroext 4383, i8* null) #8, !dbg !973
  br label %517, !dbg !974

; <label>:462:                                    ; preds = %454
  %463 = tail call i32 @__bt_profile_enable(i32 4) #9, !dbg !975
  %464 = icmp eq i32 %463, 0, !dbg !975
  br i1 %464, label %470, label %465, !dbg !978

; <label>:465:                                    ; preds = %462
  %466 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !979, !tbaa !168
  %467 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %466, i32 0, i32 0, i32 2, !dbg !981
  store i16 25, i16* %467, align 2, !dbg !982, !tbaa !302
  %468 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %466, i32 0, i32 0, i32 1, !dbg !983
  %469 = load i16, i16* %468, align 2, !dbg !983, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %469, i16 zeroext 25, i8* null) #8, !dbg !984
  br label %517, !dbg !985

; <label>:470:                                    ; preds = %462
  %471 = tail call i32 @__bt_profile_enable(i32 16) #9, !dbg !986
  %472 = icmp eq i32 %471, 0, !dbg !986
  br i1 %472, label %478, label %473, !dbg !989

; <label>:473:                                    ; preds = %470
  %474 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !990, !tbaa !168
  %475 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %474, i32 0, i32 0, i32 2, !dbg !992
  store i16 17, i16* %475, align 2, !dbg !993, !tbaa !302
  %476 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %474, i32 0, i32 0, i32 1, !dbg !994
  %477 = load i16, i16* %476, align 2, !dbg !994, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %477, i16 zeroext 17, i8* null) #8, !dbg !995
  br label %517, !dbg !996

; <label>:478:                                    ; preds = %470
  %479 = tail call i32 @__bt_profile_enable(i32 256) #9, !dbg !997
  %480 = icmp eq i32 %479, 0, !dbg !997
  br i1 %480, label %491, label %481, !dbg !1000

; <label>:481:                                    ; preds = %478
  %482 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1001, !tbaa !388
  %483 = icmp slt i8 %482, 0, !dbg !1001
  br i1 %483, label %484, label %486, !dbg !1004

; <label>:484:                                    ; preds = %481
  %485 = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str, i32 0, i32 0)), !dbg !1005
  br label %486, !dbg !1005

; <label>:486:                                    ; preds = %484, %481
  %487 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !1007, !tbaa !168
  %488 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %487, i32 0, i32 0, i32 2, !dbg !1008
  store i16 4374, i16* %488, align 2, !dbg !1009, !tbaa !302
  %489 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %487, i32 0, i32 0, i32 1, !dbg !1010
  %490 = load i16, i16* %489, align 2, !dbg !1010, !tbaa !202
  tail call fastcc void @sdp_send_service_search_attribute_request(i16 zeroext %490, i16 zeroext 4374, i8* null) #8, !dbg !1011
  br label %517, !dbg !1012

; <label>:491:                                    ; preds = %478
  %492 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !1013, !tbaa !168
  %493 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %492, i32 0, i32 0, i32 1, !dbg !1015
  %494 = load i16, i16* %493, align 2, !dbg !1015, !tbaa !202
  tail call void @l2cap_disconnect_internal(i16 zeroext %494, i8 zeroext 19) #9, !dbg !1016
  br label %517

; <label>:495:                                    ; preds = %420
  %496 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !1017, !tbaa !168
  %497 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %496, i32 0, i32 0, i32 1, !dbg !1019
  %498 = load i16, i16* %497, align 2, !dbg !1019, !tbaa !202
  %499 = icmp eq i16 %498, %1, !dbg !1020
  br i1 %499, label %500, label %502, !dbg !1021

; <label>:500:                                    ; preds = %495
  store i16 0, i16* %497, align 2, !dbg !1022, !tbaa !202
  %501 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %496, i32 0, i32 0, i32 4, !dbg !1024
  store i8 0, i8* %501, align 1, !dbg !1025, !tbaa !199
  br label %502, !dbg !1026

; <label>:502:                                    ; preds = %500, %495
  %503 = load i8*, i8** @sdp_data_ptr, align 4, !dbg !1027, !tbaa !168
  %504 = icmp eq i8* %503, null, !dbg !1027
  br i1 %504, label %514, label %505, !dbg !1029

; <label>:505:                                    ; preds = %502
  %506 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1030, !tbaa !388
  %507 = icmp slt i8 %506, 0, !dbg !1030
  br i1 %507, label %508, label %511, !dbg !1033

; <label>:508:                                    ; preds = %505
  %509 = tail call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @str.12, i32 0, i32 0)), !dbg !1034
  %510 = load i8*, i8** @sdp_data_ptr, align 4, !tbaa !168
  br label %511, !dbg !1034

; <label>:511:                                    ; preds = %508, %505
  %512 = phi i8* [ %510, %508 ], [ %503, %505 ], !dbg !1036
  tail call void @free(i8* %512) #8, !dbg !1037
  store i8* null, i8** @sdp_data_ptr, align 4, !dbg !1038, !tbaa !168
  store i16 0, i16* @sdp_data_len, align 2, !dbg !1039, !tbaa !505
  %513 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !tbaa !168
  br label %514, !dbg !1040

; <label>:514:                                    ; preds = %511, %502
  %515 = phi %struct.sdp_stack_t* [ %496, %502 ], [ %513, %511 ], !dbg !1041
  %516 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %515, i32 0, i32 0, i32 3, !dbg !1042
  store i8 0, i8* %516, align 2, !dbg !1043, !tbaa !205
  br label %517, !dbg !1044

; <label>:517:                                    ; preds = %514, %491, %486, %473, %465, %457, %453, %449, %442, %441, %440, %439, %438, %435, %430, %428, %422, %420, %410, %407, %405, %402, %398, %387, %384, %381, %378, %375, %369, %366, %350, %347, %344, %340, %328, %293, %279, %9, %7, %7, %4
  ret void, !dbg !1045
}

; Function Attrs: optsize
declare i32 @connect_pending_connnecting_sdp_handler(...) local_unnamed_addr #3

; Function Attrs: optsize
declare [6 x i8]* @l2cap_get_btaddr_via_local_cid(i16 zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #7

; Function Attrs: optsize
declare i32 @__bt_profile_enable(i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @sdp_send_service_search_attribute_request(i16 zeroext, i16 zeroext, i8* readonly) unnamed_addr #6 section ".bt_stack_code" !dbg !1046 {
  %4 = alloca [256 x i8], align 1
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #10, !dbg !1066
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !1053, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 0, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i16 0, metadata !1058, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i16 0, metadata !1059, metadata !DIExpression()), !dbg !1070
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 5, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %6, metadata !1061, metadata !DIExpression()), !dbg !1072
  call void @llvm.memset.p0i8.i32(i8* nonnull %5, i8 0, i32 256, i32 1, i1 false), !dbg !1073
  call void @de_create_sequence(i8* %6) #9, !dbg !1074
  switch i16 %1, label %9 [
    i16 -2087, label %7
    i16 -310, label %8
  ], !dbg !1075

; <label>:7:                                      ; preds = %3
  call void @de_add_uuid128(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @AMA_re_establish, i32 0, i32 0)) #9, !dbg !1076
  br label %11, !dbg !1079

; <label>:8:                                      ; preds = %3
  call void @de_add_uuid128(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @iap2_re_establish, i32 0, i32 0)) #9, !dbg !1080
  br label %11, !dbg !1083

; <label>:9:                                      ; preds = %3
  %10 = zext i16 %1 to i32, !dbg !1084
  call void @de_add_number(i8* %6, i32 3, i32 1, i32 %10) #9, !dbg !1085
  br label %11

; <label>:11:                                     ; preds = %9, %8, %7
  %12 = call i32 @de_get_len(i8* %6) #9, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %12, metadata !1057, metadata !DIExpression()), !dbg !1068
  %13 = trunc i32 %12 to i16, !dbg !1088
  call void @llvm.dbg.value(metadata i16 %13, metadata !1059, metadata !DIExpression()), !dbg !1070
  call void @net_store_16(i8* %6, i16 zeroext %13, i16 zeroext 512) #9, !dbg !1089
  %14 = add i32 %12, 2, !dbg !1090
  %15 = getelementptr inbounds i8, i8* %6, i32 %12, !dbg !1091
  %16 = getelementptr inbounds i8, i8* %15, i32 2, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %16, metadata !1060, metadata !DIExpression()), !dbg !1093
  call void @de_create_sequence(i8* %16) #9, !dbg !1094
  switch i16 %1, label %19 [
    i16 4608, label %17
    i16 4374, label %17
    i16 4382, label %18
    i16 256, label %18
  ], !dbg !1095

; <label>:17:                                     ; preds = %11, %11
  call void @de_add_number(i8* %16, i32 1, i32 2, i32 65535) #9, !dbg !1097
  br label %20, !dbg !1099

; <label>:18:                                     ; preds = %11, %11
  call void @de_add_number(i8* %16, i32 1, i32 2, i32 65535) #9, !dbg !1100
  br label %20, !dbg !1103

; <label>:19:                                     ; preds = %11
  call void @de_add_number(i8* %16, i32 1, i32 1, i32 4) #9, !dbg !1104
  br label %20

; <label>:20:                                     ; preds = %19, %18, %17
  %21 = call i32 @de_get_len(i8* %16) #9, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %21, metadata !1057, metadata !DIExpression()), !dbg !1068
  %22 = add i32 %14, %21, !dbg !1107
  %23 = icmp eq i8* %2, null, !dbg !1108
  br i1 %23, label %43, label %24, !dbg !1109

; <label>:24:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !1062, metadata !DIExpression()), !dbg !1110
  %25 = load i8, i8* %2, align 1, !tbaa !388
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %26, 1, !dbg !1111
  %28 = and i32 %22, 65535, !dbg !1113
  %29 = getelementptr inbounds i8, i8* %6, i32 %28, !dbg !1113
  store i8 %25, i8* %29, align 1, !dbg !1116, !tbaa !388
  %30 = add nuw nsw i32 %28, 1, !dbg !1117
  call void @llvm.dbg.value(metadata i32 1, metadata !1062, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 1, metadata !1062, metadata !DIExpression()), !dbg !1110
  %31 = icmp eq i32 %27, 1, !dbg !1118
  br i1 %31, label %48, label %32, !dbg !1111, !llvm.loop !1120

; <label>:32:                                     ; preds = %24
  br label %33

; <label>:33:                                     ; preds = %33, %32
  %34 = phi i32 [ %41, %33 ], [ 1, %32 ]
  %35 = phi i32 [ %40, %33 ], [ %30, %32 ]
  %36 = getelementptr inbounds i8, i8* %2, i32 %34
  %37 = load i8, i8* %36, align 1, !tbaa !388
  %38 = and i32 %35, 65535, !dbg !1113
  %39 = getelementptr inbounds i8, i8* %6, i32 %38, !dbg !1113
  store i8 %37, i8* %39, align 1, !dbg !1116, !tbaa !388
  %40 = add nuw nsw i32 %38, 1, !dbg !1117
  %41 = add nuw nsw i32 %34, 1, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %41, metadata !1062, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %41, metadata !1062, metadata !DIExpression()), !dbg !1110
  %42 = icmp eq i32 %41, %27, !dbg !1118
  br i1 %42, label %47, label %33, !dbg !1111, !llvm.loop !1120

; <label>:43:                                     ; preds = %20
  %44 = and i32 %22, 65535, !dbg !1125
  %45 = getelementptr inbounds i8, i8* %6, i32 %44, !dbg !1125
  store i8 0, i8* %45, align 1, !dbg !1127, !tbaa !388
  %46 = add i32 %22, 1, !dbg !1128
  br label %48

; <label>:47:                                     ; preds = %33
  br label %48

; <label>:48:                                     ; preds = %47, %43, %24
  %49 = phi i32 [ %46, %43 ], [ %30, %24 ], [ %40, %47 ]
  %50 = trunc i32 %49 to i16
  call void @llvm.dbg.value(metadata i16 %50, metadata !1059, metadata !DIExpression()), !dbg !1070
  store i8 6, i8* %5, align 1, !dbg !1129, !tbaa !388
  %51 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !1130, !tbaa !168
  %52 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %51, i32 0, i32 0, i32 5, !dbg !1135
  %53 = load i8, i8* %52, align 2, !dbg !1136, !tbaa !193
  %54 = add i8 %53, 1, !dbg !1136
  store i8 %54, i8* %52, align 2, !dbg !1136, !tbaa !193
  %55 = zext i8 %53 to i16, !dbg !1137
  call void @net_store_16(i8* nonnull %5, i16 zeroext 1, i16 zeroext %55) #9, !dbg !1138
  call void @net_store_16(i8* nonnull %5, i16 zeroext 3, i16 zeroext %50) #9, !dbg !1140
  %56 = add i16 %50, 5, !dbg !1141
  call void @llvm.dbg.value(metadata i16 %56, metadata !1058, metadata !DIExpression()), !dbg !1069
  %57 = call i32 @sdp_try_respond(i16 zeroext %0, i8* nonnull %5, i16 zeroext %56) #9, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #10, !dbg !1143
  ret void
}

; Function Attrs: optsize
declare i32 @sdp_create_error_response(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @de_get_element_type(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @de_get_header_size(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @sdp_decode_attributes_response(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @de_get_data_size(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @sdp_decode_p_attributes_response(i8*, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @put_support_profile([6 x i8]*, i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @get_remote_dev_info_index(...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #7

; Function Attrs: optsize
declare void @de_create_sequence(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @de_add_uuid128(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @de_add_number(i8*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @de_get_len(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @net_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sdp_try_respond(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !149, line: 190, type: !150, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !126, globals: !136)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_master.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !15, !45, !51, !60, !74, !80, !95, !104, !116}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 81, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14}
!8 = !DIEnumerator(name: "SDP_ErrorResponse", value: 1)
!9 = !DIEnumerator(name: "SDP_ServiceSearchRequest", value: 2)
!10 = !DIEnumerator(name: "SDP_ServiceSearchResponse", value: 3)
!11 = !DIEnumerator(name: "SDP_ServiceAttributeRequest", value: 4)
!12 = !DIEnumerator(name: "SDP_ServiceAttributeResponse", value: 5)
!13 = !DIEnumerator(name: "SDP_ServiceSearchAttributeRequest", value: 6)
!14 = !DIEnumerator(name: "SDP_ServiceSearchAttributeResponse", value: 7)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 142, size: 32, elements: !17)
!16 = !DIFile(filename: "../btstack/Profile/include/bredr/hfp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!18 = !DIEnumerator(name: "HFP_CALL_ANSWER", value: 0)
!19 = !DIEnumerator(name: "HFP_CALL_HANGUP", value: 1)
!20 = !DIEnumerator(name: "HFP_CALL_LAST_NO", value: 2)
!21 = !DIEnumerator(name: "HFP_CALL_VOLUME_UP", value: 3)
!22 = !DIEnumerator(name: "HFP_CALL_VOLUME_DOWN", value: 4)
!23 = !DIEnumerator(name: "HFP_CALL_VOLUME_SET", value: 5)
!24 = !DIEnumerator(name: "HFP_CALL_CURRENT", value: 6)
!25 = !DIEnumerator(name: "HFP_GET_SIRI_STATUS", value: 7)
!26 = !DIEnumerator(name: "HFP_GET_SIRI_OPEN", value: 8)
!27 = !DIEnumerator(name: "HFP_GET_SIRI_CLOSE", value: 9)
!28 = !DIEnumerator(name: "HFP_GET_PHONE_DATE_TIME", value: 10)
!29 = !DIEnumerator(name: "HFP_CMD_GET_MANUFACTURER", value: 11)
!30 = !DIEnumerator(name: "HFP_CMD_GET_NUM_INFO", value: 12)
!31 = !DIEnumerator(name: "HFP_CMD_SEND_BIA", value: 13)
!32 = !DIEnumerator(name: "HFP_CMD_SEND_BCC", value: 14)
!33 = !DIEnumerator(name: "HFP_CMD_SIMPLE_CMD_TABLE_END", value: 15)
!34 = !DIEnumerator(name: "HFP_THREE_WAY_CALL", value: 16)
!35 = !DIEnumerator(name: "HFP_CMD_DTMF", value: 17)
!36 = !DIEnumerator(name: "HFP_CMD_DIAL", value: 18)
!37 = !DIEnumerator(name: "HFP_CMD_SPEAK_GAIN", value: 19)
!38 = !DIEnumerator(name: "HFP_CMD_CLEAR_SIRI_STATUS", value: 20)
!39 = !DIEnumerator(name: "HFP_CMD_UPDATE_BAT_NOW", value: 21)
!40 = !DIEnumerator(name: "HFP_CONNECT", value: 22)
!41 = !DIEnumerator(name: "HFP_DISCONNECT", value: 23)
!42 = !DIEnumerator(name: "HFP_AG_OUTGOING_CALL", value: 24)
!43 = !DIEnumerator(name: "HFP_SEND_USER_AT_CMD", value: 25)
!44 = !DIEnumerator(name: "HFP_NO_OPERATE", value: 255)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 124, size: 32, elements: !46)
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "HFP_GAIN_INC", value: 0)
!48 = !DIEnumerator(name: "HFP_GAIN_DEC", value: 1)
!49 = !DIEnumerator(name: "HFP_GAIN_SET_GAIN", value: 2)
!50 = !DIEnumerator(name: "HFP_GAIN_GET_GAIN", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 132, size: 32, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !DIEnumerator(name: "THREE_WAY_OP_0", value: 0)
!54 = !DIEnumerator(name: "THREE_WAY_OP_1", value: 1)
!55 = !DIEnumerator(name: "THREE_WAY_OP_1X", value: 2)
!56 = !DIEnumerator(name: "THREE_WAY_OP_2", value: 3)
!57 = !DIEnumerator(name: "THREE_WAY_OP_2X", value: 4)
!58 = !DIEnumerator(name: "THREE_WAY_OP_3", value: 5)
!59 = !DIEnumerator(name: "THREE_WAY_OP_4", value: 6)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 164, size: 32, elements: !62)
!61 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!63 = !DIEnumerator(name: "A2DP_CMD_CONNECT", value: 50)
!64 = !DIEnumerator(name: "A2DP_CMD_DISCONNECT", value: 51)
!65 = !DIEnumerator(name: "A2DP_CMD_START", value: 52)
!66 = !DIEnumerator(name: "A2DP_CMD_CLOSE", value: 53)
!67 = !DIEnumerator(name: "A2DP_CMD_SUSPEND", value: 54)
!68 = !DIEnumerator(name: "A2DP_CMD_GET_CONFIGURATION", value: 55)
!69 = !DIEnumerator(name: "A2DP_CMD_ABORT", value: 56)
!70 = !DIEnumerator(name: "A2DP_CMD_EMITTER_START_CMD", value: 57)
!71 = !DIEnumerator(name: "A2DP_CMD_EMITTER_SUSPEND_CMD", value: 58)
!72 = !DIEnumerator(name: "A2DP_CMD_EMITTER_CLOSE_CMD", value: 59)
!73 = !DIEnumerator(name: "A2DP_CMD_CONNECT_MEDIA_CHANNEL", value: 60)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 26, size: 32, elements: !76)
!75 = !DIFile(filename: "../btstack/Profile/include/bredr/spp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "SPP_CMD_CONNECT", value: 1)
!78 = !DIEnumerator(name: "SPP_CMD_DISCONNECT", value: 2)
!79 = !DIEnumerator(name: "SPP_CMD_SEND_DATA", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 70, size: 32, elements: !82)
!81 = !DIFile(filename: "../btstack/Profile/include/bredr/hid_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!83 = !DIEnumerator(name: "HID_CMD_ANDROID_SHUTTER", value: 1)
!84 = !DIEnumerator(name: "HID_CMD_IOS_SHUTTER", value: 2)
!85 = !DIEnumerator(name: "HID_CMD_BOTH_SHUTTER", value: 3)
!86 = !DIEnumerator(name: "HID_CMD_HOME_KEY", value: 4)
!87 = !DIEnumerator(name: "HID_CMD_RETURN_KEY", value: 5)
!88 = !DIEnumerator(name: "HID_CMD_LEFTARROW_KEY", value: 6)
!89 = !DIEnumerator(name: "HID_CMD_RIGHTARROW_KEY", value: 7)
!90 = !DIEnumerator(name: "HID_CMD_CONNECT", value: 8)
!91 = !DIEnumerator(name: "HID_CMD_DISCONNECT", value: 9)
!92 = !DIEnumerator(name: "HID_CMD_INCREASE_VOL", value: 10)
!93 = !DIEnumerator(name: "HID_CMD_DECREASE_VOL", value: 11)
!94 = !DIEnumerator(name: "HID_CMD_DIY_RESUME_SEND", value: 12)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 32, size: 32, elements: !97)
!96 = !DIFile(filename: "../btstack/Profile/include/bredr/pan.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIEnumerator(name: "PAN_CMD_CONNECT_SDP", value: 1)
!99 = !DIEnumerator(name: "PAN_CMD_CONNECT", value: 2)
!100 = !DIEnumerator(name: "PAN_CMD_TEST_PING_IPV4", value: 3)
!101 = !DIEnumerator(name: "PAN_CMD_TEST_PING_IPV6", value: 4)
!102 = !DIEnumerator(name: "PAN_CMD_DISCONNECT", value: 5)
!103 = !DIEnumerator(name: "PAN_CMD_SEND_DATA", value: 255)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 45, size: 32, elements: !106)
!105 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp_util.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115}
!107 = !DIEnumerator(name: "DE_NIL", value: 0)
!108 = !DIEnumerator(name: "DE_UINT", value: 1)
!109 = !DIEnumerator(name: "DE_INT", value: 2)
!110 = !DIEnumerator(name: "DE_UUID", value: 3)
!111 = !DIEnumerator(name: "DE_STRING", value: 4)
!112 = !DIEnumerator(name: "DE_BOOL", value: 5)
!113 = !DIEnumerator(name: "DE_DES", value: 6)
!114 = !DIEnumerator(name: "DE_DEA", value: 7)
!115 = !DIEnumerator(name: "DE_URL", value: 8)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 57, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125}
!118 = !DIEnumerator(name: "DE_SIZE_8", value: 0)
!119 = !DIEnumerator(name: "DE_SIZE_16", value: 1)
!120 = !DIEnumerator(name: "DE_SIZE_32", value: 2)
!121 = !DIEnumerator(name: "DE_SIZE_64", value: 3)
!122 = !DIEnumerator(name: "DE_SIZE_128", value: 4)
!123 = !DIEnumerator(name: "DE_SIZE_VAR_8", value: 5)
!124 = !DIEnumerator(name: "DE_SIZE_VAR_16", value: 6)
!125 = !DIEnumerator(name: "DE_SIZE_VAR_32", value: 7)
!126 = !{!127, !128, !129, !132, !135}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "SDP_PDU_ID_t", file: !6, line: 89, baseType: !5)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !130, line: 46, baseType: !131)
!130 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !130, line: 44, baseType: !134)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !130, line: 46, baseType: !131)
!136 = !{!0, !137, !143, !145, !147}
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "AMA_re_establish", scope: !2, file: !3, line: 22, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!141 = !{!142}
!142 = !DISubrange(count: 16)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "iap2_re_establish", scope: !2, file: !3, line: 21, type: !139, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "sdp_data_ptr", scope: !2, file: !3, line: 259, type: !132, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "sdp_data_len", scope: !2, file: !3, line: 260, type: !135, isLocal: true, isDefinition: true)
!149 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !{i32 2, !"Dwarf Version", i32 4}
!152 = !{i32 2, !"Debug Info Version", i32 3}
!153 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!154 = distinct !DISubprogram(name: "sdp_master_init", scope: !3, file: !3, line: 33, type: !155, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !127}
!157 = !{!158}
!158 = !DILocalVariable(name: "stack", arg: 1, scope: !154, file: !3, line: 33, type: !127)
!159 = !DILocation(line: 33, column: 28, scope: !154)
!160 = !DILocation(line: 35, column: 5, scope: !161)
!161 = !DILexicalBlockFile(scope: !162, file: !3, discriminator: 1)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 35, column: 5)
!163 = distinct !DILexicalBlock(scope: !154, file: !3, line: 35, column: 5)
!164 = !{!165, !165, i64 0}
!165 = !{!"int", !166, i64 0}
!166 = !{!"omnipotent char", !167, i64 0}
!167 = !{!"Simple C/C++ TBAA"}
!168 = !{!169, !169, i64 0}
!169 = !{!"any pointer", !166, i64 0}
!170 = !DILocation(line: 35, column: 5, scope: !171)
!171 = !DILexicalBlockFile(scope: !163, file: !3, discriminator: 1)
!172 = !DILocation(line: 35, column: 5, scope: !173)
!173 = !DILexicalBlockFile(scope: !174, file: !3, discriminator: 2)
!174 = distinct !DILexicalBlock(scope: !162, file: !3, line: 35, column: 5)
!175 = !DILocation(line: 35, column: 5, scope: !176)
!176 = !DILexicalBlockFile(scope: !177, file: !3, discriminator: 3)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 35, column: 5)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 35, column: 5)
!179 = !DILocation(line: 35, column: 5, scope: !180)
!180 = !DILexicalBlockFile(scope: !177, file: !3, discriminator: 8)
!181 = !DILocation(line: 35, column: 5, scope: !182)
!182 = !DILexicalBlockFile(scope: !177, file: !3, discriminator: 9)
!183 = !DILocation(line: 35, column: 5, scope: !184)
!184 = !DILexicalBlockFile(scope: !185, file: !3, discriminator: 5)
!185 = distinct !DILexicalBlock(scope: !162, file: !3, line: 35, column: 5)
!186 = !DILocation(line: 35, column: 5, scope: !187)
!187 = !DILexicalBlockFile(scope: !188, file: !3, discriminator: 6)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 35, column: 5)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 35, column: 5)
!190 = !DILocation(line: 36, column: 5, scope: !154)
!191 = !DILocation(line: 36, column: 31, scope: !154)
!192 = !DILocation(line: 36, column: 51, scope: !154)
!193 = !{!194, !166, i64 8}
!194 = !{!"", !195, i64 0}
!195 = !{!"", !196, i64 0, !196, i64 2, !196, i64 4, !166, i64 6, !166, i64 7, !166, i64 8}
!196 = !{!"short", !166, i64 0}
!197 = !DILocation(line: 37, column: 31, scope: !154)
!198 = !DILocation(line: 37, column: 50, scope: !154)
!199 = !{!194, !166, i64 7}
!200 = !DILocation(line: 38, column: 31, scope: !154)
!201 = !DILocation(line: 38, column: 50, scope: !154)
!202 = !{!194, !196, i64 2}
!203 = !DILocation(line: 39, column: 31, scope: !154)
!204 = !DILocation(line: 39, column: 57, scope: !154)
!205 = !{!194, !166, i64 6}
!206 = !DILocation(line: 41, column: 1, scope: !154)
!207 = distinct !DISubprogram(name: "cpu_reset", scope: !208, file: !208, line: 145, type: !209, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!208 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!209 = !DISubroutineType(types: !210)
!210 = !{null}
!211 = !{}
!212 = !DILocation(line: 148, column: 5, scope: !207)
!213 = !DILocation(line: 149, column: 1, scope: !207)
!214 = distinct !DISubprogram(name: "check_sdp_master_channel_state", scope: !3, file: !3, line: 44, type: !215, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!215 = !DISubroutineType(types: !216)
!216 = !{!133}
!217 = !DILocation(line: 46, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 46, column: 9)
!219 = !DILocation(line: 46, column: 9, scope: !214)
!220 = !DILocation(line: 47, column: 42, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 46, column: 21)
!222 = !DILocation(line: 47, column: 16, scope: !221)
!223 = !DILocation(line: 47, column: 9, scope: !221)
!224 = !DILocation(line: 50, column: 1, scope: !214)
!225 = distinct !DISubprogram(name: "sdp_master_channel_disconnect", scope: !3, file: !3, line: 52, type: !215, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!226 = !DILocation(line: 54, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !3, line: 54, column: 9)
!228 = !DILocation(line: 54, column: 35, scope: !227)
!229 = !DILocation(line: 54, column: 9, scope: !225)
!230 = !DILocation(line: 55, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 54, column: 55)
!232 = !DILocation(line: 56, column: 9, scope: !231)
!233 = !DILocation(line: 59, column: 1, scope: !225)
!234 = distinct !DISubprogram(name: "sdp_send_cmd_iotl", scope: !3, file: !3, line: 92, type: !235, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !239)
!235 = !DISubroutineType(types: !236)
!236 = !{!150, !132, !237, !237}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !130, line: 48, baseType: !238)
!238 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "addr", arg: 1, scope: !234, file: !3, line: 92, type: !132)
!241 = !DILocalVariable(name: "cmd", arg: 2, scope: !234, file: !3, line: 92, type: !237)
!242 = !DILocalVariable(name: "param", arg: 3, scope: !234, file: !3, line: 92, type: !237)
!243 = !DILocation(line: 92, column: 27, scope: !234)
!244 = !DILocation(line: 92, column: 37, scope: !234)
!245 = !DILocation(line: 92, column: 46, scope: !234)
!246 = !DILocation(line: 94, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !234, file: !3, line: 94, column: 9)
!248 = !DILocation(line: 94, column: 20, scope: !247)
!249 = !DILocation(line: 94, column: 9, scope: !234)
!250 = !DILocation(line: 97, column: 35, scope: !251)
!251 = distinct !DILexicalBlock(scope: !234, file: !3, line: 97, column: 9)
!252 = !DILocation(line: 97, column: 9, scope: !251)
!253 = !DILocation(line: 97, column: 9, scope: !234)
!254 = !DILocation(line: 100, column: 5, scope: !234)
!255 = !DILocation(line: 102, column: 51, scope: !256)
!256 = distinct !DILexicalBlock(scope: !234, file: !3, line: 100, column: 18)
!257 = !DILocation(line: 102, column: 16, scope: !256)
!258 = !DILocation(line: 102, column: 9, scope: !256)
!259 = !DILocation(line: 105, column: 9, scope: !256)
!260 = !DILocation(line: 106, column: 9, scope: !256)
!261 = !DILocation(line: 83, column: 35, scope: !262, inlinedAt: !270)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 83, column: 9)
!263 = distinct !DISubprogram(name: "get_pnp_connection", scope: !3, file: !3, line: 79, type: !264, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !268)
!264 = !DISubroutineType(types: !265)
!265 = !{!133, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 44, baseType: !134)
!268 = !{!269}
!269 = !DILocalVariable(name: "address", arg: 1, scope: !263, file: !3, line: 79, type: !266)
!270 = distinct !DILocation(line: 108, column: 9, scope: !256)
!271 = !DILocation(line: 83, column: 54, scope: !262, inlinedAt: !270)
!272 = !DILocation(line: 83, column: 9, scope: !263, inlinedAt: !270)
!273 = !DILocation(line: 84, column: 9, scope: !274, inlinedAt: !270)
!274 = distinct !DILexicalBlock(scope: !262, file: !3, line: 83, column: 60)
!275 = !DILocation(line: 85, column: 5, scope: !274, inlinedAt: !270)
!276 = !DILocation(line: 86, column: 9, scope: !277, inlinedAt: !270)
!277 = distinct !DILexicalBlock(scope: !262, file: !3, line: 85, column: 12)
!278 = !DILocation(line: 112, column: 1, scope: !234)
!279 = distinct !DISubprogram(name: "launch_initiative_connection", scope: !3, file: !3, line: 61, type: !280, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!150, !266, !135}
!282 = !{!283, !284}
!283 = !DILocalVariable(name: "address", arg: 1, scope: !279, file: !3, line: 61, type: !266)
!284 = !DILocalVariable(name: "flag", arg: 2, scope: !279, file: !3, line: 61, type: !135)
!285 = !DILocation(line: 61, column: 51, scope: !279)
!286 = !DILocation(line: 61, column: 64, scope: !279)
!287 = !DILocation(line: 65, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !279, file: !3, line: 65, column: 9)
!289 = !DILocation(line: 65, column: 35, scope: !288)
!290 = !DILocation(line: 65, column: 54, scope: !288)
!291 = !DILocation(line: 65, column: 9, scope: !279)
!292 = !DILocation(line: 66, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !3, line: 65, column: 60)
!294 = !DILocation(line: 67, column: 9, scope: !293)
!295 = !DILocation(line: 70, column: 35, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !3, line: 68, column: 12)
!297 = !DILocation(line: 70, column: 61, scope: !296)
!298 = !DILocation(line: 71, column: 9, scope: !296)
!299 = !DILocation(line: 72, column: 9, scope: !296)
!300 = !DILocation(line: 72, column: 35, scope: !296)
!301 = !DILocation(line: 72, column: 57, scope: !296)
!302 = !{!194, !196, i64 4}
!303 = !DILocation(line: 75, column: 5, scope: !279)
!304 = !DILocation(line: 76, column: 1, scope: !279)
!305 = distinct !DISubprogram(name: "sdp_tws_connect_hfp_check", scope: !3, file: !3, line: 393, type: !215, isLocal: false, isDefinition: true, scopeLine: 394, isOptimized: true, unit: !2, variables: !211)
!306 = !DILocation(line: 395, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !3, line: 395, column: 9)
!308 = !DILocation(line: 395, column: 35, scope: !307)
!309 = !DILocation(line: 395, column: 57, scope: !307)
!310 = !DILocation(line: 396, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 395, column: 73)
!312 = !DILocation(line: 400, column: 1, scope: !305)
!313 = distinct !DISubprogram(name: "sdp_master_packet_handler", scope: !3, file: !3, line: 403, type: !314, isLocal: true, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !133, !135, !132, !135}
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !335, !362, !376}
!317 = !DILocalVariable(name: "packet_type", arg: 1, scope: !313, file: !3, line: 403, type: !133)
!318 = !DILocalVariable(name: "channel", arg: 2, scope: !313, file: !3, line: 403, type: !135)
!319 = !DILocalVariable(name: "packet", arg: 3, scope: !313, file: !3, line: 403, type: !132)
!320 = !DILocalVariable(name: "size", arg: 4, scope: !313, file: !3, line: 403, type: !135)
!321 = !DILocalVariable(name: "pdu_id", scope: !313, file: !3, line: 405, type: !128)
!322 = !DILocalVariable(name: "transaction_id", scope: !313, file: !3, line: 406, type: !135)
!323 = !DILocalVariable(name: "continuation_state", scope: !313, file: !3, line: 407, type: !135)
!324 = !DILocalVariable(name: "ret", scope: !313, file: !3, line: 408, type: !150)
!325 = !DILocalVariable(name: "bt_addr", scope: !326, file: !3, line: 432, type: !329)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 431, column: 13)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 415, column: 25)
!328 = distinct !DILexicalBlock(scope: !313, file: !3, line: 410, column: 26)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !331, line: 66, baseType: !332)
!331 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 48, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 6)
!335 = !DILocalVariable(name: "hfp_io_str", scope: !336, file: !3, line: 448, type: !343)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 445, column: 75)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 445, column: 29)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 444, column: 101)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 443, column: 32)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 435, column: 25)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 434, column: 30)
!342 = distinct !DILexicalBlock(scope: !326, file: !3, line: 434, column: 21)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_ioctrl_str", file: !16, line: 315, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 305, size: 384, elements: !345)
!345 = !{!346, !347, !349, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !344, file: !16, line: 306, baseType: !330, size: 48)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !344, file: !16, line: 307, baseType: !348, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_PHONE_CTL_TYPE", file: !16, line: 170, baseType: !15)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !16, line: 308, baseType: !133, size: 8, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !16, line: 309, baseType: !351, size: 256, offset: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !16, line: 309, size: 256, elements: !352)
!352 = !{!353, !355, !357, !361}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "gain_mode", scope: !351, file: !16, line: 310, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_GAIN_CTL_MODE", file: !16, line: 129, baseType: !45)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "three_way_ctrl", scope: !351, file: !16, line: 311, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_THREE_WAY_CALL_FLAG", file: !16, line: 140, baseType: !51)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "phone_num", scope: !351, file: !16, line: 312, baseType: !358, size: 240)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 240, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 30)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !351, file: !16, line: 313, baseType: !132, size: 32)
!362 = !DILocalVariable(name: "spp_io_str", scope: !363, file: !3, line: 490, type: !368)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 488, column: 75)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 488, column: 29)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 486, column: 109)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 485, column: 33)
!367 = distinct !DILexicalBlock(scope: !339, file: !3, line: 479, column: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_ioctrl_str", file: !75, line: 38, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 32, size: 160, elements: !370)
!370 = !{!371, !372, !373, !374, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !369, file: !75, line: 33, baseType: !330, size: 48)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_cid", scope: !369, file: !75, line: 34, baseType: !133, size: 8, offset: 48)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !75, line: 35, baseType: !150, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !369, file: !75, line: 36, baseType: !150, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !369, file: !75, line: 37, baseType: !132, size: 32, offset: 128)
!376 = !DILocalVariable(name: "error", scope: !377, file: !3, line: 573, type: !150)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 572, column: 68)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 572, column: 17)
!379 = distinct !DILexicalBlock(scope: !328, file: !3, line: 557, column: 28)
!380 = !DILocation(line: 403, column: 42, scope: !313)
!381 = !DILocation(line: 403, column: 59, scope: !313)
!382 = !DILocation(line: 403, column: 72, scope: !313)
!383 = !DILocation(line: 403, column: 84, scope: !313)
!384 = !DILocation(line: 407, column: 9, scope: !313)
!385 = !DILocation(line: 408, column: 9, scope: !313)
!386 = !DILocation(line: 410, column: 5, scope: !313)
!387 = !DILocation(line: 413, column: 32, scope: !328)
!388 = !{!166, !166, i64 0}
!389 = !DILocation(line: 406, column: 9, scope: !313)
!390 = !DILocation(line: 415, column: 9, scope: !328)
!391 = !DILocation(line: 417, column: 46, scope: !327)
!392 = !DILocation(line: 417, column: 13, scope: !327)
!393 = !DILocation(line: 418, column: 39, scope: !327)
!394 = !DILocation(line: 418, column: 65, scope: !327)
!395 = !DILocation(line: 418, column: 13, scope: !327)
!396 = !DILocation(line: 419, column: 13, scope: !327)
!397 = !DILocation(line: 420, column: 13, scope: !327)
!398 = !DILocation(line: 429, column: 38, scope: !327)
!399 = !DILocation(line: 429, column: 36, scope: !327)
!400 = !DILocation(line: 430, column: 58, scope: !327)
!401 = !DILocation(line: 430, column: 69, scope: !327)
!402 = !DILocation(line: 430, column: 94, scope: !327)
!403 = !DILocalVariable(name: "pattributelist", arg: 1, scope: !404, file: !3, line: 262, type: !132)
!404 = distinct !DISubprogram(name: "sdp_parse_service_search_attribute_response", scope: !3, file: !3, line: 262, type: !405, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !132, !135, !132}
!407 = !{!403, !408, !409, !410, !411, !412, !416}
!408 = !DILocalVariable(name: "attributelistbytecnt", arg: 2, scope: !404, file: !3, line: 262, type: !135)
!409 = !DILocalVariable(name: "continue_state", arg: 3, scope: !404, file: !3, line: 262, type: !132)
!410 = !DILocalVariable(name: "bt_addr", scope: !404, file: !3, line: 264, type: !329)
!411 = !DILocalVariable(name: "searchPosition", scope: !404, file: !3, line: 265, type: !135)
!412 = !DILocalVariable(name: "type", scope: !413, file: !3, line: 282, type: !415)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 280, column: 73)
!414 = distinct !DILexicalBlock(scope: !404, file: !3, line: 280, column: 9)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "de_type_t", file: !105, line: 55, baseType: !104)
!416 = !DILocalVariable(name: "pos", scope: !413, file: !3, line: 286, type: !133)
!417 = !DILocation(line: 262, column: 61, scope: !404, inlinedAt: !418)
!418 = distinct !DILocation(line: 430, column: 13, scope: !327)
!419 = !DILocation(line: 262, column: 81, scope: !404, inlinedAt: !418)
!420 = !DILocation(line: 262, column: 107, scope: !404, inlinedAt: !418)
!421 = !DILocation(line: 264, column: 57, scope: !404, inlinedAt: !418)
!422 = !DILocation(line: 264, column: 83, scope: !404, inlinedAt: !418)
!423 = !DILocation(line: 264, column: 26, scope: !404, inlinedAt: !418)
!424 = !DILocation(line: 264, column: 16, scope: !404, inlinedAt: !418)
!425 = !DILocation(line: 265, column: 9, scope: !404, inlinedAt: !418)
!426 = !DILocation(line: 269, column: 9, scope: !427, inlinedAt: !418)
!427 = distinct !DILexicalBlock(scope: !404, file: !3, line: 269, column: 9)
!428 = !DILocation(line: 269, column: 35, scope: !427, inlinedAt: !418)
!429 = !DILocation(line: 269, column: 9, scope: !404, inlinedAt: !418)
!430 = !DILocation(line: 273, column: 14, scope: !431, inlinedAt: !418)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 273, column: 13)
!432 = distinct !DILexicalBlock(scope: !427, file: !3, line: 269, column: 70)
!433 = !DILocation(line: 273, column: 41, scope: !431, inlinedAt: !418)
!434 = !DILocation(line: 273, column: 45, scope: !435, inlinedAt: !418)
!435 = !DILexicalBlockFile(scope: !431, file: !3, discriminator: 1)
!436 = !DILocation(line: 273, column: 63, scope: !435, inlinedAt: !418)
!437 = !DILocation(line: 273, column: 69, scope: !435, inlinedAt: !418)
!438 = !DILocation(line: 273, column: 73, scope: !439, inlinedAt: !418)
!439 = !DILexicalBlockFile(scope: !431, file: !3, discriminator: 2)
!440 = !DILocation(line: 273, column: 91, scope: !439, inlinedAt: !418)
!441 = !DILocation(line: 273, column: 13, scope: !442, inlinedAt: !418)
!442 = !DILexicalBlockFile(scope: !432, file: !3, discriminator: 2)
!443 = !DILocation(line: 274, column: 61, scope: !444, inlinedAt: !418)
!444 = distinct !DILexicalBlock(scope: !431, file: !3, line: 273, column: 98)
!445 = !DILocation(line: 275, column: 9, scope: !444, inlinedAt: !418)
!446 = !DILocation(line: 275, column: 52, scope: !447, inlinedAt: !418)
!447 = !DILexicalBlockFile(scope: !448, file: !3, discriminator: 2)
!448 = distinct !DILexicalBlock(scope: !431, file: !3, line: 275, column: 20)
!449 = !DILocation(line: 275, column: 70, scope: !447, inlinedAt: !418)
!450 = !DILocation(line: 275, column: 20, scope: !439, inlinedAt: !418)
!451 = !DILocation(line: 276, column: 61, scope: !452, inlinedAt: !418)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 275, column: 77)
!453 = !DILocation(line: 277, column: 9, scope: !452, inlinedAt: !418)
!454 = !DILocation(line: 281, column: 57, scope: !413, inlinedAt: !418)
!455 = !DILocation(line: 282, column: 26, scope: !413, inlinedAt: !418)
!456 = !DILocation(line: 282, column: 19, scope: !413, inlinedAt: !418)
!457 = !DILocation(line: 283, column: 18, scope: !458, inlinedAt: !418)
!458 = distinct !DILexicalBlock(scope: !413, file: !3, line: 283, column: 13)
!459 = !DILocation(line: 283, column: 13, scope: !413, inlinedAt: !418)
!460 = !DILocation(line: 286, column: 18, scope: !413, inlinedAt: !418)
!461 = !DILocation(line: 287, column: 35, scope: !413, inlinedAt: !418)
!462 = !DILocation(line: 287, column: 61, scope: !413, inlinedAt: !418)
!463 = !DILocation(line: 287, column: 9, scope: !413, inlinedAt: !418)
!464 = !DILocation(line: 288, column: 13, scope: !465, inlinedAt: !418)
!465 = distinct !DILexicalBlock(scope: !413, file: !3, line: 288, column: 13)
!466 = !DILocation(line: 288, column: 13, scope: !413, inlinedAt: !418)
!467 = !DILocation(line: 290, column: 45, scope: !468, inlinedAt: !418)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 288, column: 22)
!469 = !DILocation(line: 290, column: 66, scope: !468, inlinedAt: !418)
!470 = !DILocation(line: 290, column: 13, scope: !468, inlinedAt: !418)
!471 = !DILocation(line: 291, column: 9, scope: !468, inlinedAt: !418)
!472 = !DILocation(line: 292, column: 13, scope: !473, inlinedAt: !418)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 292, column: 13)
!474 = distinct !DILexicalBlock(scope: !465, file: !3, line: 291, column: 16)
!475 = !DILocation(line: 292, column: 13, scope: !474, inlinedAt: !418)
!476 = !DILocation(line: 292, column: 13, scope: !477, inlinedAt: !418)
!477 = !DILexicalBlockFile(scope: !473, file: !3, discriminator: 1)
!478 = !DILocation(line: 294, column: 9, scope: !413, inlinedAt: !418)
!479 = !DILocation(line: 297, column: 9, scope: !480, inlinedAt: !418)
!480 = distinct !DILexicalBlock(scope: !404, file: !3, line: 297, column: 9)
!481 = !DILocation(line: 298, column: 61, scope: !482, inlinedAt: !418)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 298, column: 13)
!483 = distinct !DILexicalBlock(scope: !480, file: !3, line: 297, column: 31)
!484 = !DILocation(line: 297, column: 9, scope: !404, inlinedAt: !418)
!485 = !DILocation(line: 299, column: 17, scope: !486, inlinedAt: !418)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 299, column: 17)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 298, column: 76)
!488 = !DILocation(line: 299, column: 30, scope: !486, inlinedAt: !418)
!489 = !DILocation(line: 299, column: 17, scope: !487, inlinedAt: !418)
!490 = !DILocation(line: 301, column: 32, scope: !491, inlinedAt: !418)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 299, column: 39)
!492 = !DILocation(line: 301, column: 30, scope: !491, inlinedAt: !418)
!493 = !DILocation(line: 302, column: 13, scope: !491, inlinedAt: !418)
!494 = !DILocation(line: 318, column: 88, scope: !495, inlinedAt: !418)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 313, column: 20)
!496 = distinct !DILexicalBlock(scope: !487, file: !3, line: 304, column: 17)
!497 = !DILocation(line: 304, column: 17, scope: !496, inlinedAt: !418)
!498 = !DILocation(line: 304, column: 35, scope: !496, inlinedAt: !418)
!499 = !DILocation(line: 304, column: 17, scope: !487, inlinedAt: !418)
!500 = !DILocation(line: 306, column: 34, scope: !501, inlinedAt: !418)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 306, column: 21)
!502 = distinct !DILexicalBlock(scope: !496, file: !3, line: 304, column: 41)
!503 = !DILocation(line: 306, column: 39, scope: !504, inlinedAt: !418)
!504 = !DILexicalBlockFile(scope: !501, file: !3, discriminator: 1)
!505 = !{!196, !196, i64 0}
!506 = !DILocation(line: 306, column: 52, scope: !504, inlinedAt: !418)
!507 = !DILocation(line: 306, column: 76, scope: !504, inlinedAt: !418)
!508 = !DILocation(line: 306, column: 21, scope: !509, inlinedAt: !418)
!509 = !DILexicalBlockFile(scope: !502, file: !3, discriminator: 1)
!510 = !DILocation(line: 307, column: 29, scope: !511, inlinedAt: !418)
!511 = distinct !DILexicalBlock(scope: !501, file: !3, line: 306, column: 85)
!512 = !DILocation(line: 307, column: 21, scope: !511, inlinedAt: !418)
!513 = !DILocation(line: 308, column: 34, scope: !511, inlinedAt: !418)
!514 = !DILocation(line: 309, column: 17, scope: !511, inlinedAt: !418)
!515 = !DILocation(line: 311, column: 59, scope: !502, inlinedAt: !418)
!516 = !DILocation(line: 311, column: 85, scope: !502, inlinedAt: !418)
!517 = !DILocation(line: 311, column: 17, scope: !502, inlinedAt: !418)
!518 = !DILocation(line: 312, column: 17, scope: !502, inlinedAt: !418)
!519 = !DILocation(line: 314, column: 34, scope: !520, inlinedAt: !418)
!520 = distinct !DILexicalBlock(scope: !495, file: !3, line: 314, column: 21)
!521 = !DILocation(line: 314, column: 39, scope: !522, inlinedAt: !418)
!522 = !DILexicalBlockFile(scope: !520, file: !3, discriminator: 1)
!523 = !DILocation(line: 314, column: 52, scope: !522, inlinedAt: !418)
!524 = !DILocation(line: 314, column: 76, scope: !522, inlinedAt: !418)
!525 = !DILocation(line: 314, column: 21, scope: !526, inlinedAt: !418)
!526 = !DILexicalBlockFile(scope: !495, file: !3, discriminator: 1)
!527 = !DILocation(line: 315, column: 29, scope: !528, inlinedAt: !418)
!528 = distinct !DILexicalBlock(scope: !520, file: !3, line: 314, column: 85)
!529 = !DILocation(line: 315, column: 21, scope: !528, inlinedAt: !418)
!530 = !DILocation(line: 316, column: 34, scope: !528, inlinedAt: !418)
!531 = !DILocation(line: 317, column: 17, scope: !528, inlinedAt: !418)
!532 = !DILocation(line: 318, column: 57, scope: !495, inlinedAt: !418)
!533 = !DILocation(line: 318, column: 71, scope: !495, inlinedAt: !418)
!534 = !DILocation(line: 318, column: 17, scope: !526, inlinedAt: !418)
!535 = !DILocation(line: 319, column: 38, scope: !536, inlinedAt: !418)
!536 = distinct !DILexicalBlock(scope: !495, file: !3, line: 319, column: 21)
!537 = !DILocation(line: 319, column: 21, scope: !536, inlinedAt: !418)
!538 = !DILocation(line: 319, column: 52, scope: !536, inlinedAt: !418)
!539 = !DILocation(line: 319, column: 21, scope: !495, inlinedAt: !418)
!540 = !DILocation(line: 321, column: 25, scope: !541, inlinedAt: !418)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 321, column: 25)
!542 = distinct !DILexicalBlock(scope: !536, file: !3, line: 319, column: 58)
!543 = !DILocation(line: 321, column: 45, scope: !541, inlinedAt: !418)
!544 = !{!545, !196, i64 12}
!545 = !{!"_stack_config", !165, i64 0, !196, i64 4, !196, i64 6, !196, i64 8, !196, i64 10, !196, i64 12, !166, i64 14, !166, i64 15, !166, i64 16, !166, i64 17, !166, i64 17, !166, i64 17, !166, i64 17, !166, i64 18, !166, i64 18, !166, i64 18, !166, i64 18, !166, i64 18, !166, i64 18, !166, i64 18, !166, i64 18, !166, i64 19, !166, i64 19, !166, i64 19, !166, i64 19, !166, i64 19, !166, i64 19, !166, i64 19, !166, i64 19, !166, i64 20, !166, i64 20, !166, i64 20, !166, i64 21, !166, i64 22, !166, i64 23, !166, i64 24, !166, i64 25, !166, i64 31, !166, i64 31}
!546 = !DILocation(line: 330, column: 17, scope: !542, inlinedAt: !418)
!547 = !DILocation(line: 331, column: 54, scope: !548, inlinedAt: !418)
!548 = distinct !DILexicalBlock(scope: !536, file: !3, line: 330, column: 24)
!549 = !DILocation(line: 331, column: 68, scope: !548, inlinedAt: !418)
!550 = !DILocation(line: 332, column: 55, scope: !548, inlinedAt: !418)
!551 = !DILocation(line: 332, column: 81, scope: !548, inlinedAt: !418)
!552 = !DILocation(line: 331, column: 21, scope: !548, inlinedAt: !418)
!553 = !DILocation(line: 334, column: 21, scope: !554, inlinedAt: !418)
!554 = distinct !DILexicalBlock(scope: !495, file: !3, line: 334, column: 21)
!555 = !DILocation(line: 334, column: 21, scope: !495, inlinedAt: !418)
!556 = !DILocation(line: 336, column: 21, scope: !557, inlinedAt: !418)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 334, column: 35)
!558 = !DILocation(line: 337, column: 34, scope: !557, inlinedAt: !418)
!559 = !DILocation(line: 338, column: 34, scope: !557, inlinedAt: !418)
!560 = !DILocation(line: 339, column: 17, scope: !557, inlinedAt: !418)
!561 = !DILocation(line: 340, column: 17, scope: !562, inlinedAt: !418)
!562 = distinct !DILexicalBlock(scope: !495, file: !3, line: 340, column: 17)
!563 = !DILocation(line: 340, column: 17, scope: !495, inlinedAt: !418)
!564 = !DILocation(line: 340, column: 17, scope: !565, inlinedAt: !418)
!565 = !DILexicalBlockFile(scope: !562, file: !3, discriminator: 1)
!566 = !DILocation(line: 342, column: 18, scope: !567, inlinedAt: !418)
!567 = distinct !DILexicalBlock(scope: !487, file: !3, line: 342, column: 17)
!568 = !DILocation(line: 342, column: 17, scope: !487, inlinedAt: !418)
!569 = !DILocation(line: 221, column: 9, scope: !570, inlinedAt: !572)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 221, column: 9)
!571 = distinct !DISubprogram(name: "sdp_emitter_choose_reconnect_type", scope: !3, file: !3, line: 218, type: !209, isLocal: true, isDefinition: true, scopeLine: 219, isOptimized: true, unit: !2, variables: !211)
!572 = distinct !DILocation(line: 344, column: 17, scope: !573, inlinedAt: !418)
!573 = distinct !DILexicalBlock(scope: !567, file: !3, line: 342, column: 61)
!574 = !DILocation(line: 221, column: 9, scope: !571, inlinedAt: !572)
!575 = !DILocation(line: 222, column: 13, scope: !576, inlinedAt: !572)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 222, column: 13)
!577 = distinct !DILexicalBlock(scope: !570, file: !3, line: 221, column: 57)
!578 = !DILocation(line: 222, column: 33, scope: !576, inlinedAt: !572)
!579 = !DILocation(line: 222, column: 60, scope: !576, inlinedAt: !572)
!580 = !DILocation(line: 222, column: 13, scope: !577, inlinedAt: !572)
!581 = !DILocation(line: 223, column: 13, scope: !582, inlinedAt: !572)
!582 = distinct !DILexicalBlock(scope: !576, file: !3, line: 222, column: 81)
!583 = !DILocation(line: 223, column: 39, scope: !582, inlinedAt: !572)
!584 = !DILocation(line: 223, column: 61, scope: !582, inlinedAt: !572)
!585 = !DILocation(line: 224, column: 13, scope: !582, inlinedAt: !572)
!586 = !DILocation(line: 238, column: 9, scope: !587, inlinedAt: !572)
!587 = distinct !DILexicalBlock(scope: !571, file: !3, line: 238, column: 9)
!588 = !DILocation(line: 238, column: 9, scope: !571, inlinedAt: !572)
!589 = !DILocation(line: 240, column: 13, scope: !590, inlinedAt: !572)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 240, column: 13)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 238, column: 57)
!592 = !DILocation(line: 240, column: 33, scope: !590, inlinedAt: !572)
!593 = !DILocation(line: 240, column: 60, scope: !590, inlinedAt: !572)
!594 = !DILocation(line: 240, column: 13, scope: !591, inlinedAt: !572)
!595 = !DILocation(line: 241, column: 13, scope: !596, inlinedAt: !572)
!596 = distinct !DILexicalBlock(scope: !590, file: !3, line: 240, column: 81)
!597 = !DILocation(line: 241, column: 39, scope: !596, inlinedAt: !572)
!598 = !DILocation(line: 241, column: 61, scope: !596, inlinedAt: !572)
!599 = !DILocation(line: 242, column: 13, scope: !596, inlinedAt: !572)
!600 = !DILocation(line: 245, column: 9, scope: !601, inlinedAt: !572)
!601 = distinct !DILexicalBlock(scope: !571, file: !3, line: 245, column: 9)
!602 = !DILocation(line: 245, column: 9, scope: !571, inlinedAt: !572)
!603 = !DILocation(line: 247, column: 13, scope: !604, inlinedAt: !572)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 247, column: 13)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 245, column: 58)
!606 = !DILocation(line: 247, column: 33, scope: !604, inlinedAt: !572)
!607 = !DILocation(line: 247, column: 60, scope: !604, inlinedAt: !572)
!608 = !DILocation(line: 247, column: 13, scope: !605, inlinedAt: !572)
!609 = !DILocation(line: 248, column: 13, scope: !610, inlinedAt: !572)
!610 = distinct !DILexicalBlock(scope: !604, file: !3, line: 247, column: 85)
!611 = !DILocation(line: 248, column: 39, scope: !610, inlinedAt: !572)
!612 = !DILocation(line: 248, column: 61, scope: !610, inlinedAt: !572)
!613 = !DILocation(line: 249, column: 13, scope: !610, inlinedAt: !572)
!614 = !DILocation(line: 252, column: 60, scope: !615, inlinedAt: !572)
!615 = distinct !DILexicalBlock(scope: !605, file: !3, line: 252, column: 13)
!616 = !DILocation(line: 252, column: 13, scope: !605, inlinedAt: !572)
!617 = !DILocation(line: 253, column: 13, scope: !618, inlinedAt: !572)
!618 = distinct !DILexicalBlock(scope: !615, file: !3, line: 252, column: 87)
!619 = !DILocation(line: 253, column: 39, scope: !618, inlinedAt: !572)
!620 = !DILocation(line: 253, column: 61, scope: !618, inlinedAt: !572)
!621 = !DILocation(line: 254, column: 13, scope: !618, inlinedAt: !572)
!622 = !DILocation(line: 257, column: 31, scope: !571, inlinedAt: !572)
!623 = !DILocation(line: 257, column: 57, scope: !571, inlinedAt: !572)
!624 = !DILocation(line: 257, column: 5, scope: !571, inlinedAt: !572)
!625 = !DILocation(line: 258, column: 1, scope: !571, inlinedAt: !572)
!626 = !DILocation(line: 346, column: 43, scope: !627, inlinedAt: !418)
!627 = distinct !DILexicalBlock(scope: !567, file: !3, line: 345, column: 20)
!628 = !DILocation(line: 346, column: 69, scope: !627, inlinedAt: !418)
!629 = !DILocation(line: 346, column: 17, scope: !627, inlinedAt: !418)
!630 = !DILocation(line: 348, column: 17, scope: !631, inlinedAt: !418)
!631 = distinct !DILexicalBlock(scope: !487, file: !3, line: 348, column: 17)
!632 = !DILocation(line: 348, column: 17, scope: !487, inlinedAt: !418)
!633 = !DILocation(line: 349, column: 17, scope: !634, inlinedAt: !418)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 348, column: 26)
!635 = !DILocation(line: 349, column: 37, scope: !634, inlinedAt: !418)
!636 = !DILocation(line: 349, column: 57, scope: !634, inlinedAt: !418)
!637 = !DILocation(line: 351, column: 57, scope: !634, inlinedAt: !418)
!638 = !DILocation(line: 351, column: 37, scope: !634, inlinedAt: !418)
!639 = !DILocation(line: 352, column: 37, scope: !634, inlinedAt: !418)
!640 = !DILocation(line: 350, column: 17, scope: !634, inlinedAt: !418)
!641 = !DILocation(line: 353, column: 13, scope: !634, inlinedAt: !418)
!642 = !DILocation(line: 358, column: 9, scope: !643, inlinedAt: !418)
!643 = distinct !DILexicalBlock(scope: !404, file: !3, line: 357, column: 9)
!644 = !DILocation(line: 363, column: 13, scope: !645, inlinedAt: !418)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 363, column: 13)
!646 = distinct !DILexicalBlock(scope: !643, file: !3, line: 362, column: 85)
!647 = !DILocation(line: 363, column: 31, scope: !645, inlinedAt: !418)
!648 = !DILocation(line: 363, column: 39, scope: !645, inlinedAt: !418)
!649 = !DILocation(line: 367, column: 35, scope: !650, inlinedAt: !418)
!650 = !DILexicalBlockFile(scope: !651, file: !3, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !645, file: !3, line: 366, column: 16)
!652 = !DILocation(line: 367, column: 13, scope: !650, inlinedAt: !418)
!653 = !DILocation(line: 368, column: 51, scope: !654, inlinedAt: !418)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 368, column: 21)
!655 = distinct !DILexicalBlock(scope: !651, file: !3, line: 367, column: 59)
!656 = !DILocation(line: 363, column: 42, scope: !657, inlinedAt: !418)
!657 = !DILexicalBlockFile(scope: !645, file: !3, discriminator: 1)
!658 = !DILocation(line: 363, column: 60, scope: !657, inlinedAt: !418)
!659 = !DILocation(line: 363, column: 13, scope: !660, inlinedAt: !418)
!660 = !DILexicalBlockFile(scope: !646, file: !3, discriminator: 1)
!661 = !DILocation(line: 365, column: 39, scope: !662, inlinedAt: !418)
!662 = distinct !DILexicalBlock(scope: !645, file: !3, line: 363, column: 68)
!663 = !DILocation(line: 365, column: 58, scope: !662, inlinedAt: !418)
!664 = !DILocation(line: 366, column: 9, scope: !662, inlinedAt: !418)
!665 = !DILocation(line: 368, column: 21, scope: !654, inlinedAt: !418)
!666 = !DILocation(line: 368, column: 56, scope: !654, inlinedAt: !418)
!667 = !DILocation(line: 369, column: 21, scope: !654, inlinedAt: !418)
!668 = !DILocation(line: 369, column: 54, scope: !669, inlinedAt: !418)
!669 = !DILexicalBlockFile(scope: !654, file: !3, discriminator: 1)
!670 = !DILocation(line: 369, column: 24, scope: !669, inlinedAt: !418)
!671 = !DILocation(line: 369, column: 59, scope: !669, inlinedAt: !418)
!672 = !DILocation(line: 370, column: 21, scope: !654, inlinedAt: !418)
!673 = !DILocation(line: 370, column: 54, scope: !669, inlinedAt: !418)
!674 = !DILocation(line: 370, column: 24, scope: !669, inlinedAt: !418)
!675 = !DILocation(line: 370, column: 59, scope: !669, inlinedAt: !418)
!676 = !DILocation(line: 371, column: 21, scope: !654, inlinedAt: !418)
!677 = !DILocation(line: 371, column: 24, scope: !669, inlinedAt: !418)
!678 = !DILocation(line: 371, column: 55, scope: !669, inlinedAt: !418)
!679 = !DILocation(line: 368, column: 21, scope: !680, inlinedAt: !418)
!680 = !DILexicalBlockFile(scope: !655, file: !3, discriminator: 1)
!681 = !DILocation(line: 374, column: 32, scope: !655, inlinedAt: !418)
!682 = distinct !{!682, !683, !684}
!683 = !DILocation(line: 367, column: 13, scope: !651)
!684 = !DILocation(line: 375, column: 13, scope: !651)
!685 = !DILocation(line: 377, column: 79, scope: !686, inlinedAt: !418)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 376, column: 56)
!687 = distinct !DILexicalBlock(scope: !651, file: !3, line: 376, column: 17)
!688 = !DILocation(line: 377, column: 64, scope: !686, inlinedAt: !418)
!689 = !DILocation(line: 377, column: 43, scope: !686, inlinedAt: !418)
!690 = !DILocation(line: 377, column: 62, scope: !686, inlinedAt: !418)
!691 = !DILocation(line: 378, column: 13, scope: !686, inlinedAt: !418)
!692 = !DILocation(line: 382, column: 14, scope: !693, inlinedAt: !418)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 382, column: 13)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 381, column: 79)
!695 = distinct !DILexicalBlock(scope: !643, file: !3, line: 381, column: 16)
!696 = !DILocation(line: 382, column: 41, scope: !693, inlinedAt: !418)
!697 = !DILocation(line: 382, column: 45, scope: !698, inlinedAt: !418)
!698 = !DILexicalBlockFile(scope: !693, file: !3, discriminator: 1)
!699 = !DILocation(line: 382, column: 63, scope: !698, inlinedAt: !418)
!700 = !DILocation(line: 382, column: 69, scope: !698, inlinedAt: !418)
!701 = !DILocation(line: 382, column: 73, scope: !702, inlinedAt: !418)
!702 = !DILexicalBlockFile(scope: !693, file: !3, discriminator: 2)
!703 = !DILocation(line: 382, column: 91, scope: !702, inlinedAt: !418)
!704 = !DILocation(line: 382, column: 13, scope: !705, inlinedAt: !418)
!705 = !DILexicalBlockFile(scope: !694, file: !3, discriminator: 2)
!706 = !DILocation(line: 383, column: 61, scope: !707, inlinedAt: !418)
!707 = distinct !DILexicalBlock(scope: !693, file: !3, line: 382, column: 98)
!708 = !DILocation(line: 384, column: 9, scope: !707, inlinedAt: !418)
!709 = !DILocation(line: 384, column: 52, scope: !710, inlinedAt: !418)
!710 = !DILexicalBlockFile(scope: !711, file: !3, discriminator: 2)
!711 = distinct !DILexicalBlock(scope: !693, file: !3, line: 384, column: 20)
!712 = !DILocation(line: 384, column: 70, scope: !710, inlinedAt: !418)
!713 = !DILocation(line: 384, column: 20, scope: !702, inlinedAt: !418)
!714 = !DILocation(line: 385, column: 61, scope: !715, inlinedAt: !418)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 384, column: 77)
!716 = !DILocation(line: 386, column: 9, scope: !715, inlinedAt: !418)
!717 = !DILocation(line: 432, column: 69, scope: !326)
!718 = !DILocation(line: 432, column: 95, scope: !326)
!719 = !DILocation(line: 432, column: 38, scope: !326)
!720 = !DILocation(line: 432, column: 28, scope: !326)
!721 = !DILocation(line: 434, column: 21, scope: !342)
!722 = !DILocation(line: 434, column: 21, scope: !326)
!723 = !DILocation(line: 435, column: 25, scope: !340)
!724 = !DILocation(line: 435, column: 51, scope: !340)
!725 = !DILocation(line: 435, column: 90, scope: !340)
!726 = !DILocation(line: 435, column: 119, scope: !727)
!727 = !DILexicalBlockFile(scope: !340, file: !3, discriminator: 1)
!728 = !DILocation(line: 435, column: 93, scope: !727)
!729 = !DILocation(line: 435, column: 25, scope: !730)
!730 = !DILexicalBlockFile(scope: !341, file: !3, discriminator: 1)
!731 = !DILocation(line: 437, column: 25, scope: !732)
!732 = distinct !DILexicalBlock(scope: !340, file: !3, line: 435, column: 139)
!733 = !DILocation(line: 443, column: 21, scope: !732)
!734 = !DILocation(line: 445, column: 55, scope: !337)
!735 = !DILocation(line: 445, column: 29, scope: !337)
!736 = !DILocation(line: 445, column: 29, scope: !338)
!737 = !DILocation(line: 448, column: 29, scope: !336)
!738 = !DILocation(line: 449, column: 40, scope: !336)
!739 = !DILocation(line: 449, column: 46, scope: !336)
!740 = !{!741, !166, i64 8}
!741 = !{!"", !166, i64 0, !166, i64 8, !166, i64 12, !166, i64 16}
!742 = !DILocation(line: 450, column: 40, scope: !336)
!743 = !DILocation(line: 450, column: 46, scope: !336)
!744 = !{!741, !166, i64 12}
!745 = !DILocation(line: 451, column: 74, scope: !336)
!746 = !DILocation(line: 452, column: 29, scope: !336)
!747 = !DILocation(line: 453, column: 59, scope: !748)
!748 = distinct !DILexicalBlock(scope: !336, file: !3, line: 453, column: 33)
!749 = !DILocation(line: 453, column: 81, scope: !748)
!750 = !DILocation(line: 453, column: 33, scope: !336)
!751 = !DILocation(line: 454, column: 57, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 454, column: 37)
!753 = distinct !DILexicalBlock(scope: !748, file: !3, line: 453, column: 97)
!754 = !{!755, !169, i64 0}
!755 = !{!"profile_cmd_handle", !169, i64 0, !169, i64 4, !169, i64 8, !169, i64 12, !169, i64 16, !169, i64 20, !169, i64 24, !169, i64 28, !169, i64 32, !169, i64 36, !169, i64 40}
!756 = !DILocation(line: 454, column: 37, scope: !752)
!757 = !DILocation(line: 454, column: 37, scope: !753)
!758 = !DILocation(line: 455, column: 43, scope: !759)
!759 = distinct !DILexicalBlock(scope: !752, file: !3, line: 454, column: 71)
!760 = !DILocation(line: 456, column: 33, scope: !759)
!761 = !DILocation(line: 458, column: 33, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 458, column: 33)
!763 = distinct !DILexicalBlock(scope: !748, file: !3, line: 457, column: 36)
!764 = !DILocation(line: 458, column: 33, scope: !763)
!765 = !DILocation(line: 458, column: 33, scope: !766)
!766 = !DILexicalBlockFile(scope: !762, file: !3, discriminator: 1)
!767 = !DILocation(line: 459, column: 57, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !3, line: 459, column: 37)
!769 = !{!755, !169, i64 24}
!770 = !DILocation(line: 459, column: 37, scope: !768)
!771 = !DILocation(line: 459, column: 37, scope: !763)
!772 = !DILocation(line: 460, column: 43, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 459, column: 74)
!774 = !DILocation(line: 461, column: 33, scope: !773)
!775 = !DILocation(line: 464, column: 37, scope: !776)
!776 = distinct !DILexicalBlock(scope: !336, file: !3, line: 464, column: 33)
!777 = !DILocation(line: 464, column: 33, scope: !336)
!778 = !DILocation(line: 465, column: 59, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !3, line: 464, column: 42)
!780 = !DILocation(line: 465, column: 85, scope: !779)
!781 = !DILocation(line: 465, column: 33, scope: !779)
!782 = !DILocation(line: 466, column: 29, scope: !779)
!783 = !DILocation(line: 467, column: 25, scope: !337)
!784 = !DILocation(line: 467, column: 25, scope: !336)
!785 = !DILocation(line: 469, column: 33, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 469, column: 33)
!787 = distinct !DILexicalBlock(scope: !337, file: !3, line: 467, column: 32)
!788 = !DILocation(line: 469, column: 49, scope: !786)
!789 = !{!790, !169, i64 20}
!790 = !{!"user_interface_handler", !169, i64 0, !169, i64 4, !169, i64 8, !169, i64 12, !169, i64 16, !169, i64 20, !169, i64 24, !169, i64 28, !169, i64 32, !169, i64 36, !169, i64 40, !169, i64 44, !169, i64 48, !169, i64 52, !169, i64 56}
!791 = !DILocation(line: 469, column: 33, scope: !787)
!792 = !DILocation(line: 470, column: 73, scope: !793)
!793 = distinct !DILexicalBlock(scope: !786, file: !3, line: 469, column: 74)
!794 = !DILocation(line: 470, column: 33, scope: !793)
!795 = !DILocation(line: 471, column: 29, scope: !793)
!796 = !DILocation(line: 472, column: 33, scope: !797)
!797 = distinct !DILexicalBlock(scope: !787, file: !3, line: 472, column: 33)
!798 = !DILocation(line: 472, column: 33, scope: !787)
!799 = !DILocation(line: 473, column: 59, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !3, line: 472, column: 82)
!801 = !DILocation(line: 473, column: 81, scope: !800)
!802 = !DILocation(line: 474, column: 101, scope: !800)
!803 = !DILocation(line: 474, column: 33, scope: !800)
!804 = !DILocation(line: 475, column: 29, scope: !800)
!805 = !DILocation(line: 476, column: 85, scope: !806)
!806 = distinct !DILexicalBlock(scope: !797, file: !3, line: 475, column: 36)
!807 = !DILocation(line: 476, column: 33, scope: !806)
!808 = !DILocation(line: 482, column: 49, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 482, column: 29)
!810 = distinct !DILexicalBlock(scope: !367, file: !3, line: 480, column: 101)
!811 = !{!755, !169, i64 20}
!812 = !DILocation(line: 482, column: 29, scope: !809)
!813 = !DILocation(line: 482, column: 29, scope: !810)
!814 = !DILocation(line: 483, column: 63, scope: !815)
!815 = distinct !DILexicalBlock(scope: !809, file: !3, line: 482, column: 64)
!816 = !DILocation(line: 483, column: 29, scope: !815)
!817 = !DILocation(line: 484, column: 25, scope: !815)
!818 = !DILocation(line: 488, column: 55, scope: !364)
!819 = !DILocation(line: 488, column: 29, scope: !364)
!820 = !DILocation(line: 488, column: 29, scope: !365)
!821 = !DILocation(line: 490, column: 29, scope: !363)
!822 = !DILocation(line: 491, column: 40, scope: !363)
!823 = !DILocation(line: 491, column: 59, scope: !363)
!824 = !{!825, !166, i64 6}
!825 = !{!"", !166, i64 0, !166, i64 6, !165, i64 8, !165, i64 12, !169, i64 16}
!826 = !DILocation(line: 492, column: 40, scope: !363)
!827 = !DILocation(line: 492, column: 45, scope: !363)
!828 = !{!825, !165, i64 8}
!829 = !DILocation(line: 493, column: 29, scope: !363)
!830 = !DILocation(line: 494, column: 53, scope: !831)
!831 = distinct !DILexicalBlock(scope: !363, file: !3, line: 494, column: 33)
!832 = !{!755, !169, i64 8}
!833 = !DILocation(line: 494, column: 33, scope: !831)
!834 = !DILocation(line: 494, column: 33, scope: !363)
!835 = !DILocation(line: 495, column: 33, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !3, line: 494, column: 67)
!837 = !DILocation(line: 496, column: 29, scope: !836)
!838 = !DILocation(line: 497, column: 25, scope: !364)
!839 = !DILocation(line: 497, column: 25, scope: !363)
!840 = !DILocation(line: 500, column: 81, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 500, column: 33)
!842 = distinct !DILexicalBlock(scope: !364, file: !3, line: 499, column: 25)
!843 = !DILocation(line: 500, column: 33, scope: !842)
!844 = !DILocation(line: 501, column: 33, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !3, line: 500, column: 104)
!846 = !DILocation(line: 502, column: 33, scope: !845)
!847 = !DILocation(line: 502, column: 59, scope: !845)
!848 = !DILocation(line: 502, column: 81, scope: !845)
!849 = !DILocation(line: 503, column: 101, scope: !845)
!850 = !DILocation(line: 503, column: 33, scope: !845)
!851 = !DILocation(line: 504, column: 29, scope: !845)
!852 = !DILocation(line: 505, column: 85, scope: !853)
!853 = distinct !DILexicalBlock(scope: !841, file: !3, line: 504, column: 36)
!854 = !DILocation(line: 505, column: 33, scope: !853)
!855 = !DILocation(line: 510, column: 49, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 510, column: 29)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 509, column: 96)
!858 = distinct !DILexicalBlock(scope: !366, file: !3, line: 509, column: 32)
!859 = !{!755, !169, i64 4}
!860 = !DILocation(line: 510, column: 29, scope: !856)
!861 = !DILocation(line: 510, column: 29, scope: !857)
!862 = !DILocation(line: 511, column: 62, scope: !863)
!863 = distinct !DILexicalBlock(scope: !856, file: !3, line: 510, column: 63)
!864 = !DILocation(line: 511, column: 29, scope: !863)
!865 = !DILocation(line: 512, column: 25, scope: !863)
!866 = !DILocation(line: 515, column: 49, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 515, column: 29)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 514, column: 93)
!869 = distinct !DILexicalBlock(scope: !858, file: !3, line: 514, column: 32)
!870 = !{!755, !169, i64 36}
!871 = !DILocation(line: 515, column: 29, scope: !867)
!872 = !DILocation(line: 515, column: 29, scope: !868)
!873 = !DILocation(line: 516, column: 62, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !3, line: 515, column: 63)
!875 = !DILocation(line: 516, column: 29, scope: !874)
!876 = !DILocation(line: 517, column: 25, scope: !874)
!877 = !DILocation(line: 535, column: 33, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 535, column: 33)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 534, column: 25)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 518, column: 103)
!881 = distinct !DILexicalBlock(scope: !869, file: !3, line: 518, column: 32)
!882 = !DILocation(line: 535, column: 49, scope: !878)
!883 = !DILocation(line: 535, column: 33, scope: !879)
!884 = !DILocation(line: 536, column: 73, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 535, column: 74)
!886 = !DILocation(line: 536, column: 33, scope: !885)
!887 = !DILocation(line: 537, column: 29, scope: !885)
!888 = !DILocation(line: 538, column: 55, scope: !879)
!889 = !DILocation(line: 538, column: 81, scope: !879)
!890 = !DILocation(line: 538, column: 29, scope: !879)
!891 = !DILocation(line: 540, column: 21, scope: !880)
!892 = !DILocation(line: 541, column: 25, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 541, column: 25)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 540, column: 95)
!895 = distinct !DILexicalBlock(scope: !881, file: !3, line: 540, column: 32)
!896 = !DILocation(line: 541, column: 25, scope: !894)
!897 = !DILocation(line: 541, column: 25, scope: !898)
!898 = !DILexicalBlockFile(scope: !893, file: !3, discriminator: 1)
!899 = !DILocation(line: 543, column: 77, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !3, line: 542, column: 28)
!901 = !DILocation(line: 543, column: 25, scope: !900)
!902 = !DILocation(line: 414, column: 26, scope: !328)
!903 = !DILocation(line: 551, column: 13, scope: !327)
!904 = !DILocation(line: 552, column: 13, scope: !327)
!905 = !DILocation(line: 557, column: 17, scope: !328)
!906 = !DILocation(line: 557, column: 9, scope: !328)
!907 = !DILocation(line: 563, column: 13, scope: !379)
!908 = !DILocation(line: 563, column: 39, scope: !379)
!909 = !DILocation(line: 563, column: 65, scope: !379)
!910 = !DILocation(line: 564, column: 17, scope: !911)
!911 = distinct !DILexicalBlock(scope: !379, file: !3, line: 564, column: 17)
!912 = !DILocation(line: 564, column: 17, scope: !379)
!913 = !DILocation(line: 566, column: 43, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 564, column: 28)
!915 = !DILocation(line: 566, column: 62, scope: !914)
!916 = !DILocation(line: 567, column: 13, scope: !914)
!917 = !DILocation(line: 572, column: 17, scope: !378)
!918 = !DILocation(line: 572, column: 43, scope: !378)
!919 = !DILocation(line: 572, column: 62, scope: !378)
!920 = !DILocation(line: 572, column: 17, scope: !379)
!921 = !DILocation(line: 574, column: 62, scope: !377)
!922 = !DILocation(line: 576, column: 47, scope: !923)
!923 = distinct !DILexicalBlock(scope: !377, file: !3, line: 576, column: 21)
!924 = !DILocation(line: 576, column: 21, scope: !377)
!925 = !DILocation(line: 578, column: 25, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 577, column: 91)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 577, column: 25)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 576, column: 75)
!929 = !DILocation(line: 580, column: 21, scope: !926)
!930 = !DILocation(line: 582, column: 25, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 580, column: 96)
!932 = distinct !DILexicalBlock(scope: !927, file: !3, line: 580, column: 32)
!933 = !DILocation(line: 583, column: 21, scope: !931)
!934 = !DILocation(line: 584, column: 33, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 583, column: 103)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 583, column: 32)
!937 = !DILocation(line: 585, column: 21, scope: !935)
!938 = !DILocation(line: 586, column: 33, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 585, column: 103)
!940 = distinct !DILexicalBlock(scope: !936, file: !3, line: 585, column: 32)
!941 = !DILocation(line: 587, column: 21, scope: !939)
!942 = !DILocation(line: 588, column: 25, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 587, column: 93)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 587, column: 32)
!945 = !DILocation(line: 589, column: 21, scope: !943)
!946 = !DILocation(line: 592, column: 25, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 592, column: 25)
!948 = distinct !DILexicalBlock(scope: !923, file: !3, line: 590, column: 24)
!949 = !DILocation(line: 592, column: 45, scope: !947)
!950 = !DILocation(line: 592, column: 25, scope: !948)
!951 = !DILocation(line: 597, column: 73, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !3, line: 592, column: 61)
!953 = !DILocation(line: 598, column: 33, scope: !952)
!954 = !DILocation(line: 600, column: 21, scope: !952)
!955 = !DILocation(line: 600, column: 32, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !3, discriminator: 1)
!957 = distinct !DILexicalBlock(scope: !947, file: !3, line: 600, column: 32)
!958 = !DILocation(line: 600, column: 32, scope: !959)
!959 = !DILexicalBlockFile(scope: !947, file: !3, discriminator: 1)
!960 = !DILocation(line: 601, column: 73, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 600, column: 74)
!962 = !DILocation(line: 602, column: 33, scope: !961)
!963 = !DILocation(line: 603, column: 21, scope: !961)
!964 = !DILocation(line: 603, column: 32, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !3, discriminator: 1)
!966 = distinct !DILexicalBlock(scope: !957, file: !3, line: 603, column: 32)
!967 = !DILocation(line: 603, column: 32, scope: !956)
!968 = !DILocation(line: 604, column: 25, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 603, column: 80)
!970 = !DILocation(line: 604, column: 51, scope: !969)
!971 = !DILocation(line: 604, column: 73, scope: !969)
!972 = !DILocation(line: 605, column: 101, scope: !969)
!973 = !DILocation(line: 605, column: 33, scope: !969)
!974 = !DILocation(line: 606, column: 21, scope: !969)
!975 = !DILocation(line: 606, column: 32, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 1)
!977 = distinct !DILexicalBlock(scope: !966, file: !3, line: 606, column: 32)
!978 = !DILocation(line: 606, column: 32, scope: !965)
!979 = !DILocation(line: 607, column: 25, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 606, column: 81)
!981 = !DILocation(line: 607, column: 51, scope: !980)
!982 = !DILocation(line: 607, column: 73, scope: !980)
!983 = !DILocation(line: 608, column: 101, scope: !980)
!984 = !DILocation(line: 608, column: 33, scope: !980)
!985 = !DILocation(line: 609, column: 21, scope: !980)
!986 = !DILocation(line: 609, column: 32, scope: !987)
!987 = !DILexicalBlockFile(scope: !988, file: !3, discriminator: 1)
!988 = distinct !DILexicalBlock(scope: !977, file: !3, line: 609, column: 32)
!989 = !DILocation(line: 609, column: 32, scope: !976)
!990 = !DILocation(line: 610, column: 25, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 609, column: 80)
!992 = !DILocation(line: 610, column: 51, scope: !991)
!993 = !DILocation(line: 610, column: 73, scope: !991)
!994 = !DILocation(line: 611, column: 101, scope: !991)
!995 = !DILocation(line: 611, column: 33, scope: !991)
!996 = !DILocation(line: 612, column: 21, scope: !991)
!997 = !DILocation(line: 612, column: 32, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !3, discriminator: 1)
!999 = distinct !DILexicalBlock(scope: !988, file: !3, line: 612, column: 32)
!1000 = !DILocation(line: 612, column: 32, scope: !987)
!1001 = !DILocation(line: 613, column: 25, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 613, column: 25)
!1003 = distinct !DILexicalBlock(scope: !999, file: !3, line: 612, column: 80)
!1004 = !DILocation(line: 613, column: 25, scope: !1003)
!1005 = !DILocation(line: 613, column: 25, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1002, file: !3, discriminator: 1)
!1007 = !DILocation(line: 614, column: 25, scope: !1003)
!1008 = !DILocation(line: 614, column: 51, scope: !1003)
!1009 = !DILocation(line: 614, column: 73, scope: !1003)
!1010 = !DILocation(line: 615, column: 101, scope: !1003)
!1011 = !DILocation(line: 615, column: 33, scope: !1003)
!1012 = !DILocation(line: 616, column: 21, scope: !1003)
!1013 = !DILocation(line: 617, column: 51, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !999, file: !3, line: 616, column: 28)
!1015 = !DILocation(line: 617, column: 77, scope: !1014)
!1016 = !DILocation(line: 617, column: 25, scope: !1014)
!1017 = !DILocation(line: 627, column: 17, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !379, file: !3, line: 627, column: 17)
!1019 = !DILocation(line: 627, column: 43, scope: !1018)
!1020 = !DILocation(line: 627, column: 62, scope: !1018)
!1021 = !DILocation(line: 627, column: 17, scope: !379)
!1022 = !DILocation(line: 628, column: 62, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 627, column: 74)
!1024 = !DILocation(line: 629, column: 43, scope: !1023)
!1025 = !DILocation(line: 629, column: 62, scope: !1023)
!1026 = !DILocation(line: 630, column: 13, scope: !1023)
!1027 = !DILocation(line: 631, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !379, file: !3, line: 631, column: 17)
!1029 = !DILocation(line: 631, column: 17, scope: !379)
!1030 = !DILocation(line: 632, column: 17, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 632, column: 17)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 631, column: 31)
!1033 = !DILocation(line: 632, column: 17, scope: !1032)
!1034 = !DILocation(line: 632, column: 17, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 1)
!1036 = !DILocation(line: 633, column: 22, scope: !1032)
!1037 = !DILocation(line: 633, column: 17, scope: !1032)
!1038 = !DILocation(line: 634, column: 30, scope: !1032)
!1039 = !DILocation(line: 635, column: 30, scope: !1032)
!1040 = !DILocation(line: 636, column: 13, scope: !1032)
!1041 = !DILocation(line: 637, column: 13, scope: !379)
!1042 = !DILocation(line: 637, column: 39, scope: !379)
!1043 = !DILocation(line: 637, column: 65, scope: !379)
!1044 = !DILocation(line: 638, column: 13, scope: !379)
!1045 = !DILocation(line: 648, column: 1, scope: !313)
!1046 = distinct !DISubprogram(name: "sdp_send_service_search_attribute_request", scope: !3, file: !3, line: 122, type: !1047, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!150, !135, !135, !132}
!1049 = !{!1050, !1051, !1052, !1053, !1057, !1058, !1059, !1060, !1061, !1062}
!1050 = !DILocalVariable(name: "channel", arg: 1, scope: !1046, file: !3, line: 122, type: !135)
!1051 = !DILocalVariable(name: "uuid", arg: 2, scope: !1046, file: !3, line: 122, type: !135)
!1052 = !DILocalVariable(name: "continue_state", arg: 3, scope: !1046, file: !3, line: 122, type: !132)
!1053 = !DILocalVariable(name: "sdp_response_buffer", scope: !1046, file: !3, line: 124, type: !1054)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2048, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 256)
!1057 = !DILocalVariable(name: "len", scope: !1046, file: !3, line: 125, type: !150)
!1058 = !DILocalVariable(name: "sdp_response_size", scope: !1046, file: !3, line: 126, type: !135)
!1059 = !DILocalVariable(name: "parameterlength", scope: !1046, file: !3, line: 127, type: !135)
!1060 = !DILocalVariable(name: "attribute", scope: !1046, file: !3, line: 128, type: !132)
!1061 = !DILocalVariable(name: "pservicesearchpattern", scope: !1046, file: !3, line: 129, type: !132)
!1062 = !DILocalVariable(name: "i", scope: !1063, file: !3, line: 177, type: !150)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 177, column: 9)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 176, column: 25)
!1065 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 176, column: 9)
!1066 = !DILocation(line: 124, column: 5, scope: !1046)
!1067 = !DILocation(line: 124, column: 8, scope: !1046)
!1068 = !DILocation(line: 125, column: 9, scope: !1046)
!1069 = !DILocation(line: 126, column: 9, scope: !1046)
!1070 = !DILocation(line: 127, column: 9, scope: !1046)
!1071 = !DILocation(line: 129, column: 34, scope: !1046)
!1072 = !DILocation(line: 129, column: 9, scope: !1046)
!1073 = !DILocation(line: 133, column: 5, scope: !1046)
!1074 = !DILocation(line: 134, column: 5, scope: !1046)
!1075 = !DILocation(line: 135, column: 9, scope: !1046)
!1076 = !DILocation(line: 136, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 135, column: 37)
!1078 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 135, column: 9)
!1079 = !DILocation(line: 137, column: 5, scope: !1077)
!1080 = !DILocation(line: 138, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 137, column: 44)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 137, column: 16)
!1083 = !DILocation(line: 139, column: 5, scope: !1081)
!1084 = !DILocation(line: 135, column: 31, scope: !1078)
!1085 = !DILocation(line: 140, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 139, column: 12)
!1087 = !DILocation(line: 142, column: 11, scope: !1046)
!1088 = !DILocation(line: 143, column: 21, scope: !1046)
!1089 = !DILocation(line: 146, column: 5, scope: !1046)
!1090 = !DILocation(line: 147, column: 21, scope: !1046)
!1091 = !DILocation(line: 150, column: 39, scope: !1046)
!1092 = !DILocation(line: 150, column: 45, scope: !1046)
!1093 = !DILocation(line: 128, column: 9, scope: !1046)
!1094 = !DILocation(line: 151, column: 5, scope: !1046)
!1095 = !DILocation(line: 153, column: 31, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 153, column: 9)
!1097 = !DILocation(line: 154, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 153, column: 54)
!1099 = !DILocation(line: 155, column: 5, scope: !1098)
!1100 = !DILocation(line: 159, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 155, column: 59)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 155, column: 16)
!1103 = !DILocation(line: 165, column: 5, scope: !1101)
!1104 = !DILocation(line: 167, column: 9, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 165, column: 12)
!1106 = !DILocation(line: 172, column: 11, scope: !1046)
!1107 = !DILocation(line: 173, column: 21, scope: !1046)
!1108 = !DILocation(line: 176, column: 9, scope: !1065)
!1109 = !DILocation(line: 176, column: 9, scope: !1046)
!1110 = !DILocation(line: 177, column: 18, scope: !1063)
!1111 = !DILocation(line: 177, column: 9, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1063, file: !3, discriminator: 1)
!1113 = !DILocation(line: 178, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 177, column: 54)
!1115 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 177, column: 9)
!1116 = !DILocation(line: 178, column: 52, scope: !1114)
!1117 = !DILocation(line: 179, column: 29, scope: !1114)
!1118 = !DILocation(line: 177, column: 27, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1115, file: !3, discriminator: 1)
!1120 = distinct !{!1120, !1121, !1122}
!1121 = !DILocation(line: 177, column: 9, scope: !1063)
!1122 = !DILocation(line: 180, column: 9, scope: !1063)
!1123 = !DILocation(line: 177, column: 50, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1115, file: !3, discriminator: 3)
!1125 = !DILocation(line: 182, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 181, column: 12)
!1127 = !DILocation(line: 182, column: 48, scope: !1126)
!1128 = !DILocation(line: 183, column: 25, scope: !1126)
!1129 = !DILocation(line: 186, column: 28, scope: !1046)
!1130 = !DILocation(line: 116, column: 17, scope: !1131, inlinedAt: !1134)
!1131 = distinct !DISubprogram(name: "sdp_get_transaction_id", scope: !3, file: !3, line: 114, type: !1132, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!135}
!1134 = distinct !DILocation(line: 187, column: 42, scope: !1046)
!1135 = !DILocation(line: 116, column: 43, scope: !1131, inlinedAt: !1134)
!1136 = !DILocation(line: 116, column: 62, scope: !1131, inlinedAt: !1134)
!1137 = !DILocation(line: 116, column: 12, scope: !1131, inlinedAt: !1134)
!1138 = !DILocation(line: 187, column: 5, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 1)
!1140 = !DILocation(line: 188, column: 5, scope: !1046)
!1141 = !DILocation(line: 211, column: 41, scope: !1046)
!1142 = !DILocation(line: 214, column: 12, scope: !1046)
!1143 = !DILocation(line: 215, column: 1, scope: !1046)
