; ModuleID = 'hfp_profile.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hfp_profile.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.hfp_stack_t = type { i8, %struct.__HFP_PARSE_STA, [248 x i8], [24 x i8], [1 x %struct.hfp_con] }
%struct.__HFP_PARSE_STA = type <{ i8, i16 }>
%struct.hfp_con = type { %struct.hfp_con_core_data_t, %struct.btstack_linked_item* }
%struct.hfp_con_core_data_t = type { [6 x i8], i16, i32, i16, i8, i8, [3 x i8], i8, [3 x i8], [8 x %struct.__INDICATOR], [8 x %struct.__INDICATOR] }
%struct.__INDICATOR = type <{ i8*, i8, i8, i8 }>
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.hci_cmd_t = type { i16, i8* }
%struct.info = type { i8, i8 }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.resend_t = type { %struct.btstack_linked_item, i16, [0 x i8] }
%struct.hfp_ioctrl_str = type { [6 x i8], i32, i8, %union.anon }
%union.anon = type { i32, [28 x i8] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@hfp_more_feature_hf_indicators = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !252
@enhanced_voice_recognition_activation = weak hidden local_unnamed_addr global i8 1, section ".bt_stack_data", align 1, !dbg !254
@hfp_stack = internal unnamed_addr global %struct.hfp_stack_t* null, section ".bt_stack_data", align 4, !dbg !269
@bt_suspend_hfp_resumehfp_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @hfp_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @hfp_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @hfp_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !256
@more_hfp_cmd_support = external local_unnamed_addr constant i8, align 1
@user_at_cmd_send_support = external local_unnamed_addr global i8, align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@btstack_tws_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [14 x i8] c"hfp gain %d\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hfp ir %d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hfp pl %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hfp scl %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"hfp_release ok\0A\00", align 1
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"<BT-log> :hfp_speak_gain %d\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"wait phone setup\0A\00", align 1
@btstack_update_flags = external constant %struct.hci_cmd_t, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"+CME ERROR\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"try setup by self\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"RING\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"CIEVVGSVGMBRSFCINDCLCCCLIPCNUMBSIRCME ERRORAPLSIRIXAPLBVRACCLKCCWACHLDCGMIBCSBIND\00", align 1
@parse_atcmd_cmd_or_rsp_type.infos = internal unnamed_addr constant [19 x %struct.info] [%struct.info { i8 6, i8 4 }, %struct.info { i8 11, i8 3 }, %struct.info { i8 10, i8 3 }, %struct.info { i8 4, i8 4 }, %struct.info { i8 5, i8 4 }, %struct.info { i8 7, i8 4 }, %struct.info { i8 8, i8 4 }, %struct.info { i8 14, i8 4 }, %struct.info { i8 16, i8 4 }, %struct.info { i8 12, i8 9 }, %struct.info { i8 20, i8 7 }, %struct.info { i8 21, i8 4 }, %struct.info { i8 15, i8 4 }, %struct.info { i8 22, i8 4 }, %struct.info { i8 13, i8 4 }, %struct.info { i8 23, i8 4 }, %struct.info { i8 24, i8 4 }, %struct.info { i8 17, i8 3 }, %struct.info { i8 25, i8 4 }], section ".bt_stack_data", align 1, !dbg !363
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"[pro-info] : AG_FEATURE: %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"AG SUPPORT msbc\0A\00", align 1
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"AG not  SUPPORT msbc\0A\00", align 1
@hfp_ind_str_buf = internal constant [8 x [15 x i8]] [[15 x i8] c"service\00\00\00\00\00\00\00\00", [15 x i8] c"call\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"callsetup\00\00\00\00\00\00", [15 x i8] c"call_setup\00\00\00\00\00", [15 x i8] c"callheld\00\00\00\00\00\00\00", [15 x i8] c"signal\00\00\00\00\00\00\00\00\00", [15 x i8] c"roam\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"battchg\00\00\00\00\00\00\00\00"], section ".bt_stack_const", align 1, !dbg !372
@btstack_phonenum = external constant %struct.hci_cmd_t, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"send AT+BCS\0A\00", align 1
@hfp_function_cmd = internal constant [19 x [22 x i8]] [[22 x i8] c"ATA\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+CHUP\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+BLDN\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+VGS=10\0D\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+VGM=10\0D\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+CLCC\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"ATD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+IPHONEACCEV=1,1,9\0D\00", [22 x i8] c"AT+APLSIRI?\0D\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+BVRA=1\0D\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+BVRA=0\0D\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+CCLK?\0D\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+VTS=0\0D\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+CHLD=2\0D\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+BIA=0,1\0D\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+CGMI?\0D\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+BCS=2\0D\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+CNUM\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [22 x i8] c"AT+BCC\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], section ".bt_stack_const", align 1, !dbg !378
@.str.17 = private unnamed_addr constant [7 x i8] c"iPhone\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"CGMI_CMD_DATA_PARSE_ERROE\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Apple Inc.\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"[pro-info] :is iphone flag %d\0A\00", align 1
@btstack_phone_manufacturer = external constant %struct.hci_cmd_t, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"remote support indication:%d\0A\00", align 1
@hfp_SLC_init_cmd = internal constant [9 x [18 x i8]] [[18 x i8] c"AT+BRSF=16\0D\00\00\00\00\00\00\00", [18 x i8] c"AT+BAC=1,2\0D\00\00\00\00\00\00\00", [18 x i8] c"AT+CIND=?\0D\00\00\00\00\00\00\00\00", [18 x i8] c"AT+CIND?\0D\00\00\00\00\00\00\00\00\00", [18 x i8] c"AT+CMER=3,0,0,1\0D\00\00", [18 x i8] c"AT+CHLD=?\0D\00\00\00\00\00\00\00\00", [18 x i8] c"AT+BIND=2\0D\00\00\00\00\00\00\00\00", [18 x i8] c"AT+BIND=?\0D\00\00\00\00\00\00\00\00", [18 x i8] c"AT+BIND?\0D\00\00\00\00\00\00\00\00\00"], section ".bt_stack_const", align 1, !dbg !383
@hfp_param_set_buf = internal constant [9 x [28 x i8]] [[28 x i8] c"AT+CMEE=1\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+CLIP=1\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+CCWA=1\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+NREC=0\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+CGMI?\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+VGS=07\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+VGM=07\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [28 x i8] c"AT+XAPL=ABCD-1234-0100,10\0D\00\00", [28 x i8] zeroinitializer], section ".bt_stack_const", align 1, !dbg !389
@.str.23 = private unnamed_addr constant [13 x i8] c"\0AAT+CMEE=1\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"<BT-log> :hfp_conn_init speak gain %d\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"AT+BRSF=011\0D\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"hfp_send error\0A\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"<BT-log> :HF_INDICATORS send_battery_level:%d\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"AT+BIEV=2,75\0D\00\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"<BT-log> :ip send_battery_level:%d\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_hfp_resumehfp_release to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [28 x i8] c"<BT-log> :\0Ahfp data err!!!\0A\00"
@str.31 = private unnamed_addr constant [55 x i8] c"support new hfp battery feature,no need follow two cmd\00"
@str.32 = private unnamed_addr constant [15 x i8] c"jump bind step\00"

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @hfp_check_conn_for_rfcomm_id(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !398 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !402, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata %struct.hfp_con* %3, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.hfp_con* %3, metadata !403, metadata !DIExpression()), !dbg !405
  %2 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !406
  %3 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %2, i32 0, i32 4, i32 0, !dbg !406
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %2, i32 0, i32 4, i32 1
  br label %5, !dbg !408

; <label>:5:                                      ; preds = %16, %1
  %6 = phi %struct.hfp_con* [ %3, %1 ], [ %17, %16 ]
  %7 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 1, !dbg !410
  %8 = load i16, i16* %7, align 2, !dbg !410, !tbaa !414
  %9 = icmp eq i16 %8, %0, !dbg !422
  br i1 %9, label %10, label %16, !dbg !423

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 6, !dbg !424
  %12 = bitcast [3 x i8]* %11 to i24*, !dbg !424
  %13 = load i24, i24* %12, align 4, !dbg !424
  %14 = and i24 %13, 2097152, !dbg !424
  %15 = icmp eq i24 %14, 0, !dbg !426
  br i1 %15, label %16, label %19, !dbg !427

; <label>:16:                                     ; preds = %10, %5
  %17 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 1, !dbg !429
  call void @llvm.dbg.value(metadata %struct.hfp_con* %17, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.hfp_con* %17, metadata !403, metadata !DIExpression()), !dbg !405
  %18 = icmp ult %struct.hfp_con* %17, %4, !dbg !431
  br i1 %18, label %5, label %19, !dbg !408, !llvm.loop !433

; <label>:19:                                     ; preds = %16, %10
  %20 = phi i8 [ 1, %10 ], [ 0, %16 ]
  ret i8 %20, !dbg !435
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define hidden void @siri_update_multi_bd_status(i8 zeroext, i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !436 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %1, metadata !441, metadata !DIExpression()), !dbg !443
  %3 = icmp eq i8 %0, 0, !dbg !444
  br i1 %3, label %6, label %4, !dbg !446

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @update_multi_bd_status(i8* %1, i8 zeroext 12, i8 zeroext -1) #9, !dbg !447
  br label %8, !dbg !449

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @update_multi_bd_status(i8* %1, i8 zeroext 13, i8 zeroext -1) #9, !dbg !450
  br label %8

; <label>:8:                                      ; preds = %6, %4
  ret void, !dbg !452
}

; Function Attrs: optsize
declare i32 @update_multi_bd_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define weak hidden void @phone_date_and_time_feedback(i8*, i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !457, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i16 %1, metadata !458, metadata !DIExpression()), !dbg !460
  %3 = zext i16 %1 to i32, !dbg !461
  tail call void @put_buf(i8* %0, i32 %3) #9, !dbg !462
  %4 = tail call i32 @puts(i8* %0) #10, !dbg !463
  ret void, !dbg !464
}

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define weak hidden i32 @at_cmd_analysis_by_user(i8*, i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !469, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i16 %1, metadata !470, metadata !DIExpression()), !dbg !472
  ret i32 0, !dbg !473
}

; Function Attrs: nounwind optsize
define hidden void @hfp_profile_init(%struct.hfp_stack_t*, i8 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !474 {
  call void @llvm.dbg.value(metadata %struct.hfp_stack_t* %0, metadata !478, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i8 %1, metadata !479, metadata !DIExpression()), !dbg !481
  store %struct.hfp_stack_t* %0, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !482, !tbaa !483
  %3 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %0, i32 0, i32 0, !dbg !484
  tail call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 416, i32 4, i1 false), !dbg !484
  tail call void @rfcomm_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @hfp_packet_handler, i8 zeroext 4, i16 zeroext 512) #9, !dbg !485
  %4 = icmp ne i8 %1, 0, !dbg !486
  %5 = load i8*, i8** bitcast (%struct.hfp_stack_t** @hfp_stack to i8**), align 4, !tbaa !483
  %6 = load i8, i8* %5, align 4
  %7 = and i8 %6, -32
  %8 = select i1 %4, i8 18, i8 16, !dbg !488
  %9 = or i8 %7, %8
  store i8 %9, i8* %5, align 4
  %10 = getelementptr inbounds i8, i8* %5, i32 2, !dbg !489
  %11 = bitcast i8* %10 to i16*, !dbg !489
  store i16 0, i16* %11, align 1, !dbg !490, !tbaa !491
  %12 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !494
  store i8 0, i8* %12, align 1, !dbg !495
  ret void, !dbg !496
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #5

; Function Attrs: optsize
declare void @rfcomm_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i8 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @hfp_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #2 section ".bt_stack_code" !dbg !497 {
  %5 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !506, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i8 %0, metadata !501, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i16 %1, metadata !502, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i8* %2, metadata !503, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i16 %3, metadata !504, metadata !DIExpression()), !dbg !522
  switch i8 %0, label %129 [
    i8 4, label %6
    i8 7, label %99
  ], !dbg !523

; <label>:6:                                      ; preds = %4
  %7 = load i8, i8* %2, align 1, !dbg !524, !tbaa !525
  switch i8 %7, label %129 [
    i8 -126, label %8
    i8 -128, label %29
    i8 -127, label %32
    i8 -124, label %52
    i8 -119, label %98
  ], !dbg !526

; <label>:8:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i16 0, metadata !513, metadata !DIExpression()), !dbg !527
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %9) #11, !dbg !528
  %10 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !529
  call void @bt_flip_addr(i8* nonnull %9, i8* %10) #9, !dbg !530
  %11 = call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* nonnull %9) #9, !dbg !531
  call void @llvm.dbg.value(metadata %struct.hfp_con* %11, metadata !514, metadata !DIExpression()), !dbg !532
  %12 = icmp eq %struct.hfp_con* %11, null, !dbg !533
  br i1 %12, label %13, label %16, !dbg !535

; <label>:13:                                     ; preds = %8
  %14 = call fastcc %struct.hfp_con* @__create_hfp_conn(i8* nonnull %9) #9, !dbg !536
  call void @llvm.dbg.value(metadata %struct.hfp_con* %14, metadata !514, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.hfp_con* %14, metadata !514, metadata !DIExpression()), !dbg !532
  %15 = icmp eq %struct.hfp_con* %14, null, !dbg !538
  br i1 %15, label %28, label %16, !dbg !540

; <label>:16:                                     ; preds = %13, %8
  %17 = phi %struct.hfp_con* [ %14, %13 ], [ %11, %8 ]
  %18 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %17, i32 0, i32 0, i32 3, !dbg !541
  store i16 %1, i16* %18, align 4, !dbg !543, !tbaa !544
  %19 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !545
  %20 = load i8, i8* %19, align 1, !dbg !545, !tbaa !525
  %21 = zext i8 %20 to i16, !dbg !545
  %22 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !545
  %23 = load i8, i8* %22, align 1, !dbg !545, !tbaa !525
  %24 = zext i8 %23 to i16, !dbg !545
  %25 = shl nuw i16 %24, 8, !dbg !545
  %26 = or i16 %25, %21, !dbg !545
  %27 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %17, i32 0, i32 0, i32 1, !dbg !546
  store i16 %26, i16* %27, align 2, !dbg !547, !tbaa !414
  call void @rfcomm_accept_connection_internal(i16 zeroext %26) #9, !dbg !548
  br label %28, !dbg !549

; <label>:28:                                     ; preds = %16, %13
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %9) #11, !dbg !550
  br label %129, !dbg !551

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !552
  %31 = load i8, i8* %30, align 1, !dbg !552, !tbaa !525
  tail call fastcc void @hfp_channel_open(i8 zeroext %31, i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #10, !dbg !553
  br label %129, !dbg !554

; <label>:32:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i16 %1, metadata !555, metadata !DIExpression()), !dbg !561
  %33 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !563
  %34 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %33, i32 0, i32 4, i32 0, !dbg !563
  %35 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %33, i32 0, i32 4, i32 1
  br label %36, !dbg !565

; <label>:36:                                     ; preds = %47, %32
  %37 = phi %struct.hfp_con* [ %34, %32 ], [ %48, %47 ]
  %38 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %37, i32 0, i32 0, i32 3, !dbg !567
  %39 = load i16, i16* %38, align 4, !dbg !567, !tbaa !544
  %40 = icmp eq i16 %39, %1, !dbg !571
  br i1 %40, label %41, label %47, !dbg !572

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %37, i32 0, i32 0, i32 6, !dbg !573
  %43 = bitcast [3 x i8]* %42 to i24*, !dbg !573
  %44 = load i24, i24* %43, align 4, !dbg !573
  %45 = and i24 %44, 2097152, !dbg !573
  %46 = icmp eq i24 %45, 0, !dbg !575
  br i1 %46, label %47, label %50, !dbg !576

; <label>:47:                                     ; preds = %41, %36
  %48 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %37, i32 1, !dbg !578
  call void @llvm.dbg.value(metadata %struct.hfp_con* %48, metadata !560, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata %struct.hfp_con* %48, metadata !560, metadata !DIExpression()), !dbg !580
  %49 = icmp ult %struct.hfp_con* %48, %35, !dbg !581
  br i1 %49, label %36, label %50, !dbg !565, !llvm.loop !583

; <label>:50:                                     ; preds = %47, %41
  %51 = phi %struct.hfp_con* [ %37, %41 ], [ null, %47 ]
  call void @llvm.dbg.value(metadata %struct.hfp_con* %51, metadata !505, metadata !DIExpression()), !dbg !586
  tail call fastcc void @__free_hfp_conn(%struct.hfp_con* %51, i8 zeroext 1) #10, !dbg !587
  br label %129, !dbg !588

; <label>:52:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i16 %1, metadata !589, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i32 0, metadata !594, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata %struct.resend_t* null, metadata !595, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i16 %1, metadata !555, metadata !DIExpression()), !dbg !602
  %53 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !604
  %54 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %53, i32 0, i32 4, i32 0, !dbg !604
  %55 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %53, i32 0, i32 4, i32 1
  br label %56, !dbg !605

; <label>:56:                                     ; preds = %67, %52
  %57 = phi %struct.hfp_con* [ %54, %52 ], [ %68, %67 ]
  %58 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %57, i32 0, i32 0, i32 3, !dbg !606
  %59 = load i16, i16* %58, align 4, !dbg !606, !tbaa !544
  %60 = icmp eq i16 %59, %1, !dbg !607
  br i1 %60, label %61, label %67, !dbg !608

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %57, i32 0, i32 0, i32 6, !dbg !609
  %63 = bitcast [3 x i8]* %62 to i24*, !dbg !609
  %64 = load i24, i24* %63, align 4, !dbg !609
  %65 = and i24 %64, 2097152, !dbg !609
  %66 = icmp eq i24 %65, 0, !dbg !610
  br i1 %66, label %67, label %70, !dbg !611

; <label>:67:                                     ; preds = %61, %56
  %68 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %57, i32 1, !dbg !612
  call void @llvm.dbg.value(metadata %struct.hfp_con* %68, metadata !560, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata %struct.hfp_con* %68, metadata !560, metadata !DIExpression()), !dbg !613
  %69 = icmp ult %struct.hfp_con* %68, %55, !dbg !614
  br i1 %69, label %56, label %128, !dbg !605, !llvm.loop !583

; <label>:70:                                     ; preds = %61
  call void @llvm.dbg.value(metadata %struct.hfp_con* %57, metadata !597, metadata !DIExpression()), !dbg !615
  %71 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %57, i32 0, i32 1, !dbg !616
  %72 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %71, align 4, !dbg !616, !tbaa !620
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %72, metadata !596, metadata !DIExpression()), !dbg !621
  %73 = icmp eq %struct.btstack_linked_item* %72, null, !dbg !622
  br i1 %73, label %87, label %74, !dbg !622

; <label>:74:                                     ; preds = %70
  %75 = bitcast %struct.btstack_linked_item* %72 to %struct.resend_t*, !dbg !624
  call void @llvm.dbg.value(metadata %struct.resend_t* %75, metadata !595, metadata !DIExpression()), !dbg !601
  %76 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %57, i32 0, i32 0, i32 1, !dbg !627
  %77 = load i16, i16* %76, align 2, !dbg !627, !tbaa !414
  %78 = getelementptr inbounds %struct.resend_t, %struct.resend_t* %75, i32 0, i32 2, i32 0, !dbg !628
  %79 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %72, i32 1, !dbg !629
  %80 = bitcast %struct.btstack_linked_item* %79 to i16*, !dbg !629
  %81 = load i16, i16* %80, align 4, !dbg !629, !tbaa !630
  call void @llvm.dbg.value(metadata i16 %77, metadata !633, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %78, metadata !638, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i16 %81, metadata !639, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()), !dbg !645
  %82 = tail call i32 @rfcomm_send_internal(i16 zeroext %77, i8* %78, i16 zeroext %81) #9, !dbg !646
  call void @llvm.dbg.value(metadata i32 %82, metadata !640, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %82, metadata !594, metadata !DIExpression()), !dbg !600
  %83 = icmp eq i32 %82, 0, !dbg !647
  br i1 %83, label %84, label %129, !dbg !649

; <label>:84:                                     ; preds = %74
  %85 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** nonnull %71, %struct.btstack_linked_item* nonnull %72) #9, !dbg !650
  %86 = bitcast %struct.btstack_linked_item* %72 to i8*, !dbg !652
  tail call void @free(i8* %86) #9, !dbg !653
  br label %129, !dbg !654

; <label>:87:                                     ; preds = %70
  %88 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %57, i32 0, i32 0, i32 1, !dbg !655
  %89 = load i16, i16* %88, align 2, !dbg !655, !tbaa !414
  %90 = icmp eq i16 %89, 0, !dbg !657
  br i1 %90, label %129, label %91, !dbg !658

; <label>:91:                                     ; preds = %87
  %92 = and i24 %64, 2031616, !dbg !659
  %93 = icmp ne i24 %92, 65536, !dbg !661
  %94 = and i24 %64, 4194304, !dbg !662
  %95 = icmp eq i24 %94, 0, !dbg !664
  %96 = and i1 %93, %95, !dbg !665
  br i1 %96, label %129, label %97, !dbg !665

; <label>:97:                                     ; preds = %91
  tail call fastcc void @hfp_init_process(i16 zeroext %1) #9, !dbg !666
  br label %129, !dbg !668

; <label>:98:                                     ; preds = %6
  tail call void @hfp_monitor_connect_create(i16 zeroext %1, i8* nonnull %2, i16 zeroext undef) #10, !dbg !669
  br label %129, !dbg !670

; <label>:99:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i16 %1, metadata !555, metadata !DIExpression()), !dbg !671
  %100 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !673
  %101 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %100, i32 0, i32 4, i32 0, !dbg !673
  %102 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %100, i32 0, i32 4, i32 1
  br label %103, !dbg !674

; <label>:103:                                    ; preds = %114, %99
  %104 = phi %struct.hfp_con* [ %101, %99 ], [ %115, %114 ]
  %105 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %104, i32 0, i32 0, i32 3, !dbg !675
  %106 = load i16, i16* %105, align 4, !dbg !675, !tbaa !544
  %107 = icmp eq i16 %106, %1, !dbg !676
  br i1 %107, label %108, label %114, !dbg !677

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %104, i32 0, i32 0, i32 6, !dbg !678
  %110 = bitcast [3 x i8]* %109 to i24*, !dbg !678
  %111 = load i24, i24* %110, align 4, !dbg !678
  %112 = and i24 %111, 2097152, !dbg !678
  %113 = icmp eq i24 %112, 0, !dbg !679
  br i1 %113, label %114, label %124, !dbg !680

; <label>:114:                                    ; preds = %108, %103
  %115 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %104, i32 1, !dbg !681
  call void @llvm.dbg.value(metadata %struct.hfp_con* %115, metadata !560, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata %struct.hfp_con* %115, metadata !560, metadata !DIExpression()), !dbg !682
  %116 = icmp ult %struct.hfp_con* %115, %102, !dbg !683
  br i1 %116, label %103, label %117, !dbg !674, !llvm.loop !583

; <label>:117:                                    ; preds = %114
  call void @llvm.dbg.value(metadata %struct.hfp_con* %104, metadata !505, metadata !DIExpression()), !dbg !586
  %118 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !684, !tbaa !525
  %119 = icmp slt i8 %118, 0, !dbg !684
  br i1 %119, label %120, label %122, !dbg !688

; <label>:120:                                    ; preds = %117
  %121 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str, i32 0, i32 0)), !dbg !689
  br label %122, !dbg !689

; <label>:122:                                    ; preds = %120, %117
  %123 = zext i16 %3 to i32, !dbg !691
  tail call void @put_buf(i8* %2, i32 %123) #9, !dbg !692
  br label %129, !dbg !693

; <label>:124:                                    ; preds = %108
  call void @llvm.dbg.value(metadata %struct.hfp_con* %104, metadata !505, metadata !DIExpression()), !dbg !586
  %125 = tail call fastcc zeroext i8 @hfp_parse_rfcomm_data(i16 zeroext %1, i8* %2, i16 zeroext %3) #10, !dbg !694
  %126 = icmp eq i8 %125, 0, !dbg !694
  br i1 %126, label %129, label %127, !dbg !696

; <label>:127:                                    ; preds = %124
  tail call fastcc void @hfp_init_process(i16 zeroext %1) #10, !dbg !697
  br label %129, !dbg !699

; <label>:128:                                    ; preds = %67
  br label %129, !dbg !700

; <label>:129:                                    ; preds = %128, %127, %124, %122, %98, %97, %91, %87, %84, %74, %50, %29, %28, %6, %4
  ret void, !dbg !700
}

; Function Attrs: nounwind optsize
define hidden i32 @hfp_send_cmd_io_ctrl(%struct.hfp_ioctrl_str*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !701 {
  %2 = alloca [35 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [35 x i8]* %2, metadata !732, metadata !DIExpression()), !dbg !746
  %3 = alloca [10 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !748, metadata !DIExpression()), !dbg !759
  %4 = alloca [15 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [15 x i8]* %4, metadata !763, metadata !DIExpression()), !dbg !773
  %5 = alloca [25 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [25 x i8]* %5, metadata !777, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata %struct.hfp_ioctrl_str* %0, metadata !725, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 0, metadata !726, metadata !DIExpression()), !dbg !793
  %6 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !794, !tbaa !483
  %7 = icmp eq %struct.hfp_stack_t* %6, null, !dbg !796
  %8 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %6, i32 0, i32 0, !dbg !797
  br i1 %7, label %221, label %9, !dbg !797

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 1, !dbg !798
  %11 = load i32, i32* %10, align 4, !dbg !798, !tbaa !799
  %12 = icmp ult i32 %11, 16, !dbg !801
  br i1 %12, label %13, label %62, !dbg !802

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !803
  call void @llvm.dbg.value(metadata i8* %14, metadata !782, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i32 %11, metadata !783, metadata !DIExpression()), !dbg !805
  %15 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i32 0, i32 0, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %15) #11, !dbg !806
  call void @llvm.memset.p0i8.i32(i8* nonnull %15, i8 0, i32 25, i32 1, i1 false) #11, !dbg !807
  %16 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %14) #9, !dbg !808
  call void @llvm.dbg.value(metadata %struct.hfp_con* %16, metadata !785, metadata !DIExpression()), !dbg !809
  %17 = icmp eq %struct.hfp_con* %16, null, !dbg !810
  br i1 %17, label %60, label %18, !dbg !812

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 6, !dbg !813
  %20 = bitcast [3 x i8]* %19 to i24*, !dbg !813
  %21 = load i24, i24* %20, align 4, !dbg !813
  %22 = and i24 %21, 1835008, !dbg !813
  %23 = icmp ult i24 %22, 262144, !dbg !815
  br i1 %23, label %60, label %24, !dbg !816

; <label>:24:                                     ; preds = %18
  switch i32 %11, label %60 [
    i32 0, label %51
    i32 1, label %51
    i32 2, label %51
    i32 6, label %25
    i32 7, label %28
    i32 8, label %40
    i32 9, label %42
    i32 10, label %44
    i32 13, label %45
    i32 11, label %46
    i32 12, label %48
    i32 14, label %49
  ], !dbg !817

; <label>:25:                                     ; preds = %24
  %26 = lshr i24 %21, 8, !dbg !818
  %27 = trunc i24 %26 to i4, !dbg !821
  switch i4 %27, label %60 [
    i4 2, label %51
    i4 3, label %51
    i4 6, label %51
  ], !dbg !821

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 8, metadata !784, metadata !DIExpression()), !dbg !822
  %29 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 7, !dbg !823
  %30 = load i8, i8* %29, align 1, !dbg !823
  %31 = and i8 %30, 7, !dbg !823
  %32 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 0, i32 0, !dbg !824
  tail call void @siri_update_multi_bd_status(i8 zeroext %31, i8* %32) #9, !dbg !825
  %33 = load i8, i8* %29, align 1, !dbg !826
  %34 = and i8 %33, 7, !dbg !826
  %35 = zext i8 %34 to i32, !dbg !827
  tail call void @bt_event_update_to_user(i8* %32, i32 1129270784, i8 zeroext 36, i32 %35) #9, !dbg !828
  %36 = load i8, i8* %29, align 1, !dbg !829
  %37 = and i8 %36, 7, !dbg !829
  %38 = zext i8 %37 to i32, !dbg !830
  %39 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 36, i32 %38, i8* %32) #9, !dbg !831
  br label %60, !dbg !832

; <label>:40:                                     ; preds = %24
  %41 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 5, !dbg !833
  store i8 8, i8* %41, align 1, !dbg !834, !tbaa !835
  call void @llvm.dbg.value(metadata i8 9, metadata !784, metadata !DIExpression()), !dbg !822
  br label %51, !dbg !836

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 5, !dbg !837
  store i8 9, i8* %43, align 1, !dbg !838, !tbaa !835
  call void @llvm.dbg.value(metadata i8 10, metadata !784, metadata !DIExpression()), !dbg !822
  br label %51, !dbg !839

; <label>:44:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 11, metadata !784, metadata !DIExpression()), !dbg !822
  br label %51, !dbg !840

; <label>:45:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 14, metadata !784, metadata !DIExpression()), !dbg !822
  br label %51, !dbg !841

; <label>:46:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 15, metadata !784, metadata !DIExpression()), !dbg !822
  %47 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 5, !dbg !842
  store i8 11, i8* %47, align 1, !dbg !843, !tbaa !835
  br label %51, !dbg !844

; <label>:48:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 17, metadata !784, metadata !DIExpression()), !dbg !822
  br label %51, !dbg !845

; <label>:49:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8 18, metadata !784, metadata !DIExpression()), !dbg !822
  %50 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 5, !dbg !846
  store i8 14, i8* %50, align 1, !dbg !847, !tbaa !835
  br label %51, !dbg !848

; <label>:51:                                     ; preds = %49, %48, %46, %45, %44, %42, %40, %25, %25, %25, %24, %24, %24
  %52 = phi i32 [ 18, %49 ], [ 17, %48 ], [ 15, %46 ], [ 14, %45 ], [ 11, %44 ], [ 10, %42 ], [ 9, %40 ], [ %11, %24 ], [ %11, %24 ], [ %11, %24 ], [ 5, %25 ], [ 5, %25 ], [ 5, %25 ]
  %53 = getelementptr inbounds [19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 %52, i32 0, !dbg !849
  %54 = call i8* @strcpy(i8* nonnull %15, i8* %53) #9, !dbg !850
  %55 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %16, i32 0, i32 0, i32 1, !dbg !851
  %56 = load i16, i16* %55, align 2, !dbg !851, !tbaa !414
  %57 = call i32 @strlen(i8* nonnull %15) #9, !dbg !852
  %58 = trunc i32 %57 to i16, !dbg !852
  %59 = call fastcc i32 @atcmd_try_send(i16 zeroext %56, i8* nonnull %15, i16 zeroext %58) #9, !dbg !853
  br label %60, !dbg !855

; <label>:60:                                     ; preds = %51, %28, %25, %24, %18, %13
  %61 = phi i32 [ %59, %51 ], [ 0, %28 ], [ -1000, %13 ], [ -1004, %18 ], [ -1004, %25 ], [ -1001, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %15) #11, !dbg !856
  call void @llvm.dbg.value(metadata i32 %61, metadata !726, metadata !DIExpression()), !dbg !793
  br label %221, !dbg !857

; <label>:62:                                     ; preds = %9
  switch i32 %11, label %221 [
    i32 22, label %63
    i32 23, label %71
    i32 16, label %81
    i32 17, label %114
    i32 18, label %134
    i32 19, label %161
    i32 20, label %193
    i32 21, label %201
    i32 25, label %204
  ], !dbg !858

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !859
  %65 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %64) #10, !dbg !860
  call void @llvm.dbg.value(metadata %struct.hfp_con* %65, metadata !727, metadata !DIExpression()), !dbg !861
  %66 = icmp eq %struct.hfp_con* %65, null, !dbg !862
  br i1 %66, label %67, label %221, !dbg !864

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, !dbg !865
  %69 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 2, !dbg !866
  %70 = load i8, i8* %69, align 4, !dbg !866, !tbaa !868
  tail call void @rfcomm_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @hfp_packet_handler, [6 x i8]* %68, i8 zeroext %70) #9, !dbg !869
  br label %221

; <label>:71:                                     ; preds = %62
  %72 = load i8, i8* @more_hfp_cmd_support, align 1, !dbg !870, !tbaa !525
  %73 = icmp eq i8 %72, 0, !dbg !870
  br i1 %73, label %221, label %74, !dbg !872

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !873
  call void @llvm.dbg.value(metadata i8* %75, metadata !875, metadata !DIExpression()), !dbg !881
  %76 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %75) #9, !dbg !883
  call void @llvm.dbg.value(metadata %struct.hfp_con* %76, metadata !880, metadata !DIExpression()), !dbg !884
  %77 = icmp eq %struct.hfp_con* %76, null, !dbg !885
  br i1 %77, label %221, label %78, !dbg !887

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %76, i32 0, i32 0, i32 1, !dbg !888
  %80 = load i16, i16* %79, align 2, !dbg !888, !tbaa !414
  tail call void @rfcomm_disconnect_internal(i16 zeroext %80) #9, !dbg !890
  br label %221, !dbg !891

; <label>:81:                                     ; preds = %62
  %82 = load i8, i8* @more_hfp_cmd_support, align 1, !dbg !892, !tbaa !525
  %83 = icmp eq i8 %82, 0, !dbg !892
  br i1 %83, label %221, label %84, !dbg !893

; <label>:84:                                     ; preds = %81
  %85 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !894
  %86 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 3, i32 0, !dbg !895
  %87 = load i32, i32* %86, align 4, !dbg !895, !tbaa !525
  call void @llvm.dbg.value(metadata i8* %85, metadata !768, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %87, metadata !769, metadata !DIExpression()), !dbg !897
  %88 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i32 0, i32 0, !dbg !898
  call void @llvm.lifetime.start.p0i8(i64 15, i8* nonnull %88) #11, !dbg !898
  %89 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %85) #9, !dbg !899
  call void @llvm.dbg.value(metadata %struct.hfp_con* %89, metadata !770, metadata !DIExpression()), !dbg !900
  %90 = icmp eq %struct.hfp_con* %89, null, !dbg !901
  br i1 %90, label %112, label %91, !dbg !903

; <label>:91:                                     ; preds = %84
  call void @llvm.memset.p0i8.i32(i8* nonnull %88, i8 0, i32 15, i32 1, i1 false) #11, !dbg !904
  call void @llvm.dbg.value(metadata %struct.hfp_con* %89, metadata !905, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i32 1, metadata !911, metadata !DIExpression()), !dbg !915
  %92 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %89, i32 0, i32 0, i32 2, !dbg !916
  %93 = load i32, i32* %92, align 4, !dbg !916, !tbaa !917
  %94 = and i32 %93, 1, !dbg !918
  %95 = icmp eq i32 %94, 0, !dbg !918
  br i1 %95, label %112, label %96, !dbg !919

; <label>:96:                                     ; preds = %91
  %97 = call i8* @strcpy(i8* nonnull %88, i8* getelementptr inbounds ([19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 13, i32 0)) #9, !dbg !920
  switch i32 %87, label %106 [
    i32 0, label %98
    i32 1, label %103
    i32 2, label %99
    i32 3, label %100
    i32 6, label %102
    i32 5, label %101
  ], !dbg !921

; <label>:98:                                     ; preds = %96
  br label %103, !dbg !922

; <label>:99:                                     ; preds = %96
  br label %103, !dbg !924

; <label>:100:                                    ; preds = %96
  br label %103, !dbg !925

; <label>:101:                                    ; preds = %96
  br label %103, !dbg !926

; <label>:102:                                    ; preds = %96
  br label %103, !dbg !927

; <label>:103:                                    ; preds = %102, %101, %100, %99, %98, %96
  %104 = phi i8 [ 52, %102 ], [ 51, %101 ], [ 50, %100 ], [ 48, %99 ], [ 48, %98 ], [ 49, %96 ]
  %105 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i32 0, i32 8
  store i8 %104, i8* %105, align 1, !tbaa !525
  br label %106, !dbg !928

; <label>:106:                                    ; preds = %103, %96
  %107 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %89, i32 0, i32 0, i32 1, !dbg !929
  %108 = load i16, i16* %107, align 2, !dbg !929, !tbaa !414
  %109 = call i32 @strlen(i8* nonnull %88) #9, !dbg !930
  %110 = trunc i32 %109 to i16, !dbg !930
  %111 = call fastcc i32 @atcmd_try_send(i16 zeroext %108, i8* nonnull %88, i16 zeroext %110) #9, !dbg !931
  br label %112, !dbg !933

; <label>:112:                                    ; preds = %106, %91, %84
  %113 = phi i32 [ %111, %106 ], [ -1000, %84 ], [ -1003, %91 ]
  call void @llvm.lifetime.end.p0i8(i64 15, i8* nonnull %88) #11, !dbg !934
  call void @llvm.dbg.value(metadata i32 %113, metadata !726, metadata !DIExpression()), !dbg !793
  br label %221, !dbg !935

; <label>:114:                                    ; preds = %62
  %115 = load i8, i8* @more_hfp_cmd_support, align 1, !dbg !936, !tbaa !525
  %116 = icmp eq i8 %115, 0, !dbg !936
  br i1 %116, label %221, label %117, !dbg !937

; <label>:117:                                    ; preds = %114
  %118 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !938
  %119 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 2, !dbg !939
  %120 = load i8, i8* %119, align 4, !dbg !939, !tbaa !868
  call void @llvm.dbg.value(metadata i8* %118, metadata !753, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8 %120, metadata !754, metadata !DIExpression()), !dbg !941
  %121 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !942
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %121) #11, !dbg !942
  %122 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %118) #9, !dbg !943
  call void @llvm.dbg.value(metadata %struct.hfp_con* %122, metadata !755, metadata !DIExpression()), !dbg !944
  %123 = icmp eq %struct.hfp_con* %122, null, !dbg !945
  br i1 %123, label %132, label %124, !dbg !947

; <label>:124:                                    ; preds = %117
  call void @llvm.memset.p0i8.i32(i8* nonnull %121, i8 0, i32 10, i32 1, i1 false) #11, !dbg !948
  %125 = call i8* @strcpy(i8* nonnull %121, i8* getelementptr inbounds ([19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 12, i32 0)) #9, !dbg !949
  %126 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 7, !dbg !950
  store i8 %120, i8* %126, align 1, !dbg !951, !tbaa !525
  %127 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %122, i32 0, i32 0, i32 1, !dbg !952
  %128 = load i16, i16* %127, align 2, !dbg !952, !tbaa !414
  %129 = call i32 @strlen(i8* nonnull %121) #9, !dbg !953
  %130 = trunc i32 %129 to i16, !dbg !953
  %131 = call fastcc i32 @atcmd_try_send(i16 zeroext %128, i8* nonnull %121, i16 zeroext %130) #9, !dbg !954
  br label %132, !dbg !956

; <label>:132:                                    ; preds = %124, %117
  %133 = phi i32 [ %131, %124 ], [ -1000, %117 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %121) #11, !dbg !957
  call void @llvm.dbg.value(metadata i32 %133, metadata !726, metadata !DIExpression()), !dbg !793
  br label %221, !dbg !958

; <label>:134:                                    ; preds = %62
  %135 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !959
  %136 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 3, !dbg !960
  %137 = bitcast %union.anon* %136 to i8*, !dbg !961
  %138 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 2, !dbg !962
  %139 = load i8, i8* %138, align 4, !dbg !962, !tbaa !868
  call void @llvm.dbg.value(metadata i8* %135, metadata !738, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i8* %137, metadata !739, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i8 %139, metadata !740, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !966
  %140 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 0, !dbg !967
  call void @llvm.lifetime.start.p0i8(i64 35, i8* nonnull %140) #11, !dbg !967
  %141 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %135) #9, !dbg !968
  call void @llvm.dbg.value(metadata %struct.hfp_con* %141, metadata !742, metadata !DIExpression()), !dbg !969
  %142 = icmp eq %struct.hfp_con* %141, null, !dbg !970
  br i1 %142, label %159, label %143, !dbg !972

; <label>:143:                                    ; preds = %134
  call void @llvm.memset.p0i8.i32(i8* nonnull %140, i8 0, i32 35, i32 1, i1 false) #11, !dbg !973
  %144 = call i8* @strcpy(i8* nonnull %140, i8* getelementptr inbounds ([19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 6, i32 0)) #9, !dbg !974
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !741, metadata !DIExpression()), !dbg !966
  %145 = zext i8 %139 to i32, !dbg !975
  %146 = icmp eq i8 %139, 0, !dbg !979
  br i1 %146, label %149, label %147, !dbg !980

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 3, !dbg !982
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %148, i8* %137, i32 %145, i32 1, i1 false) #11, !dbg !984
  br label %149, !dbg !985

; <label>:149:                                    ; preds = %147, %143
  %150 = add nuw nsw i32 %145, 3, !dbg !985
  %151 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 %150, !dbg !986
  store i8 59, i8* %151, align 1, !dbg !987, !tbaa !525
  %152 = add nuw nsw i32 %145, 4, !dbg !988
  %153 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 %152, !dbg !989
  store i8 13, i8* %153, align 1, !dbg !990, !tbaa !525
  %154 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %141, i32 0, i32 0, i32 1, !dbg !991
  %155 = load i16, i16* %154, align 2, !dbg !991, !tbaa !414
  %156 = call i32 @strlen(i8* nonnull %140) #9, !dbg !992
  %157 = trunc i32 %156 to i16, !dbg !992
  %158 = call fastcc i32 @atcmd_try_send(i16 zeroext %155, i8* nonnull %140, i16 zeroext %157) #9, !dbg !993
  br label %159, !dbg !995

; <label>:159:                                    ; preds = %149, %134
  %160 = phi i32 [ %158, %149 ], [ -1000, %134 ]
  call void @llvm.lifetime.end.p0i8(i64 35, i8* nonnull %140) #11, !dbg !996
  call void @llvm.dbg.value(metadata i32 %160, metadata !726, metadata !DIExpression()), !dbg !793
  br label %221, !dbg !997

; <label>:161:                                    ; preds = %62
  %162 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !998
  call void @llvm.dbg.value(metadata i8* %162, metadata !999, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i32 %178, metadata !1004, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i8 %176, metadata !1005, metadata !DIExpression()), !dbg !1011
  %163 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %162) #9, !dbg !1012
  call void @llvm.dbg.value(metadata %struct.hfp_con* %163, metadata !1007, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata %struct.hfp_con* %163, metadata !1014, metadata !DIExpression()), !dbg !1020
  %164 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %163, i32 0, i32 0, i32 6, !dbg !1023
  %165 = bitcast [3 x i8]* %164 to i24*, !dbg !1023
  %166 = load i24, i24* %165, align 4, !dbg !1023
  %167 = lshr i24 %166, 16, !dbg !1023
  %168 = and i24 %167, 31, !dbg !1023
  %169 = zext i24 %168 to i32, !dbg !1023
  %170 = load i8, i8* %8, align 4, !dbg !1024
  %171 = and i8 %170, 31, !dbg !1024
  %172 = zext i8 %171 to i32, !dbg !1025
  %173 = icmp ugt i32 %169, %172, !dbg !1026
  br i1 %173, label %174, label %221, !dbg !1027

; <label>:174:                                    ; preds = %161
  %175 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 2, !dbg !1028
  %176 = load i8, i8* %175, align 4, !dbg !1028, !tbaa !868
  %177 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 3, i32 0, !dbg !1029
  %178 = load i32, i32* %177, align 4, !dbg !1029, !tbaa !525
  %179 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %163, i32 0, i32 0, i32 3, !dbg !1030
  %180 = load i16, i16* %179, align 4, !dbg !1030, !tbaa !544
  %181 = tail call fastcc i32 @hfp_speak_gain_control(i16 zeroext %180, i32 %178, i8 zeroext %176) #9, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %181, metadata !1006, metadata !DIExpression()), !dbg !1032
  %182 = icmp sgt i32 %181, -1, !dbg !1033
  br i1 %182, label %183, label %221, !dbg !1035

; <label>:183:                                    ; preds = %174
  %184 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1036, !tbaa !483
  %185 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %184, i32 0, i32 0, !dbg !1038
  %186 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %185, align 4, !dbg !1038, !tbaa !1039
  %187 = icmp eq void (i8*, i32, i32)* %186, null, !dbg !1036
  br i1 %187, label %221, label %188, !dbg !1041

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %163, i32 0, i32 0, i32 0, i32 0, !dbg !1043
  %190 = load i24, i24* %165, align 4, !dbg !1045
  %191 = and i24 %190, 15, !dbg !1045
  %192 = zext i24 %191 to i32, !dbg !1045
  tail call void %186(i8* %189, i32 7, i32 %192) #9, !dbg !1046
  br label %221, !dbg !1047

; <label>:193:                                    ; preds = %62
  %194 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %194, metadata !1049, metadata !DIExpression()), !dbg !1053
  %195 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %194) #9, !dbg !1055
  call void @llvm.dbg.value(metadata %struct.hfp_con* %195, metadata !1052, metadata !DIExpression()), !dbg !1056
  %196 = icmp eq %struct.hfp_con* %195, null, !dbg !1057
  br i1 %196, label %221, label %197, !dbg !1059

; <label>:197:                                    ; preds = %193
  %198 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %195, i32 0, i32 0, i32 7, !dbg !1060
  %199 = load i8, i8* %198, align 1, !dbg !1062
  %200 = and i8 %199, -8, !dbg !1062
  store i8 %200, i8* %198, align 1, !dbg !1062
  br label %221, !dbg !1063

; <label>:201:                                    ; preds = %62
  %202 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !1064
  %203 = tail call fastcc i32 @send_battery_level(i8* %202) #10, !dbg !1065
  br label %221, !dbg !1066

; <label>:204:                                    ; preds = %62
  %205 = load i8, i8* @user_at_cmd_send_support, align 1, !dbg !1067, !tbaa !525
  %206 = icmp eq i8 %205, 0, !dbg !1067
  br i1 %206, label %221, label %207, !dbg !1069

; <label>:207:                                    ; preds = %204
  %208 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 0, i32 0, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %208, metadata !1072, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %216, metadata !1075, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %213, metadata !1076, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 0, metadata !1077, metadata !DIExpression()), !dbg !1083
  %209 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %208) #9, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.hfp_con* %209, metadata !1078, metadata !DIExpression()), !dbg !1085
  %210 = icmp eq %struct.hfp_con* %209, null, !dbg !1086
  br i1 %210, label %221, label %211, !dbg !1088

; <label>:211:                                    ; preds = %207
  %212 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 2, !dbg !1089
  %213 = load i8, i8* %212, align 4, !dbg !1089, !tbaa !868
  %214 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %0, i32 0, i32 3, !dbg !1090
  %215 = bitcast %union.anon* %214 to i8**, !dbg !1090
  %216 = load i8*, i8** %215, align 4, !dbg !1090, !tbaa !483
  %217 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %209, i32 0, i32 0, i32 1, !dbg !1091
  %218 = load i16, i16* %217, align 2, !dbg !1091, !tbaa !414
  %219 = zext i8 %213 to i16, !dbg !1092
  %220 = tail call fastcc i32 @atcmd_try_send(i16 zeroext %218, i8* %216, i16 zeroext %219) #9, !dbg !1093
  br label %221, !dbg !1094

; <label>:221:                                    ; preds = %211, %207, %204, %201, %197, %193, %188, %183, %174, %161, %159, %132, %114, %112, %81, %78, %74, %71, %67, %63, %62, %60, %1
  %222 = phi i32 [ -1000, %1 ], [ -1002, %63 ], [ -1001, %204 ], [ -1001, %62 ], [ %61, %60 ], [ 0, %201 ], [ %160, %159 ], [ %133, %132 ], [ 0, %114 ], [ %113, %112 ], [ 0, %81 ], [ 0, %71 ], [ 0, %67 ], [ 0, %74 ], [ 0, %78 ], [ -1004, %161 ], [ %181, %183 ], [ %181, %188 ], [ %181, %174 ], [ 0, %193 ], [ 0, %197 ], [ %220, %211 ], [ -1000, %207 ]
  ret i32 %222, !dbg !1095
}

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !1096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1100, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata %struct.hfp_con* %3, metadata !1101, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata %struct.hfp_con* %3, metadata !1101, metadata !DIExpression()), !dbg !1103
  %2 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1104
  %3 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %2, i32 0, i32 4, i32 0, !dbg !1104
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %2, i32 0, i32 4, i32 1
  br label %5, !dbg !1106

; <label>:5:                                      ; preds = %16, %1
  %6 = phi %struct.hfp_con* [ %3, %1 ], [ %17, %16 ]
  %7 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 0, i32 0, !dbg !1108
  %8 = tail call i32 @memcmp(i8* %7, i8* %0, i32 6) #10, !dbg !1112
  %9 = icmp eq i32 %8, 0, !dbg !1112
  br i1 %9, label %10, label %16, !dbg !1113

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 6, !dbg !1114
  %12 = bitcast [3 x i8]* %11 to i24*, !dbg !1114
  %13 = load i24, i24* %12, align 4, !dbg !1114
  %14 = and i24 %13, 2097152, !dbg !1114
  %15 = icmp eq i24 %14, 0, !dbg !1116
  br i1 %15, label %16, label %19, !dbg !1117

; <label>:16:                                     ; preds = %10, %5
  %17 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 1, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.hfp_con* %17, metadata !1101, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata %struct.hfp_con* %17, metadata !1101, metadata !DIExpression()), !dbg !1103
  %18 = icmp ult %struct.hfp_con* %17, %4, !dbg !1121
  br i1 %18, label %5, label %19, !dbg !1106, !llvm.loop !1123

; <label>:19:                                     ; preds = %16, %10
  %20 = phi %struct.hfp_con* [ %6, %10 ], [ null, %16 ]
  ret %struct.hfp_con* %20, !dbg !1125
}

; Function Attrs: optsize
declare void @rfcomm_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, [6 x i8]*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc i32 @send_battery_level(i8* nocapture readonly) unnamed_addr #2 section ".bt_stack_code" !dbg !1126 {
  %2 = alloca [25 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 0, metadata !1131, metadata !DIExpression()), !dbg !1135
  %3 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 0, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %3) #11, !dbg !1136
  tail call void @llvm.dbg.declare(metadata [25 x i8]* %2, metadata !1132, metadata !DIExpression()), !dbg !1137
  call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 0, i32 25, i32 1, i1 false), !dbg !1138
  %4 = tail call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* %0) #10, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.hfp_con* %4, metadata !1133, metadata !DIExpression()), !dbg !1140
  %5 = icmp eq %struct.hfp_con* %4, null, !dbg !1141
  br i1 %5, label %107, label %6, !dbg !1143

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %4, i32 0, i32 0, i32 8, i32 2, !dbg !1144
  %8 = load i8, i8* %7, align 2, !dbg !1144, !tbaa !525
  %9 = icmp eq i8 %8, 3, !dbg !1146
  br i1 %9, label %10, label %56, !dbg !1147

; <label>:10:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i8 100, metadata !1131, metadata !DIExpression()), !dbg !1135
  %11 = load i8, i8* @hfp_more_feature_hf_indicators, align 1, !dbg !1148, !tbaa !525
  %12 = icmp eq i8 %11, 0, !dbg !1148
  br i1 %12, label %82, label %13, !dbg !1151

; <label>:13:                                     ; preds = %10
  %14 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1152, !tbaa !483
  %15 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %14, i32 0, i32 14, !dbg !1155
  %16 = load i32 ()*, i32 ()** %15, align 4, !dbg !1155, !tbaa !1156
  %17 = icmp eq i32 ()* %16, null, !dbg !1152
  br i1 %17, label %24, label %18, !dbg !1157

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 %16() #9, !dbg !1158
  %20 = trunc i32 %19 to i8, !dbg !1158
  call void @llvm.dbg.value(metadata i8 %20, metadata !1131, metadata !DIExpression()), !dbg !1135
  %21 = and i32 %19, 255, !dbg !1160
  %22 = icmp ugt i32 %21, 100, !dbg !1162
  %23 = select i1 %22, i8 100, i8 %20, !dbg !1163
  call void @llvm.dbg.value(metadata i8 %23, metadata !1131, metadata !DIExpression()), !dbg !1135
  br label %24, !dbg !1164

; <label>:24:                                     ; preds = %18, %13
  %25 = phi i8 [ %23, %18 ], [ 100, %13 ]
  call void @llvm.dbg.value(metadata i8 %25, metadata !1131, metadata !DIExpression()), !dbg !1135
  %26 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1165, !tbaa !525
  %27 = icmp slt i8 %26, 0, !dbg !1165
  br i1 %27, label %28, label %31, !dbg !1167

; <label>:28:                                     ; preds = %24
  %29 = zext i8 %25 to i32, !dbg !1168
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0), i32 %29) #10, !dbg !1168
  br label %31, !dbg !1168

; <label>:31:                                     ; preds = %28, %24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 14, i32 1, i1 false), !dbg !1170
  %32 = icmp eq i8 %25, 100, !dbg !1171
  br i1 %32, label %33, label %36, !dbg !1173

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 10, !dbg !1174
  store i8 49, i8* %34, align 1, !dbg !1176, !tbaa !525
  %35 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 11, !dbg !1177
  store i8 48, i8* %35, align 1, !dbg !1178, !tbaa !525
  br label %49, !dbg !1179

; <label>:36:                                     ; preds = %31
  %37 = icmp ult i8 %25, 10, !dbg !1180
  br i1 %37, label %43, label %38, !dbg !1183

; <label>:38:                                     ; preds = %36
  %39 = udiv i8 %25, 10, !dbg !1185
  %40 = add nuw nsw i8 %39, 48, !dbg !1187
  %41 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 10, !dbg !1188
  store i8 %40, i8* %41, align 1, !dbg !1189, !tbaa !525
  %42 = urem i8 %25, 10, !dbg !1190
  br label %43

; <label>:43:                                     ; preds = %38, %36
  %44 = phi i8 [ %42, %38 ], [ %25, %36 ]
  %45 = phi i32 [ 11, %38 ], [ 10, %36 ]
  %46 = phi i32 [ 12, %38 ], [ 11, %36 ]
  %47 = phi i32 [ 13, %38 ], [ 12, %36 ]
  %48 = add i8 %44, 48
  br label %49

; <label>:49:                                     ; preds = %43, %33
  %50 = phi i32 [ %45, %43 ], [ 12, %33 ]
  %51 = phi i8 [ %48, %43 ], [ 48, %33 ]
  %52 = phi i32 [ %46, %43 ], [ 13, %33 ]
  %53 = phi i32 [ %47, %43 ], [ 14, %33 ]
  %54 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 %50
  store i8 %51, i8* %54, align 1, !tbaa !525
  %55 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 %52
  store i8 13, i8* %55, align 1, !tbaa !525
  br label %77, !dbg !1191

; <label>:56:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i8 9, metadata !1131, metadata !DIExpression()), !dbg !1135
  %57 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1192, !tbaa !483
  %58 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %57, i32 0, i32 3, !dbg !1195
  %59 = load i32 ()*, i32 ()** %58, align 4, !dbg !1195, !tbaa !1196
  %60 = icmp eq i32 ()* %59, null, !dbg !1192
  br i1 %60, label %67, label %61, !dbg !1197

; <label>:61:                                     ; preds = %56
  %62 = tail call i32 %59() #9, !dbg !1198
  %63 = trunc i32 %62 to i8, !dbg !1198
  call void @llvm.dbg.value(metadata i8 %63, metadata !1131, metadata !DIExpression()), !dbg !1135
  %64 = and i32 %62, 254, !dbg !1200
  %65 = icmp ugt i32 %64, 9, !dbg !1202
  %66 = select i1 %65, i8 9, i8 %63, !dbg !1203
  call void @llvm.dbg.value(metadata i8 %66, metadata !1131, metadata !DIExpression()), !dbg !1135
  br label %67, !dbg !1204

; <label>:67:                                     ; preds = %61, %56
  %68 = phi i8 [ %66, %61 ], [ 9, %56 ]
  call void @llvm.dbg.value(metadata i8 %68, metadata !1131, metadata !DIExpression()), !dbg !1135
  %69 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1205, !tbaa !525
  %70 = icmp slt i8 %69, 0, !dbg !1205
  br i1 %70, label %71, label %74, !dbg !1207

; <label>:71:                                     ; preds = %67
  %72 = zext i8 %68 to i32, !dbg !1208
  %73 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i32 %72) #10, !dbg !1208
  br label %74, !dbg !1208

; <label>:74:                                     ; preds = %71, %67
  %75 = call i8* @strcpy(i8* nonnull %3, i8* getelementptr inbounds ([19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 7, i32 0)) #10, !dbg !1210
  %76 = add i8 %68, 48, !dbg !1211
  br label %77

; <label>:77:                                     ; preds = %74, %49
  %78 = phi i8 [ %25, %49 ], [ %68, %74 ]
  %79 = phi i32 [ %53, %49 ], [ 19, %74 ]
  %80 = phi i8 [ 0, %49 ], [ %76, %74 ]
  call void @llvm.dbg.value(metadata i8 %78, metadata !1131, metadata !DIExpression()), !dbg !1135
  %81 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i32 0, i32 %79
  store i8 %80, i8* %81, align 1, !tbaa !525
  br label %82, !dbg !1212

; <label>:82:                                     ; preds = %77, %10
  %83 = phi i8 [ %78, %77 ], [ 100, %10 ]
  call void @llvm.dbg.value(metadata i8 %83, metadata !1131, metadata !DIExpression()), !dbg !1135
  %84 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %4, i32 0, i32 0, i32 4, !dbg !1214
  %85 = load i8, i8* %84, align 2, !dbg !1214, !tbaa !1215
  %86 = icmp eq i8 %85, -1, !dbg !1216
  br i1 %86, label %107, label %87, !dbg !1217

; <label>:87:                                     ; preds = %82
  %88 = icmp eq i8 %85, %83, !dbg !1218
  br i1 %88, label %89, label %101, !dbg !1220

; <label>:89:                                     ; preds = %87
  call void @llvm.dbg.value(metadata %struct.hfp_con* %4, metadata !1014, metadata !DIExpression()), !dbg !1221
  %90 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %4, i32 0, i32 0, i32 6, !dbg !1224
  %91 = bitcast [3 x i8]* %90 to i24*, !dbg !1224
  %92 = load i24, i24* %91, align 4, !dbg !1224
  %93 = lshr i24 %92, 16, !dbg !1224
  %94 = and i24 %93, 31, !dbg !1224
  %95 = zext i24 %94 to i32, !dbg !1224
  %96 = load i8*, i8** bitcast (%struct.hfp_stack_t** @hfp_stack to i8**), align 4, !dbg !1225, !tbaa !483
  %97 = load i8, i8* %96, align 4, !dbg !1226
  %98 = and i8 %97, 31, !dbg !1226
  %99 = zext i8 %98 to i32, !dbg !1225
  %100 = icmp ugt i32 %95, %99, !dbg !1227
  br i1 %100, label %107, label %101, !dbg !1228

; <label>:101:                                    ; preds = %89, %87
  store i8 %83, i8* %84, align 2, !dbg !1230, !tbaa !1215
  %102 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %4, i32 0, i32 0, i32 1, !dbg !1231
  %103 = load i16, i16* %102, align 2, !dbg !1231, !tbaa !414
  %104 = call i32 @strlen(i8* nonnull %3) #10, !dbg !1232
  %105 = trunc i32 %104 to i16, !dbg !1232
  %106 = call fastcc i32 @atcmd_try_send(i16 zeroext %103, i8* nonnull %3, i16 zeroext %105) #10, !dbg !1233
  br label %107, !dbg !1234

; <label>:107:                                    ; preds = %101, %89, %82, %1
  %108 = phi i32 [ %106, %101 ], [ -1000, %1 ], [ -1003, %82 ], [ -1003, %89 ]
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %3) #11, !dbg !1235
  ret i32 %108, !dbg !1235
}

; Function Attrs: nounwind optsize
define hidden i32 @hfp_send_bcc_cmd(i8* nocapture readonly) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1236 {
  %2 = alloca %struct.hfp_ioctrl_str, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1240, metadata !DIExpression()), !dbg !1242
  %3 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %2, i32 0, i32 0, i32 0, !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #11, !dbg !1243
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* %0, i32 6, i32 1, i1 false), !dbg !1244
  %4 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %2, i32 0, i32 1, !dbg !1245
  store i32 14, i32* %4, align 4, !dbg !1246, !tbaa !799
  call void @llvm.dbg.value(metadata %struct.hfp_ioctrl_str* %2, metadata !1241, metadata !DIExpression(DW_OP_deref)), !dbg !1247
  %5 = call i32 @hfp_send_cmd_io_ctrl(%struct.hfp_ioctrl_str* nonnull %2) #10, !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #11, !dbg !1249
  ret i32 %5, !dbg !1250
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define hidden void @hfp_monitor_connect_create(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1251 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1253, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i16 %2, metadata !1255, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata %struct.hfp_con* null, metadata !1256, metadata !DIExpression()), !dbg !1260
  tail call fastcc void @hfp_channel_open(i8 zeroext 0, i16 zeroext %0, i8* %1, i8 zeroext 0) #10, !dbg !1261
  call void @llvm.dbg.value(metadata i16 %0, metadata !555, metadata !DIExpression()), !dbg !1262
  %4 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1264
  %5 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 4, i32 0, !dbg !1264
  %6 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 4, i32 1
  br label %7, !dbg !1265

; <label>:7:                                      ; preds = %18, %3
  %8 = phi %struct.hfp_con* [ %5, %3 ], [ %19, %18 ]
  %9 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 0, i32 0, i32 3, !dbg !1266
  %10 = load i16, i16* %9, align 4, !dbg !1266, !tbaa !544
  %11 = icmp eq i16 %10, %0, !dbg !1267
  br i1 %11, label %12, label %18, !dbg !1268

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 0, i32 0, i32 6, !dbg !1269
  %14 = bitcast [3 x i8]* %13 to i24*, !dbg !1269
  %15 = load i24, i24* %14, align 4, !dbg !1269
  %16 = and i24 %15, 2097152, !dbg !1269
  %17 = icmp eq i24 %16, 0, !dbg !1270
  br i1 %17, label %18, label %21, !dbg !1271

; <label>:18:                                     ; preds = %12, %7
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 1, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.hfp_con* %19, metadata !560, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata %struct.hfp_con* %19, metadata !560, metadata !DIExpression()), !dbg !1273
  %20 = icmp ult %struct.hfp_con* %19, %6, !dbg !1274
  br i1 %20, label %7, label %21, !dbg !1265, !llvm.loop !583

; <label>:21:                                     ; preds = %18, %12
  %22 = phi %struct.hfp_con* [ %8, %12 ], [ null, %18 ]
  call void @llvm.dbg.value(metadata %struct.hfp_con* %22, metadata !1256, metadata !DIExpression()), !dbg !1260
  %23 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1275, !tbaa !483
  %24 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %23, i32 0, i32 5, !dbg !1277
  %25 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %24, align 4, !dbg !1277, !tbaa !1278
  %26 = icmp eq void (i8*, i32, i32, i8)* %25, null, !dbg !1275
  br i1 %26, label %29, label %27, !dbg !1279

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %22, i32 0, i32 0, i32 0, i32 0, !dbg !1280
  tail call void %25(i8* %28, i32 1, i32 2, i8 zeroext 0) #9, !dbg !1282
  br label %29, !dbg !1283

; <label>:29:                                     ; preds = %27, %21
  ret void, !dbg !1284
}

; Function Attrs: nounwind optsize
define internal fastcc void @hfp_channel_open(i8 zeroext, i16 zeroext, i8*, i8 zeroext) unnamed_addr #2 section ".bt_stack_code" !dbg !1285 {
  %5 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !1292, metadata !DIExpression()), !dbg !1296
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !1297
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #11, !dbg !1297
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !1294, metadata !DIExpression()), !dbg !1298
  %7 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !1299
  call void @bt_flip_addr(i8* nonnull %6, i8* %7) #9, !dbg !1300
  %8 = call fastcc %struct.hfp_con* @__hfp_conn_for_addr(i8* nonnull %6) #10, !dbg !1301
  call void @llvm.dbg.value(metadata %struct.hfp_con* %8, metadata !1295, metadata !DIExpression()), !dbg !1302
  %9 = icmp eq %struct.hfp_con* %8, null, !dbg !1303
  %10 = icmp eq i8 %0, 0
  br i1 %9, label %11, label %15, !dbg !1305

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %34, !dbg !1306

; <label>:12:                                     ; preds = %11
  %13 = call fastcc %struct.hfp_con* @__create_hfp_conn(i8* nonnull %6) #10, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.hfp_con* %13, metadata !1295, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata %struct.hfp_con* %13, metadata !1295, metadata !DIExpression()), !dbg !1302
  %14 = icmp eq %struct.hfp_con* %13, null, !dbg !1309
  br i1 %14, label %34, label %17, !dbg !1311

; <label>:15:                                     ; preds = %4
  call void @llvm.dbg.value(metadata %struct.hfp_con* %13, metadata !1295, metadata !DIExpression()), !dbg !1302
  br i1 %10, label %17, label %16, !dbg !1312

; <label>:16:                                     ; preds = %15
  call fastcc void @__free_hfp_conn(%struct.hfp_con* nonnull %8, i8 zeroext %3) #10, !dbg !1314
  br label %34, !dbg !1317

; <label>:17:                                     ; preds = %15, %12
  %18 = phi %struct.hfp_con* [ %8, %15 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %18, i32 0, i32 0, i32 3, !dbg !1318
  store i16 %1, i16* %19, align 4, !dbg !1320, !tbaa !544
  %20 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !1321
  %21 = load i8, i8* %20, align 1, !dbg !1321, !tbaa !525
  %22 = zext i8 %21 to i16, !dbg !1321
  %23 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !1321
  %24 = load i8, i8* %23, align 1, !dbg !1321, !tbaa !525
  %25 = zext i8 %24 to i16, !dbg !1321
  %26 = shl nuw i16 %25, 8, !dbg !1321
  %27 = or i16 %26, %22, !dbg !1321
  %28 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %18, i32 0, i32 0, i32 1, !dbg !1322
  store i16 %27, i16* %28, align 2, !dbg !1323, !tbaa !414
  %29 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %18, i32 0, i32 0, i32 6, !dbg !1324
  %30 = bitcast [3 x i8]* %29 to i24*, !dbg !1324
  %31 = load i24, i24* %30, align 4, !dbg !1325
  %32 = and i24 %31, -2031617, !dbg !1325
  %33 = or i24 %32, 65536, !dbg !1325
  store i24 %33, i24* %30, align 4, !dbg !1325
  br label %34

; <label>:34:                                     ; preds = %17, %16, %12, %11
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #11, !dbg !1326
  ret void, !dbg !1327
}

; Function Attrs: nounwind optsize
define hidden i32 @hfp_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1331, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i16 %1, metadata !1332, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 0, metadata !1333, metadata !DIExpression()), !dbg !1337
  %3 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1338, !tbaa !483
  %4 = icmp eq %struct.hfp_stack_t* %3, null, !dbg !1346
  br i1 %4, label %62, label %5, !dbg !1347

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %3, i32 0, i32 4, i32 1, !dbg !1348
  %7 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %3, i32 0, i32 4, i32 0, !dbg !1352
  br label %8, !dbg !1353

; <label>:8:                                      ; preds = %15, %5
  %9 = phi %struct.hfp_con* [ %7, %5 ], [ %16, %15 ]
  %10 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 6, !dbg !1355
  %11 = bitcast [3 x i8]* %10 to i24*, !dbg !1355
  %12 = load i24, i24* %11, align 4, !dbg !1355
  %13 = and i24 %12, 2097152, !dbg !1358
  %14 = icmp eq i24 %13, 0, !dbg !1358
  br i1 %14, label %15, label %18, !dbg !1359

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 1, !dbg !1360
  call void @llvm.dbg.value(metadata %struct.hfp_con* %16, metadata !1344, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata %struct.hfp_con* %16, metadata !1344, metadata !DIExpression()), !dbg !1362
  %17 = icmp ult %struct.hfp_con* %16, %6, !dbg !1348
  br i1 %17, label %8, label %61, !dbg !1353, !llvm.loop !1363

; <label>:18:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 -120, metadata !1333, metadata !DIExpression()), !dbg !1337
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 0, i32 0, !dbg !1366
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %19, i32 136, i32 1, i1 false), !dbg !1366
  %20 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1367, !tbaa !525
  %21 = and i8 %20, 1, !dbg !1367
  %22 = icmp eq i8 %21, 0, !dbg !1367
  br i1 %22, label %29, label %23, !dbg !1369

; <label>:23:                                     ; preds = %18
  %24 = load i24, i24* %11, align 4, !dbg !1370
  %25 = and i24 %24, 15, !dbg !1370
  %26 = zext i24 %25 to i32, !dbg !1370
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %26) #10, !dbg !1370
  %28 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !525
  br label %29, !dbg !1370

; <label>:29:                                     ; preds = %23, %18
  %30 = phi i8 [ %20, %18 ], [ %28, %23 ], !dbg !1372
  %31 = and i8 %30, 1, !dbg !1372
  %32 = icmp eq i8 %31, 0, !dbg !1372
  br i1 %32, label %40, label %33, !dbg !1374

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i32 8, metadata !911, metadata !DIExpression()), !dbg !1375
  %34 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 2, !dbg !1378
  %35 = load i32, i32* %34, align 4, !dbg !1378, !tbaa !917
  %36 = lshr i32 %35, 3, !dbg !1379
  %37 = and i32 %36, 1, !dbg !1379
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %37) #10, !dbg !1380
  %39 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !525
  br label %40, !dbg !1382

; <label>:40:                                     ; preds = %33, %29
  %41 = phi i8 [ %30, %29 ], [ %39, %33 ], !dbg !1383
  %42 = and i8 %41, 1, !dbg !1383
  %43 = icmp eq i8 %42, 0, !dbg !1383
  br i1 %43, label %51, label %44, !dbg !1385

; <label>:44:                                     ; preds = %40
  %45 = load i24, i24* %11, align 4, !dbg !1386
  %46 = lshr i24 %45, 8, !dbg !1386
  %47 = and i24 %46, 15, !dbg !1386
  %48 = zext i24 %47 to i32, !dbg !1386
  %49 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %48) #10, !dbg !1386
  %50 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !525
  br label %51, !dbg !1386

; <label>:51:                                     ; preds = %44, %40
  %52 = phi i8 [ %41, %40 ], [ %50, %44 ], !dbg !1388
  %53 = and i8 %52, 1, !dbg !1388
  %54 = icmp eq i8 %53, 0, !dbg !1388
  br i1 %54, label %62, label %55, !dbg !1390

; <label>:55:                                     ; preds = %51
  %56 = load i24, i24* %11, align 4, !dbg !1391
  %57 = lshr i24 %56, 12, !dbg !1391
  %58 = and i24 %57, 15, !dbg !1391
  %59 = zext i24 %58 to i32, !dbg !1391
  %60 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %59) #10, !dbg !1391
  br label %62, !dbg !1391

; <label>:61:                                     ; preds = %15
  br label %62, !dbg !1393

; <label>:62:                                     ; preds = %61, %55, %51, %2
  %63 = phi i32 [ 136, %51 ], [ 136, %55 ], [ 0, %2 ], [ 0, %61 ]
  ret i32 %63, !dbg !1393
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @hfp_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1396, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i16 %1, metadata !1397, metadata !DIExpression()), !dbg !1401
  %3 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1402, !tbaa !483
  %4 = icmp eq %struct.hfp_stack_t* %3, null, !dbg !1404
  br i1 %4, label %118, label %5, !dbg !1405

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %3, i32 0, i32 4, i32 1, !dbg !1406
  %7 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %3, i32 0, i32 4, i32 0, !dbg !1407
  br label %8, !dbg !1408

; <label>:8:                                      ; preds = %15, %5
  %9 = phi %struct.hfp_con* [ %7, %5 ], [ %16, %15 ]
  %10 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 6, !dbg !1409
  %11 = bitcast [3 x i8]* %10 to i24*, !dbg !1409
  %12 = load i24, i24* %11, align 4, !dbg !1409
  %13 = and i24 %12, 2097152, !dbg !1410
  %14 = icmp eq i24 %13, 0, !dbg !1410
  br i1 %14, label %15, label %18, !dbg !1411

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 1, !dbg !1412
  call void @llvm.dbg.value(metadata %struct.hfp_con* %16, metadata !1344, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata %struct.hfp_con* %16, metadata !1344, metadata !DIExpression()), !dbg !1413
  %17 = icmp ult %struct.hfp_con* %16, %6, !dbg !1406
  br i1 %17, label %8, label %117, !dbg !1408, !llvm.loop !1363

; <label>:18:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 -120, metadata !1398, metadata !DIExpression()), !dbg !1414
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 0, i32 0, !dbg !1415
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %0, i32 136, i32 1, i1 false), !dbg !1415
  call void @llvm.dbg.value(metadata i32 0, metadata !1416, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32 0, metadata !1416, metadata !DIExpression()), !dbg !1422
  br label %20, !dbg !1424

; <label>:20:                                     ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ %32, %20 ]
  %22 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 9, i32 %21, i32 1, !dbg !1427
  %23 = load i8, i8* %22, align 1, !dbg !1427, !tbaa !1430
  %24 = zext i8 %23 to i32, !dbg !1432
  %25 = getelementptr inbounds [8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 %24, i32 0, !dbg !1433
  %26 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 9, i32 %21, i32 0, !dbg !1434
  store i8* %25, i8** %26, align 1, !dbg !1435, !tbaa !1436
  %27 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 10, i32 %21, i32 1, !dbg !1437
  %28 = load i8, i8* %27, align 1, !dbg !1437, !tbaa !1430
  %29 = zext i8 %28 to i32, !dbg !1438
  %30 = getelementptr inbounds [8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 %29, i32 0, !dbg !1439
  %31 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 10, i32 %21, i32 0, !dbg !1440
  store i8* %30, i8** %31, align 1, !dbg !1441, !tbaa !1436
  %32 = add nuw nsw i32 %21, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %32, metadata !1416, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i32 %32, metadata !1416, metadata !DIExpression()), !dbg !1422
  %33 = icmp eq i32 %32, 8, !dbg !1444
  br i1 %33, label %34, label %20, !dbg !1424, !llvm.loop !1446

; <label>:34:                                     ; preds = %20
  %35 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1449, !tbaa !483
  %36 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %35, i32 0, i32 0, !dbg !1451
  %37 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %36, align 4, !dbg !1451, !tbaa !1039
  %38 = icmp eq void (i8*, i32, i32)* %37, null, !dbg !1449
  br i1 %38, label %118, label %39, !dbg !1452

; <label>:39:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i32 8, metadata !911, metadata !DIExpression()), !dbg !1453
  %40 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 2, !dbg !1456
  %41 = load i32, i32* %40, align 4, !dbg !1456, !tbaa !917
  %42 = lshr i32 %41, 3, !dbg !1457
  %43 = and i32 %42, 1, !dbg !1457
  tail call void %37(i8* nonnull %19, i32 9, i32 %43) #9, !dbg !1458
  %44 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1460, !tbaa !483
  %45 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %44, i32 0, i32 0, !dbg !1461
  %46 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %45, align 4, !dbg !1461, !tbaa !1039
  %47 = load i24, i24* %11, align 4, !dbg !1462
  %48 = and i24 %47, 15, !dbg !1462
  %49 = zext i24 %48 to i32, !dbg !1462
  tail call void %46(i8* nonnull %19, i32 7, i32 %49) #9, !dbg !1460
  %50 = load i24, i24* %11, align 4, !dbg !1463
  %51 = lshr i24 %50, 8, !dbg !1463
  %52 = trunc i24 %51 to i4, !dbg !1465
  %53 = lshr i24 %50, 12, !dbg !1465
  %54 = trunc i24 %53 to i8, !dbg !1465
  switch i4 %52, label %55 [
    i4 0, label %67
    i4 5, label %67
  ], !dbg !1465

; <label>:55:                                     ; preds = %39
  %56 = and i24 %51, 15, !dbg !1463
  %57 = zext i24 %56 to i32, !dbg !1463
  %58 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1466, !tbaa !483
  %59 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %58, i32 0, i32 0, !dbg !1468
  %60 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %59, align 4, !dbg !1468, !tbaa !1039
  %61 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 3, !dbg !1469
  %62 = load i16, i16* %61, align 4, !dbg !1469, !tbaa !544
  %63 = tail call fastcc i32 @hfp_speak_gain_control(i16 zeroext %62, i32 3, i8 zeroext 0) #10, !dbg !1470
  tail call void %60(i8* nonnull %19, i32 %57, i32 %63) #9, !dbg !1471
  %64 = load i24, i24* %11, align 4
  %65 = lshr i24 %64, 12, !dbg !1473
  %66 = trunc i24 %65 to i8, !dbg !1473
  br label %67, !dbg !1473

; <label>:67:                                     ; preds = %55, %39, %39
  %68 = phi i8 [ %54, %39 ], [ %54, %39 ], [ %66, %55 ]
  %69 = and i8 %68, 15, !dbg !1474
  %70 = icmp eq i8 %69, 0, !dbg !1476
  br i1 %70, label %76, label %71, !dbg !1477

; <label>:71:                                     ; preds = %67
  %72 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1478, !tbaa !483
  %73 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %72, i32 0, i32 0, !dbg !1480
  %74 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %73, align 4, !dbg !1480, !tbaa !1039
  %75 = zext i8 %69 to i32, !dbg !1481
  tail call void %74(i8* nonnull %19, i32 8, i32 %75) #9, !dbg !1478
  br label %76, !dbg !1482

; <label>:76:                                     ; preds = %71, %67
  %77 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1483, !tbaa !525
  %78 = and i8 %77, 1, !dbg !1483
  %79 = icmp eq i8 %78, 0, !dbg !1483
  br i1 %79, label %86, label %80, !dbg !1485

; <label>:80:                                     ; preds = %76
  %81 = load i24, i24* %11, align 4, !dbg !1486
  %82 = and i24 %81, 15, !dbg !1486
  %83 = zext i24 %82 to i32, !dbg !1486
  %84 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %83) #10, !dbg !1486
  %85 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !525
  br label %86, !dbg !1486

; <label>:86:                                     ; preds = %80, %76
  %87 = phi i8 [ %77, %76 ], [ %85, %80 ], !dbg !1488
  %88 = and i8 %87, 1, !dbg !1488
  %89 = icmp eq i8 %88, 0, !dbg !1488
  br i1 %89, label %96, label %90, !dbg !1490

; <label>:90:                                     ; preds = %86
  call void @llvm.dbg.value(metadata i32 8, metadata !911, metadata !DIExpression()), !dbg !1491
  %91 = load i32, i32* %40, align 4, !dbg !1494, !tbaa !917
  %92 = lshr i32 %91, 3, !dbg !1495
  %93 = and i32 %92, 1, !dbg !1495
  %94 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %93) #10, !dbg !1496
  %95 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !525
  br label %96, !dbg !1498

; <label>:96:                                     ; preds = %90, %86
  %97 = phi i8 [ %87, %86 ], [ %95, %90 ], !dbg !1499
  %98 = and i8 %97, 1, !dbg !1499
  %99 = icmp eq i8 %98, 0, !dbg !1499
  br i1 %99, label %107, label %100, !dbg !1501

; <label>:100:                                    ; preds = %96
  %101 = load i24, i24* %11, align 4, !dbg !1502
  %102 = lshr i24 %101, 8, !dbg !1502
  %103 = and i24 %102, 15, !dbg !1502
  %104 = zext i24 %103 to i32, !dbg !1502
  %105 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %104) #10, !dbg !1502
  %106 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !525
  br label %107, !dbg !1502

; <label>:107:                                    ; preds = %100, %96
  %108 = phi i8 [ %97, %96 ], [ %106, %100 ], !dbg !1504
  %109 = and i8 %108, 1, !dbg !1504
  %110 = icmp eq i8 %109, 0, !dbg !1504
  br i1 %110, label %118, label %111, !dbg !1506

; <label>:111:                                    ; preds = %107
  %112 = load i24, i24* %11, align 4, !dbg !1507
  %113 = lshr i24 %112, 12, !dbg !1507
  %114 = and i24 %113, 15, !dbg !1507
  %115 = zext i24 %114 to i32, !dbg !1507
  %116 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %115) #10, !dbg !1507
  br label %118, !dbg !1507

; <label>:117:                                    ; preds = %15
  br label %118, !dbg !1509

; <label>:118:                                    ; preds = %117, %111, %107, %34, %2
  ret void, !dbg !1509
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @hfp_speak_gain_control(i16 zeroext, i32, i8 zeroext) unnamed_addr #2 section ".bt_stack_code" !dbg !1511 {
  %4 = alloca [25 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1515, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %2, metadata !1517, metadata !DIExpression()), !dbg !1522
  %5 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 0, !dbg !1523
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %5) #11, !dbg !1523
  tail call void @llvm.dbg.declare(metadata [25 x i8]* %4, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.memset.p0i8.i32(i8* nonnull %5, i8 0, i32 25, i32 1, i1 false), !dbg !1525
  call void @llvm.dbg.value(metadata i16 %0, metadata !555, metadata !DIExpression()), !dbg !1526
  %6 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1528
  %7 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %6, i32 0, i32 4, i32 0, !dbg !1528
  %8 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %6, i32 0, i32 4, i32 1
  br label %9, !dbg !1529

; <label>:9:                                      ; preds = %20, %3
  %10 = phi %struct.hfp_con* [ %7, %3 ], [ %21, %20 ]
  %11 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %10, i32 0, i32 0, i32 3, !dbg !1530
  %12 = load i16, i16* %11, align 4, !dbg !1530, !tbaa !544
  %13 = icmp eq i16 %12, %0, !dbg !1531
  br i1 %13, label %14, label %20, !dbg !1532

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %10, i32 0, i32 0, i32 6, !dbg !1533
  %16 = bitcast [3 x i8]* %15 to i24*, !dbg !1533
  %17 = load i24, i24* %16, align 4, !dbg !1533
  %18 = and i24 %17, 2097152, !dbg !1533
  %19 = icmp eq i24 %18, 0, !dbg !1534
  br i1 %19, label %20, label %23, !dbg !1535

; <label>:20:                                     ; preds = %14, %9
  %21 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %10, i32 1, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.hfp_con* %21, metadata !560, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata %struct.hfp_con* %21, metadata !560, metadata !DIExpression()), !dbg !1537
  %22 = icmp ult %struct.hfp_con* %21, %8, !dbg !1538
  br i1 %22, label %9, label %77, !dbg !1529, !llvm.loop !583

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.hfp_con* %10, metadata !1519, metadata !DIExpression()), !dbg !1539
  switch i32 %1, label %78 [
    i32 0, label %24
    i32 1, label %36
    i32 2, label %46
    i32 3, label %55
  ], !dbg !1540

; <label>:24:                                     ; preds = %23
  %25 = trunc i24 %17 to i8, !dbg !1541
  %26 = and i8 %25, 15, !dbg !1541
  %27 = icmp eq i8 %26, 15, !dbg !1544
  br i1 %27, label %34, label %28, !dbg !1545

; <label>:28:                                     ; preds = %24
  %29 = add i8 %25, 1, !dbg !1546
  %30 = and i8 %29, 15, !dbg !1546
  %31 = zext i8 %30 to i24, !dbg !1546
  %32 = and i24 %17, -16, !dbg !1546
  %33 = or i24 %31, %32, !dbg !1546
  br label %58, !dbg !1548

; <label>:34:                                     ; preds = %24
  %35 = or i24 %17, 15, !dbg !1549
  br label %58

; <label>:36:                                     ; preds = %23
  %37 = trunc i24 %17 to i8, !dbg !1551
  %38 = and i8 %37, 15, !dbg !1551
  %39 = icmp eq i8 %38, 0, !dbg !1553
  br i1 %39, label %60, label %40, !dbg !1554

; <label>:40:                                     ; preds = %36
  %41 = add i8 %37, 15, !dbg !1555
  %42 = and i8 %41, 15, !dbg !1555
  %43 = zext i8 %42 to i24, !dbg !1555
  %44 = and i24 %17, -16, !dbg !1555
  %45 = or i24 %43, %44, !dbg !1555
  br label %58, !dbg !1557

; <label>:46:                                     ; preds = %23
  %47 = icmp ugt i8 %2, 15, !dbg !1558
  br i1 %47, label %48, label %50, !dbg !1560

; <label>:48:                                     ; preds = %46
  %49 = or i24 %17, 15, !dbg !1561
  br label %58, !dbg !1563

; <label>:50:                                     ; preds = %46
  %51 = and i8 %2, 15, !dbg !1564
  %52 = zext i8 %51 to i24, !dbg !1564
  %53 = and i24 %17, -16, !dbg !1564
  %54 = or i24 %53, %52, !dbg !1564
  br label %58

; <label>:55:                                     ; preds = %23
  %56 = and i24 %17, 15, !dbg !1566
  %57 = zext i24 %56 to i32, !dbg !1566
  br label %78, !dbg !1567

; <label>:58:                                     ; preds = %50, %48, %40, %34, %28
  %59 = phi i24 [ %49, %48 ], [ %54, %50 ], [ %45, %40 ], [ %33, %28 ], [ %35, %34 ]
  store i24 %59, i24* %16, align 4
  br label %60, !dbg !1568

; <label>:60:                                     ; preds = %58, %36
  %61 = call i8* @strcpy(i8* nonnull %5, i8* getelementptr inbounds ([19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 3, i32 0)) #10, !dbg !1568
  %62 = load i24, i24* %16, align 4, !dbg !1569
  %63 = and i24 %62, 15, !dbg !1569
  %64 = udiv i24 %63, 10, !dbg !1570
  %65 = trunc i24 %64 to i8, !dbg !1571
  %66 = or i8 %65, 48, !dbg !1571
  %67 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 7, !dbg !1572
  store i8 %66, i8* %67, align 1, !dbg !1573, !tbaa !525
  %68 = urem i24 %63, 10, !dbg !1574
  %69 = trunc i24 %68 to i8, !dbg !1575
  %70 = or i8 %69, 48, !dbg !1575
  %71 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 8, !dbg !1576
  store i8 %70, i8* %71, align 1, !dbg !1577, !tbaa !525
  %72 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %10, i32 0, i32 0, i32 1, !dbg !1578
  %73 = load i16, i16* %72, align 2, !dbg !1578, !tbaa !414
  %74 = call i32 @strlen(i8* nonnull %5) #10, !dbg !1579
  %75 = trunc i32 %74 to i16, !dbg !1579
  %76 = call fastcc i32 @atcmd_try_send(i16 zeroext %73, i8* nonnull %5, i16 zeroext %75) #10, !dbg !1580
  br label %78, !dbg !1582

; <label>:77:                                     ; preds = %20
  br label %78, !dbg !1583

; <label>:78:                                     ; preds = %77, %60, %55, %23
  %79 = phi i32 [ %57, %55 ], [ %76, %60 ], [ -1001, %23 ], [ -1000, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %5) #11, !dbg !1583
  ret i32 %79, !dbg !1583
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @check_hfp_resend_data() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1584 {
  call void @llvm.dbg.value(metadata %struct.hfp_con* null, metadata !1588, metadata !DIExpression()), !dbg !1589
  %1 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1590, !tbaa !483
  %2 = icmp eq %struct.hfp_stack_t* %1, null, !dbg !1592
  br i1 %2, label %22, label %3, !dbg !1593

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.hfp_con* %5, metadata !1588, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata %struct.hfp_con* %5, metadata !1588, metadata !DIExpression()), !dbg !1589
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %1, i32 0, i32 4, i32 1, !dbg !1594
  %5 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %1, i32 0, i32 4, i32 0, !dbg !1598
  br label %6, !dbg !1599

; <label>:6:                                      ; preds = %17, %3
  %7 = phi %struct.hfp_con* [ %5, %3 ], [ %18, %17 ]
  %8 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %7, i32 0, i32 0, i32 6, !dbg !1601
  %9 = bitcast [3 x i8]* %8 to i24*, !dbg !1601
  %10 = load i24, i24* %9, align 4, !dbg !1601
  %11 = and i24 %10, 2097152, !dbg !1604
  %12 = icmp eq i24 %11, 0, !dbg !1604
  br i1 %12, label %17, label %13, !dbg !1605

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %7, i32 0, i32 1, !dbg !1606
  %15 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %14, align 4, !dbg !1606, !tbaa !620
  %16 = icmp eq %struct.btstack_linked_item* %15, null, !dbg !1609
  br i1 %16, label %17, label %20, !dbg !1610

; <label>:17:                                     ; preds = %13, %6
  %18 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %7, i32 1, !dbg !1611
  call void @llvm.dbg.value(metadata %struct.hfp_con* %18, metadata !1588, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata %struct.hfp_con* %18, metadata !1588, metadata !DIExpression()), !dbg !1589
  %19 = icmp ult %struct.hfp_con* %18, %4, !dbg !1594
  br i1 %19, label %6, label %20, !dbg !1599, !llvm.loop !1613

; <label>:20:                                     ; preds = %17, %13
  %21 = phi i8 [ 1, %13 ], [ 0, %17 ]
  br label %22, !dbg !1615

; <label>:22:                                     ; preds = %20, %0
  %23 = phi i8 [ 0, %0 ], [ %21, %20 ]
  ret i8 %23, !dbg !1615
}

; Function Attrs: norecurse nounwind optsize
define internal i32 @hfp_suspend() #6 section ".bt_stack_code" !dbg !1616 {
  %1 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1620, !tbaa !483
  %2 = icmp eq %struct.hfp_stack_t* %1, null, !dbg !1622
  br i1 %2, label %7, label %3, !dbg !1623

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %1, i32 0, i32 0, !dbg !1624
  %5 = load i8, i8* %4, align 4, !dbg !1625
  %6 = or i8 %5, 32, !dbg !1625
  store i8 %6, i8* %4, align 4, !dbg !1625
  br label %7, !dbg !1626

; <label>:7:                                      ; preds = %3, %0
  ret i32 0, !dbg !1627
}

; Function Attrs: norecurse nounwind optsize
define internal i32 @hfp_resume() #6 section ".bt_stack_code" !dbg !1628 {
  %1 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1629, !tbaa !483
  %2 = icmp eq %struct.hfp_stack_t* %1, null, !dbg !1631
  br i1 %2, label %7, label %3, !dbg !1632

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %1, i32 0, i32 0, !dbg !1633
  %5 = load i8, i8* %4, align 4, !dbg !1634
  %6 = and i8 %5, -33, !dbg !1634
  store i8 %6, i8* %4, align 4, !dbg !1634
  br label %7, !dbg !1635

; <label>:7:                                      ; preds = %3, %0
  ret i32 0, !dbg !1636
}

; Function Attrs: nounwind optsize
define internal i32 @hfp_release() #2 section ".bt_stack_code" !dbg !1637 {
  call void @llvm.dbg.value(metadata %struct.hfp_con* null, metadata !1639, metadata !DIExpression()), !dbg !1640
  %1 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1641, !tbaa !483
  %2 = icmp eq %struct.hfp_stack_t* %1, null, !dbg !1643
  br i1 %2, label %22, label %3, !dbg !1644

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.hfp_con* %5, metadata !1639, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %struct.hfp_con* %5, metadata !1639, metadata !DIExpression()), !dbg !1640
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %1, i32 0, i32 4, i32 1, !dbg !1645
  %5 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %1, i32 0, i32 4, i32 0, !dbg !1649
  br label %8, !dbg !1650

; <label>:6:                                      ; preds = %8
  call void @llvm.dbg.value(metadata %struct.hfp_con* %15, metadata !1639, metadata !DIExpression()), !dbg !1640
  %7 = icmp ult %struct.hfp_con* %15, %4, !dbg !1645
  br i1 %7, label %8, label %16, !dbg !1650, !llvm.loop !1652

; <label>:8:                                      ; preds = %6, %3
  %9 = phi %struct.hfp_con* [ %5, %3 ], [ %15, %6 ]
  %10 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 6, !dbg !1654
  %11 = bitcast [3 x i8]* %10 to i24*, !dbg !1654
  %12 = load i24, i24* %11, align 4, !dbg !1654
  %13 = and i24 %12, 2097152, !dbg !1657
  %14 = icmp eq i24 %13, 0, !dbg !1657
  %15 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 1, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.hfp_con* %15, metadata !1639, metadata !DIExpression()), !dbg !1640
  br i1 %14, label %6, label %21, !dbg !1660

; <label>:16:                                     ; preds = %6
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !1661
  %18 = load i8*, i8** bitcast (%struct.hfp_stack_t** @hfp_stack to i8**), align 4, !dbg !1662, !tbaa !483
  %19 = load i8, i8* %18, align 4, !dbg !1663
  %20 = and i8 %19, -33, !dbg !1663
  store i8 %20, i8* %18, align 4, !dbg !1663
  store %struct.hfp_stack_t* null, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1664, !tbaa !483
  br label %22, !dbg !1665

; <label>:21:                                     ; preds = %8
  br label %22, !dbg !1666

; <label>:22:                                     ; preds = %21, %16, %0
  %23 = phi i32 [ 0, %16 ], [ 0, %0 ], [ 1, %21 ]
  ret i32 %23, !dbg !1666
}

; Function Attrs: nounwind optsize
define internal fastcc void @__free_hfp_conn(%struct.hfp_con*, i8 zeroext) unnamed_addr #2 section ".bt_stack_code" !dbg !1667 {
  %3 = icmp eq %struct.hfp_con* %0, null, !dbg !1678
  br i1 %3, label %54, label %4, !dbg !1680

; <label>:4:                                      ; preds = %2
  %5 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1681, !tbaa !483
  %6 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %5, i32 0, i32 5, !dbg !1683
  %7 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %6, align 4, !dbg !1683, !tbaa !1278
  %8 = icmp eq void (i8*, i32, i32, i8)* %7, null, !dbg !1681
  br i1 %8, label %11, label %9, !dbg !1684

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 0, i32 0, !dbg !1685
  tail call void %7(i8* %10, i32 0, i32 2, i8 zeroext %1) #9, !dbg !1687
  br label %11, !dbg !1688

; <label>:11:                                     ; preds = %9, %4
  %12 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 6, !dbg !1689
  %13 = bitcast [3 x i8]* %12 to i24*, !dbg !1689
  %14 = load i24, i24* %13, align 4, !dbg !1690
  %15 = and i24 %14, -2097153, !dbg !1690
  store i24 %15, i24* %13, align 4, !dbg !1690
  %16 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1691, !tbaa !525
  %17 = icmp slt i8 %16, 0, !dbg !1691
  %18 = trunc i24 %14 to i8, !dbg !1693
  br i1 %17, label %19, label %25, !dbg !1693

; <label>:19:                                     ; preds = %11
  %20 = and i24 %14, 15, !dbg !1694
  %21 = zext i24 %20 to i32, !dbg !1694
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %21) #10, !dbg !1694
  %23 = load i24, i24* %13, align 4
  %24 = trunc i24 %23 to i8, !dbg !1694
  br label %25, !dbg !1694

; <label>:25:                                     ; preds = %19, %11
  %26 = phi i8 [ %24, %19 ], [ %18, %11 ]
  %27 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 0, i32 0, !dbg !1696
  %28 = and i8 %26, 15, !dbg !1697
  %29 = tail call zeroext i8 @hfp_volume_interface(i8* %27, i8 zeroext %28) #9, !dbg !1698
  tail call void @llvm.memset.p0i8.i32(i8* %27, i8 0, i32 6, i32 4, i1 false), !dbg !1699
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* null, metadata !1673, metadata !DIExpression()), !dbg !1700
  %30 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 1, !dbg !1701
  %31 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %30, align 4, !dbg !1701, !tbaa !620
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %31, metadata !1673, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %31, metadata !1673, metadata !DIExpression()), !dbg !1700
  %32 = icmp eq %struct.btstack_linked_item* %31, null, !dbg !1702
  br i1 %32, label %42, label %33, !dbg !1702

; <label>:33:                                     ; preds = %25
  br label %34, !dbg !1700

; <label>:34:                                     ; preds = %34, %33
  %35 = phi %struct.btstack_linked_item* [ %38, %34 ], [ %31, %33 ]
  %36 = bitcast %struct.btstack_linked_item* %35 to i8*, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %35, metadata !1674, metadata !DIExpression()), !dbg !1704
  %37 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %35, i32 0, i32 0, !dbg !1705
  %38 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %37, align 4, !dbg !1705, !tbaa !1706
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %38, metadata !1673, metadata !DIExpression()), !dbg !1700
  %39 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %30, %struct.btstack_linked_item* nonnull %35) #9, !dbg !1707
  tail call void @free(i8* %36) #10, !dbg !1708
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %38, metadata !1673, metadata !DIExpression()), !dbg !1700
  %40 = icmp eq %struct.btstack_linked_item* %38, null, !dbg !1702
  br i1 %40, label %41, label %34, !dbg !1702, !llvm.loop !1709

; <label>:41:                                     ; preds = %34
  br label %42, !dbg !1712

; <label>:42:                                     ; preds = %41, %25
  call void @llvm.dbg.value(metadata %struct.hfp_con* %0, metadata !1715, metadata !DIExpression()), !dbg !1712
  %43 = load i24, i24* %13, align 4, !dbg !1717
  %44 = and i24 %43, -6230016, !dbg !1718
  %45 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 1, !dbg !1719
  %46 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 4, !dbg !1720
  %47 = bitcast i16* %45 to i64*, !dbg !1721
  store i64 0, i64* %47, align 2, !dbg !1721
  store i8 -1, i8* %46, align 2, !dbg !1722, !tbaa !1215
  %48 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 7, !dbg !1723
  %49 = load i8, i8* %48, align 1, !dbg !1724
  %50 = and i8 %49, -8, !dbg !1724
  store i8 %50, i8* %48, align 1, !dbg !1724
  %51 = or i24 %44, 255, !dbg !1725
  store i24 %51, i24* %13, align 4, !dbg !1725
  %52 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %0, i32 0, i32 0, i32 9, i32 0, !dbg !1726
  %53 = bitcast %struct.__INDICATOR* %52 to i8*, !dbg !1727
  tail call void @llvm.memset.p0i8.i64(i8* %53, i8 -4, i64 112, i32 1, i1 false) #11, !dbg !1728
  br label %54

; <label>:54:                                     ; preds = %42, %2
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc zeroext i8 @hfp_parse_rfcomm_data(i16 zeroext, i8* nocapture readonly, i16 zeroext) unnamed_addr #7 section ".bt_stack_code" !dbg !1729 {
  %4 = alloca [25 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [25 x i8]* %4, metadata !1741, metadata !DIExpression()), !dbg !1752
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !1734, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8* %1, metadata !1735, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i16 %2, metadata !1736, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i32 0, metadata !1739, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %1, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 %2, metadata !1780, metadata !DIExpression()), !dbg !1783
  %9 = zext i16 %2 to i32, !dbg !1784
  %10 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1786, !tbaa !483
  %11 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %10, i32 0, i32 1, i32 1, !dbg !1787
  %12 = load i16, i16* %11, align 1, !dbg !1787, !tbaa !491
  %13 = zext i16 %12 to i32, !dbg !1786
  %14 = add nuw nsw i32 %13, %9, !dbg !1788
  %15 = icmp ult i32 %14, 248, !dbg !1789
  br i1 %15, label %16, label %1696, !dbg !1790

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %10, i32 0, i32 2, i32 %13, !dbg !1791
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %1, i32 %9, i32 1, i1 false) #11, !dbg !1793
  %18 = add i16 %12, %2, !dbg !1794
  store i16 %18, i16* %11, align 1, !dbg !1794, !tbaa !491
  %19 = add nsw i32 %9, -2, !dbg !1795
  %20 = getelementptr inbounds i8, i8* %1, i32 %19, !dbg !1797
  %21 = load i8, i8* %20, align 1, !dbg !1797, !tbaa !525
  %22 = icmp eq i8 %21, 13, !dbg !1798
  br i1 %22, label %23, label %1696, !dbg !1799

; <label>:23:                                     ; preds = %16
  %24 = add nsw i32 %9, -1, !dbg !1800
  %25 = getelementptr inbounds i8, i8* %1, i32 %24, !dbg !1802
  %26 = load i8, i8* %25, align 1, !dbg !1802, !tbaa !525
  %27 = icmp eq i8 %26, 10, !dbg !1803
  %28 = icmp ugt i16 %18, 2, !dbg !1804
  %29 = and i1 %28, %27, !dbg !1806
  br i1 %29, label %30, label %1696, !dbg !1806

; <label>:30:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1771
  %31 = bitcast i32* %8 to i8*
  %32 = bitcast i32* %7 to i8*
  %33 = load i8, i8* @more_hfp_cmd_support, align 1
  %34 = icmp eq i8 %33, 0
  %35 = bitcast i32* %6 to i8*
  %36 = bitcast i32* %5 to i8*
  %37 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 0
  %38 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 7
  br label %39, !dbg !1807

; <label>:39:                                     ; preds = %80, %30
  %40 = phi %struct.hfp_stack_t* [ %10, %30 ], [ %82, %80 ], !dbg !1809
  %41 = phi i32 [ 0, %30 ], [ %68, %80 ]
  %42 = phi i8 [ 0, %30 ], [ %81, %80 ]
  br label %43, !dbg !1774

; <label>:43:                                     ; preds = %49, %39
  %44 = phi i32 [ %41, %39 ], [ %48, %49 ]
  call void @llvm.dbg.value(metadata i32 %44, metadata !1740, metadata !DIExpression()), !dbg !1774
  %45 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 2, i32 %44, !dbg !1810
  %46 = load i8, i8* %45, align 1, !dbg !1810, !tbaa !525
  %47 = icmp eq i8 %46, 13, !dbg !1812
  %48 = add i32 %44, 1
  br i1 %47, label %50, label %49, !dbg !1813

; <label>:49:                                     ; preds = %50, %43
  br label %43, !dbg !1774, !llvm.loop !1814

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 2, i32 %48, !dbg !1817
  %52 = load i8, i8* %51, align 1, !dbg !1817, !tbaa !525
  %53 = icmp eq i8 %52, 10, !dbg !1819
  br i1 %53, label %54, label %49, !dbg !1820

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.value(metadata i32 %44, metadata !1738, metadata !DIExpression()), !dbg !1772
  %55 = add i32 %44, 2, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %55, metadata !1740, metadata !DIExpression()), !dbg !1774
  br label %56, !dbg !1823

; <label>:56:                                     ; preds = %62, %54
  %57 = phi i32 [ %55, %54 ], [ %61, %62 ]
  call void @llvm.dbg.value(metadata i32 %57, metadata !1740, metadata !DIExpression()), !dbg !1774
  %58 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 2, i32 %57, !dbg !1824
  %59 = load i8, i8* %58, align 1, !dbg !1824, !tbaa !525
  %60 = icmp eq i8 %59, 13, !dbg !1825
  %61 = add i32 %57, 1
  br i1 %60, label %63, label %62, !dbg !1826

; <label>:62:                                     ; preds = %63, %56
  br label %56, !dbg !1774, !llvm.loop !1827

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 2, i32 %61, !dbg !1829
  %65 = load i8, i8* %64, align 1, !dbg !1829, !tbaa !525
  %66 = icmp eq i8 %65, 10, !dbg !1830
  br i1 %66, label %67, label %62, !dbg !1831

; <label>:67:                                     ; preds = %63
  %68 = add i32 %57, 2, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %68, metadata !1740, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %68, metadata !1739, metadata !DIExpression()), !dbg !1773
  %69 = icmp ugt i32 %68, %44, !dbg !1833
  br i1 %69, label %87, label %80, !dbg !1835

; <label>:70:                                     ; preds = %1449
  br label %80, !dbg !1774

; <label>:71:                                     ; preds = %1442
  br label %80, !dbg !1774

; <label>:72:                                     ; preds = %1676, %1660
  br label %80, !dbg !1774

; <label>:73:                                     ; preds = %1623
  br label %80, !dbg !1774

; <label>:74:                                     ; preds = %1590
  br label %80, !dbg !1774

; <label>:75:                                     ; preds = %1582
  br label %80, !dbg !1774

; <label>:76:                                     ; preds = %1491
  br label %80, !dbg !1774

; <label>:77:                                     ; preds = %1484
  br label %80, !dbg !1774

; <label>:78:                                     ; preds = %1563
  br label %80, !dbg !1774

; <label>:79:                                     ; preds = %275
  br label %80, !dbg !1774

; <label>:80:                                     ; preds = %1692, %1682, %1679, %1651, %1648, %1615, %1592, %1572, %1569, %1566, %1550, %1511, %1499, %1494, %1473, %1469, %1457, %1452, %1432, %1393, %1347, %1346, %1287, %844, %741, %369, %278, %232, %217, %213, %148, %145, %120, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %67
  %81 = phi i8 [ %42, %67 ], [ %42, %278 ], [ %42, %369 ], [ %42, %741 ], [ %42, %844 ], [ %42, %1287 ], [ %42, %1346 ], [ %42, %1347 ], [ %42, %1393 ], [ %42, %1432 ], [ %42, %1452 ], [ %42, %1457 ], [ %42, %1469 ], [ %42, %1473 ], [ %42, %1494 ], [ %42, %1499 ], [ %42, %1511 ], [ %42, %1550 ], [ %42, %1566 ], [ %42, %1569 ], [ %42, %1572 ], [ %42, %1592 ], [ %42, %1615 ], [ %42, %1648 ], [ %42, %1651 ], [ %42, %1679 ], [ %42, %1682 ], [ %42, %1692 ], [ 1, %232 ], [ 1, %148 ], [ 1, %145 ], [ 1, %213 ], [ 1, %217 ], [ 1, %120 ], [ %42, %70 ], [ %42, %71 ], [ %42, %72 ], [ %42, %73 ], [ %42, %74 ], [ %42, %75 ], [ %42, %76 ], [ %42, %77 ], [ %42, %78 ], [ %42, %79 ]
  call void @llvm.dbg.value(metadata i32 %68, metadata !1740, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %81, metadata !1737, metadata !DIExpression()), !dbg !1771
  %82 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !1836, !tbaa !483
  %83 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %82, i32 0, i32 1, i32 1, !dbg !1837
  %84 = load i16, i16* %83, align 1, !dbg !1837, !tbaa !491
  %85 = zext i16 %84 to i32, !dbg !1836
  %86 = icmp ult i32 %68, %85, !dbg !1838
  br i1 %86, label %39, label %1694, !dbg !1807, !llvm.loop !1839

; <label>:87:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i16 0, metadata !353, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i16 %0, metadata !555, metadata !DIExpression()), !dbg !1844
  %88 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 4, i32 0, !dbg !1846
  %89 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 4, i32 1
  br label %90, !dbg !1847

; <label>:90:                                     ; preds = %101, %87
  %91 = phi %struct.hfp_con* [ %88, %87 ], [ %102, %101 ]
  %92 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 3, !dbg !1848
  %93 = load i16, i16* %92, align 4, !dbg !1848, !tbaa !544
  %94 = icmp eq i16 %93, %0, !dbg !1849
  br i1 %94, label %95, label %101, !dbg !1850

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 6, !dbg !1851
  %97 = bitcast [3 x i8]* %96 to i24*, !dbg !1851
  %98 = load i24, i24* %97, align 4, !dbg !1851
  %99 = and i24 %98, 2097152, !dbg !1851
  %100 = icmp eq i24 %99, 0, !dbg !1852
  br i1 %100, label %101, label %104, !dbg !1853

; <label>:101:                                    ; preds = %95, %90
  %102 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 1, !dbg !1854
  call void @llvm.dbg.value(metadata %struct.hfp_con* %102, metadata !560, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata %struct.hfp_con* %102, metadata !560, metadata !DIExpression()), !dbg !1855
  %103 = icmp ult %struct.hfp_con* %102, %89, !dbg !1856
  br i1 %103, label %90, label %260, !dbg !1847, !llvm.loop !583

; <label>:104:                                    ; preds = %95
  call void @llvm.dbg.value(metadata %struct.hfp_con* %91, metadata !354, metadata !DIExpression()), !dbg !1857
  %105 = getelementptr inbounds i8, i8* %45, i32 2, !dbg !1858
  %106 = load i8, i8* %105, align 1, !dbg !1858, !tbaa !525
  %107 = icmp eq i8 %106, 79, !dbg !1860
  br i1 %107, label %108, label %161, !dbg !1861

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i8, i8* %45, i32 3, !dbg !1862
  %110 = load i8, i8* %109, align 1, !dbg !1862, !tbaa !525
  %111 = icmp eq i8 %110, 75, !dbg !1864
  br i1 %111, label %112, label %161, !dbg !1865

; <label>:112:                                    ; preds = %108
  %113 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 1, i32 0, !dbg !1867
  %114 = load i8, i8* %113, align 1, !dbg !1869
  %115 = and i8 %114, -128, !dbg !1869
  %116 = or i8 %115, 1, !dbg !1869
  store i8 %116, i8* %113, align 1, !dbg !1869
  %117 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 5, !dbg !1870
  %118 = load i8, i8* %117, align 1, !dbg !1870, !tbaa !835
  %119 = icmp eq i8 %118, 14, !dbg !1872
  br i1 %119, label %120, label %127, !dbg !1873

; <label>:120:                                    ; preds = %112
  %121 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1874, !tbaa !525
  %122 = and i8 %121, 32, !dbg !1874
  %123 = icmp eq i8 %122, 0, !dbg !1874
  br i1 %123, label %80, label %124, !dbg !1877

; <label>:124:                                    ; preds = %120
  %125 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !1878
  %126 = load i8, i8* %117, align 1, !tbaa !835
  br label %127, !dbg !1878

; <label>:127:                                    ; preds = %124, %112
  %128 = phi i8 [ %118, %112 ], [ %126, %124 ], !dbg !1880
  %129 = icmp eq i8 %128, 8, !dbg !1882
  br i1 %129, label %130, label %145, !dbg !1883

; <label>:130:                                    ; preds = %127
  store i8 0, i8* %117, align 1, !dbg !1884, !tbaa !835
  %131 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 7, !dbg !1886
  %132 = load i8, i8* %131, align 1, !dbg !1887
  %133 = and i8 %132, -8, !dbg !1887
  %134 = or i8 %133, 2, !dbg !1887
  store i8 %134, i8* %131, align 1, !dbg !1887
  %135 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 0, i32 0, !dbg !1888
  call void @llvm.dbg.value(metadata i8 2, metadata !440, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %135, metadata !441, metadata !DIExpression()), !dbg !1891
  %136 = call i32 @update_multi_bd_status(i8* %135, i8 zeroext 12, i8 zeroext -1) #9, !dbg !1892
  %137 = load i8, i8* %131, align 1, !dbg !1893
  %138 = and i8 %137, 7, !dbg !1893
  %139 = zext i8 %138 to i32, !dbg !1894
  call void @bt_event_update_to_user(i8* %135, i32 1129270784, i8 zeroext 36, i32 %139) #9, !dbg !1895
  %140 = load i8, i8* %131, align 1, !dbg !1896
  %141 = and i8 %140, 7, !dbg !1896
  %142 = zext i8 %141 to i32, !dbg !1897
  %143 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 36, i32 %142, i8* %135) #9, !dbg !1898
  %144 = load i8, i8* %117, align 1, !tbaa !835
  br label %145, !dbg !1899

; <label>:145:                                    ; preds = %130, %127
  %146 = phi i8 [ %144, %130 ], [ %128, %127 ], !dbg !1900
  %147 = icmp eq i8 %146, 9, !dbg !1902
  br i1 %147, label %148, label %80, !dbg !1903

; <label>:148:                                    ; preds = %145
  store i8 0, i8* %117, align 1, !dbg !1904, !tbaa !835
  %149 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 7, !dbg !1906
  %150 = load i8, i8* %149, align 1, !dbg !1907
  %151 = and i8 %150, -8, !dbg !1907
  store i8 %151, i8* %149, align 1, !dbg !1907
  %152 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 0, i32 0, !dbg !1908
  call void @llvm.dbg.value(metadata i8 0, metadata !440, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %152, metadata !441, metadata !DIExpression()), !dbg !1911
  %153 = call i32 @update_multi_bd_status(i8* %152, i8 zeroext 13, i8 zeroext -1) #9, !dbg !1912
  %154 = load i8, i8* %149, align 1, !dbg !1913
  %155 = and i8 %154, 7, !dbg !1913
  %156 = zext i8 %155 to i32, !dbg !1914
  call void @bt_event_update_to_user(i8* %152, i32 1129270784, i8 zeroext 36, i32 %156) #9, !dbg !1915
  %157 = load i8, i8* %149, align 1, !dbg !1916
  %158 = and i8 %157, 7, !dbg !1916
  %159 = zext i8 %158 to i32, !dbg !1917
  %160 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 36, i32 %159, i8* %152) #9, !dbg !1918
  br label %80, !dbg !1919

; <label>:161:                                    ; preds = %108, %104
  %162 = call i32 @memcmp(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 5) #9, !dbg !1920
  %163 = icmp eq i32 %162, 0, !dbg !1920
  br i1 %163, label %167, label %164, !dbg !1922

; <label>:164:                                    ; preds = %161
  %165 = call i32 @memcmp(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 10) #9, !dbg !1923
  %166 = icmp eq i32 %165, 0, !dbg !1923
  br i1 %166, label %167, label %227, !dbg !1925

; <label>:167:                                    ; preds = %164, %161
  %168 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 1, i32 0, !dbg !1926
  %169 = load i8, i8* %168, align 1, !dbg !1928
  %170 = and i8 %169, -128, !dbg !1928
  %171 = or i8 %170, 2, !dbg !1928
  store i8 %171, i8* %168, align 1, !dbg !1928
  %172 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 5, !dbg !1929
  %173 = load i8, i8* %172, align 1, !dbg !1929, !tbaa !835
  %174 = icmp eq i8 %173, 11, !dbg !1931
  br i1 %174, label %175, label %179, !dbg !1932

; <label>:175:                                    ; preds = %167
  store i8 0, i8* %172, align 1, !dbg !1933, !tbaa !835
  %176 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 0, i32 0, !dbg !1935
  %177 = call zeroext i8 @remote_dev_company_ioctrl(i8* %176, i8 zeroext 1, i8 zeroext 1) #9, !dbg !1936
  call void @bt_event_update_to_user(i8* %176, i32 1129270784, i8 zeroext 13, i32 0) #9, !dbg !1937
  %178 = load i8, i8* %172, align 1, !dbg !1938, !tbaa !835
  br label %179, !dbg !1940

; <label>:179:                                    ; preds = %175, %167
  %180 = phi i8 [ %178, %175 ], [ %173, %167 ], !dbg !1938
  %181 = icmp eq i8 %180, 14, !dbg !1941
  br i1 %181, label %182, label %198, !dbg !1942

; <label>:182:                                    ; preds = %179
  store i8 0, i8* %172, align 1, !dbg !1943, !tbaa !835
  %183 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1945, !tbaa !525
  %184 = and i8 %183, 32, !dbg !1945
  %185 = icmp eq i8 %184, 0, !dbg !1945
  br i1 %185, label %188, label %186, !dbg !1947

; <label>:186:                                    ; preds = %182
  %187 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !1948
  br label %188, !dbg !1948

; <label>:188:                                    ; preds = %186, %182
  %189 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 2, !dbg !1950
  %190 = load i32, i32* %189, align 4, !dbg !1950, !tbaa !917
  %191 = and i32 %190, 512, !dbg !1952
  %192 = icmp eq i32 %191, 0, !dbg !1952
  %193 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 0, i32 0
  br i1 %192, label %196, label %194, !dbg !1953

; <label>:194:                                    ; preds = %188
  %195 = call zeroext i8 @sco_connection_setup(i8* %193, i8 zeroext 1) #9, !dbg !1954
  br label %198, !dbg !1956

; <label>:196:                                    ; preds = %188
  %197 = call zeroext i8 @sco_connection_setup(i8* %193, i8 zeroext 0) #9, !dbg !1957
  br label %198

; <label>:198:                                    ; preds = %196, %194, %179
  %199 = load i24, i24* %97, align 4, !dbg !1959
  %200 = lshr i24 %199, 16, !dbg !1959
  %201 = trunc i24 %200 to i8, !dbg !1959
  %202 = and i8 %201, 31, !dbg !1959
  %203 = icmp eq i8 %202, 18, !dbg !1961
  br i1 %203, label %204, label %213, !dbg !1962

; <label>:204:                                    ; preds = %198
  %205 = add i8 %201, 1, !dbg !1963
  %206 = and i8 %205, 31, !dbg !1963
  %207 = zext i8 %206 to i24, !dbg !1963
  %208 = shl nuw nsw i24 %207, 16, !dbg !1963
  %209 = and i24 %199, -2031617, !dbg !1963
  %210 = or i24 %208, %209, !dbg !1963
  store i24 %210, i24* %97, align 4, !dbg !1963
  %211 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 0, i32 0, !dbg !1965
  %212 = call fastcc i32 @send_battery_level(i8* %211) #9, !dbg !1966
  br label %213, !dbg !1967

; <label>:213:                                    ; preds = %204, %198
  %214 = load i8, i8* %172, align 1, !dbg !1968, !tbaa !835
  %215 = and i8 %214, -2, !dbg !1970
  %216 = icmp eq i8 %215, 8, !dbg !1970
  br i1 %216, label %217, label %80, !dbg !1970

; <label>:217:                                    ; preds = %213
  store i8 0, i8* %172, align 1, !dbg !1971, !tbaa !835
  %218 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 7, !dbg !1973
  %219 = load i8, i8* %218, align 1, !dbg !1974
  %220 = and i8 %219, -8, !dbg !1974
  store i8 %220, i8* %218, align 1, !dbg !1974
  %221 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %91, i32 0, i32 0, i32 0, i32 0, !dbg !1975
  call void @llvm.dbg.value(metadata i8 0, metadata !440, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8* %221, metadata !441, metadata !DIExpression()), !dbg !1978
  %222 = call i32 @update_multi_bd_status(i8* %221, i8 zeroext 13, i8 zeroext -1) #9, !dbg !1979
  call void @bt_event_update_to_user(i8* %221, i32 1129270784, i8 zeroext 36, i32 3) #9, !dbg !1980
  %223 = load i8, i8* %218, align 1, !dbg !1981
  %224 = and i8 %223, 7, !dbg !1981
  %225 = zext i8 %224 to i32, !dbg !1982
  %226 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 36, i32 %225, i8* %221) #9, !dbg !1983
  br label %80, !dbg !1984

; <label>:227:                                    ; preds = %164
  %228 = call i32 @memcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 4) #9, !dbg !1985
  %229 = icmp eq i32 %228, 0, !dbg !1985
  br i1 %229, label %232, label %230, !dbg !1987

; <label>:230:                                    ; preds = %227
  call void @llvm.dbg.value(metadata i32 0, metadata !358, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 0, metadata !357, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i32 0, i32 0), metadata !356, metadata !DIExpression()), !dbg !1990
  %231 = getelementptr inbounds i8, i8* %45, i32 3
  br label %237, !dbg !1991

; <label>:232:                                    ; preds = %227
  %233 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 1, i32 0, !dbg !1993
  %234 = load i8, i8* %233, align 1, !dbg !1995
  %235 = and i8 %234, -128, !dbg !1995
  %236 = or i8 %235, 3, !dbg !1995
  store i8 %236, i8* %233, align 1, !dbg !1995
  br label %80, !dbg !1996

; <label>:237:                                    ; preds = %249, %230
  %238 = phi i32 [ 0, %230 ], [ %251, %249 ]
  %239 = phi i8* [ getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i32 0, i32 0), %230 ], [ %250, %249 ]
  %240 = getelementptr inbounds [19 x %struct.info], [19 x %struct.info]* @parse_atcmd_cmd_or_rsp_type.infos, i32 0, i32 %238, i32 1, !dbg !1997
  %241 = load i8, i8* %240, align 1, !dbg !1997, !tbaa !1998
  %242 = zext i8 %241 to i32, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %242, metadata !360, metadata !DIExpression()), !dbg !2001
  %243 = call i32 @memcmp(i8* %231, i8* %239, i32 %242) #9, !dbg !2002
  %244 = icmp eq i32 %243, 0, !dbg !2002
  br i1 %244, label %245, label %249, !dbg !2004

; <label>:245:                                    ; preds = %237
  %246 = getelementptr inbounds [19 x %struct.info], [19 x %struct.info]* @parse_atcmd_cmd_or_rsp_type.infos, i32 0, i32 %238, i32 0, !dbg !2005
  %247 = load i8, i8* %246, align 1, !dbg !2005, !tbaa !2007
  call void @llvm.dbg.value(metadata i8* undef, metadata !356, metadata !DIExpression()), !dbg !1990
  %248 = and i8 %247, 127
  br label %254

; <label>:249:                                    ; preds = %237
  %250 = getelementptr inbounds i8, i8* %239, i32 %242, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %250, metadata !356, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8* %239, metadata !356, metadata !DIExpression()), !dbg !1990
  %251 = add nuw nsw i32 %238, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %251, metadata !358, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %251, metadata !358, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 0, metadata !357, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8* %250, metadata !356, metadata !DIExpression()), !dbg !1990
  %252 = icmp ult i32 %251, 19, !dbg !2011
  br i1 %252, label %237, label %253, !dbg !1991, !llvm.loop !2013

; <label>:253:                                    ; preds = %249
  br label %254, !dbg !2016

; <label>:254:                                    ; preds = %253, %245
  %255 = phi i8 [ %248, %245 ], [ 0, %253 ]
  %256 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 1, i32 0, !dbg !2016
  %257 = load i8, i8* %256, align 1, !dbg !2017
  %258 = and i8 %257, -128, !dbg !2017
  %259 = or i8 %258, %255, !dbg !2017
  store i8 %259, i8* %256, align 1, !dbg !2017
  br label %261

; <label>:260:                                    ; preds = %101
  br label %261, !dbg !2018

; <label>:261:                                    ; preds = %260, %254
  %262 = sub i32 %68, %44, !dbg !2018
  %263 = trunc i32 %262 to i16, !dbg !2019
  call void @llvm.dbg.value(metadata i32 0, metadata !1762, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i16 %0, metadata !555, metadata !DIExpression()), !dbg !2021
  br label %264, !dbg !2023

; <label>:264:                                    ; preds = %275, %261
  %265 = phi %struct.hfp_con* [ %88, %261 ], [ %276, %275 ]
  %266 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 3, !dbg !2024
  %267 = load i16, i16* %266, align 4, !dbg !2024, !tbaa !544
  %268 = icmp eq i16 %267, %0, !dbg !2025
  br i1 %268, label %269, label %275, !dbg !2026

; <label>:269:                                    ; preds = %264
  %270 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 6, !dbg !2027
  %271 = bitcast [3 x i8]* %270 to i24*, !dbg !2027
  %272 = load i24, i24* %271, align 4, !dbg !2027
  %273 = and i24 %272, 2097152, !dbg !2027
  %274 = icmp eq i24 %273, 0, !dbg !2028
  br i1 %274, label %275, label %278, !dbg !2029

; <label>:275:                                    ; preds = %269, %264
  %276 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 1, !dbg !2030
  call void @llvm.dbg.value(metadata %struct.hfp_con* %276, metadata !560, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata %struct.hfp_con* %276, metadata !560, metadata !DIExpression()), !dbg !2031
  %277 = icmp ult %struct.hfp_con* %276, %89, !dbg !2032
  br i1 %277, label %264, label %79, !dbg !2023, !llvm.loop !1839

; <label>:278:                                    ; preds = %269
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !1763, metadata !DIExpression()), !dbg !2033
  %279 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 1, i32 0, !dbg !2034
  %280 = load i8, i8* %279, align 1, !dbg !2034
  %281 = trunc i8 %280 to i7, !dbg !2035
  switch i7 %281, label %80 [
    i7 4, label %282
    i7 5, label %370
    i7 6, label %746
    i7 11, label %1292
    i7 10, label %1347
    i7 0, label %1692
    i7 16, label %1394
    i7 8, label %1433
    i7 7, label %1433
    i7 25, label %1651
    i7 24, label %1598
    i7 14, label %1469
    i7 22, label %1572
    i7 13, label %1475
    i7 21, label %1556
    i7 15, label %1511
    i7 17, label %1527
  ], !dbg !2035

; <label>:282:                                    ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2036, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %45, metadata !2041, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i16 %263, metadata !2042, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 8, metadata !2043, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !2044, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2045, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #11, !dbg !2055
  call void @llvm.dbg.value(metadata i32 0, metadata !2046, metadata !DIExpression()), !dbg !2056
  store i32 0, i32* %8, align 4, !dbg !2056, !tbaa !2057
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2058
  %283 = and i32 %262, 65535
  br label %284, !dbg !2059

; <label>:284:                                    ; preds = %291, %282
  %285 = phi i32 [ 8, %282 ], [ %292, %291 ]
  call void @llvm.dbg.value(metadata i32 %285, metadata !2043, metadata !DIExpression()), !dbg !2052
  %286 = getelementptr inbounds i8, i8* %45, i32 %285, !dbg !2060
  %287 = load i8, i8* %286, align 1, !dbg !2060, !tbaa !525
  %288 = add i8 %287, -48, !dbg !2060
  %289 = icmp ult i8 %288, 10, !dbg !2060
  br i1 %289, label %290, label %291, !dbg !2062

; <label>:290:                                    ; preds = %284
  br label %294, !dbg !2064

; <label>:291:                                    ; preds = %284
  %292 = add nuw nsw i32 %285, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %292, metadata !2043, metadata !DIExpression()), !dbg !2052
  %293 = icmp ugt i32 %285, %283, !dbg !2070
  br i1 %293, label %368, label %284, !dbg !2071, !llvm.loop !2072

; <label>:294:                                    ; preds = %298, %290
  %295 = phi i32 [ %296, %298 ], [ %285, %290 ]
  %296 = add i32 %295, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i32 %296, metadata !2043, metadata !DIExpression()), !dbg !2052
  %297 = icmp ugt i32 %295, %283, !dbg !2075
  br i1 %297, label %367, label %298, !dbg !2076, !llvm.loop !2077

; <label>:298:                                    ; preds = %294
  %299 = getelementptr inbounds i8, i8* %45, i32 %296
  %300 = load i8, i8* %299, align 1, !tbaa !525
  call void @llvm.dbg.value(metadata i32 %296, metadata !2043, metadata !DIExpression()), !dbg !2052
  %301 = icmp eq i8 %300, 13, !dbg !2080
  br i1 %301, label %302, label %294, !dbg !2081

; <label>:302:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i32 undef, metadata !2044, metadata !DIExpression()), !dbg !2053
  %303 = icmp ugt i32 %296, %285, !dbg !2082
  br i1 %303, label %304, label %307, !dbg !2084

; <label>:304:                                    ; preds = %302
  %305 = sub i32 %296, %285, !dbg !2085
  call void @llvm.dbg.value(metadata i32* %8, metadata !2046, metadata !DIExpression(DW_OP_deref)), !dbg !2056
  %306 = call i32 @ASCII_StrToInt(i8* nonnull %286, i32* nonnull %8, i32 %305) #9, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %306, metadata !2043, metadata !DIExpression()), !dbg !2052
  br label %307, !dbg !2088

; <label>:307:                                    ; preds = %304, %302
  %308 = phi i32 [ %306, %304 ], [ %296, %302 ]
  call void @llvm.dbg.value(metadata i32 %308, metadata !2043, metadata !DIExpression()), !dbg !2052
  %309 = icmp eq i32 %308, 0, !dbg !2089
  br i1 %309, label %310, label %369, !dbg !2091

; <label>:310:                                    ; preds = %307
  %311 = load i32, i32* %8, align 4, !dbg !2092, !tbaa !2057
  call void @llvm.dbg.value(metadata i32 %311, metadata !2046, metadata !DIExpression()), !dbg !2056
  %312 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 2, !dbg !2094
  store i32 %311, i32* %312, align 4, !dbg !2095, !tbaa !917
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !905, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 8, metadata !911, metadata !DIExpression()), !dbg !2098
  %313 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2099, !tbaa !483
  %314 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %313, i32 0, i32 0, !dbg !2101
  %315 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %314, align 4, !dbg !2101, !tbaa !1039
  %316 = icmp eq void (i8*, i32, i32)* %315, null, !dbg !2099
  br i1 %316, label %321, label %317, !dbg !2102

; <label>:317:                                    ; preds = %310
  %318 = lshr i32 %311, 3, !dbg !2103
  %319 = and i32 %318, 1, !dbg !2103
  %320 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2104
  call void %315(i8* %320, i32 9, i32 %319) #9, !dbg !2106
  br label %321, !dbg !2107

; <label>:321:                                    ; preds = %317, %310
  %322 = load i8, i8* @profile_debug_enable, align 1, !dbg !2108, !tbaa !525
  %323 = and i8 %322, 1, !dbg !2108
  %324 = icmp eq i8 %323, 0, !dbg !2108
  br i1 %324, label %328, label %325, !dbg !2110

; <label>:325:                                    ; preds = %321
  %326 = load i32, i32* %312, align 4, !dbg !2111, !tbaa !917
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 %326) #9, !dbg !2111
  br label %328, !dbg !2111

; <label>:328:                                    ; preds = %325, %321
  %329 = load i32, i32* %312, align 4, !dbg !2113, !tbaa !917
  %330 = and i32 %329, 512, !dbg !2115
  %331 = icmp eq i32 %330, 0, !dbg !2115
  %332 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !525
  %333 = and i8 %332, 32
  %334 = icmp ne i8 %333, 0
  br i1 %331, label %354, label %335, !dbg !2116

; <label>:335:                                    ; preds = %328
  br i1 %334, label %336, label %338, !dbg !2117

; <label>:336:                                    ; preds = %335
  %337 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !2119
  br label %338, !dbg !2119

; <label>:338:                                    ; preds = %336, %335
  %339 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2122, !tbaa !483
  %340 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %339, i32 0, i32 9, !dbg !2124
  %341 = load i32, i32* %340, align 1, !dbg !2124
  %342 = and i32 %341, 2048, !dbg !2124
  %343 = icmp eq i32 %342, 0, !dbg !2125
  br i1 %343, label %344, label %369, !dbg !2126

; <label>:344:                                    ; preds = %338
  %345 = load i24, i24* %271, align 4, !dbg !2127
  %346 = lshr i24 %345, 16, !dbg !2127
  %347 = trunc i24 %346 to i8, !dbg !2127
  %348 = add i8 %347, 1, !dbg !2127
  %349 = and i8 %348, 31, !dbg !2127
  %350 = zext i8 %349 to i24, !dbg !2127
  %351 = shl nuw nsw i24 %350, 16, !dbg !2127
  %352 = and i24 %345, -2031617, !dbg !2127
  %353 = or i24 %351, %352, !dbg !2127
  store i24 %353, i24* %271, align 4, !dbg !2127
  br label %369, !dbg !2129

; <label>:354:                                    ; preds = %328
  br i1 %334, label %355, label %357, !dbg !2130

; <label>:355:                                    ; preds = %354
  %356 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !2132
  br label %357, !dbg !2132

; <label>:357:                                    ; preds = %355, %354
  %358 = load i24, i24* %271, align 4, !dbg !2135
  %359 = lshr i24 %358, 16, !dbg !2135
  %360 = trunc i24 %359 to i8, !dbg !2135
  %361 = add i8 %360, 1, !dbg !2135
  %362 = and i8 %361, 31, !dbg !2135
  %363 = zext i8 %362 to i24, !dbg !2135
  %364 = shl nuw nsw i24 %363, 16, !dbg !2135
  %365 = and i24 %358, -2031617, !dbg !2135
  %366 = or i24 %364, %365, !dbg !2135
  store i24 %366, i24* %271, align 4, !dbg !2135
  br label %369

; <label>:367:                                    ; preds = %294
  br label %369, !dbg !2136

; <label>:368:                                    ; preds = %291
  br label %369, !dbg !2136

; <label>:369:                                    ; preds = %368, %367, %357, %344, %338, %307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #11, !dbg !2136
  br label %80, !dbg !2137

; <label>:370:                                    ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2138, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8* %45, metadata !2143, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i16 %263, metadata !2144, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 0, metadata !2146, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 8, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 8, metadata !2148, metadata !DIExpression()), !dbg !2156
  %371 = getelementptr inbounds i8, i8* %45, i32 8, !dbg !2157
  %372 = load i8, i8* %371, align 1, !dbg !2157, !tbaa !525
  %373 = add i8 %372, -48, !dbg !2157
  %374 = icmp ult i8 %373, 10, !dbg !2157
  br i1 %374, label %434, label %375, !dbg !2157

; <label>:375:                                    ; preds = %370
  br label %376, !dbg !2159

; <label>:376:                                    ; preds = %379, %375
  %377 = phi i8 [ %382, %379 ], [ %372, %375 ], !dbg !2160
  %378 = phi i32 [ %380, %379 ], [ 8, %375 ]
  switch i8 %377, label %379 [
    i8 40, label %385
    i8 13, label %459
  ], !dbg !2159

; <label>:379:                                    ; preds = %376
  %380 = add i32 %378, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %380, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %380, metadata !2148, metadata !DIExpression()), !dbg !2156
  %381 = getelementptr inbounds i8, i8* %45, i32 %380, !dbg !2157
  %382 = load i8, i8* %381, align 1, !dbg !2157, !tbaa !525
  %383 = add i8 %382, -48, !dbg !2157
  %384 = icmp ult i8 %383, 10, !dbg !2157
  br i1 %384, label %433, label %376, !dbg !2157, !llvm.loop !2164

; <label>:385:                                    ; preds = %376
  call void @llvm.dbg.value(metadata i32 %378, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2153
  %386 = and i32 %262, 65535, !dbg !2167
  %387 = icmp ult i32 %378, %386, !dbg !2170
  br i1 %387, label %388, label %460, !dbg !2171

; <label>:388:                                    ; preds = %385
  br label %389, !dbg !2156

; <label>:389:                                    ; preds = %425, %388
  %390 = phi i32 [ %431, %425 ], [ %378, %388 ]
  %391 = phi i32 [ %430, %425 ], [ 0, %388 ]
  br label %392, !dbg !2156

; <label>:392:                                    ; preds = %399, %389
  %393 = phi i32 [ %397, %399 ], [ %390, %389 ]
  call void @llvm.dbg.value(metadata i32 %393, metadata !2148, metadata !DIExpression()), !dbg !2156
  %394 = getelementptr inbounds i8, i8* %45, i32 %393, !dbg !2172
  %395 = load i8, i8* %394, align 1, !dbg !2172, !tbaa !525
  %396 = icmp eq i8 %395, 34, !dbg !2175
  %397 = add i32 %393, 1
  call void @llvm.dbg.value(metadata i32 %397, metadata !2148, metadata !DIExpression()), !dbg !2156
  br i1 %396, label %398, label %399, !dbg !2176

; <label>:398:                                    ; preds = %392
  br label %401, !dbg !2156

; <label>:399:                                    ; preds = %392
  %400 = icmp ugt i32 %393, %386, !dbg !2177
  br i1 %400, label %456, label %392, !dbg !2180, !llvm.loop !2181

; <label>:401:                                    ; preds = %406, %398
  %402 = phi i32 [ %407, %406 ], [ %397, %398 ]
  call void @llvm.dbg.value(metadata i32 %402, metadata !2148, metadata !DIExpression()), !dbg !2156
  %403 = getelementptr inbounds i8, i8* %45, i32 %402, !dbg !2184
  %404 = load i8, i8* %403, align 1, !dbg !2184, !tbaa !525
  %405 = icmp eq i8 %404, 34, !dbg !2185
  br i1 %405, label %409, label %406, !dbg !2186

; <label>:406:                                    ; preds = %401
  %407 = add i32 %402, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %407, metadata !2148, metadata !DIExpression()), !dbg !2156
  %408 = icmp ugt i32 %402, %386, !dbg !2190
  br i1 %408, label %455, label %401, !dbg !2191, !llvm.loop !2192

; <label>:409:                                    ; preds = %401
  call void @llvm.dbg.value(metadata i32 %402, metadata !2147, metadata !DIExpression()), !dbg !2155
  %410 = getelementptr inbounds i8, i8* %45, i32 %397, !dbg !2195
  %411 = sub i32 %402, %397, !dbg !2196
  %412 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %391, i32 1, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.hfp_con* null, metadata !2198, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 0, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 0, metadata !2206, metadata !DIExpression()), !dbg !2209
  %413 = and i32 %411, 65535
  br label %414, !dbg !2210

; <label>:414:                                    ; preds = %421, %409
  %415 = phi i32 [ 0, %409 ], [ %422, %421 ]
  %416 = getelementptr inbounds [8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 %415, i32 0, !dbg !2213
  %417 = call i32 @memcmp(i8* %410, i8* %416, i32 %413) #9, !dbg !2217
  %418 = icmp eq i32 %417, 0, !dbg !2217
  br i1 %418, label %419, label %421, !dbg !2218

; <label>:419:                                    ; preds = %414
  %420 = trunc i32 %415 to i8, !dbg !2219
  store i8 %420, i8* %412, align 1, !dbg !2221, !tbaa !525
  br label %425, !dbg !2222

; <label>:421:                                    ; preds = %414
  %422 = add nuw nsw i32 %415, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %422, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 %422, metadata !2206, metadata !DIExpression()), !dbg !2209
  %423 = icmp ult i32 %422, 8, !dbg !2225
  br i1 %423, label %414, label %424, !dbg !2210, !llvm.loop !2227

; <label>:424:                                    ; preds = %421
  br label %425, !dbg !2230

; <label>:425:                                    ; preds = %424, %419
  %426 = phi i8* [ %416, %419 ], [ null, %424 ]
  %427 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %391, i32 0, !dbg !2230
  store i8* %426, i8** %427, align 1, !dbg !2231, !tbaa !1436
  %428 = trunc i32 %411 to i8, !dbg !2232
  %429 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %391, i32 2, !dbg !2233
  store i8 %428, i8* %429, align 1, !dbg !2234, !tbaa !2235
  %430 = add i32 %391, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i32 %430, metadata !2145, metadata !DIExpression()), !dbg !2153
  %431 = add i32 %411, %402, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %431, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %431, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %430, metadata !2145, metadata !DIExpression()), !dbg !2153
  %432 = icmp ult i32 %431, %386, !dbg !2170
  br i1 %432, label %389, label %458, !dbg !2171, !llvm.loop !2238

; <label>:433:                                    ; preds = %379
  br label %434, !dbg !2241

; <label>:434:                                    ; preds = %433, %370
  %435 = phi i32 [ 8, %370 ], [ %380, %433 ]
  %436 = phi i8 [ %372, %370 ], [ %382, %433 ], !dbg !2244
  %437 = add i8 %436, -48, !dbg !2241
  %438 = icmp ult i8 %437, 10, !dbg !2241
  br i1 %438, label %439, label %460, !dbg !2241

; <label>:439:                                    ; preds = %434
  br label %440, !dbg !2247

; <label>:440:                                    ; preds = %449, %439
  %441 = phi i8 [ %453, %449 ], [ %436, %439 ]
  %442 = phi i32 [ %451, %449 ], [ %435, %439 ]
  %443 = phi i32 [ %450, %449 ], [ 0, %439 ]
  %444 = add i8 %441, -48, !dbg !2247
  %445 = icmp ult i8 %444, 10, !dbg !2247
  br i1 %445, label %446, label %449, !dbg !2247

; <label>:446:                                    ; preds = %440
  %447 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %443, i32 3, !dbg !2250
  store i8 %444, i8* %447, align 1, !dbg !2252, !tbaa !2253
  %448 = add i32 %443, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %448, metadata !2145, metadata !DIExpression()), !dbg !2153
  br label %449, !dbg !2255

; <label>:449:                                    ; preds = %446, %440
  %450 = phi i32 [ %448, %446 ], [ %443, %440 ]
  call void @llvm.dbg.value(metadata i32 %450, metadata !2145, metadata !DIExpression()), !dbg !2153
  %451 = add i32 %442, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %451, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %451, metadata !2148, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %450, metadata !2145, metadata !DIExpression()), !dbg !2153
  %452 = getelementptr inbounds i8, i8* %45, i32 %451, !dbg !2244
  %453 = load i8, i8* %452, align 1, !dbg !2244, !tbaa !525
  %454 = icmp eq i8 %453, 13, !dbg !2257
  br i1 %454, label %457, label %440, !dbg !2258, !llvm.loop !2259

; <label>:455:                                    ; preds = %406
  br label %460, !dbg !2262

; <label>:456:                                    ; preds = %399
  br label %460, !dbg !2262

; <label>:457:                                    ; preds = %449
  br label %460, !dbg !2262

; <label>:458:                                    ; preds = %425
  br label %460, !dbg !2262

; <label>:459:                                    ; preds = %376
  br label %460, !dbg !2262

; <label>:460:                                    ; preds = %459, %458, %457, %456, %455, %434, %385
  br label %461, !dbg !2262

; <label>:461:                                    ; preds = %467, %460
  %462 = phi i32 [ %468, %467 ], [ 0, %460 ]
  %463 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %462, !dbg !2262
  %464 = bitcast %struct.__INDICATOR* %463 to i32*, !dbg !2285
  %465 = load i32, i32* %464, align 1, !dbg !2285, !tbaa !1436
  %466 = icmp eq i32 %465, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2286
  br i1 %466, label %470, label %467, !dbg !2287

; <label>:467:                                    ; preds = %461
  %468 = add nuw nsw i32 %462, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %468, metadata !2274, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %468, metadata !2274, metadata !DIExpression()), !dbg !2290
  %469 = icmp ult i32 %468, 8, !dbg !2291
  br i1 %469, label %461, label %511, !dbg !2293, !llvm.loop !2295

; <label>:470:                                    ; preds = %461
  %471 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %462, i32 3, !dbg !2298
  %472 = load i8, i8* %471, align 1, !dbg !2298, !tbaa !2253
  %473 = icmp eq i8 %472, -4, !dbg !2300
  br i1 %473, label %474, label %512, !dbg !2301

; <label>:474:                                    ; preds = %470
  br label %475, !dbg !2302

; <label>:475:                                    ; preds = %481, %474
  %476 = phi i32 [ %482, %481 ], [ 0, %474 ]
  %477 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %476, !dbg !2302
  %478 = bitcast %struct.__INDICATOR* %477 to i32*, !dbg !2315
  %479 = load i32, i32* %478, align 1, !dbg !2315, !tbaa !1436
  %480 = icmp eq i32 %479, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2316
  br i1 %480, label %484, label %481, !dbg !2317

; <label>:481:                                    ; preds = %475
  %482 = add nuw nsw i32 %476, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %482, metadata !2311, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %482, metadata !2311, metadata !DIExpression()), !dbg !2320
  %483 = icmp ult i32 %482, 8, !dbg !2321
  br i1 %483, label %475, label %510, !dbg !2323, !llvm.loop !2325

; <label>:484:                                    ; preds = %475
  %485 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %476, i32 3, !dbg !2328
  %486 = load i8, i8* %485, align 1, !dbg !2328, !tbaa !2253
  %487 = icmp eq i8 %486, 1, !dbg !2330
  br i1 %487, label %488, label %512, !dbg !2331

; <label>:488:                                    ; preds = %484
  br label %489, !dbg !2332

; <label>:489:                                    ; preds = %495, %488
  %490 = phi i32 [ %496, %495 ], [ 0, %488 ]
  %491 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %490, !dbg !2332
  %492 = bitcast %struct.__INDICATOR* %491 to i32*, !dbg !2336
  %493 = load i32, i32* %492, align 1, !dbg !2336, !tbaa !1436
  %494 = icmp eq i32 %493, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !2337
  br i1 %494, label %498, label %495, !dbg !2338

; <label>:495:                                    ; preds = %489
  %496 = add nuw nsw i32 %490, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %496, metadata !2311, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %496, metadata !2311, metadata !DIExpression()), !dbg !2340
  %497 = icmp ult i32 %496, 8, !dbg !2341
  br i1 %497, label %489, label %509, !dbg !2342, !llvm.loop !2325

; <label>:498:                                    ; preds = %489
  %499 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %490, i32 3, !dbg !2343
  %500 = load i8, i8* %499, align 1, !dbg !2343, !tbaa !2253
  %501 = icmp eq i8 %500, 2, !dbg !2344
  br i1 %501, label %502, label %512, !dbg !2345

; <label>:502:                                    ; preds = %498
  %503 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2346, !tbaa !483
  %504 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %503, i32 0, i32 0, !dbg !2349
  %505 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %504, align 4, !dbg !2349, !tbaa !1039
  %506 = icmp eq void (i8*, i32, i32)* %505, null, !dbg !2346
  br i1 %506, label %512, label %507, !dbg !2350

; <label>:507:                                    ; preds = %502
  %508 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2351
  call void %505(i8* %508, i32 11, i32 2) #9, !dbg !2353
  br label %512, !dbg !2354

; <label>:509:                                    ; preds = %495
  br label %512, !dbg !2355

; <label>:510:                                    ; preds = %481
  br label %512, !dbg !2355

; <label>:511:                                    ; preds = %467
  br label %512, !dbg !2355

; <label>:512:                                    ; preds = %511, %510, %509, %507, %502, %498, %484, %470
  %513 = phi i32 [ 1, %507 ], [ 1, %502 ], [ 1, %498 ], [ 0, %484 ], [ 0, %470 ], [ 1, %509 ], [ 0, %510 ], [ 0, %511 ]
  %514 = phi i32 [ 4, %507 ], [ 4, %502 ], [ 4, %498 ], [ 255, %484 ], [ 255, %470 ], [ 4, %509 ], [ 255, %510 ], [ 255, %511 ]
  call void @llvm.dbg.value(metadata i32 %514, metadata !2281, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %513, metadata !2280, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2272, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 2, metadata !2273, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2361
  br label %515, !dbg !2362

; <label>:515:                                    ; preds = %521, %512
  %516 = phi i32 [ 0, %512 ], [ %522, %521 ]
  %517 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %516, !dbg !2363
  %518 = bitcast %struct.__INDICATOR* %517 to i32*, !dbg !2364
  %519 = load i32, i32* %518, align 1, !dbg !2364, !tbaa !1436
  %520 = icmp eq i32 %519, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2365
  br i1 %520, label %524, label %521, !dbg !2366

; <label>:521:                                    ; preds = %515
  %522 = add nuw nsw i32 %516, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %522, metadata !2274, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %522, metadata !2274, metadata !DIExpression()), !dbg !2361
  %523 = icmp ult i32 %522, 8, !dbg !2368
  br i1 %523, label %515, label %584, !dbg !2362, !llvm.loop !2295

; <label>:524:                                    ; preds = %515
  %525 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %516, i32 3, !dbg !2369
  %526 = load i8, i8* %525, align 1, !dbg !2369, !tbaa !2253
  %527 = icmp eq i8 %526, -4, !dbg !2370
  %528 = icmp eq i32 %514, 255, !dbg !2371
  %529 = and i1 %528, %527, !dbg !2373
  br i1 %529, label %530, label %585, !dbg !2373

; <label>:530:                                    ; preds = %524
  br label %531, !dbg !2374

; <label>:531:                                    ; preds = %537, %530
  %532 = phi i32 [ %538, %537 ], [ 0, %530 ]
  %533 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %532, !dbg !2374
  %534 = bitcast %struct.__INDICATOR* %533 to i32*, !dbg !2378
  %535 = load i32, i32* %534, align 1, !dbg !2378, !tbaa !1436
  %536 = icmp eq i32 %535, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2379
  br i1 %536, label %540, label %537, !dbg !2380

; <label>:537:                                    ; preds = %531
  %538 = add nuw nsw i32 %532, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i32 %538, metadata !2311, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %538, metadata !2311, metadata !DIExpression()), !dbg !2382
  %539 = icmp ult i32 %538, 8, !dbg !2383
  br i1 %539, label %531, label %544, !dbg !2384, !llvm.loop !2325

; <label>:540:                                    ; preds = %531
  %541 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %532, i32 3, !dbg !2385
  %542 = load i8, i8* %541, align 1, !dbg !2385, !tbaa !2253
  %543 = icmp eq i8 %542, 1, !dbg !2386
  br i1 %543, label %579, label %545, !dbg !2387

; <label>:544:                                    ; preds = %537
  br label %545, !dbg !2388

; <label>:545:                                    ; preds = %544, %540
  br label %546, !dbg !2388

; <label>:546:                                    ; preds = %552, %545
  %547 = phi i32 [ %553, %552 ], [ 0, %545 ]
  %548 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %547, !dbg !2388
  %549 = bitcast %struct.__INDICATOR* %548 to i32*, !dbg !2392
  %550 = load i32, i32* %549, align 1, !dbg !2392, !tbaa !1436
  %551 = icmp eq i32 %550, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2393
  br i1 %551, label %555, label %552, !dbg !2394

; <label>:552:                                    ; preds = %546
  %553 = add nuw nsw i32 %547, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %553, metadata !2311, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %553, metadata !2311, metadata !DIExpression()), !dbg !2396
  %554 = icmp ult i32 %553, 8, !dbg !2397
  br i1 %554, label %546, label %559, !dbg !2398, !llvm.loop !2325

; <label>:555:                                    ; preds = %546
  %556 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %547, i32 3, !dbg !2399
  %557 = load i8, i8* %556, align 1, !dbg !2399, !tbaa !2253
  %558 = icmp eq i8 %557, 2, !dbg !2400
  br i1 %558, label %579, label %560, !dbg !2401

; <label>:559:                                    ; preds = %552
  br label %560, !dbg !2403

; <label>:560:                                    ; preds = %559, %555
  br label %561, !dbg !2403

; <label>:561:                                    ; preds = %570, %560
  %562 = phi i32 [ %571, %570 ], [ 0, %560 ]
  %563 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %562, !dbg !2403
  %564 = bitcast %struct.__INDICATOR* %563 to i32*, !dbg !2407
  %565 = load i32, i32* %564, align 1, !dbg !2407, !tbaa !1436
  %566 = icmp eq i32 %565, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2408
  br i1 %566, label %567, label %570, !dbg !2409

; <label>:567:                                    ; preds = %561
  %568 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %562, i32 3, !dbg !2410
  %569 = load i8, i8* %568, align 1, !dbg !2410, !tbaa !2253
  br label %574, !dbg !2411

; <label>:570:                                    ; preds = %561
  %571 = add nuw nsw i32 %562, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %571, metadata !2311, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %571, metadata !2311, metadata !DIExpression()), !dbg !2413
  %572 = icmp ult i32 %571, 8, !dbg !2414
  br i1 %572, label %561, label %573, !dbg !2415, !llvm.loop !2325

; <label>:573:                                    ; preds = %570
  br label %574, !dbg !2416

; <label>:574:                                    ; preds = %573, %567
  %575 = phi i8 [ %569, %567 ], [ -1, %573 ]
  %576 = icmp eq i8 %575, 3, !dbg !2416
  call void @llvm.dbg.value(metadata i32 1, metadata !2280, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 3, metadata !2281, metadata !DIExpression()), !dbg !2355
  %577 = select i1 %576, i32 1, i32 %513, !dbg !2417
  %578 = select i1 %576, i32 3, i32 255, !dbg !2417
  br label %579, !dbg !2417

; <label>:579:                                    ; preds = %574, %555, %540
  %580 = phi i32 [ 1, %540 ], [ 1, %555 ], [ %577, %574 ]
  %581 = phi i32 [ 2, %540 ], [ 3, %555 ], [ %578, %574 ]
  call void @llvm.dbg.value(metadata i32 %581, metadata !2281, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %580, metadata !2280, metadata !DIExpression()), !dbg !2356
  %582 = load i16, i16* %266, align 4, !dbg !2418, !tbaa !544
  %583 = call fastcc i32 @hfp_speak_gain_control(i16 zeroext %582, i32 3, i8 zeroext 0) #9, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %583, metadata !2283, metadata !DIExpression()), !dbg !2420
  br label %585, !dbg !2421

; <label>:584:                                    ; preds = %521
  br label %585, !dbg !2420

; <label>:585:                                    ; preds = %584, %579, %524
  %586 = phi i32 [ %580, %579 ], [ %513, %524 ], [ %513, %584 ]
  %587 = phi i32 [ %581, %579 ], [ %514, %524 ], [ %514, %584 ]
  %588 = phi i32 [ %583, %579 ], [ 0, %524 ], [ 0, %584 ]
  call void @llvm.dbg.value(metadata i32 %588, metadata !2283, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %587, metadata !2281, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %586, metadata !2280, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2426
  br label %589, !dbg !2427

; <label>:589:                                    ; preds = %595, %585
  %590 = phi i32 [ 0, %585 ], [ %596, %595 ]
  %591 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %590, !dbg !2428
  %592 = bitcast %struct.__INDICATOR* %591 to i32*, !dbg !2429
  %593 = load i32, i32* %592, align 1, !dbg !2429, !tbaa !1436
  %594 = icmp eq i32 %593, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2430
  br i1 %594, label %598, label %595, !dbg !2431

; <label>:595:                                    ; preds = %589
  %596 = add nuw nsw i32 %590, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %596, metadata !2311, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %596, metadata !2311, metadata !DIExpression()), !dbg !2426
  %597 = icmp ult i32 %596, 8, !dbg !2433
  br i1 %597, label %589, label %724, !dbg !2427, !llvm.loop !2325

; <label>:598:                                    ; preds = %589
  %599 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %590, i32 3, !dbg !2434
  %600 = load i8, i8* %599, align 1, !dbg !2434, !tbaa !2253
  %601 = icmp eq i8 %600, 1, !dbg !2435
  br i1 %601, label %602, label %725, !dbg !2436

; <label>:602:                                    ; preds = %598
  br label %603, !dbg !2437

; <label>:603:                                    ; preds = %609, %602
  %604 = phi i32 [ %610, %609 ], [ 0, %602 ]
  %605 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %604, !dbg !2437
  %606 = bitcast %struct.__INDICATOR* %605 to i32*, !dbg !2441
  %607 = load i32, i32* %606, align 1, !dbg !2441, !tbaa !1436
  %608 = icmp eq i32 %607, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2442
  br i1 %608, label %612, label %609, !dbg !2443

; <label>:609:                                    ; preds = %603
  %610 = add nuw nsw i32 %604, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %610, metadata !2311, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %610, metadata !2311, metadata !DIExpression()), !dbg !2445
  %611 = icmp ult i32 %610, 8, !dbg !2446
  br i1 %611, label %603, label %626, !dbg !2447, !llvm.loop !2325

; <label>:612:                                    ; preds = %603
  %613 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %604, i32 3, !dbg !2448
  %614 = load i8, i8* %613, align 1, !dbg !2448, !tbaa !2253
  %615 = icmp eq i8 %614, 2, !dbg !2449
  br i1 %615, label %616, label %627, !dbg !2450

; <label>:616:                                    ; preds = %612
  %617 = load i24, i24* %271, align 4, !dbg !2451
  %618 = lshr i24 %617, 12, !dbg !2451
  %619 = trunc i24 %618 to i8, !dbg !2451
  %620 = and i8 %619, 11, !dbg !2451
  %621 = or i8 %620, 4, !dbg !2451
  %622 = zext i8 %621 to i24, !dbg !2451
  %623 = shl nuw nsw i24 %622, 12, !dbg !2451
  %624 = and i24 %617, -61441, !dbg !2451
  %625 = or i24 %623, %624, !dbg !2451
  store i24 %625, i24* %271, align 4, !dbg !2451
  br label %627, !dbg !2453

; <label>:626:                                    ; preds = %609
  br label %627, !dbg !2454

; <label>:627:                                    ; preds = %626, %616, %612
  br label %628, !dbg !2454

; <label>:628:                                    ; preds = %634, %627
  %629 = phi i32 [ %635, %634 ], [ 0, %627 ]
  %630 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %629, !dbg !2454
  %631 = bitcast %struct.__INDICATOR* %630 to i32*, !dbg !2457
  %632 = load i32, i32* %631, align 1, !dbg !2457, !tbaa !1436
  %633 = icmp eq i32 %632, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2458
  br i1 %633, label %637, label %634, !dbg !2459

; <label>:634:                                    ; preds = %628
  %635 = add nuw nsw i32 %629, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %635, metadata !2311, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %635, metadata !2311, metadata !DIExpression()), !dbg !2461
  %636 = icmp ult i32 %635, 8, !dbg !2462
  br i1 %636, label %628, label %651, !dbg !2463, !llvm.loop !2325

; <label>:637:                                    ; preds = %628
  %638 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %629, i32 3, !dbg !2464
  %639 = load i8, i8* %638, align 1, !dbg !2464, !tbaa !2253
  %640 = icmp eq i8 %639, 1, !dbg !2465
  br i1 %640, label %641, label %652, !dbg !2466

; <label>:641:                                    ; preds = %637
  %642 = load i24, i24* %271, align 4, !dbg !2467
  %643 = lshr i24 %642, 12, !dbg !2467
  %644 = trunc i24 %643 to i8, !dbg !2467
  %645 = and i8 %644, 13, !dbg !2467
  %646 = or i8 %645, 2, !dbg !2467
  %647 = zext i8 %646 to i24, !dbg !2467
  %648 = shl nuw nsw i24 %647, 12, !dbg !2467
  %649 = and i24 %642, -61441, !dbg !2467
  %650 = or i24 %648, %649, !dbg !2467
  store i24 %650, i24* %271, align 4, !dbg !2467
  br label %652, !dbg !2469

; <label>:651:                                    ; preds = %634
  br label %652, !dbg !2470

; <label>:652:                                    ; preds = %651, %641, %637
  br label %653, !dbg !2470

; <label>:653:                                    ; preds = %659, %652
  %654 = phi i32 [ %660, %659 ], [ 0, %652 ]
  %655 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %654, !dbg !2470
  %656 = bitcast %struct.__INDICATOR* %655 to i32*, !dbg !2473
  %657 = load i32, i32* %656, align 1, !dbg !2473, !tbaa !1436
  %658 = icmp eq i32 %657, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !2474
  br i1 %658, label %662, label %659, !dbg !2475

; <label>:659:                                    ; preds = %653
  %660 = add nuw nsw i32 %654, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %660, metadata !2311, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %660, metadata !2311, metadata !DIExpression()), !dbg !2477
  %661 = icmp ult i32 %660, 8, !dbg !2478
  br i1 %661, label %653, label %669, !dbg !2479, !llvm.loop !2325

; <label>:662:                                    ; preds = %653
  %663 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %654, i32 3, !dbg !2480
  %664 = load i8, i8* %663, align 1, !dbg !2480, !tbaa !2253
  %665 = icmp eq i8 %664, 0, !dbg !2481
  br i1 %665, label %666, label %670, !dbg !2482

; <label>:666:                                    ; preds = %662
  %667 = load i24, i24* %271, align 4, !dbg !2483
  %668 = and i24 %667, -32769, !dbg !2483
  store i24 %668, i24* %271, align 4, !dbg !2483
  br label %670, !dbg !2485

; <label>:669:                                    ; preds = %659
  br label %670, !dbg !2486

; <label>:670:                                    ; preds = %669, %666, %662
  br label %671, !dbg !2486

; <label>:671:                                    ; preds = %677, %670
  %672 = phi i32 [ %678, %677 ], [ 0, %670 ]
  %673 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %672, !dbg !2486
  %674 = bitcast %struct.__INDICATOR* %673 to i32*, !dbg !2489
  %675 = load i32, i32* %674, align 1, !dbg !2489, !tbaa !1436
  %676 = icmp eq i32 %675, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !2490
  br i1 %676, label %680, label %677, !dbg !2491

; <label>:677:                                    ; preds = %671
  %678 = add nuw nsw i32 %672, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %678, metadata !2311, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %678, metadata !2311, metadata !DIExpression()), !dbg !2493
  %679 = icmp ult i32 %678, 8, !dbg !2494
  br i1 %679, label %671, label %684, !dbg !2495, !llvm.loop !2325

; <label>:680:                                    ; preds = %671
  %681 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %672, i32 3, !dbg !2496
  %682 = load i8, i8* %681, align 1, !dbg !2496, !tbaa !2253
  %683 = icmp eq i8 %682, 0, !dbg !2497
  br i1 %683, label %695, label %685, !dbg !2498

; <label>:684:                                    ; preds = %677
  br label %685, !dbg !2499

; <label>:685:                                    ; preds = %684, %680
  %686 = load i24, i24* %271, align 4, !dbg !2499
  %687 = lshr i24 %686, 12, !dbg !2499
  %688 = trunc i24 %687 to i8, !dbg !2499
  %689 = and i8 %688, 7, !dbg !2499
  %690 = or i8 %689, 8, !dbg !2499
  %691 = zext i8 %690 to i24, !dbg !2499
  %692 = shl nuw nsw i24 %691, 12, !dbg !2499
  %693 = and i24 %686, -61441, !dbg !2499
  %694 = or i24 %692, %693, !dbg !2499
  store i24 %694, i24* %271, align 4, !dbg !2499
  br label %695, !dbg !2501

; <label>:695:                                    ; preds = %685, %680
  br label %696, !dbg !2502

; <label>:696:                                    ; preds = %702, %695
  %697 = phi i32 [ %703, %702 ], [ 0, %695 ]
  %698 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %697, !dbg !2502
  %699 = bitcast %struct.__INDICATOR* %698 to i32*, !dbg !2505
  %700 = load i32, i32* %699, align 1, !dbg !2505, !tbaa !1436
  %701 = icmp eq i32 %700, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2506
  br i1 %701, label %705, label %702, !dbg !2507

; <label>:702:                                    ; preds = %696
  %703 = add nuw nsw i32 %697, 1, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %703, metadata !2311, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %703, metadata !2311, metadata !DIExpression()), !dbg !2509
  %704 = icmp ult i32 %703, 8, !dbg !2510
  br i1 %704, label %696, label %712, !dbg !2511, !llvm.loop !2325

; <label>:705:                                    ; preds = %696
  %706 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %697, i32 3, !dbg !2512
  %707 = load i8, i8* %706, align 1, !dbg !2512, !tbaa !2253
  %708 = icmp eq i8 %707, 0, !dbg !2513
  br i1 %708, label %709, label %713, !dbg !2514

; <label>:709:                                    ; preds = %705
  %710 = load i24, i24* %271, align 4, !dbg !2515
  %711 = and i24 %710, -24577, !dbg !2515
  store i24 %711, i24* %271, align 4, !dbg !2515
  br label %713, !dbg !2517

; <label>:712:                                    ; preds = %702
  br label %713, !dbg !2518

; <label>:713:                                    ; preds = %712, %709, %705
  %714 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2518, !tbaa !483
  %715 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %714, i32 0, i32 0, !dbg !2520
  %716 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %715, align 4, !dbg !2520, !tbaa !1039
  %717 = icmp eq void (i8*, i32, i32)* %716, null, !dbg !2518
  br i1 %717, label %725, label %718, !dbg !2521

; <label>:718:                                    ; preds = %713
  %719 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2522
  %720 = load i24, i24* %271, align 4, !dbg !2524
  %721 = lshr i24 %720, 12, !dbg !2524
  %722 = and i24 %721, 15, !dbg !2524
  %723 = zext i24 %722 to i32, !dbg !2524
  call void %716(i8* %719, i32 8, i32 %723) #9, !dbg !2525
  br label %725, !dbg !2526

; <label>:724:                                    ; preds = %595
  br label %725, !dbg !2527

; <label>:725:                                    ; preds = %724, %718, %713, %598
  %726 = icmp eq i32 %586, 0, !dbg !2527
  br i1 %726, label %741, label %727, !dbg !2529

; <label>:727:                                    ; preds = %725
  %728 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2530, !tbaa !483
  %729 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %728, i32 0, i32 0, !dbg !2533
  %730 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %729, align 4, !dbg !2533, !tbaa !1039
  %731 = icmp eq void (i8*, i32, i32)* %730, null, !dbg !2530
  br i1 %731, label %741, label %732, !dbg !2534

; <label>:732:                                    ; preds = %727
  %733 = trunc i32 %587 to i24, !dbg !2535
  %734 = load i24, i24* %271, align 4, !dbg !2535
  %735 = shl i24 %733, 8, !dbg !2535
  %736 = and i24 %735, 3840, !dbg !2535
  %737 = and i24 %734, -3841, !dbg !2535
  %738 = or i24 %737, %736, !dbg !2535
  store i24 %738, i24* %271, align 4, !dbg !2535
  %739 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %729, align 4, !dbg !2537, !tbaa !1039
  %740 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2538
  call void %739(i8* %740, i32 %587, i32 %588) #9, !dbg !2539
  br label %741, !dbg !2540

; <label>:741:                                    ; preds = %732, %727, %725
  %742 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, !dbg !2541
  %743 = bitcast [8 x %struct.__INDICATOR]* %742 to i8*, !dbg !2542
  %744 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, !dbg !2543
  %745 = bitcast [8 x %struct.__INDICATOR]* %744 to i8*, !dbg !2542
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %743, i8* %745, i32 56, i32 1, i1 false) #11, !dbg !2542
  br label %80, !dbg !2544

; <label>:746:                                    ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2545, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %45, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i16 %263, metadata !2549, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 0, metadata !2550, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32 8, metadata !2551, metadata !DIExpression()), !dbg !2557
  %747 = and i32 %262, 65535
  br label %748, !dbg !2558

; <label>:748:                                    ; preds = %754, %746
  %749 = phi i32 [ 8, %746 ], [ %755, %754 ]
  call void @llvm.dbg.value(metadata i32 %749, metadata !2551, metadata !DIExpression()), !dbg !2557
  %750 = getelementptr inbounds i8, i8* %45, i32 %749, !dbg !2559
  %751 = load i8, i8* %750, align 1, !dbg !2559, !tbaa !525
  %752 = add i8 %751, -48, !dbg !2559
  %753 = icmp ult i8 %752, 10, !dbg !2559
  br i1 %753, label %757, label %754, !dbg !2561

; <label>:754:                                    ; preds = %748
  %755 = add nuw nsw i32 %749, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %755, metadata !2551, metadata !DIExpression()), !dbg !2557
  %756 = icmp ugt i32 %749, %747, !dbg !2566
  br i1 %756, label %772, label %748, !dbg !2567, !llvm.loop !2568

; <label>:757:                                    ; preds = %748
  %758 = sext i8 %751 to i32, !dbg !2571
  br label %759, !dbg !2572

; <label>:759:                                    ; preds = %766, %757
  %760 = phi i32 [ %749, %757 ], [ %761, %766 ]
  %761 = add i32 %760, 1
  call void @llvm.dbg.value(metadata i32 %761, metadata !2551, metadata !DIExpression()), !dbg !2557
  %762 = getelementptr inbounds i8, i8* %45, i32 %761, !dbg !2573
  %763 = load i8, i8* %762, align 1, !dbg !2573, !tbaa !525
  %764 = add i8 %763, -48, !dbg !2573
  %765 = icmp ult i8 %764, 10, !dbg !2573
  br i1 %765, label %768, label %766, !dbg !2574

; <label>:766:                                    ; preds = %759
  %767 = icmp ugt i32 %761, %747, !dbg !2575
  br i1 %767, label %771, label %759, !dbg !2578, !llvm.loop !2579

; <label>:768:                                    ; preds = %759
  %769 = add nsw i32 %758, -49, !dbg !2582
  %770 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %769, i32 3, !dbg !2583
  store i8 %764, i8* %770, align 1, !dbg !2584, !tbaa !2253
  br label %773, !dbg !2585

; <label>:771:                                    ; preds = %766
  br label %773, !dbg !2586

; <label>:772:                                    ; preds = %754
  br label %773, !dbg !2586

; <label>:773:                                    ; preds = %772, %771, %768
  br label %774, !dbg !2586

; <label>:774:                                    ; preds = %783, %773
  %775 = phi i32 [ %784, %783 ], [ 0, %773 ]
  %776 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %775, !dbg !2586
  %777 = bitcast %struct.__INDICATOR* %776 to i32*, !dbg !2599
  %778 = load i32, i32* %777, align 1, !dbg !2599, !tbaa !1436
  %779 = icmp eq i32 %778, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 7) to i32), !dbg !2600
  br i1 %779, label %780, label %783, !dbg !2601

; <label>:780:                                    ; preds = %774
  %781 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %775, i32 3, !dbg !2602
  %782 = load i8, i8* %781, align 1, !dbg !2602, !tbaa !2253
  br label %787, !dbg !2603

; <label>:783:                                    ; preds = %774
  %784 = add nuw nsw i32 %775, 1, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %784, metadata !2311, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %784, metadata !2311, metadata !DIExpression()), !dbg !2605
  %785 = icmp ult i32 %784, 8, !dbg !2606
  br i1 %785, label %774, label %786, !dbg !2607, !llvm.loop !2325

; <label>:786:                                    ; preds = %783
  br label %787, !dbg !2608

; <label>:787:                                    ; preds = %786, %780
  %788 = phi i8 [ %782, %780 ], [ -1, %786 ]
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2272, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 7, metadata !2273, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2612
  br label %789, !dbg !2613

; <label>:789:                                    ; preds = %798, %787
  %790 = phi i32 [ 0, %787 ], [ %799, %798 ]
  %791 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %790, !dbg !2614
  %792 = bitcast %struct.__INDICATOR* %791 to i32*, !dbg !2615
  %793 = load i32, i32* %792, align 1, !dbg !2615, !tbaa !1436
  %794 = icmp eq i32 %793, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 7) to i32), !dbg !2616
  br i1 %794, label %795, label %798, !dbg !2617

; <label>:795:                                    ; preds = %789
  %796 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %790, i32 3, !dbg !2618
  %797 = load i8, i8* %796, align 1, !dbg !2618, !tbaa !2253
  br label %802, !dbg !2619

; <label>:798:                                    ; preds = %789
  %799 = add nuw nsw i32 %790, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %799, metadata !2274, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %799, metadata !2274, metadata !DIExpression()), !dbg !2612
  %800 = icmp ult i32 %799, 8, !dbg !2621
  br i1 %800, label %789, label %801, !dbg !2613, !llvm.loop !2295

; <label>:801:                                    ; preds = %798
  br label %802, !dbg !2622

; <label>:802:                                    ; preds = %801, %795
  %803 = phi i8 [ %797, %795 ], [ -1, %801 ]
  %804 = icmp eq i8 %803, %788, !dbg !2622
  br i1 %804, label %805, label %840, !dbg !2623

; <label>:805:                                    ; preds = %802
  br label %806, !dbg !2624

; <label>:806:                                    ; preds = %815, %805
  %807 = phi i32 [ %816, %815 ], [ 0, %805 ]
  %808 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %807, !dbg !2624
  %809 = bitcast %struct.__INDICATOR* %808 to i32*, !dbg !2627
  %810 = load i32, i32* %809, align 1, !dbg !2627, !tbaa !1436
  %811 = icmp eq i32 %810, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 5) to i32), !dbg !2628
  br i1 %811, label %812, label %815, !dbg !2629

; <label>:812:                                    ; preds = %806
  %813 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %807, i32 3, !dbg !2630
  %814 = load i8, i8* %813, align 1, !dbg !2630, !tbaa !2253
  br label %819, !dbg !2631

; <label>:815:                                    ; preds = %806
  %816 = add nuw nsw i32 %807, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %816, metadata !2311, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %816, metadata !2311, metadata !DIExpression()), !dbg !2633
  %817 = icmp ult i32 %816, 8, !dbg !2634
  br i1 %817, label %806, label %818, !dbg !2635, !llvm.loop !2325

; <label>:818:                                    ; preds = %815
  br label %819, !dbg !2636

; <label>:819:                                    ; preds = %818, %812
  %820 = phi i8 [ %814, %812 ], [ -1, %818 ]
  %821 = zext i8 %820 to i32, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %821, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2272, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 5, metadata !2273, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2642
  br label %822, !dbg !2643

; <label>:822:                                    ; preds = %831, %819
  %823 = phi i32 [ 0, %819 ], [ %832, %831 ]
  %824 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %823, !dbg !2644
  %825 = bitcast %struct.__INDICATOR* %824 to i32*, !dbg !2645
  %826 = load i32, i32* %825, align 1, !dbg !2645, !tbaa !1436
  %827 = icmp eq i32 %826, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 5) to i32), !dbg !2646
  br i1 %827, label %828, label %831, !dbg !2647

; <label>:828:                                    ; preds = %822
  %829 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %823, i32 3, !dbg !2648
  %830 = load i8, i8* %829, align 1, !dbg !2648, !tbaa !2253
  br label %835, !dbg !2649

; <label>:831:                                    ; preds = %822
  %832 = add nuw nsw i32 %823, 1, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %832, metadata !2274, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %832, metadata !2274, metadata !DIExpression()), !dbg !2642
  %833 = icmp ult i32 %832, 8, !dbg !2651
  br i1 %833, label %822, label %834, !dbg !2643, !llvm.loop !2295

; <label>:834:                                    ; preds = %831
  br label %835, !dbg !2652

; <label>:835:                                    ; preds = %834, %828
  %836 = phi i8 [ %830, %828 ], [ -1, %834 ]
  %837 = icmp eq i8 %836, %820, !dbg !2652
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 1, metadata !2593, metadata !DIExpression()), !dbg !2654
  %838 = select i1 %837, i32 255, i32 1, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %821, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %838, metadata !2593, metadata !DIExpression()), !dbg !2654
  br i1 %837, label %839, label %844, !dbg !2656

; <label>:839:                                    ; preds = %835
  br label %849, !dbg !2657

; <label>:840:                                    ; preds = %802
  %841 = zext i8 %788 to i32, !dbg !2660
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression()), !dbg !2654
  %842 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2661
  %843 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 27, i32 %841, i8* %842) #9, !dbg !2666
  br label %844, !dbg !2667

; <label>:844:                                    ; preds = %840, %835
  %845 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, !dbg !2668
  %846 = bitcast [8 x %struct.__INDICATOR]* %845 to i8*, !dbg !2669
  %847 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, !dbg !2670
  %848 = bitcast [8 x %struct.__INDICATOR]* %847 to i8*, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %846, i8* %848, i32 56, i32 1, i1 false) #11, !dbg !2669
  br label %80, !dbg !2671

; <label>:849:                                    ; preds = %855, %839
  %850 = phi i32 [ %856, %855 ], [ 0, %839 ]
  %851 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %850, !dbg !2657
  %852 = bitcast %struct.__INDICATOR* %851 to i32*, !dbg !2672
  %853 = load i32, i32* %852, align 1, !dbg !2672, !tbaa !1436
  %854 = icmp eq i32 %853, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2673
  br i1 %854, label %858, label %855, !dbg !2674

; <label>:855:                                    ; preds = %849
  %856 = add nuw nsw i32 %850, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %856, metadata !2311, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %856, metadata !2311, metadata !DIExpression()), !dbg !2676
  %857 = icmp ult i32 %856, 8, !dbg !2677
  br i1 %857, label %849, label %932, !dbg !2678, !llvm.loop !2325

; <label>:858:                                    ; preds = %849
  %859 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %850, i32 3, !dbg !2679
  %860 = load i8, i8* %859, align 1, !dbg !2679, !tbaa !2253
  %861 = icmp eq i8 %860, 0, !dbg !2680
  br i1 %861, label %862, label %933, !dbg !2681

; <label>:862:                                    ; preds = %858
  br label %863, !dbg !2682

; <label>:863:                                    ; preds = %869, %862
  %864 = phi i32 [ %870, %869 ], [ 0, %862 ]
  %865 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %864, !dbg !2682
  %866 = bitcast %struct.__INDICATOR* %865 to i32*, !dbg !2684
  %867 = load i32, i32* %866, align 1, !dbg !2684, !tbaa !1436
  %868 = icmp eq i32 %867, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2685
  br i1 %868, label %872, label %869, !dbg !2686

; <label>:869:                                    ; preds = %863
  %870 = add nuw nsw i32 %864, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %870, metadata !2274, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %870, metadata !2274, metadata !DIExpression()), !dbg !2688
  %871 = icmp ult i32 %870, 8, !dbg !2689
  br i1 %871, label %863, label %905, !dbg !2690, !llvm.loop !2295

; <label>:872:                                    ; preds = %863
  %873 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %864, i32 3, !dbg !2691
  %874 = load i8, i8* %873, align 1, !dbg !2691, !tbaa !2253
  %875 = icmp eq i8 %874, 0, !dbg !2692
  br i1 %875, label %876, label %906, !dbg !2693

; <label>:876:                                    ; preds = %872
  br label %877, !dbg !2694

; <label>:877:                                    ; preds = %883, %876
  %878 = phi i32 [ %884, %883 ], [ 0, %876 ]
  %879 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %878, !dbg !2694
  %880 = bitcast %struct.__INDICATOR* %879 to i32*, !dbg !2696
  %881 = load i32, i32* %880, align 1, !dbg !2696, !tbaa !1436
  %882 = icmp eq i32 %881, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2697
  br i1 %882, label %886, label %883, !dbg !2698

; <label>:883:                                    ; preds = %877
  %884 = add nuw nsw i32 %878, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %884, metadata !2274, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %884, metadata !2274, metadata !DIExpression()), !dbg !2700
  %885 = icmp ult i32 %884, 8, !dbg !2701
  br i1 %885, label %877, label %890, !dbg !2702, !llvm.loop !2295

; <label>:886:                                    ; preds = %877
  %887 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %878, i32 3, !dbg !2703
  %888 = load i8, i8* %887, align 1, !dbg !2703, !tbaa !2253
  %889 = icmp eq i8 %888, 0, !dbg !2704
  br i1 %889, label %933, label %891, !dbg !2705

; <label>:890:                                    ; preds = %883
  br label %891, !dbg !2706

; <label>:891:                                    ; preds = %890, %886
  br label %892, !dbg !2706

; <label>:892:                                    ; preds = %898, %891
  %893 = phi i32 [ %899, %898 ], [ 0, %891 ]
  %894 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %893, !dbg !2706
  %895 = bitcast %struct.__INDICATOR* %894 to i32*, !dbg !2709
  %896 = load i32, i32* %895, align 1, !dbg !2709, !tbaa !1436
  %897 = icmp eq i32 %896, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2710
  br i1 %897, label %901, label %898, !dbg !2711

; <label>:898:                                    ; preds = %892
  %899 = add nuw nsw i32 %893, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %899, metadata !2311, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 %899, metadata !2311, metadata !DIExpression()), !dbg !2713
  %900 = icmp ult i32 %899, 8, !dbg !2714
  br i1 %900, label %892, label %931, !dbg !2715, !llvm.loop !2325

; <label>:901:                                    ; preds = %892
  %902 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %893, i32 3, !dbg !2716
  %903 = load i8, i8* %902, align 1, !dbg !2716, !tbaa !2253
  %904 = icmp eq i8 %903, 0, !dbg !2717
  br i1 %904, label %906, label %933, !dbg !2718

; <label>:905:                                    ; preds = %869
  br label %906, !dbg !2653

; <label>:906:                                    ; preds = %905, %901, %872
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 5, metadata !2593, metadata !DIExpression()), !dbg !2654
  %907 = load i24, i24* %271, align 4, !dbg !2720
  %908 = and i24 %907, 61440, !dbg !2720
  %909 = icmp eq i24 %908, 0, !dbg !2723
  br i1 %909, label %910, label %922, !dbg !2724

; <label>:910:                                    ; preds = %906
  br label %911, !dbg !2725

; <label>:911:                                    ; preds = %919, %910
  %912 = phi i32 [ %920, %919 ], [ 0, %910 ]
  %913 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %912, !dbg !2725
  %914 = bitcast %struct.__INDICATOR* %913 to i32*, !dbg !2740
  %915 = load i32, i32* %914, align 1, !dbg !2740, !tbaa !1436
  %916 = icmp eq i32 %915, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2741
  br i1 %916, label %917, label %919, !dbg !2742

; <label>:917:                                    ; preds = %911
  %918 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %912, i32 3, !dbg !2743
  store i8 0, i8* %918, align 1, !dbg !2745, !tbaa !2253
  br label %919, !dbg !2746

; <label>:919:                                    ; preds = %917, %911
  %920 = add nuw nsw i32 %912, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %920, metadata !2737, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %920, metadata !2737, metadata !DIExpression()), !dbg !2749
  %921 = icmp eq i32 %920, 8, !dbg !2750
  br i1 %921, label %930, label %911, !dbg !2752, !llvm.loop !2754

; <label>:922:                                    ; preds = %906
  %923 = and i24 %907, -61441, !dbg !2757
  store i24 %923, i24* %271, align 4, !dbg !2757
  %924 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2759, !tbaa !483
  %925 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %924, i32 0, i32 0, !dbg !2761
  %926 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %925, align 4, !dbg !2761, !tbaa !1039
  %927 = icmp eq void (i8*, i32, i32)* %926, null, !dbg !2759
  br i1 %927, label %933, label %928, !dbg !2762

; <label>:928:                                    ; preds = %922
  %929 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2763
  call void %926(i8* %929, i32 8, i32 0) #9, !dbg !2765
  br label %933, !dbg !2766

; <label>:930:                                    ; preds = %919
  br label %933, !dbg !2653

; <label>:931:                                    ; preds = %898
  br label %933, !dbg !2653

; <label>:932:                                    ; preds = %855
  br label %933, !dbg !2653

; <label>:933:                                    ; preds = %932, %931, %930, %928, %922, %901, %886, %858
  %934 = phi i32 [ 5, %928 ], [ 5, %922 ], [ %838, %901 ], [ %838, %886 ], [ %838, %858 ], [ 5, %930 ], [ %838, %931 ], [ %838, %932 ]
  %935 = phi i32 [ 1, %928 ], [ 1, %922 ], [ 0, %901 ], [ 0, %886 ], [ 0, %858 ], [ 1, %930 ], [ 0, %931 ], [ 0, %932 ]
  call void @llvm.dbg.value(metadata i32 %935, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %934, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2771
  br label %936, !dbg !2772

; <label>:936:                                    ; preds = %942, %933
  %937 = phi i32 [ 0, %933 ], [ %943, %942 ]
  %938 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %937, !dbg !2773
  %939 = bitcast %struct.__INDICATOR* %938 to i32*, !dbg !2774
  %940 = load i32, i32* %939, align 1, !dbg !2774, !tbaa !1436
  %941 = icmp eq i32 %940, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2775
  br i1 %941, label %945, label %942, !dbg !2776

; <label>:942:                                    ; preds = %936
  %943 = add nuw nsw i32 %937, 1, !dbg !2777
  call void @llvm.dbg.value(metadata i32 %943, metadata !2311, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %943, metadata !2311, metadata !DIExpression()), !dbg !2771
  %944 = icmp ult i32 %943, 8, !dbg !2778
  br i1 %944, label %936, label %967, !dbg !2772, !llvm.loop !2325

; <label>:945:                                    ; preds = %936
  %946 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %937, i32 3, !dbg !2779
  %947 = load i8, i8* %946, align 1, !dbg !2779, !tbaa !2253
  %948 = icmp eq i8 %947, 0, !dbg !2780
  br i1 %948, label %949, label %968, !dbg !2781

; <label>:949:                                    ; preds = %945
  br label %950, !dbg !2782

; <label>:950:                                    ; preds = %956, %949
  %951 = phi i32 [ %957, %956 ], [ 0, %949 ]
  %952 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %951, !dbg !2782
  %953 = bitcast %struct.__INDICATOR* %952 to i32*, !dbg !2784
  %954 = load i32, i32* %953, align 1, !dbg !2784, !tbaa !1436
  %955 = icmp eq i32 %954, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2785
  br i1 %955, label %959, label %956, !dbg !2786

; <label>:956:                                    ; preds = %950
  %957 = add nuw nsw i32 %951, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %957, metadata !2311, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %957, metadata !2311, metadata !DIExpression()), !dbg !2788
  %958 = icmp ult i32 %957, 8, !dbg !2789
  br i1 %958, label %950, label %966, !dbg !2790, !llvm.loop !2325

; <label>:959:                                    ; preds = %950
  %960 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %951, i32 3, !dbg !2791
  %961 = load i8, i8* %960, align 1, !dbg !2791, !tbaa !2253
  %962 = icmp eq i8 %961, 1, !dbg !2792
  br i1 %962, label %963, label %968, !dbg !2793

; <label>:963:                                    ; preds = %959
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 2, metadata !2593, metadata !DIExpression()), !dbg !2654
  %964 = load i16, i16* %266, align 4, !dbg !2794, !tbaa !544
  %965 = call fastcc i32 @hfp_speak_gain_control(i16 zeroext %964, i32 3, i8 zeroext 0) #9, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %965, metadata !2591, metadata !DIExpression()), !dbg !2637
  br label %968, !dbg !2797

; <label>:966:                                    ; preds = %956
  br label %968, !dbg !2637

; <label>:967:                                    ; preds = %942
  br label %968, !dbg !2637

; <label>:968:                                    ; preds = %967, %966, %963, %959, %945
  %969 = phi i32 [ 2, %963 ], [ %934, %959 ], [ %934, %945 ], [ %934, %966 ], [ %934, %967 ]
  %970 = phi i32 [ 1, %963 ], [ %935, %959 ], [ %935, %945 ], [ %935, %966 ], [ %935, %967 ]
  %971 = phi i32 [ %965, %963 ], [ %821, %959 ], [ %821, %945 ], [ %821, %966 ], [ %821, %967 ]
  call void @llvm.dbg.value(metadata i32 %971, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %970, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %969, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2802
  br label %972, !dbg !2803

; <label>:972:                                    ; preds = %978, %968
  %973 = phi i32 [ 0, %968 ], [ %979, %978 ]
  %974 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %973, !dbg !2804
  %975 = bitcast %struct.__INDICATOR* %974 to i32*, !dbg !2805
  %976 = load i32, i32* %975, align 1, !dbg !2805, !tbaa !1436
  %977 = icmp eq i32 %976, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2806
  br i1 %977, label %981, label %978, !dbg !2807

; <label>:978:                                    ; preds = %972
  %979 = add nuw nsw i32 %973, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %979, metadata !2311, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 %979, metadata !2311, metadata !DIExpression()), !dbg !2802
  %980 = icmp ult i32 %979, 8, !dbg !2809
  br i1 %980, label %972, label %1003, !dbg !2803, !llvm.loop !2325

; <label>:981:                                    ; preds = %972
  %982 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %973, i32 3, !dbg !2810
  %983 = load i8, i8* %982, align 1, !dbg !2810, !tbaa !2253
  %984 = icmp eq i8 %983, 0, !dbg !2811
  br i1 %984, label %985, label %1004, !dbg !2812

; <label>:985:                                    ; preds = %981
  br label %986, !dbg !2813

; <label>:986:                                    ; preds = %992, %985
  %987 = phi i32 [ %993, %992 ], [ 0, %985 ]
  %988 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %987, !dbg !2813
  %989 = bitcast %struct.__INDICATOR* %988 to i32*, !dbg !2815
  %990 = load i32, i32* %989, align 1, !dbg !2815, !tbaa !1436
  %991 = icmp eq i32 %990, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2816
  br i1 %991, label %995, label %992, !dbg !2817

; <label>:992:                                    ; preds = %986
  %993 = add nuw nsw i32 %987, 1, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %993, metadata !2311, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 %993, metadata !2311, metadata !DIExpression()), !dbg !2819
  %994 = icmp ult i32 %993, 8, !dbg !2820
  br i1 %994, label %986, label %1002, !dbg !2821, !llvm.loop !2325

; <label>:995:                                    ; preds = %986
  %996 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %987, i32 3, !dbg !2822
  %997 = load i8, i8* %996, align 1, !dbg !2822, !tbaa !2253
  %998 = icmp eq i8 %997, 2, !dbg !2823
  br i1 %998, label %999, label %1004, !dbg !2824

; <label>:999:                                    ; preds = %995
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 3, metadata !2593, metadata !DIExpression()), !dbg !2654
  %1000 = load i16, i16* %266, align 4, !dbg !2825, !tbaa !544
  %1001 = call fastcc i32 @hfp_speak_gain_control(i16 zeroext %1000, i32 3, i8 zeroext 0) #9, !dbg !2827
  call void @llvm.dbg.value(metadata i32 %1001, metadata !2591, metadata !DIExpression()), !dbg !2637
  br label %1004, !dbg !2828

; <label>:1002:                                   ; preds = %992
  br label %1004, !dbg !2637

; <label>:1003:                                   ; preds = %978
  br label %1004, !dbg !2637

; <label>:1004:                                   ; preds = %1003, %1002, %999, %995, %981
  %1005 = phi i32 [ 3, %999 ], [ %969, %995 ], [ %969, %981 ], [ %969, %1002 ], [ %969, %1003 ]
  %1006 = phi i32 [ 1, %999 ], [ %970, %995 ], [ %970, %981 ], [ %970, %1002 ], [ %970, %1003 ]
  %1007 = phi i32 [ %1001, %999 ], [ %971, %995 ], [ %971, %981 ], [ %971, %1002 ], [ %971, %1003 ]
  call void @llvm.dbg.value(metadata i32 %1007, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %1006, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1005, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2833
  br label %1008, !dbg !2834

; <label>:1008:                                   ; preds = %1014, %1004
  %1009 = phi i32 [ 0, %1004 ], [ %1015, %1014 ]
  %1010 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1009, !dbg !2835
  %1011 = bitcast %struct.__INDICATOR* %1010 to i32*, !dbg !2836
  %1012 = load i32, i32* %1011, align 1, !dbg !2836, !tbaa !1436
  %1013 = icmp eq i32 %1012, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2837
  br i1 %1013, label %1017, label %1014, !dbg !2838

; <label>:1014:                                   ; preds = %1008
  %1015 = add nuw nsw i32 %1009, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %1015, metadata !2311, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 %1015, metadata !2311, metadata !DIExpression()), !dbg !2833
  %1016 = icmp ult i32 %1015, 8, !dbg !2840
  br i1 %1016, label %1008, label %1040, !dbg !2834, !llvm.loop !2325

; <label>:1017:                                   ; preds = %1008
  %1018 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1009, i32 3, !dbg !2841
  %1019 = load i8, i8* %1018, align 1, !dbg !2841, !tbaa !2253
  %1020 = icmp eq i8 %1019, 0, !dbg !2842
  br i1 %1020, label %1021, label %1041, !dbg !2843

; <label>:1021:                                   ; preds = %1017
  br label %1022, !dbg !2844

; <label>:1022:                                   ; preds = %1031, %1021
  %1023 = phi i32 [ %1032, %1031 ], [ 0, %1021 ]
  %1024 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1023, !dbg !2844
  %1025 = bitcast %struct.__INDICATOR* %1024 to i32*, !dbg !2846
  %1026 = load i32, i32* %1025, align 1, !dbg !2846, !tbaa !1436
  %1027 = icmp eq i32 %1026, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2847
  br i1 %1027, label %1028, label %1031, !dbg !2848

; <label>:1028:                                   ; preds = %1022
  %1029 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1023, i32 3, !dbg !2849
  %1030 = load i8, i8* %1029, align 1, !dbg !2849, !tbaa !2253
  br label %1035, !dbg !2850

; <label>:1031:                                   ; preds = %1022
  %1032 = add nuw nsw i32 %1023, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %1032, metadata !2311, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %1032, metadata !2311, metadata !DIExpression()), !dbg !2852
  %1033 = icmp ult i32 %1032, 8, !dbg !2853
  br i1 %1033, label %1022, label %1034, !dbg !2854, !llvm.loop !2325

; <label>:1034:                                   ; preds = %1031
  br label %1035, !dbg !2855

; <label>:1035:                                   ; preds = %1034, %1028
  %1036 = phi i8 [ %1030, %1028 ], [ -1, %1034 ]
  %1037 = icmp eq i8 %1036, 3, !dbg !2855
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 6, metadata !2593, metadata !DIExpression()), !dbg !2654
  %1038 = select i1 %1037, i32 6, i32 %1005, !dbg !2856
  %1039 = select i1 %1037, i32 1, i32 %1006, !dbg !2856
  br label %1041, !dbg !2856

; <label>:1040:                                   ; preds = %1014
  br label %1041, !dbg !2653

; <label>:1041:                                   ; preds = %1040, %1035, %1017
  %1042 = phi i32 [ %1005, %1017 ], [ %1038, %1035 ], [ %1005, %1040 ]
  %1043 = phi i32 [ %1006, %1017 ], [ %1039, %1035 ], [ %1006, %1040 ]
  call void @llvm.dbg.value(metadata i32 %1043, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1042, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2861
  br label %1044, !dbg !2862

; <label>:1044:                                   ; preds = %1050, %1041
  %1045 = phi i32 [ 0, %1041 ], [ %1051, %1050 ]
  %1046 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1045, !dbg !2863
  %1047 = bitcast %struct.__INDICATOR* %1046 to i32*, !dbg !2864
  %1048 = load i32, i32* %1047, align 1, !dbg !2864, !tbaa !1436
  %1049 = icmp eq i32 %1048, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2865
  br i1 %1049, label %1053, label %1050, !dbg !2866

; <label>:1050:                                   ; preds = %1044
  %1051 = add nuw nsw i32 %1045, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %1051, metadata !2311, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %1051, metadata !2311, metadata !DIExpression()), !dbg !2861
  %1052 = icmp ult i32 %1051, 8, !dbg !2868
  br i1 %1052, label %1044, label %1076, !dbg !2862, !llvm.loop !2325

; <label>:1053:                                   ; preds = %1044
  %1054 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1045, i32 3, !dbg !2869
  %1055 = load i8, i8* %1054, align 1, !dbg !2869, !tbaa !2253
  %1056 = icmp eq i8 %1055, 1, !dbg !2870
  br i1 %1056, label %1057, label %1077, !dbg !2871

; <label>:1057:                                   ; preds = %1053
  br label %1058, !dbg !2872

; <label>:1058:                                   ; preds = %1067, %1057
  %1059 = phi i32 [ %1068, %1067 ], [ 0, %1057 ]
  %1060 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %1059, !dbg !2872
  %1061 = bitcast %struct.__INDICATOR* %1060 to i32*, !dbg !2874
  %1062 = load i32, i32* %1061, align 1, !dbg !2874, !tbaa !1436
  %1063 = icmp eq i32 %1062, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2875
  br i1 %1063, label %1064, label %1067, !dbg !2876

; <label>:1064:                                   ; preds = %1058
  %1065 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %1059, i32 3, !dbg !2877
  %1066 = load i8, i8* %1065, align 1, !dbg !2877, !tbaa !2253
  br label %1071, !dbg !2878

; <label>:1067:                                   ; preds = %1058
  %1068 = add nuw nsw i32 %1059, 1, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %1068, metadata !2274, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 %1068, metadata !2274, metadata !DIExpression()), !dbg !2880
  %1069 = icmp ult i32 %1068, 8, !dbg !2881
  br i1 %1069, label %1058, label %1070, !dbg !2882, !llvm.loop !2295

; <label>:1070:                                   ; preds = %1067
  br label %1071, !dbg !2883

; <label>:1071:                                   ; preds = %1070, %1064
  %1072 = phi i8 [ %1066, %1064 ], [ -1, %1070 ]
  %1073 = icmp eq i8 %1072, 0, !dbg !2883
  call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 4, metadata !2593, metadata !DIExpression()), !dbg !2654
  %1074 = select i1 %1073, i32 4, i32 %1042, !dbg !2884
  %1075 = select i1 %1073, i32 1, i32 %1043, !dbg !2884
  br label %1077, !dbg !2884

; <label>:1076:                                   ; preds = %1050
  br label %1077, !dbg !2653

; <label>:1077:                                   ; preds = %1076, %1071, %1053
  %1078 = phi i32 [ %1042, %1053 ], [ %1074, %1071 ], [ %1042, %1076 ]
  %1079 = phi i32 [ %1043, %1053 ], [ %1075, %1071 ], [ %1043, %1076 ]
  call void @llvm.dbg.value(metadata i32 %1079, metadata !2592, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1078, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2888
  br label %1080, !dbg !2889

; <label>:1080:                                   ; preds = %1086, %1077
  %1081 = phi i32 [ 0, %1077 ], [ %1087, %1086 ]
  %1082 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1081, !dbg !2890
  %1083 = bitcast %struct.__INDICATOR* %1082 to i32*, !dbg !2891
  %1084 = load i32, i32* %1083, align 1, !dbg !2891, !tbaa !1436
  %1085 = icmp eq i32 %1084, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2892
  br i1 %1085, label %1089, label %1086, !dbg !2893

; <label>:1086:                                   ; preds = %1080
  %1087 = add nuw nsw i32 %1081, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %1087, metadata !2311, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %1087, metadata !2311, metadata !DIExpression()), !dbg !2888
  %1088 = icmp ult i32 %1087, 8, !dbg !2895
  br i1 %1088, label %1080, label %1133, !dbg !2889, !llvm.loop !2325

; <label>:1089:                                   ; preds = %1080
  %1090 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1081, i32 3, !dbg !2896
  %1091 = load i8, i8* %1090, align 1, !dbg !2896, !tbaa !2253
  %1092 = icmp eq i8 %1091, 1, !dbg !2897
  br i1 %1092, label %1093, label %1134, !dbg !2898

; <label>:1093:                                   ; preds = %1089
  br label %1094, !dbg !2899

; <label>:1094:                                   ; preds = %1103, %1093
  %1095 = phi i32 [ %1104, %1103 ], [ 0, %1093 ]
  %1096 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %1095, !dbg !2899
  %1097 = bitcast %struct.__INDICATOR* %1096 to i32*, !dbg !2901
  %1098 = load i32, i32* %1097, align 1, !dbg !2901, !tbaa !1436
  %1099 = icmp eq i32 %1098, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !2902
  br i1 %1099, label %1100, label %1103, !dbg !2903

; <label>:1100:                                   ; preds = %1094
  %1101 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, i32 %1095, i32 3, !dbg !2904
  %1102 = load i8, i8* %1101, align 1, !dbg !2904, !tbaa !2253
  br label %1107, !dbg !2905

; <label>:1103:                                   ; preds = %1094
  %1104 = add nuw nsw i32 %1095, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %1104, metadata !2274, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %1104, metadata !2274, metadata !DIExpression()), !dbg !2907
  %1105 = icmp ult i32 %1104, 8, !dbg !2908
  br i1 %1105, label %1094, label %1106, !dbg !2909, !llvm.loop !2295

; <label>:1106:                                   ; preds = %1103
  br label %1107, !dbg !2910

; <label>:1107:                                   ; preds = %1106, %1100
  %1108 = phi i8 [ %1102, %1100 ], [ -1, %1106 ]
  call void @llvm.dbg.value(metadata i8 %1108, metadata !2594, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !2309, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 4, metadata !2310, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2914
  br label %1109, !dbg !2915

; <label>:1109:                                   ; preds = %1118, %1107
  %1110 = phi i32 [ 0, %1107 ], [ %1119, %1118 ]
  %1111 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1110, !dbg !2916
  %1112 = bitcast %struct.__INDICATOR* %1111 to i32*, !dbg !2917
  %1113 = load i32, i32* %1112, align 1, !dbg !2917, !tbaa !1436
  %1114 = icmp eq i32 %1113, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !2918
  br i1 %1114, label %1115, label %1118, !dbg !2919

; <label>:1115:                                   ; preds = %1109
  %1116 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1110, i32 3, !dbg !2920
  %1117 = load i8, i8* %1116, align 1, !dbg !2920, !tbaa !2253
  br label %1122, !dbg !2921

; <label>:1118:                                   ; preds = %1109
  %1119 = add nuw nsw i32 %1110, 1, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %1119, metadata !2311, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %1119, metadata !2311, metadata !DIExpression()), !dbg !2914
  %1120 = icmp ult i32 %1119, 8, !dbg !2923
  br i1 %1120, label %1109, label %1121, !dbg !2915, !llvm.loop !2325

; <label>:1121:                                   ; preds = %1118
  br label %1122, !dbg !2924

; <label>:1122:                                   ; preds = %1121, %1115
  %1123 = phi i8 [ %1117, %1115 ], [ -1, %1121 ]
  call void @llvm.dbg.value(metadata i8 %1123, metadata !2597, metadata !DIExpression()), !dbg !2924
  %1124 = zext i8 %1123 to i32, !dbg !2925
  %1125 = icmp eq i8 %1108, %1123, !dbg !2927
  br i1 %1125, label %1134, label %1126, !dbg !2928

; <label>:1126:                                   ; preds = %1122
  %1127 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !2929, !tbaa !483
  %1128 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1127, i32 0, i32 0, !dbg !2932
  %1129 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %1128, align 4, !dbg !2932, !tbaa !1039
  %1130 = icmp eq void (i8*, i32, i32)* %1129, null, !dbg !2929
  br i1 %1130, label %1134, label %1131, !dbg !2933

; <label>:1131:                                   ; preds = %1126
  %1132 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !2934
  call void %1129(i8* %1132, i32 11, i32 %1124) #9, !dbg !2936
  br label %1134, !dbg !2937

; <label>:1133:                                   ; preds = %1086
  br label %1134, !dbg !2938

; <label>:1134:                                   ; preds = %1133, %1131, %1126, %1122, %1089
  br label %1135, !dbg !2938

; <label>:1135:                                   ; preds = %1141, %1134
  %1136 = phi i32 [ %1142, %1141 ], [ 0, %1134 ]
  %1137 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1136, !dbg !2938
  %1138 = bitcast %struct.__INDICATOR* %1137 to i32*, !dbg !2941
  %1139 = load i32, i32* %1138, align 1, !dbg !2941, !tbaa !1436
  %1140 = icmp eq i32 %1139, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 1) to i32), !dbg !2942
  br i1 %1140, label %1144, label %1141, !dbg !2943

; <label>:1141:                                   ; preds = %1135
  %1142 = add nuw nsw i32 %1136, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i32 %1142, metadata !2311, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 %1142, metadata !2311, metadata !DIExpression()), !dbg !2945
  %1143 = icmp ult i32 %1142, 8, !dbg !2946
  br i1 %1143, label %1135, label %1270, !dbg !2947, !llvm.loop !2325

; <label>:1144:                                   ; preds = %1135
  %1145 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1136, i32 3, !dbg !2948
  %1146 = load i8, i8* %1145, align 1, !dbg !2948, !tbaa !2253
  %1147 = icmp eq i8 %1146, 1, !dbg !2949
  br i1 %1147, label %1148, label %1271, !dbg !2950

; <label>:1148:                                   ; preds = %1144
  br label %1149, !dbg !2951

; <label>:1149:                                   ; preds = %1155, %1148
  %1150 = phi i32 [ %1156, %1155 ], [ 0, %1148 ]
  %1151 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1150, !dbg !2951
  %1152 = bitcast %struct.__INDICATOR* %1151 to i32*, !dbg !2955
  %1153 = load i32, i32* %1152, align 1, !dbg !2955, !tbaa !1436
  %1154 = icmp eq i32 %1153, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2956
  br i1 %1154, label %1158, label %1155, !dbg !2957

; <label>:1155:                                   ; preds = %1149
  %1156 = add nuw nsw i32 %1150, 1, !dbg !2958
  call void @llvm.dbg.value(metadata i32 %1156, metadata !2311, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 %1156, metadata !2311, metadata !DIExpression()), !dbg !2959
  %1157 = icmp ult i32 %1156, 8, !dbg !2960
  br i1 %1157, label %1149, label %1172, !dbg !2961, !llvm.loop !2325

; <label>:1158:                                   ; preds = %1149
  %1159 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1150, i32 3, !dbg !2962
  %1160 = load i8, i8* %1159, align 1, !dbg !2962, !tbaa !2253
  %1161 = icmp eq i8 %1160, 2, !dbg !2963
  br i1 %1161, label %1162, label %1173, !dbg !2964

; <label>:1162:                                   ; preds = %1158
  %1163 = load i24, i24* %271, align 4, !dbg !2965
  %1164 = lshr i24 %1163, 12, !dbg !2965
  %1165 = trunc i24 %1164 to i8, !dbg !2965
  %1166 = and i8 %1165, 11, !dbg !2965
  %1167 = or i8 %1166, 4, !dbg !2965
  %1168 = zext i8 %1167 to i24, !dbg !2965
  %1169 = shl nuw nsw i24 %1168, 12, !dbg !2965
  %1170 = and i24 %1163, -61441, !dbg !2965
  %1171 = or i24 %1169, %1170, !dbg !2965
  store i24 %1171, i24* %271, align 4, !dbg !2965
  br label %1173, !dbg !2967

; <label>:1172:                                   ; preds = %1155
  br label %1173, !dbg !2968

; <label>:1173:                                   ; preds = %1172, %1162, %1158
  br label %1174, !dbg !2968

; <label>:1174:                                   ; preds = %1180, %1173
  %1175 = phi i32 [ %1181, %1180 ], [ 0, %1173 ]
  %1176 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1175, !dbg !2968
  %1177 = bitcast %struct.__INDICATOR* %1176 to i32*, !dbg !2971
  %1178 = load i32, i32* %1177, align 1, !dbg !2971, !tbaa !1436
  %1179 = icmp eq i32 %1178, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !2972
  br i1 %1179, label %1183, label %1180, !dbg !2973

; <label>:1180:                                   ; preds = %1174
  %1181 = add nuw nsw i32 %1175, 1, !dbg !2974
  call void @llvm.dbg.value(metadata i32 %1181, metadata !2311, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 %1181, metadata !2311, metadata !DIExpression()), !dbg !2975
  %1182 = icmp ult i32 %1181, 8, !dbg !2976
  br i1 %1182, label %1174, label %1197, !dbg !2977, !llvm.loop !2325

; <label>:1183:                                   ; preds = %1174
  %1184 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1175, i32 3, !dbg !2978
  %1185 = load i8, i8* %1184, align 1, !dbg !2978, !tbaa !2253
  %1186 = icmp eq i8 %1185, 1, !dbg !2979
  br i1 %1186, label %1187, label %1198, !dbg !2980

; <label>:1187:                                   ; preds = %1183
  %1188 = load i24, i24* %271, align 4, !dbg !2981
  %1189 = lshr i24 %1188, 12, !dbg !2981
  %1190 = trunc i24 %1189 to i8, !dbg !2981
  %1191 = and i8 %1190, 13, !dbg !2981
  %1192 = or i8 %1191, 2, !dbg !2981
  %1193 = zext i8 %1192 to i24, !dbg !2981
  %1194 = shl nuw nsw i24 %1193, 12, !dbg !2981
  %1195 = and i24 %1188, -61441, !dbg !2981
  %1196 = or i24 %1194, %1195, !dbg !2981
  store i24 %1196, i24* %271, align 4, !dbg !2981
  br label %1198, !dbg !2983

; <label>:1197:                                   ; preds = %1180
  br label %1198, !dbg !2984

; <label>:1198:                                   ; preds = %1197, %1187, %1183
  br label %1199, !dbg !2984

; <label>:1199:                                   ; preds = %1205, %1198
  %1200 = phi i32 [ %1206, %1205 ], [ 0, %1198 ]
  %1201 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1200, !dbg !2984
  %1202 = bitcast %struct.__INDICATOR* %1201 to i32*, !dbg !2987
  %1203 = load i32, i32* %1202, align 1, !dbg !2987, !tbaa !1436
  %1204 = icmp eq i32 %1203, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !2988
  br i1 %1204, label %1208, label %1205, !dbg !2989

; <label>:1205:                                   ; preds = %1199
  %1206 = add nuw nsw i32 %1200, 1, !dbg !2990
  call void @llvm.dbg.value(metadata i32 %1206, metadata !2311, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 %1206, metadata !2311, metadata !DIExpression()), !dbg !2991
  %1207 = icmp ult i32 %1206, 8, !dbg !2992
  br i1 %1207, label %1199, label %1215, !dbg !2993, !llvm.loop !2325

; <label>:1208:                                   ; preds = %1199
  %1209 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1200, i32 3, !dbg !2994
  %1210 = load i8, i8* %1209, align 1, !dbg !2994, !tbaa !2253
  %1211 = icmp eq i8 %1210, 0, !dbg !2995
  br i1 %1211, label %1212, label %1216, !dbg !2996

; <label>:1212:                                   ; preds = %1208
  %1213 = load i24, i24* %271, align 4, !dbg !2997
  %1214 = and i24 %1213, -32769, !dbg !2997
  store i24 %1214, i24* %271, align 4, !dbg !2997
  br label %1216, !dbg !2999

; <label>:1215:                                   ; preds = %1205
  br label %1216, !dbg !3000

; <label>:1216:                                   ; preds = %1215, %1212, %1208
  br label %1217, !dbg !3000

; <label>:1217:                                   ; preds = %1223, %1216
  %1218 = phi i32 [ %1224, %1223 ], [ 0, %1216 ]
  %1219 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1218, !dbg !3000
  %1220 = bitcast %struct.__INDICATOR* %1219 to i32*, !dbg !3003
  %1221 = load i32, i32* %1220, align 1, !dbg !3003, !tbaa !1436
  %1222 = icmp eq i32 %1221, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 4) to i32), !dbg !3004
  br i1 %1222, label %1226, label %1223, !dbg !3005

; <label>:1223:                                   ; preds = %1217
  %1224 = add nuw nsw i32 %1218, 1, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %1224, metadata !2311, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %1224, metadata !2311, metadata !DIExpression()), !dbg !3007
  %1225 = icmp ult i32 %1224, 8, !dbg !3008
  br i1 %1225, label %1217, label %1230, !dbg !3009, !llvm.loop !2325

; <label>:1226:                                   ; preds = %1217
  %1227 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1218, i32 3, !dbg !3010
  %1228 = load i8, i8* %1227, align 1, !dbg !3010, !tbaa !2253
  %1229 = icmp eq i8 %1228, 0, !dbg !3011
  br i1 %1229, label %1241, label %1231, !dbg !3012

; <label>:1230:                                   ; preds = %1223
  br label %1231, !dbg !3013

; <label>:1231:                                   ; preds = %1230, %1226
  %1232 = load i24, i24* %271, align 4, !dbg !3013
  %1233 = lshr i24 %1232, 12, !dbg !3013
  %1234 = trunc i24 %1233 to i8, !dbg !3013
  %1235 = and i8 %1234, 7, !dbg !3013
  %1236 = or i8 %1235, 8, !dbg !3013
  %1237 = zext i8 %1236 to i24, !dbg !3013
  %1238 = shl nuw nsw i24 %1237, 12, !dbg !3013
  %1239 = and i24 %1232, -61441, !dbg !3013
  %1240 = or i24 %1238, %1239, !dbg !3013
  store i24 %1240, i24* %271, align 4, !dbg !3013
  br label %1241, !dbg !3015

; <label>:1241:                                   ; preds = %1231, %1226
  br label %1242, !dbg !3016

; <label>:1242:                                   ; preds = %1248, %1241
  %1243 = phi i32 [ %1249, %1248 ], [ 0, %1241 ]
  %1244 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1243, !dbg !3016
  %1245 = bitcast %struct.__INDICATOR* %1244 to i32*, !dbg !3019
  %1246 = load i32, i32* %1245, align 1, !dbg !3019, !tbaa !1436
  %1247 = icmp eq i32 %1246, ptrtoint ([15 x i8]* getelementptr inbounds ([8 x [15 x i8]], [8 x [15 x i8]]* @hfp_ind_str_buf, i32 0, i32 2) to i32), !dbg !3020
  br i1 %1247, label %1251, label %1248, !dbg !3021

; <label>:1248:                                   ; preds = %1242
  %1249 = add nuw nsw i32 %1243, 1, !dbg !3022
  call void @llvm.dbg.value(metadata i32 %1249, metadata !2311, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %1249, metadata !2311, metadata !DIExpression()), !dbg !3023
  %1250 = icmp ult i32 %1249, 8, !dbg !3024
  br i1 %1250, label %1242, label %1258, !dbg !3025, !llvm.loop !2325

; <label>:1251:                                   ; preds = %1242
  %1252 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, i32 %1243, i32 3, !dbg !3026
  %1253 = load i8, i8* %1252, align 1, !dbg !3026, !tbaa !2253
  %1254 = icmp eq i8 %1253, 0, !dbg !3027
  br i1 %1254, label %1255, label %1259, !dbg !3028

; <label>:1255:                                   ; preds = %1251
  %1256 = load i24, i24* %271, align 4, !dbg !3029
  %1257 = and i24 %1256, -24577, !dbg !3029
  store i24 %1257, i24* %271, align 4, !dbg !3029
  br label %1259, !dbg !3031

; <label>:1258:                                   ; preds = %1248
  br label %1259, !dbg !3032

; <label>:1259:                                   ; preds = %1258, %1255, %1251
  %1260 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !3032, !tbaa !483
  %1261 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1260, i32 0, i32 0, !dbg !3034
  %1262 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %1261, align 4, !dbg !3034, !tbaa !1039
  %1263 = icmp eq void (i8*, i32, i32)* %1262, null, !dbg !3032
  br i1 %1263, label %1271, label %1264, !dbg !3035

; <label>:1264:                                   ; preds = %1259
  %1265 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3036
  %1266 = load i24, i24* %271, align 4, !dbg !3038
  %1267 = lshr i24 %1266, 12, !dbg !3038
  %1268 = and i24 %1267, 15, !dbg !3038
  %1269 = zext i24 %1268 to i32, !dbg !3038
  call void %1262(i8* %1265, i32 8, i32 %1269) #9, !dbg !3039
  br label %1271, !dbg !3040

; <label>:1270:                                   ; preds = %1141
  br label %1271, !dbg !3041

; <label>:1271:                                   ; preds = %1270, %1264, %1259, %1144
  %1272 = icmp eq i32 %1079, 0, !dbg !3041
  br i1 %1272, label %1287, label %1273, !dbg !3043

; <label>:1273:                                   ; preds = %1271
  %1274 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !3044, !tbaa !483
  %1275 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1274, i32 0, i32 0, !dbg !3047
  %1276 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %1275, align 4, !dbg !3047, !tbaa !1039
  %1277 = icmp eq void (i8*, i32, i32)* %1276, null, !dbg !3044
  br i1 %1277, label %1287, label %1278, !dbg !3048

; <label>:1278:                                   ; preds = %1273
  %1279 = trunc i32 %1078 to i24, !dbg !3049
  %1280 = load i24, i24* %271, align 4, !dbg !3049
  %1281 = shl i24 %1279, 8, !dbg !3049
  %1282 = and i24 %1281, 3840, !dbg !3049
  %1283 = and i24 %1280, -3841, !dbg !3049
  %1284 = or i24 %1283, %1282, !dbg !3049
  store i24 %1284, i24* %271, align 4, !dbg !3049
  %1285 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %1275, align 4, !dbg !3051, !tbaa !1039
  %1286 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3052
  call void %1285(i8* %1286, i32 %1078, i32 %1007) #9, !dbg !3053
  br label %1287, !dbg !3054

; <label>:1287:                                   ; preds = %1278, %1273, %1271
  %1288 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 10, !dbg !3055
  %1289 = bitcast [8 x %struct.__INDICATOR]* %1288 to i8*, !dbg !3056
  %1290 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 9, !dbg !3057
  %1291 = bitcast [8 x %struct.__INDICATOR]* %1290 to i8*, !dbg !3056
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1289, i8* %1291, i32 56, i32 1, i1 false) #11, !dbg !3056
  br label %80, !dbg !3058

; <label>:1292:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3059, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8* %45, metadata !3062, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i16 %263, metadata !3063, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 7, metadata !3064, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 0, metadata !3065, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #11, !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3067, metadata !DIExpression()), !dbg !3077
  store i32 0, i32* %7, align 4, !dbg !3077, !tbaa !2057
  call void @llvm.dbg.value(metadata i32 0, metadata !3068, metadata !DIExpression()), !dbg !3078
  %1293 = and i32 %262, 65535
  br label %1294, !dbg !3079

; <label>:1294:                                   ; preds = %1301, %1292
  %1295 = phi i32 [ 7, %1292 ], [ %1302, %1301 ]
  call void @llvm.dbg.value(metadata i32 %1295, metadata !3064, metadata !DIExpression()), !dbg !3073
  %1296 = getelementptr inbounds i8, i8* %45, i32 %1295, !dbg !3080
  %1297 = load i8, i8* %1296, align 1, !dbg !3080, !tbaa !525
  %1298 = add i8 %1297, -48, !dbg !3080
  %1299 = icmp ult i8 %1298, 10, !dbg !3080
  br i1 %1299, label %1300, label %1301, !dbg !3082

; <label>:1300:                                   ; preds = %1294
  br label %1304, !dbg !3084

; <label>:1301:                                   ; preds = %1294
  %1302 = add nuw nsw i32 %1295, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %1302, metadata !3064, metadata !DIExpression()), !dbg !3073
  %1303 = icmp ugt i32 %1295, %1293, !dbg !3090
  br i1 %1303, label %1345, label %1294, !dbg !3091, !llvm.loop !3092

; <label>:1304:                                   ; preds = %1308, %1300
  %1305 = phi i32 [ %1306, %1308 ], [ %1295, %1300 ]
  %1306 = add i32 %1305, 1, !dbg !3084
  call void @llvm.dbg.value(metadata i32 %1306, metadata !3064, metadata !DIExpression()), !dbg !3073
  %1307 = icmp ugt i32 %1305, %1293, !dbg !3095
  br i1 %1307, label %1344, label %1308, !dbg !3096, !llvm.loop !3097

; <label>:1308:                                   ; preds = %1304
  %1309 = getelementptr inbounds i8, i8* %45, i32 %1306
  %1310 = load i8, i8* %1309, align 1, !tbaa !525
  call void @llvm.dbg.value(metadata i32 %1306, metadata !3064, metadata !DIExpression()), !dbg !3073
  %1311 = icmp eq i8 %1310, 13, !dbg !3100
  br i1 %1311, label %1312, label %1304, !dbg !3101

; <label>:1312:                                   ; preds = %1308
  call void @llvm.dbg.value(metadata i32 undef, metadata !3065, metadata !DIExpression()), !dbg !3074
  %1313 = icmp ugt i32 %1306, %1295, !dbg !3102
  br i1 %1313, label %1314, label %1317, !dbg !3104

; <label>:1314:                                   ; preds = %1312
  %1315 = sub i32 %1306, %1295, !dbg !3105
  call void @llvm.dbg.value(metadata i32* %7, metadata !3067, metadata !DIExpression(DW_OP_deref)), !dbg !3077
  %1316 = call i32 @ASCII_StrToInt(i8* nonnull %1296, i32* nonnull %7, i32 %1315) #9, !dbg !3107
  call void @llvm.dbg.value(metadata i32 %1316, metadata !3064, metadata !DIExpression()), !dbg !3073
  br label %1317, !dbg !3108

; <label>:1317:                                   ; preds = %1314, %1312
  %1318 = phi i32 [ %1316, %1314 ], [ %1306, %1312 ]
  call void @llvm.dbg.value(metadata i32 %1318, metadata !3064, metadata !DIExpression()), !dbg !3073
  %1319 = icmp eq i32 %1318, 0, !dbg !3109
  br i1 %1319, label %1320, label %1346, !dbg !3111

; <label>:1320:                                   ; preds = %1317
  %1321 = load i32, i32* %7, align 4, !dbg !3112, !tbaa !2057
  call void @llvm.dbg.value(metadata i32 %1321, metadata !3067, metadata !DIExpression()), !dbg !3077
  %1322 = icmp ugt i32 %1321, 15, !dbg !3115
  br i1 %1322, label %1323, label %1326, !dbg !3116

; <label>:1323:                                   ; preds = %1320
  %1324 = load i24, i24* %271, align 4, !dbg !3117
  %1325 = or i24 %1324, 15, !dbg !3117
  br label %1332, !dbg !3119

; <label>:1326:                                   ; preds = %1320
  %1327 = trunc i32 %1321 to i24, !dbg !3120
  %1328 = load i24, i24* %271, align 4, !dbg !3120
  %1329 = and i24 %1327, 15, !dbg !3120
  %1330 = and i24 %1328, -16, !dbg !3120
  %1331 = or i24 %1330, %1329, !dbg !3120
  br label %1332

; <label>:1332:                                   ; preds = %1326, %1323
  %1333 = phi i24 [ %1331, %1326 ], [ %1325, %1323 ]
  store i24 %1333, i24* %271, align 4
  %1334 = load i16, i16* %266, align 4, !dbg !3122, !tbaa !544
  %1335 = call fastcc i32 @hfp_speak_gain_control(i16 zeroext %1334, i32 3, i8 zeroext 0) #9, !dbg !3123
  call void @llvm.dbg.value(metadata i32 %1335, metadata !3068, metadata !DIExpression()), !dbg !3078
  %1336 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !3124, !tbaa !483
  %1337 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1336, i32 0, i32 0, !dbg !3126
  %1338 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %1337, align 4, !dbg !3126, !tbaa !1039
  %1339 = icmp eq void (i8*, i32, i32)* %1338, null, !dbg !3124
  %1340 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0
  br i1 %1339, label %1342, label %1341, !dbg !3127

; <label>:1341:                                   ; preds = %1332
  call void %1338(i8* %1340, i32 7, i32 %1335) #9, !dbg !3128
  br label %1342, !dbg !3130

; <label>:1342:                                   ; preds = %1341, %1332
  %1343 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 24, i32 %1335, i8* %1340) #9, !dbg !3131
  br label %1346, !dbg !3132

; <label>:1344:                                   ; preds = %1304
  br label %1346, !dbg !3133

; <label>:1345:                                   ; preds = %1301
  br label %1346, !dbg !3133

; <label>:1346:                                   ; preds = %1345, %1344, %1342, %1317
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #11, !dbg !3133
  br label %80, !dbg !3134

; <label>:1347:                                   ; preds = %278
  br i1 %34, label %80, label %1348, !dbg !3135

; <label>:1348:                                   ; preds = %1347
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3136, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %45, metadata !3139, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i16 %263, metadata !3140, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 7, metadata !3141, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i32 0, metadata !3143, metadata !DIExpression()), !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #11, !dbg !3154
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()), !dbg !3155
  store i32 0, i32* %6, align 4, !dbg !3155, !tbaa !2057
  %1349 = and i32 %262, 65535
  br label %1350, !dbg !3156

; <label>:1350:                                   ; preds = %1357, %1348
  %1351 = phi i32 [ 7, %1348 ], [ %1358, %1357 ]
  call void @llvm.dbg.value(metadata i32 %1351, metadata !3141, metadata !DIExpression()), !dbg !3151
  %1352 = getelementptr inbounds i8, i8* %45, i32 %1351, !dbg !3157
  %1353 = load i8, i8* %1352, align 1, !dbg !3157, !tbaa !525
  %1354 = add i8 %1353, -48, !dbg !3157
  %1355 = icmp ult i8 %1354, 10, !dbg !3157
  br i1 %1355, label %1356, label %1357, !dbg !3159

; <label>:1356:                                   ; preds = %1350
  br label %1360, !dbg !3161

; <label>:1357:                                   ; preds = %1350
  %1358 = add nuw nsw i32 %1351, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i32 %1358, metadata !3141, metadata !DIExpression()), !dbg !3151
  %1359 = icmp ugt i32 %1351, %1349, !dbg !3167
  br i1 %1359, label %1392, label %1350, !dbg !3168, !llvm.loop !3169

; <label>:1360:                                   ; preds = %1364, %1356
  %1361 = phi i32 [ %1362, %1364 ], [ %1351, %1356 ]
  %1362 = add i32 %1361, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %1362, metadata !3141, metadata !DIExpression()), !dbg !3151
  %1363 = icmp ugt i32 %1361, %1349, !dbg !3172
  br i1 %1363, label %1391, label %1364, !dbg !3173, !llvm.loop !3174

; <label>:1364:                                   ; preds = %1360
  %1365 = getelementptr inbounds i8, i8* %45, i32 %1362
  %1366 = load i8, i8* %1365, align 1, !tbaa !525
  call void @llvm.dbg.value(metadata i32 %1362, metadata !3141, metadata !DIExpression()), !dbg !3151
  %1367 = icmp eq i8 %1366, 13, !dbg !3177
  br i1 %1367, label %1368, label %1360, !dbg !3178

; <label>:1368:                                   ; preds = %1364
  call void @llvm.dbg.value(metadata i32 undef, metadata !3142, metadata !DIExpression()), !dbg !3152
  %1369 = icmp ugt i32 %1362, %1351, !dbg !3179
  br i1 %1369, label %1370, label %1373, !dbg !3181

; <label>:1370:                                   ; preds = %1368
  %1371 = sub i32 %1362, %1351, !dbg !3182
  call void @llvm.dbg.value(metadata i32* %6, metadata !3144, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %1372 = call i32 @ASCII_StrToInt(i8* nonnull %1352, i32* nonnull %6, i32 %1371) #9, !dbg !3184
  call void @llvm.dbg.value(metadata i32 %1372, metadata !3141, metadata !DIExpression()), !dbg !3151
  br label %1373, !dbg !3185

; <label>:1373:                                   ; preds = %1370, %1368
  %1374 = phi i32 [ %1372, %1370 ], [ %1362, %1368 ]
  call void @llvm.dbg.value(metadata i32 %1374, metadata !3141, metadata !DIExpression()), !dbg !3151
  %1375 = icmp eq i32 %1374, 0, !dbg !3186
  br i1 %1375, label %1376, label %1393, !dbg !3188

; <label>:1376:                                   ; preds = %1373
  %1377 = load i32, i32* %6, align 4, !dbg !3189, !tbaa !2057
  call void @llvm.dbg.value(metadata i32 %1377, metadata !3144, metadata !DIExpression()), !dbg !3155
  %1378 = icmp ugt i32 %1377, 15, !dbg !3192
  br i1 %1378, label %1379, label %1382, !dbg !3193

; <label>:1379:                                   ; preds = %1376
  %1380 = load i24, i24* %271, align 4, !dbg !3194
  %1381 = or i24 %1380, 240, !dbg !3194
  br label %1389, !dbg !3196

; <label>:1382:                                   ; preds = %1376
  %1383 = trunc i32 %1377 to i24, !dbg !3197
  %1384 = load i24, i24* %271, align 4, !dbg !3197
  %1385 = shl i24 %1383, 4, !dbg !3197
  %1386 = and i24 %1385, 240, !dbg !3197
  %1387 = and i24 %1384, -241, !dbg !3197
  %1388 = or i24 %1387, %1386, !dbg !3197
  br label %1389

; <label>:1389:                                   ; preds = %1382, %1379
  %1390 = phi i24 [ %1381, %1379 ], [ %1388, %1382 ]
  store i24 %1390, i24* %271, align 4
  br label %1393, !dbg !3199

; <label>:1391:                                   ; preds = %1360
  br label %1393, !dbg !3200

; <label>:1392:                                   ; preds = %1357
  br label %1393, !dbg !3200

; <label>:1393:                                   ; preds = %1392, %1391, %1389, %1373
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #11, !dbg !3200
  br label %80, !dbg !3201

; <label>:1394:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3202, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %45, metadata !3205, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i16 %263, metadata !3206, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 8, metadata !3207, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 0, metadata !3208, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3209, metadata !DIExpression()), !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #11, !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3210, metadata !DIExpression()), !dbg !3219
  store i32 0, i32* %5, align 4, !dbg !3219, !tbaa !2057
  %1395 = and i32 %262, 65535
  br label %1396, !dbg !3220

; <label>:1396:                                   ; preds = %1403, %1394
  %1397 = phi i32 [ 8, %1394 ], [ %1404, %1403 ]
  call void @llvm.dbg.value(metadata i32 %1397, metadata !3207, metadata !DIExpression()), !dbg !3215
  %1398 = getelementptr inbounds i8, i8* %45, i32 %1397, !dbg !3221
  %1399 = load i8, i8* %1398, align 1, !dbg !3221, !tbaa !525
  %1400 = add i8 %1399, -48, !dbg !3221
  %1401 = icmp ult i8 %1400, 10, !dbg !3221
  br i1 %1401, label %1402, label %1403, !dbg !3223

; <label>:1402:                                   ; preds = %1396
  br label %1406, !dbg !3225

; <label>:1403:                                   ; preds = %1396
  %1404 = add nuw nsw i32 %1397, 1, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %1404, metadata !3207, metadata !DIExpression()), !dbg !3215
  %1405 = icmp ugt i32 %1397, %1395, !dbg !3231
  br i1 %1405, label %1431, label %1396, !dbg !3232, !llvm.loop !3233

; <label>:1406:                                   ; preds = %1410, %1402
  %1407 = phi i32 [ %1408, %1410 ], [ %1397, %1402 ]
  %1408 = add i32 %1407, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %1408, metadata !3207, metadata !DIExpression()), !dbg !3215
  %1409 = icmp ugt i32 %1407, %1395, !dbg !3236
  br i1 %1409, label %1430, label %1410, !dbg !3237, !llvm.loop !3238

; <label>:1410:                                   ; preds = %1406
  %1411 = getelementptr inbounds i8, i8* %45, i32 %1408
  %1412 = load i8, i8* %1411, align 1, !tbaa !525
  call void @llvm.dbg.value(metadata i32 %1408, metadata !3207, metadata !DIExpression()), !dbg !3215
  %1413 = icmp eq i8 %1412, 13, !dbg !3241
  br i1 %1413, label %1414, label %1406, !dbg !3242

; <label>:1414:                                   ; preds = %1410
  call void @llvm.dbg.value(metadata i32 undef, metadata !3208, metadata !DIExpression()), !dbg !3216
  %1415 = icmp ugt i32 %1408, %1397, !dbg !3243
  br i1 %1415, label %1416, label %1419, !dbg !3245

; <label>:1416:                                   ; preds = %1414
  %1417 = sub i32 %1408, %1397, !dbg !3246
  call void @llvm.dbg.value(metadata i32* %5, metadata !3210, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  %1418 = call i32 @ASCII_StrToInt(i8* nonnull %1398, i32* nonnull %5, i32 %1417) #9, !dbg !3248
  call void @llvm.dbg.value(metadata i32 %1418, metadata !3207, metadata !DIExpression()), !dbg !3215
  br label %1419, !dbg !3249

; <label>:1419:                                   ; preds = %1416, %1414
  %1420 = phi i32 [ %1418, %1416 ], [ %1408, %1414 ]
  call void @llvm.dbg.value(metadata i32 %1420, metadata !3207, metadata !DIExpression()), !dbg !3215
  %1421 = icmp eq i32 %1420, 0, !dbg !3250
  br i1 %1421, label %1422, label %1432, !dbg !3252

; <label>:1422:                                   ; preds = %1419
  %1423 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !3253, !tbaa !483
  %1424 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1423, i32 0, i32 0, !dbg !3256
  %1425 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %1424, align 4, !dbg !3256, !tbaa !1039
  %1426 = icmp eq void (i8*, i32, i32)* %1425, null, !dbg !3253
  br i1 %1426, label %1432, label %1427, !dbg !3257

; <label>:1427:                                   ; preds = %1422
  %1428 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3258
  %1429 = load i32, i32* %5, align 4, !dbg !3260, !tbaa !2057
  call void @llvm.dbg.value(metadata i32 %1429, metadata !3210, metadata !DIExpression()), !dbg !3219
  call void %1425(i8* %1428, i32 9, i32 %1429) #9, !dbg !3261
  br label %1432, !dbg !3262

; <label>:1430:                                   ; preds = %1406
  br label %1432, !dbg !3263

; <label>:1431:                                   ; preds = %1403
  br label %1432, !dbg !3263

; <label>:1432:                                   ; preds = %1431, %1430, %1427, %1422, %1419
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #11, !dbg !3263
  br label %80, !dbg !3264

; <label>:1433:                                   ; preds = %278, %278
  call void @llvm.dbg.value(metadata i32 8, metadata !3265, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8 0, metadata !3273, metadata !DIExpression()), !dbg !3278
  %1434 = and i32 %262, 65535
  br label %1435, !dbg !3279

; <label>:1435:                                   ; preds = %1442, %1433
  %1436 = phi i32 [ 8, %1433 ], [ %1440, %1442 ]
  call void @llvm.dbg.value(metadata i32 %1436, metadata !3265, metadata !DIExpression()), !dbg !3274
  %1437 = getelementptr inbounds i8, i8* %45, i32 %1436, !dbg !3280
  %1438 = load i8, i8* %1437, align 1, !dbg !3280, !tbaa !525
  %1439 = icmp eq i8 %1438, 34, !dbg !3282
  %1440 = add nuw nsw i32 %1436, 1
  br i1 %1439, label %1441, label %1442, !dbg !3283

; <label>:1441:                                   ; preds = %1435
  br label %1444, !dbg !3274

; <label>:1442:                                   ; preds = %1435
  call void @llvm.dbg.value(metadata i32 %1440, metadata !3265, metadata !DIExpression()), !dbg !3274
  %1443 = icmp ugt i32 %1436, %1434, !dbg !3284
  br i1 %1443, label %71, label %1435, !dbg !3287, !llvm.loop !1839

; <label>:1444:                                   ; preds = %1449, %1441
  %1445 = phi i32 [ %1450, %1449 ], [ %1440, %1441 ]
  call void @llvm.dbg.value(metadata i32 %1445, metadata !3265, metadata !DIExpression()), !dbg !3274
  %1446 = getelementptr inbounds i8, i8* %45, i32 %1445, !dbg !3288
  %1447 = load i8, i8* %1446, align 1, !dbg !3288, !tbaa !525
  %1448 = icmp eq i8 %1447, 34, !dbg !3289
  br i1 %1448, label %1452, label %1449, !dbg !3290

; <label>:1449:                                   ; preds = %1444
  %1450 = add i32 %1445, 1, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %1450, metadata !3265, metadata !DIExpression()), !dbg !3274
  %1451 = icmp ugt i32 %1445, %1434, !dbg !3294
  br i1 %1451, label %70, label %1444, !dbg !3295, !llvm.loop !1839

; <label>:1452:                                   ; preds = %1444
  call void @llvm.dbg.value(metadata i32 %1445, metadata !3271, metadata !DIExpression()), !dbg !3276
  %1453 = sub i32 %1445, %1440, !dbg !3296
  %1454 = and i32 %1453, 255, !dbg !3297
  %1455 = add nsw i32 %1454, -1, !dbg !3299
  %1456 = icmp ult i32 %1455, 22, !dbg !3299
  br i1 %1456, label %1457, label %80, !dbg !3299

; <label>:1457:                                   ; preds = %1452
  store i8 0, i8* %1446, align 1, !dbg !3300, !tbaa !525
  %1458 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 3, i32 0, !dbg !3302
  %1459 = getelementptr inbounds i8, i8* %45, i32 %1440, !dbg !3303
  %1460 = add nuw nsw i32 %1454, 1, !dbg !3304
  %1461 = icmp ugt i32 %1460, 23, !dbg !3305
  %1462 = sub nsw i32 23, %1454, !dbg !3305
  %1463 = select i1 %1461, i32 0, i32 %1462, !dbg !3305
  %1464 = getelementptr %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 3, i32 %1460, !dbg !3305
  call void @llvm.memset.p0i8.i32(i8* %1464, i8 0, i32 %1463, i32 1, i1 false) #11, !dbg !3305
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1458, i8* %1459, i32 %1460, i32 1, i1 false) #11, !dbg !3305
  %1465 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3306
  %1466 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 3, !dbg !3307
  %1467 = ptrtoint [24 x i8]* %1466 to i32, !dbg !3308
  call void @bt_event_update_to_user(i8* %1465, i32 1129270784, i8 zeroext 12, i32 %1467) #9, !dbg !3309
  %1468 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_phonenum, i32 12, i32 1, i32 %1453, i8* %1459) #9, !dbg !3310
  br label %80, !dbg !3311

; <label>:1469:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* null, metadata !3312, metadata !DIExpression()), !dbg !3317
  %1470 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3319, !tbaa !525
  %1471 = and i8 %1470, 64, !dbg !3319
  %1472 = icmp eq i8 %1471, 0, !dbg !3319
  br i1 %1472, label %80, label %1473, !dbg !3321

; <label>:1473:                                   ; preds = %1469
  %1474 = and i32 %262, 65535, !dbg !3322
  call void @put_buf(i8* nonnull %45, i32 %1474) #9, !dbg !3322
  br label %80, !dbg !3322

; <label>:1475:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3324, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* %45, metadata !3327, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i16 %263, metadata !3328, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 8, metadata !3329, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !3330, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 0, metadata !3332, metadata !DIExpression()), !dbg !3340
  %1476 = and i32 %262, 65535
  br label %1477, !dbg !3341

; <label>:1477:                                   ; preds = %1484, %1475
  %1478 = phi i32 [ 8, %1475 ], [ %1482, %1484 ]
  call void @llvm.dbg.value(metadata i32 %1478, metadata !3329, metadata !DIExpression()), !dbg !3337
  %1479 = getelementptr inbounds i8, i8* %45, i32 %1478, !dbg !3342
  %1480 = load i8, i8* %1479, align 1, !dbg !3342, !tbaa !525
  %1481 = icmp eq i8 %1480, 34, !dbg !3344
  %1482 = add nuw nsw i32 %1478, 1
  br i1 %1481, label %1483, label %1484, !dbg !3345

; <label>:1483:                                   ; preds = %1477
  br label %1486, !dbg !3337

; <label>:1484:                                   ; preds = %1477
  call void @llvm.dbg.value(metadata i32 %1482, metadata !3329, metadata !DIExpression()), !dbg !3337
  %1485 = icmp ugt i32 %1478, %1476, !dbg !3346
  br i1 %1485, label %77, label %1477, !dbg !3349, !llvm.loop !1839

; <label>:1486:                                   ; preds = %1491, %1483
  %1487 = phi i32 [ %1492, %1491 ], [ %1482, %1483 ]
  call void @llvm.dbg.value(metadata i32 %1487, metadata !3329, metadata !DIExpression()), !dbg !3337
  %1488 = getelementptr inbounds i8, i8* %45, i32 %1487, !dbg !3350
  %1489 = load i8, i8* %1488, align 1, !dbg !3350, !tbaa !525
  %1490 = icmp eq i8 %1489, 34, !dbg !3351
  br i1 %1490, label %1494, label %1491, !dbg !3352

; <label>:1491:                                   ; preds = %1486
  %1492 = add i32 %1487, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %1492, metadata !3329, metadata !DIExpression()), !dbg !3337
  %1493 = icmp ugt i32 %1487, %1476, !dbg !3356
  br i1 %1493, label %76, label %1486, !dbg !3357, !llvm.loop !1839

; <label>:1494:                                   ; preds = %1486
  call void @llvm.dbg.value(metadata i32 %1487, metadata !3330, metadata !DIExpression()), !dbg !3338
  %1495 = sub i32 %1487, %1482, !dbg !3358
  %1496 = and i32 %1495, 255, !dbg !3359
  %1497 = add nsw i32 %1496, -1, !dbg !3361
  %1498 = icmp ult i32 %1497, 22, !dbg !3361
  br i1 %1498, label %1499, label %80, !dbg !3361

; <label>:1499:                                   ; preds = %1494
  store i8 0, i8* %1488, align 1, !dbg !3362, !tbaa !525
  %1500 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 3, i32 0, !dbg !3364
  %1501 = getelementptr inbounds i8, i8* %45, i32 %1482, !dbg !3365
  %1502 = add nuw nsw i32 %1496, 1, !dbg !3366
  %1503 = icmp ugt i32 %1502, 23, !dbg !3367
  %1504 = sub nsw i32 23, %1496, !dbg !3367
  %1505 = select i1 %1503, i32 0, i32 %1504, !dbg !3367
  %1506 = getelementptr %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 3, i32 %1502, !dbg !3367
  call void @llvm.memset.p0i8.i32(i8* %1506, i8 0, i32 %1505, i32 1, i1 false) #11, !dbg !3367
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1500, i8* %1501, i32 %1502, i32 1, i1 false) #11, !dbg !3367
  %1507 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3368
  %1508 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %40, i32 0, i32 3, !dbg !3369
  %1509 = ptrtoint [24 x i8]* %1508 to i32, !dbg !3370
  call void @bt_event_update_to_user(i8* %1507, i32 1129270784, i8 zeroext 12, i32 %1509) #9, !dbg !3371
  %1510 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_phonenum, i32 12, i32 1, i32 %1495, i8* %1501) #9, !dbg !3372
  br label %80, !dbg !3373

; <label>:1511:                                   ; preds = %278
  call void @llvm.dbg.value(metadata i16 0, metadata !3374, metadata !DIExpression()), !dbg !3379
  %1512 = getelementptr inbounds i8, i8* %45, i32 9, !dbg !3381
  %1513 = load i8, i8* %1512, align 1, !dbg !3381, !tbaa !525
  %1514 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 7, !dbg !3382
  %1515 = load i8, i8* %1514, align 1, !dbg !3383
  %1516 = and i8 %1513, 7, !dbg !3383
  %1517 = and i8 %1515, -8, !dbg !3383
  %1518 = or i8 %1517, %1516, !dbg !3383
  store i8 %1518, i8* %1514, align 1, !dbg !3383
  %1519 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3384
  call void @siri_update_multi_bd_status(i8 zeroext %1516, i8* %1519) #9, !dbg !3385
  %1520 = load i8, i8* %1514, align 1, !dbg !3386
  %1521 = and i8 %1520, 7, !dbg !3386
  %1522 = zext i8 %1521 to i32, !dbg !3387
  call void @bt_event_update_to_user(i8* %1519, i32 1129270784, i8 zeroext 36, i32 %1522) #9, !dbg !3388
  %1523 = load i8, i8* %1514, align 1, !dbg !3389
  %1524 = and i8 %1523, 7, !dbg !3389
  %1525 = zext i8 %1524 to i32, !dbg !3390
  %1526 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 36, i32 %1525, i8* %1519) #9, !dbg !3391
  call void @llvm.dbg.value(metadata i32 0, metadata !1762, metadata !DIExpression()), !dbg !2020
  br label %80, !dbg !3392

; <label>:1527:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !1747, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %45, metadata !1748, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i16 %263, metadata !1749, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 2, metadata !1750, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i8 0, metadata !1751, metadata !DIExpression()), !dbg !3397
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %37) #11, !dbg !3398
  call void @llvm.memset.p0i8.i32(i8* nonnull %37, i8 0, i32 25, i32 1, i1 false) #11, !dbg !3399
  %1528 = and i32 %262, 65535
  br label %1529, !dbg !3400

; <label>:1529:                                   ; preds = %1533, %1527
  %1530 = phi i32 [ 2, %1527 ], [ %1531, %1533 ]
  call void @llvm.dbg.value(metadata i32 %1530, metadata !1750, metadata !DIExpression()), !dbg !3396
  %1531 = add nuw nsw i32 %1530, 1, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %1531, metadata !1750, metadata !DIExpression()), !dbg !3396
  %1532 = icmp ult i32 %1530, %1528, !dbg !3403
  br i1 %1532, label %1533, label %1538, !dbg !3404

; <label>:1533:                                   ; preds = %1529
  %1534 = getelementptr inbounds i8, i8* %45, i32 %1531, !dbg !3405
  %1535 = load i8, i8* %1534, align 1, !dbg !3405, !tbaa !525
  %1536 = add i8 %1535, -48, !dbg !3405
  %1537 = icmp ult i8 %1536, 10, !dbg !3405
  br i1 %1537, label %1538, label %1529, !dbg !3405, !llvm.loop !3408

; <label>:1538:                                   ; preds = %1533, %1529
  %1539 = phi i8 [ 0, %1529 ], [ %1535, %1533 ]
  call void @llvm.dbg.value(metadata i8 %1539, metadata !1751, metadata !DIExpression()), !dbg !3397
  %1540 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3411, !tbaa !525
  %1541 = and i8 %1540, 32, !dbg !3411
  %1542 = icmp eq i8 %1541, 0, !dbg !3411
  br i1 %1542, label %1545, label %1543, !dbg !3413

; <label>:1543:                                   ; preds = %1538
  %1544 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !3414
  br label %1545, !dbg !3414

; <label>:1545:                                   ; preds = %1543, %1538
  %1546 = call i8* @strcpy(i8* nonnull %37, i8* getelementptr inbounds ([19 x [22 x i8]], [19 x [22 x i8]]* @hfp_function_cmd, i32 0, i32 16, i32 0)) #9, !dbg !3416
  %1547 = add i8 %1539, -49, !dbg !3417
  %1548 = icmp ult i8 %1547, 2, !dbg !3417
  br i1 %1548, label %1549, label %1550, !dbg !3417

; <label>:1549:                                   ; preds = %1545
  store i8 %1539, i8* %38, align 1, !dbg !3419, !tbaa !525
  br label %1550, !dbg !3421

; <label>:1550:                                   ; preds = %1549, %1545
  %1551 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 1, !dbg !3422
  %1552 = load i16, i16* %1551, align 2, !dbg !3422, !tbaa !414
  %1553 = call i32 @strlen(i8* nonnull %37) #9, !dbg !3423
  %1554 = trunc i32 %1553 to i16, !dbg !3423
  %1555 = call fastcc i32 @atcmd_try_send(i16 zeroext %1552, i8* nonnull %37, i16 zeroext %1554) #9, !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %37) #11, !dbg !3425
  br label %80, !dbg !3426

; <label>:1556:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3427, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i8* %45, metadata !3430, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i16 %263, metadata !3431, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 8, metadata !3432, metadata !DIExpression()), !dbg !3437
  %1557 = and i32 %262, 65535
  br label %1558, !dbg !3438

; <label>:1558:                                   ; preds = %1563, %1556
  %1559 = phi i32 [ 8, %1556 ], [ %1564, %1563 ]
  call void @llvm.dbg.value(metadata i32 %1559, metadata !3432, metadata !DIExpression()), !dbg !3437
  %1560 = getelementptr inbounds i8, i8* %45, i32 %1559, !dbg !3439
  %1561 = load i8, i8* %1560, align 1, !dbg !3439, !tbaa !525
  %1562 = icmp eq i8 %1561, 105, !dbg !3441
  br i1 %1562, label %1566, label %1563, !dbg !3442

; <label>:1563:                                   ; preds = %1558
  %1564 = add nuw nsw i32 %1559, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %1564, metadata !3432, metadata !DIExpression()), !dbg !3437
  %1565 = icmp ugt i32 %1559, %1557, !dbg !3446
  br i1 %1565, label %78, label %1558, !dbg !3447, !llvm.loop !1839

; <label>:1566:                                   ; preds = %1558
  %1567 = call i32 @memcmp(i8* %1560, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 6) #9, !dbg !3448
  %1568 = icmp eq i32 %1567, 0, !dbg !3448
  br i1 %1568, label %1569, label %80, !dbg !3450

; <label>:1569:                                   ; preds = %1566
  %1570 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3451
  %1571 = call fastcc i32 @send_battery_level(i8* %1570) #9, !dbg !3453
  br label %80, !dbg !3454

; <label>:1572:                                   ; preds = %278
  br i1 %34, label %80, label %1573, !dbg !3455

; <label>:1573:                                   ; preds = %1572
  call void @llvm.dbg.value(metadata %struct.hfp_con* null, metadata !3456, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 8, metadata !3461, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3470
  %1574 = and i32 %262, 65535
  br label %1575, !dbg !3471

; <label>:1575:                                   ; preds = %1582, %1573
  %1576 = phi i32 [ 8, %1573 ], [ %1580, %1582 ]
  call void @llvm.dbg.value(metadata i32 %1576, metadata !3461, metadata !DIExpression()), !dbg !3468
  %1577 = getelementptr inbounds i8, i8* %45, i32 %1576, !dbg !3472
  %1578 = load i8, i8* %1577, align 1, !dbg !3472, !tbaa !525
  %1579 = icmp eq i8 %1578, 34, !dbg !3474
  %1580 = add nuw nsw i32 %1576, 1
  br i1 %1579, label %1581, label %1582, !dbg !3475

; <label>:1581:                                   ; preds = %1575
  br label %1584, !dbg !3468

; <label>:1582:                                   ; preds = %1575
  call void @llvm.dbg.value(metadata i32 %1580, metadata !3461, metadata !DIExpression()), !dbg !3468
  %1583 = icmp ugt i32 %1576, %1574, !dbg !3476
  br i1 %1583, label %75, label %1575, !dbg !3479, !llvm.loop !1839

; <label>:1584:                                   ; preds = %1590, %1581
  %1585 = phi i32 [ %1589, %1590 ], [ %1580, %1581 ]
  call void @llvm.dbg.value(metadata i32 %1585, metadata !3461, metadata !DIExpression()), !dbg !3468
  %1586 = getelementptr inbounds i8, i8* %45, i32 %1585, !dbg !3480
  %1587 = load i8, i8* %1586, align 1, !dbg !3480, !tbaa !525
  %1588 = icmp eq i8 %1587, 34, !dbg !3481
  %1589 = add i32 %1585, 1
  br i1 %1588, label %1592, label %1590, !dbg !3482

; <label>:1590:                                   ; preds = %1584
  call void @llvm.dbg.value(metadata i32 %1589, metadata !3461, metadata !DIExpression()), !dbg !3468
  %1591 = icmp ugt i32 %1585, %1574, !dbg !3483
  br i1 %1591, label %74, label %1584, !dbg !3486, !llvm.loop !1839

; <label>:1592:                                   ; preds = %1584
  call void @llvm.dbg.value(metadata i32 %1585, metadata !3462, metadata !DIExpression()), !dbg !3469
  %1593 = getelementptr inbounds i8, i8* %45, i32 %1589, !dbg !3487
  store i8 0, i8* %1593, align 1, !dbg !3488, !tbaa !525
  %1594 = getelementptr inbounds i8, i8* %45, i32 %1580, !dbg !3489
  %1595 = sub i32 %1585, %1580, !dbg !3490
  %1596 = trunc i32 %1595 to i16, !dbg !3491
  call void @phone_date_and_time_feedback(i8* %1594, i16 zeroext %1596) #9, !dbg !3492
  %1597 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_phonenum, i32 34, i32 1, i32 %1595, i8* %1594) #9, !dbg !3493
  br label %80, !dbg !3494

; <label>:1598:                                   ; preds = %278
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3495, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %45, metadata !3498, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i16 %263, metadata !3499, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 8, metadata !3500, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 0, metadata !3501, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i32 0, metadata !3502, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8 0, metadata !3503, metadata !DIExpression()), !dbg !3511
  %1599 = and i32 %262, 65535
  br label %1600, !dbg !3512

; <label>:1600:                                   ; preds = %1607, %1598
  %1601 = phi i32 [ 8, %1598 ], [ %1605, %1607 ]
  call void @llvm.dbg.value(metadata i32 %1601, metadata !3500, metadata !DIExpression()), !dbg !3508
  %1602 = getelementptr inbounds i8, i8* %45, i32 %1601, !dbg !3513
  %1603 = load i8, i8* %1602, align 1, !dbg !3513, !tbaa !525
  %1604 = icmp eq i8 %1603, 34, !dbg !3515
  %1605 = add nuw nsw i32 %1601, 1
  call void @llvm.dbg.value(metadata i32 %1605, metadata !3500, metadata !DIExpression()), !dbg !3508
  br i1 %1604, label %1606, label %1607, !dbg !3516

; <label>:1606:                                   ; preds = %1600
  br label %1618, !dbg !3508

; <label>:1607:                                   ; preds = %1600
  %1608 = icmp ugt i32 %1601, %1599, !dbg !3517
  br i1 %1608, label %1609, label %1600, !dbg !3520, !llvm.loop !3521

; <label>:1609:                                   ; preds = %1607
  %1610 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3524, !tbaa !525
  %1611 = and i8 %1610, 32, !dbg !3524
  %1612 = icmp eq i8 %1611, 0, !dbg !3524
  br i1 %1612, label %1615, label %1613, !dbg !3527

; <label>:1613:                                   ; preds = %1609
  %1614 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !3528
  br label %1615, !dbg !3528

; <label>:1615:                                   ; preds = %1613, %1609
  %1616 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0, !dbg !3530
  %1617 = call zeroext i8 @remote_dev_company_ioctrl(i8* %1616, i8 zeroext 1, i8 zeroext 1) #9, !dbg !3531
  call void @bt_event_update_to_user(i8* %1616, i32 1129270784, i8 zeroext 13, i32 0) #9, !dbg !3532
  br label %80, !dbg !3533

; <label>:1618:                                   ; preds = %1623, %1606
  %1619 = phi i32 [ %1624, %1623 ], [ %1605, %1606 ]
  call void @llvm.dbg.value(metadata i32 %1619, metadata !3500, metadata !DIExpression()), !dbg !3508
  %1620 = getelementptr inbounds i8, i8* %45, i32 %1619, !dbg !3534
  %1621 = load i8, i8* %1620, align 1, !dbg !3534, !tbaa !525
  %1622 = icmp eq i8 %1621, 34, !dbg !3535
  br i1 %1622, label %1626, label %1623, !dbg !3536

; <label>:1623:                                   ; preds = %1618
  %1624 = add i32 %1619, 1, !dbg !3537
  call void @llvm.dbg.value(metadata i32 %1624, metadata !3500, metadata !DIExpression()), !dbg !3508
  %1625 = icmp ugt i32 %1619, %1599, !dbg !3540
  br i1 %1625, label %73, label %1618, !dbg !3541, !llvm.loop !1839

; <label>:1626:                                   ; preds = %1618
  call void @llvm.dbg.value(metadata i32 %1619, metadata !3501, metadata !DIExpression()), !dbg !3509
  store i8 0, i8* %1620, align 1, !dbg !3542, !tbaa !525
  %1627 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3543, !tbaa !525
  %1628 = and i8 %1627, 32, !dbg !3543
  %1629 = icmp eq i8 %1628, 0, !dbg !3543
  %1630 = getelementptr inbounds i8, i8* %45, i32 %1605
  br i1 %1629, label %1633, label %1631, !dbg !3545

; <label>:1631:                                   ; preds = %1626
  %1632 = call i32 @puts(i8* %1630) #9, !dbg !3546
  br label %1633, !dbg !3546

; <label>:1633:                                   ; preds = %1631, %1626
  %1634 = call i32 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %1630, i32 10) #9, !dbg !3548
  %1635 = icmp eq i32 %1634, 0, !dbg !3549
  %1636 = load i8, i8* @profile_debug_enable, align 1, !dbg !3550, !tbaa !525
  %1637 = and i8 %1636, 1, !dbg !3550
  %1638 = icmp eq i8 %1637, 0, !dbg !3550
  br i1 %1638, label %1642, label %1639, !dbg !3552

; <label>:1639:                                   ; preds = %1633
  %1640 = zext i1 %1635 to i32, !dbg !3553
  %1641 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i32 %1640) #9, !dbg !3553
  br label %1642, !dbg !3553

; <label>:1642:                                   ; preds = %1639, %1633
  %1643 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 0, i32 0
  br i1 %1635, label %1644, label %1646, !dbg !3555

; <label>:1644:                                   ; preds = %1642
  %1645 = call zeroext i8 @remote_dev_company_ioctrl(i8* %1643, i8 zeroext 1, i8 zeroext 2) #9, !dbg !3556
  br label %1648, !dbg !3559

; <label>:1646:                                   ; preds = %1642
  %1647 = call zeroext i8 @remote_dev_company_ioctrl(i8* %1643, i8 zeroext 1, i8 zeroext 1) #9, !dbg !3560
  br label %1648

; <label>:1648:                                   ; preds = %1646, %1644
  %1649 = zext i1 %1635 to i32, !dbg !3562
  call void @bt_event_update_to_user(i8* %1643, i32 1129270784, i8 zeroext 13, i32 %1649) #9, !dbg !3563
  %1650 = call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_phone_manufacturer, i32 13, i8* %1643, i8* %1630) #9, !dbg !3564
  br label %80, !dbg !3565

; <label>:1651:                                   ; preds = %278
  %1652 = load i8, i8* @hfp_more_feature_hf_indicators, align 1, !dbg !3566, !tbaa !525
  %1653 = icmp eq i8 %1652, 0, !dbg !3566
  br i1 %1653, label %80, label %1654, !dbg !3568

; <label>:1654:                                   ; preds = %1651
  call void @llvm.dbg.value(metadata %struct.hfp_con* %265, metadata !3569, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* %45, metadata !3572, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i16 %263, metadata !3573, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 8, metadata !3574, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8 0, metadata !3575, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8 0, metadata !3576, metadata !DIExpression()), !dbg !3584
  %1655 = getelementptr inbounds i8, i8* %45, i32 9, !dbg !3585
  %1656 = load i8, i8* %1655, align 1, !dbg !3585, !tbaa !525
  %1657 = icmp eq i8 %1656, 40, !dbg !3587
  br i1 %1657, label %1658, label %1679, !dbg !3588

; <label>:1658:                                   ; preds = %1654
  %1659 = and i32 %262, 65535
  br label %1660, !dbg !3582

; <label>:1660:                                   ; preds = %1676, %1658
  %1661 = phi i32 [ %1677, %1676 ], [ 8, %1658 ]
  call void @llvm.dbg.value(metadata i32 %1661, metadata !3574, metadata !DIExpression()), !dbg !3582
  %1662 = getelementptr inbounds i8, i8* %45, i32 %1661, !dbg !3589
  %1663 = load i8, i8* %1662, align 1, !dbg !3589, !tbaa !525
  %1664 = icmp eq i8 %1663, 41, !dbg !3592
  br i1 %1664, label %72, label %1665, !dbg !3593, !llvm.loop !1839

; <label>:1665:                                   ; preds = %1660
  %1666 = add i8 %1663, -48, !dbg !3594
  %1667 = icmp ult i8 %1666, 10, !dbg !3594
  br i1 %1667, label %1668, label %1676, !dbg !3594

; <label>:1668:                                   ; preds = %1665
  call void @llvm.dbg.value(metadata i8 %1666, metadata !3575, metadata !DIExpression()), !dbg !3583
  %1669 = zext i8 %1666 to i32, !dbg !3597
  %1670 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i32 %1669) #9, !dbg !3599
  %1671 = icmp ult i8 %1666, 3, !dbg !3600
  br i1 %1671, label %1672, label %1676, !dbg !3602

; <label>:1672:                                   ; preds = %1668
  %1673 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 8, i32 %1669, !dbg !3603
  %1674 = load i8, i8* %1673, align 1, !dbg !3605, !tbaa !525
  %1675 = or i8 %1674, 1, !dbg !3605
  store i8 %1675, i8* %1673, align 1, !dbg !3605, !tbaa !525
  br label %1676, !dbg !3606

; <label>:1676:                                   ; preds = %1672, %1668, %1665
  %1677 = add nuw nsw i32 %1661, 1, !dbg !3607
  call void @llvm.dbg.value(metadata i32 %1677, metadata !3574, metadata !DIExpression()), !dbg !3582
  %1678 = icmp ugt i32 %1661, %1659, !dbg !3609
  br i1 %1678, label %72, label %1660, !dbg !3610, !llvm.loop !1839

; <label>:1679:                                   ; preds = %1654
  %1680 = add i8 %1656, -48, !dbg !3611
  %1681 = icmp ult i8 %1680, 3, !dbg !3614
  call void @llvm.dbg.value(metadata i8 %1680, metadata !3575, metadata !DIExpression()), !dbg !3583
  br i1 %1681, label %1682, label %80, !dbg !3611

; <label>:1682:                                   ; preds = %1679
  %1683 = getelementptr inbounds i8, i8* %45, i32 11, !dbg !3617
  %1684 = load i8, i8* %1683, align 1, !dbg !3617, !tbaa !525
  %1685 = zext i8 %1680 to i32, !dbg !3618
  %1686 = icmp ne i8 %1684, 48, !dbg !3619
  %1687 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %265, i32 0, i32 0, i32 8, i32 %1685
  %1688 = load i8, i8* %1687, align 1, !tbaa !525
  %1689 = and i8 %1688, -3, !dbg !3622
  %1690 = or i8 %1688, 2, !dbg !3624
  %1691 = select i1 %1686, i8 %1690, i8 %1689, !dbg !3626
  store i8 %1691, i8* %1687, align 1, !tbaa !525
  br label %80, !dbg !3627

; <label>:1692:                                   ; preds = %278
  %1693 = call i32 @at_cmd_analysis_by_user(i8* nonnull %45, i16 zeroext %263) #9, !dbg !3628
  br label %80, !dbg !3630

; <label>:1694:                                   ; preds = %80
  store i16 0, i16* %83, align 1, !dbg !3631, !tbaa !491
  %1695 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %82, i32 0, i32 2, i32 0, !dbg !3632
  call void @llvm.memset.p0i8.i32(i8* %1695, i8 0, i32 248, i32 4, i1 false), !dbg !3632
  br label %1696, !dbg !3633

; <label>:1696:                                   ; preds = %1694, %23, %16, %3
  %1697 = phi i8 [ %81, %1694 ], [ 0, %3 ], [ 0, %23 ], [ 0, %16 ]
  ret i8 %1697, !dbg !3634
}

; Function Attrs: nounwind optsize
define internal fastcc void @hfp_init_process(i16 zeroext) unnamed_addr #2 section ".bt_stack_code" !dbg !3635 {
  %2 = alloca [35 x i8], align 1
  %3 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 0, !dbg !3643
  call void @llvm.lifetime.start.p0i8(i64 35, i8* nonnull %3) #11, !dbg !3643
  tail call void @llvm.dbg.declare(metadata [35 x i8]* %2, metadata !3640, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3641, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i16 %0, metadata !555, metadata !DIExpression()), !dbg !3646
  %4 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !3648
  %5 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 4, i32 0, !dbg !3648
  %6 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 4, i32 1
  %7 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 0, !dbg !3649
  br label %8, !dbg !3649

; <label>:8:                                      ; preds = %19, %1
  %9 = phi %struct.hfp_con* [ %5, %1 ], [ %20, %19 ]
  %10 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 3, !dbg !3650
  %11 = load i16, i16* %10, align 4, !dbg !3650, !tbaa !544
  %12 = icmp eq i16 %11, %0, !dbg !3651
  br i1 %12, label %13, label %19, !dbg !3652

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 6, !dbg !3653
  %15 = bitcast [3 x i8]* %14 to i24*, !dbg !3653
  %16 = load i24, i24* %15, align 4, !dbg !3653
  %17 = and i24 %16, 2097152, !dbg !3653
  %18 = icmp eq i24 %17, 0, !dbg !3654
  br i1 %18, label %19, label %22, !dbg !3655

; <label>:19:                                     ; preds = %13, %8
  %20 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 1, !dbg !3656
  call void @llvm.dbg.value(metadata %struct.hfp_con* %20, metadata !560, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata %struct.hfp_con* %20, metadata !560, metadata !DIExpression()), !dbg !3657
  %21 = icmp ult %struct.hfp_con* %20, %6, !dbg !3658
  br i1 %21, label %8, label %219, !dbg !3649, !llvm.loop !583

; <label>:22:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct.hfp_con* %9, metadata !3642, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata %struct.hfp_con* %9, metadata !1014, metadata !DIExpression()), !dbg !3660
  %23 = lshr i24 %16, 16, !dbg !3663
  %24 = and i24 %23, 31, !dbg !3663
  %25 = zext i24 %24 to i32, !dbg !3663
  %26 = load i8, i8* %7, align 4, !dbg !3664
  %27 = and i8 %26, 31, !dbg !3664
  %28 = zext i8 %27 to i32, !dbg !3665
  %29 = icmp ugt i32 %25, %28, !dbg !3666
  br i1 %29, label %220, label %30, !dbg !3667

; <label>:30:                                     ; preds = %22
  call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 0, i32 35, i32 1, i1 false), !dbg !3668
  %31 = load i24, i24* %15, align 4, !dbg !3669
  %32 = lshr i24 %31, 16, !dbg !3669
  %33 = and i24 %32, 31, !dbg !3669
  %34 = zext i24 %33 to i32, !dbg !3669
  %35 = icmp ult i24 %33, 10, !dbg !3671
  br i1 %35, label %36, label %76, !dbg !3672

; <label>:36:                                     ; preds = %30
  %37 = add nsw i32 %34, -1, !dbg !3673
  call void @llvm.dbg.value(metadata i32 %37, metadata !3641, metadata !DIExpression()), !dbg !3645
  %38 = getelementptr inbounds [9 x [18 x i8]], [9 x [18 x i8]]* @hfp_SLC_init_cmd, i32 0, i32 %37, i32 0, !dbg !3675
  %39 = tail call i32 @strlen(i8* %38) #10, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* %38, i32 %39, i32 1, i1 false), !dbg !3675
  %40 = call i32 @puts(i8* nonnull %3) #10, !dbg !3677
  %41 = icmp eq i32 %37, 0, !dbg !3678
  br i1 %41, label %42, label %66, !dbg !3680

; <label>:42:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i32 0, metadata !3681, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 31, metadata !3681, metadata !DIExpression()), !dbg !3687
  %43 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !3690, !tbaa !483
  %44 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %43, i32 0, i32 9, !dbg !3692
  %45 = load i32, i32* %44, align 1, !dbg !3692
  %46 = and i32 %45, 2048, !dbg !3690
  %47 = icmp eq i32 %46, 0, !dbg !3690
  call void @llvm.dbg.value(metadata i32 671, metadata !3681, metadata !DIExpression()), !dbg !3687
  %48 = select i1 %47, i32 31, i32 671, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %48, metadata !3681, metadata !DIExpression()), !dbg !3687
  %49 = load i8, i8* @hfp_more_feature_hf_indicators, align 1, !dbg !3694, !tbaa !525
  %50 = icmp eq i8 %49, 0, !dbg !3694
  %51 = or i32 %48, 256, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %51, metadata !3681, metadata !DIExpression()), !dbg !3687
  %52 = select i1 %50, i32 %48, i32 %51, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %52, metadata !3681, metadata !DIExpression()), !dbg !3687
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 13, i32 1, i1 false) #11, !dbg !3699
  %53 = udiv i32 %52, 100, !dbg !3700
  %54 = trunc i32 %53 to i8, !dbg !3701
  %55 = or i8 %54, 48, !dbg !3701
  %56 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 8, !dbg !3702
  store i8 %55, i8* %56, align 1, !dbg !3703, !tbaa !525
  %57 = udiv i32 %52, 10, !dbg !3704
  %58 = urem i32 %57, 10, !dbg !3705
  %59 = trunc i32 %58 to i8, !dbg !3706
  %60 = or i8 %59, 48, !dbg !3706
  %61 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 9, !dbg !3707
  store i8 %60, i8* %61, align 1, !dbg !3708, !tbaa !525
  %62 = urem i32 %52, 10, !dbg !3709
  %63 = trunc i32 %62 to i8, !dbg !3710
  %64 = or i8 %63, 48, !dbg !3710
  %65 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 10, !dbg !3711
  store i8 %64, i8* %65, align 1, !dbg !3712, !tbaa !525
  br label %162, !dbg !3713

; <label>:66:                                     ; preds = %36
  %67 = load i8, i8* @hfp_more_feature_hf_indicators, align 1, !dbg !3715, !tbaa !525
  %68 = icmp eq i8 %67, 0, !dbg !3715
  %69 = icmp eq i32 %37, 5, !dbg !3716
  %70 = and i1 %69, %68, !dbg !3713
  br i1 %70, label %71, label %162, !dbg !3713

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.32, i32 0, i32 0)), !dbg !3718
  %73 = load i24, i24* %15, align 4, !dbg !3720
  %74 = and i24 %73, -2031617, !dbg !3720
  %75 = or i24 %74, 589824, !dbg !3720
  store i24 %75, i24* %15, align 4, !dbg !3720
  br label %162, !dbg !3721

; <label>:76:                                     ; preds = %30
  %77 = add nsw i32 %34, -10, !dbg !3722
  call void @llvm.dbg.value(metadata i32 %77, metadata !3641, metadata !DIExpression()), !dbg !3645
  %78 = getelementptr inbounds [9 x [28 x i8]], [9 x [28 x i8]]* @hfp_param_set_buf, i32 0, i32 %77, i32 0, !dbg !3724
  %79 = tail call i32 @strlen(i8* %78) #10, !dbg !3725
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %3, i8* %78, i32 %79, i32 1, i1 false), !dbg !3724
  %80 = trunc i24 %32 to i5, !dbg !3726
  switch i5 %80, label %220 [
    i5 10, label %81
    i5 11, label %162
    i5 12, label %162
    i5 13, label %162
    i5 14, label %83
    i5 15, label %85
    i5 -16, label %118
    i5 -15, label %136
    i5 -14, label %150
  ], !dbg !3726

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !3727
  br label %162, !dbg !3729

; <label>:83:                                     ; preds = %76
  %84 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 5, !dbg !3730
  store i8 11, i8* %84, align 1, !dbg !3731, !tbaa !835
  br label %162, !dbg !3732

; <label>:85:                                     ; preds = %76
  %86 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !3733, !tbaa !483
  %87 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %86, i32 0, i32 0, !dbg !3735
  %88 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %87, align 4, !dbg !3735, !tbaa !1039
  %89 = icmp eq void (i8*, i32, i32)* %88, null, !dbg !3733
  br i1 %89, label %107, label %90, !dbg !3736

; <label>:90:                                     ; preds = %85
  %91 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3737, !tbaa !525
  %92 = icmp slt i8 %91, 0, !dbg !3737
  br i1 %92, label %93, label %101, !dbg !3740

; <label>:93:                                     ; preds = %90
  %94 = load i24, i24* %15, align 4, !dbg !3741
  %95 = and i24 %94, 15, !dbg !3741
  %96 = zext i24 %95 to i32, !dbg !3741
  %97 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0), i32 %96) #10, !dbg !3741
  %98 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !tbaa !483
  %99 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %98, i32 0, i32 0
  %100 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %99, align 4, !tbaa !1039
  br label %101, !dbg !3741

; <label>:101:                                    ; preds = %93, %90
  %102 = phi void (i8*, i32, i32)* [ %100, %93 ], [ %88, %90 ], !dbg !3743
  %103 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 0, i32 0, !dbg !3744
  %104 = load i24, i24* %15, align 4, !dbg !3745
  %105 = and i24 %104, 15, !dbg !3745
  %106 = zext i24 %105 to i32, !dbg !3745
  tail call void %102(i8* %103, i32 7, i32 %106) #9, !dbg !3746
  br label %107, !dbg !3747

; <label>:107:                                    ; preds = %101, %85
  %108 = load i24, i24* %15, align 4, !dbg !3748
  %109 = and i24 %108, 15, !dbg !3748
  %110 = udiv i24 %109, 10, !dbg !3749
  %111 = trunc i24 %110 to i8, !dbg !3750
  %112 = or i8 %111, 48, !dbg !3750
  %113 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 7, !dbg !3751
  store i8 %112, i8* %113, align 1, !dbg !3752, !tbaa !525
  %114 = urem i24 %109, 10, !dbg !3753
  %115 = trunc i24 %114 to i8, !dbg !3754
  %116 = or i8 %115, 48, !dbg !3754
  %117 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 8, !dbg !3755
  store i8 %116, i8* %117, align 1, !dbg !3756, !tbaa !525
  br label %162, !dbg !3757

; <label>:118:                                    ; preds = %76
  %119 = load i24, i24* %15, align 4, !dbg !3758
  %120 = lshr i24 %119, 4, !dbg !3758
  %121 = and i24 %120, 15, !dbg !3758
  %122 = udiv i24 %121, 10, !dbg !3759
  %123 = trunc i24 %122 to i8, !dbg !3760
  %124 = or i8 %123, 48, !dbg !3760
  %125 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 7, !dbg !3761
  store i8 %124, i8* %125, align 1, !dbg !3762, !tbaa !525
  %126 = urem i24 %121, 10, !dbg !3763
  %127 = trunc i24 %126 to i8, !dbg !3764
  %128 = or i8 %127, 48, !dbg !3764
  %129 = getelementptr inbounds [35 x i8], [35 x i8]* %2, i32 0, i32 8, !dbg !3765
  store i8 %128, i8* %129, align 1, !dbg !3766, !tbaa !525
  %130 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !3767, !tbaa !483
  %131 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %130, i32 0, i32 5, !dbg !3769
  %132 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %131, align 4, !dbg !3769, !tbaa !1278
  %133 = icmp eq void (i8*, i32, i32, i8)* %132, null, !dbg !3767
  br i1 %133, label %162, label %134, !dbg !3770

; <label>:134:                                    ; preds = %118
  %135 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 0, i32 0, !dbg !3771
  tail call void %132(i8* %135, i32 1, i32 2, i8 zeroext 1) #9, !dbg !3773
  br label %162, !dbg !3774

; <label>:136:                                    ; preds = %76
  %137 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 4, !dbg !3775
  store i8 -2, i8* %137, align 2, !dbg !3776, !tbaa !1215
  %138 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 8, i32 2, !dbg !3777
  %139 = load i8, i8* %138, align 2, !dbg !3777, !tbaa !525
  %140 = icmp eq i8 %139, 3, !dbg !3779
  br i1 %140, label %141, label %162, !dbg !3780

; <label>:141:                                    ; preds = %136
  %142 = tail call i32 @puts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @str.31, i32 0, i32 0)), !dbg !3781
  %143 = load i24, i24* %15, align 4, !dbg !3783
  %144 = add i24 %143, 131072, !dbg !3783
  %145 = and i24 %144, 2031616, !dbg !3783
  %146 = and i24 %143, -2031617, !dbg !3783
  %147 = or i24 %145, %146, !dbg !3783
  store i24 %147, i24* %15, align 4, !dbg !3783
  %148 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 0, i32 0, !dbg !3784
  %149 = tail call fastcc i32 @send_battery_level(i8* %148) #10, !dbg !3785
  br label %220, !dbg !3786

; <label>:150:                                    ; preds = %76
  %151 = load i24, i24* %15, align 4, !dbg !3787
  %152 = lshr i24 %151, 16, !dbg !3787
  %153 = trunc i24 %152 to i8, !dbg !3787
  %154 = add i8 %153, 1, !dbg !3787
  %155 = and i8 %154, 31, !dbg !3787
  %156 = zext i8 %155 to i24, !dbg !3787
  %157 = shl nuw nsw i24 %156, 16, !dbg !3787
  %158 = and i24 %151, -2031617, !dbg !3787
  %159 = or i24 %157, %158, !dbg !3787
  store i24 %159, i24* %15, align 4, !dbg !3787
  %160 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 0, i32 0, !dbg !3788
  %161 = tail call fastcc i32 @send_battery_level(i8* %160) #10, !dbg !3789
  br label %220, !dbg !3790

; <label>:162:                                    ; preds = %136, %134, %118, %107, %83, %81, %76, %76, %76, %71, %66, %42
  %163 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %9, i32 0, i32 0, i32 1, !dbg !3791
  %164 = load i16, i16* %163, align 2, !dbg !3791, !tbaa !414
  %165 = call i32 @strlen(i8* nonnull %3) #10, !dbg !3792
  %166 = trunc i32 %165 to i16, !dbg !3792
  call void @llvm.dbg.value(metadata i16 %164, metadata !3793, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i8* %3, metadata !3796, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i16 %166, metadata !3797, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 0, metadata !3798, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i16 %164, metadata !3806, metadata !DIExpression()), !dbg !3810
  %167 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !3812
  %168 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %167, i32 0, i32 4, i32 0, !dbg !3812
  %169 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %167, i32 0, i32 4, i32 1
  br label %170, !dbg !3814

; <label>:170:                                    ; preds = %181, %162
  %171 = phi %struct.hfp_con* [ %168, %162 ], [ %182, %181 ]
  %172 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %171, i32 0, i32 0, i32 1, !dbg !3816
  %173 = load i16, i16* %172, align 2, !dbg !3816, !tbaa !414
  %174 = icmp eq i16 %173, %164, !dbg !3820
  br i1 %174, label %175, label %181, !dbg !3821

; <label>:175:                                    ; preds = %170
  %176 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %171, i32 0, i32 0, i32 6, !dbg !3822
  %177 = bitcast [3 x i8]* %176 to i24*, !dbg !3822
  %178 = load i24, i24* %177, align 4, !dbg !3822
  %179 = and i24 %178, 2097152, !dbg !3822
  %180 = icmp eq i24 %179, 0, !dbg !3824
  br i1 %180, label %181, label %184, !dbg !3825

; <label>:181:                                    ; preds = %175, %170
  %182 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %171, i32 1, !dbg !3827
  call void @llvm.dbg.value(metadata %struct.hfp_con* %182, metadata !3809, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata %struct.hfp_con* %182, metadata !3809, metadata !DIExpression()), !dbg !3829
  %183 = icmp ult %struct.hfp_con* %182, %169, !dbg !3830
  br i1 %183, label %170, label %218, !dbg !3814, !llvm.loop !3832

; <label>:184:                                    ; preds = %175
  call void @llvm.dbg.value(metadata %struct.hfp_con* %171, metadata !3799, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i16 %164, metadata !633, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i8* %3, metadata !638, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i16 %166, metadata !639, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()), !dbg !3840
  %185 = call i32 @rfcomm_send_internal(i16 zeroext %164, i8* nonnull %3, i16 zeroext %166) #9, !dbg !3841
  call void @llvm.dbg.value(metadata i32 %185, metadata !640, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 %185, metadata !3798, metadata !DIExpression()), !dbg !3805
  %186 = icmp eq i32 %185, 0, !dbg !3842
  br i1 %186, label %187, label %207, !dbg !3844

; <label>:187:                                    ; preds = %184
  %188 = load i24, i24* %177, align 4, !dbg !3845
  %189 = lshr i24 %188, 16, !dbg !3845
  %190 = trunc i24 %189 to i8, !dbg !3845
  %191 = add i8 %190, 1, !dbg !3845
  %192 = and i8 %191, 31, !dbg !3845
  %193 = zext i8 %192 to i24, !dbg !3845
  %194 = shl nuw nsw i24 %193, 16, !dbg !3845
  %195 = and i24 %188, -2031617, !dbg !3845
  %196 = or i24 %194, %195, !dbg !3845
  store i24 %196, i24* %177, align 4, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.hfp_con* %171, metadata !1014, metadata !DIExpression()), !dbg !3847
  %197 = load i8*, i8** bitcast (%struct.hfp_stack_t** @hfp_stack to i8**), align 4, !dbg !3850, !tbaa !483
  %198 = load i8, i8* %197, align 4, !dbg !3851
  %199 = and i8 %198, 31, !dbg !3851
  %200 = icmp ugt i8 %192, %199, !dbg !3852
  br i1 %200, label %201, label %220, !dbg !3853

; <label>:201:                                    ; preds = %187
  %202 = add i8 %198, 1, !dbg !3854
  %203 = and i8 %202, 31, !dbg !3856
  %204 = zext i8 %203 to i24, !dbg !3856
  %205 = shl nuw nsw i24 %204, 16, !dbg !3856
  %206 = or i24 %205, %195, !dbg !3856
  br label %216, !dbg !3857

; <label>:207:                                    ; preds = %184
  %208 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3858, !tbaa !525
  %209 = and i8 %208, 32, !dbg !3858
  %210 = icmp eq i8 %209, 0, !dbg !3858
  br i1 %210, label %213, label %211, !dbg !3861

; <label>:211:                                    ; preds = %207
  %212 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #9, !dbg !3862
  br label %213, !dbg !3862

; <label>:213:                                    ; preds = %211, %207
  %214 = load i24, i24* %177, align 4, !dbg !3864
  %215 = or i24 %214, 4194304, !dbg !3864
  br label %216

; <label>:216:                                    ; preds = %213, %201
  %217 = phi i24 [ %206, %201 ], [ %215, %213 ]
  store i24 %217, i24* %177, align 4
  br label %220, !dbg !3865

; <label>:218:                                    ; preds = %181
  br label %220, !dbg !3866

; <label>:219:                                    ; preds = %19
  br label %220, !dbg !3866

; <label>:220:                                    ; preds = %219, %218, %216, %187, %150, %141, %76, %22
  call void @llvm.lifetime.end.p0i8(i64 35, i8* nonnull %3) #11, !dbg !3866
  ret void
}

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc %struct.hfp_con* @__create_hfp_conn(i8* nocapture readonly) unnamed_addr #2 section ".bt_stack_code" !dbg !3867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3869, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata %struct.hfp_con* %3, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata %struct.hfp_con* %3, metadata !3870, metadata !DIExpression()), !dbg !3872
  %2 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !3873
  %3 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %2, i32 0, i32 4, i32 0, !dbg !3873
  %4 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %2, i32 0, i32 4, i32 1
  br label %5, !dbg !3875

; <label>:5:                                      ; preds = %31, %1
  %6 = phi %struct.hfp_con* [ %3, %1 ], [ %32, %31 ]
  %7 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 6, !dbg !3877
  %8 = bitcast [3 x i8]* %7 to i24*, !dbg !3877
  %9 = load i24, i24* %8, align 4, !dbg !3877
  %10 = and i24 %9, 2097152, !dbg !3881
  %11 = icmp eq i24 %10, 0, !dbg !3881
  br i1 %11, label %12, label %31, !dbg !3882

; <label>:12:                                     ; preds = %5
  %13 = or i24 %9, 2097152, !dbg !3883
  store i24 %13, i24* %8, align 4, !dbg !3883
  %14 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 0, i32 0, !dbg !3885
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %0, i32 6, i32 1, i1 false), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.hfp_con* undef, metadata !1715, metadata !DIExpression()), !dbg !3886
  %15 = and i24 %13, -6230016, !dbg !3888
  %16 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 1, !dbg !3889
  %17 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 4, !dbg !3890
  %18 = bitcast i16* %16 to i64*, !dbg !3891
  store i64 0, i64* %18, align 2, !dbg !3891
  store i8 -1, i8* %17, align 2, !dbg !3892, !tbaa !1215
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 7, !dbg !3893
  %20 = load i8, i8* %19, align 1, !dbg !3894
  %21 = and i8 %20, -8, !dbg !3894
  store i8 %21, i8* %19, align 1, !dbg !3894
  %22 = or i24 %15, 255, !dbg !3895
  store i24 %22, i24* %8, align 4, !dbg !3895
  %23 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 0, i32 0, i32 9, i32 0, !dbg !3896
  %24 = bitcast %struct.__INDICATOR* %23 to i8*, !dbg !3897
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 -4, i64 112, i32 1, i1 false) #11, !dbg !3898
  %25 = tail call zeroext i8 @hfp_volume_interface(i8* %14, i8 zeroext -1) #9, !dbg !3899
  %26 = load i24, i24* %8, align 4, !dbg !3900
  %27 = and i8 %25, 15, !dbg !3900
  %28 = zext i8 %27 to i24, !dbg !3900
  %29 = and i24 %26, -16, !dbg !3900
  %30 = or i24 %29, %28, !dbg !3900
  store i24 %30, i24* %8, align 4, !dbg !3900
  br label %35, !dbg !3901

; <label>:31:                                     ; preds = %5
  %32 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %6, i32 1, !dbg !3902
  call void @llvm.dbg.value(metadata %struct.hfp_con* %32, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata %struct.hfp_con* %32, metadata !3870, metadata !DIExpression()), !dbg !3872
  %33 = icmp ult %struct.hfp_con* %32, %4, !dbg !3904
  br i1 %33, label %5, label %34, !dbg !3875, !llvm.loop !3906

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !3908

; <label>:35:                                     ; preds = %34, %12
  %36 = phi %struct.hfp_con* [ %6, %12 ], [ null, %34 ]
  ret %struct.hfp_con* %36, !dbg !3908
}

; Function Attrs: optsize
declare void @rfcomm_accept_connection_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @hfp_volume_interface(i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @rfcomm_send_internal(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @stack_send_infor_2_user(%struct.hci_cmd_t*, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @remote_dev_company_ioctrl(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @sco_connection_setup(i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ASCII_StrToInt(i8*, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define internal fastcc i32 @atcmd_try_send(i16 zeroext, i8*, i16 zeroext) unnamed_addr #2 section ".bt_stack_code" !dbg !3909 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3911, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8* %1, metadata !3912, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i16 %2, metadata !3913, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata %struct.resend_t* null, metadata !3914, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i16 %0, metadata !3806, metadata !DIExpression()), !dbg !3922
  %4 = load %struct.hfp_stack_t*, %struct.hfp_stack_t** @hfp_stack, align 4, !dbg !3924
  %5 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 4, i32 0, !dbg !3924
  %6 = getelementptr inbounds %struct.hfp_stack_t, %struct.hfp_stack_t* %4, i32 0, i32 4, i32 1
  br label %7, !dbg !3925

; <label>:7:                                      ; preds = %18, %3
  %8 = phi %struct.hfp_con* [ %5, %3 ], [ %19, %18 ]
  %9 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 0, i32 0, i32 1, !dbg !3926
  %10 = load i16, i16* %9, align 2, !dbg !3926, !tbaa !414
  %11 = icmp eq i16 %10, %0, !dbg !3927
  br i1 %11, label %12, label %18, !dbg !3928

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 0, i32 0, i32 6, !dbg !3929
  %14 = bitcast [3 x i8]* %13 to i24*, !dbg !3929
  %15 = load i24, i24* %14, align 4, !dbg !3929
  %16 = and i24 %15, 2097152, !dbg !3929
  %17 = icmp eq i24 %16, 0, !dbg !3930
  br i1 %17, label %18, label %21, !dbg !3931

; <label>:18:                                     ; preds = %12, %7
  %19 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 1, !dbg !3932
  call void @llvm.dbg.value(metadata %struct.hfp_con* %19, metadata !3809, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata %struct.hfp_con* %19, metadata !3809, metadata !DIExpression()), !dbg !3933
  %20 = icmp ult %struct.hfp_con* %19, %6, !dbg !3934
  br i1 %20, label %7, label %36, !dbg !3925, !llvm.loop !3832

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.hfp_con* %8, metadata !3916, metadata !DIExpression()), !dbg !3935
  %22 = tail call i32 @rfcomm_send_internal(i16 zeroext %0, i8* %1, i16 zeroext %2) #9, !dbg !3936
  call void @llvm.dbg.value(metadata i32 %22, metadata !3915, metadata !DIExpression()), !dbg !3921
  %23 = icmp eq i32 %22, 0, !dbg !3937
  br i1 %23, label %33, label %24, !dbg !3939

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3921
  %25 = zext i16 %2 to i32, !dbg !3940
  %26 = add nuw nsw i32 %25, 8, !dbg !3942
  %27 = tail call i8* @malloc(i32 %26) #10, !dbg !3943
  tail call void @llvm.memset.p0i8.i32(i8* %27, i8 0, i32 %26, i32 4, i1 false), !dbg !3944
  %28 = getelementptr inbounds i8, i8* %27, i32 4, !dbg !3945
  %29 = bitcast i8* %28 to i16*, !dbg !3945
  store i16 %2, i16* %29, align 4, !dbg !3946, !tbaa !630
  %30 = getelementptr inbounds i8, i8* %27, i32 6, !dbg !3947
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %1, i32 %25, i32 1, i1 false), !dbg !3948
  %31 = getelementptr inbounds %struct.hfp_con, %struct.hfp_con* %8, i32 0, i32 1, !dbg !3949
  %32 = bitcast i8* %27 to %struct.btstack_linked_item*, !dbg !3949
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** %31, %struct.btstack_linked_item* %32) #9, !dbg !3949
  br label %37, !dbg !3950

; <label>:33:                                     ; preds = %21
  %34 = load i24, i24* %14, align 4, !dbg !3951
  %35 = and i24 %34, -4194305, !dbg !3951
  store i24 %35, i24* %14, align 4, !dbg !3951
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()), !dbg !3921
  br label %37

; <label>:36:                                     ; preds = %18
  br label %37, !dbg !3953

; <label>:37:                                     ; preds = %36, %33, %24
  %38 = phi i32 [ 0, %33 ], [ 0, %24 ], [ -1000, %36 ]
  ret i32 %38, !dbg !3953
}

; Function Attrs: nounwind optsize readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #4

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rfcomm_disconnect_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!395, !396}
!llvm.ident = !{!397}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !394, line: 190, type: !266, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !216, globals: !251)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hfp_profile.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !22, !27, !55, !84, !90, !99, !110, !126, !141, !195, !201, !211}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 6, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Host/include/bredr/multi_bd.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!8 = !DIEnumerator(name: "MULTI_BD_SCO_REQ", value: 1)
!9 = !DIEnumerator(name: "MULTI_BD_SCO_CONNECTED", value: 2)
!10 = !DIEnumerator(name: "MULTI_BD_SCO_DISCONN", value: 3)
!11 = !DIEnumerator(name: "MULTI_BD_A2DP_ACTIVE", value: 4)
!12 = !DIEnumerator(name: "MULTI_BD_A2DP_STOP", value: 5)
!13 = !DIEnumerator(name: "MULTI_BD_CALL_INCOMING", value: 6)
!14 = !DIEnumerator(name: "MULTI_BD_CALL_OUTGOING", value: 7)
!15 = !DIEnumerator(name: "MULTI_BD_CALL_HANGUP", value: 8)
!16 = !DIEnumerator(name: "MULTI_BD_SET_WORK_TIME", value: 9)
!17 = !DIEnumerator(name: "MULTI_BD_CLR_WORK_TIME", value: 10)
!18 = !DIEnumerator(name: "MULTI_BD_SCAN_STATUS", value: 11)
!19 = !DIEnumerator(name: "MULTI_BD_SIRI_ACTIVE", value: 12)
!20 = !DIEnumerator(name: "MULTI_BD_SIRI_STOP", value: 13)
!21 = !DIEnumerator(name: "MULTI_BD_A2DP_CONN_CH", value: 14)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 224, size: 32, elements: !24)
!23 = !DIFile(filename: "../btstack/Profile/include/bredr/hfp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "IS_ATCMD_RSP", value: 0)
!26 = !DIEnumerator(name: "IS_ATCMD_CMD", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 195, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!29 = !DIEnumerator(name: "ATCMD_UNKNOWN", value: 0)
!30 = !DIEnumerator(name: "ATCMD_OK", value: 1)
!31 = !DIEnumerator(name: "ATCMD_ERROR", value: 2)
!32 = !DIEnumerator(name: "ATCMD_RING", value: 3)
!33 = !DIEnumerator(name: "ATCMD_BRSF", value: 4)
!34 = !DIEnumerator(name: "ATCMD_CIND", value: 5)
!35 = !DIEnumerator(name: "ATCMD_CIEV", value: 6)
!36 = !DIEnumerator(name: "ATCMD_CLCC", value: 7)
!37 = !DIEnumerator(name: "ATCMD_CLIP", value: 8)
!38 = !DIEnumerator(name: "ATCMD_BTRH", value: 9)
!39 = !DIEnumerator(name: "ATCMD_VGM", value: 10)
!40 = !DIEnumerator(name: "ATCMD_VGS", value: 11)
!41 = !DIEnumerator(name: "ATCMD_CME_ERR", value: 12)
!42 = !DIEnumerator(name: "ATCMD_CCWA", value: 13)
!43 = !DIEnumerator(name: "ATCMD_CNUM", value: 14)
!44 = !DIEnumerator(name: "ATCMD_BVRA", value: 15)
!45 = !DIEnumerator(name: "ATCMD_BSIR", value: 16)
!46 = !DIEnumerator(name: "ATCMD_BCS", value: 17)
!47 = !DIEnumerator(name: "ATCMD_CPBS", value: 18)
!48 = !DIEnumerator(name: "ATCMD_CPBR", value: 19)
!49 = !DIEnumerator(name: "ATCMD_APLSIRI", value: 20)
!50 = !DIEnumerator(name: "ATCMD_XAPL", value: 21)
!51 = !DIEnumerator(name: "ATCMD_CCLK", value: 22)
!52 = !DIEnumerator(name: "ATCMD_CHLD", value: 23)
!53 = !DIEnumerator(name: "ATCMD_CGMI", value: 24)
!54 = !DIEnumerator(name: "ATCMD_BIND", value: 25)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 142, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!57 = !DIEnumerator(name: "HFP_CALL_ANSWER", value: 0)
!58 = !DIEnumerator(name: "HFP_CALL_HANGUP", value: 1)
!59 = !DIEnumerator(name: "HFP_CALL_LAST_NO", value: 2)
!60 = !DIEnumerator(name: "HFP_CALL_VOLUME_UP", value: 3)
!61 = !DIEnumerator(name: "HFP_CALL_VOLUME_DOWN", value: 4)
!62 = !DIEnumerator(name: "HFP_CALL_VOLUME_SET", value: 5)
!63 = !DIEnumerator(name: "HFP_CALL_CURRENT", value: 6)
!64 = !DIEnumerator(name: "HFP_GET_SIRI_STATUS", value: 7)
!65 = !DIEnumerator(name: "HFP_GET_SIRI_OPEN", value: 8)
!66 = !DIEnumerator(name: "HFP_GET_SIRI_CLOSE", value: 9)
!67 = !DIEnumerator(name: "HFP_GET_PHONE_DATE_TIME", value: 10)
!68 = !DIEnumerator(name: "HFP_CMD_GET_MANUFACTURER", value: 11)
!69 = !DIEnumerator(name: "HFP_CMD_GET_NUM_INFO", value: 12)
!70 = !DIEnumerator(name: "HFP_CMD_SEND_BIA", value: 13)
!71 = !DIEnumerator(name: "HFP_CMD_SEND_BCC", value: 14)
!72 = !DIEnumerator(name: "HFP_CMD_SIMPLE_CMD_TABLE_END", value: 15)
!73 = !DIEnumerator(name: "HFP_THREE_WAY_CALL", value: 16)
!74 = !DIEnumerator(name: "HFP_CMD_DTMF", value: 17)
!75 = !DIEnumerator(name: "HFP_CMD_DIAL", value: 18)
!76 = !DIEnumerator(name: "HFP_CMD_SPEAK_GAIN", value: 19)
!77 = !DIEnumerator(name: "HFP_CMD_CLEAR_SIRI_STATUS", value: 20)
!78 = !DIEnumerator(name: "HFP_CMD_UPDATE_BAT_NOW", value: 21)
!79 = !DIEnumerator(name: "HFP_CONNECT", value: 22)
!80 = !DIEnumerator(name: "HFP_DISCONNECT", value: 23)
!81 = !DIEnumerator(name: "HFP_AG_OUTGOING_CALL", value: 24)
!82 = !DIEnumerator(name: "HFP_SEND_USER_AT_CMD", value: 25)
!83 = !DIEnumerator(name: "HFP_NO_OPERATE", value: 255)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 124, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "HFP_GAIN_INC", value: 0)
!87 = !DIEnumerator(name: "HFP_GAIN_DEC", value: 1)
!88 = !DIEnumerator(name: "HFP_GAIN_SET_GAIN", value: 2)
!89 = !DIEnumerator(name: "HFP_GAIN_GET_GAIN", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 132, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "THREE_WAY_OP_0", value: 0)
!93 = !DIEnumerator(name: "THREE_WAY_OP_1", value: 1)
!94 = !DIEnumerator(name: "THREE_WAY_OP_1X", value: 2)
!95 = !DIEnumerator(name: "THREE_WAY_OP_2", value: 3)
!96 = !DIEnumerator(name: "THREE_WAY_OP_2X", value: 4)
!97 = !DIEnumerator(name: "THREE_WAY_OP_3", value: 5)
!98 = !DIEnumerator(name: "THREE_WAY_OP_4", value: 6)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 31, size: 32, elements: !101)
!100 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109}
!102 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!103 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!104 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!105 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!106 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!107 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!108 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!109 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 28, size: 32, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!112 = !DIEnumerator(name: "AG_FEATURE_THREE_WAY_CALLING", value: 1)
!113 = !DIEnumerator(name: "AG_FEATURE_EC_ANDOR_NR", value: 2)
!114 = !DIEnumerator(name: "AG_FEATURE_VOICE_RECOGNITION", value: 4)
!115 = !DIEnumerator(name: "AG_FEATURE_INBAND_RINGTONE", value: 8)
!116 = !DIEnumerator(name: "AG_FEATURE_ATTACH_NUMBER_TO_VOICETAG", value: 16)
!117 = !DIEnumerator(name: "AG_FEATURE_REJECT_A_CALL", value: 32)
!118 = !DIEnumerator(name: "AG_FEATURE_ENHANCED_CALL_STATUS", value: 64)
!119 = !DIEnumerator(name: "AG_FEATURE_ENHANCED_CALL_CONTROL", value: 128)
!120 = !DIEnumerator(name: "AG_FEATURE_EXTENDED_ERROR_RESULT_CODES", value: 256)
!121 = !DIEnumerator(name: "AG_FEATURE_CODEC_NEGOTIATION", value: 512)
!122 = !DIEnumerator(name: "AG_FEATURE_HF_INDICATORS", value: 1024)
!123 = !DIEnumerator(name: "AG_FEATURE_ESCO_S4_SETTINGS_SUPPORT", value: 2048)
!124 = !DIEnumerator(name: "AG_FEATURE_ENHANCED_VOICE_RECOGNITION", value: 4096)
!125 = !DIEnumerator(name: "AG_FEATURE_VOICE_RECOGNITION_TEXT", value: 8192)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 42, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "HFP_INDSTA_BATTERY_CHG", value: 0)
!129 = !DIEnumerator(name: "HFP_INDSTA_SIGNAL_CHG", value: 1)
!130 = !DIEnumerator(name: "HFP_INDSTA_INCOMING_CALL", value: 2)
!131 = !DIEnumerator(name: "HFP_INDSTA_OUTGOING_CALL", value: 3)
!132 = !DIEnumerator(name: "HFP_INDSTA_CALL_ACTIVE", value: 4)
!133 = !DIEnumerator(name: "HFP_INDSTA_CALL_HANGUP", value: 5)
!134 = !DIEnumerator(name: "HFP_INDSTA_CALL_ALERT", value: 6)
!135 = !DIEnumerator(name: "HFP_INDSTA_VOL_CHANGED", value: 7)
!136 = !DIEnumerator(name: "HFP_INDSTA_SECOND_CALL_STATUS", value: 8)
!137 = !DIEnumerator(name: "HFP_INDSTA_INBAND_RINGTONE", value: 9)
!138 = !DIEnumerator(name: "HFP_INDSTA_AG_GET_ATCMD", value: 10)
!139 = !DIEnumerator(name: "HFP_INDSTA_CALL_HELD", value: 11)
!140 = !DIEnumerator(name: "HFP_INDSTA_MAX", value: 12)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 299, size: 32, elements: !143)
!142 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!144 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!145 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!146 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!147 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!148 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!149 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!150 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!151 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!152 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!153 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!154 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!155 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!156 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!157 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!158 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!159 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!160 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!161 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!162 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!163 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!164 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!165 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!166 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!167 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!168 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!169 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!170 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!171 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!172 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!173 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!174 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!175 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!176 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!177 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!178 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!179 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!180 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!181 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!182 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!183 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!184 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!185 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!186 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!187 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!188 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!189 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!190 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!191 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!192 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!193 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!194 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 631, size: 32, elements: !196)
!196 = !{!197, !198, !199, !200}
!197 = !DIEnumerator(name: "REMOTE_DEV_UNKNOWN", value: 0)
!198 = !DIEnumerator(name: "REMOTE_DEV_ANDROID", value: 1)
!199 = !DIEnumerator(name: "REMOTE_DEV_IOS", value: 2)
!200 = !DIEnumerator(name: "REMOTE_DEV_XIAOMI", value: 3)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 172, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210}
!203 = !DIEnumerator(name: "HFP_IND_SERVICE", value: 0)
!204 = !DIEnumerator(name: "HFP_IND_CALL", value: 1)
!205 = !DIEnumerator(name: "HFP_IND_CALLSETUP", value: 2)
!206 = !DIEnumerator(name: "HFP_IND_CALL_SETUP", value: 3)
!207 = !DIEnumerator(name: "HFP_IND_CALLHELD", value: 4)
!208 = !DIEnumerator(name: "HFP_IND_SIGNAL", value: 5)
!209 = !DIEnumerator(name: "HFP_IND_ROAM", value: 6)
!210 = !DIEnumerator(name: "HFP_IND_BATTCHG", value: 7)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 187, size: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "HFP_HF_INDICATORS_ENHANCED_SAFETY", value: 1)
!214 = !DIEnumerator(name: "HFP_HF_INDICATORS_BATTERY_LEVEL", value: 2)
!215 = !DIEnumerator(name: "HFP_HF_INDICATORS_MAX", value: 3)
!216 = !{!217, !220, !221, !226, !234, !248, !249}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !222, line: 26, baseType: !223)
!222 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !224, line: 43, baseType: !225)
!224 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !228, line: 100, baseType: !229)
!228 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !228, line: 55, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !228, line: 53, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !228, line: 54, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "resend_t", file: !100, line: 74, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 70, size: 64, elements: !237)
!237 = !{!238, !239, !242}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !236, file: !100, line: 71, baseType: !227, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !236, file: !100, line: 72, baseType: !240, size: 16, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !241, line: 13, baseType: !225)
!241 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !236, file: !100, line: 73, baseType: !243, offset: 48)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !246)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !241, line: 11, baseType: !245)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !{!247}
!247 = !DISubrange(count: 0)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !241, line: 15, baseType: !250)
!250 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!251 = !{!0, !252, !254, !256, !269, !344, !363, !372, !378, !383, !389}
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "hfp_more_feature_hf_indicators", scope: !2, file: !3, line: 19, type: !244, isLocal: false, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "enhanced_voice_recognition_activation", scope: !2, file: !3, line: 20, type: !244, isLocal: false, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "bt_suspend_hfp_resumehfp_release", scope: !2, file: !3, line: 2040, type: !258, isLocal: false, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !260, line: 313, size: 96, elements: !261)
!260 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!261 = !{!262, !267, !268}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !259, file: !260, line: 314, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, null}
!266 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !259, file: !260, line: 315, baseType: !263, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !259, file: !260, line: 316, baseType: !263, size: 32, offset: 64)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "hfp_stack", scope: !2, file: !3, line: 23, type: !271, isLocal: true, isDefinition: true)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_stack_t", file: !23, line: 303, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 294, size: 3328, elements: !274)
!274 = !{!275, !276, !277, !278, !285, !289, !293}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_init_number", scope: !273, file: !23, line: 295, baseType: !244, size: 5, flags: DIFlagBitField, extraData: i64 0)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_background", scope: !273, file: !23, line: 296, baseType: !244, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reserve1", scope: !273, file: !23, line: 297, baseType: !244, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_parse_sta", scope: !273, file: !23, line: 298, baseType: !279, size: 24, offset: 8)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_PARSE_STA", file: !23, line: 248, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__HFP_PARSE_STA", file: !23, line: 240, size: 24, elements: !281)
!281 = !{!282, !283, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parse_atcmd_type", scope: !280, file: !23, line: 242, baseType: !244, size: 7, flags: DIFlagBitField, extraData: i64 0)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "atcmd_cr_type", scope: !280, file: !23, line: 244, baseType: !244, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "received_data_len", scope: !280, file: !23, line: 246, baseType: !240, size: 16, offset: 8)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parse_atcmd_buf", scope: !273, file: !23, line: 299, baseType: !286, size: 1984, offset: 32)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1984, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 248)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "phone_number", scope: !273, file: !23, line: 301, baseType: !290, size: 192, offset: 2016)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 24)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !273, file: !23, line: 302, baseType: !294, size: 1120, offset: 2208)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 1120, elements: !342)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_con_t", file: !23, line: 292, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hfp_con", file: !23, line: 283, size: 1120, elements: !297)
!297 = !{!298, !339}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_core_data", scope: !296, file: !23, line: 284, baseType: !299, size: 1088)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_con_core_data_t", file: !23, line: 281, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 257, size: 1088, elements: !301)
!301 = !{!302, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !338}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !300, file: !23, line: 259, baseType: !303, size: 48)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !304, line: 7, baseType: !305)
!304 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 48, elements: !308)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !222, line: 20, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !224, line: 29, baseType: !245)
!308 = !{!309}
!309 = !DISubrange(count: 6)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channel_id", scope: !300, file: !23, line: 260, baseType: !240, size: 16, offset: 48)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "support_featurn_ag", scope: !300, file: !23, line: 262, baseType: !249, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !300, file: !23, line: 264, baseType: !240, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_init_battery_value", scope: !300, file: !23, line: 265, baseType: !244, size: 8, offset: 112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "send_key_flag", scope: !300, file: !23, line: 266, baseType: !244, size: 8, offset: 120)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_speak_gain", scope: !300, file: !23, line: 268, baseType: !244, size: 4, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_mic_gain", scope: !300, file: !23, line: 269, baseType: !244, size: 4, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "phone_call_status", scope: !300, file: !23, line: 270, baseType: !244, size: 4, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "second_call_status", scope: !300, file: !23, line: 271, baseType: !244, size: 4, offset: 140, flags: DIFlagBitField, extraData: i64 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_init_step", scope: !300, file: !23, line: 273, baseType: !244, size: 5, offset: 144, flags: DIFlagBitField, extraData: i64 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !300, file: !23, line: 274, baseType: !244, size: 1, offset: 149, flags: DIFlagBitField, extraData: i64 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_cmd_send_failed", scope: !300, file: !23, line: 275, baseType: !244, size: 1, offset: 150, flags: DIFlagBitField, extraData: i64 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ios_siri_status", scope: !300, file: !23, line: 276, baseType: !244, size: 3, offset: 152, flags: DIFlagBitField, extraData: i64 152)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hf_indications", scope: !300, file: !23, line: 278, baseType: !324, size: 24, offset: 160)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 24, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 3)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "indicators", scope: !300, file: !23, line: 279, baseType: !328, size: 448, offset: 184)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 448, elements: !336)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDICATOR", file: !23, line: 255, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__INDICATOR", file: !23, line: 250, size: 56, elements: !331)
!331 = !{!332, !333, !334, !335}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !330, file: !23, line: 251, baseType: !248, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "desc_index", scope: !330, file: !23, line: 252, baseType: !244, size: 8, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "strlen", scope: !330, file: !23, line: 253, baseType: !244, size: 8, offset: 40)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !330, file: !23, line: 254, baseType: !244, size: 8, offset: 48)
!336 = !{!337}
!337 = !DISubrange(count: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "prev_inds", scope: !300, file: !23, line: 280, baseType: !328, size: 448, offset: 632)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fail_item", scope: !296, file: !23, line: 287, baseType: !340, size: 32, offset: 1088)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !228, line: 101, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!342 = !{!343}
!343 = !DISubrange(count: 1)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "cmds", scope: !346, file: !3, line: 788, type: !217, isLocal: true, isDefinition: true)
!346 = distinct !DISubprogram(name: "parse_atcmd_cmd_or_rsp_type", scope: !3, file: !3, line: 712, type: !347, isLocal: true, isDefinition: true, scopeLine: 713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !350)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !240, !217, !240}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !241, line: 11, baseType: !245)
!350 = !{!351, !352, !353, !354, !356, !357, !358, !360}
!351 = !DILocalVariable(name: "channel", arg: 1, scope: !346, file: !3, line: 712, type: !240)
!352 = !DILocalVariable(name: "packet", arg: 2, scope: !346, file: !3, line: 712, type: !217)
!353 = !DILocalVariable(name: "size", arg: 3, scope: !346, file: !3, line: 712, type: !240)
!354 = !DILocalVariable(name: "conn", scope: !346, file: !3, line: 714, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!356 = !DILocalVariable(name: "cmd_ptr", scope: !346, file: !3, line: 808, type: !217)
!357 = !DILocalVariable(name: "atcmd_ty", scope: !346, file: !3, line: 809, type: !249)
!358 = !DILocalVariable(name: "i", scope: !359, file: !3, line: 810, type: !249)
!359 = distinct !DILexicalBlock(scope: !346, file: !3, line: 810, column: 5)
!360 = !DILocalVariable(name: "size", scope: !361, file: !3, line: 811, type: !249)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 810, column: 64)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 810, column: 5)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "infos", scope: !346, file: !3, line: 800, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 304, elements: !370)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "info", scope: !346, file: !3, line: 794, size: 16, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !3, line: 795, baseType: !244, size: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !366, file: !3, line: 796, baseType: !244, size: 8, offset: 8)
!370 = !{!371}
!371 = !DISubrange(count: 19)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "hfp_ind_str_buf", scope: !2, file: !3, line: 31, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 960, elements: !376)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!376 = !{!337, !377}
!377 = !DISubrange(count: 15)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "hfp_function_cmd", scope: !2, file: !3, line: 193, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 3344, elements: !381)
!381 = !{!371, !382}
!382 = !DISubrange(count: 22)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "hfp_SLC_init_cmd", scope: !2, file: !3, line: 590, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 1296, elements: !386)
!386 = !{!387, !388}
!387 = !DISubrange(count: 9)
!388 = !DISubrange(count: 18)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "hfp_param_set_buf", scope: !2, file: !3, line: 601, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 2016, elements: !392)
!392 = !{!387, !393}
!393 = !DISubrange(count: 28)
!394 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!395 = !{i32 2, !"Dwarf Version", i32 4}
!396 = !{i32 2, !"Debug Info Version", i32 3}
!397 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!398 = distinct !DISubprogram(name: "hfp_check_conn_for_rfcomm_id", scope: !3, file: !3, line: 82, type: !399, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!244, !240}
!401 = !{!402, !403}
!402 = !DILocalVariable(name: "rfcomm_id", arg: 1, scope: !398, file: !3, line: 82, type: !240)
!403 = !DILocalVariable(name: "conn", scope: !398, file: !3, line: 84, type: !355)
!404 = !DILocation(line: 82, column: 37, scope: !398)
!405 = !DILocation(line: 84, column: 16, scope: !398)
!406 = !DILocation(line: 85, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !398, file: !3, line: 85, column: 5)
!408 = !DILocation(line: 85, column: 5, scope: !409)
!409 = !DILexicalBlockFile(scope: !407, file: !3, discriminator: 1)
!410 = !DILocation(line: 86, column: 33, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 86, column: 13)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 85, column: 34)
!413 = distinct !DILexicalBlock(scope: !407, file: !3, line: 85, column: 5)
!414 = !{!415, !419, i64 6}
!415 = !{!"hfp_con", !416, i64 0, !421, i64 136}
!416 = !{!"", !417, i64 0, !419, i64 6, !420, i64 8, !419, i64 12, !417, i64 14, !417, i64 15, !417, i64 16, !417, i64 16, !417, i64 17, !417, i64 17, !417, i64 18, !417, i64 18, !417, i64 18, !417, i64 19, !417, i64 20, !417, i64 23, !417, i64 79}
!417 = !{!"omnipotent char", !418, i64 0}
!418 = !{!"Simple C/C++ TBAA"}
!419 = !{!"short", !417, i64 0}
!420 = !{!"int", !417, i64 0}
!421 = !{!"any pointer", !417, i64 0}
!422 = !DILocation(line: 86, column: 51, scope: !411)
!423 = !DILocation(line: 86, column: 64, scope: !411)
!424 = !DILocation(line: 86, column: 87, scope: !425)
!425 = !DILexicalBlockFile(scope: !411, file: !3, discriminator: 1)
!426 = !DILocation(line: 86, column: 67, scope: !425)
!427 = !DILocation(line: 86, column: 13, scope: !428)
!428 = !DILexicalBlockFile(scope: !412, file: !3, discriminator: 1)
!429 = !DILocation(line: 85, column: 5, scope: !430)
!430 = !DILexicalBlockFile(scope: !413, file: !3, discriminator: 2)
!431 = !DILocation(line: 85, column: 5, scope: !432)
!432 = !DILexicalBlockFile(scope: !413, file: !3, discriminator: 1)
!433 = distinct !{!433, !406, !434}
!434 = !DILocation(line: 89, column: 5, scope: !407)
!435 = !DILocation(line: 91, column: 1, scope: !398)
!436 = distinct !DISubprogram(name: "siri_update_multi_bd_status", scope: !3, file: !3, line: 115, type: !437, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !244, !248}
!439 = !{!440, !441}
!440 = !DILocalVariable(name: "siri_status", arg: 1, scope: !436, file: !3, line: 115, type: !244)
!441 = !DILocalVariable(name: "addr", arg: 2, scope: !436, file: !3, line: 115, type: !248)
!442 = !DILocation(line: 115, column: 37, scope: !436)
!443 = !DILocation(line: 115, column: 54, scope: !436)
!444 = !DILocation(line: 117, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !436, file: !3, line: 117, column: 9)
!446 = !DILocation(line: 117, column: 9, scope: !436)
!447 = !DILocation(line: 118, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 117, column: 22)
!449 = !DILocation(line: 119, column: 5, scope: !448)
!450 = !DILocation(line: 120, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !3, line: 119, column: 12)
!452 = !DILocation(line: 122, column: 1, scope: !436)
!453 = distinct !DISubprogram(name: "phone_date_and_time_feedback", scope: !3, file: !3, line: 1436, type: !454, isLocal: false, isDefinition: true, scopeLine: 1437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !248, !240}
!456 = !{!457, !458}
!457 = !DILocalVariable(name: "data", arg: 1, scope: !453, file: !3, line: 1436, type: !248)
!458 = !DILocalVariable(name: "len", arg: 2, scope: !453, file: !3, line: 1436, type: !240)
!459 = !DILocation(line: 1436, column: 61, scope: !453)
!460 = !DILocation(line: 1436, column: 71, scope: !453)
!461 = !DILocation(line: 1438, column: 19, scope: !453)
!462 = !DILocation(line: 1438, column: 5, scope: !453)
!463 = !DILocation(line: 1439, column: 5, scope: !453)
!464 = !DILocation(line: 1440, column: 1, scope: !453)
!465 = distinct !DISubprogram(name: "at_cmd_analysis_by_user", scope: !3, file: !3, line: 1639, type: !466, isLocal: false, isDefinition: true, scopeLine: 1640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!266, !248, !240}
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "packet", arg: 1, scope: !465, file: !3, line: 1639, type: !248)
!470 = !DILocalVariable(name: "size", arg: 2, scope: !465, file: !3, line: 1639, type: !240)
!471 = !DILocation(line: 1639, column: 33, scope: !465)
!472 = !DILocation(line: 1639, column: 45, scope: !465)
!473 = !DILocation(line: 1642, column: 5, scope: !465)
!474 = distinct !DISubprogram(name: "hfp_profile_init", scope: !3, file: !3, line: 2043, type: !475, isLocal: false, isDefinition: true, scopeLine: 2044, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !271, !244}
!477 = !{!478, !479}
!478 = !DILocalVariable(name: "stack", arg: 1, scope: !474, file: !3, line: 2043, type: !271)
!479 = !DILocalVariable(name: "display_battery", arg: 2, scope: !474, file: !3, line: 2043, type: !244)
!480 = !DILocation(line: 2043, column: 36, scope: !474)
!481 = !DILocation(line: 2043, column: 46, scope: !474)
!482 = !DILocation(line: 2045, column: 15, scope: !474)
!483 = !{!421, !421, i64 0}
!484 = !DILocation(line: 2047, column: 5, scope: !474)
!485 = !DILocation(line: 2048, column: 5, scope: !474)
!486 = !DILocation(line: 2050, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !474, file: !3, line: 2050, column: 9)
!488 = !DILocation(line: 2050, column: 9, scope: !474)
!489 = !DILocation(line: 2058, column: 30, scope: !474)
!490 = !DILocation(line: 2058, column: 48, scope: !474)
!491 = !{!492, !419, i64 2}
!492 = !{!"", !417, i64 0, !417, i64 0, !417, i64 0, !493, i64 1, !417, i64 4, !417, i64 252, !417, i64 276}
!493 = !{!"__HFP_PARSE_STA", !417, i64 0, !417, i64 0, !419, i64 1}
!494 = !DILocation(line: 2061, column: 30, scope: !474)
!495 = !DILocation(line: 2061, column: 47, scope: !474)
!496 = !DILocation(line: 2062, column: 1, scope: !474)
!497 = distinct !DISubprogram(name: "hfp_packet_handler", scope: !3, file: !3, line: 1938, type: !498, isLocal: true, isDefinition: true, scopeLine: 1939, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !244, !240, !248, !240}
!500 = !{!501, !502, !503, !504, !505}
!501 = !DILocalVariable(name: "packet_type", arg: 1, scope: !497, file: !3, line: 1938, type: !244)
!502 = !DILocalVariable(name: "channel", arg: 2, scope: !497, file: !3, line: 1938, type: !240)
!503 = !DILocalVariable(name: "packet", arg: 3, scope: !497, file: !3, line: 1938, type: !248)
!504 = !DILocalVariable(name: "size", arg: 4, scope: !497, file: !3, line: 1938, type: !240)
!505 = !DILocalVariable(name: "conn", scope: !497, file: !3, line: 1942, type: !355)
!506 = !DILocalVariable(name: "addr", scope: !507, file: !3, line: 1847, type: !303)
!507 = distinct !DISubprogram(name: "hfp_incoming_connection", scope: !3, file: !3, line: 1845, type: !508, isLocal: true, isDefinition: true, scopeLine: 1846, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !240, !248, !240}
!510 = !{!511, !512, !513, !506, !514}
!511 = !DILocalVariable(name: "channel", arg: 1, scope: !507, file: !3, line: 1845, type: !240)
!512 = !DILocalVariable(name: "packet", arg: 2, scope: !507, file: !3, line: 1845, type: !248)
!513 = !DILocalVariable(name: "size", arg: 3, scope: !507, file: !3, line: 1845, type: !240)
!514 = !DILocalVariable(name: "conn", scope: !507, file: !3, line: 1848, type: !355)
!515 = !DILocation(line: 1847, column: 15, scope: !507, inlinedAt: !516)
!516 = distinct !DILocation(line: 1949, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1945, column: 28)
!518 = distinct !DILexicalBlock(scope: !497, file: !3, line: 1943, column: 26)
!519 = !DILocation(line: 1938, column: 35, scope: !497)
!520 = !DILocation(line: 1938, column: 52, scope: !497)
!521 = !DILocation(line: 1938, column: 65, scope: !497)
!522 = !DILocation(line: 1938, column: 77, scope: !497)
!523 = !DILocation(line: 1943, column: 5, scope: !497)
!524 = !DILocation(line: 1945, column: 17, scope: !518)
!525 = !{!417, !417, i64 0}
!526 = !DILocation(line: 1945, column: 9, scope: !518)
!527 = !DILocation(line: 1845, column: 66, scope: !507, inlinedAt: !516)
!528 = !DILocation(line: 1847, column: 5, scope: !507, inlinedAt: !516)
!529 = !DILocation(line: 1850, column: 31, scope: !507, inlinedAt: !516)
!530 = !DILocation(line: 1850, column: 5, scope: !507, inlinedAt: !516)
!531 = !DILocation(line: 1852, column: 12, scope: !507, inlinedAt: !516)
!532 = !DILocation(line: 1848, column: 16, scope: !507, inlinedAt: !516)
!533 = !DILocation(line: 1853, column: 10, scope: !534, inlinedAt: !516)
!534 = distinct !DILexicalBlock(scope: !507, file: !3, line: 1853, column: 9)
!535 = !DILocation(line: 1853, column: 9, scope: !507, inlinedAt: !516)
!536 = !DILocation(line: 1854, column: 16, scope: !537, inlinedAt: !516)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 1853, column: 16)
!538 = !DILocation(line: 1856, column: 9, scope: !539, inlinedAt: !516)
!539 = distinct !DILexicalBlock(scope: !507, file: !3, line: 1856, column: 9)
!540 = !DILocation(line: 1856, column: 9, scope: !507, inlinedAt: !516)
!541 = !DILocation(line: 1857, column: 29, scope: !542, inlinedAt: !516)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 1856, column: 15)
!543 = !DILocation(line: 1857, column: 37, scope: !542, inlinedAt: !516)
!544 = !{!415, !419, i64 12}
!545 = !DILocation(line: 1858, column: 49, scope: !542, inlinedAt: !516)
!546 = !DILocation(line: 1858, column: 29, scope: !542, inlinedAt: !516)
!547 = !DILocation(line: 1858, column: 47, scope: !542, inlinedAt: !516)
!548 = !DILocation(line: 1859, column: 9, scope: !542, inlinedAt: !516)
!549 = !DILocation(line: 1860, column: 5, scope: !542, inlinedAt: !516)
!550 = !DILocation(line: 1861, column: 1, scope: !507, inlinedAt: !516)
!551 = !DILocation(line: 1950, column: 13, scope: !517)
!552 = !DILocation(line: 1954, column: 30, scope: !517)
!553 = !DILocation(line: 1954, column: 13, scope: !517)
!554 = !DILocation(line: 1955, column: 13, scope: !517)
!555 = !DILocalVariable(name: "channel", arg: 1, scope: !556, file: !3, line: 93, type: !240)
!556 = distinct !DISubprogram(name: "__hfp_conn_for_channel", scope: !3, file: !3, line: 93, type: !557, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!355, !240}
!559 = !{!555, !560}
!560 = !DILocalVariable(name: "conn", scope: !556, file: !3, line: 95, type: !355)
!561 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !562)
!562 = distinct !DILocation(line: 1960, column: 20, scope: !517)
!563 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !562)
!564 = distinct !DILexicalBlock(scope: !556, file: !3, line: 96, column: 5)
!565 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !562)
!566 = !DILexicalBlockFile(scope: !564, file: !3, discriminator: 1)
!567 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !562)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 97, column: 13)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 96, column: 34)
!570 = distinct !DILexicalBlock(scope: !564, file: !3, line: 96, column: 5)
!571 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !562)
!572 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !562)
!573 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !562)
!574 = !DILexicalBlockFile(scope: !568, file: !3, discriminator: 1)
!575 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !562)
!576 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !562)
!577 = !DILexicalBlockFile(scope: !569, file: !3, discriminator: 1)
!578 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !562)
!579 = !DILexicalBlockFile(scope: !570, file: !3, discriminator: 2)
!580 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !562)
!581 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !562)
!582 = !DILexicalBlockFile(scope: !570, file: !3, discriminator: 1)
!583 = distinct !{!583, !584, !585}
!584 = !DILocation(line: 96, column: 5, scope: !564)
!585 = !DILocation(line: 100, column: 5, scope: !564)
!586 = !DILocation(line: 1942, column: 16, scope: !497)
!587 = !DILocation(line: 1961, column: 13, scope: !517)
!588 = !DILocation(line: 1962, column: 13, scope: !517)
!589 = !DILocalVariable(name: "channel", arg: 1, scope: !590, file: !3, line: 1895, type: !240)
!590 = distinct !DISubprogram(name: "hfp_event_credits", scope: !3, file: !3, line: 1895, type: !591, isLocal: true, isDefinition: true, scopeLine: 1896, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !240}
!593 = !{!589, !594, !595, !596, !597}
!594 = !DILocalVariable(name: "err", scope: !590, file: !3, line: 1897, type: !266)
!595 = !DILocalVariable(name: "resend", scope: !590, file: !3, line: 1898, type: !234)
!596 = !DILocalVariable(name: "it", scope: !590, file: !3, line: 1899, type: !226)
!597 = !DILocalVariable(name: "conn", scope: !590, file: !3, line: 1900, type: !355)
!598 = !DILocation(line: 1895, column: 35, scope: !590, inlinedAt: !599)
!599 = distinct !DILocation(line: 1966, column: 13, scope: !517)
!600 = !DILocation(line: 1897, column: 9, scope: !590, inlinedAt: !599)
!601 = !DILocation(line: 1898, column: 15, scope: !590, inlinedAt: !599)
!602 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !603)
!603 = distinct !DILocation(line: 1900, column: 23, scope: !590, inlinedAt: !599)
!604 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !603)
!605 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !603)
!606 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !603)
!607 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !603)
!608 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !603)
!609 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !603)
!610 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !603)
!611 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !603)
!612 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !603)
!613 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !603)
!614 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !603)
!615 = !DILocation(line: 1900, column: 16, scope: !590, inlinedAt: !599)
!616 = !DILocation(line: 1903, column: 42, scope: !617, inlinedAt: !599)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 1903, column: 9)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1901, column: 15)
!619 = distinct !DILexicalBlock(scope: !590, file: !3, line: 1901, column: 9)
!620 = !{!415, !421, i64 136}
!621 = !DILocation(line: 1899, column: 20, scope: !590, inlinedAt: !599)
!622 = !DILocation(line: 1903, column: 9, scope: !623, inlinedAt: !599)
!623 = !DILexicalBlockFile(scope: !617, file: !3, discriminator: 1)
!624 = !DILocation(line: 1904, column: 22, scope: !625, inlinedAt: !599)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 1903, column: 73)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 1903, column: 9)
!627 = !DILocation(line: 1906, column: 64, scope: !625, inlinedAt: !599)
!628 = !DILocation(line: 1906, column: 97, scope: !625, inlinedAt: !599)
!629 = !DILocation(line: 1906, column: 119, scope: !625, inlinedAt: !599)
!630 = !{!631, !419, i64 4}
!631 = !{!"", !632, i64 0, !419, i64 4, !417, i64 6}
!632 = !{!"btstack_linked_item", !421, i64 0}
!633 = !DILocalVariable(name: "rfcom_cid", arg: 1, scope: !634, file: !3, line: 135, type: !240)
!634 = distinct !DISubprogram(name: "atcmd_try_send_no_backup", scope: !3, file: !3, line: 135, type: !635, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!266, !240, !217, !240}
!637 = !{!633, !638, !639, !640}
!638 = !DILocalVariable(name: "buf", arg: 2, scope: !634, file: !3, line: 135, type: !217)
!639 = !DILocalVariable(name: "len", arg: 3, scope: !634, file: !3, line: 135, type: !240)
!640 = !DILocalVariable(name: "err", scope: !634, file: !3, line: 137, type: !266)
!641 = !DILocation(line: 135, column: 41, scope: !634, inlinedAt: !642)
!642 = distinct !DILocation(line: 1906, column: 19, scope: !625, inlinedAt: !599)
!643 = !DILocation(line: 135, column: 64, scope: !634, inlinedAt: !642)
!644 = !DILocation(line: 135, column: 73, scope: !634, inlinedAt: !642)
!645 = !DILocation(line: 137, column: 9, scope: !634, inlinedAt: !642)
!646 = !DILocation(line: 138, column: 11, scope: !634, inlinedAt: !642)
!647 = !DILocation(line: 1907, column: 21, scope: !648, inlinedAt: !599)
!648 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1907, column: 17)
!649 = !DILocation(line: 1907, column: 17, scope: !625, inlinedAt: !599)
!650 = !DILocation(line: 1909, column: 17, scope: !651, inlinedAt: !599)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 1907, column: 27)
!652 = !DILocation(line: 1910, column: 22, scope: !651, inlinedAt: !599)
!653 = !DILocation(line: 1910, column: 17, scope: !651, inlinedAt: !599)
!654 = !DILocation(line: 1911, column: 13, scope: !651, inlinedAt: !599)
!655 = !DILocation(line: 1915, column: 33, scope: !656, inlinedAt: !599)
!656 = distinct !DILexicalBlock(scope: !618, file: !3, line: 1915, column: 13)
!657 = !DILocation(line: 1915, column: 13, scope: !656, inlinedAt: !599)
!658 = !DILocation(line: 1915, column: 51, scope: !656, inlinedAt: !599)
!659 = !DILocation(line: 1915, column: 75, scope: !660, inlinedAt: !599)
!660 = !DILexicalBlockFile(scope: !656, file: !3, discriminator: 1)
!661 = !DILocation(line: 1915, column: 89, scope: !660, inlinedAt: !599)
!662 = !DILocation(line: 1915, column: 118, scope: !663, inlinedAt: !599)
!663 = !DILexicalBlockFile(scope: !656, file: !3, discriminator: 2)
!664 = !DILocation(line: 1915, column: 138, scope: !663, inlinedAt: !599)
!665 = !DILocation(line: 1915, column: 94, scope: !660, inlinedAt: !599)
!666 = !DILocation(line: 1916, column: 13, scope: !667, inlinedAt: !599)
!667 = distinct !DILexicalBlock(scope: !656, file: !3, line: 1915, column: 145)
!668 = !DILocation(line: 1917, column: 9, scope: !667, inlinedAt: !599)
!669 = !DILocation(line: 1975, column: 13, scope: !517)
!670 = !DILocation(line: 1976, column: 13, scope: !517)
!671 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !672)
!672 = distinct !DILocation(line: 1987, column: 16, scope: !518)
!673 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !672)
!674 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !672)
!675 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !672)
!676 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !672)
!677 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !672)
!678 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !672)
!679 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !672)
!680 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !672)
!681 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !672)
!682 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !672)
!683 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !672)
!684 = !DILocation(line: 1990, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 1990, column: 13)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 1989, column: 20)
!687 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1989, column: 13)
!688 = !DILocation(line: 1990, column: 13, scope: !686)
!689 = !DILocation(line: 1990, column: 13, scope: !690)
!690 = !DILexicalBlockFile(scope: !685, file: !3, discriminator: 1)
!691 = !DILocation(line: 1991, column: 29, scope: !686)
!692 = !DILocation(line: 1991, column: 13, scope: !686)
!693 = !DILocation(line: 1993, column: 13, scope: !686)
!694 = !DILocation(line: 1995, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1995, column: 13)
!696 = !DILocation(line: 1995, column: 13, scope: !518)
!697 = !DILocation(line: 1996, column: 13, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !3, line: 1995, column: 59)
!699 = !DILocation(line: 1997, column: 9, scope: !698)
!700 = !DILocation(line: 2005, column: 1, scope: !497)
!701 = distinct !DISubprogram(name: "hfp_send_cmd_io_ctrl", scope: !3, file: !3, line: 2078, type: !702, isLocal: false, isDefinition: true, scopeLine: 2079, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !724)
!702 = !DISubroutineType(types: !703)
!703 = !{!266, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_ioctrl_str", file: !23, line: 315, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 305, size: 384, elements: !707)
!707 = !{!708, !709, !711, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !706, file: !23, line: 306, baseType: !303, size: 48)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !23, line: 307, baseType: !710, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_PHONE_CTL_TYPE", file: !23, line: 170, baseType: !55)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !706, file: !23, line: 308, baseType: !244, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !23, line: 309, baseType: !713, size: 256, offset: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !23, line: 309, size: 256, elements: !714)
!714 = !{!715, !717, !719, !723}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gain_mode", scope: !713, file: !23, line: 310, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_GAIN_CTL_MODE", file: !23, line: 129, baseType: !84)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "three_way_ctrl", scope: !713, file: !23, line: 311, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_THREE_WAY_CALL_FLAG", file: !23, line: 140, baseType: !90)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "phone_num", scope: !713, file: !23, line: 312, baseType: !720, size: 240)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 240, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 30)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !713, file: !23, line: 313, baseType: !248, size: 32)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "io_str", arg: 1, scope: !701, file: !3, line: 2078, type: !704)
!726 = !DILocalVariable(name: "error", scope: !701, file: !3, line: 2080, type: !266)
!727 = !DILocalVariable(name: "conn", scope: !728, file: !3, line: 2090, type: !355)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 2089, column: 27)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 2088, column: 31)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 2087, column: 12)
!731 = distinct !DILexicalBlock(scope: !701, file: !3, line: 2085, column: 9)
!732 = !DILocalVariable(name: "cmdbuf", scope: !733, file: !3, line: 404, type: !743)
!733 = distinct !DISubprogram(name: "user_hfp_send_dial_cmd", scope: !3, file: !3, line: 401, type: !734, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !737)
!734 = !DISubroutineType(types: !735)
!735 = !{!266, !736, !248, !244}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 32)
!737 = !{!738, !739, !740, !741, !732, !742}
!738 = !DILocalVariable(name: "addr", arg: 1, scope: !733, file: !3, line: 401, type: !736)
!739 = !DILocalVariable(name: "phone_num", arg: 2, scope: !733, file: !3, line: 401, type: !248)
!740 = !DILocalVariable(name: "len", arg: 3, scope: !733, file: !3, line: 401, type: !244)
!741 = !DILocalVariable(name: "i", scope: !733, file: !3, line: 403, type: !266)
!742 = !DILocalVariable(name: "conn", scope: !733, file: !3, line: 405, type: !355)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 280, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 35)
!746 = !DILocation(line: 404, column: 10, scope: !733, inlinedAt: !747)
!747 = distinct !DILocation(line: 2114, column: 21, scope: !729)
!748 = !DILocalVariable(name: "cmdbuf", scope: !749, file: !3, line: 431, type: !756)
!749 = distinct !DISubprogram(name: "hfp_send_DTMF_tone", scope: !3, file: !3, line: 428, type: !750, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!266, !736, !219}
!752 = !{!753, !754, !748, !755}
!753 = !DILocalVariable(name: "addr", arg: 1, scope: !749, file: !3, line: 428, type: !736)
!754 = !DILocalVariable(name: "tone", arg: 2, scope: !749, file: !3, line: 428, type: !219)
!755 = !DILocalVariable(name: "conn", scope: !749, file: !3, line: 432, type: !355)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 80, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 10)
!759 = !DILocation(line: 431, column: 10, scope: !749, inlinedAt: !760)
!760 = distinct !DILocation(line: 2110, column: 25, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 2109, column: 39)
!762 = distinct !DILexicalBlock(scope: !729, file: !3, line: 2109, column: 17)
!763 = !DILocalVariable(name: "cmdbuf", scope: !764, file: !3, line: 449, type: !771)
!764 = distinct !DISubprogram(name: "hfp_three_way_call_op", scope: !3, file: !3, line: 446, type: !765, isLocal: true, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!266, !736, !718}
!767 = !{!768, !769, !763, !770}
!768 = !DILocalVariable(name: "addr", arg: 1, scope: !764, file: !3, line: 446, type: !736)
!769 = !DILocalVariable(name: "op_flag", arg: 2, scope: !764, file: !3, line: 446, type: !718)
!770 = !DILocalVariable(name: "conn", scope: !764, file: !3, line: 451, type: !355)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 120, elements: !772)
!772 = !{!377}
!773 = !DILocation(line: 449, column: 10, scope: !764, inlinedAt: !774)
!774 = distinct !DILocation(line: 2105, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 2104, column: 39)
!776 = distinct !DILexicalBlock(scope: !729, file: !3, line: 2104, column: 17)
!777 = !DILocalVariable(name: "cmdbuf", scope: !778, file: !3, line: 217, type: !786)
!778 = distinct !DISubprogram(name: "hfp_phone_control", scope: !3, file: !3, line: 215, type: !779, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!266, !736, !710}
!781 = !{!782, !783, !777, !784, !785}
!782 = !DILocalVariable(name: "addr", arg: 1, scope: !778, file: !3, line: 215, type: !736)
!783 = !DILocalVariable(name: "type", arg: 2, scope: !778, file: !3, line: 215, type: !710)
!784 = !DILocalVariable(name: "cmd_index", scope: !778, file: !3, line: 218, type: !244)
!785 = !DILocalVariable(name: "conn", scope: !778, file: !3, line: 220, type: !355)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 200, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 25)
!789 = !DILocation(line: 217, column: 10, scope: !778, inlinedAt: !790)
!790 = distinct !DILocation(line: 2086, column: 17, scope: !791)
!791 = distinct !DILexicalBlock(scope: !731, file: !3, line: 2085, column: 57)
!792 = !DILocation(line: 2078, column: 43, scope: !701)
!793 = !DILocation(line: 2080, column: 9, scope: !701)
!794 = !DILocation(line: 2081, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !701, file: !3, line: 2081, column: 9)
!796 = !DILocation(line: 2081, column: 19, scope: !795)
!797 = !DILocation(line: 2081, column: 9, scope: !701)
!798 = !DILocation(line: 2085, column: 17, scope: !731)
!799 = !{!800, !417, i64 8}
!800 = !{!"", !417, i64 0, !417, i64 8, !417, i64 12, !417, i64 16}
!801 = !DILocation(line: 2085, column: 23, scope: !731)
!802 = !DILocation(line: 2085, column: 9, scope: !701)
!803 = !DILocation(line: 2086, column: 35, scope: !791)
!804 = !DILocation(line: 215, column: 40, scope: !778, inlinedAt: !790)
!805 = !DILocation(line: 215, column: 65, scope: !778, inlinedAt: !790)
!806 = !DILocation(line: 217, column: 5, scope: !778, inlinedAt: !790)
!807 = !DILocation(line: 219, column: 5, scope: !778, inlinedAt: !790)
!808 = !DILocation(line: 220, column: 23, scope: !778, inlinedAt: !790)
!809 = !DILocation(line: 220, column: 16, scope: !778, inlinedAt: !790)
!810 = !DILocation(line: 221, column: 10, scope: !811, inlinedAt: !790)
!811 = distinct !DILexicalBlock(scope: !778, file: !3, line: 221, column: 9)
!812 = !DILocation(line: 221, column: 9, scope: !778, inlinedAt: !790)
!813 = !DILocation(line: 225, column: 29, scope: !814, inlinedAt: !790)
!814 = distinct !DILexicalBlock(scope: !778, file: !3, line: 225, column: 9)
!815 = !DILocation(line: 225, column: 43, scope: !814, inlinedAt: !790)
!816 = !DILocation(line: 225, column: 9, scope: !778, inlinedAt: !790)
!817 = !DILocation(line: 228, column: 5, scope: !778, inlinedAt: !790)
!818 = !DILocation(line: 239, column: 34, scope: !819, inlinedAt: !790)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 239, column: 13)
!820 = distinct !DILexicalBlock(scope: !778, file: !3, line: 228, column: 19)
!821 = !DILocation(line: 240, column: 13, scope: !819, inlinedAt: !790)
!822 = !DILocation(line: 218, column: 8, scope: !778, inlinedAt: !790)
!823 = !DILocation(line: 249, column: 57, scope: !820, inlinedAt: !790)
!824 = !DILocation(line: 249, column: 74, scope: !820, inlinedAt: !790)
!825 = !DILocation(line: 249, column: 9, scope: !820, inlinedAt: !790)
!826 = !DILocation(line: 251, column: 82, scope: !820, inlinedAt: !790)
!827 = !DILocation(line: 251, column: 62, scope: !820, inlinedAt: !790)
!828 = !DILocation(line: 250, column: 9, scope: !820, inlinedAt: !790)
!829 = !DILocation(line: 252, column: 105, scope: !820, inlinedAt: !790)
!830 = !DILocation(line: 252, column: 85, scope: !820, inlinedAt: !790)
!831 = !DILocation(line: 252, column: 9, scope: !820, inlinedAt: !790)
!832 = !DILocation(line: 253, column: 9, scope: !820, inlinedAt: !790)
!833 = !DILocation(line: 256, column: 29, scope: !820, inlinedAt: !790)
!834 = !DILocation(line: 256, column: 43, scope: !820, inlinedAt: !790)
!835 = !{!415, !417, i64 15}
!836 = !DILocation(line: 258, column: 9, scope: !820, inlinedAt: !790)
!837 = !DILocation(line: 260, column: 29, scope: !820, inlinedAt: !790)
!838 = !DILocation(line: 260, column: 43, scope: !820, inlinedAt: !790)
!839 = !DILocation(line: 262, column: 9, scope: !820, inlinedAt: !790)
!840 = !DILocation(line: 265, column: 9, scope: !820, inlinedAt: !790)
!841 = !DILocation(line: 268, column: 9, scope: !820, inlinedAt: !790)
!842 = !DILocation(line: 271, column: 29, scope: !820, inlinedAt: !790)
!843 = !DILocation(line: 271, column: 43, scope: !820, inlinedAt: !790)
!844 = !DILocation(line: 272, column: 9, scope: !820, inlinedAt: !790)
!845 = !DILocation(line: 275, column: 9, scope: !820, inlinedAt: !790)
!846 = !DILocation(line: 278, column: 29, scope: !820, inlinedAt: !790)
!847 = !DILocation(line: 278, column: 43, scope: !820, inlinedAt: !790)
!848 = !DILocation(line: 279, column: 9, scope: !820, inlinedAt: !790)
!849 = !DILocation(line: 283, column: 20, scope: !778, inlinedAt: !790)
!850 = !DILocation(line: 283, column: 5, scope: !778, inlinedAt: !790)
!851 = !DILocation(line: 284, column: 47, scope: !778, inlinedAt: !790)
!852 = !DILocation(line: 284, column: 74, scope: !778, inlinedAt: !790)
!853 = !DILocation(line: 284, column: 12, scope: !854, inlinedAt: !790)
!854 = !DILexicalBlockFile(scope: !778, file: !3, discriminator: 1)
!855 = !DILocation(line: 284, column: 5, scope: !778, inlinedAt: !790)
!856 = !DILocation(line: 285, column: 1, scope: !778, inlinedAt: !790)
!857 = !DILocation(line: 2087, column: 5, scope: !791)
!858 = !DILocation(line: 2088, column: 9, scope: !730)
!859 = !DILocation(line: 2090, column: 51, scope: !728)
!860 = !DILocation(line: 2090, column: 31, scope: !728)
!861 = !DILocation(line: 2090, column: 24, scope: !728)
!862 = !DILocation(line: 2091, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !728, file: !3, line: 2091, column: 17)
!864 = !DILocation(line: 2091, column: 17, scope: !728)
!865 = !DILocation(line: 2090, column: 59, scope: !728)
!866 = !DILocation(line: 2092, column: 97, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !3, line: 2091, column: 24)
!868 = !{!800, !417, i64 12}
!869 = !DILocation(line: 2092, column: 17, scope: !867)
!870 = !DILocation(line: 2099, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !729, file: !3, line: 2099, column: 17)
!872 = !DILocation(line: 2099, column: 17, scope: !729)
!873 = !DILocation(line: 2100, column: 40, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !3, line: 2099, column: 39)
!875 = !DILocalVariable(name: "addr", arg: 1, scope: !876, file: !3, line: 1929, type: !736)
!876 = distinct !DISubprogram(name: "hfp_disconnect_channel", scope: !3, file: !3, line: 1929, type: !877, isLocal: true, isDefinition: true, scopeLine: 1930, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !736}
!879 = !{!875, !880}
!880 = !DILocalVariable(name: "conn", scope: !876, file: !3, line: 1931, type: !355)
!881 = !DILocation(line: 1929, column: 46, scope: !876, inlinedAt: !882)
!882 = distinct !DILocation(line: 2100, column: 17, scope: !874)
!883 = !DILocation(line: 1931, column: 23, scope: !876, inlinedAt: !882)
!884 = !DILocation(line: 1931, column: 16, scope: !876, inlinedAt: !882)
!885 = !DILocation(line: 1933, column: 9, scope: !886, inlinedAt: !882)
!886 = distinct !DILexicalBlock(scope: !876, file: !3, line: 1933, column: 9)
!887 = !DILocation(line: 1933, column: 9, scope: !876, inlinedAt: !882)
!888 = !DILocation(line: 1934, column: 56, scope: !889, inlinedAt: !882)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1933, column: 15)
!890 = !DILocation(line: 1934, column: 9, scope: !889, inlinedAt: !882)
!891 = !DILocation(line: 1935, column: 5, scope: !889, inlinedAt: !882)
!892 = !DILocation(line: 2104, column: 17, scope: !776)
!893 = !DILocation(line: 2104, column: 17, scope: !729)
!894 = !DILocation(line: 2105, column: 47, scope: !775)
!895 = !DILocation(line: 2105, column: 69, scope: !775)
!896 = !DILocation(line: 446, column: 44, scope: !764, inlinedAt: !774)
!897 = !DILocation(line: 446, column: 74, scope: !764, inlinedAt: !774)
!898 = !DILocation(line: 449, column: 5, scope: !764, inlinedAt: !774)
!899 = !DILocation(line: 451, column: 23, scope: !764, inlinedAt: !774)
!900 = !DILocation(line: 451, column: 16, scope: !764, inlinedAt: !774)
!901 = !DILocation(line: 452, column: 10, scope: !902, inlinedAt: !774)
!902 = distinct !DILexicalBlock(scope: !764, file: !3, line: 452, column: 9)
!903 = !DILocation(line: 452, column: 9, scope: !764, inlinedAt: !774)
!904 = !DILocation(line: 455, column: 5, scope: !764, inlinedAt: !774)
!905 = !DILocalVariable(name: "conn", arg: 1, scope: !906, file: !3, line: 104, type: !355)
!906 = distinct !DISubprogram(name: "check_support_feature_ag", scope: !3, file: !3, line: 104, type: !907, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !910)
!907 = !DISubroutineType(types: !908)
!908 = !{!244, !355, !909}
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "FEATURE_AG", file: !23, line: 43, baseType: !110)
!910 = !{!905, !911}
!911 = !DILocalVariable(name: "feature", arg: 2, scope: !906, file: !3, line: 104, type: !909)
!912 = !DILocation(line: 104, column: 47, scope: !906, inlinedAt: !913)
!913 = distinct !DILocation(line: 456, column: 10, scope: !914, inlinedAt: !774)
!914 = distinct !DILexicalBlock(scope: !764, file: !3, line: 456, column: 9)
!915 = !DILocation(line: 104, column: 65, scope: !906, inlinedAt: !913)
!916 = !DILocation(line: 106, column: 33, scope: !906, inlinedAt: !913)
!917 = !{!415, !420, i64 8}
!918 = !DILocation(line: 456, column: 10, scope: !914, inlinedAt: !774)
!919 = !DILocation(line: 456, column: 9, scope: !764, inlinedAt: !774)
!920 = !DILocation(line: 459, column: 5, scope: !764, inlinedAt: !774)
!921 = !DILocation(line: 460, column: 5, scope: !764, inlinedAt: !774)
!922 = !DILocation(line: 463, column: 9, scope: !923, inlinedAt: !774)
!923 = distinct !DILexicalBlock(scope: !764, file: !3, line: 460, column: 22)
!924 = !DILocation(line: 469, column: 9, scope: !923, inlinedAt: !774)
!925 = !DILocation(line: 472, column: 9, scope: !923, inlinedAt: !774)
!926 = !DILocation(line: 477, column: 9, scope: !923, inlinedAt: !774)
!927 = !DILocation(line: 480, column: 9, scope: !923, inlinedAt: !774)
!928 = !DILocation(line: 482, column: 27, scope: !764, inlinedAt: !774)
!929 = !DILocation(line: 482, column: 47, scope: !764, inlinedAt: !774)
!930 = !DILocation(line: 482, column: 74, scope: !764, inlinedAt: !774)
!931 = !DILocation(line: 482, column: 12, scope: !932, inlinedAt: !774)
!932 = !DILexicalBlockFile(scope: !764, file: !3, discriminator: 1)
!933 = !DILocation(line: 482, column: 5, scope: !764, inlinedAt: !774)
!934 = !DILocation(line: 483, column: 1, scope: !764, inlinedAt: !774)
!935 = !DILocation(line: 2106, column: 13, scope: !775)
!936 = !DILocation(line: 2109, column: 17, scope: !762)
!937 = !DILocation(line: 2109, column: 17, scope: !729)
!938 = !DILocation(line: 2110, column: 44, scope: !761)
!939 = !DILocation(line: 2110, column: 66, scope: !761)
!940 = !DILocation(line: 428, column: 41, scope: !749, inlinedAt: !760)
!941 = !DILocation(line: 428, column: 52, scope: !749, inlinedAt: !760)
!942 = !DILocation(line: 431, column: 5, scope: !749, inlinedAt: !760)
!943 = !DILocation(line: 432, column: 23, scope: !749, inlinedAt: !760)
!944 = !DILocation(line: 432, column: 16, scope: !749, inlinedAt: !760)
!945 = !DILocation(line: 434, column: 10, scope: !946, inlinedAt: !760)
!946 = distinct !DILexicalBlock(scope: !749, file: !3, line: 434, column: 9)
!947 = !DILocation(line: 434, column: 9, scope: !749, inlinedAt: !760)
!948 = !DILocation(line: 437, column: 5, scope: !749, inlinedAt: !760)
!949 = !DILocation(line: 438, column: 5, scope: !749, inlinedAt: !760)
!950 = !DILocation(line: 439, column: 5, scope: !749, inlinedAt: !760)
!951 = !DILocation(line: 439, column: 15, scope: !749, inlinedAt: !760)
!952 = !DILocation(line: 442, column: 47, scope: !749, inlinedAt: !760)
!953 = !DILocation(line: 442, column: 74, scope: !749, inlinedAt: !760)
!954 = !DILocation(line: 442, column: 12, scope: !955, inlinedAt: !760)
!955 = !DILexicalBlockFile(scope: !749, file: !3, discriminator: 1)
!956 = !DILocation(line: 442, column: 5, scope: !749, inlinedAt: !760)
!957 = !DILocation(line: 443, column: 1, scope: !749, inlinedAt: !760)
!958 = !DILocation(line: 2111, column: 13, scope: !761)
!959 = !DILocation(line: 2114, column: 44, scope: !729)
!960 = !DILocation(line: 2114, column: 66, scope: !729)
!961 = !DILocation(line: 2114, column: 58, scope: !729)
!962 = !DILocation(line: 2114, column: 85, scope: !729)
!963 = !DILocation(line: 401, column: 45, scope: !733, inlinedAt: !747)
!964 = !DILocation(line: 401, column: 55, scope: !733, inlinedAt: !747)
!965 = !DILocation(line: 401, column: 69, scope: !733, inlinedAt: !747)
!966 = !DILocation(line: 403, column: 9, scope: !733, inlinedAt: !747)
!967 = !DILocation(line: 404, column: 5, scope: !733, inlinedAt: !747)
!968 = !DILocation(line: 405, column: 23, scope: !733, inlinedAt: !747)
!969 = !DILocation(line: 405, column: 16, scope: !733, inlinedAt: !747)
!970 = !DILocation(line: 406, column: 10, scope: !971, inlinedAt: !747)
!971 = distinct !DILexicalBlock(scope: !733, file: !3, line: 406, column: 9)
!972 = !DILocation(line: 406, column: 9, scope: !733, inlinedAt: !747)
!973 = !DILocation(line: 410, column: 5, scope: !733, inlinedAt: !747)
!974 = !DILocation(line: 411, column: 5, scope: !733, inlinedAt: !747)
!975 = !DILocation(line: 413, column: 21, scope: !976, inlinedAt: !747)
!976 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 1)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 413, column: 5)
!978 = distinct !DILexicalBlock(scope: !733, file: !3, line: 413, column: 5)
!979 = !DILocation(line: 413, column: 19, scope: !976, inlinedAt: !747)
!980 = !DILocation(line: 413, column: 5, scope: !981, inlinedAt: !747)
!981 = !DILexicalBlockFile(scope: !978, file: !3, discriminator: 1)
!982 = !DILocation(line: 414, column: 25, scope: !983, inlinedAt: !747)
!983 = distinct !DILexicalBlock(scope: !977, file: !3, line: 413, column: 31)
!984 = !DILocation(line: 414, column: 23, scope: !983, inlinedAt: !747)
!985 = !DILocation(line: 417, column: 14, scope: !733, inlinedAt: !747)
!986 = !DILocation(line: 417, column: 5, scope: !733, inlinedAt: !747)
!987 = !DILocation(line: 417, column: 21, scope: !733, inlinedAt: !747)
!988 = !DILocation(line: 418, column: 14, scope: !733, inlinedAt: !747)
!989 = !DILocation(line: 418, column: 5, scope: !733, inlinedAt: !747)
!990 = !DILocation(line: 418, column: 21, scope: !733, inlinedAt: !747)
!991 = !DILocation(line: 420, column: 47, scope: !733, inlinedAt: !747)
!992 = !DILocation(line: 420, column: 74, scope: !733, inlinedAt: !747)
!993 = !DILocation(line: 420, column: 12, scope: !994, inlinedAt: !747)
!994 = !DILexicalBlockFile(scope: !733, file: !3, discriminator: 1)
!995 = !DILocation(line: 420, column: 5, scope: !733, inlinedAt: !747)
!996 = !DILocation(line: 421, column: 1, scope: !733, inlinedAt: !747)
!997 = !DILocation(line: 2115, column: 13, scope: !729)
!998 = !DILocation(line: 2117, column: 49, scope: !729)
!999 = !DILocalVariable(name: "addr", arg: 1, scope: !1000, file: !3, line: 376, type: !736)
!1000 = distinct !DISubprogram(name: "user_hfp_speak_gain_control", scope: !3, file: !3, line: 376, type: !1001, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!266, !736, !716, !244}
!1003 = !{!999, !1004, !1005, !1006, !1007}
!1004 = !DILocalVariable(name: "mode", arg: 2, scope: !1000, file: !3, line: 376, type: !716)
!1005 = !DILocalVariable(name: "para", arg: 3, scope: !1000, file: !3, line: 376, type: !244)
!1006 = !DILocalVariable(name: "err", scope: !1000, file: !3, line: 378, type: !266)
!1007 = !DILocalVariable(name: "conn", scope: !1000, file: !3, line: 379, type: !355)
!1008 = !DILocation(line: 376, column: 50, scope: !1000, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 2117, column: 21, scope: !729)
!1010 = !DILocation(line: 376, column: 74, scope: !1000, inlinedAt: !1009)
!1011 = !DILocation(line: 376, column: 83, scope: !1000, inlinedAt: !1009)
!1012 = !DILocation(line: 379, column: 23, scope: !1000, inlinedAt: !1009)
!1013 = !DILocation(line: 379, column: 16, scope: !1000, inlinedAt: !1009)
!1014 = !DILocalVariable(name: "conn", arg: 1, scope: !1015, file: !3, line: 109, type: !355)
!1015 = distinct !DISubprogram(name: "is_hfp_connect_finish", scope: !3, file: !3, line: 109, type: !1016, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!349, !355}
!1018 = !{!1014, !1019}
!1019 = !DILocalVariable(name: "ret", scope: !1015, file: !3, line: 111, type: !244)
!1020 = !DILocation(line: 109, column: 46, scope: !1015, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 380, column: 10, scope: !1022, inlinedAt: !1009)
!1022 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 380, column: 9)
!1023 = !DILocation(line: 111, column: 35, scope: !1015, inlinedAt: !1021)
!1024 = !DILocation(line: 111, column: 62, scope: !1015, inlinedAt: !1021)
!1025 = !DILocation(line: 111, column: 51, scope: !1015, inlinedAt: !1021)
!1026 = !DILocation(line: 111, column: 49, scope: !1015, inlinedAt: !1021)
!1027 = !DILocation(line: 380, column: 9, scope: !1000, inlinedAt: !1009)
!1028 = !DILocation(line: 2117, column: 90, scope: !729)
!1029 = !DILocation(line: 2117, column: 71, scope: !729)
!1030 = !DILocation(line: 383, column: 54, scope: !1000, inlinedAt: !1009)
!1031 = !DILocation(line: 383, column: 11, scope: !1000, inlinedAt: !1009)
!1032 = !DILocation(line: 378, column: 9, scope: !1000, inlinedAt: !1009)
!1033 = !DILocation(line: 384, column: 14, scope: !1034, inlinedAt: !1009)
!1034 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 384, column: 9)
!1035 = !DILocation(line: 384, column: 33, scope: !1034, inlinedAt: !1009)
!1036 = !DILocation(line: 384, column: 36, scope: !1037, inlinedAt: !1009)
!1037 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 1)
!1038 = !DILocation(line: 384, column: 52, scope: !1037, inlinedAt: !1009)
!1039 = !{!1040, !421, i64 0}
!1040 = !{!"user_interface_handler", !421, i64 0, !421, i64 4, !421, i64 8, !421, i64 12, !421, i64 16, !421, i64 20, !421, i64 24, !421, i64 28, !421, i64 32, !421, i64 36, !421, i64 40, !421, i64 44, !421, i64 48, !421, i64 52, !421, i64 56}
!1041 = !DILocation(line: 384, column: 9, scope: !1042, inlinedAt: !1009)
!1042 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 1)
!1043 = !DILocation(line: 385, column: 49, scope: !1044, inlinedAt: !1009)
!1044 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 384, column: 77)
!1045 = !DILocation(line: 386, column: 69, scope: !1044, inlinedAt: !1009)
!1046 = !DILocation(line: 385, column: 9, scope: !1044, inlinedAt: !1009)
!1047 = !DILocation(line: 387, column: 5, scope: !1044, inlinedAt: !1009)
!1048 = !DILocation(line: 2120, column: 35, scope: !729)
!1049 = !DILocalVariable(name: "addr", arg: 1, scope: !1050, file: !3, line: 1922, type: !736)
!1050 = distinct !DISubprogram(name: "hfp_clear_siri_status", scope: !3, file: !3, line: 1922, type: !877, isLocal: true, isDefinition: true, scopeLine: 1923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1051)
!1051 = !{!1049, !1052}
!1052 = !DILocalVariable(name: "conn", scope: !1050, file: !3, line: 1924, type: !355)
!1053 = !DILocation(line: 1922, column: 45, scope: !1050, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 2120, column: 13, scope: !729)
!1055 = !DILocation(line: 1924, column: 23, scope: !1050, inlinedAt: !1054)
!1056 = !DILocation(line: 1924, column: 16, scope: !1050, inlinedAt: !1054)
!1057 = !DILocation(line: 1925, column: 9, scope: !1058, inlinedAt: !1054)
!1058 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 1925, column: 9)
!1059 = !DILocation(line: 1925, column: 9, scope: !1050, inlinedAt: !1054)
!1060 = !DILocation(line: 1926, column: 29, scope: !1061, inlinedAt: !1054)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 1925, column: 15)
!1062 = !DILocation(line: 1926, column: 45, scope: !1061, inlinedAt: !1054)
!1063 = !DILocation(line: 1927, column: 5, scope: !1061, inlinedAt: !1054)
!1064 = !DILocation(line: 2124, column: 32, scope: !729)
!1065 = !DILocation(line: 2124, column: 13, scope: !729)
!1066 = !DILocation(line: 2125, column: 13, scope: !729)
!1067 = !DILocation(line: 2128, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !729, file: !3, line: 2128, column: 17)
!1069 = !DILocation(line: 2128, column: 17, scope: !729)
!1070 = !DILocation(line: 2129, column: 47, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 2128, column: 43)
!1072 = !DILocalVariable(name: "addr", arg: 1, scope: !1073, file: !3, line: 551, type: !736)
!1073 = distinct !DISubprogram(name: "hfp_send_user_at_cmd", scope: !3, file: !3, line: 551, type: !734, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1074)
!1074 = !{!1072, !1075, !1076, !1077, !1078}
!1075 = !DILocalVariable(name: "data", arg: 2, scope: !1073, file: !3, line: 551, type: !248)
!1076 = !DILocalVariable(name: "len", arg: 3, scope: !1073, file: !3, line: 551, type: !244)
!1077 = !DILocalVariable(name: "i", scope: !1073, file: !3, line: 553, type: !266)
!1078 = !DILocalVariable(name: "conn", scope: !1073, file: !3, line: 554, type: !355)
!1079 = !DILocation(line: 551, column: 43, scope: !1073, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 2129, column: 26, scope: !1071)
!1081 = !DILocation(line: 551, column: 53, scope: !1073, inlinedAt: !1080)
!1082 = !DILocation(line: 551, column: 62, scope: !1073, inlinedAt: !1080)
!1083 = !DILocation(line: 553, column: 9, scope: !1073, inlinedAt: !1080)
!1084 = !DILocation(line: 554, column: 23, scope: !1073, inlinedAt: !1080)
!1085 = !DILocation(line: 554, column: 16, scope: !1073, inlinedAt: !1080)
!1086 = !DILocation(line: 555, column: 10, scope: !1087, inlinedAt: !1080)
!1087 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 555, column: 9)
!1088 = !DILocation(line: 555, column: 9, scope: !1073, inlinedAt: !1080)
!1089 = !DILocation(line: 2129, column: 87, scope: !1071)
!1090 = !DILocation(line: 2129, column: 69, scope: !1071)
!1091 = !DILocation(line: 558, column: 47, scope: !1073, inlinedAt: !1080)
!1092 = !DILocation(line: 558, column: 72, scope: !1073, inlinedAt: !1080)
!1093 = !DILocation(line: 558, column: 12, scope: !1073, inlinedAt: !1080)
!1094 = !DILocation(line: 558, column: 5, scope: !1073, inlinedAt: !1080)
!1095 = !DILocation(line: 2137, column: 1, scope: !701)
!1096 = distinct !DISubprogram(name: "__hfp_conn_for_addr", scope: !3, file: !3, line: 60, type: !1097, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!355, !736}
!1099 = !{!1100, !1101}
!1100 = !DILocalVariable(name: "addr", arg: 1, scope: !1096, file: !3, line: 60, type: !736)
!1101 = !DILocalVariable(name: "conn", scope: !1096, file: !3, line: 62, type: !355)
!1102 = !DILocation(line: 60, column: 49, scope: !1096)
!1103 = !DILocation(line: 62, column: 16, scope: !1096)
!1104 = !DILocation(line: 63, column: 5, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 63, column: 5)
!1106 = !DILocation(line: 63, column: 5, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1105, file: !3, discriminator: 1)
!1108 = !DILocation(line: 64, column: 21, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 64, column: 13)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 63, column: 34)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 63, column: 5)
!1112 = !DILocation(line: 64, column: 14, scope: !1109)
!1113 = !DILocation(line: 64, column: 57, scope: !1109)
!1114 = !DILocation(line: 64, column: 80, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 1)
!1116 = !DILocation(line: 64, column: 60, scope: !1115)
!1117 = !DILocation(line: 64, column: 13, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1110, file: !3, discriminator: 1)
!1119 = !DILocation(line: 63, column: 5, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1111, file: !3, discriminator: 2)
!1121 = !DILocation(line: 63, column: 5, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1111, file: !3, discriminator: 1)
!1123 = distinct !{!1123, !1104, !1124}
!1124 = !DILocation(line: 67, column: 5, scope: !1105)
!1125 = !DILocation(line: 69, column: 1, scope: !1096)
!1126 = distinct !DISubprogram(name: "send_battery_level", scope: !3, file: !3, line: 487, type: !1127, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!266, !736}
!1129 = !{!1130, !1131, !1132, !1133}
!1130 = !DILocalVariable(name: "addr", arg: 1, scope: !1126, file: !3, line: 487, type: !736)
!1131 = !DILocalVariable(name: "value", scope: !1126, file: !3, line: 489, type: !244)
!1132 = !DILocalVariable(name: "cmdbuf", scope: !1126, file: !3, line: 490, type: !786)
!1133 = !DILocalVariable(name: "conn", scope: !1126, file: !3, line: 492, type: !355)
!1134 = !DILocation(line: 487, column: 41, scope: !1126)
!1135 = !DILocation(line: 489, column: 8, scope: !1126)
!1136 = !DILocation(line: 490, column: 5, scope: !1126)
!1137 = !DILocation(line: 490, column: 10, scope: !1126)
!1138 = !DILocation(line: 491, column: 5, scope: !1126)
!1139 = !DILocation(line: 492, column: 23, scope: !1126)
!1140 = !DILocation(line: 492, column: 16, scope: !1126)
!1141 = !DILocation(line: 493, column: 10, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 493, column: 9)
!1143 = !DILocation(line: 493, column: 9, scope: !1126)
!1144 = !DILocation(line: 498, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 498, column: 9)
!1146 = !DILocation(line: 498, column: 77, scope: !1145)
!1147 = !DILocation(line: 498, column: 9, scope: !1126)
!1148 = !DILocation(line: 500, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 500, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 498, column: 99)
!1151 = !DILocation(line: 500, column: 13, scope: !1150)
!1152 = !DILocation(line: 501, column: 17, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 501, column: 17)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 500, column: 45)
!1155 = !DILocation(line: 501, column: 33, scope: !1153)
!1156 = !{!1040, !421, i64 56}
!1157 = !DILocation(line: 501, column: 17, scope: !1154)
!1158 = !DILocation(line: 502, column: 26, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 501, column: 58)
!1160 = !DILocation(line: 503, column: 21, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 503, column: 21)
!1162 = !DILocation(line: 503, column: 27, scope: !1161)
!1163 = !DILocation(line: 503, column: 21, scope: !1159)
!1164 = !DILocation(line: 506, column: 13, scope: !1159)
!1165 = !DILocation(line: 507, column: 13, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 507, column: 13)
!1167 = !DILocation(line: 507, column: 13, scope: !1154)
!1168 = !DILocation(line: 507, column: 13, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1166, file: !3, discriminator: 1)
!1170 = !DILocation(line: 508, column: 13, scope: !1154)
!1171 = !DILocation(line: 509, column: 23, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 509, column: 17)
!1173 = !DILocation(line: 509, column: 17, scope: !1154)
!1174 = !DILocation(line: 510, column: 17, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 509, column: 31)
!1176 = !DILocation(line: 510, column: 28, scope: !1175)
!1177 = !DILocation(line: 511, column: 17, scope: !1175)
!1178 = !DILocation(line: 511, column: 28, scope: !1175)
!1179 = !DILocation(line: 515, column: 13, scope: !1175)
!1180 = !DILocation(line: 515, column: 30, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1182, file: !3, discriminator: 1)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 515, column: 24)
!1183 = !DILocation(line: 515, column: 24, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1172, file: !3, discriminator: 1)
!1185 = !DILocation(line: 520, column: 37, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 519, column: 20)
!1187 = !DILocation(line: 520, column: 43, scope: !1186)
!1188 = !DILocation(line: 520, column: 17, scope: !1186)
!1189 = !DILocation(line: 520, column: 28, scope: !1186)
!1190 = !DILocation(line: 521, column: 37, scope: !1186)
!1191 = !DILocation(line: 525, column: 9, scope: !1154)
!1192 = !DILocation(line: 528, column: 13, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 528, column: 13)
!1194 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 526, column: 12)
!1195 = !DILocation(line: 528, column: 29, scope: !1193)
!1196 = !{!1040, !421, i64 12}
!1197 = !DILocation(line: 528, column: 13, scope: !1194)
!1198 = !DILocation(line: 529, column: 22, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 528, column: 52)
!1200 = !DILocation(line: 530, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 530, column: 17)
!1202 = !DILocation(line: 530, column: 23, scope: !1201)
!1203 = !DILocation(line: 530, column: 17, scope: !1199)
!1204 = !DILocation(line: 533, column: 9, scope: !1199)
!1205 = !DILocation(line: 534, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 534, column: 9)
!1207 = !DILocation(line: 534, column: 9, scope: !1194)
!1208 = !DILocation(line: 534, column: 9, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1206, file: !3, discriminator: 1)
!1210 = !DILocation(line: 535, column: 9, scope: !1194)
!1211 = !DILocation(line: 536, column: 28, scope: !1194)
!1212 = !DILocation(line: 539, column: 17, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 539, column: 9)
!1214 = !DILocation(line: 539, column: 37, scope: !1213)
!1215 = !{!415, !417, i64 14}
!1216 = !DILocation(line: 539, column: 14, scope: !1213)
!1217 = !DILocation(line: 539, column: 9, scope: !1126)
!1218 = !DILocation(line: 543, column: 52, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 543, column: 9)
!1220 = !DILocation(line: 543, column: 61, scope: !1219)
!1221 = !DILocation(line: 109, column: 46, scope: !1015, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 543, column: 64, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1219, file: !3, discriminator: 1)
!1224 = !DILocation(line: 111, column: 35, scope: !1015, inlinedAt: !1222)
!1225 = !DILocation(line: 111, column: 51, scope: !1015, inlinedAt: !1222)
!1226 = !DILocation(line: 111, column: 62, scope: !1015, inlinedAt: !1222)
!1227 = !DILocation(line: 111, column: 49, scope: !1015, inlinedAt: !1222)
!1228 = !DILocation(line: 543, column: 9, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1126, file: !3, discriminator: 1)
!1230 = !DILocation(line: 546, column: 48, scope: !1126)
!1231 = !DILocation(line: 548, column: 47, scope: !1126)
!1232 = !DILocation(line: 548, column: 74, scope: !1126)
!1233 = !DILocation(line: 548, column: 12, scope: !1229)
!1234 = !DILocation(line: 548, column: 5, scope: !1126)
!1235 = !DILocation(line: 549, column: 1, scope: !1126)
!1236 = distinct !DISubprogram(name: "hfp_send_bcc_cmd", scope: !3, file: !3, line: 2139, type: !1237, isLocal: false, isDefinition: true, scopeLine: 2140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!266, !248}
!1239 = !{!1240, !1241}
!1240 = !DILocalVariable(name: "addr", arg: 1, scope: !1236, file: !3, line: 2139, type: !248)
!1241 = !DILocalVariable(name: "hfp_io_str", scope: !1236, file: !3, line: 2141, type: !705)
!1242 = !DILocation(line: 2139, column: 26, scope: !1236)
!1243 = !DILocation(line: 2141, column: 5, scope: !1236)
!1244 = !DILocation(line: 2142, column: 5, scope: !1236)
!1245 = !DILocation(line: 2143, column: 16, scope: !1236)
!1246 = !DILocation(line: 2143, column: 22, scope: !1236)
!1247 = !DILocation(line: 2141, column: 20, scope: !1236)
!1248 = !DILocation(line: 2144, column: 12, scope: !1236)
!1249 = !DILocation(line: 2145, column: 1, scope: !1236)
!1250 = !DILocation(line: 2144, column: 5, scope: !1236)
!1251 = distinct !DISubprogram(name: "hfp_monitor_connect_create", scope: !3, file: !3, line: 2164, type: !508, isLocal: false, isDefinition: true, scopeLine: 2165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "channel", arg: 1, scope: !1251, file: !3, line: 2164, type: !240)
!1254 = !DILocalVariable(name: "packet", arg: 2, scope: !1251, file: !3, line: 2164, type: !248)
!1255 = !DILocalVariable(name: "size", arg: 3, scope: !1251, file: !3, line: 2164, type: !240)
!1256 = !DILocalVariable(name: "conn", scope: !1251, file: !3, line: 2166, type: !355)
!1257 = !DILocation(line: 2164, column: 37, scope: !1251)
!1258 = !DILocation(line: 2164, column: 50, scope: !1251)
!1259 = !DILocation(line: 2164, column: 62, scope: !1251)
!1260 = !DILocation(line: 2166, column: 16, scope: !1251)
!1261 = !DILocation(line: 2168, column: 5, scope: !1251)
!1262 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 2170, column: 12, scope: !1251)
!1264 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !1263)
!1265 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !1263)
!1266 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !1263)
!1267 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !1263)
!1268 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !1263)
!1269 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !1263)
!1270 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !1263)
!1271 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !1263)
!1272 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !1263)
!1273 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !1263)
!1274 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !1263)
!1275 = !DILocation(line: 2172, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 2172, column: 9)
!1277 = !DILocation(line: 2172, column: 25, scope: !1276)
!1278 = !{!1040, !421, i64 20}
!1279 = !DILocation(line: 2172, column: 9, scope: !1251)
!1280 = !DILocation(line: 2173, column: 49, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 2172, column: 50)
!1282 = !DILocation(line: 2173, column: 9, scope: !1281)
!1283 = !DILocation(line: 2174, column: 5, scope: !1281)
!1284 = !DILocation(line: 2175, column: 1, scope: !1251)
!1285 = distinct !DISubprogram(name: "hfp_channel_open", scope: !3, file: !3, line: 1863, type: !1286, isLocal: true, isDefinition: true, scopeLine: 1864, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !244, !240, !248, !240, !244}
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1289 = !DILocalVariable(name: "open_flag", arg: 1, scope: !1285, file: !3, line: 1863, type: !244)
!1290 = !DILocalVariable(name: "channel", arg: 2, scope: !1285, file: !3, line: 1863, type: !240)
!1291 = !DILocalVariable(name: "packet", arg: 3, scope: !1285, file: !3, line: 1863, type: !248)
!1292 = !DILocalVariable(name: "size", arg: 4, scope: !1285, file: !3, line: 1863, type: !240)
!1293 = !DILocalVariable(name: "conn_type", arg: 5, scope: !1285, file: !3, line: 1863, type: !244)
!1294 = !DILocalVariable(name: "addr", scope: !1285, file: !3, line: 1865, type: !303)
!1295 = !DILocalVariable(name: "conn", scope: !1285, file: !3, line: 1866, type: !355)
!1296 = !DILocation(line: 1863, column: 73, scope: !1285)
!1297 = !DILocation(line: 1865, column: 5, scope: !1285)
!1298 = !DILocation(line: 1865, column: 15, scope: !1285)
!1299 = !DILocation(line: 1868, column: 31, scope: !1285)
!1300 = !DILocation(line: 1868, column: 5, scope: !1285)
!1301 = !DILocation(line: 1870, column: 12, scope: !1285)
!1302 = !DILocation(line: 1866, column: 16, scope: !1285)
!1303 = !DILocation(line: 1871, column: 10, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1871, column: 9)
!1305 = !DILocation(line: 1871, column: 9, scope: !1285)
!1306 = !DILocation(line: 1872, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1871, column: 16)
!1308 = !DILocation(line: 1875, column: 16, scope: !1307)
!1309 = !DILocation(line: 1877, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1877, column: 9)
!1311 = !DILocation(line: 1877, column: 9, scope: !1285)
!1312 = !DILocation(line: 1878, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1877, column: 15)
!1314 = !DILocation(line: 1879, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1878, column: 24)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1878, column: 13)
!1317 = !DILocation(line: 1881, column: 9, scope: !1315)
!1318 = !DILocation(line: 1882, column: 33, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1881, column: 16)
!1320 = !DILocation(line: 1882, column: 41, scope: !1319)
!1321 = !DILocation(line: 1883, column: 53, scope: !1319)
!1322 = !DILocation(line: 1883, column: 33, scope: !1319)
!1323 = !DILocation(line: 1883, column: 51, scope: !1319)
!1324 = !DILocation(line: 1885, column: 33, scope: !1319)
!1325 = !DILocation(line: 1885, column: 47, scope: !1319)
!1326 = !DILocation(line: 1893, column: 1, scope: !1285)
!1327 = !DILocation(line: 1893, column: 1, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1285, file: !3, discriminator: 2)
!1329 = distinct !DISubprogram(name: "hfp_core_data_for_send", scope: !3, file: !3, line: 2177, type: !466, isLocal: false, isDefinition: true, scopeLine: 2178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1330)
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DILocalVariable(name: "packet", arg: 1, scope: !1329, file: !3, line: 2177, type: !248)
!1332 = !DILocalVariable(name: "size", arg: 2, scope: !1329, file: !3, line: 2177, type: !240)
!1333 = !DILocalVariable(name: "len", scope: !1329, file: !3, line: 2180, type: !244)
!1334 = !DILocalVariable(name: "conn", scope: !1329, file: !3, line: 2181, type: !355)
!1335 = !DILocation(line: 2177, column: 32, scope: !1329)
!1336 = !DILocation(line: 2177, column: 44, scope: !1329)
!1337 = !DILocation(line: 2180, column: 8, scope: !1329)
!1338 = !DILocation(line: 2152, column: 9, scope: !1339, inlinedAt: !1345)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 2152, column: 9)
!1340 = distinct !DISubprogram(name: "__hfp_conn_for_tws", scope: !3, file: !3, line: 2148, type: !1341, isLocal: true, isDefinition: true, scopeLine: 2149, isOptimized: true, unit: !2, variables: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!355}
!1343 = !{!1344}
!1344 = !DILocalVariable(name: "conn", scope: !1340, file: !3, line: 2150, type: !355)
!1345 = distinct !DILocation(line: 2181, column: 23, scope: !1329)
!1346 = !DILocation(line: 2152, column: 19, scope: !1339, inlinedAt: !1345)
!1347 = !DILocation(line: 2152, column: 9, scope: !1340, inlinedAt: !1345)
!1348 = !DILocation(line: 2156, column: 5, scope: !1349, inlinedAt: !1345)
!1349 = !DILexicalBlockFile(scope: !1350, file: !3, discriminator: 1)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 2156, column: 5)
!1351 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 2156, column: 5)
!1352 = !DILocation(line: 2156, column: 5, scope: !1351, inlinedAt: !1345)
!1353 = !DILocation(line: 2156, column: 5, scope: !1354, inlinedAt: !1345)
!1354 = !DILexicalBlockFile(scope: !1351, file: !3, discriminator: 1)
!1355 = !DILocation(line: 2157, column: 33, scope: !1356, inlinedAt: !1345)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 2157, column: 13)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 2156, column: 34)
!1358 = !DILocation(line: 2157, column: 13, scope: !1356, inlinedAt: !1345)
!1359 = !DILocation(line: 2157, column: 13, scope: !1357, inlinedAt: !1345)
!1360 = !DILocation(line: 2156, column: 5, scope: !1361, inlinedAt: !1345)
!1361 = !DILexicalBlockFile(scope: !1350, file: !3, discriminator: 2)
!1362 = !DILocation(line: 2150, column: 16, scope: !1340, inlinedAt: !1345)
!1363 = distinct !{!1363, !1364, !1365}
!1364 = !DILocation(line: 2156, column: 5, scope: !1351)
!1365 = !DILocation(line: 2160, column: 5, scope: !1351)
!1366 = !DILocation(line: 2189, column: 5, scope: !1329)
!1367 = !DILocation(line: 2191, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 2191, column: 5)
!1369 = !DILocation(line: 2191, column: 5, scope: !1329)
!1370 = !DILocation(line: 2191, column: 5, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1368, file: !3, discriminator: 1)
!1372 = !DILocation(line: 2192, column: 5, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 2192, column: 5)
!1374 = !DILocation(line: 2192, column: 5, scope: !1329)
!1375 = !DILocation(line: 104, column: 65, scope: !906, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 2192, column: 5, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1373, file: !3, discriminator: 1)
!1378 = !DILocation(line: 106, column: 33, scope: !906, inlinedAt: !1376)
!1379 = !DILocation(line: 106, column: 12, scope: !906, inlinedAt: !1376)
!1380 = !DILocation(line: 2192, column: 5, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1373, file: !3, discriminator: 2)
!1382 = !DILocation(line: 2192, column: 5, scope: !1377)
!1383 = !DILocation(line: 2193, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 2193, column: 5)
!1385 = !DILocation(line: 2193, column: 5, scope: !1329)
!1386 = !DILocation(line: 2193, column: 5, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1384, file: !3, discriminator: 1)
!1388 = !DILocation(line: 2194, column: 5, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 2194, column: 5)
!1390 = !DILocation(line: 2194, column: 5, scope: !1329)
!1391 = !DILocation(line: 2194, column: 5, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1389, file: !3, discriminator: 1)
!1393 = !DILocation(line: 2205, column: 1, scope: !1329)
!1394 = distinct !DISubprogram(name: "hfp_core_data_for_set", scope: !3, file: !3, line: 2216, type: !454, isLocal: false, isDefinition: true, scopeLine: 2217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1395)
!1395 = !{!1396, !1397, !1398, !1399}
!1396 = !DILocalVariable(name: "packet", arg: 1, scope: !1394, file: !3, line: 2216, type: !248)
!1397 = !DILocalVariable(name: "size", arg: 2, scope: !1394, file: !3, line: 2216, type: !240)
!1398 = !DILocalVariable(name: "len", scope: !1394, file: !3, line: 2218, type: !244)
!1399 = !DILocalVariable(name: "conn", scope: !1394, file: !3, line: 2219, type: !355)
!1400 = !DILocation(line: 2216, column: 32, scope: !1394)
!1401 = !DILocation(line: 2216, column: 44, scope: !1394)
!1402 = !DILocation(line: 2152, column: 9, scope: !1339, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 2219, column: 23, scope: !1394)
!1404 = !DILocation(line: 2152, column: 19, scope: !1339, inlinedAt: !1403)
!1405 = !DILocation(line: 2152, column: 9, scope: !1340, inlinedAt: !1403)
!1406 = !DILocation(line: 2156, column: 5, scope: !1349, inlinedAt: !1403)
!1407 = !DILocation(line: 2156, column: 5, scope: !1351, inlinedAt: !1403)
!1408 = !DILocation(line: 2156, column: 5, scope: !1354, inlinedAt: !1403)
!1409 = !DILocation(line: 2157, column: 33, scope: !1356, inlinedAt: !1403)
!1410 = !DILocation(line: 2157, column: 13, scope: !1356, inlinedAt: !1403)
!1411 = !DILocation(line: 2157, column: 13, scope: !1357, inlinedAt: !1403)
!1412 = !DILocation(line: 2156, column: 5, scope: !1361, inlinedAt: !1403)
!1413 = !DILocation(line: 2150, column: 16, scope: !1340, inlinedAt: !1403)
!1414 = !DILocation(line: 2218, column: 8, scope: !1394)
!1415 = !DILocation(line: 2227, column: 5, scope: !1394)
!1416 = !DILocalVariable(name: "i", scope: !1417, file: !3, line: 2209, type: !249)
!1417 = distinct !DISubprogram(name: "reset_indicator_straddr", scope: !3, file: !3, line: 2207, type: !1418, isLocal: true, isDefinition: true, scopeLine: 2208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !355}
!1420 = !{!1421, !1416}
!1421 = !DILocalVariable(name: "conn", arg: 1, scope: !1417, file: !3, line: 2207, type: !355)
!1422 = !DILocation(line: 2209, column: 9, scope: !1417, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 2228, column: 5, scope: !1394)
!1424 = !DILocation(line: 2210, column: 5, scope: !1425, inlinedAt: !1423)
!1425 = !DILexicalBlockFile(scope: !1426, file: !3, discriminator: 1)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 2210, column: 5)
!1427 = !DILocation(line: 2211, column: 107, scope: !1428, inlinedAt: !1423)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 2210, column: 45)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 2210, column: 5)
!1430 = !{!1431, !417, i64 4}
!1431 = !{!"__INDICATOR", !421, i64 0, !417, i64 4, !417, i64 5, !417, i64 6}
!1432 = !DILocation(line: 2211, column: 57, scope: !1428, inlinedAt: !1423)
!1433 = !DILocation(line: 2211, column: 50, scope: !1428, inlinedAt: !1423)
!1434 = !DILocation(line: 2211, column: 43, scope: !1428, inlinedAt: !1423)
!1435 = !DILocation(line: 2211, column: 48, scope: !1428, inlinedAt: !1423)
!1436 = !{!1431, !421, i64 0}
!1437 = !DILocation(line: 2212, column: 105, scope: !1428, inlinedAt: !1423)
!1438 = !DILocation(line: 2212, column: 56, scope: !1428, inlinedAt: !1423)
!1439 = !DILocation(line: 2212, column: 49, scope: !1428, inlinedAt: !1423)
!1440 = !DILocation(line: 2212, column: 42, scope: !1428, inlinedAt: !1423)
!1441 = !DILocation(line: 2212, column: 47, scope: !1428, inlinedAt: !1423)
!1442 = !DILocation(line: 2210, column: 41, scope: !1443, inlinedAt: !1423)
!1443 = !DILexicalBlockFile(scope: !1429, file: !3, discriminator: 2)
!1444 = !DILocation(line: 2210, column: 19, scope: !1445, inlinedAt: !1423)
!1445 = !DILexicalBlockFile(scope: !1429, file: !3, discriminator: 1)
!1446 = distinct !{!1446, !1447, !1448}
!1447 = !DILocation(line: 2210, column: 5, scope: !1426)
!1448 = !DILocation(line: 2213, column: 5, scope: !1426)
!1449 = !DILocation(line: 2230, column: 9, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 2230, column: 9)
!1451 = !DILocation(line: 2230, column: 25, scope: !1450)
!1452 = !DILocation(line: 2230, column: 9, scope: !1394)
!1453 = !DILocation(line: 104, column: 65, scope: !906, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 2231, column: 103, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 2230, column: 50)
!1456 = !DILocation(line: 106, column: 33, scope: !906, inlinedAt: !1454)
!1457 = !DILocation(line: 106, column: 12, scope: !906, inlinedAt: !1454)
!1458 = !DILocation(line: 2231, column: 9, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1455, file: !3, discriminator: 1)
!1460 = !DILocation(line: 2232, column: 9, scope: !1455)
!1461 = !DILocation(line: 2232, column: 25, scope: !1455)
!1462 = !DILocation(line: 2232, column: 119, scope: !1455)
!1463 = !DILocation(line: 2233, column: 34, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 2233, column: 13)
!1465 = !DILocation(line: 2233, column: 53, scope: !1464)
!1466 = !DILocation(line: 2234, column: 13, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 2233, column: 123)
!1468 = !DILocation(line: 2234, column: 29, scope: !1467)
!1469 = !DILocation(line: 2234, column: 161, scope: !1467)
!1470 = !DILocation(line: 2234, column: 118, scope: !1467)
!1471 = !DILocation(line: 2234, column: 13, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1467, file: !3, discriminator: 1)
!1473 = !DILocation(line: 2235, column: 9, scope: !1467)
!1474 = !DILocation(line: 2236, column: 33, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 2236, column: 13)
!1476 = !DILocation(line: 2236, column: 13, scope: !1475)
!1477 = !DILocation(line: 2236, column: 13, scope: !1455)
!1478 = !DILocation(line: 2237, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 2236, column: 53)
!1480 = !DILocation(line: 2237, column: 29, scope: !1479)
!1481 = !DILocation(line: 2237, column: 110, scope: !1479)
!1482 = !DILocation(line: 2238, column: 9, scope: !1479)
!1483 = !DILocation(line: 2240, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 2240, column: 9)
!1485 = !DILocation(line: 2240, column: 9, scope: !1455)
!1486 = !DILocation(line: 2240, column: 9, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1484, file: !3, discriminator: 1)
!1488 = !DILocation(line: 2241, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 2241, column: 9)
!1490 = !DILocation(line: 2241, column: 9, scope: !1455)
!1491 = !DILocation(line: 104, column: 65, scope: !906, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 2241, column: 9, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1489, file: !3, discriminator: 1)
!1494 = !DILocation(line: 106, column: 33, scope: !906, inlinedAt: !1492)
!1495 = !DILocation(line: 106, column: 12, scope: !906, inlinedAt: !1492)
!1496 = !DILocation(line: 2241, column: 9, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1489, file: !3, discriminator: 2)
!1498 = !DILocation(line: 2241, column: 9, scope: !1493)
!1499 = !DILocation(line: 2242, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 2242, column: 9)
!1501 = !DILocation(line: 2242, column: 9, scope: !1455)
!1502 = !DILocation(line: 2242, column: 9, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1500, file: !3, discriminator: 1)
!1504 = !DILocation(line: 2243, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 2243, column: 9)
!1506 = !DILocation(line: 2243, column: 9, scope: !1455)
!1507 = !DILocation(line: 2243, column: 9, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1505, file: !3, discriminator: 1)
!1509 = !DILocation(line: 2251, column: 1, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1394, file: !3, discriminator: 2)
!1511 = distinct !DISubprogram(name: "hfp_speak_gain_control", scope: !3, file: !3, line: 287, type: !1512, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!266, !240, !716, !244}
!1514 = !{!1515, !1516, !1517, !1518, !1519}
!1515 = !DILocalVariable(name: "channel", arg: 1, scope: !1511, file: !3, line: 287, type: !240)
!1516 = !DILocalVariable(name: "mode", arg: 2, scope: !1511, file: !3, line: 287, type: !716)
!1517 = !DILocalVariable(name: "para", arg: 3, scope: !1511, file: !3, line: 287, type: !244)
!1518 = !DILocalVariable(name: "cmdbuf", scope: !1511, file: !3, line: 289, type: !786)
!1519 = !DILocalVariable(name: "conn", scope: !1511, file: !3, line: 291, type: !355)
!1520 = !DILocation(line: 287, column: 39, scope: !1511)
!1521 = !DILocation(line: 287, column: 66, scope: !1511)
!1522 = !DILocation(line: 287, column: 75, scope: !1511)
!1523 = !DILocation(line: 289, column: 5, scope: !1511)
!1524 = !DILocation(line: 289, column: 10, scope: !1511)
!1525 = !DILocation(line: 290, column: 5, scope: !1511)
!1526 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 291, column: 23, scope: !1511)
!1528 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !1527)
!1529 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !1527)
!1530 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !1527)
!1531 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !1527)
!1532 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !1527)
!1533 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !1527)
!1534 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !1527)
!1535 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !1527)
!1536 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !1527)
!1537 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !1527)
!1538 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !1527)
!1539 = !DILocation(line: 291, column: 16, scope: !1511)
!1540 = !DILocation(line: 296, column: 5, scope: !1511)
!1541 = !DILocation(line: 298, column: 33, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 298, column: 13)
!1543 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 296, column: 19)
!1544 = !DILocation(line: 298, column: 48, scope: !1542)
!1545 = !DILocation(line: 298, column: 13, scope: !1543)
!1546 = !DILocation(line: 299, column: 48, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 298, column: 54)
!1548 = !DILocation(line: 300, column: 9, scope: !1547)
!1549 = !DILocation(line: 301, column: 48, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 300, column: 16)
!1551 = !DILocation(line: 305, column: 33, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 305, column: 13)
!1553 = !DILocation(line: 305, column: 13, scope: !1552)
!1554 = !DILocation(line: 305, column: 13, scope: !1543)
!1555 = !DILocation(line: 306, column: 47, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 305, column: 49)
!1557 = !DILocation(line: 307, column: 9, scope: !1556)
!1558 = !DILocation(line: 310, column: 18, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 310, column: 13)
!1560 = !DILocation(line: 310, column: 13, scope: !1543)
!1561 = !DILocation(line: 311, column: 48, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 310, column: 24)
!1563 = !DILocation(line: 312, column: 9, scope: !1562)
!1564 = !DILocation(line: 313, column: 48, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 312, column: 16)
!1566 = !DILocation(line: 318, column: 36, scope: !1543)
!1567 = !DILocation(line: 318, column: 9, scope: !1543)
!1568 = !DILocation(line: 323, column: 5, scope: !1511)
!1569 = !DILocation(line: 324, column: 38, scope: !1511)
!1570 = !DILocation(line: 324, column: 53, scope: !1511)
!1571 = !DILocation(line: 324, column: 17, scope: !1511)
!1572 = !DILocation(line: 324, column: 5, scope: !1511)
!1573 = !DILocation(line: 324, column: 15, scope: !1511)
!1574 = !DILocation(line: 325, column: 53, scope: !1511)
!1575 = !DILocation(line: 325, column: 17, scope: !1511)
!1576 = !DILocation(line: 325, column: 5, scope: !1511)
!1577 = !DILocation(line: 325, column: 15, scope: !1511)
!1578 = !DILocation(line: 326, column: 47, scope: !1511)
!1579 = !DILocation(line: 326, column: 74, scope: !1511)
!1580 = !DILocation(line: 326, column: 12, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 1)
!1582 = !DILocation(line: 326, column: 5, scope: !1511)
!1583 = !DILocation(line: 328, column: 1, scope: !1511)
!1584 = distinct !DISubprogram(name: "check_hfp_resend_data", scope: !3, file: !3, line: 2253, type: !1585, isLocal: false, isDefinition: true, scopeLine: 2254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!244}
!1587 = !{!1588}
!1588 = !DILocalVariable(name: "conn", scope: !1584, file: !3, line: 2255, type: !355)
!1589 = !DILocation(line: 2255, column: 16, scope: !1584)
!1590 = !DILocation(line: 2256, column: 9, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 2256, column: 9)
!1592 = !DILocation(line: 2256, column: 19, scope: !1591)
!1593 = !DILocation(line: 2256, column: 9, scope: !1584)
!1594 = !DILocation(line: 2260, column: 5, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1596, file: !3, discriminator: 1)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 2260, column: 5)
!1597 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 2260, column: 5)
!1598 = !DILocation(line: 2260, column: 5, scope: !1597)
!1599 = !DILocation(line: 2260, column: 5, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1597, file: !3, discriminator: 1)
!1601 = !DILocation(line: 2261, column: 33, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 2261, column: 13)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 2260, column: 34)
!1604 = !DILocation(line: 2261, column: 13, scope: !1602)
!1605 = !DILocation(line: 2261, column: 13, scope: !1603)
!1606 = !DILocation(line: 2262, column: 23, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 2262, column: 17)
!1608 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 2261, column: 41)
!1609 = !DILocation(line: 2262, column: 17, scope: !1607)
!1610 = !DILocation(line: 2262, column: 17, scope: !1608)
!1611 = !DILocation(line: 2260, column: 5, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1596, file: !3, discriminator: 2)
!1613 = distinct !{!1613, !1598, !1614}
!1614 = !DILocation(line: 2266, column: 5, scope: !1597)
!1615 = !DILocation(line: 2269, column: 1, scope: !1584)
!1616 = distinct !DISubprogram(name: "hfp_suspend", scope: !3, file: !3, line: 2032, type: !1617, isLocal: true, isDefinition: true, scopeLine: 2033, isOptimized: true, unit: !2, variables: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!266}
!1619 = !{}
!1620 = !DILocation(line: 2034, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 2034, column: 9)
!1622 = !DILocation(line: 2034, column: 19, scope: !1621)
!1623 = !DILocation(line: 2034, column: 9, scope: !1616)
!1624 = !DILocation(line: 2037, column: 16, scope: !1616)
!1625 = !DILocation(line: 2037, column: 31, scope: !1616)
!1626 = !DILocation(line: 2038, column: 5, scope: !1616)
!1627 = !DILocation(line: 2039, column: 1, scope: !1616)
!1628 = distinct !DISubprogram(name: "hfp_resume", scope: !3, file: !3, line: 2024, type: !1617, isLocal: true, isDefinition: true, scopeLine: 2025, isOptimized: true, unit: !2, variables: !1619)
!1629 = !DILocation(line: 2026, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 2026, column: 9)
!1631 = !DILocation(line: 2026, column: 19, scope: !1630)
!1632 = !DILocation(line: 2026, column: 9, scope: !1628)
!1633 = !DILocation(line: 2029, column: 16, scope: !1628)
!1634 = !DILocation(line: 2029, column: 31, scope: !1628)
!1635 = !DILocation(line: 2030, column: 5, scope: !1628)
!1636 = !DILocation(line: 2031, column: 1, scope: !1628)
!1637 = distinct !DISubprogram(name: "hfp_release", scope: !3, file: !3, line: 2007, type: !1617, isLocal: true, isDefinition: true, scopeLine: 2008, isOptimized: true, unit: !2, variables: !1638)
!1638 = !{!1639}
!1639 = !DILocalVariable(name: "conn", scope: !1637, file: !3, line: 2009, type: !355)
!1640 = !DILocation(line: 2009, column: 16, scope: !1637)
!1641 = !DILocation(line: 2010, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 2010, column: 9)
!1643 = !DILocation(line: 2010, column: 19, scope: !1642)
!1644 = !DILocation(line: 2010, column: 9, scope: !1637)
!1645 = !DILocation(line: 2013, column: 5, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1647, file: !3, discriminator: 1)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 2013, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 2013, column: 5)
!1649 = !DILocation(line: 2013, column: 5, scope: !1648)
!1650 = !DILocation(line: 2013, column: 5, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1648, file: !3, discriminator: 1)
!1652 = distinct !{!1652, !1649, !1653}
!1653 = !DILocation(line: 2017, column: 5, scope: !1648)
!1654 = !DILocation(line: 2014, column: 33, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 2014, column: 13)
!1656 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 2013, column: 34)
!1657 = !DILocation(line: 2014, column: 13, scope: !1655)
!1658 = !DILocation(line: 2013, column: 5, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1647, file: !3, discriminator: 2)
!1660 = !DILocation(line: 2014, column: 13, scope: !1656)
!1661 = !DILocation(line: 2018, column: 5, scope: !1637)
!1662 = !DILocation(line: 2019, column: 5, scope: !1637)
!1663 = !DILocation(line: 2019, column: 31, scope: !1637)
!1664 = !DILocation(line: 2020, column: 15, scope: !1637)
!1665 = !DILocation(line: 2021, column: 5, scope: !1637)
!1666 = !DILocation(line: 2022, column: 1, scope: !1637)
!1667 = distinct !DISubprogram(name: "__free_hfp_conn", scope: !3, file: !3, line: 1815, type: !1668, isLocal: true, isDefinition: true, scopeLine: 1816, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!266, !355, !244}
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DILocalVariable(name: "conn", arg: 1, scope: !1667, file: !3, line: 1815, type: !355)
!1672 = !DILocalVariable(name: "conn_type", arg: 2, scope: !1667, file: !3, line: 1815, type: !244)
!1673 = !DILocalVariable(name: "it", scope: !1667, file: !3, line: 1832, type: !226)
!1674 = !DILocalVariable(name: "temp_it", scope: !1675, file: !3, line: 1834, type: !226)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1833, column: 55)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1833, column: 5)
!1677 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1833, column: 5)
!1678 = !DILocation(line: 1817, column: 10, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1817, column: 9)
!1680 = !DILocation(line: 1817, column: 9, scope: !1667)
!1681 = !DILocation(line: 1820, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1820, column: 9)
!1683 = !DILocation(line: 1820, column: 25, scope: !1682)
!1684 = !DILocation(line: 1820, column: 9, scope: !1667)
!1685 = !DILocation(line: 1821, column: 49, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1820, column: 50)
!1687 = !DILocation(line: 1821, column: 9, scope: !1686)
!1688 = !DILocation(line: 1822, column: 5, scope: !1686)
!1689 = !DILocation(line: 1826, column: 25, scope: !1667)
!1690 = !DILocation(line: 1826, column: 32, scope: !1667)
!1691 = !DILocation(line: 1827, column: 5, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1827, column: 5)
!1693 = !DILocation(line: 1827, column: 5, scope: !1667)
!1694 = !DILocation(line: 1827, column: 5, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1692, file: !3, discriminator: 1)
!1696 = !DILocation(line: 1828, column: 26, scope: !1667)
!1697 = !DILocation(line: 1828, column: 73, scope: !1667)
!1698 = !DILocation(line: 1828, column: 5, scope: !1667)
!1699 = !DILocation(line: 1830, column: 5, scope: !1667)
!1700 = !DILocation(line: 1832, column: 20, scope: !1667)
!1701 = !DILocation(line: 1833, column: 38, scope: !1677)
!1702 = !DILocation(line: 1833, column: 5, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1677, file: !3, discriminator: 1)
!1704 = !DILocation(line: 1834, column: 24, scope: !1675)
!1705 = !DILocation(line: 1835, column: 18, scope: !1675)
!1706 = !{!632, !421, i64 0}
!1707 = !DILocation(line: 1837, column: 9, scope: !1675)
!1708 = !DILocation(line: 1838, column: 9, scope: !1675)
!1709 = distinct !{!1709, !1710, !1711}
!1710 = !DILocation(line: 1833, column: 5, scope: !1677)
!1711 = !DILocation(line: 1839, column: 5, scope: !1677)
!1712 = !DILocation(line: 42, column: 37, scope: !1713, inlinedAt: !1716)
!1713 = distinct !DISubprogram(name: "hfp_var_init", scope: !3, file: !3, line: 42, type: !1418, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1714)
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "con", arg: 1, scope: !1713, file: !3, line: 42, type: !355)
!1716 = distinct !DILocation(line: 1841, column: 5, scope: !1667)
!1717 = !DILocation(line: 44, column: 42, scope: !1713, inlinedAt: !1716)
!1718 = !DILocation(line: 46, column: 44, scope: !1713, inlinedAt: !1716)
!1719 = !DILocation(line: 47, column: 24, scope: !1713, inlinedAt: !1716)
!1720 = !DILocation(line: 50, column: 24, scope: !1713, inlinedAt: !1716)
!1721 = !DILocation(line: 48, column: 32, scope: !1713, inlinedAt: !1716)
!1722 = !DILocation(line: 50, column: 47, scope: !1713, inlinedAt: !1716)
!1723 = !DILocation(line: 51, column: 24, scope: !1713, inlinedAt: !1716)
!1724 = !DILocation(line: 51, column: 40, scope: !1713, inlinedAt: !1716)
!1725 = !DILocation(line: 53, column: 39, scope: !1713, inlinedAt: !1716)
!1726 = !DILocation(line: 55, column: 5, scope: !1713, inlinedAt: !1716)
!1727 = !DILocation(line: 57, column: 1, scope: !1713, inlinedAt: !1716)
!1728 = !DILocation(line: 56, column: 5, scope: !1713, inlinedAt: !1716)
!1729 = distinct !DISubprogram(name: "hfp_parse_rfcomm_data", scope: !3, file: !3, line: 1747, type: !1730, isLocal: true, isDefinition: true, scopeLine: 1748, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1733)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!349, !240, !1732, !240}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 32)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1734 = !DILocalVariable(name: "channel", arg: 1, scope: !1729, file: !3, line: 1747, type: !240)
!1735 = !DILocalVariable(name: "packet", arg: 2, scope: !1729, file: !3, line: 1747, type: !1732)
!1736 = !DILocalVariable(name: "size", arg: 3, scope: !1729, file: !3, line: 1747, type: !240)
!1737 = !DILocalVariable(name: "ret", scope: !1729, file: !3, line: 1749, type: !349)
!1738 = !DILocalVariable(name: "packet_begin_pos", scope: !1729, file: !3, line: 1750, type: !249)
!1739 = !DILocalVariable(name: "packet_end_pos", scope: !1729, file: !3, line: 1751, type: !249)
!1740 = !DILocalVariable(name: "parse_count", scope: !1729, file: !3, line: 1752, type: !249)
!1741 = !DILocalVariable(name: "cmdbuf", scope: !1742, file: !3, line: 1621, type: !786)
!1742 = distinct !DISubprogram(name: "parse_bcs_param", scope: !3, file: !3, line: 1617, type: !1743, isLocal: true, isDefinition: true, scopeLine: 1618, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1746)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!249, !355, !1745, !240}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1741}
!1747 = !DILocalVariable(name: "conn", arg: 1, scope: !1742, file: !3, line: 1617, type: !355)
!1748 = !DILocalVariable(name: "packet", arg: 2, scope: !1742, file: !3, line: 1617, type: !1745)
!1749 = !DILocalVariable(name: "size", arg: 3, scope: !1742, file: !3, line: 1617, type: !240)
!1750 = !DILocalVariable(name: "pos", scope: !1742, file: !3, line: 1619, type: !249)
!1751 = !DILocalVariable(name: "type", scope: !1742, file: !3, line: 1620, type: !244)
!1752 = !DILocation(line: 1621, column: 10, scope: !1742, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 1710, column: 15, scope: !1754, inlinedAt: !1764)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1652, column: 56)
!1755 = distinct !DISubprogram(name: "parse_atcmd_rsp_param", scope: !3, file: !3, line: 1645, type: !1756, isLocal: true, isDefinition: true, scopeLine: 1646, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!266, !240, !1745, !240}
!1758 = !{!1759, !1760, !1761, !1762, !1763}
!1759 = !DILocalVariable(name: "channel", arg: 1, scope: !1755, file: !3, line: 1645, type: !240)
!1760 = !DILocalVariable(name: "packet", arg: 2, scope: !1755, file: !3, line: 1645, type: !1745)
!1761 = !DILocalVariable(name: "size", arg: 3, scope: !1755, file: !3, line: 1645, type: !240)
!1762 = !DILocalVariable(name: "ret", scope: !1755, file: !3, line: 1647, type: !266)
!1763 = !DILocalVariable(name: "conn", scope: !1755, file: !3, line: 1648, type: !355)
!1764 = distinct !DILocation(line: 1785, column: 13, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1784, column: 16)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1782, column: 13)
!1767 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 1765, column: 70)
!1768 = !DILocation(line: 1747, column: 39, scope: !1729)
!1769 = !DILocation(line: 1747, column: 58, scope: !1729)
!1770 = !DILocation(line: 1747, column: 70, scope: !1729)
!1771 = !DILocation(line: 1749, column: 10, scope: !1729)
!1772 = !DILocation(line: 1750, column: 9, scope: !1729)
!1773 = !DILocation(line: 1751, column: 9, scope: !1729)
!1774 = !DILocation(line: 1752, column: 9, scope: !1729)
!1775 = !DILocalVariable(name: "packet", arg: 1, scope: !1776, file: !3, line: 695, type: !1732)
!1776 = distinct !DISubprogram(name: "prepare_hfp_packets_to_parse", scope: !3, file: !3, line: 695, type: !1777, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!244, !1732, !240}
!1779 = !{!1775, !1780}
!1780 = !DILocalVariable(name: "size", arg: 2, scope: !1776, file: !3, line: 695, type: !240)
!1781 = !DILocation(line: 695, column: 50, scope: !1776, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 1755, column: 13, scope: !1729)
!1783 = !DILocation(line: 695, column: 62, scope: !1776, inlinedAt: !1782)
!1784 = !DILocation(line: 697, column: 9, scope: !1785, inlinedAt: !1782)
!1785 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 697, column: 9)
!1786 = !DILocation(line: 697, column: 16, scope: !1785, inlinedAt: !1782)
!1787 = !DILocation(line: 697, column: 41, scope: !1785, inlinedAt: !1782)
!1788 = !DILocation(line: 697, column: 14, scope: !1785, inlinedAt: !1782)
!1789 = !DILocation(line: 697, column: 59, scope: !1785, inlinedAt: !1782)
!1790 = !DILocation(line: 697, column: 9, scope: !1776, inlinedAt: !1782)
!1791 = !DILocation(line: 698, column: 17, scope: !1792, inlinedAt: !1782)
!1792 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 697, column: 76)
!1793 = !DILocation(line: 698, column: 9, scope: !1792, inlinedAt: !1782)
!1794 = !DILocation(line: 699, column: 52, scope: !1792, inlinedAt: !1782)
!1795 = !DILocation(line: 700, column: 26, scope: !1796, inlinedAt: !1782)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 700, column: 13)
!1797 = !DILocation(line: 700, column: 14, scope: !1796, inlinedAt: !1782)
!1798 = !DILocation(line: 700, column: 31, scope: !1796, inlinedAt: !1782)
!1799 = !DILocation(line: 700, column: 40, scope: !1796, inlinedAt: !1782)
!1800 = !DILocation(line: 700, column: 56, scope: !1801, inlinedAt: !1782)
!1801 = !DILexicalBlockFile(scope: !1796, file: !3, discriminator: 1)
!1802 = !DILocation(line: 700, column: 44, scope: !1801, inlinedAt: !1782)
!1803 = !DILocation(line: 700, column: 61, scope: !1801, inlinedAt: !1782)
!1804 = !DILocation(line: 700, column: 117, scope: !1805, inlinedAt: !1782)
!1805 = !DILexicalBlockFile(scope: !1796, file: !3, discriminator: 2)
!1806 = !DILocation(line: 700, column: 70, scope: !1801, inlinedAt: !1782)
!1807 = !DILocation(line: 1765, column: 5, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1729, file: !3, discriminator: 1)
!1809 = !DILocation(line: 1785, column: 45, scope: !1765)
!1810 = !DILocation(line: 1766, column: 18, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 1)
!1812 = !DILocation(line: 1766, column: 58, scope: !1811)
!1813 = !DILocation(line: 1766, column: 66, scope: !1811)
!1814 = distinct !{!1814, !1815, !1816}
!1815 = !DILocation(line: 1766, column: 9, scope: !1767)
!1816 = !DILocation(line: 1768, column: 9, scope: !1767)
!1817 = !DILocation(line: 1766, column: 69, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 2)
!1819 = !DILocation(line: 1766, column: 113, scope: !1818)
!1820 = !DILocation(line: 1766, column: 9, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 3)
!1822 = !DILocation(line: 1770, column: 21, scope: !1767)
!1823 = !DILocation(line: 1772, column: 9, scope: !1767)
!1824 = !DILocation(line: 1772, column: 18, scope: !1811)
!1825 = !DILocation(line: 1772, column: 58, scope: !1811)
!1826 = !DILocation(line: 1772, column: 66, scope: !1811)
!1827 = distinct !{!1827, !1823, !1828}
!1828 = !DILocation(line: 1774, column: 9, scope: !1767)
!1829 = !DILocation(line: 1772, column: 69, scope: !1818)
!1830 = !DILocation(line: 1772, column: 113, scope: !1818)
!1831 = !DILocation(line: 1772, column: 9, scope: !1821)
!1832 = !DILocation(line: 1775, column: 21, scope: !1767)
!1833 = !DILocation(line: 1778, column: 28, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1778, column: 13)
!1835 = !DILocation(line: 1778, column: 13, scope: !1767)
!1836 = !DILocation(line: 1765, column: 26, scope: !1808)
!1837 = !DILocation(line: 1765, column: 51, scope: !1808)
!1838 = !DILocation(line: 1765, column: 24, scope: !1808)
!1839 = distinct !{!1839, !1840, !1841}
!1840 = !DILocation(line: 1765, column: 5, scope: !1729)
!1841 = !DILocation(line: 1787, column: 5, scope: !1729)
!1842 = !DILocation(line: 712, column: 78, scope: !346, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 1782, column: 13, scope: !1766)
!1844 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 714, column: 23, scope: !346, inlinedAt: !1843)
!1846 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !1845)
!1847 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !1845)
!1848 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !1845)
!1849 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !1845)
!1850 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !1845)
!1851 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !1845)
!1852 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !1845)
!1853 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !1845)
!1854 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !1845)
!1855 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !1845)
!1856 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !1845)
!1857 = !DILocation(line: 714, column: 16, scope: !346, inlinedAt: !1843)
!1858 = !DILocation(line: 718, column: 10, scope: !1859, inlinedAt: !1843)
!1859 = distinct !DILexicalBlock(scope: !346, file: !3, line: 718, column: 9)
!1860 = !DILocation(line: 718, column: 20, scope: !1859, inlinedAt: !1843)
!1861 = !DILocation(line: 718, column: 28, scope: !1859, inlinedAt: !1843)
!1862 = !DILocation(line: 718, column: 32, scope: !1863, inlinedAt: !1843)
!1863 = !DILexicalBlockFile(scope: !1859, file: !3, discriminator: 1)
!1864 = !DILocation(line: 718, column: 42, scope: !1863, inlinedAt: !1843)
!1865 = !DILocation(line: 718, column: 9, scope: !1866, inlinedAt: !1843)
!1866 = !DILexicalBlockFile(scope: !346, file: !3, discriminator: 1)
!1867 = !DILocation(line: 719, column: 34, scope: !1868, inlinedAt: !1843)
!1868 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 718, column: 51)
!1869 = !DILocation(line: 719, column: 51, scope: !1868, inlinedAt: !1843)
!1870 = !DILocation(line: 720, column: 33, scope: !1871, inlinedAt: !1843)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 720, column: 13)
!1872 = !DILocation(line: 720, column: 47, scope: !1871, inlinedAt: !1843)
!1873 = !DILocation(line: 720, column: 13, scope: !1868, inlinedAt: !1843)
!1874 = !DILocation(line: 721, column: 13, scope: !1875, inlinedAt: !1843)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 721, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 720, column: 68)
!1877 = !DILocation(line: 721, column: 13, scope: !1876, inlinedAt: !1843)
!1878 = !DILocation(line: 721, column: 13, scope: !1879, inlinedAt: !1843)
!1879 = !DILexicalBlockFile(scope: !1875, file: !3, discriminator: 1)
!1880 = !DILocation(line: 723, column: 33, scope: !1881, inlinedAt: !1843)
!1881 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 723, column: 13)
!1882 = !DILocation(line: 723, column: 47, scope: !1881, inlinedAt: !1843)
!1883 = !DILocation(line: 723, column: 13, scope: !1868, inlinedAt: !1843)
!1884 = !DILocation(line: 724, column: 47, scope: !1885, inlinedAt: !1843)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 723, column: 69)
!1886 = !DILocation(line: 725, column: 33, scope: !1885, inlinedAt: !1843)
!1887 = !DILocation(line: 725, column: 49, scope: !1885, inlinedAt: !1843)
!1888 = !DILocation(line: 726, column: 78, scope: !1885, inlinedAt: !1843)
!1889 = !DILocation(line: 115, column: 37, scope: !436, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 726, column: 13, scope: !1885, inlinedAt: !1843)
!1891 = !DILocation(line: 115, column: 54, scope: !436, inlinedAt: !1890)
!1892 = !DILocation(line: 118, column: 9, scope: !448, inlinedAt: !1890)
!1893 = !DILocation(line: 728, column: 86, scope: !1885, inlinedAt: !1843)
!1894 = !DILocation(line: 728, column: 66, scope: !1885, inlinedAt: !1843)
!1895 = !DILocation(line: 727, column: 13, scope: !1885, inlinedAt: !1843)
!1896 = !DILocation(line: 729, column: 109, scope: !1885, inlinedAt: !1843)
!1897 = !DILocation(line: 729, column: 89, scope: !1885, inlinedAt: !1843)
!1898 = !DILocation(line: 729, column: 13, scope: !1885, inlinedAt: !1843)
!1899 = !DILocation(line: 730, column: 9, scope: !1885, inlinedAt: !1843)
!1900 = !DILocation(line: 731, column: 33, scope: !1901, inlinedAt: !1843)
!1901 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 731, column: 13)
!1902 = !DILocation(line: 731, column: 47, scope: !1901, inlinedAt: !1843)
!1903 = !DILocation(line: 731, column: 13, scope: !1868, inlinedAt: !1843)
!1904 = !DILocation(line: 732, column: 47, scope: !1905, inlinedAt: !1843)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 731, column: 70)
!1906 = !DILocation(line: 733, column: 33, scope: !1905, inlinedAt: !1843)
!1907 = !DILocation(line: 733, column: 49, scope: !1905, inlinedAt: !1843)
!1908 = !DILocation(line: 734, column: 78, scope: !1905, inlinedAt: !1843)
!1909 = !DILocation(line: 115, column: 37, scope: !436, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 734, column: 13, scope: !1905, inlinedAt: !1843)
!1911 = !DILocation(line: 115, column: 54, scope: !436, inlinedAt: !1910)
!1912 = !DILocation(line: 120, column: 9, scope: !451, inlinedAt: !1910)
!1913 = !DILocation(line: 736, column: 86, scope: !1905, inlinedAt: !1843)
!1914 = !DILocation(line: 736, column: 66, scope: !1905, inlinedAt: !1843)
!1915 = !DILocation(line: 735, column: 13, scope: !1905, inlinedAt: !1843)
!1916 = !DILocation(line: 737, column: 109, scope: !1905, inlinedAt: !1843)
!1917 = !DILocation(line: 737, column: 89, scope: !1905, inlinedAt: !1843)
!1918 = !DILocation(line: 737, column: 13, scope: !1905, inlinedAt: !1843)
!1919 = !DILocation(line: 738, column: 9, scope: !1905, inlinedAt: !1843)
!1920 = !DILocation(line: 740, column: 17, scope: !1921, inlinedAt: !1843)
!1921 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 740, column: 16)
!1922 = !DILocation(line: 740, column: 48, scope: !1921, inlinedAt: !1843)
!1923 = !DILocation(line: 740, column: 52, scope: !1924, inlinedAt: !1843)
!1924 = !DILexicalBlockFile(scope: !1921, file: !3, discriminator: 1)
!1925 = !DILocation(line: 740, column: 16, scope: !1863, inlinedAt: !1843)
!1926 = !DILocation(line: 741, column: 34, scope: !1927, inlinedAt: !1843)
!1927 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 740, column: 90)
!1928 = !DILocation(line: 741, column: 51, scope: !1927, inlinedAt: !1843)
!1929 = !DILocation(line: 743, column: 33, scope: !1930, inlinedAt: !1843)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 743, column: 13)
!1931 = !DILocation(line: 743, column: 47, scope: !1930, inlinedAt: !1843)
!1932 = !DILocation(line: 743, column: 13, scope: !1927, inlinedAt: !1843)
!1933 = !DILocation(line: 744, column: 47, scope: !1934, inlinedAt: !1843)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 743, column: 76)
!1935 = !DILocation(line: 745, column: 39, scope: !1934, inlinedAt: !1843)
!1936 = !DILocation(line: 745, column: 13, scope: !1934, inlinedAt: !1843)
!1937 = !DILocation(line: 746, column: 13, scope: !1934, inlinedAt: !1843)
!1938 = !DILocation(line: 749, column: 33, scope: !1939, inlinedAt: !1843)
!1939 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 749, column: 13)
!1940 = !DILocation(line: 748, column: 9, scope: !1934, inlinedAt: !1843)
!1941 = !DILocation(line: 749, column: 47, scope: !1939, inlinedAt: !1843)
!1942 = !DILocation(line: 749, column: 13, scope: !1927, inlinedAt: !1843)
!1943 = !DILocation(line: 750, column: 47, scope: !1944, inlinedAt: !1843)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 749, column: 68)
!1945 = !DILocation(line: 751, column: 13, scope: !1946, inlinedAt: !1843)
!1946 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 751, column: 13)
!1947 = !DILocation(line: 751, column: 13, scope: !1944, inlinedAt: !1843)
!1948 = !DILocation(line: 751, column: 13, scope: !1949, inlinedAt: !1843)
!1949 = !DILexicalBlockFile(scope: !1946, file: !3, discriminator: 1)
!1950 = !DILocation(line: 752, column: 37, scope: !1951, inlinedAt: !1843)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 752, column: 17)
!1952 = !DILocation(line: 752, column: 56, scope: !1951, inlinedAt: !1843)
!1953 = !DILocation(line: 752, column: 17, scope: !1944, inlinedAt: !1843)
!1954 = !DILocation(line: 753, column: 17, scope: !1955, inlinedAt: !1843)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 752, column: 88)
!1956 = !DILocation(line: 754, column: 13, scope: !1955, inlinedAt: !1843)
!1957 = !DILocation(line: 755, column: 17, scope: !1958, inlinedAt: !1843)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 754, column: 20)
!1959 = !DILocation(line: 758, column: 59, scope: !1960, inlinedAt: !1843)
!1960 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 758, column: 13)
!1961 = !DILocation(line: 758, column: 36, scope: !1960, inlinedAt: !1843)
!1962 = !DILocation(line: 758, column: 13, scope: !1927, inlinedAt: !1843)
!1963 = !DILocation(line: 759, column: 46, scope: !1964, inlinedAt: !1843)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 758, column: 74)
!1965 = !DILocation(line: 767, column: 32, scope: !1964, inlinedAt: !1843)
!1966 = !DILocation(line: 767, column: 13, scope: !1964, inlinedAt: !1843)
!1967 = !DILocation(line: 770, column: 9, scope: !1964, inlinedAt: !1843)
!1968 = !DILocation(line: 771, column: 34, scope: !1969, inlinedAt: !1843)
!1969 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 771, column: 13)
!1970 = !DILocation(line: 771, column: 71, scope: !1969, inlinedAt: !1843)
!1971 = !DILocation(line: 773, column: 47, scope: !1972, inlinedAt: !1843)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 771, column: 132)
!1973 = !DILocation(line: 774, column: 33, scope: !1972, inlinedAt: !1843)
!1974 = !DILocation(line: 774, column: 49, scope: !1972, inlinedAt: !1843)
!1975 = !DILocation(line: 775, column: 78, scope: !1972, inlinedAt: !1843)
!1976 = !DILocation(line: 115, column: 37, scope: !436, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 775, column: 13, scope: !1972, inlinedAt: !1843)
!1978 = !DILocation(line: 115, column: 54, scope: !436, inlinedAt: !1977)
!1979 = !DILocation(line: 120, column: 9, scope: !451, inlinedAt: !1977)
!1980 = !DILocation(line: 776, column: 13, scope: !1972, inlinedAt: !1843)
!1981 = !DILocation(line: 778, column: 109, scope: !1972, inlinedAt: !1843)
!1982 = !DILocation(line: 778, column: 89, scope: !1972, inlinedAt: !1843)
!1983 = !DILocation(line: 778, column: 13, scope: !1972, inlinedAt: !1843)
!1984 = !DILocation(line: 779, column: 9, scope: !1972, inlinedAt: !1843)
!1985 = !DILocation(line: 781, column: 17, scope: !1986, inlinedAt: !1843)
!1986 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 781, column: 16)
!1987 = !DILocation(line: 781, column: 16, scope: !1921, inlinedAt: !1843)
!1988 = !DILocation(line: 810, column: 14, scope: !359, inlinedAt: !1843)
!1989 = !DILocation(line: 809, column: 9, scope: !346, inlinedAt: !1843)
!1990 = !DILocation(line: 808, column: 17, scope: !346, inlinedAt: !1843)
!1991 = !DILocation(line: 810, column: 5, scope: !1992, inlinedAt: !1843)
!1992 = !DILexicalBlockFile(scope: !359, file: !3, discriminator: 1)
!1993 = !DILocation(line: 782, column: 34, scope: !1994, inlinedAt: !1843)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 781, column: 48)
!1995 = !DILocation(line: 782, column: 51, scope: !1994, inlinedAt: !1843)
!1996 = !DILocation(line: 783, column: 9, scope: !1994, inlinedAt: !1843)
!1997 = !DILocation(line: 811, column: 29, scope: !361, inlinedAt: !1843)
!1998 = !{!1999, !417, i64 1}
!1999 = !{!"info", !417, i64 0, !417, i64 1}
!2000 = !DILocation(line: 811, column: 20, scope: !361, inlinedAt: !1843)
!2001 = !DILocation(line: 811, column: 13, scope: !361, inlinedAt: !1843)
!2002 = !DILocation(line: 812, column: 14, scope: !2003, inlinedAt: !1843)
!2003 = distinct !DILexicalBlock(scope: !361, file: !3, line: 812, column: 13)
!2004 = !DILocation(line: 812, column: 13, scope: !361, inlinedAt: !1843)
!2005 = !DILocation(line: 813, column: 33, scope: !2006, inlinedAt: !1843)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 812, column: 49)
!2007 = !{!1999, !417, i64 0}
!2008 = !DILocation(line: 816, column: 17, scope: !361, inlinedAt: !1843)
!2009 = !DILocation(line: 810, column: 59, scope: !2010, inlinedAt: !1843)
!2010 = !DILexicalBlockFile(scope: !362, file: !3, discriminator: 3)
!2011 = !DILocation(line: 810, column: 23, scope: !2012, inlinedAt: !1843)
!2012 = !DILexicalBlockFile(scope: !362, file: !3, discriminator: 1)
!2013 = distinct !{!2013, !2014, !2015}
!2014 = !DILocation(line: 810, column: 5, scope: !359)
!2015 = !DILocation(line: 817, column: 5, scope: !359)
!2016 = !DILocation(line: 818, column: 30, scope: !346, inlinedAt: !1843)
!2017 = !DILocation(line: 818, column: 47, scope: !346, inlinedAt: !1843)
!2018 = !DILocation(line: 1782, column: 113, scope: !1766)
!2019 = !DILocation(line: 1782, column: 97, scope: !1766)
!2020 = !DILocation(line: 1647, column: 9, scope: !1755, inlinedAt: !1764)
!2021 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 1648, column: 23, scope: !1755, inlinedAt: !1764)
!2023 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !2022)
!2024 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !2022)
!2025 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !2022)
!2026 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !2022)
!2027 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !2022)
!2028 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !2022)
!2029 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !2022)
!2030 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !2022)
!2031 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !2022)
!2032 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !2022)
!2033 = !DILocation(line: 1648, column: 16, scope: !1755, inlinedAt: !1764)
!2034 = !DILocation(line: 1652, column: 38, scope: !1755, inlinedAt: !1764)
!2035 = !DILocation(line: 1652, column: 5, scope: !1755, inlinedAt: !1764)
!2036 = !DILocalVariable(name: "conn", arg: 1, scope: !2037, file: !3, line: 861, type: !355)
!2037 = distinct !DISubprogram(name: "parse_brsf_rsp_param", scope: !3, file: !3, line: 861, type: !2038, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!266, !355, !217, !240}
!2040 = !{!2036, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!2041 = !DILocalVariable(name: "packet", arg: 2, scope: !2037, file: !3, line: 861, type: !217)
!2042 = !DILocalVariable(name: "size", arg: 3, scope: !2037, file: !3, line: 861, type: !240)
!2043 = !DILocalVariable(name: "pos", scope: !2037, file: !3, line: 864, type: !249)
!2044 = !DILocalVariable(name: "para_pos_end", scope: !2037, file: !3, line: 865, type: !249)
!2045 = !DILocalVariable(name: "para_pos_beg", scope: !2037, file: !3, line: 866, type: !249)
!2046 = !DILocalVariable(name: "support_feature", scope: !2037, file: !3, line: 867, type: !249)
!2047 = !DILocalVariable(name: "inband", scope: !2037, file: !3, line: 868, type: !249)
!2048 = !DILocation(line: 861, column: 44, scope: !2037, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 1654, column: 15, scope: !1754, inlinedAt: !1764)
!2050 = !DILocation(line: 861, column: 62, scope: !2037, inlinedAt: !2049)
!2051 = !DILocation(line: 861, column: 74, scope: !2037, inlinedAt: !2049)
!2052 = !DILocation(line: 864, column: 9, scope: !2037, inlinedAt: !2049)
!2053 = !DILocation(line: 865, column: 9, scope: !2037, inlinedAt: !2049)
!2054 = !DILocation(line: 866, column: 9, scope: !2037, inlinedAt: !2049)
!2055 = !DILocation(line: 867, column: 5, scope: !2037, inlinedAt: !2049)
!2056 = !DILocation(line: 867, column: 9, scope: !2037, inlinedAt: !2049)
!2057 = !{!420, !420, i64 0}
!2058 = !DILocation(line: 868, column: 9, scope: !2037, inlinedAt: !2049)
!2059 = !DILocation(line: 869, column: 5, scope: !2037, inlinedAt: !2049)
!2060 = !DILocation(line: 869, column: 13, scope: !2061, inlinedAt: !2049)
!2061 = !DILexicalBlockFile(scope: !2037, file: !3, discriminator: 1)
!2062 = !DILocation(line: 869, column: 5, scope: !2063, inlinedAt: !2049)
!2063 = !DILexicalBlockFile(scope: !2037, file: !3, discriminator: 3)
!2064 = !DILocation(line: 876, column: 16, scope: !2065, inlinedAt: !2049)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 876, column: 13)
!2066 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 875, column: 33)
!2067 = !DILocation(line: 870, column: 16, scope: !2068, inlinedAt: !2049)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 870, column: 13)
!2069 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 869, column: 38)
!2070 = !DILocation(line: 870, column: 19, scope: !2068, inlinedAt: !2049)
!2071 = !DILocation(line: 870, column: 13, scope: !2069, inlinedAt: !2049)
!2072 = distinct !{!2072, !2073, !2074}
!2073 = !DILocation(line: 869, column: 5, scope: !2037)
!2074 = !DILocation(line: 873, column: 5, scope: !2037)
!2075 = !DILocation(line: 876, column: 19, scope: !2065, inlinedAt: !2049)
!2076 = !DILocation(line: 876, column: 13, scope: !2066, inlinedAt: !2049)
!2077 = distinct !{!2077, !2078, !2079}
!2078 = !DILocation(line: 875, column: 5, scope: !2037)
!2079 = !DILocation(line: 879, column: 5, scope: !2037)
!2080 = !DILocation(line: 875, column: 24, scope: !2061, inlinedAt: !2049)
!2081 = !DILocation(line: 875, column: 5, scope: !2061, inlinedAt: !2049)
!2082 = !DILocation(line: 882, column: 22, scope: !2083, inlinedAt: !2049)
!2083 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 882, column: 9)
!2084 = !DILocation(line: 882, column: 9, scope: !2037, inlinedAt: !2049)
!2085 = !DILocation(line: 883, column: 90, scope: !2086, inlinedAt: !2049)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 882, column: 38)
!2087 = !DILocation(line: 883, column: 15, scope: !2086, inlinedAt: !2049)
!2088 = !DILocation(line: 884, column: 5, scope: !2086, inlinedAt: !2049)
!2089 = !DILocation(line: 885, column: 13, scope: !2090, inlinedAt: !2049)
!2090 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 885, column: 9)
!2091 = !DILocation(line: 885, column: 9, scope: !2037, inlinedAt: !2049)
!2092 = !DILocation(line: 886, column: 50, scope: !2093, inlinedAt: !2049)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 885, column: 19)
!2094 = !DILocation(line: 886, column: 29, scope: !2093, inlinedAt: !2049)
!2095 = !DILocation(line: 886, column: 48, scope: !2093, inlinedAt: !2049)
!2096 = !DILocation(line: 104, column: 47, scope: !906, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 887, column: 18, scope: !2093, inlinedAt: !2049)
!2098 = !DILocation(line: 104, column: 65, scope: !906, inlinedAt: !2097)
!2099 = !DILocation(line: 888, column: 13, scope: !2100, inlinedAt: !2049)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 888, column: 13)
!2101 = !DILocation(line: 888, column: 29, scope: !2100, inlinedAt: !2049)
!2102 = !DILocation(line: 888, column: 13, scope: !2093, inlinedAt: !2049)
!2103 = !DILocation(line: 106, column: 12, scope: !906, inlinedAt: !2097)
!2104 = !DILocation(line: 889, column: 53, scope: !2105, inlinedAt: !2049)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 888, column: 54)
!2106 = !DILocation(line: 889, column: 13, scope: !2105, inlinedAt: !2049)
!2107 = !DILocation(line: 890, column: 9, scope: !2105, inlinedAt: !2049)
!2108 = !DILocation(line: 891, column: 9, scope: !2109, inlinedAt: !2049)
!2109 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 891, column: 9)
!2110 = !DILocation(line: 891, column: 9, scope: !2093, inlinedAt: !2049)
!2111 = !DILocation(line: 891, column: 9, scope: !2112, inlinedAt: !2049)
!2112 = !DILexicalBlockFile(scope: !2109, file: !3, discriminator: 1)
!2113 = !DILocation(line: 892, column: 33, scope: !2114, inlinedAt: !2049)
!2114 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 892, column: 13)
!2115 = !DILocation(line: 892, column: 52, scope: !2114, inlinedAt: !2049)
!2116 = !DILocation(line: 892, column: 13, scope: !2093, inlinedAt: !2049)
!2117 = !DILocation(line: 894, column: 13, scope: !2118, inlinedAt: !2049)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 893, column: 84)
!2119 = !DILocation(line: 894, column: 13, scope: !2120, inlinedAt: !2049)
!2120 = !DILexicalBlockFile(scope: !2121, file: !3, discriminator: 1)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 894, column: 13)
!2122 = !DILocation(line: 895, column: 17, scope: !2123, inlinedAt: !2049)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 895, column: 17)
!2124 = !DILocation(line: 895, column: 37, scope: !2123, inlinedAt: !2049)
!2125 = !DILocation(line: 895, column: 50, scope: !2123, inlinedAt: !2049)
!2126 = !DILocation(line: 895, column: 17, scope: !2118, inlinedAt: !2049)
!2127 = !DILocation(line: 896, column: 50, scope: !2128, inlinedAt: !2049)
!2128 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 895, column: 56)
!2129 = !DILocation(line: 897, column: 13, scope: !2128, inlinedAt: !2049)
!2130 = !DILocation(line: 900, column: 13, scope: !2131, inlinedAt: !2049)
!2131 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 899, column: 16)
!2132 = !DILocation(line: 900, column: 13, scope: !2133, inlinedAt: !2049)
!2133 = !DILexicalBlockFile(scope: !2134, file: !3, discriminator: 1)
!2134 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 900, column: 13)
!2135 = !DILocation(line: 901, column: 46, scope: !2131, inlinedAt: !2049)
!2136 = !DILocation(line: 905, column: 1, scope: !2037, inlinedAt: !2049)
!2137 = !DILocation(line: 1655, column: 9, scope: !1754, inlinedAt: !1764)
!2138 = !DILocalVariable(name: "conn", arg: 1, scope: !2139, file: !3, line: 1120, type: !355)
!2139 = distinct !DISubprogram(name: "parse_cind_rsp_param", scope: !3, file: !3, line: 1120, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!266, !355, !1745, !240}
!2142 = !{!2138, !2143, !2144, !2145, !2146, !2147, !2148}
!2143 = !DILocalVariable(name: "packet", arg: 2, scope: !2139, file: !3, line: 1120, type: !1745)
!2144 = !DILocalVariable(name: "size", arg: 3, scope: !2139, file: !3, line: 1120, type: !240)
!2145 = !DILocalVariable(name: "ind_index", scope: !2139, file: !3, line: 1125, type: !249)
!2146 = !DILocalVariable(name: "indstr_pos_beg", scope: !2139, file: !3, line: 1126, type: !249)
!2147 = !DILocalVariable(name: "indstr_pos_end", scope: !2139, file: !3, line: 1127, type: !249)
!2148 = !DILocalVariable(name: "pos", scope: !2139, file: !3, line: 1128, type: !249)
!2149 = !DILocation(line: 1120, column: 44, scope: !2139, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 1657, column: 15, scope: !1754, inlinedAt: !1764)
!2151 = !DILocation(line: 1120, column: 56, scope: !2139, inlinedAt: !2150)
!2152 = !DILocation(line: 1120, column: 68, scope: !2139, inlinedAt: !2150)
!2153 = !DILocation(line: 1125, column: 9, scope: !2139, inlinedAt: !2150)
!2154 = !DILocation(line: 1126, column: 9, scope: !2139, inlinedAt: !2150)
!2155 = !DILocation(line: 1127, column: 9, scope: !2139, inlinedAt: !2150)
!2156 = !DILocation(line: 1128, column: 9, scope: !2139, inlinedAt: !2150)
!2157 = !DILocation(line: 1131, column: 13, scope: !2158, inlinedAt: !2150)
!2158 = !DILexicalBlockFile(scope: !2139, file: !3, discriminator: 1)
!2159 = !DILocation(line: 1133, column: 12, scope: !2139, inlinedAt: !2150)
!2160 = !DILocation(line: 1137, column: 9, scope: !2161, inlinedAt: !2150)
!2161 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 1137, column: 9)
!2162 = !DILocation(line: 1134, column: 12, scope: !2163, inlinedAt: !2150)
!2163 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 1133, column: 36)
!2164 = distinct !{!2164, !2165, !2166}
!2165 = !DILocation(line: 1131, column: 5, scope: !2139)
!2166 = !DILocation(line: 1135, column: 5, scope: !2139)
!2167 = !DILocation(line: 1138, column: 22, scope: !2168, inlinedAt: !2150)
!2168 = !DILexicalBlockFile(scope: !2169, file: !3, discriminator: 1)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 1137, column: 29)
!2170 = !DILocation(line: 1138, column: 20, scope: !2168, inlinedAt: !2150)
!2171 = !DILocation(line: 1138, column: 9, scope: !2168, inlinedAt: !2150)
!2172 = !DILocation(line: 1139, column: 20, scope: !2173, inlinedAt: !2150)
!2173 = !DILexicalBlockFile(scope: !2174, file: !3, discriminator: 1)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 1138, column: 28)
!2175 = !DILocation(line: 1139, column: 32, scope: !2173, inlinedAt: !2150)
!2176 = !DILocation(line: 1139, column: 13, scope: !2173, inlinedAt: !2150)
!2177 = !DILocation(line: 1140, column: 27, scope: !2178, inlinedAt: !2150)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 1140, column: 21)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1139, column: 40)
!2180 = !DILocation(line: 1140, column: 21, scope: !2179, inlinedAt: !2150)
!2181 = distinct !{!2181, !2182, !2183}
!2182 = !DILocation(line: 1139, column: 13, scope: !2174)
!2183 = !DILocation(line: 1143, column: 13, scope: !2174)
!2184 = !DILocation(line: 1147, column: 20, scope: !2173, inlinedAt: !2150)
!2185 = !DILocation(line: 1147, column: 32, scope: !2173, inlinedAt: !2150)
!2186 = !DILocation(line: 1147, column: 13, scope: !2173, inlinedAt: !2150)
!2187 = !DILocation(line: 1148, column: 24, scope: !2188, inlinedAt: !2150)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1148, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1147, column: 40)
!2190 = !DILocation(line: 1148, column: 27, scope: !2188, inlinedAt: !2150)
!2191 = !DILocation(line: 1148, column: 21, scope: !2189, inlinedAt: !2150)
!2192 = distinct !{!2192, !2193, !2194}
!2193 = !DILocation(line: 1147, column: 13, scope: !2174)
!2194 = !DILocation(line: 1151, column: 13, scope: !2174)
!2195 = !DILocation(line: 1154, column: 100, scope: !2174, inlinedAt: !2150)
!2196 = !DILocation(line: 1154, column: 139, scope: !2174, inlinedAt: !2150)
!2197 = !DILocation(line: 1154, column: 200, scope: !2174, inlinedAt: !2150)
!2198 = !DILocalVariable(name: "conn", arg: 1, scope: !2199, file: !3, line: 1109, type: !355)
!2199 = distinct !DISubprogram(name: "search_indicator_straddr", scope: !3, file: !3, line: 1109, type: !2200, isLocal: true, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!248, !355, !248, !240, !248}
!2202 = !{!2198, !2203, !2204, !2205, !2206}
!2203 = !DILocalVariable(name: "dst", arg: 2, scope: !2199, file: !3, line: 1109, type: !248)
!2204 = !DILocalVariable(name: "len", arg: 3, scope: !2199, file: !3, line: 1109, type: !240)
!2205 = !DILocalVariable(name: "index", arg: 4, scope: !2199, file: !3, line: 1109, type: !248)
!2206 = !DILocalVariable(name: "i", scope: !2199, file: !3, line: 1111, type: !249)
!2207 = !DILocation(line: 1109, column: 48, scope: !2199, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 1154, column: 62, scope: !2174, inlinedAt: !2150)
!2209 = !DILocation(line: 1111, column: 9, scope: !2199, inlinedAt: !2208)
!2210 = !DILocation(line: 1112, column: 5, scope: !2211, inlinedAt: !2208)
!2211 = !DILexicalBlockFile(scope: !2212, file: !3, discriminator: 1)
!2212 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1112, column: 5)
!2213 = !DILocation(line: 1113, column: 32, scope: !2214, inlinedAt: !2208)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 1113, column: 13)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 1112, column: 45)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1112, column: 5)
!2217 = !DILocation(line: 1113, column: 14, scope: !2214, inlinedAt: !2208)
!2218 = !DILocation(line: 1113, column: 13, scope: !2215, inlinedAt: !2208)
!2219 = !DILocation(line: 1114, column: 22, scope: !2220, inlinedAt: !2208)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1113, column: 58)
!2221 = !DILocation(line: 1114, column: 20, scope: !2220, inlinedAt: !2208)
!2222 = !DILocation(line: 1115, column: 13, scope: !2220, inlinedAt: !2208)
!2223 = !DILocation(line: 1112, column: 41, scope: !2224, inlinedAt: !2208)
!2224 = !DILexicalBlockFile(scope: !2216, file: !3, discriminator: 2)
!2225 = !DILocation(line: 1112, column: 19, scope: !2226, inlinedAt: !2208)
!2226 = !DILexicalBlockFile(scope: !2216, file: !3, discriminator: 1)
!2227 = distinct !{!2227, !2228, !2229}
!2228 = !DILocation(line: 1112, column: 5, scope: !2212)
!2229 = !DILocation(line: 1117, column: 5, scope: !2212)
!2230 = !DILocation(line: 1154, column: 55, scope: !2174, inlinedAt: !2150)
!2231 = !DILocation(line: 1154, column: 60, scope: !2174, inlinedAt: !2150)
!2232 = !DILocation(line: 1155, column: 64, scope: !2174, inlinedAt: !2150)
!2233 = !DILocation(line: 1155, column: 55, scope: !2174, inlinedAt: !2150)
!2234 = !DILocation(line: 1155, column: 62, scope: !2174, inlinedAt: !2150)
!2235 = !{!1431, !417, i64 5}
!2236 = !DILocation(line: 1158, column: 22, scope: !2174, inlinedAt: !2150)
!2237 = !DILocation(line: 1159, column: 17, scope: !2174, inlinedAt: !2150)
!2238 = distinct !{!2238, !2239, !2240}
!2239 = !DILocation(line: 1138, column: 9, scope: !2169)
!2240 = !DILocation(line: 1160, column: 9, scope: !2169)
!2241 = !DILocation(line: 1161, column: 16, scope: !2242, inlinedAt: !2150)
!2242 = !DILexicalBlockFile(scope: !2243, file: !3, discriminator: 1)
!2243 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 1161, column: 16)
!2244 = !DILocation(line: 1162, column: 16, scope: !2245, inlinedAt: !2150)
!2245 = !DILexicalBlockFile(scope: !2246, file: !3, discriminator: 1)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 1161, column: 41)
!2247 = !DILocation(line: 1163, column: 17, scope: !2248, inlinedAt: !2150)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1163, column: 17)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 1162, column: 37)
!2250 = !DILocation(line: 1164, column: 59, scope: !2251, inlinedAt: !2150)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1163, column: 42)
!2252 = !DILocation(line: 1164, column: 63, scope: !2251, inlinedAt: !2150)
!2253 = !{!1431, !417, i64 6}
!2254 = !DILocation(line: 1165, column: 26, scope: !2251, inlinedAt: !2150)
!2255 = !DILocation(line: 1166, column: 13, scope: !2251, inlinedAt: !2150)
!2256 = !DILocation(line: 1167, column: 16, scope: !2249, inlinedAt: !2150)
!2257 = !DILocation(line: 1162, column: 28, scope: !2245, inlinedAt: !2150)
!2258 = !DILocation(line: 1162, column: 9, scope: !2245, inlinedAt: !2150)
!2259 = distinct !{!2259, !2260, !2261}
!2260 = !DILocation(line: 1162, column: 9, scope: !2246)
!2261 = !DILocation(line: 1168, column: 9, scope: !2246)
!2262 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2275)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 921, column: 13)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 920, column: 45)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 920, column: 5)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 920, column: 5)
!2267 = distinct !DISubprogram(name: "get_prev_indicator_status", scope: !3, file: !3, line: 917, type: !2268, isLocal: true, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2271)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!244, !355, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_IND_TYPE", file: !23, line: 181, baseType: !201)
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "conn", arg: 1, scope: !2267, file: !3, line: 917, type: !355)
!2273 = !DILocalVariable(name: "type", arg: 2, scope: !2267, file: !3, line: 917, type: !2270)
!2274 = !DILocalVariable(name: "i", scope: !2267, file: !3, line: 919, type: !249)
!2275 = distinct !DILocation(line: 933, column: 9, scope: !2276, inlinedAt: !2284)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 933, column: 9)
!2277 = distinct !DISubprogram(name: "deal_init_status", scope: !3, file: !3, line: 928, type: !1418, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2278)
!2278 = !{!2279, !2280, !2281, !2283}
!2279 = !DILocalVariable(name: "conn", arg: 1, scope: !2277, file: !3, line: 928, type: !355)
!2280 = !DILocalVariable(name: "flag", scope: !2277, file: !3, line: 930, type: !249)
!2281 = !DILocalVariable(name: "sta", scope: !2277, file: !3, line: 931, type: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_IND_STA", file: !100, line: 57, baseType: !126)
!2283 = !DILocalVariable(name: "param", scope: !2277, file: !3, line: 932, type: !266)
!2284 = distinct !DILocation(line: 1659, column: 9, scope: !1754, inlinedAt: !1764)
!2285 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2275)
!2286 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2275)
!2287 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2275)
!2288 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2275)
!2289 = !DILexicalBlockFile(scope: !2265, file: !3, discriminator: 2)
!2290 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2275)
!2291 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2275)
!2292 = !DILexicalBlockFile(scope: !2265, file: !3, discriminator: 1)
!2293 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2275)
!2294 = !DILexicalBlockFile(scope: !2266, file: !3, discriminator: 1)
!2295 = distinct !{!2295, !2296, !2297}
!2296 = !DILocation(line: 920, column: 5, scope: !2266)
!2297 = !DILocation(line: 924, column: 5, scope: !2266)
!2298 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2275)
!2299 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 921, column: 88)
!2300 = !DILocation(line: 933, column: 55, scope: !2276, inlinedAt: !2284)
!2301 = !DILocation(line: 933, column: 9, scope: !2277, inlinedAt: !2284)
!2302 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2312)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 128, column: 13)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 127, column: 45)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 127, column: 5)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 127, column: 5)
!2307 = distinct !DISubprogram(name: "get_indicator_status", scope: !3, file: !3, line: 124, type: !2268, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2308)
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "conn", arg: 1, scope: !2307, file: !3, line: 124, type: !355)
!2310 = !DILocalVariable(name: "type", arg: 2, scope: !2307, file: !3, line: 124, type: !2270)
!2311 = !DILocalVariable(name: "i", scope: !2307, file: !3, line: 126, type: !249)
!2312 = distinct !DILocation(line: 934, column: 13, scope: !2313, inlinedAt: !2284)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 934, column: 13)
!2314 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 933, column: 64)
!2315 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2312)
!2316 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2312)
!2317 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2312)
!2318 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2312)
!2319 = !DILexicalBlockFile(scope: !2305, file: !3, discriminator: 2)
!2320 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2312)
!2321 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2312)
!2322 = !DILexicalBlockFile(scope: !2305, file: !3, discriminator: 1)
!2323 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2312)
!2324 = !DILexicalBlockFile(scope: !2306, file: !3, discriminator: 1)
!2325 = distinct !{!2325, !2326, !2327}
!2326 = !DILocation(line: 127, column: 5, scope: !2306)
!2327 = !DILocation(line: 131, column: 5, scope: !2306)
!2328 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2312)
!2329 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 128, column: 89)
!2330 = !DILocation(line: 934, column: 54, scope: !2313, inlinedAt: !2284)
!2331 = !DILocation(line: 934, column: 13, scope: !2314, inlinedAt: !2284)
!2332 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 937, column: 17, scope: !2334, inlinedAt: !2284)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 937, column: 17)
!2335 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 934, column: 74)
!2336 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2333)
!2337 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2333)
!2338 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2333)
!2339 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2333)
!2340 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2333)
!2341 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2333)
!2342 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2333)
!2343 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2333)
!2344 = !DILocation(line: 937, column: 62, scope: !2334, inlinedAt: !2284)
!2345 = !DILocation(line: 937, column: 17, scope: !2335, inlinedAt: !2284)
!2346 = !DILocation(line: 939, column: 21, scope: !2347, inlinedAt: !2284)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 939, column: 21)
!2348 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 937, column: 87)
!2349 = !DILocation(line: 939, column: 37, scope: !2347, inlinedAt: !2284)
!2350 = !DILocation(line: 939, column: 21, scope: !2348, inlinedAt: !2284)
!2351 = !DILocation(line: 940, column: 61, scope: !2352, inlinedAt: !2284)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 939, column: 62)
!2353 = !DILocation(line: 940, column: 21, scope: !2352, inlinedAt: !2284)
!2354 = !DILocation(line: 941, column: 17, scope: !2352, inlinedAt: !2284)
!2355 = !DILocation(line: 931, column: 17, scope: !2277, inlinedAt: !2284)
!2356 = !DILocation(line: 930, column: 9, scope: !2277, inlinedAt: !2284)
!2357 = !DILocation(line: 917, column: 48, scope: !2267, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 946, column: 9, scope: !2359, inlinedAt: !2284)
!2359 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 946, column: 9)
!2360 = !DILocation(line: 917, column: 67, scope: !2267, inlinedAt: !2358)
!2361 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2358)
!2362 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2358)
!2363 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2358)
!2364 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2358)
!2365 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2358)
!2366 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2358)
!2367 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2358)
!2368 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2358)
!2369 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2358)
!2370 = !DILocation(line: 946, column: 60, scope: !2359, inlinedAt: !2284)
!2371 = !DILocation(line: 946, column: 75, scope: !2372, inlinedAt: !2284)
!2372 = !DILexicalBlockFile(scope: !2359, file: !3, discriminator: 1)
!2373 = !DILocation(line: 946, column: 68, scope: !2359, inlinedAt: !2284)
!2374 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 947, column: 13, scope: !2376, inlinedAt: !2284)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 947, column: 13)
!2377 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 946, column: 84)
!2378 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2375)
!2379 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2375)
!2380 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2375)
!2381 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2375)
!2382 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2375)
!2383 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2375)
!2384 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2375)
!2385 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2375)
!2386 = !DILocation(line: 947, column: 59, scope: !2376, inlinedAt: !2284)
!2387 = !DILocation(line: 947, column: 13, scope: !2377, inlinedAt: !2284)
!2388 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 950, column: 20, scope: !2390, inlinedAt: !2284)
!2390 = !DILexicalBlockFile(scope: !2391, file: !3, discriminator: 1)
!2391 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 950, column: 20)
!2392 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2389)
!2393 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2389)
!2394 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2389)
!2395 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2389)
!2396 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2389)
!2397 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2389)
!2398 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2389)
!2399 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2389)
!2400 = !DILocation(line: 950, column: 66, scope: !2390, inlinedAt: !2284)
!2401 = !DILocation(line: 950, column: 20, scope: !2402, inlinedAt: !2284)
!2402 = !DILexicalBlockFile(scope: !2376, file: !3, discriminator: 1)
!2403 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 953, column: 20, scope: !2405, inlinedAt: !2284)
!2405 = !DILexicalBlockFile(scope: !2406, file: !3, discriminator: 1)
!2406 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 953, column: 20)
!2407 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2404)
!2408 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2404)
!2409 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2404)
!2410 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2404)
!2411 = !DILocation(line: 129, column: 13, scope: !2329, inlinedAt: !2404)
!2412 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2404)
!2413 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2404)
!2414 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2404)
!2415 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2404)
!2416 = !DILocation(line: 953, column: 66, scope: !2405, inlinedAt: !2284)
!2417 = !DILocation(line: 953, column: 20, scope: !2390, inlinedAt: !2284)
!2418 = !DILocation(line: 957, column: 60, scope: !2377, inlinedAt: !2284)
!2419 = !DILocation(line: 957, column: 17, scope: !2377, inlinedAt: !2284)
!2420 = !DILocation(line: 932, column: 9, scope: !2277, inlinedAt: !2284)
!2421 = !DILocation(line: 958, column: 5, scope: !2377, inlinedAt: !2284)
!2422 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 960, column: 9, scope: !2424, inlinedAt: !2284)
!2424 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 960, column: 9)
!2425 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2423)
!2426 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2423)
!2427 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2423)
!2428 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2423)
!2429 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2423)
!2430 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2423)
!2431 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2423)
!2432 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2423)
!2433 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2423)
!2434 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2423)
!2435 = !DILocation(line: 960, column: 50, scope: !2424, inlinedAt: !2284)
!2436 = !DILocation(line: 960, column: 9, scope: !2277, inlinedAt: !2284)
!2437 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 964, column: 13, scope: !2439, inlinedAt: !2284)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 964, column: 13)
!2440 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 960, column: 70)
!2441 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2438)
!2442 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2438)
!2443 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2438)
!2444 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2438)
!2445 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2438)
!2446 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2438)
!2447 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2438)
!2448 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2438)
!2449 = !DILocation(line: 964, column: 59, scope: !2439, inlinedAt: !2284)
!2450 = !DILocation(line: 964, column: 13, scope: !2440, inlinedAt: !2284)
!2451 = !DILocation(line: 966, column: 52, scope: !2452, inlinedAt: !2284)
!2452 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 964, column: 86)
!2453 = !DILocation(line: 967, column: 9, scope: !2452, inlinedAt: !2284)
!2454 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 968, column: 13, scope: !2456, inlinedAt: !2284)
!2456 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 968, column: 13)
!2457 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2455)
!2458 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2455)
!2459 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2455)
!2460 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2455)
!2461 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2455)
!2462 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2455)
!2463 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2455)
!2464 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2455)
!2465 = !DILocation(line: 968, column: 59, scope: !2456, inlinedAt: !2284)
!2466 = !DILocation(line: 968, column: 13, scope: !2440, inlinedAt: !2284)
!2467 = !DILocation(line: 970, column: 52, scope: !2468, inlinedAt: !2284)
!2468 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 968, column: 86)
!2469 = !DILocation(line: 971, column: 9, scope: !2468, inlinedAt: !2284)
!2470 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 972, column: 13, scope: !2472, inlinedAt: !2284)
!2472 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 972, column: 13)
!2473 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2471)
!2474 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2471)
!2475 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2471)
!2476 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2471)
!2477 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2471)
!2478 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2471)
!2479 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2471)
!2480 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2471)
!2481 = !DILocation(line: 972, column: 58, scope: !2472, inlinedAt: !2284)
!2482 = !DILocation(line: 972, column: 13, scope: !2440, inlinedAt: !2284)
!2483 = !DILocation(line: 973, column: 52, scope: !2484, inlinedAt: !2284)
!2484 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 972, column: 80)
!2485 = !DILocation(line: 975, column: 9, scope: !2484, inlinedAt: !2284)
!2486 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 976, column: 13, scope: !2488, inlinedAt: !2284)
!2488 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 976, column: 13)
!2489 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2487)
!2490 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2487)
!2491 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2487)
!2492 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2487)
!2493 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2487)
!2494 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2487)
!2495 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2487)
!2496 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2487)
!2497 = !DILocation(line: 976, column: 58, scope: !2488, inlinedAt: !2284)
!2498 = !DILocation(line: 976, column: 13, scope: !2440, inlinedAt: !2284)
!2499 = !DILocation(line: 977, column: 52, scope: !2500, inlinedAt: !2284)
!2500 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 976, column: 80)
!2501 = !DILocation(line: 979, column: 9, scope: !2500, inlinedAt: !2284)
!2502 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 980, column: 13, scope: !2504, inlinedAt: !2284)
!2504 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 980, column: 13)
!2505 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2503)
!2506 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2503)
!2507 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2503)
!2508 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2503)
!2509 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2503)
!2510 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2503)
!2511 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2503)
!2512 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2503)
!2513 = !DILocation(line: 980, column: 59, scope: !2504, inlinedAt: !2284)
!2514 = !DILocation(line: 980, column: 13, scope: !2440, inlinedAt: !2284)
!2515 = !DILocation(line: 981, column: 52, scope: !2516, inlinedAt: !2284)
!2516 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 980, column: 86)
!2517 = !DILocation(line: 983, column: 9, scope: !2516, inlinedAt: !2284)
!2518 = !DILocation(line: 984, column: 13, scope: !2519, inlinedAt: !2284)
!2519 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 984, column: 13)
!2520 = !DILocation(line: 984, column: 29, scope: !2519, inlinedAt: !2284)
!2521 = !DILocation(line: 984, column: 13, scope: !2440, inlinedAt: !2284)
!2522 = !DILocation(line: 985, column: 53, scope: !2523, inlinedAt: !2284)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 984, column: 54)
!2524 = !DILocation(line: 985, column: 130, scope: !2523, inlinedAt: !2284)
!2525 = !DILocation(line: 985, column: 13, scope: !2523, inlinedAt: !2284)
!2526 = !DILocation(line: 986, column: 9, scope: !2523, inlinedAt: !2284)
!2527 = !DILocation(line: 988, column: 9, scope: !2528, inlinedAt: !2284)
!2528 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 988, column: 9)
!2529 = !DILocation(line: 988, column: 9, scope: !2277, inlinedAt: !2284)
!2530 = !DILocation(line: 989, column: 13, scope: !2531, inlinedAt: !2284)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 989, column: 13)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 988, column: 15)
!2533 = !DILocation(line: 989, column: 29, scope: !2531, inlinedAt: !2284)
!2534 = !DILocation(line: 989, column: 13, scope: !2532, inlinedAt: !2284)
!2535 = !DILocation(line: 990, column: 51, scope: !2536, inlinedAt: !2284)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 989, column: 54)
!2537 = !DILocation(line: 991, column: 29, scope: !2536, inlinedAt: !2284)
!2538 = !DILocation(line: 991, column: 53, scope: !2536, inlinedAt: !2284)
!2539 = !DILocation(line: 991, column: 13, scope: !2536, inlinedAt: !2284)
!2540 = !DILocation(line: 992, column: 9, scope: !2536, inlinedAt: !2284)
!2541 = !DILocation(line: 995, column: 39, scope: !2277, inlinedAt: !2284)
!2542 = !DILocation(line: 995, column: 5, scope: !2277, inlinedAt: !2284)
!2543 = !DILocation(line: 995, column: 77, scope: !2277, inlinedAt: !2284)
!2544 = !DILocation(line: 1660, column: 9, scope: !1754, inlinedAt: !1764)
!2545 = !DILocalVariable(name: "conn", arg: 1, scope: !2546, file: !3, line: 1178, type: !355)
!2546 = distinct !DISubprogram(name: "parse_ciev_rsp_param", scope: !3, file: !3, line: 1178, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2547)
!2547 = !{!2545, !2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "packet", arg: 2, scope: !2546, file: !3, line: 1178, type: !1745)
!2549 = !DILocalVariable(name: "size", arg: 3, scope: !2546, file: !3, line: 1178, type: !240)
!2550 = !DILocalVariable(name: "ind_index", scope: !2546, file: !3, line: 1181, type: !249)
!2551 = !DILocalVariable(name: "pos", scope: !2546, file: !3, line: 1182, type: !249)
!2552 = !DILocation(line: 1178, column: 44, scope: !2546, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 1662, column: 15, scope: !1754, inlinedAt: !1764)
!2554 = !DILocation(line: 1178, column: 56, scope: !2546, inlinedAt: !2553)
!2555 = !DILocation(line: 1178, column: 68, scope: !2546, inlinedAt: !2553)
!2556 = !DILocation(line: 1181, column: 9, scope: !2546, inlinedAt: !2553)
!2557 = !DILocation(line: 1182, column: 9, scope: !2546, inlinedAt: !2553)
!2558 = !DILocation(line: 1184, column: 5, scope: !2546, inlinedAt: !2553)
!2559 = !DILocation(line: 1184, column: 13, scope: !2560, inlinedAt: !2553)
!2560 = !DILexicalBlockFile(scope: !2546, file: !3, discriminator: 1)
!2561 = !DILocation(line: 1184, column: 5, scope: !2562, inlinedAt: !2553)
!2562 = !DILexicalBlockFile(scope: !2546, file: !3, discriminator: 3)
!2563 = !DILocation(line: 1185, column: 16, scope: !2564, inlinedAt: !2553)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1185, column: 13)
!2565 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1184, column: 38)
!2566 = !DILocation(line: 1185, column: 19, scope: !2564, inlinedAt: !2553)
!2567 = !DILocation(line: 1185, column: 13, scope: !2565, inlinedAt: !2553)
!2568 = distinct !{!2568, !2569, !2570}
!2569 = !DILocation(line: 1184, column: 5, scope: !2546)
!2570 = !DILocation(line: 1188, column: 5, scope: !2546)
!2571 = !DILocation(line: 1189, column: 17, scope: !2546, inlinedAt: !2553)
!2572 = !DILocation(line: 1191, column: 5, scope: !2546, inlinedAt: !2553)
!2573 = !DILocation(line: 1191, column: 13, scope: !2560, inlinedAt: !2553)
!2574 = !DILocation(line: 1191, column: 5, scope: !2562, inlinedAt: !2553)
!2575 = !DILocation(line: 1192, column: 19, scope: !2576, inlinedAt: !2553)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1192, column: 13)
!2577 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1191, column: 38)
!2578 = !DILocation(line: 1192, column: 13, scope: !2577, inlinedAt: !2553)
!2579 = distinct !{!2579, !2580, !2581}
!2580 = !DILocation(line: 1191, column: 5, scope: !2546)
!2581 = !DILocation(line: 1195, column: 5, scope: !2546)
!2582 = !DILocation(line: 1197, column: 46, scope: !2546, inlinedAt: !2553)
!2583 = !DILocation(line: 1197, column: 51, scope: !2546, inlinedAt: !2553)
!2584 = !DILocation(line: 1197, column: 55, scope: !2546, inlinedAt: !2553)
!2585 = !DILocation(line: 1200, column: 5, scope: !2546, inlinedAt: !2553)
!2586 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1003, column: 12, scope: !2588, inlinedAt: !2598)
!2588 = distinct !DISubprogram(name: "deal_indicator_status", scope: !3, file: !3, line: 998, type: !1418, isLocal: true, isDefinition: true, scopeLine: 999, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2597}
!2590 = !DILocalVariable(name: "conn", arg: 1, scope: !2588, file: !3, line: 998, type: !355)
!2591 = !DILocalVariable(name: "para", scope: !2588, file: !3, line: 1000, type: !249)
!2592 = !DILocalVariable(name: "flag", scope: !2588, file: !3, line: 1001, type: !249)
!2593 = !DILocalVariable(name: "sta", scope: !2588, file: !3, line: 1002, type: !2282)
!2594 = !DILocalVariable(name: "pre_held_sta", scope: !2595, file: !3, line: 1065, type: !244)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1064, column: 70)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1064, column: 9)
!2597 = !DILocalVariable(name: "now_held_sta", scope: !2595, file: !3, line: 1066, type: !244)
!2598 = distinct !DILocation(line: 1664, column: 9, scope: !1754, inlinedAt: !1764)
!2599 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2587)
!2600 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2587)
!2601 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2587)
!2602 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2587)
!2603 = !DILocation(line: 129, column: 13, scope: !2329, inlinedAt: !2587)
!2604 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2587)
!2605 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2587)
!2606 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2587)
!2607 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2587)
!2608 = !DILocation(line: 917, column: 48, scope: !2267, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1004, column: 9, scope: !2610, inlinedAt: !2598)
!2610 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1004, column: 9)
!2611 = !DILocation(line: 917, column: 67, scope: !2267, inlinedAt: !2609)
!2612 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2609)
!2613 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2609)
!2614 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2609)
!2615 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2609)
!2616 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2609)
!2617 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2609)
!2618 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2609)
!2619 = !DILocation(line: 922, column: 13, scope: !2299, inlinedAt: !2609)
!2620 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2609)
!2621 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2609)
!2622 = !DILocation(line: 1004, column: 58, scope: !2610, inlinedAt: !2598)
!2623 = !DILocation(line: 1004, column: 9, scope: !2588, inlinedAt: !2598)
!2624 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1008, column: 16, scope: !2626, inlinedAt: !2598)
!2626 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 1007, column: 12)
!2627 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2625)
!2628 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2625)
!2629 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2625)
!2630 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2625)
!2631 = !DILocation(line: 129, column: 13, scope: !2329, inlinedAt: !2625)
!2632 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2625)
!2633 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2625)
!2634 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2625)
!2635 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2625)
!2636 = !DILocation(line: 1008, column: 16, scope: !2626, inlinedAt: !2598)
!2637 = !DILocation(line: 1000, column: 9, scope: !2588, inlinedAt: !2598)
!2638 = !DILocation(line: 917, column: 48, scope: !2267, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 1009, column: 13, scope: !2640, inlinedAt: !2598)
!2640 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1009, column: 13)
!2641 = !DILocation(line: 917, column: 67, scope: !2267, inlinedAt: !2639)
!2642 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2639)
!2643 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2639)
!2644 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2639)
!2645 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2639)
!2646 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2639)
!2647 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2639)
!2648 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2639)
!2649 = !DILocation(line: 922, column: 13, scope: !2299, inlinedAt: !2639)
!2650 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2639)
!2651 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2639)
!2652 = !DILocation(line: 1009, column: 61, scope: !2640, inlinedAt: !2598)
!2653 = !DILocation(line: 1001, column: 9, scope: !2588, inlinedAt: !2598)
!2654 = !DILocation(line: 1002, column: 17, scope: !2588, inlinedAt: !2598)
!2655 = !DILocation(line: 1009, column: 13, scope: !2626, inlinedAt: !2598)
!2656 = !DILocation(line: 1014, column: 9, scope: !2588, inlinedAt: !2598)
!2657 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1025, column: 9, scope: !2659, inlinedAt: !2598)
!2659 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1025, column: 9)
!2660 = !DILocation(line: 1003, column: 12, scope: !2588, inlinedAt: !2598)
!2661 = !DILocation(line: 1016, column: 98, scope: !2662, inlinedAt: !2598)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 1015, column: 44)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1015, column: 13)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1014, column: 15)
!2665 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1014, column: 9)
!2666 = !DILocation(line: 1016, column: 13, scope: !2662, inlinedAt: !2598)
!2667 = !DILocation(line: 1017, column: 9, scope: !2662, inlinedAt: !2598)
!2668 = !DILocation(line: 1018, column: 43, scope: !2664, inlinedAt: !2598)
!2669 = !DILocation(line: 1018, column: 9, scope: !2664, inlinedAt: !2598)
!2670 = !DILocation(line: 1018, column: 81, scope: !2664, inlinedAt: !2598)
!2671 = !DILocation(line: 1019, column: 9, scope: !2664, inlinedAt: !2598)
!2672 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2658)
!2673 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2658)
!2674 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2658)
!2675 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2658)
!2676 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2658)
!2677 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2658)
!2678 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2658)
!2679 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2658)
!2680 = !DILocation(line: 1025, column: 50, scope: !2659, inlinedAt: !2598)
!2681 = !DILocation(line: 1025, column: 71, scope: !2659, inlinedAt: !2598)
!2682 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1027, column: 10, scope: !2659, inlinedAt: !2598)
!2684 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2683)
!2685 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2683)
!2686 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2683)
!2687 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2683)
!2688 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2683)
!2689 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2683)
!2690 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2683)
!2691 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2683)
!2692 = !DILocation(line: 1027, column: 56, scope: !2659, inlinedAt: !2598)
!2693 = !DILocation(line: 1027, column: 77, scope: !2659, inlinedAt: !2598)
!2694 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1028, column: 11, scope: !2659, inlinedAt: !2598)
!2696 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2695)
!2697 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2695)
!2698 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2695)
!2699 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2695)
!2700 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2695)
!2701 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2695)
!2702 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2695)
!2703 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2695)
!2704 = !DILocation(line: 1028, column: 62, scope: !2659, inlinedAt: !2598)
!2705 = !DILocation(line: 1029, column: 11, scope: !2659, inlinedAt: !2598)
!2706 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1029, column: 14, scope: !2708, inlinedAt: !2598)
!2708 = !DILexicalBlockFile(scope: !2659, file: !3, discriminator: 1)
!2709 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2707)
!2710 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2707)
!2711 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2707)
!2712 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2707)
!2713 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2707)
!2714 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2707)
!2715 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2707)
!2716 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2707)
!2717 = !DILocation(line: 1029, column: 60, scope: !2708, inlinedAt: !2598)
!2718 = !DILocation(line: 1025, column: 9, scope: !2719, inlinedAt: !2598)
!2719 = !DILexicalBlockFile(scope: !2588, file: !3, discriminator: 1)
!2720 = !DILocation(line: 1032, column: 33, scope: !2721, inlinedAt: !2598)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1032, column: 13)
!2722 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1029, column: 89)
!2723 = !DILocation(line: 1032, column: 52, scope: !2721, inlinedAt: !2598)
!2724 = !DILocation(line: 1032, column: 13, scope: !2722, inlinedAt: !2598)
!2725 = !DILocation(line: 911, column: 49, scope: !2726, inlinedAt: !2738)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 911, column: 13)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 910, column: 45)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 910, column: 5)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 910, column: 5)
!2730 = distinct !DISubprogram(name: "set_indicator_status", scope: !3, file: !3, line: 907, type: !2731, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !355, !2270, !244}
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DILocalVariable(name: "conn", arg: 1, scope: !2730, file: !3, line: 907, type: !355)
!2735 = !DILocalVariable(name: "type", arg: 2, scope: !2730, file: !3, line: 907, type: !2270)
!2736 = !DILocalVariable(name: "status", arg: 3, scope: !2730, file: !3, line: 907, type: !244)
!2737 = !DILocalVariable(name: "i", scope: !2730, file: !3, line: 909, type: !249)
!2738 = distinct !DILocation(line: 1033, column: 13, scope: !2739, inlinedAt: !2598)
!2739 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1032, column: 58)
!2740 = !DILocation(line: 911, column: 83, scope: !2726, inlinedAt: !2738)
!2741 = !DILocation(line: 911, column: 41, scope: !2726, inlinedAt: !2738)
!2742 = !DILocation(line: 911, column: 13, scope: !2727, inlinedAt: !2738)
!2743 = !DILocation(line: 912, column: 47, scope: !2744, inlinedAt: !2738)
!2744 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 911, column: 89)
!2745 = !DILocation(line: 912, column: 51, scope: !2744, inlinedAt: !2738)
!2746 = !DILocation(line: 913, column: 9, scope: !2744, inlinedAt: !2738)
!2747 = !DILocation(line: 910, column: 41, scope: !2748, inlinedAt: !2738)
!2748 = !DILexicalBlockFile(scope: !2728, file: !3, discriminator: 2)
!2749 = !DILocation(line: 909, column: 9, scope: !2730, inlinedAt: !2738)
!2750 = !DILocation(line: 910, column: 19, scope: !2751, inlinedAt: !2738)
!2751 = !DILexicalBlockFile(scope: !2728, file: !3, discriminator: 1)
!2752 = !DILocation(line: 910, column: 5, scope: !2753, inlinedAt: !2738)
!2753 = !DILexicalBlockFile(scope: !2729, file: !3, discriminator: 1)
!2754 = distinct !{!2754, !2755, !2756}
!2755 = !DILocation(line: 910, column: 5, scope: !2729)
!2756 = !DILocation(line: 914, column: 5, scope: !2729)
!2757 = !DILocation(line: 1035, column: 52, scope: !2758, inlinedAt: !2598)
!2758 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1034, column: 16)
!2759 = !DILocation(line: 1036, column: 17, scope: !2760, inlinedAt: !2598)
!2760 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 1036, column: 17)
!2761 = !DILocation(line: 1036, column: 33, scope: !2760, inlinedAt: !2598)
!2762 = !DILocation(line: 1036, column: 17, scope: !2758, inlinedAt: !2598)
!2763 = !DILocation(line: 1037, column: 57, scope: !2764, inlinedAt: !2598)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1036, column: 58)
!2765 = !DILocation(line: 1037, column: 17, scope: !2764, inlinedAt: !2598)
!2766 = !DILocation(line: 1038, column: 13, scope: !2764, inlinedAt: !2598)
!2767 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1042, column: 9, scope: !2769, inlinedAt: !2598)
!2769 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1042, column: 9)
!2770 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2768)
!2771 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2768)
!2772 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2768)
!2773 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2768)
!2774 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2768)
!2775 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2768)
!2776 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2768)
!2777 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2768)
!2778 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2768)
!2779 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2768)
!2780 = !DILocation(line: 1042, column: 50, scope: !2769, inlinedAt: !2598)
!2781 = !DILocation(line: 1042, column: 71, scope: !2769, inlinedAt: !2598)
!2782 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1043, column: 9, scope: !2769, inlinedAt: !2598)
!2784 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2783)
!2785 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2783)
!2786 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2783)
!2787 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2783)
!2788 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2783)
!2789 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2783)
!2790 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2783)
!2791 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2783)
!2792 = !DILocation(line: 1043, column: 55, scope: !2769, inlinedAt: !2598)
!2793 = !DILocation(line: 1042, column: 9, scope: !2719, inlinedAt: !2598)
!2794 = !DILocation(line: 1046, column: 59, scope: !2795, inlinedAt: !2598)
!2795 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1043, column: 82)
!2796 = !DILocation(line: 1046, column: 16, scope: !2795, inlinedAt: !2598)
!2797 = !DILocation(line: 1047, column: 5, scope: !2795, inlinedAt: !2598)
!2798 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1048, column: 9, scope: !2800, inlinedAt: !2598)
!2800 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1048, column: 9)
!2801 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2799)
!2802 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2799)
!2803 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2799)
!2804 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2799)
!2805 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2799)
!2806 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2799)
!2807 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2799)
!2808 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2799)
!2809 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2799)
!2810 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2799)
!2811 = !DILocation(line: 1048, column: 50, scope: !2800, inlinedAt: !2598)
!2812 = !DILocation(line: 1048, column: 71, scope: !2800, inlinedAt: !2598)
!2813 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1049, column: 9, scope: !2800, inlinedAt: !2598)
!2815 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2814)
!2816 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2814)
!2817 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2814)
!2818 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2814)
!2819 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2814)
!2820 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2814)
!2821 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2814)
!2822 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2814)
!2823 = !DILocation(line: 1049, column: 55, scope: !2800, inlinedAt: !2598)
!2824 = !DILocation(line: 1048, column: 9, scope: !2719, inlinedAt: !2598)
!2825 = !DILocation(line: 1052, column: 59, scope: !2826, inlinedAt: !2598)
!2826 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1049, column: 82)
!2827 = !DILocation(line: 1052, column: 16, scope: !2826, inlinedAt: !2598)
!2828 = !DILocation(line: 1053, column: 5, scope: !2826, inlinedAt: !2598)
!2829 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1054, column: 9, scope: !2831, inlinedAt: !2598)
!2831 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1054, column: 9)
!2832 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2830)
!2833 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2830)
!2834 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2830)
!2835 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2830)
!2836 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2830)
!2837 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2830)
!2838 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2830)
!2839 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2830)
!2840 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2830)
!2841 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2830)
!2842 = !DILocation(line: 1054, column: 50, scope: !2831, inlinedAt: !2598)
!2843 = !DILocation(line: 1054, column: 71, scope: !2831, inlinedAt: !2598)
!2844 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1055, column: 9, scope: !2831, inlinedAt: !2598)
!2846 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2845)
!2847 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2845)
!2848 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2845)
!2849 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2845)
!2850 = !DILocation(line: 129, column: 13, scope: !2329, inlinedAt: !2845)
!2851 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2845)
!2852 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2845)
!2853 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2845)
!2854 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2845)
!2855 = !DILocation(line: 1055, column: 55, scope: !2831, inlinedAt: !2598)
!2856 = !DILocation(line: 1054, column: 9, scope: !2719, inlinedAt: !2598)
!2857 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 1059, column: 9, scope: !2859, inlinedAt: !2598)
!2859 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1059, column: 9)
!2860 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2858)
!2861 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2858)
!2862 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2858)
!2863 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2858)
!2864 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2858)
!2865 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2858)
!2866 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2858)
!2867 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2858)
!2868 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2858)
!2869 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2858)
!2870 = !DILocation(line: 1059, column: 50, scope: !2859, inlinedAt: !2598)
!2871 = !DILocation(line: 1059, column: 69, scope: !2859, inlinedAt: !2598)
!2872 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1060, column: 9, scope: !2859, inlinedAt: !2598)
!2874 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2873)
!2875 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2873)
!2876 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2873)
!2877 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2873)
!2878 = !DILocation(line: 922, column: 13, scope: !2299, inlinedAt: !2873)
!2879 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2873)
!2880 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2873)
!2881 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2873)
!2882 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2873)
!2883 = !DILocation(line: 1060, column: 55, scope: !2859, inlinedAt: !2598)
!2884 = !DILocation(line: 1059, column: 9, scope: !2719, inlinedAt: !2598)
!2885 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1064, column: 9, scope: !2596, inlinedAt: !2598)
!2887 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2886)
!2888 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2886)
!2889 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2886)
!2890 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2886)
!2891 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2886)
!2892 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2886)
!2893 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2886)
!2894 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2886)
!2895 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2886)
!2896 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2886)
!2897 = !DILocation(line: 1064, column: 50, scope: !2596, inlinedAt: !2598)
!2898 = !DILocation(line: 1064, column: 9, scope: !2588, inlinedAt: !2598)
!2899 = !DILocation(line: 921, column: 49, scope: !2263, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 1065, column: 27, scope: !2595, inlinedAt: !2598)
!2901 = !DILocation(line: 921, column: 82, scope: !2263, inlinedAt: !2900)
!2902 = !DILocation(line: 921, column: 41, scope: !2263, inlinedAt: !2900)
!2903 = !DILocation(line: 921, column: 13, scope: !2264, inlinedAt: !2900)
!2904 = !DILocation(line: 922, column: 53, scope: !2299, inlinedAt: !2900)
!2905 = !DILocation(line: 922, column: 13, scope: !2299, inlinedAt: !2900)
!2906 = !DILocation(line: 920, column: 41, scope: !2289, inlinedAt: !2900)
!2907 = !DILocation(line: 919, column: 9, scope: !2267, inlinedAt: !2900)
!2908 = !DILocation(line: 920, column: 19, scope: !2292, inlinedAt: !2900)
!2909 = !DILocation(line: 920, column: 5, scope: !2294, inlinedAt: !2900)
!2910 = !DILocation(line: 1065, column: 12, scope: !2595, inlinedAt: !2598)
!2911 = !DILocation(line: 124, column: 43, scope: !2307, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 1066, column: 27, scope: !2595, inlinedAt: !2598)
!2913 = !DILocation(line: 124, column: 62, scope: !2307, inlinedAt: !2912)
!2914 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2912)
!2915 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2912)
!2916 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2912)
!2917 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2912)
!2918 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2912)
!2919 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2912)
!2920 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2912)
!2921 = !DILocation(line: 129, column: 13, scope: !2329, inlinedAt: !2912)
!2922 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2912)
!2923 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2912)
!2924 = !DILocation(line: 1066, column: 12, scope: !2595, inlinedAt: !2598)
!2925 = !DILocation(line: 1067, column: 29, scope: !2926, inlinedAt: !2598)
!2926 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1067, column: 13)
!2927 = !DILocation(line: 1067, column: 26, scope: !2926, inlinedAt: !2598)
!2928 = !DILocation(line: 1067, column: 13, scope: !2595, inlinedAt: !2598)
!2929 = !DILocation(line: 1069, column: 17, scope: !2930, inlinedAt: !2598)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1069, column: 17)
!2931 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1067, column: 43)
!2932 = !DILocation(line: 1069, column: 33, scope: !2930, inlinedAt: !2598)
!2933 = !DILocation(line: 1069, column: 17, scope: !2931, inlinedAt: !2598)
!2934 = !DILocation(line: 1070, column: 57, scope: !2935, inlinedAt: !2598)
!2935 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1069, column: 58)
!2936 = !DILocation(line: 1070, column: 17, scope: !2935, inlinedAt: !2598)
!2937 = !DILocation(line: 1071, column: 13, scope: !2935, inlinedAt: !2598)
!2938 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 1075, column: 9, scope: !2940, inlinedAt: !2598)
!2940 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1075, column: 9)
!2941 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2939)
!2942 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2939)
!2943 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2939)
!2944 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2939)
!2945 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2939)
!2946 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2939)
!2947 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2939)
!2948 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2939)
!2949 = !DILocation(line: 1075, column: 50, scope: !2940, inlinedAt: !2598)
!2950 = !DILocation(line: 1075, column: 9, scope: !2588, inlinedAt: !2598)
!2951 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 1079, column: 13, scope: !2953, inlinedAt: !2598)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1079, column: 13)
!2954 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1075, column: 70)
!2955 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2952)
!2956 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2952)
!2957 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2952)
!2958 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2952)
!2959 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2952)
!2960 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2952)
!2961 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2952)
!2962 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2952)
!2963 = !DILocation(line: 1079, column: 59, scope: !2953, inlinedAt: !2598)
!2964 = !DILocation(line: 1079, column: 13, scope: !2954, inlinedAt: !2598)
!2965 = !DILocation(line: 1080, column: 52, scope: !2966, inlinedAt: !2598)
!2966 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1079, column: 86)
!2967 = !DILocation(line: 1081, column: 9, scope: !2966, inlinedAt: !2598)
!2968 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1082, column: 13, scope: !2970, inlinedAt: !2598)
!2970 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1082, column: 13)
!2971 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2969)
!2972 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2969)
!2973 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2969)
!2974 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2969)
!2975 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2969)
!2976 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2969)
!2977 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2969)
!2978 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2969)
!2979 = !DILocation(line: 1082, column: 59, scope: !2970, inlinedAt: !2598)
!2980 = !DILocation(line: 1082, column: 13, scope: !2954, inlinedAt: !2598)
!2981 = !DILocation(line: 1083, column: 52, scope: !2982, inlinedAt: !2598)
!2982 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 1082, column: 86)
!2983 = !DILocation(line: 1084, column: 9, scope: !2982, inlinedAt: !2598)
!2984 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1085, column: 13, scope: !2986, inlinedAt: !2598)
!2986 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1085, column: 13)
!2987 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !2985)
!2988 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !2985)
!2989 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !2985)
!2990 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !2985)
!2991 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !2985)
!2992 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !2985)
!2993 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !2985)
!2994 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !2985)
!2995 = !DILocation(line: 1085, column: 58, scope: !2986, inlinedAt: !2598)
!2996 = !DILocation(line: 1085, column: 13, scope: !2954, inlinedAt: !2598)
!2997 = !DILocation(line: 1086, column: 52, scope: !2998, inlinedAt: !2598)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1085, column: 80)
!2999 = !DILocation(line: 1087, column: 9, scope: !2998, inlinedAt: !2598)
!3000 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1088, column: 13, scope: !3002, inlinedAt: !2598)
!3002 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1088, column: 13)
!3003 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !3001)
!3004 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !3001)
!3005 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !3001)
!3006 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !3001)
!3007 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !3001)
!3008 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !3001)
!3009 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !3001)
!3010 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !3001)
!3011 = !DILocation(line: 1088, column: 58, scope: !3002, inlinedAt: !2598)
!3012 = !DILocation(line: 1088, column: 13, scope: !2954, inlinedAt: !2598)
!3013 = !DILocation(line: 1089, column: 52, scope: !3014, inlinedAt: !2598)
!3014 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 1088, column: 80)
!3015 = !DILocation(line: 1090, column: 9, scope: !3014, inlinedAt: !2598)
!3016 = !DILocation(line: 128, column: 49, scope: !2303, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 1091, column: 13, scope: !3018, inlinedAt: !2598)
!3018 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1091, column: 13)
!3019 = !DILocation(line: 128, column: 83, scope: !2303, inlinedAt: !3017)
!3020 = !DILocation(line: 128, column: 41, scope: !2303, inlinedAt: !3017)
!3021 = !DILocation(line: 128, column: 13, scope: !2304, inlinedAt: !3017)
!3022 = !DILocation(line: 127, column: 41, scope: !2319, inlinedAt: !3017)
!3023 = !DILocation(line: 126, column: 9, scope: !2307, inlinedAt: !3017)
!3024 = !DILocation(line: 127, column: 19, scope: !2322, inlinedAt: !3017)
!3025 = !DILocation(line: 127, column: 5, scope: !2324, inlinedAt: !3017)
!3026 = !DILocation(line: 129, column: 54, scope: !2329, inlinedAt: !3017)
!3027 = !DILocation(line: 1091, column: 59, scope: !3018, inlinedAt: !2598)
!3028 = !DILocation(line: 1091, column: 13, scope: !2954, inlinedAt: !2598)
!3029 = !DILocation(line: 1092, column: 52, scope: !3030, inlinedAt: !2598)
!3030 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1091, column: 86)
!3031 = !DILocation(line: 1093, column: 9, scope: !3030, inlinedAt: !2598)
!3032 = !DILocation(line: 1094, column: 13, scope: !3033, inlinedAt: !2598)
!3033 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1094, column: 13)
!3034 = !DILocation(line: 1094, column: 29, scope: !3033, inlinedAt: !2598)
!3035 = !DILocation(line: 1094, column: 13, scope: !2954, inlinedAt: !2598)
!3036 = !DILocation(line: 1095, column: 53, scope: !3037, inlinedAt: !2598)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 1094, column: 54)
!3038 = !DILocation(line: 1095, column: 130, scope: !3037, inlinedAt: !2598)
!3039 = !DILocation(line: 1095, column: 13, scope: !3037, inlinedAt: !2598)
!3040 = !DILocation(line: 1096, column: 9, scope: !3037, inlinedAt: !2598)
!3041 = !DILocation(line: 1099, column: 9, scope: !3042, inlinedAt: !2598)
!3042 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1099, column: 9)
!3043 = !DILocation(line: 1099, column: 9, scope: !2588, inlinedAt: !2598)
!3044 = !DILocation(line: 1100, column: 13, scope: !3045, inlinedAt: !2598)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1100, column: 13)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1099, column: 15)
!3047 = !DILocation(line: 1100, column: 29, scope: !3045, inlinedAt: !2598)
!3048 = !DILocation(line: 1100, column: 13, scope: !3046, inlinedAt: !2598)
!3049 = !DILocation(line: 1101, column: 51, scope: !3050, inlinedAt: !2598)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1100, column: 54)
!3051 = !DILocation(line: 1102, column: 29, scope: !3050, inlinedAt: !2598)
!3052 = !DILocation(line: 1102, column: 53, scope: !3050, inlinedAt: !2598)
!3053 = !DILocation(line: 1102, column: 13, scope: !3050, inlinedAt: !2598)
!3054 = !DILocation(line: 1103, column: 9, scope: !3050, inlinedAt: !2598)
!3055 = !DILocation(line: 1106, column: 39, scope: !2588, inlinedAt: !2598)
!3056 = !DILocation(line: 1106, column: 5, scope: !2588, inlinedAt: !2598)
!3057 = !DILocation(line: 1106, column: 77, scope: !2588, inlinedAt: !2598)
!3058 = !DILocation(line: 1107, column: 1, scope: !2588, inlinedAt: !2598)
!3059 = !DILocalVariable(name: "conn", arg: 1, scope: !3060, file: !3, line: 1203, type: !355)
!3060 = distinct !DISubprogram(name: "parse_vgs_rsp_param", scope: !3, file: !3, line: 1203, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3061)
!3061 = !{!3059, !3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3062 = !DILocalVariable(name: "packet", arg: 2, scope: !3060, file: !3, line: 1203, type: !1745)
!3063 = !DILocalVariable(name: "size", arg: 3, scope: !3060, file: !3, line: 1203, type: !240)
!3064 = !DILocalVariable(name: "pos", scope: !3060, file: !3, line: 1206, type: !249)
!3065 = !DILocalVariable(name: "para_pos_end", scope: !3060, file: !3, line: 1207, type: !249)
!3066 = !DILocalVariable(name: "para_pos_beg", scope: !3060, file: !3, line: 1208, type: !249)
!3067 = !DILocalVariable(name: "speak_gain", scope: !3060, file: !3, line: 1209, type: !249)
!3068 = !DILocalVariable(name: "vol", scope: !3060, file: !3, line: 1210, type: !266)
!3069 = !DILocation(line: 1203, column: 43, scope: !3060, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1667, column: 15, scope: !1754, inlinedAt: !1764)
!3071 = !DILocation(line: 1203, column: 55, scope: !3060, inlinedAt: !3070)
!3072 = !DILocation(line: 1203, column: 67, scope: !3060, inlinedAt: !3070)
!3073 = !DILocation(line: 1206, column: 9, scope: !3060, inlinedAt: !3070)
!3074 = !DILocation(line: 1207, column: 9, scope: !3060, inlinedAt: !3070)
!3075 = !DILocation(line: 1208, column: 9, scope: !3060, inlinedAt: !3070)
!3076 = !DILocation(line: 1209, column: 5, scope: !3060, inlinedAt: !3070)
!3077 = !DILocation(line: 1209, column: 9, scope: !3060, inlinedAt: !3070)
!3078 = !DILocation(line: 1210, column: 9, scope: !3060, inlinedAt: !3070)
!3079 = !DILocation(line: 1212, column: 5, scope: !3060, inlinedAt: !3070)
!3080 = !DILocation(line: 1212, column: 13, scope: !3081, inlinedAt: !3070)
!3081 = !DILexicalBlockFile(scope: !3060, file: !3, discriminator: 1)
!3082 = !DILocation(line: 1212, column: 5, scope: !3083, inlinedAt: !3070)
!3083 = !DILexicalBlockFile(scope: !3060, file: !3, discriminator: 3)
!3084 = !DILocation(line: 1219, column: 16, scope: !3085, inlinedAt: !3070)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1219, column: 13)
!3086 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1218, column: 33)
!3087 = !DILocation(line: 1213, column: 16, scope: !3088, inlinedAt: !3070)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1213, column: 13)
!3089 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1212, column: 38)
!3090 = !DILocation(line: 1213, column: 19, scope: !3088, inlinedAt: !3070)
!3091 = !DILocation(line: 1213, column: 13, scope: !3089, inlinedAt: !3070)
!3092 = distinct !{!3092, !3093, !3094}
!3093 = !DILocation(line: 1212, column: 5, scope: !3060)
!3094 = !DILocation(line: 1216, column: 5, scope: !3060)
!3095 = !DILocation(line: 1219, column: 19, scope: !3085, inlinedAt: !3070)
!3096 = !DILocation(line: 1219, column: 13, scope: !3086, inlinedAt: !3070)
!3097 = distinct !{!3097, !3098, !3099}
!3098 = !DILocation(line: 1218, column: 5, scope: !3060)
!3099 = !DILocation(line: 1222, column: 5, scope: !3060)
!3100 = !DILocation(line: 1218, column: 24, scope: !3081, inlinedAt: !3070)
!3101 = !DILocation(line: 1218, column: 5, scope: !3081, inlinedAt: !3070)
!3102 = !DILocation(line: 1225, column: 22, scope: !3103, inlinedAt: !3070)
!3103 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1225, column: 9)
!3104 = !DILocation(line: 1225, column: 9, scope: !3060, inlinedAt: !3070)
!3105 = !DILocation(line: 1226, column: 85, scope: !3106, inlinedAt: !3070)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1225, column: 38)
!3107 = !DILocation(line: 1226, column: 15, scope: !3106, inlinedAt: !3070)
!3108 = !DILocation(line: 1228, column: 5, scope: !3106, inlinedAt: !3070)
!3109 = !DILocation(line: 1229, column: 13, scope: !3110, inlinedAt: !3070)
!3110 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1229, column: 9)
!3111 = !DILocation(line: 1229, column: 9, scope: !3060, inlinedAt: !3070)
!3112 = !DILocation(line: 1230, column: 13, scope: !3113, inlinedAt: !3070)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1230, column: 13)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1229, column: 19)
!3115 = !DILocation(line: 1230, column: 24, scope: !3113, inlinedAt: !3070)
!3116 = !DILocation(line: 1230, column: 13, scope: !3114, inlinedAt: !3070)
!3117 = !DILocation(line: 1231, column: 48, scope: !3118, inlinedAt: !3070)
!3118 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 1230, column: 30)
!3119 = !DILocation(line: 1232, column: 9, scope: !3118, inlinedAt: !3070)
!3120 = !DILocation(line: 1233, column: 48, scope: !3121, inlinedAt: !3070)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 1232, column: 16)
!3122 = !DILocation(line: 1235, column: 58, scope: !3114, inlinedAt: !3070)
!3123 = !DILocation(line: 1235, column: 15, scope: !3114, inlinedAt: !3070)
!3124 = !DILocation(line: 1236, column: 13, scope: !3125, inlinedAt: !3070)
!3125 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1236, column: 13)
!3126 = !DILocation(line: 1236, column: 29, scope: !3125, inlinedAt: !3070)
!3127 = !DILocation(line: 1236, column: 13, scope: !3114, inlinedAt: !3070)
!3128 = !DILocation(line: 1237, column: 13, scope: !3129, inlinedAt: !3070)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 1236, column: 54)
!3130 = !DILocation(line: 1238, column: 9, scope: !3129, inlinedAt: !3070)
!3131 = !DILocation(line: 1239, column: 9, scope: !3114, inlinedAt: !3070)
!3132 = !DILocation(line: 1241, column: 5, scope: !3114, inlinedAt: !3070)
!3133 = !DILocation(line: 1243, column: 1, scope: !3060, inlinedAt: !3070)
!3134 = !DILocation(line: 1668, column: 9, scope: !1754, inlinedAt: !1764)
!3135 = !DILocation(line: 1670, column: 13, scope: !1754, inlinedAt: !1764)
!3136 = !DILocalVariable(name: "conn", arg: 1, scope: !3137, file: !3, line: 1245, type: !355)
!3137 = distinct !DISubprogram(name: "parse_vgm_rsp_param", scope: !3, file: !3, line: 1245, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3138)
!3138 = !{!3136, !3139, !3140, !3141, !3142, !3143, !3144}
!3139 = !DILocalVariable(name: "packet", arg: 2, scope: !3137, file: !3, line: 1245, type: !1745)
!3140 = !DILocalVariable(name: "size", arg: 3, scope: !3137, file: !3, line: 1245, type: !240)
!3141 = !DILocalVariable(name: "pos", scope: !3137, file: !3, line: 1248, type: !249)
!3142 = !DILocalVariable(name: "para_pos_end", scope: !3137, file: !3, line: 1249, type: !249)
!3143 = !DILocalVariable(name: "para_pos_beg", scope: !3137, file: !3, line: 1250, type: !249)
!3144 = !DILocalVariable(name: "mic_gain", scope: !3137, file: !3, line: 1251, type: !249)
!3145 = !DILocation(line: 1245, column: 43, scope: !3137, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1671, column: 19, scope: !3147, inlinedAt: !1764)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1670, column: 35)
!3148 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1670, column: 13)
!3149 = !DILocation(line: 1245, column: 55, scope: !3137, inlinedAt: !3146)
!3150 = !DILocation(line: 1245, column: 67, scope: !3137, inlinedAt: !3146)
!3151 = !DILocation(line: 1248, column: 9, scope: !3137, inlinedAt: !3146)
!3152 = !DILocation(line: 1249, column: 9, scope: !3137, inlinedAt: !3146)
!3153 = !DILocation(line: 1250, column: 9, scope: !3137, inlinedAt: !3146)
!3154 = !DILocation(line: 1251, column: 5, scope: !3137, inlinedAt: !3146)
!3155 = !DILocation(line: 1251, column: 9, scope: !3137, inlinedAt: !3146)
!3156 = !DILocation(line: 1252, column: 5, scope: !3137, inlinedAt: !3146)
!3157 = !DILocation(line: 1252, column: 13, scope: !3158, inlinedAt: !3146)
!3158 = !DILexicalBlockFile(scope: !3137, file: !3, discriminator: 1)
!3159 = !DILocation(line: 1252, column: 5, scope: !3160, inlinedAt: !3146)
!3160 = !DILexicalBlockFile(scope: !3137, file: !3, discriminator: 3)
!3161 = !DILocation(line: 1259, column: 16, scope: !3162, inlinedAt: !3146)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 1259, column: 13)
!3163 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1258, column: 33)
!3164 = !DILocation(line: 1253, column: 16, scope: !3165, inlinedAt: !3146)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 1253, column: 13)
!3166 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1252, column: 38)
!3167 = !DILocation(line: 1253, column: 19, scope: !3165, inlinedAt: !3146)
!3168 = !DILocation(line: 1253, column: 13, scope: !3166, inlinedAt: !3146)
!3169 = distinct !{!3169, !3170, !3171}
!3170 = !DILocation(line: 1252, column: 5, scope: !3137)
!3171 = !DILocation(line: 1256, column: 5, scope: !3137)
!3172 = !DILocation(line: 1259, column: 19, scope: !3162, inlinedAt: !3146)
!3173 = !DILocation(line: 1259, column: 13, scope: !3163, inlinedAt: !3146)
!3174 = distinct !{!3174, !3175, !3176}
!3175 = !DILocation(line: 1258, column: 5, scope: !3137)
!3176 = !DILocation(line: 1262, column: 5, scope: !3137)
!3177 = !DILocation(line: 1258, column: 24, scope: !3158, inlinedAt: !3146)
!3178 = !DILocation(line: 1258, column: 5, scope: !3158, inlinedAt: !3146)
!3179 = !DILocation(line: 1265, column: 22, scope: !3180, inlinedAt: !3146)
!3180 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1265, column: 9)
!3181 = !DILocation(line: 1265, column: 9, scope: !3137, inlinedAt: !3146)
!3182 = !DILocation(line: 1266, column: 83, scope: !3183, inlinedAt: !3146)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 1265, column: 38)
!3184 = !DILocation(line: 1266, column: 15, scope: !3183, inlinedAt: !3146)
!3185 = !DILocation(line: 1267, column: 5, scope: !3183, inlinedAt: !3146)
!3186 = !DILocation(line: 1268, column: 13, scope: !3187, inlinedAt: !3146)
!3187 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1268, column: 9)
!3188 = !DILocation(line: 1268, column: 9, scope: !3137, inlinedAt: !3146)
!3189 = !DILocation(line: 1269, column: 13, scope: !3190, inlinedAt: !3146)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1269, column: 13)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1268, column: 19)
!3192 = !DILocation(line: 1269, column: 22, scope: !3190, inlinedAt: !3146)
!3193 = !DILocation(line: 1269, column: 13, scope: !3191, inlinedAt: !3146)
!3194 = !DILocation(line: 1270, column: 46, scope: !3195, inlinedAt: !3146)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 1269, column: 28)
!3196 = !DILocation(line: 1271, column: 9, scope: !3195, inlinedAt: !3146)
!3197 = !DILocation(line: 1272, column: 46, scope: !3198, inlinedAt: !3146)
!3198 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 1271, column: 16)
!3199 = !DILocation(line: 1276, column: 13, scope: !3137, inlinedAt: !3146)
!3200 = !DILocation(line: 1277, column: 1, scope: !3137, inlinedAt: !3146)
!3201 = !DILocation(line: 1672, column: 9, scope: !3147, inlinedAt: !1764)
!3202 = !DILocalVariable(name: "conn", arg: 1, scope: !3203, file: !3, line: 1310, type: !355)
!3203 = distinct !DISubprogram(name: "parse_bsir_rsp_param", scope: !3, file: !3, line: 1310, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3204)
!3204 = !{!3202, !3205, !3206, !3207, !3208, !3209, !3210}
!3205 = !DILocalVariable(name: "packet", arg: 2, scope: !3203, file: !3, line: 1310, type: !1745)
!3206 = !DILocalVariable(name: "size", arg: 3, scope: !3203, file: !3, line: 1310, type: !240)
!3207 = !DILocalVariable(name: "pos", scope: !3203, file: !3, line: 1313, type: !249)
!3208 = !DILocalVariable(name: "para_pos_end", scope: !3203, file: !3, line: 1314, type: !249)
!3209 = !DILocalVariable(name: "para_pos_beg", scope: !3203, file: !3, line: 1315, type: !249)
!3210 = !DILocalVariable(name: "provide_ringtone", scope: !3203, file: !3, line: 1316, type: !249)
!3211 = !DILocation(line: 1310, column: 44, scope: !3203, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1678, column: 15, scope: !1754, inlinedAt: !1764)
!3213 = !DILocation(line: 1310, column: 56, scope: !3203, inlinedAt: !3212)
!3214 = !DILocation(line: 1310, column: 68, scope: !3203, inlinedAt: !3212)
!3215 = !DILocation(line: 1313, column: 9, scope: !3203, inlinedAt: !3212)
!3216 = !DILocation(line: 1314, column: 9, scope: !3203, inlinedAt: !3212)
!3217 = !DILocation(line: 1315, column: 9, scope: !3203, inlinedAt: !3212)
!3218 = !DILocation(line: 1316, column: 5, scope: !3203, inlinedAt: !3212)
!3219 = !DILocation(line: 1316, column: 9, scope: !3203, inlinedAt: !3212)
!3220 = !DILocation(line: 1318, column: 5, scope: !3203, inlinedAt: !3212)
!3221 = !DILocation(line: 1318, column: 13, scope: !3222, inlinedAt: !3212)
!3222 = !DILexicalBlockFile(scope: !3203, file: !3, discriminator: 1)
!3223 = !DILocation(line: 1318, column: 5, scope: !3224, inlinedAt: !3212)
!3224 = !DILexicalBlockFile(scope: !3203, file: !3, discriminator: 3)
!3225 = !DILocation(line: 1325, column: 16, scope: !3226, inlinedAt: !3212)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1325, column: 13)
!3227 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1324, column: 33)
!3228 = !DILocation(line: 1319, column: 16, scope: !3229, inlinedAt: !3212)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1319, column: 13)
!3230 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1318, column: 38)
!3231 = !DILocation(line: 1319, column: 19, scope: !3229, inlinedAt: !3212)
!3232 = !DILocation(line: 1319, column: 13, scope: !3230, inlinedAt: !3212)
!3233 = distinct !{!3233, !3234, !3235}
!3234 = !DILocation(line: 1318, column: 5, scope: !3203)
!3235 = !DILocation(line: 1322, column: 5, scope: !3203)
!3236 = !DILocation(line: 1325, column: 19, scope: !3226, inlinedAt: !3212)
!3237 = !DILocation(line: 1325, column: 13, scope: !3227, inlinedAt: !3212)
!3238 = distinct !{!3238, !3239, !3240}
!3239 = !DILocation(line: 1324, column: 5, scope: !3203)
!3240 = !DILocation(line: 1328, column: 5, scope: !3203)
!3241 = !DILocation(line: 1324, column: 24, scope: !3222, inlinedAt: !3212)
!3242 = !DILocation(line: 1324, column: 5, scope: !3222, inlinedAt: !3212)
!3243 = !DILocation(line: 1331, column: 22, scope: !3244, inlinedAt: !3212)
!3244 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1331, column: 9)
!3245 = !DILocation(line: 1331, column: 9, scope: !3203, inlinedAt: !3212)
!3246 = !DILocation(line: 1332, column: 91, scope: !3247, inlinedAt: !3212)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1331, column: 38)
!3248 = !DILocation(line: 1332, column: 15, scope: !3247, inlinedAt: !3212)
!3249 = !DILocation(line: 1333, column: 5, scope: !3247, inlinedAt: !3212)
!3250 = !DILocation(line: 1334, column: 13, scope: !3251, inlinedAt: !3212)
!3251 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1334, column: 9)
!3252 = !DILocation(line: 1334, column: 9, scope: !3203, inlinedAt: !3212)
!3253 = !DILocation(line: 1335, column: 13, scope: !3254, inlinedAt: !3212)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1335, column: 13)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 1334, column: 19)
!3256 = !DILocation(line: 1335, column: 29, scope: !3254, inlinedAt: !3212)
!3257 = !DILocation(line: 1335, column: 13, scope: !3255, inlinedAt: !3212)
!3258 = !DILocation(line: 1336, column: 53, scope: !3259, inlinedAt: !3212)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1335, column: 54)
!3260 = !DILocation(line: 1336, column: 107, scope: !3259, inlinedAt: !3212)
!3261 = !DILocation(line: 1336, column: 13, scope: !3259, inlinedAt: !3212)
!3262 = !DILocation(line: 1337, column: 9, scope: !3259, inlinedAt: !3212)
!3263 = !DILocation(line: 1341, column: 1, scope: !3203, inlinedAt: !3212)
!3264 = !DILocation(line: 1679, column: 9, scope: !1754, inlinedAt: !1764)
!3265 = !DILocalVariable(name: "pos", scope: !3266, file: !3, line: 1347, type: !249)
!3266 = distinct !DISubprogram(name: "parse_clcc_clip_rsp_param", scope: !3, file: !3, line: 1343, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3267)
!3267 = !{!3268, !3269, !3270, !3265, !3271, !3272, !3273}
!3268 = !DILocalVariable(name: "conn", arg: 1, scope: !3266, file: !3, line: 1343, type: !355)
!3269 = !DILocalVariable(name: "packet", arg: 2, scope: !3266, file: !3, line: 1343, type: !1745)
!3270 = !DILocalVariable(name: "size", arg: 3, scope: !3266, file: !3, line: 1343, type: !240)
!3271 = !DILocalVariable(name: "para_pos_end", scope: !3266, file: !3, line: 1348, type: !249)
!3272 = !DILocalVariable(name: "para_pos_beg", scope: !3266, file: !3, line: 1349, type: !249)
!3273 = !DILocalVariable(name: "phone_num_len", scope: !3266, file: !3, line: 1350, type: !244)
!3274 = !DILocation(line: 1347, column: 9, scope: !3266, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1683, column: 15, scope: !1754, inlinedAt: !1764)
!3276 = !DILocation(line: 1348, column: 9, scope: !3266, inlinedAt: !3275)
!3277 = !DILocation(line: 1349, column: 9, scope: !3266, inlinedAt: !3275)
!3278 = !DILocation(line: 1350, column: 9, scope: !3266, inlinedAt: !3275)
!3279 = !DILocation(line: 1358, column: 5, scope: !3266, inlinedAt: !3275)
!3280 = !DILocation(line: 1358, column: 12, scope: !3281, inlinedAt: !3275)
!3281 = !DILexicalBlockFile(scope: !3266, file: !3, discriminator: 1)
!3282 = !DILocation(line: 1358, column: 24, scope: !3281, inlinedAt: !3275)
!3283 = !DILocation(line: 1358, column: 5, scope: !3281, inlinedAt: !3275)
!3284 = !DILocation(line: 1359, column: 19, scope: !3285, inlinedAt: !3275)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1359, column: 13)
!3286 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1358, column: 32)
!3287 = !DILocation(line: 1359, column: 13, scope: !3286, inlinedAt: !3275)
!3288 = !DILocation(line: 1367, column: 12, scope: !3281, inlinedAt: !3275)
!3289 = !DILocation(line: 1367, column: 24, scope: !3281, inlinedAt: !3275)
!3290 = !DILocation(line: 1367, column: 5, scope: !3281, inlinedAt: !3275)
!3291 = !DILocation(line: 1368, column: 16, scope: !3292, inlinedAt: !3275)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1368, column: 13)
!3293 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1367, column: 32)
!3294 = !DILocation(line: 1368, column: 19, scope: !3292, inlinedAt: !3275)
!3295 = !DILocation(line: 1368, column: 13, scope: !3293, inlinedAt: !3275)
!3296 = !DILocation(line: 1373, column: 34, scope: !3266, inlinedAt: !3275)
!3297 = !DILocation(line: 1374, column: 9, scope: !3298, inlinedAt: !3275)
!3298 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1374, column: 9)
!3299 = !DILocation(line: 1374, column: 27, scope: !3298, inlinedAt: !3275)
!3300 = !DILocation(line: 1375, column: 30, scope: !3301, inlinedAt: !3275)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1374, column: 50)
!3302 = !DILocation(line: 1376, column: 9, scope: !3301, inlinedAt: !3275)
!3303 = !DILocation(line: 1377, column: 43, scope: !3301, inlinedAt: !3275)
!3304 = !DILocation(line: 1377, column: 79, scope: !3301, inlinedAt: !3275)
!3305 = !DILocation(line: 1377, column: 9, scope: !3301, inlinedAt: !3275)
!3306 = !DILocation(line: 1379, column: 33, scope: !3301, inlinedAt: !3275)
!3307 = !DILocation(line: 1379, column: 130, scope: !3301, inlinedAt: !3275)
!3308 = !DILocation(line: 1379, column: 113, scope: !3301, inlinedAt: !3275)
!3309 = !DILocation(line: 1379, column: 9, scope: !3301, inlinedAt: !3275)
!3310 = !DILocation(line: 1380, column: 9, scope: !3301, inlinedAt: !3275)
!3311 = !DILocation(line: 1382, column: 5, scope: !3301, inlinedAt: !3275)
!3312 = !DILocalVariable(name: "conn", arg: 1, scope: !3313, file: !3, line: 1551, type: !355)
!3313 = distinct !DISubprogram(name: "parse_cnum_rsp_param", scope: !3, file: !3, line: 1551, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3314)
!3314 = !{!3312, !3315, !3316}
!3315 = !DILocalVariable(name: "packet", arg: 2, scope: !3313, file: !3, line: 1551, type: !1745)
!3316 = !DILocalVariable(name: "size", arg: 3, scope: !3313, file: !3, line: 1551, type: !240)
!3317 = !DILocation(line: 1551, column: 44, scope: !3313, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 1694, column: 15, scope: !1754, inlinedAt: !1764)
!3319 = !DILocation(line: 1554, column: 5, scope: !3320, inlinedAt: !3318)
!3320 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 1554, column: 5)
!3321 = !DILocation(line: 1554, column: 5, scope: !3313, inlinedAt: !3318)
!3322 = !DILocation(line: 1554, column: 5, scope: !3323, inlinedAt: !3318)
!3323 = !DILexicalBlockFile(scope: !3320, file: !3, discriminator: 1)
!3324 = !DILocalVariable(name: "conn", arg: 1, scope: !3325, file: !3, line: 1470, type: !355)
!3325 = distinct !DISubprogram(name: "parse_ccwa_rsp_param", scope: !3, file: !3, line: 1470, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1471, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3326)
!3326 = !{!3324, !3327, !3328, !3329, !3330, !3331, !3332}
!3327 = !DILocalVariable(name: "packet", arg: 2, scope: !3325, file: !3, line: 1470, type: !1745)
!3328 = !DILocalVariable(name: "size", arg: 3, scope: !3325, file: !3, line: 1470, type: !240)
!3329 = !DILocalVariable(name: "pos", scope: !3325, file: !3, line: 1472, type: !249)
!3330 = !DILocalVariable(name: "para_pos_end", scope: !3325, file: !3, line: 1473, type: !249)
!3331 = !DILocalVariable(name: "para_pos_beg", scope: !3325, file: !3, line: 1474, type: !249)
!3332 = !DILocalVariable(name: "phone_num_len", scope: !3325, file: !3, line: 1475, type: !244)
!3333 = !DILocation(line: 1470, column: 44, scope: !3325, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1700, column: 15, scope: !1754, inlinedAt: !1764)
!3335 = !DILocation(line: 1470, column: 56, scope: !3325, inlinedAt: !3334)
!3336 = !DILocation(line: 1470, column: 68, scope: !3325, inlinedAt: !3334)
!3337 = !DILocation(line: 1472, column: 9, scope: !3325, inlinedAt: !3334)
!3338 = !DILocation(line: 1473, column: 9, scope: !3325, inlinedAt: !3334)
!3339 = !DILocation(line: 1474, column: 9, scope: !3325, inlinedAt: !3334)
!3340 = !DILocation(line: 1475, column: 9, scope: !3325, inlinedAt: !3334)
!3341 = !DILocation(line: 1476, column: 5, scope: !3325, inlinedAt: !3334)
!3342 = !DILocation(line: 1476, column: 12, scope: !3343, inlinedAt: !3334)
!3343 = !DILexicalBlockFile(scope: !3325, file: !3, discriminator: 1)
!3344 = !DILocation(line: 1476, column: 24, scope: !3343, inlinedAt: !3334)
!3345 = !DILocation(line: 1476, column: 5, scope: !3343, inlinedAt: !3334)
!3346 = !DILocation(line: 1477, column: 19, scope: !3347, inlinedAt: !3334)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1477, column: 13)
!3348 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1476, column: 32)
!3349 = !DILocation(line: 1477, column: 13, scope: !3348, inlinedAt: !3334)
!3350 = !DILocation(line: 1484, column: 12, scope: !3343, inlinedAt: !3334)
!3351 = !DILocation(line: 1484, column: 24, scope: !3343, inlinedAt: !3334)
!3352 = !DILocation(line: 1484, column: 5, scope: !3343, inlinedAt: !3334)
!3353 = !DILocation(line: 1485, column: 16, scope: !3354, inlinedAt: !3334)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1485, column: 13)
!3355 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1484, column: 32)
!3356 = !DILocation(line: 1485, column: 19, scope: !3354, inlinedAt: !3334)
!3357 = !DILocation(line: 1485, column: 13, scope: !3355, inlinedAt: !3334)
!3358 = !DILocation(line: 1492, column: 34, scope: !3325, inlinedAt: !3334)
!3359 = !DILocation(line: 1494, column: 9, scope: !3360, inlinedAt: !3334)
!3360 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1494, column: 9)
!3361 = !DILocation(line: 1494, column: 27, scope: !3360, inlinedAt: !3334)
!3362 = !DILocation(line: 1495, column: 30, scope: !3363, inlinedAt: !3334)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1494, column: 50)
!3364 = !DILocation(line: 1496, column: 9, scope: !3363, inlinedAt: !3334)
!3365 = !DILocation(line: 1497, column: 43, scope: !3363, inlinedAt: !3334)
!3366 = !DILocation(line: 1497, column: 79, scope: !3363, inlinedAt: !3334)
!3367 = !DILocation(line: 1497, column: 9, scope: !3363, inlinedAt: !3334)
!3368 = !DILocation(line: 1498, column: 33, scope: !3363, inlinedAt: !3334)
!3369 = !DILocation(line: 1498, column: 130, scope: !3363, inlinedAt: !3334)
!3370 = !DILocation(line: 1498, column: 113, scope: !3363, inlinedAt: !3334)
!3371 = !DILocation(line: 1498, column: 9, scope: !3363, inlinedAt: !3334)
!3372 = !DILocation(line: 1499, column: 9, scope: !3363, inlinedAt: !3334)
!3373 = !DILocation(line: 1501, column: 5, scope: !3363, inlinedAt: !3334)
!3374 = !DILocalVariable(name: "size", arg: 3, scope: !3375, file: !3, line: 1557, type: !240)
!3375 = distinct !DISubprogram(name: "parse_bvra_rsp_param", scope: !3, file: !3, line: 1557, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3376)
!3376 = !{!3377, !3378, !3374}
!3377 = !DILocalVariable(name: "conn", arg: 1, scope: !3375, file: !3, line: 1557, type: !355)
!3378 = !DILocalVariable(name: "packet", arg: 2, scope: !3375, file: !3, line: 1557, type: !1745)
!3379 = !DILocation(line: 1557, column: 68, scope: !3375, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 1707, column: 15, scope: !1754, inlinedAt: !1764)
!3381 = !DILocation(line: 1560, column: 43, scope: !3375, inlinedAt: !3380)
!3382 = !DILocation(line: 1560, column: 25, scope: !3375, inlinedAt: !3380)
!3383 = !DILocation(line: 1560, column: 41, scope: !3375, inlinedAt: !3380)
!3384 = !DILocation(line: 1562, column: 70, scope: !3375, inlinedAt: !3380)
!3385 = !DILocation(line: 1562, column: 5, scope: !3375, inlinedAt: !3380)
!3386 = !DILocation(line: 1564, column: 78, scope: !3375, inlinedAt: !3380)
!3387 = !DILocation(line: 1564, column: 58, scope: !3375, inlinedAt: !3380)
!3388 = !DILocation(line: 1563, column: 5, scope: !3375, inlinedAt: !3380)
!3389 = !DILocation(line: 1565, column: 101, scope: !3375, inlinedAt: !3380)
!3390 = !DILocation(line: 1565, column: 81, scope: !3375, inlinedAt: !3380)
!3391 = !DILocation(line: 1565, column: 5, scope: !3375, inlinedAt: !3380)
!3392 = !DILocation(line: 1708, column: 9, scope: !1754, inlinedAt: !1764)
!3393 = !DILocation(line: 1617, column: 39, scope: !1742, inlinedAt: !1753)
!3394 = !DILocation(line: 1617, column: 51, scope: !1742, inlinedAt: !1753)
!3395 = !DILocation(line: 1617, column: 63, scope: !1742, inlinedAt: !1753)
!3396 = !DILocation(line: 1619, column: 9, scope: !1742, inlinedAt: !1753)
!3397 = !DILocation(line: 1620, column: 9, scope: !1742, inlinedAt: !1753)
!3398 = !DILocation(line: 1621, column: 5, scope: !1742, inlinedAt: !1753)
!3399 = !DILocation(line: 1623, column: 5, scope: !1742, inlinedAt: !1753)
!3400 = !DILocation(line: 1624, column: 5, scope: !1742, inlinedAt: !1753)
!3401 = !DILocation(line: 1624, column: 15, scope: !3402, inlinedAt: !1753)
!3402 = !DILexicalBlockFile(scope: !1742, file: !3, discriminator: 1)
!3403 = !DILocation(line: 1624, column: 18, scope: !3402, inlinedAt: !1753)
!3404 = !DILocation(line: 1624, column: 5, scope: !3402, inlinedAt: !1753)
!3405 = !DILocation(line: 1625, column: 13, scope: !3406, inlinedAt: !1753)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 1625, column: 13)
!3407 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1624, column: 26)
!3408 = distinct !{!3408, !3409, !3410}
!3409 = !DILocation(line: 1624, column: 5, scope: !1742)
!3410 = !DILocation(line: 1629, column: 5, scope: !1742)
!3411 = !DILocation(line: 1630, column: 5, scope: !3412, inlinedAt: !1753)
!3412 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1630, column: 5)
!3413 = !DILocation(line: 1630, column: 5, scope: !1742, inlinedAt: !1753)
!3414 = !DILocation(line: 1630, column: 5, scope: !3415, inlinedAt: !1753)
!3415 = !DILexicalBlockFile(scope: !3412, file: !3, discriminator: 1)
!3416 = !DILocation(line: 1631, column: 5, scope: !1742, inlinedAt: !1753)
!3417 = !DILocation(line: 1632, column: 23, scope: !3418, inlinedAt: !1753)
!3418 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1632, column: 9)
!3419 = !DILocation(line: 1633, column: 19, scope: !3420, inlinedAt: !1753)
!3420 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 1632, column: 41)
!3421 = !DILocation(line: 1634, column: 5, scope: !3420, inlinedAt: !1753)
!3422 = !DILocation(line: 1635, column: 47, scope: !1742, inlinedAt: !1753)
!3423 = !DILocation(line: 1635, column: 74, scope: !1742, inlinedAt: !1753)
!3424 = !DILocation(line: 1635, column: 12, scope: !3402, inlinedAt: !1753)
!3425 = !DILocation(line: 1636, column: 1, scope: !1742, inlinedAt: !1753)
!3426 = !DILocation(line: 1711, column: 9, scope: !1754, inlinedAt: !1764)
!3427 = !DILocalVariable(name: "conn", arg: 1, scope: !3428, file: !3, line: 1409, type: !355)
!3428 = distinct !DISubprogram(name: "parse_xapl_rsp_param", scope: !3, file: !3, line: 1409, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3429)
!3429 = !{!3427, !3430, !3431, !3432}
!3430 = !DILocalVariable(name: "packet", arg: 2, scope: !3428, file: !3, line: 1409, type: !1745)
!3431 = !DILocalVariable(name: "size", arg: 3, scope: !3428, file: !3, line: 1409, type: !240)
!3432 = !DILocalVariable(name: "pos", scope: !3428, file: !3, line: 1414, type: !249)
!3433 = !DILocation(line: 1409, column: 44, scope: !3428, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1718, column: 15, scope: !1754, inlinedAt: !1764)
!3435 = !DILocation(line: 1409, column: 56, scope: !3428, inlinedAt: !3434)
!3436 = !DILocation(line: 1409, column: 68, scope: !3428, inlinedAt: !3434)
!3437 = !DILocation(line: 1414, column: 9, scope: !3428, inlinedAt: !3434)
!3438 = !DILocation(line: 1415, column: 5, scope: !3428, inlinedAt: !3434)
!3439 = !DILocation(line: 1415, column: 12, scope: !3440, inlinedAt: !3434)
!3440 = !DILexicalBlockFile(scope: !3428, file: !3, discriminator: 1)
!3441 = !DILocation(line: 1415, column: 24, scope: !3440, inlinedAt: !3434)
!3442 = !DILocation(line: 1415, column: 5, scope: !3440, inlinedAt: !3434)
!3443 = !DILocation(line: 1416, column: 16, scope: !3444, inlinedAt: !3434)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 1416, column: 13)
!3445 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 1415, column: 32)
!3446 = !DILocation(line: 1416, column: 19, scope: !3444, inlinedAt: !3434)
!3447 = !DILocation(line: 1416, column: 13, scope: !3445, inlinedAt: !3434)
!3448 = !DILocation(line: 1421, column: 10, scope: !3449, inlinedAt: !3434)
!3449 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 1421, column: 9)
!3450 = !DILocation(line: 1421, column: 9, scope: !3428, inlinedAt: !3434)
!3451 = !DILocation(line: 1429, column: 28, scope: !3452, inlinedAt: !3434)
!3452 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 1421, column: 45)
!3453 = !DILocation(line: 1429, column: 9, scope: !3452, inlinedAt: !3434)
!3454 = !DILocation(line: 1431, column: 5, scope: !3452, inlinedAt: !3434)
!3455 = !DILocation(line: 1721, column: 13, scope: !1754, inlinedAt: !1764)
!3456 = !DILocalVariable(name: "conn", arg: 1, scope: !3457, file: !3, line: 1441, type: !355)
!3457 = distinct !DISubprogram(name: "parse_cclk_rsp_param", scope: !3, file: !3, line: 1441, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3458)
!3458 = !{!3456, !3459, !3460, !3461, !3462, !3463}
!3459 = !DILocalVariable(name: "packet", arg: 2, scope: !3457, file: !3, line: 1441, type: !1745)
!3460 = !DILocalVariable(name: "size", arg: 3, scope: !3457, file: !3, line: 1441, type: !240)
!3461 = !DILocalVariable(name: "pos", scope: !3457, file: !3, line: 1445, type: !249)
!3462 = !DILocalVariable(name: "para_pos_end", scope: !3457, file: !3, line: 1446, type: !249)
!3463 = !DILocalVariable(name: "para_pos_beg", scope: !3457, file: !3, line: 1447, type: !249)
!3464 = !DILocation(line: 1441, column: 44, scope: !3457, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1722, column: 19, scope: !3466, inlinedAt: !1764)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 1721, column: 35)
!3467 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1721, column: 13)
!3468 = !DILocation(line: 1445, column: 9, scope: !3457, inlinedAt: !3465)
!3469 = !DILocation(line: 1446, column: 9, scope: !3457, inlinedAt: !3465)
!3470 = !DILocation(line: 1447, column: 9, scope: !3457, inlinedAt: !3465)
!3471 = !DILocation(line: 1449, column: 5, scope: !3457, inlinedAt: !3465)
!3472 = !DILocation(line: 1449, column: 12, scope: !3473, inlinedAt: !3465)
!3473 = !DILexicalBlockFile(scope: !3457, file: !3, discriminator: 1)
!3474 = !DILocation(line: 1449, column: 24, scope: !3473, inlinedAt: !3465)
!3475 = !DILocation(line: 1449, column: 5, scope: !3473, inlinedAt: !3465)
!3476 = !DILocation(line: 1450, column: 19, scope: !3477, inlinedAt: !3465)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1450, column: 13)
!3478 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1449, column: 32)
!3479 = !DILocation(line: 1450, column: 13, scope: !3478, inlinedAt: !3465)
!3480 = !DILocation(line: 1456, column: 12, scope: !3473, inlinedAt: !3465)
!3481 = !DILocation(line: 1456, column: 24, scope: !3473, inlinedAt: !3465)
!3482 = !DILocation(line: 1456, column: 5, scope: !3473, inlinedAt: !3465)
!3483 = !DILocation(line: 1457, column: 19, scope: !3484, inlinedAt: !3465)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1457, column: 13)
!3485 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1456, column: 32)
!3486 = !DILocation(line: 1457, column: 13, scope: !3485, inlinedAt: !3465)
!3487 = !DILocation(line: 1462, column: 5, scope: !3457, inlinedAt: !3465)
!3488 = !DILocation(line: 1462, column: 30, scope: !3457, inlinedAt: !3465)
!3489 = !DILocation(line: 1464, column: 35, scope: !3457, inlinedAt: !3465)
!3490 = !DILocation(line: 1464, column: 71, scope: !3457, inlinedAt: !3465)
!3491 = !DILocation(line: 1464, column: 57, scope: !3457, inlinedAt: !3465)
!3492 = !DILocation(line: 1464, column: 5, scope: !3457, inlinedAt: !3465)
!3493 = !DILocation(line: 1465, column: 5, scope: !3457, inlinedAt: !3465)
!3494 = !DILocation(line: 1467, column: 5, scope: !3457, inlinedAt: !3465)
!3495 = !DILocalVariable(name: "conn", arg: 1, scope: !3496, file: !3, line: 1513, type: !355)
!3496 = distinct !DISubprogram(name: "parse_cgmi_rsp_param", scope: !3, file: !3, line: 1513, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1514, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3497)
!3497 = !{!3495, !3498, !3499, !3500, !3501, !3502, !3503}
!3498 = !DILocalVariable(name: "packet", arg: 2, scope: !3496, file: !3, line: 1513, type: !1745)
!3499 = !DILocalVariable(name: "size", arg: 3, scope: !3496, file: !3, line: 1513, type: !240)
!3500 = !DILocalVariable(name: "pos", scope: !3496, file: !3, line: 1515, type: !249)
!3501 = !DILocalVariable(name: "para_pos_end", scope: !3496, file: !3, line: 1516, type: !249)
!3502 = !DILocalVariable(name: "para_pos_beg", scope: !3496, file: !3, line: 1517, type: !249)
!3503 = !DILocalVariable(name: "is_iphone", scope: !3496, file: !3, line: 1518, type: !244)
!3504 = !DILocation(line: 1513, column: 44, scope: !3496, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 1726, column: 15, scope: !1754, inlinedAt: !1764)
!3506 = !DILocation(line: 1513, column: 56, scope: !3496, inlinedAt: !3505)
!3507 = !DILocation(line: 1513, column: 68, scope: !3496, inlinedAt: !3505)
!3508 = !DILocation(line: 1515, column: 9, scope: !3496, inlinedAt: !3505)
!3509 = !DILocation(line: 1516, column: 9, scope: !3496, inlinedAt: !3505)
!3510 = !DILocation(line: 1517, column: 9, scope: !3496, inlinedAt: !3505)
!3511 = !DILocation(line: 1518, column: 9, scope: !3496, inlinedAt: !3505)
!3512 = !DILocation(line: 1519, column: 5, scope: !3496, inlinedAt: !3505)
!3513 = !DILocation(line: 1519, column: 12, scope: !3514, inlinedAt: !3505)
!3514 = !DILexicalBlockFile(scope: !3496, file: !3, discriminator: 1)
!3515 = !DILocation(line: 1519, column: 24, scope: !3514, inlinedAt: !3505)
!3516 = !DILocation(line: 1519, column: 5, scope: !3514, inlinedAt: !3505)
!3517 = !DILocation(line: 1520, column: 19, scope: !3518, inlinedAt: !3505)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1520, column: 13)
!3519 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1519, column: 32)
!3520 = !DILocation(line: 1520, column: 13, scope: !3519, inlinedAt: !3505)
!3521 = distinct !{!3521, !3522, !3523}
!3522 = !DILocation(line: 1519, column: 5, scope: !3496)
!3523 = !DILocation(line: 1527, column: 5, scope: !3496)
!3524 = !DILocation(line: 1521, column: 13, scope: !3525, inlinedAt: !3505)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1521, column: 13)
!3526 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1520, column: 27)
!3527 = !DILocation(line: 1521, column: 13, scope: !3526, inlinedAt: !3505)
!3528 = !DILocation(line: 1521, column: 13, scope: !3529, inlinedAt: !3505)
!3529 = !DILexicalBlockFile(scope: !3525, file: !3, discriminator: 1)
!3530 = !DILocation(line: 1522, column: 39, scope: !3526, inlinedAt: !3505)
!3531 = !DILocation(line: 1522, column: 13, scope: !3526, inlinedAt: !3505)
!3532 = !DILocation(line: 1523, column: 13, scope: !3526, inlinedAt: !3505)
!3533 = !DILocation(line: 1525, column: 13, scope: !3526, inlinedAt: !3505)
!3534 = !DILocation(line: 1530, column: 12, scope: !3514, inlinedAt: !3505)
!3535 = !DILocation(line: 1530, column: 24, scope: !3514, inlinedAt: !3505)
!3536 = !DILocation(line: 1530, column: 5, scope: !3514, inlinedAt: !3505)
!3537 = !DILocation(line: 1531, column: 16, scope: !3538, inlinedAt: !3505)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1531, column: 13)
!3539 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1530, column: 32)
!3540 = !DILocation(line: 1531, column: 19, scope: !3538, inlinedAt: !3505)
!3541 = !DILocation(line: 1531, column: 13, scope: !3539, inlinedAt: !3505)
!3542 = !DILocation(line: 1536, column: 26, scope: !3496, inlinedAt: !3505)
!3543 = !DILocation(line: 1537, column: 5, scope: !3544, inlinedAt: !3505)
!3544 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1537, column: 5)
!3545 = !DILocation(line: 1537, column: 5, scope: !3496, inlinedAt: !3505)
!3546 = !DILocation(line: 1537, column: 5, scope: !3547, inlinedAt: !3505)
!3547 = !DILexicalBlockFile(scope: !3544, file: !3, discriminator: 1)
!3548 = !DILocation(line: 1538, column: 18, scope: !3496, inlinedAt: !3505)
!3549 = !DILocation(line: 1538, column: 17, scope: !3496, inlinedAt: !3505)
!3550 = !DILocation(line: 1539, column: 5, scope: !3551, inlinedAt: !3505)
!3551 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1539, column: 5)
!3552 = !DILocation(line: 1539, column: 5, scope: !3496, inlinedAt: !3505)
!3553 = !DILocation(line: 1539, column: 5, scope: !3554, inlinedAt: !3505)
!3554 = !DILexicalBlockFile(scope: !3551, file: !3, discriminator: 1)
!3555 = !DILocation(line: 1540, column: 9, scope: !3496, inlinedAt: !3505)
!3556 = !DILocation(line: 1541, column: 9, scope: !3557, inlinedAt: !3505)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1540, column: 20)
!3558 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1540, column: 9)
!3559 = !DILocation(line: 1542, column: 5, scope: !3557, inlinedAt: !3505)
!3560 = !DILocation(line: 1543, column: 9, scope: !3561, inlinedAt: !3505)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1542, column: 12)
!3562 = !DILocation(line: 1546, column: 59, scope: !3496, inlinedAt: !3505)
!3563 = !DILocation(line: 1545, column: 5, scope: !3496, inlinedAt: !3505)
!3564 = !DILocation(line: 1547, column: 5, scope: !3496, inlinedAt: !3505)
!3565 = !DILocation(line: 1549, column: 5, scope: !3496, inlinedAt: !3505)
!3566 = !DILocation(line: 1729, column: 13, scope: !3567, inlinedAt: !1764)
!3567 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1729, column: 13)
!3568 = !DILocation(line: 1729, column: 13, scope: !1754, inlinedAt: !1764)
!3569 = !DILocalVariable(name: "conn", arg: 1, scope: !3570, file: !3, line: 1568, type: !355)
!3570 = distinct !DISubprogram(name: "parse_bind_rsp_param", scope: !3, file: !3, line: 1568, type: !2140, isLocal: true, isDefinition: true, scopeLine: 1569, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3571)
!3571 = !{!3569, !3572, !3573, !3574, !3575, !3576}
!3572 = !DILocalVariable(name: "packet", arg: 2, scope: !3570, file: !3, line: 1568, type: !1745)
!3573 = !DILocalVariable(name: "size", arg: 3, scope: !3570, file: !3, line: 1568, type: !240)
!3574 = !DILocalVariable(name: "pos", scope: !3570, file: !3, line: 1570, type: !249)
!3575 = !DILocalVariable(name: "indication_index", scope: !3570, file: !3, line: 1571, type: !244)
!3576 = !DILocalVariable(name: "indication_switch", scope: !3570, file: !3, line: 1572, type: !244)
!3577 = !DILocation(line: 1568, column: 44, scope: !3570, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1730, column: 19, scope: !3579, inlinedAt: !1764)
!3579 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1729, column: 45)
!3580 = !DILocation(line: 1568, column: 56, scope: !3570, inlinedAt: !3578)
!3581 = !DILocation(line: 1568, column: 68, scope: !3570, inlinedAt: !3578)
!3582 = !DILocation(line: 1570, column: 9, scope: !3570, inlinedAt: !3578)
!3583 = !DILocation(line: 1571, column: 9, scope: !3570, inlinedAt: !3578)
!3584 = !DILocation(line: 1572, column: 9, scope: !3570, inlinedAt: !3578)
!3585 = !DILocation(line: 1575, column: 9, scope: !3586, inlinedAt: !3578)
!3586 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1575, column: 9)
!3587 = !DILocation(line: 1575, column: 25, scope: !3586, inlinedAt: !3578)
!3588 = !DILocation(line: 1575, column: 9, scope: !3570, inlinedAt: !3578)
!3589 = !DILocation(line: 1577, column: 16, scope: !3590, inlinedAt: !3578)
!3590 = !DILexicalBlockFile(scope: !3591, file: !3, discriminator: 1)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1575, column: 33)
!3592 = !DILocation(line: 1577, column: 28, scope: !3590, inlinedAt: !3578)
!3593 = !DILocation(line: 1577, column: 9, scope: !3590, inlinedAt: !3578)
!3594 = !DILocation(line: 1578, column: 17, scope: !3595, inlinedAt: !3578)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1578, column: 17)
!3596 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1577, column: 36)
!3597 = !DILocation(line: 1580, column: 58, scope: !3598, inlinedAt: !3578)
!3598 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1578, column: 42)
!3599 = !DILocation(line: 1580, column: 17, scope: !3598, inlinedAt: !3578)
!3600 = !DILocation(line: 1581, column: 38, scope: !3601, inlinedAt: !3578)
!3601 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1581, column: 21)
!3602 = !DILocation(line: 1581, column: 21, scope: !3598, inlinedAt: !3578)
!3603 = !DILocation(line: 1582, column: 21, scope: !3604, inlinedAt: !3578)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1581, column: 63)
!3605 = !DILocation(line: 1582, column: 74, scope: !3604, inlinedAt: !3578)
!3606 = !DILocation(line: 1583, column: 17, scope: !3604, inlinedAt: !3578)
!3607 = !DILocation(line: 1585, column: 20, scope: !3608, inlinedAt: !3578)
!3608 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1585, column: 17)
!3609 = !DILocation(line: 1585, column: 23, scope: !3608, inlinedAt: !3578)
!3610 = !DILocation(line: 1585, column: 17, scope: !3596, inlinedAt: !3578)
!3611 = !DILocation(line: 1591, column: 13, scope: !3612, inlinedAt: !3578)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1591, column: 13)
!3613 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1589, column: 12)
!3614 = !DILocation(line: 1595, column: 34, scope: !3615, inlinedAt: !3578)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1595, column: 17)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 1591, column: 42)
!3617 = !DILocation(line: 1593, column: 33, scope: !3616, inlinedAt: !3578)
!3618 = !DILocation(line: 1595, column: 17, scope: !3615, inlinedAt: !3578)
!3619 = !DILocation(line: 1596, column: 21, scope: !3620, inlinedAt: !3578)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1596, column: 21)
!3621 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 1595, column: 59)
!3622 = !DILocation(line: 1599, column: 74, scope: !3623, inlinedAt: !3578)
!3623 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1598, column: 24)
!3624 = !DILocation(line: 1597, column: 74, scope: !3625, inlinedAt: !3578)
!3625 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1596, column: 40)
!3626 = !DILocation(line: 1596, column: 21, scope: !3621, inlinedAt: !3578)
!3627 = !DILocation(line: 1601, column: 13, scope: !3621, inlinedAt: !3578)
!3628 = !DILocation(line: 1734, column: 13, scope: !3629, inlinedAt: !1764)
!3629 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1734, column: 13)
!3630 = !DILocation(line: 1738, column: 9, scope: !1754, inlinedAt: !1764)
!3631 = !DILocation(line: 1788, column: 48, scope: !1729)
!3632 = !DILocation(line: 1789, column: 5, scope: !1729)
!3633 = !DILocation(line: 1791, column: 5, scope: !1729)
!3634 = !DILocation(line: 1792, column: 1, scope: !1729)
!3635 = distinct !DISubprogram(name: "hfp_init_process", scope: !3, file: !3, line: 612, type: !3636, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!266, !240}
!3638 = !{!3639, !3640, !3641, !3642}
!3639 = !DILocalVariable(name: "channel", arg: 1, scope: !3635, file: !3, line: 612, type: !240)
!3640 = !DILocalVariable(name: "cmdbuf", scope: !3635, file: !3, line: 614, type: !743)
!3641 = !DILocalVariable(name: "cmd_index", scope: !3635, file: !3, line: 615, type: !266)
!3642 = !DILocalVariable(name: "conn", scope: !3635, file: !3, line: 616, type: !355)
!3643 = !DILocation(line: 614, column: 5, scope: !3635)
!3644 = !DILocation(line: 614, column: 10, scope: !3635)
!3645 = !DILocation(line: 615, column: 9, scope: !3635)
!3646 = !DILocation(line: 93, column: 46, scope: !556, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 616, column: 23, scope: !3635)
!3648 = !DILocation(line: 96, column: 5, scope: !564, inlinedAt: !3647)
!3649 = !DILocation(line: 96, column: 5, scope: !566, inlinedAt: !3647)
!3650 = !DILocation(line: 97, column: 33, scope: !568, inlinedAt: !3647)
!3651 = !DILocation(line: 97, column: 41, scope: !568, inlinedAt: !3647)
!3652 = !DILocation(line: 97, column: 52, scope: !568, inlinedAt: !3647)
!3653 = !DILocation(line: 97, column: 75, scope: !574, inlinedAt: !3647)
!3654 = !DILocation(line: 97, column: 55, scope: !574, inlinedAt: !3647)
!3655 = !DILocation(line: 97, column: 13, scope: !577, inlinedAt: !3647)
!3656 = !DILocation(line: 96, column: 5, scope: !579, inlinedAt: !3647)
!3657 = !DILocation(line: 95, column: 16, scope: !556, inlinedAt: !3647)
!3658 = !DILocation(line: 96, column: 5, scope: !582, inlinedAt: !3647)
!3659 = !DILocation(line: 616, column: 16, scope: !3635)
!3660 = !DILocation(line: 109, column: 46, scope: !1015, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 620, column: 9, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 620, column: 9)
!3663 = !DILocation(line: 111, column: 35, scope: !1015, inlinedAt: !3661)
!3664 = !DILocation(line: 111, column: 62, scope: !1015, inlinedAt: !3661)
!3665 = !DILocation(line: 111, column: 51, scope: !1015, inlinedAt: !3661)
!3666 = !DILocation(line: 111, column: 49, scope: !1015, inlinedAt: !3661)
!3667 = !DILocation(line: 620, column: 9, scope: !3635)
!3668 = !DILocation(line: 623, column: 5, scope: !3635)
!3669 = !DILocation(line: 625, column: 29, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 625, column: 9)
!3671 = !DILocation(line: 625, column: 43, scope: !3670)
!3672 = !DILocation(line: 625, column: 9, scope: !3635)
!3673 = !DILocation(line: 626, column: 55, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 625, column: 68)
!3675 = !DILocation(line: 627, column: 9, scope: !3674)
!3676 = !DILocation(line: 627, column: 53, scope: !3674)
!3677 = !DILocation(line: 628, column: 9, scope: !3674)
!3678 = !DILocation(line: 629, column: 23, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 629, column: 13)
!3680 = !DILocation(line: 629, column: 13, scope: !3674)
!3681 = !DILocalVariable(name: "featurn_hf", scope: !3682, file: !3, line: 574, type: !249)
!3682 = distinct !DISubprogram(name: "hfp_send_feature_hf", scope: !3, file: !3, line: 572, type: !3683, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!266, !1745}
!3685 = !{!3686, !3681}
!3686 = !DILocalVariable(name: "cmdbuf", arg: 1, scope: !3682, file: !3, line: 572, type: !1745)
!3687 = !DILocation(line: 574, column: 9, scope: !3682, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 630, column: 13, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 629, column: 29)
!3690 = !DILocation(line: 577, column: 9, scope: !3691, inlinedAt: !3688)
!3691 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 577, column: 9)
!3692 = !DILocation(line: 577, column: 29, scope: !3691, inlinedAt: !3688)
!3693 = !DILocation(line: 577, column: 9, scope: !3682, inlinedAt: !3688)
!3694 = !DILocation(line: 580, column: 9, scope: !3695, inlinedAt: !3688)
!3695 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 580, column: 9)
!3696 = !DILocation(line: 581, column: 20, scope: !3697, inlinedAt: !3688)
!3697 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 580, column: 41)
!3698 = !DILocation(line: 580, column: 9, scope: !3682, inlinedAt: !3688)
!3699 = !DILocation(line: 583, column: 5, scope: !3682, inlinedAt: !3688)
!3700 = !DILocation(line: 584, column: 29, scope: !3682, inlinedAt: !3688)
!3701 = !DILocation(line: 584, column: 18, scope: !3682, inlinedAt: !3688)
!3702 = !DILocation(line: 584, column: 5, scope: !3682, inlinedAt: !3688)
!3703 = !DILocation(line: 584, column: 15, scope: !3682, inlinedAt: !3688)
!3704 = !DILocation(line: 585, column: 29, scope: !3682, inlinedAt: !3688)
!3705 = !DILocation(line: 585, column: 34, scope: !3682, inlinedAt: !3688)
!3706 = !DILocation(line: 585, column: 18, scope: !3682, inlinedAt: !3688)
!3707 = !DILocation(line: 585, column: 5, scope: !3682, inlinedAt: !3688)
!3708 = !DILocation(line: 585, column: 15, scope: !3682, inlinedAt: !3688)
!3709 = !DILocation(line: 586, column: 29, scope: !3682, inlinedAt: !3688)
!3710 = !DILocation(line: 586, column: 18, scope: !3682, inlinedAt: !3688)
!3711 = !DILocation(line: 586, column: 5, scope: !3682, inlinedAt: !3688)
!3712 = !DILocation(line: 586, column: 16, scope: !3682, inlinedAt: !3688)
!3713 = !DILocation(line: 632, column: 45, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 632, column: 13)
!3715 = !DILocation(line: 632, column: 14, scope: !3714)
!3716 = !DILocation(line: 632, column: 59, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3714, file: !3, discriminator: 1)
!3718 = !DILocation(line: 634, column: 13, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 632, column: 66)
!3720 = !DILocation(line: 635, column: 47, scope: !3719)
!3721 = !DILocation(line: 636, column: 9, scope: !3719)
!3722 = !DILocation(line: 638, column: 78, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 637, column: 12)
!3724 = !DILocation(line: 639, column: 9, scope: !3723)
!3725 = !DILocation(line: 639, column: 54, scope: !3723)
!3726 = !DILocation(line: 640, column: 9, scope: !3723)
!3727 = !DILocation(line: 642, column: 13, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 640, column: 28)
!3729 = !DILocation(line: 646, column: 13, scope: !3728)
!3730 = !DILocation(line: 654, column: 33, scope: !3728)
!3731 = !DILocation(line: 654, column: 47, scope: !3728)
!3732 = !DILocation(line: 655, column: 13, scope: !3728)
!3733 = !DILocation(line: 657, column: 17, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 657, column: 17)
!3735 = !DILocation(line: 657, column: 33, scope: !3734)
!3736 = !DILocation(line: 657, column: 17, scope: !3728)
!3737 = !DILocation(line: 658, column: 17, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 658, column: 17)
!3739 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 657, column: 58)
!3740 = !DILocation(line: 658, column: 17, scope: !3739)
!3741 = !DILocation(line: 658, column: 17, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3738, file: !3, discriminator: 1)
!3743 = !DILocation(line: 659, column: 33, scope: !3739)
!3744 = !DILocation(line: 659, column: 57, scope: !3739)
!3745 = !DILocation(line: 660, column: 77, scope: !3739)
!3746 = !DILocation(line: 659, column: 17, scope: !3739)
!3747 = !DILocation(line: 661, column: 13, scope: !3739)
!3748 = !DILocation(line: 662, column: 46, scope: !3728)
!3749 = !DILocation(line: 662, column: 61, scope: !3728)
!3750 = !DILocation(line: 662, column: 25, scope: !3728)
!3751 = !DILocation(line: 662, column: 13, scope: !3728)
!3752 = !DILocation(line: 662, column: 23, scope: !3728)
!3753 = !DILocation(line: 663, column: 61, scope: !3728)
!3754 = !DILocation(line: 663, column: 25, scope: !3728)
!3755 = !DILocation(line: 663, column: 13, scope: !3728)
!3756 = !DILocation(line: 663, column: 23, scope: !3728)
!3757 = !DILocation(line: 664, column: 13, scope: !3728)
!3758 = !DILocation(line: 667, column: 46, scope: !3728)
!3759 = !DILocation(line: 667, column: 59, scope: !3728)
!3760 = !DILocation(line: 667, column: 25, scope: !3728)
!3761 = !DILocation(line: 667, column: 13, scope: !3728)
!3762 = !DILocation(line: 667, column: 23, scope: !3728)
!3763 = !DILocation(line: 668, column: 59, scope: !3728)
!3764 = !DILocation(line: 668, column: 25, scope: !3728)
!3765 = !DILocation(line: 668, column: 13, scope: !3728)
!3766 = !DILocation(line: 668, column: 23, scope: !3728)
!3767 = !DILocation(line: 669, column: 17, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 669, column: 17)
!3769 = !DILocation(line: 669, column: 33, scope: !3768)
!3770 = !DILocation(line: 669, column: 17, scope: !3728)
!3771 = !DILocation(line: 670, column: 57, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 669, column: 58)
!3773 = !DILocation(line: 670, column: 17, scope: !3772)
!3774 = !DILocation(line: 671, column: 13, scope: !3772)
!3775 = !DILocation(line: 675, column: 33, scope: !3728)
!3776 = !DILocation(line: 675, column: 56, scope: !3728)
!3777 = !DILocation(line: 676, column: 17, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 676, column: 17)
!3779 = !DILocation(line: 676, column: 85, scope: !3778)
!3780 = !DILocation(line: 676, column: 17, scope: !3728)
!3781 = !DILocation(line: 677, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 676, column: 107)
!3783 = !DILocation(line: 678, column: 51, scope: !3782)
!3784 = !DILocation(line: 679, column: 44, scope: !3782)
!3785 = !DILocation(line: 679, column: 25, scope: !3782)
!3786 = !DILocation(line: 679, column: 17, scope: !3782)
!3787 = !DILocation(line: 684, column: 46, scope: !3728)
!3788 = !DILocation(line: 685, column: 40, scope: !3728)
!3789 = !DILocation(line: 685, column: 21, scope: !3728)
!3790 = !DILocation(line: 685, column: 13, scope: !3728)
!3791 = !DILocation(line: 692, column: 52, scope: !3635)
!3792 = !DILocation(line: 692, column: 79, scope: !3635)
!3793 = !DILocalVariable(name: "rfcom_cid", arg: 1, scope: !3794, file: !3, line: 170, type: !240)
!3794 = distinct !DISubprogram(name: "init_atcmd_try_send", scope: !3, file: !3, line: 170, type: !635, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3795)
!3795 = !{!3793, !3796, !3797, !3798, !3799}
!3796 = !DILocalVariable(name: "buf", arg: 2, scope: !3794, file: !3, line: 170, type: !217)
!3797 = !DILocalVariable(name: "len", arg: 3, scope: !3794, file: !3, line: 170, type: !240)
!3798 = !DILocalVariable(name: "err", scope: !3794, file: !3, line: 172, type: !266)
!3799 = !DILocalVariable(name: "conn", scope: !3794, file: !3, line: 173, type: !355)
!3800 = !DILocation(line: 170, column: 36, scope: !3794, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 692, column: 12, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3635, file: !3, discriminator: 1)
!3803 = !DILocation(line: 170, column: 59, scope: !3794, inlinedAt: !3801)
!3804 = !DILocation(line: 170, column: 68, scope: !3794, inlinedAt: !3801)
!3805 = !DILocation(line: 172, column: 9, scope: !3794, inlinedAt: !3801)
!3806 = !DILocalVariable(name: "rfcomm_id", arg: 1, scope: !3807, file: !3, line: 71, type: !240)
!3807 = distinct !DISubprogram(name: "__hfp_conn_for_rfcomm_id", scope: !3, file: !3, line: 71, type: !557, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3808)
!3808 = !{!3806, !3809}
!3809 = !DILocalVariable(name: "conn", scope: !3807, file: !3, line: 73, type: !355)
!3810 = !DILocation(line: 71, column: 48, scope: !3807, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 173, column: 23, scope: !3794, inlinedAt: !3801)
!3812 = !DILocation(line: 74, column: 5, scope: !3813, inlinedAt: !3811)
!3813 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 74, column: 5)
!3814 = !DILocation(line: 74, column: 5, scope: !3815, inlinedAt: !3811)
!3815 = !DILexicalBlockFile(scope: !3813, file: !3, discriminator: 1)
!3816 = !DILocation(line: 75, column: 33, scope: !3817, inlinedAt: !3811)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 75, column: 13)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 74, column: 34)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 74, column: 5)
!3820 = !DILocation(line: 75, column: 51, scope: !3817, inlinedAt: !3811)
!3821 = !DILocation(line: 75, column: 64, scope: !3817, inlinedAt: !3811)
!3822 = !DILocation(line: 75, column: 87, scope: !3823, inlinedAt: !3811)
!3823 = !DILexicalBlockFile(scope: !3817, file: !3, discriminator: 1)
!3824 = !DILocation(line: 75, column: 67, scope: !3823, inlinedAt: !3811)
!3825 = !DILocation(line: 75, column: 13, scope: !3826, inlinedAt: !3811)
!3826 = !DILexicalBlockFile(scope: !3818, file: !3, discriminator: 1)
!3827 = !DILocation(line: 74, column: 5, scope: !3828, inlinedAt: !3811)
!3828 = !DILexicalBlockFile(scope: !3819, file: !3, discriminator: 2)
!3829 = !DILocation(line: 73, column: 16, scope: !3807, inlinedAt: !3811)
!3830 = !DILocation(line: 74, column: 5, scope: !3831, inlinedAt: !3811)
!3831 = !DILexicalBlockFile(scope: !3819, file: !3, discriminator: 1)
!3832 = distinct !{!3832, !3833, !3834}
!3833 = !DILocation(line: 74, column: 5, scope: !3813)
!3834 = !DILocation(line: 78, column: 5, scope: !3813)
!3835 = !DILocation(line: 173, column: 16, scope: !3794, inlinedAt: !3801)
!3836 = !DILocation(line: 135, column: 41, scope: !634, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 177, column: 11, scope: !3794, inlinedAt: !3801)
!3838 = !DILocation(line: 135, column: 64, scope: !634, inlinedAt: !3837)
!3839 = !DILocation(line: 135, column: 73, scope: !634, inlinedAt: !3837)
!3840 = !DILocation(line: 137, column: 9, scope: !634, inlinedAt: !3837)
!3841 = !DILocation(line: 138, column: 11, scope: !634, inlinedAt: !3837)
!3842 = !DILocation(line: 178, column: 24, scope: !3843, inlinedAt: !3801)
!3843 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 178, column: 9)
!3844 = !DILocation(line: 178, column: 9, scope: !3794, inlinedAt: !3801)
!3845 = !DILocation(line: 179, column: 42, scope: !3846, inlinedAt: !3801)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 178, column: 32)
!3847 = !DILocation(line: 109, column: 46, scope: !1015, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 180, column: 13, scope: !3849, inlinedAt: !3801)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 180, column: 13)
!3850 = !DILocation(line: 111, column: 51, scope: !1015, inlinedAt: !3848)
!3851 = !DILocation(line: 111, column: 62, scope: !1015, inlinedAt: !3848)
!3852 = !DILocation(line: 111, column: 49, scope: !1015, inlinedAt: !3848)
!3853 = !DILocation(line: 180, column: 13, scope: !3846, inlinedAt: !3801)
!3854 = !DILocation(line: 181, column: 76, scope: !3855, inlinedAt: !3801)
!3855 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 180, column: 42)
!3856 = !DILocation(line: 181, column: 47, scope: !3855, inlinedAt: !3801)
!3857 = !DILocation(line: 182, column: 9, scope: !3855, inlinedAt: !3801)
!3858 = !DILocation(line: 184, column: 9, scope: !3859, inlinedAt: !3801)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 184, column: 9)
!3860 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 183, column: 12)
!3861 = !DILocation(line: 184, column: 9, scope: !3860, inlinedAt: !3801)
!3862 = !DILocation(line: 184, column: 9, scope: !3863, inlinedAt: !3801)
!3863 = !DILexicalBlockFile(scope: !3859, file: !3, discriminator: 1)
!3864 = !DILocation(line: 185, column: 49, scope: !3860, inlinedAt: !3801)
!3865 = !DILocation(line: 190, column: 5, scope: !3794, inlinedAt: !3801)
!3866 = !DILocation(line: 693, column: 1, scope: !3635)
!3867 = distinct !DISubprogram(name: "__create_hfp_conn", scope: !3, file: !3, line: 1795, type: !1097, isLocal: true, isDefinition: true, scopeLine: 1796, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3868)
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "addr", arg: 1, scope: !3867, file: !3, line: 1795, type: !736)
!3870 = !DILocalVariable(name: "conn", scope: !3867, file: !3, line: 1797, type: !355)
!3871 = !DILocation(line: 1795, column: 47, scope: !3867)
!3872 = !DILocation(line: 1797, column: 16, scope: !3867)
!3873 = !DILocation(line: 1799, column: 5, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1799, column: 5)
!3875 = !DILocation(line: 1799, column: 5, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3874, file: !3, discriminator: 1)
!3877 = !DILocation(line: 1800, column: 34, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 1800, column: 13)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 1799, column: 34)
!3880 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1799, column: 5)
!3881 = !DILocation(line: 1800, column: 14, scope: !3878)
!3882 = !DILocation(line: 1800, column: 13, scope: !3879)
!3883 = !DILocation(line: 1801, column: 40, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1800, column: 42)
!3885 = !DILocation(line: 1802, column: 13, scope: !3884)
!3886 = !DILocation(line: 42, column: 37, scope: !1713, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 1803, column: 13, scope: !3884)
!3888 = !DILocation(line: 46, column: 44, scope: !1713, inlinedAt: !3887)
!3889 = !DILocation(line: 47, column: 24, scope: !1713, inlinedAt: !3887)
!3890 = !DILocation(line: 50, column: 24, scope: !1713, inlinedAt: !3887)
!3891 = !DILocation(line: 48, column: 32, scope: !1713, inlinedAt: !3887)
!3892 = !DILocation(line: 50, column: 47, scope: !1713, inlinedAt: !3887)
!3893 = !DILocation(line: 51, column: 24, scope: !1713, inlinedAt: !3887)
!3894 = !DILocation(line: 51, column: 40, scope: !1713, inlinedAt: !3887)
!3895 = !DILocation(line: 53, column: 39, scope: !1713, inlinedAt: !3887)
!3896 = !DILocation(line: 55, column: 5, scope: !1713, inlinedAt: !3887)
!3897 = !DILocation(line: 57, column: 1, scope: !1713, inlinedAt: !3887)
!3898 = !DILocation(line: 56, column: 5, scope: !1713, inlinedAt: !3887)
!3899 = !DILocation(line: 1804, column: 50, scope: !3884)
!3900 = !DILocation(line: 1804, column: 48, scope: !3884)
!3901 = !DILocation(line: 1808, column: 13, scope: !3884)
!3902 = !DILocation(line: 1799, column: 5, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3880, file: !3, discriminator: 2)
!3904 = !DILocation(line: 1799, column: 5, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3880, file: !3, discriminator: 1)
!3906 = distinct !{!3906, !3873, !3907}
!3907 = !DILocation(line: 1810, column: 5, scope: !3874)
!3908 = !DILocation(line: 1813, column: 1, scope: !3867)
!3909 = distinct !DISubprogram(name: "atcmd_try_send", scope: !3, file: !3, line: 141, type: !635, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916}
!3911 = !DILocalVariable(name: "rfcom_cid", arg: 1, scope: !3909, file: !3, line: 141, type: !240)
!3912 = !DILocalVariable(name: "buf", arg: 2, scope: !3909, file: !3, line: 141, type: !217)
!3913 = !DILocalVariable(name: "len", arg: 3, scope: !3909, file: !3, line: 141, type: !240)
!3914 = !DILocalVariable(name: "resend", scope: !3909, file: !3, line: 143, type: !234)
!3915 = !DILocalVariable(name: "err", scope: !3909, file: !3, line: 144, type: !266)
!3916 = !DILocalVariable(name: "conn", scope: !3909, file: !3, line: 145, type: !355)
!3917 = !DILocation(line: 141, column: 31, scope: !3909)
!3918 = !DILocation(line: 141, column: 54, scope: !3909)
!3919 = !DILocation(line: 141, column: 63, scope: !3909)
!3920 = !DILocation(line: 143, column: 15, scope: !3909)
!3921 = !DILocation(line: 144, column: 9, scope: !3909)
!3922 = !DILocation(line: 71, column: 48, scope: !3807, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 145, column: 23, scope: !3909)
!3924 = !DILocation(line: 74, column: 5, scope: !3813, inlinedAt: !3923)
!3925 = !DILocation(line: 74, column: 5, scope: !3815, inlinedAt: !3923)
!3926 = !DILocation(line: 75, column: 33, scope: !3817, inlinedAt: !3923)
!3927 = !DILocation(line: 75, column: 51, scope: !3817, inlinedAt: !3923)
!3928 = !DILocation(line: 75, column: 64, scope: !3817, inlinedAt: !3923)
!3929 = !DILocation(line: 75, column: 87, scope: !3823, inlinedAt: !3923)
!3930 = !DILocation(line: 75, column: 67, scope: !3823, inlinedAt: !3923)
!3931 = !DILocation(line: 75, column: 13, scope: !3826, inlinedAt: !3923)
!3932 = !DILocation(line: 74, column: 5, scope: !3828, inlinedAt: !3923)
!3933 = !DILocation(line: 73, column: 16, scope: !3807, inlinedAt: !3923)
!3934 = !DILocation(line: 74, column: 5, scope: !3831, inlinedAt: !3923)
!3935 = !DILocation(line: 145, column: 16, scope: !3909)
!3936 = !DILocation(line: 150, column: 11, scope: !3909)
!3937 = !DILocation(line: 151, column: 9, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 151, column: 9)
!3939 = !DILocation(line: 151, column: 9, scope: !3909)
!3940 = !DILocation(line: 156, column: 25, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 151, column: 14)
!3942 = !DILocation(line: 156, column: 29, scope: !3941)
!3943 = !DILocation(line: 156, column: 18, scope: !3941)
!3944 = !DILocation(line: 158, column: 9, scope: !3941)
!3945 = !DILocation(line: 159, column: 17, scope: !3941)
!3946 = !DILocation(line: 159, column: 21, scope: !3941)
!3947 = !DILocation(line: 160, column: 24, scope: !3941)
!3948 = !DILocation(line: 160, column: 9, scope: !3941)
!3949 = !DILocation(line: 161, column: 9, scope: !3941)
!3950 = !DILocation(line: 164, column: 5, scope: !3941)
!3951 = !DILocation(line: 165, column: 49, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 164, column: 12)
!3953 = !DILocation(line: 169, column: 1, scope: !3909)
